%% { Route ID, [ Route ID Type,Routing Priority ,Routing Method, Base Route ID, SmartEdge ID, [ { Network ID, [ Supported Transactions, Supported Merchant Category Codes, Processor ID, Service Access Code, Opted Business Services] } ], Assured Transaction Response, Not Receive Forward Referrals, Route Category, effective_datetimestamp, is_active, is_blocked, is_deleted, activation_datetimestamp, creation_datetimestamp, modify_datetimestamp, delete_datetimestamp, expiry_datetimestamp ] }.

{ <<"900001">>, [ issuer,0 ,"BASE", <<"0">>, <<"ABCBKABL001">>, [ {<<"1">>, [  'tran_type_to_key_fields.profile','mcc_for_network_id_1.profile',<<"1">>, [<<"356001">>], [<<"mod10_check">>, <<"pan_length_check">>]] } ], 'no', 'no', 'any', effective_datetimestamp, is_active, is_blocked, is_deleted, activation_datetimestamp, creation_datetimestamp, modify_datetimestamp, delete_datetimestamp, expiry_datetimestamp ] }.

{ <<"900011">>, [ issuer,1 ,"PIN_TXN", <<"900001">>, <<"ABCBKABL001">>, [ {<<"1">>, [  'tran_type_to_key_fields.profile','mcc_for_network_id_1.profile',<<"5">>, [<<"356001">>], [<<"mod10_check">>, <<"pan_length_check">>]] } ], 'no', 'no', 'any', effective_datetimestamp, is_active, is_blocked, is_deleted, activation_datetimestamp, creation_datetimestamp, modify_datetimestamp, delete_datetimestamp, expiry_datetimestamp ] }.

 {<<"900012">>, [ issuer,1 ,"ATM_TXN", <<"900001">>, <<"ABCBKABL001">>, [ {<<"1">>, [  'tran_type_to_key_fields.profile','mcc_for_network_id_1.profile',<<"6">>, [<<"356001">>], [<<"mod10_check">>, <<"pan_length_check">>]] } ], 'no', 'no', 'any', effective_datetimestamp, is_active, is_blocked, is_deleted, activation_datetimestamp, creation_datetimestamp, modify_datetimestamp, delete_datetimestamp, expiry_datetimestamp ] }.

{ <<"900013">>, [ issuer,3 ,"ATM_PIN_TXN", <<"900001">>, <<"ABCBKABL001">>,[ {<<"1">>, [  'tran_type_to_key_fields.profile','mcc_for_network_id_1.profile',<<"66">>, [<<"356001">>], [<<"mod10_check">>, <<"pan_length_check">>]] } ], 'no', 'no', 'any', effective_datetimestamp, is_active, is_blocked, is_deleted, activation_datetimestamp, creation_datetimestamp, modify_datetimestamp, delete_datetimestamp, expiry_datetimestamp ] }.

{ <<"900111">>, [ processor ,0 ,"BASE", <<"0">>, <<"ABCBKABL001">>,[ {<<"1">>, [  'tran_type_to_key_fields.profile','mcc_for_network_id_1.profile',<<"1">>, [<<"356001">>], [<<"mod10_check">>, <<"pan_length_check">>]] } ], 'no', 'no', 'any', effective_datetimestamp, is_active, is_blocked, is_deleted, activation_datetimestamp, creation_datetimestamp, modify_datetimestamp, delete_datetimestamp, expiry_datetimestamp ] }.

{ <<"900004">>, [ acquirer,0, "BASE", <<"0">>, <<"PQRBKABL001">>, [ {<<"1">>, [  'tran_type_to_key_fields.profile','mcc_for_network_id_1.profile',<<"4">>, [<<"356001">>], []] },{<<"2">>, [  'tran_type_to_key_fields.profile','mcc_for_network_id_2.profile', <<"4">>, [<<"356001">>], []] } ], 'no', 'no',  'any', effective_datetimestamp, is_active, is_blocked, is_deleted, activation_datetimestamp, creation_datetimestamp, modify_datetimestamp, delete_datetimestamp, expiry_datetimestamp ] }.

{ <<"900444">>, [ processor,0, "BASE", <<"0">>, <<"PQRBKABL001">>, [ {<<"1">>, [  'tran_type_to_key_fields.profile','mcc_for_network_id_1.profile',<<"14">>, [<<"356001">>], []] } ], 'no', 'no',  'any', effective_datetimestamp, is_active, is_blocked, is_deleted, activation_datetimestamp, creation_datetimestamp, modify_datetimestamp, delete_datetimestamp, expiry_datetimestamp ] } .

