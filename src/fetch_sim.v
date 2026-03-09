`timescale 1ns / 1ps

module fetch_sim;
     reg clk, rst, ex_mem_pc_src;
     reg [31:0] ex_mem_npc;
    
     wire [31:0] if_id_instr;
     wire [31:0] if_id_npc;

    fetch UUT (clk, rst, ex_mem_pc_src, ex_mem_npc,if_id_instr, if_id_npc);
    
    initial begin
        clk = 0;
        forever #1 clk = ~clk;
    end
    
    initial begin
    #1
    rst = 1;
    
    #1
    #1
    rst = 0;
    ex_mem_pc_src = 1;
    ex_mem_npc = 32'h0;
    
    #1
    #1
    rst=1;
    
    
    #1
    #1
    rst=0;
    ex_mem_pc_src = 0;
    
    #1
    #1
    ex_mem_pc_src = 1;
    ex_mem_npc = 32'h4;
    
    end
endmodule
