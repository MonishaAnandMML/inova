@VISAFCIF

Feature: Interchage VISA Fee calculation


@FCValid_Scenerio_Fees_and_charge_POS_Transaction_purchase_MOTO_credit
     
     Scenario Outline: Interchange fee calculation for purchase MOTO transactions with different Amount PosData and BusinessZoneCode
   
  
    Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
    Given Initiate Purchase transaction with PosDataCode as "000020100000" CardNumber <CardNumber> cvv <cvv> TranType "00" mcc <MerchantCategoryCode> Networkid as "1" Amount <Amount> trackDataOne "NoTrackData1" trackDataTwo "NoTrackData2" PINdata "NoPINData" Securitydata "NoSecData" CurrencyCodeTransaction "356"  
    When  Acquirer forwards the message to SmartEdge
    And   Message is processed by issuer and repsonse is sent back to the acquirer
    Then  Verify this acquirer's <TestCaseId> received "000" <BusinessZoneCode> <feeRuleID> and <feeAmount>

    Examples: 
    |TestCaseId                                     | CardNumber         |cvv         |MerchantCategoryCode |  Amount    |BusinessZoneCode|feeRuleID|feeAmount |
    
     #<<"123008">> 
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220160000000002"  |"0760"       | "5960"              | "36738833" |   "356001"     |  "2055" |  "881742"|
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220160000000010"  |"0731"       | "5962"              | "20502"    |   "356001"     |  "2055" |  "502"   |
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220160000000028"  |"0840"       | "5966"              | "20502"    |   "356001"     |  "2055" |  "502"   |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220160000000036"  |"0267"       | "5967"              | "20502"    |   "356001"     |  "2055" |  "502"   |
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220160000000044"  |"0975"       | "5968"              | "20502"    |   "356001"     |  "2055" |  "502"   |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220160000000028"  |"0840"       | "5962"              | "20502"    |   "356001"     |  "2055" |  "502"   |
    
     #<<"123033">>
    
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220170000000001"  |"0800"       | "5960"              | "20502"    |   "356001"     |  "2056" |  "410"   |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220170000000027"  |"0099"       | "5962"              | "20502"    |   "356001"     |  "2056" |  "410"   |
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220170000000019"  |"0494"       | "5966"              | "20502"    |   "356001"     |  "2056" |  "410"   |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220170000000043"  |"0829"       | "5967"              | "20502"    |   "356001"     |  "2056" |  "410"   |
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220170000000027"  |"0099"       | "5968"              | "20502"    |   "356001"     |  "2056" |  "410"   |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220170000000043"  |"0829"       | "5962"              | "20502"    |   "356001"     |  "2056" |  "410"   |
    
     #<<"123034">>
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220180000000018"  |"0731"       | "5960"              | "20502"    |   "356001"     |  "2057" |  "502"   |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220180000000018"  |"0731"       | "5962"              | "20502"    |   "356001"     |  "2057" |  "502"   |
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220180000000018"  |"0731"       | "5966"              | "20502"    |   "356001"     |  "2057" |  "502"   |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220180000000026"  |"0798"       | "5967"              | "20502"    |   "356001"     |  "2057" |  "502"   |
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220180000000026"  |"0798"       | "5968"              | "20502"    |   "356001"     |  "2057" |  "502"   |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220180000000026"  |"0798"       | "5962"              | "20502"    |   "356001"     |  "2057" |  "502"    |
    
     #<<"123035">>
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220190000000017"  |"0707"       | "5960"              | "20502"    |   "356001"     |  "2058" |  "410"   |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220190000000025"  |"0968"       | "5962"              | "20502"    |   "356001"     |  "2058" |  "410"   |
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220190000000025"  |"0968"       | "5966"              | "20502"    |   "356001"     |  "2058" |  "410"   |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220190000000033"  |"0057"       | "5967"              | "20502"    |   "356001"     |  "2058" |  "410"   |
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220190000000033"  |"0057"       | "5968"              | "20502"    |   "356001"     |  "2058" |  "410"   |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220190000000033"  |"0057"       | "5962"              | "20502"    |   "356001"     |  "2058" |  "410"   |
    
     #<<"123036">>
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220200000000006"  |"0677"       | "5960"              | "20502"    |   "356001"     |  "2059" |  "379"   | 
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220200000000014"  |"0761"       | "5962"              | "20502"    |   "356001"     |  "2059" |  "379"   |
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220200000000022"  |"0643"       | "5966"              | "20502"    |   "356001"     |  "2059" |  "379"   |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220200000000030"  |"0578"       | "5967"              | "20502"    |   "356001"     |  "2059" |  "379"   |
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220200000000022"  |"0643"       | "5968"              | "20502"    |   "356001"     |  "2059" |  "379"   |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220200000000030"  |"0578"       | "5962"              | "20502"    |   "356001"     |  "2059" |  "379"   |
    
    
    