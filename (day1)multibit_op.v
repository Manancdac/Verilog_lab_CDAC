`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.09.2023 15:44:20
// Design Name: 
// Module Name: bitwise
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

//rtl design of multi bit operator

module bitwise(

input [7:0] a_in,
input [7:0] b_in,
output [7:0] y_out,
output [7:0] y1_out,
output [7:0] y2_out,
output [7:0] y3_out,
output [7:0] y4_out,
output [7:0] y5_out,
output [7:0] y6_out,
output [7:0] y7_out

    );
    
assign y_out = a_in & b_in;
assign y1_out = a_in | b_in;
assign y2_out = a_in ^ b_in;
assign y3_out = ~(a_in ^ b_in);
assign y4_out = ~a_in ;
assign y5_out = ~(a_in & b_in);
assign y6_out = ~(a_in | b_in);
assign y7_out = a_in;

endmodule
