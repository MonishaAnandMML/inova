@VISAFCIF

Feature: Interchage VISA Fee calculation

#RECURRING
     
     @FCValid_Scenerio_Fees_and_charge_POS_Transaction_purchase_recurring
     
     Scenario Outline: Interchange fee calculation for purchase recurring transactions with different Amount PosData and BusinessZoneCode
   
    Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
    Given Initiate Purchase Recurring transaction with PosDataCode as "000090100000" CardNumber <CardNumber> cvv <cvv> TranType "00" mcc <MerchantCategoryCode> Networkid as "1" Amount <Amount> trackDataOne "NoTrackData1" trackDataTwo "NoTrackData2" PINdata "NoPINData" Securitydata "NoSecData" CurrencyCodeTransaction "356"   
    When  Acquirer forwards the message to SmartEdge
    And   Message is processed by issuer and repsonse is sent back to the acquirer
    Then  Verify this acquirer's <TestCaseId> received "000" <BusinessZoneCode> <feeRuleID> and <feeAmount>

    Examples: 
    
     |TestCaseId                                     | CardNumber        |cvv           |MerchantCategoryCode |  Amount    |BusinessZoneCode |feeRuleID|feeAmount|

 #<<"123008">>
    |"FCIFSCV1TC24VISAPurcResp"                     |"2220160000000002"  |"0760"         | "4814"              | "20502"    |   "356001"     |  "2020" |  "502"  |
    |"FCIFSCV1TC25VISAPurcResp"                     |"2220160000000010"  |"0731"         | "4899"              | "99999"    |   "356001"     |  "2020" |  "2410" |
    |"FCIFSCV1TC26VISAPurcResp"                     |"2220160000000028"  |"0840"         | "4814"              | "99999"    |   "356001"     |  "2020" |  "2410"  |
 #<<"123033">>
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220170000000001"  |"0800"         | "4814"              | "20502"   |   "356001"     |  "2021" |  "298"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220170000000019"  |"0494"         | "4899"              | "99999"   |   "356001"     |  "2021" |  "1435"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220170000000027"  |"0099"         | "4899"              | "99999"   |   "356001"     |  "2021" |  "1435"  |
  #<<"123034">>
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220180000000018"  |"0731"         | "4814"              | "20502"   |   "356001"     |  "2022" |  "502"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220180000000026"  |"0798"         | "4899"              | "99999"   |   "356001"     |  "2022" |  "2410"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220180000000026"  |"0798"         | "4899"              | "99999"   |   "356001"     |  "2022" |  "2410"  |
   #<<"123035">>
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220190000000017"  |"0707"         | "4899"              | "20502"   |   "356001"     |  "2023" |  "298"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220190000000025"  |"0968"         | "4814"              | "99999"   |   "356001"     |  "2023" |  "1435"  |
   #<<"123036">>
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220200000000006"  |"0677"         | "4814"              | "20502"   |   "356001"     |  "2024" |  "298"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220200000000014"  |"0761"         | "4899"              | "99999"   |   "356001"     |  "2024" |  "1435"  |
    