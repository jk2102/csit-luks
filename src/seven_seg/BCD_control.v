module BCD_control (
    input [3:0] digit_1,
    input [3:0] digit_2,
    input [3:0] digit_3,
    input [3:0] digit_4,
    input [1:0] refresh_counter,
    output reg [3:0] one_digit=0 

);
    always @(refresh_counter) begin
        case (refresh_counter)
            2'd0: one_digit= digit_1;
            2'd1: one_digit= digit_2;
            2'd2: one_digit= digit_3;
            2'd3: one_digit= digit_4;

            default: anode=4'b1111;
        endcase
    end
endmodule