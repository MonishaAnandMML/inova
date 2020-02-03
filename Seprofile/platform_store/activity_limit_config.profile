%% Contains Configuration to Enable/Disable Activity Limit Checking
%%
%% To Disable Base on Network Id, Se ID and Card Product ID.
%%
%%      {{Network_id, Se_id, Card_product_id}, [{is_enabled, true/false}]}.
%%
%% To Disable base on Tran types
%%
%%      {excluded_tran_types, [ TranTypes, ... ]}.
%%
%%--------------------------------------------------------------------
%% NOTE : By Default Activity Limit Checking is ENABLED for All
%%

{excluded_tran_types, []}.