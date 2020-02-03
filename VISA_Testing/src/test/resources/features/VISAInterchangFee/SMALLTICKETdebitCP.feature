@VISAFCIF

Feature: Interchage VISA Fee calculation


#SMALLTICKET
 
    @FCValid_Scenerio_Fees_and_charge_POS_Transaction_purchase_smallTicket 
     
     Scenario Outline: Interchange fee calculation for smallTicket  transactions with different Amount PosData and BusinessZoneCode
   
  
    Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
    Given Initiate Purchase transaction with PosDataCode as "510101510300" CardNumber <CardNumber> cvv <cvv> TranType "00" mcc <MerchantCategoryCode> Networkid as "1" Amount <Amount> trackDataOne "TrackData1" trackDataTwo "TrackData2" PINdata "PINData" Securitydata "SecData" CurrencyCodeTransaction "356"  
    When  Acquirer forwards the message to SmartEdge
    Then  Verify this acquirer's <TestCaseId> received "951" <BusinessZoneCode> <feeRuleID> and <feeAmount>
    #Then  Verify acquirer's <TestCaseId> received response "951" <AdditionalResponse_F46> <BusinessZoneCode> <feeRuleID> and <feeAmount>
    
    
    Examples: 
    
    |TestCaseId                                     | CardNumber         |cvv      |MerchantCategoryCode |  Amount    |BusinessZoneCode |feeRuleID|feeAmount|
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220880000000021"  |"0192"      | "5411"              | "100"    |   "356001"     |  "1909" |  "6"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220880000000021"  |"0192"      | "9751"              | "1045"   |   "356001"     |  "1909" |  "20"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220880000000021"  |"0192"      | "5411"              | "999"   |   "356001"     |  "1909" |  "19"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220880000000021"  |"0192"      | "5541"              | "555"   |   "356001"     |  "1909" |  "13"  |
    |"FCIFSCV1TC5VISAPurcResp"                      |"2220880000000021"  |"0192"      | "5200"              | "200"   |   "356001"     |  "1909" |  "7"  |
    |"FCIFSCV1TC6VISAPurcResp"                      |"2220880000000021"  |"0192"      | "5211"              | "500"   |   "356001"     |  "1909" |  "12"  |
    |"FCIFSCV1TC7VISAPurcResp"                      |"2220880000000021"  |"0192"      | "5231"              | "1000"   |   "356001"     |  "1909" |  "20"  |
    |"FCIFSCV1TC8VISAPurcResp"                      |"2220880000000021"  |"0192"      | "5251"              | "300"   |   "356001"     |  "1909" |  "9"  |
    
    
    #123005
    
    |"FCIFSCV1TC24VISAPurcResp"                     |"2220990000000028"  |"0309"      | "5411"              | "100"    |   "356001"     |  "1910" |  "21"  |
    |"FCIFSCV1TC25VISAPurcResp"                     |"2220990000000028"  |"0309"      | "9751"              | "1045"    |   "356001"     |  "1910" |  "22"  |
    |"FCIFSCV1TC26VISAPurcResp"                     |"2220990000000028"  |"0309"      | "9751"              | "999"    |   "356001"     |  "1910" |  "21"  |
    |"FCIFSCV1TC27VISAPurcResp"                     |"2220990000000028"  |"0309"      | "5541"              | "555"    |   "356001"     |  "1910" |  "21"  |
    |"FCIFSCV1TC28VISAPurcResp"                     |"2220990000000028"  |"0309"      | "5200"              | "200"    |   "356001"     |  "1910" |  "21"  |
    |"FCIFSCV1TC29VISAPurcResp"                     |"2220990000000028"  |"0309"      | "5211"              | "500"    |   "356001"     |  "1910" |  "21"  |
    |"FCIFSCV1TC30VISAPurcResp"                     |"2220990000000028"  |"0309"      | "5231"              | "1000"    |   "356001"     |  "1910" |  "22"  |
    |"FCIFSCV1TC31VISAPurcResp"                     |"2220990000000028"  |"0309"      | "5251"              | "300" |   "356001"     |  "1910" |  "21"|
   