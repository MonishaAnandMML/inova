%%%%% { TranType, {MTI, Function Code, Processing Code} }.

%% requests
{purchase_auth_req                  ,{<<"1100">>, <<"100">>, <<"00">>}}.
{cash_auth_req                      ,{<<"1100">>, <<"100">>, <<"01">>}}.
{purchase_req                       ,{<<"1200">>, <<"200">>, <<"00">>}}.
{cash_req                           ,{<<"1200">>, <<"200">>, <<"01">>}}.
{debit_adjustment_req               ,{<<"1200">>, <<"200">>, <<"02">>}}.
{purchase_with_cashback_req         ,{<<"1200">>, <<"200">>, <<"09">>}}.
{quasi_cash_req                     ,{<<"1200">>, <<"200">>, <<"11">>}}.
{credit_adjustment_req              ,{<<"1200">>, <<"200">>, <<"22">>}}.
{original_credit_req                ,{<<"1200">>, <<"200">>, <<"26">>}}.
{balance_enquiry_req                ,{<<"1200">>, <<"200">>, <<"30">>}}.
{card_to_card_transfer_req          ,{<<"1200">>, <<"200">>, <<"40">>}}.
{bill_payment_req                   ,{<<"1200">>, <<"200">>, <<"50">>}}.
{purchase_reversal_adv_req          ,{<<"1420">>, <<"400">>, <<"00">>}}.
{cash_reversal_adv_req              ,{<<"1420">>, <<"400">>, <<"01">>}}.
{purchase_reversal_adv_repeat_req   ,{<<"1421">>, <<"400">>, <<"00">>}}.
{cash_reversal_adv_repeat_req       ,{<<"1421">>, <<"400">>, <<"01">>}}.
                                                                      
{purchase_adv_req                   ,{<<"1220">>, <<"200">>, <<"00">>}}.
{purchase_adv_repeat_req            ,{<<"1221">>, <<"200">>, <<"00">>}}.

{gen_file_update_req                ,{<<"1300">>, <<"302">>, <<>>}}.
{gen_file_update_adv_req            ,{<<"1320">>, <<"302">>, <<>>}}.

{send_money_req                     ,{<<"1200">>, <<"200">>, <<"48">>}}.
{fund_xfr_debit_req                 ,{<<"1200">>, <<"200">>, <<"51">>}}.
{fund_xfr_debit_rev_adv_req         ,{<<"1420">>, <<"200">>, <<"51">>}}.
{fund_xfr_credit_req                ,{<<"1200">>, <<"200">>, <<"52">>}}.
{fund_xfr_credit_adv_req            ,{<<"1220">>, <<"200">>, <<"52">>}}.
                                                                      
%% responses
{purchase_auth_resp                 ,{<<"1110">>, <<"100">>, <<"00">>}}.
{cash_auth_resp                     ,{<<"1110">>, <<"100">>, <<"01">>}}.
{purchase_resp                      ,{<<"1210">>, <<"200">>, <<"00">>}}.
{cash_resp                          ,{<<"1210">>, <<"200">>, <<"01">>}}.
{debit_adjustment_resp              ,{<<"1210">>, <<"200">>, <<"02">>}}.
{purchase_with_cashback_resp        ,{<<"1210">>, <<"200">>, <<"09">>}}.
{quasi_cash_resp                    ,{<<"1210">>, <<"200">>, <<"11">>}}.
{refund_resp                        ,{<<"1210">>, <<"200">>, <<"20">>}}.
{credit_adjustment_resp             ,{<<"1210">>, <<"200">>, <<"22">>}}.
{original_credit_resp               ,{<<"1210">>, <<"200">>, <<"26">>}}.
{balance_enquiry_resp               ,{<<"1210">>, <<"200">>, <<"30">>}}.
{card_to_card_transfer_resp         ,{<<"1210">>, <<"200">>, <<"40">>}}.
{bill_payment_resp                  ,{<<"1210">>, <<"200">>, <<"50">>}}.
{purchase_reversal_adv_resp         ,{<<"1430">>, <<"400">>, <<"00">>}}.
{cash_reversal_adv_resp             ,{<<"1430">>, <<"400">>, <<"01">>}}.
{purchase_reversal_adv_resp         ,{<<"1430">>, <<"400">>, <<"00">>}}.
{cash_reversal_adv_resp             ,{<<"1430">>, <<"400">>, <<"01">>}}.
                                                                      
{purchase_adv_resp                  ,{<<"1230">>, <<"200">>, <<"00">>}}.

{gen_file_update_resp               ,{<<"1310">>, <<"302">>, <<>>}}.
{gen_file_update_adv_resp           ,{<<"1330">>, <<"302">>, <<>>}}.

{send_money_resp                    ,{<<"1210">>, <<"200">>, <<"48">>}}.
{fund_xfr_debit_resp                ,{<<"1210">>, <<"200">>, <<"51">>}}.
{fund_xfr_debit_rev_adv_resp        ,{<<"1430">>, <<"200">>, <<"51">>}}.
{fund_xfr_credit_resp               ,{<<"1210">>, <<"200">>, <<"52">>}}.
{fund_xfr_credit_adv_resp           ,{<<"1230">>, <<"200">>, <<"52">>}}.
                                                                      
%%% dispute
{chargeback_purchase                ,{<<"1420">>, <<"450">>, <<"00">>}}.
{representment_purchase             ,{<<"1200">>, <<"205">>, <<"00">>}}.

%Network Req/Resp :
{signin_req                         ,{<<"1800">>,<<"801">>,<<>>}}.
{signin_resp                        ,{<<"1810">>,<<"801">>,<<>>}}.
{signoff_req                        ,{<<"1800">>,<<"802">>,<<>>}}.
{signoff_resp                       ,{<<"1810">>,<<"802">>,<<>>}}.
{echo_req                           ,{<<"1800">>,<<"803">>,<<>>}}.
{echo_resp                          ,{<<"1810">>,<<"803">>,<<>>}}.

{online_key_exchange_req            ,{<<"1804">>, <<"811">>, <<>>}}.
{online_key_exchange_resp           ,{<<"1814">>, <<"811">>, <<>>}}.

%Clearing TranType
{presentment_purchase               ,{<<"1200">>, <<"201">>, <<"0">>}}.
{presentment_cash                   ,{<<"1200">>, <<"201">>, <<"1">>}}.
{refund                             ,{<<"1200">>, <<"200">>, <<"20">>}}.
{presentment_purchase_reversal      ,{<<"1420">>, <<"201">>, <<"0">>}}.
{presentment_cash_reversal          ,{<<"1420">>, <<"201">>, <<"1">>}}.
{refund_reversal                    ,{<<"1420">>, <<"200">>, <<"20">>}}.
