`default_nettype none `timescale 1ns / 1ps

/* This testbench just instantiates the module and makes some convenient wires
   that can be driven / tested by the cocotb test.py.
*/
module tb ();

  // Dump the signals to a VCD file. You can view it with gtkwave.
  initial begin
    $dumpfile("tb.vcd");
    $dumpvars(0, tb);
    #1;
  end

  // Wire up the inputs and outputs:
  reg clk;
  reg rst_n;
  reg ena;
  reg [7:0] ui_in;
  reg [7:0] uio_in;
  wire [7:0] uo_out;
  wire [7:0] uio_out;
  wire [7:0] uio_oe;

  // Replace tt_um_example with your module name:
  tt_um_csit_luks user_project (

      // Include power ports for the Gate Level test:
`ifdef GL_TEST
      .VPWR(1'b1),
      .VGND(1'b0),
`endif

      .ui_in  (ui_in),    // Dedicated inputs
      .uo_out (uo_out),   // Dedicated outputs
      .uio_in (uio_in),   // IOs: Input path
      .uio_out(uio_out),  // IOs: Output path
      .uio_oe (uio_oe),   // IOs: Enable path (active high: 0=input, 1=output)
      .ena    (ena),      // enable - goes high when design is selected
      .clk    (clk),      // clock
     .rst_n   (rst_n)      // not reset
  );

  wire spi_flash_miso, spi_sensor_miso;

  spiflash u_spiflash(
    .csb    (uio_out[5]),
    .clk    (uio_out[4]),
    .io0    (uio_out[7]), // MOSI
    .io1    (spi_flash_miso), // MISO
    .io2    (),
    .io3    ()
);


  

  // SPI Sensor signals
  wire spi_sensor_sclk    = uio_out[4];
  wire spi_sensor_ss      = uio_out[6];
  always @(*) ui_in[4]    = spi_sensor_miso; 

  // SPI Flash signals
  wire spi_flash_sclk     = uio_out[4];
  wire spi_flash_ss       = uio_out[5];
  wire spi_flash_mosi     = uio_out[7];
  always @(*) ui_in[3]  = spi_flash_miso;

// // Clock generation
// always #5 clk = ~clk;

// initial begin
//   // Initialize Inputs
//     clk = 0;
//     rstn = 0;
//     ui_in[1:0] = 2'b00;     // Encoder initial state  
//     ui_in[2]  = 1'b1;       // Pushbutton initial state  

//   // Reset the system
//     #100;
//     rstn = 1;

//   /*
//     CW	
//       CH	A	0	1	1	0	0			
//       CH	B	0	0	1	1	0
//     _______________________________
//     CCW
//       CH	A	0	0	1	1	0		
//       CH	B	0	1	1	0	0
//     _______________________________	
//   */
//     #10; ui_in[1:0] = 2'b00; 
//     #10; ui_in[1:0] = 2'b01;  
//     #10; ui_in[1:0] = 2'b11; 
//     #10; ui_in[1:0] = 2'b10;  
//     #10; ui_in[1:0] = 2'b00;  
//     #10; ui_in[1:0] = 2'b01;  
//     #10; ui_in[1:0] = 2'b11; 
//     #10; ui_in[1:0] = 2'b10;  
//     #10; ui_in[1:0] = 2'b00;  
//     #10; ui_in[1:0] = 2'b01;

//     #10;   ui_in[2] = 2'b0;   // Pushbutton pressed
//     #500; ui_in[2] = 2'b1;   // Pushbutton released

//     #10; ui_in[1:0] = 2'b00; 
//     #10; ui_in[1:0] = 2'b10; 
//     #10; ui_in[1:0] = 2'b11;
//     #10; ui_in[1:0] = 2'b01;
//     #10; ui_in[1:0] = 2'b00; 
//     #10; ui_in[1:0] = 2'b10; 
//     #10; ui_in[1:0] = 2'b11;
//     #10; ui_in[1:0] = 2'b01;
//     #10; ui_in[1:0] = 2'b00; 
//     #10; ui_in[1:0] = 2'b10; 
//     #10; ui_in[1:0] = 2'b11;
//     #10; ui_in[1:0] = 2'b01;
//     #10; ui_in[1:0] = 2'b00; 
//     #10; ui_in[1:0] = 2'b10; 
//     #10; ui_in[1:0] = 2'b11;
//     #10; ui_in[1:0] = 2'b01;
//     #10; ui_in[1:0] = 2'b00; 
//     #10; ui_in[1:0] = 2'b10; 
  
//     #10;   ui_in[2] = 2'b0;   // Pushbutton pressed
//     #1000; ui_in[2] = 2'b1;   // Pushbutton released
                   
    
//     $finish;
// end

// // Monitor changes
// initial begin
//     $monitor("Time = %d, Reset = %b", $time, rstn);
// end

endmodule
