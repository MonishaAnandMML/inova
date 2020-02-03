%{feeRuleID, [[Source, Element, Tag, Operator,Value],{feeRateID,debitcreditID}]}. 

{1901, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"5411">>, <<"9751">>]}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"1">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase]},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123004">>}],
   {101,8}
   ]

}. 


{1902, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"5411">>,<<"9751">>]}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"1">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase]},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123005">>}],
   {102,8}
   ]

}. 

{1903, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"5200">>, <<"5211">>, <<"5231">>,<<"5251">>,<<"5261">>,<<"5271">>,<<"5300">>,<<"5309">>, <<"5310">>, <<"5311">>, <<"5331">>, <<"5399">>, <<"5411">>, <<"5422">>, <<"5441">>,<<"5422">>,<<"5451">>, <<"5462">>, <<"5499">>, <<"5999">>]}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"1">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase]},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123004">>}],
   {103,8}
   ]
}. 
 


{1904, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"5200">>, <<"5211">>, <<"5231">>,<<"5251">>,<<"5261">>,<<"5271">>,<<"5300">>,<<"5309">>, <<"5310">>, <<"5311">>, <<"5331">>, <<"5399">>, <<"5411">>, <<"5422">>, <<"5441">>,<<"5422">>,<<"5451">>, <<"5462">>, <<"5499">>, <<"5999">>]}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"1">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase]},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123005">>}],
   {102,8}
   ]
}. 
 
  
{1905, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, equals, <<"5542">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"1">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, ['AFD']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123004">>}],
   {104,8}
   ]
}. 


{1906,
[ 
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, equals, <<"5542">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"1">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx,  se_txn_tuple, resolved_tuple , is_superset, ['AFD']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123005">>}],
   {102,8}
   ]
}.

{1907, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, equals, <<"5541">>},
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase]},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123004">>}],
   {104,8}
   ]
}. 


{1908, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, equals, <<"5541">>},
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase]},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123005">>}],
   {102,8}
   ]
}.  

{1909, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"AmountTransaction">>,  lt, 10000},
   {se_ctx, se_resolved_event_code, na,  equals, stip_approved},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase]},
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"1">>},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123004">>}],
   {105,8}
   ]
}. 



{1910,
[ 
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"AmountTransaction">>,  lt, 10000},
   {se_ctx, se_resolved_event_code, na,  equals, stip_approved},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase]},
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"1">>},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123005">>}],
   {102,8}
  ]
}.  

{1911, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"5811">>,<<"5812">>,<<"5813">>,<<"5814">>]}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"1">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase, 'TandE']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123004">>}],
   {106,8}
   ]
}.  

{1912, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"5811">>,<<"5812">>,<<"5813">>,<<"5814">>]}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"1">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase, 'TandE']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123005">>}],
   {102,8}
   ]
}.  

{1913, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"3501">>, <<"3552">>, <<"3503">>, <<"3554">>, <<"3506">>, <<"3557">>, <<"3508">>, <<"3561">>, <<"3562">>, <<"3563">>, <<"3564">>, <<"3565">>, <<"3572">>, <<"3573">>, <<"3574">>, <<"3575">>, <<"3622">>, <<"3623">>, <<"3624">>, <<"3625">>, <<"3631">>, <<"3632">>, <<"3633">>, <<"3634">>, <<"3635">>, <<"3636">>, <<"3637">>, <<"3638">>, <<"3639">>, <<"3540">>, <<"3641">>, <<"3642">>, <<"3643">>, <<"3644">>, <<"3645">>, <<"3646">>, <<"3647">>, <<"3648">>, <<"3649">>, <<"3650">>, <<"3651">>, <<"3652">>, <<"3653">>, <<"3654">>, <<"3655">>, <<"3656">>, <<"3657">>, <<"3658">>, <<"3659">>, <<"3660">>, <<"3661">>, <<"3662">>, <<"3663">>, <<"3664">>, <<"3665">>, <<"3666">>, <<"3667">>, <<"3668">>, <<"3669">>, <<"3670">>, <<"3671">>, <<"3672">>, <<"3673">>, <<"3674">>, <<"3675">>, <<"3676">>, <<"3677">>, <<"3678">>, <<"3679">>, <<"3680">>, <<"3681">>, <<"3682">>, <<"3683">>, <<"3684">>, <<"3685">>, <<"3686">>, <<"3687">>, <<"3688">>, <<"3689">>, <<"3690">>, <<"3691">>, <<"3692">>, <<"3693">>, <<"3694">>, <<"3695">>, <<"3696">>, <<"3697">>, <<"3698">>, <<"3699">>, <<"3700">>, <<"3701">>, <<"3702">>, <<"3703">>, <<"3704">>, <<"3705">>, <<"3706">>, <<"3707">>, <<"3708">>, <<"3709">>, <<"3710">>, <<"3711">>, <<"3712">>, <<"3713">>, <<"3714">>, <<"3715">>, <<"3716">>, <<"3717">>, <<"3718">>, <<"3719">>, <<"3720">>, <<"3721">>, <<"3722">>, <<"3723">>, <<"3724">>, <<"3725">>, <<"3726">>, <<"3727">>, <<"3728">>, <<"3729">>, <<"3730">>, <<"3731">>, <<"3732">>, <<"3733">>, <<"3734">>, <<"3735">>, <<"3736">>, <<"3737">>, <<"3738">>, <<"3739">>, <<"3740">>, <<"3741">>, <<"3742">>, <<"3743">>, <<"3744">>, <<"3745">>, <<"3746">>, <<"3747">>, <<"3748">>, <<"3749">>, <<"3750">>, <<"3751">>, <<"3752">>, <<"3753">>, <<"3754">>, <<"3755">>, <<"3756">>, <<"3757">>, <<"3758">>, <<"3759">>, <<"3760">>, <<"3761">>, <<"3762">>, <<"3763">>, <<"3764">>, <<"3765">>, <<"3766">>, <<"3767">>, <<"3768">>, <<"3769">>, <<"3770">>, <<"3771">>, <<"3772">>, <<"3773">>, <<"3774">>, <<"3775">>, <<"3776">>, <<"3777">>, <<"3778">>, <<"3779">>, <<"3780">>, <<"3781">>, <<"3782">>, <<"3783">>, <<"3784">>, <<"3785">>, <<"3786">>, <<"3568">>, <<"3570">>, <<"3577">>, <<"3615">>,<<"3620">>, <<"3628">>, <<"3629">>, <<"3579">>,<<"3595">>, <<"3597">>, <<"3599">>, <<"3603">>, <<"3612">>, <<"7011">>, <<"3359">>, <<"3360">>, <<"3393">>, 
   <<"3395">>, <<"3400">>, <<"7512">>]}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"1">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase, 'TandE']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123004">>}],
   {106,8}
   ]
}.  

{1914,
[ 
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
    {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"3501">>, <<"3552">>, <<"3503">>, <<"3554">>, <<"3506">>, <<"3557">>, <<"3508">>, <<"3561">>, <<"3562">>, <<"3563">>, <<"3564">>, <<"3565">>, <<"3572">>, <<"3573">>, <<"3574">>, <<"3575">>, <<"3622">>, <<"3623">>, <<"3624">>, <<"3625">>, <<"3631">>, <<"35632">>, <<"3633">>, <<"3634">>, <<"3635">>, <<"35636">>, <<"3637">>, <<"3638">>, <<"3639">>, <<"3540">>, <<"3641">>, <<"3642">>, <<"3643">>, <<"3644">>, <<"3645">>, <<"3646">>, <<"3647">>, <<"3648">>, <<"3649">>, <<"3650">>, <<"3651">>, <<"3652">>, <<"3653">>, <<"3654">>, <<"3655">>, <<"3656">>, <<"3657">>, <<"3658">>, <<"3659">>, <<"3660">>, <<"3661">>, <<"3662">>, <<"3663">>, <<"3664">>, <<"3665">>, <<"3666">>, <<"3667">>, <<"3668">>, <<"3669">>, <<"3670">>, <<"3671">>, <<"3672">>, <<"3673">>, <<"3674">>, <<"3675">>, <<"3676">>, <<"3677">>, <<"3678">>, <<"3679">>, <<"3680">>, <<"3681">>, <<"3682">>, <<"3683">>, <<"3684">>, <<"3685">>, <<"3686">>, <<"3687">>, <<"3688">>, <<"3689">>, <<"3690">>, <<"3691">>, <<"3692">>, <<"3693">>, <<"3694">>, <<"3695">>, <<"3696">>, <<"3697">>, <<"3698">>, <<"3699">>, <<"3700">>, <<"3701">>, <<"3702">>, <<"3703">>, <<"3704">>, <<"3705">>, <<"3706">>, <<"3707">>, <<"3708">>, <<"3709">>, <<"3710">>, <<"3711">>, <<"3712">>, <<"3713">>, <<"3714">>, <<"3715">>, <<"3716">>, <<"3717">>, <<"3718">>, <<"3719">>, <<"3720">>, <<"3721">>, <<"3722">>, <<"3723">>, <<"3724">>, <<"3725">>, <<"3726">>, <<"3727">>, <<"3728">>, <<"3729">>, <<"3730">>, <<"3731">>, <<"3732">>, <<"3733">>, <<"3734">>, <<"3735">>, <<"3736">>, <<"3737">>, <<"3738">>, <<"3739">>, <<"3740">>, <<"3741">>, <<"3742">>, <<"3743">>, <<"3744">>, <<"3745">>, <<"3746">>, <<"3747">>, <<"3748">>, <<"3749">>, <<"3750">>, <<"3751">>, <<"3752">>, <<"3753">>, <<"3754">>, <<"3755">>, <<"3756">>, <<"3757">>, <<"3758">>, <<"3759">>, <<"3760">>, <<"3761">>, <<"3762">>, <<"3763">>, <<"3764">>, <<"3765">>, <<"3766">>, <<"3767">>, <<"3768">>, <<"3769">>, <<"3770">>, <<"3771">>, <<"3772">>, <<"3773">>, <<"3774">>, <<"3775">>, <<"3776">>, <<"3777">>, <<"3778">>, <<"3779">>, <<"3780">>, <<"3781">>, <<"3782">>, <<"3783">>, <<"3784">>, <<"3785">>, <<"3786">>, <<"3568">>, <<"3570">>, <<"3577">>, <<"3615">>,<<"3620">>, <<"3628">>, <<"3629">>, <<"3579">>,<<"3595">>, <<"3597">>, <<"3599">>, <<"3603">>, <<"3612">>, <<"7011">>, <<"3359">>, <<"3360">>, <<"3393">>, 
   <<"3395">>, <<"3400">>, <<"7512">>]},
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"1">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase, 'TandE']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123005">>}],
   {102,8}
   ]
}.  

{1915,
[ 
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"4111">>,<<"4112">>]}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"1">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase, 'TandE']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123004">>}],
   {106,8}
   ]
}.  


{1916, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"4111">>,<<"4112">>]}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"1">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase, 'TandE']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123005">>}],
   {102,8}
   ]
}.  


{1917, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, equals, <<"4789">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"1">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase, 'TandE']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx,se_member_profile, <<"CardProductId">>, equals, <<"123004">>}],
   {106,8}
   ]
}.  

{1918, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, equals, <<"4789">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"1">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase, 'TandE']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123005">>}],
   {102,8}
   ]
}.  


{1919, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase, 'KEYENTRY']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123004">>}],
   {107,8}
   ]
}.  

{1920, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, [purchase, 'KEYENTRY']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123005">>}],
   {102,8}
   ]
}.  


{1921, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"5200">>, <<"5211">>, <<"5231">>, <<"5251">>, <<"5261">>, <<"5271">>, <<"5300">>, <<"5309">>, <<"5310">>, <<"5311">>, <<"5331">>, <<"5399">>, <<"5411">>, <<"5422">>, <<"5441">>, <<"5451">>, <<"5462">>, <<"5499">>, <<"5999">>]}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123004">>}],
   {108,8}
   ]
}.  

{1922, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"5200">>, <<"5211">>, <<"5231">>, <<"5251">>, <<"5261">>, <<"5271">>, <<"5300">>, <<"5309">>, <<"5310">>, <<"5311">>, <<"5331">>, <<"5399">>, <<"5411">>, <<"5422">>, <<"5441">>, <<"5451">>, <<"5462">>, <<"5499">>, <<"5999">>]}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123004">>}],
   {102,8}
   ]
}.  

{1925, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>},  
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['RECURRING']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123004">>}],
   {109,8}
   ]
}.  

{1926, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['RECURRING']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123005">>}],
   {102,8}
   ]
}.  


{1927, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, equals, <<"4900">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123004">>}],
   {110,8}
   ]
}.  

{1928, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, equals, <<"4900">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123005">>}],
   {102,8}
   ]
}.  

{1931, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"9211">>, <<"9222">>, <<"9223">>, <<"9311">>, <<"9399">>, <<"9402">>, <<"9405">>, <<"9700">>, <<"9701">>, <<"9702">>, <<"9751">>, <<"9752">>, <<"9950">>]}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123004">>}],
   {108,8}
   ]
}.  

{1932, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"9211">>, <<"9222">>, <<"9223">>, <<"9311">>, <<"9399">>, <<"9402">>, <<"9405">>, <<"9700">>, <<"9701">>, <<"9702">>, <<"9751">>, <<"9752">>, <<"9950">>]}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123005">>}],
   {102,8}
   ]
}.  


{1935, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['MOTO']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123004">>}],
   {107,8}
   ]
}.  

{1936, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['MOTO']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123005">>}],
   {102,8}
   ]
}.  

{1937, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123004">>}],
   {107,8}
   ]
}.  

{1938, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123005">>}],
   {102,8}
   ]
}.  

{1939, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"5200">>, <<"5211">>, <<"5231">>, <<"5251">>, <<"5261">>, <<"5271">>, <<"5300">>, <<"5309">>, <<"5310">>, <<"5311">>, <<"5331">>, <<"5399">>, <<"5411">>, <<"5422">>, <<"5441">>, <<"5451">>, <<"5462">>, <<"5499">>, <<"5999">>]}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123004">>}],
   {111,8}
   ]
}.  
{1940, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"5200">>, <<"5211">>, <<"5231">>, <<"5251">>, <<"5261">>, <<"5271">>, <<"5300">>, <<"5309">>, <<"5310">>, <<"5311">>, <<"5331">>, <<"5399">>, <<"5411">>, <<"5422">>, <<"5441">>, <<"5451">>, <<"5462">>, <<"5499">>, <<"5999">>]}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123005">>}],
   {102,8}
   ]
}.  


