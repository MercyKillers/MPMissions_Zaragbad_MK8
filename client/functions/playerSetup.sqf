
//	@file Version: 1.0
//	@file Name: playerSetup.sqf
//	@file Author: [404] Deadbeat
//	@file Created: 20/11/2012 05:19
//	@file Args:

_player = _this;

//Player initialization
enableSentences false;
_player removeWeapon "ItemRadio";
removeAllWeapons _player;
removeBackpack _player;

//Default case means something fucked up.
_player addMagazine "6Rnd_45ACP";
_player addMagazine "6Rnd_45ACP";
_player addWeapon "revolver_gold_EP1";
_player selectWeapon "revolver_gold_EP1";

if(str(playerSide) in ["WEST"]) then
{
    removeAllWeapons _player;
	_player addWeapon "ItemGPS";
	_player addMagazine "17Rnd_9x19_glock17";
    _player addMagazine "17Rnd_9x19_glock17";
    _player addMagazine "17Rnd_9x19_glock17";
    _player addMagazine "17Rnd_9x19_glock17";
	_player addWeapon "glock17_EP1";
	_player selectWeapon "glock17_EP1";
	_player setVariable["cmoney",350,false];
};

if(str(playerSide) in ["EAST"]) then
{
    removeAllWeapons _player;
	_player addWeapon "ItemGPS";
	_player addMagazine "17Rnd_9x19_glock17";
    _player addMagazine "17Rnd_9x19_glock17";
    _player addMagazine "17Rnd_9x19_glock17";
    _player addMagazine "17Rnd_9x19_glock17";
	_player addWeapon "glock17_EP1";
	_player selectWeapon "glock17_EP1";
	_player setVariable["cmoney",350,false];
};

if(str(playerSide) in ["GUER"]) then
{
    removeAllWeapons _player;
	_player addWeapon "ItemGPS";
	_player addMagazine "17Rnd_9x19_glock17";
    _player addMagazine "17Rnd_9x19_glock17";
    _player addMagazine "17Rnd_9x19_glock17";
    _player addMagazine "17Rnd_9x19_glock17";
	_player addWeapon "glock17_EP1";
	_player selectWeapon "glock17_EP1";
	_player setVariable["cmoney",200,false];
};

_player addrating 1000000;
_player switchMove "amovpknlmstpsraswpstdnon_gear";

thirstLevel = 100;
hungerLevel = 100;


_player setVariable["canfood",2,false];
_player setVariable["medkits",0,false];
_player setVariable["water",2,false];
_player setVariable["fuel",0,false];
_player setVariable["repairkits",0,false];
_player setVariable["fuelFull", 0, false];
_player setVariable["fuelEmpty", 1, false];
_player setVariable["bomb",0,false];
_player setVariable["spawnBeacon",0,false];
_player setVariable["camonet",0,false];

[] execVM "client\functions\playerActions.sqf";
[] execVM "client\systems\donators\donatorcheck.sqf";

_player groupChat format["Player Initialization Complete"];
playerSetupComplete = true;