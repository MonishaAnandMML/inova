@VISAFCIF


Feature: Interchage VISA Fee calculation


 @FCValid_Scenerio_Fees_and_charge_POS_Transaction_CP_transaction


  Scenario Outline: Interchange fee calculation for TandE transactions with different Amount PosData and BusinessZoneCode
   
    Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
    Given Initiate TandE transaction with PosDataCode as "510101510300" CardNumber <CardNumber> cvv <cvv> TranType "00" mcc <MerchantCategoryCode> Networkid as "1" Amount <Amount> <trackdata1> <trackdata2> <PINdata> <Securitydata> CurrencyCodeTransaction "356"
    When  Acquirer forwards the message to SmartEdge
    And   Message is processed by issuer and repsonse is sent back to the acquirer
    Then  Verify this acquirer's <TestCaseId> received "000" <BusinessZoneCode> <feeRuleID> and <feeAmount>
    
    Examples: 
    	  	  
    |TestCaseId                                     | CardNumber         |cvv       |MerchantCategoryCode |  Amount    |trackdata1      | trackdata2   |PINdata    |Securitydata  |BusinessZoneCode |feeRuleID|feeAmount|
  

#123037

    |"FCIFSCV1TC1VISAPurcResp"                     |"2220210000000039"  |"0164"     | "5811"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2107"  |  "5094"  |
    |"FCIFSCV1TC2VISAPurcResp"                     |"2220210000000013"  |"0026"     | "5812"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2107"  |  "5094"  |
    |"FCIFSCV1TC3VISAPurcResp"                     |"2220210000000039"  |"0164"     | "5813"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2107"  |  "5094"  |
    |"FCIFSCV1TC4VISAPurcResp"                     |"2220210000000013"  |"0026"     | "5814"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2107"  |  "5094"  |
 #123038   
    |"FCIFSCV1TC1VISAPurcResp"                      |"2229990000000003"  |"0960"     | "5811"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2108" |  "5094"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2229990000000003"  |"0960"      | "5812"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2108" |  "5094"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2229990000000003"  |"0960"      | "5813"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2108" |  "5094"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2229990000000003"  |"0960"      | "5814"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2108" |  "5094"  |
#123037
    |"FCIFSCV1TC1VISAPurcResp"                     |"2220210000000039"  |"0164"     | "5811"              | "1555679"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2109" |  "14584"  |
    |"FCIFSCV1TC2VISAPurcResp"                     |"2220210000000013"  |"0026"     | "5812"              | "1555679"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2109" |  "14584"  |
    |"FCIFSCV1TC3VISAPurcResp"                     |"2220210000000039"  |"0164"     | "5813"              | "1555679"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2109" |  "14584"  |
    |"FCIFSCV1TC4VISAPurcResp"                     |"2220210000000013"  |"0026"     | "5814"              | "1555679"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2109" |  "14584"  |

 #123038 
  
    |"FCIFSCV1TC1VISAPurcResp"                      |"2229990000000003"  |"0960"     | "5811"              | "1555679"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2110" |  "14584"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2229990000000003"  |"0960"     | "5812"              | "1555679"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2110" |  "14584"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2229990000000003"  |"0960"     | "5813"              | "1555679"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2110" |  "14584"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2229990000000003"  |"0960"     | "5814"              | "1555679"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2110" |  "14584"  |
#123037

    |"FCIFSCV1TC1VISAPurcResp"                     |"2220210000000039"  |"0164"     | "5811"              | "2555555"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2111"  |  "20583"  |
    |"FCIFSCV1TC2VISAPurcResp"                     |"2220210000000013"  |"0026"     | "5812"              | "2555555"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2111"  |  "20583"  |
    |"FCIFSCV1TC3VISAPurcResp"                     |"2220210000000039"  |"0164"     | "5813"              | "2555555"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2111"  |  "20583"  |
    |"FCIFSCV1TC4VISAPurcResp"                     |"2220210000000013"  |"0026"     | "5814"              | "2555555"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2111"  |  "20583"  |
 #123038   
    |"FCIFSCV1TC1VISAPurcResp"                      |"2229990000000003"  |"0960"     | "5811"              | "2555555"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2112" |  "20583"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2229990000000003"  |"0960"     | "5812"              | "2555555"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2112" |  "20583"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2229990000000003"  |"0960"     | "5813"              | "2555555"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2112" |  "20583"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2229990000000003"  |"0960"     | "5814"              | "2555555"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2112" |  "20583"  |
