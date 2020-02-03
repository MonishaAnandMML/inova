%% Profile contains mapping of Trantype, Entity to Consider and Data to publish.
%%
%% { Tran_type, [ Entity to Consider, ... ], [ Data to publish in ISO Msg, ... ]}
%%
%%

{purchase_req, [
                {src_settlement,  <<"SourceSeEntityId">>},
                {dst_settlement,  <<"DestSeEntityID">>  },
                {ntwk_settlement, <<"NetworkID">>       },
                {billing,         <<"AccountRange">>    }
               ],
               [
                {<<"AmountSettlement">>,       {dst_settlement,amount  }},
                {<<"CurrencyCodeSettlement">>, {dst_settlement,currency}},
                {<<"AmountBilling">>,          {billing, amount }       },
                {<<"CurrencyCodeBilling">>,    {billing, currency }     },
                {<<"AmountNetwork">>,          {ntwk_settlement, amount}},
                {<<"CurrencyCodeNetwork">>,     {ntwk_settlement, currency}}
               ]
}.

{purchase_resp,[
                {src_settlement,  <<"SourceSeEntityId">>},
                {dst_settlement,  <<"DestSeEntityID">>  },
                {ntwk_settlement, <<"NetworkID">>       },
                {billing,         <<"AccountRange">>    }
               ],
               [
                {<<"AmountSettlement">>,       {dst_settlement,amount  }},
                {<<"CurrencyCodeSettlement">>, {dst_settlement,currency}},
                {<<"AmountBilling">>,          {billing, amount}        },
                {<<"CurrencyCodeBilling">>,    {billing, currency}      },
                {<<"AmountNetwork">>,          {ntwk_settlement, amount}},
                {<<"CurrencyCodeNetwork">>,     {ntwk_settlement, currency}}
               ]
}.

{purchase_auth_req,[
                    {src_settlement,  <<"SourceSeEntityId">>},
                    {dst_settlement,  <<"DestSeEntityID">>  },
                    {ntwk_settlement, <<"NetworkID">>       },
                    {billing,         <<"AccountRange">>    }
                   ],
                   [
                    {<<"AmountSettlement">>,       {dst_settlement,amount  }},
                    {<<"CurrencyCodeSettlement">>, {dst_settlement,currency}},
                    {<<"AmountBilling">>,          {billing, amount}        },
                    {<<"CurrencyCodeBilling">>,    {billing, currency}      },
                    {<<"AmountNetwork">>,          {ntwk_settlement, amount}},
                    {<<"CurrencyCodeNetwork">>,     {ntwk_settlement, currency}}
                   ]
}.

{purchase_auth_resp,[
                     {src_settlement,  <<"SourceSeEntityId">>},
                     {dst_settlement,  <<"DestSeEntityID">>  },
                     {ntwk_settlement, <<"NetworkID">>       },
                     {billing,         <<"AccountRange">>    }
                    ],
                    [
                     {<<"AmountSettlement">>,       {dst_settlement,amount  }},
                     {<<"CurrencyCodeSettlement">>, {dst_settlement,currency}},
                     {<<"AmountBilling">>,          {billing, amount}        },
                     {<<"CurrencyCodeBilling">>,    {billing, currency}      },
                     {<<"AmountNetwork">>,          {ntwk_settlement, amount}},
                     {<<"CurrencyCodeNetwork">>,     {ntwk_settlement, currency}}
                    ]
}.

{purchase_reversal_adv_req,[
                            {src_settlement,  <<"SourceSeEntityId">>},
                            {dst_settlement,  <<"DestSeEntityID">>  },
                            {ntwk_settlement, <<"NetworkID">>       },
                            {billing,         <<"AccountRange">>    }
                           ],
                           [
                            {<<"AmountSettlement">>,       {dst_settlement,amount  }},
                            {<<"CurrencyCodeSettlement">>, {dst_settlement,currency}},
                            {<<"AmountBilling">>,          {billing, amount}        },
                            {<<"CurrencyCodeBilling">>,    {billing, currency}      },
                            {<<"AmountNetwork">>,          {ntwk_settlement, amount}},
                            {<<"CurrencyCodeNetwork">>,     {ntwk_settlement, currency}}
                           ]
}.

