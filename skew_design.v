`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.10.2023 10:13:39
// Design Name: 
// Module Name: skew_design
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


module skew_design(
input clk1,
input clk2,
output q
    );
    
    assign q = clk1 & clk2;
    
   specify
    specparam tskew = 2;
    $skew(posedge clk1, posedge clk2, tskew);
   endspecify
endmodule
