Sheet A Consumer Check Card Exempt and Regulated Interchange Reimbursement Fees

CARD PRESENT:

        Transactions like purchase,Chip,Mag,pin,AFD,TandE,NFC,AVS,FALLBACK        
BASIC TRANSACTION IDENTIFICATION :
        CARDSCHEME:  
                     { <<"5">>, [ "Exclusive", "CONX", "Consumer-retail" ] }.
                     
         BRANDID : 1-EdgePAY,2-FastPAY
         CARDTYPE: DEBIT
         BUISSNESS ZONE CODE:D840001,D356001
   SUPERMARKET DEBIT
         MCC should be one of the mccs listed in sheet A "supermarket for card present". 
         NETWORKID 
         RESP CODE
         SEID: *
         SUBTRANTYPE as Purchase
         ACCOUNTRANGE EXEMPT :     222088000000, 222088999999 followed by  CARDPRODUCTID :123004
         ACCOUNTRANGE REGULATED :  222099000000, 222099999999 followed by  CARDPRODUCTID :123005
         
    Fees is  pecrentage +unit [Exempt: $0.30 Regulated 0.05% + $0.21*]
        
    RETAIL, DEBIT 
         MCC should be one of the mccs listed in sheet A "Retail for card present". 
         NETWORKID
         RESP CODE 
         SEID:*
         SUBTRANTYPE as Purchase
         ACCOUNTRANGE EXEMPT :     222088000000, 222088999999 followed by  CARDPRODUCTID :123004
         ACCOUNTRANGE REGULATED :  222099000000, 222099999999 followed by  CARDPRODUCTID :123005  
   Fees is pecrentage + unit [Exempt: 0.80% + $0.15  Regulated 0.05% + $0.21* ]

   AUTOMATED FUEL DISPENSER(AFD), DEBIT
         NETWORKID
         RESP CODE 
         SEID:ABCBKABL001
         SUBTRANTYPE as AFD
         ACCOUNTRANGE EXEMPT :     222088000000, 222088999999 followed by  CARDPRODUCTID :123004
         ACCOUNTRANGE REGULATED :  222099000000, 222099999999 followed by  CARDPRODUCTID :123005    
     fees is pecrentage + unit [Exempt: 0.80% + $0.15($0.95 Cap) Regulated 0.05% + $0.21* ]

   SERVICE STATION, DEBIT
          Mcc should be one of the mccs listed in sheet A "Service Station for card present". 
         NETWORKID
         RESP CODE 
         SEID: *
         SUBTRANTYPE as PURCHASE
         ACCOUNTRANGE EXEMPT :     222088000000, 222088999999 followed by  CARDPRODUCTID :123004
         ACCOUNTRANGE REGULATED :  222099000000, 222099999999 followed by  CARDPRODUCTID :123005   
   fees is pecrentage + unit [Exempt: 0.80% + $0.15($0.95 Cap) Regulated 0.05% + $0.21* ]

   SMALL TICKET, DEBIT
          Based on the Amount  : (Lesser Amount should set be as Small Ticket) Lesser Priority in the priority list (any MCC)
         NETWORKID
         RESP CODE 
         AMOUNT
         SEID:*
         SUBTRANTYPE as PURCHASE
         ACCOUNTRANGE EXEMPT :     222088000000, 222088999999 followed by  CARDPRODUCTID :123004
         ACCOUNTRANGE REGULATED :  222099000000, 222099999999 followed by  CARDPRODUCTID :123005
   fees is pecrentage + unit [Exempt: 1.55% + $0.041  Regulated 0.05% + $0.21*]
         All Ticket Sizes - Visa Purchasing card rates apply

   RESTAURANT, DEBIT 
          Mcc should be one of the mccs listed in sheet A "RESTAURANT" for card present".
         NETWORKID
         RESP CODE 
         SEID:*
         SUBTRANTYPE as PURCHASE,TandE

         ACCOUNTRANGE EXEMPT :     222088000000, 222088999999 followed by  CARDPRODUCTID :123004
         ACCOUNTRANGE REGULATED :  222099000000, 222099999999 followed by  CARDPRODUCTID :123005
  fees is pecrentage + unit [Exempt: 1.19% + $0.10  Regulated 0.05% + $0.21* ]

   HOTEL AND CAR RENTAL CARD PRESENT, DEBIT 
         mcc should be one of the mccs listed in sheet A "Hotel and Car Rental for card present".
         NETWORKID
         RESP CODE 
         SEID:*
         SUBTRANTYPE as PURCHASE,TandE
         ACCOUNTRANGE EXEMPT :     222088000000, 222088999999 followed by  CARDPRODUCTID :123004
         ACCOUNTRANGE REGULATED :  222099000000, 222099999999 followed by  CARDPRODUCTID :123005
    fees is pecrentage + unit [Exempt: 1.19% + $0.10  Regulated 0.05% + $0.21* ]
         

   PASSENGER TRANSPORT CARD PRESENT, DEBIT 
          mcc should be one of the mccs listed in sheet A "PASSENGER TRANSPORT for card present".
         NETWORKID
         RESP CODE 
         SEID:*
         SUBTRANTYPE as PURCHASE,TandE
         ACCOUNTRANGE EXEMPT :     222088000000, 222088999999 followed by  CARDPRODUCTID :123004
         ACCOUNTRANGE REGULATED :  222099000000, 222099999999 followed by  CARDPRODUCTID :123005  
   fees is pecrentage + unit [Exempt: 1.19% + $0.10  Regulated 0.05% + $0.21* ]

   TRAVEL SERVICE, DEBIT 
           mcc should be one of the mccs listed in sheet A "TRAVEL SERVICE for card present". 
         NETWORKID
         RESP CODE 
         SEID:ABCBKABL001
         SUBTRANTYPE as PURCHASE,TandE
        ACCOUNTRANGE EXEMPT :     222088000000, 222088999999 followed by  CARDPRODUCTID :123004
         ACCOUNTRANGE REGULATED :  222099000000, 222099999999 followed by  CARDPRODUCTID :123005  

           fees is pecrentage + unit [Exempt: 1.19% + $0.10  Regulated 0.05% + $0.21* ]
           

   RETAIL KEY ENTRY, DEBIT2 
         Mcc should be one of the mccs listed in sheet A "Retail key entry for card present
         NETWORKID
         RESP CODE 
         SEID:ABCBKABL001
         SUBTRANTYPE as PURCHASE,KEYENTRY
        ACCOUNTRANGE EXEMPT :     222088000000, 222088999999 followed by  CARDPRODUCTID :123004
         ACCOUNTRANGE REGULATED :  222099000000, 222099999999 followed by  CARDPRODUCTID :123005

    fees is pecrentage + unit [Exempt: 1.65% + $0.15   Regulated 0.05% + $0.21* ]
          POSDATACODE: 
          T - Pre-Authorised Mail/Telephone Order : KEYENTRY_MAILORDER,KEYENTRY_TELEORDER
          370,6***201*****,KEYENTRY_MAILORDER,,,,,,,,,,,,,,,,,,
          380,6***301*****,KEYENTRY_TELEORDER,,,,,,,,,,,,,,,,,,
          
 
        

