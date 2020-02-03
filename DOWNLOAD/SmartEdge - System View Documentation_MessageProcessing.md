<meta charset='UTF-8'><meta name='viewport' content='width=device-width initial-scale=1'> 
<link href="themecss.css" rel="Stylesheet" type="text/CSS"></link>


## Message Processing

Message processing is an integral activity for any payment processing industry and in the SmartEdge system, it processes the transaction messages which receive from an external or payment entity. 

When a message is initiated at the merchant location or ATM or from an online application, and that message is directed to the Acquirer entity. The Acquirer entity does preliminary, essential checks, and internal validations then it routes the message to the SmartEdge System to process. Different Acquirers have different message formats such as ISO-8583-1987, ISO-8583-1993, ISO-20022, JSON or XML formats. The SmartEdge system is architected in a way to handle all sorts of above-mentioned message formats and processes the messages.

Below is the illustrated example of  the SmartEdge Message Processing flow:

<img src="./img/MessageProcessing.PNG" width="88%">



The SmartEdge system contains various payment components and services and within that, it has two important components to handle the messaging services and it is given below:

1. SmartEdge Gateway Services
2. SmartEdge Services

**SmartEdge Gateway Services** — All the external messages are received firstly at the SmartEdge Gateway Services. In the gateway point itself, the received messages are validated and the decision has been taken whether to proceed further and forward to the SmartEdge Services or to reject and send back the messages to the Acquirer entity if any bad or invalid messages are encountered. 

The SmartEdge Gateway performs header validations along with MTI checks by reading the header portion of the message and identifies whether the received message is a valid message for executable or not. If the received message is valid, then it routes that message to the SmartEdge Services to process.

**SmartEdge Services** — For the received messages, the SmartEdge system performs parser, validation checks, format checks and matching of messages in order to approve or decline the transactions. The received messages are processed by performing a set of tasks and those tasks are listed below:

- Parsing of Messages

- Message Validation

- Message Handler

- Message Storing

- Message Builder

- Select Endpoint

- Message Forwarder

- Message Processing

  

**Parsing of Messages:** The Parser is a SmartEdge Service that is used to deal with the inward messages from SmartEdge Gateway and the parser perform a reading of the received messages and convert those into SmartEdge Context to process. The SmartEdge system is capable of handling various message format types (ISO-8583-1987, ISO-8583-1993, ISO-20022, JSON or XML) that are sent by the Acquiring entity. The parser can decode, read, understand those format messages and convert them into SmartEdge Context. 

The parsing is done by using the set of services and it is explained below:

- Header Parser — The Header Parser is the first thing is to be executed and parser the header portion of the message. It uses header formats and header field definitions to parse the header and it contains information of the header such as (Field ID, Sub Field ID, SE Field Tag, Field Name, Data Type, Minimum length, Maximum length, Fixed Variable, Padding Detail, Category, Lookup Type, Lookup Reference, Special Instructions, Special Operation Set, Parser Compute Function, and User Defined Fields).
- Data Parser — The Data Parser that contains the actual information of the transaction message and that is parsed by data parser. It uses data field definitions to parse the data and it contains information of the data such as (Parent Field ID, Sub Field ID, SE Field Tag, Field Name, Data Type, Min length, Max length, Fixed Variable, Padding detail, Category, Lookup Type, Lookup Reference, Special Instructions,  and Special Operation Set).
- JSON Data Parser — The SmartEdge Platform is capable of handling various ISO Message formats and one of the ISO message formats is JSON. The SmartEdge uses JSON Data Parser service with the help of (MTI to Landing Service Mapping — which is used to identify the message formats) to handle and parse the JSON format message into SE context which is used internally.  

The SmartEdge Context message format is one of the ISO specified formats that is followed in the SmartEdge System to understand and process the transaction messages internally. 



**Message Validation:** After the parser service is executed, the validation of the message will be done and it performs a certain set of validation procedures that are defined below:

