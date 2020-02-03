@PipelineFix
Feature: Validating Must and Must Not Fields
@MustFLD_PurReq_NotPresent
Scenario Outline: Validate  transactions with different must fields not present for purchase request
Given Validation of scenario <TestCaseId> for tran type <TranType> and CardNumber <CardNumber>
Given Initiate <TranType> transaction for <CardNumber> CVV as <CVV> using <FieldName> <FieldId> and <Value> 
When  Acquirer forwards the message to SmartEdge 
Then  Verify acquirer response <AcquirerResponse_F39> and <AdditionalResponse_F46>

Examples:

|TestCaseId |TranType            | CardNumber       |CVV   |FieldName                               |FieldId       |    Value     |AcquirerResponse_F39 |AdditionalResponse_F46|
|"FLDPrsntSC1TC1"|"Purchase"         |"2220118912341518"|"0206"| "PrimaryAccountNumber_IS_MISSING"      |    2         |   "Missing"  | "904"               |"743"             |
|"FLDPrsntSC1TC2"|"Purchase"         |"2220118912341518"|"0206"| "Amount_MISSING"                       |  4           |   "Missing"  | "904"               |"748"             |
|"FLDPrsntSC1TC3"|"Purchase"         |"2220118912341518"|"0206"| "SystemsTraceAuditNumber_MISSING"      |  11          |   "Missing"  | "904"               |"750"             |
|"FLDPrsntSC1TC4"|"Purchase"         |"2220118912341518"|"0206"| "DateAndTimeLocalTransaction_MISSING"  |  12          |   "Missing"  | "904"               |"751"             |
|"FLDPrsntSC1TC5"|"Purchase"         |"2220118912341518"|"0206"| "DateExpiration_MISSING"               |   14          |   "Missing"  | "904"               |"752"             |
|"FLDPrsntSC1TC6"|"Purchase"         |"2220118912341518"|"0206"| "PosDataCode_MISSING"                  |   22          |   "Missing"  | "904"               |"755,756,757,758,759,760,761,762,763,764,765,766"  |
|"FLDPrsntSC1TC7"|"Purchase"         |"2220118912341518"|"0206"| "MerchantCategoryCode_MISSING"         |   26          |   "Missing"  | "904"               |"770"             |
|"FLDPrsntSC1TC8"|"Purchase"         |"2220118912341518"|"0206"| "CardAcceptorNameLocation_MISSING"     |   43          |   "Missing"  | "904"               |"783,784,785,786"             |
|"FLDPrsntSC1TC9"|"Purchase"         |"2220118912341518"|"0206"| "CurrencyCodeTransaction_MISSING"      |   49          |   "Missing"  | "904"               |"797"             |
|"FLDPrsntSC1TC10"|"Purchase"         |"2220118912341518"|"0206"| "AcquiringInstitutionIdCode_IS_MISSING"|   32          |   "Missing"  | "904"               |"772"             |
|"FLDPrsntSC1TC11"|"Purchase"         |"2220118912341518"|"0206"| "RetrievalReferenceNumber_IS_MISSING"  |   37          |   "Missing"  | "904"               |"776"             |
##Need to analyse|"FLDPrsntSC1TC8"|"Purchase"         |"2220118912341518"| "FunctionCode_IS_MISSING"              |   24          |   "Missing"  | "904"               |"768"  |
##Need to analyse|"FLDPrsntSC1TC2"|"Purchase"         |"2220118912341518" | "ProcessingCode_FromAccount"          |    3         |   "Missing"  | "904"               |"746"             |




@MustNotFLD_PurReq_Present
Scenario Outline: Validate  transactions with different must not fields present for purchase request
Given Validation of scenario <TestCaseId> for tran type <TranType> and CardNumber <CardNumber>
Given Initiate <TranType> transaction for <CardNumber> CVV as <CVV> using <FieldName> <FieldId> and <Value> 
When  Acquirer forwards the message to SmartEdge 
Then  Verify acquirer response <AcquirerResponse_F39> and <AdditionalResponse_F46>


Examples:

