{txn_rules_map,
#{
purchase_auth_req => #{{<<"1">>,chippos}=>
                       [
                       {must_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>, <<"PinData">>, <<"SecurityTechnique">>]},
                       {must_fld_val,[
                         {<<"PosDataCodeInputCapability">>, [<<"5">>]}, {<<"PosDataCodeAuthenticationCapability">>, [<<"1">>]}, {<<"PosDataCodeOperatingEnvironment">>, [<<"1">>, <<"2">>, <<"3">>, <<"4">>, <<"5">>, <<"T">>]},
                         {<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}, {<<"PosDataCodeCardDataInputMode">>, [<<"5">>]}, {<<"PosDataCodeAuthenticationMethod">>, [<<"1">>]}, {<<"PosDataCodeOutputCapability">>, [<<"3">>]}
                         ]
                       },
                       {must_not_fld_val,[{<<"MerchantCategoryCode">>,[<<"6010">>,<<"6011">>]}]}
                       ],

                         {<<"2">>,chipposfallback}=>
                       [
                       {must_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>, <<"PinData">>, <<"SecurityTechnique">>]},
                       {must_fld_val,[
                         {<<"PosDataCodeInputCapability">>, [<<"5">>]}, {<<"PosDataCodeAuthenticationCapability">>, [<<"1">>]}, {<<"PosDataCodeOperatingEnvironment">>, [<<"1">>, <<"2">>, <<"3">>, <<"4">>, <<"5">>, <<"T">>]},
                         {<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}, {<<"PosDataCodeCardDataInputMode">>, [<<"9">>]}, {<<"PosDataCodeAuthenticationMethod">>, [<<"1">>]}, {<<"PosDataCodeOutputCapability">>, [<<"3">>]}
                         ]
                       },
                       {must_not_fld_val,[{<<"MerchantCategoryCode">>,[<<"6010">>,<<"6011">>]}]}
                       ],

                         {<<"3">>,ecom}=>
                       [
                       {must_fld,[<<"CVD2Value">>, <<"SecurityTechnique">>]},
                       {must_fld_val,
                         [
                         {<<"PosDataCodeOperatingEnvironment">>, [<<"S">>]}, {<<"PosDataCodeCardholderPresent">>, [<<"S">>]},
                         {<<"PosDataCodeCardPresent">>, [<<"0">>]},
                         {<<"PosDataCodeCardDataInputMode">>, [<<"0">>, <<"1">>]},
                         {<<"PosDataCodeAuthenticationMethod">>, [<<"0">>, <<"S">>]}
                         ]
                       },
                       {must_not_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>]}
                       ],

                         {<<"4">>,pospin}=>
                       [
                       {must_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>, <<"PinData">>, <<"SecurityTechnique">>]},
                       {must_fld_val,
                         [
                         {<<"PosDataCodeInputCapability">>, [<<"0">>, <<"2">>, <<"5">>]}, {<<"PosDataCodeOperatingEnvironment">>, [<<"1">>, <<"2">>, <<"3">>, <<"4">>, <<"5">>, <<"T">>]},
                         {<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}
                         ]
                       },
                       {must_not_fld_val,[{<<"MerchantCategoryCode">>,[<<"6010">>,<<"6011">>]}]}
                       ],

                         {<<"5">>,pospur}=>
                       [
                       {must_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>, <<"SecurityTechnique">>]},
                       {must_fld_val,
                         [
                         {<<"PosDataCodeInputCapability">>, [<<"0">>, <<"2">>]}, {<<"PosDataCodeOperatingEnvironment">>, [<<"1">>, <<"2">>, <<"3">>, <<"4">>, <<"5">>, <<"T">>]},
                         {<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}, {<<"PosDataCodeCardDataInputMode">>, [<<"0">>, <<"2">>]}, {<<"PosDataCodeAuthenticationMethod">>, [<<"0">>, <<"5">>]}
                         ]
                       },
                       {must_not_fld_val,[{<<"MerchantCategoryCode">>,[<<"6010">>,<<"6011">>]}]}
                       ],

                         {<<"6">>,pospurcp}=>
                       [
                       {must_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>,<<"PinData">>, <<"SecurityTechnique">>]},
                       {must_fld_val,
                         [
                          {<<"PosDataCodeCardPresent">>, [<<"1">>,<<"W">>,<<"X">>]}
                         ]
                       },
                       {must_not_fld_val,[{<<"MerchantCategoryCode">>,[<<"6010">>,<<"6011">>]}]}
                       ],

{<<"7">>,pospurcnp}=>
                       [
                       {must_not_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>,<<"PinData">>, <<"SecurityTechnique">>]},
                       {must_fld_val,
                         [
                          {<<"PosDataCodeCardPresent">>, [<<"0">>]}
                         ]
                       },
                       {must_not_fld_val,[{<<"MerchantCategoryCode">>,[<<"6010">>,<<"6011">>]}]}
                       ],

                       {<<"8">>,recur}=>
                       [
                       {must_fld_val,
                         [
                         {<<"PosDataCodeCardholderPresent">>, [<<"9">>]}, {<<"PosDataCodeCardPresent">>, [<<"0">>]},
                         {<<"PosDataCodeCardDataInputMode">>, [<<"1">>]}
                         ]
                       }
                       ],

                       {<<"9">>,nfcpur}=>
                       [
                       {must_fld_val,
                         [
                         {<<"PosDataCodeInputCapability">>, [<<"0">>, <<"2">>]},
                         {<<"PosDataCodeOperatingEnvironment">>, [<<"1">>, <<"2">>, <<"3">>, <<"4">>, <<"5">>, <<"T">>]},
                         {<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"X">>]}
                         ]
                       }
                       ],

                         {<<"10">>,acvs}=>
                       [
                       {must_fld,[f123p,<<"CVD2Value">>, <<"SecurityTechnique">>]},
                       {must_fld_val,
                         [
                         {<<"PosDataCodeCardDataInputMode">>, [<<"2">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}
                         ]
                       },
                       {must_not_fld_val,[{<<"MerchantCategoryCode">>,[<<"6010">>,<<"6011">>,<<"4829">>,<<"6051">>,<<"7995">>]}]}
                       ],

                         {<<"11">>,avs}=>
                       [
                       {must_fld,[f123p]},
                       {must_fld_val,
                         [
                         {<<"PosDataCodeCardDataInputMode">>, [<<"2">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}
                         ]
                       }
                       ],
  {<<"12">>,moto}=>
  [
  {must_not_fld,[f123p,<<"PinData">>,<<"SecurityTechnique">>,<<"PinType">>,<<"AlgorithmIdentifier">>, <<"PinBlockFormatCode">>, <<"KeyIndex">> ]},
  {must_fld_val,
    [
    {<<"PosDataCodeInputCapability">>, [<<"0">>, <<"1">>, <<"6">>]},
    {<<"PosDataCodeCardholderPresent">>, [<<"2">>,<<"3">>]},
    {<<"PosDataCodeCardPresent">>, [<<"0">>]},
    {<<"PosDataCodeCardDataInputMode">>, [<<"1">>]}
    ]
  }
  %%%{must_fld_val,[{<<"MerchantCategoryCode">>,[]}]}
  ]


                     },
cash_auth_req => #{
                   {<<"1">>,chipatm} =>
                   [
                   {must_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>, <<"PinData">>, <<"SecurityTechnique">>]},
                   {must_fld_val,[
                     {<<"MerchantCategoryCode">>,[<<"6011">>]},
                     {<<"PosDataCodeInputCapability">>, [<<"5">>]}, {<<"PosDataCodeAuthenticationCapability">>, [<<"1">>]}, {<<"PosDataCodeOperatingEnvironment">>, [<<"1">>,<<"5">>]},
                     {<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}, {<<"PosDataCodeCardDataInputMode">>, [<<"5">>]}, {<<"PosDataCodeAuthenticationMethod">>, [<<"1">>]}, {<<"PosDataCodeOutputCapability">>, [<<"3">>]}
                     ]
                   }

                   ],
                     {<<"2">>,chipatmfallback} =>
                   [
                   {must_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>, <<"PinData">>, <<"SecurityTechnique">>]},
                   {must_fld_val,[
                     {<<"MerchantCategoryCode">>,[<<"6011">>]},
                     {<<"PosDataCodeInputCapability">>, [<<"5">>]}, {<<"PosDataCodeAuthenticationCapability">>, [<<"1">>]}, {<<"PosDataCodeOperatingEnvironment">>, [<<"1">>, <<"5">>]},
                     {<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}, {<<"PosDataCodeCardDataInputMode">>, [<<"9">>]}, {<<"PosDataCodeAuthenticationMethod">>, [<<"1">>]}, {<<"PosDataCodeOutputCapability">>, [<<"3">>]}
                     ]
                   }
                   ],
                     {<<"3">>,atmpin} =>
                   [
                   {must_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>, <<"PinData">>, <<"SecurityTechnique">>]},
                   {must_fld_val,[
                     {<<"MerchantCategoryCode">>,[<<"6011">>]},
                     {<<"PosDataCodeInputCapability">>, [<<"2">>]}, {<<"PosDataCodeAuthenticationCapability">>, [<<"1">>]}, {<<"PosDataCodeOperatingEnvironment">>, [<<"1">>, <<"5">>]},
                     {<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}, {<<"PosDataCodeCardDataInputMode">>, [<<"2">>]}, {<<"PosDataCodeAuthenticationMethod">>, [<<"1">>]}
                     ]
                   }
                   ],
                     {<<"4">>, manualcash}=>
                   [
                   {must_not_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>, <<"PinData">>, <<"SecurityTechnique">>]},
                   {must_fld_val,[
                     {<<"MerchantCategoryCode">>,[<<"6010">>]},
                     {<<"PosDataCodeInputCapability">>, [<<"1">>]},
                     {<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"0">>]}, {<<"PosDataCodeCardDataInputMode">>, [<<"1">>]}, {<<"PosDataCodeAuthenticationMethod">>, [<<"0">>]}
                     ]
                   }
                   ]
                 },
purchase_auth_resp => #{{<<"1">>,dummyrule} => []},
cash_auth_resp => #{{<<"1">>,dummyrule} => []},
purchase_resp => #{{<<"1">>,dummyrule} => []},
cash_resp => #{{<<"1">>,dummyrule} => []},
purchase_reversal_adv_req => #{{<<"1">>,dummyrule} => []},
cash_reversal_adv_req => #{{<<"1">>,dummyrule} => []},
purchase_reversal_adv_repeat_req => #{{<<"1">>,dummyrule} => []},
cash_reversal_adv_repeat_req => #{{<<"1">>,dummyrule} => []},
  purchase_req =>
