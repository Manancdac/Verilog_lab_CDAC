`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2023 10:31:15
// Design Name: 
// Module Name: tri_state
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


module tri_state(
input data_in,
input enable,
output reg y_out
);

always@(data_in, enable)
begin
if (enable==1)
     y_out=data_in;
     else
    y_out=1'bz;
end
endmodule
