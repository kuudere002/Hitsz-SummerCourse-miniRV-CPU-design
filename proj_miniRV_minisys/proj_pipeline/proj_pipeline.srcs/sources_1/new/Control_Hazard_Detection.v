`include "defines.vh"
module control_hazard_detection(
  input wire[2:0] EX_npc_op,
  input wire[1:0] alu_f,        
  output reg control_hazard
);

always @(*) begin
  if(EX_npc_op == `NPC_JMPR || EX_npc_op == `NPC_JMP) 
    control_hazard = 1'b1;
  else if((EX_npc_op == `NPC_BEQ && alu_f == 0) ||     // BEQ�ɹ���ת
          (EX_npc_op == `NPC_BNE && alu_f != 0) ||     // BNE�ɹ���ת
          (EX_npc_op == `NPC_BLT && alu_f == 1) ||     // BLT�ɹ���ת
          (EX_npc_op == `NPC_BGE && alu_f != 1))       // BGE�ɹ���ת
    control_hazard = 1'b1;
  else 
    control_hazard = 1'b0;
end

endmodule