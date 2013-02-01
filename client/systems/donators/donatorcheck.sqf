


_uid = "";
_uid = getPlayerUID player;


if (_uid in donatorsbronze) then {
    player execVM "client\systems\donators\donatorgearbronze.sqf"; 
    sleep 5;
    hint "Welcome VIP ! The bronze loadout has been added to your inventory.";
} 
else {

if (_uid in donatorssilver) then {
    player execVM "client\systems\donators\donatorgearsilver.sqf"; 
    sleep 5;
    hint "Welcome VIP ! The silver loadout has been added to your inventory.";
} 
else {

if (_uid in donatorsgold) then {
    player execVM "client\systems\donators\donatorgeargold.sqf"; 
    sleep 5;
    hint "Welcome VIP ! The gold loadout has been added to your inventory.";
} 
else {

if (_uid in donatorsdiamond) then {
    player execVM "client\systems\donators\donatorgeardiamond.sqf"; 
    sleep 5;
    hint "Welcome VIP ! The diamond loadout has been added to your inventory.";
} 
else {

if (_uid in donatorsdiamondstealth) then {
    player execVM "client\systems\donators\donatorgeardiamondstealth.sqf"; 
    sleep 5;
    hint "Welcome VIP ! The diamond stealth loadout has been added to your inventory.";
} 
else {

if (_uid in donatorsgoldstealth) then {
    player execVM "client\systems\donators\donatorgeargoldstealth.sqf"; 
    sleep 5;
    hint "Welcome VIP ! The gold stealth loadout has been added to your inventory.";
} 
else {

if (_uid in donatorssilverstealth) then {
    player execVM "client\systems\donators\donatorgearsilverstealth.sqf"; 
    sleep 5;
    hint "Welcome VIP ! The silver stealth loadout has been added to your inventory.";
} 
else {

    sleep 1;
    waitUntil {scriptDone _Handle};
};
};
};
};
};
};
};
