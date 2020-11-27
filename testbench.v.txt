`timescale 1ns / 1ps
module testbench(
output [5:0]S
    );
    reg [3:0]A;
    reg [3:0]B;
    reg [3:0]x;
    reg [3:0]y;
   full_top testbench(
 .SW({A,B,x,y}),
  .LED(S)

    );
    initial
    begin
    A=4'hF;
    B =4'hE;
    x =4'h7;
    y =4'h3;
    #10;
    A=4'hE;
     B =4'h8;
    x =4'hF;
    y =4'h9;
    #10
     A=4'hA;
     B =4'h6;
    x =4'h4;
    y =4'h8;
    #10
    $finish;
    end
    endmodule

