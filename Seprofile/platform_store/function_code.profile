%% { Code, []} 
{ <<"100">>, [<<"Authorization Request">>,<<"This can be used with 11XX Message class">>]}.
{ <<"200">>, [<<"Original Financial / Presentment">>,<<"This can be used under 12XX for Financial (SMS) OR under 11XX for Authorization request DMS.">>]}.
{ <<"201">>, [<<"Repeat Advice / Re-presentment">>,<<"This can be used as exception transaction flow under 12XX for Financial (SMS) OR under 11XX for Authorization request DMS.">>]}.
{ <<"400">>, [<<"Chargeback / Reversal">>,<<"This can be used as exception transaction flow under 12XX for Financial (SMS) OR under 11XX for Authorization request DMS.">>]}.
{ <<"801">>, [<<"Sign In">>,<<"For Sign In request under 18XX">>]}.
{ <<"802">>, [<<"Sign Off">>, <<"For Sign Off request under 18XX">>]}.
{ <<"803">>, [<<"Heart Beat / Echo Test">>, <<"For ECHO TEST / Heart beat message under 18XX">>]}.
{ <<"811">>, [<<"???">>]}.
{ <<"302">>, [<<"Gen file Update">>, <<"This will be used for File Update Message Req/Resp and Adv Req/Resp.">>]}.
