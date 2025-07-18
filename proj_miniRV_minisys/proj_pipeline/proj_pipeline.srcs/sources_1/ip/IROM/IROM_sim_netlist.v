// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Jul 17 18:51:19 2025
// Host        : kuudere running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {e:/Experiment
//               Files/CPU_desigin/LAB2/proj_miniRV_minisys/proj_pipeline/proj_pipeline.srcs/sources_1/ip/IROM/IROM_sim_netlist.v}
// Design      : IROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "IROM,dist_mem_gen_v8_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module IROM
   (a,
    spo);
  input [13:0]a;
  output [31:0]spo;

  wire [13:0]a;
  wire [31:0]spo;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;

  (* C_FAMILY = "artix7" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "14" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "16384" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "IROM.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  IROM_dist_mem_gen_v8_0_12 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[31:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[31:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[31:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
        .we(1'b0));
endmodule

(* C_ADDR_WIDTH = "14" *) (* C_DEFAULT_DATA = "0" *) (* C_DEPTH = "16384" *) 
(* C_ELABORATION_DIR = "./" *) (* C_FAMILY = "artix7" *) (* C_HAS_CLK = "0" *) 
(* C_HAS_D = "0" *) (* C_HAS_DPO = "0" *) (* C_HAS_DPRA = "0" *) 
(* C_HAS_I_CE = "0" *) (* C_HAS_QDPO = "0" *) (* C_HAS_QDPO_CE = "0" *) 
(* C_HAS_QDPO_CLK = "0" *) (* C_HAS_QDPO_RST = "0" *) (* C_HAS_QDPO_SRST = "0" *) 
(* C_HAS_QSPO = "0" *) (* C_HAS_QSPO_CE = "0" *) (* C_HAS_QSPO_RST = "0" *) 
(* C_HAS_QSPO_SRST = "0" *) (* C_HAS_SPO = "1" *) (* C_HAS_WE = "0" *) 
(* C_MEM_INIT_FILE = "IROM.mif" *) (* C_MEM_TYPE = "0" *) (* C_PARSER_TYPE = "1" *) 
(* C_PIPELINE_STAGES = "0" *) (* C_QCE_JOINED = "0" *) (* C_QUALIFY_WE = "0" *) 
(* C_READ_MIF = "1" *) (* C_REG_A_D_INPUTS = "0" *) (* C_REG_DPRA_INPUT = "0" *) 
(* C_SYNC_ENABLE = "1" *) (* C_WIDTH = "32" *) (* ORIG_REF_NAME = "dist_mem_gen_v8_0_12" *) 
module IROM_dist_mem_gen_v8_0_12
   (a,
    d,
    dpra,
    clk,
    we,
    i_ce,
    qspo_ce,
    qdpo_ce,
    qdpo_clk,
    qspo_rst,
    qdpo_rst,
    qspo_srst,
    qdpo_srst,
    spo,
    dpo,
    qspo,
    qdpo);
  input [13:0]a;
  input [31:0]d;
  input [13:0]dpra;
  input clk;
  input we;
  input i_ce;
  input qspo_ce;
  input qdpo_ce;
  input qdpo_clk;
  input qspo_rst;
  input qdpo_rst;
  input qspo_srst;
  input qdpo_srst;
  output [31:0]spo;
  output [31:0]dpo;
  output [31:0]qspo;
  output [31:0]qdpo;

  wire \<const0> ;
  wire [13:0]a;
  wire [31:1]\^spo ;

  assign dpo[31] = \<const0> ;
  assign dpo[30] = \<const0> ;
  assign dpo[29] = \<const0> ;
  assign dpo[28] = \<const0> ;
  assign dpo[27] = \<const0> ;
  assign dpo[26] = \<const0> ;
  assign dpo[25] = \<const0> ;
  assign dpo[24] = \<const0> ;
  assign dpo[23] = \<const0> ;
  assign dpo[22] = \<const0> ;
  assign dpo[21] = \<const0> ;
  assign dpo[20] = \<const0> ;
  assign dpo[19] = \<const0> ;
  assign dpo[18] = \<const0> ;
  assign dpo[17] = \<const0> ;
  assign dpo[16] = \<const0> ;
  assign dpo[15] = \<const0> ;
  assign dpo[14] = \<const0> ;
  assign dpo[13] = \<const0> ;
  assign dpo[12] = \<const0> ;
  assign dpo[11] = \<const0> ;
  assign dpo[10] = \<const0> ;
  assign dpo[9] = \<const0> ;
  assign dpo[8] = \<const0> ;
  assign dpo[7] = \<const0> ;
  assign dpo[6] = \<const0> ;
  assign dpo[5] = \<const0> ;
  assign dpo[4] = \<const0> ;
  assign dpo[3] = \<const0> ;
  assign dpo[2] = \<const0> ;
  assign dpo[1] = \<const0> ;
  assign dpo[0] = \<const0> ;
  assign qdpo[31] = \<const0> ;
  assign qdpo[30] = \<const0> ;
  assign qdpo[29] = \<const0> ;
  assign qdpo[28] = \<const0> ;
  assign qdpo[27] = \<const0> ;
  assign qdpo[26] = \<const0> ;
  assign qdpo[25] = \<const0> ;
  assign qdpo[24] = \<const0> ;
  assign qdpo[23] = \<const0> ;
  assign qdpo[22] = \<const0> ;
  assign qdpo[21] = \<const0> ;
  assign qdpo[20] = \<const0> ;
  assign qdpo[19] = \<const0> ;
  assign qdpo[18] = \<const0> ;
  assign qdpo[17] = \<const0> ;
  assign qdpo[16] = \<const0> ;
  assign qdpo[15] = \<const0> ;
  assign qdpo[14] = \<const0> ;
  assign qdpo[13] = \<const0> ;
  assign qdpo[12] = \<const0> ;
  assign qdpo[11] = \<const0> ;
  assign qdpo[10] = \<const0> ;
  assign qdpo[9] = \<const0> ;
  assign qdpo[8] = \<const0> ;
  assign qdpo[7] = \<const0> ;
  assign qdpo[6] = \<const0> ;
  assign qdpo[5] = \<const0> ;
  assign qdpo[4] = \<const0> ;
  assign qdpo[3] = \<const0> ;
  assign qdpo[2] = \<const0> ;
  assign qdpo[1] = \<const0> ;
  assign qdpo[0] = \<const0> ;
  assign qspo[31] = \<const0> ;
  assign qspo[30] = \<const0> ;
  assign qspo[29] = \<const0> ;
  assign qspo[28] = \<const0> ;
  assign qspo[27] = \<const0> ;
  assign qspo[26] = \<const0> ;
  assign qspo[25] = \<const0> ;
  assign qspo[24] = \<const0> ;
  assign qspo[23] = \<const0> ;
  assign qspo[22] = \<const0> ;
  assign qspo[21] = \<const0> ;
  assign qspo[20] = \<const0> ;
  assign qspo[19] = \<const0> ;
  assign qspo[18] = \<const0> ;
  assign qspo[17] = \<const0> ;
  assign qspo[16] = \<const0> ;
  assign qspo[15] = \<const0> ;
  assign qspo[14] = \<const0> ;
  assign qspo[13] = \<const0> ;
  assign qspo[12] = \<const0> ;
  assign qspo[11] = \<const0> ;
  assign qspo[10] = \<const0> ;
  assign qspo[9] = \<const0> ;
  assign qspo[8] = \<const0> ;
  assign qspo[7] = \<const0> ;
  assign qspo[6] = \<const0> ;
  assign qspo[5] = \<const0> ;
  assign qspo[4] = \<const0> ;
  assign qspo[3] = \<const0> ;
  assign qspo[2] = \<const0> ;
  assign qspo[1] = \<const0> ;
  assign qspo[0] = \<const0> ;
  assign spo[31] = \^spo [31];
  assign spo[30] = \^spo [31];
  assign spo[29] = \^spo [31];
  assign spo[28:1] = \^spo [28:1];
  assign spo[0] = \^spo [1];
  GND GND
       (.G(\<const0> ));
  IROM_dist_mem_gen_v8_0_12_synth \synth_options.dist_mem_inst 
       (.a(a),
        .spo({\^spo [31],\^spo [28:1]}));
endmodule

(* ORIG_REF_NAME = "dist_mem_gen_v8_0_12_synth" *) 
module IROM_dist_mem_gen_v8_0_12_synth
   (spo,
    a);
  output [28:0]spo;
  input [13:0]a;

  wire [13:0]a;
  wire [28:0]spo;

  IROM_rom \gen_rom.rom_inst 
       (.a(a),
        .spo(spo));
endmodule

(* ORIG_REF_NAME = "rom" *) 
module IROM_rom
   (spo,
    a);
  output [28:0]spo;
  input [13:0]a;

  wire [13:0]a;
  wire [28:0]spo;
  wire \spo[0]_INST_0_i_1_n_0 ;
  wire \spo[10]_INST_0_i_1_n_0 ;
  wire \spo[10]_INST_0_i_2_n_0 ;
  wire \spo[10]_INST_0_i_3_n_0 ;
  wire \spo[11]_INST_0_i_1_n_0 ;
  wire \spo[11]_INST_0_i_2_n_0 ;
  wire \spo[11]_INST_0_i_3_n_0 ;
  wire \spo[12]_INST_0_i_1_n_0 ;
  wire \spo[12]_INST_0_i_2_n_0 ;
  wire \spo[12]_INST_0_i_3_n_0 ;
  wire \spo[13]_INST_0_i_1_n_0 ;
  wire \spo[13]_INST_0_i_2_n_0 ;
  wire \spo[13]_INST_0_i_3_n_0 ;
  wire \spo[14]_INST_0_i_1_n_0 ;
  wire \spo[14]_INST_0_i_2_n_0 ;
  wire \spo[14]_INST_0_i_3_n_0 ;
  wire \spo[15]_INST_0_i_1_n_0 ;
  wire \spo[15]_INST_0_i_2_n_0 ;
  wire \spo[15]_INST_0_i_3_n_0 ;
  wire \spo[16]_INST_0_i_1_n_0 ;
  wire \spo[16]_INST_0_i_2_n_0 ;
  wire \spo[16]_INST_0_i_3_n_0 ;
  wire \spo[17]_INST_0_i_1_n_0 ;
  wire \spo[17]_INST_0_i_2_n_0 ;
  wire \spo[17]_INST_0_i_3_n_0 ;
  wire \spo[18]_INST_0_i_1_n_0 ;
  wire \spo[18]_INST_0_i_2_n_0 ;
  wire \spo[18]_INST_0_i_3_n_0 ;
  wire \spo[19]_INST_0_i_1_n_0 ;
  wire \spo[19]_INST_0_i_2_n_0 ;
  wire \spo[19]_INST_0_i_3_n_0 ;
  wire \spo[20]_INST_0_i_1_n_0 ;
  wire \spo[20]_INST_0_i_2_n_0 ;
  wire \spo[20]_INST_0_i_3_n_0 ;
  wire \spo[21]_INST_0_i_1_n_0 ;
  wire \spo[21]_INST_0_i_2_n_0 ;
  wire \spo[21]_INST_0_i_3_n_0 ;
  wire \spo[22]_INST_0_i_1_n_0 ;
  wire \spo[22]_INST_0_i_2_n_0 ;
  wire \spo[22]_INST_0_i_3_n_0 ;
  wire \spo[22]_INST_0_i_4_n_0 ;
  wire \spo[23]_INST_0_i_1_n_0 ;
  wire \spo[23]_INST_0_i_2_n_0 ;
  wire \spo[23]_INST_0_i_3_n_0 ;
  wire \spo[24]_INST_0_i_1_n_0 ;
  wire \spo[24]_INST_0_i_2_n_0 ;
  wire \spo[24]_INST_0_i_3_n_0 ;
  wire \spo[24]_INST_0_i_4_n_0 ;
  wire \spo[25]_INST_0_i_1_n_0 ;
  wire \spo[25]_INST_0_i_2_n_0 ;
  wire \spo[25]_INST_0_i_3_n_0 ;
  wire \spo[26]_INST_0_i_1_n_0 ;
  wire \spo[26]_INST_0_i_2_n_0 ;
  wire \spo[26]_INST_0_i_3_n_0 ;
  wire \spo[27]_INST_0_i_1_n_0 ;
  wire \spo[27]_INST_0_i_2_n_0 ;
  wire \spo[28]_INST_0_i_1_n_0 ;
  wire \spo[28]_INST_0_i_2_n_0 ;
  wire \spo[29]_INST_0_i_1_n_0 ;
  wire \spo[29]_INST_0_i_2_n_0 ;
  wire \spo[29]_INST_0_i_3_n_0 ;
  wire \spo[2]_INST_0_i_1_n_0 ;
  wire \spo[2]_INST_0_i_2_n_0 ;
  wire \spo[2]_INST_0_i_3_n_0 ;
  wire \spo[3]_INST_0_i_1_n_0 ;
  wire \spo[3]_INST_0_i_2_n_0 ;
  wire \spo[3]_INST_0_i_3_n_0 ;
  wire \spo[4]_INST_0_i_1_n_0 ;
  wire \spo[4]_INST_0_i_2_n_0 ;
  wire \spo[4]_INST_0_i_3_n_0 ;
  wire \spo[5]_INST_0_i_1_n_0 ;
  wire \spo[5]_INST_0_i_2_n_0 ;
  wire \spo[5]_INST_0_i_3_n_0 ;
  wire \spo[5]_INST_0_i_4_n_0 ;
  wire \spo[6]_INST_0_i_1_n_0 ;
  wire \spo[6]_INST_0_i_2_n_0 ;
  wire \spo[6]_INST_0_i_3_n_0 ;
  wire \spo[6]_INST_0_i_4_n_0 ;
  wire \spo[7]_INST_0_i_1_n_0 ;
  wire \spo[7]_INST_0_i_2_n_0 ;
  wire \spo[7]_INST_0_i_3_n_0 ;
  wire \spo[8]_INST_0_i_1_n_0 ;
  wire \spo[8]_INST_0_i_2_n_0 ;
  wire \spo[8]_INST_0_i_3_n_0 ;
  wire \spo[9]_INST_0_i_1_n_0 ;
  wire \spo[9]_INST_0_i_2_n_0 ;
  wire \spo[9]_INST_0_i_3_n_0 ;

  LUT4 #(
    .INIT(16'h0004)) 
    \spo[0]_INST_0 
       (.I0(a[12]),
        .I1(\spo[0]_INST_0_i_1_n_0 ),
        .I2(a[11]),
        .I3(a[13]),
        .O(spo[0]));
  LUT6 #(
    .INIT(64'h0000000000001151)) 
    \spo[0]_INST_0_i_1 
       (.I0(a[9]),
        .I1(a[7]),
        .I2(\spo[5]_INST_0_i_4_n_0 ),
        .I3(a[5]),
        .I4(a[8]),
        .I5(a[10]),
        .O(\spo[0]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \spo[10]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[10]_INST_0_i_1_n_0 ),
        .I3(a[11]),
        .I4(a[13]),
        .O(spo[9]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \spo[10]_INST_0_i_1 
       (.I0(a[8]),
        .I1(\spo[10]_INST_0_i_2_n_0 ),
        .I2(a[5]),
        .I3(\spo[10]_INST_0_i_3_n_0 ),
        .I4(a[7]),
        .I5(a[9]),
        .O(\spo[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6F0F1E8F0F691357)) 
    \spo[10]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5FE2F7F3D2E5F6B9)) 
    \spo[10]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[6]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[10]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \spo[11]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[11]_INST_0_i_1_n_0 ),
        .I3(a[11]),
        .I4(a[13]),
        .O(spo[10]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \spo[11]_INST_0_i_1 
       (.I0(a[8]),
        .I1(\spo[11]_INST_0_i_2_n_0 ),
        .I2(a[5]),
        .I3(\spo[11]_INST_0_i_3_n_0 ),
        .I4(a[7]),
        .I5(a[9]),
        .O(\spo[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8F1F0F0F0F2EAE0)) 
    \spo[11]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hD858588CB8FFF9F5)) 
    \spo[11]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[6]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[11]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \spo[12]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[12]_INST_0_i_1_n_0 ),
        .I3(a[11]),
        .I4(a[13]),
        .O(spo[11]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \spo[12]_INST_0_i_1 
       (.I0(a[8]),
        .I1(\spo[12]_INST_0_i_2_n_0 ),
        .I2(a[5]),
        .I3(\spo[12]_INST_0_i_3_n_0 ),
        .I4(a[7]),
        .I5(a[9]),
        .O(\spo[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h090E0B0000080A5D)) 
    \spo[12]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[6]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[12]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3A1A3E0A2E2D2A22)) 
    \spo[12]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[6]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[12]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[13]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[13]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[12]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \spo[13]_INST_0_i_1 
       (.I0(\spo[13]_INST_0_i_2_n_0 ),
        .I1(a[5]),
        .I2(\spo[13]_INST_0_i_3_n_0 ),
        .I3(a[7]),
        .I4(\spo[24]_INST_0_i_4_n_0 ),
        .I5(a[8]),
        .O(\spo[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000414D8DD49)) 
    \spo[13]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[6]),
        .O(\spo[13]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEE6288888DD8C99B)) 
    \spo[13]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[6]),
        .O(\spo[13]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \spo[14]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[14]_INST_0_i_1_n_0 ),
        .I3(a[11]),
        .I4(a[13]),
        .O(spo[13]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \spo[14]_INST_0_i_1 
       (.I0(a[8]),
        .I1(\spo[14]_INST_0_i_2_n_0 ),
        .I2(a[5]),
        .I3(\spo[14]_INST_0_i_3_n_0 ),
        .I4(a[7]),
        .I5(a[9]),
        .O(\spo[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h130E0B808A186A59)) 
    \spo[14]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[6]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[14]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6A4A6E4E8E998F83)) 
    \spo[14]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[6]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[14]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[15]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[15]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[14]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \spo[15]_INST_0_i_1 
       (.I0(\spo[15]_INST_0_i_2_n_0 ),
        .I1(a[5]),
        .I2(\spo[15]_INST_0_i_3_n_0 ),
        .I3(a[7]),
        .I4(\spo[24]_INST_0_i_4_n_0 ),
        .I5(a[8]),
        .O(\spo[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2B1F3F848C2D467B)) 
    \spo[15]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[6]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[15]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2EAF0E1EBB1F0907)) 
    \spo[15]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[2]),
        .O(\spo[15]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \spo[16]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[16]_INST_0_i_1_n_0 ),
        .I3(a[11]),
        .I4(a[13]),
        .O(spo[15]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \spo[16]_INST_0_i_1 
       (.I0(a[8]),
        .I1(\spo[16]_INST_0_i_2_n_0 ),
        .I2(a[5]),
        .I3(\spo[16]_INST_0_i_3_n_0 ),
        .I4(a[7]),
        .I5(a[9]),
        .O(\spo[16]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2B76BB0098D8EEDB)) 
    \spo[16]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[6]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[16]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7EAEFEEB4AAD1FB3)) 
    \spo[16]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[6]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[16]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \spo[17]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[17]_INST_0_i_1_n_0 ),
        .I3(a[11]),
        .I4(a[13]),
        .O(spo[16]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \spo[17]_INST_0_i_1 
       (.I0(a[8]),
        .I1(\spo[17]_INST_0_i_2_n_0 ),
        .I2(a[5]),
        .I3(\spo[17]_INST_0_i_3_n_0 ),
        .I4(a[7]),
        .I5(a[9]),
        .O(\spo[17]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h780A6B8082A8AA79)) 
    \spo[17]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[6]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[17]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2A0E0A0B0A0D1F03)) 
    \spo[17]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[6]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[17]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[18]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[18]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[17]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \spo[18]_INST_0_i_1 
       (.I0(\spo[18]_INST_0_i_2_n_0 ),
        .I1(a[5]),
        .I2(\spo[18]_INST_0_i_3_n_0 ),
        .I3(a[7]),
        .I4(\spo[24]_INST_0_i_4_n_0 ),
        .I5(a[8]),
        .O(\spo[18]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8B6F8F041E0D0EDB)) 
    \spo[18]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[6]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[18]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEAEFFFBFFFD3ABB)) 
    \spo[18]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[6]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[18]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \spo[19]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[19]_INST_0_i_1_n_0 ),
        .I3(a[11]),
        .I4(a[13]),
        .O(spo[18]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \spo[19]_INST_0_i_1 
       (.I0(a[8]),
        .I1(\spo[19]_INST_0_i_2_n_0 ),
        .I2(a[5]),
        .I3(\spo[19]_INST_0_i_3_n_0 ),
        .I4(a[7]),
        .I5(a[9]),
        .O(\spo[19]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8F2F3A0F0F8F2A9)) 
    \spo[19]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[6]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[19]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h70505000F4F5F5F7)) 
    \spo[19]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[6]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[19]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[20]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[20]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[19]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \spo[20]_INST_0_i_1 
       (.I0(\spo[20]_INST_0_i_2_n_0 ),
        .I1(a[5]),
        .I2(\spo[20]_INST_0_i_3_n_0 ),
        .I3(a[7]),
        .I4(\spo[24]_INST_0_i_4_n_0 ),
        .I5(a[8]),
        .O(\spo[20]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1B8E0B3062183F0B)) 
    \spo[20]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[6]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[20]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h251064810013D1C7)) 
    \spo[20]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[6]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[20]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \spo[21]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[21]_INST_0_i_1_n_0 ),
        .I3(a[11]),
        .I4(a[13]),
        .O(spo[20]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \spo[21]_INST_0_i_1 
       (.I0(a[8]),
        .I1(\spo[21]_INST_0_i_2_n_0 ),
        .I2(a[5]),
        .I3(\spo[21]_INST_0_i_3_n_0 ),
        .I4(a[7]),
        .I5(a[9]),
        .O(\spo[21]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0704029409142403)) 
    \spo[21]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[6]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[21]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4564848025740301)) 
    \spo[21]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[2]),
        .O(\spo[21]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[22]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[22]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[21]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \spo[22]_INST_0_i_1 
       (.I0(\spo[22]_INST_0_i_2_n_0 ),
        .I1(a[5]),
        .I2(\spo[22]_INST_0_i_3_n_0 ),
        .I3(a[7]),
        .I4(\spo[22]_INST_0_i_4_n_0 ),
        .I5(a[8]),
        .O(\spo[22]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h102A062600009113)) 
    \spo[22]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[6]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[22]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h726252221A775A68)) 
    \spo[22]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[3]),
        .I3(a[6]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[22]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \spo[22]_INST_0_i_4 
       (.I0(a[0]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[6]),
        .I5(a[4]),
        .O(\spo[22]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \spo[23]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[23]_INST_0_i_1_n_0 ),
        .I3(a[11]),
        .I4(a[13]),
        .O(spo[22]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \spo[23]_INST_0_i_1 
       (.I0(a[8]),
        .I1(\spo[23]_INST_0_i_2_n_0 ),
        .I2(a[5]),
        .I3(\spo[23]_INST_0_i_3_n_0 ),
        .I4(a[7]),
        .I5(a[9]),
        .O(\spo[23]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h080000002B3404CB)) 
    \spo[23]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[6]),
        .O(\spo[23]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8400000165137003)) 
    \spo[23]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[6]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[23]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[24]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[24]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[23]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \spo[24]_INST_0_i_1 
       (.I0(\spo[24]_INST_0_i_2_n_0 ),
        .I1(a[5]),
        .I2(\spo[24]_INST_0_i_3_n_0 ),
        .I3(a[7]),
        .I4(\spo[24]_INST_0_i_4_n_0 ),
        .I5(a[8]),
        .O(\spo[24]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1002846201811041)) 
    \spo[24]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[6]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[24]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6888ED98498D3880)) 
    \spo[24]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[6]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[24]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \spo[24]_INST_0_i_4 
       (.I0(a[0]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[6]),
        .I5(a[4]),
        .O(\spo[24]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \spo[25]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[25]_INST_0_i_1_n_0 ),
        .I3(a[11]),
        .I4(a[13]),
        .O(spo[24]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \spo[25]_INST_0_i_1 
       (.I0(a[8]),
        .I1(\spo[25]_INST_0_i_2_n_0 ),
        .I2(a[5]),
        .I3(\spo[25]_INST_0_i_3_n_0 ),
        .I4(a[7]),
        .I5(a[9]),
        .O(\spo[25]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001415509)) 
    \spo[25]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[25]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2001A05400000000)) 
    \spo[25]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[25]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \spo[26]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[26]_INST_0_i_1_n_0 ),
        .I3(a[11]),
        .I4(a[13]),
        .O(spo[25]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \spo[26]_INST_0_i_1 
       (.I0(a[8]),
        .I1(\spo[26]_INST_0_i_2_n_0 ),
        .I2(a[5]),
        .I3(\spo[26]_INST_0_i_3_n_0 ),
        .I4(a[7]),
        .I5(a[9]),
        .O(\spo[26]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001401109)) 
    \spo[26]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[6]),
        .O(\spo[26]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2001A05400040000)) 
    \spo[26]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[26]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \spo[27]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[27]_INST_0_i_1_n_0 ),
        .I3(a[11]),
        .I4(a[13]),
        .O(spo[26]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \spo[27]_INST_0_i_1 
       (.I0(a[8]),
        .I1(\spo[28]_INST_0_i_2_n_0 ),
        .I2(a[5]),
        .I3(\spo[27]_INST_0_i_2_n_0 ),
        .I4(a[7]),
        .I5(a[9]),
        .O(\spo[27]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000001000000442)) 
    \spo[27]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[6]),
        .O(\spo[27]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \spo[28]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[28]_INST_0_i_1_n_0 ),
        .I3(a[11]),
        .I4(a[13]),
        .O(spo[27]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \spo[28]_INST_0_i_1 
       (.I0(a[8]),
        .I1(\spo[28]_INST_0_i_2_n_0 ),
        .I2(a[5]),
        .I3(\spo[29]_INST_0_i_3_n_0 ),
        .I4(a[7]),
        .I5(a[9]),
        .O(\spo[28]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200001011)) 
    \spo[28]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[28]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \spo[29]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[29]_INST_0_i_1_n_0 ),
        .I3(a[11]),
        .I4(a[13]),
        .O(spo[28]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \spo[29]_INST_0_i_1 
       (.I0(a[8]),
        .I1(\spo[29]_INST_0_i_2_n_0 ),
        .I2(a[5]),
        .I3(\spo[29]_INST_0_i_3_n_0 ),
        .I4(a[7]),
        .I5(a[9]),
        .O(\spo[29]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200100001)) 
    \spo[29]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[6]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[29]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2000005000000442)) 
    \spo[29]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[6]),
        .O(\spo[29]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[2]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[2]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[1]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \spo[2]_INST_0_i_1 
       (.I0(\spo[2]_INST_0_i_2_n_0 ),
        .I1(a[5]),
        .I2(\spo[2]_INST_0_i_3_n_0 ),
        .I3(a[7]),
        .I4(\spo[6]_INST_0_i_4_n_0 ),
        .I5(a[8]),
        .O(\spo[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000010000D)) 
    \spo[2]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[6]),
        .O(\spo[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000100080000002)) 
    \spo[2]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[3]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[3]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[2]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \spo[3]_INST_0_i_1 
       (.I0(\spo[3]_INST_0_i_2_n_0 ),
        .I1(a[5]),
        .I2(\spo[3]_INST_0_i_3_n_0 ),
        .I3(a[7]),
        .I4(\spo[6]_INST_0_i_4_n_0 ),
        .I5(a[8]),
        .O(\spo[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000201000000)) 
    \spo[3]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[6]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[0]),
        .O(\spo[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4000000100000000)) 
    \spo[3]_INST_0_i_3 
       (.I0(a[0]),
        .I1(a[6]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[3]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \spo[4]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[4]_INST_0_i_1_n_0 ),
        .I3(a[11]),
        .I4(a[13]),
        .O(spo[3]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \spo[4]_INST_0_i_1 
       (.I0(a[8]),
        .I1(\spo[4]_INST_0_i_2_n_0 ),
        .I2(a[5]),
        .I3(\spo[4]_INST_0_i_3_n_0 ),
        .I4(a[7]),
        .I5(a[9]),
        .O(\spo[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEF7BFEEAFA9B7BF5)) 
    \spo[4]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[6]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[2]),
        .O(\spo[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5B5A7E9BBFEFFBF5)) 
    \spo[4]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[6]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[5]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[5]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[4]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \spo[5]_INST_0_i_1 
       (.I0(\spo[5]_INST_0_i_2_n_0 ),
        .I1(a[5]),
        .I2(\spo[5]_INST_0_i_3_n_0 ),
        .I3(a[7]),
        .I4(\spo[5]_INST_0_i_4_n_0 ),
        .I5(a[8]),
        .O(\spo[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF270F1849BF4E4EF)) 
    \spo[5]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[6]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6C6DCCD8C86CDD93)) 
    \spo[5]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[6]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[1]),
        .O(\spo[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010101)) 
    \spo[5]_INST_0_i_4 
       (.I0(a[6]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[5]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[6]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[6]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[5]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \spo[6]_INST_0_i_1 
       (.I0(\spo[6]_INST_0_i_2_n_0 ),
        .I1(a[5]),
        .I2(\spo[6]_INST_0_i_3_n_0 ),
        .I3(a[7]),
        .I4(\spo[6]_INST_0_i_4_n_0 ),
        .I5(a[8]),
        .O(\spo[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h100180640080100A)) 
    \spo[6]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[6]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2480014040040042)) 
    \spo[6]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[6]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010010)) 
    \spo[6]_INST_0_i_4 
       (.I0(a[6]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[6]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[7]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[7]_INST_0_i_1_n_0 ),
        .I3(a[9]),
        .I4(a[11]),
        .I5(a[13]),
        .O(spo[6]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \spo[7]_INST_0_i_1 
       (.I0(\spo[7]_INST_0_i_2_n_0 ),
        .I1(a[5]),
        .I2(\spo[7]_INST_0_i_3_n_0 ),
        .I3(a[7]),
        .I4(\spo[22]_INST_0_i_4_n_0 ),
        .I5(a[8]),
        .O(\spo[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8FCB0F014F1082D9)) 
    \spo[7]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[6]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA3032F4E82015F0F)) 
    \spo[7]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[6]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[7]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \spo[8]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[8]_INST_0_i_1_n_0 ),
        .I3(a[11]),
        .I4(a[13]),
        .O(spo[7]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \spo[8]_INST_0_i_1 
       (.I0(a[8]),
        .I1(\spo[8]_INST_0_i_2_n_0 ),
        .I2(a[5]),
        .I3(\spo[8]_INST_0_i_3_n_0 ),
        .I4(a[7]),
        .I5(a[9]),
        .O(\spo[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEF750F61FE138B10)) 
    \spo[8]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[6]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5A37DEAC7AFB9A39)) 
    \spo[8]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[3]),
        .I3(a[6]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[8]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \spo[9]_INST_0 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(\spo[9]_INST_0_i_1_n_0 ),
        .I3(a[11]),
        .I4(a[13]),
        .O(spo[8]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \spo[9]_INST_0_i_1 
       (.I0(a[8]),
        .I1(\spo[9]_INST_0_i_2_n_0 ),
        .I2(a[5]),
        .I3(\spo[9]_INST_0_i_3_n_0 ),
        .I4(a[7]),
        .I5(a[9]),
        .O(\spo[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9ACA29A6961B9B80)) 
    \spo[9]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[6]),
        .I4(a[3]),
        .I5(a[1]),
        .O(\spo[9]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h034F0E140A031B09)) 
    \spo[9]_INST_0_i_3 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[6]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[9]_INST_0_i_3_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
