%% { {MTI, Function Code, Processing Code Tran Type}, TranType }

% Request :
{{ <<"1100">>, <<"100">>, <<"0">>}, purchase_auth_req }. 
{{ <<"1100">>, <<"100">>, <<"1">>}, cash_auth_req }.
{{ <<"1200">>, <<"200">>, <<"0">>}, purchase_req }.
{{ <<"1200">>, <<"200">>, <<"1">>}, cash_req }.
{{ <<"1200">>, <<"200">>, <<"2">>}, debit_adjustment_req }.
{{ <<"1200">>, <<"200">>, <<"9">>}, purchase_with_cashback_req }.
{{ <<"1200">>, <<"200">>, <<"11">>}, quasi_cash_req }.
{{ <<"1200">>, <<"200">>, <<"20">>}, refund }.
{{ <<"1200">>, <<"200">>, <<"22">>}, credit_adjustment_req }.
{{ <<"1200">>, <<"200">>, <<"26">>}, original_credit_req }.
{{ <<"1200">>, <<"200">>, <<"30">>}, balance_enquiry_req }.
{{ <<"1200">>, <<"200">>, <<"40">>}, card_to_card_transfer_req }.
{{ <<"1200">>, <<"200">>, <<"50">>}, bill_payment_req }.
{{ <<"1420">>, <<"400">>, <<"0">>}, purchase_reversal_adv_req }.
{{ <<"1420">>, <<"400">>, <<"1">>}, cash_reversal_adv_req }.
{{ <<"1421">>, <<"400">>, <<"0">>}, purchase_reversal_adv_repeat_req }.
{{ <<"1421">>, <<"400">>, <<"1">>}, cash_reversal_adv_repeat_req }.

{{ <<"1220">>, <<"200">>, <<"0">>}, purchase_adv_req }.
{{ <<"1221">>, <<"200">>, <<"0">>}, purchase_adv_repeat_req }.
{{ <<"1220">>, <<"200">>, <<"1">>}, cash_adv_req }.
{{ <<"1221">>, <<"200">>, <<"1">>}, cash_adv_repeat_req }.

{{ <<"1300">>, <<"302">>, <<>>}, gen_file_update_req}.
{{ <<"1320">>, <<"302">>, <<>>}, gen_file_update_adv_req}.

{{ <<"1200">>, <<"200">>, <<"48">>}, send_money_req }.
{{ <<"1200">>, <<"200">>, <<"51">>}, fund_xfr_debit_req }.
{{ <<"1420">>, <<"200">>, <<"51">>}, fund_xfr_debit_rev_adv_req }.
{{ <<"1200">>, <<"200">>, <<"52">>}, fund_xfr_credit_req }.
{{ <<"1220">>, <<"200">>, <<"52">>}, fund_xfr_credit_adv_req }.

% Response :
{{ <<"1110">>, <<"100">>, <<"0">>}, purchase_auth_resp }.
{{ <<"1110">>, <<"100">>, <<"1">>}, cash_auth_resp }.
{{ <<"1210">>, <<"200">>, <<"0">>}, purchase_resp }. 
{{ <<"1210">>, <<"200">>, <<"1">>}, cash_resp }.
{{ <<"1210">>, <<"200">>, <<"2">>}, debit_adjustment_resp }.
{{ <<"1210">>, <<"200">>, <<"9">>}, purchase_with_cashback_resp }.
{{ <<"1210">>, <<"200">>, <<"11">>}, quasi_cash_resp }.
{{ <<"1210">>, <<"200">>, <<"20">>}, refund_resp }.
{{ <<"1210">>, <<"200">>, <<"22">>}, credit_adjustment_resp }.
{{ <<"1210">>, <<"200">>, <<"26">>}, original_credit_resp }.
{{ <<"1210">>, <<"200">>, <<"30">>}, balance_enquiry_resp }.
{{ <<"1210">>, <<"200">>, <<"40">>}, card_to_card_transfer_resp }.
{{ <<"1210">>, <<"200">>, <<"50">>}, bill_payment_resp }.
{{ <<"1430">>, <<"400">>, <<"0">>}, purchase_reversal_adv_resp }.
{{ <<"1430">>, <<"400">>, <<"1">>}, cash_reversal_adv_resp }.
{{ <<"1430">>, <<"400">>, <<"0">>}, purchase_reversal_adv_resp }.
{{ <<"1430">>, <<"400">>, <<"1">>}, cash_reversal_adv_resp }.

{{ <<"1230">>, <<"200">>, <<"0">>}, purchase_adv_resp }.

{{<<"1310">>, <<"302">>, <<>>}, gen_file_update_resp }.
{{<<"1330">>, <<"302">>, <<>>}, gen_file_update_adv_resp }.

{{ <<"1210">>, <<"200">>, <<"48">>}, send_money_resp}.
{{ <<"1210">>, <<"200">>, <<"51">>}, fund_xfr_debit_resp }.
{{ <<"1430">>, <<"200">>, <<"51">>}, fund_xfr_debit_rev_adv_resp }.
{{ <<"1210">>, <<"200">>, <<"52">>}, fund_xfr_credit_resp }.
{{ <<"1230">>, <<"200">>, <<"52">>}, fund_xfr_credit_adv_resp }.

% Dispute :
{{ <<"1420">>, <<"450">>, <<"0">>}, chargeback_purchase }.
{{ <<"1200">>, <<"205">>, <<"0">>}, representment_purchase }.

%Network Req/Resp :
{{<<"1800">>,<<"801">>,<<>>}, signin_req}.
{{<<"1810">>,<<"801">>,<<>>}, signin_resp}.
{{<<"1800">>,<<"802">>,<<>>}, signoff_req}.
{{<<"1810">>,<<"802">>,<<>>}, signoff_resp}.
{{<<"1800">>,<<"803">>,<<>>}, echo_req}.
{{<<"1810">>,<<"803">>,<<>>}, echo_resp}.

{{ <<"1804">>, <<"811">>, <<>>}, online_key_exchange_req }.
{{ <<"1814">>, <<"811">>, <<>>}, online_key_exchange_resp }.

