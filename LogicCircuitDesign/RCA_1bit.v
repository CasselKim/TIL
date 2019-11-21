module RCA_1bit(
	input a,b,
	input c_in,
	output out,
	output c_out)
	
	wire s1, c1, s2;
	
	xor xor1(s1,a,b);
	xor xor2(out,s1,c_in);
	
	and and1(c1,s1,c_in);
	and and2(s2,a,b);
	
	or or1(c_out,c1,s2);

endmodule