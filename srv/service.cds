using { capQueryManagement as CQM } from '../db/schema';
using GMSBUSINESS_PARTNER_CUSTOMER_SRV from './external/GMSBUSINESS_PARTNER_CUSTOMER_SRV';
using { GMS_CONFIG } from './external/GMS_CONFIG'; 

service ExternalService {
    entity pathAndFuelMapping as projection on GMS_CONFIG.pathAndFuelMapping; 
    entity ServiceProfileMaster as projection on GMS_CONFIG.ServiceProfileMaster; 
    entity  DocumentNoProfileMapping as projection on GMS_CONFIG.DocumentNoProfileMapping;
    entity HeaderItem_Config as projection on GMS_CONFIG.HeaderItem_Config;
    
    
     }

service capqueryservice {

    entity pathAndFuelMapping as projection on GMS_CONFIG.pathAndFuelMapping; 
    entity ServiceProfileMaster as projection on GMS_CONFIG.ServiceProfileMaster; 
    entity  DocumentNoProfileMapping as projection on GMS_CONFIG.DocumentNoProfileMapping;
    entity HeaderItem_Config as projection on GMS_CONFIG.HeaderItem_Config;
    
    entity serviceParametersItems as projection on CQM.serviceParametersItems;
    entity customerRegistrationFields as projection on CQM.customerRegistrationFields;
    entity customer as projection on CQM.Customer;
    
    entity A_BusinessPartner        as
        projection on GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_BusinessPartner {
            key BusinessPartner,
                Customer,
                Supplier,
                AcademicTitle,
                AuthorizationGroup,
                BusinessPartnerCategory,
                BusinessPartnerFullName,
                BusinessPartnerGrouping,
                BusinessPartnerName,
                BusinessPartnerUUID,
                CorrespondenceLanguage,
                CreatedByUser,
                CreationDate,
                CreationTime,
                FirstName,
                FormOfAddress,
                Industry,
                InternationalLocationNumber1,
                InternationalLocationNumber2,
                IsFemale,
                IsMale,
                IsNaturalPerson,
                IsSexUnknown,
                Language,
                LastChangeDate,
                LastChangeTime,
                LastChangedByUser,
                LastName,
                LegalForm,
                OrganizationBPName1,
                OrganizationBPName2,
                OrganizationBPName3,
                OrganizationBPName4,
                OrganizationFoundationDate,
                OrganizationLiquidationDate,
                SearchTerm1,
                AdditionalLastName,
                BirthDate,
                BusinessPartnerIsBlocked,
                BusinessPartnerType,
                ETag,
                GroupBusinessPartnerName1,
                GroupBusinessPartnerName2,
                IndependentAddressID,
                InternationalLocationNumber3,
                MiddleName,
                NameCountry,
                NameFormat,
                PersonFullName,
                PersonNumber,
                IsMarkedForArchiving,
                BusinessPartnerIDByExtSystem,
                TradingPartner,
                to_BusinessPartnerAddress,
                to_BuPaIndustry,
                to_BusinessPartnerRole,
                to_Customer
        };

    
    entity A_BuPaIndustry           as
        projection on GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_BuPaIndustry {
            key IndustrySector,
            key IndustrySystemType,
            key BusinessPartner,
                IsStandardIndustry
        };

    
    entity A_BusinessPartnerAddress as
        projection on GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_BusinessPartnerAddress {
            key BusinessPartner,
            key AddressID,
                ValidityStartDate,
                ValidityEndDate,
                AuthorizationGroup,
                AddressUUID,
                AdditionalStreetPrefixName,
                AdditionalStreetSuffixName,
                AddressTimeZone,
                CareOfName,
                CityCode,
                CityName,
                CompanyPostalCode,
                Country,
                County,
                DeliveryServiceNumber,
                DeliveryServiceTypeCode,
                District,
                FormOfAddress,
                FullName,
                HomeCityName,
                HouseNumber,
                HouseNumberSupplementText,
                Language,
                POBox,
                POBoxDeviatingCityName,
                POBoxDeviatingCountry,
                POBoxDeviatingRegion,
                POBoxIsWithoutNumber,
                POBoxLobbyName,
                POBoxPostalCode,
                Person,
                PostalCode,
                PrfrdCommMediumType,
                Region,
                StreetName,
                StreetPrefixName,
                StreetSuffixName,
                TaxJurisdiction,
                TransportZone,
                AddressIDByExternalSystem,
                to_AddressUsage
        };

    
    entity A_BuPaAddressUsage       as
        projection on GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_BuPaAddressUsage {
            key BusinessPartner,
            key ValidityEndDate,
            key AddressUsage,
            key AddressID,
                ValidityStartDate,
                StandardUsage,
                AuthorizationGroup
        };

    
    entity A_Customer               as
        projection on GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_Customer {
            key Customer,
                AuthorizationGroup,
                BillingIsBlockedForCustomer,
                CreatedByUser,
                CreationDate,
                CustomerAccountGroup,
                CustomerClassification,
                CustomerFullName,
                CustomerName,
                DeliveryIsBlocked,
                NFPartnerIsNaturalPerson,
                OrderIsBlockedForCustomer,
                PostingIsBlocked,
                Supplier,
                CustomerCorporateGroup,
                FiscalAddress,
                Industry,
                IndustryCode1,
                IndustryCode2,
                IndustryCode3,
                IndustryCode4,
                IndustryCode5,
                InternationalLocationNumber1,
                NielsenRegion,
                ResponsibleType,
                TaxNumber1,
                TaxNumber2,
                TaxNumber3,
                TaxNumber4,
                TaxNumber5,
                TaxNumberType,
                VATRegistration,
                DeletionIndicator,
                to_CustomerCompany
        };


    entity A_CustomerCompany        as
        projection on GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_CustomerCompany {
            key Customer,
            key CompanyCode,
                APARToleranceGroup,
                AccountByCustomer,
                AccountingClerk,
                AccountingClerkFaxNumber,
                AccountingClerkInternetAddress,
                AccountingClerkPhoneNumber,
                AlternativePayerAccount,
                AuthorizationGroup,
                CollectiveInvoiceVariant,
                CustomerAccountNote,
                CustomerHeadOffice,
                CustomerSupplierClearingIsUsed,
                HouseBank,
                InterestCalculationCode,
                InterestCalculationDate,
                IntrstCalcFrequencyInMonths,
                IsToBeLocallyProcessed,
                ItemIsToBePaidSeparately,
                LayoutSortingRule,
                PaymentBlockingReason,
                PaymentMethodsList,
                PaymentTerms,
                PaytAdviceIsSentbyEDI,
                PhysicalInventoryBlockInd,
                ReconciliationAccount,
                RecordPaymentHistoryIndicator,
                UserAtCustomer,
                DeletionIndicator,
                CustomerAccountGroup
        };

    
    entity A_CustomerSalesArea      as
        projection on GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_CustomerSalesArea {
            key Customer,
            key SalesOrganization,
            key DistributionChannel,
            key Division,
                AccountByCustomer,
                AuthorizationGroup,
                BillingIsBlockedForCustomer,
                CompleteDeliveryIsDefined,
                Currency,
                CustomerABCClassification,
                CustomerAccountAssignmentGroup,
                CustomerGroup,
                CustomerPaymentTerms,
                CustomerPriceGroup,
                CustomerPricingProcedure,
                DeliveryIsBlockedForCustomer,
                DeliveryPriority,
                IncotermsClassification,
                IncotermsLocation2,
                IncotermsVersion,
                IncotermsLocation1,
                DeletionIndicator,
                IncotermsTransferLocation,
                InvoiceDate,
                ItemOrderProbabilityInPercent,
                OrderCombinationIsAllowed,
                OrderIsBlockedForCustomer,
                PartialDeliveryIsAllowed,
                PriceListType,
                SalesGroup,
                SalesOffice,
                ShippingCondition,
                SupplyingPlant,
                SalesDistrict,
                CustomerAccountGroup
        };

    
    entity A_BusinessPartnerRole    as
        projection on GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_BusinessPartnerRole {
            key BusinessPartner,
            key BusinessPartnerRole,
                ValidFrom,
                ValidTo,
                AuthorizationGroup
        };
}
