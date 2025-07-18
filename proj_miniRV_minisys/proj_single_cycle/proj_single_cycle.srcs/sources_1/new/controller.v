`timescale 1ns / 1ps

`include "defines.vh"

module controller(
    input  wire [6:0] opcode,
    input  wire [6:0] funct7,
    input  wire [2:0] funct3,
    //NPC控制信号
    output wire [2:0] npc_op,
    //RF控制信号
    output wire [2:0] rf_wsel,
    output wire       rf_we,
    //ALU控制信号
    output wire [2:0] alu_op,
    output wire [2:0] alub_sel,
    //SEXT控制信号
    output wire [2:0] sext_op,
    //DRAM控制信号
    output wire       ram_we    
);

    // inner logic of CTRL

    wire r_typ = (opcode == 7'b0110011) ? 1'b1 : 1'b0;
    wire b_typ = (opcode == 7'b1100011) ? 1'b1 : 1'b0;
    wire i_typ = (opcode == 7'b0010011) ? 1'b1 : 1'b0;//除了jalr和lw之外的I型指令
    wire s_typ = (opcode == 7'b0100011) ? 1'b1 : 1'b0;
    

    //R-type
    wire inst_add  = r_typ & (funct7 == 7'b0000000) & (funct3 == 3'b000);
    wire inst_sub  = r_typ & (funct7 == 7'b0100000) & (funct3 == 3'b000);
    wire inst_and  = r_typ & (funct7 == 7'b0000000) & (funct3 == 3'b111);
    wire inst_or   = r_typ & (funct7 == 7'b0000000) & (funct3 == 3'b110);
    wire inst_xor  = r_typ & (funct7 == 7'b0000000) & (funct3 == 3'b100);
    wire inst_sll  = r_typ & (funct7 == 7'b0000000) & (funct3 == 3'b001);
    wire inst_srl  = r_typ & (funct7 == 7'b0000000) & (funct3 == 3'b101);
    wire inst_sra  = r_typ & (funct7 == 7'b0100000) & (funct3 == 3'b101);
    //I-type
    wire inst_addi = i_typ & (funct3 == 3'b000);
    wire inst_andi = i_typ & (funct3 == 3'b111);
    wire inst_ori  = i_typ & (funct3 == 3'b110);
    wire inst_xori = i_typ & (funct3 == 3'b100);
    wire inst_slli = i_typ & (funct7 == 7'b0000000) & (funct3 == 3'b001);
    wire inst_srli = i_typ & (funct7 == 7'b0000000) & (funct3 == 3'b101);
    wire inst_srai = i_typ & (funct7 == 7'b0100000) & (funct3 == 3'b101);
    wire inst_lw   = (opcode == 7'b0000011) ? 1'b1 : 1'b0;
    wire inst_jalr = (opcode == 7'b1100111) ? 1'b1 : 1'b0;
    //S-type
    wire inst_sw   = s_typ & (funct3 == 3'b010);
    //B-type
    wire inst_beq  = b_typ & (funct3 == 3'b000);
    wire inst_bne  = b_typ & (funct3 == 3'b001);
    wire inst_blt  = b_typ & (funct3 == 3'b100);
    wire inst_bge  = b_typ & (funct3 == 3'b101);
    //U-type
    wire inst_lui  = (opcode == 7'b0110111) ? 1'b1 : 1'b0;
    //J-type
    wire inst_jal  = (opcode == 7'b1101111) ? 1'b1 : 1'b0;


    
    //NPC控制信号
    assign npc_op = (inst_jalr) ? `NPC_JMPR :
                    (inst_jal)  ? `NPC_JMP  :
                    (inst_beq)  ? `NPC_BEQ  :
                    (inst_bne)  ? `NPC_BNE  :
                    (inst_blt)  ? `NPC_BLT  :
                    (inst_bge)  ? `NPC_BGE  : `NPC_PC4;
    
    //RF控制信号
    assign rf_we    = (inst_sw | b_typ) ? 1'b0 : 1'b1;
    assign rf_wsel  = (inst_lw)              ? `WB_DM   :
                      (inst_jalr | inst_jal) ? `WB_PC_4 :
                      (inst_lui)             ? `WB_SEXT : `WB_ALU;

    //ALU控制信号
    assign alu_op   = (inst_add | inst_addi | inst_sw | inst_lw | inst_jalr) ? `ALU_ADD :
                      (inst_and | inst_andi)                                 ? `ALU_AND :
                      (inst_or | inst_ori)                                   ? `ALU_OR  :
                      (inst_xor | inst_xori)                                 ? `ALU_XOR :
                      (inst_sll | inst_slli)                                 ? `ALU_SLL :
                      (inst_srl | inst_srli)                                 ? `ALU_SRL :
                      (inst_sra | inst_srai)                                 ? `ALU_SRA : `ALU_SUB;
    assign alub_sel = (r_typ | b_typ) ? `ALU_DATA_2 : `ALU_Data_Imm;
    
    //SEXT控制信号
    assign sext_op = (inst_sw) ? `SEXT_S :
                     (b_typ)   ? `SEXT_B : 
                     (inst_lui)? `SEXT_U : 
                     (inst_jal)? `SEXT_J : `SEXT_I;
    
    //DRAM控制信号
    assign ram_we   = (inst_sw)? 1'b1 : 1'b0;



endmodule