#123037
    |"FCIFSCV1TC1VISAPurcResp"                     |"2220210000000039"  |"0164"     | "5811"              | "15555555"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2113" |  "83328"  |
    |"FCIFSCV1TC2VISAPurcResp"                     |"2220210000000013"  |"0026"     | "5812"              | "15555555"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2113" |  "83328"  |
    |"FCIFSCV1TC3VISAPurcResp"                     |"2220210000000039"  |"0164"     | "5813"              | "15555555"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2113" |  "83328"  |
    |"FCIFSCV1TC4VISAPurcResp"                     |"2220210000000013"  |"0026"     | "5814"              | "15555555"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2113" |  "83328"  |

 #123038 
   
    |"FCIFSCV1TC1VISAPurcResp"                      |"2229990000000003"  |"0960"     | "5811"              | "15555555"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2114" |  "83328"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2229990000000003"  |"0960"     | "5812"              | "15555555"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2114" |  "83328"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2229990000000003"  |"0960"     | "5813"              | "15555555"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2114" |  "83328"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2229990000000003"  |"0960"     | "5814"              | "15555555"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2114" |  "83328"  |


 #123037
    |"FCIFSCV1TC1VISAPurcResp"                     |"2220210000000039"  |"0164"     | "5811"              | "55555555"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2115" |  "228072"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220210000000013"  |"0026"     | "5812"              | "55555555"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2115" |  "228072"  |
    |"FCIFSCV1TC3VISAPurcResp"                     |"2220210000000039"  |"0164"     | "5813"              | "55555555"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2115" |  "228072"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220210000000013"  |"0026"     | "5814"              | "55555555"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2115" |  "228072"  |

 #123038 
   
    |"FCIFSCV1TC1VISAPurcResp"                      |"2229990000000003"  |"0960"     | "5811"              | "55555555"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2116" |  "228072"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2229990000000003"  |"0960"     | "5812"              | "55555555"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2116" |  "228072"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2229990000000003"  |"0960"     | "5813"              | "55555555"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2116" |  "228072"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2229990000000003"  |"0960"     | "5814"              | "55555555"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2116" |  "228072"  |
    
    
    
 #123037
    |"FCIFSCV1TC1VISAPurcResp"                     |"2220210000000039"  |"0164"     | "5811"              | "999999999998"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2121" |  "3500"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220210000000013"  |"0026"     | "5812"              | "999999999998"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2121" |  "3500"  |
    |"FCIFSCV1TC3VISAPurcResp"                     |"2220210000000039"  |"0164"     | "5813"              | "999999999998"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2121" |  "3500"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220210000000013"  |"0026"     | "5814"              | "999999999998"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2121" |  "3500"  |

 #123038 
   
    |"FCIFSCV1TC1VISAPurcResp"                      |"2229990000000003"  |"0960"     | "5811"              | "999999999998"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2122" |  "3500"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2229990000000003"  |"0960"     | "5812"              | "999999999998"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2122" |  "3500"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2229990000000003"  |"0960"     | "5813"              | "999999999998"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2122" |  "3500"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2229990000000003"  |"0960"     | "5814"              | "999999999998"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2122" |  "3500"  |
    
    
    @FCValid_Scenerio_Fees_and_charge_POS_Transaction_TandE_transaction


  Scenario Outline: Interchange fee calculation for TandE transactions with different Amount PosData and BusinessZoneCode
   
   Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
    Given Initiate TandE transaction with PosDataCode as "510101510300" CardNumber <CardNumber> cvv <cvv> TranType "00" mcc <MerchantCategoryCode> Networkid as "1" Amount <Amount> <trackdata1> <trackdata2> <PINdata> <Securitydata> CurrencyCodeTransaction "356"
    When  Acquirer forwards the message to SmartEdge
    And   Message is processed by issuer and repsonse is sent back to the acquirer
    Then  Verify this acquirer's <TestCaseId> received "000" <BusinessZoneCode> <feeRuleID> and <feeAmount>
    
    Examples: 
    	  	  
    |TestCaseId                                     | CardNumber         |cvv       |MerchantCategoryCode |  Amount    |trackdata1      | trackdata2   |PINdata    |Securitydata  |BusinessZoneCode |feeRuleID|feeAmount|
  

#123037

    |"FCIFSCV1TC1VISAPurcResp"                     |"2220210000000039"  |"0164"      | "4789"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2117"  |  "553"  |
    
#123038
    |"FCIFSCV1TC1VISAPurcResp"                      |"2229990000000003"  |"0960"      | "4789"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2118" |  "553"  |
    
    
    
    
 