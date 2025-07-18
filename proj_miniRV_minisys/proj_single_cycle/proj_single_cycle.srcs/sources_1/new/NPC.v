`timescale 1ns / 1ps

`include "defines.vh"

module NPC(
    input  wire [31:0] PC,
    input  wire [31:0] offset,//接SEXT.ext
    input  wire [1:0]      br,
    input  wire [2:0]  npc_op,
    input  wire [31:0] aluc,
    output wire [31:0] npc,
    output wire [31:0] pc4
);

    // inner logic of NPC
    assign pc4 = PC + 4;
    
    // 使用assign结合条件操作符进行赋值
    assign npc = (npc_op == `NPC_PC4)? pc4 :
                 (npc_op == `NPC_JMP)? PC + offset :
                 (npc_op == `NPC_BNE)? ((br != 0)? PC + offset : pc4) :
                 (npc_op == `NPC_BEQ)? ((br == 0)? PC + offset : pc4) : //br为0代表结果为0
                 (npc_op == `NPC_BLT)? ((br == 1)? PC + offset : pc4) : //br为1代表结果小于零
                 (npc_op == `NPC_BGE)? ((br != 1)? PC + offset : pc4) : //br为0或2代表结果大于等于零
                 (npc_op == `NPC_JMPR)? (aluc & 32'hFFFFFFFE) :
                 pc4; 

endmodule