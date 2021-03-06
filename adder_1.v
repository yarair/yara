`timescale 1ns / 1ps

module adder_1 (
input [3:0] A,
input [3:0] B,
input cin ,
output [3:0] S,
output cout
);

wire [3:0] carry;

full_adder A1 (.A(A[0]) ,.B(B[0]) ,.cin(cin), .S(S[0]) ,.cout(carry[1]));
full_adder A2 (.A(A[1]) ,.B(B[1]) ,.cin(carry[1]), .S(S[1]) ,.cout(carry[2]));
full_adder A3 (.A(A[2]) ,.B(B[2]) ,.cin(carry[2]), .S(S[2]) ,.cout(carry[3]));
full_adder A4 (.A(A[3]) ,.B(B[3]) ,.cin(carry[3]), .S(S[3]) ,.cout(cout));
endmodule
