%%%-------------------------------------------------------------------
%%% @author innova
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 23. Sep 2017 12:04 PM
%%%-------------------------------------------------------------------
-module(se_profile_common_lib).
-author("innova").

-include_lib("se_core/include/se_context.hrl").
-include_lib("se_core/include/se_log.hrl").

-export([
          load_platform_data/1,
          load_profile_data/1,
          load_profiles/2,
          load_profiles/1,
          get_header_formats/1,
          get_header_field_definitions/0,
          get_profile_data/3,
          get_data_field_definitions/0,
          get_header_format_field_definitions/1,
          get_msg_format_id/1,
          get_id_list_from_profile/1,
          get_se_id_from_route/1,
          get_country_code_for_given_se_id/1,
          get_mcg_code/2,
          get_region_code/1,
          get_productid_se_id_list_from_product/0,
          get_mcg_code_list/0,
          get_region_name/1,
          get_mcc_tran_group/2
]).

-define(POSITION,4).
-define(MSG_FORMATID_INDEX, 3).
-define(EST_TABLE_OPTIONS, [bag,named_table]).
-define(COUNTRY_CODE_INDEX, 5).
-define(REGION_CODE_INDEX, 10).
-define(REGION_NAME_INDEX, 9).
-define(MCG_CODE,5).
-define(MCC_TRAN_GROUP_POS, 3).
-define(SE_ID_INDEX_IN_ROUTE_PROFILE,5).
-define(SE_ID_INDEX_IN_PRODUCT,3).

%%----------------------------------------------------------------------------------------------------------------------
%% @doc
%% The function is used to load platform data initially by reading platform data files to database.
%%
%% The function takes PlatformDataPath as argument.
%%
%% Return value: atom()
%%                Its an atom, which has possible values ok | error.
%% @returns : atom()
%%
%% @end
%%----------------------------------------------------------------------------------------------------------------------
-spec load_platform_data(PlatformDataPath ::atom()|binary()|[atom()|[any()]|char()]) -> ['error' | 'ok'].

load_platform_data(PlatformDataPath) ->
  {ok, FileNamesList} = file:list_dir(PlatformDataPath),

  Fun =
    fun(FileName) ->
        PathOfPlatformDataFile = PlatformDataPath ++ FileName,
        Name = erlang:list_to_atom(FileName),
        ?SE_LOG(info,"Filename =~p", [Name]),
        Name = ets:new(Name, ?EST_TABLE_OPTIONS),

        case file:consult(PathOfPlatformDataFile) of
          {ok, PlatformData} ->
            load_data_into_ets_table(Name, PlatformData);

          {error, Reason} ->
            ?SE_LOG(error,"failed to read platform data with reason = ~p", [Reason]),
            error
        end
    end,

  lists:map(Fun, FileNamesList).

%%----------------------------------------------------------------------------------------------------------------------
%% @doc
%% The function is used to load profile data initially by reading profile data files to database.
%%
%% The function takes ProfileDatPath as argument 
%%
%% Return value: atom()
%%                Its an atom, which has possible values ok | error.
%% @returns : atom()
%%
%% @end
%%----------------------------------------------------------------------------------------------------------------------
-spec load_profile_data(ProfileDataPath::atom()|binary()|[atom()|[any()]|char()]) -> ['error' | 'ok'].

load_profile_data(ProfileDataPath) ->
  {ok, FileNamesList} = file:list_dir(ProfileDataPath),

  Fun =
    fun(FileName) ->
        PathOfProfileFile = ProfileDataPath ++ FileName,
        Name = erlang:list_to_atom(FileName),
        ?SE_LOG(info,"Filename =~p", [Name]),
        Name = ets:new(Name, ?EST_TABLE_OPTIONS),

        case file:consult(PathOfProfileFile) of
          {ok, ProfileData} ->
            load_data_into_ets_table(Name, ProfileData);

          {error, Reason} ->
            ?SE_LOG(error,"failed to read profile data with reason = ~p", [Reason]),
            error
        end
    end,

  lists:map(Fun, FileNamesList).


