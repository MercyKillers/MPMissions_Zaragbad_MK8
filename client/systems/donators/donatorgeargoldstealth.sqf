

if (((getPlayerUID player) in donatorsgoldstealth)) then {

	player setVariable["cmoney", (player getVariable "cmoney")+800,true];
	player setVariable["medkits",(player getVariable "medkits") + 1,true];
   	removeAllWeapons player;
	player addMagazine "20Rnd_762x51_SB_SCAR";
	player addMagazine "20Rnd_762x51_SB_SCAR";
	player addMagazine "20Rnd_762x51_SB_SCAR";
	player addMagazine "20Rnd_762x51_SB_SCAR";
	player addMagazine "20Rnd_762x51_SB_SCAR";
	player addMagazine "20Rnd_762x51_SB_SCAR";
	player addMagazine "SmokeShellRed";
	player addMagazine "SmokeShellGreen";
	player addMagazine "HandGrenade_East";
	player addMagazine "HandGrenade_East";
	player addWeapon "NVGoggles";
	player addWeapon "Binocular_Vector";
	player addMagazine "15Rnd_9x19_M9SD";
	player addMagazine "15Rnd_9x19_M9SD";
	player addMagazine "15Rnd_9x19_M9SD";
	player addMagazine "15Rnd_9x19_M9SD";
	player addMagazine "15Rnd_9x19_M9SD";
	player addMagazine "15Rnd_9x19_M9SD";
	player addWeapon "M9SD";
	player addWeapon "RPG7V";
	player addMagazine "PG7V";
	player addWeapon "SCAR_H_CQC_CCO_SD";
	player selectWeapon "SCAR_H_CQC_CCO_SD";


} else {

};
