module CLA_4bit(
	input [3:0] a,b,
	input c_in,
	output [3:0] out,
	output c_out)
	
	wire c1,c2,c3;
	wire [3:0] g, p;
	
	//Generation Signal
	and and1(g[0],a[0],b[0]);
	and and2(g[1],a[1],b[1]);
	and and3(g[2],a[2],b[3]);
	and and4(g[3],a[2],b[3]);
	
	//Propagation Signal
	or or1(p[0],a[0],b[0]);
	or or2(p[1],a[1],b[1]);
	or or3(p[2],a[2],b[2]);
	or or4(p[3],a[3],b[3]);
	
	wire [3:0] c_proc1, c_proc2, c_proc3, c_proc4;
	
	//get c_out
	and and5(c_proc1,p[0],c_in);
	or or5(c1,g[0],c_proc1);
	
	and and6(c_proc2,p[1],c1);
	or or6(c2,g[1],c_proc2);
	
	and and7(c_proc3,p[2],c2);
	or or7(c3,g[2],c_proc3);
	
	and and8(c_proc4,p[3],c3);
	or or8(c_out,g[3],c_proc4);
	
	//Calculate output
	xor xor1(out[0], p[0], c1);
	xor xor2(out[1], p[1], c2);
	xor xor3(out[2], p[2], c3);
	xor xor4(out[3], p[3], c4);

endmodule