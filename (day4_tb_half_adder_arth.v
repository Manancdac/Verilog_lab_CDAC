`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.09.2023 15:59:41
// Design Name: 
// Module Name: tb_half_adder_arth
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

module tb_half_adder_arth();
    reg a_in;
    reg b_in;
    wire sum_out;
    wire carry_out;

half_adder_arth DUT (.a_in(a_in),
                 .b_in(b_in),
                 .sum_out(sum_out),
                 .carry_out(carry_out));
                 
initial
begin
a_in=1'b0;
b_in=1'b0;

#20
a_in=1'b0;
b_in=1'b1;

#30
a_in=1'b1;
b_in=1'b0;

#40
a_in=1'b1;
b_in=1'b1;
end
endmodule
