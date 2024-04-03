module decade (
    input clk,
    input reset,      // Synchronous active-high reset
    output reg [3:0] q);
    always@(posedge clk)begin
        if(reset)
            q<=0;
        else if(q<4'b1010)
            q<=q+1'b1;
        else
        q<=0;
    end
endmodule
