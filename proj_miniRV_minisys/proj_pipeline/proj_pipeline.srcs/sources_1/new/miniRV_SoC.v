`timescale 1ns / 1ps

`include "defines.vh"

module miniRV_SoC (
    input  wire         fpga_rst,   // High active
    input  wire         fpga_clk,

    input  wire [23:0]  sw,
    input  wire [ 4:0]  button,
    output wire [ 7:0]  dig_en,
    output wire         DN_A,
    output wire         DN_B,
    output wire         DN_C,
    output wire         DN_D,
    output wire         DN_E,
    output wire         DN_F,
    output wire         DN_G,
    output wire         DN_DP,
    output wire [23:0]  led

`ifdef RUN_TRACE
    ,// Debug Interface
    output wire         debug_wb_have_inst, // ��ǰʱ�������Ƿ���ָ��д�� (�Ե�����CPU�����ڸ�λ�����1)
    output wire [31:0]  debug_wb_pc,        // ��ǰд�ص�ָ���PC (��wb_have_inst=0�������Ϊ����ֵ)
    output              debug_wb_ena,       // ָ��д��ʱ���Ĵ����ѵ�дʹ�� (��wb_have_inst=0�������Ϊ����ֵ)
    output wire [ 4:0]  debug_wb_reg,       // ָ��д��ʱ��д��ļĴ����� (��wb_ena��wb_have_inst=0�������Ϊ����ֵ)
    output wire [31:0]  debug_wb_value      // ָ��д��ʱ��д��Ĵ�����ֵ (��wb_ena��wb_have_inst=0�������Ϊ����ֵ)
`endif
);

    wire        pll_lock;
    wire        pll_clk;
    wire        cpu_clk;

    // Interface between CPU and IROM
`ifdef RUN_TRACE
    wire [15:0] inst_addr;
`else
    wire [13:0] inst_addr;
`endif
    wire [31:0] inst;

    // Interface between CPU and Bridge
    wire [31:0] Bus_rdata;
    wire [31:0] Bus_addr;
    wire        Bus_we;
    wire [31:0] Bus_wdata;
    
    // Interface between bridge and DRAM
    // wire         rst_bridge2dram;
    wire         clk_bridge2dram;
    wire [31:0]  addr_bridge2dram;
    wire [31:0]  rdata_dram2bridge;
    wire         we_bridge2dram;
    wire [31:0]  wdata_bridge2dram;
    
    // Interface between bridge and peripherals
    // TODO: �ڴ˶���������������I/O�ӿڵ�·ģ��������ź�
    //digital LEDs
    wire          dig_rst;
    wire          dig_clk;
    wire [31:0]   dig_addr;
    wire          dig_we;
    wire [31:0]   dig_wdata;

    //LEDs
    wire          led_rst;
    wire          led_clk;
    wire [31:0]   led_addr;
    wire          led_we;
    wire [31:0]   led_wdata;

    //switches
    wire          sw_rst;
    wire          sw_clk;
    wire [31:0]   sw_addr;
    wire [31:0]   sw_rdata;

    //buttons
    wire          btn_rst;
    wire          btn_clk;
    wire [31:0]   btn_addr;
    wire [31:0]   btn_rdata;

    //TIMER
    wire          timer_rst;
    wire          timer_clk;
    wire          timer_wen;
    wire [31:0]   timer_addr;
    wire [31:0]   timer_wdata;
    wire [31:0]   timer_rdata;
    

    
`ifdef RUN_TRACE
    // Trace����ʱ��ֱ��ʹ���ⲿ����ʱ��
    assign cpu_clk = fpga_clk;
