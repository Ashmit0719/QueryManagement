sap.ui.define([
    "sap/ui/core/mvc/Controller"
], (Controller) => {
    "use strict";

    return Controller.extend("capquerymanagement.controller.configurationTile", {
        onInit() {
        },
        onConfigClick: function(){
            const configTile = this.getOwnerComponent().getRouter();
            configTile.navTo("Routeconfiguration");
        },

        onFieldDefinationClick: function(){
            const registTile = this.getOwnerComponent().getRouter();
            registTile.navTo("RouteconfigurationFieldDefination");
        }

    });
});