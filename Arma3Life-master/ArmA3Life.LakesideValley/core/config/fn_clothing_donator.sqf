/*
	File: fn_clothing_donator.sqf
	Author: 2H2K Dealer
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Donator Outfits"];

_ret = [];
switch (_filter) do
{
	//Uniforms updated
	case 0:
	{
		if(license_civ_donator && playerSide == civilian) then
		{
			_ret set[count _ret,["TRYK_SUITS_BLK_F","Black Suit",35000]];
			_ret set[count _ret,["TRYK_SUITS_BR_F","Brown Suit ",35000]];
			_ret set[count _ret,["A3L_Suit_Uniform","Suit",35000]];

			_ret set[count _ret,["TRYK_U_B_BLOD_T","Black T Green P",5000]];
			_ret set[count _ret,["TRYK_U_B_BLKTAN_CombatUniform","Black T Tan P",7000]];
			_ret set[count _ret,["TRYK_U_B_BLKTANR_CombatUniformTshirt","Black T Tan P II",7000]];
			_ret set[count _ret,["TRYK_U_B_BLTAN_T","Black T Dark Tan P",5000]];
			_ret set[count _ret,["TRYK_U_B_fleece_UCP","Leader",5000]];
			_ret set[count _ret,["TRYK_U_B_ODTANR_CombatUniformTshirt","Green T Tan P",8000]];
			_ret set[count _ret,["TRYK_U_B_PCUGs_OD","Jeans Green Hood",8000]];
			_ret set[count _ret,["TRYK_U_B_PCUGs_gry","Jeans Gray Hood ",8000]];
			_ret set[count _ret,["TRYK_U_B_PCUGs_BLK","Jeans Black Hood",8000]];
			_ret set[count _ret,["TRYK_U_B_C02_Tsirt","Baggy Jeans + Black T",5000]];
			_ret set[count _ret,["TRYK_OVERALL_SAGE_BLKboots_nk","Coveralls Green",4000]];
			_ret set[count _ret,["TRYK_OVERALL_nok_flesh","Coveralls Tan",4000]];
			_ret set[count _ret,["TRYK_U_B_wh_blk_Rollup_CombatUniform","White T Black Cargos",7000]];
			_ret set[count _ret,["TRYK_U_B_wh_tan_Rollup_CombatUniform","White T Tan Cargos",7000]];
			_ret set[count _ret,["TRYK_U_pad_hood_Blk","Black Hood Tan Cargos",10000]];
			_ret set[count _ret,["TRYK_U_denim_hood_blk","Black Hood Jeans II",15000]];
			_ret set[count _ret,["TRYK_U_denim_jersey_blk","Black T & Jeans",10000]];
			_ret set[count _ret,["TRYK_U_denim_jersey_blu","Blue T & Jeans",10000]];
			_ret set[count _ret,["TRYK_U_denim_hood_nc","Green Hood & Jeans",10000]];
			_ret set[count _ret,["TRYK_U_taki_wh","Tan Mid East",10000]];
			_ret set[count _ret,["TRYK_U_taki_BLK","Black Mid East",10000]];
			_ret set[count _ret,["TRYK_U_taki_COY","Brown Mid East ",10000]];

			_ret set[count _ret,["TRYK_U_B_BLK_T_BK","Black Jeans (Black)",5000]];
			_ret set[count _ret,["TRYK_U_B_BLK_T_WH","Black Jeans (White)",5000]];
			_ret set[count _ret,["TRYK_U_B_Denim_T_BK","Grey Jeans (Black)",15000]];
			_ret set[count _ret,["TRYK_U_B_Denim_T_WH","Grey Jeans (White)",5000]];

			_ret set[count _ret,["A3L_Priest_Uniform","Priest Uniform",10000]];
			_ret set[count _ret,["A3L_Character_Uniform","Life Uniform",15000]];
			_ret set[count _ret,["A3L_Dude_Outfit","Dude outfit",20000]];
			_ret set[count _ret,["A3L_Farmer_Outfit","Farmer Outfit",20000]];
			_ret set[count _ret,["A3L_Worker_Outfit","Worker Outfit",20000]];
			_ret set[count _ret,["A3LShirt","ArmA 3 Life Shirt",2500]];
			_ret set[count _ret,["A3L_Poop2day","I Pooped Today!",2750]];
			_ret set[count _ret,["A3L_A3LogoPants","A3L Logo Pants",1500]];
			_ret set[count _ret,["pervt_uni","Pervert Shirt",1750]];
			_ret set[count _ret,["BluePlaid_uni","A3L Plaid (Blue)",1250]];
			_ret set[count _ret,["OrangePlaid_uni","A3L Plaid (Orange)",3500]];
			_ret set[count _ret,["PinkPlaid_uni","A3L Plaid (Pink)",3500]];
			_ret set[count _ret,["RedPlaid_uni","A3L Plaid (Red)",3500]];
			_ret set[count _ret,["YellowPlaid_uni","A3L Plaid (Yellow)",3500]];
			_ret set[count _ret,["checkered_uni","A3L Polo (Checkered)",3500]];
			_ret set[count _ret,["GbGyBr_uni","A3L Polo (GB-GY-BR)",3500]];
			_ret set[count _ret,["GnBlBr_uni","A3L Polo (GN-BL-BR)",3500]];
			_ret set[count _ret,["GnGyBr_uni","A3L Polo (GN-GN-GY)",3500]];
			_ret set[count _ret,["GyBlBr_uni","A3L Polo (GY-BL-BR)",3500]];
			_ret set[count _ret,["kingfish_uni","A3L Polo (Kingfish)",3500]];
			_ret set[count _ret,["mothertrucker_uni","A3L Polo (Mothertrucker)",3500]];
			_ret set[count _ret,["OrBlBr_uni","A3L Polo (OR-BL-BR)",3500]];
			_ret set[count _ret,["OrGnGy_uni","A3L Polo (OR-GN-GY)",3500]];
			_ret set[count _ret,["OrGyBr_uni","A3L Polo (OR-GY-BR)",3500]];
			_ret set[count _ret,["PkGnGy_uni","A3L Polo (PK-GN-GY)",3500]];
			_ret set[count _ret,["PkGyBr_uni","A3L Polo (PK-GY-BR)",3500]];
			_ret set[count _ret,["RdBlBr_uni","A3L Polo (RD-BL-BR)",3500]];
			_ret set[count _ret,["RdGnGy_uni","A3L Polo (RD-GN-GY)",3500]];
			_ret set[count _ret,["RdGyBr_uni","A3L Polo (RD-GY-BR)",3500]];
			_ret set[count _ret,["sohoku_uni","A3L Polo (Sohoku)",3500]];
			_ret set[count _ret,["WhBlBr_uni","A3L Polo (WH-BL-BR)",3500]];
			_ret set[count _ret,["WhGyBr_uni","A3L Polo (WH-GY-BR)",3500]];
			_ret set[count _ret,["YlBlBr_uni","A3L Polo (YL-BL-BR)",3500]];
			_ret set[count _ret,["YlGnGy_unI","A3L Polo (YL-GN-GY)",3500]];
			_ret set[count _ret,["YlGyBr_uni","A3L Polo (YL-GY-BR)",3500]];
			_ret set[count _ret,["racer_uni","A3L Racer Uniform",3500]];
			_ret set[count _ret,["taxi_uni","A3L Taxi Uniform",3500]];
			_ret set[count _ret,["arma3","ArmA 3 Polo",3500]];
			_ret set[count _ret,["arma3black","ArmA 3 Polo (Black)",3500]];
			_ret set[count _ret,["ATI","ATI Enthusiast",3500]];
			_ret set[count _ret,["tacobell","Delgado Shirt",3500]];
			_ret set[count _ret,["dutch","Dutch Shirt",3500]];
			_ret set[count _ret,["hanacd","Hannes Academy",3500]];
			_ret set[count _ret,["nvidia","Nvidia Enthusiast",3500]];
			_ret set[count _ret,["SFG","SF Giant",3500]];
			_ret set[count _ret,["walkingdead","The Walking Dead",3500]];
			_ret set[count _ret,["A3L_SpookyMummy","Mummy",400000]];
			_ret set[count _ret,["A3L_Bikini_Girl","Bikini",400000]];
		};
	};
	//Hats updated
	case 1:
	{
		if(license_civ_donator && playerSide == civilian) then
		{
			_ret set[count _ret,["kio_vfv_mask","Anon", 1000]];
			_ret set[count _ret,["Kio_Capital_Hat","Top Hat w/Monacle", 1000]];
			_ret set[count _ret,["a3l_hardhat","Hard Hat", 200]];
			_ret set[count _ret,["Kio_Afro_Hat","Brown Afro", 200]];
			_ret set[count _ret,["H_Beret_blk","Black Beret", 200]];
			_ret set[count _ret,["H_Booniehat_khk",nil, 400]];
			_ret set[count _ret,["H_Booniehat_oli",nil, 400]];
			_ret set[count _ret,["H_Booniehat_tan",nil, 400]];
			_ret set[count _ret,["Kio_No1_Hat","#1 Hat", 200]];
			_ret set[count _ret,["Kio_Pirate_Hat","Pirate Hat", 50000]];
			_ret set[count _ret,["Kio_Santa_Hat","Santa Hat", 200]];
			_ret set[count _ret,["Kio_Spinning_Hat","Spinning Hat", 200]];
			_ret set[count _ret,["Kio_Hat","Cute Warm Hat", 200]];
			_ret set[count _ret,["TRYK_H_Bandana_H","Ninja Bandana",100]];
			_ret set[count _ret,["TRYK_H_Bandana_wig","Ninja Bandana II",200]];
			_ret set[count _ret,["TRYK_H_EARMUFF","Ear Protectors",200]];
			_ret set[count _ret,["TRYK_H_headsetcap_blk","Black Hat",100]];
			_ret set[count _ret,["TRYK_H_headsetcap","White Hat",100]];
			_ret set[count _ret,["TRYK_H_pakol2","Mid East Hat",5000]];
			_ret set[count _ret,["TRYK_R_CAP_BLK","Reverse Black",1000]];
			_ret set[count _ret,["TRYK_R_CAP_TAN","Reverse White",1000]];
			_ret set[count _ret,["TRYK_H_wig","Real Hair Wig",7000]];
			_ret set[count _ret,["TRYK_H_woolhat","Slick Beanie",4000]];
			_ret set[count _ret,["A3L_Legoman","Lego Helmet",10000]];
			_ret set[count _ret,["A3L_soa_helmet","Biker Helmet",4000]];	
			_ret set[count _ret,["A3L_gangster_hat","Gangster Mask",1000]];
			_ret set[count _ret,["A3L_Mask","Mask",1000]];
			_ret set[count _ret,["A3L_longhairblack","Long Hair Black",120]];
			_ret set[count _ret,["A3L_longhairblond","Long Hair Blond",120]];
			_ret set[count _ret,["A3L_longhairbrown","Long Hair Brown",120]];
			_ret set[count _ret,["A3L_Crown","Crown",120]];
			_ret set[count _ret,["cowboyhat","Cowboyhat",120]];
			_ret set[count _ret,["A3L_mexicanhat","Mexican Hat",120]];
			_ret set[count _ret,["santahat","Santa hat",120]];
			_ret set[count _ret,["A3L_Sombrero","Sombrero",120]];
			_ret set[count _ret,["turban","Turban",120]];
			_ret set[count _ret,["A3L_russianhat","Russianhat",120]];
			_ret set[count _ret,["H_Cap_tan",nil,120]];
			_ret set[count _ret,["H_Cap_blk",nil,120]];
			_ret set[count _ret,["H_Cap_blk_CMMG",nil,120]];
			_ret set[count _ret,["H_Cap_brn_SPECOPS",nil,120]];
			_ret set[count _ret,["H_Cap_tan_specops_US",nil,120]];
			_ret set[count _ret,["H_Cap_khaki_specops_UK",nil,120]];
			_ret set[count _ret,["H_Cap_grn",nil,120]];
			_ret set[count _ret,["H_Cap_grn_BI",nil,120]];
			_ret set[count _ret,["H_Cap_blk_Raven",nil,120]];
			_ret set[count _ret,["H_Cap_blk_ION",nil,120]];
		};
	};
	//Glasses updated
	case 2:
	{
		[
			["SFG_Tac_smallBeardB",nil,250],
			["SFG_Tac_smallBeardD",nil,250],
			["SFG_Tac_smallBeardG",nil,250],
			["SFG_Tac_smallBeardO",nil,250],
			["SFG_Tac_BeardB",nil,250],
			["SFG_Tac_BeardD",nil,250],
			["SFG_Tac_BeardG",nil,250],
			["SFG_Tac_BeardO",nil,250],
			["SFG_Tac_chinlessbB",nil,250],
			["SFG_Tac_chinlessbD",nil,250],
			["SFG_Tac_chinlessbG",nil,250],
			["SFG_Tac_chinlessbO",nil,250],
			["SFG_Tac_moustacheB",nil,250],
			["SFG_Tac_moustacheD",nil,250],
			["SFG_Tac_moustacheG",nil,250],
			["SFG_Tac_moustacheO",nil,250],
			["SFG_Tac_ChopsB",nil,250],
			["SFG_Tac_ChopsD",nil,250],
			["SFG_Tac_ChopsG",nil,250],
			["SFG_Tac_ChopsO",nil,250],
			["G_Shades_Black",nil,250],
			["G_Shades_Blue",nil,200],
			["G_Sport_Blackred",nil,200],
			["G_Sport_Checkered",nil,200],
			["G_Sport_Blackyellow",nil,200],
			["G_Sport_BlackWhite",nil,200],
			["G_Squares",nil,100],
			["G_Aviator",nil,1000],
			["G_Lady_Mirror",nil,150],
			["G_Lady_Dark",nil,150],
			["G_Lady_Blue",nil,150],
			["G_Lowprofile",nil,300],
			["G_Combat",nil,550]
		];
	};
	//Vest updated
	case 3:
	{
		if(license_civ_donator && playerSide == civilian) then
		{
			_ret set[count _ret,["V_Rangemaster_belt",nil,5000]];
			_ret set[count _ret,["V_Press_F",nil,2500]];
			_ret set[count _ret,["A3L_SpiderVest",nil,2500]];
			_ret set[count _ret,["k_cut_1",nil,22500]];
			_ret set[count _ret,["k_cut_2",nil,22500]];
			_ret set[count _ret,["k_cut_3",nil,22500]];
			_ret set[count _ret,["k_cut_4",nil,22500]];
			_ret set[count _ret,["k_cut_5",nil,22500]];
			_ret set[count _ret,["k_cut_6",nil,22500]];
			_ret set[count _ret,["k_cut_7",nil,22500]];
			_ret set[count _ret,["k_cut_8",nil,22500]];
			_ret set[count _ret,["k_cut_9",nil,22500]];
		};
	};
	//Backpacks
	case 4:
	{
		if(license_civ_donator && playerSide == civilian) then
		{
			_ret set[count _ret,["B_AssaultPack_cbr",nil,2500]];
			_ret set[count _ret,["B_AssaultPack_rgr",nil,2500]];
			_ret set[count _ret,["B_AssaultPack_khk",nil,2500]];
			_ret set[count _ret,["B_AssaultPack_sgg",nil,2500]];
			_ret set[count _ret,["B_AssaultPack_blk",nil,2500]];
			_ret set[count _ret,["B_TacticalPack_oli",nil,3500]];
			_ret set[count _ret,["B_Bergen_sgg",nil,4500]];
			_ret set[count _ret,["B_FieldPack_oli",nil,4500]];
			_ret set[count _ret,["B_FieldPack_cbr",nil,4500]];
			_ret set[count _ret,["B_FieldPack_khk",nil,4500]];
			_ret set[count _ret,["B_Carryall_oli",nil,5000]];
			_ret set[count _ret,["B_Carryall_khk",nil,5000]];

			_ret set[count _ret,["kaelmonty",nil,5500]];	
			_ret set[count _ret,["kaelmonty2",nil,5500]];
			_ret set[count _ret,["kaelmario",nil,5500]];	
			_ret set[count _ret,["kaelsuits",nil,5500]];	
			_ret set[count _ret,["koilbatman_1",nil,5500]];	
			_ret set[count _ret,["koilbender_1",nil,5500]];	
			_ret set[count _ret,["koilbender_2",nil,5500]];	
			_ret set[count _ret,["koilclint_1",nil,5500]];	
			_ret set[count _ret,["koileminem_1",nil,5500]];	
			_ret set[count _ret,["koilgraf_1",nil,5500]];	
			_ret set[count _ret,["koilgraf_2",nil,5500]];	
			_ret set[count _ret,["koilgraf_3",nil,5500]];	
			_ret set[count _ret,["koilhulk_1",nil,5500]];	
			_ret set[count _ret,["koiljoker_1",nil,5500]];	
			_ret set[count _ret,["koilpumpkin_1",nil,5500]];	
			_ret set[count _ret,["koilsparta_1",nil,5500]];	
			_ret set[count _ret,["koilsponge_1",nil,5500]];	
			_ret set[count _ret,["koilturtles_1",nil,5500]];	
			_ret set[count _ret,["koilkatie",nil,5500]];
			_ret set[count _ret,["koilpanda",nil,5500]];
			_ret set[count _ret,["koilaiden",nil,5500]];
			_ret set[count _ret,["koileagle",nil,5500]];
			_ret set[count _ret,["koilspecktators",nil,5500]];
			_ret set[count _ret,["koildarth",nil,5500]];
			_ret set[count _ret,["koilgucci",nil,5500]];
			_ret set[count _ret,["koilsmashing",nil,5500]];
			_ret set[count _ret,["koilgoonsquad",nil,5500]];
			_ret set[count _ret,["koilcat",nil,5500]];
			_ret set[count _ret,["koilbp_1",nil,5500]];	
			_ret set[count _ret,["koilbp_2",nil,5500]];	
			_ret set[count _ret,["koilbp_3",nil,5500]];	
			_ret set[count _ret,["koilbp_4",nil,5500]];	
			_ret set[count _ret,["koilbp_5",nil,5500]];	
			_ret set[count _ret,["koilbp_6",nil,5500]];	
			_ret set[count _ret,["koilbp_7",nil,5500]];	
			_ret set[count _ret,["koilbp_8",nil,5500]];	
			_ret set[count _ret,["koilbp_9",nil,5500]];	
			_ret set[count _ret,["koilbp_10",nil,5500]];	
			_ret set[count _ret,["koilbp_11",nil,5500]];	
			_ret set[count _ret,["koilbp_12",nil,5500]];	
			_ret set[count _ret,["koilbp_13",nil,5500]];	
			_ret set[count _ret,["koilbp_14",nil,5500]];	
			_ret set[count _ret,["koilbp_15",nil,5500]];	
			_ret set[count _ret,["koilbp_16",nil,5500]];	
			_ret set[count _ret,["koilbp_17",nil,5500]];	
			_ret set[count _ret,["koilbp_18",nil,5500]];
		};
	};
};
_ret;