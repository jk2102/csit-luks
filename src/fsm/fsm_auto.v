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

   input [31:0] fd,
   input fd_ready,
   output reg [23:0] fd_address,
   output reg fd_valid,

   output reg [3:0] ISO_val,
   output reg [3:0] SS_val,
   output reg [3:0] F_val,
   output reg [2:0] EXP_val,
   output reg [1:0] input_sel,
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

   always @(posedge clk)
      if (rstn) begin
         current_state <= IDLE;
         previous_state <= IDLE;
         last_normal_state <= SS_SEL;
         fd_address <= 8'b00000000;
         fd_valid <= 1'b0;
         ISO_val <= 4'b1000;
         SS_val <= 4'b1000;
         F_val <= 4'b1000;
         EXP_val <= 3'b000;
         selectInput <= 2'b00;
         lux_valid <= 1'b0;
      end
      else
         case (current_state)
            IDLE: begin
               current_state <= ISO_SEL;
               fd_address <= 8'b00000000;
               fd_valid <= 1'b0;
               ISO_val <= 4'b1000;
               SS_val <= 4'b1000;
               F_val <= 4'b1000;
               EXP_val <= 3'b000;
               selectInput <= 2'b00;
               lux_valid <= 1'b0;
            end

            ISO_SEL: begin
               if (pb_press == 2'b01)
                  current_state <= SS_SEL;
               else if (pb_press == 2'b11)
                  current_state <= AUTO_MODE;
               else
                  current_state <= ISO_SEL;
               ISO_val <= enc_count;
               input_sel <= 2'b00;
            end

            SS_SEL: begin
               if (pb_press == 2'b01)
                  current_state <= F_SEL;
               else if (pb_press == 2'b11)
                  current_state <= AUTO_MODE;
               else
                  current_state <= SS_SEL;
               last_normal_state <= SS_SEL
               SS_val <= enc_count;
               input_sel <= 2'b01;
            end

            F_SEL: begin
               if (pb_press == 2'b01)
                  current_state <= EXP_METER;
               else if (pb_press == 2'b10)
                  current_state <= SS_SEL;
               else if (pb_press == 2'b11)
                  current_state <= AUTO_MODE;
               else
                  current_state <= F_SEL;
               last_normal_state <= F_SEL;
               SS_val <= enc_count;
               input_sel <= 2'b10;
            end

            EXP_METER: begin
               if (lux_ready == 1'b1 && previous_state == F_SEL)
                  current_state <= EXP_LUT;
               else if (lux_ready == 1'b1 && previous_state == AUTO_MODE)
                  current_state <= AUTO_LUT;
               else
                  current_state <= EXP_METER;
               lux_valid <= 1'b1;
            end

            EXP_LUT: begin
               if (fd_ready)
                  current_state <= EXP_DISP;
               else
                  current_state <= EXP_LUT;
               fd_address <= {ISO_val, SS_val, F_val, LUX_val};
               fd_valid <= 1'b1;
            end

            EXP_DISP: begin
               if(pb_press == 2'b01)
                  current_state <= EXP_METER;
               else if (pb_press == 2'b10)
                  current_state <= SS_SEL;
               else if (pb_press == 2'b11)
                  last_normal_state <= SS_SEL;
                  current_state <= AUTO_MODE;
               else
                  current_state <= EXP_DISP;
               input_sel <= 2'b11;
               EXP_val <= fd;
            end

            AUTO_MODE: begin
               if (pb_press == 2'b01)
                  previous_state <= AUTO_MODE;
                  current_state <= EXP_METER;
               else if (pb_press == 2'b11)
                  current_state <= last_normal_state;
               else
                  current_state <= AUTO_MODE;
               input_sel <= 2'b11;
               EXP_val <= 3'b101;
            end

            AUTO_LUT: begin
               if (fd_ready && (last_auto_state == AUTO_DISP_SS))
                  current_state <= AUTO_DISP_SS;
               else if (fd_ready && (last_auto_state == AUTO_DISP_F))
                  current_state <= AUTO_DISP_F;
               else
                  current_state <= AUTO_LUT;
               fd_address <= ({ISO_val, LUX_val} || (24'b000000000000000000001000));
               fd_valid <= 1'b1;
            end

            AUTO_DISP_SS: begin
               if (pb_press == 2'b01)
                  current_state <= AUTO_DISP_F;
               else if (pb_press == 2'b10)
                  previous_state <= AUTO_MODE;
                  last_auto_state <= AUTO_DISP_SS,
                  current_state <= EXP_METER;
               else if (pb_press == 2'b11)
                  current_state <= last_normal_state;
               else
                  current_state <= AUTO_DISP_SS;
               SS_val <= fd[3:0];
               input_sel <= 2'b01;
            end

            AUTO_DISP_F: begin
               if (pb_press == 2'b01)
                  current_state <= AUTO_DISP_SS;
               else if (pb_press == 2'b10)
                  previous_state <= AUTO_MODE;
                  last_auto_state <= AUTO_DISP_F;
                  current_state <= EXP_METER;
               else if (pb_press == 2'b11)
                  current_state <= last_normal_state;
               else
                  current_state <= AUTO_DISP_F;
               F_val <= fd[7:4];
               input_sel <= 2'b10;
            end

            default : begin  // Fault Recovery
               current_state <= IDLE;
            end
         endcase

endmodule