{1941,
[ 
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
    {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"3501">>, <<"3552">>, <<"3503">>, <<"3554">>, <<"3506">>, <<"3557">>, <<"3508">>, <<"3561">>, <<"3562">>, <<"3563">>, <<"3564">>, <<"3565">>, <<"3572">>, <<"3573">>, <<"3574">>, <<"3575">>, <<"3622">>, <<"3623">>, <<"3624">>, <<"3625">>, <<"3631">>, <<"3632">>, <<"3633">>, <<"3634">>, <<"3635">>, <<"3636">>, <<"3637">>, <<"3638">>, <<"3639">>, <<"3540">>, <<"3641">>, <<"3642">>, <<"3643">>, <<"3644">>, <<"3645">>, <<"3646">>, <<"3647">>, <<"3648">>, <<"3649">>, <<"3650">>, <<"3651">>, <<"3652">>, <<"3653">>, <<"3654">>, <<"3655">>, <<"3656">>, <<"3657">>, <<"3658">>, <<"3659">>, <<"3660">>, <<"3661">>, <<"3662">>, <<"3663">>, <<"3664">>, <<"3665">>, <<"3666">>, <<"3667">>, <<"3668">>, <<"3669">>, <<"3670">>, <<"3671">>, <<"3672">>, <<"3673">>, <<"3674">>, <<"3675">>, <<"3676">>, <<"3677">>, <<"3678">>, <<"3679">>, <<"3680">>, <<"3681">>, <<"3682">>, <<"3683">>, <<"3684">>, <<"3685">>, <<"3686">>, <<"3687">>, <<"3688">>, <<"3689">>, <<"3690">>, <<"3691">>, <<"3692">>, <<"3693">>, <<"3694">>, <<"3695">>, <<"3696">>, <<"3697">>, <<"3698">>, <<"3699">>, <<"3700">>, <<"3701">>, <<"3702">>, <<"3703">>, <<"3704">>, <<"3705">>, <<"3706">>, <<"3707">>, <<"3708">>, <<"3709">>, <<"3710">>, <<"3711">>, <<"3712">>, <<"3713">>, <<"3714">>, <<"3715">>, <<"3716">>, <<"3717">>, <<"3718">>, <<"3719">>, <<"3720">>, <<"3721">>, <<"3722">>, <<"3723">>, <<"3724">>, <<"3725">>, <<"3726">>, <<"3727">>, <<"3728">>, <<"3729">>, <<"3730">>, <<"3731">>, <<"3732">>, <<"3733">>, <<"3734">>, <<"3735">>, <<"3736">>, <<"3737">>, <<"3738">>, <<"3739">>, <<"3740">>, <<"3741">>, <<"3742">>, <<"3743">>, <<"3744">>, <<"3745">>, <<"3746">>, <<"3747">>, <<"3748">>, <<"3749">>, <<"3750">>, <<"3751">>, <<"3752">>, <<"3753">>, <<"3754">>, <<"3755">>, <<"3756">>, <<"3757">>, <<"3758">>, <<"3759">>, <<"3760">>, <<"3761">>, <<"3762">>, <<"3763">>, <<"3764">>, <<"3765">>, <<"3766">>, <<"3767">>, <<"3768">>, <<"3769">>, <<"3770">>, <<"3771">>, <<"3772">>, <<"3773">>, <<"3774">>, <<"3775">>, <<"3776">>, <<"3777">>, <<"3778">>, <<"3779">>, <<"3780">>, <<"3781">>, <<"3782">>, <<"3783">>, <<"3784">>, <<"3785">>, <<"3786">>, <<"3568">>, <<"3570">>, <<"3577">>, <<"3615">>,<<"3620">>, <<"3628">>, <<"3629">>, <<"3579">>,<<"3595">>, <<"3597">>, <<"3599">>, <<"3603">>, <<"3612">>, <<"3359">>, <<"3360">>, <<"3393">>, 
   <<"3395">>, <<"3400">>, <<"7512">>]},
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, ['TandE']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123004">>}],
   {112,8}
   ]
}.  

{1942,
[ 
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
    {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"3501">>, <<"3552">>, <<"3503">>, <<"3554">>, <<"3506">>, <<"3557">>, <<"3508">>, <<"3561">>, <<"3562">>, <<"3563">>, <<"3564">>, <<"3565">>, <<"3572">>, <<"3573">>, <<"3574">>, <<"3575">>, <<"3622">>, <<"3623">>, <<"3624">>, <<"3625">>, <<"3631">>, <<"3632">>, <<"3633">>, <<"3634">>, <<"3635">>, <<"3636">>, <<"3637">>, <<"3638">>, <<"3639">>, <<"3540">>, <<"3641">>, <<"3642">>, <<"3643">>, <<"3644">>, <<"3645">>, <<"3646">>, <<"3647">>, <<"3648">>, <<"3649">>, <<"3650">>, <<"3651">>, <<"3652">>, <<"3653">>, <<"3654">>, <<"3655">>, <<"3656">>, <<"3657">>, <<"3658">>, <<"3659">>, <<"3660">>, <<"3661">>, <<"3662">>, <<"3663">>, <<"3664">>, <<"3665">>, <<"3666">>, <<"3667">>, <<"3668">>, <<"3669">>, <<"3670">>, <<"3671">>, <<"3672">>, <<"3673">>, <<"3674">>, <<"3675">>, <<"3676">>, <<"3677">>, <<"3678">>, <<"3679">>, <<"3680">>, <<"3681">>, <<"3682">>, <<"3683">>, <<"3684">>, <<"3685">>, <<"3686">>, <<"3687">>, <<"3688">>, <<"3689">>, <<"3690">>, <<"3691">>, <<"3692">>, <<"3693">>, <<"3694">>, <<"3695">>, <<"3696">>, <<"3697">>, <<"3698">>, <<"3699">>, <<"3700">>, <<"3701">>, <<"3702">>, <<"3703">>, <<"3704">>, <<"3705">>, <<"3706">>, <<"3707">>, <<"3708">>, <<"3709">>, <<"3710">>, <<"3711">>, <<"3712">>, <<"3713">>, <<"3714">>, <<"3715">>, <<"3716">>, <<"3717">>, <<"3718">>, <<"3719">>, <<"3720">>, <<"3721">>, <<"3722">>, <<"3723">>, <<"3724">>, <<"3725">>, <<"3726">>, <<"3727">>, <<"3728">>, <<"3729">>, <<"3730">>, <<"3731">>, <<"3732">>, <<"3733">>, <<"3734">>, <<"3735">>, <<"3736">>, <<"3737">>, <<"3738">>, <<"3739">>, <<"3740">>, <<"3741">>, <<"3742">>, <<"3743">>, <<"3744">>, <<"3745">>, <<"3746">>, <<"3747">>, <<"3748">>, <<"3749">>, <<"3750">>, <<"3751">>, <<"3752">>, <<"3753">>, <<"3754">>, <<"3755">>, <<"3756">>, <<"3757">>, <<"3758">>, <<"3759">>, <<"3760">>, <<"3761">>, <<"3762">>, <<"3763">>, <<"3764">>, <<"3765">>, <<"3766">>, <<"3767">>, <<"3768">>, <<"3769">>, <<"3770">>, <<"3771">>, <<"3772">>, <<"3773">>, <<"3774">>, <<"3775">>, <<"3776">>, <<"3777">>, <<"3778">>, <<"3779">>, <<"3780">>, <<"3781">>, <<"3782">>, <<"3783">>, <<"3784">>, <<"3785">>, <<"3786">>, <<"3568">>, <<"3570">>, <<"3577">>, <<"3615">>,<<"3620">>, <<"3628">>, <<"3629">>, <<"3579">>,<<"3595">>, <<"3597">>, <<"3599">>, <<"3603">>, <<"3612">>, <<"3359">>, <<"3360">>, <<"3393">>, 
   <<"3395">>, <<"3400">>, <<"7512">>]},
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, ['TandE']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123005">>}],
   {102,8}
   ]
}.  

{1947, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"4111">>, <<"4112">>]}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['TandE']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123004">>}],
   {112,8}
   ]
}.  

{1948, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"4111">>, <<"4112">>]},
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['TandE']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123005">>}],
   {102,8}
   ]
}.  


{1949, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>}],
   {102,8}
   ]

}.  


{1950, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"5411">>, <<"9751">>]}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"1">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase]},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123006">>}],
   {115,8}
   ]

}. 


{1951, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"5411">>,<<"9751">>]}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"1">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase]},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123007">>}],
   {102,8}
   ]

}. 

{1953, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"5200">>, <<"5211">>, <<"5231">>,<<"5251">>,<<"5261">>,<<"5271">>,<<"5300">>,<<"5309">>, <<"5310">>, <<"5311">>, <<"5331">>, <<"5399">>, <<"5411">>, <<"5422">>, <<"5441">>,<<"5422">>,<<"5451">>, <<"5462">>, <<"5499">>, <<"5999">>]}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"1">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase]},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123006">>}],
   {116,8}
   ]
}. 
 


{1954, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"5200">>, <<"5211">>, <<"5231">>,<<"5251">>,<<"5261">>,<<"5271">>,<<"5300">>,<<"5309">>, <<"5310">>, <<"5311">>, <<"5331">>, <<"5399">>, <<"5411">>, <<"5422">>, <<"5441">>,<<"5422">>,<<"5451">>, <<"5462">>, <<"5499">>, <<"5999">>]}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"1">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase]},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123007">>}],
   {102,8}
   ]
}. 
 
  
{1955, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, equals, <<"5542">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"1">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, ['AFD']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123006">>}],
   {117,8}
   ]
}. 

{1956,
[ 
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, equals, <<"5542">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"1">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx,  se_txn_tuple, resolved_tuple , is_superset, ['AFD']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123007">>}],
   {102,8}
   ]
}.

{1957, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, equals, <<"5541">>},
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase]},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123006">>}],
   {117,8}
   ]
}. 


{1958, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, equals, <<"5541">>},
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase]},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123007">>}],
   {102,8}
   ]
}.  

{1959, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"AmountTransaction">>,  lt, 10000},
   {se_ctx, se_resolved_event_code, na,  equals, stip_approved},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase]},
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"1">>},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123006">>}],
   {119,8}
   ]
}. 



{1960,
[ 
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"AmountTransaction">>, lt, 10000},
   {se_ctx, se_resolved_event_code, na,  equals, stip_approved},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase]},
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"1">>},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123007">>}],
   {102,8}
   ]
}.  

{1961, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"5811">>,<<"5812">>,<<"5813">>,<<"5814">>]}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"1">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase, 'TandE']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123006">>}],
   {116,8}
   ]
}.  

{1962, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"5811">>,<<"5812">>,<<"5813">>,<<"5814">>]}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"1">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase, 'TandE']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123007">>}],
   {102,8}
   ]
}.  

{1963, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"3501">>, <<"3552">>, <<"3503">>, <<"3554">>, <<"3506">>, <<"3557">>, <<"3508">>, <<"3561">>, <<"3562">>, <<"3563">>, <<"3564">>, <<"3565">>, <<"3572">>, <<"3573">>, <<"3574">>, <<"3575">>, <<"3622">>, <<"3623">>, <<"3624">>, <<"3625">>, <<"3631">>, <<"3632">>, <<"3633">>, <<"3634">>, <<"3635">>, <<"3636">>, <<"3637">>, <<"3638">>, <<"3639">>, <<"3540">>, <<"3641">>, <<"3642">>, <<"3643">>, <<"3644">>, <<"3645">>, <<"3646">>, <<"3647">>, <<"3648">>, <<"3649">>, <<"3650">>, <<"3651">>, <<"3652">>, <<"3653">>, <<"3654">>, <<"3655">>, <<"3656">>, <<"3657">>, <<"3658">>, <<"3659">>, <<"3660">>, <<"3661">>, <<"3662">>, <<"3663">>, <<"3664">>, <<"3665">>, <<"3666">>, <<"3667">>, <<"3668">>, <<"3669">>, <<"3670">>, <<"3671">>, <<"3672">>, <<"3673">>, <<"3674">>, <<"3675">>, <<"3676">>, <<"3677">>, <<"3678">>, <<"3679">>, <<"3680">>, <<"3681">>, <<"3682">>, <<"3683">>, <<"3684">>, <<"3685">>, <<"3686">>, <<"3687">>, <<"3688">>, <<"3689">>, <<"3690">>, <<"3691">>, <<"3692">>, <<"3693">>, <<"3694">>, <<"3695">>, <<"3696">>, <<"3697">>, <<"3698">>, <<"3699">>, <<"3700">>, <<"3701">>, <<"3702">>, <<"3703">>, <<"3704">>, <<"3705">>, <<"3706">>, <<"3707">>, <<"3708">>, <<"3709">>, <<"3710">>, <<"3711">>, <<"3712">>, <<"3713">>, <<"3714">>, <<"3715">>, <<"3716">>, <<"3717">>, <<"3718">>, <<"3719">>, <<"3720">>, <<"3721">>, <<"3722">>, <<"3723">>, <<"3724">>, <<"3725">>, <<"3726">>, <<"3727">>, <<"3728">>, <<"3729">>, <<"3730">>, <<"3731">>, <<"3732">>, <<"3733">>, <<"3734">>, <<"3735">>, <<"3736">>, <<"3737">>, <<"3738">>, <<"3739">>, <<"3740">>, <<"3741">>, <<"3742">>, <<"3743">>, <<"3744">>, <<"3745">>, <<"3746">>, <<"3747">>, <<"3748">>, <<"3749">>, <<"3750">>, <<"3751">>, <<"3752">>, <<"3753">>, <<"3754">>, <<"3755">>, <<"3756">>, <<"3757">>, <<"3758">>, <<"3759">>, <<"3760">>, <<"3761">>, <<"3762">>, <<"3763">>, <<"3764">>, <<"3765">>, <<"3766">>, <<"3767">>, <<"3768">>, <<"3769">>, <<"3770">>, <<"3771">>, <<"3772">>, <<"3773">>, <<"3774">>, <<"3775">>, <<"3776">>, <<"3777">>, <<"3778">>, <<"3779">>, <<"3780">>, <<"3781">>, <<"3782">>, <<"3783">>, <<"3784">>, <<"3785">>, <<"3786">>, <<"3568">>, <<"3570">>, <<"3577">>, <<"3615">>,<<"3620">>, <<"3628">>, <<"3629">>, <<"3579">>,<<"3595">>, <<"3597">>, <<"3599">>, <<"3603">>, <<"3612">>, <<"7011">>, <<"3359">>, <<"3360">>, <<"3393">>, 
   <<"3395">>, <<"3400">>, <<"7512">>]}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"1">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase, 'TandE']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123006">>}],
   {116,8}
   ]
}.  

{1964,
[ 
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
    {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"3501">>, <<"3552">>, <<"3503">>, <<"3554">>, <<"3506">>, <<"3557">>, <<"3508">>, <<"3561">>, <<"3562">>, <<"3563">>, <<"3564">>, <<"3565">>, <<"3572">>, <<"3573">>, <<"3574">>, <<"3575">>, <<"3622">>, <<"3623">>, <<"3624">>, <<"3625">>, <<"3631">>, <<"35632">>, <<"3633">>, <<"3634">>, <<"3635">>, <<"35636">>, <<"3637">>, <<"3638">>, <<"3639">>, <<"3540">>, <<"3641">>, <<"3642">>, <<"3643">>, <<"3644">>, <<"3645">>, <<"3646">>, <<"3647">>, <<"3648">>, <<"3649">>, <<"3650">>, <<"3651">>, <<"3652">>, <<"3653">>, <<"3654">>, <<"3655">>, <<"3656">>, <<"3657">>, <<"3658">>, <<"3659">>, <<"3660">>, <<"3661">>, <<"3662">>, <<"3663">>, <<"3664">>, <<"3665">>, <<"3666">>, <<"3667">>, <<"3668">>, <<"3669">>, <<"3670">>, <<"3671">>, <<"3672">>, <<"3673">>, <<"3674">>, <<"3675">>, <<"3676">>, <<"3677">>, <<"3678">>, <<"3679">>, <<"3680">>, <<"3681">>, <<"3682">>, <<"3683">>, <<"3684">>, <<"3685">>, <<"3686">>, <<"3687">>, <<"3688">>, <<"3689">>, <<"3690">>, <<"3691">>, <<"3692">>, <<"3693">>, <<"3694">>, <<"3695">>, <<"3696">>, <<"3697">>, <<"3698">>, <<"3699">>, <<"3700">>, <<"3701">>, <<"3702">>, <<"3703">>, <<"3704">>, <<"3705">>, <<"3706">>, <<"3707">>, <<"3708">>, <<"3709">>, <<"3710">>, <<"3711">>, <<"3712">>, <<"3713">>, <<"3714">>, <<"3715">>, <<"3716">>, <<"3717">>, <<"3718">>, <<"3719">>, <<"3720">>, <<"3721">>, <<"3722">>, <<"3723">>, <<"3724">>, <<"3725">>, <<"3726">>, <<"3727">>, <<"3728">>, <<"3729">>, <<"3730">>, <<"3731">>, <<"3732">>, <<"3733">>, <<"3734">>, <<"3735">>, <<"3736">>, <<"3737">>, <<"3738">>, <<"3739">>, <<"3740">>, <<"3741">>, <<"3742">>, <<"3743">>, <<"3744">>, <<"3745">>, <<"3746">>, <<"3747">>, <<"3748">>, <<"3749">>, <<"3750">>, <<"3751">>, <<"3752">>, <<"3753">>, <<"3754">>, <<"3755">>, <<"3756">>, <<"3757">>, <<"3758">>, <<"3759">>, <<"3760">>, <<"3761">>, <<"3762">>, <<"3763">>, <<"3764">>, <<"3765">>, <<"3766">>, <<"3767">>, <<"3768">>, <<"3769">>, <<"3770">>, <<"3771">>, <<"3772">>, <<"3773">>, <<"3774">>, <<"3775">>, <<"3776">>, <<"3777">>, <<"3778">>, <<"3779">>, <<"3780">>, <<"3781">>, <<"3782">>, <<"3783">>, <<"3784">>, <<"3785">>, <<"3786">>, <<"3568">>, <<"3570">>, <<"3577">>, <<"3615">>,<<"3620">>, <<"3628">>, <<"3629">>, <<"3579">>,<<"3595">>, <<"3597">>, <<"3599">>, <<"3603">>, <<"3612">>, <<"7011">>, <<"3359">>, <<"3360">>, <<"3393">>, 
   <<"3395">>, <<"3400">>, <<"7512">>]},
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"1">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase, 'TandE']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123007">>}],
   {102,8}
   ]
}.  

