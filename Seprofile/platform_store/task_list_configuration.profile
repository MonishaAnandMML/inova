% Task list - which contains the list of task needed to perform to get transaction classification details

% Request :
{purchase_auth_req, [get_merchant_category_group, is_AVS, is_track_data, is_pin_data, get_pos_code_qualifier, get_From_Account, get_To_Account] }. 
{cash_auth_req, [get_merchant_category_group, is_AVS, is_track_data, is_pin_data, get_pos_code_qualifier, get_From_Account, get_To_Account] }. 
{purchase_req, [get_merchant_category_group, is_AVS, is_track_data, is_pin_data, get_pos_code_qualifier, get_From_Account, get_To_Account] }. 
{cash_req, [get_merchant_category_group, is_AVS, is_track_data, is_pin_data, get_pos_code_qualifier, get_From_Account, get_To_Account] }. 
{debit_adjustment_req, [] }. 
{purchase_with_cashback_req, [] }. 
{quasi_cash_req, [get_merchant_category_group, is_AVS, get_From_Account, get_To_Account] }.
{credit_adjustment_req, [] }. 
{original_credit_req, [] }. 
{balance_enquiry_req, [get_merchant_category_group, is_AVS, get_From_Account, get_To_Account] }. 
{card_to_card_transfer_req, [] }. 
{person_to_person_transfer_req, [] }. 
{bill_payment_req, [get_From_Account, get_To_Account] }. 
{purchase_reversal_adv_req, [] }. 
{cash_reversal_adv_req, [] }. 
{purchase_reversal_adv_repeat_req, [] }. 
{cash_reversal_adv_repeat_req, [] }. 

{purchase_adv_req, [get_merchant_category_group, is_AVS, is_track_data, is_pin_data, get_pos_code_qualifier, get_From_Account, get_To_Account] }. 
{purchase_adv_repeat_req, [] }.

{send_money_req,      [get_merchant_category_group, is_AVS, is_track_data, is_pin_data, get_pos_code_qualifier, get_From_Account, get_To_Account] }.
{fund_xfr_debit_req,  [get_merchant_category_group, is_AVS, is_track_data, is_pin_data, get_pos_code_qualifier, get_From_Account, get_To_Account] }.
{fund_xfr_credit_req, [get_merchant_category_group, is_AVS, is_track_data, is_pin_data, get_pos_code_qualifier, get_From_Account, get_To_Account] }.

%clearing
{presentment_purchase, [get_merchant_category_group, is_AVS, is_track_data, is_pin_data, get_pos_code_qualifier, get_From_Account, get_To_Account] }.
{presentment_purchase_reversal, [get_merchant_category_group, is_AVS, is_track_data, is_pin_data, get_pos_code_qualifier, get_From_Account, get_To_Account] }.
{refund, [get_merchant_category_group, is_AVS, is_track_data, is_pin_data, get_pos_code_qualifier, get_From_Account, get_To_Account] }.
{refund_reversal, [get_merchant_category_group, is_AVS, is_track_data, is_pin_data, get_pos_code_qualifier, get_From_Account, get_To_Account] }.
{presentment_cash, [get_merchant_category_group, is_AVS, is_track_data, is_pin_data, get_pos_code_qualifier, get_From_Account, get_To_Account] }.
{presentment_cash_reversal, [get_merchant_category_group, is_AVS, is_track_data, is_pin_data, get_pos_code_qualifier, get_From_Account, get_To_Account] }.

% Response :
{purchase_auth_resp, [] }. 
{cash_auth_resp, [] }. 
{purchase_resp, [] }. 
{cash_resp, [] }. 
{debit_adjustment_resp, [] }. 
{purchase_with_cashback_resp, [] }. 
{quasi_cash_resp, [] }. 
{refund_resp, [] }. 
{credit_adjustment_resp, [] }. 
{original_credit_resp, [] }. 
{balance_enquiry_resp, [] }. 
{card_to_card_transfer_resp, [] }. 
{person_to_person_transfer_resp, [] }. 
{bill_payment_resp, [] }. 
{purchase_reversal_adv_resp, [] }. 
{cash_reversal_adv_resp, [] }. 
{purchase_reversal_adv_resp, [] }. 
{cash_reversal_adv_resp, [] }. 

{purchase_adv_resp, [] }.

{send_money_resp,      []}.
{fund_xfr_debit_resp,  []}.
{fund_xfr_credit_resp, []}.


% Despute :
{chargeback_purchase, [] }. 
{representment_purchase, [] }.
