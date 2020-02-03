@PipelineFix

Feature: TransactionClassification Test scenerio
 

@TransactionClassification
  Scenario Outline: Validate TransactionClassification checks 
  
  Given Validation of scenario <TestCaseId> for tran type <TranType> and CardNumber <CardNumber>
  Given Initiate <TranType> <TransactionClassification> transaction for <CardNumber> <MerchantCategoryCode> <TrackData> <PINData> <cvv> <Pos1> <Pos2> <Pos4> <Pos5> <Pos6> <Pos7> <Pos8> <Pos10> 
  When  Acquirer forwards the message to SmartEdge 
  Then  Verify the TransactionClassification <TransactionCode> received by issuer 
  And   Issuer processes the message and sends back the response
  And  Verify if acquirer received 000 response
  
Examples: 

|TestCaseId           |TranType   |TransactionClassification                           | CardNumber         |MerchantCategoryCode    |TrackData            | PINData        |cvv  |Pos1 | Pos2  |Pos4  | Pos5  | Pos6 | Pos7 | Pos8 | Pos10 |TransactionCode|
|"TRNCLSTC1"          | "00"      |"CHIP_PIN_OFFPREMISE"                               |"2220118912341518"  |"3005"                  |"TrackData"          | "PINData"      |"0446"| "5" |"1"    |"3"   | "0"   |  "1" | "5"  | "1"  |   "3" |         "100" |
|"TRNCLSTC2"          | "00"      |"CHIP_PIN_OFFPREMISE"                              |"2220118912341518"  |"3000"                  |"TrackData"          | "PINData"      |"0446"| "5" |"1"    |"3"   | "0"   |  "1" | "5"  | "1"  |   "3" |         "100" |
|"TRNCLSTC3"          | "00"      |"CHIP_PIN_OFFPREMISE"                              |"2220118912341518"  |"3006"                  |"TrackData"          | "PINData"      |"0446"| "5" |"1"    |"3"   | "0"   |  "1" | "5"  | "1"  |   "3" |         "100" |

|"TRNCLSTC4"          | "00"      |"FALLBACK_CHIP_PIN_OFFPREMISE"                     |"2220118912341518"  |"3009"                  |"TrackData"          | "PINData"      |"0446"| "5" |"1"    |"3"   | "0"   |  "1" | "9"  | "1"  |   "3" |         "200" |
|"TRNCLSTC5"          | "00"      |"FALLBACK_CHIP_PIN_OFFPREMISE"                     |"2220118912341518"  |"3026"                  |"TrackData"          | "PINData"      |"0446"| "5" |"1"    |"3"   | "0"   |  "1" | "9"  | "1"  |   "3" |         "200" |
|"TRNCLSTC6"          | "00"      |"FALLBACK_CHIP_PIN_OFFPREMISE"                     |"2220118912341518"  |"3031"                  |"TrackData"          | "PINData"      |"0446"| "5" |"1"    |"3"   | "0"   |  "1" | "9"  | "1"  |   "3" |         "200" |

|"TRNCLSTC7"          | "00"      |"MAILORDER"                                        |"2220118912341518"  |"2741"                  |"NOTrackData"        | "NoPINData"    |"0446"| "1" |"0"    |"0"   | "2"   |  "0" | "1"  | "0"  |   "0" |         "300" |
|"TRNCLSTC8"          | "00"      |"MAILORDER"                                        |"2220118912341518"  |"5074"                  |"NOTrackData"        | "NoPINData"    |"0446"| "1" |"0"    |"0"   | "2"   |  "0" | "1"  | "0"  |   "0" |         "300" |
|"TRNCLSTC9"          | "00"      |"MAILORDER"                                        |"2220118912341518"  |"5099"                  |"NOTrackData"        | "NoPINData"    |"0446"| "1" |"0"    |"0"   | "2"   |  "0" | "1"  | "0"  |   "0" |         "300" |
|"TRNCLSTC10"         | "00"      |"MAILORDER"                                        |"2220118912341518"  |"4813"                  |"NOTrackData"        | "NoPINData"    |"0446"| "1" |"0"    |"0"   | "2"   |  "0" | "1"  | "0"  |   "0" |         "300" |
|"TRNCLSTC11"         | "00"      |"MAILORDER"                                        |"2220118912341518"  |"4816"                  |"NOTrackData"        | "NoPINData"    |"0446"| "1" |"0"    |"0"   | "2"   |  "0" | "1"  | "0"  |   "0" |         "300" |
|"TRNCLSTC12"         | "00"      |"MAILORDER"                                        |"2220118912341518"  |"4815"                  |"NOTrackData"        | "NoPINData"    |"0446"| "1" |"0"    |"0"   | "2"   |  "0" | "1"  | "0"  |   "0" |         "300" |