#{{<<"1">>,chippos}=>
  [
  {must_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>, <<"PinData">>, <<"SecurityTechnique">>]},
  {must_fld_val,[
    {<<"PosDataCodeInputCapability">>, [<<"5">>]}, {<<"PosDataCodeAuthenticationCapability">>, [<<"1">>]}, {<<"PosDataCodeOperatingEnvironment">>, [<<"1">>, <<"2">>, <<"3">>, <<"4">>, <<"5">>, <<"T">>]},
    {<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}, {<<"PosDataCodeCardDataInputMode">>, [<<"5">>]}, {<<"PosDataCodeAuthenticationMethod">>, [<<"1">>]}, {<<"PosDataCodeOutputCapability">>, [<<"3">>]}
    ]
  },
  {must_not_fld_val,[{<<"MerchantCategoryCode">>,[<<"6010">>,<<"6011">>]}]}
  ],

    {<<"2">>,chipposfallback}=>
  [
  {must_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>, <<"PinData">>, <<"SecurityTechnique">>]},
  {must_fld_val,[
    {<<"PosDataCodeInputCapability">>, [<<"5">>]}, {<<"PosDataCodeAuthenticationCapability">>, [<<"1">>]}, {<<"PosDataCodeOperatingEnvironment">>, [<<"1">>, <<"2">>, <<"3">>, <<"4">>, <<"5">>, <<"T">>]},
    {<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}, {<<"PosDataCodeCardDataInputMode">>, [<<"9">>]}, {<<"PosDataCodeAuthenticationMethod">>, [<<"1">>]}, {<<"PosDataCodeOutputCapability">>, [<<"3">>]}
    ]
  },
  {must_not_fld_val,[{<<"MerchantCategoryCode">>,[<<"6010">>,<<"6011">>]}]}
  ],

    {<<"3">>,ecom}=>
  [
  {must_fld,[<<"CVD2Value">>, <<"SecurityTechnique">>]},
  {must_fld_val,
    [
    {<<"PosDataCodeOperatingEnvironment">>, [<<"S">>]}, {<<"PosDataCodeCardholderPresent">>, [<<"S">>]},
    {<<"PosDataCodeCardPresent">>, [<<"0">>]},
    {<<"PosDataCodeCardDataInputMode">>, [<<"0">>, <<"1">>]},
    {<<"PosDataCodeAuthenticationMethod">>, [<<"0">>, <<"S">>]}
    ]
  },
  {must_not_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>]}
  ],

    {<<"4">>,pospin}=>
  [
  {must_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>, <<"PinData">>, <<"SecurityTechnique">>]},
  {must_fld_val,
    [
    {<<"PosDataCodeInputCapability">>, [<<"0">>, <<"2">>, <<"5">>]}, {<<"PosDataCodeOperatingEnvironment">>, [<<"1">>, <<"2">>, <<"3">>, <<"4">>, <<"5">>, <<"T">>]},
    {<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}
    ]
  },
  {must_not_fld_val,[{<<"MerchantCategoryCode">>,[<<"6010">>,<<"6011">>]}]}
  ],

    {<<"5">>,pospur}=>
  [
  {must_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>, <<"SecurityTechnique">>]},
  {must_fld_val,
    [
    {<<"PosDataCodeInputCapability">>, [<<"0">>, <<"2">>]}, {<<"PosDataCodeOperatingEnvironment">>, [<<"1">>, <<"2">>, <<"3">>, <<"4">>, <<"5">>, <<"T">>]},
    {<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}, {<<"PosDataCodeCardDataInputMode">>, [<<"0">>, <<"2">>]}, {<<"PosDataCodeAuthenticationMethod">>, [<<"0">>, <<"5">>]}
    ]
  },
  {must_not_fld_val,[{<<"MerchantCategoryCode">>,[<<"6010">>,<<"6011">>]}]}
  ],
                         {<<"6">>,pospurcp}=>
                       [
                       {must_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>,<<"PinData">>, <<"SecurityTechnique">>]},
                       {must_fld_val,
                         [
                          {<<"PosDataCodeCardPresent">>, [<<"1">>,<<"W">>,<<"X">>]}
                         ]
                       },
                       {must_not_fld_val,[{<<"MerchantCategoryCode">>,[<<"6010">>,<<"6011">>]}]}
                       ],

{<<"7">>,pospurcnp}=>
                       [
                       {must_not_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>,<<"PinData">>, <<"SecurityTechnique">>]},
                       {must_fld_val,
                         [
                          {<<"PosDataCodeCardPresent">>, [<<"0">>]}
                         ]
                       },
                       {must_not_fld_val,[{<<"MerchantCategoryCode">>,[<<"6010">>,<<"6011">>]}]}
                       ],


  {<<"8">>,recur}=>
  [
  {must_fld_val,
    [
    {<<"PosDataCodeCardholderPresent">>, [<<"9">>]}, {<<"PosDataCodeCardPresent">>, [<<"0">>]},
    {<<"PosDataCodeCardDataInputMode">>, [<<"1">>]}
    ]
  }
  ],

  {<<"9">>,nfcpur}=>
  [
  {must_fld_val,
    [
    {<<"PosDataCodeInputCapability">>, [<<"0">>, <<"2">>]},
    {<<"PosDataCodeOperatingEnvironment">>, [<<"1">>, <<"2">>, <<"3">>, <<"4">>, <<"5">>, <<"T">>]},
    {<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"X">>]}
    ]
  }
  ],

    {<<"10">>,acvs}=>
  [
  {must_fld,[f123p,<<"CVD2Value">>, <<"SecurityTechnique">>]},
  {must_fld_val,
    [
    {<<"PosDataCodeCardDataInputMode">>, [<<"2">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}
    ]
  },
  {must_not_fld_val,[{<<"MerchantCategoryCode">>,[<<"6010">>,<<"6011">>,<<"4829">>,<<"6051">>,<<"7995">>]}]}
  ],

    {<<"11">>,avs}=>
  [
  {must_fld,[f123p]},
  {must_fld_val,
    [
    {<<"PosDataCodeCardDataInputMode">>, [<<"2">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}
    ]
  }
  ],

  {<<"12">>,moto}=>
  [
  {must_not_fld,[f123p,<<"PinData">>,<<"SecurityTechnique">>,<<"PinType">>,<<"AlgorithmIdentifier">>, <<"PinBlockFormatCode">>, <<"KeyIndex">> ]},
  {must_fld_val,
    [
    {<<"PosDataCodeInputCapability">>, [<<"0">>, <<"1">>, <<"6">>]},
    {<<"PosDataCodeCardholderPresent">>, [<<"2">>,<<"3">>]},
    {<<"PosDataCodeCardPresent">>, [<<"0">>]},
    {<<"PosDataCodeCardDataInputMode">>, [<<"1">>]}
    ]
  }
  %%%{must_fld_val,[{<<"MerchantCategoryCode">>,[]}]}
  ]

},
cash_req =>
#{
  {<<"1">>,chipatm} =>
  [
  {must_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>, <<"PinData">>, <<"SecurityTechnique">>]},
  {must_fld_val,[
    {<<"MerchantCategoryCode">>,[<<"6011">>]},
    {<<"PosDataCodeInputCapability">>, [<<"5">>]}, {<<"PosDataCodeAuthenticationCapability">>, [<<"1">>]}, {<<"PosDataCodeOperatingEnvironment">>, [<<"1">>,<<"5">>]},
    {<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}, {<<"PosDataCodeCardDataInputMode">>, [<<"5">>]}, {<<"PosDataCodeAuthenticationMethod">>, [<<"1">>]}, {<<"PosDataCodeOutputCapability">>, [<<"3">>]}
    ]
  }

  ],
    {<<"2">>,chipatmfallback} =>
  [
  {must_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>, <<"PinData">>, <<"SecurityTechnique">>]},
  {must_fld_val,[
    {<<"MerchantCategoryCode">>,[<<"6011">>]},
    {<<"PosDataCodeInputCapability">>, [<<"5">>]}, {<<"PosDataCodeAuthenticationCapability">>, [<<"1">>]}, {<<"PosDataCodeOperatingEnvironment">>, [<<"1">>, <<"5">>]},
    {<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}, {<<"PosDataCodeCardDataInputMode">>, [<<"9">>]}, {<<"PosDataCodeAuthenticationMethod">>, [<<"1">>]}, {<<"PosDataCodeOutputCapability">>, [<<"3">>]}
    ]
  }
  ],
    {<<"3">>,atmpin} =>
  [
  {must_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>, <<"PinData">>, <<"SecurityTechnique">>]},
  {must_fld_val,[
    {<<"MerchantCategoryCode">>,[<<"6011">>]},
    {<<"PosDataCodeInputCapability">>, [<<"2">>]}, {<<"PosDataCodeAuthenticationCapability">>, [<<"1">>]}, {<<"PosDataCodeOperatingEnvironment">>, [<<"1">>, <<"5">>]},
    {<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}, {<<"PosDataCodeCardDataInputMode">>, [<<"2">>]}, {<<"PosDataCodeAuthenticationMethod">>, [<<"1">>]}
    ]
  }
  ],
    {<<"4">>, manualcash}=>
  [
  {must_not_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>, <<"PinData">>, <<"SecurityTechnique">>]},
  {must_fld_val,[
    {<<"MerchantCategoryCode">>,[<<"6010">>]},
    {<<"PosDataCodeInputCapability">>, [<<"1">>]},
    {<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"0">>]}, {<<"PosDataCodeCardDataInputMode">>, [<<"1">>]}, {<<"PosDataCodeAuthenticationMethod">>, [<<"0">>]}
    ]
  }
  ]
},

cash_adv_req =>
#{
  {<<"1">>,chipatm} =>
  [
  {must_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>, <<"PinData">>, <<"SecurityTechnique">>]},
  {must_fld_val,[
    {<<"MerchantCategoryCode">>,[<<"6011">>]},
    {<<"PosDataCodeInputCapability">>, [<<"5">>]}, {<<"PosDataCodeAuthenticationCapability">>, [<<"1">>]}, {<<"PosDataCodeOperatingEnvironment">>, [<<"1">>,<<"5">>]},
    {<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}, {<<"PosDataCodeCardDataInputMode">>, [<<"5">>]}, {<<"PosDataCodeAuthenticationMethod">>, [<<"1">>]}, {<<"PosDataCodeOutputCapability">>, [<<"3">>]}
    ]
  }

  ],
    {<<"2">>,chipatmfallback} =>
  [
  {must_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>, <<"PinData">>, <<"SecurityTechnique">>]},
  {must_fld_val,[
    {<<"MerchantCategoryCode">>,[<<"6011">>]},
    {<<"PosDataCodeInputCapability">>, [<<"5">>]}, {<<"PosDataCodeAuthenticationCapability">>, [<<"1">>]}, {<<"PosDataCodeOperatingEnvironment">>, [<<"1">>, <<"5">>]},
    {<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}, {<<"PosDataCodeCardDataInputMode">>, [<<"9">>]}, {<<"PosDataCodeAuthenticationMethod">>, [<<"1">>]}, {<<"PosDataCodeOutputCapability">>, [<<"3">>]}
    ]
  }
  ],
    {<<"3">>,atmpin} =>
  [
  {must_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>, <<"PinData">>, <<"SecurityTechnique">>]},
  {must_fld_val,[
    {<<"MerchantCategoryCode">>,[<<"6011">>]},
    {<<"PosDataCodeInputCapability">>, [<<"2">>]}, {<<"PosDataCodeAuthenticationCapability">>, [<<"1">>]}, {<<"PosDataCodeOperatingEnvironment">>, [<<"1">>, <<"5">>]},
    {<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}, {<<"PosDataCodeCardDataInputMode">>, [<<"2">>]}, {<<"PosDataCodeAuthenticationMethod">>, [<<"1">>]}
    ]
  }
  ],
    {<<"4">>, manualcash}=>
  [
  {must_not_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>, <<"PinData">>, <<"SecurityTechnique">>]},
  {must_fld_val,[
    {<<"MerchantCategoryCode">>,[<<"6010">>]},
    {<<"PosDataCodeInputCapability">>, [<<"1">>]},
    {<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"0">>]}, {<<"PosDataCodeCardDataInputMode">>, [<<"1">>]}, {<<"PosDataCodeAuthenticationMethod">>, [<<"0">>]}
    ]
  }
  ]
},

quasi_cash_req =>
#{
  {<<"1">>,qcash}=>
  [
  {must_not_fld,[<<"PinData">>, <<"SecurityTechnique">>]},
  {must_fld_val,[{<<"PosDataCodeAuthenticationMethod">>, [<<"0">>]}]},
  {must_not_fld_val,[{<<"MerchantCategoryCode">>,[<<"6010">>,<<"6011">>]}]}
  ]
},

account_verification_req =>
#{
  {<<"1">>,actvppi}=>
  [
  {must_fld_val,[{<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}, {<<"PosDataCodeCardDataInputMode">>, [<<"2">>]}, {<<"PosDataCodeAuthenticationMethod">>, [<<"0">>, <<"1">>, <<"5">>]}]}
  ]
},

