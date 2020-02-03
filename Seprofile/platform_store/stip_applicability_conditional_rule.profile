%%{overriderules,[seq_order,{Source Attribute,coming from, key},Condition,{Comparing value, coming from,key},Logical condition]}.

{'override_rules',
  [{1,{<<"LimitCheckStatus">>,'SEContext',{'limit_check_status','NA'}},'equal_to',{'failure','value',{}},'AND'},
  {2,{<<"CardProductId">>,'SEContext',{'se_member_profile','NA'}},'equal_to',{<<"123003">>,'value',{}},'OR'},
  {3,{<<"ProcessingCodeTranType">>,'SEContext',{'se_data_elements','NA'}},'equal_to',{70,'value',{}},'OR'},
  {4,{<<"ProcessingCodeTranType">>,'SEContext',{'se_data_elements','NA'}},'equal_to',{72,'value',{}},'OR'},
  {5,{<<"CardProductId">>,'SEContext',{'se_member_profile','NA'}},'equal_to',{<<"123003">>,'value',{}},'AND'},
  {6,{<<"TranType">>,'SEContext',{'tran_type','NA'}},'not_equal_to',{'reversal','value',{}},'AND'},
  {7,{<<"LimitCheckStatus">>,'SEContext',{'limit_check_status','NA'}},'equal_to',{'failure','value',{}},'OR'},
  {8,{<<"CardProductId">>,'SEContext',{'se_member_profile','NA'}},'equal_to',{<<"123003">>,'value',{}},'AND'},
  {9,{<<"TranType">>,'SEContext',{'tran_type','NA'}},'not_equal_to',{'reversal','value',{}},'OR'}
  ] }.

{'IsIssuerAvailable_yes',
  [{1,{<<"IssuerProcessingCapacity">>,'RiakMap',{<<"ipc_volume_bucket">>,<<"ResolvedDestinationRoutId">>}},'greater_then',
    {<<"ProcessingCapacityLimit">>,'SEContext',{'se_dynamic_capacity_limit','NA'}},'AND'},
  {2,{<<"AmountTransaction">>,'SEContext',{'se_data_elements','integer'}},'lesser_then',
    {<<"CurrentDiversionThreshold">>,'SEContext',{'se_diversion_threshold_amount','NA'}},'OR'},
  {3,{<<"IsTxnHasPIN">>,'FunctionLib',{'se_services_common','is_pin_enabled'}},'equal_to',{'true','value',{}},'AND'},
  {4,{<<"AlwaysPerformPVS">>,'Profile',{'account_range.profile',{'se_member_profile',<<"AccountRange">>,13}}},'equal_to',{'yes','value',{}},'AND'},
  {5,{<<"PVSResults">>,'SEContext',{'pvs_status','NA'}},'equal_to',{'success','value',{}},'OR'},
  {6,{<<"LimitCheckStatus">>,'SEContext',{'limit_check_status','NA'}},'equal_to',{'success','value',{}},'OR'}
  ] }.

{'IsIssuerAvailable_no',
  [{1,{<<"NoIssuerEndPointSignedOn">>,'FunctionLib',{'se_services_common','no_issuer_end_point_signed_on'}},'equal_to',{'yes','value',{}},'OR'},
  {2,{<<"TimeOutFlag">>,'SEContext',{'is_timeout','NA'}},'equal_to',{'true','value',{}},'AND'},
  {3,{<<"AssuredTransactionResponse">>,'Profile',{'route.profile',{'se_member_profile',<<"ResolvedDestinationRoutId">>,8}}},'equal_to',{'yes','value',{}},'OR'},
  {4,{<<"LimitCheckStatus">>,'SEContext',{'limit_check_status','NA'}},'equal_to',{'success','value',{}},'OR'}
  ] }.
