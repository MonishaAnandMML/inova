#@PipelineFix
Feature: STIP applicability testing 
@STIPApplicability_LimitCheck
Scenario Outline: Validate Stip applicability based on tran type, limit check status,

Given Validation of scenario <TestCaseId> for tran type <TranType> and CardNumber <CardNumber>
Given Initiate transaction with <transactionclassification> <CardNumber> CVV as <cvv> <CardProductId> <TranType> <merchantcategorycode> <trackData> <PINdata> <CVV2> for Amount <Amount> qualifying <LimitcheckStatus>
When  Acquirer forwards the message to SmartEdge
Then  Verify if acquirer received 951 response

Examples:


|TestCaseId     |transactionclassification    |CardNumber            |cvv   |CardProductId    |TranType   |merchantcategorycode|trackData     |PINdata         |CVV2|Amount        |LimitcheckStatus| 
|"STIPChkSC1TC1"|"CHIP_PIN_ONPREMISE"         |"2220118912341518"         |"0446"  |"123001"         |  "00"     | "5231"             |  "TrackData"  |"PINData" | "CVV2_NotPresent"  |"5000" | "true"         |
#|"STIPChkSC1TC2"|"CHIP_PIN_ONPREMISE"         |"2220118912341518"         |"123001"        |  "01"     | "6011"             |  "TrackData"  |"PINData" | "CVV2_NotPresent"  |"5000"| "true"         |
#|"STIPChkSC1TC3"|"ECOM"                       |"2220118912341518"    |"123001"         |  "00"     | "5621"             |  "NoTrackData"  |"NoPINData" |"CVV2_Present"| "1000"  | "true"         |

@STIPNonApplicability_LimitCheck
Scenario Outline: Validate Stip Nonapplicability based on tran type, limit check status

Given Validation of scenario <TestCaseId> for tran type <TranType> and CardNumber <CardNumber>
Given Initiate transaction with <transactionclassification> <CardNumber> CVV as <cvv> <CardProductId> <TranType> <merchantcategorycode> <trackData> <PINdata> <CVV2> for Amount <Amount> qualifying <LimitcheckStatus>
When  Acquirer forwards the message to SmartEdge
And Message is processed by issuer and repsonse is sent back to the acquirer
Then  Verify if acquirer received 000 response

#Examples:


|TestCaseId     |transactionclassification    |CardNumber            |cvv  |CardProductId    |TranType   |merchantcategorycode|trackData     |PINdata         |CVV2|Amount        |LimitcheckStatus| 
|"STIPChkSC1TC1"|"CHIP_PIN_ONPREMISE"    |"2220118912341518"         |"0206"  |"123001"         |  "00"     | "5231"             |  "TrackData"  |"PINData" | "CVV2_NotPresent"  |"50000" | "true"         |
|"STIPChkSC1TC2"|"CHIP_PIN_ONPREMISE"    |"2220118912341518"         |"0206"  |"123001"        |  "01"     | "6011"             |  "TrackData"  |"PINData" | "CVV2_NotPresent"  |"50000"| "true"         |
#|"STIPChkSC1TC3"|"ECOM"                       |"2220118912341518"    |"0206"  |"123001"         |  "00"     | "5231"             |  "NoTrackData"  |"NoPINData" |"CVV2_Present"| "11000"  | "true"         |


#@SC2
#Scenario Outline: Validate Stip non-applicability based on tran type, limit check status,
#
#Given Validation of scenario <TestCaseId> for tran type <TranType> and CardNumber <CardNumber>
#Given Initiate transaction with <transactionclassification> <CardNumber> <CardProductId> <TranType> <merchantcategorycode> <trackData> <PINdata> <CVV2> for Amount <Amount> qualifying <LimitcheckStatus>
#When  Acquirer forwards the message to SmartEdge
#Then  Verify if acquirer received 951 response
#And Message is processed by issuer and repsonse is sent back to the acquirer
#
#
#Examples:
#
#
#|TestCaseId     |transactionclassification    |CardNumber            |CardProductId    |TranType   |merchantcategorycode|trackData     |PINdata         |CVV2|Amount        |LimitcheckStatus| 
#|"STIPChkSC1TC1"|"CHIP_PIN_ONPREMISE"    |"2220118912341518"         |"123001"         |  "00"     | "5231"             |  "TrackData"  |"InvalidInPINData" | "CVV2_NotPresent"  |"50000" | "true"         |
#|"STIPChkSC1TC2"|"CHIP_PIN_ONPREMISE"    |"2220118912341518"         |"123001"        |  "01"     | "6011"             |  "TrackData"  |"InvalidPINData" | "CVV2_NotPresent"  |"50000"| "true"         |
#|"STIPChkSC1TC3"|"ECOM"                       |"2220118912341518"    |"123001"         |  "00"     | "5621"             |  "NoTrackData"  |"InvalidPINData" |"CVV2_NotPresent"| "10000"  | "true"         |
#
#
#
#@SC3
#Scenario Outline: Validate Stip applicability based on tran type, limit check status,
#
#Given Validation of scenario <TestCaseId> for tran type <TranType> and CardNumber <CardNumber>
#Given Initiate transaction with <transactionclassification> <CardNumber> <CardProductId> <TranType> <merchantcategorycode> <trackData> <PINdata> <CVV2> for Amount <Amount> qualifying <LimitcheckStatus>
#When  Acquirer forwards the message to SmartEdge
#Then  Verify if acquirer received 951 response
#And Message is processed by issuer and repsonse is sent back to the acquirer
#
#
#Examples:
#
#
#|TestCaseId     |transactionclassification    |CardNumber            |CardProductId    |TranType   |merchantcategorycode|trackData     |PINdata         |CVV2|Amount        |LimitcheckStatus| 
#|"STIPChkSC1TC1"|"CHIP_PIN_ONPREMISE"    |"2220118912341518"         |"123001"         |  "00"     | "5231"             |  "TrackData"  |"InvalidInPINData" | "CVV2_NotPresent"  |"50000" | "true"         |
#|"STIPChkSC1TC2"|"CHIP_PIN_ONPREMISE"    |"2220118912341518"         |"123001"        |  "01"     | "6011"             |  "TrackData"  |"InvalidPINData" | "CVV2_NotPresent"  |"50000"| "true"         |
#|"STIPChkSC1TC3"|"ECOM"                       |"2220118912341518"    |"123001"         |  "00"     | "5621"             |  "NoTrackData"  |"InvalidPINData" |"CVV2_NotPresent"| "10000"  | "true"         |
#
