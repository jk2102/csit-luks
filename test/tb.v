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
      .rst_n  (rst_n)     // not reset
  );

// Clock generation
always #5 clk = ~clk;

initial begin
  // Initialize Inputs
    clk = 0;
    rstn = 0;

    // Reset the system
    #100;
    rstn = 1;

  /*
    CW	
      CH	A	0	1	1	0	0			
      CH	B	0	0	1	1	0
    _______________________________
    CCW
      CH	A	0	0	1	1	0		
      CH	B	0	1	1	0	0
    _______________________________	
  */
    #10; ui_in[1:0] = 2'b00;  //  1
    #10; ui_in[1:0] = 2'b01;  //  2
    #10; ui_in[1:0] = 2'b11;  //  3
    #10; ui_in[1:0] = 2'b10;  //  4
    #10; ui_in[1:0] = 2'b00;  //  5
    #10; ui_in[1:0] = 2'b01;  //  6
    #10; ui_in[2] = 2'b1;     // PB = 1

    


    $finish;
end

// Monitor changes
initial begin
    $monitor("Time = %d, Reset = %b, enc = %d, pb_press_type = %d", 
             $time, rstn, enc, pb_press_type);
end

endmodule
