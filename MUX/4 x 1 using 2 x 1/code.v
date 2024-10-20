// 4x1 MUX
module MUX_4x1(out, select, in_4bit);
  output out;
  input [1:0] select;             //S0, S1
  input [3:0] in_4bit;            //I0 -I3
  wire w1, w2;
  reg temp_out;
  MUX_2x1 m1(w1, select[0], in_4bit[0], in_4bit[1]);
  MUX_2x1 m2(w2, select[0], in_4bit[2], in_4bit[3]);
  MUX_2x1 m3(out, select[1], w1, w2);
endmodule

// 2x1 MUX
module MUX_2x1(outt, selectt, input1, input2);
  output outt;
  input selectt;
  input input1, input2;
  reg temp_out;
  always@(*) begin
    if (selectt)            //select => "select == 1"
      temp_out = input2;
    else
      temp_out = input1;    //if (select == 0)
  end
  assign outt = temp_out;
endmodule 