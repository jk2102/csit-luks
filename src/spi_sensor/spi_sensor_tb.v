`timescale 1ns / 1ps

module spi_sensor_tb;

    reg clk; // System clock
    reg rstn; // Reset signal
    reg mem_valid; // Trigger for reading from ADC
    wire [7:0] mem_data; // Data read from ADC
    wire mem_ready; // Indicates data is valid
    wire sclk; // SPI Clock
    wire cs; // Chip Select for ADC
    reg miso; // Data from ADC

    // Instantiate the Unit Under Test (UUT)
    spi_sensor uut (
        .clk(clk),
        .rstn(rstn),
        .mem_valid(mem_valid),
        .mem_data(mem_data),
        .mem_ready(mem_ready),
        .sclk(sclk),
        .cs(cs),
        .miso(miso)
    );

    // Clock generation
    always #5 clk = ~clk; // 100MHz clock

    // ADC data simulation variables
    reg [14:0] adc_output; // ADC output including leading and trailing bits
    integer i;

    initial begin
        // Initialize Inputs
        clk = 0;
        rstn = 0;
        mem_valid = 0;
        miso = 0;

        // Initialize ADC output (for example purposes: 3 leading zeros, value 0x55, 4 trailing zeros)
        adc_output = 15'b000_01010101_0000;

        // Reset the system
        #10;
        rstn = 1;

        // Wait for reset to propagate
        #50;

        // Start a read operation
        mem_valid = 1; // Trigger read operation
        #10;
        mem_valid = 0; // Reset valid to simulate end of request

        // Wait for SPI operation to complete
        #1000;

        $finish; // End simulation
    end

    // Simulate ADC behavior
    always @(posedge sclk) begin
        if (!cs) begin
            // Shift out data on falling edge of SCLK (simulate ADC behavior)
            miso <= adc_output[14];
            adc_output <= adc_output << 1; // Shift to next bit
        end
    end

endmodule
