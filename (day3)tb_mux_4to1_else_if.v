`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.09.2023 11:34:26
// Design Name: 
// Module Name: tb_mux_4to1_case
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


module tb_mux_4to1_case();

reg [3:0] d_in;
reg [1:0] sel_in;
wire y_out;
mux_4to1_case u1(
                 .d_in(d_in),
                 .sel_in(sel_in),
                 .y_out(y_out)
                 );
 always #10 d_in = d_in +1;
 always #50 sel_in = sel_in +1;
 initial
 begin
 d_in='b0;
 sel_in='b0;
 #250 $finish ();
 end
endmodule
