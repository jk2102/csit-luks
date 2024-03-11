/*******************************************************************
* Module Name: Rotational Encoder
* 
* Description: 
* This module handles inputs from rotational encoder and a pushbutton.It's designed
* to increment or decrement a 4-bit encoder counter (enc_counter) based on the rotation 
* direction and increment a 12-bit pushbutton counter (pb_cnt) when the pushbutton (PB) is pressed. .
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
* Author: Jurica Gašpar
* Date: [Date, e.g., "2024-03-11"]
*******************************************************************/


module rotational_encoder (
    input clk,                      // Clock input
    input reset_n,                  // Active low reset input
    input A,                        // Encoder input A
    input B,                        // Encoder input B
    input PB,                       // Pushbutton  
    output reg [3:0] enc_counter,   // 4-bit encoder counter 
    output reg [11:0] pb_cnt;       // 12-bit pushbutton counter  
);

    reg lastA, lastB; // Registers to store the last state of A and B
reg lastPB;       // Registers to store the last PB state 
 

// Initialize or update the last state of A and B
always @(posedge clk) begin
    if (!reset_n) begin
        lastA <= 0;
        lastB <= 0;
        enc_counter <= 4'b1000;         // Reset counter to 8
        lastPB <= 1; 
        pb_cnt <=  12'b000000000000;    // Reset counter to 0

    end else begin
        // Check for CW movement (A rising edge before B)
        if (A && !lastA && !B) begin
            enc_counter <= enc_counter + 4'b0001;
        end
        // Check for CCW movement (B rising edge before A)
        else if (B && !lastB && !A) begin
            enc_counter <= enc_counter - 4'b0001;
        end
        // Update last state
        lastA <= A;
        lastB <= B;
        
        // Pushbutton released / not pressed  
        if(PB)
        {  
          lastPB <= 1;   
          pb_cnt <=  12'b000000000000;             
        }
        // Pushbutton pressed 
        else 
        {
          lastPB <= 0;
          pb_cnt <=  pb_cnt + 12'b000000000001;   // 4095 is max
        }
         
    end
end

endmodule
