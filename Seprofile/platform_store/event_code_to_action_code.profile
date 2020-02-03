%%%{tran_type, event_code}, action_code}.

%*******************************************************************************
%%%% REQUESTS %%%%
%*******************************************************************************
%% purchase auth request related configuration
{{purchase_auth_req, success}, forward_to_destination}.
{{purchase_auth_req, info_ignore}, forward_to_destination}.
{{purchase_auth_req, reject}, response_to_source}.
{{purchase_auth_req, no_dest_route}, response_to_source}.
{{purchase_auth_req, no_match}, na}.
{{purchase_auth_req, late_response}, na}.
{{purchase_auth_req, duplicate}, response_to_source}.
{{purchase_auth_req, bad_message}, response_to_source}.
{{purchase_auth_req, timeout}, [response_to_source_with_update,reversal_advice_to_dest]}.
{{purchase_auth_req, approved}, na}.
{{purchase_auth_req, declined}, na}.
{{purchase_auth_req, stip_approved}, [stip_response_to_source,advice_to_recovery]}.
{{purchase_auth_req, stip_declined}, response_to_source}.
{{purchase_auth_req, not_delivered}, na}.

%% purchase request related configuration
{{purchase_req, success}, forward_to_destination}.
{{purchase_req, info_ignore}, forward_to_destination}.
{{purchase_req, reject}, response_to_source}.
{{purchase_req, no_dest_route}, response_to_source}.
{{purchase_req, no_match}, na}.
{{purchase_req, late_response}, na}.
{{purchase_req, duplicate}, response_to_source}.
{{purchase_req, bad_message}, response_to_source}.
{{purchase_req, timeout}, [response_to_source_with_update,reversal_advice_to_dest]}.
{{purchase_req, approved}, na}.
{{purchase_req, declined}, na}.
{{purchase_req, stip_approved}, [stip_response_to_source,advice_to_recovery]}.
{{purchase_req, stip_declined}, response_to_source}.
{{purchase_req, not_delivered}, na}.

%% cash auth request related configuration
{{cash_auth_req, success}, forward_to_destination}.
{{cash_auth_req, info_ignore}, forward_to_destination}.
{{cash_auth_req, reject}, response_to_source}.
{{cash_auth_req, no_dest_route}, response_to_source}.
{{cash_auth_req, no_match}, na}.
{{cash_auth_req, late_response}, na}.
{{cash_auth_req, duplicate}, response_to_source}.
{{cash_auth_req, bad_message}, response_to_source}.
{{cash_auth_req, timeout}, [response_to_source_with_update,reversal_advice_to_dest]}.
{{cash_auth_req, approved}, na}.
{{cash_auth_req, declined}, na}.
{{cash_auth_req, stip_approved}, [stip_response_to_source,advice_to_recovery]}.
{{cash_auth_req, stip_declined}, response_to_source}.
{{cash_auth_req, not_delivered}, na}.

%% cash request related configuration
{{cash_req, success}, forward_to_destination}.
{{cash_req, info_ignore}, forward_to_destination}.
{{cash_req, reject}, response_to_source}.
{{cash_req, no_dest_route}, response_to_source}.
{{cash_req, no_match}, na}.
{{cash_req, late_response}, na}.
{{cash_req, duplicate}, response_to_source}.
{{cash_req, bad_message}, response_to_source}.
{{cash_req, timeout}, [response_to_source_with_update,reversal_advice_to_dest]}.
{{cash_req, approved}, na}.
{{cash_req, declined}, na}.
{{cash_req, stip_approved}, [stip_response_to_source,advice_to_recovery]}.
{{cash_req, stip_declined}, response_to_source}.
{{cash_req, not_delivered}, na}.

%% bill payment request related configuration
{{bill_payment_req, success}, bill_payment_req_response}.
{{bill_payment_req, reject}, response_to_source}.
{{bill_payment_req, duplicate}, response_to_source}.

%% P2P requests
{{send_money_req, success}, orchestrate_and_send_to_remitter }.

