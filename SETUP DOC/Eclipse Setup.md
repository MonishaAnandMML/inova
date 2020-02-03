**PROFILE SET-UP**

Profile to be made changes is given below.

1.ProfileStore    

Se_entity.profile

Network.profile

Brand.profile

Card_product_scheme.profile​

Card_product.profile​

Formatter.profile

Account_Range.profile​

Procesor.profile​

End_point.profile​

Route.profile​


2.**PlatformStore**

Interchange Fees and charges:​

Fee_Rules.profile​

Fee_Rate.profile

Fee_group.profile

tran_type_to_fee_group.profile​

​

Accumulation Fees and charges :​

Accumultion_group_rules.profile

Accumulation_group_Fee_rate.profile

fee_rate.profie



Note:

se_end_point_attributes_score.profile

card_product_id_to_limit_mapping.profile






**CUCUMBER TESTING SETUP**

ECLIPSE: openjdk version "1.8.0_222"

Help Menu : Eclipse Marketplace 

​           Intstall below plugins

1. Cucumber Eclipse plugin 0.0.23.201811220126
2. m2e connector for maven dependency plugin 0.0.4
3. maven integeration for Eclipse (Luna and newer) 1.5
4. maven integeration for eclipse (Luna) 1.5.0
5. EclEmma javacode coverage 3.1.2
6. Java 8 support for m2e for eclipse kepler sr2
7. m2e apt 1.5.2


**se_testing Repo :** SPECIFIC FOR CUCUMBER CONCEPT

Import CucumberConcept project from **Development** branch

Create a feature File to below path

     Path :  se_testing//Src/test/resources/features
```
 Branch Name : Development 
```
Configure the test.properties as per ur test data and transaction details.

Write CommonStepDefintion code in below 

     Path :  se_testing/CucumberConcept/Src/test/java/cucumber.features/CommonStepDefintion.java 


**se_testing Repo :** SPECIFIC VISA TESTING

Import VISA_Testing project from **VISA_testing** branch

Create a feature File to below path

     Path :  se_testing/VISA_Testing/Src/test/resources/features
```
 Branch Name : VISA_testing  
```

Configure the test.properties as per ur test data and transaction details.

Write CommonStepDefintion code in below 

     Path :  se_testing/VISA_Testing/Src/test/java/cucumber.features/Interchange.java or CommonStepDefintion.java 



**se_smartedgeapi  Repo:** 

Import se_smartedgeapi  project from **Development** branch

         Branch Name : Development

Write Issuer Simulator code  below path

```Lo
 Path :se_smartedgeapi /Src/main/java/Com.api.simulator/AcquirerSimulator.java
```
Write Issuer Simulator code  below path

```Lo
 Path :path: se_smartedgeapi /Src/main/java/Com.api.simulator/IssuerSimulator.java
```

Write Generic code  below path

   Path:​

 se_smartedgeapi /Src/main/java/Com.api.common/​

 GenericActions.java​

**LOCAL SYSTEM** :

Create a Folder CucumberConcept

​  STEP 1 :    path :-otherlocation/opt/CucumberConcept

Create a Folder for keys and resources

​     keys :

​      path :-otherlocation/opt/CucumberConcept/keys

​      store "**mykeystore.jks**"  file in keys folder

​     resources :

​      path :-otherlocation/opt/CucumberConcept/resources

​     store "**cucumberDB.sqlite**"  file in resources folder



Permissions: 

sudo chown -R innova:innova  /opt/CucumberConcept/keys

sudo chown -R innova:innova  /opt/CucumberConcept/keys

   

STEP 2  :  To create a log file to store the acq/Iss log

Create a Folder for CucumberConcept

​     Folder Name :CucumberConcept

```
 path :-otherlocation/var/log/CucumberConcept
```

Create a Folder for logs

​      FolderName :Logs

     path :-otherlocation/var/log/CucumberConcept/logs

change the permission : sudo chown -R innova:innova  /var/log/CucumberConcept/logs




**DOCKER STEPS:**


Select the operation you want to perform:
1 > Build Docker images
2 > Pull Git Repo code
3 > Compile Repo code
4 > Start all Containers
5 > Start only Platform Containers
6 > Start only Hadoop Containers
7 > Start only UI Containers
8 > Stop and clean all containers
9 > Execute settlementdate manager
10 > Copy Clearing Files
20 > Exit
Enter the number to select the operation:  



STEP1: PRESS 2 PULL GIT REPO CODE

Select one of the options:
1 > Pull all repo code
2 > Pull specific repo code
3 > Back to main menu

Press 1 : Branch Name: Development 

Then Press 2 : Type se_tesing Repo for CucumberConcept
               Branch Name : cucumberconcept

Then again Press 2 : Type se_smartedgeapi Repo
                     Branch Name : Developmet

STEP2 : PRESS 3 COMPILE REPO CODE 
        se_profile repo : Branch Name : testing 
        Rest are Development



Then Press 2 : Type se_tesing Repo for VISA project

```
           Branch Name : VISA_testing
```

Then again Press 2 : Type se_smartedgeapi Repo

```
                 Branch Name : Developmet
```

STEP2 : PRESS 3 COMPILE REPO CODE

```
    se_profile repo : Branch Name : VISA_profiles
    Rest are Development
```





STEP3 : PRESS 5  START ONLY PLATFORM CONTAINERS

Enter the number to select the operation: 5
Select which endpoint network you want to proceed:
1 > Common Test based network
2 > Cucumber Based network
Enter the number to proceed: 

         then again Press 2 Cucumber Based network



ECLIPSE:

se_testing :

  Import VISA_Testing project from VISA_testing branch

 	**Path :** se_testing/VISA_Testing   

​        **Branch Name :** VISA_testing

se_smartedgeapi : Branch Name : Development

​              


Write Generic code  below path

   Path:

 se_smartedgeapi /Src/main/java/Com.api.common/

 GenericActions.java



**Note :**

https://gitlab.com/Payments_Innova/se_services/blob/Development/docs/fees_charges/fees_charges_design.md

https://gitlab.com/Payments_Innova/se_services/blob/Development/docs/fees_charges/fees_charges_operators.md

https://gitlab.com/Payments_Innova/Product-Documentation/blob/Development/Auth-Services/Transaction-Classification/Transaction_class_lookup.md

https://gitlab.com/Payments_Innova/Product-Documentation/blob/Development/Auth-Services/Transaction-Classification/Pos_data_lookup.md

https://gitlab.com/Payments_Innova/Product-Documentation/blob/Development/Auth-Services/Validation/trantype-based-validation-matrix.md

https://gitlab.com/Payments_Innova/Product-Documentation/blob/Development/Auth-Services/Response-Code-Handler/se-rejectcode-list.md



