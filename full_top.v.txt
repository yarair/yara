`timescale 1ns / 1ps

module full_top(
input wire [15:0] SW,
output wire [5:0] LED

    );
    wire [4:0] f1;
    wire [4:0] f2;

    wire cf1;
    wire cf2;
    wire cf3;
    wire [3:0] s1;
    wire [3:0] s2;
    wire [4:0] s3;

   adder_1 first4adder(
   .A (SW[15:12]),
   .B (SW[11:8]),
   .cin(0),
    .S (s1),
   .cout (cf1)

   );

   adder_1 second4adder(
   .A (SW[7:4]),
   .B (SW[3:0]),
   .cin (0),
   .S (s2),
   .cout (cf2)

   );
   assign f1 = {cf1,s1};
   assign f2 = {cf2,s2};

   adder_5 finaladder(
   .x (f1),
   .y (f2),
   .z(s3),
   .cin (0),
   .cout (cf3)
      );
   assign LED[5:0] = {cf3,s3};




endmodule