CARD NOT PRESENT TRANSACTIONS : Transactions belongs to ecom or moto or teleorder


    RETAIL 2 – CARD NOT PRESENT,DEBIT 
          check sheet A "Retail2 for card not present". 
          NETWORKID
         RESP CODE 
         SEID:ABCBKABL001
         SUBTRANTYPE as (ECOM)
        ACCOUNTRANGE EXEMPT :     222088000000, 222088999999 followed by  CARDPRODUCTID :123004
         ACCOUNTRANGE REGULATED :  222099000000, 222099999999 followed by  CARDPRODUCTID :123005
  fees is pecrentage + unit [Exempt: 0.65% + $0.15($2.00 Cap)   Regulated 0.05% + $0.21*]
          
    
    DEBT REPAYMENT 2
    DEBT REPAYMENT (NO FEE) 
          Check sheet A "Retail2 for card not present". 
         NETWORKID
         RESP CODE 
         SEID:ABCBKABL001
         SUBTRANTYPE as -(RECURRING) 
        ACCOUNTRANGE EXEMPT :     222088000000, 222088999999 followed by  CARDPRODUCTID :123004
         ACCOUNTRANGE REGULATED :  222099000000, 222099999999 followed by  CARDPRODUCTID :123005
   fees is pecrentage + unit [Exempt: 0.65% + $0.15 ($2.00 Cap) , 0.65% + $0.15 ($0.65 Cap) Regulated 0.05% + $0.21*]
          EMI Transactions 
          POS DATA CODE: 
          (RECURRING 390,****901*****)
    
    UTILITY, DEBIT 
           mcc should be one of the mccs listed in sheet A "utility for card not present". 
         NETWORKID
         RESP CODE 
         SEID:ABCBKABL001
         SUBTRANTYPE  (ECOM)
         ACCOUNTRANGE EXEMPT :     222088000000, 222088999999 followed by  CARDPRODUCTID :123004
         ACCOUNTRANGE REGULATED :  222099000000, 222099999999 followed by  CARDPRODUCTID :123005

   fees is pecrentage + unit [Exempt: $0.65   Regulated 0.05% + $0.21* ]
           
    
    GOVERNMENT 
           mcc should be one of the mccs listed in sheet A "government for card not present".
         NETWORKID
         RESP CODE 
         SEID:ABCBKABL001
         SUBTRANTYPE  (ECOM)
        ACCOUNTRANGE EXEMPT :     222088000000, 222088999999 followed by  CARDPRODUCTID :123004
         ACCOUNTRANGE REGULATED :  222099000000, 222099999999 followed by  CARDPRODUCTID :123005
 
  fees is pecrentage + unit [Exempt: 0.65% + $0.15($2.00 Cap)    Regulated 0.05% + $0.21* ] 
    
    CARD NOT PRESENT, DEBIT 
           Check sheet A "card not present for card not present POSDAATACODE and MOTO PosDATACODE and purchasekeyentry". 
         NETWORKID
         RESP CODE 
         SEID:*
         SUBTRANTYPE  (MOTO)
         ACCOUNTRANGE EXEMPT :     222077000000, 222077999999 followed by  CARDPRODUCTID :123004
         ACCOUNTRANGE REGULATED :  222088000000, 222088999999 followed by  CARDPRODUCTID :123005   
    