{{fund_xfr_debit_req, success}, send_to_remitter }.
{{fund_xfr_debit_req, timeout}, reversal_advice_to_remitter }.

{{fund_xfr_credit_req,  success}, send_to_beneficiary }.
{{fund_xfr_credit_req,  timeout}, advice_to_beneficiary }.

{{fund_xfr_credit_adv_req,      success}, send_to_beneficiary }.
{{fund_xfr_debit_rev_adv_req,   success}, send_to_remitter}.

{{fund_xfr_credit_adv_req,    timeout}, repeat_advice }.
{{fund_xfr_debit_rev_adv_req, timeout}, repeat_advice }.

%*******************************************************************************
%%%% RESPONSES %%%%%%
%*******************************************************************************
%% purchase auth response related configuration
{{purchase_auth_resp, success}, na}.
{{purchase_auth_resp, info_ignore}, forward_to_destination}.
{{purchase_auth_resp, reject}, [response_to_destination,conditional_reversal_advice_to_source]}.
{{purchase_auth_resp, no_dest_route}, na}.
{{purchase_auth_resp, no_match}, conditional_reversal_advice_to_source}.
{{purchase_auth_resp, late_response}, drop_message}.
{{purchase_auth_resp, duplicate}, conditional_reversal_advice_to_source}.
{{purchase_auth_resp, bad_message}, response_to_source}.
{{purchase_auth_resp, timeout}, na}.
{{purchase_auth_resp, stip_approved}, na}.
{{purchase_auth_resp, stip_declined}, na}.
{{purchase_auth_resp, approved}, forward_to_destination}.
{{purchase_auth_resp, declined}, forward_to_destination}.
{{purchase_auth_resp, not_delivered}, na}.

%% purchase response related configuration
{{purchase_resp, success}, na}.
{{purchase_resp, info_ignore}, forward_to_destination}.
{{purchase_resp, reject}, [response_to_destination,conditional_reversal_advice_to_source]}.
{{purchase_resp, no_dest_route}, na}.
{{purchase_resp, no_match}, conditional_reversal_advice_to_source}.
{{purchase_resp, late_response}, drop_message}.
{{purchase_resp, duplicate}, conditional_reversal_advice_to_source}.
{{purchase_resp, bad_message}, response_to_source}.
{{purchase_resp, timeout}, na}.
{{purchase_resp, stip_approved}, na}.
{{purchase_resp, stip_declined}, na}.
{{purchase_resp, approved}, forward_to_destination_ledger}.
{{purchase_resp, declined}, forward_to_destination}.
{{purchase_resp, not_delivered}, na}.

%%% cash auth response related configuration
{{cash_auth_resp, success}, na}.
{{cash_auth_resp, info_ignore}, forward_to_destination}.
{{cash_auth_resp, reject}, [response_to_destination,conditional_reversal_advice_to_source]}.
{{cash_auth_resp, no_dest_route}, na}.
{{cash_auth_resp, no_match}, conditional_reversal_advice_to_source}.
{{cash_auth_resp, late_response}, drop_message}.
{{cash_auth_resp, duplicate}, conditional_reversal_advice_to_source}.
{{cash_auth_resp, bad_message}, response_to_source}.
{{cash_auth_resp, timeout}, na}.
{{cash_auth_resp, stip_approved}, na}.
{{cash_auth_resp, stip_declined}, na}.
{{cash_auth_resp, approved}, forward_to_destination}.
{{cash_auth_resp, declined}, forward_to_destination}.
{{cash_auth_resp, not_delivered}, na}.

%% cash response related configuration
{{cash_resp, success}, na}.
{{cash_resp, info_ignore}, forward_to_destination}.
{{cash_resp, reject}, [response_to_destination,conditional_reversal_advice_to_source]}.
{{cash_resp, no_dest_route}, na}.
{{cash_resp, no_match}, conditional_reversal_advice_to_source}.
{{cash_resp, late_response}, drop_message}.
{{cash_resp, duplicate}, conditional_reversal_advice_to_source}.
{{cash_resp, bad_message}, response_to_source}.
{{cash_resp, timeout}, na}.
{{cash_resp, stip_approved}, na}.
{{cash_resp, stip_declined}, na}.
{{cash_resp, approved}, forward_to_destination_ledger}.
{{cash_resp, declined}, forward_to_destination}.
{{cash_resp, not_delivered}, na}.

