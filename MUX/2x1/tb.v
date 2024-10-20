module MUX_2x1_tb;
  wire out_1;
  reg select_in, input1_in, input2_in;
  MUX_2x1 two(.out(out_1),.select(select_in),.input1(input1_in),.input2(input2_in));
  
  initial
  begin
    $monitor( "A = %b, B = %b, Select = %b, Out = %b", input1_in, input2_in, select_in, out_1); 
  end
  
  initial
    begin
      select_in = 0       ;       input1_in = 0;       input2_in = 0;
      #1if (out_1 == 0)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 select_in = 0       ;       input1_in = 0;       input2_in = 1;
      #1if (out_1 == 1)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 select_in = 1       ;       input1_in = 1;       input2_in = 0;
      #1if (out_1 == 1)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 select_in = 1       ;       input1_in = 1;       input2_in = 1;
      #1if (out_1 == 1)           $display ("TRUE");
      else $display ("FALSE");
    end
  
  initial 
    begin
      $dumpfile("MUX_2x1_waves.vcd");
      $dumpvars(0, MUX_2x1_tb);
      #30 $finish;
    end 
endmodule