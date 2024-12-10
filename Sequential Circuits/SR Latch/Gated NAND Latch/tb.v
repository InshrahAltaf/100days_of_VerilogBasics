module G_SRLatch_NAND_tb;
  wire  Q_out, Qo_out;
  reg S_in, R_in, E_in;
  G_SRLatch_NAND uut (.Qo(Qo_out), .Q(Q_out), .E(E_in), .R(R_in), .S(S_in));
  
  initial
  begin
    $monitor( "E = %b, S = %b, R = %b, Q = %b, Qo = %b", E_in, S_in, R_in, Q_out, Qo_out); 
  end
  
  initial
    begin
      E_in = 1                ;         S_in = 0             ;          R_in = 1;
      #1 if (Q_out == 0 && Qo_out == 1)          
        $display ("TRUE");
      else
        $display ("FALSE");
      
      #3 E_in = 1             ;         S_in = 0             ;          R_in = 0;        
      #1 if (Q_out == 0 && Qo_out == 1)          
        $display ("TRUE. Maintained previous state.");
      else
        $display ("FALSE");
      
      #3 E_in = 1             ;          S_in = 1            ;          R_in = 0;        
      #1 if (Q_out == 1 && Qo_out == 0)          
        $display ("TRUE");
      else
        $display ("FALSE");
      
      #3 E_in = 0;                 // we don't care what the values of S and R
      #1 if (Q_out == 1 && Qo_out == 0)          
        $display ("TRUE. Maintained previous state.");
      else
        $display ("FALSE");
      
      #3 E_in = 1             ;          S_in = 1            ;          R_in = 1;        
      #1 if (Q_out == 1 && Qo_out == 1)          
        $display ("TRUE. Forbidden State.");
      else
        $display ("FALSE");
    end
  
  initial 
    begin
      $dumpfile("G_SRLatch_NAND_waves.vcd");
      $dumpvars(0, G_SRLatch_NAND_tb);
      #100 $finish;
    end 
endmodule

