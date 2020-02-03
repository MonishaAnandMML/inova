@VISAFCIF


Feature: Interchage VISA Fee calculation


@FCValid_Scenerio_Fees_and_charge_POS_Transaction_purchase_ECOM
     
     Scenario Outline: Interchange fee calculation for purchase Ecom transactions with different Amount PosData and BusinessZoneCode
   
  
    Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
    Given Initiate ECOM transaction "ECOM" CardNumber <CardNumber> cvv <cvv> TranType "00" mcc <MerchantCategoryCode> Networkid as "1" Amount <Amount> trackDataOne "NoTrackData1" trackDataTwo "NoTrackData2" PINdata "NoPINData" Securitydata "SecData" CVV as "CVV2_Present" CurrencyCodeTransaction "356"    
    When  Acquirer forwards the message to SmartEdge
    And   Message is processed by issuer and repsonse is sent back to the acquirer
    Then  Verify this acquirer's <TestCaseId> received "000" <BusinessZoneCode> <feeRuleID> and <feeAmount>
    
    Examples: 
    
    |TestCaseId                                     | CardNumber         |cvv          |MerchantCategoryCode |  Amount   |BusinessZoneCode |feeRuleID|feeAmount|
  #123018|
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220270000000009"  |"0441"        |  "4900"              | "36738833" |   "356001"     |  "2163" |"551082" |
  #123019
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220280000000008"  |"0913"        | "4900"              | "36738833" |   "356001"     |  "2164" |"551082" |
  #123020
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220290000000007"  |"0093"        | "4900"              | "36738833" |   "356001"     |  "2165" |"551082" |
  #123021
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220300000000012"  |"0854"        | "4900"              | "36738833" |   "356001"     |  "2166" |"551082" |
  #123022
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220310000000003"  |"0237"        | "4900"              | "36738833" |   "356001"     |  "2173" |"551082" |
  #123023
    |"FCIFSCV1TC1VISAPurcResp"                      |"2220320000000044"  |"0853"        | "4900"              | "36738833" |   "356001"     |  "2174" |"18390" |
    
    
    
    #TUPPLE_PURCHASE [RetailStores]
    
    @FCValid_Scenerio_Fees_and_charge_POS_Transaction_purchase 
     
     Scenario Outline: Interchange fee calculation for Purchase transactions with different Amount PosData and BusinessZoneCode
     
    Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
    Given Initiate Purchase transaction with PosDataCode as "510101510300" CardNumber <CardNumber> cvv <cvv> TranType "00" mcc <MerchantCategoryCode> Networkid as "1" Amount <Amount> trackDataOne "TrackData1" trackDataTwo "TrackData2" PINdata "PINData" Securitydata "SecData" CurrencyCodeTransaction "356"    
    When  Acquirer forwards the message to SmartEdge
    And   Message is processed by issuer and repsonse is sent back to the acquirer
    Then  Verify this acquirer's <TestCaseId> received "000" <BusinessZoneCode> <feeRuleID> and <feeAmount>
    
    Examples: 
    
    |TestCaseId                                     | CardNumber         |cvv        |MerchantCategoryCode |  Amount    |BusinessZoneCode |feeRuleID|feeAmount|

 #<<"123018">>
 
    |"FCIFSCV1TC28VISAPurcResp"                     |"2220270000000009"  |"0441"      | "5200"              | "20502"    |   "356001"     |  "2151" |  "461"  |
    |"FCIFSCV1TC29VISAPurcResp"                     |"2220270000000017"  |"0348"      | "5211"              | "20502"    |   "356001"     |  "2151" |  "461"  |
    |"FCIFSCV1TC30VISAPurcResp"                     |"2220270000000025"  |"0008"      | "5231"              | "20502"    |   "356001"     |  "2151" |  "461"  |
    |"FCIFSCV1TC31VISAPurcResp"                     |"2220270000000033"  |"0376"      | "5251"              | "20502"    |   "356001"     |  "2151" |  "461"  |
    |"FCIFSCV1TC32VISAPurcResp"                     |"2220270000000041"  |"0719"      | "5261"              | "20502"    |   "356001"     |  "2151" |  "461"  |
    |"FCIFSCV1TC33VISAPurcResp"                     |"2220270000000009"  |"0441"      | "5271"              | "20502"    |   "356001"     |  "2151" |  "461"  |
    |"FCIFSCV1TC34VISAPurcResp"                     |"2220270000000041"  |"0719"      | "5300"              | "20502"    |   "356001"     |  "2151" |  "461"  |
    |"FCIFSCV1TC35VISAPurcResp"                     |"2220270000000033"  |"0376"      | "5309"              | "20502"    |   "356001"     |  "2151" |  "461"  |
    |"FCIFSCV1TC36VISAPurcResp"                     |"2220270000000033"  |"0376"      | "5310"              | "20502"    |   "356001"     |  "2151" |  "461"  |
    |"FCIFSCV1TC36VISAPurcResp"                     |"2220270000000033"  |"0376"      | "5311"              | "20502"    |   "356001"     |  "2151" |  "461"  |
    |"FCIFSCV1TC36VISAPurcResp"                     |"2220270000000033"  |"0376"      | "5411"              | "20502"    |   "356001"     |  "2151" |  "461"  |
    |"FCIFSCV1TC36VISAPurcResp"                     |"2220270000000033"  |"0376"      | "5331"              | "20502"    |   "356001"     |  "2151" |  "461"  |
    |"FCIFSCV1TC11VISAPurcResp"                     |"2220270000000017"  |"0348"      | "5422"              | "88886"   |   "356001"     |  "2151" |  "1965"  |
    |"FCIFSCV1TC16VISAPurcResp"                     |"2220270000000041"  |"0719"      | "5441"              | "88886"   |   "356001"     |  "2151" |  "1965"  |
    |"FCIFSCV1TC17VISAPurcResp"                     |"2220270000000033"  |"0376"      | "5451"              | "88886"   |   "356001"     |  "2151" |  "1965"  |
    |"FCIFSCV1TC18VISAPurcResp"                     |"2220270000000041"  |"0719"      | "5462"              | "88886"   |   "356001"     |  "2151" |  "1965"  |
    #|"FCIFSCV1TC19VISAPurcResp"                     |"2220270000000017"  |"0348"      | "5499"              | "88886"   |   "356001"     |  "2151" |  "1965"  |
    |"FCIFSCV1TC20VISAPurcResp"                     |"2220270000000041"  |"0719"      | "5999"              | "88886"   |   "356001"     |  "2151" |  "1965"  |

 #<<"123019">>

    |"FCIFSCV1TC5VISAPurcResp"                      |"2220280000000008"  |"0913"      |"5200"              | "20502"   |   "356001"     |  "2152" |  "482"  |
    |"FCIFSCV1TC6VISAPurcResp"                      |"2220280000000016"  |"0363"      | "5211"              | "20502"   |   "356001"     |  "2152" |  "482"  |
    |"FCIFSCV1TC7VISAPurcResp"                      |"2220280000000024"  |"0251"      | "5231"              | "20502"   |   "356001"     |  "2152" |  "482"  |
    |"FCIFSCV1TC8VISAPurcResp"                      |"2220280000000032"  |"0878"      | "5251"              | "20502"   |   "356001"     |  "2152" |  "482"  |
    |"FCIFSCV1TC9VISAPurcResp"                      |"2220280000000032"  |"0878"      | "5261"              | "20502"   |   "356001"     |  "2152" |  "482"  |
    |"FCIFSCV1TC10VISAPurcResp"                     |"2220280000000008"  |"0913"      | "5271"              | "20502"   |   "356001"     |  "2152" |  "482"  |
    |"FCIFSCV1TC11VISAPurcResp"                     |"2220280000000024"  |"0363"      | "5300"              | "20502"   |   "356001"     |  "2152" |  "482"  |
    |"FCIFSCV1TC12VISAPurcResp"                     |"2220280000000008"  |"0913"      | "5309"              | "20502"   |   "356001"     |  "2152" |  "482"  |
    |"FCIFSCV1TC13VISAPurcResp"                     |"2220280000000024"  |"0251"      | "5310"              | "20502"   |   "356001"     |  "2152" |  "482"  |
    |"FCIFSCV1TC13VISAPurcResp"                     |"2220280000000024"  |"0251"      | "5311"              | "20502"   |   "356001"     |  "2152" |  "482"  |
    |"FCIFSCV1TC13VISAPurcResp"                     |"2220280000000024"  |"0251"      | "5331"              | "20502"   |   "356001"     |  "2152" |  "482"  |
    |"FCIFSCV1TC13VISAPurcResp"                     |"2220280000000024"  |"0251"      | "5411"              | "20502"   |   "356001"     |  "2152" |  "482"  |
    |"FCIFSCV1TC11VISAPurcResp"                     |"2220280000000024"  |"0251"      | "5422"              | "88886"   |   "356001"     |  "2152" |  "2054"  |
    |"FCIFSCV1TC16VISAPurcResp"                     |"2220280000000008"  |"0913"      | "5441"              | "88886"   |   "356001"     |  "2152" |  "2054"  |
    |"FCIFSCV1TC17VISAPurcResp"                     |"2220280000000024"  |"0251"      | "5451"              | "88886"   |   "356001"     |  "2152" |  "2054"  |
    |"FCIFSCV1TC18VISAPurcResp"                     |"2220280000000016"  |"0363"      | "5462"              | "88886"   |   "356001"     |  "2152" |  "2054"  |
    #|"FCIFSCV1TC19VISAPurcResp"                     |"2220280000000024"  |"0251"      | "5499"              | "88886"   |   "356001"     |  "2152" |  "2054"  |
    |"FCIFSCV1TC20VISAPurcResp"                     |"2220280000000032"  |"0878"      | "5999"              | "88886"   |   "356001"     |  "2152" |  "2054"  |
  #<<"123020">>

 
    |"FCIFSCV1TC5VISAPurcResp"                      |"2220290000000007"  |"0093"      | "5200"              | "20502"   |   "356001"     |  "2153" |  "502"  |
    |"FCIFSCV1TC6VISAPurcResp"                      |"2220290000000015"  |"0896"      | "5211"              | "20502"   |   "356001"     |  "2153" |  "502"  |
    |"FCIFSCV1TC7VISAPurcResp"                      |"2220290000000023"  |"0545"      | "5231"              | "20502"   |   "356001"     |  "2153" |  "502"  |
    |"FCIFSCV1TC8VISAPurcResp"                      |"2220290000000031"  |"0490"      | "5251"              | "20502"   |   "356001"     |  "2153" |  "502"  |
    |"FCIFSCV1TC9VISAPurcResp"                      |"2220290000000015"  |"0896"      | "5261"              | "20502"   |   "356001"     |  "2153" |  "502"  |
    |"FCIFSCV1TC10VISAPurcResp"                     |"2220290000000023"  |"0545"      | "5271"              | "20502"   |   "356001"     |  "2153" |  "502"  |
    |"FCIFSCV1TC11VISAPurcResp"                     |"2220290000000007"  |"0093"      | "5300"              | "20502"   |   "356001"     |  "2153" |  "502"  |
    |"FCIFSCV1TC12VISAPurcResp"                     |"2220290000000015"  |"0896"      | "5309"              | "20502"   |   "356001"     |  "2153" |  "502"  |
    |"FCIFSCV1TC13VISAPurcResp"                     |"2220290000000023"  |"0545"      | "5310"              | "20502"   |   "356001"     |  "2153" |  "502"  |
    |"FCIFSCV1TC13VISAPurcResp"                     |"2220290000000023"  |"0545"      | "5311"              | "20502"   |   "356001"     |  "2153" |  "502"  |
    |"FCIFSCV1TC13VISAPurcResp"                     |"2220290000000023"  |"0545"      | "5331"              | "20502"   |   "356001"     |  "2153" |  "502"  |
    |"FCIFSCV1TC13VISAPurcResp"                     |"2220290000000023"  |"0545"      |"5411"              | "20502"   |   "356001"     |  "2153" |  "502"  |
    |"FCIFSCV1TC11VISAPurcResp"                     |"2220290000000031"  |"0490"      | "5422"              | "88886"   |   "356001"     |  "2153" |  "2143"  |
    |"FCIFSCV1TC16VISAPurcResp"                     |"2220290000000007"  |"0093"      | "5441"              | "88886"   |   "356001"     |  "2153" |  "2143"  |
    |"FCIFSCV1TC17VISAPurcResp"                     |"2220290000000015"  |"0896"      | "5451"              | "88886"   |   "356001"     |  "2153" |  "2143"  |
    |"FCIFSCV1TC18VISAPurcResp"                     |"2220290000000007"  |"0093"      | "5462"              | "88886"   |   "356001"     |  "2153" |  "2143"  |
    #|"FCIFSCV1TC19VISAPurcResp"                     |"2220290000000031"  |"0490"      | "5499"              | "88886"   |   "356001"     |  "2153" |  "2143"  |
    |"FCIFSCV1TC20VISAPurcResp"                     |"2220290000000007"  |"0093"      | "5999"              | "88886"   |   "356001"     |  "2153" |  "2143"  |
  
     #<<"123021">>

 
    |"FCIFSCV1TC5VISAPurcResp"                      |"2220300000000004"  |"0504"      | "5200"              | "20502"   |   "356001"     |  "2154" |  "523"  |
    |"FCIFSCV1TC6VISAPurcResp"                      |"2220300000000012"  |"0854"      | "5211"              | "20502"   |   "356001"     |  "2154" |  "523"  |
    |"FCIFSCV1TC7VISAPurcResp"                      |"2220300000000012"  |"0854"      | "5231"              | "20502"   |   "356001"     |  "2154" |  "523"  |
    |"FCIFSCV1TC8VISAPurcResp"                      |"2220300000000046"  |"0483"      | "5251"              | "20502"   |   "356001"     |  "2154" |  "523"  |
    |"FCIFSCV1TC9VISAPurcResp"                      |"2220300000000012"  |"0854"      | "5261"              | "20502"   |   "356001"     |  "2154" |  "523"  |
    |"FCIFSCV1TC10VISAPurcResp"                     |"2220300000000012"  |"0854"      |"5271"              | "20502"   |   "356001"     |  "2154" |  "523"  |
    |"FCIFSCV1TC11VISAPurcResp"                     |"2220300000000046"  |"0483"      |"5300"              | "20502"   |   "356001"     |  "2154" |  "523"  |
    |"FCIFSCV1TC12VISAPurcResp"                     |"2220300000000012"  |"0854"      | "5309"              | "20502"   |   "356001"     |  "2154" |  "523"  |
    |"FCIFSCV1TC13VISAPurcResp"                     |"2220300000000012"  |"0854"      | "5310"              | "20502"   |   "356001"     |  "2154" |  "523"  |
    |"FCIFSCV1TC13VISAPurcResp"                     |"2220300000000012"  |"0854"      | "5331"              | "20502"   |   "356001"     |  "2154" |  "523"  |
    |"FCIFSCV1TC13VISAPurcResp"                     |"2220300000000012"  |"0854"      | "5311"              | "20502"   |   "356001"     |  "2154" |  "523"  |
    |"FCIFSCV1TC13VISAPurcResp"                     |"2220300000000012"  |"0854"      | "5411"              | "20502"   |   "356001"     |  "2154" |  "523"  |
    |"FCIFSCV1TC11VISAPurcResp"                     |"2220300000000012"  |"0854"      | "5422"              | "88886"   |   "356001"     |  "2154" |  "2232"  |
    |"FCIFSCV1TC16VISAPurcResp"                     |"2220300000000012"  |"0854"      | "5441"              | "88886"   |   "356001"     |  "2154" |  "2232"  |
    |"FCIFSCV1TC17VISAPurcResp"                     |"2220300000000012"  |"0854"      | "5451"              | "88886"   |   "356001"     |  "2154" |  "2232"  |
    |"FCIFSCV1TC18VISAPurcResp"                     |"2220300000000046"  |"0483"      | "5462"              | "88886"   |   "356001"     |  "2154" |  "2232"  |
    #|"FCIFSCV1TC19VISAPurcResp"                     |"2220300000000012"  |"0854"      | "5499"              | "88886"   |   "356001"     |  "2154" |  "2232"  |
    |"FCIFSCV1TC20VISAPurcResp"                     |"2220300000000012"  |"0854"      | "5999"              | "88886"   |   "356001"     |  "2154" |  "2232"  |
  
  
  
  
  
  @FCValid_Scenerio_Fees_and_charge_POS_Transaction_purchase_ECOM
     
     Scenario Outline: Interchange fee calculation for purchase Ecom transactions with different Amount PosData and BusinessZoneCode
   
  
    Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
    Given Initiate ECOM transaction "ECOM" CardNumber <CardNumber> cvv <cvv> TranType "00" mcc <MerchantCategoryCode> Networkid as "1" Amount <Amount> trackDataOne "NoTrackData1" trackDataTwo "NoTrackData2" PINdata "NoPINData" Securitydata "SecData" CVV as "CVV2_Present" CurrencyCodeTransaction "356"    
    When  Acquirer forwards the message to SmartEdge
    And   Message is processed by issuer and repsonse is sent back to the acquirer
    Then  Verify this acquirer's <TestCaseId> received "000" <BusinessZoneCode> <feeRuleID> and <feeAmount>
    
    Examples: 
    
    |TestCaseId                                     | CardNumber         |cvv                 |MerchantCategoryCode |  Amount    |BusinessZoneCode |feeRuleID|feeAmount|

 #<<"123018">>
 
    |"FCIFSCV1TC28VISAPurcResp"                     |"2220270000000009"  |"0441"               | "5611"              | "20502"    |   "356001"     |  "2155" |  "471"  |
    |"FCIFSCV1TC29VISAPurcResp"                     |"2220270000000017"  |"0348"               | "5621"              | "20502"    |   "356001"     |  "2155" |  "471"  |
    |"FCIFSCV1TC30VISAPurcResp"                     |"2220270000000025"  |"0008"               | "5813"              | "20502"    |   "356001"     |  "2155" |  "471"  |
    |"FCIFSCV1TC31VISAPurcResp"                     |"2220270000000033"  |"0376"               | "5641"              | "20502"    |   "356001"     |  "2155" |  "471"  |
    
 #<<"123019">>

    |"FCIFSCV1TC5VISAPurcResp"                      |"2220280000000008"  |"0913"               | "5611"              | "20502"   |   "356001"     |  "2156" |  "517"  |
    |"FCIFSCV1TC6VISAPurcResp"                      |"2220280000000016"  |"0363"               | "5621"              | "20502"   |   "356001"     |  "2156" |  "517"  |
    |"FCIFSCV1TC7VISAPurcResp"                      |"2220280000000024"  |"0251"               | "5813"              | "20502"   |   "356001"     |  "2156" |  "517"  |
    |"FCIFSCV1TC8VISAPurcResp"                      |"2220280000000032"  |"0878"               | "5641"              | "20502"   |   "356001"     |  "2156" |  "517"  |
    
  #<<"123020">>
  
    |"FCIFSCV1TC5VISAPurcResp"                      |"2220290000000007"  |"0093"               | "5611"              | "20502"   |   "356001"     |  "2157" |  "553"  |
    |"FCIFSCV1TC6VISAPurcResp"                      |"2220290000000015"  |"0896"               | "5621"              | "20502"   |   "356001"     |  "2157" |  "553"  |
    |"FCIFSCV1TC7VISAPurcResp"                      |"2220290000000023"  |"0545"               | "5813"              | "20502"   |   "356001"     |  "2157" |  "553"  |
    |"FCIFSCV1TC8VISAPurcResp"                      |"2220290000000031"  |"0490"              |"5641"              | "20502"   |   "356001"     |  "2157" |  "553"  |
    
   
     #<<"123021">>
     
    |"FCIFSCV1TC5VISAPurcResp"                      |"2220300000000004"  |"0504"              | "5611"              | "20502"   |   "356001"     |  "2158" |  "574"  |
    |"FCIFSCV1TC6VISAPurcResp"                      |"2220300000000012"  |"0854"              | "5621"              | "20502"   |   "356001"     |  "2158" |  "574"  |
    |"FCIFSCV1TC7VISAPurcResp"                      |"2220300000000012"  |"0854"              | "5813"              | "20502"   |   "356001"     |  "2158" |  "574"  |
    |"FCIFSCV1TC8VISAPurcResp"                      |"2220300000000046"  |"0483"              | "5641"              | "20502"   |   "356001"     |  "2158" |  "574"  |
    
    #<<"123020">>
  
    |"FCIFSCV1TC5VISAPurcResp"                      |"2220310000000003"  |"0237"              | "5611"              | "20502"   |   "356001"     |  "2169" |  "512"  |
    |"FCIFSCV1TC6VISAPurcResp"                      |"2220310000000003"  |"0237"              | "5621"              | "20502"   |   "356001"     |  "2169" |  "512"  |
    |"FCIFSCV1TC7VISAPurcResp"                      |"2220310000000003"  |"0237"              | "5813"              | "20502"   |   "356001"     |  "2169" |  "512"  |
    |"FCIFSCV1TC8VISAPurcResp"                      |"2220310000000003"  |"0237"              | "5641"              | "20502"   |   "356001"     |  "2169" |  "512"  |
    
   
     #<<"123021">>
     
    |"FCIFSCV1TC5VISAPurcResp"                      |"2220320000000010"  |"0316"              | "5611"              | "20502"   |   "356001"     |  "2170" |  "31"  |
    |"FCIFSCV1TC6VISAPurcResp"                      |"2220320000000010"  |"0316"              | "5621"              | "20502"   |   "356001"     |  "2170" |  "31"  |
    |"FCIFSCV1TC7VISAPurcResp"                      |"2220320000000010"  |"0316"              | "5813"              | "20502"   |   "356001"     |  "2170" |  "31"  |
    |"FCIFSCV1TC8VISAPurcResp"                      |"2220320000000010"  |"0316"              | "5641"              | "20502"   |   "356001"     |  "2170" |  "31"  |
    