|"TRNCLSTC13"         | "00"      |"TELEORDER"                                        |"2220118912341518"  |"5044"                  |"NOTrackData"        | "NoPINData"    |"0446"| "0" |"4"    |"5"   | "3"   |  "0" | "1"  | "4"  |   "2" |         "400" |
|"TRNCLSTC14"         | "00"      |"TELEORDER"                                        |"2220118912341518"  |"5045"                  |"NOTrackData"        | "NoPINData"    |"0446"| "0" |"4"    |"5"   | "3"   |  "0" | "1"  | "4"  |   "2" |         "400" |
|"TRNCLSTC15"         | "00"      |"TELEORDER"                                        |"2220118912341518"  |"5046"                  |"NOTrackData"        | "NoPINData"    |"0446"| "0" |"4"    |"5"   | "3"   |  "0" | "1"  | "4"  |   "2" |         "400" |
|"TRNCLSTC16"         | "00"      |"TELEORDER"                                        |"2220118912341518"  |"2741"                  |"NOTrackData"        | "NoPINData"    |"0446"| "1" |"3"    |"9"   | "3"   |  "0" | "1"  | "5"  |   "3" |         "400" |
|"TRNCLSTC17"         | "00"      |"TELEORDER"                                        |"2220118912341518"  |"5074"                  |"NOTrackData"        | "NoPINData"    |"0446"| "1" |"3"    |"9"   | "3"   |  "0" | "1"  | "5"  |   "3" |         "400" |
|"TRNCLSTC18"         | "00"      |"TELEORDER"                                        |"2220118912341518"  |"5047"                  |"NOTrackData"        | "NoPINData"    |"0446"| "1" |"3"    |"9"   | "3"   |  "0" | "1"  | "5"  |   "3" |         "400" |

|"TRNCLSTC19"         | "00"      |"KEYENTRY_MAILORDER"                               |"2220118912341518"  |"2741"                  |"NOTrackData"        | "NoPINData"    |"0446"| "6" |"0"    |"0"   | "2"   |  "0" | "1"  | "0"  |   "0" |         "500" |
|"TRNCLSTC20"         | "00"      |"KEYENTRY_MAILORDER"                               |"2220118912341518"  |"5074"                  |"NOTrackData"        | "NoPINData"    |"0446"| "6" |"6"    |"S"   | "2"   |  "0" | "1"  | "6"  |   "1" |         "500" |
|"TRNCLSTC21"         | "00"      |"KEYENTRY_MAILORDER"                               |"2220118912341518"  |"5199"                  |"NOTrackData"        | "NoPINData"    |"0446"| "6" |"6"    |"S"   | "2"   |  "0" | "1"  | "6"  |   "1" |         "500" |

