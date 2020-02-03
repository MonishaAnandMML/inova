@FIC
Feature: Interchage VISA Fee calculation


#TUPPLE_AFD


   #@FCValid_Scenerio_Fees_and_charge_POS_Transaction_AFD


  Scenario Outline: Interchange fee calculation for AFD transactions with different Amount PosData and BusinessZoneCode
   
  
    Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
    Given Initiate AFD transaction with MerchantCategoryCode "5542" CardNumber <CardNumber> TranType "00" PosDataCode <PosDataCode> Networkid as "1" Amount <Amount> trackDataOne "TrackData1" trackDataTwo "TrackData2" PINdata "PINData" Securitydata "SecData"  
    When  Acquirer forwards the message to SmartEdge
    And   Message is processed by issuer and repsonse is sent back to the acquirer
    Then  Verify this acquirer's <TestCaseId> received "000" <BusinessZoneCode> <feeRuleID> and <feeAmount>
    
    #Examples: 
    
    |TestCaseId                                    | CardNumber         |PosDataCode            |  Amount  |BusinessZoneCode|feeRuleID|feeAmount|
    |"FCIFSCV1TC1VISAPurcResp"                     |"2220880000000021"  | "010201210000"        | "20502"  |   "356001"     |  "1905" |  "95"   |
    |"FCIFSCV1TC2VISAPurcResp"                     |"2220880000000005"  | "010201210000"        | "10002"  |   "356001"     |  "1905" |  "95"   |
    |"FCIFSCV1TC3VISAPurcResp"                     |"2220880000000013"  | "010201210000"        | "30502"  |   "356001"     |  "1905" |  "95"   |
    |"FCIFSCV1TC4VISAPurcResp"                     |"2220880000000021"  | "510201910300"        | "50502"  |   "356001"     |  "1905" |  "95"   |
    |"FCIFSCV1TC5VISAPurcResp"                     |"2220880000000005"  | "510201910300"        | "99999"  |   "356001"     |  "1905" |  "95"   |
    |"FCIFSCV1TC6VISAPurcResp"                     |"2220880000000013"  | "510201910300"        | "10000"  |   "356001"     |  "1905" |  "95"   |
    |"FCIFSCV1TC7VISAPurcResp"                     |"2220880000000021"  | "210201210000"        | "23455"  |   "356001"     |  "1905" |  "95"   |
    |"FCIFSCV1TC8VISAPurcResp"                     |"2220880000000005"  | "210201210000"        | "66666"  |   "356001"     |  "1905" |  "95"   |
    |"FCIFSCV1TC9VISAPurcResp"                     |"2220880000000013"  | "210201210000"        | "77777"  |   "356001"     |  "1905" |  "95"   |
    
     #card product 123005
    
    |"FCIFSCV1TC10VISAPurcResp"                     |"2220990000000002"  | "010201210000"        | "20502" |   "356001"     |  "1906" |  "31"   |
    |"FCIFSCV1TC11VISAPurcResp"                     |"2220990000000002"  | "010201210000"        | "10002" |   "356001"     |  "1906" |  "26"   |
    |"FCIFSCV1TC12VISAPurcResp"                     |"2220990000000002"  | "010201210000"        | "30502" |   "356001"     |  "1906" |  "36"   |
    |"FCIFSCV1TC13VISAPurcResp"                     |"2220990000000010"  | "510201910300"        | "50502" |   "356001"     |  "1906" |  "46"   |
    |"FCIFSCV1TC14VISAPurcResp"                     |"2220990000000010"  | "510201910300"        | "99999" |   "356001"     |  "1906" |  "71"   |
    |"FCIFSCV1TC15VISAPurcResp"                     |"2220990000000010"  | "510201910300"        | "10000" |   "356001"     |  "1906" |  "26"   |
    |"FCIFSCV1TC16VISAPurcResp"                     |"2220990000000028"  | "210201210000"        | "23455" |   "356001"     |  "1906" |  "33"   |
    |"FCIFSCV1TC17VISAPurcResp"                     |"2220990000000028"  | "210201210000"        | "66666" |   "356001"     |  "1906" |  "54"   |
    |"FCIFSCV1TC18VISAPurcResp"                     |"2220990000000028"  | "210201210000"        | "77777" |   "356001"     |  "1906" |  "60"   |
    
  
    
#TUPPLE_PURCHASE_KEYENTRY
    
    #@FCValid_Scenerio_Fees_and_charge_POS_Transaction_Purchase_Keyentry


  Scenario Outline: Interchange fee calculation for TandE transactions with different Amount PosData and BusinessZoneCode
   
  
    Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
    Given Initiate Purchase Keyentry transaction with PosDataCode as "600030100000" CardNumber <CardNumber> TranType "00" mcc <MerchantCategoryCode> Networkid as "1" Amount <Amount> <trackdata1> <trackdata2> <PINdata> <Securitydata> 
    When  Acquirer forwards the message to SmartEdge
    And   Message is processed by issuer and repsonse is sent back to the acquirer
    Then  Verify this acquirer's <TestCaseId> received "000" <BusinessZoneCode> <feeRuleID> and <feeAmount>
    
    #Examples: 
    
    |TestCaseId                                     | CardNumber         |MerchantCategoryCode |  Amount   |trackdata1       | trackdata2   |PINdata    |Securitydata  |BusinessZoneCode |feeRuleID|feeAmount|
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220880000000021"  | "5200"              | "20502"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1919" |  "31"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220880000000021"  | "5211"              | "10000"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1919" |  "26"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220880000000021"  | "5231"              | "73983"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1919" |  "58"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220880000000005"  | "5251"              | "84949"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1919" |  "63"  |
    |"FCIFSCV1TC5VISAPurcResp"                      |"2220880000000005"  | "5261"              | "74899"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1919" |  "58"  |
    |"FCIFSCV1TC6VISAPurcResp"                      |"2220880000000005"  | "5271"              | "85999"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1919" |  "64"  |
    |"FCIFSCV1TC7VISAPurcResp"                      |"2220880000000013"  | "5300"              | "84949"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1919" |  "63"  |
    |"FCIFSCV1TC8VISAPurcResp"                      |"2220880000000013"  | "5309"              | "84949"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1919" |  "63"  |
    |"FCIFSCV1TC9VISAPurcResp"                      |"2220880000000013"  | "5310"              | "84939"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1919" |  "63"  |
    |"FCIFSCV1TC10VISAPurcResp"                     |"2220880000000021"  | "5411"              | "74939"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1919" |  "58"  |
    |"FCIFSCV1TC11VISAPurcResp"                     |"2220880000000021"  | "5422"              | "89930"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1919" |  "66"  |
    |"FCIFSCV1TC12VISAPurcResp"                     |"2220880000000021"  | "5331"              | "74939"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1919" |  "58"  |
    |"FCIFSCV1TC13VISAPurcResp"                     |"2220880000000005"  | "5311"              | "84930"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1919" |  "63"  |
    |"FCIFSCV1TC14VISAPurcResp"                     |"2220880000000005"  | "5399"              | "83930"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1919" |  "63"  |
    |"FCIFSCV1TC15VISAPurcResp"                     |"2220880000000005"  | "5441"              | "83388"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1919" |  "63"  |
    |"FCIFSCV1TC16VISAPurcResp"                     |"2220880000000013"  | "5451"              | "8949439" |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1919" |  "4490"  |
    |"FCIFSCV1TC17VISAPurcResp"                     |"2220880000000013"  | "5462"              | "11111"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1919" |  "27"  |
    |"FCIFSCV1TC18VISAPurcResp"                     |"2220880000000013"  | "5499"              | "111739"  |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1919" |  "77"  |
    |"FCIFSCV1TC19VISAPurcResp"                     |"2220880000000013"  | "5999"              | "272911"  |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1919" |  "157"  |
    
     
    
    # card product 123005
    
    |"FCIFSCV1TC20VISAPurcResp"                      |"2220990000000002"  | "5200"              | "83293"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1920" |  "1389"  |
    |"FCIFSCV1TC21VISAPurcResp"                      |"2220990000000002"  | "5211"              | "20502"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1920" |  "353"  |
    |"FCIFSCV1TC23VISAPurcResp"                      |"2220990000000002"  | "5231"              | "73398"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1920" |  "1226"  |
    |"FCIFSCV1TC24VISAPurcResp"                      |"2220990000000010"  | "5251"              | "37838"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1920" |  "639"  |
    |"FCIFSCV1TC25VISAPurcResp"                      |"2220990000000010"  | "5261"              | "83839"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1920" |  "1398"  |
    |"FCIFSCV1TC26VISAPurcResp"                      |"2220990000000010"  | "5271"              | "73889"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1920" |  "1234"  |
    |"FCIFSCV1TC27VISAPurcResp"                      |"2220990000000028"  | "5300"              | "74839"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1920" |  "1250"  |
    |"FCIFSCV1TC28VISAPurcResp"                      |"2220990000000028"  | "5309"              | "99848"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1920" |  "1662"  |
    |"FCIFSCV1TC29VISAPurcResp"                      |"2220990000000028"  | "5310"              | "84400"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1920" |  "1408"  |
    |"FCIFSCV1TC30VISAPurcResp"                      |"2220990000000010"  | "5411"              | "84930"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1920" |  "1416"  |
    |"FCIFSCV1TC31VISAPurcResp"                      |"2220990000000010"  | "5422"              | "82929"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1920" |  "1368"  |
    |"FCIFSCV1TC32VISAPurcResp"                      |"2220990000000010"  | "5331"              | "28292"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1920" |  "489"  |
    |"FCIFSCV1TC33VISAPurcResp"                      |"2220990000000002"  | "5311"              | "28393"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1920" |  "483"  |
    |"FCIFSCV1TC34VISAPurcResp"                      |"2220990000000002"  | "5399"              | "99889"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1920" |  "1663"  |
    |"FCIFSCV1TC35VISAPurcResp"                      |"2220990000000002"  | "5441"              | "999999"  |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1920" |  "16515"  |
    |"FCIFSCV1TC36VISAPurcResp"                      |"2220990000000028"  | "5451"              | "98990"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1920" |  "1648"  |
    |"FCIFSCV1TC37VISAPurcResp"                      |"2220990000000028"  | "5462"              | "65456"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1920" |  "1095"  |
    |"FCIFSCV1TC38VISAPurcResp"                      |"2220990000000028"  | "5499"              | "56789"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1920" |  "937"  |
    |"FCIFSCV1TC39VISAPurcResp"                      |"2220990000000028"  | "5999"              | "64556"   |  "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"   |   "356001"     |  "1920" |  "1080"  |
    
    
    #TUPPLE_PURCHASE
    
    @FCValid_Scenerio_Fees_and_charge_POS_Transaction_purchase 
     
     Scenario Outline: Interchange fee calculation for Purchase transactions with different Amount PosData and BusinessZoneCode
   
  
    Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
    Given Initiate Purchase transaction with PosDataCode as "510101510300" CardNumber <CardNumber> TranType "00" mcc <MerchantCategoryCode> Networkid as "1" Amount <Amount> trackDataOne "TrackData1" trackDataTwo "TrackData2" PINdata "PINData" Securitydata "SecData"  
    When  Acquirer forwards the message to SmartEdge
    And   Message is processed by issuer and repsonse is sent back to the acquirer
    Then  Verify this acquirer's <TestCaseId> received "000" <BusinessZoneCode> <feeRuleID> and <feeAmount>
    
    Examples: 
    
    |TestCaseId                                     | CardNumber         |MerchantCategoryCode |  Amount    |BusinessZoneCode |feeRuleID|feeAmount|
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220880000000021"  | "5411"              | "20502"   |   "356001"     |  "1901" |  "30"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220880000000013"  | "9751"              | "99999"   |   "356001"     |  "1901" |  "30"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220880000000013"  | "5411"              | "10000"   |   "356001"     |  "1901" |  "30"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220880000000021"  | "5541"              | "25552"   |   "356001"     |  "1907" |  "95"  |
    |"FCIFSCV1TC5VISAPurcResp"                      |"2220880000000021"  | "5200"              | "20502"   |   "356001"     |  "1903" |  "179"  |
    |"FCIFSCV1TC6VISAPurcResp"                      |"2220880000000021"  | "5211"              | "10000"   |   "356001"     |  "1903" |  "95"  |
    |"FCIFSCV1TC7VISAPurcResp"                      |"2220880000000021"  | "5231"              | "12345"   |   "356001"     |  "1903" |  "114"  |
    |"FCIFSCV1TC8VISAPurcResp"                      |"2220880000000005"  | "5251"              | "27733"   |   "356001"     |  "1903" |  "237"  |
    |"FCIFSCV1TC9VISAPurcResp"                      |"2220880000000005"  | "5261"              | "26373"   |   "356001"     |  "1903" |  "226"  |
    |"FCIFSCV1TC10VISAPurcResp"                     |"2220880000000005"  | "5271"              | "76373"   |   "356001"     |  "1903" |  "626"  |
    |"FCIFSCV1TC11VISAPurcResp"                     |"2220880000000013"  | "5300"              | "87783"   |   "356001"     |  "1903" |  "717"  |
    |"FCIFSCV1TC12VISAPurcResp"                     |"2220880000000013"  | "5309"              | "44444"   |   "356001"     |  "1903" |  "371"  |
    |"FCIFSCV1TC13VISAPurcResp"                     |"2220880000000013"  | "5310"              | "84899"   |   "356001"     |  "1903" |  "694"  |
    |"FCIFSCV1TC14VISAPurcResp"                     |"2220880000000021"  | "5422"              | "88999"   |   "356001"     |  "1903" |  "727"  |
    |"FCIFSCV1TC15VISAPurcResp"                     |"2220880000000021"  | "5331"              | "88899"   |   "356001"     |  "1903" |  "726"  |
    |"FCIFSCV1TC16VISAPurcResp"                     |"2220880000000005"  | "5311"              | "88886"   |   "356001"     |  "1903" |  "726"  |
    |"FCIFSCV1TC17VISAPurcResp"                     |"2220880000000005"  | "5399"              | "88897"   |   "356001"     |  "1903" |  "726"  |
    |"FCIFSCV1TC18VISAPurcResp"                     |"2220880000000005"  | "5441"              | "88908"   |   "356001"     |  "1903" |  "726"  |
    |"FCIFSCV1TC19VISAPurcResp"                     |"2220880000000013"  | "5451"              | "88997"   |   "356001"     |  "1903" |  "727"  |
    |"FCIFSCV1TC20VISAPurcResp"                     |"2220880000000013"  | "5462"              | "85578"   |   "356001"     |  "1903" |  "700"  |
    |"FCIFSCV1TC21VISAPurcResp"                     |"2220880000000013"  | "5499"              | "66777"   |   "356001"     |  "1903" |  "549"  |
    |"FCIFSCV1TC22VISAPurcResp"                     |"2220880000000013"  | "5999"              | "89998"   |   "356001"     |  "1903" |  "735"  |
  
     
      #card product 123005
    
    |"FCIFSCV1TC24VISAPurcResp"                     |"2220990000000002"  | "5411"              | "20502"    |   "356001"     |  "1902" |  "31"  |
    |"FCIFSCV1TC25VISAPurcResp"                     |"2220990000000028"  | "9751"              | "99999"    |   "356001"     |  "1902" |  "71"  |
    |"FCIFSCV1TC26VISAPurcResp"                     |"2220990000000028"  | "9751"              | "22222"    |   "356001"     |  "1902" |  "32"  |
    |"FCIFSCV1TC27VISAPurcResp"                     |"2220990000000028"  | "5541"              | "50000"    |   "356001"     |  "1908" |  "46"  |
    |"FCIFSCV1TC28VISAPurcResp"                     |"2220990000000002"  | "5200"              | "20502"    |   "356001"     |  "1904" |  "31"  |
    |"FCIFSCV1TC29VISAPurcResp"                     |"2220990000000002"  | "5211"              | "44444"    |   "356001"     |  "1904" |  "43"  |
    |"FCIFSCV1TC30VISAPurcResp"                     |"2220990000000002"  | "5231"              | "35657"    |   "356001"     |  "1904" |  "39"  |
    |"FCIFSCV1TC31VISAPurcResp"                     |"2220990000000010"  | "5251"              | "99999999" |   "356001"     |  "1904" |  "50021"|
    |"FCIFSCV1TC32VISAPurcResp"                     |"2220990000000010"  | "5261"              | "66828"    |   "356001"     |  "1904" |  "54"  |
    |"FCIFSCV1TC33VISAPurcResp"                     |"2220990000000010"  | "5271"              | "57282"    |   "356001"     |  "1904" |  "50"  |
    |"FCIFSCV1TC34VISAPurcResp"                     |"2220990000000028"  | "5300"              | "22770"    |   "356001"     |  "1904" |  "32"  |
    |"FCIFSCV1TC35VISAPurcResp"                     |"2220990000000028"  | "5309"              | "74839"    |   "356001"     |  "1904" |  "58"  |
    |"FCIFSCV1TC36VISAPurcResp"                     |"2220990000000028"  | "5310"              | "74820"    |   "356001"     |  "1904" |  "58"  |
    |"FCIFSCV1TC37VISAPurcResp"                     |"2220990000000010"  | "5422"              | "739822"   |   "356001"     |  "1904" |  "391" |
    |"FCIFSCV1TC38VISAPurcResp"                     |"2220990000000010"  | "5331"              | "10000"    |   "356001"     |  "1904" |  "26"  |
    |"FCIFSCV1TC39VISAPurcResp"                     |"2220990000000002"  | "5311"              | "49478"    |   "356001"     |  "1904" |  "46"  |
    |"FCIFSCV1TC40VISAPurcResp"                     |"2220990000000002"  | "5399"              | "89947438" |   "356001"     |  "1904" |  "44995"|
    |"FCIFSCV1TC41VISAPurcResp"                     |"2220990000000002"  | "5441"              | "10000"    |   "356001"     |  "1904" |  "26"  |
    |"FCIFSCV1TC42VISAPurcResp"                     |"2220990000000028"  | "5451"              | "7489390"  |   "356001"     |  "1904" |  "3766"|
    |"FCIFSCV1TC43VISAPurcResp"                     |"2220990000000028"  | "5462"              | "77775"    |   "356001"     |  "1904" |  "60"  |
    |"FCIFSCV1TC44VISAPurcResp"                     |"2220990000000028"  | "5499"              | "845566"   |   "356001"     |  "1904" |  "444" |
    |"FCIFSCV1TC45VISAPurcResp"                     |"2220990000000028"  | "5999"              | "333333"   |   "356001"     |  "1904" |  "188" |
    
    
    @FCValid_Scenerio_Fees_and_charge_POS_Transaction_TandE


  Scenario Outline: Interchange fee calculation for TandE transactions with different Amount PosData and BusinessZoneCode
   
  
    Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
    Given Initiate TandE transaction with PosDataCode as "510101510300" CardNumber <CardNumber> TranType "00" mcc <MerchantCategoryCode> Networkid as "1" Amount <Amount> <trackdata1> <trackdata2> <PINdata> <Securitydata> 
    When  Acquirer forwards the message to SmartEdge
    And   Message is processed by issuer and repsonse is sent back to the acquirer
    Then  Verify this acquirer's <TestCaseId> received "000" <BusinessZoneCode> <feeRuleID> and <feeAmount>
    
    Examples: 
    
    |TestCaseId                                     | CardNumber         |MerchantCategoryCode |  Amount    |trackdata1      | trackdata2   |PINdata    |Securitydata  |BusinessZoneCode |feeRuleID|feeAmount|
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220880000000021"  | "5811"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1911" |  "254"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220880000000021"  | "5812"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1911" |  "254"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220880000000021"  | "5813"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1911" |  "254"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220880000000021"  | "5814"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1911" |  "254"  |
    |"FCIFSCV1TC5VISAPurcResp"                      |"2220880000000021"  | "3501"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
    |"FCIFSCV1TC6VISAPurcResp"                      |"2220880000000021"  | "3552"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
    |"FCIFSCV1TC7VISAPurcResp"                      |"2220880000000021"  | "3503"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
    |"FCIFSCV1TC9VISAPurcResp"                      |"2220880000000021"  | "3506"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
    |"FCIFSCV1TC12VISAPurcResp"                     |"2220880000000021"  | "3561"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
    |"FCIFSCV1TC13VISAPurcResp"                     |"2220880000000021"  | "3562"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
    |"FCIFSCV1TC14VISAPurcResp"                     |"2220880000000021"  | "3563"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
    |"FCIFSCV1TC15VISAPurcResp"                     |"2220880000000021"  | "3564"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
    |"FCIFSCV1TC16VISAPurcResp"                     |"2220880000000021"  | "3565"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
    |"FCIFSCV1TC17VISAPurcResp"                     |"2220880000000021"  | "3572"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
    |"FCIFSCV1TC18VISAPurcResp"                     |"2220880000000021"  | "3573"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
    |"FCIFSCV1TC19VISAPurcResp"                     |"2220880000000021"  | "3574"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
    |"FCIFSCV1TC20VISAPurcResp"                     |"2220880000000021"  | "3575"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
    |"FCIFSCV1TC21VISAPurcResp"                     |"2220880000000021"  | "3622"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
    |"FCIFSCV1TC22VISAPurcResp"                     |"2220880000000021"  | "3623"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
    |"FCIFSCV1TC23VISAPurcResp"                     |"2220880000000021"  | "3624"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
    |"FCIFSCV1TC24VISAPurcResp"                     |"2220880000000021"  | "3625"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
    |"FCIFSCV1TC25VISAPurcResp"                     |"2220880000000021"  | "3631"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
    |"FCIFSCV1TC26VISAPurcResp"                     |"2220880000000021"  | "3632"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
    |"FCIFSCV1TC27VISAPurcResp"                     |"2220880000000021"  | "3633"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
    |"FCIFSCV1TC28VISAPurcResp"                     |"2220880000000021"  | "3634"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
    |"FCIFSCV1TC29VISAPurcResp"                     |"2220880000000021"  | "3635"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
    |"FCIFSCV1TC30VISAPurcResp"                     |"2220880000000021"  | "3636"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
    |"FCIFSCV1TC33VISAPurcResp"                     |"2220880000000021"  | "3639"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
    |"FCIFSCV1TC35VISAPurcResp"                     |"2220880000000021"  | "3641"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
    |"FCIFSCV1TC36VISAPurcResp"                     |"2220880000000021"  | "3642"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
    |"FCIFSCV1TC37VISAPurcResp"                     |"2220880000000021"  | "3643"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
    |"FCIFSCV1TC38VISAPurcResp"                     |"2220880000000021"  | "3644"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
    |"FCIFSCV1TC39VISAPurcResp"                     |"2220880000000021"  | "3645"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
    |"FCIFSCV1TC40VISAPurcResp"                     |"2220880000000021"  | "3646"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
    |"FCIFSCV1TC41VISAPurcResp"                     |"2220880000000021"  | "3647"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
    |"FCIFSCV1TC42VISAPurcResp"                     |"2220880000000021"  | "3648"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
    |"FCIFSCV1TC43VISAPurcResp"                     |"2220880000000021"  | "3649"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
    |"FCIFSCV1TC44VISAPurcResp"                     |"2220880000000021"  | "3650"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
    |"FCIFSCV1TC45VISAPurcResp"                     |"2220880000000021"  | "3651"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
    |"FCIFSCV1TC46VISAPurcResp"                     |"2220880000000021"  | "3652"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
    |"FCIFSCV1TC47VISAPurcResp"                     |"2220880000000021"  | "3653"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
    |"FCIFSCV1TC48VISAPurcResp"                     |"2220880000000021"  | "3654"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
    |"FCIFSCV1TC49VISAPurcResp"                     |"2220880000000021"  | "3655"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
    |"FCIFSCV1TC50VISAPurcResp"                     |"2220880000000021"  | "3656"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
    |"FCIFSCV1TC51VISAPurcResp"                     |"2220880000000021"  | "3657"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
    |"FCIFSCV1TC52ISAPurcResp"                      |"2220880000000021"  | "3658"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
    |"FCIFSCV1TC53VISAPurcResp"                     |"2220880000000021"  | "3659"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
    |"FCIFSCV1TC54VISAPurcResp"                     |"2220880000000021"  | "3660"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
    |"FCIFSCV1TC55VISAPurcResp"                     |"2220880000000021"  | "3661"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
    |"FCIFSCV1TC56VISAPurcResp"                     |"2220880000000021"  | "3662"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
    |"FCIFSCV1TC57VISAPurcResp"                     |"2220880000000021"  | "3663"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
    |"FCIFSCV1TC58VISAPurcResp"                     |"2220880000000021"  | "3664"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
    |"FCIFSCV1TC59VISAPurcResp"                     |"2220880000000021"  | "3665"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
    |"FCIFSCV1TC60VISAPurcResp"                     |"2220880000000005"  | "3666"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC61VISAPurcResp"                     |"2220880000000005"  | "3667"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC62VISAPurcResp"                     |"2220880000000005"  | "3668"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC63VISAPurcResp"                     |"2220880000000005"  | "3669"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC64VISAPurcResp"                     |"2220880000000005"  | "3670"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC65VISAPurcResp"                     |"2220880000000005"  | "3671"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC66VISAPurcResp"                     |"2220880000000005"  | "3672"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC67VISAPurcResp"                     |"2220880000000005"  | "3673"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC68VISAPurcResp"                     |"2220880000000005"  | "3674"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC69VISAPurcResp"                     |"2220880000000005"  | "3675"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC70VISAPurcResp"                     |"2220880000000005"  | "3676"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC71VISAPurcResp"                     |"2220880000000005"  | "3677"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC72VISAPurcResp"                     |"2220880000000005"  | "3678"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC73VISAPurcResp"                     |"2220880000000005"  | "3679"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC74VISAPurcResp"                     |"2220880000000005"  | "3678"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC75VISAPurcResp"                     |"2220880000000005"  | "3679"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC76VISAPurcResp"                     |"2220880000000005"  | "3680"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC77VISAPurcResp"                     |"2220880000000005"  | "3681"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC78VISAPurcResp"                     |"2220880000000005"  | "3683"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC79VISAPurcResp"                     |"2220880000000005"  | "3684"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC80VISAPurcResp"                     |"2220880000000005"  | "3685"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC81VISAPurcResp"                     |"2220880000000005"  | "3688"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC82VISAPurcResp"                     |"2220880000000005"  | "3689"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC83VISAPurcResp"                     |"2220880000000005"  | "3690"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC84VISAPurcResp"                     |"2220880000000005"  | "3691"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC86VISAPurcResp"                     |"2220880000000005"  | "3693"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC87VISAPurcResp"                     |"2220880000000005"  | "3694"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC88VISAPurcResp"                     |"2220880000000005"  | "3695"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC89VISAPurcResp"                     |"2220880000000005"  | "3696"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC90VISAPurcResp"                     |"2220880000000005"  | "3697"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC911VISAPurcResp"                     |"2220880000000005"  | "3698"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC92VISAPurcResp"                     |"2220880000000005"  | "3699"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC93VISAPurcResp"                     |"2220880000000005"  | "3700"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC94VISAPurcResp"                     |"2220880000000005"  | "3701"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC95VISAPurcResp"                     |"2220880000000005"  | "3702"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC96VISAPurcResp"                     |"2220880000000005"  | "3703"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC97VISAPurcResp"                     |"2220880000000005"  | "3704"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC98VISAPurcResp"                     |"2220880000000005"  | "3705"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC99VISAPurcResp"                     |"2220880000000005"  | "3706"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC100VISAPurcResp"                     |"2220880000000005"  | "3707"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC101VISAPurcResp"                     |"2220880000000005"  | "3708"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC102VISAPurcResp"                     |"2220880000000005"  | "3709"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC103VISAPurcResp"                     |"2220880000000005"  | "3710"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC104VISAPurcResp"                     |"2220880000000005"  | "3711"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC105VISAPurcResp"                     |"2220880000000005"  | "3712"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC106VISAPurcResp"                     |"2220880000000005"  | "3713"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC107VISAPurcResp"                     |"2220880000000005"  | "3714"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC108VISAPurcResp"                     |"2220880000000005"  | "3715"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC109VISAPurcResp"                     |"2220880000000005"  | "3716"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC110VISAPurcResp"                     |"2220880000000005"  | "3717"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC112VISAPurcResp"                     |"2220880000000005"  | "3718"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC113VISAPurcResp"                     |"2220880000000005"  | "3719"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC114VISAPurcResp"                     |"2220880000000005"  | "3720"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC115VISAPurcResp"                     |"2220880000000005"  | "3721"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC116VISAPurcResp"                     |"2220880000000005"  | "3722"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC117VISAPurcResp"                     |"2220880000000005"  | "3723"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC118VISAPurcResp"                     |"2220880000000005"  | "3724"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC119VISAPurcResp"                     |"2220880000000005"  | "3725"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC120VISAPurcResp"                     |"2220880000000005"  | "3726"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC121VISAPurcResp"                     |"2220880000000005"  | "3727"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC122VISAPurcResp"                     |"2220880000000005"  | "3728"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC123VISAPurcResp"                     |"2220880000000005"  | "3729"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC124VISAPurcResp"                     |"2220880000000005"  | "3730"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC125VISAPurcResp"                     |"2220880000000005"  | "3731"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC126VISAPurcResp"                     |"2220880000000005"  | "3732"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC127VISAPurcResp"                     |"2220880000000005"  | "3734"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC128VISAPurcResp"                     |"2220880000000005"  | "3735"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC129VISAPurcResp"                     |"2220880000000005"  | "3736"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC130VISAPurcResp"                     |"2220880000000005"  | "3737"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC131VISAPurcResp"                     |"2220880000000005"  | "3738"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC132VISAPurcResp"                     |"2220880000000005"  | "3739"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC133VISAPurcResp"                     |"2220880000000005"  | "3740"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC134VISAPurcResp"                     |"2220880000000005"  | "3741"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC135VISAPurcResp"                     |"2220880000000005"  | "3742"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC136VISAPurcResp"                     |"2220880000000005"  | "3743"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC137VISAPurcResp"                     |"2220880000000005"  | "3744"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC138VISAPurcResp"                     |"2220880000000005"  | "3745"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC139VISAPurcResp"                     |"2220880000000005"  | "3746"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC140VISAPurcResp"                     |"2220880000000005"  | "3747"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC141VISAPurcResp"                     |"2220880000000005"  | "3748"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC142VISAPurcResp"                     |"2220880000000005"  | "3749"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC143VISAPurcResp"                     |"2220880000000005"  | "3750"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC144VISAPurcResp"                     |"2220880000000005"  | "3751"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC145VISAPurcResp"                     |"2220880000000005"  | "3752"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC146VISAPurcResp"                     |"2220880000000005"  | "3753"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC147VISAPurcResp"                     |"2220880000000005"  | "3754"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC148VISAPurcResp"                     |"2220880000000005"  | "3756"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "142"  |
    |"FCIFSCV1TC149VISAPurcResp"                     |"2220880000000013"  | "3757"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "1200"  |
    |"FCIFSCV1TC150VISAPurcResp"                     |"2220880000000013"  | "3758"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "1200"  |
    |"FCIFSCV1TC151VISAPurcResp"                     |"2220880000000013"  | "3759"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "1200"  |
    |"FCIFSCV1TC152VISAPurcResp"                     |"2220880000000013"  | "3760"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "1200"  |
    |"FCIFSCV1TC153VISAPurcResp"                     |"2220880000000013"  | "3761"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "1200"  |
    |"FCIFSCV1TC154VISAPurcResp"                     |"2220880000000013"  | "3762"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "1200"  |
    |"FCIFSCV1TC155VISAPurcResp"                     |"2220880000000013"  | "3763"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "1200"  |
    |"FCIFSCV1TC156VISAPurcResp"                     |"2220880000000013"  | "3764"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "1200"  |
    |"FCIFSCV1TC157VISAPurcResp"                     |"2220880000000013"  | "3765"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "1200"  |
    |"FCIFSCV1TC158VISAPurcResp"                     |"2220880000000013"  | "3766"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "1200"  |
    |"FCIFSCV1TC160VISAPurcResp"                     |"2220880000000013"  | "3767"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "1200"  |
    |"FCIFSCV1TC161VISAPurcResp"                     |"2220880000000013"  | "3768"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "1200"  |
    |"FCIFSCV1TC162VISAPurcResp"                     |"2220880000000013"  | "3769"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "1200"  |
    |"FCIFSCV1TC163VISAPurcResp"                     |"2220880000000013"  | "3770"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "1200"  |
    |"FCIFSCV1TC164VISAPurcResp"                     |"2220880000000013"  | "3771"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "1200"  |
    |"FCIFSCV1TC165VISAPurcResp"                     |"2220880000000013"  | "3772"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "1200"  |
    |"FCIFSCV1TC166VISAPurcResp"                     |"2220880000000013"  | "3773"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "1200"  |
    |"FCIFSCV1TC167VISAPurcResp"                     |"2220880000000013"  | "3774"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "1200"  |
    |"FCIFSCV1TC168VISAPurcResp"                     |"2220880000000013"  | "3775"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "1200"  |
    |"FCIFSCV1TC169VISAPurcResp"                     |"2220880000000013"  | "3776"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "1200"  |
    |"FCIFSCV1TC170VISAPurcResp"                     |"2220880000000013"  | "3777"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "1200"  |
    |"FCIFSCV1TC171VISAPurcResp"                     |"2220880000000013"  | "3778"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "1200"  |
    |"FCIFSCV1TC172VISAPurcResp"                     |"2220880000000013"  | "3779"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "1200"  |
    |"FCIFSCV1TC173VISAPurcResp"                     |"2220880000000013"  | "3780"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "1200"  |
    |"FCIFSCV1TC174VISAPurcResp"                     |"2220880000000013"  | "3781"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "1200"  |
    |"FCIFSCV1TC175VISAPurcResp"                     |"2220880000000013"  | "3782"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "1200"  |
    |"FCIFSCV1TC176VISAPurcResp"                     |"2220880000000013"  | "3783"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "1200"  |
    |"FCIFSCV1TC177VISAPurcResp"                     |"2220880000000013"  | "3784"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "1200"  |
    |"FCIFSCV1TC178VISAPurcResp"                     |"2220880000000013"  | "3785"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "1200"  |
    |"FCIFSCV1TC179VISAPurcResp"                     |"2220880000000013"  | "3786"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "1200"  |
    |"FCIFSCV1TC180VISAPurcResp"                     |"2220880000000013"  | "3568"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "1200"  |
    |"FCIFSCV1TC181VISAPurcResp"                     |"2220880000000013"  | "3570"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "1200"  |
    |"FCIFSCV1TC182VISAPurcResp"                     |"2220880000000013"  | "3577"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "1200"  |
    |"FCIFSCV1TC183VISAPurcResp"                     |"2220880000000013"  | "3615"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "1200"  |
    |"FCIFSCV1TC184VISAPurcResp"                     |"2220880000000013"  | "3620"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "1200"  |
    |"FCIFSCV1TC185VISAPurcResp"                     |"2220880000000013"  | "3628"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "1200"  |
    |"FCIFSCV1TC186VISAPurcResp"                     |"2220880000000013"  | "3629"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "1200"  |
    |"FCIFSCV1TC187VISAPurcResp"                     |"2220880000000013"  | "3579"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "1200"  |
    |"FCIFSCV1TC188VISAPurcResp"                     |"2220880000000013"  | "3595"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "1200"  |
    |"FCIFSCV1TC190VISAPurcResp"                     |"2220880000000013"  | "3599"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "1200"  |
    |"FCIFSCV1TC191VISAPurcResp"                     |"2220880000000013"  | "3603"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "1200"  |
    |"FCIFSCV1TC192VISAPurcResp"                     |"2220880000000013"  | "3612"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "1200"  |
    |"FCIFSCV1TC194VISAPurcResp"                     |"2220880000000013"  | "3359"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "1200"  |
    |"FCIFSCV1TC197VISAPurcResp"                     |"2220880000000013"  | "3395"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "1200"  |
    |"FCIFSCV1TC198VISAPurcResp"                     |"2220880000000013"  | "3400"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "1200"  |
    |"FCIFSCV1TC199VISAPurcResp"                     |"2220880000000013"  | "7512"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "1200"  |
    
    #NOTWORKING
     #|"FCIFSCV1TC8VISAPurcResp"                      |"2220880000000021"  | "3554"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
     #|"FCIFSCV1TC11VISAPurcResp"                     |"2220880000000021"  | "3508"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
     #|"FCIFSCV1TC193VISAPurcResp"                    |"2220880000000021"  | "7011"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
     #|"FCIFSCV1TC31VISAPurcResp"                     |"2220880000000021"  | "3637"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
     #|"FCIFSCV1TC32VISAPurcResp"                     |"2220880000000021"  | "3638"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
     #|"FCIFSCV1TC195VISAPurcResp"                    |"2220880000000021"  | "3360"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
     #|"FCIFSCV1TC196VISAPurcResp"                    |"2220880000000021"  | "3393"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
     #|"FCIFSCV1TC189VISAPurcResp"                    |"2220880000000021"  | "3597"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
     #|"FCIFSCV1TC85VISAPurcResp"                     |"2220880000000021"  | "3692"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
     #|"FCIFSCV1TC34VISAPurcResp"                     |"2220880000000021"  | "3640"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
     #|"FCIFSCV1TC10VISAPurcResp"                     |"2220880000000021"  | "3557"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1913" |  "254"  |
    
    
    #123005
    
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220990000000028"  | "5811"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1912" |  "31"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220990000000028"  | "5812"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1912" |  "31"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220990000000028"  | "5813"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1912" |  "31"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220990000000028"  | "5814"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1912" |  "31"  |
    |"FCIFSCV1TC5VISAPurcResp"                      |"2220990000000028"  | "3501"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "31"  |
    |"FCIFSCV1TC6VISAPurcResp"                      |"2220990000000028"  | "3552"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "31"  |
    |"FCIFSCV1TC7VISAPurcResp"                      |"2220990000000028"  | "3503"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "31"  |
    |"FCIFSCV1TC9VISAPurcResp"                      |"2220990000000028"  | "3506"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "31"  |
    |"FCIFSCV1TC12VISAPurcResp"                     |"2220990000000028"  | "3561"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "31"  |
    |"FCIFSCV1TC13VISAPurcResp"                     |"2220990000000028"  | "3562"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "31"  |
    |"FCIFSCV1TC14VISAPurcResp"                     |"2220990000000028"  | "3563"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "31"  |
    |"FCIFSCV1TC15VISAPurcResp"                     |"2220990000000028"  | "3564"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "31"  |
    |"FCIFSCV1TC16VISAPurcResp"                     |"2220990000000028"  | "3565"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "31"  |
    |"FCIFSCV1TC17VISAPurcResp"                     |"2220990000000028"  | "3572"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "31"  |
    |"FCIFSCV1TC18VISAPurcResp"                     |"2220990000000028"  | "3573"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "31"  |
    |"FCIFSCV1TC19VISAPurcResp"                     |"2220990000000028"  | "3574"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "31"  |
    |"FCIFSCV1TC20VISAPurcResp"                     |"2220990000000028"  | "3575"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "31"  |
    |"FCIFSCV1TC21VISAPurcResp"                     |"2220990000000028"  | "3622"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "31"  |
    |"FCIFSCV1TC22VISAPurcResp"                     |"2220990000000028"  | "3623"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "31"  |
    |"FCIFSCV1TC23VISAPurcResp"                     |"2220990000000028"  | "3624"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "31"  |
    |"FCIFSCV1TC24VISAPurcResp"                     |"2220990000000028"  | "3625"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "31"  |
    |"FCIFSCV1TC25VISAPurcResp"                     |"2220990000000028"  | "3631"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "31"  |
    |"FCIFSCV1TC27VISAPurcResp"                     |"2220990000000028"  | "3633"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "31"  |
    |"FCIFSCV1TC29VISAPurcResp"                     |"2220990000000028"  | "3635"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "31"  |
    |"FCIFSCV1TC35VISAPurcResp"                     |"2220990000000028"  | "3641"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "31"  |  
    |"FCIFSCV1TC36VISAPurcResp"                     |"2220990000000028"  | "3642"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "31"  |
    |"FCIFSCV1TC37VISAPurcResp"                     |"2220990000000028"  | "3643"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "31"  |
    |"FCIFSCV1TC38VISAPurcResp"                     |"2220990000000028"  | "3644"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "31"  |
    |"FCIFSCV1TC39VISAPurcResp"                     |"2220990000000028"  | "3645"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "31"  |
    |"FCIFSCV1TC40VISAPurcResp"                     |"2220990000000028"  | "3646"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "31"  |
   #|"FCIFSCV1TC41VISAPurcResp"                     |"2220990000000028"  | "3647"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "31"  |
    |"FCIFSCV1TC42VISAPurcResp"                     |"2220990000000028"  | "3648"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "31"  |
    |"FCIFSCV1TC43VISAPurcResp"                     |"2220990000000028"  | "3649"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "31"  |
    |"FCIFSCV1TC44VISAPurcResp"                     |"2220990000000028"  | "3650"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "31"  |
    |"FCIFSCV1TC45VISAPurcResp"                     |"2220990000000028"  | "3651"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "31"  |
    |"FCIFSCV1TC46VISAPurcResp"                     |"2220990000000028"  | "3652"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "31"  |
    |"FCIFSCV1TC47VISAPurcResp"                     |"2220990000000028"  | "3653"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "31"  |
    |"FCIFSCV1TC48VISAPurcResp"                     |"2220990000000028"  | "3654"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "31"  |
    |"FCIFSCV1TC49VISAPurcResp"                     |"2220990000000028"  | "3655"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "31"  |
    |"FCIFSCV1TC50VISAPurcResp"                     |"2220990000000028"  | "3656"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "31"  |
    |"FCIFSCV1TC51VISAPurcResp"                     |"2220990000000028"  | "3657"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "31"  |
    |"FCIFSCV1TC52ISAPurcResp"                      |"2220990000000028"  | "3658"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "31"  |
    |"FCIFSCV1TC53VISAPurcResp"                     |"2220990000000028"  | "3659"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "31"  |
    |"FCIFSCV1TC54VISAPurcResp"                     |"2220990000000028"  | "3660"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "31"  |
    |"FCIFSCV1TC55VISAPurcResp"                     |"2220990000000028"  | "3661"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "31"  |
    |"FCIFSCV1TC56VISAPurcResp"                     |"2220990000000028"  | "3662"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "31"  |
    |"FCIFSCV1TC57VISAPurcResp"                     |"2220990000000028"  | "3663"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "31"  |
    |"FCIFSCV1TC58VISAPurcResp"                     |"2220990000000028"  | "3664"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "31"  |
    |"FCIFSCV1TC59VISAPurcResp"                     |"2220990000000028"  | "3665"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "31"  |
    |"FCIFSCV1TC60VISAPurcResp"                     |"2220990000000002"  | "3666"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC61VISAPurcResp"                     |"2220990000000002"  | "3667"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC62VISAPurcResp"                     |"2220990000000002"  | "3668"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC63VISAPurcResp"                     |"2220990000000002"  | "3669"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC64VISAPurcResp"                     |"2220990000000002"  | "3670"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC65VISAPurcResp"                     |"2220990000000002"  | "3671"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC66VISAPurcResp"                     |"2220990000000002"  | "3672"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC67VISAPurcResp"                     |"2220990000000002"  | "3673"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC68VISAPurcResp"                     |"2220990000000002"  | "3674"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC69VISAPurcResp"                     |"2220990000000002"  | "3675"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC70VISAPurcResp"                     |"2220990000000002"  | "3676"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC71VISAPurcResp"                     |"2220990000000002"  | "3677"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC72VISAPurcResp"                     |"2220990000000002"  | "3678"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC73VISAPurcResp"                     |"2220990000000002"  | "3679"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC74VISAPurcResp"                     |"2220990000000002"  | "3678"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC75VISAPurcResp"                     |"2220990000000002"  | "3679"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC76VISAPurcResp"                     |"2220990000000002"  | "3680"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC77VISAPurcResp"                     |"2220990000000002"  | "3681"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC78VISAPurcResp"                     |"2220990000000002"  | "3683"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC79VISAPurcResp"                     |"2220990000000002"  | "3684"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC80VISAPurcResp"                     |"2220990000000002"  | "3685"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC81VISAPurcResp"                     |"2220990000000002"  | "3688"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC82VISAPurcResp"                     |"2220990000000002"  | "3689"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC83VISAPurcResp"                     |"2220990000000002"  | "3690"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC84VISAPurcResp"                     |"2220990000000002"  | "3691"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC86VISAPurcResp"                     |"2220990000000002"  | "3693"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC87VISAPurcResp"                     |"2220990000000002"  | "3694"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC88VISAPurcResp"                     |"2220990000000002"  | "3695"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC89VISAPurcResp"                     |"2220990000000002"  | "3696"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC90VISAPurcResp"                     |"2220990000000002"  | "3697"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC911VISAPurcResp"                     |"2220990000000002"  | "3698"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC92VISAPurcResp"                     |"2220990000000002"  | "3699"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC93VISAPurcResp"                     |"2220990000000002"  | "3700"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC94VISAPurcResp"                     |"2220990000000002"  | "3701"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC95VISAPurcResp"                     |"2220990000000002"  | "3702"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC96VISAPurcResp"                     |"2220990000000002"  | "3703"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC97VISAPurcResp"                     |"2220990000000002"  | "3704"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC98VISAPurcResp"                     |"2220990000000002"  | "3705"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC99VISAPurcResp"                     |"2220990000000002"  | "3706"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC100VISAPurcResp"                     |"2220990000000002"  | "3707"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC101VISAPurcResp"                     |"2220990000000002"  | "3708"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC102VISAPurcResp"                     |"2220990000000002"  | "3709"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC103VISAPurcResp"                     |"2220990000000002"  | "3710"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC104VISAPurcResp"                     |"2220990000000002"  | "3711"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC105VISAPurcResp"                     |"2220990000000002"  | "3712"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC106VISAPurcResp"                     |"2220990000000002"  | "3713"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC107VISAPurcResp"                     |"2220990000000002"  | "3714"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC108VISAPurcResp"                     |"2220990000000002"  | "3715"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC109VISAPurcResp"                     |"2220990000000002"  | "3716"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC110VISAPurcResp"                     |"2220990000000002"  | "3717"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC112VISAPurcResp"                     |"2220990000000002"  | "3718"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC113VISAPurcResp"                     |"2220990000000002"  | "3719"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC114VISAPurcResp"                     |"2220990000000002"  | "3720"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC115VISAPurcResp"                     |"2220990000000002"  | "3721"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC116VISAPurcResp"                     |"2220990000000002"  | "3722"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC117VISAPurcResp"                     |"2220990000000002"  | "3723"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC118VISAPurcResp"                     |"2220990000000002"  | "3724"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC119VISAPurcResp"                     |"2220990000000002"  | "3725"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC120VISAPurcResp"                     |"2220990000000002"  | "3726"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC121VISAPurcResp"                     |"2220990000000002"  | "3727"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC122VISAPurcResp"                     |"2220990000000002"  | "3728"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC123VISAPurcResp"                     |"2220990000000002"  | "3729"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC124VISAPurcResp"                     |"2220990000000002"  | "3730"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC125VISAPurcResp"                     |"2220990000000002"  | "3731"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC126VISAPurcResp"                     |"2220990000000002"  | "3732"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC127VISAPurcResp"                     |"2220990000000002"  | "3734"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC128VISAPurcResp"                     |"2220990000000002"  | "3735"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC129VISAPurcResp"                     |"2220990000000002"  | "3736"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC130VISAPurcResp"                     |"2220990000000002"  | "3737"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC131VISAPurcResp"                     |"2220990000000002"  | "3738"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC132VISAPurcResp"                     |"2220990000000002"  | "3739"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC133VISAPurcResp"                     |"2220990000000002"  | "3740"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC134VISAPurcResp"                     |"2220990000000002"  | "3741"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC135VISAPurcResp"                     |"2220990000000002"  | "3742"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC136VISAPurcResp"                     |"2220990000000002"  | "3743"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC137VISAPurcResp"                     |"2220990000000002"  | "3744"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC138VISAPurcResp"                     |"2220990000000002"  | "3745"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC139VISAPurcResp"                     |"2220990000000002"  | "3746"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC140VISAPurcResp"                     |"2220990000000002"  | "3747"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC141VISAPurcResp"                     |"2220990000000002"  | "3748"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC27VISAPurcResp"                     |"2220990000000002"  | "3749"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC143VISAPurcResp"                     |"2220990000000002"  | "3750"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC144VISAPurcResp"                     |"2220990000000002"  | "3751"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC145VISAPurcResp"                     |"2220990000000002"  | "3752"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC146VISAPurcResp"                     |"2220990000000002"  | "3753"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC147VISAPurcResp"                     |"2220990000000002"  | "3754"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC148VISAPurcResp"                     |"2220990000000002"  | "3756"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "27"  |
    |"FCIFSCV1TC149VISAPurcResp"                     |"2220990000000010"  | "3757"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "71"  |
    |"FCIFSCV1TC150VISAPurcResp"                     |"2220990000000010"  | "3758"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "71"  |
    |"FCIFSCV1TC151VISAPurcResp"                     |"2220990000000010"  | "3759"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "71"  |
    |"FCIFSCV1TC152VISAPurcResp"                     |"2220990000000010"  | "3760"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "71"  |
    |"FCIFSCV1TC153VISAPurcResp"                     |"2220990000000010"  | "3761"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "71"  |
    |"FCIFSCV1TC154VISAPurcResp"                     |"2220990000000010"  | "3762"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "71"  |
    |"FCIFSCV1TC155VISAPurcResp"                     |"2220990000000010"  | "3763"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "71"  |
    |"FCIFSCV1TC156VISAPurcResp"                     |"2220990000000010"  | "3764"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "71"  |
    |"FCIFSCV1TC157VISAPurcResp"                     |"2220990000000010"  | "3765"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "71"  |
    |"FCIFSCV1TC158VISAPurcResp"                     |"2220990000000010"  | "3766"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "71"  |
    |"FCIFSCV1TC160VISAPurcResp"                     |"2220990000000010"  | "3767"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "71"  |
    |"FCIFSCV1TC161VISAPurcResp"                     |"2220990000000010"  | "3768"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "71"  |
    |"FCIFSCV1TC162VISAPurcResp"                     |"2220990000000010"  | "3769"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "71"  |
    |"FCIFSCV1TC163VISAPurcResp"                     |"2220990000000010"  | "3770"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "71"  |
    |"FCIFSCV1TC164VISAPurcResp"                     |"2220990000000010"  | "3771"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "71"  |
    |"FCIFSCV1TC165VISAPurcResp"                     |"2220990000000010"  | "3772"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "71"  |
    |"FCIFSCV1TC166VISAPurcResp"                     |"2220990000000010"  | "3773"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "71"  |
    |"FCIFSCV1TC167VISAPurcResp"                     |"2220990000000010"  | "3774"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "71"  |
    |"FCIFSCV1TC168VISAPurcResp"                     |"2220990000000010"  | "3775"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "71"  |
    |"FCIFSCV1TC169VISAPurcResp"                     |"2220990000000010"  | "3776"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "71"  |
    |"FCIFSCV1TC170VISAPurcResp"                     |"2220990000000010"  | "3777"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "71"  |
    |"FCIFSCV1TC171VISAPurcResp"                     |"2220990000000010"  | "3778"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "71"  |
    |"FCIFSCV1TC172VISAPurcResp"                     |"2220990000000010"  | "3779"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "71"  |
    |"FCIFSCV1TC173VISAPurcResp"                     |"2220990000000010"  | "3780"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "71"  |
    |"FCIFSCV1TC174VISAPurcResp"                     |"2220990000000010"  | "3781"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "71"  |
    |"FCIFSCV1TC175VISAPurcResp"                     |"2220990000000010"  | "3782"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "71"  |
    |"FCIFSCV1TC176VISAPurcResp"                     |"2220990000000010"  | "3783"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "71"  |
    |"FCIFSCV1TC177VISAPurcResp"                     |"2220990000000010"  | "3784"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "71"  |
    |"FCIFSCV1TC178VISAPurcResp"                     |"2220990000000010"  | "3785"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "71"  |
    |"FCIFSCV1TC179VISAPurcResp"                     |"2220990000000010"  | "3786"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "71"  |
    |"FCIFSCV1TC180VISAPurcResp"                     |"2220990000000010"  | "3568"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "71"  |
    |"FCIFSCV1TC181VISAPurcResp"                     |"2220990000000010"  | "3570"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "71"  |
    |"FCIFSCV1TC182VISAPurcResp"                     |"2220990000000010"  | "3577"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "71"  |
    |"FCIFSCV1TC183VISAPurcResp"                     |"2220990000000010"  | "3615"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "71"  |
    |"FCIFSCV1TC184VISAPurcResp"                     |"2220990000000010"  | "3620"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "71"  |
    |"FCIFSCV1TC185VISAPurcResp"                     |"2220990000000010"  | "3628"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "71"  |
    |"FCIFSCV1TC186VISAPurcResp"                     |"2220990000000010"  | "3629"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "71"  |
    |"FCIFSCV1TC187VISAPurcResp"                     |"2220990000000010"  | "3579"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "71"  |
    |"FCIFSCV1TC188VISAPurcResp"                     |"2220990000000010"  | "3595"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "71"  |
    |"FCIFSCV1TC190VISAPurcResp"                     |"2220990000000010"  | "3599"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "71"  |
    |"FCIFSCV1TC191VISAPurcResp"                     |"2220990000000010"  | "3603"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "71"  |
    |"FCIFSCV1TC192VISAPurcResp"                     |"2220990000000010"  | "3612"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "71"  |
    |"FCIFSCV1TC194VISAPurcResp"                     |"2220990000000010"  | "3359"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "71"  |
    |"FCIFSCV1TC197VISAPurcResp"                     |"2220990000000010"  | "3395"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "71"  |
    |"FCIFSCV1TC198VISAPurcResp"                     |"2220990000000010"  | "3400"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "71"  |
    |"FCIFSCV1TC199VISAPurcResp"                     |"2220990000000010"  | "7512"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "71"  |
    
    #NOTWORKING
    
     #|"FCIFSCV1TC28VISAPurcResp"                     |"2220990000000028"  | "3634"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "31"  |
     #|"FCIFSCV1TC26VISAPurcResp"                     |"2220990000000028"  | "3632"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "31"  |
     #|"FCIFSCV1TC30VISAPurcResp"                     |"2220990000000028"  | "3636"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "31"  |
     #|"FCIFSCV1TC33VISAPurcResp"                     |"2220990000000028"  | "3639"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1914" |  "31"  |
     
    #SMALLTICKET
 
    @FCValid_Scenerio_Fees_and_charge_POS_Transaction_purchase_smallTicket 
     
     Scenario Outline: Interchange fee calculation for smallTicket  transactions with different Amount PosData and BusinessZoneCode
   
  
    Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
    Given Initiate Purchase transaction with PosDataCode as "510101510300" CardNumber <CardNumber> TranType "00" mcc <MerchantCategoryCode> Networkid as "1" Amount <Amount> trackDataOne "TrackData1" trackDataTwo "TrackData2" PINdata "PINData" Securitydata "SecData"  
    When  Acquirer forwards the message to SmartEdge
    Then  Verify this acquirer's <TestCaseId> received "951" <BusinessZoneCode> <feeRuleID> and <feeAmount>
    #Then  Verify acquirer's <TestCaseId> received response "951" <AdditionalResponse_F46> <BusinessZoneCode> <feeRuleID> and <feeAmount>
    
    
    Examples: 
    
    |TestCaseId                                     | CardNumber         |MerchantCategoryCode |  Amount    |BusinessZoneCode |feeRuleID|feeAmount|
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220880000000021"  | "5411"              | "100"    |   "356001"     |  "1909" |  "6"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220880000000013"  | "9751"              | "1045"   |   "356001"     |  "1909" |  "20"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220880000000013"  | "5411"              | "999"   |   "356001"     |  "1909" |  "19"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220880000000021"  | "5541"              | "555"   |   "356001"     |  "1909" |  "13"  |
    |"FCIFSCV1TC5VISAPurcResp"                      |"2220880000000021"  | "5200"              | "200"   |   "356001"     |  "1909" |  "7"  |
    |"FCIFSCV1TC6VISAPurcResp"                      |"2220880000000021"  | "5211"              | "500"   |   "356001"     |  "1909" |  "12"  |
    |"FCIFSCV1TC7VISAPurcResp"                      |"2220880000000021"  | "5231"              | "1000"   |   "356001"     |  "1909" |  "20"  |
    |"FCIFSCV1TC8VISAPurcResp"                      |"2220880000000005"  | "5251"              | "300"   |   "356001"     |  "1909" |  "9"  |
    
    
    #123005
    
    |"FCIFSCV1TC24VISAPurcResp"                     |"2220990000000002"  | "5411"              | "100"    |   "356001"     |  "1910" |  "21"  |
    |"FCIFSCV1TC25VISAPurcResp"                     |"2220990000000028"  | "9751"              | "1045"    |   "356001"     |  "1910" |  "22"  |
    |"FCIFSCV1TC26VISAPurcResp"                     |"2220990000000028"  | "9751"              | "999"    |   "356001"     |  "1910" |  "21"  |
    |"FCIFSCV1TC27VISAPurcResp"                     |"2220990000000028"  | "5541"              | "555"    |   "356001"     |  "1910" |  "21"  |
    |"FCIFSCV1TC28VISAPurcResp"                     |"2220990000000002"  | "5200"              | "200"    |   "356001"     |  "1910" |  "21"  |
    |"FCIFSCV1TC29VISAPurcResp"                     |"2220990000000002"  | "5211"              | "500"    |   "356001"     |  "1910" |  "21"  |
    |"FCIFSCV1TC30VISAPurcResp"                     |"2220990000000002"  | "5231"              | "1000"    |   "356001"     |  "1910" |  "22"  |
    |"FCIFSCV1TC31VISAPurcResp"                     |"2220990000000010"  | "5251"              | "300" |   "356001"     |  "1910" |  "21"|
   #
    
    
    
    #CARD NOT PRESENT TRANSACTION
     
     
