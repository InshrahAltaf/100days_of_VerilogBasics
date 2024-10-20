module MUX_4x1(out, select, in_4bit);
  output out;
  input [1:0] select;
  input [3:0] in_4bit;
  reg temp_out;
  
  always @(*) 
    begin
      if (select[1] == 0 && select[0] == 0) 
        temp_out = in_4bit[0];
      else if (select[1] == 0 && select[0] == 1)
        temp_out = in_4bit[1];    
      else if (select[1] == 1 && select[0] == 0)
        temp_out = in_4bit[2];    
      else
        temp_out = in_4bit[3];  // select[1] == 1 && select[0] == 1
    end
  
  assign out = temp_out;
endmodule