|"TRNCLSTC22"         | "00"      |"KEYENTRY_TELEORDER"                               |"2220118912341518"  |"5192"                  |"NOTrackData"        | "NoPINData"    |"0446"| "6" |"0"    |"T"   | "3"   |  "0" | "1"  | "S"  |   "3" |         "600" |
|"TRNCLSTC23"         | "00"      |"KEYENTRY_TELEORDER"                               |"2220118912341518"  |"5969"                  |"NOTrackData"        | "NoPINData"    |"0446"| "6" |"0"    |"T"   | "3"   |  "0" | "1"  | "S"  |   "3" |         "600" |
|"TRNCLSTC24"         | "00"      |"KEYENTRY_TELEORDER"                               |"2220118912341518"  |"5111"                  |"NOTrackData"        | "NoPINData"    |"0446"| "6" |"0"    |"T"   | "3"   |  "0" | "1"  | "S"  |   "3" |         "600" |
|"TRNCLSTC25"         | "00"      |"CHIP_PIN_ONPREMISE"                               |"2220118912341518"  |"3000"                  |"TrackData"          | "PINData"      |"0446"| "5" |"1"    |"1"   | "0"   |  "1" | "5"  | "1"  |   "3" |         "700" |
|"TRNCLSTC26"         | "00"      |"CHIP_PIN_ONPREMISE"                               |"2220118912341518"  |"3427"                  |"TrackData"          | "PINData"      |"0446"| "5" |"1"    |"1"   | "0"   |  "1" | "5"  | "1"  |   "3" |         "800" |
|"TRNCLSTC27"         | "00"      |"CHIP_PIN_ONPREMISE"                               |"2220118912341518"  |"3517"                  |"TrackData"          | "PINData"      |"0446"| "5" |"1"    |"1"   | "0"   |  "1" | "5"  | "1"  |   "3" |         "900" |
|"TRNCLSTC28"         | "00"      |"CHIP_PIN_ONPREMISE"                               |"2220118912341518"  |"4111"                  |"TrackData"          | "PINData"      |"0446"| "5" |"1"    |"1"   | "0"   |  "1" | "5"  | "1"  |   "3" |         "1000" |
#|"TRNCLSTC29"         | "00"      |"CHIP_PIN_ONPREMISE"                               |"2220118912341518"  |"5811"                  |"TrackData"          | "PINData"    |"0446"|  "5" |"1"    |"1"   | "0"   |  "1" | "5"  | "1"  |   "3" |         "1100" |
#|"TRNCLSTC31"         | "00"      |"ECOM"                                             |"2220118912341518"  |"3351"                  |"NoTrackData"        | "NoPINData"    |"0446"| "0" |"1"    |"S"   | "S"   |  "0" | "0"  | "0"  |   "3" |         "1300" |
#|"TRNCLSTC32"         | "00"      |"ECOM"                                             |"2220118912341518"  |"3501"                  |"NoTrackData"        | "NoPINData"    |"0446"| "0" |"1"    |"S"   | "S"   |  "0" | "0"  | "0"  |   "3" |         "1400" |
#|"TRNCLSTC33"         | "00"      |"ECOM"                                             |"2220118912341518"  |"4111"                  |"NoTrackData"        | "NoPINData"    |"0446"| "0" |"1"    |"S"   | "S"   |  "0" | "0"  | "0"  |   "3" |         "1500" |
#|"TRNCLSTC34"         | "00"      |"ECOM"                                             |"2220118912341518"  |"5812"                  |"NoTrackData"        | "NoPINData"    |"0446"| "0" |"1"    |"S"   | "S"   |  "0" | "0"  | "0"  |   "3" |         "1600" |
|"TRNCLSTC51"         | "00"      |"RECURRING"                                        |"2220118912341518"  |"9311"                  |"NoTrackData"        | "NoPINData"    |"0446"| "0" |"0"    |"0"   | "9"   |  "0" | "1"  | "0"  |   "0" |         "2000" |
#|"TRNCLSTC52"         | "00"      |"ECOM"                                             |"2220118912341518"  |"5621"                  |"NoTrackData"        | "NoPINData"    |"0446"| "0" |"1"    |"S"   | "S"   |  "0" | "0"  | "0"  |   "3" |         "2100" |
#|"TRNCLSTC53"         | "00"      |"ECOM_SECURE"                                      |"2220118912341518"  |"5621"                  |"NoTrackData"        | "NoPINData"    |"0446"| "0" |"1"    |"S"   | "S"   |  "0" | "0"  | "S"  |   "3" |         "2200" |
|"TRNCLSTC54"         | "00"      |"CHIP_PIN_ONPREMISE"                               |"2220118912341518"  |"5932"                  |"TrackData"          | "PINData"      |"0446"| "5" |"1"    |"1"   | "0"   |  "1" | "5"  | "1"  |   "3" |         "2300" |
|"TRNCLSTC55"         | "00"      |"CHIP_PIN_PHYSICAL_DELIVERY"                       |"2220118912341518"  |"5932"                  |"TrackData"          | "PINData"      |"0446"| "5" |"1"    |"T"   | "0"   |  "1" | "5"  | "1"  |   "3" |         "2400" |
|"TRNCLSTC56"         | "00"      |"CHIP_PIN_ONPREMISE_UNATTN_FUEL"                   |"2220118912341518"  |"5621"                  |"TrackData"          | "PINData"      |"0446"| "5" |"1"    |"2"   | "0"   |  "1" | "5"  | "1"  |   "3" |         "2500" |
|"TRNCLSTC57"         | "00"      |"CHIP_PIN_OFFPREMISE_UNATTN"                       |"2220118912341518"  |"5932"                  |"TrackData"          | "PINData"      |"0446"| "5" |"1"    |"4"   | "0"   |  "1" | "5"  | "1"  |   "3" |         "2600" |
|"TRNCLSTC58"         | "00"      |"CHIP_PIN_AT_CARDMEMEBER_UNATTN"                   |"2220118912341518"  |"5932"                  |"TrackData"          | "PINData"      |"0446"| "5" |"1"    |"5"   | "0"   |  "1" | "5"  | "1"  |   "3" |         "2700" |
|"TRNCLSTC59"         | "00"      |"FALLBACK_CHIP_PIN_ONPREMISE"                      |"2220118912341518"  |"5932"                  |"TrackData"          | "PINData"      |"0446"| "5" |"1"    |"1"   | "0"   |  "1" | "9"  | "1"  |   "3" |         "2800" |
|"TRNCLSTC60"         | "00"      |"FALLBACK_CHIP_PIN_PHYSICAL_DELIVERY"              |"2220118912341518"  |"5621"                  |"TrackData"          | "PINData"      |"0446"| "5" |"1"    |"T"   | "0"   |  "1" | "9"  | "1"  |   "3" |         "2900" |
|"TRNCLSTC61"         | "00"      |"FALLBACK_CHIP_PIN_ONPREMISE_UNATTN_FUEL"          |"2220118912341518"  |"5691"                  |"TrackData"          | "PINData"      |"0446"| "5" |"1"    |"2"   | "0"   |  "1" | "9"  | "1"  |   "3" |         "3000" |
|"TRNCLSTC62"         | "00"      |"FALLBACK_CHIP_PIN_OFFPREMISE_UNATTN"              |"2220118912341518"  |"5691"                  |"TrackData"          | "PINData"      |"0446"| "5" |"1"    |"4"   | "0"   |  "1" | "9"  | "1"  |   "3" |         "3100" |
|"TRNCLSTC63"         | "00"      |"FALLBACK_CHIP_PIN_AT_CARDMEMEBER_UNATTN"          |"2220118912341518"  |"5691"                  |"TrackData"          | "PINData"      |"0446"| "5" |"1"    |"5"   | "0"   |  "1" | "9"  | "1"  |   "3" |         "3200" |
|"TRNCLSTC64"         | "00"      |"UNKWN_PIN_ONPREMISE"                              |"2220118912341518"  |"5691"                  |"TrackData"          | "PINData"      |"0446"| "0" |"1"    |"1"   | "0"   |  "1" | "2"  | "1"  |   "3" |         "3300" |
|"TRNCLSTC65"         | "00"      |"UNKWN_PIN_ONPREMISE_UNATTN_FUEL"                  |"2220118912341518"  |"5621"                  |"TrackData"          | "PINData"      |"0446"| "0" |"1"    |"2"   | "0"   |  "1" | "2"  | "1"  |   "3" |         "3400" |
|"TRNCLSTC66"         | "00"      |"UNKWN_PIN_AT_CARDMEMEBER_UNATTN"                  |"2220118912341518"  |"5621"                  |"TrackData"          | "PINData"      |"0446"| "0" |"1"    |"5"   | "0"   |  "1" | "2"  | "1"  |   "3" |         "3500" |
|"TRNCLSTC67"         | "00"      |"MAG_PIN_ONPREMISE"                                |"2220118912341518"  |"5621"                  |"TrackData"          | "PINData"      |"0446"| "2" |"1"    |"1"   | "0"   |  "1" | "2"  | "1"  |   "3" |         "3600" |
|"TRNCLSTC68"         | "00"      |"MAG_PIN_ONPREMISE_UNATTN_FUEL"                    |"2220118912341518"  |"5621"                  |"TrackData"          | "PINData"      |"0446"| "2" |"1"    |"2"   | "0"   |  "1" | "2"  | "1"  |   "3" |         "3700" |
|"TRNCLSTC69"         | "00"      |"MAG_PIN_AT_CARDMEMEBER_UNATTN"                    |"2220118912341518"  |"5621"                  |"TrackData"          | "PINData"      |"0446"| "2" |"1"    |"5"   | "0"   |  "1" | "2"  | "1"  |   "3" |         "3800" |