%%----------------------------------------------------------------------------------------------------------------------
%% @doc
%%      Function to load Profiles. If profile is present in Host profile Directory than it wll be loaded otherwise
%%    Profile present in the Network Profile Directory will be loaded.
%%
%%  Arguments
%%    Ntwk_prof_dir :: String. Contains the path of Network Profile directory
%%    Host_prof_dir :: String. Contains the path ot Host Profile directory
%%
%%  Returns
%%    'ok'    - all profiles successfully loaded.
%% @end
%%----------------------------------------------------------------------------------------------------------------------

-spec load_profiles(atom()|binary()|[atom()|[any()]|char()]) -> 'ok'.

load_profiles(Prof_dir_path) ->
  load_profiles(Prof_dir_path, "").

%%----------------------------------------------------------------------------------------------------------------------

-spec load_profiles(atom()|binary()|[atom()|[any()]|char()], atom()|binary()|[atom()|[any()]|char()] ) -> 'ok'.

load_profiles(Ntwk_prof_dir, Host_prof_dir) ->

  ?SE_LOG(info,"Network Prof Dir : ~p, Host prof Dir : ~p",[Ntwk_prof_dir, Host_prof_dir]),
  {ok, Ntwk_file_names} = file:list_dir(Ntwk_prof_dir),

  Load_fun  = fun(Path, Table_name) ->  case file:consult(Path) of
                                          {ok, Profile_data} ->
                                            Table_ref = ets:new(erlang:list_to_atom(Table_name), ?EST_TABLE_OPTIONS),
                                            load_data_into_ets_table(Table_ref, Profile_data);

                                          {error, Reason} ->
                                            ?SE_LOG(error," *** STOPPING *** Failed to read profile data. Error : ~p.", [Reason]),
                                            init:stop()
                                        end
              end,

  Check_n_load_fun = fun(File_name) ->
                        Ntwk_prof_name = Ntwk_prof_dir ++ File_name,

                        Profile_path = case Host_prof_dir of
                                         "" -> Ntwk_prof_name;
                                         _  ->
                                           Host_prof_name = Host_prof_dir ++ File_name,

                                           case filelib:is_file(Host_prof_name) of
                                             true    -> Host_prof_name;
                                             _absent -> Ntwk_prof_name
                                           end
                                       end,
                        Ret = Load_fun(Profile_path, File_name),
                        ?SE_LOG(info,"~p : ~p",[Profile_path, Ret])
                     end,
  Load_ret = lists:foreach(Check_n_load_fun, Ntwk_file_names),

  case Host_prof_dir of
    "" -> Load_ret;
    _  ->
      {ok, Host_file_names} = file:list_dir(Host_prof_dir),
      Rem_prof = Host_file_names -- Ntwk_file_names,

      Fun = fun(Prof_name) -> Load_fun( (Host_prof_dir++Prof_name), Prof_name) end,
      lists:foreach(Fun, Rem_prof)
  end.

%%----------------------------------------------------------------------------------------------------------------------
%% @doc
%% The function is used to load platform/profile data into ets table.
%%
%% The function has 2 arguments
%%
%% Argument 1: TableName :: atom()
%%            Its an atom, which is a ets table name
%%
%% Argument 2: Data :: list()
%%            Its a list, which is list of list of multiple configuration key and value pair tuple.
%%
%% Return value: atom()
%%                Its an atom, the possible value of which is ok.
%% @returns : atom()
%%
%% @end
%%----------------------------------------------------------------------------------------------------------------------
-spec(load_data_into_ets_table(TableName :: atom(), Data :: list())-> ok).

load_data_into_ets_table(_TableName, []) ->
  ok;

load_data_into_ets_table(TableName, [H|T]) ->
  ets:insert(TableName, H),
  load_data_into_ets_table(TableName, T).

