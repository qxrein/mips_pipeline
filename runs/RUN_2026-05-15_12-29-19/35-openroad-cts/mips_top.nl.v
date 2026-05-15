module mips_top (clk,
    rst,
    alu_result_out,
    instr_out,
    pc_out);
 input clk;
 input rst;
 output [31:0] alu_result_out;
 output [31:0] instr_out;
 output [31:0] pc_out;

 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire _049_;
 wire _050_;
 wire _051_;
 wire _052_;
 wire _053_;
 wire _054_;
 wire _055_;
 wire _056_;
 wire _057_;
 wire _058_;
 wire _059_;
 wire _060_;
 wire _061_;
 wire _062_;
 wire _063_;
 wire _064_;
 wire _065_;
 wire _066_;
 wire _067_;
 wire _068_;
 wire _069_;
 wire _070_;
 wire _071_;
 wire _072_;
 wire _073_;
 wire _074_;
 wire _075_;
 wire _076_;
 wire _077_;
 wire _078_;
 wire _079_;
 wire _080_;
 wire _081_;
 wire _082_;
 wire _083_;
 wire net38;
 wire net48;
 wire net49;
 wire net50;
 wire net51;
 wire net52;
 wire net53;
 wire net54;
 wire net55;
 wire net56;
 wire net57;
 wire net39;
 wire net58;
 wire net59;
 wire net60;
 wire net61;
 wire net62;
 wire net63;
 wire net64;
 wire net65;
 wire net66;
 wire net67;
 wire net40;
 wire net68;
 wire net69;
 wire net41;
 wire net42;
 wire net43;
 wire net44;
 wire net45;
 wire net46;
 wire net47;
 wire net70;
 wire net80;
 wire net81;
 wire net82;
 wire net83;
 wire net84;
 wire net85;
 wire net86;
 wire net87;
 wire net88;
 wire net89;
 wire net71;
 wire net90;
 wire net91;
 wire net92;
 wire net93;
 wire net94;
 wire net95;
 wire net96;
 wire net97;
 wire net98;
 wire net99;
 wire net72;
 wire net100;
 wire net101;
 wire net73;
 wire net74;
 wire net75;
 wire net76;
 wire net77;
 wire net78;
 wire net79;
 wire net102;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire clknet_0_clk;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net25;
 wire net26;
 wire net27;
 wire net28;
 wire net29;
 wire net30;
 wire net31;
 wire net1;
 wire net32;
 wire net33;
 wire net34;
 wire net35;
 wire net36;
 wire net37;
 wire net;
 wire clknet_2_0__leaf_clk;
 wire clknet_2_1__leaf_clk;
 wire clknet_2_2__leaf_clk;
 wire clknet_2_3__leaf_clk;

 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_23 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_33 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Right_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Left_34 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Right_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Left_35 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Right_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Left_36 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Right_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Left_37 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Right_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Left_38 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Right_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Left_39 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Right_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Left_40 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Right_17 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Left_41 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Right_18 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Left_42 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Right_19 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_24 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Left_43 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Right_20 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Left_44 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Right_21 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Left_45 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Right_22 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_25 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_26 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_27 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_28 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_29 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_30 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_31 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_32 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_46 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_47 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_48 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_49 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_68 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_69 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_70 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_71 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_72 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_73 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_74 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_75 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_76 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_77 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_78 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_79 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_80 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_81 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_82 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_83 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_84 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_85 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_86 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_87 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_50 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_51 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_88 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_89 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_90 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_91 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_92 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_93 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_94 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_95 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_52 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_53 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_54 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_55 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_56 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_57 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_58 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_59 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_60 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_61 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_62 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_63 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_64 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_65 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_66 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_67 ();
 sky130_fd_sc_hd__nor2_2 _084_ (.A(net22),
    .B(net35),
    .Y(_000_));
 sky130_fd_sc_hd__a21oi_2 _085_ (.A1(net22),
    .A2(net25),
    .B1(net35),
    .Y(_059_));
 sky130_fd_sc_hd__o21a_2 _086_ (.A1(net22),
    .A2(net25),
    .B1(_059_),
    .X(_001_));
 sky130_fd_sc_hd__a21oi_2 _087_ (.A1(net22),
    .A2(net25),
    .B1(net26),
    .Y(_060_));
 sky130_fd_sc_hd__and3_2 _088_ (.A(net22),
    .B(net25),
    .C(net26),
    .X(_061_));
 sky130_fd_sc_hd__nor3_2 _089_ (.A(net36),
    .B(_060_),
    .C(_061_),
    .Y(_002_));
 sky130_fd_sc_hd__and4_2 _090_ (.A(net22),
    .B(net25),
    .C(net26),
    .D(net27),
    .X(_062_));
 sky130_fd_sc_hd__nor2_2 _091_ (.A(net35),
    .B(_062_),
    .Y(_063_));
 sky130_fd_sc_hd__o21a_2 _092_ (.A1(net27),
    .A2(_061_),
    .B1(_063_),
    .X(_003_));
 sky130_fd_sc_hd__a21oi_2 _093_ (.A1(net28),
    .A2(_062_),
    .B1(net35),
    .Y(_064_));
 sky130_fd_sc_hd__o21a_2 _094_ (.A1(net28),
    .A2(_062_),
    .B1(_064_),
    .X(_004_));
 sky130_fd_sc_hd__a21oi_2 _095_ (.A1(net28),
    .A2(_062_),
    .B1(net29),
    .Y(_065_));
 sky130_fd_sc_hd__and2_2 _096_ (.A(net28),
    .B(net29),
    .X(_066_));
 sky130_fd_sc_hd__and2_2 _097_ (.A(_062_),
    .B(_066_),
    .X(_067_));
 sky130_fd_sc_hd__nor3_2 _098_ (.A(net32),
    .B(_065_),
    .C(_067_),
    .Y(_005_));
 sky130_fd_sc_hd__and3_2 _099_ (.A(net30),
    .B(_062_),
    .C(_066_),
    .X(_068_));
 sky130_fd_sc_hd__nor2_2 _100_ (.A(net32),
    .B(_068_),
    .Y(_069_));
 sky130_fd_sc_hd__o21a_2 _101_ (.A1(net30),
    .A2(_067_),
    .B1(_069_),
    .X(_006_));
 sky130_fd_sc_hd__and4_2 _102_ (.A(net30),
    .B(net31),
    .C(_062_),
    .D(_066_),
    .X(_070_));
 sky130_fd_sc_hd__nor2_2 _103_ (.A(net32),
    .B(_070_),
    .Y(_071_));
 sky130_fd_sc_hd__o21a_2 _104_ (.A1(net31),
    .A2(_068_),
    .B1(_071_),
    .X(_007_));
 sky130_fd_sc_hd__a21oi_2 _105_ (.A1(net2),
    .A2(_070_),
    .B1(net33),
    .Y(_072_));
 sky130_fd_sc_hd__o21a_2 _106_ (.A1(net2),
    .A2(_070_),
    .B1(_072_),
    .X(_008_));
 sky130_fd_sc_hd__a21oi_2 _107_ (.A1(net2),
    .A2(_070_),
    .B1(net3),
    .Y(_073_));
 sky130_fd_sc_hd__and2_2 _108_ (.A(net2),
    .B(net3),
    .X(_074_));
 sky130_fd_sc_hd__and2_2 _109_ (.A(_070_),
    .B(_074_),
    .X(_075_));
 sky130_fd_sc_hd__nor3_2 _110_ (.A(net33),
    .B(_073_),
    .C(_075_),
    .Y(_009_));
 sky130_fd_sc_hd__and3_2 _111_ (.A(net4),
    .B(_070_),
    .C(_074_),
    .X(_076_));
 sky130_fd_sc_hd__nor2_2 _112_ (.A(net33),
    .B(_076_),
    .Y(_077_));
 sky130_fd_sc_hd__o21a_2 _113_ (.A1(net4),
    .A2(_075_),
    .B1(_077_),
    .X(_010_));
 sky130_fd_sc_hd__and4_2 _114_ (.A(net4),
    .B(net5),
    .C(_070_),
    .D(_074_),
    .X(_078_));
 sky130_fd_sc_hd__nor2_2 _115_ (.A(net33),
    .B(_078_),
    .Y(_079_));
 sky130_fd_sc_hd__o21a_2 _116_ (.A1(net5),
    .A2(_076_),
    .B1(_079_),
    .X(_011_));
 sky130_fd_sc_hd__a21oi_2 _117_ (.A1(net6),
    .A2(_078_),
    .B1(net33),
    .Y(_080_));
 sky130_fd_sc_hd__o21a_2 _118_ (.A1(net6),
    .A2(_078_),
    .B1(_080_),
    .X(_012_));
 sky130_fd_sc_hd__a21oi_2 _119_ (.A1(net6),
    .A2(_078_),
    .B1(net7),
    .Y(_081_));
 sky130_fd_sc_hd__and2_2 _120_ (.A(net6),
    .B(net7),
    .X(_082_));
 sky130_fd_sc_hd__and2_2 _121_ (.A(_078_),
    .B(_082_),
    .X(_083_));
 sky130_fd_sc_hd__nor3_2 _122_ (.A(net33),
    .B(_081_),
    .C(_083_),
    .Y(_013_));
 sky130_fd_sc_hd__and3_2 _123_ (.A(net8),
    .B(_078_),
    .C(_082_),
    .X(_030_));
 sky130_fd_sc_hd__nor2_2 _124_ (.A(net32),
    .B(_030_),
    .Y(_031_));
 sky130_fd_sc_hd__o21a_2 _125_ (.A1(net8),
    .A2(_083_),
    .B1(_031_),
    .X(_014_));
 sky130_fd_sc_hd__and4_2 _126_ (.A(net8),
    .B(net9),
    .C(_078_),
    .D(_082_),
    .X(_032_));
 sky130_fd_sc_hd__nor2_2 _127_ (.A(net34),
    .B(_032_),
    .Y(_033_));
 sky130_fd_sc_hd__o21a_2 _128_ (.A1(net9),
    .A2(_030_),
    .B1(_033_),
    .X(_015_));
 sky130_fd_sc_hd__a21oi_2 _129_ (.A1(net10),
    .A2(_032_),
    .B1(net34),
    .Y(_034_));
 sky130_fd_sc_hd__o21a_2 _130_ (.A1(net10),
    .A2(_032_),
    .B1(_034_),
    .X(_016_));
 sky130_fd_sc_hd__a21oi_2 _131_ (.A1(net10),
    .A2(_032_),
    .B1(net11),
    .Y(_035_));
 sky130_fd_sc_hd__and2_2 _132_ (.A(net10),
    .B(net11),
    .X(_036_));
 sky130_fd_sc_hd__and2_2 _133_ (.A(_032_),
    .B(_036_),
    .X(_037_));
 sky130_fd_sc_hd__nor3_2 _134_ (.A(net34),
    .B(_035_),
    .C(_037_),
    .Y(_017_));
 sky130_fd_sc_hd__and3_2 _135_ (.A(net12),
    .B(_032_),
    .C(_036_),
    .X(_038_));
 sky130_fd_sc_hd__nor2_2 _136_ (.A(net34),
    .B(_038_),
    .Y(_039_));
 sky130_fd_sc_hd__o21a_2 _137_ (.A1(net12),
    .A2(_037_),
    .B1(_039_),
    .X(_018_));
 sky130_fd_sc_hd__and4_2 _138_ (.A(net12),
    .B(net13),
    .C(_032_),
    .D(_036_),
    .X(_040_));
 sky130_fd_sc_hd__nor2_2 _139_ (.A(net34),
    .B(_040_),
    .Y(_041_));
 sky130_fd_sc_hd__o21a_2 _140_ (.A1(net13),
    .A2(_038_),
    .B1(_041_),
    .X(_019_));
 sky130_fd_sc_hd__a21oi_2 _141_ (.A1(net14),
    .A2(_040_),
    .B1(net34),
    .Y(_042_));
 sky130_fd_sc_hd__o21a_2 _142_ (.A1(net14),
    .A2(_040_),
    .B1(_042_),
    .X(_020_));
 sky130_fd_sc_hd__a21oi_2 _143_ (.A1(net14),
    .A2(_040_),
    .B1(net15),
    .Y(_043_));
 sky130_fd_sc_hd__and3_2 _144_ (.A(net14),
    .B(net15),
    .C(_040_),
    .X(_044_));
 sky130_fd_sc_hd__nor3_2 _145_ (.A(net36),
    .B(_043_),
    .C(_044_),
    .Y(_021_));
 sky130_fd_sc_hd__and4_2 _146_ (.A(net14),
    .B(net15),
    .C(net16),
    .D(_040_),
    .X(_045_));
 sky130_fd_sc_hd__nor2_2 _147_ (.A(net36),
    .B(_045_),
    .Y(_046_));
 sky130_fd_sc_hd__o21a_2 _148_ (.A1(net16),
    .A2(_044_),
    .B1(_046_),
    .X(_022_));
 sky130_fd_sc_hd__a21oi_2 _149_ (.A1(net17),
    .A2(_045_),
    .B1(net36),
    .Y(_047_));
 sky130_fd_sc_hd__o21a_2 _150_ (.A1(net17),
    .A2(_045_),
    .B1(_047_),
    .X(_023_));
 sky130_fd_sc_hd__a21oi_2 _151_ (.A1(net17),
    .A2(_045_),
    .B1(net18),
    .Y(_048_));
 sky130_fd_sc_hd__and3_2 _152_ (.A(net17),
    .B(net18),
    .C(_045_),
    .X(_049_));
 sky130_fd_sc_hd__nor3_2 _153_ (.A(net36),
    .B(_048_),
    .C(_049_),
    .Y(_024_));
 sky130_fd_sc_hd__a21oi_2 _154_ (.A1(net19),
    .A2(_049_),
    .B1(net37),
    .Y(_050_));
 sky130_fd_sc_hd__o21a_2 _155_ (.A1(net19),
    .A2(_049_),
    .B1(_050_),
    .X(_025_));
 sky130_fd_sc_hd__a21oi_2 _156_ (.A1(net19),
    .A2(_049_),
    .B1(net20),
    .Y(_051_));
 sky130_fd_sc_hd__and3_2 _157_ (.A(net18),
    .B(net19),
    .C(net20),
    .X(_052_));
 sky130_fd_sc_hd__and3_2 _158_ (.A(net17),
    .B(_045_),
    .C(_052_),
    .X(_053_));
 sky130_fd_sc_hd__nor3_2 _159_ (.A(net35),
    .B(_051_),
    .C(_053_),
    .Y(_026_));
 sky130_fd_sc_hd__a21oi_2 _160_ (.A1(net21),
    .A2(_053_),
    .B1(net37),
    .Y(_054_));
 sky130_fd_sc_hd__o21a_2 _161_ (.A1(net21),
    .A2(_053_),
    .B1(_054_),
    .X(_027_));
 sky130_fd_sc_hd__a21oi_2 _162_ (.A1(net21),
    .A2(_053_),
    .B1(net23),
    .Y(_055_));
 sky130_fd_sc_hd__and2_2 _163_ (.A(net21),
    .B(net23),
    .X(_056_));
 sky130_fd_sc_hd__and4_2 _164_ (.A(net17),
    .B(_045_),
    .C(_052_),
    .D(_056_),
    .X(_057_));
 sky130_fd_sc_hd__nor3_2 _165_ (.A(net37),
    .B(_055_),
    .C(_057_),
    .Y(_028_));
 sky130_fd_sc_hd__a21oi_2 _166_ (.A1(net24),
    .A2(_057_),
    .B1(net37),
    .Y(_058_));
 sky130_fd_sc_hd__o21a_2 _167_ (.A1(net24),
    .A2(_057_),
    .B1(_058_),
    .X(_029_));
 sky130_fd_sc_hd__dfxtp_2 _168_ (.CLK(clknet_2_2__leaf_clk),
    .D(_000_),
    .Q(net22));
 sky130_fd_sc_hd__dfxtp_2 _169_ (.CLK(clknet_2_2__leaf_clk),
    .D(_001_),
    .Q(net25));
 sky130_fd_sc_hd__dfxtp_2 _170_ (.CLK(clknet_2_2__leaf_clk),
    .D(_002_),
    .Q(net26));
 sky130_fd_sc_hd__dfxtp_2 _171_ (.CLK(clknet_2_2__leaf_clk),
    .D(_003_),
    .Q(net27));
 sky130_fd_sc_hd__dfxtp_2 _172_ (.CLK(clknet_2_2__leaf_clk),
    .D(_004_),
    .Q(net28));
 sky130_fd_sc_hd__dfxtp_2 _173_ (.CLK(clknet_2_2__leaf_clk),
    .D(_005_),
    .Q(net29));
 sky130_fd_sc_hd__dfxtp_2 _174_ (.CLK(clknet_2_0__leaf_clk),
    .D(_006_),
    .Q(net30));
 sky130_fd_sc_hd__dfxtp_2 _175_ (.CLK(clknet_2_0__leaf_clk),
    .D(_007_),
    .Q(net31));
 sky130_fd_sc_hd__dfxtp_2 _176_ (.CLK(clknet_2_0__leaf_clk),
    .D(_008_),
    .Q(net2));
 sky130_fd_sc_hd__dfxtp_2 _177_ (.CLK(clknet_2_0__leaf_clk),
    .D(_009_),
    .Q(net3));
 sky130_fd_sc_hd__dfxtp_2 _178_ (.CLK(clknet_2_0__leaf_clk),
    .D(_010_),
    .Q(net4));
 sky130_fd_sc_hd__dfxtp_2 _179_ (.CLK(clknet_2_0__leaf_clk),
    .D(_011_),
    .Q(net5));
 sky130_fd_sc_hd__dfxtp_2 _180_ (.CLK(clknet_2_0__leaf_clk),
    .D(_012_),
    .Q(net6));
 sky130_fd_sc_hd__dfxtp_2 _181_ (.CLK(clknet_2_1__leaf_clk),
    .D(_013_),
    .Q(net7));
 sky130_fd_sc_hd__dfxtp_2 _182_ (.CLK(clknet_2_0__leaf_clk),
    .D(_014_),
    .Q(net8));
 sky130_fd_sc_hd__dfxtp_2 _183_ (.CLK(clknet_2_1__leaf_clk),
    .D(_015_),
    .Q(net9));
 sky130_fd_sc_hd__dfxtp_2 _184_ (.CLK(clknet_2_1__leaf_clk),
    .D(_016_),
    .Q(net10));
 sky130_fd_sc_hd__dfxtp_2 _185_ (.CLK(clknet_2_1__leaf_clk),
    .D(_017_),
    .Q(net11));
 sky130_fd_sc_hd__dfxtp_2 _186_ (.CLK(clknet_2_1__leaf_clk),
    .D(_018_),
    .Q(net12));
 sky130_fd_sc_hd__dfxtp_2 _187_ (.CLK(clknet_2_1__leaf_clk),
    .D(_019_),
    .Q(net13));
 sky130_fd_sc_hd__dfxtp_2 _188_ (.CLK(clknet_2_3__leaf_clk),
    .D(_020_),
    .Q(net14));
 sky130_fd_sc_hd__dfxtp_2 _189_ (.CLK(clknet_2_3__leaf_clk),
    .D(_021_),
    .Q(net15));
 sky130_fd_sc_hd__dfxtp_2 _190_ (.CLK(clknet_2_3__leaf_clk),
    .D(_022_),
    .Q(net16));
 sky130_fd_sc_hd__dfxtp_2 _191_ (.CLK(clknet_2_1__leaf_clk),
    .D(_023_),
    .Q(net17));
 sky130_fd_sc_hd__dfxtp_2 _192_ (.CLK(clknet_2_3__leaf_clk),
    .D(_024_),
    .Q(net18));
 sky130_fd_sc_hd__dfxtp_2 _193_ (.CLK(clknet_2_2__leaf_clk),
    .D(_025_),
    .Q(net19));
 sky130_fd_sc_hd__dfxtp_2 _194_ (.CLK(clknet_2_2__leaf_clk),
    .D(_026_),
    .Q(net20));
 sky130_fd_sc_hd__dfxtp_2 _195_ (.CLK(clknet_2_3__leaf_clk),
    .D(_027_),
    .Q(net21));
 sky130_fd_sc_hd__dfxtp_2 _196_ (.CLK(clknet_2_3__leaf_clk),
    .D(_028_),
    .Q(net23));
 sky130_fd_sc_hd__dfxtp_2 _197_ (.CLK(clknet_2_3__leaf_clk),
    .D(_029_),
    .Q(net24));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_clk (.A(clk),
    .X(clknet_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_0__f_clk (.A(clknet_0_clk),
    .X(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_1__f_clk (.A(clknet_0_clk),
    .X(clknet_2_1__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_2__f_clk (.A(clknet_0_clk),
    .X(clknet_2_2__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_3__f_clk (.A(clknet_0_clk),
    .X(clknet_2_3__leaf_clk));
 sky130_fd_sc_hd__clkbuf_4 clkload0 (.A(clknet_2_1__leaf_clk));
 sky130_fd_sc_hd__clkbuf_4 clkload1 (.A(clknet_2_3__leaf_clk));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout32 (.A(net37),
    .X(net32));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout34 (.A(net37),
    .X(net34));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout35 (.A(net37),
    .X(net35));
 sky130_fd_sc_hd__clkdlybuf4s25_1 fanout37 (.A(net1),
    .X(net37));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input1 (.A(rst),
    .X(net1));
 sky130_fd_sc_hd__buf_4 load_slew33 (.A(net32),
    .X(net33));
 sky130_fd_sc_hd__buf_4 load_slew36 (.A(net35),
    .X(net36));
 sky130_fd_sc_hd__conb_1 mips_top (.LO(net));
 sky130_fd_sc_hd__conb_1 mips_top_100 (.LO(net100));
 sky130_fd_sc_hd__conb_1 mips_top_101 (.LO(net101));
 sky130_fd_sc_hd__conb_1 mips_top_102 (.LO(net102));
 sky130_fd_sc_hd__conb_1 mips_top_38 (.LO(net38));
 sky130_fd_sc_hd__conb_1 mips_top_39 (.LO(net39));
 sky130_fd_sc_hd__conb_1 mips_top_40 (.LO(net40));
 sky130_fd_sc_hd__conb_1 mips_top_41 (.LO(net41));
 sky130_fd_sc_hd__conb_1 mips_top_42 (.LO(net42));
 sky130_fd_sc_hd__conb_1 mips_top_43 (.LO(net43));
 sky130_fd_sc_hd__conb_1 mips_top_44 (.LO(net44));
 sky130_fd_sc_hd__conb_1 mips_top_45 (.LO(net45));
 sky130_fd_sc_hd__conb_1 mips_top_46 (.LO(net46));
 sky130_fd_sc_hd__conb_1 mips_top_47 (.LO(net47));
 sky130_fd_sc_hd__conb_1 mips_top_48 (.LO(net48));
 sky130_fd_sc_hd__conb_1 mips_top_49 (.LO(net49));
 sky130_fd_sc_hd__conb_1 mips_top_50 (.LO(net50));
 sky130_fd_sc_hd__conb_1 mips_top_51 (.LO(net51));
 sky130_fd_sc_hd__conb_1 mips_top_52 (.LO(net52));
 sky130_fd_sc_hd__conb_1 mips_top_53 (.LO(net53));
 sky130_fd_sc_hd__conb_1 mips_top_54 (.LO(net54));
 sky130_fd_sc_hd__conb_1 mips_top_55 (.LO(net55));
 sky130_fd_sc_hd__conb_1 mips_top_56 (.LO(net56));
 sky130_fd_sc_hd__conb_1 mips_top_57 (.LO(net57));
 sky130_fd_sc_hd__conb_1 mips_top_58 (.LO(net58));
 sky130_fd_sc_hd__conb_1 mips_top_59 (.LO(net59));
 sky130_fd_sc_hd__conb_1 mips_top_60 (.LO(net60));
 sky130_fd_sc_hd__conb_1 mips_top_61 (.LO(net61));
 sky130_fd_sc_hd__conb_1 mips_top_62 (.LO(net62));
 sky130_fd_sc_hd__conb_1 mips_top_63 (.LO(net63));
 sky130_fd_sc_hd__conb_1 mips_top_64 (.LO(net64));
 sky130_fd_sc_hd__conb_1 mips_top_65 (.LO(net65));
 sky130_fd_sc_hd__conb_1 mips_top_66 (.LO(net66));
 sky130_fd_sc_hd__conb_1 mips_top_67 (.LO(net67));
 sky130_fd_sc_hd__conb_1 mips_top_68 (.LO(net68));
 sky130_fd_sc_hd__conb_1 mips_top_69 (.LO(net69));
 sky130_fd_sc_hd__conb_1 mips_top_70 (.LO(net70));
 sky130_fd_sc_hd__conb_1 mips_top_71 (.LO(net71));
 sky130_fd_sc_hd__conb_1 mips_top_72 (.LO(net72));
 sky130_fd_sc_hd__conb_1 mips_top_73 (.LO(net73));
 sky130_fd_sc_hd__conb_1 mips_top_74 (.LO(net74));
 sky130_fd_sc_hd__conb_1 mips_top_75 (.LO(net75));
 sky130_fd_sc_hd__conb_1 mips_top_76 (.LO(net76));
 sky130_fd_sc_hd__conb_1 mips_top_77 (.LO(net77));
 sky130_fd_sc_hd__conb_1 mips_top_78 (.LO(net78));
 sky130_fd_sc_hd__conb_1 mips_top_79 (.LO(net79));
 sky130_fd_sc_hd__conb_1 mips_top_80 (.LO(net80));
 sky130_fd_sc_hd__conb_1 mips_top_81 (.LO(net81));
 sky130_fd_sc_hd__conb_1 mips_top_82 (.LO(net82));
 sky130_fd_sc_hd__conb_1 mips_top_83 (.LO(net83));
 sky130_fd_sc_hd__conb_1 mips_top_84 (.LO(net84));
 sky130_fd_sc_hd__conb_1 mips_top_85 (.LO(net85));
 sky130_fd_sc_hd__conb_1 mips_top_86 (.LO(net86));
 sky130_fd_sc_hd__conb_1 mips_top_87 (.LO(net87));
 sky130_fd_sc_hd__conb_1 mips_top_88 (.LO(net88));
 sky130_fd_sc_hd__conb_1 mips_top_89 (.LO(net89));
 sky130_fd_sc_hd__conb_1 mips_top_90 (.LO(net90));
 sky130_fd_sc_hd__conb_1 mips_top_91 (.LO(net91));
 sky130_fd_sc_hd__conb_1 mips_top_92 (.LO(net92));
 sky130_fd_sc_hd__conb_1 mips_top_93 (.LO(net93));
 sky130_fd_sc_hd__conb_1 mips_top_94 (.LO(net94));
 sky130_fd_sc_hd__conb_1 mips_top_95 (.LO(net95));
 sky130_fd_sc_hd__conb_1 mips_top_96 (.LO(net96));
 sky130_fd_sc_hd__conb_1 mips_top_97 (.LO(net97));
 sky130_fd_sc_hd__conb_1 mips_top_98 (.LO(net98));
 sky130_fd_sc_hd__conb_1 mips_top_99 (.LO(net99));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output10 (.A(net10),
    .X(pc_out[18]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output11 (.A(net11),
    .X(pc_out[19]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output12 (.A(net12),
    .X(pc_out[20]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output13 (.A(net13),
    .X(pc_out[21]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output14 (.A(net14),
    .X(pc_out[22]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output15 (.A(net15),
    .X(pc_out[23]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output16 (.A(net16),
    .X(pc_out[24]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output17 (.A(net17),
    .X(pc_out[25]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output18 (.A(net18),
    .X(pc_out[26]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output19 (.A(net19),
    .X(pc_out[27]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output2 (.A(net2),
    .X(pc_out[10]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output20 (.A(net20),
    .X(pc_out[28]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output21 (.A(net21),
    .X(pc_out[29]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output22 (.A(net22),
    .X(pc_out[2]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output23 (.A(net23),
    .X(pc_out[30]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output24 (.A(net24),
    .X(pc_out[31]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output25 (.A(net25),
    .X(pc_out[3]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output26 (.A(net26),
    .X(pc_out[4]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output27 (.A(net27),
    .X(pc_out[5]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output28 (.A(net28),
    .X(pc_out[6]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output29 (.A(net29),
    .X(pc_out[7]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output3 (.A(net3),
    .X(pc_out[11]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output30 (.A(net30),
    .X(pc_out[8]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output31 (.A(net31),
    .X(pc_out[9]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output4 (.A(net4),
    .X(pc_out[12]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output5 (.A(net5),
    .X(pc_out[13]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output6 (.A(net6),
    .X(pc_out[14]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output7 (.A(net7),
    .X(pc_out[15]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output8 (.A(net8),
    .X(pc_out[16]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output9 (.A(net9),
    .X(pc_out[17]));
 assign alu_result_out[0] = net;
 assign alu_result_out[10] = net47;
 assign alu_result_out[11] = net48;
 assign alu_result_out[12] = net49;
 assign alu_result_out[13] = net50;
 assign alu_result_out[14] = net51;
 assign alu_result_out[15] = net52;
 assign alu_result_out[16] = net53;
 assign alu_result_out[17] = net54;
 assign alu_result_out[18] = net55;
 assign alu_result_out[19] = net56;
 assign alu_result_out[1] = net38;
 assign alu_result_out[20] = net57;
 assign alu_result_out[21] = net58;
 assign alu_result_out[22] = net59;
 assign alu_result_out[23] = net60;
 assign alu_result_out[24] = net61;
 assign alu_result_out[25] = net62;
 assign alu_result_out[26] = net63;
 assign alu_result_out[27] = net64;
 assign alu_result_out[28] = net65;
 assign alu_result_out[29] = net66;
 assign alu_result_out[2] = net39;
 assign alu_result_out[30] = net67;
 assign alu_result_out[31] = net68;
 assign alu_result_out[3] = net40;
 assign alu_result_out[4] = net41;
 assign alu_result_out[5] = net42;
 assign alu_result_out[6] = net43;
 assign alu_result_out[7] = net44;
 assign alu_result_out[8] = net45;
 assign alu_result_out[9] = net46;
 assign instr_out[0] = net69;
 assign instr_out[10] = net79;
 assign instr_out[11] = net80;
 assign instr_out[12] = net81;
 assign instr_out[13] = net82;
 assign instr_out[14] = net83;
 assign instr_out[15] = net84;
 assign instr_out[16] = net85;
 assign instr_out[17] = net86;
 assign instr_out[18] = net87;
 assign instr_out[19] = net88;
 assign instr_out[1] = net70;
 assign instr_out[20] = net89;
 assign instr_out[21] = net90;
 assign instr_out[22] = net91;
 assign instr_out[23] = net92;
 assign instr_out[24] = net93;
 assign instr_out[25] = net94;
 assign instr_out[26] = net95;
 assign instr_out[27] = net96;
 assign instr_out[28] = net97;
 assign instr_out[29] = net98;
 assign instr_out[2] = net71;
 assign instr_out[30] = net99;
 assign instr_out[31] = net100;
 assign instr_out[3] = net72;
 assign instr_out[4] = net73;
 assign instr_out[5] = net74;
 assign instr_out[6] = net75;
 assign instr_out[7] = net76;
 assign instr_out[8] = net77;
 assign instr_out[9] = net78;
 assign pc_out[0] = net101;
 assign pc_out[1] = net102;
endmodule
