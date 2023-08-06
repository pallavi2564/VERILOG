module and_tb;
  reg a,b;
  wire y;
  and dut(.a(a),.b(b),.y(y));
  initial begin
    a=1,b=0;
    #10 a=0,b=1;
    #10 a=1,b=1;
    #10 a=0,b=0;
    $finish
  end
endmodule