%% P2P response
{{send_money_resp,      approved},  response_to_psp }.

{{fund_xfr_debit_resp,  approved},  orchestrate_and_send_to_beneficiary }.
{{fund_xfr_debit_resp,  success},   send_to_beneficiary }.

{{fund_xfr_credit_resp, approved},  orchestrate_and_send_to_psp_or_remitter }.
{{fund_xfr_credit_resp, success},   send_to_remitter }.
{{fund_xfr_credit_resp, declined},  reversal_advice_to_remitter }.

{{fund_xfr_credit_adv_resp, approved}, orchestrate_and_forward_to_destination }.
{{fund_xfr_credit_adv_resp, declined}, orchestrate_and_forward_to_destination }.

{{fund_xfr_debit_rev_adv_resp, approved}, orchestrate_and_forward_to_destination}.
{{fund_xfr_debit_rev_adv_resp, declined}, orchestrate_and_forward_to_destination}.

%*******************************************************************************
%%%%% ADVICE %%%%%
%*******************************************************************************
{{purchase_adv_req, success}, enqueue_and_forward_to_destination}.
{{purchase_adv_req, reject}, advice_return_to_source}.
{{purchase_adv_req, no_match}, advice_return_to_source}.
{{purchase_adv_req, timeout}, repeat_advice}.
{{purchase_adv_req, stip_approved}, [response_to_source,advice_to_recovery]}.
{{purchase_adv_req, stip_declined}, response_to_source}.
{{purchase_adv_req, advice_response_present}, claim_response}.

{{cash_adv_req, success}, enqueue_and_forward_to_destination}.
{{cash_adv_req, reject}, advice_return_to_source}.
{{cash_adv_req, timeout}, repeat_advice}.
{{cash_adv_req, no_match}, advice_return_to_source}.
{{cash_adv_req, stip_approved}, [response_to_source,advice_to_recovery]}.
{{cash_adv_req, stip_declined}, response_to_source}.
{{cash_adv_req, advice_response_present}, claim_response}.

%%%%%% ADVICE RESPONSE %%%%%%
{{purchase_adv_resp, approved}, conditional_forward_to_destination_no_timer}.
{{purchase_adv_resp, declined}, conditional_forward_to_destination_no_timer}.
{{purchase_adv_resp, reject}, [response_to_destination,conditional_reversal_advice_to_source]}.
{{purchase_adv_resp, no_match}, conditional_reversal_advice_to_source}.
{{purchase_adv_resp, not_delivered}, conditional_reversal_advice_tor_source}.
{{cash_adv_resp, approved}, conditional_forward_to_destination_no_timer}.
{{cash_adv_resp, declined}, conditional_forward_to_destination_no_timer}.
{{cash_adv_resp, reject}, [response_to_destination,conditional_reversal_advice_to_source]}.
{{cash_adv_resp, no_match}, conditional_reversal_advice_to_source}.
{{cash_adv_resp, not_delivered}, conditional_reversal_advice_to_source}.

%*******************************************************************************
%%%%% REVERSALS %%%%%%%%
%*******************************************************************************
{{purchase_reversal_adv_req, success}, enqueue_and_forward_to_destination}.
{{purchase_reversal_adv_req, approved}, enqueue_and_forward_to_destination}.
{{purchase_reversal_adv_req, declined}, enqueue_and_forward_to_destination}.
{{purchase_reversal_adv_req, reject},  reversal_advice_return_to_source}.
{{purchase_reversal_adv_req, no_match}, reversal_advice_return_to_source}.
{{purchase_reversal_adv_req, timeout}, repeat_advice}.
{{purchase_reversal_adv_req, stip_approved}, [response_to_source,reversal_advice_to_recovery]}.
{{purchase_reversal_adv_req, stip_declined}, response_to_source}.
{{purchase_reversal_adv_req, advice_response_present}, claim_response}.

