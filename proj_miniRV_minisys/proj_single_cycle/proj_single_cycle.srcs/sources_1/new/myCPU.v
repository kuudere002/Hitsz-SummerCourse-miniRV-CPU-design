`timescale 1ns / 1ps

`include "defines.vh"

module myCPU (
    input  wire         cpu_rst,
    input  wire         cpu_clk,

    // Interface to IROM
`ifdef RUN_TRACE
    output wire [15:0]  inst_addr,
`else
    output wire [13:0]  inst_addr,
`endif
    input  wire [31:0]  inst,
    
    // Interface to Bridge
    output wire [31:0]  Bus_addr,
    input  wire [31:0]  Bus_rdata,
    output wire         Bus_we,
    output wire [31:0]  Bus_wdata

`ifdef RUN_TRACE
    ,// Debug Interface
    output wire         debug_wb_have_inst,
    output wire [31:0]  debug_wb_pc,
    output              debug_wb_ena,
    output wire [ 4:0]  debug_wb_reg,
    output wire [31:0]  debug_wb_value
`endif
);

    // TODO: 完成你自己的单周期CPU设计
    //interface PC
    wire [31:0] PC_pc;
    //interface NPC
    wire [31:0] NPC_pc;
    wire [31:0] NPC_npc;
    wire [31:0] NPC_pc4;
    wire [ 2:0] npc_op;
    wire [ 1:0] br;
    wire [31:0] aluc;
    wire [31:0] offset;
    //interface IROM
    wire [6:0] IROM_inst_opcode;
    wire [2:0] IROM_inst_funct3;
    wire [6:0] IROM_inst_funct7;
    wire [4:0] IROM_inst_rR1;
    wire [4:0] IROM_inst_rR2;
    wire [4:0] IROM_inst_wR;
    wire [24:0] IROM_inst_din;

    assign IROM_inst_opcode = {inst[6:0]};
    assign IROM_inst_funct3 = {inst[14:12]};
    assign IROM_inst_funct7 = {inst[31:25]};
    assign IROM_inst_rR1 = {inst[19:15]};
    assign IROM_inst_rR2 = {inst[24:20]};
    assign IROM_inst_wR = {inst[11:7]};
    assign IROM_inst_din = {inst[31:7]};
    //interface RF
    wire [ 2:0] rf_wsel;
    wire [31:0] rD1, rD2;
    wire rf_we;
    wire [31:0] wD;
    //interface ALU
    wire [ 2:0] alu_op;
    wire [ 2:0] alub_sel;
    //interface SEXT
    wire [2:0] sext_op;
    wire [31:0] SEXT_ext;
    //interface DRAM
    wire ram_we;
    


    PC PC_0(
        .clk(cpu_clk),
        .rst(cpu_rst),
        .din(NPC_npc),
        .pc(PC_pc)
    );

    assign inst_addr = {PC_pc [15:2]};

    assign offset = SEXT_ext;
    NPC NPC_0(
        .br(br),
        .PC(PC_pc),
        .npc_op(npc_op),
        .aluc(aluc),
        .offset(offset),
        .pc4(NPC_pc4),
        .npc(NPC_npc)
    );

    SEXT SEXT_0(
        .sext_op(sext_op),
        .din(IROM_inst_din),
        .ext(SEXT_ext)
    );

    controller controller_0(
        .opcode(IROM_inst_opcode),
        .funct3(IROM_inst_funct3),
        .funct7(IROM_inst_funct7),
        .sext_op(sext_op),
        .npc_op(npc_op),
        .alu_op(alu_op),
        .alub_sel(alub_sel),
        .rf_we(rf_we),
        .rf_wsel(rf_wsel),
        .ram_we(ram_we)
    );

    RF RF_0(
        .clk(cpu_clk),
        .rst(cpu_rst),
        .rR1(IROM_inst_rR1),
        .rR2(IROM_inst_rR2),
        .wR(IROM_inst_wR),
        .rf_wsel(rf_wsel),
        .ext(SEXT_ext),
        .aluc(aluc),
        .rdom(Bus_rdata),
        .pc4(NPC_pc4),
        .rf_we(rf_we),
        .rD1(rD1),
        .rD2(rD2),
        .wD(wD)
    );

    ALU ALU_0(
        .alu_op(alu_op),
        .alub_sel(alub_sel),
        .rD1(rD1),
        .rD2(rD2),
        .imm(SEXT_ext),
        .C(aluc),
        .br(br)
    );

    assign Bus_addr = aluc;
    assign Bus_we =  ram_we;
    assign Bus_wdata = rD2; 

`ifdef RUN_TRACE
    // Debug Interface
    assign debug_wb_have_inst = 1;
    assign debug_wb_pc        = PC_pc;
    assign debug_wb_ena       = rf_we;
    assign debug_wb_reg       = IROM_inst_wR;
    assign debug_wb_value     = wD;
`endif

endmodule
