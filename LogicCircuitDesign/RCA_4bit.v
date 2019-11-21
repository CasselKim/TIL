RCA_4bit(
	input [3:0] a,b,
	input c_in,
	output [3:0] out,
	output c_out)
	
	wire c1,c2,c3;
	
	RCA_1bit u1(a[0],b[0],c_in,out[0],c1);
	RCA_1bit u2(a[1],b[1],c1,out[1],c2);
	RCA_1bit u3(a[2],b[2],c2,out[2],c3);
	RCA_1bit u4(a[3],b[3],c3,out[3],c_out);
	
endmodule