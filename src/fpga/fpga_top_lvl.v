

module fpga_top_lvl (
    input   clk,        // board clock
    input   btnC,       // reset

    input   scl,
    inout   sda,
    output reg clk_32768Hz,
    output pulse_out,

    output [6:0]       seg,
    input [8:0]         sw,
    output              dp,
    output [3:0]        an

);

    // wires
    wire sda_signal, sda_out_signal;

    assign sda = !sda_out_signal ? 1'b0 : 1'bZ;
    assign sda_signal = sda;

    // 7-seg 
    wire [7:0] uo_out_w;
    assign seg = ~uo_out_w[6:0];
    assign an = 4'b0000;
    assign dp = 1'b1;

    // IO port
    wire [7:0] uio_in_w, uio_out_w, uio_oe_w;

    assign uio_in_w = {6'b0, sda_signal, scl};
    assign sda_out_signal = uio_out_w[1];
    assign pulse_out = uo_out_w[0];

    tt_um_jk2102 instance_name (
        .ui_in      (sw[7:0]),   // Dedicated inputs

        .uo_out     (uo_out_w), // Dedicated outputs

        .uio_in     (uio_in_w),        // IOs: Bidirectional Input path
        .uio_out    (uio_out_w),      // IOs: Bidirectional Output path
        .uio_oe     (uio_oe_w),       // IOs: Bidirectional Enable path

        .ena        (sw[8]),         // enable signal
        .clk        (clk_32768Hz),          // clock signal
        .rst_n      (!btnC)         // reset signal (active low)
    );

    // clock divider from 100 MHz to 32k768
    // Use 12-bit counter for up to 4096, but we'll only count up to 3051
    reg [11:0] counter = 12'd0;

    always @(posedge clk or posedge btnC) begin
        if (btnC) begin
            counter <= 12'd0;
            clk_32768Hz <= 0;
        end else begin
            if (counter == 12'd1525) begin // We're using 3051 as our divisor (off by 1 due to 0 count)
                counter <= 12'd0;
                clk_32768Hz <= ~clk_32768Hz;  // Toggle the clock
            end else begin
                counter <= counter + 12'd1;
            end
        end
    end

endmodule


