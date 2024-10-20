// Decimal to BCD
module PE_DectoBCD(out, inn);
  input [9:0]inn;
  output reg [3:0] out;
  always@(*)
  begin
    if(inn[9] == 1)
        out = 4'b1001;
    else
      if(inn[8] == 1)
        out = 4'b1000;
    else
      if(inn[7] == 1)
        out = 4'b0111;
    else
      if(inn[6] == 1)
        out = 4'b0110;
    else
      if(inn[5] == 1)
        out = 4'b0101;
    else
      if(inn[4] == 1)
        out = 4'b0100;
    else
      if(inn[3] == 1)
        out = 4'b0011;
    else
      if(inn[2] == 1)
        out = 4'b0010;
    else
      if(inn[1] == 1)
        out = 4'b0001;
     else
        out = 4'b0000;      //if(inn[0] == 1)
end
endmodule