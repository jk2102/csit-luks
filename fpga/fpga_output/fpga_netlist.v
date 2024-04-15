// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sun Apr 14 19:15:28 2024
// Host        : JKUNDRATALAPTOP running 64-bit major release  (build 9200)
// Command     : write_verilog -force ./fpga_output/fpga_netlist.v
// Design      : fpga_top_lvl
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "244a9054" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module fpga_top_lvl
   (clk,
    btnC,
    clk_1kHz,
    seg,
    dp,
    an,
    A,
    B,
    PB,
    FLASH_CS,
    FLASH_MOSI,
    FLASH_MISO);
  input clk;
  input btnC;
  output clk_1kHz;
  output [6:0]seg;
  output dp;
  output [3:0]an;
  input A;
  input B;
  input PB;
  output FLASH_CS;
  output FLASH_MOSI;
  input FLASH_MISO;

  wire \<const0> ;
  wire \<const1> ;
  wire A;
  wire A_IBUF;
  wire B;
  wire B_IBUF;
  wire FLASH_CS;
  wire FLASH_CS_OBUF;
  wire FLASH_MISO;
  wire FLASH_MISO_IBUF;
  wire FLASH_MOSI;
  wire FLASH_MOSI_OBUF;
  wire PB;
  wire PB_IBUF;
  wire [3:0]an;
  wire [3:0]an_OBUF;
  wire btnC;
  wire btnC_IBUF;
  wire clk;
  wire clk_1kHz;
  wire clk_1kHz_OBUF;
  wire clk_1kHz_OBUF_BUFG;
  wire clk_1kHz_i_1_n_0;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [15:0]counter;
  wire \counter[15]_i_1_n_0 ;
  wire \counter[15]_i_3_n_0 ;
  wire \counter[15]_i_4_n_0 ;
  wire \counter_reg[12]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire dp;
  wire dp_OBUF;
  wire [15:0]p_1_in;
  wire [6:0]seg;
  wire [6:0]seg_OBUF;
  wire [4:4]uio_out_w;
  wire [3:0]\NLW_counter_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[4]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[8]_i_1_CO_UNCONNECTED ;

  IBUF A_IBUF_inst
       (.I(A),
        .O(A_IBUF));
  IBUF B_IBUF_inst
       (.I(B),
        .O(B_IBUF));
  OBUF FLASH_CS_OBUF_inst
       (.I(FLASH_CS_OBUF),
        .O(FLASH_CS));
  IBUF FLASH_MISO_IBUF_inst
       (.I(FLASH_MISO),
        .O(FLASH_MISO_IBUF));
  OBUF FLASH_MOSI_OBUF_inst
       (.I(FLASH_MOSI_OBUF),
        .O(FLASH_MOSI));
  GND GND
       (.G(\<const0> ));
  IBUF PB_IBUF_inst
       (.I(PB),
        .O(PB_IBUF));
  (* BOX_TYPE = "PRIMITIVE" *) 
  STARTUPE2 #(
    .PROG_USR("FALSE"),
    .SIM_CCLK_FREQ(0.000000)) 
    STARTUPE2_inst
       (.CLK(\<const0> ),
        .GSR(\<const0> ),
        .GTS(\<const0> ),
        .KEYCLEARB(\<const0> ),
        .PACK(\<const0> ),
        .USRCCLKO(uio_out_w),
        .USRCCLKTS(\<const0> ),
        .USRDONEO(\<const0> ),
        .USRDONETS(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  OBUF \an_OBUF[0]_inst 
       (.I(an_OBUF[0]),
        .O(an[0]));
  OBUF \an_OBUF[1]_inst 
       (.I(an_OBUF[1]),
        .O(an[1]));
  OBUF \an_OBUF[2]_inst 
       (.I(an_OBUF[2]),
        .O(an[2]));
  OBUF \an_OBUF[3]_inst 
       (.I(an_OBUF[3]),
        .O(an[3]));
  IBUF btnC_IBUF_inst
       (.I(btnC),
        .O(btnC_IBUF));
  BUFG clk_1kHz_OBUF_BUFG_inst
       (.I(clk_1kHz_OBUF),
        .O(clk_1kHz_OBUF_BUFG));
  OBUF clk_1kHz_OBUF_inst
       (.I(clk_1kHz_OBUF_BUFG),
        .O(clk_1kHz));
  LUT2 #(
    .INIT(4'h6)) 
    clk_1kHz_i_1
       (.I0(\counter[15]_i_1_n_0 ),
        .I1(clk_1kHz_OBUF),
        .O(clk_1kHz_i_1_n_0));
  FDRE clk_1kHz_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(clk_1kHz_i_1_n_0),
        .Q(clk_1kHz_OBUF),
        .R(\<const0> ));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter[0]),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \counter[15]_i_1 
       (.I0(counter[13]),
        .I1(counter[14]),
        .I2(\counter[15]_i_3_n_0 ),
        .I3(counter[11]),
        .I4(counter[12]),
        .I5(counter[15]),
        .O(\counter[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \counter[15]_i_3 
       (.I0(counter[9]),
        .I1(counter[6]),
        .I2(\counter[15]_i_4_n_0 ),
        .I3(counter[7]),
        .I4(counter[8]),
        .I5(counter[10]),
        .O(\counter[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \counter[15]_i_4 
       (.I0(counter[4]),
        .I1(counter[2]),
        .I2(counter[1]),
        .I3(counter[0]),
        .I4(counter[3]),
        .I5(counter[5]),
        .O(\counter[15]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_1_in[0]),
        .Q(counter[0]),
        .R(\counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_1_in[10]),
        .Q(counter[10]),
        .R(\counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_1_in[11]),
        .Q(counter[11]),
        .R(\counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_1_in[12]),
        .Q(counter[12]),
        .R(\counter[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\counter_reg[12]_i_1_n_0 ,\NLW_counter_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(p_1_in[12:9]),
        .S(counter[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_1_in[13]),
        .Q(counter[13]),
        .R(\counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_1_in[14]),
        .Q(counter[14]),
        .R(\counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_1_in[15]),
        .Q(counter[15]),
        .R(\counter[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[15]_i_2 
       (.CI(\counter_reg[12]_i_1_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(p_1_in[15:13]),
        .S({\<const0> ,counter[15:13]}));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_1_in[1]),
        .Q(counter[1]),
        .R(\counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_1_in[2]),
        .Q(counter[2]),
        .R(\counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_1_in[3]),
        .Q(counter[3]),
        .R(\counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_1_in[4]),
        .Q(counter[4]),
        .R(\counter[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\<const0> ),
        .CO({\counter_reg[4]_i_1_n_0 ,\NLW_counter_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(counter[0]),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(p_1_in[4:1]),
        .S(counter[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_1_in[5]),
        .Q(counter[5]),
        .R(\counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_1_in[6]),
        .Q(counter[6]),
        .R(\counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_1_in[7]),
        .Q(counter[7]),
        .R(\counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_1_in[8]),
        .Q(counter[8]),
        .R(\counter[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\NLW_counter_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(p_1_in[8:5]),
        .S(counter[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_1_in[9]),
        .Q(counter[9]),
        .R(\counter[15]_i_1_n_0 ));
  OBUF dp_OBUF_inst
       (.I(dp_OBUF),
        .O(dp));
  OBUF \seg_OBUF[0]_inst 
       (.I(seg_OBUF[0]),
        .O(seg[0]));
  OBUF \seg_OBUF[1]_inst 
       (.I(seg_OBUF[1]),
        .O(seg[1]));
  OBUF \seg_OBUF[2]_inst 
       (.I(seg_OBUF[2]),
        .O(seg[2]));
  OBUF \seg_OBUF[3]_inst 
       (.I(seg_OBUF[3]),
        .O(seg[3]));
  OBUF \seg_OBUF[4]_inst 
       (.I(seg_OBUF[4]),
        .O(seg[4]));
  OBUF \seg_OBUF[5]_inst 
       (.I(seg_OBUF[5]),
        .O(seg[5]));
  OBUF \seg_OBUF[6]_inst 
       (.I(seg_OBUF[6]),
        .O(seg[6]));
  tt_um_csit_luks u_tt_um_csit_luks
       (.A_IBUF(A_IBUF),
        .B_IBUF(B_IBUF),
        .CLK(clk_1kHz_OBUF_BUFG),
        .D(FLASH_MISO_IBUF),
        .FLASH_CS_OBUF(FLASH_CS_OBUF),
        .FLASH_MOSI_OBUF(FLASH_MOSI_OBUF),
        .PB_IBUF(PB_IBUF),
        .an_OBUF(an_OBUF),
        .btnC_IBUF(btnC_IBUF),
        .dp_OBUF(dp_OBUF),
        .seg_OBUF(seg_OBUF),
        .uio_out_w(uio_out_w));
endmodule

module fsm
   (Q,
    spi_flash_valid_w,
    spi_luks_valid_w,
    seg_OBUF,
    dp_OBUF,
    \fd_address_reg[23]_0 ,
    CLK,
    btnC_IBUF,
    spi_luks_ready_w,
    spi_flash_ready_w,
    dp_OBUF_inst_i_1_0,
    pb_press_type_w,
    \current_state_reg[1]_0 ,
    \current_state_reg[1]_1 ,
    \display_out_reg[3]_0 ,
    \display_out_reg[3]_1 ,
    \last_auto_state_reg[1]_0 );
  output [1:0]Q;
  output spi_flash_valid_w;
  output spi_luks_valid_w;
  output [6:0]seg_OBUF;
  output dp_OBUF;
  output [15:0]\fd_address_reg[23]_0 ;
  input CLK;
  input btnC_IBUF;
  input spi_luks_ready_w;
  input spi_flash_ready_w;
  input [1:0]dp_OBUF_inst_i_1_0;
  input [1:0]pb_press_type_w;
  input \current_state_reg[1]_0 ;
  input \current_state_reg[1]_1 ;
  input [7:0]\display_out_reg[3]_0 ;
  input [3:0]\display_out_reg[3]_1 ;
  input \last_auto_state_reg[1]_0 ;

  wire \<const1> ;
  wire CLK;
  wire F_set_flag;
  wire F_set_flag_reg_n_0;
  wire \F_val[0]_i_1_n_0 ;
  wire \F_val[1]_i_1_n_0 ;
  wire \F_val[2]_i_1_n_0 ;
  wire \F_val[3]_i_1_n_0 ;
  wire \F_val_reg_n_0_[0] ;
  wire \F_val_reg_n_0_[1] ;
  wire \F_val_reg_n_0_[2] ;
  wire \F_val_reg_n_0_[3] ;
  wire [3:0]ISO_val;
  wire \ISO_val[0]_i_1_n_0 ;
  wire \ISO_val[1]_i_1_n_0 ;
  wire \ISO_val[2]_i_1_n_0 ;
  wire \ISO_val[3]_i_1_n_0 ;
  wire \ISO_val[3]_i_2_n_0 ;
  wire [1:0]Q;
  wire \SS_val[3]_i_1_n_0 ;
  wire \SS_val_reg_n_0_[0] ;
  wire \SS_val_reg_n_0_[1] ;
  wire \SS_val_reg_n_0_[2] ;
  wire \SS_val_reg_n_0_[3] ;
  wire btnC_IBUF;
  wire [3:0]current_state;
  wire \current_state[0]_i_2_n_0 ;
  wire \current_state[0]_i_3_n_0 ;
  wire \current_state[0]_i_4_n_0 ;
  wire \current_state[0]_i_5_n_0 ;
  wire \current_state[0]_i_6_n_0 ;
  wire \current_state[1]_i_2_n_0 ;
  wire \current_state[1]_i_5_n_0 ;
  wire \current_state[2]_i_2_n_0 ;
  wire \current_state[2]_i_3_n_0 ;
  wire \current_state[2]_i_4_n_0 ;
  wire \current_state[2]_i_5_n_0 ;
  wire \current_state[2]_i_6_n_0 ;
  wire \current_state[3]_i_2_n_0 ;
  wire \current_state_reg[1]_0 ;
  wire \current_state_reg[1]_1 ;
  wire \current_state_reg_n_0_[2] ;
  wire \current_state_reg_n_0_[3] ;
  wire [3:0]display_out;
  wire \display_out[1]_i_2_n_0 ;
  wire \display_out[3]_i_1_n_0 ;
  wire \display_out[3]_i_3_n_0 ;
  wire \display_out[3]_i_4_n_0 ;
  wire \display_out[3]_i_5_n_0 ;
  wire [7:0]\display_out_reg[3]_0 ;
  wire [3:0]\display_out_reg[3]_1 ;
  wire \display_sel[0]_i_1_n_0 ;
  wire \display_sel[1]_i_1_n_0 ;
  wire dp_OBUF;
  wire [1:0]dp_OBUF_inst_i_1_0;
  wire dp_OBUF_inst_i_2_n_0;
  wire dp_OBUF_inst_i_3_n_0;
  wire dp_OBUF_inst_i_4_n_0;
  wire dp_OBUF_inst_i_5_n_0;
  wire dp_OBUF_inst_i_6_n_0;
  wire dp_OBUF_inst_i_7_n_0;
  wire \fd_address[10]_i_1_n_0 ;
  wire \fd_address[11]_i_1_n_0 ;
  wire \fd_address[12]_i_1_n_0 ;
  wire \fd_address[13]_i_1_n_0 ;
  wire \fd_address[14]_i_1_n_0 ;
  wire \fd_address[15]_i_1_n_0 ;
  wire \fd_address[16]_i_1_n_0 ;
  wire \fd_address[17]_i_1_n_0 ;
  wire \fd_address[18]_i_1_n_0 ;
  wire \fd_address[19]_i_1_n_0 ;
  wire \fd_address[20]_i_1_n_0 ;
  wire \fd_address[21]_i_1_n_0 ;
  wire \fd_address[22]_i_1_n_0 ;
  wire \fd_address[23]_i_1_n_0 ;
  wire \fd_address[8]_i_1_n_0 ;
  wire \fd_address[9]_i_1_n_0 ;
  wire [15:0]\fd_address_reg[23]_0 ;
  wire fd_valid_i_1_n_0;
  wire [1:0]last_auto_state;
  wire \last_auto_state[0]_i_1_n_0 ;
  wire \last_auto_state[1]_i_1_n_0 ;
  wire \last_auto_state_reg[1]_0 ;
  wire [0:0]last_normal_state;
  wire \last_normal_state[0]_i_1_n_0 ;
  wire lux_valid_i_1_n_0;
  wire lux_valid_i_2_n_0;
  wire [1:0]pb_press_type_w;
  wire previous_state0;
  wire \previous_state[0]_i_1_n_0 ;
  wire \previous_state[2]_i_1_n_0 ;
  wire \previous_state_reg_n_0_[0] ;
  wire \previous_state_reg_n_0_[2] ;
  wire [6:0]seg_OBUF;
  wire \seg_OBUF[0]_inst_i_2_n_0 ;
  wire \seg_OBUF[0]_inst_i_3_n_0 ;
  wire \seg_OBUF[0]_inst_i_4_n_0 ;
  wire \seg_OBUF[0]_inst_i_5_n_0 ;
  wire \seg_OBUF[0]_inst_i_6_n_0 ;
  wire \seg_OBUF[0]_inst_i_7_n_0 ;
  wire \seg_OBUF[1]_inst_i_2_n_0 ;
  wire \seg_OBUF[1]_inst_i_3_n_0 ;
  wire \seg_OBUF[1]_inst_i_4_n_0 ;
  wire \seg_OBUF[1]_inst_i_5_n_0 ;
  wire \seg_OBUF[1]_inst_i_6_n_0 ;
  wire \seg_OBUF[1]_inst_i_7_n_0 ;
  wire \seg_OBUF[2]_inst_i_2_n_0 ;
  wire \seg_OBUF[2]_inst_i_3_n_0 ;
  wire \seg_OBUF[2]_inst_i_4_n_0 ;
  wire \seg_OBUF[2]_inst_i_5_n_0 ;
  wire \seg_OBUF[2]_inst_i_6_n_0 ;
  wire \seg_OBUF[2]_inst_i_7_n_0 ;
  wire \seg_OBUF[3]_inst_i_2_n_0 ;
  wire \seg_OBUF[3]_inst_i_3_n_0 ;
  wire \seg_OBUF[3]_inst_i_4_n_0 ;
  wire \seg_OBUF[3]_inst_i_5_n_0 ;
  wire \seg_OBUF[3]_inst_i_6_n_0 ;
  wire \seg_OBUF[3]_inst_i_7_n_0 ;
  wire \seg_OBUF[4]_inst_i_2_n_0 ;
  wire \seg_OBUF[4]_inst_i_3_n_0 ;
  wire \seg_OBUF[4]_inst_i_4_n_0 ;
  wire \seg_OBUF[4]_inst_i_5_n_0 ;
  wire \seg_OBUF[4]_inst_i_6_n_0 ;
  wire \seg_OBUF[4]_inst_i_7_n_0 ;
  wire \seg_OBUF[5]_inst_i_2_n_0 ;
  wire \seg_OBUF[5]_inst_i_3_n_0 ;
  wire \seg_OBUF[5]_inst_i_4_n_0 ;
  wire \seg_OBUF[5]_inst_i_5_n_0 ;
  wire \seg_OBUF[5]_inst_i_6_n_0 ;
  wire \seg_OBUF[5]_inst_i_7_n_0 ;
  wire \seg_OBUF[6]_inst_i_2_n_0 ;
  wire \seg_OBUF[6]_inst_i_3_n_0 ;
  wire \seg_OBUF[6]_inst_i_4_n_0 ;
  wire \seg_OBUF[6]_inst_i_5_n_0 ;
  wire \seg_OBUF[6]_inst_i_6_n_0 ;
  wire \seg_OBUF[6]_inst_i_7_n_0 ;
  wire [5:0]sel0;
  wire spi_flash_ready_w;
  wire spi_flash_valid_w;
  wire spi_luks_ready_w;
  wire spi_luks_valid_w;

  LUT4 #(
    .INIT(16'h0009)) 
    F_set_flag_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[3] ),
        .O(F_set_flag));
  FDCE F_set_flag_reg
       (.C(CLK),
        .CE(F_set_flag),
        .CLR(btnC_IBUF),
        .D(Q[1]),
        .Q(F_set_flag_reg_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \F_val[0]_i_1 
       (.I0(Q[1]),
        .I1(\display_out_reg[3]_1 [0]),
        .O(\F_val[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \F_val[1]_i_1 
       (.I0(Q[1]),
        .I1(\display_out_reg[3]_1 [1]),
        .O(\F_val[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \F_val[2]_i_1 
       (.I0(Q[1]),
        .I1(\display_out_reg[3]_1 [2]),
        .O(\F_val[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \F_val[3]_i_1 
       (.I0(Q[1]),
        .I1(\display_out_reg[3]_1 [3]),
        .O(\F_val[3]_i_1_n_0 ));
  FDCE \F_val_reg[0] 
       (.C(CLK),
        .CE(F_set_flag),
        .CLR(btnC_IBUF),
        .D(\F_val[0]_i_1_n_0 ),
        .Q(\F_val_reg_n_0_[0] ));
  FDCE \F_val_reg[1] 
       (.C(CLK),
        .CE(F_set_flag),
        .CLR(btnC_IBUF),
        .D(\F_val[1]_i_1_n_0 ),
        .Q(\F_val_reg_n_0_[1] ));
  FDCE \F_val_reg[2] 
       (.C(CLK),
        .CE(F_set_flag),
        .CLR(btnC_IBUF),
        .D(\F_val[2]_i_1_n_0 ),
        .Q(\F_val_reg_n_0_[2] ));
  FDCE \F_val_reg[3] 
       (.C(CLK),
        .CE(F_set_flag),
        .CLR(btnC_IBUF),
        .D(\F_val[3]_i_1_n_0 ),
        .Q(\F_val_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ISO_val[0]_i_1 
       (.I0(Q[0]),
        .I1(\display_out_reg[3]_1 [0]),
        .O(\ISO_val[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ISO_val[1]_i_1 
       (.I0(Q[0]),
        .I1(\display_out_reg[3]_1 [1]),
        .O(\ISO_val[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ISO_val[2]_i_1 
       (.I0(Q[0]),
        .I1(\display_out_reg[3]_1 [2]),
        .O(\ISO_val[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \ISO_val[3]_i_1 
       (.I0(Q[1]),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(\current_state_reg_n_0_[2] ),
        .O(\ISO_val[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ISO_val[3]_i_2 
       (.I0(Q[0]),
        .I1(\display_out_reg[3]_1 [3]),
        .O(\ISO_val[3]_i_2_n_0 ));
  FDCE \ISO_val_reg[0] 
       (.C(CLK),
        .CE(\ISO_val[3]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(\ISO_val[0]_i_1_n_0 ),
        .Q(ISO_val[0]));
  FDCE \ISO_val_reg[1] 
       (.C(CLK),
        .CE(\ISO_val[3]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(\ISO_val[1]_i_1_n_0 ),
        .Q(ISO_val[1]));
  FDCE \ISO_val_reg[2] 
       (.C(CLK),
        .CE(\ISO_val[3]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(\ISO_val[2]_i_1_n_0 ),
        .Q(ISO_val[2]));
  FDCE \ISO_val_reg[3] 
       (.C(CLK),
        .CE(\ISO_val[3]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(\ISO_val[3]_i_2_n_0 ),
        .Q(ISO_val[3]));
  LUT3 #(
    .INIT(8'h01)) 
    \SS_val[3]_i_1 
       (.I0(Q[0]),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(\current_state_reg_n_0_[2] ),
        .O(\SS_val[3]_i_1_n_0 ));
  FDCE \SS_val_reg[0] 
       (.C(CLK),
        .CE(\SS_val[3]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(\F_val[0]_i_1_n_0 ),
        .Q(\SS_val_reg_n_0_[0] ));
  FDCE \SS_val_reg[1] 
       (.C(CLK),
        .CE(\SS_val[3]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(\F_val[1]_i_1_n_0 ),
        .Q(\SS_val_reg_n_0_[1] ));
  FDCE \SS_val_reg[2] 
       (.C(CLK),
        .CE(\SS_val[3]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(\F_val[2]_i_1_n_0 ),
        .Q(\SS_val_reg_n_0_[2] ));
  FDCE \SS_val_reg[3] 
       (.C(CLK),
        .CE(\SS_val[3]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(\F_val[3]_i_1_n_0 ),
        .Q(\SS_val_reg_n_0_[3] ));
  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'hFFFF101C)) 
    \current_state[0]_i_1 
       (.I0(\current_state[0]_i_2_n_0 ),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state[0]_i_3_n_0 ),
        .I4(\current_state[0]_i_4_n_0 ),
        .O(current_state[0]));
  LUT6 #(
    .INIT(64'h7037FFFF70370000)) 
    \current_state[0]_i_2 
       (.I0(last_normal_state),
        .I1(pb_press_type_w[1]),
        .I2(pb_press_type_w[0]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\current_state[0]_i_5_n_0 ),
        .O(\current_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFEFFFFF)) 
    \current_state[0]_i_3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(spi_flash_ready_w),
        .I3(last_auto_state[1]),
        .I4(last_auto_state[0]),
        .I5(\current_state[0]_i_6_n_0 ),
        .O(\current_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000BB5B)) 
    \current_state[0]_i_4 
       (.I0(pb_press_type_w[0]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(pb_press_type_w[1]),
        .I4(\current_state_reg_n_0_[2] ),
        .I5(\current_state_reg_n_0_[3] ),
        .O(\current_state[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hBB8BBBBB)) 
    \current_state[0]_i_5 
       (.I0(spi_flash_ready_w),
        .I1(Q[0]),
        .I2(spi_luks_ready_w),
        .I3(\previous_state_reg_n_0_[2] ),
        .I4(\previous_state_reg_n_0_[0] ),
        .O(\current_state[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h2800300C)) 
    \current_state[0]_i_6 
       (.I0(last_normal_state),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(pb_press_type_w[0]),
        .I4(pb_press_type_w[1]),
        .O(\current_state[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0D000DF00D0F0DFF)) 
    \current_state[1]_i_1 
       (.I0(\current_state[1]_i_2_n_0 ),
        .I1(\current_state_reg[1]_0 ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(\current_state_reg[1]_1 ),
        .I5(\current_state[1]_i_5_n_0 ),
        .O(current_state[1]));
  LUT5 #(
    .INIT(32'hFFFFFFF7)) 
    \current_state[1]_i_2 
       (.I0(spi_flash_ready_w),
        .I1(last_auto_state[1]),
        .I2(last_auto_state[0]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\current_state[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00AF0F8F)) 
    \current_state[1]_i_5 
       (.I0(pb_press_type_w[1]),
        .I1(F_set_flag_reg_n_0),
        .I2(Q[1]),
        .I3(pb_press_type_w[0]),
        .I4(Q[0]),
        .O(\current_state[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEEEEEF)) 
    \current_state[2]_i_1 
       (.I0(\current_state[2]_i_2_n_0 ),
        .I1(\current_state[2]_i_3_n_0 ),
        .I2(\current_state[3]_i_2_n_0 ),
        .I3(Q[1]),
        .I4(\current_state[2]_i_4_n_0 ),
        .I5(\current_state[2]_i_5_n_0 ),
        .O(current_state[2]));
  LUT6 #(
    .INIT(64'h000028AA00000000)) 
    \current_state[2]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(pb_press_type_w[0]),
        .I3(pb_press_type_w[1]),
        .I4(\current_state_reg_n_0_[3] ),
        .I5(\current_state_reg_n_0_[2] ),
        .O(\current_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FE000000)) 
    \current_state[2]_i_3 
       (.I0(Q[0]),
        .I1(F_set_flag_reg_n_0),
        .I2(pb_press_type_w[0]),
        .I3(pb_press_type_w[1]),
        .I4(Q[1]),
        .I5(\current_state[2]_i_6_n_0 ),
        .O(\current_state[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \current_state[2]_i_4 
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(\current_state_reg_n_0_[2] ),
        .O(\current_state[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010200080)) 
    \current_state[2]_i_5 
       (.I0(Q[0]),
        .I1(pb_press_type_w[0]),
        .I2(pb_press_type_w[1]),
        .I3(Q[1]),
        .I4(\current_state_reg_n_0_[3] ),
        .I5(\current_state_reg_n_0_[2] ),
        .O(\current_state[2]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \current_state[2]_i_6 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\current_state_reg_n_0_[3] ),
        .O(\current_state[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000202C000C2C2C)) 
    \current_state[3]_i_1 
       (.I0(\current_state[3]_i_2_n_0 ),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(pb_press_type_w[1]),
        .O(current_state[3]));
  LUT4 #(
    .INIT(16'h0080)) 
    \current_state[3]_i_2 
       (.I0(spi_luks_ready_w),
        .I1(\previous_state_reg_n_0_[0] ),
        .I2(\previous_state_reg_n_0_[2] ),
        .I3(Q[0]),
        .O(\current_state[3]_i_2_n_0 ));
  FDCE \current_state_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(current_state[0]),
        .Q(Q[0]));
  FDCE \current_state_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(current_state[1]),
        .Q(Q[1]));
  FDCE \current_state_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(current_state[2]),
        .Q(\current_state_reg_n_0_[2] ));
  FDCE \current_state_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(current_state[3]),
        .Q(\current_state_reg_n_0_[3] ));
  LUT6 #(
    .INIT(64'hAFC0AFC0AFC0A0C0)) 
    \display_out[0]_i_1 
       (.I0(\display_out_reg[3]_0 [0]),
        .I1(\display_out_reg[3]_1 [0]),
        .I2(\display_out[3]_i_5_n_0 ),
        .I3(\display_out[3]_i_3_n_0 ),
        .I4(\display_out[3]_i_4_n_0 ),
        .I5(\display_out_reg[3]_0 [4]),
        .O(display_out[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00082000)) 
    \display_out[1]_i_1 
       (.I0(\display_out_reg[3]_0 [1]),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(Q[1]),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(Q[0]),
        .I5(\display_out[1]_i_2_n_0 ),
        .O(display_out[1]));
  LUT6 #(
    .INIT(64'h00AFAC0C00AFAC00)) 
    \display_out[1]_i_2 
       (.I0(\display_out_reg[3]_0 [5]),
        .I1(\display_out_reg[3]_1 [1]),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(Q[1]),
        .I4(\current_state_reg_n_0_[2] ),
        .I5(Q[0]),
        .O(\display_out[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFC0AFC0AFC0A0C0)) 
    \display_out[2]_i_1 
       (.I0(\display_out_reg[3]_0 [2]),
        .I1(\display_out_reg[3]_1 [2]),
        .I2(\display_out[3]_i_5_n_0 ),
        .I3(\display_out[3]_i_3_n_0 ),
        .I4(\display_out[3]_i_4_n_0 ),
        .I5(\display_out_reg[3]_0 [6]),
        .O(display_out[2]));
  LUT4 #(
    .INIT(16'h07FF)) 
    \display_out[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[3] ),
        .O(\display_out[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0FCF0FA00FC00FA0)) 
    \display_out[3]_i_2 
       (.I0(\display_out_reg[3]_0 [7]),
        .I1(\display_out_reg[3]_0 [3]),
        .I2(\display_out[3]_i_3_n_0 ),
        .I3(\display_out[3]_i_4_n_0 ),
        .I4(\display_out[3]_i_5_n_0 ),
        .I5(\display_out_reg[3]_1 [3]),
        .O(display_out[3]));
  LUT3 #(
    .INIT(8'hF8)) 
    \display_out[3]_i_3 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(Q[1]),
        .I2(\current_state_reg_n_0_[3] ),
        .O(\display_out[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h89)) 
    \display_out[3]_i_4 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\display_out[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h150C)) 
    \display_out[3]_i_5 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(Q[1]),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(Q[0]),
        .O(\display_out[3]_i_5_n_0 ));
  FDCE \display_out_reg[0] 
       (.C(CLK),
        .CE(\display_out[3]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(display_out[0]),
        .Q(sel0[0]));
  FDCE \display_out_reg[1] 
       (.C(CLK),
        .CE(\display_out[3]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(display_out[1]),
        .Q(sel0[1]));
  FDCE \display_out_reg[2] 
       (.C(CLK),
        .CE(\display_out[3]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(display_out[2]),
        .Q(sel0[2]));
  FDCE \display_out_reg[3] 
       (.C(CLK),
        .CE(\display_out[3]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(display_out[3]),
        .Q(sel0[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hCDFC)) 
    \display_sel[0]_i_1 
       (.I0(Q[0]),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(Q[1]),
        .O(\display_sel[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hEEFC)) 
    \display_sel[1]_i_1 
       (.I0(Q[1]),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(Q[0]),
        .O(\display_sel[1]_i_1_n_0 ));
  FDCE \display_sel_reg[0] 
       (.C(CLK),
        .CE(\display_out[3]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(\display_sel[0]_i_1_n_0 ),
        .Q(sel0[4]));
  FDCE \display_sel_reg[1] 
       (.C(CLK),
        .CE(\display_out[3]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(\display_sel[1]_i_1_n_0 ),
        .Q(sel0[5]));
  MUXF8 dp_OBUF_inst_i_1
       (.I0(dp_OBUF_inst_i_2_n_0),
        .I1(dp_OBUF_inst_i_3_n_0),
        .O(dp_OBUF),
        .S(dp_OBUF_inst_i_1_0[0]));
  MUXF7 dp_OBUF_inst_i_2
       (.I0(dp_OBUF_inst_i_4_n_0),
        .I1(dp_OBUF_inst_i_5_n_0),
        .O(dp_OBUF_inst_i_2_n_0),
        .S(dp_OBUF_inst_i_1_0[1]));
  MUXF7 dp_OBUF_inst_i_3
       (.I0(dp_OBUF_inst_i_6_n_0),
        .I1(dp_OBUF_inst_i_7_n_0),
        .O(dp_OBUF_inst_i_3_n_0),
        .S(dp_OBUF_inst_i_1_0[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FBFFFFF)) 
    dp_OBUF_inst_i_4
       (.I0(sel0[4]),
        .I1(sel0[3]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(sel0[5]),
        .O(dp_OBUF_inst_i_4_n_0));
  LUT6 #(
    .INIT(64'hEEEFFFFFFFFFFFFF)) 
    dp_OBUF_inst_i_5
       (.I0(sel0[5]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[3]),
        .I5(sel0[4]),
        .O(dp_OBUF_inst_i_5_n_0));
  LUT6 #(
    .INIT(64'hEEEEEEEADFDFFFF7)) 
    dp_OBUF_inst_i_6
       (.I0(sel0[4]),
        .I1(sel0[3]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(sel0[5]),
        .O(dp_OBUF_inst_i_6_n_0));
  LUT6 #(
    .INIT(64'hFBBBFFFFFFFFFFFF)) 
    dp_OBUF_inst_i_7
       (.I0(sel0[5]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[3]),
        .I5(sel0[4]),
        .O(dp_OBUF_inst_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fd_address[10]_i_1 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\F_val_reg_n_0_[2] ),
        .O(\fd_address[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fd_address[11]_i_1 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\F_val_reg_n_0_[3] ),
        .O(\fd_address[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fd_address[12]_i_1 
       (.I0(Q[0]),
        .I1(\SS_val_reg_n_0_[0] ),
        .O(\fd_address[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fd_address[13]_i_1 
       (.I0(Q[0]),
        .I1(\SS_val_reg_n_0_[1] ),
        .O(\fd_address[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fd_address[14]_i_1 
       (.I0(Q[0]),
        .I1(\SS_val_reg_n_0_[2] ),
        .O(\fd_address[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fd_address[15]_i_1 
       (.I0(Q[0]),
        .I1(\SS_val_reg_n_0_[3] ),
        .O(\fd_address[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fd_address[16]_i_1 
       (.I0(Q[0]),
        .I1(ISO_val[0]),
        .O(\fd_address[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fd_address[17]_i_1 
       (.I0(Q[0]),
        .I1(ISO_val[1]),
        .O(\fd_address[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fd_address[18]_i_1 
       (.I0(Q[0]),
        .I1(ISO_val[2]),
        .O(\fd_address[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fd_address[19]_i_1 
       (.I0(Q[0]),
        .I1(ISO_val[3]),
        .O(\fd_address[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fd_address[20]_i_1 
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(ISO_val[0]),
        .O(\fd_address[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fd_address[21]_i_1 
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(ISO_val[1]),
        .O(\fd_address[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fd_address[22]_i_1 
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(ISO_val[2]),
        .O(\fd_address[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fd_address[23]_i_1 
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(ISO_val[3]),
        .O(\fd_address[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fd_address[8]_i_1 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\F_val_reg_n_0_[0] ),
        .O(\fd_address[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fd_address[9]_i_1 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\F_val_reg_n_0_[1] ),
        .O(\fd_address[9]_i_1_n_0 ));
  FDCE \fd_address_reg[10] 
       (.C(CLK),
        .CE(fd_valid_i_1_n_0),
        .CLR(btnC_IBUF),
        .D(\fd_address[10]_i_1_n_0 ),
        .Q(\fd_address_reg[23]_0 [2]));
  FDCE \fd_address_reg[11] 
       (.C(CLK),
        .CE(fd_valid_i_1_n_0),
        .CLR(btnC_IBUF),
        .D(\fd_address[11]_i_1_n_0 ),
        .Q(\fd_address_reg[23]_0 [3]));
  FDCE \fd_address_reg[12] 
       (.C(CLK),
        .CE(fd_valid_i_1_n_0),
        .CLR(btnC_IBUF),
        .D(\fd_address[12]_i_1_n_0 ),
        .Q(\fd_address_reg[23]_0 [4]));
  FDCE \fd_address_reg[13] 
       (.C(CLK),
        .CE(fd_valid_i_1_n_0),
        .CLR(btnC_IBUF),
        .D(\fd_address[13]_i_1_n_0 ),
        .Q(\fd_address_reg[23]_0 [5]));
  FDCE \fd_address_reg[14] 
       (.C(CLK),
        .CE(fd_valid_i_1_n_0),
        .CLR(btnC_IBUF),
        .D(\fd_address[14]_i_1_n_0 ),
        .Q(\fd_address_reg[23]_0 [6]));
  FDCE \fd_address_reg[15] 
       (.C(CLK),
        .CE(fd_valid_i_1_n_0),
        .CLR(btnC_IBUF),
        .D(\fd_address[15]_i_1_n_0 ),
        .Q(\fd_address_reg[23]_0 [7]));
  FDCE \fd_address_reg[16] 
       (.C(CLK),
        .CE(fd_valid_i_1_n_0),
        .CLR(btnC_IBUF),
        .D(\fd_address[16]_i_1_n_0 ),
        .Q(\fd_address_reg[23]_0 [8]));
  FDCE \fd_address_reg[17] 
       (.C(CLK),
        .CE(fd_valid_i_1_n_0),
        .CLR(btnC_IBUF),
        .D(\fd_address[17]_i_1_n_0 ),
        .Q(\fd_address_reg[23]_0 [9]));
  FDCE \fd_address_reg[18] 
       (.C(CLK),
        .CE(fd_valid_i_1_n_0),
        .CLR(btnC_IBUF),
        .D(\fd_address[18]_i_1_n_0 ),
        .Q(\fd_address_reg[23]_0 [10]));
  FDCE \fd_address_reg[19] 
       (.C(CLK),
        .CE(fd_valid_i_1_n_0),
        .CLR(btnC_IBUF),
        .D(\fd_address[19]_i_1_n_0 ),
        .Q(\fd_address_reg[23]_0 [11]));
  FDCE \fd_address_reg[20] 
       (.C(CLK),
        .CE(fd_valid_i_1_n_0),
        .CLR(btnC_IBUF),
        .D(\fd_address[20]_i_1_n_0 ),
        .Q(\fd_address_reg[23]_0 [12]));
  FDCE \fd_address_reg[21] 
       (.C(CLK),
        .CE(fd_valid_i_1_n_0),
        .CLR(btnC_IBUF),
        .D(\fd_address[21]_i_1_n_0 ),
        .Q(\fd_address_reg[23]_0 [13]));
  FDCE \fd_address_reg[22] 
       (.C(CLK),
        .CE(fd_valid_i_1_n_0),
        .CLR(btnC_IBUF),
        .D(\fd_address[22]_i_1_n_0 ),
        .Q(\fd_address_reg[23]_0 [14]));
  FDCE \fd_address_reg[23] 
       (.C(CLK),
        .CE(fd_valid_i_1_n_0),
        .CLR(btnC_IBUF),
        .D(\fd_address[23]_i_1_n_0 ),
        .Q(\fd_address_reg[23]_0 [15]));
  FDCE \fd_address_reg[8] 
       (.C(CLK),
        .CE(fd_valid_i_1_n_0),
        .CLR(btnC_IBUF),
        .D(\fd_address[8]_i_1_n_0 ),
        .Q(\fd_address_reg[23]_0 [0]));
  FDCE \fd_address_reg[9] 
       (.C(CLK),
        .CE(fd_valid_i_1_n_0),
        .CLR(btnC_IBUF),
        .D(\fd_address[9]_i_1_n_0 ),
        .Q(\fd_address_reg[23]_0 [1]));
  LUT4 #(
    .INIT(16'h0141)) 
    fd_valid_i_1
       (.I0(Q[1]),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(\current_state_reg_n_0_[3] ),
        .O(fd_valid_i_1_n_0));
  FDCE fd_valid_reg
       (.C(CLK),
        .CE(fd_valid_i_1_n_0),
        .CLR(btnC_IBUF),
        .D(\current_state_reg_n_0_[2] ),
        .Q(spi_flash_valid_w));
  LUT6 #(
    .INIT(64'hFFFFF7FF00002003)) 
    \last_auto_state[0]_i_1 
       (.I0(\last_auto_state_reg[1]_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(\current_state_reg_n_0_[2] ),
        .I5(last_auto_state[0]),
        .O(\last_auto_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFDFFC00000800)) 
    \last_auto_state[1]_i_1 
       (.I0(\last_auto_state_reg[1]_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\current_state_reg_n_0_[3] ),
        .I4(\current_state_reg_n_0_[2] ),
        .I5(last_auto_state[1]),
        .O(\last_auto_state[1]_i_1_n_0 ));
  FDPE \last_auto_state_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\last_auto_state[0]_i_1_n_0 ),
        .PRE(btnC_IBUF),
        .Q(last_auto_state[0]));
  FDCE \last_auto_state_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(\last_auto_state[1]_i_1_n_0 ),
        .Q(last_auto_state[1]));
  LUT5 #(
    .INIT(32'hFFFA0008)) 
    \last_normal_state[0]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(last_normal_state),
        .O(\last_normal_state[0]_i_1_n_0 ));
  FDCE \last_normal_state_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(\last_normal_state[0]_i_1_n_0 ),
        .Q(last_normal_state));
  LUT6 #(
    .INIT(64'hFFFF2AFF00002A00)) 
    lux_valid_i_1
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(spi_luks_ready_w),
        .I2(\previous_state_reg_n_0_[0] ),
        .I3(lux_valid_i_2_n_0),
        .I4(Q[0]),
        .I5(spi_luks_valid_w),
        .O(lux_valid_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    lux_valid_i_2
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(Q[1]),
        .O(lux_valid_i_2_n_0));
  FDCE lux_valid_reg
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(lux_valid_i_1_n_0),
        .Q(spi_luks_valid_w));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \previous_state[0]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(previous_state0),
        .I3(\previous_state_reg_n_0_[0] ),
        .O(\previous_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \previous_state[2]_i_1 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(previous_state0),
        .I3(\previous_state_reg_n_0_[2] ),
        .O(\previous_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0010004008401111)) 
    \previous_state[2]_i_2 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(Q[0]),
        .I2(pb_press_type_w[1]),
        .I3(pb_press_type_w[0]),
        .I4(Q[1]),
        .I5(\current_state_reg_n_0_[3] ),
        .O(previous_state0));
  FDCE \previous_state_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(\previous_state[0]_i_1_n_0 ),
        .Q(\previous_state_reg_n_0_[0] ));
  FDCE \previous_state_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(\previous_state[2]_i_1_n_0 ),
        .Q(\previous_state_reg_n_0_[2] ));
  MUXF8 \seg_OBUF[0]_inst_i_1 
       (.I0(\seg_OBUF[0]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[0]_inst_i_3_n_0 ),
        .O(seg_OBUF[0]),
        .S(dp_OBUF_inst_i_1_0[0]));
  MUXF7 \seg_OBUF[0]_inst_i_2 
       (.I0(\seg_OBUF[0]_inst_i_4_n_0 ),
        .I1(\seg_OBUF[0]_inst_i_5_n_0 ),
        .O(\seg_OBUF[0]_inst_i_2_n_0 ),
        .S(dp_OBUF_inst_i_1_0[1]));
  MUXF7 \seg_OBUF[0]_inst_i_3 
       (.I0(\seg_OBUF[0]_inst_i_6_n_0 ),
        .I1(\seg_OBUF[0]_inst_i_7_n_0 ),
        .O(\seg_OBUF[0]_inst_i_3_n_0 ),
        .S(dp_OBUF_inst_i_1_0[1]));
  LUT6 #(
    .INIT(64'hD8CCC8C8AAAC8008)) 
    \seg_OBUF[0]_inst_i_4 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[3]),
        .O(\seg_OBUF[0]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF627ABFFF)) 
    \seg_OBUF[0]_inst_i_5 
       (.I0(sel0[4]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(sel0[3]),
        .I5(sel0[5]),
        .O(\seg_OBUF[0]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hDCAECCAA8CAEEAFD)) 
    \seg_OBUF[0]_inst_i_6 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[0]),
        .I3(sel0[3]),
        .I4(sel0[1]),
        .I5(sel0[2]),
        .O(\seg_OBUF[0]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7FFFBFFCFFFFF)) 
    \seg_OBUF[0]_inst_i_7 
       (.I0(sel0[0]),
        .I1(sel0[4]),
        .I2(sel0[3]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(sel0[5]),
        .O(\seg_OBUF[0]_inst_i_7_n_0 ));
  MUXF8 \seg_OBUF[1]_inst_i_1 
       (.I0(\seg_OBUF[1]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[1]_inst_i_3_n_0 ),
        .O(seg_OBUF[1]),
        .S(dp_OBUF_inst_i_1_0[0]));
  MUXF7 \seg_OBUF[1]_inst_i_2 
       (.I0(\seg_OBUF[1]_inst_i_4_n_0 ),
        .I1(\seg_OBUF[1]_inst_i_5_n_0 ),
        .O(\seg_OBUF[1]_inst_i_2_n_0 ),
        .S(dp_OBUF_inst_i_1_0[1]));
  MUXF7 \seg_OBUF[1]_inst_i_3 
       (.I0(\seg_OBUF[1]_inst_i_6_n_0 ),
        .I1(\seg_OBUF[1]_inst_i_7_n_0 ),
        .O(\seg_OBUF[1]_inst_i_3_n_0 ),
        .S(dp_OBUF_inst_i_1_0[1]));
  LUT6 #(
    .INIT(64'hDCCD80AAC8E0C189)) 
    \seg_OBUF[1]_inst_i_4 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[3]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(sel0[0]),
        .O(\seg_OBUF[1]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7BAB2B2B)) 
    \seg_OBUF[1]_inst_i_5 
       (.I0(sel0[4]),
        .I1(sel0[2]),
        .I2(sel0[3]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(sel0[5]),
        .O(\seg_OBUF[1]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hDEABCB8AEA88CAA9)) 
    \seg_OBUF[1]_inst_i_6 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\seg_OBUF[1]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFDDFD7BBFFFBF)) 
    \seg_OBUF[1]_inst_i_7 
       (.I0(sel0[4]),
        .I1(sel0[3]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(sel0[5]),
        .O(\seg_OBUF[1]_inst_i_7_n_0 ));
  MUXF8 \seg_OBUF[2]_inst_i_1 
       (.I0(\seg_OBUF[2]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[2]_inst_i_3_n_0 ),
        .O(seg_OBUF[2]),
        .S(dp_OBUF_inst_i_1_0[0]));
  MUXF7 \seg_OBUF[2]_inst_i_2 
       (.I0(\seg_OBUF[2]_inst_i_4_n_0 ),
        .I1(\seg_OBUF[2]_inst_i_5_n_0 ),
        .O(\seg_OBUF[2]_inst_i_2_n_0 ),
        .S(dp_OBUF_inst_i_1_0[1]));
  MUXF7 \seg_OBUF[2]_inst_i_3 
       (.I0(\seg_OBUF[2]_inst_i_6_n_0 ),
        .I1(\seg_OBUF[2]_inst_i_7_n_0 ),
        .O(\seg_OBUF[2]_inst_i_3_n_0 ),
        .S(dp_OBUF_inst_i_1_0[1]));
  LUT6 #(
    .INIT(64'hD8C0CACAC089808C)) 
    \seg_OBUF[2]_inst_i_4 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[3]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\seg_OBUF[2]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF7FF6A66FBBB)) 
    \seg_OBUF[2]_inst_i_5 
       (.I0(sel0[4]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[3]),
        .I5(sel0[5]),
        .O(\seg_OBUF[2]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hDACBCE88CAEE8BB9)) 
    \seg_OBUF[2]_inst_i_6 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[3]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(sel0[0]),
        .O(\seg_OBUF[2]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFDDFFFF7BBFBFBF)) 
    \seg_OBUF[2]_inst_i_7 
       (.I0(sel0[4]),
        .I1(sel0[3]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[5]),
        .O(\seg_OBUF[2]_inst_i_7_n_0 ));
  MUXF8 \seg_OBUF[3]_inst_i_1 
       (.I0(\seg_OBUF[3]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[3]_inst_i_3_n_0 ),
        .O(seg_OBUF[3]),
        .S(dp_OBUF_inst_i_1_0[0]));
  MUXF7 \seg_OBUF[3]_inst_i_2 
       (.I0(\seg_OBUF[3]_inst_i_4_n_0 ),
        .I1(\seg_OBUF[3]_inst_i_5_n_0 ),
        .O(\seg_OBUF[3]_inst_i_2_n_0 ),
        .S(dp_OBUF_inst_i_1_0[1]));
  MUXF7 \seg_OBUF[3]_inst_i_3 
       (.I0(\seg_OBUF[3]_inst_i_6_n_0 ),
        .I1(\seg_OBUF[3]_inst_i_7_n_0 ),
        .O(\seg_OBUF[3]_inst_i_3_n_0 ),
        .S(dp_OBUF_inst_i_1_0[1]));
  LUT6 #(
    .INIT(64'hD8CCC8C8AA2C8008)) 
    \seg_OBUF[3]_inst_i_4 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[3]),
        .O(\seg_OBUF[3]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF7F627ABFFF)) 
    \seg_OBUF[3]_inst_i_5 
       (.I0(sel0[4]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(sel0[3]),
        .I5(sel0[5]),
        .O(\seg_OBUF[3]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hDCAECC2A8CAEEAFD)) 
    \seg_OBUF[3]_inst_i_6 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[0]),
        .I3(sel0[3]),
        .I4(sel0[1]),
        .I5(sel0[2]),
        .O(\seg_OBUF[3]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFBFFCFFFFF)) 
    \seg_OBUF[3]_inst_i_7 
       (.I0(sel0[0]),
        .I1(sel0[4]),
        .I2(sel0[3]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(sel0[5]),
        .O(\seg_OBUF[3]_inst_i_7_n_0 ));
  MUXF8 \seg_OBUF[4]_inst_i_1 
       (.I0(\seg_OBUF[4]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[4]_inst_i_3_n_0 ),
        .O(seg_OBUF[4]),
        .S(dp_OBUF_inst_i_1_0[0]));
  MUXF7 \seg_OBUF[4]_inst_i_2 
       (.I0(\seg_OBUF[4]_inst_i_4_n_0 ),
        .I1(\seg_OBUF[4]_inst_i_5_n_0 ),
        .O(\seg_OBUF[4]_inst_i_2_n_0 ),
        .S(dp_OBUF_inst_i_1_0[1]));
  MUXF7 \seg_OBUF[4]_inst_i_3 
       (.I0(\seg_OBUF[4]_inst_i_6_n_0 ),
        .I1(\seg_OBUF[4]_inst_i_7_n_0 ),
        .O(\seg_OBUF[4]_inst_i_3_n_0 ),
        .S(dp_OBUF_inst_i_1_0[1]));
  LUT6 #(
    .INIT(64'hDA8AC7EEC881E088)) 
    \seg_OBUF[4]_inst_i_4 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(\seg_OBUF[4]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF7F6A7BBFFF)) 
    \seg_OBUF[4]_inst_i_5 
       (.I0(sel0[4]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(sel0[3]),
        .I5(sel0[5]),
        .O(\seg_OBUF[4]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hDEE6CECA8BEFEEAF)) 
    \seg_OBUF[4]_inst_i_6 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[3]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\seg_OBUF[4]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFDFFFFDFFBFFFFF)) 
    \seg_OBUF[4]_inst_i_7 
       (.I0(sel0[4]),
        .I1(sel0[3]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(sel0[5]),
        .O(\seg_OBUF[4]_inst_i_7_n_0 ));
  MUXF8 \seg_OBUF[5]_inst_i_1 
       (.I0(\seg_OBUF[5]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_3_n_0 ),
        .O(seg_OBUF[5]),
        .S(dp_OBUF_inst_i_1_0[0]));
  MUXF7 \seg_OBUF[5]_inst_i_2 
       (.I0(\seg_OBUF[5]_inst_i_4_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_5_n_0 ),
        .O(\seg_OBUF[5]_inst_i_2_n_0 ),
        .S(dp_OBUF_inst_i_1_0[1]));
  MUXF7 \seg_OBUF[5]_inst_i_3 
       (.I0(\seg_OBUF[5]_inst_i_6_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_7_n_0 ),
        .O(\seg_OBUF[5]_inst_i_3_n_0 ),
        .S(dp_OBUF_inst_i_1_0[1]));
  LUT6 #(
    .INIT(64'hD8CACACAC8C9808C)) 
    \seg_OBUF[5]_inst_i_4 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[3]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\seg_OBUF[5]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7BBB7BFF)) 
    \seg_OBUF[5]_inst_i_5 
       (.I0(sel0[4]),
        .I1(sel0[3]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[5]),
        .O(\seg_OBUF[5]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hDACECAEFC7EFEEBF)) 
    \seg_OBUF[5]_inst_i_6 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\seg_OBUF[5]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFDFFFFFFFBFFFFF)) 
    \seg_OBUF[5]_inst_i_7 
       (.I0(sel0[4]),
        .I1(sel0[3]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(sel0[5]),
        .O(\seg_OBUF[5]_inst_i_7_n_0 ));
  MUXF8 \seg_OBUF[6]_inst_i_1 
       (.I0(\seg_OBUF[6]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_3_n_0 ),
        .O(seg_OBUF[6]),
        .S(dp_OBUF_inst_i_1_0[0]));
  MUXF7 \seg_OBUF[6]_inst_i_2 
       (.I0(\seg_OBUF[6]_inst_i_4_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_5_n_0 ),
        .O(\seg_OBUF[6]_inst_i_2_n_0 ),
        .S(dp_OBUF_inst_i_1_0[1]));
  MUXF7 \seg_OBUF[6]_inst_i_3 
       (.I0(\seg_OBUF[6]_inst_i_6_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_7_n_0 ),
        .O(\seg_OBUF[6]_inst_i_3_n_0 ),
        .S(dp_OBUF_inst_i_1_0[1]));
  LUT6 #(
    .INIT(64'h213D32583538115A)) 
    \seg_OBUF[6]_inst_i_4 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(\seg_OBUF[6]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h260606266F7FFFFF)) 
    \seg_OBUF[6]_inst_i_5 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(sel0[3]),
        .O(\seg_OBUF[6]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h23221A5E121B7F2D)) 
    \seg_OBUF[6]_inst_i_6 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[3]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(sel0[1]),
        .O(\seg_OBUF[6]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h272737277F7F7FF7)) 
    \seg_OBUF[6]_inst_i_7 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[3]),
        .O(\seg_OBUF[6]_inst_i_7_n_0 ));
endmodule

module rotational_encoder
   (pb_press_type_w,
    Q,
    \pb_press_type_reg[0]_0 ,
    \pb_press_type_reg[1]_0 ,
    \pb_press_type_reg[0]_1 ,
    A_IBUF,
    CLK,
    btnC_IBUF,
    B_IBUF,
    PB_IBUF,
    \current_state_reg[1] ,
    spi_flash_ready_w);
  output [1:0]pb_press_type_w;
  output [3:0]Q;
  output \pb_press_type_reg[0]_0 ;
  output \pb_press_type_reg[1]_0 ;
  output \pb_press_type_reg[0]_1 ;
  input A_IBUF;
  input CLK;
  input btnC_IBUF;
  input B_IBUF;
  input PB_IBUF;
  input [1:0]\current_state_reg[1] ;
  input spi_flash_ready_w;

  wire \<const0> ;
  wire \<const1> ;
  wire A_IBUF;
  wire B_IBUF;
  wire CLK;
  wire PB_IBUF;
  wire [3:0]Q;
  wire btnC_IBUF;
  wire [1:0]\current_state_reg[1] ;
  wire \enc[0]_i_1_n_0 ;
  wire \enc[3]_i_1_n_0 ;
  wire \enc[3]_i_3_n_0 ;
  wire \enc[3]_i_4_n_0 ;
  wire lastA;
  wire lastB;
  wire [3:1]p_0_in;
  wire pb_cnt;
  wire [11:1]pb_cnt0;
  wire pb_cnt0_carry__0_n_0;
  wire pb_cnt0_carry_n_0;
  wire \pb_cnt[0]_i_1_n_0 ;
  wire \pb_cnt[10]_i_1_n_0 ;
  wire \pb_cnt[11]_i_2_n_0 ;
  wire \pb_cnt[11]_i_3_n_0 ;
  wire \pb_cnt[11]_i_4_n_0 ;
  wire \pb_cnt[1]_i_1_n_0 ;
  wire \pb_cnt[2]_i_1_n_0 ;
  wire \pb_cnt[3]_i_1_n_0 ;
  wire \pb_cnt[4]_i_1_n_0 ;
  wire \pb_cnt[5]_i_1_n_0 ;
  wire \pb_cnt[6]_i_1_n_0 ;
  wire \pb_cnt[7]_i_1_n_0 ;
  wire \pb_cnt[8]_i_1_n_0 ;
  wire \pb_cnt[9]_i_1_n_0 ;
  wire \pb_cnt_reg_n_0_[0] ;
  wire \pb_cnt_reg_n_0_[10] ;
  wire \pb_cnt_reg_n_0_[11] ;
  wire \pb_cnt_reg_n_0_[1] ;
  wire \pb_cnt_reg_n_0_[2] ;
  wire \pb_cnt_reg_n_0_[3] ;
  wire \pb_cnt_reg_n_0_[4] ;
  wire \pb_cnt_reg_n_0_[5] ;
  wire \pb_cnt_reg_n_0_[6] ;
  wire \pb_cnt_reg_n_0_[7] ;
  wire \pb_cnt_reg_n_0_[8] ;
  wire \pb_cnt_reg_n_0_[9] ;
  wire \pb_press_type[0]_i_1_n_0 ;
  wire \pb_press_type[0]_i_2_n_0 ;
  wire \pb_press_type[0]_i_3_n_0 ;
  wire \pb_press_type[0]_i_4_n_0 ;
  wire \pb_press_type[0]_i_5_n_0 ;
  wire \pb_press_type[1]_i_1_n_0 ;
  wire \pb_press_type[1]_i_2_n_0 ;
  wire \pb_press_type[1]_i_3_n_0 ;
  wire \pb_press_type_reg[0]_0 ;
  wire \pb_press_type_reg[0]_1 ;
  wire \pb_press_type_reg[1]_0 ;
  wire [1:0]pb_press_type_w;
  wire spi_flash_ready_w;
  wire [3:0]NLW_pb_cnt0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_pb_cnt0_carry__0_CO_UNCONNECTED;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT4 #(
    .INIT(16'h0A90)) 
    \current_state[1]_i_3 
       (.I0(pb_press_type_w[0]),
        .I1(pb_press_type_w[1]),
        .I2(\current_state_reg[1] [1]),
        .I3(\current_state_reg[1] [0]),
        .O(\pb_press_type_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h202F2F2F)) 
    \current_state[1]_i_4 
       (.I0(pb_press_type_w[0]),
        .I1(pb_press_type_w[1]),
        .I2(\current_state_reg[1] [1]),
        .I3(spi_flash_ready_w),
        .I4(\current_state_reg[1] [0]),
        .O(\pb_press_type_reg[0]_1 ));
  LUT4 #(
    .INIT(16'h0155)) 
    \enc[0]_i_1 
       (.I0(Q[0]),
        .I1(pb_press_type_w[0]),
        .I2(pb_press_type_w[1]),
        .I3(PB_IBUF),
        .O(\enc[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AA9A5565)) 
    \enc[1]_i_1 
       (.I0(Q[0]),
        .I1(lastA),
        .I2(A_IBUF),
        .I3(B_IBUF),
        .I4(Q[1]),
        .I5(\enc[3]_i_3_n_0 ),
        .O(p_0_in[1]));
  LUT5 #(
    .INIT(32'h00007E81)) 
    \enc[2]_i_1 
       (.I0(Q[0]),
        .I1(\enc[3]_i_4_n_0 ),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\enc[3]_i_3_n_0 ),
        .O(p_0_in[2]));
  LUT5 #(
    .INIT(32'hCCDDCFCC)) 
    \enc[3]_i_1 
       (.I0(lastB),
        .I1(\enc[3]_i_3_n_0 ),
        .I2(lastA),
        .I3(A_IBUF),
        .I4(B_IBUF),
        .O(\enc[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFEAAAFFFEAAAB)) 
    \enc[3]_i_2 
       (.I0(\enc[3]_i_3_n_0 ),
        .I1(Q[1]),
        .I2(\enc[3]_i_4_n_0 ),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(p_0_in[3]));
  LUT3 #(
    .INIT(8'hA8)) 
    \enc[3]_i_3 
       (.I0(PB_IBUF),
        .I1(pb_press_type_w[1]),
        .I2(pb_press_type_w[0]),
        .O(\enc[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \enc[3]_i_4 
       (.I0(lastA),
        .I1(A_IBUF),
        .I2(B_IBUF),
        .O(\enc[3]_i_4_n_0 ));
  FDCE \enc_reg[0] 
       (.C(CLK),
        .CE(\enc[3]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(\enc[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE \enc_reg[1] 
       (.C(CLK),
        .CE(\enc[3]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(p_0_in[1]),
        .Q(Q[1]));
  FDCE \enc_reg[2] 
       (.C(CLK),
        .CE(\enc[3]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(p_0_in[2]),
        .Q(Q[2]));
  FDPE \enc_reg[3] 
       (.C(CLK),
        .CE(\enc[3]_i_1_n_0 ),
        .D(p_0_in[3]),
        .PRE(btnC_IBUF),
        .Q(Q[3]));
  FDCE lastA_reg
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(A_IBUF),
        .Q(lastA));
  FDCE lastB_reg
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(B_IBUF),
        .Q(lastB));
  LUT2 #(
    .INIT(4'h2)) 
    \last_auto_state[1]_i_2 
       (.I0(pb_press_type_w[1]),
        .I1(pb_press_type_w[0]),
        .O(\pb_press_type_reg[1]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pb_cnt0_carry
       (.CI(\<const0> ),
        .CO({pb_cnt0_carry_n_0,NLW_pb_cnt0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\pb_cnt_reg_n_0_[0] ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(pb_cnt0[4:1]),
        .S({\pb_cnt_reg_n_0_[4] ,\pb_cnt_reg_n_0_[3] ,\pb_cnt_reg_n_0_[2] ,\pb_cnt_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pb_cnt0_carry__0
       (.CI(pb_cnt0_carry_n_0),
        .CO({pb_cnt0_carry__0_n_0,NLW_pb_cnt0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(pb_cnt0[8:5]),
        .S({\pb_cnt_reg_n_0_[8] ,\pb_cnt_reg_n_0_[7] ,\pb_cnt_reg_n_0_[6] ,\pb_cnt_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pb_cnt0_carry__1
       (.CI(pb_cnt0_carry__0_n_0),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(pb_cnt0[11:9]),
        .S({\<const0> ,\pb_cnt_reg_n_0_[11] ,\pb_cnt_reg_n_0_[10] ,\pb_cnt_reg_n_0_[9] }));
  LUT5 #(
    .INIT(32'h001F1F1F)) 
    \pb_cnt[0]_i_1 
       (.I0(pb_press_type_w[0]),
        .I1(pb_press_type_w[1]),
        .I2(PB_IBUF),
        .I3(\pb_cnt[11]_i_3_n_0 ),
        .I4(\pb_cnt_reg_n_0_[0] ),
        .O(\pb_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000FFFFF00022222)) 
    \pb_cnt[10]_i_1 
       (.I0(\pb_cnt_reg_n_0_[0] ),
        .I1(\pb_cnt[11]_i_3_n_0 ),
        .I2(pb_press_type_w[0]),
        .I3(pb_press_type_w[1]),
        .I4(PB_IBUF),
        .I5(pb_cnt0[10]),
        .O(\pb_cnt[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFD)) 
    \pb_cnt[11]_i_1 
       (.I0(PB_IBUF),
        .I1(pb_press_type_w[1]),
        .I2(pb_press_type_w[0]),
        .O(pb_cnt));
  LUT6 #(
    .INIT(64'h000FFFFF00022222)) 
    \pb_cnt[11]_i_2 
       (.I0(\pb_cnt_reg_n_0_[0] ),
        .I1(\pb_cnt[11]_i_3_n_0 ),
        .I2(pb_press_type_w[0]),
        .I3(pb_press_type_w[1]),
        .I4(PB_IBUF),
        .I5(pb_cnt0[11]),
        .O(\pb_cnt[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FFFFFFF)) 
    \pb_cnt[11]_i_3 
       (.I0(\pb_cnt_reg_n_0_[11] ),
        .I1(\pb_cnt_reg_n_0_[10] ),
        .I2(\pb_cnt_reg_n_0_[2] ),
        .I3(\pb_cnt_reg_n_0_[1] ),
        .I4(\pb_cnt_reg_n_0_[6] ),
        .I5(\pb_cnt[11]_i_4_n_0 ),
        .O(\pb_cnt[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \pb_cnt[11]_i_4 
       (.I0(\pb_cnt_reg_n_0_[5] ),
        .I1(\pb_cnt_reg_n_0_[4] ),
        .I2(\pb_cnt_reg_n_0_[3] ),
        .I3(\pb_cnt_reg_n_0_[9] ),
        .I4(\pb_cnt_reg_n_0_[8] ),
        .I5(\pb_cnt_reg_n_0_[7] ),
        .O(\pb_cnt[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000FFFFF00022222)) 
    \pb_cnt[1]_i_1 
       (.I0(\pb_cnt_reg_n_0_[0] ),
        .I1(\pb_cnt[11]_i_3_n_0 ),
        .I2(pb_press_type_w[0]),
        .I3(pb_press_type_w[1]),
        .I4(PB_IBUF),
        .I5(pb_cnt0[1]),
        .O(\pb_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000FFFFF00022222)) 
    \pb_cnt[2]_i_1 
       (.I0(\pb_cnt_reg_n_0_[0] ),
        .I1(\pb_cnt[11]_i_3_n_0 ),
        .I2(pb_press_type_w[0]),
        .I3(pb_press_type_w[1]),
        .I4(PB_IBUF),
        .I5(pb_cnt0[2]),
        .O(\pb_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000FFFFF00022222)) 
    \pb_cnt[3]_i_1 
       (.I0(\pb_cnt_reg_n_0_[0] ),
        .I1(\pb_cnt[11]_i_3_n_0 ),
        .I2(pb_press_type_w[0]),
        .I3(pb_press_type_w[1]),
        .I4(PB_IBUF),
        .I5(pb_cnt0[3]),
        .O(\pb_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000FFFFF00022222)) 
    \pb_cnt[4]_i_1 
       (.I0(\pb_cnt_reg_n_0_[0] ),
        .I1(\pb_cnt[11]_i_3_n_0 ),
        .I2(pb_press_type_w[0]),
        .I3(pb_press_type_w[1]),
        .I4(PB_IBUF),
        .I5(pb_cnt0[4]),
        .O(\pb_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000FFFFF00022222)) 
    \pb_cnt[5]_i_1 
       (.I0(\pb_cnt_reg_n_0_[0] ),
        .I1(\pb_cnt[11]_i_3_n_0 ),
        .I2(pb_press_type_w[0]),
        .I3(pb_press_type_w[1]),
        .I4(PB_IBUF),
        .I5(pb_cnt0[5]),
        .O(\pb_cnt[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000FFFFF00022222)) 
    \pb_cnt[6]_i_1 
       (.I0(\pb_cnt_reg_n_0_[0] ),
        .I1(\pb_cnt[11]_i_3_n_0 ),
        .I2(pb_press_type_w[0]),
        .I3(pb_press_type_w[1]),
        .I4(PB_IBUF),
        .I5(pb_cnt0[6]),
        .O(\pb_cnt[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000FFFFF00022222)) 
    \pb_cnt[7]_i_1 
       (.I0(\pb_cnt_reg_n_0_[0] ),
        .I1(\pb_cnt[11]_i_3_n_0 ),
        .I2(pb_press_type_w[0]),
        .I3(pb_press_type_w[1]),
        .I4(PB_IBUF),
        .I5(pb_cnt0[7]),
        .O(\pb_cnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000FFFFF00022222)) 
    \pb_cnt[8]_i_1 
       (.I0(\pb_cnt_reg_n_0_[0] ),
        .I1(\pb_cnt[11]_i_3_n_0 ),
        .I2(pb_press_type_w[0]),
        .I3(pb_press_type_w[1]),
        .I4(PB_IBUF),
        .I5(pb_cnt0[8]),
        .O(\pb_cnt[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000FFFFF00022222)) 
    \pb_cnt[9]_i_1 
       (.I0(\pb_cnt_reg_n_0_[0] ),
        .I1(\pb_cnt[11]_i_3_n_0 ),
        .I2(pb_press_type_w[0]),
        .I3(pb_press_type_w[1]),
        .I4(PB_IBUF),
        .I5(pb_cnt0[9]),
        .O(\pb_cnt[9]_i_1_n_0 ));
  FDCE \pb_cnt_reg[0] 
       (.C(CLK),
        .CE(pb_cnt),
        .CLR(btnC_IBUF),
        .D(\pb_cnt[0]_i_1_n_0 ),
        .Q(\pb_cnt_reg_n_0_[0] ));
  FDCE \pb_cnt_reg[10] 
       (.C(CLK),
        .CE(pb_cnt),
        .CLR(btnC_IBUF),
        .D(\pb_cnt[10]_i_1_n_0 ),
        .Q(\pb_cnt_reg_n_0_[10] ));
  FDCE \pb_cnt_reg[11] 
       (.C(CLK),
        .CE(pb_cnt),
        .CLR(btnC_IBUF),
        .D(\pb_cnt[11]_i_2_n_0 ),
        .Q(\pb_cnt_reg_n_0_[11] ));
  FDCE \pb_cnt_reg[1] 
       (.C(CLK),
        .CE(pb_cnt),
        .CLR(btnC_IBUF),
        .D(\pb_cnt[1]_i_1_n_0 ),
        .Q(\pb_cnt_reg_n_0_[1] ));
  FDCE \pb_cnt_reg[2] 
       (.C(CLK),
        .CE(pb_cnt),
        .CLR(btnC_IBUF),
        .D(\pb_cnt[2]_i_1_n_0 ),
        .Q(\pb_cnt_reg_n_0_[2] ));
  FDCE \pb_cnt_reg[3] 
       (.C(CLK),
        .CE(pb_cnt),
        .CLR(btnC_IBUF),
        .D(\pb_cnt[3]_i_1_n_0 ),
        .Q(\pb_cnt_reg_n_0_[3] ));
  FDCE \pb_cnt_reg[4] 
       (.C(CLK),
        .CE(pb_cnt),
        .CLR(btnC_IBUF),
        .D(\pb_cnt[4]_i_1_n_0 ),
        .Q(\pb_cnt_reg_n_0_[4] ));
  FDCE \pb_cnt_reg[5] 
       (.C(CLK),
        .CE(pb_cnt),
        .CLR(btnC_IBUF),
        .D(\pb_cnt[5]_i_1_n_0 ),
        .Q(\pb_cnt_reg_n_0_[5] ));
  FDCE \pb_cnt_reg[6] 
       (.C(CLK),
        .CE(pb_cnt),
        .CLR(btnC_IBUF),
        .D(\pb_cnt[6]_i_1_n_0 ),
        .Q(\pb_cnt_reg_n_0_[6] ));
  FDCE \pb_cnt_reg[7] 
       (.C(CLK),
        .CE(pb_cnt),
        .CLR(btnC_IBUF),
        .D(\pb_cnt[7]_i_1_n_0 ),
        .Q(\pb_cnt_reg_n_0_[7] ));
  FDCE \pb_cnt_reg[8] 
       (.C(CLK),
        .CE(pb_cnt),
        .CLR(btnC_IBUF),
        .D(\pb_cnt[8]_i_1_n_0 ),
        .Q(\pb_cnt_reg_n_0_[8] ));
  FDCE \pb_cnt_reg[9] 
       (.C(CLK),
        .CE(pb_cnt),
        .CLR(btnC_IBUF),
        .D(\pb_cnt[9]_i_1_n_0 ),
        .Q(\pb_cnt_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0F10)) 
    \pb_press_type[0]_i_1 
       (.I0(pb_press_type_w[1]),
        .I1(\pb_press_type[0]_i_2_n_0 ),
        .I2(PB_IBUF),
        .I3(pb_press_type_w[0]),
        .O(\pb_press_type[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00CE00CECECE0ECE)) 
    \pb_press_type[0]_i_2 
       (.I0(\pb_press_type[0]_i_3_n_0 ),
        .I1(\pb_press_type[1]_i_2_n_0 ),
        .I2(\pb_press_type[0]_i_4_n_0 ),
        .I3(\pb_cnt_reg_n_0_[11] ),
        .I4(\pb_press_type[0]_i_5_n_0 ),
        .I5(\pb_cnt_reg_n_0_[10] ),
        .O(\pb_press_type[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0001111111111111)) 
    \pb_press_type[0]_i_3 
       (.I0(\pb_cnt_reg_n_0_[7] ),
        .I1(\pb_cnt_reg_n_0_[8] ),
        .I2(\pb_cnt_reg_n_0_[2] ),
        .I3(\pb_cnt_reg_n_0_[1] ),
        .I4(\pb_cnt_reg_n_0_[5] ),
        .I5(\pb_cnt_reg_n_0_[4] ),
        .O(\pb_press_type[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEAAA)) 
    \pb_press_type[0]_i_4 
       (.I0(\pb_cnt_reg_n_0_[6] ),
        .I1(\pb_cnt_reg_n_0_[5] ),
        .I2(\pb_cnt_reg_n_0_[4] ),
        .I3(\pb_cnt_reg_n_0_[3] ),
        .O(\pb_press_type[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \pb_press_type[0]_i_5 
       (.I0(\pb_cnt_reg_n_0_[7] ),
        .I1(\pb_cnt_reg_n_0_[8] ),
        .I2(\pb_cnt_reg_n_0_[9] ),
        .O(\pb_press_type[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0F40)) 
    \pb_press_type[1]_i_1 
       (.I0(pb_press_type_w[0]),
        .I1(\pb_press_type[1]_i_2_n_0 ),
        .I2(PB_IBUF),
        .I3(pb_press_type_w[1]),
        .O(\pb_press_type[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \pb_press_type[1]_i_2 
       (.I0(\pb_press_type[1]_i_3_n_0 ),
        .I1(\pb_cnt_reg_n_0_[11] ),
        .I2(\pb_cnt_reg_n_0_[10] ),
        .I3(\pb_cnt_reg_n_0_[9] ),
        .O(\pb_press_type[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFE000000)) 
    \pb_press_type[1]_i_3 
       (.I0(\pb_cnt_reg_n_0_[5] ),
        .I1(\pb_cnt_reg_n_0_[6] ),
        .I2(\pb_cnt_reg_n_0_[4] ),
        .I3(\pb_cnt_reg_n_0_[7] ),
        .I4(\pb_cnt_reg_n_0_[8] ),
        .O(\pb_press_type[1]_i_3_n_0 ));
  FDCE \pb_press_type_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(\pb_press_type[0]_i_1_n_0 ),
        .Q(pb_press_type_w[0]));
  FDCE \pb_press_type_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(\pb_press_type[1]_i_1_n_0 ),
        .Q(pb_press_type_w[1]));
endmodule

module seven_seg
   (an_OBUF,
    Q,
    CLK,
    btnC_IBUF);
  output [3:0]an_OBUF;
  output [1:0]Q;
  input CLK;
  input btnC_IBUF;

  wire \<const1> ;
  wire CLK;
  wire [1:0]Q;
  wire [3:0]an_OBUF;
  wire btnC_IBUF;
  wire \multiplexing_counter[0]_i_1_n_0 ;
  wire \multiplexing_counter[1]_i_1_n_0 ;

  VCC VCC
       (.P(\<const1> ));
  LUT2 #(
    .INIT(4'hE)) 
    \an_OBUF[0]_inst_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(an_OBUF[0]));
  LUT2 #(
    .INIT(4'hB)) 
    \an_OBUF[1]_inst_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(an_OBUF[1]));
  LUT2 #(
    .INIT(4'hB)) 
    \an_OBUF[2]_inst_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(an_OBUF[2]));
  LUT2 #(
    .INIT(4'h7)) 
    \an_OBUF[3]_inst_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(an_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \multiplexing_counter[0]_i_1 
       (.I0(Q[0]),
        .O(\multiplexing_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \multiplexing_counter[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\multiplexing_counter[1]_i_1_n_0 ));
  FDCE \multiplexing_counter_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(\multiplexing_counter[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE \multiplexing_counter_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(\multiplexing_counter[1]_i_1_n_0 ),
        .Q(Q[1]));
endmodule

module spi_flash
   (FLASH_MOSI_OBUF,
    spi_flash_ready_w,
    FLASH_CS_OBUF,
    uio_out_w,
    Q,
    CLK,
    btnC_IBUF,
    spi_flash_valid_w,
    spi_luks_sclk_w,
    D,
    \mem_data_reg[0]_0 );
  output FLASH_MOSI_OBUF;
  output spi_flash_ready_w;
  output FLASH_CS_OBUF;
  output [0:0]uio_out_w;
  output [7:0]Q;
  input CLK;
  input btnC_IBUF;
  input spi_flash_valid_w;
  input spi_luks_sclk_w;
  input [15:0]D;
  input [0:0]\mem_data_reg[0]_0 ;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire [15:0]D;
  wire FLASH_CS_OBUF;
  wire FLASH_MOSI_OBUF;
  wire \FSM_sequential_state[0]_i_1__0_n_0 ;
  wire \FSM_sequential_state[1]_i_1__0_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_3_n_0 ;
  wire \FSM_sequential_state_reg_n_0_[1] ;
  wire [7:0]Q;
  wire \address[23]_i_1_n_0 ;
  wire \address_reg_n_0_[10] ;
  wire \address_reg_n_0_[11] ;
  wire \address_reg_n_0_[12] ;
  wire \address_reg_n_0_[13] ;
  wire \address_reg_n_0_[14] ;
  wire \address_reg_n_0_[15] ;
  wire \address_reg_n_0_[16] ;
  wire \address_reg_n_0_[17] ;
  wire \address_reg_n_0_[18] ;
  wire \address_reg_n_0_[19] ;
  wire \address_reg_n_0_[20] ;
  wire \address_reg_n_0_[21] ;
  wire \address_reg_n_0_[22] ;
  wire \address_reg_n_0_[23] ;
  wire \address_reg_n_0_[8] ;
  wire \address_reg_n_0_[9] ;
  wire [6:0]bit_counter;
  wire \bit_counter[3]_i_2_n_0 ;
  wire \bit_counter[3]_i_3_n_0 ;
  wire \bit_counter[4]_i_1__0_n_0 ;
  wire \bit_counter[6]_i_1_n_0 ;
  wire \bit_counter[6]_i_3_n_0 ;
  wire \bit_counter[6]_i_4_n_0 ;
  wire \bit_counter_reg_n_0_[0] ;
  wire \bit_counter_reg_n_0_[1] ;
  wire \bit_counter_reg_n_0_[2] ;
  wire \bit_counter_reg_n_0_[3] ;
  wire \bit_counter_reg_n_0_[4] ;
  wire \bit_counter_reg_n_0_[5] ;
  wire \bit_counter_reg_n_0_[6] ;
  wire btnC_IBUF;
  wire cs_i_1_n_0;
  wire \mem_data[7]_i_1_n_0 ;
  wire \mem_data[7]_i_2_n_0 ;
  wire [0:0]\mem_data_reg[0]_0 ;
  wire mem_ready_i_1_n_0;
  wire mosi_i_1_n_0;
  wire mosi_i_2_n_0;
  wire mosi_i_3_n_0;
  wire mosi_i_4_n_0;
  wire mosi_i_5_n_0;
  wire mosi_i_6_n_0;
  wire mosi_i_8_n_0;
  wire mosi_i_9_n_0;
  wire mosi_reg_i_7_n_0;
  wire sclk_i_1_n_0;
  wire spi_flash_ready_w;
  wire spi_flash_sclk_w;
  wire spi_flash_valid_w;
  wire spi_luks_sclk_w;
  wire [0:0]state__0;
  wire [0:0]uio_out_w;

  LUT6 #(
    .INIT(64'hDBDBCBDB5A5A4A5A)) 
    \FSM_sequential_state[0]_i_1__0 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(\FSM_sequential_state_reg_n_0_[1] ),
        .I2(state__0),
        .I3(spi_flash_sclk_w),
        .I4(\FSM_sequential_state[1]_i_3_n_0 ),
        .I5(spi_flash_valid_w),
        .O(\FSM_sequential_state[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hECECFCEC6C6C7C6C)) 
    \FSM_sequential_state[1]_i_1__0 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(\FSM_sequential_state_reg_n_0_[1] ),
        .I2(state__0),
        .I3(spi_flash_sclk_w),
        .I4(\FSM_sequential_state[1]_i_3_n_0 ),
        .I5(spi_flash_valid_w),
        .O(\FSM_sequential_state[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h40404040404040FF)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(spi_flash_valid_w),
        .I1(state__0),
        .I2(\FSM_sequential_state_reg_n_0_[1] ),
        .I3(\bit_counter_reg_n_0_[3] ),
        .I4(\bit_counter[3]_i_3_n_0 ),
        .I5(\mem_data[7]_i_2_n_0 ),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(\bit_counter_reg_n_0_[6] ),
        .I1(\bit_counter_reg_n_0_[5] ),
        .I2(\bit_counter_reg_n_0_[4] ),
        .I3(\bit_counter[6]_i_4_n_0 ),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "SEND_CMD:01,READ_DATA:10,IDLE:00,DATA_READY:11" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(\FSM_sequential_state[0]_i_1__0_n_0 ),
        .Q(state__0));
  (* FSM_ENCODED_STATES = "SEND_CMD:01,READ_DATA:10,IDLE:00,DATA_READY:11" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(\FSM_sequential_state[1]_i_1__0_n_0 ),
        .Q(\FSM_sequential_state_reg_n_0_[1] ));
  GND GND
       (.G(\<const0> ));
  LUT3 #(
    .INIT(8'hB8)) 
    STARTUPE2_inst_i_1
       (.I0(spi_luks_sclk_w),
        .I1(FLASH_CS_OBUF),
        .I2(spi_flash_sclk_w),
        .O(uio_out_w));
  VCC VCC
       (.P(\<const1> ));
  LUT4 #(
    .INIT(16'h0010)) 
    \address[23]_i_1 
       (.I0(\FSM_sequential_state_reg_n_0_[1] ),
        .I1(state__0),
        .I2(spi_flash_valid_w),
        .I3(btnC_IBUF),
        .O(\address[23]_i_1_n_0 ));
  FDRE \address_reg[10] 
       (.C(CLK),
        .CE(\address[23]_i_1_n_0 ),
        .D(D[2]),
        .Q(\address_reg_n_0_[10] ),
        .R(\<const0> ));
  FDRE \address_reg[11] 
       (.C(CLK),
        .CE(\address[23]_i_1_n_0 ),
        .D(D[3]),
        .Q(\address_reg_n_0_[11] ),
        .R(\<const0> ));
  FDRE \address_reg[12] 
       (.C(CLK),
        .CE(\address[23]_i_1_n_0 ),
        .D(D[4]),
        .Q(\address_reg_n_0_[12] ),
        .R(\<const0> ));
  FDRE \address_reg[13] 
       (.C(CLK),
        .CE(\address[23]_i_1_n_0 ),
        .D(D[5]),
        .Q(\address_reg_n_0_[13] ),
        .R(\<const0> ));
  FDRE \address_reg[14] 
       (.C(CLK),
        .CE(\address[23]_i_1_n_0 ),
        .D(D[6]),
        .Q(\address_reg_n_0_[14] ),
        .R(\<const0> ));
  FDRE \address_reg[15] 
       (.C(CLK),
        .CE(\address[23]_i_1_n_0 ),
        .D(D[7]),
        .Q(\address_reg_n_0_[15] ),
        .R(\<const0> ));
  FDRE \address_reg[16] 
       (.C(CLK),
        .CE(\address[23]_i_1_n_0 ),
        .D(D[8]),
        .Q(\address_reg_n_0_[16] ),
        .R(\<const0> ));
  FDRE \address_reg[17] 
       (.C(CLK),
        .CE(\address[23]_i_1_n_0 ),
        .D(D[9]),
        .Q(\address_reg_n_0_[17] ),
        .R(\<const0> ));
  FDRE \address_reg[18] 
       (.C(CLK),
        .CE(\address[23]_i_1_n_0 ),
        .D(D[10]),
        .Q(\address_reg_n_0_[18] ),
        .R(\<const0> ));
  FDRE \address_reg[19] 
       (.C(CLK),
        .CE(\address[23]_i_1_n_0 ),
        .D(D[11]),
        .Q(\address_reg_n_0_[19] ),
        .R(\<const0> ));
  FDRE \address_reg[20] 
       (.C(CLK),
        .CE(\address[23]_i_1_n_0 ),
        .D(D[12]),
        .Q(\address_reg_n_0_[20] ),
        .R(\<const0> ));
  FDRE \address_reg[21] 
       (.C(CLK),
        .CE(\address[23]_i_1_n_0 ),
        .D(D[13]),
        .Q(\address_reg_n_0_[21] ),
        .R(\<const0> ));
  FDRE \address_reg[22] 
       (.C(CLK),
        .CE(\address[23]_i_1_n_0 ),
        .D(D[14]),
        .Q(\address_reg_n_0_[22] ),
        .R(\<const0> ));
  FDRE \address_reg[23] 
       (.C(CLK),
        .CE(\address[23]_i_1_n_0 ),
        .D(D[15]),
        .Q(\address_reg_n_0_[23] ),
        .R(\<const0> ));
  FDRE \address_reg[8] 
       (.C(CLK),
        .CE(\address[23]_i_1_n_0 ),
        .D(D[0]),
        .Q(\address_reg_n_0_[8] ),
        .R(\<const0> ));
  FDRE \address_reg[9] 
       (.C(CLK),
        .CE(\address[23]_i_1_n_0 ),
        .D(D[1]),
        .Q(\address_reg_n_0_[9] ),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h03AF)) 
    \bit_counter[0]_i_1 
       (.I0(\FSM_sequential_state[1]_i_3_n_0 ),
        .I1(\FSM_sequential_state_reg_n_0_[1] ),
        .I2(state__0),
        .I3(\bit_counter_reg_n_0_[0] ),
        .O(bit_counter[0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h40045FF5)) 
    \bit_counter[1]_i_1 
       (.I0(\FSM_sequential_state_reg_n_0_[1] ),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(\bit_counter_reg_n_0_[0] ),
        .I3(\bit_counter_reg_n_0_[1] ),
        .I4(state__0),
        .O(bit_counter[1]));
  LUT6 #(
    .INIT(64'h4CC000045FFFF555)) 
    \bit_counter[2]_i_1 
       (.I0(\FSM_sequential_state_reg_n_0_[1] ),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(\bit_counter_reg_n_0_[1] ),
        .I3(\bit_counter_reg_n_0_[0] ),
        .I4(\bit_counter_reg_n_0_[2] ),
        .I5(state__0),
        .O(bit_counter[2]));
  LUT6 #(
    .INIT(64'h5D0000D55DD55DD5)) 
    \bit_counter[3]_i_1 
       (.I0(state__0),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(\bit_counter[3]_i_2_n_0 ),
        .I3(\bit_counter_reg_n_0_[3] ),
        .I4(\bit_counter[3]_i_3_n_0 ),
        .I5(\FSM_sequential_state_reg_n_0_[1] ),
        .O(bit_counter[3]));
  LUT3 #(
    .INIT(8'h01)) 
    \bit_counter[3]_i_2 
       (.I0(\bit_counter_reg_n_0_[2] ),
        .I1(\bit_counter_reg_n_0_[0] ),
        .I2(\bit_counter_reg_n_0_[1] ),
        .O(\bit_counter[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \bit_counter[3]_i_3 
       (.I0(\bit_counter_reg_n_0_[0] ),
        .I1(\bit_counter_reg_n_0_[1] ),
        .I2(\bit_counter_reg_n_0_[2] ),
        .O(\bit_counter[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5500005455555555)) 
    \bit_counter[4]_i_1__0 
       (.I0(\FSM_sequential_state_reg_n_0_[1] ),
        .I1(\bit_counter_reg_n_0_[5] ),
        .I2(\bit_counter_reg_n_0_[6] ),
        .I3(\bit_counter[6]_i_4_n_0 ),
        .I4(\bit_counter_reg_n_0_[4] ),
        .I5(state__0),
        .O(\bit_counter[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hAAA00008)) 
    \bit_counter[5]_i_1 
       (.I0(state__0),
        .I1(\bit_counter_reg_n_0_[6] ),
        .I2(\bit_counter_reg_n_0_[4] ),
        .I3(\bit_counter[6]_i_4_n_0 ),
        .I4(\bit_counter_reg_n_0_[5] ),
        .O(bit_counter[5]));
  LUT6 #(
    .INIT(64'h000000005D5F5D55)) 
    \bit_counter[6]_i_1 
       (.I0(\bit_counter[6]_i_3_n_0 ),
        .I1(spi_flash_sclk_w),
        .I2(\FSM_sequential_state_reg_n_0_[1] ),
        .I3(state__0),
        .I4(spi_flash_valid_w),
        .I5(btnC_IBUF),
        .O(\bit_counter[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hAAA80000)) 
    \bit_counter[6]_i_2 
       (.I0(state__0),
        .I1(\bit_counter[6]_i_4_n_0 ),
        .I2(\bit_counter_reg_n_0_[4] ),
        .I3(\bit_counter_reg_n_0_[5] ),
        .I4(\bit_counter_reg_n_0_[6] ),
        .O(bit_counter[6]));
  LUT2 #(
    .INIT(4'hE)) 
    \bit_counter[6]_i_3 
       (.I0(\bit_counter_reg_n_0_[3] ),
        .I1(\mem_data[7]_i_2_n_0 ),
        .O(\bit_counter[6]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bit_counter[6]_i_4 
       (.I0(\bit_counter_reg_n_0_[3] ),
        .I1(\bit_counter_reg_n_0_[1] ),
        .I2(\bit_counter_reg_n_0_[0] ),
        .I3(\bit_counter_reg_n_0_[2] ),
        .O(\bit_counter[6]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[0] 
       (.C(CLK),
        .CE(\bit_counter[6]_i_1_n_0 ),
        .D(bit_counter[0]),
        .Q(\bit_counter_reg_n_0_[0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[1] 
       (.C(CLK),
        .CE(\bit_counter[6]_i_1_n_0 ),
        .D(bit_counter[1]),
        .Q(\bit_counter_reg_n_0_[1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[2] 
       (.C(CLK),
        .CE(\bit_counter[6]_i_1_n_0 ),
        .D(bit_counter[2]),
        .Q(\bit_counter_reg_n_0_[2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[3] 
       (.C(CLK),
        .CE(\bit_counter[6]_i_1_n_0 ),
        .D(bit_counter[3]),
        .Q(\bit_counter_reg_n_0_[3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[4] 
       (.C(CLK),
        .CE(\bit_counter[6]_i_1_n_0 ),
        .D(\bit_counter[4]_i_1__0_n_0 ),
        .Q(\bit_counter_reg_n_0_[4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[5] 
       (.C(CLK),
        .CE(\bit_counter[6]_i_1_n_0 ),
        .D(bit_counter[5]),
        .Q(\bit_counter_reg_n_0_[5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[6] 
       (.C(CLK),
        .CE(\bit_counter[6]_i_1_n_0 ),
        .D(bit_counter[6]),
        .Q(\bit_counter_reg_n_0_[6] ),
        .R(\<const0> ));
  LUT4 #(
    .INIT(16'hFD40)) 
    cs_i_1
       (.I0(spi_flash_valid_w),
        .I1(state__0),
        .I2(\FSM_sequential_state_reg_n_0_[1] ),
        .I3(FLASH_CS_OBUF),
        .O(cs_i_1_n_0));
  FDPE cs_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(cs_i_1_n_0),
        .PRE(btnC_IBUF),
        .Q(FLASH_CS_OBUF));
  LUT2 #(
    .INIT(4'h1)) 
    \mem_data[7]_i_1 
       (.I0(\mem_data[7]_i_2_n_0 ),
        .I1(\bit_counter_reg_n_0_[3] ),
        .O(\mem_data[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \mem_data[7]_i_2 
       (.I0(\bit_counter_reg_n_0_[6] ),
        .I1(\bit_counter_reg_n_0_[5] ),
        .I2(\bit_counter_reg_n_0_[4] ),
        .I3(state__0),
        .I4(\FSM_sequential_state_reg_n_0_[1] ),
        .I5(spi_flash_sclk_w),
        .O(\mem_data[7]_i_2_n_0 ));
  FDCE \mem_data_reg[0] 
       (.C(CLK),
        .CE(\mem_data[7]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(\mem_data_reg[0]_0 ),
        .Q(Q[0]));
  FDCE \mem_data_reg[1] 
       (.C(CLK),
        .CE(\mem_data[7]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(Q[0]),
        .Q(Q[1]));
  FDCE \mem_data_reg[2] 
       (.C(CLK),
        .CE(\mem_data[7]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(Q[1]),
        .Q(Q[2]));
  FDCE \mem_data_reg[3] 
       (.C(CLK),
        .CE(\mem_data[7]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(Q[2]),
        .Q(Q[3]));
  FDCE \mem_data_reg[4] 
       (.C(CLK),
        .CE(\mem_data[7]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(Q[3]),
        .Q(Q[4]));
  FDCE \mem_data_reg[5] 
       (.C(CLK),
        .CE(\mem_data[7]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(Q[4]),
        .Q(Q[5]));
  FDCE \mem_data_reg[6] 
       (.C(CLK),
        .CE(\mem_data[7]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(Q[5]),
        .Q(Q[6]));
  FDCE \mem_data_reg[7] 
       (.C(CLK),
        .CE(\mem_data[7]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(Q[6]),
        .Q(Q[7]));
  LUT4 #(
    .INIT(16'hBFB0)) 
    mem_ready_i_1
       (.I0(spi_flash_valid_w),
        .I1(state__0),
        .I2(\FSM_sequential_state[1]_i_2_n_0 ),
        .I3(spi_flash_ready_w),
        .O(mem_ready_i_1_n_0));
  FDCE mem_ready_reg
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(mem_ready_i_1_n_0),
        .Q(spi_flash_ready_w));
  LUT3 #(
    .INIT(8'h08)) 
    mosi_i_1
       (.I0(spi_flash_sclk_w),
        .I1(state__0),
        .I2(\FSM_sequential_state_reg_n_0_[1] ),
        .O(mosi_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFEA002A002A002A)) 
    mosi_i_2
       (.I0(mosi_i_3_n_0),
        .I1(\bit_counter_reg_n_0_[3] ),
        .I2(\bit_counter_reg_n_0_[4] ),
        .I3(mosi_i_4_n_0),
        .I4(\bit_counter_reg_n_0_[2] ),
        .I5(\bit_counter_reg_n_0_[1] ),
        .O(mosi_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFE200FF00E20000)) 
    mosi_i_3
       (.I0(mosi_i_5_n_0),
        .I1(\bit_counter_reg_n_0_[2] ),
        .I2(mosi_i_6_n_0),
        .I3(\bit_counter_reg_n_0_[4] ),
        .I4(\bit_counter_reg_n_0_[3] ),
        .I5(mosi_reg_i_7_n_0),
        .O(mosi_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    mosi_i_4
       (.I0(\bit_counter_reg_n_0_[6] ),
        .I1(\bit_counter_reg_n_0_[5] ),
        .O(mosi_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_i_5
       (.I0(\address_reg_n_0_[12] ),
        .I1(\address_reg_n_0_[13] ),
        .I2(\bit_counter_reg_n_0_[1] ),
        .I3(\address_reg_n_0_[14] ),
        .I4(\bit_counter_reg_n_0_[0] ),
        .I5(\address_reg_n_0_[15] ),
        .O(mosi_i_5_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_i_6
       (.I0(\address_reg_n_0_[8] ),
        .I1(\address_reg_n_0_[9] ),
        .I2(\bit_counter_reg_n_0_[1] ),
        .I3(\address_reg_n_0_[10] ),
        .I4(\bit_counter_reg_n_0_[0] ),
        .I5(\address_reg_n_0_[11] ),
        .O(mosi_i_6_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_i_8
       (.I0(\address_reg_n_0_[20] ),
        .I1(\address_reg_n_0_[21] ),
        .I2(\bit_counter_reg_n_0_[1] ),
        .I3(\address_reg_n_0_[22] ),
        .I4(\bit_counter_reg_n_0_[0] ),
        .I5(\address_reg_n_0_[23] ),
        .O(mosi_i_8_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_i_9
       (.I0(\address_reg_n_0_[16] ),
        .I1(\address_reg_n_0_[17] ),
        .I2(\bit_counter_reg_n_0_[1] ),
        .I3(\address_reg_n_0_[18] ),
        .I4(\bit_counter_reg_n_0_[0] ),
        .I5(\address_reg_n_0_[19] ),
        .O(mosi_i_9_n_0));
  FDCE mosi_reg
       (.C(CLK),
        .CE(mosi_i_1_n_0),
        .CLR(btnC_IBUF),
        .D(mosi_i_2_n_0),
        .Q(FLASH_MOSI_OBUF));
  MUXF7 mosi_reg_i_7
       (.I0(mosi_i_8_n_0),
        .I1(mosi_i_9_n_0),
        .O(mosi_reg_i_7_n_0),
        .S(\bit_counter_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'h96)) 
    sclk_i_1
       (.I0(state__0),
        .I1(\FSM_sequential_state_reg_n_0_[1] ),
        .I2(spi_flash_sclk_w),
        .O(sclk_i_1_n_0));
  FDCE sclk_reg
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(sclk_i_1_n_0),
        .Q(spi_flash_sclk_w));
endmodule

module spi_sensor
   (spi_luks_sclk_w,
    spi_luks_ready_w,
    CLK,
    btnC_IBUF,
    spi_luks_valid_w);
  output spi_luks_sclk_w;
  output spi_luks_ready_w;
  input CLK;
  input btnC_IBUF;
  input spi_luks_valid_w;

  wire \<const1> ;
  wire CLK;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_i_4_n_0 ;
  wire \FSM_sequential_state[2]_i_5_n_0 ;
  wire \FSM_sequential_state[2]_i_6_n_0 ;
  wire \FSM_sequential_state[2]_i_7_n_0 ;
  wire \FSM_sequential_state[2]_i_8_n_0 ;
  wire \FSM_sequential_state[2]_i_9_n_0 ;
  wire bit_counter;
  wire \bit_counter[0]_i_1__0_n_0 ;
  wire \bit_counter[1]_i_1__0_n_0 ;
  wire \bit_counter[2]_i_1__0_n_0 ;
  wire \bit_counter[3]_i_1__0_n_0 ;
  wire \bit_counter[4]_i_2_n_0 ;
  wire \bit_counter[4]_i_3_n_0 ;
  wire \bit_counter[4]_i_4_n_0 ;
  wire \bit_counter_reg_n_0_[0] ;
  wire \bit_counter_reg_n_0_[1] ;
  wire \bit_counter_reg_n_0_[2] ;
  wire \bit_counter_reg_n_0_[3] ;
  wire \bit_counter_reg_n_0_[4] ;
  wire btnC_IBUF;
  wire mem_ready_i_1__0_n_0;
  wire mem_ready_i_2_n_0;
  wire mem_ready_i_3_n_0;
  wire sclk_i_1__0_n_0;
  wire spi_luks_ready_w;
  wire spi_luks_sclk_w;
  wire spi_luks_valid_w;
  wire [2:0]state__0;

  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h00FF4F00)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state__0[1]),
        .I1(spi_luks_valid_w),
        .I2(state__0[2]),
        .I3(\FSM_sequential_state[2]_i_2_n_0 ),
        .I4(state__0[0]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h1F40)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state__0[2]),
        .I1(state__0[0]),
        .I2(\FSM_sequential_state[2]_i_2_n_0 ),
        .I3(state__0[1]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h10FF8800)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(spi_luks_valid_w),
        .I3(\FSM_sequential_state[2]_i_2_n_0 ),
        .I4(state__0[2]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FDFFFFFFFDFD)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(\FSM_sequential_state[2]_i_3_n_0 ),
        .I1(\FSM_sequential_state[2]_i_4_n_0 ),
        .I2(\FSM_sequential_state[2]_i_5_n_0 ),
        .I3(\bit_counter[4]_i_4_n_0 ),
        .I4(state__0[2]),
        .I5(spi_luks_valid_w),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFDFFFFFFFFFFFFFF)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(\FSM_sequential_state[2]_i_6_n_0 ),
        .I1(\bit_counter_reg_n_0_[4] ),
        .I2(\bit_counter_reg_n_0_[3] ),
        .I3(spi_luks_sclk_w),
        .I4(state__0[1]),
        .I5(state__0[0]),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(\bit_counter_reg_n_0_[4] ),
        .I1(state__0[1]),
        .I2(\bit_counter_reg_n_0_[3] ),
        .I3(\bit_counter_reg_n_0_[2] ),
        .I4(\FSM_sequential_state[2]_i_7_n_0 ),
        .I5(\FSM_sequential_state[2]_i_8_n_0 ),
        .O(\FSM_sequential_state[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \FSM_sequential_state[2]_i_5 
       (.I0(state__0[1]),
        .I1(\bit_counter_reg_n_0_[2] ),
        .I2(\bit_counter_reg_n_0_[0] ),
        .I3(\bit_counter_reg_n_0_[1] ),
        .I4(\FSM_sequential_state[2]_i_9_n_0 ),
        .O(\FSM_sequential_state[2]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_sequential_state[2]_i_6 
       (.I0(\bit_counter_reg_n_0_[2] ),
        .I1(\bit_counter_reg_n_0_[1] ),
        .I2(\bit_counter_reg_n_0_[0] ),
        .O(\FSM_sequential_state[2]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_state[2]_i_7 
       (.I0(\bit_counter_reg_n_0_[0] ),
        .I1(\bit_counter_reg_n_0_[1] ),
        .O(\FSM_sequential_state[2]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_state[2]_i_8 
       (.I0(spi_luks_sclk_w),
        .I1(state__0[0]),
        .O(\FSM_sequential_state[2]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[2]_i_9 
       (.I0(state__0[0]),
        .I1(spi_luks_sclk_w),
        .I2(\bit_counter_reg_n_0_[4] ),
        .I3(\bit_counter_reg_n_0_[3] ),
        .O(\FSM_sequential_state[2]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "START_CONVERSION:001,READ_ADC:010,TRAILING_ZEROES:011,DATA_READY:100,IDLE:000,iSTATE:101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state__0[0]));
  (* FSM_ENCODED_STATES = "START_CONVERSION:001,READ_ADC:010,TRAILING_ZEROES:011,DATA_READY:100,IDLE:000,iSTATE:101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state__0[1]));
  (* FSM_ENCODED_STATES = "START_CONVERSION:001,READ_ADC:010,TRAILING_ZEROES:011,DATA_READY:100,IDLE:000,iSTATE:101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state__0[2]));
  VCC VCC
       (.P(\<const1> ));
  LUT3 #(
    .INIT(8'h0E)) 
    \bit_counter[0]_i_1__0 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(\bit_counter_reg_n_0_[0] ),
        .O(\bit_counter[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h999F)) 
    \bit_counter[1]_i_1__0 
       (.I0(\bit_counter_reg_n_0_[0] ),
        .I1(\bit_counter_reg_n_0_[1] ),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .O(\bit_counter[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hF1F1F11F)) 
    \bit_counter[2]_i_1__0 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(\bit_counter_reg_n_0_[2] ),
        .I3(\bit_counter_reg_n_0_[1] ),
        .I4(\bit_counter_reg_n_0_[0] ),
        .O(\bit_counter[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hF1F1F1F1F1F1F11F)) 
    \bit_counter[3]_i_1__0 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(\bit_counter_reg_n_0_[3] ),
        .I3(\bit_counter_reg_n_0_[0] ),
        .I4(\bit_counter_reg_n_0_[1] ),
        .I5(\bit_counter_reg_n_0_[2] ),
        .O(\bit_counter[3]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h0000E22E)) 
    \bit_counter[4]_i_1 
       (.I0(\bit_counter[4]_i_3_n_0 ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(spi_luks_sclk_w),
        .I4(state__0[2]),
        .O(bit_counter));
  LUT6 #(
    .INIT(64'hAAAAAAA800000002)) 
    \bit_counter[4]_i_2 
       (.I0(\bit_counter[4]_i_4_n_0 ),
        .I1(\bit_counter_reg_n_0_[0] ),
        .I2(\bit_counter_reg_n_0_[1] ),
        .I3(\bit_counter_reg_n_0_[2] ),
        .I4(\bit_counter_reg_n_0_[3] ),
        .I5(\bit_counter_reg_n_0_[4] ),
        .O(\bit_counter[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hACACAC0CAC0CAC0C)) 
    \bit_counter[4]_i_3 
       (.I0(spi_luks_sclk_w),
        .I1(spi_luks_valid_w),
        .I2(state__0[0]),
        .I3(\bit_counter_reg_n_0_[4] ),
        .I4(\bit_counter_reg_n_0_[2] ),
        .I5(\bit_counter_reg_n_0_[3] ),
        .O(\bit_counter[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bit_counter[4]_i_4 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .O(\bit_counter[4]_i_4_n_0 ));
  FDCE \bit_counter_reg[0] 
       (.C(CLK),
        .CE(bit_counter),
        .CLR(btnC_IBUF),
        .D(\bit_counter[0]_i_1__0_n_0 ),
        .Q(\bit_counter_reg_n_0_[0] ));
  FDCE \bit_counter_reg[1] 
       (.C(CLK),
        .CE(bit_counter),
        .CLR(btnC_IBUF),
        .D(\bit_counter[1]_i_1__0_n_0 ),
        .Q(\bit_counter_reg_n_0_[1] ));
  FDCE \bit_counter_reg[2] 
       (.C(CLK),
        .CE(bit_counter),
        .CLR(btnC_IBUF),
        .D(\bit_counter[2]_i_1__0_n_0 ),
        .Q(\bit_counter_reg_n_0_[2] ));
  FDCE \bit_counter_reg[3] 
       (.C(CLK),
        .CE(bit_counter),
        .CLR(btnC_IBUF),
        .D(\bit_counter[3]_i_1__0_n_0 ),
        .Q(\bit_counter_reg_n_0_[3] ));
  FDCE \bit_counter_reg[4] 
       (.C(CLK),
        .CE(bit_counter),
        .CLR(btnC_IBUF),
        .D(\bit_counter[4]_i_2_n_0 ),
        .Q(\bit_counter_reg_n_0_[4] ));
  LUT5 #(
    .INIT(32'hE2FFE200)) 
    mem_ready_i_1__0
       (.I0(spi_luks_valid_w),
        .I1(state__0[0]),
        .I2(spi_luks_sclk_w),
        .I3(mem_ready_i_2_n_0),
        .I4(spi_luks_ready_w),
        .O(mem_ready_i_1__0_n_0));
  LUT5 #(
    .INIT(32'h03000050)) 
    mem_ready_i_2
       (.I0(spi_luks_valid_w),
        .I1(mem_ready_i_3_n_0),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(mem_ready_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    mem_ready_i_3
       (.I0(spi_luks_sclk_w),
        .I1(\bit_counter_reg_n_0_[3] ),
        .I2(\bit_counter_reg_n_0_[4] ),
        .I3(\bit_counter_reg_n_0_[0] ),
        .I4(\bit_counter_reg_n_0_[1] ),
        .I5(\bit_counter_reg_n_0_[2] ),
        .O(mem_ready_i_3_n_0));
  FDCE mem_ready_reg
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(mem_ready_i_1__0_n_0),
        .Q(spi_luks_ready_w));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hAB54)) 
    sclk_i_1__0
       (.I0(state__0[2]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(spi_luks_sclk_w),
        .O(sclk_i_1__0_n_0));
  FDCE sclk_reg
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(sclk_i_1__0_n_0),
        .Q(spi_luks_sclk_w));
endmodule

module tt_um_csit_luks
   (FLASH_MOSI_OBUF,
    FLASH_CS_OBUF,
    an_OBUF,
    seg_OBUF,
    dp_OBUF,
    uio_out_w,
    A_IBUF,
    CLK,
    btnC_IBUF,
    B_IBUF,
    PB_IBUF,
    D);
  output FLASH_MOSI_OBUF;
  output FLASH_CS_OBUF;
  output [3:0]an_OBUF;
  output [6:0]seg_OBUF;
  output dp_OBUF;
  output [0:0]uio_out_w;
  input A_IBUF;
  input CLK;
  input btnC_IBUF;
  input B_IBUF;
  input PB_IBUF;
  input [0:0]D;

  wire A_IBUF;
  wire B_IBUF;
  wire CLK;
  wire [0:0]D;
  wire FLASH_CS_OBUF;
  wire FLASH_MOSI_OBUF;
  wire PB_IBUF;
  wire [3:0]an_OBUF;
  wire btnC_IBUF;
  wire [3:0]data2;
  wire dp_OBUF;
  wire [3:0]enc_w;
  wire [23:8]fd_address;
  wire fsm_instance_n_0;
  wire fsm_instance_n_1;
  wire [1:0]multiplexing_counter;
  wire [1:0]pb_press_type_w;
  wire rotational_encoder_instance_n_6;
  wire rotational_encoder_instance_n_7;
  wire rotational_encoder_instance_n_8;
  wire [6:0]seg_OBUF;
  wire spi_flash_instance_n_10;
  wire spi_flash_instance_n_11;
  wire spi_flash_instance_n_8;
  wire spi_flash_instance_n_9;
  wire spi_flash_ready_w;
  wire spi_flash_valid_w;
  wire spi_luks_ready_w;
  wire spi_luks_sclk_w;
  wire spi_luks_valid_w;
  wire [0:0]uio_out_w;

  fsm fsm_instance
       (.CLK(CLK),
        .Q({fsm_instance_n_0,fsm_instance_n_1}),
        .btnC_IBUF(btnC_IBUF),
        .\current_state_reg[1]_0 (rotational_encoder_instance_n_6),
        .\current_state_reg[1]_1 (rotational_encoder_instance_n_8),
        .\display_out_reg[3]_0 ({data2,spi_flash_instance_n_8,spi_flash_instance_n_9,spi_flash_instance_n_10,spi_flash_instance_n_11}),
        .\display_out_reg[3]_1 (enc_w),
        .dp_OBUF(dp_OBUF),
        .dp_OBUF_inst_i_1_0(multiplexing_counter),
        .\fd_address_reg[23]_0 (fd_address),
        .\last_auto_state_reg[1]_0 (rotational_encoder_instance_n_7),
        .pb_press_type_w(pb_press_type_w),
        .seg_OBUF(seg_OBUF),
        .spi_flash_ready_w(spi_flash_ready_w),
        .spi_flash_valid_w(spi_flash_valid_w),
        .spi_luks_ready_w(spi_luks_ready_w),
        .spi_luks_valid_w(spi_luks_valid_w));
  rotational_encoder rotational_encoder_instance
       (.A_IBUF(A_IBUF),
        .B_IBUF(B_IBUF),
        .CLK(CLK),
        .PB_IBUF(PB_IBUF),
        .Q(enc_w),
        .btnC_IBUF(btnC_IBUF),
        .\current_state_reg[1] ({fsm_instance_n_0,fsm_instance_n_1}),
        .\pb_press_type_reg[0]_0 (rotational_encoder_instance_n_6),
        .\pb_press_type_reg[0]_1 (rotational_encoder_instance_n_8),
        .\pb_press_type_reg[1]_0 (rotational_encoder_instance_n_7),
        .pb_press_type_w(pb_press_type_w),
        .spi_flash_ready_w(spi_flash_ready_w));
  seven_seg seven_segment_instance
       (.CLK(CLK),
        .Q(multiplexing_counter),
        .an_OBUF(an_OBUF),
        .btnC_IBUF(btnC_IBUF));
  spi_flash spi_flash_instance
       (.CLK(CLK),
        .D(fd_address),
        .FLASH_CS_OBUF(FLASH_CS_OBUF),
        .FLASH_MOSI_OBUF(FLASH_MOSI_OBUF),
        .Q({data2,spi_flash_instance_n_8,spi_flash_instance_n_9,spi_flash_instance_n_10,spi_flash_instance_n_11}),
        .btnC_IBUF(btnC_IBUF),
        .\mem_data_reg[0]_0 (D),
        .spi_flash_ready_w(spi_flash_ready_w),
        .spi_flash_valid_w(spi_flash_valid_w),
        .spi_luks_sclk_w(spi_luks_sclk_w),
        .uio_out_w(uio_out_w));
  spi_sensor spi_sensor_instance
       (.CLK(CLK),
        .btnC_IBUF(btnC_IBUF),
        .spi_luks_ready_w(spi_luks_ready_w),
        .spi_luks_sclk_w(spi_luks_sclk_w),
        .spi_luks_valid_w(spi_luks_valid_w));
endmodule
