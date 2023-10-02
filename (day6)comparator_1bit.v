`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2023 12:48:39
// Design Name: 
// Module Name: comparator_1bit
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


module comparator_1bit #(parameter DATA_WIDTH=4)
                        (input [DATA_WIDTH-1:0] a_in,
                         input [DATA_WIDTH-1:0] b_in,
                         output  a_in_g_b_in,
                         output  a_in_e_b_in,
                         output  a_in_l_b_in);
                        
assign a_in_e_b_in=(a_in ==b_in);
assign a_in_g_b_in=(a_in>b_in);
assign a_in_l_b_in=(a_in<b_in);
endmodule
