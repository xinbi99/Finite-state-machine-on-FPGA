`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Xin Bi
// 
// Create Date: 02/15/2019 10:51:09 PM
// Design Name: 
// Module Name: lab1
// Project Name: LAB 1
//////////////////////////////////////////////////////////////////////////////////

module dff3(d, clrn, clk, q);
    input [2:0]d;
    input clrn;
    input clk;
    output [2:0]q;
    reg [2:0]q_count;
    always @(posedge clk or negedge clrn)
        if (~clrn) begin
            q_count <= 3'd0;
        end
        else begin
            q_count <= d;
        end
    assign q = q_count;
endmodule

module counter(q, u, a, b, c, d, e, f, g, ns);
    input [2:0]q;
    input u;
    output reg [2:0]ns;
    output a;
    output b;
    output c;
    output d;
    output e;
    output f;
    output g;
    reg [6:0]display;

    always@(*)
        begin
            if(u == 1)
                begin
                    if (q < 5) ns <= q + 3'd1;
                    else ns <= 0;
                end
            else
                begin
                    if (q > 0) ns <= q - 3'd1;
                    else ns <= 5;
                end
        end
    always@(q)
    case(q)
    3'b000:display=7'b0000001;
    3'b001:display=7'b1001111;
    3'b010:display=7'b0010010;
    3'b011:display=7'b0000110;
    3'b100:display=7'b1001100;
    3'b101:display=7'b0100100;

    endcase
     
    assign a=display[6];
    assign b=display[5];
    assign c=display[4];
    assign d=display[3];
    assign e=display[2];
    assign f=display[1];
    assign g=display[0];
     
endmodule
