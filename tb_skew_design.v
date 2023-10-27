`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.10.2023 10:16:13
// Design Name: 
// Module Name: tb_skew_design
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


module tb_skew_design();

reg clk1;
reg clk2;
wire q;

skew_design dut(
               .clk1(clk1),
               .clk2(clk2),
               .q(q));
               
initial
 begin
    clk1 ='b0;
    forever #5 clk1 = !clk1;
 end
 
initial
 begin
    clk2 ='b0;
#3
    forever #5 clk2 = !clk2;
 end
 
 initial
 begin
    $monitor("Time = %0t, clk1 = %0b, clk2 = %0b, q = %0b",$time,clk1,clk2,q);
 end

endmodule