- Header Validation — The header portion of the message is validated using the Header Validator service and it uses header format profile information's to validate. The Header Format contains the following field parameters (Parent_Field_ID, Sub_Field_ID, SE_Field_tag, Position, Sub_Position, Is_Sub Field, Field_Name, Field_name_override_flag, Tag_Name, Data Type, Min_length, Max_length, Fixed-Variable, Padding_detail, Source with/without Function to Compute,Category, Lookup Type, Lookup Ref, Special_Ins, Special_OP Set, Parser Compute Function, Is_User_Defined_Field).

- Value Validation — The Value validation is done based on lookup or range, some specific field has a list of possible values or range that needs to be validated. Based on statically maintained lookup tables value validation is done.

- Data Type and Length Validation — In the message fields, the properties of the data type and length field value are validated.

- Data Validation — The data portion of the message is validated using the Data Validator services and it includes (Core Field Validator, Non-Core Field Validator, Dependent Field Validator, Cross Field Validator, and Special Condition Field Validator). These five important field validators are explained below:

  - Core Field Validator  — The Core Field validator is the most important field to be validated. In the message, it checks for the critical fields to be present or not. In case, the critical fields are not present in the data message then at that stage itself, the SmartEdge system stops proceeding and sends back the message to the Acquirer by stating the reason for rejection. The Core Field validator performs on (Field Format Validations and Field Value Validations). Below are the important core field parameters that are checked in the process.

    - MTI

    - Processing Code TranType

    - Function Code

    - Acquiring Institution Id Code

    - Retrieval Reference Number

    - Card Acceptor Terminal Id

    - Card Acceptor Id Code

    - Original Function Code

        

  - Non-Core Field Validator — The Non-Core Field validator is used to validate non-critical fields in the message. In case, the non-critical fields are not present in the data message then it identifies its respective reject codes for the non-core fields and adds those reject codes in the message and send for message processing. There two types of reject codes been used and they are (1.Hard Reject Codes and 2.Soft Reject Codes), the hard reject code stops proceeding further, whereas the soft reject code allows to executed further by adding corresponding error code values in the message. Below is the list of non-core field parameters that are checked in the process.

    - Primary Account Number
    - Processing Code
    - Amount Transaction
    - Transmission Date and Time
    - Systems Trace Audit Number
    - Date and Time Local Transaction
    - Date Expiration
    - Date Settlement
    - POS Data Code
    - Card Sequence Number
    - Message Reason Code
    - Merchant Category Code
    - Original Amount
    - Forwarding Institution Id Code
    - Track Data 2
    - Track Data 3
    - Authorization Id Response 
    - Response Code
    - Service Restriction Code
    - Card Acceptor Name and Location
    - Track Data 1
    - Additional Response
    - Additional Data 1
    - Transaction ID
    - Currency Code Transaction
    - PIN Data
    - Security Related Control Information
    - Additional Amounts
    - Integrated Circuit Card System Related Data
    - Original Data Elements
    - Network Management Information Code
    - Destination Institution Id
    - Account Identification 1
    - Account Identification 2
    - Key Data 1
    - Bill Payments
    - Fees and Charges Data
    - Account Identification Temp
    

    
  - Dependent Field Validator — For certain field validations, there should be few supporting or dependent fields that need to be present in the message and it could be "Must Fields" and "Must not Fields". To validate those dependent fields, this Dependent Field validator is used. Below is the list of dependent field attributes:
  
    - For "Amount Transaction", the "Currency Code Transaction" is a must field and the must not field is "TranType"  and "Currency Code Transaction" with value is zero.
    - For "Card Sequence Number", the "Primary Account Number" is a must field.
    - For "Card Acceptor Terminal Id", the "Merchant Category Code, Card Acceptor Id Code, Card Acceptor Name, Location Address, City, State, and Country" are must fields.
    - For "Card Acceptor Id Code", the "Card Acceptor Terminal Id, Card Acceptor Name and Location Address, City, State, and Country" are must fields.
    - For "Card Acceptor Name and Location", the "Merchant Category Code, Card Acceptor Terminal Id, Card Acceptor Id Code" are must fields.
    - For "Currency Code Transaction", the "Amount Transaction" is a must field.
    - For "Account Identification1 and Account Identification2", the "Destination Institution Id" is a must field.
  
    
  
  - Cross Field Validator — A cross-field validation is used to perform certain transaction-based rule mapping for transaction types. Using transaction classification, the rules are mapped with priorities and it has both (must field and must field value) checks. Some of the cross-field validations are categorized based on MTI + Function Code + Processing Code Level. Below is an example of a transaction-based cross-field validation matrix:
  
      | #.   | Transaction Classification              | Short Code       |
      | ---- | --------------------------------------- | ---------------- |
      | 1.   | POS Purchase + EMV                      | CHIPPOS          |
      | 2.   | ATM + EMV                               | CHIPATM          |
      | 3.   | POS Purchase + EMV + FB                 | CHIPPOS_FALLBK   |
      | 4.   | ATM + EMV + FB                          | CHIPATM_FALLBK   |
      | 5.   | ATM with PIN                            | ATM              |
      | 6.   | Fund / Money Transfer / Original Credit | P2P              |
      | 7.   | Prepaid Card LOAD MONEY                 | LOADPPI          |
      | 8.   | ECOM-Card Not Present with CVV2         | ECOM             |
      | 9.   | Balance Enquiry - POS                   | BALPOS           |
      | 10.  | Balance Enquiry - ATM                   | BALATM           |
      | 11.  | Bill Payment                            | BILLPAY          |
      | 12.  | POS Purchase + PIN                      | POS PIN          |
      | 13.  | MOTO                                    | MOTO             |
      | 14.  | Recurring Payment                       | RECUR            |
      | 15.  | Contact Less - Magnetic Stripe          | NFCPUR           |
      | 16.  | Account Verification Request            | ACVS             |
      | 17.  | Address Verification Request            | AVS              |
      | 18.  | Prepaid Card Activation                 | ACTVPPI          |
      | 19.  | POS Purchase                            | POSPUR           |
      | 20.  | Manual Cash                             | MANUAL           |
      | 21.  | Quasi Cash                              | QCASH            |
      | 22.  | POS Purchase Card Not Present           | POS Purchase CNP |
      | 23.  | POS Purchase Card Present               | POS Purchase CP  |
  
  
  
  - Special Condition Field Validator — The Special Condition Field validation exists only in certain scenarios by checking the fields that are very specific or customized. Some of the special conditions  fields are given below:
    - Field 4: Amount Transaction
    - Field 11: Systems Trace Audit Number
    - Field 14: Date Expiration
    - Field 37: Retrieval Reference Number
    - Field 38: Authorization ID Response Code
    - Field 41: Card Acceptor Terminal Id
    - Field 42: Card Acceptor Id Code
    - Field 102: Account Identification 1
    - Field 103: Account Identification 2



