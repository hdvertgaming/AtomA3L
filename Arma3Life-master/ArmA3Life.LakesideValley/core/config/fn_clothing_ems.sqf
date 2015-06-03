/*
	File: fn_clothing_ems.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Reb shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"EMS Shop"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["EMTRM_uni","EMT Medic Uniform 3",5000],
			["emt_Uni1","EMT Medic Uniform 4",5000],
			["emt_Uni3","EMT Medic Uniform 5",5000],
			["emsoff_uni","EMS Off Duty",5000],
			["A3L_Worker_Outfit","Worker Uniform",5000],
			["fire_uni1","Fire Uniform 1",5000],
			["fire_uni2","Fire Uniform 2",5000],
			["fireoff_uni","Fire Off Duty",5000],
			["U_B_Wetsuit", nil, 5000]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["A3L_firedeptmask","Fire Rescue Mask",850],
			["A3L_medic_helmet","EMS Helmet",850],
			["a3l_hardhat","Hard Hat",850],
			["H_MilCap_blue", nil,750],
			["H_Cap_blu", nil,750],
			["H_Cap_red", nil,750]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Bandanna_aviator", nil,200]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_TacVestIR_blk",nil,1300],
			["V_TacVest_blk",nil,1300],
			["V_RebreatherB",nil,2300]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_FieldPack_ocamo",nil,3000],
			["B_Carryall_oucamo",nil,3000],
			["B_TacticalPack_blk",nil,3000]
		];
	};
};