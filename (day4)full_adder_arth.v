`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.09.2023 15:53:58
// Design Name: 
// Module Name: full_adder_arth
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


module full_adder_arth (
    input a_in,
    input b_in,
    input c_in,
    output sum_out,
    output carry_out
);
 assign {carry_out, sum_out} = a_in + b_in + c_in;
 

endmodule
