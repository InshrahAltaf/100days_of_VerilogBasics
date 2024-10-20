module Encoder_8x3_tb;
  wire [2:0] out_1;
  reg [7:0]in;
  Encoder_8x3 eet (.out(out_1), .inn(in));
  
  initial
  begin
    $monitor( "Input = %b, Output = %b", in, out_1); 
  end
  
  initial
    begin
     // Enable is 1
     // The === operator checks for equality, including x and z values, while the == operator does not for don't care statement(x).
      in = 8'b00000000;
      #1 if (out_1 == 3'bxxx)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 in = 8'b00000001;
      #1 if (out_1 == 3'b000)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 in = 8'b01000010;
      #1 if (out_1 === 3'bxxx)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 in = 8'b00000010;
      #1 if (out_1 == 3'b001)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 in = 8'b00110000;
      #1 if (out_1 === 3'bxxx)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 in = 8'b00000100;
      #1 if (out_1 == 3'b010)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 in = 8'b00101000;
      #1 if (out_1 === 3'bxxx)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 in = 8'b00001000;
      #1 if (out_1 == 3'b011)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 in = 8'b01100100;
      #1 if (out_1 === 3'bxxx)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 in = 8'b00010000;
      #1 if (out_1 == 3'b100)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 in = 8'b0001011;
      #1 if (out_1 === 3'bxxx)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 in = 8'b00100000;
      #1 if (out_1 == 3'b101)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 in = 8'b10000001;
      #1 if (out_1 === 3'bxxx)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 in = 8'b01000000;
      #1 if (out_1 == 3'b110)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 in = 8'b10001010;
      #1 if (out_1 === 3'bxxx)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 in = 8'b10000000;
      #1 if (out_1 == 3'b111)           $display ("TRUE");
      else $display ("FALSE");
    end
  
  initial 
    begin
      $dumpfile("Encoder_8x3_waves.vcd");
      $dumpvars(0, Encoder_8x3_tb);
      #150 $finish;
    end 
endmodule
