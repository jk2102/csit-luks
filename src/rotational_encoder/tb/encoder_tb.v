// Testbench 
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

`timescale 1ns / 1ps

module encoder_tb;

// Inputs
reg clk;
reg rstn;
reg A;
reg B;
reg PB;

// Output
wire [3:0] enc;
wire [1:0] pb_press_type;

// Instantiate the Unit Under Test (UUT)
rotational_encoder uut (
    .clk(clk),
    .rstn(rstn),
    .A(A),
    .B(B),
    .PB(PB), 
    .enc(enc), 
    .pb_press_type(pb_press_type)
);
// Clock generation
always #5 clk = ~clk;

initial begin

    // required for waveform visualisation 
    $dumpfile("sim\\dump.vcd"); $dumpvars;

    // Initialize Inputs
        clk = 0;
        rstn = 0;
        A = 0;
        B = 0;
        PB = 1; // Not pressed
   
    // Reset the system
    #100;
    rstn = 1;
    
    // CW movement: A leads B
    #10; A = 1; B = 0;
    #10; B = 1;
    #10; A = 0;
    #10; B = 0;
    #10; A = 1;
    #10; B = 1;
    #10; A = 0;
    #10; B = 0;
    #10; A = 1;
    #10; B = 1;
    #10; A = 0;
    #10; B = 0;
    #10; A = 1;
    #10; B = 1;
    #10; A = 0;
    #10; B = 0;
    #10; A = 1;
    #10; B = 1;
    #10; A = 0;
    #10; B = 0;
    #10; A = 1;
    #10; B = 1;
    #10; A = 0;
    #10; B = 0;
    
    // Wait for a few clock cycles
    #50;

    // Simulate normal pushbutton press
    PB = 0; #5000; PB = 1;
    #100;

    // Wait for a few clock cycles and finish simulation
    #50;
    $finish;
end

// Monitor changes
initial begin
    $monitor("Time = %d, Reset = %b, A = %b, B = %b, enc = %d, pb_press_type = %d", 
             $time, rstn, A, B, enc, pb_press_type);
end

endmodule
