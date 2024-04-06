// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sat Apr  6 10:53:35 2024
// Host        : JKUNDRATALAPTOP running 64-bit major release  (build 9200)
// Command     : write_verilog -force ./fpga_output/fpga_netlist.v
// Design      : fpga_top_lvl
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "d50aaccb" *) 
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
    PB);
  input clk;
  input btnC;
  output clk_10kHz;
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
  wire [15:0]p_1_in;
  wire rotational_encoder_instance_n_0;
  wire rotational_encoder_instance_n_1;
  wire rotational_encoder_instance_n_10;
  wire rotational_encoder_instance_n_11;
  wire rotational_encoder_instance_n_12;
  wire rotational_encoder_instance_n_13;
  wire rotational_encoder_instance_n_14;
  wire rotational_encoder_instance_n_15;
  wire rotational_encoder_instance_n_16;
  wire rotational_encoder_instance_n_17;
  wire rotational_encoder_instance_n_18;
  wire rotational_encoder_instance_n_19;
  wire rotational_encoder_instance_n_2;
  wire rotational_encoder_instance_n_20;
  wire rotational_encoder_instance_n_21;
  wire rotational_encoder_instance_n_22;
  wire rotational_encoder_instance_n_23;
  wire rotational_encoder_instance_n_24;
  wire rotational_encoder_instance_n_25;
  wire rotational_encoder_instance_n_26;
  wire rotational_encoder_instance_n_27;
  wire rotational_encoder_instance_n_28;
  wire rotational_encoder_instance_n_29;
  wire rotational_encoder_instance_n_3;
  wire rotational_encoder_instance_n_30;
  wire rotational_encoder_instance_n_31;
  wire rotational_encoder_instance_n_4;
  wire rotational_encoder_instance_n_5;
  wire rotational_encoder_instance_n_6;
  wire rotational_encoder_instance_n_7;
  wire rotational_encoder_instance_n_8;
  wire rotational_encoder_instance_n_9;
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
  rotational_encoder rotational_encoder_instance
       (.A_IBUF(A_IBUF),
        .B_IBUF(B_IBUF),
        .CLK(clk_10kHz_OBUF),
        .D({rotational_encoder_instance_n_0,rotational_encoder_instance_n_1,rotational_encoder_instance_n_2,rotational_encoder_instance_n_3,rotational_encoder_instance_n_4,rotational_encoder_instance_n_5,rotational_encoder_instance_n_6,rotational_encoder_instance_n_7}),
        .E(rotational_encoder_instance_n_31),
        .PB_IBUF(PB_IBUF),
        .btnC_IBUF(btnC_IBUF),
        .\enc_reg[0]_0 ({rotational_encoder_instance_n_8,rotational_encoder_instance_n_9,rotational_encoder_instance_n_10,rotational_encoder_instance_n_11,rotational_encoder_instance_n_12,rotational_encoder_instance_n_13,rotational_encoder_instance_n_14}),
        .\pb_press_type_reg[0]_0 ({rotational_encoder_instance_n_15,rotational_encoder_instance_n_16,rotational_encoder_instance_n_17,rotational_encoder_instance_n_18,rotational_encoder_instance_n_19,rotational_encoder_instance_n_20,rotational_encoder_instance_n_21,rotational_encoder_instance_n_22}),
        .\pb_press_type_reg[1]_0 ({rotational_encoder_instance_n_23,rotational_encoder_instance_n_24,rotational_encoder_instance_n_25,rotational_encoder_instance_n_26,rotational_encoder_instance_n_27,rotational_encoder_instance_n_28,rotational_encoder_instance_n_29,rotational_encoder_instance_n_30}));
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
        .D({rotational_encoder_instance_n_8,rotational_encoder_instance_n_9,rotational_encoder_instance_n_10,rotational_encoder_instance_n_11,rotational_encoder_instance_n_12,rotational_encoder_instance_n_13,rotational_encoder_instance_n_14}),
        .E(rotational_encoder_instance_n_31),
        .an_OBUF(an_OBUF),
        .btnC_IBUF(btnC_IBUF),
        .dp_OBUF(dp_OBUF),
        .dp_OBUF_inst_i_1_0({rotational_encoder_instance_n_23,rotational_encoder_instance_n_24,rotational_encoder_instance_n_25,rotational_encoder_instance_n_26,rotational_encoder_instance_n_27,rotational_encoder_instance_n_28,rotational_encoder_instance_n_29,rotational_encoder_instance_n_30}),
        .dp_OBUF_inst_i_1_1({rotational_encoder_instance_n_15,rotational_encoder_instance_n_16,rotational_encoder_instance_n_17,rotational_encoder_instance_n_18,rotational_encoder_instance_n_19,rotational_encoder_instance_n_20,rotational_encoder_instance_n_21,rotational_encoder_instance_n_22}),
        .dp_OBUF_inst_i_1_2({rotational_encoder_instance_n_0,rotational_encoder_instance_n_1,rotational_encoder_instance_n_2,rotational_encoder_instance_n_3,rotational_encoder_instance_n_4,rotational_encoder_instance_n_5,rotational_encoder_instance_n_6,rotational_encoder_instance_n_7}),
        .seg_OBUF(seg_OBUF));
endmodule

