`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.09.2023 16:44:24
// Design Name: 
// Module Name: half_adder_mux
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


module half_adder_mux(

input a,
input b,
output sum,
output carry
    );
    
 assign sum = a ? ~b: b;
 assign carry = a ? b : 0;   
endmodule
