//	@file Version: 1.0
//	@file Name: config.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy
//	@file Created: 20/11/2012 05:13
//	@file Description: Main config.

// --------------------------------------------------------------------------------------------------- \\
// ----------  !DO NOT CHANGE ANYTHING BELOW THIS POINT UNLESS YOU KNOW WHAT YOU ARE DOING!	---------- \\
// ----------																				---------- \\
// ----------			404Games are not responsible for anything that may happen 			---------- \\
// ----------			 as a result of unauthorised modifications to this file.			---------- \\
// --------------------------------------------------------------------------------------------------- \\
                                                                                                
//Gunstore Weapon List - Gun Store Base List
// Text name, classname, buy cost, sell amount
//Gunstore Weapon List - Gun Store Base List
// Text name, classname, buy cost, sell amount
weaponsArray = [
	["AK-74","AK_74",50],
	["AK-107 Kobra","AK_107_kobra",75],
	["AKM","AK_47_M",75],
    ["M16A4","M16A4",75],
    ["M4A1","M4A1",50],
    ["M4A1 CCO","M4A1_Aim",100],
    ["M4A3 ACOG GL","M4A3_RCO_GL_EP1",500],
    ["M1014","M1014",50],
    ["Saiga 12K","Saiga12K",100],
    ["M249","M249_EP1",250],
    ["M240","M240",250],
    ["MG36","MG36",350],
    ["Pecheneg","Pecheneg",250],
    ["Mk_48 Mod","Mk_48",300],
    ["RPG-7","RPG7V",200],
    ["SMAW","SMAW",300],
    ["Stinger","Stinger",600],
    ["Javelin","Javelin",1300],
    ["Mk12 SPR","M4SPR",200],
    ["Mk17 Sniper","SCAR_H_LNG_Sniper",700],
    ["Mk17 Sniper SD","SCAR_H_LNG_Sniper_SD",950],
    ["M40A3","M40A3",800],
	["DMR","DMR",1200],
	["M110 NV","M110_NVG_EP1",1200],
    ["M107","m107",2000],
    ["Mk17 EGLM RCO","SCAR_H_STD_EGLM_Spect",800],
    ["Mk16 EGLM Holo","SCAR_L_CQC_EGLM_Holo",500],
    ["Mk16 Mk4CQ/T","SCAR_L_STD_Mk4CQT",800],
    ["Mk16 CCO SD","SCAR_L_CQC_CCO_SD",500],
    ["XM8","M8_carbine",500],
    ["G36K","G36K",500],
    ["G36C-SD","G36_C_SD_eotech",600],
    ["G36","G36a",600],
    ["AA12 PMC","AA12_PMC",2000]
];

//Gun Store Ammo List
//Text name, classname, buy cost
ammoArray = [
	["30Rnd AK","30Rnd_545x39_AK",10],
	["AKM Mag","30Rnd_762x39_AK47",10],
	["30Rnd. STANAG","30Rnd_556x45_Stanag",10],
        ["30Rnd. G36","30Rnd_556x45_G36",10],
	["8Rnd. M1014 Slug","8Rnd_B_Beneli_74Slug",10],
	["8Rnd. Saiga 12K Slug","8Rnd_B_Saiga12_74Slug",10],
	["200Rnd. M249 Belt","200Rnd_556x45_M249",50],
	["100Rnd. M240","100Rnd_762x51_M240",25],
        ["100Rnd. Mg36","100Rnd_556x45_BetaCMag",30],
	["PKM Mag.","100Rnd_762x54_PK",25],
	["Mk17 Mag.","20Rnd_762x51_B_SCAR",25],
	["Mk17 SD Mag.","20Rnd_762x51_SB_SCAR",25],
	["10Rnd. M107","10Rnd_127x99_m107",50],
        ["5Rnd. M24","5Rnd_762x51_M24",25],
        ["DMR Mag.","20Rnd_762x51_DMR",40],
    ["PG-7V.","PG7V",100],
    ["SMAW-HEAA","SMAW_HEAA",100],
    ["Stinger Ammo","Stinger",100],
    ["Javelin Ammo","Javelin",150],
    ["20Rnd AA12 Slugs","20Rnd_B_AA12_74Slug",40],
    ["20Rnd AA12 Pellets","20Rnd_B_AA12_Pellets",100],
    ["20Rnd AA12 HE","20Rnd_B_AA12_HE",300],
	["Pipe Bomb","PipeBomb",500],
	["Frag Grenade","HandGrenade_East",50]
];

