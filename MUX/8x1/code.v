module MUX_8x1(out, select, in_8bit);
  output out;
  input [2:0] select;
  input [7:0] in_8bit;
  reg temp_out;
  
  always @(*) 
    begin
      if (select[2] == 0 && select[1] == 0  && select[0] == 0) 
        temp_out = in_8bit[0];
      else 
        if (select[2] == 1 && select[1] == 0  && select[0] == 0)
        temp_out = in_8bit[1];    
      else 
        if (select[2] == 0 && select[1] == 1  && select[0] == 0)
        temp_out = in_8bit[2];    
      else
        if (select[2] == 1 && select[1] == 1  && select[0] == 0) 
          temp_out = in_8bit[3];
      else 
        if (select[2] == 0 && select[1] == 0  && select[0] == 1)
          temp_out = in_8bit[4];    
      else 
        if (select[2] == 1 && select[1] == 0  && select[0] == 1)
          temp_out = in_8bit[5];   
      else 
        if (select[2] == 0 && select[1] == 1  && select[0] == 1)
          temp_out = in_8bit[6];
      else
        temp_out = in_8bit[7];  // select[1] == 1 && select[0] == 1
    end
  assign out = temp_out;
endmodule