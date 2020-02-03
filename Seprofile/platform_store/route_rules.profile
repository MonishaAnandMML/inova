
%% { Routing Method, {Transaction Type, ToAccount, IsPinData, BrandID} }.
{"POS_TXN",{purchase,se_any,se_any,se_any}}.
{"PIN_TXN",{se_any,se_any,pin_data,se_any}}.
{"POS_PIN_TXN",{purchase,se_any,pin_data,se_any}}.
{"ATM_TXN",{cash,se_any,se_any,se_any}}.
{"ATM_PIN_TXN",{cash,se_any,pin_data,se_any}}. 
{"CREDIT_TXN",{se_any,credit,se_any,se_any}}.
{"EXCEPTION_TXN",{exception,se_any,se_any,se_any}}.
