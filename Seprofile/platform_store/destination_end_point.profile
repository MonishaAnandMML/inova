%% profile for destination end point lookup validation
%% Could not use end_point.profile because we need to allow <<"0">> as well.
%% did not add <<"0">> in end_point.profile because that will conflict with source end point validation.
%% There is no or between the clauses (like MATCH clause cannot have OR operation with SPECIAL_INSTRUCTIONS, both are independent validation operation) 
%% with in Validator framework. Hence, we are creating a new separate profile for now

{ <<"0">>, []}.

{ <<"1">>, [] }.

{ <<"2">>, [] }.

{ <<"3">>, [] }.

{ <<"4">>, [] }.

{ <<"5">>, [] }.

{ <<"6">>, [] }.

{ <<"7">>, [] }.

{ <<"8">>, [] }.

{ <<"9">>, [] }.

{ <<"10">>, [] }.

{ <<"11">>, [] }.

{ <<"12">>, [] }.

{ <<"13">>, [] }.

{ <<"14">>, [] }.

{ <<"15">>, [] }.

{ <<"16">>, [] }.

{ <<"18">>, [] }.

{ <<"19">>, [] }.

{ <<"20">>, [] }.

{ <<"25">>, [] }.

{ <<"26">>, [] }.

{ <<"28">>, [] }.

{ <<"42">>, [] }.

{ <<"60">>, [] }.

{ <<"61">>, [] }.

{ <<"62">>, [] }.

{ <<"63">>, [] }.

{ <<"64">>, [] }.

{ <<"65">>, [] }.

{ <<"66">>, [] }.

{ <<"67">>, [] }.

{ <<"68">>, [] }.

{ <<"69">>, [] }.

{ <<"70">>, [] }.

{ <<"91">>, [] }.

{ <<"92">>, [] }.

{ <<"93">>, [] }.

{ <<"999999">>, [] }.
