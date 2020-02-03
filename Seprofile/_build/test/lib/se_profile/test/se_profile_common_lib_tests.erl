%%%-------------------------------------------------------------------
%%% @author innova
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%% This module is used for the eunit test cases for se_profile_common_lib.erl.
%%%
%%% @end
%%% Created : 10. Nov 2017 2:21 PM
%%%-------------------------------------------------------------------
-module(se_profile_common_lib_tests).
-author("innova").

%% API
-compile(export_all).

-include_lib("eunit/include/eunit.hrl").

%%-define(EXPECTED_RESULT1, ).
-define(PROFILE_DATA_PATH, "profile_store/").
-define(PLATFORM_DATA_PATH, "platform_store/").

-define(SE_HEADER,   #{<<"DestinationEndpointID">> => <<"123456">>,
                        <<"ExtendedHeader">> => <<"1">>,
                        <<"HeaderFormatID">> => <<"1">>,
                        <<"MessageFormatID">> => <<"1">>,
                        <<"MessageStatus">> => <<"0">>,
                        <<"NetworkID">> => <<"1">>,
                        <<"SEDeviceID">> => <<"1">>,
                        <<"SourceEndpointID">> => <<"654321">>}
       ).

-define(HEADER_FORMAT_ID, 1).

load_platform_data_test() ->
  ReturnList = se_profile_common_lib:load_platform_data(?PLATFORM_DATA_PATH),
  ?assertEqual(true, erlang:is_list(ReturnList)).

load_profile_data_test() ->
  ReturnList = se_profile_common_lib:load_profile_data(?PROFILE_DATA_PATH),
  ?assertEqual(true, erlang:is_list(ReturnList)).

get_profile_data_test() ->
  ReturnList = se_profile_common_lib:get_profile_data(?SE_HEADER, in, exclude),
  ?assertEqual(true, erlang:is_list(ReturnList)).

get_header_field_definitions_test() ->
  ReturnList = se_profile_common_lib:get_header_field_definitions(),
  ?assertEqual(true, erlang:is_list(ReturnList)).

get_data_field_definitions_test() ->
  ReturnList = se_profile_common_lib:get_data_field_definitions(),
  ?assertEqual(true, erlang:is_list(ReturnList)).

get_header_profile_test() ->
  ReturnList = se_profile_common_lib:get_header_formats(?SE_HEADER),
  ?assertEqual(true, erlang:is_list(ReturnList)).
