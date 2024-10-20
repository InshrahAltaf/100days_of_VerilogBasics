module DeMUX_1x4_tb;
  wire [3:0] outt;
  reg [1:0] select_in;
  reg input_in;
  DeMUX_1x4 four (.out(outt), .select(select_in), .inputt(input_in));
  
  initial
  begin
    $monitor( "Input = %b, Select1 = %b, Select0 = %b, Output2 = %b", input_in, select_in[1], select_in[0], outt); 
  end
  
  initial
    begin
     // Enable is 1
      input_in = 0          ;             select_in[1] = 0;              select_in[0] = 0;
      #1 if (outt[0] == input_in)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 input_in = 1         ;             select_in[1] = 0;               select_in[0] = 0; 
      #1 if (outt[0] == input_in)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 input_in = 0          ;             select_in[1] = 1;              select_in[0] = 0;
      #1 if (outt[1] == input_in)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 input_in = 1          ;             select_in[1] = 1;              select_in[0] = 0;
      #1 if (outt[1] == input_in)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 input_in = 0          ;             select_in[1] = 0;              select_in[0] = 1;
      #1 if (outt[2] == input_in)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 input_in = 1          ;             select_in[1] = 0;              select_in[0] = 1; 
      #1 if (outt[2] == input_in)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 input_in = 0          ;             select_in[1] = 1;              select_in[0] = 1;
      #1 if (outt[3] == input_in)           $display ("TRUE");
      else $display ("FALSE");
      
      #5 input_in = 1          ;             select_in[1] = 1;              select_in[0] = 1;
      #1 if (outt[3] == input_in)           $display ("TRUE");
      else $display ("FALSE");
    end
  
  initial 
    begin
      $dumpfile("DeMUX_1x4_waves.vcd");
      $dumpvars(0, DeMUX_1x4_tb);
      #50 $finish;
    end 
endmodule