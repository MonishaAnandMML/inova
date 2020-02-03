%%%%% {action_code, [[task_list] , return_flag]}

{forward_to_destination, [[
                           path_setter,
                           msg_builder,
                           transaction_datastore,
                           se_message_forwarder,
                           timeout_calculator
                           ], no]}.

{forward_to_destination_ledger, [[
                           tran_type_and_mcc_check,
                           fees_charges_calculator,
                           clearing_service,
                           se_ledger,
                           path_setter,
                           msg_builder,
                           transaction_datastore,
                           se_message_forwarder,
                           timeout_calculator
                           ], no]}.

{conditional_forward_to_destination_no_timer, [[
                           %saf_checker,
                           extended_task_list_selector
                           %path_setter,
                           %msg_builder,
                           %transaction_datastore,
                           %se_message_forwarder
                           ], no]}.

{enqueue_and_forward_to_destination, [[
                                        path_setter,
                                        msg_builder,
                                        transaction_datastore,
                                        advice_notification_enqueuer,
                                        se_message_forwarder
                                      ], no]}.

{response_to_destination, [[
                            transaction_datastore,
                            response_generator,
                            path_setter,
                            msg_builder,
                            transaction_datastore,
                            se_message_forwarder
                            ], yes]}.

{response_to_source, [[transaction_datastore,
                       response_generator,
                       %path_setter,
                       msg_builder,
                       transaction_datastore,
                       se_message_forwarder], yes]}.

{stip_response_to_source, [[transaction_datastore,
                            response_generator,
                            path_setter,
                            fees_charges_calculator,
                            clearing_service,
                            se_ledger,
                            msg_builder,
                            transaction_datastore,
                            se_message_forwarder], yes]}.

{claim_response, [[transaction_datastore,
                       advice_response_generator,
                       path_setter,
                       msg_builder,
                       transaction_datastore,
                       se_message_forwarder], yes]}.

{response_to_source_with_update, [[
                       se_event_code_updator,
                       response_generator,
                       path_setter,
                       msg_builder,
                       transaction_datastore,
                       se_message_forwarder
                       ], yes]}.

{reversal_advice_to_dest, [[
                            reversal_advice_request_generator,
                            transaction_id_generator,
                            path_setter,
                            msg_builder,
                            transaction_datastore,
                            advice_notification_enqueuer,
                            se_message_forwarder
                            ], no]}.

{reversal_advice_to_recovery,   [[
                         reversal_advice_request_generator,
                         transaction_id_generator,
                         recovery_datastore,
                         recovery_enqueuer
                         ], no]}.

{advice_to_recovery,   [[
                         advice_request_generator,
                         transaction_id_generator,
                         recovery_datastore,
                         recovery_enqueuer
                         ], no]}.

{advice_to_dest,       [[
                         advice_request_generator,
                         transaction_id_generator,
                         enhanced_routing,
                         select_endpoint,
                         path_setter,
                         msg_builder,
                         transaction_datastore,
                         advice_notification_enqueuer,
                         se_message_forwarder
                         ], yes]}.

{reversal_advice_to_source, [[
                              reversal_advice_request_generator,
                              transaction_id_generator,
                              path_setter,
                              msg_builder,
                              transaction_datastore,
                              advice_notification_enqueuer,
                              se_message_forwarder
                              ], yes]}.

{conditional_reversal_advice_to_source, [[
                              reversal_advice_request_generator,
                              saf_checker,
                              transaction_id_generator,
                              path_setter,
                              msg_builder,
                              transaction_datastore,
                              advice_notification_enqueuer,
                              se_message_forwarder
                              ], yes]}.

{reversal_advice_return_to_source, [[
                              path_setter,
                              msg_builder,
                              transaction_datastore,
                              se_message_forwarder], yes]}.

{advice_return_to_source, [[
                              path_setter,
                              msg_builder,
                              transaction_datastore,
                              se_message_forwarder], yes]}.

