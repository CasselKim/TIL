module rsa_encryption (
	input[31:0]  N, e,
	input[13:0]	 oneBig_6783_000,	oneBig_6783_001,    oneBig_6783_002,    oneBig_6783_003,							
				 oneBig_6783_004,	oneBig_6783_005,	oneBig_6783_006,	oneBig_6783_007,	
				 oneBig_6783_008,	oneBig_6783_009,	oneBig_6783_010,	oneBig_6783_011,	
				 oneBig_6783_012,	oneBig_6783_013,	oneBig_6783_014,	oneBig_6783_015,	
				 oneBig_6783_016,	oneBig_6783_017,	oneBig_6783_018,	oneBig_6783_019,	
				 oneBig_6783_020,	oneBig_6783_021,	oneBig_6783_022,	oneBig_6783_023,	
				 oneBig_6783_024,	oneBig_6783_025,	oneBig_6783_026,	oneBig_6783_027,	
				 oneBig_6783_028,	oneBig_6783_029,	oneBig_6783_030,	oneBig_6783_031,	
				 oneBig_6783_032,	oneBig_6783_033,	oneBig_6783_034,	oneBig_6783_035,	
				 oneBig_6783_036,	oneBig_6783_037,	oneBig_6783_038,	oneBig_6783_039,	
				 oneBig_6783_040,	oneBig_6783_041,	oneBig_6783_042,	oneBig_6783_043,	
				 oneBig_6783_044,	oneBig_6783_045,	oneBig_6783_046,	oneBig_6783_047,	
				 oneBig_6783_048,	oneBig_6783_049,	oneBig_6783_050,	oneBig_6783_051,	
				 oneBig_6783_052,	oneBig_6783_053,	oneBig_6783_054,	oneBig_6783_055,	
				 oneBig_6783_056,	oneBig_6783_057,	oneBig_6783_058,	oneBig_6783_059,	
				 oneBig_6783_060,	oneBig_6783_061,	oneBig_6783_062,	oneBig_6783_063,	
				 oneBig_6783_064,	oneBig_6783_065,	oneBig_6783_066,	oneBig_6783_067,	
				 oneBig_6783_068,	oneBig_6783_069,	oneBig_6783_070,	oneBig_6783_071,	
				 oneBig_6783_072,
	output[13:0] encrypt_6783_000,	encrypt_6783_001,   encrypt_6783_002,   encrypt_6783_003,							
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
				 encrypt_6783_072);
				 
				 
	encrypting e0 (oneBig_6783_000, N, e, encrypt_6783_000);
	encrypting e1 (oneBig_6783_001, N, e, encrypt_6783_001);
	encrypting e2 (oneBig_6783_002, N, e, encrypt_6783_002);
	encrypting e3 (oneBig_6783_003, N, e, encrypt_6783_003);
	encrypting e4 (oneBig_6783_004, N, e, encrypt_6783_004);
	encrypting e5 (oneBig_6783_005, N, e, encrypt_6783_005);
	encrypting e6 (oneBig_6783_006, N, e, encrypt_6783_006);
	encrypting e7 (oneBig_6783_006, N, e, encrypt_6783_007);
	encrypting e8 (oneBig_6783_006, N, e, encrypt_6783_008);
	encrypting e9 (oneBig_6783_009, N, e, encrypt_6783_009);
	encrypting e10 (oneBig_6783_010, N, e, encrypt_6783_010);
	encrypting e11 (oneBig_6783_011, N, e, encrypt_6783_011);
	encrypting e12 (oneBig_6783_012, N, e, encrypt_6783_012);
	encrypting e13 (oneBig_6783_013, N, e, encrypt_6783_013);
	encrypting e14 (oneBig_6783_014, N, e, encrypt_6783_014);
	encrypting e15 (oneBig_6783_015, N, e, encrypt_6783_015);
	encrypting e16 (oneBig_6783_016, N, e, encrypt_6783_016);
	encrypting e17 (oneBig_6783_017, N, e, encrypt_6783_017);
	encrypting e18 (oneBig_6783_018, N, e, encrypt_6783_018);
	encrypting e19 (oneBig_6783_019, N, e, encrypt_6783_019);
	encrypting e20 (oneBig_6783_020, N, e, encrypt_6783_020);
	encrypting e21 (oneBig_6783_021, N, e, encrypt_6783_021);
	encrypting e22 (oneBig_6783_022, N, e, encrypt_6783_022);
	encrypting e23 (oneBig_6783_023, N, e, encrypt_6783_023);
	encrypting e24 (oneBig_6783_024, N, e, encrypt_6783_024);
	encrypting e25 (oneBig_6783_025, N, e, encrypt_6783_025);
	encrypting e26 (oneBig_6783_026, N, e, encrypt_6783_026);
	encrypting e27 (oneBig_6783_027, N, e, encrypt_6783_027);
	encrypting e28 (oneBig_6783_028, N, e, encrypt_6783_028);
	encrypting e29 (oneBig_6783_029, N, e, encrypt_6783_029);
	encrypting e30 (oneBig_6783_030, N, e, encrypt_6783_030);
	encrypting e31 (oneBig_6783_031, N, e, encrypt_6783_031);
	encrypting e32 (oneBig_6783_032, N, e, encrypt_6783_032);
	encrypting e33 (oneBig_6783_033, N, e, encrypt_6783_033);
	encrypting e34 (oneBig_6783_034, N, e, encrypt_6783_034);
	encrypting e35 (oneBig_6783_035, N, e, encrypt_6783_035);
	encrypting e36 (oneBig_6783_036, N, e, encrypt_6783_036);
	encrypting e37 (oneBig_6783_037, N, e, encrypt_6783_037);
	encrypting e38 (oneBig_6783_038, N, e, encrypt_6783_038);
	encrypting e39 (oneBig_6783_039, N, e, encrypt_6783_039);
	encrypting e40 (oneBig_6783_040, N, e, encrypt_6783_040);
	encrypting e41 (oneBig_6783_041, N, e, encrypt_6783_041);
	encrypting e42 (oneBig_6783_042, N, e, encrypt_6783_042);
	encrypting e43 (oneBig_6783_043, N, e, encrypt_6783_043);
	encrypting e44 (oneBig_6783_044, N, e, encrypt_6783_044);
	encrypting e45 (oneBig_6783_045, N, e, encrypt_6783_045);
	encrypting e46 (oneBig_6783_046, N, e, encrypt_6783_046);
	encrypting e47 (oneBig_6783_047, N, e, encrypt_6783_047);
	encrypting e48 (oneBig_6783_048, N, e, encrypt_6783_048);
	encrypting e49 (oneBig_6783_049, N, e, encrypt_6783_049);
	encrypting e50 (oneBig_6783_050, N, e, encrypt_6783_050);
	encrypting e51 (oneBig_6783_051, N, e, encrypt_6783_051);
	encrypting e52 (oneBig_6783_052, N, e, encrypt_6783_052);
	encrypting e53 (oneBig_6783_053, N, e, encrypt_6783_053);
	encrypting e54 (oneBig_6783_054, N, e, encrypt_6783_054);
	encrypting e55 (oneBig_6783_055, N, e, encrypt_6783_055);
	encrypting e56 (oneBig_6783_056, N, e, encrypt_6783_056);
	encrypting e57 (oneBig_6783_057, N, e, encrypt_6783_057);
	encrypting e58 (oneBig_6783_058, N, e, encrypt_6783_058);
	encrypting e59 (oneBig_6783_059, N, e, encrypt_6783_059);
	encrypting e60 (oneBig_6783_060, N, e, encrypt_6783_060);
	encrypting e61 (oneBig_6783_061, N, e, encrypt_6783_061);
	encrypting e62 (oneBig_6783_062, N, e, encrypt_6783_062);
	encrypting e63 (oneBig_6783_063, N, e, encrypt_6783_063);
	encrypting e64 (oneBig_6783_064, N, e, encrypt_6783_064);
	encrypting e65 (oneBig_6783_065, N, e, encrypt_6783_065);
	encrypting e66 (oneBig_6783_066, N, e, encrypt_6783_066);
	encrypting e67 (oneBig_6783_067, N, e, encrypt_6783_067);
	encrypting e68 (oneBig_6783_068, N, e, encrypt_6783_068);
	encrypting e69 (oneBig_6783_069, N, e, encrypt_6783_069);
	encrypting e70 (oneBig_6783_070, N, e, encrypt_6783_070);
	encrypting e71 (oneBig_6783_071, N, e, encrypt_6783_071);
	encrypting e72 (oneBig_6783_072, N, e, encrypt_6783_072);

endmodule

module encrypting(oneBig_6783, N, e, encrypt_6783);
	input [13:0] oneBig_6783;
	input [31:0]  N, e;
	output reg [13:0] encrypt_6783;
	
	reg [1022:0] temp;
	integer i;
	
	always @(*) begin
		temp = oneBig_6783;
		for(i=1; i<1000; i=i+1)
			if(i<e) begin
				temp = temp % N;
				temp = temp * oneBig_6783;
			end
		encrypt_6783 = temp%N;
	end
endmodule