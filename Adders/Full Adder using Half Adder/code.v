module FA_by_HA(input1,input2, cin, sum, cout);
input input1, input2, cin;
output sum, cout;
wire x, y, z;
  Half_Adder H1(input1,input2, x, y);   // bottom module: i/p -> o/p
  Half_Adder H2(x, cin, sum, z);
  or O1(cout, y, z);
endmodule

module Half_Adder(input1,input2, sum, carry);
input input1, input2;
output sum, carry;
  xor X1(sum, input1, input2);
  and A1(carry, input1, input2);
endmodule