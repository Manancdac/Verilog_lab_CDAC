`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.09.2023 12:12:48
// Design Name: 
// Module Name: alufor2
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


module alufor2(

input[7:0] a_in,
input[7:0] b_in,
input control_in,
output [8:0] y_out);

reg [7:0]y;
always@(*)
begin
    case(control_in)
    1'b0: y=b_in;
    1'b1: y=~b_in;
endcase
end
assign y_out= a_in + y + control_in;
endmodule