#RECURRING
     
     @FCValid_Scenerio_Fees_and_charge_POS_Transaction_purchase_recurring
     
     Scenario Outline: Interchange fee calculation for purchase recurring transactions with different Amount PosData and BusinessZoneCode
   
  
    Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
     Given Initiate Purchase Recurring transaction with PosDataCode as "000090100000" CardNumber <CardNumber> TranType "00" mcc <MerchantCategoryCode> Networkid as "1" Amount <Amount> trackDataOne "NoTrackData1" trackDataTwo "NoTrackData2" PINdata "NoPINData" Securitydata "NoSecData"  
    When  Acquirer forwards the message to SmartEdge
    And   Message is processed by issuer and repsonse is sent back to the acquirer
    Then  Verify this acquirer's <TestCaseId> received "000" <BusinessZoneCode> <feeRuleID> and <feeAmount>

    Examples: 
    
    |TestCaseId                                     | CardNumber         |MerchantCategoryCode |  Amount    |BusinessZoneCode |feeRuleID|feeAmount|
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220880000000021"  | "7349"              | "36738833" |   "356001"     |  "1925" |  "65"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220880000000021"  | "5411"              | "383993"      |   "356001"     |  "1925" |  "65"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220880000000013"  | "9751"              | "99999"    |   "356001"     |  "1925" |  "65"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220880000000013"  | "5411"              | "10000"    |   "356001"     |  "1925" |  "65"  |
    |"FCIFSCV1TC5VISAPurcResp"                      |"2220880000000021"  | "5541"              | "25552"    |   "356001"     |  "1925" |  "65"  |
    |"FCIFSCV1TC6VISAPurcResp"                      |"2220880000000021"  | "5200"              | "20502"    |   "356001"     |  "1925" |  "65"  |
    |"FCIFSCV1TC8VISAPurcResp"                      |"2220880000000021"  | "5211"              | "10000"    |   "356001"     |  "1925" |  "65"  |
    |"FCIFSCV1TC9VISAPurcResp"                      |"2220880000000021"  | "5231"              | "12345"    |   "356001"     |  "1925" |  "65"  |
    |"FCIFSCV1TC10VISAPurcResp"                      |"2220880000000005"  | "5251"              | "27733"    |   "356001"     |  "1925" |  "65"  |
    |"FCIFSCV1TC11VISAPurcResp"                      |"2220880000000021"  | "8220"              | "36738833" |   "356001"     |  "1925" |  "65"  |
    |"FCIFSCV1TC12VISAPurcResp"                      |"2220880000000021"  | "7929"              | "383993"      |   "356001"     |  "1925" |  "65"  |
    |"FCIFSCV1TC13VISAPurcResp"                      |"2220880000000013"  | "7933"              | "99999"    |   "356001"     |  "1925" |  "65"  |
    |"FCIFSCV1TC14VISAPurcResp"                      |"2220880000000013"  | "7941"              | "10000"    |   "356001"     |  "1925" |  "65"  |
    |"FCIFSCV1TC15VISAPurcResp"                      |"2220880000000021"  | "7991"              | "25552"    |   "356001"     |  "1925" |  "65"  |
    |"FCIFSCV1TC16VISAPurcResp"                      |"2220880000000021"  | "7993"              | "20502"    |   "356001"     |  "1925" |  "65"  |
    |"FCIFSCV1TC17VISAPurcResp"                      |"2220880000000021"  | "7995"              | "10000"    |   "356001"     |  "1925" |  "65"  |
    |"FCIFSCV1TC18VISAPurcResp"                      |"2220880000000021"  | "7841"              | "12345"    |   "356001"     |  "1925" |  "65"  |
    |"FCIFSCV1TC19VISAPurcResp"                      |"2220880000000005"  | "7999"              | "27733"    |   "356001"     |  "1925" |  "65"  |
    
    
    #123005
    
    |"FCIFSCV1TC20VISAPurcResp"                      |"2220990000000002"  | "7349"              | "36738833" |   "356001"     |  "1926" |  "18390"  |
    |"FCIFSCV1TC21VISAPurcResp"                      |"2220990000000002"  | "5411"              | "383993"      |   "356001"     |  "1926" |  "213"  |
    |"FCIFSCV1TC22VISAPurcResp"                      |"2220990000000002"  | "9751"              | "99999"    |   "356001"     |  "1926" |  "71"  |
    |"FCIFSCV1TC23VISAPurcResp"                      |"2220990000000028"  | "5411"              | "10000"    |   "356001"     |  "1926" |  "26"  |
    |"FCIFSCV1TC24VISAPurcResp"                      |"2220990000000028"  | "5541"              | "25552"    |   "356001"     |  "1926" |  "34"  |
    |"FCIFSCV1TC25VISAPurcResp"                      |"2220990000000028"  | "5200"              | "20502"    |   "356001"     |  "1926" |  "31"  |
    |"FCIFSCV1TC26VISAPurcResp"                      |"2220990000000028"  | "5211"              | "10000"    |   "356001"     |  "1926" |  "26"  |
    |"FCIFSCV1TC27VISAPurcResp"                      |"2220990000000028"  | "5231"              | "12345"    |   "356001"     |  "1926" |  "27"  |
    |"FCIFSCV1TC28VISAPurcResp"                      |"2220990000000028"  | "5251"              | "27733"    |   "356001"     |  "1926" |  "35"  |
    |"FCIFSCV1TC30VISAPurcResp"                      |"2220990000000002"  | "8220"              | "36738833" |   "356001"     |  "1926" |  "18390"  |
    |"FCIFSCV1TC31VISAPurcResp"                      |"2220990000000002"  | "7929"              | "383993"      |   "356001"     |  "1926" |  "213"  |
    |"FCIFSCV1TC32VISAPurcResp"                      |"2220990000000002"  | "7933"              | "99999"    |   "356001"     |  "1926" |  "71"  |
    |"FCIFSCV1TC33VISAPurcResp"                      |"2220990000000010"  | "7941"              | "10000"    |   "356001"     |  "1926" |  "26"  |
    |"FCIFSCV1TC34VISAPurcResp"                      |"2220990000000010"  | "7991"              | "25552"    |   "356001"     |  "1926" |  "34"  |
    |"FCIFSCV1TC35VISAPurcResp"                      |"2220990000000010"  | "7993"              | "20502"    |   "356001"     |  "1926" |  "31"  |
    |"FCIFSCV1TC36VISAPurcResp"                      |"2220990000000010"  | "7995"              | "10000"    |   "356001"     |  "1926" |  "26"  |
    |"FCIFSCV1TC37VISAPurcResp"                      |"2220990000000010"  | "7841"              | "12345"    |   "356001"     |  "1926" |  "27"  |
    |"FCIFSCV1TC38VISAPurcResp"                      |"2220990000000010"  | "7999"              | "27733"    |   "356001"     |  "1926" |  "35"  |
    
       #RETAIL 2 – CARD NOT PRESENT,
                         
    
    
    
    @FCValid_Scenerio_Fees_and_charge_POS_Transaction_purchase_ECOM
     
     Scenario Outline: Interchange fee calculation for purchase Ecom transactions with different Amount PosData and BusinessZoneCode
   
  
    Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
    Given Initiate ECOM transaction "ECOM" CardNumber <CardNumber> TranType "00" mcc <MerchantCategoryCode> Networkid as "1" Amount <Amount> trackDataOne "NoTrackData1" trackDataTwo "NoTrackData2" PINdata "NoPINData" Securitydata "SecData" CVV as "CVV2_Present"  
    When  Acquirer forwards the message to SmartEdge
    And   Message is processed by issuer and repsonse is sent back to the acquirer
    Then  Verify this acquirer's <TestCaseId> received "000" <BusinessZoneCode> <feeRuleID> and <feeAmount>
    
    Examples: 

    
    |TestCaseId                                     | CardNumber         |MerchantCategoryCode |  Amount    |BusinessZoneCode |feeRuleID|feeAmount|
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220880000000021"  | "4900"              | "36738833"    |   "356001"     |  "1927" |  "238802"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220880000000021"  | "5200"              | "20502"   |   "356001"     |  "1921" |  "148"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220880000000021"  | "5211"              | "10000"   |   "356001"     |  "1921" |  "80"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220880000000021"  | "5231"              | "12345"   |   "356001"     |  "1921" |  "95"  |
    |"FCIFSCV1TC5VISAPurcResp"                      |"2220880000000005"  | "5251"              | "27733"   |   "356001"     |  "1921" |  "195"  |
    |"FCIFSCV1TC6VISAPurcResp"                      |"2220880000000005"  | "5261"              | "26373"   |   "356001"     |  "1921" |  "186"  |
    |"FCIFSCV1TC7VISAPurcResp"                      |"2220880000000005"  | "5271"              | "76373"   |   "356001"     |  "1921" |  "200"  |
    |"FCIFSCV1TC8VISAPurcResp"                      |"2220880000000013"  | "5300"              | "87783"   |   "356001"     |  "1921" |  "200"  |
    |"FCIFSCV1TC9VISAPurcResp"                      |"2220880000000013"  | "5309"              | "44444"   |   "356001"     |  "1921" |  "200"  |
    |"FCIFSCV1TC10VISAPurcResp"                     |"2220880000000013"  | "5310"              | "84899"   |   "356001"     |  "1921" |  "200"  |
    |"FCIFSCV1TC11VISAPurcResp"                     |"2220880000000021"  | "5422"              | "88999"   |   "356001"     |  "1921" |  "200"  |
    |"FCIFSCV1TC12VISAPurcResp"                     |"2220880000000021"  | "5331"              | "88899"   |   "356001"     |  "1921" |  "200"  |
    |"FCIFSCV1TC13VISAPurcResp"                     |"2220880000000005"  | "5311"              | "88886"   |   "356001"     |  "1921" |  "200"  |
    |"FCIFSCV1TC14VISAPurcResp"                     |"2220880000000005"  | "5399"              | "88897"   |   "356001"     |  "1921" |  "200"  |
    |"FCIFSCV1TC16VISAPurcResp"                     |"2220880000000005"  | "5441"              | "88908"   |   "356001"     |  "1921" |  "200"  |
    |"FCIFSCV1TC17VISAPurcResp"                     |"2220880000000013"  | "5451"              | "88997"   |   "356001"     |  "1921" |  "200"  |
    |"FCIFSCV1TC18VISAPurcResp"                     |"2220880000000013"  | "5462"              | "85578"   |   "356001"     |  "1921" |  "200"  |
    |"FCIFSCV1TC19VISAPurcResp"                     |"2220880000000013"  | "5499"              | "66777"   |   "356001"     |  "1921" |  "200"  |
    |"FCIFSCV1TC20VISAPurcResp"                     |"2220880000000013"  | "5999"              | "89998"   |   "356001"     |  "1921" |  "200"  |
    |"FCIFSCV1TC21VISAPurcResp"                     |"2220880000000021"  | "9211"              | "10000"   |   "356001"     |  "1931" |  "80"  |
    |"FCIFSCV1TC21VISAPurcResp"                     |"2220880000000021"  | "9222"              | "12345"   |   "356001"     |  "1931" |  "95"  |
    |"FCIFSCV1TC22VISAPurcResp"                     |"2220880000000005"  | "9223"              | "27733"   |   "356001"     |  "1931" |  "195"  |
    |"FCIFSCV1TC23VISAPurcResp"                     |"2220880000000005"  | "9311"              | "26373"   |   "356001"     |  "1931" |  "186"  |
    |"FCIFSCV1TC24VISAPurcResp"                     |"2220880000000005"  | "9399"              | "76373"   |   "356001"     |  "1931" |  "200"  |
    |"FCIFSCV1TC25VISAPurcResp"                     |"2220880000000013"  | "9402"              | "87783"   |   "356001"     |  "1931" |  "200"  |
    |"FCIFSCV1TC26VISAPurcResp"                     |"2220880000000013"  | "9405"              | "44444"   |   "356001"     |  "1931" |  "200"  |
    |"FCIFSCV1TC27VISAPurcResp"                     |"2220880000000021"  | "9700"              | "12345"   |   "356001"     |  "1931" |  "95"  |
    |"FCIFSCV1TC28VISAPurcResp"                     |"2220880000000021"  | "9701"              | "27733"   |   "356001"     |  "1931" |  "195"  |
    |"FCIFSCV1TC29VISAPurcResp"                     |"2220880000000021"  | "9702"              | "26373"   |   "356001"     |  "1931" |  "186"  |
    |"FCIFSCV1TC30VISAPurcResp"                     |"2220880000000021"  | "9751"              | "76373"   |   "356001"     |  "1931" |  "200"  |
    |"FCIFSCV1TC31VISAPurcResp"                     |"2220880000000013"  | "9752"              | "87783"   |   "356001"     |  "1931" |  "200"  |
    |"FCIFSCV1TC32VISAPurcResp"                     |"2220880000000013"  | "9950"              | "44444"   |   "356001"     |  "1931" |  "200"  |
    |"FCIFSCV1TC33VISAPurcResp"                      |"2220880000000021"  | "4111"              | "20502"    |    "356001"     |  "1947" |  "364"  |
    |"FCIFSCV1TC34VISAPurcResp"                      |"2220880000000021"  | "4112"              | "20502"    |    "356001"     |  "1947" |  "364"  |
    |"FCIFSCV1TC35VISAPurcResp"                      |"2220880000000021"  | "3501"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC36VISAPurcResp"                      |"2220880000000021"  | "3552"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC37VISAPurcResp"                      |"2220880000000021"  | "3503"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC39VISAPurcResp"                      |"2220880000000021"  | "3506"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC42VISAPurcResp"                     |"2220880000000021"  | "3561"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC43VISAPurcResp"                     |"2220880000000021"  | "3562"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC44VISAPurcResp"                     |"2220880000000021"  | "3563"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC45VISAPurcResp"                     |"2220880000000021"  | "3564"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC46VISAPurcResp"                     |"2220880000000021"  | "3565"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC47VISAPurcResp"                     |"2220880000000021"  | "3572"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC48VISAPurcResp"                     |"2220880000000021"  | "3573"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC49VISAPurcResp"                     |"2220880000000021"  | "3574"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC50VISAPurcResp"                     |"2220880000000021"  | "3575"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC51VISAPurcResp"                     |"2220880000000021"  | "3622"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC52VISAPurcResp"                     |"2220880000000021"  | "3623"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC53VISAPurcResp"                     |"2220880000000021"  | "3624"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC54VISAPurcResp"                     |"2220880000000021"  | "3625"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC55VISAPurcResp"                     |"2220880000000021"  | "3631"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC56VISAPurcResp"                     |"2220880000000021"  | "3632"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC57VISAPurcResp"                     |"2220880000000021"  | "3633"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC58VISAPurcResp"                     |"2220880000000021"  | "3634"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC59VISAPurcResp"                     |"2220880000000021"  | "3635"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC60VISAPurcResp"                     |"2220880000000021"  | "3636"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC63VISAPurcResp"                     |"2220880000000021"  | "3639"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC65VISAPurcResp"                     |"2220880000000021"  | "3641"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC66VISAPurcResp"                     |"2220880000000021"  | "3642"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC67VISAPurcResp"                     |"2220880000000021"  | "3643"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC68VISAPurcResp"                     |"2220880000000021"  | "3644"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC69VISAPurcResp"                     |"2220880000000021"  | "3645"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC70VISAPurcResp"                     |"2220880000000021"  | "3646"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC71VISAPurcResp"                     |"2220880000000021"  | "3647"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC72VISAPurcResp"                     |"2220880000000021"  | "3648"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC73VISAPurcResp"                     |"2220880000000021"  | "3649"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC74VISAPurcResp"                     |"2220880000000021"  | "3650"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC75VISAPurcResp"                     |"2220880000000021"  | "3651"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC76VISAPurcResp"                     |"2220880000000021"  | "3652"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC77VISAPurcResp"                     |"2220880000000021"  | "3653"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC78VISAPurcResp"                     |"2220880000000021"  | "3654"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC79VISAPurcResp"                     |"2220880000000021"  | "3655"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC80VISAPurcResp"                     |"2220880000000021"  | "3656"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC81VISAPurcResp"                     |"2220880000000021"  | "3657"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC82ISAPurcResp"                      |"2220880000000021"  | "3658"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC83VISAPurcResp"                     |"2220880000000021"  | "3659"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC84VISAPurcResp"                     |"2220880000000021"  | "3660"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC85VISAPurcResp"                     |"2220880000000021"  | "3661"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC86VISAPurcResp"                     |"2220880000000021"  | "3662"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC87VISAPurcResp"                     |"2220880000000021"  | "3663"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC88VISAPurcResp"                     |"2220880000000021"  | "3664"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC89VISAPurcResp"                     |"2220880000000021"  | "3665"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC90VISAPurcResp"                     |"2220880000000021"  | "3666"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC91VISAPurcResp"                     |"2220880000000021"  | "3667"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC92VISAPurcResp"                     |"2220880000000021"  | "3668"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC93VISAPurcResp"                     |"2220880000000021"  | "3669"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC94VISAPurcResp"                     |"2220880000000021"  | "3670"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC95VISAPurcResp"                     |"2220880000000021"  | "3671"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC96VISAPurcResp"                     |"2220880000000021"  | "3672"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC97VISAPurcResp"                     |"2220880000000021"  | "3673"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC98VISAPurcResp"                     |"2220880000000021"  | "3674"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC99VISAPurcResp"                     |"2220880000000021"  | "3675"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC100VISAPurcResp"                     |"2220880000000021"  | "3676"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC101VISAPurcResp"                     |"2220880000000021"  | "3677"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC102VISAPurcResp"                     |"2220880000000021"  | "3678"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC103VISAPurcResp"                     |"2220880000000021"  | "3679"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC104VISAPurcResp"                     |"2220880000000021"  | "3678"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC105VISAPurcResp"                     |"2220880000000021"  | "3679"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC106VISAPurcResp"                     |"2220880000000021"  | "3680"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC107VISAPurcResp"                     |"2220880000000021"  | "3681"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC108VISAPurcResp"                     |"2220880000000021"  | "3683"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC109VISAPurcResp"                     |"2220880000000021"  | "3684"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC110VISAPurcResp"                     |"2220880000000021"  | "3685"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC111VISAPurcResp"                     |"2220880000000021"  | "3688"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC112VISAPurcResp"                     |"2220880000000021"  | "3689"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC113VISAPurcResp"                     |"2220880000000021"  | "3690"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC114VISAPurcResp"                     |"2220880000000021"  | "3691"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC117VISAPurcResp"                     |"2220880000000021"  | "3694"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC118VISAPurcResp"                     |"2220880000000021"  | "3695"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC119VISAPurcResp"                     |"2220880000000021"  | "3696"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC120VISAPurcResp"                     |"2220880000000021"  | "3697"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC121VISAPurcResp"                     |"2220880000000021"  | "3698"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC122VISAPurcResp"                     |"2220880000000021"  | "3699"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC123VISAPurcResp"                     |"2220880000000021"  | "3700"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC124VISAPurcResp"                     |"2220880000000021"  | "3701"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    #|"FCIFSCV1TC125VISAPurcResp"                     |"2220880000000021"  | "3702"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC126VISAPurcResp"                     |"2220880000000021"  | "3703"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC127VISAPurcResp"                     |"2220880000000021"  | "3704"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC128VISAPurcResp"                     |"2220880000000021"  | "3705"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC129VISAPurcResp"                     |"2220880000000021"  | "3706"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC130VISAPurcResp"                     |"2220880000000021"  | "3707"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC131VISAPurcResp"                     |"2220880000000021"  | "3708"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC132VISAPurcResp"                     |"2220880000000021"  | "3709"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC133VISAPurcResp"                     |"2220880000000021"  | "3710"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC134VISAPurcResp"                     |"2220880000000021"  | "3711"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC135VISAPurcResp"                     |"2220880000000021"  | "3712"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC136VISAPurcResp"                     |"2220880000000021"  | "3713"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC137VISAPurcResp"                     |"2220880000000021"  | "3714"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC138VISAPurcResp"                     |"2220880000000021"  | "3715"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC139VISAPurcResp"                     |"2220880000000021"  | "3716"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC140VISAPurcResp"                     |"2220880000000021"  | "3717"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC142VISAPurcResp"                     |"2220880000000021"  | "3718"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC143VISAPurcResp"                     |"2220880000000021"  | "3719"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC144VISAPurcResp"                     |"2220880000000021"  | "3720"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC145VISAPurcResp"                     |"2220880000000021"  | "3721"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC146VISAPurcResp"                     |"2220880000000021"  | "3722"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC147VISAPurcResp"                     |"2220880000000021"  | "3723"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC148VISAPurcResp"                     |"2220880000000021"  | "3724"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC149VISAPurcResp"                     |"2220880000000021"  | "3725"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC150VISAPurcResp"                     |"2220880000000021"  | "3726"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC151VISAPurcResp"                     |"2220880000000021"  | "3727"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC152VISAPurcResp"                     |"2220880000000021"  | "3728"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC153VISAPurcResp"                     |"2220880000000021"  | "3729"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC154VISAPurcResp"                     |"2220880000000021"  | "3730"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC155VISAPurcResp"                     |"2220880000000021"  | "3731"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC156VISAPurcResp"                     |"2220880000000021"  | "3732"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC157VISAPurcResp"                     |"2220880000000021"  | "3734"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC158VISAPurcResp"                     |"2220880000000021"  | "3735"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC159VISAPurcResp"                     |"2220880000000021"  | "3736"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC160VISAPurcResp"                     |"2220880000000021"  | "3737"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC161VISAPurcResp"                     |"2220880000000021"  | "3738"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC162VISAPurcResp"                     |"2220880000000021"  | "3739"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC163VISAPurcResp"                     |"2220880000000021"  | "3740"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC164VISAPurcResp"                     |"2220880000000021"  | "3741"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC165VISAPurcResp"                     |"2220880000000021"  | "3742"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC166VISAPurcResp"                     |"2220880000000021"  | "3743"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC167VISAPurcResp"                     |"2220880000000021"  | "3744"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC168VISAPurcResp"                     |"2220880000000021"  | "3745"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC169VISAPurcResp"                     |"2220880000000021"  | "3746"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC170VISAPurcResp"                     |"2220880000000021"  | "3747"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC171VISAPurcResp"                     |"2220880000000021"  | "3748"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC172VISAPurcResp"                     |"2220880000000021"  | "3749"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC173VISAPurcResp"                     |"2220880000000021"  | "3750"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC174VISAPurcResp"                     |"2220880000000021"  | "3751"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC175VISAPurcResp"                     |"2220880000000021"  | "3752"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC176VISAPurcResp"                     |"2220880000000021"  | "3753"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC177VISAPurcResp"                     |"2220880000000021"  | "3754"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC178VISAPurcResp"                     |"2220880000000021"  | "3756"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC179VISAPurcResp"                     |"2220880000000021"  | "3757"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC180VISAPurcResp"                     |"2220880000000021"  | "3758"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC181VISAPurcResp"                     |"2220880000000021"  | "3759"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC182VISAPurcResp"                     |"2220880000000021"  | "3760"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC183VISAPurcResp"                     |"2220880000000021"  | "3761"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC184VISAPurcResp"                     |"2220880000000021"  | "3762"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC185VISAPurcResp"                     |"2220880000000021"  | "3763"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC186VISAPurcResp"                     |"2220880000000021"  | "3764"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC187VISAPurcResp"                     |"2220880000000021"  | "3765"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC188VISAPurcResp"                     |"2220880000000021"  | "3766"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC190VISAPurcResp"                     |"2220880000000021"  | "3767"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC191VISAPurcResp"                     |"2220880000000021"  | "3768"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC192VISAPurcResp"                     |"2220880000000021"  | "3769"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC193VISAPurcResp"                     |"2220880000000021"  | "3770"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC194VISAPurcResp"                     |"2220880000000021"  | "3771"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC195VISAPurcResp"                     |"2220880000000021"  | "3772"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC196VISAPurcResp"                     |"2220880000000021"  | "3773"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC197VISAPurcResp"                     |"2220880000000021"  | "3774"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC198VISAPurcResp"                     |"2220880000000021"  | "3775"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC199VISAPurcResp"                     |"2220880000000021"  | "3776"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC200VISAPurcResp"                     |"2220880000000021"  | "3777"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC201VISAPurcResp"                     |"2220880000000021"  | "3778"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC202VISAPurcResp"                     |"2220880000000021"  | "3779"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC203VISAPurcResp"                     |"2220880000000021"  | "3780"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC204VISAPurcResp"                     |"2220880000000021"  | "3781"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC205VISAPurcResp"                     |"2220880000000021"  | "3782"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC206VISAPurcResp"                     |"2220880000000021"  | "3783"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC207VISAPurcResp"                     |"2220880000000021"  | "3784"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC208VISAPurcResp"                     |"2220880000000021"  | "3785"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC209VISAPurcResp"                     |"2220880000000021"  | "3786"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC210VISAPurcResp"                     |"2220880000000021"  | "3568"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC211VISAPurcResp"                     |"2220880000000021"  | "3570"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC212VISAPurcResp"                     |"2220880000000021"  | "3577"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC213VISAPurcResp"                     |"2220880000000021"  | "3615"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC214VISAPurcResp"                     |"2220880000000021"  | "3620"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC215VISAPurcResp"                     |"2220880000000021"  | "3628"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC216VISAPurcResp"                     |"2220880000000021"  | "3629"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC217VISAPurcResp"                     |"2220880000000021"  | "3579"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC218VISAPurcResp"                     |"2220880000000021"  | "3595"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC220VISAPurcResp"                     |"2220880000000021"  | "3599"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC221VISAPurcResp"                     |"2220880000000021"  | "3603"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC222VISAPurcResp"                     |"2220880000000021"  | "3612"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC224VISAPurcResp"                     |"2220880000000021"  | "3359"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC226VISAPurcResp"                     |"2220880000000021"  | "3393"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC227VISAPurcResp"                     |"2220880000000021"  | "3395"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC228VISAPurcResp"                     |"2220880000000021"  | "3400"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    |"FCIFSCV1TC229VISAPurcResp"                     |"2220880000000021"  | "7512"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    
    
   
   #NOTWORKING
    #|"FCIFSCV1TC38VISAPurcResp"                      |"2220880000000021"  | "3554"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    #|"FCIFSCV1TC223VISAPurcResp"                     |"2220880000000021"  | "7011"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    #|"FCIFSCV1TC116VISAPurcResp"                     |"2220880000000021"  | "3693"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    #|"FCIFSCV1TC61VISAPurcResp"                     |"2220880000000021"  | "3637"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    #|"FCIFSCV1TC62VISAPurcResp"                     |"2220880000000021"  | "3638"              | "20502"    |    "356001"     |  "1941" |  "364"  |
     #|"FCIFSCV1TC40VISAPurcResp"                     |"2220880000000021"  | "3557"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    #|"FCIFSCV1TC41VISAPurcResp"                     |"2220880000000021"  | "3508"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    #|"FCIFSCV1TC64VISAPurcResp"                     |"2220880000000021"  | "3640"              | "20502"    |    "356001"     |  "1941" |  "364"  |
     #|"FCIFSCV1TC115VISAPurcResp"                     |"2220880000000021"  | "3692"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    #|"FCIFSCV1TC219VISAPurcResp"                     |"2220880000000021"  | "3597"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    #|"FCIFSCV1TC225VISAPurcResp"                     |"2220880000000021"  | "3360"              | "20502"    |    "356001"     |  "1941" |  "364"  |
    
    
    #123005
   
   
    |"FCIFSCV1TC1VISAPurcResp"                     |"2220990000000002"  | "5200"              | "20502"    |   "356001"     |  "1940" |  "31"  |
    |"FCIFSCV1TC2VISAPurcResp"                     |"2220990000000002"  | "5211"              | "44444"    |   "356001"     |  "1940" |  "43"  |
    |"FCIFSCV1TC3VISAPurcResp"                     |"2220990000000002"  | "5231"              | "35657"    |   "356001"     |  "1940" |  "39"  |
    |"FCIFSCV1TC4VISAPurcResp"                     |"2220990000000010"  | "5251"              | "99999999" |   "356001"     |  "1940" |  "50021"|
    |"FCIFSCV1TC5VISAPurcResp"                     |"2220990000000010"  | "5261"              | "66828"    |   "356001"     |  "1940" |  "54"  |
    |"FCIFSCV1TC6VISAPurcResp"                     |"2220990000000010"  | "5271"              | "57282"    |   "356001"     |  "1940" |  "50"  |
    |"FCIFSCV1TC7VISAPurcResp"                     |"2220990000000028"  | "5300"              | "22770"    |   "356001"     |  "1940" |  "32"  |
    |"FCIFSCV1TC8VISAPurcResp"                     |"2220990000000028"  | "5309"              | "74839"    |   "356001"     |  "1940" |  "58"  |
    |"FCIFSCV1TC9VISAPurcResp"                     |"2220990000000028"  | "5310"              | "74820"    |   "356001"     |  "1940" |  "58"  |
    |"FCIFSCV1TC10VISAPurcResp"                     |"2220990000000010"  | "5422"              | "739822"   |   "356001"     |  "1940" |  "391" |
    |"FCIFSCV1TC11VISAPurcResp"                     |"2220990000000010"  | "5331"              | "10000"    |   "356001"     |  "1940" |  "26"  |
    |"FCIFSCV1TC12VISAPurcResp"                     |"2220990000000002"  | "5311"              | "49478"    |   "356001"     |  "1940" |  "46"  |
    |"FCIFSCV1TC13VISAPurcResp"                     |"2220990000000002"  | "5399"              | "89947438" |   "356001"     |  "1940" |  "44995"|
    |"FCIFSCV1TC14VISAPurcResp"                     |"2220990000000002"  | "5441"              | "10000"    |   "356001"     |  "1940" |  "26"  |
    |"FCIFSCV1TC15VISAPurcResp"                     |"2220990000000028"  | "5451"              | "7489390"  |   "356001"     |  "1940" |  "3766"|
    |"FCIFSCV1TC16VISAPurcResp"                     |"2220990000000028"  | "5462"              | "77775"    |   "356001"     |  "1940" |  "60"  |
    |"FCIFSCV1TC17VISAPurcResp"                     |"2220990000000028"  | "5499"              | "845566"   |   "356001"     |  "1940" |  "444" |
    |"FCIFSCV1TC18VISAPurcResp"                     |"2220990000000028"  | "5999"              | "333333"   |   "356001"     |  "1940" |  "188" |
    |"FCIFSCV1TC19VISAPurcResp"                      |"2220990000000028"  | "9211"              | "10000"   |   "356001"     |  "1932" |  "26"  |
    |"FCIFSCV1TC20VISAPurcResp"                      |"2220990000000028"  | "9222"              | "12345"   |   "356001"     |  "1932" |  "27"  |
    |"FCIFSCV1TC21VSAPurcResp"                      |"2220990000000028"  | "9223"              | "27733"   |   "356001"     |  "1932" |  "35"  |
    |"FCIFSCV1TC23VISAPurcResp"                      |"2220990000000002"  | "9311"              | "26373"   |   "356001"     |  "1932" |  "34"  |
    |"FCIFSCV1TC24VISAPurcResp"                     |"2220990000000002"  | "9399"              | "76373"   |   "356001"     |  "1932" |  "59"  |
    |"FCIFSCV1TC25VISAPurcResp"                     |"2220990000000002"  | "9402"              | "87783"   |   "356001"     |  "1932" |  "65"  |
    |"FCIFSCV1TC26VISAPurcResp"                     |"2220990000000028"  | "9405"              | "44444"   |   "356001"     |  "1932" |  "43"  |
    |"FCIFSCV1TC27VISAPurcResp"                      |"2220990000000002"  | "9700"              | "12345"   |   "356001"     |  "1932" |  "27"  |
    |"FCIFSCV1TC28VISAPurcResp"                      |"2220990000000002"  | "9701"              | "27733"   |   "356001"     |  "1932" |  "35"  |
    |"FCIFSCV1TC29VISAPurcResp"                      |"2220990000000002"  | "9702"              | "26373"   |   "356001"     |  "1932" |  "34"  |
    |"FCIFSCV1TC30VISAPurcResp"                     |"2220990000000028"  | "9751"              | "76373"   |   "356001"     |  "1932" |  "59"  |
    |"FCIFSCV1TC31VISAPurcResp"                     |"2220990000000028"  | "9752"              | "87783"   |   "356001"     |  "1932" |  "65"  |
    |"FCIFSCV1TC32VISAPurcResp"                     |"2220990000000028"  | "9950"              | "44444"   |   "356001"     |  "1932" |  "43"  |
    |"FCIFSCV1TC33VISAPurcResp"                      |"2220990000000028"  | "4111"              | "20502"    |    "356001"     |  "1948" |  "31"  |
    |"FCIFSCV1TC344VISAPurcResp"                      |"2220990000000028"  | "4112"              | "20502"    |    "356001"     |  "1948" |  "31"  |

    |"FCIFSCV1TC35VISAPurcResp"                      |"2220990000000028"  | "3501"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC36VISAPurcResp"                      |"2220990000000028"  | "3552"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC37VISAPurcResp"                      |"2220990000000028"  | "3503"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC39VISAPurcResp"                      |"2220990000000028"  | "3506"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC42VISAPurcResp"                     |"2220990000000028"  | "3561"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC43VISAPurcResp"                     |"2220990000000028"  | "3562"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC44VISAPurcResp"                     |"2220990000000028"  | "3563"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC45VISAPurcResp"                     |"2220990000000028"  | "3564"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC46VISAPurcResp"                     |"2220990000000028"  | "3565"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC47VISAPurcResp"                     |"2220990000000028"  | "3572"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC48VISAPurcResp"                     |"2220990000000028"  | "3573"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC49VISAPurcResp"                     |"2220990000000028"  | "3574"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC50VISAPurcResp"                     |"2220990000000028"  | "3575"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC51VISAPurcResp"                     |"2220990000000028"  | "3622"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC52VISAPurcResp"                     |"2220990000000028"  | "3623"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC53VISAPurcResp"                     |"2220990000000028"  | "3624"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC54VISAPurcResp"                     |"2220990000000028"  | "3625"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC55VISAPurcResp"                     |"2220990000000028"  | "3631"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC56VISAPurcResp"                     |"2220990000000028"  | "3632"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC57VISAPurcResp"                     |"2220990000000028"  | "3633"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC58VISAPurcResp"                     |"2220990000000028"  | "3634"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC59VISAPurcResp"                     |"2220990000000028"  | "3635"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC60VISAPurcResp"                     |"2220990000000028"  | "3636"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC63VISAPurcResp"                     |"2220990000000028"  | "3639"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC65VISAPurcResp"                     |"2220990000000028"  | "3641"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC66VISAPurcResp"                     |"2220990000000028"  | "3642"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC67VISAPurcResp"                     |"2220990000000028"  | "3643"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC68VISAPurcResp"                     |"2220990000000028"  | "3644"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC69VISAPurcResp"                     |"2220990000000028"  | "3645"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC70VISAPurcResp"                     |"2220990000000028"  | "3646"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC71VISAPurcResp"                     |"2220990000000028"  | "3647"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC72VISAPurcResp"                     |"2220990000000028"  | "3648"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC73VISAPurcResp"                     |"2220990000000028"  | "3649"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC74VISAPurcResp"                     |"2220990000000028"  | "3650"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC75VISAPurcResp"                     |"2220990000000028"  | "3651"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC76VISAPurcResp"                     |"2220990000000028"  | "3652"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC77VISAPurcResp"                     |"2220990000000028"  | "3653"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC78VISAPurcResp"                     |"2220990000000028"  | "3654"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC79VISAPurcResp"                     |"2220990000000028"  | "3655"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC80VISAPurcResp"                     |"2220990000000028"  | "3656"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC81VISAPurcResp"                     |"2220990000000028"  | "3657"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC82ISAPurcResp"                      |"2220990000000028"  | "3658"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC83VISAPurcResp"                     |"2220990000000028"  | "3659"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC84VISAPurcResp"                     |"2220990000000028"  | "3660"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC85VISAPurcResp"                     |"2220990000000028"  | "3661"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC86VISAPurcResp"                     |"2220990000000028"  | "3662"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC87VISAPurcResp"                     |"2220990000000028"  | "3663"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC88VISAPurcResp"                     |"2220990000000028"  | "3664"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC89VISAPurcResp"                     |"2220990000000028"  | "3665"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC90VISAPurcResp"                     |"2220990000000028"  | "3666"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC91VISAPurcResp"                     |"2220990000000028"  | "3667"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC92VISAPurcResp"                     |"2220990000000028"  | "3668"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC93VISAPurcResp"                     |"2220990000000028"  | "3669"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC94VISAPurcResp"                     |"2220990000000028"  | "3670"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC95VISAPurcResp"                     |"2220990000000028"  | "3671"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC96VISAPurcResp"                     |"2220990000000028"  | "3672"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC97VISAPurcResp"                     |"2220990000000028"  | "3673"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC98VISAPurcResp"                     |"2220990000000028"  | "3674"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC99VISAPurcResp"                     |"2220990000000028"  | "3675"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC100VISAPurcResp"                     |"2220990000000028"  | "3676"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC101VISAPurcResp"                     |"2220990000000028"  | "3677"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC102VISAPurcResp"                     |"2220990000000028"  | "3678"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC103VISAPurcResp"                     |"2220990000000028"  | "3679"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC104VISAPurcResp"                     |"2220990000000028"  | "3678"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC105VISAPurcResp"                     |"2220990000000028"  | "3679"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC106VISAPurcResp"                     |"2220990000000028"  | "3680"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC107VISAPurcResp"                     |"2220990000000028"  | "3681"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC108VISAPurcResp"                     |"2220990000000028"  | "3683"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC109VISAPurcResp"                     |"2220990000000028"  | "3684"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC110VISAPurcResp"                     |"2220990000000028"  | "3685"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC111VISAPurcResp"                     |"2220990000000028"  | "3688"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC112VISAPurcResp"                     |"2220990000000028"  | "3689"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC113VISAPurcResp"                     |"2220990000000028"  | "3690"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC114VISAPurcResp"                     |"2220990000000028"  | "3691"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC117VISAPurcResp"                     |"2220990000000028"  | "3694"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC118VISAPurcResp"                     |"2220990000000028"  | "3695"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC119VISAPurcResp"                     |"2220990000000028"  | "3696"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC120VISAPurcResp"                     |"2220990000000028"  | "3697"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC121VISAPurcResp"                     |"2220990000000028"  | "3698"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC122VISAPurcResp"                     |"2220990000000028"  | "3699"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC123VISAPurcResp"                     |"2220990000000028"  | "3700"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC124VISAPurcResp"                     |"2220990000000028"  | "3701"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC125VISAPurcResp"                     |"2220990000000028"  | "3702"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC126VISAPurcResp"                     |"2220990000000028"  | "3703"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC127VISAPurcResp"                     |"2220990000000028"  | "3704"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC128VISAPurcResp"                     |"2220990000000028"  | "3705"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC129VISAPurcResp"                     |"2220990000000028"  | "3706"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC130VISAPurcResp"                     |"2220990000000028"  | "3707"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC131VISAPurcResp"                     |"2220990000000028"  | "3708"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC132VISAPurcResp"                     |"2220990000000028"  | "3709"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC133VISAPurcResp"                     |"2220990000000028"  | "3710"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC134VISAPurcResp"                     |"2220990000000028"  | "3711"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC135VISAPurcResp"                     |"2220990000000028"  | "3712"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC136VISAPurcResp"                     |"2220990000000028"  | "3713"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC137VISAPurcResp"                     |"2220990000000028"  | "3714"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC138VISAPurcResp"                     |"2220990000000028"  | "3715"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC139VISAPurcResp"                     |"2220990000000028"  | "3716"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC140VISAPurcResp"                     |"2220990000000028"  | "3717"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC142VISAPurcResp"                     |"2220990000000028"  | "3718"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC143VISAPurcResp"                     |"2220990000000028"  | "3719"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC144VISAPurcResp"                     |"2220990000000028"  | "3720"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC145VISAPurcResp"                     |"2220990000000028"  | "3721"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC146VISAPurcResp"                     |"2220990000000028"  | "3722"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC147VISAPurcResp"                     |"2220990000000028"  | "3723"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC148VISAPurcResp"                     |"2220990000000028"  | "3724"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC149VISAPurcResp"                     |"2220990000000028"  | "3725"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC150VISAPurcResp"                     |"2220990000000028"  | "3726"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC151VISAPurcResp"                     |"2220990000000028"  | "3727"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC152VISAPurcResp"                     |"2220990000000028"  | "3728"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC153VISAPurcResp"                     |"2220990000000028"  | "3729"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC154VISAPurcResp"                     |"2220990000000028"  | "3730"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC155VISAPurcResp"                     |"2220990000000028"  | "3731"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC156VISAPurcResp"                     |"2220990000000028"  | "3732"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC157VISAPurcResp"                     |"2220990000000028"  | "3734"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC158VISAPurcResp"                     |"2220990000000028"  | "3735"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC159VISAPurcResp"                     |"2220990000000028"  | "3736"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC160VISAPurcResp"                     |"2220990000000028"  | "3737"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC161VISAPurcResp"                     |"2220990000000028"  | "3738"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC162VISAPurcResp"                     |"2220990000000028"  | "3739"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC163VISAPurcResp"                     |"2220990000000028"  | "3740"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC164VISAPurcResp"                     |"2220990000000028"  | "3741"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC165VISAPurcResp"                     |"2220990000000028"  | "3742"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC166VISAPurcResp"                     |"2220990000000028"  | "3743"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC167VISAPurcResp"                     |"2220990000000028"  | "3744"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC168VISAPurcResp"                     |"2220990000000028"  | "3745"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC169VISAPurcResp"                     |"2220990000000028"  | "3746"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC170VISAPurcResp"                     |"2220990000000028"  | "3747"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC171VISAPurcResp"                     |"2220990000000028"  | "3748"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC172VISAPurcResp"                     |"2220990000000028"  | "3749"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC173VISAPurcResp"                     |"2220990000000028"  | "3750"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC174VISAPurcResp"                     |"2220990000000028"  | "3751"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC175VISAPurcResp"                     |"2220990000000028"  | "3752"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC176VISAPurcResp"                     |"2220990000000028"  | "3753"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC177VISAPurcResp"                     |"2220990000000028"  | "3754"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC178VISAPurcResp"                     |"2220990000000028"  | "3756"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC179VISAPurcResp"                     |"2220990000000028"  | "3757"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC180VISAPurcResp"                     |"2220990000000028"  | "3758"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC181VISAPurcResp"                     |"2220990000000028"  | "3759"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC182VISAPurcResp"                     |"2220990000000028"  | "3760"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC183VISAPurcResp"                     |"2220990000000028"  | "3761"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC184VISAPurcResp"                     |"2220990000000028"  | "3762"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC185VISAPurcResp"                     |"2220990000000028"  | "3763"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC186VISAPurcResp"                     |"2220990000000028"  | "3764"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC187VISAPurcResp"                     |"2220990000000028"  | "3765"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC188VISAPurcResp"                     |"2220990000000028"  | "3766"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC190VISAPurcResp"                     |"2220990000000028"  | "3767"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC191VISAPurcResp"                     |"2220990000000028"  | "3768"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC192VISAPurcResp"                     |"2220990000000028"  | "3769"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC193VISAPurcResp"                     |"2220990000000028"  | "3770"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC194VISAPurcResp"                     |"2220990000000028"  | "3771"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC195VISAPurcResp"                     |"2220990000000028"  | "3772"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC196VISAPurcResp"                     |"2220990000000028"  | "3773"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC197VISAPurcResp"                     |"2220990000000028"  | "3774"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC198VISAPurcResp"                     |"2220990000000028"  | "3775"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC199VISAPurcResp"                     |"2220990000000028"  | "3776"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC200VISAPurcResp"                     |"2220990000000028"  | "3777"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC201VISAPurcResp"                     |"2220990000000028"  | "3778"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC202VISAPurcResp"                     |"2220990000000028"  | "3779"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC203VISAPurcResp"                     |"2220990000000028"  | "3780"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC204VISAPurcResp"                     |"2220990000000028"  | "3781"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC205VISAPurcResp"                     |"2220990000000028"  | "3782"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC206VISAPurcResp"                     |"2220990000000028"  | "3783"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC207VISAPurcResp"                     |"2220990000000028"  | "3784"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC208VISAPurcResp"                     |"2220990000000028"  | "3785"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC209VISAPurcResp"                     |"2220990000000028"  | "3786"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC210VISAPurcResp"                     |"2220990000000028"  | "3568"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC211VISAPurcResp"                     |"2220990000000028"  | "3570"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC212VISAPurcResp"                     |"2220990000000028"  | "3577"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC213VISAPurcResp"                     |"2220990000000028"  | "3615"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC214VISAPurcResp"                     |"2220990000000028"  | "3620"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC215VISAPurcResp"                     |"2220990000000028"  | "3628"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC216VISAPurcResp"                     |"2220990000000028"  | "3629"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC217VISAPurcResp"                     |"2220990000000028"  | "3579"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC218VISAPurcResp"                     |"2220990000000028"  | "3595"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC220VISAPurcResp"                     |"2220990000000028"  | "3599"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC221VISAPurcResp"                     |"2220990000000028"  | "3603"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC222VISAPurcResp"                     |"2220990000000028"  | "3612"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC224VISAPurcResp"                     |"2220990000000028"  | "3359"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC226VISAPurcResp"                     |"2220990000000028"  | "3393"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC227VISAPurcResp"                     |"2220990000000028"  | "3395"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC228VISAPurcResp"                     |"2220990000000028"  | "3400"              | "20502"    |    "356001"     |  "1942" |  "31"  |
    |"FCIFSCV1TC229VISAPurcResp"                     |"2220990000000028"  | "7512"              | "20502"    |    "356001"     |  "1942" |  "31"  |
  
    
    
    #TUPPLE_AFD_credit


   @FCValid_Scenerio_Fees_and_charge_POS_Transaction_AFD


  Scenario Outline: Interchange fee calculation for AFD transactions with different Amount PosData and BusinessZoneCode
   
  
    Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
    Given Initiate AFD transaction with MerchantCategoryCode "5542" CardNumber <CardNumber> TranType "00" PosDataCode <PosDataCode> Networkid as "1" Amount <Amount> trackDataOne "TrackData1" trackDataTwo "TrackData2" PINdata "PINData" Securitydata "SecData"  
    When  Acquirer forwards the message to SmartEdge
    And   Message is processed by issuer and repsonse is sent back to the acquirer
    Then  Verify this acquirer's <TestCaseId> received "000" <BusinessZoneCode> <feeRuleID> and <feeAmount>
    
    Examples: 
    
    |TestCaseId                                    | CardNumber         |PosDataCode            |  Amount  |BusinessZoneCode|feeRuleID|feeAmount|
    
     #<<"123008">>
    |"FCIFSCV1TC1VISAPurcResp"                     |"2220160000000002"  | "010201210000"        | "23455"  |   "356001"     |  "2035" |  "33" |
    |"FCIFSCV1TC2VISAPurcResp"                     |"2220160000000010"  | "010201210000"        | "23455"  |   "356001"     |  "2035" |  "33"|
    |"FCIFSCV1TC3VISAPurcResp"                     |"2220160000000028"  | "010201210000"        | "66666"  |   "356001"     |  "2035" |  "54"|
    |"FCIFSCV1TC4VISAPurcResp"                     |"2220160000000036"  | "210201210000"        | "23455"  |   "356001"     |  "2035" |  "33" |
    |"FCIFSCV1TC5VISAPurcResp"                     |"2220160000000044"  | "210201210000"        | "66666"  |   "356001"     |  "2035" |  "54"|
    |"FCIFSCV1TC6VISAPurcResp"                     |"2220160000000036"  | "210201210000"        | "66666"  |   "356001"     |  "2035" |  "54"|
    
    
    
    #<<"123033">>
    |"FCIFSCV1TC7VISAPurcResp"                     |"2220170000000001"  | "510201910300"        | "50502"  |   "356001"     |  "2036" |  "110"   |
    |"FCIFSCV1TC8VISAPurcResp"                     |"2220170000000019"  | "510201910300"        | "99999"  |   "356001"     |  "2036" |  "110"   |
    |"FCIFSCV1TC9VISAPurcResp"                     |"2220170000000027"  | "510201910300"        | "10000"  |   "356001"     |  "2036" |  "110"   |
    |"FCIFSCV1TC10VISAPurcResp"                    |"2220170000000019"  | "510201910300"        | "50502"  |   "356001"     |  "2036" |  "110"   |
    |"FCIFSCV1TC11VISAPurcResp"                    |"2220170000000035"  | "510201910300"        | "99999"  |   "356001"     |  "2036" |  "110"   |
    |"FCIFSCV1TC16VISApurchRes"                    |"2220170000000043"  | "510201910300"        | "10000"  |   "356001"     |   "2036"|  "110"   |
    
    
    #<<"123034">>
    |"FCIFSCV1TC18VISApurchResp"                   |"2220180000000018"  | "210201210000"        | "23455"  |   "356001"     |  "2037" |  "110"   |
    |"FCIFSCV1TC1VISAPurcResp"                     |"2220180000000026"  | "210201210000"        | "66666"  |   "356001"     |  "2037" |  "110"   |
    |"FCIFSCV1TC9VISAPurcResp"                     |"2220180000000059"  | "210201210000"        | "77777"  |   "356001"     |  "2037" |  "110"   |
    |"FCIFSCV1TC10VISAPurcResp"                    |"2220180000000042"  | "010201210000"        | "20502"  |   "356001"     |  "2037" |  "110"  |
    |"FCIFSCV1TC11VISAPurcResp"                    |"2220180000000059"  | "010201210000"        | "10002"  |   "356001"     |  "2037" |  "110"   |
    |"FCIFSCV1TC12VISAPurcResp"                    |"2220180000000042"  | "010201210000"        | "30502"  |   "356001"     |  "2037" |  "110"   |
    
    #<<"123035">>
    |"FCIFSCV1TC7VISAPurcResp"                     |"2220190000000017"  | "210201210000"        | "23455"  |   "356001"     |  "2038" |  "110"   |
    |"FCIFSCV1TC8VISAPurcResp"                     |"2220190000000025"  | "210201210000"        | "66666"  |   "356001"     |  "2038" |  "110"   |
    |"FCIFSCV1TC9VISAPurcResp"                     |"2220190000000033"  | "210201210000"        | "77777"  |   "356001"     |  "2038" |  "110"   |
    |"FCIFSCV1TC10VISAPurcResp"                    |"2220190000000041"  | "010201210000"        | "20502" |   "356001"     |  "2038" |  "110"   |
    |"FCIFSCV1TC11VISAPurcResp"                    |"2220190000000058"  | "010201210000"        | "10002" |   "356001"     |  "2038" |  "110"   |
    
  
  
   #<<"123036>>
    |"FCIFSCV1TC7VISAPurcResp"                     |"2220200000000006"  | "210201210000"        | "23455"  |   "356001"     |  "2039"|  "110"   |
    |"FCIFSCV1TC8VISAPurcResp"                     |"2220200000000014"  | "210201210000"        | "66666"  |   "356001"     |  "2039"| "110"   |
    |"FCIFSCV1TC9VISAPurcResp"                     |"2220200000000022"  | "210201210000"        | "77777"  |   "356001"     |  "2039"| "110"   |
    |"FCIFSCV1TC10VISAPurcResp"                     |"2220200000000030"  | "010201210000"        | "20502" |   "356001"     |  "2039"|  "110"   |
    |"FCIFSCV1TC11VISAPurcResp"                     |"2220200000000048"  | "010201210000"        | "10002" |   "356001"     |  "2039"|  "110"   |
    
  
  #TUPPLE_AFD_prepaid


   @FCValid_Scenerio_Fees_and_charge_POS_Transaction_AFD

  Scenario Outline: Interchange fee calculation for AFD transactions with different Amount PosData and BusinessZoneCode
   
    Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
    Given Initiate AFD transaction with MerchantCategoryCode "5542" CardNumber <CardNumber> TranType "00" PosDataCode <PosDataCode> Networkid as "1" Amount <Amount> trackDataOne "TrackData1" trackDataTwo "TrackData2" PINdata "PINData" Securitydata "SecData"  
    When  Acquirer forwards the message to SmartEdge
    And   Message is processed by issuer and repsonse is sent back to the acquirer
    Then  Verify this acquirer's <TestCaseId> received "000" <BusinessZoneCode> <feeRuleID> and <feeAmount>
    
    Examples: 
    
    |TestCaseId                                    | CardNumber         |PosDataCode            |  Amount  |BusinessZoneCode|feeRuleID|feeAmount|
    |"FCIFSCV1TC1VISAPurcResp"                     |"2220140000000004"  | "010201210000"        | "20502"  |   "356001"     |  "1955" |  "95"   |
    |"FCIFSCV1TC2VISAPurcResp"                     |"2220140000000004"  | "010201210000"        | "10002"  |   "356001"     |  "1955" |  "95"   |
    |"FCIFSCV1TC3VISAPurcResp"                     |"2220140000000038"  | "010201210000"        | "30502"  |   "356001"     |  "1955" |  "95"   |
    |"FCIFSCV1TC4VISAPurcResp"                     |"2220140000000012"  | "510201910300"        | "50502"  |   "356001"     |  "1955" |  "95"   |
    |"FCIFSCV1TC5VISAPurcResp"                     |"2220140000000012"  | "510201910300"        | "99999"  |   "356001"     |  "1955" |  "95"   |
    |"FCIFSCV1TC6VISAPurcResp"                     |"2220140000000038"  | "510201910300"        | "10000"  |   "356001"     |  "1955" |  "95"   |
    |"FCIFSCV1TC7VISAPurcResp"                     |"2220140000000020"  | "210201210000"        | "23455"  |   "356001"     |  "1955" |  "95"   |
    |"FCIFSCV1TC8VISAPurcResp"                     |"2220140000000020"  | "210201210000"        | "66666"  |   "356001"     |  "1955" |  "95"   |
    |"FCIFSCV1TC9VISAPurcResp"                     |"2220140000000038"  | "210201210000"        | "77777"  |   "356001"     |  "1955" |  "95"   |
    
     #card product 123005
    
    |"FCIFSCV1TC10VISAPurcResp"                     |"2220150000000003"  | "010201210000"        | "20502" |   "356001"     |  "1956" |  "31"   |
    |"FCIFSCV1TC11VISAPurcResp"                     |"2220150000000003"  | "010201210000"        | "10002" |   "356001"     |  "1956" |  "26"   |
    |"FCIFSCV1TC12VISAPurcResp"                     |"2220150000000037"  | "010201210000"        | "30502" |   "356001"     |  "1956" |  "36"   |
    |"FCIFSCV1TC13VISAPurcResp"                     |"2220150000000011"  | "510201910300"        | "50502" |   "356001"     |  "1956" |  "46"   |
    |"FCIFSCV1TC14VISAPurcResp"                     |"2220150000000011"  | "510201910300"        | "99999" |   "356001"     |  "1956" |  "71"   |
    |"FCIFSCV1TC15VISAPurcResp"                     |"2220150000000037"  | "510201910300"        | "10000" |   "356001"     |  "1956" |  "26"   |
    |"FCIFSCV1TC16VISAPurcResp"                     |"2220150000000029"  | "210201210000"        | "23455" |   "356001"     |  "1956" |  "33"   |
    |"FCIFSCV1TC17VISAPurcResp"                     |"2220150000000029"  | "210201210000"        | "66666" |   "356001"     |  "1956" |  "54"   |
    |"FCIFSCV1TC18VISAPurcResp"                     |"2220150000000037"  | "210201210000"        | "77777" |   "356001"     |  "1956" |  "60"   |
    
   #RETAIL 2 – CARD NOT PRESENT,
                         
    
    
    
    @FCValid_Scenerio_Fees_and_charge_POS_Transaction_purchase_ECOM_credit
     
     Scenario Outline: Interchange fee calculation for purchase Ecom transactions with different Amount PosData and BusinessZoneCode
   
  
    Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
    Given Initiate ECOM transaction "ECOM" CardNumber <CardNumber> TranType "00" mcc <MerchantCategoryCode> Networkid as "1" Amount <Amount> trackDataOne "NoTrackData1" trackDataTwo "NoTrackData2" PINdata "NoPINData" Securitydata "SecData" CVV as "CVV2_Present"  
    When  Acquirer forwards the message to SmartEdge
    And   Message is processed by issuer and repsonse is sent back to the acquirer
    Then  Verify this acquirer's <TestCaseId> received "000" <BusinessZoneCode> <feeRuleID> and <feeAmount>
    
    Examples: 
    
    |TestCaseId                                     | CardNumber         |MerchantCategoryCode |  Amount   |BusinessZoneCode |feeRuleID|feeAmount|
    #123008
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220160000000002"  | "4900"              | "36738833" |   "356001"     |  "2045" |"275541" |  
   
    |"FCIFSCV1TC21VISAPurcResp"                     |"2220160000000002"  | "9211"              | "44444"   |   "356001"     |  "2030" |  "699"  |
    |"FCIFSCV1TC21VISAPurcResp"                     |"2220160000000002"  | "9222"              | "44444"   |   "356001"     |  "2030" |  "699"  |
    |"FCIFSCV1TC22VISAPurcResp"                     |"2220160000000036"  | "9223"              | "44444"   |   "356001"     |  "2030" |  "699"  |
    |"FCIFSCV1TC23VISAPurcResp"                     |"2220160000000036"  | "9311"              | "44444"   |   "356001"     |  "2030" |  "699"  |
    |"FCIFSCV1TC24VISAPurcResp"                     |"2220160000000036"  | "9399"              | "44444"   |   "356001"     |  "2030" |  "699"  |
    |"FCIFSCV1TC25VISAPurcResp"                     |"2220160000000044"  | "9402"              | "44444"   |   "356001"     |  "2030" |  "699"  |
    |"FCIFSCV1TC26VISAPurcResp"                     |"2220160000000044"  | "9405"              | "44444"   |   "356001"     |  "2030" |  "699"  |
    |"FCIFSCV1TC27VISAPurcResp"                     |"2220160000000002"  | "9700"              | "44444"   |   "356001"     |  "2030" |  "699"  |
    |"FCIFSCV1TC28VISAPurcResp"                     |"2220160000000002"  | "9701"              | "44444"   |   "356001"     |  "2030" |  "699"  |
    |"FCIFSCV1TC29VISAPurcResp"                     |"2220160000000002"  | "9702"              | "44444"   |   "356001"     |  "2030" |  "699"  |
    |"FCIFSCV1TC30VISAPurcResp"                     |"2220160000000002"  | "9751"              | "44444"   |   "356001"     |  "2030" |  "699"  |
    |"FCIFSCV1TC31VISAPurcResp"                     |"2220160000000044"  | "9752"              | "44444"   |   "356001"     |  "2030" |  "699"  |
    |"FCIFSCV1TC32VISAPurcResp"                     |"2220160000000044"  | "9950"              | "44444"   |   "356001"     |  "2030" |  "699"  |
    #|"FCIFSCV1TC33VISAPurcResp"                    |"2220160000000002"  | "4111"              | "20502"   |    "356001"    |  "2075" |  "502"  |
    #|"FCIFSCV1TC34VISAPurcResp"                    |"2220160000000002"  | "4112"              | "20502"   |    "356001"    |  "2076" |  "482"  |
    |"FCIFSCV1TC30VISAPurcResp"                     |"2220160000000002"  | "5199"              | "88886"   |   "356001"     |  "2060" |  "2143"  |
    |"FCIFSCV1TC31VISAPurcResp"                     |"2220160000000044"  | "7523"              | "88886"   |   "356001"     |  "2060" |  "2143"  |
    |"FCIFSCV1TC32VISAPurcResp"                     |"2220160000000044"  | "7629"              | "88886"   |   "356001"     |  "2060" |  "2143"  |
    
    
    #123033
    
    |"FCIFSCV1TC1VISAPurcResp"                       |"2220170000000001"  | "4900"              | "36738833" |   "356001"     |  "2046" |"275541" |  
    |"FCIFSCV1TC21VISAPurcResp"                     |"2220170000000001"  | "9211"              | "44444"   |   "356001"     |  "2031" |  "699"   |
    |"FCIFSCV1TC21VISAPurcResp"                     |"2220170000000001"  | "9222"              | "44444"   |   "356001"     |  "2031" |  "699"   |
    |"FCIFSCV1TC22VISAPurcResp"                     |"2220170000000043"  | "9223"              | "44444"   |   "356001"     |  "2031" |  "699"   |
    |"FCIFSCV1TC23VISAPurcResp"                     |"2220170000000043"  | "9311"              | "44444"   |   "356001"     |  "2031" |  "699"   |
    |"FCIFSCV1TC24VISAPurcResp"                     |"2220170000000043"  | "9399"              | "44444"   |   "356001"     |  "2031" |  "699"   |
    |"FCIFSCV1TC25VISAPurcResp"                     |"2220170000000019"  | "9402"              | "44444"   |   "356001"     |  "2031" |  "699"   |
    |"FCIFSCV1TC26VISAPurcResp"                     |"2220170000000019"  | "9405"              | "44444"   |   "356001"     |  "2031" |  "699"   |
    |"FCIFSCV1TC27VISAPurcResp"                     |"2220170000000001"  | "9700"              | "44444"   |   "356001"     |  "2031" |  "699"   |
    |"FCIFSCV1TC28VISAPurcResp"                     |"2220170000000001"  | "9701"              | "44444"   |   "356001"     |  "2031" |  "699"   |
    |"FCIFSCV1TC29VISAPurcResp"                     |"2220170000000001"  | "9702"              | "44444"   |   "356001"     |  "2031" |  "699"   |
    |"FCIFSCV1TC30VISAPurcResp"                     |"2220170000000001"  | "9751"              | "44444"   |   "356001"     |  "2031" |  "699"   |
    |"FCIFSCV1TC31VISAPurcResp"                     |"2220170000000019"  | "9752"              | "44444"   |   "356001"     |  "2031" |  "699"   |
    |"FCIFSCV1TC32VISAPurcResp"                     |"2220170000000019"  | "9950"              | "44444"   |   "356001"     |  "2031" |  "699"   |
    #|"FCIFSCV1TC33VISAPurcResp"                     |"2220170000000001"  | "4111"              | "20502"   |    "356001"    |  "2076" |  "482"   |
    #|"FCIFSCV1TC34VISAPurcResp"                     |"2220170000000001"  | "4112"              | "20502"   |    "356001"    |  "2076" |  "482"   |
    |"FCIFSCV1TC30VISAPurcResp"                      |"2220170000000001"  | "5199"              | "88886"   |   "356001"     |  "2061" |  "1743"  |
    |"FCIFSCV1TC31VISAPurcResp"                      |"2220170000000019"  | "7523"              | "88886"   |   "356001"     |  "2061" |  "1743"  |
    |"FCIFSCV1TC32VISAPurcResp"                      |"2220170000000019"  | "7629"              | "88886"   |   "356001"     |  "2061" |  "1743"  |
    
    
    #123034
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220180000000018"  | "4900"              | "36738833" |   "356001"     |  "2047" |"275541" |  
    |"FCIFSCV1TC21VISAPurcResp"                     |"2220180000000018"  | "9211"              | "44444"   |   "356001"     |  "2032" |  "699"   |
    |"FCIFSCV1TC21VISAPurcResp"                     |"2220180000000018"  | "9222"              | "44444"   |   "356001"     |  "2032" |  "699"   |
    |"FCIFSCV1TC22VISAPurcResp"                     |"2220180000000034"  | "9223"              | "44444"   |   "356001"     |  "2032" |  "699"   |
    |"FCIFSCV1TC23VISAPurcResp"                     |"2220180000000034"  | "9311"              | "44444"   |   "356001"     |  "2032" |  "699"   |
    |"FCIFSCV1TC24VISAPurcResp"                     |"2220180000000034"  | "9399"              | "44444"   |   "356001"     |  "2032" |  "699"   |
    |"FCIFSCV1TC25VISAPurcResp"                     |"2220180000000059"  | "9402"              | "44444"   |   "356001"     |  "2032" |  "699"   |
    |"FCIFSCV1TC26VISAPurcResp"                     |"2220180000000059"  | "9405"              | "44444"   |   "356001"     |  "2032" |  "699"   |
    |"FCIFSCV1TC27VISAPurcResp"                     |"2220180000000018"  | "9700"              | "44444"   |   "356001"     |  "2032" |  "699"   |
    |"FCIFSCV1TC28VISAPurcResp"                     |"2220180000000018"  | "9701"              | "44444"   |   "356001"     |  "2032" |  "699"   |
    |"FCIFSCV1TC29VISAPurcResp"                     |"2220180000000018"  | "9702"              | "44444"   |   "356001"     |  "2032" |  "699"   |
    |"FCIFSCV1TC30VISAPurcResp"                     |"2220180000000018"  | "9751"              | "44444"   |   "356001"     |  "2032" |  "699"   |
    |"FCIFSCV1TC31VISAPurcResp"                     |"2220180000000059"  | "9752"              | "44444"   |   "356001"     |  "2032" |  "699"   |
    |"FCIFSCV1TC32VISAPurcResp"                     |"2220180000000059"  | "9950"              | "44444"   |   "356001"     |  "2032" |  "699"   |
    #|"FCIFSCV1TC33VISAPurcResp"                    |"2220180000000018"  | "4111"              | "20502"   |    "356001"    |  "2077" |  "482"   |
    #|"FCIFSCV1TC34VISAPurcResp"                    |"2220180000000018"  | "4112"              | "20502"   |    "356001"    |  "2077" |  "482"   |
    |"FCIFSCV1TC30VISAPurcResp"                     |"2220180000000018"  | "5199"              | "88886"   |   "356001"     |  "2062" |  "2143"  |
    |"FCIFSCV1TC31VISAPurcResp"                     |"2220180000000059"  | "7523"              | "88886"   |   "356001"     |  "2062" |  "2143"  |
    |"FCIFSCV1TC32VISAPurcResp"                     |"2220180000000059"  | "7629"              | "88886"   |   "356001"     |  "2062" |  "2143"  |
    
     #123035
     
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220190000000017"  | "4900"              | "36738833" |   "356001"     |  "2048" |"275541" |  
    |"FCIFSCV1TC21VISAPurcResp"                     |"2220190000000017"  | "9211"              | "44444"   |   "356001"     |  "2033" |  "699"   |
    |"FCIFSCV1TC21VISAPurcResp"                     |"2220190000000058"  | "9222"              | "44444"   |   "356001"     |  "2033" |  "699"   |
    |"FCIFSCV1TC22VISAPurcResp"                     |"2220190000000041"  | "9223"              | "44444"   |   "356001"     |  "2033" |  "699"   |
    |"FCIFSCV1TC23VISAPurcResp"                     |"2220190000000058"  | "9311"              | "44444"   |   "356001"     |  "2033" |  "699"   |
    |"FCIFSCV1TC24VISAPurcResp"                     |"2220190000000017"  | "9399"              | "44444"   |   "356001"     |  "2033" |  "699"   |
    |"FCIFSCV1TC25VISAPurcResp"                     |"2220190000000017"  | "9402"              | "44444"   |   "356001"     |  "2033" |  "699"   |
    |"FCIFSCV1TC26VISAPurcResp"                     |"2220190000000041"  | "9405"              | "44444"   |   "356001"     |  "2033" |  "699"   |
    |"FCIFSCV1TC27VISAPurcResp"                     |"2220190000000041"  | "9700"              | "44444"   |   "356001"     |  "2033" |  "699"   |
    |"FCIFSCV1TC28VISAPurcResp"                     |"2220190000000017"  | "9701"              | "44444"   |   "356001"     |  "2033" |  "699"   |
    |"FCIFSCV1TC29VISAPurcResp"                     |"2220190000000058"  | "9702"              | "44444"   |   "356001"     |  "2033" |  "699"   |
    |"FCIFSCV1TC30VISAPurcResp"                     |"2220190000000041"  | "9751"              | "44444"   |   "356001"     |  "2033" |  "699"   |
    |"FCIFSCV1TC31VISAPurcResp"                     |"2220190000000017"  | "9752"              | "44444"   |   "356001"     |  "2033" |  "699"   |
    |"FCIFSCV1TC32VISAPurcResp"                     |"2220190000000058"  | "9950"              | "44444"   |   "356001"     |  "2033" |  "699"   |
    #|"FCIFSCV1TC33VISAPurcResp"                    |"2220190000000058"  | "4111"              | "20502"   |    "356001"    |  "2078" |  "482"   |
    #|"FCIFSCV1TC34VISAPurcResp"                    |"2220190000000017"  | "4112"              | "20502"   |    "356001"    |  "2078" |  "482"   |
    |"FCIFSCV1TC30VISAPurcResp"                     |"2220190000000041"  | "5199"              | "88886"   |   "356001"     |  "2063" |  "1743"  |
    |"FCIFSCV1TC31VISAPurcResp"                     |"2220190000000017"  | "7523"              | "88886"   |   "356001"     |  "2063" |  "1743"  |
    |"FCIFSCV1TC32VISAPurcResp"                     |"2220190000000041"  | "7629"              | "88886"   |   "356001"     |  "2063" |  "1743"  |
      #123036
      
    |"FCIFSCV1TC1VISAPurcResp"                       |"2220200000000022"  | "4900"              | "36738833" |   "356001"     |  "2049" |"275541" |  
    |"FCIFSCV1TC21VISAPurcResp"                      |"2220200000000006"  | "9211"              | "44444"   |   "356001"     |  "2034" |  "699"   |
    |"FCIFSCV1TC21VISAPurcResp"                      |"2220200000000014"  | "9222"              | "44444"   |   "356001"     |  "2034" |  "699"   |
    |"FCIFSCV1TC22VISAPurcResp"                      |"2220200000000022"  | "9223"              | "44444"   |   "356001"     |  "2034" |  "699"   |
    |"FCIFSCV1TC23VISAPurcResp"                      |"2220200000000006"  | "9311"              | "44444"   |   "356001"     |  "2034" |  "699"   |
    |"FCIFSCV1TC24VISAPurcResp"                      |"2220200000000022"  | "9399"              | "44444"   |   "356001"     |  "2034" |  "699"   |
    |"FCIFSCV1TC25VISAPurcResp"                      |"2220200000000014"  | "9402"              | "44444"   |   "356001"     |  "2034" |  "699"   |
    |"FCIFSCV1TC26VISAPurcResp"                      |"2220200000000030"  | "9405"              | "44444"   |   "356001"     |  "2034" |  "699"   |
    |"FCIFSCV1TC27VISAPurcResp"                      |"2220200000000022"  | "9700"              | "44444"   |   "356001"     |  "2034" |  "699"   |
    |"FCIFSCV1TC28VISAPurcResp"                      |"2220200000000006"  | "9701"              | "44444"   |   "356001"     |  "2034" |  "699"   |
    |"FCIFSCV1TC29VISAPurcResp"                      |"2220200000000006"  | "9702"              | "44444"   |   "356001"     |  "2034" |  "699"   |
    |"FCIFSCV1TC30VISAPurcResp"                      |"2220200000000030"  | "9751"              | "44444"   |   "356001"     |  "2034" |  "699"   |
    |"FCIFSCV1TC31VISAPurcResp"                      |"2220200000000006"  | "9752"              | "44444"   |   "356001"     |  "2034" |  "699"   |
    |"FCIFSCV1TC32VISAPurcResp"                      |"2220200000000022"  | "9950"              | "44444"   |   "356001"     |  "2034" |  "699"   |
    #|"FCIFSCV1TC33VISAPurcResp"                     |"2220200000000030"  | "4111"              | "20502"   |    "356001"    |  "2079" |  "482"   |
    #|"FCIFSCV1TC34VISAPurcResp"                     |"2220200000000022"  | "4112"              | "20502"   |    "356001"    |  "2079" |  "482"   |
    |"FCIFSCV1TC30VISAPurcResp"                      |"2220200000000006"  | "5199"              | "88886"   |   "356001"     |  "2064" |  "1610"  |
    |"FCIFSCV1TC31VISAPurcResp"                      |"2220200000000022"  | "7523"              | "88886"   |   "356001"     |  "2064" |  "1610"  |
    |"FCIFSCV1TC32VISAPurcResp"                      |"2220200000000030"  | "7629"              | "88886"   |   "356001"     |  "2064" |  "1610"  |
    
    
    @FCValid_Scenerio_Fees_and_charge_POS_Transaction_purchase_ECOM_prepaid
     
     Scenario Outline: Interchange fee calculation for purchase Ecom transactions with different Amount PosData and BusinessZoneCode
   
  
    Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
    Given Initiate ECOM transaction "ECOM" CardNumber <CardNumber> TranType "00" mcc <MerchantCategoryCode> Networkid as "1" Amount <Amount> trackDataOne "NoTrackData1" trackDataTwo "NoTrackData2" PINdata "NoPINData" Securitydata "SecData" CVV as "CVV2_Present"  
    When  Acquirer forwards the message to SmartEdge
    And   Message is processed by issuer and repsonse is sent back to the acquirer
    Then  Verify this acquirer's <TestCaseId> received "000" <BusinessZoneCode> <feeRuleID> and <feeAmount>
    
    Examples: 
    
    |TestCaseId                                     | CardNumber         |MerchantCategoryCode |  Amount   |BusinessZoneCode |feeRuleID|feeAmount|
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220140000000012"  | "4900"              | "36738833" |   "356001"     |  "1977" |"238802" |  
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220140000000012"  | "5200"              | "20502"   |   "356001"     |  "1971" |  "148"   |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220140000000012"  | "5211"              | "10000"   |   "356001"     |  "1971" |  "80"   |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220140000000012"  | "5231"              | "12345"   |   "356001"     |  "1971" |  "95"    |
    |"FCIFSCV1TC5VISAPurcResp"                      |"2220140000000020"  | "5251"              | "27733"   |   "356001"     |  "1971" |  "195"  |
    |"FCIFSCV1TC6VISAPurcResp"                      |"2220140000000020"  | "5261"              | "26373"   |   "356001"     |  "1971" |  "186"  |
    |"FCIFSCV1TC7VISAPurcResp"                      |"2220140000000020"  | "5271"              | "76373"   |   "356001"     |  "1971" |  "200"  |
    |"FCIFSCV1TC8VISAPurcResp"                      |"2220140000000038"  | "5300"              | "87783"   |   "356001"     |  "1971" |  "200"  |
    |"FCIFSCV1TC9VISAPurcResp"                      |"2220140000000038"  | "5309"              | "44444"   |   "356001"     |  "1971" |  "200"  |
    |"FCIFSCV1TC10VISAPurcResp"                     |"2220140000000038"  | "5310"              | "84899"   |   "356001"     |  "1971" |  "200"  |
    |"FCIFSCV1TC11VISAPurcResp"                     |"2220140000000012"  | "5422"              | "88999"   |   "356001"     |  "1971" |  "200"  |
    |"FCIFSCV1TC12VISAPurcResp"                     |"2220140000000012"  | "5331"              | "88899"   |   "356001"     |  "1971" |  "200"  |
    |"FCIFSCV1TC13VISAPurcResp"                     |"2220140000000020"  | "5311"              | "88886"   |   "356001"     |  "1971" |  "200"  |
    |"FCIFSCV1TC14VISAPurcResp"                     |"2220140000000020"  | "5399"              | "88897"   |   "356001"     |  "1971" |  "200"  |
    |"FCIFSCV1TC16VISAPurcResp"                     |"2220140000000020"  | "5441"              | "88908"   |   "356001"     |  "1971" |  "200"  |
    |"FCIFSCV1TC17VISAPurcResp"                     |"2220140000000038"  | "5451"              | "88997"   |   "356001"     |  "1971" |  "200"  |
    |"FCIFSCV1TC18VISAPurcResp"                     |"2220140000000038"  | "5462"              | "85578"   |   "356001"     |  "1971" |  "200"  |
    |"FCIFSCV1TC19VISAPurcResp"                     |"2220140000000038"  | "5499"              | "66777"   |   "356001"     |  "1971" |  "200"  |
    |"FCIFSCV1TC20VISAPurcResp"                     |"2220140000000038"  | "5999"              | "89998"   |   "356001"     |  "1971" |  "200"  |
    |"FCIFSCV1TC21VISAPurcResp"                     |"2220140000000012"  | "9211"              | "10000"   |   "356001"     |  "1981" |  "80"  |
    |"FCIFSCV1TC21VISAPurcResp"                     |"2220140000000012"  | "9222"              | "12345"   |   "356001"     |  "1981" |  "95"  |
    |"FCIFSCV1TC22VISAPurcResp"                     |"2220140000000020"  | "9223"              | "27733"   |   "356001"     |  "1981" |  "195"  |
    |"FCIFSCV1TC23VISAPurcResp"                     |"2220140000000020"  | "9311"              | "26373"   |   "356001"     |  "1981" |  "186"  |
    |"FCIFSCV1TC24VISAPurcResp"                     |"2220140000000020"  | "9399"              | "76373"   |   "356001"     |  "1981" |  "200"  |
    |"FCIFSCV1TC25VISAPurcResp"                     |"2220140000000038"  | "9402"              | "87783"   |   "356001"     |  "1981" |  "200"  |
    |"FCIFSCV1TC26VISAPurcResp"                     |"2220140000000038"  | "9405"              | "44444"   |   "356001"     |  "1981" |  "200"  |
    |"FCIFSCV1TC27VISAPurcResp"                     |"2220140000000012"  | "9700"              | "12345"   |   "356001"     |  "1981" |  "95"  |
    |"FCIFSCV1TC28VISAPurcResp"                     |"2220140000000012"  | "9701"              | "27733"   |   "356001"     |  "1981" |  "195"  |
    |"FCIFSCV1TC29VISAPurcResp"                     |"2220140000000012"  | "9702"              | "26373"   |   "356001"     |  "1981" |  "186"  |
    |"FCIFSCV1TC30VISAPurcResp"                     |"2220140000000012"  | "9751"              | "76373"   |   "356001"     |  "1981" |  "200"  |
    |"FCIFSCV1TC31VISAPurcResp"                     |"2220140000000038"  | "9752"              | "87783"   |   "356001"     |  "1981" |  "200"  |
    |"FCIFSCV1TC32VISAPurcResp"                     |"2220140000000038"  | "9950"              | "44444"   |   "356001"     |  "1981" |  "200"  |
    |"FCIFSCV1TC33VISAPurcResp"                      |"2220140000000012"  | "4111"              | "20502"    |    "356001"     |  "1997" |  "379"  |
    |"FCIFSCV1TC34VISAPurcResp"                      |"2220140000000012"  | "4112"              | "20502"    |    "356001"     |  "1997" |  "379"  |
    |"FCIFSCV1TC35VISAPurcResp"                      |"2220140000000012"  | "3501"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC36VISAPurcResp"                      |"2220140000000012"  | "3552"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC37VISAPurcResp"                      |"2220140000000012"  | "3503"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC39VISAPurcResp"                      |"2220140000000012"  | "3506"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC42VISAPurcResp"                     |"2220140000000012"  | "3561"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC43VISAPurcResp"                     |"2220140000000012"  | "3562"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC44VISAPurcResp"                     |"2220140000000012"  | "3563"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC45VISAPurcResp"                     |"2220140000000012"  | "3564"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC46VISAPurcResp"                     |"2220140000000012"  | "3565"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC47VISAPurcResp"                     |"2220140000000012"  | "3572"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC48VISAPurcResp"                     |"2220140000000012"  | "3573"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC49VISAPurcResp"                     |"2220140000000012"  | "3574"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC50VISAPurcResp"                     |"2220140000000012"  | "3575"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC51VISAPurcResp"                     |"2220140000000012"  | "3622"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC52VISAPurcResp"                     |"2220140000000012"  | "3623"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC53VISAPurcResp"                     |"2220140000000012"  | "3624"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC54VISAPurcResp"                     |"2220140000000012"  | "3625"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC55VISAPurcResp"                     |"2220140000000012"  | "3631"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC56VISAPurcResp"                     |"2220140000000012"  | "3632"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC57VISAPurcResp"                     |"2220140000000012"  | "3633"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC58VISAPurcResp"                     |"2220140000000012"  | "3634"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC59VISAPurcResp"                     |"2220140000000012"  | "3635"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC60VISAPurcResp"                     |"2220140000000012"  | "3636"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC63VISAPurcResp"                     |"2220140000000012"  | "3639"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC65VISAPurcResp"                     |"2220140000000012"  | "3641"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC66VISAPurcResp"                     |"2220140000000012"  | "3642"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC67VISAPurcResp"                     |"2220140000000012"  | "3643"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC68VISAPurcResp"                     |"2220140000000012"  | "3644"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC69VISAPurcResp"                     |"2220140000000012"  | "3645"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC70VISAPurcResp"                     |"2220140000000012"  | "3646"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC71VISAPurcResp"                     |"2220140000000012"  | "3647"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC72VISAPurcResp"                     |"2220140000000012"  | "3648"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC73VISAPurcResp"                     |"2220140000000012"  | "3649"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC74VISAPurcResp"                     |"2220140000000012"  | "3650"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC75VISAPurcResp"                     |"2220140000000012"  | "3651"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC76VISAPurcResp"                     |"2220140000000012"  | "3652"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC77VISAPurcResp"                     |"2220140000000012"  | "3653"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC78VISAPurcResp"                     |"2220140000000012"  | "3654"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC79VISAPurcResp"                     |"2220140000000012"  | "3655"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC80VISAPurcResp"                     |"2220140000000012"  | "3656"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC81VISAPurcResp"                     |"2220140000000012"  | "3657"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC82ISAPurcResp"                      |"2220140000000012"  | "3658"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC83VISAPurcResp"                     |"2220140000000012"  | "3659"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC84VISAPurcResp"                     |"2220140000000012"  | "3660"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC85VISAPurcResp"                     |"2220140000000012"  | "3661"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC86VISAPurcResp"                     |"2220140000000012"  | "3662"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC87VISAPurcResp"                     |"2220140000000012"  | "3663"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC88VISAPurcResp"                     |"2220140000000012"  | "3664"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC89VISAPurcResp"                     |"2220140000000012"  | "3665"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC90VISAPurcResp"                     |"2220140000000012"  | "3666"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC91VISAPurcResp"                     |"2220140000000012"  | "3667"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC92VISAPurcResp"                     |"2220140000000012"  | "3668"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC93VISAPurcResp"                     |"2220140000000012"  | "3669"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC94VISAPurcResp"                     |"2220140000000012"  | "3670"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC95VISAPurcResp"                     |"2220140000000012"  | "3671"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC96VISAPurcResp"                     |"2220140000000012"  | "3672"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC97VISAPurcResp"                     |"2220140000000012"  | "3673"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC98VISAPurcResp"                     |"2220140000000012"  | "3674"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC99VISAPurcResp"                     |"2220140000000012"  | "3675"              | "20502"    |    "356001"     |  "1991" |  "379" |
    |"FCIFSCV1TC100VISAPurcResp"                     |"2220140000000012"  | "3676"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC101VISAPurcResp"                     |"2220140000000012"  | "3677"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC102VISAPurcResp"                     |"2220140000000012"  | "3678"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC103VISAPurcResp"                     |"2220140000000012"  | "3679"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC104VISAPurcResp"                     |"2220140000000012"  | "3678"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC105VISAPurcResp"                     |"2220140000000012"  | "3679"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC106VISAPurcResp"                     |"2220140000000012"  | "3680"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC107VISAPurcResp"                     |"2220140000000012"  | "3681"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC108VISAPurcResp"                     |"2220140000000012"  | "3683"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC109VISAPurcResp"                     |"2220140000000012"  | "3684"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC110VISAPurcResp"                     |"2220140000000012"  | "3685"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC111VISAPurcResp"                     |"2220140000000012"  | "3688"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC112VISAPurcResp"                     |"2220140000000012"  | "3689"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC113VISAPurcResp"                     |"2220140000000012"  | "3690"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC114VISAPurcResp"                     |"2220140000000012"  | "3691"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC117VISAPurcResp"                     |"2220140000000012"  | "3694"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC118VISAPurcResp"                     |"2220140000000012"  | "3695"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC119VISAPurcResp"                     |"2220140000000012"  | "3696"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC120VISAPurcResp"                     |"2220140000000012"  | "3697"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC121VISAPurcResp"                     |"2220140000000012"  | "3698"              | "20502"    |    "356001"     |  "1991" |  "379" |
    |"FCIFSCV1TC122VISAPurcResp"                     |"2220140000000012"  | "3699"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC123VISAPurcResp"                     |"2220140000000012"  | "3700"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC124VISAPurcResp"                     |"2220140000000012"  | "3701"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC125VISAPurcResp"                     |"2220140000000012"  | "3702"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC126VISAPurcResp"                     |"2220140000000012"  | "3703"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC127VISAPurcResp"                     |"2220140000000012"  | "3704"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC128VISAPurcResp"                     |"2220140000000012"  | "3705"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC129VISAPurcResp"                     |"2220140000000012"  | "3706"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC130VISAPurcResp"                     |"2220140000000012"  | "3707"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC131VISAPurcResp"                     |"2220140000000012"  | "3708"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC132VISAPurcResp"                     |"2220140000000012"  | "3709"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC133VISAPurcResp"                     |"2220140000000012"  | "3710"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC134VISAPurcResp"                     |"2220140000000012"  | "3711"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC135VISAPurcResp"                     |"2220140000000012"  | "3712"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC136VISAPurcResp"                     |"2220140000000012"  | "3713"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC137VISAPurcResp"                     |"2220140000000012"  | "3714"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC138VISAPurcResp"                     |"2220140000000012"  | "3715"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC139VISAPurcResp"                     |"2220140000000012"  | "3716"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC140VISAPurcResp"                     |"2220140000000012"  | "3717"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC142VISAPurcResp"                     |"2220140000000012"  | "3718"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC143VISAPurcResp"                     |"2220140000000012"  | "3719"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC144VISAPurcResp"                     |"2220140000000012"  | "3720"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC145VISAPurcResp"                     |"2220140000000012"  | "3721"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC146VISAPurcResp"                     |"2220140000000012"  | "3722"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC147VISAPurcResp"                     |"2220140000000012"  | "3723"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC148VISAPurcResp"                     |"2220140000000012"  | "3724"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC149VISAPurcResp"                     |"2220140000000012"  | "3725"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC150VISAPurcResp"                     |"2220140000000012"  | "3726"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC151VISAPurcResp"                     |"2220140000000012"  | "3727"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC152VISAPurcResp"                     |"2220140000000012"  | "3728"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC153VISAPurcResp"                     |"2220140000000012"  | "3729"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC154VISAPurcResp"                     |"2220140000000012"  | "3730"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC155VISAPurcResp"                     |"2220140000000012"  | "3731"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC156VISAPurcResp"                     |"2220140000000012"  | "3732"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC157VISAPurcResp"                     |"2220140000000012"  | "3734"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC158VISAPurcResp"                     |"2220140000000012"  | "3735"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC159VISAPurcResp"                     |"2220140000000012"  | "3736"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC160VISAPurcResp"                     |"2220140000000012"  | "3737"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC161VISAPurcResp"                     |"2220140000000012"  | "3738"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC162VISAPurcResp"                     |"2220140000000012"  | "3739"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC163VISAPurcResp"                     |"2220140000000012"  | "3740"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC164VISAPurcResp"                     |"2220140000000012"  | "3741"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC165VISAPurcResp"                     |"2220140000000012"  | "3742"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC166VISAPurcResp"                     |"2220140000000012"  | "3743"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC167VISAPurcResp"                     |"2220140000000012"  | "3744"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC168VISAPurcResp"                     |"2220140000000012"  | "3745"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC169VISAPurcResp"                     |"2220140000000012"  | "3746"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC170VISAPurcResp"                     |"2220140000000012"  | "3747"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC171VISAPurcResp"                     |"2220140000000012"  | "3748"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC172VISAPurcResp"                     |"2220140000000012"  | "3749"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC173VISAPurcResp"                     |"2220140000000012"  | "3750"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC174VISAPurcResp"                     |"2220140000000012"  | "3751"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC175VISAPurcResp"                     |"2220140000000012"  | "3752"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC176VISAPurcResp"                     |"2220140000000012"  | "3753"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC177VISAPurcResp"                     |"2220140000000012"  | "3754"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC178VISAPurcResp"                     |"2220140000000012"  | "3756"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC179VISAPurcResp"                     |"2220140000000012"  | "3757"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC180VISAPurcResp"                     |"2220140000000012"  | "3758"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC181VISAPurcResp"                     |"2220140000000012"  | "3759"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC182VISAPurcResp"                     |"2220140000000012"  | "3760"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC183VISAPurcResp"                     |"2220140000000012"  | "3761"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC184VISAPurcResp"                     |"2220140000000012"  | "3762"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC185VISAPurcResp"                     |"2220140000000012"  | "3763"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC186VISAPurcResp"                     |"2220140000000012"  | "3764"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC187VISAPurcResp"                     |"2220140000000012"  | "3765"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC188VISAPurcResp"                     |"2220140000000012"  | "3766"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC190VISAPurcResp"                     |"2220140000000012"  | "3767"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC191VISAPurcResp"                     |"2220140000000012"  | "3768"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC192VISAPurcResp"                     |"2220140000000012"  | "3769"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC193VISAPurcResp"                     |"2220140000000012"  | "3770"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC194VISAPurcResp"                     |"2220140000000012"  | "3771"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC195VISAPurcResp"                     |"2220140000000012"  | "3772"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC196VISAPurcResp"                     |"2220140000000012"  | "3773"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC197VISAPurcResp"                     |"2220140000000012"  | "3774"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC198VISAPurcResp"                     |"2220140000000012"  | "3775"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC199VISAPurcResp"                     |"2220140000000012"  | "3776"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC200VISAPurcResp"                     |"2220140000000012"  | "3777"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC201VISAPurcResp"                     |"2220140000000012"  | "3778"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC202VISAPurcResp"                     |"2220140000000012"  | "3779"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC203VISAPurcResp"                     |"2220140000000012"  | "3780"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC204VISAPurcResp"                     |"2220140000000012"  | "3781"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC205VISAPurcResp"                     |"2220140000000012"  | "3782"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC206VISAPurcResp"                     |"2220140000000012"  | "3783"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC207VISAPurcResp"                     |"2220140000000012"  | "3784"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC208VISAPurcResp"                     |"2220140000000012"  | "3785"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC209VISAPurcResp"                     |"2220140000000012"  | "3786"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC210VISAPurcResp"                     |"2220140000000012"  | "3568"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC211VISAPurcResp"                     |"2220140000000012"  | "3570"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC212VISAPurcResp"                     |"2220140000000012"  | "3577"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC213VISAPurcResp"                     |"2220140000000012"  | "3615"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC214VISAPurcResp"                     |"2220140000000012"  | "3620"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC215VISAPurcResp"                     |"2220140000000012"  | "3628"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC216VISAPurcResp"                     |"2220140000000012"  | "3629"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC217VISAPurcResp"                     |"2220140000000012"  | "3579"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC218VISAPurcResp"                     |"2220140000000012"  | "3595"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC220VISAPurcResp"                     |"2220140000000012"  | "3599"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC221VISAPurcResp"                     |"2220140000000012"  | "3603"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC222VISAPurcResp"                     |"2220140000000012"  | "3612"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC224VISAPurcResp"                     |"2220140000000012"  | "3359"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC226VISAPurcResp"                     |"2220140000000012"  | "3393"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC227VISAPurcResp"                     |"2220140000000012"  | "3395"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC228VISAPurcResp"                     |"2220140000000012"  | "3400"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    |"FCIFSCV1TC229VISAPurcResp"                     |"2220140000000012"  | "7512"              | "20502"    |    "356001"     |  "1991" |  "379"  |
    
    
   
   #NOTWORKING
    #|"FCIFSCV1TC38VISAPurcResp"                      |"2220140000000012"  | "3554"              | "20502"    |    "356001"     |  "1991" |  "364"  |
    #|"FCIFSCV1TC223VISAPurcResp"                     |"2220140000000012"  | "7011"              | "20502"    |    "356001"     |  "1991" |  "364"  |
    #|"FCIFSCV1TC116VISAPurcResp"                     |"2220140000000012"  | "3693"              | "20502"    |    "356001"     |  "1991" |  "364"  |
    #|"FCIFSCV1TC61VISAPurcResp"                     |"2220140000000012"  | "3637"              | "20502"    |    "356001"     |  "1991" |  "364"  |
    #|"FCIFSCV1TC62VISAPurcResp"                     |"2220140000000012"  | "3638"              | "20502"    |    "356001"     |  "1991" |  "364"  |
     #|"FCIFSCV1TC40VISAPurcResp"                     |"2220140000000012"  | "3557"              | "20502"    |    "356001"     |  "1991" |  "364"  |
    #|"FCIFSCV1TC41VISAPurcResp"                     |"2220140000000012"  | "3508"              | "20502"    |    "356001"     |  "1991" |  "364"  |
    #|"FCIFSCV1TC64VISAPurcResp"                     |"2220140000000012"  | "3640"              | "20502"    |    "356001"     |  "1991" |  "364"  |
     #|"FCIFSCV1TC115VISAPurcResp"                     |"2220140000000012"  | "3692"              | "20502"    |    "356001"     |  "1991" |  "364"  |
    #|"FCIFSCV1TC219VISAPurcResp"                     |"2220140000000012"  | "3597"              | "20502"    |    "356001"     |  "1991" |  "364"  |
    #|"FCIFSCV1TC225VISAPurcResp"                     |"2220140000000012"  | "3360"              | "20502"    |    "356001"     |  "1991" |  "364"  |
    #
    #
    #123005
   #
   #
   |"FCIFSCV1TC1VISAPurcResp"                     |"2220150000000011"  | "5200"              | "20502"    |   "356001"     |  "1990" |  "31"  |
    |"FCIFSCV1TC2VISAPurcResp"                     |"2220150000000011"  | "5211"              | "44444"    |   "356001"     |  "1990" |  "43"  |
    |"FCIFSCV1TC3VISAPurcResp"                     |"2220150000000011"  | "5231"              | "35657"    |   "356001"     |  "1990" |  "39"  |
    |"FCIFSCV1TC4VISAPurcResp"                     |"2220150000000003"  | "5251"              | "99999999" |   "356001"     |  "1990" |  "50021"|
    |"FCIFSCV1TC5VISAPurcResp"                     |"2220150000000003"  | "5261"              | "66828"    |   "356001"     |  "1990" |  "54"  |
    |"FCIFSCV1TC6VISAPurcResp"                     |"2220150000000003"  | "5271"              | "57282"    |   "356001"     |  "1990" |  "50"  |
    |"FCIFSCV1TC7VISAPurcResp"                     |"2220150000000029"  | "5300"              | "22770"    |   "356001"     |  "1990" |  "32"  |
    |"FCIFSCV1TC8VISAPurcResp"                     |"2220150000000029"  | "5309"              | "74839"    |   "356001"     |  "1990" |  "58"  |
    |"FCIFSCV1TC9VISAPurcResp"                     |"2220150000000029"  | "5310"              | "74820"    |   "356001"     |  "1990" |  "58"  |
    |"FCIFSCV1TC10VISAPurcResp"                     |"2220150000000003"  | "5422"              | "739822"   |   "356001"     |  "1990" |  "391" |
    |"FCIFSCV1TC11VISAPurcResp"                     |"2220150000000003"  | "5331"              | "10000"    |   "356001"     |  "1990" |  "26"  |
    |"FCIFSCV1TC12VISAPurcResp"                     |"2220150000000011"  | "5311"              | "49478"    |   "356001"     |  "1990" |  "46"  |
    |"FCIFSCV1TC13VISAPurcResp"                     |"2220150000000011"  | "5399"              | "89947438" |   "356001"     |  "1990" |  "44995"|
    |"FCIFSCV1TC14VISAPurcResp"                     |"2220150000000011"  | "5441"              | "10000"    |   "356001"     |  "1990" |  "26"  |
    |"FCIFSCV1TC15VISAPurcResp"                     |"2220150000000029"  | "5451"              | "7489390"  |   "356001"     |  "1990" |  "3766"|
    |"FCIFSCV1TC16VISAPurcResp"                     |"2220150000000029"  | "5462"              | "77775"    |   "356001"     |  "1990" |  "60"  |
    |"FCIFSCV1TC17VISAPurcResp"                     |"2220150000000029"  | "5499"              | "845566"   |   "356001"     |  "1990" |  "444" |
    |"FCIFSCV1TC18VISAPurcResp"                     |"2220150000000029"  | "5999"              | "333333"   |   "356001"     |  "1990" |  "188" |
    |"FCIFSCV1TC19VISAPurcResp"                      |"2220150000000029"  | "9211"              | "10000"   |   "356001"     |  "1982" |  "26"  |
    |"FCIFSCV1TC20VISAPurcResp"                      |"2220150000000029"  | "9222"              | "12345"   |   "356001"     |  "1982" |  "27"  |
    |"FCIFSCV1TC21VSAPurcResp"                      |"2220150000000029"  | "9223"              | "27733"   |   "356001"     |  "1982" |  "35"  |
    |"FCIFSCV1TC23VISAPurcResp"                      |"2220150000000011"  | "9311"              | "26373"   |   "356001"     |  "1982" |  "34"  |
    |"FCIFSCV1TC24VISAPurcResp"                     |"2220150000000011"  | "9399"              | "76373"   |   "356001"     |  "1982" |  "59"  |
    |"FCIFSCV1TC25VISAPurcResp"                     |"2220150000000011"  | "9402"              | "87783"   |   "356001"     |  "1982" |  "65"  |
    |"FCIFSCV1TC26VISAPurcResp"                     |"2220150000000029"  | "9405"              | "44444"   |   "356001"     |  "1982" |  "43"  |
    |"FCIFSCV1TC27VISAPurcResp"                      |"2220150000000011"  | "9700"              | "12345"   |   "356001"     |  "1982" |  "27"  |
    |"FCIFSCV1TC28VISAPurcResp"                      |"2220150000000011"  | "9701"              | "27733"   |   "356001"     |  "1982" |  "35"  |
    |"FCIFSCV1TC29VISAPurcResp"                      |"2220150000000011"  | "9702"              | "27733"   |   "356001"     |  "1982" |  "35"  |
    |"FCIFSCV1TC30VISAPurcResp"                     |"2220150000000029"  | "9751"              | "76373"   |   "356001"     |  "1982" |  "59"  |
    |"FCIFSCV1TC31VISAPurcResp"                     |"2220150000000029"  | "9752"              | "87783"   |   "356001"     |  "1982" |  "65"  |
    |"FCIFSCV1TC32VISAPurcResp"                     |"2220150000000029"  | "9950"              | "44444"   |   "356001"     |  "1982" |  "43"  |
    |"FCIFSCV1TC33VISAPurcResp"                      |"2220150000000029"  | "4111"              | "20502"    |    "356001"     |  "1998" |  "31"  |
    |"FCIFSCV1TC344VISAPurcResp"                      |"2220150000000029"  | "4112"              | "20502"    |    "356001"     |  "1998" |  "31"  |
    |"FCIFSCV1TC35VISAPurcResp"                      |"2220150000000029"  | "3501"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC36VISAPurcResp"                      |"2220150000000029"  | "3552"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC37VISAPurcResp"                      |"2220150000000029"  | "3503"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC39VISAPurcResp"                      |"2220150000000029"  | "3506"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC42VISAPurcResp"                     |"2220150000000029"  | "3561"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC43VISAPurcResp"                     |"2220150000000029"  | "3562"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC44VISAPurcResp"                     |"2220150000000029"  | "3563"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC45VISAPurcResp"                     |"2220150000000029"  | "3564"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC46VISAPurcResp"                     |"2220150000000029"  | "3565"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC47VISAPurcResp"                     |"2220150000000029"  | "3572"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC48VISAPurcResp"                     |"2220150000000029"  | "3573"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC49VISAPurcResp"                     |"2220150000000029"  | "3574"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC50VISAPurcResp"                     |"2220150000000029"  | "3575"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC51VISAPurcResp"                     |"2220150000000029"  | "3622"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC52VISAPurcResp"                     |"2220150000000029"  | "3623"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC53VISAPurcResp"                     |"2220150000000029"  | "3624"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC54VISAPurcResp"                     |"2220150000000029"  | "3625"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC55VISAPurcResp"                     |"2220150000000029"  | "3631"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC56VISAPurcResp"                     |"2220150000000029"  | "3632"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC57VISAPurcResp"                     |"2220150000000029"  | "3633"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC58VISAPurcResp"                     |"2220150000000029"  | "3634"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC59VISAPurcResp"                     |"2220150000000029"  | "3635"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC60VISAPurcResp"                     |"2220150000000029"  | "3636"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC63VISAPurcResp"                     |"2220150000000029"  | "3639"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC65VISAPurcResp"                     |"2220150000000029"  | "3641"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC66VISAPurcResp"                     |"2220150000000029"  | "3642"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC67VISAPurcResp"                     |"2220150000000029"  | "3643"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC68VISAPurcResp"                     |"2220150000000029"  | "3644"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC69VISAPurcResp"                     |"2220150000000029"  | "3645"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC70VISAPurcResp"                     |"2220150000000029"  | "3646"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC71VISAPurcResp"                     |"2220150000000029"  | "3647"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC72VISAPurcResp"                     |"2220150000000029"  | "3648"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC73VISAPurcResp"                     |"2220150000000029"  | "3649"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC74VISAPurcResp"                     |"2220150000000029"  | "3650"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC75VISAPurcResp"                     |"2220150000000029"  | "3651"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC76VISAPurcResp"                     |"2220150000000029"  | "3652"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC77VISAPurcResp"                     |"2220150000000029"  | "3653"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC78VISAPurcResp"                     |"2220150000000029"  | "3654"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC79VISAPurcResp"                     |"2220150000000029"  | "3655"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC80VISAPurcResp"                     |"2220150000000029"  | "3656"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC81VISAPurcResp"                     |"2220150000000029"  | "3657"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC82ISAPurcResp"                      |"2220150000000029"  | "3658"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC83VISAPurcResp"                     |"2220150000000029"  | "3659"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC84VISAPurcResp"                     |"2220150000000029"  | "3660"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC85VISAPurcResp"                     |"2220150000000029"  | "3661"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC86VISAPurcResp"                     |"2220150000000029"  | "3662"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC87VISAPurcResp"                     |"2220150000000029"  | "3663"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC88VISAPurcResp"                     |"2220150000000029"  | "3664"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC89VISAPurcResp"                     |"2220150000000029"  | "3665"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC90VISAPurcResp"                     |"2220150000000029"  | "3666"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC91VISAPurcResp"                     |"2220150000000029"  | "3667"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC92VISAPurcResp"                     |"2220150000000029"  | "3668"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC93VISAPurcResp"                     |"2220150000000029"  | "3669"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC94VISAPurcResp"                     |"2220150000000029"  | "3670"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC95VISAPurcResp"                     |"2220150000000029"  | "3671"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC96VISAPurcResp"                     |"2220150000000029"  | "3672"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC97VISAPurcResp"                     |"2220150000000029"  | "3673"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC98VISAPurcResp"                     |"2220150000000029"  | "3674"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC99VISAPurcResp"                     |"2220150000000029"  | "3675"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC100VISAPurcResp"                     |"2220150000000029"  | "3676"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC101VISAPurcResp"                     |"2220150000000029"  | "3677"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC102VISAPurcResp"                     |"2220150000000029"  | "3678"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC103VISAPurcResp"                     |"2220150000000029"  | "3679"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC104VISAPurcResp"                     |"2220150000000029"  | "3678"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC105VISAPurcResp"                     |"2220150000000029"  | "3679"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC106VISAPurcResp"                     |"2220150000000029"  | "3680"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC107VISAPurcResp"                     |"2220150000000029"  | "3681"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC108VISAPurcResp"                     |"2220150000000029"  | "3683"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC109VISAPurcResp"                     |"2220150000000029"  | "3684"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC110VISAPurcResp"                     |"2220150000000029"  | "3685"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC111VISAPurcResp"                     |"2220150000000029"  | "3688"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC112VISAPurcResp"                     |"2220150000000029"  | "3689"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC113VISAPurcResp"                     |"2220150000000029"  | "3690"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC114VISAPurcResp"                     |"2220150000000029"  | "3691"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC117VISAPurcResp"                     |"2220150000000029"  | "3694"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC118VISAPurcResp"                     |"2220150000000029"  | "3695"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC119VISAPurcResp"                     |"2220150000000029"  | "3696"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC120VISAPurcResp"                     |"2220150000000029"  | "3697"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC121VISAPurcResp"                     |"2220150000000029"  | "3698"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC122VISAPurcResp"                     |"2220150000000029"  | "3699"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC123VISAPurcResp"                     |"2220150000000029"  | "3700"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC124VISAPurcResp"                     |"2220150000000029"  | "3701"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC125VISAPurcResp"                     |"2220150000000029"  | "3702"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC126VISAPurcResp"                     |"2220150000000029"  | "3703"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC127VISAPurcResp"                     |"2220150000000029"  | "3704"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC128VISAPurcResp"                     |"2220150000000029"  | "3705"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC129VISAPurcResp"                     |"2220150000000029"  | "3706"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC130VISAPurcResp"                     |"2220150000000029"  | "3707"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC131VISAPurcResp"                     |"2220150000000029"  | "3708"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC132VISAPurcResp"                     |"2220150000000029"  | "3709"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC133VISAPurcResp"                     |"2220150000000029"  | "3710"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC134VISAPurcResp"                     |"2220150000000029"  | "3711"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC135VISAPurcResp"                     |"2220150000000029"  | "3712"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC136VISAPurcResp"                     |"2220150000000029"  | "3713"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC137VISAPurcResp"                     |"2220150000000029"  | "3714"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC138VISAPurcResp"                     |"2220150000000029"  | "3715"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC139VISAPurcResp"                     |"2220150000000029"  | "3716"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC140VISAPurcResp"                     |"2220150000000029"  | "3717"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC142VISAPurcResp"                     |"2220150000000029"  | "3718"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC143VISAPurcResp"                     |"2220150000000029"  | "3719"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC144VISAPurcResp"                     |"2220150000000029"  | "3720"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC145VISAPurcResp"                     |"2220150000000029"  | "3721"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC146VISAPurcResp"                     |"2220150000000029"  | "3722"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC147VISAPurcResp"                     |"2220150000000029"  | "3723"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC148VISAPurcResp"                     |"2220150000000029"  | "3724"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC149VISAPurcResp"                     |"2220150000000029"  | "3725"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC150VISAPurcResp"                     |"2220150000000029"  | "3726"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC151VISAPurcResp"                     |"2220150000000029"  | "3727"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC152VISAPurcResp"                     |"2220150000000029"  | "3728"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC153VISAPurcResp"                     |"2220150000000029"  | "3729"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC154VISAPurcResp"                     |"2220150000000029"  | "3730"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC155VISAPurcResp"                     |"2220150000000029"  | "3731"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC156VISAPurcResp"                     |"2220150000000029"  | "3732"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC157VISAPurcResp"                     |"2220150000000029"  | "3734"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC158VISAPurcResp"                     |"2220150000000029"  | "3735"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC159VISAPurcResp"                     |"2220150000000029"  | "3736"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC160VISAPurcResp"                     |"2220150000000029"  | "3737"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC161VISAPurcResp"                     |"2220150000000029"  | "3738"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC162VISAPurcResp"                     |"2220150000000029"  | "3739"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC163VISAPurcResp"                     |"2220150000000029"  | "3740"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC164VISAPurcResp"                     |"2220150000000029"  | "3741"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC165VISAPurcResp"                     |"2220150000000029"  | "3742"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC166VISAPurcResp"                     |"2220150000000029"  | "3743"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC167VISAPurcResp"                     |"2220150000000029"  | "3744"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC168VISAPurcResp"                     |"2220150000000029"  | "3745"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC169VISAPurcResp"                     |"2220150000000029"  | "3746"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC170VISAPurcResp"                     |"2220150000000029"  | "3747"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC171VISAPurcResp"                     |"2220150000000029"  | "3748"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC172VISAPurcResp"                     |"2220150000000029"  | "3749"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC173VISAPurcResp"                     |"2220150000000029"  | "3750"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC174VISAPurcResp"                     |"2220150000000029"  | "3751"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC175VISAPurcResp"                     |"2220150000000029"  | "3752"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC176VISAPurcResp"                     |"2220150000000029"  | "3753"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC177VISAPurcResp"                     |"2220150000000029"  | "3754"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC178VISAPurcResp"                     |"2220150000000029"  | "3756"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC179VISAPurcResp"                     |"2220150000000029"  | "3757"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC180VISAPurcResp"                     |"2220150000000029"  | "3758"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC181VISAPurcResp"                     |"2220150000000029"  | "3759"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC182VISAPurcResp"                     |"2220150000000029"  | "3760"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC183VISAPurcResp"                     |"2220150000000029"  | "3761"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC184VISAPurcResp"                     |"2220150000000029"  | "3762"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC185VISAPurcResp"                     |"2220150000000029"  | "3763"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC186VISAPurcResp"                     |"2220150000000029"  | "3764"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC187VISAPurcResp"                     |"2220150000000029"  | "3765"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC188VISAPurcResp"                     |"2220150000000029"  | "3766"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC190VISAPurcResp"                     |"2220150000000029"  | "3767"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC191VISAPurcResp"                     |"2220150000000029"  | "3768"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC192VISAPurcResp"                     |"2220150000000029"  | "3769"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC193VISAPurcResp"                     |"2220150000000029"  | "3770"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC194VISAPurcResp"                     |"2220150000000029"  | "3771"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC195VISAPurcResp"                     |"2220150000000029"  | "3772"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC196VISAPurcResp"                     |"2220150000000029"  | "3773"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC197VISAPurcResp"                     |"2220150000000029"  | "3774"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC198VISAPurcResp"                     |"2220150000000029"  | "3775"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC199VISAPurcResp"                     |"2220150000000029"  | "3776"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC200VISAPurcResp"                     |"2220150000000029"  | "3777"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC201VISAPurcResp"                     |"2220150000000029"  | "3778"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC202VISAPurcResp"                     |"2220150000000029"  | "3779"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC203VISAPurcResp"                     |"2220150000000029"  | "3780"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC204VISAPurcResp"                     |"2220150000000029"  | "3781"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC205VISAPurcResp"                     |"2220150000000029"  | "3782"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC206VISAPurcResp"                     |"2220150000000029"  | "3783"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC207VISAPurcResp"                     |"2220150000000029"  | "3784"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC208VISAPurcResp"                     |"2220150000000029"  | "3785"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC209VISAPurcResp"                     |"2220150000000029"  | "3786"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC210VISAPurcResp"                     |"2220150000000029"  | "3568"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC211VISAPurcResp"                     |"2220150000000029"  | "3570"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC212VISAPurcResp"                     |"2220150000000029"  | "3577"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC213VISAPurcResp"                     |"2220150000000029"  | "3615"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC214VISAPurcResp"                     |"2220150000000029"  | "3620"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC215VISAPurcResp"                     |"2220150000000029"  | "3628"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC216VISAPurcResp"                     |"2220150000000029"  | "3629"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC217VISAPurcResp"                     |"2220150000000029"  | "3579"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC218VISAPurcResp"                     |"2220150000000029"  | "3595"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC220VISAPurcResp"                     |"2220150000000029"  | "3599"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC221VISAPurcResp"                     |"2220150000000029"  | "3603"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC222VISAPurcResp"                     |"2220150000000029"  | "3612"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC224VISAPurcResp"                     |"2220150000000029"  | "3359"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC226VISAPurcResp"                     |"2220150000000029"  | "3393"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC227VISAPurcResp"                     |"2220150000000029"  | "3395"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC228VISAPurcResp"                     |"2220150000000029"  | "3400"              | "20502"    |    "356001"     |  "1992" |  "31"  |
    |"FCIFSCV1TC229VISAPurcResp"                     |"2220150000000029"  | "7512"              | "20502"    |    "356001"     |  "1992" |  "31"  |
  
  
  @FCValid_Scenerio_Fees_and_charge_POS_Transaction_purchase_MOTO_credit
     
     Scenario Outline: Interchange fee calculation for purchase MOTO transactions with different Amount PosData and BusinessZoneCode
   
  
    Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
     Given Initiate Purchase transaction with PosDataCode as "000020100000" CardNumber <CardNumber> TranType "00" mcc <MerchantCategoryCode> Networkid as "1" Amount <Amount> trackDataOne "NoTrackData1" trackDataTwo "NoTrackData2" PINdata "NoPINData" Securitydata "NoSecData"  
    When  Acquirer forwards the message to SmartEdge
    And   Message is processed by issuer and repsonse is sent back to the acquirer
    Then  Verify this acquirer's <TestCaseId> received "000" <BusinessZoneCode> <feeRuleID> and <feeAmount>

    Examples: 
    |TestCaseId                                     | CardNumber         |MerchantCategoryCode |  Amount    |BusinessZoneCode|feeRuleID|feeAmount |
    
     #<<"123008">> 
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220160000000002"  | "5960"              | "36738833" |   "356001"     |  "2055" |  "881742"|
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220160000000010"  | "5962"              | "20502"    |   "356001"     |  "2055" |  "502"   |
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220160000000028"  | "5966"              | "20502"    |   "356001"     |  "2055" |  "502"   |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220160000000036"  | "5967"              | "20502"    |   "356001"     |  "2055" |  "502"   |
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220160000000044"  | "5968"              | "20502"    |   "356001"     |  "2055" |  "502"   |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220160000000028"  | "5962"              | "20502"    |   "356001"     |  "2055" |  "502"   |
    
     #<<"123033">>
    
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220170000000001"  | "5960"              | "20502"    |   "356001"     |  "2056" |  "410"   |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220170000000027"  | "5962"              | "20502"    |   "356001"     |  "2056" |  "410"   |
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220170000000019"  | "5966"              | "20502"    |   "356001"     |  "2056" |  "410"   |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220170000000043"  | "5967"              | "20502"    |   "356001"     |  "2056" |  "410"   |
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220170000000027"  | "5968"              | "20502"    |   "356001"     |  "2056" |  "410"   |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220170000000043"  | "5962"              | "20502"    |   "356001"     |  "2056" |  "410"   |
    
     #<<"123034">>
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220180000000018"  | "5960"              | "20502"    |   "356001"     |  "2057" |  "502"   |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220180000000034"  | "5962"              | "20502"    |   "356001"     |  "2057" |  "502"   |
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220180000000034"  | "5966"              | "20502"    |   "356001"     |  "2057" |  "502"   |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220180000000042"  | "5967"              | "20502"    |   "356001"     |  "2057" |  "502"   |
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220180000000034"  | "5968"              | "20502"    |   "356001"     |  "2057" |  "502"   |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220180000000042"  | "5962"              | "20502"    |   "356001"     |  "2057" |  "502"    |
    
     #<<"123035">>
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220190000000017"  | "5960"              | "20502"    |   "356001"     |  "2058" |  "410"   |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220190000000025"  | "5962"              | "20502"    |   "356001"     |  "2058" |  "410"   |
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220190000000025"  | "5966"              | "20502"    |   "356001"     |  "2058" |  "410"   |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220190000000033"  | "5967"              | "20502"    |   "356001"     |  "2058" |  "410"   |
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220190000000058"  | "5968"              | "20502"    |   "356001"     |  "2058" |  "410"   |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220190000000017"  | "5962"              | "20502"    |   "356001"     |  "2058" |  "410"   |
    
     #<<"123036">>
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220200000000006"  | "5960"              | "20502"    |   "356001"     |  "2059" |  "379"   | 
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220200000000014"  | "5962"              | "20502"    |   "356001"     |  "2059" |  "379"   |
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220200000000022"  | "5966"              | "20502"    |   "356001"     |  "2059" |  "379"   |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220200000000030"  | "5967"              | "20502"    |   "356001"     |  "2059" |  "379"   |
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220200000000022"  | "5968"              | "20502"    |   "356001"     |  "2059" |  "379"   |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220200000000030"  | "5962"              | "20502"    |   "356001"     |  "2059" |  "379"   |
    
    @FCValid_Scenerio_Fees_and_charge_POS_Transaction_purchase_MOTO_debit
     
     Scenario Outline: Interchange fee calculation for purchase Ecom transactions with different Amount PosData and BusinessZoneCode
   
  
    Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
    Given Initiate Purchase transaction with PosDataCode as "100020100000" CardNumber <CardNumber> TranType "00" mcc <MerchantCategoryCode> Networkid as "1" Amount <Amount> trackDataOne "NoTrackData1" trackDataTwo "NoTrackData2" PINdata "NoPINData" Securitydata "NoSecData"  
    When  Acquirer forwards the message to SmartEdge
    And   Message is processed by issuer and repsonse is sent back to the acquirer
    Then  Verify this acquirer's <TestCaseId> received "000" <BusinessZoneCode> <feeRuleID> and <feeAmount>

    Examples:
    |TestCaseId                                     | CardNumber         |MerchantCategoryCode |  Amount    |BusinessZoneCode|feeRuleID|feeAmount | 
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220880000000021"  | "5960"              | "36738833" |   "356001"     |  "1935" |  "606206"|
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220880000000013"  | "5962"              | "20502"    |   "356001"     |  "1935" |  "353"   |
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220880000000021"  | "5966"              | "1000478" |   "356001"     |  "1935" |  "16523"|
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220880000000005"  | "5967"              | "20502"    |   "356001"     |  "1935" |  "353"   |
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220880000000013"  | "5968"              | "70000" |   "356001"     |  "1935" |  "1170"|
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220880000000005"  | "5962"              | "40000"    |   "356001"     |  "1935" |  "675"   |
    
    #cardproduct5
    
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220990000000028"  | "5960"              | "36738833" |   "356001"     |  "1936" |  "18390"|
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220990000000002"  | "5962"              | "20502"    |   "356001"     |  "1936" |  "31"   |
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220990000000010"  | "5966"              | "1000478" |   "356001"     |  "1936" |  "521"|
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220990000000010"  | "5967"              | "20502"    |   "356001"     |  "1936" |  "31"   |
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220990000000002"  | "5968"              | "20502" |   "356001"     |  "1936" |  "31"|
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220990000000028"  | "5962"              | "20502"    |   "356001"     |  "1936" |  "31"   |
    
    @FCValid_Scenerio_Fees_and_charge_POS_Transaction_purchase_MOTO_prepaid
     
     Scenario Outline: Interchange fee calculation for purchase Ecom transactions with different Amount PosData and BusinessZoneCode
   
  
    Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
     Given Initiate Purchase transaction with PosDataCode as "000020100000" CardNumber <CardNumber> TranType "00" mcc <MerchantCategoryCode> Networkid as "1" Amount <Amount> trackDataOne "NoTrackData1" trackDataTwo "NoTrackData2" PINdata "NoPINData" Securitydata "NoSecData"  
    When  Acquirer forwards the message to SmartEdge
    And   Message is processed by issuer and repsonse is sent back to the acquirer
    Then  Verify this acquirer's <TestCaseId> received "000" <BusinessZoneCode> <feeRuleID> and <feeAmount>

    Examples: 
    |TestCaseId                                     | CardNumber         |MerchantCategoryCode |  Amount    |BusinessZoneCode|feeRuleID|feeAmount | 
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220140000000004"  | "5960"              | "36738833" |   "356001"     |  "1985" |  "642950"|
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220140000000020"  | "5962"              | "20502"    |   "356001"     |  "1985" |  "379"   |
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220140000000020"  | "5966"              | "1000478" |   "356001"     |  "1985" |  "17528"|
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220140000000012"  | "5967"              | "20502"    |   "356001"     |  "1985" |  "379"   |
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220140000000004"  | "5968"              | "70000" |   "356001"     |  "1985" |  "1245"|
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220140000000012"  | "5962"              | "40000"    |   "356001"     |  "1985" |  "720"   |
    
    #cardproduct222015
    
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220150000000029"  | "5960"              | "36738833" |   "356001"     |  "1986" |  "18390"|
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220150000000029"  | "5962"              | "20502"    |   "356001"     |  "1986" |  "31"   |
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220150000000029"  | "5966"              | "1000478" |   "356001"     |  "1986" |  "521"|
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220150000000029"  | "5967"              | "20502"    |   "356001"     |  "1986" |  "31"   |
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220150000000011"  | "5968"              | "20502" |   "356001"     |  "1986" |  "31"|
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220150000000011"  | "5962"              | "20502"    |   "356001"     |  "1986" |  "31"   |
    
    
    @FCValid_Scenerio_Fees_and_charge_POS_Transaction_purchase_credit 
     
     Scenario Outline: Interchange fee calculation for Purchase transactions with different Amount PosData and BusinessZoneCode
     
    Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
    Given Initiate Purchase transaction with PosDataCode as "510101510300" CardNumber <CardNumber> TranType "00" mcc <MerchantCategoryCode> Networkid as "1" Amount <Amount> trackDataOne "TrackData1" trackDataTwo "TrackData2" PINdata "PINData" Securitydata "SecData"  
    When  Acquirer forwards the message to SmartEdge
    And   Message is processed by issuer and repsonse is sent back to the acquirer
    Then  Verify this acquirer's <TestCaseId> received "000" <BusinessZoneCode> <feeRuleID> and <feeAmount>
    
    Examples: 
    
    |TestCaseId                                     | CardNumber         |MerchantCategoryCode |  Amount    |BusinessZoneCode |feeRuleID|feeAmount|

 #<<"123008">>

    |"FCIFSCV1TC24VISAPurcResp"                     |"2220160000000002"  | "5411"              | "20502"    |   "356001"     |  "2000" |  "441"  |
    |"FCIFSCV1TC25VISAPurcResp"                     |"2220160000000010"  | "9751"              | "99999"    |   "356001"     |  "2000" |  "2110" |
    |"FCIFSCV1TC26VISAPurcResp"                     |"2220160000000028"  | "9751"              | "22222"    |   "356001"     |  "2000" |  "477"  |
    |"FCIFSCV1TC27VISAPurcResp"                     |"2220160000000028"  | "5541"              | "50000"    |   "356001"     |  "2040" |  "110"  |
    |"FCIFSCV1TC28VISAPurcResp"                     |"2220160000000036"  | "5200"              | "20502"    |   "356001"     |  "2005" |  "441"  |
    |"FCIFSCV1TC29VISAPurcResp"                     |"2220160000000044"  | "5211"              | "20502"    |   "356001"     |  "2005" |  "441"  |
    |"FCIFSCV1TC30VISAPurcResp"                     |"2220160000000010"  | "5231"              | "20502"    |   "356001"     |  "2005" |  "441"  |
    |"FCIFSCV1TC31VISAPurcResp"                     |"2220160000000044"  | "5251"              | "20502"    |   "356001"     |  "2005" |  "441"  |
    |"FCIFSCV1TC32VISAPurcResp"                     |"2220160000000010"  | "5261"              | "20502"    |   "356001"     |  "2005" |  "441"  |
    |"FCIFSCV1TC33VISAPurcResp"                     |"2220160000000002"  | "5271"              | "20502"    |   "356001"     |  "2005" |  "441"  |
    |"FCIFSCV1TC34VISAPurcResp"                     |"2220160000000036"  | "5300"              | "20502"    |   "356001"     |  "2005" |  "441"  |
    |"FCIFSCV1TC35VISAPurcResp"                     |"2220160000000044"  | "5309"              | "20502"    |   "356001"     |  "2005" |  "441"  |
    |"FCIFSCV1TC36VISAPurcResp"                     |"2220160000000002"  | "5310"              | "20502"    |   "356001"     |  "2005" |  "441"  |
    |"FCIFSCV1TC11VISAPurcResp"                     |"2220160000000002"  | "5422"              | "88886"   |   "356001"     |  "2015" |  "2143"  |
    |"FCIFSCV1TC16VISAPurcResp"                     |"2220160000000036"  | "5441"              | "88886"   |   "356001"     |  "2015" |  "2143"  |
    |"FCIFSCV1TC17VISAPurcResp"                     |"2220160000000044"  | "5451"              | "88886"   |   "356001"     |  "2015" |  "2143"  |
    |"FCIFSCV1TC18VISAPurcResp"                     |"2220160000000044"  | "5462"              | "88886"   |   "356001"     |  "2015" |  "2143"  |
    |"FCIFSCV1TC19VISAPurcResp"                     |"2220160000000044"  | "5499"              | "88886"   |   "356001"     |  "2015" |  "2143"  |
    |"FCIFSCV1TC20VISAPurcResp"                     |"2220160000000044"  | "5999"              | "88886"   |   "356001"     |  "2015" |  "2143"  |

 #<<"123033">>

  
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220170000000001"  | "5411"              | "20502"   |   "356001"     |  "2001" |  "348"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220170000000019"  | "9751"              | "99999"   |   "356001"     |  "2001" |  "1660"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220170000000027"  | "5411"              | "99999"   |   "356001"     |  "2001" |  "1660"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220170000000035"  | "5541"              | "25552"   |   "356001"     |  "2041" |  "110"  |
    |"FCIFSCV1TC5VISAPurcResp"                      |"2220170000000043"  | "5200"              | "20502"   |   "356001"     |  "2006" |  "348"  |
    |"FCIFSCV1TC6VISAPurcResp"                      |"2220170000000019"  | "5211"              | "20502"   |   "356001"     |  "2006" |  "348"  |
    |"FCIFSCV1TC7VISAPurcResp"                      |"2220170000000027"  | "5231"              | "20502"   |   "356001"     |  "2006" |  "348"  |
    |"FCIFSCV1TC8VISAPurcResp"                      |"2220170000000035"  | "5251"              | "20502"   |   "356001"     |  "2006" |  "348"  |
    |"FCIFSCV1TC9VISAPurcResp"                      |"2220170000000043"  | "5261"              | "20502"   |   "356001"     |  "2006" |  "348"  |
    |"FCIFSCV1TC10VISAPurcResp"                     |"2220170000000001"  | "5271"              | "20502"   |   "356001"     |  "2006" |  "348"  |
    |"FCIFSCV1TC11VISAPurcResp"                     |"2220170000000027"  | "5300"              | "20502"   |   "356001"     |  "2006" |  "348"  |
    |"FCIFSCV1TC12VISAPurcResp"                     |"2220170000000035"  | "5309"              | "20502"   |   "356001"     |  "2006" |  "348"  |
    |"FCIFSCV1TC13VISAPurcResp"                     |"2220170000000001"  | "5310"              | "20502"   |   "356001"     |  "2006" |  "348"  |
    |"FCIFSCV1TC45VISAPurcResp"                     |"2220170000000027"  | "8398"              | "20502"   |   "356001"     |  "2026" |  "282"  |
    |"FCIFSCV1TC11VISAPurcResp"                     |"2220170000000001"  | "5422"              | "88886"   |   "356001"     |  "2016" |  "1276"  |
    |"FCIFSCV1TC16VISAPurcResp"                     |"2220170000000043"  | "5441"              | "88886"   |   "356001"     |  "2016" |  "1276"  |
    |"FCIFSCV1TC17VISAPurcResp"                     |"2220170000000019"  | "5451"              | "88886"   |   "356001"     |  "2016" |  "1276"  |
    |"FCIFSCV1TC18VISAPurcResp"                     |"2220170000000019"  | "5462"              | "88886"   |   "356001"     |  "2016" |  "1276"  |
    |"FCIFSCV1TC19VISAPurcResp"                     |"2220170000000019"  | "5499"              | "88886"   |   "356001"     |  "2016" |  "1276"  |
    |"FCIFSCV1TC20VISAPurcResp"                     |"2220170000000019"  | "5999"              | "88886"   |   "356001"     |  "2016" |  "1276"  |
  #<<"123034">>

  
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220180000000018"  | "5411"              | "20502"   |   "356001"     |  "2002" |  "441"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220180000000026"  | "9751"              | "99999"   |   "356001"     |  "2002" |  "2110"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220180000000034"  | "5411"              | "99999"   |   "356001"     |  "2002" |  "2110"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220180000000042"  | "5541"              | "25552"   |   "356001"     |  "2042" |  "110"  |
    |"FCIFSCV1TC5VISAPurcResp"                      |"2220180000000059"  | "5200"              | "20502"   |   "356001"     |  "2007" |  "441"  |
    |"FCIFSCV1TC6VISAPurcResp"                      |"2220180000000034"  | "5211"              | "20502"   |   "356001"     |  "2007" |  "441"  |
    |"FCIFSCV1TC7VISAPurcResp"                      |"2220180000000026"  | "5231"              | "20502"   |   "356001"     |  "2007" |  "441"  |
    |"FCIFSCV1TC8VISAPurcResp"                      |"2220180000000026"  | "5251"              | "20502"   |   "356001"     |  "2007" |  "441"  |
    |"FCIFSCV1TC9VISAPurcResp"                      |"2220180000000034"  | "5261"              | "20502"   |   "356001"     |  "2007" |  "441"  |
    |"FCIFSCV1TC10VISAPurcResp"                     |"2220180000000034"  | "5271"              | "20502"   |   "356001"     |  "2007" |  "441"  |
    |"FCIFSCV1TC11VISAPurcResp"                     |"2220180000000026"  | "5300"              | "20502"   |   "356001"     |  "2007" |  "441"  |
    |"FCIFSCV1TC12VISAPurcResp"                     |"2220180000000034"  | "5309"              | "20502"   |   "356001"     |  "2007" |  "441"  |
    |"FCIFSCV1TC13VISAPurcResp"                     |"2220180000000034"  | "5310"              | "20502"   |   "356001"     |  "2007" |  "441"  |
    |"FCIFSCV1TC45VISAPurcResp"                     |"2220180000000034"  | "8398"              | "20502"   |   "356001"     |  "2027" |  "282"  |
    |"FCIFSCV1TC11VISAPurcResp"                     |"2220180000000018"  | "5422"              | "88886"   |   "356001"     |  "2017" |  "2143"  |
    |"FCIFSCV1TC16VISAPurcResp"                     |"2220180000000034"  | "5441"              | "88886"   |   "356001"     |  "2017" |  "2143"  |
    |"FCIFSCV1TC17VISAPurcResp"                     |"2220180000000059"  | "5451"              | "88886"   |   "356001"     |  "2017" |  "2143"  |
    |"FCIFSCV1TC18VISAPurcResp"                     |"2220180000000059"  | "5462"              | "88886"   |   "356001"     |  "2017" |  "2143"  |
    |"FCIFSCV1TC19VISAPurcResp"                     |"2220180000000059"  | "5499"              | "88886"   |   "356001"     |  "2017" |  "2143"  |
    |"FCIFSCV1TC20VISAPurcResp"                     |"2220180000000059"  | "5999"              | "88886"   |   "356001"     |  "2017" |  "2143"  |
  
     #<<"123035">>

  
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220190000000017"  | "5411"              | "20502"   |   "356001"     |  "2003" |  "241"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220190000000025"  | "9751"              | "99999"   |   "356001"     |  "2003" |  "1155"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220190000000025"  | "5411"              | "99999"   |   "356001"     |  "2003" |  "1155"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220190000000033"  | "5541"              | "25552"   |   "356001"     |  "2043" |  "110"  |
    |"FCIFSCV1TC5VISAPurcResp"                      |"2220190000000041"  | "5200"              | "20502"   |   "356001"     |  "2008" |  "303"  |
    |"FCIFSCV1TC6VISAPurcResp"                      |"2220190000000058"  | "5211"              | "20502"   |   "356001"     |  "2008" |  "303"  |
    |"FCIFSCV1TC7VISAPurcResp"                      |"2220190000000017"  | "5231"              | "20502"   |   "356001"     |  "2008" |  "303"  |
    |"FCIFSCV1TC8VISAPurcResp"                      |"2220190000000041"  | "5251"              | "20502"   |   "356001"     |  "2008" |  "303"  |
    |"FCIFSCV1TC9VISAPurcResp"                      |"2220190000000025"  | "5261"              | "20502"   |   "356001"     |  "2008" |  "303"  |
    |"FCIFSCV1TC10VISAPurcResp"                     |"2220190000000041"  | "5271"              | "20502"   |   "356001"     |  "2008" |  "303"  |
    |"FCIFSCV1TC11VISAPurcResp"                     |"2220190000000017"  | "5300"              | "20502"   |   "356001"     |  "2008" |  "303"  |
    |"FCIFSCV1TC12VISAPurcResp"                     |"2220190000000033"  | "5309"              | "20502"   |   "356001"     |  "2008" |  "303"  |
    |"FCIFSCV1TC13VISAPurcResp"                     |"2220190000000025"  | "5310"              | "20502"   |   "356001"     |  "2008" |  "303"  |
    |"FCIFSCV1TC45VISAPurcResp"                     |"2220190000000025"  | "8398"              | "20502"   |   "356001"     |  "2028" |  "282"  |
    |"FCIFSCV1TC11VISAPurcResp"                     |"2220190000000041"  | "5422"              | "88886"   |   "356001"     |  "2018" |  "1276"  |
    |"FCIFSCV1TC16VISAPurcResp"                     |"2220190000000025"  | "5441"              | "88886"   |   "356001"     |  "2018" |  "1276"  |
    |"FCIFSCV1TC17VISAPurcResp"                     |"2220190000000025"  | "5451"              | "88886"   |   "356001"     |  "2018" |  "1276"  |
    |"FCIFSCV1TC18VISAPurcResp"                     |"2220190000000017"  | "5462"              | "88886"   |   "356001"     |  "2018" |  "1276"  |
    |"FCIFSCV1TC19VISAPurcResp"                     |"2220190000000041"  | "5499"              | "88886"   |   "356001"     |  "2018" |  "1276"  |
    |"FCIFSCV1TC20VISAPurcResp"                     |"2220190000000041"  | "5999"              | "88886"   |   "356001"     |  "2018" |  "1276"  |
  
     #<<"123036">>

  
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220200000000006"  | "5411"              | "20502"   |   "356001"     |  "2004" |  "241"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220200000000014"  | "9751"              | "99999"   |   "356001"     |  "2004" |  "1155"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220200000000022"  | "5411"              | "99999"   |   "356001"     |  "2004" |  "1155"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220200000000022"  | "5541"              | "25552"   |   "356001"     |  "2044" |  "110"  |
    |"FCIFSCV1TC5VISAPurcResp"                      |"2220200000000030"  | "5200"              | "20502"   |   "356001"     |  "2009" |  "303"  |
    |"FCIFSCV1TC6VISAPurcResp"                      |"2220200000000048"  | "5211"              | "20502"   |   "356001"     |  "2009" |  "303"  |
    |"FCIFSCV1TC7VISAPurcResp"                      |"2220200000000014"  | "5231"              | "20502"   |   "356001"     |  "2009" |  "303"  |
    |"FCIFSCV1TC8VISAPurcResp"                      |"2220200000000030"  | "5251"              | "20502"   |   "356001"     |  "2009" |  "303"  |
    |"FCIFSCV1TC9VISAPurcResp"                      |"2220200000000006"  | "5261"              | "20502"   |   "356001"     |  "2009" |  "303"  |
    |"FCIFSCV1TC10VISAPurcResp"                     |"2220200000000014"  | "5271"              | "20502"   |   "356001"     |  "2009" |  "303"  |
    |"FCIFSCV1TC11VISAPurcResp"                     |"2220200000000006"  | "5300"              | "20502"   |   "356001"     |  "2009" |  "303"  |
    |"FCIFSCV1TC12VISAPurcResp"                     |"2220200000000030"  | "5309"              | "20502"   |   "356001"     |  "2009" |  "303"  |
    |"FCIFSCV1TC13VISAPurcResp"                     |"2220200000000014"  | "5310"              | "20502"   |   "356001"     |  "2009" |  "303"  |
    |"FCIFSCV1TC11VISAPurcResp"                     |"2220200000000014"  | "5422"              | "88886"   |   "356001"     |  "2019" |  "1276"  |
    |"FCIFSCV1TC16VISAPurcResp"                     |"2220200000000006"  | "5441"              | "88886"   |   "356001"     |  "2019" |  "1276"  |
    |"FCIFSCV1TC17VISAPurcResp"                     |"2220200000000022"  | "5451"              | "88886"   |   "356001"     |  "2019" |  "1276"  |
    |"FCIFSCV1TC18VISAPurcResp"                     |"2220200000000006"  | "5462"              | "88886"   |   "356001"     |  "2019" |  "1276"  |
    |"FCIFSCV1TC19VISAPurcResp"                     |"2220200000000014"  | "5499"              | "88886"   |   "356001"     |  "2019" |  "1276"  |
    |"FCIFSCV1TC20VISAPurcResp"                     |"2220200000000022"  | "5999"              | "88886"   |   "356001"     |  "2019" |  "1276"  |
    
    
    #TUPPLE_PURCHASE
    
    @FCValid_Scenerio_Fees_and_charge_POS_Transaction_purchase_prepaid
     
     Scenario Outline: Interchange fee calculation for Purchase transactions with different Amount PosData and BusinessZoneCode
     
    Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
    Given Initiate Purchase transaction with PosDataCode as "510101510300" CardNumber <CardNumber> TranType "00" mcc <MerchantCategoryCode> Networkid as "1" Amount <Amount> trackDataOne "TrackData1" trackDataTwo "TrackData2" PINdata "PINData" Securitydata "SecData"  
    When  Acquirer forwards the message to SmartEdge
    And   Message is processed by issuer and repsonse is sent back to the acquirer
    Then  Verify this acquirer's <TestCaseId> received "000" <BusinessZoneCode> <feeRuleID> and <feeAmount>
    
    Examples: 
    
    |TestCaseId                                     | CardNumber         |MerchantCategoryCode |  Amount    |BusinessZoneCode |feeRuleID|feeAmount|
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220140000000004"  | "5411"              | "20502"   |   "356001"     |  "1950" |  "35"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220140000000004"  | "9751"              | "99999"   |   "356001"     |  "1950" |  "35"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220140000000004"  | "5411"              | "10000"   |   "356001"     |  "1950" |  "35"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220140000000012"  | "5541"              | "25552"   |   "356001"     |  "1957" |  "95"  |
    |"FCIFSCV1TC6VISAPurcResp"                      |"2220140000000012"  | "5211"              | "25552"   |   "356001"     |  "1953" |  "309"  |
    |"FCIFSCV1TC7VISAPurcResp"                      |"2220140000000020"  | "5231"              | "12345"   |   "356001"     |  "1953" |  "157"  |
    |"FCIFSCV1TC8VISAPurcResp"                      |"2220140000000020"  | "5251"              | "27733"   |   "356001"     |  "1953" |  "334"  |
    |"FCIFSCV1TC9VISAPurcResp"                      |"2220140000000020"  | "5261"              | "26373"   |   "356001"     |  "1953" |  "318"  |
    |"FCIFSCV1TC10VISAPurcResp"                     |"2220140000000038"  | "5271"              | "76373"   |   "356001"     |  "1953" |  "893"  |
    |"FCIFSCV1TC11VISAPurcResp"                     |"2220140000000038"  | "5300"              | "87783"   |   "356001"     |  "1953" |  "1025"  |
    |"FCIFSCV1TC12VISAPurcResp"                     |"2220140000000038"  | "5309"              | "44444"   |   "356001"     |  "1953" |  "526"  |
    |"FCIFSCV1TC13VISAPurcResp"                     |"2220140000000020"  | "5310"              | "84899"   |   "356001"     |  "1953" |  "991"  |
    |"FCIFSCV1TC14VISAPurcResp"                     |"2220140000000020"  | "5422"              | "88999"   |   "356001"     |  "1953" |  "1038"  |
    |"FCIFSCV1TC15VISAPurcResp"                     |"2220140000000020"  | "5331"              | "88899"   |   "356001"     |  "1953" |  "1037"  |
    |"FCIFSCV1TC16VISAPurcResp"                     |"2220140000000020"  | "5311"              | "88886"   |   "356001"     |  "1953" |  "1037"  |
    |"FCIFSCV1TC17VISAPurcResp"                     |"2220140000000038"  | "5399"              | "88897"   |   "356001"     |  "1953" |  "1037"  |
    |"FCIFSCV1TC18VISAPurcResp"                     |"2220140000000038"  | "5441"              | "88908"   |   "356001"     |  "1953" |  "1037"  |
    |"FCIFSCV1TC19VISAPurcResp"                     |"2220140000000038"  | "5451"              | "88997"   |   "356001"     |  "1953" |  "1038"  |
    |"FCIFSCV1TC20VISAPurcResp"                     |"2220140000000012"  | "5462"              | "85578"   |   "356001"     |  "1953" |  "999"  |
    |"FCIFSCV1TC21VISAPurcResp"                     |"2220140000000012"  | "5499"              | "66777"   |   "356001"     |  "1953" |  "783"  |
    |"FCIFSCV1TC22VISAPurcResp"                     |"2220140000000004"  | "5999"              | "89998"   |   "356001"     |  "1953" |  "1050"  |
  #
     
      #card product 123005
    
    |"FCIFSCV1TC24VISAPurcResp"                     |"2220150000000003"  | "5411"              | "20502"    |   "356001"     |  "1951" |  "31"  |
    |"FCIFSCV1TC25VISAPurcResp"                     |"2220150000000003"  | "9751"              | "99999"    |   "356001"     |  "1951" |  "71"  |
    |"FCIFSCV1TC26VISAPurcResp"                     |"2220150000000003"  | "9751"              | "22222"    |   "356001"     |  "1951" |  "32"  |
    |"FCIFSCV1TC27VISAPurcResp"                     |"2220150000000011"  | "5541"              | "50000"    |   "356001"     |  "1958" |  "46"  |
    |"FCIFSCV1TC28VISAPurcResp"                     |"2220150000000011"  | "5200"              | "20502"    |   "356001"     |  "1954" |  "31"  |
    |"FCIFSCV1TC29VISAPurcResp"                     |"2220150000000011"  | "5211"              | "44444"    |   "356001"     |  "1954" |  "43"  |
    |"FCIFSCV1TC30VISAPurcResp"                     |"2220150000000029"  | "5231"              | "35657"    |   "356001"     |  "1954" |  "39"  |
    |"FCIFSCV1TC31VISAPurcResp"                     |"2220150000000029"  | "5251"              | "99999999" |   "356001"     |  "1954" |  "50021"|
    |"FCIFSCV1TC32VISAPurcResp"                     |"2220150000000029"  | "5261"              | "66828"    |   "356001"     |  "1954" |  "54"  |
    |"FCIFSCV1TC33VISAPurcResp"                     |"2220150000000037"  | "5271"              | "57282"    |   "356001"     |  "1954" |  "50"  |
    |"FCIFSCV1TC34VISAPurcResp"                     |"2220150000000037"  | "5300"              | "22770"    |   "356001"     |  "1954" |  "32"  |
    |"FCIFSCV1TC35VISAPurcResp"                     |"2220150000000037"  | "5309"              | "74839"    |   "356001"     |  "1954" |  "58"  |
    |"FCIFSCV1TC36VISAPurcResp"                     |"2220150000000029"  | "5310"              | "74820"    |   "356001"     |  "1954" |  "58"  |
    |"FCIFSCV1TC37VISAPurcResp"                     |"2220150000000029"  | "5422"              | "739822"   |   "356001"     |  "1954" |  "391" |
    |"FCIFSCV1TC38VISAPurcResp"                     |"2220150000000029"  | "5331"              | "10000"    |   "356001"     |  "1954" |  "26"  |
    |"FCIFSCV1TC39VISAPurcResp"                     |"2220150000000011"  | "5311"              | "49478"    |   "356001"     |  "1954" |  "46"  |
    |"FCIFSCV1TC40VISAPurcResp"                     |"2220150000000011"  | "5399"              | "89947438" |   "356001"     |  "1954" |  "44995"|
    |"FCIFSCV1TC41VISAPurcResp"                     |"2220150000000011"  | "5441"              | "10000"    |   "356001"     |  "1954" |  "26"  |
    |"FCIFSCV1TC42VISAPurcResp"                     |"2220150000000003"  | "5451"              | "7489390"  |   "356001"     |  "1954" |  "3766"|
    |"FCIFSCV1TC43VISAPurcResp"                     |"2220150000000003"  | "5462"              | "77775"    |   "356001"     |  "1954" |  "60"  |
    |"FCIFSCV1TC44VISAPurcResp"                     |"2220150000000003"  | "5499"              | "845566"   |   "356001"     |  "1954" |  "444" |
    |"FCIFSCV1TC45VISAPurcResp"                     |"2220150000000029"  | "5999"              | "333333"   |   "356001"     |  "1954" |  "188" |
    
    
    #RECURRING
     
     @FCValid_Scenerio_Fees_and_charge_POS_Transaction_purchase_recurring_prepaid
     
     Scenario Outline: Interchange fee calculation for purchase recurring transactions with different Amount PosData and BusinessZoneCode
   
    Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
    Given Initiate Purchase Recurring transaction with PosDataCode as "000090100000" CardNumber <CardNumber> TranType "00" mcc <MerchantCategoryCode> Networkid as "1" Amount <Amount> trackDataOne "NoTrackData1" trackDataTwo "NoTrackData2" PINdata "NoPINData" Securitydata "NoSecData"  
    When  Acquirer forwards the message to SmartEdge
    And   Message is processed by issuer and repsonse is sent back to the acquirer
    Then  Verify this acquirer's <TestCaseId> received "000" <BusinessZoneCode> <feeRuleID> and <feeAmount>

    Examples: 
    
   |TestCaseId                                     | CardNumber         |MerchantCategoryCode |  Amount    |BusinessZoneCode |feeRuleID|feeAmount|
   |"FCIFSCV1TC1VISAPurcResp"                      |"2220140000000004"  | "7349"              | "36738833" |   "356001"     |  "1975" |  "65"  |
   |"FCIFSCV1TC2VISAPurcResp"                      |"2220140000000004"  | "5411"              | "383993"   |   "356001"     |  "1975" |  "65"  |
   |"FCIFSCV1TC3VISAPurcResp"                      |"2220140000000004"  | "9751"              | "99999"    |   "356001"     |  "1975" |  "65"  |
   |"FCIFSCV1TC4VISAPurcResp"                      |"2220140000000012"  | "5411"              | "10000"    |   "356001"     |  "1975" |  "65"  |
   |"FCIFSCV1TC5VISAPurcResp"                      |"2220140000000012"  | "5541"              | "25552"    |   "356001"     |  "1975" |  "65"  |
   |"FCIFSCV1TC6VISAPurcResp"                      |"2220140000000012"  | "5200"              | "20502"    |   "356001"     |  "1975" |  "65"  |
   |"FCIFSCV1TC8VISAPurcResp"                      |"2220140000000020"  | "5211"              | "10000"    |   "356001"     |  "1975" |  "65"  |
   |"FCIFSCV1TC9VISAPurcResp"                      |"2220140000000020"  | "5231"              | "12345"    |   "356001"     |  "1975" |  "65"  |
   |"FCIFSCV1TC10VISAPurcResp"                     |"2220140000000020"  | "5251"              | "27733"    |   "356001"     |  "1975" |  "65"  |
   |"FCIFSCV1TC11VISAPurcResp"                     |"2220140000000038"  | "8220"              | "36738833" |   "356001"     |  "1975" |  "65"  |
   |"FCIFSCV1TC12VISAPurcResp"                     |"2220140000000038"  | "7929"              | "383993"   |   "356001"     |  "1975" |  "65"  |
   |"FCIFSCV1TC13VISAPurcResp"                     |"2220140000000038"  | "7933"              | "99999"    |   "356001"     |  "1975" |  "65"  |
   |"FCIFSCV1TC14VISAPurcResp"                     |"2220140000000038"  | "7941"              | "74647"    |   "356001"     |  "1975" |  "65"  |
   |"FCIFSCV1TC15VISAPurcResp"                     |"2220140000000012"  | "7991"              | "25552"    |   "356001"     |  "1975" |  "65"  |
   |"FCIFSCV1TC16VISAPurcResp"                     |"2220140000000012"  | "7993"              | "20502"    |   "356001"     |  "1975" |  "65"  |
   |"FCIFSCV1TC17VISAPurcResp"                     |"2220140000000012"  | "7995"              | "10000"    |   "356001"     |  "1975" |  "65"  |
   |"FCIFSCV1TC18VISAPurcResp"                     |"2220140000000004"  | "7841"              | "12345"    |   "356001"     |  "1975" |  "65"  |
   |"FCIFSCV1TC19VISAPurcResp"                     |"2220140000000004"  | "7999"              | "27733"    |   "356001"     |  "1975" |  "65"  |
    
    
    #123005
    
   |"FCIFSCV1TC20VISAPurcResp"                      |"2220150000000003"  | "7349"              | "36738833" |   "356001"     |  "1976" |  "18390"  |
   |"FCIFSCV1TC21VISAPurcResp"                      |"2220150000000003"  | "5411"              | "383993"      |   "356001"     |  "1976" |  "213"  |
   |"FCIFSCV1TC22VISAPurcResp"                      |"2220150000000003"  | "9751"              | "99999"    |   "356001"     |  "1976" |  "71"  |
   |"FCIFSCV1TC23VISAPurcResp"                      |"2220150000000011"  | "5411"              | "10000"    |   "356001"     |  "1976" |  "26"  |
   |"FCIFSCV1TC24VISAPurcResp"                      |"2220150000000011"  | "5541"              | "25552"    |   "356001"     |  "1976" |  "34"  |
   |"FCIFSCV1TC25VISAPurcResp"                      |"2220150000000011"  | "5200"              | "20502"    |   "356001"     |  "1976" |  "31"  |
   |"FCIFSCV1TC26VISAPurcResp"                      |"2220150000000029"  | "5211"              | "10000"    |   "356001"     |  "1976" |  "26"  |
   |"FCIFSCV1TC27VISAPurcResp"                      |"2220150000000029"  | "5231"              | "12345"    |   "356001"     |  "1976" |  "27"  |
   |"FCIFSCV1TC28VISAPurcResp"                      |"2220150000000029"  | "5251"              | "27733"    |   "356001"     |  "1976" |  "35"  |
   |"FCIFSCV1TC30VISAPurcResp"                      |"2220150000000011"  | "8220"              | "36738833" |   "356001"     |  "1976" |  "18390"  |
   |"FCIFSCV1TC31VISAPurcResp"                      |"2220150000000011"  | "7929"              | "383993"      |   "356001"     |  "1976" |  "213"  |
   |"FCIFSCV1TC32VISAPurcResp"                      |"2220150000000011"  | "7933"              | "99999"    |   "356001"     |  "1976" |  "71"  |
   |"FCIFSCV1TC33VISAPurcResp"                      |"2220150000000037"  | "7941"              | "10000"    |   "356001"     |  "1976" |  "26"  |
   |"FCIFSCV1TC34VISAPurcResp"                      |"2220150000000037"  | "7991"              | "25552"    |   "356001"     |  "1976" |  "34"  |
   |"FCIFSCV1TC35VISAPurcResp"                      |"2220150000000037"  | "7993"              | "20502"    |   "356001"     |  "1976" |  "31"  |
   |"FCIFSCV1TC36VISAPurcResp"                      |"2220150000000003"  | "7995"              | "10000"    |   "356001"     |  "1976" |  "26"  |
   |"FCIFSCV1TC37VISAPurcResp"                      |"2220150000000003"  | "7841"              | "12345"    |   "356001"     |  "1976" |  "27"  |
   |"FCIFSCV1TC38VISAPurcResp"                      |"2220150000000003"  | "7999"              | "27733"    |   "356001"     |  "1976" |  "35"  |
    
    
    
    #SMALLTICKET
 
    @FCValid_Scenerio_Fees_and_charge_POS_Transaction_purchase_smallTicket_credit 
     
     Scenario Outline: Interchange fee calculation for smallTicket  transactions with different Amount PosData and BusinessZoneCode
   
  
    Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
    Given Initiate Purchase transaction with PosDataCode as "510101510300" CardNumber <CardNumber> TranType "00" mcc <MerchantCategoryCode> Networkid as "1" Amount <Amount> trackDataOne "TrackData1" trackDataTwo "TrackData2" PINdata "PINData" Securitydata "SecData"  
    When  Acquirer forwards the message to SmartEdge
    Then  Verify this acquirer's <TestCaseId> received "951" <BusinessZoneCode> <feeRuleID> and <feeAmount>
    #Then  Verify acquirer's <TestCaseId> received response "951" <AdditionalResponse_F46> <BusinessZoneCode> <feeRuleID> and <feeAmount>
    
    
    Examples: 
    
    |TestCaseId                                     | CardNumber         |MerchantCategoryCode |  Amount    |BusinessZoneCode |feeRuleID|feeAmount|
    #123008
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220160000000002"  | "5411"              | "100"    |   "356001"     |  "2010" |  "12"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220160000000010"  | "9751"              | "1045"   |   "356001"     |  "2010" |  "32" |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220160000000028"  | "5411"              | "999"   |   "356001"     |  "2010" |  "31"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220160000000036"  | "5541"              | "555"   |   "356001"     |  "2010" |  "22"  |
    |"FCIFSCV1TC5VISAPurcResp"                      |"2220160000000044"  | "5200"              | "200"   |   "356001"     |  "2010" |  "14"   |
    |"FCIFSCV1TC6VISAPurcResp"                      |"2220160000000028"  | "5211"              | "500"   |   "356001"     |  "2010" |  "21"  |
    |"FCIFSCV1TC7VISAPurcResp"                      |"2220160000000044"  | "5231"              | "1000"  |   "356001"     |  "2010" |  "31"  |
    |"FCIFSCV1TC8VISAPurcResp"                      |"2220160000000044"  | "5251"              | "300"   |   "356001"     |  "2010" |  "16"  |
   #123033
    
    |"FCIFSCV1TC24VISAPurcResp"                     |"2220170000000001"  | "5411"              | "100"    |   "356001"     |  "2011" |  "6"  |
    |"FCIFSCV1TC25VISAPurcResp"                     |"2220170000000027"  | "9751"              | "1045"   |   "356001"     |  "2011" |  "21"  |
    |"FCIFSCV1TC26VISAPurcResp"                     |"2220170000000019"  | "9751"              | "999"    |   "356001"     |  "2011" |  "20"  |
    |"FCIFSCV1TC27VISAPurcResp"                     |"2220170000000043"  | "5541"              | "555"    |   "356001"     |  "2011" |  "13"  |
    |"FCIFSCV1TC28VISAPurcResp"                     |"2220170000000019"  | "5200"              | "200"    |   "356001"     |  "2011" |  "7"  |
    |"FCIFSCV1TC29VISAPurcResp"                     |"2220170000000027"  | "5211"              | "500"    |   "356001"     |  "2011" |  "12"  |
    |"FCIFSCV1TC30VISAPurcResp"                     |"2220170000000043"  | "5231"              | "1000"   |   "356001"     |  "2011" |  "21"  |
    |"FCIFSCV1TC31VISAPurcResp"                     |"2220170000000019"  | "5251"              | "300"    |   "356001"     |  "2011" |  "9"  |
   
    #123034
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220180000000018"  | "5411"              | "100"    |   "356001"     |  "2012" |  "12"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220180000000042"  | "9751"              | "1045"   |   "356001"     |  "2012" |  "32" |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220180000000034"  | "5411"              | "999"   |   "356001"     |  "2012" |  "31"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220180000000042"  | "5541"              | "555"   |   "356001"     |  "2012" |  "22"  |
    |"FCIFSCV1TC5VISAPurcResp"                      |"2220180000000034"  | "5200"              | "200"   |   "356001"     |  "2012" |  "14"   |
    |"FCIFSCV1TC6VISAPurcResp"                      |"2220180000000034"  | "5211"              | "500"   |   "356001"     |  "2012" |  "21"  |
    |"FCIFSCV1TC7VISAPurcResp"                      |"2220180000000034"  | "5231"              | "1000"  |   "356001"     |  "2012" |  "31" |
    |"FCIFSCV1TC8VISAPurcResp"                      |"2220180000000034"  | "5251"              | "300"   |   "356001"     |  "2012" |  "16"  |
    #123035
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220190000000017"  | "5411"              | "100"    |   "356001"     |  "2013" |  "6"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220190000000025"  | "9751"              | "1045"   |   "356001"     |  "2013" |  "21" |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220190000000025"  | "5411"              | "999"   |   "356001"     |  "2013" |  "20"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220190000000033"  | "5541"              | "555"   |   "356001"     |  "2013" |  "13"  |
    |"FCIFSCV1TC5VISAPurcResp"                      |"2220190000000041"  | "5200"              | "200"   |   "356001"     |  "2013" |  "7"   |
    |"FCIFSCV1TC6VISAPurcResp"                      |"2220190000000058"  | "5211"              | "500"   |   "356001"     |  "2013" |  "12"  |
    |"FCIFSCV1TC7VISAPurcResp"                      |"2220190000000017"  | "5231"              | "1000"  |   "356001"     |  "2013" |  "21" |
    |"FCIFSCV1TC8VISAPurcResp"                      |"2220190000000058"  | "5251"              | "300"   |   "356001"     |  "2013" |  "9"  |
    
    #123036
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220200000000006"  | "5411"              | "100"    |   "356001"     |  "2014" |  "6"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220200000000014"  | "9751"              | "1045"   |   "356001"     |  "2014" |  "21" |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220200000000022"  | "5411"              | "999"   |   "356001"     |  "2014" |  "20"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220200000000030"  | "5541"              | "555"   |   "356001"     |  "2014" |  "13"  |
    |"FCIFSCV1TC5VISAPurcResp"                      |"2220200000000022"  | "5200"              | "200"   |   "356001"     |  "2014" |  "7"   |
    |"FCIFSCV1TC6VISAPurcResp"                      |"2220200000000030"  | "5211"              | "500"   |   "356001"     |  "2014" |  "12"  |
    |"FCIFSCV1TC7VISAPurcResp"                      |"2220200000000048"  | "5231"              | "1000"  |   "356001"     |  "2014" |  "21" |
    |"FCIFSCV1TC8VISAPurcResp"                      |"2220200000000014"  | "5251"              | "300"   |   "356001"     |  "2014" |  "9"  |
    
    
    #SMALLTICKET
 
    @FCValid_Scenerio_Fees_and_charge_POS_Transaction_purchase_smallTicket_prepaid 
     
     Scenario Outline: Interchange fee calculation for smallTicket  transactions with different Amount PosData and BusinessZoneCode
   
  
    Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
    Given Initiate Purchase transaction with PosDataCode as "510101510300" CardNumber <CardNumber> TranType "00" mcc <MerchantCategoryCode> Networkid as "1" Amount <Amount> trackDataOne "TrackData1" trackDataTwo "TrackData2" PINdata "PINData" Securitydata "SecData"  
    When  Acquirer forwards the message to SmartEdge
    Then  Verify this acquirer's <TestCaseId> received "951" <BusinessZoneCode> <feeRuleID> and <feeAmount>
    #Then  Verify acquirer's <TestCaseId> received response "951" <AdditionalResponse_F46> <BusinessZoneCode> <feeRuleID> and <feeAmount>
    
    
    Examples: 
    
    |TestCaseId                                     | CardNumber         |MerchantCategoryCode |  Amount    |BusinessZoneCode |feeRuleID|feeAmount|
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220140000000004"  | "5411"              | "100"    |   "356001"     |  "1959" |  "7"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220140000000004"  | "9751"              | "1045"   |   "356001"     |  "1959" |  "22" |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220140000000020"  | "5411"              | "999"   |   "356001"     |  "1959" |  "21"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220140000000020"  | "5541"              | "555"   |   "356001"     |  "1959" |  "14"  |
    |"FCIFSCV1TC5VISAPurcResp"                      |"2220140000000038"  | "5200"              | "200"   |   "356001"     |  "1959" |  "8"   |
    |"FCIFSCV1TC6VISAPurcResp"                      |"2220140000000038"  | "5211"              | "500"   |   "356001"     |  "1959" |  "13"  |
    |"FCIFSCV1TC7VISAPurcResp"                      |"2220140000000012"  | "5231"              | "1000"  |   "356001"     |  "1959" |  "21" |
    |"FCIFSCV1TC8VISAPurcResp"                      |"2220140000000012"  | "5251"              | "300"   |   "356001"     |  "1959" |  "10"  |
    #
    
    #123005
    
    |"FCIFSCV1TC24VISAPurcResp"                     |"2220150000000003"  | "5411"              | "100"    |   "356001"     |  "1960" |  "21"  |
    |"FCIFSCV1TC25VISAPurcResp"                     |"2220150000000003"  | "9751"              | "1045"   |   "356001"     |  "1960" |  "22"  |
    |"FCIFSCV1TC26VISAPurcResp"                     |"2220150000000011"  | "9751"              | "999"    |   "356001"     |  "1960" |  "21"  |
    |"FCIFSCV1TC27VISAPurcResp"                     |"2220150000000011"  | "5541"              | "555"    |   "356001"     |  "1960" |  "21"  |
    |"FCIFSCV1TC28VISAPurcResp"                     |"2220150000000029"  | "5200"              | "200"    |   "356001"     |  "1960" |  "21"  |
    |"FCIFSCV1TC29VISAPurcResp"                     |"2220150000000029"  | "5211"              | "500"    |   "356001"     |  "1960" |  "21"  |
    |"FCIFSCV1TC30VISAPurcResp"                     |"2220150000000037"  | "5231"              | "1000"   |   "356001"     |  "1960" |  "22"  |
    |"FCIFSCV1TC31VISAPurcResp"                     |"2220150000000037"  | "5251"              | "300"    |   "356001"     |  "1960" |  "21"  |
   
   
   @FCValid_Scenerio_Fees_and_charge_POS_Transaction_CP_transaction


  Scenario Outline: Interchange fee calculation for TandE transactions with different Amount PosData and BusinessZoneCode
   
   Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
    Given Initiate TandE transaction with PosDataCode as "510101510300" CardNumber <CardNumber> TranType "00" mcc <MerchantCategoryCode> Networkid as "1" Amount <Amount> <trackdata1> <trackdata2> <PINdata> <Securitydata> 
    When  Acquirer forwards the message to SmartEdge
    And   Message is processed by issuer and repsonse is sent back to the acquirer
    Then  Verify this acquirer's <TestCaseId> received "000" <BusinessZoneCode> <feeRuleID> and <feeAmount>
    
    Examples: 
    	  	  
    |TestCaseId                                     | CardNumber         |MerchantCategoryCode |  Amount    |trackdata1      | trackdata2   |PINdata    |Securitydata  |BusinessZoneCode |feeRuleID|feeAmount|
  