original_credit_req =>
#{

  {<<"1">>,p2p} =>
  [
  {must_fld_val,[
    {<<"MerchantCategoryCode">>,[<<"4829">>,<<"6012">>]},
    {<<"PosDataCodeCardholderPresent">>, [<<"0">>, <<"1">>, <<"4">>]}
    ]
  }
  ]
},

balance_enquiry_req =>
#{
  {<<"1">>,balpos} =>
  [
  {must_fld,[<<"PinData">>, <<"SecurityTechnique">>]},
  {must_fld_val,[
    {<<"PosDataCodeInputCapability">>, [<<"0">>, <<"2">>, <<"5">>]}, {<<"PosDataCodeOperatingEnvironment">>, [<<"1">>, <<"2">>, <<"3">>, <<"4">>, <<"5">>]},
    {<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}, {<<"PosDataCodeCardDataInputMode">>, [<<"2">>, <<"5">>, <<"9">>]}, {<<"PosDataCodeAuthenticationMethod">>, [<<"0">>, <<"1">>, <<"5">>]}
    ]
  },
  {must_not_fld_val,[{<<"MerchantCategoryCode">>,[<<"6011">>]}]}

  ],

    {<<"2">>,balatm} =>
  [
  {must_fld,[<<"PinData">>, <<"SecurityTechnique">>]},
  {must_fld_val,[
    {<<"MerchantCategoryCode">>,[<<"6011">>]},
    {<<"PosDataCodeInputCapability">>, [<<"0">>, <<"2">>, <<"5">>]}, {<<"PosDataCodeOperatingEnvironment">>, [<<"1">>, <<"2">>, <<"5">>]},
    {<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"0">>]}, {<<"PosDataCodeCardDataInputMode">>, [<<"2">>, <<"5">>, <<"9">>]}, {<<"PosDataCodeAuthenticationMethod">>, [<<"0">>, <<"1">>, <<"5">>]}
    ]
  }
  ]
},

  purchase_adv_req =>
#{{<<"1">>,chippos}=>
  [
  {must_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>, <<"PinData">>, <<"SecurityTechnique">>]},
  {must_fld_val,[
    {<<"PosDataCodeInputCapability">>, [<<"5">>]}, {<<"PosDataCodeAuthenticationCapability">>, [<<"1">>]}, {<<"PosDataCodeOperatingEnvironment">>, [<<"1">>, <<"2">>, <<"3">>, <<"4">>, <<"5">>, <<"T">>]},
    {<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}, {<<"PosDataCodeCardDataInputMode">>, [<<"5">>]}, {<<"PosDataCodeAuthenticationMethod">>, [<<"1">>]}, {<<"PosDataCodeOutputCapability">>, [<<"3">>]}
    ]
  },
  {must_not_fld_val,[{<<"MerchantCategoryCode">>,[<<"6010">>,<<"6011">>]}]}
  ],

    {<<"2">>,chipposfallback}=>
  [
  {must_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>, <<"PinData">>, <<"SecurityTechnique">>]},
  {must_fld_val,[
    {<<"PosDataCodeInputCapability">>, [<<"5">>]}, {<<"PosDataCodeAuthenticationCapability">>, [<<"1">>]}, {<<"PosDataCodeOperatingEnvironment">>, [<<"1">>, <<"2">>, <<"3">>, <<"4">>, <<"5">>, <<"T">>]},
    {<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}, {<<"PosDataCodeCardDataInputMode">>, [<<"9">>]}, {<<"PosDataCodeAuthenticationMethod">>, [<<"1">>]}, {<<"PosDataCodeOutputCapability">>, [<<"3">>]}
    ]
  },
  {must_not_fld_val,[{<<"MerchantCategoryCode">>,[<<"6010">>,<<"6011">>]}]}
  ],

    {<<"3">>,ecom}=>
  [
  {must_fld,[<<"CVD2Value">>, <<"SecurityTechnique">>]},
  {must_fld_val,
    [
    {<<"PosDataCodeOperatingEnvironment">>, [<<"S">>]}, {<<"PosDataCodeCardholderPresent">>, [<<"S">>]},
    {<<"PosDataCodeCardPresent">>, [<<"0">>]},
    {<<"PosDataCodeCardDataInputMode">>, [<<"0">>, <<"1">>]},
    {<<"PosDataCodeAuthenticationMethod">>, [<<"0">>, <<"S">>]}
    ]
  },
  {must_not_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>]}
  ],

    {<<"4">>,pospin}=>
  [
  {must_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>, <<"PinData">>, <<"SecurityTechnique">>]},
  {must_fld_val,
    [
    {<<"PosDataCodeInputCapability">>, [<<"0">>, <<"2">>, <<"5">>]}, {<<"PosDataCodeOperatingEnvironment">>, [<<"1">>, <<"2">>, <<"3">>, <<"4">>, <<"5">>, <<"T">>]},
    {<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}
    ]
  },
  {must_not_fld_val,[{<<"MerchantCategoryCode">>,[<<"6010">>,<<"6011">>]}]}
  ],

    {<<"5">>,pospur}=>
  [
  {must_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>, <<"SecurityTechnique">>]},
  {must_fld_val,
    [
    {<<"PosDataCodeInputCapability">>, [<<"0">>, <<"2">>]}, {<<"PosDataCodeOperatingEnvironment">>, [<<"1">>, <<"2">>, <<"3">>, <<"4">>, <<"5">>, <<"T">>]},
    {<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}, {<<"PosDataCodeCardDataInputMode">>, [<<"0">>, <<"2">>]}, {<<"PosDataCodeAuthenticationMethod">>, [<<"0">>, <<"5">>]}
    ]
  },
  {must_not_fld_val,[{<<"MerchantCategoryCode">>,[<<"6010">>,<<"6011">>]}]}
  ],

  {<<"6">>,recur}=>
  [
  {must_fld_val,
    [
    {<<"PosDataCodeCardholderPresent">>, [<<"9">>]}, {<<"PosDataCodeCardPresent">>, [<<"0">>]},
    {<<"PosDataCodeCardDataInputMode">>, [<<"1">>]}
    ]
  }
  ],

  {<<"7">>,nfcpur}=>
  [
  {must_fld_val,
    [
    {<<"PosDataCodeInputCapability">>, [<<"0">>, <<"2">>]},
    {<<"PosDataCodeOperatingEnvironment">>, [<<"1">>, <<"2">>, <<"3">>, <<"4">>, <<"5">>, <<"T">>]},
    {<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"X">>]}
    ]
  }
  ],

    {<<"8">>,acvs}=>
  [
  {must_fld,[f123p,<<"CVD2Value">>, <<"SecurityTechnique">>]},
  {must_fld_val,
    [
    {<<"PosDataCodeCardDataInputMode">>, [<<"2">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}
    ]
  },
  {must_not_fld_val,[{<<"MerchantCategoryCode">>,[<<"6010">>,<<"6011">>,<<"4829">>,<<"6051">>,<<"7995">>]}]}
  ],

    {<<"9">>,avs}=>
  [
  {must_fld,[f123p]},
  {must_fld_val,
    [
    {<<"PosDataCodeCardDataInputMode">>, [<<"2">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}
    ]
  }
  ]

},

presentment_purchase =>
#{{<<"1">>,chippos}=>
  [
  {must_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>, <<"PinData">>, <<"SecurityTechnique">>]},
  {must_fld_val,[
    {<<"PosDataCodeInputCapability">>, [<<"5">>]}, {<<"PosDataCodeAuthenticationCapability">>, [<<"1">>]}, {<<"PosDataCodeOperatingEnvironment">>, [<<"1">>, <<"2">>, <<"3">>, <<"4">>, <<"5">>, <<"T">>]},
    {<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}, {<<"PosDataCodeCardDataInputMode">>, [<<"5">>]}, {<<"PosDataCodeAuthenticationMethod">>, [<<"1">>]}, {<<"PosDataCodeOutputCapability">>, [<<"3">>]}
    ]
  },
  {must_not_fld_val,[{<<"MerchantCategoryCode">>,[<<"6010">>,<<"6011">>]}]}
  ],

    {<<"2">>,chipposfallback}=>
  [
  {must_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>, <<"PinData">>, <<"SecurityTechnique">>]},
  {must_fld_val,[
    {<<"PosDataCodeInputCapability">>, [<<"5">>]}, {<<"PosDataCodeAuthenticationCapability">>, [<<"1">>]}, {<<"PosDataCodeOperatingEnvironment">>, [<<"1">>, <<"2">>, <<"3">>, <<"4">>, <<"5">>, <<"T">>]},
    {<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}, {<<"PosDataCodeCardDataInputMode">>, [<<"9">>]}, {<<"PosDataCodeAuthenticationMethod">>, [<<"1">>]}, {<<"PosDataCodeOutputCapability">>, [<<"3">>]}
    ]
  },
  {must_not_fld_val,[{<<"MerchantCategoryCode">>,[<<"6010">>,<<"6011">>]}]}
  ],

    {<<"3">>,ecom}=>
  [
  {must_fld,[<<"CVD2Value">>, <<"SecurityTechnique">>]},
  {must_fld_val,
    [
    {<<"PosDataCodeOperatingEnvironment">>, [<<"S">>]}, {<<"PosDataCodeCardholderPresent">>, [<<"S">>]},
    {<<"PosDataCodeCardPresent">>, [<<"0">>]},
    {<<"PosDataCodeCardDataInputMode">>, [<<"0">>, <<"1">>]},
    {<<"PosDataCodeAuthenticationMethod">>, [<<"0">>, <<"S">>]}
    ]
  },
  {must_not_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>]}
  ],

    {<<"4">>,pospin}=>
  [
  {must_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>, <<"PinData">>, <<"SecurityTechnique">>]},
  {must_fld_val,
    [
    {<<"PosDataCodeInputCapability">>, [<<"0">>, <<"2">>, <<"5">>]}, {<<"PosDataCodeOperatingEnvironment">>, [<<"1">>, <<"2">>, <<"3">>, <<"4">>, <<"5">>, <<"T">>]},
    {<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}
    ]
  },
  {must_not_fld_val,[{<<"MerchantCategoryCode">>,[<<"6010">>,<<"6011">>]}]}
  ],

    {<<"5">>,pospur}=>
  [
  {must_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>, <<"SecurityTechnique">>]},
  {must_fld_val,
    [
    {<<"PosDataCodeInputCapability">>, [<<"0">>, <<"2">>]}, {<<"PosDataCodeOperatingEnvironment">>, [<<"1">>, <<"2">>, <<"3">>, <<"4">>, <<"5">>, <<"T">>]},
    {<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}, {<<"PosDataCodeCardDataInputMode">>, [<<"0">>, <<"2">>]}, {<<"PosDataCodeAuthenticationMethod">>, [<<"0">>, <<"5">>]}
    ]
  },
  {must_not_fld_val,[{<<"MerchantCategoryCode">>,[<<"6010">>,<<"6011">>]}]}
  ],
                         {<<"6">>,pospurcp}=>
                       [
                       {must_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>,<<"PinData">>, <<"SecurityTechnique">>]},
                       {must_fld_val,
                         [
                          {<<"PosDataCodeCardPresent">>, [<<"1">>,<<"W">>,<<"X">>]}
                         ]
                       },
                       {must_not_fld_val,[{<<"MerchantCategoryCode">>,[<<"6010">>,<<"6011">>]}]}
                       ],

