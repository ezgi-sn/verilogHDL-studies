module twobcomp(A1,A2,B1,B2,L,E,G);
input A1,A2,B1,B2;
output L,E,G;
mux(0,~B1&~B2,~B1,~B1|~B2,A1,A2,G);
mux(~B1&~B2,~B1&B2,B1&~B2,B1&B2,A1,A2,E);
mux(B1|B2,B1,B1&B2,0,A1,A2,L);
endmodule
