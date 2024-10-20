// Octal to Binary
module Priority_encoder_8x3(out, inn);
  input [7:0]inn;
  output reg [2:0] out;
  always@(*)
  begin
    if(inn[7] == 1)
        out = 3'b111;
    else
      if(inn[6] == 1)
        out = 3'b110;
    else
      if(inn[5] == 1)
        out = 3'b101;
    else
      if(inn[4] == 1)
        out = 3'b100;
    else
      if(inn[3] == 1)
        out = 3'b011;
    else
      if(inn[2] == 1)
        out = 3'b010;
    else
      if(inn[1] == 1)
        out = 3'b001;
    else
        out = 3'b000;       // if(in[0] == 1)
end
endmodule