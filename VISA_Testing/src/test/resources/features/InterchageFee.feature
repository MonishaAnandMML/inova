@FCIF

Feature: Interchage Fee calculation 

#@FCDeclined_Scenerio_Amount

  Scenario Outline: Interchange fee calculation on Declined transaction Amount subtrantype
  
    Given Validation of scenario <TestCaseId> for tran type <TranType> and CardNumber <CardNumber>
    Given Initiate transaction with <transactionclassification> CardNumber <CardNumber> TranType <TranType> mcc <MerchantCategoryCode> Networkid as <NetworkID> Amount <Amount>
    When  Acquirer forwards the message to SmartEdge
    Then Verify acquirer response <AcquirerResponse_F39> and <AdditionalResponse_F46>  
  #Examples: 
|TestCaseId                                   |transactionclassification             | CardNumber         |TranType            |MerchantCategoryCode |NetworkID   |Amount  | AcquirerResponse_F39 |AdditionalResponse_F46|       
|"FCIFSCV1TC1PurcResp"                        |"Pos Purchase+PIN"                    |"2220118912341518"  |     "00"           | "4900"              | "1"      | "100"|   "951"              |  "881,NA,NA,NA"         |
#|"FCIFSCV1TC2PurcResp"                        |"Pos Purchase+PIN"                     |"2220118912341518"  |     "00"           | "4901"              | "3"      | "20000"|   "904"             |  "719"|
#|"FCIFSCV1TC3CashResp"                        |"ATM+PIN"                              |"2220118912341518"  |     "01"           | "6010"              | "1"      | "00000"|   "904"             |  "974"|
#|"FCIFSCV1TC4CashResp"                        |"ATM+PIN"                              |"2220118912341518"  |     "01"           | "6010"              | "1"      | "100"|   "951"               |  "881,NA,NA,NA"|
#|"FCIFSCV1TC4CashResp"                        |"ATM+PIN"                              |"2220228912341515"  |     "01"           | "6010"              | "1"      | "50000"|   "907"               | "2511"|





#@FCValid_Scenerio_Fees_and_charge_POS_Transaction_General 


  Scenario Outline: Interchange fee calculation on valid transaction with different Amount 
  
    Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
    Given Initiate Pos Purchase+PIN transaction with "Pos Purchase+PIN" CardNumber <CardNumber> TranType "00" mcc <MerchantCategoryCode> Networkid as "1" Amount <Amount>
    When  Acquirer forwards the message to SmartEdge
    And   Message is processed by issuer and repsonse is sent back to the acquirer
    Then  Verify if this acquirer's <TestCaseId> received "000" <feeRuleID> and <feeAmount>
  Examples: 
