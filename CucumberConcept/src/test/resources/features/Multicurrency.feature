Feature: Multicurrency Transaction Test scenerio
 

 @MulticurrencyTransaction
  Scenario Outline: Validate Multicurrency Transaction checks 
  
  Given Validation of scenario <TestCaseId> for tran type <TranType> and CardNumber <CardNumber>
  Given Initiate transaction with <transactionclassification> <CardNumber> CVV as <cvv> <CardProductId> <TranType> <merchantcategorycode> <trackData> <PINdata> for Amount <Amount> <CurrencyCodeTransaction> <BusinessZoneCode>  
  When  Acquirer forwards the message to SmartEdge 
  #Then  Verify if Multicurrency Transaction Request has <AmountBilling> <CurrencyCodeBilling> received by issuer 
  And Message is processed by issuer and repsonse is sent back to the acquirer
  And  Verify if acquirer received <AcquirerResponse_F39> response with <AmountBilling> <CurrencyCodeBilling> <AmountSettlement> <CurrencyCodeSettlement> <CurrencyCodeTransaction> <BusinessZoneCode>
  
 Examples: 
 
 |TestCaseId      |transactionclassification | CardNumber               |cvv      |CardProductId|TranType|merchantcategorycode    |trackData    | PINdata        |Amount    |CurrencyCodeTransaction|BusinessZoneCode|AcquirerResponse_F39|AmountBilling   |CurrencyCodeBilling|AmountSettlement     |CurrencyCodeSettlement|
 |"MULTIChkSC1TC1"|"CHIP_PIN_ ONPREMISE"     |"2220880000000013"        |"0759"   |"123007"     |"00"    |"5231"                  |"TrackData"  |"NoPINData"     | "100000" | "840"                 |"0F0A01"        |"000"               | "000007075500" |"356"              | "000007075500"      |     "356"            |
 |"MULTIChkSC1TC2"|"CHIP_PIN_ONPREMISE"      |"2220880000000013"        |"0759"   |"123007"     |"00"    |"3004"                  |"TrackData"  |"PINData"       | "500000" | "840"                 |"0F0A01"        |"000"               | "000035377499" |"356"              | "000035377499"      |     "356"            |   
 |"MULTIChkSC1TC3"|"CHIP_PIN_ONPREMISE"      |"2220880000000013"        |"0759"   |"123007"     |"00"    |"3360"                  |"TrackData"  |"PINData"       | "800000" | "840"                 |"0F0A01"        |"000"               | "000056603999" |"356"              | "000056603999"      |     "356"            |  
 |"MULTIChkSC1TC4"|"CHIP_PIN_ONPREMISE"      |"2220880000000013"        |"0759"   |"123007"     |"00"    |"3505"                  |"TrackData"  |"PINData"       | "900000" | "840"                 |"0F0A01"        |"000"               | "000063679499" |"356"              | "000063679499"      |     "356"            |
 |"MULTIChkSC1TC5"|"CHIP_PIN_ONPREMISE"      |"2220880000000013"        |"0759"   |"123007"     |"00"    |"3667"                  |"TrackData"  |"PINData"       | "600000" | "840"                 |"0F0A01"        |"000"               | "000042452999" |"356"              | "000042452999"      |     "356"            |                                                                      
 |"MULTIChkSC1TC6"|"CHIP_PIN_ONPREMISE"      |"2220880000000013"        |"0759"   |"123007"     |"00"    |"3005"                  |"TrackData"  |"PINData"       | "700000" | "840"                 |"0F0A01"        |"000"               | "000049528499" |"356"              | "000049528499"      |     "356"            |
 |"MULTIChkSC1TC7"|"CHIP_PIN_ONPREMISE"      |"2220880000000013"        |"0759"   |"123007"     |"00"    |"7941"                  |"TrackData"  |"PINData"       | "1000000" | "840"                 |"0F0A01"        |"000"               | "000070754999" |"356"              | "000070754999"      |     "356"            | 
     