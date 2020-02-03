%{feeRuleID, [[Source, Element, Tag, Operator,Value],{feeRateID,debitcreditID}]}. 

{1901, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"5411">>, <<"9751">>]}, 
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
   {se_ctx, se_data_elements, <<"Amount">>,  lt, <<"10000">>},
   {se_ctx, se_resolved_event_code, na,  equals, stip_approved},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase]},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123004">>}],
   {105,8}
   ]
}. 



{1910,
[ 
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"Amount">>, lt, <<"10000">>},
   {se_ctx, se_resolved_event_code, na,  equals, stip_approved},
   {se_ctx, se_txn_tuple, resolved_tuple , is_superset, [purchase]},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123005">>}],
   {102,8}
   ]
}.  

{1911, 
[
   [{se_ctx, se_header, <<"NetworkID">>, equals, <<"1">>}, 
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"5811">>,<<"5812">>,<<"5813">>,<<"5814">>]}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
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
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"5200">>, <<"5211">>, <<"5231">>, <<"5251">>, <<"5261">>, <<"5271">>, <<"5300">>, <<"5309">>, <<"5310">>, <<"5311">>, <<"5331">>, <<"5399">>, <<"5411">>, <<"5422">>, <<"5441">>, <<"5451">>, <<"5462">>, <<"5499">>, <<"5999">>]}, 
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
   {se_ctx, se_data_elements, <<"MerchantCategoryCode">>, in_list, [<<"5200">>, <<"5211">>, <<"5231">>, <<"5251">>, <<"5261">>, <<"5271">>, <<"5300">>, <<"5309">>, <<"5310">>, <<"5311">>, <<"5331">>, <<"5399">>, <<"5411">>, <<"5422">>, <<"5441">>, <<"5451">>, <<"5462">>, <<"5499">>, <<"5999">>]}, 
   {se_ctx, se_data_elements, <<"ResponseCode">>, equals, <<"0">>},
   {se_ctx, se_txn_tuple, resolved_tuple, is_superset, [purchase, 'KEYENTRY']},
   {se_ctx, se_data_elements, <<"BusinessZoneCode">>, equals, <<"356001">>},
   {se_ctx, se_member_profile, <<"CardProductId">>, equals, <<"123005">>}],
   {102,8}
   ]
}.  




