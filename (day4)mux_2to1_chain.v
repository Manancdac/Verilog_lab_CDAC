`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.09.2023 13:47:10
// Design Name: 
// Module Name: mux_chain_2_2to1
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


module mux_chain_2_2to1(
input a_in, b_in, c_in, d_in, sel_in,
output reg y_out, z_out
    );
    //reg y_out, z_out;
 always@(*)
 
    if(sel_in==1'b0)
    begin
    y_out=a_in;
    z_out=c_in;
    end
else
begin
    y_out=b_in;
    z_out=d_in;
    end
endmodule
