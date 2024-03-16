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

//    MM

module SPI_Luks (

    input wire clk,
    input wire reset,
    input wire valid,
    output reg ready,
    output reg ss,
    output reg sck,
    output reg [7:0] toMemory,
    input wire miso
);

  // State machine states
  parameter IDLE = 2'b00;
  parameter TRANSFER = 2'b01;

  // Internal signals
reg [1:0] state;
reg [15:0] rx_data = 16'h0000;
reg [4:0] counter = 0;

// Clock divider for generating SPI clock
parameter DIVIDER = 4; // Adjust this value to set the SPI clock frequency

reg [DIVIDER-1:0] clock_divider;

// Initialize
initial begin
    state <= IDLE;
    clock_divider <= 0;
    sck <= 1'b0; // Initialize SCK to low
    ss <= 0;
    ready <= 0;
    counter <= 0;
end

always @(posedge valid) begin
  ss <= 1;
  ready <= 0;
  rx_data <= 0;
  toMemory <= 0;
  counter <= 0;
end

// Clock divider for generating SPI clock

always @(posedge clk) begin
    if (reset) begin
        clock_divider <= 0;
    end else begin
        if (clock_divider == DIVIDER - 1) begin
            clock_divider <= 0;
        end else begin
            clock_divider <= clock_divider + 1;
        end
    end
    if (counter == 16) begin
      ready = 1;
      toMemory [7:0] <= rx_data [11:4];
    end
end

always @(negedge clk) begin
  if (valid) begin
    if (clock_divider == DIVIDER/2 - 1 && ~sck) begin
      rx_data [15:0] <= {rx_data[14:0], miso};
    end
    if (clock_divider == DIVIDER - 1) begin
      //  Toggle clock for the next bit
      sck <= ~sck;
    end
  end
end

always @(negedge sck) begin

  if (valid) begin
  counter = counter + 1;
  end

end

endmodule

//    MM