|TestCaseId      |TranType            | CardNumber       |CVV   |FieldName                               |FieldId       |    Value     |AcquirerResponse_F39 |AdditionalResponse_F46|
|"FLDPrsntSC2TC1"|"Purchase"         |"2220118912341518"|"0206"| "DateSettlement_NOT_ALLOWED"           |    15        |   "181229"   |     "904"           |    "821"             |       
|"FLDPrsntSC2TC2"|"Purchase"         |"2220118912341518"|"0206"| "MessageReasonCode_NOT_ALLOWED"        |    25        |   "1001"     |     "904"           |    "837"             |       
|"FLDPrsntSC2TC3"|"Purchase"         |"2220118912341518"|"0206"| "OriginalAmount_NOT_ALLOWED"           |    30        |   "1000"     |     "904"           |    "839"             |       
|"FLDPrsntSC2TC4"|"Purchase"         |"2220118912341518"|"0206"| "ResponseCode_NOT_ALLOWED"             |    39        |   "001"      |     "904"           |    "846"             |       
|"FLDPrsntSC2TC5"|"Purchase"         |"2220118912341518"|"0206"| "OriginalDataElements_NOT_ALLOWED"     |    56        |   "200"      |     "904"           |    "1005,1006,1007,1008,1009"             |  



@MustFLD_PurResponse_NotPresent
Scenario Outline: Validate  transactions with different must fields not present for purchase response
Given Validation of scenario <TestCaseId> for tran type <TranType> and CardNumber <CardNumber>
Given Initiate <TranType> transaction for <CardNumber> CVV as <cvv>
When  Acquirer forwards the message to SmartEdge 
And   Issuer processes the message, sets value <Value> in field <FieldId> and sends back the response
Then  Verify acquirer response <AcquirerResponse_F39> and <AdditionalResponse_F46>
And   Verify response <IssuerResponse> and <IssuerAdditionalResponse> received by issuer as part of reversal advice request generated by SmartEdge
And   Issuer processes the reversal advice request and sends back the response

Examples:

|TestCaseId     |TranType          | CardNumber        |cvv   |FieldName                                |FieldId       |   Value      |AcquirerResponse_F39 |AdditionalResponse_F46|IssuerResponse      |IssuerAdditionalResponse|


|"FLDPrsntSC3TC1"|"Purchase"          |"2220118912341518"|"0206"| "PrimaryAccountNumber_IS_MISSING"     |    2         |   "Missing"  |"907"                |"2701,2703,2711"      |	"904"               |"743"             |
|"FLDPrsntSC3TC2"|"Purchase"         |"2220118912341518"|"0206"| "Amount_MISSING"                       |  4           |   "Missing"  | "907"               |"2701,2703,2711"      |"904"               |"748"               |
|"FLDPrsntSC3TC3"|"Purchase"         |"2220118912341518"|"0206"| "SystemsTraceAuditNumber_MISSING"      |  11          |   "Missing"  | "907"               |"2701,2703,2711"      |"904"               |"750"             |
|"FLDPrsntSC3TC4"|"Purchase"         |"2220118912341518"|"0206"| "DateAndTimeLocalTransaction_MISSING"  |  12          |   "Missing"  | "907"               |"2701,2703,2711"      |"904"               |"751"             |
|"FLDPrsntSC3TC5"|"Purchase"         |"2220118912341518"|"0206"| "PosDataCode_MISSING"                  |   22         |   "Missing"  | "907"               |"2701,2703,2711"      |"904"               |"755,756,757,758,759,760,761,762,763,764,765,766"             |
|"FLDPrsntSC3TC6"|"Purchase"         |"2220118912341518"|"0206"| "MerchantCategoryCode_MISSING"         |   26         |   "Missing"  |"907"                |"2701,2703,2711"      |"904"               |"770"             |
|"FLDPrsntSC3TC7"|"Purchase"         |"2220118912341518"|"0206"| "ResponseCode_IS_MISSING"              |   39         |   "Missing"  | "907"               |"2701,2703,2711"      |"904"               |"778"             |
|"FLDPrsntSC3TC8"|"Purchase"         |"2220118912341518"|"0206"| "CardAcceptorNameLocation_MISSING"     |   43         |   "Missing"  |"907"                |"2701,2703,2711"      |"904"               |"783,784,785,786"             |
|"FLDPrsntSC3TC16"|"Purchase"         |"2220118912341518"|"0206"| "CurrencyCodeTransaction_MISSING"      |   49         |   "Missing"  |"907"                |"2701,2703,2711"      |"904"               |"797"             |
|"FLDPrsntSC3TC9"|"Purchase"         |"2220118912341518"|"0206"| "AcquiringInstitutionIdCode_IS_MISSING"|   32          |   "Missing"  | "907"               |"2701,2703,2711"     |"904"               |"772"             |
#|"FLDPrsntSC3TC10"|"Purchase"         |"2220118912341518"|"0206"| "RetrievalReferenceNumber_IS_MISSING"  |   37          |   "Missing"  | "907"               |"2701,2703,2711"     |"904"               |"776"             |
|"FLDPrsntSC3TC11"|"Purchase"         |"2220118912341518"|"0206"| "AuthorizationIdResponse_IS_MISSING"   |   38          |   "Missing"  | "907"               |"2701,2703,2711"     |"904"               |"777"             |
|"FLDPrsntSC3TC12"|"Purchase"         |"2220118912341518"|"0206"| "CardAcceptorTerminalId_IS_MISSING"    |   41         |   "Missing"  |"907"                |"2701,2703,2711"      |"904"               |"780"             |
|"FLDPrsntSC3TC13"|"Purchase"         |"2220118912341518"|"0206"| "CardAcceptorIdCode_IS_MISSING"        |   42         |   "Missing"  |"907"                |"2701,2703,2711"      |"904"               |"781"             |

