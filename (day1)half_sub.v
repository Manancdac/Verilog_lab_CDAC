`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.09.2023 15:32:19
// Design Name: 
// Module Name: half_sub
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


module half_sub(

input a_in,
input b_in,
output diff_out,
output bo_out

    );
    
assign diff_out = a_in ^ b_in;
assign anot= ~a_in;
assign bo_out = anot & b_in;  
endmodule
