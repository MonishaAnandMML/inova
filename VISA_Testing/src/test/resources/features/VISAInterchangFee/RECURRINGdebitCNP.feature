@VISAFCIF

Feature: Interchage VISA Fee calculation

#RECURRING
     
     @FCValid_Scenerio_Fees_and_charge_POS_Transaction_purchase_recurring
     
     Scenario Outline: Interchange fee calculation for purchase recurring transactions with different Amount PosData and BusinessZoneCode
   
    Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
    Given Initiate Purchase Recurring transaction with PosDataCode as "000090100000" CardNumber <CardNumber> cvv <cvv> TranType "00" mcc <MerchantCategoryCode> Networkid as "1" Amount <Amount> trackDataOne "NoTrackData1" trackDataTwo "NoTrackData2" PINdata "NoPINData" Securitydata "NoSecData" CurrencyCodeTransaction "356"   
    When  Acquirer forwards the message to SmartEdge
    And   Message is processed by issuer and repsonse is sent back to the acquirer
    Then  Verify this acquirer's <TestCaseId> received "000" <BusinessZoneCode> <feeRuleID> and <feeAmount>

    Examples: 
    
    |TestCaseId                                     | CardNumber         |cvv        |MerchantCategoryCode |  Amount    |BusinessZoneCode |feeRuleID|feeAmount|
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220880000000021"  |"0442"      | "7349"              | "36738833" |   "356001"     |  "1925" |  "65"  |
    |"FCIFSCV1TC2VISAPurcResp"                      |"2220880000000021"  |"0442"      | "5411"              | "383993"      |   "356001"     |  "1925" |  "65"  |
    |"FCIFSCV1TC3VISAPurcResp"                      |"2220880000000013"  |"0885"      | "9751"              | "99999"    |   "356001"     |  "1925" |  "65"  |
    |"FCIFSCV1TC4VISAPurcResp"                      |"2220880000000013"  |"0885"      | "5411"              | "10000"    |   "356001"     |  "1925" |  "65"  |
    |"FCIFSCV1TC5VISAPurcResp"                      |"2220880000000021"  |"0442"      | "5541"              | "25552"    |   "356001"     |  "1925" |  "65"  |
    |"FCIFSCV1TC6VISAPurcResp"                      |"2220880000000021"  |"0442"      | "5200"              | "20502"    |   "356001"     |  "1925" |  "65"  |
    |"FCIFSCV1TC8VISAPurcResp"                      |"2220880000000021"  |"0442"      | "5211"              | "10000"    |   "356001"     |  "1925" |  "65"  |
    |"FCIFSCV1TC9VISAPurcResp"                      |"2220880000000021"  |"0442"      | "5231"              | "12345"    |   "356001"     |  "1925" |  "65"  |
    |"FCIFSCV1TC10VISAPurcResp"                      |"2220880000000005"  |"0885"      | "5251"              | "27733"    |   "356001"     |  "1925" |  "65"  |
    |"FCIFSCV1TC11VISAPurcResp"                      |"2220880000000021"  |"0442"      | "8220"              | "36738833" |   "356001"     |  "1925" |  "65"  |
    |"FCIFSCV1TC12VISAPurcResp"                      |"2220880000000021"  |"0442"      | "7929"              | "383993"      |   "356001"     |  "1925" |  "65"  |
    |"FCIFSCV1TC13VISAPurcResp"                      |"2220880000000013"  |"0885"      | "7933"              | "99999"    |   "356001"     |  "1925" |  "65"  |
    |"FCIFSCV1TC14VISAPurcResp"                      |"2220880000000013"  |"0885"      | "7941"              | "10000"    |   "356001"     |  "1925" |  "65"  |
    |"FCIFSCV1TC15VISAPurcResp"                      |"2220880000000021"  |"0442"      | "7991"              | "25552"    |   "356001"     |  "1925" |  "65"  |
    |"FCIFSCV1TC16VISAPurcResp"                      |"2220880000000021"  |"0442"      | "7993"              | "20502"    |   "356001"     |  "1925" |  "65"  |
    |"FCIFSCV1TC17VISAPurcResp"                      |"2220880000000021"  |"0442"      | "7995"              | "10000"    |   "356001"     |  "1925" |  "65"  |
    |"FCIFSCV1TC18VISAPurcResp"                      |"2220880000000021"  |"0442"      | "7841"              | "12345"    |   "356001"     |  "1925" |  "65"  |
    |"FCIFSCV1TC19VISAPurcResp"                      |"2220880000000005"  |"0885"      | "7999"              | "27733"    |   "356001"     |  "1925" |  "65"  |
    
    
    #123005
    
    |"FCIFSCV1TC20VISAPurcResp"                      |"2220990000000002"  |"0885"      | "7349"              | "36738833" |   "356001"     |  "1926" |  "18390"  |
    |"FCIFSCV1TC21VISAPurcResp"                      |"2220990000000002"  |"0885"      | "5411"              | "383993"      |   "356001"     |  "1926" |  "213"  |
    |"FCIFSCV1TC22VISAPurcResp"                      |"2220990000000002"  |"0885"      | "9751"              | "99999"    |   "356001"     |  "1926" |  "71"  |
    |"FCIFSCV1TC23VISAPurcResp"                      |"2220990000000028"  |"0885"      | "5411"              | "10000"    |   "356001"     |  "1926" |  "26"  |
    |"FCIFSCV1TC24VISAPurcResp"                      |"2220990000000028"  |"0885"      | "5541"              | "25552"    |   "356001"     |  "1926" |  "34"  |
    |"FCIFSCV1TC25VISAPurcResp"                      |"2220990000000028"  |"0885"      | "5200"              | "20502"    |   "356001"     |  "1926" |  "31"  |
    |"FCIFSCV1TC26VISAPurcResp"                      |"2220990000000028"  |"0885"      | "5211"              | "10000"    |   "356001"     |  "1926" |  "26"  |
    |"FCIFSCV1TC27VISAPurcResp"                      |"2220990000000028"  |"0885"      | "5231"              | "12345"    |   "356001"     |  "1926" |  "27"  |
    |"FCIFSCV1TC28VISAPurcResp"                      |"2220990000000028"  |"0885"      | "5251"              | "27733"    |   "356001"     |  "1926" |  "35"  |
    |"FCIFSCV1TC30VISAPurcResp"                      |"2220990000000002"  |"0885"      | "8220"              | "36738833" |   "356001"     |  "1926" |  "18390"  |
    |"FCIFSCV1TC31VISAPurcResp"                      |"2220990000000002"  |"0885"      | "7929"              | "383993"      |   "356001"     |  "1926" |  "213"  |
    |"FCIFSCV1TC32VISAPurcResp"                      |"2220990000000002"  |"0885"      | "7933"              | "99999"    |   "356001"     |  "1926" |  "71"  |
    |"FCIFSCV1TC33VISAPurcResp"                      |"2220990000000010"  |"0885"      | "7941"              | "10000"    |   "356001"     |  "1926" |  "26"  |
    |"FCIFSCV1TC34VISAPurcResp"                      |"2220990000000010"  |"0885"      | "7991"              | "25552"    |   "356001"     |  "1926" |  "34"  |
    |"FCIFSCV1TC35VISAPurcResp"                      |"2220990000000010"  |"0885"      | "7993"              | "20502"    |   "356001"     |  "1926" |  "31"  |
    |"FCIFSCV1TC36VISAPurcResp"                      |"2220990000000010"  |"0885"      | "7995"              | "10000"    |   "356001"     |  "1926" |  "26"  |
    |"FCIFSCV1TC37VISAPurcResp"                      |"2220990000000010"  |"0885"      | "7841"              | "12345"    |   "356001"     |  "1926" |  "27"  |
    |"FCIFSCV1TC38VISAPurcResp"                      |"2220990000000010"  |"0885"      | "7999"              | "27733"    |   "356001"     |  "1926" |  "35"  |
    