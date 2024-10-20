module MUX_4x1_tb;
  wire out_1;
  reg [1:0] select_in;
  reg [3:0] in_4bit_in;
  MUX_4x1 four (.out(out_1), .select(select_in), .in_4bit(in_4bit_in));
  
  initial
  begin
    $monitor( "Input = %b, Select1 = %b, Select0 = %b, Out = %b", in_4bit_in, select_in[1], select_in[0], out_1); 
  end
  
  initial
    begin
    // Enable is 1
      in_4bit_in = 4'b0110; 
      select_in[1] = 0    ;    select_in[0] = 0; 
      #1 if (out_1 == in_4bit_in[0])           $display ("TRUE");
      else $display ("FALSE");
      
      #5 select_in[1] = 1    ;    select_in[0] = 0; 
      #1 if (out_1 == in_4bit_in[1])           $display ("TRUE");
      else $display ("FALSE");
      
      #5 select_in[1] = 0    ;    select_in[0] = 1; 
      #1 if (out_1 == in_4bit_in[2])           $display ("TRUE");
      else $display ("FALSE");
      
      #5 select_in[1] = 1    ;    select_in[0] = 1; 
      #1 if (out_1 == in_4bit_in[3])           $display ("TRUE");
      else $display ("FALSE");
    end
  
  initial 
    begin
      $dumpfile("MUX_4x1_waves.vcd");
      $dumpvars(0, MUX_4x1_tb);
      #30 $finish;
    end 
endmodule