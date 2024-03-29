@PipelineFix
Feature: Transaction LifeCyle Scenarios for faliure in request leg

@TLC_ReqLeg_ReqNotSent
Scenario Outline: Validate request leg failed while at acquirer while forwarding to SmartEdge
Given Validation of scenario <TestCaseId> for tran type <TranType> and CardNumber <CardNumber>
Given Acquirer initiates <TranType> advice request for <CardNumber>
When  Acquirer forwards the message to SmartEdge 
Then  Verify acquirer response <AcquirerResponse_F39> and <AdditionalResponse_F46>


Examples:
|TestCaseId    |TranType                          | CardNumber            |AcquirerResponse_F39   |AdditionalResponse_F46|
|"TLC2SC1TC1"|"Purchase_ReversalAdvice_Request" |"2220118912341518"      |      "914"            |  "2101"         |

@TLC_ReqLeg_RespNotProcssd
Scenario Outline: Validate response leg failed while at acquirer processing failure at terminal
Given Validation of scenario <TestCaseId> for tran type <TranType> and CardNumber <CardNumber>
Given Initiate <TranType> transaction for <CardNumber> using <Amount> 
When  Acquirer forwards the message to SmartEdge
And Message is processed by issuer and repsonse is sent back to the acquirer
Then Verify if acquirer received 000 response
But Acquirer initiates "Purchase_ReversalAdvice_Request" advice request for "2220118912341518" 
When Acquirer forwards the message to SmartEdge 
And Message is processed by issuer and repsonse is sent back to the acquirer
Then  Verify acquirer response <AcquirerResponse_F39> and <AdditionalResponse_F46>

Examples:
|TestCaseId    |TranType       | CardNumber            |Amount   |AcquirerResponse_F39   |AdditionalResponse_F46|
| "TLC2SC2TC1" |"Purchase"     |"2220118912341518"      |"10001"|      "000"            |  "2701,2703"         |


@TLC_ReqLeg_ReqTIMEOUT

Scenario: Validate advice processing scenarios for successful completion in case of initial request timed out
Given Validation of scenario "TLC2SC3TC1" for tran type "Purchase" and CardNumber "2220118912341518"
Given Initiate "Purchase" transaction for "2220118912341518" using "10001"
When  Acquirer forwards the message to SmartEdge 
And   Issuer receives the message but does not send the response
Then  Verify if acquirer received 911 response
And   Verify response "911"  received by issuer as part of advice request
And   Acquirer initiates "Purchase_ReversalAdvice_Request" advice request for "2220118912341518"
And   Acquirer forwards the message to SmartEdge 
And   Message is processed by issuer and repsonse is sent back to the acquirer
Then  Verify acquirer response "000" and "2701,2703"


#@TLC_PurchaseAdvice

Scenario Outline: Validate advice processing scenarios for successful completion
Given Validation of scenario <TestCaseId> for tran type "Purchase" and CardNumber "2220118912341518"
Given Acquirer initiates <TranType> advice request for <CardNumber>
When  Acquirer forwards the message to SmartEdge 
And   Message is processed by issuer and repsonse is sent back to the acquirer
Then  Verify acquirer response <AcquirerResponse_F39> and <AdditionalResponse_F46>

#Examples:

|TestCaseId  |TranType                          | CardNumber            |AcquirerResponse_F39   |AdditionalResponse_F46|
| "TLC2SC4TC1"|"Purchase_Advice_Request"         |"2220118912341518"      |      "000"            |  "2701,2703"         |


@TLC_RevAdvReq_OnTIMEOUT
Scenario Outline: Validate advice processing scenarios for timeout on reversal advice request generated by Se platform
Given Validation of scenario <TestCaseId> for tran type "Purchase" and CardNumber "2220118912341518"
Given Initiate "Purchase" transaction for "2220118912341518" using <Amount>
When  Acquirer forwards the message to SmartEdge 
And   Issuer receives the message but does not send the response
Then  Verify acquirer response <AcquirerResponse_F39> and <AdditionalResponse_F46>
And   Verify response <IssuerResponse>  received by issuer as part of advice request
And   Issuer receives the platform generated repeats to acquirer generated reversal request and responds after <RepeatCount> repeats
 And   Verify acquirer response "000" and <AdditionalResponse_F46>


#Examples:

|TestCaseId  |TranType                          | CardNumber              |Amount   |AcquirerResponse_F39   |AdditionalResponse_F46|IssuerResponse|IssuerAdditionalResponse|RepeatCount|SEID|
| "TLC2SC5TC1"|"Purchase_ReversalAdvice_Request" |"2220118912341518"      |"11000" |  "911"            |  "2510,2701,2703"     |  "911"       |  "empty"              |  "1"        |"ABCBKABL001"|
| "TLC2SC5TC2"|"Purchase_ReversalAdvice_Request" |"2220118912341518"      |"11000" |  "911"            |  "2510,2701,2703"         |  "911"        |"empty"              |  "2"        |"ABCBKABL001"|
| "TLC2SC5TC3"|"Purchase_ReversalAdvice_Request" |"2220118912341518"      |"11000" |  "911"            |  "2510,2701,2703"         |  "911"        |"empty"              |  "3"        |"ABCBKABL001"|


#Acq timeout is taking longer than 15 ms(Bug id 773)
@TLC_RevAdvReq_ACQInitiated
Scenario Outline: Validate advice processing scenarios for  reversal advice request generated by Acquirer
Given Validation of scenario <TestCaseId> for tran type "Purchase" and CardNumber "2220118912341518"
Given Initiate "Purchase" transaction for "2220118912341518" using <Amount>
When  Acquirer forwards the message to SmartEdge 
And   Message is processed by issuer and repsonse is sent back to the acquirer
Then  Verify if acquirer received 000 response
But   Acquirer initiates "Purchase_ReversalAdvice_Request" advice request for "2220118912341518" 
When  Acquirer forwards the message to SmartEdge 
And   Issuer receives the message but does not send the response
And   Issuer receives the platform generated repeats to acquirer generated reversal request and responds after <RepeatCount> repeats
And   Verify acquirer response <AcquirerResponse_F39> and <AdditionalResponse_F46>


#Examples:
|TestCaseId  |TranType                          | CardNumber            |Amount   |AcquirerResponse_F39   |AdditionalResponse_F46|RepeatCount|SEID|
| "TLC2SC6TC1"|"Purchase_ReversalAdvice_Request" |"2220118912341518"      |"11000" |  "000"            |  "2701,2703"         | "1"        |"ABCBKABL001"|
| "TLC2SC6TC2"|"Purchase_ReversalAdvice_Request" |"2220118912341518"      |"11000" |  "000"            |  "2701,2703,2711"         | "2"       |"ABCBKABL001"|
| "TLC2SC6TC3"|"Purchase_ReversalAdvice_Request" |"2220118912341518"      |"11000" |  "000"            |  "2701,2703,2711"         | "3"        |"ABCBKABL001"|



