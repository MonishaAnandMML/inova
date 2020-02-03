%%%-------------------------------------------------------------------
%%% @author innova
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 11. Feb 2018 11:03 PM
%%%-------------------------------------------------------------------
-module(profile_converter).
-author("innova").

-include_lib("se_core/include/se_log.hrl").

-export([connect_mongo/0,
  get_profiles/0,
  convert_object/2]).

%%-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
%% @doc
%% This is the main ,
%% it do all the operations as per the below document link
%%------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
get_env(Application, Key) ->
      get_env(Application, Key, undefined).

get_env(Application, Key, Default) ->
      get_env_default(application:get_env(Application, Key), Default).

get_env_default(undefined, Default) ->
      Default;
get_env_default({ok, Value}, _Default) ->
      Value.

%%-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
%% @doc
%% This is the one of the core functions
%% which connect the mongodb through the driver and
%% 1. fetch the each object in the table which is marked as staged
%% 2. Convert this Object to Erlang se format
%% 3. Collect the converted object id in a list
%%------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-spec(read_and_convert_objects(Cursor::any(), ProfileNameFD::any(),
    FormatData::any(),Count::integer(),OPList::list())->list() ).

read_and_convert_objects(Cursor, ProfileNameFD, FormatData,Count,OPList) ->
  Record = mc_cursor:next(Cursor),
  case Record of
    error ->
      %% gives error for end of data as well. 
      %% TODO : Maybe we should get the count of find and make sure
      %% number of elements match. 
      ?SE_LOG(debug,"Error while iterating cursor"),
      case Count of
        0 -> mc_cursor:close(Cursor),
          OPList;
        _ -> erlang:error("missing the objects")
      end
      ;
    {} ->
      ?SE_LOG(debug,"empty cursor"),
      mc_cursor:close(Cursor),
      Count;
    _ ->
      Val = convert_object(Record, FormatData),
      ?SE_LOG(info,"~n ~n   the val got after convert  IS ~p",[Val]),
      case Val of
        error -> error ;
        _ ->
          Id = erlang:element(1,Val),
          NewOpList = lists:append(OPList,[Id]),
          io:format(ProfileNameFD,"~9999p.~n", [Val]),
          read_and_convert_objects(Cursor, ProfileNameFD, FormatData, Count -1,NewOpList)
      end
  end.

display_error_object(wrong_object ,JsonObj,Format_def) ->
  ?SE_LOG(debug,"Error : wrong_object The Json object ~p is not compatible with format def ~p ~n",[JsonObj,Format_def]),
  error .

display_error_object(unexpected_error ,JsonObj,Format_def, Crash)  ->
  ?SE_LOG(debug,"Error : unexpected_error There is a crash ~p for Json object ~p with format def ~p ~n",[Crash,JsonObj,Format_def]),
  error .

convert_object(JSONRecord, FormatData) ->
  try
    json_to_se_erlang:update_se_format(JSONRecord, FormatData)
    catch
      error: wrong_object ->
        display_error_object(wrong_object,JSONRecord, FormatData);
        Crash:_ -> display_error_object(unexpected_error,JSONRecord,FormatData,Crash)
  end  .

%%-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
%% @doc
%% This is the core function which
%% 1. read all the objects from all table in mongodb using the driver ,
%% 2. For each table it forms corresponding format file in the folder mentioned in SysConfig
%% 4. For each table it collect the information about {CollectionName,ValueList,Time,Count};
%% where
%% 1.CollectionName : name of the table
%% 2. ValueList : Contain the Json object ID which are converted
%% 3. Time : Represent the time of the each format files created
%% 4. Count: Represent the no of the converted objects corresponding to table
%%-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-spec(read_and_convert(Connection::any(), Connection1::any(),
    CollectionName::any(),ProfileFile::any(),FormatFile::any())->tuple() ).

