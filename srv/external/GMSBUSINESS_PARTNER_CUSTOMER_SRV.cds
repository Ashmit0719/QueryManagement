/* checksum : 3f35d5ea4c0c4c37b369076f71411479 */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.message.scope.supported : 'true'
@sap.supported.formats : 'atom json xlsx'
service GMSBUSINESS_PARTNER_CUSTOMER_SRV {};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Address Email Address'
entity GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_AddressEmailAddress {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address Number'
  key AddressID : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Person number'
  key Person : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Sequence Number'
  key OrdinalNumber : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Standard addr.'
  @sap.quickinfo : 'Flag: this address is the default address'
  IsDefaultEmailAddress : Boolean;
  @sap.label : 'E-Mail Address'
  EmailAddress : String(241);
  @sap.display.format : 'UpperCase'
  @sap.label : 'E-Mail Address'
  @sap.quickinfo : 'E-Mail Address Search Field'
  SearchEmailAddress : String(20);
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Address Fax Number'
entity GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_AddressFaxNumber {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address Number'
  key AddressID : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Person number'
  key Person : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Sequence Number'
  key OrdinalNumber : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Standard No.'
  @sap.quickinfo : 'Standard Sender Address in this Communication Type'
  IsDefaultFaxNumber : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Country'
  @sap.quickinfo : 'Country for telephone/fax number'
  FaxCountry : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fax'
  @sap.quickinfo : 'Fax number: dialling code+number'
  FaxNumber : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Extension'
  @sap.quickinfo : 'Fax no.: Extension'
  FaxNumberExtension : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fax number'
  @sap.quickinfo : 'Complete number: dialling code+number+extension'
  InternationalFaxNumber : String(30);
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Address Home Page URL'
entity GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_AddressHomePageURL {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address Number'
  key AddressID : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Person number'
  key Person : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Sequence Number'
  key OrdinalNumber : String(3) not null;
  @sap.display.format : 'Date'
  @sap.label : 'from'
  @sap.quickinfo : 'Valid-from date - in current Release only 00010101 possible'
  key ValidityStartDate : Date not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Standard addr.'
  @sap.quickinfo : 'Flag: this address is the default address'
  key IsDefaultURLAddress : Boolean not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'URI address'
  @sap.quickinfo : 'URI address search field'
  SearchURLAddress : String(50);
  @sap.label : 'URI length'
  @sap.quickinfo : 'URI field length'
  URLFieldLength : Integer;
  @sap.label : 'URI'
  @sap.quickinfo : 'Universal Resource Identifier (URI)'
  WebsiteURL : String(2048);
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Address Phone Number'
entity GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_AddressPhoneNumber {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address Number'
  key AddressID : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Person number'
  key Person : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Sequence Number'
  key OrdinalNumber : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Country'
  @sap.quickinfo : 'Country for telephone/fax number'
  DestinationLocationCountry : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Standard No.'
  @sap.quickinfo : 'Standard Sender Address in this Communication Type'
  IsDefaultPhoneNumber : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Telephone'
  @sap.quickinfo : 'Telephone no.: dialling code+number'
  PhoneNumber : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Extension'
  @sap.quickinfo : 'Telephone no.: Extension'
  PhoneNumberExtension : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Telephone number'
  @sap.quickinfo : 'Complete number: dialling code+number+extension'
  InternationalPhoneNumber : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Mobile phone'
  @sap.quickinfo : 'Indicator: Telephone is a Mobile Telephone'
  PhoneNumberType : String(1);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Business Partner Contact Address'
entity GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_BPContactToAddress {
  @sap.display.format : 'UpperCase'
  @sap.label : 'BP Relationship No.'
  @sap.quickinfo : 'BP Relationship Number'
  key RelationshipNumber : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Partner'
  @sap.quickinfo : 'Business Partner Number'
  key BusinessPartnerCompany : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Partner'
  @sap.quickinfo : 'Business Partner Number'
  key BusinessPartnerPerson : String(10) not null;
  @sap.display.format : 'Date'
  @sap.label : 'Valid To'
  @sap.quickinfo : 'Validity Date (Valid To)'
  key ValidityEndDate : Date not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address Number'
  key AddressID : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address Number'
  AddressNumber : String(10);
  @sap.label : 'Street 3'
  AdditionalStreetPrefixName : String(40);
  @sap.label : 'Street 5'
  AdditionalStreetSuffixName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Time zone'
  @sap.quickinfo : 'Address time zone'
  AddressTimeZone : String(6);
  @sap.label : 'c/o'
  @sap.quickinfo : 'c/o name'
  CareOfName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'City Code'
  @sap.quickinfo : 'City code for city/street file'
  CityCode : String(12);
  @sap.label : 'City'
  CityName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Postal Code'
  @sap.quickinfo : 'Company Postal Code (for Large Customers)'
  CompanyPostalCode : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Country Key'
  Country : String(3);
  @sap.label : 'County'
  County : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Delivery Service No.'
  @sap.quickinfo : 'Number of Delivery Service'
  DeliveryServiceNumber : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Delvry Serv Type'
  @sap.quickinfo : 'Type of Delivery Service'
  DeliveryServiceTypeCode : String(4);
  @sap.label : 'District'
  District : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Title'
  @sap.quickinfo : 'Form-of-Address Key'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  FormOfAddress : String(4);
  @sap.label : 'Full Name'
  @sap.quickinfo : 'Full name of a party (Bus. Partner, Org. Unit, Doc. address)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  FullName : String(80);
  @sap.label : 'Different City'
  @sap.quickinfo : 'City (different from postal city)'
  HomeCityName : String(40);
  @sap.label : 'House Number'
  HouseNumber : String(10);
  @sap.label : 'Supplement'
  @sap.quickinfo : 'House number supplement'
  HouseNumberSupplementText : String(10);
  @sap.label : 'Language Key'
  Language : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'PO Box'
  POBox : String(10);
  @sap.label : 'PO Box City'
  @sap.quickinfo : 'PO Box city'
  POBoxDeviatingCityName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'PO box country'
  POBoxDeviatingCountry : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'PO Box Region'
  @sap.quickinfo : 'Region for PO Box (Country, State, Province, ...)'
  POBoxDeviatingRegion : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'PO Box w/o No.'
  @sap.quickinfo : 'Flag: PO Box Without Number'
  POBoxIsWithoutNumber : Boolean;
  @sap.label : 'PO Box Lobby'
  POBoxLobbyName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'PO Box Postal Code'
  POBoxPostalCode : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Person number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Person : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Postal Code'
  @sap.quickinfo : 'City postal code'
  PostalCode : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Comm. Method'
  @sap.quickinfo : 'Communication Method (Key) (Business Address Services)'
  PrfrdCommMediumType : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Region'
  @sap.quickinfo : 'Region (State, Province, County)'
  Region : String(3);
  @sap.label : 'Street'
  StreetName : String(60);
  @sap.label : 'Street 2'
  StreetPrefixName : String(40);
  @sap.label : 'Street 4'
  StreetSuffixName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Jurisdiction'
  TaxJurisdiction : String(15);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transportation Zone'
  @sap.quickinfo : 'Transportation zone to or from which the goods are delivered'
  TransportZone : String(10);
  to_EmailAddress : Association to many GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_AddressEmailAddress {  };
  to_FaxNumber : Association to many GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_AddressFaxNumber {  };
  to_MobilePhoneNumber : Association to many GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_AddressPhoneNumber {  };
  to_PhoneNumber : Association to many GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_AddressPhoneNumber {  };
  to_URLAddress : Association to many GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_AddressHomePageURL {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Business Partner Contact Function and Department'
entity GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_BPContactToFuncAndDept {
  @sap.display.format : 'UpperCase'
  @sap.label : 'BP Relationship No.'
  @sap.quickinfo : 'BP Relationship Number'
  key RelationshipNumber : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Partner'
  @sap.quickinfo : 'Business Partner Number'
  key BusinessPartnerCompany : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Partner'
  @sap.quickinfo : 'Business Partner Number'
  key BusinessPartnerPerson : String(10) not null;
  @sap.display.format : 'Date'
  @sap.label : 'Valid To'
  @sap.quickinfo : 'Validity Date (Valid To)'
  key ValidityEndDate : Date not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Function'
  @sap.quickinfo : 'Function of partner'
  ContactPersonFunction : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Department'
  ContactPersonDepartment : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Telephone'
  @sap.quickinfo : 'Telephone no.: dialling code+number'
  PhoneNumber : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Extension'
  @sap.quickinfo : 'Telephone no.: Extension'
  PhoneNumberExtension : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fax'
  @sap.quickinfo : 'Fax number: dialling code+number'
  FaxNumber : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Extension'
  @sap.quickinfo : 'Fax no.: Extension'
  FaxNumberExtension : String(10);
  @sap.label : 'E-Mail Address'
  EmailAddress : String(241);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Relationship Cat.'
  @sap.quickinfo : 'Business Partner Relationship Category'
  RelationshipCategory : String(6);
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Business Partner Address Usage'
entity GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_BuPaAddressUsage {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Partner'
  @sap.quickinfo : 'Business Partner Number'
  key BusinessPartner : String(10) not null;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Valid To'
  @sap.quickinfo : 'Validity End of a Business Partner Address Usage'
  key ValidityEndDate : DateTime not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address Type'
  key AddressUsage : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address Number'
  key AddressID : String(10) not null;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Valid From'
  @sap.quickinfo : 'Validity Start of a Business Partner Address Usage'
  ValidityStartDate : DateTime;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Standard Usage'
  @sap.quickinfo : 'Indicator: Standard Address Usage'
  StandardUsage : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization Group'
  AuthorizationGroup : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Business Partner Identification'
entity GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_BuPaIdentification {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Partner'
  @sap.quickinfo : 'Business Partner Number'
  key BusinessPartner : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Identification Type'
  key BPIdentificationType : String(6) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'ID number'
  @sap.quickinfo : 'Identification Number'
  key BPIdentificationNumber : String(60) not null;
  @sap.label : 'Responsible Institn'
  @sap.quickinfo : 'Responsible Institution for ID Number'
  BPIdnNmbrIssuingInstitute : String(40);
  @sap.display.format : 'Date'
  @sap.label : 'Entry date'
  @sap.quickinfo : 'Date of Entry for ID Number'
  BPIdentificationEntryDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Country'
  @sap.quickinfo : 'Country in Which ID Number is Valid or Was Assigned'
  Country : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Region'
  @sap.quickinfo : 'Region (State, Province, County)'
  Region : String(3);
  @sap.display.format : 'Date'
  @sap.label : 'Valid from'
  @sap.quickinfo : 'Validity Start for ID Number'
  ValidityStartDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Valid To'
  @sap.quickinfo : 'Validity End for ID Number'
  ValidityEndDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization Group'
  AuthorizationGroup : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Business Partner Industry'
entity GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_BuPaIndustry {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Industry'
  key IndustrySector : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Industry System'
  key IndustrySystemType : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Partner'
  @sap.quickinfo : 'Business Partner Number'
  key BusinessPartner : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Standard Industry'
  @sap.quickinfo : 'Industry is Standard for BP in Industry System'
  IsStandardIndustry : String(1);
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Business Partner'
entity GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_BusinessPartner {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Partner'
  @sap.quickinfo : 'Business Partner Number'
  key BusinessPartner : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer'
  @sap.quickinfo : 'Customer Number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Customer : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Vendor'
  @sap.quickinfo : 'Account Number of Vendor or Creditor'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Supplier : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Academic Title 1'
  @sap.quickinfo : 'Academic Title: Key'
  AcademicTitle : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization Group'
  AuthorizationGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'BP Category'
  @sap.quickinfo : 'Business Partner Category'
  BusinessPartnerCategory : String(1);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BusinessPartnerFullName : String(81);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grouping'
  @sap.quickinfo : 'Business Partner Grouping'
  BusinessPartnerGrouping : String(4);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BusinessPartnerName : String(81);
  @sap.label : 'BP GUID'
  @sap.quickinfo : 'Business Partner GUID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BusinessPartnerUUID : UUID;
  @sap.label : 'Correspondence lang.'
  @sap.quickinfo : 'Business Partner: Correspondence Language'
  CorrespondenceLanguage : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Created by'
  @sap.quickinfo : 'User who created the object'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreatedByUser : String(12);
  @sap.display.format : 'Date'
  @sap.label : 'Created on'
  @sap.quickinfo : 'Date on which the object was created'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreationDate : Date;
  @sap.label : 'Created at'
  @sap.quickinfo : 'Time at which the object was created'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreationTime : Time;
  @sap.label : 'First name'
  @sap.quickinfo : 'First name of business partner (person)'
  FirstName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Title'
  @sap.quickinfo : 'Form-of-Address Key'
  FormOfAddress : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Industry sector'
  Industry : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Int. location no. 1'
  @sap.quickinfo : 'International location number (part 1)'
  InternationalLocationNumber1 : String(7);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Int. location no. 2'
  @sap.quickinfo : 'International location number (Part 2)'
  InternationalLocationNumber2 : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Female'
  @sap.quickinfo : 'Selection: Business partner is female'
  IsFemale : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Male'
  @sap.quickinfo : 'Selection: Business partner is male'
  IsMale : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Natural Person'
  @sap.quickinfo : 'Business Partner Is a Natural Person Under the Tax Laws'
  IsNaturalPerson : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Unknown'
  @sap.quickinfo : 'Selection: Sex of business partner is not known'
  IsSexUnknown : Boolean;
  @sap.label : 'Language'
  @sap.quickinfo : 'Business partner: Language'
  Language : String(2);
  @sap.display.format : 'Date'
  @sap.label : 'Changed on'
  @sap.quickinfo : 'Date when object was last changed'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  LastChangeDate : Date;
  @sap.label : 'Changed at'
  @sap.quickinfo : 'Time at which object was last changed'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  LastChangeTime : Time;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Changed by'
  @sap.quickinfo : 'Last user to change object'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  LastChangedByUser : String(12);
  @sap.label : 'Last name'
  @sap.quickinfo : 'Last name of business partner (person)'
  LastName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Legal form'
  @sap.quickinfo : 'BP: Legal form of organization'
  LegalForm : String(2);
  @sap.label : 'Name 1'
  @sap.quickinfo : 'Name 1 of organization'
  OrganizationBPName1 : String(40);
  @sap.label : 'Name 2'
  @sap.quickinfo : 'Name 2 of organization'
  OrganizationBPName2 : String(40);
  @sap.label : 'Name 3'
  @sap.quickinfo : 'Name 3 of organization'
  OrganizationBPName3 : String(40);
  @sap.label : 'Name 4'
  @sap.quickinfo : 'Name 4 of organization'
  OrganizationBPName4 : String(40);
  @sap.display.format : 'Date'
  @sap.label : 'Date founded'
  @sap.quickinfo : 'Date organization founded'
  OrganizationFoundationDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Liquidation date'
  @sap.quickinfo : 'Liquidation date of organization'
  OrganizationLiquidationDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Search term 1'
  @sap.quickinfo : 'Search term 1 for business partner'
  SearchTerm1 : String(20);
  @sap.label : 'Other Last Name'
  @sap.quickinfo : 'Other Last Name of a Person'
  AdditionalLastName : String(40);
  @sap.display.format : 'Date'
  @sap.label : 'Date of Birth'
  @sap.quickinfo : 'Date of Birth of Business Partner'
  BirthDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Central Block'
  @sap.quickinfo : 'Central Block for Business Partner'
  BusinessPartnerIsBlocked : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'BP Type'
  @sap.quickinfo : 'Business Partner Type'
  BusinessPartnerType : String(4);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ETag : String(26);
  @sap.label : 'Name 1'
  @sap.quickinfo : 'Name 1 (group)'
  GroupBusinessPartnerName1 : String(40);
  @sap.label : 'Name 2'
  @sap.quickinfo : 'Name 2 (group)'
  GroupBusinessPartnerName2 : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address Number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  IndependentAddressID : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Check digit'
  @sap.quickinfo : 'Check digit for the international location number'
  InternationalLocationNumber3 : String(1);
  @sap.label : 'Middle Name'
  @sap.quickinfo : 'Middle name or second forename of a person'
  MiddleName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Country for format'
  @sap.quickinfo : 'Country for Name Format Rule'
  NameCountry : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Name Format'
  @sap.quickinfo : 'Name format'
  NameFormat : String(2);
  @sap.label : 'Full Name'
  PersonFullName : String(80);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Person number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PersonNumber : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Archiving Flag'
  @sap.quickinfo : 'Central Archiving Flag'
  IsMarkedForArchiving : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'External BP Number'
  @sap.quickinfo : 'Business Partner Number in External System'
  BusinessPartnerIDByExtSystem : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Trading Partner No.'
  @sap.quickinfo : 'Company ID of Trading Partner'
  TradingPartner : String(6);
  to_BuPaIdentification : Association to many GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_BuPaIdentification {  };
  to_BuPaIndustry : Association to many GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_BuPaIndustry {  };
  to_BusinessPartnerAddress : Association to many GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_BusinessPartnerAddress {  };
  to_BusinessPartnerBank : Association to many GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_BusinessPartnerBank {  };
  to_BusinessPartnerContact : Association to many GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_BusinessPartnerContact {  };
  to_BusinessPartnerRole : Association to many GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_BusinessPartnerRole {  };
  to_BusinessPartnerTax : Association to many GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_BusinessPartnerTaxNumber {  };
  to_Customer : Association to GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_Customer {  };
  to_Supplier : Association to GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_Supplier {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Business Partner Address'
entity GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_BusinessPartnerAddress {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Partner'
  @sap.quickinfo : 'Business Partner Number'
  key BusinessPartner : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address Number'
  key AddressID : String(10) not null;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Valid From'
  @sap.quickinfo : 'Validity Start of a Business Partner Address'
  ValidityStartDate : DateTime;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Valid To'
  @sap.quickinfo : 'Validity End of a Business Partner Address'
  ValidityEndDate : DateTime;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization Group'
  AuthorizationGroup : String(4);
  @sap.label : ''
  @sap.quickinfo : 'GUID of a Business Partner Address'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  AddressUUID : UUID;
  @sap.label : 'Street 3'
  AdditionalStreetPrefixName : String(40);
  @sap.label : 'Street 5'
  AdditionalStreetSuffixName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Time zone'
  @sap.quickinfo : 'Address time zone'
  AddressTimeZone : String(6);
  @sap.label : 'c/o'
  @sap.quickinfo : 'c/o name'
  CareOfName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'City Code'
  @sap.quickinfo : 'City code for city/street file'
  CityCode : String(12);
  @sap.label : 'City'
  CityName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Postal Code'
  @sap.quickinfo : 'Company Postal Code (for Large Customers)'
  CompanyPostalCode : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Country Key'
  Country : String(3);
  @sap.label : 'County'
  County : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Delivery Service No.'
  @sap.quickinfo : 'Number of Delivery Service'
  DeliveryServiceNumber : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Delvry Serv Type'
  @sap.quickinfo : 'Type of Delivery Service'
  DeliveryServiceTypeCode : String(4);
  @sap.label : 'District'
  District : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Title'
  @sap.quickinfo : 'Form-of-Address Key'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  FormOfAddress : String(4);
  @sap.label : 'Full Name'
  @sap.quickinfo : 'Full name of a party (Bus. Partner, Org. Unit, Doc. address)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  FullName : String(80);
  @sap.label : 'Different City'
  @sap.quickinfo : 'City (different from postal city)'
  HomeCityName : String(40);
  @sap.label : 'House Number'
  HouseNumber : String(10);
  @sap.label : 'Supplement'
  @sap.quickinfo : 'House number supplement'
  HouseNumberSupplementText : String(10);
  @sap.label : 'Language Key'
  Language : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'PO Box'
  POBox : String(10);
  @sap.label : 'PO Box City'
  @sap.quickinfo : 'PO Box city'
  POBoxDeviatingCityName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'PO box country'
  POBoxDeviatingCountry : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'PO Box Region'
  @sap.quickinfo : 'Region for PO Box (Country, State, Province, ...)'
  POBoxDeviatingRegion : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'PO Box w/o No.'
  @sap.quickinfo : 'Flag: PO Box Without Number'
  POBoxIsWithoutNumber : Boolean;
  @sap.label : 'PO Box Lobby'
  POBoxLobbyName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'PO Box Postal Code'
  POBoxPostalCode : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Person number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Person : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Postal Code'
  @sap.quickinfo : 'City postal code'
  PostalCode : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Comm. Method'
  @sap.quickinfo : 'Communication Method (Key) (Business Address Services)'
  PrfrdCommMediumType : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Region'
  @sap.quickinfo : 'Region (State, Province, County)'
  Region : String(3);
  @sap.label : 'Street'
  StreetName : String(60);
  @sap.label : 'Street 2'
  StreetPrefixName : String(40);
  @sap.label : 'Street 4'
  StreetSuffixName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Jurisdiction'
  TaxJurisdiction : String(15);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transportation Zone'
  @sap.quickinfo : 'Transportation zone to or from which the goods are delivered'
  TransportZone : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'External Address No.'
  @sap.quickinfo : 'Address number in external system'
  AddressIDByExternalSystem : String(20);
  to_AddressUsage : Association to many GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_BuPaAddressUsage {  };
  to_EmailAddress : Association to many GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_AddressEmailAddress {  };
  to_FaxNumber : Association to many GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_AddressFaxNumber {  };
  to_MobilePhoneNumber : Association to many GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_AddressPhoneNumber {  };
  to_PhoneNumber : Association to many GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_AddressPhoneNumber {  };
  to_URLAddress : Association to many GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_AddressHomePageURL {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Business Partner Bank'
entity GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_BusinessPartnerBank {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Partner'
  @sap.quickinfo : 'Business Partner Number'
  key BusinessPartner : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bank details ID'
  key BankIdentification : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bank Country'
  @sap.quickinfo : 'Bank Country Key'
  BankCountryKey : String(3);
  @sap.label : 'Bank name'
  @sap.quickinfo : 'Name of bank'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BankName : String(60);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bank Key'
  BankNumber : String(15);
  @sap.display.format : 'UpperCase'
  @sap.label : 'SWIFT/BIC'
  @sap.quickinfo : 'SWIFT/BIC for International Payments'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SWIFTCode : String(11);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bank Control Key'
  BankControlKey : String(2);
  @sap.label : 'Account Holder'
  @sap.quickinfo : 'Account Holder Name'
  BankAccountHolderName : String(60);
  @sap.label : 'Account Name'
  @sap.quickinfo : 'Name of Bank Account'
  BankAccountName : String(40);
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Valid From'
  @sap.quickinfo : 'Validity Start of Business Partner Bank Details'
  ValidityStartDate : DateTime;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Valid To'
  @sap.quickinfo : 'Validity End of Business Partner Bank Details'
  ValidityEndDate : DateTime;
  @sap.display.format : 'UpperCase'
  @sap.label : 'IBAN'
  @sap.quickinfo : 'IBAN (International Bank Account Number)'
  IBAN : String(34);
  @sap.display.format : 'Date'
  @sap.label : 'IBAN valid from'
  @sap.quickinfo : 'Validity start of IBAN'
  IBANValidityStartDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bank acct'
  @sap.quickinfo : 'Bank Account Number'
  BankAccount : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reference Details'
  @sap.quickinfo : 'Reference Details for Bank Details'
  BankAccountReferenceText : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Collect.author.'
  @sap.quickinfo : 'Indicator: Collection Authorization'
  CollectionAuthInd : Boolean;
  @sap.label : 'City'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CityName : String(35);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization Group'
  AuthorizationGroup : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Business Partner Contact'
entity GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_BusinessPartnerContact {
  @sap.display.format : 'UpperCase'
  @sap.label : 'BP Relationship No.'
  @sap.quickinfo : 'BP Relationship Number'
  key RelationshipNumber : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Partner'
  @sap.quickinfo : 'Business Partner Number'
  key BusinessPartnerCompany : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Partner'
  @sap.quickinfo : 'Business Partner Number'
  key BusinessPartnerPerson : String(10) not null;
  @sap.display.format : 'Date'
  @sap.label : 'Valid To'
  @sap.quickinfo : 'Validity Date (Valid To)'
  key ValidityEndDate : Date not null;
  @sap.display.format : 'Date'
  @sap.label : 'Valid From'
  @sap.quickinfo : 'Validity Date (Valid From)'
  ValidityStartDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Standard'
  @sap.quickinfo : 'Standard Relationship'
  IsStandardRelationship : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Relationship Cat.'
  @sap.quickinfo : 'Business Partner Relationship Category'
  RelationshipCategory : String(6);
  to_ContactAddress : Association to many GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_BPContactToAddress {  };
  to_ContactRelationship : Association to GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_BPContactToFuncAndDept {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Business Partner Role'
entity GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_BusinessPartnerRole {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Partner'
  @sap.quickinfo : 'Business Partner Number'
  key BusinessPartner : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'BP Role'
  key BusinessPartnerRole : String(6) not null;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Valid From'
  @sap.quickinfo : 'Validity Start of a BP Role'
  ValidFrom : DateTime;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Valid To'
  @sap.quickinfo : 'Validity End of a BP Role'
  ValidTo : DateTime;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization Group'
  AuthorizationGroup : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Business Partner Tax Number'
entity GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_BusinessPartnerTaxNumber {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Partner'
  @sap.quickinfo : 'Business Partner Number'
  key BusinessPartner : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Number Category'
  key BPTaxType : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax number'
  @sap.quickinfo : 'Business Partner Tax Number'
  BPTaxNumber : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Number'
  @sap.quickinfo : 'Business Partner Tax Number'
  BPTaxLongNumber : String(60);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization Group'
  AuthorizationGroup : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Customer'
entity GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_Customer {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer'
  @sap.quickinfo : 'Customer Number'
  key Customer : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization'
  @sap.quickinfo : 'Authorization Group'
  AuthorizationGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Billing block'
  @sap.quickinfo : 'Central billing block for customer'
  BillingIsBlockedForCustomer : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Created by'
  @sap.quickinfo : 'Name of Person who Created the Object'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreatedByUser : String(12);
  @sap.display.format : 'Date'
  @sap.label : 'Created on'
  @sap.quickinfo : 'Date on which the Record Was Created'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreationDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Account group'
  @sap.quickinfo : 'Customer Account Group'
  CustomerAccountGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer classific.'
  @sap.quickinfo : 'Customer classification'
  CustomerClassification : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer Name'
  @sap.quickinfo : 'Customer Full Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CustomerFullName : String(220);
  @sap.label : 'Name of Customer'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CustomerName : String(80);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Delivery block'
  @sap.quickinfo : 'Central delivery block for the customer'
  DeliveryIsBlocked : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Natural Person'
  NFPartnerIsNaturalPerson : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Order block'
  @sap.quickinfo : 'Central order block for customer'
  OrderIsBlockedForCustomer : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Posting Block'
  @sap.quickinfo : 'Central posting block'
  PostingIsBlocked : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Vendor'
  @sap.quickinfo : 'Account Number of Vendor or Creditor'
  Supplier : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Group key'
  CustomerCorporateGroup : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fiscal address'
  @sap.quickinfo : 'Account number of the master record with the fiscal address'
  FiscalAddress : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Industry'
  @sap.quickinfo : 'Industry key'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Industry : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Industry code 1'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  IndustryCode1 : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Industry code 2'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  IndustryCode2 : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Industry code 3'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  IndustryCode3 : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Industry code 4'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  IndustryCode4 : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Industry code 5'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  IndustryCode5 : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Int. location no. 1'
  @sap.quickinfo : 'International location number (part 1)'
  InternationalLocationNumber1 : String(7);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nielsen indicator'
  @sap.quickinfo : 'Nielsen ID'
  NielsenRegion : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax type'
  ResponsibleType : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Number 1'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TaxNumber1 : String(16);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Number 2'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TaxNumber2 : String(11);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Number 3'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TaxNumber3 : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Number 4'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TaxNumber4 : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Number 5'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TaxNumber5 : String(60);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax number type'
  @sap.quickinfo : 'Tax Number Type'
  TaxNumberType : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'VAT Registration No.'
  @sap.quickinfo : 'VAT Registration Number'
  VATRegistration : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Deletion flag'
  @sap.quickinfo : 'Central Deletion Flag for Master Record'
  DeletionIndicator : Boolean;
  to_CustomerCompany : Association to many GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_CustomerCompany {  };
  to_CustomerSalesArea : Association to many GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_CustomerSalesArea {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Customer Company'
entity GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_CustomerCompany {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer'
  @sap.quickinfo : 'Customer Number'
  key Customer : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  key CompanyCode : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tolerance Group'
  @sap.quickinfo : 'Tolerance Group for Business Partner/G/L Account'
  APARToleranceGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Account at customer'
  @sap.quickinfo : 'Our account number at customer'
  AccountByCustomer : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Clerk Abbrev.'
  @sap.quickinfo : 'Accounting Clerk Abbreviation'
  AccountingClerk : String(2);
  @sap.label : 'Acctg clerk''s fax'
  @sap.quickinfo : 'Accounting clerk''s fax number at the customer/vendor'
  AccountingClerkFaxNumber : String(31);
  @sap.label : 'Clrk''s internet add.'
  @sap.quickinfo : 'Internet address of partner company clerk'
  AccountingClerkInternetAddress : String(130);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Acct.clerks tel.no.'
  @sap.quickinfo : 'Accounting clerk''s telephone number at business partner'
  AccountingClerkPhoneNumber : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Alternative payer'
  @sap.quickinfo : 'Account number of an alternative payer'
  AlternativePayerAccount : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization'
  @sap.quickinfo : 'Authorization Group'
  AuthorizationGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Coll.Invoice Variant'
  @sap.quickinfo : 'Collective Invoice Variant'
  CollectiveInvoiceVariant : String(1);
  @sap.label : 'Account Memo'
  @sap.quickinfo : 'Memo'
  CustomerAccountNote : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Head office'
  @sap.quickinfo : 'Head office account number (in branch accounts)'
  CustomerHeadOffice : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Clearing with vendor'
  @sap.quickinfo : 'Indicator: Clearing between customer and vendor ?'
  CustomerSupplierClearingIsUsed : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'House bank'
  @sap.quickinfo : 'Short key for a house bank'
  HouseBank : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Interest indicator'
  @sap.quickinfo : 'Interest calculation indicator'
  InterestCalculationCode : String(2);
  @sap.display.format : 'Date'
  @sap.label : 'Last Key Date'
  @sap.quickinfo : 'Key Date of Last Interest Calculation'
  InterestCalculationDate : Date;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Int.Calc.Freq.'
  @sap.quickinfo : 'Interest Calculation Frequency in Months'
  IntrstCalcFrequencyInMonths : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Local Processing'
  @sap.quickinfo : 'Indicator: Local Processing?'
  IsToBeLocallyProcessed : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Individual Payment'
  @sap.quickinfo : 'Indicator: Pay All Items Separately?'
  ItemIsToBePaidSeparately : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sort key'
  @sap.quickinfo : 'Key for sorting according to assignment numbers'
  LayoutSortingRule : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Payment Block'
  @sap.quickinfo : 'Block Key for Payment'
  PaymentBlockingReason : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Payment Methods'
  @sap.quickinfo : 'List of Respected Payment Methods'
  PaymentMethodsList : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Payment terms'
  @sap.quickinfo : 'Terms of payment key'
  PaymentTerms : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Pmnt advice by EDI'
  @sap.quickinfo : 'Indicator: Send Payment Advices by EDI'
  PaytAdviceIsSentbyEDI : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Co.code post.block'
  @sap.quickinfo : 'Posting block for company code'
  PhysicalInventoryBlockInd : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reconciliation acct'
  @sap.quickinfo : 'Reconciliation Account in General Ledger'
  ReconciliationAccount : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Record pmnt history'
  @sap.quickinfo : 'Indicator: Record Payment History ?'
  RecordPaymentHistoryIndicator : Boolean;
  @sap.label : 'User at customer'
  UserAtCustomer : String(15);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Co.cde deletion flag'
  @sap.quickinfo : 'Deletion Flag for Master Record (Company Code Level)'
  DeletionIndicator : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Account group'
  @sap.quickinfo : 'Customer Account Group'
  CustomerAccountGroup : String(4);
  to_CustomerDunning : Association to many GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_CustomerDunning {  };
  to_WithHoldingTax : Association to many GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_CustomerWithHoldingTax {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Customer Company Dunning'
entity GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_CustomerDunning {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer'
  @sap.quickinfo : 'Customer Number'
  key Customer : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  key CompanyCode : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Dunning Area'
  key DunningArea : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Dunning Block'
  DunningBlock : String(1);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Dunning Level'
  DunningLevel : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Dunning Procedure'
  DunningProcedure : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Dunning Recipient'
  @sap.quickinfo : 'Account Number of the Dunning Recipient'
  DunningRecipient : String(10);
  @sap.display.format : 'Date'
  @sap.label : 'Last Dunned'
  @sap.quickinfo : 'Date of Last Dunning Notice'
  LastDunnedOn : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Legal Dunn.Proc.From'
  @sap.quickinfo : 'Date of the Legal Dunning Proceedings'
  LegDunningProcedureOn : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Dunning Clerk'
  DunningClerk : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization'
  @sap.quickinfo : 'Authorization Group'
  AuthorizationGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Account group'
  @sap.quickinfo : 'Customer Account Group'
  CustomerAccountGroup : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Customer Sales Area'
entity GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_CustomerSalesArea {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer'
  @sap.quickinfo : 'Customer Number'
  key Customer : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Organization'
  key SalesOrganization : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Distribution Channel'
  key DistributionChannel : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Division'
  key Division : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Account at customer'
  @sap.quickinfo : 'Shipper''s (Our) Account Number at the Customer or Vendor'
  AccountByCustomer : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization Group'
  AuthorizationGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'BBlock for SlsA'
  @sap.quickinfo : 'Billing block for customer (sales and distribution)'
  BillingIsBlockedForCustomer : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Complete Delivery'
  @sap.quickinfo : 'Complete Delivery Defined for Each Sales Order?'
  CompleteDeliveryIsDefined : Boolean;
  @sap.label : 'Currency'
  @sap.semantics : 'currency-code'
  Currency : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'ABC classification'
  @sap.quickinfo : 'Customer classification (ABC analysis)'
  CustomerABCClassification : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Acct Assmt Grp Cust.'
  @sap.quickinfo : 'Account Assignment Group for this customer'
  CustomerAccountAssignmentGroup : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer Group'
  CustomerGroup : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Payment terms'
  @sap.quickinfo : 'Terms of payment key'
  CustomerPaymentTerms : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer Price Group'
  CustomerPriceGroup : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cust.Pric.Procedure'
  @sap.quickinfo : 'Customer Classification for Pricing Procedure Determination'
  CustomerPricingProcedure : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'DelBlckSalesAr.'
  @sap.quickinfo : 'Customer delivery block (sales area)'
  DeliveryIsBlockedForCustomer : String(2);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Delivery Priority'
  DeliveryPriority : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Incoterms'
  @sap.quickinfo : 'Incoterms (Part 1)'
  IncotermsClassification : String(3);
  @sap.label : 'Incoterms Location 2'
  IncotermsLocation2 : String(70);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Incoterms Version'
  IncotermsVersion : String(4);
  @sap.label : 'Incoterms Location 1'
  IncotermsLocation1 : String(70);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Del.ID SlsArea'
  @sap.quickinfo : 'Deletion flag for customer (sales level)'
  DeletionIndicator : Boolean;
  @sap.label : 'Incoterms (Part 2)'
  IncotermsTransferLocation : String(28);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Invoicing Dates'
  @sap.quickinfo : 'Invoice Dates (Calendar Identification)'
  InvoiceDate : String(2);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Order Probability'
  @sap.quickinfo : 'Order Probability of the Item'
  ItemOrderProbabilityInPercent : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Order Combination'
  @sap.quickinfo : 'Order Combination Indicator'
  OrderCombinationIsAllowed : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ord.blk:sls ar.'
  @sap.quickinfo : 'Customer order block (sales area)'
  OrderIsBlockedForCustomer : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Part.dlv./item'
  @sap.quickinfo : 'Partial delivery at item level'
  PartialDeliveryIsAllowed : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Price List Type'
  PriceListType : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales group'
  SalesGroup : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales office'
  SalesOffice : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Shipping Conditions'
  ShippingCondition : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Delivering Plant'
  @sap.quickinfo : 'Delivering Plant (Own or External)'
  SupplyingPlant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales District'
  SalesDistrict : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Account group'
  @sap.quickinfo : 'Customer Account Group'
  CustomerAccountGroup : String(4);
  to_PartnerFunction : Association to many GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_CustSalesPartnerFunc {  };
  to_SalesAreaTax : Association to many GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_CustomerSalesAreaTax {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Customer Sales Area Tax'
entity GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_CustomerSalesAreaTax {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer'
  @sap.quickinfo : 'Customer Number'
  key Customer : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Organization'
  key SalesOrganization : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'RefDistCh-Cust/Mat.'
  @sap.quickinfo : 'Reference distrib.channel for cust.and material masters'
  key DistributionChannel : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Division'
  key Division : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Country'
  @sap.quickinfo : 'Departure country (country from which the goods are sent)'
  key DepartureCountry : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Category'
  @sap.quickinfo : 'Tax category (sales tax, federal sales tax,...)'
  key CustomerTaxCategory : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Classification'
  @sap.quickinfo : 'Tax classification for customer'
  CustomerTaxClassification : String(1);
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Customer WithHolding Tax'
entity GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_CustomerWithHoldingTax {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer'
  @sap.quickinfo : 'Customer Number'
  key Customer : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  key CompanyCode : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Withholding Tax Type'
  @sap.quickinfo : 'Indicator for Withholding Tax Type'
  key WithholdingTaxType : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'W/Tax Code'
  @sap.quickinfo : 'Withholding Tax Code'
  WithholdingTaxCode : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'WTax Agent'
  @sap.quickinfo : 'Indicator: Withholding Tax Agent?'
  WithholdingTaxAgent : Boolean;
  @sap.display.format : 'Date'
  @sap.label : 'W/Tax Obligated Frm'
  @sap.quickinfo : 'Obligated to Withhold Tax From'
  ObligationDateBegin : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Oblig.to W/Tax Until'
  @sap.quickinfo : 'Obligated to Withhold Tax Until'
  ObligationDateEnd : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'W/tax number'
  @sap.quickinfo : 'Withholding tax identification number'
  WithholdingTaxNumber : String(16);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Exemption Number'
  @sap.quickinfo : 'Exemption Certificate Number'
  WithholdingTaxCertificate : String(25);
  @sap.label : 'Exemption Rate'
  WithholdingTaxExmptPercent : Decimal(5, 2);
  @sap.display.format : 'Date'
  @sap.label : 'Exemption Start Date'
  @sap.quickinfo : 'Date on Which Exemption Begins'
  ExemptionDateBegin : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Exemption End Date'
  @sap.quickinfo : 'Date on Which Exemption Ends'
  ExemptionDateEnd : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Exemption Reason'
  @sap.quickinfo : 'Reason for Exemption'
  ExemptionReason : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization'
  @sap.quickinfo : 'Authorization Group'
  AuthorizationGroup : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Customer Sales Area Partner Function'
entity GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_CustSalesPartnerFunc {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer'
  @sap.quickinfo : 'Customer Number'
  key Customer : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Organization'
  key SalesOrganization : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Distribution Channel'
  key DistributionChannel : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Division'
  key Division : String(2) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Partner counter'
  key PartnerCounter : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Partner Function'
  key PartnerFunction : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer'
  @sap.quickinfo : 'Customer number of business partner'
  BPCustomerNumber : String(10);
  @sap.label : 'Partner description'
  @sap.quickinfo : 'Customer description of partner (plant, storage location)'
  CustomerPartnerDescription : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Default Partner'
  DefaultPartner : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization'
  @sap.quickinfo : 'Authorization Group'
  AuthorizationGroup : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Supplier'
entity GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_Supplier {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Vendor'
  @sap.quickinfo : 'Account Number of Vendor or Creditor'
  key Supplier : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Alternative Payee'
  @sap.quickinfo : 'Account Number of the Alternative Payee'
  AlternativePayeeAccountNumber : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization'
  @sap.quickinfo : 'Authorization Group'
  AuthorizationGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Created by'
  @sap.quickinfo : 'Name of Person who Created the Object'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreatedByUser : String(12);
  @sap.display.format : 'Date'
  @sap.label : 'Created on'
  @sap.quickinfo : 'Date on which the Record Was Created'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreationDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer'
  @sap.quickinfo : 'Customer Number'
  Customer : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Payment block'
  @sap.quickinfo : 'Payment Block'
  PaymentIsBlockedForSupplier : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Posting Block'
  @sap.quickinfo : 'Central posting block'
  PostingIsBlocked : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purch. block'
  @sap.quickinfo : 'Centrally imposed purchasing block'
  PurchasingIsBlocked : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Account group'
  @sap.quickinfo : 'Vendor account group'
  SupplierAccountGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplier Name'
  @sap.quickinfo : 'Supplier Full Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SupplierFullName : String(220);
  @sap.label : 'Name of Supplier'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SupplierName : String(80);
  @sap.display.format : 'UpperCase'
  @sap.label : 'VAT Registration No.'
  @sap.quickinfo : 'VAT Registration Number'
  VATRegistration : String(20);
  @sap.display.format : 'Date'
  @sap.label : 'Date of Birth'
  @sap.quickinfo : 'Date of Birth of the Person Subject to Withholding Tax'
  BirthDate : Date;
  @sap.label : 'Int. Location No.'
  @sap.quickinfo : 'Cocatenated International Location Number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ConcatenatedInternationalLocNo : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Deletion flag'
  @sap.quickinfo : 'Central Deletion Flag for Master Record'
  DeletionIndicator : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fiscal address'
  @sap.quickinfo : 'Account number of the master record with fiscal address'
  FiscalAddress : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Industry'
  @sap.quickinfo : 'Industry key'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Industry : String(4);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Int. location no. 1'
  @sap.quickinfo : 'International location number (part 1)'
  InternationalLocationNumber1 : String(7);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Int. location no. 2'
  @sap.quickinfo : 'International location number (Part 2)'
  InternationalLocationNumber2 : String(5);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Check digit'
  @sap.quickinfo : 'Check digit for the international location number'
  InternationalLocationNumber3 : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Natural Person'
  IsNaturalPerson : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax type'
  ResponsibleType : String(2);
  @sap.display.format : 'Date'
  @sap.label : 'QM System Valid To'
  @sap.quickinfo : 'Validity date of certification'
  SuplrQltyInProcmtCertfnValidTo : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Actual QM System'
  @sap.quickinfo : 'Supplier''s QM system'
  SuplrQualityManagementSystem : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Group key'
  SupplierCorporateGroup : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Block Function'
  @sap.quickinfo : 'Function That Will Be Blocked'
  SupplierProcurementBlock : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Number 1'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TaxNumber1 : String(16);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Number 2'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TaxNumber2 : String(11);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Number 3'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TaxNumber3 : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Number 4'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TaxNumber4 : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Number 5'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TaxNumber5 : String(60);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Number'
  @sap.quickinfo : 'Tax Number at Responsible Tax Authority'
  TaxNumberResponsible : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax number type'
  @sap.quickinfo : 'Tax Number Type'
  TaxNumberType : String(2);
  to_SupplierCompany : Association to many GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_SupplierCompany {  };
  to_SupplierPurchasingOrg : Association to many GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_SupplierPurchasingOrg {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Supplier Company'
entity GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_SupplierCompany {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Vendor'
  @sap.quickinfo : 'Account Number of Vendor or Creditor'
  key Supplier : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  key CompanyCode : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization'
  @sap.quickinfo : 'Authorization Group'
  AuthorizationGroup : String(4);
  @sap.label : 'Company Name'
  @sap.quickinfo : 'Name of Company Code or Company'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CompanyCodeName : String(25);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Payment Block'
  @sap.quickinfo : 'Block Key for Payment'
  PaymentBlockingReason : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Co.code post.block'
  @sap.quickinfo : 'Posting block for company code'
  SupplierIsBlockedForPosting : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Clerk Abbrev.'
  @sap.quickinfo : 'Accounting Clerk Abbreviation'
  AccountingClerk : String(2);
  @sap.label : 'Acctg clerk''s fax'
  @sap.quickinfo : 'Accounting clerk''s fax number at the customer/vendor'
  AccountingClerkFaxNumber : String(31);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Acct.clerks tel.no.'
  @sap.quickinfo : 'Accounting clerk''s telephone number at business partner'
  AccountingClerkPhoneNumber : String(30);
  @sap.label : 'Clerk at vendor'
  SupplierClerk : String(15);
  @sap.label : 'Clrk''s internet add.'
  @sap.quickinfo : 'Internet address of partner company clerk'
  SupplierClerkURL : String(130);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Payment Methods'
  @sap.quickinfo : 'List of Respected Payment Methods'
  PaymentMethodsList : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Payment terms'
  @sap.quickinfo : 'Terms of payment key'
  PaymentTerms : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Clearing with cust.'
  @sap.quickinfo : 'Indicator: Clearing between customer and vendor?'
  ClearCustomerSupplier : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Local Processing'
  @sap.quickinfo : 'Indicator: Local Processing?'
  IsToBeLocallyProcessed : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Individual Payment'
  @sap.quickinfo : 'Indicator: Pay All Items Separately?'
  ItemIsToBePaidSeparately : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Pmnt advice by EDI'
  @sap.quickinfo : 'Indicator: Send Payment Advices by EDI'
  PaymentIsToBeSentByEDI : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'House bank'
  @sap.quickinfo : 'Short key for a house bank'
  HouseBank : String(5);
  @sap.label : 'Check Cashing Time'
  @sap.quickinfo : 'Probable Time Until Check Is Paid'
  CheckPaidDurationInDays : Decimal(3, 0);
  @sap.label : 'Bill/Ex. Limit'
  @sap.quickinfo : 'Bill of Exchange Limit (in Local Currency)'
  BillOfExchLmtAmtInCoCodeCrcy : Decimal(14, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Account with vendor'
  @sap.quickinfo : 'Our account number with the vendor'
  SupplierClerkIDBySupplier : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reconciliation acct'
  @sap.quickinfo : 'Reconciliation Account in General Ledger'
  ReconciliationAccount : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Interest indicator'
  @sap.quickinfo : 'Interest calculation indicator'
  InterestCalculationCode : String(2);
  @sap.display.format : 'Date'
  @sap.label : 'Last Key Date'
  @sap.quickinfo : 'Key Date of Last Interest Calculation'
  InterestCalculationDate : Date;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Int.Calc.Freq.'
  @sap.quickinfo : 'Interest Calculation Frequency in Months'
  IntrstCalcFrequencyInMonths : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Head office'
  @sap.quickinfo : 'Head office account number'
  SupplierHeadOffice : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Alternative payee'
  @sap.quickinfo : 'Account number of the alternative payee'
  AlternativePayee : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sort key'
  @sap.quickinfo : 'Key for sorting according to assignment numbers'
  LayoutSortingRule : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tolerance Group'
  @sap.quickinfo : 'Tolerance Group for Business Partner/G/L Account'
  APARToleranceGroup : String(4);
  @sap.display.format : 'Date'
  @sap.label : 'Certification Date'
  SupplierCertificationDate : Date;
  @sap.label : 'Account Memo'
  @sap.quickinfo : 'Memo'
  SupplierAccountNote : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'WTax Country'
  @sap.quickinfo : 'Withholding Tax Country Key'
  WithholdingTaxCountry : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Co.cde deletion flag'
  @sap.quickinfo : 'Deletion Flag for Master Record (Company Code Level)'
  DeletionIndicator : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Planning Group'
  CashPlanningGroup : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Check Double Invoice'
  @sap.quickinfo : 'Check Flag for Double Invoices or Credit Memos'
  IsToBeCheckedForDuplicates : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Account group'
  @sap.quickinfo : 'Vendor account group'
  SupplierAccountGroup : String(4);
  to_SupplierDunning : Association to many GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_SupplierDunning {  };
  to_SupplierWithHoldingTax : Association to many GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_SupplierWithHoldingTax {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Supplier Company Dunning'
entity GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_SupplierDunning {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Vendor'
  @sap.quickinfo : 'Account Number of Vendor or Creditor'
  key Supplier : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  key CompanyCode : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Dunning Area'
  key DunningArea : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Dunning Block'
  DunningBlock : String(1);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Dunning Level'
  DunningLevel : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Dunning Procedure'
  DunningProcedure : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Dunn.recipient'
  @sap.quickinfo : 'Account number of the dunning recipient'
  DunningRecipient : String(10);
  @sap.display.format : 'Date'
  @sap.label : 'Last Dunned'
  @sap.quickinfo : 'Date of Last Dunning Notice'
  LastDunnedOn : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Legal Dunn.Proc.From'
  @sap.quickinfo : 'Date of the Legal Dunning Proceedings'
  LegDunningProcedureOn : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Dunning Clerk'
  DunningClerk : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization'
  @sap.quickinfo : 'Authorization Group'
  AuthorizationGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Account group'
  @sap.quickinfo : 'Vendor account group'
  SupplierAccountGroup : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Supplier Purchasing Partner Function'
entity GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_SupplierPartnerFunc {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Vendor'
  @sap.quickinfo : 'Account Number of Vendor or Creditor'
  key Supplier : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purch. organization'
  @sap.quickinfo : 'Purchasing organization'
  key PurchasingOrganization : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplier Subrange'
  key SupplierSubrange : String(6) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  key Plant : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Partner Function'
  key PartnerFunction : String(2) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Partner counter'
  key PartnerCounter : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Default Partner'
  DefaultPartner : Boolean;
  @sap.display.format : 'Date'
  @sap.label : 'Created on'
  @sap.quickinfo : 'Date on which the record was created'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreationDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Created by'
  @sap.quickinfo : 'Name of Person who Created the Object'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreatedByUser : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ref. to vendor'
  @sap.quickinfo : 'Reference to other vendor'
  ReferenceSupplier : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization'
  @sap.quickinfo : 'Authorization Group'
  AuthorizationGroup : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Supplier Purchasing Organization'
entity GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_SupplierPurchasingOrg {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Vendor'
  @sap.quickinfo : 'Vendor''s account number'
  key Supplier : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purch. organization'
  @sap.quickinfo : 'Purchasing organization'
  key PurchasingOrganization : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Schema Grp, Supplier'
  @sap.quickinfo : 'Group for Calculation Schema (Supplier)'
  CalculationSchemaGroupCode : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Del. flag POrg.'
  @sap.quickinfo : 'Deletion Indicator for Supplier at Purchasing Level'
  DeletionIndicator : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Incoterms'
  @sap.quickinfo : 'Incoterms (Part 1)'
  IncotermsClassification : String(3);
  @sap.label : 'Incoterms (Part 2)'
  IncotermsTransferLocation : String(28);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Incoterms Version'
  IncotermsVersion : String(4);
  @sap.label : 'Incoterms Location 1'
  IncotermsLocation1 : String(70);
  @sap.label : 'Incoterms Location 2'
  IncotermsLocation2 : String(70);
  @sap.display.format : 'UpperCase'
  @sap.label : 'GR-Based Inv. Verif.'
  @sap.quickinfo : 'Indicator: GR-Based Invoice Verification'
  InvoiceIsGoodsReceiptBased : Boolean;
  @sap.label : 'Planned Deliv. Time'
  @sap.quickinfo : 'Planned Delivery Time in Days'
  MaterialPlannedDeliveryDurn : Decimal(3, 0);
  @sap.label : 'Minimum order value'
  MinimumOrderAmount : Decimal(14, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Payment terms'
  @sap.quickinfo : 'Terms of payment key'
  PaymentTerms : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Pricing Date Control'
  @sap.quickinfo : 'Price Determination (Pricing) Date Control'
  PricingDateControl : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Automatic PO'
  @sap.quickinfo : 'Automatic Generation of Purchase Order Allowed'
  PurOrdAutoGenerationIsAllowed : Boolean;
  @sap.label : 'Order currency'
  @sap.quickinfo : 'Purchase order currency'
  @sap.semantics : 'currency-code'
  PurchaseOrderCurrency : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Group'
  PurchasingGroup : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Pur. block POrg'
  @sap.quickinfo : 'Purchasing block at purchasing organization level'
  PurchasingIsBlockedForSupplier : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Shipping Conditions'
  ShippingCondition : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'ABC indicator'
  SupplierABCClassificationCode : String(1);
  @sap.label : 'Telephone'
  @sap.quickinfo : 'Supplier''s Telephone Number'
  SupplierPhoneNumber : String(16);
  @sap.label : 'Salesperson'
  @sap.quickinfo : 'Responsible Salesperson at Supplier''s Office'
  SupplierRespSalesPersonName : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization'
  @sap.quickinfo : 'Authorization Group'
  AuthorizationGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Account group'
  @sap.quickinfo : 'Vendor account group'
  SupplierAccountGroup : String(4);
  @sap.label : 'Indicator'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  InvoiceIsMMServiceEntryBased : Boolean not null;
  to_PartnerFunction : Association to many GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_SupplierPartnerFunc {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Supplier Company WithHolding Tax'
entity GMSBUSINESS_PARTNER_CUSTOMER_SRV.A_SupplierWithHoldingTax {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Vendor'
  @sap.quickinfo : 'Account Number of Vendor or Creditor'
  key Supplier : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  key CompanyCode : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Withholding Tax Type'
  @sap.quickinfo : 'Indicator for Withholding Tax Type'
  key WithholdingTaxType : String(2) not null;
  @sap.display.format : 'Date'
  @sap.label : 'Exemption Start Date'
  @sap.quickinfo : 'Date on Which Exemption Begins'
  ExemptionDateBegin : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Exemption End Date'
  @sap.quickinfo : 'Date on Which Exemption Ends'
  ExemptionDateEnd : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Exemption Reason'
  @sap.quickinfo : 'Reason for Exemption'
  ExemptionReason : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Subject to w/tx'
  @sap.quickinfo : 'Indicator: Subject to Withholding Tax?'
  IsWithholdingTaxSubject : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Recipient Type'
  @sap.quickinfo : 'Type of Recipient'
  RecipientType : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Exemption Number'
  @sap.quickinfo : 'Exemption Certificate Number'
  WithholdingTaxCertificate : String(25);
  @sap.display.format : 'UpperCase'
  @sap.label : 'W/Tax Code'
  @sap.quickinfo : 'Withholding Tax Code'
  WithholdingTaxCode : String(2);
  @sap.label : 'Exemption Rate'
  WithholdingTaxExmptPercent : Decimal(5, 2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'W/tax number'
  @sap.quickinfo : 'Withholding tax identification number'
  WithholdingTaxNumber : String(16);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization'
  @sap.quickinfo : 'Authorization Group'
  AuthorizationGroup : String(4);
};