- Tran Type Finder — The Tran Type Finder service is used to identify and classify what type of transaction is the received message. It uses MTI, Function Code and Processing Code for identification of the transaction type. Below is the categorized list of transaction types:

  - Purchase Transaction

  - Purchase Authorization Transaction

  - Cash Transaction

  - Cash Authorization Transaction

  - Debit Adjustment Transaction

  - Purchase with Cashback Transaction

  - Quasi Cash Transaction

  - Refund Transaction

  - Credit Adjustment Transaction

  - Original Credit Transaction

  - Balance Enquiry Transaction

  - Card-to-Card Transfer Transaction

  - Person-to-Person Transfer Transaction

  - Bill Payment Transaction

  - Purchase Reversal Transaction

  - Cash Reversal Transaction



- Tran Type Field Validator — The Tran Type Validator is used to validate whether the field parameters of the transaction type is correct or not. This is done by identifying the presence of "Must Fields" and the non-presence of "Must Not Fields" in each Tran Type. For example, below is the sample validation parameters for the Purchase Authorization Transaction:

    - Must Fields
      - Primary Account Number
      - Processing Code Tran Type
      - Processing Code From Account
      - Processing Code To Account
      - Amount Transaction
      - System Trace Audit Number
      - Date and Time Local Transaction
      - Date Expiration
      - POS Data Code Input Capability
      - POS Data Code Authentication Capability
      - POS Data Code Capture Capability
      - POS Data Code Operating Environment
      - POS Data Code Cardholder Present 
      - POS Data Code Card Data Input Mode
      - POS Data Code Authentication Method
      - POS Data Code Authentication Entity
      - POS Data Code Output Capability
      - POS Data Code Terminal Capability
      - POS Data Code PIN Capture Capability
      - Merchant Category Code
      - Acquiring Institution Id Code
      - Retrieval Reference Number
      - Card Acceptor Terminal Id
      - Card Acceptor Id Code
      - Card Acceptor Name Location Address
      - Card Acceptor Name Location City
      - Card Acceptor Name Location State
      - Card Acceptor Name Location Country
      - Currency Code Transaction
    - Must Not Fields

      - Authorization Id Response
      - Date Settlement
      - Message Reason Code
      - Original Amount
      - Response Code
      - Original Function Code
      - Original Acquiring Institution Id Code
      - Original Retrieval Reference Number
      - Original Card Acceptor Terminal Id
      - Original Card Acceptor Id Code
      - Original Authorization Id Response




