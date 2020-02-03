@VISAFCIF

Feature: Interchage VISA Fee calculation


#TUPPLE_PURCHASE
    
    @FCValid_Scenerio_Fees_and_charge_POS_Transaction_purchase_prepaid
     
     Scenario Outline: Interchange fee calculation for Purchase transactions with different Amount PosData and BusinessZoneCode
     
    Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
    Given Initiate Purchase transaction with PosDataCode as "510101510300" CardNumber <CardNumber> cvv <cvv> TranType "00" mcc <MerchantCategoryCode> Networkid as "1" Amount <Amount> trackDataOne "TrackData1" trackDataTwo "TrackData2" PINdata "PINData" Securitydata "SecData" CurrencyCodeTransaction "356"  
    When  Acquirer forwards the message to SmartEdge
    And   Message is processed by issuer and repsonse is sent back to the acquirer
    Then  Verify this acquirer's <TestCaseId> received "000" <BusinessZoneCode> <feeRuleID> and <feeAmount>
    
    Examples: 
    
    |TestCaseId                                     | CardNumber         |cvv          |MerchantCategoryCode |  Amount    |BusinessZoneCode |feeRuleID|feeAmount|
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220140000000004"  |"0320"         | "5411"              | "20502"   |   "356001"     |  "1950" |  "35"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220140000000004"  |"0320"         | "9751"              | "99999"   |   "356001"     |  "1950" |  "35"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220140000000004"  |"0320"         | "5411"              | "10000"   |   "356001"     |  "1950" |  "35"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220140000000012"  |"0496"         | "5541"              | "25552"   |   "356001"     |  "1957" |  "95"  |
    |"FCIFSCV1TC6VISAPurcResp"                      |"2220140000000012"  |"0496"         | "5211"              | "25552"   |   "356001"     |  "1953" |  "309"  |
    |"FCIFSCV1TC7VISAPurcResp"                      |"2220140000000020"  |"0206"         | "5231"              | "12345"   |   "356001"     |  "1953" |  "157"  |
    |"FCIFSCV1TC8VISAPurcResp"                      |"2220140000000020"  |"0206"         | "5251"              | "27733"   |   "356001"     |  "1953" |  "334"  |
    |"FCIFSCV1TC9VISAPurcResp"                      |"2220140000000020"  |"0206"         | "5261"              | "26373"   |   "356001"     |  "1953" |  "318"  |
    |"FCIFSCV1TC10VISAPurcResp"                     |"2220140000000038"  |"0554"         | "5271"              | "76373"   |   "356001"     |  "1953" |  "893"  |
    |"FCIFSCV1TC11VISAPurcResp"                     |"2220140000000038"  |"0554"         | "5300"              | "87783"   |   "356001"     |  "1953" |  "1025"  |
    |"FCIFSCV1TC12VISAPurcResp"                     |"2220140000000038"  |"0554"         | "5309"              | "44444"   |   "356001"     |  "1953" |  "526"  |
    |"FCIFSCV1TC13VISAPurcResp"                     |"2220140000000020"  |"0206"         | "5310"              | "84899"   |   "356001"     |  "1953" |  "991"  |
    |"FCIFSCV1TC14VISAPurcResp"                     |"2220140000000020"  |"0206"         |"5422"              | "88999"   |   "356001"     |  "1953" |  "1038"  |
    |"FCIFSCV1TC15VISAPurcResp"                     |"2220140000000020"  |"0206"         | "5331"              | "88899"   |   "356001"     |  "1953" |  "1037"  |
    |"FCIFSCV1TC16VISAPurcResp"                     |"2220140000000020"  |"0206"         | "5311"              | "88886"   |   "356001"     |  "1953" |  "1037"  |
    |"FCIFSCV1TC17VISAPurcResp"                     |"2220140000000038"  |"0554"         | "5399"              | "88897"   |   "356001"     |  "1953" |  "1037"  |
    |"FCIFSCV1TC18VISAPurcResp"                     |"2220140000000038"  |"0554"         | "5441"              | "88908"   |   "356001"     |  "1953" |  "1037"  |
    |"FCIFSCV1TC19VISAPurcResp"                     |"2220140000000038"  |"0554"         | "5451"              | "88997"   |   "356001"     |  "1953" |  "1038"  |
    |"FCIFSCV1TC20VISAPurcResp"                     |"2220140000000012"  |"0496"         | "5462"              | "85578"   |   "356001"     |  "1953" |  "999"  |
    #|"FCIFSCV1TC21VISAPurcResp"                     |"2220140000000012"  |"0496"         | "5499"              | "66777"   |   "356001"     |  "1953" |  "783"  |
    |"FCIFSCV1TC22VISAPurcResp"                     |"2220140000000004"  |"0320"         | "5999"              | "89998"   |   "356001"     |  "1953" |  "1050"  |
  #
     
      #card product 123005
    
    |"FCIFSCV1TC24VISAPurcResp"                     |"2220150000000003"  |"0705"         | "5411"              | "20502"    |   "356001"     |  "1951" |  "31"  |
    |"FCIFSCV1TC25VISAPurcResp"                     |"2220150000000003"  |"0705"         | "9751"              | "99999"    |   "356001"     |  "1951" |  "71"  |
    |"FCIFSCV1TC26VISAPurcResp"                     |"2220150000000003"  |"0705"         | "9751"              | "22222"    |   "356001"     |  "1951" |  "32"  |
    |"FCIFSCV1TC27VISAPurcResp"                     |"2220150000000011"  |"0706"         | "5541"              | "50000"    |   "356001"     |  "1958" |  "46"  |
    |"FCIFSCV1TC28VISAPurcResp"                     |"2220150000000011"  |"0706"         | "5200"              | "20502"    |   "356001"     |  "1954" |  "31"  |
    |"FCIFSCV1TC29VISAPurcResp"                     |"2220150000000011"  |"0706"         | "5211"              | "44444"    |   "356001"     |  "1954" |  "43"  |
    |"FCIFSCV1TC30VISAPurcResp"                     |"2220150000000029"  |"0779"         | "5231"              | "35657"    |   "356001"     |  "1954" |  "39"  |
    |"FCIFSCV1TC31VISAPurcResp"                     |"2220150000000029"  |"0779"         | "5251"              | "99999999" |   "356001"     |  "1954" |  "50021"|
    |"FCIFSCV1TC32VISAPurcResp"                     |"2220150000000029"  |"0779"         | "5261"              | "66828"    |   "356001"     |  "1954" |  "54"  |
    |"FCIFSCV1TC33VISAPurcResp"                     |"2220150000000037"  |"0635"         | "5271"              | "57282"    |   "356001"     |  "1954" |  "50"  |
    |"FCIFSCV1TC34VISAPurcResp"                     |"2220150000000037"  |"0635"         | "5300"              | "22770"    |   "356001"     |  "1954" |  "32"  |
    |"FCIFSCV1TC35VISAPurcResp"                     |"2220150000000037"  |"0635"         | "5309"              | "74839"    |   "356001"     |  "1954" |  "58"  |
    |"FCIFSCV1TC36VISAPurcResp"                     |"2220150000000029"  |"0779"         | "5310"              | "74820"    |   "356001"     |  "1954" |  "58"  |
    |"FCIFSCV1TC37VISAPurcResp"                     |"2220150000000029"  |"0779"         | "5422"              | "739822"   |   "356001"     |  "1954" |  "391" |
    |"FCIFSCV1TC38VISAPurcResp"                     |"2220150000000029"  |"0779"         | "5331"              | "10000"    |   "356001"     |  "1954" |  "26"  |
    |"FCIFSCV1TC39VISAPurcResp"                     |"2220150000000011"  |"0706"         | "5311"              | "49478"    |   "356001"     |  "1954" |  "46"  |
    |"FCIFSCV1TC40VISAPurcResp"                     |"2220150000000011"  |"0706"         | "5399"              | "89947438" |   "356001"     |  "1954" |  "44995"|
    |"FCIFSCV1TC41VISAPurcResp"                     |"2220150000000011"  |"0706"         | "5441"              | "10000"    |   "356001"     |  "1954" |  "26"  |
    |"FCIFSCV1TC42VISAPurcResp"                     |"2220150000000003"  |"0705"         | "5451"              | "7489390"  |   "356001"     |  "1954" |  "3766"|
    |"FCIFSCV1TC43VISAPurcResp"                     |"2220150000000003"  |"0705"         | "5462"              | "77775"    |   "356001"     |  "1954" |  "60"  |
    #|"FCIFSCV1TC44VISAPurcResp"                     |"2220150000000003"  |"0705"         | "5499"              | "845566"   |   "356001"     |  "1954" |  "444" |
    |"FCIFSCV1TC45VISAPurcResp"                     |"2220150000000029"  |"0779"         | "5999"              | "333333"   |   "356001"     |  "1954" |  "188" |
    