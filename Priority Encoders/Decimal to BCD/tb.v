module PE_DectoBCD_tb;
  wire [3:0] out_1;
  reg [9:0]in;
  PE_DectoBCD pedb (.out(out_1), .inn(in));
  
  initial
  begin
    $monitor( "Input = %b, Output = %b", in, out_1); 
  end
  
  initial
    begin
     // Enable is 1
      in[9] = 1 ; in[8] = 1 ; in[7] = 1 ; in[6] = 0 ; in[5] = 0 ; in[4] = 1 ; in[3] = 1 ; in[2] = 0 ; in[1] = 1 ; in[0] = 0 ;
      #1 if (out_1 == 4'b1001)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 in[9] = 0 ; in[8] = 1 ; in[7] = 0 ; in[6] = 1 ; in[5] = 1 ; in[4] = 0 ; in[3] = 0 ; in[2] = 1 ; in[1] = 0 ; in[0] = 1 ;
      #1 if (out_1 == 4'b1000)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 in[9] = 0 ; in[8] = 0 ; in[7] = 1 ; in[6] = 0 ; in[5] = 0 ; in[4] = 1 ; in[3] = 1 ; in[2] = 0 ; in[1] = 1 ; in[0] = 0 ;
      #1 if (out_1 == 4'b0111)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 in[9] = 0 ; in[8] = 0 ; in[7] = 0 ; in[6] = 1 ; in[5] = 1; in[4] = 0 ; in[3] = 0 ; in[2] = 1 ; in[1] = 0 ; in[0] = 1 ;
      #1 if (out_1 == 4'b0110)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 in[9] = 0 ; in[8] = 0 ; in[7] = 0 ; in[6] = 0 ; in[5] = 1 ; in[4] = 1 ; in[3] = 0 ; in[2] = 0 ; in[1] = 1 ; in[0] = 0 ;
      #1 if (out_1 == 4'b0101)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 in[9] = 0 ; in[8] = 0 ; in[7] = 0 ; in[6] = 0 ; in[5] = 0 ; in[4] = 1 ; in[3] = 0 ; in[2] = 1 ; in[1] = 0 ; in[0] = 0 ;
      #1 if (out_1 == 4'b0100)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 in[9] = 0 ; in[8] = 0 ; in[7] = 0 ; in[6] = 0 ; in[5] = 0 ; in[4] = 0 ; in[3] = 1 ; in[2] = 0 ; in[1] = 1 ; in[0] = 0 ;
      #1 if (out_1 == 4'b0011)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 in[9] = 0 ; in[8] = 0 ; in[7] = 0 ; in[6] = 0 ; in[5] = 0 ; in[4] = 0 ; in[3] = 0 ; in[2] = 1 ; in[1] = 1 ; in[0] = 1 ;
      #1 if (out_1 == 4'b0010)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 in[9] = 0 ; in[8] = 0 ; in[7] = 0 ; in[6] = 0 ; in[5] = 0 ; in[4] = 0 ; in[3] = 0 ; in[2] = 0 ; in[1] = 1 ; in[0] = 0 ;
      #1 if (out_1 == 4'b0001)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 in[9] = 0 ; in[8] = 0 ; in[7] = 0 ; in[6] = 0 ; in[5] = 0 ; in[4] = 0 ; in[3] = 0 ; in[2] = 0 ; in[1] = 0 ; in[0] = 1 ;
      #1 if (out_1 == 4'b0000)           $display ("TRUE");
      else $display ("FALSE");
    end
  
  initial 
    begin
      $dumpfile("PE_DectoBCD_waves.vcd");
      $dumpvars(0, PE_DectoBCD_tb);
      #60 $finish;
    end 
endmodule