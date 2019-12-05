module ascii7b_to_tgbase64(											
	input [6:0]  ascii_6783_000,	ascii_6783_001,  ascii_6783_002,  ascii_6783_003,									
				 ascii_6783_004,	ascii_6783_005,	ascii_6783_006,	ascii_6783_007,				
				 ascii_6783_008,	ascii_6783_009,	ascii_6783_010,	ascii_6783_011,				
				 ascii_6783_012,	ascii_6783_013,	ascii_6783_014,	ascii_6783_015,				
				 ascii_6783_016,	ascii_6783_017,	ascii_6783_018,	ascii_6783_019,				
				 ascii_6783_020,	ascii_6783_021,	ascii_6783_022,	ascii_6783_023,				
				 ascii_6783_024,	ascii_6783_025,	ascii_6783_026,	ascii_6783_027,				
				 ascii_6783_028,	ascii_6783_029,	ascii_6783_030,	ascii_6783_031,				
				 ascii_6783_032,	ascii_6783_033,	ascii_6783_034,	ascii_6783_035,				
				 ascii_6783_036,	ascii_6783_037,	ascii_6783_038,	ascii_6783_039,				
				 ascii_6783_040,	ascii_6783_041,	ascii_6783_042,	ascii_6783_043,				
				 ascii_6783_044,	ascii_6783_045,	ascii_6783_046,	ascii_6783_047,				
				 ascii_6783_048,	ascii_6783_049,	ascii_6783_050,	ascii_6783_051,				
				 ascii_6783_052,	ascii_6783_053,	ascii_6783_054,	ascii_6783_055,				
				 ascii_6783_056,	ascii_6783_057,	ascii_6783_058,	ascii_6783_059,				
				 ascii_6783_060,	ascii_6783_061,	ascii_6783_062,	ascii_6783_063,				
				 ascii_6783_064,	ascii_6783_065,	ascii_6783_066,	ascii_6783_067,				
				 ascii_6783_068,	ascii_6783_069,	ascii_6783_070,	ascii_6783_071,				
				 ascii_6783_072,	ascii_6783_073,	ascii_6783_074,	ascii_6783_075,				
				 ascii_6783_076,	ascii_6783_077,	ascii_6783_078,	ascii_6783_079,				
				 ascii_6783_080,	ascii_6783_081,	ascii_6783_082,	ascii_6783_083,				
				 ascii_6783_084,	ascii_6783_085,	ascii_6783_086,	ascii_6783_087,				
				 ascii_6783_088,	ascii_6783_089,	ascii_6783_090,	ascii_6783_091,				
				 ascii_6783_092,	ascii_6783_093,	ascii_6783_094,	ascii_6783_095,				
				 ascii_6783_096,	ascii_6783_097,	ascii_6783_098,	ascii_6783_099,				
				 ascii_6783_100,	ascii_6783_101,	ascii_6783_102,	ascii_6783_103,				
				 ascii_6783_104,	ascii_6783_105,	ascii_6783_106,	ascii_6783_107,				
				 ascii_6783_108,	ascii_6783_109,	ascii_6783_110,	ascii_6783_111,				
				 ascii_6783_112,	ascii_6783_113,	ascii_6783_114,	ascii_6783_115,				
				 ascii_6783_116,	ascii_6783_117,	ascii_6783_118,	ascii_6783_119,				
				 ascii_6783_120,	ascii_6783_121,	ascii_6783_122,	ascii_6783_123,				
				 ascii_6783_124,	ascii_6783_125,	ascii_6783_126,	ascii_6783_127,				
				 ascii_6783_128,	ascii_6783_129,	ascii_6783_130,	ascii_6783_131,				
				 ascii_6783_132,	ascii_6783_133,	ascii_6783_134,	ascii_6783_135,				
				 ascii_6783_136,	ascii_6783_137,	ascii_6783_138,	ascii_6783_139,				
				 ascii_6783_140,	ascii_6783_141,	ascii_6783_142,	ascii_6783_143,				
				 ascii_6783_144,	ascii_6783_145,						
	output [5:0] tgBASE_6783_000,	tgBASE_6783_001,    tgBASE_6783_002,    tgBASE_6783_003,							
				 tgBASE_6783_004,	tgBASE_6783_005,	tgBASE_6783_006,	tgBASE_6783_007,	
				 tgBASE_6783_008,	tgBASE_6783_009,	tgBASE_6783_010,	tgBASE_6783_011,	
				 tgBASE_6783_012,	tgBASE_6783_013,	tgBASE_6783_014,	tgBASE_6783_015,	
				 tgBASE_6783_016,	tgBASE_6783_017,	tgBASE_6783_018,	tgBASE_6783_019,	
				 tgBASE_6783_020,	tgBASE_6783_021,	tgBASE_6783_022,	tgBASE_6783_023,	
				 tgBASE_6783_024,	tgBASE_6783_025,	tgBASE_6783_026,	tgBASE_6783_027,	
				 tgBASE_6783_028,	tgBASE_6783_029,	tgBASE_6783_030,	tgBASE_6783_031,	
				 tgBASE_6783_032,	tgBASE_6783_033,	tgBASE_6783_034,	tgBASE_6783_035,	
				 tgBASE_6783_036,	tgBASE_6783_037,	tgBASE_6783_038,	tgBASE_6783_039,	
				 tgBASE_6783_040,	tgBASE_6783_041,	tgBASE_6783_042,	tgBASE_6783_043,	
				 tgBASE_6783_044,	tgBASE_6783_045,	tgBASE_6783_046,	tgBASE_6783_047,	
				 tgBASE_6783_048,	tgBASE_6783_049,	tgBASE_6783_050,	tgBASE_6783_051,	
				 tgBASE_6783_052,	tgBASE_6783_053,	tgBASE_6783_054,	tgBASE_6783_055,	
				 tgBASE_6783_056,	tgBASE_6783_057,	tgBASE_6783_058,	tgBASE_6783_059,	
				 tgBASE_6783_060,	tgBASE_6783_061,	tgBASE_6783_062,	tgBASE_6783_063,	
				 tgBASE_6783_064,	tgBASE_6783_065,	tgBASE_6783_066,	tgBASE_6783_067,	
				 tgBASE_6783_068,	tgBASE_6783_069,	tgBASE_6783_070,	tgBASE_6783_071,	
				 tgBASE_6783_072,	tgBASE_6783_073,	tgBASE_6783_074,	tgBASE_6783_075,	
				 tgBASE_6783_076,	tgBASE_6783_077,	tgBASE_6783_078,	tgBASE_6783_079,	
				 tgBASE_6783_080,	tgBASE_6783_081,	tgBASE_6783_082,	tgBASE_6783_083,	
				 tgBASE_6783_084,	tgBASE_6783_085,	tgBASE_6783_086,	tgBASE_6783_087,	
				 tgBASE_6783_088,	tgBASE_6783_089,	tgBASE_6783_090,	tgBASE_6783_091,	
				 tgBASE_6783_092,	tgBASE_6783_093,	tgBASE_6783_094,	tgBASE_6783_095,	
				 tgBASE_6783_096,	tgBASE_6783_097,	tgBASE_6783_098,	tgBASE_6783_099,	
				 tgBASE_6783_100,	tgBASE_6783_101,	tgBASE_6783_102,	tgBASE_6783_103,	
				 tgBASE_6783_104,	tgBASE_6783_105,	tgBASE_6783_106,	tgBASE_6783_107,	
				 tgBASE_6783_108,	tgBASE_6783_109,	tgBASE_6783_110,	tgBASE_6783_111,	
				 tgBASE_6783_112,	tgBASE_6783_113,	tgBASE_6783_114,	tgBASE_6783_115,	
				 tgBASE_6783_116,	tgBASE_6783_117,	tgBASE_6783_118,	tgBASE_6783_119,	
				 tgBASE_6783_120,	tgBASE_6783_121,	tgBASE_6783_122,	tgBASE_6783_123,	
				 tgBASE_6783_124,	tgBASE_6783_125,	tgBASE_6783_126,	tgBASE_6783_127,	
				 tgBASE_6783_128,	tgBASE_6783_129,	tgBASE_6783_130,	tgBASE_6783_131,	
				 tgBASE_6783_132,	tgBASE_6783_133,	tgBASE_6783_134,	tgBASE_6783_135,	
				 tgBASE_6783_136,	tgBASE_6783_137,	tgBASE_6783_138,	tgBASE_6783_139,	
				 tgBASE_6783_140,	tgBASE_6783_141,	tgBASE_6783_142,	tgBASE_6783_143,	
				 tgBASE_6783_144,	tgBASE_6783_145);
				 
	convertedASCII c000(ascii_6783_000,tgBASE_6783_000);
	convertedASCII c001(ascii_6783_001,tgBASE_6783_001);
	convertedASCII c002(ascii_6783_002,tgBASE_6783_002);
	convertedASCII c003(ascii_6783_003,tgBASE_6783_003);
	convertedASCII c004(ascii_6783_004,tgBASE_6783_004);
	convertedASCII c005(ascii_6783_005,tgBASE_6783_005);
	convertedASCII c006(ascii_6783_006,tgBASE_6783_006);
	convertedASCII c007(ascii_6783_007,tgBASE_6783_007);
	convertedASCII c008(ascii_6783_008,tgBASE_6783_008);
	convertedASCII c009(ascii_6783_009,tgBASE_6783_009);
	convertedASCII c010(ascii_6783_010,tgBASE_6783_010);
	convertedASCII c011(ascii_6783_011,tgBASE_6783_011);
	convertedASCII c012(ascii_6783_012,tgBASE_6783_012);
	convertedASCII c013(ascii_6783_013,tgBASE_6783_013);
	convertedASCII c014(ascii_6783_014,tgBASE_6783_014);
	convertedASCII c015(ascii_6783_015,tgBASE_6783_015);
	convertedASCII c016(ascii_6783_016,tgBASE_6783_016);
	convertedASCII c017(ascii_6783_017,tgBASE_6783_017);
	convertedASCII c018(ascii_6783_018,tgBASE_6783_018);
	convertedASCII c019(ascii_6783_019,tgBASE_6783_019);
	convertedASCII c020(ascii_6783_020,tgBASE_6783_020);
	convertedASCII c021(ascii_6783_021,tgBASE_6783_021);
	convertedASCII c022(ascii_6783_022,tgBASE_6783_022);
	convertedASCII c023(ascii_6783_023,tgBASE_6783_023);
	convertedASCII c024(ascii_6783_024,tgBASE_6783_024);
	convertedASCII c025(ascii_6783_025,tgBASE_6783_025);
	convertedASCII c026(ascii_6783_026,tgBASE_6783_026);
	convertedASCII c027(ascii_6783_027,tgBASE_6783_027);
	convertedASCII c028(ascii_6783_028,tgBASE_6783_028);
	convertedASCII c029(ascii_6783_029,tgBASE_6783_029);
	convertedASCII c030(ascii_6783_030,tgBASE_6783_030);
	convertedASCII c031(ascii_6783_031,tgBASE_6783_031);
	convertedASCII c032(ascii_6783_032,tgBASE_6783_032);
	convertedASCII c033(ascii_6783_033,tgBASE_6783_033);
	convertedASCII c034(ascii_6783_034,tgBASE_6783_034);
	convertedASCII c035(ascii_6783_035,tgBASE_6783_035);
	convertedASCII c036(ascii_6783_036,tgBASE_6783_036);
	convertedASCII c037(ascii_6783_037,tgBASE_6783_037);
	convertedASCII c038(ascii_6783_038,tgBASE_6783_038);
	convertedASCII c039(ascii_6783_039,tgBASE_6783_039);
	convertedASCII c040(ascii_6783_040,tgBASE_6783_040);
	convertedASCII c041(ascii_6783_041,tgBASE_6783_041);
	convertedASCII c042(ascii_6783_042,tgBASE_6783_042);
	convertedASCII c043(ascii_6783_043,tgBASE_6783_043);
	convertedASCII c044(ascii_6783_044,tgBASE_6783_044);
	convertedASCII c045(ascii_6783_045,tgBASE_6783_045);
	convertedASCII c046(ascii_6783_046,tgBASE_6783_046);
	convertedASCII c047(ascii_6783_047,tgBASE_6783_047);
	convertedASCII c048(ascii_6783_048,tgBASE_6783_048);
	convertedASCII c049(ascii_6783_049,tgBASE_6783_049);
	convertedASCII c050(ascii_6783_050,tgBASE_6783_050);
	convertedASCII c051(ascii_6783_051,tgBASE_6783_051);
	convertedASCII c052(ascii_6783_052,tgBASE_6783_052);
	convertedASCII c053(ascii_6783_053,tgBASE_6783_053);
	convertedASCII c054(ascii_6783_054,tgBASE_6783_054);
	convertedASCII c055(ascii_6783_055,tgBASE_6783_055);
	convertedASCII c056(ascii_6783_056,tgBASE_6783_056);
	convertedASCII c057(ascii_6783_057,tgBASE_6783_057);
	convertedASCII c058(ascii_6783_058,tgBASE_6783_058);
	convertedASCII c059(ascii_6783_059,tgBASE_6783_059);
	convertedASCII c060(ascii_6783_060,tgBASE_6783_060);
	convertedASCII c061(ascii_6783_061,tgBASE_6783_061);
	convertedASCII c062(ascii_6783_062,tgBASE_6783_062);
	convertedASCII c063(ascii_6783_063,tgBASE_6783_063);
	convertedASCII c064(ascii_6783_064,tgBASE_6783_064);
	convertedASCII c065(ascii_6783_065,tgBASE_6783_065);
	convertedASCII c066(ascii_6783_066,tgBASE_6783_066);
	convertedASCII c067(ascii_6783_067,tgBASE_6783_067);
	convertedASCII c068(ascii_6783_068,tgBASE_6783_068);
	convertedASCII c069(ascii_6783_069,tgBASE_6783_069);
	convertedASCII c070(ascii_6783_070,tgBASE_6783_070);
	convertedASCII c071(ascii_6783_071,tgBASE_6783_071);
	convertedASCII c072(ascii_6783_072,tgBASE_6783_072);
	convertedASCII c073(ascii_6783_073,tgBASE_6783_073);
	convertedASCII c074(ascii_6783_074,tgBASE_6783_074);
	convertedASCII c075(ascii_6783_075,tgBASE_6783_075);
	convertedASCII c076(ascii_6783_076,tgBASE_6783_076);
	convertedASCII c077(ascii_6783_077,tgBASE_6783_077);
	convertedASCII c078(ascii_6783_078,tgBASE_6783_078);
	convertedASCII c079(ascii_6783_079,tgBASE_6783_079);
	convertedASCII c080(ascii_6783_080,tgBASE_6783_080);
	convertedASCII c081(ascii_6783_081,tgBASE_6783_081);
	convertedASCII c082(ascii_6783_082,tgBASE_6783_082);
	convertedASCII c083(ascii_6783_083,tgBASE_6783_083);
	convertedASCII c084(ascii_6783_084,tgBASE_6783_084);
	convertedASCII c085(ascii_6783_085,tgBASE_6783_085);
	convertedASCII c086(ascii_6783_086,tgBASE_6783_086);
	convertedASCII c087(ascii_6783_087,tgBASE_6783_087);
	convertedASCII c088(ascii_6783_088,tgBASE_6783_088);
	convertedASCII c089(ascii_6783_089,tgBASE_6783_089);
	convertedASCII c090(ascii_6783_090,tgBASE_6783_090);
	convertedASCII c091(ascii_6783_091,tgBASE_6783_091);
	convertedASCII c092(ascii_6783_092,tgBASE_6783_092);
	convertedASCII c093(ascii_6783_093,tgBASE_6783_093);
	convertedASCII c094(ascii_6783_094,tgBASE_6783_094);
	convertedASCII c095(ascii_6783_095,tgBASE_6783_095);
	convertedASCII c096(ascii_6783_096,tgBASE_6783_096);
	convertedASCII c097(ascii_6783_097,tgBASE_6783_097);
	convertedASCII c098(ascii_6783_098,tgBASE_6783_098);
	convertedASCII c099(ascii_6783_099,tgBASE_6783_099);
	convertedASCII c100(ascii_6783_100,tgBASE_6783_100);
	convertedASCII c101(ascii_6783_101,tgBASE_6783_101);
	convertedASCII c102(ascii_6783_102,tgBASE_6783_102);
	convertedASCII c103(ascii_6783_103,tgBASE_6783_103);
	convertedASCII c104(ascii_6783_104,tgBASE_6783_104);
	convertedASCII c105(ascii_6783_105,tgBASE_6783_105);
	convertedASCII c106(ascii_6783_106,tgBASE_6783_106);
	convertedASCII c107(ascii_6783_107,tgBASE_6783_107);
	convertedASCII c108(ascii_6783_108,tgBASE_6783_108);
	convertedASCII c109(ascii_6783_109,tgBASE_6783_109);
	convertedASCII c110(ascii_6783_110,tgBASE_6783_110);
	convertedASCII c111(ascii_6783_111,tgBASE_6783_111);
	convertedASCII c112(ascii_6783_112,tgBASE_6783_112);
	convertedASCII c113(ascii_6783_113,tgBASE_6783_113);
	convertedASCII c114(ascii_6783_114,tgBASE_6783_114);
	convertedASCII c115(ascii_6783_115,tgBASE_6783_115);
	convertedASCII c116(ascii_6783_116,tgBASE_6783_116);
	convertedASCII c117(ascii_6783_117,tgBASE_6783_117);
	convertedASCII c118(ascii_6783_118,tgBASE_6783_118);
	convertedASCII c119(ascii_6783_119,tgBASE_6783_119);
	convertedASCII c120(ascii_6783_120,tgBASE_6783_120);
	convertedASCII c121(ascii_6783_121,tgBASE_6783_121);
	convertedASCII c122(ascii_6783_122,tgBASE_6783_122);
	convertedASCII c123(ascii_6783_123,tgBASE_6783_123);
	convertedASCII c124(ascii_6783_124,tgBASE_6783_124);
	convertedASCII c125(ascii_6783_125,tgBASE_6783_125);
	convertedASCII c126(ascii_6783_126,tgBASE_6783_126);
	convertedASCII c127(ascii_6783_127,tgBASE_6783_127);
	convertedASCII c128(ascii_6783_128,tgBASE_6783_128);
	convertedASCII c129(ascii_6783_129,tgBASE_6783_129);
	convertedASCII c130(ascii_6783_130,tgBASE_6783_130);
	convertedASCII c131(ascii_6783_131,tgBASE_6783_131);
	convertedASCII c132(ascii_6783_132,tgBASE_6783_132);
	convertedASCII c133(ascii_6783_133,tgBASE_6783_133);
	convertedASCII c134(ascii_6783_134,tgBASE_6783_134);
	convertedASCII c135(ascii_6783_135,tgBASE_6783_135);
	convertedASCII c136(ascii_6783_136,tgBASE_6783_136);
	convertedASCII c137(ascii_6783_137,tgBASE_6783_137);
	convertedASCII c138(ascii_6783_138,tgBASE_6783_138);
	convertedASCII c139(ascii_6783_139,tgBASE_6783_139);
	convertedASCII c140(ascii_6783_140,tgBASE_6783_140);
	convertedASCII c141(ascii_6783_141,tgBASE_6783_141);
	convertedASCII c142(ascii_6783_142,tgBASE_6783_142);
	convertedASCII c143(ascii_6783_143,tgBASE_6783_143);
	convertedASCII c144(ascii_6783_144,tgBASE_6783_144);
	convertedASCII c145(ascii_6783_145,tgBASE_6783_145);


