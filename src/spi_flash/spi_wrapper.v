//SPI wrapper including spimemio and spiflash for testbench purposes
//

module spi_wrapper (
	input clk_i,
	input rstn_i,
	input valid_i,
	input [3:0] cfgreg_we,
	output ready_o,
	input [23:0] addr_i,
	input [31:0] wrdata_i,
	output wire [7:0] rdata_o
);


wire clock;
wire reset_n;
wire csb;

wire flash_io0;
wire flash_io1;
wire flash_io2;
wire flash_io3;

wire flash_io0_oe;
wire flash_io1_oe;
wire flash_io2_oe;
wire flash_io3_oe;

wire flash_io0_do;
wire flash_io1_do;
wire flash_io2_do;
wire flsah_io3_do;
wire cfgreg_we;
reg [31:0] cfgreg_di;




spiflash spiflash_inst_0 (
	.csb(csb),
	.clk(clock), 
	.io0(flash_io0), //MOSI
	.io1(flash_io1), //MISO
	.io2(flash_io2),
	.io3(flash_io3)
);


spimemio spimemio_inst_0 (

	.clk(clk_i),
	.resetn(rstn_i),
	.valid(valid_i),
	.ready(ready_o),
	.addr(addr_i),
	.rdata(rdata_o),

	.flash_csb(csb),
	.flash_clk(clock),

	.flash_io0_oe(flash_io0_oe),
	.flash_io1_oe(flash_io1_oe),
	.flash_io2_oe(flash_io2_oe),
	.flash_io3_oe(flash_io3_oe),

	.flash_io0_do(flash_io0_do),
	.flash_io1_do(flash_io1_do),
	.flash_io2_do(flash_io2_do),
	.flash_io3_do(flash_io3_do),

	.flash_io0_di(flash_io0),
	.flash_io1_di(flash_io1),
	.flash_io2_di(flash_io2),
	.flash_io3_di(flash_io3),

	.cfgreg_we(cfgreg_we),
	.cfgreg_di(wrdata_i),
	.cfgreg_do()
);

assign flash_io0 = flash_io0_oe ? flash_io0_do : 1'bz;
assign flash_io1 = flash_io1_oe ? flash_io1_do : 1'bz;
assign flash_io2 = flash_io2_oe ? flash_io2_do : 1'bz;
assign flash_io3 = flash_io3_oe ? flash_io3_do : 1'bz;

endmodule
