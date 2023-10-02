`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.09.2023 13:16:03
// Design Name: 
// Module Name: tb_binary_to_gray_4bit
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


module tb_binary_to_gray_4bit();
reg b0_in;
reg b1_in;
reg b2_in;
reg b3_in;
wire g0_out;
wire g1_out;
wire g2_out;
wire g3_out;


binary_to_gray_4bit DUT(
.b0_in(b0_in),
.b1_in(b1_in),
.b2_in(b2_in),
.b3_in(b3_in),
.g0_out(g0_out),
.g1_out(g1_out),
.g2_out(g2_out),
.g3_out(g3_out)
);
   
initial
    begin
        b0_in=1'b0;
        b1_in=1'b0;
        b2_in=1'b0;
        b3_in=1'b0;
        
        #10
        b0_in=1'b0;
        b1_in=1'b0;
        b2_in=1'b0;
        b3_in=1'b1;
        
        #20
        b0_in=1'b0;
        b1_in=1'b0;
        b2_in=1'b1;
        b3_in=1'b0;
        
        #30
        b0_in=1'b0;
        b1_in=1'b0;
        b2_in=1'b1;
        b3_in=1'b1;
        
        #40
        b0_in=1'b0;
        b1_in=1'b1;
        b2_in=1'b0;
        b3_in=1'b0;
        
        #50
        b0_in=1'b0;
        b1_in=1'b1;
        b2_in=1'b0;
        b3_in=1'b1;
        
        #60
        b0_in=1'b0;
        b1_in=1'b1;
        b2_in=1'b1;
        b3_in=1'b0;
        
        #70
        b0_in=1'b0;
        b1_in=1'b1;
        b2_in=1'b1;
        b3_in=1'b1;
        
        #80
        b0_in=1'b1;
        b1_in=1'b0;
        b2_in=1'b0;
        b3_in=1'b0;
        
        #90
        b0_in=1'b1;
        b1_in=1'b0;
        b2_in=1'b0;
        b3_in=1'b1;
        
        #100
        b0_in=1'b1;
        b1_in=1'b0;
        b2_in=1'b1;
        b3_in=1'b0;
        
        #110
        b0_in=1'b1;
        b1_in=1'b0;
        b2_in=1'b1;
        b3_in=1'b1;
        
        #120
        b0_in=1'b1;
        b1_in=1'b1;
        b2_in=1'b0;
        b3_in=1'b0;
        
        #130
        b0_in=1'b1;
        b1_in=1'b1;
        b2_in=1'b0;
        b3_in=1'b1;
        
        #140
        b0_in=1'b1;
        b1_in=1'b1;
        b2_in=1'b1;
        b3_in=1'b0;
        
        #150
        b0_in=1'b1;
        b1_in=1'b1;
        b2_in=1'b1;
        b3_in=1'b1;
end           
endmodule