{purchase_reversal_adv_resp,[
                             {src_settlement,  <<"SourceSeEntityId">>},
                             {dst_settlement,  <<"DestSeEntityID">>  },
                             {ntwk_settlement, <<"NetworkID">>       },
                             {billing,         <<"AccountRange">>    }
                            ],
                            [
                             {<<"AmountSettlement">>,       {dst_settlement,amount  }},
                             {<<"CurrencyCodeSettlement">>, {dst_settlement,currency}},
                             {<<"AmountBilling">>,          {billing, amount}        },
                             {<<"CurrencyCodeBilling">>,    {billing, currency}      },
                             {<<"AmountNetwork">>,          {ntwk_settlement, amount}},
                             {<<"CurrencyCodeNetwork">>,     {ntwk_settlement, currency}}
                            ]
}.

{purchase_reversal_adv_repeat_req,[
                                   {src_settlement,  <<"SourceSeEntityId">>},
                                   {dst_settlement,  <<"DestSeEntityID">>  },
                                   {ntwk_settlement, <<"NetworkID">>       },
                                   {billing,         <<"AccountRange">>    }
                                  ],
                                  [
                                   {<<"AmountSettlement">>,       {dst_settlement,amount  }},
                                   {<<"CurrencyCodeSettlement">>, {dst_settlement,currency}},
                                   {<<"AmountBilling">>,          {billing, amount}        },
                                   {<<"CurrencyCodeBilling">>,    {billing, currency}      },
                                   {<<"AmountNetwork">>,          {ntwk_settlement, amount}},
                                   {<<"CurrencyCodeNetwork">>,     {ntwk_settlement, currency}}
                                  ]
}.

{purchase_adv_req,[
                   {src_settlement,  <<"SourceSeEntityId">>},
                   {dst_settlement,  <<"DestSeEntityID">>  },
                   {ntwk_settlement, <<"NetworkID">>       },
                   {billing,         <<"AccountRange">>    }
                  ],
                  [
                   {<<"AmountSettlement">>,       {dst_settlement,amount  }},
                   {<<"CurrencyCodeSettlement">>, {dst_settlement,currency}},
                   {<<"AmountBilling">>,          {billing, amount}        },
                   {<<"CurrencyCodeBilling">>,    {billing, currency}      },
                   {<<"AmountNetwork">>,          {ntwk_settlement, amount}},
                   {<<"CurrencyCodeNetwork">>,     {ntwk_settlement, currency}}
                  ]
}.

{purchase_adv_resp,[
                    {src_settlement,  <<"SourceSeEntityId">>},
                    {dst_settlement,  <<"DestSeEntityID">>  },
                    {ntwk_settlement, <<"NetworkID">>       },
                    {billing,         <<"AccountRange">>    }
                   ],
                   [
                    {<<"AmountSettlement">>,       {dst_settlement,amount  }},
                    {<<"CurrencyCodeSettlement">>, {dst_settlement,currency}},
                    {<<"AmountBilling">>,          {billing, amount}        },
                    {<<"CurrencyCodeBilling">>,    {billing, currency}      },
                    {<<"AmountNetwork">>,          {ntwk_settlement, amount}},
                    {<<"CurrencyCodeNetwork">>,    {ntwk_settlement, currency}}
                   ]
}.

{purchase_adv_repeat_req,[
                          {src_settlement,  <<"SourceSeEntityId">>},
                          {dst_settlement,  <<"DestSeEntityID">>  },
                          {ntwk_settlement, <<"NetworkID">>       },
                          {billing,         <<"AccountRange">>    }
                         ],
                         [
                          {<<"AmountSettlement">>,       {dst_settlement,amount  }},
                          {<<"CurrencyCodeSettlement">>, {dst_settlement,currency}},
                          {<<"AmountBilling">>,          {billing, amount}        },
                          {<<"CurrencyCodeBilling">>,    {billing, currency}      },
                          {<<"AmountNetwork">>,          {ntwk_settlement, amount}},
                          {<<"CurrencyCodeNetwork">>,     {ntwk_settlement, currency}}
                         ]
}.

{cash_req,[
           {src_settlement,  <<"SourceSeEntityId">>},
           {dst_settlement,  <<"DestSeEntityID">>  },
           {ntwk_settlement, <<"NetworkID">>       },
           {billing,         <<"AccountRange">>    }
         ],
         [
          {<<"AmountSettlement">>,       {dst_settlement,amount  }},
          {<<"CurrencyCodeSettlement">>, {dst_settlement,currency}},
          {<<"AmountBilling">>,          {billing, amount}        },
          {<<"CurrencyCodeBilling">>,    {billing, currency}      },
          {<<"AmountNetwork">>,          {ntwk_settlement, amount}},
          {<<"CurrencyCodeNetwork">>,     {ntwk_settlement, currency}}
         ]
}.

