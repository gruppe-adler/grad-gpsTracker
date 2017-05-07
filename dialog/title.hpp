#include "ui_toolkit.hpp"
#include "defines.hpp"


class grad_gpsTracker {
    idd = grad_gpsTracker_IDDMAIN;
    duration = 99999;

    enableSimulation = 1;
    enableDisplay = 1;

    onLoad = "uiNamespace setVariable ['grad_gpsTracker', _this select 0];";
    onUnload = "uiNamespace setVariable ['grad_gpsTracker', displayNull];";

    class ControlsBackground {
        
    };
};
