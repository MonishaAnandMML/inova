%% { File Name, [ { MCG Number/Field Name, Length, Default Value/Description }, ...]}
%%
%%  Postfix - available means Issuer Available
%%            likewise un-available means Issuer Un-Available
%%

{ <<"PI-RISK">>, [{<<"1_available">>,       10, <<"Travel Limit ( Issuer Available )">> },
                  {<<"1_unavailable">>,     10, <<"Travel Limit ( Issuer UnAvailable )">> },

                  {<<"2_available">>,       10, <<"Lodging Limit ( Issuer Available )">> },
                  {<<"2_unavilable">>,      10, <<"Lodging Limit ( Issuer UnAvailable )">> },

                  {<<"1_A_available">>,     10, <<"Auto rental Limit ( Issuer Available )">> },
                  {<<"1_A_unavailable">>,   10, <<"Auto rental Limit ( Issuer UnAvailable )">> },

                  {<<"3_F_available">>,     10, <<"Restaurant Limit ( Issuer Available )">> },
                  {<<"3_F_unavailable">>,   10, <<"Restaurant Limit ( Issuer UnAvailable )">> },

                  {<<"5_T_available">>,     10, <<"Restaurant Limit ( Issuer Available )">> },
                  {<<"5_T_unavailable">>,   10, <<"Restaurant Limit ( Issuer UnAvailable )">> },

                  {<<"_available">>,        10, <<"Risky Purchase Limit ( Issuer Available )">> },  %% TODO : We Don't have MCG for this.
                  {<<"_unavailable">>,      10, <<"Risky Purchase Limit ( Issuer Available )">> },

                  {<<"7_available">>,       10, <<"Total Purchase Limit / Other Purchase ( Issuer Available )">> },
                  {<<"7_unavailable">>,     10, <<"Total Purchase Limit / Other Purchase ( Issuer UnAvailable )">> },

                  {<<"8_available">>,       10, <<"Total Cash Limit ( Issuer Available )">> },      %% TODO : We Don't have MCG for this.
                  {<<"8_unavailable">>,     10, <<"Total Cash Limit ( Issuer UnAvailable )">> },

                  {<<"daily_purchase_limit_available">>,    10, <<"Daily Purchase Limit - (Issuer Available)">> },
                  {<<"daily_purchase_limit_unavailable">>,  10, <<"Daily Purchase Limit - (Issuer UnAvailable)">> },  %% airline

                  {<<"daily_cash_limit_available">>,        10, <<"Daily Cash Limit - (Issuer Available)">> },
                  {<<"daily_cash_limit_unavailable">>,      10, <<"Daily Cash Limit - (Issuer UnAvailable)">> },

                  {<<"is_valid">>,                          na, true }
                 ]
}.

%% TODO : Identify scope of Other Cash, Quasi Cash and Other Purchase - PI-RISK file
%% TODO : What is Risky Transaction ?



{ <<"PI-MAIN">>, [{<<"record_expiry_date">>,    8, <<"Record Expiry Date (DDMMYYYY).">> },
                  {<<"block_code">>,            2, <<"Block Code.">> },
                  {<<"is_active">>,             1, <<"Active Flag.">> },
                  {<<"is_valid">>,             na, true }
                 ]
}.

{ <<"PI-EXC">>, [{<<"exception_limit_level">>,  2, <<"Exception file Response Code.">> } ]}.