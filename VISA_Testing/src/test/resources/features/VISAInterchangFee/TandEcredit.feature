@VISAFCIF


Feature: Interchage VISA Fee calculation
 
 @FCValid_Scenerio_Fees_and_charge_POS_Transaction_TandE_transaction_credit


  Scenario Outline: Interchange fee calculation for TandE transactions with different Amount PosData and BusinessZoneCode
   
    Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
    Given Initiate TandE transaction with PosDataCode as "510101510300" CardNumber <CardNumber> cvv <cvv> TranType "00" mcc <MerchantCategoryCode> Networkid as "1" Amount <Amount> <trackdata1> <trackdata2> <PINdata> <Securitydata> CurrencyCodeTransaction "356"
    When  Acquirer forwards the message to SmartEdge
    And   Message is processed by issuer and repsonse is sent back to the acquirer
    Then  Verify this acquirer's <TestCaseId> received "000" <BusinessZoneCode> <feeRuleID> and <feeAmount>
    
    Examples: 
    	  	  
    |TestCaseId                                     | CardNumber         |cvv         |MerchantCategoryCode |  Amount    |trackdata1      | trackdata2   |PINdata    |Securitydata  |BusinessZoneCode |feeRuleID|feeAmount|
  

#123008

    |"FCIFSCV1TC1VISAPurcResp"                      |"2220160000000002"  |"0760"      | "5811"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2095"  |  "502"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220160000000002"  |"0760"      | "5812"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2095"  |  "502"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220160000000002"  |"0760"      | "5813"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2095"  |  "502"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220160000000002"  |"0760"      | "5814"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2095"  |  "502"  |
    
#123033
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220170000000001"  |"0800"      | "5811"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2096" |  "482"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220170000000001"  |"0800"      | "5812"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2096" |  "482"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220170000000001"  |"0800"      | "5813"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2096" |  "482"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220170000000001"  |"0800"      | "5814"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2096" |  "482"  |
#
#123034
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220180000000018"  |"0731"      | "5811"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2097" |  "502"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220180000000018"  |"0731"      | "5812"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2097" |  "502"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220180000000018"  |"0731"      | "5813"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2097" |  "502"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220180000000018"  |"0731"      | "5814"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2097" |  "502"  |
#123035
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220190000000017"  |"0707"      | "5811"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2098" |  "410"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220190000000017"  |"0707"      | "5812"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2098" |  "410"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220190000000017"  |"0707"      | "5813"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2098" |  "410"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220190000000017"  |"0707"      | "5814"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2098" |  "410"  |
#123036
       
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220200000000006"  |"0677"      | "5811"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2099" |  "326"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220200000000006"  |"0677"      | "5812"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2099" |  "326"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220200000000006"  |"0677"      | "5813"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2099" |  "326"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220200000000006"  |"0677"      | "5814"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2099" |  "326"  |
    
    
    
    
    
    