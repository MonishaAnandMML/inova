@VISAFCIF

Feature: Interchage VISA Fee calculation

#TUPPLE_PURCHASE
    
    #@FCValid_Scenerio_Fees_and_charge_POS_Transaction_purchase_prepaid
     
     Scenario Outline: Interchange fee calculation for Purchase transactions with different Amount PosData and BusinessZoneCode
     
    Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
    Given Initiate Purchase transaction with PosDataCode as "510101510300" CardNumber <CardNumber> cvv <cvv> TranType "00" mcc <MerchantCategoryCode> Networkid as "1" Amount <Amount> trackDataOne "TrackData1" trackDataTwo "TrackData2" PINdata "PINData" Securitydata "SecData" CurrencyCodeTransaction "356"    
    When  Acquirer forwards the message to SmartEdge
    And   Message is processed by issuer and repsonse is sent back to the acquirer
    Then  Verify this acquirer's <TestCaseId> received "000" <BusinessZoneCode> <feeRuleID> and <feeAmount>
    
    #Examples: 
    
    |TestCaseId                                     | CardNumber         |CVV            |MerchantCategoryCode |  Amount    |BusinessZoneCode |feeRuleID|feeAmount|
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220330000000019"  |"044"          |  "5411"              | "20502"   |   "0A0F01"     |  "2175" |  "31"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220340000000018"  |"588"          | "9751"              | "20502"   |   "0A0F01"     |  "2176" |  "31"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220350000000009"  |"675"          | "5411"              | "20502"   |   "0A0F01"     |  "2177" |  "31"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220360000000008"  |"367"          | "5541"              | "20502"   |   "0A0F01"     |  "2178" |  "31"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220370000000015"  |"637"          | "5541"              | "20502"   |   "0A0F01"     |  "2179" |  "31"  |
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220380000000006"  |"105"          | "5411"              | "20502"   |   "0A0F01"     |  "2180" |  "31"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220400000000044"  |"047"          | "9751"              | "20502"   |   "0A0F01"     |  "2181" |  "31"  |
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220330000000019"  |"044"          | "5411"              | "20502"   |   "0A0F01"     |  "2175" |  "31"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220340000000018"  |"588"          | "9751"              | "20502"   |   "0A0F01"     |  "2176" |  "31"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220350000000009"  |"675"          | "5411"              | "20502"   |   "0A0F01"     |  "2177" |  "31"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220340000000018"  |"588"          | "5541"              | "20502"   |   "0A0F01"     |  "2178" |  "31"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220380000000006"  |"105"          | "5541"              | "20502"   |   "0A0F01"     |  "2178" |  "31"  |
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220370000000015"  |"637"          | "5411"              | "20502"   |   "0A0F01"     |  "2180" |  "31"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220400000000044"  |"047"          | "9751"              | "20502"   |   "0A0F01"     |  "2181" |  "31"  |
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220330000000019"  |"044"          | "5411"              | "20502"   |   "0A0F01"     |  "2182" |  "31"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220340000000018"  |"588"          | "9751"              | "20502"   |   "0A0F01"     |  "2183" |  "31"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220350000000009"  |"675"          | "5411"              | "20502"   |   "0A0F01"     |  "2184" |  "31"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220380000000006"  |"105"          | "5541"              | "20502"   |   "0A0F01"     |  "2185" |  "31"  |
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220400000000044"  |"047"          | "5411"              | "20502"   |   "0A0F01"     |  "2186" |  "31"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220400000000044"  |"047"          | "9751"              | "20502"   |   "0A0F01"     |  "2187" |  "31"  |
    
    
    
    @FCValid_Scenerio_Fees_and_charge_POS_Transaction_purchase_ECOM
     
     Scenario Outline: Interchange fee calculation for purchase Ecom transactions with different Amount PosData and BusinessZoneCode
   
  
    Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
    Given Initiate ECOM transaction "ECOM" CardNumber <CardNumber> cvv <cvv> TranType "00" mcc <MerchantCategoryCode> Networkid as "1" Amount <Amount> trackDataOne "NoTrackData1" trackDataTwo "NoTrackData2" PINdata "NoPINData" Securitydata "SecData" CVV as "CVV2_Present" CurrencyCodeTransaction "356"   
    When  Acquirer forwards the message to SmartEdge
    And   Message is processed by issuer and repsonse is sent back to the acquirer
    Then  Verify this acquirer's <TestCaseId> received "000" <BusinessZoneCode> <feeRuleID> and <feeAmount>
    
    Examples: 
    
    |TestCaseId                                     | CardNumber         |cvv       |MerchantCategoryCode |  Amount   |BusinessZoneCode |feeRuleID|feeAmount|
    #123008
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220330000000019"  |"044"     | "4900"              | "44444"   |   "356001"     |  "2182" |  "640"  |  
    |"FCIFSCV1TC21VISAPurcResp"                     |"2220330000000019"  |"044"     | "9211"              | "44444"   |   "356001"     |  "2182" |  "640"  |
    |"FCIFSCV1TC21VISAPurcResp"                     |"2220330000000019"  |"044"     | "9222"              | "44444"   |   "356001"     |  "2182" |  "640"  |
    |"FCIFSCV1TC22VISAPurcResp"                     |"2220340000000018"  |"310"     | "9223"              | "44444"   |   "356001"     |  "2183" |  "640"  |
    |"FCIFSCV1TC23VISAPurcResp"                     |"2220340000000018"  |"310"     | "9311"              | "44444"   |   "356001"     |  "2183" |  "640"  |
    |"FCIFSCV1TC24VISAPurcResp"                     |"2220340000000018"  |"310"     | "9399"              | "44444"   |   "356001"     |  "2183" |  "640"  |
    |"FCIFSCV1TC25VISAPurcResp"                     |"2220350000000009"  |"675"     | "9402"              | "44444"   |   "356001"     |  "2184" |  "640"  |
    |"FCIFSCV1TC26VISAPurcResp"                     |"2220350000000009"  |"675"     | "9405"              | "44444"   |   "356001"     |  "2184" |  "640"  |
    |"FCIFSCV1TC27VISAPurcResp"                     |"2220350000000009"  |"675"     | "9700"              | "44444"   |   "356001"     |  "2184" |  "640"  |
    |"FCIFSCV1TC23VISAPurcResp"                     |"2220360000000008"  |"044"     | "9311"              | "44444"   |   "356001"     |  "2185" |  "800"  |
    |"FCIFSCV1TC24VISAPurcResp"                     |"2220360000000008"  |"044"     | "9399"              | "44444"   |   "356001"     |  "2185" |  "800"  |
    |"FCIFSCV1TC25VISAPurcResp"                     |"2220360000000008"  |"044"     | "9402"              | "44444"   |   "356001"     |  "2185" |  "800"  |
    |"FCIFSCV1TC26VISAPurcResp"                     |"2220380000000006"  |"105"     | "9405"              | "44444"   |   "356001"     |  "2187" |  "876"  |
    |"FCIFSCV1TC27VISAPurcResp"                     |"2220380000000006"  |"105"     | "9700"              | "44444"   |   "356001"     |  "2187" |  "876"  |
    |"FCIFSCV1TC24VISAPurcResp"                     |"2220380000000006"  |"105"     | "9399"              | "44444"   |   "356001"     |  "2187" |  "876"  |
    |"FCIFSCV1TC25VISAPurcResp"                     |"2220400000000044"  |"047"     | "9402"              | "44444"   |   "356001"     |  "2188" |  "889"  |
    |"FCIFSCV1TC26VISAPurcResp"                     |"2220400000000044"  |"047"     | "9405"              | "44444"   |   "356001"     |  "2188" |  "889"  |
    |"FCIFSCV1TC27VISAPurcResp"                     |"2220400000000044"  |"047"     | "9700"              | "44444"   |   "356001"     |  "2188" |  "889"  |
    |"FCIFSCV1TC25VISAPurcResp"                     |"2220370000000015"  |"637"     | "9402"              | "44444"   |   "356001"     |  "2186" |  "800"  |
    |"FCIFSCV1TC26VISAPurcResp"                     |"2220370000000023"  |"637"     | "9405"              | "44444"   |   "356001"     |  "2186" |  "800"  |
    |"FCIFSCV1TC27VISAPurcResp"                     |"2220370000000049"  |"637"     |"9700"               | "44444"   |   "356001"     |  "2186" |  "800"  |
    
    
     #@FCValid_Scenerio_Fees_and_charge_POS_Transaction_standard
     
     Scenario Outline: Interchange fee calculation for Purchase transactions with different Amount PosData and BusinessZoneCode
     
    Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
    Given Initiate Purchase transaction with PosDataCode as "510101510300" CardNumber <CardNumber> TranType "00" mcc <MerchantCategoryCode> Networkid as "1" Amount <Amount> trackDataOne "TrackData1" trackDataTwo "TrackData2" PINdata "PINData" Securitydata "SecData"  
    When  Acquirer forwards the message to SmartEdge
    And   Message is processed by issuer and repsonse is sent back to the acquirer
    Then  Verify this acquirer's <TestCaseId> received "000" <BusinessZoneCode> <feeRuleID> and <feeAmount>
    
   #Examples: 
    
    |TestCaseId                                     | CardNumber         |MerchantCategoryCode |  Amount   |BusinessZoneCode |feeRuleID|feeAmount|
    #123008
    #|"FCIFSCV1TC1VISAPurcResp"                      |"2220330000000001"  | "4900"              | "44444"   |   "356001"     |  "2182" |"711"     |  
    #|"FCIFSCV1TC21VISAPurcResp"                     |"2220330000000027"  | "9211"              | "44444"   |   "356001"     |  "2182" |  "711"  |
    #|"FCIFSCV1TC21VISAPurcResp"                     |"2220330000000035"  | "9222"              | "44444"   |   "356001"     |  "2182" |  "711"  |
    #|"FCIFSCV1TC22VISAPurcResp"                     |"2220340000000018"  | "9223"              | "44444"   |   "356001"     |  "2183" |  "711"  |
    #|"FCIFSCV1TC23VISAPurcResp"                     |"2220340000000042"  | "9311"              | "44444"   |   "356001"     |  "2183" |  "711"  |
    #|"FCIFSCV1TC24VISAPurcResp"                     |"2220340000000042"  | "9399"              | "44444"   |   "356001"     |  "2183" |  "711"  |
    #|"FCIFSCV1TC25VISAPurcResp"                     |"2220350000000041"  | "9402"              | "44444"   |   "356001"     |  "2184" |  "711"  |
    #|"FCIFSCV1TC26VISAPurcResp"                     |"2220350000000017"  | "9405"              | "44444"   |   "356001"     |  "2184" |  "711"  |
    #|"FCIFSCV1TC27VISAPurcResp"                     |"2220350000000041"  | "9700"              | "44444"   |   "356001"     |  "2184" |  "711"  |
    #|"FCIFSCV1TC23VISAPurcResp"                     |"2220360000000016"  | "9311"              | "44444"   |   "356001"     |  "2185" |  "711"  |
    #|"FCIFSCV1TC24VISAPurcResp"                     |"2220360000000024"  | "9399"              | "44444"   |   "356001"     |  "2185" |  "711"  |
    #|"FCIFSCV1TC25VISAPurcResp"                     |"2220360000000024"  | "9402"              | "44444"   |   "356001"     |  "2185" |  "711"  |
    #|"FCIFSCV1TC26VISAPurcResp"                     |"2220380000000006"  | "9405"              | "44444"   |   "356001"     |  "2186" |  "711"  |
    #|"FCIFSCV1TC27VISAPurcResp"                     |"2220380000000048"  | "9700"              | "44444"   |   "356001"     |  "2186" |  "711"  |
    #|"FCIFSCV1TC24VISAPurcResp"                     |"2220380000000055"  | "9399"              | "44444"   |   "356001"     |  "2186" |  "711"  |
    #|"FCIFSCV1TC25VISAPurcResp"                     |"2220400000000044"  | "9402"              | "44444"   |   "356001"     |  "2187" |  "711"  |
    #|"FCIFSCV1TC26VISAPurcResp"                     |"2220400000000036"  | "9405"              | "44444"   |   "356001"     |  "2187" |  "711"  |
    #|"FCIFSCV1TC27VISAPurcResp"                     |"2220400000000002"  | "9700"              | "44444"   |   "356001"     |  "2187" |  "711"  |
    #|"FCIFSCV1TC25VISAPurcResp"                     |"2220370000000015"  | "9402"              | "44444"   |   "356001"     |  "2188" |  "711"  |
    #|"FCIFSCV1TC26VISAPurcResp"                     |"2220370000000023"  | "9405"              | "44444"   |   "356001"     |  "2188" |  "711"  |
    #|"FCIFSCV1TC27VISAPurcResp"                     |"2220370000000049"  | "9700"              | "44444"   |   "356001"     |  "2188" |  "711"  |
    
    
    
    
    
    
    
    
    
    
    
    
    
   