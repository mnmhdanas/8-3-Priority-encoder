module encoder42(en,in3,in2,in1,in0,Q1,Q0,V);
  input en,in3,in2,in1,in0;
  output Q1,Q0,V;
  
  
  // Q1 = ( in3 + in2 ) en
  // Q0 = (in3 + ~in2in1 ) en 
  
  assign Q1 = (en) & (in3|in2);
  assign Q0 = (en) &( (in3) | ((~in2)&(in1)) ) ;
  assign V = (en) & ((in3) | (in2) | (in1) | (in0) ) ;
  
endmodule