|"TRNCLSTC70"         | "00"      |"ONPREMISE_UNATTN_FUEL"                            |"2220118912341518"  |"5621"                  |"TrackData"          | "PINData"      |"0446"| "0" |"0"    |"2"   | "0"   |  "1" | "0"  | "0"  |   "0" |         "3900" |
|"TRNCLSTC71"         | "00"      |"MAG_ONPREMISE_UNATTN_FUEL"                        |"2220118912341518"  |"5621"                  |"TrackData"          | "PINData"      |"0446"| "2" |"0"    |"2"   | "0"   |  "1" | "2"  | "1"  |   "3" |         "4000" |
|"TRNCLSTC72"         | "00"      |"CHIP_ONPREMISE_UNATTN_FUEL"                       |"2220118912341518"  |"5621"                  |"TrackData"          | "PINData"      |"0446"| "5" |"0"    |"2"   | "0"   |  "1" | "1"  | "1"  |   "3" |         "4100" |
|"TRNCLSTC73"         | "00"      |"ONPREMISE_UNATTN_FUEL"                            |"2220118912341518"  |"5621"                  |"TrackData"          | "NoPINData"      |"0446"| "0" |"0"    |"2"   | "0"   |  "1" | "0"  | "0"  |   "0" |         "8100" |
#Notworking
#|"TRNCLSTC74 Fail"         | "00"      |"MAG_ONPREMISE_UNATTN_FUEL"                        |"2220118912341518"  |"5621"                  |"TrackData"          | "NoPINData"      |"0446"| "2" |"0"    |"2"   | "0"   |  "1" | "2"  | "1"  |   "3" |         "8200" |
#|"TRNCLSTC75 Fail"         | "00"      |"CHIP_ONPREMISE_UNATTN_FUEL"                       |"2220118912341518"  |"5621"                  |"TrackData"          | "NoPINData"      |"0446"| "5" |"0"    |"2"   | "0"   |  "1" | "1"  | "1"  |   "3" |         "8300" |


