// Octal to Binary
module Encoder_8x3(out, inn);
  input [7:0]inn;
  output reg [2:0] out;
  always@(*)
  begin
    if(inn == 8'b00000001)
        out = 3'b000;
    else
      if(inn == 8'b00000010)
        out = 3'b001;
    else
      if(inn == 8'b00000100)
        out = 3'b010;
    else
      if(inn == 8'b00001000)
        out = 3'b011;
    else
      if(inn == 8'b00010000)
        out = 3'b100;
    else
      if(inn == 8'b00100000)
        out = 3'b101;
    else
      if(inn == 8'b01000000)
        out = 3'b110;
    else
      if(inn == 8'b10000000)
      out = 3'b111;       
    else
      out = 3'bxxx;  //if we get innput other than the given cases, we don't care(x) what the output is
end
endmodule