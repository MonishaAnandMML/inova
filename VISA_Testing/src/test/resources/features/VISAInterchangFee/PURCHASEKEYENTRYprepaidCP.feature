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
    
    |TestCaseId                                     | CardNumber         |cvv         |MerchantCategoryCode |  Amount   |trackdata1       | trackdata2   |PINdata    |Securitydata  |BusinessZoneCode |feeRuleID|feeAmount|
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220140000000004"  |"0320"         | "5960"              | "20502"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1969" |  "379"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220140000000004"  |"0320"         | "5965"              | "20502"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1969" |  "379"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220140000000012"  |"0496"         | "5966"              | "20502"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1969" |  "379"  |
    |"FCIFSCV1TC5VISAPurcResp"                      |"2220140000000012"  |"0496"         | "5967"              | "20502"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1969" |  "379"  |
    |"FCIFSCV1TC6VISAPurcResp"                      |"2220140000000012"  |"0496"         | "5968"              | "84949"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1969" |  "1507"  |
    |"FCIFSCV1TC7VISAPurcResp"                      |"2220140000000020"  |"0206"         | "5960"              | "84949"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1969" |  "1507"  |
  
     
    
    # card product 123005
    
    |"FCIFSCV1TC20VISAPurcResp"                      |"2220150000000003"  |"0705"         | "5960"              | "83293"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1970" |  "63"  |
    |"FCIFSCV1TC23VISAPurcResp"                      |"2220150000000003"  |"0705"         | "5966"              | "20502"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1970" |  "31"  |
    |"FCIFSCV1TC24VISAPurcResp"                      |"2220150000000011"  |"0706"         | "5967"              | "20502"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1970" |  "31"  |
    |"FCIFSCV1TC25VISAPurcResp"                      |"2220150000000011"  |"0706"         | "5968"              | "20502"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1970" |  "31"  |
    |"FCIFSCV1TC26VISAPurcResp"                      |"2220150000000011"  |"0706"         | "5965"              | "20502"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1970" |  "31"  |
   