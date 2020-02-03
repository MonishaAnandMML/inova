@PipelineFix
Feature: Member profile Test scenerio
 


 @MemberProfileCheck
  Scenario Outline: Validate member profile checks for PAN, Source Endpoint,Destination Endpoint,TranType,MCC
  
  Given Validation of scenario <TestCaseId> for tran type <TranType> and CardNumber <CardNumber>
  Given Initiate <TranType> <transactionclassification> transaction for <CardNumber> CVV as <cvv> by setting value <Value> in field <FieldName> , field id <FieldID>and acqId <AcqInstitutionId> 
  When  Acquirer forwards the message to SmartEdge using SourceEndPoint as <SourceEndPointId>
  Then  Verify acquirer response <AcquirerResponse_F39> and <AdditionalResponse_F46>

    
Examples: 

|TestCaseId                                 |transactionclassification          |TranType   | CardNumber         |cvv   |FieldName                                    |FieldID             | Value                        |AcqInstitutionId   |SourceEndPointId|AcquirerResponse_F39 |AdditionalResponse_F46 |
|"MPChkInvPAN"                      |"Pos Purchase+PIN"                  | "00"      |"2220119000010007"  |"0683"      |"PrimaryAccountNumber"                       |"2"                 |  "2220119000010007"           |"900007"           |"23"            | "915"               |"2003"                 |  
#496|"MPChkSC1TC2_InvSrcEP"                 |"Pos Purchase+PIN"                 | "00"      |"222011000000157"   |"SrcEndPoint"                                |"SrcEndPoint"       |  "26"                        | "900007"          |"26"            |"905"                |"2005"                 |  
#515|"MPChkSC1TC3_InvAcqId"                 |"Pos Purchase+PIN"                 | "00"      |"222011000000157"   |"AcqID"                                      |"32"                |  "900004"                    | "900007"          |"23"            |"905"                |"2001"                 |  
|"MPChkInvSrcTranType"               |"ATM+PIN"                          | "01"      |"2220110000000049"  |"0430"      |"TranType"                                   |"3"                 |  "010000"                    | "900007"          |"23"            |"902"                |"2007,2009"                 |  
|"MPChkInvSrcMCC"                    |"Pos Purchase+PIN"                 | "00"      |"2220110000000049"  |"0430"      |"MCC"               |"26"                |  "1731"                      |"900007"           |"23"            | "902"               |"2009"                 |  
|"MPChkInvDestTranType"              |"ATM+PIN"                          | "01"      |"2220330000000019"  |"0675"      |"TranType"                                   |"3"                 |  "010000"                    | "900004"          |"11"            |"902"                |"2006,2008"                 |  
|"MPChkInvDestMCC"                   |"Pos Purchase+PIN"                 | "00"      |"2220330000000019"  |"0675"      |"MCC"                                        |"26"                |  "1731"                      |"900004"           |"11"            | "902"               |"2008"                 |  
|"MPChkInvSrcDestMCC"                |"Pos Purchase+PIN"                 | "00"      |"2220110000000049"  |"0430"      |"MCC"                                        |"26"                |  "1761"                      |"900007"           |"23"            | "902"               |"2008,2009"            |  
|"MPChkInvFwdRoute"                  |"Pos Purchase+PIN"                 | "00"      |"2220110000000049"  |"0430"      |"FWdRoute"                                   |"33"                |  "900444"                    |"900007"           |"23"            | "905"               |"2002"                 |

 

@MemberProfileCheckForwardRoute
  Scenario Outline: validate member profile checks for Forward Route Using PAN, Source Endpoint, Destination Endpoint, TranType,MCC via Forward Institution Id

  Given Validation of scenario <TestCaseId> for tran type <TranType> and CardNumber <CardNumber>
  Given Initiate <TranType> <transactionclassification> transaction for <CardNumber> CVV as <cvv> by setting value <Value> in field <FieldName> , field id <FieldID>and FwdId <FwdInstitutionId> 
  When  Acquirer forwards the message to SmartEdge using SourceEndPoint as <SourceEndPointId> and via FwdRoute
  Then  Verify acquirer response <AcquirerResponse_F39> and <AdditionalResponse_F46> on FwdRoute
    
