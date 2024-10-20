module CSA_4_tb();
  reg [3:0] A_in , B_in;
  reg Cin_in;
  wire[3:0] Sum_1; 
  wire Cout_1;
  wire [4:0] out_o;
  CSA_4 f (.A(A_in), .B(B_in), .Cin(Cin_in), .Sum(Sum_1), .Cout(Cout_1), .out(out_o));

initial
  begin
    $monitor( "A = %b, B = %b, Cin = %b, Sum = %b, Cout = %b , Out = %b", A_in, B_in, Cin_in, Sum_1, Cout_1, out_o); 
  end
    
initial begin
  A_in = 4'b1010      ;          B_in = 4'b1100        ;          Cin_in = 0; 
  #5 if (Sum_1 == 4'b0110 && Cout_1 == 1 && out_o == 5'b10110)       $display ("TRUE");
      else $display ("FALSE");
  
  A_in = 4'b1111      ;          B_in = 4'b1111        ;          Cin_in = 0;
  #5if (Sum_1 == 4'b1110 && Cout_1 == 1 && out_o == 5'b11110)        $display ("TRUE");
      else $display ("FALSE");
  
  A_in = 4'b1101      ;          B_in = 4'b0110         ;         Cin_in = 0;
  #5if (Sum_1 == 4'b0011 && Cout_1 == 1 && out_o == 5'b10011)        $display ("TRUE");
      else $display ("FALSE"); 
end
  initial begin
      $dumpfile("CSA_4_waves.vcd");
    $dumpvars(0, CSA_4_tb);
      #40 $finish;
  end
endmodule