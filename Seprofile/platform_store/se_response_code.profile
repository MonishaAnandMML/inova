%% { Se Response Id, [Description, Approve Decline/ timeout, Action Code] }.

{ 0 , ["Approved", approved , approved] }.
{ 1 , ["Honour with Identification", approved , approved] }.
{ 2 , ["Approved, Partial amount", approved , approved] }.
{ 3 , ["Approved (VIP)", approved , approved] }.
{ 4 , ["Approved, update track 3", approved , approved] }.
{ 5 , ["Approved, Account type specified by issuer", approved , approved] }.
{ 6 , ["Approved, Partial, Account type specified by issuer", approved , approved] }.
{ 7 , ["Approved, Update ICC", approved , approved] }.
{ 100 , ["Do not Honour", declined , reject] }.
{ 101 , ["Expired card", declined , reject] }.
{ 102 , ["Suspected fraud", declined , reject] }.
{ 103 , ["Card Acceptor contact acquirer", declined , reject] }.
{ 104 , ["Restricted Card", declined , reject] }.
{ 105 , ["Card Acceptor contact acquirer’s Security department", declined , reject] }.
{ 106 , ["Allowable PIN tries exceeded", declined , reject] }.
{ 107 , ["Refer Card issuer", declined , stip_declined] }.
{ 108 , ["Refer Card issuer’s special condition", declined , stip_declined] }.
{ 109 , ["Invalid Merchant", declined , reject] }.
{ 110 , ["Invalid Amount", declined , reject] }.
{ 111 , ["Invalid Card Number", declined , reject] }.
{ 112 , ["PIN Data required", declined , reject] }.
{ 113 , ["Unacceptable Fee", declined , reject] }.
{ 114 , ["No account of type requested", declined , reject] }.
{ 115 , ["Requested Function not supported", declined , reject] }.
{ 116 , ["Not sufficient Funds", declined , reject] }.
{ 117 , ["Incorrect PIN", declined , reject] }.
{ 118 , ["No card Record", declined , reject] }.
{ 119 , ["Transaction not permitted to Card holder", declined , reject] }.
{ 120 , ["Transaction not permitted to terminal", declined , reject] }.
{ 121 , ["Exceeds withdrawal amount limit", declined , reject] }.
{ 122 , ["Invalid card Security code -", declined , reject] }.
{ 123 , ["Exceeds withdrawal frequency limit", declined , reject] }.
{ 124 , ["Violation of Law", declined , reject] }.
{ 125 , ["Card not effective", declined , reject] }.
{ 126 , ["Invalid PIN block", declined , reject] }.
{ 127 , ["PIN Length error", declined , reject] }.
{ 128 , ["PIN Key Sync error", declined , reject] }.
{ 129 , ["Suspected counterfeit card", declined , reject] }.
{ 400 , ["Reversal / chargeback accepted", declined , reject] }.
{ 700 , ["Fee collection / disbursement accepted", declined , success] }.
{ 800 , ["Network management message accepted", declined , success] }.
{ 901 , ["Parse Error", declined , bad_message] }.
{ 902 , ["Invalid Transaction", declined , reject] }.
{ 903 , ["Re-enter Transaction", declined , reject] }.
{ 904 , ["Format Error", declined , reject] }.
{ 905 , ["Acquirer not supported by switch", declined , reject] }.
{ 906 , ["Cut-over in progress", declined , reject] }.
{ 907 , ["Card issuer or switch in-operative", declined , reject] }.
{ 908 , ["Transaction destination cannot be found for routing", declined , no_dest_route] }.
{ 909 , ["System malfunction", declined , reject] }.
{ 910 , ["Card issuer signed-off", declined , reject] }.
{ 911 , ["Card issuer timed-out", declined , timeout] }.
{ 912 , ["Card issuer unavailable", declined , reject] }.
{ 913 , ["Duplicate Transmission", declined , duplicate] }.
{ 914 , ["Not able to trace back to original transaction", declined , no_match] }.
{ 915 , ["Reconciliation cutover or check point error", declined , reject] }.
{ 916 , ["MAC Incorrect", declined , reject] }.
{ 917 , ["MAC key sync error", declined , reject] }.
{ 918 , ["No communication keys available for use", declined , reject] }.
{ 919 , ["Encryption key Sync error", declined , reject] }.
{ 920 , ["Security Software or Hardware error – Try Again", declined , reject] }.
{ 921 , ["Security Software or Hardware error – No action", declined , reject] }.
{ 922 , ["Message Number out of sequence", declined , reject] }.
{ 923 , ["Request in Progress", declined , reject] }.
{ 924 , ["Declined Response", declined , not_delivered] }.
{ 950 , ["Violation of Business arrangement", declined , reject] }.
{ 951 , ["Stip for Card number approved", approved , stip_approved] }.
{ 952 , ["Network Message error", declined , reject] }.
{ 953 , ["Network Message already signed on", declined , already_signed_on] }.
{ 954 , ["Advice response present", declined , advice_response_present] }.
{ 955 , ["Drop message for late response", declined , late_response] }.