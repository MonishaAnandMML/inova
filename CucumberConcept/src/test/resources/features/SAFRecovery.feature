@SAFOnline

Feature: SAF Recovery scenarios

Scenario Outline: Validate Purchase request processed in STIP when issuer is available

Given Validation of scenario <TestCaseId> for tran type <TranType> and CardNumber <CardNumber>
Given Issuer "ABCBKABL001" has signed off
And   Issuer "ABCBKABL001" signs on in recovery mode
Given Initiate transaction with <transactionclassification> <CardNumber> CVV as <cvv> <CardProductId> <TranType> <merchantcategorycode> <trackData> <PINdata> <CVV2> for Amount <Amount> qualifying <LimitcheckStatus>
When  Acquirer forwards the STIP message to SmartEdge
And   Acquirer updates the transaction details having priority <Priority> in mongo
Then  Verify if acquirer received 951 response
And   Verify that STIP advice message enqueued is received by issuer and response is sent back


Examples:

|TestCaseId     |transactionclassification    |CardNumber            |cvv   |CardProductId    |Priority|TranType   |merchantcategorycode|trackData     |PINdata         |CVV2|Amount        |LimitcheckStatus| 
|"SAFRecovSC1TC1"|"CHIP_PIN_ONPREMISE"         |"2220118912341518"         |"0446"  |"123001"  |"0"       |  "00"     | "5231"             |  "TrackData"  |"PINData" | "CVV2_NotPresent"  |"5000" | "true"         |


@SAFIssuerUnavailable
Scenario Outline: Validate Purchase request processed in STIP when issuer is unavailable

Given Validation of scenario <TestCaseId> for tran type <TranType> and CardNumber <CardNumber>
Given Issuer "ABCBKABL001" has signed off
Given Initiate transaction with <transactionclassification> <CardNumber> CVV as <cvv> <CardProductId> <TranType> <merchantcategorycode> <trackData> <PINdata> <CVV2> for Amount <Amount> qualifying <LimitcheckStatus>
When  Acquirer forwards the STIP message to SmartEdge
And   Acquirer updates the transaction details having priority <Priority> in mongo
Then  Verify if acquirer received 951 response
Then  Issuer "ABCBKABL001" signs on in recovery mode
And  Verify that STIP advice message enqueued is received by issuer and response is sent back

Examples:

|TestCaseId     |transactionclassification    |CardNumber            |cvv   |CardProductId    |Priority|TranType   |merchantcategorycode|trackData     |PINdata         |CVV2|Amount        |LimitcheckStatus| 
|"SAFRecovSC1TC1"|"CHIP_PIN_ONPREMISE"         |"2220118912341518"         |"0446"  |"123001"  |"0"       |  "00"     | "5231"             |  "TrackData"  |"PINData" | "CVV2_NotPresent"  |"5000" | "true"         |


Scenario Outline: Purchase reversal advice request processed in STIP when issuer is unavailable and original request not recovered
Given Validation of scenario <TestCaseId> for tran type <TranType> and CardNumber <CardNumber>
Given Issuer "ABCBKABL001" has signed off
Given Initiate <TranType> transaction for <CardNumber> using <Amount>
When  Acquirer forwards the STIP message to SmartEdge
And   Acquirer updates the transaction details having priority <Priority> in mongo
Then  Verify if acquirer received 951 response
But   Acquirer initiates "Purchase_ReversalAdvice_Request" advice request for <CardNumber>
When  Acquirer forwards the STIP reversal advice having priority <Priority>to SmartEdge
Then  Issuer "ABCBKABL001" signs on in recovery mode
And   Verify that STIP advice message enqueued is received by issuer and response is sent back

#Examples:

|TestCaseId     |transactionclassification     |CardNumber            |Priority|CardProductId    |TranType   |merchantcategorycode|trackData        |PINdata     |CVV2Data            |Amount  |LimitcheckStatus |  
|"SAFChkRC1TC1" |"CHIP_PIN_ONPREMISE"          |"2220110000000049"    |"0"|"123002"         |  "00"     | "5231"             |  "TrackData"    |"PINData"   | "CVV2_NotPresent"  |"5000"  | "true"         |


