%% { header_field_definition, [ { Field ID, Sub Field ID, SE_Field_Tag, Field_Name, DataType, Min_length, Max_length, Fixed-Variable, Padding_detail,Category, LookupType, LookupRef, Special_Ins, Special_OPSet } ] }.

{ header_field_definition, [ 
	{1, 0, <<"HeaderFormatID">>, "Header Format ID", n, 2, 2, f, nopad, 'NA', 'NA', 'NA', 'NA', 'NA' },
	{2, 0, <<"NetworkID">>, "Network ID", n, 6, 6, f, nopad, 'NA', 'NA', 'NA', 'NA', 'NA' },
	{3, 0, <<"MessageFormatID">>, "Message Format ID", n, 6, 6, f, nopad, 'NA', 'NA', 'NA', 'NA', 'NA' },
	{4, 0, <<"DestinationEndpointID">>, "Destination Endpoint ID", n, 6, 6, f, nopad, 'NA', 'NA', 'NA', 'NA', 'NA' },
	{5, 0, <<"SourceEndpointID">>, "Source Endpoint ID", n, 6, 6, f, nopad, 'NA', 'NA', 'NA', 'NA', 'NA' },
	{6, 0, <<"MessageStatus">>, "Message Status", n, 6, 6, f, nopad, 'NA', 'NA', 'NA', 'NA', 'NA' },
	{7, 0, <<"SEDeviceID">>, "SE Device ID", n, 6, 6, f, nopad, 'NA', 'NA', 'NA', 'NA', 'NA' },
	{8, 0, <<"ExtendedHeader">>, "Extended Header", n, 6, 6, f, nopad, 'NA', 'NA', 'NA', 'NA', 'NA' }
	]
}.