{1965,
[ 
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"4111">>,<<"4112">>]}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"1">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase, 'TandE']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123006">>}],
   {116,8}
   ]
}.  


{1966, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"4111">>,<<"4112">>]}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"1">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase, 'TandE']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123007">>}],
   {102,8}
   ]
}.  


{1967, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, equals, <<"4789">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"1">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase, 'TandE']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx,se_member_profile, <<"CardProductId">>, equals, <<"123006">>}],
   {116,8}
   ]
}.  

{1968, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, equals, <<"4789">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"1">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase, 'TandE']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123007">>}],
   {102,8}
   ]
}.  


{1969, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase, 'KEYENTRY']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123006">>}],
   {113,8}
   ]
}.  

{1970, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, [purchase, 'KEYENTRY']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123007">>}],
   {102,8}
   ]
}.  


{1971, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"5200">>, <<"5211">>, <<"5231">>, <<"5251">>, <<"5261">>, <<"5271">>, <<"5300">>, <<"5309">>, <<"5310">>, <<"5311">>, <<"5331">>, <<"5399">>, <<"5411">>, <<"5422">>, <<"5441">>, <<"5451">>, <<"5462">>, <<"5499">>, <<"5999">>]}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123006">>}],
   {108,8}
   ]
}.  

{1972, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"5200">>, <<"5211">>, <<"5231">>, <<"5251">>, <<"5261">>, <<"5271">>, <<"5300">>, <<"5309">>, <<"5310">>, <<"5311">>, <<"5331">>, <<"5399">>, <<"5411">>, <<"5422">>, <<"5441">>, <<"5451">>, <<"5462">>, <<"5499">>, <<"5999">>]}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123006">>}],
   {102,8}
   ]
}.  

{1975, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>},  
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['RECURRING']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123006">>}],
   {109,8}
   ]
}.  

{1976, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['RECURRING']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123007">>}],
   {102,8}
   ]
}.  


{1977, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, equals, <<"4900">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123006">>}],
   {110,8}
   ]
}.  

{1978, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, equals, <<"4900">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123007">>}],
   {102,8}
   ]
}.  

{1981, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"9211">>, <<"9222">>, <<"9223">>, <<"9311">>, <<"9399">>, <<"9402">>, <<"9405">>, <<"9700">>, <<"9701">>, <<"9702">>, <<"9751">>, <<"9752">>, <<"9950">>]}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123006">>}],
   {108,8}
   ]
}.  

{1982, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"9211">>, <<"9222">>, <<"9223">>, <<"9311">>, <<"9399">>, <<"9402">>, <<"9405">>, <<"9700">>, <<"9701">>, <<"9702">>, <<"9751">>, <<"9752">>, <<"9950">>]}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123007">>}],
   {102,8}
   ]
}.  

{1985, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['MOTO']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123006">>}],
   {113,8}
   ]
}.  

{1986, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['MOTO']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123007">>}],
   {102,8}
   ]
}.  

{1987, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123006">>}],
   {113,8}
   ]
}.  

{1988, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123007">>}],
   {102,8}
   ]
}.  

{1989, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"5200">>, <<"5211">>, <<"5231">>, <<"5251">>, <<"5261">>, <<"5271">>, <<"5300">>, <<"5309">>, <<"5310">>, <<"5311">>, <<"5331">>, <<"5399">>, <<"5411">>, <<"5422">>, <<"5441">>, <<"5451">>, <<"5462">>, <<"5499">>, <<"5999">>]}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123006">>}],
   {113,8}
   ]
}.  
{1990, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"5200">>, <<"5211">>, <<"5231">>, <<"5251">>, <<"5261">>, <<"5271">>, <<"5300">>, <<"5309">>, <<"5310">>, <<"5311">>, <<"5331">>, <<"5399">>, <<"5411">>, <<"5422">>, <<"5441">>, <<"5451">>, <<"5462">>, <<"5499">>, <<"5999">>]}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123007">>}],
   {102,8}
   ]
}.  


{1991,
[ 
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
    {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"3501">>, <<"3552">>, <<"3503">>, <<"3554">>, <<"3506">>, <<"3557">>, <<"3508">>, <<"3561">>, <<"3562">>, <<"3563">>, <<"3564">>, <<"3565">>, <<"3572">>, <<"3573">>, <<"3574">>, <<"3575">>, <<"3622">>, <<"3623">>, <<"3624">>, <<"3625">>, <<"3631">>, <<"3632">>, <<"3633">>, <<"3634">>, <<"3635">>, <<"3636">>, <<"3637">>, <<"3638">>, <<"3639">>, <<"3540">>, <<"3641">>, <<"3642">>, <<"3643">>, <<"3644">>, <<"3645">>, <<"3646">>, <<"3647">>, <<"3648">>, <<"3649">>, <<"3650">>, <<"3651">>, <<"3652">>, <<"3653">>, <<"3654">>, <<"3655">>, <<"3656">>, <<"3657">>, <<"3658">>, <<"3659">>, <<"3660">>, <<"3661">>, <<"3662">>, <<"3663">>, <<"3664">>, <<"3665">>, <<"3666">>, <<"3667">>, <<"3668">>, <<"3669">>, <<"3670">>, <<"3671">>, <<"3672">>, <<"3673">>, <<"3674">>, <<"3675">>, <<"3676">>, <<"3677">>, <<"3678">>, <<"3679">>, <<"3680">>, <<"3681">>, <<"3682">>, <<"3683">>, <<"3684">>, <<"3685">>, <<"3686">>, <<"3687">>, <<"3688">>, <<"3689">>, <<"3690">>, <<"3691">>, <<"3692">>, <<"3693">>, <<"3694">>, <<"3695">>, <<"3696">>, <<"3697">>, <<"3698">>, <<"3699">>, <<"3700">>, <<"3701">>, <<"3702">>, <<"3703">>, <<"3704">>, <<"3705">>, <<"3706">>, <<"3707">>, <<"3708">>, <<"3709">>, <<"3710">>, <<"3711">>, <<"3712">>, <<"3713">>, <<"3714">>, <<"3715">>, <<"3716">>, <<"3717">>, <<"3718">>, <<"3719">>, <<"3720">>, <<"3721">>, <<"3722">>, <<"3723">>, <<"3724">>, <<"3725">>, <<"3726">>, <<"3727">>, <<"3728">>, <<"3729">>, <<"3730">>, <<"3731">>, <<"3732">>, <<"3733">>, <<"3734">>, <<"3735">>, <<"3736">>, <<"3737">>, <<"3738">>, <<"3739">>, <<"3740">>, <<"3741">>, <<"3742">>, <<"3743">>, <<"3744">>, <<"3745">>, <<"3746">>, <<"3747">>, <<"3748">>, <<"3749">>, <<"3750">>, <<"3751">>, <<"3752">>, <<"3753">>, <<"3754">>, <<"3755">>, <<"3756">>, <<"3757">>, <<"3758">>, <<"3759">>, <<"3760">>, <<"3761">>, <<"3762">>, <<"3763">>, <<"3764">>, <<"3765">>, <<"3766">>, <<"3767">>, <<"3768">>, <<"3769">>, <<"3770">>, <<"3771">>, <<"3772">>, <<"3773">>, <<"3774">>, <<"3775">>, <<"3776">>, <<"3777">>, <<"3778">>, <<"3779">>, <<"3780">>, <<"3781">>, <<"3782">>, <<"3783">>, <<"3784">>, <<"3785">>, <<"3786">>, <<"3568">>, <<"3570">>, <<"3577">>, <<"3615">>,<<"3620">>, <<"3628">>, <<"3629">>, <<"3579">>,<<"3595">>, <<"3597">>, <<"3599">>, <<"3603">>, <<"3612">>, <<"3359">>, <<"3360">>, <<"3393">>, 
   <<"3395">>, <<"3400">>, <<"7512">>]},
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, ['TandE']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123006">>}],
   {113,8}
   ]
}.  

{1992,
[ 
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
    {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"3501">>, <<"3552">>, <<"3503">>, <<"3554">>, <<"3506">>, <<"3557">>, <<"3508">>, <<"3561">>, <<"3562">>, <<"3563">>, <<"3564">>, <<"3565">>, <<"3572">>, <<"3573">>, <<"3574">>, <<"3575">>, <<"3622">>, <<"3623">>, <<"3624">>, <<"3625">>, <<"3631">>, <<"3632">>, <<"3633">>, <<"3634">>, <<"3635">>, <<"3636">>, <<"3637">>, <<"3638">>, <<"3639">>, <<"3540">>, <<"3641">>, <<"3642">>, <<"3643">>, <<"3644">>, <<"3645">>, <<"3646">>, <<"3647">>, <<"3648">>, <<"3649">>, <<"3650">>, <<"3651">>, <<"3652">>, <<"3653">>, <<"3654">>, <<"3655">>, <<"3656">>, <<"3657">>, <<"3658">>, <<"3659">>, <<"3660">>, <<"3661">>, <<"3662">>, <<"3663">>, <<"3664">>, <<"3665">>, <<"3666">>, <<"3667">>, <<"3668">>, <<"3669">>, <<"3670">>, <<"3671">>, <<"3672">>, <<"3673">>, <<"3674">>, <<"3675">>, <<"3676">>, <<"3677">>, <<"3678">>, <<"3679">>, <<"3680">>, <<"3681">>, <<"3682">>, <<"3683">>, <<"3684">>, <<"3685">>, <<"3686">>, <<"3687">>, <<"3688">>, <<"3689">>, <<"3690">>, <<"3691">>, <<"3692">>, <<"3693">>, <<"3694">>, <<"3695">>, <<"3696">>, <<"3697">>, <<"3698">>, <<"3699">>, <<"3700">>, <<"3701">>, <<"3702">>, <<"3703">>, <<"3704">>, <<"3705">>, <<"3706">>, <<"3707">>, <<"3708">>, <<"3709">>, <<"3710">>, <<"3711">>, <<"3712">>, <<"3713">>, <<"3714">>, <<"3715">>, <<"3716">>, <<"3717">>, <<"3718">>, <<"3719">>, <<"3720">>, <<"3721">>, <<"3722">>, <<"3723">>, <<"3724">>, <<"3725">>, <<"3726">>, <<"3727">>, <<"3728">>, <<"3729">>, <<"3730">>, <<"3731">>, <<"3732">>, <<"3733">>, <<"3734">>, <<"3735">>, <<"3736">>, <<"3737">>, <<"3738">>, <<"3739">>, <<"3740">>, <<"3741">>, <<"3742">>, <<"3743">>, <<"3744">>, <<"3745">>, <<"3746">>, <<"3747">>, <<"3748">>, <<"3749">>, <<"3750">>, <<"3751">>, <<"3752">>, <<"3753">>, <<"3754">>, <<"3755">>, <<"3756">>, <<"3757">>, <<"3758">>, <<"3759">>, <<"3760">>, <<"3761">>, <<"3762">>, <<"3763">>, <<"3764">>, <<"3765">>, <<"3766">>, <<"3767">>, <<"3768">>, <<"3769">>, <<"3770">>, <<"3771">>, <<"3772">>, <<"3773">>, <<"3774">>, <<"3775">>, <<"3776">>, <<"3777">>, <<"3778">>, <<"3779">>, <<"3780">>, <<"3781">>, <<"3782">>, <<"3783">>, <<"3784">>, <<"3785">>, <<"3786">>, <<"3568">>, <<"3570">>, <<"3577">>, <<"3615">>,<<"3620">>, <<"3628">>, <<"3629">>, <<"3579">>,<<"3595">>, <<"3597">>, <<"3599">>, <<"3603">>, <<"3612">>, <<"3359">>, <<"3360">>, <<"3393">>, 
   <<"3395">>, <<"3400">>, <<"7512">>]},
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, ['TandE']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123007">>}],
   {102,8}
   ]
}.  

{1997, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"4111">>, <<"4112">>]}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['TandE']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123006">>}],
   {113,8}
   ]
}.  

{1998, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"4111">>, <<"4112">>]},
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['TandE']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123007">>}],
   {102,8}
   ]
}.  


{1999, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>}],
   {102,8}
   ]
}.  



{2000, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"5411">>, <<"9751">>]},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase]},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123008">>}],
   {120,8}
   ]

}. 


{2001, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"5411">>,<<"9751">>]}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase]},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123033">>}],
   {121,8}
   ]

}. 

{2002, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"5411">>,<<"9751">>]}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase]},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123034">>}],
   {120,8}
   ]

}. 

{2003, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"5411">>,<<"9751">>]}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase]},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123035">>}],
   {122,8}
   ]

}. 

{2004, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"5411">>,<<"9751">>]}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase]},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123036">>}],
   {122,8}
   ]

}. 

{2005, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"5200">>, <<"5211">>, <<"5231">>,<<"5251">>,<<"5261">>,<<"5271">>,<<"5300">>,<<"5309">>, <<"5310">>, <<"5311">>, <<"5331">>, <<"5399">>, <<"5411">>]}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase]},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123008">>}],
   {120,8}
   ]
}. 

{2006, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"5200">>, <<"5211">>, <<"5231">>,<<"5251">>,<<"5261">>,<<"5271">>,<<"5300">>,<<"5309">>, <<"5310">>, <<"5311">>, <<"5331">>, <<"5399">>, <<"5411">>]}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase]},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123033">>}],
   {121,8}
   ]
}. 

{2007, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"5200">>, <<"5211">>, <<"5231">>,<<"5251">>,<<"5261">>,<<"5271">>,<<"5300">>,<<"5309">>, <<"5310">>, <<"5311">>, <<"5331">>, <<"5399">>, <<"5411">>]}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase]},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123034">>}],
   {120,8}
   ]
}. 

{2008, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"5200">>, <<"5211">>, <<"5231">>,<<"5251">>,<<"5261">>,<<"5271">>,<<"5300">>,<<"5309">>, <<"5310">>, <<"5311">>, <<"5331">>, <<"5399">>, <<"5411">>]}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase]},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123035">>}],
   {123,8}
   ]
}. 

{2009, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"5200">>, <<"5211">>, <<"5231">>,<<"5251">>,<<"5261">>,<<"5271">>,<<"5300">>,<<"5309">>, <<"5310">>, <<"5311">>, <<"5331">>, <<"5399">>, <<"5411">>, <<"5422">>, <<"5441">>]}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase]},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123036">>}],
   {123,8}
   ]
}. 

{2010, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"AmountTransaction">>,  lt, 10000},
   {se_ctx, se_resolved_event_code, na,  equals, stip_approved},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase]},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123008">>}],
   {120,8}
   ]
}. 

{2011, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"AmountTransaction">>,  lt, 10000},
   {se_ctx, se_resolved_event_code, na,  equals, stip_approved},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase]},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123033">>}],
   {124,8}
   ]
}. 

{2012, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"AmountTransaction">>,  lt, 10000},
   {se_ctx, se_resolved_event_code, na,  equals, stip_approved},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase]},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123034">>}],
   {120,8}
   ]
}. 

{2013, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"AmountTransaction">>,  lt, 10000},
   {se_ctx, se_resolved_event_code, na,  equals, stip_approved},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase]},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123035">>}],
   {124,8}
   ]
}. 

{2014, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"AmountTransaction">>,  lt, 10000},
   {se_ctx, se_resolved_event_code, na,  equals, stip_approved},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase]},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123036">>}],
   {124,8}
   ]
}. 

{2015, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"5422">>, <<"5441">>, <<"5451">>, <<"5462">>, <<"5499">>, <<"5999">>]}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, [purchase]},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123008">>}],
   {125,8}
   ]
}.  

{2016, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"5422">>, <<"5441">>, <<"5451">>, <<"5462">>, <<"5499">>, <<"5999">>]}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, [purchase]},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123033">>}],
   {126,8}
   ]
}.  

{2017, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"5422">>, <<"5441">>, <<"5451">>, <<"5462">>, <<"5499">>, <<"5999">>]}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, [purchase]},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123034">>}],
   {125,8}
   ]
}.  

