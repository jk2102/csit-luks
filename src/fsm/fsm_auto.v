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


   parameter IDLE  = 4'b0000;
   parameter ISO_SEL = 4'b0001;
   parameter SS_SEL  = 4'b0010;
   parameter F_SEL  = 4'b0011;
   parameter EXP_METER = 4'b0100;
   parameter EXP_LUT = 4'b0101;
   parameter EXP_DISP  = 4'b0110;
   parameter AUTO_MODE  = 4'b0111;
   parameter AUTO_LUT = 4'b1000;
   parameter AUTO_DISP_SS = 4'b1001;
   parameter AUTO_DISP_F = 4'b1010;

   reg [3:0] current_state;
   reg [3:0] previous_state;
   reg [3:0] last_normal_state;
   reg [3:0] last_auto_state;
   reg F_set_flag;

   reg [3:0] ISO_val;
   reg [3:0] SS_val;
   reg [3:0] F_val;

   always @(posedge clk or negedge rstn)
      if (!rstn) begin
         current_state <= IDLE;
         previous_state <= IDLE;
         last_normal_state <= SS_SEL;
         last_auto_state <= AUTO_DISP_SS;
         fd_address <= 24'b000000000000000000000000;
         fd_valid <= 1'b0;
         ISO_val <= 4'b0000;
         SS_val <= 4'b0000;
         F_val <= 4'b0000;
         display_out <= 4'b0000;
         display_sel <= 2'b00;
         lux_valid <= 1'b0;
         F_set_flag <= 1'b0;
      end
      else
         case (current_state)
            IDLE: begin
               current_state <= ISO_SEL;
               previous_state <= IDLE;
               last_normal_state <= SS_SEL;
               last_auto_state <= AUTO_DISP_SS;
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
               else if (pb_press == 2'b11)
                  current_state <= AUTO_MODE;
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
                  current_state <= AUTO_MODE;
               else
                  current_state <= SS_SEL;
               last_normal_state <= SS_SEL;
               SS_val <= enc_count;
               display_sel <= 2'b01;
               display_out <= enc_count;
            end

            F_SEL: begin
               if (pb_press == 2'b01)
                  current_state <=  SS_SEL;
               else if (pb_press == 2'b10) begin
                  previous_state <= F_SEL;
                  current_state <= EXP_METER;
               end else if (pb_press == 2'b11)
                  current_state <= AUTO_MODE;
               else
                  current_state <= F_SEL;
               F_set_flag <= 1'b1;
               last_normal_state <= F_SEL;
               F_val <= enc_count;
               display_sel <= 2'b10;
               display_out <= enc_count;
            end

            EXP_METER: begin
               if (lux_ready == 1'b1 && previous_state == F_SEL) begin
                  current_state <= EXP_LUT;
                  lux_valid <= 1'b0;
               end else if (lux_ready == 1'b1 && previous_state == AUTO_MODE) begin
                  current_state <= AUTO_LUT;
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
               end else
                  current_state <= EXP_LUT;
               fd_address <= {4'b0000, ISO_val, SS_val, F_val, LUX_val};
               fd_valid <= 1'b1;
               display_sel <= 2'b11;
               display_out <= 4'b0010;
            end

            EXP_DISP: begin
               if(pb_press == 2'b01)
                  current_state <= EXP_METER;
               else if (pb_press == 2'b10)
                  current_state <= last_normal_state;
               else if (pb_press == 2'b11)
                  current_state <= AUTO_MODE;
               else
                  current_state <= EXP_DISP;
               display_sel <= 2'b11;
               display_out <= {1'b0, fd[2:0]};
            end

            AUTO_MODE: begin
               if (pb_press == 2'b01) begin
                  previous_state <= AUTO_MODE;
                  current_state <= EXP_METER;
               end else if (pb_press == 2'b11)
                  current_state <= last_normal_state;
               else
                  current_state <= AUTO_MODE;
               display_sel <= 2'b11;
               display_out <= 4'b0101;
            end

            AUTO_LUT: begin
               if (fd_ready && (last_auto_state == AUTO_DISP_SS)) begin
                  current_state <= AUTO_DISP_SS;
                  fd_valid <= 1'b0;
               end else if (fd_ready && (last_auto_state == AUTO_DISP_F)) begin
                  current_state <= AUTO_DISP_F;
                  fd_valid <= 1'b0;
               end else
                  current_state <= AUTO_LUT;
               fd_address <= {ISO_val, LUX_val, 12'b000000000000};
               fd_valid <= 1'b0;
               display_sel <= 2'b11;
               display_out <= 4'b0101;
            end

            AUTO_DISP_SS: begin
               if (pb_press == 2'b01)
                  current_state <= AUTO_DISP_F;
               else if (pb_press == 2'b10) begin
                  previous_state <= AUTO_MODE;
                  last_auto_state <= AUTO_DISP_SS;
                  current_state <= EXP_METER;
               end else if (pb_press == 2'b11)
                  current_state <= last_normal_state;
               else
                  current_state <= AUTO_DISP_SS;
               display_sel <= 2'b01;
               display_out <= fd[3:0];
            end

            AUTO_DISP_F: begin
               if (pb_press == 2'b01)
                  current_state <= AUTO_DISP_SS;
               else if (pb_press == 2'b10) begin
                  previous_state <= AUTO_MODE;
                  last_auto_state <= AUTO_DISP_F;
                  current_state <= EXP_METER;
               end else if (pb_press == 2'b11)
                  current_state <= last_normal_state;
               else
                  current_state <= AUTO_DISP_F;
               display_sel <= 2'b10;
               display_out <= fd[7:4];
            end

            default : begin  // Fault Recovery
               current_state <= IDLE;
            end
         endcase

endmodule