read_and_convert(Connection, Connection1, CollectionName, ProfileFile, FormatFile) ->
  %?SE_LOG(info,"Data ~p ~p ~p",[CollectionName,ProfileFile, FormatFile]),
  %% we need to change the state to satged when it deployed
  %Count = mc_worker_api:count(Connection1,CollectionName,#{<<"State">> => <<"Staged">>}),
  Count = mc_worker_api:count(Connection1,CollectionName,{}),
 ?SE_LOG(info,"Total ~p objects found Format File ~p Profile File ~p",[Count, FormatFile, ProfileFile]),
  case Count of
    0 -> {};
    _->
      %% we need to change the state to satged when it deployed
      %%{ok, Cursor} = mc_worker_api:find(Connection, CollectionName, #{<<"State">> => <<"Staged">>}),
      {ok, Cursor} = mc_worker_api:find(Connection, CollectionName, {}),
      case file:consult(FormatFile) of
        {ok, [FormatData]} ->
          {ok, Fd} = file:open(ProfileFile, write),
          ValueList = read_and_convert_objects(Cursor, Fd, FormatData,Count,[]),
          case ValueList of
            error ->
              file:close(Fd),
              error ;
            _ ->
             ?SE_LOG(info,"the value list in read and convert is ~p",[ValueList]),
              %?SE_LOG(info,"~ncheckking for controll"),
              file:close(Fd),

              {CollectionName,ValueList,Count}
          end;

        {error, Reason} ->
          ?SE_LOG(info,"failed to read meta data with reason = ~p", [Reason])
        %%halt()
      end
  end.

%%-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
%% @doc
%% This is the core function which
%% 1. iterate over the input format template list
%% 2. for each template calls function  read_and_convert
%% 3. Read and convert function returns the tuple of {CollectionName,MongoObjectList,Time,Count};
%% 4. It Will append this tuple into its PerformedList
%%------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-spec(read_and_convert_all(Connection::any(), Connection1::any(),
    InputList::list(),PerformedList::list())->list() ).

read_and_convert_all(_, _,[],PerformedList) ->
  PerformedList;

read_and_convert_all(Connection,Connection1, [H|T],PerformedList) ->
  {CollectionName,ProfileName,FormatName} = H,
  {ok, ApplicationName} = application:get_application(),
  ?SE_LOG(info,"ApplicationName ~p",[ApplicationName]),
  FormatFile =  get_env(ApplicationName, format_input_dir)  ++ FormatName,
  ProfileFile = get_env(ApplicationName, profile_output_dir) ++ ProfileName,
  Val = read_and_convert(Connection, Connection1, CollectionName, ProfileFile, FormatFile),
  case Val of
    error -> error ;
    _ ->
     ?SE_LOG(info,"the value got in read and convert all is ~p",[Val]),
      UpdatedPerformList = lists:append(PerformedList,[Val]),
     ?SE_LOG(info,"the performed list is ~p",[PerformedList]),
      read_and_convert_all(Connection,Connection1, T,UpdatedPerformList)
  end.

%%-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
%% @doc
% This will clear up the output folder each time when it called
%%-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
remove_if_profile_file(File) ->
  case string:find(File,".profile") of
    nomatch ->
      ?SE_LOG(info,"not a profile file ~p",[File]);
    _ ->
      file:delete(File),
      ?SE_LOG(info,"Deleted file ~p",[File])
  end.

remove_files(Files) ->
 ?SE_LOG(info,"Directoryu path is ~n ~p ~n",[Files]),
  %{ok, Files} = file:list_dir(DirectoryPath),
  lists:foreach(fun(File) -> remove_if_profile_file(File) end, Files).

%%-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
%% @doc
%% This is the main fun called from rest API ,
%% it do all the operations as per the below document link
% https://gitlab.com/Payments_Innova/se_profile_UI/blob/63-update-packaging-and-sending-of-profile-workflow-document-versioning/SmartEdge%20Profile%20System/ProfileVersioning/ConvertProfile-to-Platform-format.md
%% returns ok if every thing success
%%------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-spec(get_profiles( )-> atom()).
get_profiles() ->
  InputList = [
    {<<"accountrange">>,"account_range.profile","account_range.format"},
    {<<"acquirer">>,"acquirer.profile","acquirer.format"},
    {<<"brand">>,"brand.profile","brand.format"},
    {<<"cardproduct">>,"card_product.profile","card_product.format"},
    {<<"productscheme">>,"card_product_scheme.profile","card_product_scheme.format"},
    {<<"endpoint">>,"end_point.profile","end_point.format"},
    {<<"messageformatter">>,"formatter.profile","formatter.format"},
    {<<"headerformatter">>,"header_formats.profile","header_formats.format"},
    {<<"network">>,"network.profile","network.format"},
    {<<"processor">>,"processor.profile","processor.format"},
    {<<"route">>,"route.profile","route.format"},
    {<<"seid">>,"se_entity.profile","se_entity.format"},
    {<<"recoveryadviceretry">>,"recovery_advice_retry_config.profile","recovery_advice_retry_config.format"}
    %{<<"feerate">>,"fee_rate.profile","fee_rate.format"},
    %{<<"feegroup">>,"fee_group.profile","fee_group.format"},   
    %{<<"debitcreditrule">>,"dr_cr_rule.profile","debit_credit_rule.format"},
    %{<<"feerule">>,"fee_rules.profile","fee_rules.format"},
    %{<<"debitcreditrule">>,"dr_cr_rule.profile","debit_credit_rule.format"},
    %{<<"feerule">>,"fee_rules.profile","fee_rules.format"}
	],

  remove_files([X || {_W, X, _Y} <- InputList]),
  Connection = connect_mongo(),
  Connection1 = connect_mongo(),

  PerformedList = read_and_convert_all(Connection,Connection1, InputList,[]),
  case PerformedList of
    error -> error ;
    _ ->

     ?SE_LOG(info,"~n Performed List is ~p ",[PerformedList])
  end.

%%-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
%% @doc
%%
%%Connect with mongodb
%%
%%
%
%%-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-spec(connect_mongo( )-> any()).
connect_mongo() ->
  application:ensure_all_started (mongodb),
  {ok, Application} = application:get_application(),
  {ok,Database} = application:get_env(Application, mongo_database),
  {ok,Host} = application:get_env(Application, mongo_host),
  {ok,Port} = application:get_env(Application, mongo_port),

  case mc_worker_api:connect ([{database, Database}, {host, Host}, {port, Port}]) of
    {ok, Connection} ->
      Connection;
    {error, Reason} ->
      ?SE_LOG(debug,"Failed to connect Reason : ~p",[Reason])
      %%halt()
  end.
