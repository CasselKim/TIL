module RCA_4bit(
	input [3:0] a,b,
	output [3:0] sum,
	output c_out);
	
	wire s1,s2,s3;
	
	FullAdder f1(a[0],b[0],1'b0,sum[0],s1);
	FullAdder f2(a[1],b[1],s1,sum[1],s2);
	FullAdder f3(a[2],b[2],s2,sum[2],s3);
	FullAdder f4(a[3],b[3],s3,sum[3],c_out);
	
endmodule
