#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Lakeside Police Department Shop"];

_ret = [];
switch (_filter) do
{
    case 0:
    {
        _ret set[count _ret,["cadet_uni","Cadet Uniform",1500]];
		if(__GETC__(life_coplevel) > 1) then
        {
			_ret set[count _ret,["A3L_Police_Uniform","Police Uniform",1500]];
			_ret set[count _ret,["police_uni1","Officer Uniform",1500]];
        };
        if(__GETC__(life_coplevel) > 2) then
        {
			_ret set[count _ret,["police_uni2","Sergeant Uniform",1500]];
		};
		if(__GETC__(life_coplevel) > 5) then
        {	
			_ret set[count _ret,["police_uni3","Chief Uniform",1500]];
		};
	};
	//Hats
	case 1:
	{
		_ret set[count _ret,["H_Cap_police",nil,500]];
		_ret set[count _ret,["A3L_policehelmet","Police Hat",500]];
		_ret set[count _ret,["A3L_sargehat",nil,500]];
	};
	//Glasses
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
	//Vest
	case 3:
	{
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["A3L_policevest2","Black Police Vest (WF)",2000]];
			_ret set[count _ret,["A3L_policevest1","Black Police Vest (YF) ",2000]];
		};
	};
	//Backpacks
	case 4:
	{
		_ret =
		[
			["B_Kitbag_cbr",nil,800],
			["B_FieldPack_cbr",nil,500],
			["B_AssaultPack_cbr",nil,700],
			["B_Bergen_sgg",nil,2500],
			["B_Carryall_cbr",nil,3500]
		];
	};
};

_ret;