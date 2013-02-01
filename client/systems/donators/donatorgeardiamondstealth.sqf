

if (((getPlayerUID player) in donatorsdiamondstealth)) then {


	player setVariable["cmoney", (player getVariable "cmoney")+1000,true];
	player setVariable["medkits",(player getVariable "medkits") + 1,true];
   	removeAllWeapons player;
	player addMagazine "20Rnd_9x39_SP5_VSS";
	player addMagazine "20Rnd_9x39_SP5_VSS";
	player addMagazine "20Rnd_9x39_SP5_VSS";
	player addMagazine "20Rnd_9x39_SP5_VSS";
	player addMagazine "20Rnd_9x39_SP5_VSS";
	player addMagazine "20Rnd_9x39_SP5_VSS";
	player addMagazine "20Rnd_9x39_SP5_VSS";
	player addMagazine "SmokeShellRed";
	player addMagazine "SmokeShellGreen";
	player addMagazine "HandGrenade_East";
	player addMagazine "HandGrenade_East";
	player addWeapon "NVGoggles";
	player addWeapon "Binocular_Vector";
	player addMagazine "30Rnd_9x19_UZI_SD";
	player addMagazine "30Rnd_9x19_UZI_SD";
	player addMagazine "30Rnd_9x19_UZI_SD";
	player addMagazine "30Rnd_9x19_UZI_SD";
	player addMagazine "30Rnd_9x19_UZI_SD";
	player addMagazine "30Rnd_9x19_UZI_SD";
	player addWeapon "UZI_SD_EP1";
	player addWeapon "SMAW";
	player addMagazine "SMAW_HEAA";
	player addWeapon "VSS_vintorez";
	player selectWeapon "VSS_vintorez";



} else {

};