##Need to analyse|"FLDPrsntSC3TC2"|"Purchase"         |"2220118912341518" | "ProcessingCode_FromAccount"          |    3         |   "Missing"  | "911"               |"2510,2701,2703"      |  "904"              |"746"             |
##Need to analyse|"FLDPrsntSC3TC7"|"Purchase"         |"2220118912341518"| "FunctionCode_IS_MISSING"              |   24         |   "Missing"  | "907"               |"2510,2701,2703"      |"904"               |"768"             |

@MustNotFLD_PurResponse_Present

Scenario Outline: Validate  transactions with different must not fields present for purchase response
Given Validation of scenario <TestCaseId> for tran type <TranType> and CardNumber <CardNumber>
Given Initiate <TranType> transaction for <CardNumber> CVV as <cvv>
When  Acquirer forwards the message to SmartEdge 
And   Issuer processes the message, sets value <Value> in field <FieldId> and sends back the response
Then  Verify acquirer response <AcquirerResponse_F39> and <AdditionalResponse_F46>
And   Verify response <IssuerResponse> and <IssuerAdditionalResponse> received by issuer as part of reversal advice request generated by SmartEdge
And   Issuer processes the reversal advice request and sends back the response

Examples:
|TestCaseId |TranType           | CardNumber       |cvv   |FieldName                                           |FieldId       |   Value      |AcquirerResponse_F39 |AdditionalResponse_F46|IssuerResponse      |IssuerAdditionalResponse|

|"FLDPrsntSC4TC1"|"Purchase"         |"2220118912341518"|"0206"| "DateExpiration_NOT_ALLOWED"                       |   14         |   "1812"     | "907"               |"2701,2703,2711"            |"904"               |"820"             |
|"FLDPrsntSC4TC2"|"Purchase"         |"2220118912341518"|"0206"| "MessageReasonCode_NOT_ALLOWED"                    |   25         |   "1001"     | "907"               |"2701,2703,2711"           |"904"               |"837"             |
|"FLDPrsntSC4TC3"|"Purchase"         |"2220118912341518"|"0206"| "OriginalAmount_NOT_ALLOWED"                       |   30         |   "1000"     | "907"               |"2701,2703,2711"           |"904"               |"839"             |
##Need to analyse|"FLDPrsntSC4TC4"|"Purchase"         |"2220118912341518"|"0206"| "TrackData1_NOT_ALLOWED"                          |   45         | "TrackData1" | "907"               |"2701,2703,2711"           |"904"               |"928,929,930,931,932,933,934,935,936,937,938,939,940,941,942,943,944"             |
|"FLDPrsntSC4TC5"|"Purchase"         |"2220118912341518"|"0206"| "TrackData2_NOT_ALLOWED"                          |   35         | "TrackData2" | "907"               |"2701,2703,2711"           |"904"               |"901,902,903,904,905,906,907,908,909"             |
##Need to analyse|"FLDPrsntSC4TC6"|"Purchase"         |"2220118912341518"|"0206"| "TrackData3_NOT_ALLOWED"                          |   36         | "TrackData3" | "907"               |"2701,2703,2711"           |"904"               |"843"             |
|"FLDPrsntSC4TC7"|"Purchase"         |"2220118912341518"|"0206"| "PinData_NOT_ALLOWED"                             |   52         | "PINData"    |  "907"             |"2701,2703,2711"           |"904"               |"866"             |
##Need to analyse|"FLDPrsntSC4TC8"|"Purchase"         |"2220118912341518"|"0206"| "SecurityRelatedControlInformation_NOT_ALLOWED"     |   53         |   "0101010101"     | "907"               |"2701,2703,2711"            |"904"               |"979,980,981,982,983"             |
##Need to analyse|"FLDPrsntSC4TC9"|"Purchase"         |"2220118912341518"|"0206"| "IntegratedCircuitCardSystemRelatedData_NOT_ALLOWED" |   55         |   "000"     | "907"               |"2511,2701,2703,2711"            |"904"               |"869"             |
|"FLDPrsntSC4TC10"|"Purchase"         |"2220118912341518"|"0206"| "OriginalDataElements_NOT_ALLOWED"                 |   56         |   "OriginalDataElements"     | "907"               |"2701,2703,2711"            |"904"               |"1005,1006,1007,1008,1009"             |


