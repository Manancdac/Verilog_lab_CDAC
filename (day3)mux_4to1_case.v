`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.09.2023 11:15:39
// Design Name: 
// Module Name: mux_4to1_case
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


module mux_4to1_case(
input[3:0] d_in,
input[1:0] sel_in,
output reg y_out);

always@(*)
begin
 case(sel_in)
 2'b00 :y_out=d_in[0];
 2'b01 :y_out=d_in[1];
 2'b10 :y_out=d_in[2];
 2'b11 :y_out=d_in[3];
 endcase
 end
endmodule
