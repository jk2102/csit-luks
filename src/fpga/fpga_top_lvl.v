
`define DEBUG

module fpga_top_lvl (
    input           clk,        // board clock
    input           btnC,       // reset

    output reg      clk_1kHz,

    // 7 seg display
    output [6:0]    seg,
    output          dp,
    output [3:0]    an,

    // rot encoder PMOD
    input           A,
    input           B,
    input           PB,

    // SPI flash
    output          FLASH_CS,
    output          FLASH_MOSI,
    input           FLASH_MISO,

    // SPI sensor
    output          LUKS_CS,
    output          LUKS_SCLK,
    input           LUKS_MISO,


    // debug port
    output          FLASH_SCLK_debug,
    output          FLASH_CS_debug,
    output          FLASH_MOSI_debug,
    output          FLASH_MISO_debug,
    output [7:0]         LEDS_debug


);

    // wires    
    wire [7:0] uo_out_w, uio_out_w, uio_oe_w, uio_in_w, ui_in_w;

    // SPI flash wires
    wire flash_clk_w;

    assign flash_clk_w = uio_out_w[4];
    assign FLASH_CS = uio_out_w[5];
    assign FLASH_MOSI = uio_out_w[7];
    assign ui_in_w[3] = FLASH_MISO; 

    // debug
    assign FLASH_SCLK_debug = flash_clk_w;
    assign FLASH_CS_debug = FLASH_CS;
    assign FLASH_MOSI_debug = FLASH_MOSI;
    assign FLASH_MISO_debug = FLASH_MISO;

    // 7-seg 
    assign seg = uo_out_w[6:0];
    assign an = uio_out_w[3:0];
    assign dp = uo_out_w[7];

    // rotational encoder PMOD
    assign ui_in_w[0] = A;
    assign ui_in_w[1] = B;
    assign ui_in_w[2] = PB;
    assign ui_in_w[7:5] = 5'b0;

    // Sensor SPI
    assign LUKS_CS = uio_out_w[6];
    assign LUKS_SCLK = uio_out_w[4];
    assign ui_in_w[4] = LUKS_MISO;

    // IO port
    assign uio_in_w = 8'b0;    

    tt_um_csit_luks u_tt_um_csit_luks (
        .ui_in      (ui_in_w),          // Dedicated inputs

        .uo_out     (uo_out_w),         // Dedicated outputs

        .uio_in     (uio_in_w),       // IOs: Bidirectional Input path
        .uio_out    (uio_out_w),      // IOs: Bidirectional Output path
        .uio_oe     (uio_oe_w),       // IOs: Bidirectional Enable path

        .ena        (1'b1),         // enable signal - always enable on FPGA prototype
        .clk        (clk_1kHz),     // clock signal
        .rst_n      (!btnC),          // reset signal (active low)
        .debug_port (LEDS_debug)    // debug port
    );

    // clock divider from 100 MHz to 10kHz
    reg [15:0] counter = 16'd0;

    always @(posedge clk) begin
        begin
            if (counter == 16'd49999) begin // We're using 3051 as our divisor (off by 1 due to 0 count)
                counter     <= 16'd0;
                clk_1kHz   <= ~clk_1kHz;  // Toggle the clock
            end else begin
                counter     <= counter + 16'd1;
            end
        end
    end

    STARTUPE2 #(
        .PROG_USR("FALSE"), // Activate program event security feature. Requires encrypted bitstreams.
        .SIM_CCLK_FREQ(0.0) // Set the Configuration Clock Frequency(ns) for simulation.
    )
    STARTUPE2_inst (
        .CFGCLK(), // 1-bit output: Configuration main clock output
        .CFGMCLK(), // 1-bit output: Configuration internal oscillator clock output
        .EOS(), // 1-bit output: Active high output signal indicating the End Of Startup.
        .PREQ(), // 1-bit output: PROGRAM request to fabric output
        .CLK(0), // 1-bit input: User start-up clock input
        .GSR(0), // 1-bit input: Global Set/Reset input (GSR cannot be used for the port name)
        .GTS(0), // 1-bit input: Global 3-state input (GTS cannot be used for the port name)
        .KEYCLEARB(0), // 1-bit input: Clear AES Decrypter Key input from Battery-Backed RAM (BBRAM)
        .PACK(0), // 1-bit input: PROGRAM acknowledge input
        .USRCCLKO(flash_clk_w), // 1-bit input: User CCLK input
        .USRCCLKTS(0), // 1-bit input: User CCLK 3-state enable input
        .USRDONEO(0), // 1-bit input: User DONE pin output control
        .USRDONETS(0) // 1-bit input: User DONE 3-state enable output
    );

endmodule


