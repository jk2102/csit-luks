`timescale 1ns/1ps

module fsm_tb();


reg clk;
reg rstn;

reg [1:0] pb_press;
reg [3:0] enc_count;

reg [7:0] LUX_val;
reg lux_ready;
wire lux_valid;

reg [7:0] fd;
reg fd_ready;

wire [23:0] fd_address;
wire fd_valid;

wire [3:0] display_out;
wire [1:0] display_sel;

fsm UUT(
.clk(clk),
.rstn(rstn),
.pb_press(pb_press),
.enc_count(enc_count),
.LUX_val(LUX_val),
.lux_ready(lux_ready),
.lux_valid(lux_valid),

.fd(fd),
.fd_ready(fd_ready),
.fd_address(fd_address),
.fd_valid(fd_valid),

.display_out(display_out),
.display_sel(display_sel)
);

initial begin

    $dumpfile("dump.vcd"); $dumpvars;

    clk = 1'b0;
    rstn = 1'b0;
    pb_press = 2'b00;
    enc_count = 4'b0000;
    LUX_val = 8'b00000000;
    lux_ready = 1'b0;
    fd = 8'b00000000;


end


always #1 clk = ~ clk;


initial begin
//ISO SEL
#50;
rstn = 1'b1;
enc_count = 4'b1010;
#20;
@(posedge clk);
pb_press = 2'b01;
#1;
pb_press = 2'b00;
//SS_SEL
#100;
enc_count = 4'b0100;
#20;
@(posedge clk);
pb_press = 2'b01;
#1;
pb_press = 2'b00;
//F_SEL
#100;
enc_count = 4'b0011;
#20;
@(posedge clk);
pb_press = 2'b10;
#1;
pb_press = 2'b00;
//EXP_METER
#50;
LUX_val = 8'b11001100;
lux_ready = 1'b1;
//EXP_LUT
#50;
fd = 8'b00000011;
fd_ready = 1'b1;
//EXP_DISPLAY
#100;
LUX_val = 8'b00110011;
fd = 0;
fd_ready = 0;
lux_ready = 0;
@(posedge clk);
pb_press = 2'b01;
#1;
pb_press = 2'b00;
//EXP_READY
#100;
lux_ready = 1'b1;
#50;
fd = 8'b00000001;
fd_ready = 1'b1;
#100;


$finish;

end

endmodule