{2018, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"5422">>, <<"5441">>, <<"5451">>, <<"5462">>, <<"5499">>, <<"5999">>]}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, [purchase]},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123035">>}],
   {126,8}
   ]
}.  

{2019, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"5422">>, <<"5441">>, <<"5451">>, <<"5462">>, <<"5499">>, <<"5999">>]}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, [purchase]},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123036">>}],
   {126,8}
   ]
}.  


{2020, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>},  
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"4814">>,<<"4899">>]}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['RECURRING']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123008">>}],
   {125,8}
   ]
}.  


{2021, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>},  
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"4814">>,<<"4899">>]}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['RECURRING']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123033">>}],
   {126,8}
   ]
}.  


{2022, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"4814">>,<<"4899">>]},  
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['RECURRING']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123034">>}],
   {125,8}
   ]
}.  


{2023, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>},  
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"4814">>,<<"4899">>]}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['RECURRING']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123035">>}],
   {126,8}
   ]
}.  


{2024, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"4814">>,<<"4899">>]},  
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['RECURRING']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123036">>}],
   {126,8}
   ]
}.  


{2025, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>},  
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"8398">>]}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['purchase']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123008">>}],
   {126,8}
   ]
}.  

{2026, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>},  
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"8398">>]}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['purchase']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123033">>}],
   {127,8}
   ]
}.  
{2027, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>},  
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"8398">>]}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['purchase']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123034">>}],
   {127,8}
   ]
}.  
{2028, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>},  
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"8398">>]}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['purchase']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123035">>}],
   {127,8}
   ]
}.  

{2029, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>},  
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"8398">>]}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['purchase']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123036">>}],
   {127,8}
   ]
}.  

{2030, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"9211">>, <<"9222">>, <<"9223">>, <<"9311">>, <<"9399">>, <<"9402">>, <<"9405">>, <<"9700">>, <<"9701">>, <<"9702">>, <<"9751">>, <<"9752">>, <<"9950">>]}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123008">>}],
   {128,8}
   ]
}.  

{2031, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"9211">>, <<"9222">>, <<"9223">>, <<"9311">>, <<"9399">>, <<"9402">>, <<"9405">>, <<"9700">>, <<"9701">>, <<"9702">>, <<"9751">>, <<"9752">>, <<"9950">>]}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123033">>}],
   {128,8}
   ]
}.  
{2032, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"9211">>, <<"9222">>, <<"9223">>, <<"9311">>, <<"9399">>, <<"9402">>, <<"9405">>, <<"9700">>, <<"9701">>, <<"9702">>, <<"9751">>, <<"9752">>, <<"9950">>]}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123034">>}],
   {128,8}
   ]
}.  
{2033, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"9211">>, <<"9222">>, <<"9223">>, <<"9311">>, <<"9399">>, <<"9402">>, <<"9405">>, <<"9700">>, <<"9701">>, <<"9702">>, <<"9751">>, <<"9752">>, <<"9950">>]}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123035">>}],
   {128,8}
   ]
}.  
{2034, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"9211">>, <<"9222">>, <<"9223">>, <<"9311">>, <<"9399">>, <<"9402">>, <<"9405">>, <<"9700">>, <<"9701">>, <<"9702">>, <<"9751">>, <<"9752">>, <<"9950">>]}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123036">>}],
   {128,8}
   ]
}.  

{2035,
[ 
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, equals, <<"5542">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx,  se_txn_tuple, resolved_tuple , is_superset, ['AFD']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123008">>}],
   {102,8}
   ]
}.

{2036,
[ 
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, equals, <<"5542">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx,  se_txn_tuple, resolved_tuple , is_superset, ['AFD']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123033">>}],
   {129,8}
   ]
}.

{2037,
[ 
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, equals, <<"5542">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx,  se_txn_tuple, resolved_tuple , is_superset, ['AFD']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123034">>}],
   {129,8}
   ]
}.

{2038,
[ 
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, equals, <<"5542">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx,  se_txn_tuple, resolved_tuple , is_superset, ['AFD']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123035">>}],
   {129,8}
   ]
}.

{2039,
[ 
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, equals, <<"5542">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx,  se_txn_tuple, resolved_tuple , is_superset, ['AFD']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123036">>}],
   {129,8}
   ]
}.

{2040, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, equals, <<"5541">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase]},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123008">>}],
   {129,8}
   ]
}. 

{2041, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, equals, <<"5541">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase]},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123033">>}],
   {129,8}
   ]
}.

{2042, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, equals, <<"5541">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase]},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123034">>}],
   {129,8}
   ]
}.

{2043, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, equals, <<"5541">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase]},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123035">>}],
   {129,8}
   ]
}. 

{2044, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, equals, <<"5541">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase]},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123036">>}],
   {129,8}
   ]
}. 


{2045, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, equals, <<"4900">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123008">>}],
   {130,8}
   ]
}.  

{2046, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, equals, <<"4900">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123033">>}],
   {130,8}
   ]
}.  

 
{2047, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, equals, <<"4900">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123034">>}],
   {130,8}
   ]
}.  


{2048, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, equals, <<"4900">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123035">>}],
   {130,8}
   ]
}.  


{2049, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, equals, <<"4900">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123036">>}],
   {130,8}
   ]
}.  

{2050, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase, 'KEYENTRY']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123008">>}],
   {120,8}
   ]
}. 

{2051, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase, 'KEYENTRY']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123033">>}],
   {131,8}
   ]
}. 

{2052, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase, 'KEYENTRY']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123034">>}],
   {120,8}
   ]
}. 

{2053, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase, 'KEYENTRY']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123035">>}],
   {131,8}
   ]
}. 

{2054, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase, 'KEYENTRY']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123036">>}],
   {132,8}
   ]
}. 


{2055, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['MOTO']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123008">>}],
   {125,8}
   ]
}.  

{2056, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['MOTO']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123033">>}],
   {131,8}
   ]
}.  

{2057, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['MOTO']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123034">>}],
   {125,8}
   ]
}.  

{2058, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['MOTO']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123035">>}],
   {131,8}
   ]
}.  

{2059, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['MOTO']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123036">>}],
   {132,8}
   ]
}.  



{2060, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123008">>}],
   {125,8}
   ]
}.  


{2061, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123033">>}],
   {131,8}
   ]
}.  



{2062, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123034">>}],
   {125,8}
   ]
}.  



{2063, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123035">>}],
   {131,8}
   ]
}.  



{2064, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123036">>}],
   {132,8}
   ]
}.  


{2065, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"5200">>, <<"5211">>, <<"5231">>, <<"5251">>, <<"5261">>, <<"5271">>, <<"5300">>, <<"5309">>, <<"5310">>, <<"5311">>, <<"5331">>, <<"5399">>, <<"5411">>, <<"5422">>, <<"5441">>, <<"5451">>, <<"5462">>, <<"5499">>, <<"5999">>]}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123008">>}],
   {125,8}
   ]
}.  


{2066, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"5200">>, <<"5211">>, <<"5231">>, <<"5251">>, <<"5261">>, 
<<"5271">>, <<"5300">>, <<"5309">>, <<"5310">>, <<"5311">>, <<"5331">>, <<"5399">>, <<"5411">>, <<"5422">>, <<"5441">>, <<"5451">>, 
<<"5462">>, <<"5499">>, <<"5999">>]}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123033">>}],
   {132,8}
   ]
}.  

{2067, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"5200">>, <<"5211">>, <<"5231">>, <<"5251">>, <<"5261">>, <<"5271">>, <<"5300">>, <<"5309">>, <<"5310">>, <<"5311">>, <<"5331">>, <<"5399">>, <<"5411">>, <<"5422">>, <<"5441">>, <<"5451">>, <<"5462">>, <<"5499">>, <<"5999">>]}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123034">>}],
   {125,8}
   ]
}.  

{2068, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"5200">>, <<"5211">>, <<"5231">>, <<"5251">>, <<"5261">>, <<"5271">>, <<"5300">>, <<"5309">>, <<"5310">>, <<"5311">>, <<"5331">>, <<"5399">>, <<"5411">>, <<"5422">>, <<"5441">>, <<"5451">>, <<"5462">>, <<"5499">>, <<"5999">>]}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123035">>}],
   {132,8}
   ]
}.  

{2069, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"5200">>, <<"5211">>, <<"5231">>, <<"5251">>, <<"5261">>, <<"5271">>, <<"5300">>, <<"5309">>, <<"5310">>, <<"5311">>, <<"5331">>, <<"5399">>, <<"5411">>, <<"5422">>, <<"5441">>, <<"5451">>, <<"5462">>, <<"5499">>, <<"5999">>]}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123036">>}],
   {132,8}
   ]
}.  

{2070,
[ 
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
    {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"3501">>, <<"3552">>, <<"3503">>, <<"3554">>, <<"3506">>, <<"3557">>, <<"3508">>, <<"3561">>, <<"3562">>, <<"3563">>, <<"3564">>, <<"3565">>, <<"3572">>, <<"3573">>, <<"3574">>, <<"3575">>, <<"3622">>, <<"3623">>, <<"3624">>, <<"3625">>, <<"3631">>, <<"3632">>, <<"3633">>, <<"3634">>, <<"3635">>, <<"3636">>, <<"3637">>, <<"3638">>, <<"3639">>, <<"3540">>, <<"3641">>, <<"3642">>, <<"3643">>, <<"3644">>, <<"3645">>, <<"3646">>, <<"3647">>, <<"3648">>, <<"3649">>, <<"3650">>, <<"3651">>, <<"3652">>, <<"3653">>, <<"3654">>, <<"3655">>, <<"3656">>, <<"3657">>, <<"3658">>, <<"3659">>, <<"3660">>, <<"3661">>, <<"3662">>, <<"3663">>, <<"3664">>, <<"3665">>, <<"3666">>, <<"3667">>, <<"3668">>, <<"3669">>, <<"3670">>, <<"3671">>, <<"3672">>, <<"3673">>, <<"3674">>, <<"3675">>, <<"3676">>, <<"3677">>, <<"3678">>, <<"3679">>, <<"3680">>, <<"3681">>, <<"3682">>, <<"3683">>, <<"3684">>, <<"3685">>, <<"3686">>, <<"3687">>, <<"3688">>, <<"3689">>, <<"3690">>, <<"3691">>, <<"3692">>, <<"3693">>, <<"3694">>, <<"3695">>, <<"3696">>, <<"3697">>, <<"3698">>, <<"3699">>, <<"3700">>, <<"3701">>, <<"3702">>, <<"3703">>, <<"3704">>, <<"3705">>, <<"3706">>, <<"3707">>, <<"3708">>, <<"3709">>, <<"3710">>, <<"3711">>, <<"3712">>, <<"3713">>, <<"3714">>, <<"3715">>, <<"3716">>, <<"3717">>, <<"3718">>, <<"3719">>, <<"3720">>, <<"3721">>, <<"3722">>, <<"3723">>, <<"3724">>, <<"3725">>, <<"3726">>, <<"3727">>, <<"3728">>, <<"3729">>, <<"3730">>, <<"3731">>, <<"3732">>, <<"3733">>, <<"3734">>, <<"3735">>, <<"3736">>, <<"3737">>, <<"3738">>, <<"3739">>, <<"3740">>, <<"3741">>, <<"3742">>, <<"3743">>, <<"3744">>, <<"3745">>, <<"3746">>, <<"3747">>, <<"3748">>, <<"3749">>, <<"3750">>, <<"3751">>, <<"3752">>, <<"3753">>, <<"3754">>, <<"3755">>, <<"3756">>, <<"3757">>, <<"3758">>, <<"3759">>, <<"3760">>, <<"3761">>, <<"3762">>, <<"3763">>, <<"3764">>, <<"3765">>, <<"3766">>, <<"3767">>, <<"3768">>, <<"3769">>, <<"3770">>, <<"3771">>, <<"3772">>, <<"3773">>, <<"3774">>, <<"3775">>, <<"3776">>, <<"3777">>, <<"3778">>, <<"3779">>, <<"3780">>, <<"3781">>, <<"3782">>, <<"3783">>, <<"3784">>, <<"3785">>, <<"3786">>, <<"3568">>, <<"3570">>, <<"3577">>, <<"3615">>,<<"3620">>, <<"3628">>, <<"3629">>, <<"3579">>,<<"3595">>, <<"3597">>, <<"3599">>, <<"3603">>, <<"3612">>, <<"3359">>, <<"3360">>, <<"3393">>, 
   <<"3395">>, <<"3400">>, <<"7512">>]},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, ['ECOM', 'TandE']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123008">>}],
   {125,8}
   ]
}.  


{2071,
[ 
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
    {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"3501">>, <<"3552">>, <<"3503">>, <<"3554">>, <<"3506">>, <<"3557">>, <<"3508">>, <<"3561">>, <<"3562">>, <<"3563">>, <<"3564">>, <<"3565">>, <<"3572">>, <<"3573">>, <<"3574">>, <<"3575">>, <<"3622">>, <<"3623">>, <<"3624">>, <<"3625">>, <<"3631">>, <<"3632">>, <<"3633">>, <<"3634">>, <<"3635">>, <<"3636">>, <<"3637">>, <<"3638">>, <<"3639">>, <<"3540">>, <<"3641">>, <<"3642">>, <<"3643">>, <<"3644">>, <<"3645">>, <<"3646">>, <<"3647">>, <<"3648">>, <<"3649">>, <<"3650">>, <<"3651">>, <<"3652">>, <<"3653">>, <<"3654">>, <<"3655">>, <<"3656">>, <<"3657">>, <<"3658">>, <<"3659">>, <<"3660">>, <<"3661">>, <<"3662">>, <<"3663">>, <<"3664">>, <<"3665">>, <<"3666">>, <<"3667">>, <<"3668">>, <<"3669">>, <<"3670">>, <<"3671">>, <<"3672">>, <<"3673">>, <<"3674">>, <<"3675">>, <<"3676">>, <<"3677">>, <<"3678">>, <<"3679">>, <<"3680">>, <<"3681">>, <<"3682">>, <<"3683">>, <<"3684">>, <<"3685">>, <<"3686">>, <<"3687">>, <<"3688">>, <<"3689">>, <<"3690">>, <<"3691">>, <<"3692">>, <<"3693">>, <<"3694">>, <<"3695">>, <<"3696">>, <<"3697">>, <<"3698">>, <<"3699">>, <<"3700">>, <<"3701">>, <<"3702">>, <<"3703">>, <<"3704">>, <<"3705">>, <<"3706">>, <<"3707">>, <<"3708">>, <<"3709">>, <<"3710">>, <<"3711">>, <<"3712">>, <<"3713">>, <<"3714">>, <<"3715">>, <<"3716">>, <<"3717">>, <<"3718">>, <<"3719">>, <<"3720">>, <<"3721">>, <<"3722">>, <<"3723">>, <<"3724">>, <<"3725">>, <<"3726">>, <<"3727">>, <<"3728">>, <<"3729">>, <<"3730">>, <<"3731">>, <<"3732">>, <<"3733">>, <<"3734">>, <<"3735">>, <<"3736">>, <<"3737">>, <<"3738">>, <<"3739">>, <<"3740">>, <<"3741">>, <<"3742">>, <<"3743">>, <<"3744">>, <<"3745">>, <<"3746">>, <<"3747">>, <<"3748">>, <<"3749">>, <<"3750">>, <<"3751">>, <<"3752">>, <<"3753">>, <<"3754">>, <<"3755">>, <<"3756">>, <<"3757">>, <<"3758">>, <<"3759">>, <<"3760">>, <<"3761">>, <<"3762">>, <<"3763">>, <<"3764">>, <<"3765">>, <<"3766">>, <<"3767">>, <<"3768">>, <<"3769">>, <<"3770">>, <<"3771">>, <<"3772">>, <<"3773">>, <<"3774">>, <<"3775">>, <<"3776">>, <<"3777">>, <<"3778">>, <<"3779">>, <<"3780">>, <<"3781">>, <<"3782">>, <<"3783">>, <<"3784">>, <<"3785">>, <<"3786">>, <<"3568">>, <<"3570">>, <<"3577">>, <<"3615">>,<<"3620">>, <<"3628">>, <<"3629">>, <<"3579">>,<<"3595">>, <<"3597">>, <<"3599">>, <<"3603">>, <<"3612">>, <<"3359">>, <<"3360">>, <<"3393">>, 
   <<"3395">>, <<"3400">>, <<"7512">>]},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, ['ECOM', 'TandE']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123033">>}],
   {133,8}
   ]
}.  


