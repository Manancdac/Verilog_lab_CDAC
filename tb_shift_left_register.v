`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.10.2023 21:09:09
// Design Name: 
// Module Name: tb_shift_left_register
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
module tb_shift_left_register();
reg clk;
reg reset_n;
reg load_in;
reg[`DATA_WIDTH*2 - 1:0] data_in;
wire [`DATA_WIDTH*2 - 1 :0] q_out;    

shift_left_register DUT (.clk(clk),
                          .reset_n(reset_n),
                          .load_en(load_in),
                          .d_in(data_in),
                          .q_out(q_out));
initial begin
$monitor("time=%0t, load_in=%0b, reset_n=%0b, data_in=%0h, q_out=%0h",
          $time, load_in, reset_n, data_in, q_out);

reset_n = 'b0;
#10 reset_n = 'b1;
#10 load_in =1'b1;
     data_in = 8'b10100101; // data load at 20 ns
#30 load_in=0; // load disable at 50 nsec
#1000 reset_n = 'b0;   // reset going low at 1050 nsec
#50   reset_n= 'b1;  // reset going high at 1100 nsec
#500 $finish();  // simulation stops at 1600 nsec
end
//clk generation in forever loop 
initial
begin
clk = 'b0;
forever #10 clk=~clk;
end
//always #10 clk = ~clk; // clock frequency 50 MHz

                                    
endmodule