@MustFLD_AdvRequest_NotPresent
Scenario Outline: Validate  transactions with different must fields not present for purchase advice request
Given Validation of scenario <TestCaseId> for tran type <TranType> and CardNumber <CardNumber>
Given Initiate <TranType> transaction for <CardNumber> CVV as <CVV> using <FieldName> <FieldId> and <Value> 
When  Acquirer forwards the message to SmartEdge 
Then  Verify acquirer response <AcquirerResponse_F39> and <AdditionalResponse_F46>

Examples:

|TestCaseId|TranType                           | CardNumber        |CVV    |FieldName                               |FieldId       |  Value     |AcquirerResponse_F39 |AdditionalResponse_F46|

|"FLDPrsntSC5TC1"|"Purchase_Advice_Request"         |"2220118912341518"|"0206"| "PrimaryAccountNumber_IS_MISSING"      |    2         |   "Missing"  | "904"               |"743"             |
|"FLDPrsntSC5TC2"|"Purchase_Advice_Request"         |"2220118912341518"|"0206"| "Amount_MISSING"                       |  4           |   "Missing"  | "904"               |"748"             |
|"FLDPrsntSC5TC3"|"Purchase_Advice_Request"         |"2220118912341518"|"0206"| "SystemsTraceAuditNumber_MISSING"      |  11          |   "Missing"  | "904"               |"750"             |
|"FLDPrsntSC5TC4"|"Purchase_Advice_Request"         |"2220118912341518"|"0206"| "DateAndTimeLocalTransaction_MISSING"  |  12          |   "Missing"  | "904"               |"751"             |
|"FLDPrsntSC5TC5"|"Purchase_Advice_Request"         |"2220118912341518"|"0206"| "DateExpiration_MISSING"               |   14          |   "Missing"  | "904"               |"752"             |
|"FLDPrsntSC5TC6"|"Purchase_Advice_Request"         |"2220118912341518"|"0206"| "PosDataCode_MISSING"                  |   22          |   "Missing"  | "904"               |"755,756,757,758,759,760,761,762,763,764,765,766"  |
|"FLDPrsntSC5TC7"|"Purchase_Advice_Request"         |"2220118912341518"|"0206"| "MerchantCategoryCode_MISSING"         |   26          |   "Missing"  | "904"               |"770"             |
|"FLDPrsntSC5TC8"|"Purchase_Advice_Request"         |"2220118912341518"|"0206"| "CardAcceptorNameLocation_MISSING"     |   43          |   "Missing"  | "904"               |"783,784,786,785"             |
|"FLDPrsntSC5TC9"|"Purchase_Advice_Request"         |"2220118912341518"|"0206"| "CurrencyCodeTransaction_MISSING"      |   49          |   "Missing"  | "904"               |"797"             |

##Need to analyse|"FLDPrsntSC5TC2"|"Purchase_Advice_Request"         |"2220118912341518" |"0206"| "ProcessingCode_FromAccount"          |    3         |   "Missing"  | "904"               |"746"             |
##Need to analyse|"FLDPrsntSC5TC8"|"Purchase_Advice_Request"         |"2220118912341518"|"0206"| "FunctionCode_IS_MISSING"              |   24          |   "Missing"  | "904"               |"768"  |
|"FLDPrsntSC5TC10"|"Purchase_Advice_Request"         |"2220118912341518"|"0206"| "AcquiringInstitutionIdCode_IS_MISSING"|   32          |   "Missing"  | "904"               |"772"             |
|"FLDPrsntSC5TC11"|"Purchase_Advice_Request"         |"2220118912341518"|"0206"| "RetrievalReferenceNumber_IS_MISSING"  |   37          |   "Missing"  | "904"               |"776"             |



@MustNotFLD_AdvRequest_Present
Scenario Outline: Validate  transactions with different must not fields present for purchase advice request
Given Validation of scenario <TestCaseId> for tran type <TranType> and CardNumber <CardNumber>
Given Initiate <TranType> transaction for <CardNumber> CVV as <CVV> using <FieldName> <FieldId> and <Value> 
When  Acquirer forwards the message to SmartEdge 
Then  Verify acquirer response <AcquirerResponse_F39> and <AdditionalResponse_F46>