{cash_resp,[
            {src_settlement,  <<"SourceSeEntityId">>},
            {dst_settlement,  <<"DestSeEntityID">>  },
            {ntwk_settlement, <<"NetworkID">>       },
            {billing,         <<"AccountRange">>    }
           ],
           [
            {<<"AmountSettlement">>,       {dst_settlement,amount  }},
            {<<"CurrencyCodeSettlement">>, {dst_settlement,currency}},
            {<<"AmountBilling">>,          {billing, amount}        },
            {<<"CurrencyCodeBilling">>,    {billing, currency}      },
            {<<"AmountNetwork">>,          {ntwk_settlement, amount}},
            {<<"CurrencyCodeNetwork">>,     {ntwk_settlement, currency}}
           ]
}.

{cash_auth_req,[
                {src_settlement,  <<"SourceSeEntityId">>},
                {dst_settlement,  <<"DestSeEntityID">>  },
                {ntwk_settlement, <<"NetworkID">>       },
                {billing,         <<"AccountRange">>    }
              ],
              [
               {<<"AmountSettlement">>,       {dst_settlement,amount  }},
               {<<"CurrencyCodeSettlement">>, {dst_settlement,currency}},
               {<<"AmountBilling">>,          {billing, amount}        },
               {<<"CurrencyCodeBilling">>,    {billing, currency}      },
               {<<"AmountNetwork">>,          {ntwk_settlement, amount}},
               {<<"CurrencyCodeNetwork">>,     {ntwk_settlement, currency}}
              ]
}.

{cash_auth_resp,[
                 {src_settlement,  <<"SourceSeEntityId">>},
                 {dst_settlement,  <<"DestSeEntityID">>  },
                 {ntwk_settlement, <<"NetworkID">>       },
                 {billing,         <<"AccountRange">>    }
                ],
                [
                 {<<"AmountSettlement">>,       {dst_settlement,amount  }},
                 {<<"CurrencyCodeSettlement">>, {dst_settlement,currency}},
                 {<<"AmountBilling">>,          {billing, amount}        },
                 {<<"CurrencyCodeBilling">>,    {billing, currency}      },
                 {<<"AmountNetwork">>,          {ntwk_settlement, amount}},
                 {<<"CurrencyCodeNetwork">>,     {ntwk_settlement, currency}}
                ]
}.

{cash_reversal_adv_req,[
                        {src_settlement,  <<"SourceSeEntityId">>},
                        {dst_settlement,  <<"DestSeEntityID">>  },
                        {ntwk_settlement, <<"NetworkID">>       },
                        {billing,         <<"AccountRange">>    }
                      ],
                      [
                       {<<"AmountSettlement">>,       {dst_settlement,amount  }},
                       {<<"CurrencyCodeSettlement">>, {dst_settlement,currency}},
                       {<<"AmountBilling">>,          {billing, amount}        },
                       {<<"CurrencyCodeBilling">>,    {billing, currency}      },
                       {<<"AmountNetwork">>,          {ntwk_settlement, amount}},
                       {<<"CurrencyCodeNetwork">>,     {ntwk_settlement, currency}}
                      ]
}.

{cash_reversal_adv_resp,[
                         {src_settlement,  <<"SourceSeEntityId">>},
                         {dst_settlement,  <<"DestSeEntityID">>  },
                         {ntwk_settlement, <<"NetworkID">>       },
                         {billing,         <<"AccountRange">>    }
                        ],
                        [
                         {<<"AmountSettlement">>,       {dst_settlement,amount  }},
                         {<<"CurrencyCodeSettlement">>, {dst_settlement,currency}},
                         {<<"AmountBilling">>,          {billing, amount}        },
                         {<<"CurrencyCodeBilling">>,    {billing, currency}      },
                         {<<"AmountNetwork">>,          {ntwk_settlement, amount}},
                         {<<"CurrencyCodeNetwork">>,     {ntwk_settlement, currency}}
                        ]
}.