{{cash_reversal_adv_req, success}, enqueue_and_forward_to_destination}.
{{cash_reversal_adv_req, approved}, enqueue_and_forward_to_destination}.
{{cash_reversal_adv_req, declined}, enqueue_and_forward_to_destination}.
{{cash_reversal_adv_req, reject},  reversal_advice_return_to_source}.
{{cash_reversal_adv_req, no_match}, reversal_advice_return_to_source}.
{{cash_reversal_adv_req, timeout}, repeat_advice}.
{{cash_reversal_adv_req, stip_approved}, [response_to_source,reversal_advice_to_recovery]}.
{{cash_reversal_adv_req, stip_declined}, response_to_source}.
{{cash_reversal_adv_req, advice_response_present}, claim_response}.

%*******************************************************************************
%%%%% REVERSAL RESP %%%%%%%%
%*******************************************************************************
{{purchase_reversal_adv_resp, approved}, conditional_forward_to_destination_no_timer}.
{{purchase_reversal_adv_resp, declined}, conditional_forward_to_destination_no_timer}.
{{purchase_reversal_adv_resp, reject}, drop_message}.
{{purchase_reversal_adv_resp, no_match}, drop_message}.
{{purchase_reversal_adv_resp, not_delivered}, drop_message}.

{{cash_reversal_adv_resp, approved}, conditional_forward_to_destination_no_timer}.
{{cash_reversal_adv_resp, declined}, conditional_forward_to_destination_no_timer}.
{{cash_reversal_adv_resp, reject}, drop_message}.
{{cash_reversal_adv_resp, no_match}, drop_message}.
{{cash_reversal_adv_resp, not_delivered}, drop_message}.

%*******************************************************************************
%%%%% REVERSAL REPEATS %%%%%%%%
%*******************************************************************************
{{purchase_reversal_adv_repeat_req, success}, forward_to_destination}.
{{purchase_reversal_adv_repeat_req, approved}, forward_to_destination}.
{{purchase_reversal_adv_repeat_req, declined}, forward_to_destination}.
{{purchase_reversal_adv_repeat_req, reject},  reversal_advice_return_to_source}.
{{purchase_reversal_adv_repeat_req, no_match}, reversal_advice_return_to_source}.
{{purchase_reversal_adv_repeat_req, timeout}, repeat_advice}.
{{purchase_reversal_adv_repeat_req, stip_approved}, [response_to_source,reversal_advice_to_recovery]}.
{{purchase_reversal_adv_repeat_req, stip_declined}, response_to_source}.
{{purchase_reversal_adv_repeat_req, advice_response_present}, claim_response}.

{{cash_reversal_adv_repeat_req, success}, forward_to_destination}.
{{cash_reversal_adv_repeat_req, approved}, forward_to_destination}.
{{cash_reversal_adv_repeat_req, declined}, forward_to_destination}.
{{cash_reversal_adv_repeat_req, reject},  reversal_advice_return_to_source}.
{{cash_reversal_adv_repeat_req, no_match}, reversal_advice_return_to_source}.
{{cash_reversal_adv_repeat_req, timeout}, repeat_advice}.
{{cash_reversal_adv_repeat_req, stip_approved}, [response_to_source,reversal_advice_to_recovery]}.
{{cash_reversal_adv_repeat_req, stip_declined}, response_to_source}.
{{cash_reversal_adv_repeat_req, advice_response_present}, claim_response}.

%*******************************************************************************
%%%%% undefined %%%%%%%%
%*******************************************************************************
{{undefined, reject}, return_bad_msg_to_source}.
{{undefined, bad_message}, drop_message}.

%*******************************************************************************
%%%%% notfound %%%%%%%%
%*******************************************************************************
{{notfound, reject}, return_bad_msg_to_source}.

