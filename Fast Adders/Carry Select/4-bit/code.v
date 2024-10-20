module CSA_4(out, Sum, Cout, Cin, A, B);
  input [3:0] A, B;
  input Cin;
  wire [3:0] C0, S0, C1, S1;
  output Cout;
  output [3:0] Sum;
  output [4:0] out;
  wire Cout;
  wire [3:0] Sum;

  Full_Adder F1(C0[0], S0[0], A[0], B[0], 1'b0);
  Full_Adder F2(C0[1], S0[1], A[1], B[1], C0[0]);
  Full_Adder F3(C0[2], S0[2], A[2], B[2], C0[1]);
  Full_Adder F4(C0[3], S0[3], A[3], B[3], C0[2]);

  Full_Adder F5(C1[0], S1[0], A[0], B[0], 1'b1);
  Full_Adder F6(C1[1], S1[1], A[1], B[1], C1[0]);
  Full_Adder F7(C1[2], S1[2], A[2], B[2], C1[1]);
  Full_Adder F8(C1[3], S1[3], A[3], B[3], C1[2]);

  MUX_2x1 M5 (Cout, Cin, C0[3], C1[3]);

  MUX_2x1 M1 (Sum[0], Cin, S0[0], S1[0]);
  MUX_2x1 M2 (Sum[1], Cin, S0[1], S1[1]);
  MUX_2x1 M3 (Sum[2], Cin, S0[2], S1[2]);
  MUX_2x1 M4 (Sum[3], Cin, S0[3], S1[3]);

  assign out = {Cout, Sum};
endmodule

//2x1 MUX
module MUX_2x1(outt, select, input1, input2);
  output outt;
  input select;
  input input1, input2;
  assign outt = (select) ? input2 : input1;
endmodule 

//Full Adder
module Full_Adder(cout, sum, a, b, Cin);
  output cout, sum;
  input a, b, Cin;
  wire x, y, z;
  xor X1(x, a, b);
  and A1(y, Cin, x);
  and A2(z, a, b);
  xor X2(sum, x, Cin);
  or O(cout, y, z);
endmodule