- Tran Type and MCC Checks — The Tran Type and MCC Checks is a service that is used for transaction type checks and merchant category checks in the received message. It identifies the source and destination id with the help of route id, network id; based on the network configured merchant category groups the MCC checks are processed for the corresponding received messages. The MCC checks are performed by using a list of merchant related parameters and it is given below:

  - Merchant Category Code Description
  - Merchant Category Group
  - Transaction Group
  - Transaction Group Description
  - ISO_Merchant Category Group Code
  - ISO_Merchant Category Group Code Description



**Messaging Handler**: During the time of validating or processing the transaction messages the expected results are not obtained or data value, formats are invalid, then to handle those kinds of messages is taken care of by the Message Handler service. In the SmartEdge system, there are two types of message handlers and it is given below:

- Bad Message Handler — During the Core Field validations, if the critical fields are not present in the message, then it is handled by the Bad Message Handler. It stops proceeding the message processing further, and it just replaces the header part, adds a tag "Bad Message" and send back the transaction message to the Acquirer entity.
- Drop Message Handler — The Drop Message Handler plays the role of dropping a transaction message at any time in the message processing cycle. Mainly, it drops the messages when there is a timeout response, late response, delayed response for a request from Issuer, Acquirer entity. It adds the respective reject codes in the message, logs it and drops the message by sending back the message to the respective entities.



**Messaging Storing**: Certain data in the message are stored in the SmartEdge database in a very secured manner for future reference, logs and cross-checking purposes. The SmartEdge follows the international compliance body specified storage and retrieval mechanism for storing the transaction messages.

If the payment entity specifies and indicates some customer sensitive data are not to store anywhere outside the system, then those data information is not stored in the SmartEdge secured database.

- Transaction Datastore — The Transaction Datastore is one of the services that is used for storing the transaction messages in a secured distributed database. The SmartEdge system, stores most of the receiving messages in a database and the information in the database is utilized for multiple purposes such as (cross verification of the messages, logs, duplicate transaction, presentment, clearing and settlement, calculation of fees and charges extra).
- Retriever — A Retriever is a SmartEdge service that is used to retrieve the transaction messages that are stored in the SmartEdge secured distributed database (Riak). This Retriever service is mainly used for cross verification, cross-checking, identification of duplicate or repetitive messages in a transaction. If any duplicate transaction message is encountered, the SmartEdge system identifies that transaction and stops proceeding further processing of the message and adds a tag as "Duplicate Message" and appropriate reject codes and sends back to the Acquirer entity.



