%% {tran_type, [ [default_services_list], [for_future_use]] }
{purchase_adv_repeat_req,  [ [
                       retriever,
                       saf_checker,
                       select_endpoint,
                       %correlation_id_generator,
                       transaction_id_generator,
                       msg_builder,
                       transaction_datastore,
                       se_message_forwarder], [] ] }.

{cash_adv_repeat_req,  [ [
                       retriever,
                       saf_checker,
                       select_endpoint,
                       %correlation_id_generator,
                       transaction_id_generator,
                       msg_builder,
                       transaction_datastore,
                       se_message_forwarder], [] ] }.

{purchase_reversal_adv_repeat_req,  [ [
                       retriever,
                       saf_checker,
                       select_endpoint,
                       %correlation_id_generator,
                       transaction_id_generator,
                       msg_builder,
                       transaction_datastore,
                       se_message_forwarder], [] ] }.

{cash_reversal_adv_repeat_req,  [ [
                       retriever,
                       saf_checker,
                       select_endpoint,
                       %correlation_id_generator,
                       transaction_id_generator,
                       msg_builder,
                       transaction_datastore,
                       se_message_forwarder], [] ] }.

%% {tran_type,action_code,platform_originated_flag}
{{purchase_reversal_adv_resp,conditional_forward_to_destination_no_timer,true},
                       [ [
                           transaction_id_generator,
                           path_setter,
                           transaction_datastore
                       ], []] }.

{{purchase_reversal_adv_resp,conditional_forward_to_destination_no_timer,false},
                       [ [
                           transaction_id_generator,
                           path_setter,
                           msg_builder,
                           transaction_datastore,
                           se_message_forwarder
                       ], []] }.

{{purchase_adv_resp,conditional_forward_to_destination_no_timer,true},
                       [ [
                           transaction_id_generator,
                           path_setter,
                           transaction_datastore
                       ], []] }.

{{purchase_adv_resp,conditional_forward_to_destination_no_timer,false},
                       [ [
                           transaction_id_generator,
                           path_setter,
                           msg_builder,
                           transaction_datastore,
                           se_message_forwarder
                       ], []] }.

%% {tran_type,action_code,platform_originated_flag}
{{cash_reversal_adv_resp,conditional_forward_to_destination_no_timer,true},
                       [ [
                           transaction_id_generator,
                           path_setter,
                           transaction_datastore
                       ], []] }.

{{cash_reversal_adv_resp,conditional_forward_to_destination_no_timer,false},
                       [ [
                           transaction_id_generator,
                           path_setter,
                           msg_builder,
                           transaction_datastore,
                           se_message_forwarder
                       ], []] }.

{{cash_adv_resp,conditional_forward_to_destination_no_timer,true},
                       [ [
                           transaction_id_generator,
                           path_setter,
                           transaction_datastore
                       ], []] }.

{{cash_adv_resp,conditional_forward_to_destination_no_timer,false},
                       [ [
                           transaction_id_generator,
                           path_setter,
                           msg_builder,
                           transaction_datastore,
                           se_message_forwarder
                       ], []] }.

