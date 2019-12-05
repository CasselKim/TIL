module rsa_decryption ( 
	input[31:0]  N, e,
	input[13:0]	 encrypt_6783_000,	encrypt_6783_001,   encrypt_6783_002,   encrypt_6783_003,							
				 encrypt_6783_004,	encrypt_6783_005,	encrypt_6783_006,	encrypt_6783_007,	
				 encrypt_6783_008,	encrypt_6783_009,	encrypt_6783_010,	encrypt_6783_011,	
				 encrypt_6783_012,	encrypt_6783_013,	encrypt_6783_014,	encrypt_6783_015,	
				 encrypt_6783_016,	encrypt_6783_017,	encrypt_6783_018,	encrypt_6783_019,	
				 encrypt_6783_020,	encrypt_6783_021,	encrypt_6783_022,	encrypt_6783_023,	
				 encrypt_6783_024,	encrypt_6783_025,	encrypt_6783_026,	encrypt_6783_027,	
				 encrypt_6783_028,	encrypt_6783_029,	encrypt_6783_030,	encrypt_6783_031,	
				 encrypt_6783_032,	encrypt_6783_033,	encrypt_6783_034,	encrypt_6783_035,	
				 encrypt_6783_036,	encrypt_6783_037,	encrypt_6783_038,	encrypt_6783_039,	
				 encrypt_6783_040,	encrypt_6783_041,	encrypt_6783_042,	encrypt_6783_043,	
				 encrypt_6783_044,	encrypt_6783_045,	encrypt_6783_046,	encrypt_6783_047,	
				 encrypt_6783_048,	encrypt_6783_049,	encrypt_6783_050,	encrypt_6783_051,	
				 encrypt_6783_052,	encrypt_6783_053,	encrypt_6783_054,	encrypt_6783_055,	
				 encrypt_6783_056,	encrypt_6783_057,	encrypt_6783_058,	encrypt_6783_059,	
				 encrypt_6783_060,	encrypt_6783_061,	encrypt_6783_062,	encrypt_6783_063,	
				 encrypt_6783_064,	encrypt_6783_065,	encrypt_6783_066,	encrypt_6783_067,	
				 encrypt_6783_068,	encrypt_6783_069,	encrypt_6783_070,	encrypt_6783_071,	
				 encrypt_6783_072,
	output[13:0] DoneBig_6783_000,	DoneBig_6783_001,   DoneBig_6783_002,   DoneBig_6783_003,							
				 DoneBig_6783_004,	DoneBig_6783_005,	DoneBig_6783_006,	DoneBig_6783_007,	
				 DoneBig_6783_008,	DoneBig_6783_009,	DoneBig_6783_010,	DoneBig_6783_011,	
				 DoneBig_6783_012,	DoneBig_6783_013,	DoneBig_6783_014,	DoneBig_6783_015,	
				 DoneBig_6783_016,	DoneBig_6783_017,	DoneBig_6783_018,	DoneBig_6783_019,	
				 DoneBig_6783_020,	DoneBig_6783_021,	DoneBig_6783_022,	DoneBig_6783_023,	
				 DoneBig_6783_024,	DoneBig_6783_025,	DoneBig_6783_026,	DoneBig_6783_027,	
				 DoneBig_6783_028,	DoneBig_6783_029,	DoneBig_6783_030,	DoneBig_6783_031,	
				 DoneBig_6783_032,	DoneBig_6783_033,	DoneBig_6783_034,	DoneBig_6783_035,	
				 DoneBig_6783_036,	DoneBig_6783_037,	DoneBig_6783_038,	DoneBig_6783_039,	
				 DoneBig_6783_040,	DoneBig_6783_041,	DoneBig_6783_042,	DoneBig_6783_043,	
				 DoneBig_6783_044,	DoneBig_6783_045,	DoneBig_6783_046,	DoneBig_6783_047,	
				 DoneBig_6783_048,	DoneBig_6783_049,	DoneBig_6783_050,	DoneBig_6783_051,	
				 DoneBig_6783_052,	DoneBig_6783_053,	DoneBig_6783_054,	DoneBig_6783_055,	
				 DoneBig_6783_056,	DoneBig_6783_057,	DoneBig_6783_058,	DoneBig_6783_059,	
				 DoneBig_6783_060,	DoneBig_6783_061,	DoneBig_6783_062,	DoneBig_6783_063,	
				 DoneBig_6783_064,	DoneBig_6783_065,	DoneBig_6783_066,	DoneBig_6783_067,	
				 DoneBig_6783_068,	DoneBig_6783_069,	DoneBig_6783_070,	DoneBig_6783_071,	
				 DoneBig_6783_072);
	
	wire [31:0] p,q,d;
	
	find_pqd pqd1(N,e,p,q,d);
	decrypting d0(encrypt_6783_000, N, e, p, q, d, DoneBig_6783_000);
	decrypting d1(encrypt_6783_001, N, e, p, q, d, DoneBig_6783_001);
	decrypting d2(encrypt_6783_002, N, e, p, q, d, DoneBig_6783_002);
	decrypting d3(encrypt_6783_003, N, e, p, q, d, DoneBig_6783_003);
	decrypting d4(encrypt_6783_004, N, e, p, q, d, DoneBig_6783_004);
	decrypting d5(encrypt_6783_005, N, e, p, q, d, DoneBig_6783_005);
	decrypting d6(encrypt_6783_006, N, e, p, q, d, DoneBig_6783_006);
	decrypting d7(encrypt_6783_007, N, e, p, q, d, DoneBig_6783_007);
	decrypting d8(encrypt_6783_008, N, e, p, q, d, DoneBig_6783_008);
	decrypting d9(encrypt_6783_009, N, e, p, q, d, DoneBig_6783_009);
	decrypting d10(encrypt_6783_010, N, e, p, q, d, DoneBig_6783_010);
	decrypting d11(encrypt_6783_011, N, e, p, q, d, DoneBig_6783_011);
	decrypting d12(encrypt_6783_012, N, e, p, q, d, DoneBig_6783_012);
	decrypting d13(encrypt_6783_013, N, e, p, q, d, DoneBig_6783_013);
	decrypting d14(encrypt_6783_014, N, e, p, q, d, DoneBig_6783_014);
	decrypting d15(encrypt_6783_015, N, e, p, q, d, DoneBig_6783_015);
	decrypting d16(encrypt_6783_016, N, e, p, q, d, DoneBig_6783_016);
	decrypting d17(encrypt_6783_017, N, e, p, q, d, DoneBig_6783_017);
	decrypting d18(encrypt_6783_018, N, e, p, q, d, DoneBig_6783_018);
	decrypting d19(encrypt_6783_019, N, e, p, q, d, DoneBig_6783_019);
	decrypting d20(encrypt_6783_020, N, e, p, q, d, DoneBig_6783_020);
	decrypting d21(encrypt_6783_021, N, e, p, q, d, DoneBig_6783_021);
	decrypting d22(encrypt_6783_022, N, e, p, q, d, DoneBig_6783_022);
	decrypting d23(encrypt_6783_023, N, e, p, q, d, DoneBig_6783_023);
	decrypting d24(encrypt_6783_024, N, e, p, q, d, DoneBig_6783_024);
	decrypting d25(encrypt_6783_025, N, e, p, q, d, DoneBig_6783_025);
	decrypting d26(encrypt_6783_026, N, e, p, q, d, DoneBig_6783_026);
	decrypting d27(encrypt_6783_027, N, e, p, q, d, DoneBig_6783_027);
	decrypting d28(encrypt_6783_028, N, e, p, q, d, DoneBig_6783_028);
	decrypting d29(encrypt_6783_029, N, e, p, q, d, DoneBig_6783_029);
	decrypting d30(encrypt_6783_030, N, e, p, q, d, DoneBig_6783_030);
	decrypting d31(encrypt_6783_031, N, e, p, q, d, DoneBig_6783_031);
	decrypting d32(encrypt_6783_032, N, e, p, q, d, DoneBig_6783_032);
	decrypting d33(encrypt_6783_033, N, e, p, q, d, DoneBig_6783_033);
	decrypting d34(encrypt_6783_034, N, e, p, q, d, DoneBig_6783_034);
	decrypting d35(encrypt_6783_035, N, e, p, q, d, DoneBig_6783_035);
	decrypting d36(encrypt_6783_036, N, e, p, q, d, DoneBig_6783_036);
	decrypting d37(encrypt_6783_037, N, e, p, q, d, DoneBig_6783_037);
	decrypting d38(encrypt_6783_038, N, e, p, q, d, DoneBig_6783_038);
	decrypting d39(encrypt_6783_039, N, e, p, q, d, DoneBig_6783_039);
	decrypting d40(encrypt_6783_040, N, e, p, q, d, DoneBig_6783_040);
	decrypting d41(encrypt_6783_041, N, e, p, q, d, DoneBig_6783_041);
	decrypting d42(encrypt_6783_042, N, e, p, q, d, DoneBig_6783_042);
	decrypting d43(encrypt_6783_043, N, e, p, q, d, DoneBig_6783_043);
	decrypting d44(encrypt_6783_044, N, e, p, q, d, DoneBig_6783_044);
	decrypting d45(encrypt_6783_045, N, e, p, q, d, DoneBig_6783_045);
	decrypting d46(encrypt_6783_046, N, e, p, q, d, DoneBig_6783_046);
	decrypting d47(encrypt_6783_047, N, e, p, q, d, DoneBig_6783_047);
	decrypting d48(encrypt_6783_048, N, e, p, q, d, DoneBig_6783_048);
	decrypting d49(encrypt_6783_049, N, e, p, q, d, DoneBig_6783_049);
	decrypting d50(encrypt_6783_050, N, e, p, q, d, DoneBig_6783_050);
	decrypting d51(encrypt_6783_051, N, e, p, q, d, DoneBig_6783_051);
	decrypting d52(encrypt_6783_052, N, e, p, q, d, DoneBig_6783_052);
	decrypting d53(encrypt_6783_053, N, e, p, q, d, DoneBig_6783_053);
	decrypting d54(encrypt_6783_054, N, e, p, q, d, DoneBig_6783_054);
	decrypting d55(encrypt_6783_055, N, e, p, q, d, DoneBig_6783_055);
	decrypting d56(encrypt_6783_056, N, e, p, q, d, DoneBig_6783_056);
	decrypting d57(encrypt_6783_057, N, e, p, q, d, DoneBig_6783_057);
	decrypting d58(encrypt_6783_058, N, e, p, q, d, DoneBig_6783_058);
	decrypting d59(encrypt_6783_059, N, e, p, q, d, DoneBig_6783_059);
	decrypting d60(encrypt_6783_060, N, e, p, q, d, DoneBig_6783_060);
	decrypting d61(encrypt_6783_061, N, e, p, q, d, DoneBig_6783_061);
	decrypting d62(encrypt_6783_062, N, e, p, q, d, DoneBig_6783_062);
	decrypting d63(encrypt_6783_063, N, e, p, q, d, DoneBig_6783_063);
	decrypting d64(encrypt_6783_064, N, e, p, q, d, DoneBig_6783_064);
	decrypting d65(encrypt_6783_065, N, e, p, q, d, DoneBig_6783_065);
	decrypting d66(encrypt_6783_066, N, e, p, q, d, DoneBig_6783_066);
	decrypting d67(encrypt_6783_067, N, e, p, q, d, DoneBig_6783_067);
	decrypting d68(encrypt_6783_068, N, e, p, q, d, DoneBig_6783_068);
	decrypting d69(encrypt_6783_069, N, e, p, q, d, DoneBig_6783_069);
	decrypting d70(encrypt_6783_070, N, e, p, q, d, DoneBig_6783_070);
	decrypting d71(encrypt_6783_071, N, e, p, q, d, DoneBig_6783_071);
	decrypting d72(encrypt_6783_072, N, e, p, q, d, DoneBig_6783_072);

