module mux(I0,I1,I2,I3,S0,S1,F);
input I0,I1,I2,I3,S0,S1;
output F;
assign F=(~S0&~S1&I0)|(~S0&I1&S1)|(~S1&I2&S0)|(S0&I3&S1);
endmodule
