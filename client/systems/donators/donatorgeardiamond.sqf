

if (((getPlayerUID player) in donatorsdiamond)) then {


	player setVariable["cmoney", (player getVariable "cmoney")+1000,true];
	player setVariable["medkits",(player getVariable "medkits") + 1,true];
   	removeAllWeapons player;
	player addMagazine "20Rnd_762x51_B_SCAR";
	player addMagazine "20Rnd_762x51_B_SCAR";
	player addMagazine "20Rnd_762x51_B_SCAR";
	player addMagazine "20Rnd_762x51_B_SCAR";
	player addMagazine "20Rnd_762x51_B_SCAR";
	player addMagazine "20Rnd_762x51_B_SCAR";
	player addMagazine "20Rnd_762x51_B_SCAR";
	player addMagazine "SmokeShellRed";
	player addMagazine "SmokeShellGreen";
	player addMagazine "HandGrenade_East";
	player addMagazine "HandGrenade_East";
	player addWeapon "NVGoggles";
	player addWeapon "Binocular_Vector";
	player addMagazine "30Rnd_9x19_UZI";
	player addMagazine "30Rnd_9x19_UZI";
	player addMagazine "30Rnd_9x19_UZI";
	player addMagazine "30Rnd_9x19_UZI";
	player addMagazine "30Rnd_9x19_UZI";
	player addMagazine "30Rnd_9x19_UZI";
	player addWeapon "UZI_EP1";
	player addWeapon "SMAW";
	player addMagazine "SMAW_HEAA";
	player addWeapon "M110_NVG_EP1";
	player selectWeapon "M110_NVG_EP1";



} else {

};
