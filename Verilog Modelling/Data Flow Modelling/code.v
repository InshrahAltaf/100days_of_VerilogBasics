module data_flow(out, a, b, c, d);
  input a, b, c, d;
  output out;
  wire x, y;
  assign x =  a & b;
  assign y =  c | d;
  assign out = x ^ y;
endmodule