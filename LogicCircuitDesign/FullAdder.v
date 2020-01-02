module FullAdder(
	input a,b,c_in,
	output sum, c_out);

	wire s1, s2, c1;

	halfAdder(a,b,s1,c1);
	halfAdder(s1,c_in,sum,s2);
	xor(c_out, s2, c1);

endmodule
