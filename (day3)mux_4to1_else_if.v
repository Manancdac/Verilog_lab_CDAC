`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.09.2023 08:17:58
// Design Name: 
// Module Name: mux_4to1
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


module mux_4to1(

input[3:0] d_in,
input[1:0] sel_in,
output reg y_out);

always@(*)
begin
if(sel_in==2'b00)
    y_out=d_in[0];
else if(sel_in==2'b01)
    y_out=d_in[1];
   
else if(sel_in==2'b10)
    y_out=d_in[2];
    
else if(sel_in==2'b11)
    y_out=d_in[3];
end
endmodule
