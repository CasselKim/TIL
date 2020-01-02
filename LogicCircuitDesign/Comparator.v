module Comparator(
	input [1:0] a,b,
	output reg GT, EQ, LT);
	
	always @(*) begin
		GT=0; EQ=0; LT=0;
		
		if (a[1]>b[1]) GT=1;
		
		else if (a[1]==b[1]) begin
			
			if (a[0]>b[0]) GT=1;
			else if (a[0]==b[0]) EQ=1;
			else LT=1;
		end
		else LT=1;
	end
endmodule
