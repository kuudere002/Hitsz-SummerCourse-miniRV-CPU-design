`timescale 1ns / 1ps

`include "defines.vh"

module RF(
    input  wire        clk,
    input  wire        rst,

    input  wire [ 4:0] rR1,
    output reg  [31:0] rD1,
    
    input  wire [ 4:0] rR2,
    output reg  [31:0] rD2,

    input  wire [31:0] aluc,      //ALU
    input  wire [31:0] pc4,       //PC+4
    input  wire [31:0] ext,       //��չ
    input  wire [31:0] rdom,      // �ô�

    input  wire [ 4:0] wR,        // ��д��Ĵ���?
    input  wire        rf_we,     // �Ĵ��� write enable
    input  wire [ 2:0] rf_wsel,    // �Ĵ��� write select
    output reg  [31:0] wD    //    // ��д������
);

    // RF�ڲ��߼�
    reg [31:0] rf [0:31]; // 32��32bit�Ĵ���

    

    always @(negedge clk) begin // ������
        if(rst) begin
            rD1 <= 0;
            rD2 <= 0;        
        end
        rD1 <= rf[rR1];
        rD2 <= rf[rR2];
    end

    always @(*) begin
        case(rf_wsel) 
            `WB_ALU:  wD = aluc;
            `WB_DM:   wD = rdom;
            `WB_PC_4: wD = pc4;
            `WB_SEXT: wD = ext;
            default : wD = 0;
        endcase 
    end
    
    integer i;
    always @(posedge clk) begin
        if(rst) begin
            for(i = 0; i < 32; i = i + 1) begin
                rf[i] <= 0;
            end
        end
        if(rf_we && wR != 5'b00000) begin
            rf[wR] <= wD;
        end
    end

endmodule