|TestCaseId                                | CardNumber         |MerchantCategoryCode |  Amount      |feeRuleID|feeAmount   |
|"FCIFSCV1TC1PurcResp"                     |"2220118912341518"  | "4900"              | "20502"    |  "9901" |  "30"  |
#|"FCIFSCV1TC2PurcResp"                    |"2220118912341518"  | "5231"              | "10502"    |  "9001"|  "30"  |    
|"FCIFSCV1TC3PurcResp"                    |"2220118912341518"  | "4899"              | "10502"    |  "9902" |  "99"  |      
|"FCIFSCV1TC4PurcResp"                    |"2220118912341518"  | "4900"              | "20502"    |  "9901" |  "30"  |      
#|"FCIFSCV1TC5PurcResp"                    |"2220118912341518"  | "5231"              | "10502"    |  "9902" |  "30"  |        
|"FCIFSCV1TC6PurcResp"                    |"2220118912341518"  | "4899"              | "90000"    |  "9902" |  "226" |  
|"FCIFSCV1TC7PurcResp"                    |"2220118912341518"  | "4899"              | "35655"    |  "9902" | "226"  |
|"FCIFSCV1TC8PurcResp"                    |"2220118912341518"  | "4899"              | "878787"   |  "9902" |  "226"|    
|"FCIFSCV1TC9PurcResp"                    |"2220118912341518"  | "4899"              | "60000"    |  "9902" |  "226" |      
|"FCIFSCV1TC10PurcResp"                   |"2220118912341518"  | "4899"              | "30000"    |  "9902" |  "226" |      
|"FCIFSCV1TC11PurcResp"                   |"2220118912341518"  | "4899"              | "88888"    |  "9902" |  "226" |        
|"FCIFSCV1TC12PurcResp"                   |"2220228912341540"  | "4899"              | "99999"    |  "9902" |  "226" |  
|"FCIFSCV1TC13PurcResp"                   |"2220228912341540"  | "4900"              | "90000"    |  "9901" |  "30"  |  
|"FCIFSCV1TC14PurcResp"                   |"2220228912341540"  | "4900"              | "55555"    |  "9901" |  "30"  |
|"FCIFSCV1TC15PurcResp"                   |"2220228912341540"  | "4900"              | "44444"    |  "9901" |  "30"  |    
|"FCIFSCV1TC16PurcResp"                   |"2220228912341540"  | "4900"              | "40000"    |  "9901" |  "30"  |      
|"FCIFSCV1TC17PurcResp"                   |"2220228912341540"  | "4900"              | "70000"    |  "9901" |  "30"  |      
#|"FCIFSCV1TC18PurcResp"                   |"2220118912341518"  | "5231"              | "81000"    |  "9901" |  "30"  |        
#|"FCIFSCV1TC19PurcResp"                   |"2220118912341518"  | "5231"              | "91111"    |  "9901" |  "30"  |  
|"FCIFSCV1TC20PurcResp"                   |"2220118912341518"  | "4899"              | "23000"    |  "9902" |  "199" |      
#|"FCIFSCV1TC21PurcResp"                   |"2220118912341518"  | "5231"              | "77777"    |  "9901" |  "30"  |        
#|"FCIFSCV1TC22PurcResp"                   |"2220118912341518"  | "5231"              | "22222"    |  "9901" |  "30"  |
#|"FCIFSCV1TC23PurcResp"                   |"2220118912341518"  | "5231"              | "66666"    |  "9901" |  "30"  |        

#


@FCValid_Scenerio_Fees_and_charge_ATM_Transaction_General

  Scenario Outline: Interchange fee calculation on valid transaction with different Amount 
  
    Given Validation of scenario <TestCaseId> for tran type "01" and CardNumber <CardNumber>
    Given Initiate transaction with "ATM+PIN" CardNumber <CardNumber> TranType "01" mcc <MerchantCategoryCode> Networkid as "1" Amount <Amount> <trackdata1> <trackdata2> <PINdata> <Securitydata> <Pos1> <Pos2> <Pos4> <Pos5> <Pos6> <Pos7> <Pos8> <Pos10>
    When  Acquirer forwards the message to SmartEdge
    And   Message is processed by issuer and repsonse is sent back to the acquirer
    Then  Verify if this acquirer's <TestCaseId> received "000" <feeRuleID> and <feeAmount> 
     
  Examples: 
|TestCaseId                                | CardNumber         |MerchantCategoryCode  |Amount |trackdata1     | trackdata2 |PINdata  |Securitydata  |Pos1 | Pos2 | Pos4 | Pos5 | Pos6 | Pos7 | Pos8 | Pos10 |feeRuleID|feeAmount     |
|"FCIFSCV1TC24PurcResp"                    |"2220228912341540"  |  "6010"              |"27898"| "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"|"1" | "2"  | "1"  | "0"  |  "0" |  "1" |  "0" |  "3"  |"10003" |  "432"  |  

|"FCIFSCV1TC24PurcResp"                    |"2220228912341540"  |  "6010"              |"99999"| "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"|"1" | "2"  | "1"  | "0"  |  "0" |  "1" |  "0" |  "3"  |"10003" |  "1550"  | 
|"FCIFSCV1TC24PurcResp"                    |"2220228912341540"  |  "6010"              |"33333"| "NoTrackData1" |"NoTrackData2"|"NoPINData"|"NoSecData"|"1" | "2"  | "1"  | "0"  |  "0" |  "1" |  "0" |  "3"  |"10003" |  "517"  |   
 

#


#@FCDeclined_Scenerio_Amount_POS_Transaction_stip_General

  Scenario Outline: Interchange fee calculation on Declined transaction Amount subtrantype
  
   Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
    Given Initiate transaction with "Pos Purchase+PIN" CardNumber <CardNumber> TranType "00" mcc <MerchantCategoryCode> Networkid as <NetworkID> Amount <Amount>
    When  Acquirer forwards the message to SmartEdge
    And   Message is processed by issuer and repsonse is sent back to the acquirer
    Then  Verify if this acquirer's <TestCaseId> received  <AcquirerResponse_F39> <AdditionalResponse_F46> <feeRuleID> and <feeAmount>
    #
  #Examples: 
