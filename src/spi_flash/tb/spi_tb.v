`timescale 1ns/1ps

module spi_tb();


reg clock;
reg reset_n;
reg valid;
reg [23:0] addr;
wire ready;
wire [7:0] rdata;
wire miso;
wire mosi;
wire csb;
wire spi_clk;
integer i = 0;

spi_wrapper UUT(
    .clk_i(clock),
    .rstn_i(reset_n),
    .valid_i(valid),
    .ready_o(ready),
    .addr_i(addr),
    .rdata_o(rdata),
    .spi_clk(spi_clk),
    .miso(miso),
    .mosi(mosi),
    .csb(csb)
);


spiflash flash_0(
	.csb(csb),
	.clk(spi_clk),
	.io0(mosi), // MOSI
	.io1(miso), // MISO
	.io2(),
	.io3()
);


initial begin

$dumpfile("sim/dump.vcd");$dumpvars;
    #10000; // delay
    $finish;

end


initial begin

    clock = 1'b0;
    reset_n = 1'b1;
    valid = 1'b1;
    addr = 24'd0;

end


always #1 clock = ~ clock;


initial begin

	reset_n = 1'b1;
	#60;
	reset_n = 1'b0;
	#1000;
	reset_n = 1'b1;
end


always @(posedge clock or negedge reset_n) begin

	if (reset_n == 0) begin
	valid = 1'b0;
	end else if(ready & valid) begin
		addr = addr + 1;
		valid = 1'b0;
	end else begin
		valid = 1'b1;
	end
end


endmodule


