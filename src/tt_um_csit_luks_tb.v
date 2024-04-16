`timescale 1ns / 1ps
module tt_um_csit_luks_tb;

    // Testbench signals
    reg [7:0] ui_in;
    wire [7:0] uo_out;
    reg [7:0] uio_in;
    wire [7:0] uio_out;
    wire [7:0] uio_oe;
    reg ena, clk, rst_n;

    integer i;

    wire spi_flash_miso_w;

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

    spiflash u_spiflash(
        .csb    (uio_out[5]),
        .clk    (uio_out[4]),
        .io0    (uio_out[7]), // MOSI
        .io1    (spi_flash_miso_w), // MISO
        .io2    (),
        .io3    ()
    );

    always @(*) ui_in[3]  = spi_flash_miso_w;

    // Clock generation
    initial clk = 0;
    always #5 clk = ~clk; // Generate a clock with a period of 10 ns

    // Initial reset sequence
    initial begin
        $dumpfile("dump.vcd"); $dumpvars(0);
        // Initial values
        rst_n = 0; ena = 0; ui_in = 0; uio_in = 0;
        // PB is low active
        ui_in[2] = 1;
        
        // Reset pulse
        #10 rst_n = 1;
        #10 rst_n = 0;
        #10 rst_n = 1;
        
        // Enable the module
        #20 ena = 1;
        
        #100;
        // Example test sequence
        // Drive inputs and monitor outputs here...

        // Rotate the knob
        for (i = 0; i < 4; i = i + 1) begin
            @(posedge clk);
            ui_in[0] = 1; ui_in[1] = 0;
            @(posedge clk);
            ui_in[0] = 1; ui_in[1] = 1;
            @(posedge clk);
            ui_in[0] = 0; ui_in[1] = 1;
            @(posedge clk);
            ui_in[0] = 0; ui_in[1] = 0;
        end
        // Pushbutton short press to get to SS_SEL
        #100 ui_in[2] = 0;
        #1000 ui_in[2] = 1;
        #100;
        // Rotate the knob
        for (i = 0; i < 3; i = i + 1) begin
            @(posedge clk);
            ui_in[0] = 1; ui_in[1] = 0;
            @(posedge clk);
            ui_in[0] = 1; ui_in[1] = 1;
            @(posedge clk);
            ui_in[0] = 0; ui_in[1] = 1;
            @(posedge clk);
            ui_in[0] = 0; ui_in[1] = 0;
        end
        // Pushbutton short press to get to F_SEL
        #100 ui_in[2] = 0;
        #1000 ui_in[2] = 1;
        #100;
        // Rotate the knob
        for (i = 0; i < 2; i = i + 1) begin
            @(posedge clk);
            ui_in[0] = 0; ui_in[1] =1;
            @(posedge clk);
            ui_in[0] = 1; ui_in[1] = 1;
            @(posedge clk);
            ui_in[0] = 1; ui_in[1] = 0;
            @(posedge clk);
            ui_in[0] = 0; ui_in[1] = 0;
        end
        // Pushbutton medium press to get to EXP_METER
        #100 ui_in[2] = 0;
        #4000 ui_in[2] = 1;

        #1000 ui_in[2] = 0;
        #1000 ui_in[2] = 1;
        
        // Finish simulation
        #3000 $finish;
    end

    always @(negedge uio_out[4]) begin
        ui_in[4] <= 1;
    end

    // Optional: Monitoring signals
    // initial begin
    //     $monitor("Time=%t, clk=%b, rst_n=%b, ena=%b, uo_out=%h, uio_out=%h", $time, clk, rst_n, ena, uo_out, uio_out);
    // end

endmodule
