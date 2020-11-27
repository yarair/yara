`timescale 1ns / 1ps

module adder_5 (

input [4:0] x,
input [4:0] y,
input cin ,
output [4:0] z,
output cout
);

wire [5:0] carry5;

full_adder N1 (.A(x[0]) ,.B(y[0]) ,.cin(cin), .S(z[0]) ,.cout(carry5[1]));
full_adder N2 (.A(x[1]) ,.B(y[1]) ,.cin(carry5[1]), .S(z[1]) ,.cout(carry5[2]));
full_adder N3 (.A(x[2]) ,.B(y[2]) ,.cin(carry5[2]), .S(z[2]) ,.cout(carry5[3]));
full_adder N4 (.A(x[3]) ,.B(y[3]) ,.cin(carry5[3]), .S(z[3]) ,.cout(carry5[4]));
full_adder N5 (.A(x[4]) ,.B(y[4]) ,.cin(carry5[4]), .S(z[4]) ,.cout(cout));
endmodule
