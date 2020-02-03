%% {{TranType,Transaction Classification Tuple}, [services_list]}

{{purchase_auth_req,'ECOM'},  
[ cvv2,
  pin_verification_service,
  activity_limit_checker,
  stip_authorization
]}.

{{purchase_auth_req,'NFC'},
[ cvv,
  activity_limit_checker,
  stip_authorization
]}.

{{purchase_auth_req,'Any'},   
  [ cvv,
  pin_verification_service,
  activity_limit_checker,
  stip_authorization
]}.

{{cash_auth_req,'ECOM'},  
  [ cvv2,
  pin_verification_service,
  activity_limit_checker,
  stip_authorization
]}.

{{cash_auth_req,'NFC'},
  [ cvv,
  activity_limit_checker,
  stip_authorization
]}.

{{cash_auth_req,'Any'},   
  [ cvv,
  pin_verification_service,
  activity_limit_checker,
  stip_authorization
]}.

{{purchase_req,'ECOM'},  
  [ cvv2,
  pin_verification_service,
  activity_limit_checker,
  stip_authorization
]}.

{{purchase_req,'NFC'},
  [ cvv,
  activity_limit_checker,
  stip_authorization
]}.

{{purchase_req,'Any'},   
  [ cvv,
  pin_verification_service,
  activity_limit_checker,
  stip_authorization
]}.

{{cash_req,'ECOM'},  
  [ cvv2,
  pin_verification_service,
  activity_limit_checker,
  stip_authorization
]}.

{{cash_req,'NFC'},
  [ cvv,
  activity_limit_checker,
  stip_authorization
]}.

{{cash_req,'Any'},   
  [ cvv,
  pin_verification_service,
  activity_limit_checker,
  stip_authorization
]}.

{{purchase_reversal_adv_req,'ECOM'},  
  [ cvv2,
  pin_verification_service,
  activity_limit_checker,
  stip_authorization
]}.

{{purchase_reversal_adv_req,'NFC'},
  [ cvv,
  activity_limit_checker,
  stip_authorization
]}.

{{purchase_reversal_adv_req,'Any'},   
  [ cvv,
  pin_verification_service,
  activity_limit_checker,
  stip_authorization
]}.

{{cash_reversal_adv_req,'ECOM'},  
  [ cvv2,
  pin_verification_service,
  activity_limit_checker,
  stip_authorization
]}.

{{cash_reversal_adv_req,'NFC'},
  [ cvv,
  activity_limit_checker,
  stip_authorization
]}.

{{cash_reversal_adv_req,'Any'},   
  [ cvv,
  pin_verification_service,
  activity_limit_checker,
  stip_authorization
]}.

{{purchase_adv_req,'ECOM'},  
  [ cvv2,
  pin_verification_service,
  activity_limit_checker,
  stip_authorization
]}.

{{purchase_adv_req,'NFC'},
  [ cvv,
  activity_limit_checker,
  stip_authorization
]}.

{{purchase_adv_req,'Any'},   
  [ cvv,
  pin_verification_service,
  activity_limit_checker,
  stip_authorization
]}.

{{cash_adv_req,'ECOM'},  
  [ cvv2,
  pin_verification_service,
  activity_limit_checker,
  stip_authorization
]}.

{{cash_adv_req,'NFC'},
  [ cvv,
  activity_limit_checker,
  stip_authorization
]}.

{{cash_adv_req,'Any'},   
  [ cvv,
  pin_verification_service,
  activity_limit_checker,
  stip_authorization
]}.
