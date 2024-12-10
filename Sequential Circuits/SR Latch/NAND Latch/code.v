module SRLatch_NAND(Qo, Q, R, S);
  input S, R;
  output reg Q, Qo;
  nand N1(Q, S, Qo);
  nand N2( Qo, R, Q);
endmodule