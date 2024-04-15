/*******************************************************************
* Module Name: Finite State Machine
*
* Description:
* This module [briefly describe the module's purpose and functionality].
* [Optional: Additional notes on functionality, special cases, or constraints.]
*
* Inputs:
* clk - 1-bit clock input signal for synchronizing the module's operations.
* rstn - 1-bit active low reset signal for initializing or resetting the module's internal state.
* [Document other inputs here if applicable...]
* pb_press - 2-bit push button register, differentiates between short, long and extra long press
* enc_count - 4-bit encoder counter register
* LUX_val - 8-bit luxmeter value
* lux_ready - 1-bit input indicating that luxmeter is ready to be read
* fd - 8-bit flash data memory
* 
* Outputs:
* lux_valid - 1-bit to request read from luxmeter
* fd_address - 24-bit flash memory address
* fd_valid - 1-bit to request read from flash memory
* display_out - 4-bit output to 7 segment display
* display_sel - 2-bit output mode select
*
* Outputs:
* [Document outputs here if applicable...]
*
* Author: Jan Furlan
* Date: ["17.3.2024."]
*******************************************************************/


module fsm (
   input   clk,
   input   rstn,

   input   [1:0] pb_press,
   input   [3:0] enc_count,

   input [7:0] LUX_val,
   input lux_ready,
   output reg lux_valid,

   input [7:0] fd,
   input fd_ready,
   output reg [23:0] fd_address,
   output reg fd_valid,

   output reg [3:0] display_out,
   output reg [1:0] display_sel
);

   parameter IDLE  = 3'b000;
   parameter ISO_SEL = 3'b001;
   parameter SS_SEL  = 3'b010;
   parameter F_SEL  = 3'b011;
   parameter EXP_METER = 3'b100;
   parameter EXP_LUT = 3'b101;
   parameter EXP_DISP  = 3'b110;

   reg [2:0] current_state;
   reg [2:0] previous_state;
   reg F_set_flag;

   reg [3:0] ISO_val;
   reg [3:0] SS_val;
   reg [3:0] F_val;

   always @(posedge clk or negedge rstn)
      if (!rstn) begin
         current_state <= IDLE;
         previous_state <= IDLE;
         fd_address <= 24'b000000000000000000000000;
         fd_valid <= 1'b0;
         ISO_val <= 4'b0000;
         SS_val <= 4'b0000;
         F_val <= 4'b0000;
         display_out <= 4'b1000;
         display_sel <= 2'b00;
         lux_valid <= 1'b0;
         F_set_flag <= 1'b0;
      end
      else
         case (current_state)
            IDLE: begin
               current_state <= ISO_SEL;
               previous_state <= IDLE;
               fd_address <= 24'b000000000000000000000000;
               fd_valid <= 1'b0;
               ISO_val <= 4'b0000;
               SS_val <= 4'b0000;
               F_val <= 4'b0000;
               display_out <= 4'b1000;
               display_sel <= 2'b00;
               lux_valid <= 1'b0;
               F_set_flag <= 1'b0;
            end

            ISO_SEL: begin
               if (pb_press == 2'b01)
                  current_state <= SS_SEL;
               else
                  current_state <= ISO_SEL;
               ISO_val <= enc_count;
               display_sel <= 2'b00;
               display_out <= enc_count;
            end

            SS_SEL: begin
               if (pb_press == 2'b01)
                  current_state <= F_SEL;
               else if (pb_press == 2'b10 && F_set_flag)
                  current_state <= EXP_METER;
               else if (pb_press == 2'b11)
                  current_state <= ISO_SEL;
               else
                  current_state <= SS_SEL;
               previous_state <= SS_SEL;
               SS_val <= enc_count;
               display_sel <= 2'b01;
               display_out <= enc_count;

            end

            F_SEL: begin
               if (pb_press == 2'b01)
                  current_state <= SS_SEL;
               else if (pb_press == 2'b10)
                  current_state <= EXP_METER;
               else if (pb_press == 2'b11)
                  current_state <= ISO_SEL;
               else
                  current_state <= F_SEL;
               F_set_flag <= 1'b1;
               previous_state <= F_SEL;
               F_val <= enc_count;
               display_sel <= 2'b10;
               display_out <= enc_count;
            end

            EXP_METER: begin
               if (lux_ready == 1'b1) begin
                  current_state <= EXP_LUT;
                  lux_valid <= 1'b0;
               end else begin
                  current_state <= EXP_METER;
                  lux_valid <= 1'b1;
               end
               display_sel <= 2'b11;
               display_out <= 4'b0010;
            end

            EXP_LUT: begin
               if (fd_ready) begin
                  current_state <= EXP_DISP;
                  fd_valid <= 1'b0;
               end else begin
                  current_state <= EXP_LUT;
                  fd_valid <= 1'b1;
               end
               fd_address <= {4'b0000, ISO_val, SS_val, F_val, LUX_val};
               display_sel <= 2'b11;
               display_out <= 4'b0010;
            end

            EXP_DISP: begin
               if(pb_press == 2'b01)
                  current_state <= EXP_METER;
               else if (pb_press == 2'b10)
                  current_state <= previous_state;
               else if (pb_press == 2'b11)
                  current_state <= ISO_SEL;
               else
                  current_state <= EXP_DISP;
               display_sel <= 2'b11;
               display_out <= {1'b0, fd[2:0]};
               fd_valid <= 1'b0;
            end

            default : begin  // Fault Recovery
               current_state <= IDLE;
            end
         endcase

endmodule
