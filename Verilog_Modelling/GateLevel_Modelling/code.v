module gate_level(out, a, b, c, d);
  input a, b, c, d;
  output out;
  wire x, y;
  and A1(x, a, b);
  or O1(y, c, d);
  xor X1(out, x, y);
endmodule