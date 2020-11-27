`timescale 1ns / 1ps

module full_adder( input A,
       input B,
       input cin,
       output S,
       output cout
       );
       assign S = A^B^cin;
       assign cout = (A&B) | (cin&(A^B));
      
endmodule
