/* 
Testbench 
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

// Output
wire [7:0] counter;

// Instantiate the Unit Under Test (UUT)
encoder uut (
    .clk(clk),
    .rstn(rstn),
    .A(A),
    .B(B),
    .counter(counter)
);

initial begin

    // required for waveform visualisation 
    $dumpfile("sim\\dump.vcd"); $dumpvars;
    // Initialize Inputs
    clk = 0;
    rstn = 0;
    A = 0;
    B = 0;

    // Reset the system
    #10;
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
    
    
    // Wait for a few clock cycles
    #50;
    
    // CCW movement: B leads A
    #10; B = 1; A = 0;
    #10; A = 1;
    #10; B = 0;
    #10; A = 0;
    #10; B = 1; 
    #10; A = 1;
    #10; B = 0;
    #10; A = 0;
    #10; B = 1; 
    #10; A = 1;
    #10; B = 0;
    #10; A = 0;
    #10; B = 1; 
    #10; A = 1;
    #10; B = 0;
    #10; A = 0;
    
    // Wait for a few clock cycles and finish simulation
    #50;
    $finish;
end

// Clock generation
always #5 clk = ~clk;

// Monitor changes
initial begin
    $monitor("Time = %d, Reset = %b, A = %b, B = %b, Counter = %d", 
             $time, rstn, A, B, counter);
end

endmodule

