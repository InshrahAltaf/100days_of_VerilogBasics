module Half_Adder(cout, sum, input1, input2);
  output cout, sum;
  input input1, input2;
  xor X(sum, input1, input2);
  and A(cout,input1, input2);
endmodule 