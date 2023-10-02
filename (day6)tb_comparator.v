`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2023 13:18:08
// Design Name: 
// Module Name: tb_comparator_1bit
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


module tb_comparator_1bit #(parameter DATA_WIDTH=4)();
                         reg [DATA_WIDTH-1:0] a_in;
                         reg [DATA_WIDTH-1:0] b_in;
                         wire  a_in_g_b_in;
                         wire  a_in_e_b_in;
                         wire  a_in_l_b_in;
comparator_1bit U1(                         
                         .a_in(a_in),
                         .b_in(b_in),
                         .a_in_g_b_in(a_in_g_b_in),
                         .a_in_e_b_in(a_in_e_b_in),
                         .a_in_l_b_in(a_in_l_b_in));
         
         always #10 a_in =a_in +1'b1;
    always #40 b_in =b_in +1'b1;                
 initial
 begin
    
    a_in='b0;
    b_in='b0;
    #500 $finish;
    end
    
endmodule
