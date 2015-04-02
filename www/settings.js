module.exports = {
    open: function(success,failure) {

        cordova.exec(
        // Success callback
        success,
        // Failure callback
        failure,
        // Native Class Name
        "Settings",
        // Name of method in native class.
        "cordovaOpenSettings",
        // array of args to pass to method.
        []
        );
    }
}