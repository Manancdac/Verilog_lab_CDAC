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

//rtl design of bit wise operator

module bitwise(

input a_in,
input  b_in,
output y_out,
output y1_out,
output y2_out,
output y3_out,
output y4_out,
output y5_out,
output y6_out,
output y7_out

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
