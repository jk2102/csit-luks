// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sun Apr  7 14:00:49 2024
// Host        : JKUNDRATALAPTOP running 64-bit major release  (build 9200)
// Command     : write_verilog -force ./fpga_output/fpga_netlist.v
// Design      : fpga_top_lvl
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "7f67d057" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module fpga_top_lvl
   (clk,
    btnC,
    clk_1kHz,
    seg,
    dp,
    an,
    A,
    B,
    PB);
  input clk;
  input btnC;
  output clk_1kHz;
  output [6:0]seg;
  output dp;
  output [3:0]an;
  input A;
  input B;
  input PB;

  wire \<const0> ;
  wire \<const1> ;
  wire A;
  wire A_IBUF;
  wire B;
  wire B_IBUF;
  wire PB;
  wire PB_IBUF;
  wire [3:0]an;
  wire [3:0]an_OBUF;
  wire btnC;
  wire btnC_IBUF;
  wire clk;
  wire clk_1kHz;
  wire clk_1kHz_OBUF;
  wire clk_1kHz_OBUF_BUFG;
  wire clk_1kHz_i_1_n_0;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [15:0]counter;
  wire \counter[15]_i_1_n_0 ;
  wire \counter[15]_i_3_n_0 ;
  wire \counter[15]_i_4_n_0 ;
  wire \counter_reg[12]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire dp;
  wire dp_OBUF;
  wire [15:0]p_1_in;
  wire [6:0]seg;
  wire [6:0]seg_OBUF;
  wire [3:0]\NLW_counter_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[4]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[8]_i_1_CO_UNCONNECTED ;

  IBUF A_IBUF_inst
       (.I(A),
        .O(A_IBUF));
  IBUF B_IBUF_inst
       (.I(B),
        .O(B_IBUF));
  GND GND
       (.G(\<const0> ));
  IBUF PB_IBUF_inst
       (.I(PB),
        .O(PB_IBUF));
  VCC VCC
       (.P(\<const1> ));
  OBUF \an_OBUF[0]_inst 
       (.I(an_OBUF[0]),
        .O(an[0]));
  OBUF \an_OBUF[1]_inst 
       (.I(an_OBUF[1]),
        .O(an[1]));
  OBUF \an_OBUF[2]_inst 
       (.I(an_OBUF[2]),
        .O(an[2]));
  OBUF \an_OBUF[3]_inst 
       (.I(an_OBUF[3]),
        .O(an[3]));
  IBUF btnC_IBUF_inst
       (.I(btnC),
        .O(btnC_IBUF));
  BUFG clk_1kHz_OBUF_BUFG_inst
       (.I(clk_1kHz_OBUF),
        .O(clk_1kHz_OBUF_BUFG));
  OBUF clk_1kHz_OBUF_inst
       (.I(clk_1kHz_OBUF_BUFG),
        .O(clk_1kHz));
  LUT2 #(
    .INIT(4'h6)) 
    clk_1kHz_i_1
       (.I0(\counter[15]_i_1_n_0 ),
        .I1(clk_1kHz_OBUF),
        .O(clk_1kHz_i_1_n_0));
  FDRE clk_1kHz_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(clk_1kHz_i_1_n_0),
        .Q(clk_1kHz_OBUF),
        .R(\<const0> ));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter[0]),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \counter[15]_i_1 
       (.I0(counter[13]),
        .I1(counter[14]),
        .I2(\counter[15]_i_3_n_0 ),
        .I3(counter[11]),
        .I4(counter[12]),
        .I5(counter[15]),
        .O(\counter[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \counter[15]_i_3 
       (.I0(counter[9]),
        .I1(counter[6]),
        .I2(\counter[15]_i_4_n_0 ),
        .I3(counter[7]),
        .I4(counter[8]),
        .I5(counter[10]),
        .O(\counter[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \counter[15]_i_4 
       (.I0(counter[4]),
        .I1(counter[2]),
        .I2(counter[1]),
        .I3(counter[0]),
        .I4(counter[3]),
        .I5(counter[5]),
        .O(\counter[15]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_1_in[0]),
        .Q(counter[0]),
        .R(\counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_1_in[10]),
        .Q(counter[10]),
        .R(\counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_1_in[11]),
        .Q(counter[11]),
        .R(\counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_1_in[12]),
        .Q(counter[12]),
        .R(\counter[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\counter_reg[12]_i_1_n_0 ,\NLW_counter_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(p_1_in[12:9]),
        .S(counter[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_1_in[13]),
        .Q(counter[13]),
        .R(\counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_1_in[14]),
        .Q(counter[14]),
        .R(\counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_1_in[15]),
        .Q(counter[15]),
        .R(\counter[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[15]_i_2 
       (.CI(\counter_reg[12]_i_1_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(p_1_in[15:13]),
        .S({\<const0> ,counter[15:13]}));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_1_in[1]),
        .Q(counter[1]),
        .R(\counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_1_in[2]),
        .Q(counter[2]),
        .R(\counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_1_in[3]),
        .Q(counter[3]),
        .R(\counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_1_in[4]),
        .Q(counter[4]),
        .R(\counter[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\<const0> ),
        .CO({\counter_reg[4]_i_1_n_0 ,\NLW_counter_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(counter[0]),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(p_1_in[4:1]),
        .S(counter[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_1_in[5]),
        .Q(counter[5]),
        .R(\counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_1_in[6]),
        .Q(counter[6]),
        .R(\counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_1_in[7]),
        .Q(counter[7]),
        .R(\counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_1_in[8]),
        .Q(counter[8]),
        .R(\counter[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\NLW_counter_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(p_1_in[8:5]),
        .S(counter[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_1_in[9]),
        .Q(counter[9]),
        .R(\counter[15]_i_1_n_0 ));
  OBUF dp_OBUF_inst
       (.I(dp_OBUF),
        .O(dp));
  OBUF \seg_OBUF[0]_inst 
       (.I(seg_OBUF[0]),
        .O(seg[0]));
  OBUF \seg_OBUF[1]_inst 
       (.I(seg_OBUF[1]),
        .O(seg[1]));
  OBUF \seg_OBUF[2]_inst 
       (.I(seg_OBUF[2]),
        .O(seg[2]));
  OBUF \seg_OBUF[3]_inst 
       (.I(seg_OBUF[3]),
        .O(seg[3]));
  OBUF \seg_OBUF[4]_inst 
       (.I(seg_OBUF[4]),
        .O(seg[4]));
  OBUF \seg_OBUF[5]_inst 
       (.I(seg_OBUF[5]),
        .O(seg[5]));
  OBUF \seg_OBUF[6]_inst 
       (.I(seg_OBUF[6]),
        .O(seg[6]));
  tt_um_csit_luks u_tt_um_csit_luks
       (.A_IBUF(A_IBUF),
        .B_IBUF(B_IBUF),
        .CLK(clk_1kHz_OBUF_BUFG),
        .PB_IBUF(PB_IBUF),
        .an_OBUF(an_OBUF),
        .btnC_IBUF(btnC_IBUF),
        .dp_OBUF(dp_OBUF),
        .seg_OBUF(seg_OBUF));
endmodule

module fsm
   (spi_flash_valid_w,
    seg_OBUF,
    dp_OBUF,
    CLK,
    btnC_IBUF,
    Q,
    pb_press_type_w,
    rd_valid,
    \display_out_reg[3]_0 ,
    \last_auto_state_reg[1]_0 );
  output spi_flash_valid_w;
  output [6:0]seg_OBUF;
  output dp_OBUF;
  input CLK;
  input btnC_IBUF;
  input [1:0]Q;
  input [1:0]pb_press_type_w;
  input rd_valid;
  input [3:0]\display_out_reg[3]_0 ;
  input \last_auto_state_reg[1]_0 ;

  wire \<const1> ;
  wire CLK;
  wire F_set_flag_i_1_n_0;
  wire F_set_flag_reg_n_0;
  wire [1:0]Q;
  wire btnC_IBUF;
  wire [3:0]current_state;
  wire \current_state[0]_i_2_n_0 ;
  wire \current_state[0]_i_3_n_0 ;
  wire \current_state[0]_i_4_n_0 ;
  wire \current_state[0]_i_5_n_0 ;
  wire \current_state[0]_i_6_n_0 ;
  wire \current_state[1]_i_2_n_0 ;
  wire \current_state[1]_i_3_n_0 ;
  wire \current_state[1]_i_4_n_0 ;
  wire \current_state[1]_i_5_n_0 ;
  wire \current_state[2]_i_4_n_0 ;
  wire \current_state[2]_i_5_n_0 ;
  wire \current_state[3]_i_2_n_0 ;
  wire \current_state_reg[2]_i_3_n_0 ;
  wire \current_state_reg_n_0_[0] ;
  wire \current_state_reg_n_0_[1] ;
  wire \current_state_reg_n_0_[2] ;
  wire \current_state_reg_n_0_[3] ;
  wire [3:0]display_out;
  wire \display_out[3]_i_1_n_0 ;
  wire [3:0]\display_out_reg[3]_0 ;
  wire \display_sel[0]_i_1_n_0 ;
  wire \display_sel[1]_i_1_n_0 ;
  wire dp_OBUF;
  wire dp_OBUF_inst_i_2_n_0;
  wire dp_OBUF_inst_i_3_n_0;
  wire dp_OBUF_inst_i_4_n_0;
  wire dp_OBUF_inst_i_5_n_0;
  wire dp_OBUF_inst_i_6_n_0;
  wire dp_OBUF_inst_i_7_n_0;
  wire fd_valid_i_1_n_0;
  wire [1:0]last_auto_state;
  wire \last_auto_state[0]_i_1_n_0 ;
  wire \last_auto_state[1]_i_1_n_0 ;
  wire \last_auto_state_reg[1]_0 ;
  wire [0:0]last_normal_state;
  wire \last_normal_state[0]_i_1_n_0 ;
  wire [1:0]pb_press_type_w;
  wire previous_state0;
  wire \previous_state[0]_i_1_n_0 ;
  wire \previous_state[2]_i_1_n_0 ;
  wire \previous_state_reg_n_0_[0] ;
  wire \previous_state_reg_n_0_[2] ;
  wire rd_valid;
  wire [6:0]seg_OBUF;
  wire \seg_OBUF[0]_inst_i_2_n_0 ;
  wire \seg_OBUF[0]_inst_i_3_n_0 ;
  wire \seg_OBUF[0]_inst_i_4_n_0 ;
  wire \seg_OBUF[0]_inst_i_5_n_0 ;
  wire \seg_OBUF[0]_inst_i_6_n_0 ;
  wire \seg_OBUF[0]_inst_i_7_n_0 ;
  wire \seg_OBUF[1]_inst_i_2_n_0 ;
  wire \seg_OBUF[1]_inst_i_3_n_0 ;
  wire \seg_OBUF[1]_inst_i_4_n_0 ;
  wire \seg_OBUF[1]_inst_i_5_n_0 ;
  wire \seg_OBUF[1]_inst_i_6_n_0 ;
  wire \seg_OBUF[1]_inst_i_7_n_0 ;
  wire \seg_OBUF[2]_inst_i_2_n_0 ;
  wire \seg_OBUF[2]_inst_i_3_n_0 ;
  wire \seg_OBUF[2]_inst_i_4_n_0 ;
  wire \seg_OBUF[2]_inst_i_5_n_0 ;
  wire \seg_OBUF[2]_inst_i_6_n_0 ;
  wire \seg_OBUF[2]_inst_i_7_n_0 ;
  wire \seg_OBUF[3]_inst_i_2_n_0 ;
  wire \seg_OBUF[3]_inst_i_3_n_0 ;
  wire \seg_OBUF[3]_inst_i_4_n_0 ;
  wire \seg_OBUF[3]_inst_i_5_n_0 ;
  wire \seg_OBUF[3]_inst_i_6_n_0 ;
  wire \seg_OBUF[3]_inst_i_7_n_0 ;
  wire \seg_OBUF[4]_inst_i_2_n_0 ;
  wire \seg_OBUF[4]_inst_i_3_n_0 ;
  wire \seg_OBUF[4]_inst_i_4_n_0 ;
  wire \seg_OBUF[4]_inst_i_5_n_0 ;
  wire \seg_OBUF[4]_inst_i_6_n_0 ;
  wire \seg_OBUF[4]_inst_i_7_n_0 ;
  wire \seg_OBUF[5]_inst_i_2_n_0 ;
  wire \seg_OBUF[5]_inst_i_3_n_0 ;
  wire \seg_OBUF[5]_inst_i_4_n_0 ;
  wire \seg_OBUF[5]_inst_i_5_n_0 ;
  wire \seg_OBUF[5]_inst_i_6_n_0 ;
  wire \seg_OBUF[5]_inst_i_7_n_0 ;
  wire \seg_OBUF[6]_inst_i_2_n_0 ;
  wire \seg_OBUF[6]_inst_i_3_n_0 ;
  wire \seg_OBUF[6]_inst_i_4_n_0 ;
  wire \seg_OBUF[6]_inst_i_5_n_0 ;
  wire \seg_OBUF[6]_inst_i_6_n_0 ;
  wire \seg_OBUF[6]_inst_i_7_n_0 ;
  wire [5:0]sel0;
  wire spi_flash_valid_w;

  LUT5 #(
    .INIT(32'hFFFE0008)) 
    F_set_flag_i_1
       (.I0(\current_state_reg_n_0_[0] ),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(F_set_flag_reg_n_0),
        .O(F_set_flag_i_1_n_0));
  FDCE F_set_flag_reg
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(F_set_flag_i_1_n_0),
        .Q(F_set_flag_reg_n_0));
  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'hCCDCCFDC)) 
    \current_state[0]_i_1 
       (.I0(\current_state[0]_i_2_n_0 ),
        .I1(\current_state[0]_i_3_n_0 ),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(\current_state[0]_i_4_n_0 ),
        .O(current_state[0]));
  LUT6 #(
    .INIT(64'h00000000F56FFDEF)) 
    \current_state[0]_i_2 
       (.I0(pb_press_type_w[0]),
        .I1(pb_press_type_w[1]),
        .I2(\current_state_reg_n_0_[0] ),
        .I3(\current_state_reg_n_0_[1] ),
        .I4(last_normal_state),
        .I5(\current_state[0]_i_5_n_0 ),
        .O(\current_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0300030301030101)) 
    \current_state[0]_i_3 
       (.I0(\current_state_reg_n_0_[1] ),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(pb_press_type_w[1]),
        .I4(\current_state_reg_n_0_[0] ),
        .I5(pb_press_type_w[0]),
        .O(\current_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4C1FFFFF4C1F0000)) 
    \current_state[0]_i_4 
       (.I0(last_normal_state),
        .I1(pb_press_type_w[0]),
        .I2(pb_press_type_w[1]),
        .I3(\current_state_reg_n_0_[0] ),
        .I4(\current_state_reg_n_0_[1] ),
        .I5(\current_state[0]_i_6_n_0 ),
        .O(\current_state[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \current_state[0]_i_5 
       (.I0(spi_flash_valid_w),
        .I1(rd_valid),
        .I2(last_auto_state[1]),
        .I3(last_auto_state[0]),
        .I4(\current_state_reg_n_0_[1] ),
        .I5(\current_state_reg_n_0_[0] ),
        .O(\current_state[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h8F808F8F)) 
    \current_state[0]_i_6 
       (.I0(rd_valid),
        .I1(spi_flash_valid_w),
        .I2(\current_state_reg_n_0_[0] ),
        .I3(\previous_state_reg_n_0_[2] ),
        .I4(\previous_state_reg_n_0_[0] ),
        .O(\current_state[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h04340737)) 
    \current_state[1]_i_1 
       (.I0(\current_state[1]_i_2_n_0 ),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state[1]_i_3_n_0 ),
        .I4(\current_state[1]_i_4_n_0 ),
        .O(current_state[1]));
  LUT5 #(
    .INIT(32'h30133323)) 
    \current_state[1]_i_2 
       (.I0(pb_press_type_w[1]),
        .I1(\current_state[1]_i_5_n_0 ),
        .I2(\current_state_reg_n_0_[1] ),
        .I3(\current_state_reg_n_0_[0] ),
        .I4(pb_press_type_w[0]),
        .O(\current_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h220F22FF22FF22FF)) 
    \current_state[1]_i_3 
       (.I0(pb_press_type_w[0]),
        .I1(pb_press_type_w[1]),
        .I2(\current_state_reg_n_0_[0] ),
        .I3(\current_state_reg_n_0_[1] ),
        .I4(rd_valid),
        .I5(spi_flash_valid_w),
        .O(\current_state[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00AF0F8F)) 
    \current_state[1]_i_4 
       (.I0(pb_press_type_w[1]),
        .I1(F_set_flag_reg_n_0),
        .I2(\current_state_reg_n_0_[1] ),
        .I3(pb_press_type_w[0]),
        .I4(\current_state_reg_n_0_[0] ),
        .O(\current_state[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \current_state[1]_i_5 
       (.I0(spi_flash_valid_w),
        .I1(rd_valid),
        .I2(last_auto_state[0]),
        .I3(last_auto_state[1]),
        .I4(\current_state_reg_n_0_[1] ),
        .I5(\current_state_reg_n_0_[0] ),
        .O(\current_state[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h001400140000FFFF)) 
    \current_state[2]_i_1 
       (.I0(\last_auto_state_reg[1]_0 ),
        .I1(\current_state_reg_n_0_[0] ),
        .I2(\current_state_reg_n_0_[1] ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(\current_state_reg[2]_i_3_n_0 ),
        .I5(\current_state_reg_n_0_[3] ),
        .O(current_state[2]));
  LUT5 #(
    .INIT(32'h0F1F3FFF)) 
    \current_state[2]_i_4 
       (.I0(F_set_flag_reg_n_0),
        .I1(pb_press_type_w[0]),
        .I2(pb_press_type_w[1]),
        .I3(\current_state_reg_n_0_[0] ),
        .I4(\current_state_reg_n_0_[1] ),
        .O(\current_state[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h808080802F202020)) 
    \current_state[2]_i_5 
       (.I0(pb_press_type_w[1]),
        .I1(pb_press_type_w[0]),
        .I2(\current_state_reg_n_0_[1] ),
        .I3(\previous_state_reg_n_0_[2] ),
        .I4(\previous_state_reg_n_0_[0] ),
        .I5(\current_state_reg_n_0_[0] ),
        .O(\current_state[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000033F0A0A0000)) 
    \current_state[3]_i_1 
       (.I0(\current_state[3]_i_2_n_0 ),
        .I1(\current_state_reg_n_0_[0] ),
        .I2(\current_state_reg_n_0_[1] ),
        .I3(pb_press_type_w[1]),
        .I4(\current_state_reg_n_0_[2] ),
        .I5(\current_state_reg_n_0_[3] ),
        .O(current_state[3]));
  LUT3 #(
    .INIT(8'h08)) 
    \current_state[3]_i_2 
       (.I0(\previous_state_reg_n_0_[2] ),
        .I1(\previous_state_reg_n_0_[0] ),
        .I2(\current_state_reg_n_0_[0] ),
        .O(\current_state[3]_i_2_n_0 ));
  FDCE \current_state_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(current_state[0]),
        .Q(\current_state_reg_n_0_[0] ));
  FDCE \current_state_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(current_state[1]),
        .Q(\current_state_reg_n_0_[1] ));
  FDCE \current_state_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(current_state[2]),
        .Q(\current_state_reg_n_0_[2] ));
  MUXF7 \current_state_reg[2]_i_3 
       (.I0(\current_state[2]_i_4_n_0 ),
        .I1(\current_state[2]_i_5_n_0 ),
        .O(\current_state_reg[2]_i_3_n_0 ),
        .S(\current_state_reg_n_0_[2] ));
  FDCE \current_state_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(current_state[3]),
        .Q(\current_state_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h8D948890)) 
    \display_out[0]_i_1 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(\current_state_reg_n_0_[0] ),
        .I4(\display_out_reg[3]_0 [0]),
        .O(display_out[0]));
  LUT5 #(
    .INIT(32'h05054440)) 
    \display_out[1]_i_1 
       (.I0(\current_state_reg_n_0_[3] ),
        .I1(\display_out_reg[3]_0 [1]),
        .I2(\current_state_reg_n_0_[1] ),
        .I3(\current_state_reg_n_0_[0] ),
        .I4(\current_state_reg_n_0_[2] ),
        .O(display_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h8D948890)) 
    \display_out[2]_i_1 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(\current_state_reg_n_0_[0] ),
        .I4(\display_out_reg[3]_0 [2]),
        .O(display_out[2]));
  LUT4 #(
    .INIT(16'h07FF)) 
    \display_out[3]_i_1 
       (.I0(\current_state_reg_n_0_[1] ),
        .I1(\current_state_reg_n_0_[0] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[3] ),
        .O(\display_out[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000A0B)) 
    \display_out[3]_i_2 
       (.I0(\display_out_reg[3]_0 [3]),
        .I1(\current_state_reg_n_0_[0] ),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(\current_state_reg_n_0_[1] ),
        .I4(\current_state_reg_n_0_[2] ),
        .O(display_out[3]));
  FDCE \display_out_reg[0] 
       (.C(CLK),
        .CE(\display_out[3]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(display_out[0]),
        .Q(sel0[0]));
  FDCE \display_out_reg[1] 
       (.C(CLK),
        .CE(\display_out[3]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(display_out[1]),
        .Q(sel0[1]));
  FDCE \display_out_reg[2] 
       (.C(CLK),
        .CE(\display_out[3]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(display_out[2]),
        .Q(sel0[2]));
  FDCE \display_out_reg[3] 
       (.C(CLK),
        .CE(\display_out[3]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(display_out[3]),
        .Q(sel0[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hBBAE)) 
    \display_sel[0]_i_1 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(\current_state_reg_n_0_[0] ),
        .I3(\current_state_reg_n_0_[3] ),
        .O(\display_sel[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hEEFC)) 
    \display_sel[1]_i_1 
       (.I0(\current_state_reg_n_0_[1] ),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(\current_state_reg_n_0_[3] ),
        .I3(\current_state_reg_n_0_[0] ),
        .O(\display_sel[1]_i_1_n_0 ));
  FDCE \display_sel_reg[0] 
       (.C(CLK),
        .CE(\display_out[3]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(\display_sel[0]_i_1_n_0 ),
        .Q(sel0[4]));
  FDCE \display_sel_reg[1] 
       (.C(CLK),
        .CE(\display_out[3]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(\display_sel[1]_i_1_n_0 ),
        .Q(sel0[5]));
  MUXF8 dp_OBUF_inst_i_1
       (.I0(dp_OBUF_inst_i_2_n_0),
        .I1(dp_OBUF_inst_i_3_n_0),
        .O(dp_OBUF),
        .S(Q[0]));
  MUXF7 dp_OBUF_inst_i_2
       (.I0(dp_OBUF_inst_i_4_n_0),
        .I1(dp_OBUF_inst_i_5_n_0),
        .O(dp_OBUF_inst_i_2_n_0),
        .S(Q[1]));
  MUXF7 dp_OBUF_inst_i_3
       (.I0(dp_OBUF_inst_i_6_n_0),
        .I1(dp_OBUF_inst_i_7_n_0),
        .O(dp_OBUF_inst_i_3_n_0),
        .S(Q[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FBFFFFF)) 
    dp_OBUF_inst_i_4
       (.I0(sel0[4]),
        .I1(sel0[3]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(sel0[5]),
        .O(dp_OBUF_inst_i_4_n_0));
  LUT6 #(
    .INIT(64'hEEEFFFFFFFFFFFFF)) 
    dp_OBUF_inst_i_5
       (.I0(sel0[5]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[3]),
        .I5(sel0[4]),
        .O(dp_OBUF_inst_i_5_n_0));
  LUT6 #(
    .INIT(64'hEEEEEEEADFDFFFF7)) 
    dp_OBUF_inst_i_6
       (.I0(sel0[4]),
        .I1(sel0[3]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(sel0[5]),
        .O(dp_OBUF_inst_i_6_n_0));
  LUT6 #(
    .INIT(64'hFBBBFFFFFFFFFFFF)) 
    dp_OBUF_inst_i_7
       (.I0(sel0[5]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[3]),
        .I5(sel0[4]),
        .O(dp_OBUF_inst_i_7_n_0));
  LUT5 #(
    .INIT(32'hFFFA0020)) 
    fd_valid_i_1
       (.I0(\current_state_reg_n_0_[0] ),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(\current_state_reg_n_0_[2] ),
        .I3(\current_state_reg_n_0_[1] ),
        .I4(spi_flash_valid_w),
        .O(fd_valid_i_1_n_0));
  FDCE fd_valid_reg
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(fd_valid_i_1_n_0),
        .Q(spi_flash_valid_w));
  LUT6 #(
    .INIT(64'hFFFFFFBF00040101)) 
    \last_auto_state[0]_i_1 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(\current_state_reg_n_0_[1] ),
        .I3(\last_auto_state_reg[1]_0 ),
        .I4(\current_state_reg_n_0_[0] ),
        .I5(last_auto_state[0]),
        .O(\last_auto_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFEFE00000040)) 
    \last_auto_state[1]_i_1 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(\current_state_reg_n_0_[1] ),
        .I3(\last_auto_state_reg[1]_0 ),
        .I4(\current_state_reg_n_0_[0] ),
        .I5(last_auto_state[1]),
        .O(\last_auto_state[1]_i_1_n_0 ));
  FDPE \last_auto_state_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\last_auto_state[0]_i_1_n_0 ),
        .PRE(btnC_IBUF),
        .Q(last_auto_state[0]));
  FDCE \last_auto_state_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(\last_auto_state[1]_i_1_n_0 ),
        .Q(last_auto_state[1]));
  LUT5 #(
    .INIT(32'hFFEE1000)) 
    \last_normal_state[0]_i_1 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(\current_state_reg_n_0_[1] ),
        .I3(\current_state_reg_n_0_[0] ),
        .I4(last_normal_state),
        .O(\last_normal_state[0]_i_1_n_0 ));
  FDCE \last_normal_state_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(\last_normal_state[0]_i_1_n_0 ),
        .Q(last_normal_state));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \previous_state[0]_i_1 
       (.I0(\current_state_reg_n_0_[1] ),
        .I1(\current_state_reg_n_0_[0] ),
        .I2(previous_state0),
        .I3(\previous_state_reg_n_0_[0] ),
        .O(\previous_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \previous_state[2]_i_1 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\current_state_reg_n_0_[3] ),
        .I2(previous_state0),
        .I3(\previous_state_reg_n_0_[2] ),
        .O(\previous_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0004240004000055)) 
    \previous_state[2]_i_2 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(pb_press_type_w[1]),
        .I2(pb_press_type_w[0]),
        .I3(\current_state_reg_n_0_[0] ),
        .I4(\current_state_reg_n_0_[3] ),
        .I5(\current_state_reg_n_0_[1] ),
        .O(previous_state0));
  FDCE \previous_state_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(\previous_state[0]_i_1_n_0 ),
        .Q(\previous_state_reg_n_0_[0] ));
  FDCE \previous_state_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(\previous_state[2]_i_1_n_0 ),
        .Q(\previous_state_reg_n_0_[2] ));
  MUXF8 \seg_OBUF[0]_inst_i_1 
       (.I0(\seg_OBUF[0]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[0]_inst_i_3_n_0 ),
        .O(seg_OBUF[0]),
        .S(Q[0]));
  MUXF7 \seg_OBUF[0]_inst_i_2 
       (.I0(\seg_OBUF[0]_inst_i_4_n_0 ),
        .I1(\seg_OBUF[0]_inst_i_5_n_0 ),
        .O(\seg_OBUF[0]_inst_i_2_n_0 ),
        .S(Q[1]));
  MUXF7 \seg_OBUF[0]_inst_i_3 
       (.I0(\seg_OBUF[0]_inst_i_6_n_0 ),
        .I1(\seg_OBUF[0]_inst_i_7_n_0 ),
        .O(\seg_OBUF[0]_inst_i_3_n_0 ),
        .S(Q[1]));
  LUT6 #(
    .INIT(64'hD8CCC8C8AAAC8008)) 
    \seg_OBUF[0]_inst_i_4 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[3]),
        .O(\seg_OBUF[0]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF627ABFFF)) 
    \seg_OBUF[0]_inst_i_5 
       (.I0(sel0[4]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(sel0[3]),
        .I5(sel0[5]),
        .O(\seg_OBUF[0]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hDCAECCAA8CAEEAFD)) 
    \seg_OBUF[0]_inst_i_6 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[0]),
        .I3(sel0[3]),
        .I4(sel0[1]),
        .I5(sel0[2]),
        .O(\seg_OBUF[0]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7FFFBFFCFFFFF)) 
    \seg_OBUF[0]_inst_i_7 
       (.I0(sel0[0]),
        .I1(sel0[4]),
        .I2(sel0[3]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(sel0[5]),
        .O(\seg_OBUF[0]_inst_i_7_n_0 ));
  MUXF8 \seg_OBUF[1]_inst_i_1 
       (.I0(\seg_OBUF[1]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[1]_inst_i_3_n_0 ),
        .O(seg_OBUF[1]),
        .S(Q[0]));
  MUXF7 \seg_OBUF[1]_inst_i_2 
       (.I0(\seg_OBUF[1]_inst_i_4_n_0 ),
        .I1(\seg_OBUF[1]_inst_i_5_n_0 ),
        .O(\seg_OBUF[1]_inst_i_2_n_0 ),
        .S(Q[1]));
  MUXF7 \seg_OBUF[1]_inst_i_3 
       (.I0(\seg_OBUF[1]_inst_i_6_n_0 ),
        .I1(\seg_OBUF[1]_inst_i_7_n_0 ),
        .O(\seg_OBUF[1]_inst_i_3_n_0 ),
        .S(Q[1]));
  LUT6 #(
    .INIT(64'hDCCD80AAC8E0C189)) 
    \seg_OBUF[1]_inst_i_4 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[3]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(sel0[0]),
        .O(\seg_OBUF[1]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7BAB2B2B)) 
    \seg_OBUF[1]_inst_i_5 
       (.I0(sel0[4]),
        .I1(sel0[2]),
        .I2(sel0[3]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(sel0[5]),
        .O(\seg_OBUF[1]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hDEABCB8AEA88CAA9)) 
    \seg_OBUF[1]_inst_i_6 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\seg_OBUF[1]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFDDFD7BBFFFBF)) 
    \seg_OBUF[1]_inst_i_7 
       (.I0(sel0[4]),
        .I1(sel0[3]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(sel0[5]),
        .O(\seg_OBUF[1]_inst_i_7_n_0 ));
  MUXF8 \seg_OBUF[2]_inst_i_1 
       (.I0(\seg_OBUF[2]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[2]_inst_i_3_n_0 ),
        .O(seg_OBUF[2]),
        .S(Q[0]));
  MUXF7 \seg_OBUF[2]_inst_i_2 
       (.I0(\seg_OBUF[2]_inst_i_4_n_0 ),
        .I1(\seg_OBUF[2]_inst_i_5_n_0 ),
        .O(\seg_OBUF[2]_inst_i_2_n_0 ),
        .S(Q[1]));
  MUXF7 \seg_OBUF[2]_inst_i_3 
       (.I0(\seg_OBUF[2]_inst_i_6_n_0 ),
        .I1(\seg_OBUF[2]_inst_i_7_n_0 ),
        .O(\seg_OBUF[2]_inst_i_3_n_0 ),
        .S(Q[1]));
  LUT6 #(
    .INIT(64'hD8C0CACAC089808C)) 
    \seg_OBUF[2]_inst_i_4 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[3]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\seg_OBUF[2]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF7FF6A66FBBB)) 
    \seg_OBUF[2]_inst_i_5 
       (.I0(sel0[4]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[3]),
        .I5(sel0[5]),
        .O(\seg_OBUF[2]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hDACBCE88CAEE8BB9)) 
    \seg_OBUF[2]_inst_i_6 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[3]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(sel0[0]),
        .O(\seg_OBUF[2]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFDDFFFF7BBFBFBF)) 
    \seg_OBUF[2]_inst_i_7 
       (.I0(sel0[4]),
        .I1(sel0[3]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[5]),
        .O(\seg_OBUF[2]_inst_i_7_n_0 ));
  MUXF8 \seg_OBUF[3]_inst_i_1 
       (.I0(\seg_OBUF[3]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[3]_inst_i_3_n_0 ),
        .O(seg_OBUF[3]),
        .S(Q[0]));
  MUXF7 \seg_OBUF[3]_inst_i_2 
       (.I0(\seg_OBUF[3]_inst_i_4_n_0 ),
        .I1(\seg_OBUF[3]_inst_i_5_n_0 ),
        .O(\seg_OBUF[3]_inst_i_2_n_0 ),
        .S(Q[1]));
  MUXF7 \seg_OBUF[3]_inst_i_3 
       (.I0(\seg_OBUF[3]_inst_i_6_n_0 ),
        .I1(\seg_OBUF[3]_inst_i_7_n_0 ),
        .O(\seg_OBUF[3]_inst_i_3_n_0 ),
        .S(Q[1]));
  LUT6 #(
    .INIT(64'hD8CCC8C8AA2C8008)) 
    \seg_OBUF[3]_inst_i_4 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[3]),
        .O(\seg_OBUF[3]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF7F627ABFFF)) 
    \seg_OBUF[3]_inst_i_5 
       (.I0(sel0[4]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(sel0[3]),
        .I5(sel0[5]),
        .O(\seg_OBUF[3]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hDCAECC2A8CAEEAFD)) 
    \seg_OBUF[3]_inst_i_6 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[0]),
        .I3(sel0[3]),
        .I4(sel0[1]),
        .I5(sel0[2]),
        .O(\seg_OBUF[3]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFBFFCFFFFF)) 
    \seg_OBUF[3]_inst_i_7 
       (.I0(sel0[0]),
        .I1(sel0[4]),
        .I2(sel0[3]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(sel0[5]),
        .O(\seg_OBUF[3]_inst_i_7_n_0 ));
  MUXF8 \seg_OBUF[4]_inst_i_1 
       (.I0(\seg_OBUF[4]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[4]_inst_i_3_n_0 ),
        .O(seg_OBUF[4]),
        .S(Q[0]));
  MUXF7 \seg_OBUF[4]_inst_i_2 
       (.I0(\seg_OBUF[4]_inst_i_4_n_0 ),
        .I1(\seg_OBUF[4]_inst_i_5_n_0 ),
        .O(\seg_OBUF[4]_inst_i_2_n_0 ),
        .S(Q[1]));
  MUXF7 \seg_OBUF[4]_inst_i_3 
       (.I0(\seg_OBUF[4]_inst_i_6_n_0 ),
        .I1(\seg_OBUF[4]_inst_i_7_n_0 ),
        .O(\seg_OBUF[4]_inst_i_3_n_0 ),
        .S(Q[1]));
  LUT6 #(
    .INIT(64'hDA8AC7EEC881E088)) 
    \seg_OBUF[4]_inst_i_4 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(\seg_OBUF[4]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF7F6A7BBFFF)) 
    \seg_OBUF[4]_inst_i_5 
       (.I0(sel0[4]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(sel0[3]),
        .I5(sel0[5]),
        .O(\seg_OBUF[4]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hDEE6CECA8BEFEEAF)) 
    \seg_OBUF[4]_inst_i_6 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[3]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\seg_OBUF[4]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFDFFFFDFFBFFFFF)) 
    \seg_OBUF[4]_inst_i_7 
       (.I0(sel0[4]),
        .I1(sel0[3]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(sel0[5]),
        .O(\seg_OBUF[4]_inst_i_7_n_0 ));
  MUXF8 \seg_OBUF[5]_inst_i_1 
       (.I0(\seg_OBUF[5]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_3_n_0 ),
        .O(seg_OBUF[5]),
        .S(Q[0]));
  MUXF7 \seg_OBUF[5]_inst_i_2 
       (.I0(\seg_OBUF[5]_inst_i_4_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_5_n_0 ),
        .O(\seg_OBUF[5]_inst_i_2_n_0 ),
        .S(Q[1]));
  MUXF7 \seg_OBUF[5]_inst_i_3 
       (.I0(\seg_OBUF[5]_inst_i_6_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_7_n_0 ),
        .O(\seg_OBUF[5]_inst_i_3_n_0 ),
        .S(Q[1]));
  LUT6 #(
    .INIT(64'hD8CACACAC8C9808C)) 
    \seg_OBUF[5]_inst_i_4 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[3]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\seg_OBUF[5]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7BBB7BFF)) 
    \seg_OBUF[5]_inst_i_5 
       (.I0(sel0[4]),
        .I1(sel0[3]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[5]),
        .O(\seg_OBUF[5]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hDACECAEFC7EFEEBF)) 
    \seg_OBUF[5]_inst_i_6 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\seg_OBUF[5]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFDFFFFFFFBFFFFF)) 
    \seg_OBUF[5]_inst_i_7 
       (.I0(sel0[4]),
        .I1(sel0[3]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(sel0[5]),
        .O(\seg_OBUF[5]_inst_i_7_n_0 ));
  MUXF8 \seg_OBUF[6]_inst_i_1 
       (.I0(\seg_OBUF[6]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_3_n_0 ),
        .O(seg_OBUF[6]),
        .S(Q[0]));
  MUXF7 \seg_OBUF[6]_inst_i_2 
       (.I0(\seg_OBUF[6]_inst_i_4_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_5_n_0 ),
        .O(\seg_OBUF[6]_inst_i_2_n_0 ),
        .S(Q[1]));
  MUXF7 \seg_OBUF[6]_inst_i_3 
       (.I0(\seg_OBUF[6]_inst_i_6_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_7_n_0 ),
        .O(\seg_OBUF[6]_inst_i_3_n_0 ),
        .S(Q[1]));
  LUT6 #(
    .INIT(64'h213D32583538115A)) 
    \seg_OBUF[6]_inst_i_4 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(\seg_OBUF[6]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h260606266F7FFFFF)) 
    \seg_OBUF[6]_inst_i_5 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(sel0[3]),
        .O(\seg_OBUF[6]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h23221A5E121B7F2D)) 
    \seg_OBUF[6]_inst_i_6 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[3]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(sel0[1]),
        .O(\seg_OBUF[6]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h272737277F7F7FF7)) 
    \seg_OBUF[6]_inst_i_7 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[3]),
        .O(\seg_OBUF[6]_inst_i_7_n_0 ));
endmodule

module rotational_encoder
   (pb_press_type_w,
    Q,
    \pb_press_type_reg[0]_0 ,
    A_IBUF,
    CLK,
    btnC_IBUF,
    B_IBUF,
    PB_IBUF);
  output [1:0]pb_press_type_w;
  output [3:0]Q;
  output \pb_press_type_reg[0]_0 ;
  input A_IBUF;
  input CLK;
  input btnC_IBUF;
  input B_IBUF;
  input PB_IBUF;

  wire \<const0> ;
  wire \<const1> ;
  wire A_IBUF;
  wire B_IBUF;
  wire CLK;
  wire PB_IBUF;
  wire [3:0]Q;
  wire btnC_IBUF;
  wire \enc[0]_i_1_n_0 ;
  wire \enc[3]_i_1_n_0 ;
  wire \enc[3]_i_3_n_0 ;
  wire \enc[3]_i_4_n_0 ;
  wire lastA;
  wire lastB;
  wire [3:1]p_0_in;
  wire pb_cnt;
  wire [11:1]pb_cnt0;
  wire pb_cnt0_carry__0_n_0;
  wire pb_cnt0_carry_n_0;
  wire \pb_cnt[0]_i_1_n_0 ;
  wire \pb_cnt[10]_i_1_n_0 ;
  wire \pb_cnt[11]_i_2_n_0 ;
  wire \pb_cnt[11]_i_3_n_0 ;
  wire \pb_cnt[11]_i_4_n_0 ;
  wire \pb_cnt[1]_i_1_n_0 ;
  wire \pb_cnt[2]_i_1_n_0 ;
  wire \pb_cnt[3]_i_1_n_0 ;
  wire \pb_cnt[4]_i_1_n_0 ;
  wire \pb_cnt[5]_i_1_n_0 ;
  wire \pb_cnt[6]_i_1_n_0 ;
  wire \pb_cnt[7]_i_1_n_0 ;
  wire \pb_cnt[8]_i_1_n_0 ;
  wire \pb_cnt[9]_i_1_n_0 ;
  wire \pb_cnt_reg_n_0_[0] ;
  wire \pb_cnt_reg_n_0_[10] ;
  wire \pb_cnt_reg_n_0_[11] ;
  wire \pb_cnt_reg_n_0_[1] ;
  wire \pb_cnt_reg_n_0_[2] ;
  wire \pb_cnt_reg_n_0_[3] ;
  wire \pb_cnt_reg_n_0_[4] ;
  wire \pb_cnt_reg_n_0_[5] ;
  wire \pb_cnt_reg_n_0_[6] ;
  wire \pb_cnt_reg_n_0_[7] ;
  wire \pb_cnt_reg_n_0_[8] ;
  wire \pb_cnt_reg_n_0_[9] ;
  wire \pb_press_type[0]_i_1_n_0 ;
  wire \pb_press_type[0]_i_2_n_0 ;
  wire \pb_press_type[0]_i_3_n_0 ;
  wire \pb_press_type[0]_i_4_n_0 ;
  wire \pb_press_type[0]_i_5_n_0 ;
  wire \pb_press_type[1]_i_1_n_0 ;
  wire \pb_press_type[1]_i_2_n_0 ;
  wire \pb_press_type[1]_i_3_n_0 ;
  wire \pb_press_type_reg[0]_0 ;
  wire [1:0]pb_press_type_w;
  wire [3:0]NLW_pb_cnt0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_pb_cnt0_carry__0_CO_UNCONNECTED;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT2 #(
    .INIT(4'hB)) 
    \current_state[2]_i_2 
       (.I0(pb_press_type_w[0]),
        .I1(pb_press_type_w[1]),
        .O(\pb_press_type_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h0155)) 
    \enc[0]_i_1 
       (.I0(Q[0]),
        .I1(pb_press_type_w[0]),
        .I2(pb_press_type_w[1]),
        .I3(PB_IBUF),
        .O(\enc[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FB0404FB)) 
    \enc[1]_i_1 
       (.I0(lastA),
        .I1(A_IBUF),
        .I2(B_IBUF),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\enc[3]_i_3_n_0 ),
        .O(p_0_in[1]));
  LUT5 #(
    .INIT(32'h00007E81)) 
    \enc[2]_i_1 
       (.I0(Q[0]),
        .I1(\enc[3]_i_4_n_0 ),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\enc[3]_i_3_n_0 ),
        .O(p_0_in[2]));
  LUT5 #(
    .INIT(32'hCCDDCFCC)) 
    \enc[3]_i_1 
       (.I0(lastB),
        .I1(\enc[3]_i_3_n_0 ),
        .I2(lastA),
        .I3(A_IBUF),
        .I4(B_IBUF),
        .O(\enc[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFEAAAFFFEAAAB)) 
    \enc[3]_i_2 
       (.I0(\enc[3]_i_3_n_0 ),
        .I1(Q[0]),
        .I2(\enc[3]_i_4_n_0 ),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(p_0_in[3]));
  LUT3 #(
    .INIT(8'hA8)) 
    \enc[3]_i_3 
       (.I0(PB_IBUF),
        .I1(pb_press_type_w[1]),
        .I2(pb_press_type_w[0]),
        .O(\enc[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \enc[3]_i_4 
       (.I0(lastA),
        .I1(A_IBUF),
        .I2(B_IBUF),
        .O(\enc[3]_i_4_n_0 ));
  FDCE \enc_reg[0] 
       (.C(CLK),
        .CE(\enc[3]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(\enc[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE \enc_reg[1] 
       (.C(CLK),
        .CE(\enc[3]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(p_0_in[1]),
        .Q(Q[1]));
  FDCE \enc_reg[2] 
       (.C(CLK),
        .CE(\enc[3]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(p_0_in[2]),
        .Q(Q[2]));
  FDPE \enc_reg[3] 
       (.C(CLK),
        .CE(\enc[3]_i_1_n_0 ),
        .D(p_0_in[3]),
        .PRE(btnC_IBUF),
        .Q(Q[3]));
  FDCE lastA_reg
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(A_IBUF),
        .Q(lastA));
  FDCE lastB_reg
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(B_IBUF),
        .Q(lastB));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pb_cnt0_carry
       (.CI(\<const0> ),
        .CO({pb_cnt0_carry_n_0,NLW_pb_cnt0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\pb_cnt_reg_n_0_[0] ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(pb_cnt0[4:1]),
        .S({\pb_cnt_reg_n_0_[4] ,\pb_cnt_reg_n_0_[3] ,\pb_cnt_reg_n_0_[2] ,\pb_cnt_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pb_cnt0_carry__0
       (.CI(pb_cnt0_carry_n_0),
        .CO({pb_cnt0_carry__0_n_0,NLW_pb_cnt0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(pb_cnt0[8:5]),
        .S({\pb_cnt_reg_n_0_[8] ,\pb_cnt_reg_n_0_[7] ,\pb_cnt_reg_n_0_[6] ,\pb_cnt_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pb_cnt0_carry__1
       (.CI(pb_cnt0_carry__0_n_0),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(pb_cnt0[11:9]),
        .S({\<const0> ,\pb_cnt_reg_n_0_[11] ,\pb_cnt_reg_n_0_[10] ,\pb_cnt_reg_n_0_[9] }));
  LUT5 #(
    .INIT(32'h001F1F1F)) 
    \pb_cnt[0]_i_1 
       (.I0(pb_press_type_w[0]),
        .I1(pb_press_type_w[1]),
        .I2(PB_IBUF),
        .I3(\pb_cnt[11]_i_3_n_0 ),
        .I4(\pb_cnt_reg_n_0_[0] ),
        .O(\pb_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000FFFFF00022222)) 
    \pb_cnt[10]_i_1 
       (.I0(\pb_cnt_reg_n_0_[0] ),
        .I1(\pb_cnt[11]_i_3_n_0 ),
        .I2(pb_press_type_w[0]),
        .I3(pb_press_type_w[1]),
        .I4(PB_IBUF),
        .I5(pb_cnt0[10]),
        .O(\pb_cnt[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFD)) 
    \pb_cnt[11]_i_1 
       (.I0(PB_IBUF),
        .I1(pb_press_type_w[1]),
        .I2(pb_press_type_w[0]),
        .O(pb_cnt));
  LUT6 #(
    .INIT(64'h000FFFFF00022222)) 
    \pb_cnt[11]_i_2 
       (.I0(\pb_cnt_reg_n_0_[0] ),
        .I1(\pb_cnt[11]_i_3_n_0 ),
        .I2(pb_press_type_w[0]),
        .I3(pb_press_type_w[1]),
        .I4(PB_IBUF),
        .I5(pb_cnt0[11]),
        .O(\pb_cnt[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FFFFFFF)) 
    \pb_cnt[11]_i_3 
       (.I0(\pb_cnt_reg_n_0_[2] ),
        .I1(\pb_cnt_reg_n_0_[1] ),
        .I2(\pb_cnt_reg_n_0_[6] ),
        .I3(\pb_cnt_reg_n_0_[11] ),
        .I4(\pb_cnt_reg_n_0_[10] ),
        .I5(\pb_cnt[11]_i_4_n_0 ),
        .O(\pb_cnt[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \pb_cnt[11]_i_4 
       (.I0(\pb_cnt_reg_n_0_[5] ),
        .I1(\pb_cnt_reg_n_0_[4] ),
        .I2(\pb_cnt_reg_n_0_[3] ),
        .I3(\pb_cnt_reg_n_0_[9] ),
        .I4(\pb_cnt_reg_n_0_[8] ),
        .I5(\pb_cnt_reg_n_0_[7] ),
        .O(\pb_cnt[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000FFFFF00022222)) 
    \pb_cnt[1]_i_1 
       (.I0(\pb_cnt_reg_n_0_[0] ),
        .I1(\pb_cnt[11]_i_3_n_0 ),
        .I2(pb_press_type_w[0]),
        .I3(pb_press_type_w[1]),
        .I4(PB_IBUF),
        .I5(pb_cnt0[1]),
        .O(\pb_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000FFFFF00022222)) 
    \pb_cnt[2]_i_1 
       (.I0(\pb_cnt_reg_n_0_[0] ),
        .I1(\pb_cnt[11]_i_3_n_0 ),
        .I2(pb_press_type_w[0]),
        .I3(pb_press_type_w[1]),
        .I4(PB_IBUF),
        .I5(pb_cnt0[2]),
        .O(\pb_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000FFFFF00022222)) 
    \pb_cnt[3]_i_1 
       (.I0(\pb_cnt_reg_n_0_[0] ),
        .I1(\pb_cnt[11]_i_3_n_0 ),
        .I2(pb_press_type_w[0]),
        .I3(pb_press_type_w[1]),
        .I4(PB_IBUF),
        .I5(pb_cnt0[3]),
        .O(\pb_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000FFFFF00022222)) 
    \pb_cnt[4]_i_1 
       (.I0(\pb_cnt_reg_n_0_[0] ),
        .I1(\pb_cnt[11]_i_3_n_0 ),
        .I2(pb_press_type_w[0]),
        .I3(pb_press_type_w[1]),
        .I4(PB_IBUF),
        .I5(pb_cnt0[4]),
        .O(\pb_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000FFFFF00022222)) 
    \pb_cnt[5]_i_1 
       (.I0(\pb_cnt_reg_n_0_[0] ),
        .I1(\pb_cnt[11]_i_3_n_0 ),
        .I2(pb_press_type_w[0]),
        .I3(pb_press_type_w[1]),
        .I4(PB_IBUF),
        .I5(pb_cnt0[5]),
        .O(\pb_cnt[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000FFFFF00022222)) 
    \pb_cnt[6]_i_1 
       (.I0(\pb_cnt_reg_n_0_[0] ),
        .I1(\pb_cnt[11]_i_3_n_0 ),
        .I2(pb_press_type_w[0]),
        .I3(pb_press_type_w[1]),
        .I4(PB_IBUF),
        .I5(pb_cnt0[6]),
        .O(\pb_cnt[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000FFFFF00022222)) 
    \pb_cnt[7]_i_1 
       (.I0(\pb_cnt_reg_n_0_[0] ),
        .I1(\pb_cnt[11]_i_3_n_0 ),
        .I2(pb_press_type_w[0]),
        .I3(pb_press_type_w[1]),
        .I4(PB_IBUF),
        .I5(pb_cnt0[7]),
        .O(\pb_cnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000FFFFF00022222)) 
    \pb_cnt[8]_i_1 
       (.I0(\pb_cnt_reg_n_0_[0] ),
        .I1(\pb_cnt[11]_i_3_n_0 ),
        .I2(pb_press_type_w[0]),
        .I3(pb_press_type_w[1]),
        .I4(PB_IBUF),
        .I5(pb_cnt0[8]),
        .O(\pb_cnt[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000FFFFF00022222)) 
    \pb_cnt[9]_i_1 
       (.I0(\pb_cnt_reg_n_0_[0] ),
        .I1(\pb_cnt[11]_i_3_n_0 ),
        .I2(pb_press_type_w[0]),
        .I3(pb_press_type_w[1]),
        .I4(PB_IBUF),
        .I5(pb_cnt0[9]),
        .O(\pb_cnt[9]_i_1_n_0 ));
  FDCE \pb_cnt_reg[0] 
       (.C(CLK),
        .CE(pb_cnt),
        .CLR(btnC_IBUF),
        .D(\pb_cnt[0]_i_1_n_0 ),
        .Q(\pb_cnt_reg_n_0_[0] ));
  FDCE \pb_cnt_reg[10] 
       (.C(CLK),
        .CE(pb_cnt),
        .CLR(btnC_IBUF),
        .D(\pb_cnt[10]_i_1_n_0 ),
        .Q(\pb_cnt_reg_n_0_[10] ));
  FDCE \pb_cnt_reg[11] 
       (.C(CLK),
        .CE(pb_cnt),
        .CLR(btnC_IBUF),
        .D(\pb_cnt[11]_i_2_n_0 ),
        .Q(\pb_cnt_reg_n_0_[11] ));
  FDCE \pb_cnt_reg[1] 
       (.C(CLK),
        .CE(pb_cnt),
        .CLR(btnC_IBUF),
        .D(\pb_cnt[1]_i_1_n_0 ),
        .Q(\pb_cnt_reg_n_0_[1] ));
  FDCE \pb_cnt_reg[2] 
       (.C(CLK),
        .CE(pb_cnt),
        .CLR(btnC_IBUF),
        .D(\pb_cnt[2]_i_1_n_0 ),
        .Q(\pb_cnt_reg_n_0_[2] ));
  FDCE \pb_cnt_reg[3] 
       (.C(CLK),
        .CE(pb_cnt),
        .CLR(btnC_IBUF),
        .D(\pb_cnt[3]_i_1_n_0 ),
        .Q(\pb_cnt_reg_n_0_[3] ));
  FDCE \pb_cnt_reg[4] 
       (.C(CLK),
        .CE(pb_cnt),
        .CLR(btnC_IBUF),
        .D(\pb_cnt[4]_i_1_n_0 ),
        .Q(\pb_cnt_reg_n_0_[4] ));
  FDCE \pb_cnt_reg[5] 
       (.C(CLK),
        .CE(pb_cnt),
        .CLR(btnC_IBUF),
        .D(\pb_cnt[5]_i_1_n_0 ),
        .Q(\pb_cnt_reg_n_0_[5] ));
  FDCE \pb_cnt_reg[6] 
       (.C(CLK),
        .CE(pb_cnt),
        .CLR(btnC_IBUF),
        .D(\pb_cnt[6]_i_1_n_0 ),
        .Q(\pb_cnt_reg_n_0_[6] ));
  FDCE \pb_cnt_reg[7] 
       (.C(CLK),
        .CE(pb_cnt),
        .CLR(btnC_IBUF),
        .D(\pb_cnt[7]_i_1_n_0 ),
        .Q(\pb_cnt_reg_n_0_[7] ));
  FDCE \pb_cnt_reg[8] 
       (.C(CLK),
        .CE(pb_cnt),
        .CLR(btnC_IBUF),
        .D(\pb_cnt[8]_i_1_n_0 ),
        .Q(\pb_cnt_reg_n_0_[8] ));
  FDCE \pb_cnt_reg[9] 
       (.C(CLK),
        .CE(pb_cnt),
        .CLR(btnC_IBUF),
        .D(\pb_cnt[9]_i_1_n_0 ),
        .Q(\pb_cnt_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0F10)) 
    \pb_press_type[0]_i_1 
       (.I0(pb_press_type_w[1]),
        .I1(\pb_press_type[0]_i_2_n_0 ),
        .I2(PB_IBUF),
        .I3(pb_press_type_w[0]),
        .O(\pb_press_type[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0FBF03330FBF0000)) 
    \pb_press_type[0]_i_2 
       (.I0(\pb_press_type[0]_i_3_n_0 ),
        .I1(\pb_press_type[0]_i_4_n_0 ),
        .I2(\pb_cnt_reg_n_0_[11] ),
        .I3(\pb_cnt_reg_n_0_[10] ),
        .I4(\pb_press_type[1]_i_2_n_0 ),
        .I5(\pb_press_type[0]_i_5_n_0 ),
        .O(\pb_press_type[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \pb_press_type[0]_i_3 
       (.I0(\pb_cnt_reg_n_0_[7] ),
        .I1(\pb_cnt_reg_n_0_[8] ),
        .I2(\pb_cnt_reg_n_0_[9] ),
        .O(\pb_press_type[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEAAA)) 
    \pb_press_type[0]_i_4 
       (.I0(\pb_cnt_reg_n_0_[6] ),
        .I1(\pb_cnt_reg_n_0_[5] ),
        .I2(\pb_cnt_reg_n_0_[4] ),
        .I3(\pb_cnt_reg_n_0_[3] ),
        .O(\pb_press_type[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0001111111111111)) 
    \pb_press_type[0]_i_5 
       (.I0(\pb_cnt_reg_n_0_[7] ),
        .I1(\pb_cnt_reg_n_0_[8] ),
        .I2(\pb_cnt_reg_n_0_[2] ),
        .I3(\pb_cnt_reg_n_0_[1] ),
        .I4(\pb_cnt_reg_n_0_[5] ),
        .I5(\pb_cnt_reg_n_0_[4] ),
        .O(\pb_press_type[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0F40)) 
    \pb_press_type[1]_i_1 
       (.I0(pb_press_type_w[0]),
        .I1(\pb_press_type[1]_i_2_n_0 ),
        .I2(PB_IBUF),
        .I3(pb_press_type_w[1]),
        .O(\pb_press_type[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \pb_press_type[1]_i_2 
       (.I0(\pb_press_type[1]_i_3_n_0 ),
        .I1(\pb_cnt_reg_n_0_[11] ),
        .I2(\pb_cnt_reg_n_0_[10] ),
        .I3(\pb_cnt_reg_n_0_[9] ),
        .O(\pb_press_type[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFE000000)) 
    \pb_press_type[1]_i_3 
       (.I0(\pb_cnt_reg_n_0_[5] ),
        .I1(\pb_cnt_reg_n_0_[6] ),
        .I2(\pb_cnt_reg_n_0_[4] ),
        .I3(\pb_cnt_reg_n_0_[7] ),
        .I4(\pb_cnt_reg_n_0_[8] ),
        .O(\pb_press_type[1]_i_3_n_0 ));
  FDCE \pb_press_type_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(\pb_press_type[0]_i_1_n_0 ),
        .Q(pb_press_type_w[0]));
  FDCE \pb_press_type_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(\pb_press_type[1]_i_1_n_0 ),
        .Q(pb_press_type_w[1]));
endmodule

module seven_seg
   (an_OBUF,
    Q,
    CLK,
    btnC_IBUF);
  output [3:0]an_OBUF;
  output [1:0]Q;
  input CLK;
  input btnC_IBUF;

  wire \<const1> ;
  wire CLK;
  wire [1:0]Q;
  wire [3:0]an_OBUF;
  wire btnC_IBUF;
  wire \multiplexing_counter[0]_i_1_n_0 ;
  wire \multiplexing_counter[1]_i_1_n_0 ;

  VCC VCC
       (.P(\<const1> ));
  LUT2 #(
    .INIT(4'hE)) 
    \an_OBUF[0]_inst_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(an_OBUF[0]));
  LUT2 #(
    .INIT(4'hB)) 
    \an_OBUF[1]_inst_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(an_OBUF[1]));
  LUT2 #(
    .INIT(4'hB)) 
    \an_OBUF[2]_inst_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(an_OBUF[2]));
  LUT2 #(
    .INIT(4'h7)) 
    \an_OBUF[3]_inst_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(an_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \multiplexing_counter[0]_i_1 
       (.I0(Q[0]),
        .O(\multiplexing_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \multiplexing_counter[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\multiplexing_counter[1]_i_1_n_0 ));
  FDCE \multiplexing_counter_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(\multiplexing_counter[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE \multiplexing_counter_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(\multiplexing_counter[1]_i_1_n_0 ),
        .Q(Q[1]));
endmodule

module spi_wrapper
   (rd_valid,
    CLK,
    btnC_IBUF,
    spi_flash_valid_w);
  output rd_valid;
  input CLK;
  input btnC_IBUF;
  input spi_flash_valid_w;

  wire CLK;
  wire btnC_IBUF;
  wire rd_valid;
  wire spi_flash_valid_w;

  spimemio spimemio_inst_0
       (.CLK(CLK),
        .btnC_IBUF(btnC_IBUF),
        .rd_valid_reg_0(rd_valid),
        .spi_flash_valid_w(spi_flash_valid_w));
endmodule

module spimemio
   (rd_valid_reg_0,
    CLK,
    btnC_IBUF,
    spi_flash_valid_w);
  output rd_valid_reg_0;
  input CLK;
  input btnC_IBUF;
  input spi_flash_valid_w;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire \FSM_sequential_state[3]_i_1_n_0 ;
  wire \FSM_sequential_state[3]_i_5_n_0 ;
  wire \FSM_sequential_state[3]_i_6_n_0 ;
  wire btnC_IBUF;
  wire \din_tag[0]_i_1_n_0 ;
  wire \din_tag[0]_i_2_n_0 ;
  wire \din_tag[1]_i_1_n_0 ;
  wire \din_tag[1]_i_2_n_0 ;
  wire \din_tag[1]_i_3_n_0 ;
  wire \din_tag_reg_n_0_[0] ;
  wire \din_tag_reg_n_0_[1] ;
  wire din_valid_reg_n_0;
  wire rd_valid_reg_0;
  wire softreset;
  wire spi_flash_valid_w;
  wire [3:0]state__0;
  wire [3:0]state__1;
  wire xfer_n_0;
  wire xfer_n_1;
  wire xfer_n_2;
  wire xfer_n_3;
  wire xfer_resetn_i_1_n_0;
  wire xfer_resetn_i_2_n_0;
  wire xfer_resetn_reg_n_0;

  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state__0[3]),
        .I1(state__0[0]),
        .O(state__1[0]));
  LUT3 #(
    .INIT(8'h06)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(state__0[3]),
        .O(state__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h1450)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state__0[3]),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .O(state__1[2]));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_state[3]_i_1 
       (.I0(softreset),
        .I1(btnC_IBUF),
        .O(\FSM_sequential_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h4002)) 
    \FSM_sequential_state[3]_i_3 
       (.I0(state__0[3]),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .O(state__1[3]));
  LUT6 #(
    .INIT(64'hFFFFFFF000F080F0)) 
    \FSM_sequential_state[3]_i_5 
       (.I0(spi_flash_valid_w),
        .I1(rd_valid_reg_0),
        .I2(state__0[0]),
        .I3(state__0[2]),
        .I4(state__0[1]),
        .I5(state__0[3]),
        .O(\FSM_sequential_state[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state[3]_i_6 
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .O(\FSM_sequential_state[3]_i_6_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:0011,iSTATE0:0100,iSTATE1:0010,iSTATE2:0001,iSTATE3:0000,iSTATE4:1000,iSTATE5:0111,iSTATE6:0110,iSTATE7:1000,iSTATE8:0101" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(CLK),
        .CE(xfer_n_2),
        .D(state__1[0]),
        .Q(state__0[0]),
        .R(\FSM_sequential_state[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:0011,iSTATE0:0100,iSTATE1:0010,iSTATE2:0001,iSTATE3:0000,iSTATE4:1000,iSTATE5:0111,iSTATE6:0110,iSTATE7:1000,iSTATE8:0101" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(CLK),
        .CE(xfer_n_2),
        .D(state__1[1]),
        .Q(state__0[1]),
        .R(\FSM_sequential_state[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:0011,iSTATE0:0100,iSTATE1:0010,iSTATE2:0001,iSTATE3:0000,iSTATE4:1000,iSTATE5:0111,iSTATE6:0110,iSTATE7:1000,iSTATE8:0101" *) 
  FDRE \FSM_sequential_state_reg[2] 
       (.C(CLK),
        .CE(xfer_n_2),
        .D(state__1[2]),
        .Q(state__0[2]),
        .R(\FSM_sequential_state[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:0011,iSTATE0:0100,iSTATE1:0010,iSTATE2:0001,iSTATE3:0000,iSTATE4:1000,iSTATE5:0111,iSTATE6:0110,iSTATE7:1000,iSTATE8:0101" *) 
  FDRE \FSM_sequential_state_reg[3] 
       (.C(CLK),
        .CE(xfer_n_2),
        .D(state__1[3]),
        .Q(state__0[3]),
        .R(\FSM_sequential_state[3]_i_1_n_0 ));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'h000000B8)) 
    \din_tag[0]_i_1 
       (.I0(\din_tag_reg_n_0_[0] ),
        .I1(\din_tag[1]_i_2_n_0 ),
        .I2(\din_tag[0]_i_2_n_0 ),
        .I3(btnC_IBUF),
        .I4(softreset),
        .O(\din_tag[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030004444)) 
    \din_tag[0]_i_2 
       (.I0(state__0[2]),
        .I1(state__0[3]),
        .I2(spi_flash_valid_w),
        .I3(rd_valid_reg_0),
        .I4(state__0[0]),
        .I5(state__0[1]),
        .O(\din_tag[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000000B8)) 
    \din_tag[1]_i_1 
       (.I0(\din_tag_reg_n_0_[1] ),
        .I1(\din_tag[1]_i_2_n_0 ),
        .I2(\din_tag[1]_i_3_n_0 ),
        .I3(btnC_IBUF),
        .I4(softreset),
        .O(\din_tag[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFA8AFA8FFFFFFFF)) 
    \din_tag[1]_i_2 
       (.I0(state__0[3]),
        .I1(state__0[1]),
        .I2(state__0[2]),
        .I3(state__0[0]),
        .I4(rd_valid_reg_0),
        .I5(spi_flash_valid_w),
        .O(\din_tag[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \din_tag[1]_i_3 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(rd_valid_reg_0),
        .I3(spi_flash_valid_w),
        .I4(state__0[3]),
        .O(\din_tag[1]_i_3_n_0 ));
  FDRE \din_tag_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\din_tag[0]_i_1_n_0 ),
        .Q(\din_tag_reg_n_0_[0] ),
        .R(\<const0> ));
  FDRE \din_tag_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\din_tag[1]_i_1_n_0 ),
        .Q(\din_tag_reg_n_0_[1] ),
        .R(\<const0> ));
  FDRE din_valid_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(xfer_n_3),
        .Q(din_valid_reg_n_0),
        .R(\<const0> ));
  FDRE rd_valid_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(xfer_n_0),
        .Q(rd_valid_reg_0),
        .R(\<const0> ));
  FDRE softreset_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(btnC_IBUF),
        .Q(softreset),
        .R(\<const0> ));
  spimemio_xfer xfer
       (.CLK(CLK),
        .E(xfer_n_2),
        .\FSM_sequential_state_reg[0] (\FSM_sequential_state[3]_i_5_n_0 ),
        .\FSM_sequential_state_reg[0]_0 (\FSM_sequential_state[3]_i_6_n_0 ),
        .Q(state__0[3]),
        .btnC_IBUF(btnC_IBUF),
        .\count_reg[3]_0 (xfer_resetn_reg_n_0),
        .din_valid_reg(\din_tag[1]_i_2_n_0 ),
        .din_valid_reg_0(din_valid_reg_n_0),
        .fetch_reg_0(xfer_n_1),
        .rd_valid_reg(xfer_n_0),
        .rd_valid_reg_0(rd_valid_reg_0),
        .softreset(softreset),
        .softreset_reg(xfer_n_3),
        .spi_flash_valid_w(spi_flash_valid_w),
        .\xfer_tag_reg[0]_0 (\din_tag_reg_n_0_[0] ),
        .\xfer_tag_reg[1]_0 (\din_tag_reg_n_0_[1] ));
  LUT6 #(
    .INIT(64'h00000000575757FF)) 
    xfer_resetn_i_1
       (.I0(spi_flash_valid_w),
        .I1(xfer_resetn_i_2_n_0),
        .I2(\FSM_sequential_state[3]_i_6_n_0 ),
        .I3(xfer_n_1),
        .I4(state__0[3]),
        .I5(\FSM_sequential_state[3]_i_1_n_0 ),
        .O(xfer_resetn_i_1_n_0));
  LUT3 #(
    .INIT(8'hA8)) 
    xfer_resetn_i_2
       (.I0(state__0[3]),
        .I1(state__0[1]),
        .I2(state__0[2]),
        .O(xfer_resetn_i_2_n_0));
  FDRE xfer_resetn_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(xfer_resetn_i_1_n_0),
        .Q(xfer_resetn_reg_n_0),
        .R(\<const0> ));
endmodule

module spimemio_xfer
   (rd_valid_reg,
    fetch_reg_0,
    E,
    softreset_reg,
    CLK,
    \count_reg[3]_0 ,
    rd_valid_reg_0,
    btnC_IBUF,
    softreset,
    spi_flash_valid_w,
    \FSM_sequential_state_reg[0] ,
    \FSM_sequential_state_reg[0]_0 ,
    Q,
    din_valid_reg,
    din_valid_reg_0,
    \xfer_tag_reg[1]_0 ,
    \xfer_tag_reg[0]_0 );
  output rd_valid_reg;
  output fetch_reg_0;
  output [0:0]E;
  output softreset_reg;
  input CLK;
  input \count_reg[3]_0 ;
  input rd_valid_reg_0;
  input btnC_IBUF;
  input softreset;
  input spi_flash_valid_w;
  input \FSM_sequential_state_reg[0] ;
  input \FSM_sequential_state_reg[0]_0 ;
  input [0:0]Q;
  input din_valid_reg;
  input din_valid_reg_0;
  input \xfer_tag_reg[1]_0 ;
  input \xfer_tag_reg[0]_0 ;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire [0:0]E;
  wire \FSM_sequential_state[3]_i_4_n_0 ;
  wire \FSM_sequential_state_reg[0] ;
  wire \FSM_sequential_state_reg[0]_0 ;
  wire [0:0]Q;
  wire btnC_IBUF;
  wire count;
  wire \count[0]_i_1_n_0 ;
  wire \count[0]_i_2_n_0 ;
  wire \count[0]_i_3_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count[2]_i_2_n_0 ;
  wire \count[3]_i_1_n_0 ;
  wire \count_reg[3]_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire din_valid_reg;
  wire din_valid_reg_0;
  wire [1:0]dout_tag;
  wire [3:0]dummy_count;
  wire \dummy_count[0]_i_1_n_0 ;
  wire \dummy_count[1]_i_1_n_0 ;
  wire \dummy_count[2]_i_1_n_0 ;
  wire \dummy_count[3]_i_1_n_0 ;
  wire \dummy_count[3]_i_2_n_0 ;
  wire \dummy_count[3]_i_3_n_0 ;
  wire fetch;
  wire fetch_i_1_n_0;
  wire fetch_i_2_n_0;
  wire fetch_reg_0;
  wire flash_clk_i_1_n_0;
  wire flash_csb_i_1_n_0;
  wire [3:3]next_count;
  wire rd_valid_reg;
  wire rd_valid_reg_0;
  wire softreset;
  wire softreset_reg;
  wire spi_flash_valid_w;
  wire xfer_clk;
  wire xfer_csb;
  wire [1:0]xfer_tag;
  wire \xfer_tag[0]_i_1_n_0 ;
  wire \xfer_tag[1]_i_1_n_0 ;
  wire \xfer_tag_reg[0]_0 ;
  wire \xfer_tag_reg[1]_0 ;

  LUT6 #(
    .INIT(64'h0202AA0202020202)) 
    \FSM_sequential_state[3]_i_2 
       (.I0(spi_flash_valid_w),
        .I1(\FSM_sequential_state[3]_i_4_n_0 ),
        .I2(\FSM_sequential_state_reg[0] ),
        .I3(\FSM_sequential_state_reg[0]_0 ),
        .I4(Q),
        .I5(fetch_reg_0),
        .O(E));
  LUT3 #(
    .INIT(8'hDF)) 
    \FSM_sequential_state[3]_i_4 
       (.I0(\count_reg[3]_0 ),
        .I1(fetch_i_2_n_0),
        .I2(din_valid_reg_0),
        .O(\FSM_sequential_state[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_sequential_state[3]_i_7 
       (.I0(fetch),
        .I1(\count_reg[3]_0 ),
        .I2(fetch_i_2_n_0),
        .O(fetch_reg_0));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'h9AAA000000000000)) 
    \count[0]_i_1 
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count[0]_i_2_n_0 ),
        .I2(\count[0]_i_3_n_0 ),
        .I3(xfer_clk),
        .I4(\FSM_sequential_state[3]_i_4_n_0 ),
        .I5(\count_reg[3]_0 ),
        .O(\count[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[0]_i_2 
       (.I0(dummy_count[3]),
        .I1(dummy_count[2]),
        .I2(dummy_count[1]),
        .I3(dummy_count[0]),
        .O(\count[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[0]_i_3 
       (.I0(\count_reg_n_0_[3] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[1] ),
        .O(\count[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h6A000000)) 
    \count[1]_i_1 
       (.I0(\count_reg_n_0_[1] ),
        .I1(count),
        .I2(\count[2]_i_2_n_0 ),
        .I3(\FSM_sequential_state[3]_i_4_n_0 ),
        .I4(\count_reg[3]_0 ),
        .O(\count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA6A000000000000)) 
    \count[2]_i_1 
       (.I0(\count_reg_n_0_[2] ),
        .I1(count),
        .I2(\count[2]_i_2_n_0 ),
        .I3(\count_reg_n_0_[1] ),
        .I4(\FSM_sequential_state[3]_i_4_n_0 ),
        .I5(\count_reg[3]_0 ),
        .O(\count[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000FE00)) 
    \count[2]_i_2 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[3] ),
        .I3(xfer_clk),
        .I4(\count_reg_n_0_[0] ),
        .O(\count[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFB3B0000)) 
    \count[3]_i_1 
       (.I0(\count_reg_n_0_[3] ),
        .I1(\FSM_sequential_state[3]_i_4_n_0 ),
        .I2(count),
        .I3(next_count),
        .I4(\count_reg[3]_0 ),
        .O(\count[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \count[3]_i_2 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[3] ),
        .I4(\count[0]_i_2_n_0 ),
        .O(count));
  LUT5 #(
    .INIT(32'hF0F0E0F0)) 
    \count[3]_i_3 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[3] ),
        .I3(xfer_clk),
        .I4(\count_reg_n_0_[0] ),
        .O(next_count));
  FDRE \count_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\count[0]_i_1_n_0 ),
        .Q(\count_reg_n_0_[0] ),
        .R(\<const0> ));
  FDRE \count_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\count[1]_i_1_n_0 ),
        .Q(\count_reg_n_0_[1] ),
        .R(\<const0> ));
  FDRE \count_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\count[2]_i_1_n_0 ),
        .Q(\count_reg_n_0_[2] ),
        .R(\<const0> ));
  FDRE \count_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\count[3]_i_1_n_0 ),
        .Q(\count_reg_n_0_[3] ),
        .R(\<const0> ));
  LUT4 #(
    .INIT(16'h0002)) 
    din_valid_i_1
       (.I0(\FSM_sequential_state[3]_i_4_n_0 ),
        .I1(din_valid_reg),
        .I2(softreset),
        .I3(btnC_IBUF),
        .O(softreset_reg));
  LUT3 #(
    .INIT(8'h28)) 
    \dummy_count[0]_i_1 
       (.I0(\FSM_sequential_state[3]_i_4_n_0 ),
        .I1(dummy_count[0]),
        .I2(xfer_clk),
        .O(\dummy_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hD200)) 
    \dummy_count[1]_i_1 
       (.I0(xfer_clk),
        .I1(dummy_count[0]),
        .I2(dummy_count[1]),
        .I3(\FSM_sequential_state[3]_i_4_n_0 ),
        .O(\dummy_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hAAA20008)) 
    \dummy_count[2]_i_1 
       (.I0(\FSM_sequential_state[3]_i_4_n_0 ),
        .I1(xfer_clk),
        .I2(dummy_count[1]),
        .I3(dummy_count[0]),
        .I4(dummy_count[2]),
        .O(\dummy_count[2]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dummy_count[3]_i_1 
       (.I0(\count_reg[3]_0 ),
        .O(\dummy_count[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \dummy_count[3]_i_2 
       (.I0(dummy_count[0]),
        .I1(dummy_count[1]),
        .I2(dummy_count[2]),
        .I3(dummy_count[3]),
        .I4(\FSM_sequential_state[3]_i_4_n_0 ),
        .O(\dummy_count[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8AAAA00020000)) 
    \dummy_count[3]_i_3 
       (.I0(\FSM_sequential_state[3]_i_4_n_0 ),
        .I1(dummy_count[2]),
        .I2(dummy_count[0]),
        .I3(dummy_count[1]),
        .I4(xfer_clk),
        .I5(dummy_count[3]),
        .O(\dummy_count[3]_i_3_n_0 ));
  FDRE \dummy_count_reg[0] 
       (.C(CLK),
        .CE(\dummy_count[3]_i_2_n_0 ),
        .D(\dummy_count[0]_i_1_n_0 ),
        .Q(dummy_count[0]),
        .R(\dummy_count[3]_i_1_n_0 ));
  FDRE \dummy_count_reg[1] 
       (.C(CLK),
        .CE(\dummy_count[3]_i_2_n_0 ),
        .D(\dummy_count[1]_i_1_n_0 ),
        .Q(dummy_count[1]),
        .R(\dummy_count[3]_i_1_n_0 ));
  FDRE \dummy_count_reg[2] 
       (.C(CLK),
        .CE(\dummy_count[3]_i_2_n_0 ),
        .D(\dummy_count[2]_i_1_n_0 ),
        .Q(dummy_count[2]),
        .R(\dummy_count[3]_i_1_n_0 ));
  FDRE \dummy_count_reg[3] 
       (.C(CLK),
        .CE(\dummy_count[3]_i_2_n_0 ),
        .D(\dummy_count[3]_i_3_n_0 ),
        .Q(dummy_count[3]),
        .R(\dummy_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h7)) 
    fetch_i_1
       (.I0(fetch_i_2_n_0),
        .I1(\count_reg[3]_0 ),
        .O(fetch_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
    fetch_i_2
       (.I0(xfer_clk),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[3] ),
        .I3(\count_reg_n_0_[1] ),
        .I4(\count[0]_i_2_n_0 ),
        .I5(\count_reg_n_0_[2] ),
        .O(fetch_i_2_n_0));
  FDRE fetch_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(fetch_i_1_n_0),
        .Q(fetch),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h0256000000000000)) 
    flash_clk_i_1
       (.I0(xfer_clk),
        .I1(\count[0]_i_2_n_0 ),
        .I2(\count[0]_i_3_n_0 ),
        .I3(xfer_csb),
        .I4(\FSM_sequential_state[3]_i_4_n_0 ),
        .I5(\count_reg[3]_0 ),
        .O(flash_clk_i_1_n_0));
  FDRE flash_clk_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(flash_clk_i_1_n_0),
        .Q(xfer_clk),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    flash_csb_i_1
       (.I0(xfer_csb),
        .I1(\FSM_sequential_state[3]_i_4_n_0 ),
        .I2(\count_reg[3]_0 ),
        .O(flash_csb_i_1_n_0));
  FDRE flash_csb_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(flash_csb_i_1_n_0),
        .Q(xfer_csb),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h000000000000AAEA)) 
    rd_valid_i_1
       (.I0(rd_valid_reg_0),
        .I1(fetch_reg_0),
        .I2(dout_tag[0]),
        .I3(dout_tag[1]),
        .I4(btnC_IBUF),
        .I5(softreset),
        .O(rd_valid_reg));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hB800)) 
    \xfer_tag[0]_i_1 
       (.I0(xfer_tag[0]),
        .I1(\FSM_sequential_state[3]_i_4_n_0 ),
        .I2(\xfer_tag_reg[0]_0 ),
        .I3(\count_reg[3]_0 ),
        .O(\xfer_tag[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hB800)) 
    \xfer_tag[1]_i_1 
       (.I0(xfer_tag[1]),
        .I1(\FSM_sequential_state[3]_i_4_n_0 ),
        .I2(\xfer_tag_reg[1]_0 ),
        .I3(\count_reg[3]_0 ),
        .O(\xfer_tag[1]_i_1_n_0 ));
  FDRE \xfer_tag_q_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(xfer_tag[0]),
        .Q(dout_tag[0]),
        .R(\<const0> ));
  FDRE \xfer_tag_q_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(xfer_tag[1]),
        .Q(dout_tag[1]),
        .R(\<const0> ));
  FDRE \xfer_tag_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\xfer_tag[0]_i_1_n_0 ),
        .Q(xfer_tag[0]),
        .R(\<const0> ));
  FDRE \xfer_tag_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\xfer_tag[1]_i_1_n_0 ),
        .Q(xfer_tag[1]),
        .R(\<const0> ));
endmodule

module tt_um_csit_luks
   (an_OBUF,
    seg_OBUF,
    dp_OBUF,
    A_IBUF,
    CLK,
    btnC_IBUF,
    B_IBUF,
    PB_IBUF);
  output [3:0]an_OBUF;
  output [6:0]seg_OBUF;
  output dp_OBUF;
  input A_IBUF;
  input CLK;
  input btnC_IBUF;
  input B_IBUF;
  input PB_IBUF;

  wire A_IBUF;
  wire B_IBUF;
  wire CLK;
  wire PB_IBUF;
  wire [3:0]an_OBUF;
  wire btnC_IBUF;
  wire dp_OBUF;
  wire [3:0]enc_w;
  wire [1:0]multiplexing_counter;
  wire [1:0]pb_press_type_w;
  wire rotational_encoder_instance_n_6;
  wire [6:0]seg_OBUF;
  wire spi_flash_valid_w;
  wire \spimemio_inst_0/rd_valid ;

  fsm fsm_instance
       (.CLK(CLK),
        .Q(multiplexing_counter),
        .btnC_IBUF(btnC_IBUF),
        .\display_out_reg[3]_0 (enc_w),
        .dp_OBUF(dp_OBUF),
        .\last_auto_state_reg[1]_0 (rotational_encoder_instance_n_6),
        .pb_press_type_w(pb_press_type_w),
        .rd_valid(\spimemio_inst_0/rd_valid ),
        .seg_OBUF(seg_OBUF),
        .spi_flash_valid_w(spi_flash_valid_w));
  rotational_encoder rotational_encoder_instance
       (.A_IBUF(A_IBUF),
        .B_IBUF(B_IBUF),
        .CLK(CLK),
        .PB_IBUF(PB_IBUF),
        .Q(enc_w),
        .btnC_IBUF(btnC_IBUF),
        .\pb_press_type_reg[0]_0 (rotational_encoder_instance_n_6),
        .pb_press_type_w(pb_press_type_w));
  seven_seg seven_segment_instance
       (.CLK(CLK),
        .Q(multiplexing_counter),
        .an_OBUF(an_OBUF),
        .btnC_IBUF(btnC_IBUF));
  spi_wrapper spi_wrapper_instance
       (.CLK(CLK),
        .btnC_IBUF(btnC_IBUF),
        .rd_valid(\spimemio_inst_0/rd_valid ),
        .spi_flash_valid_w(spi_flash_valid_w));
endmodule
