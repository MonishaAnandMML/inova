%% { Message configuration ID, [{ Parent_Field_ID, Sub_Field_ID,SE_Field_tag, Position,Sub_Position,Is_SubField, Field_Name, Field_name_override_flag, Tag_Name, DataType, Min_length, Max_length, Fixed-Variable, Padding_detail, Source with/without Function to Compute,Category, LookupType, LookupRef, Special_Ins, Special_OPSet, Parser Compute Function, Is_User_Defined_Field}] } .

{<<"1">>, [ <<"HeaderFormat1">>,
  [{1,0,<<"HeaderFormatID">>,1,0,no,"Header Format ID",'NA', "HeaderFormatID",n,2,2,f,lpad,{se_cxt,se_header}, critical,nolookup,<<>>,false,[], {}, no},
  {3,0,<<"MessageFormatID">>,3,0,no,"Message Format ID",'NA',"MessageFormatID",n,6,6,f,lpad,{se_cxt,se_header}, critical,match,'formatter.profile',false,[], {}, no},
  {4,0,<<"DestinationEndpointID">>,4,0,no,"Destination Endpoint ID",'NA',"DestinationEndpointID",n,6,6,f,lpad,{se_cxt,se_header},critical,match,'destination_end_point.profile',false,[], {}, no},
  {2,0,<<"NetworkID">>,2,0,no,"Network ID",'NA',"NetworkID",n,6,6,f,lpad,{se_cxt,se_header},critical,match,'network.profile',false,[], {}, no},
  {5,0,<<"SourceEndpointID">>,5,0,no,"Source Endpoint ID",'NA',"SourceEndpointID",n,6,6,f,lpad,{se_cxt,se_header},critical,match,'end_point.profile',false,[], {}, no},
  {6,0,<<"MessageStatus">>,6,0,no,"Message Status",'NA',"MessageStatus",n,6,6,f,lpad,{se_cxt,se_header},critical,nolookup,<<>>,false,[], {}, no},
  {7,0,<<"SEDeviceID">>,7,0,no,"SE Device ID",'NA',"SEDeviceID",n,6,6,f,lpad,{se_cxt,se_header},critical,nolookup,<<>>,false,[], {}, no},
  {8,0,<<"ExtendedHeader">>,8,0,no,"Extended Header",'NA',"ExtendedHeader",n,6,6,f,lpad,{se_cxt,se_header},critical,nolookup,<<>>,false,[], {}, no}
  ]]}.

{<<"2">>, [ <<"HeaderFormat2">>,
  [{1,0,<<"HeaderFormatID">>,1,0,no,"Header Format ID",'NA',
    "HeaderFormatID",n,2,2,f,lpad,{se_cxt,se_header},critical,nolookup,<<>>,false,[], {}, no},
  {2,0,<<"NetworkID">>,2,0,no,"Network ID",'NA',"NetworkID",n,6,6,f,
    lpad,{se_cxt,se_header},critical,match,'network.profile',false,[], {}, no},
  {3,0,<<"MessageFormatID">>,3,0,no,"Message Format ID",'NA',
    "MessageFormatID",n,6,6,f,lpad,{se_cxt,se_header},critical,match,'formatter.profile',false,[], {}, no},
  {4,0,<<"DestinationEndpointID">>,4,0,no,"Destination Endpoint ID",
    'NA',"DestinationEndpointID",n,6,6,f,lpad,{se_cxt,se_header},critical,match,'destination_end_point.profile',false,[], {}, no},
  {5,0,<<"SourceEndpointID">>,5,0,no,"Source Endpoint ID",'NA',
    "SourceEndpointID",n,6,6,f,lpad,{se_cxt,se_header},critical,match,'end_point.profile',false,[], {}, no},
  {6,0,<<"MessageStatus">>,6,0,no,"Message Status",'NA',
    "MessageStatus",n,6,6,f,lpad,{se_cxt,se_header},critical,nolookup,<<>>,false,[], {}, no},
  {7,0,<<"SEDeviceID">>,7,0,no,"SE Device ID",'NA',"SEDeviceID",n,6,
    6,f,lpad,{se_cxt,se_header},critical,nolookup,<<>>,false,[], {}, no},
  {8,0,<<"ExtendedHeader">>,8,0,no,"Extended Header",'NA',
    "ExtendedHeader",n,6,6,f,lpad,{se_cxt,se_header},critical,nolookup,<<>>,false,[], {}, no}
  ]]}.

