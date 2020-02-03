%% {tran_type, [ [services_list], [transaction_consistency_checks sl no]] }

% Request :
{purchase_auth_req, [ [
                       tran_type_field_validator,
                       retriever,
                       non_core_field_validator,
                       cross_field_validator,
                       dependent_field_validator,
                       transaction_lifecycle_check,
                       member_profile,
                       %business_zone_code,
                       %transaction_classification,
                       emv_service,
                       %tran_type_and_mcc_check,
                       %enhanced_routing,
                       %issuer_limit_checker,
                       pin_translation,
                       %select_endpoint,
                       response_code_resolver,
                       correlation_id_generator,
                       transaction_id_generator,
                       action_manager
                      ],
                      []
                     ]
}.

{purchase_req, [ [
                  tran_type_field_validator,
                  retriever,
                  non_core_field_validator,
                  cross_field_validator,
                  dependent_field_validator,
                  transaction_lifecycle_check,
                  member_profile,
                  %business_zone_code,
                  %transaction_classification,
		          emv_service,
                  %tran_type_and_mcc_check,
                  %enhanced_routing,
                  %issuer_limit_checker,
                  pin_translation,
                  response_code_resolver,
                  correlation_id_generator,
                  transaction_id_generator,
                  action_manager
                 ],
                 []
               ]
}.

{purchase_reversal_adv_req, [ [
                               tran_type_field_validator,
                               retriever,
                               non_core_field_validator,
                               cross_field_validator,
                               dependent_field_validator,
                               transaction_lifecycle_check,
                               transaction_consistency_check,
                               member_profile,
                               business_zone_code,
                               enhanced_routing,
                               saf_checker,
                               issuer_limit_checker,
                               sdcm_checker,
                               select_endpoint,
                               response_code_resolver,
                               correlation_id_generator,
                               transaction_id_generator,
                               action_manager
                              ],
                              []
                            ]
}.

{purchase_reversal_adv_repeat_req, [ [
                                      tran_type_field_validator,
                                      retriever,
                                      non_core_field_validator,
                                      cross_field_validator,
                                      dependent_field_validator,
                                      transaction_lifecycle_check,
                                      transaction_consistency_check,
                                      member_profile,
                                      business_zone_code,
                                      enhanced_routing,
                                      saf_checker,
                                      issuer_limit_checker,
                                      sdcm_checker,
                                      select_endpoint,
                                      response_code_resolver,
                                      correlation_id_generator,
                                      transaction_id_generator,
                                      action_manager
                                     ],
                                     []
                                   ]
}.


{purchase_adv_req, [ [
                      tran_type_field_validator,
                      retriever,
                      non_core_field_validator,
                      cross_field_validator,
                      dependent_field_validator,
                      transaction_lifecycle_check,
                      member_profile,
                      business_zone_code,
                      transaction_classification,
                      tran_type_and_mcc_check,
                      enhanced_routing,
                      issuer_limit_checker,
                      sdcm_checker,
                      pin_translation,
                      select_endpoint,
                      saf_checker,
                      response_code_resolver,
                      correlation_id_generator,
                      transaction_id_generator,
                      action_manager
                     ],
                     []
                   ]
}.


{purchase_adv_repeat_req, [[
                            tran_type_field_validator,
                            retriever,
                            non_core_field_validator,
                            cross_field_validator,
                            dependent_field_validator,
                            transaction_lifecycle_check,
                            member_profile,
                            business_zone_code,
                            transaction_classification,
                            tran_type_and_mcc_check,
                            enhanced_routing,
                            issuer_limit_checker,
                            sdcm_checker,
                            pin_translation,
                            select_endpoint,
                            saf_checker,
                            response_code_resolver,
                            correlation_id_generator,
                            transaction_id_generator,
                            action_manager
                           ],
                           []
                          ]
}.


