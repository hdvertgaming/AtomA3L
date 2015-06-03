#include <macro.h>
/*
	File: fn_clothing_swat.sqf
	Author: 2H2K Dealer
	
	Description:
	Master config file for swat clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"SERT Shop"];

_ret = [];
switch (_filter) do
{
    case 0:
    {
		if(__GETC__(life_coplevel) > 3) then
        {
			_ret set[count _ret,["SWAT_uni1","Swat Uniform",5500]];
			_ret set[count _ret,["U_bombsuit",nil,5000]];
			_ret set[count _ret,["A3L_Sheriff_Uniform","Sheriff Uniform",5000]];
            _ret set[count _ret,["sheriff_uni1","Sheriff Uniform 1",5000]];
			_ret set[count _ret,["sheriff_uni2","Sheriff Uniform 2",5000]];
			_ret set[count _ret,["fto_uni","Field Training Uniform",1500]];
			_ret set[count _ret,["FBI_uni","FBI Uniform",1500]];
			_ret set[count _ret,["doj_uni","Correctional Officer",1500]];
			_ret set[count _ret,["sert_uni1","SERT Uniform",1500]];
			_ret set[count _ret,["ranger_uni","Ranger",1500]];
			_ret set[count _ret,["TRYK_U_B_BLKBLK_CombatUniform","SERT Coveralls",1500]];
			_ret set[count _ret,["TRYK_U_B_BLK","Negotiator & Pilot Coveralls",1500]];
		};	
	};
	//Hats
	case 1:
	{
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret set[count _ret,["H_Cap_police",nil,500]];
			_ret set[count _ret,["H_Cap_blk",nil,500]];
			_ret set[count _ret,["U_bombsuit_Helmet",nil,500]];
			_ret set[count _ret,["A3L_sargehat",nil,500]];
			_ret set[count _ret,["H_PilotHelmetHeli_B","Pilot Helmet",500]];
			_ret set[count _ret,["TRYK_H_DELTAHELM_NV","Negotiator Helmet",500]];
			_ret set[count _ret,["A3L_policehelmet","Police Hat",500]];
			_ret set[count _ret,["TRYK_H_PASGT_BLK","SERT Helmet",500]];
		};
	};
	//Glasses
	case 2:
	{
		_ret = 
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
			["G_Combat",nil,550],
			["G_Balaclava_blk",nil,55],
			["G_Balaclava_combat",nil,55],
			["G_Balaclava_lowprofile",nil,55],
			["A3L_Balaclava",nil,60],
			["TRYK_SPGEAR_Glasses","Negotiator Glasses",60],
			["Mask_M40","Gas Mask",50]
		];
	};
	//Vest
	case 3:
	{
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret set[count _ret,["A3L_deptjvest1","DoJ Vest",2000]];
			_ret set[count _ret,["A3L_fbivest1","FBI Vest",2000]];
			_ret set[count _ret,["A3L_sheriffvest3","Sheriff Vest (Green)",2000]];
			_ret set[count _ret,["A3L_sheriffvest2","Sheriff Vest (Grey)",2000]];
			_ret set[count _ret,["A3L_sheriffvest1","Sheriff Vest (Tan)",2000]];
			_ret set[count _ret,["Jamie_Sheriff1","Sheriff Vest (Yellow)",2000]];
			_ret set[count _ret,["Jamie_Sheriff2","Sheriff Vest Holster (Yellow)",2000]];
			_ret set[count _ret,["V_Rangemaster_belt","Pilot Holster",2000]];
			_ret set[count _ret,["A3L_policevest2","Police",2000]];
			_ret set[count _ret,["A3L_policevest1","Police 2",2000]];
			_ret set[count _ret,["A3L_rangervest1","Ranger",2000]];
			_ret set[count _ret,["TRYK_V_ArmorVest_Delta2","SERT Carrier Rig",2000]];
			_ret set[count _ret,["k_black_so","Black SO Vest",1500]];
			_ret set[count _ret,["k_white_so","White SO Vest",1500]];
			_ret set[count _ret,["k_white2_so","Off White SO Vest",1500]];
			_ret set[count _ret,["k_green_so","Green SO Vest",1500]];
			_ret set[count _ret,["k_green2_so","Off Green SO Vest",1500]];
			_ret set[count _ret,["k_brown_so","Brown SO Vest",1500]];
			_ret set[count _ret,["k_darkblue_so","Dark Blue SO Vest",1500]];
			_ret set[count _ret,["k_leather_so","Leather SO Vest",1500]];
			_ret set[count _ret,["k_lime_so","Lime SO Vest",1500]];
			_ret set[count _ret,["k_orange_so","Orange SO Vest",1500]];
			_ret set[count _ret,["k_red_so","Red SO Vest",1500]];
			_ret set[count _ret,["k_yellow_so","Yellow SO Vest",1500]];
			_ret set[count _ret,["TRYK_V_Bulletproof","Negotiator Vest",1500]];
			_ret set[count _ret,["Specter_RAV_BLK","UM SWAT",2000]];
			_ret set[count _ret,["SWATvest1","SWAT Vest",3000]];
			_ret set[count _ret,["SWATvest2","SWAT Vest No Holster",4000]];
			_ret set[count _ret,["rangervest_co","ranger Vest",2000]];
		};
	};
	//Backpacks
	case 4:
	{
		_ret =
		[
			["B_Kitbag_cbr",nil,1800],
			["TRYK_B_Kitbag_Base","Green Kitbag",1800],
			["TRYK_B_Kitbag_blk","Black Kitbag",1800],
			["B_FieldPack_cbr",nil,1500],
			["B_AssaultPack_cbr",nil,1700],
			["B_AssaultPack_blk",nil,1700],
			["B_Bergen_sgg",nil,2500],
			["koilbp_17",nil,3500],	
			["koilbp_18",nil,3500],
			["koilbp_10",nil,3500],	
			["koilbp_11",nil,3500],	
			["koilsheriff",nil,3500],	
			["TRYK_B_Carryall_blk","Black Carryall",3500],
			["TRYK_B_Coyotebackpack_BLK","Black Coyote Pack",3500],
			["TRYK_B_Belt_BLK","Rangemaster Backpack",5000]
		];
	};
};

_ret;