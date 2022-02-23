module ram(ramOut, ramIn, addr, RW, CLK);
output [3:0] ramOut;
reg [3:0] ramOut;
input [3:0] ramIn;
input [5:0] addr;
input RW;
input CLK;
reg [3:0] RAM[63:0];
always @(posedge CLK)
begin
case(RW)
0:
ramOut=RAM[addr];
1:
RAM[addr]=ramIn;
default:ramOut=4'bz;
endcase
end
endmodule