%%----------------------------------------------------------------------------------------------------------------------
%% @doc
%% The function is used to get header field definitions.
%%
%% The function has no arguments
%%
%% Return value: list() | atom()
%%                its a list, on success it returns complete header field details in list
%%                  which is of the form
%%          [ {1, &lt;&lt;"HeaderFormatID"&gt;&gt;, "Header Format ID", n, 2, 2, f, nopad },
%%            {2, &lt;&lt;"NetworkID"&gt;&gt;, "Network ID", n, 6, 6, f, nopad },
%%            {3, &lt;&lt;"MessageFormatID"&gt;&gt;, "Message Format ID", n, 6, 6, f, nopad },
%%            {4, &lt;&lt;"DestinationEndpointID"&gt;&gt;, "Destination Endpoint ID", n, 6, 6, f, nopad },
%%            {5, &lt;&lt;"SourceEndpointID"&gt;&gt;, "Source Endpoint ID", n, 6, 6, f, nopad },
%%            {6, &lt;&lt;"MessageStatus"&gt;&gt;, "Message Status", n, 6, 6, f, nopad },
%%            {7, &lt;&lt;"SEDeviceID"&gt;&gt;, "SE Device ID", n, 6, 6, f, nopad },
%%            {8, &lt;&lt;"ExtendedHeader"&gt;&gt;, "Extended Header", n, 6, 6, f, nopad }]
%%  And on failure it returns error as atom.
%%
%% @returns : list() |  atom()
%%
%% @end
%%----------------------------------------------------------------------------------------------------------------------
-spec(get_header_field_definitions()-> list() | atom()).

get_header_field_definitions() ->
  case ets:lookup('header_field_definition.profile', header_field_definition) of
    [{header_field_definition, HeaderFieldDefinitions}] ->
      HeaderFieldDefinitions;

    [] ->
      ?SE_LOG(info,"no data is present for the key ~p",
              [header_field_definition]),
      error;

    Other->
      ?SE_LOG(error,"multiple data for same key when read from ets table as ~p",
              [Other]),
      error
  end.

%%----------------------------------------------------------------------------------------------------------------------
%% @doc
%% The function is used to get data field definitions.
%%
%%
%% The function  receives  SEHeader::map() as an argument
%% Return value: format list of header definitions
%% @returns : list()
%%
%% @end
%%----------------------------------------------------------------------------------------------------------------------
-spec(get_header_formats(SEHeader :: map())-> list() | atom()).

get_header_formats(SEHeader) ->
  HeaderFormatId = maps:get(<<"HeaderFormatID">>, SEHeader),
  ?SE_LOG(info,"Header_format_id = ~p", [HeaderFormatId]),
  get_header_format_field_definitions(HeaderFormatId).

%%----------------------------------------------------------------------------------------------------------------------
%% @doc
%% The function is used to get header format field definitions.
%%
%% The function  receives  FormatId::integer() as an argument
%% Return value: format list of header filed definitions
%% @returns : list()
%%
%% @end
%%----------------------------------------------------------------------------------------------------------------------
-spec(get_header_format_field_definitions(FormatId :: integer())-> list() | atom()).

get_header_format_field_definitions(FormatId) ->
  case ets:lookup('header_formats.profile', FormatId) of
    [{FormatId, [HeaderFormatName, HeaderFieldDefinitions]}] ->
      lists:sort(fun(A,B) -> formatter_sort(A,B) end, HeaderFieldDefinitions);

    [] ->
      ?SE_LOG(info,"no data is present for the given header formats ~p",
        [FormatId]),
      error;

    Other->
      ?SE_LOG(error,"multiple data for same key when read from ets table as ~p",
        [Other]),
      error
  end.

