module encoder83tb();
  reg en,in7,in6,in5,in4,in3,in2,in1,in0;
  wire Q2,Q1,Q0,V;
  integer i,j;
  
  encoder83 DUT(en,in7,in6,in5,in4,in3,in2,in1,in0,Q2,Q1,Q0,V);
  
  initial 
    begin
      in7 = 1'b0; 
      in6 = 1'b0;
      in5 = 1'b0;
      in4 = 1'b0;
      in3 = 1'b0;
      in2 = 1'b0;
      in1 = 1'b0;
      in0 = 1'b0;
      en = 1'b0;
    end
  
  initial
    begin
      for(i=0;i<2;i=i+1)
        for(j=0;j<256;j=j+1)
          begin
            {in7,in6,in5,in4,in3,in2,in1,in0} = j;
            en = i;
            #10;
          end
    end
  
  initial
    $monitor("en =%b   input = %b%b%b%b%b%b%b%b output = %b%b%b     valid = %b",           en,in7,in6,in5,in4,in3,in2,in1,in0,Q2,Q1,Q0,V);
  
  initial
    #5110 $finish;
  
endmodule