Examples:

|TestCaseId|TranType                           | CardNumber        |CVV  |FieldName                               |FieldId       |  Value     |AcquirerResponse_F39 |AdditionalResponse_F46|
|"FLDPrsntSC6TC1"|"Purchase_Advice_Request"         |"2220118912341518"|"0206"| "DateSettlement_NOT_ALLOWED"           |    15        |   "181229"   |     "904"           |    "821"             |       
|"FLDPrsntSC6TC2"|"Purchase_Advice_Request"         |"2220118912341518"|"0206"| "MessageReasonCode_NOT_ALLOWED"        |    25        |   "1001"     |     "904"           |    "837"             |       
|"FLDPrsntSC6TC3"|"Purchase_Advice_Request"         |"2220118912341518"|"0206"| "OriginalAmount_NOT_ALLOWED"           |    30        |   "1000"     |     "904"           |    "839"             |       
|"FLDPrsntSC6TC4"|"Purchase_Advice_Request"         |"2220118912341518"|"0206"| "ResponseCode_NOT_ALLOWED"             |    39        |   "001"      |     "904"           |    "846"             |       
|"FLDPrsntSC6TC5"|"Purchase_Advice_Request"         |"2220118912341518"|"0206"| "OriginalDataElements_NOT_ALLOWED"     |    56        |   "200"      |     "904"           |    "1005,1006,1007,1008,1009"             | 


@MustFLD_AdvResponse_NotPresent
Scenario Outline: Validate  transactions with different must fields not present for purchase advice response
Given Validation of scenario <TestCaseId> for tran type <TranType> and CardNumber <CardNumber>
Given Initiate <TranType> transaction for <CardNumber> CVV as <cvv>
When  Acquirer forwards the message to SmartEdge 
And Issuer processes the message, sets value <Value> in field <FieldId> and sends back the response
Then  Verify acquirer response <AcquirerResponse_F39> and <AdditionalResponse_F46>
And   Verify response <IssuerResponse> and <IssuerAdditionalResponse> received by issuer as part of reversal advice request generated by SmartEdge
And   Issuer processes the reversal advice request and sends back the response
Examples:

|TestCaseId|TranType                          | CardNumber        |cvv   |FieldName                              |FieldId       |   Value      |AcquirerResponse_F39 |AdditionalResponse_F46|IssuerResponse      |IssuerAdditionalResponse|
|"FLDPrsntSC7TC1"|"Purchase_Advice_Request"          |"2220118912341518"|"0206"| "PrimaryAccountNumber_IS_MISSING"     |    2         |   "Missing"  |"907"                |"2701,2703,2711"      |	"904"               |"743"             |
|"FLDPrsntSC7TC2"|"Purchase_Advice_Request"         |"2220118912341518"|"0206"| "Amount_MISSING"                       |  4           |   "Missing"  | "907"               |"2701,2703,2711"      |"904"               |"748"               |
|"FLDPrsntSC7TC3"|"Purchase_Advice_Request"         |"2220118912341518"|"0206"| "SystemsTraceAuditNumber_MISSING"      |  11          |   "Missing"  | "907"               |"2701,2703,2711"      |"904"               |"750"             |
|"FLDPrsntSC7TC4"|"Purchase_Advice_Request"         |"2220118912341518"|"0206"| "DateAndTimeLocalTransaction_MISSING"  |  12          |   "Missing"  | "907"               |"2701,2703,2711"      |"904"               |"751"             |
|"FLDPrsntSC7TC5"|"Purchase_Advice_Request"         |"2220118912341518"|"0206"| "PosDataCode_MISSING"                  |   22         |   "Missing"  | "907"               |"2701,2703,2711"      |"904"               |"755,756,757,758,759,760,761,762,763,764,765,766"             |
|"FLDPrsntSC7TC6"|"Purchase_Advice_Request"         |"2220118912341518"|"0206"| "MerchantCategoryCode_MISSING"         |   26         |   "Missing"  |"907"                |"2701,2703,2711"      |"904"               |"770"             |
|"FLDPrsntSC7TC7"|"Purchase_Advice_Request"         |"2220118912341518"|"0206"| "CurrencyCodeTransaction_MISSING"      |   49         |   "Missing"  |"907"                |"2701,2703,2711"      |"904"               |"797"             |
|"FLDPrsntSC7TC8"|"Purchase_Advice_Request"         |"2220118912341518"|"0206"| "AcquiringInstitutionIdCode_IS_MISSING"|   32          |   "Missing"  | "907"               |"2701,2703,2711"     |"904"               |"772"             |
#|"FLDPrsntSC7TC9"|"Purchase_Advice_Request"         |"2220118912341518"|"0206"| "RetrievalReferenceNumber_IS_MISSING"  |   37          |   "Missing"  | "907"               |"2701,2703,2711"     |"904"               |"776"             |
|"FLDPrsntSC7TC10"|"Purchase_Advice_Request"         |"2220118912341518"|"0206"| "ResponseCode_IS_MISSING"              |   39         |   "Missing"  | "907"               |"2701,2703,2711"      |"904"               |"778"             |
|"FLDPrsntSC7TC11"|"Purchase_Advice_Request"         |"2220118912341518"|"0206"| "CardAcceptorTerminalId_IS_MISSING"    |   41         |   "Missing"  |"907"                |"2701,2703,2711"      |"904"               |"780"             |
|"FLDPrsntSC7TC12"|"Purchase_Advice_Request"         |"2220118912341518"|"0206"| "CardAcceptorIdCode_IS_MISSING"        |   42         |   "Missing"  |"907"                |"2701,2703,2711"      |"904"               |"781"             |
##|"FLDPrsntSC7TC13"|"Purchase_Advice_Request"         |"2220118912341518" |"0206"| "ProcessingCode_FromAccount"          |    3         |   "Missing"  | "911"               |"2510,2701,2703"      |  "904"              |"746"             |
##|"FLDPrsntSC7TC7"|"Purchase_Advice_Request"         |"2220118912341518"| "FunctionCode_IS_MISSING"              |   24         |   "Missing"  | "911"               |"2510,2701,2703"      |"904"               |"768"             |

