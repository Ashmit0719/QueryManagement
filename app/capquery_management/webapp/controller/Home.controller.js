sap.ui.define([
    "sap/ui/core/mvc/Controller"
], (Controller) => {
    "use strict";

    return Controller.extend("capquerymanagement.controller.Home", {
        onInit() {
        },

        onConfigClick: function(){
            const configTile = this.getOwnerComponent().getRouter();
            configTile.navTo("RouteconfigurationTile");
        },
        onRegisClick: function(){
            const registTile = this.getOwnerComponent().getRouter();
            registTile.navTo("RoutecustomerRegistration");
        }

    });
});