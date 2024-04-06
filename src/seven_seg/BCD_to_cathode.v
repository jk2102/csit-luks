module BCD_to_cathode (
    input [3:0] digit,
    output reg [7:0] cathode=0 ;
);

always @(digit) begin
    
    case (digit)
       4'd0: cathode= 8'b11000000; // 0
       4'd1: cathode= 8'b11111001; // 1
       4'd2: cathode= 8'b10110000; // 2
       4'd3: cathode= 8'b10110000; // 3
       4'd4: cathode= 8'b10011001; // 4
       4'd5: cathode= 8'b10010010; // 5
       4'd6: cathode= 8'b10000010; // 6
       4'd7: cathode= 8'b10001111; // 7
       4'd8: cathode= 
        default: 
    endcase
end
    
endmodule