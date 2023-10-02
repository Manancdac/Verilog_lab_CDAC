`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2023 12:20:57
// Design Name: 
// Module Name: tb_b_t_g
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


module tb_gray_to_binary();
reg g0_in;
reg g1_in;
reg g2_in;
wire b0_out;
wire b1_out;
wire b2_out;


gray_to_binary DUT(
.g0_in(g0_in),
.g1_in(g1_in),
.g2_in(g2_in),
.b0_out(b0_out),
.b1_out(b1_out),
.b2_out(b2_out)
);
   
initial
    begin
        g0_in=1'b0;
        g1_in=1'b0;
        g2_in=1'b0;
        
        #10
        g0_in=1'b0;
        g1_in=1'b0;
        g2_in=1'b1;
        
        #20
        g0_in=1'b0;
        g1_in=1'b1;
        g2_in=1'b1;
        
        #30
        g0_in=1'b0;
        g1_in=1'b1;
        g2_in=1'b0;
        
        #40
        g0_in=1'b1;
        g1_in=1'b1;
        g2_in=1'b0;
        
        #50
        g0_in=1'b1;
        g1_in=1'b1;
        g2_in=1'b1;
        
        #60
        g0_in=1'b1;
        g1_in=1'b0;
        g2_in=1'b1;
        
        #70
        g0_in=1'b1;
        g1_in=1'b0;
        g2_in=1'b0;

end           
endmodule
