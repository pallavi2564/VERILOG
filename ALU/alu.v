module alu(input[15:0] A,
input[15:0] B,
input[2:0] sel,
output[15:0] out);
  reg [15:0]O;
always@(*)begin
  case(sel)
  0:O<=16'h0000;
  1:O<=A&B;
  2:O<=A|B;
  3:O<=A^B;
  4:O<=~A;
  5:O<=A-B;
  6:O<=A+B;
  7:O<=16'hFFFF;
  endcase
  end
  assign out=O;
endmodule
