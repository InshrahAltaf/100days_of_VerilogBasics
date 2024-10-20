module DeMUX_2x1(out1, out2, select, inputt);
  output out1, out2;
  input select;
  input inputt;
  reg temp_out1, temp_out2;
  always@(*) begin
    if (select)              //select => "select == 1"
      temp_out2 = inputt;
    else
      temp_out1 = inputt;    //if (select == 0)
  end
  assign out1 = temp_out1;
  assign out2 = temp_out2;
endmodule 