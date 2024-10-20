module MUX_2x1(out, select, input1 , input2);
  input input1, input2;
  input select;
  output out;
  reg temp_out;
  always@(*) begin
    if (select == 1)
      temp_out = input1;
    else
      if (select == 0)
        temp_out = input2;
  end
  assign out = temp_out;
endmodule 