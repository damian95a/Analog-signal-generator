// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Tue May 16 16:01:25 2023
// Host        : stud209-4 running 64-bit Ubuntu 22.04.2 LTS
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/stud2020/0lyszczarz/jos/proj/project_2/project_2.sim/sim_1/synth/timing/xsim/dac_sim_time_synth.v
// Design      : top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module ROM_mem
   (Q,
    D,
    clk_IBUF_BUFG,
    AR);
  output [7:0]Q;
  input [7:0]D;
  input clk_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire [7:0]D;
  wire [7:0]Q;
  wire clk_IBUF_BUFG;

  FDCE #(
    .INIT(1'b0)) 
    \data_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[7]),
        .Q(Q[7]));
endmodule

module SPI_master
   (mosi_OBUF,
    sclk_OBUF,
    D,
    clk_IBUF_BUFG,
    AR,
    Q,
    enable);
  output mosi_OBUF;
  output sclk_OBUF;
  output [0:0]D;
  input clk_IBUF_BUFG;
  input [0:0]AR;
  input [7:0]Q;
  input enable;

  wire [0:0]AR;
  wire [0:0]D;
  wire [7:0]Q;
  wire clk_IBUF_BUFG;
  wire cmd0;
  wire \cmd_reg_n_0_[0] ;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[1]_i_1_n_0 ;
  wire \cnt_reg_n_0_[0] ;
  wire \cnt_reg_n_0_[1] ;
  wire \d_cnt0_inferred__0/i__carry__0_n_1 ;
  wire \d_cnt0_inferred__0/i__carry__0_n_2 ;
  wire \d_cnt0_inferred__0/i__carry__0_n_3 ;
  wire \d_cnt0_inferred__0/i__carry__0_n_4 ;
  wire \d_cnt0_inferred__0/i__carry__0_n_5 ;
  wire \d_cnt0_inferred__0/i__carry_n_0 ;
  wire \d_cnt0_inferred__0/i__carry_n_1 ;
  wire \d_cnt0_inferred__0/i__carry_n_2 ;
  wire \d_cnt0_inferred__0/i__carry_n_3 ;
  wire [4:1]d_cnt1;
  wire \d_cnt[0]_i_1_n_0 ;
  wire \d_cnt[0]_i_2_n_0 ;
  wire \d_cnt[0]_i_3_n_0 ;
  wire \d_cnt[1]_i_1_n_0 ;
  wire \d_cnt[1]_i_2_n_0 ;
  wire \d_cnt[1]_i_3_n_0 ;
  wire \d_cnt[2]_i_1_n_0 ;
  wire \d_cnt[2]_i_2_n_0 ;
  wire \d_cnt[2]_i_3_n_0 ;
  wire \d_cnt[3]_i_1_n_0 ;
  wire \d_cnt[3]_i_2_n_0 ;
  wire \d_cnt[4]_i_1_n_0 ;
  wire \d_cnt[4]_i_2_n_0 ;
  wire \d_cnt[4]_i_3_n_0 ;
  wire \d_cnt_reg_n_0_[0] ;
  wire \d_cnt_reg_n_0_[1] ;
  wire \d_cnt_reg_n_0_[2] ;
  wire \d_cnt_reg_n_0_[3] ;
  wire \d_cnt_reg_n_0_[4] ;
  wire data10;
  wire data2;
  wire data3;
  wire data4;
  wire data5;
  wire data6;
  wire data7;
  wire data8;
  wire enable;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire mosi_OBUF;
  wire mosi_i_1_n_0;
  wire mosi_i_2_n_0;
  wire mosi_i_3_n_0;
  wire mosi_i_4_n_0;
  wire mosi_i_5_n_0;
  wire [1:0]nst;
  wire sclk_OBUF;
  wire sclk_i_1_n_0;
  wire [1:0]sclk_negedge;
  wire [1:0]st;
  wire [2:0]t_cnt;
  wire \t_cnt[0]_i_1_n_0 ;
  wire \t_cnt[1]_i_1_n_0 ;
  wire \t_cnt[2]_i_1_n_0 ;
  wire [3:0]\NLW_d_cnt0_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:3]\NLW_d_cnt0_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [1:0]\NLW_d_cnt0_inferred__0/i__carry__0_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h0000F808)) 
    \FSM_sequential_st[0]_i_1 
       (.I0(enable),
        .I1(t_cnt[2]),
        .I2(st[1]),
        .I3(\d_cnt_reg_n_0_[4] ),
        .I4(st[0]),
        .O(nst[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_st[1]_i_1 
       (.I0(st[0]),
        .I1(st[1]),
        .O(nst[1]));
  (* FSM_ENCODED_STATES = "idle:00,start:01,stop:11,transmit:10" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_st_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(nst[0]),
        .Q(st[0]));
  (* FSM_ENCODED_STATES = "idle:00,start:01,stop:11,transmit:10" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_st_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(nst[1]),
        .Q(st[1]));
  LUT3 #(
    .INIT(8'h04)) 
    \cmd[9]_i_1 
       (.I0(st[1]),
        .I1(enable),
        .I2(st[0]),
        .O(cmd0));
  FDCE #(
    .INIT(1'b0)) 
    \cmd_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(cmd0),
        .CLR(AR),
        .D(Q[0]),
        .Q(\cmd_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \cmd_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(cmd0),
        .CLR(AR),
        .D(Q[1]),
        .Q(data2));
  FDCE #(
    .INIT(1'b0)) 
    \cmd_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(cmd0),
        .CLR(AR),
        .D(Q[2]),
        .Q(data3));
  FDCE #(
    .INIT(1'b0)) 
    \cmd_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(cmd0),
        .CLR(AR),
        .D(Q[3]),
        .Q(data4));
  FDCE #(
    .INIT(1'b0)) 
    \cmd_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(cmd0),
        .CLR(AR),
        .D(Q[4]),
        .Q(data5));
  FDCE #(
    .INIT(1'b0)) 
    \cmd_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(cmd0),
        .CLR(AR),
        .D(Q[5]),
        .Q(data6));
  FDCE #(
    .INIT(1'b0)) 
    \cmd_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(cmd0),
        .CLR(AR),
        .D(Q[6]),
        .Q(data7));
  FDCE #(
    .INIT(1'b0)) 
    \cmd_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(cmd0),
        .CLR(AR),
        .D(Q[7]),
        .Q(data8));
  FDCE #(
    .INIT(1'b0)) 
    \cmd_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(cmd0),
        .CLR(AR),
        .D(1'b1),
        .Q(data10));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h310A)) 
    \cnt[0]_i_1 
       (.I0(st[1]),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(st[0]),
        .I3(\cnt_reg_n_0_[0] ),
        .O(\cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h1C0C)) 
    \cnt[1]_i_1 
       (.I0(st[0]),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(st[1]),
        .O(\cnt[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt[1]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[1] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \d_cnt0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\d_cnt0_inferred__0/i__carry_n_0 ,\d_cnt0_inferred__0/i__carry_n_1 ,\d_cnt0_inferred__0/i__carry_n_2 ,\d_cnt0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({d_cnt1[1],i__carry_i_2_n_0,1'b0,1'b1}),
        .O(\NLW_d_cnt0_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_3_n_0,i__carry_i_4_n_0,i__carry_i_5_n_0,i__carry_i_6_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \d_cnt0_inferred__0/i__carry__0 
       (.CI(\d_cnt0_inferred__0/i__carry_n_0 ),
        .CO({\NLW_d_cnt0_inferred__0/i__carry__0_CO_UNCONNECTED [3],\d_cnt0_inferred__0/i__carry__0_n_1 ,\d_cnt0_inferred__0/i__carry__0_n_2 ,\d_cnt0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,i__carry__0_i_1_n_0,i__carry__0_i_2_n_0}),
        .O({\d_cnt0_inferred__0/i__carry__0_n_4 ,\d_cnt0_inferred__0/i__carry__0_n_5 ,\NLW_d_cnt0_inferred__0/i__carry__0_O_UNCONNECTED [1:0]}),
        .S({i__carry__0_i_3_n_0,i__carry__0_i_4_n_0,i__carry__0_i_5_n_0,i__carry__0_i_6_n_0}));
  LUT6 #(
    .INIT(64'h00000000BEEE8222)) 
    \d_cnt[0]_i_1 
       (.I0(\d_cnt[0]_i_2_n_0 ),
        .I1(\d_cnt_reg_n_0_[2] ),
        .I2(\d_cnt_reg_n_0_[0] ),
        .I3(\d_cnt_reg_n_0_[1] ),
        .I4(\d_cnt[0]_i_3_n_0 ),
        .I5(\d_cnt_reg_n_0_[4] ),
        .O(\d_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0FF05AF0B0B00F0F)) 
    \d_cnt[0]_i_2 
       (.I0(d_cnt1[3]),
        .I1(\d_cnt_reg_n_0_[1] ),
        .I2(\d_cnt_reg_n_0_[0] ),
        .I3(\d_cnt0_inferred__0/i__carry__0_n_5 ),
        .I4(d_cnt1[4]),
        .I5(\d_cnt0_inferred__0/i__carry__0_n_4 ),
        .O(\d_cnt[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h5A99)) 
    \d_cnt[0]_i_3 
       (.I0(\d_cnt_reg_n_0_[0] ),
        .I1(d_cnt1[4]),
        .I2(\d_cnt0_inferred__0/i__carry__0_n_5 ),
        .I3(\d_cnt0_inferred__0/i__carry__0_n_4 ),
        .O(\d_cnt[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BEEE8222)) 
    \d_cnt[1]_i_1 
       (.I0(\d_cnt[1]_i_2_n_0 ),
        .I1(\d_cnt_reg_n_0_[2] ),
        .I2(\d_cnt_reg_n_0_[0] ),
        .I3(\d_cnt_reg_n_0_[1] ),
        .I4(\d_cnt[1]_i_3_n_0 ),
        .I5(\d_cnt_reg_n_0_[4] ),
        .O(\d_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h32CDFC0300FFB30C)) 
    \d_cnt[1]_i_2 
       (.I0(d_cnt1[3]),
        .I1(\d_cnt_reg_n_0_[0] ),
        .I2(d_cnt1[4]),
        .I3(\d_cnt_reg_n_0_[1] ),
        .I4(\d_cnt0_inferred__0/i__carry__0_n_4 ),
        .I5(\d_cnt0_inferred__0/i__carry__0_n_5 ),
        .O(\d_cnt[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h5AE10FD2)) 
    \d_cnt[1]_i_3 
       (.I0(\d_cnt_reg_n_0_[0] ),
        .I1(d_cnt1[4]),
        .I2(\d_cnt_reg_n_0_[1] ),
        .I3(\d_cnt0_inferred__0/i__carry__0_n_4 ),
        .I4(\d_cnt0_inferred__0/i__carry__0_n_5 ),
        .O(\d_cnt[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BEEE8222)) 
    \d_cnt[2]_i_1 
       (.I0(\d_cnt[2]_i_2_n_0 ),
        .I1(\d_cnt_reg_n_0_[2] ),
        .I2(\d_cnt_reg_n_0_[0] ),
        .I3(\d_cnt_reg_n_0_[1] ),
        .I4(\d_cnt[2]_i_3_n_0 ),
        .I5(\d_cnt_reg_n_0_[4] ),
        .O(\d_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFECCCC80FF03FF00)) 
    \d_cnt[2]_i_2 
       (.I0(d_cnt1[3]),
        .I1(\d_cnt_reg_n_0_[0] ),
        .I2(d_cnt1[4]),
        .I3(\d_cnt0_inferred__0/i__carry__0_n_4 ),
        .I4(\d_cnt0_inferred__0/i__carry__0_n_5 ),
        .I5(\d_cnt_reg_n_0_[1] ),
        .O(\d_cnt[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h005E507F)) 
    \d_cnt[2]_i_3 
       (.I0(\d_cnt_reg_n_0_[0] ),
        .I1(d_cnt1[4]),
        .I2(\d_cnt_reg_n_0_[1] ),
        .I3(\d_cnt0_inferred__0/i__carry__0_n_4 ),
        .I4(\d_cnt0_inferred__0/i__carry__0_n_5 ),
        .O(\d_cnt[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BEEE8222)) 
    \d_cnt[3]_i_1 
       (.I0(\d_cnt[3]_i_2_n_0 ),
        .I1(\d_cnt_reg_n_0_[2] ),
        .I2(\d_cnt_reg_n_0_[0] ),
        .I3(\d_cnt_reg_n_0_[1] ),
        .I4(\d_cnt_reg_n_0_[3] ),
        .I5(\d_cnt_reg_n_0_[4] ),
        .O(\d_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5466662A55A955AA)) 
    \d_cnt[3]_i_2 
       (.I0(d_cnt1[3]),
        .I1(\d_cnt_reg_n_0_[0] ),
        .I2(d_cnt1[4]),
        .I3(\d_cnt0_inferred__0/i__carry__0_n_4 ),
        .I4(\d_cnt0_inferred__0/i__carry__0_n_5 ),
        .I5(\d_cnt_reg_n_0_[1] ),
        .O(\d_cnt[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \d_cnt[4]_i_1 
       (.I0(sclk_negedge[0]),
        .I1(sclk_negedge[1]),
        .I2(\d_cnt_reg_n_0_[4] ),
        .O(\d_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E2222E22)) 
    \d_cnt[4]_i_2 
       (.I0(\d_cnt[4]_i_3_n_0 ),
        .I1(d_cnt1[2]),
        .I2(\d_cnt0_inferred__0/i__carry__0_n_5 ),
        .I3(\d_cnt0_inferred__0/i__carry__0_n_4 ),
        .I4(d_cnt1[4]),
        .I5(\d_cnt_reg_n_0_[4] ),
        .O(\d_cnt[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA1A04B5A04014000)) 
    \d_cnt[4]_i_3 
       (.I0(d_cnt1[3]),
        .I1(\d_cnt_reg_n_0_[0] ),
        .I2(d_cnt1[4]),
        .I3(\d_cnt_reg_n_0_[1] ),
        .I4(\d_cnt0_inferred__0/i__carry__0_n_5 ),
        .I5(\d_cnt0_inferred__0/i__carry__0_n_4 ),
        .O(\d_cnt[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \d_cnt[4]_i_4 
       (.I0(\d_cnt_reg_n_0_[1] ),
        .I1(\d_cnt_reg_n_0_[0] ),
        .I2(\d_cnt_reg_n_0_[2] ),
        .O(d_cnt1[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \d_cnt[4]_i_5 
       (.I0(\d_cnt_reg_n_0_[3] ),
        .I1(\d_cnt_reg_n_0_[1] ),
        .I2(\d_cnt_reg_n_0_[0] ),
        .I3(\d_cnt_reg_n_0_[2] ),
        .I4(\d_cnt_reg_n_0_[4] ),
        .O(d_cnt1[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \d_cnt[4]_i_6 
       (.I0(\d_cnt_reg_n_0_[2] ),
        .I1(\d_cnt_reg_n_0_[0] ),
        .I2(\d_cnt_reg_n_0_[1] ),
        .I3(\d_cnt_reg_n_0_[3] ),
        .O(d_cnt1[3]));
  FDCE #(
    .INIT(1'b0)) 
    \d_cnt_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\d_cnt[4]_i_1_n_0 ),
        .CLR(AR),
        .D(\d_cnt[0]_i_1_n_0 ),
        .Q(\d_cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \d_cnt_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\d_cnt[4]_i_1_n_0 ),
        .CLR(AR),
        .D(\d_cnt[1]_i_1_n_0 ),
        .Q(\d_cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \d_cnt_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\d_cnt[4]_i_1_n_0 ),
        .CLR(AR),
        .D(\d_cnt[2]_i_1_n_0 ),
        .Q(\d_cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \d_cnt_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\d_cnt[4]_i_1_n_0 ),
        .CLR(AR),
        .D(\d_cnt[3]_i_1_n_0 ),
        .Q(\d_cnt_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \d_cnt_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\d_cnt[4]_i_1_n_0 ),
        .CLR(AR),
        .D(\d_cnt[4]_i_2_n_0 ),
        .Q(\d_cnt_reg_n_0_[4] ));
  LUT4 #(
    .INIT(16'h7F80)) 
    i__carry__0_i_1
       (.I0(\d_cnt_reg_n_0_[2] ),
        .I1(\d_cnt_reg_n_0_[0] ),
        .I2(\d_cnt_reg_n_0_[1] ),
        .I3(\d_cnt_reg_n_0_[3] ),
        .O(i__carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h78)) 
    i__carry__0_i_2
       (.I0(\d_cnt_reg_n_0_[1] ),
        .I1(\d_cnt_reg_n_0_[0] ),
        .I2(\d_cnt_reg_n_0_[2] ),
        .O(i__carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    i__carry__0_i_3
       (.I0(\d_cnt_reg_n_0_[3] ),
        .I1(\d_cnt_reg_n_0_[0] ),
        .I2(\d_cnt_reg_n_0_[1] ),
        .I3(\d_cnt_reg_n_0_[2] ),
        .I4(\d_cnt_reg_n_0_[4] ),
        .O(i__carry__0_i_3_n_0));
  LUT5 #(
    .INIT(32'h95555555)) 
    i__carry__0_i_4
       (.I0(\d_cnt_reg_n_0_[4] ),
        .I1(\d_cnt_reg_n_0_[2] ),
        .I2(\d_cnt_reg_n_0_[0] ),
        .I3(\d_cnt_reg_n_0_[1] ),
        .I4(\d_cnt_reg_n_0_[3] ),
        .O(i__carry__0_i_4_n_0));
  LUT5 #(
    .INIT(32'h40003FFF)) 
    i__carry__0_i_5
       (.I0(\d_cnt_reg_n_0_[4] ),
        .I1(\d_cnt_reg_n_0_[2] ),
        .I2(\d_cnt_reg_n_0_[1] ),
        .I3(\d_cnt_reg_n_0_[0] ),
        .I4(\d_cnt_reg_n_0_[3] ),
        .O(i__carry__0_i_5_n_0));
  LUT5 #(
    .INIT(32'hA9996999)) 
    i__carry__0_i_6
       (.I0(\d_cnt_reg_n_0_[4] ),
        .I1(\d_cnt_reg_n_0_[2] ),
        .I2(\d_cnt_reg_n_0_[0] ),
        .I3(\d_cnt_reg_n_0_[1] ),
        .I4(\d_cnt_reg_n_0_[3] ),
        .O(i__carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_1
       (.I0(\d_cnt_reg_n_0_[0] ),
        .I1(\d_cnt_reg_n_0_[1] ),
        .O(d_cnt1[1]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2
       (.I0(\d_cnt_reg_n_0_[0] ),
        .O(i__carry_i_2_n_0));
  LUT4 #(
    .INIT(16'hA969)) 
    i__carry_i_3
       (.I0(\d_cnt_reg_n_0_[3] ),
        .I1(\d_cnt_reg_n_0_[1] ),
        .I2(\d_cnt_reg_n_0_[0] ),
        .I3(\d_cnt_reg_n_0_[2] ),
        .O(i__carry_i_3_n_0));
  LUT3 #(
    .INIT(8'hA6)) 
    i__carry_i_4
       (.I0(\d_cnt_reg_n_0_[2] ),
        .I1(\d_cnt_reg_n_0_[0] ),
        .I2(\d_cnt_reg_n_0_[1] ),
        .O(i__carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_5
       (.I0(\d_cnt_reg_n_0_[1] ),
        .I1(\d_cnt_reg_n_0_[0] ),
        .O(i__carry_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_6
       (.I0(\d_cnt_reg_n_0_[0] ),
        .O(i__carry_i_6_n_0));
  LUT5 #(
    .INIT(32'h00305575)) 
    mosi_i_1
       (.I0(st[0]),
        .I1(t_cnt[2]),
        .I2(t_cnt[0]),
        .I3(t_cnt[1]),
        .I4(st[1]),
        .O(mosi_i_1_n_0));
  LUT3 #(
    .INIT(8'hC8)) 
    mosi_i_2
       (.I0(st[0]),
        .I1(mosi_i_3_n_0),
        .I2(st[1]),
        .O(mosi_i_2_n_0));
  LUT6 #(
    .INIT(64'hA0AFA0A0C0C0C0C0)) 
    mosi_i_3
       (.I0(mosi_i_4_n_0),
        .I1(mosi_i_5_n_0),
        .I2(\d_cnt_reg_n_0_[3] ),
        .I3(\d_cnt_reg_n_0_[0] ),
        .I4(data10),
        .I5(\d_cnt_reg_n_0_[2] ),
        .O(mosi_i_3_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_i_4
       (.I0(\cmd_reg_n_0_[0] ),
        .I1(data2),
        .I2(\d_cnt_reg_n_0_[1] ),
        .I3(data3),
        .I4(\d_cnt_reg_n_0_[0] ),
        .I5(data4),
        .O(mosi_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_i_5
       (.I0(data5),
        .I1(data6),
        .I2(\d_cnt_reg_n_0_[1] ),
        .I3(data7),
        .I4(\d_cnt_reg_n_0_[0] ),
        .I5(data8),
        .O(mosi_i_5_n_0));
  FDCE #(
    .INIT(1'b0)) 
    mosi_reg
       (.C(clk_IBUF_BUFG),
        .CE(mosi_i_1_n_0),
        .CLR(AR),
        .D(mosi_i_2_n_0),
        .Q(mosi_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h002AC0C0)) 
    sclk_i_1
       (.I0(st[1]),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(st[0]),
        .I4(sclk_OBUF),
        .O(sclk_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    \sclk_negedge_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(sclk_OBUF),
        .Q(sclk_negedge[0]));
  FDCE #(
    .INIT(1'b0)) 
    \sclk_negedge_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(sclk_negedge[0]),
        .Q(sclk_negedge[1]));
  FDCE #(
    .INIT(1'b0)) 
    sclk_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(sclk_i_1_n_0),
        .Q(sclk_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h1)) 
    sync_OBUF_inst_i_1
       (.I0(st[1]),
        .I1(st[0]),
        .O(D));
  LUT6 #(
    .INIT(64'h000000004141E1E3)) 
    \t_cnt[0]_i_1 
       (.I0(st[1]),
        .I1(t_cnt[2]),
        .I2(t_cnt[0]),
        .I3(t_cnt[1]),
        .I4(sclk_OBUF),
        .I5(st[0]),
        .O(\t_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000004510EF10)) 
    \t_cnt[1]_i_1 
       (.I0(st[1]),
        .I1(t_cnt[2]),
        .I2(t_cnt[0]),
        .I3(t_cnt[1]),
        .I4(sclk_OBUF),
        .I5(st[0]),
        .O(\t_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010009888)) 
    \t_cnt[2]_i_1 
       (.I0(st[1]),
        .I1(t_cnt[2]),
        .I2(t_cnt[0]),
        .I3(t_cnt[1]),
        .I4(sclk_OBUF),
        .I5(st[0]),
        .O(\t_cnt[2]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \t_cnt_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\t_cnt[0]_i_1_n_0 ),
        .Q(t_cnt[0]));
  FDCE #(
    .INIT(1'b0)) 
    \t_cnt_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\t_cnt[1]_i_1_n_0 ),
        .Q(t_cnt[1]));
  FDCE #(
    .INIT(1'b0)) 
    \t_cnt_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\t_cnt[2]_i_1_n_0 ),
        .Q(t_cnt[2]));
endmodule

module generator
   (enable,
    \addr_reg[9]_0 ,
    clk_IBUF_BUFG,
    AR,
    D);
  output enable;
  output [7:0]\addr_reg[9]_0 ;
  input clk_IBUF_BUFG;
  input [0:0]AR;
  input [0:0]D;

  wire [0:0]AR;
  wire [0:0]D;
  wire [9:0]addr;
  wire \addr[0]_i_1_n_0 ;
  wire \addr[1]_i_1_n_0 ;
  wire \addr[2]_i_1_n_0 ;
  wire \addr[3]_i_1_n_0 ;
  wire \addr[4]_i_1_n_0 ;
  wire \addr[5]_i_2_n_0 ;
  wire \addr[5]_i_3_n_0 ;
  wire \addr[6]_i_1_n_0 ;
  wire \addr[6]_i_2_n_0 ;
  wire \addr[7]_i_1_n_0 ;
  wire \addr[8]_i_1_n_0 ;
  wire \addr[9]_i_1_n_0 ;
  wire addr_0;
  wire [7:0]\addr_reg[9]_0 ;
  wire clk_IBUF_BUFG;
  wire [8:0]cnt;
  wire cnt0__1_carry__0_i_1_n_0;
  wire cnt0__1_carry__0_i_2_n_0;
  wire cnt0__1_carry__0_i_3_n_0;
  wire cnt0__1_carry__0_i_4_n_0;
  wire cnt0__1_carry__0_i_5_n_0;
  wire cnt0__1_carry__0_i_6_n_0;
  wire cnt0__1_carry__0_i_7_n_0;
  wire cnt0__1_carry__0_i_8_n_0;
  wire cnt0__1_carry__0_n_0;
  wire cnt0__1_carry__0_n_1;
  wire cnt0__1_carry__0_n_2;
  wire cnt0__1_carry__0_n_3;
  wire cnt0__1_carry__1_i_1_n_0;
  wire cnt0__1_carry__1_i_2_n_0;
  wire cnt0__1_carry__1_i_3_n_0;
  wire cnt0__1_carry__1_i_4_n_0;
  wire cnt0__1_carry__1_i_5_n_0;
  wire cnt0__1_carry__1_i_6_n_0;
  wire cnt0__1_carry__1_i_7_n_0;
  wire cnt0__1_carry__1_i_8_n_0;
  wire cnt0__1_carry__1_i_9_n_0;
  wire cnt0__1_carry__1_n_0;
  wire cnt0__1_carry__1_n_1;
  wire cnt0__1_carry__1_n_2;
  wire cnt0__1_carry__1_n_3;
  wire cnt0__1_carry__2_i_1_n_0;
  wire cnt0__1_carry__2_i_2_n_0;
  wire cnt0__1_carry__2_i_3_n_0;
  wire cnt0__1_carry__2_i_4_n_0;
  wire cnt0__1_carry__2_i_5_n_0;
  wire cnt0__1_carry__2_i_6_n_0;
  wire cnt0__1_carry__2_i_7_n_0;
  wire cnt0__1_carry__2_i_8_n_0;
  wire cnt0__1_carry__2_n_0;
  wire cnt0__1_carry__2_n_1;
  wire cnt0__1_carry__2_n_2;
  wire cnt0__1_carry__2_n_3;
  wire cnt0__1_carry__3_i_2_n_0;
  wire cnt0__1_carry__3_i_3_n_0;
  wire cnt0__1_carry__3_i_4_n_0;
  wire cnt0__1_carry__3_i_5_n_0;
  wire cnt0__1_carry__3_i_6_n_0;
  wire cnt0__1_carry__3_n_0;
  wire cnt0__1_carry__3_n_2;
  wire cnt0__1_carry__3_n_3;
  wire cnt0__1_carry__3_n_5;
  wire cnt0__1_carry__3_n_6;
  wire cnt0__1_carry__3_n_7;
  wire cnt0__1_carry_i_1_n_0;
  wire cnt0__1_carry_i_2_n_0;
  wire cnt0__1_carry_i_3_n_0;
  wire cnt0__1_carry_i_4_n_0;
  wire cnt0__1_carry_i_5_n_0;
  wire cnt0__1_carry_i_6_n_0;
  wire cnt0__1_carry_i_7_n_0;
  wire cnt0__1_carry_n_0;
  wire cnt0__1_carry_n_1;
  wire cnt0__1_carry_n_2;
  wire cnt0__1_carry_n_3;
  wire cnt0__40_carry__0_i_1_n_0;
  wire cnt0__40_carry__0_i_2_n_0;
  wire cnt0__40_carry__0_n_3;
  wire cnt0__40_carry__0_n_6;
  wire cnt0__40_carry__0_n_7;
  wire cnt0__40_carry_i_1_n_0;
  wire cnt0__40_carry_i_2_n_0;
  wire cnt0__40_carry_i_3_n_0;
  wire cnt0__40_carry_i_4_n_0;
  wire cnt0__40_carry_i_5_n_0;
  wire cnt0__40_carry_i_6_n_0;
  wire cnt0__40_carry_i_7_n_0;
  wire cnt0__40_carry_n_0;
  wire cnt0__40_carry_n_1;
  wire cnt0__40_carry_n_2;
  wire cnt0__40_carry_n_3;
  wire cnt0__40_carry_n_4;
  wire cnt0__40_carry_n_5;
  wire cnt0__40_carry_n_6;
  wire cnt0__40_carry_n_7;
  wire cnt0__56_carry_i_1_n_0;
  wire cnt0__56_carry_i_2_n_0;
  wire cnt0__56_carry_i_3_n_0;
  wire cnt0__56_carry_i_4_n_0;
  wire cnt0__56_carry_i_5_n_0;
  wire cnt0__56_carry_i_6_n_0;
  wire cnt0__56_carry_n_1;
  wire cnt0__56_carry_n_2;
  wire cnt0__56_carry_n_3;
  wire cnt0__56_carry_n_4;
  wire cnt0__56_carry_n_5;
  wire cnt0__56_carry_n_6;
  wire cnt0__56_carry_n_7;
  wire cnt0__65_carry__0_i_1_n_0;
  wire cnt0__65_carry__0_i_1_n_1;
  wire cnt0__65_carry__0_i_1_n_2;
  wire cnt0__65_carry__0_i_1_n_3;
  wire cnt0__65_carry__0_i_2_n_0;
  wire cnt0__65_carry__0_i_3_n_0;
  wire cnt0__65_carry__0_i_4_n_0;
  wire cnt0__65_carry__0_i_5_n_0;
  wire cnt0__65_carry__0_n_0;
  wire cnt0__65_carry__0_n_1;
  wire cnt0__65_carry__0_n_2;
  wire cnt0__65_carry__0_n_3;
  wire cnt0__65_carry__0_n_4;
  wire cnt0__65_carry__0_n_5;
  wire cnt0__65_carry__0_n_6;
  wire cnt0__65_carry__0_n_7;
  wire cnt0__65_carry__1_i_1_n_0;
  wire cnt0__65_carry__1_i_2_n_0;
  wire cnt0__65_carry__1_n_3;
  wire cnt0__65_carry__1_n_6;
  wire cnt0__65_carry__1_n_7;
  wire cnt0__65_carry_i_1_n_0;
  wire cnt0__65_carry_i_1_n_1;
  wire cnt0__65_carry_i_1_n_2;
  wire cnt0__65_carry_i_1_n_3;
  wire cnt0__65_carry_i_2_n_0;
  wire cnt0__65_carry_i_3_n_0;
  wire cnt0__65_carry_i_4_n_0;
  wire cnt0__65_carry_i_5_n_0;
  wire cnt0__65_carry_n_0;
  wire cnt0__65_carry_n_1;
  wire cnt0__65_carry_n_2;
  wire cnt0__65_carry_n_3;
  wire cnt0__65_carry_n_4;
  wire cnt0__65_carry_n_5;
  wire [9:1]cnt1;
  wire \cnt[5]_i_2_n_0 ;
  wire \cnt[8]_i_2_n_0 ;
  wire \data[0]_i_14_n_0 ;
  wire \data[0]_i_15_n_0 ;
  wire \data[0]_i_16_n_0 ;
  wire \data[0]_i_17_n_0 ;
  wire \data[0]_i_18_n_0 ;
  wire \data[0]_i_19_n_0 ;
  wire \data[0]_i_20_n_0 ;
  wire \data[0]_i_21_n_0 ;
  wire \data[0]_i_22_n_0 ;
  wire \data[0]_i_23_n_0 ;
  wire \data[0]_i_24_n_0 ;
  wire \data[0]_i_25_n_0 ;
  wire \data[0]_i_26_n_0 ;
  wire \data[0]_i_27_n_0 ;
  wire \data[0]_i_28_n_0 ;
  wire \data[0]_i_29_n_0 ;
  wire \data[1]_i_14_n_0 ;
  wire \data[1]_i_15_n_0 ;
  wire \data[1]_i_16_n_0 ;
  wire \data[1]_i_17_n_0 ;
  wire \data[1]_i_18_n_0 ;
  wire \data[1]_i_19_n_0 ;
  wire \data[1]_i_20_n_0 ;
  wire \data[1]_i_21_n_0 ;
  wire \data[1]_i_22_n_0 ;
  wire \data[1]_i_23_n_0 ;
  wire \data[1]_i_24_n_0 ;
  wire \data[1]_i_25_n_0 ;
  wire \data[1]_i_26_n_0 ;
  wire \data[1]_i_27_n_0 ;
  wire \data[1]_i_28_n_0 ;
  wire \data[1]_i_29_n_0 ;
  wire \data[2]_i_10_n_0 ;
  wire \data[2]_i_12_n_0 ;
  wire \data[2]_i_13_n_0 ;
  wire \data[2]_i_14_n_0 ;
  wire \data[2]_i_15_n_0 ;
  wire \data[2]_i_16_n_0 ;
  wire \data[2]_i_17_n_0 ;
  wire \data[2]_i_18_n_0 ;
  wire \data[2]_i_19_n_0 ;
  wire \data[2]_i_20_n_0 ;
  wire \data[2]_i_21_n_0 ;
  wire \data[2]_i_22_n_0 ;
  wire \data[2]_i_23_n_0 ;
  wire \data[2]_i_2_n_0 ;
  wire \data[2]_i_3_n_0 ;
  wire \data[2]_i_5_n_0 ;
  wire \data[3]_i_12_n_0 ;
  wire \data[3]_i_13_n_0 ;
  wire \data[3]_i_14_n_0 ;
  wire \data[3]_i_15_n_0 ;
  wire \data[3]_i_16_n_0 ;
  wire \data[3]_i_17_n_0 ;
  wire \data[3]_i_18_n_0 ;
  wire \data[3]_i_19_n_0 ;
  wire \data[3]_i_20_n_0 ;
  wire \data[3]_i_21_n_0 ;
  wire \data[3]_i_22_n_0 ;
  wire \data[3]_i_23_n_0 ;
  wire \data[3]_i_3_n_0 ;
  wire \data[3]_i_4_n_0 ;
  wire \data[4]_i_10_n_0 ;
  wire \data[4]_i_11_n_0 ;
  wire \data[4]_i_12_n_0 ;
  wire \data[4]_i_13_n_0 ;
  wire \data[4]_i_14_n_0 ;
  wire \data[4]_i_15_n_0 ;
  wire \data[4]_i_16_n_0 ;
  wire \data[4]_i_17_n_0 ;
  wire \data[4]_i_18_n_0 ;
  wire \data[4]_i_19_n_0 ;
  wire \data[4]_i_20_n_0 ;
  wire \data[4]_i_21_n_0 ;
  wire \data[4]_i_2_n_0 ;
  wire \data[4]_i_3_n_0 ;
  wire \data[4]_i_4_n_0 ;
  wire \data[4]_i_5_n_0 ;
  wire \data[4]_i_8_n_0 ;
  wire \data[4]_i_9_n_0 ;
  wire \data[5]_i_10_n_0 ;
  wire \data[5]_i_11_n_0 ;
  wire \data[5]_i_12_n_0 ;
  wire \data[5]_i_13_n_0 ;
  wire \data[5]_i_2_n_0 ;
  wire \data[5]_i_3_n_0 ;
  wire \data[5]_i_4_n_0 ;
  wire \data[5]_i_5_n_0 ;
  wire \data[5]_i_6_n_0 ;
  wire \data[5]_i_7_n_0 ;
  wire \data[5]_i_8_n_0 ;
  wire \data[5]_i_9_n_0 ;
  wire \data[6]_i_2_n_0 ;
  wire \data[6]_i_3_n_0 ;
  wire \data_reg[0]_i_10_n_0 ;
  wire \data_reg[0]_i_11_n_0 ;
  wire \data_reg[0]_i_12_n_0 ;
  wire \data_reg[0]_i_13_n_0 ;
  wire \data_reg[0]_i_2_n_0 ;
  wire \data_reg[0]_i_3_n_0 ;
  wire \data_reg[0]_i_4_n_0 ;
  wire \data_reg[0]_i_5_n_0 ;
  wire \data_reg[0]_i_6_n_0 ;
  wire \data_reg[0]_i_7_n_0 ;
  wire \data_reg[0]_i_8_n_0 ;
  wire \data_reg[0]_i_9_n_0 ;
  wire \data_reg[1]_i_10_n_0 ;
  wire \data_reg[1]_i_11_n_0 ;
  wire \data_reg[1]_i_12_n_0 ;
  wire \data_reg[1]_i_13_n_0 ;
  wire \data_reg[1]_i_2_n_0 ;
  wire \data_reg[1]_i_3_n_0 ;
  wire \data_reg[1]_i_4_n_0 ;
  wire \data_reg[1]_i_5_n_0 ;
  wire \data_reg[1]_i_6_n_0 ;
  wire \data_reg[1]_i_7_n_0 ;
  wire \data_reg[1]_i_8_n_0 ;
  wire \data_reg[1]_i_9_n_0 ;
  wire \data_reg[2]_i_11_n_0 ;
  wire \data_reg[2]_i_4_n_0 ;
  wire \data_reg[2]_i_6_n_0 ;
  wire \data_reg[2]_i_7_n_0 ;
  wire \data_reg[2]_i_8_n_0 ;
  wire \data_reg[2]_i_9_n_0 ;
  wire \data_reg[3]_i_10_n_0 ;
  wire \data_reg[3]_i_11_n_0 ;
  wire \data_reg[3]_i_2_n_0 ;
  wire \data_reg[3]_i_5_n_0 ;
  wire \data_reg[3]_i_6_n_0 ;
  wire \data_reg[3]_i_7_n_0 ;
  wire \data_reg[3]_i_8_n_0 ;
  wire \data_reg[3]_i_9_n_0 ;
  wire \data_reg[4]_i_6_n_0 ;
  wire \data_reg[4]_i_7_n_0 ;
  wire enable;
  wire [8:0]p_0_in;
  wire [1:0]sc_edge;
  wire send_i_1_n_0;
  wire [3:0]NLW_cnt0__1_carry_O_UNCONNECTED;
  wire [3:0]NLW_cnt0__1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_cnt0__1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_cnt0__1_carry__2_O_UNCONNECTED;
  wire [2:2]NLW_cnt0__1_carry__3_CO_UNCONNECTED;
  wire [3:3]NLW_cnt0__1_carry__3_O_UNCONNECTED;
  wire [3:1]NLW_cnt0__1_carry__3_i_1_CO_UNCONNECTED;
  wire [3:0]NLW_cnt0__1_carry__3_i_1_O_UNCONNECTED;
  wire [3:1]NLW_cnt0__40_carry__0_CO_UNCONNECTED;
  wire [3:2]NLW_cnt0__40_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_cnt0__56_carry_CO_UNCONNECTED;
  wire [3:1]NLW_cnt0__65_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_cnt0__65_carry__1_O_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    \addr[0]_i_1 
       (.I0(addr[0]),
        .O(\addr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \addr[1]_i_1 
       (.I0(addr[0]),
        .I1(addr[1]),
        .O(\addr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \addr[2]_i_1 
       (.I0(addr[0]),
        .I1(addr[1]),
        .I2(addr[2]),
        .O(\addr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \addr[3]_i_1 
       (.I0(addr[2]),
        .I1(addr[1]),
        .I2(addr[0]),
        .I3(addr[3]),
        .O(\addr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \addr[4]_i_1 
       (.I0(addr[3]),
        .I1(addr[0]),
        .I2(addr[1]),
        .I3(addr[2]),
        .I4(addr[4]),
        .O(\addr[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \addr[5]_i_1 
       (.I0(\addr[5]_i_3_n_0 ),
        .I1(cnt[0]),
        .I2(cnt[1]),
        .I3(cnt[2]),
        .O(addr_0));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \addr[5]_i_2 
       (.I0(addr[2]),
        .I1(addr[1]),
        .I2(addr[0]),
        .I3(addr[3]),
        .I4(addr[4]),
        .I5(addr[5]),
        .O(\addr[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \addr[5]_i_3 
       (.I0(cnt[4]),
        .I1(cnt[3]),
        .I2(cnt[5]),
        .I3(cnt[6]),
        .I4(cnt[8]),
        .I5(cnt[7]),
        .O(\addr[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \addr[6]_i_1 
       (.I0(\addr[6]_i_2_n_0 ),
        .I1(addr[6]),
        .O(\addr[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \addr[6]_i_2 
       (.I0(addr[5]),
        .I1(addr[2]),
        .I2(addr[1]),
        .I3(addr[0]),
        .I4(addr[3]),
        .I5(addr[4]),
        .O(\addr[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \addr[7]_i_1 
       (.I0(addr[6]),
        .I1(\addr[6]_i_2_n_0 ),
        .I2(addr[7]),
        .O(\addr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \addr[8]_i_1 
       (.I0(addr[7]),
        .I1(\addr[6]_i_2_n_0 ),
        .I2(addr[6]),
        .I3(addr[8]),
        .O(\addr[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \addr[9]_i_1 
       (.I0(addr[8]),
        .I1(addr[6]),
        .I2(\addr[6]_i_2_n_0 ),
        .I3(addr[7]),
        .I4(addr[9]),
        .O(\addr[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(addr_0),
        .CLR(AR),
        .D(\addr[0]_i_1_n_0 ),
        .Q(addr[0]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(addr_0),
        .CLR(AR),
        .D(\addr[1]_i_1_n_0 ),
        .Q(addr[1]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(addr_0),
        .CLR(AR),
        .D(\addr[2]_i_1_n_0 ),
        .Q(addr[2]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(addr_0),
        .CLR(AR),
        .D(\addr[3]_i_1_n_0 ),
        .Q(addr[3]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(addr_0),
        .CLR(AR),
        .D(\addr[4]_i_1_n_0 ),
        .Q(addr[4]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(addr_0),
        .CLR(AR),
        .D(\addr[5]_i_2_n_0 ),
        .Q(addr[5]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(addr_0),
        .CLR(AR),
        .D(\addr[6]_i_1_n_0 ),
        .Q(addr[6]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(addr_0),
        .CLR(AR),
        .D(\addr[7]_i_1_n_0 ),
        .Q(addr[7]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(addr_0),
        .CLR(AR),
        .D(\addr[8]_i_1_n_0 ),
        .Q(addr[8]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(addr_0),
        .CLR(AR),
        .D(\addr[9]_i_1_n_0 ),
        .Q(addr[9]));
  CARRY4 cnt0__1_carry
       (.CI(1'b0),
        .CO({cnt0__1_carry_n_0,cnt0__1_carry_n_1,cnt0__1_carry_n_2,cnt0__1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({cnt0__1_carry_i_1_n_0,cnt0__1_carry_i_2_n_0,cnt0__1_carry_i_3_n_0,1'b0}),
        .O(NLW_cnt0__1_carry_O_UNCONNECTED[3:0]),
        .S({cnt0__1_carry_i_4_n_0,cnt0__1_carry_i_5_n_0,cnt0__1_carry_i_6_n_0,cnt0__1_carry_i_7_n_0}));
  CARRY4 cnt0__1_carry__0
       (.CI(cnt0__1_carry_n_0),
        .CO({cnt0__1_carry__0_n_0,cnt0__1_carry__0_n_1,cnt0__1_carry__0_n_2,cnt0__1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({cnt0__1_carry__0_i_1_n_0,cnt0__1_carry__0_i_2_n_0,cnt0__1_carry__0_i_3_n_0,cnt0__1_carry__0_i_4_n_0}),
        .O(NLW_cnt0__1_carry__0_O_UNCONNECTED[3:0]),
        .S({cnt0__1_carry__0_i_5_n_0,cnt0__1_carry__0_i_6_n_0,cnt0__1_carry__0_i_7_n_0,cnt0__1_carry__0_i_8_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    cnt0__1_carry__0_i_1
       (.I0(cnt[0]),
        .I1(cnt1[5]),
        .I2(cnt1[7]),
        .O(cnt0__1_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    cnt0__1_carry__0_i_2
       (.I0(cnt1[5]),
        .I1(cnt1[9]),
        .I2(cnt1[3]),
        .O(cnt0__1_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    cnt0__1_carry__0_i_3
       (.I0(cnt1[4]),
        .I1(cnt1[8]),
        .I2(cnt1[2]),
        .O(cnt0__1_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    cnt0__1_carry__0_i_4
       (.I0(cnt1[3]),
        .I1(cnt1[7]),
        .I2(cnt1[1]),
        .O(cnt0__1_carry__0_i_4_n_0));
  LUT5 #(
    .INIT(32'h96699696)) 
    cnt0__1_carry__0_i_5
       (.I0(cnt1[7]),
        .I1(cnt1[5]),
        .I2(cnt[0]),
        .I3(cnt1[6]),
        .I4(cnt1[4]),
        .O(cnt0__1_carry__0_i_5_n_0));
  LUT5 #(
    .INIT(32'h718E8E71)) 
    cnt0__1_carry__0_i_6
       (.I0(cnt1[3]),
        .I1(cnt1[9]),
        .I2(cnt1[5]),
        .I3(cnt1[6]),
        .I4(cnt1[4]),
        .O(cnt0__1_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    cnt0__1_carry__0_i_7
       (.I0(cnt1[2]),
        .I1(cnt1[8]),
        .I2(cnt1[4]),
        .I3(cnt1[9]),
        .I4(cnt1[3]),
        .I5(cnt1[5]),
        .O(cnt0__1_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    cnt0__1_carry__0_i_8
       (.I0(cnt1[1]),
        .I1(cnt1[7]),
        .I2(cnt1[3]),
        .I3(cnt1[8]),
        .I4(cnt1[2]),
        .I5(cnt1[4]),
        .O(cnt0__1_carry__0_i_8_n_0));
  CARRY4 cnt0__1_carry__1
       (.CI(cnt0__1_carry__0_n_0),
        .CO({cnt0__1_carry__1_n_0,cnt0__1_carry__1_n_1,cnt0__1_carry__1_n_2,cnt0__1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({cnt0__1_carry__1_i_1_n_0,cnt0__1_carry__1_i_2_n_0,cnt0__1_carry__1_i_3_n_0,cnt0__1_carry__1_i_4_n_0}),
        .O(NLW_cnt0__1_carry__1_O_UNCONNECTED[3:0]),
        .S({cnt0__1_carry__1_i_5_n_0,cnt0__1_carry__1_i_6_n_0,cnt0__1_carry__1_i_7_n_0,cnt0__1_carry__1_i_8_n_0}));
  LUT5 #(
    .INIT(32'h90990090)) 
    cnt0__1_carry__1_i_1
       (.I0(cnt1[3]),
        .I1(cnt1[8]),
        .I2(cnt1[2]),
        .I3(cnt1[9]),
        .I4(cnt1[7]),
        .O(cnt0__1_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h008E8E008E00008E)) 
    cnt0__1_carry__1_i_2
       (.I0(cnt1[6]),
        .I1(cnt1[1]),
        .I2(cnt1[8]),
        .I3(cnt1[9]),
        .I4(cnt1[7]),
        .I5(cnt1[2]),
        .O(cnt0__1_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000690069006969)) 
    cnt0__1_carry__1_i_3
       (.I0(cnt1[8]),
        .I1(cnt1[6]),
        .I2(cnt1[1]),
        .I3(cnt1[5]),
        .I4(cnt1[7]),
        .I5(cnt[0]),
        .O(cnt0__1_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h2BD4D42BD42B2BD4)) 
    cnt0__1_carry__1_i_4
       (.I0(cnt1[5]),
        .I1(cnt1[7]),
        .I2(cnt[0]),
        .I3(cnt1[8]),
        .I4(cnt1[6]),
        .I5(cnt1[1]),
        .O(cnt0__1_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'h817E0FF00FF07E81)) 
    cnt0__1_carry__1_i_5
       (.I0(cnt1[7]),
        .I1(cnt1[2]),
        .I2(cnt1[9]),
        .I3(cnt1[4]),
        .I4(cnt1[8]),
        .I5(cnt1[3]),
        .O(cnt0__1_carry__1_i_5_n_0));
  LUT6 #(
    .INIT(64'h9A5965A665A69A59)) 
    cnt0__1_carry__1_i_6
       (.I0(cnt0__1_carry__1_i_2_n_0),
        .I1(cnt1[7]),
        .I2(cnt1[9]),
        .I3(cnt1[2]),
        .I4(cnt1[8]),
        .I5(cnt1[3]),
        .O(cnt0__1_carry__1_i_6_n_0));
  LUT5 #(
    .INIT(32'hA665599A)) 
    cnt0__1_carry__1_i_7
       (.I0(cnt0__1_carry__1_i_3_n_0),
        .I1(cnt1[8]),
        .I2(cnt1[6]),
        .I3(cnt1[1]),
        .I4(cnt0__1_carry__1_i_9_n_0),
        .O(cnt0__1_carry__1_i_7_n_0));
  LUT6 #(
    .INIT(64'h2BD4D42BD42B2BD4)) 
    cnt0__1_carry__1_i_8
       (.I0(cnt1[5]),
        .I1(cnt1[7]),
        .I2(cnt[0]),
        .I3(cnt1[8]),
        .I4(cnt1[6]),
        .I5(cnt1[1]),
        .O(cnt0__1_carry__1_i_8_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    cnt0__1_carry__1_i_9
       (.I0(cnt1[2]),
        .I1(cnt1[7]),
        .I2(cnt1[9]),
        .O(cnt0__1_carry__1_i_9_n_0));
  CARRY4 cnt0__1_carry__2
       (.CI(cnt0__1_carry__1_n_0),
        .CO({cnt0__1_carry__2_n_0,cnt0__1_carry__2_n_1,cnt0__1_carry__2_n_2,cnt0__1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({cnt0__1_carry__2_i_1_n_0,cnt0__1_carry__2_i_2_n_0,cnt0__1_carry__2_i_3_n_0,cnt0__1_carry__2_i_4_n_0}),
        .O(NLW_cnt0__1_carry__2_O_UNCONNECTED[3:0]),
        .S({cnt0__1_carry__2_i_5_n_0,cnt0__1_carry__2_i_6_n_0,cnt0__1_carry__2_i_7_n_0,cnt0__1_carry__2_i_8_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    cnt0__1_carry__2_i_1
       (.I0(cnt1[6]),
        .I1(cnt1[7]),
        .O(cnt0__1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    cnt0__1_carry__2_i_2
       (.I0(cnt1[5]),
        .I1(cnt1[6]),
        .O(cnt0__1_carry__2_i_2_n_0));
  LUT3 #(
    .INIT(8'h0E)) 
    cnt0__1_carry__2_i_3
       (.I0(cnt1[4]),
        .I1(cnt1[9]),
        .I2(cnt1[5]),
        .O(cnt0__1_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    cnt0__1_carry__2_i_4
       (.I0(cnt1[3]),
        .I1(cnt1[8]),
        .I2(cnt1[4]),
        .I3(cnt1[9]),
        .O(cnt0__1_carry__2_i_4_n_0));
  LUT3 #(
    .INIT(8'hC9)) 
    cnt0__1_carry__2_i_5
       (.I0(cnt1[6]),
        .I1(cnt1[8]),
        .I2(cnt1[7]),
        .O(cnt0__1_carry__2_i_5_n_0));
  LUT3 #(
    .INIT(8'hC9)) 
    cnt0__1_carry__2_i_6
       (.I0(cnt1[5]),
        .I1(cnt1[7]),
        .I2(cnt1[6]),
        .O(cnt0__1_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'hF0E1)) 
    cnt0__1_carry__2_i_7
       (.I0(cnt1[9]),
        .I1(cnt1[4]),
        .I2(cnt1[6]),
        .I3(cnt1[5]),
        .O(cnt0__1_carry__2_i_7_n_0));
  LUT5 #(
    .INIT(32'h1EF0F0E1)) 
    cnt0__1_carry__2_i_8
       (.I0(cnt1[8]),
        .I1(cnt1[3]),
        .I2(cnt1[5]),
        .I3(cnt1[9]),
        .I4(cnt1[4]),
        .O(cnt0__1_carry__2_i_8_n_0));
  CARRY4 cnt0__1_carry__3
       (.CI(cnt0__1_carry__2_n_0),
        .CO({cnt0__1_carry__3_n_0,NLW_cnt0__1_carry__3_CO_UNCONNECTED[2],cnt0__1_carry__3_n_2,cnt0__1_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,cnt1[9],cnt0__1_carry__3_i_2_n_0,cnt0__1_carry__3_i_3_n_0}),
        .O({NLW_cnt0__1_carry__3_O_UNCONNECTED[3],cnt0__1_carry__3_n_5,cnt0__1_carry__3_n_6,cnt0__1_carry__3_n_7}),
        .S({1'b1,cnt0__1_carry__3_i_4_n_0,cnt0__1_carry__3_i_5_n_0,cnt0__1_carry__3_i_6_n_0}));
  CARRY4 cnt0__1_carry__3_i_1
       (.CI(cnt0__65_carry__0_i_1_n_0),
        .CO({NLW_cnt0__1_carry__3_i_1_CO_UNCONNECTED[3:1],cnt1[9]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_cnt0__1_carry__3_i_1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h2)) 
    cnt0__1_carry__3_i_2
       (.I0(cnt1[8]),
        .I1(cnt1[9]),
        .O(cnt0__1_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    cnt0__1_carry__3_i_3
       (.I0(cnt1[7]),
        .I1(cnt1[8]),
        .O(cnt0__1_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt0__1_carry__3_i_4
       (.I0(cnt1[9]),
        .O(cnt0__1_carry__3_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cnt0__1_carry__3_i_5
       (.I0(cnt1[8]),
        .I1(cnt1[9]),
        .O(cnt0__1_carry__3_i_5_n_0));
  LUT3 #(
    .INIT(8'hC9)) 
    cnt0__1_carry__3_i_6
       (.I0(cnt1[7]),
        .I1(cnt1[9]),
        .I2(cnt1[8]),
        .O(cnt0__1_carry__3_i_6_n_0));
  LUT3 #(
    .INIT(8'h71)) 
    cnt0__1_carry_i_1
       (.I0(cnt1[2]),
        .I1(cnt[0]),
        .I2(cnt1[6]),
        .O(cnt0__1_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    cnt0__1_carry_i_2
       (.I0(cnt[0]),
        .I1(cnt1[2]),
        .I2(cnt1[6]),
        .O(cnt0__1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    cnt0__1_carry_i_3
       (.I0(cnt[0]),
        .I1(cnt1[4]),
        .O(cnt0__1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h2BD4D42BD42B2BD4)) 
    cnt0__1_carry_i_4
       (.I0(cnt1[6]),
        .I1(cnt[0]),
        .I2(cnt1[2]),
        .I3(cnt1[7]),
        .I4(cnt1[3]),
        .I5(cnt1[1]),
        .O(cnt0__1_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h96699696)) 
    cnt0__1_carry_i_5
       (.I0(cnt1[6]),
        .I1(cnt1[2]),
        .I2(cnt[0]),
        .I3(cnt1[1]),
        .I4(cnt1[5]),
        .O(cnt0__1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    cnt0__1_carry_i_6
       (.I0(cnt1[4]),
        .I1(cnt[0]),
        .I2(cnt1[1]),
        .I3(cnt1[5]),
        .O(cnt0__1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cnt0__1_carry_i_7
       (.I0(cnt1[4]),
        .I1(cnt[0]),
        .O(cnt0__1_carry_i_7_n_0));
  CARRY4 cnt0__40_carry
       (.CI(1'b0),
        .CO({cnt0__40_carry_n_0,cnt0__40_carry_n_1,cnt0__40_carry_n_2,cnt0__40_carry_n_3}),
        .CYINIT(1'b0),
        .DI({cnt0__40_carry_i_1_n_0,cnt0__40_carry_i_2_n_0,cnt0__40_carry_i_3_n_0,1'b0}),
        .O({cnt0__40_carry_n_4,cnt0__40_carry_n_5,cnt0__40_carry_n_6,cnt0__40_carry_n_7}),
        .S({cnt0__40_carry_i_4_n_0,cnt0__40_carry_i_5_n_0,cnt0__40_carry_i_6_n_0,cnt0__40_carry_i_7_n_0}));
  CARRY4 cnt0__40_carry__0
       (.CI(cnt0__40_carry_n_0),
        .CO({NLW_cnt0__40_carry__0_CO_UNCONNECTED[3:1],cnt0__40_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,cnt0__1_carry__3_n_6}),
        .O({NLW_cnt0__40_carry__0_O_UNCONNECTED[3:2],cnt0__40_carry__0_n_6,cnt0__40_carry__0_n_7}),
        .S({1'b0,1'b0,cnt0__40_carry__0_i_1_n_0,cnt0__40_carry__0_i_2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    cnt0__40_carry__0_i_1
       (.I0(cnt0__1_carry__3_n_0),
        .I1(cnt0__1_carry__3_n_5),
        .O(cnt0__40_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cnt0__40_carry__0_i_2
       (.I0(cnt0__1_carry__3_n_6),
        .I1(cnt0__1_carry__3_n_5),
        .O(cnt0__40_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h71)) 
    cnt0__40_carry_i_1
       (.I0(cnt0__1_carry__3_n_5),
        .I1(cnt0__1_carry__3_n_0),
        .I2(cnt0__1_carry__3_n_7),
        .O(cnt0__40_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    cnt0__40_carry_i_2
       (.I0(cnt0__1_carry__3_n_0),
        .I1(cnt0__1_carry__3_n_7),
        .I2(cnt0__1_carry__3_n_5),
        .O(cnt0__40_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    cnt0__40_carry_i_3
       (.I0(cnt0__1_carry__3_n_5),
        .I1(cnt0__1_carry__3_n_7),
        .O(cnt0__40_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2BD4)) 
    cnt0__40_carry_i_4
       (.I0(cnt0__1_carry__3_n_7),
        .I1(cnt0__1_carry__3_n_0),
        .I2(cnt0__1_carry__3_n_5),
        .I3(cnt0__1_carry__3_n_6),
        .O(cnt0__40_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9969)) 
    cnt0__40_carry_i_5
       (.I0(cnt0__1_carry__3_n_5),
        .I1(cnt0__1_carry__3_n_7),
        .I2(cnt0__1_carry__3_n_6),
        .I3(cnt0__1_carry__3_n_0),
        .O(cnt0__40_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    cnt0__40_carry_i_6
       (.I0(cnt0__1_carry__3_n_5),
        .I1(cnt0__1_carry__3_n_7),
        .I2(cnt0__1_carry__3_n_0),
        .I3(cnt0__1_carry__3_n_6),
        .O(cnt0__40_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    cnt0__40_carry_i_7
       (.I0(cnt0__1_carry__3_n_5),
        .I1(cnt0__1_carry__3_n_7),
        .O(cnt0__40_carry_i_7_n_0));
  CARRY4 cnt0__56_carry
       (.CI(1'b0),
        .CO({NLW_cnt0__56_carry_CO_UNCONNECTED[3],cnt0__56_carry_n_1,cnt0__56_carry_n_2,cnt0__56_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,cnt0__56_carry_i_1_n_0,cnt0__56_carry_i_2_n_0,1'b0}),
        .O({cnt0__56_carry_n_4,cnt0__56_carry_n_5,cnt0__56_carry_n_6,cnt0__56_carry_n_7}),
        .S({cnt0__56_carry_i_3_n_0,cnt0__56_carry_i_4_n_0,cnt0__56_carry_i_5_n_0,cnt0__56_carry_i_6_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    cnt0__56_carry_i_1
       (.I0(cnt0__40_carry_n_4),
        .I1(cnt0__1_carry__3_n_6),
        .O(cnt0__56_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    cnt0__56_carry_i_2
       (.I0(cnt0__40_carry_n_5),
        .I1(cnt0__1_carry__3_n_7),
        .O(cnt0__56_carry_i_2_n_0));
  LUT5 #(
    .INIT(32'hD22D2DD2)) 
    cnt0__56_carry_i_3
       (.I0(cnt0__40_carry__0_n_7),
        .I1(cnt0__1_carry__3_n_5),
        .I2(cnt0__40_carry__0_n_6),
        .I3(cnt0__1_carry__3_n_7),
        .I4(cnt0__1_carry__3_n_0),
        .O(cnt0__56_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    cnt0__56_carry_i_4
       (.I0(cnt0__1_carry__3_n_6),
        .I1(cnt0__40_carry_n_4),
        .I2(cnt0__40_carry__0_n_7),
        .I3(cnt0__1_carry__3_n_5),
        .O(cnt0__56_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    cnt0__56_carry_i_5
       (.I0(cnt0__1_carry__3_n_7),
        .I1(cnt0__40_carry_n_5),
        .I2(cnt0__40_carry_n_4),
        .I3(cnt0__1_carry__3_n_6),
        .O(cnt0__56_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    cnt0__56_carry_i_6
       (.I0(cnt0__1_carry__3_n_7),
        .I1(cnt0__40_carry_n_5),
        .O(cnt0__56_carry_i_6_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt0__65_carry
       (.CI(1'b0),
        .CO({cnt0__65_carry_n_0,cnt0__65_carry_n_1,cnt0__65_carry_n_2,cnt0__65_carry_n_3}),
        .CYINIT(1'b1),
        .DI({cnt1[3:1],cnt0__65_carry_i_2_n_0}),
        .O({cnt0__65_carry_n_4,cnt0__65_carry_n_5,p_0_in[1:0]}),
        .S({cnt0__65_carry_i_3_n_0,cnt0__65_carry_i_4_n_0,cnt0__65_carry_i_5_n_0,cnt[0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt0__65_carry__0
       (.CI(cnt0__65_carry_n_0),
        .CO({cnt0__65_carry__0_n_0,cnt0__65_carry__0_n_1,cnt0__65_carry__0_n_2,cnt0__65_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(cnt1[7:4]),
        .O({cnt0__65_carry__0_n_4,cnt0__65_carry__0_n_5,cnt0__65_carry__0_n_6,cnt0__65_carry__0_n_7}),
        .S({cnt0__65_carry__0_i_2_n_0,cnt0__65_carry__0_i_3_n_0,cnt0__65_carry__0_i_4_n_0,cnt0__65_carry__0_i_5_n_0}));
  CARRY4 cnt0__65_carry__0_i_1
       (.CI(cnt0__65_carry_i_1_n_0),
        .CO({cnt0__65_carry__0_i_1_n_0,cnt0__65_carry__0_i_1_n_1,cnt0__65_carry__0_i_1_n_2,cnt0__65_carry__0_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt1[8:5]),
        .S(cnt[8:5]));
  LUT2 #(
    .INIT(4'h9)) 
    cnt0__65_carry__0_i_2
       (.I0(cnt1[7]),
        .I1(cnt0__56_carry_n_6),
        .O(cnt0__65_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cnt0__65_carry__0_i_3
       (.I0(cnt1[6]),
        .I1(cnt0__56_carry_n_7),
        .O(cnt0__65_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cnt0__65_carry__0_i_4
       (.I0(cnt1[5]),
        .I1(cnt0__40_carry_n_6),
        .O(cnt0__65_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cnt0__65_carry__0_i_5
       (.I0(cnt1[4]),
        .I1(cnt0__40_carry_n_7),
        .O(cnt0__65_carry__0_i_5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt0__65_carry__1
       (.CI(cnt0__65_carry__0_n_0),
        .CO({NLW_cnt0__65_carry__1_CO_UNCONNECTED[3:1],cnt0__65_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,cnt1[8]}),
        .O({NLW_cnt0__65_carry__1_O_UNCONNECTED[3:2],cnt0__65_carry__1_n_6,cnt0__65_carry__1_n_7}),
        .S({1'b0,1'b0,cnt0__65_carry__1_i_1_n_0,cnt0__65_carry__1_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    cnt0__65_carry__1_i_1
       (.I0(cnt1[9]),
        .I1(cnt0__56_carry_n_4),
        .O(cnt0__65_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cnt0__65_carry__1_i_2
       (.I0(cnt1[8]),
        .I1(cnt0__56_carry_n_5),
        .O(cnt0__65_carry__1_i_2_n_0));
  CARRY4 cnt0__65_carry_i_1
       (.CI(1'b0),
        .CO({cnt0__65_carry_i_1_n_0,cnt0__65_carry_i_1_n_1,cnt0__65_carry_i_1_n_2,cnt0__65_carry_i_1_n_3}),
        .CYINIT(cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt1[4:1]),
        .S(cnt[4:1]));
  LUT1 #(
    .INIT(2'h1)) 
    cnt0__65_carry_i_2
       (.I0(cnt[0]),
        .O(cnt0__65_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cnt0__65_carry_i_3
       (.I0(cnt1[3]),
        .I1(cnt0__1_carry__3_n_6),
        .O(cnt0__65_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cnt0__65_carry_i_4
       (.I0(cnt1[2]),
        .I1(cnt0__1_carry__3_n_7),
        .O(cnt0__65_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt0__65_carry_i_5
       (.I0(cnt1[1]),
        .O(cnt0__65_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h00007FFFFFFF8000)) 
    \cnt[2]_i_1 
       (.I0(\cnt[8]_i_2_n_0 ),
        .I1(cnt0__65_carry__0_n_5),
        .I2(cnt0__65_carry__0_n_4),
        .I3(cnt0__65_carry__1_n_7),
        .I4(cnt0__65_carry__1_n_6),
        .I5(cnt0__65_carry_n_5),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'h999999998CCCCCCC)) 
    \cnt[3]_i_1 
       (.I0(cnt0__65_carry_n_5),
        .I1(cnt0__65_carry_n_4),
        .I2(cnt0__65_carry__0_n_7),
        .I3(cnt0__65_carry__0_n_6),
        .I4(\cnt[5]_i_2_n_0 ),
        .I5(cnt0__65_carry__1_n_6),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h030357FFFCFC0000)) 
    \cnt[4]_i_1 
       (.I0(cnt0__65_carry__0_n_6),
        .I1(cnt0__65_carry_n_4),
        .I2(cnt0__65_carry_n_5),
        .I3(\cnt[5]_i_2_n_0 ),
        .I4(cnt0__65_carry__1_n_6),
        .I5(cnt0__65_carry__0_n_7),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h575757FF88888800)) 
    \cnt[5]_i_1 
       (.I0(cnt0__65_carry__0_n_7),
        .I1(cnt0__65_carry__1_n_6),
        .I2(\cnt[5]_i_2_n_0 ),
        .I3(cnt0__65_carry_n_5),
        .I4(cnt0__65_carry_n_4),
        .I5(cnt0__65_carry__0_n_6),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cnt[5]_i_2 
       (.I0(cnt0__65_carry__0_n_5),
        .I1(cnt0__65_carry__0_n_4),
        .I2(cnt0__65_carry__1_n_7),
        .O(\cnt[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h557FAA00)) 
    \cnt[6]_i_1 
       (.I0(\cnt[8]_i_2_n_0 ),
        .I1(cnt0__65_carry__0_n_4),
        .I2(cnt0__65_carry__1_n_7),
        .I3(cnt0__65_carry__1_n_6),
        .I4(cnt0__65_carry__0_n_5),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h57FF8800)) 
    \cnt[7]_i_1 
       (.I0(cnt0__65_carry__0_n_5),
        .I1(cnt0__65_carry__1_n_6),
        .I2(cnt0__65_carry__1_n_7),
        .I3(\cnt[8]_i_2_n_0 ),
        .I4(cnt0__65_carry__0_n_4),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h77FF8000)) 
    \cnt[8]_i_1 
       (.I0(cnt0__65_carry__0_n_4),
        .I1(\cnt[8]_i_2_n_0 ),
        .I2(cnt0__65_carry__1_n_6),
        .I3(cnt0__65_carry__0_n_5),
        .I4(cnt0__65_carry__1_n_7),
        .O(p_0_in[8]));
  LUT4 #(
    .INIT(16'h8880)) 
    \cnt[8]_i_2 
       (.I0(cnt0__65_carry__0_n_7),
        .I1(cnt0__65_carry__0_n_6),
        .I2(cnt0__65_carry_n_4),
        .I3(cnt0__65_carry_n_5),
        .O(\cnt[8]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[0]),
        .Q(cnt[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(cnt[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[2]),
        .Q(cnt[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[3]),
        .Q(cnt[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[4]),
        .Q(cnt[4]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[5]),
        .Q(cnt[5]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[6]),
        .Q(cnt[6]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[7]),
        .Q(cnt[7]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[8]),
        .Q(cnt[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data[0]_i_1 
       (.I0(\data_reg[0]_i_2_n_0 ),
        .I1(\data_reg[0]_i_3_n_0 ),
        .I2(addr[6]),
        .I3(\data_reg[0]_i_4_n_0 ),
        .I4(addr[8]),
        .I5(\data_reg[0]_i_5_n_0 ),
        .O(\addr_reg[9]_0 [0]));
  LUT6 #(
    .INIT(64'hC1CDAC363A53C3CD)) 
    \data[0]_i_14 
       (.I0(addr[4]),
        .I1(addr[3]),
        .I2(addr[2]),
        .I3(addr[0]),
        .I4(addr[1]),
        .I5(addr[9]),
        .O(\data[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hF9F9060E0F0EF0F1)) 
    \data[0]_i_15 
       (.I0(addr[4]),
        .I1(addr[3]),
        .I2(addr[0]),
        .I3(addr[2]),
        .I4(addr[1]),
        .I5(addr[9]),
        .O(\data[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h96F00F0FF00F0FF0)) 
    \data[0]_i_16 
       (.I0(addr[4]),
        .I1(addr[3]),
        .I2(addr[2]),
        .I3(addr[1]),
        .I4(addr[0]),
        .I5(addr[9]),
        .O(\data[0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hF05A87E11A8FF058)) 
    \data[0]_i_17 
       (.I0(addr[4]),
        .I1(addr[3]),
        .I2(addr[2]),
        .I3(addr[1]),
        .I4(addr[0]),
        .I5(addr[9]),
        .O(\data[0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h9258259658259658)) 
    \data[0]_i_18 
       (.I0(addr[4]),
        .I1(addr[3]),
        .I2(addr[2]),
        .I3(addr[1]),
        .I4(addr[0]),
        .I5(addr[9]),
        .O(\data[0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h44BC63C4BC63C4B8)) 
    \data[0]_i_19 
       (.I0(addr[4]),
        .I1(addr[3]),
        .I2(addr[2]),
        .I3(addr[1]),
        .I4(addr[0]),
        .I5(addr[9]),
        .O(\data[0]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0F878F8670787059)) 
    \data[0]_i_20 
       (.I0(addr[4]),
        .I1(addr[3]),
        .I2(addr[2]),
        .I3(addr[1]),
        .I4(addr[0]),
        .I5(addr[9]),
        .O(\data[0]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h54444446ABBBBB99)) 
    \data[0]_i_21 
       (.I0(addr[4]),
        .I1(addr[3]),
        .I2(addr[0]),
        .I3(addr[1]),
        .I4(addr[2]),
        .I5(addr[9]),
        .O(\data[0]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h5002AAAABFFD5555)) 
    \data[0]_i_22 
       (.I0(addr[4]),
        .I1(addr[0]),
        .I2(addr[1]),
        .I3(addr[2]),
        .I4(addr[3]),
        .I5(addr[9]),
        .O(\data[0]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h65F19E0EE1F11E0F)) 
    \data[0]_i_23 
       (.I0(addr[4]),
        .I1(addr[3]),
        .I2(addr[2]),
        .I3(addr[1]),
        .I4(addr[9]),
        .I5(addr[0]),
        .O(\data[0]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hE239DCC2DCC239DD)) 
    \data[0]_i_24 
       (.I0(addr[4]),
        .I1(addr[3]),
        .I2(addr[2]),
        .I3(addr[0]),
        .I4(addr[1]),
        .I5(addr[9]),
        .O(\data[0]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hE5965BE5965BE5B6)) 
    \data[0]_i_25 
       (.I0(addr[4]),
        .I1(addr[3]),
        .I2(addr[2]),
        .I3(addr[1]),
        .I4(addr[0]),
        .I5(addr[9]),
        .O(\data[0]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hE5F0781E0EA7A5F0)) 
    \data[0]_i_26 
       (.I0(addr[4]),
        .I1(addr[3]),
        .I2(addr[2]),
        .I3(addr[1]),
        .I4(addr[9]),
        .I5(addr[0]),
        .O(\data[0]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hF00F0F0F0FF0F096)) 
    \data[0]_i_27 
       (.I0(addr[4]),
        .I1(addr[3]),
        .I2(addr[2]),
        .I3(addr[9]),
        .I4(addr[1]),
        .I5(addr[0]),
        .O(\data[0]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h7F8000FF8966FF00)) 
    \data[0]_i_28 
       (.I0(addr[4]),
        .I1(addr[3]),
        .I2(addr[2]),
        .I3(addr[1]),
        .I4(addr[0]),
        .I5(addr[9]),
        .O(\data[0]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h4C3C35A393CA4C7C)) 
    \data[0]_i_29 
       (.I0(addr[4]),
        .I1(addr[3]),
        .I2(addr[2]),
        .I3(addr[0]),
        .I4(addr[1]),
        .I5(addr[9]),
        .O(\data[0]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data[1]_i_1 
       (.I0(\data_reg[1]_i_2_n_0 ),
        .I1(\data_reg[1]_i_3_n_0 ),
        .I2(addr[6]),
        .I3(\data_reg[1]_i_4_n_0 ),
        .I4(addr[8]),
        .I5(\data_reg[1]_i_5_n_0 ),
        .O(\addr_reg[9]_0 [1]));
  LUT6 #(
    .INIT(64'h6465599B9ABAE664)) 
    \data[1]_i_14 
       (.I0(addr[4]),
        .I1(addr[3]),
        .I2(addr[1]),
        .I3(addr[0]),
        .I4(addr[2]),
        .I5(addr[9]),
        .O(\data[1]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0006FFF1FFF0000E)) 
    \data[1]_i_15 
       (.I0(addr[4]),
        .I1(addr[3]),
        .I2(addr[1]),
        .I3(addr[0]),
        .I4(addr[2]),
        .I5(addr[9]),
        .O(\data[1]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hC53CCC3333C3C3CC)) 
    \data[1]_i_16 
       (.I0(addr[4]),
        .I1(addr[3]),
        .I2(addr[2]),
        .I3(addr[1]),
        .I4(addr[0]),
        .I5(addr[9]),
        .O(\data[1]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hC39CC43D394333C4)) 
    \data[1]_i_17 
       (.I0(addr[4]),
        .I1(addr[3]),
        .I2(addr[2]),
        .I3(addr[1]),
        .I4(addr[0]),
        .I5(addr[9]),
        .O(\data[1]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h2B469D3BC4BD63C4)) 
    \data[1]_i_18 
       (.I0(addr[4]),
        .I1(addr[3]),
        .I2(addr[0]),
        .I3(addr[2]),
        .I4(addr[1]),
        .I5(addr[9]),
        .O(\data[1]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hEE15A96E15AA7E91)) 
    \data[1]_i_19 
       (.I0(addr[4]),
        .I1(addr[3]),
        .I2(addr[0]),
        .I3(addr[2]),
        .I4(addr[1]),
        .I5(addr[9]),
        .O(\data[1]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hCCC4CCC5333B333A)) 
    \data[1]_i_20 
       (.I0(addr[4]),
        .I1(addr[3]),
        .I2(addr[2]),
        .I3(addr[1]),
        .I4(addr[0]),
        .I5(addr[9]),
        .O(\data[1]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h01111111FEEEEEEE)) 
    \data[1]_i_21 
       (.I0(addr[4]),
        .I1(addr[3]),
        .I2(addr[0]),
        .I3(addr[1]),
        .I4(addr[2]),
        .I5(addr[9]),
        .O(\data[1]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFE00000001FFFFFF)) 
    \data[1]_i_22 
       (.I0(addr[2]),
        .I1(addr[1]),
        .I2(addr[0]),
        .I3(addr[3]),
        .I4(addr[4]),
        .I5(addr[9]),
        .O(\data[1]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h8C0F0F0F73F0F0F0)) 
    \data[1]_i_23 
       (.I0(addr[0]),
        .I1(addr[4]),
        .I2(addr[3]),
        .I3(addr[1]),
        .I4(addr[2]),
        .I5(addr[9]),
        .O(\data[1]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h7861A5A7869A5878)) 
    \data[1]_i_24 
       (.I0(addr[4]),
        .I1(addr[3]),
        .I2(addr[2]),
        .I3(addr[0]),
        .I4(addr[1]),
        .I5(addr[9]),
        .O(\data[1]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hD34DC92C249236DB)) 
    \data[1]_i_25 
       (.I0(addr[4]),
        .I1(addr[3]),
        .I2(addr[2]),
        .I3(addr[1]),
        .I4(addr[0]),
        .I5(addr[9]),
        .O(\data[1]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hDC3D336343C6DC3C)) 
    \data[1]_i_26 
       (.I0(addr[4]),
        .I1(addr[3]),
        .I2(addr[2]),
        .I3(addr[0]),
        .I4(addr[1]),
        .I5(addr[9]),
        .O(\data[1]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hCC3C33CC3C33C35C)) 
    \data[1]_i_27 
       (.I0(addr[4]),
        .I1(addr[3]),
        .I2(addr[2]),
        .I3(addr[1]),
        .I4(addr[9]),
        .I5(addr[0]),
        .O(\data[1]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h8FF0F0F0790F0F0F)) 
    \data[1]_i_28 
       (.I0(addr[4]),
        .I1(addr[3]),
        .I2(addr[2]),
        .I3(addr[0]),
        .I4(addr[1]),
        .I5(addr[9]),
        .O(\data[1]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hD998A2A6266559D9)) 
    \data[1]_i_29 
       (.I0(addr[4]),
        .I1(addr[3]),
        .I2(addr[1]),
        .I3(addr[0]),
        .I4(addr[2]),
        .I5(addr[9]),
        .O(\data[1]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h01555500FEAAAAFF)) 
    \data[2]_i_10 
       (.I0(addr[5]),
        .I1(addr[2]),
        .I2(addr[1]),
        .I3(addr[4]),
        .I4(addr[3]),
        .I5(addr[9]),
        .O(\data[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h4C4DC9CBB2B63434)) 
    \data[2]_i_12 
       (.I0(addr[4]),
        .I1(addr[3]),
        .I2(addr[2]),
        .I3(addr[0]),
        .I4(addr[1]),
        .I5(addr[9]),
        .O(\data[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hCC3783CC33C0FC33)) 
    \data[2]_i_13 
       (.I0(addr[0]),
        .I1(addr[4]),
        .I2(addr[1]),
        .I3(addr[3]),
        .I4(addr[2]),
        .I5(addr[9]),
        .O(\data[2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hCCC3C3C33A3C3C3C)) 
    \data[2]_i_14 
       (.I0(addr[4]),
        .I1(addr[3]),
        .I2(addr[2]),
        .I3(addr[0]),
        .I4(addr[1]),
        .I5(addr[9]),
        .O(\data[2]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h62233B3B9DDCC444)) 
    \data[2]_i_15 
       (.I0(addr[4]),
        .I1(addr[3]),
        .I2(addr[1]),
        .I3(addr[0]),
        .I4(addr[2]),
        .I5(addr[9]),
        .O(\data[2]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hA6675959189AA6E6)) 
    \data[2]_i_16 
       (.I0(addr[4]),
        .I1(addr[3]),
        .I2(addr[1]),
        .I3(addr[0]),
        .I4(addr[2]),
        .I5(addr[9]),
        .O(\data[2]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hA66655595998A6A6)) 
    \data[2]_i_17 
       (.I0(addr[4]),
        .I1(addr[3]),
        .I2(addr[1]),
        .I3(addr[0]),
        .I4(addr[2]),
        .I5(addr[9]),
        .O(\data[2]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h9EA696A56959595A)) 
    \data[2]_i_18 
       (.I0(addr[4]),
        .I1(addr[3]),
        .I2(addr[2]),
        .I3(addr[1]),
        .I4(addr[0]),
        .I5(addr[9]),
        .O(\data[2]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h9A869EA76159695A)) 
    \data[2]_i_19 
       (.I0(addr[4]),
        .I1(addr[3]),
        .I2(addr[2]),
        .I3(addr[1]),
        .I4(addr[0]),
        .I5(addr[9]),
        .O(\data[2]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data[2]_i_2 
       (.I0(\data_reg[2]_i_4_n_0 ),
        .I1(\data[2]_i_5_n_0 ),
        .I2(addr[8]),
        .I3(\data_reg[2]_i_6_n_0 ),
        .I4(addr[7]),
        .I5(\data_reg[2]_i_7_n_0 ),
        .O(\data[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDDDCC44623233BB9)) 
    \data[2]_i_20 
       (.I0(addr[4]),
        .I1(addr[3]),
        .I2(addr[1]),
        .I3(addr[0]),
        .I4(addr[2]),
        .I5(addr[9]),
        .O(\data[2]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hCCCA3333333CCCCC)) 
    \data[2]_i_21 
       (.I0(addr[4]),
        .I1(addr[3]),
        .I2(addr[1]),
        .I3(addr[0]),
        .I4(addr[2]),
        .I5(addr[9]),
        .O(\data[2]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h6464D9D99B9A2666)) 
    \data[2]_i_22 
       (.I0(addr[4]),
        .I1(addr[3]),
        .I2(addr[1]),
        .I3(addr[0]),
        .I4(addr[2]),
        .I5(addr[9]),
        .O(\data[2]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hF50FA70A1AF070F5)) 
    \data[2]_i_23 
       (.I0(addr[4]),
        .I1(addr[0]),
        .I2(addr[3]),
        .I3(addr[2]),
        .I4(addr[1]),
        .I5(addr[9]),
        .O(\data[2]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data[2]_i_3 
       (.I0(\data_reg[2]_i_8_n_0 ),
        .I1(\data_reg[2]_i_9_n_0 ),
        .I2(addr[8]),
        .I3(\data[2]_i_10_n_0 ),
        .I4(addr[7]),
        .I5(\data_reg[2]_i_11_n_0 ),
        .O(\data[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h766600008999FFFF)) 
    \data[2]_i_5 
       (.I0(addr[4]),
        .I1(addr[3]),
        .I2(addr[1]),
        .I3(addr[2]),
        .I4(addr[5]),
        .I5(addr[9]),
        .O(\data[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data[3]_i_1 
       (.I0(\data_reg[3]_i_2_n_0 ),
        .I1(\data[3]_i_3_n_0 ),
        .I2(addr[6]),
        .I3(\data[3]_i_4_n_0 ),
        .I4(addr[8]),
        .I5(\data_reg[3]_i_5_n_0 ),
        .O(\addr_reg[9]_0 [3]));
  LUT6 #(
    .INIT(64'h0001FFFFFFFE0000)) 
    \data[3]_i_12 
       (.I0(addr[3]),
        .I1(addr[2]),
        .I2(addr[1]),
        .I3(addr[0]),
        .I4(addr[4]),
        .I5(addr[9]),
        .O(\data[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h55576666AAA99999)) 
    \data[3]_i_13 
       (.I0(addr[4]),
        .I1(addr[3]),
        .I2(addr[1]),
        .I3(addr[0]),
        .I4(addr[2]),
        .I5(addr[9]),
        .O(\data[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h42624263BD9D9D9C)) 
    \data[3]_i_14 
       (.I0(addr[4]),
        .I1(addr[3]),
        .I2(addr[2]),
        .I3(addr[1]),
        .I4(addr[0]),
        .I5(addr[9]),
        .O(\data[3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hB9BDBD9C42624263)) 
    \data[3]_i_15 
       (.I0(addr[4]),
        .I1(addr[3]),
        .I2(addr[2]),
        .I3(addr[1]),
        .I4(addr[0]),
        .I5(addr[9]),
        .O(\data[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAABBDD55544422AA)) 
    \data[3]_i_16 
       (.I0(addr[4]),
        .I1(addr[2]),
        .I2(addr[0]),
        .I3(addr[1]),
        .I4(addr[3]),
        .I5(addr[9]),
        .O(\data[3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h5AAA0AAFB555D550)) 
    \data[3]_i_17 
       (.I0(addr[4]),
        .I1(addr[0]),
        .I2(addr[3]),
        .I3(addr[2]),
        .I4(addr[1]),
        .I5(addr[9]),
        .O(\data[3]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hD5D454562B2BA9A9)) 
    \data[3]_i_18 
       (.I0(addr[4]),
        .I1(addr[3]),
        .I2(addr[2]),
        .I3(addr[0]),
        .I4(addr[1]),
        .I5(addr[9]),
        .O(\data[3]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hCCCFF3B333300CCC)) 
    \data[3]_i_19 
       (.I0(addr[0]),
        .I1(addr[4]),
        .I2(addr[2]),
        .I3(addr[1]),
        .I4(addr[3]),
        .I5(addr[9]),
        .O(\data[3]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h2ABBDDDDD444222A)) 
    \data[3]_i_20 
       (.I0(addr[4]),
        .I1(addr[2]),
        .I2(addr[0]),
        .I3(addr[1]),
        .I4(addr[3]),
        .I5(addr[9]),
        .O(\data[3]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hD55422222BABDDDD)) 
    \data[3]_i_21 
       (.I0(addr[4]),
        .I1(addr[2]),
        .I2(addr[1]),
        .I3(addr[0]),
        .I4(addr[3]),
        .I5(addr[9]),
        .O(\data[3]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h5666AAAA89995555)) 
    \data[3]_i_22 
       (.I0(addr[4]),
        .I1(addr[2]),
        .I2(addr[0]),
        .I3(addr[1]),
        .I4(addr[3]),
        .I5(addr[9]),
        .O(\data[3]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAA15555555)) 
    \data[3]_i_23 
       (.I0(addr[4]),
        .I1(addr[0]),
        .I2(addr[1]),
        .I3(addr[2]),
        .I4(addr[3]),
        .I5(addr[9]),
        .O(\data[3]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h01FEFFFF01FE0000)) 
    \data[3]_i_3 
       (.I0(addr[5]),
        .I1(addr[4]),
        .I2(addr[3]),
        .I3(addr[9]),
        .I4(addr[7]),
        .I5(\data_reg[3]_i_8_n_0 ),
        .O(\data[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB88888888BBBBBBB)) 
    \data[3]_i_4 
       (.I0(\data_reg[3]_i_9_n_0 ),
        .I1(addr[7]),
        .I2(addr[3]),
        .I3(addr[4]),
        .I4(addr[5]),
        .I5(addr[9]),
        .O(\data[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h1FE0)) 
    \data[4]_i_10 
       (.I0(addr[2]),
        .I1(addr[1]),
        .I2(addr[3]),
        .I3(addr[9]),
        .O(\data[4]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFE11)) 
    \data[4]_i_11 
       (.I0(addr[2]),
        .I1(addr[1]),
        .I2(addr[0]),
        .I3(addr[9]),
        .O(\data[4]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \data[4]_i_12 
       (.I0(addr[0]),
        .I1(addr[1]),
        .I2(addr[2]),
        .I3(addr[9]),
        .O(\data[4]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hEA15)) 
    \data[4]_i_13 
       (.I0(addr[2]),
        .I1(addr[0]),
        .I2(addr[1]),
        .I3(addr[9]),
        .O(\data[4]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0055FFFFFEAA0000)) 
    \data[4]_i_14 
       (.I0(addr[3]),
        .I1(addr[1]),
        .I2(addr[0]),
        .I3(addr[2]),
        .I4(addr[4]),
        .I5(addr[9]),
        .O(\data[4]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h7FFEAAAA81015555)) 
    \data[4]_i_15 
       (.I0(addr[4]),
        .I1(addr[2]),
        .I2(addr[1]),
        .I3(addr[0]),
        .I4(addr[3]),
        .I5(addr[9]),
        .O(\data[4]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h57775776A8888889)) 
    \data[4]_i_16 
       (.I0(addr[4]),
        .I1(addr[3]),
        .I2(addr[2]),
        .I3(addr[1]),
        .I4(addr[0]),
        .I5(addr[9]),
        .O(\data[4]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEAAAA11115555)) 
    \data[4]_i_17 
       (.I0(addr[4]),
        .I1(addr[2]),
        .I2(addr[0]),
        .I3(addr[1]),
        .I4(addr[3]),
        .I5(addr[9]),
        .O(\data[4]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h1FE0)) 
    \data[4]_i_18 
       (.I0(addr[1]),
        .I1(addr[0]),
        .I2(addr[2]),
        .I3(addr[9]),
        .O(\data[4]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \data[4]_i_19 
       (.I0(addr[2]),
        .I1(addr[1]),
        .I2(addr[0]),
        .I3(addr[9]),
        .O(\data[4]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA03F3FAFA03030)) 
    \data[4]_i_2 
       (.I0(\data[4]_i_4_n_0 ),
        .I1(addr[9]),
        .I2(addr[8]),
        .I3(\data[4]_i_5_n_0 ),
        .I4(addr[7]),
        .I5(\data_reg[4]_i_6_n_0 ),
        .O(\data[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h3F80)) 
    \data[4]_i_20 
       (.I0(addr[0]),
        .I1(addr[1]),
        .I2(addr[2]),
        .I3(addr[9]),
        .O(\data[4]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hEA15)) 
    \data[4]_i_21 
       (.I0(addr[3]),
        .I1(addr[1]),
        .I2(addr[2]),
        .I3(addr[9]),
        .O(\data[4]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hA0AFCFCFA0AFC0C0)) 
    \data[4]_i_3 
       (.I0(\data_reg[4]_i_7_n_0 ),
        .I1(\data[4]_i_8_n_0 ),
        .I2(addr[8]),
        .I3(addr[9]),
        .I4(addr[7]),
        .I5(\data[4]_i_9_n_0 ),
        .O(\data[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h33308888CFCCBBBB)) 
    \data[4]_i_4 
       (.I0(\data[4]_i_10_n_0 ),
        .I1(addr[5]),
        .I2(addr[3]),
        .I3(\data[4]_i_11_n_0 ),
        .I4(addr[4]),
        .I5(addr[9]),
        .O(\data[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h3B383C3CCBC8C3C3)) 
    \data[4]_i_5 
       (.I0(\data[4]_i_12_n_0 ),
        .I1(addr[5]),
        .I2(addr[4]),
        .I3(\data[4]_i_13_n_0 ),
        .I4(addr[3]),
        .I5(addr[9]),
        .O(\data[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h3B38CCCCCBC83333)) 
    \data[4]_i_8 
       (.I0(\data[4]_i_18_n_0 ),
        .I1(addr[5]),
        .I2(addr[3]),
        .I3(\data[4]_i_19_n_0 ),
        .I4(addr[4]),
        .I5(addr[9]),
        .O(\data[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0F00B0B0FFF08F8F)) 
    \data[4]_i_9 
       (.I0(\data[4]_i_20_n_0 ),
        .I1(addr[3]),
        .I2(addr[5]),
        .I3(\data[4]_i_21_n_0 ),
        .I4(addr[4]),
        .I5(addr[9]),
        .O(\data[4]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \data[5]_i_10 
       (.I0(addr[0]),
        .I1(addr[1]),
        .I2(addr[9]),
        .O(\data[5]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h26)) 
    \data[5]_i_11 
       (.I0(addr[1]),
        .I1(addr[9]),
        .I2(addr[0]),
        .O(\data[5]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hC7)) 
    \data[5]_i_12 
       (.I0(addr[0]),
        .I1(addr[1]),
        .I2(addr[9]),
        .O(\data[5]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \data[5]_i_13 
       (.I0(addr[1]),
        .I1(addr[0]),
        .I2(addr[9]),
        .O(\data[5]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA03F3FAFA03030)) 
    \data[5]_i_2 
       (.I0(\data[5]_i_4_n_0 ),
        .I1(addr[9]),
        .I2(addr[8]),
        .I3(\data[5]_i_5_n_0 ),
        .I4(addr[7]),
        .I5(\data[5]_i_6_n_0 ),
        .O(\data[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA0AFCFCFA0AFC0C0)) 
    \data[5]_i_3 
       (.I0(\data[5]_i_7_n_0 ),
        .I1(\data[5]_i_8_n_0 ),
        .I2(addr[8]),
        .I3(addr[9]),
        .I4(addr[7]),
        .I5(\data[5]_i_9_n_0 ),
        .O(\data[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0155FFFFFEAA0000)) 
    \data[5]_i_4 
       (.I0(addr[4]),
        .I1(addr[2]),
        .I2(addr[1]),
        .I3(addr[3]),
        .I4(addr[5]),
        .I5(addr[9]),
        .O(\data[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h01001111FFFEEEEE)) 
    \data[5]_i_5 
       (.I0(addr[5]),
        .I1(addr[4]),
        .I2(addr[2]),
        .I3(\data[5]_i_10_n_0 ),
        .I4(addr[3]),
        .I5(addr[9]),
        .O(\data[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1055FFFFFEAA0000)) 
    \data[5]_i_6 
       (.I0(addr[4]),
        .I1(addr[2]),
        .I2(\data[5]_i_11_n_0 ),
        .I3(addr[3]),
        .I4(addr[5]),
        .I5(addr[9]),
        .O(\data[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEAAAA10115555)) 
    \data[5]_i_7 
       (.I0(addr[5]),
        .I1(addr[3]),
        .I2(\data[5]_i_12_n_0 ),
        .I3(addr[2]),
        .I4(addr[4]),
        .I5(addr[9]),
        .O(\data[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hEA00000045FFFFFF)) 
    \data[5]_i_8 
       (.I0(addr[3]),
        .I1(\data[5]_i_13_n_0 ),
        .I2(addr[2]),
        .I3(addr[4]),
        .I4(addr[5]),
        .I5(addr[9]),
        .O(\data[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEAAAA01115555)) 
    \data[5]_i_9 
       (.I0(addr[5]),
        .I1(addr[3]),
        .I2(addr[1]),
        .I3(addr[2]),
        .I4(addr[4]),
        .I5(addr[9]),
        .O(\data[5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFC0000BB30FFFF88)) 
    \data[6]_i_1 
       (.I0(\data[6]_i_2_n_0 ),
        .I1(addr[6]),
        .I2(\data[6]_i_3_n_0 ),
        .I3(addr[8]),
        .I4(addr[7]),
        .I5(addr[9]),
        .O(\addr_reg[9]_0 [6]));
  LUT6 #(
    .INIT(64'h01115555FEEEAAAA)) 
    \data[6]_i_2 
       (.I0(addr[5]),
        .I1(addr[3]),
        .I2(addr[1]),
        .I3(addr[2]),
        .I4(addr[4]),
        .I5(addr[9]),
        .O(\data[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEAA00000155FFFF)) 
    \data[6]_i_3 
       (.I0(addr[4]),
        .I1(addr[2]),
        .I2(addr[1]),
        .I3(addr[3]),
        .I4(addr[5]),
        .I5(addr[9]),
        .O(\data[6]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data[7]_i_1 
       (.I0(addr[9]),
        .O(\addr_reg[9]_0 [7]));
  MUXF7 \data_reg[0]_i_10 
       (.I0(\data[0]_i_22_n_0 ),
        .I1(\data[0]_i_23_n_0 ),
        .O(\data_reg[0]_i_10_n_0 ),
        .S(addr[5]));
  MUXF7 \data_reg[0]_i_11 
       (.I0(\data[0]_i_24_n_0 ),
        .I1(\data[0]_i_25_n_0 ),
        .O(\data_reg[0]_i_11_n_0 ),
        .S(addr[5]));
  MUXF7 \data_reg[0]_i_12 
       (.I0(\data[0]_i_26_n_0 ),
        .I1(\data[0]_i_27_n_0 ),
        .O(\data_reg[0]_i_12_n_0 ),
        .S(addr[5]));
  MUXF7 \data_reg[0]_i_13 
       (.I0(\data[0]_i_28_n_0 ),
        .I1(\data[0]_i_29_n_0 ),
        .O(\data_reg[0]_i_13_n_0 ),
        .S(addr[5]));
  MUXF8 \data_reg[0]_i_2 
       (.I0(\data_reg[0]_i_6_n_0 ),
        .I1(\data_reg[0]_i_7_n_0 ),
        .O(\data_reg[0]_i_2_n_0 ),
        .S(addr[7]));
  MUXF8 \data_reg[0]_i_3 
       (.I0(\data_reg[0]_i_8_n_0 ),
        .I1(\data_reg[0]_i_9_n_0 ),
        .O(\data_reg[0]_i_3_n_0 ),
        .S(addr[7]));
  MUXF8 \data_reg[0]_i_4 
       (.I0(\data_reg[0]_i_10_n_0 ),
        .I1(\data_reg[0]_i_11_n_0 ),
        .O(\data_reg[0]_i_4_n_0 ),
        .S(addr[7]));
  MUXF8 \data_reg[0]_i_5 
       (.I0(\data_reg[0]_i_12_n_0 ),
        .I1(\data_reg[0]_i_13_n_0 ),
        .O(\data_reg[0]_i_5_n_0 ),
        .S(addr[7]));
  MUXF7 \data_reg[0]_i_6 
       (.I0(\data[0]_i_14_n_0 ),
        .I1(\data[0]_i_15_n_0 ),
        .O(\data_reg[0]_i_6_n_0 ),
        .S(addr[5]));
  MUXF7 \data_reg[0]_i_7 
       (.I0(\data[0]_i_16_n_0 ),
        .I1(\data[0]_i_17_n_0 ),
        .O(\data_reg[0]_i_7_n_0 ),
        .S(addr[5]));
  MUXF7 \data_reg[0]_i_8 
       (.I0(\data[0]_i_18_n_0 ),
        .I1(\data[0]_i_19_n_0 ),
        .O(\data_reg[0]_i_8_n_0 ),
        .S(addr[5]));
  MUXF7 \data_reg[0]_i_9 
       (.I0(\data[0]_i_20_n_0 ),
        .I1(\data[0]_i_21_n_0 ),
        .O(\data_reg[0]_i_9_n_0 ),
        .S(addr[5]));
  MUXF7 \data_reg[1]_i_10 
       (.I0(\data[1]_i_22_n_0 ),
        .I1(\data[1]_i_23_n_0 ),
        .O(\data_reg[1]_i_10_n_0 ),
        .S(addr[5]));
  MUXF7 \data_reg[1]_i_11 
       (.I0(\data[1]_i_24_n_0 ),
        .I1(\data[1]_i_25_n_0 ),
        .O(\data_reg[1]_i_11_n_0 ),
        .S(addr[5]));
  MUXF7 \data_reg[1]_i_12 
       (.I0(\data[1]_i_26_n_0 ),
        .I1(\data[1]_i_27_n_0 ),
        .O(\data_reg[1]_i_12_n_0 ),
        .S(addr[5]));
  MUXF7 \data_reg[1]_i_13 
       (.I0(\data[1]_i_28_n_0 ),
        .I1(\data[1]_i_29_n_0 ),
        .O(\data_reg[1]_i_13_n_0 ),
        .S(addr[5]));
  MUXF8 \data_reg[1]_i_2 
       (.I0(\data_reg[1]_i_6_n_0 ),
        .I1(\data_reg[1]_i_7_n_0 ),
        .O(\data_reg[1]_i_2_n_0 ),
        .S(addr[7]));
  MUXF8 \data_reg[1]_i_3 
       (.I0(\data_reg[1]_i_8_n_0 ),
        .I1(\data_reg[1]_i_9_n_0 ),
        .O(\data_reg[1]_i_3_n_0 ),
        .S(addr[7]));
  MUXF8 \data_reg[1]_i_4 
       (.I0(\data_reg[1]_i_10_n_0 ),
        .I1(\data_reg[1]_i_11_n_0 ),
        .O(\data_reg[1]_i_4_n_0 ),
        .S(addr[7]));
  MUXF8 \data_reg[1]_i_5 
       (.I0(\data_reg[1]_i_12_n_0 ),
        .I1(\data_reg[1]_i_13_n_0 ),
        .O(\data_reg[1]_i_5_n_0 ),
        .S(addr[7]));
  MUXF7 \data_reg[1]_i_6 
       (.I0(\data[1]_i_14_n_0 ),
        .I1(\data[1]_i_15_n_0 ),
        .O(\data_reg[1]_i_6_n_0 ),
        .S(addr[5]));
  MUXF7 \data_reg[1]_i_7 
       (.I0(\data[1]_i_16_n_0 ),
        .I1(\data[1]_i_17_n_0 ),
        .O(\data_reg[1]_i_7_n_0 ),
        .S(addr[5]));
  MUXF7 \data_reg[1]_i_8 
       (.I0(\data[1]_i_18_n_0 ),
        .I1(\data[1]_i_19_n_0 ),
        .O(\data_reg[1]_i_8_n_0 ),
        .S(addr[5]));
  MUXF7 \data_reg[1]_i_9 
       (.I0(\data[1]_i_20_n_0 ),
        .I1(\data[1]_i_21_n_0 ),
        .O(\data_reg[1]_i_9_n_0 ),
        .S(addr[5]));
  MUXF7 \data_reg[2]_i_1 
       (.I0(\data[2]_i_2_n_0 ),
        .I1(\data[2]_i_3_n_0 ),
        .O(\addr_reg[9]_0 [2]),
        .S(addr[6]));
  MUXF7 \data_reg[2]_i_11 
       (.I0(\data[2]_i_22_n_0 ),
        .I1(\data[2]_i_23_n_0 ),
        .O(\data_reg[2]_i_11_n_0 ),
        .S(addr[5]));
  MUXF7 \data_reg[2]_i_4 
       (.I0(\data[2]_i_12_n_0 ),
        .I1(\data[2]_i_13_n_0 ),
        .O(\data_reg[2]_i_4_n_0 ),
        .S(addr[5]));
  MUXF7 \data_reg[2]_i_6 
       (.I0(\data[2]_i_14_n_0 ),
        .I1(\data[2]_i_15_n_0 ),
        .O(\data_reg[2]_i_6_n_0 ),
        .S(addr[5]));
  MUXF7 \data_reg[2]_i_7 
       (.I0(\data[2]_i_16_n_0 ),
        .I1(\data[2]_i_17_n_0 ),
        .O(\data_reg[2]_i_7_n_0 ),
        .S(addr[5]));
  MUXF7 \data_reg[2]_i_8 
       (.I0(\data[2]_i_18_n_0 ),
        .I1(\data[2]_i_19_n_0 ),
        .O(\data_reg[2]_i_8_n_0 ),
        .S(addr[5]));
  MUXF7 \data_reg[2]_i_9 
       (.I0(\data[2]_i_20_n_0 ),
        .I1(\data[2]_i_21_n_0 ),
        .O(\data_reg[2]_i_9_n_0 ),
        .S(addr[5]));
  MUXF7 \data_reg[3]_i_10 
       (.I0(\data[3]_i_20_n_0 ),
        .I1(\data[3]_i_21_n_0 ),
        .O(\data_reg[3]_i_10_n_0 ),
        .S(addr[5]));
  MUXF7 \data_reg[3]_i_11 
       (.I0(\data[3]_i_22_n_0 ),
        .I1(\data[3]_i_23_n_0 ),
        .O(\data_reg[3]_i_11_n_0 ),
        .S(addr[5]));
  MUXF8 \data_reg[3]_i_2 
       (.I0(\data_reg[3]_i_6_n_0 ),
        .I1(\data_reg[3]_i_7_n_0 ),
        .O(\data_reg[3]_i_2_n_0 ),
        .S(addr[7]));
  MUXF8 \data_reg[3]_i_5 
       (.I0(\data_reg[3]_i_10_n_0 ),
        .I1(\data_reg[3]_i_11_n_0 ),
        .O(\data_reg[3]_i_5_n_0 ),
        .S(addr[7]));
  MUXF7 \data_reg[3]_i_6 
       (.I0(\data[3]_i_12_n_0 ),
        .I1(\data[3]_i_13_n_0 ),
        .O(\data_reg[3]_i_6_n_0 ),
        .S(addr[5]));
  MUXF7 \data_reg[3]_i_7 
       (.I0(\data[3]_i_14_n_0 ),
        .I1(\data[3]_i_15_n_0 ),
        .O(\data_reg[3]_i_7_n_0 ),
        .S(addr[5]));
  MUXF7 \data_reg[3]_i_8 
       (.I0(\data[3]_i_16_n_0 ),
        .I1(\data[3]_i_17_n_0 ),
        .O(\data_reg[3]_i_8_n_0 ),
        .S(addr[5]));
  MUXF7 \data_reg[3]_i_9 
       (.I0(\data[3]_i_18_n_0 ),
        .I1(\data[3]_i_19_n_0 ),
        .O(\data_reg[3]_i_9_n_0 ),
        .S(addr[5]));
  MUXF7 \data_reg[4]_i_1 
       (.I0(\data[4]_i_2_n_0 ),
        .I1(\data[4]_i_3_n_0 ),
        .O(\addr_reg[9]_0 [4]),
        .S(addr[6]));
  MUXF7 \data_reg[4]_i_6 
       (.I0(\data[4]_i_14_n_0 ),
        .I1(\data[4]_i_15_n_0 ),
        .O(\data_reg[4]_i_6_n_0 ),
        .S(addr[5]));
  MUXF7 \data_reg[4]_i_7 
       (.I0(\data[4]_i_16_n_0 ),
        .I1(\data[4]_i_17_n_0 ),
        .O(\data_reg[4]_i_7_n_0 ),
        .S(addr[5]));
  MUXF7 \data_reg[5]_i_1 
       (.I0(\data[5]_i_2_n_0 ),
        .I1(\data[5]_i_3_n_0 ),
        .O(\addr_reg[9]_0 [5]),
        .S(addr[6]));
  FDCE #(
    .INIT(1'b0)) 
    \sc_edge_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D),
        .Q(sc_edge[0]));
  FDCE #(
    .INIT(1'b0)) 
    \sc_edge_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(sc_edge[0]),
        .Q(sc_edge[1]));
  LUT4 #(
    .INIT(16'hEFAA)) 
    send_i_1
       (.I0(addr_0),
        .I1(sc_edge[0]),
        .I2(sc_edge[1]),
        .I3(enable),
        .O(send_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    send_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(send_i_1_n_0),
        .Q(enable));
endmodule

(* DAC_cmd = "8'b00001010" *) (* clk_p = "4" *) (* data_size = "16" *) 
(* end_brake = "1" *) (* idle_time = "5" *) (* sample_time = "15" *) 
(* t_delay = "1" *) (* wyprz = "1" *) 
(* NotValidForBitStream *)
module top
   (clk,
    rst,
    sclk,
    mosi,
    sync);
  input clk;
  input rst;
  output sclk;
  output mosi;
  output sync;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire enable;
  wire mosi;
  wire mosi_OBUF;
  wire [7:0]p_0_out;
  wire rst;
  wire rst_IBUF;
  wire sclk;
  wire sclk_OBUF;
  wire [7:0]signal;
  wire sync;
  wire sync_OBUF;

initial begin
 $sdf_annotate("dac_sim_time_synth.sdf",,,,"tool_control");
end
  SPI_master DAC
       (.AR(rst_IBUF),
        .D(sync_OBUF),
        .Q(signal),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .enable(enable),
        .mosi_OBUF(mosi_OBUF),
        .sclk_OBUF(sclk_OBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  generator loader
       (.AR(rst_IBUF),
        .D(sync_OBUF),
        .\addr_reg[9]_0 (p_0_out),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .enable(enable));
  ROM_mem memory_test
       (.AR(rst_IBUF),
        .D(p_0_out),
        .Q(signal),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  OBUF mosi_OBUF_inst
       (.I(mosi_OBUF),
        .O(mosi));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  OBUF sclk_OBUF_inst
       (.I(sclk_OBUF),
        .O(sclk));
  OBUF sync_OBUF_inst
       (.I(sync_OBUF),
        .O(sync));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