%%----------------------------------------------------------------------------------------------------------------------
%% @doc
%% The function is used to get profile data from database.
%%
%% The function has 2 arguments
%%
%% Argument 1: SEHeader :: map()
%%            Its an map, which is of the form
%%#{&lt;&lt;"DestinationEndpointID"&gt;&gt; =>
%%       &lt;&lt;"123456"&gt;&gt;, &lt;&lt;"ExtendedHeader"&gt;&gt; => &lt;&lt;"000001"&gt;&gt;,
%%&lt;&lt;"HeaderFormatID"&gt;&gt; => 
%%       &lt;&lt;"01", &lt;&lt;"MessageFormatID"&gt;&gt; => &lt;&lt;"000001"&gt;&gt;,
%%&lt;&lt;"MessageStatus"&gt;&gt; => 
%%       &lt;&lt;"000000"&gt;&gt;, &lt;&lt;"NetworkID"&gt;&gt; => &lt;&lt;"000001"&gt;&gt;,
%%&lt;&lt;"SEDeviceID"&gt;&gt; => 
%%       &lt;&lt;"000001"&gt;&gt;, &lt;&lt;"SourceEndpointID"&gt;&gt; => &lt;&lt;"654321"&gt;&gt;}
%%
%% Argument 2: InOutType :: atom()
%%            Its an atom, which has possible values as in, out and inout
%%
%% Return value: list() | atom()
%%                its a list, on success it returns complete se format data in list
%%                  which is of the form
%%            click to see "[https://gitlab.com/Payments_Innova/se_profile/wikis/se_format_id]"
%%                Its an atom, on failure it returns an atom as error.
%% @returns : list() |  atom()
%%
%% @end
%%----------------------------------------------------------------------------------------------------------------------
-spec(get_profile_data(SeContext :: tuple(), InOutType :: binary(), IncludeExcludeType :: atom())-> list() | atom()).

get_profile_data(SeContext, InOutType, IncludeExcludeType) when is_record(SeContext, se_context), is_atom(InOutType), is_atom(IncludeExcludeType)->
  SeHeader = SeContext#se_context.se_header,
  MessageFormatIDKeyVal =
    case SeContext#se_context.is_issuer_host of
      true ->
        case InOutType of
          in -> get_msg_format_id(maps:get(<<"DestinationEndpointID">>,SeHeader));
          out -> get_msg_format_id(maps:get(<<"SourceEndpointID">>,SeHeader))
        end;
      false ->
        case InOutType of
          in ->
            case maps:get(<<"MessageFormatID">>, SeHeader, na) of
              na -> get_msg_format_id(maps:get(<<"SourceEndpointID">>,SeHeader));
              Value -> Value
            end;
          out -> get_msg_format_id(maps:get(<<"DestinationEndpointID">>,SeHeader))
        end
    end,

  %% TODO need to add function which checks format id retrieved from msg is matching
  %% against the network id and se id or not.

  ?SE_LOG(info,"MessageFormatIDKeyVal = ~p", [MessageFormatIDKeyVal]),
  case ets:lookup('formatter.profile', MessageFormatIDKeyVal) of
    [{MessageFormatIDKeyVal, [HeaderData, {mapper_config, ValueList}, AuditControlData]}] ->
      SortedValueList = lists:sort(fun(A,B) -> formatter_sort(A,B) end, ValueList),
      FinalValueList =
        case IncludeExcludeType of
          exclude ->
            Fun = fun(X) -> erlang:element(?POSITION, X) =/= 0 end,
            lists:filter(Fun, SortedValueList);

          raw -> SortedValueList
        end,
          [HeaderData, {mapper_config, FinalValueList}, AuditControlData];

    [] ->
      ?SE_LOG(info,"no data is present for the key ~p",
              [MessageFormatIDKeyVal]),
      error;

    Other->
      ?SE_LOG(error,"multiple data for same key when read from ets table as ~p",
              [Other]),
      error
  end.

formatter_sort(A,B) ->
  AField = element(4,A),
  BField = element(4,B),
  if AField < BField ->
       true;
     AField > BField ->
       false;
     AField == BField ->
       ASubField = element(5,A),
       BSubField = element(5,B),
       ASubField =< BSubField
  end.

