`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.09.2023 09:56:50
// Design Name: 
// Module Name: dlatch_1bit
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


module dlatch_1bit(
input d_in,
input sel_in,
output reg y_out);

always@(*)
begin
    if(!sel_in)
        y_out=d_in;
        
    end
endmodule