module rotational_encoder
   (D,
    \enc_reg[0]_0 ,
    \pb_press_type_reg[0]_0 ,
    \pb_press_type_reg[1]_0 ,
    .E(E_BUFG),
    btnC_IBUF,
    A_IBUF,
    CLK,
    B_IBUF,
    PB_IBUF);
  output [7:0]D;
  output [6:0]\enc_reg[0]_0 ;
  output [7:0]\pb_press_type_reg[0]_0 ;
  output [7:0]\pb_press_type_reg[1]_0 ;
  input btnC_IBUF;
  input A_IBUF;
  input CLK;
  input B_IBUF;
  input PB_IBUF;
     output [0:0]E_BUFG;

  wire \<const0> ;
  wire \<const1> ;
  wire A_IBUF;
  wire B_IBUF;
  wire CLK;
  wire [7:0]D;
  wire \E[0] ;
  wire [0:0]E_BUFG;
  wire PB_IBUF;
  wire btnC_IBUF;
  wire \enc[3]_i_2_n_0 ;
  wire \enc[3]_i_3_n_0 ;
  wire [6:0]\enc_reg[0]_0 ;
  wire \enc_reg_n_0_[3] ;
  wire lastA;
  wire lastB;
  wire [11:1]p_2_in;
  wire pb_cnt0_carry__0_n_0;
  wire pb_cnt0_carry_n_0;
  wire \pb_cnt[0]_i_1_n_0 ;
  wire \pb_cnt[10]_i_1_n_0 ;
  wire \pb_cnt[11]_i_1_n_0 ;
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
  wire [7:0]\pb_press_type_reg[0]_0 ;
  wire [7:0]\pb_press_type_reg[1]_0 ;
  wire [4:0]sel0;
  wire tmp_enc;
  wire \tmp_enc[0]_i_1_n_0 ;
  wire \tmp_enc[1]_i_1_n_0 ;
  wire \tmp_enc[2]_i_1_n_0 ;
  wire \tmp_enc[3]_i_2_n_0 ;
  wire \tmp_enc[3]_i_3_n_0 ;
  wire \tmp_enc[3]_i_4_n_0 ;
  wire [3:0]tmp_enc_reg;
  wire tmp_press;
  wire \tmp_press[0]_i_1_n_0 ;
  wire \tmp_press[0]_i_2_n_0 ;
  wire \tmp_press[0]_i_3_n_0 ;
  wire \tmp_press[0]_i_4_n_0 ;
  wire \tmp_press[0]_i_5_n_0 ;
  wire \tmp_press[1]_i_1_n_0 ;
  wire \tmp_press[1]_i_2_n_0 ;
  wire \tmp_press[1]_i_3_n_0 ;
  wire \tmp_press_reg_n_0_[0] ;
  wire \tmp_press_reg_n_0_[1] ;
  wire [3:0]NLW_pb_cnt0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_pb_cnt0_carry__0_CO_UNCONNECTED;

  (* LOPT_BUFG_CLOCK *) 
  (* OPT_MODIFIED = "BUFG_OPT" *) 
  BUFG \E[0]_BUFG_inst 
       (.I(\E[0] ),
        .O(E_BUFG));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'h8CC8C0C0CCCC80C0)) 
    \enc[3]_i_1 
       (.I0(\enc[3]_i_2_n_0 ),
        .I1(PB_IBUF),
        .I2(\tmp_press_reg_n_0_[1] ),
        .I3(sel0[4]),
        .I4(\tmp_press_reg_n_0_[0] ),
        .I5(sel0[3]),
        .O(tmp_enc));
  LUT5 #(
    .INIT(32'hFFFF6FF6)) 
    \enc[3]_i_2 
       (.I0(sel0[1]),
        .I1(tmp_enc_reg[1]),
        .I2(sel0[0]),
        .I3(tmp_enc_reg[0]),
        .I4(\enc[3]_i_3_n_0 ),
        .O(\enc[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \enc[3]_i_3 
       (.I0(tmp_enc_reg[2]),
        .I1(sel0[2]),
        .I2(tmp_enc_reg[3]),
        .I3(\enc_reg_n_0_[3] ),
        .O(\enc[3]_i_3_n_0 ));
  FDRE \enc_reg[0] 
       (.C(CLK),
        .CE(tmp_enc),
        .D(tmp_enc_reg[0]),
        .Q(sel0[0]),
        .R(btnC_IBUF));
  FDRE \enc_reg[1] 
       (.C(CLK),
        .CE(tmp_enc),
        .D(tmp_enc_reg[1]),
        .Q(sel0[1]),
        .R(btnC_IBUF));
  FDRE \enc_reg[2] 
       (.C(CLK),
        .CE(tmp_enc),
        .D(tmp_enc_reg[2]),
        .Q(sel0[2]),
        .R(btnC_IBUF));
  FDRE \enc_reg[3] 
       (.C(CLK),
        .CE(tmp_enc),
        .D(tmp_enc_reg[3]),
        .Q(\enc_reg_n_0_[3] ),
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
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pb_cnt0_carry
       (.CI(\<const0> ),
        .CO({pb_cnt0_carry_n_0,NLW_pb_cnt0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\pb_cnt_reg_n_0_[0] ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(p_2_in[4:1]),
        .S({\pb_cnt_reg_n_0_[4] ,\pb_cnt_reg_n_0_[3] ,\pb_cnt_reg_n_0_[2] ,\pb_cnt_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pb_cnt0_carry__0
       (.CI(pb_cnt0_carry_n_0),
        .CO({pb_cnt0_carry__0_n_0,NLW_pb_cnt0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(p_2_in[8:5]),
        .S({\pb_cnt_reg_n_0_[8] ,\pb_cnt_reg_n_0_[7] ,\pb_cnt_reg_n_0_[6] ,\pb_cnt_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pb_cnt0_carry__1
       (.CI(pb_cnt0_carry__0_n_0),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(p_2_in[11:9]),
        .S({\<const0> ,\pb_cnt_reg_n_0_[11] ,\pb_cnt_reg_n_0_[10] ,\pb_cnt_reg_n_0_[9] }));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hD5)) 
    \pb_cnt[0]_i_1 
       (.I0(\pb_cnt_reg_n_0_[0] ),
        .I1(\pb_cnt[11]_i_3_n_0 ),
        .I2(\pb_cnt[11]_i_4_n_0 ),
        .O(\pb_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    \pb_cnt[10]_i_1 
       (.I0(\pb_cnt_reg_n_0_[0] ),
        .I1(\pb_cnt[11]_i_3_n_0 ),
        .I2(\pb_cnt[11]_i_4_n_0 ),
        .I3(p_2_in[10]),
        .O(\pb_cnt[10]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \pb_cnt[11]_i_1 
       (.I0(btnC_IBUF),
        .I1(PB_IBUF),
        .O(\pb_cnt[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    \pb_cnt[11]_i_2 
       (.I0(\pb_cnt_reg_n_0_[0] ),
        .I1(\pb_cnt[11]_i_3_n_0 ),
        .I2(\pb_cnt[11]_i_4_n_0 ),
        .I3(p_2_in[11]),
        .O(\pb_cnt[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \pb_cnt[11]_i_3 
       (.I0(\pb_cnt_reg_n_0_[9] ),
        .I1(\pb_cnt_reg_n_0_[10] ),
        .I2(\pb_cnt_reg_n_0_[7] ),
        .I3(\pb_cnt_reg_n_0_[8] ),
        .I4(PB_IBUF),
        .I5(\pb_cnt_reg_n_0_[11] ),
        .O(\pb_cnt[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \pb_cnt[11]_i_4 
       (.I0(\pb_cnt_reg_n_0_[3] ),
        .I1(\pb_cnt_reg_n_0_[4] ),
        .I2(\pb_cnt_reg_n_0_[1] ),
        .I3(\pb_cnt_reg_n_0_[2] ),
        .I4(\pb_cnt_reg_n_0_[6] ),
        .I5(\pb_cnt_reg_n_0_[5] ),
        .O(\pb_cnt[11]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    \pb_cnt[1]_i_1 
       (.I0(\pb_cnt_reg_n_0_[0] ),
        .I1(\pb_cnt[11]_i_3_n_0 ),
        .I2(\pb_cnt[11]_i_4_n_0 ),
        .I3(p_2_in[1]),
        .O(\pb_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    \pb_cnt[2]_i_1 
       (.I0(\pb_cnt_reg_n_0_[0] ),
        .I1(\pb_cnt[11]_i_3_n_0 ),
        .I2(\pb_cnt[11]_i_4_n_0 ),
        .I3(p_2_in[2]),
        .O(\pb_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    \pb_cnt[3]_i_1 
       (.I0(\pb_cnt_reg_n_0_[0] ),
        .I1(\pb_cnt[11]_i_3_n_0 ),
        .I2(\pb_cnt[11]_i_4_n_0 ),
        .I3(p_2_in[3]),
        .O(\pb_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    \pb_cnt[4]_i_1 
       (.I0(\pb_cnt_reg_n_0_[0] ),
        .I1(\pb_cnt[11]_i_3_n_0 ),
        .I2(\pb_cnt[11]_i_4_n_0 ),
        .I3(p_2_in[4]),
        .O(\pb_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    \pb_cnt[5]_i_1 
       (.I0(\pb_cnt_reg_n_0_[0] ),
        .I1(\pb_cnt[11]_i_3_n_0 ),
        .I2(\pb_cnt[11]_i_4_n_0 ),
        .I3(p_2_in[5]),
        .O(\pb_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    \pb_cnt[6]_i_1 
       (.I0(\pb_cnt_reg_n_0_[0] ),
        .I1(\pb_cnt[11]_i_3_n_0 ),
        .I2(\pb_cnt[11]_i_4_n_0 ),
        .I3(p_2_in[6]),
        .O(\pb_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    \pb_cnt[7]_i_1 
       (.I0(\pb_cnt_reg_n_0_[0] ),
        .I1(\pb_cnt[11]_i_3_n_0 ),
        .I2(\pb_cnt[11]_i_4_n_0 ),
        .I3(p_2_in[7]),
        .O(\pb_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    \pb_cnt[8]_i_1 
       (.I0(\pb_cnt_reg_n_0_[0] ),
        .I1(\pb_cnt[11]_i_3_n_0 ),
        .I2(\pb_cnt[11]_i_4_n_0 ),
        .I3(p_2_in[8]),
        .O(\pb_cnt[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    \pb_cnt[9]_i_1 
       (.I0(\pb_cnt_reg_n_0_[0] ),
        .I1(\pb_cnt[11]_i_3_n_0 ),
        .I2(\pb_cnt[11]_i_4_n_0 ),
        .I3(p_2_in[9]),
        .O(\pb_cnt[9]_i_1_n_0 ));
  FDRE \pb_cnt_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\pb_cnt[0]_i_1_n_0 ),
        .Q(\pb_cnt_reg_n_0_[0] ),
        .R(\pb_cnt[11]_i_1_n_0 ));
  FDRE \pb_cnt_reg[10] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\pb_cnt[10]_i_1_n_0 ),
        .Q(\pb_cnt_reg_n_0_[10] ),
        .R(\pb_cnt[11]_i_1_n_0 ));
  FDRE \pb_cnt_reg[11] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\pb_cnt[11]_i_2_n_0 ),
        .Q(\pb_cnt_reg_n_0_[11] ),
        .R(\pb_cnt[11]_i_1_n_0 ));
  FDRE \pb_cnt_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\pb_cnt[1]_i_1_n_0 ),
        .Q(\pb_cnt_reg_n_0_[1] ),
        .R(\pb_cnt[11]_i_1_n_0 ));
  FDRE \pb_cnt_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\pb_cnt[2]_i_1_n_0 ),
        .Q(\pb_cnt_reg_n_0_[2] ),
        .R(\pb_cnt[11]_i_1_n_0 ));
  FDRE \pb_cnt_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\pb_cnt[3]_i_1_n_0 ),
        .Q(\pb_cnt_reg_n_0_[3] ),
        .R(\pb_cnt[11]_i_1_n_0 ));
  FDRE \pb_cnt_reg[4] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\pb_cnt[4]_i_1_n_0 ),
        .Q(\pb_cnt_reg_n_0_[4] ),
        .R(\pb_cnt[11]_i_1_n_0 ));
  FDRE \pb_cnt_reg[5] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\pb_cnt[5]_i_1_n_0 ),
        .Q(\pb_cnt_reg_n_0_[5] ),
        .R(\pb_cnt[11]_i_1_n_0 ));
  FDRE \pb_cnt_reg[6] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\pb_cnt[6]_i_1_n_0 ),
        .Q(\pb_cnt_reg_n_0_[6] ),
        .R(\pb_cnt[11]_i_1_n_0 ));
  FDRE \pb_cnt_reg[7] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\pb_cnt[7]_i_1_n_0 ),
        .Q(\pb_cnt_reg_n_0_[7] ),
        .R(\pb_cnt[11]_i_1_n_0 ));
  FDRE \pb_cnt_reg[8] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\pb_cnt[8]_i_1_n_0 ),
        .Q(\pb_cnt_reg_n_0_[8] ),
        .R(\pb_cnt[11]_i_1_n_0 ));
  FDRE \pb_cnt_reg[9] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\pb_cnt[9]_i_1_n_0 ),
        .Q(\pb_cnt_reg_n_0_[9] ),
        .R(\pb_cnt[11]_i_1_n_0 ));
  FDRE \pb_press_type_reg[0] 
       (.C(CLK),
        .CE(tmp_enc),
        .D(\tmp_press_reg_n_0_[0] ),
        .Q(sel0[3]),
        .R(btnC_IBUF));
  FDRE \pb_press_type_reg[1] 
       (.C(CLK),
        .CE(tmp_enc),
        .D(\tmp_press_reg_n_0_[1] ),
        .Q(sel0[4]),
        .R(btnC_IBUF));
  LUT6 #(
    .INIT(64'hFF03540003000000)) 
    \seven_seg_1_reg[0]_i_1 
       (.I0(\enc_reg_n_0_[3] ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(sel0[4]),
        .I5(sel0[3]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h20AC20BC22480109)) 
    \seven_seg_1_reg[1]_i_1 
       (.I0(sel0[4]),
        .I1(sel0[3]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\enc_reg_n_0_[3] ),
        .I5(sel0[0]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h0707004420010002)) 
    \seven_seg_1_reg[2]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(\enc_reg_n_0_[3] ),
        .I4(sel0[4]),
        .I5(sel0[3]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h0F03540003000000)) 
    \seven_seg_1_reg[3]_i_1 
       (.I0(\enc_reg_n_0_[3] ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(sel0[4]),
        .I5(sel0[3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h0410D44004C4D4C2)) 
    \seven_seg_1_reg[4]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[3]),
        .I3(sel0[4]),
        .I4(sel0[2]),
        .I5(\enc_reg_n_0_[3] ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFA000040FA41F140)) 
    \seven_seg_1_reg[5]_i_1 
       (.I0(\enc_reg_n_0_[3] ),
        .I1(sel0[2]),
        .I2(sel0[3]),
        .I3(sel0[4]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h0206F6F2BE8F8E9A)) 
    \seven_seg_1_reg[6]_i_1 
       (.I0(\enc_reg_n_0_[3] ),
        .I1(sel0[1]),
        .I2(sel0[3]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(sel0[4]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFFFF5DFFFFFFFFFF)) 
    \seven_seg_1_reg[7]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[3]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(sel0[4]),
        .I5(\enc_reg_n_0_[3] ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h8ACE8ACE8A8AEFAD)) 
    \seven_seg_2_reg[0]_i_1 
       (.I0(sel0[3]),
        .I1(sel0[4]),
        .I2(\enc_reg_n_0_[3] ),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(sel0[1]),
        .O(\pb_press_type_reg[0]_0 [0]));
  LUT6 #(
    .INIT(64'hFF7CC004FF560041)) 
    \seven_seg_2_reg[1]_i_1 
       (.I0(\enc_reg_n_0_[3] ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[4]),
        .I4(sel0[3]),
        .I5(sel0[0]),
        .O(\pb_press_type_reg[0]_0 [1]));
  LUT6 #(
    .INIT(64'hFFFF181811FC0125)) 
    \seven_seg_2_reg[2]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(\enc_reg_n_0_[3] ),
        .I4(sel0[3]),
        .I5(sel0[4]),
        .O(\pb_press_type_reg[0]_0 [2]));
  LUT6 #(
    .INIT(64'h0300CF88DF45DE8D)) 
    \seven_seg_2_reg[3]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[4]),
        .I2(\enc_reg_n_0_[3] ),
        .I3(sel0[3]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\pb_press_type_reg[0]_0 [3]));
  LUT6 #(
    .INIT(64'h0770FA30F573FBF1)) 
    \seven_seg_2_reg[4]_i_1 
       (.I0(sel0[1]),
        .I1(\enc_reg_n_0_[3] ),
        .I2(sel0[3]),
        .I3(sel0[4]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\pb_press_type_reg[0]_0 [4]));
  LUT6 #(
    .INIT(64'h1D1FDFFF0CDD0D47)) 
    \seven_seg_2_reg[5]_i_1 
       (.I0(\enc_reg_n_0_[3] ),
        .I1(sel0[4]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[3]),
        .O(\pb_press_type_reg[0]_0 [5]));
  LUT6 #(
    .INIT(64'h5514F0B5B4FFBEE3)) 
    \seven_seg_2_reg[6]_i_1 
       (.I0(sel0[4]),
        .I1(\enc_reg_n_0_[3] ),
        .I2(sel0[3]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\pb_press_type_reg[0]_0 [6]));
  LUT6 #(
    .INIT(64'hFFFFAA7FFAFDAA7F)) 
    \seven_seg_2_reg[7]_i_1 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[4]),
        .I4(\enc_reg_n_0_[3] ),
        .I5(sel0[0]),
        .O(\pb_press_type_reg[0]_0 [7]));
  LUT6 #(
    .INIT(64'hFFFFFFFF1F22FF7F)) 
    \seven_seg_3_reg[0]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(\enc_reg_n_0_[3] ),
        .I5(sel0[4]),
        .O(\pb_press_type_reg[1]_0 [0]));
  LUT6 #(
    .INIT(64'hFF2FFF08FFFFFF0F)) 
    \seven_seg_3_reg[1]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[4]),
        .I4(sel0[3]),
        .I5(\enc_reg_n_0_[3] ),
        .O(\pb_press_type_reg[1]_0 [1]));
  LUT6 #(
    .INIT(64'h2F7FFAEF6F7FBAAF)) 
    \seven_seg_3_reg[2]_i_1 
       (.I0(sel0[4]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(\enc_reg_n_0_[3] ),
        .I4(sel0[3]),
        .I5(sel0[1]),
        .O(\pb_press_type_reg[1]_0 [2]));
  LUT6 #(
    .INIT(64'h5FFF5FFF1F22FF7F)) 
    \seven_seg_3_reg[3]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(\enc_reg_n_0_[3] ),
        .I5(sel0[4]),
        .O(\pb_press_type_reg[1]_0 [3]));
  LUT6 #(
    .INIT(64'h5FFF5FFF5F23FF7F)) 
    \seven_seg_3_reg[4]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(\enc_reg_n_0_[3] ),
        .I5(sel0[4]),
        .O(\pb_press_type_reg[1]_0 [4]));
  LUT6 #(
    .INIT(64'hFF3FFFDFFFFFFF1F)) 
    \seven_seg_3_reg[5]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(\enc_reg_n_0_[3] ),
        .I3(sel0[4]),
        .I4(sel0[3]),
        .I5(sel0[2]),
        .O(\pb_press_type_reg[1]_0 [5]));
  LUT6 #(
    .INIT(64'hFFFFFFFF9F00FF7F)) 
    \seven_seg_3_reg[6]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(\enc_reg_n_0_[3] ),
        .I5(sel0[4]),
        .O(\pb_press_type_reg[1]_0 [6]));
  LUT6 #(
    .INIT(64'hFBFFFBFFFBFFFFFF)) 
    \seven_seg_3_reg[7]_i_1 
       (.I0(sel0[4]),
        .I1(\enc_reg_n_0_[3] ),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(\pb_press_type_reg[1]_0 [7]));
  LUT6 #(
    .INIT(64'hAFEFEFFF77EF7777)) 
    \seven_seg_4_reg[1]_i_1 
       (.I0(sel0[4]),
        .I1(sel0[3]),
        .I2(\enc_reg_n_0_[3] ),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(sel0[1]),
        .O(\enc_reg[0]_0 [0]));
  LUT6 #(
    .INIT(64'hDDDD7FFFFFFF07FF)) 
    \seven_seg_4_reg[2]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(\enc_reg_n_0_[3] ),
        .I4(sel0[4]),
        .I5(sel0[3]),
        .O(\enc_reg[0]_0 [1]));
  LUT6 #(
    .INIT(64'hFEFEFFFFFFFFAFFF)) 
    \seven_seg_4_reg[3]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(\enc_reg_n_0_[3] ),
        .I4(sel0[3]),
        .I5(sel0[4]),
        .O(\enc_reg[0]_0 [2]));
  LUT6 #(
    .INIT(64'hBBCFFFFFFFFFBBFF)) 
    \seven_seg_4_reg[4]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[4]),
        .I2(\enc_reg_n_0_[3] ),
        .I3(sel0[3]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\enc_reg[0]_0 [3]));
  LUT5 #(
    .INIT(32'h3FFFFF7F)) 
    \seven_seg_4_reg[5]_i_1 
       (.I0(\enc_reg_n_0_[3] ),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(sel0[4]),
        .O(\enc_reg[0]_0 [4]));
  LUT6 #(
    .INIT(64'hFF66FFFFFFFFFF5F)) 
    \seven_seg_4_reg[6]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(\enc_reg_n_0_[3] ),
        .I3(sel0[1]),
        .I4(sel0[3]),
        .I5(sel0[4]),
        .O(\enc_reg[0]_0 [5]));
  LUT6 #(
    .INIT(64'hFFFF8FFFFFFFFFFF)) 
    \seven_seg_4_reg[7]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(sel0[4]),
        .I5(\enc_reg_n_0_[3] ),
        .O(\enc_reg[0]_0 [6]));
  (* OPT_MODIFIED = "BUFG_OPT" *) 
  LUT6 #(
    .INIT(64'h5F0F5FFFFF7FFFFF)) 
    \seven_seg_4_reg[7]_i_2 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(\enc_reg_n_0_[3] ),
        .I5(sel0[4]),
        .O(\E[0] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \tmp_enc[0]_i_1 
       (.I0(tmp_enc_reg[0]),
        .O(\tmp_enc[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAA65559)) 
    \tmp_enc[1]_i_1 
       (.I0(tmp_enc_reg[1]),
        .I1(A_IBUF),
        .I2(lastA),
        .I3(B_IBUF),
        .I4(tmp_enc_reg[0]),
        .O(\tmp_enc[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA9A9A9A9A9A96AA9)) 
    \tmp_enc[2]_i_1 
       (.I0(tmp_enc_reg[2]),
        .I1(tmp_enc_reg[0]),
        .I2(tmp_enc_reg[1]),
        .I3(A_IBUF),
        .I4(lastA),
        .I5(B_IBUF),
        .O(\tmp_enc[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \tmp_enc[3]_i_1 
       (.I0(tmp_enc),
        .I1(btnC_IBUF),
        .O(tmp_press));
  LUT4 #(
    .INIT(16'h0344)) 
    \tmp_enc[3]_i_2 
       (.I0(lastB),
        .I1(B_IBUF),
        .I2(lastA),
        .I3(A_IBUF),
        .O(\tmp_enc[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFE017F80)) 
    \tmp_enc[3]_i_3 
       (.I0(tmp_enc_reg[1]),
        .I1(tmp_enc_reg[0]),
        .I2(tmp_enc_reg[2]),
        .I3(tmp_enc_reg[3]),
        .I4(\tmp_enc[3]_i_4_n_0 ),
        .O(\tmp_enc[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hFD)) 
    \tmp_enc[3]_i_4 
       (.I0(A_IBUF),
        .I1(lastA),
        .I2(B_IBUF),
        .O(\tmp_enc[3]_i_4_n_0 ));
  FDRE \tmp_enc_reg[0] 
       (.C(CLK),
        .CE(\tmp_enc[3]_i_2_n_0 ),
        .D(\tmp_enc[0]_i_1_n_0 ),
        .Q(tmp_enc_reg[0]),
        .R(tmp_press));
  FDRE \tmp_enc_reg[1] 
       (.C(CLK),
        .CE(\tmp_enc[3]_i_2_n_0 ),
        .D(\tmp_enc[1]_i_1_n_0 ),
        .Q(tmp_enc_reg[1]),
        .R(tmp_press));
  FDRE \tmp_enc_reg[2] 
       (.C(CLK),
        .CE(\tmp_enc[3]_i_2_n_0 ),
        .D(\tmp_enc[2]_i_1_n_0 ),
        .Q(tmp_enc_reg[2]),
        .R(tmp_press));
  FDRE \tmp_enc_reg[3] 
       (.C(CLK),
        .CE(\tmp_enc[3]_i_2_n_0 ),
        .D(\tmp_enc[3]_i_3_n_0 ),
        .Q(tmp_enc_reg[3]),
        .R(tmp_press));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \tmp_press[0]_i_1 
       (.I0(\tmp_press_reg_n_0_[0] ),
        .I1(PB_IBUF),
        .I2(\tmp_press[0]_i_2_n_0 ),
        .I3(btnC_IBUF),
        .I4(tmp_enc),
        .O(\tmp_press[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEE40)) 
    \tmp_press[0]_i_2 
       (.I0(\pb_cnt_reg_n_0_[9] ),
        .I1(\pb_cnt_reg_n_0_[8] ),
        .I2(\tmp_press[1]_i_3_n_0 ),
        .I3(\pb_cnt_reg_n_0_[10] ),
        .I4(\pb_cnt_reg_n_0_[11] ),
        .I5(\tmp_press[0]_i_3_n_0 ),
        .O(\tmp_press[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCDDCCCCCCFC)) 
    \tmp_press[0]_i_3 
       (.I0(\pb_cnt_reg_n_0_[8] ),
        .I1(\tmp_press[0]_i_4_n_0 ),
        .I2(\tmp_press[0]_i_5_n_0 ),
        .I3(\pb_cnt_reg_n_0_[10] ),
        .I4(\pb_cnt_reg_n_0_[9] ),
        .I5(\pb_cnt_reg_n_0_[7] ),
        .O(\tmp_press[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1010100010001000)) 
    \tmp_press[0]_i_4 
       (.I0(\pb_cnt_reg_n_0_[8] ),
        .I1(\pb_cnt_reg_n_0_[9] ),
        .I2(\pb_cnt_reg_n_0_[7] ),
        .I3(\pb_cnt_reg_n_0_[6] ),
        .I4(\pb_cnt_reg_n_0_[4] ),
        .I5(\pb_cnt_reg_n_0_[5] ),
        .O(\tmp_press[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFE000000)) 
    \tmp_press[0]_i_5 
       (.I0(\pb_cnt_reg_n_0_[3] ),
        .I1(\pb_cnt_reg_n_0_[2] ),
        .I2(\pb_cnt_reg_n_0_[1] ),
        .I3(\pb_cnt_reg_n_0_[4] ),
        .I4(\pb_cnt_reg_n_0_[5] ),
        .I5(\pb_cnt_reg_n_0_[6] ),
        .O(\tmp_press[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \tmp_press[1]_i_1 
       (.I0(\tmp_press_reg_n_0_[1] ),
        .I1(PB_IBUF),
        .I2(\tmp_press[1]_i_2_n_0 ),
        .I3(btnC_IBUF),
        .I4(tmp_enc),
        .O(\tmp_press[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFFFEFE)) 
    \tmp_press[1]_i_2 
       (.I0(\pb_cnt_reg_n_0_[11] ),
        .I1(\pb_cnt_reg_n_0_[9] ),
        .I2(\pb_cnt_reg_n_0_[10] ),
        .I3(\tmp_press[1]_i_3_n_0 ),
        .I4(\pb_cnt_reg_n_0_[8] ),
        .O(\tmp_press[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h01FF)) 
    \tmp_press[1]_i_3 
       (.I0(\pb_cnt_reg_n_0_[4] ),
        .I1(\pb_cnt_reg_n_0_[5] ),
        .I2(\pb_cnt_reg_n_0_[6] ),
        .I3(\pb_cnt_reg_n_0_[7] ),
        .O(\tmp_press[1]_i_3_n_0 ));
  FDRE \tmp_press_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\tmp_press[0]_i_1_n_0 ),
        .Q(\tmp_press_reg_n_0_[0] ),
        .R(\<const0> ));
  FDRE \tmp_press_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\tmp_press[1]_i_1_n_0 ),
        .Q(\tmp_press_reg_n_0_[1] ),
        .R(\<const0> ));
endmodule

module seven_seg
   (dp_OBUF,
    seg_OBUF,
    an_OBUF,
    D,
    E,
    dp_OBUF_inst_i_1_0,
    dp_OBUF_inst_i_1_1,
    dp_OBUF_inst_i_1_2,
    CLK,
    btnC_IBUF);
  output dp_OBUF;
  output [6:0]seg_OBUF;
  output [3:0]an_OBUF;
  input [6:0]D;
  input [0:0]E;
  input [7:0]dp_OBUF_inst_i_1_0;
  input [7:0]dp_OBUF_inst_i_1_1;
  input [7:0]dp_OBUF_inst_i_1_2;
  input CLK;
  input btnC_IBUF;

  wire \<const1> ;
  wire CLK;
  wire [6:0]D;
  wire [0:0]E;
  wire GND_1;
  wire VCC_2;
  wire [3:0]an_OBUF;
  wire btnC_IBUF;
  wire dp_OBUF;
  wire [7:0]dp_OBUF_inst_i_1_0;
  wire [7:0]dp_OBUF_inst_i_1_1;
  wire [7:0]dp_OBUF_inst_i_1_2;
  wire \multiplexing_counter[0]_i_1_n_0 ;
  wire \multiplexing_counter[1]_i_1_n_0 ;
  wire [1:0]multiplexing_counter_reg;
  wire [6:0]seg_OBUF;
  wire [7:0]seven_seg_1;
  wire [7:0]seven_seg_2;
  wire [7:0]seven_seg_3;
  wire [7:1]seven_seg_4;

  GND GND
       (.G(GND_1));
  VCC VCC
       (.P(\<const1> ));
  VCC VCC_1
       (.P(VCC_2));
  LUT2 #(
    .INIT(4'hE)) 
    \an_OBUF[0]_inst_i_1 
       (.I0(multiplexing_counter_reg[0]),
        .I1(multiplexing_counter_reg[1]),
        .O(an_OBUF[0]));
  LUT2 #(
    .INIT(4'hB)) 
    \an_OBUF[1]_inst_i_1 
       (.I0(multiplexing_counter_reg[1]),
        .I1(multiplexing_counter_reg[0]),
        .O(an_OBUF[1]));
  LUT2 #(
    .INIT(4'hB)) 
    \an_OBUF[2]_inst_i_1 
       (.I0(multiplexing_counter_reg[0]),
        .I1(multiplexing_counter_reg[1]),
        .O(an_OBUF[2]));
  LUT2 #(
    .INIT(4'h7)) 
    \an_OBUF[3]_inst_i_1 
       (.I0(multiplexing_counter_reg[0]),
        .I1(multiplexing_counter_reg[1]),
        .O(an_OBUF[3]));
  LUT6 #(
    .INIT(64'hAFCFA0CFAFC0A0C0)) 
    dp_OBUF_inst_i_1
       (.I0(seven_seg_4[7]),
        .I1(seven_seg_3[7]),
        .I2(multiplexing_counter_reg[1]),
        .I3(multiplexing_counter_reg[0]),
        .I4(seven_seg_2[7]),
        .I5(seven_seg_1[7]),
        .O(dp_OBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \multiplexing_counter[0]_i_1 
       (.I0(multiplexing_counter_reg[0]),
        .O(\multiplexing_counter[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \multiplexing_counter[1]_i_1 
       (.I0(multiplexing_counter_reg[1]),
        .I1(multiplexing_counter_reg[0]),
        .O(\multiplexing_counter[1]_i_1_n_0 ));
  FDCE \multiplexing_counter_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(\multiplexing_counter[0]_i_1_n_0 ),
        .Q(multiplexing_counter_reg[0]));
  FDCE \multiplexing_counter_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(\multiplexing_counter[1]_i_1_n_0 ),
        .Q(multiplexing_counter_reg[1]));
  LUT6 #(
    .INIT(64'hAFCFA0CFAFC0A0C0)) 
    \seg_OBUF[0]_inst_i_1 
       (.I0(seven_seg_4[6]),
        .I1(seven_seg_3[0]),
        .I2(multiplexing_counter_reg[1]),
        .I3(multiplexing_counter_reg[0]),
        .I4(seven_seg_2[0]),
        .I5(seven_seg_1[0]),
        .O(seg_OBUF[0]));
  LUT6 #(
    .INIT(64'hAFCFA0CFAFC0A0C0)) 
    \seg_OBUF[1]_inst_i_1 
       (.I0(seven_seg_4[1]),
        .I1(seven_seg_3[1]),
        .I2(multiplexing_counter_reg[1]),
        .I3(multiplexing_counter_reg[0]),
        .I4(seven_seg_2[1]),
        .I5(seven_seg_1[1]),
        .O(seg_OBUF[1]));
  LUT6 #(
    .INIT(64'hAFCFA0CFAFC0A0C0)) 
    \seg_OBUF[2]_inst_i_1 
       (.I0(seven_seg_4[2]),
        .I1(seven_seg_3[2]),
        .I2(multiplexing_counter_reg[1]),
        .I3(multiplexing_counter_reg[0]),
        .I4(seven_seg_2[2]),
        .I5(seven_seg_1[2]),
        .O(seg_OBUF[2]));
  LUT6 #(
    .INIT(64'hAFCFA0CFAFC0A0C0)) 
    \seg_OBUF[3]_inst_i_1 
       (.I0(seven_seg_4[3]),
        .I1(seven_seg_3[3]),
        .I2(multiplexing_counter_reg[1]),
        .I3(multiplexing_counter_reg[0]),
        .I4(seven_seg_2[3]),
        .I5(seven_seg_1[3]),
        .O(seg_OBUF[3]));
  LUT6 #(
    .INIT(64'hAFCFA0CFAFC0A0C0)) 
    \seg_OBUF[4]_inst_i_1 
       (.I0(seven_seg_4[4]),
        .I1(seven_seg_3[4]),
        .I2(multiplexing_counter_reg[1]),
        .I3(multiplexing_counter_reg[0]),
        .I4(seven_seg_2[4]),
        .I5(seven_seg_1[4]),
        .O(seg_OBUF[4]));
  LUT6 #(
    .INIT(64'hAFCFA0CFAFC0A0C0)) 
    \seg_OBUF[5]_inst_i_1 
       (.I0(seven_seg_4[5]),
        .I1(seven_seg_3[5]),
        .I2(multiplexing_counter_reg[1]),
        .I3(multiplexing_counter_reg[0]),
        .I4(seven_seg_2[5]),
        .I5(seven_seg_1[5]),
        .O(seg_OBUF[5]));
  LUT6 #(
    .INIT(64'hAFCFA0CFAFC0A0C0)) 
    \seg_OBUF[6]_inst_i_1 
       (.I0(seven_seg_4[6]),
        .I1(seven_seg_3[6]),
        .I2(multiplexing_counter_reg[1]),
        .I3(multiplexing_counter_reg[0]),
        .I4(seven_seg_2[6]),
        .I5(seven_seg_1[6]),
        .O(seg_OBUF[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \seven_seg_1_reg[0] 
       (.CLR(GND_1),
        .D(dp_OBUF_inst_i_1_2[0]),
        .G(E),
        .GE(VCC_2),
        .Q(seven_seg_1[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \seven_seg_1_reg[1] 
       (.CLR(GND_1),
        .D(dp_OBUF_inst_i_1_2[1]),
        .G(E),
        .GE(VCC_2),
        .Q(seven_seg_1[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \seven_seg_1_reg[2] 
       (.CLR(GND_1),
        .D(dp_OBUF_inst_i_1_2[2]),
        .G(E),
        .GE(VCC_2),
        .Q(seven_seg_1[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \seven_seg_1_reg[3] 
       (.CLR(GND_1),
        .D(dp_OBUF_inst_i_1_2[3]),
        .G(E),
        .GE(VCC_2),
        .Q(seven_seg_1[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \seven_seg_1_reg[4] 
       (.CLR(GND_1),
        .D(dp_OBUF_inst_i_1_2[4]),
        .G(E),
        .GE(VCC_2),
        .Q(seven_seg_1[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \seven_seg_1_reg[5] 
       (.CLR(GND_1),
        .D(dp_OBUF_inst_i_1_2[5]),
        .G(E),
        .GE(VCC_2),
        .Q(seven_seg_1[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \seven_seg_1_reg[6] 
       (.CLR(GND_1),
        .D(dp_OBUF_inst_i_1_2[6]),
        .G(E),
        .GE(VCC_2),
        .Q(seven_seg_1[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \seven_seg_1_reg[7] 
       (.CLR(GND_1),
        .D(dp_OBUF_inst_i_1_2[7]),
        .G(E),
        .GE(VCC_2),
        .Q(seven_seg_1[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \seven_seg_2_reg[0] 
       (.CLR(GND_1),
        .D(dp_OBUF_inst_i_1_1[0]),
        .G(E),
        .GE(VCC_2),
        .Q(seven_seg_2[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \seven_seg_2_reg[1] 
       (.CLR(GND_1),
        .D(dp_OBUF_inst_i_1_1[1]),
        .G(E),
        .GE(VCC_2),
        .Q(seven_seg_2[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \seven_seg_2_reg[2] 
       (.CLR(GND_1),
        .D(dp_OBUF_inst_i_1_1[2]),
        .G(E),
        .GE(VCC_2),
        .Q(seven_seg_2[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \seven_seg_2_reg[3] 
       (.CLR(GND_1),
        .D(dp_OBUF_inst_i_1_1[3]),
        .G(E),
        .GE(VCC_2),
        .Q(seven_seg_2[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \seven_seg_2_reg[4] 
       (.CLR(GND_1),
        .D(dp_OBUF_inst_i_1_1[4]),
        .G(E),
        .GE(VCC_2),
        .Q(seven_seg_2[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \seven_seg_2_reg[5] 
       (.CLR(GND_1),
        .D(dp_OBUF_inst_i_1_1[5]),
        .G(E),
        .GE(VCC_2),
        .Q(seven_seg_2[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \seven_seg_2_reg[6] 
       (.CLR(GND_1),
        .D(dp_OBUF_inst_i_1_1[6]),
        .G(E),
        .GE(VCC_2),
        .Q(seven_seg_2[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \seven_seg_2_reg[7] 
       (.CLR(GND_1),
        .D(dp_OBUF_inst_i_1_1[7]),
        .G(E),
        .GE(VCC_2),
        .Q(seven_seg_2[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \seven_seg_3_reg[0] 
       (.CLR(GND_1),
        .D(dp_OBUF_inst_i_1_0[0]),
        .G(E),
        .GE(VCC_2),
        .Q(seven_seg_3[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \seven_seg_3_reg[1] 
       (.CLR(GND_1),
        .D(dp_OBUF_inst_i_1_0[1]),
        .G(E),
        .GE(VCC_2),
        .Q(seven_seg_3[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \seven_seg_3_reg[2] 
       (.CLR(GND_1),
        .D(dp_OBUF_inst_i_1_0[2]),
        .G(E),
        .GE(VCC_2),
        .Q(seven_seg_3[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \seven_seg_3_reg[3] 
       (.CLR(GND_1),
        .D(dp_OBUF_inst_i_1_0[3]),
        .G(E),
        .GE(VCC_2),
        .Q(seven_seg_3[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \seven_seg_3_reg[4] 
       (.CLR(GND_1),
        .D(dp_OBUF_inst_i_1_0[4]),
        .G(E),
        .GE(VCC_2),
        .Q(seven_seg_3[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \seven_seg_3_reg[5] 
       (.CLR(GND_1),
        .D(dp_OBUF_inst_i_1_0[5]),
        .G(E),
        .GE(VCC_2),
        .Q(seven_seg_3[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \seven_seg_3_reg[6] 
       (.CLR(GND_1),
        .D(dp_OBUF_inst_i_1_0[6]),
        .G(E),
        .GE(VCC_2),
        .Q(seven_seg_3[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \seven_seg_3_reg[7] 
       (.CLR(GND_1),
        .D(dp_OBUF_inst_i_1_0[7]),
        .G(E),
        .GE(VCC_2),
        .Q(seven_seg_3[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \seven_seg_4_reg[1] 
       (.CLR(GND_1),
        .D(D[0]),
        .G(E),
        .GE(VCC_2),
        .Q(seven_seg_4[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \seven_seg_4_reg[2] 
       (.CLR(GND_1),
        .D(D[1]),
        .G(E),
        .GE(VCC_2),
        .Q(seven_seg_4[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \seven_seg_4_reg[3] 
       (.CLR(GND_1),
        .D(D[2]),
        .G(E),
        .GE(VCC_2),
        .Q(seven_seg_4[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \seven_seg_4_reg[4] 
       (.CLR(GND_1),
        .D(D[3]),
        .G(E),
        .GE(VCC_2),
        .Q(seven_seg_4[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \seven_seg_4_reg[5] 
       (.CLR(GND_1),
        .D(D[4]),
        .G(E),
        .GE(VCC_2),
        .Q(seven_seg_4[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \seven_seg_4_reg[6] 
       (.CLR(GND_1),
        .D(D[5]),
        .G(E),
        .GE(VCC_2),
        .Q(seven_seg_4[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \seven_seg_4_reg[7] 
       (.CLR(GND_1),
        .D(D[6]),
        .G(E),
        .GE(VCC_2),
        .Q(seven_seg_4[7]));
endmodule
