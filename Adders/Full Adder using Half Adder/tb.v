module FA_by_HA_tb;
  wire cout_1, sum_1;
  reg input1_in, input2_in, cin_in;
  FA_by_HA FAbHA (.cout(cout_1), .sum(sum_1), .input1(input1_in) , .input2(input2_in), .cin(cin_in));
  
  initial
  begin
    $monitor( "Input1 = %b, Input2 = %b, Cin = %b, Cout = %b, Sum = %b", input1_in, input2_in, cin_in, cout_1, sum_1); 
  end
  
  initial
    begin
      input1_in = 0       ;          input2_in = 0       ;          cin_in = 0;     
      #1 if (sum_1 == 0 && cout_1 == 0)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 input1_in = 0       ;          input2_in = 0       ;          cin_in = 1; 
      #1 if (sum_1 == 1 && cout_1 == 0)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 input1_in = 0       ;          input2_in = 1       ;          cin_in = 0; 
      #1 if (sum_1 == 1 && cout_1 == 0)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 input1_in = 0       ;          input2_in = 1       ;          cin_in = 1; 
      #1 if (sum_1 == 0 && cout_1 == 1)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 input1_in = 1       ;          input2_in = 0       ;          cin_in = 0;     
      #1 if (sum_1 == 1 && cout_1 == 0)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 input1_in = 1       ;          input2_in = 0       ;          cin_in = 1; 
      #1 if (sum_1 == 0 && cout_1 == 1)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 input1_in = 1       ;          input2_in = 1       ;          cin_in = 0; 
      #1 if (sum_1 == 0 && cout_1 == 1)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 input1_in = 1       ;          input2_in = 1       ;          cin_in = 1; 
      #1 if (sum_1 == 1 && cout_1 == 1)           $display ("TRUE");
      else $display ("FALSE");
    end
  
  initial 
    begin
      $dumpfile("FA_by_HA_waves.vcd");
      $dumpvars(0, FA_by_HA_tb);
      #45 $finish;
    end 
endmodule