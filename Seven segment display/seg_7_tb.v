module seg_7_tb;
 reg [3:0] bcd;
 wire [6:0] seg;
 integer i;
 seg_7 uut (. bcd (bcd), .seg(seg));

 initial begin
 for (i = 0; i < 16; i = i+1) 
 begin
 bcd = i; 
 #10;
 end 
 end
endmodule
