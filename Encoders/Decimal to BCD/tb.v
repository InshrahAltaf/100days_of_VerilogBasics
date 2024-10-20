module E_DectoBCD_tb;
  wire [3:0] out_1;
  reg [9:0]in;
  E_DectoBCD edb (.out(out_1), .inn(in));
  
  initial
  begin
    $monitor( "Input = %b, Output = %b", in, out_1); 
  end
  
  initial
    begin
     // Enable is 1
     // The === operator checks for equality, including x and z values, while the == operator does not for don't care statement(x).
      in = 10'b00000000;
      #1 if (out_1 == 4'bxxx)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 in = 10'b0000000001;
      #1 if (out_1 == 4'b000)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 in = 10'b0100000100;
      #1 if (out_1 === 4'bxxxx)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 in = 10'b0000000010;
      #1 if (out_1 == 4'b0001)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 in = 10'b0001100000;
      #1 if (out_1 === 4'bxxxx)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 in = 10'b0000000100;
      #1 if (out_1 == 4'b0010)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 in = 10'b0001001000;
      #1 if (out_1 === 4'bxxxx)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 in = 10'b0000001000;
      #1 if (out_1 == 4'b0011)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 in = 10'b0101000100;
      #1 if (out_1 === 4'bxxxx)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 in = 10'b0000010000;
      #1 if (out_1 == 4'b0100)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 in = 10'b000010011;
      #1 if (out_1 === 4'bxxxx)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 in = 10'b0000100000;
      #1 if (out_1 == 4'b0101)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 in = 10'b1000100001;
      #1 if (out_1 === 4'bxxxx)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 in = 10'b0001000000;
      #1 if (out_1 == 4'b0110)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 in = 10'b1000010100;
      #1 if (out_1 === 4'bxxxx)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 in = 10'b0010000000;
      #1 if (out_1 == 4'b0111)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 in = 10'b0100000001;
      #1 if (out_1 === 4'bxxxx)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 in = 10'b0100000000;
      #1 if (out_1 == 4'b1000)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 in = 10'b1000010100;
      #1 if (out_1 === 4'bxxxx)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 in = 10'b1000000000;
      #1 if (out_1 == 4'b1001)           $display ("TRUE");
      else $display ("FALSE");
    end
  
  initial 
    begin
      $dumpfile("E_DectoBCD_waves.vcd");
      $dumpvars(0, E_DectoBCD_tb);
      #150 $finish;
    end 
endmodule
