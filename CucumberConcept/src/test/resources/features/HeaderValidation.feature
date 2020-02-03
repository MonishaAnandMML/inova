@PipelineFix
Feature: Header Validation
@HeaderValidation_InvalidValue_Request
  Scenario Outline: Send ISOMsg with invalid values for different header elemnts in purchase request messsage
  Given Validation of scenario <TestCaseId> for tran type <TranType> and CardNumber <CardNumber>
  Given Initiate <TranType> transaction for <CardNumber> CVV as <cvv> with  invalid value <value> in <HeaderField> in Message Header
  When  Acquirer forwards the message to SmartEdge 
  And   Verify acquirer gets message with reject header and message status as <MessageStatus>
 Examples: 
 |TestCaseId                         |CardNumber    |cvv  | TranType | value | HeaderField        | MessageStatus|
|"InvalidHDRFormtValue"        |"2220228912341523"  |"0570"|"Purchase"|"8"    | "HeaderFormatID"   |    "15"   |
|"InvalidNWIDValue"            |"2220228912341523"  |"0570"|"Purchase"|"20"    | "NetworkID"        |    "102"   |
|"InvalidMsgFormatIDValue"     |"2220228912341523"  |"0570"|"Purchase"|"8"    | "MessageFormatId"      |    "103"   |
|"InvalidDestEPValue"          |"2220228912341523"  |"0570"|"Purchase"|"81"    | "DestinationEndpointID"           |    "104"   |
#|"InvalidHDR_SrcEP_Value"    |"2220228912341523"  |"0570"|"Purchase"|"9"    | "SrcEP"            |    "0015"   |

	
	@HeaderValidation_InvalidFormat-Request
	Scenario Outline: Send ISOMsg with invalid values for different header elemnts in purchase response messsage
  Given Validation of scenario <TestCaseId> for tran type <TranType> and CardNumber <CardNumber>
  Given Initiate <TranType> transaction for <CardNumber> CVV as <cvv> with  invalid value <value> in <HeaderField> in Message Header
  When  Acquirer forwards the message to SmartEdge 
  And   Verify acquirer gets message with reject header and message status as <MessageStatus>
  
  #Examples: 
 |TestCaseId                         |CardNumber          |cvv   | TranType | value | HeaderField        | MessageStatus|
|"InvalidHDRFormtValue"        |"2220228912341523"  |"0570"|"Purchase"|"K"    | "HeaderFormatID"   |    "50"   |
#|"InvalidNWIDValue"            |"2220228912341523"  |"0570"|"Purchase"|"8"    | "NetworkID"        |    "102"   |
#|"InvalidMsgFormatIDValue"     |"2220228912341523"  |"0570"|"Purchase"|"8"    | "MessageFormatId"      |    "103"   |
#|"InvalidDestEPValue"          |"2220228912341523"  |"0570"|"Purchase"|"27"    | "DestinationEndpointID"           |    "104"   |
#	|"InvalidHDR_SrcEP_Value"           |"2220228912341523"  |"Purchase"|"8"    | "SrcEP"            |    "0015"   |

	@HeaderValidation_InvalidValue_Response
  Scenario Outline: Send ISOMsg with invalid values for different header elemnts in purchase request messsage
  Given Validation of scenario <TestCaseId> for tran type <TranType> and CardNumber <CardNumber>
 Given Initiate <TranType> transaction for <CardNumber> CVV as <cvv>
  When  Acquirer forwards the message to SmartEdge
  And Issuer processes the message, sets invalid value <value> in field <HeaderField> and sends back the response
  And   Verify issuer gets message with reject header and message status as <MessageStatus>
 Examples: 
 |TestCaseId                   |CardNumber    |cvv  | TranType | value | HeaderField        | MessageStatus|
|"InvalidHDRFormtValue"        |"2220228912341523"  |"0570"|"Purchase"|"8"    | "HeaderFormatID"   |    "15"   |
|"InvalidNWIDValue"            |"2220118912341518"  |"0570"|"Purchase"|"20"    | "NetworkID"        |    "102"   |
|"InvalidMsgFmtIDValue"        |"2220118912341518"  |"0570"|"Purchase"|"8"    | "MessageFormatId"      |    "103"   |
#|"InvalidDestEPValue"          |"2220118912341518"  |"0570"|"Purchase"|"9"    | "DestinationEndpointID"           |    "104"   |
#|"InvalidHDRSrcEPValue"           |"2220118912341518"  |"Purchase"|"27"    | "SrcEP"            |    "0015"   |

	
	 
	
	
	