#123037

    |"FCIFSCV1TC1VISAPurcResp"                      |"2220210000000039"  | "5811"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2107"  |  "5094"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220210000000013"  | "5812"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2107"  |  "5094"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220210000000039"  | "5813"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2107"  |  "5094"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220210000000013"  | "5814"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2107"  |  "5094"  |
 #123038   
    |"FCIFSCV1TC1VISAPurcResp"                      |"2229990000000003"  | "5811"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2108" |  "5094"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2229990000000003"  | "5812"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2108" |  "5094"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2229990000000003"  | "5813"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2108" |  "5094"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2229990000000003"  | "5814"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2108" |  "5094"  |
#123037
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220210000000039"  | "5811"              | "1555679"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2109" |  "14584"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220210000000013"  | "5812"              | "1555679"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2109" |  "14584"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220210000000039"  | "5813"              | "1555679"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2109" |  "14584"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220210000000013"  | "5814"              | "1555679"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2109" |  "14584"  |

 #123038 
   
    |"FCIFSCV1TC1VISAPurcResp"                      |"2229990000000003"  | "5811"              | "1555679"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2110" |  "14584"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2229990000000003"  | "5812"              | "1555679"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2110" |  "14584"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2229990000000003"  | "5813"              | "1555679"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2110" |  "14584"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2229990000000003"  | "5814"              | "1555679"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2110" |  "14584"  |
