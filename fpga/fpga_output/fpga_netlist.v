// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sat Apr  6 12:12:28 2024
// Host        : JKUNDRATALAPTOP running 64-bit major release  (build 9200)
// Command     : write_verilog -force ./fpga_output/fpga_netlist.v
// Design      : fpga_top_lvl
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "c40fdc9a" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module fpga_top_lvl
   (clk,
    btnC,
    clk_10kHz,
    seg,
    dp,
    an,
    A,
    B,
    PB,
    sw,
    led);
  input clk;
  input btnC;
  output clk_10kHz;
  output [6:0]seg;
  output dp;
  output [3:0]an;
  input A;
  input B;
  input PB;
  input [1:0]sw;
  output [3:0]led;

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
  wire clk_10kHz;
  wire clk_10kHz_OBUF;
  wire clk_10kHz__0;
  wire clk_10kHz_i_1_n_0;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [15:0]counter;
  wire \counter[15]_i_3_n_0 ;
  wire \counter[15]_i_4_n_0 ;
  wire \counter_reg[12]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire dp;
  wire dp_OBUF;
  wire [3:0]led;
  wire [3:0]led_OBUF;
  wire [1:0]multiplexing_counter;
  wire [15:0]p_1_in;
  wire [6:0]seg;
  wire [6:0]seg_OBUF;
  wire [1:0]sw;
  wire [1:0]sw_IBUF;
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
  OBUF clk_10kHz_OBUF_inst
       (.I(clk_10kHz_OBUF),
        .O(clk_10kHz));
  LUT2 #(
    .INIT(4'h6)) 
    clk_10kHz_i_1
       (.I0(clk_10kHz__0),
        .I1(clk_10kHz_OBUF),
        .O(clk_10kHz_i_1_n_0));
  FDRE clk_10kHz_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(clk_10kHz_i_1_n_0),
        .Q(clk_10kHz_OBUF),
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
    .INIT(64'h0000000000000040)) 
    \counter[15]_i_1 
       (.I0(counter[14]),
        .I1(counter[12]),
        .I2(\counter[15]_i_3_n_0 ),
        .I3(counter[11]),
        .I4(counter[13]),
        .I5(counter[15]),
        .O(clk_10kHz__0));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \counter[15]_i_3 
       (.I0(counter[9]),
        .I1(counter[6]),
        .I2(\counter[15]_i_4_n_0 ),
        .I3(counter[8]),
        .I4(counter[7]),
        .I5(counter[10]),
        .O(\counter[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
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
        .R(clk_10kHz__0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_1_in[10]),
        .Q(counter[10]),
        .R(clk_10kHz__0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_1_in[11]),
        .Q(counter[11]),
        .R(clk_10kHz__0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_1_in[12]),
        .Q(counter[12]),
        .R(clk_10kHz__0));
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
        .R(clk_10kHz__0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_1_in[14]),
        .Q(counter[14]),
        .R(clk_10kHz__0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_1_in[15]),
        .Q(counter[15]),
        .R(clk_10kHz__0));
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
        .R(clk_10kHz__0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_1_in[2]),
        .Q(counter[2]),
        .R(clk_10kHz__0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_1_in[3]),
        .Q(counter[3]),
        .R(clk_10kHz__0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_1_in[4]),
        .Q(counter[4]),
        .R(clk_10kHz__0));
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
        .R(clk_10kHz__0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_1_in[6]),
        .Q(counter[6]),
        .R(clk_10kHz__0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_1_in[7]),
        .Q(counter[7]),
        .R(clk_10kHz__0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_1_in[8]),
        .Q(counter[8]),
        .R(clk_10kHz__0));
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
        .R(clk_10kHz__0));
  OBUF dp_OBUF_inst
       (.I(dp_OBUF),
        .O(dp));
  OBUF \led_OBUF[0]_inst 
       (.I(led_OBUF[0]),
        .O(led[0]));
  OBUF \led_OBUF[1]_inst 
       (.I(led_OBUF[1]),
        .O(led[1]));
  OBUF \led_OBUF[2]_inst 
       (.I(led_OBUF[2]),
        .O(led[2]));
  OBUF \led_OBUF[3]_inst 
       (.I(led_OBUF[3]),
        .O(led[3]));
  rotational_encoder rotational_encoder_instance
       (.A_IBUF(A_IBUF),
        .B_IBUF(B_IBUF),
        .CLK(clk_10kHz_OBUF),
        .PB_IBUF(PB_IBUF),
        .Q(led_OBUF),
        .btnC_IBUF(btnC_IBUF),
        .dp_OBUF(dp_OBUF),
        .\seg[4] (multiplexing_counter),
        .seg_OBUF(seg_OBUF),
        .sw_IBUF(sw_IBUF));
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
  seven_seg seven_seg_instance
       (.CLK(clk_10kHz_OBUF),
        .Q(multiplexing_counter),
        .an_OBUF(an_OBUF),
        .btnC_IBUF(btnC_IBUF));
  IBUF \sw_IBUF[0]_inst 
       (.I(sw[0]),
        .O(sw_IBUF[0]));
  IBUF \sw_IBUF[1]_inst 
       (.I(sw[1]),
        .O(sw_IBUF[1]));
