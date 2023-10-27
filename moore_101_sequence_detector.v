`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.10.2023 15:32:22
// Design Name: 
// Module Name: moore_101_sequence_detector
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
module moore_101_sequence_detector(
        input d_in,
        input clk,
        input reset_n,
        output reg d_out
    );
reg [1:0] present_state, next_state;
parameter s0=2'b00;
parameter s1=2'b01;
parameter s2=2'b10;
parameter s3=2'b11;

//state register use NBA

always@(posedge clk, negedge reset_n)
begin
    if ( !reset_n)
      present_state <= s0;
    else
      present_state <= next_state;
end 

// next state logic 

always@*
begin
    case(present_state)
    s0 : begin 
        if( d_in) next_state=s1;
        else next_state=s0;
        end 
    
    s1 : begin 
        if( d_in) next_state=s1;
        else next_state=s2;
        end 
        
    s2 : begin 
        if( d_in) next_state=s3;
        else next_state=s0;
        end 
        
    s3 : begin 
        if( d_in) next_state=s1;
        else next_state=s2;
        end     
    endcase
end 

// output logic check within the state bubble ( state diagram) 

always@*
begin
    case(present_state)
    s0 : d_out='b0;
    s1 : d_out='b0;
    s2 : d_out='b0;
    s3 : d_out='b1;
    endcase
end 
endmodule