#123037

    |"FCIFSCV1TC1VISAPurcResp"                      |"2220210000000039"  | "5811"              | "2555555"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2111"  |  "20583"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220210000000013"  | "5812"              | "2555555"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2111"  |  "20583"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220210000000039"  | "5813"              | "2555555"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2111"  |  "20583"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220210000000013"  | "5814"              | "2555555"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2111"  |  "20583"  |
 #123038   
    |"FCIFSCV1TC1VISAPurcResp"                      |"2229990000000003"  | "5811"              | "2555555"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2112" |  "20583"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2229990000000003"  | "5812"              | "2555555"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2112" |  "20583"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2229990000000003"  | "5813"              | "2555555"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2112" |  "20583"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2229990000000003"  | "5814"              | "2555555"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2112" |  "20583"  |
#123037
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220210000000039"  | "5811"              | "15555555"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2113" |  "83328"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220210000000013"  | "5812"              | "15555555"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2113" |  "83328"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220210000000039"  | "5813"              | "15555555"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2113" |  "83328"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220210000000013"  | "5814"              | "15555555"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2113" |  "83328"  |

 #123038 
   
    |"FCIFSCV1TC1VISAPurcResp"                      |"2229990000000003"  | "5811"              | "15555555"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2114" |  "83328"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2229990000000003"  | "5812"              | "15555555"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2114" |  "83328"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2229990000000003"  | "5813"              | "15555555"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2114" |  "83328"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2229990000000003"  | "5814"              | "15555555"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2114" |  "83328"  |


 #123037
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220210000000039"  | "5811"              | "55555555"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2115" |  "228072"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220210000000013"  | "5812"              | "55555555"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2115" |  "228072"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220210000000039"  | "5813"              | "55555555"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2115" |  "228072"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220210000000013"  | "5814"              | "55555555"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2115" |  "228072"  |

 #123038 
   
    |"FCIFSCV1TC1VISAPurcResp"                      |"2229990000000003"  | "5811"              | "55555555"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2116" |  "228072"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2229990000000003"  | "5812"              | "55555555"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2116" |  "228072"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2229990000000003"  | "5813"              | "55555555"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2116" |  "228072"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2229990000000003"  | "5814"              | "55555555"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2116" |  "228072"  |
    
    
    
 #123037
    #|"FCIFSCV1TC1VISAPurcResp"                      |"2220210000000039"  | "5811"              | "155555555555555"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2121" |  "3500"  |
    #|"FCIFSCV1TC2VISAPurcResp"                      |"2220210000000013"  | "5812"              | "155555555555555"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2121" |  "3500"  |
    #|"FCIFSCV1TC3VISAPurcResp"                      |"2220210000000039"  | "5813"              | "155555555555555"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2121" |  "3500"  |
    #|"FCIFSCV1TC4VISAPurcResp"                      |"2220210000000013"  | "5814"              | "155555555555555"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2121" |  "3500"  |
