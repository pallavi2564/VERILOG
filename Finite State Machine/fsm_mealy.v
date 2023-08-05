// 101 sequence detector
module fsm (
    input clk,
    input aresetn,    // Asynchronous active-low reset
    input x,
    output z ); 
parameter S=0,A=1,B=2;
    reg [1:0]state,next;
    always@(*)begin
        case(state)
            S: next=x?A:S;
            A: next= x?A:B;
            B: next= x?A:S;
            default:next<=S;
        endcase
    end
    always@(posedge clk or negedge aresetn )begin
        if(aresetn==0)
            state<=S;
        else
            state<=next;
    end
    assign z=(state==B)&& x==1'b1;
endmodule
