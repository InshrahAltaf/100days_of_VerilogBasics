module gate_level_tb();
  reg  a_in, b_in, c_in, d_in;
  wire out1;
  gate_level modelling (.a(a_in), .b(b_in), .c(c_in), .d(d_in), .out(out1));
  
  initial
  begin
    $monitor( "A = %b, B = %b, C = %b, D = %b, Out = %b", a_in, b_in, c_in, d_in, out1); 
  end
  
  initial
    begin
      a_in = 0      ;      b_in = 0       ;       c_in = 0;        d_in = 0;
      #1if (out1 == 0)          $display ("TRUE");
      else $display ("FALSE");
      
      #5 a_in = 0      ;      b_in = 0       ;       c_in = 0;        d_in = 1;
      #1if (out1 == 1)          $display ("TRUE");
      else $display ("FALSE");
      
      #5 a_in = 0      ;      b_in = 0       ;       c_in = 1;        d_in = 0;
      #1if (out1 == 1)          $display ("TRUE");
      else $display ("FALSE");
      
      #5 a_in = 0      ;      b_in = 0       ;       c_in = 1;        d_in = 1;
      #1if (out1 == 0)          $display ("TRUE");
      else $display ("FALSE");
      
      #5 a_in = 0      ;      b_in = 1       ;       c_in = 0;        d_in = 0;
      #1if (out1 == 0)          $display ("TRUE");
      else $display ("FALSE");
      
      #5 a_in = 0      ;      b_in = 1       ;       c_in = 0;        d_in = 1;
      #1if (out1 == 1)          $display ("TRUE");
      else $display ("FALSE");
      
      #5 a_in = 0      ;      b_in = 1       ;       c_in = 1;        d_in = 0;
      #1if (out1 == 1)          $display ("TRUE");
      else $display ("FALSE");
      
      #5 a_in = 0      ;      b_in = 1       ;       c_in = 1;        d_in = 1;
      #1if (out1 == 1)          $display ("TRUE");
      else $display ("FALSE");
      
       #5 a_in = 1      ;      b_in = 0       ;       c_in = 0;        d_in = 0;
      #1if (out1 == 0)          $display ("TRUE");
      else $display ("FALSE");
      
      #5 a_in = 1      ;      b_in = 0       ;       c_in = 0;        d_in = 1;
      #1if (out1 == 1)          $display ("TRUE");
      else $display ("FALSE");
      
      #5 a_in = 1      ;      b_in = 0       ;       c_in = 1;        d_in = 0;
      #1if (out1 == 1)          $display ("TRUE");
      else $display ("FALSE");
      
      #5 a_in = 1      ;      b_in = 0       ;       c_in = 1;        d_in = 1;
      #1if (out1 == 0)          $display ("TRUE");
      else $display ("FALSE");
      
      #5 a_in = 1      ;      b_in = 1       ;       c_in = 0;        d_in = 0;
      #1if (out1 == 1)          $display ("TRUE");
      else $display ("FALSE");
      
      #5 a_in = 1      ;      b_in = 1       ;       c_in = 0;        d_in = 1;
      #1if (out1 == 0)          $display ("TRUE");
      else $display ("FALSE");
      
      #5 a_in = 1      ;      b_in = 1       ;       c_in = 1;        d_in = 0;
      #1if (out1 == 0)          $display ("TRUE");
      else $display ("FALSE");
      
      #5 a_in = 1      ;      b_in = 1       ;       c_in = 1;        d_in = 1;
      #1if (out1 == 0)          $display ("TRUE");
      else $display ("FALSE");
    end
  
  initial 
    begin
      $dumpfile("Gate_level_waves.vcd");
      $dumpvars (0, gate_level_tb);
      #100 $finish;
    end 
endmodule