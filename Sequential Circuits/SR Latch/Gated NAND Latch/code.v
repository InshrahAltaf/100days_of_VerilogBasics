module G_SRLatch_NAND(Qo, Q, E, R, S);
  input S, R, E;
  output reg Q, Qo;
  wire r , s;
  nand N1(s, S, E);
  nand N2(r, R, E);
  nand N3(Q, s, Qo);
  nand N4( Qo, r, Q);
endmodule
