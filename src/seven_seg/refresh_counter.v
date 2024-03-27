module refresh_counter(
    input clk_10kHz,
    output reg [1:0] refresh_counter=0
);
always @(posedge clk_10kHz) begin
    refresh_counter<= refresh_counter+1;
    
end
endmodule