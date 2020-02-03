@VISAFCIF

Feature: Interchage VISA Fee calculation


#SMALLTICKET
 
    @FCValid_Scenerio_Fees_and_charge_POS_Transaction_purchase_smallTicket_credit 
     
     Scenario Outline: Interchange fee calculation for smallTicket  transactions with different Amount PosData and BusinessZoneCode
   
  
    Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
    Given Initiate Purchase transaction with PosDataCode as "510101510300" CardNumber <CardNumber> cvv <cvv> TranType "00" mcc <MerchantCategoryCode> Networkid as "1" Amount <Amount> trackDataOne "TrackData1" trackDataTwo "TrackData2" PINdata "PINData" Securitydata "SecData" CurrencyCodeTransaction "356"  
    When  Acquirer forwards the message to SmartEdge
    Then  Verify this acquirer's <TestCaseId> received "951" <BusinessZoneCode> <feeRuleID> and <feeAmount>
    #Then  Verify acquirer's <TestCaseId> received response "951" <AdditionalResponse_F46> <BusinessZoneCode> <feeRuleID> and <feeAmount>
    
    
    Examples: 
    
    |TestCaseId                                     | CardNumber         |cvv        |MerchantCategoryCode |  Amount    |BusinessZoneCode |feeRuleID|feeAmount|
    #123008
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220160000000002"  |"0000"      | "5411"              | "100"    |   "356001"     |  "2010" |  "12"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220160000000002"  |"0000"      | "9751"              | "1045"   |   "356001"     |  "2010" |  "32" |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220160000000002"  |"0000"      | "5411"              | "999"   |   "356001"     |  "2010" |  "31"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220160000000002"  |"0000"      | "5541"              | "555"   |   "356001"     |  "2010" |  "22"  |
    |"FCIFSCV1TC5VISAPurcResp"                      |"2220160000000002"  |"0000"      | "5200"              | "200"   |   "356001"     |  "2010" |  "14"   |
    |"FCIFSCV1TC6VISAPurcResp"                      |"2220160000000002"  |"0000"      | "5211"              | "500"   |   "356001"     |  "2010" |  "21"  |
    |"FCIFSCV1TC7VISAPurcResp"                      |"2220160000000002"  |"0000"      | "5231"              | "1000"  |   "356001"     |  "2010" |  "31"  |
    |"FCIFSCV1TC8VISAPurcResp"                      |"2220160000000002"  |"0000"      | "5251"              | "300"   |   "356001"     |  "2010" |  "16"  |
   #123033
    #
    |"FCIFSCV1TC24VISAPurcResp"                     |"2220170000000001"  |"0645"      | "5411"              | "100"    |   "356001"     |  "2011" |  "6"  |
    |"FCIFSCV1TC25VISAPurcResp"                     |"2220170000000001"  |"0645"      | "9751"              | "1045"   |   "356001"     |  "2011" |  "21"  |
    |"FCIFSCV1TC26VISAPurcResp"                     |"2220170000000001"  |"0645"      | "9751"              | "999"    |   "356001"     |  "2011" |  "20"  |
    |"FCIFSCV1TC27VISAPurcResp"                     |"2220170000000001"  |"0645"      |"5541"               | "555"    |   "356001"     |  "2011" |  "13"  |
    |"FCIFSCV1TC28VISAPurcResp"                     |"2220170000000001"  |"0645"      | "5200"              | "200"    |   "356001"     |  "2011" |  "7"  |
    |"FCIFSCV1TC29VISAPurcResp"                     |"2220170000000001"  |"0645"      | "5211"              | "500"    |   "356001"     |  "2011" |  "12"  |
    |"FCIFSCV1TC30VISAPurcResp"                     |"2220170000000001"  |"0645"      | "5231"              | "1000"   |   "356001"     |  "2011" |  "21"  |
    |"FCIFSCV1TC31VISAPurcResp"                     |"2220170000000001"  |"0645"      | "5251"              | "300"    |   "356001"     |  "2011" |  "9"  |
   
    #123034
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220180000000018"  |"0550"      | "5411"              | "100"    |   "356001"     |  "2012" |  "12"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220180000000018"  |"0550"      | "9751"              | "1045"   |   "356001"     |  "2012" |  "32" |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220180000000018"  |"0550"      | "5411"              | "999"   |   "356001"     |  "2012" |  "31"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220180000000018"  |"0550"      | "5541"              | "100"   |   "356001"     |  "2012" |  "12"  |
    |"FCIFSCV1TC5VISAPurcResp"                      |"2220180000000018"  |"0550"      |"5200"               | "100"   |   "356001"     |  "2012" |  "12"   |
    |"FCIFSCV1TC6VISAPurcResp"                      |"2220180000000018"  |"0550"      | "5211"              | "500"   |   "356001"     |  "2012" |  "21"  |
    |"FCIFSCV1TC7VISAPurcResp"                      |"2220180000000018"  |"0550"      | "5231"              | "1000"  |   "356001"     |  "2012" |  "31" |
    |"FCIFSCV1TC8VISAPurcResp"                      |"2220180000000018"  |"0550"      | "5251"              | "300"   |   "356001"     |  "2012" |  "16"  |
    #123035
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220190000000058"  |"0897"      | "5411"              | "100"    |   "356001"     |  "2013" |  "6"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220190000000058"  |"0897"      | "9751"              | "1045"   |   "356001"     |  "2013" |  "21" |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220190000000058"  |"0897"      | "5411"              | "999"   |   "356001"     |  "2013" |  "20"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220190000000058"  |"0897"      | "5541"              | "555"   |   "356001"     |  "2013" |  "13"  |
    |"FCIFSCV1TC5VISAPurcResp"                      |"2220190000000058"  |"0897"      | "5200"              | "200"   |   "356001"     |  "2013" |  "7"   |
    |"FCIFSCV1TC6VISAPurcResp"                      |"2220190000000058"  |"0897"      | "5211"              | "500"   |   "356001"     |  "2013" |  "12"  |
    |"FCIFSCV1TC7VISAPurcResp"                      |"2220190000000058"  |"0897"      | "5231"              | "1000"  |   "356001"     |  "2013" |  "21" |
    |"FCIFSCV1TC8VISAPurcResp"                      |"2220190000000058"  |"0897"      | "5251"              | "300"   |   "356001"     |  "2013" |  "9"  |
    
    #123036
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220200000000006"  |"0171"      | "5411"              | "100"    |   "356001"     |  "2014" |  "6"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220200000000006"  |"0171"      | "9751"              | "1045"   |   "356001"     |  "2014" |  "21" |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220200000000006"  |"0171"      | "5411"              | "999"   |   "356001"     |  "2014" |  "20"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220200000000006"  |"0171"      | "5541"              | "555"   |   "356001"     |  "2014" |  "13"  |
    |"FCIFSCV1TC5VISAPurcResp"                      |"2220200000000006"  |"0171"      | "5200"              | "200"   |   "356001"     |  "2014" |  "7"   |
    |"FCIFSCV1TC6VISAPurcResp"                      |"2220200000000006"  |"0171"      | "5211"              | "500"   |   "356001"     |  "2014" |  "12"  |
    |"FCIFSCV1TC7VISAPurcResp"                      |"2220200000000006"  |"0171"      | "5231"              | "1000"  |   "356001"     |  "2014" |  "21" |
    |"FCIFSCV1TC8VISAPurcResp"                      |"2220200000000006"  |"0171"      | "5251"              | "300"   |   "356001"     |  "2014" |  "9"  |
    