`timescale 1ns/1ps

module spi_tb();


reg clock;
reg reset_n;
reg valid;
reg [23:0] addr;
wire ready;
wire [7:0] rdata;
integer i = 0;
reg [3:0] cfgreg_we;
reg [31:0] wrdata_i;

spi_wrapper UUT(
    .clk_i(clock),
    .rstn_i(reset_n),
    .valid_i(valid),
    .cfgreg_we(cfgreg_we),
    .ready_o(ready),
    .addr_i(addr),
    .wrdata_i(wrdata_i),
    .rdata_o(rdata)
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

initial begin
	cfgreg_we =4'b0000;
	wrdata_i = 32'h00000000;
end

endmodule


