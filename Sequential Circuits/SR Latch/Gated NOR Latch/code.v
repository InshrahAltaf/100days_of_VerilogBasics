module G_SRLatch_NOR(Qo, Q, E, R, S);
  input S, R, E;
  output reg Q, Qo;
  wire r , s;
  and a1(r, R, E);
  and a2(s, S, E);
  nor N1(Q, r, Qo);
  nor N2( Qo, s, Q);
endmodule