{<<"3">>, [ <<"HeaderFormat3">>,
  [{1,0,<<"HeaderFormatID">>,1,0,no,"Header Format ID",'NA',
    "HeaderFormatID",n,2,2,f,lpad,{se_cxt,se_header},critical,nolookup,<<>>,false,[], {}, no},
  {2,0,<<"NetworkID">>,2,0,no,"Network ID",'NA',"NetworkID",n,6,6,f,
    lpad,{se_cxt,se_header},critical,match,'network.profile',false,[], {}, no},
  {3,0,<<"MessageFormatID">>,3,0,no,"Message Format ID",'NA',
    "MessageFormatID",n,6,6,f,lpad,{se_cxt,se_header},critical,match,'formatter.profile',false,[], {}, no},
  {4,0,<<"DestinationEndpointID">>,4,0,no,"Destination Endpoint ID",
    'NA',"DestinationEndpointID",n,6,6,f,lpad,{se_cxt,se_header},critical,match,'destination_end_point.profile',false,[], {}, no},
  {5,0,<<"SourceEndpointID">>,5,0,no,"Source Endpoint ID",'NA',
    "SourceEndpointID",n,6,6,f,lpad,{se_cxt,se_header},critical,match,'end_point.profile',false,[], {}, no},
  {6,0,<<"MessageStatus">>,6,0,no,"Message Status",'NA',
    "MessageStatus",n,6,6,f,lpad,{se_cxt,se_header},critical,nolookup,<<>>,false,[], {}, no},
  {7,0,<<"SEDeviceID">>,7,0,no,"SE Device ID",'NA',"SEDeviceID",n,6,
    6,f,lpad,{se_cxt,se_header},critical,nolookup,<<>>,false,[], {}, no},
  {8,0,<<"DynamicTimeoutValue">>,8,0,no,"DynamicTimeoutValue",'NA',
    "DynamicTimeoutValue",n,6,6,f,lpad,{se_cxt,se_header},critical,nolookup,<<>>,false,[], {}, no},
  {9,0,<<"CorrelationID">>,9,0,no,"CorrelationID",'NA',
    "CorrelationID",n,30,30,f,lpad,{se_cxt,se_header},critical,nolookup,<<>>,false,[], {}, no},
  {10,0,<<"ExtendedHeader">>,10,0,no,"Extended Header",'NA',
    "ExtendedHeader",n,30,30,f,lpad,{se_cxt,se_header},critical,nolookup,<<>>,false,[], {}, no}
  ]]}.

{<<"99">>, [ <<"HeaderFormat99">>,
  [{1,0,<<"HeaderFormatID">>,1,0,no,"Header Format ID",'NA',
    "HeaderFormatID",n,2,2,f,lpad,{se_cxt,se_header},critical,nolookup,<<>>,false,[], {}, no},
  {2,0,<<"NetworkID">>,2,0,no,"Network ID",'NA',"NetworkID",n,6,6,f,
    lpad,{se_cxt,se_header},critical,match,'network.profile',false,[], {}, no},
  {3,0,<<"MessageFormatID">>,3,0,no,"Message Format ID",'NA',
    "MessageFormatID",n,6,6,f,lpad,{se_cxt,se_header},critical,match,'formatter.profile',false,[], {}, no},
  {4,0,<<"DestinationEndpointID">>,4,0,no,"Destination Endpoint ID",
    'NA',"DestinationEndpointID",n,6,6,f,lpad,{se_cxt,se_header},critical,match,'destination_end_point.profile',false,[], {}, no},
  {5,0,<<"SourceEndpointID">>,5,0,no,"Source Endpoint ID",'NA',
    "SourceEndpointID",n,6,6,f,lpad,{se_cxt,se_header},critical,match,'end_point.profile',false,[], {}, no},
  {6,0,<<"MessageStatus">>,6,0,no,"Message Status",'NA',
    "MessageStatus",n,6,6,f,lpad,{se_cxt,se_header},critical,nolookup,<<>>,false,[], {}, no},
  {7,0,<<"SEDeviceID">>,7,0,no,"SE Device ID",'NA',"SEDeviceID",n,6,
    6,f,lpad,{se_cxt,se_header},critical,nolookup,<<>>,false,[], {}, no},
  {8,0,<<"DynamicTimeoutValue">>,8,0,no,"DynamicTimeoutValue",'NA',
    "DynamicTimeoutValue",n,6,6,f,lpad,{se_cxt,se_header},critical,nolookup,<<>>,false,[], {}, no},
  {9,0,<<"CorrelationID">>,9,0,no,"CorrelationID",'NA',
    "CorrelationID",n,30,30,f,lpad,{se_cxt,se_header},critical,nolookup,<<>>,false,[], {}, no},
  {10,0,<<"ExtendedHeader">>,10,0,no,"Extended Header",'NA',
    "ExtendedHeader",n,30,30,f,lpad,{se_cxt,se_header},critical,nolookup,<<>>,false,[], {}, no}
  ]]}.

