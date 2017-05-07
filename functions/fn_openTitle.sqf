#include "..\component.hpp"

"grad_gpsTracker_layer" cutRsc ["RscTitleDisplayEmpty","PLAIN",0,false];

[{!isNull (uiNamespace getVariable ["RscTitleDisplayEmpty",displayNull])}, {
    params ["_target",["_updateInterval",0.5],["_size",1],["_offsetX",1],["_offsetY",1],["_receptionCode",{params ["_unit","_target","_updateInterval"]; private _reception = 1 - (_unit distance2D _target)/100; _reception}]];

    if (!isNil "_target") then {[_target] call grad_gpsTracker_fnc_setTarget};

    _display = uiNamespace getVariable ["RscTitleDisplayEmpty",displayNull];

    _components = [_display,_size,_offsetX,_offsetY] call grad_gpsTracker_fnc_createGPS;
    _components params ["_arrowCtrl","_receptionCtrl"];

    [_updateInterval,_display,_arrowCtrl,_receptionCtrl,_receptionCode] call grad_gpsTracker_fnc_addPFH;

}, _this] call CBA_fnc_waitUntilAndExecute;