{2072,
[ 
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
    {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"3501">>, <<"3552">>, <<"3503">>, <<"3554">>, <<"3506">>, <<"3557">>, <<"3508">>, <<"3561">>, <<"3562">>, <<"3563">>, <<"3564">>, <<"3565">>, <<"3572">>, <<"3573">>, <<"3574">>, <<"3575">>, <<"3622">>, <<"3623">>, <<"3624">>, <<"3625">>, <<"3631">>, <<"3632">>, <<"3633">>, <<"3634">>, <<"3635">>, <<"3636">>, <<"3637">>, <<"3638">>, <<"3639">>, <<"3540">>, <<"3641">>, <<"3642">>, <<"3643">>, <<"3644">>, <<"3645">>, <<"3646">>, <<"3647">>, <<"3648">>, <<"3649">>, <<"3650">>, <<"3651">>, <<"3652">>, <<"3653">>, <<"3654">>, <<"3655">>, <<"3656">>, <<"3657">>, <<"3658">>, <<"3659">>, <<"3660">>, <<"3661">>, <<"3662">>, <<"3663">>, <<"3664">>, <<"3665">>, <<"3666">>, <<"3667">>, <<"3668">>, <<"3669">>, <<"3670">>, <<"3671">>, <<"3672">>, <<"3673">>, <<"3674">>, <<"3675">>, <<"3676">>, <<"3677">>, <<"3678">>, <<"3679">>, <<"3680">>, <<"3681">>, <<"3682">>, <<"3683">>, <<"3684">>, <<"3685">>, <<"3686">>, <<"3687">>, <<"3688">>, <<"3689">>, <<"3690">>, <<"3691">>, <<"3692">>, <<"3693">>, <<"3694">>, <<"3695">>, <<"3696">>, <<"3697">>, <<"3698">>, <<"3699">>, <<"3700">>, <<"3701">>, <<"3702">>, <<"3703">>, <<"3704">>, <<"3705">>, <<"3706">>, <<"3707">>, <<"3708">>, <<"3709">>, <<"3710">>, <<"3711">>, <<"3712">>, <<"3713">>, <<"3714">>, <<"3715">>, <<"3716">>, <<"3717">>, <<"3718">>, <<"3719">>, <<"3720">>, <<"3721">>, <<"3722">>, <<"3723">>, <<"3724">>, <<"3725">>, <<"3726">>, <<"3727">>, <<"3728">>, <<"3729">>, <<"3730">>, <<"3731">>, <<"3732">>, <<"3733">>, <<"3734">>, <<"3735">>, <<"3736">>, <<"3737">>, <<"3738">>, <<"3739">>, <<"3740">>, <<"3741">>, <<"3742">>, <<"3743">>, <<"3744">>, <<"3745">>, <<"3746">>, <<"3747">>, <<"3748">>, <<"3749">>, <<"3750">>, <<"3751">>, <<"3752">>, <<"3753">>, <<"3754">>, <<"3755">>, <<"3756">>, <<"3757">>, <<"3758">>, <<"3759">>, <<"3760">>, <<"3761">>, <<"3762">>, <<"3763">>, <<"3764">>, <<"3765">>, <<"3766">>, <<"3767">>, <<"3768">>, <<"3769">>, <<"3770">>, <<"3771">>, <<"3772">>, <<"3773">>, <<"3774">>, <<"3775">>, <<"3776">>, <<"3777">>, <<"3778">>, <<"3779">>, <<"3780">>, <<"3781">>, <<"3782">>, <<"3783">>, <<"3784">>, <<"3785">>, <<"3786">>, <<"3568">>, <<"3570">>, <<"3577">>, <<"3615">>,<<"3620">>, <<"3628">>, <<"3629">>, <<"3579">>,<<"3595">>, <<"3597">>, <<"3599">>, <<"3603">>, <<"3612">>, <<"3359">>, <<"3360">>, <<"3393">>, 
   <<"3395">>, <<"3400">>, <<"7512">>]},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, ['ECOM', 'TandE']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123034">>}],
   {125,8}
   ]
}.  


{2073,
[ 
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
    {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"3501">>, <<"3552">>, <<"3503">>, <<"3554">>, <<"3506">>, <<"3557">>, <<"3508">>, <<"3561">>, <<"3562">>, <<"3563">>, <<"3564">>, <<"3565">>, <<"3572">>, <<"3573">>, <<"3574">>, <<"3575">>, <<"3622">>, <<"3623">>, <<"3624">>, <<"3625">>, <<"3631">>, <<"3632">>, <<"3633">>, <<"3634">>, <<"3635">>, <<"3636">>, <<"3637">>, <<"3638">>, <<"3639">>, <<"3540">>, <<"3641">>, <<"3642">>, <<"3643">>, <<"3644">>, <<"3645">>, <<"3646">>, <<"3647">>, <<"3648">>, <<"3649">>, <<"3650">>, <<"3651">>, <<"3652">>, <<"3653">>, <<"3654">>, <<"3655">>, <<"3656">>, <<"3657">>, <<"3658">>, <<"3659">>, <<"3660">>, <<"3661">>, <<"3662">>, <<"3663">>, <<"3664">>, <<"3665">>, <<"3666">>, <<"3667">>, <<"3668">>, <<"3669">>, <<"3670">>, <<"3671">>, <<"3672">>, <<"3673">>, <<"3674">>, <<"3675">>, <<"3676">>, <<"3677">>, <<"3678">>, <<"3679">>, <<"3680">>, <<"3681">>, <<"3682">>, <<"3683">>, <<"3684">>, <<"3685">>, <<"3686">>, <<"3687">>, <<"3688">>, <<"3689">>, <<"3690">>, <<"3691">>, <<"3692">>, <<"3693">>, <<"3694">>, <<"3695">>, <<"3696">>, <<"3697">>, <<"3698">>, <<"3699">>, <<"3700">>, <<"3701">>, <<"3702">>, <<"3703">>, <<"3704">>, <<"3705">>, <<"3706">>, <<"3707">>, <<"3708">>, <<"3709">>, <<"3710">>, <<"3711">>, <<"3712">>, <<"3713">>, <<"3714">>, <<"3715">>, <<"3716">>, <<"3717">>, <<"3718">>, <<"3719">>, <<"3720">>, <<"3721">>, <<"3722">>, <<"3723">>, <<"3724">>, <<"3725">>, <<"3726">>, <<"3727">>, <<"3728">>, <<"3729">>, <<"3730">>, <<"3731">>, <<"3732">>, <<"3733">>, <<"3734">>, <<"3735">>, <<"3736">>, <<"3737">>, <<"3738">>, <<"3739">>, <<"3740">>, <<"3741">>, <<"3742">>, <<"3743">>, <<"3744">>, <<"3745">>, <<"3746">>, <<"3747">>, <<"3748">>, <<"3749">>, <<"3750">>, <<"3751">>, <<"3752">>, <<"3753">>, <<"3754">>, <<"3755">>, <<"3756">>, <<"3757">>, <<"3758">>, <<"3759">>, <<"3760">>, <<"3761">>, <<"3762">>, <<"3763">>, <<"3764">>, <<"3765">>, <<"3766">>, <<"3767">>, <<"3768">>, <<"3769">>, <<"3770">>, <<"3771">>, <<"3772">>, <<"3773">>, <<"3774">>, <<"3775">>, <<"3776">>, <<"3777">>, <<"3778">>, <<"3779">>, <<"3780">>, <<"3781">>, <<"3782">>, <<"3783">>, <<"3784">>, <<"3785">>, <<"3786">>, <<"3568">>, <<"3570">>, <<"3577">>, <<"3615">>,<<"3620">>, <<"3628">>, <<"3629">>, <<"3579">>,<<"3595">>, <<"3597">>, <<"3599">>, <<"3603">>, <<"3612">>, <<"3359">>, <<"3360">>, <<"3393">>, 
   <<"3395">>, <<"3400">>, <<"7512">>]},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, ['ECOM', 'TandE']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123035">>}],
   {131,8}
   ]
}.  



{2074,
[ 
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
    {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"3501">>, <<"3552">>, <<"3503">>, <<"3554">>, <<"3506">>, <<"3557">>, <<"3508">>, <<"3561">>, <<"3562">>, <<"3563">>, <<"3564">>, <<"3565">>, <<"3572">>, <<"3573">>, <<"3574">>, <<"3575">>, <<"3622">>, <<"3623">>, <<"3624">>, <<"3625">>, <<"3631">>, <<"3632">>, <<"3633">>, <<"3634">>, <<"3635">>, <<"3636">>, <<"3637">>, <<"3638">>, <<"3639">>, <<"3540">>, <<"3641">>, <<"3642">>, <<"3643">>, <<"3644">>, <<"3645">>, <<"3646">>, <<"3647">>, <<"3648">>, <<"3649">>, <<"3650">>, <<"3651">>, <<"3652">>, <<"3653">>, <<"3654">>, <<"3655">>, <<"3656">>, <<"3657">>, <<"3658">>, <<"3659">>, <<"3660">>, <<"3661">>, <<"3662">>, <<"3663">>, <<"3664">>, <<"3665">>, <<"3666">>, <<"3667">>, <<"3668">>, <<"3669">>, <<"3670">>, <<"3671">>, <<"3672">>, <<"3673">>, <<"3674">>, <<"3675">>, <<"3676">>, <<"3677">>, <<"3678">>, <<"3679">>, <<"3680">>, <<"3681">>, <<"3682">>, <<"3683">>, <<"3684">>, <<"3685">>, <<"3686">>, <<"3687">>, <<"3688">>, <<"3689">>, <<"3690">>, <<"3691">>, <<"3692">>, <<"3693">>, <<"3694">>, <<"3695">>, <<"3696">>, <<"3697">>, <<"3698">>, <<"3699">>, <<"3700">>, <<"3701">>, <<"3702">>, <<"3703">>, <<"3704">>, <<"3705">>, <<"3706">>, <<"3707">>, <<"3708">>, <<"3709">>, <<"3710">>, <<"3711">>, <<"3712">>, <<"3713">>, <<"3714">>, <<"3715">>, <<"3716">>, <<"3717">>, <<"3718">>, <<"3719">>, <<"3720">>, <<"3721">>, <<"3722">>, <<"3723">>, <<"3724">>, <<"3725">>, <<"3726">>, <<"3727">>, <<"3728">>, <<"3729">>, <<"3730">>, <<"3731">>, <<"3732">>, <<"3733">>, <<"3734">>, <<"3735">>, <<"3736">>, <<"3737">>, <<"3738">>, <<"3739">>, <<"3740">>, <<"3741">>, <<"3742">>, <<"3743">>, <<"3744">>, <<"3745">>, <<"3746">>, <<"3747">>, <<"3748">>, <<"3749">>, <<"3750">>, <<"3751">>, <<"3752">>, <<"3753">>, <<"3754">>, <<"3755">>, <<"3756">>, <<"3757">>, <<"3758">>, <<"3759">>, <<"3760">>, <<"3761">>, <<"3762">>, <<"3763">>, <<"3764">>, <<"3765">>, <<"3766">>, <<"3767">>, <<"3768">>, <<"3769">>, <<"3770">>, <<"3771">>, <<"3772">>, <<"3773">>, <<"3774">>, <<"3775">>, <<"3776">>, <<"3777">>, <<"3778">>, <<"3779">>, <<"3780">>, <<"3781">>, <<"3782">>, <<"3783">>, <<"3784">>, <<"3785">>, <<"3786">>, <<"3568">>, <<"3570">>, <<"3577">>, <<"3615">>,<<"3620">>, <<"3628">>, <<"3629">>, <<"3579">>,<<"3595">>, <<"3597">>, <<"3599">>, <<"3603">>, <<"3612">>, <<"3359">>, <<"3360">>, <<"3393">>, 
   <<"3395">>, <<"3400">>, <<"7512">>]},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, ['ECOM', 'TandE']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123036">>}],
   {134,8}
   ]
}.  

{2075, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"4111">>, <<"4112">>]}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM', 'TandE']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123008">>}],
   {125,8}
   ]
}.  


{2076, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"4111">>, <<"4112">>]}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['TandE','ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123033">>}],
   {133,8}
   ]
}.  


{2077, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"4111">>, <<"4112">>]}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['TandE', 'ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123034">>}],
   {125,8}
   ]
}.  


{2078, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"4111">>, <<"4112">>]}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['TandE', 'ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123035">>}],
   {131,8}
   ]
}.  


{2079, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"4111">>, <<"4112">>]}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['TandE', 'ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123036">>}],
   {135,8}
   ]
}.  


{2080,
[ 
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
    {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"3501">>, <<"3552">>, <<"3503">>, <<"3554">>, <<"3506">>, <<"3557">>, <<"3508">>, <<"3561">>, <<"3562">>, <<"3563">>, <<"3564">>, <<"3565">>, <<"3572">>, <<"3573">>, <<"3574">>, <<"3575">>, <<"3622">>, <<"3623">>, <<"3624">>, <<"3625">>, <<"3631">>, <<"3632">>, <<"3633">>, <<"3634">>, <<"3635">>, <<"3636">>, <<"3637">>, <<"3638">>, <<"3639">>, <<"3540">>, <<"3641">>, <<"3642">>, <<"3643">>, <<"3644">>, <<"3645">>, <<"3646">>, <<"3647">>, <<"3648">>, <<"3649">>, <<"3650">>, <<"3651">>, <<"3652">>, <<"3653">>, <<"3654">>, <<"3655">>, <<"3656">>, <<"3657">>, <<"3658">>, <<"3659">>, <<"3660">>, <<"3661">>, <<"3662">>, <<"3663">>, <<"3664">>, <<"3665">>, <<"3666">>, <<"3667">>, <<"3668">>, <<"3669">>, <<"3670">>, <<"3671">>, <<"3672">>, <<"3673">>, <<"3674">>, <<"3675">>, <<"3676">>, <<"3677">>, <<"3678">>, <<"3679">>, <<"3680">>, <<"3681">>, <<"3682">>, <<"3683">>, <<"3684">>, <<"3685">>, <<"3686">>, <<"3687">>, <<"3688">>, <<"3689">>, <<"3690">>, <<"3691">>, <<"3692">>, <<"3693">>, <<"3694">>, <<"3695">>, <<"3696">>, <<"3697">>, <<"3698">>, <<"3699">>, <<"3700">>, <<"3701">>, <<"3702">>, <<"3703">>, <<"3704">>, <<"3705">>, <<"3706">>, <<"3707">>, <<"3708">>, <<"3709">>, <<"3710">>, <<"3711">>, <<"3712">>, <<"3713">>, <<"3714">>, <<"3715">>, <<"3716">>, <<"3717">>, <<"3718">>, <<"3719">>, <<"3720">>, <<"3721">>, <<"3722">>, <<"3723">>, <<"3724">>, <<"3725">>, <<"3726">>, <<"3727">>, <<"3728">>, <<"3729">>, <<"3730">>, <<"3731">>, <<"3732">>, <<"3733">>, <<"3734">>, <<"3735">>, <<"3736">>, <<"3737">>, <<"3738">>, <<"3739">>, <<"3740">>, <<"3741">>, <<"3742">>, <<"3743">>, <<"3744">>, <<"3745">>, <<"3746">>, <<"3747">>, <<"3748">>, <<"3749">>, <<"3750">>, <<"3751">>, <<"3752">>, <<"3753">>, <<"3754">>, <<"3755">>, <<"3756">>, <<"3757">>, <<"3758">>, <<"3759">>, <<"3760">>, <<"3761">>, <<"3762">>, <<"3763">>, <<"3764">>, <<"3765">>, <<"3766">>, <<"3767">>, <<"3768">>, <<"3769">>, <<"3770">>, <<"3771">>, <<"3772">>, <<"3773">>, <<"3774">>, <<"3775">>, <<"3776">>, <<"3777">>, <<"3778">>, <<"3779">>, <<"3780">>, <<"3781">>, <<"3782">>, <<"3783">>, <<"3784">>, <<"3785">>, <<"3786">>, <<"3568">>, <<"3570">>, <<"3577">>, <<"3615">>,<<"3620">>, <<"3628">>, <<"3629">>, <<"3579">>,<<"3595">>, <<"3597">>, <<"3599">>, <<"3603">>, <<"3612">>, <<"3359">>, <<"3360">>, <<"3393">>, 
   <<"3395">>, <<"3400">>, <<"7512">>]},
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"1">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase, 'CP']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123008">>}],
   {125,8}
   ]
}.  