endmodule

module convertedASCII(ascii_6783, tgBASE_6783);
	input [6:0] ascii_6783;
	output reg [5:0] tgBASE_6783;
	
	always @(*) begin
		case (ascii_6783)
			32 : tgBASE_6783 = 0;
			33 : tgBASE_6783 = 1;
			48 : tgBASE_6783 = 2;
			49 : tgBASE_6783 = 3;
			50 : tgBASE_6783 = 4;
			51 : tgBASE_6783 = 5;
			52 : tgBASE_6783 = 6;
			53 : tgBASE_6783 = 7;
			54 : tgBASE_6783 = 8;
			55 : tgBASE_6783 = 9;
			56 : tgBASE_6783 = 10;
			57 : tgBASE_6783 = 11;
			65 : tgBASE_6783 = 12;
			66 : tgBASE_6783 = 13;
			67 : tgBASE_6783 = 14;
			68 : tgBASE_6783 = 15;
			69 : tgBASE_6783 = 16;
			70 : tgBASE_6783 = 17;
			71 : tgBASE_6783 = 18;
			72 : tgBASE_6783 = 19;
			73 : tgBASE_6783 = 20;
			74 : tgBASE_6783 = 21;
			75 : tgBASE_6783 = 22;
			76 : tgBASE_6783 = 23;
			77 : tgBASE_6783 = 24;
			78 : tgBASE_6783 = 25;
			79 : tgBASE_6783 = 26;
			80 : tgBASE_6783 = 27;
			81 : tgBASE_6783 = 28;
			82 : tgBASE_6783 = 29;
			83 : tgBASE_6783 = 30;
			84 : tgBASE_6783 = 31;
			85 : tgBASE_6783 = 32;
			86 : tgBASE_6783 = 33;
			87 : tgBASE_6783 = 34;
			88 : tgBASE_6783 = 35;
			89 : tgBASE_6783 = 36;
			90 : tgBASE_6783 = 37;
			97 : tgBASE_6783 = 38;
			98 : tgBASE_6783 = 39;
			99 : tgBASE_6783 = 40;
			100 : tgBASE_6783 = 41;
			101 : tgBASE_6783 = 42;
			102 : tgBASE_6783 = 43;
			103 : tgBASE_6783 = 44;
			104 : tgBASE_6783 = 45;
			105 : tgBASE_6783 = 46;
			106 : tgBASE_6783 = 47;
			107 : tgBASE_6783 = 48;
			108 : tgBASE_6783 = 49;
			109 : tgBASE_6783 = 50;
			110 : tgBASE_6783 = 51;
			111 : tgBASE_6783 = 52;
			112 : tgBASE_6783 = 53;
			113 : tgBASE_6783 = 54;
			114 : tgBASE_6783 = 55;
			115 : tgBASE_6783 = 56;
			116 : tgBASE_6783 = 57;
			117 : tgBASE_6783 = 58;
			118 : tgBASE_6783 = 59;
			119 : tgBASE_6783 = 60;
			120 : tgBASE_6783 = 61;
			121 : tgBASE_6783 = 62;
			122 : tgBASE_6783 = 63;	
			default : tgBASE_6783 = 0;
		endcase
	end
endmodule	