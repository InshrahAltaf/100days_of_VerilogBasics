module SRLatch_NOR(Qo, Q, R, S);
  input S, R;
  output reg Q, Qo;
  nor N1(Q, R, Qo);
  nor N2( Qo, S, Q);
endmodule