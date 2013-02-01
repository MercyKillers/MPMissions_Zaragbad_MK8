

if (((getPlayerUID player) in donatorssilverstealth)) then {

	player setVariable["cmoney", (player getVariable "cmoney")+600,true];
   	removeAllWeapons player;
	player addMagazine "30Rnd_556x45_StanagSD";
	player addMagazine "30Rnd_556x45_StanagSD";
	player addMagazine "30Rnd_556x45_StanagSD";
	player addMagazine "30Rnd_556x45_StanagSD";
	player addMagazine "30Rnd_556x45_StanagSD";
	player addMagazine "30Rnd_556x45_StanagSD";
	player addMagazine "SmokeShellRed";
	player addMagazine "SmokeShellGreen";
	player addMagazine "HandGrenade_East";
	player addMagazine "HandGrenade_East";
	player addWeapon "NVGoggles";
	player addWeapon "Binocular_Vector";
	player addMagazine "1Rnd_HE_M203";
	player addMagazine "1Rnd_HE_M203";
	player addMagazine "1Rnd_HE_M203";
	player addMagazine "1Rnd_HE_M203";
	player addMagazine "FlareWhite_M203";
	player addMagazine "FlareRed_M203";
	player addMagazine "15Rnd_9x19_M9SD";
	player addMagazine "15Rnd_9x19_M9SD";
	player addWeapon "M9SD";
	player addWeapon "M4A1_HWS_GL_SD_Camo";
	player selectWeapon "M4A1_HWS_GL_SD_Camo";




} else {

};
