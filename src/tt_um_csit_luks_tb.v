`timescale 1ns / 1ps
module tt_um_csit_luks_tb;

// Testbench signals
reg [7:0] ui_in;
wire [7:0] uo_out;
reg [7:0] uio_in;
wire [7:0] uio_out;
wire [7:0] uio_oe;
reg ena, clk, rst_n;

// Instantiate the Module Under Test (MUT)
tt_um_csit_luks mut(
    .ui_in(ui_in),
    .uo_out(uo_out),
    .uio_in(uio_in),
    .uio_out(uio_out),
    .uio_oe(uio_oe),
    .ena(ena),
    .clk(clk),
    .rst_n(rst_n)
);

// Clock generation
initial clk = 0;
always #5 clk = ~clk; // Generate a clock with a period of 10 ns

// Initial reset sequence
initial begin
    // Initial values
    rst_n = 0; ena = 0; ui_in = 0; uio_in = 0;
    
    // Reset pulse
    #10 rst_n = 1;
    #10 rst_n = 0;
    #10 rst_n = 1;
    
    // Enable the module
    #20 ena = 1;
    
    // Example test sequence
    // Drive inputs and monitor outputs here...
    
    // Finish simulation
    #1000 $finish;
end

// Optional: Monitoring signals
initial begin
    $monitor("Time=%t, clk=%b, rst_n=%b, ena=%b, uo_out=%h, uio_out=%h", $time, clk, rst_n, ena, uo_out, uio_out);
end

endmodule
