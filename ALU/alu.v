module alu(input[7:0] A,
           input[7:0] B,
           input[3:0] sel,
           output reg[7:0] out);
  reg [7:0]O;
always@(*)begin
  case(sel)
  0:O<=8'h0000;
  1:O<=A&B;
  2:O<=A|B;
  3:O<=A^B;
  4:O<=~A;
  5:O<=A-B;
  6:O<=A+B;
  7:O<=8'hFFFF;
  endcase
  end
  assign out=O;
endmodule
