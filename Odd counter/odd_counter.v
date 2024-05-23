module odd_counter (
  input     wire        clk,
  input     wire        reset,
  output    reg[7:0] cnt_o
);
wire [7:0] ncnt_o;
always@(posedge clk or posedge reset)
begin

if(reset)
cnt_o<=1;
else
cnt_o<=ncnt_o;
  
end
assign ncnt_o=cnt_o+ 2;
endmodule
