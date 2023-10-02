`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.10.2023 09:07:38
// Design Name: 
// Module Name: bin_to_grey_2bit
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


module bin_to_grey_2bit(

input b0_in,
input b1_in,
output g0_out,
output g1_out);

assign g0_out=b0_in;
assign g1_out=(b0_in ^ b1_in);
endmodule
