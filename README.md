<img width="1920" height="1128" alt="image" src="https://github.com/user-attachments/assets/baf2e915-826c-4860-a001-954d5b22af44" /># Hitsz-SummerCourse-miniRV-CPU-design
Single-cycle and pipelined CPU based on 24 RISC-V instructions  
HITsz计科夏季学期CPU设计  
:heart:仅供参考，如果对你的思考有帮助，请点个star:smile:    
├── SocAndBridgeForTrace  #专门用于linux环境下trace测试的顶层Soc和总线桥  
│   ├── Bridge.v     
│   └── miniRV_Soc.v  
│  
├── proj_miniRV_minisys  #下板项目  
│   ├── proj_pipeline  #流水线cpu  
│   └── proj_sigle_cycle  #单周期cpu  
└── 数据通路表、控制信号取值表.xlsx    
:sparkles:本人只完成了25条指令的实现，具体详情可见数据通路表  
:sparkles:完成的外设：拨码开关Switch、数码管Digital_LED、按键Button(消抖处理，但没有验证过可能有问题)、灯LED、计时器Timer  
:sparkles:**由于每一届要求的汇编程序不同，对外设的要求也不同，如果有没有实现的外设，请自行添加**  
:sparkles:流水线cpu使用**forward**和**stall**方法处理数据冒险（stall处理load-use冒险），对于控制冒险进行分支预测，预测不跳转  
:sparkles:完成myCPU后应该在linux环境下运行学校给你的trace模型来验证你的CPU逻辑，此时Soc和Bridge只需要接DRAM和IROM模块，其余物理外设不需要，SocAndBridgeForTrace下的两个verilog文件删除了其余外设接口，可直接使用  
:sparkles:外设接口地址和引脚约束文件适用于**minisys**开发板**XC7A100TFGG484-1**
:sparkles:*下板时IROM核和DRAM核需要链接你自己汇编程序的coe文件*
