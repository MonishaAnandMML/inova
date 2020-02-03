%% { End Point Id, [ SE ID, Processing ID, MessageFormatID, NetworkID, Source IP, Source Port,Destination IP, Destination Port, End Point Type, Message Specification Format, Certification Flags, Is_Signed_In, Is_Signed_Off, Is_Asynch, Timeout Parameter (ms), Heart Beat Frequency (ms),LenBytes,LenMode, Endpoint Enable, EndPoint Connection,SignOn Msg, G2G HeartBeat Msg, effective_datetimestamp, is_active, is_blocked, is_deleted, activation_datetimestamp, creation_datetimestamp, modify_datetimestamp, delete_datetimestamp, expiry_datetimestamp ] }.

%% For PQR ISS processor

%% For ABC ISS processor
{ <<"10">>, [ <<"ABCBKABL001">>, <<"1">>, <<"1">>,<<"1">>, {192,168,50,64}, 8001, {192,168,50,50}, 9001, issuer, iso8583, 8, no, no, no, 15000, 3000, 2, bcd, yes, receive_connection, 'receive', 'receive',effective_datetimestamp, is_active, is_blocked, is_deleted, activation_datetimestamp, creation_datetimestamp, modify_datetimestamp, delete_datetimestamp, expiry_datetimestamp ] }.

%% For PIN Transactions
{ <<"13">>, [ <<"ABCBKABL001">>, <<"5">>, <<"1">>,<<"1">>, {192,168,98,3}, 8001, {192,168,98,50}, 9001, issuer, iso8583, 8, no, no, no, 15000, 3000, 2, bcd, yes, receive_connection, 'receive', 'receive',effective_datetimestamp, is_active, is_blocked, is_deleted, activation_datetimestamp, creation_datetimestamp, modify_datetimestamp, delete_datetimestamp, expiry_datetimestamp ] }.

%% For ATM Transactions
{ <<"14">>, [ <<"ABCBKABL001">>, <<"6">>, <<"1">>,<<"1">>, {192,168,100,2}, 8001, {192,168,100,50}, 9001, issuer, iso8583, 8, no, no, no, 15000, 3000, 2, bcd, yes, receive_connection, 'receive', 'receive',effective_datetimestamp, is_active, is_blocked, is_deleted, activation_datetimestamp, creation_datetimestamp, modify_datetimestamp, delete_datetimestamp, expiry_datetimestamp ] }.

{ <<"66">>, [ <<"ABCBKABL001">>, <<"66">>, <<"1">>,<<"1">>, {192,168,99,1}, 8001, {192,168,99,50}, 9001, issuer, iso8583, 8, no, no, no, 15000, 3000, 2, bcd, yes, receive_connection, 'receive', 'receive',effective_datetimestamp, is_active, is_blocked, is_deleted, activation_datetimestamp, creation_datetimestamp, modify_datetimestamp, delete_datetimestamp, expiry_datetimestamp ] }.

%Acquirer EP
{ <<"11">>, [ <<"PQRBKABL001">>, <<"4">>, <<"1">>,<<"1">>, {192,168,15,7}, 8001, {192,168,15,50}, 9001, acquirer, iso8583, 8, no, no, no, 15000, 3000, 2, bcd, yes, receive_connection, 'receive', 'receive',effective_datetimestamp, is_active, is_blocked, is_deleted, activation_datetimestamp, creation_datetimestamp, modify_datetimestamp, delete_datetimestamp, expiry_datetimestamp ] }.

{ <<"24">>, [ <<"PQRBKABL001">>, <<"14">>, <<"1">>,<<"1">>, {192,168,24,16}, 8001, {192,168,24,50}, 9001, issuer, iso8583, 8, no, no, no, 15000, 3000, 2, bcd, yes, receive_connection, 'receive', 'receive',effective_datetimestamp, is_active, is_blocked, is_deleted, activation_datetimestamp, creation_datetimestamp, modify_datetimestamp, delete_datetimestamp, expiry_datetimestamp ] }.
