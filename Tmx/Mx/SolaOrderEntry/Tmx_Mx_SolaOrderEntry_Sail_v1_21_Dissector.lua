-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Tmx Mx SolaOrderEntry Sail 1.21 Protocol
local omi_tmx_mx_solaorderentry_sail_v1_21 = Proto("Omi.Tmx.Mx.SolaOrderEntry.Sail.v1.21", "Tmx Mx SolaOrderEntry Sail 1.21")

-- Protocol table
local tmx_mx_solaorderentry_sail_v1_21 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Tmx Mx SolaOrderEntry Sail 1.21 Fields
omi_tmx_mx_solaorderentry_sail_v1_21.fields.account_type = ProtoField.new("Account Type", "tmx.mx.solaorderentry.sail.v1.21.accounttype", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.account_type_filter = ProtoField.new("Account Type Filter", "tmx.mx.solaorderentry.sail.v1.21.accounttypefilter", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.active_y_on_n_off = ProtoField.new("Active Y On N Off", "tmx.mx.solaorderentry.sail.v1.21.activeyonnoff", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.additional_price = ProtoField.new("Additional Price", "tmx.mx.solaorderentry.sail.v1.21.additionalprice", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.additional_quantity = ProtoField.new("Additional Quantity", "tmx.mx.solaorderentry.sail.v1.21.additionalquantity", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.alignment_padding = ProtoField.new("Alignment Padding", "tmx.mx.solaorderentry.sail.v1.21.alignmentpadding", ftypes.BYTES)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.anti_wash_id = ProtoField.new("Anti Wash Id", "tmx.mx.solaorderentry.sail.v1.21.antiwashid", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.anti_wash_instruction = ProtoField.new("Anti Wash Instruction", "tmx.mx.solaorderentry.sail.v1.21.antiwashinstruction", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.assigned_price = ProtoField.new("Assigned Price", "tmx.mx.solaorderentry.sail.v1.21.assignedprice", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_command_acknowledgement_occurrence = ProtoField.new("Bulk Command Acknowledgement Occurrence", "tmx.mx.solaorderentry.sail.v1.21.bulkcommandacknowledgementoccurrence", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_acknowledgement_occurrence = ProtoField.new("Bulk Quote Acknowledgement Occurrence", "tmx.mx.solaorderentry.sail.v1.21.bulkquoteacknowledgementoccurrence", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_occurrence = ProtoField.new("Bulk Quote Occurrence", "tmx.mx.solaorderentry.sail.v1.21.bulkquoteoccurrence", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.buying_clearing_data = ProtoField.new("Buying Clearing Data", "tmx.mx.solaorderentry.sail.v1.21.buyingclearingdata", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.buying_owner_data = ProtoField.new("Buying Owner Data", "tmx.mx.solaorderentry.sail.v1.21.buyingownerdata", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.calculation_time_interval = ProtoField.new("Calculation Time Interval", "tmx.mx.solaorderentry.sail.v1.21.calculationtimeinterval", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.cancel_reason = ProtoField.new("Cancel Reason", "tmx.mx.solaorderentry.sail.v1.21.cancelreason", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.cancelled_order_id = ProtoField.new("Cancelled Order Id", "tmx.mx.solaorderentry.sail.v1.21.cancelledorderid", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.clearing_data = ProtoField.new("Clearing Data", "tmx.mx.solaorderentry.sail.v1.21.clearingdata", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.clearing_instruction = ProtoField.new("Clearing Instruction", "tmx.mx.solaorderentry.sail.v1.21.clearinginstruction", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.command_number = ProtoField.new("Command Number", "tmx.mx.solaorderentry.sail.v1.21.commandnumber", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.counterpart_order_id = ProtoField.new("Counterpart Order Id", "tmx.mx.solaorderentry.sail.v1.21.counterpartorderid", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.counterpart_owner_data = ProtoField.new("Counterpart Owner Data", "tmx.mx.solaorderentry.sail.v1.21.counterpartownerdata", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.counterpart_trader_id = ProtoField.new("Counterpart Trader Id", "tmx.mx.solaorderentry.sail.v1.21.counterparttraderid", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.creation_status = ProtoField.new("Creation Status", "tmx.mx.solaorderentry.sail.v1.21.creationstatus", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.current_session_id = ProtoField.new("Current Session Id", "tmx.mx.solaorderentry.sail.v1.21.currentsessionid", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.current_usage = ProtoField.new("Current Usage", "tmx.mx.solaorderentry.sail.v1.21.currentusage", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.default_long_exposure_action = ProtoField.new("Default Long Exposure Action", "tmx.mx.solaorderentry.sail.v1.21.defaultlongexposureaction", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.default_long_exposure_limit = ProtoField.new("Default Long Exposure Limit", "tmx.mx.solaorderentry.sail.v1.21.defaultlongexposurelimit", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.default_long_position_action = ProtoField.new("Default Long Position Action", "tmx.mx.solaorderentry.sail.v1.21.defaultlongpositionaction", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.default_long_position_limit = ProtoField.new("Default Long Position Limit", "tmx.mx.solaorderentry.sail.v1.21.defaultlongpositionlimit", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.default_maximum_order_quantity = ProtoField.new("Default Maximum Order Quantity", "tmx.mx.solaorderentry.sail.v1.21.defaultmaximumorderquantity", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.default_net_exposure_action = ProtoField.new("Default Net Exposure Action", "tmx.mx.solaorderentry.sail.v1.21.defaultnetexposureaction", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.default_net_exposure_limit = ProtoField.new("Default Net Exposure Limit", "tmx.mx.solaorderentry.sail.v1.21.defaultnetexposurelimit", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.default_net_position_action = ProtoField.new("Default Net Position Action", "tmx.mx.solaorderentry.sail.v1.21.defaultnetpositionaction", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.default_net_position_limit = ProtoField.new("Default Net Position Limit", "tmx.mx.solaorderentry.sail.v1.21.defaultnetpositionlimit", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.default_short_exposure_action = ProtoField.new("Default Short Exposure Action", "tmx.mx.solaorderentry.sail.v1.21.defaultshortexposureaction", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.default_short_exposure_limit = ProtoField.new("Default Short Exposure Limit", "tmx.mx.solaorderentry.sail.v1.21.defaultshortexposurelimit", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.default_short_position_action = ProtoField.new("Default Short Position Action", "tmx.mx.solaorderentry.sail.v1.21.defaultshortpositionaction", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.default_short_position_limit = ProtoField.new("Default Short Position Limit", "tmx.mx.solaorderentry.sail.v1.21.defaultshortpositionlimit", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.delta_maximum_value = ProtoField.new("Delta Maximum Value", "tmx.mx.solaorderentry.sail.v1.21.deltamaximumvalue", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.delta_maximum_volume = ProtoField.new("Delta Maximum Volume", "tmx.mx.solaorderentry.sail.v1.21.deltamaximumvolume", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.disconnection_instruction_note_cancel_quotes_only_q_quotes_only = ProtoField.new("Disconnection Instruction Note Cancel Quotes Only Q Quotes Only", "tmx.mx.solaorderentry.sail.v1.21.disconnectioninstructionnotecancelquotesonlyqquotesonly", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.disconnection_instruction_occurrence = ProtoField.new("Disconnection Instruction Occurrence", "tmx.mx.solaorderentry.sail.v1.21.disconnectioninstructionoccurrence", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.duration_type = ProtoField.new("Duration Type", "tmx.mx.solaorderentry.sail.v1.21.durationtype", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.end_of_text = ProtoField.new("End Of Text", "tmx.mx.solaorderentry.sail.v1.21.endoftext", ftypes.UINT8)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.ended_session_id = ProtoField.new("Ended Session Id", "tmx.mx.solaorderentry.sail.v1.21.endedsessionid", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.error_code = ProtoField.new("Error Code", "tmx.mx.solaorderentry.sail.v1.21.errorcode", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.error_description = ProtoField.new("Error Description", "tmx.mx.solaorderentry.sail.v1.21.errordescription", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.error_message = ProtoField.new("Error Message", "tmx.mx.solaorderentry.sail.v1.21.errormessage", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.error_position = ProtoField.new("Error Position", "tmx.mx.solaorderentry.sail.v1.21.errorposition", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.exchange_message_id = ProtoField.new("Exchange Message Id", "tmx.mx.solaorderentry.sail.v1.21.exchangemessageid", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.excluded_instrument_notice_occurrence = ProtoField.new("Excluded Instrument Notice Occurrence", "tmx.mx.solaorderentry.sail.v1.21.excludedinstrumentnoticeoccurrence", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.executing_participant = ProtoField.new("Executing Participant", "tmx.mx.solaorderentry.sail.v1.21.executingparticipant", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.expected_last_user_sequence_id = ProtoField.new("Expected Last User Sequence Id", "tmx.mx.solaorderentry.sail.v1.21.expectedlastusersequenceid", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.filler_must_be_blank_x_2 = ProtoField.new("Filler Must Be Blank X 2", "tmx.mx.solaorderentry.sail.v1.21.fillermustbeblankx2", ftypes.BYTES)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.filler_must_be_blank_x_5 = ProtoField.new("Filler Must Be Blank X 5", "tmx.mx.solaorderentry.sail.v1.21.fillermustbeblankx5", ftypes.BYTES)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.filler_n_6 = ProtoField.new("Filler N 6", "tmx.mx.solaorderentry.sail.v1.21.fillern6", ftypes.BYTES)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.filler_x_1 = ProtoField.new("Filler X 1", "tmx.mx.solaorderentry.sail.v1.21.fillerx1", ftypes.BYTES)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.filler_x_2 = ProtoField.new("Filler X 2", "tmx.mx.solaorderentry.sail.v1.21.fillerx2", ftypes.BYTES)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.filler_x_20 = ProtoField.new("Filler X 20", "tmx.mx.solaorderentry.sail.v1.21.fillerx20", ftypes.BYTES)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.filler_x_4 = ProtoField.new("Filler X 4", "tmx.mx.solaorderentry.sail.v1.21.fillerx4", ftypes.BYTES)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.firm_level_risk_option = ProtoField.new("Firm Level Risk Option", "tmx.mx.solaorderentry.sail.v1.21.firmlevelriskoption", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.firm_risk_config_trader_team = ProtoField.new("Firm Risk Config Trader Team", "tmx.mx.solaorderentry.sail.v1.21.firmriskconfigtraderteam", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.firm_risk_config_trader_team_trader = ProtoField.new("Firm Risk Config Trader Team Trader", "tmx.mx.solaorderentry.sail.v1.21.firmriskconfigtraderteamtrader", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.gap_sequence_id = ProtoField.new("Gap Sequence Id", "tmx.mx.solaorderentry.sail.v1.21.gapsequenceid", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.global_net_exposure_action = ProtoField.new("Global Net Exposure Action", "tmx.mx.solaorderentry.sail.v1.21.globalnetexposureaction", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.global_net_exposure_limit = ProtoField.new("Global Net Exposure Limit", "tmx.mx.solaorderentry.sail.v1.21.globalnetexposurelimit", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.group = ProtoField.new("Group", "tmx.mx.solaorderentry.sail.v1.21.group", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.group_state = ProtoField.new("Group State", "tmx.mx.solaorderentry.sail.v1.21.groupstate", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.gtd_date = ProtoField.new("Gtd Date", "tmx.mx.solaorderentry.sail.v1.21.gtddate", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.hedge_spec = ProtoField.new("Hedge Spec", "tmx.mx.solaorderentry.sail.v1.21.hedgespec", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.id_code_for_the_counterpart_participant = ProtoField.new("Id Code For The Counterpart Participant", "tmx.mx.solaorderentry.sail.v1.21.idcodeforthecounterpartparticipant", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.inactivity_interval = ProtoField.new("Inactivity Interval", "tmx.mx.solaorderentry.sail.v1.21.inactivityinterval", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.incoming_messages_header = ProtoField.new("Incoming Messages Header", "tmx.mx.solaorderentry.sail.v1.21.incomingmessagesheader", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.instrument = ProtoField.new("Instrument", "tmx.mx.solaorderentry.sail.v1.21.instrument", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.instrument_state = ProtoField.new("Instrument State", "tmx.mx.solaorderentry.sail.v1.21.instrumentstate", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.last_exchange_message_id_sent_to_participant = ProtoField.new("Last Exchange Message Id Sent To Participant", "tmx.mx.solaorderentry.sail.v1.21.lastexchangemessageidsenttoparticipant", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.last_user_sequence_id_received = ProtoField.new("Last User Sequence Id Received", "tmx.mx.solaorderentry.sail.v1.21.lastusersequenceidreceived", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.last_user_sequence_id_received_if_no_business_message_has_been_received_on_this_connection_this_field_is_equal_to_zeroes = ProtoField.new("Last User Sequence Id Received If No Business Message Has Been Received On This Connection This Field Is Equal To Zeroes", "tmx.mx.solaorderentry.sail.v1.21.lastusersequenceidreceivedifnobusinessmessagehasbeenreceivedonthisconnectionthisfieldisequaltozeroes", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.leg_group = ProtoField.new("Leg Group", "tmx.mx.solaorderentry.sail.v1.21.leggroup", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.leg_instrument = ProtoField.new("Leg Instrument", "tmx.mx.solaorderentry.sail.v1.21.leginstrument", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.leg_number = ProtoField.new("Leg Number", "tmx.mx.solaorderentry.sail.v1.21.legnumber", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.leg_quantity_ratio = ProtoField.new("Leg Quantity Ratio", "tmx.mx.solaorderentry.sail.v1.21.legquantityratio", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.leg_verb = ProtoField.new("Leg Verb", "tmx.mx.solaorderentry.sail.v1.21.legverb", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.limit_type = ProtoField.new("Limit Type", "tmx.mx.solaorderentry.sail.v1.21.limittype", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.limit_value = ProtoField.new("Limit Value", "tmx.mx.solaorderentry.sail.v1.21.limitvalue", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.long_exposure_action = ProtoField.new("Long Exposure Action", "tmx.mx.solaorderentry.sail.v1.21.longexposureaction", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.long_exposure_limit = ProtoField.new("Long Exposure Limit", "tmx.mx.solaorderentry.sail.v1.21.longexposurelimit", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.long_position_action = ProtoField.new("Long Position Action", "tmx.mx.solaorderentry.sail.v1.21.longpositionaction", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.long_position_limit = ProtoField.new("Long Position Limit", "tmx.mx.solaorderentry.sail.v1.21.longpositionlimit", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.market_side = ProtoField.new("Market Side", "tmx.mx.solaorderentry.sail.v1.21.marketside", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.maximum_number_trades = ProtoField.new("Maximum Number Trades", "tmx.mx.solaorderentry.sail.v1.21.maximumnumbertrades", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.maximum_order_quantity = ProtoField.new("Maximum Order Quantity", "tmx.mx.solaorderentry.sail.v1.21.maximumorderquantity", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.maximum_total_value = ProtoField.new("Maximum Total Value", "tmx.mx.solaorderentry.sail.v1.21.maximumtotalvalue", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.maximum_total_volume = ProtoField.new("Maximum Total Volume", "tmx.mx.solaorderentry.sail.v1.21.maximumtotalvolume", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.memo = ProtoField.new("Memo", "tmx.mx.solaorderentry.sail.v1.21.memo", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.message_length = ProtoField.new("Message Length", "tmx.mx.solaorderentry.sail.v1.21.messagelength", ftypes.UINT32)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.message_type = ProtoField.new("Message Type", "tmx.mx.solaorderentry.sail.v1.21.messagetype", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.message_types_to_be_received = ProtoField.new("Message Types To Be Received", "tmx.mx.solaorderentry.sail.v1.21.messagetypestobereceived", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.minimum_volume = ProtoField.new("Minimum Volume", "tmx.mx.solaorderentry.sail.v1.21.minimumvolume", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.modified_order_id = ProtoField.new("Modified Order Id", "tmx.mx.solaorderentry.sail.v1.21.modifiedorderid", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.nb_of_instruments = ProtoField.new("Nb Of Instruments", "tmx.mx.solaorderentry.sail.v1.21.nbofinstruments", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.net_exposure_action = ProtoField.new("Net Exposure Action", "tmx.mx.solaorderentry.sail.v1.21.netexposureaction", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.net_exposure_limit = ProtoField.new("Net Exposure Limit", "tmx.mx.solaorderentry.sail.v1.21.netexposurelimit", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.net_position_action = ProtoField.new("Net Position Action", "tmx.mx.solaorderentry.sail.v1.21.netpositionaction", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.net_position_limit = ProtoField.new("Net Position Limit", "tmx.mx.solaorderentry.sail.v1.21.netpositionlimit", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.new_strategy_instrument_acknowledgement_leg_definition_repeating_block = ProtoField.new("New Strategy Instrument Acknowledgement Leg Definition Repeating Block", "tmx.mx.solaorderentry.sail.v1.21.newstrategyinstrumentacknowledgementlegdefinitionrepeatingblock", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.new_strategy_instrument_leg_definition_repeating_block = ProtoField.new("New Strategy Instrument Leg Definition Repeating Block", "tmx.mx.solaorderentry.sail.v1.21.newstrategyinstrumentlegdefinitionrepeatingblock", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.number_of_commands = ProtoField.new("Number Of Commands", "tmx.mx.solaorderentry.sail.v1.21.numberofcommands", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.number_of_group_limits = ProtoField.new("Number Of Group Limits", "tmx.mx.solaorderentry.sail.v1.21.numberofgrouplimits", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.number_of_instructions_present_in_the_message = ProtoField.new("Number Of Instructions Present In The Message", "tmx.mx.solaorderentry.sail.v1.21.numberofinstructionspresentinthemessage", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.number_of_legs = ProtoField.new("Number Of Legs", "tmx.mx.solaorderentry.sail.v1.21.numberoflegs", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.number_of_message_types_to_be_received = ProtoField.new("Number Of Message Types To Be Received", "tmx.mx.solaorderentry.sail.v1.21.numberofmessagetypestobereceived", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.number_of_quotes = ProtoField.new("Number Of Quotes", "tmx.mx.solaorderentry.sail.v1.21.numberofquotes", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.number_of_quotes_in_error = ProtoField.new("Number Of Quotes In Error", "tmx.mx.solaorderentry.sail.v1.21.numberofquotesinerror", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.number_of_trader_teams = ProtoField.new("Number Of Trader Teams", "tmx.mx.solaorderentry.sail.v1.21.numberoftraderteams", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.number_of_traders_in_team = ProtoField.new("Number Of Traders In Team", "tmx.mx.solaorderentry.sail.v1.21.numberoftradersinteam", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.number_of_usage_blocks = ProtoField.new("Number Of Usage Blocks", "tmx.mx.solaorderentry.sail.v1.21.numberofusageblocks", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.open_close = ProtoField.new("Open Close", "tmx.mx.solaorderentry.sail.v1.21.openclose", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.order_id = ProtoField.new("Order Id", "tmx.mx.solaorderentry.sail.v1.21.orderid", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.order_type = ProtoField.new("Order Type", "tmx.mx.solaorderentry.sail.v1.21.ordertype", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.original_message_type_af_gz_ml_ox_or_rq = ProtoField.new("Original Message Type Af Gz Ml Ox Or Rq", "tmx.mx.solaorderentry.sail.v1.21.originalmessagetypeafgzmloxorrq", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.original_order_id = ProtoField.new("Original Order Id", "tmx.mx.solaorderentry.sail.v1.21.originalorderid", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.original_reference_id = ProtoField.new("Original Reference Id", "tmx.mx.solaorderentry.sail.v1.21.originalreferenceid", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.outgoing_messages_header = ProtoField.new("Outgoing Messages Header", "tmx.mx.solaorderentry.sail.v1.21.outgoingmessagesheader", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.owner_data = ProtoField.new("Owner Data", "tmx.mx.solaorderentry.sail.v1.21.ownerdata", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.password_md_5_encryption = ProtoField.new("Password Md 5 Encryption", "tmx.mx.solaorderentry.sail.v1.21.passwordmd5encryption", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.preceding_user_sequence_id_received_zeroes_if_none = ProtoField.new("Preceding User Sequence Id Received Zeroes If None", "tmx.mx.solaorderentry.sail.v1.21.precedingusersequenceidreceivedzeroesifnone", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.price = ProtoField.new("Price", "tmx.mx.solaorderentry.sail.v1.21.price", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.price_type = ProtoField.new("Price Type", "tmx.mx.solaorderentry.sail.v1.21.pricetype", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.protection_type_advanced_protection_advanced_protection_disabled = ProtoField.new("Protection Type Advanced Protection Advanced Protection Disabled", "tmx.mx.solaorderentry.sail.v1.21.protectiontypeadvancedprotectionadvancedprotectiondisabled", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.protocol_id = ProtoField.new("Protocol Id", "tmx.mx.solaorderentry.sail.v1.21.protocolid", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.quantity = ProtoField.new("Quantity", "tmx.mx.solaorderentry.sail.v1.21.quantity", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.quantity_remaining = ProtoField.new("Quantity Remaining", "tmx.mx.solaorderentry.sail.v1.21.quantityremaining", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.quantity_sign = ProtoField.new("Quantity Sign", "tmx.mx.solaorderentry.sail.v1.21.quantitysign", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.quantity_sign_or = ProtoField.new("Quantity Sign Or", "tmx.mx.solaorderentry.sail.v1.21.quantitysignor", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.quantity_term = ProtoField.new("Quantity Term", "tmx.mx.solaorderentry.sail.v1.21.quantityterm", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.quantity_traded = ProtoField.new("Quantity Traded", "tmx.mx.solaorderentry.sail.v1.21.quantitytraded", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.quote_id_identifies_traders_quote_on_this_group = ProtoField.new("Quote Id Identifies Traders Quote On This Group", "tmx.mx.solaorderentry.sail.v1.21.quoteididentifiestradersquoteonthisgroup", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.quote_identifier_on_this_group = ProtoField.new("Quote Identifier On This Group", "tmx.mx.solaorderentry.sail.v1.21.quoteidentifieronthisgroup", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.quote_number = ProtoField.new("Quote Number", "tmx.mx.solaorderentry.sail.v1.21.quotenumber", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.received_message_type = ProtoField.new("Received Message Type", "tmx.mx.solaorderentry.sail.v1.21.receivedmessagetype", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.received_user_sequence_id = ProtoField.new("Received User Sequence Id", "tmx.mx.solaorderentry.sail.v1.21.receivedusersequenceid", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.reference_id_order_id_or_quote_id = ProtoField.new("Reference Id Order Id Or Quote Id", "tmx.mx.solaorderentry.sail.v1.21.referenceidorderidorquoteid", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.reset_all_groups = ProtoField.new("Reset All Groups", "tmx.mx.solaorderentry.sail.v1.21.resetallgroups", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.risk_limits_usage_occurrence = ProtoField.new("Risk Limits Usage Occurrence", "tmx.mx.solaorderentry.sail.v1.21.risklimitsusageoccurrence", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.selling_clearing_data = ProtoField.new("Selling Clearing Data", "tmx.mx.solaorderentry.sail.v1.21.sellingclearingdata", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.selling_owner_data = ProtoField.new("Selling Owner Data", "tmx.mx.solaorderentry.sail.v1.21.sellingownerdata", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.session_id = ProtoField.new("Session Id", "tmx.mx.solaorderentry.sail.v1.21.sessionid", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.set_group_risk_limits_occurrence = ProtoField.new("Set Group Risk Limits Occurrence", "tmx.mx.solaorderentry.sail.v1.21.setgrouprisklimitsoccurrence", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.short_exposure_action = ProtoField.new("Short Exposure Action", "tmx.mx.solaorderentry.sail.v1.21.shortexposureaction", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.short_exposure_limit = ProtoField.new("Short Exposure Limit", "tmx.mx.solaorderentry.sail.v1.21.shortexposurelimit", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.short_position_action = ProtoField.new("Short Position Action", "tmx.mx.solaorderentry.sail.v1.21.shortpositionaction", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.short_position_limit = ProtoField.new("Short Position Limit", "tmx.mx.solaorderentry.sail.v1.21.shortpositionlimit", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.special_price_term = ProtoField.new("Special Price Term", "tmx.mx.solaorderentry.sail.v1.21.specialpriceterm", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.special_trade_indicator = ProtoField.new("Special Trade Indicator", "tmx.mx.solaorderentry.sail.v1.21.specialtradeindicator", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.start_of_message_in_error = ProtoField.new("Start Of Message In Error", "tmx.mx.solaorderentry.sail.v1.21.startofmessageinerror", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.status = ProtoField.new("Status", "tmx.mx.solaorderentry.sail.v1.21.status", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.strategy_group = ProtoField.new("Strategy Group", "tmx.mx.solaorderentry.sail.v1.21.strategygroup", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.strategy_instrument = ProtoField.new("Strategy Instrument", "tmx.mx.solaorderentry.sail.v1.21.strategyinstrument", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.strategy_instrument_id = ProtoField.new("Strategy Instrument Id", "tmx.mx.solaorderentry.sail.v1.21.strategyinstrumentid", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.strategy_trade_number = ProtoField.new("Strategy Trade Number", "tmx.mx.solaorderentry.sail.v1.21.strategytradenumber", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.strategy_verb_side = ProtoField.new("Strategy Verb Side", "tmx.mx.solaorderentry.sail.v1.21.strategyverbside", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.team_level_risk_option = ProtoField.new("Team Level Risk Option", "tmx.mx.solaorderentry.sail.v1.21.teamlevelriskoption", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.trade_memo = ProtoField.new("Trade Memo", "tmx.mx.solaorderentry.sail.v1.21.tradememo", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.trade_number = ProtoField.new("Trade Number", "tmx.mx.solaorderentry.sail.v1.21.tradenumber", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.trade_price = ProtoField.new("Trade Price", "tmx.mx.solaorderentry.sail.v1.21.tradeprice", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.trade_type = ProtoField.new("Trade Type", "tmx.mx.solaorderentry.sail.v1.21.tradetype", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.trader = ProtoField.new("Trader", "tmx.mx.solaorderentry.sail.v1.21.trader", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.trader_id = ProtoField.new("Trader Id", "tmx.mx.solaorderentry.sail.v1.21.traderid", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.trading_engine_timestamp_local_hhmmss = ProtoField.new("Trading Engine Timestamp Local Hhmmss", "tmx.mx.solaorderentry.sail.v1.21.tradingenginetimestamplocalhhmmss", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.trading_engine_timestamp_of_the_trade_local_hhmmss = ProtoField.new("Trading Engine Timestamp Of The Trade Local Hhmmss", "tmx.mx.solaorderentry.sail.v1.21.tradingenginetimestampofthetradelocalhhmmss", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.type_of_cancellation = ProtoField.new("Type Of Cancellation", "tmx.mx.solaorderentry.sail.v1.21.typeofcancellation", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.type_of_cancellation_only_q_quotes_only_can_be_returned = ProtoField.new("Type Of Cancellation Only Q Quotes Only Can Be Returned", "tmx.mx.solaorderentry.sail.v1.21.typeofcancellationonlyqquotesonlycanbereturned", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.type_of_cancellation_q_quotes_only = ProtoField.new("Type Of Cancellation Q Quotes Only", "tmx.mx.solaorderentry.sail.v1.21.typeofcancellationqquotesonly", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.usage_status = ProtoField.new("Usage Status", "tmx.mx.solaorderentry.sail.v1.21.usagestatus", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.user_connection_occurrence = ProtoField.new("User Connection Occurrence", "tmx.mx.solaorderentry.sail.v1.21.userconnectionoccurrence", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.user_id = ProtoField.new("User Id", "tmx.mx.solaorderentry.sail.v1.21.userid", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.user_message_timestamp_local_hhmmss = ProtoField.new("User Message Timestamp Local Hhmmss", "tmx.mx.solaorderentry.sail.v1.21.usermessagetimestamplocalhhmmss", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.user_sequence_id = ProtoField.new("User Sequence Id", "tmx.mx.solaorderentry.sail.v1.21.usersequenceid", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.user_sequence_id_first_user_sequence_id_for_nextcurrent_heartbeat_period = ProtoField.new("User Sequence Id First User Sequence Id For Nextcurrent Heartbeat Period", "tmx.mx.solaorderentry.sail.v1.21.usersequenceidfirstusersequenceidfornextcurrentheartbeatperiod", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.user_timestamp_local_hhmmss = ProtoField.new("User Timestamp Local Hhmmss", "tmx.mx.solaorderentry.sail.v1.21.usertimestamplocalhhmmss", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.verb = ProtoField.new("Verb", "tmx.mx.solaorderentry.sail.v1.21.verb", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.verb_side = ProtoField.new("Verb Side", "tmx.mx.solaorderentry.sail.v1.21.verbside", ftypes.STRING)

-- Tmx Mx SolaOrderEntry Sail 1.21 Framing
omi_tmx_mx_solaorderentry_sail_v1_21.fields.exchange_packet = ProtoField.new("Exchange Packet", "tmx.mx.solaorderentry.sail.v1.21.exchangepacket", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.firm_packet = ProtoField.new("Firm Packet", "tmx.mx.solaorderentry.sail.v1.21.firmpacket", ftypes.STRING)

-- Tmx Mx SolaOrderEntry 1.21 Application Messages
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_command_acknowledgement = ProtoField.new("Bulk Command Acknowledgement", "tmx.mx.solaorderentry.sail.v1.21.bulkcommandacknowledgement", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote = ProtoField.new("Bulk Quote", "tmx.mx.solaorderentry.sail.v1.21.bulkquote", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_acknowledgement = ProtoField.new("Bulk Quote Acknowledgement", "tmx.mx.solaorderentry.sail.v1.21.bulkquoteacknowledgement", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_data = ProtoField.new("Bulk Quote Data", "tmx.mx.solaorderentry.sail.v1.21.bulkquotedata", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_data_acknowledgement = ProtoField.new("Bulk Quote Data Acknowledgement", "tmx.mx.solaorderentry.sail.v1.21.bulkquotedataacknowledgement", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_participant_bqp_protection_subscription = ProtoField.new("Bulk Quote Participant Bqp Protection Subscription", "tmx.mx.solaorderentry.sail.v1.21.bulkquoteparticipantbqpprotectionsubscription", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.cancellation_of_all_quotes_notice = ProtoField.new("Cancellation Of All Quotes Notice", "tmx.mx.solaorderentry.sail.v1.21.cancellationofallquotesnotice", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.connection_acknowledgement = ProtoField.new("Connection Acknowledgement", "tmx.mx.solaorderentry.sail.v1.21.connectionacknowledgement", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.cross_entry = ProtoField.new("Cross Entry", "tmx.mx.solaorderentry.sail.v1.21.crossentry", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.disconnection_acknowledgement = ProtoField.new("Disconnection Acknowledgement", "tmx.mx.solaorderentry.sail.v1.21.disconnectionacknowledgement", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.disconnection_instruction = ProtoField.new("Disconnection Instruction", "tmx.mx.solaorderentry.sail.v1.21.disconnectioninstruction", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.disconnection_instruction_acknowledgement = ProtoField.new("Disconnection Instruction Acknowledgement", "tmx.mx.solaorderentry.sail.v1.21.disconnectioninstructionacknowledgement", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.end_of_transmission = ProtoField.new("End Of Transmission", "tmx.mx.solaorderentry.sail.v1.21.endoftransmission", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.error_notice = ProtoField.new("Error Notice", "tmx.mx.solaorderentry.sail.v1.21.errornotice", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.excluded_instrument_notice = ProtoField.new("Excluded Instrument Notice", "tmx.mx.solaorderentry.sail.v1.21.excludedinstrumentnotice", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.execution_cancellation_notice = ProtoField.new("Execution Cancellation Notice", "tmx.mx.solaorderentry.sail.v1.21.executioncancellationnotice", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.execution_notice = ProtoField.new("Execution Notice", "tmx.mx.solaorderentry.sail.v1.21.executionnotice", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.firm_risk_config = ProtoField.new("Firm Risk Config", "tmx.mx.solaorderentry.sail.v1.21.firmriskconfig", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.global_cancellation = ProtoField.new("Global Cancellation", "tmx.mx.solaorderentry.sail.v1.21.globalcancellation", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.global_cancellation_confirmation = ProtoField.new("Global Cancellation Confirmation", "tmx.mx.solaorderentry.sail.v1.21.globalcancellationconfirmation", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.group_state_change = ProtoField.new("Group State Change", "tmx.mx.solaorderentry.sail.v1.21.groupstatechange", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.heartbeat_question = ProtoField.new("Heartbeat Question", "tmx.mx.solaorderentry.sail.v1.21.heartbeatquestion", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.heartbeat_response = ProtoField.new("Heartbeat Response", "tmx.mx.solaorderentry.sail.v1.21.heartbeatresponse", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.instrument_state_change = ProtoField.new("Instrument State Change", "tmx.mx.solaorderentry.sail.v1.21.instrumentstatechange", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.leg_execution_cancellation_notice = ProtoField.new("Leg Execution Cancellation Notice", "tmx.mx.solaorderentry.sail.v1.21.legexecutioncancellationnotice", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.leg_execution_notice = ProtoField.new("Leg Execution Notice", "tmx.mx.solaorderentry.sail.v1.21.legexecutionnotice", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.new_strategy_instrument = ProtoField.new("New Strategy Instrument", "tmx.mx.solaorderentry.sail.v1.21.newstrategyinstrument", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.new_strategy_instrument_acknowledgement = ProtoField.new("New Strategy Instrument Acknowledgement", "tmx.mx.solaorderentry.sail.v1.21.newstrategyinstrumentacknowledgement", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.order_acknowledgement = ProtoField.new("Order Acknowledgement", "tmx.mx.solaorderentry.sail.v1.21.orderacknowledgement", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.order_cancellation = ProtoField.new("Order Cancellation", "tmx.mx.solaorderentry.sail.v1.21.ordercancellation", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.order_cancellation_acknowledgement = ProtoField.new("Order Cancellation Acknowledgement", "tmx.mx.solaorderentry.sail.v1.21.ordercancellationacknowledgement", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.order_cancellation_notice_by_mod_or_system = ProtoField.new("Order Cancellation Notice By Mod Or System", "tmx.mx.solaorderentry.sail.v1.21.ordercancellationnoticebymodorsystem", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.order_entry = ProtoField.new("Order Entry", "tmx.mx.solaorderentry.sail.v1.21.orderentry", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.order_modification = ProtoField.new("Order Modification", "tmx.mx.solaorderentry.sail.v1.21.ordermodification", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.order_modification_acknowledgement = ProtoField.new("Order Modification Acknowledgement", "tmx.mx.solaorderentry.sail.v1.21.ordermodificationacknowledgement", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.order_reply = ProtoField.new("Order Reply", "tmx.mx.solaorderentry.sail.v1.21.orderreply", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.order_request = ProtoField.new("Order Request", "tmx.mx.solaorderentry.sail.v1.21.orderrequest", ftypes.BYTES)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.out_of_sequence = ProtoField.new("Out Of Sequence", "tmx.mx.solaorderentry.sail.v1.21.outofsequence", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.overstepped_order_or_quote_notice = ProtoField.new("Overstepped Order Or Quote Notice", "tmx.mx.solaorderentry.sail.v1.21.oversteppedorderorquotenotice", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.request_for_quote = ProtoField.new("Request For Quote", "tmx.mx.solaorderentry.sail.v1.21.requestforquote", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.request_for_quote_with_side_acknowledgement = ProtoField.new("Request For Quote With Side Acknowledgement", "tmx.mx.solaorderentry.sail.v1.21.requestforquotewithsideacknowledgement", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.risk_limits_usage = ProtoField.new("Risk Limits Usage", "tmx.mx.solaorderentry.sail.v1.21.risklimitsusage", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.sail_request_for_quote_with_side = ProtoField.new("Sail Request For Quote With Side", "tmx.mx.solaorderentry.sail.v1.21.sailrequestforquotewithside", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.set_global_risk_limits = ProtoField.new("Set Global Risk Limits", "tmx.mx.solaorderentry.sail.v1.21.setglobalrisklimits", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.set_group_risk_limits = ProtoField.new("Set Group Risk Limits", "tmx.mx.solaorderentry.sail.v1.21.setgrouprisklimits", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.standard_acknowledgement = ProtoField.new("Standard Acknowledgement", "tmx.mx.solaorderentry.sail.v1.21.standardacknowledgement", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.technical_error_notice = ProtoField.new("Technical Error Notice", "tmx.mx.solaorderentry.sail.v1.21.technicalerrornotice", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.user_connection = ProtoField.new("User Connection", "tmx.mx.solaorderentry.sail.v1.21.userconnection", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.user_disconnection = ProtoField.new("User Disconnection", "tmx.mx.solaorderentry.sail.v1.21.userdisconnection", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.user_global_cancellation = ProtoField.new("User Global Cancellation", "tmx.mx.solaorderentry.sail.v1.21.userglobalcancellation", ftypes.STRING)

-- Tmx Mx SolaOrderEntry Sail 1.21 Generated Fields
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_command_acknowledgement_occurrence_index = ProtoField.new("Bulk Command Acknowledgement Occurrence Index", "tmx.mx.solaorderentry.sail.v1.21.bulkcommandacknowledgementoccurrenceindex", ftypes.UINT16)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_acknowledgement_occurrence_index = ProtoField.new("Bulk Quote Acknowledgement Occurrence Index", "tmx.mx.solaorderentry.sail.v1.21.bulkquoteacknowledgementoccurrenceindex", ftypes.UINT16)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_occurrence_index = ProtoField.new("Bulk Quote Occurrence Index", "tmx.mx.solaorderentry.sail.v1.21.bulkquoteoccurrenceindex", ftypes.UINT16)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.disconnection_instruction_occurrence_index = ProtoField.new("Disconnection Instruction Occurrence Index", "tmx.mx.solaorderentry.sail.v1.21.disconnectioninstructionoccurrenceindex", ftypes.UINT16)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.excluded_instrument_notice_occurrence_index = ProtoField.new("Excluded Instrument Notice Occurrence Index", "tmx.mx.solaorderentry.sail.v1.21.excludedinstrumentnoticeoccurrenceindex", ftypes.UINT16)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.firm_risk_config_trader_team_index = ProtoField.new("Firm Risk Config Trader Team Index", "tmx.mx.solaorderentry.sail.v1.21.firmriskconfigtraderteamindex", ftypes.UINT16)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.firm_risk_config_trader_team_trader_index = ProtoField.new("Firm Risk Config Trader Team Trader Index", "tmx.mx.solaorderentry.sail.v1.21.firmriskconfigtraderteamtraderindex", ftypes.UINT16)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.new_strategy_instrument_acknowledgement_leg_definition_repeating_block_index = ProtoField.new("New Strategy Instrument Acknowledgement Leg Definition Repeating Block Index", "tmx.mx.solaorderentry.sail.v1.21.newstrategyinstrumentacknowledgementlegdefinitionrepeatingblockindex", ftypes.UINT16)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.new_strategy_instrument_leg_definition_repeating_block_index = ProtoField.new("New Strategy Instrument Leg Definition Repeating Block Index", "tmx.mx.solaorderentry.sail.v1.21.newstrategyinstrumentlegdefinitionrepeatingblockindex", ftypes.UINT16)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.risk_limits_usage_occurrence_index = ProtoField.new("Risk Limits Usage Occurrence Index", "tmx.mx.solaorderentry.sail.v1.21.risklimitsusageoccurrenceindex", ftypes.UINT16)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.set_group_risk_limits_occurrence_index = ProtoField.new("Set Group Risk Limits Occurrence Index", "tmx.mx.solaorderentry.sail.v1.21.setgrouprisklimitsoccurrenceindex", ftypes.UINT16)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.user_connection_occurrence_index = ProtoField.new("User Connection Occurrence Index", "tmx.mx.solaorderentry.sail.v1.21.userconnectionoccurrenceindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Tmx Mx SolaOrderEntry Sail 1.21 Formatting
-----------------------------------------------------------------------

-- assumed connection role
local role_enum = {
  { 1, "Resolve from the conversation", 0 },
  { 2, "Initiator", 1 },
  { 3, "Acceptor", 2 }
}


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Tmx Mx SolaOrderEntry Sail 1.21 Element Dissection Options
show.application_messages = true
show.structs = true
show.indexes = true

-- Register Tmx Mx SolaOrderEntry Sail 1.21 Show Options
omi_tmx_mx_solaorderentry_sail_v1_21.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_tmx_mx_solaorderentry_sail_v1_21.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_tmx_mx_solaorderentry_sail_v1_21.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_tmx_mx_solaorderentry_sail_v1_21.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_tmx_mx_solaorderentry_sail_v1_21.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_tmx_mx_solaorderentry_sail_v1_21.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

-- Handle changed preferences
function omi_tmx_mx_solaorderentry_sail_v1_21.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_tmx_mx_solaorderentry_sail_v1_21.prefs.show_application_messages then
    show.application_messages = omi_tmx_mx_solaorderentry_sail_v1_21.prefs.show_application_messages
  end
  if show.structs ~= omi_tmx_mx_solaorderentry_sail_v1_21.prefs.show_structs then
    show.structs = omi_tmx_mx_solaorderentry_sail_v1_21.prefs.show_structs
  end
  if show.indexes ~= omi_tmx_mx_solaorderentry_sail_v1_21.prefs.show_indexes then
    show.indexes = omi_tmx_mx_solaorderentry_sail_v1_21.prefs.show_indexes
  end
end


-----------------------------------------------------------------------
-- Tmx Mx SolaOrderEntry Sail 1.21 Fields
-----------------------------------------------------------------------

-- Account Type
tmx_mx_solaorderentry_sail_v1_21.account_type = {}

-- Size: Account Type
tmx_mx_solaorderentry_sail_v1_21.account_type.size = 1

-- Display: Account Type
tmx_mx_solaorderentry_sail_v1_21.account_type.display = function(value)
  return "Account Type: "..value
end

-- Dissect: Account Type
tmx_mx_solaorderentry_sail_v1_21.account_type.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.account_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.account_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.account_type, range, value, display)

  return offset + length, value
end

-- Account Type Filter
tmx_mx_solaorderentry_sail_v1_21.account_type_filter = {}

-- Size: Account Type Filter
tmx_mx_solaorderentry_sail_v1_21.account_type_filter.size = 8

-- Display: Account Type Filter
tmx_mx_solaorderentry_sail_v1_21.account_type_filter.display = function(value)
  return "Account Type Filter: "..value
end

-- Dissect: Account Type Filter
tmx_mx_solaorderentry_sail_v1_21.account_type_filter.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.account_type_filter.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.account_type_filter.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.account_type_filter, range, value, display)

  return offset + length, value
end

-- Active Y On N Off
tmx_mx_solaorderentry_sail_v1_21.active_y_on_n_off = {}

-- Size: Active Y On N Off
tmx_mx_solaorderentry_sail_v1_21.active_y_on_n_off.size = 1

-- Display: Active Y On N Off
tmx_mx_solaorderentry_sail_v1_21.active_y_on_n_off.display = function(value)
  return "Active Y On N Off: "..value
end

-- Dissect: Active Y On N Off
tmx_mx_solaorderentry_sail_v1_21.active_y_on_n_off.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.active_y_on_n_off.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.active_y_on_n_off.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.active_y_on_n_off, range, value, display)

  return offset + length, value
end

-- Additional Price
tmx_mx_solaorderentry_sail_v1_21.additional_price = {}

-- Size: Additional Price
tmx_mx_solaorderentry_sail_v1_21.additional_price.size = 10

-- Display: Additional Price
tmx_mx_solaorderentry_sail_v1_21.additional_price.display = function(value)
  return "Additional Price: "..value
end

-- Dissect: Additional Price
tmx_mx_solaorderentry_sail_v1_21.additional_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.additional_price.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.additional_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.additional_price, range, value, display)

  return offset + length, value
end

-- Additional Quantity
tmx_mx_solaorderentry_sail_v1_21.additional_quantity = {}

-- Size: Additional Quantity
tmx_mx_solaorderentry_sail_v1_21.additional_quantity.size = 8

-- Display: Additional Quantity
tmx_mx_solaorderentry_sail_v1_21.additional_quantity.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Additional Quantity: No Value"
  end

  return "Additional Quantity: "..value
end

-- Dissect: Additional Quantity
tmx_mx_solaorderentry_sail_v1_21.additional_quantity.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.additional_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.additional_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.additional_quantity, range, value, display)

  return offset + length, value
end

-- Alignment Padding
tmx_mx_solaorderentry_sail_v1_21.alignment_padding = {}

-- Size: Alignment Padding
tmx_mx_solaorderentry_sail_v1_21.alignment_padding.size = 1

-- Display: Alignment Padding
tmx_mx_solaorderentry_sail_v1_21.alignment_padding.display = function(value)
  return "Alignment Padding: "..value
end

-- Dissect: Alignment Padding
tmx_mx_solaorderentry_sail_v1_21.alignment_padding.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.alignment_padding.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = tmx_mx_solaorderentry_sail_v1_21.alignment_padding.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.alignment_padding, range, value, display)

  return offset + length, value
end

-- Anti Wash Id
tmx_mx_solaorderentry_sail_v1_21.anti_wash_id = {}

-- Size: Anti Wash Id
tmx_mx_solaorderentry_sail_v1_21.anti_wash_id.size = 8

-- Display: Anti Wash Id
tmx_mx_solaorderentry_sail_v1_21.anti_wash_id.display = function(value)
  return "Anti Wash Id: "..value
end

-- Dissect: Anti Wash Id
tmx_mx_solaorderentry_sail_v1_21.anti_wash_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.anti_wash_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.anti_wash_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.anti_wash_id, range, value, display)

  return offset + length, value
end

-- Anti Wash Instruction
tmx_mx_solaorderentry_sail_v1_21.anti_wash_instruction = {}

-- Size: Anti Wash Instruction
tmx_mx_solaorderentry_sail_v1_21.anti_wash_instruction.size = 1

-- Display: Anti Wash Instruction
tmx_mx_solaorderentry_sail_v1_21.anti_wash_instruction.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Anti Wash Instruction: No Value"
  end

  return "Anti Wash Instruction: "..value
end

-- Dissect: Anti Wash Instruction
tmx_mx_solaorderentry_sail_v1_21.anti_wash_instruction.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.anti_wash_instruction.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.anti_wash_instruction.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.anti_wash_instruction, range, value, display)

  return offset + length, value
end

-- Assigned Price
tmx_mx_solaorderentry_sail_v1_21.assigned_price = {}

-- Size: Assigned Price
tmx_mx_solaorderentry_sail_v1_21.assigned_price.size = 10

-- Display: Assigned Price
tmx_mx_solaorderentry_sail_v1_21.assigned_price.display = function(value)
  return "Assigned Price: "..value
end

-- Dissect: Assigned Price
tmx_mx_solaorderentry_sail_v1_21.assigned_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.assigned_price.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.assigned_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.assigned_price, range, value, display)

  return offset + length, value
end

-- Calculation Time Interval
tmx_mx_solaorderentry_sail_v1_21.calculation_time_interval = {}

-- Size: Calculation Time Interval
tmx_mx_solaorderentry_sail_v1_21.calculation_time_interval.size = 8

-- Display: Calculation Time Interval
tmx_mx_solaorderentry_sail_v1_21.calculation_time_interval.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Calculation Time Interval: No Value"
  end

  return "Calculation Time Interval: "..value
end

-- Dissect: Calculation Time Interval
tmx_mx_solaorderentry_sail_v1_21.calculation_time_interval.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.calculation_time_interval.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.calculation_time_interval.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.calculation_time_interval, range, value, display)

  return offset + length, value
end

-- Cancel Reason
tmx_mx_solaorderentry_sail_v1_21.cancel_reason = {}

-- Size: Cancel Reason
tmx_mx_solaorderentry_sail_v1_21.cancel_reason.size = 1

-- Display: Cancel Reason
tmx_mx_solaorderentry_sail_v1_21.cancel_reason.display = function(value)
  return "Cancel Reason: "..value
end

-- Dissect: Cancel Reason
tmx_mx_solaorderentry_sail_v1_21.cancel_reason.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.cancel_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.cancel_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.cancel_reason, range, value, display)

  return offset + length, value
end

-- Cancelled Order Id
tmx_mx_solaorderentry_sail_v1_21.cancelled_order_id = {}

-- Size: Cancelled Order Id
tmx_mx_solaorderentry_sail_v1_21.cancelled_order_id.size = 8

-- Display: Cancelled Order Id
tmx_mx_solaorderentry_sail_v1_21.cancelled_order_id.display = function(value)
  return "Cancelled Order Id: "..value
end

-- Dissect: Cancelled Order Id
tmx_mx_solaorderentry_sail_v1_21.cancelled_order_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.cancelled_order_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.cancelled_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.cancelled_order_id, range, value, display)

  return offset + length, value
end

-- Clearing Instruction
tmx_mx_solaorderentry_sail_v1_21.clearing_instruction = {}

-- Size: Clearing Instruction
tmx_mx_solaorderentry_sail_v1_21.clearing_instruction.size = 12

-- Display: Clearing Instruction
tmx_mx_solaorderentry_sail_v1_21.clearing_instruction.display = function(value)
  return "Clearing Instruction: "..value
end

-- Dissect: Clearing Instruction
tmx_mx_solaorderentry_sail_v1_21.clearing_instruction.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.clearing_instruction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.clearing_instruction.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.clearing_instruction, range, value, display)

  return offset + length, value
end

-- Command Number
tmx_mx_solaorderentry_sail_v1_21.command_number = {}

-- Size: Command Number
tmx_mx_solaorderentry_sail_v1_21.command_number.size = 4

-- Display: Command Number
tmx_mx_solaorderentry_sail_v1_21.command_number.display = function(value)
  return "Command Number: "..value
end

-- Dissect: Command Number
tmx_mx_solaorderentry_sail_v1_21.command_number.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.command_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.command_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.command_number, range, value, display)

  return offset + length, value
end

-- Counterpart Order Id
tmx_mx_solaorderentry_sail_v1_21.counterpart_order_id = {}

-- Size: Counterpart Order Id
tmx_mx_solaorderentry_sail_v1_21.counterpart_order_id.size = 8

-- Display: Counterpart Order Id
tmx_mx_solaorderentry_sail_v1_21.counterpart_order_id.display = function(value)
  return "Counterpart Order Id: "..value
end

-- Dissect: Counterpart Order Id
tmx_mx_solaorderentry_sail_v1_21.counterpart_order_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.counterpart_order_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.counterpart_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.counterpart_order_id, range, value, display)

  return offset + length, value
end

-- Counterpart Trader Id
tmx_mx_solaorderentry_sail_v1_21.counterpart_trader_id = {}

-- Size: Counterpart Trader Id
tmx_mx_solaorderentry_sail_v1_21.counterpart_trader_id.size = 8

-- Display: Counterpart Trader Id
tmx_mx_solaorderentry_sail_v1_21.counterpart_trader_id.display = function(value)
  return "Counterpart Trader Id: "..value
end

-- Dissect: Counterpart Trader Id
tmx_mx_solaorderentry_sail_v1_21.counterpart_trader_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.counterpart_trader_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.counterpart_trader_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.counterpart_trader_id, range, value, display)

  return offset + length, value
end

-- Creation Status
tmx_mx_solaorderentry_sail_v1_21.creation_status = {}

-- Size: Creation Status
tmx_mx_solaorderentry_sail_v1_21.creation_status.size = 1

-- Display: Creation Status
tmx_mx_solaorderentry_sail_v1_21.creation_status.display = function(value)
  return "Creation Status: "..value
end

-- Dissect: Creation Status
tmx_mx_solaorderentry_sail_v1_21.creation_status.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.creation_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.creation_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.creation_status, range, value, display)

  return offset + length, value
end

-- Current Session Id
tmx_mx_solaorderentry_sail_v1_21.current_session_id = {}

-- Size: Current Session Id
tmx_mx_solaorderentry_sail_v1_21.current_session_id.size = 4

-- Display: Current Session Id
tmx_mx_solaorderentry_sail_v1_21.current_session_id.display = function(value)
  return "Current Session Id: "..value
end

-- Dissect: Current Session Id
tmx_mx_solaorderentry_sail_v1_21.current_session_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.current_session_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.current_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.current_session_id, range, value, display)

  return offset + length, value
end

-- Current Usage
tmx_mx_solaorderentry_sail_v1_21.current_usage = {}

-- Size: Current Usage
tmx_mx_solaorderentry_sail_v1_21.current_usage.size = 10

-- Display: Current Usage
tmx_mx_solaorderentry_sail_v1_21.current_usage.display = function(value)
  return "Current Usage: "..value
end

-- Dissect: Current Usage
tmx_mx_solaorderentry_sail_v1_21.current_usage.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.current_usage.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.current_usage.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.current_usage, range, value, display)

  return offset + length, value
end

-- Default Long Exposure Action
tmx_mx_solaorderentry_sail_v1_21.default_long_exposure_action = {}

-- Size: Default Long Exposure Action
tmx_mx_solaorderentry_sail_v1_21.default_long_exposure_action.size = 1

-- Display: Default Long Exposure Action
tmx_mx_solaorderentry_sail_v1_21.default_long_exposure_action.display = function(value)
  return "Default Long Exposure Action: "..value
end

-- Dissect: Default Long Exposure Action
tmx_mx_solaorderentry_sail_v1_21.default_long_exposure_action.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.default_long_exposure_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.default_long_exposure_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.default_long_exposure_action, range, value, display)

  return offset + length, value
end

-- Default Long Exposure Limit
tmx_mx_solaorderentry_sail_v1_21.default_long_exposure_limit = {}

-- Size: Default Long Exposure Limit
tmx_mx_solaorderentry_sail_v1_21.default_long_exposure_limit.size = 10

-- Display: Default Long Exposure Limit
tmx_mx_solaorderentry_sail_v1_21.default_long_exposure_limit.display = function(value)
  return "Default Long Exposure Limit: "..value
end

-- Dissect: Default Long Exposure Limit
tmx_mx_solaorderentry_sail_v1_21.default_long_exposure_limit.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.default_long_exposure_limit.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.default_long_exposure_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.default_long_exposure_limit, range, value, display)

  return offset + length, value
end

-- Default Long Position Action
tmx_mx_solaorderentry_sail_v1_21.default_long_position_action = {}

-- Size: Default Long Position Action
tmx_mx_solaorderentry_sail_v1_21.default_long_position_action.size = 1

-- Display: Default Long Position Action
tmx_mx_solaorderentry_sail_v1_21.default_long_position_action.display = function(value)
  return "Default Long Position Action: "..value
end

-- Dissect: Default Long Position Action
tmx_mx_solaorderentry_sail_v1_21.default_long_position_action.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.default_long_position_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.default_long_position_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.default_long_position_action, range, value, display)

  return offset + length, value
end

-- Default Long Position Limit
tmx_mx_solaorderentry_sail_v1_21.default_long_position_limit = {}

-- Size: Default Long Position Limit
tmx_mx_solaorderentry_sail_v1_21.default_long_position_limit.size = 8

-- Display: Default Long Position Limit
tmx_mx_solaorderentry_sail_v1_21.default_long_position_limit.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Default Long Position Limit: No Value"
  end

  return "Default Long Position Limit: "..value
end

-- Dissect: Default Long Position Limit
tmx_mx_solaorderentry_sail_v1_21.default_long_position_limit.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.default_long_position_limit.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.default_long_position_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.default_long_position_limit, range, value, display)

  return offset + length, value
end

-- Default Maximum Order Quantity
tmx_mx_solaorderentry_sail_v1_21.default_maximum_order_quantity = {}

-- Size: Default Maximum Order Quantity
tmx_mx_solaorderentry_sail_v1_21.default_maximum_order_quantity.size = 8

-- Display: Default Maximum Order Quantity
tmx_mx_solaorderentry_sail_v1_21.default_maximum_order_quantity.display = function(value)
  return "Default Maximum Order Quantity: "..value
end

-- Dissect: Default Maximum Order Quantity
tmx_mx_solaorderentry_sail_v1_21.default_maximum_order_quantity.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.default_maximum_order_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.default_maximum_order_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.default_maximum_order_quantity, range, value, display)

  return offset + length, value
end

-- Default Net Exposure Action
tmx_mx_solaorderentry_sail_v1_21.default_net_exposure_action = {}

-- Size: Default Net Exposure Action
tmx_mx_solaorderentry_sail_v1_21.default_net_exposure_action.size = 1

-- Display: Default Net Exposure Action
tmx_mx_solaorderentry_sail_v1_21.default_net_exposure_action.display = function(value)
  return "Default Net Exposure Action: "..value
end

-- Dissect: Default Net Exposure Action
tmx_mx_solaorderentry_sail_v1_21.default_net_exposure_action.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.default_net_exposure_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.default_net_exposure_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.default_net_exposure_action, range, value, display)

  return offset + length, value
end

-- Default Net Exposure Limit
tmx_mx_solaorderentry_sail_v1_21.default_net_exposure_limit = {}

-- Size: Default Net Exposure Limit
tmx_mx_solaorderentry_sail_v1_21.default_net_exposure_limit.size = 10

-- Display: Default Net Exposure Limit
tmx_mx_solaorderentry_sail_v1_21.default_net_exposure_limit.display = function(value)
  return "Default Net Exposure Limit: "..value
end

-- Dissect: Default Net Exposure Limit
tmx_mx_solaorderentry_sail_v1_21.default_net_exposure_limit.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.default_net_exposure_limit.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.default_net_exposure_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.default_net_exposure_limit, range, value, display)

  return offset + length, value
end

-- Default Net Position Action
tmx_mx_solaorderentry_sail_v1_21.default_net_position_action = {}

-- Size: Default Net Position Action
tmx_mx_solaorderentry_sail_v1_21.default_net_position_action.size = 1

-- Display: Default Net Position Action
tmx_mx_solaorderentry_sail_v1_21.default_net_position_action.display = function(value)
  return "Default Net Position Action: "..value
end

-- Dissect: Default Net Position Action
tmx_mx_solaorderentry_sail_v1_21.default_net_position_action.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.default_net_position_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.default_net_position_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.default_net_position_action, range, value, display)

  return offset + length, value
end

-- Default Net Position Limit
tmx_mx_solaorderentry_sail_v1_21.default_net_position_limit = {}

-- Size: Default Net Position Limit
tmx_mx_solaorderentry_sail_v1_21.default_net_position_limit.size = 8

-- Display: Default Net Position Limit
tmx_mx_solaorderentry_sail_v1_21.default_net_position_limit.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Default Net Position Limit: No Value"
  end

  return "Default Net Position Limit: "..value
end

-- Dissect: Default Net Position Limit
tmx_mx_solaorderentry_sail_v1_21.default_net_position_limit.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.default_net_position_limit.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.default_net_position_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.default_net_position_limit, range, value, display)

  return offset + length, value
end

-- Default Short Exposure Action
tmx_mx_solaorderentry_sail_v1_21.default_short_exposure_action = {}

-- Size: Default Short Exposure Action
tmx_mx_solaorderentry_sail_v1_21.default_short_exposure_action.size = 1

-- Display: Default Short Exposure Action
tmx_mx_solaorderentry_sail_v1_21.default_short_exposure_action.display = function(value)
  return "Default Short Exposure Action: "..value
end

-- Dissect: Default Short Exposure Action
tmx_mx_solaorderentry_sail_v1_21.default_short_exposure_action.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.default_short_exposure_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.default_short_exposure_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.default_short_exposure_action, range, value, display)

  return offset + length, value
end

-- Default Short Exposure Limit
tmx_mx_solaorderentry_sail_v1_21.default_short_exposure_limit = {}

-- Size: Default Short Exposure Limit
tmx_mx_solaorderentry_sail_v1_21.default_short_exposure_limit.size = 10

-- Display: Default Short Exposure Limit
tmx_mx_solaorderentry_sail_v1_21.default_short_exposure_limit.display = function(value)
  return "Default Short Exposure Limit: "..value
end

-- Dissect: Default Short Exposure Limit
tmx_mx_solaorderentry_sail_v1_21.default_short_exposure_limit.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.default_short_exposure_limit.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.default_short_exposure_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.default_short_exposure_limit, range, value, display)

  return offset + length, value
end

-- Default Short Position Action
tmx_mx_solaorderentry_sail_v1_21.default_short_position_action = {}

-- Size: Default Short Position Action
tmx_mx_solaorderentry_sail_v1_21.default_short_position_action.size = 1

-- Display: Default Short Position Action
tmx_mx_solaorderentry_sail_v1_21.default_short_position_action.display = function(value)
  return "Default Short Position Action: "..value
end

-- Dissect: Default Short Position Action
tmx_mx_solaorderentry_sail_v1_21.default_short_position_action.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.default_short_position_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.default_short_position_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.default_short_position_action, range, value, display)

  return offset + length, value
end

-- Default Short Position Limit
tmx_mx_solaorderentry_sail_v1_21.default_short_position_limit = {}

-- Size: Default Short Position Limit
tmx_mx_solaorderentry_sail_v1_21.default_short_position_limit.size = 8

-- Display: Default Short Position Limit
tmx_mx_solaorderentry_sail_v1_21.default_short_position_limit.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Default Short Position Limit: No Value"
  end

  return "Default Short Position Limit: "..value
end

-- Dissect: Default Short Position Limit
tmx_mx_solaorderentry_sail_v1_21.default_short_position_limit.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.default_short_position_limit.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.default_short_position_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.default_short_position_limit, range, value, display)

  return offset + length, value
end

-- Delta Maximum Value
tmx_mx_solaorderentry_sail_v1_21.delta_maximum_value = {}

-- Size: Delta Maximum Value
tmx_mx_solaorderentry_sail_v1_21.delta_maximum_value.size = 8

-- Display: Delta Maximum Value
tmx_mx_solaorderentry_sail_v1_21.delta_maximum_value.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Delta Maximum Value: No Value"
  end

  return "Delta Maximum Value: "..value
end

-- Dissect: Delta Maximum Value
tmx_mx_solaorderentry_sail_v1_21.delta_maximum_value.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.delta_maximum_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.delta_maximum_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.delta_maximum_value, range, value, display)

  return offset + length, value
end

-- Delta Maximum Volume
tmx_mx_solaorderentry_sail_v1_21.delta_maximum_volume = {}

-- Size: Delta Maximum Volume
tmx_mx_solaorderentry_sail_v1_21.delta_maximum_volume.size = 8

-- Display: Delta Maximum Volume
tmx_mx_solaorderentry_sail_v1_21.delta_maximum_volume.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Delta Maximum Volume: No Value"
  end

  return "Delta Maximum Volume: "..value
end

-- Dissect: Delta Maximum Volume
tmx_mx_solaorderentry_sail_v1_21.delta_maximum_volume.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.delta_maximum_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.delta_maximum_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.delta_maximum_volume, range, value, display)

  return offset + length, value
end

-- Disconnection Instruction Note Cancel Quotes Only Q Quotes Only
tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction_note_cancel_quotes_only_q_quotes_only = {}

-- Size: Disconnection Instruction Note Cancel Quotes Only Q Quotes Only
tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction_note_cancel_quotes_only_q_quotes_only.size = 1

-- Display: Disconnection Instruction Note Cancel Quotes Only Q Quotes Only
tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction_note_cancel_quotes_only_q_quotes_only.display = function(value)
  return "Disconnection Instruction Note Cancel Quotes Only Q Quotes Only: "..value
end

-- Dissect: Disconnection Instruction Note Cancel Quotes Only Q Quotes Only
tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction_note_cancel_quotes_only_q_quotes_only.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction_note_cancel_quotes_only_q_quotes_only.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction_note_cancel_quotes_only_q_quotes_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.disconnection_instruction_note_cancel_quotes_only_q_quotes_only, range, value, display)

  return offset + length, value
end

-- Duration Type
tmx_mx_solaorderentry_sail_v1_21.duration_type = {}

-- Size: Duration Type
tmx_mx_solaorderentry_sail_v1_21.duration_type.size = 1

-- Display: Duration Type
tmx_mx_solaorderentry_sail_v1_21.duration_type.display = function(value)
  return "Duration Type: "..value
end

-- Dissect: Duration Type
tmx_mx_solaorderentry_sail_v1_21.duration_type.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.duration_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.duration_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.duration_type, range, value, display)

  return offset + length, value
end

-- End Of Text
tmx_mx_solaorderentry_sail_v1_21.end_of_text = {}

-- Size: End Of Text
tmx_mx_solaorderentry_sail_v1_21.end_of_text.size = 1

-- Display: End Of Text
tmx_mx_solaorderentry_sail_v1_21.end_of_text.display = function(value)
  if value == 3 then
    return "End Of Text: End Of Text"
  end

  return "End Of Text: Unknown("..value..")"
end

-- Dissect: End Of Text
tmx_mx_solaorderentry_sail_v1_21.end_of_text.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.end_of_text.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tmx_mx_solaorderentry_sail_v1_21.end_of_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.end_of_text, range, value, display)

  return offset + length, value
end

-- Ended Session Id
tmx_mx_solaorderentry_sail_v1_21.ended_session_id = {}

-- Size: Ended Session Id
tmx_mx_solaorderentry_sail_v1_21.ended_session_id.size = 4

-- Display: Ended Session Id
tmx_mx_solaorderentry_sail_v1_21.ended_session_id.display = function(value)
  return "Ended Session Id: "..value
end

-- Dissect: Ended Session Id
tmx_mx_solaorderentry_sail_v1_21.ended_session_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.ended_session_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.ended_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.ended_session_id, range, value, display)

  return offset + length, value
end

-- Error Code
tmx_mx_solaorderentry_sail_v1_21.error_code = {}

-- Size: Error Code
tmx_mx_solaorderentry_sail_v1_21.error_code.size = 4

-- Display: Error Code
tmx_mx_solaorderentry_sail_v1_21.error_code.display = function(value)
  return "Error Code: "..value
end

-- Dissect: Error Code
tmx_mx_solaorderentry_sail_v1_21.error_code.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.error_code.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.error_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.error_code, range, value, display)

  return offset + length, value
end

-- Error Description
tmx_mx_solaorderentry_sail_v1_21.error_description = {}

-- Size: Error Description
tmx_mx_solaorderentry_sail_v1_21.error_description.size = 100

-- Display: Error Description
tmx_mx_solaorderentry_sail_v1_21.error_description.display = function(value)
  return "Error Description: "..value
end

-- Dissect: Error Description
tmx_mx_solaorderentry_sail_v1_21.error_description.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.error_description.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.error_description.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.error_description, range, value, display)

  return offset + length, value
end

-- Error Message
tmx_mx_solaorderentry_sail_v1_21.error_message = {}

-- Size: Error Message
tmx_mx_solaorderentry_sail_v1_21.error_message.size = 100

-- Display: Error Message
tmx_mx_solaorderentry_sail_v1_21.error_message.display = function(value)
  return "Error Message: "..value
end

-- Dissect: Error Message
tmx_mx_solaorderentry_sail_v1_21.error_message.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.error_message.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.error_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.error_message, range, value, display)

  return offset + length, value
end

-- Error Position
tmx_mx_solaorderentry_sail_v1_21.error_position = {}

-- Size: Error Position
tmx_mx_solaorderentry_sail_v1_21.error_position.size = 4

-- Display: Error Position
tmx_mx_solaorderentry_sail_v1_21.error_position.display = function(value)
  return "Error Position: "..value
end

-- Dissect: Error Position
tmx_mx_solaorderentry_sail_v1_21.error_position.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.error_position.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.error_position.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.error_position, range, value, display)

  return offset + length, value
end

-- Exchange Message Id
tmx_mx_solaorderentry_sail_v1_21.exchange_message_id = {}

-- Size: Exchange Message Id
tmx_mx_solaorderentry_sail_v1_21.exchange_message_id.size = 6

-- Display: Exchange Message Id
tmx_mx_solaorderentry_sail_v1_21.exchange_message_id.display = function(value)
  return "Exchange Message Id: "..value
end

-- Dissect: Exchange Message Id
tmx_mx_solaorderentry_sail_v1_21.exchange_message_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.exchange_message_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.exchange_message_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.exchange_message_id, range, value, display)

  return offset + length, value
end

-- Executing Participant
tmx_mx_solaorderentry_sail_v1_21.executing_participant = {}

-- Size: Executing Participant
tmx_mx_solaorderentry_sail_v1_21.executing_participant.size = 4

-- Display: Executing Participant
tmx_mx_solaorderentry_sail_v1_21.executing_participant.display = function(value)
  return "Executing Participant: "..value
end

-- Dissect: Executing Participant
tmx_mx_solaorderentry_sail_v1_21.executing_participant.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.executing_participant.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.executing_participant.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.executing_participant, range, value, display)

  return offset + length, value
end

-- Expected Last User Sequence Id
tmx_mx_solaorderentry_sail_v1_21.expected_last_user_sequence_id = {}

-- Size: Expected Last User Sequence Id
tmx_mx_solaorderentry_sail_v1_21.expected_last_user_sequence_id.size = 8

-- Display: Expected Last User Sequence Id
tmx_mx_solaorderentry_sail_v1_21.expected_last_user_sequence_id.display = function(value)
  return "Expected Last User Sequence Id: "..value
end

-- Dissect: Expected Last User Sequence Id
tmx_mx_solaorderentry_sail_v1_21.expected_last_user_sequence_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.expected_last_user_sequence_id.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.expected_last_user_sequence_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.expected_last_user_sequence_id, range, value, display)

  return offset + length, value
end

-- Filler Must Be Blank X 2
tmx_mx_solaorderentry_sail_v1_21.filler_must_be_blank_x_2 = {}

-- Size: Filler Must Be Blank X 2
tmx_mx_solaorderentry_sail_v1_21.filler_must_be_blank_x_2.size = 2

-- Display: Filler Must Be Blank X 2
tmx_mx_solaorderentry_sail_v1_21.filler_must_be_blank_x_2.display = function(value)
  return "Filler Must Be Blank X 2: "..value
end

-- Dissect: Filler Must Be Blank X 2
tmx_mx_solaorderentry_sail_v1_21.filler_must_be_blank_x_2.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.filler_must_be_blank_x_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = tmx_mx_solaorderentry_sail_v1_21.filler_must_be_blank_x_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.filler_must_be_blank_x_2, range, value, display)

  return offset + length, value
end

-- Filler Must Be Blank X 5
tmx_mx_solaorderentry_sail_v1_21.filler_must_be_blank_x_5 = {}

-- Size: Filler Must Be Blank X 5
tmx_mx_solaorderentry_sail_v1_21.filler_must_be_blank_x_5.size = 5

-- Display: Filler Must Be Blank X 5
tmx_mx_solaorderentry_sail_v1_21.filler_must_be_blank_x_5.display = function(value)
  return "Filler Must Be Blank X 5: "..value
end

-- Dissect: Filler Must Be Blank X 5
tmx_mx_solaorderentry_sail_v1_21.filler_must_be_blank_x_5.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.filler_must_be_blank_x_5.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = tmx_mx_solaorderentry_sail_v1_21.filler_must_be_blank_x_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.filler_must_be_blank_x_5, range, value, display)

  return offset + length, value
end

-- Filler N 6
tmx_mx_solaorderentry_sail_v1_21.filler_n_6 = {}

-- Size: Filler N 6
tmx_mx_solaorderentry_sail_v1_21.filler_n_6.size = 6

-- Display: Filler N 6
tmx_mx_solaorderentry_sail_v1_21.filler_n_6.display = function(value)
  return "Filler N 6: "..value
end

-- Dissect: Filler N 6
tmx_mx_solaorderentry_sail_v1_21.filler_n_6.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.filler_n_6.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = tmx_mx_solaorderentry_sail_v1_21.filler_n_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.filler_n_6, range, value, display)

  return offset + length, value
end

-- Filler X 1
tmx_mx_solaorderentry_sail_v1_21.filler_x_1 = {}

-- Size: Filler X 1
tmx_mx_solaorderentry_sail_v1_21.filler_x_1.size = 1

-- Display: Filler X 1
tmx_mx_solaorderentry_sail_v1_21.filler_x_1.display = function(value)
  return "Filler X 1: "..value
end

-- Dissect: Filler X 1
tmx_mx_solaorderentry_sail_v1_21.filler_x_1.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.filler_x_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = tmx_mx_solaorderentry_sail_v1_21.filler_x_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.filler_x_1, range, value, display)

  return offset + length, value
end

-- Filler X 2
tmx_mx_solaorderentry_sail_v1_21.filler_x_2 = {}

-- Size: Filler X 2
tmx_mx_solaorderentry_sail_v1_21.filler_x_2.size = 2

-- Display: Filler X 2
tmx_mx_solaorderentry_sail_v1_21.filler_x_2.display = function(value)
  return "Filler X 2: "..value
end

-- Dissect: Filler X 2
tmx_mx_solaorderentry_sail_v1_21.filler_x_2.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.filler_x_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = tmx_mx_solaorderentry_sail_v1_21.filler_x_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.filler_x_2, range, value, display)

  return offset + length, value
end

-- Filler X 20
tmx_mx_solaorderentry_sail_v1_21.filler_x_20 = {}

-- Size: Filler X 20
tmx_mx_solaorderentry_sail_v1_21.filler_x_20.size = 20

-- Display: Filler X 20
tmx_mx_solaorderentry_sail_v1_21.filler_x_20.display = function(value)
  return "Filler X 20: "..value
end

-- Dissect: Filler X 20
tmx_mx_solaorderentry_sail_v1_21.filler_x_20.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.filler_x_20.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = tmx_mx_solaorderentry_sail_v1_21.filler_x_20.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.filler_x_20, range, value, display)

  return offset + length, value
end

-- Filler X 4
tmx_mx_solaorderentry_sail_v1_21.filler_x_4 = {}

-- Size: Filler X 4
tmx_mx_solaorderentry_sail_v1_21.filler_x_4.size = 4

-- Display: Filler X 4
tmx_mx_solaorderentry_sail_v1_21.filler_x_4.display = function(value)
  return "Filler X 4: "..value
end

-- Dissect: Filler X 4
tmx_mx_solaorderentry_sail_v1_21.filler_x_4.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.filler_x_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = tmx_mx_solaorderentry_sail_v1_21.filler_x_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.filler_x_4, range, value, display)

  return offset + length, value
end

-- Firm Level Risk Option
tmx_mx_solaorderentry_sail_v1_21.firm_level_risk_option = {}

-- Size: Firm Level Risk Option
tmx_mx_solaorderentry_sail_v1_21.firm_level_risk_option.size = 1

-- Display: Firm Level Risk Option
tmx_mx_solaorderentry_sail_v1_21.firm_level_risk_option.display = function(value)
  return "Firm Level Risk Option: "..value
end

-- Dissect: Firm Level Risk Option
tmx_mx_solaorderentry_sail_v1_21.firm_level_risk_option.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.firm_level_risk_option.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.firm_level_risk_option.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.firm_level_risk_option, range, value, display)

  return offset + length, value
end

-- Gap Sequence Id
tmx_mx_solaorderentry_sail_v1_21.gap_sequence_id = {}

-- Size: Gap Sequence Id
tmx_mx_solaorderentry_sail_v1_21.gap_sequence_id.size = 2

-- Display: Gap Sequence Id
tmx_mx_solaorderentry_sail_v1_21.gap_sequence_id.display = function(value)
  return "Gap Sequence Id: "..value
end

-- Dissect: Gap Sequence Id
tmx_mx_solaorderentry_sail_v1_21.gap_sequence_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.gap_sequence_id.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.gap_sequence_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.gap_sequence_id, range, value, display)

  return offset + length, value
end

-- Global Net Exposure Action
tmx_mx_solaorderentry_sail_v1_21.global_net_exposure_action = {}

-- Size: Global Net Exposure Action
tmx_mx_solaorderentry_sail_v1_21.global_net_exposure_action.size = 1

-- Display: Global Net Exposure Action
tmx_mx_solaorderentry_sail_v1_21.global_net_exposure_action.display = function(value)
  return "Global Net Exposure Action: "..value
end

-- Dissect: Global Net Exposure Action
tmx_mx_solaorderentry_sail_v1_21.global_net_exposure_action.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.global_net_exposure_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.global_net_exposure_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.global_net_exposure_action, range, value, display)

  return offset + length, value
end

-- Global Net Exposure Limit
tmx_mx_solaorderentry_sail_v1_21.global_net_exposure_limit = {}

-- Size: Global Net Exposure Limit
tmx_mx_solaorderentry_sail_v1_21.global_net_exposure_limit.size = 10

-- Display: Global Net Exposure Limit
tmx_mx_solaorderentry_sail_v1_21.global_net_exposure_limit.display = function(value)
  return "Global Net Exposure Limit: "..value
end

-- Dissect: Global Net Exposure Limit
tmx_mx_solaorderentry_sail_v1_21.global_net_exposure_limit.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.global_net_exposure_limit.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.global_net_exposure_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.global_net_exposure_limit, range, value, display)

  return offset + length, value
end

-- Group
tmx_mx_solaorderentry_sail_v1_21.group = {}

-- Size: Group
tmx_mx_solaorderentry_sail_v1_21.group.size = 2

-- Display: Group
tmx_mx_solaorderentry_sail_v1_21.group.display = function(value)
  return "Group: "..value
end

-- Dissect: Group
tmx_mx_solaorderentry_sail_v1_21.group.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.group.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.group.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.group, range, value, display)

  return offset + length, value
end

-- Group State
tmx_mx_solaorderentry_sail_v1_21.group_state = {}

-- Size: Group State
tmx_mx_solaorderentry_sail_v1_21.group_state.size = 1

-- Display: Group State
tmx_mx_solaorderentry_sail_v1_21.group_state.display = function(value)
  return "Group State: "..value
end

-- Dissect: Group State
tmx_mx_solaorderentry_sail_v1_21.group_state.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.group_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.group_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.group_state, range, value, display)

  return offset + length, value
end

-- Gtd Date
tmx_mx_solaorderentry_sail_v1_21.gtd_date = {}

-- Size: Gtd Date
tmx_mx_solaorderentry_sail_v1_21.gtd_date.size = 8

-- Display: Gtd Date
tmx_mx_solaorderentry_sail_v1_21.gtd_date.display = function(value)
  return "Gtd Date: "..value
end

-- Dissect: Gtd Date
tmx_mx_solaorderentry_sail_v1_21.gtd_date.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.gtd_date.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.gtd_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.gtd_date, range, value, display)

  return offset + length, value
end

-- Hedge Spec
tmx_mx_solaorderentry_sail_v1_21.hedge_spec = {}

-- Size: Hedge Spec
tmx_mx_solaorderentry_sail_v1_21.hedge_spec.size = 1

-- Display: Hedge Spec
tmx_mx_solaorderentry_sail_v1_21.hedge_spec.display = function(value)
  return "Hedge Spec: "..value
end

-- Dissect: Hedge Spec
tmx_mx_solaorderentry_sail_v1_21.hedge_spec.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.hedge_spec.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.hedge_spec.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.hedge_spec, range, value, display)

  return offset + length, value
end

-- Id Code For The Counterpart Participant
tmx_mx_solaorderentry_sail_v1_21.id_code_for_the_counterpart_participant = {}

-- Size: Id Code For The Counterpart Participant
tmx_mx_solaorderentry_sail_v1_21.id_code_for_the_counterpart_participant.size = 4

-- Display: Id Code For The Counterpart Participant
tmx_mx_solaorderentry_sail_v1_21.id_code_for_the_counterpart_participant.display = function(value)
  return "Id Code For The Counterpart Participant: "..value
end

-- Dissect: Id Code For The Counterpart Participant
tmx_mx_solaorderentry_sail_v1_21.id_code_for_the_counterpart_participant.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.id_code_for_the_counterpart_participant.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.id_code_for_the_counterpart_participant.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.id_code_for_the_counterpart_participant, range, value, display)

  return offset + length, value
end

-- Inactivity Interval
tmx_mx_solaorderentry_sail_v1_21.inactivity_interval = {}

-- Size: Inactivity Interval
tmx_mx_solaorderentry_sail_v1_21.inactivity_interval.size = 2

-- Display: Inactivity Interval
tmx_mx_solaorderentry_sail_v1_21.inactivity_interval.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Inactivity Interval: No Value"
  end

  return "Inactivity Interval: "..value
end

-- Dissect: Inactivity Interval
tmx_mx_solaorderentry_sail_v1_21.inactivity_interval.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.inactivity_interval.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.inactivity_interval.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.inactivity_interval, range, value, display)

  return offset + length, value
end

-- Instrument
tmx_mx_solaorderentry_sail_v1_21.instrument = {}

-- Size: Instrument
tmx_mx_solaorderentry_sail_v1_21.instrument.size = 4

-- Display: Instrument
tmx_mx_solaorderentry_sail_v1_21.instrument.display = function(value)
  return "Instrument: "..value
end

-- Dissect: Instrument
tmx_mx_solaorderentry_sail_v1_21.instrument.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.instrument.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.instrument, range, value, display)

  return offset + length, value
end

-- Instrument State
tmx_mx_solaorderentry_sail_v1_21.instrument_state = {}

-- Size: Instrument State
tmx_mx_solaorderentry_sail_v1_21.instrument_state.size = 1

-- Display: Instrument State
tmx_mx_solaorderentry_sail_v1_21.instrument_state.display = function(value)
  return "Instrument State: "..value
end

-- Dissect: Instrument State
tmx_mx_solaorderentry_sail_v1_21.instrument_state.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.instrument_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.instrument_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.instrument_state, range, value, display)

  return offset + length, value
end

-- Last Exchange Message Id Sent To Participant
tmx_mx_solaorderentry_sail_v1_21.last_exchange_message_id_sent_to_participant = {}

-- Size: Last Exchange Message Id Sent To Participant
tmx_mx_solaorderentry_sail_v1_21.last_exchange_message_id_sent_to_participant.size = 6

-- Display: Last Exchange Message Id Sent To Participant
tmx_mx_solaorderentry_sail_v1_21.last_exchange_message_id_sent_to_participant.display = function(value)
  return "Last Exchange Message Id Sent To Participant: "..value
end

-- Dissect: Last Exchange Message Id Sent To Participant
tmx_mx_solaorderentry_sail_v1_21.last_exchange_message_id_sent_to_participant.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.last_exchange_message_id_sent_to_participant.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.last_exchange_message_id_sent_to_participant.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.last_exchange_message_id_sent_to_participant, range, value, display)

  return offset + length, value
end

-- Last User Sequence Id Received
tmx_mx_solaorderentry_sail_v1_21.last_user_sequence_id_received = {}

-- Size: Last User Sequence Id Received
tmx_mx_solaorderentry_sail_v1_21.last_user_sequence_id_received.size = 8

-- Display: Last User Sequence Id Received
tmx_mx_solaorderentry_sail_v1_21.last_user_sequence_id_received.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Last User Sequence Id Received: No Value"
  end

  return "Last User Sequence Id Received: "..value
end

-- Dissect: Last User Sequence Id Received
tmx_mx_solaorderentry_sail_v1_21.last_user_sequence_id_received.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.last_user_sequence_id_received.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.last_user_sequence_id_received.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.last_user_sequence_id_received, range, value, display)

  return offset + length, value
end

-- Last User Sequence Id Received If No Business Message Has Been Received On This Connection This Field Is Equal To Zeroes
tmx_mx_solaorderentry_sail_v1_21.last_user_sequence_id_received_if_no_business_message_has_been_received_on_this_connection_this_field_is_equal_to_zeroes = {}

-- Size: Last User Sequence Id Received If No Business Message Has Been Received On This Connection This Field Is Equal To Zeroes
tmx_mx_solaorderentry_sail_v1_21.last_user_sequence_id_received_if_no_business_message_has_been_received_on_this_connection_this_field_is_equal_to_zeroes.size = 8

-- Display: Last User Sequence Id Received If No Business Message Has Been Received On This Connection This Field Is Equal To Zeroes
tmx_mx_solaorderentry_sail_v1_21.last_user_sequence_id_received_if_no_business_message_has_been_received_on_this_connection_this_field_is_equal_to_zeroes.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Last User Sequence Id Received If No Business Message Has Been Received On This Connection This Field Is Equal To Zeroes: No Value"
  end

  return "Last User Sequence Id Received If No Business Message Has Been Received On This Connection This Field Is Equal To Zeroes: "..value
end

-- Dissect: Last User Sequence Id Received If No Business Message Has Been Received On This Connection This Field Is Equal To Zeroes
tmx_mx_solaorderentry_sail_v1_21.last_user_sequence_id_received_if_no_business_message_has_been_received_on_this_connection_this_field_is_equal_to_zeroes.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.last_user_sequence_id_received_if_no_business_message_has_been_received_on_this_connection_this_field_is_equal_to_zeroes.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.last_user_sequence_id_received_if_no_business_message_has_been_received_on_this_connection_this_field_is_equal_to_zeroes.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.last_user_sequence_id_received_if_no_business_message_has_been_received_on_this_connection_this_field_is_equal_to_zeroes, range, value, display)

  return offset + length, value
end

-- Leg Group
tmx_mx_solaorderentry_sail_v1_21.leg_group = {}

-- Size: Leg Group
tmx_mx_solaorderentry_sail_v1_21.leg_group.size = 2

-- Display: Leg Group
tmx_mx_solaorderentry_sail_v1_21.leg_group.display = function(value)
  return "Leg Group: "..value
end

-- Dissect: Leg Group
tmx_mx_solaorderentry_sail_v1_21.leg_group.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.leg_group.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.leg_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.leg_group, range, value, display)

  return offset + length, value
end

-- Leg Instrument
tmx_mx_solaorderentry_sail_v1_21.leg_instrument = {}

-- Size: Leg Instrument
tmx_mx_solaorderentry_sail_v1_21.leg_instrument.size = 4

-- Display: Leg Instrument
tmx_mx_solaorderentry_sail_v1_21.leg_instrument.display = function(value)
  return "Leg Instrument: "..value
end

-- Dissect: Leg Instrument
tmx_mx_solaorderentry_sail_v1_21.leg_instrument.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.leg_instrument.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.leg_instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.leg_instrument, range, value, display)

  return offset + length, value
end

-- Leg Number
tmx_mx_solaorderentry_sail_v1_21.leg_number = {}

-- Size: Leg Number
tmx_mx_solaorderentry_sail_v1_21.leg_number.size = 2

-- Display: Leg Number
tmx_mx_solaorderentry_sail_v1_21.leg_number.display = function(value)
  return "Leg Number: "..value
end

-- Dissect: Leg Number
tmx_mx_solaorderentry_sail_v1_21.leg_number.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.leg_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.leg_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.leg_number, range, value, display)

  return offset + length, value
end

-- Leg Quantity Ratio
tmx_mx_solaorderentry_sail_v1_21.leg_quantity_ratio = {}

-- Size: Leg Quantity Ratio
tmx_mx_solaorderentry_sail_v1_21.leg_quantity_ratio.size = 8

-- Display: Leg Quantity Ratio
tmx_mx_solaorderentry_sail_v1_21.leg_quantity_ratio.display = function(value)
  return "Leg Quantity Ratio: "..value
end

-- Dissect: Leg Quantity Ratio
tmx_mx_solaorderentry_sail_v1_21.leg_quantity_ratio.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.leg_quantity_ratio.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.leg_quantity_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.leg_quantity_ratio, range, value, display)

  return offset + length, value
end

-- Leg Verb
tmx_mx_solaorderentry_sail_v1_21.leg_verb = {}

-- Size: Leg Verb
tmx_mx_solaorderentry_sail_v1_21.leg_verb.size = 1

-- Display: Leg Verb
tmx_mx_solaorderentry_sail_v1_21.leg_verb.display = function(value)
  return "Leg Verb: "..value
end

-- Dissect: Leg Verb
tmx_mx_solaorderentry_sail_v1_21.leg_verb.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.leg_verb.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.leg_verb.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.leg_verb, range, value, display)

  return offset + length, value
end

-- Limit Type
tmx_mx_solaorderentry_sail_v1_21.limit_type = {}

-- Size: Limit Type
tmx_mx_solaorderentry_sail_v1_21.limit_type.size = 1

-- Display: Limit Type
tmx_mx_solaorderentry_sail_v1_21.limit_type.display = function(value)
  return "Limit Type: "..value
end

-- Dissect: Limit Type
tmx_mx_solaorderentry_sail_v1_21.limit_type.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.limit_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.limit_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.limit_type, range, value, display)

  return offset + length, value
end

-- Limit Value
tmx_mx_solaorderentry_sail_v1_21.limit_value = {}

-- Size: Limit Value
tmx_mx_solaorderentry_sail_v1_21.limit_value.size = 10

-- Display: Limit Value
tmx_mx_solaorderentry_sail_v1_21.limit_value.display = function(value)
  return "Limit Value: "..value
end

-- Dissect: Limit Value
tmx_mx_solaorderentry_sail_v1_21.limit_value.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.limit_value.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.limit_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.limit_value, range, value, display)

  return offset + length, value
end

-- Long Exposure Action
tmx_mx_solaorderentry_sail_v1_21.long_exposure_action = {}

-- Size: Long Exposure Action
tmx_mx_solaorderentry_sail_v1_21.long_exposure_action.size = 1

-- Display: Long Exposure Action
tmx_mx_solaorderentry_sail_v1_21.long_exposure_action.display = function(value)
  return "Long Exposure Action: "..value
end

-- Dissect: Long Exposure Action
tmx_mx_solaorderentry_sail_v1_21.long_exposure_action.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.long_exposure_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.long_exposure_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.long_exposure_action, range, value, display)

  return offset + length, value
end

-- Long Exposure Limit
tmx_mx_solaorderentry_sail_v1_21.long_exposure_limit = {}

-- Size: Long Exposure Limit
tmx_mx_solaorderentry_sail_v1_21.long_exposure_limit.size = 10

-- Display: Long Exposure Limit
tmx_mx_solaorderentry_sail_v1_21.long_exposure_limit.display = function(value)
  return "Long Exposure Limit: "..value
end

-- Dissect: Long Exposure Limit
tmx_mx_solaorderentry_sail_v1_21.long_exposure_limit.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.long_exposure_limit.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.long_exposure_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.long_exposure_limit, range, value, display)

  return offset + length, value
end

-- Long Position Action
tmx_mx_solaorderentry_sail_v1_21.long_position_action = {}

-- Size: Long Position Action
tmx_mx_solaorderentry_sail_v1_21.long_position_action.size = 1

-- Display: Long Position Action
tmx_mx_solaorderentry_sail_v1_21.long_position_action.display = function(value)
  return "Long Position Action: "..value
end

-- Dissect: Long Position Action
tmx_mx_solaorderentry_sail_v1_21.long_position_action.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.long_position_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.long_position_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.long_position_action, range, value, display)

  return offset + length, value
end

-- Long Position Limit
tmx_mx_solaorderentry_sail_v1_21.long_position_limit = {}

-- Size: Long Position Limit
tmx_mx_solaorderentry_sail_v1_21.long_position_limit.size = 8

-- Display: Long Position Limit
tmx_mx_solaorderentry_sail_v1_21.long_position_limit.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Long Position Limit: No Value"
  end

  return "Long Position Limit: "..value
end

-- Dissect: Long Position Limit
tmx_mx_solaorderentry_sail_v1_21.long_position_limit.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.long_position_limit.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.long_position_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.long_position_limit, range, value, display)

  return offset + length, value
end

-- Market Side
tmx_mx_solaorderentry_sail_v1_21.market_side = {}

-- Size: Market Side
tmx_mx_solaorderentry_sail_v1_21.market_side.size = 1

-- Display: Market Side
tmx_mx_solaorderentry_sail_v1_21.market_side.display = function(value)
  return "Market Side: "..value
end

-- Dissect: Market Side
tmx_mx_solaorderentry_sail_v1_21.market_side.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.market_side.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.market_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.market_side, range, value, display)

  return offset + length, value
end

-- Maximum Number Trades
tmx_mx_solaorderentry_sail_v1_21.maximum_number_trades = {}

-- Size: Maximum Number Trades
tmx_mx_solaorderentry_sail_v1_21.maximum_number_trades.size = 2

-- Display: Maximum Number Trades
tmx_mx_solaorderentry_sail_v1_21.maximum_number_trades.display = function(value)
  return "Maximum Number Trades: "..value
end

-- Dissect: Maximum Number Trades
tmx_mx_solaorderentry_sail_v1_21.maximum_number_trades.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.maximum_number_trades.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.maximum_number_trades.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.maximum_number_trades, range, value, display)

  return offset + length, value
end

-- Maximum Order Quantity
tmx_mx_solaorderentry_sail_v1_21.maximum_order_quantity = {}

-- Size: Maximum Order Quantity
tmx_mx_solaorderentry_sail_v1_21.maximum_order_quantity.size = 8

-- Display: Maximum Order Quantity
tmx_mx_solaorderentry_sail_v1_21.maximum_order_quantity.display = function(value)
  return "Maximum Order Quantity: "..value
end

-- Dissect: Maximum Order Quantity
tmx_mx_solaorderentry_sail_v1_21.maximum_order_quantity.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.maximum_order_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.maximum_order_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.maximum_order_quantity, range, value, display)

  return offset + length, value
end

-- Maximum Total Value
tmx_mx_solaorderentry_sail_v1_21.maximum_total_value = {}

-- Size: Maximum Total Value
tmx_mx_solaorderentry_sail_v1_21.maximum_total_value.size = 8

-- Display: Maximum Total Value
tmx_mx_solaorderentry_sail_v1_21.maximum_total_value.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Maximum Total Value: No Value"
  end

  return "Maximum Total Value: "..value
end

-- Dissect: Maximum Total Value
tmx_mx_solaorderentry_sail_v1_21.maximum_total_value.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.maximum_total_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.maximum_total_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.maximum_total_value, range, value, display)

  return offset + length, value
end

-- Maximum Total Volume
tmx_mx_solaorderentry_sail_v1_21.maximum_total_volume = {}

-- Size: Maximum Total Volume
tmx_mx_solaorderentry_sail_v1_21.maximum_total_volume.size = 8

-- Display: Maximum Total Volume
tmx_mx_solaorderentry_sail_v1_21.maximum_total_volume.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Maximum Total Volume: No Value"
  end

  return "Maximum Total Volume: "..value
end

-- Dissect: Maximum Total Volume
tmx_mx_solaorderentry_sail_v1_21.maximum_total_volume.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.maximum_total_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.maximum_total_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.maximum_total_volume, range, value, display)

  return offset + length, value
end

-- Memo
tmx_mx_solaorderentry_sail_v1_21.memo = {}

-- Size: Memo
tmx_mx_solaorderentry_sail_v1_21.memo.size = 50

-- Display: Memo
tmx_mx_solaorderentry_sail_v1_21.memo.display = function(value)
  return "Memo: "..value
end

-- Dissect: Memo
tmx_mx_solaorderentry_sail_v1_21.memo.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.memo.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.memo.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.memo, range, value, display)

  return offset + length, value
end

-- Message Length
tmx_mx_solaorderentry_sail_v1_21.message_length = {}

-- Size: Message Length
tmx_mx_solaorderentry_sail_v1_21.message_length.size = 4

-- Display: Message Length
tmx_mx_solaorderentry_sail_v1_21.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
tmx_mx_solaorderentry_sail_v1_21.message_length.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_mx_solaorderentry_sail_v1_21.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
tmx_mx_solaorderentry_sail_v1_21.message_type = {}

-- Size: Message Type
tmx_mx_solaorderentry_sail_v1_21.message_type.size = 2

-- Display: Message Type
tmx_mx_solaorderentry_sail_v1_21.message_type.display = function(value)
  if value == "TC" then
    return "Message Type: User Connection (TC)"
  end
  if value == "TK" then
    return "Message Type: Connection Acknowledgement (TK)"
  end
  if value == "TA" then
    return "Message Type: Disconnection Instruction (TA)"
  end
  if value == "TM" then
    return "Message Type: Disconnection Instruction Acknowledgement (TM)"
  end
  if value == "TH" then
    return "Message Type: Heartbeat Question (TH)"
  end
  if value == "TI" then
    return "Message Type: Heartbeat Response (TI)"
  end
  if value == "TO" then
    return "Message Type: Out Of Sequence (TO)"
  end
  if value == "TE" then
    return "Message Type: Technical Error Notice (TE)"
  end
  if value == "TD" then
    return "Message Type: User Disconnection (TD)"
  end
  if value == "TL" then
    return "Message Type: Disconnection Acknowledgement (TL)"
  end
  if value == "TT" then
    return "Message Type: End Of Transmission (TT)"
  end
  if value == "AE" then
    return "Message Type: Order Reply (AE)"
  end
  if value == "AF" then
    return "Message Type: Order Request (AF)"
  end
  if value == "BD" then
    return "Message Type: Bulk Quote Data (BD)"
  end
  if value == "CR" then
    return "Message Type: Firm Risk Config (CR)"
  end
  if value == "ER" then
    return "Message Type: Error Notice (ER)"
  end
  if value == "GC" then
    return "Message Type: Global Cancellation (GC)"
  end
  if value == "GZ" then
    return "Message Type: User Global Cancellation (GZ)"
  end
  if value == "KD" then
    return "Message Type: Bulk Quote Data Acknowledgement (KD)"
  end
  if value == "KE" then
    return "Message Type: Order Acknowledgement (KE)"
  end
  if value == "KG" then
    return "Message Type: Global Cancellation Confirmation (KG)"
  end
  if value == "KM" then
    return "Message Type: Order Modification Acknowledgement (KM)"
  end
  if value == "KN" then
    return "Message Type: New Strategy Instrument Acknowledgement (KN)"
  end
  if value == "KO" then
    return "Message Type: Standard Acknowledgement (KO)"
  end
  if value == "KZ" then
    return "Message Type: Order Cancellation Acknowledgement (KZ)"
  end
  if value == "LA" then
    return "Message Type: Bulk Quote Acknowledgement (LA)"
  end
  if value == "LB" then
    return "Message Type: Bulk Command Acknowledgement (LB)"
  end
  if value == "MK" then
    return "Message Type: Set Group Risk Limits (MK)"
  end
  if value == "ML" then
    return "Message Type: Set Global Risk Limits (ML)"
  end
  if value == "MN" then
    return "Message Type: Risk Limits Usage (MN)"
  end
  if value == "NE" then
    return "Message Type: Excluded Instrument Notice (NE)"
  end
  if value == "NG" then
    return "Message Type: Group State Change (NG)"
  end
  if value == "NI" then
    return "Message Type: Instrument State Change (NI)"
  end
  if value == "NL" then
    return "Message Type: Leg Execution Notice (NL)"
  end
  if value == "NO" then
    return "Message Type: Overstepped Order Or Quote Notice (NO)"
  end
  if value == "NP" then
    return "Message Type: Cancellation Of All Quotes Notice (NP)"
  end
  if value == "NT" then
    return "Message Type: Execution Notice (NT)"
  end
  if value == "NX" then
    return "Message Type: Execution Cancellation Notice (NX)"
  end
  if value == "NY" then
    return "Message Type: Leg Execution Cancellation Notice (NY)"
  end
  if value == "NZ" then
    return "Message Type: Order Cancellation Notice By Mod Or System (NZ)"
  end
  if value == "OE" then
    return "Message Type: Order Entry (OE)"
  end
  if value == "OM" then
    return "Message Type: Order Modification (OM)"
  end
  if value == "ON" then
    return "Message Type: New Strategy Instrument (ON)"
  end
  if value == "OX" then
    return "Message Type: Cross Entry (OX)"
  end
  if value == "QP" then
    return "Message Type: Bulk Quote (QP)"
  end
  if value == "QS" then
    return "Message Type: Sail Request For Quote With Side (QS)"
  end
  if value == "QW" then
    return "Message Type: Request For Quote With Side Acknowledgement (QW)"
  end
  if value == "RP" then
    return "Message Type: Bulk Quote Participant Bqp Protection Subscription (RP)"
  end
  if value == "RQ" then
    return "Message Type: Request For Quote (RQ)"
  end
  if value == "XE" then
    return "Message Type: Order Cancellation (XE)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
tmx_mx_solaorderentry_sail_v1_21.message_type.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.message_type, range, value, display)

  return offset + length, value
end

-- Message Types To Be Received
tmx_mx_solaorderentry_sail_v1_21.message_types_to_be_received = {}

-- Size: Message Types To Be Received
tmx_mx_solaorderentry_sail_v1_21.message_types_to_be_received.size = 2

-- Display: Message Types To Be Received
tmx_mx_solaorderentry_sail_v1_21.message_types_to_be_received.display = function(value)
  return "Message Types To Be Received: "..value
end

-- Dissect: Message Types To Be Received
tmx_mx_solaorderentry_sail_v1_21.message_types_to_be_received.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.message_types_to_be_received.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.message_types_to_be_received.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.message_types_to_be_received, range, value, display)

  return offset + length, value
end

-- Minimum Volume
tmx_mx_solaorderentry_sail_v1_21.minimum_volume = {}

-- Size: Minimum Volume
tmx_mx_solaorderentry_sail_v1_21.minimum_volume.size = 8

-- Display: Minimum Volume
tmx_mx_solaorderentry_sail_v1_21.minimum_volume.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Minimum Volume: No Value"
  end

  return "Minimum Volume: "..value
end

-- Dissect: Minimum Volume
tmx_mx_solaorderentry_sail_v1_21.minimum_volume.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.minimum_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.minimum_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.minimum_volume, range, value, display)

  return offset + length, value
end

-- Modified Order Id
tmx_mx_solaorderentry_sail_v1_21.modified_order_id = {}

-- Size: Modified Order Id
tmx_mx_solaorderentry_sail_v1_21.modified_order_id.size = 8

-- Display: Modified Order Id
tmx_mx_solaorderentry_sail_v1_21.modified_order_id.display = function(value)
  return "Modified Order Id: "..value
end

-- Dissect: Modified Order Id
tmx_mx_solaorderentry_sail_v1_21.modified_order_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.modified_order_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.modified_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.modified_order_id, range, value, display)

  return offset + length, value
end

-- Nb Of Instruments
tmx_mx_solaorderentry_sail_v1_21.nb_of_instruments = {}

-- Size: Nb Of Instruments
tmx_mx_solaorderentry_sail_v1_21.nb_of_instruments.size = 4

-- Display: Nb Of Instruments
tmx_mx_solaorderentry_sail_v1_21.nb_of_instruments.display = function(value)
  return "Nb Of Instruments: "..value
end

-- Dissect: Nb Of Instruments
tmx_mx_solaorderentry_sail_v1_21.nb_of_instruments.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.nb_of_instruments.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.nb_of_instruments.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.nb_of_instruments, range, value, display)

  return offset + length, value
end

-- Net Exposure Action
tmx_mx_solaorderentry_sail_v1_21.net_exposure_action = {}

-- Size: Net Exposure Action
tmx_mx_solaorderentry_sail_v1_21.net_exposure_action.size = 1

-- Display: Net Exposure Action
tmx_mx_solaorderentry_sail_v1_21.net_exposure_action.display = function(value)
  return "Net Exposure Action: "..value
end

-- Dissect: Net Exposure Action
tmx_mx_solaorderentry_sail_v1_21.net_exposure_action.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.net_exposure_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.net_exposure_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.net_exposure_action, range, value, display)

  return offset + length, value
end

-- Net Exposure Limit
tmx_mx_solaorderentry_sail_v1_21.net_exposure_limit = {}

-- Size: Net Exposure Limit
tmx_mx_solaorderentry_sail_v1_21.net_exposure_limit.size = 10

-- Display: Net Exposure Limit
tmx_mx_solaorderentry_sail_v1_21.net_exposure_limit.display = function(value)
  return "Net Exposure Limit: "..value
end

-- Dissect: Net Exposure Limit
tmx_mx_solaorderentry_sail_v1_21.net_exposure_limit.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.net_exposure_limit.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.net_exposure_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.net_exposure_limit, range, value, display)

  return offset + length, value
end

-- Net Position Action
tmx_mx_solaorderentry_sail_v1_21.net_position_action = {}

-- Size: Net Position Action
tmx_mx_solaorderentry_sail_v1_21.net_position_action.size = 1

-- Display: Net Position Action
tmx_mx_solaorderentry_sail_v1_21.net_position_action.display = function(value)
  return "Net Position Action: "..value
end

-- Dissect: Net Position Action
tmx_mx_solaorderentry_sail_v1_21.net_position_action.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.net_position_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.net_position_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.net_position_action, range, value, display)

  return offset + length, value
end

-- Net Position Limit
tmx_mx_solaorderentry_sail_v1_21.net_position_limit = {}

-- Size: Net Position Limit
tmx_mx_solaorderentry_sail_v1_21.net_position_limit.size = 8

-- Display: Net Position Limit
tmx_mx_solaorderentry_sail_v1_21.net_position_limit.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Net Position Limit: No Value"
  end

  return "Net Position Limit: "..value
end

-- Dissect: Net Position Limit
tmx_mx_solaorderentry_sail_v1_21.net_position_limit.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.net_position_limit.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.net_position_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.net_position_limit, range, value, display)

  return offset + length, value
end

-- Number Of Commands
tmx_mx_solaorderentry_sail_v1_21.number_of_commands = {}

-- Size: Number Of Commands
tmx_mx_solaorderentry_sail_v1_21.number_of_commands.size = 4

-- Display: Number Of Commands
tmx_mx_solaorderentry_sail_v1_21.number_of_commands.display = function(value)
  return "Number Of Commands: "..value
end

-- Dissect: Number Of Commands
tmx_mx_solaorderentry_sail_v1_21.number_of_commands.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.number_of_commands.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.number_of_commands.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.number_of_commands, range, value, display)

  return offset + length, value
end

-- Number Of Group Limits
tmx_mx_solaorderentry_sail_v1_21.number_of_group_limits = {}

-- Size: Number Of Group Limits
tmx_mx_solaorderentry_sail_v1_21.number_of_group_limits.size = 3

-- Display: Number Of Group Limits
tmx_mx_solaorderentry_sail_v1_21.number_of_group_limits.display = function(value)
  return "Number Of Group Limits: "..value
end

-- Dissect: Number Of Group Limits
tmx_mx_solaorderentry_sail_v1_21.number_of_group_limits.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.number_of_group_limits.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.number_of_group_limits.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.number_of_group_limits, range, value, display)

  return offset + length, value
end

-- Number Of Instructions Present In The Message
tmx_mx_solaorderentry_sail_v1_21.number_of_instructions_present_in_the_message = {}

-- Size: Number Of Instructions Present In The Message
tmx_mx_solaorderentry_sail_v1_21.number_of_instructions_present_in_the_message.size = 2

-- Display: Number Of Instructions Present In The Message
tmx_mx_solaorderentry_sail_v1_21.number_of_instructions_present_in_the_message.display = function(value)
  return "Number Of Instructions Present In The Message: "..value
end

-- Dissect: Number Of Instructions Present In The Message
tmx_mx_solaorderentry_sail_v1_21.number_of_instructions_present_in_the_message.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.number_of_instructions_present_in_the_message.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.number_of_instructions_present_in_the_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.number_of_instructions_present_in_the_message, range, value, display)

  return offset + length, value
end

-- Number Of Legs
tmx_mx_solaorderentry_sail_v1_21.number_of_legs = {}

-- Size: Number Of Legs
tmx_mx_solaorderentry_sail_v1_21.number_of_legs.size = 2

-- Display: Number Of Legs
tmx_mx_solaorderentry_sail_v1_21.number_of_legs.display = function(value)
  return "Number Of Legs: "..value
end

-- Dissect: Number Of Legs
tmx_mx_solaorderentry_sail_v1_21.number_of_legs.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.number_of_legs.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.number_of_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.number_of_legs, range, value, display)

  return offset + length, value
end

-- Number Of Message Types To Be Received
tmx_mx_solaorderentry_sail_v1_21.number_of_message_types_to_be_received = {}

-- Size: Number Of Message Types To Be Received
tmx_mx_solaorderentry_sail_v1_21.number_of_message_types_to_be_received.size = 2

-- Display: Number Of Message Types To Be Received
tmx_mx_solaorderentry_sail_v1_21.number_of_message_types_to_be_received.display = function(value)
  return "Number Of Message Types To Be Received: "..value
end

-- Dissect: Number Of Message Types To Be Received
tmx_mx_solaorderentry_sail_v1_21.number_of_message_types_to_be_received.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.number_of_message_types_to_be_received.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.number_of_message_types_to_be_received.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.number_of_message_types_to_be_received, range, value, display)

  return offset + length, value
end

-- Number Of Quotes
tmx_mx_solaorderentry_sail_v1_21.number_of_quotes = {}

-- Size: Number Of Quotes
tmx_mx_solaorderentry_sail_v1_21.number_of_quotes.size = 3

-- Display: Number Of Quotes
tmx_mx_solaorderentry_sail_v1_21.number_of_quotes.display = function(value)
  return "Number Of Quotes: "..value
end

-- Dissect: Number Of Quotes
tmx_mx_solaorderentry_sail_v1_21.number_of_quotes.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.number_of_quotes.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.number_of_quotes.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.number_of_quotes, range, value, display)

  return offset + length, value
end

-- Number Of Quotes In Error
tmx_mx_solaorderentry_sail_v1_21.number_of_quotes_in_error = {}

-- Size: Number Of Quotes In Error
tmx_mx_solaorderentry_sail_v1_21.number_of_quotes_in_error.size = 3

-- Display: Number Of Quotes In Error
tmx_mx_solaorderentry_sail_v1_21.number_of_quotes_in_error.display = function(value)
  return "Number Of Quotes In Error: "..value
end

-- Dissect: Number Of Quotes In Error
tmx_mx_solaorderentry_sail_v1_21.number_of_quotes_in_error.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.number_of_quotes_in_error.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.number_of_quotes_in_error.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.number_of_quotes_in_error, range, value, display)

  return offset + length, value
end

-- Number Of Trader Teams
tmx_mx_solaorderentry_sail_v1_21.number_of_trader_teams = {}

-- Size: Number Of Trader Teams
tmx_mx_solaorderentry_sail_v1_21.number_of_trader_teams.size = 3

-- Display: Number Of Trader Teams
tmx_mx_solaorderentry_sail_v1_21.number_of_trader_teams.display = function(value)
  return "Number Of Trader Teams: "..value
end

-- Dissect: Number Of Trader Teams
tmx_mx_solaorderentry_sail_v1_21.number_of_trader_teams.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.number_of_trader_teams.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.number_of_trader_teams.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.number_of_trader_teams, range, value, display)

  return offset + length, value
end

-- Number Of Traders In Team
tmx_mx_solaorderentry_sail_v1_21.number_of_traders_in_team = {}

-- Size: Number Of Traders In Team
tmx_mx_solaorderentry_sail_v1_21.number_of_traders_in_team.size = 3

-- Display: Number Of Traders In Team
tmx_mx_solaorderentry_sail_v1_21.number_of_traders_in_team.display = function(value)
  return "Number Of Traders In Team: "..value
end

-- Dissect: Number Of Traders In Team
tmx_mx_solaorderentry_sail_v1_21.number_of_traders_in_team.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.number_of_traders_in_team.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.number_of_traders_in_team.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.number_of_traders_in_team, range, value, display)

  return offset + length, value
end

-- Number Of Usage Blocks
tmx_mx_solaorderentry_sail_v1_21.number_of_usage_blocks = {}

-- Size: Number Of Usage Blocks
tmx_mx_solaorderentry_sail_v1_21.number_of_usage_blocks.size = 4

-- Display: Number Of Usage Blocks
tmx_mx_solaorderentry_sail_v1_21.number_of_usage_blocks.display = function(value)
  return "Number Of Usage Blocks: "..value
end

-- Dissect: Number Of Usage Blocks
tmx_mx_solaorderentry_sail_v1_21.number_of_usage_blocks.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.number_of_usage_blocks.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.number_of_usage_blocks.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.number_of_usage_blocks, range, value, display)

  return offset + length, value
end

-- Open Close
tmx_mx_solaorderentry_sail_v1_21.open_close = {}

-- Size: Open Close
tmx_mx_solaorderentry_sail_v1_21.open_close.size = 1

-- Display: Open Close
tmx_mx_solaorderentry_sail_v1_21.open_close.display = function(value)
  return "Open Close: "..value
end

-- Dissect: Open Close
tmx_mx_solaorderentry_sail_v1_21.open_close.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.open_close.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.open_close.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.open_close, range, value, display)

  return offset + length, value
end

-- Order Id
tmx_mx_solaorderentry_sail_v1_21.order_id = {}

-- Size: Order Id
tmx_mx_solaorderentry_sail_v1_21.order_id.size = 8

-- Display: Order Id
tmx_mx_solaorderentry_sail_v1_21.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
tmx_mx_solaorderentry_sail_v1_21.order_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.order_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Type
tmx_mx_solaorderentry_sail_v1_21.order_type = {}

-- Size: Order Type
tmx_mx_solaorderentry_sail_v1_21.order_type.size = 1

-- Display: Order Type
tmx_mx_solaorderentry_sail_v1_21.order_type.display = function(value)
  return "Order Type: "..value
end

-- Dissect: Order Type
tmx_mx_solaorderentry_sail_v1_21.order_type.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.order_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.order_type, range, value, display)

  return offset + length, value
end

-- Original Message Type Af Gz Ml Ox Or Rq
tmx_mx_solaorderentry_sail_v1_21.original_message_type_af_gz_ml_ox_or_rq = {}

-- Size: Original Message Type Af Gz Ml Ox Or Rq
tmx_mx_solaorderentry_sail_v1_21.original_message_type_af_gz_ml_ox_or_rq.size = 2

-- Display: Original Message Type Af Gz Ml Ox Or Rq
tmx_mx_solaorderentry_sail_v1_21.original_message_type_af_gz_ml_ox_or_rq.display = function(value)
  return "Original Message Type Af Gz Ml Ox Or Rq: "..value
end

-- Dissect: Original Message Type Af Gz Ml Ox Or Rq
tmx_mx_solaorderentry_sail_v1_21.original_message_type_af_gz_ml_ox_or_rq.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.original_message_type_af_gz_ml_ox_or_rq.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.original_message_type_af_gz_ml_ox_or_rq.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.original_message_type_af_gz_ml_ox_or_rq, range, value, display)

  return offset + length, value
end

-- Original Order Id
tmx_mx_solaorderentry_sail_v1_21.original_order_id = {}

-- Size: Original Order Id
tmx_mx_solaorderentry_sail_v1_21.original_order_id.size = 8

-- Display: Original Order Id
tmx_mx_solaorderentry_sail_v1_21.original_order_id.display = function(value)
  return "Original Order Id: "..value
end

-- Dissect: Original Order Id
tmx_mx_solaorderentry_sail_v1_21.original_order_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.original_order_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.original_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.original_order_id, range, value, display)

  return offset + length, value
end

-- Original Reference Id
tmx_mx_solaorderentry_sail_v1_21.original_reference_id = {}

-- Size: Original Reference Id
tmx_mx_solaorderentry_sail_v1_21.original_reference_id.size = 8

-- Display: Original Reference Id
tmx_mx_solaorderentry_sail_v1_21.original_reference_id.display = function(value)
  return "Original Reference Id: "..value
end

-- Dissect: Original Reference Id
tmx_mx_solaorderentry_sail_v1_21.original_reference_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.original_reference_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.original_reference_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.original_reference_id, range, value, display)

  return offset + length, value
end

-- Password Md 5 Encryption
tmx_mx_solaorderentry_sail_v1_21.password_md_5_encryption = {}

-- Size: Password Md 5 Encryption
tmx_mx_solaorderentry_sail_v1_21.password_md_5_encryption.size = 8

-- Display: Password Md 5 Encryption
tmx_mx_solaorderentry_sail_v1_21.password_md_5_encryption.display = function(value)
  return "Password Md 5 Encryption: "..value
end

-- Dissect: Password Md 5 Encryption
tmx_mx_solaorderentry_sail_v1_21.password_md_5_encryption.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.password_md_5_encryption.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.password_md_5_encryption.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.password_md_5_encryption, range, value, display)

  return offset + length, value
end

-- Preceding User Sequence Id Received Zeroes If None
tmx_mx_solaorderentry_sail_v1_21.preceding_user_sequence_id_received_zeroes_if_none = {}

-- Size: Preceding User Sequence Id Received Zeroes If None
tmx_mx_solaorderentry_sail_v1_21.preceding_user_sequence_id_received_zeroes_if_none.size = 8

-- Display: Preceding User Sequence Id Received Zeroes If None
tmx_mx_solaorderentry_sail_v1_21.preceding_user_sequence_id_received_zeroes_if_none.display = function(value)
  return "Preceding User Sequence Id Received Zeroes If None: "..value
end

-- Dissect: Preceding User Sequence Id Received Zeroes If None
tmx_mx_solaorderentry_sail_v1_21.preceding_user_sequence_id_received_zeroes_if_none.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.preceding_user_sequence_id_received_zeroes_if_none.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.preceding_user_sequence_id_received_zeroes_if_none.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.preceding_user_sequence_id_received_zeroes_if_none, range, value, display)

  return offset + length, value
end

-- Price
tmx_mx_solaorderentry_sail_v1_21.price = {}

-- Size: Price
tmx_mx_solaorderentry_sail_v1_21.price.size = 10

-- Display: Price
tmx_mx_solaorderentry_sail_v1_21.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
tmx_mx_solaorderentry_sail_v1_21.price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.price.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.price, range, value, display)

  return offset + length, value
end

-- Price Type
tmx_mx_solaorderentry_sail_v1_21.price_type = {}

-- Size: Price Type
tmx_mx_solaorderentry_sail_v1_21.price_type.size = 1

-- Display: Price Type
tmx_mx_solaorderentry_sail_v1_21.price_type.display = function(value)
  return "Price Type: "..value
end

-- Dissect: Price Type
tmx_mx_solaorderentry_sail_v1_21.price_type.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.price_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.price_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.price_type, range, value, display)

  return offset + length, value
end

-- Protection Type Advanced Protection Advanced Protection Disabled
tmx_mx_solaorderentry_sail_v1_21.protection_type_advanced_protection_advanced_protection_disabled = {}

-- Size: Protection Type Advanced Protection Advanced Protection Disabled
tmx_mx_solaorderentry_sail_v1_21.protection_type_advanced_protection_advanced_protection_disabled.size = 1

-- Display: Protection Type Advanced Protection Advanced Protection Disabled
tmx_mx_solaorderentry_sail_v1_21.protection_type_advanced_protection_advanced_protection_disabled.display = function(value)
  return "Protection Type Advanced Protection Advanced Protection Disabled: "..value
end

-- Dissect: Protection Type Advanced Protection Advanced Protection Disabled
tmx_mx_solaorderentry_sail_v1_21.protection_type_advanced_protection_advanced_protection_disabled.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.protection_type_advanced_protection_advanced_protection_disabled.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.protection_type_advanced_protection_advanced_protection_disabled.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.protection_type_advanced_protection_advanced_protection_disabled, range, value, display)

  return offset + length, value
end

-- Protocol Id
tmx_mx_solaorderentry_sail_v1_21.protocol_id = {}

-- Size: Protocol Id
tmx_mx_solaorderentry_sail_v1_21.protocol_id.size = 2

-- Display: Protocol Id
tmx_mx_solaorderentry_sail_v1_21.protocol_id.display = function(value)
  return "Protocol Id: "..value
end

-- Dissect: Protocol Id
tmx_mx_solaorderentry_sail_v1_21.protocol_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.protocol_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.protocol_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.protocol_id, range, value, display)

  return offset + length, value
end

-- Quantity
tmx_mx_solaorderentry_sail_v1_21.quantity = {}

-- Size: Quantity
tmx_mx_solaorderentry_sail_v1_21.quantity.size = 8

-- Display: Quantity
tmx_mx_solaorderentry_sail_v1_21.quantity.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Quantity: No Value"
  end

  return "Quantity: "..value
end

-- Dissect: Quantity
tmx_mx_solaorderentry_sail_v1_21.quantity.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.quantity, range, value, display)

  return offset + length, value
end

-- Quantity Remaining
tmx_mx_solaorderentry_sail_v1_21.quantity_remaining = {}

-- Size: Quantity Remaining
tmx_mx_solaorderentry_sail_v1_21.quantity_remaining.size = 8

-- Display: Quantity Remaining
tmx_mx_solaorderentry_sail_v1_21.quantity_remaining.display = function(value)
  return "Quantity Remaining: "..value
end

-- Dissect: Quantity Remaining
tmx_mx_solaorderentry_sail_v1_21.quantity_remaining.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.quantity_remaining.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.quantity_remaining.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.quantity_remaining, range, value, display)

  return offset + length, value
end

-- Quantity Sign
tmx_mx_solaorderentry_sail_v1_21.quantity_sign = {}

-- Size: Quantity Sign
tmx_mx_solaorderentry_sail_v1_21.quantity_sign.size = 1

-- Display: Quantity Sign
tmx_mx_solaorderentry_sail_v1_21.quantity_sign.display = function(value)
  return "Quantity Sign: "..value
end

-- Dissect: Quantity Sign
tmx_mx_solaorderentry_sail_v1_21.quantity_sign.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.quantity_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.quantity_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.quantity_sign, range, value, display)

  return offset + length, value
end

-- Quantity Sign Or
tmx_mx_solaorderentry_sail_v1_21.quantity_sign_or = {}

-- Size: Quantity Sign Or
tmx_mx_solaorderentry_sail_v1_21.quantity_sign_or.size = 1

-- Display: Quantity Sign Or
tmx_mx_solaorderentry_sail_v1_21.quantity_sign_or.display = function(value)
  return "Quantity Sign Or: "..value
end

-- Dissect: Quantity Sign Or
tmx_mx_solaorderentry_sail_v1_21.quantity_sign_or.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.quantity_sign_or.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.quantity_sign_or.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.quantity_sign_or, range, value, display)

  return offset + length, value
end

-- Quantity Term
tmx_mx_solaorderentry_sail_v1_21.quantity_term = {}

-- Size: Quantity Term
tmx_mx_solaorderentry_sail_v1_21.quantity_term.size = 1

-- Display: Quantity Term
tmx_mx_solaorderentry_sail_v1_21.quantity_term.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Quantity Term: No Value"
  end

  return "Quantity Term: "..value
end

-- Dissect: Quantity Term
tmx_mx_solaorderentry_sail_v1_21.quantity_term.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.quantity_term.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.quantity_term.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.quantity_term, range, value, display)

  return offset + length, value
end

-- Quantity Traded
tmx_mx_solaorderentry_sail_v1_21.quantity_traded = {}

-- Size: Quantity Traded
tmx_mx_solaorderentry_sail_v1_21.quantity_traded.size = 8

-- Display: Quantity Traded
tmx_mx_solaorderentry_sail_v1_21.quantity_traded.display = function(value)
  return "Quantity Traded: "..value
end

-- Dissect: Quantity Traded
tmx_mx_solaorderentry_sail_v1_21.quantity_traded.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.quantity_traded.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.quantity_traded.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.quantity_traded, range, value, display)

  return offset + length, value
end

-- Quote Id Identifies Traders Quote On This Group
tmx_mx_solaorderentry_sail_v1_21.quote_id_identifies_traders_quote_on_this_group = {}

-- Size: Quote Id Identifies Traders Quote On This Group
tmx_mx_solaorderentry_sail_v1_21.quote_id_identifies_traders_quote_on_this_group.size = 8

-- Display: Quote Id Identifies Traders Quote On This Group
tmx_mx_solaorderentry_sail_v1_21.quote_id_identifies_traders_quote_on_this_group.display = function(value)
  return "Quote Id Identifies Traders Quote On This Group: "..value
end

-- Dissect: Quote Id Identifies Traders Quote On This Group
tmx_mx_solaorderentry_sail_v1_21.quote_id_identifies_traders_quote_on_this_group.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.quote_id_identifies_traders_quote_on_this_group.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.quote_id_identifies_traders_quote_on_this_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.quote_id_identifies_traders_quote_on_this_group, range, value, display)

  return offset + length, value
end

-- Quote Identifier On This Group
tmx_mx_solaorderentry_sail_v1_21.quote_identifier_on_this_group = {}

-- Size: Quote Identifier On This Group
tmx_mx_solaorderentry_sail_v1_21.quote_identifier_on_this_group.size = 8

-- Display: Quote Identifier On This Group
tmx_mx_solaorderentry_sail_v1_21.quote_identifier_on_this_group.display = function(value)
  return "Quote Identifier On This Group: "..value
end

-- Dissect: Quote Identifier On This Group
tmx_mx_solaorderentry_sail_v1_21.quote_identifier_on_this_group.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.quote_identifier_on_this_group.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.quote_identifier_on_this_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.quote_identifier_on_this_group, range, value, display)

  return offset + length, value
end

-- Quote Number
tmx_mx_solaorderentry_sail_v1_21.quote_number = {}

-- Size: Quote Number
tmx_mx_solaorderentry_sail_v1_21.quote_number.size = 3

-- Display: Quote Number
tmx_mx_solaorderentry_sail_v1_21.quote_number.display = function(value)
  return "Quote Number: "..value
end

-- Dissect: Quote Number
tmx_mx_solaorderentry_sail_v1_21.quote_number.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.quote_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.quote_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.quote_number, range, value, display)

  return offset + length, value
end

-- Received Message Type
tmx_mx_solaorderentry_sail_v1_21.received_message_type = {}

-- Size: Received Message Type
tmx_mx_solaorderentry_sail_v1_21.received_message_type.size = 2

-- Display: Received Message Type
tmx_mx_solaorderentry_sail_v1_21.received_message_type.display = function(value)
  return "Received Message Type: "..value
end

-- Dissect: Received Message Type
tmx_mx_solaorderentry_sail_v1_21.received_message_type.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.received_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.received_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.received_message_type, range, value, display)

  return offset + length, value
end

-- Received User Sequence Id
tmx_mx_solaorderentry_sail_v1_21.received_user_sequence_id = {}

-- Size: Received User Sequence Id
tmx_mx_solaorderentry_sail_v1_21.received_user_sequence_id.size = 8

-- Display: Received User Sequence Id
tmx_mx_solaorderentry_sail_v1_21.received_user_sequence_id.display = function(value)
  return "Received User Sequence Id: "..value
end

-- Dissect: Received User Sequence Id
tmx_mx_solaorderentry_sail_v1_21.received_user_sequence_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.received_user_sequence_id.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.received_user_sequence_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.received_user_sequence_id, range, value, display)

  return offset + length, value
end

-- Reference Id Order Id Or Quote Id
tmx_mx_solaorderentry_sail_v1_21.reference_id_order_id_or_quote_id = {}

-- Size: Reference Id Order Id Or Quote Id
tmx_mx_solaorderentry_sail_v1_21.reference_id_order_id_or_quote_id.size = 8

-- Display: Reference Id Order Id Or Quote Id
tmx_mx_solaorderentry_sail_v1_21.reference_id_order_id_or_quote_id.display = function(value)
  return "Reference Id Order Id Or Quote Id: "..value
end

-- Dissect: Reference Id Order Id Or Quote Id
tmx_mx_solaorderentry_sail_v1_21.reference_id_order_id_or_quote_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.reference_id_order_id_or_quote_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.reference_id_order_id_or_quote_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.reference_id_order_id_or_quote_id, range, value, display)

  return offset + length, value
end

-- Reset All Groups
tmx_mx_solaorderentry_sail_v1_21.reset_all_groups = {}

-- Size: Reset All Groups
tmx_mx_solaorderentry_sail_v1_21.reset_all_groups.size = 1

-- Display: Reset All Groups
tmx_mx_solaorderentry_sail_v1_21.reset_all_groups.display = function(value)
  return "Reset All Groups: "..value
end

-- Dissect: Reset All Groups
tmx_mx_solaorderentry_sail_v1_21.reset_all_groups.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.reset_all_groups.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.reset_all_groups.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.reset_all_groups, range, value, display)

  return offset + length, value
end

-- Session Id
tmx_mx_solaorderentry_sail_v1_21.session_id = {}

-- Size: Session Id
tmx_mx_solaorderentry_sail_v1_21.session_id.size = 4

-- Display: Session Id
tmx_mx_solaorderentry_sail_v1_21.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
tmx_mx_solaorderentry_sail_v1_21.session_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.session_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.session_id, range, value, display)

  return offset + length, value
end

-- Short Exposure Action
tmx_mx_solaorderentry_sail_v1_21.short_exposure_action = {}

-- Size: Short Exposure Action
tmx_mx_solaorderentry_sail_v1_21.short_exposure_action.size = 1

-- Display: Short Exposure Action
tmx_mx_solaorderentry_sail_v1_21.short_exposure_action.display = function(value)
  return "Short Exposure Action: "..value
end

-- Dissect: Short Exposure Action
tmx_mx_solaorderentry_sail_v1_21.short_exposure_action.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.short_exposure_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.short_exposure_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.short_exposure_action, range, value, display)

  return offset + length, value
end

-- Short Exposure Limit
tmx_mx_solaorderentry_sail_v1_21.short_exposure_limit = {}

-- Size: Short Exposure Limit
tmx_mx_solaorderentry_sail_v1_21.short_exposure_limit.size = 10

-- Display: Short Exposure Limit
tmx_mx_solaorderentry_sail_v1_21.short_exposure_limit.display = function(value)
  return "Short Exposure Limit: "..value
end

-- Dissect: Short Exposure Limit
tmx_mx_solaorderentry_sail_v1_21.short_exposure_limit.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.short_exposure_limit.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.short_exposure_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.short_exposure_limit, range, value, display)

  return offset + length, value
end

-- Short Position Action
tmx_mx_solaorderentry_sail_v1_21.short_position_action = {}

-- Size: Short Position Action
tmx_mx_solaorderentry_sail_v1_21.short_position_action.size = 1

-- Display: Short Position Action
tmx_mx_solaorderentry_sail_v1_21.short_position_action.display = function(value)
  return "Short Position Action: "..value
end

-- Dissect: Short Position Action
tmx_mx_solaorderentry_sail_v1_21.short_position_action.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.short_position_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.short_position_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.short_position_action, range, value, display)

  return offset + length, value
end

-- Short Position Limit
tmx_mx_solaorderentry_sail_v1_21.short_position_limit = {}

-- Size: Short Position Limit
tmx_mx_solaorderentry_sail_v1_21.short_position_limit.size = 8

-- Display: Short Position Limit
tmx_mx_solaorderentry_sail_v1_21.short_position_limit.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Short Position Limit: No Value"
  end

  return "Short Position Limit: "..value
end

-- Dissect: Short Position Limit
tmx_mx_solaorderentry_sail_v1_21.short_position_limit.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.short_position_limit.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.short_position_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.short_position_limit, range, value, display)

  return offset + length, value
end

-- Special Price Term
tmx_mx_solaorderentry_sail_v1_21.special_price_term = {}

-- Size: Special Price Term
tmx_mx_solaorderentry_sail_v1_21.special_price_term.size = 1

-- Display: Special Price Term
tmx_mx_solaorderentry_sail_v1_21.special_price_term.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Special Price Term: No Value"
  end

  return "Special Price Term: "..value
end

-- Dissect: Special Price Term
tmx_mx_solaorderentry_sail_v1_21.special_price_term.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.special_price_term.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.special_price_term.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.special_price_term, range, value, display)

  return offset + length, value
end

-- Special Trade Indicator
tmx_mx_solaorderentry_sail_v1_21.special_trade_indicator = {}

-- Size: Special Trade Indicator
tmx_mx_solaorderentry_sail_v1_21.special_trade_indicator.size = 1

-- Display: Special Trade Indicator
tmx_mx_solaorderentry_sail_v1_21.special_trade_indicator.display = function(value)
  return "Special Trade Indicator: "..value
end

-- Dissect: Special Trade Indicator
tmx_mx_solaorderentry_sail_v1_21.special_trade_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.special_trade_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.special_trade_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.special_trade_indicator, range, value, display)

  return offset + length, value
end

-- Start Of Message In Error
tmx_mx_solaorderentry_sail_v1_21.start_of_message_in_error = {}

-- Size: Start Of Message In Error
tmx_mx_solaorderentry_sail_v1_21.start_of_message_in_error.size = 100

-- Display: Start Of Message In Error
tmx_mx_solaorderentry_sail_v1_21.start_of_message_in_error.display = function(value)
  return "Start Of Message In Error: "..value
end

-- Dissect: Start Of Message In Error
tmx_mx_solaorderentry_sail_v1_21.start_of_message_in_error.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.start_of_message_in_error.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.start_of_message_in_error.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.start_of_message_in_error, range, value, display)

  return offset + length, value
end

-- Status
tmx_mx_solaorderentry_sail_v1_21.status = {}

-- Size: Status
tmx_mx_solaorderentry_sail_v1_21.status.size = 1

-- Display: Status
tmx_mx_solaorderentry_sail_v1_21.status.display = function(value)
  return "Status: "..value
end

-- Dissect: Status
tmx_mx_solaorderentry_sail_v1_21.status.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.status, range, value, display)

  return offset + length, value
end

-- Strategy Group
tmx_mx_solaorderentry_sail_v1_21.strategy_group = {}

-- Size: Strategy Group
tmx_mx_solaorderentry_sail_v1_21.strategy_group.size = 2

-- Display: Strategy Group
tmx_mx_solaorderentry_sail_v1_21.strategy_group.display = function(value)
  return "Strategy Group: "..value
end

-- Dissect: Strategy Group
tmx_mx_solaorderentry_sail_v1_21.strategy_group.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.strategy_group.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.strategy_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.strategy_group, range, value, display)

  return offset + length, value
end

-- Strategy Instrument
tmx_mx_solaorderentry_sail_v1_21.strategy_instrument = {}

-- Size: Strategy Instrument
tmx_mx_solaorderentry_sail_v1_21.strategy_instrument.size = 4

-- Display: Strategy Instrument
tmx_mx_solaorderentry_sail_v1_21.strategy_instrument.display = function(value)
  return "Strategy Instrument: "..value
end

-- Dissect: Strategy Instrument
tmx_mx_solaorderentry_sail_v1_21.strategy_instrument.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.strategy_instrument.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.strategy_instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.strategy_instrument, range, value, display)

  return offset + length, value
end

-- Strategy Instrument Id
tmx_mx_solaorderentry_sail_v1_21.strategy_instrument_id = {}

-- Size: Strategy Instrument Id
tmx_mx_solaorderentry_sail_v1_21.strategy_instrument_id.size = 4

-- Display: Strategy Instrument Id
tmx_mx_solaorderentry_sail_v1_21.strategy_instrument_id.display = function(value)
  return "Strategy Instrument Id: "..value
end

-- Dissect: Strategy Instrument Id
tmx_mx_solaorderentry_sail_v1_21.strategy_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.strategy_instrument_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.strategy_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.strategy_instrument_id, range, value, display)

  return offset + length, value
end

-- Strategy Trade Number
tmx_mx_solaorderentry_sail_v1_21.strategy_trade_number = {}

-- Size: Strategy Trade Number
tmx_mx_solaorderentry_sail_v1_21.strategy_trade_number.size = 8

-- Display: Strategy Trade Number
tmx_mx_solaorderentry_sail_v1_21.strategy_trade_number.display = function(value)
  return "Strategy Trade Number: "..value
end

-- Dissect: Strategy Trade Number
tmx_mx_solaorderentry_sail_v1_21.strategy_trade_number.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.strategy_trade_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.strategy_trade_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.strategy_trade_number, range, value, display)

  return offset + length, value
end

-- Strategy Verb Side
tmx_mx_solaorderentry_sail_v1_21.strategy_verb_side = {}

-- Size: Strategy Verb Side
tmx_mx_solaorderentry_sail_v1_21.strategy_verb_side.size = 1

-- Display: Strategy Verb Side
tmx_mx_solaorderentry_sail_v1_21.strategy_verb_side.display = function(value)
  return "Strategy Verb Side: "..value
end

-- Dissect: Strategy Verb Side
tmx_mx_solaorderentry_sail_v1_21.strategy_verb_side.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.strategy_verb_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.strategy_verb_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.strategy_verb_side, range, value, display)

  return offset + length, value
end

-- Team Level Risk Option
tmx_mx_solaorderentry_sail_v1_21.team_level_risk_option = {}

-- Size: Team Level Risk Option
tmx_mx_solaorderentry_sail_v1_21.team_level_risk_option.size = 1

-- Display: Team Level Risk Option
tmx_mx_solaorderentry_sail_v1_21.team_level_risk_option.display = function(value)
  return "Team Level Risk Option: "..value
end

-- Dissect: Team Level Risk Option
tmx_mx_solaorderentry_sail_v1_21.team_level_risk_option.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.team_level_risk_option.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.team_level_risk_option.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.team_level_risk_option, range, value, display)

  return offset + length, value
end

-- Trade Memo
tmx_mx_solaorderentry_sail_v1_21.trade_memo = {}

-- Size: Trade Memo
tmx_mx_solaorderentry_sail_v1_21.trade_memo.size = 50

-- Display: Trade Memo
tmx_mx_solaorderentry_sail_v1_21.trade_memo.display = function(value)
  return "Trade Memo: "..value
end

-- Dissect: Trade Memo
tmx_mx_solaorderentry_sail_v1_21.trade_memo.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.trade_memo.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.trade_memo.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.trade_memo, range, value, display)

  return offset + length, value
end

-- Trade Number
tmx_mx_solaorderentry_sail_v1_21.trade_number = {}

-- Size: Trade Number
tmx_mx_solaorderentry_sail_v1_21.trade_number.size = 8

-- Display: Trade Number
tmx_mx_solaorderentry_sail_v1_21.trade_number.display = function(value)
  return "Trade Number: "..value
end

-- Dissect: Trade Number
tmx_mx_solaorderentry_sail_v1_21.trade_number.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.trade_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.trade_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.trade_number, range, value, display)

  return offset + length, value
end

-- Trade Price
tmx_mx_solaorderentry_sail_v1_21.trade_price = {}

-- Size: Trade Price
tmx_mx_solaorderentry_sail_v1_21.trade_price.size = 10

-- Display: Trade Price
tmx_mx_solaorderentry_sail_v1_21.trade_price.display = function(value)
  return "Trade Price: "..value
end

-- Dissect: Trade Price
tmx_mx_solaorderentry_sail_v1_21.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.trade_price.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Trade Type
tmx_mx_solaorderentry_sail_v1_21.trade_type = {}

-- Size: Trade Type
tmx_mx_solaorderentry_sail_v1_21.trade_type.size = 1

-- Display: Trade Type
tmx_mx_solaorderentry_sail_v1_21.trade_type.display = function(value)
  return "Trade Type: "..value
end

-- Dissect: Trade Type
tmx_mx_solaorderentry_sail_v1_21.trade_type.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.trade_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.trade_type, range, value, display)

  return offset + length, value
end

-- Trader
tmx_mx_solaorderentry_sail_v1_21.trader = {}

-- Size: Trader
tmx_mx_solaorderentry_sail_v1_21.trader.size = 4

-- Display: Trader
tmx_mx_solaorderentry_sail_v1_21.trader.display = function(value)
  return "Trader: "..value
end

-- Dissect: Trader
tmx_mx_solaorderentry_sail_v1_21.trader.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.trader.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.trader.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.trader, range, value, display)

  return offset + length, value
end

-- Trader Id
tmx_mx_solaorderentry_sail_v1_21.trader_id = {}

-- Size: Trader Id
tmx_mx_solaorderentry_sail_v1_21.trader_id.size = 8

-- Display: Trader Id
tmx_mx_solaorderentry_sail_v1_21.trader_id.display = function(value)
  return "Trader Id: "..value
end

-- Dissect: Trader Id
tmx_mx_solaorderentry_sail_v1_21.trader_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.trader_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.trader_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.trader_id, range, value, display)

  return offset + length, value
end

-- Trading Engine Timestamp Local Hhmmss
tmx_mx_solaorderentry_sail_v1_21.trading_engine_timestamp_local_hhmmss = {}

-- Size: Trading Engine Timestamp Local Hhmmss
tmx_mx_solaorderentry_sail_v1_21.trading_engine_timestamp_local_hhmmss.size = 6

-- Display: Trading Engine Timestamp Local Hhmmss
tmx_mx_solaorderentry_sail_v1_21.trading_engine_timestamp_local_hhmmss.display = function(value)
  return "Trading Engine Timestamp Local Hhmmss: "..value
end

-- Dissect: Trading Engine Timestamp Local Hhmmss
tmx_mx_solaorderentry_sail_v1_21.trading_engine_timestamp_local_hhmmss.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.trading_engine_timestamp_local_hhmmss.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.trading_engine_timestamp_local_hhmmss.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.trading_engine_timestamp_local_hhmmss, range, value, display)

  return offset + length, value
end

-- Trading Engine Timestamp Of The Trade Local Hhmmss
tmx_mx_solaorderentry_sail_v1_21.trading_engine_timestamp_of_the_trade_local_hhmmss = {}

-- Size: Trading Engine Timestamp Of The Trade Local Hhmmss
tmx_mx_solaorderentry_sail_v1_21.trading_engine_timestamp_of_the_trade_local_hhmmss.size = 6

-- Display: Trading Engine Timestamp Of The Trade Local Hhmmss
tmx_mx_solaorderentry_sail_v1_21.trading_engine_timestamp_of_the_trade_local_hhmmss.display = function(value)
  return "Trading Engine Timestamp Of The Trade Local Hhmmss: "..value
end

-- Dissect: Trading Engine Timestamp Of The Trade Local Hhmmss
tmx_mx_solaorderentry_sail_v1_21.trading_engine_timestamp_of_the_trade_local_hhmmss.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.trading_engine_timestamp_of_the_trade_local_hhmmss.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.trading_engine_timestamp_of_the_trade_local_hhmmss.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.trading_engine_timestamp_of_the_trade_local_hhmmss, range, value, display)

  return offset + length, value
end

-- Type Of Cancellation
tmx_mx_solaorderentry_sail_v1_21.type_of_cancellation = {}

-- Size: Type Of Cancellation
tmx_mx_solaorderentry_sail_v1_21.type_of_cancellation.size = 1

-- Display: Type Of Cancellation
tmx_mx_solaorderentry_sail_v1_21.type_of_cancellation.display = function(value)
  return "Type Of Cancellation: "..value
end

-- Dissect: Type Of Cancellation
tmx_mx_solaorderentry_sail_v1_21.type_of_cancellation.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.type_of_cancellation.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.type_of_cancellation.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.type_of_cancellation, range, value, display)

  return offset + length, value
end

-- Type Of Cancellation Only Q Quotes Only Can Be Returned
tmx_mx_solaorderentry_sail_v1_21.type_of_cancellation_only_q_quotes_only_can_be_returned = {}

-- Size: Type Of Cancellation Only Q Quotes Only Can Be Returned
tmx_mx_solaorderentry_sail_v1_21.type_of_cancellation_only_q_quotes_only_can_be_returned.size = 1

-- Display: Type Of Cancellation Only Q Quotes Only Can Be Returned
tmx_mx_solaorderentry_sail_v1_21.type_of_cancellation_only_q_quotes_only_can_be_returned.display = function(value)
  return "Type Of Cancellation Only Q Quotes Only Can Be Returned: "..value
end

-- Dissect: Type Of Cancellation Only Q Quotes Only Can Be Returned
tmx_mx_solaorderentry_sail_v1_21.type_of_cancellation_only_q_quotes_only_can_be_returned.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.type_of_cancellation_only_q_quotes_only_can_be_returned.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.type_of_cancellation_only_q_quotes_only_can_be_returned.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.type_of_cancellation_only_q_quotes_only_can_be_returned, range, value, display)

  return offset + length, value
end

-- Type Of Cancellation Q Quotes Only
tmx_mx_solaorderentry_sail_v1_21.type_of_cancellation_q_quotes_only = {}

-- Size: Type Of Cancellation Q Quotes Only
tmx_mx_solaorderentry_sail_v1_21.type_of_cancellation_q_quotes_only.size = 1

-- Display: Type Of Cancellation Q Quotes Only
tmx_mx_solaorderentry_sail_v1_21.type_of_cancellation_q_quotes_only.display = function(value)
  return "Type Of Cancellation Q Quotes Only: "..value
end

-- Dissect: Type Of Cancellation Q Quotes Only
tmx_mx_solaorderentry_sail_v1_21.type_of_cancellation_q_quotes_only.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.type_of_cancellation_q_quotes_only.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.type_of_cancellation_q_quotes_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.type_of_cancellation_q_quotes_only, range, value, display)

  return offset + length, value
end

-- Usage Status
tmx_mx_solaorderentry_sail_v1_21.usage_status = {}

-- Size: Usage Status
tmx_mx_solaorderentry_sail_v1_21.usage_status.size = 1

-- Display: Usage Status
tmx_mx_solaorderentry_sail_v1_21.usage_status.display = function(value)
  return "Usage Status: "..value
end

-- Dissect: Usage Status
tmx_mx_solaorderentry_sail_v1_21.usage_status.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.usage_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.usage_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.usage_status, range, value, display)

  return offset + length, value
end

-- User Id
tmx_mx_solaorderentry_sail_v1_21.user_id = {}

-- Size: User Id
tmx_mx_solaorderentry_sail_v1_21.user_id.size = 8

-- Display: User Id
tmx_mx_solaorderentry_sail_v1_21.user_id.display = function(value)
  return "User Id: "..value
end

-- Dissect: User Id
tmx_mx_solaorderentry_sail_v1_21.user_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.user_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.user_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.user_id, range, value, display)

  return offset + length, value
end

-- User Message Timestamp Local Hhmmss
tmx_mx_solaorderentry_sail_v1_21.user_message_timestamp_local_hhmmss = {}

-- Size: User Message Timestamp Local Hhmmss
tmx_mx_solaorderentry_sail_v1_21.user_message_timestamp_local_hhmmss.size = 6

-- Display: User Message Timestamp Local Hhmmss
tmx_mx_solaorderentry_sail_v1_21.user_message_timestamp_local_hhmmss.display = function(value)
  return "User Message Timestamp Local Hhmmss: "..value
end

-- Dissect: User Message Timestamp Local Hhmmss
tmx_mx_solaorderentry_sail_v1_21.user_message_timestamp_local_hhmmss.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.user_message_timestamp_local_hhmmss.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.user_message_timestamp_local_hhmmss.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.user_message_timestamp_local_hhmmss, range, value, display)

  return offset + length, value
end

-- User Sequence Id
tmx_mx_solaorderentry_sail_v1_21.user_sequence_id = {}

-- Size: User Sequence Id
tmx_mx_solaorderentry_sail_v1_21.user_sequence_id.size = 8

-- Display: User Sequence Id
tmx_mx_solaorderentry_sail_v1_21.user_sequence_id.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "User Sequence Id: No Value"
  end

  return "User Sequence Id: "..value
end

-- Dissect: User Sequence Id
tmx_mx_solaorderentry_sail_v1_21.user_sequence_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.user_sequence_id.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.user_sequence_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.user_sequence_id, range, value, display)

  return offset + length, value
end

-- User Sequence Id First User Sequence Id For Nextcurrent Heartbeat Period
tmx_mx_solaorderentry_sail_v1_21.user_sequence_id_first_user_sequence_id_for_nextcurrent_heartbeat_period = {}

-- Size: User Sequence Id First User Sequence Id For Nextcurrent Heartbeat Period
tmx_mx_solaorderentry_sail_v1_21.user_sequence_id_first_user_sequence_id_for_nextcurrent_heartbeat_period.size = 8

-- Display: User Sequence Id First User Sequence Id For Nextcurrent Heartbeat Period
tmx_mx_solaorderentry_sail_v1_21.user_sequence_id_first_user_sequence_id_for_nextcurrent_heartbeat_period.display = function(value)
  return "User Sequence Id First User Sequence Id For Nextcurrent Heartbeat Period: "..value
end

-- Dissect: User Sequence Id First User Sequence Id For Nextcurrent Heartbeat Period
tmx_mx_solaorderentry_sail_v1_21.user_sequence_id_first_user_sequence_id_for_nextcurrent_heartbeat_period.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.user_sequence_id_first_user_sequence_id_for_nextcurrent_heartbeat_period.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.user_sequence_id_first_user_sequence_id_for_nextcurrent_heartbeat_period.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.user_sequence_id_first_user_sequence_id_for_nextcurrent_heartbeat_period, range, value, display)

  return offset + length, value
end

-- User Timestamp Local Hhmmss
tmx_mx_solaorderentry_sail_v1_21.user_timestamp_local_hhmmss = {}

-- Size: User Timestamp Local Hhmmss
tmx_mx_solaorderentry_sail_v1_21.user_timestamp_local_hhmmss.size = 6

-- Display: User Timestamp Local Hhmmss
tmx_mx_solaorderentry_sail_v1_21.user_timestamp_local_hhmmss.display = function(value)
  return "User Timestamp Local Hhmmss: "..value
end

-- Dissect: User Timestamp Local Hhmmss
tmx_mx_solaorderentry_sail_v1_21.user_timestamp_local_hhmmss.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.user_timestamp_local_hhmmss.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.user_timestamp_local_hhmmss.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.user_timestamp_local_hhmmss, range, value, display)

  return offset + length, value
end

-- Verb
tmx_mx_solaorderentry_sail_v1_21.verb = {}

-- Size: Verb
tmx_mx_solaorderentry_sail_v1_21.verb.size = 1

-- Display: Verb
tmx_mx_solaorderentry_sail_v1_21.verb.display = function(value)
  return "Verb: "..value
end

-- Dissect: Verb
tmx_mx_solaorderentry_sail_v1_21.verb.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.verb.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.verb.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.verb, range, value, display)

  return offset + length, value
end

-- Verb Side
tmx_mx_solaorderentry_sail_v1_21.verb_side = {}

-- Size: Verb Side
tmx_mx_solaorderentry_sail_v1_21.verb_side.size = 1

-- Display: Verb Side
tmx_mx_solaorderentry_sail_v1_21.verb_side.display = function(value)
  return "Verb Side: "..value
end

-- Dissect: Verb Side
tmx_mx_solaorderentry_sail_v1_21.verb_side.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.verb_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.verb_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.verb_side, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Tmx Mx SolaOrderEntry Sail 1.21
-----------------------------------------------------------------------

-- Outgoing Messages Header
tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header = {}

-- Size: Outgoing Messages Header
tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.size =
  tmx_mx_solaorderentry_sail_v1_21.trading_engine_timestamp_local_hhmmss.size + 
  tmx_mx_solaorderentry_sail_v1_21.user_sequence_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.exchange_message_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.gap_sequence_id.size

-- Display: Outgoing Messages Header
tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Outgoing Messages Header
tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Engine Timestamp Local Hhmmss: Time
  index, trading_engine_timestamp_local_hhmmss = tmx_mx_solaorderentry_sail_v1_21.trading_engine_timestamp_local_hhmmss.dissect(buffer, index, packet, parent)

  -- User Sequence Id: User Sequence ID
  index, user_sequence_id = tmx_mx_solaorderentry_sail_v1_21.user_sequence_id.dissect(buffer, index, packet, parent)

  -- Exchange Message Id: Exchange Message ID
  index, exchange_message_id = tmx_mx_solaorderentry_sail_v1_21.exchange_message_id.dissect(buffer, index, packet, parent)

  -- Gap Sequence Id: Gap Sequence ID
  index, gap_sequence_id = tmx_mx_solaorderentry_sail_v1_21.gap_sequence_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Outgoing Messages Header
tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.outgoing_messages_header, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.fields(buffer, offset, packet, parent)
  end
end

-- Request For Quote With Side Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.request_for_quote_with_side_acknowledgement = {}

-- Size: Request For Quote With Side Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.request_for_quote_with_side_acknowledgement.size =
  tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.size + 
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity.size + 
  tmx_mx_solaorderentry_sail_v1_21.market_side.size

-- Display: Request For Quote With Side Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.request_for_quote_with_side_acknowledgement.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request For Quote With Side Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.request_for_quote_with_side_acknowledgement.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outgoing Messages Header: Struct of 4 fields
  index, outgoing_messages_header = tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity
  index, quantity = tmx_mx_solaorderentry_sail_v1_21.quantity.dissect(buffer, index, packet, parent)

  -- Market Side: MarketSide
  index, market_side = tmx_mx_solaorderentry_sail_v1_21.market_side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Request For Quote With Side Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.request_for_quote_with_side_acknowledgement.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.request_for_quote_with_side_acknowledgement, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.request_for_quote_with_side_acknowledgement.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.request_for_quote_with_side_acknowledgement.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.request_for_quote_with_side_acknowledgement.fields(buffer, offset, packet, parent)
  end
end

-- Owner Data
tmx_mx_solaorderentry_sail_v1_21.owner_data = {}

-- Size: Owner Data
tmx_mx_solaorderentry_sail_v1_21.owner_data.size =
  tmx_mx_solaorderentry_sail_v1_21.memo.size

-- Display: Owner Data
tmx_mx_solaorderentry_sail_v1_21.owner_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Owner Data
tmx_mx_solaorderentry_sail_v1_21.owner_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Memo: Memo
  index, memo = tmx_mx_solaorderentry_sail_v1_21.memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Owner Data
tmx_mx_solaorderentry_sail_v1_21.owner_data.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.owner_data, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.owner_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.owner_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.owner_data.fields(buffer, offset, packet, parent)
  end
end

-- Clearing Data
tmx_mx_solaorderentry_sail_v1_21.clearing_data = {}

-- Size: Clearing Data
tmx_mx_solaorderentry_sail_v1_21.clearing_data.size =
  tmx_mx_solaorderentry_sail_v1_21.clearing_instruction.size + 
  tmx_mx_solaorderentry_sail_v1_21.account_type.size + 
  tmx_mx_solaorderentry_sail_v1_21.open_close.size + 
  tmx_mx_solaorderentry_sail_v1_21.hedge_spec.size + 
  tmx_mx_solaorderentry_sail_v1_21.filler_must_be_blank_x_5.size

-- Display: Clearing Data
tmx_mx_solaorderentry_sail_v1_21.clearing_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Clearing Data
tmx_mx_solaorderentry_sail_v1_21.clearing_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Clearing Instruction: Clearing Instruction
  index, clearing_instruction = tmx_mx_solaorderentry_sail_v1_21.clearing_instruction.dissect(buffer, index, packet, parent)

  -- Account Type: AccountType
  index, account_type = tmx_mx_solaorderentry_sail_v1_21.account_type.dissect(buffer, index, packet, parent)

  -- Open Close: Open/Close
  index, open_close = tmx_mx_solaorderentry_sail_v1_21.open_close.dissect(buffer, index, packet, parent)

  -- Hedge Spec: Hedge/Spec
  index, hedge_spec = tmx_mx_solaorderentry_sail_v1_21.hedge_spec.dissect(buffer, index, packet, parent)

  -- Filler Must Be Blank X 5: String (5)
  index, filler_must_be_blank_x_5 = tmx_mx_solaorderentry_sail_v1_21.filler_must_be_blank_x_5.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Clearing Data
tmx_mx_solaorderentry_sail_v1_21.clearing_data.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.clearing_data, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.clearing_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.clearing_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.clearing_data.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancellation Notice By Mod Or System
tmx_mx_solaorderentry_sail_v1_21.order_cancellation_notice_by_mod_or_system = {}

-- Size: Order Cancellation Notice By Mod Or System
tmx_mx_solaorderentry_sail_v1_21.order_cancellation_notice_by_mod_or_system.size =
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.trader_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.order_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.status.size + 
  tmx_mx_solaorderentry_sail_v1_21.verb_side.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity.size + 
  tmx_mx_solaorderentry_sail_v1_21.assigned_price.size + 
  tmx_mx_solaorderentry_sail_v1_21.clearing_data.size + 
  tmx_mx_solaorderentry_sail_v1_21.owner_data.size + 
  tmx_mx_solaorderentry_sail_v1_21.original_order_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.filler_n_6.size

-- Display: Order Cancellation Notice By Mod Or System
tmx_mx_solaorderentry_sail_v1_21.order_cancellation_notice_by_mod_or_system.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancellation Notice By Mod Or System
tmx_mx_solaorderentry_sail_v1_21.order_cancellation_notice_by_mod_or_system.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  -- Trader Id: Trader ID
  index, trader_id = tmx_mx_solaorderentry_sail_v1_21.trader_id.dissect(buffer, index, packet, parent)

  -- Order Id: Order ID
  index, order_id = tmx_mx_solaorderentry_sail_v1_21.order_id.dissect(buffer, index, packet, parent)

  -- Status: Status
  index, status = tmx_mx_solaorderentry_sail_v1_21.status.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = tmx_mx_solaorderentry_sail_v1_21.verb_side.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity
  index, quantity = tmx_mx_solaorderentry_sail_v1_21.quantity.dissect(buffer, index, packet, parent)

  -- Assigned Price: Assigned Price
  index, assigned_price = tmx_mx_solaorderentry_sail_v1_21.assigned_price.dissect(buffer, index, packet, parent)

  -- Clearing Data: Struct of 5 fields
  index, clearing_data = tmx_mx_solaorderentry_sail_v1_21.clearing_data.dissect(buffer, index, packet, parent)

  -- Owner Data: Struct of 1 fields
  index, owner_data = tmx_mx_solaorderentry_sail_v1_21.owner_data.dissect(buffer, index, packet, parent)

  -- Original Order Id: Original Order ID
  index, original_order_id = tmx_mx_solaorderentry_sail_v1_21.original_order_id.dissect(buffer, index, packet, parent)

  -- Filler N 6: Numeric (6)
  index, filler_n_6 = tmx_mx_solaorderentry_sail_v1_21.filler_n_6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancellation Notice By Mod Or System
tmx_mx_solaorderentry_sail_v1_21.order_cancellation_notice_by_mod_or_system.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.order_cancellation_notice_by_mod_or_system, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.order_cancellation_notice_by_mod_or_system.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.order_cancellation_notice_by_mod_or_system.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.order_cancellation_notice_by_mod_or_system.fields(buffer, offset, packet, parent)
  end
end

-- Leg Execution Cancellation Notice
tmx_mx_solaorderentry_sail_v1_21.leg_execution_cancellation_notice = {}

-- Size: Leg Execution Cancellation Notice
tmx_mx_solaorderentry_sail_v1_21.leg_execution_cancellation_notice.size =
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.trader_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.reference_id_order_id_or_quote_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.verb_side.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity_traded.size + 
  tmx_mx_solaorderentry_sail_v1_21.trade_price.size + 
  tmx_mx_solaorderentry_sail_v1_21.trading_engine_timestamp_of_the_trade_local_hhmmss.size + 
  tmx_mx_solaorderentry_sail_v1_21.clearing_data.size + 
  tmx_mx_solaorderentry_sail_v1_21.owner_data.size + 
  tmx_mx_solaorderentry_sail_v1_21.special_trade_indicator.size + 
  tmx_mx_solaorderentry_sail_v1_21.price_type.size + 
  tmx_mx_solaorderentry_sail_v1_21.trade_type.size + 
  tmx_mx_solaorderentry_sail_v1_21.filler_n_6.size + 
  tmx_mx_solaorderentry_sail_v1_21.trade_number.size + 
  tmx_mx_solaorderentry_sail_v1_21.trade_memo.size + 
  tmx_mx_solaorderentry_sail_v1_21.original_reference_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.id_code_for_the_counterpart_participant.size + 
  tmx_mx_solaorderentry_sail_v1_21.strategy_group.size + 
  tmx_mx_solaorderentry_sail_v1_21.strategy_instrument_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.strategy_verb_side.size + 
  tmx_mx_solaorderentry_sail_v1_21.strategy_trade_number.size + 
  tmx_mx_solaorderentry_sail_v1_21.leg_number.size

-- Display: Leg Execution Cancellation Notice
tmx_mx_solaorderentry_sail_v1_21.leg_execution_cancellation_notice.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Leg Execution Cancellation Notice
tmx_mx_solaorderentry_sail_v1_21.leg_execution_cancellation_notice.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  -- Trader Id: Trader ID
  index, trader_id = tmx_mx_solaorderentry_sail_v1_21.trader_id.dissect(buffer, index, packet, parent)

  -- Reference Id Order Id Or Quote Id: Order ID
  index, reference_id_order_id_or_quote_id = tmx_mx_solaorderentry_sail_v1_21.reference_id_order_id_or_quote_id.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = tmx_mx_solaorderentry_sail_v1_21.verb_side.dissect(buffer, index, packet, parent)

  -- Quantity Traded: Quantity
  index, quantity_traded = tmx_mx_solaorderentry_sail_v1_21.quantity_traded.dissect(buffer, index, packet, parent)

  -- Trade Price: Price
  index, trade_price = tmx_mx_solaorderentry_sail_v1_21.trade_price.dissect(buffer, index, packet, parent)

  -- Trading Engine Timestamp Of The Trade Local Hhmmss: Time
  index, trading_engine_timestamp_of_the_trade_local_hhmmss = tmx_mx_solaorderentry_sail_v1_21.trading_engine_timestamp_of_the_trade_local_hhmmss.dissect(buffer, index, packet, parent)

  -- Clearing Data: Struct of 5 fields
  index, clearing_data = tmx_mx_solaorderentry_sail_v1_21.clearing_data.dissect(buffer, index, packet, parent)

  -- Owner Data: Struct of 1 fields
  index, owner_data = tmx_mx_solaorderentry_sail_v1_21.owner_data.dissect(buffer, index, packet, parent)

  -- Special Trade Indicator: Special Trade Indicator
  index, special_trade_indicator = tmx_mx_solaorderentry_sail_v1_21.special_trade_indicator.dissect(buffer, index, packet, parent)

  -- Price Type: Price Type
  index, price_type = tmx_mx_solaorderentry_sail_v1_21.price_type.dissect(buffer, index, packet, parent)

  -- Trade Type: Trade Type
  index, trade_type = tmx_mx_solaorderentry_sail_v1_21.trade_type.dissect(buffer, index, packet, parent)

  -- Filler N 6: Numeric (6)
  index, filler_n_6 = tmx_mx_solaorderentry_sail_v1_21.filler_n_6.dissect(buffer, index, packet, parent)

  -- Trade Number: Trade Number
  index, trade_number = tmx_mx_solaorderentry_sail_v1_21.trade_number.dissect(buffer, index, packet, parent)

  -- Trade Memo: Trade Memo
  index, trade_memo = tmx_mx_solaorderentry_sail_v1_21.trade_memo.dissect(buffer, index, packet, parent)

  -- Original Reference Id: Original Reference ID
  index, original_reference_id = tmx_mx_solaorderentry_sail_v1_21.original_reference_id.dissect(buffer, index, packet, parent)

  -- Id Code For The Counterpart Participant: ID Code for the Counterpart Participant
  index, id_code_for_the_counterpart_participant = tmx_mx_solaorderentry_sail_v1_21.id_code_for_the_counterpart_participant.dissect(buffer, index, packet, parent)

  -- Strategy Group: Group ID
  index, strategy_group = tmx_mx_solaorderentry_sail_v1_21.strategy_group.dissect(buffer, index, packet, parent)

  -- Strategy Instrument Id: Strategy Instrument ID
  index, strategy_instrument_id = tmx_mx_solaorderentry_sail_v1_21.strategy_instrument_id.dissect(buffer, index, packet, parent)

  -- Strategy Verb Side: Strategy Verb
  index, strategy_verb_side = tmx_mx_solaorderentry_sail_v1_21.strategy_verb_side.dissect(buffer, index, packet, parent)

  -- Strategy Trade Number: Strategy Trade Number
  index, strategy_trade_number = tmx_mx_solaorderentry_sail_v1_21.strategy_trade_number.dissect(buffer, index, packet, parent)

  -- Leg Number: Leg Number
  index, leg_number = tmx_mx_solaorderentry_sail_v1_21.leg_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Leg Execution Cancellation Notice
tmx_mx_solaorderentry_sail_v1_21.leg_execution_cancellation_notice.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.leg_execution_cancellation_notice, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.leg_execution_cancellation_notice.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.leg_execution_cancellation_notice.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.leg_execution_cancellation_notice.fields(buffer, offset, packet, parent)
  end
end

-- Execution Cancellation Notice
tmx_mx_solaorderentry_sail_v1_21.execution_cancellation_notice = {}

-- Size: Execution Cancellation Notice
tmx_mx_solaorderentry_sail_v1_21.execution_cancellation_notice.size =
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.trader_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.reference_id_order_id_or_quote_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.verb_side.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity_traded.size + 
  tmx_mx_solaorderentry_sail_v1_21.trade_price.size + 
  tmx_mx_solaorderentry_sail_v1_21.trading_engine_timestamp_of_the_trade_local_hhmmss.size + 
  tmx_mx_solaorderentry_sail_v1_21.clearing_data.size + 
  tmx_mx_solaorderentry_sail_v1_21.owner_data.size + 
  tmx_mx_solaorderentry_sail_v1_21.special_trade_indicator.size + 
  tmx_mx_solaorderentry_sail_v1_21.price_type.size + 
  tmx_mx_solaorderentry_sail_v1_21.trade_type.size + 
  tmx_mx_solaorderentry_sail_v1_21.filler_n_6.size + 
  tmx_mx_solaorderentry_sail_v1_21.trade_number.size + 
  tmx_mx_solaorderentry_sail_v1_21.trade_memo.size + 
  tmx_mx_solaorderentry_sail_v1_21.original_reference_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.id_code_for_the_counterpart_participant.size

-- Display: Execution Cancellation Notice
tmx_mx_solaorderentry_sail_v1_21.execution_cancellation_notice.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Cancellation Notice
tmx_mx_solaorderentry_sail_v1_21.execution_cancellation_notice.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  -- Trader Id: Trader ID
  index, trader_id = tmx_mx_solaorderentry_sail_v1_21.trader_id.dissect(buffer, index, packet, parent)

  -- Reference Id Order Id Or Quote Id: Order ID
  index, reference_id_order_id_or_quote_id = tmx_mx_solaorderentry_sail_v1_21.reference_id_order_id_or_quote_id.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = tmx_mx_solaorderentry_sail_v1_21.verb_side.dissect(buffer, index, packet, parent)

  -- Quantity Traded: Quantity
  index, quantity_traded = tmx_mx_solaorderentry_sail_v1_21.quantity_traded.dissect(buffer, index, packet, parent)

  -- Trade Price: Price
  index, trade_price = tmx_mx_solaorderentry_sail_v1_21.trade_price.dissect(buffer, index, packet, parent)

  -- Trading Engine Timestamp Of The Trade Local Hhmmss: Time
  index, trading_engine_timestamp_of_the_trade_local_hhmmss = tmx_mx_solaorderentry_sail_v1_21.trading_engine_timestamp_of_the_trade_local_hhmmss.dissect(buffer, index, packet, parent)

  -- Clearing Data: Struct of 5 fields
  index, clearing_data = tmx_mx_solaorderentry_sail_v1_21.clearing_data.dissect(buffer, index, packet, parent)

  -- Owner Data: Struct of 1 fields
  index, owner_data = tmx_mx_solaorderentry_sail_v1_21.owner_data.dissect(buffer, index, packet, parent)

  -- Special Trade Indicator: Special Trade Indicator
  index, special_trade_indicator = tmx_mx_solaorderentry_sail_v1_21.special_trade_indicator.dissect(buffer, index, packet, parent)

  -- Price Type: Price Type
  index, price_type = tmx_mx_solaorderentry_sail_v1_21.price_type.dissect(buffer, index, packet, parent)

  -- Trade Type: Trade Type
  index, trade_type = tmx_mx_solaorderentry_sail_v1_21.trade_type.dissect(buffer, index, packet, parent)

  -- Filler N 6: Numeric (6)
  index, filler_n_6 = tmx_mx_solaorderentry_sail_v1_21.filler_n_6.dissect(buffer, index, packet, parent)

  -- Trade Number: Trade Number
  index, trade_number = tmx_mx_solaorderentry_sail_v1_21.trade_number.dissect(buffer, index, packet, parent)

  -- Trade Memo: Trade Memo
  index, trade_memo = tmx_mx_solaorderentry_sail_v1_21.trade_memo.dissect(buffer, index, packet, parent)

  -- Original Reference Id: Original Reference ID
  index, original_reference_id = tmx_mx_solaorderentry_sail_v1_21.original_reference_id.dissect(buffer, index, packet, parent)

  -- Id Code For The Counterpart Participant: ID Code for the Counterpart Participant
  index, id_code_for_the_counterpart_participant = tmx_mx_solaorderentry_sail_v1_21.id_code_for_the_counterpart_participant.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Cancellation Notice
tmx_mx_solaorderentry_sail_v1_21.execution_cancellation_notice.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.execution_cancellation_notice, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.execution_cancellation_notice.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.execution_cancellation_notice.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.execution_cancellation_notice.fields(buffer, offset, packet, parent)
  end
end

-- Execution Notice
tmx_mx_solaorderentry_sail_v1_21.execution_notice = {}

-- Size: Execution Notice
tmx_mx_solaorderentry_sail_v1_21.execution_notice.size =
  tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.size + 
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.trader_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.reference_id_order_id_or_quote_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.verb_side.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity_traded.size + 
  tmx_mx_solaorderentry_sail_v1_21.trade_price.size + 
  tmx_mx_solaorderentry_sail_v1_21.trading_engine_timestamp_of_the_trade_local_hhmmss.size + 
  tmx_mx_solaorderentry_sail_v1_21.clearing_data.size + 
  tmx_mx_solaorderentry_sail_v1_21.owner_data.size + 
  tmx_mx_solaorderentry_sail_v1_21.special_trade_indicator.size + 
  tmx_mx_solaorderentry_sail_v1_21.price_type.size + 
  tmx_mx_solaorderentry_sail_v1_21.trade_type.size + 
  tmx_mx_solaorderentry_sail_v1_21.filler_n_6.size + 
  tmx_mx_solaorderentry_sail_v1_21.trade_number.size + 
  tmx_mx_solaorderentry_sail_v1_21.trade_memo.size + 
  tmx_mx_solaorderentry_sail_v1_21.original_reference_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.id_code_for_the_counterpart_participant.size

-- Display: Execution Notice
tmx_mx_solaorderentry_sail_v1_21.execution_notice.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Notice
tmx_mx_solaorderentry_sail_v1_21.execution_notice.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outgoing Messages Header: Struct of 4 fields
  index, outgoing_messages_header = tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  -- Trader Id: Trader ID
  index, trader_id = tmx_mx_solaorderentry_sail_v1_21.trader_id.dissect(buffer, index, packet, parent)

  -- Reference Id Order Id Or Quote Id: Order ID
  index, reference_id_order_id_or_quote_id = tmx_mx_solaorderentry_sail_v1_21.reference_id_order_id_or_quote_id.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = tmx_mx_solaorderentry_sail_v1_21.verb_side.dissect(buffer, index, packet, parent)

  -- Quantity Traded: Quantity
  index, quantity_traded = tmx_mx_solaorderentry_sail_v1_21.quantity_traded.dissect(buffer, index, packet, parent)

  -- Trade Price: Price
  index, trade_price = tmx_mx_solaorderentry_sail_v1_21.trade_price.dissect(buffer, index, packet, parent)

  -- Trading Engine Timestamp Of The Trade Local Hhmmss: Time
  index, trading_engine_timestamp_of_the_trade_local_hhmmss = tmx_mx_solaorderentry_sail_v1_21.trading_engine_timestamp_of_the_trade_local_hhmmss.dissect(buffer, index, packet, parent)

  -- Clearing Data: Struct of 5 fields
  index, clearing_data = tmx_mx_solaorderentry_sail_v1_21.clearing_data.dissect(buffer, index, packet, parent)

  -- Owner Data: Struct of 1 fields
  index, owner_data = tmx_mx_solaorderentry_sail_v1_21.owner_data.dissect(buffer, index, packet, parent)

  -- Special Trade Indicator: Special Trade Indicator
  index, special_trade_indicator = tmx_mx_solaorderentry_sail_v1_21.special_trade_indicator.dissect(buffer, index, packet, parent)

  -- Price Type: Price Type
  index, price_type = tmx_mx_solaorderentry_sail_v1_21.price_type.dissect(buffer, index, packet, parent)

  -- Trade Type: Trade Type
  index, trade_type = tmx_mx_solaorderentry_sail_v1_21.trade_type.dissect(buffer, index, packet, parent)

  -- Filler N 6: Numeric (6)
  index, filler_n_6 = tmx_mx_solaorderentry_sail_v1_21.filler_n_6.dissect(buffer, index, packet, parent)

  -- Trade Number: Trade Number
  index, trade_number = tmx_mx_solaorderentry_sail_v1_21.trade_number.dissect(buffer, index, packet, parent)

  -- Trade Memo: Trade Memo
  index, trade_memo = tmx_mx_solaorderentry_sail_v1_21.trade_memo.dissect(buffer, index, packet, parent)

  -- Original Reference Id: Original Reference ID
  index, original_reference_id = tmx_mx_solaorderentry_sail_v1_21.original_reference_id.dissect(buffer, index, packet, parent)

  -- Id Code For The Counterpart Participant: ID Code for the Counterpart Participant
  index, id_code_for_the_counterpart_participant = tmx_mx_solaorderentry_sail_v1_21.id_code_for_the_counterpart_participant.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Notice
tmx_mx_solaorderentry_sail_v1_21.execution_notice.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.execution_notice, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.execution_notice.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.execution_notice.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.execution_notice.fields(buffer, offset, packet, parent)
  end
end

-- Cancellation Of All Quotes Notice
tmx_mx_solaorderentry_sail_v1_21.cancellation_of_all_quotes_notice = {}

-- Size: Cancellation Of All Quotes Notice
tmx_mx_solaorderentry_sail_v1_21.cancellation_of_all_quotes_notice.size =
  tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.size + 
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.trader_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.cancel_reason.size

-- Display: Cancellation Of All Quotes Notice
tmx_mx_solaorderentry_sail_v1_21.cancellation_of_all_quotes_notice.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancellation Of All Quotes Notice
tmx_mx_solaorderentry_sail_v1_21.cancellation_of_all_quotes_notice.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outgoing Messages Header: Struct of 4 fields
  index, outgoing_messages_header = tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  -- Trader Id: Trader ID
  index, trader_id = tmx_mx_solaorderentry_sail_v1_21.trader_id.dissect(buffer, index, packet, parent)

  -- Cancel Reason: Quote Cancel Reason
  index, cancel_reason = tmx_mx_solaorderentry_sail_v1_21.cancel_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancellation Of All Quotes Notice
tmx_mx_solaorderentry_sail_v1_21.cancellation_of_all_quotes_notice.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.cancellation_of_all_quotes_notice, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.cancellation_of_all_quotes_notice.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.cancellation_of_all_quotes_notice.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.cancellation_of_all_quotes_notice.fields(buffer, offset, packet, parent)
  end
end

-- Counterpart Owner Data
tmx_mx_solaorderentry_sail_v1_21.counterpart_owner_data = {}

-- Size: Counterpart Owner Data
tmx_mx_solaorderentry_sail_v1_21.counterpart_owner_data.size =
  tmx_mx_solaorderentry_sail_v1_21.memo.size

-- Display: Counterpart Owner Data
tmx_mx_solaorderentry_sail_v1_21.counterpart_owner_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Counterpart Owner Data
tmx_mx_solaorderentry_sail_v1_21.counterpart_owner_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Memo: Memo
  index, memo = tmx_mx_solaorderentry_sail_v1_21.memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Counterpart Owner Data
tmx_mx_solaorderentry_sail_v1_21.counterpart_owner_data.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.counterpart_owner_data, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.counterpart_owner_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.counterpart_owner_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.counterpart_owner_data.fields(buffer, offset, packet, parent)
  end
end

-- Overstepped Order Or Quote Notice
tmx_mx_solaorderentry_sail_v1_21.overstepped_order_or_quote_notice = {}

-- Size: Overstepped Order Or Quote Notice
tmx_mx_solaorderentry_sail_v1_21.overstepped_order_or_quote_notice.size =
  tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.size + 
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.verb.size + 
  tmx_mx_solaorderentry_sail_v1_21.order_type.size + 
  tmx_mx_solaorderentry_sail_v1_21.trader_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.order_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.counterpart_trader_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.counterpart_order_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.counterpart_owner_data.size

-- Display: Overstepped Order Or Quote Notice
tmx_mx_solaorderentry_sail_v1_21.overstepped_order_or_quote_notice.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Overstepped Order Or Quote Notice
tmx_mx_solaorderentry_sail_v1_21.overstepped_order_or_quote_notice.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outgoing Messages Header: Struct of 4 fields
  index, outgoing_messages_header = tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  -- Verb: Verb
  index, verb = tmx_mx_solaorderentry_sail_v1_21.verb.dissect(buffer, index, packet, parent)

  -- Order Type: Order Type
  index, order_type = tmx_mx_solaorderentry_sail_v1_21.order_type.dissect(buffer, index, packet, parent)

  -- Trader Id: Trader ID
  index, trader_id = tmx_mx_solaorderentry_sail_v1_21.trader_id.dissect(buffer, index, packet, parent)

  -- Order Id: Order ID
  index, order_id = tmx_mx_solaorderentry_sail_v1_21.order_id.dissect(buffer, index, packet, parent)

  -- Counterpart Trader Id: Trader ID
  index, counterpart_trader_id = tmx_mx_solaorderentry_sail_v1_21.counterpart_trader_id.dissect(buffer, index, packet, parent)

  -- Counterpart Order Id: Order ID
  index, counterpart_order_id = tmx_mx_solaorderentry_sail_v1_21.counterpart_order_id.dissect(buffer, index, packet, parent)

  -- Counterpart Owner Data: Struct of 1 fields
  index, counterpart_owner_data = tmx_mx_solaorderentry_sail_v1_21.counterpart_owner_data.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Overstepped Order Or Quote Notice
tmx_mx_solaorderentry_sail_v1_21.overstepped_order_or_quote_notice.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.overstepped_order_or_quote_notice, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.overstepped_order_or_quote_notice.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.overstepped_order_or_quote_notice.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.overstepped_order_or_quote_notice.fields(buffer, offset, packet, parent)
  end
end

-- Leg Execution Notice
tmx_mx_solaorderentry_sail_v1_21.leg_execution_notice = {}

-- Size: Leg Execution Notice
tmx_mx_solaorderentry_sail_v1_21.leg_execution_notice.size =
  tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.size + 
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.trader_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.reference_id_order_id_or_quote_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.verb_side.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity_traded.size + 
  tmx_mx_solaorderentry_sail_v1_21.trade_price.size + 
  tmx_mx_solaorderentry_sail_v1_21.trading_engine_timestamp_of_the_trade_local_hhmmss.size + 
  tmx_mx_solaorderentry_sail_v1_21.clearing_data.size + 
  tmx_mx_solaorderentry_sail_v1_21.owner_data.size + 
  tmx_mx_solaorderentry_sail_v1_21.special_trade_indicator.size + 
  tmx_mx_solaorderentry_sail_v1_21.price_type.size + 
  tmx_mx_solaorderentry_sail_v1_21.trade_type.size + 
  tmx_mx_solaorderentry_sail_v1_21.filler_n_6.size + 
  tmx_mx_solaorderentry_sail_v1_21.trade_number.size + 
  tmx_mx_solaorderentry_sail_v1_21.trade_memo.size + 
  tmx_mx_solaorderentry_sail_v1_21.original_reference_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.id_code_for_the_counterpart_participant.size + 
  tmx_mx_solaorderentry_sail_v1_21.strategy_group.size + 
  tmx_mx_solaorderentry_sail_v1_21.strategy_instrument_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.strategy_verb_side.size + 
  tmx_mx_solaorderentry_sail_v1_21.strategy_trade_number.size + 
  tmx_mx_solaorderentry_sail_v1_21.leg_number.size

-- Display: Leg Execution Notice
tmx_mx_solaorderentry_sail_v1_21.leg_execution_notice.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Leg Execution Notice
tmx_mx_solaorderentry_sail_v1_21.leg_execution_notice.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outgoing Messages Header: Struct of 4 fields
  index, outgoing_messages_header = tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  -- Trader Id: Trader ID
  index, trader_id = tmx_mx_solaorderentry_sail_v1_21.trader_id.dissect(buffer, index, packet, parent)

  -- Reference Id Order Id Or Quote Id: Order ID
  index, reference_id_order_id_or_quote_id = tmx_mx_solaorderentry_sail_v1_21.reference_id_order_id_or_quote_id.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = tmx_mx_solaorderentry_sail_v1_21.verb_side.dissect(buffer, index, packet, parent)

  -- Quantity Traded: Quantity
  index, quantity_traded = tmx_mx_solaorderentry_sail_v1_21.quantity_traded.dissect(buffer, index, packet, parent)

  -- Trade Price: Price
  index, trade_price = tmx_mx_solaorderentry_sail_v1_21.trade_price.dissect(buffer, index, packet, parent)

  -- Trading Engine Timestamp Of The Trade Local Hhmmss: Time
  index, trading_engine_timestamp_of_the_trade_local_hhmmss = tmx_mx_solaorderentry_sail_v1_21.trading_engine_timestamp_of_the_trade_local_hhmmss.dissect(buffer, index, packet, parent)

  -- Clearing Data: Struct of 5 fields
  index, clearing_data = tmx_mx_solaorderentry_sail_v1_21.clearing_data.dissect(buffer, index, packet, parent)

  -- Owner Data: Struct of 1 fields
  index, owner_data = tmx_mx_solaorderentry_sail_v1_21.owner_data.dissect(buffer, index, packet, parent)

  -- Special Trade Indicator: Special Trade Indicator
  index, special_trade_indicator = tmx_mx_solaorderentry_sail_v1_21.special_trade_indicator.dissect(buffer, index, packet, parent)

  -- Price Type: Price Type
  index, price_type = tmx_mx_solaorderentry_sail_v1_21.price_type.dissect(buffer, index, packet, parent)

  -- Trade Type: Trade Type
  index, trade_type = tmx_mx_solaorderentry_sail_v1_21.trade_type.dissect(buffer, index, packet, parent)

  -- Filler N 6: Numeric (6)
  index, filler_n_6 = tmx_mx_solaorderentry_sail_v1_21.filler_n_6.dissect(buffer, index, packet, parent)

  -- Trade Number: Trade Number
  index, trade_number = tmx_mx_solaorderentry_sail_v1_21.trade_number.dissect(buffer, index, packet, parent)

  -- Trade Memo: Trade Memo
  index, trade_memo = tmx_mx_solaorderentry_sail_v1_21.trade_memo.dissect(buffer, index, packet, parent)

  -- Original Reference Id: Original Reference ID
  index, original_reference_id = tmx_mx_solaorderentry_sail_v1_21.original_reference_id.dissect(buffer, index, packet, parent)

  -- Id Code For The Counterpart Participant: ID Code for the Counterpart Participant
  index, id_code_for_the_counterpart_participant = tmx_mx_solaorderentry_sail_v1_21.id_code_for_the_counterpart_participant.dissect(buffer, index, packet, parent)

  -- Strategy Group: Group ID
  index, strategy_group = tmx_mx_solaorderentry_sail_v1_21.strategy_group.dissect(buffer, index, packet, parent)

  -- Strategy Instrument Id: Strategy Instrument ID
  index, strategy_instrument_id = tmx_mx_solaorderentry_sail_v1_21.strategy_instrument_id.dissect(buffer, index, packet, parent)

  -- Strategy Verb Side: Strategy Verb
  index, strategy_verb_side = tmx_mx_solaorderentry_sail_v1_21.strategy_verb_side.dissect(buffer, index, packet, parent)

  -- Strategy Trade Number: Strategy Trade Number
  index, strategy_trade_number = tmx_mx_solaorderentry_sail_v1_21.strategy_trade_number.dissect(buffer, index, packet, parent)

  -- Leg Number: Leg Number
  index, leg_number = tmx_mx_solaorderentry_sail_v1_21.leg_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Leg Execution Notice
tmx_mx_solaorderentry_sail_v1_21.leg_execution_notice.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.leg_execution_notice, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.leg_execution_notice.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.leg_execution_notice.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.leg_execution_notice.fields(buffer, offset, packet, parent)
  end
end

-- Instrument State Change
tmx_mx_solaorderentry_sail_v1_21.instrument_state_change = {}

-- Size: Instrument State Change
tmx_mx_solaorderentry_sail_v1_21.instrument_state_change.size =
  tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.size + 
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument_state.size

-- Display: Instrument State Change
tmx_mx_solaorderentry_sail_v1_21.instrument_state_change.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument State Change
tmx_mx_solaorderentry_sail_v1_21.instrument_state_change.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outgoing Messages Header: Struct of 4 fields
  index, outgoing_messages_header = tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  -- Instrument State: Instrument State
  index, instrument_state = tmx_mx_solaorderentry_sail_v1_21.instrument_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument State Change
tmx_mx_solaorderentry_sail_v1_21.instrument_state_change.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.instrument_state_change, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.instrument_state_change.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.instrument_state_change.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.instrument_state_change.fields(buffer, offset, packet, parent)
  end
end

-- Group State Change
tmx_mx_solaorderentry_sail_v1_21.group_state_change = {}

-- Size: Group State Change
tmx_mx_solaorderentry_sail_v1_21.group_state_change.size =
  tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.size + 
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.group_state.size

-- Display: Group State Change
tmx_mx_solaorderentry_sail_v1_21.group_state_change.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group State Change
tmx_mx_solaorderentry_sail_v1_21.group_state_change.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outgoing Messages Header: Struct of 4 fields
  index, outgoing_messages_header = tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Group State: Group State
  index, group_state = tmx_mx_solaorderentry_sail_v1_21.group_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Group State Change
tmx_mx_solaorderentry_sail_v1_21.group_state_change.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.group_state_change, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.group_state_change.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.group_state_change.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.group_state_change.fields(buffer, offset, packet, parent)
  end
end

-- Excluded Instrument Notice Occurrence
tmx_mx_solaorderentry_sail_v1_21.excluded_instrument_notice_occurrence = {}

-- Size: Excluded Instrument Notice Occurrence
tmx_mx_solaorderentry_sail_v1_21.excluded_instrument_notice_occurrence.size =
  tmx_mx_solaorderentry_sail_v1_21.instrument.size

-- Display: Excluded Instrument Notice Occurrence
tmx_mx_solaorderentry_sail_v1_21.excluded_instrument_notice_occurrence.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Excluded Instrument Notice Occurrence
tmx_mx_solaorderentry_sail_v1_21.excluded_instrument_notice_occurrence.fields = function(buffer, offset, packet, parent, excluded_instrument_notice_occurrence_index)
  local index = offset

  -- Implicit Excluded Instrument Notice Occurrence Index
  if excluded_instrument_notice_occurrence_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.excluded_instrument_notice_occurrence_index, excluded_instrument_notice_occurrence_index)
    iteration:set_generated()
  end

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Excluded Instrument Notice Occurrence
tmx_mx_solaorderentry_sail_v1_21.excluded_instrument_notice_occurrence.dissect = function(buffer, offset, packet, parent, excluded_instrument_notice_occurrence_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.excluded_instrument_notice_occurrence, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.excluded_instrument_notice_occurrence.fields(buffer, offset, packet, parent, excluded_instrument_notice_occurrence_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.excluded_instrument_notice_occurrence.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.excluded_instrument_notice_occurrence.fields(buffer, offset, packet, parent, excluded_instrument_notice_occurrence_index)
  end
end

-- Excluded Instrument Notice
tmx_mx_solaorderentry_sail_v1_21.excluded_instrument_notice = {}

-- Calculate size of: Excluded Instrument Notice
tmx_mx_solaorderentry_sail_v1_21.excluded_instrument_notice.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.group.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.filler_x_2.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.trader_id.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.filler_x_4.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.nb_of_instruments.size

  -- Calculate field size from count
  local excluded_instrument_notice_occurrence_count = buffer(offset + index - 4, 4):string()
  index = index + excluded_instrument_notice_occurrence_count * 4

  return index
end

-- Display: Excluded Instrument Notice
tmx_mx_solaorderentry_sail_v1_21.excluded_instrument_notice.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Excluded Instrument Notice
tmx_mx_solaorderentry_sail_v1_21.excluded_instrument_notice.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outgoing Messages Header: Struct of 4 fields
  index, outgoing_messages_header = tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Filler X 2: String (2)
  index, filler_x_2 = tmx_mx_solaorderentry_sail_v1_21.filler_x_2.dissect(buffer, index, packet, parent)

  -- Trader Id: Trader ID
  index, trader_id = tmx_mx_solaorderentry_sail_v1_21.trader_id.dissect(buffer, index, packet, parent)

  -- Filler X 4: String (4)
  index, filler_x_4 = tmx_mx_solaorderentry_sail_v1_21.filler_x_4.dissect(buffer, index, packet, parent)

  -- Nb Of Instruments: Numeric (4)
  index, nb_of_instruments = tmx_mx_solaorderentry_sail_v1_21.nb_of_instruments.dissect(buffer, index, packet, parent)

  -- Repeating: Excluded Instrument Notice Occurrence
  for excluded_instrument_notice_occurrence_index = 1, nb_of_instruments do
    index, excluded_instrument_notice_occurrence = tmx_mx_solaorderentry_sail_v1_21.excluded_instrument_notice_occurrence.dissect(buffer, index, packet, parent, excluded_instrument_notice_occurrence_index)
  end

  return index
end

-- Dissect: Excluded Instrument Notice
tmx_mx_solaorderentry_sail_v1_21.excluded_instrument_notice.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.excluded_instrument_notice, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.excluded_instrument_notice.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.excluded_instrument_notice.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.excluded_instrument_notice.fields(buffer, offset, packet, parent)
  end
end

-- Risk Limits Usage Occurrence
tmx_mx_solaorderentry_sail_v1_21.risk_limits_usage_occurrence = {}

-- Size: Risk Limits Usage Occurrence
tmx_mx_solaorderentry_sail_v1_21.risk_limits_usage_occurrence.size =
  tmx_mx_solaorderentry_sail_v1_21.trader.size + 
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.usage_status.size + 
  tmx_mx_solaorderentry_sail_v1_21.limit_type.size + 
  tmx_mx_solaorderentry_sail_v1_21.current_usage.size + 
  tmx_mx_solaorderentry_sail_v1_21.limit_value.size

-- Display: Risk Limits Usage Occurrence
tmx_mx_solaorderentry_sail_v1_21.risk_limits_usage_occurrence.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Risk Limits Usage Occurrence
tmx_mx_solaorderentry_sail_v1_21.risk_limits_usage_occurrence.fields = function(buffer, offset, packet, parent, risk_limits_usage_occurrence_index)
  local index = offset

  -- Implicit Risk Limits Usage Occurrence Index
  if risk_limits_usage_occurrence_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.risk_limits_usage_occurrence_index, risk_limits_usage_occurrence_index)
    iteration:set_generated()
  end

  -- Trader: Short Trader ID
  index, trader = tmx_mx_solaorderentry_sail_v1_21.trader.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Usage Status: Risk Usage Status
  index, usage_status = tmx_mx_solaorderentry_sail_v1_21.usage_status.dissect(buffer, index, packet, parent)

  -- Limit Type: Risk Limit Type
  index, limit_type = tmx_mx_solaorderentry_sail_v1_21.limit_type.dissect(buffer, index, packet, parent)

  -- Current Usage: Price or Quantity
  index, current_usage = tmx_mx_solaorderentry_sail_v1_21.current_usage.dissect(buffer, index, packet, parent)

  -- Limit Value: Price or Quantity
  index, limit_value = tmx_mx_solaorderentry_sail_v1_21.limit_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Risk Limits Usage Occurrence
tmx_mx_solaorderentry_sail_v1_21.risk_limits_usage_occurrence.dissect = function(buffer, offset, packet, parent, risk_limits_usage_occurrence_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.risk_limits_usage_occurrence, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.risk_limits_usage_occurrence.fields(buffer, offset, packet, parent, risk_limits_usage_occurrence_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.risk_limits_usage_occurrence.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.risk_limits_usage_occurrence.fields(buffer, offset, packet, parent, risk_limits_usage_occurrence_index)
  end
end

-- Risk Limits Usage
tmx_mx_solaorderentry_sail_v1_21.risk_limits_usage = {}

-- Calculate size of: Risk Limits Usage
tmx_mx_solaorderentry_sail_v1_21.risk_limits_usage.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.number_of_usage_blocks.size

  -- Calculate field size from count
  local risk_limits_usage_occurrence_count = buffer(offset + index - 4, 4):string()
  index = index + risk_limits_usage_occurrence_count * 28

  return index
end

-- Display: Risk Limits Usage
tmx_mx_solaorderentry_sail_v1_21.risk_limits_usage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Risk Limits Usage
tmx_mx_solaorderentry_sail_v1_21.risk_limits_usage.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outgoing Messages Header: Struct of 4 fields
  index, outgoing_messages_header = tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.dissect(buffer, index, packet, parent)

  -- Number Of Usage Blocks: Numeric (4)
  index, number_of_usage_blocks = tmx_mx_solaorderentry_sail_v1_21.number_of_usage_blocks.dissect(buffer, index, packet, parent)

  -- Repeating: Risk Limits Usage Occurrence
  for risk_limits_usage_occurrence_index = 1, number_of_usage_blocks do
    index, risk_limits_usage_occurrence = tmx_mx_solaorderentry_sail_v1_21.risk_limits_usage_occurrence.dissect(buffer, index, packet, parent, risk_limits_usage_occurrence_index)
  end

  return index
end

-- Dissect: Risk Limits Usage
tmx_mx_solaorderentry_sail_v1_21.risk_limits_usage.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.risk_limits_usage, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.risk_limits_usage.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.risk_limits_usage.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.risk_limits_usage.fields(buffer, offset, packet, parent)
  end
end

-- Bulk Command Acknowledgement Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_command_acknowledgement_occurrence = {}

-- Size: Bulk Command Acknowledgement Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_command_acknowledgement_occurrence.size =
  tmx_mx_solaorderentry_sail_v1_21.command_number.size + 
  tmx_mx_solaorderentry_sail_v1_21.error_code.size

-- Display: Bulk Command Acknowledgement Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_command_acknowledgement_occurrence.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Command Acknowledgement Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_command_acknowledgement_occurrence.fields = function(buffer, offset, packet, parent, bulk_command_acknowledgement_occurrence_index)
  local index = offset

  -- Implicit Bulk Command Acknowledgement Occurrence Index
  if bulk_command_acknowledgement_occurrence_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_command_acknowledgement_occurrence_index, bulk_command_acknowledgement_occurrence_index)
    iteration:set_generated()
  end

  -- Command Number: Numeric (4)
  index, command_number = tmx_mx_solaorderentry_sail_v1_21.command_number.dissect(buffer, index, packet, parent)

  -- Error Code: Error Code
  index, error_code = tmx_mx_solaorderentry_sail_v1_21.error_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bulk Command Acknowledgement Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_command_acknowledgement_occurrence.dissect = function(buffer, offset, packet, parent, bulk_command_acknowledgement_occurrence_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_command_acknowledgement_occurrence, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.bulk_command_acknowledgement_occurrence.fields(buffer, offset, packet, parent, bulk_command_acknowledgement_occurrence_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.bulk_command_acknowledgement_occurrence.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.bulk_command_acknowledgement_occurrence.fields(buffer, offset, packet, parent, bulk_command_acknowledgement_occurrence_index)
  end
end

-- Bulk Command Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.bulk_command_acknowledgement = {}

-- Calculate size of: Bulk Command Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.bulk_command_acknowledgement.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.number_of_commands.size

  -- Calculate field size from count
  local bulk_command_acknowledgement_occurrence_count = buffer(offset + index - 4, 4):string()
  index = index + bulk_command_acknowledgement_occurrence_count * 8

  return index
end

-- Display: Bulk Command Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.bulk_command_acknowledgement.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Command Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.bulk_command_acknowledgement.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outgoing Messages Header: Struct of 4 fields
  index, outgoing_messages_header = tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.dissect(buffer, index, packet, parent)

  -- Number Of Commands: Numeric (4)
  index, number_of_commands = tmx_mx_solaorderentry_sail_v1_21.number_of_commands.dissect(buffer, index, packet, parent)

  -- Repeating: Bulk Command Acknowledgement Occurrence
  for bulk_command_acknowledgement_occurrence_index = 1, number_of_commands do
    index, bulk_command_acknowledgement_occurrence = tmx_mx_solaorderentry_sail_v1_21.bulk_command_acknowledgement_occurrence.dissect(buffer, index, packet, parent, bulk_command_acknowledgement_occurrence_index)
  end

  return index
end

-- Dissect: Bulk Command Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.bulk_command_acknowledgement.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_command_acknowledgement, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.bulk_command_acknowledgement.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.bulk_command_acknowledgement.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.bulk_command_acknowledgement.fields(buffer, offset, packet, parent)
  end
end

-- Bulk Quote Acknowledgement Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_acknowledgement_occurrence = {}

-- Size: Bulk Quote Acknowledgement Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_acknowledgement_occurrence.size =
  tmx_mx_solaorderentry_sail_v1_21.quote_number.size + 
  tmx_mx_solaorderentry_sail_v1_21.error_code.size

-- Display: Bulk Quote Acknowledgement Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_acknowledgement_occurrence.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote Acknowledgement Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_acknowledgement_occurrence.fields = function(buffer, offset, packet, parent, bulk_quote_acknowledgement_occurrence_index)
  local index = offset

  -- Implicit Bulk Quote Acknowledgement Occurrence Index
  if bulk_quote_acknowledgement_occurrence_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_acknowledgement_occurrence_index, bulk_quote_acknowledgement_occurrence_index)
    iteration:set_generated()
  end

  -- Quote Number: Numeric (3)
  index, quote_number = tmx_mx_solaorderentry_sail_v1_21.quote_number.dissect(buffer, index, packet, parent)

  -- Error Code: Error Code
  index, error_code = tmx_mx_solaorderentry_sail_v1_21.error_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bulk Quote Acknowledgement Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_acknowledgement_occurrence.dissect = function(buffer, offset, packet, parent, bulk_quote_acknowledgement_occurrence_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_acknowledgement_occurrence, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_acknowledgement_occurrence.fields(buffer, offset, packet, parent, bulk_quote_acknowledgement_occurrence_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_acknowledgement_occurrence.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.bulk_quote_acknowledgement_occurrence.fields(buffer, offset, packet, parent, bulk_quote_acknowledgement_occurrence_index)
  end
end

-- Bulk Quote Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_acknowledgement = {}

-- Calculate size of: Bulk Quote Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_acknowledgement.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.group.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.quote_identifier_on_this_group.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.number_of_quotes_in_error.size

  -- Calculate field size from count
  local bulk_quote_acknowledgement_occurrence_count = buffer(offset + index - 3, 3):string()
  index = index + bulk_quote_acknowledgement_occurrence_count * 7

  return index
end

-- Display: Bulk Quote Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_acknowledgement.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_acknowledgement.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outgoing Messages Header: Struct of 4 fields
  index, outgoing_messages_header = tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Quote Identifier On This Group: Order ID
  index, quote_identifier_on_this_group = tmx_mx_solaorderentry_sail_v1_21.quote_identifier_on_this_group.dissect(buffer, index, packet, parent)

  -- Number Of Quotes In Error: Numeric (3)
  index, number_of_quotes_in_error = tmx_mx_solaorderentry_sail_v1_21.number_of_quotes_in_error.dissect(buffer, index, packet, parent)

  -- Repeating: Bulk Quote Acknowledgement Occurrence
  for bulk_quote_acknowledgement_occurrence_index = 1, number_of_quotes_in_error do
    index, bulk_quote_acknowledgement_occurrence = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_acknowledgement_occurrence.dissect(buffer, index, packet, parent, bulk_quote_acknowledgement_occurrence_index)
  end

  return index
end

-- Dissect: Bulk Quote Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_acknowledgement.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_acknowledgement, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_acknowledgement.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_acknowledgement.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.bulk_quote_acknowledgement.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancellation Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.order_cancellation_acknowledgement = {}

-- Size: Order Cancellation Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.order_cancellation_acknowledgement.size =
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.trader_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.order_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.status.size + 
  tmx_mx_solaorderentry_sail_v1_21.verb_side.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity.size + 
  tmx_mx_solaorderentry_sail_v1_21.assigned_price.size + 
  tmx_mx_solaorderentry_sail_v1_21.clearing_data.size + 
  tmx_mx_solaorderentry_sail_v1_21.owner_data.size + 
  tmx_mx_solaorderentry_sail_v1_21.original_order_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.filler_n_6.size

-- Display: Order Cancellation Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.order_cancellation_acknowledgement.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancellation Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.order_cancellation_acknowledgement.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  -- Trader Id: Trader ID
  index, trader_id = tmx_mx_solaorderentry_sail_v1_21.trader_id.dissect(buffer, index, packet, parent)

  -- Order Id: Order ID
  index, order_id = tmx_mx_solaorderentry_sail_v1_21.order_id.dissect(buffer, index, packet, parent)

  -- Status: Status
  index, status = tmx_mx_solaorderentry_sail_v1_21.status.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = tmx_mx_solaorderentry_sail_v1_21.verb_side.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity
  index, quantity = tmx_mx_solaorderentry_sail_v1_21.quantity.dissect(buffer, index, packet, parent)

  -- Assigned Price: Assigned Price
  index, assigned_price = tmx_mx_solaorderentry_sail_v1_21.assigned_price.dissect(buffer, index, packet, parent)

  -- Clearing Data: Struct of 5 fields
  index, clearing_data = tmx_mx_solaorderentry_sail_v1_21.clearing_data.dissect(buffer, index, packet, parent)

  -- Owner Data: Struct of 1 fields
  index, owner_data = tmx_mx_solaorderentry_sail_v1_21.owner_data.dissect(buffer, index, packet, parent)

  -- Original Order Id: Original Order ID
  index, original_order_id = tmx_mx_solaorderentry_sail_v1_21.original_order_id.dissect(buffer, index, packet, parent)

  -- Filler N 6: Numeric (6)
  index, filler_n_6 = tmx_mx_solaorderentry_sail_v1_21.filler_n_6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancellation Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.order_cancellation_acknowledgement.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.order_cancellation_acknowledgement, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.order_cancellation_acknowledgement.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.order_cancellation_acknowledgement.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.order_cancellation_acknowledgement.fields(buffer, offset, packet, parent)
  end
end

-- Standard Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.standard_acknowledgement = {}

-- Size: Standard Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.standard_acknowledgement.size =
  tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.size + 
  tmx_mx_solaorderentry_sail_v1_21.trader_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.original_message_type_af_gz_ml_ox_or_rq.size

-- Display: Standard Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.standard_acknowledgement.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Standard Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.standard_acknowledgement.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outgoing Messages Header: Struct of 4 fields
  index, outgoing_messages_header = tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.dissect(buffer, index, packet, parent)

  -- Trader Id: Trader ID
  index, trader_id = tmx_mx_solaorderentry_sail_v1_21.trader_id.dissect(buffer, index, packet, parent)

  -- Original Message Type Af Gz Ml Ox Or Rq: Message Type
  index, original_message_type_af_gz_ml_ox_or_rq = tmx_mx_solaorderentry_sail_v1_21.original_message_type_af_gz_ml_ox_or_rq.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Standard Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.standard_acknowledgement.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.standard_acknowledgement, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.standard_acknowledgement.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.standard_acknowledgement.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.standard_acknowledgement.fields(buffer, offset, packet, parent)
  end
end

-- New Strategy Instrument Acknowledgement Leg Definition Repeating Block
tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument_acknowledgement_leg_definition_repeating_block = {}

-- Size: New Strategy Instrument Acknowledgement Leg Definition Repeating Block
tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument_acknowledgement_leg_definition_repeating_block.size =
  tmx_mx_solaorderentry_sail_v1_21.leg_group.size + 
  tmx_mx_solaorderentry_sail_v1_21.leg_instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.leg_verb.size + 
  tmx_mx_solaorderentry_sail_v1_21.filler_x_1.size + 
  tmx_mx_solaorderentry_sail_v1_21.leg_quantity_ratio.size

-- Display: New Strategy Instrument Acknowledgement Leg Definition Repeating Block
tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument_acknowledgement_leg_definition_repeating_block.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Strategy Instrument Acknowledgement Leg Definition Repeating Block
tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument_acknowledgement_leg_definition_repeating_block.fields = function(buffer, offset, packet, parent, new_strategy_instrument_acknowledgement_leg_definition_repeating_block_index)
  local index = offset

  -- Implicit New Strategy Instrument Acknowledgement Leg Definition Repeating Block Index
  if new_strategy_instrument_acknowledgement_leg_definition_repeating_block_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.new_strategy_instrument_acknowledgement_leg_definition_repeating_block_index, new_strategy_instrument_acknowledgement_leg_definition_repeating_block_index)
    iteration:set_generated()
  end

  -- Leg Group: Group ID
  index, leg_group = tmx_mx_solaorderentry_sail_v1_21.leg_group.dissect(buffer, index, packet, parent)

  -- Leg Instrument: Instrument ID
  index, leg_instrument = tmx_mx_solaorderentry_sail_v1_21.leg_instrument.dissect(buffer, index, packet, parent)

  -- Leg Verb: Verb
  index, leg_verb = tmx_mx_solaorderentry_sail_v1_21.leg_verb.dissect(buffer, index, packet, parent)

  -- Filler X 1: String (1)
  index, filler_x_1 = tmx_mx_solaorderentry_sail_v1_21.filler_x_1.dissect(buffer, index, packet, parent)

  -- Leg Quantity Ratio: Quantity
  index, leg_quantity_ratio = tmx_mx_solaorderentry_sail_v1_21.leg_quantity_ratio.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Strategy Instrument Acknowledgement Leg Definition Repeating Block
tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument_acknowledgement_leg_definition_repeating_block.dissect = function(buffer, offset, packet, parent, new_strategy_instrument_acknowledgement_leg_definition_repeating_block_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.new_strategy_instrument_acknowledgement_leg_definition_repeating_block, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument_acknowledgement_leg_definition_repeating_block.fields(buffer, offset, packet, parent, new_strategy_instrument_acknowledgement_leg_definition_repeating_block_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument_acknowledgement_leg_definition_repeating_block.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument_acknowledgement_leg_definition_repeating_block.fields(buffer, offset, packet, parent, new_strategy_instrument_acknowledgement_leg_definition_repeating_block_index)
  end
end

-- New Strategy Instrument Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument_acknowledgement = {}

-- Calculate size of: New Strategy Instrument Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument_acknowledgement.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.strategy_group.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.strategy_instrument.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.creation_status.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.number_of_legs.size

  -- Calculate field size from count
  local new_strategy_instrument_acknowledgement_leg_definition_repeating_block_count = buffer(offset + index - 2, 2):string()
  index = index + new_strategy_instrument_acknowledgement_leg_definition_repeating_block_count * 16

  return index
end

-- Display: New Strategy Instrument Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument_acknowledgement.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Strategy Instrument Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument_acknowledgement.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outgoing Messages Header: Struct of 4 fields
  index, outgoing_messages_header = tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.dissect(buffer, index, packet, parent)

  -- Strategy Group: Group ID
  index, strategy_group = tmx_mx_solaorderentry_sail_v1_21.strategy_group.dissect(buffer, index, packet, parent)

  -- Strategy Instrument: Instrument ID
  index, strategy_instrument = tmx_mx_solaorderentry_sail_v1_21.strategy_instrument.dissect(buffer, index, packet, parent)

  -- Creation Status: String (1)
  index, creation_status = tmx_mx_solaorderentry_sail_v1_21.creation_status.dissect(buffer, index, packet, parent)

  -- Number Of Legs: Numeric (2)
  index, number_of_legs = tmx_mx_solaorderentry_sail_v1_21.number_of_legs.dissect(buffer, index, packet, parent)

  -- Repeating: New Strategy Instrument Acknowledgement Leg Definition Repeating Block
  for new_strategy_instrument_acknowledgement_leg_definition_repeating_block_index = 1, number_of_legs do
    index, new_strategy_instrument_acknowledgement_leg_definition_repeating_block = tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument_acknowledgement_leg_definition_repeating_block.dissect(buffer, index, packet, parent, new_strategy_instrument_acknowledgement_leg_definition_repeating_block_index)
  end

  return index
end

-- Dissect: New Strategy Instrument Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument_acknowledgement.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.new_strategy_instrument_acknowledgement, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument_acknowledgement.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument_acknowledgement.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument_acknowledgement.fields(buffer, offset, packet, parent)
  end
end

-- Order Modification Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.order_modification_acknowledgement = {}

-- Size: Order Modification Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.order_modification_acknowledgement.size =
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.trader_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.order_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.status.size + 
  tmx_mx_solaorderentry_sail_v1_21.verb_side.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity.size + 
  tmx_mx_solaorderentry_sail_v1_21.assigned_price.size + 
  tmx_mx_solaorderentry_sail_v1_21.clearing_data.size + 
  tmx_mx_solaorderentry_sail_v1_21.owner_data.size + 
  tmx_mx_solaorderentry_sail_v1_21.original_order_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.filler_n_6.size

-- Display: Order Modification Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.order_modification_acknowledgement.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modification Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.order_modification_acknowledgement.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  -- Trader Id: Trader ID
  index, trader_id = tmx_mx_solaorderentry_sail_v1_21.trader_id.dissect(buffer, index, packet, parent)

  -- Order Id: Order ID
  index, order_id = tmx_mx_solaorderentry_sail_v1_21.order_id.dissect(buffer, index, packet, parent)

  -- Status: Status
  index, status = tmx_mx_solaorderentry_sail_v1_21.status.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = tmx_mx_solaorderentry_sail_v1_21.verb_side.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity
  index, quantity = tmx_mx_solaorderentry_sail_v1_21.quantity.dissect(buffer, index, packet, parent)

  -- Assigned Price: Assigned Price
  index, assigned_price = tmx_mx_solaorderentry_sail_v1_21.assigned_price.dissect(buffer, index, packet, parent)

  -- Clearing Data: Struct of 5 fields
  index, clearing_data = tmx_mx_solaorderentry_sail_v1_21.clearing_data.dissect(buffer, index, packet, parent)

  -- Owner Data: Struct of 1 fields
  index, owner_data = tmx_mx_solaorderentry_sail_v1_21.owner_data.dissect(buffer, index, packet, parent)

  -- Original Order Id: Original Order ID
  index, original_order_id = tmx_mx_solaorderentry_sail_v1_21.original_order_id.dissect(buffer, index, packet, parent)

  -- Filler N 6: Numeric (6)
  index, filler_n_6 = tmx_mx_solaorderentry_sail_v1_21.filler_n_6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modification Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.order_modification_acknowledgement.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.order_modification_acknowledgement, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.order_modification_acknowledgement.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.order_modification_acknowledgement.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.order_modification_acknowledgement.fields(buffer, offset, packet, parent)
  end
end

-- Global Cancellation Confirmation
tmx_mx_solaorderentry_sail_v1_21.global_cancellation_confirmation = {}

-- Size: Global Cancellation Confirmation
tmx_mx_solaorderentry_sail_v1_21.global_cancellation_confirmation.size =
  tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.size + 
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.trader_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.type_of_cancellation_only_q_quotes_only_can_be_returned.size

-- Display: Global Cancellation Confirmation
tmx_mx_solaorderentry_sail_v1_21.global_cancellation_confirmation.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Global Cancellation Confirmation
tmx_mx_solaorderentry_sail_v1_21.global_cancellation_confirmation.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outgoing Messages Header: Struct of 4 fields
  index, outgoing_messages_header = tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Trader Id: Trader ID
  index, trader_id = tmx_mx_solaorderentry_sail_v1_21.trader_id.dissect(buffer, index, packet, parent)

  -- Type Of Cancellation Only Q Quotes Only Can Be Returned: CancellationType
  index, type_of_cancellation_only_q_quotes_only_can_be_returned = tmx_mx_solaorderentry_sail_v1_21.type_of_cancellation_only_q_quotes_only_can_be_returned.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Global Cancellation Confirmation
tmx_mx_solaorderentry_sail_v1_21.global_cancellation_confirmation.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.global_cancellation_confirmation, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.global_cancellation_confirmation.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.global_cancellation_confirmation.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.global_cancellation_confirmation.fields(buffer, offset, packet, parent)
  end
end

-- Order Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.order_acknowledgement = {}

-- Size: Order Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.order_acknowledgement.size =
  tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.size + 
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.trader_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.order_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.status.size + 
  tmx_mx_solaorderentry_sail_v1_21.verb_side.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity.size + 
  tmx_mx_solaorderentry_sail_v1_21.assigned_price.size + 
  tmx_mx_solaorderentry_sail_v1_21.clearing_data.size + 
  tmx_mx_solaorderentry_sail_v1_21.owner_data.size + 
  tmx_mx_solaorderentry_sail_v1_21.original_order_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.filler_n_6.size

-- Display: Order Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.order_acknowledgement.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.order_acknowledgement.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outgoing Messages Header: Struct of 4 fields
  index, outgoing_messages_header = tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  -- Trader Id: Trader ID
  index, trader_id = tmx_mx_solaorderentry_sail_v1_21.trader_id.dissect(buffer, index, packet, parent)

  -- Order Id: Order ID
  index, order_id = tmx_mx_solaorderentry_sail_v1_21.order_id.dissect(buffer, index, packet, parent)

  -- Status: Status
  index, status = tmx_mx_solaorderentry_sail_v1_21.status.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = tmx_mx_solaorderentry_sail_v1_21.verb_side.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity
  index, quantity = tmx_mx_solaorderentry_sail_v1_21.quantity.dissect(buffer, index, packet, parent)

  -- Assigned Price: Assigned Price
  index, assigned_price = tmx_mx_solaorderentry_sail_v1_21.assigned_price.dissect(buffer, index, packet, parent)

  -- Clearing Data: Struct of 5 fields
  index, clearing_data = tmx_mx_solaorderentry_sail_v1_21.clearing_data.dissect(buffer, index, packet, parent)

  -- Owner Data: Struct of 1 fields
  index, owner_data = tmx_mx_solaorderentry_sail_v1_21.owner_data.dissect(buffer, index, packet, parent)

  -- Original Order Id: Original Order ID
  index, original_order_id = tmx_mx_solaorderentry_sail_v1_21.original_order_id.dissect(buffer, index, packet, parent)

  -- Filler N 6: Numeric (6)
  index, filler_n_6 = tmx_mx_solaorderentry_sail_v1_21.filler_n_6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.order_acknowledgement.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.order_acknowledgement, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.order_acknowledgement.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.order_acknowledgement.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.order_acknowledgement.fields(buffer, offset, packet, parent)
  end
end

-- Bulk Quote Data Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_data_acknowledgement = {}

-- Size: Bulk Quote Data Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_data_acknowledgement.size =
  tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.size + 
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.trader_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.quote_id_identifies_traders_quote_on_this_group.size

-- Display: Bulk Quote Data Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_data_acknowledgement.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote Data Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_data_acknowledgement.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outgoing Messages Header: Struct of 4 fields
  index, outgoing_messages_header = tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Trader Id: Trader ID
  index, trader_id = tmx_mx_solaorderentry_sail_v1_21.trader_id.dissect(buffer, index, packet, parent)

  -- Quote Id Identifies Traders Quote On This Group: Order ID
  index, quote_id_identifies_traders_quote_on_this_group = tmx_mx_solaorderentry_sail_v1_21.quote_id_identifies_traders_quote_on_this_group.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bulk Quote Data Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_data_acknowledgement.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_data_acknowledgement, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_data_acknowledgement.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_data_acknowledgement.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.bulk_quote_data_acknowledgement.fields(buffer, offset, packet, parent)
  end
end

-- Error Notice
tmx_mx_solaorderentry_sail_v1_21.error_notice = {}

-- Size: Error Notice
tmx_mx_solaorderentry_sail_v1_21.error_notice.size =
  tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.size + 
  tmx_mx_solaorderentry_sail_v1_21.error_code.size + 
  tmx_mx_solaorderentry_sail_v1_21.error_description.size

-- Display: Error Notice
tmx_mx_solaorderentry_sail_v1_21.error_notice.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Error Notice
tmx_mx_solaorderentry_sail_v1_21.error_notice.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outgoing Messages Header: Struct of 4 fields
  index, outgoing_messages_header = tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.dissect(buffer, index, packet, parent)

  -- Error Code: Error Code
  index, error_code = tmx_mx_solaorderentry_sail_v1_21.error_code.dissect(buffer, index, packet, parent)

  -- Error Description: String (100)
  index, error_description = tmx_mx_solaorderentry_sail_v1_21.error_description.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Error Notice
tmx_mx_solaorderentry_sail_v1_21.error_notice.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.error_notice, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.error_notice.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.error_notice.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.error_notice.fields(buffer, offset, packet, parent)
  end
end

-- Order Reply
tmx_mx_solaorderentry_sail_v1_21.order_reply = {}

-- Size: Order Reply
tmx_mx_solaorderentry_sail_v1_21.order_reply.size =
  tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.size + 
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.trader_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.order_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.status.size + 
  tmx_mx_solaorderentry_sail_v1_21.verb_side.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity_remaining.size + 
  tmx_mx_solaorderentry_sail_v1_21.assigned_price.size + 
  tmx_mx_solaorderentry_sail_v1_21.clearing_data.size + 
  tmx_mx_solaorderentry_sail_v1_21.owner_data.size

-- Display: Order Reply
tmx_mx_solaorderentry_sail_v1_21.order_reply.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Reply
tmx_mx_solaorderentry_sail_v1_21.order_reply.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outgoing Messages Header: Struct of 4 fields
  index, outgoing_messages_header = tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  -- Trader Id: Trader ID
  index, trader_id = tmx_mx_solaorderentry_sail_v1_21.trader_id.dissect(buffer, index, packet, parent)

  -- Order Id: Order ID
  index, order_id = tmx_mx_solaorderentry_sail_v1_21.order_id.dissect(buffer, index, packet, parent)

  -- Status: Status
  index, status = tmx_mx_solaorderentry_sail_v1_21.status.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = tmx_mx_solaorderentry_sail_v1_21.verb_side.dissect(buffer, index, packet, parent)

  -- Quantity Remaining: Quantity
  index, quantity_remaining = tmx_mx_solaorderentry_sail_v1_21.quantity_remaining.dissect(buffer, index, packet, parent)

  -- Assigned Price: Assigned Price
  index, assigned_price = tmx_mx_solaorderentry_sail_v1_21.assigned_price.dissect(buffer, index, packet, parent)

  -- Clearing Data: Struct of 5 fields
  index, clearing_data = tmx_mx_solaorderentry_sail_v1_21.clearing_data.dissect(buffer, index, packet, parent)

  -- Owner Data: Struct of 1 fields
  index, owner_data = tmx_mx_solaorderentry_sail_v1_21.owner_data.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Reply
tmx_mx_solaorderentry_sail_v1_21.order_reply.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.order_reply, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.order_reply.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.order_reply.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.order_reply.fields(buffer, offset, packet, parent)
  end
end

-- End Of Transmission
tmx_mx_solaorderentry_sail_v1_21.end_of_transmission = {}

-- Size: End Of Transmission
tmx_mx_solaorderentry_sail_v1_21.end_of_transmission.size =
  tmx_mx_solaorderentry_sail_v1_21.ended_session_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.last_user_sequence_id_received_if_no_business_message_has_been_received_on_this_connection_this_field_is_equal_to_zeroes.size + 
  tmx_mx_solaorderentry_sail_v1_21.trading_engine_timestamp_local_hhmmss.size

-- Display: End Of Transmission
tmx_mx_solaorderentry_sail_v1_21.end_of_transmission.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Transmission
tmx_mx_solaorderentry_sail_v1_21.end_of_transmission.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Ended Session Id: Session ID
  index, ended_session_id = tmx_mx_solaorderentry_sail_v1_21.ended_session_id.dissect(buffer, index, packet, parent)

  -- Last User Sequence Id Received If No Business Message Has Been Received On This Connection This Field Is Equal To Zeroes: User Sequence ID
  index, last_user_sequence_id_received_if_no_business_message_has_been_received_on_this_connection_this_field_is_equal_to_zeroes = tmx_mx_solaorderentry_sail_v1_21.last_user_sequence_id_received_if_no_business_message_has_been_received_on_this_connection_this_field_is_equal_to_zeroes.dissect(buffer, index, packet, parent)

  -- Trading Engine Timestamp Local Hhmmss: Time
  index, trading_engine_timestamp_local_hhmmss = tmx_mx_solaorderentry_sail_v1_21.trading_engine_timestamp_local_hhmmss.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Transmission
tmx_mx_solaorderentry_sail_v1_21.end_of_transmission.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.end_of_transmission, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.end_of_transmission.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.end_of_transmission.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.end_of_transmission.fields(buffer, offset, packet, parent)
  end
end

-- Disconnection Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.disconnection_acknowledgement = {}

-- Size: Disconnection Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.disconnection_acknowledgement.size =
  tmx_mx_solaorderentry_sail_v1_21.current_session_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.last_user_sequence_id_received.size

-- Display: Disconnection Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.disconnection_acknowledgement.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Disconnection Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.disconnection_acknowledgement.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Current Session Id: Session ID
  index, current_session_id = tmx_mx_solaorderentry_sail_v1_21.current_session_id.dissect(buffer, index, packet, parent)

  -- Last User Sequence Id Received: User Sequence ID
  index, last_user_sequence_id_received = tmx_mx_solaorderentry_sail_v1_21.last_user_sequence_id_received.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Disconnection Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.disconnection_acknowledgement.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.disconnection_acknowledgement, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.disconnection_acknowledgement.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.disconnection_acknowledgement.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.disconnection_acknowledgement.fields(buffer, offset, packet, parent)
  end
end

-- Technical Error Notice
tmx_mx_solaorderentry_sail_v1_21.technical_error_notice = {}

-- Size: Technical Error Notice
tmx_mx_solaorderentry_sail_v1_21.technical_error_notice.size =
  tmx_mx_solaorderentry_sail_v1_21.received_message_type.size + 
  tmx_mx_solaorderentry_sail_v1_21.preceding_user_sequence_id_received_zeroes_if_none.size + 
  tmx_mx_solaorderentry_sail_v1_21.error_code.size + 
  tmx_mx_solaorderentry_sail_v1_21.error_position.size + 
  tmx_mx_solaorderentry_sail_v1_21.error_message.size + 
  tmx_mx_solaorderentry_sail_v1_21.start_of_message_in_error.size

-- Display: Technical Error Notice
tmx_mx_solaorderentry_sail_v1_21.technical_error_notice.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Technical Error Notice
tmx_mx_solaorderentry_sail_v1_21.technical_error_notice.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Received Message Type: Message Type
  index, received_message_type = tmx_mx_solaorderentry_sail_v1_21.received_message_type.dissect(buffer, index, packet, parent)

  -- Preceding User Sequence Id Received Zeroes If None: User Sequence ID
  index, preceding_user_sequence_id_received_zeroes_if_none = tmx_mx_solaorderentry_sail_v1_21.preceding_user_sequence_id_received_zeroes_if_none.dissect(buffer, index, packet, parent)

  -- Error Code: Error Code
  index, error_code = tmx_mx_solaorderentry_sail_v1_21.error_code.dissect(buffer, index, packet, parent)

  -- Error Position: Error Position
  index, error_position = tmx_mx_solaorderentry_sail_v1_21.error_position.dissect(buffer, index, packet, parent)

  -- Error Message: Error Message
  index, error_message = tmx_mx_solaorderentry_sail_v1_21.error_message.dissect(buffer, index, packet, parent)

  -- Start Of Message In Error: String (100)
  index, start_of_message_in_error = tmx_mx_solaorderentry_sail_v1_21.start_of_message_in_error.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Technical Error Notice
tmx_mx_solaorderentry_sail_v1_21.technical_error_notice.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.technical_error_notice, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.technical_error_notice.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.technical_error_notice.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.technical_error_notice.fields(buffer, offset, packet, parent)
  end
end

-- Out Of Sequence
tmx_mx_solaorderentry_sail_v1_21.out_of_sequence = {}

-- Size: Out Of Sequence
tmx_mx_solaorderentry_sail_v1_21.out_of_sequence.size =
  tmx_mx_solaorderentry_sail_v1_21.received_user_sequence_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.expected_last_user_sequence_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.user_message_timestamp_local_hhmmss.size

-- Display: Out Of Sequence
tmx_mx_solaorderentry_sail_v1_21.out_of_sequence.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Out Of Sequence
tmx_mx_solaorderentry_sail_v1_21.out_of_sequence.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Received User Sequence Id: User Sequence ID
  index, received_user_sequence_id = tmx_mx_solaorderentry_sail_v1_21.received_user_sequence_id.dissect(buffer, index, packet, parent)

  -- Expected Last User Sequence Id: User Sequence ID
  index, expected_last_user_sequence_id = tmx_mx_solaorderentry_sail_v1_21.expected_last_user_sequence_id.dissect(buffer, index, packet, parent)

  -- User Message Timestamp Local Hhmmss: Time
  index, user_message_timestamp_local_hhmmss = tmx_mx_solaorderentry_sail_v1_21.user_message_timestamp_local_hhmmss.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Out Of Sequence
tmx_mx_solaorderentry_sail_v1_21.out_of_sequence.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.out_of_sequence, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.out_of_sequence.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.out_of_sequence.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.out_of_sequence.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Question
tmx_mx_solaorderentry_sail_v1_21.heartbeat_question = {}

-- Size: Heartbeat Question
tmx_mx_solaorderentry_sail_v1_21.heartbeat_question.size =
  tmx_mx_solaorderentry_sail_v1_21.user_sequence_id_first_user_sequence_id_for_nextcurrent_heartbeat_period.size + 
  tmx_mx_solaorderentry_sail_v1_21.last_exchange_message_id_sent_to_participant.size + 
  tmx_mx_solaorderentry_sail_v1_21.trading_engine_timestamp_local_hhmmss.size

-- Display: Heartbeat Question
tmx_mx_solaorderentry_sail_v1_21.heartbeat_question.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Question
tmx_mx_solaorderentry_sail_v1_21.heartbeat_question.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Sequence Id First User Sequence Id For Nextcurrent Heartbeat Period: User Sequence ID
  index, user_sequence_id_first_user_sequence_id_for_nextcurrent_heartbeat_period = tmx_mx_solaorderentry_sail_v1_21.user_sequence_id_first_user_sequence_id_for_nextcurrent_heartbeat_period.dissect(buffer, index, packet, parent)

  -- Last Exchange Message Id Sent To Participant: Exchange Message ID
  index, last_exchange_message_id_sent_to_participant = tmx_mx_solaorderentry_sail_v1_21.last_exchange_message_id_sent_to_participant.dissect(buffer, index, packet, parent)

  -- Trading Engine Timestamp Local Hhmmss: Time
  index, trading_engine_timestamp_local_hhmmss = tmx_mx_solaorderentry_sail_v1_21.trading_engine_timestamp_local_hhmmss.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Question
tmx_mx_solaorderentry_sail_v1_21.heartbeat_question.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.heartbeat_question, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.heartbeat_question.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.heartbeat_question.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.heartbeat_question.fields(buffer, offset, packet, parent)
  end
end

-- Disconnection Instruction Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction_acknowledgement = {}

-- Size: Disconnection Instruction Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction_acknowledgement.size =
  tmx_mx_solaorderentry_sail_v1_21.current_session_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.last_user_sequence_id_received.size

-- Display: Disconnection Instruction Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction_acknowledgement.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Disconnection Instruction Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction_acknowledgement.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Current Session Id: Session ID
  index, current_session_id = tmx_mx_solaorderentry_sail_v1_21.current_session_id.dissect(buffer, index, packet, parent)

  -- Last User Sequence Id Received: User Sequence ID
  index, last_user_sequence_id_received = tmx_mx_solaorderentry_sail_v1_21.last_user_sequence_id_received.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Disconnection Instruction Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction_acknowledgement.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.disconnection_instruction_acknowledgement, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction_acknowledgement.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction_acknowledgement.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction_acknowledgement.fields(buffer, offset, packet, parent)
  end
end

-- Connection Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.connection_acknowledgement = {}

-- Size: Connection Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.connection_acknowledgement.size =
  tmx_mx_solaorderentry_sail_v1_21.current_session_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.last_user_sequence_id_received.size

-- Display: Connection Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.connection_acknowledgement.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Connection Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.connection_acknowledgement.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Current Session Id: Session ID
  index, current_session_id = tmx_mx_solaorderentry_sail_v1_21.current_session_id.dissect(buffer, index, packet, parent)

  -- Last User Sequence Id Received: User Sequence ID
  index, last_user_sequence_id_received = tmx_mx_solaorderentry_sail_v1_21.last_user_sequence_id_received.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Connection Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.connection_acknowledgement.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.connection_acknowledgement, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.connection_acknowledgement.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.connection_acknowledgement.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.connection_acknowledgement.fields(buffer, offset, packet, parent)
  end
end

-- Exchange Message
tmx_mx_solaorderentry_sail_v1_21.exchange_message = {}

-- Dissect: Exchange Message
tmx_mx_solaorderentry_sail_v1_21.exchange_message.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Connection Acknowledgement
  if message_type == "TK" then
    return tmx_mx_solaorderentry_sail_v1_21.connection_acknowledgement.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Disconnection Instruction Acknowledgement
  if message_type == "TM" then
    return tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction_acknowledgement.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Question
  if message_type == "TH" then
    return tmx_mx_solaorderentry_sail_v1_21.heartbeat_question.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Out Of Sequence
  if message_type == "TO" then
    return tmx_mx_solaorderentry_sail_v1_21.out_of_sequence.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Technical Error Notice
  if message_type == "TE" then
    return tmx_mx_solaorderentry_sail_v1_21.technical_error_notice.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Disconnection Acknowledgement
  if message_type == "TL" then
    return tmx_mx_solaorderentry_sail_v1_21.disconnection_acknowledgement.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Transmission
  if message_type == "TT" then
    return tmx_mx_solaorderentry_sail_v1_21.end_of_transmission.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Reply
  if message_type == "AE" then
    return tmx_mx_solaorderentry_sail_v1_21.order_reply.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Error Notice
  if message_type == "ER" then
    return tmx_mx_solaorderentry_sail_v1_21.error_notice.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bulk Quote Data Acknowledgement
  if message_type == "KD" then
    return tmx_mx_solaorderentry_sail_v1_21.bulk_quote_data_acknowledgement.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Acknowledgement
  if message_type == "KE" then
    return tmx_mx_solaorderentry_sail_v1_21.order_acknowledgement.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Global Cancellation Confirmation
  if message_type == "KG" then
    return tmx_mx_solaorderentry_sail_v1_21.global_cancellation_confirmation.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Modification Acknowledgement
  if message_type == "KM" then
    return tmx_mx_solaorderentry_sail_v1_21.order_modification_acknowledgement.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Strategy Instrument Acknowledgement
  if message_type == "KN" then
    return tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument_acknowledgement.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Standard Acknowledgement
  if message_type == "KO" then
    return tmx_mx_solaorderentry_sail_v1_21.standard_acknowledgement.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancellation Acknowledgement
  if message_type == "KZ" then
    return tmx_mx_solaorderentry_sail_v1_21.order_cancellation_acknowledgement.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bulk Quote Acknowledgement
  if message_type == "LA" then
    return tmx_mx_solaorderentry_sail_v1_21.bulk_quote_acknowledgement.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bulk Command Acknowledgement
  if message_type == "LB" then
    return tmx_mx_solaorderentry_sail_v1_21.bulk_command_acknowledgement.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Risk Limits Usage
  if message_type == "MN" then
    return tmx_mx_solaorderentry_sail_v1_21.risk_limits_usage.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Excluded Instrument Notice
  if message_type == "NE" then
    return tmx_mx_solaorderentry_sail_v1_21.excluded_instrument_notice.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Group State Change
  if message_type == "NG" then
    return tmx_mx_solaorderentry_sail_v1_21.group_state_change.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument State Change
  if message_type == "NI" then
    return tmx_mx_solaorderentry_sail_v1_21.instrument_state_change.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Leg Execution Notice
  if message_type == "NL" then
    return tmx_mx_solaorderentry_sail_v1_21.leg_execution_notice.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Overstepped Order Or Quote Notice
  if message_type == "NO" then
    return tmx_mx_solaorderentry_sail_v1_21.overstepped_order_or_quote_notice.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancellation Of All Quotes Notice
  if message_type == "NP" then
    return tmx_mx_solaorderentry_sail_v1_21.cancellation_of_all_quotes_notice.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Notice
  if message_type == "NT" then
    return tmx_mx_solaorderentry_sail_v1_21.execution_notice.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Cancellation Notice
  if message_type == "NX" then
    return tmx_mx_solaorderentry_sail_v1_21.execution_cancellation_notice.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Leg Execution Cancellation Notice
  if message_type == "NY" then
    return tmx_mx_solaorderentry_sail_v1_21.leg_execution_cancellation_notice.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancellation Notice By Mod Or System
  if message_type == "NZ" then
    return tmx_mx_solaorderentry_sail_v1_21.order_cancellation_notice_by_mod_or_system.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Request For Quote With Side Acknowledgement
  if message_type == "QW" then
    return tmx_mx_solaorderentry_sail_v1_21.request_for_quote_with_side_acknowledgement.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Exchange Packet
tmx_mx_solaorderentry_sail_v1_21.exchange_packet = {}

-- Verify required size of Tcp packet
tmx_mx_solaorderentry_sail_v1_21.exchange_packet.requiredsize = function(buffer)
  return buffer:len() >= tmx_mx_solaorderentry_sail_v1_21.message_length.size + tmx_mx_solaorderentry_sail_v1_21.message_type.size
end

-- Dissect Exchange Packet
tmx_mx_solaorderentry_sail_v1_21.exchange_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Message Length: Endian
  index, message_length = tmx_mx_solaorderentry_sail_v1_21.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: X
  index, message_type = tmx_mx_solaorderentry_sail_v1_21.message_type.dissect(buffer, index, packet, parent)

  -- Exchange Message: Runtime Type with 30 branches
  index = tmx_mx_solaorderentry_sail_v1_21.exchange_message.dissect(buffer, index, packet, parent, message_type)

  -- End Of Text: Binary
  index, end_of_text = tmx_mx_solaorderentry_sail_v1_21.end_of_text.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Alignment Padding
  local alignment_padding = nil

  local alignment_padding_exists = (index % 4 ~= 0)

  if alignment_padding_exists then
    index, alignment_padding = tmx_mx_solaorderentry_sail_v1_21.alignment_padding.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Incoming Messages Header
tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header = {}

-- Size: Incoming Messages Header
tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.size =
  tmx_mx_solaorderentry_sail_v1_21.user_timestamp_local_hhmmss.size + 
  tmx_mx_solaorderentry_sail_v1_21.trader_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.user_sequence_id.size

-- Display: Incoming Messages Header
tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Incoming Messages Header
tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Timestamp Local Hhmmss: Time
  index, user_timestamp_local_hhmmss = tmx_mx_solaorderentry_sail_v1_21.user_timestamp_local_hhmmss.dissect(buffer, index, packet, parent)

  -- Trader Id: Trader ID
  index, trader_id = tmx_mx_solaorderentry_sail_v1_21.trader_id.dissect(buffer, index, packet, parent)

  -- User Sequence Id: User Sequence ID
  index, user_sequence_id = tmx_mx_solaorderentry_sail_v1_21.user_sequence_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Incoming Messages Header
tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.incoming_messages_header, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancellation
tmx_mx_solaorderentry_sail_v1_21.order_cancellation = {}

-- Size: Order Cancellation
tmx_mx_solaorderentry_sail_v1_21.order_cancellation.size =
  tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.size + 
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.cancelled_order_id.size

-- Display: Order Cancellation
tmx_mx_solaorderentry_sail_v1_21.order_cancellation.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancellation
tmx_mx_solaorderentry_sail_v1_21.order_cancellation.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Incoming Messages Header: Struct of 3 fields
  index, incoming_messages_header = tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  -- Cancelled Order Id: Order ID
  index, cancelled_order_id = tmx_mx_solaorderentry_sail_v1_21.cancelled_order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancellation
tmx_mx_solaorderentry_sail_v1_21.order_cancellation.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.order_cancellation, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.order_cancellation.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.order_cancellation.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.order_cancellation.fields(buffer, offset, packet, parent)
  end
end

-- Request For Quote
tmx_mx_solaorderentry_sail_v1_21.request_for_quote = {}

-- Size: Request For Quote
tmx_mx_solaorderentry_sail_v1_21.request_for_quote.size =
  tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.size + 
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity.size

-- Display: Request For Quote
tmx_mx_solaorderentry_sail_v1_21.request_for_quote.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request For Quote
tmx_mx_solaorderentry_sail_v1_21.request_for_quote.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Incoming Messages Header: Struct of 3 fields
  index, incoming_messages_header = tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity
  index, quantity = tmx_mx_solaorderentry_sail_v1_21.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Request For Quote
tmx_mx_solaorderentry_sail_v1_21.request_for_quote.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.request_for_quote, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.request_for_quote.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.request_for_quote.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.request_for_quote.fields(buffer, offset, packet, parent)
  end
end

-- Bulk Quote Participant Bqp Protection Subscription
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_participant_bqp_protection_subscription = {}

-- Size: Bulk Quote Participant Bqp Protection Subscription
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_participant_bqp_protection_subscription.size =
  tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.size + 
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.protection_type_advanced_protection_advanced_protection_disabled.size

-- Display: Bulk Quote Participant Bqp Protection Subscription
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_participant_bqp_protection_subscription.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote Participant Bqp Protection Subscription
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_participant_bqp_protection_subscription.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Incoming Messages Header: Struct of 3 fields
  index, incoming_messages_header = tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Protection Type Advanced Protection Advanced Protection Disabled: Protection Type
  index, protection_type_advanced_protection_advanced_protection_disabled = tmx_mx_solaorderentry_sail_v1_21.protection_type_advanced_protection_advanced_protection_disabled.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bulk Quote Participant Bqp Protection Subscription
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_participant_bqp_protection_subscription.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_participant_bqp_protection_subscription, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_participant_bqp_protection_subscription.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_participant_bqp_protection_subscription.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.bulk_quote_participant_bqp_protection_subscription.fields(buffer, offset, packet, parent)
  end
end

-- Sail Request For Quote With Side
tmx_mx_solaorderentry_sail_v1_21.sail_request_for_quote_with_side = {}

-- Size: Sail Request For Quote With Side
tmx_mx_solaorderentry_sail_v1_21.sail_request_for_quote_with_side.size =
  tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.size + 
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity.size + 
  tmx_mx_solaorderentry_sail_v1_21.market_side.size

-- Display: Sail Request For Quote With Side
tmx_mx_solaorderentry_sail_v1_21.sail_request_for_quote_with_side.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sail Request For Quote With Side
tmx_mx_solaorderentry_sail_v1_21.sail_request_for_quote_with_side.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Incoming Messages Header: Struct of 3 fields
  index, incoming_messages_header = tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity
  index, quantity = tmx_mx_solaorderentry_sail_v1_21.quantity.dissect(buffer, index, packet, parent)

  -- Market Side: MarketSide
  index, market_side = tmx_mx_solaorderentry_sail_v1_21.market_side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sail Request For Quote With Side
tmx_mx_solaorderentry_sail_v1_21.sail_request_for_quote_with_side.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.sail_request_for_quote_with_side, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.sail_request_for_quote_with_side.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.sail_request_for_quote_with_side.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.sail_request_for_quote_with_side.fields(buffer, offset, packet, parent)
  end
end

-- Bulk Quote Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_occurrence = {}

-- Size: Bulk Quote Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_occurrence.size =
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.verb_side.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity_sign_or.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity.size + 
  tmx_mx_solaorderentry_sail_v1_21.price.size

-- Display: Bulk Quote Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_occurrence.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_occurrence.fields = function(buffer, offset, packet, parent, bulk_quote_occurrence_index)
  local index = offset

  -- Implicit Bulk Quote Occurrence Index
  if bulk_quote_occurrence_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_occurrence_index, bulk_quote_occurrence_index)
    iteration:set_generated()
  end

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = tmx_mx_solaorderentry_sail_v1_21.verb_side.dissect(buffer, index, packet, parent)

  -- Quantity Sign Or: Quantity Sign
  index, quantity_sign_or = tmx_mx_solaorderentry_sail_v1_21.quantity_sign_or.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity
  index, quantity = tmx_mx_solaorderentry_sail_v1_21.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = tmx_mx_solaorderentry_sail_v1_21.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bulk Quote Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_occurrence.dissect = function(buffer, offset, packet, parent, bulk_quote_occurrence_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_occurrence, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_occurrence.fields(buffer, offset, packet, parent, bulk_quote_occurrence_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_occurrence.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.bulk_quote_occurrence.fields(buffer, offset, packet, parent, bulk_quote_occurrence_index)
  end
end

-- Bulk Quote
tmx_mx_solaorderentry_sail_v1_21.bulk_quote = {}

-- Calculate size of: Bulk Quote
tmx_mx_solaorderentry_sail_v1_21.bulk_quote.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.group.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.quote_identifier_on_this_group.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.number_of_quotes.size

  -- Calculate field size from count
  local bulk_quote_occurrence_count = buffer(offset + index - 3, 3):string()
  index = index + bulk_quote_occurrence_count * 26

  return index
end

-- Display: Bulk Quote
tmx_mx_solaorderentry_sail_v1_21.bulk_quote.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote
tmx_mx_solaorderentry_sail_v1_21.bulk_quote.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Incoming Messages Header: Struct of 3 fields
  index, incoming_messages_header = tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Quote Identifier On This Group: Order ID
  index, quote_identifier_on_this_group = tmx_mx_solaorderentry_sail_v1_21.quote_identifier_on_this_group.dissect(buffer, index, packet, parent)

  -- Number Of Quotes: Numeric (3)
  index, number_of_quotes = tmx_mx_solaorderentry_sail_v1_21.number_of_quotes.dissect(buffer, index, packet, parent)

  -- Repeating: Bulk Quote Occurrence
  for bulk_quote_occurrence_index = 1, number_of_quotes do
    index, bulk_quote_occurrence = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_occurrence.dissect(buffer, index, packet, parent, bulk_quote_occurrence_index)
  end

  return index
end

-- Dissect: Bulk Quote
tmx_mx_solaorderentry_sail_v1_21.bulk_quote.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.bulk_quote.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.bulk_quote.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.bulk_quote.fields(buffer, offset, packet, parent)
  end
end

-- Selling Owner Data
tmx_mx_solaorderentry_sail_v1_21.selling_owner_data = {}

-- Size: Selling Owner Data
tmx_mx_solaorderentry_sail_v1_21.selling_owner_data.size =
  tmx_mx_solaorderentry_sail_v1_21.memo.size

-- Display: Selling Owner Data
tmx_mx_solaorderentry_sail_v1_21.selling_owner_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Selling Owner Data
tmx_mx_solaorderentry_sail_v1_21.selling_owner_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Memo: Memo
  index, memo = tmx_mx_solaorderentry_sail_v1_21.memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Selling Owner Data
tmx_mx_solaorderentry_sail_v1_21.selling_owner_data.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.selling_owner_data, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.selling_owner_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.selling_owner_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.selling_owner_data.fields(buffer, offset, packet, parent)
  end
end

-- Buying Owner Data
tmx_mx_solaorderentry_sail_v1_21.buying_owner_data = {}

-- Size: Buying Owner Data
tmx_mx_solaorderentry_sail_v1_21.buying_owner_data.size =
  tmx_mx_solaorderentry_sail_v1_21.memo.size

-- Display: Buying Owner Data
tmx_mx_solaorderentry_sail_v1_21.buying_owner_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Buying Owner Data
tmx_mx_solaorderentry_sail_v1_21.buying_owner_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Memo: Memo
  index, memo = tmx_mx_solaorderentry_sail_v1_21.memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Buying Owner Data
tmx_mx_solaorderentry_sail_v1_21.buying_owner_data.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.buying_owner_data, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.buying_owner_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.buying_owner_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.buying_owner_data.fields(buffer, offset, packet, parent)
  end
end

-- Selling Clearing Data
tmx_mx_solaorderentry_sail_v1_21.selling_clearing_data = {}

-- Size: Selling Clearing Data
tmx_mx_solaorderentry_sail_v1_21.selling_clearing_data.size =
  tmx_mx_solaorderentry_sail_v1_21.clearing_instruction.size + 
  tmx_mx_solaorderentry_sail_v1_21.account_type.size + 
  tmx_mx_solaorderentry_sail_v1_21.open_close.size + 
  tmx_mx_solaorderentry_sail_v1_21.hedge_spec.size + 
  tmx_mx_solaorderentry_sail_v1_21.filler_must_be_blank_x_5.size

-- Display: Selling Clearing Data
tmx_mx_solaorderentry_sail_v1_21.selling_clearing_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Selling Clearing Data
tmx_mx_solaorderentry_sail_v1_21.selling_clearing_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Clearing Instruction: Clearing Instruction
  index, clearing_instruction = tmx_mx_solaorderentry_sail_v1_21.clearing_instruction.dissect(buffer, index, packet, parent)

  -- Account Type: AccountType
  index, account_type = tmx_mx_solaorderentry_sail_v1_21.account_type.dissect(buffer, index, packet, parent)

  -- Open Close: Open/Close
  index, open_close = tmx_mx_solaorderentry_sail_v1_21.open_close.dissect(buffer, index, packet, parent)

  -- Hedge Spec: Hedge/Spec
  index, hedge_spec = tmx_mx_solaorderentry_sail_v1_21.hedge_spec.dissect(buffer, index, packet, parent)

  -- Filler Must Be Blank X 5: String (5)
  index, filler_must_be_blank_x_5 = tmx_mx_solaorderentry_sail_v1_21.filler_must_be_blank_x_5.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Selling Clearing Data
tmx_mx_solaorderentry_sail_v1_21.selling_clearing_data.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.selling_clearing_data, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.selling_clearing_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.selling_clearing_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.selling_clearing_data.fields(buffer, offset, packet, parent)
  end
end

-- Buying Clearing Data
tmx_mx_solaorderentry_sail_v1_21.buying_clearing_data = {}

-- Size: Buying Clearing Data
tmx_mx_solaorderentry_sail_v1_21.buying_clearing_data.size =
  tmx_mx_solaorderentry_sail_v1_21.clearing_instruction.size + 
  tmx_mx_solaorderentry_sail_v1_21.account_type.size + 
  tmx_mx_solaorderentry_sail_v1_21.open_close.size + 
  tmx_mx_solaorderentry_sail_v1_21.hedge_spec.size + 
  tmx_mx_solaorderentry_sail_v1_21.filler_must_be_blank_x_5.size

-- Display: Buying Clearing Data
tmx_mx_solaorderentry_sail_v1_21.buying_clearing_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Buying Clearing Data
tmx_mx_solaorderentry_sail_v1_21.buying_clearing_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Clearing Instruction: Clearing Instruction
  index, clearing_instruction = tmx_mx_solaorderentry_sail_v1_21.clearing_instruction.dissect(buffer, index, packet, parent)

  -- Account Type: AccountType
  index, account_type = tmx_mx_solaorderentry_sail_v1_21.account_type.dissect(buffer, index, packet, parent)

  -- Open Close: Open/Close
  index, open_close = tmx_mx_solaorderentry_sail_v1_21.open_close.dissect(buffer, index, packet, parent)

  -- Hedge Spec: Hedge/Spec
  index, hedge_spec = tmx_mx_solaorderentry_sail_v1_21.hedge_spec.dissect(buffer, index, packet, parent)

  -- Filler Must Be Blank X 5: String (5)
  index, filler_must_be_blank_x_5 = tmx_mx_solaorderentry_sail_v1_21.filler_must_be_blank_x_5.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Buying Clearing Data
tmx_mx_solaorderentry_sail_v1_21.buying_clearing_data.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.buying_clearing_data, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.buying_clearing_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.buying_clearing_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.buying_clearing_data.fields(buffer, offset, packet, parent)
  end
end

-- Cross Entry
tmx_mx_solaorderentry_sail_v1_21.cross_entry = {}

-- Size: Cross Entry
tmx_mx_solaorderentry_sail_v1_21.cross_entry.size =
  tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.size + 
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.filler_x_1.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity.size + 
  tmx_mx_solaorderentry_sail_v1_21.price.size + 
  tmx_mx_solaorderentry_sail_v1_21.buying_clearing_data.size + 
  tmx_mx_solaorderentry_sail_v1_21.selling_clearing_data.size + 
  tmx_mx_solaorderentry_sail_v1_21.buying_owner_data.size + 
  tmx_mx_solaorderentry_sail_v1_21.selling_owner_data.size + 
  tmx_mx_solaorderentry_sail_v1_21.filler_x_20.size + 
  tmx_mx_solaorderentry_sail_v1_21.filler_x_20.size

-- Display: Cross Entry
tmx_mx_solaorderentry_sail_v1_21.cross_entry.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cross Entry
tmx_mx_solaorderentry_sail_v1_21.cross_entry.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Incoming Messages Header: Struct of 3 fields
  index, incoming_messages_header = tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  -- Filler X 1: String (1)
  index, filler_x_1 = tmx_mx_solaorderentry_sail_v1_21.filler_x_1.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity
  index, quantity = tmx_mx_solaorderentry_sail_v1_21.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = tmx_mx_solaorderentry_sail_v1_21.price.dissect(buffer, index, packet, parent)

  -- Buying Clearing Data: Struct of 5 fields
  index, buying_clearing_data = tmx_mx_solaorderentry_sail_v1_21.buying_clearing_data.dissect(buffer, index, packet, parent)

  -- Selling Clearing Data: Struct of 5 fields
  index, selling_clearing_data = tmx_mx_solaorderentry_sail_v1_21.selling_clearing_data.dissect(buffer, index, packet, parent)

  -- Buying Owner Data: Struct of 1 fields
  index, buying_owner_data = tmx_mx_solaorderentry_sail_v1_21.buying_owner_data.dissect(buffer, index, packet, parent)

  -- Selling Owner Data: Struct of 1 fields
  index, selling_owner_data = tmx_mx_solaorderentry_sail_v1_21.selling_owner_data.dissect(buffer, index, packet, parent)

  -- Filler X 20: String (20)
  index, filler_x_20 = tmx_mx_solaorderentry_sail_v1_21.filler_x_20.dissect(buffer, index, packet, parent)

  -- Filler X 20: String (20)
  index, filler_x_20 = tmx_mx_solaorderentry_sail_v1_21.filler_x_20.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Entry
tmx_mx_solaorderentry_sail_v1_21.cross_entry.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.cross_entry, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.cross_entry.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.cross_entry.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.cross_entry.fields(buffer, offset, packet, parent)
  end
end

-- New Strategy Instrument Leg Definition Repeating Block
tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument_leg_definition_repeating_block = {}

-- Size: New Strategy Instrument Leg Definition Repeating Block
tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument_leg_definition_repeating_block.size =
  tmx_mx_solaorderentry_sail_v1_21.leg_group.size + 
  tmx_mx_solaorderentry_sail_v1_21.leg_instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.leg_verb.size + 
  tmx_mx_solaorderentry_sail_v1_21.filler_x_1.size + 
  tmx_mx_solaorderentry_sail_v1_21.leg_quantity_ratio.size

-- Display: New Strategy Instrument Leg Definition Repeating Block
tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument_leg_definition_repeating_block.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Strategy Instrument Leg Definition Repeating Block
tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument_leg_definition_repeating_block.fields = function(buffer, offset, packet, parent, new_strategy_instrument_leg_definition_repeating_block_index)
  local index = offset

  -- Implicit New Strategy Instrument Leg Definition Repeating Block Index
  if new_strategy_instrument_leg_definition_repeating_block_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.new_strategy_instrument_leg_definition_repeating_block_index, new_strategy_instrument_leg_definition_repeating_block_index)
    iteration:set_generated()
  end

  -- Leg Group: Group ID
  index, leg_group = tmx_mx_solaorderentry_sail_v1_21.leg_group.dissect(buffer, index, packet, parent)

  -- Leg Instrument: Instrument ID
  index, leg_instrument = tmx_mx_solaorderentry_sail_v1_21.leg_instrument.dissect(buffer, index, packet, parent)

  -- Leg Verb: Verb
  index, leg_verb = tmx_mx_solaorderentry_sail_v1_21.leg_verb.dissect(buffer, index, packet, parent)

  -- Filler X 1: String (1)
  index, filler_x_1 = tmx_mx_solaorderentry_sail_v1_21.filler_x_1.dissect(buffer, index, packet, parent)

  -- Leg Quantity Ratio: Quantity
  index, leg_quantity_ratio = tmx_mx_solaorderentry_sail_v1_21.leg_quantity_ratio.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Strategy Instrument Leg Definition Repeating Block
tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument_leg_definition_repeating_block.dissect = function(buffer, offset, packet, parent, new_strategy_instrument_leg_definition_repeating_block_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.new_strategy_instrument_leg_definition_repeating_block, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument_leg_definition_repeating_block.fields(buffer, offset, packet, parent, new_strategy_instrument_leg_definition_repeating_block_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument_leg_definition_repeating_block.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument_leg_definition_repeating_block.fields(buffer, offset, packet, parent, new_strategy_instrument_leg_definition_repeating_block_index)
  end
end

-- New Strategy Instrument
tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument = {}

-- Calculate size of: New Strategy Instrument
tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.number_of_legs.size

  -- Calculate field size from count
  local new_strategy_instrument_leg_definition_repeating_block_count = buffer(offset + index - 2, 2):string()
  index = index + new_strategy_instrument_leg_definition_repeating_block_count * 16

  return index
end

-- Display: New Strategy Instrument
tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Strategy Instrument
tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Incoming Messages Header: Struct of 3 fields
  index, incoming_messages_header = tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.dissect(buffer, index, packet, parent)

  -- Number Of Legs: Numeric (2)
  index, number_of_legs = tmx_mx_solaorderentry_sail_v1_21.number_of_legs.dissect(buffer, index, packet, parent)

  -- Repeating: New Strategy Instrument Leg Definition Repeating Block
  for new_strategy_instrument_leg_definition_repeating_block_index = 1, number_of_legs do
    index, new_strategy_instrument_leg_definition_repeating_block = tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument_leg_definition_repeating_block.dissect(buffer, index, packet, parent, new_strategy_instrument_leg_definition_repeating_block_index)
  end

  return index
end

-- Dissect: New Strategy Instrument
tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.new_strategy_instrument, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument.fields(buffer, offset, packet, parent)
  end
end

-- Order Modification
tmx_mx_solaorderentry_sail_v1_21.order_modification = {}

-- Size: Order Modification
tmx_mx_solaorderentry_sail_v1_21.order_modification.size =
  tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.size + 
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.price_type.size + 
  tmx_mx_solaorderentry_sail_v1_21.verb_side.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity_sign.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity.size + 
  tmx_mx_solaorderentry_sail_v1_21.price.size + 
  tmx_mx_solaorderentry_sail_v1_21.special_price_term.size + 
  tmx_mx_solaorderentry_sail_v1_21.additional_price.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity_term.size + 
  tmx_mx_solaorderentry_sail_v1_21.additional_quantity.size + 
  tmx_mx_solaorderentry_sail_v1_21.duration_type.size + 
  tmx_mx_solaorderentry_sail_v1_21.gtd_date.size + 
  tmx_mx_solaorderentry_sail_v1_21.filler_x_4.size + 
  tmx_mx_solaorderentry_sail_v1_21.filler_x_1.size + 
  tmx_mx_solaorderentry_sail_v1_21.modified_order_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.clearing_data.size + 
  tmx_mx_solaorderentry_sail_v1_21.owner_data.size + 
  tmx_mx_solaorderentry_sail_v1_21.anti_wash_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.anti_wash_instruction.size + 
  tmx_mx_solaorderentry_sail_v1_21.filler_x_20.size

-- Display: Order Modification
tmx_mx_solaorderentry_sail_v1_21.order_modification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modification
tmx_mx_solaorderentry_sail_v1_21.order_modification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Incoming Messages Header: Struct of 3 fields
  index, incoming_messages_header = tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  -- Price Type: Price Type
  index, price_type = tmx_mx_solaorderentry_sail_v1_21.price_type.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = tmx_mx_solaorderentry_sail_v1_21.verb_side.dissect(buffer, index, packet, parent)

  -- Quantity Sign: Quantity Sign
  index, quantity_sign = tmx_mx_solaorderentry_sail_v1_21.quantity_sign.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity
  index, quantity = tmx_mx_solaorderentry_sail_v1_21.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = tmx_mx_solaorderentry_sail_v1_21.price.dissect(buffer, index, packet, parent)

  -- Special Price Term: Special Price Term
  index, special_price_term = tmx_mx_solaorderentry_sail_v1_21.special_price_term.dissect(buffer, index, packet, parent)

  -- Additional Price: Additional Price
  index, additional_price = tmx_mx_solaorderentry_sail_v1_21.additional_price.dissect(buffer, index, packet, parent)

  -- Quantity Term: Quantity Term
  index, quantity_term = tmx_mx_solaorderentry_sail_v1_21.quantity_term.dissect(buffer, index, packet, parent)

  -- Additional Quantity: Additional Quantity
  index, additional_quantity = tmx_mx_solaorderentry_sail_v1_21.additional_quantity.dissect(buffer, index, packet, parent)

  -- Duration Type: Duration Type
  index, duration_type = tmx_mx_solaorderentry_sail_v1_21.duration_type.dissect(buffer, index, packet, parent)

  -- Gtd Date: Date
  index, gtd_date = tmx_mx_solaorderentry_sail_v1_21.gtd_date.dissect(buffer, index, packet, parent)

  -- Filler X 4: String (4)
  index, filler_x_4 = tmx_mx_solaorderentry_sail_v1_21.filler_x_4.dissect(buffer, index, packet, parent)

  -- Filler X 1: String (1)
  index, filler_x_1 = tmx_mx_solaorderentry_sail_v1_21.filler_x_1.dissect(buffer, index, packet, parent)

  -- Modified Order Id: Order ID
  index, modified_order_id = tmx_mx_solaorderentry_sail_v1_21.modified_order_id.dissect(buffer, index, packet, parent)

  -- Clearing Data: Struct of 5 fields
  index, clearing_data = tmx_mx_solaorderentry_sail_v1_21.clearing_data.dissect(buffer, index, packet, parent)

  -- Owner Data: Struct of 1 fields
  index, owner_data = tmx_mx_solaorderentry_sail_v1_21.owner_data.dissect(buffer, index, packet, parent)

  -- Anti Wash Id: AntiWashId
  index, anti_wash_id = tmx_mx_solaorderentry_sail_v1_21.anti_wash_id.dissect(buffer, index, packet, parent)

  -- Anti Wash Instruction: AntiWashInstruction
  index, anti_wash_instruction = tmx_mx_solaorderentry_sail_v1_21.anti_wash_instruction.dissect(buffer, index, packet, parent)

  -- Filler X 20: String (20)
  index, filler_x_20 = tmx_mx_solaorderentry_sail_v1_21.filler_x_20.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modification
tmx_mx_solaorderentry_sail_v1_21.order_modification.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.order_modification, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.order_modification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.order_modification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.order_modification.fields(buffer, offset, packet, parent)
  end
end

-- Order Entry
tmx_mx_solaorderentry_sail_v1_21.order_entry = {}

-- Size: Order Entry
tmx_mx_solaorderentry_sail_v1_21.order_entry.size =
  tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.size + 
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.price_type.size + 
  tmx_mx_solaorderentry_sail_v1_21.verb_side.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity.size + 
  tmx_mx_solaorderentry_sail_v1_21.price.size + 
  tmx_mx_solaorderentry_sail_v1_21.special_price_term.size + 
  tmx_mx_solaorderentry_sail_v1_21.additional_price.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity_term.size + 
  tmx_mx_solaorderentry_sail_v1_21.additional_quantity.size + 
  tmx_mx_solaorderentry_sail_v1_21.duration_type.size + 
  tmx_mx_solaorderentry_sail_v1_21.gtd_date.size + 
  tmx_mx_solaorderentry_sail_v1_21.executing_participant.size + 
  tmx_mx_solaorderentry_sail_v1_21.filler_x_1.size + 
  tmx_mx_solaorderentry_sail_v1_21.clearing_data.size + 
  tmx_mx_solaorderentry_sail_v1_21.owner_data.size + 
  tmx_mx_solaorderentry_sail_v1_21.anti_wash_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.anti_wash_instruction.size + 
  tmx_mx_solaorderentry_sail_v1_21.filler_x_20.size

-- Display: Order Entry
tmx_mx_solaorderentry_sail_v1_21.order_entry.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Entry
tmx_mx_solaorderentry_sail_v1_21.order_entry.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Incoming Messages Header: Struct of 3 fields
  index, incoming_messages_header = tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  -- Price Type: Price Type
  index, price_type = tmx_mx_solaorderentry_sail_v1_21.price_type.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = tmx_mx_solaorderentry_sail_v1_21.verb_side.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity
  index, quantity = tmx_mx_solaorderentry_sail_v1_21.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = tmx_mx_solaorderentry_sail_v1_21.price.dissect(buffer, index, packet, parent)

  -- Special Price Term: Special Price Term
  index, special_price_term = tmx_mx_solaorderentry_sail_v1_21.special_price_term.dissect(buffer, index, packet, parent)

  -- Additional Price: Additional Price
  index, additional_price = tmx_mx_solaorderentry_sail_v1_21.additional_price.dissect(buffer, index, packet, parent)

  -- Quantity Term: Quantity Term
  index, quantity_term = tmx_mx_solaorderentry_sail_v1_21.quantity_term.dissect(buffer, index, packet, parent)

  -- Additional Quantity: Additional Quantity
  index, additional_quantity = tmx_mx_solaorderentry_sail_v1_21.additional_quantity.dissect(buffer, index, packet, parent)

  -- Duration Type: Duration Type
  index, duration_type = tmx_mx_solaorderentry_sail_v1_21.duration_type.dissect(buffer, index, packet, parent)

  -- Gtd Date: Date
  index, gtd_date = tmx_mx_solaorderentry_sail_v1_21.gtd_date.dissect(buffer, index, packet, parent)

  -- Executing Participant: Firm ID
  index, executing_participant = tmx_mx_solaorderentry_sail_v1_21.executing_participant.dissect(buffer, index, packet, parent)

  -- Filler X 1: String (1)
  index, filler_x_1 = tmx_mx_solaorderentry_sail_v1_21.filler_x_1.dissect(buffer, index, packet, parent)

  -- Clearing Data: Struct of 5 fields
  index, clearing_data = tmx_mx_solaorderentry_sail_v1_21.clearing_data.dissect(buffer, index, packet, parent)

  -- Owner Data: Struct of 1 fields
  index, owner_data = tmx_mx_solaorderentry_sail_v1_21.owner_data.dissect(buffer, index, packet, parent)

  -- Anti Wash Id: AntiWashId
  index, anti_wash_id = tmx_mx_solaorderentry_sail_v1_21.anti_wash_id.dissect(buffer, index, packet, parent)

  -- Anti Wash Instruction: AntiWashInstruction
  index, anti_wash_instruction = tmx_mx_solaorderentry_sail_v1_21.anti_wash_instruction.dissect(buffer, index, packet, parent)

  -- Filler X 20: String (20)
  index, filler_x_20 = tmx_mx_solaorderentry_sail_v1_21.filler_x_20.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Entry
tmx_mx_solaorderentry_sail_v1_21.order_entry.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.order_entry, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.order_entry.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.order_entry.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.order_entry.fields(buffer, offset, packet, parent)
  end
end

-- Set Global Risk Limits
tmx_mx_solaorderentry_sail_v1_21.set_global_risk_limits = {}

-- Size: Set Global Risk Limits
tmx_mx_solaorderentry_sail_v1_21.set_global_risk_limits.size =
  tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.size + 
  tmx_mx_solaorderentry_sail_v1_21.global_net_exposure_action.size + 
  tmx_mx_solaorderentry_sail_v1_21.default_net_exposure_action.size + 
  tmx_mx_solaorderentry_sail_v1_21.default_long_exposure_action.size + 
  tmx_mx_solaorderentry_sail_v1_21.default_short_exposure_action.size + 
  tmx_mx_solaorderentry_sail_v1_21.default_net_position_action.size + 
  tmx_mx_solaorderentry_sail_v1_21.default_long_position_action.size + 
  tmx_mx_solaorderentry_sail_v1_21.default_short_position_action.size + 
  tmx_mx_solaorderentry_sail_v1_21.global_net_exposure_limit.size + 
  tmx_mx_solaorderentry_sail_v1_21.default_maximum_order_quantity.size + 
  tmx_mx_solaorderentry_sail_v1_21.default_net_exposure_limit.size + 
  tmx_mx_solaorderentry_sail_v1_21.default_long_exposure_limit.size + 
  tmx_mx_solaorderentry_sail_v1_21.default_short_exposure_limit.size + 
  tmx_mx_solaorderentry_sail_v1_21.default_net_position_limit.size + 
  tmx_mx_solaorderentry_sail_v1_21.default_long_position_limit.size + 
  tmx_mx_solaorderentry_sail_v1_21.default_short_position_limit.size

-- Display: Set Global Risk Limits
tmx_mx_solaorderentry_sail_v1_21.set_global_risk_limits.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Set Global Risk Limits
tmx_mx_solaorderentry_sail_v1_21.set_global_risk_limits.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Incoming Messages Header: Struct of 3 fields
  index, incoming_messages_header = tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.dissect(buffer, index, packet, parent)

  -- Global Net Exposure Action: Risk Action
  index, global_net_exposure_action = tmx_mx_solaorderentry_sail_v1_21.global_net_exposure_action.dissect(buffer, index, packet, parent)

  -- Default Net Exposure Action: Risk Action
  index, default_net_exposure_action = tmx_mx_solaorderentry_sail_v1_21.default_net_exposure_action.dissect(buffer, index, packet, parent)

  -- Default Long Exposure Action: Risk Action
  index, default_long_exposure_action = tmx_mx_solaorderentry_sail_v1_21.default_long_exposure_action.dissect(buffer, index, packet, parent)

  -- Default Short Exposure Action: Risk Action
  index, default_short_exposure_action = tmx_mx_solaorderentry_sail_v1_21.default_short_exposure_action.dissect(buffer, index, packet, parent)

  -- Default Net Position Action: Risk Action
  index, default_net_position_action = tmx_mx_solaorderentry_sail_v1_21.default_net_position_action.dissect(buffer, index, packet, parent)

  -- Default Long Position Action: Risk Action
  index, default_long_position_action = tmx_mx_solaorderentry_sail_v1_21.default_long_position_action.dissect(buffer, index, packet, parent)

  -- Default Short Position Action: Risk Action
  index, default_short_position_action = tmx_mx_solaorderentry_sail_v1_21.default_short_position_action.dissect(buffer, index, packet, parent)

  -- Global Net Exposure Limit: Price
  index, global_net_exposure_limit = tmx_mx_solaorderentry_sail_v1_21.global_net_exposure_limit.dissect(buffer, index, packet, parent)

  -- Default Maximum Order Quantity: Quantity
  index, default_maximum_order_quantity = tmx_mx_solaorderentry_sail_v1_21.default_maximum_order_quantity.dissect(buffer, index, packet, parent)

  -- Default Net Exposure Limit: Price
  index, default_net_exposure_limit = tmx_mx_solaorderentry_sail_v1_21.default_net_exposure_limit.dissect(buffer, index, packet, parent)

  -- Default Long Exposure Limit: Price
  index, default_long_exposure_limit = tmx_mx_solaorderentry_sail_v1_21.default_long_exposure_limit.dissect(buffer, index, packet, parent)

  -- Default Short Exposure Limit: Price
  index, default_short_exposure_limit = tmx_mx_solaorderentry_sail_v1_21.default_short_exposure_limit.dissect(buffer, index, packet, parent)

  -- Default Net Position Limit: Quantity
  index, default_net_position_limit = tmx_mx_solaorderentry_sail_v1_21.default_net_position_limit.dissect(buffer, index, packet, parent)

  -- Default Long Position Limit: Quantity
  index, default_long_position_limit = tmx_mx_solaorderentry_sail_v1_21.default_long_position_limit.dissect(buffer, index, packet, parent)

  -- Default Short Position Limit: Quantity
  index, default_short_position_limit = tmx_mx_solaorderentry_sail_v1_21.default_short_position_limit.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Set Global Risk Limits
tmx_mx_solaorderentry_sail_v1_21.set_global_risk_limits.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.set_global_risk_limits, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.set_global_risk_limits.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.set_global_risk_limits.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.set_global_risk_limits.fields(buffer, offset, packet, parent)
  end
end

-- Set Group Risk Limits Occurrence
tmx_mx_solaorderentry_sail_v1_21.set_group_risk_limits_occurrence = {}

-- Size: Set Group Risk Limits Occurrence
tmx_mx_solaorderentry_sail_v1_21.set_group_risk_limits_occurrence.size =
  tmx_mx_solaorderentry_sail_v1_21.trader.size + 
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.net_exposure_action.size + 
  tmx_mx_solaorderentry_sail_v1_21.long_exposure_action.size + 
  tmx_mx_solaorderentry_sail_v1_21.short_exposure_action.size + 
  tmx_mx_solaorderentry_sail_v1_21.net_position_action.size + 
  tmx_mx_solaorderentry_sail_v1_21.long_position_action.size + 
  tmx_mx_solaorderentry_sail_v1_21.short_position_action.size + 
  tmx_mx_solaorderentry_sail_v1_21.maximum_order_quantity.size + 
  tmx_mx_solaorderentry_sail_v1_21.net_position_limit.size + 
  tmx_mx_solaorderentry_sail_v1_21.long_position_limit.size + 
  tmx_mx_solaorderentry_sail_v1_21.short_position_limit.size + 
  tmx_mx_solaorderentry_sail_v1_21.net_exposure_limit.size + 
  tmx_mx_solaorderentry_sail_v1_21.long_exposure_limit.size + 
  tmx_mx_solaorderentry_sail_v1_21.short_exposure_limit.size + 
  tmx_mx_solaorderentry_sail_v1_21.filler_must_be_blank_x_2.size

-- Display: Set Group Risk Limits Occurrence
tmx_mx_solaorderentry_sail_v1_21.set_group_risk_limits_occurrence.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Set Group Risk Limits Occurrence
tmx_mx_solaorderentry_sail_v1_21.set_group_risk_limits_occurrence.fields = function(buffer, offset, packet, parent, set_group_risk_limits_occurrence_index)
  local index = offset

  -- Implicit Set Group Risk Limits Occurrence Index
  if set_group_risk_limits_occurrence_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.set_group_risk_limits_occurrence_index, set_group_risk_limits_occurrence_index)
    iteration:set_generated()
  end

  -- Trader: Short Trader ID
  index, trader = tmx_mx_solaorderentry_sail_v1_21.trader.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Net Exposure Action: Risk Action
  index, net_exposure_action = tmx_mx_solaorderentry_sail_v1_21.net_exposure_action.dissect(buffer, index, packet, parent)

  -- Long Exposure Action: Risk Action
  index, long_exposure_action = tmx_mx_solaorderentry_sail_v1_21.long_exposure_action.dissect(buffer, index, packet, parent)

  -- Short Exposure Action: Risk Action
  index, short_exposure_action = tmx_mx_solaorderentry_sail_v1_21.short_exposure_action.dissect(buffer, index, packet, parent)

  -- Net Position Action: Risk Action
  index, net_position_action = tmx_mx_solaorderentry_sail_v1_21.net_position_action.dissect(buffer, index, packet, parent)

  -- Long Position Action: Risk Action
  index, long_position_action = tmx_mx_solaorderentry_sail_v1_21.long_position_action.dissect(buffer, index, packet, parent)

  -- Short Position Action: Risk Action
  index, short_position_action = tmx_mx_solaorderentry_sail_v1_21.short_position_action.dissect(buffer, index, packet, parent)

  -- Maximum Order Quantity: Quantity
  index, maximum_order_quantity = tmx_mx_solaorderentry_sail_v1_21.maximum_order_quantity.dissect(buffer, index, packet, parent)

  -- Net Position Limit: Quantity
  index, net_position_limit = tmx_mx_solaorderentry_sail_v1_21.net_position_limit.dissect(buffer, index, packet, parent)

  -- Long Position Limit: Quantity
  index, long_position_limit = tmx_mx_solaorderentry_sail_v1_21.long_position_limit.dissect(buffer, index, packet, parent)

  -- Short Position Limit: Quantity
  index, short_position_limit = tmx_mx_solaorderentry_sail_v1_21.short_position_limit.dissect(buffer, index, packet, parent)

  -- Net Exposure Limit: Price
  index, net_exposure_limit = tmx_mx_solaorderentry_sail_v1_21.net_exposure_limit.dissect(buffer, index, packet, parent)

  -- Long Exposure Limit: Price
  index, long_exposure_limit = tmx_mx_solaorderentry_sail_v1_21.long_exposure_limit.dissect(buffer, index, packet, parent)

  -- Short Exposure Limit: Price
  index, short_exposure_limit = tmx_mx_solaorderentry_sail_v1_21.short_exposure_limit.dissect(buffer, index, packet, parent)

  -- Filler Must Be Blank X 2: String (2)
  index, filler_must_be_blank_x_2 = tmx_mx_solaorderentry_sail_v1_21.filler_must_be_blank_x_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Set Group Risk Limits Occurrence
tmx_mx_solaorderentry_sail_v1_21.set_group_risk_limits_occurrence.dissect = function(buffer, offset, packet, parent, set_group_risk_limits_occurrence_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.set_group_risk_limits_occurrence, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.set_group_risk_limits_occurrence.fields(buffer, offset, packet, parent, set_group_risk_limits_occurrence_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.set_group_risk_limits_occurrence.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.set_group_risk_limits_occurrence.fields(buffer, offset, packet, parent, set_group_risk_limits_occurrence_index)
  end
end

-- Set Group Risk Limits
tmx_mx_solaorderentry_sail_v1_21.set_group_risk_limits = {}

-- Calculate size of: Set Group Risk Limits
tmx_mx_solaorderentry_sail_v1_21.set_group_risk_limits.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.reset_all_groups.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.number_of_group_limits.size

  -- Calculate field size from count
  local set_group_risk_limits_occurrence_count = buffer(offset + index - 3, 3):string()
  index = index + set_group_risk_limits_occurrence_count * 76

  return index
end

-- Display: Set Group Risk Limits
tmx_mx_solaorderentry_sail_v1_21.set_group_risk_limits.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Set Group Risk Limits
tmx_mx_solaorderentry_sail_v1_21.set_group_risk_limits.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Incoming Messages Header: Struct of 3 fields
  index, incoming_messages_header = tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.dissect(buffer, index, packet, parent)

  -- Reset All Groups: Flag
  index, reset_all_groups = tmx_mx_solaorderentry_sail_v1_21.reset_all_groups.dissect(buffer, index, packet, parent)

  -- Number Of Group Limits: Numeric (3)
  index, number_of_group_limits = tmx_mx_solaorderentry_sail_v1_21.number_of_group_limits.dissect(buffer, index, packet, parent)

  -- Repeating: Set Group Risk Limits Occurrence
  for set_group_risk_limits_occurrence_index = 1, number_of_group_limits do
    index, set_group_risk_limits_occurrence = tmx_mx_solaorderentry_sail_v1_21.set_group_risk_limits_occurrence.dissect(buffer, index, packet, parent, set_group_risk_limits_occurrence_index)
  end

  return index
end

-- Dissect: Set Group Risk Limits
tmx_mx_solaorderentry_sail_v1_21.set_group_risk_limits.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.set_group_risk_limits, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.set_group_risk_limits.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.set_group_risk_limits.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.set_group_risk_limits.fields(buffer, offset, packet, parent)
  end
end

-- User Global Cancellation
tmx_mx_solaorderentry_sail_v1_21.user_global_cancellation = {}

-- Size: User Global Cancellation
tmx_mx_solaorderentry_sail_v1_21.user_global_cancellation.size =
  tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.size + 
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.type_of_cancellation.size + 
  tmx_mx_solaorderentry_sail_v1_21.account_type_filter.size

-- Display: User Global Cancellation
tmx_mx_solaorderentry_sail_v1_21.user_global_cancellation.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: User Global Cancellation
tmx_mx_solaorderentry_sail_v1_21.user_global_cancellation.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Incoming Messages Header: Struct of 3 fields
  index, incoming_messages_header = tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  -- Type Of Cancellation: CancellationType
  index, type_of_cancellation = tmx_mx_solaorderentry_sail_v1_21.type_of_cancellation.dissect(buffer, index, packet, parent)

  -- Account Type Filter: AccountType List
  index, account_type_filter = tmx_mx_solaorderentry_sail_v1_21.account_type_filter.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: User Global Cancellation
tmx_mx_solaorderentry_sail_v1_21.user_global_cancellation.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.user_global_cancellation, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.user_global_cancellation.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.user_global_cancellation.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.user_global_cancellation.fields(buffer, offset, packet, parent)
  end
end

-- Global Cancellation
tmx_mx_solaorderentry_sail_v1_21.global_cancellation = {}

-- Size: Global Cancellation
tmx_mx_solaorderentry_sail_v1_21.global_cancellation.size =
  tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.size + 
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.type_of_cancellation_q_quotes_only.size

-- Display: Global Cancellation
tmx_mx_solaorderentry_sail_v1_21.global_cancellation.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Global Cancellation
tmx_mx_solaorderentry_sail_v1_21.global_cancellation.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Incoming Messages Header: Struct of 3 fields
  index, incoming_messages_header = tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Type Of Cancellation Q Quotes Only: CancellationType
  index, type_of_cancellation_q_quotes_only = tmx_mx_solaorderentry_sail_v1_21.type_of_cancellation_q_quotes_only.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Global Cancellation
tmx_mx_solaorderentry_sail_v1_21.global_cancellation.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.global_cancellation, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.global_cancellation.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.global_cancellation.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.global_cancellation.fields(buffer, offset, packet, parent)
  end
end

-- Firm Risk Config Trader Team Trader
tmx_mx_solaorderentry_sail_v1_21.firm_risk_config_trader_team_trader = {}

-- Size: Firm Risk Config Trader Team Trader
tmx_mx_solaorderentry_sail_v1_21.firm_risk_config_trader_team_trader.size =
  tmx_mx_solaorderentry_sail_v1_21.trader.size

-- Display: Firm Risk Config Trader Team Trader
tmx_mx_solaorderentry_sail_v1_21.firm_risk_config_trader_team_trader.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Firm Risk Config Trader Team Trader
tmx_mx_solaorderentry_sail_v1_21.firm_risk_config_trader_team_trader.fields = function(buffer, offset, packet, parent, firm_risk_config_trader_team_trader_index)
  local index = offset

  -- Implicit Firm Risk Config Trader Team Trader Index
  if firm_risk_config_trader_team_trader_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.firm_risk_config_trader_team_trader_index, firm_risk_config_trader_team_trader_index)
    iteration:set_generated()
  end

  -- Trader: Short Trader ID
  index, trader = tmx_mx_solaorderentry_sail_v1_21.trader.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Firm Risk Config Trader Team Trader
tmx_mx_solaorderentry_sail_v1_21.firm_risk_config_trader_team_trader.dissect = function(buffer, offset, packet, parent, firm_risk_config_trader_team_trader_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.firm_risk_config_trader_team_trader, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.firm_risk_config_trader_team_trader.fields(buffer, offset, packet, parent, firm_risk_config_trader_team_trader_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.firm_risk_config_trader_team_trader.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.firm_risk_config_trader_team_trader.fields(buffer, offset, packet, parent, firm_risk_config_trader_team_trader_index)
  end
end

-- Firm Risk Config Trader Team
tmx_mx_solaorderentry_sail_v1_21.firm_risk_config_trader_team = {}

-- Calculate size of: Firm Risk Config Trader Team
tmx_mx_solaorderentry_sail_v1_21.firm_risk_config_trader_team.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solaorderentry_sail_v1_21.team_level_risk_option.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.number_of_traders_in_team.size

  -- Calculate field size from count
  local firm_risk_config_trader_team_trader_count = buffer(offset + index - 3, 3):string()
  index = index + firm_risk_config_trader_team_trader_count * 4

  return index
end

-- Display: Firm Risk Config Trader Team
tmx_mx_solaorderentry_sail_v1_21.firm_risk_config_trader_team.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Firm Risk Config Trader Team
tmx_mx_solaorderentry_sail_v1_21.firm_risk_config_trader_team.fields = function(buffer, offset, packet, parent, firm_risk_config_trader_team_index)
  local index = offset

  -- Implicit Firm Risk Config Trader Team Index
  if firm_risk_config_trader_team_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.firm_risk_config_trader_team_index, firm_risk_config_trader_team_index)
    iteration:set_generated()
  end

  -- Team Level Risk Option: Risk Netting Option
  index, team_level_risk_option = tmx_mx_solaorderentry_sail_v1_21.team_level_risk_option.dissect(buffer, index, packet, parent)

  -- Number Of Traders In Team: Numeric (3)
  index, number_of_traders_in_team = tmx_mx_solaorderentry_sail_v1_21.number_of_traders_in_team.dissect(buffer, index, packet, parent)

  -- Repeating: Firm Risk Config Trader Team Trader
  for firm_risk_config_trader_team_trader_index = 1, number_of_traders_in_team do
    index, firm_risk_config_trader_team_trader = tmx_mx_solaorderentry_sail_v1_21.firm_risk_config_trader_team_trader.dissect(buffer, index, packet, parent, firm_risk_config_trader_team_trader_index)
  end

  return index
end

-- Dissect: Firm Risk Config Trader Team
tmx_mx_solaorderentry_sail_v1_21.firm_risk_config_trader_team.dissect = function(buffer, offset, packet, parent, firm_risk_config_trader_team_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.firm_risk_config_trader_team, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.firm_risk_config_trader_team.fields(buffer, offset, packet, parent, firm_risk_config_trader_team_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.firm_risk_config_trader_team.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.firm_risk_config_trader_team.fields(buffer, offset, packet, parent, firm_risk_config_trader_team_index)
  end
end

-- Firm Risk Config
tmx_mx_solaorderentry_sail_v1_21.firm_risk_config = {}

-- Calculate size of: Firm Risk Config
tmx_mx_solaorderentry_sail_v1_21.firm_risk_config.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.firm_level_risk_option.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.number_of_trader_teams.size

  -- Calculate field size from count
  local firm_risk_config_trader_team_count = buffer(offset + index - 3, 3):string()
  for i = 1, firm_risk_config_trader_team_count do
    index = index + tmx_mx_solaorderentry_sail_v1_21.firm_risk_config_trader_team.size(buffer, offset + index)
  end
  return index
end

-- Display: Firm Risk Config
tmx_mx_solaorderentry_sail_v1_21.firm_risk_config.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Firm Risk Config
tmx_mx_solaorderentry_sail_v1_21.firm_risk_config.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Incoming Messages Header: Struct of 3 fields
  index, incoming_messages_header = tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.dissect(buffer, index, packet, parent)

  -- Firm Level Risk Option: Risk Netting Option
  index, firm_level_risk_option = tmx_mx_solaorderentry_sail_v1_21.firm_level_risk_option.dissect(buffer, index, packet, parent)

  -- Number Of Trader Teams: Numeric (3)
  index, number_of_trader_teams = tmx_mx_solaorderentry_sail_v1_21.number_of_trader_teams.dissect(buffer, index, packet, parent)

  -- Repeating: Firm Risk Config Trader Team
  for firm_risk_config_trader_team_index = 1, number_of_trader_teams do
    index, firm_risk_config_trader_team = tmx_mx_solaorderentry_sail_v1_21.firm_risk_config_trader_team.dissect(buffer, index, packet, parent, firm_risk_config_trader_team_index)
  end

  return index
end

-- Dissect: Firm Risk Config
tmx_mx_solaorderentry_sail_v1_21.firm_risk_config.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.firm_risk_config, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.firm_risk_config.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.firm_risk_config.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.firm_risk_config.fields(buffer, offset, packet, parent)
  end
end

-- Bulk Quote Data
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_data = {}

-- Size: Bulk Quote Data
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_data.size =
  tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.size + 
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.clearing_data.size + 
  tmx_mx_solaorderentry_sail_v1_21.owner_data.size + 
  tmx_mx_solaorderentry_sail_v1_21.maximum_number_trades.size + 
  tmx_mx_solaorderentry_sail_v1_21.minimum_volume.size + 
  tmx_mx_solaorderentry_sail_v1_21.filler_must_be_blank_x_2.size + 
  tmx_mx_solaorderentry_sail_v1_21.calculation_time_interval.size + 
  tmx_mx_solaorderentry_sail_v1_21.maximum_total_volume.size + 
  tmx_mx_solaorderentry_sail_v1_21.maximum_total_value.size + 
  tmx_mx_solaorderentry_sail_v1_21.delta_maximum_volume.size + 
  tmx_mx_solaorderentry_sail_v1_21.delta_maximum_value.size + 
  tmx_mx_solaorderentry_sail_v1_21.anti_wash_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.filler_x_20.size

-- Display: Bulk Quote Data
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote Data
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Incoming Messages Header: Struct of 3 fields
  index, incoming_messages_header = tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Clearing Data: Struct of 5 fields
  index, clearing_data = tmx_mx_solaorderentry_sail_v1_21.clearing_data.dissect(buffer, index, packet, parent)

  -- Owner Data: Struct of 1 fields
  index, owner_data = tmx_mx_solaorderentry_sail_v1_21.owner_data.dissect(buffer, index, packet, parent)

  -- Maximum Number Trades: Numeric (2)
  index, maximum_number_trades = tmx_mx_solaorderentry_sail_v1_21.maximum_number_trades.dissect(buffer, index, packet, parent)

  -- Minimum Volume: Quantity
  index, minimum_volume = tmx_mx_solaorderentry_sail_v1_21.minimum_volume.dissect(buffer, index, packet, parent)

  -- Filler Must Be Blank X 2: String (2)
  index, filler_must_be_blank_x_2 = tmx_mx_solaorderentry_sail_v1_21.filler_must_be_blank_x_2.dissect(buffer, index, packet, parent)

  -- Calculation Time Interval: Numeric (8)
  index, calculation_time_interval = tmx_mx_solaorderentry_sail_v1_21.calculation_time_interval.dissect(buffer, index, packet, parent)

  -- Maximum Total Volume: Quantity
  index, maximum_total_volume = tmx_mx_solaorderentry_sail_v1_21.maximum_total_volume.dissect(buffer, index, packet, parent)

  -- Maximum Total Value: Numeric (8)
  index, maximum_total_value = tmx_mx_solaorderentry_sail_v1_21.maximum_total_value.dissect(buffer, index, packet, parent)

  -- Delta Maximum Volume: Quantity
  index, delta_maximum_volume = tmx_mx_solaorderentry_sail_v1_21.delta_maximum_volume.dissect(buffer, index, packet, parent)

  -- Delta Maximum Value: Numeric (8)
  index, delta_maximum_value = tmx_mx_solaorderentry_sail_v1_21.delta_maximum_value.dissect(buffer, index, packet, parent)

  -- Anti Wash Id: AntiWashId
  index, anti_wash_id = tmx_mx_solaorderentry_sail_v1_21.anti_wash_id.dissect(buffer, index, packet, parent)

  -- Filler X 20: String (20)
  index, filler_x_20 = tmx_mx_solaorderentry_sail_v1_21.filler_x_20.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bulk Quote Data
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_data.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_data, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.bulk_quote_data.fields(buffer, offset, packet, parent)
  end
end

-- Order Request
tmx_mx_solaorderentry_sail_v1_21.order_request = {}

-- Display: Order Request
tmx_mx_solaorderentry_sail_v1_21.order_request.display = function(packet, parent, length)
  return "Order Request"
end


-- Dissect: Order Request
tmx_mx_solaorderentry_sail_v1_21.order_request.dissect = function(buffer, offset, packet, parent)
  local display = tmx_mx_solaorderentry_sail_v1_21.order_request.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- User Disconnection
tmx_mx_solaorderentry_sail_v1_21.user_disconnection = {}

-- Size: User Disconnection
tmx_mx_solaorderentry_sail_v1_21.user_disconnection.size =
  tmx_mx_solaorderentry_sail_v1_21.user_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.session_id.size

-- Display: User Disconnection
tmx_mx_solaorderentry_sail_v1_21.user_disconnection.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: User Disconnection
tmx_mx_solaorderentry_sail_v1_21.user_disconnection.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: User ID
  index, user_id = tmx_mx_solaorderentry_sail_v1_21.user_id.dissect(buffer, index, packet, parent)

  -- Session Id: Session ID
  index, session_id = tmx_mx_solaorderentry_sail_v1_21.session_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: User Disconnection
tmx_mx_solaorderentry_sail_v1_21.user_disconnection.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.user_disconnection, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.user_disconnection.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.user_disconnection.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.user_disconnection.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Response
tmx_mx_solaorderentry_sail_v1_21.heartbeat_response = {}

-- Size: Heartbeat Response
tmx_mx_solaorderentry_sail_v1_21.heartbeat_response.size =
  tmx_mx_solaorderentry_sail_v1_21.user_sequence_id_first_user_sequence_id_for_nextcurrent_heartbeat_period.size + 
  tmx_mx_solaorderentry_sail_v1_21.last_exchange_message_id_sent_to_participant.size + 
  tmx_mx_solaorderentry_sail_v1_21.user_message_timestamp_local_hhmmss.size

-- Display: Heartbeat Response
tmx_mx_solaorderentry_sail_v1_21.heartbeat_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Response
tmx_mx_solaorderentry_sail_v1_21.heartbeat_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Sequence Id First User Sequence Id For Nextcurrent Heartbeat Period: User Sequence ID
  index, user_sequence_id_first_user_sequence_id_for_nextcurrent_heartbeat_period = tmx_mx_solaorderentry_sail_v1_21.user_sequence_id_first_user_sequence_id_for_nextcurrent_heartbeat_period.dissect(buffer, index, packet, parent)

  -- Last Exchange Message Id Sent To Participant: Exchange Message ID
  index, last_exchange_message_id_sent_to_participant = tmx_mx_solaorderentry_sail_v1_21.last_exchange_message_id_sent_to_participant.dissect(buffer, index, packet, parent)

  -- User Message Timestamp Local Hhmmss: Time
  index, user_message_timestamp_local_hhmmss = tmx_mx_solaorderentry_sail_v1_21.user_message_timestamp_local_hhmmss.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Response
tmx_mx_solaorderentry_sail_v1_21.heartbeat_response.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.heartbeat_response, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.heartbeat_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.heartbeat_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.heartbeat_response.fields(buffer, offset, packet, parent)
  end
end

-- Disconnection Instruction Occurrence
tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction_occurrence = {}

-- Size: Disconnection Instruction Occurrence
tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction_occurrence.size =
  tmx_mx_solaorderentry_sail_v1_21.trader_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction_note_cancel_quotes_only_q_quotes_only.size + 
  tmx_mx_solaorderentry_sail_v1_21.active_y_on_n_off.size

-- Display: Disconnection Instruction Occurrence
tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction_occurrence.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Disconnection Instruction Occurrence
tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction_occurrence.fields = function(buffer, offset, packet, parent, disconnection_instruction_occurrence_index)
  local index = offset

  -- Implicit Disconnection Instruction Occurrence Index
  if disconnection_instruction_occurrence_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.disconnection_instruction_occurrence_index, disconnection_instruction_occurrence_index)
    iteration:set_generated()
  end

  -- Trader Id: Trader ID
  index, trader_id = tmx_mx_solaorderentry_sail_v1_21.trader_id.dissect(buffer, index, packet, parent)

  -- Disconnection Instruction Note Cancel Quotes Only Q Quotes Only: CancellationType
  index, disconnection_instruction_note_cancel_quotes_only_q_quotes_only = tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction_note_cancel_quotes_only_q_quotes_only.dissect(buffer, index, packet, parent)

  -- Active Y On N Off: Flag
  index, active_y_on_n_off = tmx_mx_solaorderentry_sail_v1_21.active_y_on_n_off.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Disconnection Instruction Occurrence
tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction_occurrence.dissect = function(buffer, offset, packet, parent, disconnection_instruction_occurrence_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.disconnection_instruction_occurrence, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction_occurrence.fields(buffer, offset, packet, parent, disconnection_instruction_occurrence_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction_occurrence.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction_occurrence.fields(buffer, offset, packet, parent, disconnection_instruction_occurrence_index)
  end
end

-- Disconnection Instruction
tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction = {}

-- Calculate size of: Disconnection Instruction
tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solaorderentry_sail_v1_21.number_of_instructions_present_in_the_message.size

  -- Calculate field size from count
  local disconnection_instruction_occurrence_count = buffer(offset + index - 2, 2):string()
  index = index + disconnection_instruction_occurrence_count * 10

  return index
end

-- Display: Disconnection Instruction
tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Disconnection Instruction
tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Instructions Present In The Message: Numeric (2)
  index, number_of_instructions_present_in_the_message = tmx_mx_solaorderentry_sail_v1_21.number_of_instructions_present_in_the_message.dissect(buffer, index, packet, parent)

  -- Repeating: Disconnection Instruction Occurrence
  for disconnection_instruction_occurrence_index = 1, number_of_instructions_present_in_the_message do
    index, disconnection_instruction_occurrence = tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction_occurrence.dissect(buffer, index, packet, parent, disconnection_instruction_occurrence_index)
  end

  return index
end

-- Dissect: Disconnection Instruction
tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.disconnection_instruction, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction.fields(buffer, offset, packet, parent)
  end
end

-- User Connection Occurrence
tmx_mx_solaorderentry_sail_v1_21.user_connection_occurrence = {}

-- Size: User Connection Occurrence
tmx_mx_solaorderentry_sail_v1_21.user_connection_occurrence.size =
  tmx_mx_solaorderentry_sail_v1_21.message_types_to_be_received.size

-- Display: User Connection Occurrence
tmx_mx_solaorderentry_sail_v1_21.user_connection_occurrence.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: User Connection Occurrence
tmx_mx_solaorderentry_sail_v1_21.user_connection_occurrence.fields = function(buffer, offset, packet, parent, user_connection_occurrence_index)
  local index = offset

  -- Implicit User Connection Occurrence Index
  if user_connection_occurrence_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.user_connection_occurrence_index, user_connection_occurrence_index)
    iteration:set_generated()
  end

  -- Message Types To Be Received: Message Type
  index, message_types_to_be_received = tmx_mx_solaorderentry_sail_v1_21.message_types_to_be_received.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: User Connection Occurrence
tmx_mx_solaorderentry_sail_v1_21.user_connection_occurrence.dissect = function(buffer, offset, packet, parent, user_connection_occurrence_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.user_connection_occurrence, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.user_connection_occurrence.fields(buffer, offset, packet, parent, user_connection_occurrence_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.user_connection_occurrence.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.user_connection_occurrence.fields(buffer, offset, packet, parent, user_connection_occurrence_index)
  end
end

-- User Connection
tmx_mx_solaorderentry_sail_v1_21.user_connection = {}

-- Calculate size of: User Connection
tmx_mx_solaorderentry_sail_v1_21.user_connection.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solaorderentry_sail_v1_21.protocol_id.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.user_id.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.password_md_5_encryption.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.session_id.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.user_message_timestamp_local_hhmmss.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.exchange_message_id.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.inactivity_interval.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.number_of_message_types_to_be_received.size

  -- Calculate field size from count
  local user_connection_occurrence_count = buffer(offset + index - 2, 2):string()
  index = index + user_connection_occurrence_count * 2

  return index
end

-- Display: User Connection
tmx_mx_solaorderentry_sail_v1_21.user_connection.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: User Connection
tmx_mx_solaorderentry_sail_v1_21.user_connection.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Protocol Id: Protocol
  index, protocol_id = tmx_mx_solaorderentry_sail_v1_21.protocol_id.dissect(buffer, index, packet, parent)

  -- User Id: User ID
  index, user_id = tmx_mx_solaorderentry_sail_v1_21.user_id.dissect(buffer, index, packet, parent)

  -- Password Md 5 Encryption: Password
  index, password_md_5_encryption = tmx_mx_solaorderentry_sail_v1_21.password_md_5_encryption.dissect(buffer, index, packet, parent)

  -- Session Id: Session ID
  index, session_id = tmx_mx_solaorderentry_sail_v1_21.session_id.dissect(buffer, index, packet, parent)

  -- User Message Timestamp Local Hhmmss: Time
  index, user_message_timestamp_local_hhmmss = tmx_mx_solaorderentry_sail_v1_21.user_message_timestamp_local_hhmmss.dissect(buffer, index, packet, parent)

  -- Exchange Message Id: Exchange Message ID
  index, exchange_message_id = tmx_mx_solaorderentry_sail_v1_21.exchange_message_id.dissect(buffer, index, packet, parent)

  -- Inactivity Interval: Inactivity Interval
  index, inactivity_interval = tmx_mx_solaorderentry_sail_v1_21.inactivity_interval.dissect(buffer, index, packet, parent)

  -- Number Of Message Types To Be Received: Numeric (2)
  index, number_of_message_types_to_be_received = tmx_mx_solaorderentry_sail_v1_21.number_of_message_types_to_be_received.dissect(buffer, index, packet, parent)

  -- Repeating: User Connection Occurrence
  for user_connection_occurrence_index = 1, number_of_message_types_to_be_received do
    index, user_connection_occurrence = tmx_mx_solaorderentry_sail_v1_21.user_connection_occurrence.dissect(buffer, index, packet, parent, user_connection_occurrence_index)
  end

  return index
end

-- Dissect: User Connection
tmx_mx_solaorderentry_sail_v1_21.user_connection.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.user_connection, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.user_connection.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.user_connection.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.user_connection.fields(buffer, offset, packet, parent)
  end
end

-- Firm Message
tmx_mx_solaorderentry_sail_v1_21.firm_message = {}

-- Dissect: Firm Message
tmx_mx_solaorderentry_sail_v1_21.firm_message.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect User Connection
  if message_type == "TC" then
    return tmx_mx_solaorderentry_sail_v1_21.user_connection.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Disconnection Instruction
  if message_type == "TA" then
    return tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Response
  if message_type == "TI" then
    return tmx_mx_solaorderentry_sail_v1_21.heartbeat_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect User Disconnection
  if message_type == "TD" then
    return tmx_mx_solaorderentry_sail_v1_21.user_disconnection.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Request
  if message_type == "AF" then
    return tmx_mx_solaorderentry_sail_v1_21.order_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bulk Quote Data
  if message_type == "BD" then
    return tmx_mx_solaorderentry_sail_v1_21.bulk_quote_data.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Firm Risk Config
  if message_type == "CR" then
    return tmx_mx_solaorderentry_sail_v1_21.firm_risk_config.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Global Cancellation
  if message_type == "GC" then
    return tmx_mx_solaorderentry_sail_v1_21.global_cancellation.dissect(buffer, offset, packet, parent)
  end
  -- Dissect User Global Cancellation
  if message_type == "GZ" then
    return tmx_mx_solaorderentry_sail_v1_21.user_global_cancellation.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Set Group Risk Limits
  if message_type == "MK" then
    return tmx_mx_solaorderentry_sail_v1_21.set_group_risk_limits.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Set Global Risk Limits
  if message_type == "ML" then
    return tmx_mx_solaorderentry_sail_v1_21.set_global_risk_limits.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Entry
  if message_type == "OE" then
    return tmx_mx_solaorderentry_sail_v1_21.order_entry.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Modification
  if message_type == "OM" then
    return tmx_mx_solaorderentry_sail_v1_21.order_modification.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Strategy Instrument
  if message_type == "ON" then
    return tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cross Entry
  if message_type == "OX" then
    return tmx_mx_solaorderentry_sail_v1_21.cross_entry.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bulk Quote
  if message_type == "QP" then
    return tmx_mx_solaorderentry_sail_v1_21.bulk_quote.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sail Request For Quote With Side
  if message_type == "QS" then
    return tmx_mx_solaorderentry_sail_v1_21.sail_request_for_quote_with_side.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bulk Quote Participant Bqp Protection Subscription
  if message_type == "RP" then
    return tmx_mx_solaorderentry_sail_v1_21.bulk_quote_participant_bqp_protection_subscription.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Request For Quote
  if message_type == "RQ" then
    return tmx_mx_solaorderentry_sail_v1_21.request_for_quote.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancellation
  if message_type == "XE" then
    return tmx_mx_solaorderentry_sail_v1_21.order_cancellation.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Firm Packet
tmx_mx_solaorderentry_sail_v1_21.firm_packet = {}

-- Verify required size of Tcp packet
tmx_mx_solaorderentry_sail_v1_21.firm_packet.requiredsize = function(buffer)
  return buffer:len() >= tmx_mx_solaorderentry_sail_v1_21.message_length.size + tmx_mx_solaorderentry_sail_v1_21.message_type.size
end

-- Dissect Firm Packet
tmx_mx_solaorderentry_sail_v1_21.firm_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Message Length: Endian
  index, message_length = tmx_mx_solaorderentry_sail_v1_21.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: X
  index, message_type = tmx_mx_solaorderentry_sail_v1_21.message_type.dissect(buffer, index, packet, parent)

  -- Firm Message: Runtime Type with 20 branches
  index = tmx_mx_solaorderentry_sail_v1_21.firm_message.dissect(buffer, index, packet, parent, message_type)

  -- End Of Text: Binary
  index, end_of_text = tmx_mx_solaorderentry_sail_v1_21.end_of_text.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Alignment Padding
  local alignment_padding = nil

  local alignment_padding_exists = (index % 4 ~= 0)

  if alignment_padding_exists then
    index, alignment_padding = tmx_mx_solaorderentry_sail_v1_21.alignment_padding.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_tmx_mx_solaorderentry_sail_v1_21.init()
end

-- Connection roles for Tmx Mx SolaOrderEntry Sail 1.21: Client is the initiator, Server is the acceptor
-- Initiator endpoint of each conversation, recorded from its first frame
local initiators = {}

-- Conversations whose first frame proved to be the acceptor's: the heuristic swaps the sides
local swapped = {}

-- Endpoint key of an address and port
local function endpoint(address, port)
  return tostring(address)..":"..tostring(port)
end


-- Conversation key, the same in both directions
local function conversation(packet)
  local source = endpoint(packet.src, packet.src_port)
  local destination = endpoint(packet.dst, packet.dst_port)

  if source < destination then
    return source.." "..destination
  end

  return destination.." "..source
end


-- Connection role of the frame's sender
tmx_mx_solaorderentry_sail_v1_21.role = function(packet)
  if omi_tmx_mx_solaorderentry_sail_v1_21.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_tmx_mx_solaorderentry_sail_v1_21.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_tmx_mx_solaorderentry_sail_v1_21.prefs.acceptor_port

  if acceptor_port ~= 0 and packet.dst_port == acceptor_port then
    return "initiator"
  end

  if acceptor_port ~= 0 and packet.src_port == acceptor_port then
    return "acceptor"
  end

  local key = conversation(packet)
  local sender = endpoint(packet.src, packet.src_port)

  if initiators[key] == nil then
    initiators[key] = sender
  end

  local sender_initiated = initiators[key] == sender

  if omi_tmx_mx_solaorderentry_sail_v1_21.prefs.swap_sides then
    sender_initiated = not sender_initiated
  end

  if swapped[key] then
    sender_initiated = not sender_initiated
  end

  if sender_initiated then
    return "initiator"
  end

  return "acceptor"
end


-- Swap the resolved sides of the frame's conversation
tmx_mx_solaorderentry_sail_v1_21.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Tmx Mx SolaOrderEntry Sail 1.21
function omi_tmx_mx_solaorderentry_sail_v1_21.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_tmx_mx_solaorderentry_sail_v1_21.name

  -- Dissect protocol
  local protocol = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21, buffer(), omi_tmx_mx_solaorderentry_sail_v1_21.description, "("..buffer:len().." Bytes)")

  local role = tmx_mx_solaorderentry_sail_v1_21.role(packet)

  if role == "initiator" then
    return tmx_mx_solaorderentry_sail_v1_21.firm_packet.dissect(buffer, packet, protocol)
  end

  return tmx_mx_solaorderentry_sail_v1_21.exchange_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Firm Packet: would its message dispatch accept this frame?
tmx_mx_solaorderentry_sail_v1_21.firm_packet.fingerprint = function(buffer)
  if buffer:len() < 6 then
    return false
  end

  local message_type = buffer(4, 2):string()

  -- User Connection
  if message_type == "TC" then
    return true
  end

  -- Disconnection Instruction
  if message_type == "TA" then
    return true
  end

  -- Heartbeat Response
  if message_type == "TI" then
    return true
  end

  -- User Disconnection
  if message_type == "TD" then
    return true
  end

  -- Order Request
  if message_type == "AF" then
    return true
  end

  -- Bulk Quote Data
  if message_type == "BD" then
    return true
  end

  -- Firm Risk Config
  if message_type == "CR" then
    return true
  end

  -- Global Cancellation
  if message_type == "GC" then
    return true
  end

  -- User Global Cancellation
  if message_type == "GZ" then
    return true
  end

  -- Set Group Risk Limits
  if message_type == "MK" then
    return true
  end

  -- Set Global Risk Limits
  if message_type == "ML" then
    return true
  end

  -- Order Entry
  if message_type == "OE" then
    return true
  end

  -- Order Modification
  if message_type == "OM" then
    return true
  end

  -- New Strategy Instrument
  if message_type == "ON" then
    return true
  end

  -- Cross Entry
  if message_type == "OX" then
    return true
  end

  -- Bulk Quote
  if message_type == "QP" then
    return true
  end

  -- Sail Request For Quote With Side
  if message_type == "QS" then
    return true
  end

  -- Bulk Quote Participant Bqp Protection Subscription
  if message_type == "RP" then
    return true
  end

  -- Request For Quote
  if message_type == "RQ" then
    return true
  end

  -- Order Cancellation
  if message_type == "XE" then
    return true
  end

  return false
end

-- Fingerprint of Exchange Packet: would its message dispatch accept this frame?
tmx_mx_solaorderentry_sail_v1_21.exchange_packet.fingerprint = function(buffer)
  if buffer:len() < 6 then
    return false
  end

  local message_type = buffer(4, 2):string()

  -- Connection Acknowledgement
  if message_type == "TK" then
    return true
  end

  -- Disconnection Instruction Acknowledgement
  if message_type == "TM" then
    return true
  end

  -- Heartbeat Question
  if message_type == "TH" then
    return true
  end

  -- Out Of Sequence
  if message_type == "TO" then
    return true
  end

  -- Technical Error Notice
  if message_type == "TE" then
    return true
  end

  -- Disconnection Acknowledgement
  if message_type == "TL" then
    return true
  end

  -- End Of Transmission
  if message_type == "TT" then
    return true
  end

  -- Order Reply
  if message_type == "AE" then
    return true
  end

  -- Error Notice
  if message_type == "ER" then
    return true
  end

  -- Bulk Quote Data Acknowledgement
  if message_type == "KD" then
    return true
  end

  -- Order Acknowledgement
  if message_type == "KE" then
    return true
  end

  -- Global Cancellation Confirmation
  if message_type == "KG" then
    return true
  end

  -- Order Modification Acknowledgement
  if message_type == "KM" then
    return true
  end

  -- New Strategy Instrument Acknowledgement
  if message_type == "KN" then
    return true
  end

  -- Standard Acknowledgement
  if message_type == "KO" then
    return true
  end

  -- Order Cancellation Acknowledgement
  if message_type == "KZ" then
    return true
  end

  -- Bulk Quote Acknowledgement
  if message_type == "LA" then
    return true
  end

  -- Bulk Command Acknowledgement
  if message_type == "LB" then
    return true
  end

  -- Risk Limits Usage
  if message_type == "MN" then
    return true
  end

  -- Excluded Instrument Notice
  if message_type == "NE" then
    return true
  end

  -- Group State Change
  if message_type == "NG" then
    return true
  end

  -- Instrument State Change
  if message_type == "NI" then
    return true
  end

  -- Leg Execution Notice
  if message_type == "NL" then
    return true
  end

  -- Overstepped Order Or Quote Notice
  if message_type == "NO" then
    return true
  end

  -- Cancellation Of All Quotes Notice
  if message_type == "NP" then
    return true
  end

  -- Execution Notice
  if message_type == "NT" then
    return true
  end

  -- Execution Cancellation Notice
  if message_type == "NX" then
    return true
  end

  -- Leg Execution Cancellation Notice
  if message_type == "NY" then
    return true
  end

  -- Order Cancellation Notice By Mod Or System
  if message_type == "NZ" then
    return true
  end

  -- Request For Quote With Side Acknowledgement
  if message_type == "QW" then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Tmx Mx SolaOrderEntry Sail 1.21 (Tcp)
local function omi_tmx_mx_solaorderentry_sail_v1_21_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not tmx_mx_solaorderentry_sail_v1_21.firm_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not tmx_mx_solaorderentry_sail_v1_21.firm_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_tmx_mx_solaorderentry_sail_v1_21
  omi_tmx_mx_solaorderentry_sail_v1_21.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Tmx Mx SolaOrderEntry Sail 1.21 (Tcp)
local function omi_tmx_mx_solaorderentry_sail_v1_21_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not tmx_mx_solaorderentry_sail_v1_21.exchange_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not tmx_mx_solaorderentry_sail_v1_21.exchange_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_tmx_mx_solaorderentry_sail_v1_21
  omi_tmx_mx_solaorderentry_sail_v1_21.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Tmx Mx SolaOrderEntry Sail 1.21 (Tcp): apply the heuristic of the sender's connection role
local function omi_tmx_mx_solaorderentry_sail_v1_21_tcp_heuristic(buffer, packet, parent)
  local role = tmx_mx_solaorderentry_sail_v1_21.role(packet)
  local initiator = omi_tmx_mx_solaorderentry_sail_v1_21_tcp_initiator_heuristic
  local acceptor = omi_tmx_mx_solaorderentry_sail_v1_21_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  tmx_mx_solaorderentry_sail_v1_21.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  tmx_mx_solaorderentry_sail_v1_21.swap(packet)

  return false
end

-- Register Heuristics for Tmx Mx SolaOrderEntry Sail 1.21
omi_tmx_mx_solaorderentry_sail_v1_21:register_heuristic("tcp", omi_tmx_mx_solaorderentry_sail_v1_21_tcp_heuristic)

-- Register Tmx Mx SolaOrderEntry Sail 1.21 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_tmx_mx_solaorderentry_sail_v1_21)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: TMX Group
--   Version: 1.21
--   Date: Thursday, June 18, 2020
--   Specification: sail-mx-001e-mx-sail-specifications-guide-v1-21.pdf
--
-- Script:
--   Generator: 1.5.0.0
--   Compiler: 2.0
--   License: GPL-2.0-or-later
--   Authors: Omi Developers
--
-- Copyright (c) 2026 Scaled Sources LLC.
--   https://www.scaledsources.com
--
-- This dissector code is contributed to The Open Markets Initiative under
-- the license noted above.
--   https://openmarketsinitiative.com
--
-- Protocol Compiler technologies used to produce this file are
-- the subject of patents owned by Scaled Sources LLC.  Those patent
-- rights are retained and are not transferred by this contribution:
--   https://patents.google.com/patent/US20240129382A1/en
--   https://patents.google.com/patent/US20240419416A1/en
--
-----------------------------------------------------------------------