//Gun Store Equipment List
//Text name, classname, buy cost
accessoriesArray = [
	["Range Finder","Binocular_Vector",500],
	["NV Goggles","NVGoggles",100],
    ["GPS","ItemGPS", 90]
];

//General Store Item List
//Display Name, Class Name, Description, Picture, Buy Price, Sell Price.
generalStore = [
	["Water","water",localize "STR_WL_ShopDescriptions_Water","client\icons\water.paa",30,15],
	["Canned Food","canfood",localize "STR_WL_ShopDescriptions_CanFood","client\icons\cannedfood.paa",30,15],
	["Repair Kit","repairkits",localize "STR_WL_ShopDescriptions_RepairKit","client\icons\briefcase.paa",1000,500],
	["Medical Kit","medkits",localize "STR_WL_ShopDescriptions_MedKit","client\icons\medkit.paa",400,200],
	["Jerry Can (Full)","fuelFull",localize "STR_WL_ShopDescriptions_fuelFull","client\icons\jerrycan.paa",150,75],
    ["Jerry Can (Empty)","fuelEmpty",localize "STR_WL_ShopDescriptions_fuelEmpty","client\icons\jerrycan.paa",50,25],
	["Spawn Beacon","spawnBeacon",localize "STR_WL_ShopDescriptions_spawnBeacon","",3000,1500],
    ["Camo Net", "camonet", localize "STR_WL_ShopDescriptions_Camo", "",300,150],
	["Timebomb", "bomb", localize "STR_WL_ShopDescriptions_bomb", "",750,500]  
];

// Chernarus town and city array
//Marker Name, Radius, City Name
cityList = [
		["Town_0",200,"Yarum"],
		["Town_1",200,"Nango"],
		["Town_2",200,"Azizant"],
		["Town_3",200,"Shahbaz"],
		["Town_4",200,"Hazar Bagh"],
		["Town_5",200,"Military Base"],
		["Town_6",400,"Zargabad"],
		["Town_7",200,"Firuz Baharv"]
];
cityLocations = [];

//List of mission spawn markers
//Marker Name, Is it being used boolean
MissionSpawnMarkers = [
  ["Mission_0",false],
  ["Mission_1",false],
  ["Mission_2",false],
  ["Mission_3",false],
  ["Mission_4",false],
  ["Mission_5",false],
  ["Mission_6",false],
  ["Mission_7",false],
  ["Mission_8",false],
  ["Mission_9",false],
  ["Mission_10",false],
  ["Mission_11",false],
  ["Mission_12",false],
  ["Mission_13",false],
  ["Mission_14",false],
  ["Mission_15",false],
  ["Mission_16",false],
  ["Mission_17",false],
  ["Mission_18",false],
  ["Mission_19",false],
  ["Mission_20",false],
  ["Mission_21",false],
  ["Mission_22",false],
  ["Mission_23",false],
  ["Mission_24",false],
  ["Mission_25",false],
  ["Mission_26",false],
  ["Mission_27",false],
  ["Mission_28",false],
  ["Mission_29",false],
  ["Mission_30",false],
  ["Mission_31",false],
  ["Mission_32",false],
  ["Mission_33",false],
  ["Mission_34",false],
  ["Mission_35",false],
  ["Mission_36",false],
  ["Mission_37",false],
  ["Mission_38",false],
  ["Mission_39",false],
  ["Mission_40",false],
  ["Mission_41",false],
  ["Mission_42",false],
  ["Mission_43",false],
  ["Mission_44",false],
  ["Mission_45",false],
  ["Mission_46",false],
  ["Mission_47",false],
  ["Mission_48",false],
  ["Mission_49",false],
  ["Mission_50",false]
];
