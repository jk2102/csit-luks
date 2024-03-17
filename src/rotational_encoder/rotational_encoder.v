/*******************************************************************
* Module Name: Rotational Encoder
* 
* Description: 
* This module handles inputs from rotational encoder and a pushbutton. It's designed
* to increment or decrement a 4-bit encoder counter (enc_counter) based on the rotation 
* direction and increment a 12-bit pushbutton counter (pb_cnt) when the pushbutton (PB) is pressed. .
* [Optional: Additional notes on functionality, special cases, or constraints.]
*     
* Inputs:
* clk   - 1-bit clock input signal for synchronizing the module's operations.
* rstn  - 1-bit active low reset signal for initializing or resetting the module's internal state.
* A     - 1-bit encoder input channel A 
* B     - 1-bit encoder input channel B
* PB    - 1-bit pushbutton input     
* [Document other inputs here if applicable...]
*
* Outputs:
* [Document outputs here if applicable...]
* enc             4-bit encoder state  
* pb_press_type   2-bit output for press determination 
*
* Note: 1kHz (1ms)
* 0 -> not pressed 
* 1 -> short press (pb_cnt 1 to 400)
* 2 -> long press (pb_cnt 400 to 1200)
* 3 -> realy long press (1001 to 4095)
* 
* Author: Jurica Gaspar
* Date: [Date, e.g., "2024-03-17"]
*******************************************************************/

module rotational_encoder (
    input clk,                      // Clock input
    input rstn,                     // Active low reset input
    input A,                        // Encoder input A
    input B,                        // Encoder input B
    input PB,                       // Pushbutton input 
    output reg [3:0] enc,           // Encoder output value (4-bit)
    output reg [1:0] pb_press_type  // Pushbutton press type (2-bit) 
 );   
                                        
reg lastA, lastB;                   // Registers to store the last state of A and B
reg [3:0]  tmp_enc;                    
reg [11:0] pb_cnt;          
reg [1:0]  tmp_press; 
        
// Initialize or update the last state of A and B
always @(posedge clk) begin
    if (!rstn) begin
        lastA <= 0;
        lastB <= 0;
        enc <= 4'b1000;         
        tmp_enc <= 4'b1000; 
        pb_cnt <=  12'b000000000000;
        tmp_press <= 2'b00; 
        pb_press_type <= 2'b00;        
    end 

    else begin
        // Check for CW movement (A rising edge before B)
        if (A && !lastA && !B) tmp_enc <= tmp_enc + 4'b0001;
        // Check for CCW movement (B rising edge before A)
        else if (B && !lastB && !A) tmp_enc <= tmp_enc - 4'b0001;
        // Update last state
        lastA <= A;
        lastB <= B;

        // Pushbutton released / not pressed  
        if(PB) begin  
            // Debounce filter  
            if(pb_cnt<12'd50) begin
                pb_cnt <=  12'b000000000000;
                tmp_press <= 2'b00;
                end 

            else begin 
                // Short press     
                if(pb_cnt<12'd400) tmp_press <= 2'b01; 
                // Long press
                else if(pb_cnt>=12'd400 && pb_cnt<12'd1200) tmp_press <= 2'b10;
                // Realy long press 
                else tmp_press <= 2'b11; 
                pb_press_type <= tmp_press;
                enc <= tmp_enc;

                // Reset to default values 
                pb_cnt <= 12'b000000000000;
                tmp_press <= 2'b00;     
                tmp_enc <= 4'b1000;         
                end            
        end
        // Pushbutton pressed 
        else begin
            if(pb_cnt<12'd4095) pb_cnt <=  pb_cnt + 12'b000000000001;   // 4095 is max
           else pb_cnt <= 12'd4095;
        end  
    end
end

endmodule