{purchase_auth_resp, [[
                       retriever,
                       tran_type_field_validator,
                       non_core_field_validator,
                       copy_elements_from_original,
                       transaction_lifecycle_check,
                       member_profile,
                       transaction_consistency_check,
                       tran_type_and_mcc_check,
                       response_code_resolver,
                       correlation_id_generator,
                       transaction_id_generator,
                       action_manager
                      ],
                      [
                       5, 7.1, 7.2, 7.3, 4, 8, 9, 3.01, 3.02, 3.03, 3.04, 3.05, 3.06, 3.07, 3.08, 3.09, 3.10, 3.11, 3.12,
                       12, 13, 15, 17, 20, 23, 24, 25.1, 25.2, 25.3, 25.4, 27, 30
                      ]
                     ]
}.

{purchase_resp, [[
                  retriever,
                  tran_type_field_validator,
                  non_core_field_validator,
		          copy_elements_from_original,
                  transaction_lifecycle_check,
                  member_profile,
		          transaction_consistency_check,
                  response_code_resolver,
                  correlation_id_generator,
                  transaction_id_generator,
                  action_manager
                 ],
                 [
                  5, 7.1, 7.2, 7.3, 4, 8, 9, 3.01, 3.02, 3.03, 3.04, 3.05, 3.06, 3.07, 3.08, 3.09, 3.10, 3.11, 3.12,
                  12, 13, 15, 17, 20, 23, 24, 25.1, 25.2, 25.3, 25.4, 27,30
                 ]
                ]
}.


{purchase_adv_resp, [[
                      retriever,
                      tran_type_field_validator,
                      non_core_field_validator,
			          copy_elements_from_original,
                      transaction_lifecycle_check,
		              transaction_consistency_check,
                      response_code_resolver,
                      correlation_id_generator,
                      transaction_id_generator,
                      action_manager
                     ],
                     [
                      5, 7.1, 7.2, 7.3, 4, 8, 9, 3.01, 3.02, 3.03, 3.04, 3.05, 3.06, 3.07, 3.08, 3.09, 3.10, 3.11, 3.12,
                      12, 13, 15, 17, 20, 23, 24, 25.1, 25.2, 25.3, 25.4, 27,30
                     ]
                    ]
}.

{purchase_reversal_adv_resp, [[
                               retriever,
                               tran_type_field_validator,
                               non_core_field_validator,
                               copy_elements_from_original,
                               transaction_lifecycle_check,
                               transaction_consistency_check,
                               response_code_resolver,
                               correlation_id_generator,
                               transaction_id_generator,
                               action_manager
                              ],
                              [
                               5, 7.1, 7.2, 7.3, 4, 8, 9, 3.01, 3.02, 3.03, 3.04, 3.05, 3.06, 3.07, 3.08, 3.09, 3.10, 3.11, 3.12,
                               12, 13, 15, 17, 20, 23, 24, 25.1, 25.2, 25.3, 25.4, 27, 30
                              ]
                             ]
}.


%Network Message :

{signin_req, [[
               core_field_validator,
               tran_type_field_validator,
               state_updator,
               response_code_resolver,
               action_manager
              ],
              []
             ]
}.

{signin_resp, [[
                core_field_validator,
                tran_type_field_validator,
                state_updator,
                response_code_resolver,
                action_manager
               ],
               [8]
              ]
}.

{signoff_req, [[
                core_field_validator,
                tran_type_field_validator,
                state_updator,
                response_code_resolver,
                action_manager
               ],
               []
              ]
}.

{signoff_resp, [[
                 core_field_validator,
                 tran_type_field_validator,
                 state_updator,
                 response_code_resolver,
                 action_manager
                ],
                [8]
               ]
}.

{echo_req, [[
             core_field_validator,
             tran_type_field_validator,
             state_updator,
             response_code_resolver,
             action_manager
            ],
            []
           ]
}.

{echo_resp, [[
              core_field_validator,
              tran_type_field_validator,
              state_updator,
              response_code_resolver,
              action_manager
             ],
             [8]
            ]
}.

