%% { PosDataCodeCardDataInputMode_Code, Description} 

{ <<"0">>, "Unspecified, unknown, track data present but incomplete or truncated"}.
{ <<"1">>, "Manual, no terminal"}.
{ <<"2">>, "Magnetic stripe read"}.
{ <<"3">>, "Bar Code"}.
{ <<"4">>, "Optical Character Recognition (OCR)"}.
{ <<"5">>, "Integrated Circuit Card (ICC)"}.
{ <<"6">>, "Key entered"}.
{ <<"9">>, "Technical fallback - Transaction initiated as chip but was processed using an alternative technology (such as magnetic stripe)"}.
{ <<"S">>, "Manually entered or keyed transaction with keyed CID/4DBC/4CSC. Data Field 53 (Security Related Control Information) must be present."}.
{ <<"W">>, "Swiped transaction with keyed CID/4DBC/4CSC. Data Field 53 (Security Related Control Information) must be present."}.
{ <<"X">>, "Magnetic stripe signature"}.
{ <<"Y">>, "Magnetic stripe signature with keyed CID/4DBC/4CSC. Data Fields 53 (Security Related Control Information) and 62 (Private Use Data/Magnetic Stripe Signature) must be present."}.