|TestCaseId                                   |CardNumber          |MerchantCategoryCode    |NetworkID |Amount    | AcquirerResponse_F39 |AdditionalResponse_F46   |feeRuleID|feeAmount |       
|"FCIFSCV1TC1PurcResp"                        |"2220118912341518"  |    "4900"              | "1"      | "1000"   |   "951"              |  "881,NA,NA,NA"         |"9901"   |"30.000"  |
#|"FCIFSCV1TC1PurcResp"                        |"2220118912341518"  |    "4900"              | "1"      | "100"    |   "951"              |  "881,NA,NA,NA"         |"9901"   |"30.000"  |
#|"FCIFSCV1TC1PurcResp"                        |"2220118912341518"  |    "4900"              | "1"      | "10"     |   " 951"             |  "881,NA,NA,NA"         |"9901"   |"30.000"  |
#|"FCIFSCV1TC1PurcResp"                        |"2220118912341518"  |    "4900"              | "1"      | "1"      |   "951"              |  "881,NA,NA,NA"         |"9901"   |"30.000"  |
#|"FCIFSCV1TC1PurcResp"                        |"2220118912341518"  |    "4900"              | "1"      | "2"      |   "951"              |  "881,NA,NA,NA"         |"9901"   |"30.000"  |
#|"FCIFSCV1TC1PurcResp"                        |"2220118912341518"  |    "4900"              | "1"      | "200"    |   "951"              |  "881,NA,NA,NA"         |"9901"   |"30.000"  |
#|"FCIFSCV1TC1PurcResp"                        |"2220118912341518"  |    "4900"              | "1"      | "2000"   |   "951"              |  "881,NA,NA,NA"         |"9901"   |"30.000"  |
#|"FCIFSCV1TC1PurcResp"                        |"2220118912341518"  |    "4900"              | "1"      | "2300"   |   "951"              |  "881,NA,NA,NA"         |"9901"   |"30.000"  |
#|"FCIFSCV1TC1PurcResp"                        |"2220118912341518"  |    "4900"              | "1"      | "999"    |   "951"              |  "881,NA,NA,NA"         |"9901"   |"30.000"  |
#|"FCIFSCV1TC1PurcResp"                        |"2220118912341518"  |    "4900"              | "1"      | "9999"   |   "951"              |  "881,NA,NA,NA"         |"9901"   |"30.000"  |
#|"FCIFSCV1TC1PurcResp"                        |"2220118912341518"  |    "4899"              | "1"      | "100"    |   "951"              |  "881,NA,NA,NA"         |"9901"   |"30.000"  |
#|"FCIFSCV1TC1PurcResp"                        |"2220118912341518"  |    "4899"              | "1"      | "9"      |   "951"              |  "881,NA,NA,NA"         |"9901"   |"30.000"  |
#|"FCIFSCV1TC1PurcResp"                        |"2220118912341518"  |    "4899"              | "1"      | "1"      |   "951"              |  "881,NA,NA,NA"         |"9901"   |"30.000"  |



#@FCDeclined_Scenerio_Amount_ATM_Transaction_stip_General

  Scenario Outline: Interchange fee calculation on Declined transaction Amount subtrantype
  
   Given Validation of scenario <TestCaseId> for tran type "00" and CardNumber <CardNumber>
    Given Initiate transaction with "ATM+PIN" CardNumber <CardNumber> TranType "00" mcc <MerchantCategoryCode> Networkid as <NetworkID> Amount <Amount>
    When  Acquirer forwards the message to SmartEdge 
    And   Message is processed by issuer and repsonse is sent back to the acquirer
    Then  Verify if this acquirer's <TestCaseId> received  <AcquirerResponse_F39> <AdditionalResponse_F46> <feeRuleID> and <feeAmount>
  #Examples: 
|TestCaseId                                   |CardNumber          |MerchantCategoryCode    |NetworkID |Amount    | AcquirerResponse_F39 |AdditionalResponse_F46   |feeRuleID|feeAmount |       

#|"FCIFSCV1TC2PurcResp"                        |"2220118912341518"  | "4901"              | "3"      | "20000"|   "904"             |  "719"|






     

