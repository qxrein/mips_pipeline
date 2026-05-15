module mips_top (clk,
    rst,
    alu_result_out,
    instr_out,
    pc_out,
    VPWR,
    VGND);
 input clk;
 input rst;
 output [31:0] alu_result_out;
 output [31:0] instr_out;
 output [31:0] pc_out;
 inout VPWR;
 inout VGND;

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
 sky130_fd_sc_hd__nor2_2 _084_ (.A(pc_out[2]),
    .B(rst),
    .Y(_000_));
 sky130_fd_sc_hd__a21oi_2 _085_ (.A1(pc_out[2]),
    .A2(pc_out[3]),
    .B1(rst),
    .Y(_059_));
 sky130_fd_sc_hd__o21a_2 _086_ (.A1(pc_out[2]),
    .A2(pc_out[3]),
    .B1(_059_),
    .X(_001_));
 sky130_fd_sc_hd__a21oi_2 _087_ (.A1(pc_out[2]),
    .A2(pc_out[3]),
    .B1(pc_out[4]),
    .Y(_060_));
 sky130_fd_sc_hd__and3_2 _088_ (.A(pc_out[2]),
    .B(pc_out[3]),
    .C(pc_out[4]),
    .X(_061_));
 sky130_fd_sc_hd__nor3_2 _089_ (.A(rst),
    .B(_060_),
    .C(_061_),
    .Y(_002_));
 sky130_fd_sc_hd__and4_2 _090_ (.A(pc_out[2]),
    .B(pc_out[3]),
    .C(pc_out[4]),
    .D(pc_out[5]),
    .X(_062_));
 sky130_fd_sc_hd__nor2_2 _091_ (.A(rst),
    .B(_062_),
    .Y(_063_));
 sky130_fd_sc_hd__o21a_2 _092_ (.A1(pc_out[5]),
    .A2(_061_),
    .B1(_063_),
    .X(_003_));
 sky130_fd_sc_hd__a21oi_2 _093_ (.A1(pc_out[6]),
    .A2(_062_),
    .B1(rst),
    .Y(_064_));
 sky130_fd_sc_hd__o21a_2 _094_ (.A1(pc_out[6]),
    .A2(_062_),
    .B1(_064_),
    .X(_004_));
 sky130_fd_sc_hd__a21oi_2 _095_ (.A1(pc_out[6]),
    .A2(_062_),
    .B1(pc_out[7]),
    .Y(_065_));
 sky130_fd_sc_hd__and2_2 _096_ (.A(pc_out[6]),
    .B(pc_out[7]),
    .X(_066_));
 sky130_fd_sc_hd__and2_2 _097_ (.A(_062_),
    .B(_066_),
    .X(_067_));
 sky130_fd_sc_hd__nor3_2 _098_ (.A(rst),
    .B(_065_),
    .C(_067_),
    .Y(_005_));
 sky130_fd_sc_hd__and3_2 _099_ (.A(pc_out[8]),
    .B(_062_),
    .C(_066_),
    .X(_068_));
 sky130_fd_sc_hd__nor2_2 _100_ (.A(rst),
    .B(_068_),
    .Y(_069_));
 sky130_fd_sc_hd__o21a_2 _101_ (.A1(pc_out[8]),
    .A2(_067_),
    .B1(_069_),
    .X(_006_));
 sky130_fd_sc_hd__and4_2 _102_ (.A(pc_out[8]),
    .B(pc_out[9]),
    .C(_062_),
    .D(_066_),
    .X(_070_));
 sky130_fd_sc_hd__nor2_2 _103_ (.A(rst),
    .B(_070_),
    .Y(_071_));
 sky130_fd_sc_hd__o21a_2 _104_ (.A1(pc_out[9]),
    .A2(_068_),
    .B1(_071_),
    .X(_007_));
 sky130_fd_sc_hd__a21oi_2 _105_ (.A1(pc_out[10]),
    .A2(_070_),
    .B1(rst),
    .Y(_072_));
 sky130_fd_sc_hd__o21a_2 _106_ (.A1(pc_out[10]),
    .A2(_070_),
    .B1(_072_),
    .X(_008_));
 sky130_fd_sc_hd__a21oi_2 _107_ (.A1(pc_out[10]),
    .A2(_070_),
    .B1(pc_out[11]),
    .Y(_073_));
 sky130_fd_sc_hd__and2_2 _108_ (.A(pc_out[10]),
    .B(pc_out[11]),
    .X(_074_));
 sky130_fd_sc_hd__and2_2 _109_ (.A(_070_),
    .B(_074_),
    .X(_075_));
 sky130_fd_sc_hd__nor3_2 _110_ (.A(rst),
    .B(_073_),
    .C(_075_),
    .Y(_009_));
 sky130_fd_sc_hd__and3_2 _111_ (.A(pc_out[12]),
    .B(_070_),
    .C(_074_),
    .X(_076_));
 sky130_fd_sc_hd__nor2_2 _112_ (.A(rst),
    .B(_076_),
    .Y(_077_));
 sky130_fd_sc_hd__o21a_2 _113_ (.A1(pc_out[12]),
    .A2(_075_),
    .B1(_077_),
    .X(_010_));
 sky130_fd_sc_hd__and4_2 _114_ (.A(pc_out[12]),
    .B(pc_out[13]),
    .C(_070_),
    .D(_074_),
    .X(_078_));
 sky130_fd_sc_hd__nor2_2 _115_ (.A(rst),
    .B(_078_),
    .Y(_079_));
 sky130_fd_sc_hd__o21a_2 _116_ (.A1(pc_out[13]),
    .A2(_076_),
    .B1(_079_),
    .X(_011_));
 sky130_fd_sc_hd__a21oi_2 _117_ (.A1(pc_out[14]),
    .A2(_078_),
    .B1(rst),
    .Y(_080_));
 sky130_fd_sc_hd__o21a_2 _118_ (.A1(pc_out[14]),
    .A2(_078_),
    .B1(_080_),
    .X(_012_));
 sky130_fd_sc_hd__a21oi_2 _119_ (.A1(pc_out[14]),
    .A2(_078_),
    .B1(pc_out[15]),
    .Y(_081_));
 sky130_fd_sc_hd__and2_2 _120_ (.A(pc_out[14]),
    .B(pc_out[15]),
    .X(_082_));
 sky130_fd_sc_hd__and2_2 _121_ (.A(_078_),
    .B(_082_),
    .X(_083_));
 sky130_fd_sc_hd__nor3_2 _122_ (.A(rst),
    .B(_081_),
    .C(_083_),
    .Y(_013_));
 sky130_fd_sc_hd__and3_2 _123_ (.A(pc_out[16]),
    .B(_078_),
    .C(_082_),
    .X(_030_));
 sky130_fd_sc_hd__nor2_2 _124_ (.A(rst),
    .B(_030_),
    .Y(_031_));
 sky130_fd_sc_hd__o21a_2 _125_ (.A1(pc_out[16]),
    .A2(_083_),
    .B1(_031_),
    .X(_014_));
 sky130_fd_sc_hd__and4_2 _126_ (.A(pc_out[16]),
    .B(pc_out[17]),
    .C(_078_),
    .D(_082_),
    .X(_032_));
 sky130_fd_sc_hd__nor2_2 _127_ (.A(rst),
    .B(_032_),
    .Y(_033_));
 sky130_fd_sc_hd__o21a_2 _128_ (.A1(pc_out[17]),
    .A2(_030_),
    .B1(_033_),
    .X(_015_));
 sky130_fd_sc_hd__a21oi_2 _129_ (.A1(pc_out[18]),
    .A2(_032_),
    .B1(rst),
    .Y(_034_));
 sky130_fd_sc_hd__o21a_2 _130_ (.A1(pc_out[18]),
    .A2(_032_),
    .B1(_034_),
    .X(_016_));
 sky130_fd_sc_hd__a21oi_2 _131_ (.A1(pc_out[18]),
    .A2(_032_),
    .B1(pc_out[19]),
    .Y(_035_));
 sky130_fd_sc_hd__and2_2 _132_ (.A(pc_out[18]),
    .B(pc_out[19]),
    .X(_036_));
 sky130_fd_sc_hd__and2_2 _133_ (.A(_032_),
    .B(_036_),
    .X(_037_));
 sky130_fd_sc_hd__nor3_2 _134_ (.A(rst),
    .B(_035_),
    .C(_037_),
    .Y(_017_));
 sky130_fd_sc_hd__and3_2 _135_ (.A(pc_out[20]),
    .B(_032_),
    .C(_036_),
    .X(_038_));
 sky130_fd_sc_hd__nor2_2 _136_ (.A(rst),
    .B(_038_),
    .Y(_039_));
 sky130_fd_sc_hd__o21a_2 _137_ (.A1(pc_out[20]),
    .A2(_037_),
    .B1(_039_),
    .X(_018_));
 sky130_fd_sc_hd__and4_2 _138_ (.A(pc_out[20]),
    .B(pc_out[21]),
    .C(_032_),
    .D(_036_),
    .X(_040_));
 sky130_fd_sc_hd__nor2_2 _139_ (.A(rst),
    .B(_040_),
    .Y(_041_));
 sky130_fd_sc_hd__o21a_2 _140_ (.A1(pc_out[21]),
    .A2(_038_),
    .B1(_041_),
    .X(_019_));
 sky130_fd_sc_hd__a21oi_2 _141_ (.A1(pc_out[22]),
    .A2(_040_),
    .B1(rst),
    .Y(_042_));
 sky130_fd_sc_hd__o21a_2 _142_ (.A1(pc_out[22]),
    .A2(_040_),
    .B1(_042_),
    .X(_020_));
 sky130_fd_sc_hd__a21oi_2 _143_ (.A1(pc_out[22]),
    .A2(_040_),
    .B1(pc_out[23]),
    .Y(_043_));
 sky130_fd_sc_hd__and3_2 _144_ (.A(pc_out[22]),
    .B(pc_out[23]),
    .C(_040_),
    .X(_044_));
 sky130_fd_sc_hd__nor3_2 _145_ (.A(rst),
    .B(_043_),
    .C(_044_),
    .Y(_021_));
 sky130_fd_sc_hd__and4_2 _146_ (.A(pc_out[22]),
    .B(pc_out[23]),
    .C(pc_out[24]),
    .D(_040_),
    .X(_045_));
 sky130_fd_sc_hd__nor2_2 _147_ (.A(rst),
    .B(_045_),
    .Y(_046_));
 sky130_fd_sc_hd__o21a_2 _148_ (.A1(pc_out[24]),
    .A2(_044_),
    .B1(_046_),
    .X(_022_));
 sky130_fd_sc_hd__a21oi_2 _149_ (.A1(pc_out[25]),
    .A2(_045_),
    .B1(rst),
    .Y(_047_));
 sky130_fd_sc_hd__o21a_2 _150_ (.A1(pc_out[25]),
    .A2(_045_),
    .B1(_047_),
    .X(_023_));
 sky130_fd_sc_hd__a21oi_2 _151_ (.A1(pc_out[25]),
    .A2(_045_),
    .B1(pc_out[26]),
    .Y(_048_));
 sky130_fd_sc_hd__and3_2 _152_ (.A(pc_out[25]),
    .B(pc_out[26]),
    .C(_045_),
    .X(_049_));
 sky130_fd_sc_hd__nor3_2 _153_ (.A(rst),
    .B(_048_),
    .C(_049_),
    .Y(_024_));
 sky130_fd_sc_hd__a21oi_2 _154_ (.A1(pc_out[27]),
    .A2(_049_),
    .B1(rst),
    .Y(_050_));
 sky130_fd_sc_hd__o21a_2 _155_ (.A1(pc_out[27]),
    .A2(_049_),
    .B1(_050_),
    .X(_025_));
 sky130_fd_sc_hd__a21oi_2 _156_ (.A1(pc_out[27]),
    .A2(_049_),
    .B1(pc_out[28]),
    .Y(_051_));
 sky130_fd_sc_hd__and3_2 _157_ (.A(pc_out[26]),
    .B(pc_out[27]),
    .C(pc_out[28]),
    .X(_052_));
 sky130_fd_sc_hd__and3_2 _158_ (.A(pc_out[25]),
    .B(_045_),
    .C(_052_),
    .X(_053_));
 sky130_fd_sc_hd__nor3_2 _159_ (.A(rst),
    .B(_051_),
    .C(_053_),
    .Y(_026_));
 sky130_fd_sc_hd__a21oi_2 _160_ (.A1(pc_out[29]),
    .A2(_053_),
    .B1(rst),
    .Y(_054_));
 sky130_fd_sc_hd__o21a_2 _161_ (.A1(pc_out[29]),
    .A2(_053_),
    .B1(_054_),
    .X(_027_));
 sky130_fd_sc_hd__a21oi_2 _162_ (.A1(pc_out[29]),
    .A2(_053_),
    .B1(pc_out[30]),
    .Y(_055_));
 sky130_fd_sc_hd__and2_2 _163_ (.A(pc_out[29]),
    .B(pc_out[30]),
    .X(_056_));
 sky130_fd_sc_hd__and4_2 _164_ (.A(pc_out[25]),
    .B(_045_),
    .C(_052_),
    .D(_056_),
    .X(_057_));
 sky130_fd_sc_hd__nor3_2 _165_ (.A(rst),
    .B(_055_),
    .C(_057_),
    .Y(_028_));
 sky130_fd_sc_hd__a21oi_2 _166_ (.A1(pc_out[31]),
    .A2(_057_),
    .B1(rst),
    .Y(_058_));
 sky130_fd_sc_hd__o21a_2 _167_ (.A1(pc_out[31]),
    .A2(_057_),
    .B1(_058_),
    .X(_029_));
 sky130_fd_sc_hd__dfxtp_2 _168_ (.CLK(clk),
    .D(_000_),
    .Q(pc_out[2]));
 sky130_fd_sc_hd__dfxtp_2 _169_ (.CLK(clk),
    .D(_001_),
    .Q(pc_out[3]));
 sky130_fd_sc_hd__dfxtp_2 _170_ (.CLK(clk),
    .D(_002_),
    .Q(pc_out[4]));
 sky130_fd_sc_hd__dfxtp_2 _171_ (.CLK(clk),
    .D(_003_),
    .Q(pc_out[5]));
 sky130_fd_sc_hd__dfxtp_2 _172_ (.CLK(clk),
    .D(_004_),
    .Q(pc_out[6]));
 sky130_fd_sc_hd__dfxtp_2 _173_ (.CLK(clk),
    .D(_005_),
    .Q(pc_out[7]));
 sky130_fd_sc_hd__dfxtp_2 _174_ (.CLK(clk),
    .D(_006_),
    .Q(pc_out[8]));
 sky130_fd_sc_hd__dfxtp_2 _175_ (.CLK(clk),
    .D(_007_),
    .Q(pc_out[9]));
 sky130_fd_sc_hd__dfxtp_2 _176_ (.CLK(clk),
    .D(_008_),
    .Q(pc_out[10]));
 sky130_fd_sc_hd__dfxtp_2 _177_ (.CLK(clk),
    .D(_009_),
    .Q(pc_out[11]));
 sky130_fd_sc_hd__dfxtp_2 _178_ (.CLK(clk),
    .D(_010_),
    .Q(pc_out[12]));
 sky130_fd_sc_hd__dfxtp_2 _179_ (.CLK(clk),
    .D(_011_),
    .Q(pc_out[13]));
 sky130_fd_sc_hd__dfxtp_2 _180_ (.CLK(clk),
    .D(_012_),
    .Q(pc_out[14]));
 sky130_fd_sc_hd__dfxtp_2 _181_ (.CLK(clk),
    .D(_013_),
    .Q(pc_out[15]));
 sky130_fd_sc_hd__dfxtp_2 _182_ (.CLK(clk),
    .D(_014_),
    .Q(pc_out[16]));
 sky130_fd_sc_hd__dfxtp_2 _183_ (.CLK(clk),
    .D(_015_),
    .Q(pc_out[17]));
 sky130_fd_sc_hd__dfxtp_2 _184_ (.CLK(clk),
    .D(_016_),
    .Q(pc_out[18]));
 sky130_fd_sc_hd__dfxtp_2 _185_ (.CLK(clk),
    .D(_017_),
    .Q(pc_out[19]));
 sky130_fd_sc_hd__dfxtp_2 _186_ (.CLK(clk),
    .D(_018_),
    .Q(pc_out[20]));
 sky130_fd_sc_hd__dfxtp_2 _187_ (.CLK(clk),
    .D(_019_),
    .Q(pc_out[21]));
 sky130_fd_sc_hd__dfxtp_2 _188_ (.CLK(clk),
    .D(_020_),
    .Q(pc_out[22]));
 sky130_fd_sc_hd__dfxtp_2 _189_ (.CLK(clk),
    .D(_021_),
    .Q(pc_out[23]));
 sky130_fd_sc_hd__dfxtp_2 _190_ (.CLK(clk),
    .D(_022_),
    .Q(pc_out[24]));
 sky130_fd_sc_hd__dfxtp_2 _191_ (.CLK(clk),
    .D(_023_),
    .Q(pc_out[25]));
 sky130_fd_sc_hd__dfxtp_2 _192_ (.CLK(clk),
    .D(_024_),
    .Q(pc_out[26]));
 sky130_fd_sc_hd__dfxtp_2 _193_ (.CLK(clk),
    .D(_025_),
    .Q(pc_out[27]));
 sky130_fd_sc_hd__dfxtp_2 _194_ (.CLK(clk),
    .D(_026_),
    .Q(pc_out[28]));
 sky130_fd_sc_hd__dfxtp_2 _195_ (.CLK(clk),
    .D(_027_),
    .Q(pc_out[29]));
 sky130_fd_sc_hd__dfxtp_2 _196_ (.CLK(clk),
    .D(_028_),
    .Q(pc_out[30]));
 sky130_fd_sc_hd__dfxtp_2 _197_ (.CLK(clk),
    .D(_029_),
    .Q(pc_out[31]));
 sky130_fd_sc_hd__conb_1 _198_ (.LO(alu_result_out[0]));
 sky130_fd_sc_hd__conb_1 _199_ (.LO(alu_result_out[1]));
 sky130_fd_sc_hd__conb_1 _200_ (.LO(alu_result_out[2]));
 sky130_fd_sc_hd__conb_1 _201_ (.LO(alu_result_out[3]));
 sky130_fd_sc_hd__conb_1 _202_ (.LO(alu_result_out[4]));
 sky130_fd_sc_hd__conb_1 _203_ (.LO(alu_result_out[5]));
 sky130_fd_sc_hd__conb_1 _204_ (.LO(alu_result_out[6]));
 sky130_fd_sc_hd__conb_1 _205_ (.LO(alu_result_out[7]));
 sky130_fd_sc_hd__conb_1 _206_ (.LO(alu_result_out[8]));
 sky130_fd_sc_hd__conb_1 _207_ (.LO(alu_result_out[9]));
 sky130_fd_sc_hd__conb_1 _208_ (.LO(alu_result_out[10]));
 sky130_fd_sc_hd__conb_1 _209_ (.LO(alu_result_out[11]));
 sky130_fd_sc_hd__conb_1 _210_ (.LO(alu_result_out[12]));
 sky130_fd_sc_hd__conb_1 _211_ (.LO(alu_result_out[13]));
 sky130_fd_sc_hd__conb_1 _212_ (.LO(alu_result_out[14]));
 sky130_fd_sc_hd__conb_1 _213_ (.LO(alu_result_out[15]));
 sky130_fd_sc_hd__conb_1 _214_ (.LO(alu_result_out[16]));
 sky130_fd_sc_hd__conb_1 _215_ (.LO(alu_result_out[17]));
 sky130_fd_sc_hd__conb_1 _216_ (.LO(alu_result_out[18]));
 sky130_fd_sc_hd__conb_1 _217_ (.LO(alu_result_out[19]));
 sky130_fd_sc_hd__conb_1 _218_ (.LO(alu_result_out[20]));
 sky130_fd_sc_hd__conb_1 _219_ (.LO(alu_result_out[21]));
 sky130_fd_sc_hd__conb_1 _220_ (.LO(alu_result_out[22]));
 sky130_fd_sc_hd__conb_1 _221_ (.LO(alu_result_out[23]));
 sky130_fd_sc_hd__conb_1 _222_ (.LO(alu_result_out[24]));
 sky130_fd_sc_hd__conb_1 _223_ (.LO(alu_result_out[25]));
 sky130_fd_sc_hd__conb_1 _224_ (.LO(alu_result_out[26]));
 sky130_fd_sc_hd__conb_1 _225_ (.LO(alu_result_out[27]));
 sky130_fd_sc_hd__conb_1 _226_ (.LO(alu_result_out[28]));
 sky130_fd_sc_hd__conb_1 _227_ (.LO(alu_result_out[29]));
 sky130_fd_sc_hd__conb_1 _228_ (.LO(alu_result_out[30]));
 sky130_fd_sc_hd__conb_1 _229_ (.LO(alu_result_out[31]));
 sky130_fd_sc_hd__conb_1 _230_ (.LO(instr_out[0]));
 sky130_fd_sc_hd__conb_1 _231_ (.LO(instr_out[1]));
 sky130_fd_sc_hd__conb_1 _232_ (.LO(instr_out[2]));
 sky130_fd_sc_hd__conb_1 _233_ (.LO(instr_out[3]));
 sky130_fd_sc_hd__conb_1 _234_ (.LO(instr_out[4]));
 sky130_fd_sc_hd__conb_1 _235_ (.LO(instr_out[5]));
 sky130_fd_sc_hd__conb_1 _236_ (.LO(instr_out[6]));
 sky130_fd_sc_hd__conb_1 _237_ (.LO(instr_out[7]));
 sky130_fd_sc_hd__conb_1 _238_ (.LO(instr_out[8]));
 sky130_fd_sc_hd__conb_1 _239_ (.LO(instr_out[9]));
 sky130_fd_sc_hd__conb_1 _240_ (.LO(instr_out[10]));
 sky130_fd_sc_hd__conb_1 _241_ (.LO(instr_out[11]));
 sky130_fd_sc_hd__conb_1 _242_ (.LO(instr_out[12]));
 sky130_fd_sc_hd__conb_1 _243_ (.LO(instr_out[13]));
 sky130_fd_sc_hd__conb_1 _244_ (.LO(instr_out[14]));
 sky130_fd_sc_hd__conb_1 _245_ (.LO(instr_out[15]));
 sky130_fd_sc_hd__conb_1 _246_ (.LO(instr_out[16]));
 sky130_fd_sc_hd__conb_1 _247_ (.LO(instr_out[17]));
 sky130_fd_sc_hd__conb_1 _248_ (.LO(instr_out[18]));
 sky130_fd_sc_hd__conb_1 _249_ (.LO(instr_out[19]));
 sky130_fd_sc_hd__conb_1 _250_ (.LO(instr_out[20]));
 sky130_fd_sc_hd__conb_1 _251_ (.LO(instr_out[21]));
 sky130_fd_sc_hd__conb_1 _252_ (.LO(instr_out[22]));
 sky130_fd_sc_hd__conb_1 _253_ (.LO(instr_out[23]));
 sky130_fd_sc_hd__conb_1 _254_ (.LO(instr_out[24]));
 sky130_fd_sc_hd__conb_1 _255_ (.LO(instr_out[25]));
 sky130_fd_sc_hd__conb_1 _256_ (.LO(instr_out[26]));
 sky130_fd_sc_hd__conb_1 _257_ (.LO(instr_out[27]));
 sky130_fd_sc_hd__conb_1 _258_ (.LO(instr_out[28]));
 sky130_fd_sc_hd__conb_1 _259_ (.LO(instr_out[29]));
 sky130_fd_sc_hd__conb_1 _260_ (.LO(instr_out[30]));
 sky130_fd_sc_hd__conb_1 _261_ (.LO(instr_out[31]));
 sky130_fd_sc_hd__conb_1 _262_ (.LO(pc_out[0]));
 sky130_fd_sc_hd__conb_1 _263_ (.LO(pc_out[1]));
endmodule
