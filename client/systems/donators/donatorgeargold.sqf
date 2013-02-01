

if (((getPlayerUID player) in donatorsgold)) then {

	player setVariable["cmoney", (player getVariable "cmoney")+800,true];
	player setVariable["medkits",(player getVariable "medkits") + 1,true];
   	removeAllWeapons player;
	player addMagazine "20Rnd_762x51_DMR";
	player addMagazine "20Rnd_762x51_DMR";
	player addMagazine "20Rnd_762x51_DMR";
	player addMagazine "20Rnd_762x51_DMR";
	player addMagazine "20Rnd_762x51_DMR";
	player addMagazine "20Rnd_762x51_DMR";
	player addMagazine "SmokeShellRed";
	player addMagazine "SmokeShellGreen";
	player addMagazine "HandGrenade_East";
	player addMagazine "HandGrenade_East";
	player addWeapon "NVGoggles";
	player addWeapon "Binocular_Vector";
	player addMagazine "6Rnd_45ACP";
	player addMagazine "6Rnd_45ACP";	
	player addMagazine "6Rnd_45ACP";
	player addMagazine "6Rnd_45ACP";
	player addMagazine "6Rnd_45ACP";
	player addMagazine "6Rnd_45ACP";
	player addWeapon "revolver_gold_EP1";
	player addWeapon "RPG7V";
	player addMagazine "PG7V";
	player addWeapon "DMR";
	player selectWeapon "DMR";



} else {

};