@MustNotFLD_AdvResponse_Present
Scenario Outline: Validate  transactions with different must not fields present for purchase advice response
Given Validation of scenario <TestCaseId> for tran type <TranType> and CardNumber <CardNumber>
Given Initiate <TranType> transaction for <CardNumber> CVV as <cvv> 
When  Acquirer forwards the message to SmartEdge 
And Issuer processes the message, sets value <Value> in field <FieldId> and sends back the response
Then  Verify acquirer response <AcquirerResponse_F39> and <AdditionalResponse_F46>
And   Verify response <IssuerResponse> and <IssuerAdditionalResponse> received by issuer as part of reversal advice request generated by SmartEdge
And   Issuer processes the reversal advice request and sends back the response

Examples:

|TestCaseId       |TranType                          | CardNumber       |cvv   |FieldName                                           |FieldId       |   Value      |AcquirerResponse_F39 |AdditionalResponse_F46|IssuerResponse      |IssuerAdditionalResponse|
|"FLDPrsntSC8TC1"|"Purchase_Advice_Request"         |"2220118912341518"|"0206"| "DateExpiration_NOT_ALLOWED"                       |   14         |   "1812"     | "907"               |"2701,2703,2711"      |"904"               |"820"             |
|"FLDPrsntSC8TC2"|"Purchase_Advice_Request"         |"2220118912341518"|"0206"| "MessageReasonCode_NOT_ALLOWED"                    |   25         |   "1001"     | "907"               |"2701,2703,2711"      |"904"               |"837"             |
|"FLDPrsntSC8TC3"|"Purchase_Advice_Request"         |"2220118912341518"|"0206"| "OriginalAmount_NOT_ALLOWED"                       |   30         |   "1000"     | "907"               |"2701,2703,2711"      |"904"               |"839"             |
##Need to analyse|"FLDPrsntSC8TC4"|"Purchase_Advice_Request"         |"2220118912341518"|"0206"| "TrackData1_NOT_ALLOWED"                           |   45         | "TrackData1" | "907"               |"2701,2703,2711"      |"904"               |"928,929,930,931,932,933,934,935,936,937,938,939,940,941,942,943,944"             |
|"FLDPrsntSC8TC5"|"Purchase_Advice_Request"         |"2220118912341518"|"0206"| "TrackData2_NOT_ALLOWED"                           |   35         | "TrackData2" | "907"               |"2701,2703,2711"      |"904"               |"901,902,903,904,905,906,907,908,909"             |
|"FLDPrsntSC8TC6"|"Purchase_Advice_Request"         |"2220118912341518"|"0206"| "TrackData3_NOT_ALLOWED"                           |   36         | "TrackData3" | "907"               |"2701,2703,2711"      |"904"               |"843"             ||"FLDPrsntSC8TC7"|"Purchase_Advice_Request"         |"2220118912341518"| "PinData_NOT_ALLOWED"                              |   52         | "PINData"    | "907"             |"2701,2703"      |"904"               |"866"             |
|"FLDPrsntSC8TC8"|"Purchase_Advice_Request"         |"2220118912341518"|"0206"|"SecurityRelatedControlInformation_NOT_ALLOWED"     |   53         |   "0101010101"     | "907"               |"2701,2703,2711"      |"904"               |"979,980,981,982,983"             |
##Need to analyse|"FLDPrsntSC8TC9"|"Purchase_Advice_Request"         |"2220118912341518"|"0206"|"IntegratedCircuitCardSystemRelatedData_NOT_ALLOWED"|   55         |   "000"     | "911"               |"2510,2701,2703"      |"904"               |"869"             |
|"FLDPrsntSC8TC10"|"Purchase_Advice_Request"         |"2220118912341518"|"0206"| "OriginalDataElements_NOT_ALLOWED"                 |   56         |   "OriginalDataElements"     | "907"               |"2701,2703,2711"      |"904"               |"1005,1006,1007,1008,1009"             |

