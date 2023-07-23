module t_flip_flop (
  input clk, rst,
  input t,
  output reg q  );
  
 
  always@(posedge clk) begin // for synchronous reset
    if(!rst) q <= 0;
    else begin
      q <= (t?~q:q);
    end
  end
  
endmodule
