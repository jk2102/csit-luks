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
* isoValue - 4-bit camera ISO value 
* shutterSpeedValue - 4-bit camera shutter speed value 
* focalLenghtValue - 4-bit camera focal lenght value
* brightnessIndicatorValue - 3-bit camera brihtness indicator value
* selectInput - 2-bit input value for choosing and displaying desired camera value
* Outputs:
* seven_seg_1 - 8-bit valued output that represents one of four seven-segment displays in which most significant bit is decimal point
* seven_seg_2 - 8-bit valued output that represents one of four seven-segment displays in which most significant bit is decimal point
* seven_seg_3 - 8-bit valued output that represents one of four seven-segment displays in which most significant bit is decimal point
* seven_seg_4 - 8-bit valued output that represents one of four seven-segment displays in which most significant bit is decimal point
* Author: Dino Terman
* Date: [Date, e.g., "YYYY-MM-DD"]
*******************************************************************/


module seven_seg (
    input           clk,
    input           rstn,

    input [3:0]     display_value,
    input [1:0]     display_select,

    output [7:0]    seven_seg,
    output [3:0]    anode
);

    reg [7:0]  seven_seg_1, seven_seg_2, seven_seg_3, seven_seg_4;

    always @ (display_value, display_select) begin          
        case (display_select)
            2'b00:  decode_ISO(display_value); 
            2'b01:  decode_shutter(display_value); 
            2'b10:  decode_focal(display_value); 
            2'b11:  decode_indicator(display_value); 
            default: begin seven_seg_4=8'b11111110; seven_seg_3=8'b11111110; seven_seg_2=8'b11111110; seven_seg_1=8'b11111110; end
        endcase
    end

    // ISO values decoding
    task decode_ISO; 
        input[3:0] value;
        begin
            case (value)
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
                default: begin seven_seg_4=8'b10111111; seven_seg_3=8'b10111111; seven_seg_2=8'b10111111; seven_seg_1=8'b10111111; end //N/A
            endcase
        end
    endtask
        

    task decode_shutter;
        input [3:0] value;
        begin 
            case (value)
                4'b0000: begin seven_seg_4=8'b11111111; seven_seg_3=8'b11111111; seven_seg_2=8'b10110000; seven_seg_1=8'b11000000; end //30
                4'b0001: begin seven_seg_4=8'b11111111; seven_seg_3=8'b11111111; seven_seg_2=8'b11111001; seven_seg_1=8'b10010010; end //15
                4'b0010: begin seven_seg_4=8'b11111111; seven_seg_3=8'b11111111; seven_seg_2=8'b11111111; seven_seg_1=8'b10000000; end //8
                4'b0011: begin seven_seg_4=8'b11111111; seven_seg_3=8'b11111111; seven_seg_2=8'b11111111; seven_seg_1=8'b10011001; end //4
                4'b0100: begin seven_seg_4=8'b11111111; seven_seg_3=8'b11111111; seven_seg_2=8'b11111111; seven_seg_1=8'b10100100; end //2
                4'b0101: begin seven_seg_4=8'b11111111; seven_seg_3=8'b11111111; seven_seg_2=8'b11111111; seven_seg_1=8'b11111001; end //1
                4'b0110: begin seven_seg_4=8'b11111111; seven_seg_3=8'b11111111; seven_seg_2=8'b01111111; seven_seg_1=8'b10100100; end // 1/2 (.2)
                4'b0111: begin seven_seg_4=8'b11111111; seven_seg_3=8'b11111111; seven_seg_2=8'b01111111; seven_seg_1=8'b10011001; end // 1/4 (.4)
                4'b1000: begin seven_seg_4=8'b11111111; seven_seg_3=8'b11111111; seven_seg_2=8'b01111111; seven_seg_1=8'b10000000; end // 1/8 (.8)
                4'b1001: begin seven_seg_4=8'b11111111; seven_seg_3=8'b01111111; seven_seg_2=8'b11111001; seven_seg_1=8'b10010010; end // 1/15 (.15)
                4'b1010: begin seven_seg_4=8'b11111111; seven_seg_3=8'b01111111; seven_seg_2=8'b10110000; seven_seg_1=8'b11000000; end // 1/30 (.30)
                4'b1011: begin seven_seg_4=8'b11111111; seven_seg_3=8'b01111111; seven_seg_2=8'b10000010; seven_seg_1=8'b11000000; end // 1/60 (.60)
                4'b1100: begin seven_seg_4=8'b01111111; seven_seg_3=8'b11111001; seven_seg_2=8'b10100100; seven_seg_1=8'b10010010; end // 1/125 (.125)
                4'b1101: begin seven_seg_4=8'b01111111; seven_seg_3=8'b10100100; seven_seg_2=8'b10010010; seven_seg_1=8'b11000000; end // 1/250 (.250)
                4'b1110: begin seven_seg_4=8'b01111111; seven_seg_3=8'b10010010; seven_seg_2=8'b11000000; seven_seg_1=8'b11000000; end // 1/500 (.500)
                4'b1111: begin seven_seg_4=8'b11111001; seven_seg_3=8'b11000000; seven_seg_2=8'b11000000; seven_seg_1=8'b01000000; end // 1/1000(1000.)
                default: begin seven_seg_4=8'b10111111; seven_seg_3=8'b10111111; seven_seg_2=8'b10111111; seven_seg_1=8'b10111111; end //N/A
            endcase
        end        
    endtask

    task decode_focal;
        input[3:0] value;
        begin 
            case (value)
                4'b0000: begin seven_seg_4=8'b11111111; seven_seg_3=8'b11111111; seven_seg_2=8'b01111001; seven_seg_1=8'b10100100; end // 1,2
                4'b0001: begin seven_seg_4=8'b11111111; seven_seg_3=8'b11111111; seven_seg_2=8'b01111001; seven_seg_1=8'b10011001; end // 1,4
                4'b0010: begin seven_seg_4=8'b11111111; seven_seg_3=8'b11111111; seven_seg_2=8'b01111001; seven_seg_1=8'b10000000; end // 1,8
                4'b0011: begin seven_seg_4=8'b11111111; seven_seg_3=8'b11111111; seven_seg_2=8'b00100100; seven_seg_1=8'b11000000; end //2,0
                4'b0100: begin seven_seg_4=8'b11111111; seven_seg_3=8'b11111111; seven_seg_2=8'b00100100; seven_seg_1=8'b10000000; end //2,8
                4'b0101: begin seven_seg_4=8'b11111111; seven_seg_3=8'b11111111; seven_seg_2=8'b00110000; seven_seg_1=8'b10010010; end //3,5
                4'b0110: begin seven_seg_4=8'b11111111; seven_seg_3=8'b11111111; seven_seg_2=8'b00011001; seven_seg_1=8'b11000000; end // 4,0
                4'b0111: begin seven_seg_4=8'b11111111; seven_seg_3=8'b11111111; seven_seg_2=8'b00010010; seven_seg_1=8'b10000010; end // 5,6
                4'b1000: begin seven_seg_4=8'b11111111; seven_seg_3=8'b11111111; seven_seg_2=8'b00000000; seven_seg_1=8'b11000000; end // 8,0
                4'b1001: begin seven_seg_4=8'b11111111; seven_seg_3=8'b11111111; seven_seg_2=8'b11111001; seven_seg_1=8'b11111001; end // 11,0
                4'b1010: begin seven_seg_4=8'b11111111; seven_seg_3=8'b11111111; seven_seg_2=8'b11111001; seven_seg_1=8'b10000010; end // 16,0
                4'b1011: begin seven_seg_4=8'b11111111; seven_seg_3=8'b11111111; seven_seg_2=8'b10100100; seven_seg_1=8'b10100100; end // 22,0
                default: begin seven_seg_4=8'b10111111; seven_seg_3=8'b10111111; seven_seg_2=8'b10111111; seven_seg_1=8'b10111111; end //N/A
            endcase
        end        
    endtask

    task decode_indicator;
        input [3:0] value;
        begin
            case (value)            
                4'b0000: begin seven_seg_4=8'b10100100; seven_seg_3=8'b11111111; seven_seg_2=8'b11111111; seven_seg_1=8'b11111111; end //-2 stop
                4'b0001: begin seven_seg_4=8'b11111001; seven_seg_3=8'b11111111; seven_seg_2=8'b11111111; seven_seg_1=8'b11111111; end //-1 stop
                4'b0010: begin seven_seg_4=8'b11111111; seven_seg_3=8'b11111111; seven_seg_2=8'b11111111; seven_seg_1=8'b11000000; end // 0 stop
                4'b0011: begin seven_seg_4=8'b11111111; seven_seg_3=8'b11111111; seven_seg_2=8'b11111111; seven_seg_1=8'b11111001; end //+1 stop
                4'b0100: begin seven_seg_4=8'b11111111; seven_seg_3=8'b11111111; seven_seg_2=8'b11111111; seven_seg_1=8'b10100100; end //+2 stop
                4'b0101: begin seven_seg_4=8'b10001000; seven_seg_3=8'b11100011; seven_seg_2=8'b10000111; seven_seg_1=8'b10100011; end //Auto
                default: begin seven_seg_4=8'b10111111; seven_seg_3=8'b10111111; seven_seg_2=8'b10111111; seven_seg_1=8'b10111111; end //N/A
            endcase
        end        
    endtask

    reg [1:0] multiplexing_counter;

    // Multiplexing the 4 seven-segment displays
    always @ (posedge clk or negedge rstn) begin
        if (~rstn)  multiplexing_counter        <= 0;
        else        multiplexing_counter        <= multiplexing_counter + 1;        
    end

    assign seven_seg    =   (multiplexing_counter[1:0] == 2'b00) ? seven_seg_1 : 
                            (multiplexing_counter[1:0] == 2'b01) ? seven_seg_2 : 
                            (multiplexing_counter[1:0] == 2'b10) ? seven_seg_3 : 
                            (multiplexing_counter[1:0] == 2'b11) ? seven_seg_4 : 8'b11111111;

    assign anode        =   (multiplexing_counter[1:0] == 2'b00) ? 4'b1110 : 
                            (multiplexing_counter[1:0] == 2'b01) ? 4'b1101 : 
                            (multiplexing_counter[1:0] == 2'b10) ? 4'b1011 : 
                            (multiplexing_counter[1:0] == 2'b11) ? 4'b0111 : 4'b1111;

endmodule
