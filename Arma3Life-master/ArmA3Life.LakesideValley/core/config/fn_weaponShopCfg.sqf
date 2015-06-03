#include <macro.h>
/*
        File: fn_weaponShopCfg.sqf
        Author: Bryan "Tonic" Boardwine
       
        Description:
        Master configuration file for the weapon shops.
       
        Return:
        String: Close the menu
        Array:
        [Shop Name,
        [ //Array of items to add to the store
                [classname,Custom Name (set nil for default),price]
        ]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.
 
switch(_shop) do
{
        case "med_basic":
        {
                switch (true) do
                {
                        case (playerSide != independent): {"You are not an EMS Medic"};
                        default {
                                ["Hospital EMS Shop",
                                        [
											["ItemMap",nil,29],
											["itemRadio",nil,100],
											["ItemGPS",nil,100],
											["Binocular",nil,150],
											["ToolKit",nil,250],
											["FirstAidKit",nil,150],
											["Medikit",nil,500],
											["NVGoggles",nil,120]
										]
                                ];
                        };
                };
        };
        case "med_rescue":
        {
                switch (true) do
                {
                        case (playerSide != independent): {"You are not an EMS Medic"};
                        default {
                                ["EMS Rescue Shop",
                                        [
											["a3l_axe","Fire Axe", 2000],
											["A3L_Shovel","Fire Shovel", 2000],
											["A3L_Hammer","Fire Hammer", 2000],
											["A3L_Extinguisher","Fire Extinguisher", 2000],
											["ItemMap",nil,29],
											["itemRadio",nil,100],
											["ItemGPS",nil,100],
											["Binocular",nil,150],
											["ToolKit",nil,250],
											["FirstAidKit",nil,150],
											["Medikit",nil,500],
											["NVGoggles",nil,2000]
										]
                                ];
                        };
                };
        };
        case "cop_basic":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        default
                        {
                                ["Equipment Locker",
                                        [
											["Taser_26","Taser",2000],
											["26_cartridge",nil,50],
											["ItemMap",nil,29],
											["itemRadio",nil,100],
											["ItemGPS",nil,100],
											["Binocular",nil,150],
											["ToolKit",nil,250],
											["FirstAidKit",nil,150],
											["Medikit",nil,500],
											["NVGoggles",nil,2000],
											["Radar_Gun","Radar Gun",1000],
											["cl_biredkey","Big Red Key",1000],
											["cl3_fingerprintscanner","Fingerprint Scanner",1000],
                                            ["Rangefinder","Rangefinder SERT ONLY",5000],
                                            ["TRYK_G_bala_ess_NV","NVG Balaclava SERT ONLY",3000]
										]
                                ];
                        };
                };
        };
        case "cop_patrol":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        case (__GETC__(life_coplevel) < 2): {"You are not at a Patrol Officer rank!"};
                        default
                        {
                                ["Officer Locker",
                                        [
										//	side arms
											["A3L_Glock17",nil,5000],
											["A3L_Glock17mag",nil,50],
										//	main arms
											["A3L_m4a3",nil,31000],
											["A3L_M4Mag",nil,150],
											["A3L_M4Flashlight",nil,120],
											["A3L_RedDot",nil,2000],
											["A3L_CCO",nil,2000],

											["A3L_HK416",nil,41000],
											["A3L_HK416Mag",nil,150],
											["A3L_HK416Scope",nil,3000]
										//	["A3L_HK416Silencer",nil,3000]
										]
                                ];
                        };
                };
        };
        case "cop_sergeant":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        case (__GETC__(life_coplevel) < 3): {"You are not at a Sergeant rank!"};
                        default
                        {
                                ["Sergeant Locker",
                                        [
										//	side arms
											["A3L_Glock17",nil,5000],
											["A3L_Glock17mag",nil,50],

											["A3L_M9",nil,6000],
											["A3L_M9mag",nil,60],

                                            //FN57
                                            ["RH_fnp45","Fnp 45cal",2000],
                                            ["RH_15Rnd_45cal_fnp",nil,50],

                                            //Kimber Desert
                                            ["RH_kimber",nil,2200],
                                            ["RH_7Rnd_45cal_m1911",nil,50],

                                            //P226
                                            ["RH_p226"," P226 9mm",2100],
                                            ["RH_15Rnd_9x19_SIG","P226 15 Rnd",50],
											//main arms
											["A3L_m4a3",nil,31000],
											["A3L_M4Mag",nil,150],
											["A3L_M4Flashlight",nil,120],
											["A3L_RedDot",nil,2000],
											["A3L_CCO",nil,2000],

											["A3L_HK416",nil,41000],
											["A3L_HK416Mag",nil,150],
											["A3L_HK416Scope",nil,3000],
										//	["A3L_HK416Silencer",nil,3000]

											["RH_M4sbr_b",nil,40000],
											["30Rnd_556x45_Stanag",nil,1500],
											["optic_Hamr",nil,3000],
											["RH_compm4s",nil,3000],
											["acc_flashlight",nil,1200]
										]
                                ];
                        };
                };
        };
        case "cop_lieutenant":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        case (__GETC__(life_coplevel) < 4): {"You are not at a Lieutenant rank!"};
                        default
                        {
                                ["Lieutenant Locker",
                                        [
										//	side arms
											["A3L_Glock17",nil,5000],
											["A3L_Glock17mag",nil,50],

											["A3L_M9",nil,6000],
											["A3L_M9mag",nil,60],

                                            //FN57
                                            ["RH_fnp45","Fnp 45cal",2000],
                                            ["RH_15Rnd_45cal_fnp",nil,50],

                                            //Kimber Desert
                                            ["RH_kimber",nil,2200],
                                            ["RH_7Rnd_45cal_m1911",nil,50],

                                            //P226
                                            ["RH_p226"," P226 9mm",2100],
                                            ["RH_15Rnd_9x19_SIG","P226 15 Rnd",50],

										//	main arms
											["A3L_m4a3",nil,31000],
											["A3L_M4Mag",nil,150],
											["A3L_M4Flashlight",nil,120],
											["A3L_RedDot",nil,2000],
											["A3L_CCO",nil,2000],

											["A3L_HK416",nil,41000],
											["A3L_HK416Mag",nil,150],
											["A3L_HK416Scope",nil,3000],
										//	["A3L_HK416Silencer",nil,3000]

											["RH_M4sbr_b",nil,40000],
											["30Rnd_556x45_Stanag",nil,150],
											["optic_Hamr",nil,3000],
											["RH_compm4s",nil,3000],
											["acc_flashlight",nil,120]
										]
                                ];
                        };
                };
        };
        case "cop_captain":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        case (__GETC__(life_coplevel) < 5): {"You are not at a Captains rank!"};
                        default
                        {
                                ["Captains Locker",
                                        [
										//	side arms
											["A3L_Glock17",nil,5000],
											["A3L_Glock17mag",nil,50],

											["A3L_M9",nil,6000],
											["A3L_M9mag",nil,60],

                                            //FN57
                                            ["RH_fnp45","Fnp 45cal",2000],
                                            ["RH_15Rnd_45cal_fnp",nil,50],

                                            //Kimber Desert
                                            ["RH_kimber",nil,2200],
                                            ["RH_7Rnd_45cal_m1911",nil,50],

                                            //P226
                                            ["RH_p226"," P226 9mm",2100],
                                            ["RH_15Rnd_9x19_SIG","P226 15 Rnd",50],

										//	main arms
											["A3L_m4a3",nil,31000],
											["A3L_M4Mag",nil,150],
											["A3L_M4Flashlight",nil,120],
											["A3L_RedDot",nil,2000],
											["A3L_CCO",nil,2000],

											["A3L_HK416",nil,41000],
											["A3L_HK416Mag",nil,150],
											["A3L_HK416Scope",nil,3000],
//											["A3L_HK416Silencer",nil,3000]

											["RH_M4sbr_b",nil,40000],
											["30Rnd_556x45_Stanag",nil,150],
											["optic_Hamr",nil,3000],
											["RH_compm4s",nil,3000],
											["acc_flashlight",nil,120]
										]
                                ];
                        };
                };
        };
        case "cop_sert":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        case (__GETC__(life_coplevel) < 4): {"You are not at a Sert rank!"};
                        default
                        {
                                ["SERT Locker",
                                        [
										//	side arms
											["A3L_1911",nil,5500],
											["A3L_1911Mag",nil,55],

											["A3L_Glock17",nil,5000],
											["A3L_Glock17mag",nil,50],

											["A3L_M9",nil,6000],
											["A3L_M9mag",nil,60],

                                            //FN57
                                            ["RH_fnp45","Fnp 45cal",2000],
                                            ["RH_15Rnd_45cal_fnp",nil,50],

                                            //Glock 17
                                            ["RH_g17",nil,2100],
                                            ["RH_17Rnd_9x19_g17",nil,50],

                                            //Kimber Desert
                                            ["RH_kimber",nil,2200],
                                            ["RH_7Rnd_45cal_m1911",nil,50],
                                            
                                            //P226
                                            ["RH_p226"," P226 9mm",2100],
                                            ["RH_15Rnd_9x19_SIG","P226 15 Rnd",50],

                                            //Revolvers
                                            ["RH_bull",nil,2500],
                                            ["RH_6Rnd_454_Mag",nil,50],
                                            ["RH_ttracker",nil,3000],
                                            ["RH_6Rnd_454_Mag",nil,50],

											//	main arms
											["A3L_m4a3",nil,31000],
											["A3L_M4Mag",nil,50],
											["A3L_M4Flashlight",nil,120],
											["A3L_RedDot",nil,2000],
											["A3L_CCO",nil,2000],

											//M16
                                            ["RH_M16A4","M16 Burst",35000],
                                            ["RH_30Rnd_556x45_Mk262","5.56 30rnd",120],
                                            ["RH_compM2","Rifle Aimpoint",2250],
                                            ["RH_compM2l","Rifle Aimpoint Low",2250],
                                            ["RH_ta31rmr","Rifle Acog",2000],

											["A3L_HK416",nil,41000],
											["A3L_HK416Mag",nil,50],
											["A3L_HK416Scope",nil,3000],
											["A3L_HK416Silencer",nil,3000],

											["RH_M4sbr_b",nil,40000],
											["30Rnd_556x45_Stanag",nil,50],
											["optic_Hamr",nil,3000],
											["RH_compm4s",nil,3000],
											["acc_flashlight",nil,120],

                                            //SBR9
                                            ["RH_sbr9","SBR9 SMG",20000],
                                            ["RH_32Rnd_9mm_HP","SBR9 32 Rnd",50],
                                            ["RH_t1","SBR9 Aimpoint",1000],

											["A3L_MP5",nil,30000],
											["A3L_MP5Mag",nil,50],
											["A3L_MP5Silencer",nil,5000],

											["srifle_mas_m24_v",nil,120000],
											["5Rnd_mas_762x51_Stanag",nil,150],
											["optic_Nightstalker",nil,10000],
											//items
											["cl_plastic_shield",nil,1000],
											["Chemlight_green",nil,100],
											["Chemlight_red",nil,100],
											["Chemlight_yellow",nil,100],
											["SmokeShell",nil,100],
											["SmokeShellGreen",nil,100],
											["SmokeShellRed",nil,100],
											["HandGrenade_Stone","Flashbang",200]
										]
                                ];
                        };
                };
        };
        case "cop_attach":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        case (__GETC__(life_coplevel) < 2): {"You are not at a Patrol Officer rank!"};
                        default
                        {
                                ["Officer Attachment Locker",
                                        [
										//	attachments
											["A3L_M4Flashlight",nil,120],
											["A3L_RedDot",nil,2000],
											["A3L_CCO",nil,2000],

											["A3L_HK416Silencer",nil,6000],
											["A3L_MP5Silencer",nil,5000],
											["optic_Nightstalker",nil,20000],

											["A3L_HK416Scope",nil,3000],

											["optic_Hamr",nil,3000],
											["RH_compm4s",nil,3000],
											["acc_flashlight",nil,120],

											["optic_Nightstalker",nil,10000]
										]
                                ];
                        };
                };
        };
        case "cop_ammo":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        case (__GETC__(life_coplevel) < 2): {"You are not at a Patrol Officer rank!"};
                        default
                        {
                                ["Officer Ammo Locker",
                                        [
										//	ammo
											["A3L_1911Mag",nil,55],
											["A3L_Glock17mag",nil,50],
											["A3L_M9mag",nil,60],
											["A3L_M4Mag",nil,150],
											["A3L_HK416Mag",nil,50],
											["A3L_MP5Mag",nil,50],
											["30Rnd_556x45_Stanag",nil,50],
											["5Rnd_mas_762x51_Stanag",nil,150]
										]
                                ];
                        };
                };
        };
        case "gang":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        default
                        {
                                ["Hideout Armament",
                                        [
											["RH_g18",nil,35000],
											["RH_33Rnd_9x19_g18",nil,2500],
											["RH_tec9",nil,75000],
											["RH_32Rnd_9x19_tec",nil,2500],
											["RH_muzi",nil,80000],
											["RH_30Rnd_9x19_UZI",nil,2500],
											["RH_vz61",nil,80000],
											["RH_20Rnd_32cal_vz61",nil,2500]
                                        ]
                                ];
						};
				};
		};
		case "hill_rebel":
        {
                switch(true) do
                {
						case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_rebel): {"You want some?, You don't have a license you fuck! Get outta here!"};
                        default
                        {
                                ["Hillbilly Shop",
                                    [
                                        //Desert Eagles
                                        ["RH_Deagleg",nil,27500],
                                        ["RH_Deagles",nil,27500],
                                        ["RH_Deaglem",nil,27500],
                                        ["RH_deagle",nil,27500],                                            
                                        ["RH_7Rnd_50_AE",nil,900],

                                        //uzi
                                        ["A3L_Uzi",nil,50000],
                                        ["A3L_UZIMag",nil,500],
                                        
                                        //Glock 18
                                        ["RH_g18",nil,55000],
                                        ["RH_19Rnd_9x19_g18",nil,250],
                                        ["RH_33Rnd_9x19_g18",nil,500],


                                        //Micro Uzi
                                        ["RH_muzi",nil,65000],
                                        ["RH_30Rnd_9x19_UZI",nil,500],

                                        //Tec9
                                        ["RH_tec9",nil,68000],
                                        ["RH_32Rnd_9x19_tec",nil,600],
										//Hunting Rifle Shop
                                        ["A3L_CZ550",nil,75000],
                                        ["A3L_CZ550mag",nil,50],
                                        ["A3L_CZ550Scope",nil,25000],
                                        ["arifle_SDAR_F","Turtle Harpoon",30000],
                                        ["20Rnd_556x45_UW_mag","Underwater magazine",1200]
									]
								];
                        };
                };
        };
		case "rebel":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_rebel): {"You don't have a Rebel training license!"};
                        default
                        {
                                ["Guerilla Shop",
                                        [
											//Gang Shop
											//["RH_g18",nil,35000],
											//["RH_33Rnd_9x19_g18",nil,2500],
											//["RH_tec9",nil,75000],
											//["RH_32Rnd_9x19_tec",nil,2500],
											//["RH_muzi",nil,80000],
											//["RH_30Rnd_9x19_UZI",nil,2500],
											//["RH_vz61",nil,80000],
											//["RH_20Rnd_32cal_vz61",nil,2500],

											["arifle_mas_bizon",nil,35000],
											["64Rnd_mas_9x18_mag",nil,200],

											["arifle_mas_aks74u",nil,50000],
											["arifle_mas_aks74u_c",nil,50000],
											["arifle_mas_aks74",nil,55000],
											["arifle_mas_ak_74m",nil,55000],
											["arifle_mas_ak_74m_c",nil,55000],
											["arifle_mas_ak_74m_sf",nil,55000],
											["arifle_mas_ak_74m_sf_c",nil,55000],
											["30Rnd_mas_545x39_mag",nil,200],

											["arifle_mas_akms",nil,145000],
											["arifle_mas_akms_c",nil,145000],
											["arifle_mas_akm",nil,145000],
											["30Rnd_mas_762x39_mag",nil,1500],

											["ej_Thompson","Thompson SMG",90500],
											["ej_ThompsonTactical2","Thompson SMG Tactical",95500],
											["Thompson_mag","20Rnd Thompson Mag",950],

											//MP9
											//["AG_MP9_peq","MP9 Black",125000],
											//["AG_MP9_wcam","MP9 Camo",135000],
											//["30Rnd_45ACP_Mag_SMG_01",nil,950],

											["A3L_AK47",nil,35500],
											["A3L_AK47Mag",nil,2900],

											["RH_ar10",nil,45500],
											["RH_20Rnd_762x51_AR10",nil,2900],

											["R3F_Famas_F1",nil,55000],
											["R3F_Famas_surb",nil,55000],
											["R3F_Famas_G2",nil,55000],
											["R3F_25Rnd_556x45_TRACER_FAMAS",nil,300],

											["arifle_mas_m70",nil,95000],
											["arifle_mas_m70ab",nil,95000],
											["30Rnd_mas_762_39_T_mag",nil,1500],

											["Trixie_M14DMR",nil,140000],
											["Trixie_M14DMR_Clean",nil,140000],
											["Trixie_M14DMR_Clean_Pink",nil,140000],
											["Trixie_20x762_Mag",nil,3000],

											["Trixie_Enfield_Rail",nil,75000],
											["Trixie_Enfield_Mag",nil,3000],

									        ["arifle_mas_g3",nil,55000],
											["arifle_mas_g3s",nil,55000],
											["srifle_mas_ebr",nil,75000],
											["20Rnd_mas_762x51_T_Stanag",nil,1500],

											["LMG_mas_rpk_F",nil,120000],
											["100Rnd_mas_545x39_T_mag",nil,1000],

											["LMG_mas_m72_F",nil,170000],
											["100Rnd_mas_762x39_T_mag",nil,2000],

											["srifle_mas_svd",nil,200000],
											["10Rnd_mas_762x54_mag",nil,1500],

											["Trixie_L85a2_nr",nil,120000],
											["Trixie_L85a2",nil,150000],
											["Trixie_L86A2",nil,200000],
											["30Rnd_556x45_Stanag",nil,1000],
											["optic_mas_acog",nil,1200],

											["optic_mas_zeiss",nil,1200],
											["optic_mas_zeiss_c",nil,1200],
											["optic_mas_zeiss_eo",nil,1200],
											["optic_mas_zeiss_eo_c",nil,1200],
											["optic_mas_acog",nil,1200],
											["optic_mas_acog_c",nil,1200],
											["optic_mas_acog_eo",nil,1200],
											["optic_mas_acog_eo_c",nil,1200],
											["optic_mas_acog_rd",nil,1200],
											["optic_mas_acog_rd_c",nil,1200],
											["optic_mas_handle",nil,1200],
											["optic_mas_aim",nil,1200],
											["optic_mas_aim_c",nil,1200],
											["optic_mas_pso",nil,1200],
											["optic_mas_pso_c",nil,1200],
											["optic_mas_pso_eo",nil,1200],
											["optic_mas_pso_eo_c",nil,1200],
											["optic_mas_pso_nv",nil,1200],
											["optic_mas_pso_nv_c",nil,1200],
											["optic_mas_pso_nv_eo",nil,1200],
											["optic_mas_pso_nv_eo_c",nil,1200],
											["optic_mas_DMS",nil,1200],
											["optic_mas_DMS_c",nil,1200],
											["optic_mas_Holosight_blk",nil,1200],
											["optic_mas_Arco_blk",nil,1200],
											["optic_mas_Arco_camo",nil,1200],
											["optic_mas_Hamr_camo",nil,1200],
											["optic_mas_Aco_camo",nil,1200],
											["optic_mas_ACO_grn_camo",nil,1200],
											["optic_mas_MRCO_camo",nil,1200]
                                        ]
                                ];
                        };
                };
        };      
        case "gun":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_gun): {"You don't have a Firearms license!"};
                        default
                        {
                                ["Billy Joe's Firearms",
                                        [
											["V_Rangemaster_belt",nil,14900],
											["RH_cz75",nil,16000],
											["RH_16Rnd_9x19_cz",nil,1250],
											["RH_sw659",nil,12000],
											["RH_14Rnd_9x19_sw",nil,1000],
											["RH_usp",nil,12000],
											["RH_12Rnd_45cal_usp",nil,1000],
											["RH_mak",nil,11500],
											["RH_8Rnd_9x18_Mak",nil,750],
											["RH_uspm",nil,11750],
											["RH_16Rnd_40cal_usp",nil,1250],
											["RH_m9",nil,11250],
											["RH_15Rnd_9x19_M9",nil,750],
											["RH_m9c",nil,12000],
											["RH_tt33",nil,11750],
											["RH_8Rnd_762_tt33",nil,500],            
											["RH_mk2",nil,11500],
											["RH_10Rnd_22LR_mk2",nil,750],          
											["RH_p226",nil,12500],
											["RH_15Rnd_9x19_SIG",nil,1250],      
											["RH_p226s",nil,12500],
											["RH_mateba",nil,12000],            
											["RH_6Rnd_44_Mag",nil,750],              
											["RH_python",nil,11900],            
											["RH_6Rnd_357_Mag",nil,750],            
											["RH_mp412",nil,13000],                  
											["RH_bull",nil,16000],
											["RH_6Rnd_454_Mag",nil,750],            
											["RH_bullb",nil,16000],                          
											["RH_ttracker",nil,16500],          
											["RH_6Rnd_45ACP_Mag",nil,750],      
											["RH_ttracker_g",nil,15000],                
											["RH_fnp45",nil,12000],              
											["RH_15Rnd_45cal_fnp",nil,750],      
											["RH_fnp45t",nil,12000],                  
											["RH_fn57",nil,11500],              
											["RH_20Rnd_57x28_FN",nil,750],        
											["RH_fn57_g",nil,12000],                  
											["RH_fn57_t",nil,12000],                  
											["RH_gsh18",nil,14000],              
											["RH_18Rnd_9x19_gsh",nil,750],
											//["RH_deagle",nil,15000],
											//["RH_deagleg",nil,25000],
											//["RH_deagles",nil,15000],
											//["RH_deaglem",nil,15000],
											//["RH_7Rnd_50_AE",nil,1000],
											["RH_shortdot",nil,5000],
											["RH_reflex",nil,5000],

											["hgun_mas_mak_F",nil,5200],
											["8Rnd_mas_9x18_mag",nil,200],

											["hgun_mas_grach_F",nil,5200],
											["hgun_mas_glock_F",nil,5200],
											["hgun_mas_m9_F",nil,5200],
											["hgun_mas_bhp_F",nil,5200],
											["13Rnd_mas_9x21_Mag",nil,200],
											["15Rnd_mas_9x21_Mag",nil,250],
											["17Rnd_mas_9x21_Mag",nil,300],

											["hgun_mas_acp_F",nil,5200],
											["hgun_mas_usp_F",nil,5200],
											["hgun_mas_glocksf_F",nil,5200],
											["8Rnd_mas_45acp_Mag",nil,200],
											["10Rnd_mas_45acp_Mag",nil,250],
											["12Rnd_mas_45acp_Mag",nil,300]
										]
                                ];
                        };
                };
        };
        case "genstore":
        {
                ["Lakeside General Store",
                        [
                                ["ItemMap",nil,69],
                                ["FirstAidKit",nil,250],
                                ["itemRadio",nil,1000],
                                ["Binocular",nil,1250],
                                ["ToolKit",nil,500],
                                ["NVGoggles",nil,7500],
                                ["Chemlight_red",nil,200],
                                ["Chemlight_yellow",nil,200],
                                ["Chemlight_green",nil,200],
                                ["Chemlight_blue",nil,200],
                                ["A3L_ChainSaw","Chainsaw(Primary Slot)",26000],
                                ["A3L_JackHammer","Jack Hammer(Primary Slot)",7000],
                                ["A3L_Shovel","Shovel(Primary Slot)",5000],
                                ["A3L_Hammer","Hammer(Secondary Slot)",2000],
                                ["A3L_Spanner","Spanner(Secondary Slot)",2000]
                        ]
                ];
        };
        case "gasstation":
        {
                ["Lakeside Gas Station",
                        [
                            ["ItemMap",nil,69],
                            ["FirstAidKit",nil,250],
                            ["itemRadio",nil,1000],
                            ["Binocular",nil,1250],
                            ["ToolKit",nil,500],
                            ["NVGoggles",nil,7500],
                            ["Chemlight_red",nil,200],
                            ["Chemlight_yellow",nil,200],
                            ["Chemlight_green",nil,200],
                            ["Chemlight_blue",nil,200],
							["A3L_Spanner","Spanner", 2000],
							["A3L_Extinguisher","Fire Extinguisher", 2000]
                        ]
                ];
        };
		case "paintball":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        default
                        {
                                ["PaintBall Store",
                                        [
											["A3L_PaintballGun_red",nil,12350],
											["A3L_PaintballGun_blue",nil,12350],
											["A3L_PaintballGun_pink",nil,12350],              
											["PaintBalls",nil,200]       
                                        ]
                                ];
                        };
                };
        };
        case "hwstore":
        {
                ["Hardware Store",
						[	
//							["a3l_axe","Axe", 2000],
							["cl_axe",nil,2500],
                            ["A3L_ChainSaw","Chainsaw(Primary Slot)",26000],
                            ["A3L_JackHammer","Jack Hammer(Primary Slot)",7000],
                            ["A3L_Shovel","Shovel(Primary Slot)",5000],
                            ["A3L_Hammer","Hammer(Secondary Slot)",2000],
                            ["A3L_Spanner","Spanner(Secondary Slot)",2000],
							["A3L_Pickaxe","Pickaxe", 5000],							
							["cl_pick_axeweap",nil, 5000],
							["cl_shovel",nil,2500],
							["cl_hammer",nil,2500]
						]
                ];
		};
		case "ch7":
		{
				["Channel 7 NEWS Store",
						[	
							["Tv_Camera",nil,15000],
							["cl3_camcorder",nil,25000],
							["cl3_camcorder_optic",nil,5000]
						]
				];
		};
		case "signstore":
        {
                ["Lakeside Protest Store",
                        [
							["A3L_Sign",nil,2500],
							["A3L_Sign2",nil,2500],
							["cl_picket_ftp",nil,2500],
							["cl_picket_mlnw",nil,2500],
							["cl_picket_rtp",nil,2500],
							["cl_bin_shield",nil,4500]
                        ]
                ];
        };
		case "donator_gun":
	    {
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_donator): {"You are not a Donator!"};
			default
			{
				                        ["Donator Shop",					
                                        [
											//Gun Shop
											["RH_cz75",nil,16000],
											["RH_16Rnd_9x19_cz",nil,1250],
											["RH_sw659",nil,12000],
											["RH_14Rnd_9x19_sw",nil,1000],
											["RH_usp",nil,12000],
											["RH_12Rnd_45cal_usp",nil,1000],
											["RH_mak",nil,11500],
											["RH_8Rnd_9x18_Mak",nil,750],
											["RH_uspm",nil,11750],
											["RH_16Rnd_40cal_usp",nil,1250],
											["RH_m9",nil,11250],
											["RH_15Rnd_9x19_M9",nil,750],
											["RH_m9c",nil,12000],
											["RH_tt33",nil,11750],
											["RH_8Rnd_762_tt33",nil,500],            
											["RH_mk2",nil,11500],
											["RH_10Rnd_22LR_mk2",nil,750],          
											["RH_p226",nil,12500],
											["RH_15Rnd_9x19_SIG",nil,1250],      
											["RH_p226s",nil,12500],
											["RH_mateba",nil,12000],            
											["RH_6Rnd_44_Mag",nil,750],              
											["RH_python",nil,11900],            
											["RH_6Rnd_357_Mag",nil,750],            
											["RH_mp412",nil,13000],                  
											["RH_bull",nil,16000],
											["RH_6Rnd_454_Mag",nil,750],            
											["RH_bullb",nil,16000],                          
											["RH_ttracker",nil,16500],          
											["RH_6Rnd_45ACP_Mag",nil,750],      
											["RH_ttracker_g",nil,15000],                
											["RH_fnp45",nil,12000],              
											["RH_15Rnd_45cal_fnp",nil,750],      
											["RH_fnp45t",nil,12000],                  
											["RH_fn57",nil,11500],              
											["RH_20Rnd_57x28_FN",nil,750],        
											["RH_fn57_g",nil,12000],                  
											["RH_fn57_t",nil,12000],                  
											["RH_gsh18",nil,14000],              
											["RH_18Rnd_9x19_gsh",nil,750],
											["RH_deagle",nil,15000],
											["RH_deagleg",nil,25000],
											["RH_deagles",nil,15000],
											["RH_deaglem",nil,15000],
											["RH_7Rnd_50_AE",nil,1000],
											["RH_shortdot",nil,5000],
											["RH_reflex",nil,5000],

											["hgun_mas_mak_F",nil,5200],
											["8Rnd_mas_9x18_mag",nil,200],

											["hgun_mas_grach_F",nil,5200],
											["hgun_mas_glock_F",nil,5200],
											["hgun_mas_m9_F",nil,5200],
											["hgun_mas_bhp_F",nil,5200],
											["13Rnd_mas_9x21_Mag",nil,200],
											["15Rnd_mas_9x21_Mag",nil,250],
											["17Rnd_mas_9x21_Mag",nil,300],

											["hgun_mas_acp_F",nil,5200],
											["hgun_mas_usp_F",nil,5200],
											["hgun_mas_glocksf_F",nil,5200],
											["8Rnd_mas_45acp_Mag",nil,200],
											["10Rnd_mas_45acp_Mag",nil,250],
											["12Rnd_mas_45acp_Mag",nil,300],

											//Gang Shop
											["RH_g18",nil,35000],
											["RH_33Rnd_9x19_g18",nil,2500],
											["RH_tec9",nil,75000],
											["RH_32Rnd_9x19_tec",nil,2500],
											["RH_muzi",nil,80000],
											["RH_30Rnd_9x19_UZI",nil,2500],
											["RH_vz61",nil,80000],
											["RH_20Rnd_32cal_vz61",nil,2500],

											//Reb Shop
											["arifle_mas_bizon",nil,35000],
											["64Rnd_mas_9x18_mag",nil,200],

											["arifle_mas_aks74u",nil,50000],
											["arifle_mas_aks74u_c",nil,50000],
											["arifle_mas_aks74",nil,55000],
											["arifle_mas_ak_74m",nil,55000],
											["arifle_mas_ak_74m_c",nil,55000],
											["arifle_mas_ak_74m_sf",nil,55000],
											["arifle_mas_ak_74m_sf_c",nil,55000],
											["30Rnd_mas_545x39_mag",nil,200],

											["arifle_mas_akms",nil,145000],
											["arifle_mas_akms_c",nil,145000],
											["arifle_mas_akm",nil,145000],
											["30Rnd_mas_762x39_mag",nil,1500],

											["R3F_Famas_F1",nil,55000],
											["R3F_Famas_surb",nil,55000],
											["R3F_Famas_G2",nil,55000],
											["R3F_25Rnd_556x45_TRACER_FAMAS",nil,300],

											["arifle_mas_m70",nil,95000],
											["arifle_mas_m70ab",nil,95000],
											["30Rnd_mas_762_39_T_mag",nil,1500],

											["Trixie_M14DMR",nil,140000],
											["Trixie_M14DMR_Clean",nil,140000],
											["Trixie_M14DMR_Clean_Pink",nil,140000],
											["Trixie_20x762_Mag",nil,3000],

											["Trixie_Enfield_Rail",nil,75000],
											["Trixie_Enfield_Mag",nil,3000],

									        ["arifle_mas_g3",nil,55000],
											["arifle_mas_g3s",nil,55000],
											["srifle_mas_ebr",nil,75000],
											["20Rnd_mas_762x51_T_Stanag",nil,1500],

											["LMG_mas_rpk_F",nil,120000],
											["100Rnd_mas_545x39_T_mag",nil,1000],

											["LMG_mas_m72_F",nil,170000],
											["100Rnd_mas_762x39_T_mag",nil,2000],

											["srifle_mas_svd",nil,200000],
											["10Rnd_mas_762x54_mag",nil,1500],

											["Trixie_L85a2_nr",nil,120000],
											["Trixie_L85a2",nil,150000],
											["Trixie_L86A2",nil,200000],
											["30Rnd_556x45_Stanag",nil,1000],
											["optic_mas_acog",nil,1200],

											["optic_mas_zeiss",nil,1200],
											["optic_mas_zeiss_c",nil,1200],
											["optic_mas_zeiss_eo",nil,1200],
											["optic_mas_zeiss_eo_c",nil,1200],
											["optic_mas_acog",nil,1200],
											["optic_mas_acog_c",nil,1200],
											["optic_mas_acog_eo",nil,1200],
											["optic_mas_acog_eo_c",nil,1200],
											["optic_mas_acog_rd",nil,1200],
											["optic_mas_acog_rd_c",nil,1200],
											["optic_mas_handle",nil,1200],
											["optic_mas_aim",nil,1200],
											["optic_mas_aim_c",nil,1200],
											["optic_mas_pso",nil,1200],
											["optic_mas_pso_c",nil,1200],
											["optic_mas_pso_eo",nil,1200],
											["optic_mas_pso_eo_c",nil,1200],
											["optic_mas_pso_nv",nil,1200],
											["optic_mas_pso_nv_c",nil,1200],
											["optic_mas_pso_nv_eo",nil,1200],
											["optic_mas_pso_nv_eo_c",nil,1200],
											["optic_mas_DMS",nil,1200],
											["optic_mas_DMS_c",nil,1200],
											["optic_mas_Holosight_blk",nil,1200],
											["optic_mas_Arco_blk",nil,1200],
											["optic_mas_Arco_camo",nil,1200],
											["optic_mas_Hamr_camo",nil,1200],
											["optic_mas_Aco_camo",nil,1200],
											["optic_mas_ACO_grn_camo",nil,1200],
											["optic_mas_MRCO_camo",nil,1200],

											["ItemMap",nil,29],
											["itemRadio",nil,500],
											["Binocular",nil,150],
											["ItemGPS",nil,100],
											["ToolKit",nil,250],
											["FirstAidKit",nil,150],
											["NVGoggles",nil,2000],
											["Chemlight_red",nil,300],
											["Chemlight_yellow",nil,300],
											["Chemlight_green",nil,300],
											["Chemlight_blue",nil,300],

											["A3L_Sign",nil,2500],
											["A3L_Sign2",nil,2500],
											["cl_picket_ftp",nil,2500],
											["cl_picket_mlnw",nil,2500],
											["cl_picket_rtp",nil,2500],
											["cl_bin_shield",nil,4500],

											["Tv_Camera",nil,15000],
											["cl3_camcorder",nil,25000],
											["cl3_camcorder_optic",nil,5000],

											["a3l_axe","Axe", 2000],
											["cl_axe",nil,2500],
											["A3L_Pickaxe","Pickaxe", 5000],							
											["cl_pick_axeweap",nil, 5000],
											["cl_shovel",nil,2500],
											["cl_hammer",nil,2500],
											["A3L_ChainSaw","Chainsaw(Primary Slot)",26000],
											["A3L_JackHammer","Jack Hammer(Primary Slot)",7000],
											["A3L_Shovel","Shovel(Primary Slot)",5000],
											["A3L_Hammer","Hammer(Secondary Slot)",2000],
											["A3L_Spanner","Spanner(Secondary Slot)",2000],
											["A3L_Extinguisher","Fire Extinguisher", 2000]
										]
                                ];
                        };
                };
        };
   };	