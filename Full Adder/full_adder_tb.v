module full_adder_tb();
reg a,b,cin;
wire sum,cout;
full_adder dut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));

initial
begin
$monitor( "a = %b, b = %b, cin = %b, sum = %b, cout = %b",a, b ,cin, sum, cout); 
a=1'b0;
b=1'b0;
c=1'b0;
#10
a=1'b1;
b=1'b1;
c=1'b0;
#10
a=1'b1;
b=1'b0;
c=1'b1;
#10
a=1'b1;
b=1'b0;
c=1'b0;

end
endmodule
