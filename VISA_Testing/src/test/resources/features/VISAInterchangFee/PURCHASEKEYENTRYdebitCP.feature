@VISAFCIF

Feature: Interchage VISA Fee calculation

    
#TUPPLE_PURCHASE_KEYENTRY
    
    @FCValid_Scenerio_Fees_and_charge_POS_Transaction_Purchase_Keyentry


  Scenario Outline: Interchange fee calculation for TandE transactions with different Amount PosData and BusinessZoneCode
   
  
    Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
    Given Initiate Purchase Keyentry transaction with PosDataCode as "600030100000" CardNumber <CardNumber> cvv <cvv> TranType "00" mcc <MerchantCategoryCode> Networkid as "1" Amount <Amount> <trackdata1> <trackdata2> <PINdata> <Securitydata> CurrencyCodeTransaction "356"  
    When  Acquirer forwards the message to SmartEdge
    And   Message is processed by issuer and repsonse is sent back to the acquirer
    Then  Verify this acquirer's <TestCaseId> received "000" <BusinessZoneCode> <feeRuleID> and <feeAmount>
    
    Examples: 
    
    |TestCaseId                                     | CardNumber         |cvv           |MerchantCategoryCode |  Amount   |trackdata1       | trackdata2   |PINdata    |Securitydata  |BusinessZoneCode |feeRuleID|feeAmount|
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220880000000021"  |"0442"         | "5960"              | "20502"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1919" |  "353"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220880000000021"  |"0442"         | "5966"              | "10000"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1919" |  "180"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220880000000021"  |"0442"         |"5967"              | "84949"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1919" |  "1417"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220880000000005"  |"0121"         | "5968"              | "84949"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1919" |  "1417"  |
    |"FCIFSCV1TC5VISAPurcResp"                      |"2220880000000005"  |"0121"         | "5962"              | "10000"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1919" |  "180"  |
    
    # card product 123005
    
    |"FCIFSCV1TC20VISAPurcResp"                      |"2220990000000002"  |"0386"         | "5960"              | "83293"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1920" |  "63"  |
    |"FCIFSCV1TC21VISAPurcResp"                      |"2220990000000002"  |"0386"         | "5966"              | "20502"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1920" |  "31"  |
    |"FCIFSCV1TC23VISAPurcResp"                      |"2220990000000002"  |"0386"         | "5967"              | "20502"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1920" |  "31"  |
    |"FCIFSCV1TC24VISAPurcResp"                      |"2220990000000010"  |"0338"         | "5968"              | "20502"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1920" |  "31"  |
    |"FCIFSCV1TC25VISAPurcResp"                      |"2220990000000010"  |"0338"         | "5966"              | "20502"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1920" |  "31"  |
    |"FCIFSCV1TC26VISAPurcResp"                      |"2220990000000010"  |"0338"         | "5960"              | "20502"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1920" |  "31"  |
   #
    