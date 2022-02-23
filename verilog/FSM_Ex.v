module FSM_Ex(clk,CLR,in,out);
input clk,CLR,in;
output out;
reg [2:0] temp;
localparam A=3'b000,
B=3'b001,
C=3'b010,
D=3'b011,
E=3'b100,
F=3'b101;
always@(posedge clk,negedge CLR)begin
if(!CLR)
temp<=A;
else
case(temp)

A:
if(in)
temp<=B;
else
temp<=A;

B:
if(in)
temp<=C;
else
temp<=E;

C:
if(in)
temp<=C;
else
temp<=D;

D:
if(in)
temp<=F;
else
temp<=A;

E:
if(in)
temp<=F;
else
temp<=A;

F:
if(in)
temp<=C;
else
temp<=E;
endcase
end
assign out=(temp==D|temp==F)?1:0;
endmodule