#
 #123038 
   #
    #|"FCIFSCV1TC1VISAPurcResp"                      |"2229990000000003"  | "5811"              | "155555555555555"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2122" |  "3500"  |
    #|"FCIFSCV1TC2VISAPurcResp"                      |"2229990000000003"  | "5812"              | "155555555555555"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2122" |  "3500"  |
    #|"FCIFSCV1TC3VISAPurcResp"                      |"2229990000000003"  | "5813"              | "155555555555555"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2122" |  "3500"  |
    #|"FCIFSCV1TC4VISAPurcResp"                      |"2229990000000003"  | "5814"              | "155555555555555"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2122" |  "3500"  |
    #
    
    #@FCValid_Scenerio_Fees_and_charge_POS_Transaction_TandE_transaction


  Scenario Outline: Interchange fee calculation for TandE transactions with different Amount PosData and BusinessZoneCode
   
   Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
    Given Initiate TandE transaction with PosDataCode as "510101510300" CardNumber <CardNumber> TranType "00" mcc <MerchantCategoryCode> Networkid as "1" Amount <Amount> <trackdata1> <trackdata2> <PINdata> <Securitydata> 
    When  Acquirer forwards the message to SmartEdge
    And   Message is processed by issuer and repsonse is sent back to the acquirer
    Then  Verify this acquirer's <TestCaseId> received "000" <BusinessZoneCode> <feeRuleID> and <feeAmount>
    
    #Examples: 
    	  	  
    |TestCaseId                                     | CardNumber         |MerchantCategoryCode |  Amount    |trackdata1      | trackdata2   |PINdata    |Securitydata  |BusinessZoneCode |feeRuleID|feeAmount|
  

