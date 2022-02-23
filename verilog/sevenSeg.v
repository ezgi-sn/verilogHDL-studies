
module sevenSeg(O0,O1,O2,O3,O4,O5,O6,I0,I1,I2,I3);
input I0,I1,I2,I3;
output O0,O1,O2,O3,O4,O5,O6;
assign O6=~((I0|I1|I2|I3)&(~I0|I1|I2|I3)&(~I0|~I1|~I2|I3)&(I0|I1|~I2|~I3));
assign O5=~((~I0|I1|I2|I3)&(I0|~I1|I2|I3)&(~I0|~I1|I2|I3)&(~I0|~I1|~I2|I3)&(~I0|I1|~I2|~I3));
assign O4=~((~I0|I1|I2|I3)&(~I0|~I1|I2|I3)&(I0|I1|~I2|I3)&(~I0|I1|~I2|I3)&(~I0|~I1|~I2|I3)&(~I0|I1|I2|~I3));
assign O3=~((~I0|I1|I2|I3)&(I0|I1|~I2|I3)&(~I0|~I1|~I2|I3)&(I0|~I1|I2|~I3)&(~I0|~I1|~I2|~I3));
assign O2=~((I0|~I1|I2|I3)&(I0|I1|~I2|~I3)&(I0|~I1|~I2|~I3)&(~I0|~I1|~I2|~I3));
assign O1=~((~I0|I1|~I2|I3)&(I0|~I1|~I2|I3)&(~I0|~I1|I2|~I3)&(I0|I1|~I2|~I3)&(I0|~I1|~I2|~I3)&(~I0|~I1|~I2|~I3));
assign O0=~((~I0|I1|I2|I3)&(I0|I1|~I2|I3)&(~I0|~I1|I2|~I3)&(~I0|I1|~I2|~I3));
endmodule