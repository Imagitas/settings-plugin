'use strict';

var NativeSettings = (function () {
    var NativeSettings = (typeof exports !== 'undefined') && exports || {};

    NativeSettings.open = function (success, fail) {
        return cordova.exec(success, fail, "NativeSettings", "cordovaOpenSettings", []);
    };

    return NativeSettings;
}());

module.exports = NativeSettings;