|"TRNCLSTC76"         | "00"      |"CONTACTLESS"                                      |"2220118912341518"  |"5621"                  |"NoTrackData"        | "PINData"      |"0446"| "0" |"1"    |"5"   | "0"   |  "X" | "9"  | "1"  |   "3" |         "4200" |
|"TRNCLSTC77"         | "00"      |"MAG_CONTACTLESS"                                  |"2220118912341518"  |"5621"                  |"TrackData"          | "NoPINData"    |"0446"| "2" |"0"    |"1"   | "0"   |  "X" | "2"  | "1"  |   "3" |         "4300" |
|"TRNCLSTC78"         | "01"      |"CHIP_PIN_ONPREMISE"                               |"2220118912341518"  |"6011"                  |"TrackData"          | "PINData"      |"0446"| "5" |"1"    |"1"   | "0"   |  "1" | "5"  | "1"  |   "3" |         "4700" |
|"TRNCLSTC79"         | "01"      |"CHIP_PIN_AT_CARDMEMEBER_UNATTN"                   |"2220118912341518"  |"6011"                  |"TrackData"          | "PINData"      |"0446"| "5" |"1"    |"5"   | "0"   |  "1" | "5"  | "1"  |   "3" |         "4800" |
|"TRNCLSTC80"         | "01"      |"FALLBACK_CHIP_PIN_ONPREMISE"                      |"2220118912341518"  |"6011"                  |"TrackData"          | "PINData"      |"0446"| "5" |"1"    |"1"   | "0"   |  "1" | "9"  | "1"  |   "3" |         "4900" |
|"TRNCLSTC81"         | "01"      |"FALLBACK_CHIP_PIN_AT_CARDMEMEBER_UNATTN"          |"2220118912341518"  |"6011"                  |"TrackData"          | "PINData"      |"0446"| "5" |"1"    |"5"   | "0"   |  "1" | "9"  | "1"  |   "3" |         "5000" |
|"TRNCLSTC82"         | "01"      |"MAG_PIN_ONPREMISE"                                |"2220118912341518"  |"6011"                  |"TrackData"          | "PINData"      |"0446"| "2" |"1"    |"1"   | "0"   |  "1" | "2"  | "1"  |   "3" |         "5100" |
#|"TRNCLSTC83"         | "01"      |"MAG_PIN_AT_CARDMEMEBER_UNATTN"                    |"2220118912341518"  |"6011"                  |"TrackData"          | "PINData"      |"0446"| "2" |"1"    |"5"   | "0"   |  "1" | "2"  | "1"  |   "3" |         "5200" | 
#|"TRNCLSTC84"         | "00"      |"DEF_CARD_PRESENT"                                |"2220118912341518"  |"3005"                  |"TrackData"           | "PINData"      |"0446"| "1" |"1"    |"1"   | "1"   |  "1" | "1"  | "0"  |   "1" |         "4400" |
#|"TRNCLSTC85"         | "00"      |"CARD_NOT_PRESENT"                                |"2220118912341518"  |"3005"                  |"NoTrackData"         | "NoPINData"     |"0446"| "1" |"1"    |"1"   | "1"   |  "0" | "1"  | "0"  |   "1" |         "4500" |
#|"TRNCLSTC86"         | "00"      |"CARD_NOT_PRESENT_STANDIN"                        |"2220118912341518"  |"3005"                  |"NoTrackData"           | "NoPINData"      |"0446"| "1" |"1"    |"0"   | "4"   |  "0" | "1"  | "0"  |   "1" |         "4600" |
