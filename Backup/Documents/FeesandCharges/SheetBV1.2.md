B  Consumer Prepaid Exempt & Regulated and Other Exempt Products Interchange Reimbursement Fees 

CARD PRESENT:

        Transactions like purchase,Chip,Mag,pin,AFD,TandE,NFC,AVS,FALLBACK 
       
BASIC TRANSACTION IDENTIFICATION :
        CARDSCHEME: { <<"1">>, [ "Everyday", "EVRD", "Consumer-retail" ] 
                     { <<"2">>, [ "Classic", "CLSC", "Consumer-retail"] }
                     { <<"3">>, [ "Grand", "GRND", "Consumer-retail" ] }.
                     { <<"4">>, [ "Elite", "ELIT", "Consumer-retail" ] }.
                     { <<"5">>, [ "Exclusive", "CONX", "Consumer-retail" ] }.
                     { <<"6">>, [ "SME Business", "SMEB", "Business" ] }.
                     { <<"7">>, [ "SME Business Exclusive", "SMEX", "Business" ] }.
                     { <<"8">>, [ "Purchase", "PCOM", "Commercial" ] }.
                     { <<"9">>, [ "Corporate Travel", "CTEL", "Commercial" ] }.
                     { <<"10">>, [ "Government Purchase", "GOVP", "Government" ] }.
                     { <<"11">>, [ "Government Travel", "GTEL", "Government" ] }.
         BRANDID : 1-EdgePAY,2-FastPAY
         CARDTYPE: PREPAID
         BUISSNESS ZONE CODE:D840001,D356001

SUPERMARKET PREPAID
         MCC should be one of the mccs listed in sheet A "supermarket for card present". 
         NETWORKID 
         RESP CODE
         SEID:ABCBKABL001
         SUBTRANTYPE as Purchase,TANDE
         ACCOUNTRANGE EXEMPT :     222077000000, 222077999999 followed by  CARDPRODUCTID :123001
         ACCOUNTRANGE REGULATED :  222088000000, 222088999999 followed by  CARDPRODUCTID :123001
         
    Fees is  pecrentage +unit [Exempt: 1.15% + $0.15($0.35 Cap) Regulated 0.05% + $0.21*]
        
    RETAIL, PREPAID 
         MCC should be one of the mccs listed in sheet A "Retail for card present". 
         NETWORKID
         RESP CODE 
         SEID:ABCBKABL001
         SUBTRANTYPE as Purchase
         ACCOUNTRANGE EXEMPT :     222077000000, 222077999999 followed by  CARDPRODUCTID :123001
         ACCOUNTRANGE REGULATED :  222088000000, 222088999999 followed by  CARDPRODUCTID :123001   
   Fees is pecrentage + unit [Exempt: 1.15% + $0.15 Regulated 0.05% + $0.21* ]

   AUTOMATED FUEL DISPENSER(AFD), PREPAID
         NETWORKID
         RESP CODE 
         SEID:ABCBKABL001
         SUBTRANTYPE as AFD
         ACCOUNTRANGE EXEMPT :     222077000000, 222077999999 followed by  CARDPRODUCTID :123001
         ACCOUNTRANGE REGULATED :  222088000000, 222088999999 followed by  CARDPRODUCTID :123001    
     Fees is pecrentage + unit [Exempt: 1.15% + $0.15($0.95 Cap) Regulated 0.05% + $0.21* ]

   SERVICE STATION, PREPAID
          Mcc should be one of the mccs listed in sheet A "Service Station for card present". 
         NETWORKID
         RESP CODE 
         SEID:ABCBKABL001
         SUBTRANTYPE as PURCHASE
         ACCOUNTRANGE EXEMPT :     222077000000, 222077999999 followed by  CARDPRODUCTID :123001
         ACCOUNTRANGE REGULATED :  222088000000, 222088999999 followed by  CARDPRODUCTID :123001   
     Fees is pecrentage + unit [Exempt: 1.15% + $0.15($0.95 Cap)  Regulated 0.05% + $0.21* ]

   SMALL TICKET, PREPAID
          Based on the Amount  : (Lesser Amount should set be as Small Ticket) Lesser Priority in the priority list (any MCC)
         NETWORKID
         RESP CODE 
         AMOUNT
         SEID:ABCBKABL001
         SUBTRANTYPE as PURCHASE
         ACCOUNTRANGE EXEMPT :     222077000000, 222077999999 followed by  CARDPRODUCTID :123001
         ACCOUNTRANGE REGULATED :  222088000000, 222088999999 followed by  CARDPRODUCTID :123001 
   Fees is pecrentage + unit [Exempt: 1.60% + $0.05^1 Regulated 0.05% + $0.21*]
         All Ticket Sizes - Visa Purchasing card rates apply

   RESTAURANT, PREPAID 
          Mcc should be one of the mccs listed in sheet A "Service Station for card present".
         NETWORKID
         RESP CODE 
         SEID:ABCBKABL001
         SUBTRANTYPE as PURCHASE,TandE
         ACCOUNTRANGE EXEMPT :     222077000000, 222077999999 followed by  CARDPRODUCTID :123001
         ACCOUNTRANGE REGULATED :  222088000000, 222088999999 followed by  CARDPRODUCTID :123001
  fees is pecrentage + unit [Exempt: 1.15% + $0.15   Regulated 0.05% + $0.21* ]

   HOTEL AND CAR RENTAL CARD PRESENT, PREPAID 
         Mcc should be one of the mccs listed in sheet A "Hotel and Car Rental for card present".
         NETWORKID
         RESP CODE 
         SEID:ABCBKABL001
         SUBTRANTYPE as PURCHASE,TandE
         ACCOUNTRANGE EXEMPT :     222077000000, 222077999999 followed by  CARDPRODUCTID :123001
         ACCOUNTRANGE REGULATED :  222088000000, 222088999999 followed by  CARDPRODUCTID :123001  
    fees is pecrentage + unit [Exempt: 1.15% + $0.15   Regulated 0.05% + $0.21* ]
         

   PASSENGER TRANSPORT CARD PRESENT, PREPAID
          Mcc should be one of the mccs listed in sheet A "Hotel and Car Rental for card present".
         NETWORKID
         RESP CODE 
         SEID:ABCBKABL001
         SUBTRANTYPE as PURCHASE,TandE
         ACCOUNTRANGE EXEMPT :     222077000000, 222077999999 followed by  CARDPRODUCTID :123001
         ACCOUNTRANGE REGULATED :  222088000000, 222088999999 followed by  CARDPRODUCTID :123001   
   fees is pecrentage + unit [Exempt: 1.15% + $0.15   Regulated 0.05% + $0.21* ]

   TRAVEL SERVICE, PREPAID 
           Mcc should be one of the mccs listed in sheet A "Hotel and Car Rental for card present". 
         NETWORKID
         RESP CODE 
         SEID:ABCBKABL001
         SUBTRANTYPE as PURCHASE,TandE
         ACCOUNTRANGE EXEMPT :     222077000000, 222077999999 followed by  CARDPRODUCTID :123001
         ACCOUNTRANGE REGULATED :  222088000000, 222088999999 followed by  CARDPRODUCTID :123001   

      Fees is pecrentage + unit [Exempt: 1.15% + $0.15   Regulated 0.05% + $0.21* ]
           

   RETAIL KEY ENTRY, PREPAID2 
         Mcc should be one of the mccs listed in sheet A "Retail key entry for card present
         NETWORKID
         RESP CODE 
         SEID:ABCBKABL001
         SUBTRANTYPE as PURCHASE,MOTO
         ACCOUNTRANGE EXEMPT :     222077000000, 222077999999 followed by  CARDPRODUCTID :123001
         ACCOUNTRANGE REGULATED :  222088000000, 222088999999 followed by  CARDPRODUCTID :123001   

      Fees is pecrentage + unit [Exempt: 1.75% + $0.20    Regulated 0.05% + $0.21* ]
          POSDATACODE: 
          T - Pre-Authorised Mail/Telephone Order : KEYENTRY_MAILORDER,KEYENTRY_TELEORDER
          370,6***201*****,KEYENTRY_MAILORDER,,,,,,,,,,,,,,,,,,
          380,6***301*****,KEYENTRY_TELEORDER,,,,,,,,,,,,,,,,,,
          
 
       PURCHASE,MOTO - Does it not come under card not present ? 

CARD NOT PRESENT TRANSACTIONS : Transactions belongs to ecom or moto or teleorder


    RETAIL 2 – CARD NOT PRESENT,PREPAID 
          check sheet A "Retail2 for card not present". 
          NETWORKID
         RESP CODE 
         SEID:ABCBKABL001
         SUBTRANTYPE as P2P,P2P - STANDIN,PURCHASE,ECOM
         ACCOUNTRANGE EXEMPT :     222077000000, 222077999999 followed by  CARDPRODUCTID :123001
         ACCOUNTRANGE REGULATED :  222088000000, 222088999999 followed by  CARDPRODUCTID :123001   

  Fees is pecrentage + unit [Exempt: 0.65% + $0.15 ($2.00 Cap)   Regulated 0.05% + $0.21*]
          
    
    DEBT REPAYMENT 2
    DEBT REPAYMENT (NO FEE) 
          Check sheet A "Retail2 for card not present". 
         NETWORKID
         RESP CODE 
         SEID:ABCBKABL001
         SUBTRANTYPE as PURCHASE,AVS-(RECURRING)
         ACCOUNTRANGE EXEMPT :     222077000000, 222077999999 followed by  CARDPRODUCTID :123001
         ACCOUNTRANGE REGULATED :  222088000000, 222088999999 followed by  CARDPRODUCTID :123001   

   Fees is pecrentage + unit [Exempt:0.65% + $0.15($2.00 Cap)  , 0.65% + $0.15 ($0.65 Cap) Regulated 0.05% + $0.21*]
          EMI Transactions 
          POS DATA CODE: 
          (RECURRING 390,****901*****)
    
    UTILITY, PREPAID 
           Mcc should be one of the mccs listed in sheet A "utility for card not present". 
         NETWORKID
         RESP CODE 
         SEID:ABCBKABL001
         SUBTRANTYPE  ?
         ACCOUNTRANGE EXEMPT :     222077000000, 222077999999 followed by  CARDPRODUCTID :123001
         ACCOUNTRANGE REGULATED :  222088000000, 222088999999 followed by  CARDPRODUCTID :123001   

   Fees is pecrentage + unit [Exempt: $0.65   Regulated 0.05% + $0.21* ]
           
    
    GOVERNMENT 
           Mcc should be one of the mccs listed in sheet A "government for card not present".
         NETWORKID
         RESP CODE 
         SEID:ABCBKABL001
         SUBTRANTYPE  *
         ACCOUNTRANGE EXEMPT :     222077000000, 222077999999 followed by  CARDPRODUCTID :123001
         ACCOUNTRANGE REGULATED :  222088000000, 222088999999 followed by  CARDPRODUCTID :123001   
 
  Fees is pecrentage + unit [Exempt: 0.65% + $0.15($2.00 Cap) Regulated 0.05% + $0.21* ] 
    
    CARD NOT PRESENT, PREPAID
           Check sheet A "card not present for card not present". 
         NETWORKID
         RESP CODE 
         SEID:ABCBKABL001
         SUBTRANTYPE  PURCHASE,MOTO and P2P,P2P - STANDIN
         ACCOUNTRANGE EXEMPT :     222077000000, 222077999999 followed by  CARDPRODUCTID :123001
         ACCOUNTRANGE REGULATED :  222088000000, 222088999999 followed by  CARDPRODUCTID :123001   
    
Fees is pecrentage + unit [Exempt: 1.75% + $0.20   Regulated 0.05% + $0.21* ] 
           POS DATA CODE
           "420,****4*******,CARD_NOT_PRESENT_STANDIN,,,,,,,,,,,,,,,,,,
           "430,****1*******,CARD_NOT_PRESENT,,,,,,,,,,,,,,,,,,
           Ecom,Moto,Mailorder,Teleorder
           Ecom :250,***SS010****
           "330,0***201*****,MAILORDER,,,,,,,,,,,,,,,,,,
           "340,0***301*****,TELEORDER,,,,,,,,,,,,,,,,,,
           "350,1***201*****,MAILORDER,,,,,,,,,,,,,,,,,,
           "360,1***301*****,TELEORDER,,,,,,,,,,,,,,,,,,
           "370,6***201*****,KEYENTRY_MAILORDER,,,,,,,,,,,,,,,,,,
           "380,6***301*****,KEYENTRY_TELEORDER,,,,,,,,,,,,,,,,,,


    E-COMMERCE BASIC, PREPAID 
           check sheet A " e-commerce basic for card not present".
         NETWORKID
         RESP CODE 
         SEID:ABCBKABL001
         SUBTRANTYPE  PURCHASE,ECOM
         ACCOUNTRANGE EXEMPT :     222077000000, 222077999999 followed by  CARDPRODUCTID :123001
         ACCOUNTRANGE REGULATED :  222088000000, 222088999999 followed by  CARDPRODUCTID :123001   
     
   Fees is pecrentage + unit [Exempt: 1.75% + $0.20   Regulated 0.05% + $0.21* ] 
           Ecom :250,***SS010****
      
    E-COMMERCE PREFERRED RETAIL, PREPAID
           mcc should be one of the mccs listed in sheet A "e-commerce preferred retail for card not present". 
         NETWORKID
         RESP CODE 
         SEID:ABCBKABL001
         SUBTRANTYPE  PURCHASE,ECOM
         ACCOUNTRANGE EXEMPT :     222077000000, 222077999999 followed by  CARDPRODUCTID :123001
         ACCOUNTRANGE REGULATED :  222088000000, 222088999999 followed by  CARDPRODUCTID :123001   
     
   Fees is pecrentage + unit [Exempt: 1.75% + $0.20   Regulated 0.05% + $0.21* ] 
            Ecom :250,***SS010****
    
    E-COMMERCE PREFERRED HOTELAND CAR RENTAL, PREPAID 
            Mcc should be one of the mccs listed in sheet A "e-commerce preferred hotel and car rental for card not present". 
         NETWORKID
         RESP CODE 
         SEID:ABCBKABL001
         SUBTRANTYPE  PURCHASE ECOM,P2P,P2P-STANDIN
         ACCOUNTRANGE EXEMPT :     222077000000, 222077999999 followed by  CARDPRODUCTID :123001
         ACCOUNTRANGE REGULATED :  222088000000, 222088999999 followed by  CARDPRODUCTID :123001   
     
    fees is pecrentage + unit [Exempt: 1.75% + $0.20    Regulated 0.05% + $0.21* ] 
            Ecom :250,***SS010****
    
    E-COMMERCE PREFERREDPASSENGER TRANSPORT, PREPAID
            mcc should be one of the mccs listed in sheet A "e-commerce preferred passenger transport for card not present". 
         NETWORKID
         RESP CODE 
         SEID:ABCBKABL001
         SUBTRANTYPE  PURCHASE ECOM,P2P,P2P-STANDIN
         ACCOUNTRANGE EXEMPT :     222077000000, 222077999999 followed by  CARDPRODUCTID :123001
         ACCOUNTRANGE REGULATED :  222088000000, 222088999999 followed by  CARDPRODUCTID :123001  
      Fees is pecrentage + unit [Exempt: 1.75% + $0.20    Regulated 0.05% + $0.21* ] 
            Ecom :250,***SS010**** 
    
    HOTEL AND CAR RENTAL CARD NOT PRESENT, DEBIT
           Mcc should be one of the mccs listed in sheet A "hotel and car rental for card not present". 
         NETWORKID
         RESP CODE 
         SEID:ABCBKABL001
         SUBTRANTYPE  P2P,P2P-STANDIN
         ACCOUNTRANGE EXEMPT :     222077000000, 222077999999 followed by  CARDPRODUCTID :123001
         ACCOUNTRANGE REGULATED :  222088000000, 222088999999 followed by  CARDPRODUCTID :123001   
     
   Fees is pecrentage + unit [Exempt: 1.75% + $0.20    Regulated 0.05% + $0.21* ] 
           POS DATA CODE:
           420,****4*******,CARD_NOT_PRESENT_STANDIN,,,,,,,,,,,,,,,,,,
           430,****1*******,CARD_NOT_PRESENT,,,,,,,,,,,,,,,,,,
           
    
    PASSENGER TRANSPORT CARD NOT PRESENT, PREPAID
           Mcc should be one of the mccs listed in sheet A "passenger transport for card not present".
         NETWORKID
         RESP CODE 
         SEID:ABCBKABL001
         SUBTRANTYPE  P2P,P2P-STANDIN
         ACCOUNTRANGE EXEMPT :     222077000000, 222077999999 followed by  CARDPRODUCTID :123001
         ACCOUNTRANGE REGULATED :  222088000000, 222088999999 followed by  CARDPRODUCTID :123001   
    Fees is pecrentage + unit [Exempt: 1.75% + $0.20    Regulated 0.05% + $0.21* ] 
           POS DATA CODE:
           420,****4*******,CARD_NOT_PRESENT_STANDIN,,,,,,,,,,,,,,,,,,
           430,****1*******,CARD_NOT_PRESENT,,,,,,,,,,,,,,,,,,
           
    
    ACCOUNT FUNDING, PREPAID 
            "account funding for card not present". ? Wallet transactions ,  loading the card from original debit accoun 
            NETWORKID
         RESP CODE 
         SEID:ABCBKABL001
         SUBTRANTYPE  ?
         ACCOUNTRANGE EXEMPT :     222077000000, 222077999999 followed by  CARDPRODUCTID :123001
         ACCOUNTRANGE REGULATED :  222088000000, 222088999999 followed by  CARDPRODUCTID :123001 
 fees is pecrentage + unit [Exempt: 1.80% + $0.20   Regulated 0.05% + $0.21* ] 
          
    
    ELECTRONIC INTERCHANGE REIMBURSEMENT FEE (EIRF), PREPAID3
          "electronic interchange reimbursement fee for card not present".? 
         NETWORKID
         RESP CODE 
         SEID:ABCBKABL001
         SUBTRANTYPE  P2P,P2P-STANDIN
         ACCOUNTRANGE EXEMPT :     222077000000, 222077999999 followed by  CARDPRODUCTID :123001
         ACCOUNTRANGE REGULATED :  222088000000, 222088999999 followed by  CARDPRODUCTID :123001 
    fees is pecrentage + unit [Exempt: 1.80% + $0.20   Regulated 0.05% + $0.21* ] 
           POS DATA CODE: ?
           420,****4*******,CARD_NOT_PRESENT_STANDIN,,,,,,,,,,,,,,,,,,
           430,****1*******,CARD_NOT_PRESENT,,,,,,,,,,,,,,,,,,
For example, a transaction that is keyed-in to a terminal without address verification 
information instead of being swiped may fall into the EIRF category. Call your processor if you see a lot 
of EIRF transactions on your statement because it’s a good indication that 
something is not being processed correctly.

            
    STANDARD INTERCHANGE REIMBURSEMENT FEE, PREPAID

       fees is pecrentage + unit [Exempt: 1.90% + $0.25   Regulated 0.05% + $0.21* ] 

you’ll receive Standard rates when your sales don’t meet any of the basic qualifications


Note: Visa specific So not used in our environment[* Issuers that certify to Visa their compliance with the interim fraud prevention standards will receive an additional US $0.01.]
      FeeCap is not implemented .
      DEBIT3 - 3 EIRF transactions from AFDs and service stations are eligible for a US $0.95 cap
      DEBIT2 - 2 means Not applicable to PIN-authenticated transactions. 

VISA NOTES: Fees in this table are listed in U.S. dollars; fees are paid to cardholder financial institutions.
* Issuers that certify to Visa their compliance with the interim fraud prevention standards will receive an additional US $0.01.
  1
   Small-ticket interchange rate on PIN-authenticated Visa Debit transactions applies only to Visa Network 002 transactions.
  2
   Not applicable to PIN-authenticated transactions.
  3
   EIRF transactions from AFDs and service stations are eligible for a US $0.95 cap


