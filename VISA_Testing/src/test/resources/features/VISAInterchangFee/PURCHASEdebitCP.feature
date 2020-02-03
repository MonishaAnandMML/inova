@VISAFCIF

Feature: Interchage VISA Fee calculation


#TUPPLE_PURCHASE
    
    @FCValid_Scenerio_Fees_and_charge_POS_Transaction_purchase 
     
     Scenario Outline: Interchange fee calculation for Purchase transactions with different Amount PosData and BusinessZoneCode
     
    Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
    Given Initiate Purchase transaction with PosDataCode as "510101510300" CardNumber <CardNumber> cvv <cvv> TranType "00" mcc <MerchantCategoryCode> Networkid as "1" Amount <Amount> trackDataOne "TrackData1" trackDataTwo "TrackData2" PINdata "PINData" Securitydata "SecData" CurrencyCodeTransaction "356"  
    When  Acquirer forwards the message to SmartEdge
    And   Message is processed by issuer and repsonse is sent back to the acquirer
    Then  Verify this acquirer's <TestCaseId> received "000" <BusinessZoneCode> <feeRuleID> and <feeAmount>
    
    Examples: 
    
    |TestCaseId                                     | CardNumber         |cvv       |MerchantCategoryCode |  Amount    |BusinessZoneCode |feeRuleID|feeAmount|
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220880000000021"  |"0442"     | "5411"              | "20502"   |   "356001"     |  "1901" |  "30"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220880000000013"  |"0885"     | "9751"              | "99999"   |   "356001"     |  "1901" |  "30"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220880000000013"  |"0885"     | "5411"              | "10000"   |   "356001"     |  "1901" |  "30"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220880000000021"  |"0442"     | "5541"              | "25552"   |   "356001"     |  "1907" |  "95"  |
    |"FCIFSCV1TC5VISAPurcResp"                      |"2220880000000021"  |"0442"     | "5200"              | "20502"   |   "356001"     |  "1903" |  "179"  |
    |"FCIFSCV1TC6VISAPurcResp"                      |"2220880000000021"  |"0442"     | "5211"              | "10000"   |   "356001"     |  "1903" |  "95"  |
    |"FCIFSCV1TC7VISAPurcResp"                      |"2220880000000021"  |"0442"     | "5231"              | "12345"   |   "356001"     |  "1903" |  "114"  |
    |"FCIFSCV1TC8VISAPurcResp"                      |"2220880000000005"  |"0121"     | "5251"              | "27733"   |   "356001"     |  "1903" |  "237"  |
    |"FCIFSCV1TC9VISAPurcResp"                      |"2220880000000005"  |"0121"     | "5261"              | "26373"   |   "356001"     |  "1903" |  "226"  |
    |"FCIFSCV1TC10VISAPurcResp"                     |"2220880000000005"  |"0121"     | "5271"              | "76373"   |   "356001"     |  "1903" |  "626"  |
    |"FCIFSCV1TC11VISAPurcResp"                     |"2220880000000013"  |"0885"     | "5300"              | "87783"   |   "356001"     |  "1903" |  "717"  |
    |"FCIFSCV1TC12VISAPurcResp"                     |"2220880000000013"  |"0885"     | "5309"              | "44444"   |   "356001"     |  "1903" |  "371"  |
    |"FCIFSCV1TC13VISAPurcResp"                     |"2220880000000013"  |"0885"     | "5310"              | "84899"   |   "356001"     |  "1903" |  "694"  |
    |"FCIFSCV1TC14VISAPurcResp"                     |"2220880000000021"  |"0442"     | "5422"              | "88999"   |   "356001"     |  "1903" |  "727"  |
    |"FCIFSCV1TC15VISAPurcResp"                     |"2220880000000021"  |"0442"     | "5331"              | "88899"   |   "356001"     |  "1903" |  "726"  |
    |"FCIFSCV1TC16VISAPurcResp"                     |"2220880000000005"  |"0121"     | "5311"              | "88886"   |   "356001"     |  "1903" |  "726"  |
    |"FCIFSCV1TC17VISAPurcResp"                     |"2220880000000005"  |"0121"     | "5399"              | "88897"   |   "356001"     |  "1903" |  "726"  |
    |"FCIFSCV1TC18VISAPurcResp"                     |"2220880000000005"  |"0121"     | "5441"              | "88908"   |   "356001"     |  "1903" |  "726"  |
    |"FCIFSCV1TC19VISAPurcResp"                     |"2220880000000013"  |"0885"     | "5451"              | "88997"   |   "356001"     |  "1903" |  "727"  |
    |"FCIFSCV1TC20VISAPurcResp"                     |"2220880000000013"  |"0885"     | "5462"              | "85578"   |   "356001"     |  "1903" |  "700"  |
    #|"FCIFSCV1TC21VISAPurcResp"                     |"2220880000000013"  |"0885"     | "5499"              | "66777"   |   "356001"     |  "1903" |  "549"  |
    |"FCIFSCV1TC22VISAPurcResp"                     |"2220880000000013"  |"0885"     | "5999"              | "89998"   |   "356001"     |  "1903" |  "735"  |
  
     
      #card product 123005
    
    |"FCIFSCV1TC24VISAPurcResp"                     |"2220990000000002"  |"0386"     | "5411"              | "20502"    |   "356001"     |  "1902" |  "31"  |
    |"FCIFSCV1TC25VISAPurcResp"                     |"2220990000000028"  |"0427"     | "9751"              | "99999"    |   "356001"     |  "1902" |  "71"  |
    |"FCIFSCV1TC26VISAPurcResp"                     |"2220990000000028"  |"0427"     | "9751"              | "22222"    |   "356001"     |  "1902" |  "32"  |
    |"FCIFSCV1TC27VISAPurcResp"                     |"2220990000000028"  |"0427"     | "5541"              | "50000"    |   "356001"     |  "1908" |  "46"  |
    |"FCIFSCV1TC28VISAPurcResp"                     |"2220990000000002"  |"0386"     | "5200"              | "20502"    |   "356001"     |  "1904" |  "31"  |
    |"FCIFSCV1TC29VISAPurcResp"                     |"2220990000000002"  |"0386"     | "5211"              | "44444"    |   "356001"     |  "1904" |  "43"  |
    |"FCIFSCV1TC30VISAPurcResp"                     |"2220990000000002"  |"0386"     | "5231"              | "35657"    |   "356001"     |  "1904" |  "39"  |
    |"FCIFSCV1TC31VISAPurcResp"                     |"2220990000000010"  |"0338"     | "5251"              | "99999999" |   "356001"     |  "1904" |  "50021"|
    |"FCIFSCV1TC32VISAPurcResp"                     |"2220990000000010"  |"0338"     | "5261"              | "66828"    |   "356001"     |  "1904" |  "54"  |
    |"FCIFSCV1TC33VISAPurcResp"                     |"2220990000000010"  |"0338"     | "5271"              | "57282"    |   "356001"     |  "1904" |  "50"  |
    |"FCIFSCV1TC34VISAPurcResp"                     |"2220990000000028"  |"0427"     | "5300"              | "22770"    |   "356001"     |  "1904" |  "32"  |
    |"FCIFSCV1TC35VISAPurcResp"                     |"2220990000000028"  |"0427"     | "5309"              | "74839"    |   "356001"     |  "1904" |  "58"  |
    |"FCIFSCV1TC36VISAPurcResp"                     |"2220990000000028"  |"0427"     | "5310"              | "74820"    |   "356001"     |  "1904" |  "58"  |
    |"FCIFSCV1TC37VISAPurcResp"                     |"2220990000000010"  |"0338"     | "5422"              | "739822"   |   "356001"     |  "1904" |  "391" |
    |"FCIFSCV1TC38VISAPurcResp"                     |"2220990000000010"  |"0338"     | "5331"              | "10000"    |   "356001"     |  "1904" |  "26"  |
    |"FCIFSCV1TC39VISAPurcResp"                     |"2220990000000002"  |"0386"     | "5311"              | "49478"    |   "356001"     |  "1904" |  "46"  |
    |"FCIFSCV1TC40VISAPurcResp"                     |"2220990000000002"  |"0386"     | "5399"              | "89947438" |   "356001"     |  "1904" |  "44995"|
    |"FCIFSCV1TC41VISAPurcResp"                     |"2220990000000002"  |"0386"     | "5441"              | "10000"    |   "356001"     |  "1904" |  "26"  |
    |"FCIFSCV1TC42VISAPurcResp"                     |"2220990000000028"  |"0427"     | "5451"              | "7489390"  |   "356001"     |  "1904" |  "3766"|
    |"FCIFSCV1TC43VISAPurcResp"                     |"2220990000000028"  |"0427"     | "5462"              | "77775"    |   "356001"     |  "1904" |  "60"  |
    #|"FCIFSCV1TC44VISAPurcResp"                     |"2220990000000028"  |"0427"     | "5499"              | "845566"   |   "356001"     |  "1904" |  "444" |
    |"FCIFSCV1TC45VISAPurcResp"                     |"2220990000000028"  |"0427"     | "5999"              | "333333"   |   "356001"     |  "1904" |  "188" |
    