%% Key - {NetworkID, source/dest}
%% Value - list of rules with accumulation group id .


%% Switching charges
{{<<"1">>, source},
[

{ 
  [ {se_ctx, se_data_elements, <<"ResponseCode">>, equals, se_any}
  ],
  <<"1001">>
} 

]
}.

%% Processing charges
{{<<"1">>, dest},
[

{ 
  [ {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>}
  ],
  <<"1002">>
}

]
}.