Scenario Outline: Purchase reversal advice request processed in STIP when issuer is unavailable and original request not recovered
Given Validation of scenario <TestCaseId> for tran type <TranType> and CardNumber <CardNumber>
Given Issuer "ABCBKABL001" has signed off
Given Initiate transaction with <transactionclassification> <CardNumber> <CardProductId> <TranType> <merchantcategorycode> <trackData> <PINdata> <CVV2Data> for Amount <Amount> qualifying <LimitcheckStatus>
When  Acquirer forwards the STIP message to SmartEdge
Then  Verify if acquirer received 951 response
But   Acquirer initiates "Purchase_ReversalAdvice_Request" advice request for <CardNumber>
When  Acquirer forwards the STIP message to SmartEdge
Then  Issuer "ABCBKABL001" signs on in recovery mode
And   Verify that STIP advice message enqueued is received by issuer and response is sent back

#Examples:

|TestCaseId      |CardNumber            |Priority |TranType       |Amount   |
|"STIPChkSC1TC3" |"2220110000000049"     |"0"      |  "00"        |"5000"   |

Scenario Outline: Purchase reversal advice request processed in STIP when issuer is unavailable(for partial reversal)
Given Validation of scenario <TestCaseId> for tran type <TranType> and CardNumber <CardNumber>
Given Initiate <TranType> transaction for <CardNumber> with Amount <Amount>
When  Acquirer forwards the message to SmartEdge
And   Message is processed by issuer and repsonse is sent back to the acquirer
Then  Verify if acquirer received 000 response
And   Issuer "ABCBKABL001" has signed off
But   Acquirer initiates "Purchase_ReversalAdvice_Request" advice request for partial Amount <ReversalAmt> eligible for STIP
When  Acquirer forwards the STIP reversal advice having priority <Priority>to SmartEdge
Then  Issuer "ABCBKABL001" signs on in recovery mode
And   Verify that STIP advice message enqueued is received by issuer and response is sent back

#Examples:

|TestCaseId      |CardNumber            |Priority |TranType       |Amount   |ReversalAmt|  
|"STIPChkSC1TC3" |"2220110000000049"     |"0"      |  "00"        |"23000"   |"5000"    |



#--------Sequential Non-Priority------------#

Scenario: Validate that 10 purchase txns of seq_non_priority recovery mode SE entities are received by issuer in FIFO order

Given Issuer "ABCBKABL001" has signed off
Given Acquirer sends a PosPin transaction to SmartEdge
		|CardNumber      |cvv    |   Priority  |TranClass            |
		|2220118912341518|0446 |"0"       |"CHIP_PIN_ONPREMISE" |
		|2220118912341518|0446|"0"       |"CHIP_PIN_ONPREMISE" |
		|2220118912341518|0446|"0"       |"CHIP_PIN_ONPREMISE" |
		|2220118912341518|0446|"0"       |"CHIP_PIN_ONPREMISE" |
		|2220110000000049|0430|  "0"     |"CHIP_PIN_ONPREMISE" |
		|2220118912341518|0446|"0"       |"CHIP_PIN_ONPREMISE" |
		|2220110000000049|0430|"0"       |"CHIP_PIN_ONPREMISE" |
		|2220110000000049|0430|"0"       |"CHIP_PIN_ONPREMISE" |
		|2220110000000049|0430|"0"       |"CHIP_PIN_ONPREMISE" |
		|2220118912341518|0446|"0"       |"CHIP_PIN_ONPREMISE" |

	When Issuer "ABCBKABL001" signs on in recovery mode
	Then Verify that STIP advice message enqueued is received by issuer and response is sent back
	
#	
#	##--------Sequential Priority------------#
Scenario: Validate that 10 purchase txns of seq_priority recovery mode SE entities are received by issuer in FIFO order

