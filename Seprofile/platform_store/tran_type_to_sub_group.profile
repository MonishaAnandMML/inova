%% {Tran_type, Sub_group}
%%

%% Request Group %%
{ purchase_auth_req,                req }.
{ purchase_req,                     req }.
{ cash_req,                         req }.
{ cash_auth_req,                    req }.
{ bill_payment_req,                 req }.
{ send_money_req,                   req }.
{ fund_xfr_debit_req,               req }.
{ fund_xfr_credit_req,              req }.
{ online_key_exchange_req,          req }.
{ signin_req,                       req }.
{ signoff_req,                      req }.
{ echo_req,                         req }.
{ online_key_exchange_req,          req }.

%% Response Group %%
{ purchase_auth_resp,               resp }.
{ purchase_resp,                    resp }.
{ cash_resp,                        resp }.
{ cash_auth_resp,                   resp }.
{ bill_payment_resp,                resp }.


%% Clearing Group %%
{ presentment_purchase,             resp }.
{ presentment_cash,                 resp }.
{ presentment_purchase_reversal,    resp }.
{ presentment_cash_reversal,        resp }.
{ refund,                           resp }.
{ refund_reversal,                  resp }.
{ send_money_resp,                  resp }.
{ fund_xfr_debit_resp,              resp }.
{ fund_xfr_credit_resp,             resp }.
{ online_key_exchange_resp,         resp }.


%% Adv Request Group %%
{ purchase_adv_req,                 adv_req }.
{ cash_adv_req,                     adv_req }.
{ fund_xfr_credit_adv_req,          adv_req }.


%% Adv Response Group %%
{ purchase_adv_resp,                adv_resp }.
{ cash_adv_resp,                    adv_resp }.
{ fund_xfr_credit_adv_resp,         adv_resp }.


%% Reversal Adv Request Group %%
{ purchase_reversal_adv_req,        reversal_adv_req }.
{ cash_reversal_adv_req,            reversal_adv_req }.
{ fund_xfr_debit_rev_adv_req,       reversal_adv_req }.


%% Reversal Adv Response Group %%
{ purchase_reversal_adv_resp,       reversal_adv_resp }.
{ cash_reversal_adv_resp,           reversal_adv_resp }.
{ fund_xfr_debit_rev_adv_resp,      reversal_adv_resp }.


%% Adv Repeat Group %%
{ purchase_adv_repeat_req,          repeat_req }.
{ purchase_reversal_adv_repeat_req, repeat_req }.
{ cash_reversal_adv_repeat_req,     repeat_req }.