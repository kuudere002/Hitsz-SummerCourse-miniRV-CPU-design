`include "defines.vh"  // 运行Trace测试时，将此文件的RUN_TRACE取消注释; 下板时，注释RUN_TRACE.
module miniRV_SoC (
    input  wire        fpga_rst,             // High active
    input  wire        fpga_clk,
    // 外设I/O接口信号 (需要根据实际情况补充)
`ifdef RUN_TRACE
    // Debug Interface
    output wire        debug_wb_have_inst,   // WB阶段是否有指令
    output wire [31:0] debug_wb_pc,          // WB阶段的PC
    output wire        debug_wb_ena,         // WB阶段的寄存器写使能
    output wire [ 4:0] debug_wb_reg,         // WB阶段写入的寄存器号
    output wire [31:0] debug_wb_value        // WB阶段写入寄存器的值
`endif
);
    // 定义内部信号
    wire [31:0]  inst_addr;
    wire [31:0]  inst;
    wire [31:0]  Bus_addr;
    wire [31:0]  Bus_rdata;
    wire         Bus_we;
    wire [31:0]  Bus_wdata;
    wire         clk_to_dram;
    wire [31:0]  addr_to_dram;
    wire [31:0]  rdata_from_dram;
    wire         we_to_dram;
    wire [31:0]  wdata_to_dram;
    


    myCPU Core_cpu (
        .cpu_rst     (fpga_rst),
        .cpu_clk     (fpga_clk),
        .inst_addr   (inst_addr),
        .inst        (inst),
        .Bus_addr    (Bus_addr),
        .Bus_rdata   (Bus_rdata),
        .Bus_we      (Bus_we),
        .Bus_wdata   (Bus_wdata),
        .debug_wb_have_inst    (debug_wb_have_inst),
        .debug_wb_pc           (debug_wb_pc),
        .debug_wb_ena          (debug_wb_ena),
        .debug_wb_reg          (debug_wb_reg),
        .debug_wb_value        (debug_wb_value)
    );

    // 指令存储器实例化
    IROM Mem_IROM (
        .a      (inst_addr),
        .spo    (inst)
    );

    // 数据存储器实例化
    DRAM Mem_DRAM (
        .clk    (clk_to_dram),
        .a      (addr_to_dram[15:2]),
        .spo    (rdata_from_dram),
        .we     (we_to_dram),
        .d      (wdata_to_dram)
    );

    // 桥接模块实例化
    Bridge Mem_Bridge (
        .rst_from_cpu      (fpga_rst),
        .clk_from_cpu      (fpga_clk),  // 从外部接收时钟
        .addr_from_cpu     (Bus_addr),
        .we_from_cpu       (Bus_we),
        .wdata_from_cpu    (Bus_wdata),
        .rdata_to_cpu      (Bus_rdata),
        
        // 与DRAM的接口
        .clk_to_dram       (clk_to_dram),  // 输出到DRAM的时钟
        .addr_to_dram      (addr_to_dram),
        .rdata_from_dram   (rdata_from_dram),
        .we_to_dram        (we_to_dram),
        .wdata_to_dram     (wdata_to_dram)
    );


endmodule