{<<"7">>,pospurcnp}=>
                       [
                       {must_not_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>,<<"PinData">>, <<"SecurityTechnique">>]},
                       {must_fld_val,
                         [
                          {<<"PosDataCodeCardPresent">>, [<<"0">>]}
                         ]
                       },
                       {must_not_fld_val,[{<<"MerchantCategoryCode">>,[<<"6010">>,<<"6011">>]}]}
                       ],


  {<<"8">>,recur}=>
  [
  {must_fld_val,
    [
    {<<"PosDataCodeCardholderPresent">>, [<<"9">>]}, {<<"PosDataCodeCardPresent">>, [<<"0">>]},
    {<<"PosDataCodeCardDataInputMode">>, [<<"1">>]}
    ]
  }
  ],

  {<<"9">>,nfcpur}=>
  [
  {must_fld_val,
    [
    {<<"PosDataCodeInputCapability">>, [<<"0">>, <<"2">>]},
    {<<"PosDataCodeOperatingEnvironment">>, [<<"1">>, <<"2">>, <<"3">>, <<"4">>, <<"5">>, <<"T">>]},
    {<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"X">>]}
    ]
  }
  ],

    {<<"10">>,acvs}=>
  [
  {must_fld,[f123p,<<"CVD2Value">>, <<"SecurityTechnique">>]},
  {must_fld_val,
    [
    {<<"PosDataCodeCardDataInputMode">>, [<<"2">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}
    ]
  },
  {must_not_fld_val,[{<<"MerchantCategoryCode">>,[<<"6010">>,<<"6011">>,<<"4829">>,<<"6051">>,<<"7995">>]}]}
  ],

    {<<"11">>,avs}=>
  [
  {must_fld,[f123p]},
  {must_fld_val,
    [
    {<<"PosDataCodeCardDataInputMode">>, [<<"2">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}
    ]
  }
  ],

  {<<"12">>,moto}=>
  [
  {must_not_fld,[f123p,<<"PinData">>,<<"SecurityTechnique">>,<<"PinType">>,<<"AlgorithmIdentifier">>, <<"PinBlockFormatCode">>, <<"KeyIndex">> ]},
  {must_fld_val,
    [
    {<<"PosDataCodeInputCapability">>, [<<"0">>, <<"1">>, <<"6">>]},
    {<<"PosDataCodeCardholderPresent">>, [<<"2">>,<<"3">>]},
    {<<"PosDataCodeCardPresent">>, [<<"0">>]},
    {<<"PosDataCodeCardDataInputMode">>, [<<"1">>]}
    ]
  }
  ]
},

presentment_purchase_reversal =>
#{{<<"1">>,chippos}=>
  [
  {must_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>, <<"PinData">>, <<"SecurityTechnique">>]},
  {must_fld_val,[
    {<<"PosDataCodeInputCapability">>, [<<"5">>]}, {<<"PosDataCodeAuthenticationCapability">>, [<<"1">>]}, {<<"PosDataCodeOperatingEnvironment">>, [<<"1">>, <<"2">>, <<"3">>, <<"4">>, <<"5">>, <<"T">>]},
    {<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}, {<<"PosDataCodeCardDataInputMode">>, [<<"5">>]}, {<<"PosDataCodeAuthenticationMethod">>, [<<"1">>]}, {<<"PosDataCodeOutputCapability">>, [<<"3">>]}
    ]
  },
  {must_not_fld_val,[{<<"MerchantCategoryCode">>,[<<"6010">>,<<"6011">>]}]}
  ],

    {<<"2">>,chipposfallback}=>
  [
  {must_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>, <<"PinData">>, <<"SecurityTechnique">>]},
  {must_fld_val,[
    {<<"PosDataCodeInputCapability">>, [<<"5">>]}, {<<"PosDataCodeAuthenticationCapability">>, [<<"1">>]}, {<<"PosDataCodeOperatingEnvironment">>, [<<"1">>, <<"2">>, <<"3">>, <<"4">>, <<"5">>, <<"T">>]},
    {<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}, {<<"PosDataCodeCardDataInputMode">>, [<<"9">>]}, {<<"PosDataCodeAuthenticationMethod">>, [<<"1">>]}, {<<"PosDataCodeOutputCapability">>, [<<"3">>]}
    ]
  },
  {must_not_fld_val,[{<<"MerchantCategoryCode">>,[<<"6010">>,<<"6011">>]}]}
  ],

    {<<"3">>,ecom}=>
  [
  {must_fld,[<<"CVD2Value">>, <<"SecurityTechnique">>]},
  {must_fld_val,
    [
    {<<"PosDataCodeOperatingEnvironment">>, [<<"S">>]}, {<<"PosDataCodeCardholderPresent">>, [<<"S">>]},
    {<<"PosDataCodeCardPresent">>, [<<"0">>]},
    {<<"PosDataCodeCardDataInputMode">>, [<<"0">>, <<"1">>]},
    {<<"PosDataCodeAuthenticationMethod">>, [<<"0">>, <<"S">>]}
    ]
  },
  {must_not_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>]}
  ],

    {<<"4">>,pospin}=>
  [
  {must_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>, <<"PinData">>, <<"SecurityTechnique">>]},
  {must_fld_val,
    [
    {<<"PosDataCodeInputCapability">>, [<<"0">>, <<"2">>, <<"5">>]}, {<<"PosDataCodeOperatingEnvironment">>, [<<"1">>, <<"2">>, <<"3">>, <<"4">>, <<"5">>, <<"T">>]},
    {<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}
    ]
  },
  {must_not_fld_val,[{<<"MerchantCategoryCode">>,[<<"6010">>,<<"6011">>]}]}
  ],

    {<<"5">>,pospur}=>
  [
  {must_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>, <<"SecurityTechnique">>]},
  {must_fld_val,
    [
    {<<"PosDataCodeInputCapability">>, [<<"0">>, <<"2">>]}, {<<"PosDataCodeOperatingEnvironment">>, [<<"1">>, <<"2">>, <<"3">>, <<"4">>, <<"5">>, <<"T">>]},
    {<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}, {<<"PosDataCodeCardDataInputMode">>, [<<"0">>, <<"2">>]}, {<<"PosDataCodeAuthenticationMethod">>, [<<"0">>, <<"5">>]}
    ]
  },
  {must_not_fld_val,[{<<"MerchantCategoryCode">>,[<<"6010">>,<<"6011">>]}]}
  ],
                         {<<"6">>,pospurcp}=>
                       [
                       {must_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>,<<"PinData">>, <<"SecurityTechnique">>]},
                       {must_fld_val,
                         [
                          {<<"PosDataCodeCardPresent">>, [<<"1">>,<<"W">>,<<"X">>]}
                         ]
                       },
                       {must_not_fld_val,[{<<"MerchantCategoryCode">>,[<<"6010">>,<<"6011">>]}]}
                       ],

{<<"7">>,pospurcnp}=>
                       [
                       {must_not_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>,<<"PinData">>, <<"SecurityTechnique">>]},
                       {must_fld_val,
                         [
                          {<<"PosDataCodeCardPresent">>, [<<"0">>]}
                         ]
                       },
                       {must_not_fld_val,[{<<"MerchantCategoryCode">>,[<<"6010">>,<<"6011">>]}]}
                       ],


  {<<"8">>,recur}=>
  [
  {must_fld_val,
    [
    {<<"PosDataCodeCardholderPresent">>, [<<"9">>]}, {<<"PosDataCodeCardPresent">>, [<<"0">>]},
    {<<"PosDataCodeCardDataInputMode">>, [<<"1">>]}
    ]
  }
  ],

  {<<"9">>,nfcpur}=>
  [
  {must_fld_val,
    [
    {<<"PosDataCodeInputCapability">>, [<<"0">>, <<"2">>]},
    {<<"PosDataCodeOperatingEnvironment">>, [<<"1">>, <<"2">>, <<"3">>, <<"4">>, <<"5">>, <<"T">>]},
    {<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"X">>]}
    ]
  }
  ],

    {<<"10">>,acvs}=>
  [
  {must_fld,[f123p,<<"CVD2Value">>, <<"SecurityTechnique">>]},
  {must_fld_val,
    [
    {<<"PosDataCodeCardDataInputMode">>, [<<"2">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}
    ]
  },
  {must_not_fld_val,[{<<"MerchantCategoryCode">>,[<<"6010">>,<<"6011">>,<<"4829">>,<<"6051">>,<<"7995">>]}]}
  ],

    {<<"11">>,avs}=>
  [
  {must_fld,[f123p]},
  {must_fld_val,
    [
    {<<"PosDataCodeCardDataInputMode">>, [<<"2">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}
    ]
  }
  ],

  {<<"12">>,moto}=>
  [
  {must_not_fld,[f123p,<<"PinData">>,<<"SecurityTechnique">>,<<"PinType">>,<<"AlgorithmIdentifier">>, <<"PinBlockFormatCode">>, <<"KeyIndex">> ]},
  {must_fld_val,
    [
    {<<"PosDataCodeInputCapability">>, [<<"0">>, <<"1">>, <<"6">>]},
    {<<"PosDataCodeCardholderPresent">>, [<<"2">>,<<"3">>]},
    {<<"PosDataCodeCardPresent">>, [<<"0">>]},
    {<<"PosDataCodeCardDataInputMode">>, [<<"1">>]}
    ]
  }
  ]
},

refund =>
#{{<<"1">>,chippos}=>
  [
  {must_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>, <<"PinData">>, <<"SecurityTechnique">>]},
  {must_fld_val,[
    {<<"PosDataCodeInputCapability">>, [<<"5">>]}, {<<"PosDataCodeAuthenticationCapability">>, [<<"1">>]}, {<<"PosDataCodeOperatingEnvironment">>, [<<"1">>, <<"2">>, <<"3">>, <<"4">>, <<"5">>, <<"T">>]},
    {<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}, {<<"PosDataCodeCardDataInputMode">>, [<<"5">>]}, {<<"PosDataCodeAuthenticationMethod">>, [<<"1">>]}, {<<"PosDataCodeOutputCapability">>, [<<"3">>]}
    ]
  },
  {must_not_fld_val,[{<<"MerchantCategoryCode">>,[<<"6010">>,<<"6011">>]}]}
  ],

    {<<"2">>,chipposfallback}=>
  [
  {must_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>, <<"PinData">>, <<"SecurityTechnique">>]},
  {must_fld_val,[
    {<<"PosDataCodeInputCapability">>, [<<"5">>]}, {<<"PosDataCodeAuthenticationCapability">>, [<<"1">>]}, {<<"PosDataCodeOperatingEnvironment">>, [<<"1">>, <<"2">>, <<"3">>, <<"4">>, <<"5">>, <<"T">>]},
    {<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}, {<<"PosDataCodeCardDataInputMode">>, [<<"9">>]}, {<<"PosDataCodeAuthenticationMethod">>, [<<"1">>]}, {<<"PosDataCodeOutputCapability">>, [<<"3">>]}
    ]
  },
  {must_not_fld_val,[{<<"MerchantCategoryCode">>,[<<"6010">>,<<"6011">>]}]}
  ],

    {<<"3">>,ecom}=>
  [
  {must_fld,[<<"CVD2Value">>, <<"SecurityTechnique">>]},
  {must_fld_val,
    [
    {<<"PosDataCodeOperatingEnvironment">>, [<<"S">>]}, {<<"PosDataCodeCardholderPresent">>, [<<"S">>]},
    {<<"PosDataCodeCardPresent">>, [<<"0">>]},
    {<<"PosDataCodeCardDataInputMode">>, [<<"0">>, <<"1">>]},
    {<<"PosDataCodeAuthenticationMethod">>, [<<"0">>, <<"S">>]}
    ]
  },
  {must_not_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>]}
  ],

    {<<"4">>,pospin}=>
  [
  {must_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>, <<"PinData">>, <<"SecurityTechnique">>]},
  {must_fld_val,
    [
    {<<"PosDataCodeInputCapability">>, [<<"0">>, <<"2">>, <<"5">>]}, {<<"PosDataCodeOperatingEnvironment">>, [<<"1">>, <<"2">>, <<"3">>, <<"4">>, <<"5">>, <<"T">>]},
    {<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}
    ]
  },
  {must_not_fld_val,[{<<"MerchantCategoryCode">>,[<<"6010">>,<<"6011">>]}]}
  ],

    {<<"5">>,pospur}=>
  [
  {must_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>, <<"SecurityTechnique">>]},
  {must_fld_val,
    [
    {<<"PosDataCodeInputCapability">>, [<<"0">>, <<"2">>]}, {<<"PosDataCodeOperatingEnvironment">>, [<<"1">>, <<"2">>, <<"3">>, <<"4">>, <<"5">>, <<"T">>]},
    {<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}, {<<"PosDataCodeCardDataInputMode">>, [<<"0">>, <<"2">>]}, {<<"PosDataCodeAuthenticationMethod">>, [<<"0">>, <<"5">>]}
    ]
  },
  {must_not_fld_val,[{<<"MerchantCategoryCode">>,[<<"6010">>,<<"6011">>]}]}
  ],
                         {<<"6">>,pospurcp}=>
                       [
                       {must_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>,<<"PinData">>, <<"SecurityTechnique">>]},
                       {must_fld_val,
                         [
                          {<<"PosDataCodeCardPresent">>, [<<"1">>,<<"W">>,<<"X">>]}
                         ]
                       },
                       {must_not_fld_val,[{<<"MerchantCategoryCode">>,[<<"6010">>,<<"6011">>]}]}
                       ],

