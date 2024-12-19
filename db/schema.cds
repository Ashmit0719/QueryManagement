namespace capQueryManagement;

entity serviceParametersItems {
    key ID                     :      Integer;
    key serviceParameter       :      String;
        serviceParameterDesc   :      String;
        serviceParameterType   :      String;
        serviceParameterlength :      Integer;
        List                   : many String;
        ParentId               :      String;
        Level                  :      String;
        BusinessRule_Relevant  :      Boolean;
}

entity customerRegistrationFields {
    key unique                 :      UUID;
        ID                     :      Integer;
        contractType           :      String;
        documentType           :      String;
        flag                   :      Integer;
        service_parameter      :      String;
        label                  :      String;
        serviceParameterType   :      String;
        serviceParameterlength :      String;
        mandatory              :      Boolean;
        visible                :      Boolean;
        List                   : many String;
        parameterRelevancy     :      String(20);
}

entity Customer {
    key unique                 : UUID;
        ID                      :Integer;
        contractType           : String;
        flag:Integer;
        documentType           : String;
        serviceParameterType   : String;
        service_parameter      : String;
        serviceParameterlength : Integer;
        label                  : String;
        visible                : Boolean;
        mandatory              : Boolean;
}
