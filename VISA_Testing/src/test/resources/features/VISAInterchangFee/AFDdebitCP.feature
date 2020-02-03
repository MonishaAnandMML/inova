@VISAFCIF

Feature: Interchage VISA Fee calculation


#TUPPLE_AFD_Debit


   @FCValid_Scenerio_Fees_and_charge_POS_Transaction_AFD_debit


  Scenario Outline: Interchange fee calculation for AFD transactions with different Amount PosData and BusinessZoneCode
   
  
    Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
    Given Initiate AFD transaction with MerchantCategoryCode "5542" CardNumber <CardNumber> cvv <cvv>TranType "00" PosDataCode <PosDataCode> Networkid as "1" Amount <Amount> trackDataOne "TrackData1" trackDataTwo "TrackData2" PINdata "PINData" Securitydata "SecData" CurrencyCodeTransaction "356"  
    When  Acquirer forwards the message to SmartEdge
    And   Message is processed by issuer and repsonse is sent back to the acquirer
    Then  Verify this acquirer's <TestCaseId> received "000" <BusinessZoneCode> <feeRuleID> and <feeAmount>
    
    Examples: 
    
    |TestCaseId                                    | CardNumber         |cvv        |PosDataCode           |  Amount  |BusinessZoneCode|feeRuleID|feeAmount|
    |"FCIFSCV1TC1VISAPurcResp"                     |"2220880000000021"  |"0442"      |"010201210000"        | "20502"  |   "356001"     |  "1905" |  "95"   |
    |"FCIFSCV1TC2VISAPurcResp"                     |"2220880000000005"  |"0121"      |"010201210000"        | "10002"  |   "356001"     |  "1905" |  "95"   |
    |"FCIFSCV1TC3VISAPurcResp"                     |"2220880000000013"  |"0885"      |"010201210000"        | "30502"  |   "356001"     |  "1905" |  "95"   |
    |"FCIFSCV1TC4VISAPurcResp"                     |"2220880000000021"  |"0442"      |"510201910300"        | "50502"  |   "356001"     |  "1905" |  "95"   |
    |"FCIFSCV1TC5VISAPurcResp"                     |"2220880000000005"  |"0121"      |"510201910300"        | "99999"  |   "356001"     |  "1905" |  "95"   |
    |"FCIFSCV1TC6VISAPurcResp"                     |"2220880000000013"  |"0885"      |"510201910300"        | "10000"  |   "356001"     |  "1905" |  "95"   |
    |"FCIFSCV1TC7VISAPurcResp"                     |"2220880000000021"  |"0442"      |"210201210000"        | "23455"  |   "356001"     |  "1905" |  "95"   |
    |"FCIFSCV1TC8VISAPurcResp"                     |"2220880000000005"  |"0121"      |"210201210000"        | "66666"  |   "356001"     |  "1905" |  "95"   |
    |"FCIFSCV1TC9VISAPurcResp"                     |"2220880000000013"  |"0885"      |"210201210000"        | "77777"  |   "356001"     |  "1905" |  "95"   |
    
     #card product 123005
    
    |"FCIFSCV1TC10VISAPurcResp"                    |"2220990000000002"  |"0386"      | "010201210000"        | "20502" |   "356001"     |  "1906" |  "31"   |
    |"FCIFSCV1TC11VISAPurcResp"                    |"2220990000000002"  |"0386"      | "010201210000"        | "10002" |   "356001"     |  "1906" |  "26"   |
    |"FCIFSCV1TC12VISAPurcResp"                    |"2220990000000002"  |"0386"      | "010201210000"        | "30502" |   "356001"     |  "1906" |  "36"   |
    |"FCIFSCV1TC13VISAPurcResp"                    |"2220990000000010"  |"0338"      |"510201910300"         | "50502" |   "356001"     |  "1906" |  "46"   |
    |"FCIFSCV1TC14VISAPurcResp"                    |"2220990000000010"  |"0338"      | "510201910300"        | "99999" |   "356001"     |  "1906" |  "71"   |
    |"FCIFSCV1TC15VISAPurcResp"                    |"2220990000000010"  |"0338"      | "510201910300"        | "10000" |   "356001"     |  "1906" |  "26"   |
    |"FCIFSCV1TC16VISAPurcResp"                    |"2220990000000028"  |"0427"      |"210201210000"         | "23455" |   "356001"     |  "1906" |  "33"   |
    |"FCIFSCV1TC17VISAPurcResp"                    |"2220990000000028"  |"0427"      |"210201210000"         | "66666" |   "356001"     |  "1906" |  "54"   |
    |"FCIFSCV1TC18VISAPurcResp"                    |"2220990000000028"  |"0427"      | "210201210000"        | "77777" |   "356001"     |  "1906" |  "60"   |
    
  
    