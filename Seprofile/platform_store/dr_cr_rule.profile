%%% {dr_cr_rule_id,debit_from,credit_to}

{<<"1">>, customer_src, se_entity_src}.
{<<"2">>, se_entity_src, se_entity_dest}.
{<<"3">>, se_entity_dest, customer_dest}.
{<<"4">>, customer_src, customer_dest}.
{<<"5">>, se_network, se_entity_src}.
{<<"6">>, se_entity_src, se_network}.
{<<"7">>, se_entity_dest, se_network}.
{<<"8">>, se_entity_dest, se_entity_src}.