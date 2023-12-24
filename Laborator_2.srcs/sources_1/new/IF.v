`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2023 02:41:15 PM
// Design Name: 
// Module Name: IF
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module IF(input clk, reset,
          input PCSrc, PC_write,
          input [31:0] PC_Branch,
          output [31:0] PC_IF, INSTRUCTION_IF);
    
    wire [31:0] out_mux2_1, out_PC, out_instruction, out_adder, value4;
    
    assign value4 = 4;
    
    mux2_1 mux(out_adder, PC_Branch, PCScr, out_mux2_1);
    PC pc(clk, reset, PC_write, out_mux2_1, out_PC);
    adder add(out_PC, value4, out_adder);       
    instruction_memory mem(out_PC[11:2], out_instruction);
    
    assign PC_IF = out_PC;
    assign INSTRUCTION_IF = out_instruction;

endmodule
