@VISAFCIF


Feature: Interchage VISA Fee calculation


@FCValid_Scenerio_Fees_and_charge_POS_Transaction_purchase
     
     Scenario Outline: Interchange fee calculation for purchase Ecom transactions with different Amount PosData and BusinessZoneCode
   
  
    Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
    Given Initiate ECOM transaction "ECOM" CardNumber <CardNumber> cvv <cvv> TranType "00" mcc <MerchantCategoryCode> Networkid as "1" Amount <Amount> trackDataOne "NoTrackData1" trackDataTwo "NoTrackData2" PINdata "NoPINData" Securitydata "SecData" CVV as "CVV2_Present" CurrencyCodeTransaction "356"   
    When  Acquirer forwards the message to SmartEdge
    And   Message is processed by issuer and repsonse is sent back to the acquirer
    Then  Verify this acquirer's <TestCaseId> received "000" <BusinessZoneCode> <feeRuleID> and <feeAmount>
    
    Examples:
    
    |TestCaseId                                     | CardNumber         |cvv          |MerchantCategoryCode |  Amount   |BusinessZoneCode |feeRuleID|feeAmount|
  #123031
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220230000000011"  |"0422"        | "4900"              | "36738833" |   "356001"     |  "2147" |"551082" |
  #123032
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220240000000002"  |"0551"        | "4900"              | "36738833" |   "356001"     |  "2148" |"551082" |
  #123017
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220260000000026"  |"0352"        | "4900"              | "36738833" |   "356001"     |  "2149" |"18390" |
  
    
@FCValid_Scenerio_Fees_and_charge_POS_Transaction_CP_transaction


  Scenario Outline: Interchange fee calculation for TandE transactions with different Amount PosData and BusinessZoneCode
   
   Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
    Given Initiate Purchase transaction with PosDataCode as "510101510300" CardNumber <CardNumber> cvv <cvv> TranType "00" mcc <MerchantCategoryCode> Networkid as "1" Amount <Amount> trackDataOne "TrackData1" trackDataTwo "TrackData2" PINdata "PINData" Securitydata "SecData" CurrencyCodeTransaction "356"
    When  Acquirer forwards the message to SmartEdge
    And   Message is processed by issuer and repsonse is sent back to the acquirer
    Then  Verify this acquirer's <TestCaseId> received "000" <BusinessZoneCode> <feeRuleID> and <feeAmount>
    
    Examples: 
    	  	  
    |TestCaseId                                     | CardNumber         |cvv           |MerchantCategoryCode |  Amount    |trackdata1      | trackdata2   |PINdata    |Securitydata  |BusinessZoneCode |feeRuleID|feeAmount|
  


#123031

    |"FCIFSCV1TC1VISAPurcResp"                      |"2220230000000011"  |"0422"         | "5611"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2130"  |  "451"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220230000000003"  |"0013"         | "5621"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2130"  |  "451"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220230000000029"  |"0902"         | "5631"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2130"  |  "451"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220230000000003"  |"0013"         | "5641"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2130"  |  "451"  |
 #123032   
    |"FCIFSCV1TC1VISAPurcResp"                       |"2220240000000002"  |"0551"         | "5611"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2131" |  "451"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220240000000002"  |"0551"         | "5621"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2131" |  "451"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220240000000002"  |"0551"         | "5631"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2131" |  "451"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220240000000002"  |"0551"         | "5641"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2131" |  "451"  |
#123016

    |"FCIFSCV1TC1VISAPurcResp"                      |"2220250000000019"  |"0570"         | "5611"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2132"  |  "451"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220250000000019"  |"0570"         | "5621"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2132"  |  "451"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220250000000019"  |"0570"         | "5631"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2132"  |  "451"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220250000000019"  |"0570"         | "5641"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2132"  |  "451"  |
 #123017   
   |"FCIFSCV1TC1VISAPurcResp"                       |"2220260000000026"  |"0352"         | "5611"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2133" |  "31"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220260000000026"  |"0352"         | "5621"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2133" |  "31"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220260000000026"  |"0352"         | "5631"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2133" |  "31"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220260000000026"  |"0352"         | "5641"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2133" |  "31"  |
#123004

    |"FCIFSCV1TC1VISAPurcResp"                      |"2220880000000021"  |"0442"         | "5611"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2129"  |  "451"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220880000000021"  |"0442"         | "5621"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2129"  |  "451"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220880000000021"  |"0442"         | "5631"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2129"  |  "451"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220880000000021"  |"0442"         | "5641"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2129"  |  "451"  |
 #123005  
    |"FCIFSCV1TC1VISAPurcResp"                       |"2220990000000002"  |"0386"         | "5611"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2134" |  "31"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220990000000002"  |"0386"         | "5621"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2134" |  "31"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220990000000002"  |"0386"         | "5631"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2134" |  "31"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220990000000002"  |"0386"         | "5641"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2134" |  "31"  |


 @FCValid_Scenerio_Fees_and_charge_POS_Transaction_standard_transaction


  Scenario Outline: Interchange fee calculation for TandE transactions with different Amount PosData and BusinessZoneCode
   
   Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
    Given Initiate TandE transaction with PosDataCode as "510101510300" CardNumber <CardNumber> cvv <cvv> TranType "00" mcc <MerchantCategoryCode> Networkid as "1" Amount <Amount> <trackdata1> <trackdata2> <PINdata> <Securitydata> CurrencyCodeTransaction "356"
    When  Acquirer forwards the message to SmartEdge
    And   Message is processed by issuer and repsonse is sent back to the acquirer
    Then  Verify this acquirer's <TestCaseId> received "000" <BusinessZoneCode> <feeRuleID> and <feeAmount>
    
    Examples: 
    	  	  
    |TestCaseId                                     | CardNumber         |cvv           |MerchantCategoryCode |  Amount    |trackdata1      | trackdata2   |PINdata    |Securitydata  |BusinessZoneCode |feeRuleID|feeAmount|
  