@MustFLD_RevAdvRequest_NotPresent
Scenario Outline: Validate  transactions with different must fields not present for purchase reversal advice request
Given Validation of scenario <TestCaseId> for tran type <TranType> and CardNumber <CardNumber>
Given Initiate "Purchase" transaction for <CardNumber> CVV as <cvv>
When  Acquirer forwards the message to SmartEdge
And Message is processed by issuer and repsonse is sent back to the acquirer
Then Verify if acquirer received 000 response
But Initiate <TranType> transaction for <CardNumber> CVV as <cvv> using <FieldName> <FieldId> and <Value> 
When  Acquirer forwards the message to SmartEdge 
Then  Verify acquirer response <AcquirerResponse_F39> and <AdditionalResponse_F46>


Examples:

|TestCaseId       |TranType                           | CardNumber       |cvv  |FieldName                                    |FieldId       |   Value      |AcquirerResponse_F39 |AdditionalResponse_F46|
|"FLDPrsntSC9TC1"|"Purchase_ReversalAdvice_Request"  |"2220118912341518"|"0206"| "PrimaryAccountNumber_IS_MISSING"           |    2         |   "Missing"  |"904"                |"743"      |
|"FLDPrsntSC9TC2"|"Purchase_ReversalAdvice_Request"  |"2220118912341518"|"0206"| "SystemsTraceAuditNumber_MISSING"           |  11          |   "Missing"  | "904"               |"750"             |
|"FLDPrsntSC9TC3"|"Purchase_ReversalAdvice_Request"  |"2220118912341518"|"0206"| "DateAndTimeLocalTransaction_MISSING"       |  12          |   "Missing"  | "904"               |"751"             |
|"FLDPrsntSC9TC4"|"Purchase_ReversalAdvice_Request"  |"2220118912341518"|"0206"| "MerchantCategoryCode_MISSING"              |   26         |   "Missing"  | "904"               |"770"             |
|"FLDPrsntSC9TC5"|"Purchase_ReversalAdvice_Request"  |"2220118912341518"|"0206"| "OriginalAmount_IS_MISSING"                 |   30         |   "Missing"  | "904"               |"771"  |
|"FLDPrsntSC9TC6"|"Purchase_ReversalAdvice_Request"  |"2220118912341518"|"0206"| "ResponseCode_IS_MISSING"                   |   39         |   "Missing"  | "904"               |"778"  |
|"FLDPrsntSC9TC7"|"Purchase_ReversalAdvice_Request"  |"2220118912341518"|"0206"| "CurrencyCodeTransaction_MISSING"           |  49          |   "Missing"  | "904"               |"797"             |
|"FLDPrsntSC9TC8"|"Purchase_ReversalAdvice_Request"  |"2220118912341518"|"0206"| "OriginalDataElements_IS_MISSING"           |   56         |   "Missing"  | "904"               |"994,996,997,993,995"             |