Given Issuer "XYZBKABL001" has signed off
Given Acquirer sends a PosPin transaction to SmartEdge
	  |CardNumber      |cvv    |Priority  |TranClass            |
    |2220660000009895|0918     |"2"       |"CHIP_PIN_ONPREMISE" |
    |2220228912341523|0570    |"1"       |"CHIP_PIN_ONPREMISE" |
		|2220228912341523|0570    |"1"       |"CHIP_PIN_ONPREMISE" |
		|2220660000009895|0918    | "2"       |"CHIP_PIN_ONPREMISE" |
		|2220660000009895|0918    | "2"       |"CHIP_PIN_ONPREMISE" |
		|2220660000009895|0918    | "2"       |"CHIP_PIN_ONPREMISE" |
		|2220228912341540|0067    |"1"       |"CHIP_PIN_ONPREMISE" |
		|2220228912341540|0067    |"1"       |"CHIP_PIN_ONPREMISE" |
		|2220660000009481|0998    |"2"       |"CHIP_PIN_ONPREMISE" |
		|2220660000009481|0998    |"2"       |"CHIP_PIN_ONPREMISE" |
When Issuer "XYZBKABL001" signs on in recovery mode
Then Verify that STIP advice message enqueued is received by issuer and response is sent back
	
#--------Parallel Non-Priority------------#
Scenario: Validate that 10 purchase txns of parallel_non_priority recovery mode SE entities are received by issuer in FIFO order

Given Issuer "PQRBKABL001" has signed off
Given Acquirer sends a PosPin transaction to SmartEdge to be recovered in parallel
	  |CardNumber      |cvv    |Priority  |TranClass            |
		|2220330000000035|0247    |"0"       |"CHIP_PIN_ONPREMISE" |
		|2220330000000035|0247    |"0"       |"CHIP_PIN_ONPREMISE" |
		|2220330000000035|0247    |"0"       |"CHIP_PIN_ONPREMISE" |
  	|2220330000000035|0247    |"0"       |"CHIP_PIN_ONPREMISE" |
		|2220330000000035|0247    |"0"       |"CHIP_PIN_ONPREMISE" |
		|2220330000000035|0247    |"0"       |"CHIP_PIN_ONPREMISE" |
		|2220330000000233|0408    |"0"       |"CHIP_PIN_ONPREMISE" |
		|2220330000000233|0408    |"0"       |"CHIP_PIN_ONPREMISE" |
		|2220330000000233|0408    |"0"       |"CHIP_PIN_ONPREMISE" |
		|2220330000000233|0408    |"0"       |"CHIP_PIN_ONPREMISE" |
When Issuer "PQRBKABL001" signs on in recovery mode for parallel recovery
Then Verify that STIP advice message enqueued is received parallely by issuer "PQRBKABL001" and response is sent back
	
#--------Parallel Priority------------#
Scenario: Validate that 10 purchase txns of parallel_priority recovery mode SE entities are received by issuer in FIFO order

Given Issuer "BOABKABL001" has signed off
Given Acquirer sends a PosPin transaction to SmartEdge to be recovered in parallel
	|CardNumber      |cvv    |Priority  |TranClass            |
	|2220550000000061|0616    |"1"       |"CHIP_PIN_ONPREMISE" |
	|2220550000000061|0616    |"1"       |"CHIP_PIN_ONPREMISE" |
	|2220770000000123|0575    |"2"       |"CHIP_PIN_ONPREMISE" |
	|2220770000000123|0575    |"2"       |"CHIP_PIN_ONPREMISE" |
	|2220550000000061|0616    |"1"       |"CHIP_PIN_ONPREMISE" |
	|2220550000000061|0616    |"1"       |"CHIP_PIN_ONPREMISE" |
	|2220770000000123|0575    |"2"       |"CHIP_PIN_ONPREMISE" |
	|2220770000000123|0575    |"2"       |"CHIP_PIN_ONPREMISE" |
  |2220550000000061|0616    |"1"       |"CHIP_PIN_ONPREMISE" |
  |2220550000000061|0616    |"1"       |"CHIP_PIN_ONPREMISE" |
When Issuer "BOABKABL001" signs on in recovery mode for parallel recovery
Then Verify that STIP advice message enqueued is received parallely by issuer "BOABKABL001" and response is sent back

