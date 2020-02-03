%% {{MTI, Function Code, ProcessingCode-Transaction Type} , {Source ,Destination} }
{purchase_req , {acquirer, issuer}}.
{purchase_adv_req , {acquirer, issuer}}.
{purchase_auth_req , {acquirer, issuer}}.
{purchase_reversal_adv_req , {acquirer, issuer}}.
{purchase_reversal_adv_repeat_req , {acquirer, issuer}}.
{cash_req , {acquirer, issuer}}.
{cash_auth_req , {acquirer, issuer}}.
{cash_reversal_adv_req, {acquirer, issuer}}.
{cash_reversal_adv_repeat_req, {acquirer, issuer}}.
{purchase_resp , {issuer, acquirer}}.
{purchase_auth_resp , {issuer, acquirer}}.
{cash_auth_resp , {issuer, acquirer}}.
{purchase_reversal_adv_resp , {issuer, acquirer}}.
{cash_resp , {issuer, acquirer}}.
{purchase_auth_resp , {issuer, acquirer}}.
{cash_reversal_adv_resp , {issuer, acquirer}}.
{bill_payment_req , {issuer, acquirer}}.
{bill_payment_resp , {acquirer, issuer}}.
{balance_enquiry_req , {acquirer, issuer}}.
{balance_enquiry_resp , {issuer, acquirer}}.
{quasi_cash_req , {acquirer, issuer}}.
{quasi_cash_resp , {issuer, acquirer}}.
{presentment_purchase , {acquirer, issuer}}.
{presentment_purchase_reversal , {acquirer, issuer}}.
{refund , {acquirer, issuer}}.
{refund_reversal , {acquirer, issuer}}.
{presentment_cash , {acquirer, issuer}}.
{presentment_cash_reversal , {acquirer, issuer}}.

{send_money_req,        {acquirer, issuer}}.
{send_money_resp,       {issuer, acquirer}}.

{fund_xfr_debit_req,    {acquirer,issuer}}.
{fund_xfr_debit_resp ,  {issuer,acquirer}}.

{fund_xfr_credit_req,   {acquirer, issuer}}.
{fund_xfr_credit_resp , {issuer, acquirer}}.



