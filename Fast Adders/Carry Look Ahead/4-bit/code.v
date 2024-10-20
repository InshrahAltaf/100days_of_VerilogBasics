module CLA_4(out, Cout, Sum, Cin, A, B);
  input [3:0] A, B;
  input Cin;
  wire [3:0] P, G, C;
  output reg [3:0] Sum; 
  output Cout;
  output reg [4:0] out;
  
// Carry Propogate
  assign P = A ^ B;                    //will be 1 when A xor B is high
// Carry Generate; output of lower AND
  assign G = A & B;                    // will be 1 when both inputs are high 
 
// Carry = Gi + Pi.Ci
  assign C[0] = Cin;
  assign C[1] = G[0] | (C[0] & P[0]);
  assign C[2] = G[1] | (G[0] & P[1]) | (C[0] & P[0] & P[1]);
  assign C[3] = G[2] | (G[1] & P[2]) | (G[0] & P[1] & P[2]) | (C[0] & P[0] & P[1] & P[2]);
  assign Cout = G[3] | (G[2] & P[3]) | (G[1] & P[2] & P[3]) | (G[0] & P[1] & P[2] & P[3]) | (C[0] & P[0] & P[1] & P[2] & P[3]);        
         
  assign Sum = P ^ C;
  assign out = {Cout, Sum};
endmodule
                    