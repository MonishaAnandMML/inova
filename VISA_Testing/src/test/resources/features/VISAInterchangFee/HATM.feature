@VISAFCIF

Feature: Interchage Fee calculation 

 #TUPPLE_ATM 
    
    @FCValid_Scenerio_Fees_and_charge_POS_Transaction_Cash
     
     Scenario Outline: Interchange fee calculation for Cash transactions with different Amount PosData and BusinessZoneCode
     
    Given Validation of scenario <TestCaseId> for tran type "01" and CardNumber <CardNumber>
    Given Initiate cash transaction with PosDataCode as "210501210100" CardNumber <CardNumber> cvv <cvv> TranType "01" mcc <MerchantCategoryCode> Networkid as "1" Amount <Amount> trackDataOne "TrackData1" trackDataTwo "TrackData2" PINdata "PINData" Securitydata "SecData" CurrencyCodeTransaction "356"  
    When  Acquirer forwards the message to SmartEdge
    And   Message is processed by issuer and repsonse is sent back to the acquirer
    Then  Verify this acquirer's <TestCaseId> received "000" <BusinessZoneCode> <feeRuleID> and <feeAmount>
    
    Examples: 
    
    |TestCaseId                                     | CardNumber         |cvv         |MerchantCategoryCode |  Amount    |BusinessZoneCode |feeRuleID|feeAmount|
    |"FCIFSCV1TC24VISAPurcResp"                     |"2220410000000084"  |"0351"       | "6011"              | "20502"    |   "356001"     |  "2196" |  "35"  |
   
    |"FCIFSCV1TC24VISAPurcResp"                     |"2220410000000084"  |"0351"       | "6011"              | "99999"    |   "356001"     |  "2196" |  "35"  |
    
    |"FCIFSCV1TC24VISAPurcResp"                     |"2220410000000084"  |"0351"       | "6011"              | "99999"    |   "356001"     |  "2196" |  "35"  |
   
    |"FCIFSCV1TC24VISAPurcResp"                     |"2220410000000084"  |"0351"       | "6011"              | "99999"    |   "356001"     |  "2196" |  "35"  |
    
    |"FCIFSCV1TC24VISAPurcResp"                     |"2220410000000084"  |"0351"       | "6011"              | "20502"    |   "356001"     |  "2196" |  "35"  |
    
    |"FCIFSCV1TC24VISAPurcResp"                     |"2220410000000084"  |"0351"       | "6011"              | "20502"    |   "356001"     |  "2196" |  "35"  |
    
    
     @FCValid_Scenerio_Fees_and_charge_POS_Transaction_Cash
     
     Scenario Outline: Interchange fee calculation for Purchase transactions with different Amount PosData and BusinessZoneCode
     
    Given Validation of scenario <TestCaseId> for tran type "01" and CardNumber <CardNumber>
    Given Initiate cash transaction with PosDataCode as "100000100000" CardNumber <CardNumber> cvv <cvv> TranType "01" mcc <MerchantCategoryCode> Networkid as "1" Amount <Amount> trackDataOne "NoTrackData1" trackDataTwo "NoTrackData2" PINdata "NoPINData" Securitydata "NoSecData" CurrencyCodeTransaction "356"                                                      
    When  Acquirer forwards the message to SmartEdge
    And   Message is processed by issuer and repsonse is sent back to the acquirer
    Then  Verify this acquirer's <TestCaseId> received "000" <BusinessZoneCode> <feeRuleID> and <feeAmount>
    
    Examples: 
    
     |TestCaseId                                     | CardNumber          |cvv         |MerchantCategoryCode |  Amount    |BusinessZoneCode |feeRuleID|feeAmount|
     |"FCIFSCV1TC25VISAPurcResp"                     |"2220410000000084"   |"0351"       | "6010"              | "20502"    |   "356001"     |  "2197" |  "200"  |
     |"FCIFSCV1TC25VISAPurcResp"                     |"2220410000000084"  |"0351"       | "6010"              | "99999"    |   "356001"     |  "2197" |  "200"  |
     |"FCIFSCV1TC25VISAPurcResp"                     |"2220410000000084"  |"0351"       | "6010"              | "20502"    |   "356001"     |  "2197" |  "200"  |
     |"FCIFSCV1TC25VISAPurcResp"                     |"2220410000000084"  |"0351"       | "6010"              | "20502"    |   "356001"     |  "2197" |  "200"  |
     |"FCIFSCV1TC25VISAPurcResp"                     |"2220410000000084"  |"0351"       | "6010"              | "99999"    |   "356001"     |  "2197" |  "200"  |
     |"FCIFSCV1TC25VISAPurcResp"                     |"2220410000000084"  |"0351"       | "6010"              | "99999"    |   "356001"     |  "2197" |  "200"  |
    
    
    
    