**Message Builder**: In certain situations, the SmartEdge system has SLA (Service Level Agreement) with the Issuer Entity to forward the valid messages to the Issuer Endpoint for processing of approval or decline of transactions. Also, the Issuer Entity specifies its desire ISO message format to accept, process and send responses to the SmartEdge system.

The Message Builder performs the activity of converting the SmartEdge Context into Issuer specified or configured message format and routes that message format data to the Issuer endpoint via SmartEdge Gateways services.

The SmartEdge Services provides a respective response feedbacks to the Acquirer and the Issuer Entity; whenever it receives a request from those entities. Also, the SmartEdge Services provide feedback response messages in their configured message specific formats.



**Select Endpoint:**

When the messages are parsed and validated, then those messages are built using message builder service. The built message needs to forward to the Issuer endpoint for further processing of message for approval or decline of transactions. In order to forward the message, the SmartEdge system finds the most appropriate destination endpoint by using a method called "Select Endpoint" service. 

The Select Endpoint determines the right destination endpoint from a set of endpoints that are configured with Issuer Endpoint. A set of endpoints is configured with the processer by the Issuer during the processor setup. A Select Endpoint uses certain pre-defined logic, calculations, and metrics to find the right destination endpoint and it uses some matching criteria which are given below:

1. It checks for what are all the endpoints are "Signed ON".
2. It checks for which are all the endpoints are not "Logged Off".
3. It checks for which are all the endpoints are not "Time-out".

Among the above matching scenarios, and also along with that the Select Endpoint chooses a right endpoint using some attributes:

- During the processor setup, the Issuer entity specifies certain preferences list for endpoint selection. It proceeds with the preference list first. 
- Along with the preference list, the Select Endpoint identifies the strongest or healthiest connection using health metrics such as (echo test, heartbeat test, signed off interval, scores, etc..,).
- Out of these preference list, the processing levels are defined with priorities and the top priority endpoint is selected as destination endpoint to forward the message.  



**Message Forwarder:**

After selecting the destination endpoint, the built messages need to forward to the issuer entity. The Message forwarder service stores the Issuer endpoint details in the message and forwards the processed message to the SmartEdge Gateway service. The SmartEdge Gateway Service sends the message to the Issuer endpoint.



**Message Processing**: If the format, length, values and required fields are validated then the message is processed under various scenarios or having various SLA (Service Level Agreement) with the Issuer Entities. 

- Messages can be processed in the SmartEdge System on-behalf of the Issuer Entity.
- Messages can be processed in the SmartEdge System only during when an Issuer is unavailable.
- Messages should be processed only by the Issuer endpoint; hence necessary validations checks for the messages are performed at the SmartEdge Services and forward to the Issuer endpoint to process.



### Message Format

The SmartEdge system supports processing of various kind of message formats such as (ISO-8583-1987, ISO-8583-1993, ISO-20022, JSON or XML), hence it is easier to handle and provide requests and responses back to the Issuer and Acquirer entity on their desire message formats. 

Below is one of the ISO specified message format which SmartEdge system uses internally as (SmartEdge  Context) to process the messages. The message format consists of following field attributes:

- Message Length
- Header
- MTI – Message Type Identifier
- Primary Bitmap
- Secondary Bitmap
- Ternary Bitmap
- Data Fields



### Message Structure

A Message Structure is a combination of storage locations to hold the financial details in a transaction message. Below is the illustrated representation of a message structure that is used for transmitting the data in a well-secured way. 

<img src="./img/MessageStructure.PNG" width="88%">

**Message Header:**

A Message Header is a front-face for any transaction message and it consists of various networking and ID information. A Message Header having a storage space up to 22Bytes.

Below is the complete list of details which a Message Header can contain:

- Header Format ID
- Network ID
- Message Format ID
- Destination End Point ID
- Source End Point ID
- Message Status
- SmartEdge Device ID
- Dynamic Timeout 
- Correlation ID
- Extended Header 



**Message Length:**

Message Length is a part of Message Header and it plays a vital role in identifying and segregating the messages separately (starting of the message and end of the message) during handling of bulk messages from several endpoints. The Message Length is usually represented in a method of HEX format. 