endmodule

module decrypting(encrypt_6783, N, e, p, q, d,DoneBig_6783);
	input [13:0] encrypt_6783;
	input [31:0] N, e, p, q, d;
	output reg [13:0] DoneBig_6783;
	
	reg [1022:0] temp;
	integer i;

	
	always @(*) begin
		#10;
		temp = encrypt_6783;
		for(i=1 ;i<1000; i=i+1)
			if(i<d) begin
				temp = temp % N;
				temp = temp * encrypt_6783;
			end
		DoneBig_6783 = temp%N;
	end
endmodule

module find_pqd(N,e,p,q,d);
	input [31:0] N,e;
	output reg [31:0] p,q,d;
	
	reg [1022:0] temp;
	reg [31:0] pi;
	
	integer i;
	
	always @(*) begin
		if(N%1==0) begin		
			p=1; q=N/1;
		end	
		if(N%2==0) begin		
			p=2; q=N/2;
		end	
		if(N%3==0) begin		
			p=3; q=N/3;
		end	
		if(N%5==0) begin		
			p=5; q=N/5;
		end	
		if(N%7==0) begin		
			p=7; q=N/7;
		end	
		if(N%11==0) begin		
			p=11; q=N/11;
		end	
		if(N%13==0) begin		
			p=13; q=N/13;
		end	
		if(N%17==0) begin		
			p=17; q=N/17;
		end	
		if(N%19==0) begin		
			p=19; q=N/19;
		end	
		if(N%23==0) begin		
			p=23; q=N/23;
		end	
		if(N%29==0) begin		
			p=29; q=N/29;
		end	
		if(N%31==0) begin		
			p=31; q=N/31;
		end	
		if(N%37==0) begin		
			p=37; q=N/37;
		end	
		if(N%41==0) begin		
			p=41; q=N/41;
		end	
		if(N%43==0) begin		
			p=43; q=N/43;
		end	
		if(N%47==0) begin		
			p=47; q=N/47;
		end	
		if(N%53==0) begin		
			p=53; q=N/53;
		end	
		if(N%59==0) begin		
			p=59; q=N/59;
		end	
		if(N%61==0) begin		
			p=61; q=N/61;
		end	
		if(N%67==0) begin		
			p=67; q=N/67;
		end	
		if(N%71==0) begin		
			p=71; q=N/71;
		end	
		if(N%73==0) begin		
			p=73; q=N/73;
		end	
		if(N%79==0) begin		
			p=79; q=N/79;
		end	
		if(N%83==0) begin		
			p=83; q=N/83;
		end	
		if(N%89==0) begin		
			p=89; q=N/89;
		end	
		if(N%97==0) begin		
			p=97; q=N/97;
		end	
		if(N%101==0) begin		
			p=101; q=N/101;
		end	
		if(N%103==0) begin		
			p=103; q=N/103;
		end	
		
		d=0;
		pi=(p-1)*(q-1);
		temp=pi+1;
		for(i=0;i<1000;i=i+1) begin
			if(!d) begin
				if(temp%e==0) d=temp/e;
				temp=temp+pi;
			end
		end
	end
endmodule