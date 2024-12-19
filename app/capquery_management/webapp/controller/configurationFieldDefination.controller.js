sap.ui.define([
  "sap/ui/core/mvc/Controller",
  "sap/ui/model/json/JSONModel",
  'sap/ui/core/Fragment',
  "sap/ui/model/Filter",
  "sap/ui/model/FilterType",
  "sap/ui/model/FilterOperator",
  "sap/m/MessageBox",
  "sap/m/MessageToast"

], (Controller, JSONModel, Fragment, Filter, FilterType, FilterOperator, MessageBox, MessageToast) => {
  "use strict";
  let lastID;
  let initialArray = {
    ID: []
  };

  return Controller.extend("capquerymanagement.controller.configurationFieldDefination", {
    onInit() {
    },

    refreshModel: function () {
      try {
        let documentTypeControl = this.getView().byId("configFieldDefination_Select_DocumentType");
        let selectedItem = documentTypeControl.getSelectedItem();
        if (!selectedItem) {
          console.error("No document type selected.");
          return;
        }
        let documentType = selectedItem.getText();

        let dynamicModel = this.getView().getModel("dynamicModel");
        if (!dynamicModel) {
          dynamicModel = new sap.ui.model.json.JSONModel();
          this.getView().setModel(dynamicModel, "dynamicModel");
        }

        // Fetch data from HeaderItem_Config
        let fieldsModel = this.getOwnerComponent().getModel();
        let fieldsBindList = fieldsModel.bindList("/customer");

        fieldsBindList.requestContexts(0, Infinity).then((aContexts) => {
          let allData = aContexts.map((oContext) => oContext.getObject());

          // Filter dynamic data based on the selected document type
          let filteredData = allData.filter((item) => item.documentType === documentType && item.flag !== null);

          // Update dynamicModel
          dynamicModel.setData(filteredData);
          dynamicModel.refresh(true);
        }).catch((error) => {
          console.error("Error requesting contexts in refreshModel:", error);
        });
      } catch (error) {
        console.error("Error in refreshModel:", error);
      }
    },

    onAfterRendering: function () {
      const oSelect = this.byId("configFieldDefination_Select_DocumentType");
      const oPopover = oSelect.getPicker();

      if (oPopover) {
        oPopover.attachEventOnce("beforeOpen", this.onDocumentTypeBeforeOpen, this);
      }
    },


    onDocumentTypeBeforeOpen: function () {
      let oModel = this.getOwnerComponent().getModel();
      let oBindList = oModel.bindList("/DocumentNoProfileMapping");

      oBindList.requestContexts(0, Infinity).then(function (aContexts) {
        // Initialize an empty array and a Set to hold filtered and unique data
        let filteredData = [];
        let uniqueDocumentNos = new Set();

        aContexts.forEach(function (oContext) {
          let obj = oContext.getObject();

          // Filter the data where DocumentDesc is "LP"
          if (obj.DocumentDesc === "LP") {
            // Check if the DocumentNo is already in the Set
            if (!uniqueDocumentNos.has(obj.DocumentNo)) {
              uniqueDocumentNos.add(obj.DocumentNo);
              filteredData.push(obj);
            }
          }
        });

        // Create a new JSONModel and set the filtered data
        let docHITypesModel = new sap.ui.model.json.JSONModel(filteredData);

        // Set the model to the view or globally based on your requirement
        this.getView().setModel(docHITypesModel, "docHITypes");

        // Log the filtered unique data (optional)
        console.log("Filtered Unique Data:", filteredData);
      }.bind(this)).catch(function (error) {
        console.error("Error fetching data:", error);
      });

    },


    onDocumentTypeSelect: function (oEvent) {
      // Get the selected DocumentNo from the Select control
      let selectedDocType = oEvent.getParameter("selectedItem").getKey();

      // Initialize Models
      let staticModel = this.getView().getModel("staticModel");
      let dynamicModel = this.getView().getModel("dynamicModel");

      if (!staticModel) {
        staticModel = new sap.ui.model.json.JSONModel();
        this.getView().setModel(staticModel, "staticModel");
        console.log("staticModel", staticModel);

      }

      if (!dynamicModel) {
        dynamicModel = new sap.ui.model.json.JSONModel();
        this.getView().setModel(dynamicModel, "dynamicModel");
        console.log("dynamicModel", dynamicModel);

      }


      // Fetch data from the 'customer' entity
      let oModel = this.getOwnerComponent().getModel();
      let oBindList = oModel.bindList("/customer");

      oBindList.requestContexts(0, Infinity).then(function (aContexts) {
        let allData = aContexts.map((oContext) => oContext.getObject());
        let filteredStaticData = allData.filter((item) => item.documentType === selectedDocType && item.flag === null);
        let filteredDynamicData = allData.filter((item) => item.documentType === selectedDocType && item.flag !== null);

        // Update models
        staticModel.setData(filteredStaticData);
        dynamicModel.setData(filteredDynamicData);




      });
      // Update UI visibility
      this.byId("configFieldDefination_StaticTable").setVisible(true);
      this.byId("configFieldDefination_DynamicTable").setVisible(true);


    },


    onLastParamCId: function () {
      try {
        let oTable = this.getView().byId("configFieldDefination_DynamicTable"); // Correct table ID
        let oItems = oTable.getItems();

        let maxID = 0;
        oItems.forEach(function (oItem) {
          var currentID = parseInt(oItem.getCells()[1].getText(), 10);
          if (!isNaN(currentID) && currentID > maxID) {
            maxID = currentID;
          }
        });

        lastID = maxID.toString();
      } catch (error) {
        MessageToast.show(`Error occurred: ${error.message}`);
        console.error("Error finding max ID:", error);
        this.lastID = "0";
      }

      console.log("Max ID:", lastID);

    },
    onAddDynamic: function () {
      try {
        //   var sContractType = this.getView().byId("configFieldDefination_Select_ContractType").getSelectedKey();
        var sDocumentType = this.getView().byId("configFieldDefination_Select_DocumentType").getSelectedKey();

        if (!sDocumentType) {
          MessageBox.error("Please select Contract Type and Document Type.");
          return;
        } else if (!sDocumentType) {
          MessageBox.error("Please select Document Type.");
          return;
        }

        this.onLastParamCId();
        var oView = this.getView();

        const addServiceParameterData = {
          parameterLabel: "",
          selectedFieldType: "String",
          selectedStandardType: "Price List",
          fieldLength: "",
          fieldstandard: [
            { key: "Master Contract", text: "Master Contract" },
            { key: "Pricing Date", text: "Pricing Date" },
            { key: "Inco Terms", text: "Inco Terms" },
            { key: "Material Pricing Group", text: "Material Pricing Group" },
            { key: "Storage Location", text: "Storage Location" }
          ],
          fieldTypeList: [
            { key: "String", text: "String" },
            { key: "Integer", text: "Integer" },
            { key: "Boolean", text: "Boolean" },
            { key: "Decimal", text: "Decimal" },
            { key: "Date", text: "Date" },
            { key: "Date and Time", text: "Date and Time" },
            { key: "Table", text: "Table" },
            { key: "Quantity", text: "Quantity" },
            { key: "List", text: "List" }
          ],
          listValues: []
        };

        const addServiceParameterCustom = {
          parameterName: "",
          parameterLabel: "",
          selectedFieldType: "String",
          fieldLength: "",
          fieldTypeList: [
            { key: "String", text: "String" },
            { key: "Integer", text: "Integer" },
            { key: "Boolean", text: "Boolean" },
            { key: "Decimal", text: "Decimal" },
            { key: "Date", text: "Date" },
            { key: "Date and Time", text: "Date and Time" },
            { key: "Table", text: "Table" },
            { key: "Quantity", text: "Quantity" },
            { key: "List", text: "List" }
          ],
          listValues: []
        };

        const addServiceParameterModel = new JSONModel(addServiceParameterData);
        oView.setModel(addServiceParameterModel, "addServiceParameterModel");

        const addServiceParameterModelCustom = new JSONModel(addServiceParameterCustom);
        oView.setModel(addServiceParameterModelCustom, "addServiceParameterModelCustom");

        if (!this._oDialogCGc) {
          this._oDialogCGc = sap.ui.xmlfragment("capquerymanagement.fragments.addFieldCGC", this);
          oView.addDependent(this._oDialogCGc);
        }

        this._oDialogCGc.open();
      } catch (error) {
        MessageToast.show(`Error occurred: ${error.message}`);
        console.error(error);
      }
    },

    onStaticLabelUpdate: function (oEvent) {
      try {
          let oInput = oEvent.getSource();
          let sNewValue = oInput.getValue();
          let staticModel = this.getView().getModel("staticModel");
  
          if (!staticModel) {
              sap.m.MessageToast.show("Static Model not initialized.");
              return;
          }
  
          let oBindingContext = oInput.getBindingContext("staticModel");
          let oModel = oBindingContext.getModel();
          let sUniqueId = oModel.getProperty(oBindingContext.getPath() + "/unique");
          let sPath = "/customer";
  
          if (sNewValue === "") {
              sap.m.MessageBox.error("Please fill the label field.");
              oInput.setValueState(sap.ui.core.ValueState.Error);
              oInput.setValueStateText("This field cannot be empty.");
          } else {
              oInput.setValueState(sap.ui.core.ValueState.None);
              this.handleEdit(sPath, sUniqueId, {
                  label: sNewValue
              });
          }
      } catch (oError) {
          sap.m.MessageToast.show("An error occurred while updating the static label: " + oError.message);
      }
  },
  

    oncancelNewParameter: function () {
      try {
        this._oDialogCGc.close();
      } catch (error) {
        sap.m.MessageToast.show("Error cancelling parameter creation: " + error.message);
        console.error("Error in oncancelNewParameter:", error);
      }
    },
    checkMandatory: function (flag) {
      if (flag === null || flag === undefined) {
        return false;
      }
      return true;

    },

    onSaveCustom: function () {
      try {
        var ContractType = this.getView().byId("configFieldDefination_Select_ContractType").getValue();
        var documentType = this.getView().byId("configFieldDefination_Select_DocumentType").getSelectedItem().getText();

        var oView = this.getView();
        var oModels = oView.getModel("addServiceParameterModelCustom");
        // var listValues = oModels.getProperty("/listValues");

        var addServiceParameterCustom = oModels.getData();
        var flag = this.getView().byId("configFieldDefination_StaticTable").getItems().length + 1;

        var oEntryDataCustomParameter = {
          ID: (parseInt(lastID, 10) + 1),
          contractType: ContractType,
          documentType: documentType,
          flag: flag,
          service_parameter: addServiceParameterCustom.parameterName,
          label: addServiceParameterCustom.parameterLabel,
          serviceParameterType: addServiceParameterCustom.selectedFieldType,
          serviceParameterlength: addServiceParameterCustom.fieldLength,
          mandatory: this.checkMandatory(addServiceParameterCustom.parameterName),
          // List: listValues.map(item => item.value),
          visible: this.checkMandatory(addServiceParameterCustom.parameterName),
        };

        let oModel = this.getView().getModel();
        let oBindListSP = oModel.bindList("/customer");
        oBindListSP.create(oEntryDataCustomParameter);
        oBindListSP.attachCreateCompleted((oEvent) => {
          let params = oEvent.getParameters();

          if (params.success) {
            this.refreshModel();
          }
        });

        this._oDialogCGc.close();
      } catch (oError) {
        sap.m.MessageBox.error("An error occurred while saving custom data: " + oError.message);
      }
    },

    onSaveStandard: function () {
      try {
        debugger;
        var ContractType = this.getView().byId("configFieldDefination_Select_ContractType").getValue();
        var documentType = this.getView().byId("configFieldDefination_Select_DocumentType").getSelectedItem().getText();
        var oView = this.getView();
        var oModels = oView.getModel("addServiceParameterModel");
        var listValues = oModels.getProperty("/listValues");

        var selectedItemKey = this.getView().byId("configFieldDefination_Select_ContractType").getValue();
        console.log("selectedItemKey", selectedItemKey);

        var addServiceParameterData = oModels.getData();
        var flag = this.getView().byId("configFieldDefination_StaticTable").getItems().length + 1;

        var addServiceParameterData = this.getView().getModel("addServiceParameterModel").getData();
        var flag = this.getView().byId("configFieldDefination_StaticTable").getItems().length + 1
        var oEntryDataServiceParameter = {
          ID: (parseInt(lastID, 10) + 1),
          contractType: ContractType || "DefaultContract",
          documentType: documentType || "DefaultDoc",
          flag: flag || 1,
          service_parameter: addServiceParameterData.selectedStandardType || "DefaultService",
          label: addServiceParameterData.parameterLabel || "DefaultLabel",
          serviceParameterType: addServiceParameterData.selectedFieldType || "String",
          serviceParameterlength: parseInt(addServiceParameterData.fieldLength, 10) || 0,
          mandatory: this.checkMandatory(addServiceParameterData.selectedStandardType),
          visible: this.checkMandatory(addServiceParameterData.selectedStandardType),
        };


        let oModel = this.getView().getModel();
        let oBindListSP = oModel.bindList("/customer");
        oBindListSP.create(oEntryDataServiceParameter);
        oBindListSP.attachCreateCompleted((oEvent) => {
          let params = oEvent.getParameters();

          if (params.success) {
            this.refreshModel();
          }
        });

        this._oDialogCGc.close();
      } catch (oError) {
        sap.m.MessageBox.error("An error occurred while saving standard data: " + oError.message);
      }
    },

    onVisibleCheckboxChange: function (oEvent) {
      try {
        var oCheckBox = oEvent.getSource();
        var bSelected = oEvent.getParameter("selected");

        var oBindingContext = oCheckBox.getBindingContext("dynamicModel");
        var oModel = oBindingContext.getModel();
        var sUniqueId = oModel.getProperty(oBindingContext.getPath() + "/unique");

        let sPath = "/customer";

        this.handleEdit(sPath, sUniqueId, {
          visible: bSelected
        });
      } catch (oError) {
        sap.m.MessageToast.show("An error occurred while updating the visible checkbox: " + oError.message);
      }
    },
    onMandatoryCheckboxChange: function (oEvent) {
      try {
        var oCheckBox = oEvent.getSource();
        var bSelected = oEvent.getParameter("selected");

        var oBindingContext = oCheckBox.getBindingContext("dynamicModel");
        var oModel = oBindingContext.getModel();
        var sUniqueId = oModel.getProperty(oBindingContext.getPath() + "/unique");
        let sPath = "/customer";

        this.handleEdit(sPath, sUniqueId, {
          mandatory: bSelected
        });
      } catch (oError) {
        sap.m.MessageToast.show("An error occurred while updating the mandatory checkbox: " + oError.message);
      }
    },
    handleEdit: function (sPath, sUniqueId, oUpdatedData) {
      try {
        let oModel = this.getView().getModel();

        let oFilter = new sap.ui.model.Filter("unique", sap.ui.model.FilterOperator.EQ, sUniqueId);

        oModel.bindList(sPath, null, null, [oFilter]).requestContexts().then(function (aContexts) {
          if (aContexts.length > 0) {
            let oContext = aContexts[0];

            Object.keys(oUpdatedData).forEach(function (sProperty) {
              oContext.setProperty(sProperty, oUpdatedData[sProperty]);
            });
          } else {
            sap.m.MessageBox.error("No item found with the specified unique ID: " + sUniqueId);
          }
        }).catch(function (error) {
          sap.m.MessageBox.error("Error updating item: " + error.message);
        });
      } catch (oError) {
        sap.m.MessageBox.error("An unexpected error occurred: " + oError.message);
      }
    },


    onDeleteDynamic: function () {
      try {
        var sDocumentType = this.getView().byId("configFieldDefination_Select_DocumentType").getSelectedKey();
        if (!sDocumentType) {
          MessageBox.error("Please select Contract Type and Document Type.");
          return;
        } else if (!sDocumentType) {
          MessageBox.error("Please select Document Type.");
          return;
        }
        var addField = this.byId("configFieldDefination_Button_Create");
        var delField = this.byId("configFieldDefination_Button_DeleteField");
        var confirmDelField = this.byId("configFieldDefination_Button_ConfirmDeletion");
        var cancelDelField = this.byId("configFieldDefination_Button_CancelDeletion");
        var delDynamicCheckBox = this.byId("configFieldDefination_DynamicColumn_Delete");

        // TOGGLE VISIBILTY
        addField.setVisible(!addField.getVisible());
        delField.setVisible(!delField.getVisible());
        confirmDelField.setVisible(!confirmDelField.getVisible());
        cancelDelField.setVisible(!cancelDelField.getVisible());
        delDynamicCheckBox.setVisible(!delDynamicCheckBox.getVisible());
      } catch (error) {
        sap.m.MessageToast.show("Error toggling dynamic field deletion controls: " + error.message);
        console.error("Error in onDeleteDynamic:", error);
      }
    },

    onConfirmFieldDeletion: function () {
      try {
        let fieldsModel = this.getOwnerComponent().getModel();
        let fieldsBindList = fieldsModel.bindList("/customer");

        if (initialArray.ID.length === 0) {
          sap.m.MessageToast.show("Please select at least one checkbox.");
          return;
        }

        sap.m.MessageBox.confirm("Are you sure you want to delete the selected fields?", {
          onClose: async (sAction) => {
            if (sAction === sap.m.MessageBox.Action.OK) {
              let aFilters = initialArray.ID.map(id => new sap.ui.model.Filter("unique", sap.ui.model.FilterOperator.EQ, id));
              let oCombinedFilter = new sap.ui.model.Filter({
                filters: aFilters,
                and: false
              });

              try {
                let aContexts = await fieldsBindList.filter(oCombinedFilter).requestContexts();
                for (let context of aContexts) {
                  await context.delete();
                }

                initialArray.ID = [];
                this.refreshModel();
                this.onDeleteDynamic();
                this.onNullSelected();
                this.onFieldUnCheckBox();

                sap.m.MessageToast.show("Fields deleted successfully.");
              } catch (error) {
                sap.m.MessageToast.show("Error during deletion: " + error.message);
                console.error("Error in onConfirmFieldDeletion:", error);
              }
            }
          }
        });
      } catch (error) {
        sap.m.MessageToast.show("Error initiating field deletion: " + error.message);
        console.error("Error in onConfirmFieldDeletion:", error);
      }
    },

    onCancelFieldDeletion: function () {
      try {
        this.onDeleteDynamic();
        this.onNullSelected();
        this.onFieldUnCheckBox();
      } catch (error) {
        sap.m.MessageToast.show("Error cancelling field deletion: " + error.message);
        console.error("Error in onCancelFieldDeletion:", error);
      }
    },

    onNullSelected: function () {
      try {
        initialArray = { ID: [] };
      } catch (error) {
        sap.m.MessageToast.show("Error resetting selected fields: " + error.message);
        console.error("Error in onNullSelected:", error);
      }
    },
    onFieldUnCheckBox: function () {
      try {
        var selectedItemKey = this.getView().byId("configFieldDefination_Select_ContractType").getSelectedKey();
        var oTable = (selectedItemKey === "salesContract") ? this.byId("configFieldDefination_DynamicTable") : null;

        if (!oTable) {
          sap.m.MessageToast.show("Table not found for the selected key.");
          return;
        }

        oTable.getItems().forEach(function (oItem) {
          oItem.getCells()[0].setSelected(false);
        });

        this.getView().byId("configFieldDefination_DynamicColumn_Checkbox_SelectAll").setSelected(false);
      } catch (error) {
        sap.m.MessageToast.show("Error unchecking fields: " + error.message);
        console.error("Error in onFieldUnCheckBox:", error);
      }
    },
    onSelectAllDynamicField: function (oEvent) {
      try {
        var oTable = this.byId("configFieldDefination_DynamicTable");
        var oItems = oTable.getItems();
        var selectAll = oEvent.getParameter("selected");

        if (!selectAll) {
          initialArray.ID = [];
        } else {
          oItems.forEach(function (oItem) {
            var uniqueValue = oItem.getBindingContext("dynamicModel").getProperty("unique");
            if (oItem.getCells()[4].getProperty("enabled")) {
              if (initialArray.ID.indexOf(uniqueValue) === -1) {
                initialArray.ID.push(uniqueValue);
              }
            }
          });
        }

        oItems.forEach(function (oItem) {
          var oCheckBox = oItem.getCells()[0];
          var flagStatus = oItem.getCells()[4];

          if (oCheckBox instanceof sap.m.CheckBox && flagStatus.getProperty("enabled")) {
            oCheckBox.setSelected(selectAll);
          }
        });

        console.log("initialArray.ID", initialArray.ID);
      } catch (error) {
        sap.m.MessageToast.show("Error selecting all fields: " + error.message);
        console.error("Error in onSelectAllDynamicField:", error);
      }
    },

    onDeleteDynamicFieldArray: function (oEvent) {
      try {
        var selectedPaths = oEvent.getSource().getParent().getAggregation("cells");

        selectedPaths.forEach(function (cell, i) {
          if (i === 0) {
            let checkbox = cell;
            let uniqueValue = selectedPaths[i + 1].getBindingContext("dynamicModel").getProperty("unique");

            if (checkbox.getSelected()) {
              if (initialArray.ID.indexOf(uniqueValue) === -1) {
                initialArray.ID.push(uniqueValue);
              }
            } else {
              var index = initialArray.ID.indexOf(uniqueValue);
              if (index !== -1) {
                initialArray.ID.splice(index, 1);
              }
            }
          }
        });

        console.log("Initial Path Delete Array:", initialArray.ID);
      } catch (error) {
        sap.m.MessageToast.show("Error updating delete array: " + error.message);
        console.error("Error in onDeleteDynamicFieldArray:", error);
      }
    },
    onDynamicLabelUpdate: function (oEvent) {
      try {
      let oInput = oEvent.getSource();
      let sNewValue = oInput.getValue();
      let oBindingContext = oInput.getBindingContext("dynamicModel");
      let oModel = oBindingContext.getModel();
      let sUniqueId = oModel.getProperty(oBindingContext.getPath() + "/unique");
      let sPath = "/customer";

      this.handleEdit(sPath, sUniqueId, {
        label: sNewValue
      });
      } catch (oError) {
          sap.m.MessageToast.show("An error occurred while updating the dynamic label: " + oError.message);
      }
    },


  });
});