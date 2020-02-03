@TRNCLSTC
Feature: TransactionClassification Test scenerio
 

 @TransactionClassification
  Scenario Outline: Validate TransactionClassification checks 
  
  Given Validation of scenario <TestCaseId> for tran type <TranType> and CardNumber <CardNumber>
  Given Initiate <TranType> <transactionclassification> transaction for <CardNumber> <MerchantCategoryCode> <trackdata> <PINdata> <Pos1> <Pos2> <Pos4> <Pos5> <Pos6> <Pos7> <Pos8> <Pos10> <TransactionCode>
  When  Acquirer forwards the message to SmartEdge 
  Then  Verify Issuer<TransactionCode> received by issuer from smartEdge
  And   Message is processed by issuer and repsonse is sent back to the acquirer
 Examples: 

|TestCaseId           |TranType   |transactionclassification                          | CardNumber         |MerchantCategoryCode    |TrackData          | PINdata      |Pos1 | Pos2  |Pos4  | Pos5  | Pos6 | Pos7 | Pos8 | Pos10 |TransactionCode|
|"TRNCLSTC1"          | "00"      |"CHIP_PIN_OFFPREMISE"                              |"2220118912341518"  |"3005"                  |"TrackData"        | "PINdata"    | "5" |"1"    |"3"   | "0"   |  "1" | "5"  | "1"  |   "3" |         "100" |
|"TRNCLSTC2"          | "00"      |"CHIP_PIN_OFFPREMISE"                              |"2220118912341518"  |"3000"                  |"TrackData"        | "PINdata"    | "5" |"1"    |"3"   | "0"   |  "1" | "5"  | "1"  |   "3" |         "100" |
|"TRNCLSTC3"          | "00"      |"CHIP_PIN_OFFPREMISE"                              |"2220118912341518"  |"4511"                  |"TrackData"        | "PINdata"    | "5" |"1"    |"3"   | "0"   |  "1" | "5"  | "1"  |   "3" |         "100" |
|"TRNCLSTC4"          | "00"      |"FALLBACK_CHIP_PIN_OFFPREMISE"                     |"2220118912341518"  |"3009"                  |"TrackData"        | "PINdata"    | "5" |"1"    |"3"   | "0"   |  "1" | "9"  | "1"  |   "3" |         "200" |
|"TRNCLSTC5"          | "00"      |"FALLBACK_CHIP_PIN_OFFPREMISE"                     |"2220118912341518"  |"3026"                  |"TrackData"        | "PINdata"    | "5" |"1"    |"3"   | "0"   |  "1" | "9"  | "1"  |   "3" |         "200" |
|"TRNCLSTC6"          | "00"      |"FALLBACK_CHIP_PIN_OFFPREMISE"                     |"2220118912341518"  |"3031"                  |"TrackData"        | "PINdata"    | "5" |"1"    |"3"   | "0"   |  "1" | "9"  | "1"  |   "3" |         "200" |
|"TRNCLSTC7"          | "00"      |"MAILORDER"                                        |"2220118912341518"  |"2741"                  |"NOTrackData"      | "NOPINdata"  | "0" |"2"    |"0"   | "2"   |  "0" | "1"  | "0"  |   "1" |         "300" |
|"TRNCLSTC8"          | "00"      |"MAILORDER"                                        |"2220118912341518"  |"5074"                  |"NOTrackData"      | "NOPINdata"  | "0" |"2"    |"0"   | "2"   |  "0" | "1"  | "0"  |   "1" |         "300" |
|"TRNCLSTC9"          | "00"      |"MAILORDER"                                        |"2220118912341518"  |"5099"                  |"NOTrackData"      | "NOPINdata"  | "0" |"2"    |"0"   | "2"   |  "0" | "1"  | "0"  |   "1" |         "300" |
|"TRNCLSTC10"         | "00"      |"MAILORDER"                                        |"2220118912341518"  |"4813"                  |"NOTrackData"      | "NOPINdata"  | "1" |"1"    |"4"   | "2"   |  "0" | "1"  | "0"  |   "0" |         "300" |
|"TRNCLSTC11"         | "00"      |"MAILORDER"                                        |"2220118912341518"  |"4814"                  |"NOTrackData"      | "NOPINdata"  | "1" |"1"    |"4"   | "2"   |  "0" | "1"  | "0"  |   "0" |         "300" |
|"TRNCLSTC12"         | "00"      |"MAILORDER"                                        |"2220118912341518"  |"4815"                  |"NOTrackData"      | "NOPINdata"  | "1" |"1"    |"4"   | "2"   |  "0" | "1"  | "0"  |   "0" |         "300" |
|"TRNCLSTC13"         | "00"      |"TELEORDER"                                        |"2220118912341518"  |"5044"                  |"NOTrackData"      | "NOPINdata"  | "0" |"4"    |"5"   | "3"   |  "0" | "1"  | "4"  |   "2" |         "400" |
|"TRNCLSTC14"         | "00"      |"TELEORDER"                                        |"2220118912341518"  |"5045"                  |"NOTrackData"      | "NOPINdata"  | "0" |"4"    |"5"   | "3"   |  "0" | "1"  | "4"  |   "2" |         "400" |
|"TRNCLSTC15"         | "00"      |"TELEORDER"                                        |"2220118912341518"  |"5046"                  |"NOTrackData"      | "NOPINdata"  | "0" |"4"    |"5"   | "3"   |  "0" | "1"  | "4"  |   "2" |         "400" |
|"TRNCLSTC16"         | "00"      |"TELEORDER"                                        |"2220118912341518"  |"2741"                  |"NOTrackData"      | "NOPINdata"  | "1" |"3"    |"9"   | "3"   |  "0" | "1"  | "5"  |   "3" |         "400" |
|"TRNCLSTC17"         | "00"      |"TELEORDER"                                        |"2220118912341518"  |"5074"                  |"NOTrackData"      | "NOPINdata"  | "1" |"3"    |"9"   | "3"   |  "0" | "1"  | "5"  |   "3" |         "400" |
|"TRNCLSTC18"         | "00"      |"TELEORDER"                                        |"2220118912341518"  |"5047"                  |"NOTrackData"      | "NOPINdata"  | "1" |"3"    |"9"   | "3"   |  "0" | "1"  | "5"  |   "3" |         "400" |
|"TRNCLSTC19"         | "00"      |"KEYENTRY_MAILORDER"                               |"2220118912341518"  |"7375"                  |"NOTrackData"      | "NOPINdata"  | "6" |"6"    |"S"   | "2"   |  "0" | "1"  | "6"  |   "1" |         "500" |
|"TRNCLSTC20"         | "00"      |"KEYENTRY_MAILORDER"                               |"2220118912341518"  |"5074"                  |"NOTrackData"      | "NOPINdata"  | "6" |"6"    |"S"   | "2"   |  "0" | "1"  | "6"  |   "1" |         "500" |
|"TRNCLSTC21"         | "00"      |"KEYENTRY_MAILORDER"                               |"2220118912341518"  |"5199"                  |"NOTrackData"      | "NOPINdata"  | "6" |"6"    |"S"   | "2"   |  "0" | "1"  | "6"  |   "1" |         "500" |
|"TRNCLSTC22"         | "00"      |"KEYENTRY_TELEORDER"                               |"2220118912341518"  |"7379"                  |"NOTrackData"      | "NOPINdata"  | "6" |"0"    |"T"   | "3"   |  "0" | "1"  | "S"  |   "3" |         "600" |
|"TRNCLSTC23"         | "00"      |"KEYENTRY_TELEORDER"                               |"2220118912341518"  |"8734"                  |"NOTrackData"      | "NOPINdata"  | "6" |"0"    |"T"   | "3"   |  "0" | "1"  | "S"  |   "3" |         "600" |
|"TRNCLSTC24"         | "00"      |"KEYENTRY_TELEORDER"                               |"2220118912341518"  |"5111"                  |"NOTrackData"      | "NOPINdata"  | "6" |"0"    |"T"   | "3"   |  "0" | "1"  | "S"  |   "3" |         "600" |
|"TRNCLSTC25"         | "00"      |"CHIP_PIN_AT_CARDMEMEBER_UNATTN"                   |"2220118912341518"  |"3009"                  |"TrackData"        | "PINdata"    | "5" |"1"    |"5"   | "0"   |  "1" | "5"  | "1"  |   "3" |         "700" |
|"TRNCLSTC26"         | "00"      |"CHIP_PIN_AT_CARDMEMEBER_UNATTN"                   |"2220118912341518"  |"3026"                  |"TrackData"        | "PINdata"    | "5" |"1"    |"5"   | "0"   |  "1" | "5"  | "1"  |   "3" |         "700" |
|"TRNCLSTC27"         | "00"      |"CHIP_PIN_AT_CARDMEMEBER_UNATTN"                   |"2220118912341518"  |"3031"                  |"TrackData"        | "PINdata"    | "5" |"1"    |"5"   | "0"   |  "1" | "5"  | "1"  |   "3" |         "700" |
|"TRNCLSTC28"         | "00"      |"TELEORDER"                                        |"2220118912341518"  |"3359"                  |"NOTrackData"      | "NOPINdata"  | "0" |"4"    |"5"   | "3"   |  "0" | "1"  | "4"  |   "2" |         "800" |
|"TRNCLSTC29"         | "00"      |"TELEORDER"                                        |"2220118912341518"  |"3420"                  |"NOTrackData"      | "NOPINdata"  | "0" |"4"    |"5"   | "3"   |  "0" | "1"  | "4"  |   "2" |         "800" |
|"TRNCLSTC30"         | "00"      |"TELEORDER"                                        |"2220118912341518"  |"3421"                  |"NOTrackData"      | "NOPINdata"  | "0" |"4"    |"5"   | "3"   |  "0" | "1"  | "4"  |   "2" |         "800" |
|"TRNCLSTC31"         | "00"      |"CHIP_PIN_ONPREMISE_UNATTN_FUEL"                   |"2220118912341518"  |"3501"                  |"TrackData"        | "PINdata"    | "5" |"1"    |"2"   | "0"   |  "1" | "5"  | "1"  |   "3" |         "900" |
|"TRNCLSTC32"         | "00"      |"CHIP_PIN_ONPREMISE_UNATTN_FUEL"                   |"2220118912341518"  |"3622"                  |"TrackData"        | "PINdata"    | "5" |"1"    |"2"   | "0"   |  "1" | "5"  | "1"  |   "3" |         "900" |
|"TRNCLSTC33"         | "00"      |"CHIP_PIN_ONPREMISE_UNATTN_FUEL"                   |"2220118912341518"  |"3625"                  |"TrackData"        | "PINdata"    | "5" |"1"    |"2"   | "0"   |  "1" | "5"  | "1"  |   "3" |         "900" |
|"TRNCLSTC34"         | "00"      |"CHIP_PIN_ONPREMISE_UNATTN_FUEL"                   |"2220118912341518"  |"4111"                  |"TrackData"        | "PINdata"    | "5" |"1"    |"2"   | "0"   |  "1" | "5"  | "1"  |   "3" |         "1000" |
|"TRNCLSTC35"         | "00"      |"CHIP_PIN_ONPREMISE_UNATTN_FUEL"                   |"2220118912341518"  |"4112"                  |"TrackData"        | "PINdata"    | "5" |"1"    |"2"   | "0"   |  "1" | "5"  | "1"  |   "3" |         "1000" |
|"TRNCLSTC36"         | "00"      |"CHIP_PIN_ONPREMISE_UNATTN_FUEL"                   |"2220118912341518"  |"4131"                  |"TrackData"        | "PINdata"    | "5" |"1"    |"2"   | "0"   |  "1" | "5"  | "1"  |   "3" |         "1000" |
|"TRNCLSTC37"         | "00"      |"CHIP_PIN_ONPREMISE_UNATTN_FUEL"                   |"2220118912341518"  |"5811"                  |"TrackData"        | "PINdata"    | "5" |"1"    |"2"   | "0"   |  "1" | "5"  | "1"  |   "3" |         "1100" |
|"TRNCLSTC38"         | "00"      |"CHIP_PIN_ONPREMISE_UNATTN_FUEL"                   |"2220118912341518"  |"5812"                  |"TrackData"        | "PINdata"    | "5" |"1"    |"2"   | "0"   |  "1" | "5"  | "1"  |   "3" |         "1100" |
|"TRNCLSTC39"         | "00"      |"CHIP_PIN_ONPREMISE_UNATTN_FUEL"                   |"2220118912341518"  |"5813"                  |"TrackData"        | "PINdata"    | "5" |"1"    |"2"   | "0"   |  "1" | "5"  | "1"  |   "3" |         "1100" |
|"TRNCLSTC40"         | "00"      |"ECOM"                                             |"2220118912341518"  |"5199"                  |"NOTrackData"      | "NOPINdata"  | "6" |"6"    |"S"   | "S"   |  "0" | "0"  | "0"  |   "1" |         "1200" |
|"TRNCLSTC41"         | "00"      |"ECOM"                                             |"2220118912341518"  |"5199"                  |"NOTrackData"      | "NOPINdata"  | "6" |"6"    |"S"   | "S"   |  "1" | "0"  | "0"  |   "1" |         "1200" |
|"TRNCLSTC42"         | "00"      |"ECOM SECURE"                                      |"2220118912341518"  |"7379"                  |"NOTrackData"      | "NOPINdata"  | "6" |"0"    |"S"   | "S"   |  "0" | "0"  | "S"  |   "3" |         "1300" |
|"TRNCLSTC43"         | "00"      |"ECOM SECURE"                                      |"2220118912341518"  |"7379"                  |"NOTrackData"      | "NOPINdata"  | "6" |"0"    |"S"   | "S"   |  "0" | "1"  | "S"  |   "3" |         "1300" |

|"TRNCLSTC42"         | "00"      |"KEYENTRY_TELEORDER"                               |"2220118912341518"  |"8734"                  |"NOTrackData"      | "NOPINdata"  | "6" |"0"    |"T"   | "3"   |  "0" | "1"  | "S"  |   "3" |         "1400" |
|"TRNCLSTC43"         | "00"      |"KEYENTRY_TELEORDER"                               |"2220118912341518"  |"5111"                  |"NOTrackData"      | "NOPINdata"  | "6" |"0"    |"T"   | "3"   |  "0" | "1"  | "S"  |   "3" |         "1500" |

