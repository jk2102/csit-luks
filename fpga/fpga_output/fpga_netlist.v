// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Apr 15 15:33:50 2024
// Host        : radna_stanica running 64-bit major release  (build 9200)
// Command     : write_verilog -force ./fpga_output/fpga_netlist.v
// Design      : fpga_top_lvl
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "5371b2f2" *) 
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
    PB,
    FLASH_CS,
    FLASH_MOSI,
    FLASH_MISO,
    LUKS_CS,
    LUKS_SCLK,
    LUKS_MISO,
    FLASH_SCLK_debug,
    FLASH_CS_debug,
    FLASH_MOSI_debug,
    FLASH_MISO_debug,
    LEDS_debug);
  input clk;
  input btnC;
  output clk_1kHz;
  output [6:0]seg;
  output dp;
  output [3:0]an;
  input A;
  input B;
  input PB;
  output FLASH_CS;
  output FLASH_MOSI;
  input FLASH_MISO;
  output LUKS_CS;
  output LUKS_SCLK;
  input LUKS_MISO;
  output FLASH_SCLK_debug;
  output FLASH_CS_debug;
  output FLASH_MOSI_debug;
  output FLASH_MISO_debug;
  output [7:0]LEDS_debug;

  wire \<const0> ;
  wire \<const1> ;
  wire A;
  wire A_IBUF;
  wire B;
  wire B_IBUF;
  wire FLASH_CS;
  wire FLASH_CS_debug;
  wire FLASH_CS_debug_OBUF;
  wire FLASH_MISO;
  wire FLASH_MISO_debug;
  wire FLASH_MISO_debug_OBUF;
  wire FLASH_MOSI;
  wire FLASH_MOSI_debug;
  wire FLASH_MOSI_debug_OBUF;
  wire FLASH_SCLK_debug;
  wire FLASH_SCLK_debug_OBUF;
  wire [7:0]LEDS_debug;
  wire [7:0]LEDS_debug_OBUF;
  wire LUKS_CS;
  wire LUKS_CS_OBUF;
  wire LUKS_MISO;
  wire LUKS_MISO_IBUF;
  wire LUKS_SCLK;
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
  wire [0:0]counter;
  wire \counter[15]_i_1_n_0 ;
  wire \counter[15]_i_4_n_0 ;
  wire \counter[15]_i_5_n_0 ;
  wire \counter[15]_i_6_n_0 ;
  wire \counter_reg[12]_i_1_n_0 ;
  wire \counter_reg[12]_i_1_n_4 ;
  wire \counter_reg[12]_i_1_n_5 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[15]_i_2_n_5 ;
  wire \counter_reg[15]_i_2_n_6 ;
  wire \counter_reg[15]_i_2_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[10] ;
  wire \counter_reg_n_0_[11] ;
  wire \counter_reg_n_0_[12] ;
  wire \counter_reg_n_0_[13] ;
  wire \counter_reg_n_0_[14] ;
  wire \counter_reg_n_0_[15] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[3] ;
  wire \counter_reg_n_0_[4] ;
  wire \counter_reg_n_0_[5] ;
  wire \counter_reg_n_0_[6] ;
  wire \counter_reg_n_0_[7] ;
  wire \counter_reg_n_0_[8] ;
  wire \counter_reg_n_0_[9] ;
  wire dp;
  wire dp_OBUF;
  wire lopt;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire lopt_6;
  wire lopt_7;
  wire [6:0]seg;
  wire [6:0]seg_OBUF;
  wire [3:0]\NLW_counter_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[4]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[8]_i_1_CO_UNCONNECTED ;
  wire [7:0]NLW_u_tt_um_csit_luks_Q_UNCONNECTED;

  IBUF A_IBUF_inst
       (.I(A),
        .O(A_IBUF));
  IBUF B_IBUF_inst
       (.I(B),
        .O(B_IBUF));
  OBUF FLASH_CS_OBUF_inst
       (.I(FLASH_CS_debug_OBUF),
        .O(FLASH_CS));
  OBUF FLASH_CS_debug_OBUF_inst
       (.I(FLASH_CS_debug_OBUF),
        .O(FLASH_CS_debug));
  IBUF FLASH_MISO_IBUF_inst
       (.I(FLASH_MISO),
        .O(FLASH_MISO_debug_OBUF));
  OBUF FLASH_MISO_debug_OBUF_inst
       (.I(FLASH_MISO_debug_OBUF),
        .O(FLASH_MISO_debug));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF FLASH_MOSI_OBUF_inst
       (.I(lopt),
        .O(FLASH_MOSI));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF FLASH_MOSI_debug_OBUF_inst
       (.I(FLASH_MOSI_debug_OBUF),
        .O(FLASH_MOSI_debug));
  OBUF FLASH_SCLK_debug_OBUF_inst
       (.I(FLASH_SCLK_debug_OBUF),
        .O(FLASH_SCLK_debug));
  GND GND
       (.G(\<const0> ));
  OBUF \LEDS_debug_OBUF[0]_inst 
       (.I(LEDS_debug_OBUF[0]),
        .O(LEDS_debug[0]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \LEDS_debug_OBUF[1]_inst 
       (.I(lopt_2),
        .O(LEDS_debug[1]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \LEDS_debug_OBUF[2]_inst 
       (.I(lopt_3),
        .O(LEDS_debug[2]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \LEDS_debug_OBUF[3]_inst 
       (.I(lopt_4),
        .O(LEDS_debug[3]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \LEDS_debug_OBUF[4]_inst 
       (.I(lopt_5),
        .O(LEDS_debug[4]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \LEDS_debug_OBUF[5]_inst 
       (.I(lopt_6),
        .O(LEDS_debug[5]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \LEDS_debug_OBUF[6]_inst 
       (.I(lopt_7),
        .O(LEDS_debug[6]));
  OBUF \LEDS_debug_OBUF[7]_inst 
       (.I(LEDS_debug_OBUF[7]),
        .O(LEDS_debug[7]));
  OBUF LUKS_CS_OBUF_inst
       (.I(LUKS_CS_OBUF),
        .O(LUKS_CS));
  IBUF LUKS_MISO_IBUF_inst
       (.I(LUKS_MISO),
        .O(LUKS_MISO_IBUF));
  OBUF LUKS_SCLK_OBUF_inst
       (.I(FLASH_SCLK_debug_OBUF),
        .O(LUKS_SCLK));
  IBUF PB_IBUF_inst
       (.I(PB),
        .O(PB_IBUF));
  (* BOX_TYPE = "PRIMITIVE" *) 
  STARTUPE2 #(
    .PROG_USR("FALSE"),
    .SIM_CCLK_FREQ(0.000000)) 
    STARTUPE2_inst
       (.CLK(\<const0> ),
        .GSR(\<const0> ),
        .GTS(\<const0> ),
        .KEYCLEARB(\<const0> ),
        .PACK(\<const0> ),
        .USRCCLKO(FLASH_SCLK_debug_OBUF),
        .USRCCLKTS(\<const0> ),
        .USRDONEO(\<const0> ),
        .USRDONETS(\<const0> ));
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
  (* OPT_MODIFIED = "RETARGET" *) 
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
       (.I0(\counter_reg_n_0_[0] ),
        .O(counter));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \counter[15]_i_3 
       (.I0(\counter[15]_i_4_n_0 ),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[0] ),
        .I3(\counter_reg_n_0_[3] ),
        .I4(\counter_reg_n_0_[2] ),
        .I5(\counter[15]_i_5_n_0 ),
        .O(\counter[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \counter[15]_i_4 
       (.I0(\counter_reg_n_0_[5] ),
        .I1(\counter_reg_n_0_[4] ),
        .I2(\counter_reg_n_0_[6] ),
        .I3(\counter_reg_n_0_[7] ),
        .O(\counter[15]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \counter[15]_i_5 
       (.I0(\counter_reg_n_0_[10] ),
        .I1(\counter_reg_n_0_[11] ),
        .I2(\counter_reg_n_0_[8] ),
        .I3(\counter_reg_n_0_[9] ),
        .I4(\counter[15]_i_6_n_0 ),
        .O(\counter[15]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \counter[15]_i_6 
       (.I0(\counter_reg_n_0_[13] ),
        .I1(\counter_reg_n_0_[12] ),
        .I2(\counter_reg_n_0_[15] ),
        .I3(\counter_reg_n_0_[14] ),
        .O(\counter[15]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(counter),
        .Q(\counter_reg_n_0_[0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(\counter_reg_n_0_[10] ),
        .R(\counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter_reg[12]_i_1_n_5 ),
        .Q(\counter_reg_n_0_[11] ),
        .R(\counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter_reg[12]_i_1_n_4 ),
        .Q(\counter_reg_n_0_[12] ),
        .R(\counter[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\counter_reg[12]_i_1_n_0 ,\NLW_counter_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\counter_reg[12]_i_1_n_4 ,\counter_reg[12]_i_1_n_5 ,\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 }),
        .S({\counter_reg_n_0_[12] ,\counter_reg_n_0_[11] ,\counter_reg_n_0_[10] ,\counter_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter_reg[15]_i_2_n_7 ),
        .Q(\counter_reg_n_0_[13] ),
        .R(\counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter_reg[15]_i_2_n_6 ),
        .Q(\counter_reg_n_0_[14] ),
        .R(\counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter_reg[15]_i_2_n_5 ),
        .Q(\counter_reg_n_0_[15] ),
        .R(\counter[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \counter_reg[15]_i_2 
       (.CI(\counter_reg[12]_i_1_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\counter_reg[15]_i_2_n_5 ,\counter_reg[15]_i_2_n_6 ,\counter_reg[15]_i_2_n_7 }),
        .S({\<const0> ,\counter_reg_n_0_[15] ,\counter_reg_n_0_[14] ,\counter_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(\counter_reg_n_0_[1] ),
        .R(\counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(\counter_reg_n_0_[2] ),
        .R(\counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(\counter_reg_n_0_[3] ),
        .R(\counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(\counter_reg_n_0_[4] ),
        .R(\counter[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\<const0> ),
        .CO({\counter_reg[4]_i_1_n_0 ,\NLW_counter_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\counter_reg_n_0_[0] ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S({\counter_reg_n_0_[4] ,\counter_reg_n_0_[3] ,\counter_reg_n_0_[2] ,\counter_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(\counter_reg_n_0_[5] ),
        .R(\counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(\counter_reg_n_0_[6] ),
        .R(\counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(\counter_reg_n_0_[7] ),
        .R(\counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(\counter_reg_n_0_[8] ),
        .R(\counter[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\NLW_counter_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S({\counter_reg_n_0_[8] ,\counter_reg_n_0_[7] ,\counter_reg_n_0_[6] ,\counter_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(\counter_reg_n_0_[9] ),
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
        .D(LUKS_MISO_IBUF),
        .FLASH_CS_debug_OBUF(FLASH_CS_debug_OBUF),
        .FLASH_MOSI_debug_OBUF(FLASH_MOSI_debug_OBUF),
        .FLASH_SCLK_debug_OBUF(FLASH_SCLK_debug_OBUF),
        .LUKS_CS_OBUF(LUKS_CS_OBUF),
        .PB_IBUF(PB_IBUF),
        .Q({LEDS_debug_OBUF[7],NLW_u_tt_um_csit_luks_Q_UNCONNECTED[6:1],LEDS_debug_OBUF[0]}),
        .an_OBUF(an_OBUF),
        .btnC_IBUF(btnC_IBUF),
        .dp_OBUF(dp_OBUF),
        .lopt(lopt),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(lopt_4),
        .lopt_5(lopt_5),
        .lopt_6(lopt_6),
        .lopt_7(lopt_7),
        .\mem_data_reg[0] (FLASH_MISO_debug_OBUF),
        .seg_OBUF(seg_OBUF));
endmodule

module fsm
   (spi_luks_valid_w,
    spi_flash_valid_w,
    Q,
    seg_OBUF,
    dp_OBUF,
    \previous_state_reg[0]_0 ,
    \fd_address_reg[19]_0 ,
    CLK,
    btnC_IBUF,
    data3,
    spi_flash_ready_w,
    \current_state_reg[0]_0 ,
    \seg[4] ,
    \display_out_reg[3]_0 ,
    \display_out_reg[2]_0 ,
    pb_press_type_w,
    \fd_address_reg[7]_0 );
  output spi_luks_valid_w;
  output spi_flash_valid_w;
  output [0:0]Q;
  output [6:0]seg_OBUF;
  output dp_OBUF;
  output [0:0]\previous_state_reg[0]_0 ;
  output [19:0]\fd_address_reg[19]_0 ;
  input CLK;
  input btnC_IBUF;
  input [0:0]data3;
  input spi_flash_ready_w;
  input \current_state_reg[0]_0 ;
  input [1:0]\seg[4] ;
  input [3:0]\display_out_reg[3]_0 ;
  input [2:0]\display_out_reg[2]_0 ;
  input [1:0]pb_press_type_w;
  input [7:0]\fd_address_reg[7]_0 ;

  wire \<const1> ;
  wire CLK;
  wire F_set_flag;
  wire F_set_flag_reg_n_0;
  wire \F_val[0]_i_1_n_0 ;
  wire \F_val[1]_i_1_n_0 ;
  wire \F_val[2]_i_1_n_0 ;
  wire \F_val[3]_i_1_n_0 ;
  wire \F_val_reg_n_0_[0] ;
  wire \F_val_reg_n_0_[1] ;
  wire \F_val_reg_n_0_[2] ;
  wire \F_val_reg_n_0_[3] ;
  wire [3:0]ISO_val;
  wire \ISO_val[0]_i_1_n_0 ;
  wire \ISO_val[1]_i_1_n_0 ;
  wire \ISO_val[2]_i_1_n_0 ;
  wire \ISO_val[3]_i_1_n_0 ;
  wire \ISO_val[3]_i_2_n_0 ;
  wire [0:0]Q;
  wire \SS_val[3]_i_1_n_0 ;
  wire \SS_val_reg_n_0_[0] ;
  wire \SS_val_reg_n_0_[1] ;
  wire \SS_val_reg_n_0_[2] ;
  wire \SS_val_reg_n_0_[3] ;
  wire btnC_IBUF;
  wire [2:0]current_state;
  wire \current_state[0]_i_2_n_0 ;
  wire \current_state[0]_i_3_n_0 ;
  wire \current_state[1]_i_2_n_0 ;
  wire \current_state[1]_i_3_n_0 ;
  wire \current_state_reg[0]_0 ;
  wire \current_state_reg_n_0_[1] ;
  wire \current_state_reg_n_0_[2] ;
  wire [0:0]data3;
  wire \display_out[0]_i_1_n_0 ;
  wire \display_out[1]_i_1_n_0 ;
  wire \display_out[2]_i_1_n_0 ;
  wire \display_out[3]_i_1_n_0 ;
  wire \display_out[3]_i_2_n_0 ;
  wire [2:0]\display_out_reg[2]_0 ;
  wire [3:0]\display_out_reg[3]_0 ;
  wire \display_sel[0]_i_1_n_0 ;
  wire \display_sel[1]_i_1_n_0 ;
  wire dp_OBUF;
  wire dp_OBUF_inst_i_2_n_0;
  wire dp_OBUF_inst_i_3_n_0;
  wire dp_OBUF_inst_i_4_n_0;
  wire dp_OBUF_inst_i_5_n_0;
  wire [19:0]fd_address;
  wire \fd_address[19]_i_1_n_0 ;
  wire [19:0]\fd_address_reg[19]_0 ;
  wire [7:0]\fd_address_reg[7]_0 ;
  wire fd_valid_i_1_n_0;
  wire lux_valid_i_1_n_0;
  wire [1:0]pb_press_type_w;
  wire [1:1]previous_state;
  wire \previous_state[0]_i_1_n_0 ;
  wire \previous_state[1]_i_1_n_0 ;
  wire [0:0]\previous_state_reg[0]_0 ;
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
  wire [5:0]sel0;
  wire spi_flash_ready_w;
  wire spi_flash_valid_w;
  wire spi_luks_valid_w;

  LUT3 #(
    .INIT(8'h41)) 
    F_set_flag_i_1
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(Q),
        .O(F_set_flag));
  FDCE F_set_flag_reg
       (.C(CLK),
        .CE(F_set_flag),
        .CLR(btnC_IBUF),
        .D(\current_state_reg_n_0_[1] ),
        .Q(F_set_flag_reg_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \F_val[0]_i_1 
       (.I0(\current_state_reg_n_0_[1] ),
        .I1(\display_out_reg[3]_0 [0]),
        .O(\F_val[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \F_val[1]_i_1 
       (.I0(\current_state_reg_n_0_[1] ),
        .I1(\display_out_reg[3]_0 [1]),
        .O(\F_val[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \F_val[2]_i_1 
       (.I0(\current_state_reg_n_0_[1] ),
        .I1(\display_out_reg[3]_0 [2]),
        .O(\F_val[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \F_val[3]_i_1 
       (.I0(\current_state_reg_n_0_[1] ),
        .I1(\display_out_reg[3]_0 [3]),
        .O(\F_val[3]_i_1_n_0 ));
  FDCE \F_val_reg[0] 
       (.C(CLK),
        .CE(F_set_flag),
        .CLR(btnC_IBUF),
        .D(\F_val[0]_i_1_n_0 ),
        .Q(\F_val_reg_n_0_[0] ));
  FDCE \F_val_reg[1] 
       (.C(CLK),
        .CE(F_set_flag),
        .CLR(btnC_IBUF),
        .D(\F_val[1]_i_1_n_0 ),
        .Q(\F_val_reg_n_0_[1] ));
  FDCE \F_val_reg[2] 
       (.C(CLK),
        .CE(F_set_flag),
        .CLR(btnC_IBUF),
        .D(\F_val[2]_i_1_n_0 ),
        .Q(\F_val_reg_n_0_[2] ));
  FDCE \F_val_reg[3] 
       (.C(CLK),
        .CE(F_set_flag),
        .CLR(btnC_IBUF),
        .D(\F_val[3]_i_1_n_0 ),
        .Q(\F_val_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ISO_val[0]_i_1 
       (.I0(Q),
        .I1(\display_out_reg[3]_0 [0]),
        .O(\ISO_val[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ISO_val[1]_i_1 
       (.I0(Q),
        .I1(\display_out_reg[3]_0 [1]),
        .O(\ISO_val[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ISO_val[2]_i_1 
       (.I0(Q),
        .I1(\display_out_reg[3]_0 [2]),
        .O(\ISO_val[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \ISO_val[3]_i_1 
       (.I0(\current_state_reg_n_0_[1] ),
        .I1(\current_state_reg_n_0_[2] ),
        .O(\ISO_val[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ISO_val[3]_i_2 
       (.I0(Q),
        .I1(\display_out_reg[3]_0 [3]),
        .O(\ISO_val[3]_i_2_n_0 ));
  FDCE \ISO_val_reg[0] 
       (.C(CLK),
        .CE(\ISO_val[3]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(\ISO_val[0]_i_1_n_0 ),
        .Q(ISO_val[0]));
  FDCE \ISO_val_reg[1] 
       (.C(CLK),
        .CE(\ISO_val[3]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(\ISO_val[1]_i_1_n_0 ),
        .Q(ISO_val[1]));
  FDCE \ISO_val_reg[2] 
       (.C(CLK),
        .CE(\ISO_val[3]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(\ISO_val[2]_i_1_n_0 ),
        .Q(ISO_val[2]));
  FDCE \ISO_val_reg[3] 
       (.C(CLK),
        .CE(\ISO_val[3]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(\ISO_val[3]_i_2_n_0 ),
        .Q(ISO_val[3]));
  LUT2 #(
    .INIT(4'h1)) 
    \SS_val[3]_i_1 
       (.I0(Q),
        .I1(\current_state_reg_n_0_[2] ),
        .O(\SS_val[3]_i_1_n_0 ));
  FDCE \SS_val_reg[0] 
       (.C(CLK),
        .CE(\SS_val[3]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(\F_val[0]_i_1_n_0 ),
        .Q(\SS_val_reg_n_0_[0] ));
  FDCE \SS_val_reg[1] 
       (.C(CLK),
        .CE(\SS_val[3]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(\F_val[1]_i_1_n_0 ),
        .Q(\SS_val_reg_n_0_[1] ));
  FDCE \SS_val_reg[2] 
       (.C(CLK),
        .CE(\SS_val[3]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(\F_val[2]_i_1_n_0 ),
        .Q(\SS_val_reg_n_0_[2] ));
  FDCE \SS_val_reg[3] 
       (.C(CLK),
        .CE(\SS_val[3]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(\F_val[3]_i_1_n_0 ),
        .Q(\SS_val_reg_n_0_[3] ));
  VCC VCC
       (.P(\<const1> ));
  LUT4 #(
    .INIT(16'hD3DD)) 
    \current_state[0]_i_2 
       (.I0(\current_state_reg_n_0_[1] ),
        .I1(pb_press_type_w[0]),
        .I2(pb_press_type_w[1]),
        .I3(Q),
        .O(\current_state[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \current_state[0]_i_3 
       (.I0(\current_state_reg[0]_0 ),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(spi_flash_ready_w),
        .I3(Q),
        .I4(data3),
        .O(\current_state[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00FC04CC)) 
    \current_state[1]_i_2 
       (.I0(F_set_flag_reg_n_0),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(Q),
        .I3(pb_press_type_w[1]),
        .I4(pb_press_type_w[0]),
        .O(\current_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00FF0D0000000D00)) 
    \current_state[1]_i_3 
       (.I0(pb_press_type_w[1]),
        .I1(previous_state),
        .I2(pb_press_type_w[0]),
        .I3(\current_state_reg_n_0_[1] ),
        .I4(Q),
        .I5(spi_flash_ready_w),
        .O(\current_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2622262226AA22AA)) 
    \current_state[2]_i_1 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(pb_press_type_w[0]),
        .I3(pb_press_type_w[1]),
        .I4(F_set_flag_reg_n_0),
        .I5(Q),
        .O(current_state[2]));
  FDCE \current_state_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(current_state[0]),
        .Q(Q));
  MUXF7 \current_state_reg[0]_i_1 
       (.I0(\current_state[0]_i_2_n_0 ),
        .I1(\current_state[0]_i_3_n_0 ),
        .O(current_state[0]),
        .S(\current_state_reg_n_0_[2] ));
  FDCE \current_state_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(current_state[1]),
        .Q(\current_state_reg_n_0_[1] ));
  MUXF7 \current_state_reg[1]_i_1 
       (.I0(\current_state[1]_i_2_n_0 ),
        .I1(\current_state[1]_i_3_n_0 ),
        .O(current_state[1]),
        .S(\current_state_reg_n_0_[2] ));
  FDCE \current_state_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(current_state[2]),
        .Q(\current_state_reg_n_0_[2] ));
  LUT5 #(
    .INIT(32'hCCE000E0)) 
    \display_out[0]_i_1 
       (.I0(Q),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(\display_out_reg[3]_0 [0]),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(\display_out_reg[2]_0 [0]),
        .O(\display_out[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFC88FC8)) 
    \display_out[1]_i_1 
       (.I0(Q),
        .I1(\display_out_reg[3]_0 [1]),
        .I2(\current_state_reg_n_0_[1] ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(\display_out_reg[2]_0 [1]),
        .O(\display_out[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hCCE000E0)) 
    \display_out[2]_i_1 
       (.I0(Q),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(\display_out_reg[3]_0 [2]),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(\display_out_reg[2]_0 [2]),
        .O(\display_out[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \display_out[3]_i_1 
       (.I0(\current_state_reg_n_0_[1] ),
        .I1(Q),
        .I2(\current_state_reg_n_0_[2] ),
        .O(\display_out[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h5501)) 
    \display_out[3]_i_2 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(Q),
        .I2(\current_state_reg_n_0_[1] ),
        .I3(\display_out_reg[3]_0 [3]),
        .O(\display_out[3]_i_2_n_0 ));
  FDCE \display_out_reg[0] 
       (.C(CLK),
        .CE(\display_out[3]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(\display_out[0]_i_1_n_0 ),
        .Q(sel0[0]));
  FDCE \display_out_reg[1] 
       (.C(CLK),
        .CE(\display_out[3]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(\display_out[1]_i_1_n_0 ),
        .Q(sel0[1]));
  FDCE \display_out_reg[2] 
       (.C(CLK),
        .CE(\display_out[3]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(\display_out[2]_i_1_n_0 ),
        .Q(sel0[2]));
  FDPE \display_out_reg[3] 
       (.C(CLK),
        .CE(\display_out[3]_i_1_n_0 ),
        .D(\display_out[3]_i_2_n_0 ),
        .PRE(btnC_IBUF),
        .Q(sel0[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \display_sel[0]_i_1 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(Q),
        .I2(\current_state_reg_n_0_[1] ),
        .O(\display_sel[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \display_sel[1]_i_1 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(Q),
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
       (.I0(sel0[5]),
        .I1(sel0[3]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[4]),
        .I5(sel0[2]),
        .O(dp_OBUF_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFEEFF05FF0FF)) 
    dp_OBUF_inst_i_3
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[4]),
        .I3(sel0[5]),
        .I4(sel0[1]),
        .I5(sel0[3]),
        .O(dp_OBUF_inst_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFDDDFFFFFFFFF)) 
    dp_OBUF_inst_i_4
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(sel0[3]),
        .O(dp_OBUF_inst_i_4_n_0));
  LUT6 #(
    .INIT(64'hBFFFFFFFFBFFFFFF)) 
    dp_OBUF_inst_i_5
       (.I0(sel0[5]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(sel0[3]),
        .I5(sel0[4]),
        .O(dp_OBUF_inst_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fd_address[0]_i_1 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\fd_address_reg[7]_0 [0]),
        .O(fd_address[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fd_address[10]_i_1 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\F_val_reg_n_0_[2] ),
        .O(fd_address[10]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fd_address[11]_i_1 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\F_val_reg_n_0_[3] ),
        .O(fd_address[11]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fd_address[12]_i_1 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\SS_val_reg_n_0_[0] ),
        .O(fd_address[12]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fd_address[13]_i_1 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\SS_val_reg_n_0_[1] ),
        .O(fd_address[13]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fd_address[14]_i_1 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\SS_val_reg_n_0_[2] ),
        .O(fd_address[14]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fd_address[15]_i_1 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\SS_val_reg_n_0_[3] ),
        .O(fd_address[15]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fd_address[16]_i_1 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(ISO_val[0]),
        .O(fd_address[16]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fd_address[17]_i_1 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(ISO_val[1]),
        .O(fd_address[17]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fd_address[18]_i_1 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(ISO_val[2]),
        .O(fd_address[18]));
  LUT3 #(
    .INIT(8'h41)) 
    \fd_address[19]_i_1 
       (.I0(\current_state_reg_n_0_[1] ),
        .I1(\current_state_reg_n_0_[2] ),
        .I2(Q),
        .O(\fd_address[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fd_address[19]_i_2 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(ISO_val[3]),
        .O(fd_address[19]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fd_address[1]_i_1 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\fd_address_reg[7]_0 [1]),
        .O(fd_address[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fd_address[2]_i_1 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\fd_address_reg[7]_0 [2]),
        .O(fd_address[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fd_address[3]_i_1 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\fd_address_reg[7]_0 [3]),
        .O(fd_address[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fd_address[4]_i_1 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\fd_address_reg[7]_0 [4]),
        .O(fd_address[4]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fd_address[5]_i_1 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\fd_address_reg[7]_0 [5]),
        .O(fd_address[5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fd_address[6]_i_1 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\fd_address_reg[7]_0 [6]),
        .O(fd_address[6]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fd_address[7]_i_1 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\fd_address_reg[7]_0 [7]),
        .O(fd_address[7]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fd_address[8]_i_1 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\F_val_reg_n_0_[0] ),
        .O(fd_address[8]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fd_address[9]_i_1 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\F_val_reg_n_0_[1] ),
        .O(fd_address[9]));
  FDCE \fd_address_reg[0] 
       (.C(CLK),
        .CE(\fd_address[19]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(fd_address[0]),
        .Q(\fd_address_reg[19]_0 [0]));
  FDCE \fd_address_reg[10] 
       (.C(CLK),
        .CE(\fd_address[19]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(fd_address[10]),
        .Q(\fd_address_reg[19]_0 [10]));
  FDCE \fd_address_reg[11] 
       (.C(CLK),
        .CE(\fd_address[19]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(fd_address[11]),
        .Q(\fd_address_reg[19]_0 [11]));
  FDCE \fd_address_reg[12] 
       (.C(CLK),
        .CE(\fd_address[19]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(fd_address[12]),
        .Q(\fd_address_reg[19]_0 [12]));
  FDCE \fd_address_reg[13] 
       (.C(CLK),
        .CE(\fd_address[19]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(fd_address[13]),
        .Q(\fd_address_reg[19]_0 [13]));
  FDCE \fd_address_reg[14] 
       (.C(CLK),
        .CE(\fd_address[19]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(fd_address[14]),
        .Q(\fd_address_reg[19]_0 [14]));
  FDCE \fd_address_reg[15] 
       (.C(CLK),
        .CE(\fd_address[19]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(fd_address[15]),
        .Q(\fd_address_reg[19]_0 [15]));
  FDCE \fd_address_reg[16] 
       (.C(CLK),
        .CE(\fd_address[19]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(fd_address[16]),
        .Q(\fd_address_reg[19]_0 [16]));
  FDCE \fd_address_reg[17] 
       (.C(CLK),
        .CE(\fd_address[19]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(fd_address[17]),
        .Q(\fd_address_reg[19]_0 [17]));
  FDCE \fd_address_reg[18] 
       (.C(CLK),
        .CE(\fd_address[19]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(fd_address[18]),
        .Q(\fd_address_reg[19]_0 [18]));
  FDCE \fd_address_reg[19] 
       (.C(CLK),
        .CE(\fd_address[19]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(fd_address[19]),
        .Q(\fd_address_reg[19]_0 [19]));
  FDCE \fd_address_reg[1] 
       (.C(CLK),
        .CE(\fd_address[19]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(fd_address[1]),
        .Q(\fd_address_reg[19]_0 [1]));
  FDCE \fd_address_reg[2] 
       (.C(CLK),
        .CE(\fd_address[19]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(fd_address[2]),
        .Q(\fd_address_reg[19]_0 [2]));
  FDCE \fd_address_reg[3] 
       (.C(CLK),
        .CE(\fd_address[19]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(fd_address[3]),
        .Q(\fd_address_reg[19]_0 [3]));
  FDCE \fd_address_reg[4] 
       (.C(CLK),
        .CE(\fd_address[19]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(fd_address[4]),
        .Q(\fd_address_reg[19]_0 [4]));
  FDCE \fd_address_reg[5] 
       (.C(CLK),
        .CE(\fd_address[19]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(fd_address[5]),
        .Q(\fd_address_reg[19]_0 [5]));
  FDCE \fd_address_reg[6] 
       (.C(CLK),
        .CE(\fd_address[19]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(fd_address[6]),
        .Q(\fd_address_reg[19]_0 [6]));
  FDCE \fd_address_reg[7] 
       (.C(CLK),
        .CE(\fd_address[19]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(fd_address[7]),
        .Q(\fd_address_reg[19]_0 [7]));
  FDCE \fd_address_reg[8] 
       (.C(CLK),
        .CE(\fd_address[19]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(fd_address[8]),
        .Q(\fd_address_reg[19]_0 [8]));
  FDCE \fd_address_reg[9] 
       (.C(CLK),
        .CE(\fd_address[19]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(fd_address[9]),
        .Q(\fd_address_reg[19]_0 [9]));
  LUT5 #(
    .INIT(32'hC7FC0400)) 
    fd_valid_i_1
       (.I0(spi_flash_ready_w),
        .I1(Q),
        .I2(\current_state_reg_n_0_[1] ),
        .I3(\current_state_reg_n_0_[2] ),
        .I4(spi_flash_valid_w),
        .O(fd_valid_i_1_n_0));
  FDCE fd_valid_reg
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(fd_valid_i_1_n_0),
        .Q(spi_flash_valid_w));
  LUT5 #(
    .INIT(32'hFFF20002)) 
    lux_valid_i_1
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(data3),
        .I2(Q),
        .I3(\current_state_reg_n_0_[1] ),
        .I4(spi_luks_valid_w),
        .O(lux_valid_i_1_n_0));
  FDCE lux_valid_reg
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(lux_valid_i_1_n_0),
        .Q(spi_luks_valid_w));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFA40)) 
    \previous_state[0]_i_1 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(Q),
        .I3(\previous_state_reg[0]_0 ),
        .O(\previous_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFE44)) 
    \previous_state[1]_i_1 
       (.I0(\current_state_reg_n_0_[2] ),
        .I1(\current_state_reg_n_0_[1] ),
        .I2(Q),
        .I3(previous_state),
        .O(\previous_state[1]_i_1_n_0 ));
  FDCE \previous_state_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(\previous_state[0]_i_1_n_0 ),
        .Q(\previous_state_reg[0]_0 ));
  FDCE \previous_state_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(\previous_state[1]_i_1_n_0 ),
        .Q(previous_state));
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
       (.I0(sel0[4]),
        .I1(sel0[2]),
        .I2(sel0[3]),
        .I3(sel0[1]),
        .I4(sel0[5]),
        .I5(sel0[0]),
        .O(\seg_OBUF[0]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFFEABFB4202ABA9)) 
    \seg_OBUF[0]_inst_i_3 
       (.I0(sel0[4]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[3]),
        .I5(sel0[5]),
        .O(\seg_OBUF[0]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBBFFFFFEBFBBBFB)) 
    \seg_OBUF[0]_inst_i_4 
       (.I0(sel0[5]),
        .I1(sel0[3]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(sel0[4]),
        .O(\seg_OBUF[0]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hDCCC8C88AA80AC08)) 
    \seg_OBUF[0]_inst_i_5 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(sel0[3]),
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
       (.I0(sel0[5]),
        .I1(sel0[3]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(sel0[4]),
        .O(\seg_OBUF[1]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAEAAA4882BEA1)) 
    \seg_OBUF[1]_inst_i_3 
       (.I0(sel0[4]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(sel0[3]),
        .I5(sel0[5]),
        .O(\seg_OBUF[1]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFFFBFFBABABAB)) 
    \seg_OBUF[1]_inst_i_4 
       (.I0(sel0[5]),
        .I1(sel0[2]),
        .I2(sel0[3]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[4]),
        .O(\seg_OBUF[1]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hDCCECD808AC80A19)) 
    \seg_OBUF[1]_inst_i_5 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[3]),
        .I5(sel0[2]),
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
       (.I0(sel0[5]),
        .I1(sel0[3]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(sel0[4]),
        .O(\seg_OBUF[2]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEAEFABA40AB23E1)) 
    \seg_OBUF[2]_inst_i_3 
       (.I0(sel0[4]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(sel0[1]),
        .I5(sel0[5]),
        .O(\seg_OBUF[2]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFBF4FFFFFFFB08F)) 
    \seg_OBUF[2]_inst_i_4 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(sel0[5]),
        .I5(sel0[4]),
        .O(\seg_OBUF[2]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hDC8AC800CC0A889C)) 
    \seg_OBUF[2]_inst_i_5 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[0]),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .I5(sel0[1]),
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
       (.I0(sel0[4]),
        .I1(sel0[2]),
        .I2(sel0[3]),
        .I3(sel0[1]),
        .I4(sel0[5]),
        .I5(sel0[0]),
        .O(\seg_OBUF[3]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDACEC2CA8ACEEFAD)) 
    \seg_OBUF[3]_inst_i_3 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[3]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(sel0[2]),
        .O(\seg_OBUF[3]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFDF57FFFFFFB07F)) 
    \seg_OBUF[3]_inst_i_4 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[3]),
        .I4(sel0[5]),
        .I5(sel0[4]),
        .O(\seg_OBUF[3]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hDCCC8C88A280AC08)) 
    \seg_OBUF[3]_inst_i_5 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(sel0[3]),
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
       (.I0(sel0[4]),
        .I1(sel0[0]),
        .I2(sel0[3]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(sel0[5]),
        .O(\seg_OBUF[4]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEF77FF3FF583EB01)) 
    \seg_OBUF[4]_inst_i_3 
       (.I0(sel0[1]),
        .I1(sel0[3]),
        .I2(sel0[2]),
        .I3(sel0[5]),
        .I4(sel0[0]),
        .I5(sel0[4]),
        .O(\seg_OBUF[4]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBFFF9FFFEBBBFBFF)) 
    \seg_OBUF[4]_inst_i_4 
       (.I0(sel0[5]),
        .I1(sel0[3]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(sel0[4]),
        .O(\seg_OBUF[4]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hDCA8CE7088A1E8E8)) 
    \seg_OBUF[4]_inst_i_5 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[0]),
        .I3(sel0[3]),
        .I4(sel0[1]),
        .I5(sel0[2]),
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
       (.I0(sel0[4]),
        .I1(sel0[0]),
        .I2(sel0[3]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(sel0[5]),
        .O(\seg_OBUF[5]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF71F7FF3EF811B)) 
    \seg_OBUF[5]_inst_i_3 
       (.I0(sel0[0]),
        .I1(sel0[2]),
        .I2(sel0[3]),
        .I3(sel0[1]),
        .I4(sel0[5]),
        .I5(sel0[4]),
        .O(\seg_OBUF[5]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF3DF1FFFF)) 
    \seg_OBUF[5]_inst_i_4 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[4]),
        .I3(sel0[2]),
        .I4(sel0[3]),
        .I5(sel0[5]),
        .O(\seg_OBUF[5]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hDC8AC880CCAAC89C)) 
    \seg_OBUF[5]_inst_i_5 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[0]),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .I5(sel0[1]),
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
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[5]),
        .I3(sel0[4]),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(\seg_OBUF[6]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1113BB76055164DB)) 
    \seg_OBUF[6]_inst_i_3 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(sel0[5]),
        .I5(sel0[4]),
        .O(\seg_OBUF[6]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h083C7DFF043C7FFF)) 
    \seg_OBUF[6]_inst_i_4 
       (.I0(sel0[1]),
        .I1(sel0[4]),
        .I2(sel0[5]),
        .I3(sel0[2]),
        .I4(sel0[3]),
        .I5(sel0[0]),
        .O(\seg_OBUF[6]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000FEA4105287FB8)) 
    \seg_OBUF[6]_inst_i_5 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(sel0[5]),
        .I5(sel0[4]),
        .O(\seg_OBUF[6]_inst_i_5_n_0 ));
endmodule

module rotational_encoder
   (pb_press_type_w,
    \pb_press_type_reg[0]_0 ,
    \enc_reg[3]_0 ,
    A_IBUF,
    CLK,
    btnC_IBUF,
    B_IBUF,
    PB_IBUF,
    \current_state[0]_i_3 ,
    Q);
  output [1:0]pb_press_type_w;
  output \pb_press_type_reg[0]_0 ;
  output [3:0]\enc_reg[3]_0 ;
  input A_IBUF;
  input CLK;
  input btnC_IBUF;
  input B_IBUF;
  input PB_IBUF;
  input [0:0]\current_state[0]_i_3 ;
  input [0:0]Q;

  wire \<const0> ;
  wire \<const1> ;
  wire A_IBUF;
  wire B_IBUF;
  wire CLK;
  wire PB_IBUF;
  wire [0:0]Q;
  wire btnC_IBUF;
  wire [0:0]\current_state[0]_i_3 ;
  wire enc1;
  wire enc15_out;
  wire \enc[3]_i_1_n_0 ;
  wire \enc[3]_i_4_n_0 ;
  wire [3:0]\enc_reg[3]_0 ;
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
  wire \pb_cnt[11]_i_6_n_0 ;
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
  wire pb_press_type1__11;
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
  wire \pb_press_type[1]_i_8_n_0 ;
  wire \pb_press_type_reg[0]_0 ;
  wire [1:0]pb_press_type_w;
  wire [3:0]NLW_pb_cnt0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_pb_cnt0_carry__0_CO_UNCONNECTED;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT4 #(
    .INIT(16'h00E0)) 
    \current_state[0]_i_4 
       (.I0(pb_press_type_w[0]),
        .I1(\current_state[0]_i_3 ),
        .I2(pb_press_type_w[1]),
        .I3(Q),
        .O(\pb_press_type_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h001F)) 
    \enc[0]_i_1 
       (.I0(pb_press_type_w[0]),
        .I1(pb_press_type_w[1]),
        .I2(PB_IBUF),
        .I3(\enc_reg[3]_0 [0]),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'h001F1F001F00001F)) 
    \enc[1]_i_1 
       (.I0(pb_press_type_w[0]),
        .I1(pb_press_type_w[1]),
        .I2(PB_IBUF),
        .I3(\enc_reg[3]_0 [1]),
        .I4(enc15_out),
        .I5(\enc_reg[3]_0 [0]),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'h0777700077700007)) 
    \enc[2]_i_1 
       (.I0(enc1),
        .I1(PB_IBUF),
        .I2(\enc_reg[3]_0 [0]),
        .I3(enc15_out),
        .I4(\enc_reg[3]_0 [2]),
        .I5(\enc_reg[3]_0 [1]),
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
    .INIT(64'h8FFFF888FFF8888F)) 
    \enc[3]_i_2 
       (.I0(enc1),
        .I1(PB_IBUF),
        .I2(\enc[3]_i_4_n_0 ),
        .I3(\enc_reg[3]_0 [1]),
        .I4(\enc_reg[3]_0 [3]),
        .I5(\enc_reg[3]_0 [2]),
        .O(p_0_in[3]));
  LUT2 #(
    .INIT(4'hE)) 
    \enc[3]_i_3 
       (.I0(pb_press_type_w[1]),
        .I1(pb_press_type_w[0]),
        .O(enc1));
  LUT5 #(
    .INIT(32'h57550100)) 
    \enc[3]_i_4 
       (.I0(\enc_reg[3]_0 [1]),
        .I1(B_IBUF),
        .I2(lastA),
        .I3(A_IBUF),
        .I4(\enc_reg[3]_0 [0]),
        .O(\enc[3]_i_4_n_0 ));
  FDCE \enc_reg[0] 
       (.C(CLK),
        .CE(\enc[3]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(p_0_in[0]),
        .Q(\enc_reg[3]_0 [0]));
  FDCE \enc_reg[1] 
       (.C(CLK),
        .CE(\enc[3]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(p_0_in[1]),
        .Q(\enc_reg[3]_0 [1]));
  FDCE \enc_reg[2] 
       (.C(CLK),
        .CE(\enc[3]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(p_0_in[2]),
        .Q(\enc_reg[3]_0 [2]));
  FDPE \enc_reg[3] 
       (.C(CLK),
        .CE(\enc[3]_i_1_n_0 ),
        .D(p_0_in[3]),
        .PRE(btnC_IBUF),
        .Q(\enc_reg[3]_0 [3]));
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
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 pb_cnt0_carry
       (.CI(\<const0> ),
        .CO({pb_cnt0_carry_n_0,NLW_pb_cnt0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\pb_cnt_reg_n_0_[0] ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(pb_cnt0[4:1]),
        .S({\pb_cnt_reg_n_0_[4] ,\pb_cnt_reg_n_0_[3] ,\pb_cnt_reg_n_0_[2] ,\pb_cnt_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 pb_cnt0_carry__0
       (.CI(pb_cnt0_carry_n_0),
        .CO({pb_cnt0_carry__0_n_0,NLW_pb_cnt0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(pb_cnt0[8:5]),
        .S({\pb_cnt_reg_n_0_[8] ,\pb_cnt_reg_n_0_[7] ,\pb_cnt_reg_n_0_[6] ,\pb_cnt_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
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
        .I3(\pb_cnt_reg_n_0_[0] ),
        .I4(pb_cnt1),
        .O(\pb_cnt[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h1F001F1F)) 
    \pb_cnt[10]_i_1 
       (.I0(pb_press_type_w[0]),
        .I1(pb_press_type_w[1]),
        .I2(PB_IBUF),
        .I3(pb_cnt0[10]),
        .I4(pb_cnt1),
        .O(\pb_cnt[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \pb_cnt[11]_i_1 
       (.I0(pb_press_type_w[0]),
        .I1(pb_press_type_w[1]),
        .I2(PB_IBUF),
        .O(\pb_cnt[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h1F001F1F)) 
    \pb_cnt[11]_i_2 
       (.I0(pb_press_type_w[0]),
        .I1(pb_press_type_w[1]),
        .I2(PB_IBUF),
        .I3(pb_cnt0[11]),
        .I4(pb_cnt1),
        .O(\pb_cnt[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \pb_cnt[11]_i_3 
       (.I0(\pb_cnt[11]_i_4_n_0 ),
        .I1(\pb_cnt_reg_n_0_[1] ),
        .I2(\pb_cnt_reg_n_0_[3] ),
        .I3(\pb_cnt_reg_n_0_[2] ),
        .I4(\pb_cnt_reg_n_0_[0] ),
        .O(pb_cnt1));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \pb_cnt[11]_i_4 
       (.I0(\pb_cnt_reg_n_0_[6] ),
        .I1(\pb_cnt_reg_n_0_[7] ),
        .I2(\pb_cnt[11]_i_5_n_0 ),
        .I3(\pb_cnt_reg_n_0_[10] ),
        .I4(\pb_cnt_reg_n_0_[11] ),
        .I5(\pb_cnt[11]_i_6_n_0 ),
        .O(\pb_cnt[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \pb_cnt[11]_i_5 
       (.I0(\pb_cnt_reg_n_0_[4] ),
        .I1(\pb_cnt_reg_n_0_[5] ),
        .O(\pb_cnt[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \pb_cnt[11]_i_6 
       (.I0(\pb_cnt_reg_n_0_[8] ),
        .I1(\pb_cnt_reg_n_0_[9] ),
        .O(\pb_cnt[11]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h1F001F1F)) 
    \pb_cnt[1]_i_1 
       (.I0(pb_press_type_w[0]),
        .I1(pb_press_type_w[1]),
        .I2(PB_IBUF),
        .I3(pb_cnt0[1]),
        .I4(pb_cnt1),
        .O(\pb_cnt[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h1F001F1F)) 
    \pb_cnt[2]_i_1 
       (.I0(pb_press_type_w[0]),
        .I1(pb_press_type_w[1]),
        .I2(PB_IBUF),
        .I3(pb_cnt0[2]),
        .I4(pb_cnt1),
        .O(\pb_cnt[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h1F001F1F)) 
    \pb_cnt[3]_i_1 
       (.I0(pb_press_type_w[0]),
        .I1(pb_press_type_w[1]),
        .I2(PB_IBUF),
        .I3(pb_cnt0[3]),
        .I4(pb_cnt1),
        .O(\pb_cnt[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h1F001F1F)) 
    \pb_cnt[4]_i_1 
       (.I0(pb_press_type_w[0]),
        .I1(pb_press_type_w[1]),
        .I2(PB_IBUF),
        .I3(pb_cnt0[4]),
        .I4(pb_cnt1),
        .O(\pb_cnt[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h1F001F1F)) 
    \pb_cnt[5]_i_1 
       (.I0(pb_press_type_w[0]),
        .I1(pb_press_type_w[1]),
        .I2(PB_IBUF),
        .I3(pb_cnt0[5]),
        .I4(pb_cnt1),
        .O(\pb_cnt[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h1F001F1F)) 
    \pb_cnt[6]_i_1 
       (.I0(pb_press_type_w[0]),
        .I1(pb_press_type_w[1]),
        .I2(PB_IBUF),
        .I3(pb_cnt0[6]),
        .I4(pb_cnt1),
        .O(\pb_cnt[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h1F001F1F)) 
    \pb_cnt[7]_i_1 
       (.I0(pb_press_type_w[0]),
        .I1(pb_press_type_w[1]),
        .I2(PB_IBUF),
        .I3(pb_cnt0[7]),
        .I4(pb_cnt1),
        .O(\pb_cnt[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h1F001F1F)) 
    \pb_cnt[8]_i_1 
       (.I0(pb_press_type_w[0]),
        .I1(pb_press_type_w[1]),
        .I2(PB_IBUF),
        .I3(pb_cnt0[8]),
        .I4(pb_cnt1),
        .O(\pb_cnt[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h1F001F1F)) 
    \pb_cnt[9]_i_1 
       (.I0(pb_press_type_w[0]),
        .I1(pb_press_type_w[1]),
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
       (.I0(pb_press_type_w[1]),
        .I1(pb_press_type1__11),
        .I2(pb_press_type13_out),
        .I3(\pb_press_type[1]_i_2_n_0 ),
        .I4(\pb_press_type[1]_i_4_n_0 ),
        .I5(pb_press_type_w[0]),
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
        .O(pb_press_type1__11));
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
       (.I0(pb_press_type_w[0]),
        .I1(\pb_press_type[1]_i_2_n_0 ),
        .I2(pb_press_type13_out),
        .I3(\pb_press_type[1]_i_4_n_0 ),
        .I4(pb_press_type_w[1]),
        .O(\pb_press_type[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00008000)) 
    \pb_press_type[1]_i_2 
       (.I0(\pb_cnt_reg_n_0_[11] ),
        .I1(\pb_cnt_reg_n_0_[8] ),
        .I2(\pb_cnt_reg_n_0_[7] ),
        .I3(\pb_cnt_reg_n_0_[9] ),
        .I4(\pb_press_type[1]_i_5_n_0 ),
        .I5(\pb_cnt_reg_n_0_[10] ),
        .O(\pb_press_type[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0FEEEE0EEE)) 
    \pb_press_type[1]_i_3 
       (.I0(\pb_press_type[1]_i_6_n_0 ),
        .I1(\pb_cnt_reg_n_0_[9] ),
        .I2(\pb_cnt_reg_n_0_[11] ),
        .I3(\pb_press_type[1]_i_7_n_0 ),
        .I4(\pb_press_type[1]_i_5_n_0 ),
        .I5(\pb_cnt_reg_n_0_[10] ),
        .O(pb_press_type13_out));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \pb_press_type[1]_i_4 
       (.I0(PB_IBUF),
        .I1(\pb_press_type[1]_i_2_n_0 ),
        .I2(\pb_press_type[1]_i_8_n_0 ),
        .I3(pb_press_type1__11),
        .I4(pb_press_type13_out),
        .I5(enc1),
        .O(\pb_press_type[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h1555)) 
    \pb_press_type[1]_i_5 
       (.I0(\pb_cnt_reg_n_0_[6] ),
        .I1(\pb_cnt_reg_n_0_[4] ),
        .I2(\pb_cnt_reg_n_0_[5] ),
        .I3(\pb_cnt_reg_n_0_[3] ),
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
  LUT3 #(
    .INIT(8'h80)) 
    \pb_press_type[1]_i_7 
       (.I0(\pb_cnt_reg_n_0_[7] ),
        .I1(\pb_cnt_reg_n_0_[9] ),
        .I2(\pb_cnt_reg_n_0_[8] ),
        .O(\pb_press_type[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000000007777777F)) 
    \pb_press_type[1]_i_8 
       (.I0(\pb_cnt_reg_n_0_[4] ),
        .I1(\pb_cnt_reg_n_0_[5] ),
        .I2(\pb_cnt_reg_n_0_[3] ),
        .I3(\pb_cnt_reg_n_0_[2] ),
        .I4(\pb_cnt_reg_n_0_[1] ),
        .I5(\pb_press_type[0]_i_4_n_0 ),
        .O(\pb_press_type[1]_i_8_n_0 ));
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
       (.I0(Q[0]),
        .I1(Q[1]),
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
       (.I0(Q[0]),
        .I1(Q[1]),
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

module spi_flash
   (FLASH_MOSI_debug_OBUF,
    spi_flash_ready_w,
    FLASH_CS_debug_OBUF,
    FLASH_SCLK_debug_OBUF,
    Q,
    CLK,
    btnC_IBUF,
    spi_flash_valid_w,
    spi_luks_sclk_w,
    D,
    \mem_data_reg[0]_0 ,
    .lopt(mosi_reg_lopt_replica_1),
    lopt_1,
    .lopt_2(\mem_data_reg[1]_lopt_replica_1 ),
    .lopt_3(\mem_data_reg[2]_lopt_replica_1 ),
    .lopt_4(\mem_data_reg[3]_lopt_replica_1 ),
    .lopt_5(\mem_data_reg[4]_lopt_replica_1 ),
    .lopt_6(\mem_data_reg[5]_lopt_replica_1 ),
    .lopt_7(\mem_data_reg[6]_lopt_replica_1 ));
  output FLASH_MOSI_debug_OBUF;
  output spi_flash_ready_w;
  output FLASH_CS_debug_OBUF;
  output FLASH_SCLK_debug_OBUF;
  output [7:0]Q;
  input CLK;
  input btnC_IBUF;
  input spi_flash_valid_w;
  input spi_luks_sclk_w;
  input [19:0]D;
  input [0:0]\mem_data_reg[0]_0 ;
  output lopt_1;
  output mosi_reg_lopt_replica_1;
  output \mem_data_reg[1]_lopt_replica_1 ;
  output \mem_data_reg[2]_lopt_replica_1 ;
  output \mem_data_reg[3]_lopt_replica_1 ;
  output \mem_data_reg[4]_lopt_replica_1 ;
  output \mem_data_reg[5]_lopt_replica_1 ;
  output \mem_data_reg[6]_lopt_replica_1 ;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire [19:0]D;
  wire FLASH_CS_debug_OBUF;
  wire FLASH_MOSI_debug_OBUF;
  wire FLASH_SCLK_debug_OBUF;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_2__0_n_0 ;
  wire \FSM_sequential_state[1]_i_3_n_0 ;
  wire \FSM_sequential_state_reg_n_0_[1] ;
  wire [7:0]Q;
  wire [19:0]address;
  wire \address[19]_i_1_n_0 ;
  wire [4:0]bit_counter;
  wire \bit_counter[3]_i_2_n_0 ;
  wire \bit_counter[4]_i_2__0_n_0 ;
  wire \bit_counter[5]_i_1_n_0 ;
  wire \bit_counter[5]_i_2_n_0 ;
  wire \bit_counter[6]_i_1_n_0 ;
  wire \bit_counter[7]_i_1_n_0 ;
  wire \bit_counter[7]_i_2_n_0 ;
  wire \bit_counter[7]_i_3_n_0 ;
  wire \bit_counter[7]_i_4_n_0 ;
  wire \bit_counter_reg_n_0_[0] ;
  wire \bit_counter_reg_n_0_[1] ;
  wire \bit_counter_reg_n_0_[2] ;
  wire \bit_counter_reg_n_0_[3] ;
  wire \bit_counter_reg_n_0_[4] ;
  wire \bit_counter_reg_n_0_[5] ;
  wire \bit_counter_reg_n_0_[6] ;
  wire \bit_counter_reg_n_0_[7] ;
  wire btnC_IBUF;
  wire cs_i_1__0_n_0;
  wire \mem_data[7]_i_1_n_0 ;
  wire [0:0]\mem_data_reg[0]_0 ;
  wire \mem_data_reg[1]_lopt_replica_1 ;
  wire \mem_data_reg[2]_lopt_replica_1 ;
  wire \mem_data_reg[3]_lopt_replica_1 ;
  wire \mem_data_reg[4]_lopt_replica_1 ;
  wire \mem_data_reg[5]_lopt_replica_1 ;
  wire \mem_data_reg[6]_lopt_replica_1 ;
  wire mem_ready_i_1__0_n_0;
  wire mem_ready_i_2__0_n_0;
  wire mosi_i_10_n_0;
  wire mosi_i_11_n_0;
  wire mosi_i_1_n_0;
  wire mosi_i_2_n_0;
  wire mosi_i_3_n_0;
  wire mosi_i_4_n_0;
  wire mosi_i_5_n_0;
  wire mosi_i_8_n_0;
  wire mosi_i_9_n_0;
  wire mosi_reg_i_6_n_0;
  wire mosi_reg_i_7_n_0;
  wire mosi_reg_lopt_replica_1;
  wire sclk_i_1__0_n_0;
  wire spi_flash_ready_w;
  wire spi_flash_sclk_w;
  wire spi_flash_valid_w;
  wire spi_luks_sclk_w;
  wire [0:0]state__0;

  LUT6 #(
    .INIT(64'hD310FF3CD310F330)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2__0_n_0 ),
        .I1(\FSM_sequential_state_reg_n_0_[1] ),
        .I2(state__0),
        .I3(spi_flash_valid_w),
        .I4(spi_flash_sclk_w),
        .I5(\FSM_sequential_state[0]_i_2_n_0 ),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(\FSM_sequential_state[1]_i_3_n_0 ),
        .I1(\bit_counter_reg_n_0_[1] ),
        .I2(\bit_counter_reg_n_0_[3] ),
        .I3(\bit_counter_reg_n_0_[0] ),
        .I4(\bit_counter_reg_n_0_[2] ),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEC2CCC0C)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2__0_n_0 ),
        .I1(\FSM_sequential_state_reg_n_0_[1] ),
        .I2(state__0),
        .I3(spi_flash_valid_w),
        .I4(spi_flash_sclk_w),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \FSM_sequential_state[1]_i_2__0 
       (.I0(\FSM_sequential_state[1]_i_3_n_0 ),
        .I1(\bit_counter_reg_n_0_[1] ),
        .I2(\bit_counter_reg_n_0_[0] ),
        .I3(\bit_counter_reg_n_0_[3] ),
        .I4(\bit_counter_reg_n_0_[2] ),
        .O(\FSM_sequential_state[1]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(\bit_counter_reg_n_0_[7] ),
        .I1(\bit_counter_reg_n_0_[6] ),
        .I2(\bit_counter_reg_n_0_[4] ),
        .I3(\bit_counter_reg_n_0_[5] ),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "SEND_CMD:01,READ_DATA:10,IDLE:00,DATA_READY:11" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state__0));
  (* FSM_ENCODED_STATES = "SEND_CMD:01,READ_DATA:10,IDLE:00,DATA_READY:11" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(\FSM_sequential_state_reg_n_0_[1] ));
  GND GND
       (.G(\<const0> ));
  LUT3 #(
    .INIT(8'hB8)) 
    LUKS_SCLK_OBUF_inst_i_1
       (.I0(spi_luks_sclk_w),
        .I1(FLASH_CS_debug_OBUF),
        .I2(spi_flash_sclk_w),
        .O(FLASH_SCLK_debug_OBUF));
  VCC VCC
       (.P(\<const1> ));
  LUT4 #(
    .INIT(16'h0010)) 
    \address[19]_i_1 
       (.I0(\FSM_sequential_state_reg_n_0_[1] ),
        .I1(state__0),
        .I2(spi_flash_valid_w),
        .I3(btnC_IBUF),
        .O(\address[19]_i_1_n_0 ));
  FDRE \address_reg[0] 
       (.C(CLK),
        .CE(\address[19]_i_1_n_0 ),
        .D(D[0]),
        .Q(address[0]),
        .R(\<const0> ));
  FDRE \address_reg[10] 
       (.C(CLK),
        .CE(\address[19]_i_1_n_0 ),
        .D(D[10]),
        .Q(address[10]),
        .R(\<const0> ));
  FDRE \address_reg[11] 
       (.C(CLK),
        .CE(\address[19]_i_1_n_0 ),
        .D(D[11]),
        .Q(address[11]),
        .R(\<const0> ));
  FDRE \address_reg[12] 
       (.C(CLK),
        .CE(\address[19]_i_1_n_0 ),
        .D(D[12]),
        .Q(address[12]),
        .R(\<const0> ));
  FDRE \address_reg[13] 
       (.C(CLK),
        .CE(\address[19]_i_1_n_0 ),
        .D(D[13]),
        .Q(address[13]),
        .R(\<const0> ));
  FDRE \address_reg[14] 
       (.C(CLK),
        .CE(\address[19]_i_1_n_0 ),
        .D(D[14]),
        .Q(address[14]),
        .R(\<const0> ));
  FDRE \address_reg[15] 
       (.C(CLK),
        .CE(\address[19]_i_1_n_0 ),
        .D(D[15]),
        .Q(address[15]),
        .R(\<const0> ));
  FDRE \address_reg[16] 
       (.C(CLK),
        .CE(\address[19]_i_1_n_0 ),
        .D(D[16]),
        .Q(address[16]),
        .R(\<const0> ));
  FDRE \address_reg[17] 
       (.C(CLK),
        .CE(\address[19]_i_1_n_0 ),
        .D(D[17]),
        .Q(address[17]),
        .R(\<const0> ));
  FDRE \address_reg[18] 
       (.C(CLK),
        .CE(\address[19]_i_1_n_0 ),
        .D(D[18]),
        .Q(address[18]),
        .R(\<const0> ));
  FDRE \address_reg[19] 
       (.C(CLK),
        .CE(\address[19]_i_1_n_0 ),
        .D(D[19]),
        .Q(address[19]),
        .R(\<const0> ));
  FDRE \address_reg[1] 
       (.C(CLK),
        .CE(\address[19]_i_1_n_0 ),
        .D(D[1]),
        .Q(address[1]),
        .R(\<const0> ));
  FDRE \address_reg[2] 
       (.C(CLK),
        .CE(\address[19]_i_1_n_0 ),
        .D(D[2]),
        .Q(address[2]),
        .R(\<const0> ));
  FDRE \address_reg[3] 
       (.C(CLK),
        .CE(\address[19]_i_1_n_0 ),
        .D(D[3]),
        .Q(address[3]),
        .R(\<const0> ));
  FDRE \address_reg[4] 
       (.C(CLK),
        .CE(\address[19]_i_1_n_0 ),
        .D(D[4]),
        .Q(address[4]),
        .R(\<const0> ));
  FDRE \address_reg[5] 
       (.C(CLK),
        .CE(\address[19]_i_1_n_0 ),
        .D(D[5]),
        .Q(address[5]),
        .R(\<const0> ));
  FDRE \address_reg[6] 
       (.C(CLK),
        .CE(\address[19]_i_1_n_0 ),
        .D(D[6]),
        .Q(address[6]),
        .R(\<const0> ));
  FDRE \address_reg[7] 
       (.C(CLK),
        .CE(\address[19]_i_1_n_0 ),
        .D(D[7]),
        .Q(address[7]),
        .R(\<const0> ));
  FDRE \address_reg[8] 
       (.C(CLK),
        .CE(\address[19]_i_1_n_0 ),
        .D(D[8]),
        .Q(address[8]),
        .R(\<const0> ));
  FDRE \address_reg[9] 
       (.C(CLK),
        .CE(\address[19]_i_1_n_0 ),
        .D(D[9]),
        .Q(address[9]),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0757)) 
    \bit_counter[0]_i_1 
       (.I0(state__0),
        .I1(\FSM_sequential_state[1]_i_2__0_n_0 ),
        .I2(\bit_counter_reg_n_0_[0] ),
        .I3(\FSM_sequential_state_reg_n_0_[1] ),
        .O(bit_counter[0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h05507557)) 
    \bit_counter[1]_i_1 
       (.I0(state__0),
        .I1(\FSM_sequential_state[1]_i_2__0_n_0 ),
        .I2(\bit_counter_reg_n_0_[0] ),
        .I3(\bit_counter_reg_n_0_[1] ),
        .I4(\FSM_sequential_state_reg_n_0_[1] ),
        .O(bit_counter[1]));
  LUT6 #(
    .INIT(64'h0775500077755557)) 
    \bit_counter[2]_i_1 
       (.I0(state__0),
        .I1(\FSM_sequential_state[1]_i_2__0_n_0 ),
        .I2(\bit_counter_reg_n_0_[0] ),
        .I3(\bit_counter_reg_n_0_[1] ),
        .I4(\bit_counter_reg_n_0_[2] ),
        .I5(\FSM_sequential_state_reg_n_0_[1] ),
        .O(bit_counter[2]));
  LUT6 #(
    .INIT(64'h2AAA8000AAAAAAAA)) 
    \bit_counter[3]_i_1 
       (.I0(\bit_counter[3]_i_2_n_0 ),
        .I1(\bit_counter_reg_n_0_[1] ),
        .I2(\bit_counter_reg_n_0_[0] ),
        .I3(\bit_counter_reg_n_0_[2] ),
        .I4(\bit_counter_reg_n_0_[3] ),
        .I5(\FSM_sequential_state_reg_n_0_[1] ),
        .O(bit_counter[3]));
  LUT6 #(
    .INIT(64'h55540001FFFFFFFF)) 
    \bit_counter[3]_i_2 
       (.I0(\FSM_sequential_state[1]_i_2__0_n_0 ),
        .I1(\bit_counter_reg_n_0_[2] ),
        .I2(\bit_counter_reg_n_0_[0] ),
        .I3(\bit_counter_reg_n_0_[1] ),
        .I4(\bit_counter_reg_n_0_[3] ),
        .I5(state__0),
        .O(\bit_counter[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000055D7)) 
    \bit_counter[4]_i_1 
       (.I0(state__0),
        .I1(\bit_counter_reg_n_0_[4] ),
        .I2(\bit_counter[4]_i_2__0_n_0 ),
        .I3(\FSM_sequential_state[1]_i_2__0_n_0 ),
        .I4(\FSM_sequential_state_reg_n_0_[1] ),
        .O(bit_counter[4]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bit_counter[4]_i_2__0 
       (.I0(\bit_counter_reg_n_0_[2] ),
        .I1(\bit_counter_reg_n_0_[0] ),
        .I2(\bit_counter_reg_n_0_[1] ),
        .I3(\bit_counter_reg_n_0_[3] ),
        .O(\bit_counter[4]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'h2002)) 
    \bit_counter[5]_i_1 
       (.I0(state__0),
        .I1(\FSM_sequential_state[1]_i_2__0_n_0 ),
        .I2(\bit_counter[5]_i_2_n_0 ),
        .I3(\bit_counter_reg_n_0_[5] ),
        .O(\bit_counter[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \bit_counter[5]_i_2 
       (.I0(\bit_counter_reg_n_0_[3] ),
        .I1(\bit_counter_reg_n_0_[1] ),
        .I2(\bit_counter_reg_n_0_[0] ),
        .I3(\bit_counter_reg_n_0_[2] ),
        .I4(\bit_counter_reg_n_0_[4] ),
        .O(\bit_counter[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h2002)) 
    \bit_counter[6]_i_1 
       (.I0(state__0),
        .I1(\FSM_sequential_state[1]_i_2__0_n_0 ),
        .I2(\bit_counter[7]_i_4_n_0 ),
        .I3(\bit_counter_reg_n_0_[6] ),
        .O(\bit_counter[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030302E22)) 
    \bit_counter[7]_i_1 
       (.I0(spi_flash_valid_w),
        .I1(\FSM_sequential_state_reg_n_0_[1] ),
        .I2(spi_flash_sclk_w),
        .I3(\bit_counter[7]_i_3_n_0 ),
        .I4(state__0),
        .I5(btnC_IBUF),
        .O(\bit_counter[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h22200002)) 
    \bit_counter[7]_i_2 
       (.I0(state__0),
        .I1(\FSM_sequential_state[1]_i_2__0_n_0 ),
        .I2(\bit_counter_reg_n_0_[6] ),
        .I3(\bit_counter[7]_i_4_n_0 ),
        .I4(\bit_counter_reg_n_0_[7] ),
        .O(\bit_counter[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \bit_counter[7]_i_3 
       (.I0(\bit_counter_reg_n_0_[6] ),
        .I1(\bit_counter_reg_n_0_[7] ),
        .I2(\bit_counter_reg_n_0_[4] ),
        .I3(\bit_counter_reg_n_0_[5] ),
        .I4(\bit_counter_reg_n_0_[3] ),
        .O(\bit_counter[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bit_counter[7]_i_4 
       (.I0(\bit_counter_reg_n_0_[4] ),
        .I1(\bit_counter_reg_n_0_[2] ),
        .I2(\bit_counter_reg_n_0_[0] ),
        .I3(\bit_counter_reg_n_0_[1] ),
        .I4(\bit_counter_reg_n_0_[3] ),
        .I5(\bit_counter_reg_n_0_[5] ),
        .O(\bit_counter[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[0] 
       (.C(CLK),
        .CE(\bit_counter[7]_i_1_n_0 ),
        .D(bit_counter[0]),
        .Q(\bit_counter_reg_n_0_[0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[1] 
       (.C(CLK),
        .CE(\bit_counter[7]_i_1_n_0 ),
        .D(bit_counter[1]),
        .Q(\bit_counter_reg_n_0_[1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[2] 
       (.C(CLK),
        .CE(\bit_counter[7]_i_1_n_0 ),
        .D(bit_counter[2]),
        .Q(\bit_counter_reg_n_0_[2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[3] 
       (.C(CLK),
        .CE(\bit_counter[7]_i_1_n_0 ),
        .D(bit_counter[3]),
        .Q(\bit_counter_reg_n_0_[3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[4] 
       (.C(CLK),
        .CE(\bit_counter[7]_i_1_n_0 ),
        .D(bit_counter[4]),
        .Q(\bit_counter_reg_n_0_[4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[5] 
       (.C(CLK),
        .CE(\bit_counter[7]_i_1_n_0 ),
        .D(\bit_counter[5]_i_1_n_0 ),
        .Q(\bit_counter_reg_n_0_[5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[6] 
       (.C(CLK),
        .CE(\bit_counter[7]_i_1_n_0 ),
        .D(\bit_counter[6]_i_1_n_0 ),
        .Q(\bit_counter_reg_n_0_[6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[7] 
       (.C(CLK),
        .CE(\bit_counter[7]_i_1_n_0 ),
        .D(\bit_counter[7]_i_2_n_0 ),
        .Q(\bit_counter_reg_n_0_[7] ),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hFBA0)) 
    cs_i_1__0
       (.I0(state__0),
        .I1(spi_flash_valid_w),
        .I2(\FSM_sequential_state_reg_n_0_[1] ),
        .I3(FLASH_CS_debug_OBUF),
        .O(cs_i_1__0_n_0));
  FDPE cs_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(cs_i_1__0_n_0),
        .PRE(btnC_IBUF),
        .Q(FLASH_CS_debug_OBUF));
  LUT5 #(
    .INIT(32'h00540000)) 
    \mem_data[7]_i_1 
       (.I0(state__0),
        .I1(\FSM_sequential_state[0]_i_2_n_0 ),
        .I2(\bit_counter[7]_i_3_n_0 ),
        .I3(spi_flash_sclk_w),
        .I4(\FSM_sequential_state_reg_n_0_[1] ),
        .O(\mem_data[7]_i_1_n_0 ));
  FDCE \mem_data_reg[0] 
       (.C(CLK),
        .CE(\mem_data[7]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(\mem_data_reg[0]_0 ),
        .Q(Q[0]));
  FDCE \mem_data_reg[1] 
       (.C(CLK),
        .CE(\mem_data[7]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(Q[0]),
        .Q(Q[1]));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDCE #(
    .INIT(1'b0)) 
    \mem_data_reg[1]_lopt_replica 
       (.C(CLK),
        .CE(\mem_data[7]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(Q[0]),
        .Q(\mem_data_reg[1]_lopt_replica_1 ));
  FDCE \mem_data_reg[2] 
       (.C(CLK),
        .CE(\mem_data[7]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(Q[1]),
        .Q(Q[2]));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDCE #(
    .INIT(1'b0)) 
    \mem_data_reg[2]_lopt_replica 
       (.C(CLK),
        .CE(\mem_data[7]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(Q[1]),
        .Q(\mem_data_reg[2]_lopt_replica_1 ));
  FDCE \mem_data_reg[3] 
       (.C(CLK),
        .CE(\mem_data[7]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(Q[2]),
        .Q(Q[3]));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDCE #(
    .INIT(1'b0)) 
    \mem_data_reg[3]_lopt_replica 
       (.C(CLK),
        .CE(\mem_data[7]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(Q[2]),
        .Q(\mem_data_reg[3]_lopt_replica_1 ));
  FDCE \mem_data_reg[4] 
       (.C(CLK),
        .CE(\mem_data[7]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(Q[3]),
        .Q(Q[4]));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDCE #(
    .INIT(1'b0)) 
    \mem_data_reg[4]_lopt_replica 
       (.C(CLK),
        .CE(\mem_data[7]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(Q[3]),
        .Q(\mem_data_reg[4]_lopt_replica_1 ));
  FDCE \mem_data_reg[5] 
       (.C(CLK),
        .CE(\mem_data[7]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(Q[4]),
        .Q(Q[5]));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDCE #(
    .INIT(1'b0)) 
    \mem_data_reg[5]_lopt_replica 
       (.C(CLK),
        .CE(\mem_data[7]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(Q[4]),
        .Q(\mem_data_reg[5]_lopt_replica_1 ));
  FDCE \mem_data_reg[6] 
       (.C(CLK),
        .CE(\mem_data[7]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(Q[5]),
        .Q(Q[6]));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDCE #(
    .INIT(1'b0)) 
    \mem_data_reg[6]_lopt_replica 
       (.C(CLK),
        .CE(\mem_data[7]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(Q[5]),
        .Q(\mem_data_reg[6]_lopt_replica_1 ));
  FDCE \mem_data_reg[7] 
       (.C(CLK),
        .CE(\mem_data[7]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(Q[6]),
        .Q(Q[7]));
  LUT6 #(
    .INIT(64'hFB0B000008080000)) 
    mem_ready_i_1__0
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(mem_ready_i_2__0_n_0),
        .I2(state__0),
        .I3(spi_flash_valid_w),
        .I4(\FSM_sequential_state_reg_n_0_[1] ),
        .I5(spi_flash_ready_w),
        .O(mem_ready_i_1__0_n_0));
  LUT3 #(
    .INIT(8'h0E)) 
    mem_ready_i_2__0
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(\bit_counter[7]_i_3_n_0 ),
        .I2(spi_flash_sclk_w),
        .O(mem_ready_i_2__0_n_0));
  FDCE mem_ready_reg
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(mem_ready_i_1__0_n_0),
        .Q(spi_flash_ready_w));
  LUT4 #(
    .INIT(16'h00E2)) 
    mosi_i_1
       (.I0(spi_flash_valid_w),
        .I1(state__0),
        .I2(spi_flash_sclk_w),
        .I3(\FSM_sequential_state_reg_n_0_[1] ),
        .O(mosi_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_i_10
       (.I0(address[3]),
        .I1(address[2]),
        .I2(\bit_counter_reg_n_0_[1] ),
        .I3(address[1]),
        .I4(\bit_counter_reg_n_0_[0] ),
        .I5(address[0]),
        .O(mosi_i_10_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_i_11
       (.I0(address[7]),
        .I1(address[6]),
        .I2(\bit_counter_reg_n_0_[1] ),
        .I3(address[5]),
        .I4(\bit_counter_reg_n_0_[0] ),
        .I5(address[4]),
        .O(mosi_i_11_n_0));
  LUT5 #(
    .INIT(32'h080808A8)) 
    mosi_i_2
       (.I0(state__0),
        .I1(mosi_i_3_n_0),
        .I2(mosi_i_4_n_0),
        .I3(\bit_counter_reg_n_0_[1] ),
        .I4(\bit_counter_reg_n_0_[2] ),
        .O(mosi_i_2_n_0));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    mosi_i_3
       (.I0(mosi_i_5_n_0),
        .I1(\bit_counter_reg_n_0_[2] ),
        .I2(\bit_counter_reg_n_0_[4] ),
        .I3(mosi_reg_i_6_n_0),
        .I4(\bit_counter_reg_n_0_[3] ),
        .I5(mosi_reg_i_7_n_0),
        .O(mosi_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFEEE)) 
    mosi_i_4
       (.I0(\bit_counter_reg_n_0_[6] ),
        .I1(\bit_counter_reg_n_0_[5] ),
        .I2(\bit_counter_reg_n_0_[4] ),
        .I3(\bit_counter_reg_n_0_[3] ),
        .I4(\bit_counter_reg_n_0_[7] ),
        .O(mosi_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_i_5
       (.I0(address[19]),
        .I1(address[18]),
        .I2(\bit_counter_reg_n_0_[1] ),
        .I3(address[17]),
        .I4(\bit_counter_reg_n_0_[0] ),
        .I5(address[16]),
        .O(mosi_i_5_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_i_8
       (.I0(address[11]),
        .I1(address[10]),
        .I2(\bit_counter_reg_n_0_[1] ),
        .I3(address[9]),
        .I4(\bit_counter_reg_n_0_[0] ),
        .I5(address[8]),
        .O(mosi_i_8_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_i_9
       (.I0(address[15]),
        .I1(address[14]),
        .I2(\bit_counter_reg_n_0_[1] ),
        .I3(address[13]),
        .I4(\bit_counter_reg_n_0_[0] ),
        .I5(address[12]),
        .O(mosi_i_9_n_0));
  FDCE mosi_reg
       (.C(CLK),
        .CE(mosi_i_1_n_0),
        .CLR(btnC_IBUF),
        .D(mosi_i_2_n_0),
        .Q(FLASH_MOSI_debug_OBUF));
  MUXF7 mosi_reg_i_6
       (.I0(mosi_i_8_n_0),
        .I1(mosi_i_9_n_0),
        .O(mosi_reg_i_6_n_0),
        .S(\bit_counter_reg_n_0_[2] ));
  MUXF7 mosi_reg_i_7
       (.I0(mosi_i_10_n_0),
        .I1(mosi_i_11_n_0),
        .O(mosi_reg_i_7_n_0),
        .S(\bit_counter_reg_n_0_[2] ));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDCE #(
    .INIT(1'b0)) 
    mosi_reg_lopt_replica
       (.C(CLK),
        .CE(mosi_i_1_n_0),
        .CLR(btnC_IBUF),
        .D(mosi_i_2_n_0),
        .Q(mosi_reg_lopt_replica_1));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hD7)) 
    sclk_i_1__0
       (.I0(spi_flash_sclk_w),
        .I1(\FSM_sequential_state_reg_n_0_[1] ),
        .I2(state__0),
        .O(sclk_i_1__0_n_0));
  FDPE sclk_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(sclk_i_1__0_n_0),
        .PRE(btnC_IBUF),
        .Q(spi_flash_sclk_w));
endmodule

module spi_sensor
   (LUKS_CS_OBUF,
    data3,
    spi_luks_sclk_w,
    Q,
    CLK,
    btnC_IBUF,
    spi_luks_valid_w,
    D);
  output LUKS_CS_OBUF;
  output [0:0]data3;
  output spi_luks_sclk_w;
  output [7:0]Q;
  input CLK;
  input btnC_IBUF;
  input spi_luks_valid_w;
  input [0:0]D;

  wire \<const1> ;
  wire CLK;
  wire [0:0]D;
  wire \FSM_sequential_state[0]_i_1__0_n_0 ;
  wire \FSM_sequential_state[1]_i_1__0_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire LUKS_CS_OBUF;
  wire [7:0]Q;
  wire \bit_counter[0]_i_1__0_n_0 ;
  wire \bit_counter[1]_i_1__0_n_0 ;
  wire \bit_counter[2]_i_1__0_n_0 ;
  wire \bit_counter[3]_i_1__0_n_0 ;
  wire \bit_counter[4]_i_1__0_n_0 ;
  wire \bit_counter[4]_i_2_n_0 ;
  wire \bit_counter[4]_i_4_n_0 ;
  wire \bit_counter_reg_n_0_[0] ;
  wire \bit_counter_reg_n_0_[1] ;
  wire \bit_counter_reg_n_0_[2] ;
  wire \bit_counter_reg_n_0_[3] ;
  wire \bit_counter_reg_n_0_[4] ;
  wire btnC_IBUF;
  wire cs_i_1_n_0;
  wire cs_i_2_n_0;
  wire cs_i_3_n_0;
  wire [0:0]data3;
  wire \mem_data[7]_i_1__0_n_0 ;
  wire \mem_data[7]_i_2_n_0 ;
  wire mem_ready_i_1_n_0;
  wire mem_ready_i_2_n_0;
  wire sclk_i_1_n_0;
  wire sclk_i_2_n_0;
  wire spi_luks_sclk_w;
  wire spi_luks_valid_w;
  wire state1__3;
  wire [2:0]state__0;
  wire state__2;

  LUT6 #(
    .INIT(64'h003500CF003500C0)) 
    \FSM_sequential_state[0]_i_1__0 
       (.I0(state__2),
        .I1(\FSM_sequential_state[2]_i_2_n_0 ),
        .I2(state__0[1]),
        .I3(state__0[2]),
        .I4(state__0[0]),
        .I5(spi_luks_valid_w),
        .O(\FSM_sequential_state[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h003A00F0)) 
    \FSM_sequential_state[1]_i_1__0 
       (.I0(state__2),
        .I1(\FSM_sequential_state[2]_i_2_n_0 ),
        .I2(state__0[1]),
        .I3(state__0[2]),
        .I4(state__0[0]),
        .O(\FSM_sequential_state[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(spi_luks_sclk_w),
        .I1(\bit_counter_reg_n_0_[2] ),
        .I2(\bit_counter_reg_n_0_[1] ),
        .I3(\bit_counter_reg_n_0_[3] ),
        .I4(\bit_counter_reg_n_0_[0] ),
        .I5(\bit_counter_reg_n_0_[4] ),
        .O(state__2));
  LUT5 #(
    .INIT(32'h08300800)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(\FSM_sequential_state[2]_i_2_n_0 ),
        .I1(state__0[1]),
        .I2(state__0[2]),
        .I3(state__0[0]),
        .I4(spi_luks_valid_w),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000400000)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(state__0[0]),
        .I1(\bit_counter_reg_n_0_[2] ),
        .I2(\bit_counter_reg_n_0_[1] ),
        .I3(\bit_counter_reg_n_0_[0] ),
        .I4(\FSM_sequential_state[2]_i_3_n_0 ),
        .I5(spi_luks_sclk_w),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(\bit_counter_reg_n_0_[4] ),
        .I1(\bit_counter_reg_n_0_[3] ),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "START_CONVERSION:001,READ_ADC:010,TRAILING_ZEROES:011,DATA_READY:100,IDLE:000,iSTATE:101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(\FSM_sequential_state[0]_i_1__0_n_0 ),
        .Q(state__0[0]));
  (* FSM_ENCODED_STATES = "START_CONVERSION:001,READ_ADC:010,TRAILING_ZEROES:011,DATA_READY:100,IDLE:000,iSTATE:101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(\FSM_sequential_state[1]_i_1__0_n_0 ),
        .Q(state__0[1]));
  (* FSM_ENCODED_STATES = "START_CONVERSION:001,READ_ADC:010,TRAILING_ZEROES:011,DATA_READY:100,IDLE:000,iSTATE:101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state__0[2]));
  VCC VCC
       (.P(\<const1> ));
  LUT3 #(
    .INIT(8'h37)) 
    \bit_counter[0]_i_1__0 
       (.I0(state__0[0]),
        .I1(\bit_counter_reg_n_0_[0] ),
        .I2(state__0[1]),
        .O(\bit_counter[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    \bit_counter[1]_i_1__0 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(\bit_counter_reg_n_0_[1] ),
        .I3(\bit_counter_reg_n_0_[0] ),
        .O(\bit_counter[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hE0E0E00E)) 
    \bit_counter[2]_i_1__0 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(\bit_counter_reg_n_0_[2] ),
        .I3(\bit_counter_reg_n_0_[0] ),
        .I4(\bit_counter_reg_n_0_[1] ),
        .O(\bit_counter[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hE0E0E0E0E0E0E00E)) 
    \bit_counter[3]_i_1__0 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(\bit_counter_reg_n_0_[3] ),
        .I3(\bit_counter_reg_n_0_[2] ),
        .I4(\bit_counter_reg_n_0_[1] ),
        .I5(\bit_counter_reg_n_0_[0] ),
        .O(\bit_counter[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CCE233E2)) 
    \bit_counter[4]_i_1__0 
       (.I0(spi_luks_valid_w),
        .I1(state__0[0]),
        .I2(state1__3),
        .I3(state__0[1]),
        .I4(spi_luks_sclk_w),
        .I5(state__0[2]),
        .O(\bit_counter[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFC03FD57)) 
    \bit_counter[4]_i_2 
       (.I0(state__0[0]),
        .I1(\bit_counter_reg_n_0_[3] ),
        .I2(\bit_counter[4]_i_4_n_0 ),
        .I3(\bit_counter_reg_n_0_[4] ),
        .I4(state__0[1]),
        .O(\bit_counter[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA8000)) 
    \bit_counter[4]_i_3 
       (.I0(spi_luks_sclk_w),
        .I1(\bit_counter_reg_n_0_[2] ),
        .I2(\bit_counter_reg_n_0_[1] ),
        .I3(\bit_counter_reg_n_0_[3] ),
        .I4(\bit_counter_reg_n_0_[4] ),
        .O(state1__3));
  LUT3 #(
    .INIT(8'hFE)) 
    \bit_counter[4]_i_4 
       (.I0(\bit_counter_reg_n_0_[2] ),
        .I1(\bit_counter_reg_n_0_[1] ),
        .I2(\bit_counter_reg_n_0_[0] ),
        .O(\bit_counter[4]_i_4_n_0 ));
  FDCE \bit_counter_reg[0] 
       (.C(CLK),
        .CE(\bit_counter[4]_i_1__0_n_0 ),
        .CLR(btnC_IBUF),
        .D(\bit_counter[0]_i_1__0_n_0 ),
        .Q(\bit_counter_reg_n_0_[0] ));
  FDCE \bit_counter_reg[1] 
       (.C(CLK),
        .CE(\bit_counter[4]_i_1__0_n_0 ),
        .CLR(btnC_IBUF),
        .D(\bit_counter[1]_i_1__0_n_0 ),
        .Q(\bit_counter_reg_n_0_[1] ));
  FDCE \bit_counter_reg[2] 
       (.C(CLK),
        .CE(\bit_counter[4]_i_1__0_n_0 ),
        .CLR(btnC_IBUF),
        .D(\bit_counter[2]_i_1__0_n_0 ),
        .Q(\bit_counter_reg_n_0_[2] ));
  FDCE \bit_counter_reg[3] 
       (.C(CLK),
        .CE(\bit_counter[4]_i_1__0_n_0 ),
        .CLR(btnC_IBUF),
        .D(\bit_counter[3]_i_1__0_n_0 ),
        .Q(\bit_counter_reg_n_0_[3] ));
  FDCE \bit_counter_reg[4] 
       (.C(CLK),
        .CE(\bit_counter[4]_i_1__0_n_0 ),
        .CLR(btnC_IBUF),
        .D(\bit_counter[4]_i_2_n_0 ),
        .Q(\bit_counter_reg_n_0_[4] ));
  LUT5 #(
    .INIT(32'h00008830)) 
    cs_i_1
       (.I0(cs_i_3_n_0),
        .I1(state__0[0]),
        .I2(spi_luks_valid_w),
        .I3(state__0[1]),
        .I4(state__0[2]),
        .O(cs_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    cs_i_2
       (.I0(state__0[1]),
        .I1(spi_luks_sclk_w),
        .O(cs_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    cs_i_3
       (.I0(spi_luks_sclk_w),
        .I1(\bit_counter_reg_n_0_[2] ),
        .I2(\bit_counter_reg_n_0_[1] ),
        .I3(\bit_counter_reg_n_0_[0] ),
        .I4(\bit_counter_reg_n_0_[4] ),
        .I5(\bit_counter_reg_n_0_[3] ),
        .O(cs_i_3_n_0));
  FDPE cs_reg
       (.C(CLK),
        .CE(cs_i_1_n_0),
        .D(cs_i_2_n_0),
        .PRE(btnC_IBUF),
        .Q(LUKS_CS_OBUF));
  LUT3 #(
    .INIT(8'h01)) 
    \mem_data[7]_i_1__0 
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .I2(\mem_data[7]_i_2_n_0 ),
        .O(\mem_data[7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAABBBFFFFFFFF)) 
    \mem_data[7]_i_2 
       (.I0(spi_luks_sclk_w),
        .I1(\bit_counter_reg_n_0_[3] ),
        .I2(\bit_counter_reg_n_0_[1] ),
        .I3(\bit_counter_reg_n_0_[2] ),
        .I4(\bit_counter_reg_n_0_[4] ),
        .I5(state__0[1]),
        .O(\mem_data[7]_i_2_n_0 ));
  FDCE \mem_data_reg[0] 
       (.C(CLK),
        .CE(\mem_data[7]_i_1__0_n_0 ),
        .CLR(btnC_IBUF),
        .D(D),
        .Q(Q[0]));
  FDCE \mem_data_reg[1] 
       (.C(CLK),
        .CE(\mem_data[7]_i_1__0_n_0 ),
        .CLR(btnC_IBUF),
        .D(Q[0]),
        .Q(Q[1]));
  FDCE \mem_data_reg[2] 
       (.C(CLK),
        .CE(\mem_data[7]_i_1__0_n_0 ),
        .CLR(btnC_IBUF),
        .D(Q[1]),
        .Q(Q[2]));
  FDCE \mem_data_reg[3] 
       (.C(CLK),
        .CE(\mem_data[7]_i_1__0_n_0 ),
        .CLR(btnC_IBUF),
        .D(Q[2]),
        .Q(Q[3]));
  FDCE \mem_data_reg[4] 
       (.C(CLK),
        .CE(\mem_data[7]_i_1__0_n_0 ),
        .CLR(btnC_IBUF),
        .D(Q[3]),
        .Q(Q[4]));
  FDCE \mem_data_reg[5] 
       (.C(CLK),
        .CE(\mem_data[7]_i_1__0_n_0 ),
        .CLR(btnC_IBUF),
        .D(Q[4]),
        .Q(Q[5]));
  FDCE \mem_data_reg[6] 
       (.C(CLK),
        .CE(\mem_data[7]_i_1__0_n_0 ),
        .CLR(btnC_IBUF),
        .D(Q[5]),
        .Q(Q[6]));
  FDCE \mem_data_reg[7] 
       (.C(CLK),
        .CE(\mem_data[7]_i_1__0_n_0 ),
        .CLR(btnC_IBUF),
        .D(Q[6]),
        .Q(Q[7]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    mem_ready_i_1
       (.I0(spi_luks_sclk_w),
        .I1(state__0[0]),
        .I2(spi_luks_valid_w),
        .I3(mem_ready_i_2_n_0),
        .I4(data3),
        .O(mem_ready_i_1_n_0));
  LUT5 #(
    .INIT(32'h00800380)) 
    mem_ready_i_2
       (.I0(cs_i_3_n_0),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(state__0[2]),
        .I4(spi_luks_valid_w),
        .O(mem_ready_i_2_n_0));
  FDCE mem_ready_reg
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(mem_ready_i_1_n_0),
        .Q(data3));
  LUT5 #(
    .INIT(32'hECCF333F)) 
    sclk_i_1
       (.I0(sclk_i_2_n_0),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .I4(spi_luks_sclk_w),
        .O(sclk_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    sclk_i_2
       (.I0(\bit_counter_reg_n_0_[3] ),
        .I1(\bit_counter_reg_n_0_[4] ),
        .I2(\bit_counter_reg_n_0_[0] ),
        .I3(\bit_counter_reg_n_0_[1] ),
        .I4(\bit_counter_reg_n_0_[2] ),
        .O(sclk_i_2_n_0));
  FDPE sclk_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(sclk_i_1_n_0),
        .PRE(btnC_IBUF),
        .Q(spi_luks_sclk_w));
endmodule

module tt_um_csit_luks
   (LUKS_CS_OBUF,
    FLASH_MOSI_debug_OBUF,
    FLASH_CS_debug_OBUF,
    Q,
    seg_OBUF,
    dp_OBUF,
    an_OBUF,
    FLASH_SCLK_debug_OBUF,
    A_IBUF,
    CLK,
    btnC_IBUF,
    B_IBUF,
    PB_IBUF,
    D,
    \mem_data_reg[0] ,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5,
    lopt_6,
    lopt_7);
  output LUKS_CS_OBUF;
  output FLASH_MOSI_debug_OBUF;
  output FLASH_CS_debug_OBUF;
  output [7:0]Q;
  output [6:0]seg_OBUF;
  output dp_OBUF;
  output [3:0]an_OBUF;
  output FLASH_SCLK_debug_OBUF;
  input A_IBUF;
  input CLK;
  input btnC_IBUF;
  input B_IBUF;
  input PB_IBUF;
  input [0:0]D;
  input [0:0]\mem_data_reg[0] ;
  output lopt;
  output lopt_1;
  output lopt_2;
  output lopt_3;
  output lopt_4;
  output lopt_5;
  output lopt_6;
  output lopt_7;

  wire A_IBUF;
  wire B_IBUF;
  wire CLK;
  wire [0:0]D;
  wire FLASH_CS_debug_OBUF;
  wire FLASH_MOSI_debug_OBUF;
  wire FLASH_SCLK_debug_OBUF;
  wire LUKS_CS_OBUF;
  wire PB_IBUF;
  wire [7:0]Q;
  wire [3:0]an_OBUF;
  wire btnC_IBUF;
  wire [0:0]data3;
  wire dp_OBUF;
  wire [3:0]enc_w;
  wire fsm_instance_n_12;
  wire fsm_instance_n_13;
  wire fsm_instance_n_14;
  wire fsm_instance_n_15;
  wire fsm_instance_n_16;
  wire fsm_instance_n_17;
  wire fsm_instance_n_18;
  wire fsm_instance_n_19;
  wire fsm_instance_n_2;
  wire fsm_instance_n_20;
  wire fsm_instance_n_21;
  wire fsm_instance_n_22;
  wire fsm_instance_n_23;
  wire fsm_instance_n_24;
  wire fsm_instance_n_25;
  wire fsm_instance_n_26;
  wire fsm_instance_n_27;
  wire fsm_instance_n_28;
  wire fsm_instance_n_29;
  wire fsm_instance_n_30;
  wire fsm_instance_n_31;
  wire lopt;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire lopt_6;
  wire lopt_7;
  wire [7:0]mem_data;
  wire [0:0]\mem_data_reg[0] ;
  wire [1:0]multiplexing_counter;
  wire [1:0]pb_press_type_w;
  wire [0:0]previous_state;
  wire rotational_encoder_instance_n_2;
  wire [6:0]seg_OBUF;
  wire spi_flash_ready_w;
  wire spi_flash_valid_w;
  wire spi_luks_sclk_w;
  wire spi_luks_valid_w;

  fsm fsm_instance
       (.CLK(CLK),
        .Q(fsm_instance_n_2),
        .btnC_IBUF(btnC_IBUF),
        .\current_state_reg[0]_0 (rotational_encoder_instance_n_2),
        .data3(data3),
        .\display_out_reg[2]_0 (Q[2:0]),
        .\display_out_reg[3]_0 (enc_w),
        .dp_OBUF(dp_OBUF),
        .\fd_address_reg[19]_0 ({fsm_instance_n_12,fsm_instance_n_13,fsm_instance_n_14,fsm_instance_n_15,fsm_instance_n_16,fsm_instance_n_17,fsm_instance_n_18,fsm_instance_n_19,fsm_instance_n_20,fsm_instance_n_21,fsm_instance_n_22,fsm_instance_n_23,fsm_instance_n_24,fsm_instance_n_25,fsm_instance_n_26,fsm_instance_n_27,fsm_instance_n_28,fsm_instance_n_29,fsm_instance_n_30,fsm_instance_n_31}),
        .\fd_address_reg[7]_0 (mem_data),
        .pb_press_type_w(pb_press_type_w),
        .\previous_state_reg[0]_0 (previous_state),
        .\seg[4] (multiplexing_counter),
        .seg_OBUF(seg_OBUF),
        .spi_flash_ready_w(spi_flash_ready_w),
        .spi_flash_valid_w(spi_flash_valid_w),
        .spi_luks_valid_w(spi_luks_valid_w));
  rotational_encoder rotational_encoder_instance
       (.A_IBUF(A_IBUF),
        .B_IBUF(B_IBUF),
        .CLK(CLK),
        .PB_IBUF(PB_IBUF),
        .Q(fsm_instance_n_2),
        .btnC_IBUF(btnC_IBUF),
        .\current_state[0]_i_3 (previous_state),
        .\enc_reg[3]_0 (enc_w),
        .\pb_press_type_reg[0]_0 (rotational_encoder_instance_n_2),
        .pb_press_type_w(pb_press_type_w));
  seven_seg seven_segment_instance
       (.CLK(CLK),
        .Q(multiplexing_counter),
        .an_OBUF(an_OBUF),
        .btnC_IBUF(btnC_IBUF));
  spi_flash spi_flash_instance
       (.CLK(CLK),
        .D({fsm_instance_n_12,fsm_instance_n_13,fsm_instance_n_14,fsm_instance_n_15,fsm_instance_n_16,fsm_instance_n_17,fsm_instance_n_18,fsm_instance_n_19,fsm_instance_n_20,fsm_instance_n_21,fsm_instance_n_22,fsm_instance_n_23,fsm_instance_n_24,fsm_instance_n_25,fsm_instance_n_26,fsm_instance_n_27,fsm_instance_n_28,fsm_instance_n_29,fsm_instance_n_30,fsm_instance_n_31}),
        .FLASH_CS_debug_OBUF(FLASH_CS_debug_OBUF),
        .FLASH_MOSI_debug_OBUF(FLASH_MOSI_debug_OBUF),
        .FLASH_SCLK_debug_OBUF(FLASH_SCLK_debug_OBUF),
        .Q(Q),
        .btnC_IBUF(btnC_IBUF),
        .lopt(lopt),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(lopt_4),
        .lopt_5(lopt_5),
        .lopt_6(lopt_6),
        .lopt_7(lopt_7),
        .\mem_data_reg[0]_0 (\mem_data_reg[0] ),
        .spi_flash_ready_w(spi_flash_ready_w),
        .spi_flash_valid_w(spi_flash_valid_w),
        .spi_luks_sclk_w(spi_luks_sclk_w));
  spi_sensor spi_sensor_instance
       (.CLK(CLK),
        .D(D),
        .LUKS_CS_OBUF(LUKS_CS_OBUF),
        .Q(mem_data),
        .btnC_IBUF(btnC_IBUF),
        .data3(data3),
        .spi_luks_sclk_w(spi_luks_sclk_w),
        .spi_luks_valid_w(spi_luks_valid_w));
endmodule
