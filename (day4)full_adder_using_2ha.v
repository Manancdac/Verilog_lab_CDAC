`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.09.2023 15:00:08
// Design Name: 
// Module Name: full_adder
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
module full_adder (
    input a_in,
    input b_in,
    input c_in,
    output sum_out,
    output c_out
);

    wire s0, c0, c1;

    half_adder ha1( a_in,b_in,s0,c0 );
    half_adder ha2( s0,c_in,sum_out,c1 );

        assign c_out=c1 || c0;
endmodule