endmodule

module rotational_encoder
   (Q,
    seg_OBUF,
    dp_OBUF,
    A_IBUF,
    CLK,
    btnC_IBUF,
    B_IBUF,
    PB_IBUF,
    \seg[4] ,
    sw_IBUF);
  output [3:0]Q;
  output [6:0]seg_OBUF;
  output dp_OBUF;
  input A_IBUF;
  input CLK;
  input btnC_IBUF;
  input B_IBUF;
  input PB_IBUF;
  input [1:0]\seg[4] ;
  input [1:0]sw_IBUF;

  wire \<const0> ;
  wire \<const1> ;
  wire A_IBUF;
  wire B_IBUF;
  wire CLK;
  wire PB_IBUF;
  wire [3:0]Q;
  wire btnC_IBUF;
  wire dp_OBUF;
  wire dp_OBUF_inst_i_2_n_0;
  wire dp_OBUF_inst_i_3_n_0;
  wire dp_OBUF_inst_i_4_n_0;
  wire dp_OBUF_inst_i_5_n_0;
  wire enc1;
  wire enc15_out;
  wire \enc[3]_i_1_n_0 ;
  wire \enc[3]_i_4_n_0 ;
  wire lastA;
  wire lastB;
  wire [3:0]p_0_in;
  wire [11:1]pb_cnt0;
  wire pb_cnt0_carry__0_n_0;
  wire pb_cnt0_carry_n_0;
  wire pb_cnt1;
  wire \pb_cnt[0]_i_1_n_0 ;
  wire \pb_cnt[10]_i_1_n_0 ;
  wire \pb_cnt[11]_i_1_n_0 ;
  wire \pb_cnt[11]_i_2_n_0 ;
  wire \pb_cnt[11]_i_4_n_0 ;
  wire \pb_cnt[11]_i_5_n_0 ;
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
  wire pb_press_type13_out;
  wire pb_press_type1__12;
  wire \pb_press_type[0]_i_1_n_0 ;
  wire \pb_press_type[0]_i_3_n_0 ;
  wire \pb_press_type[0]_i_4_n_0 ;
  wire \pb_press_type[0]_i_5_n_0 ;
  wire \pb_press_type[1]_i_1_n_0 ;
  wire \pb_press_type[1]_i_2_n_0 ;
  wire \pb_press_type[1]_i_4_n_0 ;
  wire \pb_press_type[1]_i_5_n_0 ;
  wire \pb_press_type[1]_i_6_n_0 ;
  wire \pb_press_type[1]_i_7_n_0 ;
  wire \pb_press_type_reg_n_0_[0] ;
  wire \pb_press_type_reg_n_0_[1] ;
  wire [1:0]\seg[4] ;
  wire [6:0]seg_OBUF;
  wire \seg_OBUF[0]_inst_i_2_n_0 ;
  wire \seg_OBUF[0]_inst_i_3_n_0 ;
  wire \seg_OBUF[0]_inst_i_4_n_0 ;
  wire \seg_OBUF[0]_inst_i_5_n_0 ;
  wire \seg_OBUF[1]_inst_i_2_n_0 ;
  wire \seg_OBUF[1]_inst_i_3_n_0 ;
  wire \seg_OBUF[1]_inst_i_4_n_0 ;
  wire \seg_OBUF[1]_inst_i_5_n_0 ;
  wire \seg_OBUF[2]_inst_i_2_n_0 ;
  wire \seg_OBUF[2]_inst_i_3_n_0 ;
  wire \seg_OBUF[2]_inst_i_4_n_0 ;
  wire \seg_OBUF[2]_inst_i_5_n_0 ;
  wire \seg_OBUF[3]_inst_i_2_n_0 ;
  wire \seg_OBUF[3]_inst_i_3_n_0 ;
  wire \seg_OBUF[3]_inst_i_4_n_0 ;
  wire \seg_OBUF[3]_inst_i_5_n_0 ;
  wire \seg_OBUF[4]_inst_i_2_n_0 ;
  wire \seg_OBUF[4]_inst_i_3_n_0 ;
  wire \seg_OBUF[4]_inst_i_4_n_0 ;
  wire \seg_OBUF[4]_inst_i_5_n_0 ;
  wire \seg_OBUF[5]_inst_i_2_n_0 ;
  wire \seg_OBUF[5]_inst_i_3_n_0 ;
  wire \seg_OBUF[5]_inst_i_4_n_0 ;
  wire \seg_OBUF[5]_inst_i_5_n_0 ;
  wire \seg_OBUF[6]_inst_i_2_n_0 ;
  wire \seg_OBUF[6]_inst_i_3_n_0 ;
  wire \seg_OBUF[6]_inst_i_4_n_0 ;
  wire \seg_OBUF[6]_inst_i_5_n_0 ;
  wire [1:0]sw_IBUF;
  wire [3:0]NLW_pb_cnt0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_pb_cnt0_carry__0_CO_UNCONNECTED;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    dp_OBUF_inst_i_1
       (.I0(dp_OBUF_inst_i_2_n_0),
        .I1(dp_OBUF_inst_i_3_n_0),
        .I2(dp_OBUF_inst_i_4_n_0),
        .I3(\seg[4] [1]),
        .I4(dp_OBUF_inst_i_5_n_0),
        .I5(\seg[4] [0]),
        .O(dp_OBUF));
  LUT6 #(
    .INIT(64'hFBBBFFFFFFFFFFFF)) 
    dp_OBUF_inst_i_2
       (.I0(sw_IBUF[1]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(sw_IBUF[0]),
        .I5(Q[2]),
        .O(dp_OBUF_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFEEFF05FF0FF)) 
    dp_OBUF_inst_i_3
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(sw_IBUF[0]),
        .I3(sw_IBUF[1]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(dp_OBUF_inst_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFDDDFFFFFFFFF)) 
    dp_OBUF_inst_i_4
       (.I0(sw_IBUF[0]),
        .I1(sw_IBUF[1]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(dp_OBUF_inst_i_4_n_0));
  LUT6 #(
    .INIT(64'hBFFFFFFFFBFFFFFF)) 
    dp_OBUF_inst_i_5
       (.I0(sw_IBUF[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(sw_IBUF[0]),
        .O(dp_OBUF_inst_i_5_n_0));
  LUT4 #(
    .INIT(16'h001F)) 
    \enc[0]_i_1 
       (.I0(\pb_press_type_reg_n_0_[0] ),
        .I1(\pb_press_type_reg_n_0_[1] ),
        .I2(PB_IBUF),
        .I3(Q[0]),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'h001F1F001F00001F)) 
    \enc[1]_i_1 
       (.I0(\pb_press_type_reg_n_0_[0] ),
        .I1(\pb_press_type_reg_n_0_[1] ),
        .I2(PB_IBUF),
        .I3(Q[1]),
        .I4(enc15_out),
        .I5(Q[0]),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'h0777700077700007)) 
    \enc[2]_i_1 
       (.I0(enc1),
        .I1(PB_IBUF),
        .I2(Q[0]),
        .I3(enc15_out),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(p_0_in[2]));
  LUT3 #(
    .INIT(8'h02)) 
    \enc[2]_i_2 
       (.I0(A_IBUF),
        .I1(lastA),
        .I2(B_IBUF),
        .O(enc15_out));
  LUT6 #(
    .INIT(64'h888888FF8F888F88)) 
    \enc[3]_i_1 
       (.I0(enc1),
        .I1(PB_IBUF),
        .I2(lastA),
        .I3(A_IBUF),
        .I4(lastB),
        .I5(B_IBUF),
        .O(\enc[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8FFFFFF8F888888F)) 
    \enc[3]_i_2 
       (.I0(enc1),
        .I1(PB_IBUF),
        .I2(\enc[3]_i_4_n_0 ),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(p_0_in[3]));
  LUT2 #(
    .INIT(4'hE)) 
    \enc[3]_i_3 
       (.I0(\pb_press_type_reg_n_0_[1] ),
        .I1(\pb_press_type_reg_n_0_[0] ),
        .O(enc1));
  LUT5 #(
    .INIT(32'h57550100)) 
    \enc[3]_i_4 
       (.I0(Q[1]),
        .I1(B_IBUF),
        .I2(lastA),
        .I3(A_IBUF),
        .I4(Q[0]),
        .O(\enc[3]_i_4_n_0 ));
  FDCE \enc_reg[0] 
       (.C(CLK),
        .CE(\enc[3]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(p_0_in[0]),
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
       (.I0(\pb_press_type_reg_n_0_[0] ),
        .I1(\pb_press_type_reg_n_0_[1] ),
        .I2(PB_IBUF),
        .I3(\pb_cnt_reg_n_0_[0] ),
        .I4(pb_cnt1),
        .O(\pb_cnt[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h1F001F1F)) 
    \pb_cnt[10]_i_1 
       (.I0(\pb_press_type_reg_n_0_[0] ),
        .I1(\pb_press_type_reg_n_0_[1] ),
        .I2(PB_IBUF),
        .I3(pb_cnt0[10]),
        .I4(pb_cnt1),
        .O(\pb_cnt[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \pb_cnt[11]_i_1 
       (.I0(\pb_press_type_reg_n_0_[0] ),
        .I1(\pb_press_type_reg_n_0_[1] ),
        .I2(PB_IBUF),
        .O(\pb_cnt[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h1F001F1F)) 
    \pb_cnt[11]_i_2 
       (.I0(\pb_press_type_reg_n_0_[0] ),
        .I1(\pb_press_type_reg_n_0_[1] ),
        .I2(PB_IBUF),
        .I3(pb_cnt0[11]),
        .I4(pb_cnt1),
        .O(\pb_cnt[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    \pb_cnt[11]_i_3 
       (.I0(\pb_cnt[11]_i_4_n_0 ),
        .I1(\pb_cnt[11]_i_5_n_0 ),
        .I2(\pb_cnt_reg_n_0_[1] ),
        .I3(\pb_cnt_reg_n_0_[3] ),
        .I4(\pb_cnt_reg_n_0_[2] ),
        .I5(\pb_cnt_reg_n_0_[0] ),
        .O(pb_cnt1));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \pb_cnt[11]_i_4 
       (.I0(\pb_cnt_reg_n_0_[5] ),
        .I1(\pb_cnt_reg_n_0_[4] ),
        .I2(\pb_cnt_reg_n_0_[7] ),
        .I3(\pb_cnt_reg_n_0_[6] ),
        .O(\pb_cnt[11]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \pb_cnt[11]_i_5 
       (.I0(\pb_cnt_reg_n_0_[9] ),
        .I1(\pb_cnt_reg_n_0_[8] ),
        .I2(\pb_cnt_reg_n_0_[11] ),
        .I3(\pb_cnt_reg_n_0_[10] ),
        .O(\pb_cnt[11]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h1F001F1F)) 
    \pb_cnt[1]_i_1 
       (.I0(\pb_press_type_reg_n_0_[0] ),
        .I1(\pb_press_type_reg_n_0_[1] ),
        .I2(PB_IBUF),
        .I3(pb_cnt0[1]),
        .I4(pb_cnt1),
        .O(\pb_cnt[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h1F001F1F)) 
    \pb_cnt[2]_i_1 
       (.I0(\pb_press_type_reg_n_0_[0] ),
        .I1(\pb_press_type_reg_n_0_[1] ),
        .I2(PB_IBUF),
        .I3(pb_cnt0[2]),
        .I4(pb_cnt1),
        .O(\pb_cnt[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h1F001F1F)) 
    \pb_cnt[3]_i_1 
       (.I0(\pb_press_type_reg_n_0_[0] ),
        .I1(\pb_press_type_reg_n_0_[1] ),
        .I2(PB_IBUF),
        .I3(pb_cnt0[3]),
        .I4(pb_cnt1),
        .O(\pb_cnt[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h1F001F1F)) 
    \pb_cnt[4]_i_1 
       (.I0(\pb_press_type_reg_n_0_[0] ),
        .I1(\pb_press_type_reg_n_0_[1] ),
        .I2(PB_IBUF),
        .I3(pb_cnt0[4]),
        .I4(pb_cnt1),
        .O(\pb_cnt[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h1F001F1F)) 
    \pb_cnt[5]_i_1 
       (.I0(\pb_press_type_reg_n_0_[0] ),
        .I1(\pb_press_type_reg_n_0_[1] ),
        .I2(PB_IBUF),
        .I3(pb_cnt0[5]),
        .I4(pb_cnt1),
        .O(\pb_cnt[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h1F001F1F)) 
    \pb_cnt[6]_i_1 
       (.I0(\pb_press_type_reg_n_0_[0] ),
        .I1(\pb_press_type_reg_n_0_[1] ),
        .I2(PB_IBUF),
        .I3(pb_cnt0[6]),
        .I4(pb_cnt1),
        .O(\pb_cnt[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h1F001F1F)) 
    \pb_cnt[7]_i_1 
       (.I0(\pb_press_type_reg_n_0_[0] ),
        .I1(\pb_press_type_reg_n_0_[1] ),
        .I2(PB_IBUF),
        .I3(pb_cnt0[7]),
        .I4(pb_cnt1),
        .O(\pb_cnt[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h1F001F1F)) 
    \pb_cnt[8]_i_1 
       (.I0(\pb_press_type_reg_n_0_[0] ),
        .I1(\pb_press_type_reg_n_0_[1] ),
        .I2(PB_IBUF),
        .I3(pb_cnt0[8]),
        .I4(pb_cnt1),
        .O(\pb_cnt[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h1F001F1F)) 
    \pb_cnt[9]_i_1 
       (.I0(\pb_press_type_reg_n_0_[0] ),
        .I1(\pb_press_type_reg_n_0_[1] ),
        .I2(PB_IBUF),
        .I3(pb_cnt0[9]),
        .I4(pb_cnt1),
        .O(\pb_cnt[9]_i_1_n_0 ));
  FDCE \pb_cnt_reg[0] 
       (.C(CLK),
        .CE(\pb_cnt[11]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(\pb_cnt[0]_i_1_n_0 ),
        .Q(\pb_cnt_reg_n_0_[0] ));
  FDCE \pb_cnt_reg[10] 
       (.C(CLK),
        .CE(\pb_cnt[11]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(\pb_cnt[10]_i_1_n_0 ),
        .Q(\pb_cnt_reg_n_0_[10] ));
  FDCE \pb_cnt_reg[11] 
       (.C(CLK),
        .CE(\pb_cnt[11]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(\pb_cnt[11]_i_2_n_0 ),
        .Q(\pb_cnt_reg_n_0_[11] ));
  FDCE \pb_cnt_reg[1] 
       (.C(CLK),
        .CE(\pb_cnt[11]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(\pb_cnt[1]_i_1_n_0 ),
        .Q(\pb_cnt_reg_n_0_[1] ));
  FDCE \pb_cnt_reg[2] 
       (.C(CLK),
        .CE(\pb_cnt[11]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(\pb_cnt[2]_i_1_n_0 ),
        .Q(\pb_cnt_reg_n_0_[2] ));
  FDCE \pb_cnt_reg[3] 
       (.C(CLK),
        .CE(\pb_cnt[11]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(\pb_cnt[3]_i_1_n_0 ),
        .Q(\pb_cnt_reg_n_0_[3] ));
  FDCE \pb_cnt_reg[4] 
       (.C(CLK),
        .CE(\pb_cnt[11]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(\pb_cnt[4]_i_1_n_0 ),
        .Q(\pb_cnt_reg_n_0_[4] ));
  FDCE \pb_cnt_reg[5] 
       (.C(CLK),
        .CE(\pb_cnt[11]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(\pb_cnt[5]_i_1_n_0 ),
        .Q(\pb_cnt_reg_n_0_[5] ));
  FDCE \pb_cnt_reg[6] 
       (.C(CLK),
        .CE(\pb_cnt[11]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(\pb_cnt[6]_i_1_n_0 ),
        .Q(\pb_cnt_reg_n_0_[6] ));
  FDCE \pb_cnt_reg[7] 
       (.C(CLK),
        .CE(\pb_cnt[11]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(\pb_cnt[7]_i_1_n_0 ),
        .Q(\pb_cnt_reg_n_0_[7] ));
  FDCE \pb_cnt_reg[8] 
       (.C(CLK),
        .CE(\pb_cnt[11]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(\pb_cnt[8]_i_1_n_0 ),
        .Q(\pb_cnt_reg_n_0_[8] ));
  FDCE \pb_cnt_reg[9] 
       (.C(CLK),
        .CE(\pb_cnt[11]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(\pb_cnt[9]_i_1_n_0 ),
        .Q(\pb_cnt_reg_n_0_[9] ));
  LUT6 #(
    .INIT(64'h0000FFFF55040000)) 
    \pb_press_type[0]_i_1 
       (.I0(\pb_press_type_reg_n_0_[1] ),
        .I1(pb_press_type1__12),
        .I2(pb_press_type13_out),
        .I3(\pb_press_type[1]_i_2_n_0 ),
        .I4(\pb_press_type[1]_i_4_n_0 ),
        .I5(\pb_press_type_reg_n_0_[0] ),
        .O(\pb_press_type[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0100000001000100)) 
    \pb_press_type[0]_i_2 
       (.I0(\pb_cnt_reg_n_0_[9] ),
        .I1(\pb_cnt_reg_n_0_[11] ),
        .I2(\pb_cnt_reg_n_0_[10] ),
        .I3(\pb_press_type[0]_i_3_n_0 ),
        .I4(\pb_press_type[0]_i_4_n_0 ),
        .I5(\pb_press_type[0]_i_5_n_0 ),
        .O(pb_press_type1__12));
  LUT5 #(
    .INIT(32'h01FFFFFF)) 
    \pb_press_type[0]_i_3 
       (.I0(\pb_cnt_reg_n_0_[4] ),
        .I1(\pb_cnt_reg_n_0_[5] ),
        .I2(\pb_cnt_reg_n_0_[6] ),
        .I3(\pb_cnt_reg_n_0_[8] ),
        .I4(\pb_cnt_reg_n_0_[7] ),
        .O(\pb_press_type[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \pb_press_type[0]_i_4 
       (.I0(\pb_cnt_reg_n_0_[7] ),
        .I1(\pb_cnt_reg_n_0_[6] ),
        .I2(\pb_cnt_reg_n_0_[10] ),
        .I3(\pb_cnt_reg_n_0_[11] ),
        .I4(\pb_cnt_reg_n_0_[8] ),
        .I5(\pb_cnt_reg_n_0_[9] ),
        .O(\pb_press_type[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h01FFFFFF)) 
    \pb_press_type[0]_i_5 
       (.I0(\pb_cnt_reg_n_0_[1] ),
        .I1(\pb_cnt_reg_n_0_[2] ),
        .I2(\pb_cnt_reg_n_0_[3] ),
        .I3(\pb_cnt_reg_n_0_[5] ),
        .I4(\pb_cnt_reg_n_0_[4] ),
        .O(\pb_press_type[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00FF5400)) 
    \pb_press_type[1]_i_1 
       (.I0(\pb_press_type_reg_n_0_[0] ),
        .I1(\pb_press_type[1]_i_2_n_0 ),
        .I2(pb_press_type13_out),
        .I3(\pb_press_type[1]_i_4_n_0 ),
        .I4(\pb_press_type_reg_n_0_[1] ),
        .O(\pb_press_type[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEFAAAA)) 
    \pb_press_type[1]_i_2 
       (.I0(\pb_cnt_reg_n_0_[11] ),
        .I1(\pb_cnt_reg_n_0_[8] ),
        .I2(\pb_press_type[1]_i_5_n_0 ),
        .I3(\pb_cnt_reg_n_0_[9] ),
        .I4(\pb_cnt_reg_n_0_[10] ),
        .O(\pb_press_type[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0003000033223322)) 
    \pb_press_type[1]_i_3 
       (.I0(\pb_press_type[1]_i_6_n_0 ),
        .I1(\pb_cnt_reg_n_0_[11] ),
        .I2(\pb_cnt_reg_n_0_[8] ),
        .I3(\pb_cnt_reg_n_0_[9] ),
        .I4(\pb_press_type[1]_i_5_n_0 ),
        .I5(\pb_cnt_reg_n_0_[10] ),
        .O(pb_press_type13_out));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \pb_press_type[1]_i_4 
       (.I0(PB_IBUF),
        .I1(\pb_press_type[1]_i_2_n_0 ),
        .I2(\pb_press_type[1]_i_7_n_0 ),
        .I3(pb_press_type1__12),
        .I4(pb_press_type13_out),
        .I5(enc1),
        .O(\pb_press_type[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h07FF)) 
    \pb_press_type[1]_i_5 
       (.I0(\pb_cnt_reg_n_0_[4] ),
        .I1(\pb_cnt_reg_n_0_[5] ),
        .I2(\pb_cnt_reg_n_0_[6] ),
        .I3(\pb_cnt_reg_n_0_[7] ),
        .O(\pb_press_type[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEAAAAAAAAA)) 
    \pb_press_type[1]_i_6 
       (.I0(\pb_cnt_reg_n_0_[11] ),
        .I1(\pb_cnt_reg_n_0_[8] ),
        .I2(\pb_cnt_reg_n_0_[6] ),
        .I3(\pb_cnt_reg_n_0_[4] ),
        .I4(\pb_cnt_reg_n_0_[5] ),
        .I5(\pb_cnt_reg_n_0_[7] ),
        .O(\pb_press_type[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000000007777777F)) 
    \pb_press_type[1]_i_7 
       (.I0(\pb_cnt_reg_n_0_[4] ),
        .I1(\pb_cnt_reg_n_0_[5] ),
        .I2(\pb_cnt_reg_n_0_[3] ),
        .I3(\pb_cnt_reg_n_0_[2] ),
        .I4(\pb_cnt_reg_n_0_[1] ),
        .I5(\pb_press_type[0]_i_4_n_0 ),
        .O(\pb_press_type[1]_i_7_n_0 ));
  FDCE \pb_press_type_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(\pb_press_type[0]_i_1_n_0 ),
        .Q(\pb_press_type_reg_n_0_[0] ));
  FDCE \pb_press_type_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(\pb_press_type[1]_i_1_n_0 ),
        .Q(\pb_press_type_reg_n_0_[1] ));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \seg_OBUF[0]_inst_i_1 
       (.I0(\seg_OBUF[0]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[0]_inst_i_3_n_0 ),
        .I2(\seg_OBUF[0]_inst_i_4_n_0 ),
        .I3(\seg[4] [1]),
        .I4(\seg_OBUF[0]_inst_i_5_n_0 ),
        .I5(\seg[4] [0]),
        .O(seg_OBUF[0]));
  LUT6 #(
    .INIT(64'hFFF7FFBFFFFDFFBF)) 
    \seg_OBUF[0]_inst_i_2 
       (.I0(sw_IBUF[0]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(sw_IBUF[1]),
        .I5(Q[0]),
        .O(\seg_OBUF[0]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFFEABFB4202ABA9)) 
    \seg_OBUF[0]_inst_i_3 
       (.I0(sw_IBUF[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(sw_IBUF[1]),
        .O(\seg_OBUF[0]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBBFFFFFEBFBBBFB)) 
    \seg_OBUF[0]_inst_i_4 
       (.I0(sw_IBUF[1]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(sw_IBUF[0]),
        .O(\seg_OBUF[0]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hDCCC8C88AA80AC08)) 
    \seg_OBUF[0]_inst_i_5 
       (.I0(sw_IBUF[0]),
        .I1(sw_IBUF[1]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\seg_OBUF[0]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \seg_OBUF[1]_inst_i_1 
       (.I0(\seg_OBUF[1]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[1]_inst_i_3_n_0 ),
        .I2(\seg_OBUF[1]_inst_i_4_n_0 ),
        .I3(\seg[4] [1]),
        .I4(\seg_OBUF[1]_inst_i_5_n_0 ),
        .I5(\seg[4] [0]),
        .O(seg_OBUF[1]));
  LUT6 #(
    .INIT(64'hBFFFDDFDFBBFFFBF)) 
    \seg_OBUF[1]_inst_i_2 
       (.I0(sw_IBUF[1]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(sw_IBUF[0]),
        .O(\seg_OBUF[1]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAEAAA4882BEA1)) 
    \seg_OBUF[1]_inst_i_3 
       (.I0(sw_IBUF[0]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(sw_IBUF[1]),
        .O(\seg_OBUF[1]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFFFBFFBABABAB)) 
    \seg_OBUF[1]_inst_i_4 
       (.I0(sw_IBUF[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(sw_IBUF[0]),
        .O(\seg_OBUF[1]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hDCCECD808AC80A19)) 
    \seg_OBUF[1]_inst_i_5 
       (.I0(sw_IBUF[0]),
        .I1(sw_IBUF[1]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\seg_OBUF[1]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \seg_OBUF[2]_inst_i_1 
       (.I0(\seg_OBUF[2]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[2]_inst_i_3_n_0 ),
        .I2(\seg_OBUF[2]_inst_i_4_n_0 ),
        .I3(\seg[4] [1]),
        .I4(\seg_OBUF[2]_inst_i_5_n_0 ),
        .I5(\seg[4] [0]),
        .O(seg_OBUF[2]));
  LUT6 #(
    .INIT(64'hBFFFDDFFFBBFBFBF)) 
    \seg_OBUF[2]_inst_i_2 
       (.I0(sw_IBUF[1]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(sw_IBUF[0]),
        .O(\seg_OBUF[2]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEAEFABA40AB23E1)) 
    \seg_OBUF[2]_inst_i_3 
       (.I0(sw_IBUF[0]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(sw_IBUF[1]),
        .O(\seg_OBUF[2]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFBF4FFFFFFFB08F)) 
    \seg_OBUF[2]_inst_i_4 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(sw_IBUF[1]),
        .I5(sw_IBUF[0]),
        .O(\seg_OBUF[2]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hDC8AC800CC0A889C)) 
    \seg_OBUF[2]_inst_i_5 
       (.I0(sw_IBUF[0]),
        .I1(sw_IBUF[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\seg_OBUF[2]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \seg_OBUF[3]_inst_i_1 
       (.I0(\seg_OBUF[3]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[3]_inst_i_3_n_0 ),
        .I2(\seg_OBUF[3]_inst_i_4_n_0 ),
        .I3(\seg[4] [1]),
        .I4(\seg_OBUF[3]_inst_i_5_n_0 ),
        .I5(\seg[4] [0]),
        .O(seg_OBUF[3]));
  LUT6 #(
    .INIT(64'hFFFFFFBFFFFDFFBF)) 
    \seg_OBUF[3]_inst_i_2 
       (.I0(sw_IBUF[0]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(sw_IBUF[1]),
        .I5(Q[0]),
        .O(\seg_OBUF[3]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDACEC2CA8ACEEFAD)) 
    \seg_OBUF[3]_inst_i_3 
       (.I0(sw_IBUF[0]),
        .I1(sw_IBUF[1]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\seg_OBUF[3]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFDF57FFFFFFB07F)) 
    \seg_OBUF[3]_inst_i_4 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(sw_IBUF[1]),
        .I5(sw_IBUF[0]),
        .O(\seg_OBUF[3]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hDCCC8C88A280AC08)) 
    \seg_OBUF[3]_inst_i_5 
       (.I0(sw_IBUF[0]),
        .I1(sw_IBUF[1]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\seg_OBUF[3]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \seg_OBUF[4]_inst_i_1 
       (.I0(\seg_OBUF[4]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[4]_inst_i_3_n_0 ),
        .I2(\seg_OBUF[4]_inst_i_4_n_0 ),
        .I3(\seg[4] [1]),
        .I4(\seg_OBUF[4]_inst_i_5_n_0 ),
        .I5(\seg[4] [0]),
        .O(seg_OBUF[4]));
  LUT6 #(
    .INIT(64'hFFF7FFFDFFBFFFFF)) 
    \seg_OBUF[4]_inst_i_2 
       (.I0(sw_IBUF[0]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(sw_IBUF[1]),
        .O(\seg_OBUF[4]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEF77FF3FF583EB01)) 
    \seg_OBUF[4]_inst_i_3 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(sw_IBUF[1]),
        .I4(Q[0]),
        .I5(sw_IBUF[0]),
        .O(\seg_OBUF[4]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBFFF9FFFEBBBFBFF)) 
    \seg_OBUF[4]_inst_i_4 
       (.I0(sw_IBUF[1]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(sw_IBUF[0]),
        .O(\seg_OBUF[4]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hDCA8CE7088A1E8E8)) 
    \seg_OBUF[4]_inst_i_5 
       (.I0(sw_IBUF[0]),
        .I1(sw_IBUF[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\seg_OBUF[4]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \seg_OBUF[5]_inst_i_1 
       (.I0(\seg_OBUF[5]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_3_n_0 ),
        .I2(\seg_OBUF[5]_inst_i_4_n_0 ),
        .I3(\seg[4] [1]),
        .I4(\seg_OBUF[5]_inst_i_5_n_0 ),
        .I5(\seg[4] [0]),
        .O(seg_OBUF[5]));
  LUT6 #(
    .INIT(64'hFFF7FFFFFFBFFFFF)) 
    \seg_OBUF[5]_inst_i_2 
       (.I0(sw_IBUF[0]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(sw_IBUF[1]),
        .O(\seg_OBUF[5]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF71F7FF3EF811B)) 
    \seg_OBUF[5]_inst_i_3 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(sw_IBUF[1]),
        .I5(sw_IBUF[0]),
        .O(\seg_OBUF[5]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF3DF1FFFF)) 
    \seg_OBUF[5]_inst_i_4 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(sw_IBUF[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(sw_IBUF[1]),
        .O(\seg_OBUF[5]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hDC8AC880CCAAC89C)) 
    \seg_OBUF[5]_inst_i_5 
       (.I0(sw_IBUF[0]),
        .I1(sw_IBUF[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\seg_OBUF[5]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \seg_OBUF[6]_inst_i_1 
       (.I0(\seg_OBUF[6]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_3_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_4_n_0 ),
        .I3(\seg[4] [1]),
        .I4(\seg_OBUF[6]_inst_i_5_n_0 ),
        .I5(\seg[4] [0]),
        .O(seg_OBUF[6]));
  LUT6 #(
    .INIT(64'h1F771F771F7F4F77)) 
    \seg_OBUF[6]_inst_i_2 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[0]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\seg_OBUF[6]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1113BB76055164DB)) 
    \seg_OBUF[6]_inst_i_3 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(sw_IBUF[1]),
        .I5(sw_IBUF[0]),
        .O(\seg_OBUF[6]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h083C7DFF043C7FFF)) 
    \seg_OBUF[6]_inst_i_4 
       (.I0(Q[1]),
        .I1(sw_IBUF[0]),
        .I2(sw_IBUF[1]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(Q[0]),
        .O(\seg_OBUF[6]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000FEA4105287FB8)) 
    \seg_OBUF[6]_inst_i_5 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(sw_IBUF[1]),
        .I5(sw_IBUF[0]),
        .O(\seg_OBUF[6]_inst_i_5_n_0 ));
endmodule

module seven_seg
   (Q,
    an_OBUF,
    CLK,
    btnC_IBUF);
  output [1:0]Q;
  output [3:0]an_OBUF;
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
  LUT1 #(
    .INIT(2'h1)) 
    \multiplexing_counter[0]_i_1 
       (.I0(Q[0]),
        .O(\multiplexing_counter[0]_i_1_n_0 ));
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
