%%%-------------------------------------------------------------------
%%% @author innova
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 02. Feb 2018 2:29 PM
%%%-------------------------------------------------------------------
-module(json_to_se_erlang).
-author("innova").

-include_lib("se_core/include/se_log.hrl").

%% API
-export([update_se_format/2,
  form_values/3]).

% read from driver

%% Assumptions :
%% json and erlang config may be a different order but same hirarchy of level
%%

%%-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
%% @doc
%% This is the main ,
%% it will convert the json object from mongo driver to
%% the required format as per the   the template definitions
%%-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
update_se_format({Json},ConverterFormat )  ->
  ?SE_LOG(info,"~n JSon got is ~p ~n ~n Format is ~p ",[Json,ConverterFormat]),
  generic_iterate_tuple(Json,ConverterFormat).

%%-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
%% @doc
%% this will identify and  classify the template tuple  is for  a
%% Value definitions or Actual tuple  values
%%
%%
%% %%
%%-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
classify_tuple(InputJson, KeyParams) when size(KeyParams) == 4  ->
  {Key,Source,Type,TypeAttr} = KeyParams,
  check_map(InputJson,{Key,Source,Type,TypeAttr});

classify_tuple(InputJson, KeyParams)  ->
  Len = erlang:tuple_size(KeyParams),
  iterate_tuple(InputJson, KeyParams, Len , 1, {}).

%%-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
%% @doc
%% when the size matches 4 this will check it is a format for of single values def ,
%% or actual tuple of 4 values
%%
%% %%
%%-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
check_map(InputJson, {Key,Source,Type,TypeAttr})when is_atom(Source) ->
get_val(InputJson, {Key,Source,Type,TypeAttr} );

check_map(InputJson,  {Key,Source,Type,TypeAttr}) ->
  iterate_tuple(InputJson,{Key,Source,Type,TypeAttr},4,1,{}).

%%-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
%% @doc
%% generic iterate will classify and iterate recursively,
%% by default it is assumed that the outer structure is a tuple
%%-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
generic_iterate_tuple(InputJson , ConfigFormat  ) when is_tuple(ConfigFormat) ->
  %?SE_LOG(info,"generic iterate "),
  classify_tuple(InputJson, ConfigFormat);
generic_iterate_tuple(_InputJson , ConfigFormat  ) when is_list(ConfigFormat) ->
not_handled.

%%-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
%% @doc
%% If the template is a tuple it iterate the tuple and putting the final
%% result value in corresponding pos
%%-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
iterate_tuple(_InputJson, _ConfigFormat , TotalCount , CurrentCount, InitialOP )  when TotalCount < CurrentCount -> InitialOP;
iterate_tuple(InputJson, ConfigFormat , TotalCount, CurrentCount , InitialOP ) when TotalCount>= CurrentCount ->
 % ?SE_LOG(info,"the current count is ~p total count is ~p",[CurrentCount,TotalCount]),
 % ?SE_LOG(info,"the initial op is ~p configformats is ~p",[InitialOP , ConfigFormat]),

  KeyParams = erlang:element(CurrentCount, ConfigFormat),
    ?SE_LOG(info," the val is ~p ~n ",[KeyParams]),
    Val = get_val(InputJson ,KeyParams) ,
  %form_values(Val)
  NewTuple = erlang:insert_element(CurrentCount,InitialOP,Val),
  %?SE_LOG(info,"new list is ~p ~n ",[NewTuple]),
  iterate_tuple(InputJson, ConfigFormat, TotalCount , CurrentCount + 1 ,NewTuple  ).

%%-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
%% @doc
%% core classifier and iterator of list or tuple ,
%% it is a Actual generic functions which we used in recursion
%%-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
get_val(InputJson ,KeyParams) when  is_list(KeyParams) ->
  ?SE_LOG(info,"Encountered list"),
  iterate_list(KeyParams,InputJson,[]);

