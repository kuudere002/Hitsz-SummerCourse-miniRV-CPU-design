`timescale 1ns / 1ps

`include "defines.vh"

module NPC(
    input  wire [31:0] PC,
    input  wire [31:0] offset,//��SEXT.ext
    input  wire [1:0]      br,
    input  wire [2:0]  npc_op,
    input  wire [31:0] aluc,
    output wire [31:0] npc,
    output wire [31:0] pc4
);

    // inner logic of NPC
    assign pc4 = PC + 4;
    
    // ʹ��assign����������������и�ֵ
    assign npc = (npc_op == `NPC_PC4)? pc4 :
                 (npc_op == `NPC_JMP)? PC + offset :
                 (npc_op == `NPC_BNE)? ((br != 0)? PC + offset : pc4) :
                 (npc_op == `NPC_BEQ)? ((br == 0)? PC + offset : pc4) : //brΪ0������Ϊ0
                 (npc_op == `NPC_BLT)? ((br == 1)? PC + offset : pc4) : //brΪ1������С����
                 (npc_op == `NPC_BGE)? ((br != 1)? PC + offset : pc4) : //brΪ0��2���������ڵ�����
                 (npc_op == `NPC_JMPR)? (aluc & 32'hFFFFFFFE) :
                 pc4; 

endmodule