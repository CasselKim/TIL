module RCA_16bit(
	input [15:0] a,b,
	input c_in,
	output [15:0] out,
	output c_out)
	
	wire c1,c2,c3;
	
	RCA_4bit k1(a[3:0],b[3:0],c_in,out[3:0],c1);
	RCA_4bit k2(a[7:4],b[7:4],c1,out[7:4],c2);
	RCA_4bit k3(a[11:8],b[11:8],c2,out[11:8],c3);
	RCA_4bit k4(a[15:12],b[15:12],c3,out[15:12],c_out);
	
endmodule
	