get_val(InputJson ,KeyParams) when is_tuple(KeyParams)->
  {Key,Source,Type,TypeAttr} = KeyParams,
  ?SE_LOG(info,"iterating key pamas ~p",[KeyParams]),
  case Source of
    json_map ->
      Op = maps:is_key(Key,InputJson),
      ?SE_LOG(info,"availability of key ~p is ~p",[Key, Op]),
      case Op of
        true ->
          Val = maps:get(Key , InputJson),
          ?SE_LOG(info,"Value to be formed is ~p based on Type ~p and TypeAttr ~p",[Val, Type, TypeAttr]),
          FormedValue = form_values(Val, Type , TypeAttr),
          ?SE_LOG(info,"Formed Value ~p",[FormedValue]),
          FormedValue;
        false ->
          display_and_raise_error(Key,InputJson)
      end ;
    json_map_list ->
      Op = maps:is_key(Key,InputJson),
      ?SE_LOG(info,"availability of key ~p is ~p",[Key, Op]),
      case Op of
        true ->
          Val = maps:get(Key , InputJson),
          case Val of
            [<<>>] ->
              display_and_raise_error(Key,InputJson);
            _ ->
              rev_iterate_list( Val, Type , [])
          end ;

        false ->display_and_raise_error(Key,InputJson)
      end;

    {json_map_default, Value} ->
      Op = maps:is_key(Key,InputJson),
      ?SE_LOG(info,"availability of key ~p is ~p",[Key, Op]),
      case Op of
        true ->
          Val = maps:get(Key , InputJson),
          ?SE_LOG(info,"Value to be formed is ~p based on Type ~p and TypeAttr ~p",[Val, Type, TypeAttr]),
          FormedValue = form_values(Val, Type , TypeAttr),
          ?SE_LOG(info,"Formed Value ~p",[FormedValue]),
          FormedValue;
        false ->
          ?SE_LOG(info,"Value to be formed is ~p based on Type ~p and TypeAttr ~p",[Value, Type, TypeAttr]),
          FormedValue = form_values(Value, Type , TypeAttr),
          ?SE_LOG(info,"Formed Value ~p",[FormedValue]),
          FormedValue
      end ;

    default-> Type
  end.