#123037

    |"FCIFSCV1TC1VISAPurcResp"                      |"2220210000000039"  | "4789"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2117"  |  "553"  |
    
#123038
    |"FCIFSCV1TC1VISAPurcResp"                      |"2229990000000003"  | "4789"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2118" |  "553"  |
    
    
    
    @FCValid_Scenerio_Fees_and_charge_POS_Transaction_purchase_ECOM
     
     Scenario Outline: Interchange fee calculation for purchase Ecom transactions with different Amount PosData and BusinessZoneCode
   
  
    Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
    Given Initiate ECOM transaction "ECOM" CardNumber <CardNumber> TranType "00" mcc <MerchantCategoryCode> Networkid as "1" Amount <Amount> trackDataOne "NoTrackData1" trackDataTwo "NoTrackData2" PINdata "NoPINData" Securitydata "SecData" CVV as "CVV2_Present"  
    When  Acquirer forwards the message to SmartEdge
    And   Message is processed by issuer and repsonse is sent back to the acquirer
    Then  Verify this acquirer's <TestCaseId> received "000" <BusinessZoneCode> <feeRuleID> and <feeAmount>
    
    Examples: 
    
    |TestCaseId                                     | CardNumber         |MerchantCategoryCode |  Amount   |BusinessZoneCode |feeRuleID|feeAmount|
  #123031
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220230000000011"  | "4900"              | "36738833" |   "356001"     |  "2147" |"551082" |
  #123032
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220240000000002"  | "4900"              | "36738833" |   "356001"     |  "2148" |"551082" |
  #123017
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220260000000026"  | "4900"              | "36738833" |   "356001"     |  "2149" |"18390" |
  #123004
     #|"FCIFSCV1TC1VISAPurcResp"                      |"2220880000000021"  | "4900"              | "36738833" |   "356001"     |  "2146" |"18390" |
  #123005
     #|"FCIFSCV1TC1VISAPurcResp"                      |"2220990000000002"  | "4900"              | "36738833" |   "356001"     |  "2150" |"551082" |
    #
    
    
    
      

