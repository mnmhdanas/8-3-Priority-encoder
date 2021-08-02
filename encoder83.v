module encoder83(en,in7,in6,in5,in4,in3,in2,in1,in0,Q2,Q1,Q0,V);
  
  input en,in7,in6,in5,in4,in3,in2,in1,in0;
  output Q2,Q1,Q0,V;
  
  wire Y0,Z0,V0,Y1,Z1,V1,w1,w2,w3;
  
  encoder42 EN0(~V1,in3,in2,in1,in0,Y0,Z0,V0);
  
  encoder42 EN1(en,in7,in6,in5,in4,Y1,Z1,V1);
  
  assign Q2 = V1;
  or OR1(w1,Y0,Y1);
  or OR1(w2,Z0,Z1);
  or OR1(w3,V0,V1);
  
  assign Q1 = en & w1;
  assign Q0 = en & w2;
  assign V  = en & w3;
  
  
endmodule
