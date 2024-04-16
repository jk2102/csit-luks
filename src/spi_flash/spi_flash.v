/*******************************************************************
* Module Name: SPI Flash controller
* 
* Description: 
* This module [briefly describe the module's purpose and functionality].
* [Optional: Additional notes on functionality, special cases, or constraints.]
*
* Inputs:
* clk - 1-bit clock input signal for synchronizing the module's operations.
* rstn - 1-bit active low reset signal for initializing or resetting the module's internal state.
* [Document other inputs here if applicable...]
*
* Outputs:
* [Document outputs here if applicable...]
*
* Author: Tin Sorić
* Date: [Date, e.g., "YYYY-MM-DD"]
*******************************************************************/


module spi_flash (
    input wire clk, // System clock
    input wire rstn, // Reset signal, active high
   
    input wire mem_valid, // Memory read valid signal from the rest of the system
    input wire [23:0] mem_addr, // Memory read address
    output reg [7:0] mem_data, // Data read from flash memory
    output reg mem_ready, // Memory read data ready signal
   
    output reg sclk, // SPI Clock
    output reg mosi, // Master Out Slave In, not used for data in this example
    input wire miso, // Master In Slave Out
    output reg cs // Chip Select
);

    // SPI operation states
    localparam IDLE = 2'b00,
               SEND_CMD = 2'b01,
               READ_DATA = 2'b10,
               DATA_READY = 2'b11;
               
    reg [1:0] state = IDLE;
    reg [7:0] cmd = 8'h03; // Read command, may vary based on flash spec
    reg [23:0] address; // Address for reading
    reg [7:0] bit_counter = 0; // To count bits sent/received
    
    always @(posedge clk or negedge rstn) begin
        if (~rstn) begin
            state <= IDLE;
            sclk <= 1;
            mosi <= 0;
            cs <= 1; // Deselect the flash memory
            mem_ready <= 0;
            mem_data <= 0;
        end
        else begin
            case (state)
                IDLE: begin
                    if (mem_valid) begin
                        address <= mem_addr; // Load the address from input
                        cs <= 0; // Select the flash memory
                        mosi <= 0;
                        bit_counter <= 31; // 8 bits for command + 24 bits for address
                        state <= SEND_CMD;
                    end
                    sclk <= 1;
                    mem_ready <= 0;
                end
                
                SEND_CMD: begin
                    sclk <= ~sclk; // Toggle SPI clock
                    mem_ready <= 0;
                    if (sclk == 1) begin // On the rising edge, prepare data
                        if (bit_counter > 23) begin // Send command
                            mosi <= cmd[bit_counter - 24];
                        end
                        else begin // Send address
                            mosi <= address[bit_counter];
                        end
                        
                        if (bit_counter == 0) begin
                            state <= READ_DATA;
                            bit_counter <= 0; // Reset bit counter for reading data
                        end
                        else bit_counter <= bit_counter - 1;
                    end
                end
                
                READ_DATA: begin
                    sclk <= ~sclk; // Toggle SPI clock
                    if (sclk == 0) begin // On the falling edge, read data
                        if (bit_counter < 8) begin
                            mem_data <= {mem_data[6:0], miso}; // Shift in data from MISO
                            bit_counter <= bit_counter + 1;
                            mem_ready <= 0;
                        end
                        
                        if (bit_counter == 8) begin
                            mem_data <= {mem_data[6:0], miso}; // Shift in data from MISO
                            mem_ready <= 1; // Data is ready
                            state <= DATA_READY;
                        end
                    end
                end
                
                DATA_READY: begin
                    if (!mem_valid) begin
                        mem_ready <= 0; // Ready signal after acknowledgment
                        state <= IDLE;
                    end
                    sclk <= 1;
                    cs <= 1; // Deselect the flash memory
                end
                
                default: state <= IDLE;
            endcase
        end
    end
endmodule
