@PipelineFix
Feature: Incoming Message Field Validation
@MessageFieldValidation
Scenario Outline: Send transactions with different  inavlid value combinations for various fields
Given Validation of scenario <TestCaseId> for tran type <TranType> and CardNumber <CardNumber>
Given Initiate <TranType> transaction for <CardNumber> CVV as <CVV> using <FieldName> <FieldId> and <Value> 
When  Acquirer forwards the message to SmartEdge 
Then  Verify acquirer response <AcquirerResponse_F39> and <AdditionalResponse_F46>

Examples:


|TestCaseId |TranType          | CardNumber       | CVV   |FieldName                                             |FieldId    |  Value          |AcquirerResponse_F39 |AdditionalResponse_F46     |
#|"FLDChkSC1TC1"|"Purchase"        |"2220118912341518"|"0446"| "PrimaryAccountNumber_INVALID_VALUE"                 |  2        |"222044900001005"| "915"              |"2003"                     |
|"FLDChkSC1TC2"|"Purchase"        |"2220118912341518"|"0446"| "ProcessingCodeFromAccount_INVALID_VALUE"   			   |  3        |"005010"         | "904"               |"703"                      |
|"FLDChkSC1TC3"|"Purchase"        |"2220118912341518"|"0446"| "ProcessingCodeToAccount_INVALID_VALUE"    			     |  3        |"001060"         | "904"               |"704"                      |
|"FLDChkSC1TC4"|"Purchase"        |"2220118912341518"|"0446"| "DateExpiration_INVALID_VALUE"                       |   14       |"2216"   | "904"              |"310,977"                     |
|"FLDChkSC1TC5"|"Purchase"        |"2220118912341518"|"0446"| "SystemsTraceAuditNumber_INVALID_VALUE"             |   11       |"000000"   | "904"              |"975"                     |
|"FLDChkSC1TC6"|"Purchase"        |"2220118912341518"|"0446"| "DateAndTimeLocalTransaction_INVALID_VALUE"          |   12       |"911320010101"   | "904"              |"309"                     |
|"FLDChkSC1TC7"|"Purchase"        |"2220118912341518"|"0446"| "PosDataCodeInputCapability_INVALID_VALUE"           |  22       |"71030X112345"   | "904"               |"705"                      |
|"FLDChkSC1TC8"|"Purchase"        |"2220118912341518"|"0446"| "PosDataCodeAuthenticationCapability_INVALID_VALUE"  |  22       |"07030X112345"   | "904"               |"706"                      |
|"FLDChkSC1TC9"|"Purchase"        |"2220118912341518"|"0446"| "PosDataCodeCaptureCapability__INVALID_VALUE"   		 |  22       |"01230X112345"   | "904"               |"707"                       |
|"FLDChkSC1TC10"|"Purchase"        |"2220118912341518"|"0446"| "PosDataCodeOperatingEnvironment_INVALID_VALUE"   	 |  22       |"01060X112345"   | "904"               |"708"                      |
|"FLDChkSC1TC11"|"Purchase"        |"2220118912341518"|"0446"| "PosDataCodeCardholderPresent_INVALID_VALUE"    		 |  22       |"01035X112345"   | "904"               |"709"                      |
|"FLDChkSC1TC12"|"Purchase"        |"2220118912341518"|"0446"| "PosDataCodeCardPresent_INVALID_VALUE"    		 	     |  22       |"01030Y112345"   | "904"               |"710"                      |
|"FLDChkSC1TC13"|"Purchase"        |"2220118912341518"|"0446"| "PosDataCodeCardDataInputMode_INVALID_VALUE"   		 	 |  22       |"01030X712345"   | "904"               |"711"                      |
|"FLDChkSC1TC14"|"Purchase"        |"2220118912341518"|"0446"| "PosDataCodeAuthenticationMethod_INVALID_VALUE"   	 |  22       |"01030X182345"   | "904"               |"712"                      |
|"FLDChkSC1TC15"|"Purchase"        |"2220118912341518"|"0446"| "PosDataCodeAuthenticationEntity_INVALID_VALUE" 	   |  22       |"01030X116345"   | "904"               |"713"                      |
|"FLDChkSC1TC16"|"Purchase"        |"2220118912341518"|"0446"| "PosDataCodeOutputCapability_INVALID_VALUE"    	 		 |  22       |"01030X112545"   | "904"               |"714"                      |
|"FLDChkSC1TC17"|"Purchase"        |"2220118912341518"|"0446"| "PosDataCodeTerminalCapability_INVALID_VALUE"  		   |  22       |"01030X112365"   | "904"               |"715"                      |
|"FLDChkSC1TC18"|"Purchase"        |"2220118912341518"|"0446"| "PosDataCodePINCaptureCapability_INVALID_VALUE"   	 | 22        |"01030X11234D"   | "904"               |"716"                     |
|"FLDChkSC1TC19"|"Purchase"        |"2220118912341518"|"0446"| "MerchantCategoryCode_INVALID_VALUE"                |  26         |"2000"          | "904"               |"719"                     |
|"FLDChkSC1TC20"|"Purchase"        |"2220118912341518"|"0446"| "ForwardingInstitutionIdCode_INVALID_VALUE"          |  33         |"0004"          | "904"              |"721"                     |
|"FLDChkSC1TC21"|"Purchase"        |"2220118912341518"|"0446"| "ServiceRestrictionCode_INVALID_VALUE"            |  40           |"314"         | "904"                 |"971,972,973"             |
|"FLDChkSC1TC22"|"Purchase"        |"2220118912341518"|"0446"| "ServiceRestrictionCodePos1_INVALID_VALUE"           |  40       |"300"             | "904"              |"971"                     |
|"FLDChkSC1TC23"|"Purchase"        |"2220118912341518"|"0446"| "ServiceRestrictionCodePos2_INVALID_VALUE"           |  40       |"110"             | "904"              |"972"                     |
|"FLDChkSC1TC24"|"Purchase"        |"2220118912341518"|"0446"| "ServiceRestrictionCodePos3_INVALID_VALUE"           |  40       |"124"             | "904"              |"973"                     |
|"FLDChkSC1TC25"|"Purchase"        |"2220118912341518"|"0446"| "CurrencyCodeTransaction_INVALID_VALUE"             |  49         |"234"           | "904"               |"726"                     |
|"FLDChkSC1TC26"|"Purchase"        |"2220118912341518"|"0446"| "DestinationInstitutionId_INVALID_VALUE"          |  100           |"0005"         | "904"                      |"727"              |
#|"FLDChkSC1TC27"|"Purchase"        |"2220118912341518"|"0446"| "AmountTransaction_INVALID_VALUE"                   |  4        |"000000000000"   | "904"              |"974"                     |
#Due to bug 89|"FLDChkSC1TC28"|"Purchase"        |"2220118912341518"| "TransmissionDateAndTime_INVALID_VALUE"             |   7       |"181323123035"   | "904"              |"307"                     |
#
#Not able to reproduce |"Purchase"        |"2220118912341518"| "AcquiringInstitutionIdCode_INVALID_VALUE"           |  32       |"900001"         | "905"               |"720"                     |
#Not able to reproduce|"Purchase" |"2220118912341518"| "CardSequenceNumber_INVALID_VALUE" | 23 |"999" | "904" |"309" |
## CriticalField |"Purchase"        |"2220118912341518"| "FunctionCode_INVALID_VALUE"                         |  24       |"201"            | "904"               |"717"                     |
#|"Purchase"        |"2220118912341518"| "AmountTransaction_INVALID_VALUE"                   |  4        |"000123459876"   | "110"              |"306"                     |
#
#
#Scenario Outline: Send transactions with different  inavlid format combinations for various fields
#
#Given Initiate <TranType> transaction for <CardNumber> using <FieldName> <FieldId> and <Value>
#When  Acquirer forwards the message to SmartEdge 
#Then  Verify acquirer response <AcquirerResponse_F39> and <AdditionalResponse_F46> for invalid format
#
#Examples:
#
#
#|TranType          | CardNumber       |FieldName                                             |FieldId    |  Value          |AcquirerResponse_F39 |AdditionalResponse_F46     |
#|"Purchase"        |"2220118912341518"| "AmountTransaction_INVALID_FORMAT"                 | 4        |"<+>+"| "908"              |"701"                     |
#
