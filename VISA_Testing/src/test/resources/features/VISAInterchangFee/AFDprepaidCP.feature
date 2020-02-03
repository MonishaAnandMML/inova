@VISAFCIF

Feature: Interchage VISA Fee calculation


#TUPPLE_AFD_prepaid


   @FCValid_Scenerio_Fees_and_charge_POS_Transaction_AFD_prepaid

  Scenario Outline: Interchange fee calculation for AFD transactions with different Amount PosData and BusinessZoneCode
   
    Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
    Given Initiate AFD transaction with MerchantCategoryCode "5542" CardNumber <CardNumber> cvv <cvv>TranType "00" PosDataCode <PosDataCode> Networkid as "1" Amount <Amount> trackDataOne "TrackData1" trackDataTwo "TrackData2" PINdata "PINData" Securitydata "SecData" CurrencyCodeTransaction "356"  
    When  Acquirer forwards the message to SmartEdge
    And   Message is processed by issuer and repsonse is sent back to the acquirer
    Then  Verify this acquirer's <TestCaseId> received "000" <BusinessZoneCode> <feeRuleID> and <feeAmount>
    
    Examples: 
    
    |TestCaseId                                    | CardNumber         |cvv    |PosDataCode            |  Amount  |BusinessZoneCode|feeRuleID|feeAmount|
    |"FCIFSCV1TC1VISAPurcResp"                     |"2220140000000004"  |"0320"  | "010201210000"        | "20502"  |   "356001"     |  "1955" |  "95"   |
    |"FCIFSCV1TC2VISAPurcResp"                     |"2220140000000004"  |"0320"  | "010201210000"        | "10002"  |   "356001"     |  "1955" |  "95"   |
    |"FCIFSCV1TC3VISAPurcResp"                     |"2220140000000038"  |"0554"  | "010201210000"        | "30502"  |   "356001"     |  "1955" |  "95"   |
    |"FCIFSCV1TC4VISAPurcResp"                     |"2220140000000012"  |"0496"  | "510201910300"        | "50502"  |   "356001"     |  "1955" |  "95"   |
    |"FCIFSCV1TC5VISAPurcResp"                     |"2220140000000012"  |"0496"  | "510201910300"        | "99999"  |   "356001"     |  "1955" |  "95"   |
    |"FCIFSCV1TC6VISAPurcResp"                     |"2220140000000038"  |"0554"  | "510201910300"        | "10000"  |   "356001"     |  "1955" |  "95"   |
    |"FCIFSCV1TC7VISAPurcResp"                     |"2220140000000020"  |"0206"  | "210201210000"        | "23455"  |   "356001"     |  "1955" |  "95"   |
    |"FCIFSCV1TC8VISAPurcResp"                     |"2220140000000020"  |"0206"  | "210201210000"        | "66666"  |   "356001"     |  "1955" |  "95"   |
    |"FCIFSCV1TC9VISAPurcResp"                     |"2220140000000038"  |"0554"  | "210201210000"        | "77777"  |   "356001"     |  "1955" |  "95"   |
    
     #card product 123005
    
    |"FCIFSCV1TC10VISAPurcResp"                     |"2220150000000003"  |"0705" | "010201210000"        | "20502" |   "356001"     |  "1956" |  "31"   |
    |"FCIFSCV1TC11VISAPurcResp"                     |"2220150000000003"  |"0705" | "010201210000"        | "10002" |   "356001"     |  "1956" |  "26"   |
    |"FCIFSCV1TC12VISAPurcResp"                     |"2220150000000037"  |"0635" | "010201210000"        | "30502" |   "356001"     |  "1956" |  "36"   |
    |"FCIFSCV1TC13VISAPurcResp"                     |"2220150000000011"  |"0706" | "510201910300"        | "50502" |   "356001"     |  "1956" |  "46"   |
    |"FCIFSCV1TC14VISAPurcResp"                     |"2220150000000011"  |"0706" | "510201910300"        | "99999" |   "356001"     |  "1956" |  "71"   |
    |"FCIFSCV1TC15VISAPurcResp"                     |"2220150000000037"  |"0635" | "510201910300"        | "10000" |   "356001"     |  "1956" |  "26"   |
    #|"FCIFSCV1TC16VISAPurcResp"                     |"2220150000000029"  |"310" | "210201210000"        | "23455" |   "356001"     |  "1956" |  "33"   |
    #|"FCIFSCV1TC17VISAPurcResp"                     |"2220150000000029"  |"310" | "210201210000"        | "66666" |   "356001"     |  "1956" |  "54"   |
    |"FCIFSCV1TC18VISAPurcResp"                     |"2220150000000037"  |"0635" | "210201210000"        | "77777" |   "356001"     |  "1956" |  "60"   |
    
  
    