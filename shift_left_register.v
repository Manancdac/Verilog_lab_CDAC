`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.10.2023 21:04:14
// Design Name: 
// Module Name: shift_left_register
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
module shift_left_register(
    input clk,
    input [`DATA_WIDTH*2 -1 :0] d_in,
    input reset_n,
    input load_en,
    output reg [`DATA_WIDTH*2 -1 :0] q_out
    );
    
/*always@(posedge clk, negedge reset_n)
begin
    if(!reset_n)
        q_out <='b0;
    else if (load_en)
        q_out <=d_in;
    else
        q_out <= { q_out[6:0],1'b0};
end */
integer i;
always@(posedge clk, negedge reset_n)
begin
    if(!reset_n)
        q_out <='b0;
    else 
    begin
    if (load_en)
        q_out <=d_in;
    else
        begin 
        for (  i=0; i< (`DATA_WIDTH*2 - 1); i=i+1)
          begin
            q_out[i+1]<=q_out[i];
         end
           q_out[0] <=1'b0;
        end
    end
end 
//use for loop

endmodule
