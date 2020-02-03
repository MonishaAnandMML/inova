@VISAFCIF

Feature: Interchage VISA Fee calculation


#TUPPLE_AFD


   @FCValid_Scenerio_Fees_and_charge_POS_Transaction_AFD


  Scenario Outline: Interchange fee calculation for AFD transactions with different Amount PosData and BusinessZoneCode
   
  
    Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
    Given Initiate AFD transaction with MerchantCategoryCode "5542" CardNumber <CardNumber> cvv <cvv>TranType "00" PosDataCode <PosDataCode> Networkid as "1" Amount <Amount> trackDataOne "TrackData1" trackDataTwo "TrackData2" PINdata "PINData" Securitydata "SecData" CurrencyCodeTransaction "356"     
    When  Acquirer forwards the message to SmartEdge
    And   Message is processed by issuer and repsonse is sent back to the acquirer
    Then  Verify this acquirer's <TestCaseId> received "000" <BusinessZoneCode> <feeRuleID> and <feeAmount>
    
    Examples: 
    
    |TestCaseId                                    | CardNumber         |cvv       |PosDataCode            |  Amount  |BusinessZoneCode|feeRuleID|feeAmount|
    
     #<<"123008">>
    |"FCIFSCV1TC1VISAPurcResp"                     |"2220160000000002"  |"0760"    |"010201210000"        | "23455"  |   "356001"     |  "2035" |  "33" |
    #|"FCIFSCV1TC2VISAPurcResp"                     |"2220160000000010"  |"0840"    |"010201210000"        | "23455"  |   "356001"     |  "2035" |  "33"|
    #|"FCIFSCV1TC3VISAPurcResp"                     |"2220160000000028"  |"0790"    |"010201210000"        | "66666"  |   "356001"     |  "2035" |  "54"|
    #|"FCIFSCV1TC4VISAPurcResp"                     |"2220160000000036"  |"0267"    |"210201210000"        | "23455"  |   "356001"     |  "2035" |  "33" |
    #|"FCIFSCV1TC5VISAPurcResp"                     |"2220160000000044"  |"0975"    |"210201210000"        | "66666"  |   "356001"     |  "2035" |  "54"|
    #|"FCIFSCV1TC6VISAPurcResp"                     |"2220160000000036"  |"0267"    |"210201210000"        | "66666"  |   "356001"     |  "2035" |  "54"|
    #
    #
    #
    #<<"123033">>
    #|"FCIFSCV1TC7VISAPurcResp"                     |"2220170000000001"  |"0800"   |"510201910300"        | "50502"  |   "356001"     |  "2036" |  "110"   |
    #|"FCIFSCV1TC8VISAPurcResp"                     |"2220170000000019"  |"0494"   |"510201910300"        | "99999"  |   "356001"     |  "2036" |  "110"   |
    #|"FCIFSCV1TC9VISAPurcResp"                     |"2220170000000027"  |"0099"   |"510201910300"        | "10000"  |   "356001"     |  "2036" |  "110"   |
    #|"FCIFSCV1TC10VISAPurcResp"                    |"2220170000000019"  |"0494"   |"510201910300"        | "50502"  |   "356001"     |  "2036" |  "110"   |
    #|"FCIFSCV1TC11VISAPurcResp"                    |"2220170000000035"  |"0303"   |"510201910300"        | "99999"  |   "356001"     |  "2036" |  "110"   |
    #|"FCIFSCV1TC16VISApurchRes"                    |"2220170000000043"  |"0829"   |"510201910300"        | "10000"  |   "356001"     |   "2036"|  "110"   |
    #
    #
    #<<"123034">>
    #|"FCIFSCV1TC18VISApurchResp"                   |"2220180000000018"  |"0731"  |"210201210000"        | "23455"  |   "356001"     |  "2037" |  "110"   |
    #|"FCIFSCV1TC1VISAPurcResp"                     |"2220180000000026"  |"0798"  |"210201210000"        | "66666"  |   "356001"     |  "2037" |  "110"   |
    #|"FCIFSCV1TC9VISAPurcResp"                     |"2220180000000059"  |"0713"  |"210201210000"        | "77777"  |   "356001"     |  "2037" |  "110"   |
    #|"FCIFSCV1TC10VISAPurcResp"                    |"2220180000000042"  |"0463"  |"010201210000"        | "20502"  |   "356001"     |  "2037" |  "110"  |
    #|"FCIFSCV1TC11VISAPurcResp"                    |"2220180000000059"  |"0713"  |"010201210000"        | "10002"  |   "356001"     |  "2037" |  "110"   |
    #|"FCIFSCV1TC12VISAPurcResp"                    |"2220180000000042"  |"0463"  |"010201210000"        | "30502"  |   "356001"     |  "2037" |  "110"   |
    #
    #<<"123035">>
    #|"FCIFSCV1TC7VISAPurcResp"                     |"2220190000000017"  |"0707" |"210201210000"        | "23455"  |   "356001"     |  "2038" |  "110"   |
    #|"FCIFSCV1TC8VISAPurcResp"                     |"2220190000000025"  |"0968" |"210201210000"        | "66666"  |   "356001"     |  "2038" |  "110"   |
    #|"FCIFSCV1TC9VISAPurcResp"                     |"2220190000000033"  |"0057" |"210201210000"        | "77777"  |   "356001"     |  "2038" |  "110"   |
    #|"FCIFSCV1TC10VISAPurcResp"                    |"2220190000000041"  |"0979" |"010201210000"        | "20502"  |   "356001"     |  "2038" |  "110"   |
    #|"FCIFSCV1TC11VISAPurcResp"                    |"2220190000000058"  |"0552" |"010201210000"        | "10002"  |   "356001"     |  "2038" |  "110"   |
    #
  #
  #
   #<<"123036>>
    #|"FCIFSCV1TC7VISAPurcResp"                     |"2220200000000006"  |"0677" |"210201210000"        | "23455"  |   "356001"     |  "2039"|  "110"   |
    #|"FCIFSCV1TC8VISAPurcResp"                     |"2220200000000014"  |"0761" |"210201210000"        | "66666"  |   "356001"     |  "2039"| "110"   |
    #|"FCIFSCV1TC9VISAPurcResp"                     |"2220200000000022"  |"0643" |"210201210000"        | "77777"  |   "356001"     |  "2039"| "110"   |
    #|"FCIFSCV1TC10VISAPurcResp"                    |"2220200000000030"  |"0578" |"010201210000"        | "20502"  |   "356001"     |  "2039"|  "110"   |
    #|"FCIFSCV1TC11VISAPurcResp"                    |"2220200000000048"  |"0910" |"010201210000"        | "10002"  |   "356001"     |  "2039"|  "110"   |
    #
  #
  