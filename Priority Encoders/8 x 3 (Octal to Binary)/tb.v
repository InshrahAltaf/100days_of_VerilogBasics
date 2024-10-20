module Priority_encoder_8x3_tb();
  wire [2:0] out_1;
  reg [7:0]in;
  Priority_encoder_8x3 peet (.out(out_1), .inn(in));
  
  initial
  begin
    $monitor( "Input = %b, Output = %b", in, out_1); 
  end
  
  initial
    begin
     // Enable is 1
      in[7] = 1 ; in[6] = 0 ; in[5] = 0 ; in[4] = 1 ; in[3] = 1 ; in[2] = 0 ; in[1] = 1 ; in[0] = 0 ;
      #1 if (out_1 == 3'b111)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 in[7] = 0 ; in[6] = 1 ; in[5] = 0 ; in[4] = 1 ; in[3] = 1 ; in[2] = 0 ; in[1] = 1 ; in[0] = 0 ;
      #1 if (out_1 == 3'b110)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 in[7] = 0 ; in[6] = 0 ; in[5] = 1 ; in[4] = 1 ; in[3] = 1 ; in[2] = 0 ; in[1] = 1 ; in[0] = 0 ;
      #1 if (out_1 == 3'b101)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 in[7] = 0 ; in[6] = 0 ; in[5] = 0 ; in[4] = 1 ; in[3] = 1 ; in[2] = 0 ; in[1] = 1 ; in[0] = 0 ;
      #1 if (out_1 == 3'b100)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 in[7] = 0 ; in[6] = 0 ; in[5] = 0 ; in[4] = 0 ; in[3] = 1 ; in[2] = 0 ; in[1] = 1 ; in[0] = 0 ;
      #1 if (out_1 == 3'b011)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 in[7] = 0 ; in[6] = 0 ; in[5] = 0 ; in[4] = 0 ; in[3] = 0 ; in[2] = 1 ; in[1] = 1 ; in[0] = 0 ;
      #1 if (out_1 == 3'b010)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 in[7] = 0 ; in[6] = 0 ; in[5] = 0 ; in[4] = 0 ; in[3] = 0 ; in[2] = 0 ; in[1] = 1 ; in[0] = 0 ;
      #1 if (out_1 == 3'b001)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 in[7] = 0 ; in[6] = 0 ; in[5] = 0 ; in[4] = 0 ; in[3] = 0 ; in[2] = 0 ; in[1] = 0 ; in[0] = 1 ;
      #1 if (out_1 == 3'b000)           $display ("TRUE");
      else $display ("FALSE");
    end
  
  initial 
    begin
      $dumpfile("Priority_encoder_8x3_waves.vcd");
      $dumpvars(0, Priority_encoder_8x3_tb);
      #50 $finish;
    end 
endmodule