{2081,
[ 
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
    {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"3501">>, <<"3552">>, <<"3503">>, <<"3554">>, <<"3506">>, <<"3557">>, <<"3508">>, <<"3561">>, <<"3562">>, <<"3563">>, <<"3564">>, <<"3565">>, <<"3572">>, <<"3573">>, <<"3574">>, <<"3575">>, <<"3622">>, <<"3623">>, <<"3624">>, <<"3625">>, <<"3631">>, <<"3632">>, <<"3633">>, <<"3634">>, <<"3635">>, <<"3636">>, <<"3637">>, <<"3638">>, <<"3639">>, <<"3540">>, <<"3641">>, <<"3642">>, <<"3643">>, <<"3644">>, <<"3645">>, <<"3646">>, <<"3647">>, <<"3648">>, <<"3649">>, <<"3650">>, <<"3651">>, <<"3652">>, <<"3653">>, <<"3654">>, <<"3655">>, <<"3656">>, <<"3657">>, <<"3658">>, <<"3659">>, <<"3660">>, <<"3661">>, <<"3662">>, <<"3663">>, <<"3664">>, <<"3665">>, <<"3666">>, <<"3667">>, <<"3668">>, <<"3669">>, <<"3670">>, <<"3671">>, <<"3672">>, <<"3673">>, <<"3674">>, <<"3675">>, <<"3676">>, <<"3677">>, <<"3678">>, <<"3679">>, <<"3680">>, <<"3681">>, <<"3682">>, <<"3683">>, <<"3684">>, <<"3685">>, <<"3686">>, <<"3687">>, <<"3688">>, <<"3689">>, <<"3690">>, <<"3691">>, <<"3692">>, <<"3693">>, <<"3694">>, <<"3695">>, <<"3696">>, <<"3697">>, <<"3698">>, <<"3699">>, <<"3700">>, <<"3701">>, <<"3702">>, <<"3703">>, <<"3704">>, <<"3705">>, <<"3706">>, <<"3707">>, <<"3708">>, <<"3709">>, <<"3710">>, <<"3711">>, <<"3712">>, <<"3713">>, <<"3714">>, <<"3715">>, <<"3716">>, <<"3717">>, <<"3718">>, <<"3719">>, <<"3720">>, <<"3721">>, <<"3722">>, <<"3723">>, <<"3724">>, <<"3725">>, <<"3726">>, <<"3727">>, <<"3728">>, <<"3729">>, <<"3730">>, <<"3731">>, <<"3732">>, <<"3733">>, <<"3734">>, <<"3735">>, <<"3736">>, <<"3737">>, <<"3738">>, <<"3739">>, <<"3740">>, <<"3741">>, <<"3742">>, <<"3743">>, <<"3744">>, <<"3745">>, <<"3746">>, <<"3747">>, <<"3748">>, <<"3749">>, <<"3750">>, <<"3751">>, <<"3752">>, <<"3753">>, <<"3754">>, <<"3755">>, <<"3756">>, <<"3757">>, <<"3758">>, <<"3759">>, <<"3760">>, <<"3761">>, <<"3762">>, <<"3763">>, <<"3764">>, <<"3765">>, <<"3766">>, <<"3767">>, <<"3768">>, <<"3769">>, <<"3770">>, <<"3771">>, <<"3772">>, <<"3773">>, <<"3774">>, <<"3775">>, <<"3776">>, <<"3777">>, <<"3778">>, <<"3779">>, <<"3780">>, <<"3781">>, <<"3782">>, <<"3783">>, <<"3784">>, <<"3785">>, <<"3786">>, <<"3568">>, <<"3570">>, <<"3577">>, <<"3615">>,<<"3620">>, <<"3628">>, <<"3629">>, <<"3579">>,<<"3595">>, <<"3597">>, <<"3599">>, <<"3603">>, <<"3612">>, <<"3359">>, <<"3360">>, <<"3393">>, 
   <<"3395">>, <<"3400">>, <<"7512">>]},
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"1">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase, 'CP']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123033">>}],
   {133,8}
   ]
}.  


{2082,
[ 
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
    {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"3501">>, <<"3552">>, <<"3503">>, <<"3554">>, <<"3506">>, <<"3557">>, <<"3508">>, <<"3561">>, <<"3562">>, <<"3563">>, <<"3564">>, <<"3565">>, <<"3572">>, <<"3573">>, <<"3574">>, <<"3575">>, <<"3622">>, <<"3623">>, <<"3624">>, <<"3625">>, <<"3631">>, <<"3632">>, <<"3633">>, <<"3634">>, <<"3635">>, <<"3636">>, <<"3637">>, <<"3638">>, <<"3639">>, <<"3540">>, <<"3641">>, <<"3642">>, <<"3643">>, <<"3644">>, <<"3645">>, <<"3646">>, <<"3647">>, <<"3648">>, <<"3649">>, <<"3650">>, <<"3651">>, <<"3652">>, <<"3653">>, <<"3654">>, <<"3655">>, <<"3656">>, <<"3657">>, <<"3658">>, <<"3659">>, <<"3660">>, <<"3661">>, <<"3662">>, <<"3663">>, <<"3664">>, <<"3665">>, <<"3666">>, <<"3667">>, <<"3668">>, <<"3669">>, <<"3670">>, <<"3671">>, <<"3672">>, <<"3673">>, <<"3674">>, <<"3675">>, <<"3676">>, <<"3677">>, <<"3678">>, <<"3679">>, <<"3680">>, <<"3681">>, <<"3682">>, <<"3683">>, <<"3684">>, <<"3685">>, <<"3686">>, <<"3687">>, <<"3688">>, <<"3689">>, <<"3690">>, <<"3691">>, <<"3692">>, <<"3693">>, <<"3694">>, <<"3695">>, <<"3696">>, <<"3697">>, <<"3698">>, <<"3699">>, <<"3700">>, <<"3701">>, <<"3702">>, <<"3703">>, <<"3704">>, <<"3705">>, <<"3706">>, <<"3707">>, <<"3708">>, <<"3709">>, <<"3710">>, <<"3711">>, <<"3712">>, <<"3713">>, <<"3714">>, <<"3715">>, <<"3716">>, <<"3717">>, <<"3718">>, <<"3719">>, <<"3720">>, <<"3721">>, <<"3722">>, <<"3723">>, <<"3724">>, <<"3725">>, <<"3726">>, <<"3727">>, <<"3728">>, <<"3729">>, <<"3730">>, <<"3731">>, <<"3732">>, <<"3733">>, <<"3734">>, <<"3735">>, <<"3736">>, <<"3737">>, <<"3738">>, <<"3739">>, <<"3740">>, <<"3741">>, <<"3742">>, <<"3743">>, <<"3744">>, <<"3745">>, <<"3746">>, <<"3747">>, <<"3748">>, <<"3749">>, <<"3750">>, <<"3751">>, <<"3752">>, <<"3753">>, <<"3754">>, <<"3755">>, <<"3756">>, <<"3757">>, <<"3758">>, <<"3759">>, <<"3760">>, <<"3761">>, <<"3762">>, <<"3763">>, <<"3764">>, <<"3765">>, <<"3766">>, <<"3767">>, <<"3768">>, <<"3769">>, <<"3770">>, <<"3771">>, <<"3772">>, <<"3773">>, <<"3774">>, <<"3775">>, <<"3776">>, <<"3777">>, <<"3778">>, <<"3779">>, <<"3780">>, <<"3781">>, <<"3782">>, <<"3783">>, <<"3784">>, <<"3785">>, <<"3786">>, <<"3568">>, <<"3570">>, <<"3577">>, <<"3615">>,<<"3620">>, <<"3628">>, <<"3629">>, <<"3579">>,<<"3595">>, <<"3597">>, <<"3599">>, <<"3603">>, <<"3612">>, <<"3359">>, <<"3360">>, <<"3393">>, 
   <<"3395">>, <<"3400">>, <<"7512">>]},
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"1">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase, 'CP']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123034">>}],
   {125,8}
   ]
}.  

{2083,
[ 
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
    {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"3501">>, <<"3552">>, <<"3503">>, <<"3554">>, <<"3506">>, <<"3557">>, <<"3508">>, <<"3561">>, <<"3562">>, <<"3563">>, <<"3564">>, <<"3565">>, <<"3572">>, <<"3573">>, <<"3574">>, <<"3575">>, <<"3622">>, <<"3623">>, <<"3624">>, <<"3625">>, <<"3631">>, <<"3632">>, <<"3633">>, <<"3634">>, <<"3635">>, <<"3636">>, <<"3637">>, <<"3638">>, <<"3639">>, <<"3540">>, <<"3641">>, <<"3642">>, <<"3643">>, <<"3644">>, <<"3645">>, <<"3646">>, <<"3647">>, <<"3648">>, <<"3649">>, <<"3650">>, <<"3651">>, <<"3652">>, <<"3653">>, <<"3654">>, <<"3655">>, <<"3656">>, <<"3657">>, <<"3658">>, <<"3659">>, <<"3660">>, <<"3661">>, <<"3662">>, <<"3663">>, <<"3664">>, <<"3665">>, <<"3666">>, <<"3667">>, <<"3668">>, <<"3669">>, <<"3670">>, <<"3671">>, <<"3672">>, <<"3673">>, <<"3674">>, <<"3675">>, <<"3676">>, <<"3677">>, <<"3678">>, <<"3679">>, <<"3680">>, <<"3681">>, <<"3682">>, <<"3683">>, <<"3684">>, <<"3685">>, <<"3686">>, <<"3687">>, <<"3688">>, <<"3689">>, <<"3690">>, <<"3691">>, <<"3692">>, <<"3693">>, <<"3694">>, <<"3695">>, <<"3696">>, <<"3697">>, <<"3698">>, <<"3699">>, <<"3700">>, <<"3701">>, <<"3702">>, <<"3703">>, <<"3704">>, <<"3705">>, <<"3706">>, <<"3707">>, <<"3708">>, <<"3709">>, <<"3710">>, <<"3711">>, <<"3712">>, <<"3713">>, <<"3714">>, <<"3715">>, <<"3716">>, <<"3717">>, <<"3718">>, <<"3719">>, <<"3720">>, <<"3721">>, <<"3722">>, <<"3723">>, <<"3724">>, <<"3725">>, <<"3726">>, <<"3727">>, <<"3728">>, <<"3729">>, <<"3730">>, <<"3731">>, <<"3732">>, <<"3733">>, <<"3734">>, <<"3735">>, <<"3736">>, <<"3737">>, <<"3738">>, <<"3739">>, <<"3740">>, <<"3741">>, <<"3742">>, <<"3743">>, <<"3744">>, <<"3745">>, <<"3746">>, <<"3747">>, <<"3748">>, <<"3749">>, <<"3750">>, <<"3751">>, <<"3752">>, <<"3753">>, <<"3754">>, <<"3755">>, <<"3756">>, <<"3757">>, <<"3758">>, <<"3759">>, <<"3760">>, <<"3761">>, <<"3762">>, <<"3763">>, <<"3764">>, <<"3765">>, <<"3766">>, <<"3767">>, <<"3768">>, <<"3769">>, <<"3770">>, <<"3771">>, <<"3772">>, <<"3773">>, <<"3774">>, <<"3775">>, <<"3776">>, <<"3777">>, <<"3778">>, <<"3779">>, <<"3780">>, <<"3781">>, <<"3782">>, <<"3783">>, <<"3784">>, <<"3785">>, <<"3786">>, <<"3568">>, <<"3570">>, <<"3577">>, <<"3615">>,<<"3620">>, <<"3628">>, <<"3629">>, <<"3579">>,<<"3595">>, <<"3597">>, <<"3599">>, <<"3603">>, <<"3612">>, <<"3359">>, <<"3360">>, <<"3393">>, 
   <<"3395">>, <<"3400">>, <<"7512">>]},
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"1">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase, 'CP']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123035">>}],
   {131,8}
   ]
}.  

{2084,
[ 
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
    {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"3501">>, <<"3552">>, <<"3503">>, <<"3554">>, <<"3506">>, <<"3557">>, <<"3508">>, <<"3561">>, <<"3562">>, <<"3563">>, <<"3564">>, <<"3565">>, <<"3572">>, <<"3573">>, <<"3574">>, <<"3575">>, <<"3622">>, <<"3623">>, <<"3624">>, <<"3625">>, <<"3631">>, <<"3632">>, <<"3633">>, <<"3634">>, <<"3635">>, <<"3636">>, <<"3637">>, <<"3638">>, <<"3639">>, <<"3540">>, <<"3641">>, <<"3642">>, <<"3643">>, <<"3644">>, <<"3645">>, <<"3646">>, <<"3647">>, <<"3648">>, <<"3649">>, <<"3650">>, <<"3651">>, <<"3652">>, <<"3653">>, <<"3654">>, <<"3655">>, <<"3656">>, <<"3657">>, <<"3658">>, <<"3659">>, <<"3660">>, <<"3661">>, <<"3662">>, <<"3663">>, <<"3664">>, <<"3665">>, <<"3666">>, <<"3667">>, <<"3668">>, <<"3669">>, <<"3670">>, <<"3671">>, <<"3672">>, <<"3673">>, <<"3674">>, <<"3675">>, <<"3676">>, <<"3677">>, <<"3678">>, <<"3679">>, <<"3680">>, <<"3681">>, <<"3682">>, <<"3683">>, <<"3684">>, <<"3685">>, <<"3686">>, <<"3687">>, <<"3688">>, <<"3689">>, <<"3690">>, <<"3691">>, <<"3692">>, <<"3693">>, <<"3694">>, <<"3695">>, <<"3696">>, <<"3697">>, <<"3698">>, <<"3699">>, <<"3700">>, <<"3701">>, <<"3702">>, <<"3703">>, <<"3704">>, <<"3705">>, <<"3706">>, <<"3707">>, <<"3708">>, <<"3709">>, <<"3710">>, <<"3711">>, <<"3712">>, <<"3713">>, <<"3714">>, <<"3715">>, <<"3716">>, <<"3717">>, <<"3718">>, <<"3719">>, <<"3720">>, <<"3721">>, <<"3722">>, <<"3723">>, <<"3724">>, <<"3725">>, <<"3726">>, <<"3727">>, <<"3728">>, <<"3729">>, <<"3730">>, <<"3731">>, <<"3732">>, <<"3733">>, <<"3734">>, <<"3735">>, <<"3736">>, <<"3737">>, <<"3738">>, <<"3739">>, <<"3740">>, <<"3741">>, <<"3742">>, <<"3743">>, <<"3744">>, <<"3745">>, <<"3746">>, <<"3747">>, <<"3748">>, <<"3749">>, <<"3750">>, <<"3751">>, <<"3752">>, <<"3753">>, <<"3754">>, <<"3755">>, <<"3756">>, <<"3757">>, <<"3758">>, <<"3759">>, <<"3760">>, <<"3761">>, <<"3762">>, <<"3763">>, <<"3764">>, <<"3765">>, <<"3766">>, <<"3767">>, <<"3768">>, <<"3769">>, <<"3770">>, <<"3771">>, <<"3772">>, <<"3773">>, <<"3774">>, <<"3775">>, <<"3776">>, <<"3777">>, <<"3778">>, <<"3779">>, <<"3780">>, <<"3781">>, <<"3782">>, <<"3783">>, <<"3784">>, <<"3785">>, <<"3786">>, <<"3568">>, <<"3570">>, <<"3577">>, <<"3615">>,<<"3620">>, <<"3628">>, <<"3629">>, <<"3579">>,<<"3595">>, <<"3597">>, <<"3599">>, <<"3603">>, <<"3612">>, <<"3359">>, <<"3360">>, <<"3393">>, 
   <<"3395">>, <<"3400">>, <<"7512">>]},
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"1">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase, 'CP']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123036">>}],
   {134,8}
   ]
}.  


