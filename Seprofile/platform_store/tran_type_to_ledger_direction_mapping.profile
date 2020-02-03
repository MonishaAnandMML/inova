%%%{tran_type,[{rule_id,amount_basis,dr_cr_rule_id}]}.

{purchase_resp,[
               {<<"1">>,transaction_amount,<<"2">>}
               ]
}.

{bill_payment_resp,[
               {<<"2">>,transaction_amount2,<<"2">>},
               {<<"3">>,transaction_amount,<<"3">>}
               ]
}.

{cash_resp,[
               {<<"1">>,transaction_amount,<<"2">>}
               ]
}.

{purchase_auth_resp,[
               {<<"1">>,transaction_amount,<<"2">>}
               ]
}.

{cash_auth_resp,[
               {<<"1">>,transaction_amount,<<"2">>}
               ]
}.

{presentment_purchase,[
               {<<"1">>,transaction_amount,<<"8">>}
               ]
}.

{presentment_cash,[
               {<<"1">>,transaction_amount,<<"8">>}
               ]
}.

{presentment_purchase_reversal,[
               {<<"1">>,transaction_amount,<<"2">>}
               ]
}.

{refund,[
               {<<"1">>,transaction_amount,<<"2">>}
               ]
}.

{refund_reversal,[
               {<<"1">>,transaction_amount,<<"8">>}
               ]
}.

{presentment_cash_reversal,[
               {<<"1">>,transaction_amount,<<"2">>}
               ]
}.