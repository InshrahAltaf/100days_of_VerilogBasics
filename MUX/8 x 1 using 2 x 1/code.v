// 8x1 MUX
module MUX_8x1(out, select, in_8bit);
  output out;
  input [2:0] select;             //S0, S1, S2
  input [7:0] in_8bit;            //I1 -I8
  wire w1, w2, w3, w4, w5, w6;
  reg temp_out;
  MUX_2x1 m1(w1, select[0], in_8bit[0], in_8bit[1]);
  MUX_2x1 m2(w2, select[0], in_8bit[2], in_8bit[3]);
  MUX_2x1 m3(w3, select[0], in_8bit[4], in_8bit[5]);
  MUX_2x1 m4(w4, select[0], in_8bit[6], in_8bit[7]);
  MUX_2x1 m5(w5, select[1], w1, w2);
  MUX_2x1 m6(w6, select[1], w3, w4);
  MUX_2x1 m7(out, select[2], w5, w6);
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