{2085,
[ 
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
    {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"3501">>, <<"3552">>, <<"3503">>, <<"3554">>, <<"3506">>, <<"3557">>, <<"3508">>, <<"3561">>, <<"3562">>, <<"3563">>, <<"3564">>, <<"3565">>, <<"3572">>, <<"3573">>, <<"3574">>, <<"3575">>, <<"3622">>, <<"3623">>, <<"3624">>, <<"3625">>, <<"3631">>, <<"3632">>, <<"3633">>, <<"3634">>, <<"3635">>, <<"3636">>, <<"3637">>, <<"3638">>, <<"3639">>, <<"3540">>, <<"3641">>, <<"3642">>, <<"3643">>, <<"3644">>, <<"3645">>, <<"3646">>, <<"3647">>, <<"3648">>, <<"3649">>, <<"3650">>, <<"3651">>, <<"3652">>, <<"3653">>, <<"3654">>, <<"3655">>, <<"3656">>, <<"3657">>, <<"3658">>, <<"3659">>, <<"3660">>, <<"3661">>, <<"3662">>, <<"3663">>, <<"3664">>, <<"3665">>, <<"3666">>, <<"3667">>, <<"3668">>, <<"3669">>, <<"3670">>, <<"3671">>, <<"3672">>, <<"3673">>, <<"3674">>, <<"3675">>, <<"3676">>, <<"3677">>, <<"3678">>, <<"3679">>, <<"3680">>, <<"3681">>, <<"3682">>, <<"3683">>, <<"3684">>, <<"3685">>, <<"3686">>, <<"3687">>, <<"3688">>, <<"3689">>, <<"3690">>, <<"3691">>, <<"3692">>, <<"3693">>, <<"3694">>, <<"3695">>, <<"3696">>, <<"3697">>, <<"3698">>, <<"3699">>, <<"3700">>, <<"3701">>, <<"3702">>, <<"3703">>, <<"3704">>, <<"3705">>, <<"3706">>, <<"3707">>, <<"3708">>, <<"3709">>, <<"3710">>, <<"3711">>, <<"3712">>, <<"3713">>, <<"3714">>, <<"3715">>, <<"3716">>, <<"3717">>, <<"3718">>, <<"3719">>, <<"3720">>, <<"3721">>, <<"3722">>, <<"3723">>, <<"3724">>, <<"3725">>, <<"3726">>, <<"3727">>, <<"3728">>, <<"3729">>, <<"3730">>, <<"3731">>, <<"3732">>, <<"3733">>, <<"3734">>, <<"3735">>, <<"3736">>, <<"3737">>, <<"3738">>, <<"3739">>, <<"3740">>, <<"3741">>, <<"3742">>, <<"3743">>, <<"3744">>, <<"3745">>, <<"3746">>, <<"3747">>, <<"3748">>, <<"3749">>, <<"3750">>, <<"3751">>, <<"3752">>, <<"3753">>, <<"3754">>, <<"3755">>, <<"3756">>, <<"3757">>, <<"3758">>, <<"3759">>, <<"3760">>, <<"3761">>, <<"3762">>, <<"3763">>, <<"3764">>, <<"3765">>, <<"3766">>, <<"3767">>, <<"3768">>, <<"3769">>, <<"3770">>, <<"3771">>, <<"3772">>, <<"3773">>, <<"3774">>, <<"3775">>, <<"3776">>, <<"3777">>, <<"3778">>, <<"3779">>, <<"3780">>, <<"3781">>, <<"3782">>, <<"3783">>, <<"3784">>, <<"3785">>, <<"3786">>, <<"3568">>, <<"3570">>, <<"3577">>, <<"3615">>,<<"3620">>, <<"3628">>, <<"3629">>, <<"3579">>,<<"3595">>, <<"3597">>, <<"3599">>, <<"3603">>, <<"3612">>, <<"3359">>, <<"3360">>, <<"3393">>, 
   <<"3395">>, <<"3400">>, <<"7512">>]},
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase, 'CNP']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123008">>}],
   {125,8}
   ]
}.  

{2086,
[ 
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
    {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"3501">>, <<"3552">>, <<"3503">>, <<"3554">>, <<"3506">>, <<"3557">>, <<"3508">>, <<"3561">>, <<"3562">>, <<"3563">>, <<"3564">>, <<"3565">>, <<"3572">>, <<"3573">>, <<"3574">>, <<"3575">>, <<"3622">>, <<"3623">>, <<"3624">>, <<"3625">>, <<"3631">>, <<"3632">>, <<"3633">>, <<"3634">>, <<"3635">>, <<"3636">>, <<"3637">>, <<"3638">>, <<"3639">>, <<"3540">>, <<"3641">>, <<"3642">>, <<"3643">>, <<"3644">>, <<"3645">>, <<"3646">>, <<"3647">>, <<"3648">>, <<"3649">>, <<"3650">>, <<"3651">>, <<"3652">>, <<"3653">>, <<"3654">>, <<"3655">>, <<"3656">>, <<"3657">>, <<"3658">>, <<"3659">>, <<"3660">>, <<"3661">>, <<"3662">>, <<"3663">>, <<"3664">>, <<"3665">>, <<"3666">>, <<"3667">>, <<"3668">>, <<"3669">>, <<"3670">>, <<"3671">>, <<"3672">>, <<"3673">>, <<"3674">>, <<"3675">>, <<"3676">>, <<"3677">>, <<"3678">>, <<"3679">>, <<"3680">>, <<"3681">>, <<"3682">>, <<"3683">>, <<"3684">>, <<"3685">>, <<"3686">>, <<"3687">>, <<"3688">>, <<"3689">>, <<"3690">>, <<"3691">>, <<"3692">>, <<"3693">>, <<"3694">>, <<"3695">>, <<"3696">>, <<"3697">>, <<"3698">>, <<"3699">>, <<"3700">>, <<"3701">>, <<"3702">>, <<"3703">>, <<"3704">>, <<"3705">>, <<"3706">>, <<"3707">>, <<"3708">>, <<"3709">>, <<"3710">>, <<"3711">>, <<"3712">>, <<"3713">>, <<"3714">>, <<"3715">>, <<"3716">>, <<"3717">>, <<"3718">>, <<"3719">>, <<"3720">>, <<"3721">>, <<"3722">>, <<"3723">>, <<"3724">>, <<"3725">>, <<"3726">>, <<"3727">>, <<"3728">>, <<"3729">>, <<"3730">>, <<"3731">>, <<"3732">>, <<"3733">>, <<"3734">>, <<"3735">>, <<"3736">>, <<"3737">>, <<"3738">>, <<"3739">>, <<"3740">>, <<"3741">>, <<"3742">>, <<"3743">>, <<"3744">>, <<"3745">>, <<"3746">>, <<"3747">>, <<"3748">>, <<"3749">>, <<"3750">>, <<"3751">>, <<"3752">>, <<"3753">>, <<"3754">>, <<"3755">>, <<"3756">>, <<"3757">>, <<"3758">>, <<"3759">>, <<"3760">>, <<"3761">>, <<"3762">>, <<"3763">>, <<"3764">>, <<"3765">>, <<"3766">>, <<"3767">>, <<"3768">>, <<"3769">>, <<"3770">>, <<"3771">>, <<"3772">>, <<"3773">>, <<"3774">>, <<"3775">>, <<"3776">>, <<"3777">>, <<"3778">>, <<"3779">>, <<"3780">>, <<"3781">>, <<"3782">>, <<"3783">>, <<"3784">>, <<"3785">>, <<"3786">>, <<"3568">>, <<"3570">>, <<"3577">>, <<"3615">>,<<"3620">>, <<"3628">>, <<"3629">>, <<"3579">>,<<"3595">>, <<"3597">>, <<"3599">>, <<"3603">>, <<"3612">>, <<"3359">>, <<"3360">>, <<"3393">>, 
   <<"3395">>, <<"3400">>, <<"7512">>]},
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase, 'CNP']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123033">>}],
   {133,8}
   ]
}.  

{2087,
[ 
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
    {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"3501">>, <<"3552">>, <<"3503">>, <<"3554">>, <<"3506">>, <<"3557">>, <<"3508">>, <<"3561">>, <<"3562">>, <<"3563">>, <<"3564">>, <<"3565">>, <<"3572">>, <<"3573">>, <<"3574">>, <<"3575">>, <<"3622">>, <<"3623">>, <<"3624">>, <<"3625">>, <<"3631">>, <<"3632">>, <<"3633">>, <<"3634">>, <<"3635">>, <<"3636">>, <<"3637">>, <<"3638">>, 
    <<"3639">>, <<"3540">>, <<"3641">>, <<"3642">>, <<"3643">>, <<"3644">>, <<"3645">>, <<"3646">>, <<"3647">>, <<"3648">>, <<"3649">>, <<"3650">>, <<"3651">>, <<"3652">>, <<"3653">>, <<"3654">>, <<"3655">>, <<"3656">>, <<"3657">>, <<"3658">>, <<"3659">>, <<"3660">>, <<"3661">>, <<"3662">>, <<"3663">>, <<"3664">>, <<"3665">>, <<"3666">>, <<"3667">>, <<"3668">>, <<"3669">>, <<"3670">>, <<"3671">>, <<"3672">>, <<"3673">>, <<"3674">>, <<"3675">>, <<"3676">>, <<"3677">>, <<"3678">>, <<"3679">>, <<"3680">>, <<"3681">>, <<"3682">>, <<"3683">>, <<"3684">>, <<"3685">>, <<"3686">>, <<"3687">>, <<"3688">>, <<"3689">>, <<"3690">>, <<"3691">>, <<"3692">>, <<"3693">>, <<"3694">>, <<"3695">>, <<"3696">>, <<"3697">>, <<"3698">>, <<"3699">>, <<"3700">>, <<"3701">>, <<"3702">>, <<"3703">>, <<"3704">>, <<"3705">>, <<"3706">>, <<"3707">>, <<"3708">>, <<"3709">>, <<"3710">>, <<"3711">>, <<"3712">>, <<"3713">>, <<"3714">>, <<"3715">>, <<"3716">>, <<"3717">>, <<"3718">>, <<"3719">>, <<"3720">>, <<"3721">>, <<"3722">>, <<"3723">>, <<"3724">>, <<"3725">>, <<"3726">>, <<"3727">>, <<"3728">>, <<"3729">>, <<"3730">>, <<"3731">>, <<"3732">>, <<"3733">>, <<"3734">>, <<"3735">>, <<"3736">>, <<"3737">>, <<"3738">>, <<"3739">>, <<"3740">>, <<"3741">>, <<"3742">>, <<"3743">>, <<"3744">>, <<"3745">>, <<"3746">>, <<"3747">>, <<"3748">>, <<"3749">>, <<"3750">>, <<"3751">>, <<"3752">>, <<"3753">>, <<"3754">>, <<"3755">>, <<"3756">>, <<"3757">>, <<"3758">>, <<"3759">>, <<"3760">>, <<"3761">>, <<"3762">>, <<"3763">>, <<"3764">>, <<"3765">>, <<"3766">>, <<"3767">>, <<"3768">>, <<"3769">>, <<"3770">>, <<"3771">>, <<"3772">>, <<"3773">>, <<"3774">>, <<"3775">>, <<"3776">>, <<"3777">>, <<"3778">>, <<"3779">>, <<"3780">>, <<"3781">>, <<"3782">>, <<"3783">>, <<"3784">>, <<"3785">>, <<"3786">>, <<"3568">>, <<"3570">>, <<"3577">>, <<"3615">>,<<"3620">>, <<"3628">>, <<"3629">>, <<"3579">>,<<"3595">>, <<"3597">>, <<"3599">>, <<"3603">>, <<"3612">>, <<"3359">>, <<"3360">>, <<"3393">>, 
   <<"3395">>, <<"3400">>, <<"7512">>]},
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase, 'CNP']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123034">>}],
   {125,8}
   ]
}.  

{2088,
[ 
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
    {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"3501">>, <<"3552">>, <<"3503">>, <<"3554">>, <<"3506">>, <<"3557">>, <<"3508">>, <<"3561">>, <<"3562">>, <<"3563">>, <<"3564">>, <<"3565">>, <<"3572">>, <<"3573">>, <<"3574">>, <<"3575">>, <<"3622">>, <<"3623">>, <<"3624">>, <<"3625">>, <<"3631">>, <<"3632">>, <<"3633">>, <<"3634">>, <<"3635">>, <<"3636">>, <<"3637">>, <<"3638">>, <<"3639">>, <<"3540">>, <<"3641">>, <<"3642">>, <<"3643">>, <<"3644">>, <<"3645">>, <<"3646">>, <<"3647">>, <<"3648">>, <<"3649">>, <<"3650">>, <<"3651">>, <<"3652">>, <<"3653">>, <<"3654">>, <<"3655">>, <<"3656">>, <<"3657">>, <<"3658">>, <<"3659">>, <<"3660">>, <<"3661">>, <<"3662">>, <<"3663">>, <<"3664">>, <<"3665">>, <<"3666">>, <<"3667">>, <<"3668">>, <<"3669">>, <<"3670">>, <<"3671">>, <<"3672">>, <<"3673">>, <<"3674">>, <<"3675">>, <<"3676">>, <<"3677">>, <<"3678">>, <<"3679">>, <<"3680">>, <<"3681">>, <<"3682">>, <<"3683">>, <<"3684">>, <<"3685">>, <<"3686">>, <<"3687">>, <<"3688">>, <<"3689">>, <<"3690">>, <<"3691">>, <<"3692">>, <<"3693">>, <<"3694">>, <<"3695">>, <<"3696">>, <<"3697">>, <<"3698">>, <<"3699">>, <<"3700">>, <<"3701">>, <<"3702">>, <<"3703">>, <<"3704">>, <<"3705">>, <<"3706">>, <<"3707">>, <<"3708">>, <<"3709">>, <<"3710">>, <<"3711">>, <<"3712">>, <<"3713">>, <<"3714">>, <<"3715">>, <<"3716">>, <<"3717">>, <<"3718">>, <<"3719">>, <<"3720">>, <<"3721">>, <<"3722">>, <<"3723">>, <<"3724">>, <<"3725">>, <<"3726">>, <<"3727">>, <<"3728">>, <<"3729">>, <<"3730">>, <<"3731">>, <<"3732">>, <<"3733">>, <<"3734">>, <<"3735">>, <<"3736">>, <<"3737">>, <<"3738">>, <<"3739">>, <<"3740">>, <<"3741">>, <<"3742">>, <<"3743">>, <<"3744">>, <<"3745">>, <<"3746">>, <<"3747">>, <<"3748">>, <<"3749">>, <<"3750">>, <<"3751">>, <<"3752">>, <<"3753">>, <<"3754">>, <<"3755">>, <<"3756">>, <<"3757">>, <<"3758">>, <<"3759">>, <<"3760">>, <<"3761">>, <<"3762">>, <<"3763">>, <<"3764">>, <<"3765">>, <<"3766">>, <<"3767">>, <<"3768">>, <<"3769">>, <<"3770">>, <<"3771">>, <<"3772">>, <<"3773">>, <<"3774">>, <<"3775">>, <<"3776">>, <<"3777">>, <<"3778">>, <<"3779">>, <<"3780">>, <<"3781">>, <<"3782">>, <<"3783">>, <<"3784">>, <<"3785">>, <<"3786">>, <<"3568">>, <<"3570">>, <<"3577">>, <<"3615">>,<<"3620">>, <<"3628">>, <<"3629">>, <<"3579">>,<<"3595">>, <<"3597">>, <<"3599">>, <<"3603">>, <<"3612">>, <<"3359">>, <<"3360">>, <<"3393">>, 
   <<"3395">>, <<"3400">>, <<"7512">>]},
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase, 'CNP']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123035">>}],
   {131,8}
   ]
}.  


