`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.10.2023 21:42:28
// Design Name: 
// Module Name: tb_seq_detector_10101
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


module tb_seq_detector_10101();
reg d_in;
 reg clk;
 reg reset_n;
 wire d_out;
 
 mealy_10101_seq_dect dut (
 .d_in(d_in),
 .clk(clk),
 .reset_n(reset_n),
 .q_out(d_out)
 );
 
 always #5 clk = ~clk;
 always #8 d_in = $urandom();
 initial
 begin
 clk = 'b0;
 reset_n = 'b0;
 d_in = 'b0;
 
 #7 reset_n = 'b1;
 
 end
  initial
 begin
  $monitor("time=%0t, d_in=%0b, reset_n=%0b, d_out=%0b", $time, d_in, reset_n, d_out);
  #2000 $finish();
  end
endmodule