##Need to analyse|"FLDPrsntSC9TC1"|"Purchase_ReversalAdvice_Request"  |"2220118912341518"|"0206"| "ProcessingCode_FromAccount"                |    3         |   "Missing"  | "904"               |"746"             |
|"FLDPrsntSC9TC9"|"Purchase_ReversalAdvice_Request"  |"2220118912341518"|"0206"| "Amount_MISSING"                            |  4           |   "Missing"  | "904"               |"748,771"             |
##Need to analyse|"FLDPrsntSC9TC1"|"Purchase_ReversalAdvice_Request"  |"2220118912341518"|"0206"| "FunctionCode_IS_MISSING"                   |   24         |   "Missing"  | "904"               |"768"  |
|"FLDPrsntSC9TC10"|"Purchase_ReversalAdvice_Request"  |"2220118912341518"|"0206"| "AcquiringInstitutionIdCode_IS_MISSING"     |   32         |   "Missing"  | "904"               |"772"             |
#|"FLDPrsntSC9TC11"|"Purchase_ReversalAdvice_Request"  |"2220118912341518"|"0206"| "RetrievalReferenceNumber_IS_MISSING"       |   37         |   "Missing"  | "904"               |"776"             |
|"FLDPrsntSC9TC12"|"Purchase_ReversalAdvice_Request"  |"2220118912341518"|"0206"| "CardAcceptorTerminalId_IS_MISSING"         |   41         |   "Missing"  | "904"               |"780"             |
|"FLDPrsntSC9TC13"|"Purchase_ReversalAdvice_Request"  |"2220118912341518"|"0206"| "CardAcceptorIdCode_IS_MISSING"             |  42          |   "Missing"  | "904"               |"781"             |

@MustNotFLD_RevAdvRequest_Present

Scenario Outline: Validate  transactions with different must not fields present for purchase reversal advice request
Given Validation of scenario <TestCaseId> for tran type <TranType> and CardNumber <CardNumber>
Given Initiate "Purchase" transaction for <CardNumber> CVV as <cvv>
When  Acquirer forwards the message to SmartEdge
And Message is processed by issuer and repsonse is sent back to the acquirer
Then Verify if acquirer received 000 response
But Initiate <TranType> transaction for <CardNumber> CVV as <cvv> using <FieldName> <FieldId> and <Value> 
When  Acquirer forwards the message to SmartEdge 
Then  Verify acquirer response <AcquirerResponse_F39> and <AdditionalResponse_F46>


Examples:

|TestCaseId       |TranType                           | CardNumber       |cvv   |FieldName                                       |FieldId       |   Value      |AcquirerResponse_F39 |AdditionalResponse_F46|
|"FLDPrsntSC10TC1"|"Purchase_ReversalAdvice_Request"  |"2220118912341518"|"0206"| "DateExpiration_NOT_ALLOWED"                   |    14        |   "1812"     |     "904"           |    "820"             |       
|"FLDPrsntSC10TC2"|"Purchase_ReversalAdvice_Request"  |"2220118912341518"|"0206"| "DateSettlement_NOT_ALLOWED"                   |    15        |   "181229"   |     "904"           |    "821"             |       
|"FLDPrsntSC10TC3"|"Purchase_ReversalAdvice_Request"  |"2220118912341518"|"0206"| "MessageReasonCode_NOT_ALLOWED"                |    25        |   "1001"     |     "904"           |    "837"             |       
#Need to analyse|"FLDPrsntSC10TC4"|"Purchase_ReversalAdvice_Request"  |"2220118912341518"|"0206"| "TrackData1_NOT_ALLOWED"                       |   45         | "TrackData1" |     "904"           |"928,929,930,931,932,933,934,935,936,937,938,939,940,941,942,943,944"        |
|"FLDPrsntSC10TC5"|"Purchase_ReversalAdvice_Request"  |"2220118912341518"|"0206"| "TrackData2_NOT_ALLOWED"                       |   35         | "TrackData2" |     "904"           |"901,902,903,904,905,906,907,908,909"             |
|"FLDPrsntSC10TC6"|"Purchase_ReversalAdvice_Request"  |"2220118912341518"|"0206"| "TrackData3_NOT_ALLOWED"                     |   36         | "TrackData3" |     "904"           |"843"       |
|"FLDPrsntSC10TC7"|"Purchase_ReversalAdvice_Request"  |"2220118912341518"|"0206"| "PinData_NOT_ALLOWED"                          |   52         | "PINData"    |     "904"           |"866"             |
|"FLDPrsntSC10TC8"|"Purchase_ReversalAdvice_Request"  |"2220118912341518"|"0206"|"SecurityRelatedControlInformation_NOT_ALLOWED" |   53         |   "0101010101"     |      "904"               |"979,980,981,982,983"             |
##Need to analyse|"FLDPrsntSC10TC9"|"Purchase_ReversalAdvice_Request"  |"2220118912341518"|"IntegratedCircuitCardSystemRelatedData_NOT_ALLOWED"|   55         |   "000"     |     "904"               |"869"             |


