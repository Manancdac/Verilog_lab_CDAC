`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2023 13:33:11
// Design Name: 
// Module Name: logic_unit_8bit
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

`define DATA_WIDTH 8
`define OPCODE_SIZE 2
`define OR 2'b00
`define XOR 2'b01
`define AND 2'b10
`define NOT 2'b11
module logic_unit_8bit(
                        input [`DATA_WIDTH-1:0]a_in,
                        input [`DATA_WIDTH-1:0]b_in,
                        input [`OPCODE_SIZE-1:0]opcode_in,
                        output reg [`DATA_WIDTH-1:0]y_out);
                        
always@*
begin
    case (opcode_in)
    `OR :y_out=a_in | b_in;
    `XOR :y_out=a_in ^ b_in;
    `AND :y_out=a_in & b_in;
    `NOT : y_out=~a_in;
    endcase
end                     
endmodule
