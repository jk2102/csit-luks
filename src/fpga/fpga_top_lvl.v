

module fpga_top_lvl (
    input           clk,        // board clock
    input           btnC,       // reset

    output reg      clk_10kHz,

    // 7 seg display
    output [6:0]    seg,
    output          dp,
    output [3:0]    an,

    // rot encoder PMOD
    input           A,
    input           B,
    input           PB

);

    // 7-seg 
    wire [7:0] uo_out_w;
    assign seg = 7'b0;
    assign an = ~uo_out_w[3:0];
    assign dp = 1'b1;

    // rot encoder PMOD
    wire [7:0] ui_in_w;
    assign ui_in_w[0] = A;
    assign ui_in_w[1] = B;
    assign ui_in_w[2] = PB;
    assign ui_in_w[7:3] = 5'b0;

    // IO port
    wire [7:0] uio_in_w, uio_out_w, uio_oe_w;

    assign uio_in_w = 8'b0;    

    tt_um_csit_luks u_tt_um_csit_luks (
        .ui_in      (ui_in_w),          // Dedicated inputs

        .uo_out     (uo_out_w),         // Dedicated outputs

        .uio_in     (uio_in_w),       // IOs: Bidirectional Input path
        .uio_out    (uio_out_w),      // IOs: Bidirectional Output path
        .uio_oe     (uio_oe_w),       // IOs: Bidirectional Enable path

        .ena        (1'b1),         // enable signal - always enable on FPGA prototype
        .clk        (clk_10kHz),     // clock signal
        .rst_n      (!btnC)          // reset signal (active low)
    );

    // clock divider from 100 MHz to 10kHz
    reg [15:0] counter = 16'd0;

    always @(posedge clk) begin
        begin
            if (counter == 16'd4999) begin // We're using 3051 as our divisor (off by 1 due to 0 count)
                counter     <= 16'd0;
                clk_10kHz   <= ~clk_10kHz;  // Toggle the clock
            end else begin
                counter     <= counter + 16'd1;
            end
        end
    end

endmodule


