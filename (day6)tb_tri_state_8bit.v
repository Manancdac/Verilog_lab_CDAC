`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2023 11:36:10
// Design Name: 
// Module Name: tb_tri_state_8bit
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


module tb_tri_state_8bit #(parameter DATA_WIDTH=8)();
  
reg [DATA_WIDTH-1:0] data_in;
reg enable;
wire [DATA_WIDTH-1:0] y_out;

tri_state_8bit U1(
       .data_in(data_in),
       .enable(enable),
       .y_out(y_out));
       
defparam U1.DATA_WIDTH=3;       
initial
    begin   
    data_in=1'b0;
    enable='b0;
    #300 $finish;
       end
       always #10 enable=!enable;
       always #10 data_in=data_in +1;
endmodule
