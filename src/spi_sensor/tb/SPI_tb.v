`timescale 1ns/1ps

module SPI_tb;

  // signals - wires and registers
  wire sclk_, ss_, ready_;
  wire [7:0] toMemory_;
  reg clk_, rstn_, miso_, valid_;

  // unit-under-test instances
  SPI_Luks u_SPI_Luks (
    .clk    (clk_),
    .rstn   (rstn_),
    .miso   (miso_),
    .sclk    (sclk_),
    .valid  (valid_),
    .ss     (ss_),
    .ready  (ready_),
    .toMemory  (toMemory_)
  );

  reg [15:0] toMiso = 16'b0000000001010000;
  reg [3:0] count;

  // clock generating
  always #1 clk_ <= ~clk_;

  // signals generation
  initial begin
    // required for waveform visualization
    $dumpfile("sim\\dump.vcd"); $dumpvars;

    clk_        <= 0;
    rstn_       <= 0;
    miso_       <= 0;
    valid_      <= 0;
    count       <= 15;

    // rstn generation
    #10 rstn_   = 1;

    #51 valid_  = 1;

    #199 rstn_  = 0;
    #1   rstn_  = 1;

    #200 valid_ = 1;

    #1000 $finish;

  end

  always @(posedge sclk_) begin
    if (~ss_) begin
      miso_ <= toMiso[count];
      count <= count - 1;
    end
  end

  always @(posedge ready_) begin
    valid_ <= 0;
  end
endmodule