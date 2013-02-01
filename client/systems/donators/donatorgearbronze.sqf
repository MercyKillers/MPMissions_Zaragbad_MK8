

if (((getPlayerUID player) in donatorsbronze)) then {

	player setVariable["cmoney", (player getVariable "cmoney")+300,true];
   	removeAllWeapons player;
	player addMagazine "30Rnd_556x45_Stanag";
	player addMagazine "30Rnd_556x45_Stanag";
	player addMagazine "30Rnd_556x45_Stanag";
	player addMagazine "30Rnd_556x45_Stanag";
	player addMagazine "30Rnd_556x45_Stanag";
	player addMagazine "30Rnd_556x45_Stanag";
	player addMagazine "SmokeShellRed";
	player addMagazine "SmokeShellGreen";
	player addMagazine "HandGrenade_East";
	player addWeapon "NVGoggles";
	player addWeapon "Binocular_Vector";
	player addMagazine "1Rnd_HE_M203";
	player addMagazine "1Rnd_HE_M203";
	player addMagazine "1Rnd_HE_M203";
	player addMagazine "1Rnd_HE_M203";
	player addMagazine "FlareWhite_M203";
	player addMagazine "FlareRed_M203";
	player addMagazine "6Rnd_45ACP";
	player addMagazine "6Rnd_45ACP";
	player addWeapon "revolver_EP1";
	player addWeapon "M4A1_HWS_GL_camo";
	player selectWeapon "M4A1_HWS_GL_camo";



} else {

};
