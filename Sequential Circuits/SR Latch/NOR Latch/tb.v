module SRLatch_NOR_tb;
  wire  Q_out, Qo_out;
  reg S_in, R_in;
  SRLatch_NOR uut (.Qo(Qo_out), .Q(Q_out), .R(R_in), .S(S_in));
  
  initial
  begin
    $monitor( "S = %b, R = %b, Q = %b, Qo = %b", S_in, R_in, Q_out, Qo_out); 
  end
  
  initial
    begin
      
      S_in = 0                       ;                R_in = 1;
      #1 if (Q_out == 0 && Qo_out == 1)          
        $display ("TRUE");
      else
        $display ("FALSE");
      
      #3 S_in = 0                          ;                R_in = 0;
      #1 if (Q_out == 0 && Qo_out == 1)   // maintained previous state        
        $display ("TRUE. Maintained previous state.");
      else
        $display ("FALSE");
      
      #3 S_in = 1                       ;                R_in = 0;
      #1 if (Q_out == 1 && Qo_out == 0)          
        $display ("TRUE");
      else
        $display ("FALSE");
      
      #3 S_in = 1                       ;                R_in = 1;
      #1 if (Q_out == 0 && Qo_out == 0)          
        $display ("Forbidden State.");
      else
        $display ("FALSE");
    end
  
  initial 
    begin
      $dumpfile("SRLatch_NOR_waves.vcd");
      $dumpvars(0, SRLatch_NOR_tb);
      #20 $finish;
    end 
endmodule
