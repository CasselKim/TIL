module halfAdder(
	input a,b,
	output sum,c_out);
	
	assign sum = a^b;
	assign c_out = a&b;
endmodule