%% File Update Message
{ gen_file_update_req, [ [ tran_type_field_validator,
                           retriever,
                           non_core_field_validator,
                           transaction_lifecycle_check,
                           member_profile,
                           file_update_service,
                           response_code_resolver,
                           correlation_id_generator,
                           transaction_id_generator,
                           action_manager
                         ],
                         []
                       ]
}.

{send_money_req, [[tran_type_field_validator,
                   retriever,
                   non_core_field_validator,
                   cross_field_validator,
                   dependent_field_validator,
                   transaction_lifecycle_check,
                   member_profile,
                   business_zone_code,
                   transaction_classification,
                   tran_type_and_mcc_check,
                   enhanced_routing,
%%                   issuer_limit_checker,
                   sdcm_checker,
                   pin_translation,
                   select_endpoint,
                   response_code_resolver,
                   correlation_id_generator,
                   transaction_id_generator,
                   action_manager
                  ],
                  []
                 ] }.

{send_money_resp, [[retriever,
                    tran_type_field_validator,
                    non_core_field_validator,
		            copy_elements_from_original,
                    transaction_lifecycle_check,
                    member_profile,
		            transaction_consistency_check,
                    response_code_resolver,
                    correlation_id_generator,
                    transaction_id_generator,
                    action_manager
                   ],
                   [17,20,23,24, 34,35, 7.1, 4,27, 3.01,3.02,3.03,3.04,3.05,3.06,3.07,3.08,3.09,3.10,3.11,3.12]
                  ] }.

{fund_xfr_debit_req, [[tran_type_field_validator,
                       retriever,
                       non_core_field_validator,
                       cross_field_validator,
                       dependent_field_validator,
                       transaction_lifecycle_check,
                       member_profile,
                       business_zone_code,
                       transaction_classification,
                       tran_type_and_mcc_check,
                       enhanced_routing,
%%                       issuer_limit_checker,
                       sdcm_checker,
                       pin_translation,
                       select_endpoint,
                       response_code_resolver,
                       correlation_id_generator,
                       transaction_id_generator,
                       action_manager
                      ],
                      []
                     ] }.

{fund_xfr_debit_resp, [[retriever,
                        tran_type_field_validator,
                        non_core_field_validator,
                        copy_elements_from_original,
                        transaction_lifecycle_check,
                        member_profile,
                        transaction_consistency_check,
                        response_code_resolver,
                        correlation_id_generator,
                        transaction_id_generator,
                        action_manager
                       ],
                       [17,20,23,24, 34,35, 7.1, 4,27, 3.01,3.02,3.03,3.04,3.05,3.06,3.07,3.08,3.09,3.10,3.11,3.12]
                      ] }.

{fund_xfr_credit_req, [[tran_type_field_validator,
                        retriever,
                        non_core_field_validator,
                        cross_field_validator,
                        dependent_field_validator,
                        transaction_lifecycle_check,
                        member_profile,
                        business_zone_code,
                        transaction_classification,
                        tran_type_and_mcc_check,
                        enhanced_routing,
%%                        issuer_limit_checker,
                        sdcm_checker,
                        pin_translation,
                        select_endpoint,
                        response_code_resolver,
                        correlation_id_generator,
                        transaction_id_generator,
                        action_manager
                       ],
                       []
                      ] }.

{fund_xfr_credit_resp, [[retriever,
                         tran_type_field_validator,
                         non_core_field_validator,
                         copy_elements_from_original,
                         transaction_lifecycle_check,
                         member_profile,
                         transaction_consistency_check,
                         response_code_resolver,
                         correlation_id_generator,
                         transaction_id_generator,
                         action_manager
                        ],
                        [17,20,23,24, 34,35, 7.1, 4,27, 3.01,3.02,3.03,3.04,3.05,3.06,3.07,3.08,3.09,3.10,3.11,3.12]
                       ] }.