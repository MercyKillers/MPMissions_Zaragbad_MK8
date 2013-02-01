
//Main Mission Colour = #52bf90 - Light blue
//Fail Mission Colour = #FF1717 - Light red
//Fail Mission Colour = #17FF41 - Light green
//Sub Colour = #FFF - White

if(!isServer) exitwith {};
diag_log format["WASTELAND SERVER - Mission Started"];
private ["_unitsAlive","_playerPresent","_missionType","_successTextColour","_mainTextColour","_failTextColour","_subTextColour","_picture","_vehicleName","_rad","_centerPos","_missionTimeOut","_missionDelayTime","_missionTriggerRadius","_randomArea","_hint","_startTime","_currTime","_result","_plane"];

//Mission Initialization.
_rad=20000;
_result = 0;
_missionType = "Abandoned Plane";
_mainTextColour = "#52bf90";
_successTextColour = "#17FF41";
_failTextColour = "#FF1717";
_subTextColour = "#FFFFFF";
_missionTimeOut = 1800;
_missionDelayTime = 1200;
_missionPlayerRadius = 50;
_planeMarker = floor (random 12);
_planeposition = getMarkerPos format ["planeSpawn_%1", _planeMarker];

mainMissionPos = _planeposition;

//Tell everyone their will be a mission soon.
_hint = parseText format ["<t align='center' color='%2' shadow='2' size='1.75'>Main Objective</t><br/><t align='center' color='%2'>------------------------------</t><br/><t color='%3' size='1.0'>Starting in %1 Minutes</t>", _missionDelayTime / 60, _mainTextColour, _subTextColour];
[nil,nil,rHINT,_hint] call RE;

//Wait till the mission is ready to be ran.
diag_log format["WASTELAND SERVER - Mission Waiting to run"];
_startTime = floor(time);
waitUntil
{ 
    _currTime = floor(time);
    if(_currTime - _startTime >= _missionDelayTime) then {_result = 1;};
    (_result == 1)
};
diag_log format["WASTELAND SERVER - Mission Resumed"];
_result = 0;

//Add marker to client marker array.
clientMissionMarkers set [count clientMissionMarkers,["Plane_Marker",_planeposition,"Abandoned Plane"]];
publicVariable "clientMissionMarkers";

_veh = ["An2_TK_EP1","L39_TK_EP1"] call BIS_fnc_selectRandom;

_plane = createVehicle [_veh,[(_planeposition select 0), _planeposition select 1,0],[], 0, "NONE"];
_plane setFuel 0;
_plane addweapon"CMFlareLauncher"; 
_plane addmagazine"60Rnd_CMFlareMagazine"; 

if (typeOf _plane == "An2_TK_EP1") then {
_plane addweapon"2A42"; 
_plane addmagazine"230Rnd_30mmHE_2A42";
};

_plane setVehicleAmmo 0.75;
_plane setdamage 0.50;

clearMagazineCargoGlobal _plane;
clearWeaponCargoGlobal _plane;

_plane setVehicleLock "LOCKED";
_plane setVariable["original",1,true];
_plane setVariable ["R3F_LOG_disabled", true, true];

_picture = getText (configFile >> "cfgVehicles" >> typeOf _plane >> "picture");
_vehicleName = getText (configFile >> "cfgVehicles" >> typeOf _plane >> "displayName");
_hint = parseText format ["<t align='center' color='%4' shadow='2' size='1.75'>Main Objective</t><br/><t align='center' color='%4'>------------------------------</t><br/><t align='center' color='%5' size='1.25'>%1</t><br/><t align='center'><img size='5' image='%2'/></t><br/><t align='center' color='%5'>A<t color='%4'> %3</t>, has been immobilized go get it for your team.</t>", _missionType, _picture, _vehicleName, _mainTextColour, _subTextColour];
[nil,nil,rHINT,_hint] call RE;

CivGrpM = createGroup civilian;
[CivGrpM,_planeposition]execVM "server\missions\createUnits\midGroup.sqf";

diag_log format["WASTELAND SERVER - Mission Waiting to be Finished"];
_startTime = floor(time);
waitUntil
{
    sleep 1; 
	_playerPresent = false;
    _currTime = floor(time);
    if(_currTime - _startTime >= _missionTimeOut) then {_result = 1;};
    {if((isPlayer _x) AND (_x distance _plane <= _missionPlayerRadius)) then {_playerPresent = true};}forEach playableUnits;
    _unitsAlive = ({alive _x} count units CivGrpM);
    (_result == 1) OR ((_playerPresent) AND (_unitsAlive < 1)) OR ((damage _plane) == 1)
};

_plane setVehicleLock "UNLOCKED";
_plane setVariable ["R3F_LOG_disabled", false, true];

if(_result == 1) then
{
	//Mission Failed.
    deleteVehicle _plane;
    {deleteVehicle _x;}forEach units CivGrpM;
    deleteGroup CivGrpM;
    _hint = parseText format ["<t align='center' color='%4' shadow='2' size='1.75'>Objective Failed</t><br/><t align='center' color='%4'>------------------------------</t><br/><t align='center' color='%5' size='1.25'>%1</t><br/><t align='center'><img size='5' image='%2'/></t><br/><t align='center' color='%5'>Objective failed, better luck next time</t>", _missionType, _picture, _vehicleName, _failTextColour, _subTextColour];
	[nil,nil,rHINT,_hint] call RE;
    diag_log format["WASTELAND SERVER - Mission Failed"];
} else {
	//Mission Complete.
    deleteGroup CivGrpM;
    _hint = parseText format ["<t align='center' color='%4' shadow='2' size='1.75'>Objective Complete</t><br/><t align='center' color='%4'>------------------------------</t><br/><t align='center' color='%5' size='1.25'>%1</t><br/><t align='center'><img size='5' image='%2'/></t><br/><t align='center' color='%5'>The plane has been captured, now go destroy the enemy</t>", _missionType, _picture, _vehicleName, _successTextColour, _subTextColour];
	[nil,nil,rHINT,_hint] call RE;
    diag_log format["WASTELAND SERVER - Mission Finished"];
};

//Remove marker from client marker array.
{
    if(_x select 0 == "Plane_Marker") then
    {
    	clientMissionMarkers set [_forEachIndex, "REMOVETHISCRAP"];
		clientMissionMarkers = clientMissionMarkers - ["REMOVETHISCRAP"];
        publicVariable "clientMissionMarkers";    
    };
}forEach clientMissionMarkers;
mainMissionRunning = false;