%%----------------------------------------------------------------------------------------------------------------------
%% @doc
%% The function is used to get data field definitions.
%%
%% The function has no arguments
%%
%% Return value: list() | atom()
%%                its a list, on success it returns complete header field details in list
%%                  which is of the form
%%          [ {2, &lt;&lt;"PrimaryAccountNumber"&gt;&gt;, 2, "Primary account number", 'NA',
%%                "PrimaryAccountNumber", n, 4, 19, ll, nopad,  se_cxt},
%%            {3, &lt;&lt;"ProcessingCode"&gt;&gt;, 3, "Processing code", 'NA', "ProcessingCode",
%%                 n, 6, 6, f, nopad,  se_cxt},
%%            {4, &lt;&lt;"AmountTransaction"&gt;&gt;, 4, "Amount-transaction", 'NA', "AmountTransaction",
%%            n, 12, 12, f, lpad,  se_cxt},
%%            .......]
%%  And on failure it returns error as atom.
%%
%% @returns : list() |  atom()
%%
%% @end
%%----------------------------------------------------------------------------------------------------------------------
-spec(get_data_field_definitions()-> list() | atom()).

get_data_field_definitions() ->
  case ets:lookup('data_field_definition.profile', data_field_definition) of
    [{data_field_definition, DataFieldDefinitions}] ->
      lists:keysort(3, DataFieldDefinitions ) ;

    [] ->
      ?SE_LOG(info,"no data is present for the key = ~p",
              [data_field_definition]),
      error;

    Other->
      ?SE_LOG(error," multiple data for same key when read from ets table as ~p",
              [Other]),
      error
  end.

%%----------------------------------------------------------------------------------------------------------------------
get_msg_format_id(Endpoint) ->
  [{_EndPoint, EndPointDetailList}] = ets:lookup('end_point.profile', Endpoint),
  lists:nth(?MSG_FORMATID_INDEX, EndPointDetailList).

get_id_list_from_profile(Profile) ->
  TupleList= ets:tab2list(Profile),
  FFun = fun(X) -> lists:nth(1,tuple_to_list(X)) end,
  lists:map(FFun,TupleList).

get_se_id_from_route(RouteId) ->
  [{RouteId, RouteIdDetailList}] = ets:lookup('route.profile', RouteId),
  lists:nth(?SE_ID_INDEX_IN_ROUTE_PROFILE, RouteIdDetailList).

get_country_code_for_given_se_id(SeId) ->
  [{SeId, SeIdDetailList}] = ets:lookup('se_entity.profile', SeId),
  lists:nth(?COUNTRY_CODE_INDEX, SeIdDetailList).

get_mcg_code(MCC,NetworkID)->
  ProfileNameStr = "mcc_for_network_id_" ++ binary_to_list(NetworkID) ++ ".profile",
  ProfileNameAtom = list_to_atom(ProfileNameStr),
  [{_,ListOfAttr}] = ets:lookup(ProfileNameAtom,MCC),
  lists:nth(?MCG_CODE,ListOfAttr).

get_mcc_tran_group(MCC,NetworkID)->
  ProfileNameStr = "mcc_for_network_id_" ++ binary_to_list(NetworkID) ++ ".profile",
  ProfileNameAtom = list_to_atom(ProfileNameStr),
  [{_,ListOfAttr}] = ets:lookup(ProfileNameAtom,MCC),
  lists:nth(?MCC_TRAN_GROUP_POS,ListOfAttr).

get_region_code(CountryCode) ->
  [{_, AttrList}] = ets:lookup('country_code.profile', CountryCode),
  RegionCode = lists:nth(?REGION_CODE_INDEX, AttrList),
  RegionCode.

get_region_name(CountryCode) ->
  [{_, AttrList}] = ets:lookup('country_code.profile', CountryCode),
  RegionCode = lists:nth(?REGION_NAME_INDEX, AttrList),
  RegionCode.

get_productid_se_id_list_from_product() ->
  TupleList = ets:tab2list('card_product.profile'),
  FilterFun = fun(X) -> {I,Y} = X,
                        {lists:nth(?SE_ID_INDEX_IN_PRODUCT,Y),I}
                        end,
  lists:map(FilterFun,TupleList).

get_mcg_code_list() ->
  TupleList = ets:tab2list('merchant_category_code.profile'),
  Fun = fun(X)-> {_,AttrList} = X, lists:nth(?MCG_CODE,AttrList) end,
  ListOfAllMCG_CODE = lists:map(Fun,TupleList),
  ListOfUniqueMCG_Code = lists:usort(ListOfAllMCG_CODE),
  ListOfUniqueMCG_Code.
