`timescale 1ns / 1ps

module spi_flash_tb;

    reg clk;
    reg rstn;
    reg mem_valid;
    reg [23:0] mem_addr;
    wire [7:0] mem_data;
    wire mem_ready;
    wire sclk;
    wire mosi;
    reg miso;
    wire cs;

    // Instantiate the Unit Under Test (UUT)
    spi_flash uut (
        .clk(clk),
        .rstn(rstn),
        .mem_valid(mem_valid),
        .mem_addr(mem_addr),
        .mem_data(mem_data),
        .mem_ready(mem_ready),
        .sclk(sclk),
        .mosi(mosi),
        .miso(miso),
        .cs(cs)
    );

    // Clock generation
    always #5 clk = ~clk; // 100MHz clock

    // Simulate Flash memory response
    reg [7:0] flash_memory[0:255]; // Simulated flash memory
    reg [7:0] read_data; // Data to send back to master
    integer i;

    initial begin
        // Initialize Inputs
        clk = 0;
        rstn = 0;
        mem_valid = 0;
        mem_addr = 0;
        miso = 0;

        // Initialize Flash memory with some data
        for (i = 0; i < 256; i = i + 1) begin
            flash_memory[i] = i;
        end

        // Reset the system
        #100;
        rstn = 1;
        
        // Wait for reset to propagate
        #100;

        // Start a read operation
        mem_addr = 8'hAA; // Set read address
        mem_valid = 1; // Initiate read operation
        #10;
        mem_valid = 0; // Reset valid to simulate system acknowledgment

        // Wait for SPI operation to complete
        #1000;

        $finish;
    end

    // Emulate SPI Flash behavior on MISO line based on MOSI commands and address
    always @(posedge sclk) begin
        if (!cs) begin // Check if SPI is active
            if (uut.state == uut.READ_DATA) begin
                miso <= flash_memory[mem_addr][7 - uut.bit_counter];
            end
        end
    end

endmodule
