@VISAFCIF

Feature: Interchage VISA Fee calculation

#RECURRING
     
     @FCValid_Scenerio_Fees_and_charge_POS_Transaction_purchase_recurring_prepaid
     
     Scenario Outline: Interchange fee calculation for purchase recurring transactions with different Amount PosData and BusinessZoneCode
   
    Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
    Given Initiate Purchase Recurring transaction with PosDataCode as "000090100000" CardNumber <CardNumber> cvv <cvv> TranType "00" mcc <MerchantCategoryCode> Networkid as "1" Amount <Amount> trackDataOne "NoTrackData1" trackDataTwo "NoTrackData2" PINdata "NoPINData" Securitydata "NoSecData" CurrencyCodeTransaction "356"   
    When  Acquirer forwards the message to SmartEdge
    And   Message is processed by issuer and repsonse is sent back to the acquirer
    Then  Verify this acquirer's <TestCaseId> received "000" <BusinessZoneCode> <feeRuleID> and <feeAmount>

    Examples: 
    
   |TestCaseId                                     | CardNumber         |cvv           |MerchantCategoryCode |  Amount    |BusinessZoneCode |feeRuleID|feeAmount|
   |"FCIFSCV1TC1VISAPurcResp"                      |"2220140000000004"  |"510"      | "7349"              | "36738833" |   "356001"     |  "1975" |  "65"  |
   |"FCIFSCV1TC2VISAPurcResp"                      |"2220140000000004"  |"510"      | "5411"              | "383993"   |   "356001"     |  "1975" |  "65"  |
   |"FCIFSCV1TC3VISAPurcResp"                      |"2220140000000004"  |"510"      | "9751"              | "99999"    |   "356001"     |  "1975" |  "65"  |
   |"FCIFSCV1TC4VISAPurcResp"                      |"2220140000000012"  |"510"      | "5411"              | "10000"    |   "356001"     |  "1975" |  "65"  |
   |"FCIFSCV1TC5VISAPurcResp"                      |"2220140000000012"  |"510"      | "5541"              | "25552"    |   "356001"     |  "1975" |  "65"  |
   |"FCIFSCV1TC6VISAPurcResp"                      |"2220140000000012"  |"510"      | "5200"              | "20502"    |   "356001"     |  "1975" |  "65"  |
   |"FCIFSCV1TC8VISAPurcResp"                      |"2220140000000020"  |"510"      | "5211"              | "10000"    |   "356001"     |  "1975" |  "65"  |
   |"FCIFSCV1TC9VISAPurcResp"                      |"2220140000000020"  |"510"      | "5231"              | "12345"    |   "356001"     |  "1975" |  "65"  |
   |"FCIFSCV1TC10VISAPurcResp"                     |"2220140000000020"  |"510"      | "5251"              | "27733"    |   "356001"     |  "1975" |  "65"  |
   |"FCIFSCV1TC11VISAPurcResp"                     |"2220140000000038"  |"510"      | "8220"              | "36738833" |   "356001"     |  "1975" |  "65"  |
   |"FCIFSCV1TC12VISAPurcResp"                     |"2220140000000038"  |"510"      | "7929"              | "383993"   |   "356001"     |  "1975" |  "65"  |
   |"FCIFSCV1TC13VISAPurcResp"                     |"2220140000000038"  |"510"      | "7933"              | "99999"    |   "356001"     |  "1975" |  "65"  |
   |"FCIFSCV1TC14VISAPurcResp"                     |"2220140000000038"  |"510"      | "7941"              | "74647"    |   "356001"     |  "1975" |  "65"  |
   |"FCIFSCV1TC15VISAPurcResp"                     |"2220140000000012"  |"510"      | "7991"              | "25552"    |   "356001"     |  "1975" |  "65"  |
   |"FCIFSCV1TC16VISAPurcResp"                     |"2220140000000012"  |"510"      | "7993"              | "20502"    |   "356001"     |  "1975" |  "65"  |
   |"FCIFSCV1TC17VISAPurcResp"                     |"2220140000000012"  |"510"      | "7995"              | "10000"    |   "356001"     |  "1975" |  "65"  |
   |"FCIFSCV1TC18VISAPurcResp"                     |"2220140000000004"  |"510"      | "7841"              | "12345"    |   "356001"     |  "1975" |  "65"  |
   |"FCIFSCV1TC19VISAPurcResp"                     |"2220140000000004"  |"510"      | "7999"              | "27733"    |   "356001"     |  "1975" |  "65"  |
    
    
    #123005
    
   |"FCIFSCV1TC20VISAPurcResp"                      |"2220150000000003"  |"510"      | "7349"              | "36738833" |   "356001"     |  "1976" |  "18390"  |
   |"FCIFSCV1TC21VISAPurcResp"                      |"2220150000000003"  |"510"      | "5411"              | "383993"      |   "356001"     |  "1976" |  "213"  |
   |"FCIFSCV1TC22VISAPurcResp"                      |"2220150000000003"  |"510"      | "9751"              | "99999"    |   "356001"     |  "1976" |  "71"  |
   |"FCIFSCV1TC23VISAPurcResp"                      |"2220150000000011"  |"510"      | "5411"              | "10000"    |   "356001"     |  "1976" |  "26"  |
   |"FCIFSCV1TC24VISAPurcResp"                      |"2220150000000011"  |"510"      | "5541"              | "25552"    |   "356001"     |  "1976" |  "34"  |
   |"FCIFSCV1TC25VISAPurcResp"                      |"2220150000000011"  |"510"      | "5200"              | "20502"    |   "356001"     |  "1976" |  "31"  |
   |"FCIFSCV1TC26VISAPurcResp"                      |"2220150000000029"  |"510"      | "5211"              | "10000"    |   "356001"     |  "1976" |  "26"  |
   |"FCIFSCV1TC27VISAPurcResp"                      |"2220150000000029"  |"510"      | "5231"              | "12345"    |   "356001"     |  "1976" |  "27"  |
   |"FCIFSCV1TC28VISAPurcResp"                      |"2220150000000029"  |"510"      | "5251"              | "27733"    |   "356001"     |  "1976" |  "35"  |
   |"FCIFSCV1TC30VISAPurcResp"                      |"2220150000000011"  |"510"      | "8220"              | "36738833" |   "356001"     |  "1976" |  "18390"  |
   |"FCIFSCV1TC31VISAPurcResp"                      |"2220150000000011"  |"510"      | "7929"              | "383993"      |   "356001"     |  "1976" |  "213"  |
   |"FCIFSCV1TC32VISAPurcResp"                      |"2220150000000011"  |"510"      | "7933"              | "99999"    |   "356001"     |  "1976" |  "71"  |
   |"FCIFSCV1TC33VISAPurcResp"                      |"2220150000000037"  |"510"      | "7941"              | "10000"    |   "356001"     |  "1976" |  "26"  |
   |"FCIFSCV1TC34VISAPurcResp"                      |"2220150000000037"  |"510"      | "7991"              | "25552"    |   "356001"     |  "1976" |  "34"  |
   |"FCIFSCV1TC35VISAPurcResp"                      |"2220150000000037"  |"510"      | "7993"              | "20502"    |   "356001"     |  "1976" |  "31"  |
   |"FCIFSCV1TC36VISAPurcResp"                      |"2220150000000003"  |"510"      | "7995"              | "10000"    |   "356001"     |  "1976" |  "26"  |
   |"FCIFSCV1TC37VISAPurcResp"                      |"2220150000000003"  |"510"      | "7841"              | "12345"    |   "356001"     |  "1976" |  "27"  |
   |"FCIFSCV1TC38VISAPurcResp"                      |"2220150000000003"  |"510"      | "7999"              | "27733"    |   "356001"     |  "1976" |  "35"  |
    