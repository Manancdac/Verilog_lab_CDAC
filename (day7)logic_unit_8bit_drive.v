`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2023 13:43:47
// Design Name: 
// Module Name: tb_logic_unit_8bit
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


module tb_logic_unit_8bit #(parameter DATA_WIDTH=8, OPCODE_SIZE=2)();

   reg [`DATA_WIDTH-1:0]a_in;
   reg [`DATA_WIDTH-1:0]b_in;
   reg [`OPCODE_SIZE-1:0]opcode_in;
 wire [`DATA_WIDTH-1:0]y_out;
 

logic_unit_8bit DUT(
       .a_in(a_in),
       .b_in(b_in),
       .opcode_in(opcode_in),
       .y_out(y_out));
initial
begin
    a_in='b0;
    b_in='b0;
    opcode_in='b0;
    #300 $finish();
    end 
     
     always #10 a_in =!a_in;
     always #20 b_in =b_in+1;
     always #30 opcode_in=opcode_in +1;
            
endmodule