Examples: 
 |TestCaseId                          |transactionclassification          |TranType   | CardNumber         |cvv    |FieldName                                |FieldID            | Value                        |FwdInstitutionId   |SourceEndPointId|AcquirerResponse_F39 |AdditionalResponse_F46 |
 
 |"MPChkInvFWRoute"              |"Pos Purchase+PIN"                 | "00"      |"2220110000000049"  |"0430"    |"AcqId"                                   |"32"              |  "900007"                    |"900444"           |"24"            | "904"               |"2004"                 |
 

  
 #@MemberProfileCheckCombinations
 Scenario Outline: Validate member profile checks for different combinations Using PAN, Source Endpoint, Destination Endpoint, TranType,MCC via Forward Institution Id

  Given Validation of scenario <TestCaseId> for tran type <TranType> and CardNumber <CardNumber>
  Given Initiate transaction with <TranType> <transactionclassification> <CardNumber> by setting Firstvalue <Value1> in  Firstfield <FieldName1> ,Firstfield id <FieldID1> ,Secondvalue <Value2> in Secondfield <FieldName2> ,Secondfield id <FieldID2>and acqId <AcqInstitutionId> 
  When  Acquirer forwards the message to SmartEdge using SourceEndPoint as <SourceEndPointId>
  Then  Verify acquirer response <AcquirerResponse_F39> and <AdditionalResponse_F46>


#Examples: 
|TestCaseId                                         |transactionclassification          |TranType   | CardNumber             |FieldName1               |FieldID1        | Value1                    |FieldName2                   |  FieldID2               |  Value2             |AcqInstitutionId   |SourceEndPointId     |AcquirerResponse_F39 |AdditionalResponse_F46 |
|"MPChkSC1TC31_InvSrcTranType&SrcMCC"               |"ATM+PIN"                          | "01"      |"2220110000000049"      |TranType"               |"3"             |  "010000"                 |"MCC"                        |"26"                     |"6011"               | "900007"          |"23"                 |"902"                |"2007,2009"            |  
|"MPChkSC1TC32_InvSrcTranType&DestTranType"         |"ATM+PIN"                          | "01"      |"2220330000000019"      |"0430" |"TranType"               |"3"             |  "010000"                 |"TranType"                   |"3"                      |"010000"             | "900007"          |"23"                 |"902"                |"2007,2006"            |  
|"MPChkSC1TC33_InvSrcDescTranType&SrcDestMCC"       |"ATM+PIN"                          | "01"      |"2220330000000019"      |"0430" |"TranType"               |"3"             |  "010000"                 |"MCC"                        |"26"                     |"6011"               |"900007"           |"23"                 | "902"               |"2006,2008,2007,2009"  |  
|"MPChkSC1TC37_InvSrcMCC&DestMCC"                   |"Pos Purchase+PIN"                 | "00"      |"2220330000000019"      |"0430" |"MCC"                    |"26"            |  "1731"                   |"MCC"                        |"26"                     |"1731"               |"900004"           |"11"                 | "902"               |"2008"                 |  
|"MPChkSC1TC38_InvSrcMCC&DestMCC"                   |"Pos Purchase+PIN"                 | "00"      |"2220330000000019"      |"0430" |"MCC"                    |"26"            |  "1731"                   |"MCC"                        |"26"                     |"1731"               |"900007"           |"23"                 | "902"               |"2008,2009"            |  
|"MPChkSC1TC40_InvDestTranType&DestMCC"             |"ATM+PIN"                          | "01"      |"2220330000000019"      |"0430" |"TranType"               |"3"             |  "010000"                 |"Mcc"                        |"26"                     |"6011"               |"900004"           |"11"                 |"902"                |"2006,2008"            |  
|"MPChkSC1TC43_InvDestMCC&SrcDestMCC"               |"Pos Purchase+PIN"                 | "00"      |"2220330000000019"      |"0430" |"MCC"                    |"26"            |  "1731"                   |"MCC"                        |"26"                     |"1761"               |"900004"           |"11"                 | "902"               |"2008,2009"            |  
|"MPChkSC1TC45_InvSrcDestMCC&FwdRoute"              |"Pos Purchase+PIN"                 | "00"      |"2220110000000049"      |"0430" |"MCC"                    |"26"            |  "1761"                   |"FWdRoute"                   |"33"                     |"900444"             |"900007"           |"23"                 | "905"               |"2008,2009,2002"       |  


