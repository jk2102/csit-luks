//SPI wrapper including spimemio and spiflash for testbench purposes
//

module spi_wrapper (
	input clk_i,
	input rstn_i,
	input valid_i,
	output ready_o,
	input [23:0] addr_i,
	output wire [7:0] rdata_o,
	output spi_clk,
	input miso,
	output mosi,
	output csb
);

wire [3:0] cfgreg_we = 4'b0000;


spimemio spimemio_inst_0 (

	.clk(clk_i),
	.resetn(rstn_i),
	.valid(valid_i),
	.ready(ready_o),
	.addr(addr_i),
	.rdata(rdata_o),

	.flash_csb(csb),
	.flash_clk(spi_clk),

	.flash_io0_do(mosi),

	.flash_io1_di(miso),

	.cfgreg_we(cfgreg_we)
);



endmodule
