// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sat Apr  6 11:56:07 2024
// Host        : JKUNDRATALAPTOP running 64-bit major release  (build 9200)
// Command     : write_verilog -force ./fpga_output/fpga_netlist.v
// Design      : fpga_top_lvl
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "c4c1134" *) 
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
        .Q(led_OBUF),
        .btnC_IBUF(btnC_IBUF),
        .dp_OBUF(dp_OBUF),
        .dp_OBUF_inst_i_1_0(multiplexing_counter),
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
    btnC_IBUF,
    A_IBUF,
    CLK,
    B_IBUF,
    dp_OBUF_inst_i_1_0,
    sw_IBUF);
  output [3:0]Q;
  output [6:0]seg_OBUF;
  output dp_OBUF;
  input btnC_IBUF;
  input A_IBUF;
  input CLK;
  input B_IBUF;
  input [1:0]dp_OBUF_inst_i_1_0;
  input [1:0]sw_IBUF;

  wire \<const1> ;
  wire A_IBUF;
  wire B_IBUF;
  wire CLK;
  wire [3:0]Q;
  wire btnC_IBUF;
  wire dp_OBUF;
  wire [1:0]dp_OBUF_inst_i_1_0;
  wire dp_OBUF_inst_i_2_n_0;
  wire dp_OBUF_inst_i_3_n_0;
  wire dp_OBUF_inst_i_4_n_0;
  wire dp_OBUF_inst_i_5_n_0;
  wire dp_OBUF_inst_i_6_n_0;
  wire dp_OBUF_inst_i_7_n_0;
  wire \enc[0]_i_1_n_0 ;
  wire \enc[1]_i_1_n_0 ;
  wire \enc[2]_i_1_n_0 ;
  wire \enc[3]_i_1_n_0 ;
  wire \enc[3]_i_2_n_0 ;
  wire \enc[3]_i_3_n_0 ;
  wire lastA;
  wire lastB;
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
  wire [1:0]sw_IBUF;

  VCC VCC
       (.P(\<const1> ));
  MUXF8 dp_OBUF_inst_i_1
       (.I0(dp_OBUF_inst_i_2_n_0),
        .I1(dp_OBUF_inst_i_3_n_0),
        .O(dp_OBUF),
        .S(dp_OBUF_inst_i_1_0[0]));
  MUXF7 dp_OBUF_inst_i_2
       (.I0(dp_OBUF_inst_i_4_n_0),
        .I1(dp_OBUF_inst_i_5_n_0),
        .O(dp_OBUF_inst_i_2_n_0),
        .S(dp_OBUF_inst_i_1_0[1]));
  MUXF7 dp_OBUF_inst_i_3
       (.I0(dp_OBUF_inst_i_6_n_0),
        .I1(dp_OBUF_inst_i_7_n_0),
        .O(dp_OBUF_inst_i_3_n_0),
        .S(dp_OBUF_inst_i_1_0[1]));
  LUT6 #(
    .INIT(64'hBFFFFBFFFFFFFFFF)) 
    dp_OBUF_inst_i_4
       (.I0(sw_IBUF[1]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(sw_IBUF[0]),
        .I5(Q[3]),
        .O(dp_OBUF_inst_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFDDDFFFFFFFFF)) 
    dp_OBUF_inst_i_5
       (.I0(sw_IBUF[0]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(sw_IBUF[1]),
        .I5(Q[3]),
        .O(dp_OBUF_inst_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFCCC8CFFBFFFF)) 
    dp_OBUF_inst_i_6
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(sw_IBUF[0]),
        .I5(sw_IBUF[1]),
        .O(dp_OBUF_inst_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFF777FFFFFFFF)) 
    dp_OBUF_inst_i_7
       (.I0(sw_IBUF[0]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(sw_IBUF[1]),
        .I5(Q[3]),
        .O(dp_OBUF_inst_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \enc[0]_i_1 
       (.I0(Q[0]),
        .O(\enc[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h99999969)) 
    \enc[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(A_IBUF),
        .I3(lastA),
        .I4(B_IBUF),
        .O(\enc[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA6AAAA999A9999)) 
    \enc[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(B_IBUF),
        .I3(lastA),
        .I4(A_IBUF),
        .I5(Q[0]),
        .O(\enc[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0434)) 
    \enc[3]_i_1 
       (.I0(lastB),
        .I1(B_IBUF),
        .I2(A_IBUF),
        .I3(lastA),
        .O(\enc[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA6AAAA9A9AAA9)) 
    \enc[3]_i_2 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\enc[3]_i_3_n_0 ),
        .I4(B_IBUF),
        .I5(Q[1]),
        .O(\enc[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \enc[3]_i_3 
       (.I0(A_IBUF),
        .I1(lastA),
        .O(\enc[3]_i_3_n_0 ));
  FDRE \enc_reg[0] 
       (.C(CLK),
        .CE(\enc[3]_i_1_n_0 ),
        .D(\enc[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(btnC_IBUF));
  FDRE \enc_reg[1] 
       (.C(CLK),
        .CE(\enc[3]_i_1_n_0 ),
        .D(\enc[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(btnC_IBUF));
  FDRE \enc_reg[2] 
       (.C(CLK),
        .CE(\enc[3]_i_1_n_0 ),
        .D(\enc[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(btnC_IBUF));
  FDRE \enc_reg[3] 
       (.C(CLK),
        .CE(\enc[3]_i_1_n_0 ),
        .D(\enc[3]_i_2_n_0 ),
        .Q(Q[3]),
        .R(btnC_IBUF));
  FDRE lastA_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(A_IBUF),
        .Q(lastA),
        .R(btnC_IBUF));
  FDRE lastB_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(B_IBUF),
        .Q(lastB),
        .R(btnC_IBUF));
  MUXF8 \seg_OBUF[0]_inst_i_1 
       (.I0(\seg_OBUF[0]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[0]_inst_i_3_n_0 ),
        .O(seg_OBUF[0]),
        .S(dp_OBUF_inst_i_1_0[0]));
  MUXF7 \seg_OBUF[0]_inst_i_2 
       (.I0(\seg_OBUF[0]_inst_i_4_n_0 ),
        .I1(\seg_OBUF[0]_inst_i_5_n_0 ),
        .O(\seg_OBUF[0]_inst_i_2_n_0 ),
        .S(dp_OBUF_inst_i_1_0[1]));
  MUXF7 \seg_OBUF[0]_inst_i_3 
       (.I0(\seg_OBUF[0]_inst_i_6_n_0 ),
        .I1(\seg_OBUF[0]_inst_i_7_n_0 ),
        .O(\seg_OBUF[0]_inst_i_3_n_0 ),
        .S(dp_OBUF_inst_i_1_0[1]));
  LUT6 #(
    .INIT(64'h0400470444004000)) 
    \seg_OBUF[0]_inst_i_4 
       (.I0(Q[3]),
        .I1(sw_IBUF[0]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(sw_IBUF[1]),
        .O(\seg_OBUF[0]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h175717574D7F5DDD)) 
    \seg_OBUF[0]_inst_i_5 
       (.I0(Q[3]),
        .I1(sw_IBUF[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(sw_IBUF[1]),
        .O(\seg_OBUF[0]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h01444444474475D9)) 
    \seg_OBUF[0]_inst_i_6 
       (.I0(Q[3]),
        .I1(sw_IBUF[0]),
        .I2(Q[0]),
        .I3(sw_IBUF[1]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\seg_OBUF[0]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h373737735F7F5F5F)) 
    \seg_OBUF[0]_inst_i_7 
       (.I0(Q[3]),
        .I1(sw_IBUF[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(sw_IBUF[0]),
        .O(\seg_OBUF[0]_inst_i_7_n_0 ));
  MUXF8 \seg_OBUF[1]_inst_i_1 
       (.I0(\seg_OBUF[1]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[1]_inst_i_3_n_0 ),
        .O(seg_OBUF[1]),
        .S(dp_OBUF_inst_i_1_0[0]));
  MUXF7 \seg_OBUF[1]_inst_i_2 
       (.I0(\seg_OBUF[1]_inst_i_4_n_0 ),
        .I1(\seg_OBUF[1]_inst_i_5_n_0 ),
        .O(\seg_OBUF[1]_inst_i_2_n_0 ),
        .S(dp_OBUF_inst_i_1_0[1]));
  MUXF7 \seg_OBUF[1]_inst_i_3 
       (.I0(\seg_OBUF[1]_inst_i_6_n_0 ),
        .I1(\seg_OBUF[1]_inst_i_7_n_0 ),
        .O(\seg_OBUF[1]_inst_i_3_n_0 ),
        .S(dp_OBUF_inst_i_1_0[1]));
  LUT6 #(
    .INIT(64'hF2F180CCE0A8A1C1)) 
    \seg_OBUF[1]_inst_i_4 
       (.I0(Q[3]),
        .I1(sw_IBUF[0]),
        .I2(sw_IBUF[1]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(\seg_OBUF[1]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF2FFFFFFF808F)) 
    \seg_OBUF[1]_inst_i_5 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(sw_IBUF[1]),
        .I5(sw_IBUF[0]),
        .O(\seg_OBUF[1]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF6CDECC0E5C4E4C9)) 
    \seg_OBUF[1]_inst_i_6 
       (.I0(Q[3]),
        .I1(sw_IBUF[0]),
        .I2(sw_IBUF[1]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\seg_OBUF[1]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFBFBBFDDFFDFF)) 
    \seg_OBUF[1]_inst_i_7 
       (.I0(Q[3]),
        .I1(sw_IBUF[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(sw_IBUF[0]),
        .O(\seg_OBUF[1]_inst_i_7_n_0 ));
  MUXF8 \seg_OBUF[2]_inst_i_1 
       (.I0(\seg_OBUF[2]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[2]_inst_i_3_n_0 ),
        .O(seg_OBUF[2]),
        .S(dp_OBUF_inst_i_1_0[0]));
  MUXF7 \seg_OBUF[2]_inst_i_2 
       (.I0(\seg_OBUF[2]_inst_i_4_n_0 ),
        .I1(\seg_OBUF[2]_inst_i_5_n_0 ),
        .O(\seg_OBUF[2]_inst_i_2_n_0 ),
        .S(dp_OBUF_inst_i_1_0[1]));
  MUXF7 \seg_OBUF[2]_inst_i_3 
       (.I0(\seg_OBUF[2]_inst_i_6_n_0 ),
        .I1(\seg_OBUF[2]_inst_i_7_n_0 ),
        .O(\seg_OBUF[2]_inst_i_3_n_0 ),
        .S(dp_OBUF_inst_i_1_0[1]));
  LUT6 #(
    .INIT(64'hE2A0E4E4A0C180D0)) 
    \seg_OBUF[2]_inst_i_4 
       (.I0(Q[3]),
        .I1(sw_IBUF[0]),
        .I2(sw_IBUF[1]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\seg_OBUF[2]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF7D6DCD6D)) 
    \seg_OBUF[2]_inst_i_5 
       (.I0(Q[3]),
        .I1(sw_IBUF[0]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(sw_IBUF[1]),
        .O(\seg_OBUF[2]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hE6E5F4C0E4FCC5CB)) 
    \seg_OBUF[2]_inst_i_6 
       (.I0(Q[3]),
        .I1(sw_IBUF[0]),
        .I2(sw_IBUF[1]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(\seg_OBUF[2]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF7CFFFFFFBF7F7F7)) 
    \seg_OBUF[2]_inst_i_7 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(sw_IBUF[1]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(sw_IBUF[0]),
        .O(\seg_OBUF[2]_inst_i_7_n_0 ));
  MUXF8 \seg_OBUF[3]_inst_i_1 
       (.I0(\seg_OBUF[3]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[3]_inst_i_3_n_0 ),
        .O(seg_OBUF[3]),
        .S(dp_OBUF_inst_i_1_0[0]));
  MUXF7 \seg_OBUF[3]_inst_i_2 
       (.I0(\seg_OBUF[3]_inst_i_4_n_0 ),
        .I1(\seg_OBUF[3]_inst_i_5_n_0 ),
        .O(\seg_OBUF[3]_inst_i_2_n_0 ),
        .S(dp_OBUF_inst_i_1_0[1]));
  MUXF7 \seg_OBUF[3]_inst_i_3 
       (.I0(\seg_OBUF[3]_inst_i_6_n_0 ),
        .I1(\seg_OBUF[3]_inst_i_7_n_0 ),
        .O(\seg_OBUF[3]_inst_i_3_n_0 ),
        .S(dp_OBUF_inst_i_1_0[1]));
  LUT6 #(
    .INIT(64'hECE8AFAC64004000)) 
    \seg_OBUF[3]_inst_i_4 
       (.I0(Q[3]),
        .I1(sw_IBUF[0]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(sw_IBUF[1]),
        .O(\seg_OBUF[3]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF6D7F5DDD)) 
    \seg_OBUF[3]_inst_i_5 
       (.I0(Q[3]),
        .I1(sw_IBUF[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(sw_IBUF[1]),
        .O(\seg_OBUF[3]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEF64AE44CF44FDD9)) 
    \seg_OBUF[3]_inst_i_6 
       (.I0(Q[3]),
        .I1(sw_IBUF[0]),
        .I2(Q[0]),
        .I3(sw_IBUF[1]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\seg_OBUF[3]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFBFFDDFFFF)) 
    \seg_OBUF[3]_inst_i_7 
       (.I0(Q[3]),
        .I1(sw_IBUF[1]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(sw_IBUF[0]),
        .O(\seg_OBUF[3]_inst_i_7_n_0 ));
  MUXF8 \seg_OBUF[4]_inst_i_1 
       (.I0(\seg_OBUF[4]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[4]_inst_i_3_n_0 ),
        .O(seg_OBUF[4]),
        .S(dp_OBUF_inst_i_1_0[0]));
  MUXF7 \seg_OBUF[4]_inst_i_2 
       (.I0(\seg_OBUF[4]_inst_i_4_n_0 ),
        .I1(\seg_OBUF[4]_inst_i_5_n_0 ),
        .O(\seg_OBUF[4]_inst_i_2_n_0 ),
        .S(dp_OBUF_inst_i_1_0[1]));
  MUXF7 \seg_OBUF[4]_inst_i_3 
       (.I0(\seg_OBUF[4]_inst_i_6_n_0 ),
        .I1(\seg_OBUF[4]_inst_i_7_n_0 ),
        .O(\seg_OBUF[4]_inst_i_3_n_0 ),
        .S(dp_OBUF_inst_i_1_0[1]));
  LUT6 #(
    .INIT(64'hE6C4B5FCE081A8C0)) 
    \seg_OBUF[4]_inst_i_4 
       (.I0(Q[3]),
        .I1(sw_IBUF[0]),
        .I2(sw_IBUF[1]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\seg_OBUF[4]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF6D7FDDDF)) 
    \seg_OBUF[4]_inst_i_5 
       (.I0(Q[3]),
        .I1(sw_IBUF[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(sw_IBUF[1]),
        .O(\seg_OBUF[4]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF6BCF4E4C5FDFCDD)) 
    \seg_OBUF[4]_inst_i_6 
       (.I0(Q[3]),
        .I1(sw_IBUF[0]),
        .I2(sw_IBUF[1]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\seg_OBUF[4]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFBFFDFFFFF)) 
    \seg_OBUF[4]_inst_i_7 
       (.I0(Q[3]),
        .I1(sw_IBUF[1]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(sw_IBUF[0]),
        .O(\seg_OBUF[4]_inst_i_7_n_0 ));
  MUXF8 \seg_OBUF[5]_inst_i_1 
       (.I0(\seg_OBUF[5]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_3_n_0 ),
        .O(seg_OBUF[5]),
        .S(dp_OBUF_inst_i_1_0[0]));
  MUXF7 \seg_OBUF[5]_inst_i_2 
       (.I0(\seg_OBUF[5]_inst_i_4_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_5_n_0 ),
        .O(\seg_OBUF[5]_inst_i_2_n_0 ),
        .S(dp_OBUF_inst_i_1_0[1]));
  MUXF7 \seg_OBUF[5]_inst_i_3 
       (.I0(\seg_OBUF[5]_inst_i_6_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_7_n_0 ),
        .O(\seg_OBUF[5]_inst_i_3_n_0 ),
        .S(dp_OBUF_inst_i_1_0[1]));
  LUT6 #(
    .INIT(64'hE2E4E4E4E0E180D0)) 
    \seg_OBUF[5]_inst_i_4 
       (.I0(Q[3]),
        .I1(sw_IBUF[0]),
        .I2(sw_IBUF[1]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\seg_OBUF[5]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBFFEEAFFFFFFFFF)) 
    \seg_OBUF[5]_inst_i_5 
       (.I0(sw_IBUF[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(sw_IBUF[0]),
        .I5(Q[3]),
        .O(\seg_OBUF[5]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hE6F4B5FDE4FDFCDF)) 
    \seg_OBUF[5]_inst_i_6 
       (.I0(Q[3]),
        .I1(sw_IBUF[0]),
        .I2(sw_IBUF[1]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\seg_OBUF[5]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFFFFDFFFFF)) 
    \seg_OBUF[5]_inst_i_7 
       (.I0(Q[3]),
        .I1(sw_IBUF[1]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(sw_IBUF[0]),
        .O(\seg_OBUF[5]_inst_i_7_n_0 ));
  MUXF8 \seg_OBUF[6]_inst_i_1 
       (.I0(\seg_OBUF[6]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_3_n_0 ),
        .O(seg_OBUF[6]),
        .S(dp_OBUF_inst_i_1_0[0]));
  MUXF7 \seg_OBUF[6]_inst_i_2 
       (.I0(\seg_OBUF[6]_inst_i_4_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_5_n_0 ),
        .O(\seg_OBUF[6]_inst_i_2_n_0 ),
        .S(dp_OBUF_inst_i_1_0[1]));
  MUXF7 \seg_OBUF[6]_inst_i_3 
       (.I0(\seg_OBUF[6]_inst_i_6_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_7_n_0 ),
        .O(\seg_OBUF[6]_inst_i_3_n_0 ),
        .S(dp_OBUF_inst_i_1_0[1]));
  LUT6 #(
    .INIT(64'hEBDBFBCAAEE2A3E6)) 
    \seg_OBUF[6]_inst_i_4 
       (.I0(Q[3]),
        .I1(sw_IBUF[0]),
        .I2(sw_IBUF[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\seg_OBUF[6]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFDDFFFFFEDDDDDDD)) 
    \seg_OBUF[6]_inst_i_5 
       (.I0(Q[3]),
        .I1(sw_IBUF[1]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(sw_IBUF[0]),
        .O(\seg_OBUF[6]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEFECC6F6A6E7FFD9)) 
    \seg_OBUF[6]_inst_i_6 
       (.I0(Q[3]),
        .I1(sw_IBUF[0]),
        .I2(sw_IBUF[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\seg_OBUF[6]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFBFFDFFFDF)) 
    \seg_OBUF[6]_inst_i_7 
       (.I0(Q[3]),
        .I1(sw_IBUF[1]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(sw_IBUF[0]),
        .O(\seg_OBUF[6]_inst_i_7_n_0 ));
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
  wire [1:0]p_0_in;

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
        .O(p_0_in[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \multiplexing_counter[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(p_0_in[1]));
  FDCE \multiplexing_counter_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(p_0_in[0]),
        .Q(Q[0]));
  FDCE \multiplexing_counter_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(p_0_in[1]),
        .Q(Q[1]));
endmodule
