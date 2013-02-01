
_bombpos = [ getPosasl player select 0, getPosasl player select 1, (getPosasl player select 2) +0.2];
player playmove "AinvPknlMstpSlayWrflDnon";

sleep 30;
_tmp = "Bo_Mk82" createVehicle _bombpos; _tmp setPosasl _bombpos;