display_and_raise_error(Key,InputJson) ->
  ?SE_LOG(info,"~n The Json object  is invalid ~n , the value for key ~p is
           not present in the object ~p ",[ Key,InputJson]),
  erlang:error(wrong_object).

%%-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
%% @doc
%% it iterate the input template of list and  populate all the values as per position
%%-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
iterate_list([],_InputJson,OPList)  ->  OPList;

iterate_list([H|T],InputJson,OPList) ->
  ?SE_LOG(info,"in iterate list head is ~p",[H]),

  Bal = case is_tuple(H) of
          true ->
            generic_iterate_tuple(InputJson,H);
          false ->
            case is_list(H) of
              true ->
              iterate_list(InputJson,H,[])
            end
      end,
  ?SE_LOG(info,"the Bal op is ~p",[Bal]),
  NewOpList = lists:append(OPList,[Bal]),
  iterate_list(T,InputJson,NewOpList).

%%-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
%% @doc
%% it  dynamically iterate  the input json with one template def in format definations
%%-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
rev_iterate_list([], [_H|_T],OPList)  ->  OPList;

rev_iterate_list([InputJson| JsonT] ,[H|_T],OPList) ->
%  ?SE_LOG(info,"in iterate list head is ~p",[H]),

 Bal = case is_tuple(H) of
          true -> Count = size(H),
            iterate_tuple(InputJson,H,Count,1,{});
          false -> get_val(InputJson,H)

        end,
%  ?SE_LOG(info,"the Bal op is ~p",[Bal]),
 NewOpList = lists:append(OPList,[Bal]),
  rev_iterate_list(JsonT,[H] ,NewOpList).

%%-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
%% @doc
%% internal functions which convert any format to any format
%% This gives flexibilities which allow front end and backend data type
%% can be independent of each other.
%% Means You can store a data as integer in mongodb and you can tell in template def
%% i want it as binary or any thing and it gives the values as  what you wanted .
%%-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
form_values(Val, Type, TypeAttr) ->
   case Type of
     ipaddr -> {ok, IpAddress} = inet:parse_address(erlang:binary_to_list(Val)), IpAddress;
     spllist ->  any_to_any(Val,spllist);
     list -> any_to_any(Val,list);
     tuple -> any_to_any(Val,tuple);
     atom -> any_to_any(Val,atom);
     binary -> BinaryVal = any_to_any(Val,binary),
       form_bin(BinaryVal,TypeAttr);
     integer -> any_to_any(Val,integer);
     string -> any_to_any(Val,list);
     float -> any_to_any(Val,float)
   end.

%%-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
%% @doc
%% for binary you can specify the padding criteria also
%%-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
form_bin(BinVal , Attr) ->
  {PadType, TotalLen, PadVal} = Attr,
  Len = erlang:size(BinVal),
  if
    Len == TotalLen ->
      BinVal;
    true ->
      handle_pad(PadType, PadVal,BinVal , TotalLen - Len)

  end.

%------------------------------------------------------
handle_pad(PadType, _PadVal,BinVal , TotalLen ) when TotalLen == 0 orelse PadType == nopad ->
BinVal  ;
handle_pad(PadType, PadVal,BinVal , TotalLen) when TotalLen > 0  ->
do_pad (PadType, PadVal,BinVal , TotalLen)
;
handle_pad(_PadType, _PadVal,BinVal , TotalLen) when TotalLen < 0  ->
  ?SE_LOG(info," ~n The BinVal ~p is not valid as per ~n Note: config Lenth is more",[BinVal]),
  erlang:error(wrong_val).

%------------------------------------------------------
do_pad (PadType, _PadVal,BinVal , _TotalLen) when PadType == nopad ->
  BinVal;
do_pad (PadType, PadVal,BinVal , TotalLen) when PadType == lpad ->
  do_lpad(PadVal, BinVal,TotalLen);
do_pad (PadType, PadVal,BinVal , TotalLen) when PadType == rpad ->
  do_rpad(PadVal,BinVal , TotalLen).

do_lpad( DefaultVal, BinVal, TotalLen) ->
  PadValue = binary:copy(DefaultVal, TotalLen) ,
  <<PadValue/binary, BinVal/binary>>.

do_rpad( DefaultVal, BinVal, TotalLen) ->
  PadValue = binary:copy(DefaultVal, TotalLen) ,
  <<BinVal/binary,PadValue>>.

%------------------------------------------------------
any_to_list(Atom) when is_atom(Atom) ->
  atom_to_list(Atom);

any_to_list(Float) when is_float(Float) ->
  integer_to_list(round(Float));

any_to_list(Integer) when is_integer(Integer) ->
  integer_to_list(Integer);

any_to_list(String) when is_list(String) ->
  String;

any_to_list(Binary) when is_binary(Binary) ->
  binary_to_list(Binary).

%------------------------------------------------------
any_to_float(Float) when is_float(Float) ->
  Float;

any_to_float(Integer) when is_integer(Integer) ->
  erlang:float(Integer);

any_to_float(String) when is_list(String) ->
  erlang:list_to_float(String);

any_to_float(Binary) when is_binary(Binary) ->
  erlang:binary_to_float(Binary).

%------------------------------------------------------
any_to_any(FromAtom, ToAtom) when ToAtom == atom ->
  InputAtom = any_to_list(FromAtom),
  list_to_atom(InputAtom);

any_to_any(FromAtom, ToAtom) when ToAtom == integer ->
  InputAtom = any_to_list(FromAtom),
  case InputAtom of
    [] -> InputAtom;
    _ ->
    list_to_integer(InputAtom)
  end;

any_to_any(Input, ToSpllist) when ToSpllist == spllist ->
  any_to_list(Input);
%  InputList = any_to_list(Input),
%  string:split(InputList,",",all);

any_to_any(Input, ToList) when ToList == list ->
  any_to_list(Input);

any_to_any(Input, ToTuple) when ToTuple == tuple ->
   erlang:list_to_tuple(Input);

any_to_any(Input, ToBinary) when ToBinary == binary ->
  InputAtom = any_to_list(Input),
  list_to_binary(InputAtom);

any_to_any(Input, ToFloat) when ToFloat == float ->
  any_to_float(Input).
