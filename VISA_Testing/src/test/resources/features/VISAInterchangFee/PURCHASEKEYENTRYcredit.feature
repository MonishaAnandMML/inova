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
    
    |TestCaseId                                     | CardNumber          |cvv         |MerchantCategoryCode |  Amount   |trackdata1       | trackdata2   |PINdata    |Securitydata  |BusinessZoneCode |feeRuleID|feeAmount|
      #123008
      
    |"FCIFSCV1TC20VISAPurcResp"                      |"2220160000000028"  |"0840"       | "5960"              | "83293"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "2050" |  "1759"  |
    |"FCIFSCV1TC23VISAPurcResp"                      |"2220160000000010"  |"0731"       | "5966"              | "20502"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "2050" |  "441"  |
    |"FCIFSCV1TC24VISAPurcResp"                      |"2220160000000028"  |"0840"       | "5967"              | "20502"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "2050" |  "441"  |
    |"FCIFSCV1TC25VISAPurcResp"                      |"2220160000000044"  |"0975"       | "5968"              | "20502"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "2050" |  "441"  |
    |"FCIFSCV1TC26VISAPurcResp"                      |"2220160000000028"  |"0840"       | "5965"              | "20502"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "2050" |  "441"  |
   
       #123033
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220170000000001"  |"0800"       | "5960"              | "20502"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "2051" |  "410"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220170000000027"  |"0099"       | "5965"              | "20502"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "2051" |  "410"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220170000000019"  |"0494"       | "5966"              | "20502"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "2051" |  "410"  |
    |"FCIFSCV1TC5VISAPurcResp"                      |"2220170000000043"  |"0829"       | "5967"              | "20502"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "2051" |  "410"  |
    |"FCIFSCV1TC6VISAPurcResp"                      |"2220170000000019"  |"0494"       | "5968"              | "20502"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "2051" |  "410"  |
    |"FCIFSCV1TC7VISAPurcResp"                      |"2220170000000027"  |"0099"       | "5960"              | "20502"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "2051" |  "410"  |
  
       
       #123034
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220180000000018"  |"0731"      | "5960"              | "20502"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "2052" |  "441"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220180000000026"  |"363"       | "5965"              | "20502"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "2052" |  "441"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220180000000026"  |"363"       | "5966"              | "20502"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "2052" |  "441"  |
    |"FCIFSCV1TC5VISAPurcResp"                      |"2220180000000042"  |"0463"      | "5967"              | "20502"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "2052" |  "441"  |
    |"FCIFSCV1TC6VISAPurcResp"                      |"2220180000000026"  |"363"       | "5968"              | "20502"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "2052" |  "441"  |
    |"FCIFSCV1TC7VISAPurcResp"                      |"2220180000000026"  |"363"       | "5960"              | "20502"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "2052" |  "441"  |
  
       #123035
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220190000000017"  |"0707"       | "5960"              | "20502"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "2053" |  "410"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220190000000025"  |"0968"       | "5965"              | "20502"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "2053" |  "410"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220190000000025"  |"0968"       | "5966"              | "20502"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "2053" |  "410"  |
    |"FCIFSCV1TC5VISAPurcResp"                      |"2220190000000058"  |"0552"       | "5967"              | "20502"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "2053" |  "410"  |
    |"FCIFSCV1TC6VISAPurcResp"                      |"2220190000000017"  |"0707"       | "5968"              | "20502"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "2053" |  "410"  |
    |"FCIFSCV1TC7VISAPurcResp"                      |"2220190000000058"  |"0552"       | "5960"              | "20502"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "2053" |  "410"  |
  
       #123036
    
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220200000000006"  |"0677"       | "5960"              | "20502"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "2054" |  "379"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220200000000014"  |"0761"       | "5965"              | "20502"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "2054" |  "379"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220200000000022"  |"0643"       | "5966"              | "20502"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "2054" |  "379"  |
    |"FCIFSCV1TC5VISAPurcResp"                      |"2220200000000030"  |"0578"       | "5967"              | "20502"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "2054" |  "379"  |
    |"FCIFSCV1TC6VISAPurcResp"                      |"2220200000000022"  |"0643"       | "5968"              | "20502"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "2054" |  "379"  |
    |"FCIFSCV1TC7VISAPurcResp"                      |"2220200000000014"  |"0761"       | "5960"              | "20502"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "2054" |  "379"  |
  