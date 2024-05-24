module fib (
  input clk,
  input resetn,
  output [31:0] out
); 
reg [31:0] RegA, RegB, RegC;
  
  always @ (posedge clk) begin
     if (!resetn) begin
      RegA<=32'h1;	
      RegB <=32'h1;	
      RegC <= 32'h0; 
    end
    else begin
      RegA <=RegA + RegB; 
      RegB<= RegA;	
      RegC <= RegB;	
    end
  end

assign out=RegB;
endmodule
