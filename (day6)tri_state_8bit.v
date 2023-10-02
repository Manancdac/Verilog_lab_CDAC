`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2023 10:54:13
// Design Name: 
// Module Name: tri_state_8bit
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


module tri_state_8bit #(parameter DATA_WIDTH=8)(

input [DATA_WIDTH-1:0] data_in,
input enable,
output reg [DATA_WIDTH-1:0]y_out
);

always@(data_in, enable)
begin
if (enable==1)
     y_out=data_in;
     else
    y_out='bZ;
end
endmodule