{2089,
[ 
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
    {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"3501">>, <<"3552">>, <<"3503">>, <<"3554">>, <<"3506">>, <<"3557">>, <<"3508">>, <<"3561">>, <<"3562">>, <<"3563">>, <<"3564">>, <<"3565">>, <<"3572">>, <<"3573">>, <<"3574">>, <<"3575">>, <<"3622">>, <<"3623">>, <<"3624">>, <<"3625">>, <<"3631">>, <<"3632">>, <<"3633">>, <<"3634">>, <<"3635">>, <<"3636">>, <<"3637">>, <<"3638">>, <<"3639">>, <<"3540">>, <<"3641">>, <<"3642">>, <<"3643">>, <<"3644">>, <<"3645">>, <<"3646">>, <<"3647">>, <<"3648">>, <<"3649">>, <<"3650">>, <<"3651">>, <<"3652">>, <<"3653">>, <<"3654">>, <<"3655">>, <<"3656">>, <<"3657">>, <<"3658">>, <<"3659">>, <<"3660">>, <<"3661">>, <<"3662">>, <<"3663">>, <<"3664">>, <<"3665">>, <<"3666">>, <<"3667">>, <<"3668">>, <<"3669">>, <<"3670">>, <<"3671">>, <<"3672">>, <<"3673">>, <<"3674">>, <<"3675">>, <<"3676">>, <<"3677">>, <<"3678">>, <<"3679">>, <<"3680">>, <<"3681">>, <<"3682">>, <<"3683">>, <<"3684">>, <<"3685">>, <<"3686">>, <<"3687">>, <<"3688">>, <<"3689">>, <<"3690">>, <<"3691">>, <<"3692">>, <<"3693">>, <<"3694">>, <<"3695">>, <<"3696">>, <<"3697">>, <<"3698">>, <<"3699">>, <<"3700">>, <<"3701">>, <<"3702">>, <<"3703">>, <<"3704">>, <<"3705">>, <<"3706">>, <<"3707">>, <<"3708">>, <<"3709">>, <<"3710">>, <<"3711">>, <<"3712">>, <<"3713">>, <<"3714">>, <<"3715">>, <<"3716">>, <<"3717">>, <<"3718">>, <<"3719">>, <<"3720">>, <<"3721">>, <<"3722">>, <<"3723">>, <<"3724">>, <<"3725">>, <<"3726">>, <<"3727">>, <<"3728">>, <<"3729">>, <<"3730">>, <<"3731">>, <<"3732">>, <<"3733">>, <<"3734">>, <<"3735">>, <<"3736">>, <<"3737">>, <<"3738">>, <<"3739">>, <<"3740">>, <<"3741">>, <<"3742">>, <<"3743">>, <<"3744">>, <<"3745">>, <<"3746">>, <<"3747">>, <<"3748">>, <<"3749">>, <<"3750">>, <<"3751">>, <<"3752">>, <<"3753">>, <<"3754">>, <<"3755">>, <<"3756">>, <<"3757">>, <<"3758">>, <<"3759">>, <<"3760">>, <<"3761">>, <<"3762">>, <<"3763">>, <<"3764">>, <<"3765">>, <<"3766">>, <<"3767">>, <<"3768">>, <<"3769">>, <<"3770">>, <<"3771">>, <<"3772">>, <<"3773">>, <<"3774">>, <<"3775">>, <<"3776">>, <<"3777">>, <<"3778">>, <<"3779">>, <<"3780">>, <<"3781">>, <<"3782">>, <<"3783">>, <<"3784">>, <<"3785">>, <<"3786">>, <<"3568">>, <<"3570">>, <<"3577">>, <<"3615">>,<<"3620">>, <<"3628">>, <<"3629">>, <<"3579">>,<<"3595">>, <<"3597">>, <<"3599">>, <<"3603">>, <<"3612">>, <<"3359">>, <<"3360">>, <<"3393">>, 
   <<"3395">>, <<"3400">>, <<"7512">>]},
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase, 'CNP']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123036">>}],
   {134,8}
   ]
}.  

{2090, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"4111">>, <<"4112">>]}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['TandE']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123008">>}],
   {125,8}
   ]
}.  


{2091, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"4111">>, <<"4112">>]}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['TandE']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123033">>}],
   {133,8}
   ]
}.  


{2092, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"4111">>, <<"4112">>]}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['TandE']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123034">>}],
   {125,8}
   ]
}.  


{2093, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"4111">>, <<"4112">>]}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['TandE']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123035">>}],
   {131,8}
   ]
}.  


{2094, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"4111">>, <<"4112">>]}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['TandE']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123036">>}],
   {135,8}
   ]
}.  


{2095, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"5811">>,<<"5812">>,<<"5813">>,<<"5814">>]}, 
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase, 'TandE']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123008">>}],
   {125,8}
   ]
}.  

{2096, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"5811">>,<<"5812">>,<<"5813">>,<<"5814">>]}, 
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase, 'TandE']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123033">>}],
   {133,8}
   ]
}.  

{2097, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"5811">>,<<"5812">>,<<"5813">>,<<"5814">>]}, 
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase, 'TandE']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123034">>}],
   {125,8}
   ]
}.  

{2098, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"5811">>,<<"5812">>,<<"5813">>,<<"5814">>]}, 
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase, 'TandE']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123035">>}],
   {131,8}
   ]
}.  

{2099, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"5811">>,<<"5812">>,<<"5813">>,<<"5814">>]}, 
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase, 'TandE']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123036">>}],
   {134,8}
   ]
}.  

{2100, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123008">>}],
   {136,8}
   ]
}.  


{2101, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
 {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123033">>}],
   {136,8}
   ]
}.

{2102, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123034">>}],
   {136,8}
   ]
}.

{2103, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123035">>}],
   {136,8}
   ]
}.


{2104, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123036">>}],
   {136,8}
   ]
}.


{2105, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123037">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>}],
   {137,8}
   ]
}.  

{2106, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123038">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>}],
   {137,8}
   ]
}.  

{2107, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, in_list, [<<"1">>,<<"W">>,<<"X">>]},
   {se_ctx, se_data_elements, <<"AmountTransaction">>,  lt, 1000000},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123037">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>}],
   {138,8}
   ]
}.  

{2108, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, in_list, [<<"1">>,<<"W">>,<<"X">>]},
   {se_ctx, se_data_elements, <<"AmountTransaction">>,  lt, 1000000},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123038">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>}],
   {138,8}
   ]
}.  

{2109, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, in_list, [<<"1">>,<<"W">>,<<"X">>]},
   {se_ctx, se_data_elements, <<"AmountTransaction">>,  in_range, {1000001 ,2500000}},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123037">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>}],
   {139,8}
   ]
}.  

{2110, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, in_list, [<<"1">>,<<"W">>,<<"X">>]},
   {se_ctx, se_data_elements, <<"AmountTransaction">>,  in_range, {1000001,2500000}},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123038">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>}],
   {139,8}
   ]
}.  

{2111, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, in_list, [<<"1">>,<<"W">>,<<"X">>]},
   {se_ctx, se_data_elements, <<"AmountTransaction">>, in_range, {2500001,10000000}},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123037">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>}],
   {140,8}
   ]
}.  


{2112, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, in_list, [<<"1">>,<<"W">>,<<"X">>]},
   {se_ctx, se_data_elements, <<"AmountTransaction">>,  in_range, {2500001,10000000}},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123038">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>}],
   {140,8}
   ]
}.  


{2113, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, in_list, [<<"1">>,<<"W">>,<<"X">>]},
   {se_ctx, se_data_elements, <<"AmountTransaction">>,  in_range, {10000001,50000000}},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123037">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>}],
   {141,8}
   ]
}.  




{2114, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, in_list, [<<"1">>,<<"W">>,<<"X">>]},
   {se_ctx, se_data_elements, <<"AmountTransaction">>,  in_range, {10000001,50000000}},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123038">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>}],
   {141,8}
   ]
}.  

{2115, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, in_list, [<<"1">>,<<"W">>,<<"X">>]},
   {se_ctx, se_data_elements, <<"AmountTransaction">>, in_range, {50000000,899999999999}},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123037">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>}],
   {142,8}
   ]
}.  


{2116, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, in_list, [<<"1">>,<<"W">>,<<"X">>]},
   {se_ctx, se_data_elements, <<"AmountTransaction">>,  in_range, {50000000,899999999999}},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123038">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>}],
   {142,8}
   ]
}.  


{2117, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, equals, <<"4789">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase, 'TandE']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123037">>}],
   {143,8}
   ]
}.  

{2118, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, equals, <<"4789">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase, 'TandE']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123038">>}],
   {143,8}
   ]
}.  


{2119, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123037">>}],
   {144,8}
   ]
}.  

{2120, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123038">>}],
   {144,8}
   ]
}.  


{2121, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"AmountTransaction">>, in_range, {900000000000,999999999998}},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase]},
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, in_list, [<<"1">>,<<"W">>,<<"X">>]},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123037">>}],
   {145,8}
   ]
}. 


{2122, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"AmountTransaction">>, in_range, {900000000000,999999999998}},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase]},
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, in_list, [<<"1">>,<<"W">>,<<"X">>]},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123038">>}],
   {145,8}
   ]
}. 

{2123, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123004">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>}],
   {114,8}
   ]
}. 

{2124, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123031">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>}],
   {114,8}
   ]
}. 

{2125, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123032">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>}],
   {114,8}
   ]
}. 

{2126, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123016">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>}],
   {114,8}
   ]
}. 

{2127, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123017">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>}],
   {102,8}
   ]
}. 
 
{2128, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123005">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>}],
   {102,8}
   ]
}. 

{2129, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, in_list, [<<"1">>,<<"W">>,<<"X">>]},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123004">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>}],
   {146,8}
   ]
}. 

{2130, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123031">>},
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, in_list, [<<"1">>,<<"W">>,<<"X">>]},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>}],
   {146,8}
   ]
}. 

{2131, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, in_list, [<<"1">>,<<"W">>,<<"X">>]},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123032">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>}],
   {146,8}
   ]
}. 

{2132, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, in_list, [<<"1">>,<<"W">>,<<"X">>]},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123016">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>}],
   {146,8}
   ]
}. 

{2133, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, in_list, [<<"1">>,<<"W">>,<<"X">>]},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123017">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>}],
   {102,8}
   ]
}. 

{2134, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, in_list, [<<"1">>,<<"W">>,<<"X">>]},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123005">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>}],
   {102,8}
   ]
}. 
 

{2135, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123004">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>}],
   {143,8}
   ]
}. 

{2136, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123031">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>}],
   {143,8}
   ]
}. 

{2137, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123032">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>}],
   {143,8}
   ]
}. 

{2138, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123016">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>}],
   {143,8}
   ]
}. 

{2139, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123017">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>}],
   {102,8}
   ]
}. 

{2140, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123005">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>}],
   {102,8}
   ]
}. 


{2141, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"AmountTransaction">>, in_range, {900000000000,999999999998}},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase]},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123004">>}],
   {145,8}
   ]
}. 


{2142, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"AmountTransaction">>, in_range, {900000000000,999999999998}},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase]},
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"1">>},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123032">>}],
   {145,8}
   ]
}. 
{2143, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"AmountTransaction">>, in_range, {900000000000,999999999998}},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase]},
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"1">>},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123016">>}],
   {145,8}
   ]
}.

{2144, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"AmountTransaction">>, in_range, {900000000000,999999999998}},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase]},
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"1">>},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123017">>}],
   {102,8}
   ]
}. 

{2145, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"AmountTransaction">>, in_range, {900000000000,999999999998}},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase]},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123005">>}],
   {102,8}
   ]
}. 



{2146, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, equals, <<"4900">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123004">>}],
   {147,8}
   ]
}.  

{2147, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, equals, <<"4900">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123031">>}],
   {147,8}
   ]
}.  
{2148, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, equals, <<"4900">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123032">>}],
   {147,8}
   ]
}.  


{2149, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, equals, <<"4900">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123017">>}],
   {102,8}
   ]
}.  

{2150, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, equals, <<"4900">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123005">>}],
   {102,8}
   ]
}.  


{2151, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"5200">>, <<"5211">>, <<"5231">>,<<"5251">>,<<"5261">>,<<"5271">>,<<"5300">>,<<"5309">>, <<"5310">>, <<"5311">>, <<"5331">>, <<"5399">>, <<"5411">>, <<"5422">>, <<"5441">>,<<"5422">>,<<"5451">>, <<"5462">>, <<"5499">>, <<"5999">>]}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase]},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123018">>}],
   {148,8}
   ]
}. 
 
 {2152, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"5200">>, <<"5211">>, <<"5231">>,<<"5251">>,<<"5261">>,<<"5271">>,<<"5300">>,<<"5309">>, <<"5310">>, <<"5311">>, <<"5331">>, <<"5399">>, <<"5411">>, <<"5422">>, <<"5441">>,<<"5422">>,<<"5451">>, <<"5462">>, <<"5499">>, <<"5999">>]}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase]},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123019">>}],
   {133,8}
   ]
}. 
 
 {2153, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"5200">>, <<"5211">>, <<"5231">>,<<"5251">>,<<"5261">>,<<"5271">>,<<"5300">>,<<"5309">>, <<"5310">>, <<"5311">>, <<"5331">>, <<"5399">>, <<"5411">>, <<"5422">>, <<"5441">>,<<"5422">>,<<"5451">>, <<"5462">>, <<"5499">>, <<"5999">>]}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase]},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123020">>}],
   {149,8}
   ]
}. 
 

{2154, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"5200">>, <<"5211">>, <<"5231">>,<<"5251">>,<<"5261">>,<<"5271">>,<<"5300">>,<<"5309">>, <<"5310">>, <<"5311">>, <<"5331">>, <<"5399">>, <<"5411">>, <<"5422">>, <<"5441">>,<<"5422">>,<<"5451">>, <<"5462">>, <<"5499">>, <<"5999">>]}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase]},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123021">>}],
   {137,8}
   ]
}. 
 

{2155, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123018">>}],
   {150,8}
   ]
}.  

{2156, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123019">>}],
   {151,8}
   ]
}.  

{2157, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123020">>}],
   {152,8}
   ]
}.  

{2158, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123021">>}],
   {153,8}
   ]
}.  


{2159, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123018">>}],
   {154,8}
   ]
}.  


{2160, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123019">>}],
   {154,8}
   ]
}.  

{2161, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123020">>}],
   {154,8}
   ]
}.  


{2162, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123021">>}],
   {154,8}
   ]
}.  

{2163, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, equals, <<"4900">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123018">>}],
   {147,8}
   ]
}. 

{2164, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, equals, <<"4900">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123019">>}],
   {147,8}
   ]
}. 

{2165, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, equals, <<"4900">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123020">>}],
   {147,8}
   ]
}. 

{2166, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, equals, <<"4900">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123021">>}],
   {147,8}
   ]
}. 

{2167, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"1">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123022">>}],
   {135,8}
   ]
}.  

{2168, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"1">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123023">>}],
   {102,8}
   ]
}.  

{2169, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123022">>}],
   {155,8}
   ]
}.  

{2170, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123023">>}],
   {102,8}
   ]
}.  

{2171, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123022">>}],
   {144,8}
   ]
}.  

{2172, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123023">>}],
   {102,8}
   ]
}.  

{2173, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, equals, <<"4900">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123022">>}],
   {147,8}
   ]
}. 

{2174, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, equals, <<"4900">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123023">>}],
   {102,8}
   ]
}. 




{2175, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"0A0F01">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123024">>}],
   {102,8}
   ]
}.  

{2176, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"0A0F01">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123025">>}],
   {102,8}
   ]
}.  

{2177, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"0A0F01">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123026">>}],
   {102,8}
   ]
}.  

{2178, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"0A0F01">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123028">>}],
   {102,8}
   ]
}.  

{2179, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"0A0F01">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123029">>}],
   {102,8}
   ]
}.  

{2180, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"0A0F01">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123030">>}],
   {102,8}
   ]
}.  

  

{2181, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"0A0F01">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123040">>}],
   {102,8}
   ]
}.  

{2182, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123024">>}],
   {156,8}
   ]
}.  


{2183, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123025">>}],
   {156,8}
   ]
}.  

{2184, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123026">>}],
   {156,8}
   ]
}.  

 

{2185, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123028">>}],
   {157,8}
   ]
}.  


{2186, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123029">>}],
   {157,8}
   ]
}.  

{2187, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123030">>}],
   {158,8}
   ]
}.  



{2188, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, ['ECOM']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123040">>}],
   {159,8}
   ]
}.  

{2189, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123024">>}],
   {160,8}
   ]
}.  

{2190, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123025">>}],
   {160,8}
   ]
}. 

{2191, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123026">>}],
   {160,8}
   ]
}. 



{2192, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123028">>}],
   {157,8}
   ]
}. 

{2193, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123029">>}],
   {157,8}
   ]
}. 

{2194, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123030">>}],
   {158,8}
   ]
}. 




{2195, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"PosDataCodeCardPresent">>, equals, <<"0">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123040">>}],
   {159,8}
   ]
}. 


{2196, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
 {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, equals, <<"6011">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>}],
   {161,8}
   ]
}.  

{2197, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
 {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, equals, <<"6010">>},
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>}],
   {162,8}
   ]
}. 


{2198, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"ProcessingCodeTranType">>, in_list, [<<"1">>,<<"01">>,<<"0">>]},
   {se_ctx, se_data_elements, <<"ResponseCode">>, not_in_list, [<<"0">>, <<"951">>]},
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, equals, <<"6011">>}],
   {163,8}
   ]
}.




























































