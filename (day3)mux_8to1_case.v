`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.09.2023 11:50:19
// Design Name: 
// Module Name: mux_8to1_case
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


module mux_8to1_case(
input[7:0] d_in,
input[2:0] sel_in,
output reg y_out);

always@(*)
begin
 case(sel_in)
 3'b000 :y_out=d_in[0];
 3'b001 :y_out=d_in[1];
 3'b010 :y_out=d_in[2];
 3'b011 :y_out=d_in[3];
 3'b100 :y_out=d_in[4];
 3'b101 :y_out=d_in[5];
 3'b110 :y_out=d_in[6];
 default :y_out=d_in[7];
 endcase
 end
endmodule
