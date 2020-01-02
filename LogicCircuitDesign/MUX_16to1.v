module MUX_16to1(
	input [3:0] a,b,c,d,
	input [3:0] sel,
	output out);
	
	wire s0,s1,s2,s3;
	
	MUX_4to1 (d[0],d[1],d[2],d[3],sel[1:0],s3); //11xx
	MUX_4to1 (c[0],c[1],c[2],c[3],sel[1:0],s2); // 10xx
	MUX_4to1 (b[0],b[1],b[2],b[3],sel[1:0],s1); //01xx
	MUX_4to1 (a[0],a[1],a[2],a[3],sel[1:0],s0); //00xx

	assign out = sel[3]
						? (sel[2]
								? s3
								: s2)
						: (sel[2]
								? s1
								: s0);
	
endmodule
