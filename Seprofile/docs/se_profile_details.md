| Sl No | Profile Name                             |                | services using                           |      |
| ----- | ---------------------------------------- | -------------- | ---------------------------------------- | ---- |
| 1     | acc_group_fee_rate                       | platform_store | accumulator_fees_calculator              |      |
| 2     | acc_group_id                             | platform_store | accumulator_fees_calculator              |      |
| 3     | accumulation_group_rules                 | Doubt          | fees_charges_calculator.erl              |      |
| 4     | account_range.profile                    | profile_store  |                                          |      |
| 5     | acquirer.profile                         | profile_store  |                                          |      |
| 6     | action_code_to_task_list.profile         | platform_store | action_manager.erl, path_setter.erl      |      |
| 7     | advice_notification_config.profile       | platform_store | advice_notification_enqueuer.erl, recovery_enqueuer.erl |      |
| 8     | amount_tier_configuration.profile        | platform_store | transaction_classification.erl           |      |
| 9     | attributes_timeout.profile               | platform_store | timeout_calculator.erl                   |      |
| 10    | brand.profile                            | profile_store  |                                          |      |
| 11    | card_number_reject_code_mapping.profile  | platform_store | stip_authorization.erl                   |      |
| 12    | country_code                             | platform_store | business_zone_code.erl                   |      |
| 13    | card_product.profile                     | profile_store  |                                          |      |
| 14    | card_product_schema.profile              | profile_store  |                                          |      |
| 15    | currency_code_transaction.profile        | platform_store |                                          |      |
| 16    | dashboard_metrics_label_mapping          | profile_store  | se_message_forwarder.erl, stip_authorization.erl |      |
| 17    | data_field_definition.profile            | platform_store | header_parser.erl, iso_data_parser.erl   |      |
| 18    | destination_end_point.profile            | platform_store |                                          |      |
| 19    | dr_cr_master                             | platform_store | se_ledger.erl                            |      |
| 20    | dr_cr_rule                               | platform_store | se_ledger.erl                            |      |
| 21    | end_point.CT                             | platform_store |                                          |      |
| 22    | end_point.profile                        | profile_store  |                                          |      |
| 23    | event_code_action_code.profile           | platform_store | action_manager.erl, se_ledger.erl        |      |
| 24    | extended_tran_type_parameters            | platform_store | extended_task_list_selector.erl          |      |
| 25    | fee_groups                               | profile_store  | fees_charges_calculator.erl              |      |
| 26    | fee_rates                                | profile_store  | fees_charges_calculator.erl              |      |
| 27    | fee_rules                                | profile_store  | fees_charges_calculator.erl              |      |
| 28    | formatter_1_response_code                | profile_store  |                                          |      |
| 29    | formatter.profile                        | profile_store  |                                          |      |
| 30    | formatter_se_response_code_mapping.profile | platform_store |                                          |      |
| 31    | function_code.profile                    | platform_store |                                          |      |
| 32    | header_field_definition.profile          | platform_store |                                          |      |
| 33    | header_formats.profile                   | profile_store  |                                          |      |
| 34    | ledger_template                          | platform_store | se_ledger.erl                            |      |
| 35    | mcc_for_network_id_1                     | profile_store  |                                          |      |
| 36    | mcc_for_network_id_2                     | profile_store  |                                          |      |
| 37    | merchant_category_code.profile           | platform_store | transaction_classification.erl           |      |
| 38    | message_reason_code.profile              | platform_store |                                          |      |
| 39    | message_type_identifier.profile          | platform_store |                                          |      |
| 40    | network.profile                          | profile_store  |                                          |      |
| 41    | pin_block.profile                        | platform_store | hsm_config_data.erl                      |      |
| 42    | pos_data_code_authentication_capability  | platform_store |                                          |      |
| 43    | pos_data_code_authentication_entity      | platform_store |                                          |      |
| 44    | pos_data_code_authentication_method      | platform_store |                                          |      |
| 45    | pos_data_code_capture_capability         | platform_store |                                          |      |
| 46    | pos_data_code_card_data_input_mode       | platform_store |                                          |      |
| 47    | pos_data_code_card_holder_present        | platform_store |                                          |      |
| 48    | pos_data_code_card_present               | platform_store |                                          |      |
| 49    | pos_data_code_input_capability           | platform_store |                                          |      |
| 50    | pos_data_code_operating_environment      | platform_store |                                          |      |
| 51    | pos_data_code_output_capability          | platform_store |                                          |      |
| 52    | pos_data_code_PIN_capture_capability     | platform_store |                                          |      |
| 53    | pos_data_code_terminal_capability        | platform_store |                                          |      |
| 54    | processing_code_transaction_type.profile | platform_store |                                          |      |
| 55    | processor.profile                        | profile_store  |                                          |      |
| 56    | recovery_advice_notification_config      | profile_store  | recovery_enqueuer.erl                    |      |
| 57    | recovery_mode_config                     | profile_store  | recovery_enqueuer.erl                    |      |
| 58    | recovery_mode_priority                   | profile_store  | recovery_enqueuer.erl                    |      |
| 59    | route.profile                            | profile_store  |                                          |      |
| 60    | route_rules.profile                      | platform_store | enhanced_routing.erl                     |      |
| 61    | se_context_log.profile                   | platform_store |                                          |      |
| 62    | se_end_point_attributes_score.profile    | platform_store | select_endpoint.erl                      |      |
| 63    | se_entity.profile                        | profile_store  |                                          |      |
| 64    | se_reject_code.profile                   | platform_store | response_code_resolver.erl, se_services_genserver.erl |      |
| 65    | se_response_code.profile                 | platform_store | bill_payment_msg_response_generator.erl, |      |
| 66    | service_restriction_code_pos_1.profile   | platform_store |                                          |      |
| 67    | service_restriction_code_pos_2.profile   | platform_store |                                          |      |
| 68    | service_restriction_code_pos_3.profile   | platform_store |                                          |      |
| 69    | stip_applicability_conditional_rule.profile | platform_store | stip_applicability.erl                   |      |
| 70    | stip_config_task_list                    | profile_store  | stip_applicability.erl                   |      |
| 71    | task_list.profile                        | platform_store | header_parser.erl, iso_data_parser.erl, path_setter.erl, |      |
| 72    | task_list_configuration.profile          | platform_store | transaction_classification.erl           |      |
| 73    | to_or_from_account.profile               | platform_store | transaction_classification.erl           |      |
| 74    | transaction_consistency_check_config.profile | platform_store | transaction_consistency_check.erl:       |      |
| 75    | transaction_source.profile               | platform_store |                                          |      |
| 76    | transaction_type.profile                 | platform_store | create_advice.erl, tran_type_finder.erl: |      |
| 77    | tran_type_key.profile                    | platform_store | se_services_common.erl, tran_type_finder.erl |      |
| 78    | tran_type_parameters.profile             | platform_store | extended_task_list_selector.erl, tran_type_finder.erl, |      |
| 79    | tran_type_to_field_mappings.profile      | profile_store  |                                          |      |
| 80    | tran_type_to_fee_groups                  | profile_store  | fees_charges_calculator.erl              |      |
| 81    | tran_type_to_key_fields.profile          | platform_store | se_services_common.erl                   |      |
| 82    | txn_rules_map.profile                    | platform_store | se_field_validator.erl, transaction_lifecycle_check.erl |      |