{<<"7">>,pospurcnp}=>
                       [
                       {must_not_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>,<<"PinData">>, <<"SecurityTechnique">>]},
                       {must_fld_val,
                         [
                          {<<"PosDataCodeCardPresent">>, [<<"0">>]}
                         ]
                       },
                       {must_not_fld_val,[{<<"MerchantCategoryCode">>,[<<"6010">>,<<"6011">>]}]}
                       ],


  {<<"8">>,recur}=>
  [
  {must_fld_val,
    [
    {<<"PosDataCodeCardholderPresent">>, [<<"9">>]}, {<<"PosDataCodeCardPresent">>, [<<"0">>]},
    {<<"PosDataCodeCardDataInputMode">>, [<<"1">>]}
    ]
  }
  ],

  {<<"9">>,nfcpur}=>
  [
  {must_fld_val,
    [
    {<<"PosDataCodeInputCapability">>, [<<"0">>, <<"2">>]},
    {<<"PosDataCodeOperatingEnvironment">>, [<<"1">>, <<"2">>, <<"3">>, <<"4">>, <<"5">>, <<"T">>]},
    {<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"X">>]}
    ]
  }
  ],

    {<<"10">>,acvs}=>
  [
  {must_fld,[f123p,<<"CVD2Value">>, <<"SecurityTechnique">>]},
  {must_fld_val,
    [
    {<<"PosDataCodeCardDataInputMode">>, [<<"2">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}
    ]
  },
  {must_not_fld_val,[{<<"MerchantCategoryCode">>,[<<"6010">>,<<"6011">>,<<"4829">>,<<"6051">>,<<"7995">>]}]}
  ],

    {<<"11">>,avs}=>
  [
  {must_fld,[f123p]},
  {must_fld_val,
    [
    {<<"PosDataCodeCardDataInputMode">>, [<<"2">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}
    ]
  }
  ],

  {<<"12">>,moto}=>
  [
  {must_not_fld,[f123p,<<"PinData">>,<<"SecurityTechnique">>,<<"PinType">>,<<"AlgorithmIdentifier">>, <<"PinBlockFormatCode">>, <<"KeyIndex">> ]},
  {must_fld_val,
    [
    {<<"PosDataCodeInputCapability">>, [<<"0">>, <<"1">>, <<"6">>]},
    {<<"PosDataCodeCardholderPresent">>, [<<"2">>,<<"3">>]},
    {<<"PosDataCodeCardPresent">>, [<<"0">>]},
    {<<"PosDataCodeCardDataInputMode">>, [<<"1">>]}
    ]
  }
  ]
},

refund_reversal =>
#{{<<"1">>,chippos}=>
  [
  {must_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>, <<"PinData">>, <<"SecurityTechnique">>]},
  {must_fld_val,[
    {<<"PosDataCodeInputCapability">>, [<<"5">>]}, {<<"PosDataCodeAuthenticationCapability">>, [<<"1">>]}, {<<"PosDataCodeOperatingEnvironment">>, [<<"1">>, <<"2">>, <<"3">>, <<"4">>, <<"5">>, <<"T">>]},
    {<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}, {<<"PosDataCodeCardDataInputMode">>, [<<"5">>]}, {<<"PosDataCodeAuthenticationMethod">>, [<<"1">>]}, {<<"PosDataCodeOutputCapability">>, [<<"3">>]}
    ]
  },
  {must_not_fld_val,[{<<"MerchantCategoryCode">>,[<<"6010">>,<<"6011">>]}]}
  ],

    {<<"2">>,chipposfallback}=>
  [
  {must_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>, <<"PinData">>, <<"SecurityTechnique">>]},
  {must_fld_val,[
    {<<"PosDataCodeInputCapability">>, [<<"5">>]}, {<<"PosDataCodeAuthenticationCapability">>, [<<"1">>]}, {<<"PosDataCodeOperatingEnvironment">>, [<<"1">>, <<"2">>, <<"3">>, <<"4">>, <<"5">>, <<"T">>]},
    {<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}, {<<"PosDataCodeCardDataInputMode">>, [<<"9">>]}, {<<"PosDataCodeAuthenticationMethod">>, [<<"1">>]}, {<<"PosDataCodeOutputCapability">>, [<<"3">>]}
    ]
  },
  {must_not_fld_val,[{<<"MerchantCategoryCode">>,[<<"6010">>,<<"6011">>]}]}
  ],

    {<<"3">>,ecom}=>
  [
  {must_fld,[<<"CVD2Value">>, <<"SecurityTechnique">>]},
  {must_fld_val,
    [
    {<<"PosDataCodeOperatingEnvironment">>, [<<"S">>]}, {<<"PosDataCodeCardholderPresent">>, [<<"S">>]},
    {<<"PosDataCodeCardPresent">>, [<<"0">>]},
    {<<"PosDataCodeCardDataInputMode">>, [<<"0">>, <<"1">>]},
    {<<"PosDataCodeAuthenticationMethod">>, [<<"0">>, <<"S">>]}
    ]
  },
  {must_not_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>]}
  ],

    {<<"4">>,pospin}=>
  [
  {must_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>, <<"PinData">>, <<"SecurityTechnique">>]},
  {must_fld_val,
    [
    {<<"PosDataCodeInputCapability">>, [<<"0">>, <<"2">>, <<"5">>]}, {<<"PosDataCodeOperatingEnvironment">>, [<<"1">>, <<"2">>, <<"3">>, <<"4">>, <<"5">>, <<"T">>]},
    {<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}
    ]
  },
  {must_not_fld_val,[{<<"MerchantCategoryCode">>,[<<"6010">>,<<"6011">>]}]}
  ],

    {<<"5">>,pospur}=>
  [
  {must_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>, <<"SecurityTechnique">>]},
  {must_fld_val,
    [
    {<<"PosDataCodeInputCapability">>, [<<"0">>, <<"2">>]}, {<<"PosDataCodeOperatingEnvironment">>, [<<"1">>, <<"2">>, <<"3">>, <<"4">>, <<"5">>, <<"T">>]},
    {<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}, {<<"PosDataCodeCardDataInputMode">>, [<<"0">>, <<"2">>]}, {<<"PosDataCodeAuthenticationMethod">>, [<<"0">>, <<"5">>]}
    ]
  },
  {must_not_fld_val,[{<<"MerchantCategoryCode">>,[<<"6010">>,<<"6011">>]}]}
  ],
                         {<<"6">>,pospurcp}=>
                       [
                       {must_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>,<<"PinData">>, <<"SecurityTechnique">>]},
                       {must_fld_val,
                         [
                          {<<"PosDataCodeCardPresent">>, [<<"1">>,<<"W">>,<<"X">>]}
                         ]
                       },
                       {must_not_fld_val,[{<<"MerchantCategoryCode">>,[<<"6010">>,<<"6011">>]}]}
                       ],

{<<"7">>,pospurcnp}=>
                       [
                       {must_not_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>,<<"PinData">>, <<"SecurityTechnique">>]},
                       {must_fld_val,
                         [
                          {<<"PosDataCodeCardPresent">>, [<<"0">>]}
                         ]
                       },
                       {must_not_fld_val,[{<<"MerchantCategoryCode">>,[<<"6010">>,<<"6011">>]}]}
                       ],


  {<<"8">>,recur}=>
  [
  {must_fld_val,
    [
    {<<"PosDataCodeCardholderPresent">>, [<<"9">>]}, {<<"PosDataCodeCardPresent">>, [<<"0">>]},
    {<<"PosDataCodeCardDataInputMode">>, [<<"1">>]}
    ]
  }
  ],

  {<<"9">>,nfcpur}=>
  [
  {must_fld_val,
    [
    {<<"PosDataCodeInputCapability">>, [<<"0">>, <<"2">>]},
    {<<"PosDataCodeOperatingEnvironment">>, [<<"1">>, <<"2">>, <<"3">>, <<"4">>, <<"5">>, <<"T">>]},
    {<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"X">>]}
    ]
  }
  ],

    {<<"10">>,acvs}=>
  [
  {must_fld,[f123p,<<"CVD2Value">>, <<"SecurityTechnique">>]},
  {must_fld_val,
    [
    {<<"PosDataCodeCardDataInputMode">>, [<<"2">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}
    ]
  },
  {must_not_fld_val,[{<<"MerchantCategoryCode">>,[<<"6010">>,<<"6011">>,<<"4829">>,<<"6051">>,<<"7995">>]}]}
  ],

    {<<"11">>,avs}=>
  [
  {must_fld,[f123p]},
  {must_fld_val,
    [
    {<<"PosDataCodeCardDataInputMode">>, [<<"2">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}
    ]
  }
  ],

  {<<"12">>,moto}=>
  [
  {must_not_fld,[f123p,<<"PinData">>,<<"SecurityTechnique">>,<<"PinType">>,<<"AlgorithmIdentifier">>, <<"PinBlockFormatCode">>, <<"KeyIndex">> ]},
  {must_fld_val,
    [
    {<<"PosDataCodeInputCapability">>, [<<"0">>, <<"1">>, <<"6">>]},
    {<<"PosDataCodeCardholderPresent">>, [<<"2">>,<<"3">>]},
    {<<"PosDataCodeCardPresent">>, [<<"0">>]},
    {<<"PosDataCodeCardDataInputMode">>, [<<"1">>]}
    ]
  }
  ]
},

presentment_cash => #{
                   {<<"1">>,chipatm} =>
                   [
                   {must_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>, <<"PinData">>, <<"SecurityTechnique">>]},
                   {must_fld_val,[
                     {<<"MerchantCategoryCode">>,[<<"6011">>]},
                     {<<"PosDataCodeInputCapability">>, [<<"5">>]}, {<<"PosDataCodeAuthenticationCapability">>, [<<"1">>]}, {<<"PosDataCodeOperatingEnvironment">>, [<<"1">>,<<"5">>]},
                     {<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}, {<<"PosDataCodeCardDataInputMode">>, [<<"5">>]}, {<<"PosDataCodeAuthenticationMethod">>, [<<"1">>]}, {<<"PosDataCodeOutputCapability">>, [<<"3">>]}
                     ]
                   }

                   ],
                     {<<"2">>,chipatmfallback} =>
                   [
                   {must_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>, <<"PinData">>, <<"SecurityTechnique">>]},
                   {must_fld_val,[
                     {<<"MerchantCategoryCode">>,[<<"6011">>]},
                     {<<"PosDataCodeInputCapability">>, [<<"5">>]}, {<<"PosDataCodeAuthenticationCapability">>, [<<"1">>]}, {<<"PosDataCodeOperatingEnvironment">>, [<<"1">>, <<"5">>]},
                     {<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}, {<<"PosDataCodeCardDataInputMode">>, [<<"9">>]}, {<<"PosDataCodeAuthenticationMethod">>, [<<"1">>]}, {<<"PosDataCodeOutputCapability">>, [<<"3">>]}
                     ]
                   }
                   ],
                     {<<"3">>,atmpin} =>
                   [
                   {must_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>, <<"PinData">>, <<"SecurityTechnique">>]},
                   {must_fld_val,[
                     {<<"MerchantCategoryCode">>,[<<"6011">>]},
                     {<<"PosDataCodeInputCapability">>, [<<"2">>]}, {<<"PosDataCodeAuthenticationCapability">>, [<<"1">>]}, {<<"PosDataCodeOperatingEnvironment">>, [<<"1">>, <<"5">>]},
                     {<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}, {<<"PosDataCodeCardDataInputMode">>, [<<"2">>]}, {<<"PosDataCodeAuthenticationMethod">>, [<<"1">>]}
                     ]
                   }
                   ],
                     {<<"4">>, manualcash}=>
                   [
                   {must_not_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>, <<"PinData">>, <<"SecurityTechnique">>]},
                   {must_fld_val,[
                     {<<"MerchantCategoryCode">>,[<<"6010">>]},
                     {<<"PosDataCodeInputCapability">>, [<<"1">>]},
                     {<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"0">>]}, {<<"PosDataCodeCardDataInputMode">>, [<<"1">>]}, {<<"PosDataCodeAuthenticationMethod">>, [<<"0">>]}
                     ]
                   }
                   ]
                 },

