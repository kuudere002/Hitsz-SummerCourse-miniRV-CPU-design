`timescale 1ns / 1ps

`include "defines.vh"

module RF(
    input  wire        clk,         // ʱ���ź�
    input  wire        rst,         // ��λ�ź�

    input  wire [ 4:0] rR1,         // �Ĵ�������ַ1��rs1��
    output reg  [31:0] rD1,         // �Ĵ���������1����rs1���������ݣ�
    
    input  wire [ 4:0] rR2,         // �Ĵ�������ַ2��rs2��
    output reg  [31:0] rD2,         // �Ĵ���������2����rs2���������ݣ�

    input  wire [31:0] aluc,        // ALU������������ALUģ�飩
    input  wire [31:0] pc4,         // PC+4��ֵ������JAL/JALRָ��ķ��ص�ַ��
    input  wire [31:0] ext,         // ��չ���������������LUIָ�
    input  wire [31:0] rdom,        // ���ݴ洢�����������ݣ�����DRAM��

    input  wire [ 4:0] wR,          // �Ĵ���д��ַ��rd��
    input  wire        rf_we,       // �Ĵ���дʹ���źţ��ߵ�ƽ��Ч��
    input  wire [ 2:0] rf_wsel,     // �Ĵ���д����ѡ���ź�
    output reg  [31:0] wD           // �Ĵ���д���ݣ�����rf_wselѡ���д�����ݣ�
);

    // �Ĵ������ڲ��洢�ṹ��32��32λ�Ĵ���
    reg [31:0] rf [0:31]; // 32 registers of 32 bits each

    // �Ĵ�������������ʱ���½��ض�ȡ����������߼�ð�գ�
    always @(negedge clk) begin 
        if(rst) begin  // ��λʱ��������������
            rD1 <= 0;
            rD2 <= 0;        
        end else begin  // ��������ʱ�����ݶ���ַ������Ӧ�Ĵ�����ֵ
            rD1 <= rf[rR1];
            rD2 <= rf[rR2];
        end
    end

    // д����ѡ���߼�������rf_wselѡ��Ҫд��Ĵ�����������Դ
    always @(*) begin
        case(rf_wsel) 
            `WB_ALU:  wD = aluc;    // ѡ��ALU��������Ϊд����
            `WB_DM:   wD = rdom;    // ѡ�����ݴ洢��������������Ϊд���ݣ�Loadָ�
            `WB_PC_4: wD = pc4;     // ѡ��PC+4��Ϊд���ݣ�JAL/JALRָ��ķ��ص�ַ��
            `WB_SEXT: wD = ext;    // ѡ����չ�����������Ϊд���ݣ�LUIָ�
            default : wD = 0;       // Ĭ��д0����Ч�����
        endcase 
    end
    
    // �Ĵ���д��������ʱ��������д�룬ͬ��ʱ���߼���
    integer i;  // ���ڸ�λʱ��ʼ���Ĵ�����
    always @(posedge clk) begin
        if(rst) begin  // ��λʱ�����мĴ�������
            for(i = 0; i < 32; i = i + 1) begin
                rf[i] <= 0;
            end
        end else if(rf_we && wR != 5'b00000) begin  // дʹ����Ч��д��ַ����x0��x0��Ϊ0��
            rf[wR] <= wD;  // ��ѡ���д����д��Ŀ��Ĵ���
        end
    end

endmodule