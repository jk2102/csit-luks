/*******************************************************************
* Module Name: Seven segment display controller
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
* Author: Dino Terman
* Date: [Date, e.g., "YYYY-MM-DD"]
*******************************************************************/


module seven_seg (
    input   clk,
    input   rstn,
    input [3:0] isoValue,
    input [3:0] shutterSpeedValue,
    input [3:0] focalLenghtValue,
    input [2:0] brightnessIndicatorValue,
    input [1:0] selectInput,
    output reg [7:0] seven_seg_1,
    output reg [7:0] seven_seg_2,
    output reg [7:0] seven_seg_3,
    output reg [7:0] seven_seg_4
);

always @(posedge clk) begin
    
    case (selectInput)
        2'b00:seven_seg_1=decodeISO(isoValue);
        2'b01:out=decodeshutter(shutterSpeedValue);
        2'b10:out=decodefocal(focalLenghtValue);
        2'b11:out=decodeindicator(brightnessIndicatorValue); 
        default: 
        begin
        seven_seg_1=8'b11111111;
        seven_seg_2=8'b11111111;
        seven_seg_3=8'b11111111;
        seven_seg_4=8'b11111111;
        end
    endcase
end

// ISO values decoding
function [7:0] decodeISO; 
    case (isoValue)
        4'b0000: begin seven_seg_4=8'b11111111; seven_seg_3=8'b11111111; seven_seg_2=8'b11111111; seven_seg_1=8'b10000010; end //6
        4'b0001: begin seven_seg_4=8'b11111111; seven_seg_3=8'b11111111; seven_seg_2=8'b11111001; seven_seg_1=8'b10100100; end //12
        4'b0010: begin seven_seg_4=8'b11111111; seven_seg_3=8'b11111111; seven_seg_2=8'b10100100; seven_seg_1=8'b10010010; end //25
        4'b0011: begin seven_seg_4=8'b11111111; seven_seg_3=8'b11111111; seven_seg_2=8'b10010010; seven_seg_1=8'b11000000; end //50
        4'b0100: begin seven_seg_4=8'b11111111; seven_seg_3=8'b11111001; seven_seg_2=8'b11000000; seven_seg_1=8'b11000000; end //100
        4'b0101: begin seven_seg_4=8'b11111111; seven_seg_3=8'b11111001; seven_seg_2=8'b10100100; seven_seg_1=8'b10010010; end //125
        4'b0110: begin seven_seg_4=8'b11111111; seven_seg_3=8'b11111001; seven_seg_2=8'b10000010; seven_seg_1=8'b11000000; end //160
        4'b0111: begin seven_seg_4=8'b11111111; seven_seg_3=8'b10100100; seven_seg_2=8'b11000000; seven_seg_1=8'b11000000; end //200
        4'b1000: begin seven_seg_4=8'b11111111; seven_seg_3=8'b10110000; seven_seg_2=8'b10100100; seven_seg_1=8'b11000000; end //320
        4'b1001: begin seven_seg_4=8'b11111111; seven_seg_3=8'b10011001; seven_seg_2=8'b11000000; seven_seg_1=8'b11000000; end //400
        4'b1010: begin seven_seg_4=8'b11111111; seven_seg_3=8'b10000000; seven_seg_2=8'b11000000; seven_seg_1=8'b11000000; end //800
        4'b1011: begin seven_seg_4=8'b11111001; seven_seg_3=8'b10000010; seven_seg_2=8'b11000000; seven_seg_1=8'b11000000; end //1600
        4'b1100: begin seven_seg_4=8'b10110000; seven_seg_3=8'b10100100; seven_seg_2=8'b11000000; seven_seg_1=8'b11000000; end //3200
        4'b1101: begin seven_seg_4=8'b10000010; seven_seg_3=8'b10011001; seven_seg_2=8'b11000000; seven_seg_1=8'b11000000; end //6400
        4'b1110: begin seven_seg_4=8'b11111001; seven_seg_3=8'b10100100; seven_seg_2=8'b10000000; seven_seg_1=8'b01000000; end //1280.

        default: begin seven_seg_4=8'b11111111; seven_seg_3=8'b11111111; seven_seg_2=8'b11111111; seven_seg_1=8'b11111111; end
    endcase
    
endfunction



endmodule
