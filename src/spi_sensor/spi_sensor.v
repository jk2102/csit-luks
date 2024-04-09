/*******************************************************************
* Module Name: SPI luxmeter sensor controller
* 
* Description: 
* This module [briefly describe the module's purpose and functionality].
* [Optional: Additional notes on functionality, special cases, or constraints.]
* Datasheet ADC: https://www.ti.com/lit/ds/symlink/adc081s021.pdf
* Memory interface: https://github.com/YosysHQ/picorv32?tab=readme-ov-file#picorv32-native-memory-interface
*
* Inputs:
* clk - 1-bit clock input signal for synchronizing the module's operations.
* rstn - 1-bit active low reset signal for initializing or resetting the module's internal state.
* [Document other inputs here if applicable...]
*
* Outputs:
* [Document outputs here if applicable...]
*
* Author: Marko Marinović, Ivan Štignedec
* Date: [Date, e.g., "YYYY-MM-DD"]
*******************************************************************/


module spi_sensor (
    input wire clk, // System clock
    input wire rstn, // Reset signal, active high
    input wire mem_valid, // Trigger signal for reading from ADC
    output reg [7:0] mem_data, // Data read from ADC
    output reg mem_ready, // Indicates when mem_data is valid
    output reg sclk, // SPI Clock
    output reg cs, // Chip Select for ADC
    input wire miso // Master In Slave Out - Data from ADC
);

    // State definitions
    localparam IDLE = 2'b00,
               START_CONVERSION = 2'b01,
               READ_ADC = 2'b10,
               TRAILING_ZEROES = 2'b11;
               
    reg [1:0] state = IDLE;
    reg [4:0] bit_counter; // Adjusted for 15-bit cycle: 3 leading, 8 data, 4 trailing

    always @(posedge clk or negedge rstn) begin
        if (~rstn) begin
            state <= IDLE;
            sclk <= 0;
            cs <= 1; // ADC not selected
            mem_ready <= 0;
            mem_data <= 0;
            bit_counter <= 0;
        end else begin
            case(state)
                IDLE: begin
                    if(mem_valid) begin
                        cs <= 0; // Begin communication with ADC
                        bit_counter <= 14; // 15 SCLK cycles are required (3 + 8 + 4)
                        state <= START_CONVERSION;
                    end
                end
                
                START_CONVERSION: begin
                    sclk <= ~sclk; // Toggle clock to start conversion
                    if(sclk && bit_counter > 11) begin // Count down during the 3 leading zeroes
                        bit_counter <= bit_counter - 1;
                        if(bit_counter == 12) state <= READ_ADC; // Next state after leading zeroes
                    end
                end
                
                READ_ADC: begin
                    if(!sclk) begin // Read on falling edge
                        if(bit_counter > 4) begin // Read during the 8 data bits
                            mem_data <= {mem_data[6:0], miso};
                        end
                        bit_counter <= bit_counter - 1;
                        if(bit_counter == 5) state <= TRAILING_ZEROES; // Move to trailing zeroes after data bits
                    end
                end
                
                TRAILING_ZEROES: begin
                    if(sclk) begin // Just clock through the trailing zeroes
                        bit_counter <= bit_counter - 1;
                        if(bit_counter == 0) begin
                            mem_ready <= 1; // Indicate data ready after the last trailing zero
                            cs <= 1; // Deselect ADC, end communication
                            state <= IDLE; // Return to idle state
                        end
                    end
                end
                
                default: state <= IDLE;
            endcase
        end
    end
endmodule
