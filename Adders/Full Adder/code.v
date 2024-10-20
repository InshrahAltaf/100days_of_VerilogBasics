module Full_Adder(cout, sum, input1, input2, cin);
  output cout, sum;
  wire x, y, z;
  input input1, input2, cin;
  xor X1(x, input1, input2);
  and A1(y, cin, x);
  and A2(z, input1, input2);
  xor X2(sum, x, cin);
  or O(cout, y, z);
endmodule 