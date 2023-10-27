`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.10.2023 21:37:25
// Design Name: 
// Module Name: mealy_10101_seq_dect
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


module mealy_10101_seq_dect(
input d_in,
input clk,
input reset_n,
output reg q_out);
reg [2:0] ps,ns;
parameter s0 = 3'b000;
parameter s1 = 3'b001;
parameter s2 = 3'b010;
parameter s3 = 3'b011;
parameter s4 = 3'b100;

always @ (posedge clk, negedge reset_n)
begin
    if(!reset_n)
    ps <= s0;
    else
    ps <= ns;
end
always @ *
begin
    case(ps)
    s0:
    begin
    if(d_in)
        ns = s1;
    else
        ns = s0;
    end
    
    s1:
    begin
    if(d_in)
        ns = s1;
    else
        ns = s2;
    end 
    
    s2:
    begin
    if(d_in)
        ns = s3;
    else
        ns = s0;

    end
    s3:
    begin
    if(d_in)
        ns = s1;
    else
        ns = s4;

    end
    s4:
    begin
    if(d_in)
        ns = s1;
    else
        ns = s0;

    end
    default:ns = s0;
    endcase
end
always @ *
begin
    case(ps)
    s0:q_out = 'b0;
    s1:q_out = 'b0;
    s2:q_out = 'b0;
    s3:q_out = 'b0;
    s4:
    begin
        if (d_in)
            q_out = 'b1;
        else
            q_out = 'b0;
    end
    default:q_out = 'b0;
    endcase
end
endmodule
