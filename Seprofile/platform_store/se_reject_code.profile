%% { Reject Code Name, [Reject Code, STIP Reject Code, Description, Reject Type, STIP Reject Type, Flow Control, Priority, SE Response code] }

%------------------------------------------------------------------------------%
{ "SRC_ENDPOINT_NOT_SIGNED_ON", [606, 'NA',"Source endpoint is not signed ON", hard, 'NA', stop, 2, 904] }.
{ "HEADER_FORMAT_ID_INVALID_VALUE", [015, 'NA',"Header Format ID invalid value", hard, 'NA', stop, 2, 904] }.

%------------------------------------------------------------------------------%
{ "HeaderFormatID_INVALID_FORMAT", [50, 'NA',"Field format", hard, 'NA', stop, 2, 904] }.
{ "NetworkID_INVALID_FORMAT", [51, 'NA', "Field format", hard, 'NA', stop, 2, 904] }.
{ "MessageFormatID_INVALID_FORMAT", [52, 'NA', "Field format", hard, 'NA', stop, 2, 904] }.
{ "DestinationEndpointID_INVALID_FORMAT", [53, 'NA', "Field format", hard, 'NA', stop, 2, 904] }.
{ "SourceEndpointID_INVALID_FORMAT", [54, 'NA', "Field format", hard, 'NA', stop, 2, 904] }.
{ "MessageStatus_INVALID_FORMAT", [55, 'NA', "Field format", hard, 'NA', stop, 2, 904] }.
{ "SeDeviceID_INVALID_FORMAT", [56, 'NA', "Field format", hard, 'NA', stop, 2, 904] }.
{ "DynamicTimeout_INVALID_FORMAT", [57, 'NA', "Field format", hard, 'NA', stop, 2, 904] }.
{ "HEADER_PARSE_ERROR", [58, 'NA',"Field format", hard, 'NA', stop, 2, 901] }.

%------------------------------------------------------------------------------%
{ "HeraderFormatID_INVALID_VALUE", [101, 'NA', "Field value", hard, 'NA', stop, 2, 904] }.
{ "NetworkID_INVALID_VALUE", [102, 'NA', "Field value", hard, 'NA', stop, 2, 904] }.
{ "MessageFormatID_INVALID_VALUE", [103, 'NA', "Field value", hard, 'NA', stop, 2, 904] }.
{ "DestinationEndpointID_INVALID_VALUE", [104, 'NA', "Field value", hard, 'NA', stop, 2, 904] }.
{ "SourceEndpointID_INVALID_VALUE", [105, 'NA', "Field value", hard, 'NA', stop, 2, 904] }.

%------------------------------------------------------------------------------%
{ "HeaderFormatID_IS_MANDATORY", [151, 'NA', "Field Mandatory", hard, 'NA', stop, 2, 904] }.
{ "NetworkID_IS_MANDATORY", [152, 'NA', "Field Mandatory", hard, 'NA', stop, 2, 904] }.
{ "MessageFormatID_IS_MANDATORY", [153, 'NA', "Field Mandatory", hard, 'NA', stop, 2, 904] }.
{ "SourceEndpointID_IS_MANDATORY", [154, 'NA', "Field Mandatory", hard, 'NA', stop, 2, 904] }.
{ "SeDeviceID_IS_MANDATORY", [155, 'NA', "Field Mandatory", hard, 'NA', stop, 2, 904] }.

%------------------------------------------------------------------------------%
{ "SRC_ENDPOINT_NOT_MATCHED", [201, 'NA', "Source Endpoint value not matched with actual endpoint IP", hard, 'NA', stop, 2, 902] }.
{ "MSG_FORMAT_NOT_MAPPED_TO_SRC_ENDPOINT", [202, 'NA', "message format id not valid for given source endpoint", hard, 'NA', stop, 2, 902] }.
{ "SRC_MESSAGE_FORMAT_IDENTIFIER_NOT_MATCHED", [203, 'NA', "Source message format ID not matched with src endpoint message format ID", hard, 'NA', stop, 2, 902] }.

%------------------------------------------------------------------------------%
{ "MESSAGE_LENGTH_INVALID", [226, 'NA', "Message Length field after TPDU Header contains NON-BCD value", hard, 'NA', stop, 0, 904] }.
{ "DEST_ENDPOINT_SIGNED_OFF", [227, 'NA', "selected endpoint is Signed-off", hard, 'NA', stop, 1, 910] }.
{ "DEST_ENDPOINT_TEMP_UNAVAIL", [228, 'NA', "endpoint temporary unavailable", hard, 'NA', stop, 1, 912] }.
{ "DEST_ENDPOINT_RECOVERY_MODE", [229, 'NA', "endpoint in recovery mode", hard, 'NA', stop, 1, 912] }.

%------------------------------------------------------------------------------%
{ "MESSAGE_PARSE_ERROR", [250, 'NA', "Message Parse Error", hard, 'NA', stop, 2, 904] }.

