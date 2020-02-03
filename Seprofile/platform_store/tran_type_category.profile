%%%%% { TranType, {Category, MessageType} }.

%% requests
{purchase_auth_req                  ,{clearing, dms}}.
{cash_auth_req                      ,{clearing, dms}}.
{purchase_req                       ,{auth, sms}}.
{cash_req                           ,{auth, sms}}.
{debit_adjustment_req               ,{auth, sms}}.
{purchase_with_cashback_req         ,{auth, sms}}.
{quasi_cash_req                     ,{auth, sms}}.
{credit_adjustment_req              ,{auth, sms}}.
{original_credit_req                ,{auth, sms}}.
{balance_enquiry_req                ,{auth, sms}}.
{card_to_card_transfer_req          ,{auth, sms}}.
{bill_payment_req                   ,{auth, sms}}.
{purchase_reversal_adv_req          ,{na, na}}.
{cash_reversal_adv_req              ,{na, na}}.
{purchase_reversal_adv_repeat_req   ,{na, na}}.
{cash_reversal_adv_repeat_req       ,{na, na}}.
                                                                      
{purchase_adv_req                   ,{auth, sms}}.
{purchase_adv_repeat_req            ,{auth, sms}}.

{gen_file_update_req                ,{na, na}}.
{gen_file_update_adv_req            ,{na, na}}.

{send_money_req                     ,{auth, sms}}.
{fund_xfr_debit_req                 ,{auth, sms}}.
{fund_xfr_debit_rev_adv_req         ,{na, na}}.
{fund_xfr_credit_req                ,{auth, sms}}.
{fund_xfr_credit_adv_req            ,{auth, sms}}.
                                                                      
%% responses
{purchase_auth_resp                 ,{auth, na}}.
{cash_auth_resp                     ,{auth, na}}.
{purchase_resp                      ,{auth, na}}.
{cash_resp                          ,{auth, na}}.
{debit_adjustment_resp              ,{auth, na}}.
{purchase_with_cashback_resp        ,{auth, na}}.
{quasi_cash_resp                    ,{auth, na}}.
{refund_resp                        ,{auth, na}}.
{credit_adjustment_resp             ,{auth, na}}.
{original_credit_resp               ,{auth, na}}.
{balance_enquiry_resp               ,{auth, na}}.
{card_to_card_transfer_resp         ,{auth, na}}.
{bill_payment_resp                  ,{auth, na}}.
{purchase_reversal_adv_resp         ,{na, na}}.
{cash_reversal_adv_resp             ,{na, na}}.
{purchase_reversal_adv_resp         ,{na, na}}.
{cash_reversal_adv_resp             ,{na, na}}.
                                                                      
{purchase_adv_resp                  ,{auth, na}}.

{gen_file_update_resp               ,{na, na}}.
{gen_file_update_adv_resp           ,{na, na}}.

{send_money_resp                    ,{auth, na}}.
{fund_xfr_debit_resp                ,{auth, na}}.
{fund_xfr_debit_rev_adv_resp        ,{na, na}}.
{fund_xfr_credit_resp               ,{auth, na}}.
{fund_xfr_credit_adv_resp           ,{auth, na}}.
                                                                      
%%% dispute
{chargeback_purchase                ,{na, na}}.
{representment_purchase             ,{auth, sms}}.

%Network Req/Resp :
{signin_req                         ,{na, na}}.
{signin_resp                        ,{na, na}}.
{signoff_req                        ,{na, na}}.
{signoff_resp                       ,{na, na}}.
{echo_req                           ,{na, na}}.
{echo_resp                          ,{na, na}}.

{online_key_exchange_req            ,{na, na}}.
{online_key_exchange_resp           ,{na, na}}.

%Clearing TranType
{presentment_purchase               ,{clearing, na}}.
{presentment_cash                   ,{clearing, na}}.
{refund                             ,{clearing, na}}.
{presentment_purchase_reversal      ,{clearing, na}}.
{presentment_cash_reversal          ,{clearing, na}}.
{refund_reversal                    ,{clearing, na}}.