@FCValid_Scenerio_Fees_and_charge_POS_Transaction_CP_transaction


  Scenario Outline: Interchange fee calculation for TandE transactions with different Amount PosData and BusinessZoneCode
   
   Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
   Given Initiate Purchase transaction with PosDataCode as "510101510300" CardNumber <CardNumber> TranType "00" mcc <MerchantCategoryCode> Networkid as "1" Amount <Amount> trackDataOne "TrackData1" trackDataTwo "TrackData2" PINdata "PINData" Securitydata "SecData"  
    When  Acquirer forwards the message to SmartEdge
    And   Message is processed by issuer and repsonse is sent back to the acquirer
    Then  Verify this acquirer's <TestCaseId> received "000" <BusinessZoneCode> <feeRuleID> and <feeAmount>
    
    Examples: 
    	  	  
    |TestCaseId                                     | CardNumber         |MerchantCategoryCode |  Amount    |trackdata1      | trackdata2   |PINdata    |Securitydata  |BusinessZoneCode |feeRuleID|feeAmount|
  


#123031

    |"FCIFSCV1TC1VISAPurcResp"                      |"2220230000000011"  | "5611"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2130"  |  "451"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220230000000003"  | "5621"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2130"  |  "451"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220230000000029"  | "5631"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2130"  |  "451"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220230000000003"  | "5641"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2130"  |  "451"  |
 #123032   
   |"FCIFSCV1TC1VISAPurcResp"                       |"2220240000000002"  | "5611"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2131" |  "451"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220240000000028"  | "5621"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2131" |  "451"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220240000000010"  | "5631"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2131" |  "451"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220240000000028"  | "5641"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2131" |  "451"  |
#123016

    |"FCIFSCV1TC1VISAPurcResp"                      |"2220250000000019"  | "5611"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2132"  |  "451"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220250000000001"  | "5621"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2132"  |  "451"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220250000000019"  | "5631"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2132"  |  "451"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220250000000019"  | "5641"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2132"  |  "451"  |
 #123017   
   |"FCIFSCV1TC1VISAPurcResp"                       |"2220260000000026"  | "5611"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2133" |  "31"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220260000000018"  | "5621"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2133" |  "31"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220260000000042"  | "5631"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2133" |  "31"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220260000000034"  | "5641"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2133" |  "31"  |
#123004

    |"FCIFSCV1TC1VISAPurcResp"                      |"2220880000000021"  | "5611"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2129"  |  "451"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220880000000021"  | "5621"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2129"  |  "451"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220880000000021"  | "5631"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2129"  |  "451"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220880000000021"  | "5641"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2129"  |  "451"  |
 #123005  
   |"FCIFSCV1TC1VISAPurcResp"                       |"2220990000000002"  | "5611"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2134" |  "31"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220990000000002"  | "5621"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2134" |  "31"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220990000000002"  | "5631"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2134" |  "31"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220990000000002"  | "5641"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2134" |  "31"  |







 #@FCValid_Scenerio_Fees_and_charge_POS_Transaction_standard_transaction


  Scenario Outline: Interchange fee calculation for TandE transactions with different Amount PosData and BusinessZoneCode
   
   Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
    Given Initiate TandE transaction with PosDataCode as "510101510300" CardNumber <CardNumber> TranType "00" mcc <MerchantCategoryCode> Networkid as "1" Amount <Amount> <trackdata1> <trackdata2> <PINdata> <Securitydata> 
    When  Acquirer forwards the message to SmartEdge
    And   Message is processed by issuer and repsonse is sent back to the acquirer
    Then  Verify this acquirer's <TestCaseId> received "000" <BusinessZoneCode> <feeRuleID> and <feeAmount>
    
    #Examples: 
    	  	  
    |TestCaseId                                     | CardNumber         |MerchantCategoryCode |  Amount    |trackdata1      | trackdata2   |PINdata    |Securitydata  |BusinessZoneCode |feeRuleID|feeAmount|
  


#123031

    |"FCIFSCV1TC1VISAPurcResp"                      |"2220230000000011"  | "5611"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2124"  |  "415"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220230000000003"  | "5621"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2124"  |  "415"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220230000000029"  | "5631"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2124"  |  "415"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220230000000003"  | "5641"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2124"  |  "415"  |
 #123032   
   |"FCIFSCV1TC1VISAPurcResp"                       |"2220240000000002"  | "5611"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2125" |  "415"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220240000000028"  | "5621"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2125" |  "415"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220240000000010"  | "5631"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2125" |  "415"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220240000000028"  | "5641"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2125" |  "415"  |
#123016

    |"FCIFSCV1TC1VISAPurcResp"                      |"2220250000000019"  | "5611"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2126"  |  "415"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220250000000001"  | "5621"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2126"  |  "415"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220250000000019"  | "5631"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2126"  |  "415"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220250000000019"  | "5641"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2126"  |  "415"  |
 #123017   
   |"FCIFSCV1TC1VISAPurcResp"                       |"2220260000000026"  | "5611"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2127" |  "31"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220260000000018"  | "5621"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2127" |  "31"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220260000000042"  | "5631"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2127" |  "31"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220260000000034"  | "5641"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2127" |  "31"  |
#123004

    |"FCIFSCV1TC1VISAPurcResp"                      |"2220880000000021"  | "5611"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2123"  |  "415"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220880000000021"  | "5621"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2123"  |  "415"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220880000000021"  | "5631"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2123"  |  "415"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220880000000021"  | "5641"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2123"  |  "415"  |
 #123005  
   |"FCIFSCV1TC1VISAPurcResp"                       |"2220990000000002"  | "5611"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2128" |  "31"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220990000000002"  | "5621"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2128" |  "31"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220990000000002"  | "5631"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2128" |  "31"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220990000000002"  | "5641"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2128" |  "31"  |

#@FCValid_Scenerio_Fees_and_charge_POS_Transaction_CNP_transaction

@FCValid_Scenerio_Fees_and_charge_POS_Transaction_purchase_ECOM
     
     Scenario Outline: Interchange fee calculation for purchase Ecom transactions with different Amount PosData and BusinessZoneCode
   
  
    Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
    Given Initiate ECOM transaction "ECOM" CardNumber <CardNumber> TranType "00" mcc <MerchantCategoryCode> Networkid as "1" Amount <Amount> trackDataOne "NoTrackData1" trackDataTwo "NoTrackData2" PINdata "NoPINData" Securitydata "SecData" CVV as "CVV2_Present"  
    When  Acquirer forwards the message to SmartEdge
    And   Message is processed by issuer and repsonse is sent back to the acquirer
    Then  Verify this acquirer's <TestCaseId> received "000" <BusinessZoneCode> <feeRuleID> and <feeAmount>
    
    Examples: 
    : 
    	  	  
    |TestCaseId                                     | CardNumber         |MerchantCategoryCode |  Amount    |trackdata1      | trackdata2   |PINdata    |Securitydata  |BusinessZoneCode |feeRuleID|feeAmount|
  


#123031

    |"FCIFSCV1TC1VISAPurcResp"                      |"2220230000000011"  | "5611"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2136"  |  "553"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220230000000003"  | "5621"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2136"  |  "553"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220230000000029"  | "5631"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2136"  |  "553"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220230000000003"  | "5641"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2136"  |  "553"  |
 #123032   
   |"FCIFSCV1TC1VISAPurcResp"                       |"2220240000000002"  | "5611"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2137" |  "553"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220240000000028"  | "5621"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2137" |  "553"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220240000000010"  | "5631"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2137" |  "553"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220240000000028"  | "5641"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2137" |  "553"  |