presentment_cash_reversal => #{
                   {<<"1">>,chipatm} =>
                   [
                   {must_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>, <<"PinData">>, <<"SecurityTechnique">>]},
                   {must_fld_val,[
                     {<<"MerchantCategoryCode">>,[<<"6011">>]},
                     {<<"PosDataCodeInputCapability">>, [<<"5">>]}, {<<"PosDataCodeAuthenticationCapability">>, [<<"1">>]}, {<<"PosDataCodeOperatingEnvironment">>, [<<"1">>,<<"5">>]},
                     {<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}, {<<"PosDataCodeCardDataInputMode">>, [<<"5">>]}, {<<"PosDataCodeAuthenticationMethod">>, [<<"1">>]}, {<<"PosDataCodeOutputCapability">>, [<<"3">>]}
                     ]
                   }

                   ],
                     {<<"2">>,chipatmfallback} =>
                   [
                   {must_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>, <<"PinData">>, <<"SecurityTechnique">>]},
                   {must_fld_val,[
                     {<<"MerchantCategoryCode">>,[<<"6011">>]},
                     {<<"PosDataCodeInputCapability">>, [<<"5">>]}, {<<"PosDataCodeAuthenticationCapability">>, [<<"1">>]}, {<<"PosDataCodeOperatingEnvironment">>, [<<"1">>, <<"5">>]},
                     {<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}, {<<"PosDataCodeCardDataInputMode">>, [<<"9">>]}, {<<"PosDataCodeAuthenticationMethod">>, [<<"1">>]}, {<<"PosDataCodeOutputCapability">>, [<<"3">>]}
                     ]
                   }
                   ],
                     {<<"3">>,atmpin} =>
                   [
                   {must_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>, <<"PinData">>, <<"SecurityTechnique">>]},
                   {must_fld_val,[
                     {<<"MerchantCategoryCode">>,[<<"6011">>]},
                     {<<"PosDataCodeInputCapability">>, [<<"2">>]}, {<<"PosDataCodeAuthenticationCapability">>, [<<"1">>]}, {<<"PosDataCodeOperatingEnvironment">>, [<<"1">>, <<"5">>]},
                     {<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"1">>]}, {<<"PosDataCodeCardDataInputMode">>, [<<"2">>]}, {<<"PosDataCodeAuthenticationMethod">>, [<<"1">>]}
                     ]
                   }
                   ],
                     {<<"4">>, manualcash}=>
                   [
                   {must_not_fld,[<<"TrackData2PanNumber">>, <<"TrackData1PanNumber">>, <<"PinData">>, <<"SecurityTechnique">>]},
                   {must_fld_val,[
                     {<<"MerchantCategoryCode">>,[<<"6010">>]},
                     {<<"PosDataCodeInputCapability">>, [<<"1">>]},
                     {<<"PosDataCodeCardholderPresent">>, [<<"0">>]}, {<<"PosDataCodeCardPresent">>, [<<"0">>]}, {<<"PosDataCodeCardDataInputMode">>, [<<"1">>]}, {<<"PosDataCodeAuthenticationMethod">>, [<<"0">>]}
                     ]
                   }
                   ]
                 },

bill_payment_req =>
#{
  {<<"1">>,billpay}=>
  [
  {must_fld_val,[{<<"PosDataCodeOperatingEnvironment">>, [<<"S">>]}, {<<"PosDataCodeCardholderPresent">>, [<<"1">>, <<"4">>, <<"S">>]}, {<<"PosDataCodeCardPresent">>, [<<"0">>]}, {<<"PosDataCodeAuthenticationMethod">>, [<<"0">>, <<"S">>]}]}
  ]
},

    send_money_req =>
        #{
            {<<"1">>, p2p} => [
                               {must_fld_val,    [{<<"MerchantCategoryCode">>,         [<<"4829">>, <<"6012">>]},
                                                  {<<"PosDataCodeCardholderPresent">>, [<<"0">>, <<"1">>, <<"4">>]} ]}
                              ]
        },

    fund_xfr_debit_req =>
        #{
            {<<"1">>, p2p} => [
                               {must_fld_val,    [{<<"MerchantCategoryCode">>,         [<<"4829">>, <<"6012">>]},
                                                  {<<"PosDataCodeCardholderPresent">>, [<<"0">>, <<"1">>, <<"4">>]} ]}
                              ]
        },


    fund_xfr_credit_req =>
        #{
            {<<"1">>, p2p} => [
                               {must_fld_val,    [{<<"MerchantCategoryCode">>,         [<<"4829">>, <<"6012">>]},
                                                  {<<"PosDataCodeCardholderPresent">>, [<<"0">>, <<"1">>, <<"4">>]} ]}
                              ]
        },

    fund_xfr_credit_adv_req =>
        #{
            {<<"1">>, p2p} => [
                               {must_fld_val,    [{<<"MerchantCategoryCode">>,         [<<"4829">>, <<"6012">>]},
                                                  {<<"PosDataCodeCardholderPresent">>, [<<"0">>, <<"1">>, <<"4">>]} ]}
                              ]
        },

    send_money_resp             => #{{<<"1">>,dummyrule} => []},
    fund_xfr_debit_resp         => #{{<<"1">>,dummyrule} => []},
    fund_xfr_credit_resp        => #{{<<"1">>,dummyrule} => []},
    fund_xfr_credit_adv_resp    => #{{<<"1">>,dummyrule} => []}
}
}.

