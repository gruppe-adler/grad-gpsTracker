#include "..\component.hpp"

params ["_updateInterval"];

[{
    params ["_args","_handle"];
    _args params ["_updateInterval","_display","_arrowCtrl","_receptionCtrl","_receptionCode"];

    if (isNull _display) exitWith {[_handle] call CBA_fnc_removePerFrameHandler};

    _reception = [player,grad_gpsTracker_currentTarget,_updateInterval,_receptionCtrl,_receptionCode] call grad_gpsTracker_fnc_updateReception;
    [player,grad_gpsTracker_currentTarget,_arrowCtrl,_reception] call grad_gpsTracker_fnc_updateArrow;

} , _updateInterval, _this] call CBA_fnc_addPerFrameHandler;