{return_bad_msg_to_source, [[bad_message_handler, se_message_forwarder], yes]}.

{drop_message, [[drop_message_handler], no]}.

{online_key_exchange_req_approved, [[transaction_datastore,
				 network_msg_response_generator,
				 path_setter,
				 msg_builder,
				 transaction_datastore, 
				 se_message_forwarder], yes]}.

{online_key_exchange_req_declined, [[transaction_datastore,
				 network_msg_response_generator,
				 path_setter,
				 msg_builder, 
				 transaction_datastore, 
				 se_message_forwarder], yes]}.

{online_key_exchange_generation, [[online_key_exchange_request_generator,
				   path_setter,
				   correlation_id_generator,
				   transaction_id_generator,
				   msg_builder,
				   transaction_datastore, 
				   se_message_forwarder], yes]}.

{online_key_exchange_resp_approved, [ [ transaction_datastore], no]}.

{online_key_exchange_resp_declined, [ [  transaction_datastore,  
					 path_setter,
					 msg_builder, 
					 transaction_datastore, 
					 se_message_forwarder], yes]}.

{repeat_advice, [[], no]}.


{nw_msg_approved, [[network_msg_response_generator,
                    path_setter,
                    msg_builder,
                    se_message_forwarder], yes]}.

{nw_msg_declined, [[network_msg_response_generator,
                    path_setter,
                    msg_builder,
                    se_message_forwarder], yes]}.

{nw_msg_repeat, [[network_msg_response_generator], no]}.

{bill_payment_req_response, [[  transaction_datastore,
				                bill_payment_msg_response_generator,
				                path_setter,
                                fees_charges_calculator,
                                clearing_service,
                                se_ledger,
				                msg_builder,
				                transaction_datastore,
				                se_message_forwarder],
				                yes]}.

{gen_file_update_req_approved, [[
                                 network_msg_response_generator,
                                 path_setter,
                                 msg_builder,
                                 se_message_forwarder
                                ],
                                yes]}.

{gen_file_update_req_declined, [[
                                 network_msg_response_generator,
                                 path_setter,
                                 msg_builder,
                                 se_message_forwarder
                                ],
                                yes]}.

{clearing_forward_to_destination, [[
                           clearing_response_code_updator,
                           fees_charges_calculator,
                           clearing_service,
                           se_ledger,
                           path_setter,
                           msg_builder,
                           transaction_datastore,
                           grpc_msg_forwarder
                           ], no]}.


{clearing_response_to_source, [[
                       clearing_response_code_updator,
                       path_setter,
                       msg_builder,
                       transaction_datastore,
                       grpc_msg_forwarder], yes]}.

{orchestrate_and_send_to_remitter, [[
                                        transaction_datastore,
                                        p2p_orchestrator_service,
                                        select_endpoint,
                                        response_code_resolver,
                                        action_manager
                                    ],
                                    no]}.

{send_to_remitter, [[
                     path_setter,
                     msg_builder,
                     transaction_datastore,
                     se_message_forwarder,
                     timeout_calculator
                    ],
                    no]}.

{orchestrate_and_send_to_beneficiary, [[
                                        transaction_datastore,
                                        p2p_orchestrator_service,
                                        select_endpoint,
                                        response_code_resolver,
                                        action_manager
                                      ],
                                      no]}.

{send_to_beneficiary, [[
                        path_setter,
                        msg_builder,
                        transaction_datastore,
                        se_message_forwarder,
                        timeout_calculator
                       ],
                       no]}.

{orchestrate_and_send_to_psp_or_remitter, [[
                                            transaction_datastore,
                                            p2p_orchestrator_service,
                                            select_endpoint,
                                            response_code_resolver,
                                            action_manager
                                           ],
                                           no ]}.

{response_to_psp, [[
                    path_setter,
                    msg_builder,
                    transaction_datastore,
                    se_message_forwarder,
                    timeout_calculator
                   ],
                   no]}.