{tlc_rules_map,

  #{
    purchase_req =>
    [
      {evaluate,
       [
         {
           must_not,purchase_req, [{true,na,next}, {false,duplicate,next}]

         }
       ]
      }
    ],

    cash_req =>
    [
      {evaluate,
       [
         {
           must_not,cash_req, [{true,na,next}, {false,duplicate,next}]

         }
       ]
      }
    ],

    purchase_auth_req =>
    [
      {evaluate,
       [
         {
           must_not,purchase_auth_req, [{true,na,next}, {false,duplicate,next}]

         }
       ]
      }
    ],

    cash_auth_req =>
    [
      {evaluate,
       [
         {
           must_not,cash_auth_req, [{true,na,next}, {false,duplicate,next}]

         }
       ]
      }
    ],

    purchase_resp =>
    [
     %% ### NEED TO CHECK FOR LATE RESPONSE AND DUPLICATE ###

      {evaluate,
       [
         {must, purchase_req,[{true,na,next},{false,no_match,skip_all}]},
         {state_check,purchase_req,[{timeout, late_response, skip_next}, {success, success, next}, {na,na,next}]},
         {must_not,purchase_resp,[{true,na,next},{false,duplicate,next}]}

       ]
      }
    ],

    cash_resp =>
    [
     %% ### NEED TO CHECK FOR LATE RESPONSE AND DUPLICATE ###

      {evaluate,
       [
         {must, cash_req,[{true,na,next},{false,no_match,skip_all}]},
         {state_check,cash_req,[{timeout, late_response, skip_next}, {success, success, next}, {na,na,next}]},
         {must_not,cash_resp,[{true,na,next},{false,duplicate,next}]}

       ]
      }
    ],

    purchase_auth_resp =>
    [
     %% ### NEED TO CHECK FOR LATE RESPONSE AND DUPLICATE ###

      {evaluate,
       [
         {must, purchase_auth_req,[{true,na,next},{false,no_match,skip_all}]},
         {state_check,purchase_auth_req,[{timeout, late_response, skip_next}, {success, success, next}, {na,na,next}]},
         {must_not,purchase_auth_resp,[{true,na,next},{false,duplicate,next}]}

       ]
      }
    ],

    cash_auth_resp =>
    [
     %% ### NEED TO CHECK FOR LATE RESPONSE AND DUPLICATE ###

      {evaluate,
       [
         {must, cash_auth_req,[{true,na,next},{false,no_match,skip_all}]},
         {state_check,cash_auth_req,[{timeout, late_response, skip_next}, {success, success, next}, {na,na,next}]},
         {must_not,cash_auth_resp,[{true,na,next},{false,duplicate,next}]}

       ]
      }
    ],

    purchase_reversal_adv_req =>
    [
      {evaluate,
       [
         {must,purchase_req,[{true,na,next},{false,no_match,skip_all}]},
         {optional,purchase_resp,[{true,na,next},{false,na,skip_next}]},
         {state_check,purchase_resp,[{approved, approved, next},{reject,na,next},{na,na,next}, {declined, invalid_lifecycle_declined_orig, next}]},
         {optional,purchase_reversal_adv_req,[{true,na,next},{false,na,skip_next}]},
         {state_check,purchase_reversal_adv_req,[{advice_response_present, advice_response_present, next},{na,na,next}, {declined, invalid_lifecycle, next}]}
       ]

      }
    ],

    cash_reversal_adv_req =>
    [
      {evaluate,
        [
          {must,cash_req,[{true,na,next},{false,no_match,skip_all}]},
          {optional,cash_resp,[{true,na,next},{false,na,skip_next}]},
          {state_check,cash_resp,[{approved, approved, next},{na,na,next}, {declined, invalid_lifecycle, next}]},
          {optional,cash_reversal_adv_req,[{true,na,next},{false,na,skip_next}]},
          {state_check,cash_reversal_adv_req,[{advice_response_present, advice_response_present, next},{na,na,next}, {declined, invalid_lifecycle, next}]}
        ]

      }
    ],

    purchase_reversal_adv_resp =>
    [
      {evaluate,
      [
        {must,purchase_reversal_adv_req, [{true,na,next}, {false,no_match,skip_all}]},
        {state_check,purchase_reversal_adv_req,[{success, success, next},
                                                {stip_approved,stip_approved,next},
                                                {timeout,na,next},
                                                {na,na,next},
                                                {no_match,invalid_lifecycle,next},
                                                {reject, invalid_lifecycle, next}]},
        {optional,purchase_reversal_adv_resp,[{true,na,next},{false,na,skip_next}]},
        {state_check,purchase_reversal_adv_resp,[{advice_response_present, advice_response_present, next},
                                                 {na,na,next},
                                                 {declined, invalid_lifecycle, next}]}

    ]
      }
    ],

    cash_reversal_adv_resp =>
    [
      {evaluate,
        [
          {must,cash_reversal_adv_req, [{true,na,next}, {false,no_match,skip_all}]},
          {state_check,cash_reversal_adv_req,[{success, success, next},
                                              {stip_approved,stip_approved,next},
                                              {timeout,na,next},
                                              {na,na,next},
                                              {no_match,invalid_lifecycle,next},
                                              {reject, invalid_lifecycle, next}]},
          {optional,cash_reversal_adv_resp,[{true,na,next},{false,na,skip_next}]},
          {state_check,cash_reversal_adv_resp,[{advice_response_present, advice_response_present, next},
                                               {na,na,next},
                                               {declined, invalid_lifecycle, next}]}

        ]
      }
    ],

    purchase_reversal_adv_repeat_req =>
    [
      {evaluate,
        [
          {must,purchase_req,[{true,na,next},{false,no_match,skip_all}]},
          {must,purchase_reversal_adv_req,[{true,na,next},{false,invalid_lifecycle,skip_all}]},
          {optional,purchase_resp,[{true,na,next},{false,na,skip_next}]},
          {state_check,purchase_resp,[{approved, approved, next},{reject,na,next},{na,na,next}, {declined, invalid_lifecycle_declined_orig, next}]}
        ]

      }
    ],

    cash_reversal_adv_repeat_req =>
    [
      {evaluate,
        [
          {must,cash_req,[{true,na,next},{false,no_match,skip_all}]},
          {must,cash_reversal_adv_req,[{true,na,next},{false,invalid_lifecycle,skip_all}]},
          {optional,cash_resp,[{true,na,next},{false,na,skip_next}]},
          {state_check,cash_resp,[{approved, approved, next},{reject,na,next},{na,na,next}, {declined, invalid_lifecycle_declined_orig, next}]}
        ]

      }
    ],

    purchase_adv_req =>
    [
      {evaluate,
       [
         {optional,purchase_req,[{true,na,next},{false,na,skip_next}]},
         {optional,purchase_resp,[{true,na,next},{false,na,skip_next}]},
         {state_check,purchase_resp,[{approved, approved, next},{na,na,next}, {declined, invalid_lifecycle, next}]}
       ]

      }
    ],

    cash_adv_req =>
    [
      {evaluate,
        [
          {optional,cash_req,[{true,na,next},{false,na,skip_next}]},
          {optional,cash_resp,[{true,na,next},{false,na,skip_next}]},
          {state_check,cash_resp,[{approved, approved, next},{na,na,next}, {declined, invalid_lifecycle, next}]}
        ]

      }
    ],

    purchase_adv_repeat_req =>
    [
      {evaluate,
       [
         {must,purchase_adv_req,[{true,na,next},{false,invalid_lifecycle,skip_all}]},
         {optional,purchase_req,[{true,na,next},{false,na,skip_next}]},
         {optional,purchase_resp,[{true,na,next},{false,na,skip_next}]},
         {state_check,purchase_resp,[{approved, approved, next},{na,na,next}, {declined, invalid_lifecycle, next}]}
       ]

      }
    ],

   cash_adv_repeat_req =>
    [
      {evaluate,
       [
         {must,cash_adv_req,[{true,na,next},{false,invalid_lifecycle,skip_all}]},
         {optional,cash_req,[{true,na,next},{false,na,skip_next}]},
         {optional,cash_resp,[{true,na,next},{false,na,skip_next}]},
         {state_check,cash_resp,[{approved, approved, next},{na,na,next}, {declined, invalid_lifecycle, next}]}
       ]

      }
    ],

   purchase_adv_resp =>
    [
      {evaluate,
      [
        {must,purchase_adv_req, [{true,na,next}, {false,no_match,next}]}

    ]
      }
    ],

    cash_adv_resp =>
    [
      {evaluate,
        [
          {must,cash_adv_req, [{true,na,next}, {false,no_match,next}]}

        ]
      }
    ],

    online_key_exchange_req =>
    [
      {evaluate,
        [
          {
            must_not,online_key_exchange_req, [{true,na,next}, {false,duplicate,next}]
          }
        ]
      }
    ],

    online_key_exchange_resp =>
    [
      %% ### NEED TO CHECK FOR LATE RESPONSE AND DUPLICATE ###

      {evaluate,
        [
          {must, online_key_exchange_req,[{true,na,next},{false,no_match,skip_all}]},
          {must_not,online_key_exchange_resp,[{true,na,next},{false,duplicate,next}]}
        ]
      }
    ],

    bill_payment_req =>
    [
      {evaluate,
        [
          {
            must_not,bill_payment_req, [{true,na,next}, {false,duplicate,next}]
          }
        ]
      }
    ],

    gen_file_update_req =>
    [
      {evaluate,
        [
          {must_not, gen_file_update_req, [{true,na,next}, {false,duplicate,next}] }
        ]
      }
    ],

    gen_file_update_resp =>
    [
      %% ### NEED TO CHECK FOR LATE RESPONSE AND DUPLICATE ###
      {evaluate,
        [
          {must,     gen_file_update_req, [{true,na,next},{false,no_match,skip_all}]},
          {must_not, gen_file_update_resp,[{true,na,next},{false,duplicate,next}]}
        ]
      }
    ],
    presentment_purchase =>
        [
           {evaluate_clearing_txn,
            #{{presentment_purchase,success} =>
                [
                    {must_not,presentment_purchase, [{true,na,next}, {false,duplicate,next}]}
                ],
              {presentment_purchase,duplicate} =>
                [
                    {must, purchase_auth_resp,[{true,na,next},{false,no_match,skip_all}]},
                    {state_check,purchase_auth_resp,[{approved, approved, next},{reject,invalid_lifecycle_declined_orig,next},{declined, invalid_lifecycle_declined_orig, next},{na,na,next}]},
                    {any,refund,[{success, invalid_lifecycle, next},{reject, approved, skip_all}]}
                ],
              {presentment_purchase,reject} =>
                [
                    {must, purchase_auth_resp,[{true,na,next},{false,no_match,skip_all}]},
                    {state_check,purchase_auth_resp,[{approved, approved, next},{reject,invalid_lifecycle_declined_orig,next},{declined, invalid_lifecycle_declined_orig, next},{na,na,next}]},
                    {any,refund,[{success, invalid_lifecycle, next},{reject, approved, skip_all}]}
                ],
              {presentment_purchase_reversal,success} =>
                [
                    {must, purchase_auth_resp,[{true,na,next},{false,no_match,skip_all}]},
                    {state_check,purchase_auth_resp,[{approved, approved, next},{reject,invalid_lifecycle_declined_orig,next},{declined, invalid_lifecycle_declined_orig, next},{na,na,next}]},
                    {any,refund,[{success, invalid_lifecycle, next},{reject, approved, skip_all}]}
                ],
              {presentment_purchase_reversal,reject} =>
                [
                    {state_check,presentment_purchase_reversal,[{success, approved, next},{reject,invalid_lifecycle,next},{declined, invalid_lifecycle, next},{na,na,next}]}
                ],
              {refund,success} =>
                [
                    {must, purchase_auth_resp,[{true,na,next},{false,no_match,skip_all}]},
                    {state_check,purchase_auth_resp,[{approved, approved, next},{reject,invalid_lifecycle_declined_orig,next},{declined, invalid_lifecycle_declined_orig, next},{na,na,next}]}
                ],
              {refund,reject} =>
                [
                    {any,refund,[{success, invalid_lifecycle, next},{reject, approved, skip_all}]}
                ],
              {refund_reversal,success} =>
                [
                    {state_check,refund_reversal,[{reject, approved, next},{success,invalid_lifecycle,next},{declined, invalid_lifecycle, next},{na,na,next}]}
                ],
              {refund_reversal,reject} =>
                [
                    {must, purchase_auth_resp,[{true,na,next},{false,no_match,skip_all}]},
                    {state_check,purchase_auth_resp,[{approved, approved, next},{reject,invalid_lifecycle_declined_orig,next},{declined, invalid_lifecycle_declined_orig, next},{na,na,next}]},
                    {any,refund,[{success, invalid_lifecycle, next},{reject, approved, skip_all}]}
                ],
              default =>
                [
                    {must, purchase_auth_resp,[{true,na,next},{false,no_match,skip_all}]},
                    {state_check,purchase_auth_resp,[{approved, approved, next},{reject,invalid_lifecycle_declined_orig,next},{declined, invalid_lifecycle_declined_orig, next},{na,na,next}]},
                    {any,refund,[{success, invalid_lifecycle, next},{reject, approved, skip_all}]}
                ]}
           }
        ],
    presentment_cash =>
        [
           {evaluate_clearing_txn,
            #{{presentment_cash,success} =>
                [
                    {must_not,presentment_cash, [{true,na,next}, {false,duplicate,next}]}
                ],
              {presentment_cash,duplicate} =>
                [
                    {must_not,presentment_cash, [{true,na,next}, {false,duplicate,next}]}
                ],
              {presentment_cash,reject} =>
                [
                    {must, cash_auth_resp,[{true,na,next},{false,no_match,skip_all}]},
                    {state_check,cash_auth_resp,[{approved, approved, next},{reject,invalid_lifecycle_declined_orig,next},{declined, invalid_lifecycle_declined_orig, next},{na,na,next}]}
                ],
              {presentment_cash_reversal,success} =>
                [
                    {must, cash_auth_resp,[{true,na,next},{false,no_match,skip_all}]},
                    {state_check,cash_auth_resp,[{approved, approved, next},{reject,invalid_lifecycle_declined_orig,next},{declined, invalid_lifecycle_declined_orig, next},{na,na,next}]}
                ],
              {presentment_cash_reversal,reject} =>
                [
                    {state_check,presentment_cash_reversal,[{success, approved, next},{reject,invalid_lifecycle,next},{declined, invalid_lifecycle, next},{na,na,next}]}
                ],
              default =>
                [
                    {must, cash_auth_resp,[{true,na,next},{false,no_match,skip_all}]},
                    {state_check,cash_auth_resp,[{approved, approved, next},{reject,invalid_lifecycle_declined_orig,next},{declined, invalid_lifecycle_declined_orig, next},{na,na,next}]}
                ]}
           }
        ],
    refund =>
        [
           {evaluate_clearing_txn,
            #{{refund,success} =>
                [
                    {must, purchase_auth_resp,[{true,na,next},{false,no_match,skip_all}]},
                    {state_check,purchase_auth_resp,[{approved, approved, next},{reject,invalid_lifecycle_declined_orig,next},{declined, invalid_lifecycle_declined_orig, next},{na,na,next}]},
                    {must, presentment_purchase,[{true,na,next},{false,no_match,skip_all}]},
                    {state_check,presentment_purchase,[{success, approved, next},{reject,invalid_lifecycle_declined_orig,next},{declined, invalid_lifecycle_declined_orig, next},{na,na,next}]}
                ],
              {refund,reject} =>
                [
                    {must, purchase_auth_resp,[{true,na,next},{false,no_match,skip_all}]},
                    {state_check,purchase_auth_resp,[{approved, approved, next},{reject,invalid_lifecycle_declined_orig,next},{declined, invalid_lifecycle_declined_orig, next},{na,na,next}]},
                    {must, presentment_purchase,[{true,na,next},{false,no_match,skip_all}]},
                    {state_check,presentment_purchase,[{success, approved, next},{reject,invalid_lifecycle_declined_orig,next},{declined, invalid_lifecycle_declined_orig, next},{na,na,next}]},
                    {state_check,presentment_purchase_reversal,[{reject, approved, next},{success,invalid_lifecycle,next},{declined, invalid_lifecycle, next},{na,na,next}]}
                ],
              {presentment_purchase,success} =>
                [
                    {must, purchase_auth_resp,[{true,na,next},{false,no_match,skip_all}]},
                    {state_check,purchase_auth_resp,[{approved, approved, next},{reject,invalid_lifecycle_declined_orig,next},{declined, invalid_lifecycle_declined_orig, next},{na,na,next}]}
                ],
              {presentment_purchase,reject} =>
                [
                    {state_check,presentment_purchase,[{success, approved, next},{reject,invalid_lifecycle_declined_orig,next},{declined, invalid_lifecycle_declined_orig, next},{na,na,next}]}
                ],
              {presentment_purchase_reversal,success} =>
                [
                    {state_check,presentment_purchase_reversal,[{reject, approved, next},{success,invalid_lifecycle,next},{declined, invalid_lifecycle_declined_orig, next},{na,na,next}]}
                ],
              {presentment_purchase_reversal,reject} =>
                [
                    {must, purchase_auth_resp,[{true,na,next},{false,no_match,skip_all}]},
                    {state_check,purchase_auth_resp,[{approved, approved, next},{reject,invalid_lifecycle_declined_orig,next},{declined, invalid_lifecycle_declined_orig, next},{na,na,next}]},
                    {state_check,presentment_purchase,[{success, approved, next},{reject,invalid_lifecycle_declined_orig,next},{declined, invalid_lifecycle_declined_orig, next},{na,na,next}]}
                ],
              default =>
                [
                    {must, purchase_auth_resp,[{true,na,next},{false,no_match,skip_all}]},
                    {state_check,purchase_auth_resp,[{approved, approved, next},{reject,invalid_lifecycle_declined_orig,next},{declined, invalid_lifecycle_declined_orig, next},{na,na,next}]},
                    {must, presentment_purchase,[{true,na,next},{false,no_match,skip_all}]},
                    {state_check,presentment_purchase,[{success, approved, next},{reject,invalid_lifecycle_declined_orig,next},{declined, invalid_lifecycle_declined_orig, next},{na,na,next}]},
                    {state_check,presentment_purchase_reversal,[{reject, approved, next},{success,invalid_lifecycle,next},{declined, invalid_lifecycle, next},{na,na,next}]}
                ]}
           }
        ],
    refund_reversal =>
        [
          {evaluate,
            [
              {must,refund, [{true,na,next}, {false,no_match,skip_all}]},
              {state_check,refund,[{success, approved, next},{reject,invalid_lifecycle_declined_orig,next},{declined, invalid_lifecycle_declined_orig, next},{na,na,next}]}
            ]
          }
        ],
    presentment_purchase_reversal =>
        [
           {evaluate_clearing_txn,
            #{{presentment_purchase,success} =>
                [
                    {must, purchase_auth_resp,[{true,na,next},{false,no_match,skip_all}]},
                    {state_check,purchase_auth_resp,[{approved, approved, next},{reject,invalid_lifecycle_declined_orig,next},{declined, invalid_lifecycle_declined_orig, next},{na,na,next}]},
                    {any,refund,[{success, invalid_lifecycle, next},{reject, approved, skip_all}]}
                ],
              {presentment_purchase,reject} =>
                [
                    {state_check,presentment_purchase,[{success, approved, next},{reject,invalid_lifecycle,next},{declined, invalid_lifecycle_declined_orig, next},{na,na,next}]}
                ],
              {presentment_purchase_reversal,success} =>
                [
                    {state_check,presentment_purchase_reversal,[{reject, approved, next},{success,invalid_lifecycle,next},{declined, invalid_lifecycle_declined_orig, next},{na,na,next}]}
                ],
              {presentment_purchase_reversal,reject} =>
                [
                    {must, purchase_auth_resp,[{true,na,next},{false,no_match,skip_all}]},
                    {state_check,purchase_auth_resp,[{approved, approved, next},{reject,invalid_lifecycle_declined_orig,next},{declined, invalid_lifecycle_declined_orig, next},{na,na,next}]},
                    {must, presentment_purchase,[{true,na,next},{false,no_match,skip_all}]},
                    {state_check,presentment_purchase,[{success, approved, next},{reject,invalid_lifecycle_declined_orig,next},{declined, invalid_lifecycle_declined_orig, next},{na,na,next}]},
                    {any,refund,[{success, invalid_lifecycle, next},{reject, approved, skip_all}]}
                ],
              {refund,success} =>
                [
                    {any,refund,[{success, invalid_lifecycle, skip_all},{reject, approved, skip_all}]}
                ],
              {refund,reject} =>
                [
                    {must, purchase_auth_resp,[{true,na,next},{false,no_match,skip_all}]},
                    {state_check,purchase_auth_resp,[{approved, approved, next},{reject,invalid_lifecycle_declined_orig,next},{declined, invalid_lifecycle_declined_orig, next},{na,na,next}]},
                    {must, presentment_purchase,[{true,na,next},{false,no_match,skip_all}]},
                    {state_check,presentment_purchase,[{success, approved, next},{reject,invalid_lifecycle_declined_orig,next},{declined, invalid_lifecycle_declined_orig, next},{na,na,next}]},
                    {any,refund,[{success, invalid_lifecycle, next},{reject, approved, skip_all}]}
                ],
              {refund_reversal,success} =>
                [
                    {must, purchase_auth_resp,[{true,na,next},{false,no_match,skip_all}]},
                    {state_check,purchase_auth_resp,[{approved, approved, next},{reject,invalid_lifecycle_declined_orig,next},{declined, invalid_lifecycle_declined_orig, next},{na,na,next}]},
                    {must, presentment_purchase,[{true,na,next},{false,no_match,skip_all}]},
                    {state_check,presentment_purchase,[{success, approved, next},{reject,invalid_lifecycle_declined_orig,next},{declined, invalid_lifecycle_declined_orig, next},{na,na,next}]},
                    {any,refund,[{success, invalid_lifecycle, next},{reject, approved, skip_all}]}
                ],
              {refund_reversal,reject} =>
                [
                    {must, purchase_auth_resp,[{true,na,next},{false,no_match,skip_all}]},
                    {state_check,purchase_auth_resp,[{approved, approved, next},{reject,invalid_lifecycle_declined_orig,next},{declined, invalid_lifecycle_declined_orig, next},{na,na,next}]},
                    {must, presentment_purchase,[{true,na,next},{false,no_match,skip_all}]},
                    {state_check,presentment_purchase,[{success, approved, next},{reject,invalid_lifecycle_declined_orig,next},{declined, invalid_lifecycle_declined_orig, next},{na,na,next}]},
                    {any,refund,[{success, invalid_lifecycle, next},{reject, approved, skip_all}]}
                ],
              default =>
                [
                    {must, purchase_auth_resp,[{true,na,next},{false,no_match,skip_all}]},
                    {state_check,purchase_auth_resp,[{approved, approved, next},{reject,invalid_lifecycle_declined_orig,next},{declined, invalid_lifecycle_declined_orig, next},{na,na,next}]},
                    {must, presentment_purchase,[{true,na,next},{false,no_match,skip_all}]},
                    {state_check,presentment_purchase,[{success, approved, next},{reject,invalid_lifecycle_declined_orig,next},{declined, invalid_lifecycle_declined_orig, next},{na,na,next}]},
                    {any,refund,[{success, invalid_lifecycle, next},{reject, approved, skip_all}]}
                ]}
           }
        ],
    presentment_cash_reversal =>
        [
           {evaluate_clearing_txn,
            #{{presentment_cash,success} =>
                [
                    {must, cash_auth_resp,[{true,na,next},{false,no_match,skip_all}]},
                    {state_check,cash_auth_resp,[{approved, approved, next},{reject,invalid_lifecycle_declined_orig,next},{declined, invalid_lifecycle_declined_orig, next},{na,na,next}]}
                ],
              {presentment_cash,reject} =>
                [
                    {state_check,presentment_cash,[{success, approved, next},{reject,invalid_lifecycle,next},{declined, invalid_lifecycle_declined_orig, next},{na,na,next}]}
                ],
              {presentment_cash_reversal,success} =>
                [
                    {state_check,presentment_cash_reversal,[{reject, approved, next},{success,invalid_lifecycle,next},{declined, invalid_lifecycle_declined_orig, next},{na,na,next}]}
                ],
              {presentment_cash_reversal,reject} =>
                [
                    {must, cash_auth_resp,[{true,na,next},{false,no_match,skip_all}]},
                    {state_check,cash_auth_resp,[{approved, approved, next},{reject,invalid_lifecycle_declined_orig,next},{declined, invalid_lifecycle_declined_orig, next},{na,na,next}]},
                    {must, presentment_cash,[{true,na,next},{false,no_match,skip_all}]},
                    {state_check,presentment_cash,[{success, approved, next},{reject,invalid_lifecycle_declined_orig,next},{declined, invalid_lifecycle_declined_orig, next},{na,na,next}]}
                ],
              default =>
                [
                    {must, cash_auth_resp,[{true,na,next},{false,no_match,skip_all}]},
                    {state_check,cash_auth_resp,[{approved, approved, next},{reject,invalid_lifecycle_declined_orig,next},{declined, invalid_lifecycle_declined_orig, next},{na,na,next}]},
                    {must, presentment_cash,[{true,na,next},{false,no_match,skip_all}]},
                    {state_check,presentment_cash,[{success, approved, next},{reject,invalid_lifecycle_declined_orig,next},{declined, invalid_lifecycle_declined_orig, next},{na,na,next}]}
                ]}
           }
    ],
    send_money_req => [
                        {evaluate, [ {must_not, send_money_req, [{true,na,next}, {false,duplicate,next}] } ]}
                      ],

    fund_xfr_debit_req => [
                            {evaluate, [ {must_not, fund_xfr_debit_req, [{true,na,next}, {false,duplicate,next}] } ]}
                          ],

    fund_xfr_credit_req => [
                             {evaluate, [ {must_not, fund_xfr_credit_req, [{true,na,next}, {false,duplicate,next}] } ]}
                           ],

    send_money_resp => [
                          {evaluate, [
                                        {must,        send_money_req,  [{true,  na,next},
                                                                        {false, no_match,skip_all}]},
                                        {state_check, send_money_req,  [{timeout, late_response, skip_next},
                                                                        {success, success, next},
                                                                        {na,na,next}]},
                                        {must_not,    send_money_resp, [{true, na,next},
                                                                        {false,duplicate,next}]}
                                     ] }
                        ],

    fund_xfr_debit_resp => [
                            {evaluate, [
                                          {must,        fund_xfr_debit_req,  [{true,  na,next},
                                                                              {false, no_match,skip_all}]},
                                          {state_check, fund_xfr_debit_req,  [{timeout, late_response, skip_next},
                                                                              {success, success, next},
                                                                              {na,na,next}]},
                                          {must_not,    fund_xfr_debit_resp, [{true, na,next},
                                                                              {false,duplicate,next}]}
                                       ] }
                            ],

    fund_xfr_credit_resp => [
                               {evaluate, [
                                             {must,        fund_xfr_credit_req,  [{true,  na,next},
                                                                                  {false, no_match,skip_all}]},
                                             {state_check, fund_xfr_credit_req,  [{timeout, late_response, skip_next},
                                                                                  {success, success, next},
                                                                                  {na,na,next}]},
                                             {must_not,    fund_xfr_credit_resp, [{true, na,next},
                                                                                  {false,duplicate,next}]}
                                          ] }
                              ],

    fund_xfr_credit_adv_req =>  [
                                  {evaluate, [
                                                 {optional,     fund_xfr_credit_req,    [{true,na,next},{false,na,skip_next}]},
                                                 {optional,     fund_xfr_credit_resp,   [{true,na,next},{false,na,skip_next}]},
                                                 {state_check,  fund_xfr_credit_resp,   [{approved, approved, next},{na, na, next},
                                                                                         {declined, invalid_lifecycle, next}]   }
                                            ]

                                  }
                                ],

    fund_xfr_credit_adv_resp => [
                                  {evaluate, [
                                                {must,  fund_xfr_credit_adv_req, [{true, na, next}, {false, no_match, next}]}
                                             ]
                                  }
                                ],

    fund_xfr_debit_rev_adv_req =>  [
                                      {evaluate, [
                                                     {optional,     fund_xfr_debit_req,    [{true,na,next},{false,na,skip_next}]},
                                                     {optional,     fund_xfr_debit_resp,   [{true,na,next},{false,na,skip_next}]},
                                                     {state_check,  fund_xfr_debit_resp,   [{approved, approved, next},{na, na, next},
                                                                                            {declined, invalid_lifecycle, next}]   }
                                                ]

                                      }
                                    ],

    fund_xfr_debit_rev_adv_resp => [
                                      {evaluate, [
                                                    {must, fund_xfr_debit_rev_adv_req, [{true, na, next}, {false, no_match, next}]}
                                                 ]
                                      }
                                    ]
  }
}.
