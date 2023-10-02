`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2023 12:48:00
// Design Name: 
// Module Name: gray_to_binary
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


module gray_to_binary(
input g0_in ,
input g1_in,
input g2_in,
output b0_out,
output b1_out,
output b2_out
    );
    
  assign b0_out =g0_in;
  assign b1_out =(g1_in ^  g0_in); 
  assign b2_out =(g2_in ^(g1_in ^  g0_in)); 
endmodule
