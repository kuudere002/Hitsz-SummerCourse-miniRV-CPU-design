// Annotate this macro before synthesis
// `define RUN_TRACE

// TODO: 在此处定义你的宏
// 
`define NPC_PC4 3'b000
`define NPC_BEQ 3'b001
`define NPC_JMP 3'b010  //?jal???
`define NPC_BNE 3'b011
`define NPC_BLT 3'b100
`define NPC_BGE 3'b101
`define NPC_JMPR 3'b110 //?jalr???

`define WB_ALU  3'b000
`define WB_DM   3'b001
`define WB_PC_4 3'b010
`define WB_SEXT 3'b011

// alu_op define
`define ALU_ADD 3'b000
`define ALU_SUB 3'b001
`define ALU_AND 3'b010
`define ALU_OR  3'b011
`define ALU_XOR 3'b100
`define ALU_SLL 3'b101
`define ALU_SRL 3'b110
`define ALU_SRA 3'b111

// alub_sel define
`define ALU_DATA_2   3'b000
`define ALU_Data_Imm 3'b001

`define SEXT_I 3'b000
`define SEXT_S 3'b001
`define SEXT_B 3'b010  //?jal???
`define SEXT_U 3'b011
`define SEXT_J 3'b100


// 外设I/O接口电路的端口地??
`define PERI_ADDR_DIG    32'hFFFF_F000
`define PERI_ADDR_LED    32'hFFFF_F060
`define PERI_ADDR_SW     32'hFFFF_F070
`define PERI_ADDR_BTN    32'hFFFF_F078
`define PERI_ADDR_TIMER0 32'hFFFF_F020
`define PERI_ADDR_TIMERN 32'hFFFF_F024