Following is the logic to compute the length of the message:

Message Length = HEX [00 00 03 1D] = DEC [797]

In the above-given example; it excludes the message length field by 4 bytes and it includes TPDU Header which is 797 bytes.



**MTI (Message Type Identifier):**

An MTI field is used to identify the type of messages, its associated classes, and the sub-class. Each byte in MTI have a specific meaning which is explained as a sample using (ISO-8583-1987, ISO-8583-1993) standard in the below table:

| **Version Number** | **Message Class**         | **Message Function** | **Transaction Originator** |
| ------------------ | ------------------------- | -------------------- | -------------------------- |
| 0- ISO 8583:87     | 1- Authorization          | 0 – Request          | 0 – Acquirer               |
| 1- ISO 8583:93     | 2- Financial              | 1 – Response         | 1 – Acquirer Repeat        |
|                    | 3- File Action            | 2 – Advice           | 2 – Issuer                 |
|                    | 4- Reversal or Chargeback | 3 – Advice Response  | 3 – Issuer Repeat          |
|                    | 5- Reconciliation         | 4 – Notification     | 4 – Other                  |
|                    | 6- Administrative         |                      | 5 – Other Repeat           |
|                    | 7- Fee Collection         |                      |                            |
|                    | 8- Network Management     |                      |                            |

**Bitmaps:**

A Bitmap structure is a mechanism that is used to indicate where the data fields are present in the message structure. Generally, three types of Bitmaps are used for identification and the usage of a bitmap is not restricted only by three types it can be extended as per the design need of the message structure. 

Below are the three types of Bitmap structure:

1. Primary Bitmap
2. Secondary Bitmap
3. Ternary Bitmap

A typical example of (ISO-8583) pattern bitmap structure with (Primary, Secondary, and Ternary) is illustrated in the below table which defines the presence of fields within the messages. 

| **Primary Bitmap** - **(Mandatory)** | **Secondary Bitmap** - **(Optional)** | **Ternary Bitmap** - **(Optional)** | **Description**                                              |
| ------------------------------------ | ------------------------------------- | ----------------------------------- | ------------------------------------------------------------ |
| Bit (1) = 0                          | -                                     | -                                   | It indicates data is present only in the Primary Bitmap of the data field and no data in the Secondary and Ternary Bitmaps. |
| Bit (1) = 1                          | Bit (1) = 0                           | -                                   | It indicates data is present in the Primary Bitmap and Secondary Bitmap of the data field and no data in the Ternary Bitmap. |
| Bit (1) = 1                          | Bit (1) = 1                           | Bit (1) = 0                         | It indicates data is present in the Primary Bitmap, Secondary Bitmap, and Ternary Bitmap of the data field. |
| Represents Field (1 to 64)           | Represents Field (65 to 128)          | Represents Field (129 to 192)       | -                                                            |

**Fields or Data Elements:**

Using the Bitmaps (Primary, Secondary, and Ternary) structure details it is easier to identify where the Fields or Data Elements are present in the message. These Fields or Data Elements contains the original details of the transaction message. It consists of Field Type and Field Description and that is explained in the below table:

| **Field Type**   | **Field Description**                                        |
| ---------------- | ------------------------------------------------------------ |
| Fixed            | No Field Length is used                                      |
| LLVAR or (...xx) | Where (0 < LL < 100); which means two leading digits LL specifies the field length of the VAR field. |
| LLLVAR or (…xxx) | Where (0 < LLL < 1000); which means three leading digits LLL specifies the field length of the VAR field. |

The LL and LLL  field type is built in a HEX or ASCII format. A VAR field can be compressed or ASCII depending on the data element type. Likewise, the LL can be 1 or 2 bytes. For example: If compressed is one HEX byte, then the '27x means 27 VAR bytes to follow. If it is an ASCII format, the two bytes '32x, '37x means there are 27 bytes to follow. The 3-digit field length LLL uses 2 bytes with a leading '0' nibble if compressed, or 3 bytes if ASCII. 

