`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.10.2023 19:16:08
// Design Name: 
// Module Name: twisted_ring_counter
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
`include "defines.v"
module twisted_ring_counter(
    input clk,
    input reset_n,
    output reg [`DATA_WIDTH-1 :0] q_out
    );
    
always@(posedge clk, negedge reset_n)
begin

    if ( !reset_n)
     q_out <= 'b0;
     
    else
    q_out <= {!q_out[0], q_out[3:1]};

end 
endmodule
