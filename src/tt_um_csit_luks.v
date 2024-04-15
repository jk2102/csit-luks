/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

`define default_netname none

module tt_um_csit_luks (
    `ifdef DEBUG
      output wire [7:0] debug_port,
    `endif

    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // will go high when the design is enabled
    input  wire       clk,      // clock
    input  wire       rst_n    // reset_n - low to reset
);

  wire rstn = ena ? rst_n : 1'b0;

  // wires
  wire [3:0] enc_w, display_out_w;
  wire [1:0] pb_press_type_w, display_select_w;
  wire [7:0] spi_luks_data_w, spi_flash_data_w;
  wire spi_luks_ready_w, spi_luks_valid_w, spi_flash_ready_w, spi_flash_valid_w;
  wire [23:0] spi_flash_address_w;
  wire spi_luks_ss_w, spi_luks_sclk_w, spi_luks_miso_w;
  wire spi_flash_ss_w, spi_flash_sclk_w, spi_flash_miso_w, spi_flash_mosi_w;


  `ifdef DEBUG
    assign debug_port = spi_flash_data_w;
  `endif

  // Rotational encoder
  rotational_encoder rotational_encoder_instance (
    .clk            (clk),            // Clock input
    .rstn           (rstn),           // Active low reset input
    
    .A              (ui_in[0]),       // Encoder input A
    .B              (ui_in[1]),       // Encoder input B
    .PB             (ui_in[2]),       // Pushbutton
    
    .enc            (enc_w),          // 4-bit encoder counter
    .pb_press_type  (pb_press_type_w) // 2-bit pushbutton press type
);

 // Seven segment 
 seven_seg seven_segment_instance(
    .clk            (clk),            // Clock input
    .rstn           (rstn),           // Active low reset input 
    
    .seven_seg      (uo_out[7:0]),    // Single segment output 
    .anode          (uio_out[3:0]),   // Segment select 
    
    .display_value  (display_out_w),
    .display_select (display_select_w)
 );

 // FSM
fsm fsm_instance (
    .clk            (clk),
    .rstn           (rstn),
    
    .pb_press       (pb_press_type_w),
    .enc_count      (enc_w),
    
    .LUX_val        (spi_luks_data_w),
    .lux_ready      (spi_luks_ready_w),
    .lux_valid      (spi_luks_valid_w),
    
    .fd             (spi_flash_data_w),
    .fd_ready       (spi_flash_ready_w),
    .fd_address     (spi_flash_address_w),
    .fd_valid       (spi_flash_valid_w),
    
    .display_out      (display_out_w),
    .display_sel      (display_select_w)
);

 // Flash SPI master
 // spi_wrapper spi_wrapper_instance (
 //   .clk_i    (clk),
 //   .rstn_i   (rstn),
//
 //   .valid_i  (spi_flash_valid_w),
 //   .ready_o  (spi_flash_ready_w),
 //   .addr_i   (spi_flash_address_w),
 //   .rdata_o  (spi_flash_data_w),
//
 //   .spi_clk  (spi_flash_sclk_w),
  //  .csb      (spi_flash_ss_w),
 //   .mosi     (spi_flash_mosi_w),
  //  .miso     (spi_flash_miso_w)
 // );
    spi_flash spi_flash_instance (
        .clk            (clk),
        .rstn            (rstn),
        
        .mem_valid    (spi_flash_valid_w),
        .mem_addr    (spi_flash_address_w),
        .mem_data    (spi_flash_data_w),
        .mem_ready    (spi_flash_ready_w),
        
        .sclk    (spi_flash_sclk_w),
        .mosi    (spi_flash_mosi_w),
        .miso    (spi_flash_miso_w),
        .cs        (spi_flash_ss_w)
    );


  // Sensor SPI master 
  //SPI_Luks SPI_Luks_instance (
  //  .clk      (clk),
  //  .rstn     (rstn),
//
  //  .valid    (spi_luks_valid_w),
  //  .ready    (spi_luks_ready_w),
  //  .toMemory (spi_luks_data_w),                            //  0 == master can retrieve data from slave
//
   // .ss       (spi_luks_ss_w),                              //  0 sets slave in selected state
   // .sclk     (spi_luks_sclk_w),             //  takes 8 bits from rx_data (4-11) and sends it to memory
   // .miso     (spi_luks_miso_w)
  //);
    spi_sensor spi_sensor_instance (
        .clk        (clk),
        .rstn        (rstn),
        
        .mem_valid    (spi_luks_valid_w),
        .mem_data    (spi_luks_data_w),
        .mem_ready    (spi_luks_ready_w),
        
        .sclk    (spi_luks_sclk_w),
        .cs    (spi_luks_ss_w),
        .miso    (spi_luks_miso_w)
    );
    

  // assign spi_luks_data_w = 8'b0;
  // assign spi_luks_ready_w = 1'b1;
  // assign spi_luks_ss_w = 1'b1;
  // assign spi_luks_sclk_w = 1'b0;

  // All output pins must be assigned. If not used, assign to 0.
  assign spi_flash_miso_w = ui_in[3];
  assign spi_luks_miso_w = ui_in[4];
  
  assign uio_out[4] = ~spi_flash_ss_w ? spi_flash_sclk_w : spi_luks_sclk_w; // SCLK
  assign uio_out[5] = spi_flash_ss_w; // Flash SS 
  assign uio_out[6] = spi_luks_ss_w; // Luks SS
  assign uio_out[7] = spi_flash_mosi_w; // Flash MOSI
  assign uio_oe  = 8'b11111111;

endmodule
