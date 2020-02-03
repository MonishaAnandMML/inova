@VISAFCIF
Feature: Interchage VISA Fee calculation


#SMALLTICKET
 
    @FCValid_Scenerio_Fees_and_charge_POS_Transaction_purchase_smallTicket_prepaid 
     
     Scenario Outline: Interchange fee calculation for smallTicket  transactions with different Amount PosData and BusinessZoneCode
   
  
    Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
    Given Initiate Purchase transaction with PosDataCode as "510101510300" CardNumber <CardNumber> cvv <cvv> TranType "00" mcc <MerchantCategoryCode> Networkid as "1" Amount <Amount> trackDataOne "TrackData1" trackDataTwo "TrackData2" PINdata "PINData" Securitydata "SecData" CurrencyCodeTransaction "356"  
    When  Acquirer forwards the message to SmartEdge
    Then  Verify this acquirer's <TestCaseId> received "951" <BusinessZoneCode> <feeRuleID> and <feeAmount>
    #Then  Verify acquirer's <TestCaseId> received response "951" <AdditionalResponse_F46> <BusinessZoneCode> <feeRuleID> and <feeAmount>
    
    
    Examples: 
    
    |TestCaseId                                     | CardNumber         |cvv     |MerchantCategoryCode |  Amount    |BusinessZoneCode |feeRuleID|feeAmount|
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220140000000020"  |"0027"      | "5411"              | "100"    |   "356001"     |  "1959" |  "7"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220140000000020"  |"0027"      | "9751"              | "1045"   |   "356001"     |  "1959" |  "22" |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220140000000020"  |"0027"      | "5411"              | "999"   |   "356001"     |  "1959" |  "21"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220140000000020"  |"0027"      | "5541"              | "555"   |   "356001"     |  "1959" |  "14"  |
    |"FCIFSCV1TC5VISAPurcResp"                      |"2220140000000020"  |"0027"      | "5200"              | "200"   |   "356001"     |  "1959" |  "8"   |
    |"FCIFSCV1TC6VISAPurcResp"                      |"2220140000000020"  |"0027"      | "5211"              | "500"   |   "356001"     |  "1959" |  "13"  |
    |"FCIFSCV1TC7VISAPurcResp"                      |"2220140000000020"  |"0027"      | "5231"              | "1000"  |   "356001"     |  "1959" |  "21" |
    |"FCIFSCV1TC8VISAPurcResp"                      |"2220140000000020"  |"0027"      | "5251"              | "300"   |   "356001"     |  "1959" |  "10"  |
    
    
    #123007
    
    |"FCIFSCV1TC24VISAPurcResp"                     |"2220150000000003"  |"0346"      | "5411"              | "100"    |   "356001"     |  "1960" |  "21"  |
    |"FCIFSCV1TC25VISAPurcResp"                     |"2220150000000003"  |"0346"      | "9751"              | "1045"   |   "356001"     |  "1960" |  "22"  |
    |"FCIFSCV1TC26VISAPurcResp"                     |"2220150000000003"  |"0346"      | "9751"              | "999"    |   "356001"     |  "1960" |  "21"  |
    |"FCIFSCV1TC27VISAPurcResp"                     |"2220150000000003"  |"0346"      | "5541"              | "555"    |   "356001"     |  "1960" |  "21"  |
    |"FCIFSCV1TC28VISAPurcResp"                     |"2220150000000003"  |"0346"      | "5200"              | "200"    |   "356001"     |  "1960" |  "21"  |
    |"FCIFSCV1TC29VISAPurcResp"                     |"2220150000000003"  |"0346"      | "5211"              | "500"    |   "356001"     |  "1960" |  "21"  |
    |"FCIFSCV1TC30VISAPurcResp"                     |"2220150000000003"  |"0346"      | "5231"              | "1000"   |   "356001"     |  "1960" |  "22"  |
    |"FCIFSCV1TC31VISAPurcResp"                     |"2220150000000003"  |"0346"      | "5251"              | "300"    |   "356001"     |  "1960" |  "21"  |
   