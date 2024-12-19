sap.ui.define([
    "sap/ui/core/mvc/Controller",
    "sap/m/MessageBox",
    "sap/m/MessageToast"
], function (Controller, MessageBox, MessageToast) {
    "use strict";

    return Controller.extend("capquerymanagement.controller.customerRegistration", {
        /**
         * Handles the "Submit" button press to create customer details.
         */
        // onSubmitcustomerData: async function () {
        //     var that = this;

        //     // Get the view and input values
        //     var oView = this.getView();
        //     var sCustomerName = oView.byId("customerNameInput").getValue();
        //     var sCountry = oView.byId("countryInput").getValue();
        //     var sRegion = oView.byId("regionInput").getValue();
        //     var sIndustryType = oView.byId("industryTypeInput").getValue();
        //     var sCityName = oView.byId("cityNameInput").getValue();

        //     // Prepare the payload for the OData service
        //     var oPayload = {
        //         "BusinessPartner": "",
        //         "Customer": "",
        //         "BusinessPartnerCategory": "2",
        //         "BusinessPartnerGrouping": "G004",
        //         "BusinessPartnerName": "New test",
        //         "OrganizationBPName1": "New test",
        //         "to_BuPaIndustry": {
        //             "results": [
        //                 {
        //                     "IndustrySector": "11",
        //                     "BusinessPartner": "",
        //                     "IndustrySystemType": sIndustryType
        //                 }
        //             ]
        //         },
        //         "to_BusinessPartnerAddress": {
        //             "results": [
        //                 {
        //                     "BusinessPartner": "",
        //                     "AddressID": "26538",
        //                     "CityName": sCityName,
        //                     "Country": sCountry,
        //                     "Language": "EN",
        //                     "Region": sRegion,
        //                     "to_AddressUsage": {
        //                         "results": [
        //                             {
        //                                 "BusinessPartner": "",
        //                                 "AddressUsage": "XXDEFAULT",
        //                                 "AddressID": "26538",
        //                                 "StandardUsage": false
        //                             }
        //                         ]
        //                     }
        //                 }
        //             ]
        //         },
        //         "to_BusinessPartnerRole": {
        //             "results": [
        //                 {
        //                     "BusinessPartner": "",
        //                     "BusinessPartnerRole": "FLCU00"
        //                 }
        //             ]
        //         },
        //         "to_Customer": {
        //             "Customer": "",
        //             "CustomerAccountGroup": "G004",
        //             "CustomerName": sCustomerName,
        //             "to_CustomerCompany": {
        //                 "results": [
        //                     {
        //                         "CompanyCode": "GOIL",
        //                         "ReconciliationAccount": "140000",
        //                         "CustomerAccountGroup": "G004",
        //                         "LayoutSortingRule": "031"
        //                     }
        //                 ]
        //             }
        //         }
        //     };

        //     // Get the OData V4 model
        //     var oModel = that.getOwnerComponent().getModel();
        //     var oBindList = oModel.bindList("/A_BusinessPartner");
            
        //     // Show busy indicator during the process
        //     if (!this.oBusyDialog) {
        //         this.oBusyDialog = new sap.m.BusyDialog();
        //     }
        //     this.oBusyDialog.open();

        //     try {
        //         // Trigger the creation of the entity
        //         let oCreateContext = oBindList.create(oPayload, true);

        //         // Attach create completed handler to process the response
        //         oBindList.attachCreateCompleted(function (oEvent) {
        //             let oResult = oEvent.getParameters();

        //             // Close the busy indicator
        //             that.oBusyDialog.close();

        //             if (oResult.success) {
        //                 let oCreatedObject = oResult.context.getObject();
        //                 let sGeneratedCustomer = oCreatedObject.Customer; // Replace with correct property from response
        //                 console.log("Generated Customer ID: ", sGeneratedCustomer);
        //                 MessageBox.success("Customer created successfully! Customer ID: " + sGeneratedCustomer);
        //             } else {
        //                 console.error("Error during creation: ", oResult.error);
        //                 MessageBox.error("Failed to create customer. Please try again.");
        //             }
        //         });
        //     } catch (oError) {
        //         console.error("Error: ", oError);
        //         MessageBox.error("An unexpected error occurred while creating the customer.");
        //         this.oBusyDialog.close();
        //     }
        // }

       


        
   onSubmitcustomerData: async function () {
    var that = this;

    // Get the view and input values
    var oView = this.getView();
    var sCustomerName = oView.byId("customerNameInput").getValue();
    var sCountry = oView.byId("countryInput").getValue();
    var sRegion = oView.byId("regionInput").getValue();
    var sIndustryType = oView.byId("industryTypeInput").getValue();
    var sCityName = oView.byId("cityNameInput").getValue();

    // Prepare the payload for the OData service
    var oPayload = {
        "BusinessPartner": "",
        "Customer": "",
        "BusinessPartnerCategory": "2",
        "BusinessPartnerGrouping": "G004",
        "BusinessPartnerName": "New test",
        "OrganizationBPName1": "New test",
        "to_BuPaIndustry": {
            "results": [
                {
                    "IndustrySector": "11",
                    "BusinessPartner": "",
                    "IndustrySystemType": sIndustryType
                }
            ]
        },
        "to_BusinessPartnerAddress": {
            "results": [
                {
                    "BusinessPartner": "",
                    "AddressID": "26538",
                    "CityName": sCityName,
                    "Country": sCountry,
                    "Language": "EN",
                    "Region": sRegion,
                    "to_AddressUsage": {
                        "results": [
                            {
                                "BusinessPartner": "",
                                "AddressUsage": "XXDEFAULT",
                                "AddressID": "26538",
                                "StandardUsage": false
                            }
                        ]
                    }
                }
            ]
        },
        "to_BusinessPartnerRole": {
            "results": [
                {
                    "BusinessPartner": "",
                    "BusinessPartnerRole": "FLCU00"
                }
            ]
        },
        "to_Customer": {
            "Customer": "",
            "CustomerAccountGroup": "G004",
            "CustomerName": sCustomerName,
            "to_CustomerCompany": {
                "results": [
                    {
                        "CompanyCode": "GOIL",
                        "ReconciliationAccount": "140000",
                        "CustomerAccountGroup": "G004",
                        "LayoutSortingRule": "031"
                    }
                ]
            }
        }
    };

    // Get the OData V4 model
    var oModel = that.getOwnerComponent().getModel();

    // Show busy indicator during the process
    if (!this.oBusyDialog) {
        this.oBusyDialog = new sap.m.BusyDialog();
    }
    this.oBusyDialog.open();

    try {
        // Trigger the creation of the entity
        let oListBinding = oModel.bindList("/A_BusinessPartner");
        let oCreateContext = oListBinding.create(oPayload, true);

        // Wait for creation completion
        await oCreateContext.created();

        // Retrieve the created BusinessPartner ID
        let sBusinessPartner = oCreateContext.getProperty("BusinessPartner");

        if (sBusinessPartner) {
            // Fetch the details of the created BusinessPartner using bindList and requestContexts
            var oDetailsBinding = oModel.bindList("/A_BusinessPartner", undefined, undefined, undefined, {
                $filter: `BusinessPartner eq '${sBusinessPartner}'`,
                $expand: "to_Customer"
            });

            // Fetch data using requestContexts
            oDetailsBinding.requestContexts(0, 1).then(function (aContexts) {
                if (aContexts.length === 0) {
                    console.error("No data found for BusinessPartner: ", sBusinessPartner);
                    MessageBox.warning("Customer created successfully, but details could not be retrieved.");
                    return;
                }

                // Process the retrieved data
                let oData = aContexts[0].getObject();

                if (oData && oData.to_Customer) {
                    let sGeneratedCustomer = oData.to_Customer.Customer; // Ensure this matches your entity structure
                    console.log("Generated Customer ID: ", sGeneratedCustomer);
                    MessageBox.success("Customer created successfully! Customer ID: " + sGeneratedCustomer);

                    // Optionally update the frontend screen with the customer ID
                    oView.byId("customerIdInput").setValue(sGeneratedCustomer);
                } else {
                    MessageBox.warning("Customer created successfully, but Customer ID could not be fetched.");
                }
            })
        } else {
            MessageBox.warning("Customer created successfully, but BusinessPartner ID is missing.");
        }
    } catch (oError) {
        console.error("Error during customer creation: ", oError);
        MessageBox.error("Failed to create customer. Please check the inputs and try again.");
    } finally {
        // Close the busy indicator
        this.oBusyDialog.close();
    }
}

        
        
        
    });
});
