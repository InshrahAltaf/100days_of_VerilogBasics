module DeMUX_1x4(out, select, inputt);
  output reg [3:0] out;
  input [1:0] select;
  input inputt;
  always@(*) begin
    if (select[1] == 0 && select[0] == 0) 
        out[0] = inputt;
    else 
      if (select[1] == 1 && select[0] == 0)
        out[1] = inputt;
      else 
        if (select[1] == 0 && select[0] == 1)
        out[2] = inputt;     
      else
        out[3] = inputt;  // select[1] == 1 && select[0] == 1
  end
endmodule 