@VISAFCIF

Feature: Interchage VISA Fee calculation


@FCValid_Scenerio_Fees_and_charge_POS_Transaction_purchase_MOTO_debit
     
     Scenario Outline: Interchange fee calculation for purchase Ecom transactions with different Amount PosData and BusinessZoneCode
   
  
    Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
    Given Initiate Purchase transaction with PosDataCode as "000020100000" CardNumber <CardNumber> cvv <cvv> TranType "00" mcc <MerchantCategoryCode> Networkid as "1" Amount <Amount> trackDataOne "NoTrackData1" trackDataTwo "NoTrackData2" PINdata "NoPINData" Securitydata "NoSecData" CurrencyCodeTransaction "356"  
    When  Acquirer forwards the message to SmartEdge
    And   Message is processed by issuer and repsonse is sent back to the acquirer
    Then  Verify this acquirer's <TestCaseId> received "000" <BusinessZoneCode> <feeRuleID> and <feeAmount>

    Examples:
    |TestCaseId                                     | CardNumber         |cvv         |MerchantCategoryCode |  Amount    |BusinessZoneCode|feeRuleID|feeAmount | 
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220880000000021"  |"0442"       | "5960"              | "36738833" |   "356001"     |  "1935" |  "606206"|
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220880000000013"  |"0885"       | "5962"              | "20502"    |   "356001"     |  "1935" |  "353"   |
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220880000000021"  |"0442"       | "5966"              | "1000478" |   "356001"     |  "1935" |  "16523"|
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220880000000005"  |"0121"       | "5967"              | "20502"    |   "356001"     |  "1935" |  "353"   |
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220880000000013"  |"0885"       | "5968"              | "70000" |   "356001"     |  "1935" |  "1170"|
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220880000000005"  |"0121"       | "5962"              | "40000"    |   "356001"     |  "1935" |  "675"   |
    
    #cardproduct5
    
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220990000000028"  |"0427"       | "5960"              | "36738833" |   "356001"     |  "1936" |  "18390"|
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220990000000002"  |"0386"       | "5962"              | "20502"    |   "356001"     |  "1936" |  "31"   |
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220990000000010"  |"0338"       | "5966"              | "1000478" |   "356001"     |  "1936" |  "521"|
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220990000000010"  |"0338"       | "5967"              | "20502"    |   "356001"     |  "1936" |  "31"   |
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220990000000002"  |"0386"       | "5968"              | "20502" |   "356001"     |  "1936" |  "31"|
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220990000000028"  |"0427"       | "5962"              | "20502"    |   "356001"     |  "1936" |  "31"   |
    
    
#@FCValid_Scenerio_Fees_and_charge_POS_Transaction_purchase_MOTO
     
     Scenario Outline: Interchange fee calculation for purchase Ecom transactions with different Amount PosData and BusinessZoneCode
   
  
    Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
    Given Initiate Purchase transaction with PosDataCode as "000010000000" CardNumber <CardNumber> TranType "00" mcc <MerchantCategoryCode> Networkid as "1" Amount <Amount> trackDataOne "NoTrackData1" trackDataTwo "NoTrackData2" PINdata "NoPINData" Securitydata "NoSecData"  
    When  Acquirer forwards the message to SmartEdge
    And   Message is processed by issuer and repsonse is sent back to the acquirer
    Then  Verify this acquirer's <TestCaseId> received "000" <BusinessZoneCode> <feeRuleID> and <feeAmount>

    #Examples: 
    
    |TestCaseId                                     | CardNumber         |CVV     |MerchantCategoryCode |  Amount    |BusinessZoneCode |feeRuleID|feeAmount|
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220880000000021"  |"0442"   | "5960"              | "36738833" |   "356001"     |  "1935" |  "606206"|
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220880000000013"  |"0885"   | "5962"              | "20502"    |   "356001"     |  "1935" |  "353"   |
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220880000000021"  |"0442"   | "5966"              | "1000478" |   "356001"     |  "1935" |  "16523"|
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220880000000005"  |"0121"   | "5967"              | "20502"    |   "356001"     |  "1935" |  "353"   |
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220880000000013"  |"0885"   | "5968"              | "70000" |   "356001"     |  "1935" |  "1170"|
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220880000000005"  |"0121"   | "5962"              | "40000"    |   "356001"     |  "1935" |  "675"   |
    
    #cardproduct5
    
    
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220990000000028"  |"0427"   | "5960"              | "36738833" |   "356001"     |  "1936" |  "18390"|
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220990000000002"  |"0386"   | "5962"              | "20502"    |   "356001"     |  "1936" |  "31"   |
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220990000000010"  |"0338"   | "5966"              | "1000478" |   "356001"     |  "1936" |  "521"|
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220990000000010"  |"0338"   | "5967"              | "20502"    |   "356001"     |  "1936" |  "31"   |
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220990000000002"  |"0386"   | "5968"              | "20502" |   "356001"     |  "1936" |  "31"|
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220990000000028"  |"0427"   | "5962"              | "20502"    |   "356001"     |  "1936" |  "31"   |
    
    
   