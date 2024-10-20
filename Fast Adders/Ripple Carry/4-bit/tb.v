module RCA_4_tb();
  reg [3:0] A_in, B_in;
  reg cin_in;
  wire [3:0] sum_1;
  wire cout_1;
  wire [4:0] out_o;  
  RCA_4 f (.A(A_in), .B(B_in), .cin(cin_in), .sum(sum_1), .cout(cout_1), .out(out_o));

initial
  begin
    $monitor( "A = %b, B = %b, Cin = %b, Sum = %b, Cout = %b , Out = %b", A_in, B_in, cin_in, sum_1, cout_1, out_o); 
  end
    
initial begin
  A_in = 4'b1010      ;          B_in = 4'b1100        ;          cin_in = 0; 
  #5 if (sum_1 == 4'b0110 && cout_1 == 1 && out_o == 5'b10110)       $display ("TRUE");
      else $display ("FALSE");
  
  A_in = 4'b1111      ;          B_in = 4'b1111        ;          cin_in = 0;
  #5if (sum_1 == 4'b1110 && cout_1 == 1 && out_o == 5'b11110)        $display ("TRUE");
      else $display ("FALSE");
  
  A_in = 4'b1101      ;          B_in = 4'b0110         ;          cin_in = 0;
  #5if (sum_1 == 4'b0011 && cout_1 == 1 && out_o == 5'b10011)        $display ("TRUE");
      else $display ("FALSE"); 
end
  initial begin
      $dumpfile("RCA_4_waves.vcd");
    $dumpvars(0, RCA_4_tb);
      #40 $finish;
  end
endmodule