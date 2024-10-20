module DeMUX_1x2_tb;
  wire out_1, out_2;
  reg select_in;
  reg input_in;
  DeMUX_1x2 two (.out1(out_1), .out2(out_2), .select(select_in), .inputt(input_in));
  
  initial
  begin
    $monitor( "Input = %b, Select = %b, Output1 = %b, Output2 = %b", input_in, select_in, out_1, out_2); 
  end
  
  initial
    begin
     // Enable is 1
      input_in = 0                  ;                          select_in = 0;
      #1 if (out_1 == input_in)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 input_in = 1                 ;                          select_in = 0; 
      #1 if (out_1 == input_in)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 input_in = 0                 ;                          select_in = 1;
      #1 if (out_2 == input_in)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 input_in = 1                 ;                          select_in = 1; 
      #1 if (out_2 == input_in)           $display ("TRUE");
      else $display ("FALSE");
    end
  
  initial 
    begin
      $dumpfile("DeMUX_1x2_waves.vcd");
      $dumpvars(0, DeMUX_1x2_tb);
      #40 $finish;
    end 
endmodule