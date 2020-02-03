@VISAFCIF

Feature: Interchage VISA Fee calculation


@FCValid_Scenerio_Fees_and_charge_POS_Transaction_purchase_MOTO_prepaid
     
     Scenario Outline: Interchange fee calculation for purchase Ecom transactions with different Amount PosData and BusinessZoneCode
   
  
    Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
    Given Initiate Purchase transaction with PosDataCode as "000020100000" CardNumber <CardNumber> cvv <cvv> TranType "00" mcc <MerchantCategoryCode> Networkid as "1" Amount <Amount> trackDataOne "NoTrackData1" trackDataTwo "NoTrackData2" PINdata "NoPINData" Securitydata "NoSecData" CurrencyCodeTransaction "356"  
    When  Acquirer forwards the message to SmartEdge
    And   Message is processed by issuer and repsonse is sent back to the acquirer
    Then  Verify this acquirer's <TestCaseId> received "000" <BusinessZoneCode> <feeRuleID> and <feeAmount>

    Examples: 
    |TestCaseId                                     | CardNumber         |cvv         |MerchantCategoryCode |  Amount    |BusinessZoneCode|feeRuleID|feeAmount | 
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220140000000004"  |"0320"       | "5960"              | "36738833" |   "356001"     |  "1985" |  "642950"|
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220140000000020"  |"0206"       | "5962"              | "20502"    |   "356001"     |  "1985" |  "379"   |
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220140000000020"  |"0206"       | "5966"              | "1000478" |   "356001"     |  "1985" |  "17528"|
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220140000000012"  |"0496"       | "5967"              | "20502"    |   "356001"     |  "1985" |  "379"   |
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220140000000004"  |"0320"       | "5968"              | "70000" |   "356001"     |  "1985" |  "1245"|
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220140000000012"  |"0496"       | "5962"              | "40000"    |   "356001"     |  "1985" |  "720"   |
    
    #cardproduct222015
    
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220150000000029"  |"0779"       | "5960"              | "36738833" |   "356001"     |  "1986" |  "18390"|
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220150000000029"  |"0779"       | "5962"              | "20502"    |   "356001"     |  "1986" |  "31"   |
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220150000000029"  |"0779"       | "5966"              | "1000478" |   "356001"     |  "1986" |  "521"|
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220150000000029"  |"0779"       | "5967"              | "20502"    |   "356001"     |  "1986" |  "31"   |
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220150000000011"  |"0706"       | "5968"              | "20502" |   "356001"     |  "1986" |  "31"|
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220150000000011"  |"0706"       | "5962"              | "20502"    |   "356001"     |  "1986" |  "31"   |
    
    
   