{<<"11">>, [ <<"HeaderFormat11">>,
  [{1,0,<<"HeaderFormatID">>,1,0,no,"Header Format ID",'NA', "HeaderFormatID",n,1,2,ll,lpad,{se_cxt,se_header}, critical,nolookup,<<>>,false,[], {}, no},
  {3,0,<<"MessageFormatID">>,3,0,no,"Message Format ID",'NA',"MessageFormatID",n,1,6,ll,lpad,{se_cxt,se_header}, critical,match,'formatter.profile',false,[], {}, no},
  {4,0,<<"DestinationEndpointID">>,4,0,no,"Destination Endpoint ID",'NA',"DestinationEndpointID",n,1,6,ll,lpad,{se_cxt,se_header},critical,match,'destination_end_point.profile',false,[], {}, no},
  {2,0,<<"NetworkID">>,2,0,no,"Network ID",'NA',"NetworkID",n,1,6,ll,lpad,{se_cxt,se_header},critical,match,'network.profile',false,[], {}, no},
  {5,0,<<"SourceEndpointID">>,5,0,no,"Source Endpoint ID",'NA',"SourceEndpointID",n,1,6,ll,lpad,{se_cxt,se_header},critical,match,'end_point.profile',false,[], {}, no},
  {6,0,<<"MessageStatus">>,6,0,no,"Message Status",'NA',"MessageStatus",n,1,6,ll,lpad,{se_cxt,se_header},critical,nolookup,<<>>,false,[], {}, no},
  {7,0,<<"SEDeviceID">>,7,0,no,"SE Device ID",'NA',"SEDeviceID",n,1,6,ll,lpad,{se_cxt,se_header},critical,nolookup,<<>>,false,[], {}, no},
  {8,0,<<"ExtendedHeader">>,8,0,no,"Extended Header",'NA',"ExtendedHeader",n,1,6,ll,lpad,{se_cxt,se_header},critical,nolookup,<<>>,false,[], {}, no},
  {9,0,<<"TranType">>,9,0,no,"Tran Type",'NA',"TranType",ans,1,40,ll,lpad,{se_cxt,tran_type},critical,nolookup,<<>>,false,[], {}, no}
  ]]}.

  {<<"12">>, [ <<"HeaderFormat12">>,
    [{1,0,<<"HeaderFormatID">>,1,0,no,"Header Format ID",'NA', "HeaderFormatID",n,1,2,ll,lpad,{se_cxt,se_header}, critical,nolookup,<<>>,false,[], {}, no},
    {2,0,<<"SourceEndpointID">>,2,0,no,"Source Endpoint ID",'NA',"SourceEndpointID",n,1,6,ll,lpad,{se_cxt,se_header},critical,match,'end_point.profile',false,[], {}, no},
    {3,0,<<"TranType">>,3,0,no,"Tran Type",'NA',"TranType",ans,1,40,ll,lpad,{se_cxt,tran_type},critical,nolookup,<<>>,false,[], {}, no},
    {4,0,<<"CardHotList">>,4,0,no,"Crad Hot List",'NA',"CardHotList",ans,1,999,lll,lpad,{se_cxt,se_header},critical,nolookup,<<>>,false,[], {}, no}
    ]]}.

