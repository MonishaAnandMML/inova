%%% {ledger_col_name, get_from, tag}

{se_ledger_record, [
                    post_date,
                    network_id,
                    transaction_ref,
                    src_type,
                    src_id,
                    src_account_ref,
                    dest_type,
                    dest_id,
                    dest_account_ref,
                    currency_code,
                    amount_transaction,
                    tran_type,
                    ledger_event_code,
                    user_defined_fld_1,
                    user_defined_fld_2,
                    user_defined_fld_3,
                    user_defined_fld_4,
                    user_defined_fld_5
                    ]}.

{ledger_event_code,[na]}.
{user_defined_fld_1,[na]}.
{user_defined_fld_2,[na]}.
{user_defined_fld_3,[na]}.
{user_defined_fld_4,[na]}.
{user_defined_fld_5,[na]}.
{post_date, [na]}.

{network_id, [
              {se_member_profile,map, <<"NetworkID">>}
              ]}.

{transaction_ref, [{se_data_elements,map,<<"TransactionID">>}]}.

{src_type,[
            na %%customer_src,customer_dest
           ]}.

{src_id, [
                   {customer_src, se_src_ctx,map, <<"AccountID">>},
                   {se_entity_src, se_member_profile,map, <<"SourceSeEntityId">>},
                   {se_network, se_member_profile,map, <<"NetworkID">>},
                   {customer_dest, se_data_elements, map,<<"CardAcceptorIdCode">>},
                   %{customer_dest, se_dest_ctx, map,<<"AccountID">>},
                   {se_entity_dest, se_member_profile,map, <<"DestSeEntityID">>}

            ]}.

{src_account_ref, [
                   {customer_src, se_src_ctx,map, <<"AccountNumber">>},
                   {se_entity_src, se_member_profile,map, <<"SourceSeEntityId">>},
                 %%  {se_network, se_member_profile, map, <<"NetworkAccountNumber">>},
                   {se_network, se_src_ctx, map, <<"NetworkAccountNumber">>},
                   {customer_dest, se_dest_ctx,map, <<"AccountNumber">>},
                   {se_entity_dest, se_member_profile,map, <<"DestSeEntityID">>}
                  ]}.

{dest_type,[
            na %% follow as src_type
           ]}.

{dest_id, [
                   {customer_src, se_src_ctx,map, <<"AccountID">>},
                   {se_entity_src, se_member_profile,map, <<"SourceSeEntityId">>},
                   %%{se_network, se_member_profile,map, <<"NetworkID">>},
                   {se_network, se_src_ctx, map, <<"NetworkAccountNumber">>},
                   {customer_dest, se_data_elements, map,<<"CardAcceptorIdCode">>},
                   {se_entity_dest, se_member_profile,map, <<"DestSeEntityID">>}
            ]}.

{dest_account_ref, [
                   {customer_src, se_src_ctx,map, <<"AccountNumber">>},
                   {se_entity_src, se_member_profile,map, <<"SourceSeEntityId">>},
                   %%{se_network, se_member_profile, map, <<"NetworkAccountNumber">>},
                   {se_network, se_src_ctx, map, <<"NetworkAccountNumber">>},
                   {customer_dest, se_dest_ctx,map, <<"AccountNumber">>},
                   {se_entity_dest, se_member_profile,map, <<"DestSeEntityID">>}
                   ]}.

{currency_code,[{se_data_elements,map,<<"CurrencyCodeTransaction">>}]}.

{amount_transaction,[{se_data_elements,map,<<"AmountTransaction">>}]}.

{tran_type,[{se_context,record,tran_type}]}.
