// Decimal to BCD
module E_DectoBCD(out, inn);
  input [9:0]inn;
  output reg [3:0] out;
  always@(*)
  begin
    if(inn == 10'b0000000001)
        out = 4'b000;
    else
      if(inn == 10'b0000000010)
        out = 4'b0001;
    else
      if(inn == 10'b0000000100)
        out = 4'b0010;
    else
      if(inn == 10'b00000001000)
        out = 4'b0011;
    else
      if(inn == 10'b0000010000)
        out = 4'b0100;
    else
      if(inn == 10'b0000100000)
        out = 4'b0101;
    else
      if(inn == 10'b0001000000)
        out = 4'b0110;
    else
      if(inn == 10'b0010000000)
        out = 4'b0111;    
    else
      if(inn == 10'b0100000000)
        out = 4'b1000;
    else
      if(inn == 10'b1000000000)
        out = 4'b1001; 
    else
      out = 4'bxxxx;  //if we get input other than the given cases, we don't care(x) what the output is.
end
endmodule