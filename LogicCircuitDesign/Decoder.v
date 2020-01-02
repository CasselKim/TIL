module Decoder(
	input a,b,c,d,
	output [15:0] out);
	
	wire [7:0] s1;
	
	Decoder_3to8(a,b,c,s1);
	
	assign out = d ? {s1,8'b00000000} : {8'b00000000,s1}; 
endmodule
			