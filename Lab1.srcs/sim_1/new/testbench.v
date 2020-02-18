`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Xin Bi
// 
// Create Date: 02/15/2019 10:51:09 PM
// Design Name: 
// Module Name: lab1
// Project Name: LAB 1
//////////////////////////////////////////////////////////////////////////////////

module testbench();
    wire [2:0]ns_tb;
    reg clrn_tb;
    reg clk_tb;
    wire [2:0]q_tb;
    reg u_tb;
    wire a_tb;
    wire b_tb;
    wire c_tb;
    wire d_tb;
    wire e_tb;
    wire f_tb;
    wire g_tb;

    dff3 dff3_tb(ns_tb, clrn_tb, clk_tb, q_tb);
    counter counter_tb(q_tb, u_tb, a_tb, b_tb, c_tb, d_tb, e_tb, f_tb, g_tb, ns_tb);
    initial begin
        clk_tb = 1;
        clrn_tb = 0;
        u_tb = 1;
        #1;
        clrn_tb = 1;
        #16;
        u_tb = 0;
    end
    always begin
        #1;
        clk_tb = ~clk_tb;
    end


endmodule