{<<"13">>, [ <<"HeaderFormat13">>,
  [{1,0,<<"HeaderLength">>,1,0,no,"Header Length",'NA', "HeaderLength",int,1,1,f,nopad,{se_cxt,se_header}, critical,nolookup,<<>>,false,[], {}, no},
  {2,0,<<"HeaderFormat">>,2,0,no,"Header Format",'NA', "HeaderFormat",bitstring,8,8,f,nopad,{se_cxt,se_header}, critical,nolookup,<<>>,false,[], {}, no},
  {3,0,<<"TextFormat">>,3,0,no,"Text Format",'NA', "TextFormat",int,1,1,f,nopad,{se_cxt,se_header}, critical,nolookup,<<>>,false,[], {}, no},
  {4,0,<<"TotalMessageLength">>,4,0,no,"Total Message Length",'NA', "TotalMessageLength",int,2,2,f,nopad,{se_cxt,se_header}, critical,nolookup,<<>>,false,[], {}, no},
  {5,0,<<"DestinationEndpointID">>,5,0,no,"Destination Endpoint ID",'NA', "DestinationId",n,6,6,f,lpad,{se_cxt,se_header}, critical,nolookup,<<>>,false,[], {}, no},
  {6,0,<<"SourceEndpointID">>,6,0,no,"Source Endpoint ID",'NA', "SourceId",n,6,6,f,lpad,{se_cxt,se_header}, critical,nolookup,<<>>,false,[], {}, no},
  {7,0,<<"RoundTripControlInformation">>,7,0,no,"Round Trip Control Information",'NA', "RoundTripControlInformation",bitstring,8,8,f,nopad,{se_cxt,se_header}, critical,nolookup,<<>>,false,[], {}, no},
  {8,0,<<"BaseIFlags">>,8,0,no,"Base I Flags",'NA', "BaseIFlags",bitstring,16,16,f,nopad,{se_cxt,se_header}, critical,nolookup,<<>>,false,[], {}, no},
  {9,0,<<"MessageStatusFlags">>,9,0,no,"Message Status Flags",'NA', "MessageStatusFlags",bitstring,24,24,f,nopad,{se_cxt,se_header}, critical,nolookup,<<>>,false,[], {}, no},
  {10,0,<<"BatchNumber">>,10,0,no,"Batch Number",'NA', "BatchNumber",int,1,1,f,nopad,{se_cxt,se_header}, critical,nolookup,<<>>,false,[], {}, no},
  {11,0,<<"ReservedForVISAInternalUse">>,11,0,no,"Reserved For VISA Internal Use",'NA', "ReservedForVISAInternalUse",int,3,3,f,nopad,{se_cxt,se_header}, critical,nolookup,<<>>,false,[], {}, no},
  {12,0,<<"UserInformation">>,12,0,no,"User Information",'NA', "UserInformation",n,1,1,f,nopad,{se_cxt,se_header}, critical,nolookup,<<>>,false,[], {}, no},
  {13,0,<<"Bitmap">>,13,0,no,"Bitmap",'NA', "Bitmap",bitstring,16,16,f,nopad,{se_cxt,se_header}, noncritical,nolookup,<<>>,false,[], {}, no},
  {14,0,<<"RejectDataGroup">>,14,0,no,"Reject Data Group",'NA', "RejectDataGroup",n,4,4,f,nopad,{se_cxt,se_header}, noncritical,nolookup,<<>>,false,[], {}, no}

]]}.


{<<"14">>, [ <<"HeaderFormat14">>,
  [{1,0,<<"HeaderFormatID">>,1,0,no,"Header Format ID",'NA',
    "HeaderFormatID",n,2,2,f,lpad,{se_cxt,se_header},critical,nolookup,<<>>,false,[], {}, no},
  {2,0,<<"NetworkID">>,2,0,no,"Network ID",'NA',"NetworkID",n,6,6,f,
    lpad,{se_cxt,se_header},critical,match,'network.profile',false,[], {}, no},
  {3,0,<<"MessageFormatID">>,3,0,no,"Message Format ID",'NA',
    "MessageFormatID",n,6,6,f,lpad,{se_cxt,se_header},critical,match,'formatter.profile',false,[], {}, no},
  {4,0,<<"DestinationEndpointID">>,4,0,no,"Destination Endpoint ID",
    'NA',"DestinationEndpointID",n,6,6,f,lpad,{se_cxt,se_header},critical,match,'destination_end_point.profile',false,[], {}, no},
  {5,0,<<"SourceEndpointID">>,5,0,no,"Source Endpoint ID",'NA',
    "SourceEndpointID",n,6,6,f,lpad,{se_cxt,se_header},critical,match,'end_point.profile',false,[], {}, no},
  {6,0,<<"MessageStatus">>,6,0,no,"Message Status",'NA',
    "MessageStatus",n,6,6,f,lpad,{se_cxt,se_header},critical,nolookup,<<>>,false,[], {}, no},
  {7,0,<<"SEDeviceID">>,7,0,no,"SE Device ID",'NA',"SEDeviceID",n,6,
    6,f,lpad,{se_cxt,se_header},critical,nolookup,<<>>,false,[], {}, no},
  {8,0,<<"DynamicTimeoutValue">>,8,0,no,"DynamicTimeoutValue",'NA',
    "DynamicTimeoutValue",n,6,6,f,lpad,{se_cxt,se_header},critical,nolookup,<<>>,false,[], {}, no},
  {9,0,<<"CorrelationID">>,9,0,no,"CorrelationID",'NA',
    "CorrelationID",n,30,30,f,lpad,{se_cxt,se_header},critical,nolookup,<<>>,false,[], {}, no},
  {10,0,<<"ExtendedHeader">>,10,0,no,"Extended Header",'NA',
    "ExtendedHeader",n,30,30,f,lpad,{se_cxt,se_header},critical,nolookup,<<>>,false,[], {}, no}
  ]]}.
