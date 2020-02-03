%% {Tran_type, From_entity, To_entity}

{purchase_req,  cr, dr}.
{purchase_resp, dr, cr}.

{purchase_auth_req,  cr, dr}.
{purchase_auth_resp, dr, cr}.

{purchase_adv_req,          cr, dr}.
{purchase_adv_resp,         dr, cr}.
{purchase_adv_repeat_req,   cr, dr}.

{purchase_reversal_adv_req,         dr, cr}.
{purchase_reversal_adv_resp,        cr, dr}.
{purchase_reversal_adv_repeat_req,  dr, cr}.

{cash_req,  cr, dr}.
{cash_resp, dr, cr}.

{cash_auth_req,  cr, dr}.
{cash_auth_resp, dr, cr}.

{cash_adv_req,          cr, dr}.
{cash_adv_resp,         dr, cr}.
{cash_adv_repeat_req,   cr, dr}.

{cash_reversal_adv_req,         dr, cr}.
{cash_reversal_adv_resp,        cr, dr}.
{cash_reversal_adv_repeat_req,  dr, cr}.

{presentment_purchase,          cr, dr}.
{presentment_purchase_reversal, dr, cr}.

{presentment_cash,              cr, dr}.
{presentment_cash_reversal,     dr, cr}.

{refund,            dr, cr}.
{refund_reversal,   cr, dr}.

{bill_payment_resp, dr, cr}.