{cash_reversal_adv_repeat_req,[
                               {src_settlement,  <<"SourceSeEntityId">>},
                               {dst_settlement,  <<"DestSeEntityID">>  },
                               {ntwk_settlement, <<"NetworkID">>       },
                               {billing,         <<"AccountRange">>    }
                              ],
                              [
                               {<<"AmountSettlement">>,       {dst_settlement,amount  }},
                               {<<"CurrencyCodeSettlement">>, {dst_settlement,currency}},
                               {<<"AmountBilling">>,          {billing, amount}        },
                               {<<"CurrencyCodeBilling">>,    {billing, currency}      },
                               {<<"AmountNetwork">>,          {ntwk_settlement, amount}},
                               {<<"CurrencyCodeNetwork">>,     {ntwk_settlement, currency}}
                              ]
}.

{cash_adv_req,[
                {src_settlement,  <<"SourceSeEntityId">>},
                {dst_settlement,  <<"DestSeEntityID">>  },
                {ntwk_settlement, <<"NetworkID">>       },
                {billing,         <<"AccountRange">>    }
              ],
              [
               {<<"AmountSettlement">>,       {dst_settlement,amount  }},
               {<<"CurrencyCodeSettlement">>, {dst_settlement,currency}},
               {<<"AmountBilling">>,          {billing, amount}        },
               {<<"CurrencyCodeBilling">>,    {billing, currency}      },
               {<<"AmountNetwork">>,          {ntwk_settlement, amount}},
               {<<"CurrencyCodeNetwork">>,     {ntwk_settlement, currency}}
              ]
}.

{cash_adv_resp,[
                {src_settlement,  <<"SourceSeEntityId">>},
                {dst_settlement,  <<"DestSeEntityID">>  },
                {ntwk_settlement, <<"NetworkID">>       },
                {billing,         <<"AccountRange">>    }
               ],
               [
                {<<"AmountSettlement">>,       {dst_settlement,amount  }},
                {<<"CurrencyCodeSettlement">>, {dst_settlement,currency}},
                {<<"AmountBilling">>,          {billing, amount}        },
                {<<"CurrencyCodeBilling">>,    {billing, currency}      },
                {<<"AmountNetwork">>,          {ntwk_settlement, amount}},
                {<<"CurrencyCodeNetwork">>,     {ntwk_settlement, currency}}
               ]
}.

{cash_adv_repeat_req,[
                      {src_settlement,  <<"SourceSeEntityId">>},
                      {dst_settlement,  <<"DestSeEntityID">>  },
                      {ntwk_settlement, <<"NetworkID">>       },
                      {billing,         <<"AccountRange">>    }
                     ],
                     [
                      {<<"AmountSettlement">>,       {dst_settlement,amount  }},
                      {<<"CurrencyCodeSettlement">>, {dst_settlement,currency}},
                      {<<"AmountBilling">>,          {billing, amount}        },
                      {<<"CurrencyCodeBilling">>,    {billing, currency}      },
                      {<<"AmountNetwork">>,          {ntwk_settlement, amount}},
                      {<<"CurrencyCodeNetwork">>,     {ntwk_settlement, currency}}
                     ]
}.


{presentment_purchase,  [
                          {src_settlement,  <<"SourceSeEntityId">>},
                          {dst_settlement,  <<"DestSeEntityID">>  },
                          {ntwk_settlement, <<"NetworkID">>       },
                          {billing,         <<"AccountRange">>    }
                         ],
                         [
                          {<<"AmountSettlement">>,       {dst_settlement,amount  }},
                          {<<"CurrencyCodeSettlement">>, {dst_settlement,currency}},
                          {<<"AmountBilling">>,          {billing, amount}        },
                          {<<"CurrencyCodeBilling">>,    {billing, currency}      },
                          {<<"AmountNetwork">>,          {ntwk_settlement, amount}},
                          {<<"CurrencyCodeNetwork">>,    {ntwk_settlement, currency}}
                         ]
}.