#123016

    |"FCIFSCV1TC1VISAPurcResp"                      |"2220250000000019"  | "5611"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2138"  |  "553"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220250000000001"  | "5621"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2138"  |  "553"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220250000000019"  | "5631"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2138"  |  "553"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220250000000019"  | "5641"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2138"  |  "553"  |
 #123017   
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220260000000026"  | "5611"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2139" |  "31"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220260000000018"  | "5621"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2139" |  "31"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220260000000042"  | "5631"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2139" |  "31"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220260000000034"  | "5641"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2139" |  "31"  |
#123004

    #|"FCIFSCV1TC1VISAPurcResp"                      |"2220880000000021"  | "5611"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2135"  |  "553"  |
    #|"FCIFSCV1TC2VISAPurcResp"                      |"2220880000000021"  | "5621"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2135"  |  "553"  |
    #|"FCIFSCV1TC3VISAPurcResp"                      |"2220880000000021"  | "5631"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2135"  |  "553"  |
    #|"FCIFSCV1TC4VISAPurcResp"                      |"2220880000000021"  | "5641"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2135"  |  "553"  |
 #123005  
   #|"FCIFSCV1TC1VISAPurcResp"                       |"2220990000000002"  | "5611"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2140" |  "31"  |
    #|"FCIFSCV1TC2VISAPurcResp"                      |"2220990000000002"  | "5621"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2140" |  "31"  |
    #|"FCIFSCV1TC3VISAPurcResp"                      |"2220990000000002"  | "5631"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2140" |  "31"  |
    #|"FCIFSCV1TC4VISAPurcResp"                      |"2220990000000002"  | "5641"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2140" |  "31"  |

    @FCValid_Scenerio_Fees_and_charge_POS_Transaction_TandE_prepaid


  Scenario Outline: Interchange fee calculation for TandE transactions with different Amount PosData and BusinessZoneCode
   
   Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
    Given Initiate TandE transaction with PosDataCode as "510101510300" CardNumber <CardNumber> TranType "00" mcc <MerchantCategoryCode> Networkid as "1" Amount <Amount> <trackdata1> <trackdata2> <PINdata> <Securitydata> 
    When  Acquirer forwards the message to SmartEdge
    And   Message is processed by issuer and repsonse is sent back to the acquirer
    Then  Verify this acquirer's <TestCaseId> received "000" <BusinessZoneCode> <feeRuleID> and <feeAmount>
    
    Examples: 
    	  	  
    |TestCaseId                                     | CardNumber         |MerchantCategoryCode |  Amount    |trackdata1      | trackdata2   |PINdata    |Securitydata  |BusinessZoneCode |feeRuleID|feeAmount|
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220140000000004"  | "5811"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1961" |  "251"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220140000000004"  | "5812"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1961" |  "251"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220140000000004"  | "5813"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1961" |  "251"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220140000000004"  | "5814"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1961" |  "251"  |
    |"FCIFSCV1TC5VISAPurcResp"                      |"2220140000000004"  | "3501"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "251"  |
    |"FCIFSCV1TC6VISAPurcResp"                      |"2220140000000004"  | "3552"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "251"  |
    |"FCIFSCV1TC7VISAPurcResp"                      |"2220140000000004"  | "3503"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "251"  |
    |"FCIFSCV1TC9VISAPurcResp"                      |"2220140000000004"  | "3506"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "251"  |
    |"FCIFSCV1TC12VISAPurcResp"                     |"2220140000000004"  | "3561"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "251"  |
    |"FCIFSCV1TC13VISAPurcResp"                     |"2220140000000004"  | "3562"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "251"  |
    |"FCIFSCV1TC14VISAPurcResp"                     |"2220140000000004"  | "3563"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "251"  |
    |"FCIFSCV1TC15VISAPurcResp"                     |"2220140000000004"  | "3564"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "251"  |
    |"FCIFSCV1TC16VISAPurcResp"                     |"2220140000000004"  | "3565"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "251"  |
    |"FCIFSCV1TC17VISAPurcResp"                     |"2220140000000004"  | "3572"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "251"  |
    |"FCIFSCV1TC18VISAPurcResp"                     |"2220140000000004"  | "3573"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "251"  |
    |"FCIFSCV1TC19VISAPurcResp"                     |"2220140000000004"  | "3574"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "251"  |
    |"FCIFSCV1TC20VISAPurcResp"                     |"2220140000000004"  | "3575"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "251"  |
    |"FCIFSCV1TC21VISAPurcResp"                     |"2220140000000004"  | "3622"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "251"  |
    |"FCIFSCV1TC22VISAPurcResp"                     |"2220140000000004"  | "3623"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "251"  |
    |"FCIFSCV1TC23VISAPurcResp"                     |"2220140000000004"  | "3624"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "251"  |
    |"FCIFSCV1TC24VISAPurcResp"                     |"2220140000000004"  | "3625"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "251"  |
    |"FCIFSCV1TC25VISAPurcResp"                     |"2220140000000004"  | "3631"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "251"  |
    |"FCIFSCV1TC26VISAPurcResp"                     |"2220140000000004"  | "3632"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "251"  |
    |"FCIFSCV1TC27VISAPurcResp"                     |"2220140000000004"  | "3633"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "251"  |
    |"FCIFSCV1TC28VISAPurcResp"                     |"2220140000000004"  | "3634"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "251"  |
    |"FCIFSCV1TC29VISAPurcResp"                     |"2220140000000004"  | "3635"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "251"  |
    |"FCIFSCV1TC30VISAPurcResp"                     |"2220140000000004"  | "3636"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "251"  |
    |"FCIFSCV1TC33VISAPurcResp"                     |"2220140000000004"  | "3639"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "251"  |
    |"FCIFSCV1TC35VISAPurcResp"                     |"2220140000000004"  | "3641"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "251"  |
    |"FCIFSCV1TC36VISAPurcResp"                     |"2220140000000004"  | "3642"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "251"  |
    |"FCIFSCV1TC37VISAPurcResp"                     |"2220140000000004"  | "3643"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "251"  |
    |"FCIFSCV1TC38VISAPurcResp"                     |"2220140000000004"  | "3644"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "251"  |
    |"FCIFSCV1TC39VISAPurcResp"                     |"2220140000000004"  | "3645"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "251"  |
    |"FCIFSCV1TC40VISAPurcResp"                     |"2220140000000004"  | "3646"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "251"  |
    |"FCIFSCV1TC41VISAPurcResp"                     |"2220140000000004"  | "3647"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "251"  |
    |"FCIFSCV1TC42VISAPurcResp"                     |"2220140000000004"  | "3648"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "251"  |
    |"FCIFSCV1TC43VISAPurcResp"                     |"2220140000000004"  | "3649"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "251"  |
    |"FCIFSCV1TC44VISAPurcResp"                     |"2220140000000004"  | "3650"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "251"  |
    |"FCIFSCV1TC45VISAPurcResp"                     |"2220140000000004"  | "3651"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "251"  |
    |"FCIFSCV1TC46VISAPurcResp"                     |"2220140000000004"  | "3652"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "251"  |
    |"FCIFSCV1TC47VISAPurcResp"                     |"2220140000000004"  | "3653"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "251"  |
    |"FCIFSCV1TC48VISAPurcResp"                     |"2220140000000004"  | "3654"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "251"  |
    |"FCIFSCV1TC49VISAPurcResp"                     |"2220140000000004"  | "3655"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "251"  |
    |"FCIFSCV1TC50VISAPurcResp"                     |"2220140000000004"  | "3656"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "251"  |
    |"FCIFSCV1TC51VISAPurcResp"                     |"2220140000000004"  | "3657"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "251"  |
    |"FCIFSCV1TC52ISAPurcResp"                      |"2220140000000004"  | "3658"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "251"  |
    |"FCIFSCV1TC53VISAPurcResp"                     |"2220140000000004"  | "3659"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "251"  |
    |"FCIFSCV1TC54VISAPurcResp"                     |"2220140000000004"  | "3660"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "251"  |
    |"FCIFSCV1TC55VISAPurcResp"                     |"2220140000000004"  | "3661"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "251"  |
    |"FCIFSCV1TC56VISAPurcResp"                     |"2220140000000004"  | "3662"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "251"  |
    |"FCIFSCV1TC57VISAPurcResp"                     |"2220140000000004"  | "3663"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "251"  |
    |"FCIFSCV1TC58VISAPurcResp"                     |"2220140000000004"  | "3664"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "251"  |
    |"FCIFSCV1TC59VISAPurcResp"                     |"2220140000000004"  | "3665"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "251"  |
    |"FCIFSCV1TC60VISAPurcResp"                     |"2220140000000012"  | "3666"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC61VISAPurcResp"                     |"2220140000000012"  | "3667"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC62VISAPurcResp"                     |"2220140000000012"  | "3668"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC63VISAPurcResp"                     |"2220140000000012"  | "3669"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC64VISAPurcResp"                     |"2220140000000012"  | "3670"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC65VISAPurcResp"                     |"2220140000000012"  | "3671"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC66VISAPurcResp"                     |"2220140000000012"  | "3672"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC67VISAPurcResp"                     |"2220140000000012"  | "3673"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC68VISAPurcResp"                     |"2220140000000012"  | "3674"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC69VISAPurcResp"                     |"2220140000000012"  | "3675"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC70VISAPurcResp"                     |"2220140000000012"  | "3676"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC71VISAPurcResp"                     |"2220140000000012"  | "3677"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC72VISAPurcResp"                     |"2220140000000012"  | "3678"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC73VISAPurcResp"                     |"2220140000000012"  | "3679"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC74VISAPurcResp"                     |"2220140000000012"  | "3678"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC75VISAPurcResp"                     |"2220140000000012"  | "3679"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC76VISAPurcResp"                     |"2220140000000012"  | "3680"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC77VISAPurcResp"                     |"2220140000000012"  | "3681"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC78VISAPurcResp"                     |"2220140000000012"  | "3683"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC79VISAPurcResp"                     |"2220140000000012"  | "3684"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC80VISAPurcResp"                     |"2220140000000012"  | "3685"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC81VISAPurcResp"                     |"2220140000000012"  | "3688"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC82VISAPurcResp"                     |"2220140000000012"  | "3689"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC83VISAPurcResp"                     |"2220140000000012"  | "3690"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC84VISAPurcResp"                     |"2220140000000012"  | "3691"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC86VISAPurcResp"                     |"2220140000000012"  | "3693"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC87VISAPurcResp"                     |"2220140000000012"  | "3694"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC88VISAPurcResp"                     |"2220140000000012"  | "3695"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC89VISAPurcResp"                     |"2220140000000012"  | "3696"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC90VISAPurcResp"                     |"2220140000000012"  | "3697"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC911VISAPurcResp"                     |"2220140000000012"  | "3698"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC92VISAPurcResp"                     |"2220140000000012"  | "3699"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC93VISAPurcResp"                     |"2220140000000012"  | "3700"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC94VISAPurcResp"                     |"2220140000000012"  | "3701"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC95VISAPurcResp"                     |"2220140000000012"  | "3702"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC96VISAPurcResp"                     |"2220140000000012"  | "3703"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC97VISAPurcResp"                     |"2220140000000012"  | "3704"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC98VISAPurcResp"                     |"2220140000000012"  | "3705"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC99VISAPurcResp"                     |"2220140000000012"  | "3706"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC100VISAPurcResp"                     |"2220140000000012"  | "3707"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC101VISAPurcResp"                     |"2220140000000012"  | "3708"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC102VISAPurcResp"                     |"2220140000000012"  | "3709"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC103VISAPurcResp"                     |"2220140000000012"  | "3710"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC104VISAPurcResp"                     |"2220140000000012"  | "3711"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC105VISAPurcResp"                     |"2220140000000012"  | "3712"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC106VISAPurcResp"                     |"2220140000000012"  | "3713"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC107VISAPurcResp"                     |"2220140000000012"  | "3714"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC108VISAPurcResp"                     |"2220140000000012"  | "3715"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC109VISAPurcResp"                     |"2220140000000012"  | "3716"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC110VISAPurcResp"                     |"2220140000000012"  | "3717"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC112VISAPurcResp"                     |"2220140000000012"  | "3718"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC113VISAPurcResp"                     |"2220140000000012"  | "3719"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC114VISAPurcResp"                     |"2220140000000012"  | "3720"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC115VISAPurcResp"                     |"2220140000000012"  | "3721"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC116VISAPurcResp"                     |"2220140000000012"  | "3722"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC117VISAPurcResp"                     |"2220140000000012"  | "3723"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC118VISAPurcResp"                     |"2220140000000012"  | "3724"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC119VISAPurcResp"                     |"2220140000000012"  | "3725"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC120VISAPurcResp"                     |"2220140000000012"  | "3726"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC121VISAPurcResp"                     |"2220140000000012"  | "3727"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC122VISAPurcResp"                     |"2220140000000012"  | "3728"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC123VISAPurcResp"                     |"2220140000000012"  | "3729"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC124VISAPurcResp"                     |"2220140000000012"  | "3730"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC125VISAPurcResp"                     |"2220140000000012"  | "3731"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC126VISAPurcResp"                     |"2220140000000012"  | "3732"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC127VISAPurcResp"                     |"2220140000000012"  | "3734"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC128VISAPurcResp"                     |"2220140000000012"  | "3735"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC129VISAPurcResp"                     |"2220140000000012"  | "3736"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC130VISAPurcResp"                     |"2220140000000012"  | "3737"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC131VISAPurcResp"                     |"2220140000000012"  | "3738"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC132VISAPurcResp"                     |"2220140000000012"  | "3739"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC133VISAPurcResp"                     |"2220140000000012"  | "3740"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC134VISAPurcResp"                     |"2220140000000012"  | "3741"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC135VISAPurcResp"                     |"2220140000000012"  | "3742"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC136VISAPurcResp"                     |"2220140000000012"  | "3743"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC137VISAPurcResp"                     |"2220140000000012"  | "3744"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC138VISAPurcResp"                     |"2220140000000012"  | "3745"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC139VISAPurcResp"                     |"2220140000000012"  | "3746"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC140VISAPurcResp"                     |"2220140000000012"  | "3747"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC141VISAPurcResp"                     |"2220140000000012"  | "3748"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC142VISAPurcResp"                     |"2220140000000012"  | "3749"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC143VISAPurcResp"                     |"2220140000000012"  | "3750"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC144VISAPurcResp"                     |"2220140000000012"  | "3751"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC145VISAPurcResp"                     |"2220140000000012"  | "3752"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC146VISAPurcResp"                     |"2220140000000012"  | "3753"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC147VISAPurcResp"                     |"2220140000000012"  | "3754"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC148VISAPurcResp"                     |"2220140000000012"  | "3756"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "143"  |
    |"FCIFSCV1TC149VISAPurcResp"                     |"2220140000000020"  | "3757"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "1165"  |
    |"FCIFSCV1TC150VISAPurcResp"                     |"2220140000000020"  | "3758"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "1165"  |
    |"FCIFSCV1TC151VISAPurcResp"                     |"2220140000000020"  | "3759"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "1165"  |
    |"FCIFSCV1TC152VISAPurcResp"                     |"2220140000000020"  | "3760"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "1165"  |
    |"FCIFSCV1TC153VISAPurcResp"                     |"2220140000000020"  | "3761"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "1165"  |
    |"FCIFSCV1TC154VISAPurcResp"                     |"2220140000000020"  | "3762"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "1165"  |
    |"FCIFSCV1TC155VISAPurcResp"                     |"2220140000000020"  | "3763"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "1165"  |
    |"FCIFSCV1TC156VISAPurcResp"                     |"2220140000000020"  | "3764"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "1165"  |
    |"FCIFSCV1TC157VISAPurcResp"                     |"2220140000000020"  | "3765"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "1165"  |
    |"FCIFSCV1TC158VISAPurcResp"                     |"2220140000000020"  | "3766"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "1165"  |
    |"FCIFSCV1TC160VISAPurcResp"                     |"2220140000000020"  | "3767"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "1165"  |
    |"FCIFSCV1TC161VISAPurcResp"                     |"2220140000000020"  | "3768"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "1165"  |
    |"FCIFSCV1TC162VISAPurcResp"                     |"2220140000000020"  | "3769"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "1165"  |
    |"FCIFSCV1TC163VISAPurcResp"                     |"2220140000000020"  | "3770"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "1165"  |
    |"FCIFSCV1TC164VISAPurcResp"                     |"2220140000000020"  | "3771"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "1165"  |
    |"FCIFSCV1TC165VISAPurcResp"                     |"2220140000000020"  | "3772"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "1165"  |
    |"FCIFSCV1TC166VISAPurcResp"                     |"2220140000000020"  | "3773"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "1165"  |
    |"FCIFSCV1TC167VISAPurcResp"                     |"2220140000000020"  | "3774"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "1165"  |
    |"FCIFSCV1TC168VISAPurcResp"                     |"2220140000000020"  | "3775"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "1165"  |
    |"FCIFSCV1TC169VISAPurcResp"                     |"2220140000000020"  | "3776"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "1165"  |
    |"FCIFSCV1TC170VISAPurcResp"                     |"2220140000000020"  | "3777"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "1165"  |
    |"FCIFSCV1TC171VISAPurcResp"                     |"2220140000000020"  | "3778"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "1165"  |
    |"FCIFSCV1TC172VISAPurcResp"                     |"2220140000000020"  | "3779"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "1165"  |
    |"FCIFSCV1TC173VISAPurcResp"                     |"2220140000000020"  | "3780"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "1165"  |
    |"FCIFSCV1TC174VISAPurcResp"                     |"2220140000000020"  | "3781"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "1165"  |
    |"FCIFSCV1TC175VISAPurcResp"                     |"2220140000000020"  | "3782"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "1165"  |
    |"FCIFSCV1TC176VISAPurcResp"                     |"2220140000000020"  | "3783"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "1165"  |
    |"FCIFSCV1TC177VISAPurcResp"                     |"2220140000000020"  | "3784"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "1165"  |
    |"FCIFSCV1TC178VISAPurcResp"                     |"2220140000000020"  | "3785"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "1165"  |
    |"FCIFSCV1TC179VISAPurcResp"                     |"2220140000000020"  | "3786"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "1165"  |
    |"FCIFSCV1TC180VISAPurcResp"                     |"2220140000000020"  | "3568"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "1165"  |
    |"FCIFSCV1TC181VISAPurcResp"                     |"2220140000000020"  | "3570"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "1165"  |
    |"FCIFSCV1TC182VISAPurcResp"                     |"2220140000000020"  | "3577"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "1165"  |
    |"FCIFSCV1TC183VISAPurcResp"                     |"2220140000000020"  | "3615"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "1165"  |
    |"FCIFSCV1TC184VISAPurcResp"                     |"2220140000000020"  | "3620"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "1165"  |
    |"FCIFSCV1TC185VISAPurcResp"                     |"2220140000000020"  | "3628"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "1165"  |
    |"FCIFSCV1TC186VISAPurcResp"                     |"2220140000000020"  | "3629"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "1165"  |
    |"FCIFSCV1TC187VISAPurcResp"                     |"2220140000000020"  | "3579"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "1165"  |
    |"FCIFSCV1TC188VISAPurcResp"                     |"2220140000000020"  | "3595"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "1165"  |
    |"FCIFSCV1TC190VISAPurcResp"                     |"2220140000000020"  | "3599"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "1165"  |
    |"FCIFSCV1TC191VISAPurcResp"                     |"2220140000000020"  | "3603"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "1165"  |
    |"FCIFSCV1TC192VISAPurcResp"                     |"2220140000000020"  | "3612"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "1165"  |
    |"FCIFSCV1TC194VISAPurcResp"                     |"2220140000000020"  | "3359"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "1165"  |
    |"FCIFSCV1TC197VISAPurcResp"                     |"2220140000000020"  | "3395"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "1165"  |
    |"FCIFSCV1TC198VISAPurcResp"                     |"2220140000000020"  | "3400"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "1165"  |
    |"FCIFSCV1TC199VISAPurcResp"                     |"2220140000000020"  | "7512"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "1165"  |
    
    #NOTWORKING
     #|"FCIFSCV1TC8VISAPurcResp"                      |"2220140000000004"  | "3554"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "254"  |
     #|"FCIFSCV1TC11VISAPurcResp"                     |"2220140000000004"  | "3508"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "254"  |
     #|"FCIFSCV1TC193VISAPurcResp"                    |"2220140000000004"  | "7011"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "254"  |
     #|"FCIFSCV1TC31VISAPurcResp"                     |"2220140000000004"  | "3637"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "254"  |
     #|"FCIFSCV1TC32VISAPurcResp"                     |"2220140000000004"  | "3638"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "254"  |
     #|"FCIFSCV1TC195VISAPurcResp"                    |"2220140000000004"  | "3360"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "254"  |
     #|"FCIFSCV1TC196VISAPurcResp"                    |"2220140000000004"  | "3393"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "254"  |
     #|"FCIFSCV1TC189VISAPurcResp"                    |"2220140000000004"  | "3597"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "254"  |
     #|"FCIFSCV1TC85VISAPurcResp"                     |"2220140000000004"  | "3692"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "254"  |
     #|"FCIFSCV1TC34VISAPurcResp"                     |"2220140000000004"  | "3640"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "254"  |
     #|"FCIFSCV1TC10VISAPurcResp"                     |"2220140000000004"  | "3557"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1963" |  "254"  |
    
    
    #123005
    
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220150000000003"  | "5811"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1962" |  "31"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220150000000003"  | "5812"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1962" |  "31"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220150000000003"  | "5813"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1962" |  "31"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220150000000003"  | "5814"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1962" |  "31"  |
    |"FCIFSCV1TC5VISAPurcResp"                      |"2220150000000003"  | "3501"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "31"  |
    |"FCIFSCV1TC6VISAPurcResp"                      |"2220150000000003"  | "3552"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "31"  |
    |"FCIFSCV1TC7VISAPurcResp"                      |"2220150000000003"  | "3503"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "31"  |
    |"FCIFSCV1TC9VISAPurcResp"                      |"2220150000000003"  | "3506"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "31"  |
    |"FCIFSCV1TC12VISAPurcResp"                     |"2220150000000003"  | "3561"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "31"  |
    |"FCIFSCV1TC13VISAPurcResp"                     |"2220150000000003"  | "3562"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "31"  |
    |"FCIFSCV1TC14VISAPurcResp"                     |"2220150000000003"  | "3563"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "31"  |
    |"FCIFSCV1TC15VISAPurcResp"                     |"2220150000000003"  | "3564"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "31"  |
    |"FCIFSCV1TC16VISAPurcResp"                     |"2220150000000003"  | "3565"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "31"  |
    |"FCIFSCV1TC17VISAPurcResp"                     |"2220150000000003"  | "3572"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "31"  |
    |"FCIFSCV1TC18VISAPurcResp"                     |"2220150000000003"  | "3573"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "31"  |
    |"FCIFSCV1TC19VISAPurcResp"                     |"2220150000000003"  | "3574"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "31"  |
    |"FCIFSCV1TC20VISAPurcResp"                     |"2220150000000003"  | "3575"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "31"  |
    |"FCIFSCV1TC21VISAPurcResp"                     |"2220150000000003"  | "3622"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "31"  |
    |"FCIFSCV1TC22VISAPurcResp"                     |"2220150000000003"  | "3623"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "31"  |
    |"FCIFSCV1TC23VISAPurcResp"                     |"2220150000000003"  | "3624"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "31"  |
    |"FCIFSCV1TC24VISAPurcResp"                     |"2220150000000003"  | "3625"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "31"  |
    |"FCIFSCV1TC25VISAPurcResp"                     |"2220150000000003"  | "3631"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "31"  |
    |"FCIFSCV1TC27VISAPurcResp"                     |"2220150000000003"  | "3633"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "31"  |
    |"FCIFSCV1TC29VISAPurcResp"                     |"2220150000000003"  | "3635"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "31"  |
    |"FCIFSCV1TC35VISAPurcResp"                     |"2220150000000003"  | "3641"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "31"  |  
    |"FCIFSCV1TC36VISAPurcResp"                     |"2220150000000003"  | "3642"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "31"  |
    |"FCIFSCV1TC37VISAPurcResp"                     |"2220150000000003"  | "3643"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "31"  |
    |"FCIFSCV1TC38VISAPurcResp"                     |"2220150000000003"  | "3644"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "31"  |
    |"FCIFSCV1TC39VISAPurcResp"                     |"2220150000000003"  | "3645"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "31"  |
    |"FCIFSCV1TC40VISAPurcResp"                     |"2220150000000003"  | "3646"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "31"  |
   #|"FCIFSCV1TC41VISAPurcResp"                     |"2220150000000003"  | "3647"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "31"  |
    |"FCIFSCV1TC42VISAPurcResp"                     |"2220150000000003"  | "3648"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "31"  |
    |"FCIFSCV1TC43VISAPurcResp"                     |"2220150000000003"  | "3649"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "31"  |
    |"FCIFSCV1TC44VISAPurcResp"                     |"2220150000000003"  | "3650"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "31"  |
    |"FCIFSCV1TC45VISAPurcResp"                     |"2220150000000003"  | "3651"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "31"  |
    |"FCIFSCV1TC46VISAPurcResp"                     |"2220150000000003"  | "3652"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "31"  |
    |"FCIFSCV1TC47VISAPurcResp"                     |"2220150000000003"  | "3653"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "31"  |
    |"FCIFSCV1TC48VISAPurcResp"                     |"2220150000000003"  | "3654"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "31"  |
    |"FCIFSCV1TC49VISAPurcResp"                     |"2220150000000003"  | "3655"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "31"  |
    |"FCIFSCV1TC50VISAPurcResp"                     |"2220150000000003"  | "3656"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "31"  |
    |"FCIFSCV1TC51VISAPurcResp"                     |"2220150000000003"  | "3657"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "31"  |
    |"FCIFSCV1TC52ISAPurcResp"                      |"2220150000000003"  | "3658"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "31"  |
    |"FCIFSCV1TC53VISAPurcResp"                     |"2220150000000003"  | "3659"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "31"  |
    |"FCIFSCV1TC54VISAPurcResp"                     |"2220150000000003"  | "3660"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "31"  |
    |"FCIFSCV1TC55VISAPurcResp"                     |"2220150000000003"  | "3661"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "31"  |
    |"FCIFSCV1TC56VISAPurcResp"                     |"2220150000000003"  | "3662"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "31"  |
    |"FCIFSCV1TC57VISAPurcResp"                     |"2220150000000003"  | "3663"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "31"  |
    |"FCIFSCV1TC58VISAPurcResp"                     |"2220150000000003"  | "3664"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "31"  |
    |"FCIFSCV1TC59VISAPurcResp"                     |"2220150000000003"  | "3665"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "31"  |
    |"FCIFSCV1TC60VISAPurcResp"                     |"2220150000000011"  | "3666"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC61VISAPurcResp"                     |"2220150000000011"  | "3667"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC62VISAPurcResp"                     |"2220150000000011"  | "3668"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC63VISAPurcResp"                     |"2220150000000011"  | "3669"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC64VISAPurcResp"                     |"2220150000000011"  | "3670"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC65VISAPurcResp"                     |"2220150000000011"  | "3671"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC66VISAPurcResp"                     |"2220150000000011"  | "3672"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC67VISAPurcResp"                     |"2220150000000011"  | "3673"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC68VISAPurcResp"                     |"2220150000000011"  | "3674"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC69VISAPurcResp"                     |"2220150000000011"  | "3675"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC70VISAPurcResp"                     |"2220150000000011"  | "3676"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC71VISAPurcResp"                     |"2220150000000011"  | "3677"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC72VISAPurcResp"                     |"2220150000000011"  | "3678"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC73VISAPurcResp"                     |"2220150000000011"  | "3679"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC74VISAPurcResp"                     |"2220150000000011"  | "3678"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC75VISAPurcResp"                     |"2220150000000011"  | "3679"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC76VISAPurcResp"                     |"2220150000000011"  | "3680"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC77VISAPurcResp"                     |"2220150000000011"  | "3681"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC78VISAPurcResp"                     |"2220150000000011"  | "3683"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC79VISAPurcResp"                     |"2220150000000011"  | "3684"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC80VISAPurcResp"                     |"2220150000000011"  | "3685"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC81VISAPurcResp"                     |"2220150000000011"  | "3688"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC82VISAPurcResp"                     |"2220150000000011"  | "3689"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC83VISAPurcResp"                     |"2220150000000011"  | "3690"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC84VISAPurcResp"                     |"2220150000000011"  | "3691"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC86VISAPurcResp"                     |"2220150000000011"  | "3693"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC87VISAPurcResp"                     |"2220150000000011"  | "3694"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC88VISAPurcResp"                     |"2220150000000011"  | "3695"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC89VISAPurcResp"                     |"2220150000000011"  | "3696"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC90VISAPurcResp"                     |"2220150000000011"  | "3697"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC911VISAPurcResp"                     |"2220150000000011"  | "3698"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC92VISAPurcResp"                     |"2220150000000011"  | "3699"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC93VISAPurcResp"                     |"2220150000000011"  | "3700"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC94VISAPurcResp"                     |"2220150000000011"  | "3701"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC95VISAPurcResp"                     |"2220150000000011"  | "3702"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC96VISAPurcResp"                     |"2220150000000011"  | "3703"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC97VISAPurcResp"                     |"2220150000000011"  | "3704"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC98VISAPurcResp"                     |"2220150000000011"  | "3705"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC99VISAPurcResp"                     |"2220150000000011"  | "3706"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC100VISAPurcResp"                     |"2220150000000011"  | "3707"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC101VISAPurcResp"                     |"2220150000000011"  | "3708"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC102VISAPurcResp"                     |"2220150000000011"  | "3709"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC103VISAPurcResp"                     |"2220150000000011"  | "3710"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC104VISAPurcResp"                     |"2220150000000011"  | "3711"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC105VISAPurcResp"                     |"2220150000000011"  | "3712"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC106VISAPurcResp"                     |"2220150000000011"  | "3713"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC107VISAPurcResp"                     |"2220150000000011"  | "3714"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC108VISAPurcResp"                     |"2220150000000011"  | "3715"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC109VISAPurcResp"                     |"2220150000000011"  | "3716"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC110VISAPurcResp"                     |"2220150000000011"  | "3717"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC112VISAPurcResp"                     |"2220150000000011"  | "3718"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC113VISAPurcResp"                     |"2220150000000011"  | "3719"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC114VISAPurcResp"                     |"2220150000000011"  | "3720"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC115VISAPurcResp"                     |"2220150000000011"  | "3721"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC116VISAPurcResp"                     |"2220150000000011"  | "3722"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC117VISAPurcResp"                     |"2220150000000011"  | "3723"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC118VISAPurcResp"                     |"2220150000000011"  | "3724"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC119VISAPurcResp"                     |"2220150000000011"  | "3725"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC120VISAPurcResp"                     |"2220150000000011"  | "3726"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC121VISAPurcResp"                     |"2220150000000011"  | "3727"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC122VISAPurcResp"                     |"2220150000000011"  | "3728"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC123VISAPurcResp"                     |"2220150000000011"  | "3729"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC124VISAPurcResp"                     |"2220150000000011"  | "3730"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC125VISAPurcResp"                     |"2220150000000011"  | "3731"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC126VISAPurcResp"                     |"2220150000000011"  | "3732"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC127VISAPurcResp"                     |"2220150000000011"  | "3734"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC128VISAPurcResp"                     |"2220150000000011"  | "3735"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC129VISAPurcResp"                     |"2220150000000011"  | "3736"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC130VISAPurcResp"                     |"2220150000000011"  | "3737"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC131VISAPurcResp"                     |"2220150000000011"  | "3738"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC132VISAPurcResp"                     |"2220150000000011"  | "3739"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC133VISAPurcResp"                     |"2220150000000011"  | "3740"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC134VISAPurcResp"                     |"2220150000000011"  | "3741"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC135VISAPurcResp"                     |"2220150000000011"  | "3742"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC136VISAPurcResp"                     |"2220150000000011"  | "3743"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC137VISAPurcResp"                     |"2220150000000011"  | "3744"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC138VISAPurcResp"                     |"2220150000000011"  | "3745"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC139VISAPurcResp"                     |"2220150000000011"  | "3746"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC140VISAPurcResp"                     |"2220150000000011"  | "3747"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC141VISAPurcResp"                     |"2220150000000011"  | "3748"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC27VISAPurcResp"                     |"2220150000000011"  | "3749"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC143VISAPurcResp"                     |"2220150000000011"  | "3750"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC144VISAPurcResp"                     |"2220150000000011"  | "3751"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC145VISAPurcResp"                     |"2220150000000011"  | "3752"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC146VISAPurcResp"                     |"2220150000000011"  | "3753"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC147VISAPurcResp"                     |"2220150000000011"  | "3754"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC148VISAPurcResp"                     |"2220150000000011"  | "3756"              | "11111"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "27"  |
    |"FCIFSCV1TC149VISAPurcResp"                     |"2220150000000029"  | "3757"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "71"  |
    |"FCIFSCV1TC150VISAPurcResp"                     |"2220150000000029"  | "3758"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "71"  |
    |"FCIFSCV1TC151VISAPurcResp"                     |"2220150000000029"  | "3759"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "71"  |
    |"FCIFSCV1TC152VISAPurcResp"                     |"2220150000000029"  | "3760"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "71"  |
    |"FCIFSCV1TC153VISAPurcResp"                     |"2220150000000029"  | "3761"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "71"  |
    |"FCIFSCV1TC154VISAPurcResp"                     |"2220150000000029"  | "3762"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "71"  |
    |"FCIFSCV1TC155VISAPurcResp"                     |"2220150000000029"  | "3763"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "71"  |
    |"FCIFSCV1TC156VISAPurcResp"                     |"2220150000000029"  | "3764"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "71"  |
    |"FCIFSCV1TC157VISAPurcResp"                     |"2220150000000029"  | "3765"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "71"  |
    |"FCIFSCV1TC158VISAPurcResp"                     |"2220150000000029"  | "3766"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "71"  |
    |"FCIFSCV1TC160VISAPurcResp"                     |"2220150000000029"  | "3767"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "71"  |
    |"FCIFSCV1TC161VISAPurcResp"                     |"2220150000000029"  | "3768"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "71"  |
    |"FCIFSCV1TC162VISAPurcResp"                     |"2220150000000029"  | "3769"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "71"  |
    |"FCIFSCV1TC163VISAPurcResp"                     |"2220150000000029"  | "3770"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "71"  |
    |"FCIFSCV1TC164VISAPurcResp"                     |"2220150000000029"  | "3771"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "71"  |
    |"FCIFSCV1TC165VISAPurcResp"                     |"2220150000000029"  | "3772"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "71"  |
    |"FCIFSCV1TC166VISAPurcResp"                     |"2220150000000029"  | "3773"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "71"  |
    |"FCIFSCV1TC167VISAPurcResp"                     |"2220150000000029"  | "3774"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "71"  |
    |"FCIFSCV1TC168VISAPurcResp"                     |"2220150000000029"  | "3775"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "71"  |
    |"FCIFSCV1TC169VISAPurcResp"                     |"2220150000000029"  | "3776"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "71"  |
    |"FCIFSCV1TC170VISAPurcResp"                     |"2220150000000029"  | "3777"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "71"  |
    |"FCIFSCV1TC171VISAPurcResp"                     |"2220150000000029"  | "3778"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "71"  |
    |"FCIFSCV1TC172VISAPurcResp"                     |"2220150000000029"  | "3779"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "71"  |
    |"FCIFSCV1TC173VISAPurcResp"                     |"2220150000000029"  | "3780"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "71"  |
    |"FCIFSCV1TC174VISAPurcResp"                     |"2220150000000029"  | "3781"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "71"  |
    |"FCIFSCV1TC175VISAPurcResp"                     |"2220150000000029"  | "3782"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "71"  |
    |"FCIFSCV1TC176VISAPurcResp"                     |"2220150000000029"  | "3783"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "71"  |
    |"FCIFSCV1TC177VISAPurcResp"                     |"2220150000000029"  | "3784"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "71"  |
    |"FCIFSCV1TC178VISAPurcResp"                     |"2220150000000029"  | "3785"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "71"  |
    |"FCIFSCV1TC179VISAPurcResp"                     |"2220150000000029"  | "3786"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "71"  |
    |"FCIFSCV1TC180VISAPurcResp"                     |"2220150000000029"  | "3568"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "71"  |
    |"FCIFSCV1TC181VISAPurcResp"                     |"2220150000000029"  | "3570"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "71"  |
    |"FCIFSCV1TC182VISAPurcResp"                     |"2220150000000029"  | "3577"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "71"  |
    |"FCIFSCV1TC183VISAPurcResp"                     |"2220150000000029"  | "3615"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "71"  |
    |"FCIFSCV1TC184VISAPurcResp"                     |"2220150000000029"  | "3620"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "71"  |
    |"FCIFSCV1TC185VISAPurcResp"                     |"2220150000000029"  | "3628"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "71"  |
    |"FCIFSCV1TC186VISAPurcResp"                     |"2220150000000029"  | "3629"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "71"  |
    |"FCIFSCV1TC187VISAPurcResp"                     |"2220150000000029"  | "3579"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "71"  |
    |"FCIFSCV1TC188VISAPurcResp"                     |"2220150000000029"  | "3595"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "71"  |
    |"FCIFSCV1TC190VISAPurcResp"                     |"2220150000000029"  | "3599"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "71"  |
    |"FCIFSCV1TC191VISAPurcResp"                     |"2220150000000029"  | "3603"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "71"  |
    |"FCIFSCV1TC192VISAPurcResp"                     |"2220150000000029"  | "3612"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "71"  |
    |"FCIFSCV1TC194VISAPurcResp"                     |"2220150000000029"  | "3359"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "71"  |
    |"FCIFSCV1TC197VISAPurcResp"                     |"2220150000000029"  | "3395"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "71"  |
    |"FCIFSCV1TC198VISAPurcResp"                     |"2220150000000029"  | "3400"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "71"  |
    |"FCIFSCV1TC199VISAPurcResp"                     |"2220150000000029"  | "7512"              | "99999"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "71"  |
    
    #NOTWORKING
    
     #|"FCIFSCV1TC28VISAPurcResp"                     |"2220150000000003"  | "3634"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "31"  |
     #|"FCIFSCV1TC26VISAPurcResp"                     |"2220150000000003"  | "3632"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "31"  |
     #|"FCIFSCV1TC30VISAPurcResp"                     |"2220150000000003"  | "3636"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "31"  |
     #|"FCIFSCV1TC33VISAPurcResp"                     |"2220150000000003"  | "3639"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "1964" |  "31"  |
    
    @FCValid_Scenerio_Fees_and_charge_POS_Transaction_TandE_transaction_credit


  Scenario Outline: Interchange fee calculation for TandE transactions with different Amount PosData and BusinessZoneCode
   
   Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
    Given Initiate TandE transaction with PosDataCode as "510101510300" CardNumber <CardNumber> TranType "00" mcc <MerchantCategoryCode> Networkid as "1" Amount <Amount> <trackdata1> <trackdata2> <PINdata> <Securitydata> 
    When  Acquirer forwards the message to SmartEdge
    And   Message is processed by issuer and repsonse is sent back to the acquirer
    Then  Verify this acquirer's <TestCaseId> received "000" <BusinessZoneCode> <feeRuleID> and <feeAmount>
    
    Examples: 
    	  	  
    |TestCaseId                                     | CardNumber         |MerchantCategoryCode |  Amount    |trackdata1      | trackdata2   |PINdata    |Securitydata  |BusinessZoneCode |feeRuleID|feeAmount|
  

#123008

    |"FCIFSCV1TC1VISAPurcResp"                      |"2220160000000002"  | "5811"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2095"  |  "502"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220160000000002"  | "5812"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2095"  |  "502"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220160000000002"  | "5813"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2095"  |  "502"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220160000000002"  | "5814"              | "20502"    |  "TrackData1"   |"TrackData2"  |"PINData"   |"SecData"     |   "356001"      |  "2095"  |  "502"  |
    #|"FCIFSCV1TC33VISAPurcResp"                     |"2220160000000002"  | "4111"              | "20502"    |  "NoTrackData1" |"NoTrackData2"|"NoPINData" |"SecData"     |   "356001"       |  "2090" |  "502"   |
    #|"FCIFSCV1TC33VISAPurcResp"                     |"2220160000000002"  | "4112"              | "20502"    |  "NoTrackData1" |"NoTrackData2"|"NoPINData" |"SecData"     |   "356001"       |  "2090" |  "502"   |
   #
#123033
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220170000000001"  | "5811"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2096" |  "482"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220170000000001"  | "5812"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2096" |  "482"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220170000000001"  | "5813"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2096" |  "482"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220170000000001"  | "5814"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2096" |  "482"  |
#
#123034
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220180000000018"  | "5811"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2097" |  "502"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220180000000018"  | "5812"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2097" |  "502"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220180000000018"  | "5813"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2097" |  "502"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220180000000018"  | "5814"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2097" |  "502"  |
#123035
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220190000000017"  | "5811"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2098" |  "410"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220190000000017"  | "5812"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2098" |  "410"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220190000000017"  | "5813"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2098" |  "410"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220190000000017"  | "5814"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2098" |  "410"  |
#123036
       
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220200000000006"  | "5811"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2099" |  "326"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220200000000006"  | "5812"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2099" |  "326"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220200000000006"  | "5813"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2099" |  "326"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220200000000006"  | "5814"              | "20502"    |  "TrackData1"  |"TrackData2"  |"PINData"  |"SecData"     |   "356001"     |  "2099" |  "326"  |
    
    
    
    
    
  
    
    