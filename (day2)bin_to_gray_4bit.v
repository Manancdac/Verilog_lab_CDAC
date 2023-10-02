`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.09.2023 13:13:57
// Design Name: 
// Module Name: binary_to_gray_4bit
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

module binary_to_gray_4bit(
input b0_in ,
input b1_in,
input b2_in,
input b3_in,
output g0_out,
output g1_out,
output g2_out,
output g3_out
    );
    
  assign g0_out =b0_in;
  assign g1_out =(b0_in ^  b1_in); 
  assign g2_out =(b1_in ^  b2_in); 
  assign g3_out =(b2_in ^ b3_in);
endmodule


