`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2023 10:03:42
// Design Name: 
// Module Name: arth_optimisation
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


module arth_optimisation(
   input a_in, b_in, op_in0,op_in1,
 output sum_out, carry_out);
reg y;
wire x;

always@(*)
begin
    case(b_in)
    1'b0: y=op_in1;
    1'b1: y=op_in0;
    endcase
    
    end
    assign x =!(op_in0) & op_in1;
    assign {carry_out, sum_out}= a_in + y + x;
endmodule

