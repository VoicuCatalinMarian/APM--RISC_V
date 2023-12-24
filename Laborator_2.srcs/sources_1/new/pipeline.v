`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2023 02:41:15 PM
// Design Name: 
// Module Name: pipeline
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


module pipeline(input clk, reset, load,
                input [31:0] PC_IF, INSTR_IF,
                output reg [31:0] PC_ID, INSTR_ID);
   
    always @(posedge clk) begin
        if (reset == 1) begin 
            PC_ID <= 0;
            INSTR_ID <= 0;
        end
        else if (load == 1) begin
            PC_ID <= PC_IF;
            INSTR_ID <= INSTR_IF;
        end
    end
    
endmodule
