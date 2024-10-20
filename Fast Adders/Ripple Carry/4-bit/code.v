//Parallel Adder
module RCA_4 (A, B, cin, sum, cout, out);
  input cin;
  input [3:0] A, B;
  output [3:0] sum;
  output cout;
  output [4:0] out;
  wire c1, c2, c3;
  Full_Adder F1(A[0], B[0], cin, sum[0], c1);
  Full_Adder F2(A[1], B[1], c1, sum[1], c2);
  Full_Adder F3(A[2], B[2], c2, sum[2], c3);
  Full_Adder F4(A[3], B[3], c3, sum[3], cout);
  assign out = {cout, sum};
endmodule 

//Full Adder
module Full_Adder(A,B,cin,sum,cout);
input A,B,cin;
output sum,cout;
  wire x, y, z;
  xor X1(x, A, B);
  and A1(y, cin, x);
  and A2(z, A, B);
  xor X2(sum, x, cin);
  or O(cout, y, z);
endmodule