The format of a VAR data element depends on the data element type. If numeric then it will be compressed, for example; 87456 will be represented by 3 HEX bytes '087456x. If ASCII format, then one byte for each digit or character is used — this can be illustrated as '38x, '37x, '34x, '35x, '36x.



### Message Matching

Message Matching is a concept which aided to handle bulk or numerous messages when the SmartEdge System receives from various Acquirer entities as "Request Messages". The SmartEdge services use the Message Matching concept and provide corresponding "Response Messages" for the received or processed "Request Messages" effectively.

The SmartEdge Service performs this message matching by checking and ensuring key MTI data fields and matching field criteria. In general, two sets of messages (“Request” and “Response”) that needs to be matched for getting approval or decline for any financial transactions. 

The below table illustrates an example for message matching with the help of MTI FROM, MTI TO data and Matching Fields Criteria:

| **#.** | **MTI FROM**            | **MTI TO**              | **Matching Field Criteria**                                  |
| ------ | ----------------------- | ----------------------- | ------------------------------------------------------------ |
| 1.     | 1,11,01,21,01,230       | 1,11,01,21,01,230       | 1). Function Code – Field 24                                                                                                2). Acquirer ID – Field 32                                                            3). Retrieval Reference Number – Field 37                             4). Card Acceptor Terminal ID – Field 41                                     5). Card Acceptor ID – Field 42 |
| 2.     | 1,40,01,40,11,42,01,420 | 1,41,01,430             | 1). Function Code – Field 24                                                     2). Acquirer ID – Field 32                                                            3). Retrieval Reference Number – Field 37                          4). Card Acceptor Terminal ID – Field 41                                  5). Card Acceptor ID – Field 42                                      6). Authorization Response Code – Field 38 |
| 3.     | 1,10,01,20,01,220       | 1,40,01,40,11,42,01,420 | 1). Function Code – Field 24                                                     2). Acquirer ID – Field 32                                                            3). Retrieval Reference Number – Field 37                          4). Card Acceptor Terminal ID – Field 41                                  5). Card Acceptor ID – Field 42                                      6). Authorization Response Code – Field 38 |

 

### Authorization Services

A comprehensive list of verification checks and authentications are performed in the SmartEdge system to validate and verify for financial transaction messages. Below is the list of services that are performed during Authorization Service:

1. PIN Verification - The PIN is a (Personal Identification Number) and it is a unique number for a card to process transactions and during authorizations, the PIN value will be verified. 
2. CVV Verification - The CVV is a (Card Verification Value) and it is a three-digit unique number for a card to process online transactions and during authorizations, the CVV value will be verified. 
3. CVV2 Verification - The CVV2 is a (Card Verification Value2) and it is a three-digit unique number for a card to process on card-not-present scenario transactions and during authorizations, the CVV2 value will be verified to reduce the loss on fraud transactions.
4. Chip Authentication - The Chip Authentication is a method of verifying the card data during POS-related transactions through the integrated secured chip that is present in the card. The cardholder details are read and transferred in a securely to process transactions, and during authorizations, the chip data will be verified.
5. PIN Translation - It is a security mechanism that is followed during ATM, POS and eCom transactions. A keyed or entered PIN data needs to be translated from a clear text format into an encrypted format. The SmartEdge System uses a highly secure mechanism for PIN translation service to safeguard the cardholder confidential data.
6. Card Expiration Checks - During the authorization process, the details of the card expiry month and year information will be checked and verified to process the transaction. 
7. Cardholder Database Verification - During the authorization process, the details of the cardholder data (Card Number, Cardholder Name, Card Expiration Period, CVV) are checked and verified to process the transaction. 
8. Multicurrency Service - In certain situations, the settlement currency is not the same as the Acquirer or merchant accepted currency, especially during cardholder international transactions. In such situations, the Issuer needs to convert the amount and settle for a merchant in their local currency. The SmartEdge system performs the currency conversion service and settles the amount in a merchant local currency. 



