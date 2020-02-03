%%{SCHEMA_NAME,[ATTRIBUTE_LISTS]}.

{"Customer_Entity", [ {attr,["Region_ID",
                      "SE_ID",
                      "CIF", 
                      "External_CIF", 
                      "Type", 
                      "Category", 
                      "Status",
                      "KYC_Limit",
                      "CIF_Limit_Prof_ID",
                      "Settlement_Plan_ID",
                      "Settlement_Account_ID",
                      "Payout_Method",
                      "KYC_Status"]},
                      {bucket_name_prefix, [<<"cam_customer_entity">>]},
                      {key, ["CIF"]},
                      {bucket_name_suffix,["Region_ID","SE_ID"]}]
}.

{"Account_Entity", [{attr, ["Region_ID",
                     "SE_ID",
                     "CIF", 
                     "Account_Number",
                     "Type", 
                     "Category", 
                     "Status",
                     "Account_Prod_ID",
                     "Fees_Plan_ID",
                     "Account_Limit_Prof_ID",
                     "Base_Currency"]},
                    {bucket_name_prefix, [<<"cam_account_entity">>]},
                    {key, ["CIF","Account_Number"]},
                    {bucket_name_suffix,["Region_ID","SE_ID"]}]
}.

{"Payment_Instrument_Entity", [{attr, ["Region_ID",
                                "SE_ID",
                                "CIF", 
                                "Type", 
                                "Status",
                                "Account_Number",
                                "Payment_Prod_ID",
                                "Account_Prod_ID",
                                "Payment_Ins_ID",
                                "Payment_Ins_Limit",
                                "Added_Date",
                                "Last_Upd_Date"]},
                               {bucket_name_prefix, [<<"cam_payment_instrument_entity">>]},
                               {key, ["Payment_Ins_ID"]},
                               {bucket_name_suffix,["Region_ID","SE_ID"]}]
}.

{"Account_Limit_Rule_Entity", [{attr, ["Region_ID",
                                "SE_ID",
                                "CIF", 
                                "Account_Limit_Prof_ID",
                                "Sub_Tran_Type",
                                "Channel",
                                "Base_Currency"]},
                               {bucket_name_prefix, [<<"cam_account_limit_rule_entity">>]},
                               {key, ["Account_Limit_Prof_ID","Sub_Tran_Type", "Channel"]},
                               {bucket_name_suffix,["Region_ID","SE_ID"]}]
}.

{"CIF_Limit_Rule_Entity", [{attr, ["Region_ID",
                                "SE_ID",
                                "CIF", 
                                "CIF_Limit_Prof_ID",
                                "Sub_Tran_Type",
                                "Channel",
                                "Base_Currency"]},
                               {bucket_name_prefix, [<<"cam_cif_limit_rule_entity">>]},
                               {key, ["CIF_Limit_Prof_ID","Sub_Tran_Type", "Channel"]},
                               {bucket_name_suffix,["Region_ID","SE_ID"]}]
}.