%*******************************************************************************
%%%%% network message %%%%%%%%
%*******************************************************************************
{{signin_req, success}, nw_msg_approved}.
{{signin_req, reject}, nw_msg_declined}.
{{signin_req, already_signed_on}, nw_msg_declined}.

{{signin_resp, success}, nw_msg_approved}.
{{signin_resp, reject}, nw_msg_approved}.
{{signin_resp, already_signed_on}, nw_msg_declined}.

{{signoff_req, success}, nw_msg_approved}.
{{signoff_req, already_signed_on}, nw_msg_approved}.
{{signoff_req, reject}, nw_msg_declined}.

{{signoff_resp, success}, nw_msg_approved}.
{{signoff_resp, already_signed_on}, nw_msg_approved}.
{{signoff_resp, reject}, nw_msg_declined}.

{{echo_req, success}, nw_msg_approved}.
{{echo_req, already_signed_on}, nw_msg_approved}.
{{echo_req, reject}, nw_msg_declined}.

{{echo_resp, success}, nw_msg_approved}.
{{echo_resp, already_signed_on}, nw_msg_approved}.
{{echo_resp, reject}, nw_msg_declined}.

{{online_key_exchange_req, success}, [online_key_exchange_req_approved, online_key_exchange_generation]}.
{{online_key_exchange_req, reject}, response_to_source}.
{{online_key_exchange_req, duplicate}, response_to_source}.

{{online_key_exchange_resp, success}, online_key_exchange_resp_approved}.
{{online_key_exchange_resp, reject}, response_to_source}.
{{online_key_exchange_resp, duplicate}, response_to_source}.

{{gen_file_update_req, success},    gen_file_update_req_approved}.
{{gen_file_update_req, reject},     gen_file_update_req_declined}.
{{gen_file_update_req, duplicate},  gen_file_update_req_declined}.

{{presentment_purchase, success}, clearing_forward_to_destination}.
{{presentment_purchase, reject}, clearing_response_to_source}.
{{presentment_purchase, no_dest_route}, clearing_response_to_source}.
{{presentment_purchase, duplicate}, clearing_response_to_source}.
{{presentment_purchase, no_match}, clearing_response_to_source}.

{{presentment_cash, success}, clearing_forward_to_destination}.
{{presentment_cash, reject}, clearing_response_to_source}.
{{presentment_cash, no_dest_route}, clearing_response_to_source}.
{{presentment_cash, duplicate}, clearing_response_to_source}.
{{presentment_cash, no_match}, clearing_response_to_source}.

{{refund, success}, clearing_forward_to_destination}.
{{refund, reject}, clearing_response_to_source}.
{{refund, no_dest_route}, clearing_response_to_source}.
{{refund, duplicate}, clearing_response_to_source}.
{{refund, no_match}, clearing_response_to_source}.

{{presentment_purchase_reversal, success}, clearing_forward_to_destination}.
{{presentment_purchase_reversal, reject}, clearing_response_to_source}.
{{presentment_purchase_reversal, no_dest_route}, clearing_response_to_source}.
{{presentment_purchase_reversal, duplicate}, clearing_response_to_source}.
{{presentment_purchase_reversal, no_match}, clearing_response_to_source}.

{{presentment_cash_reversal, success}, clearing_forward_to_destination}.
{{presentment_cash_reversal, reject}, clearing_response_to_source}.
{{presentment_cash_reversal, no_dest_route}, clearing_response_to_source}.
{{presentment_cash_reversal, duplicate}, clearing_response_to_source}.
{{presentment_cash_reversal, no_match}, clearing_response_to_source}.

{{refund_reversal, success}, clearing_forward_to_destination}.
{{refund_reversal, reject}, clearing_response_to_source}.
{{refund_reversal, no_dest_route}, clearing_response_to_source}.
{{refund_reversal, duplicate}, clearing_response_to_source}.
{{refund_reversal, no_match}, clearing_response_to_source}.