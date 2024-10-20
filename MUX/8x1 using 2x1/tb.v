module MUX_8x1_tb;
  wire out_1;
  reg [2:0] select_in;
  reg [7:0] in_8bit_in;
  MUX_8x1 eight (.out(out_1), .select(select_in), .in_8bit(in_8bit_in));
  
  initial
  begin
    $monitor( "Input = %b, Select2 = %b, Select1 = %b, Select0 = %b, Out = %b", in_8bit_in, select_in[2], select_in[1], select_in[0], out_1); 
  end
  
  initial
    begin
      in_8bit_in = 8'b01101101; 
      select_in[2] = 0    ;    select_in[1] = 0;    select_in[0] = 0;
      #1 if (out_1 == in_8bit_in[0])           $display ("TRUE");
      else $display ("FALSE");
      
      #5 select_in[2] = 1    ;    select_in[1] = 0;    select_in[0] = 0; 
      #1 if (out_1 == in_8bit_in[1])           $display ("TRUE");
      else $display ("FALSE");
      
      #5 select_in[2] = 0    ;    select_in[1] = 1;    select_in[0] = 0; 
      #1 if (out_1 == in_8bit_in[2])           $display ("TRUE");
      else $display ("FALSE");
      
      #5 select_in[2] = 1    ;    select_in[1] = 1;    select_in[0] = 0; 
      #1 if (out_1 == in_8bit_in[3])           $display ("TRUE");
      else $display ("FALSE");
      
      #5 select_in[2] = 0    ;    select_in[1] = 0;    select_in[0] = 1; 
      #1 if (out_1 == in_8bit_in[4])           $display ("TRUE");
      else $display ("FALSE");
      
      #5 select_in[2] = 1    ;    select_in[1] = 0;    select_in[0] = 1; 
      #1 if (out_1 == in_8bit_in[5])           $display ("TRUE");
      else $display ("FALSE");
      
      #5 select_in[2] = 0    ;    select_in[1] = 1;    select_in[0] = 1; 
      #1 if (out_1 == in_8bit_in[6])           $display ("TRUE");
      else $display ("FALSE");
      
      #5 select_in[2] = 1    ;    select_in[1] = 1;    select_in[0] = 1;
      #1 if (out_1 == in_8bit_in[7])           $display ("TRUE");
      else $display ("FALSE");
    end 
  
  initial 
    begin
      $dumpfile("MUX_8x1_waves.vcd");
      $dumpvars(0, MUX_8x1_tb);
      #100 $finish;
    end 
endmodule