#123031

    |"FCIFSCV1TC1VISAPurcResp"                      |"2220230000000011"  |"0422"         | "5611"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2130"  |  "451"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220230000000003"  |"0013"         | "5621"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2130"  |  "451"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220230000000029"  |"0902"         | "5631"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2130"  |  "451"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220230000000003"  |"0013"         | "5641"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2130"  |  "451"  |
 #123032   
   |"FCIFSCV1TC1VISAPurcResp"                       |"2220240000000002"  |"0551"         | "5611"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2131" |  "451"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220240000000002"  |"0551"         | "5621"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2131" |  "451"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220240000000002"  |"0551"         | "5631"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2131" |  "451"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220240000000002"  |"0551"         | "5641"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2131" |  "451"  |
#123016

    |"FCIFSCV1TC1VISAPurcResp"                      |"2220250000000001"  |"0484"         | "5611"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2132"  |  "451"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220250000000001"  |"0484"         | "5621"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2132"  |  "451"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220250000000001"  |"0484"         | "5631"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2132"  |  "451"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220250000000001"  |"0484"         | "5641"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2132"  |  "451"  |
 #123017   
   |"FCIFSCV1TC1VISAPurcResp"                       |"2220260000000026"  |"0352"         | "5611"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2133" |  "31"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220260000000026"  |"0352"         | "5621"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2133" |  "31"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220260000000026"  |"0352"         | "5631"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2133" |  "31"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220260000000026"  |"0352"         | "5641"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2133" |  "31"  |
#123004

    |"FCIFSCV1TC1VISAPurcResp"                      |"2220880000000021"  |"0442"         | "5611"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2129"  |  "451"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220880000000021"  |"0442"         | "5621"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2129"  |  "451"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220880000000021"  |"0442"         | "5631"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2129"  |  "451"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220880000000021"  |"0442"         | "5641"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2129"  |  "451"  |
 #123005  
   |"FCIFSCV1TC1VISAPurcResp"                       |"2220990000000002"  |"0386"         | "5611"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2134" |  "31"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220990000000002"  |"0386"         | "5621"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2134" |  "31"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220990000000002"  |"0386"         | "5631"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2134" |  "31"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220990000000002"  |"0386"         | "5641"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2134" |  "31"  |


@FCValid_Scenerio_Fees_and_charge_POS_Transaction_purchase_ECOM
     
     Scenario Outline: Interchange fee calculation for purchase Ecom transactions with different Amount PosData and BusinessZoneCode
   
  
    Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
    Given Initiate ECOM transaction "ECOM" CardNumber <CardNumber> cvv <cvv> TranType "00" mcc <MerchantCategoryCode> Networkid as "1" Amount <Amount> trackDataOne "NoTrackData1" trackDataTwo "NoTrackData2" PINdata "NoPINData" Securitydata "SecData" CVV as "CVV2_Present" CurrencyCodeTransaction "356"   
    When  Acquirer forwards the message to SmartEdge
    And   Message is processed by issuer and repsonse is sent back to the acquirer
    Then  Verify this acquirer's <TestCaseId> received "000" <BusinessZoneCode> <feeRuleID> and <feeAmount>
    
    Examples: 
    	  	  
    |TestCaseId                                     | CardNumber         |cvv           |MerchantCategoryCode |  Amount    |trackdata1      | trackdata2   |PINdata    |Securitydata  |BusinessZoneCode |feeRuleID|feeAmount|

#123031

    |"FCIFSCV1TC1VISAPurcResp"                      |"2220230000000011"  |"0422"         | "5611"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2136"  |  "553"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220230000000003"  |"0013"         | "5621"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2136"  |  "553"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220230000000029"  |"0902"         | "5631"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2136"  |  "553"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220230000000003"  |"0013"         | "5641"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2136"  |  "553"  |
 #123032   
   |"FCIFSCV1TC1VISAPurcResp"                       |"2220240000000002"  |"684"         | "5611"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2137" |  "553"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220240000000028"  |"802"         | "5621"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2137" |  "553"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220240000000010"  |"364"         | "5631"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2137" |  "553"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220240000000028"  |"802"         | "5641"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2137" |  "553"  |
#123016

    |"FCIFSCV1TC1VISAPurcResp"                      |"2220250000000019"  |"887"         | "5611"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2138"  |  "553"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220250000000001"  |"774"         | "5621"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2138"  |  "553"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220250000000019"  |"887"         | "5631"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2138"  |  "553"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220250000000019"  |"887"         | "5641"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2138"  |  "553"  |
 #123017   
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220260000000026"  |"175"         | "5611"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2139" |  "31"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220260000000018"  |"843"         | "5621"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2139" |  "31"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220260000000042"  |"443"         | "5631"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2139" |  "31"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220260000000034"  |"181"         | "5641"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2139" |  "31"  |

