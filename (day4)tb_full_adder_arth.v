`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.09.2023 15:34:34
// Design Name: 
// Module Name: tb_full_adder
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

module tb_full_adder();
    reg a_in;
    reg b_in;
    reg c_in;
    wire sum_out;
    wire c_out;

full_adder DUT (.a_in(a_in),
                 .b_in(b_in),
                 .c_in(c_in),
                 .sum_out(sum_out),
                 .c_out(c_out));
                 
initial
begin
a_in=1'b0;
b_in=1'b0;
c_in=1'b0;

#20
a_in=1'b0;
b_in=1'b0;
c_in=1'b1;

#30
a_in=1'b0;
b_in=1'b1;
c_in=1'b0;

#40
a_in=1'b0;
b_in=1'b1;
c_in=1'b1;

#50
a_in=1'b1;
b_in=1'b0;
c_in=1'b0;                 

#60
a_in=1'b1;
b_in=1'b0;
c_in=1'b1;

#70
a_in=1'b1;
b_in=1'b1;
c_in=1'b0;

#80
a_in=1'b1;
b_in=1'b1;
c_in=1'b1;
end
endmodule
