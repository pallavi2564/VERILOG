module decade_tb();
reg clk, reset;

wire [3:0] q;

decade dut( .clk(clk), .reset(reset), .q(q));

initial
begin
clk = 0;
reset = 1;
#10;
reset = 0;
end

always #5 clk = ~clk;

initial
begin
$monitor (" reset = %b, q = %b", reset, q);
end

endmodule