fees is pecrentage + unit [Exempt: 1.65% + $0.15  Regulated 0.05% + $0.21* ] 
       
    E-COMMERCE BASIC, DEBIT 
           check sheet A " e-commerce basic for card not present".
         NETWORKID
         RESP CODE 
         SEID:ABCBKABL001
         SUBTRANTYPE  PURCHASE,ECOM
         ACCOUNTRANGE EXEMPT :     222088000000, 222088999999 followed by  CARDPRODUCTID :123004
         ACCOUNTRANGE REGULATED :  222099000000, 222099999999 followed by  CARDPRODUCTID :123005  
     
   fees is pecrentage + unit [Exempt: 1.65% + $0.15  Regulated 0.05% + $0.21* ] 
           Ecom :250,***SS010****
      
    E-COMMERCE PREFERRED RETAIL, DEBIT
           mcc should be one of the mccs listed in sheet A "e-commerce preferred retail for card not present". 
         NETWORKID
         RESP CODE 
         SEID:*
         SUBTRANTYPE  ECOM
         ACCOUNTRANGE EXEMPT :     222088000000, 222088999999 followed by  CARDPRODUCTID :123004
         ACCOUNTRANGE REGULATED :  222099000000, 222099999999 followed by  CARDPRODUCTID :123005 
     
   fees is pecrentage + unit [Exempt: 1.60% + $0.15   Regulated 0.05% + $0.21* ] 
            Ecom :250,***SS010****
    
    E-COMMERCE PREFERRED HOTELAND CAR RENTAL, DEBIT 
            mcc should be one of the mccs listed in sheet A "e-commerce preferred hotel and car rental for card not present". 
         NETWORKID
         RESP CODE 
         SEID:*
         SUBTRANTYPE  TandE,
         ACCOUNTRANGE EXEMPT :     222088000000, 222088999999 followed by  CARDPRODUCTID :123004
         ACCOUNTRANGE REGULATED :  222099000000, 222099999999 followed by  CARDPRODUCTID :123005
     
    fees is pecrentage + unit [Exempt: 1.70% + $0.15   Regulated 0.05% + $0.21* ] 
            Ecom :250,***SS010****
    
    E-COMMERCE PREFERREDPASSENGER TRANSPORT, DEBIT
            mcc should be one of the mccs listed in sheet A "e-commerce preferred passenger transport for card not present". 
         NETWORKID
         RESP CODE 
         SEID: *
         SUBTRANTYPE  ECOM,
         ACCOUNTRANGE EXEMPT :     222088000000, 222088999999 followed by  CARDPRODUCTID :123004
         ACCOUNTRANGE REGULATED :  222099000000, 222099999999 followed by  CARDPRODUCTID :123005
            fees is pecrentage + unit [Exempt: 1.70% + $0.15   Regulated 0.05% + $0.21* ] 
            Ecom :250,***SS010**** 
    
    HOTEL AND CAR RENTAL CARD NOT PRESENT, DEBIT
           mcc should be one of the mccs listed in sheet A "hotel and car rental for card not present". 
         NETWORKID
         RESP CODE 
         SEID: *
         SUBTRANTYPE  (TandE)
         ACCOUNTRANGE EXEMPT :     222088000000, 222088999999 followed by  CARDPRODUCTID :123004
         ACCOUNTRANGE REGULATED :  222099000000, 222099999999 followed by  CARDPRODUCTID :123005
   fees is pecrentage + unit [Exempt: 1.70% + $0.15   Regulated 0.05% + $0.21* ] 
           
           
    
    PASSENGER TRANSPORT CARD NOT PRESENT, DEBIT 
           mcc should be one of the mccs listed in sheet A "passenger transport for card not present".
         NETWORKID
         RESP CODE 
         SEID:*
         SUBTRANTYPE  (ECOM)
         ACCOUNTRANGE EXEMPT :     222088000000, 222088999999 followed by  CARDPRODUCTID :123004
         ACCOUNTRANGE REGULATED :  222099000000, 222099999999 followed by  CARDPRODUCTID :123005
    fees is pecrentage + unit [Exempt: 1.70% + $0.15   Regulated 0.05% + $0.21* ] 
           POS DATA CODE:
           420,****4*******,CARD_NOT_PRESENT_STANDIN,,,,,,,,,,,,,,,,,,
           430,****1*******,CARD_NOT_PRESENT,,,,,,,,,,,,,,,,,,
           
    
    ACCOUNT FUNDING, DEBIT (SEPERATE TRAN TYPE)
            "account funding for card not present". ? Wallet transactions ,  loading the card from original debit accoun 
            NETWORKID
         RESP CODE 
         SEID:ABCBKABL001
         SUBTRANTYPE  ?
        ACCOUNTRANGE EXEMPT :     222088000000, 222088999999 followed by  CARDPRODUCTID :123004
         ACCOUNTRANGE REGULATED :  222099000000, 222099999999 followed by  CARDPRODUCTID :123005
 fees is pecrentage + unit [Exempt: 1.75% + $0.20   Regulated 0.05% + $0.21* ] 
          
    
    ELECTRONIC INTERCHANGE REIMBURSEMENT FEE (EIRF), DEBIT3
          "electronic interchange reimbursement fee for card not present".? 
         NETWORKID
         RESP CODE 
         SEID:*
         SUBTRANTYPE  :(ECOM)
         ACCOUNTRANGE EXEMPT :     222088000000, 222088999999 followed by  CARDPRODUCTID :123004
         ACCOUNTRANGE REGULATED :  222099000000, 222099999999 followed by  CARDPRODUCTID :123005
    fees is pecrentage + unit [Exempt: 1.75% + $0.20   Regulated 0.05% + $0.21* ] 
          
For example, a transaction that is keyed-in to a terminal without address verification 
information instead of being swiped may fall into the EIRF category. Call your processor if you see a lot 
of EIRF transactions on your statement because it’s a good indication that 
something is not being processed correctly.

            
    STANDARD INTERCHANGE REIMBURSEMENT FEE, DEBIT

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