#511|"MPChkSC1TC10_InvPAN&SrcEP"                    |"Pos Purchase+PIN"                 | "00"      |"2220119000000008"      |"PrimaryAccountNumber    |"2              |  "222011900000018         |"SrcEndPoint"                |SrcEndPoint"             |26"                  |"900007"           |"23"                 | "905"               |"2003,2005,2001"       |  
#515|"MPChkSC1TC11_InvPAN&InvAcqId"                 |"Pos Purchase+PIN"                 | "00"      |"2220119000000008"      |"PrimaryAccountNumber    |"2              |  "222011900000018         |"AcqID"                      |32"                      |900004"              | "900007"          |"23"                 |"905"                |"2003,2001,2005"       |  
#|"MPChkSC1TC12_InvPAN&SrcTranType"                 |"ATM+PIN"                          | "01"      |"2220119000000008"      |"PrimaryAccountNumber    |"2              |  "222011900000018         |"TranType"                   |3"                       |010000"              | "900007"          |"23"                 |"902"                |"2003,2007"            |  
#|"MPChkSC1TC13_InvPAN&SrcMCC"                      |"Pos Purchase+PIN"                 | "00"      |"2220119000000008"      |"PrimaryAccountNumber    |"2              |  "222011900000018         |"MCC"                        |26"                      |010000"              | "900004"          |"11"                 |"902"                |"2003,2009"            |
#|"MPChkSC1TC14_InvPAN&DestTranType"                |"ATM+PIN"                          | "01"      |"2220119000000008"      |"PrimaryAccountNumber    |"2              |  "222011900000018         |"TranType"                   |3"                       |010000"              | "900004"          |"11"                 |"902"                |"2003,2006"            |    
#|"MPChkSC1TC15_InvPAN&DestMCC"                     |"Pos Purchase+PIN"                 | "00"      |"2220119000000008"      |"PrimaryAccountNumber    |"2              |  "222011900000018         |"MCC"                        |26"                      |1731"                |"900004"           |"11"                 | "902"               |"2003,2008"            |  
#|"MPChkSC1TC16_InvPAN&SrcDestMCC"                  |"Pos Purchase+PIN"                 | "00"      |"2220119000000008"      |"PrimaryAccountNumber    |"2              |  "222011900000018         |"MCC"                        |26"                      |1761"                |"900007"           |"23"                 | "902"               |"2003,2008,2009"       |  
#|"MPChkSC1TC17_InvPAN&FwdRoute"                    |"Pos Purchase+PIN"                 | "00"      |"2220119000000008"      |"PrimaryAccountNumber    |"2              |  "222011900000018         |"FWdRoute"                   |33"                      |900444"              |"900007"           |"23"                 | "902"               |"2002,2005,2001"       |  

