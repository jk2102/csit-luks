/*******************************************************************
* Module Name: Rotational Encoder
* 
* Description: 
* This module handles inputs from rotational encoder and a pushbutton. It's designed
* to increment or decrement a 4-bit encoder counter (enc_counter) based on the rotation 
* direction and increment a 12-bit pushbutton counter (pb_cnt) when the pushbutton (PB) is pressed.
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
* pb_press_type   2-bit output for press type determination 
*
* Note: 1kHz (1ms)
* 0 (2'b00) -> not pressed  (or filtered)
* 1 (2'b01) -> short press  (pb_cnt 50 to 400)
* 2 (2'b10) -> normal press (pb_cnt 400 to 1200)
* 3 (2'b11) -> long press   (1200 to 4095)
* 
* Author: Jurica Gaspar
* Date: [Date, e.g., "2024-03-25"]
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
reg [11:0] pb_cnt;          
     
// Initialize or update the last state of A and B
always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        lastA <= 0;
        lastB <= 0;
        // Default encoder      
        enc <= 4'b1000;   
        // Default pushbutton 
        pb_cnt <=  12'b000000000000;
        pb_press_type <= 2'b00;        
    end 

    else begin
        // Check for CW movement (A rising edge before B)
        if (A && !lastA && !B) enc <= enc + 4'b0001;
        // Check for CCW movement (B rising edge before A)
        else if (B && !lastB && !A) enc <= enc - 4'b0001;
        // Update last state
        lastA <= A;
        lastB <= B;

        // Pushbutton pressed 
        if(PB == 1'b0) begin
            if(pb_cnt<12'd4095) pb_cnt <=  pb_cnt + 12'b000000000001;   
            else pb_cnt <= 12'd4095;
        end  

        // Pushbutton released / not pressed  
        if(PB) begin 
            if(pb_cnt<12'd50) pb_press_type <= 2'b00;                       // not pressed/filtered bad press  
            if(pb_cnt>=12'd50 && pb_cnt<12'd400) pb_press_type <= 2'b01;    // short press 
            if(pb_cnt>=12'd400 && pb_cnt<12'd3000) pb_press_type <= 2'b10;  // normal press 
            if(pb_cnt>=12'd3000) pb_press_type <= 2'b11;                    // long press   
            
            if(pb_press_type!=2'b00) begin 
                pb_press_type <= 2'b00;
                pb_cnt <=  12'b000000000000;
                enc <= 4'b1000;  
            end       
        end
    end
end

endmodule