%------------------------------------------------------------------------------%
{ "MESSAGE_TYPE_INDICATOR_INVALID", [300, 'NA', "MTI value is Invalid", hard, 'NA', stop, 3, 115] }.
{ "PrimaryAccountNumber_INVALID_FORMAT", [301, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "ProcessingCode_INVALID_FORMAT", [302, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "ProcessingCodeTranType_INVALID_FORMAT", [303, 'NA', "Field format", hard, 'NA', stop, 3, 115] }.
{ "ProcessingCodeFromAccount_INVALID_FORMAT", [304, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "ProcessingCodeToAccount_INVALID_FORMAT", [305, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "AmountTransaction_INVALID_FORMAT", [306, 'NA', "Field format", hard, 'NA', stop, 3, 110] }.
{ "TransmissionDateAndTime_INVALID_FORMAT", [307, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "SystemsTraceAuditNumber_INVALID_FORMAT", [308, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "DateAndTimeLocalTransaction_INVALID_FORMAT", [309, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "DateExpiration_INVALID_FORMAT", [310, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "DateSettlement_INVALID_FORMAT", [311, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "PosDataCode_INVALID_FORMAT", [312, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "PosDataCodeInputCapability_INVALID_FORMAT", [313, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "PosDataCodeAuthenticationCapability_INVALID_FORMAT", [314, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "PosDataCodeCaptureCapability_INVALID_FORMAT", [315, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "PosDataCodeOperatingEnvironment_INVALID_FORMAT", [316, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "PosDataCodeCardholderPresent_INVALID_FORMAT", [317, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "PosDataCodeCardPresent_INVALID_FORMAT", [318, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "PosDataCodeCardDataInputMode_INVALID_FORMAT", [319, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "PosDataCodeAuthenticationMethod_INVALID_FORMAT", [320, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "PosDataCodeAuthenticationEntity_INVALID_FORMAT", [321, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "PosDataCodeOutputCapability_INVALID_FORMAT", [322, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "PosDataCodeTerminalCapability_INVALID_FORMAT", [323, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "PosDataCodePINCaptureCapability_INVALID_FORMAT", [324, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "CardSequenceNumber_INVALID_FORMAT", [325, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "FunctionCode_INVALID_FORMAT", [326, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "MessageReasonCode_INVALID_FORMAT", [327, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "MerchantCategoryCode_INVALID_FORMAT", [328, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "OriginalAmount_INVALID_FORMAT", [329, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "AcquiringInstitutionIdCode_INVALID_FORMAT", [330, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "ForwardingInstitutionIdCode_INVALID_FORMAT", [331, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
%% TrackData2_INVALID_FORMAT
{ "TrackData3_INVALID_FORMAT", [333, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "RetrievalReferenceNumber_INVALID_FORMAT", [334, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "AuthorizationIdResponse_INVALID_FORMAT", [335, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "ResponseCode_INVALID_FORMAT", [336, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
%% ServiceRestrictionCode_INVALID_FORMAT
{ "CardAcceptorTerminalId_INVALID_FORMAT", [338, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "CardAcceptorIdCode_INVALID_FORMAT", [339, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "CardAcceptorNameLocation_INVALID_FORMAT", [340, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "CardAcceptorNameLocationAddress_INVALID_FORMAT", [341, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "CardAcceptorNameLocationCity_INVALID_FORMAT", [342, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "CardAcceptorNameLocationState_INVALID_FORMAT", [343, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "CardAcceptorNameLocationCountry_INVALID_FORMAT", [344, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
%% TrackData1_INVALID_FORMAT
{ "AdditionalData1_INVALID_FORMAT", [346, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "ProductCode_INVALID_FORMAT", [347, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "CVD2Value_INVALID_FORMAT", [348, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "CVD2MatchResult_INVALID_FORMAT", [349, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "CVDMatchResultCode_INVALID_FORMAT", [350, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "PaymentsIndicator_INVALID_FORMAT", [351, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "ECIIndicators_INVALID_FORMAT", [352, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "TransactionAuthorizationIndicator_INVALID_FORMAT", [353, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "TransactionID_INVALID_FORMAT", [354, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "CurrencyCodeTransaction_INVALID_FORMAT", [355, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "PinData_INVALID_FORMAT", [356, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "SecurityRelatedControlInformation_INVALID_FORMAT", [357, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "AdditionalAmounts_INVALID_FORMAT", [358, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "IntegratedCircuitCardSystemRelatedData_INVALID_FORMAT", [359, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "9F12_INVALID_FORMAT", [360, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "2F_INVALID_FORMAT", [361, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "1FEF_INVALID_FORMAT", [362, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "81_INVALID_FORMAT", [363, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "DestinationInstitutionId_INVALID_FORMAT", [365, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "AccountIdentification1_INVALID_FORMAT", [366, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "AccountIdentification2_INVALID_FORMAT", [367, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "AccountIdentificationTemp_INVALID_FORMAT", [368, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "OriginalFunctionCode_INVALID_FORMAT", [364, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "OriginalAcquiringInstitutionIdCode_INVALID_FORMAT", [369, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "OriginalRetrievalReferenceNumber_INVALID_FORMAT", [370, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "OriginalCardAcceptorTerminalId_INVALID_FORMAT", [371, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "OriginalCardAcceptorIdCode_INVALID_FORMAT", [372, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "OriginalAuthorizationIdResponse_INVALID_FORMAT", [373, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "ControlNumber_INVALID_FORMAT", [374, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.

%------------------------------------------------------------------------------%
{ "PrimaryAccountNumber_INVALID_VALUE", [701, 'NA', "Field value", hard, 'NA', stop, 3, 908] }.
{ "ProcessingCodeTranType_INVALID_VALUE", [702, 'NA', "Field value", hard, 'NA', stop, 3, 904] }.
{ "ProcessingCodeFromAccount_INVALID_VALUE", [703, 'NA', "Field value", hard, 'NA', stop, 3, 904] }.
{ "ProcessingCodeToAccount_INVALID_VALUE", [704, 'NA', "Field value", hard, 'NA', stop, 3, 904] }.
{ "PosDataCodeInputCapability_INVALID_VALUE", [705, 'NA', "Field value", hard, 'NA', stop, 3, 904] }.
{ "PosDataCodeAuthenticationCapability_INVALID_VALUE", [706, 'NA', "Field value", hard, 'NA', stop, 3, 904] }.
{ "PosDataCodeCaptureCapability_INVALID_VALUE", [707, 'NA', "Field value", hard, 'NA', stop, 3, 904] }.
{ "PosDataCodeOperatingEnvironment_INVALID_VALUE", [708, 'NA', "Field value", hard, 'NA', stop, 3, 904] }.
{ "PosDataCodeCardholderPresent_INVALID_VALUE", [709, 'NA', "Field value", hard, 'NA', stop, 3, 904] }.
{ "PosDataCodeCardPresent_INVALID_VALUE", [710, 'NA', "Field value", hard, 'NA', stop, 3, 904] }.
{ "PosDataCodeCardDataInputMode_INVALID_VALUE", [711, 'NA', "Field value", hard, 'NA', stop, 3, 904] }.
{ "PosDataCodeAuthenticationMethod_INVALID_VALUE", [712, 'NA', "Field value", hard, 'NA', stop, 3, 904] }.
{ "PosDataCodeAuthenticationEntity_INVALID_VALUE", [713, 'NA', "Field value", hard, 'NA', stop, 3, 904] }.
{ "PosDataCodeOutputCapability_INVALID_VALUE", [714, 'NA', "Field value", hard, 'NA', stop, 3, 904] }.
{ "PosDataCodeTerminalCapability_INVALID_VALUE", [715, 'NA', "Field value", hard, 'NA', stop, 3, 904] }.
{ "PosDataCodePINCaptureCapability_INVALID_VALUE", [716, 'NA', "Field value", hard, 'NA', stop, 3, 904] }.
{ "FunctionCode_INVALID_VALUE", [717, 'NA', "Field value", hard, 'NA', stop, 3, 904] }.
{ "MessageReasonCode_INVALID_VALUE", [718, 'NA', "Field value", hard, 'NA', stop, 3, 904] }.
{ "MerchantCategoryCode_INVALID_VALUE", [719, 'NA', "Field value", hard, 'NA', stop, 3, 904] }.
{ "AcquiringInstitutionIdCode_INVALID_VALUE", [720, 'NA', "Field value", hard, 'NA', stop, 3, 904] }.
{ "ForwardingInstitutionIdCode_INVALID_VALUE", [721, 'NA', "Field value", hard, 'NA', stop, 3, 904] }.
{ "ResponseCode_INVALID_VALUE", [722, 'NA', "Field value", hard, 'NA', stop, 3, 904] }.
%% ServiceRestrictionCode_INVALID_VALUE
{ "CardAcceptorNameLocationState_INVALID_VALUE", [724, 'NA', "Field value", soft, 'NA', continue, 3, 904] }.
{ "CardAcceptorNameLocationCountry_INVALID_VALUE", [725, 'NA', "Field value", hard, 'NA', stop, 3, 904] }.
{ "CurrencyCodeTransaction_INVALID_VALUE", [726, 'NA', "Field value", hard, 'NA', stop, 3, 904] }.
{ "DestinationInstitutionId_INVALID_VALUE", [727, 'NA', "Field value", hard, 'NA', stop, 3, 904] }.
{ "TrackData2_INVALID_COMBINATION", [728, 'NA', "Cross Field Validation", hard, 'NA', stop, 3, 904] }.
{ "TrackData1_INVALID_COMBINATION", [729, 'NA', "Cross Field Validation", hard, 'NA', stop, 3, 904] }.
{ "PinData_INVALID_COMBINATION", [730, 'NA', "Cross Field Validation", hard, 'NA', stop, 3, 904] }.
{ "SecurityRelatedControlInformation_INVALID_COMBINATION", [731, 'NA', "Cross Field Validation", hard, 'NA', stop, 3, 904] }.
{ "PosDataCodeInputCapability_INVALID_COMBINATION", [732, 'NA', "Cross Field Validation", hard, 'NA', stop, 3, 904] }.
{ "PosDataCodeAuthenticationCapability_INVALID_COMBINATION", [733, 'NA', "Cross Field Validation", hard, 'NA', stop, 3, 904] }.
{ "PosDataCodeOperatingEnvironment_INVALID_COMBINATION", [734, 'NA', "Cross Field Validation", hard, 'NA', stop, 3, 904] }.
{ "PosDataCodeCardholderPresent_INVALID_COMBINATION", [735, 'NA', "Cross Field Validation", hard, 'NA', stop, 3, 904] }.
{ "PosDataCodeCardPresent_INVALID_COMBINATION", [736, 'NA', "Cross Field Validation", hard, 'NA', stop, 3, 904] }.
{ "PosDataCodeCardDataInputMode_INVALID_COMBINATION", [737, 'NA', "Cross Field Validation", hard, 'NA', stop, 3, 904] }.
{ "PosDataCodeAuthenticationMethod_INVALID_COMBINATION", [738, 'NA', "Cross Field Validation", hard, 'NA', stop, 3, 904] }.
{ "PosDataCodeOutputCapability_INVALID_COMBINATION", [739, 'NA', "Cross Field Validation", hard, 'NA', stop, 3, 904] }.
{ "MerchantCategoryCode_INVALID_COMBINATION", [740, 'NA', "Cross Field Validation", hard, 'NA', stop, 3, 904] }.
{ "f123p_INVALID_COMBINATION", [741, 'NA', "Cross Field Validation", hard, 'NA', stop, 3, 904] }.
{ "CVD2Value_INVALID_COMBINATION", [742, 'NA', "Cross Field Validation", hard, 'NA', stop, 3, 904] }.
{ "PrimaryAccountNumber_IS_MISSING", [743, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "ProcessingCode_IS_MISSING", [744, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "ProcessingCodeTranType_IS_MISSING", [745, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "ProcessingCodeFromAccount_IS_MISSING", [746, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "ProcessingCodeToAccount_IS_MISSING", [747, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "AmountTransaction_IS_MISSING", [748, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TransmissionDateAndTime_IS_MISSING", [749, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "SystemsTraceAuditNumber_IS_MISSING", [750, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "DateAndTimeLocalTransaction_IS_MISSING", [751, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "DateExpiration_IS_MISSING", [752, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "DateSettlement_IS_MISSING", [753, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "PosDataCode_IS_MISSING", [754, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "PosDataCodeInputCapability_IS_MISSING", [755, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "PosDataCodeAuthenticationCapability_IS_MISSING", [756, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "PosDataCodeCaptureCapability_IS_MISSING", [757, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "PosDataCodeOperatingEnvironment_IS_MISSING", [758, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "PosDataCodeCardholderPresent_IS_MISSING", [759, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "PosDataCodeCardPresent_IS_MISSING", [760, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "PosDataCodeCardDataInputMode_IS_MISSING", [761, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "PosDataCodeAuthenticationMethod_IS_MISSING", [762, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "PosDataCodeAuthenticationEntity_IS_MISSING", [763, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "PosDataCodeOutputCapability_IS_MISSING", [764, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "PosDataCodeTerminalCapability_IS_MISSING", [765, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "PosDataCodePINCaptureCapability_IS_MISSING", [766, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "CardSequenceNumber_IS_MISSING", [767, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "FunctionCode_IS_MISSING", [768, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "MessageReasonCode_IS_MISSING", [769, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "MerchantCategoryCode_IS_MISSING", [770, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "OriginalAmount_IS_MISSING", [771, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "AcquiringInstitutionIdCode_IS_MISSING", [772, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "ForwardingInstitutionIdCode_IS_MISSING", [773, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
%% TrackData2_IS_MISSING
{ "TrackData3_IS_MISSING", [775, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "RetrievalReferenceNumber_IS_MISSING", [776, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "AuthorizationIdResponse_IS_MISSING", [777, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "ResponseCode_IS_MISSING", [778, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
%% ServiceRestrictionCode_IS_MISSING
{ "CardAcceptorTerminalId_IS_MISSING", [780, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "CardAcceptorIdCode_IS_MISSING", [781, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "CardAcceptorNameLocation_IS_MISSING", [782, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "CardAcceptorNameLocationAddress_IS_MISSING", [783, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "CardAcceptorNameLocationCity_IS_MISSING", [784, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "CardAcceptorNameLocationState_IS_MISSING", [785, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "CardAcceptorNameLocationCountry_IS_MISSING", [786, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
%% TrackData1_IS_MISSING
{ "AdditionalData1_IS_MISSING", [788, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "ProductCode_IS_MISSING", [789, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "CVD2Value_IS_MISSING", [790, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "CVD2MatchResult_IS_MISSING", [791, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "CVDMatchResultCode_IS_MISSING", [792, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "PaymentsIndicator_IS_MISSING", [793, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "ECIIndicators_IS_MISSING", [794, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TransactionAuthorizationIndicator_IS_MISSING", [795, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TransactionID_IS_MISSING", [796, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "CurrencyCodeTransaction_IS_MISSING", [797, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "PinData_IS_MISSING", [798, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "SecurityRelatedControlInformation_IS_MISSING", [799, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "AdditionalAmounts_IS_MISSING", [800, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "IntegratedCircuitCardSystemRelatedData_IS_MISSING", [801, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "9F12_IS_MISSING", [802, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "2F_IS_MISSING", [803, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "1FEF_IS_MISSING", [804, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "81_IS_MISSING", [805, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "DestinationInstitutionId_IS_MISSING", [807, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "AccountIdentification1_IS_MISSING", [808, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "AccountIdentification2_IS_MISSING", [809, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "AccountIdentificationTemp_IS_MISSING", [810, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "PrimaryAccountNumber_NOT_ALLOWED", [811, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "ProcessingCode_NOT_ALLOWED", [812, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "ProcessingCodeTranType_NOT_ALLOWED", [813, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "ProcessingCodeFromAccount_NOT_ALLOWED", [814, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "ProcessingCodeToAccount_NOT_ALLOWED", [815, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "AmountTransaction_NOT_ALLOWED", [816, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TransmissionDateAndTime_NOT_ALLOWED", [817, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "SystemsTraceAuditNumber_NOT_ALLOWED", [818, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "DateAndTimeLocalTransaction_NOT_ALLOWED", [819, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "DateExpiration_NOT_ALLOWED", [820, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "DateSettlement_NOT_ALLOWED", [821, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "PosDataCode_NOT_ALLOWED", [822, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "PosDataCodeInputCapability_NOT_ALLOWED", [823, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "PosDataCodeAuthenticationCapability_NOT_ALLOWED", [824, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "PosDataCodeCaptureCapability_NOT_ALLOWED", [825, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "PosDataCodeOperatingEnvironment_NOT_ALLOWED", [826, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "PosDataCodeCardholderPresent_NOT_ALLOWED", [827, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "PosDataCodeCardPresent_NOT_ALLOWED", [828, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "PosDataCodeCardDataInputMode_NOT_ALLOWED", [829, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "PosDataCodeAuthenticationMethod_NOT_ALLOWED", [830, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "PosDataCodeAuthenticationEntity_NOT_ALLOWED", [831, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "PosDataCodeOutputCapability_NOT_ALLOWED", [832, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "PosDataCodeTerminalCapability_NOT_ALLOWED", [833, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "PosDataCodePINCaptureCapability_NOT_ALLOWED", [834, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "CardSequenceNumber_NOT_ALLOWED", [835, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "FunctionCode_NOT_ALLOWED", [836, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "MessageReasonCode_NOT_ALLOWED", [837, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "MerchantCategoryCode_NOT_ALLOWED", [838, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "OriginalAmount_NOT_ALLOWED", [839, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "AcquiringInstitutionIdCode_NOT_ALLOWED", [840, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "ForwardingInstitutionIdCode_NOT_ALLOWED", [841, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
%% TrackData2_NOT_ALLOWED
{ "TrackData3_NOT_ALLOWED", [843, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "RetrievalReferenceNumber_NOT_ALLOWED", [844, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "AuthorizationIdResponse_NOT_ALLOWED", [845, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "ResponseCode_NOT_ALLOWED", [846, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
%% ServiceRestrictionCode_NOT_ALLOWED
{ "CardAcceptorTerminalId_NOT_ALLOWED", [848, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "CardAcceptorIdCode_NOT_ALLOWED", [849, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "CardAcceptorNameLocation_NOT_ALLOWED", [850, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "CardAcceptorNameLocationAddress_NOT_ALLOWED", [851, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "CardAcceptorNameLocationCity_NOT_ALLOWED", [852, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "CardAcceptorNameLocationState_NOT_ALLOWED", [853, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "CardAcceptorNameLocationCountry_NOT_ALLOWED", [854, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
%% TrackData1_NOT_ALLOWED
{ "AdditionalData1_NOT_ALLOWED", [856, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "ProductCode_NOT_ALLOWED", [857, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "CVD2Value_NOT_ALLOWED", [858, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "CVD2MatchResult_NOT_ALLOWED", [859, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "CVDMatchResultCode_NOT_ALLOWED", [860, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "PaymentsIndicator_NOT_ALLOWED", [861, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "ECIIndicators_NOT_ALLOWED", [862, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TransactionAuthorizationIndicator_NOT_ALLOWED", [863, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TransactionID_NOT_ALLOWED", [864, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "CurrencyCodeTransaction_NOT_ALLOWED", [865, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "PinData_NOT_ALLOWED", [866, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "AdditionalAmounts_NOT_ALLOWED", [868, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "IntegratedCircuitCardSystemRelatedData_NOT_ALLOWED", [869, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "9F12_NOT_ALLOWED", [870, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "2F_NOT_ALLOWED", [871, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "1FEF_NOT_ALLOWED", [872, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "81_NOT_ALLOWED", [873, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "DestinationInstitutionId_NOT_ALLOWED", [875, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "AccountIdentification1_NOT_ALLOWED", [876, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "AccountIdentification2_NOT_ALLOWED", [877, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "AccountIdentificationTemp_NOT_ALLOWED", [878, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "MTI_INVALID_VALUE", [879, 'NA', "Field value", hard, 'NA', stop, 3, 904] }.
{ "MTI_INVALID_FORMAT", [880, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "TrackData2StartSentinal_INVALID_FORMAT", [883, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "TrackData2PanNumber_INVALID_FORMAT", [884, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "TrackData2Seperator1_INVALID_FORMAT", [885, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "TrackData2CardExpirationData_INVALID_FORMAT", [886, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "TrackData2ServiceCode_INVALID_FORMAT", [887, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "TrackData2PinVerification_INVALID_FORMAT", [888, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "TrackData2DiscretionaryData_INVALID_FORMAT", [889, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "TrackData2EndSentinal_INVALID_FORMAT", [890, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "TrackData2LRC_INVALID_FORMAT", [891, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "TrackData2StartSentinal_IS_MISSING", [892, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TrackData2PanNumber_IS_MISSING", [893, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TrackData2Seperator1_IS_MISSING", [894, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TrackData2CardExpirationData_IS_MISSING", [895, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TrackData2ServiceCode_IS_MISSING", [896, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TrackData2PinVerification_IS_MISSING", [897, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TrackData2DiscretionaryData_IS_MISSING", [898, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TrackData2EndSentinal_IS_MISSING", [899, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TrackData2LRC_IS_MISSING", [900, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TrackData2StartSentinal_NOT_ALLOWED", [901, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TrackData2PanNumber_NOT_ALLOWED", [902, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TrackData2Seperator1_NOT_ALLOWED", [903, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TrackData2CardExpirationData_NOT_ALLOWED", [904, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TrackData2ServiceCode_NOT_ALLOWED", [905, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TrackData2PinVerification_NOT_ALLOWED", [906, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TrackData2DiscretionaryData_NOT_ALLOWED", [907, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TrackData2EndSentinal_NOT_ALLOWED", [908, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TrackData2LRC_NOT_ALLOWED", [909, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TrackData1StartSentinal_IS_MISSING", [911, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TrackData1FormalCode_IS_MISSING", [912, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TrackData1PanNumber_IS_MISSING", [913, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TrackData1Seperator1_IS_MISSING", [914, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TrackData1CardHolderName_IS_MISSING", [915, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TrackData1Seperator2_IS_MISSING", [916, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TrackData1CardExpirationData_IS_MISSING", [917, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TrackData1ServiceCode_IS_MISSING", [918, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TrackData1PinVerification_IS_MISSING", [919, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TrackData1DiscretionaryData_IS_MISSING", [920, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TrackData1EndSentinal_IS_MISSING", [921, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TrackData1SmartEdgeReserved1_IS_MISSING", [922, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TrackData1SmartEdgeReserved2_IS_MISSING", [923, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TrackData1SmartEdgeReserved3_IS_MISSING", [924, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TrackData1CardVerificationValue_IS_MISSING", [925, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TrackData1AuthorizationControlIndicator_IS_MISSING", [926, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TrackData1LRC_IS_MISSING", [927, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TrackData1StartSentinal_NOT_ALLOWED", [928, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TrackData1FormalCode_NOT_ALLOWED", [929, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TrackData1PanNumber_NOT_ALLOWED", [930, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TrackData1Seperator1_NOT_ALLOWED", [931, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TrackData1CardHolderName_NOT_ALLOWED", [932, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TrackData1Seperator2_NOT_ALLOWED", [933, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TrackData1CardExpirationData_NOT_ALLOWED", [934, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TrackData1ServiceCode_NOT_ALLOWED", [935, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TrackData1PinVerification_NOT_ALLOWED", [936, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TrackData1DiscretionaryData_NOT_ALLOWED", [937, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TrackData1EndSentinal_NOT_ALLOWED", [938, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TrackData1SmartEdgeReserved1_NOT_ALLOWED", [939, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TrackData1SmartEdgeReserved2_NOT_ALLOWED", [940, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TrackData1SmartEdgeReserved3_NOT_ALLOWED", [941, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TrackData1CardVerificationValue_NOT_ALLOWED", [942, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TrackData1AuthorizationControlIndicator_NOT_ALLOWED", [943, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TrackData1LRC_NOT_ALLOWED", [944, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "TrackData1StartSentinal_INVALID_FORMAT", [945, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "TrackData1FormalCode_INVALID_FORMAT", [946, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "TrackData1PanNumber_INVALID_FORMAT", [947, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "TrackData1Seperator1_INVALID_FORMAT", [948, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "TrackData1CardHolderName_INVALID_FORMAT", [949, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "TrackData1Seperator2_INVALID_FORMAT", [950, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "TrackData1CardExpirationData_INVALID_FORMAT", [951, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "TrackData1ServiceCode_INVALID_FORMAT", [952, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "TrackData1PinVerification_INVALID_FORMAT", [953, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "TrackData1DiscretionaryData_INVALID_FORMAT", [954, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "TrackData1EndSentinal_INVALID_FORMAT", [955, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "TrackData1SmartEdgeReserved1_INVALID_FORMAT", [956, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "TrackData1SmartEdgeReserved2_INVALID_FORMAT", [957, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "TrackData1SmartEdgeReserved3_INVALID_FORMAT", [958, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "TrackData1CardVerificationValue_INVALID_FORMAT", [959, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "TrackData1AuthorizationControlIndicator_INVALID_FORMAT", [960, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "TrackData1LRC_INVALID_FORMAT", [961, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "ServiceRestrictionCodePos1_INVALID_FORMAT", [962, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "ServiceRestrictionCodePos2_INVALID_FORMAT", [963, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "ServiceRestrictionCodePos3_INVALID_FORMAT", [964, 'NA', "Field format", hard, 'NA', stop, 3, 904] }.
{ "ServiceRestrictionCodePos1_NOT_ALLOWED", [965, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "ServiceRestrictionCodePos2_NOT_ALLOWED", [966, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "ServiceRestrictionCodePos3_NOT_ALLOWED", [967, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "ServiceRestrictionCodePos1_IS_MISSING", [968, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "ServiceRestrictionCodePos2_IS_MISSING", [969, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "ServiceRestrictionCodePos3_IS_MISSING", [970, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "ServiceRestrictionCodePos1_INVALID_VALUE", [971, 'NA', "Field value", hard, 'NA', stop, 3, 904] }.
{ "ServiceRestrictionCodePos2_INVALID_VALUE", [972, 'NA', "Field value", hard, 'NA', stop, 3, 904] }.
{ "ServiceRestrictionCodePos3_INVALID_VALUE", [973, 'NA', "Field value", hard, 'NA', stop, 3, 904] }.
{ "SystemsTraceAuditNumber_INVALID_VALUE", [975, 'NA', "Field value", hard, 'NA', stop, 3, 904] }.
{ "AmountTransaction_INVALID_VALUE", [974, 'NA', "Field value", hard, 'NA', stop, 3, 904] }.
{ "AuthorizationIdResponse_INVALID_VALUE", [976, 'NA', "Field value", hard, 'NA', stop, 3, 904] }.
{ "DateExpiration_INVALID_VALUE", [977, 'NA', "Field Value", hard, 'NA', stop, 3, 904] }.
{ "oke_under_exchange_condition", [978, 'NA', "OKE is under exhange condition", hard, 'NA', stop, 3, 952] }.
{ "SecurityTechnique_NOT_ALLOWED", [979, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "PinType_NOT_ALLOWED", [980, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "AlgorithmIdentifier_NOT_ALLOWED", [981, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "PinBlockFormatCode_NOT_ALLOWED", [982, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "KeyIndex_NOT_ALLOWED", [983, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "ICC_9F12_NOT_ALLOWED", [984, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "ICC_2F_NOT_ALLOWED", [985, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "ICC_1FEF_NOT_ALLOWED", [986, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "ICC_81_NOT_ALLOWED", [987, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "SecurityTechnique_INVALID_COMBINATION", [988, 'NA', "Cross Field Validation", hard, 'NA', stop, 3, 904] }.
{ "ControlNumber_IS_MISSING", [1099, 'NA', "Field value", hard, 'NA', stop, 3, 904] }.

%------------------------------------------------------------------------------%
{ "Stip_Approve", [881, 881,"STIP Result", 'NA', hard, stop, 2, 951] }.
{ "STIP_CVV_FAIL", [989, 989, "STIP Result", 'NA', hard, stop, 2, 100] }.
{ "STIP_CVV2_FAIL", [990, 990, "STIP Result", 'NA', hard, stop, 2, 100] }.
{ "STIP_PVS_FAIL", [991, 991, "STIP Result", 'NA', hard, stop, 2, 100] }.
{ "STIP_LIMIT_CHECK_FAIL", [992, 992, "STIP Result", 'NA', hard, stop, 2, 100] }.

%------------------------------------------------------------------------------%
{ "TRANTYPE_NOT_SUPPORTED", [1850, 'NA', "Trantype not found For Network", hard, 'NA', stop, 3, 115] }.
{ "MERCHANT_CATEGORY_GROUP_NOT_FOUND", [1851, 'NA', "MERCHANT CATEGORY GROUP NOT FOUND",  hard, 'NA', stop, 4, 904] }.
{ "TRANCLASS_NOT_RESOLVED", [1852, 'NA', "TRANSACTION CLASSIFICATION CAN NOT BE DONE, DUE TO INVALID COMBINATION(CROSS FIELD TO TAKE CARE OF THIS)", hard, 'NA', stop, 4, 902] }.

%------------------------------------------------------------------------------%
{ "SRC_PROCESSOR_ROUTE_INVALID_COMBINATION", [2001, 'NA', "processor not mapped to Originator route", hard, 'NA', stop, 5, 905] }.
{ "SRC_PROCESSOR_FWD_ROUTE_INVALID_COMBINATION", [2002, 'NA', "processor not mapped to forwarding route", hard, 'NA', stop, 5, 905] }.
{ "DEST_ENTITY_NOT_FOUND", [2003, 'NA', "Destination can not be determined",  hard, 'NA', stop, 5, 915] }.
{ "FWD_ROUTE_SRC_ROUTE_INVALID_COMBINATION", [2004, 'NA', "forwarding route and source route has no mapping", hard, 'NA', stop, 5, 904] }.
{ "SRC_ENTITY_NOT_FOUND", [2005, 'NA', "Invalid Acquiring route", hard, 'NA', stop, 5, 905] }.
{ "TRANTYPE_NOT_SUPPORTED_FOR_DEST_ENTITY", [2006, 'NA', "TranType not supported for Dest Entity", hard, 'NA', stop, 5, 902] }.
{ "TRANTYPE_NOT_SUPPORTED_FOR_SRC_ENTITY", [2007, 'NA', "TranType not supported for Source Entity", hard, 'NA', stop, 5, 902] }.
{ "MCC_NOT_SUPPORTED_FOR_DEST_ENTITY", [2008, 'NA', "MCC not supported for Dest Entity", hard, 'NA', stop, 5, 902] }.
{ "MCC_NOT_SUPPORTED_FOR_SRC_ENTITY", [2009, 'NA', "MCC not supported for Source Entity", hard, 'NA', stop, 5, 902] }.
{ "SRC_INST_ID_&_ENTITY_ID_OF_ACQ_INST_ID_CODE_NOT_MATCHING", [2010, 'NA', "Source Institution Id and SE Entity ID of AcquiringInstitutionIdCode not matching", hard, 'NA', stop, 5, 904] }.

%------------------------------------------------------------------------------%
{ "SRC_ROUTE_AND_BZC_MAPPING_NOT_FOUND",  [2010, 'NA', "src route and business zone code mapping not found", hard, 'NA', stop, 5, 950] }.
{ "DEST_ROUTE_AND_BZC_MAPPING_NOT_FOUND", [2011, 'NA', "dest route and business zone code mapping not found", hard, 'NA', stop, 5, 950] }.
{ "BusinessZoneCode_NOT_FOUND",           [2012, 'NA', "Business Zone Code not found", hard, 'NA', stop,  5, 950]}.

%------------------------------------------------------------------------------%
{ "CORID_NO_MATCH_FOUND", [2101, 'NA', "Corelation ID is present in message , but original can not be located", hard, 'NA', stop, 10, 914] }.
{ "TXNID_NO_MATCH_FOUND", [2102, 'NA', "txn ID is present in message , but original can not be located", hard, 'NA', stop, 10, 914] }.
{ "MATCHKEY_NO_MATCH_FOUND", [2103, 'NA', "txn ID is NOT present in message , but original can not be located", hard, 'NA', stop, 10, 914] }.

%------------------------------------------------------------------------------%
{ "AmountOriginal_NOT_MATCHED_WITH_ORIGINAL", [2351, 'NA', "AmountOriginal NOT MATCHED with Original", hard, 'NA', stop, 12, 902] }.
{ "CCYCDOriginal_NOT_MATCHED_WITH_ORIGINAL", [2352, 'NA', "amount currency code not matched with original amount currency code, Original_amount currency code in reversal is not matched with original transaction amount currency code", hard, 'NA', stop, 12, 902] }.
{ "PosDataCodeInputCapability_NOT_MATCHED_WITH_ORIGINAL", [2353, 'NA', "PosDataCodeInputCapability NOT MATCHED with Original transaction", soft, 'NA', continue, 12, 902] }.
{ "PosDataCodeAuthenticationCapability_NOT_MATCHED_WITH_ORIGINAL", [2354, 'NA', "PosDataCodeAuthenticationCapability NOT MATCHED with Original transaction", soft, 'NA', continue, 12, 902] }.
{ "PosDataCodeCaptureCapability_NOT_MATCHED_WITH_ORIGINAL", [2355, 'NA', "PosDataCodeCaptureCapability NOT MATCHED with Original transaction", soft, 'NA', continue, 12, 902] }.
{ "PosDataCodeOperatingEnvironment_NOT_MATCHED_WITH_ORIGINAL", [2356, 'NA', "PosDataCodeOperatingEnvironment NOT MATCHED with Original transaction", soft, 'NA', continue, 12, 902] }.
{ "PosDataCodeCardholderPresent_NOT_MATCHED_WITH_ORIGINAL", [2357, 'NA', "PosDataCodeCardholderPresent NOT MATCHED with Original transaction", soft, 'NA', continue, 12, 902] }.
{ "PosDataCodeCardPresent_NOT_MATCHED_WITH_ORIGINAL", [2358, 'NA', "PosDataCodeCardPresent NOT MATCHED with Original transaction", soft, 'NA', continue, 12, 902] }.
{ "PosDataCodeCardDataInputMode_NOT_MATCHED_WITH_ORIGINAL", [2359, 'NA', "PosDataCodeCardDataInputMode NOT MATCHED with Original transaction", soft, 'NA', continue, 12, 902] }.
{ "PosDataCodeAuthenticationMethod_NOT_MATCHED_WITH_ORIGINAL", [2360, 'NA', "PosDataCodeAuthenticationMethod NOT MATCHED with Original transaction", soft, 'NA', continue, 12, 902] }.
{ "PosDataCodeAuthenticationEntity_NOT_MATCHED_WITH_ORIGINAL", [2361, 'NA', "PosDataCodeAuthenticationEntity NOT MATCHED with Original transaction", soft, 'NA', continue, 12, 902] }.
{ "PosDataCodeOutputCapability_NOT_MATCHED_WITH_ORIGINAL", [2362, 'NA', "PosDataCodeOutputCapability NOT MATCHED with Original transaction", soft, 'NA', continue, 12, 902] }.
{ "PosDataCodeTerminalCapability_NOT_MATCHED_WITH_ORIGINAL", [2363, 'NA', "PosDataCodeTerminalCapability NOT MATCHED with Original transaction", soft, 'NA', continue, 12, 902] }.
{ "PosDataCodePINCaptureCapability_NOT_MATCHED_WITH_ORIGINAL", [2364, 'NA', "PosDataCodePINCaptureCapability NOT MATCHED with Original transaction", soft, 'NA', continue, 12, 902] }.
{ "AmountTransaction_NOT_MATCHED_WITH_ORIGINAL", [2365, 'NA', "AmountTransaction NOT MATCHED with Original transaction", hard, 'NA', stop, 12, 902] }.
{ "PrimaryAccountNumber_NOT_MATCHED_WITH_ORIGINAL", [2366, 'NA', "PrimaryAccountNumber NOT MATCHED with Original transaction", hard, 'NA', stop, 12, 902] }.
{ "RESPONSE_CD_NOT_MATCHED_WITH_REV_ADV_REQ", [2367, 'NA', "RESPONSE CODE IN REVERSAL RESP IS NOT MATCHED WITH REVERSAL REQUEST", hard, 'NA', stop, 12, 902] }.
{ "ProcessingCodeTranType_NOT_MATCHED_WITH_ORIGINAL", [2368, 'NA', "ProcessingCodeTranType NOT MATCHED with Original transaction", hard, 'NA', stop, 12, 902] }.
{ "ProcessingCodeFromAccount_NOT_MATCHED_WITH_ORIGINAL", [2369, 'NA', "ProcessingCodeFromAccount NOT MATCHED with Original transaction", hard, 'NA', stop, 12, 902] }.
{ "ProcessingCodeToAccount_NOT_MATCHED_WITH_ORIGINAL", [2370, 'NA', "ProcessingCodeToAccount NOT MATCHED with Original transaction", hard, 'NA', stop, 12, 902] }.
{ "SystemsTraceAuditNumber_NOT_MATCHED_WITH_ORIGINAL", [2371, 'NA', "SystemsTraceAuditNumber NOT MATCHED with Original transaction", hard, 'NA', stop, 12, 902] }.
{ "DateAndTimeLocalTransaction_NOT_MATCHED_WITH_ORIGINAL", [2372, 'NA', "DateAndTimeLocalTransaction NOT MATCHED with Original transaction", hard, 'NA', stop, 12, 902] }.
{ "DateExpiration_NOT_MATCHED_WITH_ORIGINAL", [2373, 'NA', "DateExpiration NOT MATCHED with Original transaction", hard, 'NA', stop, 12, 902] }.
{ "DateSettlement_NOT_MATCHED_WITH_ORIGINAL", [2374, 'NA', "DateSettlement NOT MATCHED with Original transaction", hard, 'NA', stop, 12, 902] }.
{ "CardSequenceNumber_NOT_MATCHED_WITH_ORIGINAL", [2375, 'NA', "CardSequenceNumber NOT MATCHED with Original transaction", hard, 'NA', stop, 12, 902] }.
{ "FunctionCode_NOT_MATCHED_WITH_ORIGINAL", [2376, 'NA', "FunctionCode NOT MATCHED with Original transaction", hard, 'NA', stop, 12, 902] }.
{ "MessageReasonCode_NOT_MATCHED_WITH_ORIGINAL", [2377, 'NA', "MessageReasonCode NOT MATCHED with Original transaction", hard, 'NA', stop, 12, 902] }.
{ "MerchantCategoryCode_NOT_MATCHED_WITH_ORIGINAL", [2378, 'NA', "MerchantCategoryCode NOT MATCHED with Original transaction", hard, 'NA', stop, 12, 902] }.
{ "OriginalAmount_NOT_MATCHED_WITH_ORIGINAL", [2379, 'NA', "amount not matched with original amount, Original_amount in reversal is not matched with original transaction amount", hard, 'NA', stop, 12, 902] }.
{ "AcquiringInstitutionIdCode_NOT_MATCHED_WITH_ORIGINAL", [2380, 'NA', "AcquiringInstitutionIdCode NOT MATCHED with Original transaction", hard, 'NA', stop, 12, 902] }.
{ "ForwardingInstitutionIdCode_NOT_MATCHED_WITH_ORIGINAL", [2381, 'NA', "ForwardingInstitutionIdCode NOT MATCHED with Original transaction", hard, 'NA', stop, 12, 902] }.
{ "TrackData2_NOT_MATCHED_WITH_ORIGINAL", [2382, 'NA', "TrackData2 NOT MATCHED with Original transaction", hard, 'NA', stop, 12, 902] }.
{ "TrackData3_NOT_MATCHED_WITH_ORIGINAL", [2383, 'NA', "TrackData3 NOT MATCHED with Original transaction", hard, 'NA', stop, 12, 902] }.
{ "RetrievalReferenceNumber_NOT_MATCHED_WITH_ORIGINAL", [2384, 'NA', "RetrievalReferenceNumber NOT MATCHED with Original transaction", hard, 'NA', stop, 12, 902] }.
{ "ResponseCode_NOT_MATCHED_WITH_ORIGINAL", [2385, 'NA', "ResponseCode NOT MATCHED with Original transaction", hard, 'NA', stop, 12, 902] }.
{ "ServiceRestrictionCode_NOT_MATCHED_WITH_ORIGINAL", [2386, 'NA', "ServiceRestrictionCode NOT MATCHED with Original transaction", hard, 'NA', stop, 12, 902] }.
{ "CardAcceptorTerminalId_NOT_MATCHED_WITH_ORIGINAL", [2387, 'NA', "CardAcceptorTerminalId NOT MATCHED with Original transaction", hard, 'NA', stop, 12, 902] }.
{ "CardAcceptorIdCode_NOT_MATCHED_WITH_ORIGINAL", [2388, 'NA', "CardAcceptorIdCode NOT MATCHED with Original transaction", hard, 'NA', stop, 12, 902] }.
{ "CardAcceptorNameLocationAddress_NOT_MATCHED_WITH_ORIGINAL", [2389, 'NA', "CardAcceptorNameLocationAddress NOT MATCHED with Original transaction", hard, 'NA', stop, 12, 902] }.
{ "CardAcceptorNameLocationCity_NOT_MATCHED_WITH_ORIGINAL", [2390, 'NA', "CardAcceptorNameLocationCity NOT MATCHED with Original transaction", hard, 'NA', stop, 12, 902] }.
{ "CardAcceptorNameLocationState_NOT_MATCHED_WITH_ORIGINAL", [2391, 'NA', "CardAcceptorNameLocationState NOT MATCHED with Original transaction", hard, 'NA', stop, 12, 902] }.
{ "CardAcceptorNameLocationCountry_NOT_MATCHED_WITH_ORIGINAL", [2392, 'NA', "CardAcceptorNameLocationCountry NOT MATCHED with Original transaction", hard, 'NA', stop, 12, 902] }.
{ "TrackData1_NOT_MATCHED_WITH_ORIGINAL", [2393, 'NA', "TrackData1 NOT MATCHED with Original transaction", hard, 'NA', stop, 12, 902] }.
{ "CurrencyCodeTransaction_NOT_MATCHED_WITH_ORIGINAL", [2394, 'NA', "CurrencyCodeTransaction NOT MATCHED with Original transaction", hard, 'NA', stop, 12, 902] }.
{ "PinData_NOT_MATCHED_WITH_ORIGINAL", [2395, 'NA', "PinData NOT MATCHED with Original transaction", hard, 'NA', stop, 12, 902] }.
{ "SecurityRelatedControlInformation_NOT_MATCHED_WITH_ORIGINAL", [2396, 'NA', "SecurityRelatedControlInformation NOT MATCHED with Original transaction", hard, 'NA', stop, 12, 902] }.
{ "AdditionalAmounts_NOT_MATCHED_WITH_ORIGINAL", [2397, 'NA', "AdditionalAmounts NOT MATCHED with Original transaction", hard, 'NA', stop, 12, 902] }.
{ "IntegratedCircuitCardSystemRelatedData_NOT_MATCHED_WITH_ORIGINAL", [2398, 'NA', "IntegratedCircuitCardSystemRelatedData NOT MATCHED with Original transaction", hard, 'NA', stop, 12, 902] }.
{ "DestinationInstitutionId_NOT_MATCHED_WITH_ORIGINAL", [2400, 'NA', "DestinationInstitutionId NOT MATCHED with Original transaction", hard, 'NA', stop, 12, 902] }.
{ "AccountIdentification1_NOT_MATCHED_WITH_ORIGINAL", [2401, 'NA', "AccountIdentification1 NOT MATCHED with Original transaction", hard, 'NA', stop, 12, 902] }.
{ "AccountIdentification2_NOT_MATCHED_WITH_ORIGINAL", [2402, 'NA', "AccountIdentification2 NOT MATCHED with Original transaction", hard, 'NA', stop, 12, 902] }.
{ "OriginalAcquiringInstitutionIdCode_NOT_MATCHED_WITH_ORIGINAL", [2403, 'NA', "OriginalAcquiringInstitutionIdCode NOT MATCHED with Original transaction", hard, 'NA', stop, 12, 902] }.
{ "OriginalCardAcceptorTerminalId_NOT_MATCHED_WITH_ORIGINAL", [2404, 'NA', "OriginalCardAcceptorTerminalId NOT MATCHED with Original transaction", hard, 'NA', stop, 12, 902] }.
{ "OriginalCardAcceptorIdCode_NOT_MATCHED_WITH_ORIGINAL", [2405, 'NA', "OriginalCardAcceptorIdCode NOT MATCHED with Original transaction", hard, 'NA', stop, 12, 902] }.
{ "OriginalFunctionCode_NOT_MATCHED_WITH_ORIGINAL", [2406, 'NA', "OriginalFunctionCode NOT MATCHED with Original transaction", hard, 'NA', stop, 12, 902] }.
{ "OriginalRetrievalReferenceNumber_NOT_MATCHED_WITH_ORIGINAL", [2407, 'NA', "OriginalRetrievalReferenceNumber NOT MATCHED with Original transaction", hard, 'NA', stop, 12, 902] }.
{ "ControlNumber_NOT_MATCHED_WITH_ORIGINAL", [2408, 'NA', "ControlNumber NOT MATCHED with Original", hard, 'NA', stop, 12, 902] }.

%------------------------------------------------------------------------------%
{ "OUT_OF_SEQUENCE", [2501, 'NA', "<<TRANTYPE>> Not Allowed for transaction", hard, 'NA', stop, 15, 922] }.
{ "OUT_OF_SEQUENCE_DECLINE_ORIG_TRANSACTION", [2502, 'NA', "<<TRANTYPE>> Not Allowed for DECLINE transaction", hard, 'NA', stop, 15, 922] }.
{ "LATE_RESPONSE", [2503, 'NA', "<<TRANTYPE>> Not Allowed for TIMEOUT transaction", hard, 'NA', stop, 15, 955] }.
{ "SRC_ENDPOINT_NOT_MATCHED_WITH_ORIGINAL_DEST_ENDPOINT", [2504, 'NA', "SOURCE ENDPOINT MUST BE SAME AS DESTINATION ENDPOINT OF ORIGINAL", hard, 'NA', stop, 15, 902] }.
{ "DEST_ENDPOINT_NOT_MATCHED_WITH_ORIGINAL_SRC_ENDPOINT", [2505, 'NA', "DESTINATION ENDPOINT MUST BE SAME AS SOURCE ENDPOINT OF ORIGINAL", hard, 'NA', stop, 15, 902] }.

%------------------------------------------------------------------------------%
{ "DUPLICATE_TRANSACTION", [2151, 'NA', "duplicate original transaction found for TXN_TYPE", hard, 'NA', stop, 10, 913] }.
{ "DUPLICATE_RESPONSE", [2152, 'NA', "duplicate response transaction found for TXN_TYPE", hard, 'NA', stop, 10, 913] }.

%------------------------------------------------------------------------------%
{ "TIMEOUT", [2510, 'NA', "Timeout", hard, 'NA', stop, 10, 911] }.
{ "ISSUER_INOPERATIVE", [2511, 'NA', "Card Issuer inoperative", hard, 'NA', stop, 10, 907] }.

%------------------------------------------------------------------------------%
{ "UNABLE_TO_RESOLVE_DEST_ROUTE", [2551, 'NA', "Any Error in Enhance routing", hard, 'NA', stop, 11, 909] }.
{ "UNABLE_TO_RESOLVE_DEST_ENDPOINT",  [2552, 'NA', "Any Error in Select Endpoint", hard, 'NA', stop, 11, 909] }.

%------------------------------------------------------------------------------%
{ "MOD10_SUCCESS", [2701, 'NA', "MOD10 CHECK SUCCESS", soft, 'NA', continue, 16, 0] }.
{ "MOD10_FAIL", [2702, 'NA', "MOD10 CHECK FAILED", soft, 'NA', continue, 16, 902] }.
{ "PAN_LEN_SUCCESS", [2703, 'NA', "PAN LENGTH SUCESS", soft, 'NA', continue, 16, 0] }.
{ "PAN_LEN_FAIL", [2704, 'NA', "PAN LENGTH FAILED", soft, 'NA', continue, 16, 125] }.
{ "CVV_SUCCESS", [2705, 'NA', "CVV SUCCESS", soft, 'NA', continue, 16, 0] }.
{ "CVV_FAIL", [2706, 'NA', "CVV FAIL", soft, 'NA', continue, 16, 122] }.
{ "CVV2_SUCCESS", [2707, 'NA', "CVV2 SUCCESS", soft, 'NA', continue, 16, 0] }.
{ "CVV2_FAIL", [2708, 'NA', "CVV2 FAIL", soft, 'NA', continue, 16, 122] }.
{ "dCVV_sucess", [2709, 'NA', "dCVV SUCESS", soft, 'NA', continue, 16, 0] }.
{ "dCVV_FAIL", [2710, 'NA', "dCVV FAIL", soft, 'NA', continue, 16, 122] }.
{ "PIN_VERIFY_SUCCESS", [2711, 'NA', "PIN VERIFIED", soft, 'NA', continue, 16, 0] }.
{ "PIN_VERIFY_FAIL", [2712, 'NA', "PIN VERIFICATION FAILED", soft, 'NA', continue, 16, 126] }.
{ "PIN_VERIFY_ATTEMPTS_EXCEED", [2713, 'NA', "PIN VERIFICATION ATTEMPT EXCEED", soft, 'NA', continue, 16, 106] }.
%------------------------------------------------------------------------------%
{ "UNABLE_TO_GEN_ADV", [2800, 'NA', "Reversal cannot be generated on declined response", hard, 'NA', stop, 1, 924] }.
{ "SERVICE_BAD_CLAUSE", [2801, 'NA', "Unexpected execution path during servicing any message/request", hard, 'NA', stop, 11, 909] }.
{ "ADVICE_RESPONSE_PRESENT", [2802, 'NA', "Advice response present", hard, 'NA', stop, 1, 954] }.
{ "DATASTORE_ERROR", [2803, 'NA', "Unexpected backend datastore error", hard, 'NA', stop, 11, 909] }.
%-------------------------------------------------------------------------------%
{ "OriginalFunctionCode_IS_MISSING", [993, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "OriginalAcquiringInstitutionIdCode_IS_MISSING", [994, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "OriginalRetrievalReferenceNumber_IS_MISSING", [995, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "OriginalCardAcceptorTerminalId_IS_MISSING", [996, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "OriginalCardAcceptorIdCode_IS_MISSING", [997, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "OriginalAuthorizationIdResponse_IS_MISSING", [998, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "OriginalFunctionCode_NOT_MATCHED_WITH_ORIGINAL", [999, 'NA', "OriginalDataElements NOT MATCHED with Original transaction", hard, 'NA', stop, 12, 902] }.
{ "OriginalAcquiringInstitutionIdCode_NOT_MATCHED_WITH_ORIGINAL", [1000, 'NA', "OriginalDataElements NOT MATCHED with Original transaction", hard, 'NA', stop, 12, 902] }.
{ "OriginalRetrievalReferenceNumber_NOT_MATCHED_WITH_ORIGINAL", [1001, 'NA', "OriginalDataElements NOT MATCHED with Original transaction", hard, 'NA', stop, 12, 902] }.
{ "OriginalCardAcceptorTerminalId_NOT_MATCHED_WITH_ORIGINAL", [1002, 'NA', "OriginalDataElements NOT MATCHED with Original transaction", hard, 'NA', stop, 12, 902] }.
{ "OriginalCardAcceptorIdCode_NOT_MATCHED_WITH_ORIGINAL", [1003, 'NA', "OriginalDataElements NOT MATCHED with Original transaction", hard, 'NA', stop, 12, 902] }.
{ "OriginalAuthorizationIdResponse_NOT_MATCHED_WITH_ORIGINAL", [1004, 'NA', "OriginalDataElements NOT MATCHED with Original transaction", hard, 'NA', stop, 12, 902] }.
{ "OriginalFunctionCode_NOT_ALLOWED", [1005, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "OriginalAcquiringInstitutionIdCode_NOT_ALLOWED", [1006, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "OriginalRetrievalReferenceNumber_NOT_ALLOWED", [1007, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "OriginalCardAcceptorTerminalId_NOT_ALLOWED", [1008, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "OriginalCardAcceptorIdCode_NOT_ALLOWED", [1009, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
{ "OriginalAuthorizationIdResponse_NOT_ALLOWED", [1010, 'NA', "Field presence", hard, 'NA', stop, 3, 904] }.
%-----------------------------------------------------------------------------------%
{ "Card_Stolen", [3000, 'NA', "card stolen", soft, 'NA', continue, 1, 102] }.
{ "Card_Lost", [3001, 'NA', "card lost", soft, 'NA', continue, 1, 104] }.
{ "Fraudulent_Multiple_Transactions", [3002, 'NA', "fraudulent multiple transactions", soft, 'NA', continue, 1, 102] }.
{ "Counterfeit_Transaction", [3003, 'NA', "counterfeit transaction", soft, 'NA', continue, 1, 102] }.
{ "Fraud_Card_Present_Environment", [3004, 'NA', "fraud card present environment", soft, 'NA', continue, 1, 102] }.
{ "Fraud_Card_Absent_Environment", [3005, 'NA', "fraud card absent environment", soft, 'NA', continue, 1, 102] }.

{ "Card_Stolen_Stip", ['NA', 3050, "card stolen", hard, 'NA', stop, 1, 102] }.
{ "Card_Lost_Stip", ['NA', 3051, "card lost", hard, 'NA', stop, 1, 104] }.
{ "Fraudulent_Multiple_Transactions_Stip", ['NA', 3052, "fraudulent multiple transactions", hard, 'NA', stop, 1, 102] }.
{ "Counterfeit_Transaction_Stip", ['NA', 3053, "counterfeit transaction", hard, 'NA', stop, 1, 102] }.
{ "Fraud_Card_Present_Environment_Stip", ['NA', 3054, "fraud card present environment", hard, 'NA', stop, 1, 102] }.
{ "Fraud_Card_Absent_Environment_Stip", ['NA', 3055, "fraud card absent environment", hard, 'NA', stop, 1, 102] }.

{ "NO_LIMITS_FOUND", [4000, 'NA', "either issuer or platform limits must be configured", hard, 'NA', stop, 11, 909] }.
{ "NO_ACTIVITY_LIMITS_FOUND", [4001, 'NA', "either issuer or platform activity limits must be configured", hard, 'NA', stop, 11, 909] }.
{ "NO_MANDATED_ACTIVITY_LIMITS_FOUND", [4002, 'NA', "platform activity limits must be configured", hard, 'NA', stop, 11, 909] }.
{ "ACTIVITY_LIMIT_EXCEEDED", [4003, 'NA', "activity limit maxed out", hard, 'NA', stop, 11, 909] }.
{ "AMOUNT_LIMIT_EXCEEDED", [4004, 'NA', "amount limit maxed out", hard, 'NA', stop, 11, 909] }.
{ "DAILY_PURCHASE_AMOUNT_LIMIT_EXCEEDED", [4005, 'NA', "daily non-cash limit maxed out", hard, 'NA', stop, 11, 909] }.
{ "DAILY_CASH_AMOUNT_LIMIT_EXCEEDED", [4006, 'NA', "daily cash limit maxed out", hard, 'NA', stop, 11, 909] }.
{ "MCG_AMOUNT_LIMIT_EXCEEDED", [4007, 'NA', "merchant group limit maxed out", hard, 'NA', stop, 11, 909] }.
{ "NO_ACCOUNT_LIMITS_FOUND", [4008, 'NA', "no account level limits are configured", hard, 'NA', stop, 11, 909] }.
{ "ACCOUNT_DAILY_LIMIT_EXCEEDED", [4009, 'NA', "account level daily limit maxed out", hard, 'NA', stop, 11, 909] }.
{ "ACCOUNT_MONTHLY_LIMIT_EXCEEDED", [4010, 'NA', "account level monthly limit maxed out", hard, 'NA', stop, 11, 909] }.
{ "ACCOUNT_TXN_LIMIT_EXCEEDED", [4011, 'NA', "account level per txn limit maxed out", hard, 'NA', stop, 11, 909] }.
{ "ACCOUNT_TXN_LIMIT_UNDERFLOW", [4012, 'NA', "account level per txn amount is too less", hard, 'NA', stop, 11, 909] }.
%-----------------------------------------------------------------------------------%
{ "FILE_UPDATE_RECORD_NOT_PRESENT", [ 5000, 'NA', "File update record not present.", hard, 'NA', stop, 10, 118]}. %% TODO : Priority need to be varify
{ "DUPLICATE_FILE_UPDATE_RECORD",   [ 5001, 'NA', "Duplicate File Update Record.",   hard, 'NA', stop, 12, 913]}. %% TODO : Priority need to be varify
{ "FILE_UPDATE_DATA_FORMAT_ERROR",  [ 5002, 'NA', "Insufficient File Update Data.",  hard, 'NA', stop,  3, 903]}.
{ "FileUpdateName_INVALID_VALUE",   [ 5003, 'NA', "Field value",                     hard, 'NA', stop,  2, 904]}.
{ "FileUpdateAction_INVALID_VALUE", [ 5004, 'NA', "Field value",                     hard, 'NA', stop,  2, 904]}.