#496|"MPChkSC1TC18_InvSrcEP&AcqId"                  |"Pos Purchase+PIN"                 | "00"      |"222011000000157"       |"SrcEndPoint"            |"SrcEndPoint"   |  "26"                     |"AcqId"                      |"32"                     |"900004"             |"900007"          |"26"                  |"905"                |"2001,2005"            |  
#|"MPChkSC1TC19_InvSrcEP&SrcTranType"               |"ATM+PIN"                          | "01"      |"2220110000000049"      |"SrcEndPoint"            |"SrcEndPoint"   |  "26"                     |"TranType"                   |"3"                      |"010000"             |"900007"          |"26"                  |"902"                |"2001,2005,2007"       |  
#|"MPChkSC1TC20_InvSrcEP&SrcMCC"                    |"Pos Purchase+PIN"                 | "00"      |"2220110000000049"      |"SrcEndPoint"            |"SrcEndPoint"   |  "26"                     |"MCC"                        |"26"                     |"1731"               |"900007"          |"26"                  | "902"               |"2001,2005,2009"       |  
#|"MPChkSC1TC21_InvSrcEP&DestTranType"              |"ATM+PIN"                          | "01"      |"2220330000000019"      |"SrcEndPoint"            |"SrcEndPoint"   |  "26"                     |"TranType"                   |"3"                      |"010000"             |"900004"          |"26"                  |"902"                |"2001,2005,2006"       |  
#|"MPChkSC1TC22_InvSrcEP&DestMCC"                   |"Pos Purchase+PIN"                 | "00"      |"2220330000000019"      |"SrcEndPoint"            |"SrcEndPoint"   |  "26"                     |"MCC"                        |"26"                     |"1731"               |"900004"          |"26"                  | "902"               |"2001,2005,2008"       |  
#|"MPChkSC1TC23_InvSrcEP&SrcDestMCC"                |"Pos Purchase+PIN"                 | "00"      |"2220110000000049"      |"SrcEndPoint"            |"SrcEndPoint"   |  "26"                     |"MCC"                        |"26"                     |"1761"               |"900007"          |"26"                  | "902"               |"2001,2005,2008,2009"  |  
#|"MPChkSC1TC24_InvSrcEP&FwdRoute"                  |"Pos Purchase+PIN"                 | "00"      |"2220110000000049"      |"SrcEndPoint"            |"SrcEndPoint"   |  "26"                     |"FWdRoute"                   |"33"                     |"900444"             |"900007"          |"26"                  | "902"               |"2002,2001,2005"       |
  
#515|"MPChkSC1TC25_InvAcqId&SrcTranType"            |"Pos Purchase+PIN"                 | "00"      |"222011000000157"       |"AcqID"                  |"32"            |"900004"                   |"TranType"                   |"3"                      |"010000"             | "900004"          |"23"                 |"905"                |"2001,2005,2007"       |  
#|"MPChkSC1TC26_InvAcqId&InvSrcMCC"                 |"Pos Purchase+PIN"                 | "00"      |"2220110000000049"      |"AcqID"                  |"32"            |"900004"                   |"MCC"                        |"26"                     |"1731"               |"900007"           |"23"                 | "902"               |"2001,2005,2009"       |  
#|"MPChkSC1TC27_InvAcqId&InvDestTranType"           |"ATM+PIN"                          | "01"      |"2220330000000019"      |"AcqID"                  |"32"            |"900004"                   |"TranType"                   |"3"                      |"010000"             | "900004"          |"11"                 |"902"                |"2001,2005,2006"       |  
#|"MPChkSC1TC28_InvAcqId&InvDestMCC"                |"Pos Purchase+PIN"                 | "00"      |"2220330000000019"      |"AcqID"                  |"32"            |"900004"                   |"MCC"                        | "26"                    |"1731"               |"900004"           |"11"                 | "902"               |"2001,2005,2008"       |  
#|"MPChkSC1TC29_InvAcqId&InvSrcDestMCC"             |"Pos Purchase+PIN"                 | "00"      |"2220110000000049"      |"AcqID"                  |"32"            |"900004"                   |"MCC"                        |"26"                     |"1761"               |"900004"           |"23"                 | "902"               |"2001,2005,2008,2009"  |  
#|"MPChkSC1TC30_InvAcqId&InvFwdRoute"               |"Pos Purchase+PIN"                 | "00"      |"2220110000000049"      |"AcqID"                  |"32"            |"900004"                   |"FWdRoute"              
#Check below cases
 #Remove|"MPChkSC1TC36_InvSrcMCC&DestTranType"      |"ATM+PIN"                          | "01"      |"2220330000000019"      |"MCC"                    |"26"            |"3"                        |"TranType"                   |  "6011"                 |"010000"             |"900007"           |"23"                 | "902"               |"2009,2006"            | 
 #Remove|"MPChkSC1TC41_InvDestTranType&SrcDestMCC"  |"ATM+PIN"                          | "01"      |"2220330000000019"      |"TranType"               |"3"             |"26"                       |"MCC"                        |  "010000"               |"6011"               |"900007"           |"23"                 | "902"               |"2006,2008,2009"       |    