`else
    // �°�ʱ��ʹ��PLL��Ƶ���ʱ��
    assign cpu_clk = pll_clk & pll_lock;
    cpuclk Clkgen (
        // .resetn     (!fpga_rst),
        .clk_in1    (fpga_clk),
        .clk_out1   (pll_clk),
        .locked     (pll_lock)
    );
`endif
    
    myCPU Core_cpu (
        .cpu_rst            (fpga_rst),
        .cpu_clk            (cpu_clk),

        // Interface to IROM
        .inst_addr          (inst_addr),
        .inst               (inst),

        // Interface to Bridge
        .Bus_addr           (Bus_addr),
        .Bus_rdata          (Bus_rdata),
        .Bus_we             (Bus_we),
        .Bus_wdata          (Bus_wdata)

`ifdef RUN_TRACE
        ,// Debug Interface
        .debug_wb_have_inst (debug_wb_have_inst),
        .debug_wb_pc        (debug_wb_pc),
        .debug_wb_ena       (debug_wb_ena),
        .debug_wb_reg       (debug_wb_reg),
        .debug_wb_value     (debug_wb_value)
`endif
    );
    
    IROM Mem_IROM (
        .a          (inst_addr),
        .spo        (inst)
    );
    
    Bridge Bridge (       
        // Interface to CPU
        .rst_from_cpu       (fpga_rst),
        .clk_from_cpu       (cpu_clk),
        .addr_from_cpu      (Bus_addr),
        .we_from_cpu        (Bus_we),
        .wdata_from_cpu     (Bus_wdata),
        .rdata_to_cpu       (Bus_rdata),
        
        // Interface to DRAM
        // .rst_to_dram    (rst_bridge2dram),
        .clk_to_dram        (clk_bridge2dram),
        .addr_to_dram       (addr_bridge2dram),
        .rdata_from_dram    (rdata_dram2bridge),
        .we_to_dram         (we_bridge2dram),
        .wdata_to_dram      (wdata_bridge2dram),
        
        // Interface to 7-seg digital LEDs
        .rst_to_dig         (dig_rst),
        .clk_to_dig         (dig_clk),
        .addr_to_dig        (dig_addr),
        .we_to_dig          (dig_we),
        .wdata_to_dig       (dig_wdata),

        // Interface to LEDs
        .rst_to_led         (led_rst),
        .clk_to_led         (led_clk),
        .addr_to_led        (led_addr),
        .we_to_led          (led_we),
        .wdata_to_led       (led_wdata),

        // Interface to switches
        .rst_to_sw          (sw_rst),
        .clk_to_sw          (sw_clk),
        .addr_to_sw         (sw_addr),
        .rdata_from_sw      (sw_rdata),

        // Interface to buttons
        .rst_to_btn         (btn_rst),
        .clk_to_btn         (btn_clk),
        .addr_to_btn        (btn_addr),
        .rdata_from_btn     (btn_rdata),

        // Interface to Timer
        .rst_to_timer       (timer_rst),
        .clk_to_timer       (timer_clk),
        .addr_to_timer      (timer_addr),
        .wen_to_timer       (timer_wen),
        .wdata_to_timer     (timer_wdata),
        .rdata_from_timer   (timer_rdata)
    );

    DRAM Mem_DRAM (
        .clk        (clk_bridge2dram),
        .a          (addr_bridge2dram[15:2]),
        .spo        (rdata_dram2bridge),
        .we         (we_bridge2dram),
        .d          (wdata_bridge2dram)
    );
    
    //Digital LED
     Digital_LED Digital_LED_0(
        .rst(fpga_rst),
        .clk(fpga_clk),
        .wen(dig_we),
        .addr(dig_addr),
        .wdata(dig_wdata),
        .led_en(dig_en),
        .DN_A(DN_A),
        .DN_B(DN_B),
        .DN_C(DN_C),
        .DN_D(DN_D),
        .DN_E(DN_E),
        .DN_F(DN_F),
        .DN_G(DN_G),
        .DN_DP(DN_DP)
    );

    //LED
    LED LED_0(
        .rst(fpga_rst),
        .clk(fpga_clk),
        .wen(led_we),
        .addr(led_addr),
        .wdata(led_wdata),
        .led(led)
    );

    //Switch
    Switch Switch_0(
        .rst(fpga_rst),
        .clk(fpga_clk),
        .addr(sw_addr),
        .switch(sw),
        .rdata(sw_rdata)
    );

    //button
    Button Button_0(
        .rst(fpga_rst),
        .clk(fpga_clk),
        .addr(btn_addr),
        .rdata(btn_rdata),
        .button(button)
    );

    //Timer
    Timer Timer_0(
        .rst(fpga_rst),
        .clk(fpga_clk),
        .addr(timer_addr),
        .wen(timer_wen),
        .wdata(timer_wdata),
        .rdata(timer_rdata)
    );



endmodule