{presentment_purchase_reversal, [
                                  {src_settlement,  <<"SourceSeEntityId">>},
                                  {dst_settlement,  <<"DestSeEntityID">>  },
                                  {ntwk_settlement, <<"NetworkID">>       },
                                  {billing,         <<"AccountRange">>    }
                                 ],
                                 [
                                  {<<"AmountSettlement">>,       {dst_settlement,amount  }},
                                  {<<"CurrencyCodeSettlement">>, {dst_settlement,currency}},
                                  {<<"AmountBilling">>,          {billing, amount}        },
                                  {<<"CurrencyCodeBilling">>,    {billing, currency}      },
                                  {<<"AmountNetwork">>,          {ntwk_settlement, amount}},
                                  {<<"CurrencyCodeNetwork">>,    {ntwk_settlement, currency}}
                                 ]
}.

{presentment_cash,  [
                      {src_settlement,  <<"SourceSeEntityId">>},
                      {dst_settlement,  <<"DestSeEntityID">>  },
                      {ntwk_settlement, <<"NetworkID">>       },
                      {billing,         <<"AccountRange">>    }
                     ],
                     [
                      {<<"AmountSettlement">>,       {dst_settlement,amount  }},
                      {<<"CurrencyCodeSettlement">>, {dst_settlement,currency}},
                      {<<"AmountBilling">>,          {billing, amount}        },
                      {<<"CurrencyCodeBilling">>,    {billing, currency}      },
                      {<<"AmountNetwork">>,          {ntwk_settlement, amount}},
                      {<<"CurrencyCodeNetwork">>,     {ntwk_settlement, currency}}
                     ]
}.

{presentment_cash_reversal, [
                              {src_settlement,  <<"SourceSeEntityId">>},
                              {dst_settlement,  <<"DestSeEntityID">>  },
                              {ntwk_settlement, <<"NetworkID">>       },
                              {billing,         <<"AccountRange">>    }
                             ],
                             [
                              {<<"AmountSettlement">>,       {dst_settlement,amount  }},
                              {<<"CurrencyCodeSettlement">>, {dst_settlement,currency}},
                              {<<"AmountBilling">>,          {billing, amount}        },
                              {<<"CurrencyCodeBilling">>,    {billing, currency}      },
                              {<<"AmountNetwork">>,          {ntwk_settlement, amount}},
                              {<<"CurrencyCodeNetwork">>,     {ntwk_settlement, currency}}
                             ]
}.

{refund,[
          {src_settlement,  <<"SourceSeEntityId">>},
          {dst_settlement,  <<"DestSeEntityID">>  },
          {ntwk_settlement, <<"NetworkID">>       },
          {billing,         <<"AccountRange">>    }
         ],
         [
          {<<"AmountSettlement">>,       {dst_settlement,amount  }},
          {<<"CurrencyCodeSettlement">>, {dst_settlement,currency}},
          {<<"AmountBilling">>,          {billing, amount}        },
          {<<"CurrencyCodeBilling">>,    {billing, currency}      },
          {<<"AmountNetwork">>,          {ntwk_settlement, amount}},
          {<<"CurrencyCodeNetwork">>,     {ntwk_settlement, currency}}
         ]
}.


{refund_reversal,[
                  {src_settlement,  <<"SourceSeEntityId">>},
                  {dst_settlement,  <<"DestSeEntityID">>  },
                  {ntwk_settlement, <<"NetworkID">>       },
                  {billing,         <<"AccountRange">>    }
                 ],
                 [
                  {<<"AmountSettlement">>,       {dst_settlement,amount  }},
                  {<<"CurrencyCodeSettlement">>, {dst_settlement,currency}},
                  {<<"AmountBilling">>,          {billing, amount}        },
                  {<<"CurrencyCodeBilling">>,    {billing, currency}      },
                  {<<"AmountNetwork">>,          {ntwk_settlement, amount}},
                  {<<"CurrencyCodeNetwork">>,     {ntwk_settlement, currency}}
                 ]
}.

{bill_payment_req, [
                {src_settlement,  <<"SourceSeEntityId">>},
                {dst_settlement,  <<"DestSeEntityID">>  },
                {ntwk_settlement, <<"NetworkID">>       },
                {billing,         <<"AccountRange">>    }
               ],
               [
                {<<"AmountSettlement">>,       {dst_settlement,amount  }},
                {<<"CurrencyCodeSettlement">>, {dst_settlement,currency}},
                {<<"AmountBilling">>,          {billing, amount }       },
                {<<"CurrencyCodeBilling">>,    {billing, currency }     },
                {<<"AmountNetwork">>,          {ntwk_settlement, amount}},
                {<<"CurrencyCodeNetwork">>,     {ntwk_settlement, currency}}
               ]
}.

