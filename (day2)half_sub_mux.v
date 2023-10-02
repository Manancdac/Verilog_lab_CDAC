`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.09.2023 09:10:25
// Design Name: 
// Module Name: half_sub_mux
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


module half_sub_mux(

input a,
input b,
output diff,
output borrow
    );
    
 assign diff = a ? ~b: b;
 assign borrow = a ? 0 : b;   
endmodule
