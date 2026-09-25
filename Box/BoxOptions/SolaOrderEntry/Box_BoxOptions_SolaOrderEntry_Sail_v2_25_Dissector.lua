-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Box BoxOptions SolaOrderEntry Sail 2.25 Protocol
local omi_box_boxoptions_solaorderentry_sail_v2_25 = Proto("Omi.Box.BoxOptions.SolaOrderEntry.Sail.v2.25", "Box BoxOptions SolaOrderEntry Sail 2.25")

-- Protocol table
local box_boxoptions_solaorderentry_sail_v2_25 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Box BoxOptions SolaOrderEntry Sail 2.25 Fields
omi_box_boxoptions_solaorderentry_sail_v2_25.fields._1_to_9999_occurrences_instrument = ProtoField.new("1 To 9999 Occurrences Instrument", "box.boxoptions.solaorderentry.sail.v2.25.1to9999occurrencesinstrument", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.account_type = ProtoField.new("Account Type", "box.boxoptions.solaorderentry.sail.v2.25.accounttype", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.account_type_filter = ProtoField.new("Account Type Filter", "box.boxoptions.solaorderentry.sail.v2.25.accounttypefilter", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.action = ProtoField.new("Action", "box.boxoptions.solaorderentry.sail.v2.25.action", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.active_y_on_n_off = ProtoField.new("Active Y On N Off", "box.boxoptions.solaorderentry.sail.v2.25.activeyonnoff", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.additional_client_memo = ProtoField.new("Additional Client Memo", "box.boxoptions.solaorderentry.sail.v2.25.additionalclientmemo", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.additional_price = ProtoField.new("Additional Price", "box.boxoptions.solaorderentry.sail.v2.25.additionalprice", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.additional_quantity_additional_quantity_8 = ProtoField.new("Additional Quantity Additional Quantity 8", "box.boxoptions.solaorderentry.sail.v2.25.additionalquantityadditionalquantity8", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.additional_quantity_quantity_8 = ProtoField.new("Additional Quantity Quantity 8", "box.boxoptions.solaorderentry.sail.v2.25.additionalquantityquantity8", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.assigned_price = ProtoField.new("Assigned Price", "box.boxoptions.solaorderentry.sail.v2.25.assignedprice", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.auction_id = ProtoField.new("Auction Id", "box.boxoptions.solaorderentry.sail.v2.25.auctionid", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.auction_id_only_if_message_type_is_ki_or_else_zeroes = ProtoField.new("Auction Id Only If Message Type Is Ki Or Else Zeroes", "box.boxoptions.solaorderentry.sail.v2.25.auctionidonlyifmessagetypeiskiorelsezeroes", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.auction_price = ProtoField.new("Auction Price", "box.boxoptions.solaorderentry.sail.v2.25.auctionprice", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.auction_quantity = ProtoField.new("Auction Quantity", "box.boxoptions.solaorderentry.sail.v2.25.auctionquantity", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.auction_starting_price = ProtoField.new("Auction Starting Price", "box.boxoptions.solaorderentry.sail.v2.25.auctionstartingprice", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.bulk_quote_acknowledgement_occurrence = ProtoField.new("Bulk Quote Acknowledgement Occurrence", "box.boxoptions.solaorderentry.sail.v2.25.bulkquoteacknowledgementoccurrence", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.bulk_quote_occurrence = ProtoField.new("Bulk Quote Occurrence", "box.boxoptions.solaorderentry.sail.v2.25.bulkquoteoccurrence", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.buying_additional_client_memo = ProtoField.new("Buying Additional Client Memo", "box.boxoptions.solaorderentry.sail.v2.25.buyingadditionalclientmemo", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.buying_clearing_data = ProtoField.new("Buying Clearing Data", "box.boxoptions.solaorderentry.sail.v2.25.buyingclearingdata", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.buying_owner_data = ProtoField.new("Buying Owner Data", "box.boxoptions.solaorderentry.sail.v2.25.buyingownerdata", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.calculation_time_interval = ProtoField.new("Calculation Time Interval", "box.boxoptions.solaorderentry.sail.v2.25.calculationtimeinterval", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.cancelled_order_id = ProtoField.new("Cancelled Order Id", "box.boxoptions.solaorderentry.sail.v2.25.cancelledorderid", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.clearing_data = ProtoField.new("Clearing Data", "box.boxoptions.solaorderentry.sail.v2.25.clearingdata", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.clearing_data_dealer = ProtoField.new("Clearing Data Dealer", "box.boxoptions.solaorderentry.sail.v2.25.clearingdatadealer", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.clearing_destination = ProtoField.new("Clearing Destination", "box.boxoptions.solaorderentry.sail.v2.25.clearingdestination", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.clearing_instruction = ProtoField.new("Clearing Instruction", "box.boxoptions.solaorderentry.sail.v2.25.clearinginstruction", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.client_order_id = ProtoField.new("Client Order Id", "box.boxoptions.solaorderentry.sail.v2.25.clientorderid", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.complex_order_auction_entry_occurrence = ProtoField.new("Complex Order Auction Entry Occurrence", "box.boxoptions.solaorderentry.sail.v2.25.complexorderauctionentryoccurrence", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.counterpart_account_type = ProtoField.new("Counterpart Account Type", "box.boxoptions.solaorderentry.sail.v2.25.counterpartaccounttype", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.creation_status = ProtoField.new("Creation Status", "box.boxoptions.solaorderentry.sail.v2.25.creationstatus", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.current_session_id = ProtoField.new("Current Session Id", "box.boxoptions.solaorderentry.sail.v2.25.currentsessionid", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.disconnection_instruction_note_cancel_quotes_only_q_quotes_only = ProtoField.new("Disconnection Instruction Note Cancel Quotes Only Q Quotes Only", "box.boxoptions.solaorderentry.sail.v2.25.disconnectioninstructionnotecancelquotesonlyqquotesonly", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.disconnection_instruction_occurrence = ProtoField.new("Disconnection Instruction Occurrence", "box.boxoptions.solaorderentry.sail.v2.25.disconnectioninstructionoccurrence", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.duration_type = ProtoField.new("Duration Type", "box.boxoptions.solaorderentry.sail.v2.25.durationtype", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.enabled_y_yes_n_no = ProtoField.new("Enabled Y Yes N No", "box.boxoptions.solaorderentry.sail.v2.25.enabledyyesnno", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.end_of_text = ProtoField.new("End Of Text", "box.boxoptions.solaorderentry.sail.v2.25.endoftext", ftypes.INT8)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.ended_session_id = ProtoField.new("Ended Session Id", "box.boxoptions.solaorderentry.sail.v2.25.endedsessionid", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.error_code = ProtoField.new("Error Code", "box.boxoptions.solaorderentry.sail.v2.25.errorcode", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.error_description = ProtoField.new("Error Description", "box.boxoptions.solaorderentry.sail.v2.25.errordescription", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.error_detail = ProtoField.new("Error Detail", "box.boxoptions.solaorderentry.sail.v2.25.errordetail", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.error_message = ProtoField.new("Error Message", "box.boxoptions.solaorderentry.sail.v2.25.errormessage", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.error_position = ProtoField.new("Error Position", "box.boxoptions.solaorderentry.sail.v2.25.errorposition", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.exchange_message_id = ProtoField.new("Exchange Message Id", "box.boxoptions.solaorderentry.sail.v2.25.exchangemessageid", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.executing_participant = ProtoField.new("Executing Participant", "box.boxoptions.solaorderentry.sail.v2.25.executingparticipant", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.expected_last_user_sequence_id = ProtoField.new("Expected Last User Sequence Id", "box.boxoptions.solaorderentry.sail.v2.25.expectedlastusersequenceid", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.filler_2 = ProtoField.new("Filler 2", "box.boxoptions.solaorderentry.sail.v2.25.filler2", ftypes.BYTES)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.filler_must_be_blank_2_string_11 = ProtoField.new("Filler Must Be Blank 2 String 11", "box.boxoptions.solaorderentry.sail.v2.25.fillermustbeblank2string11", ftypes.BYTES)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.filler_must_be_blank_2_string_44 = ProtoField.new("Filler Must Be Blank 2 String 44", "box.boxoptions.solaorderentry.sail.v2.25.fillermustbeblank2string44", ftypes.BYTES)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.filler_must_be_blank_2_string_88 = ProtoField.new("Filler Must Be Blank 2 String 88", "box.boxoptions.solaorderentry.sail.v2.25.fillermustbeblank2string88", ftypes.BYTES)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.filler_must_be_blank_3_string_22 = ProtoField.new("Filler Must Be Blank 3 String 22", "box.boxoptions.solaorderentry.sail.v2.25.fillermustbeblank3string22", ftypes.BYTES)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.filler_must_be_blank_3_string_88 = ProtoField.new("Filler Must Be Blank 3 String 88", "box.boxoptions.solaorderentry.sail.v2.25.fillermustbeblank3string88", ftypes.BYTES)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.filler_must_be_blank_4 = ProtoField.new("Filler Must Be Blank 4", "box.boxoptions.solaorderentry.sail.v2.25.fillermustbeblank4", ftypes.BYTES)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.filler_must_be_blank_string_1010 = ProtoField.new("Filler Must Be Blank String 1010", "box.boxoptions.solaorderentry.sail.v2.25.fillermustbeblankstring1010", ftypes.BYTES)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.filler_must_be_blank_string_11 = ProtoField.new("Filler Must Be Blank String 11", "box.boxoptions.solaorderentry.sail.v2.25.fillermustbeblankstring11", ftypes.BYTES)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.filler_must_be_blank_string_22 = ProtoField.new("Filler Must Be Blank String 22", "box.boxoptions.solaorderentry.sail.v2.25.fillermustbeblankstring22", ftypes.BYTES)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.filler_must_be_blank_string_44 = ProtoField.new("Filler Must Be Blank String 44", "box.boxoptions.solaorderentry.sail.v2.25.fillermustbeblankstring44", ftypes.BYTES)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.filler_must_be_spaces = ProtoField.new("Filler Must Be Spaces", "box.boxoptions.solaorderentry.sail.v2.25.fillermustbespaces", ftypes.BYTES)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.filler_numeric_66 = ProtoField.new("Filler Numeric 66", "box.boxoptions.solaorderentry.sail.v2.25.fillernumeric66", ftypes.BYTES)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.filler_string_1717 = ProtoField.new("Filler String 1717", "box.boxoptions.solaorderentry.sail.v2.25.fillerstring1717", ftypes.BYTES)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.filler_string_22 = ProtoField.new("Filler String 22", "box.boxoptions.solaorderentry.sail.v2.25.fillerstring22", ftypes.BYTES)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.filler_zero_filled = ProtoField.new("Filler Zero Filled", "box.boxoptions.solaorderentry.sail.v2.25.fillerzerofilled", ftypes.BYTES)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.firm_id = ProtoField.new("Firm Id", "box.boxoptions.solaorderentry.sail.v2.25.firmid", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.gap_sequence_id = ProtoField.new("Gap Sequence ID", "box.boxoptions.solaorderentry.sail.v2.25.gapsequenceid", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.group = ProtoField.new("Group", "box.boxoptions.solaorderentry.sail.v2.25.group", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.group_state = ProtoField.new("Group State", "box.boxoptions.solaorderentry.sail.v2.25.groupstate", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.gtd_date = ProtoField.new("Gtd Date", "box.boxoptions.solaorderentry.sail.v2.25.gtddate", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.hedge_spec = ProtoField.new("Hedge Spec", "box.boxoptions.solaorderentry.sail.v2.25.hedgespec", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.id_code_for_the_counterpart_participant = ProtoField.new("Id Code For The Counterpart Participant", "box.boxoptions.solaorderentry.sail.v2.25.idcodeforthecounterpartparticipant", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.iml_handling = ProtoField.new("Iml Handling", "box.boxoptions.solaorderentry.sail.v2.25.imlhandling", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.inactivity_interval = ProtoField.new("Inactivity Interval", "box.boxoptions.solaorderentry.sail.v2.25.inactivityinterval", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.instrument = ProtoField.new("Instrument", "box.boxoptions.solaorderentry.sail.v2.25.instrument", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.last_exchange_message_id_sent_to_participant = ProtoField.new("Last Exchange Message Id Sent To Participant", "box.boxoptions.solaorderentry.sail.v2.25.lastexchangemessageidsenttoparticipant", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.last_user_sequence_id_received = ProtoField.new("Last User Sequence Id Received", "box.boxoptions.solaorderentry.sail.v2.25.lastusersequenceidreceived", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.last_user_sequence_id_received_if_no_business_message_has_been_received_on_this_connection_this_field_is_equal_to_zeroes = ProtoField.new("Last User Sequence Id Received If No Business Message Has Been Received On This Connection This Field Is Equal To Zeroes", "box.boxoptions.solaorderentry.sail.v2.25.lastusersequenceidreceivedifnobusinessmessagehasbeenreceivedonthisconnectionthisfieldisequaltozeroes", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.leg_group = ProtoField.new("Leg Group", "box.boxoptions.solaorderentry.sail.v2.25.leggroup", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.leg_instrument = ProtoField.new("Leg Instrument", "box.boxoptions.solaorderentry.sail.v2.25.leginstrument", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.leg_instrument_id = ProtoField.new("Leg Instrument Id", "box.boxoptions.solaorderentry.sail.v2.25.leginstrumentid", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.leg_quantity_ratio = ProtoField.new("Leg Quantity Ratio", "box.boxoptions.solaorderentry.sail.v2.25.legquantityratio", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.leg_verb = ProtoField.new("Leg Verb", "box.boxoptions.solaorderentry.sail.v2.25.legverb", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.liquidity_status = ProtoField.new("Liquidity Status", "box.boxoptions.solaorderentry.sail.v2.25.liquiditystatus", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.maximum_delta_value = ProtoField.new("Maximum Delta Value", "box.boxoptions.solaorderentry.sail.v2.25.maximumdeltavalue", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.maximum_delta_volume = ProtoField.new("Maximum Delta Volume", "box.boxoptions.solaorderentry.sail.v2.25.maximumdeltavolume", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.maximum_total_value = ProtoField.new("Maximum Total Value", "box.boxoptions.solaorderentry.sail.v2.25.maximumtotalvalue", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.maximum_total_volume = ProtoField.new("Maximum Total Volume", "box.boxoptions.solaorderentry.sail.v2.25.maximumtotalvolume", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.memo = ProtoField.new("Memo", "box.boxoptions.solaorderentry.sail.v2.25.memo", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.message_length = ProtoField.new("Message Length", "box.boxoptions.solaorderentry.sail.v2.25.messagelength", ftypes.UINT32)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.message_time_local = ProtoField.new("Message Time Local", "box.boxoptions.solaorderentry.sail.v2.25.messagetimelocal", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.message_timestamp = ProtoField.new("Message Timestamp", "box.boxoptions.solaorderentry.sail.v2.25.messagetimestamp", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.message_type = ProtoField.new("Message Type", "box.boxoptions.solaorderentry.sail.v2.25.messagetype", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.message_types_to_be_received = ProtoField.new("Message Types To Be Received", "box.boxoptions.solaorderentry.sail.v2.25.messagetypestobereceived", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.mm_cat_user_time = ProtoField.new("Mm Cat User Time", "box.boxoptions.solaorderentry.sail.v2.25.mmcatusertime", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.modified_order_id = ProtoField.new("Modified Order Id", "box.boxoptions.solaorderentry.sail.v2.25.modifiedorderid", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.nb_legs = ProtoField.new("Nb Legs", "box.boxoptions.solaorderentry.sail.v2.25.nblegs", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.nb_of_instruments = ProtoField.new("Nb Of Instruments", "box.boxoptions.solaorderentry.sail.v2.25.nbofinstruments", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.new_complex_order_instrument_acknowledgement_occurrence = ProtoField.new("New Complex Order Instrument Acknowledgement Occurrence", "box.boxoptions.solaorderentry.sail.v2.25.newcomplexorderinstrumentacknowledgementoccurrence", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.new_complex_order_instrument_occurrence = ProtoField.new("New Complex Order Instrument Occurrence", "box.boxoptions.solaorderentry.sail.v2.25.newcomplexorderinstrumentoccurrence", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.new_price = ProtoField.new("New Price", "box.boxoptions.solaorderentry.sail.v2.25.newprice", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.new_quantity = ProtoField.new("New Quantity", "box.boxoptions.solaorderentry.sail.v2.25.newquantity", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.number_of_instructions_present_in_the_message = ProtoField.new("Number Of Instructions Present In The Message", "box.boxoptions.solaorderentry.sail.v2.25.numberofinstructionspresentinthemessage", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.number_of_legs = ProtoField.new("Number Of Legs", "box.boxoptions.solaorderentry.sail.v2.25.numberoflegs", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.number_of_message_types_to_be_received = ProtoField.new("Number Of Message Types To Be Received", "box.boxoptions.solaorderentry.sail.v2.25.numberofmessagetypestobereceived", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.number_of_quotes = ProtoField.new("Number Of Quotes", "box.boxoptions.solaorderentry.sail.v2.25.numberofquotes", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.number_of_quotes_in_error = ProtoField.new("Number Of Quotes In Error", "box.boxoptions.solaorderentry.sail.v2.25.numberofquotesinerror", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.open_close = ProtoField.new("Open Close", "box.boxoptions.solaorderentry.sail.v2.25.openclose", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.order_id_client_order_id_20 = ProtoField.new("Order Id Client Order Id 20", "box.boxoptions.solaorderentry.sail.v2.25.orderidclientorderid20", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.order_id_order_id_8 = ProtoField.new("Order Id Order Id 8", "box.boxoptions.solaorderentry.sail.v2.25.orderidorderid8", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.order_type = ProtoField.new("Order Type", "box.boxoptions.solaorderentry.sail.v2.25.ordertype", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.original_message_type = ProtoField.new("Original Message Type", "box.boxoptions.solaorderentry.sail.v2.25.originalmessagetype", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.original_message_type_re_rf_rq_rp_gz = ProtoField.new("Original Message Type Re Rf Rq Rp Gz", "box.boxoptions.solaorderentry.sail.v2.25.originalmessagetypererfrqrpgz", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.original_order_id = ProtoField.new("Original Order Id", "box.boxoptions.solaorderentry.sail.v2.25.originalorderid", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.original_reference_id_order_id_8 = ProtoField.new("Original Reference Id Order Id 8", "box.boxoptions.solaorderentry.sail.v2.25.originalreferenceidorderid8", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.original_reference_id_original_reference_id_8 = ProtoField.new("Original Reference Id Original Reference Id 8", "box.boxoptions.solaorderentry.sail.v2.25.originalreferenceidoriginalreferenceid8", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.original_reference_id_quote_or_order_id = ProtoField.new("Original Reference Id Quote Or Order Id", "box.boxoptions.solaorderentry.sail.v2.25.originalreferenceidquoteororderid", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.owner_data = ProtoField.new("Owner Data", "box.boxoptions.solaorderentry.sail.v2.25.ownerdata", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.owner_data_dealer = ProtoField.new("Owner Data Dealer", "box.boxoptions.solaorderentry.sail.v2.25.ownerdatadealer", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.password_md_5_encryption = ProtoField.new("Password Md 5 Encryption", "box.boxoptions.solaorderentry.sail.v2.25.passwordmd5encryption", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.percent_of_quote = ProtoField.new("Percent Of Quote", "box.boxoptions.solaorderentry.sail.v2.25.percentofquote", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.pound_sign = ProtoField.new("Pound Sign", "box.boxoptions.solaorderentry.sail.v2.25.poundsign", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.preceding_user_sequence_id_received_zeroes_if_none = ProtoField.new("Preceding User Sequence Id Received Zeroes If None", "box.boxoptions.solaorderentry.sail.v2.25.precedingusersequenceidreceivedzeroesifnone", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.previous_price = ProtoField.new("Previous Price", "box.boxoptions.solaorderentry.sail.v2.25.previousprice", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.previous_quantity = ProtoField.new("Previous Quantity", "box.boxoptions.solaorderentry.sail.v2.25.previousquantity", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.price = ProtoField.new("Price", "box.boxoptions.solaorderentry.sail.v2.25.price", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.price_type = ProtoField.new("Price Type", "box.boxoptions.solaorderentry.sail.v2.25.pricetype", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.protection_type_advanced_normal = ProtoField.new("Protection Type Advanced Normal", "box.boxoptions.solaorderentry.sail.v2.25.protectiontypeadvancednormal", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.protocol_version = ProtoField.new("Protocol Version", "box.boxoptions.solaorderentry.sail.v2.25.protocolversion", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.qualified_quantity = ProtoField.new("Qualified Quantity", "box.boxoptions.solaorderentry.sail.v2.25.qualifiedquantity", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.quantity = ProtoField.new("Quantity", "box.boxoptions.solaorderentry.sail.v2.25.quantity", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.quantity_1 = ProtoField.new("Quantity 1", "box.boxoptions.solaorderentry.sail.v2.25.quantity1", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.quantity_sign = ProtoField.new("Quantity Sign", "box.boxoptions.solaorderentry.sail.v2.25.quantitysign", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.quantity_term_quantity_sign_1 = ProtoField.new("Quantity Term Quantity Sign 1", "box.boxoptions.solaorderentry.sail.v2.25.quantitytermquantitysign1", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.quantity_term_quantity_term_1 = ProtoField.new("Quantity Term Quantity Term 1", "box.boxoptions.solaorderentry.sail.v2.25.quantitytermquantityterm1", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.quantity_traded = ProtoField.new("Quantity Traded", "box.boxoptions.solaorderentry.sail.v2.25.quantitytraded", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.quote_cancel_reason = ProtoField.new("Quote Cancel Reason", "box.boxoptions.solaorderentry.sail.v2.25.quotecancelreason", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.quote_id_identifies_traders_quote_on_this_group = ProtoField.new("Quote Id Identifies Traders Quote On This Group", "box.boxoptions.solaorderentry.sail.v2.25.quoteididentifiestradersquoteonthisgroup", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.quote_number = ProtoField.new("Quote Number", "box.boxoptions.solaorderentry.sail.v2.25.quotenumber", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.quote_price = ProtoField.new("Quote Price", "box.boxoptions.solaorderentry.sail.v2.25.quoteprice", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.quote_quantity = ProtoField.new("Quote Quantity", "box.boxoptions.solaorderentry.sail.v2.25.quotequantity", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.received_message_type = ProtoField.new("Received Message Type", "box.boxoptions.solaorderentry.sail.v2.25.receivedmessagetype", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.received_user_sequence_id = ProtoField.new("Received User Sequence Id", "box.boxoptions.solaorderentry.sail.v2.25.receivedusersequenceid", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.reference_id = ProtoField.new("Reference Id", "box.boxoptions.solaorderentry.sail.v2.25.referenceid", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.reference_id_quote = ProtoField.new("Reference Id Quote", "box.boxoptions.solaorderentry.sail.v2.25.referenceidquote", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.referenced_order_id = ProtoField.new("Referenced Order Id", "box.boxoptions.solaorderentry.sail.v2.25.referencedorderid", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.rejection_code = ProtoField.new("Rejection Code", "box.boxoptions.solaorderentry.sail.v2.25.rejectioncode", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.selling_additional_client_memo = ProtoField.new("Selling Additional Client Memo", "box.boxoptions.solaorderentry.sail.v2.25.sellingadditionalclientmemo", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.selling_clearing_data = ProtoField.new("Selling Clearing Data", "box.boxoptions.solaorderentry.sail.v2.25.sellingclearingdata", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.selling_owner_data = ProtoField.new("Selling Owner Data", "box.boxoptions.solaorderentry.sail.v2.25.sellingownerdata", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.session_id = ProtoField.new("Session Id", "box.boxoptions.solaorderentry.sail.v2.25.sessionid", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.special_price_term = ProtoField.new("Special Price Term", "box.boxoptions.solaorderentry.sail.v2.25.specialpriceterm", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.special_trade_indicator = ProtoField.new("Special Trade Indicator", "box.boxoptions.solaorderentry.sail.v2.25.specialtradeindicator", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.start_of_message_in_error = ProtoField.new("Start Of Message In Error", "box.boxoptions.solaorderentry.sail.v2.25.startofmessageinerror", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.strategy_group = ProtoField.new("Strategy Group", "box.boxoptions.solaorderentry.sail.v2.25.strategygroup", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.strategy_instrument_id = ProtoField.new("Strategy Instrument Id", "box.boxoptions.solaorderentry.sail.v2.25.strategyinstrumentid", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.strategy_trade_number = ProtoField.new("Strategy Trade Number", "box.boxoptions.solaorderentry.sail.v2.25.strategytradenumber", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.strategy_verb_side = ProtoField.new("Strategy Verb Side", "box.boxoptions.solaorderentry.sail.v2.25.strategyverbside", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.system_sequence_id = ProtoField.new("System Sequence ID", "box.boxoptions.solaorderentry.sail.v2.25.systemsequenceid", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.time = ProtoField.new("Time", "box.boxoptions.solaorderentry.sail.v2.25.time", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.time_hhmmss = ProtoField.new("Time Hhmmss", "box.boxoptions.solaorderentry.sail.v2.25.timehhmmss", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.time_local = ProtoField.new("Time Local", "box.boxoptions.solaorderentry.sail.v2.25.timelocal", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.time_of_the_trade_hhmmss = ProtoField.new("Time Of The Trade Hhmmss", "box.boxoptions.solaorderentry.sail.v2.25.timeofthetradehhmmss", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.time_trade_hhmmss = ProtoField.new("Time Trade Hhmmss", "box.boxoptions.solaorderentry.sail.v2.25.timetradehhmmss", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.trade_leg_price = ProtoField.new("Trade Leg Price", "box.boxoptions.solaorderentry.sail.v2.25.tradelegprice", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.trade_memo_string_5050 = ProtoField.new("Trade Memo String 5050", "box.boxoptions.solaorderentry.sail.v2.25.tradememostring5050", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.trade_memo_trade_memo_50 = ProtoField.new("Trade Memo Trade Memo 50", "box.boxoptions.solaorderentry.sail.v2.25.tradememotradememo50", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.trade_number = ProtoField.new("Trade Number", "box.boxoptions.solaorderentry.sail.v2.25.tradenumber", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.trade_price = ProtoField.new("Trade Price", "box.boxoptions.solaorderentry.sail.v2.25.tradeprice", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.trade_type = ProtoField.new("Trade Type", "box.boxoptions.solaorderentry.sail.v2.25.tradetype", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.trader_id = ProtoField.new("Trader Id", "box.boxoptions.solaorderentry.sail.v2.25.traderid", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.type_of_cancellation = ProtoField.new("Type Of Cancellation", "box.boxoptions.solaorderentry.sail.v2.25.typeofcancellation", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.type_of_cancellation_only_q_quotes_only_can_be_returned = ProtoField.new("Type Of Cancellation Only Q Quotes Only Can Be Returned", "box.boxoptions.solaorderentry.sail.v2.25.typeofcancellationonlyqquotesonlycanbereturned", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.type_of_cancellation_q_quotes_only = ProtoField.new("Type Of Cancellation Q Quotes Only", "box.boxoptions.solaorderentry.sail.v2.25.typeofcancellationqquotesonly", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.user_connection_occurrence = ProtoField.new("User Connection Occurrence", "box.boxoptions.solaorderentry.sail.v2.25.userconnectionoccurrence", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.user_id = ProtoField.new("User Id", "box.boxoptions.solaorderentry.sail.v2.25.userid", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.user_sequence_id = ProtoField.new("User Sequence ID", "box.boxoptions.solaorderentry.sail.v2.25.usersequenceid", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.user_sequence_id_first_user_sequence_id_for_nextcurrent_heartbeat_period = ProtoField.new("User Sequence Id First User Sequence Id For Nextcurrent Heartbeat Period", "box.boxoptions.solaorderentry.sail.v2.25.usersequenceidfirstusersequenceidfornextcurrentheartbeatperiod", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.user_time = ProtoField.new("User Time", "box.boxoptions.solaorderentry.sail.v2.25.usertime", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.verb = ProtoField.new("Verb", "box.boxoptions.solaorderentry.sail.v2.25.verb", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.verb_side = ProtoField.new("Verb Side", "box.boxoptions.solaorderentry.sail.v2.25.verbside", ftypes.STRING)

-- Box BoxOptions SolaOrderEntry Sail 2.25 Framing
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.exchange_packet = ProtoField.new("Exchange Packet", "box.boxoptions.solaorderentry.sail.v2.25.exchangepacket", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.firm_packet = ProtoField.new("Firm Packet", "box.boxoptions.solaorderentry.sail.v2.25.firmpacket", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.incoming_header = ProtoField.new("Incoming Header", "box.boxoptions.solaorderentry.sail.v2.25.incomingheader", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.outgoing_header = ProtoField.new("Outgoing Header", "box.boxoptions.solaorderentry.sail.v2.25.outgoingheader", ftypes.STRING)

-- Box BoxOptions SolaOrderEntry 2.25 Application Messages
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.auction_entry = ProtoField.new("Auction Entry", "box.boxoptions.solaorderentry.sail.v2.25.auctionentry", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.auction_or_improvement_cancellation_acknowledgement = ProtoField.new("Auction Or Improvement Cancellation Acknowledgement", "box.boxoptions.solaorderentry.sail.v2.25.auctionorimprovementcancellationacknowledgement", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.bulk_quote = ProtoField.new("Bulk Quote", "box.boxoptions.solaorderentry.sail.v2.25.bulkquote", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.bulk_quote_acknowledgement = ProtoField.new("Bulk Quote Acknowledgement", "box.boxoptions.solaorderentry.sail.v2.25.bulkquoteacknowledgement", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.bulk_quote_data = ProtoField.new("Bulk Quote Data", "box.boxoptions.solaorderentry.sail.v2.25.bulkquotedata", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.bulk_quote_data_acknowledgement = ProtoField.new("Bulk Quote Data Acknowledgement", "box.boxoptions.solaorderentry.sail.v2.25.bulkquotedataacknowledgement", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.cancellation_of_all_quotes_notices = ProtoField.new("Cancellation Of All Quotes Notices", "box.boxoptions.solaorderentry.sail.v2.25.cancellationofallquotesnotices", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.complex_order_auction_acknowledgement = ProtoField.new("Complex Order Auction Acknowledgement", "box.boxoptions.solaorderentry.sail.v2.25.complexorderauctionacknowledgement", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.complex_order_auction_entry = ProtoField.new("Complex Order Auction Entry", "box.boxoptions.solaorderentry.sail.v2.25.complexorderauctionentry", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.connection_acknowledgement = ProtoField.new("Connection Acknowledgement", "box.boxoptions.solaorderentry.sail.v2.25.connectionacknowledgement", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.directed_order_acceptation = ProtoField.new("Directed Order Acceptation", "box.boxoptions.solaorderentry.sail.v2.25.directedorderacceptation", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.directed_order_cancellation_notice = ProtoField.new("Directed Order Cancellation Notice", "box.boxoptions.solaorderentry.sail.v2.25.directedordercancellationnotice", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.directed_order_notice = ProtoField.new("Directed Order Notice", "box.boxoptions.solaorderentry.sail.v2.25.directedordernotice", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.directed_routed_order_rejection_and_quote = ProtoField.new("Directed Routed Order Rejection And Quote", "box.boxoptions.solaorderentry.sail.v2.25.directedroutedorderrejectionandquote", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.disconnection_acknowledgement = ProtoField.new("Disconnection Acknowledgement", "box.boxoptions.solaorderentry.sail.v2.25.disconnectionacknowledgement", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.disconnection_instruction = ProtoField.new("Disconnection Instruction", "box.boxoptions.solaorderentry.sail.v2.25.disconnectioninstruction", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.disconnection_instruction_acknowledgement = ProtoField.new("Disconnection Instruction Acknowledgement", "box.boxoptions.solaorderentry.sail.v2.25.disconnectioninstructionacknowledgement", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.end_of_transmission = ProtoField.new("End Of Transmission", "box.boxoptions.solaorderentry.sail.v2.25.endoftransmission", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.error_notice = ProtoField.new("Error Notice", "box.boxoptions.solaorderentry.sail.v2.25.errornotice", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.excluded_instrument_notice = ProtoField.new("Excluded Instrument Notice", "box.boxoptions.solaorderentry.sail.v2.25.excludedinstrumentnotice", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.executing_participant_connection = ProtoField.new("Executing Participant Connection", "box.boxoptions.solaorderentry.sail.v2.25.executingparticipantconnection", ftypes.BYTES)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.executing_participant_disconnection = ProtoField.new("Executing Participant Disconnection", "box.boxoptions.solaorderentry.sail.v2.25.executingparticipantdisconnection", ftypes.BYTES)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.execution_cancellation_notice = ProtoField.new("Execution Cancellation Notice", "box.boxoptions.solaorderentry.sail.v2.25.executioncancellationnotice", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.execution_notice = ProtoField.new("Execution Notice", "box.boxoptions.solaorderentry.sail.v2.25.executionnotice", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.global_cancellation = ProtoField.new("Global Cancellation", "box.boxoptions.solaorderentry.sail.v2.25.globalcancellation", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.global_cancellation_confirmation = ProtoField.new("Global Cancellation Confirmation", "box.boxoptions.solaorderentry.sail.v2.25.globalcancellationconfirmation", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.group_state_change = ProtoField.new("Group State Change", "box.boxoptions.solaorderentry.sail.v2.25.groupstatechange", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.heartbeat_question = ProtoField.new("Heartbeat Question", "box.boxoptions.solaorderentry.sail.v2.25.heartbeatquestion", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.heartbeat_response = ProtoField.new("Heartbeat Response", "box.boxoptions.solaorderentry.sail.v2.25.heartbeatresponse", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.improvement_order_acknowlegment = ProtoField.new("Improvement Order Acknowlegment", "box.boxoptions.solaorderentry.sail.v2.25.improvementorderacknowlegment", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.improvement_order_cancellation = ProtoField.new("Improvement Order Cancellation", "box.boxoptions.solaorderentry.sail.v2.25.improvementordercancellation", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.improvement_order_entry = ProtoField.new("Improvement Order Entry", "box.boxoptions.solaorderentry.sail.v2.25.improvementorderentry", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.leg_execution_cancellation_notice = ProtoField.new("Leg Execution Cancellation Notice", "box.boxoptions.solaorderentry.sail.v2.25.legexecutioncancellationnotice", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.leg_execution_notice = ProtoField.new("Leg Execution Notice", "box.boxoptions.solaorderentry.sail.v2.25.legexecutionnotice", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.market_maker_protection_subscription = ProtoField.new("Market Maker Protection Subscription", "box.boxoptions.solaorderentry.sail.v2.25.marketmakerprotectionsubscription", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.new_complex_order_instrument = ProtoField.new("New Complex Order Instrument", "box.boxoptions.solaorderentry.sail.v2.25.newcomplexorderinstrument", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.new_complex_order_instrument_acknowledgement = ProtoField.new("New Complex Order Instrument Acknowledgement", "box.boxoptions.solaorderentry.sail.v2.25.newcomplexorderinstrumentacknowledgement", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.order_acknowledgement = ProtoField.new("Order Acknowledgement", "box.boxoptions.solaorderentry.sail.v2.25.orderacknowledgement", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.order_cancellation = ProtoField.new("Order Cancellation", "box.boxoptions.solaorderentry.sail.v2.25.ordercancellation", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.order_cancellation_acknowledgement = ProtoField.new("Order Cancellation Acknowledgement", "box.boxoptions.solaorderentry.sail.v2.25.ordercancellationacknowledgement", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.order_cancellation_notice_by_system = ProtoField.new("Order Cancellation Notice By System", "box.boxoptions.solaorderentry.sail.v2.25.ordercancellationnoticebysystem", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.order_entry = ProtoField.new("Order Entry", "box.boxoptions.solaorderentry.sail.v2.25.orderentry", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.order_modification = ProtoField.new("Order Modification", "box.boxoptions.solaorderentry.sail.v2.25.ordermodification", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.order_modification_acknowledgement = ProtoField.new("Order Modification Acknowledgement", "box.boxoptions.solaorderentry.sail.v2.25.ordermodificationacknowledgement", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.out_of_sequence = ProtoField.new("Out Of Sequence", "box.boxoptions.solaorderentry.sail.v2.25.outofsequence", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.quality_market_maker_notification = ProtoField.new("Quality Market Maker Notification", "box.boxoptions.solaorderentry.sail.v2.25.qualitymarketmakernotification", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.quote_notice = ProtoField.new("Quote Notice", "box.boxoptions.solaorderentry.sail.v2.25.quotenotice", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.request_for_quote = ProtoField.new("Request For Quote", "box.boxoptions.solaorderentry.sail.v2.25.requestforquote", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.standard_acknowledgement = ProtoField.new("Standard Acknowledgement", "box.boxoptions.solaorderentry.sail.v2.25.standardacknowledgement", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.technical_error_notice = ProtoField.new("Technical Error Notice", "box.boxoptions.solaorderentry.sail.v2.25.technicalerrornotice", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.trader_status = ProtoField.new("Trader Status", "box.boxoptions.solaorderentry.sail.v2.25.traderstatus", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.user_connection = ProtoField.new("User Connection", "box.boxoptions.solaorderentry.sail.v2.25.userconnection", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.user_disconnection = ProtoField.new("User Disconnection", "box.boxoptions.solaorderentry.sail.v2.25.userdisconnection", ftypes.STRING)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.user_global_cancellation = ProtoField.new("User Global Cancellation", "box.boxoptions.solaorderentry.sail.v2.25.userglobalcancellation", ftypes.STRING)

-- Box BoxOptions SolaOrderEntry Sail 2.25 Generated Fields
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.bulk_quote_acknowledgement_occurrence_index = ProtoField.new("Bulk Quote Acknowledgement Occurrence Index", "box.boxoptions.solaorderentry.sail.v2.25.bulkquoteacknowledgementoccurrenceindex", ftypes.UINT16)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.bulk_quote_occurrence_index = ProtoField.new("Bulk Quote Occurrence Index", "box.boxoptions.solaorderentry.sail.v2.25.bulkquoteoccurrenceindex", ftypes.UINT16)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.complex_order_auction_entry_occurrence_index = ProtoField.new("Complex Order Auction Entry Occurrence Index", "box.boxoptions.solaorderentry.sail.v2.25.complexorderauctionentryoccurrenceindex", ftypes.UINT16)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.disconnection_instruction_occurrence_index = ProtoField.new("Disconnection Instruction Occurrence Index", "box.boxoptions.solaorderentry.sail.v2.25.disconnectioninstructionoccurrenceindex", ftypes.UINT16)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.new_complex_order_instrument_acknowledgement_occurrence_index = ProtoField.new("New Complex Order Instrument Acknowledgement Occurrence Index", "box.boxoptions.solaorderentry.sail.v2.25.newcomplexorderinstrumentacknowledgementoccurrenceindex", ftypes.UINT16)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.new_complex_order_instrument_occurrence_index = ProtoField.new("New Complex Order Instrument Occurrence Index", "box.boxoptions.solaorderentry.sail.v2.25.newcomplexorderinstrumentoccurrenceindex", ftypes.UINT16)
omi_box_boxoptions_solaorderentry_sail_v2_25.fields.user_connection_occurrence_index = ProtoField.new("User Connection Occurrence Index", "box.boxoptions.solaorderentry.sail.v2.25.userconnectionoccurrenceindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Box BoxOptions SolaOrderEntry Sail 2.25 Formatting
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

-- Box BoxOptions SolaOrderEntry Sail 2.25 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true

-- Register Box BoxOptions SolaOrderEntry Sail 2.25 Show Options
omi_box_boxoptions_solaorderentry_sail_v2_25.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_box_boxoptions_solaorderentry_sail_v2_25.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_box_boxoptions_solaorderentry_sail_v2_25.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_box_boxoptions_solaorderentry_sail_v2_25.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_box_boxoptions_solaorderentry_sail_v2_25.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_box_boxoptions_solaorderentry_sail_v2_25.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_box_boxoptions_solaorderentry_sail_v2_25.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

-- Handle changed preferences
function omi_box_boxoptions_solaorderentry_sail_v2_25.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_box_boxoptions_solaorderentry_sail_v2_25.prefs.show_application_messages then
    show.application_messages = omi_box_boxoptions_solaorderentry_sail_v2_25.prefs.show_application_messages
  end
  if show.headers ~= omi_box_boxoptions_solaorderentry_sail_v2_25.prefs.show_headers then
    show.headers = omi_box_boxoptions_solaorderentry_sail_v2_25.prefs.show_headers
  end
  if show.structs ~= omi_box_boxoptions_solaorderentry_sail_v2_25.prefs.show_structs then
    show.structs = omi_box_boxoptions_solaorderentry_sail_v2_25.prefs.show_structs
  end
  if show.indexes ~= omi_box_boxoptions_solaorderentry_sail_v2_25.prefs.show_indexes then
    show.indexes = omi_box_boxoptions_solaorderentry_sail_v2_25.prefs.show_indexes
  end
end


-----------------------------------------------------------------------
-- Box BoxOptions SolaOrderEntry Sail 2.25 Fields
-----------------------------------------------------------------------

-- 1 To 9999 Occurrences Instrument
box_boxoptions_solaorderentry_sail_v2_25._1_to_9999_occurrences_instrument = {}

-- Size: 1 To 9999 Occurrences Instrument
box_boxoptions_solaorderentry_sail_v2_25._1_to_9999_occurrences_instrument.size = 4

-- Display: 1 To 9999 Occurrences Instrument
box_boxoptions_solaorderentry_sail_v2_25._1_to_9999_occurrences_instrument.display = function(value)
  return "1 To 9999 Occurrences Instrument: "..value
end

-- Dissect: 1 To 9999 Occurrences Instrument
box_boxoptions_solaorderentry_sail_v2_25._1_to_9999_occurrences_instrument.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25._1_to_9999_occurrences_instrument.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25._1_to_9999_occurrences_instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields._1_to_9999_occurrences_instrument, range, value, display)

  return offset + length, value
end

-- Account Type
box_boxoptions_solaorderentry_sail_v2_25.account_type = {}

-- Size: Account Type
box_boxoptions_solaorderentry_sail_v2_25.account_type.size = 1

-- Display: Account Type
box_boxoptions_solaorderentry_sail_v2_25.account_type.display = function(value)
  if value == "6" then
    return "Account Type: Public Customer (6)"
  end
  if value == "7" then
    return "Account Type: Broker Dealer (7)"
  end
  if value == "8" then
    return "Account Type: Market Maker (8)"
  end
  if value == "T" then
    return "Account Type: Professional Customer (T)"
  end
  if value == "W" then
    return "Account Type: Broker Dealer Cleared As Customer (W)"
  end
  if value == "X" then
    return "Account Type: Away Market Maker (X)"
  end

  return "Account Type: Unknown("..value..")"
end

-- Dissect: Account Type
box_boxoptions_solaorderentry_sail_v2_25.account_type.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.account_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.account_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.account_type, range, value, display)

  return offset + length, value
end

-- Account Type Filter
box_boxoptions_solaorderentry_sail_v2_25.account_type_filter = {}

-- Size: Account Type Filter
box_boxoptions_solaorderentry_sail_v2_25.account_type_filter.size = 8

-- Display: Account Type Filter
box_boxoptions_solaorderentry_sail_v2_25.account_type_filter.display = function(value)
  return "Account Type Filter: "..value
end

-- Dissect: Account Type Filter
box_boxoptions_solaorderentry_sail_v2_25.account_type_filter.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.account_type_filter.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.account_type_filter.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.account_type_filter, range, value, display)

  return offset + length, value
end

-- Action
box_boxoptions_solaorderentry_sail_v2_25.action = {}

-- Size: Action
box_boxoptions_solaorderentry_sail_v2_25.action.size = 1

-- Display: Action
box_boxoptions_solaorderentry_sail_v2_25.action.display = function(value)
  if value == "Q" then
    return "Action: Quantity Update (Q)"
  end
  if value == "S" then
    return "Action: Shelved (S)"
  end
  if value == "U" then
    return "Action: Unshelved (U)"
  end

  return "Action: Unknown("..value..")"
end

-- Dissect: Action
box_boxoptions_solaorderentry_sail_v2_25.action.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.action.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.action, range, value, display)

  return offset + length, value
end

-- Active Y On N Off
box_boxoptions_solaorderentry_sail_v2_25.active_y_on_n_off = {}

-- Size: Active Y On N Off
box_boxoptions_solaorderentry_sail_v2_25.active_y_on_n_off.size = 1

-- Display: Active Y On N Off
box_boxoptions_solaorderentry_sail_v2_25.active_y_on_n_off.display = function(value)
  if value == "Y" then
    return "Active Y On N Off: Yes (Y)"
  end
  if value == "N" then
    return "Active Y On N Off: No (N)"
  end

  return "Active Y On N Off: Unknown("..value..")"
end

-- Dissect: Active Y On N Off
box_boxoptions_solaorderentry_sail_v2_25.active_y_on_n_off.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.active_y_on_n_off.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.active_y_on_n_off.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.active_y_on_n_off, range, value, display)

  return offset + length, value
end

-- Additional Client Memo
box_boxoptions_solaorderentry_sail_v2_25.additional_client_memo = {}

-- Size: Additional Client Memo
box_boxoptions_solaorderentry_sail_v2_25.additional_client_memo.size = 16

-- Display: Additional Client Memo
box_boxoptions_solaorderentry_sail_v2_25.additional_client_memo.display = function(value)
  return "Additional Client Memo: "..value
end

-- Dissect: Additional Client Memo
box_boxoptions_solaorderentry_sail_v2_25.additional_client_memo.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.additional_client_memo.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.additional_client_memo.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.additional_client_memo, range, value, display)

  return offset + length, value
end

-- Additional Price
box_boxoptions_solaorderentry_sail_v2_25.additional_price = {}

-- Size: Additional Price
box_boxoptions_solaorderentry_sail_v2_25.additional_price.size = 10

-- Display: Additional Price
box_boxoptions_solaorderentry_sail_v2_25.additional_price.display = function(value)
  return "Additional Price: "..value
end

-- Dissect: Additional Price
box_boxoptions_solaorderentry_sail_v2_25.additional_price.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.additional_price.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.additional_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.additional_price, range, value, display)

  return offset + length, value
end

-- Additional Quantity Additional Quantity 8
box_boxoptions_solaorderentry_sail_v2_25.additional_quantity_additional_quantity_8 = {}

-- Size: Additional Quantity Additional Quantity 8
box_boxoptions_solaorderentry_sail_v2_25.additional_quantity_additional_quantity_8.size = 8

-- Display: Additional Quantity Additional Quantity 8
box_boxoptions_solaorderentry_sail_v2_25.additional_quantity_additional_quantity_8.display = function(value)
  return "Additional Quantity Additional Quantity 8: "..value
end

-- Dissect: Additional Quantity Additional Quantity 8
box_boxoptions_solaorderentry_sail_v2_25.additional_quantity_additional_quantity_8.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.additional_quantity_additional_quantity_8.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solaorderentry_sail_v2_25.additional_quantity_additional_quantity_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.additional_quantity_additional_quantity_8, range, value, display)

  return offset + length, value
end

-- Additional Quantity Quantity 8
box_boxoptions_solaorderentry_sail_v2_25.additional_quantity_quantity_8 = {}

-- Size: Additional Quantity Quantity 8
box_boxoptions_solaorderentry_sail_v2_25.additional_quantity_quantity_8.size = 8

-- Display: Additional Quantity Quantity 8
box_boxoptions_solaorderentry_sail_v2_25.additional_quantity_quantity_8.display = function(value)
  return "Additional Quantity Quantity 8: "..value
end

-- Dissect: Additional Quantity Quantity 8
box_boxoptions_solaorderentry_sail_v2_25.additional_quantity_quantity_8.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.additional_quantity_quantity_8.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solaorderentry_sail_v2_25.additional_quantity_quantity_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.additional_quantity_quantity_8, range, value, display)

  return offset + length, value
end

-- Assigned Price
box_boxoptions_solaorderentry_sail_v2_25.assigned_price = {}

-- Size: Assigned Price
box_boxoptions_solaorderentry_sail_v2_25.assigned_price.size = 10

-- Display: Assigned Price
box_boxoptions_solaorderentry_sail_v2_25.assigned_price.display = function(value)
  return "Assigned Price: "..value
end

-- Dissect: Assigned Price
box_boxoptions_solaorderentry_sail_v2_25.assigned_price.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.assigned_price.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.assigned_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.assigned_price, range, value, display)

  return offset + length, value
end

-- Auction Id
box_boxoptions_solaorderentry_sail_v2_25.auction_id = {}

-- Size: Auction Id
box_boxoptions_solaorderentry_sail_v2_25.auction_id.size = 6

-- Display: Auction Id
box_boxoptions_solaorderentry_sail_v2_25.auction_id.display = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
box_boxoptions_solaorderentry_sail_v2_25.auction_id.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.auction_id.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solaorderentry_sail_v2_25.auction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Auction Id Only If Message Type Is Ki Or Else Zeroes
box_boxoptions_solaorderentry_sail_v2_25.auction_id_only_if_message_type_is_ki_or_else_zeroes = {}

-- Size: Auction Id Only If Message Type Is Ki Or Else Zeroes
box_boxoptions_solaorderentry_sail_v2_25.auction_id_only_if_message_type_is_ki_or_else_zeroes.size = 6

-- Display: Auction Id Only If Message Type Is Ki Or Else Zeroes
box_boxoptions_solaorderentry_sail_v2_25.auction_id_only_if_message_type_is_ki_or_else_zeroes.display = function(value)
  return "Auction Id Only If Message Type Is Ki Or Else Zeroes: "..value
end

-- Dissect: Auction Id Only If Message Type Is Ki Or Else Zeroes
box_boxoptions_solaorderentry_sail_v2_25.auction_id_only_if_message_type_is_ki_or_else_zeroes.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.auction_id_only_if_message_type_is_ki_or_else_zeroes.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solaorderentry_sail_v2_25.auction_id_only_if_message_type_is_ki_or_else_zeroes.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.auction_id_only_if_message_type_is_ki_or_else_zeroes, range, value, display)

  return offset + length, value
end

-- Auction Price
box_boxoptions_solaorderentry_sail_v2_25.auction_price = {}

-- Size: Auction Price
box_boxoptions_solaorderentry_sail_v2_25.auction_price.size = 10

-- Display: Auction Price
box_boxoptions_solaorderentry_sail_v2_25.auction_price.display = function(value)
  return "Auction Price: "..value
end

-- Dissect: Auction Price
box_boxoptions_solaorderentry_sail_v2_25.auction_price.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.auction_price.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.auction_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.auction_price, range, value, display)

  return offset + length, value
end

-- Auction Quantity
box_boxoptions_solaorderentry_sail_v2_25.auction_quantity = {}

-- Size: Auction Quantity
box_boxoptions_solaorderentry_sail_v2_25.auction_quantity.size = 8

-- Display: Auction Quantity
box_boxoptions_solaorderentry_sail_v2_25.auction_quantity.display = function(value)
  return "Auction Quantity: "..value
end

-- Dissect: Auction Quantity
box_boxoptions_solaorderentry_sail_v2_25.auction_quantity.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.auction_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solaorderentry_sail_v2_25.auction_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.auction_quantity, range, value, display)

  return offset + length, value
end

-- Auction Starting Price
box_boxoptions_solaorderentry_sail_v2_25.auction_starting_price = {}

-- Size: Auction Starting Price
box_boxoptions_solaorderentry_sail_v2_25.auction_starting_price.size = 10

-- Display: Auction Starting Price
box_boxoptions_solaorderentry_sail_v2_25.auction_starting_price.display = function(value)
  return "Auction Starting Price: "..value
end

-- Dissect: Auction Starting Price
box_boxoptions_solaorderentry_sail_v2_25.auction_starting_price.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.auction_starting_price.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.auction_starting_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.auction_starting_price, range, value, display)

  return offset + length, value
end

-- Buying Additional Client Memo
box_boxoptions_solaorderentry_sail_v2_25.buying_additional_client_memo = {}

-- Size: Buying Additional Client Memo
box_boxoptions_solaorderentry_sail_v2_25.buying_additional_client_memo.size = 16

-- Display: Buying Additional Client Memo
box_boxoptions_solaorderentry_sail_v2_25.buying_additional_client_memo.display = function(value)
  return "Buying Additional Client Memo: "..value
end

-- Dissect: Buying Additional Client Memo
box_boxoptions_solaorderentry_sail_v2_25.buying_additional_client_memo.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.buying_additional_client_memo.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.buying_additional_client_memo.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.buying_additional_client_memo, range, value, display)

  return offset + length, value
end

-- Calculation Time Interval
box_boxoptions_solaorderentry_sail_v2_25.calculation_time_interval = {}

-- Size: Calculation Time Interval
box_boxoptions_solaorderentry_sail_v2_25.calculation_time_interval.size = 8

-- Display: Calculation Time Interval
box_boxoptions_solaorderentry_sail_v2_25.calculation_time_interval.display = function(value)
  return "Calculation Time Interval: "..value
end

-- Dissect: Calculation Time Interval
box_boxoptions_solaorderentry_sail_v2_25.calculation_time_interval.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.calculation_time_interval.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solaorderentry_sail_v2_25.calculation_time_interval.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.calculation_time_interval, range, value, display)

  return offset + length, value
end

-- Cancelled Order Id
box_boxoptions_solaorderentry_sail_v2_25.cancelled_order_id = {}

-- Size: Cancelled Order Id
box_boxoptions_solaorderentry_sail_v2_25.cancelled_order_id.size = 8

-- Display: Cancelled Order Id
box_boxoptions_solaorderentry_sail_v2_25.cancelled_order_id.display = function(value)
  return "Cancelled Order Id: "..value
end

-- Dissect: Cancelled Order Id
box_boxoptions_solaorderentry_sail_v2_25.cancelled_order_id.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.cancelled_order_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.cancelled_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.cancelled_order_id, range, value, display)

  return offset + length, value
end

-- Clearing Destination
box_boxoptions_solaorderentry_sail_v2_25.clearing_destination = {}

-- Size: Clearing Destination
box_boxoptions_solaorderentry_sail_v2_25.clearing_destination.size = 4

-- Display: Clearing Destination
box_boxoptions_solaorderentry_sail_v2_25.clearing_destination.display = function(value)
  return "Clearing Destination: "..value
end

-- Dissect: Clearing Destination
box_boxoptions_solaorderentry_sail_v2_25.clearing_destination.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.clearing_destination.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.clearing_destination.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.clearing_destination, range, value, display)

  return offset + length, value
end

-- Clearing Instruction
box_boxoptions_solaorderentry_sail_v2_25.clearing_instruction = {}

-- Size: Clearing Instruction
box_boxoptions_solaorderentry_sail_v2_25.clearing_instruction.size = 12

-- Display: Clearing Instruction
box_boxoptions_solaorderentry_sail_v2_25.clearing_instruction.display = function(value)
  return "Clearing Instruction: "..value
end

-- Dissect: Clearing Instruction
box_boxoptions_solaorderentry_sail_v2_25.clearing_instruction.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.clearing_instruction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.clearing_instruction.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.clearing_instruction, range, value, display)

  return offset + length, value
end

-- Client Order Id
box_boxoptions_solaorderentry_sail_v2_25.client_order_id = {}

-- Size: Client Order Id
box_boxoptions_solaorderentry_sail_v2_25.client_order_id.size = 20

-- Display: Client Order Id
box_boxoptions_solaorderentry_sail_v2_25.client_order_id.display = function(value)
  return "Client Order Id: "..value
end

-- Dissect: Client Order Id
box_boxoptions_solaorderentry_sail_v2_25.client_order_id.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.client_order_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.client_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.client_order_id, range, value, display)

  return offset + length, value
end

-- Counterpart Account Type
box_boxoptions_solaorderentry_sail_v2_25.counterpart_account_type = {}

-- Size: Counterpart Account Type
box_boxoptions_solaorderentry_sail_v2_25.counterpart_account_type.size = 1

-- Display: Counterpart Account Type
box_boxoptions_solaorderentry_sail_v2_25.counterpart_account_type.display = function(value)
  if value == "6" then
    return "Counterpart Account Type: Public Customer (6)"
  end
  if value == "7" then
    return "Counterpart Account Type: Broker Dealer (7)"
  end
  if value == "8" then
    return "Counterpart Account Type: Market Maker (8)"
  end
  if value == "T" then
    return "Counterpart Account Type: Professional Customer (T)"
  end
  if value == "W" then
    return "Counterpart Account Type: Broker Dealer Cleared As Customer (W)"
  end
  if value == "X" then
    return "Counterpart Account Type: Away Market Maker (X)"
  end

  return "Counterpart Account Type: Unknown("..value..")"
end

-- Dissect: Counterpart Account Type
box_boxoptions_solaorderentry_sail_v2_25.counterpart_account_type.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.counterpart_account_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.counterpart_account_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.counterpart_account_type, range, value, display)

  return offset + length, value
end

-- Creation Status
box_boxoptions_solaorderentry_sail_v2_25.creation_status = {}

-- Size: Creation Status
box_boxoptions_solaorderentry_sail_v2_25.creation_status.size = 1

-- Display: Creation Status
box_boxoptions_solaorderentry_sail_v2_25.creation_status.display = function(value)
  return "Creation Status: "..value
end

-- Dissect: Creation Status
box_boxoptions_solaorderentry_sail_v2_25.creation_status.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.creation_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.creation_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.creation_status, range, value, display)

  return offset + length, value
end

-- Current Session Id
box_boxoptions_solaorderentry_sail_v2_25.current_session_id = {}

-- Size: Current Session Id
box_boxoptions_solaorderentry_sail_v2_25.current_session_id.size = 4

-- Display: Current Session Id
box_boxoptions_solaorderentry_sail_v2_25.current_session_id.display = function(value)
  return "Current Session Id: "..value
end

-- Dissect: Current Session Id
box_boxoptions_solaorderentry_sail_v2_25.current_session_id.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.current_session_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.current_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.current_session_id, range, value, display)

  return offset + length, value
end

-- Disconnection Instruction Note Cancel Quotes Only Q Quotes Only
box_boxoptions_solaorderentry_sail_v2_25.disconnection_instruction_note_cancel_quotes_only_q_quotes_only = {}

-- Size: Disconnection Instruction Note Cancel Quotes Only Q Quotes Only
box_boxoptions_solaorderentry_sail_v2_25.disconnection_instruction_note_cancel_quotes_only_q_quotes_only.size = 1

-- Display: Disconnection Instruction Note Cancel Quotes Only Q Quotes Only
box_boxoptions_solaorderentry_sail_v2_25.disconnection_instruction_note_cancel_quotes_only_q_quotes_only.display = function(value)
  if value == "A" then
    return "Disconnection Instruction Note Cancel Quotes Only Q Quotes Only: All (A)"
  end
  if value == "L" then
    return "Disconnection Instruction Note Cancel Quotes Only Q Quotes Only: Locked (L)"
  end
  if value == "O" then
    return "Disconnection Instruction Note Cancel Quotes Only Q Quotes Only: Orders Only (O)"
  end
  if value == "Q" then
    return "Disconnection Instruction Note Cancel Quotes Only Q Quotes Only: Quotes Only (Q)"
  end

  return "Disconnection Instruction Note Cancel Quotes Only Q Quotes Only: Unknown("..value..")"
end

-- Dissect: Disconnection Instruction Note Cancel Quotes Only Q Quotes Only
box_boxoptions_solaorderentry_sail_v2_25.disconnection_instruction_note_cancel_quotes_only_q_quotes_only.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.disconnection_instruction_note_cancel_quotes_only_q_quotes_only.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.disconnection_instruction_note_cancel_quotes_only_q_quotes_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.disconnection_instruction_note_cancel_quotes_only_q_quotes_only, range, value, display)

  return offset + length, value
end

-- Duration Type
box_boxoptions_solaorderentry_sail_v2_25.duration_type = {}

-- Size: Duration Type
box_boxoptions_solaorderentry_sail_v2_25.duration_type.size = 1

-- Display: Duration Type
box_boxoptions_solaorderentry_sail_v2_25.duration_type.display = function(value)
  if value == "A" then
    return "Duration Type: Auction Or Kill (A)"
  end
  if value == "D" then
    return "Duration Type: Order Is Valid Until Gtd Date Gtd (D)"
  end
  if value == "E" then
    return "Duration Type: Immediate Order Cannot Be Booked Fak (E)"
  end
  if value == "F" then
    return "Duration Type: Valid Until Instrument Expiration Gtc (F)"
  end
  if value == "J" then
    return "Duration Type: Valid For The Current Day Only Day (J)"
  end
  if value == "W" then
    return "Duration Type: Valid For The Current Session Order Only (W)"
  end

  return "Duration Type: Unknown("..value..")"
end

-- Dissect: Duration Type
box_boxoptions_solaorderentry_sail_v2_25.duration_type.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.duration_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.duration_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.duration_type, range, value, display)

  return offset + length, value
end

-- Enabled Y Yes N No
box_boxoptions_solaorderentry_sail_v2_25.enabled_y_yes_n_no = {}

-- Size: Enabled Y Yes N No
box_boxoptions_solaorderentry_sail_v2_25.enabled_y_yes_n_no.size = 1

-- Display: Enabled Y Yes N No
box_boxoptions_solaorderentry_sail_v2_25.enabled_y_yes_n_no.display = function(value)
  if value == "Y" then
    return "Enabled Y Yes N No: Yes (Y)"
  end
  if value == "N" then
    return "Enabled Y Yes N No: No (N)"
  end

  return "Enabled Y Yes N No: Unknown("..value..")"
end

-- Dissect: Enabled Y Yes N No
box_boxoptions_solaorderentry_sail_v2_25.enabled_y_yes_n_no.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.enabled_y_yes_n_no.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.enabled_y_yes_n_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.enabled_y_yes_n_no, range, value, display)

  return offset + length, value
end

-- End Of Text
box_boxoptions_solaorderentry_sail_v2_25.end_of_text = {}

-- Size: End Of Text
box_boxoptions_solaorderentry_sail_v2_25.end_of_text.size = 1

-- Display: End Of Text
box_boxoptions_solaorderentry_sail_v2_25.end_of_text.display = function(value)
  if value == 3 then
    return "End Of Text: Etx"
  end

  return "End Of Text: Unknown("..value..")"
end

-- Dissect: End Of Text
box_boxoptions_solaorderentry_sail_v2_25.end_of_text.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.end_of_text.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = box_boxoptions_solaorderentry_sail_v2_25.end_of_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.end_of_text, range, value, display)

  return offset + length, value
end

-- Ended Session Id
box_boxoptions_solaorderentry_sail_v2_25.ended_session_id = {}

-- Size: Ended Session Id
box_boxoptions_solaorderentry_sail_v2_25.ended_session_id.size = 4

-- Display: Ended Session Id
box_boxoptions_solaorderentry_sail_v2_25.ended_session_id.display = function(value)
  return "Ended Session Id: "..value
end

-- Dissect: Ended Session Id
box_boxoptions_solaorderentry_sail_v2_25.ended_session_id.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.ended_session_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.ended_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.ended_session_id, range, value, display)

  return offset + length, value
end

-- Error Code
box_boxoptions_solaorderentry_sail_v2_25.error_code = {}

-- Size: Error Code
box_boxoptions_solaorderentry_sail_v2_25.error_code.size = 4

-- Display: Error Code
box_boxoptions_solaorderentry_sail_v2_25.error_code.display = function(value)
  return "Error Code: "..value
end

-- Dissect: Error Code
box_boxoptions_solaorderentry_sail_v2_25.error_code.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.error_code.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solaorderentry_sail_v2_25.error_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.error_code, range, value, display)

  return offset + length, value
end

-- Error Description
box_boxoptions_solaorderentry_sail_v2_25.error_description = {}

-- Size: Error Description
box_boxoptions_solaorderentry_sail_v2_25.error_description.size = 100

-- Display: Error Description
box_boxoptions_solaorderentry_sail_v2_25.error_description.display = function(value)
  return "Error Description: "..value
end

-- Dissect: Error Description
box_boxoptions_solaorderentry_sail_v2_25.error_description.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.error_description.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.error_description.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.error_description, range, value, display)

  return offset + length, value
end

-- Error Detail
box_boxoptions_solaorderentry_sail_v2_25.error_detail = {}

-- Size: Error Detail
box_boxoptions_solaorderentry_sail_v2_25.error_detail.size = 200

-- Display: Error Detail
box_boxoptions_solaorderentry_sail_v2_25.error_detail.display = function(value)
  return "Error Detail: "..value
end

-- Dissect: Error Detail
box_boxoptions_solaorderentry_sail_v2_25.error_detail.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.error_detail.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.error_detail.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.error_detail, range, value, display)

  return offset + length, value
end

-- Error Message
box_boxoptions_solaorderentry_sail_v2_25.error_message = {}

-- Size: Error Message
box_boxoptions_solaorderentry_sail_v2_25.error_message.size = 100

-- Display: Error Message
box_boxoptions_solaorderentry_sail_v2_25.error_message.display = function(value)
  return "Error Message: "..value
end

-- Dissect: Error Message
box_boxoptions_solaorderentry_sail_v2_25.error_message.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.error_message.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.error_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.error_message, range, value, display)

  return offset + length, value
end

-- Error Position
box_boxoptions_solaorderentry_sail_v2_25.error_position = {}

-- Size: Error Position
box_boxoptions_solaorderentry_sail_v2_25.error_position.size = 4

-- Display: Error Position
box_boxoptions_solaorderentry_sail_v2_25.error_position.display = function(value)
  return "Error Position: "..value
end

-- Dissect: Error Position
box_boxoptions_solaorderentry_sail_v2_25.error_position.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.error_position.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solaorderentry_sail_v2_25.error_position.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.error_position, range, value, display)

  return offset + length, value
end

-- Exchange Message Id
box_boxoptions_solaorderentry_sail_v2_25.exchange_message_id = {}

-- Size: Exchange Message Id
box_boxoptions_solaorderentry_sail_v2_25.exchange_message_id.size = 6

-- Display: Exchange Message Id
box_boxoptions_solaorderentry_sail_v2_25.exchange_message_id.display = function(value)
  return "Exchange Message Id: "..value
end

-- Dissect: Exchange Message Id
box_boxoptions_solaorderentry_sail_v2_25.exchange_message_id.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.exchange_message_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.exchange_message_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.exchange_message_id, range, value, display)

  return offset + length, value
end

-- Executing Participant
box_boxoptions_solaorderentry_sail_v2_25.executing_participant = {}

-- Size: Executing Participant
box_boxoptions_solaorderentry_sail_v2_25.executing_participant.size = 4

-- Display: Executing Participant
box_boxoptions_solaorderentry_sail_v2_25.executing_participant.display = function(value)
  return "Executing Participant: "..value
end

-- Dissect: Executing Participant
box_boxoptions_solaorderentry_sail_v2_25.executing_participant.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.executing_participant.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.executing_participant.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.executing_participant, range, value, display)

  return offset + length, value
end

-- Expected Last User Sequence Id
box_boxoptions_solaorderentry_sail_v2_25.expected_last_user_sequence_id = {}

-- Size: Expected Last User Sequence Id
box_boxoptions_solaorderentry_sail_v2_25.expected_last_user_sequence_id.size = 8

-- Display: Expected Last User Sequence Id
box_boxoptions_solaorderentry_sail_v2_25.expected_last_user_sequence_id.display = function(value)
  return "Expected Last User Sequence Id: "..value
end

-- Dissect: Expected Last User Sequence Id
box_boxoptions_solaorderentry_sail_v2_25.expected_last_user_sequence_id.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.expected_last_user_sequence_id.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solaorderentry_sail_v2_25.expected_last_user_sequence_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.expected_last_user_sequence_id, range, value, display)

  return offset + length, value
end

-- Filler 2
box_boxoptions_solaorderentry_sail_v2_25.filler_2 = {}

-- Size: Filler 2
box_boxoptions_solaorderentry_sail_v2_25.filler_2.size = 2

-- Display: Filler 2
box_boxoptions_solaorderentry_sail_v2_25.filler_2.display = function(value)
  return "Filler 2: "..value
end

-- Dissect: Filler 2
box_boxoptions_solaorderentry_sail_v2_25.filler_2.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.filler_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = box_boxoptions_solaorderentry_sail_v2_25.filler_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.filler_2, range, value, display)

  return offset + length, value
end

-- Filler Must Be Blank 2 String 11
box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_2_string_11 = {}

-- Size: Filler Must Be Blank 2 String 11
box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_2_string_11.size = 1

-- Display: Filler Must Be Blank 2 String 11
box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_2_string_11.display = function(value)
  return "Filler Must Be Blank 2 String 11: "..value
end

-- Dissect: Filler Must Be Blank 2 String 11
box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_2_string_11.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_2_string_11.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_2_string_11.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.filler_must_be_blank_2_string_11, range, value, display)

  return offset + length, value
end

-- Filler Must Be Blank 2 String 44
box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_2_string_44 = {}

-- Size: Filler Must Be Blank 2 String 44
box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_2_string_44.size = 4

-- Display: Filler Must Be Blank 2 String 44
box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_2_string_44.display = function(value)
  return "Filler Must Be Blank 2 String 44: "..value
end

-- Dissect: Filler Must Be Blank 2 String 44
box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_2_string_44.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_2_string_44.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_2_string_44.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.filler_must_be_blank_2_string_44, range, value, display)

  return offset + length, value
end

-- Filler Must Be Blank 2 String 88
box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_2_string_88 = {}

-- Size: Filler Must Be Blank 2 String 88
box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_2_string_88.size = 8

-- Display: Filler Must Be Blank 2 String 88
box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_2_string_88.display = function(value)
  return "Filler Must Be Blank 2 String 88: "..value
end

-- Dissect: Filler Must Be Blank 2 String 88
box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_2_string_88.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_2_string_88.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_2_string_88.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.filler_must_be_blank_2_string_88, range, value, display)

  return offset + length, value
end

-- Filler Must Be Blank 3 String 22
box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_3_string_22 = {}

-- Size: Filler Must Be Blank 3 String 22
box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_3_string_22.size = 2

-- Display: Filler Must Be Blank 3 String 22
box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_3_string_22.display = function(value)
  return "Filler Must Be Blank 3 String 22: "..value
end

-- Dissect: Filler Must Be Blank 3 String 22
box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_3_string_22.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_3_string_22.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_3_string_22.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.filler_must_be_blank_3_string_22, range, value, display)

  return offset + length, value
end

-- Filler Must Be Blank 3 String 88
box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_3_string_88 = {}

-- Size: Filler Must Be Blank 3 String 88
box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_3_string_88.size = 8

-- Display: Filler Must Be Blank 3 String 88
box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_3_string_88.display = function(value)
  return "Filler Must Be Blank 3 String 88: "..value
end

-- Dissect: Filler Must Be Blank 3 String 88
box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_3_string_88.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_3_string_88.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_3_string_88.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.filler_must_be_blank_3_string_88, range, value, display)

  return offset + length, value
end

-- Filler Must Be Blank 4
box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_4 = {}

-- Size: Filler Must Be Blank 4
box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_4.size = 4

-- Display: Filler Must Be Blank 4
box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_4.display = function(value)
  return "Filler Must Be Blank 4: "..value
end

-- Dissect: Filler Must Be Blank 4
box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_4.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.filler_must_be_blank_4, range, value, display)

  return offset + length, value
end

-- Filler Must Be Blank String 1010
box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_string_1010 = {}

-- Size: Filler Must Be Blank String 1010
box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_string_1010.size = 10

-- Display: Filler Must Be Blank String 1010
box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_string_1010.display = function(value)
  return "Filler Must Be Blank String 1010: "..value
end

-- Dissect: Filler Must Be Blank String 1010
box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_string_1010.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_string_1010.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_string_1010.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.filler_must_be_blank_string_1010, range, value, display)

  return offset + length, value
end

-- Filler Must Be Blank String 11
box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_string_11 = {}

-- Size: Filler Must Be Blank String 11
box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_string_11.size = 1

-- Display: Filler Must Be Blank String 11
box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_string_11.display = function(value)
  return "Filler Must Be Blank String 11: "..value
end

-- Dissect: Filler Must Be Blank String 11
box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_string_11.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_string_11.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_string_11.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.filler_must_be_blank_string_11, range, value, display)

  return offset + length, value
end

-- Filler Must Be Blank String 22
box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_string_22 = {}

-- Size: Filler Must Be Blank String 22
box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_string_22.size = 2

-- Display: Filler Must Be Blank String 22
box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_string_22.display = function(value)
  return "Filler Must Be Blank String 22: "..value
end

-- Dissect: Filler Must Be Blank String 22
box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_string_22.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_string_22.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_string_22.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.filler_must_be_blank_string_22, range, value, display)

  return offset + length, value
end

-- Filler Must Be Blank String 44
box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_string_44 = {}

-- Size: Filler Must Be Blank String 44
box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_string_44.size = 4

-- Display: Filler Must Be Blank String 44
box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_string_44.display = function(value)
  return "Filler Must Be Blank String 44: "..value
end

-- Dissect: Filler Must Be Blank String 44
box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_string_44.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_string_44.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_string_44.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.filler_must_be_blank_string_44, range, value, display)

  return offset + length, value
end

-- Filler Must Be Spaces
box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_spaces = {}

-- Size: Filler Must Be Spaces
box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_spaces.size = 1

-- Display: Filler Must Be Spaces
box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_spaces.display = function(value)
  return "Filler Must Be Spaces: "..value
end

-- Dissect: Filler Must Be Spaces
box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_spaces.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_spaces.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_spaces.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.filler_must_be_spaces, range, value, display)

  return offset + length, value
end

-- Filler Numeric 66
box_boxoptions_solaorderentry_sail_v2_25.filler_numeric_66 = {}

-- Size: Filler Numeric 66
box_boxoptions_solaorderentry_sail_v2_25.filler_numeric_66.size = 6

-- Display: Filler Numeric 66
box_boxoptions_solaorderentry_sail_v2_25.filler_numeric_66.display = function(value)
  return "Filler Numeric 66: "..value
end

-- Dissect: Filler Numeric 66
box_boxoptions_solaorderentry_sail_v2_25.filler_numeric_66.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.filler_numeric_66.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = box_boxoptions_solaorderentry_sail_v2_25.filler_numeric_66.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.filler_numeric_66, range, value, display)

  return offset + length, value
end

-- Filler String 1717
box_boxoptions_solaorderentry_sail_v2_25.filler_string_1717 = {}

-- Size: Filler String 1717
box_boxoptions_solaorderentry_sail_v2_25.filler_string_1717.size = 17

-- Display: Filler String 1717
box_boxoptions_solaorderentry_sail_v2_25.filler_string_1717.display = function(value)
  return "Filler String 1717: "..value
end

-- Dissect: Filler String 1717
box_boxoptions_solaorderentry_sail_v2_25.filler_string_1717.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.filler_string_1717.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = box_boxoptions_solaorderentry_sail_v2_25.filler_string_1717.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.filler_string_1717, range, value, display)

  return offset + length, value
end

-- Filler String 22
box_boxoptions_solaorderentry_sail_v2_25.filler_string_22 = {}

-- Size: Filler String 22
box_boxoptions_solaorderentry_sail_v2_25.filler_string_22.size = 2

-- Display: Filler String 22
box_boxoptions_solaorderentry_sail_v2_25.filler_string_22.display = function(value)
  return "Filler String 22: "..value
end

-- Dissect: Filler String 22
box_boxoptions_solaorderentry_sail_v2_25.filler_string_22.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.filler_string_22.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = box_boxoptions_solaorderentry_sail_v2_25.filler_string_22.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.filler_string_22, range, value, display)

  return offset + length, value
end

-- Filler Zero Filled
box_boxoptions_solaorderentry_sail_v2_25.filler_zero_filled = {}

-- Size: Filler Zero Filled
box_boxoptions_solaorderentry_sail_v2_25.filler_zero_filled.size = 4

-- Display: Filler Zero Filled
box_boxoptions_solaorderentry_sail_v2_25.filler_zero_filled.display = function(value)
  return "Filler Zero Filled: "..value
end

-- Dissect: Filler Zero Filled
box_boxoptions_solaorderentry_sail_v2_25.filler_zero_filled.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.filler_zero_filled.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = box_boxoptions_solaorderentry_sail_v2_25.filler_zero_filled.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.filler_zero_filled, range, value, display)

  return offset + length, value
end

-- Firm Id
box_boxoptions_solaorderentry_sail_v2_25.firm_id = {}

-- Size: Firm Id
box_boxoptions_solaorderentry_sail_v2_25.firm_id.size = 4

-- Display: Firm Id
box_boxoptions_solaorderentry_sail_v2_25.firm_id.display = function(value)
  return "Firm Id: "..value
end

-- Dissect: Firm Id
box_boxoptions_solaorderentry_sail_v2_25.firm_id.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.firm_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.firm_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.firm_id, range, value, display)

  return offset + length, value
end

-- Gap Sequence ID
box_boxoptions_solaorderentry_sail_v2_25.gap_sequence_id = {}

-- Size: Gap Sequence ID
box_boxoptions_solaorderentry_sail_v2_25.gap_sequence_id.size = 2

-- Display: Gap Sequence ID
box_boxoptions_solaorderentry_sail_v2_25.gap_sequence_id.display = function(value)
  return "Gap Sequence ID: "..value
end

-- Dissect: Gap Sequence ID
box_boxoptions_solaorderentry_sail_v2_25.gap_sequence_id.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.gap_sequence_id.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solaorderentry_sail_v2_25.gap_sequence_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.gap_sequence_id, range, value, display)

  return offset + length, value
end

-- Group
box_boxoptions_solaorderentry_sail_v2_25.group = {}

-- Size: Group
box_boxoptions_solaorderentry_sail_v2_25.group.size = 2

-- Display: Group
box_boxoptions_solaorderentry_sail_v2_25.group.display = function(value)
  return "Group: "..value
end

-- Dissect: Group
box_boxoptions_solaorderentry_sail_v2_25.group.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.group.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.group.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.group, range, value, display)

  return offset + length, value
end

-- Group State
box_boxoptions_solaorderentry_sail_v2_25.group_state = {}

-- Size: Group State
box_boxoptions_solaorderentry_sail_v2_25.group_state.size = 1

-- Display: Group State
box_boxoptions_solaorderentry_sail_v2_25.group_state.display = function(value)
  if value == "B" then
    return "Group State: Post Session (B)"
  end
  if value == "C" then
    return "Group State: Consultation Start (C)"
  end
  if value == "F" then
    return "Group State: Consultation End (F)"
  end
  if value == "I" then
    return "Group State: Prohibited (I)"
  end
  if value == "M" then
    return "Group State: Minibatch (M)"
  end
  if value == "N" then
    return "Group State: Market Operation Center Intervention (N)"
  end
  if value == "O" then
    return "Group State: Opening (O)"
  end
  if value == "P" then
    return "Group State: Preopening (P)"
  end
  if value == "S" then
    return "Group State: Continuous Trading Session (S)"
  end
  if value == "Z" then
    return "Group State: Interrupted (Z)"
  end

  return "Group State: Unknown("..value..")"
end

-- Dissect: Group State
box_boxoptions_solaorderentry_sail_v2_25.group_state.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.group_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.group_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.group_state, range, value, display)

  return offset + length, value
end

-- Gtd Date
box_boxoptions_solaorderentry_sail_v2_25.gtd_date = {}

-- Size: Gtd Date
box_boxoptions_solaorderentry_sail_v2_25.gtd_date.size = 8

-- Display: Gtd Date
box_boxoptions_solaorderentry_sail_v2_25.gtd_date.display = function(value)
  return "Gtd Date: "..value
end

-- Dissect: Gtd Date
box_boxoptions_solaorderentry_sail_v2_25.gtd_date.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.gtd_date.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.gtd_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.gtd_date, range, value, display)

  return offset + length, value
end

-- Hedge Spec
box_boxoptions_solaorderentry_sail_v2_25.hedge_spec = {}

-- Size: Hedge Spec
box_boxoptions_solaorderentry_sail_v2_25.hedge_spec.size = 1

-- Display: Hedge Spec
box_boxoptions_solaorderentry_sail_v2_25.hedge_spec.display = function(value)
  if value == "H" then
    return "Hedge Spec: Hedger (H)"
  end
  if value == "S" then
    return "Hedge Spec: Speculator (S)"
  end

  return "Hedge Spec: Unknown("..value..")"
end

-- Dissect: Hedge Spec
box_boxoptions_solaorderentry_sail_v2_25.hedge_spec.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.hedge_spec.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.hedge_spec.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.hedge_spec, range, value, display)

  return offset + length, value
end

-- Id Code For The Counterpart Participant
box_boxoptions_solaorderentry_sail_v2_25.id_code_for_the_counterpart_participant = {}

-- Size: Id Code For The Counterpart Participant
box_boxoptions_solaorderentry_sail_v2_25.id_code_for_the_counterpart_participant.size = 4

-- Display: Id Code For The Counterpart Participant
box_boxoptions_solaorderentry_sail_v2_25.id_code_for_the_counterpart_participant.display = function(value)
  return "Id Code For The Counterpart Participant: "..value
end

-- Dissect: Id Code For The Counterpart Participant
box_boxoptions_solaorderentry_sail_v2_25.id_code_for_the_counterpart_participant.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.id_code_for_the_counterpart_participant.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.id_code_for_the_counterpart_participant.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.id_code_for_the_counterpart_participant, range, value, display)

  return offset + length, value
end

-- Iml Handling
box_boxoptions_solaorderentry_sail_v2_25.iml_handling = {}

-- Size: Iml Handling
box_boxoptions_solaorderentry_sail_v2_25.iml_handling.size = 1

-- Display: Iml Handling
box_boxoptions_solaorderentry_sail_v2_25.iml_handling.display = function(value)
  return "Iml Handling: "..value
end

-- Dissect: Iml Handling
box_boxoptions_solaorderentry_sail_v2_25.iml_handling.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.iml_handling.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.iml_handling.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.iml_handling, range, value, display)

  return offset + length, value
end

-- Inactivity Interval
box_boxoptions_solaorderentry_sail_v2_25.inactivity_interval = {}

-- Size: Inactivity Interval
box_boxoptions_solaorderentry_sail_v2_25.inactivity_interval.size = 2

-- Display: Inactivity Interval
box_boxoptions_solaorderentry_sail_v2_25.inactivity_interval.display = function(value)
  return "Inactivity Interval: "..value
end

-- Dissect: Inactivity Interval
box_boxoptions_solaorderentry_sail_v2_25.inactivity_interval.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.inactivity_interval.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solaorderentry_sail_v2_25.inactivity_interval.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.inactivity_interval, range, value, display)

  return offset + length, value
end

-- Instrument
box_boxoptions_solaorderentry_sail_v2_25.instrument = {}

-- Size: Instrument
box_boxoptions_solaorderentry_sail_v2_25.instrument.size = 4

-- Display: Instrument
box_boxoptions_solaorderentry_sail_v2_25.instrument.display = function(value)
  return "Instrument: "..value
end

-- Dissect: Instrument
box_boxoptions_solaorderentry_sail_v2_25.instrument.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.instrument.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.instrument, range, value, display)

  return offset + length, value
end

-- Last Exchange Message Id Sent To Participant
box_boxoptions_solaorderentry_sail_v2_25.last_exchange_message_id_sent_to_participant = {}

-- Size: Last Exchange Message Id Sent To Participant
box_boxoptions_solaorderentry_sail_v2_25.last_exchange_message_id_sent_to_participant.size = 6

-- Display: Last Exchange Message Id Sent To Participant
box_boxoptions_solaorderentry_sail_v2_25.last_exchange_message_id_sent_to_participant.display = function(value)
  return "Last Exchange Message Id Sent To Participant: "..value
end

-- Dissect: Last Exchange Message Id Sent To Participant
box_boxoptions_solaorderentry_sail_v2_25.last_exchange_message_id_sent_to_participant.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.last_exchange_message_id_sent_to_participant.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.last_exchange_message_id_sent_to_participant.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.last_exchange_message_id_sent_to_participant, range, value, display)

  return offset + length, value
end

-- Last User Sequence Id Received
box_boxoptions_solaorderentry_sail_v2_25.last_user_sequence_id_received = {}

-- Size: Last User Sequence Id Received
box_boxoptions_solaorderentry_sail_v2_25.last_user_sequence_id_received.size = 8

-- Display: Last User Sequence Id Received
box_boxoptions_solaorderentry_sail_v2_25.last_user_sequence_id_received.display = function(value)
  return "Last User Sequence Id Received: "..value
end

-- Dissect: Last User Sequence Id Received
box_boxoptions_solaorderentry_sail_v2_25.last_user_sequence_id_received.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.last_user_sequence_id_received.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solaorderentry_sail_v2_25.last_user_sequence_id_received.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.last_user_sequence_id_received, range, value, display)

  return offset + length, value
end

-- Last User Sequence Id Received If No Business Message Has Been Received On This Connection This Field Is Equal To Zeroes
box_boxoptions_solaorderentry_sail_v2_25.last_user_sequence_id_received_if_no_business_message_has_been_received_on_this_connection_this_field_is_equal_to_zeroes = {}

-- Size: Last User Sequence Id Received If No Business Message Has Been Received On This Connection This Field Is Equal To Zeroes
box_boxoptions_solaorderentry_sail_v2_25.last_user_sequence_id_received_if_no_business_message_has_been_received_on_this_connection_this_field_is_equal_to_zeroes.size = 8

-- Display: Last User Sequence Id Received If No Business Message Has Been Received On This Connection This Field Is Equal To Zeroes
box_boxoptions_solaorderentry_sail_v2_25.last_user_sequence_id_received_if_no_business_message_has_been_received_on_this_connection_this_field_is_equal_to_zeroes.display = function(value)
  return "Last User Sequence Id Received If No Business Message Has Been Received On This Connection This Field Is Equal To Zeroes: "..value
end

-- Dissect: Last User Sequence Id Received If No Business Message Has Been Received On This Connection This Field Is Equal To Zeroes
box_boxoptions_solaorderentry_sail_v2_25.last_user_sequence_id_received_if_no_business_message_has_been_received_on_this_connection_this_field_is_equal_to_zeroes.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.last_user_sequence_id_received_if_no_business_message_has_been_received_on_this_connection_this_field_is_equal_to_zeroes.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solaorderentry_sail_v2_25.last_user_sequence_id_received_if_no_business_message_has_been_received_on_this_connection_this_field_is_equal_to_zeroes.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.last_user_sequence_id_received_if_no_business_message_has_been_received_on_this_connection_this_field_is_equal_to_zeroes, range, value, display)

  return offset + length, value
end

-- Leg Group
box_boxoptions_solaorderentry_sail_v2_25.leg_group = {}

-- Size: Leg Group
box_boxoptions_solaorderentry_sail_v2_25.leg_group.size = 2

-- Display: Leg Group
box_boxoptions_solaorderentry_sail_v2_25.leg_group.display = function(value)
  return "Leg Group: "..value
end

-- Dissect: Leg Group
box_boxoptions_solaorderentry_sail_v2_25.leg_group.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.leg_group.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.leg_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.leg_group, range, value, display)

  return offset + length, value
end

-- Leg Instrument
box_boxoptions_solaorderentry_sail_v2_25.leg_instrument = {}

-- Size: Leg Instrument
box_boxoptions_solaorderentry_sail_v2_25.leg_instrument.size = 4

-- Display: Leg Instrument
box_boxoptions_solaorderentry_sail_v2_25.leg_instrument.display = function(value)
  return "Leg Instrument: "..value
end

-- Dissect: Leg Instrument
box_boxoptions_solaorderentry_sail_v2_25.leg_instrument.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.leg_instrument.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.leg_instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.leg_instrument, range, value, display)

  return offset + length, value
end

-- Leg Instrument Id
box_boxoptions_solaorderentry_sail_v2_25.leg_instrument_id = {}

-- Size: Leg Instrument Id
box_boxoptions_solaorderentry_sail_v2_25.leg_instrument_id.size = 4

-- Display: Leg Instrument Id
box_boxoptions_solaorderentry_sail_v2_25.leg_instrument_id.display = function(value)
  return "Leg Instrument Id: "..value
end

-- Dissect: Leg Instrument Id
box_boxoptions_solaorderentry_sail_v2_25.leg_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.leg_instrument_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.leg_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.leg_instrument_id, range, value, display)

  return offset + length, value
end

-- Leg Quantity Ratio
box_boxoptions_solaorderentry_sail_v2_25.leg_quantity_ratio = {}

-- Size: Leg Quantity Ratio
box_boxoptions_solaorderentry_sail_v2_25.leg_quantity_ratio.size = 8

-- Display: Leg Quantity Ratio
box_boxoptions_solaorderentry_sail_v2_25.leg_quantity_ratio.display = function(value)
  return "Leg Quantity Ratio: "..value
end

-- Dissect: Leg Quantity Ratio
box_boxoptions_solaorderentry_sail_v2_25.leg_quantity_ratio.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.leg_quantity_ratio.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solaorderentry_sail_v2_25.leg_quantity_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.leg_quantity_ratio, range, value, display)

  return offset + length, value
end

-- Leg Verb
box_boxoptions_solaorderentry_sail_v2_25.leg_verb = {}

-- Size: Leg Verb
box_boxoptions_solaorderentry_sail_v2_25.leg_verb.size = 1

-- Display: Leg Verb
box_boxoptions_solaorderentry_sail_v2_25.leg_verb.display = function(value)
  if value == "B" then
    return "Leg Verb: Buy (B)"
  end
  if value == "S" then
    return "Leg Verb: Sell (S)"
  end

  return "Leg Verb: Unknown("..value..")"
end

-- Dissect: Leg Verb
box_boxoptions_solaorderentry_sail_v2_25.leg_verb.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.leg_verb.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.leg_verb.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.leg_verb, range, value, display)

  return offset + length, value
end

-- Liquidity Status
box_boxoptions_solaorderentry_sail_v2_25.liquidity_status = {}

-- Size: Liquidity Status
box_boxoptions_solaorderentry_sail_v2_25.liquidity_status.size = 1

-- Display: Liquidity Status
box_boxoptions_solaorderentry_sail_v2_25.liquidity_status.display = function(value)
  if value == "M" then
    return "Liquidity Status: Maker (M)"
  end
  if value == "T" then
    return "Liquidity Status: Taker (T)"
  end

  return "Liquidity Status: Unknown("..value..")"
end

-- Dissect: Liquidity Status
box_boxoptions_solaorderentry_sail_v2_25.liquidity_status.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.liquidity_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.liquidity_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.liquidity_status, range, value, display)

  return offset + length, value
end

-- Maximum Delta Value
box_boxoptions_solaorderentry_sail_v2_25.maximum_delta_value = {}

-- Size: Maximum Delta Value
box_boxoptions_solaorderentry_sail_v2_25.maximum_delta_value.size = 8

-- Display: Maximum Delta Value
box_boxoptions_solaorderentry_sail_v2_25.maximum_delta_value.display = function(value)
  return "Maximum Delta Value: "..value
end

-- Dissect: Maximum Delta Value
box_boxoptions_solaorderentry_sail_v2_25.maximum_delta_value.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.maximum_delta_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solaorderentry_sail_v2_25.maximum_delta_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.maximum_delta_value, range, value, display)

  return offset + length, value
end

-- Maximum Delta Volume
box_boxoptions_solaorderentry_sail_v2_25.maximum_delta_volume = {}

-- Size: Maximum Delta Volume
box_boxoptions_solaorderentry_sail_v2_25.maximum_delta_volume.size = 8

-- Display: Maximum Delta Volume
box_boxoptions_solaorderentry_sail_v2_25.maximum_delta_volume.display = function(value)
  return "Maximum Delta Volume: "..value
end

-- Dissect: Maximum Delta Volume
box_boxoptions_solaorderentry_sail_v2_25.maximum_delta_volume.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.maximum_delta_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solaorderentry_sail_v2_25.maximum_delta_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.maximum_delta_volume, range, value, display)

  return offset + length, value
end

-- Maximum Total Value
box_boxoptions_solaorderentry_sail_v2_25.maximum_total_value = {}

-- Size: Maximum Total Value
box_boxoptions_solaorderentry_sail_v2_25.maximum_total_value.size = 8

-- Display: Maximum Total Value
box_boxoptions_solaorderentry_sail_v2_25.maximum_total_value.display = function(value)
  return "Maximum Total Value: "..value
end

-- Dissect: Maximum Total Value
box_boxoptions_solaorderentry_sail_v2_25.maximum_total_value.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.maximum_total_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solaorderentry_sail_v2_25.maximum_total_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.maximum_total_value, range, value, display)

  return offset + length, value
end

-- Maximum Total Volume
box_boxoptions_solaorderentry_sail_v2_25.maximum_total_volume = {}

-- Size: Maximum Total Volume
box_boxoptions_solaorderentry_sail_v2_25.maximum_total_volume.size = 8

-- Display: Maximum Total Volume
box_boxoptions_solaorderentry_sail_v2_25.maximum_total_volume.display = function(value)
  return "Maximum Total Volume: "..value
end

-- Dissect: Maximum Total Volume
box_boxoptions_solaorderentry_sail_v2_25.maximum_total_volume.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.maximum_total_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solaorderentry_sail_v2_25.maximum_total_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.maximum_total_volume, range, value, display)

  return offset + length, value
end

-- Memo
box_boxoptions_solaorderentry_sail_v2_25.memo = {}

-- Size: Memo
box_boxoptions_solaorderentry_sail_v2_25.memo.size = 50

-- Display: Memo
box_boxoptions_solaorderentry_sail_v2_25.memo.display = function(value)
  return "Memo: "..value
end

-- Dissect: Memo
box_boxoptions_solaorderentry_sail_v2_25.memo.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.memo.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.memo.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.memo, range, value, display)

  return offset + length, value
end

-- Message Length
box_boxoptions_solaorderentry_sail_v2_25.message_length = {}

-- Size: Message Length
box_boxoptions_solaorderentry_sail_v2_25.message_length.size = 4

-- Display: Message Length
box_boxoptions_solaorderentry_sail_v2_25.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
box_boxoptions_solaorderentry_sail_v2_25.message_length.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = box_boxoptions_solaorderentry_sail_v2_25.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Time Local
box_boxoptions_solaorderentry_sail_v2_25.message_time_local = {}

-- Size: Message Time Local
box_boxoptions_solaorderentry_sail_v2_25.message_time_local.size = 6

-- Display: Message Time Local
box_boxoptions_solaorderentry_sail_v2_25.message_time_local.display = function(value)
  return "Message Time Local: "..value
end

-- Dissect: Message Time Local
box_boxoptions_solaorderentry_sail_v2_25.message_time_local.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.message_time_local.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solaorderentry_sail_v2_25.message_time_local.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.message_time_local, range, value, display)

  return offset + length, value
end

-- Message Timestamp
box_boxoptions_solaorderentry_sail_v2_25.message_timestamp = {}

-- Size: Message Timestamp
box_boxoptions_solaorderentry_sail_v2_25.message_timestamp.size = 6

-- Display: Message Timestamp
box_boxoptions_solaorderentry_sail_v2_25.message_timestamp.display = function(value)
  return "Message Timestamp: "..value
end

-- Dissect: Message Timestamp
box_boxoptions_solaorderentry_sail_v2_25.message_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.message_timestamp.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solaorderentry_sail_v2_25.message_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.message_timestamp, range, value, display)

  return offset + length, value
end

-- Message Type
box_boxoptions_solaorderentry_sail_v2_25.message_type = {}

-- Size: Message Type
box_boxoptions_solaorderentry_sail_v2_25.message_type.size = 2

-- Display: Message Type
box_boxoptions_solaorderentry_sail_v2_25.message_type.display = function(value)
  if value == "TC" then
    return "Message Type: User Connection (TC)"
  end
  if value == "TD" then
    return "Message Type: User Disconnection (TD)"
  end
  if value == "TA" then
    return "Message Type: Disconnection Instruction (TA)"
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
  if value == "TM" then
    return "Message Type: Disconnection Instruction Acknowledgement (TM)"
  end
  if value == "TK" then
    return "Message Type: Connection Acknowledgement (TK)"
  end
  if value == "TL" then
    return "Message Type: Disconnection Acknowledgement (TL)"
  end
  if value == "TT" then
    return "Message Type: End Of Transmission (TT)"
  end
  if value == "BD" then
    return "Message Type: Bulk Quote Data (BD)"
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
  if value == "KI" then
    return "Message Type: Improvement Order Acknowlegment (KI)"
  end
  if value == "KM" then
    return "Message Type: Order Modification Acknowledgement (KM)"
  end
  if value == "KN" then
    return "Message Type: New Complex Order Instrument Acknowledgement (KN)"
  end
  if value == "KO" then
    return "Message Type: Standard Acknowledgement (KO)"
  end
  if value == "KQ" then
    return "Message Type: Directed Routed Order Rejection And Quote (KQ)"
  end
  if value == "KT" then
    return "Message Type: Complex Order Auction Acknowledgement (KT)"
  end
  if value == "KY" then
    return "Message Type: Auction Or Improvement Cancellation Acknowledgement (KY)"
  end
  if value == "KZ" then
    return "Message Type: Order Cancellation Acknowledgement (KZ)"
  end
  if value == "LA" then
    return "Message Type: Bulk Quote Acknowledgement (LA)"
  end
  if value == "MU" then
    return "Message Type: Trader Status (MU)"
  end
  if value == "NC" then
    return "Message Type: Directed Order Cancellation Notice (NC)"
  end
  if value == "ND" then
    return "Message Type: Directed Order Notice (ND)"
  end
  if value == "NE" then
    return "Message Type: Excluded Instrument Notice (NE)"
  end
  if value == "NG" then
    return "Message Type: Group State Change (NG)"
  end
  if value == "NL" then
    return "Message Type: Leg Execution Notice (NL)"
  end
  if value == "NP" then
    return "Message Type: Cancellation Of All Quotes Notices (NP)"
  end
  if value == "NQ" then
    return "Message Type: Quality Market Maker Notification (NQ)"
  end
  if value == "NT" then
    return "Message Type: Execution Notice (NT)"
  end
  if value == "NU" then
    return "Message Type: Quote Notice (NU)"
  end
  if value == "NX" then
    return "Message Type: Execution Cancellation Notice (NX)"
  end
  if value == "NY" then
    return "Message Type: Leg Execution Cancellation Notice (NY)"
  end
  if value == "NZ" then
    return "Message Type: Order Cancellation Notice By System (NZ)"
  end
  if value == "OA" then
    return "Message Type: Auction Entry (OA)"
  end
  if value == "OD" then
    return "Message Type: Directed Order Acceptation (OD)"
  end
  if value == "OE" then
    return "Message Type: Order Entry (OE)"
  end
  if value == "OI" then
    return "Message Type: Improvement Order Entry (OI)"
  end
  if value == "OM" then
    return "Message Type: Order Modification (OM)"
  end
  if value == "ON" then
    return "Message Type: New Complex Order Instrument (ON)"
  end
  if value == "OT" then
    return "Message Type: Complex Order Auction Entry (OT)"
  end
  if value == "Q<i>" then
    return "Message Type: Bulk Quote (Q<i>)"
  end
  if value == "RE" then
    return "Message Type: Executing Participant Connection (RE)"
  end
  if value == "RF" then
    return "Message Type: Executing Participant Disconnection (RF)"
  end
  if value == "RP" then
    return "Message Type: Market Maker Protection Subscription (RP)"
  end
  if value == "RQ" then
    return "Message Type: Request For Quote (RQ)"
  end
  if value == "XE" then
    return "Message Type: Order Cancellation (XE)"
  end
  if value == "XI" then
    return "Message Type: Improvement Order Cancellation (XI)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
box_boxoptions_solaorderentry_sail_v2_25.message_type.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.message_type, range, value, display)

  return offset + length, value
end

-- Message Types To Be Received
box_boxoptions_solaorderentry_sail_v2_25.message_types_to_be_received = {}

-- Size: Message Types To Be Received
box_boxoptions_solaorderentry_sail_v2_25.message_types_to_be_received.size = 2

-- Display: Message Types To Be Received
box_boxoptions_solaorderentry_sail_v2_25.message_types_to_be_received.display = function(value)
  return "Message Types To Be Received: "..value
end

-- Dissect: Message Types To Be Received
box_boxoptions_solaorderentry_sail_v2_25.message_types_to_be_received.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.message_types_to_be_received.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.message_types_to_be_received.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.message_types_to_be_received, range, value, display)

  return offset + length, value
end

-- Mm Cat User Time
box_boxoptions_solaorderentry_sail_v2_25.mm_cat_user_time = {}

-- Size: Mm Cat User Time
box_boxoptions_solaorderentry_sail_v2_25.mm_cat_user_time.size = 8

-- Display: Mm Cat User Time
box_boxoptions_solaorderentry_sail_v2_25.mm_cat_user_time.display = function(value)
  return "Mm Cat User Time: "..value
end

-- Dissect: Mm Cat User Time
box_boxoptions_solaorderentry_sail_v2_25.mm_cat_user_time.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.mm_cat_user_time.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.mm_cat_user_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.mm_cat_user_time, range, value, display)

  return offset + length, value
end

-- Modified Order Id
box_boxoptions_solaorderentry_sail_v2_25.modified_order_id = {}

-- Size: Modified Order Id
box_boxoptions_solaorderentry_sail_v2_25.modified_order_id.size = 8

-- Display: Modified Order Id
box_boxoptions_solaorderentry_sail_v2_25.modified_order_id.display = function(value)
  return "Modified Order Id: "..value
end

-- Dissect: Modified Order Id
box_boxoptions_solaorderentry_sail_v2_25.modified_order_id.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.modified_order_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.modified_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.modified_order_id, range, value, display)

  return offset + length, value
end

-- Nb Legs
box_boxoptions_solaorderentry_sail_v2_25.nb_legs = {}

-- Size: Nb Legs
box_boxoptions_solaorderentry_sail_v2_25.nb_legs.size = 2

-- Display: Nb Legs
box_boxoptions_solaorderentry_sail_v2_25.nb_legs.display = function(value)
  return "Nb Legs: "..value
end

-- Dissect: Nb Legs
box_boxoptions_solaorderentry_sail_v2_25.nb_legs.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.nb_legs.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solaorderentry_sail_v2_25.nb_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.nb_legs, range, value, display)

  return offset + length, value
end

-- Nb Of Instruments
box_boxoptions_solaorderentry_sail_v2_25.nb_of_instruments = {}

-- Size: Nb Of Instruments
box_boxoptions_solaorderentry_sail_v2_25.nb_of_instruments.size = 4

-- Display: Nb Of Instruments
box_boxoptions_solaorderentry_sail_v2_25.nb_of_instruments.display = function(value)
  return "Nb Of Instruments: "..value
end

-- Dissect: Nb Of Instruments
box_boxoptions_solaorderentry_sail_v2_25.nb_of_instruments.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.nb_of_instruments.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solaorderentry_sail_v2_25.nb_of_instruments.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.nb_of_instruments, range, value, display)

  return offset + length, value
end

-- New Price
box_boxoptions_solaorderentry_sail_v2_25.new_price = {}

-- Size: New Price
box_boxoptions_solaorderentry_sail_v2_25.new_price.size = 10

-- Display: New Price
box_boxoptions_solaorderentry_sail_v2_25.new_price.display = function(value)
  return "New Price: "..value
end

-- Dissect: New Price
box_boxoptions_solaorderentry_sail_v2_25.new_price.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.new_price.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.new_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.new_price, range, value, display)

  return offset + length, value
end

-- New Quantity
box_boxoptions_solaorderentry_sail_v2_25.new_quantity = {}

-- Size: New Quantity
box_boxoptions_solaorderentry_sail_v2_25.new_quantity.size = 8

-- Display: New Quantity
box_boxoptions_solaorderentry_sail_v2_25.new_quantity.display = function(value)
  return "New Quantity: "..value
end

-- Dissect: New Quantity
box_boxoptions_solaorderentry_sail_v2_25.new_quantity.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.new_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solaorderentry_sail_v2_25.new_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.new_quantity, range, value, display)

  return offset + length, value
end

-- Number Of Instructions Present In The Message
box_boxoptions_solaorderentry_sail_v2_25.number_of_instructions_present_in_the_message = {}

-- Size: Number Of Instructions Present In The Message
box_boxoptions_solaorderentry_sail_v2_25.number_of_instructions_present_in_the_message.size = 2

-- Display: Number Of Instructions Present In The Message
box_boxoptions_solaorderentry_sail_v2_25.number_of_instructions_present_in_the_message.display = function(value)
  return "Number Of Instructions Present In The Message: "..value
end

-- Dissect: Number Of Instructions Present In The Message
box_boxoptions_solaorderentry_sail_v2_25.number_of_instructions_present_in_the_message.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.number_of_instructions_present_in_the_message.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solaorderentry_sail_v2_25.number_of_instructions_present_in_the_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.number_of_instructions_present_in_the_message, range, value, display)

  return offset + length, value
end

-- Number Of Legs
box_boxoptions_solaorderentry_sail_v2_25.number_of_legs = {}

-- Size: Number Of Legs
box_boxoptions_solaorderentry_sail_v2_25.number_of_legs.size = 2

-- Display: Number Of Legs
box_boxoptions_solaorderentry_sail_v2_25.number_of_legs.display = function(value)
  return "Number Of Legs: "..value
end

-- Dissect: Number Of Legs
box_boxoptions_solaorderentry_sail_v2_25.number_of_legs.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.number_of_legs.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solaorderentry_sail_v2_25.number_of_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.number_of_legs, range, value, display)

  return offset + length, value
end

-- Number Of Message Types To Be Received
box_boxoptions_solaorderentry_sail_v2_25.number_of_message_types_to_be_received = {}

-- Size: Number Of Message Types To Be Received
box_boxoptions_solaorderentry_sail_v2_25.number_of_message_types_to_be_received.size = 2

-- Display: Number Of Message Types To Be Received
box_boxoptions_solaorderentry_sail_v2_25.number_of_message_types_to_be_received.display = function(value)
  return "Number Of Message Types To Be Received: "..value
end

-- Dissect: Number Of Message Types To Be Received
box_boxoptions_solaorderentry_sail_v2_25.number_of_message_types_to_be_received.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.number_of_message_types_to_be_received.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solaorderentry_sail_v2_25.number_of_message_types_to_be_received.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.number_of_message_types_to_be_received, range, value, display)

  return offset + length, value
end

-- Number Of Quotes
box_boxoptions_solaorderentry_sail_v2_25.number_of_quotes = {}

-- Size: Number Of Quotes
box_boxoptions_solaorderentry_sail_v2_25.number_of_quotes.size = 3

-- Display: Number Of Quotes
box_boxoptions_solaorderentry_sail_v2_25.number_of_quotes.display = function(value)
  return "Number Of Quotes: "..value
end

-- Dissect: Number Of Quotes
box_boxoptions_solaorderentry_sail_v2_25.number_of_quotes.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.number_of_quotes.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solaorderentry_sail_v2_25.number_of_quotes.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.number_of_quotes, range, value, display)

  return offset + length, value
end

-- Number Of Quotes In Error
box_boxoptions_solaorderentry_sail_v2_25.number_of_quotes_in_error = {}

-- Size: Number Of Quotes In Error
box_boxoptions_solaorderentry_sail_v2_25.number_of_quotes_in_error.size = 3

-- Display: Number Of Quotes In Error
box_boxoptions_solaorderentry_sail_v2_25.number_of_quotes_in_error.display = function(value)
  return "Number Of Quotes In Error: "..value
end

-- Dissect: Number Of Quotes In Error
box_boxoptions_solaorderentry_sail_v2_25.number_of_quotes_in_error.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.number_of_quotes_in_error.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solaorderentry_sail_v2_25.number_of_quotes_in_error.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.number_of_quotes_in_error, range, value, display)

  return offset + length, value
end

-- Open Close
box_boxoptions_solaorderentry_sail_v2_25.open_close = {}

-- Size: Open Close
box_boxoptions_solaorderentry_sail_v2_25.open_close.size = 1

-- Display: Open Close
box_boxoptions_solaorderentry_sail_v2_25.open_close.display = function(value)
  if value == "C" then
    return "Open Close: Close All Legs Or Single Instrument (C)"
  end
  if value == "O" then
    return "Open Close: Open All Legs Or Single Instrument For Complex Orders Must Be Used It Indicates That The Open Close Positions Are Specified In The Post Trading Instruction Field For Legacy Support The Following Values Are Still Supported For Complex Orders (O)"
  end
  if value == "1" then
    return "Open Close: Legs 1 St Leg Open 2 Nd Leg Close (1)"
  end
  if value == "2" then
    return "Open Close: Legs 1 St Leg Close 2 Nd Leg Open (2)"
  end
  if value == "3" then
    return "Open Close: Legs 1 St Leg Open 2 Nd Leg Open 3 Rd Leg Close (3)"
  end
  if value == "4" then
    return "Open Close: Legs 1 St Leg Open 2 Nd Leg Close 3 Rd Leg Open (4)"
  end
  if value == "5" then
    return "Open Close: Legs 1 St Leg Open 2 Nd Leg Close 3 Rd Leg Close (5)"
  end
  if value == "6" then
    return "Open Close: Legs 1 St Leg Close 2 Nd Leg Open 3 Rd Leg Open (6)"
  end
  if value == "7" then
    return "Open Close: Legs 1 St Leg Close 2 Nd Leg Open 3 Rd Leg Close (7)"
  end
  if value == "8" then
    return "Open Close: Legs 1 St Leg Close 2 Nd Leg Close 3 Rd Leg Open (8)"
  end
  if value == "A" then
    return "Open Close: Legs 1 St Leg Open 2 Nd Leg Open 3 Rd Leg Open 4 Th Leg Close (A)"
  end
  if value == "B" then
    return "Open Close: Legs 1 St Leg Open 2 Nd Leg Open 3 Rd Leg Close 4 Th Leg Open (B)"
  end
  if value == "D" then
    return "Open Close: Legs 1 St Leg Open 2 Nd Leg Open 3 Rd Leg Close 4 Th Leg Close (D)"
  end
  if value == "E" then
    return "Open Close: Legs 1 St Leg Open 2 Nd Leg Close 3 Rd Leg Open 4 Th Leg Open (E)"
  end
  if value == "F" then
    return "Open Close: Legs 1 St Leg Open 2 Nd Leg Close 3 Rd Leg Open 4 Th Leg Close (F)"
  end
  if value == "G" then
    return "Open Close: Legs 1 St Leg Open 2 Nd Leg Close 3 Rd Leg Close 4 Th Leg Open (G)"
  end
  if value == "H" then
    return "Open Close: Legs 1 St Leg Open 2 Nd Leg Close 3 Rd Leg Close 4 Th Leg Close (H)"
  end
  if value == "I" then
    return "Open Close: Legs 1 St Leg Close 2 Nd Leg Open 3 Rd Leg Open 4 Th Leg Open (I)"
  end
  if value == "J" then
    return "Open Close: Legs 1 St Leg Close 2 Nd Leg Open 3 Rd Leg Open 4 Th Leg Close (J)"
  end
  if value == "K" then
    return "Open Close: Legs 1 St Leg Close 2 Nd Leg Open 3 Rd Leg Close 4 Th Leg Open (K)"
  end
  if value == "L" then
    return "Open Close: Legs 1 St Leg Close 2 Nd Leg Open 3 Rd Leg Close 4 Th Leg Close (L)"
  end
  if value == "M" then
    return "Open Close: Legs 1 St Leg Close 2 Nd Leg Close 3 Rd Leg Open 4 Th Leg Open (M)"
  end
  if value == "N" then
    return "Open Close: Legs 1 St Leg Close 2 Nd Leg Close 3 Rd Leg Open 4 Th Leg Close (N)"
  end
  if value == "P" then
    return "Open Close: Legs 1 St Leg Close 2 Nd Leg Close 3 Rd Leg Close 4 Th Leg Open (P)"
  end

  return "Open Close: Unknown("..value..")"
end

-- Dissect: Open Close
box_boxoptions_solaorderentry_sail_v2_25.open_close.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.open_close.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.open_close.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.open_close, range, value, display)

  return offset + length, value
end

-- Order Id Client Order Id 20
box_boxoptions_solaorderentry_sail_v2_25.order_id_client_order_id_20 = {}

-- Size: Order Id Client Order Id 20
box_boxoptions_solaorderentry_sail_v2_25.order_id_client_order_id_20.size = 20

-- Display: Order Id Client Order Id 20
box_boxoptions_solaorderentry_sail_v2_25.order_id_client_order_id_20.display = function(value)
  return "Order Id Client Order Id 20: "..value
end

-- Dissect: Order Id Client Order Id 20
box_boxoptions_solaorderentry_sail_v2_25.order_id_client_order_id_20.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.order_id_client_order_id_20.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.order_id_client_order_id_20.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.order_id_client_order_id_20, range, value, display)

  return offset + length, value
end

-- Order Id Order Id 8
box_boxoptions_solaorderentry_sail_v2_25.order_id_order_id_8 = {}

-- Size: Order Id Order Id 8
box_boxoptions_solaorderentry_sail_v2_25.order_id_order_id_8.size = 8

-- Display: Order Id Order Id 8
box_boxoptions_solaorderentry_sail_v2_25.order_id_order_id_8.display = function(value)
  return "Order Id Order Id 8: "..value
end

-- Dissect: Order Id Order Id 8
box_boxoptions_solaorderentry_sail_v2_25.order_id_order_id_8.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.order_id_order_id_8.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.order_id_order_id_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.order_id_order_id_8, range, value, display)

  return offset + length, value
end

-- Order Type
box_boxoptions_solaorderentry_sail_v2_25.order_type = {}

-- Size: Order Type
box_boxoptions_solaorderentry_sail_v2_25.order_type.size = 1

-- Display: Order Type
box_boxoptions_solaorderentry_sail_v2_25.order_type.display = function(value)
  if value == "O" then
    return "Order Type: Order (O)"
  end
  if value == "Q" then
    return "Order Type: Quote (Q)"
  end

  return "Order Type: Unknown("..value..")"
end

-- Dissect: Order Type
box_boxoptions_solaorderentry_sail_v2_25.order_type.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.order_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.order_type, range, value, display)

  return offset + length, value
end

-- Original Message Type
box_boxoptions_solaorderentry_sail_v2_25.original_message_type = {}

-- Size: Original Message Type
box_boxoptions_solaorderentry_sail_v2_25.original_message_type.size = 2

-- Display: Original Message Type
box_boxoptions_solaorderentry_sail_v2_25.original_message_type.display = function(value)
  return "Original Message Type: "..value
end

-- Dissect: Original Message Type
box_boxoptions_solaorderentry_sail_v2_25.original_message_type.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.original_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.original_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.original_message_type, range, value, display)

  return offset + length, value
end

-- Original Message Type Re Rf Rq Rp Gz
box_boxoptions_solaorderentry_sail_v2_25.original_message_type_re_rf_rq_rp_gz = {}

-- Size: Original Message Type Re Rf Rq Rp Gz
box_boxoptions_solaorderentry_sail_v2_25.original_message_type_re_rf_rq_rp_gz.size = 2

-- Display: Original Message Type Re Rf Rq Rp Gz
box_boxoptions_solaorderentry_sail_v2_25.original_message_type_re_rf_rq_rp_gz.display = function(value)
  return "Original Message Type Re Rf Rq Rp Gz: "..value
end

-- Dissect: Original Message Type Re Rf Rq Rp Gz
box_boxoptions_solaorderentry_sail_v2_25.original_message_type_re_rf_rq_rp_gz.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.original_message_type_re_rf_rq_rp_gz.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.original_message_type_re_rf_rq_rp_gz.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.original_message_type_re_rf_rq_rp_gz, range, value, display)

  return offset + length, value
end

-- Original Order Id
box_boxoptions_solaorderentry_sail_v2_25.original_order_id = {}

-- Size: Original Order Id
box_boxoptions_solaorderentry_sail_v2_25.original_order_id.size = 8

-- Display: Original Order Id
box_boxoptions_solaorderentry_sail_v2_25.original_order_id.display = function(value)
  return "Original Order Id: "..value
end

-- Dissect: Original Order Id
box_boxoptions_solaorderentry_sail_v2_25.original_order_id.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.original_order_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.original_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.original_order_id, range, value, display)

  return offset + length, value
end

-- Original Reference Id Order Id 8
box_boxoptions_solaorderentry_sail_v2_25.original_reference_id_order_id_8 = {}

-- Size: Original Reference Id Order Id 8
box_boxoptions_solaorderentry_sail_v2_25.original_reference_id_order_id_8.size = 8

-- Display: Original Reference Id Order Id 8
box_boxoptions_solaorderentry_sail_v2_25.original_reference_id_order_id_8.display = function(value)
  return "Original Reference Id Order Id 8: "..value
end

-- Dissect: Original Reference Id Order Id 8
box_boxoptions_solaorderentry_sail_v2_25.original_reference_id_order_id_8.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.original_reference_id_order_id_8.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.original_reference_id_order_id_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.original_reference_id_order_id_8, range, value, display)

  return offset + length, value
end

-- Original Reference Id Original Reference Id 8
box_boxoptions_solaorderentry_sail_v2_25.original_reference_id_original_reference_id_8 = {}

-- Size: Original Reference Id Original Reference Id 8
box_boxoptions_solaorderentry_sail_v2_25.original_reference_id_original_reference_id_8.size = 8

-- Display: Original Reference Id Original Reference Id 8
box_boxoptions_solaorderentry_sail_v2_25.original_reference_id_original_reference_id_8.display = function(value)
  return "Original Reference Id Original Reference Id 8: "..value
end

-- Dissect: Original Reference Id Original Reference Id 8
box_boxoptions_solaorderentry_sail_v2_25.original_reference_id_original_reference_id_8.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.original_reference_id_original_reference_id_8.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.original_reference_id_original_reference_id_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.original_reference_id_original_reference_id_8, range, value, display)

  return offset + length, value
end

-- Original Reference Id Quote Or Order Id
box_boxoptions_solaorderentry_sail_v2_25.original_reference_id_quote_or_order_id = {}

-- Size: Original Reference Id Quote Or Order Id
box_boxoptions_solaorderentry_sail_v2_25.original_reference_id_quote_or_order_id.size = 8

-- Display: Original Reference Id Quote Or Order Id
box_boxoptions_solaorderentry_sail_v2_25.original_reference_id_quote_or_order_id.display = function(value)
  return "Original Reference Id Quote Or Order Id: "..value
end

-- Dissect: Original Reference Id Quote Or Order Id
box_boxoptions_solaorderentry_sail_v2_25.original_reference_id_quote_or_order_id.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.original_reference_id_quote_or_order_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.original_reference_id_quote_or_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.original_reference_id_quote_or_order_id, range, value, display)

  return offset + length, value
end

-- Password Md 5 Encryption
box_boxoptions_solaorderentry_sail_v2_25.password_md_5_encryption = {}

-- Size: Password Md 5 Encryption
box_boxoptions_solaorderentry_sail_v2_25.password_md_5_encryption.size = 8

-- Display: Password Md 5 Encryption
box_boxoptions_solaorderentry_sail_v2_25.password_md_5_encryption.display = function(value)
  return "Password Md 5 Encryption: "..value
end

-- Dissect: Password Md 5 Encryption
box_boxoptions_solaorderentry_sail_v2_25.password_md_5_encryption.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.password_md_5_encryption.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.password_md_5_encryption.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.password_md_5_encryption, range, value, display)

  return offset + length, value
end

-- Percent Of Quote
box_boxoptions_solaorderentry_sail_v2_25.percent_of_quote = {}

-- Size: Percent Of Quote
box_boxoptions_solaorderentry_sail_v2_25.percent_of_quote.size = 8

-- Display: Percent Of Quote
box_boxoptions_solaorderentry_sail_v2_25.percent_of_quote.display = function(value)
  return "Percent Of Quote: "..value
end

-- Dissect: Percent Of Quote
box_boxoptions_solaorderentry_sail_v2_25.percent_of_quote.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.percent_of_quote.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solaorderentry_sail_v2_25.percent_of_quote.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.percent_of_quote, range, value, display)

  return offset + length, value
end

-- Pound Sign
box_boxoptions_solaorderentry_sail_v2_25.pound_sign = {}

-- Size: Pound Sign
box_boxoptions_solaorderentry_sail_v2_25.pound_sign.size = 1

-- Display: Pound Sign
box_boxoptions_solaorderentry_sail_v2_25.pound_sign.display = function(value)
  return "Pound Sign: "..value
end

-- Dissect: Pound Sign
box_boxoptions_solaorderentry_sail_v2_25.pound_sign.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.pound_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.pound_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.pound_sign, range, value, display)

  return offset + length, value
end

-- Preceding User Sequence Id Received Zeroes If None
box_boxoptions_solaorderentry_sail_v2_25.preceding_user_sequence_id_received_zeroes_if_none = {}

-- Size: Preceding User Sequence Id Received Zeroes If None
box_boxoptions_solaorderentry_sail_v2_25.preceding_user_sequence_id_received_zeroes_if_none.size = 8

-- Display: Preceding User Sequence Id Received Zeroes If None
box_boxoptions_solaorderentry_sail_v2_25.preceding_user_sequence_id_received_zeroes_if_none.display = function(value)
  return "Preceding User Sequence Id Received Zeroes If None: "..value
end

-- Dissect: Preceding User Sequence Id Received Zeroes If None
box_boxoptions_solaorderentry_sail_v2_25.preceding_user_sequence_id_received_zeroes_if_none.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.preceding_user_sequence_id_received_zeroes_if_none.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solaorderentry_sail_v2_25.preceding_user_sequence_id_received_zeroes_if_none.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.preceding_user_sequence_id_received_zeroes_if_none, range, value, display)

  return offset + length, value
end

-- Previous Price
box_boxoptions_solaorderentry_sail_v2_25.previous_price = {}

-- Size: Previous Price
box_boxoptions_solaorderentry_sail_v2_25.previous_price.size = 10

-- Display: Previous Price
box_boxoptions_solaorderentry_sail_v2_25.previous_price.display = function(value)
  return "Previous Price: "..value
end

-- Dissect: Previous Price
box_boxoptions_solaorderentry_sail_v2_25.previous_price.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.previous_price.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.previous_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.previous_price, range, value, display)

  return offset + length, value
end

-- Previous Quantity
box_boxoptions_solaorderentry_sail_v2_25.previous_quantity = {}

-- Size: Previous Quantity
box_boxoptions_solaorderentry_sail_v2_25.previous_quantity.size = 8

-- Display: Previous Quantity
box_boxoptions_solaorderentry_sail_v2_25.previous_quantity.display = function(value)
  return "Previous Quantity: "..value
end

-- Dissect: Previous Quantity
box_boxoptions_solaorderentry_sail_v2_25.previous_quantity.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.previous_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solaorderentry_sail_v2_25.previous_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.previous_quantity, range, value, display)

  return offset + length, value
end

-- Price
box_boxoptions_solaorderentry_sail_v2_25.price = {}

-- Size: Price
box_boxoptions_solaorderentry_sail_v2_25.price.size = 10

-- Display: Price
box_boxoptions_solaorderentry_sail_v2_25.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
box_boxoptions_solaorderentry_sail_v2_25.price.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.price.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.price, range, value, display)

  return offset + length, value
end

-- Price Type
box_boxoptions_solaorderentry_sail_v2_25.price_type = {}

-- Size: Price Type
box_boxoptions_solaorderentry_sail_v2_25.price_type.size = 1

-- Display: Price Type
box_boxoptions_solaorderentry_sail_v2_25.price_type.display = function(value)
  if value == "L" then
    return "Price Type: Limit Price Set In Message (L)"
  end
  if value == "O" then
    return "Price Type: At Opening Price (O)"
  end
  if value == "W" then
    return "Price Type: At Any Price Market Order (W)"
  end

  return "Price Type: Unknown("..value..")"
end

-- Dissect: Price Type
box_boxoptions_solaorderentry_sail_v2_25.price_type.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.price_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.price_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.price_type, range, value, display)

  return offset + length, value
end

-- Protection Type Advanced Normal
box_boxoptions_solaorderentry_sail_v2_25.protection_type_advanced_normal = {}

-- Size: Protection Type Advanced Normal
box_boxoptions_solaorderentry_sail_v2_25.protection_type_advanced_normal.size = 1

-- Display: Protection Type Advanced Normal
box_boxoptions_solaorderentry_sail_v2_25.protection_type_advanced_normal.display = function(value)
  if value == "A" then
    return "Protection Type Advanced Normal: Advanced Protection (A)"
  end
  if value == "C" then
    return "Protection Type Advanced Normal: Functionally Equivalent To N (C)"
  end
  if value == "N" then
    return "Protection Type Advanced Normal: Standard Protection (N)"
  end

  return "Protection Type Advanced Normal: Unknown("..value..")"
end

-- Dissect: Protection Type Advanced Normal
box_boxoptions_solaorderentry_sail_v2_25.protection_type_advanced_normal.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.protection_type_advanced_normal.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.protection_type_advanced_normal.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.protection_type_advanced_normal, range, value, display)

  return offset + length, value
end

-- Protocol Version
box_boxoptions_solaorderentry_sail_v2_25.protocol_version = {}

-- Size: Protocol Version
box_boxoptions_solaorderentry_sail_v2_25.protocol_version.size = 2

-- Display: Protocol Version
box_boxoptions_solaorderentry_sail_v2_25.protocol_version.display = function(value)
  if value == "ID" then
    return "Protocol Version: Versions A 0 A 1 A 2 And A 5 Are No Longer Supported A 6 Includes Complex Order A 7 A 8 B 1 B 3 (ID)"
  end

  return "Protocol Version: Unknown("..value..")"
end

-- Dissect: Protocol Version
box_boxoptions_solaorderentry_sail_v2_25.protocol_version.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.protocol_version.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.protocol_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.protocol_version, range, value, display)

  return offset + length, value
end

-- Qualified Quantity
box_boxoptions_solaorderentry_sail_v2_25.qualified_quantity = {}

-- Size: Qualified Quantity
box_boxoptions_solaorderentry_sail_v2_25.qualified_quantity.size = 8

-- Display: Qualified Quantity
box_boxoptions_solaorderentry_sail_v2_25.qualified_quantity.display = function(value)
  return "Qualified Quantity: "..value
end

-- Dissect: Qualified Quantity
box_boxoptions_solaorderentry_sail_v2_25.qualified_quantity.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.qualified_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solaorderentry_sail_v2_25.qualified_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.qualified_quantity, range, value, display)

  return offset + length, value
end

-- Quantity
box_boxoptions_solaorderentry_sail_v2_25.quantity = {}

-- Size: Quantity
box_boxoptions_solaorderentry_sail_v2_25.quantity.size = 8

-- Display: Quantity
box_boxoptions_solaorderentry_sail_v2_25.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
box_boxoptions_solaorderentry_sail_v2_25.quantity.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solaorderentry_sail_v2_25.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.quantity, range, value, display)

  return offset + length, value
end

-- Quantity 1
box_boxoptions_solaorderentry_sail_v2_25.quantity_1 = {}

-- Size: Quantity 1
box_boxoptions_solaorderentry_sail_v2_25.quantity_1.size = 8

-- Display: Quantity 1
box_boxoptions_solaorderentry_sail_v2_25.quantity_1.display = function(value)
  return "Quantity 1: "..value
end

-- Dissect: Quantity 1
box_boxoptions_solaorderentry_sail_v2_25.quantity_1.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.quantity_1.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solaorderentry_sail_v2_25.quantity_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.quantity_1, range, value, display)

  return offset + length, value
end

-- Quantity Sign
box_boxoptions_solaorderentry_sail_v2_25.quantity_sign = {}

-- Size: Quantity Sign
box_boxoptions_solaorderentry_sail_v2_25.quantity_sign.size = 1

-- Display: Quantity Sign
box_boxoptions_solaorderentry_sail_v2_25.quantity_sign.display = function(value)
  return "Quantity Sign: "..value
end

-- Dissect: Quantity Sign
box_boxoptions_solaorderentry_sail_v2_25.quantity_sign.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.quantity_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.quantity_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.quantity_sign, range, value, display)

  return offset + length, value
end

-- Quantity Term Quantity Sign 1
box_boxoptions_solaorderentry_sail_v2_25.quantity_term_quantity_sign_1 = {}

-- Size: Quantity Term Quantity Sign 1
box_boxoptions_solaorderentry_sail_v2_25.quantity_term_quantity_sign_1.size = 1

-- Display: Quantity Term Quantity Sign 1
box_boxoptions_solaorderentry_sail_v2_25.quantity_term_quantity_sign_1.display = function(value)
  return "Quantity Term Quantity Sign 1: "..value
end

-- Dissect: Quantity Term Quantity Sign 1
box_boxoptions_solaorderentry_sail_v2_25.quantity_term_quantity_sign_1.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.quantity_term_quantity_sign_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.quantity_term_quantity_sign_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.quantity_term_quantity_sign_1, range, value, display)

  return offset + length, value
end

-- Quantity Term Quantity Term 1
box_boxoptions_solaorderentry_sail_v2_25.quantity_term_quantity_term_1 = {}

-- Size: Quantity Term Quantity Term 1
box_boxoptions_solaorderentry_sail_v2_25.quantity_term_quantity_term_1.size = 1

-- Display: Quantity Term Quantity Term 1
box_boxoptions_solaorderentry_sail_v2_25.quantity_term_quantity_term_1.display = function(value)
  if value == "B" then
    return "Quantity Term Quantity Term 1: Surrender Quantity For Solicitation Facilitation And Floor Trade (B)"
  end
  if value == "J" then
    return "Quantity Term Quantity Term 1: Indicates That The Auction Type As Mip (J)"
  end
  if value == "Space" then
    return "Quantity Term Quantity Term 1: None The Above Value Indicates That The Init O Is Willing To Surrender A Portion Of The Total Number Of Contracts (Space)"
  end

  return "Quantity Term Quantity Term 1: Unknown("..value..")"
end

-- Dissect: Quantity Term Quantity Term 1
box_boxoptions_solaorderentry_sail_v2_25.quantity_term_quantity_term_1.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.quantity_term_quantity_term_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.quantity_term_quantity_term_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.quantity_term_quantity_term_1, range, value, display)

  return offset + length, value
end

-- Quantity Traded
box_boxoptions_solaorderentry_sail_v2_25.quantity_traded = {}

-- Size: Quantity Traded
box_boxoptions_solaorderentry_sail_v2_25.quantity_traded.size = 8

-- Display: Quantity Traded
box_boxoptions_solaorderentry_sail_v2_25.quantity_traded.display = function(value)
  return "Quantity Traded: "..value
end

-- Dissect: Quantity Traded
box_boxoptions_solaorderentry_sail_v2_25.quantity_traded.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.quantity_traded.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solaorderentry_sail_v2_25.quantity_traded.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.quantity_traded, range, value, display)

  return offset + length, value
end

-- Quote Cancel Reason
box_boxoptions_solaorderentry_sail_v2_25.quote_cancel_reason = {}

-- Size: Quote Cancel Reason
box_boxoptions_solaorderentry_sail_v2_25.quote_cancel_reason.size = 1

-- Display: Quote Cancel Reason
box_boxoptions_solaorderentry_sail_v2_25.quote_cancel_reason.display = function(value)
  if value == "A" then
    return "Quote Cancel Reason: Cancelled By The Trader (A)"
  end
  if value == "D" then
    return "Quote Cancel Reason: Mmp Percent Of Quote Has Been Reached (D)"
  end
  if value == "E" then
    return "Quote Cancel Reason: Maximum Triggers Protection Limit Exceeded (E)"
  end
  if value == "G" then
    return "Quote Cancel Reason: Cancelled By Supervisor (G)"
  end
  if value == "I" then
    return "Quote Cancel Reason: Eliminated On Disconnect (I)"
  end
  if value == "L" then
    return "Quote Cancel Reason: Traded Activity Protection Limit Exceeded (L)"
  end
  if value == "M" then
    return "Quote Cancel Reason: Cancelled By The Box Market Operations Center Moc (M)"
  end
  if value == "O" then
    return "Quote Cancel Reason: Eliminated Due To Drill Through Protection (O)"
  end
  if value == "P" then
    return "Quote Cancel Reason: Mmp Max Number Of Trades Has Been Reached (P)"
  end
  if value == "Q" then
    return "Quote Cancel Reason: Quotes Cancelled (Q)"
  end
  if value == "R" then
    return "Quote Cancel Reason: Mmp Max Value Has Been Reached (R)"
  end
  if value == "S" then
    return "Quote Cancel Reason: Cancelled By The System (S)"
  end
  if value == "T" then
    return "Quote Cancel Reason: Mmp Max Volume Has Been Reached (T)"
  end
  if value == "N" then
    return "Quote Cancel Reason: Mmp Max Delta Volume Has Been Reached (N)"
  end
  if value == "V" then
    return "Quote Cancel Reason: Mmp Max Delta Value Has Been Reached (V)"
  end
  if value == "W" then
    return "Quote Cancel Reason: Cancel Pending (W)"
  end

  return "Quote Cancel Reason: Unknown("..value..")"
end

-- Dissect: Quote Cancel Reason
box_boxoptions_solaorderentry_sail_v2_25.quote_cancel_reason.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.quote_cancel_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.quote_cancel_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.quote_cancel_reason, range, value, display)

  return offset + length, value
end

-- Quote Id Identifies Traders Quote On This Group
box_boxoptions_solaorderentry_sail_v2_25.quote_id_identifies_traders_quote_on_this_group = {}

-- Size: Quote Id Identifies Traders Quote On This Group
box_boxoptions_solaorderentry_sail_v2_25.quote_id_identifies_traders_quote_on_this_group.size = 8

-- Display: Quote Id Identifies Traders Quote On This Group
box_boxoptions_solaorderentry_sail_v2_25.quote_id_identifies_traders_quote_on_this_group.display = function(value)
  return "Quote Id Identifies Traders Quote On This Group: "..value
end

-- Dissect: Quote Id Identifies Traders Quote On This Group
box_boxoptions_solaorderentry_sail_v2_25.quote_id_identifies_traders_quote_on_this_group.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.quote_id_identifies_traders_quote_on_this_group.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.quote_id_identifies_traders_quote_on_this_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.quote_id_identifies_traders_quote_on_this_group, range, value, display)

  return offset + length, value
end

-- Quote Number
box_boxoptions_solaorderentry_sail_v2_25.quote_number = {}

-- Size: Quote Number
box_boxoptions_solaorderentry_sail_v2_25.quote_number.size = 3

-- Display: Quote Number
box_boxoptions_solaorderentry_sail_v2_25.quote_number.display = function(value)
  return "Quote Number: "..value
end

-- Dissect: Quote Number
box_boxoptions_solaorderentry_sail_v2_25.quote_number.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.quote_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solaorderentry_sail_v2_25.quote_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.quote_number, range, value, display)

  return offset + length, value
end

-- Quote Price
box_boxoptions_solaorderentry_sail_v2_25.quote_price = {}

-- Size: Quote Price
box_boxoptions_solaorderentry_sail_v2_25.quote_price.size = 10

-- Display: Quote Price
box_boxoptions_solaorderentry_sail_v2_25.quote_price.display = function(value)
  return "Quote Price: "..value
end

-- Dissect: Quote Price
box_boxoptions_solaorderentry_sail_v2_25.quote_price.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.quote_price.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.quote_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.quote_price, range, value, display)

  return offset + length, value
end

-- Quote Quantity
box_boxoptions_solaorderentry_sail_v2_25.quote_quantity = {}

-- Size: Quote Quantity
box_boxoptions_solaorderentry_sail_v2_25.quote_quantity.size = 8

-- Display: Quote Quantity
box_boxoptions_solaorderentry_sail_v2_25.quote_quantity.display = function(value)
  return "Quote Quantity: "..value
end

-- Dissect: Quote Quantity
box_boxoptions_solaorderentry_sail_v2_25.quote_quantity.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.quote_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solaorderentry_sail_v2_25.quote_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.quote_quantity, range, value, display)

  return offset + length, value
end

-- Received Message Type
box_boxoptions_solaorderentry_sail_v2_25.received_message_type = {}

-- Size: Received Message Type
box_boxoptions_solaorderentry_sail_v2_25.received_message_type.size = 2

-- Display: Received Message Type
box_boxoptions_solaorderentry_sail_v2_25.received_message_type.display = function(value)
  return "Received Message Type: "..value
end

-- Dissect: Received Message Type
box_boxoptions_solaorderentry_sail_v2_25.received_message_type.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.received_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.received_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.received_message_type, range, value, display)

  return offset + length, value
end

-- Received User Sequence Id
box_boxoptions_solaorderentry_sail_v2_25.received_user_sequence_id = {}

-- Size: Received User Sequence Id
box_boxoptions_solaorderentry_sail_v2_25.received_user_sequence_id.size = 8

-- Display: Received User Sequence Id
box_boxoptions_solaorderentry_sail_v2_25.received_user_sequence_id.display = function(value)
  return "Received User Sequence Id: "..value
end

-- Dissect: Received User Sequence Id
box_boxoptions_solaorderentry_sail_v2_25.received_user_sequence_id.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.received_user_sequence_id.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solaorderentry_sail_v2_25.received_user_sequence_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.received_user_sequence_id, range, value, display)

  return offset + length, value
end

-- Reference Id
box_boxoptions_solaorderentry_sail_v2_25.reference_id = {}

-- Size: Reference Id
box_boxoptions_solaorderentry_sail_v2_25.reference_id.size = 8

-- Display: Reference Id
box_boxoptions_solaorderentry_sail_v2_25.reference_id.display = function(value)
  return "Reference Id: "..value
end

-- Dissect: Reference Id
box_boxoptions_solaorderentry_sail_v2_25.reference_id.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.reference_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.reference_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.reference_id, range, value, display)

  return offset + length, value
end

-- Reference Id Quote
box_boxoptions_solaorderentry_sail_v2_25.reference_id_quote = {}

-- Size: Reference Id Quote
box_boxoptions_solaorderentry_sail_v2_25.reference_id_quote.size = 8

-- Display: Reference Id Quote
box_boxoptions_solaorderentry_sail_v2_25.reference_id_quote.display = function(value)
  return "Reference Id Quote: "..value
end

-- Dissect: Reference Id Quote
box_boxoptions_solaorderentry_sail_v2_25.reference_id_quote.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.reference_id_quote.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.reference_id_quote.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.reference_id_quote, range, value, display)

  return offset + length, value
end

-- Referenced Order Id
box_boxoptions_solaorderentry_sail_v2_25.referenced_order_id = {}

-- Size: Referenced Order Id
box_boxoptions_solaorderentry_sail_v2_25.referenced_order_id.size = 8

-- Display: Referenced Order Id
box_boxoptions_solaorderentry_sail_v2_25.referenced_order_id.display = function(value)
  return "Referenced Order Id: "..value
end

-- Dissect: Referenced Order Id
box_boxoptions_solaorderentry_sail_v2_25.referenced_order_id.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.referenced_order_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.referenced_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.referenced_order_id, range, value, display)

  return offset + length, value
end

-- Rejection Code
box_boxoptions_solaorderentry_sail_v2_25.rejection_code = {}

-- Size: Rejection Code
box_boxoptions_solaorderentry_sail_v2_25.rejection_code.size = 4

-- Display: Rejection Code
box_boxoptions_solaorderentry_sail_v2_25.rejection_code.display = function(value)
  if value == "0001" then
    return "Rejection Code: Executing Participant Discretion (0001)"
  end
  if value == "0002" then
    return "Rejection Code: Auction Order Failed (0002)"
  end

  return "Rejection Code: Unknown("..value..")"
end

-- Dissect: Rejection Code
box_boxoptions_solaorderentry_sail_v2_25.rejection_code.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.rejection_code.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solaorderentry_sail_v2_25.rejection_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.rejection_code, range, value, display)

  return offset + length, value
end

-- Selling Additional Client Memo
box_boxoptions_solaorderentry_sail_v2_25.selling_additional_client_memo = {}

-- Size: Selling Additional Client Memo
box_boxoptions_solaorderentry_sail_v2_25.selling_additional_client_memo.size = 16

-- Display: Selling Additional Client Memo
box_boxoptions_solaorderentry_sail_v2_25.selling_additional_client_memo.display = function(value)
  return "Selling Additional Client Memo: "..value
end

-- Dissect: Selling Additional Client Memo
box_boxoptions_solaorderentry_sail_v2_25.selling_additional_client_memo.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.selling_additional_client_memo.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.selling_additional_client_memo.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.selling_additional_client_memo, range, value, display)

  return offset + length, value
end

-- Session Id
box_boxoptions_solaorderentry_sail_v2_25.session_id = {}

-- Size: Session Id
box_boxoptions_solaorderentry_sail_v2_25.session_id.size = 4

-- Display: Session Id
box_boxoptions_solaorderentry_sail_v2_25.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
box_boxoptions_solaorderentry_sail_v2_25.session_id.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.session_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.session_id, range, value, display)

  return offset + length, value
end

-- Special Price Term
box_boxoptions_solaorderentry_sail_v2_25.special_price_term = {}

-- Size: Special Price Term
box_boxoptions_solaorderentry_sail_v2_25.special_price_term.size = 1

-- Display: Special Price Term
box_boxoptions_solaorderentry_sail_v2_25.special_price_term.display = function(value)
  if value == "B" then
    return "Special Price Term: Solicitation Auction (B)"
  end
  if value == "C" then
    return "Special Price Term: Facilitation Auction (C)"
  end
  if value == "G" then
    return "Special Price Term: Regular Pip (G)"
  end
  if value == "X" then
    return "Special Price Term: Customer Cross Order Or Qualified Contingent Cross Order (X)"
  end
  if value == "O" then
    return "Special Price Term: Directed Order (O)"
  end
  if value == "P" then
    return "Special Price Term: Preferenced Order (P)"
  end
  if value == "R" then
    return "Special Price Term: Floor Trade (R)"
  end
  if value == "A" then
    return "Special Price Term: Indication Of Interest (A)"
  end

  return "Special Price Term: Unknown("..value..")"
end

-- Dissect: Special Price Term
box_boxoptions_solaorderentry_sail_v2_25.special_price_term.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.special_price_term.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.special_price_term.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.special_price_term, range, value, display)

  return offset + length, value
end

-- Special Trade Indicator
box_boxoptions_solaorderentry_sail_v2_25.special_trade_indicator = {}

-- Size: Special Trade Indicator
box_boxoptions_solaorderentry_sail_v2_25.special_trade_indicator.size = 1

-- Display: Special Trade Indicator
box_boxoptions_solaorderentry_sail_v2_25.special_trade_indicator.display = function(value)
  if value == "A" then
    return "Special Trade Indicator: As Of Trade (A)"
  end
  if value == "B" then
    return "Special Trade Indicator: Block Trade (B)"
  end
  if value == "L" then
    return "Special Trade Indicator: Late Trade (L)"
  end
  if value == "O" then
    return "Special Trade Indicator: Hidden Trade (O)"
  end
  if value == "S" then
    return "Special Trade Indicator: Size Adjustment Trade (S)"
  end
  if value == "R" then
    return "Special Trade Indicator: Floor Trade (R)"
  end
  if value == "D" then
    return "Special Trade Indicator: Customer Cross Order Or Qualified Contingent Cross Order Applies To Solicitation Facilitation And Floor Trade Only (D)"
  end
  if value == "g" then
    return "Special Trade Indicator: Contingent Trade Trade Was Not Controlled Against The Nbbo (g)"
  end

  return "Special Trade Indicator: Unknown("..value..")"
end

-- Dissect: Special Trade Indicator
box_boxoptions_solaorderentry_sail_v2_25.special_trade_indicator.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.special_trade_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.special_trade_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.special_trade_indicator, range, value, display)

  return offset + length, value
end

-- Start Of Message In Error
box_boxoptions_solaorderentry_sail_v2_25.start_of_message_in_error = {}

-- Size: Start Of Message In Error
box_boxoptions_solaorderentry_sail_v2_25.start_of_message_in_error.size = 100

-- Display: Start Of Message In Error
box_boxoptions_solaorderentry_sail_v2_25.start_of_message_in_error.display = function(value)
  return "Start Of Message In Error: "..value
end

-- Dissect: Start Of Message In Error
box_boxoptions_solaorderentry_sail_v2_25.start_of_message_in_error.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.start_of_message_in_error.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.start_of_message_in_error.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.start_of_message_in_error, range, value, display)

  return offset + length, value
end

-- Strategy Group
box_boxoptions_solaorderentry_sail_v2_25.strategy_group = {}

-- Size: Strategy Group
box_boxoptions_solaorderentry_sail_v2_25.strategy_group.size = 2

-- Display: Strategy Group
box_boxoptions_solaorderentry_sail_v2_25.strategy_group.display = function(value)
  return "Strategy Group: "..value
end

-- Dissect: Strategy Group
box_boxoptions_solaorderentry_sail_v2_25.strategy_group.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.strategy_group.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.strategy_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.strategy_group, range, value, display)

  return offset + length, value
end

-- Strategy Instrument Id
box_boxoptions_solaorderentry_sail_v2_25.strategy_instrument_id = {}

-- Size: Strategy Instrument Id
box_boxoptions_solaorderentry_sail_v2_25.strategy_instrument_id.size = 4

-- Display: Strategy Instrument Id
box_boxoptions_solaorderentry_sail_v2_25.strategy_instrument_id.display = function(value)
  return "Strategy Instrument Id: "..value
end

-- Dissect: Strategy Instrument Id
box_boxoptions_solaorderentry_sail_v2_25.strategy_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.strategy_instrument_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.strategy_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.strategy_instrument_id, range, value, display)

  return offset + length, value
end

-- Strategy Trade Number
box_boxoptions_solaorderentry_sail_v2_25.strategy_trade_number = {}

-- Size: Strategy Trade Number
box_boxoptions_solaorderentry_sail_v2_25.strategy_trade_number.size = 8

-- Display: Strategy Trade Number
box_boxoptions_solaorderentry_sail_v2_25.strategy_trade_number.display = function(value)
  return "Strategy Trade Number: "..value
end

-- Dissect: Strategy Trade Number
box_boxoptions_solaorderentry_sail_v2_25.strategy_trade_number.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.strategy_trade_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solaorderentry_sail_v2_25.strategy_trade_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.strategy_trade_number, range, value, display)

  return offset + length, value
end

-- Strategy Verb Side
box_boxoptions_solaorderentry_sail_v2_25.strategy_verb_side = {}

-- Size: Strategy Verb Side
box_boxoptions_solaorderentry_sail_v2_25.strategy_verb_side.size = 1

-- Display: Strategy Verb Side
box_boxoptions_solaorderentry_sail_v2_25.strategy_verb_side.display = function(value)
  if value == "B" then
    return "Strategy Verb Side: Buy (B)"
  end
  if value == "S" then
    return "Strategy Verb Side: Sell (S)"
  end

  return "Strategy Verb Side: Unknown("..value..")"
end

-- Dissect: Strategy Verb Side
box_boxoptions_solaorderentry_sail_v2_25.strategy_verb_side.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.strategy_verb_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.strategy_verb_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.strategy_verb_side, range, value, display)

  return offset + length, value
end

-- System Sequence ID
box_boxoptions_solaorderentry_sail_v2_25.system_sequence_id = {}

-- Size: System Sequence ID
box_boxoptions_solaorderentry_sail_v2_25.system_sequence_id.size = 6

-- Display: System Sequence ID
box_boxoptions_solaorderentry_sail_v2_25.system_sequence_id.display = function(value)
  return "System Sequence ID: "..value
end

-- Dissect: System Sequence ID
box_boxoptions_solaorderentry_sail_v2_25.system_sequence_id.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.system_sequence_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.system_sequence_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.system_sequence_id, range, value, display)

  return offset + length, value
end

-- Time
box_boxoptions_solaorderentry_sail_v2_25.time = {}

-- Size: Time
box_boxoptions_solaorderentry_sail_v2_25.time.size = 6

-- Display: Time
box_boxoptions_solaorderentry_sail_v2_25.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
box_boxoptions_solaorderentry_sail_v2_25.time.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.time.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solaorderentry_sail_v2_25.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.time, range, value, display)

  return offset + length, value
end

-- Time Hhmmss
box_boxoptions_solaorderentry_sail_v2_25.time_hhmmss = {}

-- Size: Time Hhmmss
box_boxoptions_solaorderentry_sail_v2_25.time_hhmmss.size = 6

-- Display: Time Hhmmss
box_boxoptions_solaorderentry_sail_v2_25.time_hhmmss.display = function(value)
  return "Time Hhmmss: "..value
end

-- Dissect: Time Hhmmss
box_boxoptions_solaorderentry_sail_v2_25.time_hhmmss.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.time_hhmmss.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solaorderentry_sail_v2_25.time_hhmmss.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.time_hhmmss, range, value, display)

  return offset + length, value
end

-- Time Local
box_boxoptions_solaorderentry_sail_v2_25.time_local = {}

-- Size: Time Local
box_boxoptions_solaorderentry_sail_v2_25.time_local.size = 6

-- Display: Time Local
box_boxoptions_solaorderentry_sail_v2_25.time_local.display = function(value)
  return "Time Local: "..value
end

-- Dissect: Time Local
box_boxoptions_solaorderentry_sail_v2_25.time_local.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.time_local.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solaorderentry_sail_v2_25.time_local.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.time_local, range, value, display)

  return offset + length, value
end

-- Time Of The Trade Hhmmss
box_boxoptions_solaorderentry_sail_v2_25.time_of_the_trade_hhmmss = {}

-- Size: Time Of The Trade Hhmmss
box_boxoptions_solaorderentry_sail_v2_25.time_of_the_trade_hhmmss.size = 6

-- Display: Time Of The Trade Hhmmss
box_boxoptions_solaorderentry_sail_v2_25.time_of_the_trade_hhmmss.display = function(value)
  return "Time Of The Trade Hhmmss: "..value
end

-- Dissect: Time Of The Trade Hhmmss
box_boxoptions_solaorderentry_sail_v2_25.time_of_the_trade_hhmmss.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.time_of_the_trade_hhmmss.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solaorderentry_sail_v2_25.time_of_the_trade_hhmmss.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.time_of_the_trade_hhmmss, range, value, display)

  return offset + length, value
end

-- Time Trade Hhmmss
box_boxoptions_solaorderentry_sail_v2_25.time_trade_hhmmss = {}

-- Size: Time Trade Hhmmss
box_boxoptions_solaorderentry_sail_v2_25.time_trade_hhmmss.size = 6

-- Display: Time Trade Hhmmss
box_boxoptions_solaorderentry_sail_v2_25.time_trade_hhmmss.display = function(value)
  return "Time Trade Hhmmss: "..value
end

-- Dissect: Time Trade Hhmmss
box_boxoptions_solaorderentry_sail_v2_25.time_trade_hhmmss.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.time_trade_hhmmss.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solaorderentry_sail_v2_25.time_trade_hhmmss.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.time_trade_hhmmss, range, value, display)

  return offset + length, value
end

-- Trade Leg Price
box_boxoptions_solaorderentry_sail_v2_25.trade_leg_price = {}

-- Size: Trade Leg Price
box_boxoptions_solaorderentry_sail_v2_25.trade_leg_price.size = 10

-- Display: Trade Leg Price
box_boxoptions_solaorderentry_sail_v2_25.trade_leg_price.display = function(value)
  return "Trade Leg Price: "..value
end

-- Dissect: Trade Leg Price
box_boxoptions_solaorderentry_sail_v2_25.trade_leg_price.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.trade_leg_price.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.trade_leg_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.trade_leg_price, range, value, display)

  return offset + length, value
end

-- Trade Memo String 5050
box_boxoptions_solaorderentry_sail_v2_25.trade_memo_string_5050 = {}

-- Size: Trade Memo String 5050
box_boxoptions_solaorderentry_sail_v2_25.trade_memo_string_5050.size = 50

-- Display: Trade Memo String 5050
box_boxoptions_solaorderentry_sail_v2_25.trade_memo_string_5050.display = function(value)
  return "Trade Memo String 5050: "..value
end

-- Dissect: Trade Memo String 5050
box_boxoptions_solaorderentry_sail_v2_25.trade_memo_string_5050.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.trade_memo_string_5050.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.trade_memo_string_5050.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.trade_memo_string_5050, range, value, display)

  return offset + length, value
end

-- Trade Memo Trade Memo 50
box_boxoptions_solaorderentry_sail_v2_25.trade_memo_trade_memo_50 = {}

-- Size: Trade Memo Trade Memo 50
box_boxoptions_solaorderentry_sail_v2_25.trade_memo_trade_memo_50.size = 50

-- Display: Trade Memo Trade Memo 50
box_boxoptions_solaorderentry_sail_v2_25.trade_memo_trade_memo_50.display = function(value)
  return "Trade Memo Trade Memo 50: "..value
end

-- Dissect: Trade Memo Trade Memo 50
box_boxoptions_solaorderentry_sail_v2_25.trade_memo_trade_memo_50.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.trade_memo_trade_memo_50.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.trade_memo_trade_memo_50.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.trade_memo_trade_memo_50, range, value, display)

  return offset + length, value
end

-- Trade Number
box_boxoptions_solaorderentry_sail_v2_25.trade_number = {}

-- Size: Trade Number
box_boxoptions_solaorderentry_sail_v2_25.trade_number.size = 8

-- Display: Trade Number
box_boxoptions_solaorderentry_sail_v2_25.trade_number.display = function(value)
  return "Trade Number: "..value
end

-- Dissect: Trade Number
box_boxoptions_solaorderentry_sail_v2_25.trade_number.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.trade_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solaorderentry_sail_v2_25.trade_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.trade_number, range, value, display)

  return offset + length, value
end

-- Trade Price
box_boxoptions_solaorderentry_sail_v2_25.trade_price = {}

-- Size: Trade Price
box_boxoptions_solaorderentry_sail_v2_25.trade_price.size = 10

-- Display: Trade Price
box_boxoptions_solaorderentry_sail_v2_25.trade_price.display = function(value)
  return "Trade Price: "..value
end

-- Dissect: Trade Price
box_boxoptions_solaorderentry_sail_v2_25.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.trade_price.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Trade Type
box_boxoptions_solaorderentry_sail_v2_25.trade_type = {}

-- Size: Trade Type
box_boxoptions_solaorderentry_sail_v2_25.trade_type.size = 1

-- Display: Trade Type
box_boxoptions_solaorderentry_sail_v2_25.trade_type.display = function(value)
  if value == "A" then
    return "Trade Type: Traded During A Guaranteed Auction (A)"
  end
  if value == "B" then
    return "Trade Type: Solicitation Auction (B)"
  end
  if value == "C" then
    return "Trade Type: Facilitation Auction (C)"
  end
  if value == "F" then
    return "Trade Type: Traded During Continuous Trading Following Fifo Algorithm (F)"
  end
  if value == "M" then
    return "Trade Type: Trade Entered By Market Operations (M)"
  end
  if value == "O" then
    return "Trade Type: Traded During Opening (O)"
  end

  return "Trade Type: Unknown("..value..")"
end

-- Dissect: Trade Type
box_boxoptions_solaorderentry_sail_v2_25.trade_type.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.trade_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.trade_type, range, value, display)

  return offset + length, value
end

-- Trader Id
box_boxoptions_solaorderentry_sail_v2_25.trader_id = {}

-- Size: Trader Id
box_boxoptions_solaorderentry_sail_v2_25.trader_id.size = 8

-- Display: Trader Id
box_boxoptions_solaorderentry_sail_v2_25.trader_id.display = function(value)
  return "Trader Id: "..value
end

-- Dissect: Trader Id
box_boxoptions_solaorderentry_sail_v2_25.trader_id.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.trader_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.trader_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.trader_id, range, value, display)

  return offset + length, value
end

-- Type Of Cancellation
box_boxoptions_solaorderentry_sail_v2_25.type_of_cancellation = {}

-- Size: Type Of Cancellation
box_boxoptions_solaorderentry_sail_v2_25.type_of_cancellation.size = 1

-- Display: Type Of Cancellation
box_boxoptions_solaorderentry_sail_v2_25.type_of_cancellation.display = function(value)
  if value == "A" then
    return "Type Of Cancellation: All (A)"
  end
  if value == "L" then
    return "Type Of Cancellation: Locked (L)"
  end
  if value == "O" then
    return "Type Of Cancellation: Orders Only (O)"
  end
  if value == "Q" then
    return "Type Of Cancellation: Quotes Only (Q)"
  end

  return "Type Of Cancellation: Unknown("..value..")"
end

-- Dissect: Type Of Cancellation
box_boxoptions_solaorderentry_sail_v2_25.type_of_cancellation.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.type_of_cancellation.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.type_of_cancellation.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.type_of_cancellation, range, value, display)

  return offset + length, value
end

-- Type Of Cancellation Only Q Quotes Only Can Be Returned
box_boxoptions_solaorderentry_sail_v2_25.type_of_cancellation_only_q_quotes_only_can_be_returned = {}

-- Size: Type Of Cancellation Only Q Quotes Only Can Be Returned
box_boxoptions_solaorderentry_sail_v2_25.type_of_cancellation_only_q_quotes_only_can_be_returned.size = 1

-- Display: Type Of Cancellation Only Q Quotes Only Can Be Returned
box_boxoptions_solaorderentry_sail_v2_25.type_of_cancellation_only_q_quotes_only_can_be_returned.display = function(value)
  if value == "A" then
    return "Type Of Cancellation Only Q Quotes Only Can Be Returned: All (A)"
  end
  if value == "L" then
    return "Type Of Cancellation Only Q Quotes Only Can Be Returned: Locked (L)"
  end
  if value == "O" then
    return "Type Of Cancellation Only Q Quotes Only Can Be Returned: Orders Only (O)"
  end
  if value == "Q" then
    return "Type Of Cancellation Only Q Quotes Only Can Be Returned: Quotes Only (Q)"
  end

  return "Type Of Cancellation Only Q Quotes Only Can Be Returned: Unknown("..value..")"
end

-- Dissect: Type Of Cancellation Only Q Quotes Only Can Be Returned
box_boxoptions_solaorderentry_sail_v2_25.type_of_cancellation_only_q_quotes_only_can_be_returned.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.type_of_cancellation_only_q_quotes_only_can_be_returned.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.type_of_cancellation_only_q_quotes_only_can_be_returned.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.type_of_cancellation_only_q_quotes_only_can_be_returned, range, value, display)

  return offset + length, value
end

-- Type Of Cancellation Q Quotes Only
box_boxoptions_solaorderentry_sail_v2_25.type_of_cancellation_q_quotes_only = {}

-- Size: Type Of Cancellation Q Quotes Only
box_boxoptions_solaorderentry_sail_v2_25.type_of_cancellation_q_quotes_only.size = 1

-- Display: Type Of Cancellation Q Quotes Only
box_boxoptions_solaorderentry_sail_v2_25.type_of_cancellation_q_quotes_only.display = function(value)
  if value == "A" then
    return "Type Of Cancellation Q Quotes Only: All (A)"
  end
  if value == "L" then
    return "Type Of Cancellation Q Quotes Only: Locked (L)"
  end
  if value == "O" then
    return "Type Of Cancellation Q Quotes Only: Orders Only (O)"
  end
  if value == "Q" then
    return "Type Of Cancellation Q Quotes Only: Quotes Only (Q)"
  end

  return "Type Of Cancellation Q Quotes Only: Unknown("..value..")"
end

-- Dissect: Type Of Cancellation Q Quotes Only
box_boxoptions_solaorderentry_sail_v2_25.type_of_cancellation_q_quotes_only.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.type_of_cancellation_q_quotes_only.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.type_of_cancellation_q_quotes_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.type_of_cancellation_q_quotes_only, range, value, display)

  return offset + length, value
end

-- User Id
box_boxoptions_solaorderentry_sail_v2_25.user_id = {}

-- Size: User Id
box_boxoptions_solaorderentry_sail_v2_25.user_id.size = 8

-- Display: User Id
box_boxoptions_solaorderentry_sail_v2_25.user_id.display = function(value)
  return "User Id: "..value
end

-- Dissect: User Id
box_boxoptions_solaorderentry_sail_v2_25.user_id.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.user_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.user_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.user_id, range, value, display)

  return offset + length, value
end

-- User Sequence ID
box_boxoptions_solaorderentry_sail_v2_25.user_sequence_id = {}

-- Size: User Sequence ID
box_boxoptions_solaorderentry_sail_v2_25.user_sequence_id.size = 8

-- Display: User Sequence ID
box_boxoptions_solaorderentry_sail_v2_25.user_sequence_id.display = function(value)
  return "User Sequence ID: "..value
end

-- Dissect: User Sequence ID
box_boxoptions_solaorderentry_sail_v2_25.user_sequence_id.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.user_sequence_id.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solaorderentry_sail_v2_25.user_sequence_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.user_sequence_id, range, value, display)

  return offset + length, value
end

-- User Sequence Id First User Sequence Id For Nextcurrent Heartbeat Period
box_boxoptions_solaorderentry_sail_v2_25.user_sequence_id_first_user_sequence_id_for_nextcurrent_heartbeat_period = {}

-- Size: User Sequence Id First User Sequence Id For Nextcurrent Heartbeat Period
box_boxoptions_solaorderentry_sail_v2_25.user_sequence_id_first_user_sequence_id_for_nextcurrent_heartbeat_period.size = 8

-- Display: User Sequence Id First User Sequence Id For Nextcurrent Heartbeat Period
box_boxoptions_solaorderentry_sail_v2_25.user_sequence_id_first_user_sequence_id_for_nextcurrent_heartbeat_period.display = function(value)
  return "User Sequence Id First User Sequence Id For Nextcurrent Heartbeat Period: "..value
end

-- Dissect: User Sequence Id First User Sequence Id For Nextcurrent Heartbeat Period
box_boxoptions_solaorderentry_sail_v2_25.user_sequence_id_first_user_sequence_id_for_nextcurrent_heartbeat_period.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.user_sequence_id_first_user_sequence_id_for_nextcurrent_heartbeat_period.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solaorderentry_sail_v2_25.user_sequence_id_first_user_sequence_id_for_nextcurrent_heartbeat_period.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.user_sequence_id_first_user_sequence_id_for_nextcurrent_heartbeat_period, range, value, display)

  return offset + length, value
end

-- User Time
box_boxoptions_solaorderentry_sail_v2_25.user_time = {}

-- Size: User Time
box_boxoptions_solaorderentry_sail_v2_25.user_time.size = 6

-- Display: User Time
box_boxoptions_solaorderentry_sail_v2_25.user_time.display = function(value)
  return "User Time: "..value
end

-- Dissect: User Time
box_boxoptions_solaorderentry_sail_v2_25.user_time.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.user_time.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solaorderentry_sail_v2_25.user_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.user_time, range, value, display)

  return offset + length, value
end

-- Verb
box_boxoptions_solaorderentry_sail_v2_25.verb = {}

-- Size: Verb
box_boxoptions_solaorderentry_sail_v2_25.verb.size = 1

-- Display: Verb
box_boxoptions_solaorderentry_sail_v2_25.verb.display = function(value)
  if value == "B" then
    return "Verb: Buy (B)"
  end
  if value == "S" then
    return "Verb: Sell (S)"
  end

  return "Verb: Unknown("..value..")"
end

-- Dissect: Verb
box_boxoptions_solaorderentry_sail_v2_25.verb.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.verb.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.verb.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.verb, range, value, display)

  return offset + length, value
end

-- Verb Side
box_boxoptions_solaorderentry_sail_v2_25.verb_side = {}

-- Size: Verb Side
box_boxoptions_solaorderentry_sail_v2_25.verb_side.size = 1

-- Display: Verb Side
box_boxoptions_solaorderentry_sail_v2_25.verb_side.display = function(value)
  if value == "B" then
    return "Verb Side: Buy (B)"
  end
  if value == "S" then
    return "Verb Side: Sell (S)"
  end

  return "Verb Side: Unknown("..value..")"
end

-- Dissect: Verb Side
box_boxoptions_solaorderentry_sail_v2_25.verb_side.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solaorderentry_sail_v2_25.verb_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solaorderentry_sail_v2_25.verb_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.verb_side, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Box BoxOptions SolaOrderEntry Sail 2.25
-----------------------------------------------------------------------

-- Owner Data
box_boxoptions_solaorderentry_sail_v2_25.owner_data = {}

-- Size: Owner Data
box_boxoptions_solaorderentry_sail_v2_25.owner_data.size =
  box_boxoptions_solaorderentry_sail_v2_25.client_order_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.pound_sign.size + 
  box_boxoptions_solaorderentry_sail_v2_25.memo.size

-- Display: Owner Data
box_boxoptions_solaorderentry_sail_v2_25.owner_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Owner Data
box_boxoptions_solaorderentry_sail_v2_25.owner_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Order Id: ClientOrderId
  index, client_order_id = box_boxoptions_solaorderentry_sail_v2_25.client_order_id.dissect(buffer, index, packet, parent)

  -- Pound Sign: Pound Sign
  index, pound_sign = box_boxoptions_solaorderentry_sail_v2_25.pound_sign.dissect(buffer, index, packet, parent)

  -- Memo: Memo
  index, memo = box_boxoptions_solaorderentry_sail_v2_25.memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Owner Data
box_boxoptions_solaorderentry_sail_v2_25.owner_data.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.owner_data, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.owner_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.owner_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.owner_data.fields(buffer, offset, packet, parent)
  end
end

-- Clearing Data
box_boxoptions_solaorderentry_sail_v2_25.clearing_data = {}

-- Size: Clearing Data
box_boxoptions_solaorderentry_sail_v2_25.clearing_data.size =
  box_boxoptions_solaorderentry_sail_v2_25.clearing_instruction.size + 
  box_boxoptions_solaorderentry_sail_v2_25.account_type.size + 
  box_boxoptions_solaorderentry_sail_v2_25.open_close.size + 
  box_boxoptions_solaorderentry_sail_v2_25.hedge_spec.size + 
  box_boxoptions_solaorderentry_sail_v2_25.clearing_destination.size

-- Display: Clearing Data
box_boxoptions_solaorderentry_sail_v2_25.clearing_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Clearing Data
box_boxoptions_solaorderentry_sail_v2_25.clearing_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Clearing Instruction: Clearing Instruction
  index, clearing_instruction = box_boxoptions_solaorderentry_sail_v2_25.clearing_instruction.dissect(buffer, index, packet, parent)

  -- Account Type: AccountType
  index, account_type = box_boxoptions_solaorderentry_sail_v2_25.account_type.dissect(buffer, index, packet, parent)

  -- Open Close: Open/Close
  index, open_close = box_boxoptions_solaorderentry_sail_v2_25.open_close.dissect(buffer, index, packet, parent)

  -- Hedge Spec: Hedge/Spec
  index, hedge_spec = box_boxoptions_solaorderentry_sail_v2_25.hedge_spec.dissect(buffer, index, packet, parent)

  -- Clearing Destination: Firm ID
  index, clearing_destination = box_boxoptions_solaorderentry_sail_v2_25.clearing_destination.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Clearing Data
box_boxoptions_solaorderentry_sail_v2_25.clearing_data.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.clearing_data, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.clearing_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.clearing_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.clearing_data.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancellation Notice By System
box_boxoptions_solaorderentry_sail_v2_25.order_cancellation_notice_by_system = {}

-- Size: Order Cancellation Notice By System
box_boxoptions_solaorderentry_sail_v2_25.order_cancellation_notice_by_system.size =
  box_boxoptions_solaorderentry_sail_v2_25.group.size + 
  box_boxoptions_solaorderentry_sail_v2_25.instrument.size + 
  box_boxoptions_solaorderentry_sail_v2_25.trader_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.order_id_order_id_8.size + 
  box_boxoptions_solaorderentry_sail_v2_25.verb_side.size + 
  box_boxoptions_solaorderentry_sail_v2_25.quantity.size + 
  box_boxoptions_solaorderentry_sail_v2_25.assigned_price.size + 
  box_boxoptions_solaorderentry_sail_v2_25.clearing_data.size + 
  box_boxoptions_solaorderentry_sail_v2_25.owner_data.size + 
  box_boxoptions_solaorderentry_sail_v2_25.original_order_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.auction_id_only_if_message_type_is_ki_or_else_zeroes.size + 
  box_boxoptions_solaorderentry_sail_v2_25.additional_client_memo.size + 
  box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_string_44.size

-- Display: Order Cancellation Notice By System
box_boxoptions_solaorderentry_sail_v2_25.order_cancellation_notice_by_system.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancellation Notice By System
box_boxoptions_solaorderentry_sail_v2_25.order_cancellation_notice_by_system.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group: Group ID
  index, group = box_boxoptions_solaorderentry_sail_v2_25.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = box_boxoptions_solaorderentry_sail_v2_25.instrument.dissect(buffer, index, packet, parent)

  -- Trader Id: Trader ID
  index, trader_id = box_boxoptions_solaorderentry_sail_v2_25.trader_id.dissect(buffer, index, packet, parent)

  -- Order Id Order Id 8: Order ID
  index, order_id_order_id_8 = box_boxoptions_solaorderentry_sail_v2_25.order_id_order_id_8.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = box_boxoptions_solaorderentry_sail_v2_25.verb_side.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity
  index, quantity = box_boxoptions_solaorderentry_sail_v2_25.quantity.dissect(buffer, index, packet, parent)

  -- Assigned Price: Assigned Price
  index, assigned_price = box_boxoptions_solaorderentry_sail_v2_25.assigned_price.dissect(buffer, index, packet, parent)

  -- Clearing Data: Struct of 5 fields
  index, clearing_data = box_boxoptions_solaorderentry_sail_v2_25.clearing_data.dissect(buffer, index, packet, parent)

  -- Owner Data: Struct of 3 fields
  index, owner_data = box_boxoptions_solaorderentry_sail_v2_25.owner_data.dissect(buffer, index, packet, parent)

  -- Original Order Id: Original Order ID
  index, original_order_id = box_boxoptions_solaorderentry_sail_v2_25.original_order_id.dissect(buffer, index, packet, parent)

  -- Auction Id Only If Message Type Is Ki Or Else Zeroes: Auction ID
  index, auction_id_only_if_message_type_is_ki_or_else_zeroes = box_boxoptions_solaorderentry_sail_v2_25.auction_id_only_if_message_type_is_ki_or_else_zeroes.dissect(buffer, index, packet, parent)

  -- Additional Client Memo: Additional Client Memo
  index, additional_client_memo = box_boxoptions_solaorderentry_sail_v2_25.additional_client_memo.dissect(buffer, index, packet, parent)

  -- Filler Must Be Blank String 44: String (4)
  index, filler_must_be_blank_string_44 = box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_string_44.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancellation Notice By System
box_boxoptions_solaorderentry_sail_v2_25.order_cancellation_notice_by_system.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.order_cancellation_notice_by_system, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.order_cancellation_notice_by_system.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.order_cancellation_notice_by_system.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.order_cancellation_notice_by_system.fields(buffer, offset, packet, parent)
  end
end

-- Leg Execution Cancellation Notice
box_boxoptions_solaorderentry_sail_v2_25.leg_execution_cancellation_notice = {}

-- Size: Leg Execution Cancellation Notice
box_boxoptions_solaorderentry_sail_v2_25.leg_execution_cancellation_notice.size =
  box_boxoptions_solaorderentry_sail_v2_25.group.size + 
  box_boxoptions_solaorderentry_sail_v2_25.instrument.size + 
  box_boxoptions_solaorderentry_sail_v2_25.trader_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.reference_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.verb_side.size + 
  box_boxoptions_solaorderentry_sail_v2_25.quantity_traded.size + 
  box_boxoptions_solaorderentry_sail_v2_25.trade_price.size + 
  box_boxoptions_solaorderentry_sail_v2_25.time_trade_hhmmss.size + 
  box_boxoptions_solaorderentry_sail_v2_25.clearing_data.size + 
  box_boxoptions_solaorderentry_sail_v2_25.owner_data.size + 
  box_boxoptions_solaorderentry_sail_v2_25.special_trade_indicator.size + 
  box_boxoptions_solaorderentry_sail_v2_25.price_type.size + 
  box_boxoptions_solaorderentry_sail_v2_25.trade_type.size + 
  box_boxoptions_solaorderentry_sail_v2_25.auction_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.trade_number.size + 
  box_boxoptions_solaorderentry_sail_v2_25.trade_memo_string_5050.size + 
  box_boxoptions_solaorderentry_sail_v2_25.original_reference_id_order_id_8.size + 
  box_boxoptions_solaorderentry_sail_v2_25.id_code_for_the_counterpart_participant.size + 
  box_boxoptions_solaorderentry_sail_v2_25.liquidity_status.size + 
  box_boxoptions_solaorderentry_sail_v2_25.strategy_group.size + 
  box_boxoptions_solaorderentry_sail_v2_25.strategy_instrument_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.strategy_verb_side.size + 
  box_boxoptions_solaorderentry_sail_v2_25.strategy_trade_number.size + 
  box_boxoptions_solaorderentry_sail_v2_25.counterpart_account_type.size + 
  box_boxoptions_solaorderentry_sail_v2_25.additional_client_memo.size + 
  box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_string_11.size + 
  box_boxoptions_solaorderentry_sail_v2_25.filler_zero_filled.size

-- Display: Leg Execution Cancellation Notice
box_boxoptions_solaorderentry_sail_v2_25.leg_execution_cancellation_notice.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Leg Execution Cancellation Notice
box_boxoptions_solaorderentry_sail_v2_25.leg_execution_cancellation_notice.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group: Group ID
  index, group = box_boxoptions_solaorderentry_sail_v2_25.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = box_boxoptions_solaorderentry_sail_v2_25.instrument.dissect(buffer, index, packet, parent)

  -- Trader Id: Trader ID
  index, trader_id = box_boxoptions_solaorderentry_sail_v2_25.trader_id.dissect(buffer, index, packet, parent)

  -- Reference Id: Order ID
  index, reference_id = box_boxoptions_solaorderentry_sail_v2_25.reference_id.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = box_boxoptions_solaorderentry_sail_v2_25.verb_side.dissect(buffer, index, packet, parent)

  -- Quantity Traded: Quantity
  index, quantity_traded = box_boxoptions_solaorderentry_sail_v2_25.quantity_traded.dissect(buffer, index, packet, parent)

  -- Trade Price: Price
  index, trade_price = box_boxoptions_solaorderentry_sail_v2_25.trade_price.dissect(buffer, index, packet, parent)

  -- Time Trade Hhmmss: Time
  index, time_trade_hhmmss = box_boxoptions_solaorderentry_sail_v2_25.time_trade_hhmmss.dissect(buffer, index, packet, parent)

  -- Clearing Data: Struct of 5 fields
  index, clearing_data = box_boxoptions_solaorderentry_sail_v2_25.clearing_data.dissect(buffer, index, packet, parent)

  -- Owner Data: Struct of 3 fields
  index, owner_data = box_boxoptions_solaorderentry_sail_v2_25.owner_data.dissect(buffer, index, packet, parent)

  -- Special Trade Indicator: Special Trade Indicator
  index, special_trade_indicator = box_boxoptions_solaorderentry_sail_v2_25.special_trade_indicator.dissect(buffer, index, packet, parent)

  -- Price Type: Price Type
  index, price_type = box_boxoptions_solaorderentry_sail_v2_25.price_type.dissect(buffer, index, packet, parent)

  -- Trade Type: Trade Type
  index, trade_type = box_boxoptions_solaorderentry_sail_v2_25.trade_type.dissect(buffer, index, packet, parent)

  -- Auction Id: Auction ID
  index, auction_id = box_boxoptions_solaorderentry_sail_v2_25.auction_id.dissect(buffer, index, packet, parent)

  -- Trade Number: Trade Number
  index, trade_number = box_boxoptions_solaorderentry_sail_v2_25.trade_number.dissect(buffer, index, packet, parent)

  -- Trade Memo String 5050: String (50)
  index, trade_memo_string_5050 = box_boxoptions_solaorderentry_sail_v2_25.trade_memo_string_5050.dissect(buffer, index, packet, parent)

  -- Original Reference Id Order Id 8: Order ID
  index, original_reference_id_order_id_8 = box_boxoptions_solaorderentry_sail_v2_25.original_reference_id_order_id_8.dissect(buffer, index, packet, parent)

  -- Id Code For The Counterpart Participant: Firm ID
  index, id_code_for_the_counterpart_participant = box_boxoptions_solaorderentry_sail_v2_25.id_code_for_the_counterpart_participant.dissect(buffer, index, packet, parent)

  -- Liquidity Status: Liquidity Status
  index, liquidity_status = box_boxoptions_solaorderentry_sail_v2_25.liquidity_status.dissect(buffer, index, packet, parent)

  -- Strategy Group: Group ID
  index, strategy_group = box_boxoptions_solaorderentry_sail_v2_25.strategy_group.dissect(buffer, index, packet, parent)

  -- Strategy Instrument Id: Instrument ID
  index, strategy_instrument_id = box_boxoptions_solaorderentry_sail_v2_25.strategy_instrument_id.dissect(buffer, index, packet, parent)

  -- Strategy Verb Side: Verb
  index, strategy_verb_side = box_boxoptions_solaorderentry_sail_v2_25.strategy_verb_side.dissect(buffer, index, packet, parent)

  -- Strategy Trade Number: Trade Number
  index, strategy_trade_number = box_boxoptions_solaorderentry_sail_v2_25.strategy_trade_number.dissect(buffer, index, packet, parent)

  -- Counterpart Account Type: Account Type
  index, counterpart_account_type = box_boxoptions_solaorderentry_sail_v2_25.counterpart_account_type.dissect(buffer, index, packet, parent)

  -- Additional Client Memo: Additional Client Memo
  index, additional_client_memo = box_boxoptions_solaorderentry_sail_v2_25.additional_client_memo.dissect(buffer, index, packet, parent)

  -- Filler Must Be Blank String 11: String (1)
  index, filler_must_be_blank_string_11 = box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_string_11.dissect(buffer, index, packet, parent)

  -- Filler Zero Filled: String (4)
  index, filler_zero_filled = box_boxoptions_solaorderentry_sail_v2_25.filler_zero_filled.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Leg Execution Cancellation Notice
box_boxoptions_solaorderentry_sail_v2_25.leg_execution_cancellation_notice.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.leg_execution_cancellation_notice, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.leg_execution_cancellation_notice.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.leg_execution_cancellation_notice.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.leg_execution_cancellation_notice.fields(buffer, offset, packet, parent)
  end
end

-- Execution Cancellation Notice
box_boxoptions_solaorderentry_sail_v2_25.execution_cancellation_notice = {}

-- Size: Execution Cancellation Notice
box_boxoptions_solaorderentry_sail_v2_25.execution_cancellation_notice.size =
  box_boxoptions_solaorderentry_sail_v2_25.group.size + 
  box_boxoptions_solaorderentry_sail_v2_25.instrument.size + 
  box_boxoptions_solaorderentry_sail_v2_25.trader_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.verb_side.size + 
  box_boxoptions_solaorderentry_sail_v2_25.quantity_traded.size + 
  box_boxoptions_solaorderentry_sail_v2_25.trade_price.size + 
  box_boxoptions_solaorderentry_sail_v2_25.time_of_the_trade_hhmmss.size + 
  box_boxoptions_solaorderentry_sail_v2_25.clearing_data.size + 
  box_boxoptions_solaorderentry_sail_v2_25.owner_data.size + 
  box_boxoptions_solaorderentry_sail_v2_25.special_trade_indicator.size + 
  box_boxoptions_solaorderentry_sail_v2_25.price_type.size + 
  box_boxoptions_solaorderentry_sail_v2_25.trade_type.size + 
  box_boxoptions_solaorderentry_sail_v2_25.auction_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.trade_number.size + 
  box_boxoptions_solaorderentry_sail_v2_25.trade_memo_trade_memo_50.size + 
  box_boxoptions_solaorderentry_sail_v2_25.original_reference_id_original_reference_id_8.size + 
  box_boxoptions_solaorderentry_sail_v2_25.id_code_for_the_counterpart_participant.size + 
  box_boxoptions_solaorderentry_sail_v2_25.liquidity_status.size + 
  box_boxoptions_solaorderentry_sail_v2_25.counterpart_account_type.size + 
  box_boxoptions_solaorderentry_sail_v2_25.additional_client_memo.size + 
  box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_string_11.size + 
  box_boxoptions_solaorderentry_sail_v2_25.filler_zero_filled.size

-- Display: Execution Cancellation Notice
box_boxoptions_solaorderentry_sail_v2_25.execution_cancellation_notice.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Cancellation Notice
box_boxoptions_solaorderentry_sail_v2_25.execution_cancellation_notice.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group: Group ID
  index, group = box_boxoptions_solaorderentry_sail_v2_25.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = box_boxoptions_solaorderentry_sail_v2_25.instrument.dissect(buffer, index, packet, parent)

  -- Trader Id: Trader ID
  index, trader_id = box_boxoptions_solaorderentry_sail_v2_25.trader_id.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = box_boxoptions_solaorderentry_sail_v2_25.verb_side.dissect(buffer, index, packet, parent)

  -- Quantity Traded: Quantity
  index, quantity_traded = box_boxoptions_solaorderentry_sail_v2_25.quantity_traded.dissect(buffer, index, packet, parent)

  -- Trade Price: Price
  index, trade_price = box_boxoptions_solaorderentry_sail_v2_25.trade_price.dissect(buffer, index, packet, parent)

  -- Time Of The Trade Hhmmss: Time
  index, time_of_the_trade_hhmmss = box_boxoptions_solaorderentry_sail_v2_25.time_of_the_trade_hhmmss.dissect(buffer, index, packet, parent)

  -- Clearing Data: Struct of 5 fields
  index, clearing_data = box_boxoptions_solaorderentry_sail_v2_25.clearing_data.dissect(buffer, index, packet, parent)

  -- Owner Data: Struct of 3 fields
  index, owner_data = box_boxoptions_solaorderentry_sail_v2_25.owner_data.dissect(buffer, index, packet, parent)

  -- Special Trade Indicator: Special Trade Indicator
  index, special_trade_indicator = box_boxoptions_solaorderentry_sail_v2_25.special_trade_indicator.dissect(buffer, index, packet, parent)

  -- Price Type: Price Type
  index, price_type = box_boxoptions_solaorderentry_sail_v2_25.price_type.dissect(buffer, index, packet, parent)

  -- Trade Type: Trade Type
  index, trade_type = box_boxoptions_solaorderentry_sail_v2_25.trade_type.dissect(buffer, index, packet, parent)

  -- Auction Id: Auction ID
  index, auction_id = box_boxoptions_solaorderentry_sail_v2_25.auction_id.dissect(buffer, index, packet, parent)

  -- Trade Number: Trade Number
  index, trade_number = box_boxoptions_solaorderentry_sail_v2_25.trade_number.dissect(buffer, index, packet, parent)

  -- Trade Memo Trade Memo 50: Trade Memo
  index, trade_memo_trade_memo_50 = box_boxoptions_solaorderentry_sail_v2_25.trade_memo_trade_memo_50.dissect(buffer, index, packet, parent)

  -- Original Reference Id Original Reference Id 8: Original Reference ID
  index, original_reference_id_original_reference_id_8 = box_boxoptions_solaorderentry_sail_v2_25.original_reference_id_original_reference_id_8.dissect(buffer, index, packet, parent)

  -- Id Code For The Counterpart Participant: Firm ID
  index, id_code_for_the_counterpart_participant = box_boxoptions_solaorderentry_sail_v2_25.id_code_for_the_counterpart_participant.dissect(buffer, index, packet, parent)

  -- Liquidity Status: Liquidity Status
  index, liquidity_status = box_boxoptions_solaorderentry_sail_v2_25.liquidity_status.dissect(buffer, index, packet, parent)

  -- Counterpart Account Type: Account Type
  index, counterpart_account_type = box_boxoptions_solaorderentry_sail_v2_25.counterpart_account_type.dissect(buffer, index, packet, parent)

  -- Additional Client Memo: Additional Client Memo
  index, additional_client_memo = box_boxoptions_solaorderentry_sail_v2_25.additional_client_memo.dissect(buffer, index, packet, parent)

  -- Filler Must Be Blank String 11: String (1)
  index, filler_must_be_blank_string_11 = box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_string_11.dissect(buffer, index, packet, parent)

  -- Filler Zero Filled: String (4)
  index, filler_zero_filled = box_boxoptions_solaorderentry_sail_v2_25.filler_zero_filled.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Cancellation Notice
box_boxoptions_solaorderentry_sail_v2_25.execution_cancellation_notice.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.execution_cancellation_notice, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.execution_cancellation_notice.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.execution_cancellation_notice.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.execution_cancellation_notice.fields(buffer, offset, packet, parent)
  end
end

-- Quote Notice
box_boxoptions_solaorderentry_sail_v2_25.quote_notice = {}

-- Size: Quote Notice
box_boxoptions_solaorderentry_sail_v2_25.quote_notice.size =
  box_boxoptions_solaorderentry_sail_v2_25.group.size + 
  box_boxoptions_solaorderentry_sail_v2_25.instrument.size + 
  box_boxoptions_solaorderentry_sail_v2_25.trader_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.reference_id_quote.size + 
  box_boxoptions_solaorderentry_sail_v2_25.verb_side.size + 
  box_boxoptions_solaorderentry_sail_v2_25.order_type.size + 
  box_boxoptions_solaorderentry_sail_v2_25.action.size + 
  box_boxoptions_solaorderentry_sail_v2_25.new_quantity.size + 
  box_boxoptions_solaorderentry_sail_v2_25.new_price.size + 
  box_boxoptions_solaorderentry_sail_v2_25.previous_quantity.size + 
  box_boxoptions_solaorderentry_sail_v2_25.previous_price.size + 
  box_boxoptions_solaorderentry_sail_v2_25.auction_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.original_reference_id_quote_or_order_id.size

-- Display: Quote Notice
box_boxoptions_solaorderentry_sail_v2_25.quote_notice.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Notice
box_boxoptions_solaorderentry_sail_v2_25.quote_notice.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group: Group ID
  index, group = box_boxoptions_solaorderentry_sail_v2_25.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = box_boxoptions_solaorderentry_sail_v2_25.instrument.dissect(buffer, index, packet, parent)

  -- Trader Id: Trader ID
  index, trader_id = box_boxoptions_solaorderentry_sail_v2_25.trader_id.dissect(buffer, index, packet, parent)

  -- Reference Id Quote: Quote ID
  index, reference_id_quote = box_boxoptions_solaorderentry_sail_v2_25.reference_id_quote.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = box_boxoptions_solaorderentry_sail_v2_25.verb_side.dissect(buffer, index, packet, parent)

  -- Order Type: Order Type
  index, order_type = box_boxoptions_solaorderentry_sail_v2_25.order_type.dissect(buffer, index, packet, parent)

  -- Action: Action
  index, action = box_boxoptions_solaorderentry_sail_v2_25.action.dissect(buffer, index, packet, parent)

  -- New Quantity: Quantity
  index, new_quantity = box_boxoptions_solaorderentry_sail_v2_25.new_quantity.dissect(buffer, index, packet, parent)

  -- New Price: Price
  index, new_price = box_boxoptions_solaorderentry_sail_v2_25.new_price.dissect(buffer, index, packet, parent)

  -- Previous Quantity: Quantity
  index, previous_quantity = box_boxoptions_solaorderentry_sail_v2_25.previous_quantity.dissect(buffer, index, packet, parent)

  -- Previous Price: Price
  index, previous_price = box_boxoptions_solaorderentry_sail_v2_25.previous_price.dissect(buffer, index, packet, parent)

  -- Auction Id: Auction ID
  index, auction_id = box_boxoptions_solaorderentry_sail_v2_25.auction_id.dissect(buffer, index, packet, parent)

  -- Original Reference Id Quote Or Order Id: Order ID
  index, original_reference_id_quote_or_order_id = box_boxoptions_solaorderentry_sail_v2_25.original_reference_id_quote_or_order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Notice
box_boxoptions_solaorderentry_sail_v2_25.quote_notice.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.quote_notice, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.quote_notice.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.quote_notice.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.quote_notice.fields(buffer, offset, packet, parent)
  end
end

-- Execution Notice
box_boxoptions_solaorderentry_sail_v2_25.execution_notice = {}

-- Size: Execution Notice
box_boxoptions_solaorderentry_sail_v2_25.execution_notice.size =
  box_boxoptions_solaorderentry_sail_v2_25.group.size + 
  box_boxoptions_solaorderentry_sail_v2_25.instrument.size + 
  box_boxoptions_solaorderentry_sail_v2_25.trader_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.verb_side.size + 
  box_boxoptions_solaorderentry_sail_v2_25.quantity_traded.size + 
  box_boxoptions_solaorderentry_sail_v2_25.trade_price.size + 
  box_boxoptions_solaorderentry_sail_v2_25.time_of_the_trade_hhmmss.size + 
  box_boxoptions_solaorderentry_sail_v2_25.clearing_data.size + 
  box_boxoptions_solaorderentry_sail_v2_25.owner_data.size + 
  box_boxoptions_solaorderentry_sail_v2_25.special_trade_indicator.size + 
  box_boxoptions_solaorderentry_sail_v2_25.price_type.size + 
  box_boxoptions_solaorderentry_sail_v2_25.trade_type.size + 
  box_boxoptions_solaorderentry_sail_v2_25.auction_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.trade_number.size + 
  box_boxoptions_solaorderentry_sail_v2_25.trade_memo_trade_memo_50.size + 
  box_boxoptions_solaorderentry_sail_v2_25.original_reference_id_original_reference_id_8.size + 
  box_boxoptions_solaorderentry_sail_v2_25.id_code_for_the_counterpart_participant.size + 
  box_boxoptions_solaorderentry_sail_v2_25.liquidity_status.size + 
  box_boxoptions_solaorderentry_sail_v2_25.counterpart_account_type.size + 
  box_boxoptions_solaorderentry_sail_v2_25.additional_client_memo.size + 
  box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_string_11.size + 
  box_boxoptions_solaorderentry_sail_v2_25.filler_zero_filled.size

-- Display: Execution Notice
box_boxoptions_solaorderentry_sail_v2_25.execution_notice.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Notice
box_boxoptions_solaorderentry_sail_v2_25.execution_notice.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group: Group ID
  index, group = box_boxoptions_solaorderentry_sail_v2_25.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = box_boxoptions_solaorderentry_sail_v2_25.instrument.dissect(buffer, index, packet, parent)

  -- Trader Id: Trader ID
  index, trader_id = box_boxoptions_solaorderentry_sail_v2_25.trader_id.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = box_boxoptions_solaorderentry_sail_v2_25.verb_side.dissect(buffer, index, packet, parent)

  -- Quantity Traded: Quantity
  index, quantity_traded = box_boxoptions_solaorderentry_sail_v2_25.quantity_traded.dissect(buffer, index, packet, parent)

  -- Trade Price: Price
  index, trade_price = box_boxoptions_solaorderentry_sail_v2_25.trade_price.dissect(buffer, index, packet, parent)

  -- Time Of The Trade Hhmmss: Time
  index, time_of_the_trade_hhmmss = box_boxoptions_solaorderentry_sail_v2_25.time_of_the_trade_hhmmss.dissect(buffer, index, packet, parent)

  -- Clearing Data: Struct of 5 fields
  index, clearing_data = box_boxoptions_solaorderentry_sail_v2_25.clearing_data.dissect(buffer, index, packet, parent)

  -- Owner Data: Struct of 3 fields
  index, owner_data = box_boxoptions_solaorderentry_sail_v2_25.owner_data.dissect(buffer, index, packet, parent)

  -- Special Trade Indicator: Special Trade Indicator
  index, special_trade_indicator = box_boxoptions_solaorderentry_sail_v2_25.special_trade_indicator.dissect(buffer, index, packet, parent)

  -- Price Type: Price Type
  index, price_type = box_boxoptions_solaorderentry_sail_v2_25.price_type.dissect(buffer, index, packet, parent)

  -- Trade Type: Trade Type
  index, trade_type = box_boxoptions_solaorderentry_sail_v2_25.trade_type.dissect(buffer, index, packet, parent)

  -- Auction Id: Auction ID
  index, auction_id = box_boxoptions_solaorderentry_sail_v2_25.auction_id.dissect(buffer, index, packet, parent)

  -- Trade Number: Trade Number
  index, trade_number = box_boxoptions_solaorderentry_sail_v2_25.trade_number.dissect(buffer, index, packet, parent)

  -- Trade Memo Trade Memo 50: Trade Memo
  index, trade_memo_trade_memo_50 = box_boxoptions_solaorderentry_sail_v2_25.trade_memo_trade_memo_50.dissect(buffer, index, packet, parent)

  -- Original Reference Id Original Reference Id 8: Original Reference ID
  index, original_reference_id_original_reference_id_8 = box_boxoptions_solaorderentry_sail_v2_25.original_reference_id_original_reference_id_8.dissect(buffer, index, packet, parent)

  -- Id Code For The Counterpart Participant: Firm ID
  index, id_code_for_the_counterpart_participant = box_boxoptions_solaorderentry_sail_v2_25.id_code_for_the_counterpart_participant.dissect(buffer, index, packet, parent)

  -- Liquidity Status: Liquidity Status
  index, liquidity_status = box_boxoptions_solaorderentry_sail_v2_25.liquidity_status.dissect(buffer, index, packet, parent)

  -- Counterpart Account Type: Account Type
  index, counterpart_account_type = box_boxoptions_solaorderentry_sail_v2_25.counterpart_account_type.dissect(buffer, index, packet, parent)

  -- Additional Client Memo: Additional Client Memo
  index, additional_client_memo = box_boxoptions_solaorderentry_sail_v2_25.additional_client_memo.dissect(buffer, index, packet, parent)

  -- Filler Must Be Blank String 11: String (1)
  index, filler_must_be_blank_string_11 = box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_string_11.dissect(buffer, index, packet, parent)

  -- Filler Zero Filled: String (4)
  index, filler_zero_filled = box_boxoptions_solaorderentry_sail_v2_25.filler_zero_filled.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Notice
box_boxoptions_solaorderentry_sail_v2_25.execution_notice.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.execution_notice, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.execution_notice.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.execution_notice.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.execution_notice.fields(buffer, offset, packet, parent)
  end
end

-- Quality Market Maker Notification
box_boxoptions_solaorderentry_sail_v2_25.quality_market_maker_notification = {}

-- Size: Quality Market Maker Notification
box_boxoptions_solaorderentry_sail_v2_25.quality_market_maker_notification.size =
  box_boxoptions_solaorderentry_sail_v2_25.group.size + 
  box_boxoptions_solaorderentry_sail_v2_25.instrument.size + 
  box_boxoptions_solaorderentry_sail_v2_25.trader_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.auction_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.verb.size + 
  box_boxoptions_solaorderentry_sail_v2_25.auction_quantity.size + 
  box_boxoptions_solaorderentry_sail_v2_25.auction_price.size + 
  box_boxoptions_solaorderentry_sail_v2_25.quote_quantity.size + 
  box_boxoptions_solaorderentry_sail_v2_25.quote_price.size + 
  box_boxoptions_solaorderentry_sail_v2_25.qualified_quantity.size

-- Display: Quality Market Maker Notification
box_boxoptions_solaorderentry_sail_v2_25.quality_market_maker_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quality Market Maker Notification
box_boxoptions_solaorderentry_sail_v2_25.quality_market_maker_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group: Group ID
  index, group = box_boxoptions_solaorderentry_sail_v2_25.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = box_boxoptions_solaorderentry_sail_v2_25.instrument.dissect(buffer, index, packet, parent)

  -- Trader Id: Trader ID
  index, trader_id = box_boxoptions_solaorderentry_sail_v2_25.trader_id.dissect(buffer, index, packet, parent)

  -- Auction Id: Auction ID
  index, auction_id = box_boxoptions_solaorderentry_sail_v2_25.auction_id.dissect(buffer, index, packet, parent)

  -- Verb: Verb
  index, verb = box_boxoptions_solaorderentry_sail_v2_25.verb.dissect(buffer, index, packet, parent)

  -- Auction Quantity: Quantity
  index, auction_quantity = box_boxoptions_solaorderentry_sail_v2_25.auction_quantity.dissect(buffer, index, packet, parent)

  -- Auction Price: Price
  index, auction_price = box_boxoptions_solaorderentry_sail_v2_25.auction_price.dissect(buffer, index, packet, parent)

  -- Quote Quantity: Quantity
  index, quote_quantity = box_boxoptions_solaorderentry_sail_v2_25.quote_quantity.dissect(buffer, index, packet, parent)

  -- Quote Price: Price
  index, quote_price = box_boxoptions_solaorderentry_sail_v2_25.quote_price.dissect(buffer, index, packet, parent)

  -- Qualified Quantity: Quantity
  index, qualified_quantity = box_boxoptions_solaorderentry_sail_v2_25.qualified_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quality Market Maker Notification
box_boxoptions_solaorderentry_sail_v2_25.quality_market_maker_notification.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.quality_market_maker_notification, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.quality_market_maker_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.quality_market_maker_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.quality_market_maker_notification.fields(buffer, offset, packet, parent)
  end
end

-- Cancellation Of All Quotes Notices
box_boxoptions_solaorderentry_sail_v2_25.cancellation_of_all_quotes_notices = {}

-- Size: Cancellation Of All Quotes Notices
box_boxoptions_solaorderentry_sail_v2_25.cancellation_of_all_quotes_notices.size =
  box_boxoptions_solaorderentry_sail_v2_25.group.size + 
  box_boxoptions_solaorderentry_sail_v2_25.instrument.size + 
  box_boxoptions_solaorderentry_sail_v2_25.trader_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.quote_cancel_reason.size

-- Display: Cancellation Of All Quotes Notices
box_boxoptions_solaorderentry_sail_v2_25.cancellation_of_all_quotes_notices.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancellation Of All Quotes Notices
box_boxoptions_solaorderentry_sail_v2_25.cancellation_of_all_quotes_notices.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group: Group ID
  index, group = box_boxoptions_solaorderentry_sail_v2_25.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = box_boxoptions_solaorderentry_sail_v2_25.instrument.dissect(buffer, index, packet, parent)

  -- Trader Id: Trader ID
  index, trader_id = box_boxoptions_solaorderentry_sail_v2_25.trader_id.dissect(buffer, index, packet, parent)

  -- Quote Cancel Reason: Quote Cancel Reason
  index, quote_cancel_reason = box_boxoptions_solaorderentry_sail_v2_25.quote_cancel_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancellation Of All Quotes Notices
box_boxoptions_solaorderentry_sail_v2_25.cancellation_of_all_quotes_notices.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.cancellation_of_all_quotes_notices, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.cancellation_of_all_quotes_notices.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.cancellation_of_all_quotes_notices.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.cancellation_of_all_quotes_notices.fields(buffer, offset, packet, parent)
  end
end

-- Leg Execution Notice
box_boxoptions_solaorderentry_sail_v2_25.leg_execution_notice = {}

-- Size: Leg Execution Notice
box_boxoptions_solaorderentry_sail_v2_25.leg_execution_notice.size =
  box_boxoptions_solaorderentry_sail_v2_25.group.size + 
  box_boxoptions_solaorderentry_sail_v2_25.instrument.size + 
  box_boxoptions_solaorderentry_sail_v2_25.trader_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.reference_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.verb_side.size + 
  box_boxoptions_solaorderentry_sail_v2_25.quantity_traded.size + 
  box_boxoptions_solaorderentry_sail_v2_25.trade_price.size + 
  box_boxoptions_solaorderentry_sail_v2_25.time_trade_hhmmss.size + 
  box_boxoptions_solaorderentry_sail_v2_25.clearing_data.size + 
  box_boxoptions_solaorderentry_sail_v2_25.owner_data.size + 
  box_boxoptions_solaorderentry_sail_v2_25.special_trade_indicator.size + 
  box_boxoptions_solaorderentry_sail_v2_25.price_type.size + 
  box_boxoptions_solaorderentry_sail_v2_25.trade_type.size + 
  box_boxoptions_solaorderentry_sail_v2_25.auction_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.trade_number.size + 
  box_boxoptions_solaorderentry_sail_v2_25.trade_memo_string_5050.size + 
  box_boxoptions_solaorderentry_sail_v2_25.original_reference_id_order_id_8.size + 
  box_boxoptions_solaorderentry_sail_v2_25.id_code_for_the_counterpart_participant.size + 
  box_boxoptions_solaorderentry_sail_v2_25.liquidity_status.size + 
  box_boxoptions_solaorderentry_sail_v2_25.strategy_group.size + 
  box_boxoptions_solaorderentry_sail_v2_25.strategy_instrument_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.strategy_verb_side.size + 
  box_boxoptions_solaorderentry_sail_v2_25.strategy_trade_number.size + 
  box_boxoptions_solaorderentry_sail_v2_25.counterpart_account_type.size + 
  box_boxoptions_solaorderentry_sail_v2_25.additional_client_memo.size + 
  box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_string_11.size + 
  box_boxoptions_solaorderentry_sail_v2_25.filler_zero_filled.size

-- Display: Leg Execution Notice
box_boxoptions_solaorderentry_sail_v2_25.leg_execution_notice.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Leg Execution Notice
box_boxoptions_solaorderentry_sail_v2_25.leg_execution_notice.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group: Group ID
  index, group = box_boxoptions_solaorderentry_sail_v2_25.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = box_boxoptions_solaorderentry_sail_v2_25.instrument.dissect(buffer, index, packet, parent)

  -- Trader Id: Trader ID
  index, trader_id = box_boxoptions_solaorderentry_sail_v2_25.trader_id.dissect(buffer, index, packet, parent)

  -- Reference Id: Order ID
  index, reference_id = box_boxoptions_solaorderentry_sail_v2_25.reference_id.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = box_boxoptions_solaorderentry_sail_v2_25.verb_side.dissect(buffer, index, packet, parent)

  -- Quantity Traded: Quantity
  index, quantity_traded = box_boxoptions_solaorderentry_sail_v2_25.quantity_traded.dissect(buffer, index, packet, parent)

  -- Trade Price: Price
  index, trade_price = box_boxoptions_solaorderentry_sail_v2_25.trade_price.dissect(buffer, index, packet, parent)

  -- Time Trade Hhmmss: Time
  index, time_trade_hhmmss = box_boxoptions_solaorderentry_sail_v2_25.time_trade_hhmmss.dissect(buffer, index, packet, parent)

  -- Clearing Data: Struct of 5 fields
  index, clearing_data = box_boxoptions_solaorderentry_sail_v2_25.clearing_data.dissect(buffer, index, packet, parent)

  -- Owner Data: Struct of 3 fields
  index, owner_data = box_boxoptions_solaorderentry_sail_v2_25.owner_data.dissect(buffer, index, packet, parent)

  -- Special Trade Indicator: Special Trade Indicator
  index, special_trade_indicator = box_boxoptions_solaorderentry_sail_v2_25.special_trade_indicator.dissect(buffer, index, packet, parent)

  -- Price Type: Price Type
  index, price_type = box_boxoptions_solaorderentry_sail_v2_25.price_type.dissect(buffer, index, packet, parent)

  -- Trade Type: Trade Type
  index, trade_type = box_boxoptions_solaorderentry_sail_v2_25.trade_type.dissect(buffer, index, packet, parent)

  -- Auction Id: Auction ID
  index, auction_id = box_boxoptions_solaorderentry_sail_v2_25.auction_id.dissect(buffer, index, packet, parent)

  -- Trade Number: Trade Number
  index, trade_number = box_boxoptions_solaorderentry_sail_v2_25.trade_number.dissect(buffer, index, packet, parent)

  -- Trade Memo String 5050: String (50)
  index, trade_memo_string_5050 = box_boxoptions_solaorderentry_sail_v2_25.trade_memo_string_5050.dissect(buffer, index, packet, parent)

  -- Original Reference Id Order Id 8: Order ID
  index, original_reference_id_order_id_8 = box_boxoptions_solaorderentry_sail_v2_25.original_reference_id_order_id_8.dissect(buffer, index, packet, parent)

  -- Id Code For The Counterpart Participant: Firm ID
  index, id_code_for_the_counterpart_participant = box_boxoptions_solaorderentry_sail_v2_25.id_code_for_the_counterpart_participant.dissect(buffer, index, packet, parent)

  -- Liquidity Status: Liquidity Status
  index, liquidity_status = box_boxoptions_solaorderentry_sail_v2_25.liquidity_status.dissect(buffer, index, packet, parent)

  -- Strategy Group: Group ID
  index, strategy_group = box_boxoptions_solaorderentry_sail_v2_25.strategy_group.dissect(buffer, index, packet, parent)

  -- Strategy Instrument Id: Instrument ID
  index, strategy_instrument_id = box_boxoptions_solaorderentry_sail_v2_25.strategy_instrument_id.dissect(buffer, index, packet, parent)

  -- Strategy Verb Side: Verb
  index, strategy_verb_side = box_boxoptions_solaorderentry_sail_v2_25.strategy_verb_side.dissect(buffer, index, packet, parent)

  -- Strategy Trade Number: Trade Number
  index, strategy_trade_number = box_boxoptions_solaorderentry_sail_v2_25.strategy_trade_number.dissect(buffer, index, packet, parent)

  -- Counterpart Account Type: Account Type
  index, counterpart_account_type = box_boxoptions_solaorderentry_sail_v2_25.counterpart_account_type.dissect(buffer, index, packet, parent)

  -- Additional Client Memo: Additional Client Memo
  index, additional_client_memo = box_boxoptions_solaorderentry_sail_v2_25.additional_client_memo.dissect(buffer, index, packet, parent)

  -- Filler Must Be Blank String 11: String (1)
  index, filler_must_be_blank_string_11 = box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_string_11.dissect(buffer, index, packet, parent)

  -- Filler Zero Filled: String (4)
  index, filler_zero_filled = box_boxoptions_solaorderentry_sail_v2_25.filler_zero_filled.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Leg Execution Notice
box_boxoptions_solaorderentry_sail_v2_25.leg_execution_notice.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.leg_execution_notice, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.leg_execution_notice.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.leg_execution_notice.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.leg_execution_notice.fields(buffer, offset, packet, parent)
  end
end

-- Group State Change
box_boxoptions_solaorderentry_sail_v2_25.group_state_change = {}

-- Size: Group State Change
box_boxoptions_solaorderentry_sail_v2_25.group_state_change.size =
  box_boxoptions_solaorderentry_sail_v2_25.group.size + 
  box_boxoptions_solaorderentry_sail_v2_25.group_state.size

-- Display: Group State Change
box_boxoptions_solaorderentry_sail_v2_25.group_state_change.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group State Change
box_boxoptions_solaorderentry_sail_v2_25.group_state_change.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group: Group ID
  index, group = box_boxoptions_solaorderentry_sail_v2_25.group.dissect(buffer, index, packet, parent)

  -- Group State: Group State
  index, group_state = box_boxoptions_solaorderentry_sail_v2_25.group_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Group State Change
box_boxoptions_solaorderentry_sail_v2_25.group_state_change.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.group_state_change, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.group_state_change.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.group_state_change.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.group_state_change.fields(buffer, offset, packet, parent)
  end
end

-- Excluded Instrument Notice
box_boxoptions_solaorderentry_sail_v2_25.excluded_instrument_notice = {}

-- Size: Excluded Instrument Notice
box_boxoptions_solaorderentry_sail_v2_25.excluded_instrument_notice.size =
  box_boxoptions_solaorderentry_sail_v2_25.group.size + 
  box_boxoptions_solaorderentry_sail_v2_25.filler_string_22.size + 
  box_boxoptions_solaorderentry_sail_v2_25.trader_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.filler_2.size + 
  box_boxoptions_solaorderentry_sail_v2_25.nb_of_instruments.size + 
  box_boxoptions_solaorderentry_sail_v2_25._1_to_9999_occurrences_instrument.size

-- Display: Excluded Instrument Notice
box_boxoptions_solaorderentry_sail_v2_25.excluded_instrument_notice.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Excluded Instrument Notice
box_boxoptions_solaorderentry_sail_v2_25.excluded_instrument_notice.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group: Group ID
  index, group = box_boxoptions_solaorderentry_sail_v2_25.group.dissect(buffer, index, packet, parent)

  -- Filler String 22: String (2)
  index, filler_string_22 = box_boxoptions_solaorderentry_sail_v2_25.filler_string_22.dissect(buffer, index, packet, parent)

  -- Trader Id: Trader ID
  index, trader_id = box_boxoptions_solaorderentry_sail_v2_25.trader_id.dissect(buffer, index, packet, parent)

  -- Filler 2: String (2)
  index, filler_2 = box_boxoptions_solaorderentry_sail_v2_25.filler_2.dissect(buffer, index, packet, parent)

  -- Nb Of Instruments: Numeric (4)
  index, nb_of_instruments = box_boxoptions_solaorderentry_sail_v2_25.nb_of_instruments.dissect(buffer, index, packet, parent)

  -- 1 To 9999 Occurrences Instrument: Instrument ID
  index, _1_to_9999_occurrences_instrument = box_boxoptions_solaorderentry_sail_v2_25._1_to_9999_occurrences_instrument.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Excluded Instrument Notice
box_boxoptions_solaorderentry_sail_v2_25.excluded_instrument_notice.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.excluded_instrument_notice, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.excluded_instrument_notice.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.excluded_instrument_notice.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.excluded_instrument_notice.fields(buffer, offset, packet, parent)
  end
end

-- Directed Order Notice
box_boxoptions_solaorderentry_sail_v2_25.directed_order_notice = {}

-- Size: Directed Order Notice
box_boxoptions_solaorderentry_sail_v2_25.directed_order_notice.size =
  box_boxoptions_solaorderentry_sail_v2_25.group.size + 
  box_boxoptions_solaorderentry_sail_v2_25.instrument.size + 
  box_boxoptions_solaorderentry_sail_v2_25.trader_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.verb_side.size + 
  box_boxoptions_solaorderentry_sail_v2_25.quantity.size + 
  box_boxoptions_solaorderentry_sail_v2_25.price.size + 
  box_boxoptions_solaorderentry_sail_v2_25.referenced_order_id.size

-- Display: Directed Order Notice
box_boxoptions_solaorderentry_sail_v2_25.directed_order_notice.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Directed Order Notice
box_boxoptions_solaorderentry_sail_v2_25.directed_order_notice.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group: Group ID
  index, group = box_boxoptions_solaorderentry_sail_v2_25.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = box_boxoptions_solaorderentry_sail_v2_25.instrument.dissect(buffer, index, packet, parent)

  -- Trader Id: Trader ID
  index, trader_id = box_boxoptions_solaorderentry_sail_v2_25.trader_id.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = box_boxoptions_solaorderentry_sail_v2_25.verb_side.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity
  index, quantity = box_boxoptions_solaorderentry_sail_v2_25.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = box_boxoptions_solaorderentry_sail_v2_25.price.dissect(buffer, index, packet, parent)

  -- Referenced Order Id: Order ID
  index, referenced_order_id = box_boxoptions_solaorderentry_sail_v2_25.referenced_order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Directed Order Notice
box_boxoptions_solaorderentry_sail_v2_25.directed_order_notice.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.directed_order_notice, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.directed_order_notice.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.directed_order_notice.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.directed_order_notice.fields(buffer, offset, packet, parent)
  end
end

-- Directed Order Cancellation Notice
box_boxoptions_solaorderentry_sail_v2_25.directed_order_cancellation_notice = {}

-- Size: Directed Order Cancellation Notice
box_boxoptions_solaorderentry_sail_v2_25.directed_order_cancellation_notice.size =
  box_boxoptions_solaorderentry_sail_v2_25.group.size + 
  box_boxoptions_solaorderentry_sail_v2_25.instrument.size + 
  box_boxoptions_solaorderentry_sail_v2_25.trader_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.verb_side.size + 
  box_boxoptions_solaorderentry_sail_v2_25.quantity.size + 
  box_boxoptions_solaorderentry_sail_v2_25.price.size + 
  box_boxoptions_solaorderentry_sail_v2_25.referenced_order_id.size

-- Display: Directed Order Cancellation Notice
box_boxoptions_solaorderentry_sail_v2_25.directed_order_cancellation_notice.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Directed Order Cancellation Notice
box_boxoptions_solaorderentry_sail_v2_25.directed_order_cancellation_notice.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group: Group ID
  index, group = box_boxoptions_solaorderentry_sail_v2_25.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = box_boxoptions_solaorderentry_sail_v2_25.instrument.dissect(buffer, index, packet, parent)

  -- Trader Id: Trader ID
  index, trader_id = box_boxoptions_solaorderentry_sail_v2_25.trader_id.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = box_boxoptions_solaorderentry_sail_v2_25.verb_side.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity
  index, quantity = box_boxoptions_solaorderentry_sail_v2_25.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = box_boxoptions_solaorderentry_sail_v2_25.price.dissect(buffer, index, packet, parent)

  -- Referenced Order Id: Order ID
  index, referenced_order_id = box_boxoptions_solaorderentry_sail_v2_25.referenced_order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Directed Order Cancellation Notice
box_boxoptions_solaorderentry_sail_v2_25.directed_order_cancellation_notice.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.directed_order_cancellation_notice, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.directed_order_cancellation_notice.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.directed_order_cancellation_notice.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.directed_order_cancellation_notice.fields(buffer, offset, packet, parent)
  end
end

-- Trader Status
box_boxoptions_solaorderentry_sail_v2_25.trader_status = {}

-- Size: Trader Status
box_boxoptions_solaorderentry_sail_v2_25.trader_status.size =
  box_boxoptions_solaorderentry_sail_v2_25.trader_id.size

-- Display: Trader Status
box_boxoptions_solaorderentry_sail_v2_25.trader_status.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trader Status
box_boxoptions_solaorderentry_sail_v2_25.trader_status.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trader Id: Trader ID
  index, trader_id = box_boxoptions_solaorderentry_sail_v2_25.trader_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trader Status
box_boxoptions_solaorderentry_sail_v2_25.trader_status.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.trader_status, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.trader_status.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.trader_status.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.trader_status.fields(buffer, offset, packet, parent)
  end
end

-- Bulk Quote Acknowledgement Occurrence
box_boxoptions_solaorderentry_sail_v2_25.bulk_quote_acknowledgement_occurrence = {}

-- Size: Bulk Quote Acknowledgement Occurrence
box_boxoptions_solaorderentry_sail_v2_25.bulk_quote_acknowledgement_occurrence.size =
  box_boxoptions_solaorderentry_sail_v2_25.quote_number.size + 
  box_boxoptions_solaorderentry_sail_v2_25.error_code.size

-- Display: Bulk Quote Acknowledgement Occurrence
box_boxoptions_solaorderentry_sail_v2_25.bulk_quote_acknowledgement_occurrence.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote Acknowledgement Occurrence
box_boxoptions_solaorderentry_sail_v2_25.bulk_quote_acknowledgement_occurrence.fields = function(buffer, offset, packet, parent, bulk_quote_acknowledgement_occurrence_index)
  local index = offset

  -- Implicit Bulk Quote Acknowledgement Occurrence Index
  if bulk_quote_acknowledgement_occurrence_index ~= nil and show.indexes then
    local iteration = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.bulk_quote_acknowledgement_occurrence_index, bulk_quote_acknowledgement_occurrence_index)
    iteration:set_generated()
  end

  -- Quote Number: Numeric (3)
  index, quote_number = box_boxoptions_solaorderentry_sail_v2_25.quote_number.dissect(buffer, index, packet, parent)

  -- Error Code: Error Code
  index, error_code = box_boxoptions_solaorderentry_sail_v2_25.error_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bulk Quote Acknowledgement Occurrence
box_boxoptions_solaorderentry_sail_v2_25.bulk_quote_acknowledgement_occurrence.dissect = function(buffer, offset, packet, parent, bulk_quote_acknowledgement_occurrence_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.bulk_quote_acknowledgement_occurrence, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.bulk_quote_acknowledgement_occurrence.fields(buffer, offset, packet, parent, bulk_quote_acknowledgement_occurrence_index)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.bulk_quote_acknowledgement_occurrence.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.bulk_quote_acknowledgement_occurrence.fields(buffer, offset, packet, parent, bulk_quote_acknowledgement_occurrence_index)
  end
end

-- Bulk Quote Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.bulk_quote_acknowledgement = {}

-- Calculate size of: Bulk Quote Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.bulk_quote_acknowledgement.size = function(buffer, offset)
  local index = 0

  index = index + box_boxoptions_solaorderentry_sail_v2_25.group.size

  index = index + box_boxoptions_solaorderentry_sail_v2_25.quote_id_identifies_traders_quote_on_this_group.size

  index = index + box_boxoptions_solaorderentry_sail_v2_25.number_of_quotes_in_error.size

  -- Calculate field size from count
  local bulk_quote_acknowledgement_occurrence_count = buffer(offset + index - 3, 3):string()
  index = index + bulk_quote_acknowledgement_occurrence_count * 7

  return index
end

-- Display: Bulk Quote Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.bulk_quote_acknowledgement.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.bulk_quote_acknowledgement.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group: Group ID
  index, group = box_boxoptions_solaorderentry_sail_v2_25.group.dissect(buffer, index, packet, parent)

  -- Quote Id Identifies Traders Quote On This Group: Quote ID
  index, quote_id_identifies_traders_quote_on_this_group = box_boxoptions_solaorderentry_sail_v2_25.quote_id_identifies_traders_quote_on_this_group.dissect(buffer, index, packet, parent)

  -- Number Of Quotes In Error: Numeric (3)
  index, number_of_quotes_in_error = box_boxoptions_solaorderentry_sail_v2_25.number_of_quotes_in_error.dissect(buffer, index, packet, parent)

  -- Repeating: Bulk Quote Acknowledgement Occurrence
  for bulk_quote_acknowledgement_occurrence_index = 1, number_of_quotes_in_error do
    index, bulk_quote_acknowledgement_occurrence = box_boxoptions_solaorderentry_sail_v2_25.bulk_quote_acknowledgement_occurrence.dissect(buffer, index, packet, parent, bulk_quote_acknowledgement_occurrence_index)
  end

  return index
end

-- Dissect: Bulk Quote Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.bulk_quote_acknowledgement.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.bulk_quote_acknowledgement, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.bulk_quote_acknowledgement.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.bulk_quote_acknowledgement.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.bulk_quote_acknowledgement.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancellation Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.order_cancellation_acknowledgement = {}

-- Size: Order Cancellation Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.order_cancellation_acknowledgement.size =
  box_boxoptions_solaorderentry_sail_v2_25.group.size + 
  box_boxoptions_solaorderentry_sail_v2_25.instrument.size + 
  box_boxoptions_solaorderentry_sail_v2_25.trader_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.order_id_order_id_8.size + 
  box_boxoptions_solaorderentry_sail_v2_25.verb_side.size + 
  box_boxoptions_solaorderentry_sail_v2_25.quantity.size + 
  box_boxoptions_solaorderentry_sail_v2_25.assigned_price.size + 
  box_boxoptions_solaorderentry_sail_v2_25.clearing_data.size + 
  box_boxoptions_solaorderentry_sail_v2_25.owner_data.size + 
  box_boxoptions_solaorderentry_sail_v2_25.original_order_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.auction_id_only_if_message_type_is_ki_or_else_zeroes.size + 
  box_boxoptions_solaorderentry_sail_v2_25.additional_client_memo.size + 
  box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_string_44.size

-- Display: Order Cancellation Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.order_cancellation_acknowledgement.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancellation Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.order_cancellation_acknowledgement.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group: Group ID
  index, group = box_boxoptions_solaorderentry_sail_v2_25.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = box_boxoptions_solaorderentry_sail_v2_25.instrument.dissect(buffer, index, packet, parent)

  -- Trader Id: Trader ID
  index, trader_id = box_boxoptions_solaorderentry_sail_v2_25.trader_id.dissect(buffer, index, packet, parent)

  -- Order Id Order Id 8: Order ID
  index, order_id_order_id_8 = box_boxoptions_solaorderentry_sail_v2_25.order_id_order_id_8.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = box_boxoptions_solaorderentry_sail_v2_25.verb_side.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity
  index, quantity = box_boxoptions_solaorderentry_sail_v2_25.quantity.dissect(buffer, index, packet, parent)

  -- Assigned Price: Assigned Price
  index, assigned_price = box_boxoptions_solaorderentry_sail_v2_25.assigned_price.dissect(buffer, index, packet, parent)

  -- Clearing Data: Struct of 5 fields
  index, clearing_data = box_boxoptions_solaorderentry_sail_v2_25.clearing_data.dissect(buffer, index, packet, parent)

  -- Owner Data: Struct of 3 fields
  index, owner_data = box_boxoptions_solaorderentry_sail_v2_25.owner_data.dissect(buffer, index, packet, parent)

  -- Original Order Id: Original Order ID
  index, original_order_id = box_boxoptions_solaorderentry_sail_v2_25.original_order_id.dissect(buffer, index, packet, parent)

  -- Auction Id Only If Message Type Is Ki Or Else Zeroes: Auction ID
  index, auction_id_only_if_message_type_is_ki_or_else_zeroes = box_boxoptions_solaorderentry_sail_v2_25.auction_id_only_if_message_type_is_ki_or_else_zeroes.dissect(buffer, index, packet, parent)

  -- Additional Client Memo: Additional Client Memo
  index, additional_client_memo = box_boxoptions_solaorderentry_sail_v2_25.additional_client_memo.dissect(buffer, index, packet, parent)

  -- Filler Must Be Blank String 44: String (4)
  index, filler_must_be_blank_string_44 = box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_string_44.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancellation Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.order_cancellation_acknowledgement.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.order_cancellation_acknowledgement, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.order_cancellation_acknowledgement.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.order_cancellation_acknowledgement.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.order_cancellation_acknowledgement.fields(buffer, offset, packet, parent)
  end
end

-- Auction Or Improvement Cancellation Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.auction_or_improvement_cancellation_acknowledgement = {}

-- Size: Auction Or Improvement Cancellation Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.auction_or_improvement_cancellation_acknowledgement.size =
  box_boxoptions_solaorderentry_sail_v2_25.group.size + 
  box_boxoptions_solaorderentry_sail_v2_25.instrument.size + 
  box_boxoptions_solaorderentry_sail_v2_25.trader_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.order_id_order_id_8.size + 
  box_boxoptions_solaorderentry_sail_v2_25.verb_side.size + 
  box_boxoptions_solaorderentry_sail_v2_25.quantity.size + 
  box_boxoptions_solaorderentry_sail_v2_25.assigned_price.size + 
  box_boxoptions_solaorderentry_sail_v2_25.clearing_data.size + 
  box_boxoptions_solaorderentry_sail_v2_25.owner_data.size + 
  box_boxoptions_solaorderentry_sail_v2_25.original_order_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.auction_id_only_if_message_type_is_ki_or_else_zeroes.size

-- Display: Auction Or Improvement Cancellation Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.auction_or_improvement_cancellation_acknowledgement.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Or Improvement Cancellation Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.auction_or_improvement_cancellation_acknowledgement.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group: Group ID
  index, group = box_boxoptions_solaorderentry_sail_v2_25.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = box_boxoptions_solaorderentry_sail_v2_25.instrument.dissect(buffer, index, packet, parent)

  -- Trader Id: Trader ID
  index, trader_id = box_boxoptions_solaorderentry_sail_v2_25.trader_id.dissect(buffer, index, packet, parent)

  -- Order Id Order Id 8: Order ID
  index, order_id_order_id_8 = box_boxoptions_solaorderentry_sail_v2_25.order_id_order_id_8.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = box_boxoptions_solaorderentry_sail_v2_25.verb_side.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity
  index, quantity = box_boxoptions_solaorderentry_sail_v2_25.quantity.dissect(buffer, index, packet, parent)

  -- Assigned Price: Assigned Price
  index, assigned_price = box_boxoptions_solaorderentry_sail_v2_25.assigned_price.dissect(buffer, index, packet, parent)

  -- Clearing Data: Struct of 5 fields
  index, clearing_data = box_boxoptions_solaorderentry_sail_v2_25.clearing_data.dissect(buffer, index, packet, parent)

  -- Owner Data: Struct of 3 fields
  index, owner_data = box_boxoptions_solaorderentry_sail_v2_25.owner_data.dissect(buffer, index, packet, parent)

  -- Original Order Id: Original Order ID
  index, original_order_id = box_boxoptions_solaorderentry_sail_v2_25.original_order_id.dissect(buffer, index, packet, parent)

  -- Auction Id Only If Message Type Is Ki Or Else Zeroes: Auction ID
  index, auction_id_only_if_message_type_is_ki_or_else_zeroes = box_boxoptions_solaorderentry_sail_v2_25.auction_id_only_if_message_type_is_ki_or_else_zeroes.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Or Improvement Cancellation Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.auction_or_improvement_cancellation_acknowledgement.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.auction_or_improvement_cancellation_acknowledgement, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.auction_or_improvement_cancellation_acknowledgement.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.auction_or_improvement_cancellation_acknowledgement.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.auction_or_improvement_cancellation_acknowledgement.fields(buffer, offset, packet, parent)
  end
end

-- Complex Order Auction Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.complex_order_auction_acknowledgement = {}

-- Size: Complex Order Auction Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.complex_order_auction_acknowledgement.size =
  box_boxoptions_solaorderentry_sail_v2_25.group.size + 
  box_boxoptions_solaorderentry_sail_v2_25.instrument.size + 
  box_boxoptions_solaorderentry_sail_v2_25.trader_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.order_id_order_id_8.size + 
  box_boxoptions_solaorderentry_sail_v2_25.verb_side.size + 
  box_boxoptions_solaorderentry_sail_v2_25.quantity.size + 
  box_boxoptions_solaorderentry_sail_v2_25.assigned_price.size + 
  box_boxoptions_solaorderentry_sail_v2_25.clearing_data.size + 
  box_boxoptions_solaorderentry_sail_v2_25.owner_data.size + 
  box_boxoptions_solaorderentry_sail_v2_25.original_order_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.auction_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.additional_client_memo.size + 
  box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_string_44.size

-- Display: Complex Order Auction Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.complex_order_auction_acknowledgement.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Order Auction Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.complex_order_auction_acknowledgement.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group: Group ID
  index, group = box_boxoptions_solaorderentry_sail_v2_25.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = box_boxoptions_solaorderentry_sail_v2_25.instrument.dissect(buffer, index, packet, parent)

  -- Trader Id: Trader ID
  index, trader_id = box_boxoptions_solaorderentry_sail_v2_25.trader_id.dissect(buffer, index, packet, parent)

  -- Order Id Order Id 8: Order ID
  index, order_id_order_id_8 = box_boxoptions_solaorderentry_sail_v2_25.order_id_order_id_8.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = box_boxoptions_solaorderentry_sail_v2_25.verb_side.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity
  index, quantity = box_boxoptions_solaorderentry_sail_v2_25.quantity.dissect(buffer, index, packet, parent)

  -- Assigned Price: Assigned Price
  index, assigned_price = box_boxoptions_solaorderentry_sail_v2_25.assigned_price.dissect(buffer, index, packet, parent)

  -- Clearing Data: Struct of 5 fields
  index, clearing_data = box_boxoptions_solaorderentry_sail_v2_25.clearing_data.dissect(buffer, index, packet, parent)

  -- Owner Data: Struct of 3 fields
  index, owner_data = box_boxoptions_solaorderentry_sail_v2_25.owner_data.dissect(buffer, index, packet, parent)

  -- Original Order Id: Original Order ID
  index, original_order_id = box_boxoptions_solaorderentry_sail_v2_25.original_order_id.dissect(buffer, index, packet, parent)

  -- Auction Id: Auction ID
  index, auction_id = box_boxoptions_solaorderentry_sail_v2_25.auction_id.dissect(buffer, index, packet, parent)

  -- Additional Client Memo: Additional Client Memo
  index, additional_client_memo = box_boxoptions_solaorderentry_sail_v2_25.additional_client_memo.dissect(buffer, index, packet, parent)

  -- Filler Must Be Blank String 44: String (4)
  index, filler_must_be_blank_string_44 = box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_string_44.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Order Auction Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.complex_order_auction_acknowledgement.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.complex_order_auction_acknowledgement, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.complex_order_auction_acknowledgement.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.complex_order_auction_acknowledgement.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.complex_order_auction_acknowledgement.fields(buffer, offset, packet, parent)
  end
end

-- Standard Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.standard_acknowledgement = {}

-- Size: Standard Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.standard_acknowledgement.size =
  box_boxoptions_solaorderentry_sail_v2_25.trader_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.original_message_type_re_rf_rq_rp_gz.size

-- Display: Standard Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.standard_acknowledgement.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Standard Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.standard_acknowledgement.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trader Id: Trader ID
  index, trader_id = box_boxoptions_solaorderentry_sail_v2_25.trader_id.dissect(buffer, index, packet, parent)

  -- Original Message Type Re Rf Rq Rp Gz: Message Type
  index, original_message_type_re_rf_rq_rp_gz = box_boxoptions_solaorderentry_sail_v2_25.original_message_type_re_rf_rq_rp_gz.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Standard Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.standard_acknowledgement.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.standard_acknowledgement, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.standard_acknowledgement.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.standard_acknowledgement.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.standard_acknowledgement.fields(buffer, offset, packet, parent)
  end
end

-- New Complex Order Instrument Acknowledgement Occurrence
box_boxoptions_solaorderentry_sail_v2_25.new_complex_order_instrument_acknowledgement_occurrence = {}

-- Size: New Complex Order Instrument Acknowledgement Occurrence
box_boxoptions_solaorderentry_sail_v2_25.new_complex_order_instrument_acknowledgement_occurrence.size =
  box_boxoptions_solaorderentry_sail_v2_25.leg_group.size + 
  box_boxoptions_solaorderentry_sail_v2_25.leg_instrument_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.leg_verb.size + 
  box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_spaces.size + 
  box_boxoptions_solaorderentry_sail_v2_25.leg_quantity_ratio.size

-- Display: New Complex Order Instrument Acknowledgement Occurrence
box_boxoptions_solaorderentry_sail_v2_25.new_complex_order_instrument_acknowledgement_occurrence.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Complex Order Instrument Acknowledgement Occurrence
box_boxoptions_solaorderentry_sail_v2_25.new_complex_order_instrument_acknowledgement_occurrence.fields = function(buffer, offset, packet, parent, new_complex_order_instrument_acknowledgement_occurrence_index)
  local index = offset

  -- Implicit New Complex Order Instrument Acknowledgement Occurrence Index
  if new_complex_order_instrument_acknowledgement_occurrence_index ~= nil and show.indexes then
    local iteration = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.new_complex_order_instrument_acknowledgement_occurrence_index, new_complex_order_instrument_acknowledgement_occurrence_index)
    iteration:set_generated()
  end

  -- Leg Group: Group ID
  index, leg_group = box_boxoptions_solaorderentry_sail_v2_25.leg_group.dissect(buffer, index, packet, parent)

  -- Leg Instrument Id: Instrument ID
  index, leg_instrument_id = box_boxoptions_solaorderentry_sail_v2_25.leg_instrument_id.dissect(buffer, index, packet, parent)

  -- Leg Verb: Verb
  index, leg_verb = box_boxoptions_solaorderentry_sail_v2_25.leg_verb.dissect(buffer, index, packet, parent)

  -- Filler Must Be Spaces: String (1)
  index, filler_must_be_spaces = box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_spaces.dissect(buffer, index, packet, parent)

  -- Leg Quantity Ratio: Quantity
  index, leg_quantity_ratio = box_boxoptions_solaorderentry_sail_v2_25.leg_quantity_ratio.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Complex Order Instrument Acknowledgement Occurrence
box_boxoptions_solaorderentry_sail_v2_25.new_complex_order_instrument_acknowledgement_occurrence.dissect = function(buffer, offset, packet, parent, new_complex_order_instrument_acknowledgement_occurrence_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.new_complex_order_instrument_acknowledgement_occurrence, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.new_complex_order_instrument_acknowledgement_occurrence.fields(buffer, offset, packet, parent, new_complex_order_instrument_acknowledgement_occurrence_index)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.new_complex_order_instrument_acknowledgement_occurrence.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.new_complex_order_instrument_acknowledgement_occurrence.fields(buffer, offset, packet, parent, new_complex_order_instrument_acknowledgement_occurrence_index)
  end
end

-- New Complex Order Instrument Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.new_complex_order_instrument_acknowledgement = {}

-- Calculate size of: New Complex Order Instrument Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.new_complex_order_instrument_acknowledgement.size = function(buffer, offset)
  local index = 0

  index = index + box_boxoptions_solaorderentry_sail_v2_25.strategy_group.size

  index = index + box_boxoptions_solaorderentry_sail_v2_25.strategy_instrument_id.size

  index = index + box_boxoptions_solaorderentry_sail_v2_25.creation_status.size

  index = index + box_boxoptions_solaorderentry_sail_v2_25.number_of_legs.size

  -- Calculate field size from count
  local new_complex_order_instrument_acknowledgement_occurrence_count = buffer(offset + index - 2, 2):string()
  index = index + new_complex_order_instrument_acknowledgement_occurrence_count * 16

  return index
end

-- Display: New Complex Order Instrument Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.new_complex_order_instrument_acknowledgement.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Complex Order Instrument Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.new_complex_order_instrument_acknowledgement.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Strategy Group: Group ID
  index, strategy_group = box_boxoptions_solaorderentry_sail_v2_25.strategy_group.dissect(buffer, index, packet, parent)

  -- Strategy Instrument Id: Instrument ID
  index, strategy_instrument_id = box_boxoptions_solaorderentry_sail_v2_25.strategy_instrument_id.dissect(buffer, index, packet, parent)

  -- Creation Status: String (1)
  index, creation_status = box_boxoptions_solaorderentry_sail_v2_25.creation_status.dissect(buffer, index, packet, parent)

  -- Number Of Legs: Numeric (2)
  index, number_of_legs = box_boxoptions_solaorderentry_sail_v2_25.number_of_legs.dissect(buffer, index, packet, parent)

  -- Repeating: New Complex Order Instrument Acknowledgement Occurrence
  for new_complex_order_instrument_acknowledgement_occurrence_index = 1, number_of_legs do
    index, new_complex_order_instrument_acknowledgement_occurrence = box_boxoptions_solaorderentry_sail_v2_25.new_complex_order_instrument_acknowledgement_occurrence.dissect(buffer, index, packet, parent, new_complex_order_instrument_acknowledgement_occurrence_index)
  end

  return index
end

-- Dissect: New Complex Order Instrument Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.new_complex_order_instrument_acknowledgement.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.new_complex_order_instrument_acknowledgement, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.new_complex_order_instrument_acknowledgement.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.new_complex_order_instrument_acknowledgement.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.new_complex_order_instrument_acknowledgement.fields(buffer, offset, packet, parent)
  end
end

-- Order Modification Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.order_modification_acknowledgement = {}

-- Size: Order Modification Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.order_modification_acknowledgement.size =
  box_boxoptions_solaorderentry_sail_v2_25.group.size + 
  box_boxoptions_solaorderentry_sail_v2_25.instrument.size + 
  box_boxoptions_solaorderentry_sail_v2_25.trader_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.order_id_order_id_8.size + 
  box_boxoptions_solaorderentry_sail_v2_25.verb_side.size + 
  box_boxoptions_solaorderentry_sail_v2_25.quantity.size + 
  box_boxoptions_solaorderentry_sail_v2_25.assigned_price.size + 
  box_boxoptions_solaorderentry_sail_v2_25.clearing_data.size + 
  box_boxoptions_solaorderentry_sail_v2_25.owner_data.size + 
  box_boxoptions_solaorderentry_sail_v2_25.original_order_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.filler_numeric_66.size + 
  box_boxoptions_solaorderentry_sail_v2_25.additional_client_memo.size + 
  box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_string_44.size

-- Display: Order Modification Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.order_modification_acknowledgement.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modification Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.order_modification_acknowledgement.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group: Group ID
  index, group = box_boxoptions_solaorderentry_sail_v2_25.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = box_boxoptions_solaorderentry_sail_v2_25.instrument.dissect(buffer, index, packet, parent)

  -- Trader Id: Trader ID
  index, trader_id = box_boxoptions_solaorderentry_sail_v2_25.trader_id.dissect(buffer, index, packet, parent)

  -- Order Id Order Id 8: Order ID
  index, order_id_order_id_8 = box_boxoptions_solaorderentry_sail_v2_25.order_id_order_id_8.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = box_boxoptions_solaorderentry_sail_v2_25.verb_side.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity
  index, quantity = box_boxoptions_solaorderentry_sail_v2_25.quantity.dissect(buffer, index, packet, parent)

  -- Assigned Price: Assigned Price
  index, assigned_price = box_boxoptions_solaorderentry_sail_v2_25.assigned_price.dissect(buffer, index, packet, parent)

  -- Clearing Data: Struct of 5 fields
  index, clearing_data = box_boxoptions_solaorderentry_sail_v2_25.clearing_data.dissect(buffer, index, packet, parent)

  -- Owner Data: Struct of 3 fields
  index, owner_data = box_boxoptions_solaorderentry_sail_v2_25.owner_data.dissect(buffer, index, packet, parent)

  -- Original Order Id: Original Order ID
  index, original_order_id = box_boxoptions_solaorderentry_sail_v2_25.original_order_id.dissect(buffer, index, packet, parent)

  -- Filler Numeric 66: Numeric (6)
  index, filler_numeric_66 = box_boxoptions_solaorderentry_sail_v2_25.filler_numeric_66.dissect(buffer, index, packet, parent)

  -- Additional Client Memo: Additional Client Memo
  index, additional_client_memo = box_boxoptions_solaorderentry_sail_v2_25.additional_client_memo.dissect(buffer, index, packet, parent)

  -- Filler Must Be Blank String 44: String (4)
  index, filler_must_be_blank_string_44 = box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_string_44.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modification Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.order_modification_acknowledgement.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.order_modification_acknowledgement, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.order_modification_acknowledgement.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.order_modification_acknowledgement.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.order_modification_acknowledgement.fields(buffer, offset, packet, parent)
  end
end

-- Improvement Order Acknowlegment
box_boxoptions_solaorderentry_sail_v2_25.improvement_order_acknowlegment = {}

-- Size: Improvement Order Acknowlegment
box_boxoptions_solaorderentry_sail_v2_25.improvement_order_acknowlegment.size =
  box_boxoptions_solaorderentry_sail_v2_25.group.size + 
  box_boxoptions_solaorderentry_sail_v2_25.instrument.size + 
  box_boxoptions_solaorderentry_sail_v2_25.trader_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.order_id_order_id_8.size + 
  box_boxoptions_solaorderentry_sail_v2_25.verb_side.size + 
  box_boxoptions_solaorderentry_sail_v2_25.quantity.size + 
  box_boxoptions_solaorderentry_sail_v2_25.assigned_price.size + 
  box_boxoptions_solaorderentry_sail_v2_25.clearing_data.size + 
  box_boxoptions_solaorderentry_sail_v2_25.owner_data.size + 
  box_boxoptions_solaorderentry_sail_v2_25.original_order_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.auction_id_only_if_message_type_is_ki_or_else_zeroes.size + 
  box_boxoptions_solaorderentry_sail_v2_25.additional_client_memo.size + 
  box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_string_44.size

-- Display: Improvement Order Acknowlegment
box_boxoptions_solaorderentry_sail_v2_25.improvement_order_acknowlegment.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Improvement Order Acknowlegment
box_boxoptions_solaorderentry_sail_v2_25.improvement_order_acknowlegment.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group: Group ID
  index, group = box_boxoptions_solaorderentry_sail_v2_25.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = box_boxoptions_solaorderentry_sail_v2_25.instrument.dissect(buffer, index, packet, parent)

  -- Trader Id: Trader ID
  index, trader_id = box_boxoptions_solaorderentry_sail_v2_25.trader_id.dissect(buffer, index, packet, parent)

  -- Order Id Order Id 8: Order ID
  index, order_id_order_id_8 = box_boxoptions_solaorderentry_sail_v2_25.order_id_order_id_8.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = box_boxoptions_solaorderentry_sail_v2_25.verb_side.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity
  index, quantity = box_boxoptions_solaorderentry_sail_v2_25.quantity.dissect(buffer, index, packet, parent)

  -- Assigned Price: Assigned Price
  index, assigned_price = box_boxoptions_solaorderentry_sail_v2_25.assigned_price.dissect(buffer, index, packet, parent)

  -- Clearing Data: Struct of 5 fields
  index, clearing_data = box_boxoptions_solaorderentry_sail_v2_25.clearing_data.dissect(buffer, index, packet, parent)

  -- Owner Data: Struct of 3 fields
  index, owner_data = box_boxoptions_solaorderentry_sail_v2_25.owner_data.dissect(buffer, index, packet, parent)

  -- Original Order Id: Original Order ID
  index, original_order_id = box_boxoptions_solaorderentry_sail_v2_25.original_order_id.dissect(buffer, index, packet, parent)

  -- Auction Id Only If Message Type Is Ki Or Else Zeroes: Auction ID
  index, auction_id_only_if_message_type_is_ki_or_else_zeroes = box_boxoptions_solaorderentry_sail_v2_25.auction_id_only_if_message_type_is_ki_or_else_zeroes.dissect(buffer, index, packet, parent)

  -- Additional Client Memo: Additional Client Memo
  index, additional_client_memo = box_boxoptions_solaorderentry_sail_v2_25.additional_client_memo.dissect(buffer, index, packet, parent)

  -- Filler Must Be Blank String 44: String (4)
  index, filler_must_be_blank_string_44 = box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_string_44.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Improvement Order Acknowlegment
box_boxoptions_solaorderentry_sail_v2_25.improvement_order_acknowlegment.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.improvement_order_acknowlegment, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.improvement_order_acknowlegment.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.improvement_order_acknowlegment.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.improvement_order_acknowlegment.fields(buffer, offset, packet, parent)
  end
end

-- Global Cancellation Confirmation
box_boxoptions_solaorderentry_sail_v2_25.global_cancellation_confirmation = {}

-- Size: Global Cancellation Confirmation
box_boxoptions_solaorderentry_sail_v2_25.global_cancellation_confirmation.size =
  box_boxoptions_solaorderentry_sail_v2_25.group.size + 
  box_boxoptions_solaorderentry_sail_v2_25.trader_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.type_of_cancellation_only_q_quotes_only_can_be_returned.size

-- Display: Global Cancellation Confirmation
box_boxoptions_solaorderentry_sail_v2_25.global_cancellation_confirmation.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Global Cancellation Confirmation
box_boxoptions_solaorderentry_sail_v2_25.global_cancellation_confirmation.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group: Group ID
  index, group = box_boxoptions_solaorderentry_sail_v2_25.group.dissect(buffer, index, packet, parent)

  -- Trader Id: Trader ID
  index, trader_id = box_boxoptions_solaorderentry_sail_v2_25.trader_id.dissect(buffer, index, packet, parent)

  -- Type Of Cancellation Only Q Quotes Only Can Be Returned: CancellationType
  index, type_of_cancellation_only_q_quotes_only_can_be_returned = box_boxoptions_solaorderentry_sail_v2_25.type_of_cancellation_only_q_quotes_only_can_be_returned.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Global Cancellation Confirmation
box_boxoptions_solaorderentry_sail_v2_25.global_cancellation_confirmation.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.global_cancellation_confirmation, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.global_cancellation_confirmation.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.global_cancellation_confirmation.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.global_cancellation_confirmation.fields(buffer, offset, packet, parent)
  end
end

-- Order Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.order_acknowledgement = {}

-- Size: Order Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.order_acknowledgement.size =
  box_boxoptions_solaorderentry_sail_v2_25.group.size + 
  box_boxoptions_solaorderentry_sail_v2_25.instrument.size + 
  box_boxoptions_solaorderentry_sail_v2_25.trader_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.order_id_order_id_8.size + 
  box_boxoptions_solaorderentry_sail_v2_25.verb_side.size + 
  box_boxoptions_solaorderentry_sail_v2_25.quantity.size + 
  box_boxoptions_solaorderentry_sail_v2_25.assigned_price.size + 
  box_boxoptions_solaorderentry_sail_v2_25.clearing_data.size + 
  box_boxoptions_solaorderentry_sail_v2_25.owner_data.size + 
  box_boxoptions_solaorderentry_sail_v2_25.original_order_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.filler_numeric_66.size + 
  box_boxoptions_solaorderentry_sail_v2_25.additional_client_memo.size + 
  box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_string_44.size

-- Display: Order Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.order_acknowledgement.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.order_acknowledgement.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group: Group ID
  index, group = box_boxoptions_solaorderentry_sail_v2_25.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = box_boxoptions_solaorderentry_sail_v2_25.instrument.dissect(buffer, index, packet, parent)

  -- Trader Id: Trader ID
  index, trader_id = box_boxoptions_solaorderentry_sail_v2_25.trader_id.dissect(buffer, index, packet, parent)

  -- Order Id Order Id 8: Order ID
  index, order_id_order_id_8 = box_boxoptions_solaorderentry_sail_v2_25.order_id_order_id_8.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = box_boxoptions_solaorderentry_sail_v2_25.verb_side.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity
  index, quantity = box_boxoptions_solaorderentry_sail_v2_25.quantity.dissect(buffer, index, packet, parent)

  -- Assigned Price: Assigned Price
  index, assigned_price = box_boxoptions_solaorderentry_sail_v2_25.assigned_price.dissect(buffer, index, packet, parent)

  -- Clearing Data: Struct of 5 fields
  index, clearing_data = box_boxoptions_solaorderentry_sail_v2_25.clearing_data.dissect(buffer, index, packet, parent)

  -- Owner Data: Struct of 3 fields
  index, owner_data = box_boxoptions_solaorderentry_sail_v2_25.owner_data.dissect(buffer, index, packet, parent)

  -- Original Order Id: Original Order ID
  index, original_order_id = box_boxoptions_solaorderentry_sail_v2_25.original_order_id.dissect(buffer, index, packet, parent)

  -- Filler Numeric 66: Numeric (6)
  index, filler_numeric_66 = box_boxoptions_solaorderentry_sail_v2_25.filler_numeric_66.dissect(buffer, index, packet, parent)

  -- Additional Client Memo: Additional Client Memo
  index, additional_client_memo = box_boxoptions_solaorderentry_sail_v2_25.additional_client_memo.dissect(buffer, index, packet, parent)

  -- Filler Must Be Blank String 44: String (4)
  index, filler_must_be_blank_string_44 = box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_string_44.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.order_acknowledgement.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.order_acknowledgement, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.order_acknowledgement.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.order_acknowledgement.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.order_acknowledgement.fields(buffer, offset, packet, parent)
  end
end

-- Bulk Quote Data Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.bulk_quote_data_acknowledgement = {}

-- Size: Bulk Quote Data Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.bulk_quote_data_acknowledgement.size =
  box_boxoptions_solaorderentry_sail_v2_25.group.size + 
  box_boxoptions_solaorderentry_sail_v2_25.trader_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.quote_id_identifies_traders_quote_on_this_group.size

-- Display: Bulk Quote Data Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.bulk_quote_data_acknowledgement.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote Data Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.bulk_quote_data_acknowledgement.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group: Group ID
  index, group = box_boxoptions_solaorderentry_sail_v2_25.group.dissect(buffer, index, packet, parent)

  -- Trader Id: Trader ID
  index, trader_id = box_boxoptions_solaorderentry_sail_v2_25.trader_id.dissect(buffer, index, packet, parent)

  -- Quote Id Identifies Traders Quote On This Group: Quote ID
  index, quote_id_identifies_traders_quote_on_this_group = box_boxoptions_solaorderentry_sail_v2_25.quote_id_identifies_traders_quote_on_this_group.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bulk Quote Data Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.bulk_quote_data_acknowledgement.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.bulk_quote_data_acknowledgement, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.bulk_quote_data_acknowledgement.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.bulk_quote_data_acknowledgement.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.bulk_quote_data_acknowledgement.fields(buffer, offset, packet, parent)
  end
end

-- Error Notice
box_boxoptions_solaorderentry_sail_v2_25.error_notice = {}

-- Size: Error Notice
box_boxoptions_solaorderentry_sail_v2_25.error_notice.size =
  box_boxoptions_solaorderentry_sail_v2_25.error_code.size + 
  box_boxoptions_solaorderentry_sail_v2_25.error_description.size + 
  box_boxoptions_solaorderentry_sail_v2_25.group.size + 
  box_boxoptions_solaorderentry_sail_v2_25.instrument.size + 
  box_boxoptions_solaorderentry_sail_v2_25.order_id_client_order_id_20.size + 
  box_boxoptions_solaorderentry_sail_v2_25.auction_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.original_message_type.size + 
  box_boxoptions_solaorderentry_sail_v2_25.error_detail.size + 
  box_boxoptions_solaorderentry_sail_v2_25.client_order_id.size

-- Display: Error Notice
box_boxoptions_solaorderentry_sail_v2_25.error_notice.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Error Notice
box_boxoptions_solaorderentry_sail_v2_25.error_notice.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Error Code: Error Code
  index, error_code = box_boxoptions_solaorderentry_sail_v2_25.error_code.dissect(buffer, index, packet, parent)

  -- Error Description: String (100)
  index, error_description = box_boxoptions_solaorderentry_sail_v2_25.error_description.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = box_boxoptions_solaorderentry_sail_v2_25.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = box_boxoptions_solaorderentry_sail_v2_25.instrument.dissect(buffer, index, packet, parent)

  -- Order Id Client Order Id 20: ClientOrderId
  index, order_id_client_order_id_20 = box_boxoptions_solaorderentry_sail_v2_25.order_id_client_order_id_20.dissect(buffer, index, packet, parent)

  -- Auction Id: Auction ID
  index, auction_id = box_boxoptions_solaorderentry_sail_v2_25.auction_id.dissect(buffer, index, packet, parent)

  -- Original Message Type: Message Type
  index, original_message_type = box_boxoptions_solaorderentry_sail_v2_25.original_message_type.dissect(buffer, index, packet, parent)

  -- Error Detail: Error Detail
  index, error_detail = box_boxoptions_solaorderentry_sail_v2_25.error_detail.dissect(buffer, index, packet, parent)

  -- Client Order Id: ClientOrderId
  index, client_order_id = box_boxoptions_solaorderentry_sail_v2_25.client_order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Error Notice
box_boxoptions_solaorderentry_sail_v2_25.error_notice.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.error_notice, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.error_notice.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.error_notice.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.error_notice.fields(buffer, offset, packet, parent)
  end
end

-- End Of Transmission
box_boxoptions_solaorderentry_sail_v2_25.end_of_transmission = {}

-- Size: End Of Transmission
box_boxoptions_solaorderentry_sail_v2_25.end_of_transmission.size =
  box_boxoptions_solaorderentry_sail_v2_25.ended_session_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.last_user_sequence_id_received_if_no_business_message_has_been_received_on_this_connection_this_field_is_equal_to_zeroes.size + 
  box_boxoptions_solaorderentry_sail_v2_25.time.size

-- Display: End Of Transmission
box_boxoptions_solaorderentry_sail_v2_25.end_of_transmission.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Transmission
box_boxoptions_solaorderentry_sail_v2_25.end_of_transmission.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Ended Session Id: Session ID
  index, ended_session_id = box_boxoptions_solaorderentry_sail_v2_25.ended_session_id.dissect(buffer, index, packet, parent)

  -- Last User Sequence Id Received If No Business Message Has Been Received On This Connection This Field Is Equal To Zeroes: User Sequence ID
  index, last_user_sequence_id_received_if_no_business_message_has_been_received_on_this_connection_this_field_is_equal_to_zeroes = box_boxoptions_solaorderentry_sail_v2_25.last_user_sequence_id_received_if_no_business_message_has_been_received_on_this_connection_this_field_is_equal_to_zeroes.dissect(buffer, index, packet, parent)

  -- Time: Time
  index, time = box_boxoptions_solaorderentry_sail_v2_25.time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Transmission
box_boxoptions_solaorderentry_sail_v2_25.end_of_transmission.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.end_of_transmission, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.end_of_transmission.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.end_of_transmission.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.end_of_transmission.fields(buffer, offset, packet, parent)
  end
end

-- Disconnection Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.disconnection_acknowledgement = {}

-- Size: Disconnection Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.disconnection_acknowledgement.size =
  box_boxoptions_solaorderentry_sail_v2_25.current_session_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.last_user_sequence_id_received.size

-- Display: Disconnection Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.disconnection_acknowledgement.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Disconnection Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.disconnection_acknowledgement.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Current Session Id: Session ID
  index, current_session_id = box_boxoptions_solaorderentry_sail_v2_25.current_session_id.dissect(buffer, index, packet, parent)

  -- Last User Sequence Id Received: User Sequence ID
  index, last_user_sequence_id_received = box_boxoptions_solaorderentry_sail_v2_25.last_user_sequence_id_received.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Disconnection Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.disconnection_acknowledgement.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.disconnection_acknowledgement, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.disconnection_acknowledgement.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.disconnection_acknowledgement.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.disconnection_acknowledgement.fields(buffer, offset, packet, parent)
  end
end

-- Connection Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.connection_acknowledgement = {}

-- Size: Connection Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.connection_acknowledgement.size =
  box_boxoptions_solaorderentry_sail_v2_25.current_session_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.last_user_sequence_id_received.size

-- Display: Connection Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.connection_acknowledgement.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Connection Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.connection_acknowledgement.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Current Session Id: Session ID
  index, current_session_id = box_boxoptions_solaorderentry_sail_v2_25.current_session_id.dissect(buffer, index, packet, parent)

  -- Last User Sequence Id Received: User Sequence ID
  index, last_user_sequence_id_received = box_boxoptions_solaorderentry_sail_v2_25.last_user_sequence_id_received.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Connection Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.connection_acknowledgement.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.connection_acknowledgement, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.connection_acknowledgement.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.connection_acknowledgement.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.connection_acknowledgement.fields(buffer, offset, packet, parent)
  end
end

-- Disconnection Instruction Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.disconnection_instruction_acknowledgement = {}

-- Size: Disconnection Instruction Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.disconnection_instruction_acknowledgement.size =
  box_boxoptions_solaorderentry_sail_v2_25.current_session_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.last_user_sequence_id_received.size

-- Display: Disconnection Instruction Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.disconnection_instruction_acknowledgement.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Disconnection Instruction Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.disconnection_instruction_acknowledgement.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Current Session Id: Session ID
  index, current_session_id = box_boxoptions_solaorderentry_sail_v2_25.current_session_id.dissect(buffer, index, packet, parent)

  -- Last User Sequence Id Received: User Sequence ID
  index, last_user_sequence_id_received = box_boxoptions_solaorderentry_sail_v2_25.last_user_sequence_id_received.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Disconnection Instruction Acknowledgement
box_boxoptions_solaorderentry_sail_v2_25.disconnection_instruction_acknowledgement.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.disconnection_instruction_acknowledgement, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.disconnection_instruction_acknowledgement.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.disconnection_instruction_acknowledgement.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.disconnection_instruction_acknowledgement.fields(buffer, offset, packet, parent)
  end
end

-- Technical Error Notice
box_boxoptions_solaorderentry_sail_v2_25.technical_error_notice = {}

-- Size: Technical Error Notice
box_boxoptions_solaorderentry_sail_v2_25.technical_error_notice.size =
  box_boxoptions_solaorderentry_sail_v2_25.received_message_type.size + 
  box_boxoptions_solaorderentry_sail_v2_25.preceding_user_sequence_id_received_zeroes_if_none.size + 
  box_boxoptions_solaorderentry_sail_v2_25.error_code.size + 
  box_boxoptions_solaorderentry_sail_v2_25.error_position.size + 
  box_boxoptions_solaorderentry_sail_v2_25.error_message.size + 
  box_boxoptions_solaorderentry_sail_v2_25.start_of_message_in_error.size

-- Display: Technical Error Notice
box_boxoptions_solaorderentry_sail_v2_25.technical_error_notice.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Technical Error Notice
box_boxoptions_solaorderentry_sail_v2_25.technical_error_notice.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Received Message Type: Message Type
  index, received_message_type = box_boxoptions_solaorderentry_sail_v2_25.received_message_type.dissect(buffer, index, packet, parent)

  -- Preceding User Sequence Id Received Zeroes If None: User Sequence ID
  index, preceding_user_sequence_id_received_zeroes_if_none = box_boxoptions_solaorderentry_sail_v2_25.preceding_user_sequence_id_received_zeroes_if_none.dissect(buffer, index, packet, parent)

  -- Error Code: Error Code
  index, error_code = box_boxoptions_solaorderentry_sail_v2_25.error_code.dissect(buffer, index, packet, parent)

  -- Error Position: Numeric (4)
  index, error_position = box_boxoptions_solaorderentry_sail_v2_25.error_position.dissect(buffer, index, packet, parent)

  -- Error Message: String (100)
  index, error_message = box_boxoptions_solaorderentry_sail_v2_25.error_message.dissect(buffer, index, packet, parent)

  -- Start Of Message In Error: String (100)
  index, start_of_message_in_error = box_boxoptions_solaorderentry_sail_v2_25.start_of_message_in_error.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Technical Error Notice
box_boxoptions_solaorderentry_sail_v2_25.technical_error_notice.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.technical_error_notice, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.technical_error_notice.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.technical_error_notice.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.technical_error_notice.fields(buffer, offset, packet, parent)
  end
end

-- Out Of Sequence
box_boxoptions_solaorderentry_sail_v2_25.out_of_sequence = {}

-- Size: Out Of Sequence
box_boxoptions_solaorderentry_sail_v2_25.out_of_sequence.size =
  box_boxoptions_solaorderentry_sail_v2_25.received_user_sequence_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.expected_last_user_sequence_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.message_time_local.size

-- Display: Out Of Sequence
box_boxoptions_solaorderentry_sail_v2_25.out_of_sequence.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Out Of Sequence
box_boxoptions_solaorderentry_sail_v2_25.out_of_sequence.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Received User Sequence Id: User Sequence ID
  index, received_user_sequence_id = box_boxoptions_solaorderentry_sail_v2_25.received_user_sequence_id.dissect(buffer, index, packet, parent)

  -- Expected Last User Sequence Id: User Sequence ID
  index, expected_last_user_sequence_id = box_boxoptions_solaorderentry_sail_v2_25.expected_last_user_sequence_id.dissect(buffer, index, packet, parent)

  -- Message Time Local: Time
  index, message_time_local = box_boxoptions_solaorderentry_sail_v2_25.message_time_local.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Out Of Sequence
box_boxoptions_solaorderentry_sail_v2_25.out_of_sequence.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.out_of_sequence, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.out_of_sequence.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.out_of_sequence.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.out_of_sequence.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Question
box_boxoptions_solaorderentry_sail_v2_25.heartbeat_question = {}

-- Size: Heartbeat Question
box_boxoptions_solaorderentry_sail_v2_25.heartbeat_question.size =
  box_boxoptions_solaorderentry_sail_v2_25.user_sequence_id_first_user_sequence_id_for_nextcurrent_heartbeat_period.size + 
  box_boxoptions_solaorderentry_sail_v2_25.last_exchange_message_id_sent_to_participant.size + 
  box_boxoptions_solaorderentry_sail_v2_25.time_local.size

-- Display: Heartbeat Question
box_boxoptions_solaorderentry_sail_v2_25.heartbeat_question.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Question
box_boxoptions_solaorderentry_sail_v2_25.heartbeat_question.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Sequence Id First User Sequence Id For Nextcurrent Heartbeat Period: User Sequence ID
  index, user_sequence_id_first_user_sequence_id_for_nextcurrent_heartbeat_period = box_boxoptions_solaorderentry_sail_v2_25.user_sequence_id_first_user_sequence_id_for_nextcurrent_heartbeat_period.dissect(buffer, index, packet, parent)

  -- Last Exchange Message Id Sent To Participant: Exchange Message ID
  index, last_exchange_message_id_sent_to_participant = box_boxoptions_solaorderentry_sail_v2_25.last_exchange_message_id_sent_to_participant.dissect(buffer, index, packet, parent)

  -- Time Local: Time
  index, time_local = box_boxoptions_solaorderentry_sail_v2_25.time_local.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Question
box_boxoptions_solaorderentry_sail_v2_25.heartbeat_question.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.heartbeat_question, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.heartbeat_question.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.heartbeat_question.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.heartbeat_question.fields(buffer, offset, packet, parent)
  end
end

-- Exchange Message
box_boxoptions_solaorderentry_sail_v2_25.exchange_message = {}

-- Dissect: Exchange Message
box_boxoptions_solaorderentry_sail_v2_25.exchange_message.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Heartbeat Question
  if message_type == "TH" then
    return box_boxoptions_solaorderentry_sail_v2_25.heartbeat_question.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Out Of Sequence
  if message_type == "TO" then
    return box_boxoptions_solaorderentry_sail_v2_25.out_of_sequence.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Technical Error Notice
  if message_type == "TE" then
    return box_boxoptions_solaorderentry_sail_v2_25.technical_error_notice.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Disconnection Instruction Acknowledgement
  if message_type == "TM" then
    return box_boxoptions_solaorderentry_sail_v2_25.disconnection_instruction_acknowledgement.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Connection Acknowledgement
  if message_type == "TK" then
    return box_boxoptions_solaorderentry_sail_v2_25.connection_acknowledgement.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Disconnection Acknowledgement
  if message_type == "TL" then
    return box_boxoptions_solaorderentry_sail_v2_25.disconnection_acknowledgement.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Transmission
  if message_type == "TT" then
    return box_boxoptions_solaorderentry_sail_v2_25.end_of_transmission.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Error Notice
  if message_type == "ER" then
    return box_boxoptions_solaorderentry_sail_v2_25.error_notice.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bulk Quote Data Acknowledgement
  if message_type == "KD" then
    return box_boxoptions_solaorderentry_sail_v2_25.bulk_quote_data_acknowledgement.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Acknowledgement
  if message_type == "KE" then
    return box_boxoptions_solaorderentry_sail_v2_25.order_acknowledgement.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Global Cancellation Confirmation
  if message_type == "KG" then
    return box_boxoptions_solaorderentry_sail_v2_25.global_cancellation_confirmation.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Improvement Order Acknowlegment
  if message_type == "KI" then
    return box_boxoptions_solaorderentry_sail_v2_25.improvement_order_acknowlegment.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Modification Acknowledgement
  if message_type == "KM" then
    return box_boxoptions_solaorderentry_sail_v2_25.order_modification_acknowledgement.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Complex Order Instrument Acknowledgement
  if message_type == "KN" then
    return box_boxoptions_solaorderentry_sail_v2_25.new_complex_order_instrument_acknowledgement.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Standard Acknowledgement
  if message_type == "KO" then
    return box_boxoptions_solaorderentry_sail_v2_25.standard_acknowledgement.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Order Auction Acknowledgement
  if message_type == "KT" then
    return box_boxoptions_solaorderentry_sail_v2_25.complex_order_auction_acknowledgement.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Or Improvement Cancellation Acknowledgement
  if message_type == "KY" then
    return box_boxoptions_solaorderentry_sail_v2_25.auction_or_improvement_cancellation_acknowledgement.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancellation Acknowledgement
  if message_type == "KZ" then
    return box_boxoptions_solaorderentry_sail_v2_25.order_cancellation_acknowledgement.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bulk Quote Acknowledgement
  if message_type == "LA" then
    return box_boxoptions_solaorderentry_sail_v2_25.bulk_quote_acknowledgement.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trader Status
  if message_type == "MU" then
    return box_boxoptions_solaorderentry_sail_v2_25.trader_status.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Directed Order Cancellation Notice
  if message_type == "NC" then
    return box_boxoptions_solaorderentry_sail_v2_25.directed_order_cancellation_notice.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Directed Order Notice
  if message_type == "ND" then
    return box_boxoptions_solaorderentry_sail_v2_25.directed_order_notice.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Excluded Instrument Notice
  if message_type == "NE" then
    return box_boxoptions_solaorderentry_sail_v2_25.excluded_instrument_notice.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Group State Change
  if message_type == "NG" then
    return box_boxoptions_solaorderentry_sail_v2_25.group_state_change.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Leg Execution Notice
  if message_type == "NL" then
    return box_boxoptions_solaorderentry_sail_v2_25.leg_execution_notice.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancellation Of All Quotes Notices
  if message_type == "NP" then
    return box_boxoptions_solaorderentry_sail_v2_25.cancellation_of_all_quotes_notices.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quality Market Maker Notification
  if message_type == "NQ" then
    return box_boxoptions_solaorderentry_sail_v2_25.quality_market_maker_notification.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Notice
  if message_type == "NT" then
    return box_boxoptions_solaorderentry_sail_v2_25.execution_notice.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Notice
  if message_type == "NU" then
    return box_boxoptions_solaorderentry_sail_v2_25.quote_notice.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Cancellation Notice
  if message_type == "NX" then
    return box_boxoptions_solaorderentry_sail_v2_25.execution_cancellation_notice.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Leg Execution Cancellation Notice
  if message_type == "NY" then
    return box_boxoptions_solaorderentry_sail_v2_25.leg_execution_cancellation_notice.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancellation Notice By System
  if message_type == "NZ" then
    return box_boxoptions_solaorderentry_sail_v2_25.order_cancellation_notice_by_system.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Outgoing Header
box_boxoptions_solaorderentry_sail_v2_25.outgoing_header = {}

-- Size: Outgoing Header
box_boxoptions_solaorderentry_sail_v2_25.outgoing_header.size =
  box_boxoptions_solaorderentry_sail_v2_25.message_type.size + 
  box_boxoptions_solaorderentry_sail_v2_25.message_timestamp.size + 
  box_boxoptions_solaorderentry_sail_v2_25.user_sequence_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.exchange_message_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.gap_sequence_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.system_sequence_id.size

-- Display: Outgoing Header
box_boxoptions_solaorderentry_sail_v2_25.outgoing_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Outgoing Header
box_boxoptions_solaorderentry_sail_v2_25.outgoing_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: X
  index, message_type = box_boxoptions_solaorderentry_sail_v2_25.message_type.dissect(buffer, index, packet, parent)

  -- Message Timestamp: N
  index, message_timestamp = box_boxoptions_solaorderentry_sail_v2_25.message_timestamp.dissect(buffer, index, packet, parent)

  -- User Sequence ID: N
  index, user_sequence_id = box_boxoptions_solaorderentry_sail_v2_25.user_sequence_id.dissect(buffer, index, packet, parent)

  -- Exchange Message Id: Exchange Message ID
  index, exchange_message_id = box_boxoptions_solaorderentry_sail_v2_25.exchange_message_id.dissect(buffer, index, packet, parent)

  -- Gap Sequence ID: N
  index, gap_sequence_id = box_boxoptions_solaorderentry_sail_v2_25.gap_sequence_id.dissect(buffer, index, packet, parent)

  -- System Sequence ID: X
  index, system_sequence_id = box_boxoptions_solaorderentry_sail_v2_25.system_sequence_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Outgoing Header
box_boxoptions_solaorderentry_sail_v2_25.outgoing_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.outgoing_header, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.outgoing_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.outgoing_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.outgoing_header.fields(buffer, offset, packet, parent)
  end
end

-- Exchange Packet
box_boxoptions_solaorderentry_sail_v2_25.exchange_packet = {}

-- Verify required size of Tcp packet
box_boxoptions_solaorderentry_sail_v2_25.exchange_packet.requiredsize = function(buffer)
  return buffer:len() >= box_boxoptions_solaorderentry_sail_v2_25.message_length.size + box_boxoptions_solaorderentry_sail_v2_25.outgoing_header.size
end

-- Dissect Exchange Packet
box_boxoptions_solaorderentry_sail_v2_25.exchange_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Message Length: Endian
  index, message_length = box_boxoptions_solaorderentry_sail_v2_25.message_length.dissect(buffer, index, packet, parent)

  -- Outgoing Header: Struct of 6 fields
  index, outgoing_header = box_boxoptions_solaorderentry_sail_v2_25.outgoing_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 30, 2):string()

  -- Exchange Message: Runtime Type with 32 branches
  index = box_boxoptions_solaorderentry_sail_v2_25.exchange_message.dissect(buffer, index, packet, parent, message_type)

  -- End Of Text: Binary
  index, end_of_text = box_boxoptions_solaorderentry_sail_v2_25.end_of_text.dissect(buffer, index, packet, parent)

  return index
end

-- Improvement Order Cancellation
box_boxoptions_solaorderentry_sail_v2_25.improvement_order_cancellation = {}

-- Size: Improvement Order Cancellation
box_boxoptions_solaorderentry_sail_v2_25.improvement_order_cancellation.size =
  box_boxoptions_solaorderentry_sail_v2_25.group.size + 
  box_boxoptions_solaorderentry_sail_v2_25.instrument.size + 
  box_boxoptions_solaorderentry_sail_v2_25.cancelled_order_id.size

-- Display: Improvement Order Cancellation
box_boxoptions_solaorderentry_sail_v2_25.improvement_order_cancellation.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Improvement Order Cancellation
box_boxoptions_solaorderentry_sail_v2_25.improvement_order_cancellation.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group: Group ID
  index, group = box_boxoptions_solaorderentry_sail_v2_25.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = box_boxoptions_solaorderentry_sail_v2_25.instrument.dissect(buffer, index, packet, parent)

  -- Cancelled Order Id: Order ID
  index, cancelled_order_id = box_boxoptions_solaorderentry_sail_v2_25.cancelled_order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Improvement Order Cancellation
box_boxoptions_solaorderentry_sail_v2_25.improvement_order_cancellation.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.improvement_order_cancellation, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.improvement_order_cancellation.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.improvement_order_cancellation.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.improvement_order_cancellation.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancellation
box_boxoptions_solaorderentry_sail_v2_25.order_cancellation = {}

-- Size: Order Cancellation
box_boxoptions_solaorderentry_sail_v2_25.order_cancellation.size =
  box_boxoptions_solaorderentry_sail_v2_25.group.size + 
  box_boxoptions_solaorderentry_sail_v2_25.instrument.size + 
  box_boxoptions_solaorderentry_sail_v2_25.cancelled_order_id.size

-- Display: Order Cancellation
box_boxoptions_solaorderentry_sail_v2_25.order_cancellation.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancellation
box_boxoptions_solaorderentry_sail_v2_25.order_cancellation.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group: Group ID
  index, group = box_boxoptions_solaorderentry_sail_v2_25.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = box_boxoptions_solaorderentry_sail_v2_25.instrument.dissect(buffer, index, packet, parent)

  -- Cancelled Order Id: Order ID
  index, cancelled_order_id = box_boxoptions_solaorderentry_sail_v2_25.cancelled_order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancellation
box_boxoptions_solaorderentry_sail_v2_25.order_cancellation.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.order_cancellation, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.order_cancellation.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.order_cancellation.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.order_cancellation.fields(buffer, offset, packet, parent)
  end
end

-- Request For Quote
box_boxoptions_solaorderentry_sail_v2_25.request_for_quote = {}

-- Size: Request For Quote
box_boxoptions_solaorderentry_sail_v2_25.request_for_quote.size =
  box_boxoptions_solaorderentry_sail_v2_25.group.size + 
  box_boxoptions_solaorderentry_sail_v2_25.instrument.size + 
  box_boxoptions_solaorderentry_sail_v2_25.quantity_1.size

-- Display: Request For Quote
box_boxoptions_solaorderentry_sail_v2_25.request_for_quote.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request For Quote
box_boxoptions_solaorderentry_sail_v2_25.request_for_quote.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group: Group ID
  index, group = box_boxoptions_solaorderentry_sail_v2_25.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = box_boxoptions_solaorderentry_sail_v2_25.instrument.dissect(buffer, index, packet, parent)

  -- Quantity 1: Quantity
  index, quantity_1 = box_boxoptions_solaorderentry_sail_v2_25.quantity_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Request For Quote
box_boxoptions_solaorderentry_sail_v2_25.request_for_quote.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.request_for_quote, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.request_for_quote.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.request_for_quote.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.request_for_quote.fields(buffer, offset, packet, parent)
  end
end

-- Market Maker Protection Subscription
box_boxoptions_solaorderentry_sail_v2_25.market_maker_protection_subscription = {}

-- Size: Market Maker Protection Subscription
box_boxoptions_solaorderentry_sail_v2_25.market_maker_protection_subscription.size =
  box_boxoptions_solaorderentry_sail_v2_25.group.size + 
  box_boxoptions_solaorderentry_sail_v2_25.protection_type_advanced_normal.size

-- Display: Market Maker Protection Subscription
box_boxoptions_solaorderentry_sail_v2_25.market_maker_protection_subscription.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Maker Protection Subscription
box_boxoptions_solaorderentry_sail_v2_25.market_maker_protection_subscription.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group: Group ID
  index, group = box_boxoptions_solaorderentry_sail_v2_25.group.dissect(buffer, index, packet, parent)

  -- Protection Type Advanced Normal: Protection Code
  index, protection_type_advanced_normal = box_boxoptions_solaorderentry_sail_v2_25.protection_type_advanced_normal.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Maker Protection Subscription
box_boxoptions_solaorderentry_sail_v2_25.market_maker_protection_subscription.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.market_maker_protection_subscription, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.market_maker_protection_subscription.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.market_maker_protection_subscription.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.market_maker_protection_subscription.fields(buffer, offset, packet, parent)
  end
end

-- Executing Participant Disconnection
box_boxoptions_solaorderentry_sail_v2_25.executing_participant_disconnection = {}

-- Display: Executing Participant Disconnection
box_boxoptions_solaorderentry_sail_v2_25.executing_participant_disconnection.display = function(packet, parent, length)
  return "Executing Participant Disconnection"
end


-- Dissect: Executing Participant Disconnection
box_boxoptions_solaorderentry_sail_v2_25.executing_participant_disconnection.dissect = function(buffer, offset, packet, parent)
  local display = box_boxoptions_solaorderentry_sail_v2_25.executing_participant_disconnection.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Executing Participant Connection
box_boxoptions_solaorderentry_sail_v2_25.executing_participant_connection = {}

-- Display: Executing Participant Connection
box_boxoptions_solaorderentry_sail_v2_25.executing_participant_connection.display = function(packet, parent, length)
  return "Executing Participant Connection"
end


-- Dissect: Executing Participant Connection
box_boxoptions_solaorderentry_sail_v2_25.executing_participant_connection.dissect = function(buffer, offset, packet, parent)
  local display = box_boxoptions_solaorderentry_sail_v2_25.executing_participant_connection.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Bulk Quote Occurrence
box_boxoptions_solaorderentry_sail_v2_25.bulk_quote_occurrence = {}

-- Size: Bulk Quote Occurrence
box_boxoptions_solaorderentry_sail_v2_25.bulk_quote_occurrence.size =
  box_boxoptions_solaorderentry_sail_v2_25.group.size + 
  box_boxoptions_solaorderentry_sail_v2_25.instrument.size + 
  box_boxoptions_solaorderentry_sail_v2_25.verb_side.size + 
  box_boxoptions_solaorderentry_sail_v2_25.quantity_sign.size + 
  box_boxoptions_solaorderentry_sail_v2_25.quantity.size + 
  box_boxoptions_solaorderentry_sail_v2_25.price.size

-- Display: Bulk Quote Occurrence
box_boxoptions_solaorderentry_sail_v2_25.bulk_quote_occurrence.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote Occurrence
box_boxoptions_solaorderentry_sail_v2_25.bulk_quote_occurrence.fields = function(buffer, offset, packet, parent, bulk_quote_occurrence_index)
  local index = offset

  -- Implicit Bulk Quote Occurrence Index
  if bulk_quote_occurrence_index ~= nil and show.indexes then
    local iteration = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.bulk_quote_occurrence_index, bulk_quote_occurrence_index)
    iteration:set_generated()
  end

  -- Group: Group ID
  index, group = box_boxoptions_solaorderentry_sail_v2_25.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = box_boxoptions_solaorderentry_sail_v2_25.instrument.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = box_boxoptions_solaorderentry_sail_v2_25.verb_side.dissect(buffer, index, packet, parent)

  -- Quantity Sign: Quantity Sign
  index, quantity_sign = box_boxoptions_solaorderentry_sail_v2_25.quantity_sign.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity
  index, quantity = box_boxoptions_solaorderentry_sail_v2_25.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = box_boxoptions_solaorderentry_sail_v2_25.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bulk Quote Occurrence
box_boxoptions_solaorderentry_sail_v2_25.bulk_quote_occurrence.dissect = function(buffer, offset, packet, parent, bulk_quote_occurrence_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.bulk_quote_occurrence, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.bulk_quote_occurrence.fields(buffer, offset, packet, parent, bulk_quote_occurrence_index)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.bulk_quote_occurrence.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.bulk_quote_occurrence.fields(buffer, offset, packet, parent, bulk_quote_occurrence_index)
  end
end

-- Bulk Quote
box_boxoptions_solaorderentry_sail_v2_25.bulk_quote = {}

-- Calculate size of: Bulk Quote
box_boxoptions_solaorderentry_sail_v2_25.bulk_quote.size = function(buffer, offset)
  local index = 0

  index = index + box_boxoptions_solaorderentry_sail_v2_25.group.size

  index = index + box_boxoptions_solaorderentry_sail_v2_25.quote_id_identifies_traders_quote_on_this_group.size

  index = index + box_boxoptions_solaorderentry_sail_v2_25.mm_cat_user_time.size

  index = index + box_boxoptions_solaorderentry_sail_v2_25.number_of_quotes.size

  -- Calculate field size from count
  local bulk_quote_occurrence_count = buffer(offset + index - 3, 3):string()
  index = index + bulk_quote_occurrence_count * 26

  return index
end

-- Display: Bulk Quote
box_boxoptions_solaorderentry_sail_v2_25.bulk_quote.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote
box_boxoptions_solaorderentry_sail_v2_25.bulk_quote.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group: Group ID
  index, group = box_boxoptions_solaorderentry_sail_v2_25.group.dissect(buffer, index, packet, parent)

  -- Quote Id Identifies Traders Quote On This Group: Quote ID
  index, quote_id_identifies_traders_quote_on_this_group = box_boxoptions_solaorderentry_sail_v2_25.quote_id_identifies_traders_quote_on_this_group.dissect(buffer, index, packet, parent)

  -- Mm Cat User Time: MM CAT UserTime
  index, mm_cat_user_time = box_boxoptions_solaorderentry_sail_v2_25.mm_cat_user_time.dissect(buffer, index, packet, parent)

  -- Number Of Quotes: Numeric (3)
  index, number_of_quotes = box_boxoptions_solaorderentry_sail_v2_25.number_of_quotes.dissect(buffer, index, packet, parent)

  -- Repeating: Bulk Quote Occurrence
  for bulk_quote_occurrence_index = 1, number_of_quotes do
    index, bulk_quote_occurrence = box_boxoptions_solaorderentry_sail_v2_25.bulk_quote_occurrence.dissect(buffer, index, packet, parent, bulk_quote_occurrence_index)
  end

  return index
end

-- Dissect: Bulk Quote
box_boxoptions_solaorderentry_sail_v2_25.bulk_quote.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.bulk_quote, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.bulk_quote.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.bulk_quote.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.bulk_quote.fields(buffer, offset, packet, parent)
  end
end

-- Complex Order Auction Entry Occurrence
box_boxoptions_solaorderentry_sail_v2_25.complex_order_auction_entry_occurrence = {}

-- Size: Complex Order Auction Entry Occurrence
box_boxoptions_solaorderentry_sail_v2_25.complex_order_auction_entry_occurrence.size =
  box_boxoptions_solaorderentry_sail_v2_25.leg_group.size + 
  box_boxoptions_solaorderentry_sail_v2_25.leg_instrument.size + 
  box_boxoptions_solaorderentry_sail_v2_25.trade_leg_price.size

-- Display: Complex Order Auction Entry Occurrence
box_boxoptions_solaorderentry_sail_v2_25.complex_order_auction_entry_occurrence.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Order Auction Entry Occurrence
box_boxoptions_solaorderentry_sail_v2_25.complex_order_auction_entry_occurrence.fields = function(buffer, offset, packet, parent, complex_order_auction_entry_occurrence_index)
  local index = offset

  -- Implicit Complex Order Auction Entry Occurrence Index
  if complex_order_auction_entry_occurrence_index ~= nil and show.indexes then
    local iteration = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.complex_order_auction_entry_occurrence_index, complex_order_auction_entry_occurrence_index)
    iteration:set_generated()
  end

  -- Leg Group: Group ID
  index, leg_group = box_boxoptions_solaorderentry_sail_v2_25.leg_group.dissect(buffer, index, packet, parent)

  -- Leg Instrument: Instrument ID
  index, leg_instrument = box_boxoptions_solaorderentry_sail_v2_25.leg_instrument.dissect(buffer, index, packet, parent)

  -- Trade Leg Price: Price
  index, trade_leg_price = box_boxoptions_solaorderentry_sail_v2_25.trade_leg_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Order Auction Entry Occurrence
box_boxoptions_solaorderentry_sail_v2_25.complex_order_auction_entry_occurrence.dissect = function(buffer, offset, packet, parent, complex_order_auction_entry_occurrence_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.complex_order_auction_entry_occurrence, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.complex_order_auction_entry_occurrence.fields(buffer, offset, packet, parent, complex_order_auction_entry_occurrence_index)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.complex_order_auction_entry_occurrence.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.complex_order_auction_entry_occurrence.fields(buffer, offset, packet, parent, complex_order_auction_entry_occurrence_index)
  end
end

-- Selling Owner Data
box_boxoptions_solaorderentry_sail_v2_25.selling_owner_data = {}

-- Size: Selling Owner Data
box_boxoptions_solaorderentry_sail_v2_25.selling_owner_data.size =
  box_boxoptions_solaorderentry_sail_v2_25.client_order_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.pound_sign.size + 
  box_boxoptions_solaorderentry_sail_v2_25.memo.size

-- Display: Selling Owner Data
box_boxoptions_solaorderentry_sail_v2_25.selling_owner_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Selling Owner Data
box_boxoptions_solaorderentry_sail_v2_25.selling_owner_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Order Id: ClientOrderId
  index, client_order_id = box_boxoptions_solaorderentry_sail_v2_25.client_order_id.dissect(buffer, index, packet, parent)

  -- Pound Sign: Pound Sign
  index, pound_sign = box_boxoptions_solaorderentry_sail_v2_25.pound_sign.dissect(buffer, index, packet, parent)

  -- Memo: Memo
  index, memo = box_boxoptions_solaorderentry_sail_v2_25.memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Selling Owner Data
box_boxoptions_solaorderentry_sail_v2_25.selling_owner_data.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.selling_owner_data, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.selling_owner_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.selling_owner_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.selling_owner_data.fields(buffer, offset, packet, parent)
  end
end

-- Buying Owner Data
box_boxoptions_solaorderentry_sail_v2_25.buying_owner_data = {}

-- Size: Buying Owner Data
box_boxoptions_solaorderentry_sail_v2_25.buying_owner_data.size =
  box_boxoptions_solaorderentry_sail_v2_25.client_order_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.pound_sign.size + 
  box_boxoptions_solaorderentry_sail_v2_25.memo.size

-- Display: Buying Owner Data
box_boxoptions_solaorderentry_sail_v2_25.buying_owner_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Buying Owner Data
box_boxoptions_solaorderentry_sail_v2_25.buying_owner_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Order Id: ClientOrderId
  index, client_order_id = box_boxoptions_solaorderentry_sail_v2_25.client_order_id.dissect(buffer, index, packet, parent)

  -- Pound Sign: Pound Sign
  index, pound_sign = box_boxoptions_solaorderentry_sail_v2_25.pound_sign.dissect(buffer, index, packet, parent)

  -- Memo: Memo
  index, memo = box_boxoptions_solaorderentry_sail_v2_25.memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Buying Owner Data
box_boxoptions_solaorderentry_sail_v2_25.buying_owner_data.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.buying_owner_data, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.buying_owner_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.buying_owner_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.buying_owner_data.fields(buffer, offset, packet, parent)
  end
end

-- Selling Clearing Data
box_boxoptions_solaorderentry_sail_v2_25.selling_clearing_data = {}

-- Size: Selling Clearing Data
box_boxoptions_solaorderentry_sail_v2_25.selling_clearing_data.size =
  box_boxoptions_solaorderentry_sail_v2_25.clearing_instruction.size + 
  box_boxoptions_solaorderentry_sail_v2_25.account_type.size + 
  box_boxoptions_solaorderentry_sail_v2_25.open_close.size + 
  box_boxoptions_solaorderentry_sail_v2_25.hedge_spec.size + 
  box_boxoptions_solaorderentry_sail_v2_25.clearing_destination.size

-- Display: Selling Clearing Data
box_boxoptions_solaorderentry_sail_v2_25.selling_clearing_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Selling Clearing Data
box_boxoptions_solaorderentry_sail_v2_25.selling_clearing_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Clearing Instruction: Clearing Instruction
  index, clearing_instruction = box_boxoptions_solaorderentry_sail_v2_25.clearing_instruction.dissect(buffer, index, packet, parent)

  -- Account Type: AccountType
  index, account_type = box_boxoptions_solaorderentry_sail_v2_25.account_type.dissect(buffer, index, packet, parent)

  -- Open Close: Open/Close
  index, open_close = box_boxoptions_solaorderentry_sail_v2_25.open_close.dissect(buffer, index, packet, parent)

  -- Hedge Spec: Hedge/Spec
  index, hedge_spec = box_boxoptions_solaorderentry_sail_v2_25.hedge_spec.dissect(buffer, index, packet, parent)

  -- Clearing Destination: Firm ID
  index, clearing_destination = box_boxoptions_solaorderentry_sail_v2_25.clearing_destination.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Selling Clearing Data
box_boxoptions_solaorderentry_sail_v2_25.selling_clearing_data.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.selling_clearing_data, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.selling_clearing_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.selling_clearing_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.selling_clearing_data.fields(buffer, offset, packet, parent)
  end
end

-- Buying Clearing Data
box_boxoptions_solaorderentry_sail_v2_25.buying_clearing_data = {}

-- Size: Buying Clearing Data
box_boxoptions_solaorderentry_sail_v2_25.buying_clearing_data.size =
  box_boxoptions_solaorderentry_sail_v2_25.clearing_instruction.size + 
  box_boxoptions_solaorderentry_sail_v2_25.account_type.size + 
  box_boxoptions_solaorderentry_sail_v2_25.open_close.size + 
  box_boxoptions_solaorderentry_sail_v2_25.hedge_spec.size + 
  box_boxoptions_solaorderentry_sail_v2_25.clearing_destination.size

-- Display: Buying Clearing Data
box_boxoptions_solaorderentry_sail_v2_25.buying_clearing_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Buying Clearing Data
box_boxoptions_solaorderentry_sail_v2_25.buying_clearing_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Clearing Instruction: Clearing Instruction
  index, clearing_instruction = box_boxoptions_solaorderentry_sail_v2_25.clearing_instruction.dissect(buffer, index, packet, parent)

  -- Account Type: AccountType
  index, account_type = box_boxoptions_solaorderentry_sail_v2_25.account_type.dissect(buffer, index, packet, parent)

  -- Open Close: Open/Close
  index, open_close = box_boxoptions_solaorderentry_sail_v2_25.open_close.dissect(buffer, index, packet, parent)

  -- Hedge Spec: Hedge/Spec
  index, hedge_spec = box_boxoptions_solaorderentry_sail_v2_25.hedge_spec.dissect(buffer, index, packet, parent)

  -- Clearing Destination: Firm ID
  index, clearing_destination = box_boxoptions_solaorderentry_sail_v2_25.clearing_destination.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Buying Clearing Data
box_boxoptions_solaorderentry_sail_v2_25.buying_clearing_data.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.buying_clearing_data, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.buying_clearing_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.buying_clearing_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.buying_clearing_data.fields(buffer, offset, packet, parent)
  end
end

-- Complex Order Auction Entry
box_boxoptions_solaorderentry_sail_v2_25.complex_order_auction_entry = {}

-- Calculate size of: Complex Order Auction Entry
box_boxoptions_solaorderentry_sail_v2_25.complex_order_auction_entry.size = function(buffer, offset)
  local index = 0

  index = index + box_boxoptions_solaorderentry_sail_v2_25.group.size

  index = index + box_boxoptions_solaorderentry_sail_v2_25.instrument.size

  index = index + box_boxoptions_solaorderentry_sail_v2_25.verb_side.size

  index = index + box_boxoptions_solaorderentry_sail_v2_25.quantity.size

  index = index + box_boxoptions_solaorderentry_sail_v2_25.price.size

  index = index + box_boxoptions_solaorderentry_sail_v2_25.buying_clearing_data.size

  index = index + box_boxoptions_solaorderentry_sail_v2_25.selling_clearing_data.size

  index = index + box_boxoptions_solaorderentry_sail_v2_25.buying_owner_data.size

  index = index + box_boxoptions_solaorderentry_sail_v2_25.selling_owner_data.size

  index = index + box_boxoptions_solaorderentry_sail_v2_25.iml_handling.size

  index = index + box_boxoptions_solaorderentry_sail_v2_25.special_price_term.size

  index = index + box_boxoptions_solaorderentry_sail_v2_25.additional_price.size

  index = index + box_boxoptions_solaorderentry_sail_v2_25.quantity_term_quantity_sign_1.size

  index = index + box_boxoptions_solaorderentry_sail_v2_25.additional_quantity_quantity_8.size

  index = index + box_boxoptions_solaorderentry_sail_v2_25.buying_additional_client_memo.size

  index = index + box_boxoptions_solaorderentry_sail_v2_25.selling_additional_client_memo.size

  index = index + box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_string_44.size

  index = index + box_boxoptions_solaorderentry_sail_v2_25.nb_legs.size

  -- Calculate field size from count
  local complex_order_auction_entry_occurrence_count = buffer(offset + index - 2, 2):string()
  index = index + complex_order_auction_entry_occurrence_count * 16

  return index
end

-- Display: Complex Order Auction Entry
box_boxoptions_solaorderentry_sail_v2_25.complex_order_auction_entry.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Order Auction Entry
box_boxoptions_solaorderentry_sail_v2_25.complex_order_auction_entry.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group: Group ID
  index, group = box_boxoptions_solaorderentry_sail_v2_25.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = box_boxoptions_solaorderentry_sail_v2_25.instrument.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = box_boxoptions_solaorderentry_sail_v2_25.verb_side.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity
  index, quantity = box_boxoptions_solaorderentry_sail_v2_25.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = box_boxoptions_solaorderentry_sail_v2_25.price.dissect(buffer, index, packet, parent)

  -- Buying Clearing Data: Struct of 5 fields
  index, buying_clearing_data = box_boxoptions_solaorderentry_sail_v2_25.buying_clearing_data.dissect(buffer, index, packet, parent)

  -- Selling Clearing Data: Struct of 5 fields
  index, selling_clearing_data = box_boxoptions_solaorderentry_sail_v2_25.selling_clearing_data.dissect(buffer, index, packet, parent)

  -- Buying Owner Data: Struct of 3 fields
  index, buying_owner_data = box_boxoptions_solaorderentry_sail_v2_25.buying_owner_data.dissect(buffer, index, packet, parent)

  -- Selling Owner Data: Struct of 3 fields
  index, selling_owner_data = box_boxoptions_solaorderentry_sail_v2_25.selling_owner_data.dissect(buffer, index, packet, parent)

  -- Iml Handling: IML Handling
  index, iml_handling = box_boxoptions_solaorderentry_sail_v2_25.iml_handling.dissect(buffer, index, packet, parent)

  -- Special Price Term: Special Price Term
  index, special_price_term = box_boxoptions_solaorderentry_sail_v2_25.special_price_term.dissect(buffer, index, packet, parent)

  -- Additional Price: Price
  index, additional_price = box_boxoptions_solaorderentry_sail_v2_25.additional_price.dissect(buffer, index, packet, parent)

  -- Quantity Term Quantity Sign 1: Quantity Sign
  index, quantity_term_quantity_sign_1 = box_boxoptions_solaorderentry_sail_v2_25.quantity_term_quantity_sign_1.dissect(buffer, index, packet, parent)

  -- Additional Quantity Quantity 8: Quantity
  index, additional_quantity_quantity_8 = box_boxoptions_solaorderentry_sail_v2_25.additional_quantity_quantity_8.dissect(buffer, index, packet, parent)

  -- Buying Additional Client Memo: Additional Client Memo
  index, buying_additional_client_memo = box_boxoptions_solaorderentry_sail_v2_25.buying_additional_client_memo.dissect(buffer, index, packet, parent)

  -- Selling Additional Client Memo: Additional Client Memo
  index, selling_additional_client_memo = box_boxoptions_solaorderentry_sail_v2_25.selling_additional_client_memo.dissect(buffer, index, packet, parent)

  -- Filler Must Be Blank String 44: String (4)
  index, filler_must_be_blank_string_44 = box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_string_44.dissect(buffer, index, packet, parent)

  -- Nb Legs: Numeric (2)
  index, nb_legs = box_boxoptions_solaorderentry_sail_v2_25.nb_legs.dissect(buffer, index, packet, parent)

  -- Repeating: Complex Order Auction Entry Occurrence
  for complex_order_auction_entry_occurrence_index = 1, nb_legs do
    index, complex_order_auction_entry_occurrence = box_boxoptions_solaorderentry_sail_v2_25.complex_order_auction_entry_occurrence.dissect(buffer, index, packet, parent, complex_order_auction_entry_occurrence_index)
  end

  return index
end

-- Dissect: Complex Order Auction Entry
box_boxoptions_solaorderentry_sail_v2_25.complex_order_auction_entry.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.complex_order_auction_entry, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.complex_order_auction_entry.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.complex_order_auction_entry.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.complex_order_auction_entry.fields(buffer, offset, packet, parent)
  end
end

-- New Complex Order Instrument Occurrence
box_boxoptions_solaorderentry_sail_v2_25.new_complex_order_instrument_occurrence = {}

-- Size: New Complex Order Instrument Occurrence
box_boxoptions_solaorderentry_sail_v2_25.new_complex_order_instrument_occurrence.size =
  box_boxoptions_solaorderentry_sail_v2_25.leg_group.size + 
  box_boxoptions_solaorderentry_sail_v2_25.leg_instrument_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.leg_verb.size + 
  box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_spaces.size + 
  box_boxoptions_solaorderentry_sail_v2_25.leg_quantity_ratio.size

-- Display: New Complex Order Instrument Occurrence
box_boxoptions_solaorderentry_sail_v2_25.new_complex_order_instrument_occurrence.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Complex Order Instrument Occurrence
box_boxoptions_solaorderentry_sail_v2_25.new_complex_order_instrument_occurrence.fields = function(buffer, offset, packet, parent, new_complex_order_instrument_occurrence_index)
  local index = offset

  -- Implicit New Complex Order Instrument Occurrence Index
  if new_complex_order_instrument_occurrence_index ~= nil and show.indexes then
    local iteration = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.new_complex_order_instrument_occurrence_index, new_complex_order_instrument_occurrence_index)
    iteration:set_generated()
  end

  -- Leg Group: Group ID
  index, leg_group = box_boxoptions_solaorderentry_sail_v2_25.leg_group.dissect(buffer, index, packet, parent)

  -- Leg Instrument Id: Instrument ID
  index, leg_instrument_id = box_boxoptions_solaorderentry_sail_v2_25.leg_instrument_id.dissect(buffer, index, packet, parent)

  -- Leg Verb: Verb
  index, leg_verb = box_boxoptions_solaorderentry_sail_v2_25.leg_verb.dissect(buffer, index, packet, parent)

  -- Filler Must Be Spaces: String (1)
  index, filler_must_be_spaces = box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_spaces.dissect(buffer, index, packet, parent)

  -- Leg Quantity Ratio: Quantity
  index, leg_quantity_ratio = box_boxoptions_solaorderentry_sail_v2_25.leg_quantity_ratio.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Complex Order Instrument Occurrence
box_boxoptions_solaorderentry_sail_v2_25.new_complex_order_instrument_occurrence.dissect = function(buffer, offset, packet, parent, new_complex_order_instrument_occurrence_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.new_complex_order_instrument_occurrence, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.new_complex_order_instrument_occurrence.fields(buffer, offset, packet, parent, new_complex_order_instrument_occurrence_index)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.new_complex_order_instrument_occurrence.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.new_complex_order_instrument_occurrence.fields(buffer, offset, packet, parent, new_complex_order_instrument_occurrence_index)
  end
end

-- New Complex Order Instrument
box_boxoptions_solaorderentry_sail_v2_25.new_complex_order_instrument = {}

-- Calculate size of: New Complex Order Instrument
box_boxoptions_solaorderentry_sail_v2_25.new_complex_order_instrument.size = function(buffer, offset)
  local index = 0

  index = index + box_boxoptions_solaorderentry_sail_v2_25.enabled_y_yes_n_no.size

  index = index + box_boxoptions_solaorderentry_sail_v2_25.number_of_legs.size

  -- Calculate field size from count
  local new_complex_order_instrument_occurrence_count = buffer(offset + index - 2, 2):string()
  index = index + new_complex_order_instrument_occurrence_count * 16

  return index
end

-- Display: New Complex Order Instrument
box_boxoptions_solaorderentry_sail_v2_25.new_complex_order_instrument.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Complex Order Instrument
box_boxoptions_solaorderentry_sail_v2_25.new_complex_order_instrument.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Enabled Y Yes N No: YesNoFlag
  index, enabled_y_yes_n_no = box_boxoptions_solaorderentry_sail_v2_25.enabled_y_yes_n_no.dissect(buffer, index, packet, parent)

  -- Number Of Legs: Numeric (2)
  index, number_of_legs = box_boxoptions_solaorderentry_sail_v2_25.number_of_legs.dissect(buffer, index, packet, parent)

  -- Repeating: New Complex Order Instrument Occurrence
  for new_complex_order_instrument_occurrence_index = 1, number_of_legs do
    index, new_complex_order_instrument_occurrence = box_boxoptions_solaorderentry_sail_v2_25.new_complex_order_instrument_occurrence.dissect(buffer, index, packet, parent, new_complex_order_instrument_occurrence_index)
  end

  return index
end

-- Dissect: New Complex Order Instrument
box_boxoptions_solaorderentry_sail_v2_25.new_complex_order_instrument.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.new_complex_order_instrument, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.new_complex_order_instrument.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.new_complex_order_instrument.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.new_complex_order_instrument.fields(buffer, offset, packet, parent)
  end
end

-- Order Modification
box_boxoptions_solaorderentry_sail_v2_25.order_modification = {}

-- Size: Order Modification
box_boxoptions_solaorderentry_sail_v2_25.order_modification.size =
  box_boxoptions_solaorderentry_sail_v2_25.group.size + 
  box_boxoptions_solaorderentry_sail_v2_25.instrument.size + 
  box_boxoptions_solaorderentry_sail_v2_25.price_type.size + 
  box_boxoptions_solaorderentry_sail_v2_25.verb_side.size + 
  box_boxoptions_solaorderentry_sail_v2_25.quantity_sign.size + 
  box_boxoptions_solaorderentry_sail_v2_25.quantity.size + 
  box_boxoptions_solaorderentry_sail_v2_25.price.size + 
  box_boxoptions_solaorderentry_sail_v2_25.special_price_term.size + 
  box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_string_1010.size + 
  box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_2_string_11.size + 
  box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_3_string_88.size + 
  box_boxoptions_solaorderentry_sail_v2_25.duration_type.size + 
  box_boxoptions_solaorderentry_sail_v2_25.gtd_date.size + 
  box_boxoptions_solaorderentry_sail_v2_25.firm_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.iml_handling.size + 
  box_boxoptions_solaorderentry_sail_v2_25.modified_order_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.clearing_data.size + 
  box_boxoptions_solaorderentry_sail_v2_25.owner_data.size + 
  box_boxoptions_solaorderentry_sail_v2_25.additional_client_memo.size + 
  box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_4.size

-- Display: Order Modification
box_boxoptions_solaorderentry_sail_v2_25.order_modification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modification
box_boxoptions_solaorderentry_sail_v2_25.order_modification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group: Group ID
  index, group = box_boxoptions_solaorderentry_sail_v2_25.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = box_boxoptions_solaorderentry_sail_v2_25.instrument.dissect(buffer, index, packet, parent)

  -- Price Type: Price Type
  index, price_type = box_boxoptions_solaorderentry_sail_v2_25.price_type.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = box_boxoptions_solaorderentry_sail_v2_25.verb_side.dissect(buffer, index, packet, parent)

  -- Quantity Sign: Quantity Sign
  index, quantity_sign = box_boxoptions_solaorderentry_sail_v2_25.quantity_sign.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity
  index, quantity = box_boxoptions_solaorderentry_sail_v2_25.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = box_boxoptions_solaorderentry_sail_v2_25.price.dissect(buffer, index, packet, parent)

  -- Special Price Term: Special Price Term
  index, special_price_term = box_boxoptions_solaorderentry_sail_v2_25.special_price_term.dissect(buffer, index, packet, parent)

  -- Filler Must Be Blank String 1010: String (10)
  index, filler_must_be_blank_string_1010 = box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_string_1010.dissect(buffer, index, packet, parent)

  -- Filler Must Be Blank 2 String 11: String (1)
  index, filler_must_be_blank_2_string_11 = box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_2_string_11.dissect(buffer, index, packet, parent)

  -- Filler Must Be Blank 3 String 88: String (8)
  index, filler_must_be_blank_3_string_88 = box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_3_string_88.dissect(buffer, index, packet, parent)

  -- Duration Type: Duration Type
  index, duration_type = box_boxoptions_solaorderentry_sail_v2_25.duration_type.dissect(buffer, index, packet, parent)

  -- Gtd Date: Date
  index, gtd_date = box_boxoptions_solaorderentry_sail_v2_25.gtd_date.dissect(buffer, index, packet, parent)

  -- Firm Id: Firm ID
  index, firm_id = box_boxoptions_solaorderentry_sail_v2_25.firm_id.dissect(buffer, index, packet, parent)

  -- Iml Handling: IML Handling
  index, iml_handling = box_boxoptions_solaorderentry_sail_v2_25.iml_handling.dissect(buffer, index, packet, parent)

  -- Modified Order Id: Order ID
  index, modified_order_id = box_boxoptions_solaorderentry_sail_v2_25.modified_order_id.dissect(buffer, index, packet, parent)

  -- Clearing Data: Struct of 5 fields
  index, clearing_data = box_boxoptions_solaorderentry_sail_v2_25.clearing_data.dissect(buffer, index, packet, parent)

  -- Owner Data: Struct of 3 fields
  index, owner_data = box_boxoptions_solaorderentry_sail_v2_25.owner_data.dissect(buffer, index, packet, parent)

  -- Additional Client Memo: Additional Client Memo
  index, additional_client_memo = box_boxoptions_solaorderentry_sail_v2_25.additional_client_memo.dissect(buffer, index, packet, parent)

  -- Filler Must Be Blank 4: String (4)
  index, filler_must_be_blank_4 = box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modification
box_boxoptions_solaorderentry_sail_v2_25.order_modification.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.order_modification, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.order_modification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.order_modification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.order_modification.fields(buffer, offset, packet, parent)
  end
end

-- Improvement Order Entry
box_boxoptions_solaorderentry_sail_v2_25.improvement_order_entry = {}

-- Size: Improvement Order Entry
box_boxoptions_solaorderentry_sail_v2_25.improvement_order_entry.size =
  box_boxoptions_solaorderentry_sail_v2_25.group.size + 
  box_boxoptions_solaorderentry_sail_v2_25.instrument.size + 
  box_boxoptions_solaorderentry_sail_v2_25.verb_side.size + 
  box_boxoptions_solaorderentry_sail_v2_25.quantity_sign.size + 
  box_boxoptions_solaorderentry_sail_v2_25.quantity.size + 
  box_boxoptions_solaorderentry_sail_v2_25.price.size + 
  box_boxoptions_solaorderentry_sail_v2_25.auction_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.filler_string_1717.size + 
  box_boxoptions_solaorderentry_sail_v2_25.clearing_data.size + 
  box_boxoptions_solaorderentry_sail_v2_25.owner_data.size + 
  box_boxoptions_solaorderentry_sail_v2_25.additional_client_memo.size + 
  box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_string_44.size

-- Display: Improvement Order Entry
box_boxoptions_solaorderentry_sail_v2_25.improvement_order_entry.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Improvement Order Entry
box_boxoptions_solaorderentry_sail_v2_25.improvement_order_entry.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group: Group ID
  index, group = box_boxoptions_solaorderentry_sail_v2_25.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = box_boxoptions_solaorderentry_sail_v2_25.instrument.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = box_boxoptions_solaorderentry_sail_v2_25.verb_side.dissect(buffer, index, packet, parent)

  -- Quantity Sign: Quantity Sign
  index, quantity_sign = box_boxoptions_solaorderentry_sail_v2_25.quantity_sign.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity
  index, quantity = box_boxoptions_solaorderentry_sail_v2_25.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = box_boxoptions_solaorderentry_sail_v2_25.price.dissect(buffer, index, packet, parent)

  -- Auction Id: Auction ID
  index, auction_id = box_boxoptions_solaorderentry_sail_v2_25.auction_id.dissect(buffer, index, packet, parent)

  -- Filler String 1717: String (17)
  index, filler_string_1717 = box_boxoptions_solaorderentry_sail_v2_25.filler_string_1717.dissect(buffer, index, packet, parent)

  -- Clearing Data: Struct of 5 fields
  index, clearing_data = box_boxoptions_solaorderentry_sail_v2_25.clearing_data.dissect(buffer, index, packet, parent)

  -- Owner Data: Struct of 3 fields
  index, owner_data = box_boxoptions_solaorderentry_sail_v2_25.owner_data.dissect(buffer, index, packet, parent)

  -- Additional Client Memo: Additional Client Memo
  index, additional_client_memo = box_boxoptions_solaorderentry_sail_v2_25.additional_client_memo.dissect(buffer, index, packet, parent)

  -- Filler Must Be Blank String 44: String (4)
  index, filler_must_be_blank_string_44 = box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_string_44.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Improvement Order Entry
box_boxoptions_solaorderentry_sail_v2_25.improvement_order_entry.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.improvement_order_entry, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.improvement_order_entry.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.improvement_order_entry.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.improvement_order_entry.fields(buffer, offset, packet, parent)
  end
end

-- Order Entry
box_boxoptions_solaorderentry_sail_v2_25.order_entry = {}

-- Size: Order Entry
box_boxoptions_solaorderentry_sail_v2_25.order_entry.size =
  box_boxoptions_solaorderentry_sail_v2_25.group.size + 
  box_boxoptions_solaorderentry_sail_v2_25.instrument.size + 
  box_boxoptions_solaorderentry_sail_v2_25.price_type.size + 
  box_boxoptions_solaorderentry_sail_v2_25.verb_side.size + 
  box_boxoptions_solaorderentry_sail_v2_25.price.size + 
  box_boxoptions_solaorderentry_sail_v2_25.special_price_term.size + 
  box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_string_1010.size + 
  box_boxoptions_solaorderentry_sail_v2_25.quantity_term_quantity_term_1.size + 
  box_boxoptions_solaorderentry_sail_v2_25.additional_quantity_additional_quantity_8.size + 
  box_boxoptions_solaorderentry_sail_v2_25.duration_type.size + 
  box_boxoptions_solaorderentry_sail_v2_25.gtd_date.size + 
  box_boxoptions_solaorderentry_sail_v2_25.executing_participant.size + 
  box_boxoptions_solaorderentry_sail_v2_25.iml_handling.size + 
  box_boxoptions_solaorderentry_sail_v2_25.clearing_data.size + 
  box_boxoptions_solaorderentry_sail_v2_25.owner_data.size + 
  box_boxoptions_solaorderentry_sail_v2_25.additional_client_memo.size + 
  box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_2_string_44.size

-- Display: Order Entry
box_boxoptions_solaorderentry_sail_v2_25.order_entry.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Entry
box_boxoptions_solaorderentry_sail_v2_25.order_entry.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group: Group ID
  index, group = box_boxoptions_solaorderentry_sail_v2_25.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = box_boxoptions_solaorderentry_sail_v2_25.instrument.dissect(buffer, index, packet, parent)

  -- Price Type: Price Type
  index, price_type = box_boxoptions_solaorderentry_sail_v2_25.price_type.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = box_boxoptions_solaorderentry_sail_v2_25.verb_side.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = box_boxoptions_solaorderentry_sail_v2_25.price.dissect(buffer, index, packet, parent)

  -- Special Price Term: Special Price Term
  index, special_price_term = box_boxoptions_solaorderentry_sail_v2_25.special_price_term.dissect(buffer, index, packet, parent)

  -- Filler Must Be Blank String 1010: String (10)
  index, filler_must_be_blank_string_1010 = box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_string_1010.dissect(buffer, index, packet, parent)

  -- Quantity Term Quantity Term 1: Quantity Term
  index, quantity_term_quantity_term_1 = box_boxoptions_solaorderentry_sail_v2_25.quantity_term_quantity_term_1.dissect(buffer, index, packet, parent)

  -- Additional Quantity Additional Quantity 8: Additional Quantity
  index, additional_quantity_additional_quantity_8 = box_boxoptions_solaorderentry_sail_v2_25.additional_quantity_additional_quantity_8.dissect(buffer, index, packet, parent)

  -- Duration Type: Duration Type
  index, duration_type = box_boxoptions_solaorderentry_sail_v2_25.duration_type.dissect(buffer, index, packet, parent)

  -- Gtd Date: Date
  index, gtd_date = box_boxoptions_solaorderentry_sail_v2_25.gtd_date.dissect(buffer, index, packet, parent)

  -- Executing Participant: Firm ID
  index, executing_participant = box_boxoptions_solaorderentry_sail_v2_25.executing_participant.dissect(buffer, index, packet, parent)

  -- Iml Handling: IML Handling
  index, iml_handling = box_boxoptions_solaorderentry_sail_v2_25.iml_handling.dissect(buffer, index, packet, parent)

  -- Clearing Data: Struct of 5 fields
  index, clearing_data = box_boxoptions_solaorderentry_sail_v2_25.clearing_data.dissect(buffer, index, packet, parent)

  -- Owner Data: Struct of 3 fields
  index, owner_data = box_boxoptions_solaorderentry_sail_v2_25.owner_data.dissect(buffer, index, packet, parent)

  -- Additional Client Memo: Additional Client Memo
  index, additional_client_memo = box_boxoptions_solaorderentry_sail_v2_25.additional_client_memo.dissect(buffer, index, packet, parent)

  -- Filler Must Be Blank 2 String 44: String (4)
  index, filler_must_be_blank_2_string_44 = box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_2_string_44.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Entry
box_boxoptions_solaorderentry_sail_v2_25.order_entry.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.order_entry, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.order_entry.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.order_entry.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.order_entry.fields(buffer, offset, packet, parent)
  end
end

-- Owner Data Dealer
box_boxoptions_solaorderentry_sail_v2_25.owner_data_dealer = {}

-- Size: Owner Data Dealer
box_boxoptions_solaorderentry_sail_v2_25.owner_data_dealer.size =
  box_boxoptions_solaorderentry_sail_v2_25.client_order_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.pound_sign.size + 
  box_boxoptions_solaorderentry_sail_v2_25.memo.size

-- Display: Owner Data Dealer
box_boxoptions_solaorderentry_sail_v2_25.owner_data_dealer.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Owner Data Dealer
box_boxoptions_solaorderentry_sail_v2_25.owner_data_dealer.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Order Id: ClientOrderId
  index, client_order_id = box_boxoptions_solaorderentry_sail_v2_25.client_order_id.dissect(buffer, index, packet, parent)

  -- Pound Sign: Pound Sign
  index, pound_sign = box_boxoptions_solaorderentry_sail_v2_25.pound_sign.dissect(buffer, index, packet, parent)

  -- Memo: Memo
  index, memo = box_boxoptions_solaorderentry_sail_v2_25.memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Owner Data Dealer
box_boxoptions_solaorderentry_sail_v2_25.owner_data_dealer.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.owner_data_dealer, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.owner_data_dealer.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.owner_data_dealer.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.owner_data_dealer.fields(buffer, offset, packet, parent)
  end
end

-- Clearing Data Dealer
box_boxoptions_solaorderentry_sail_v2_25.clearing_data_dealer = {}

-- Size: Clearing Data Dealer
box_boxoptions_solaorderentry_sail_v2_25.clearing_data_dealer.size =
  box_boxoptions_solaorderentry_sail_v2_25.clearing_instruction.size + 
  box_boxoptions_solaorderentry_sail_v2_25.account_type.size + 
  box_boxoptions_solaorderentry_sail_v2_25.open_close.size + 
  box_boxoptions_solaorderentry_sail_v2_25.hedge_spec.size + 
  box_boxoptions_solaorderentry_sail_v2_25.clearing_destination.size

-- Display: Clearing Data Dealer
box_boxoptions_solaorderentry_sail_v2_25.clearing_data_dealer.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Clearing Data Dealer
box_boxoptions_solaorderentry_sail_v2_25.clearing_data_dealer.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Clearing Instruction: Clearing Instruction
  index, clearing_instruction = box_boxoptions_solaorderentry_sail_v2_25.clearing_instruction.dissect(buffer, index, packet, parent)

  -- Account Type: AccountType
  index, account_type = box_boxoptions_solaorderentry_sail_v2_25.account_type.dissect(buffer, index, packet, parent)

  -- Open Close: Open/Close
  index, open_close = box_boxoptions_solaorderentry_sail_v2_25.open_close.dissect(buffer, index, packet, parent)

  -- Hedge Spec: Hedge/Spec
  index, hedge_spec = box_boxoptions_solaorderentry_sail_v2_25.hedge_spec.dissect(buffer, index, packet, parent)

  -- Clearing Destination: Firm ID
  index, clearing_destination = box_boxoptions_solaorderentry_sail_v2_25.clearing_destination.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Clearing Data Dealer
box_boxoptions_solaorderentry_sail_v2_25.clearing_data_dealer.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.clearing_data_dealer, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.clearing_data_dealer.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.clearing_data_dealer.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.clearing_data_dealer.fields(buffer, offset, packet, parent)
  end
end

-- Directed Order Acceptation
box_boxoptions_solaorderentry_sail_v2_25.directed_order_acceptation = {}

-- Size: Directed Order Acceptation
box_boxoptions_solaorderentry_sail_v2_25.directed_order_acceptation.size =
  box_boxoptions_solaorderentry_sail_v2_25.group.size + 
  box_boxoptions_solaorderentry_sail_v2_25.instrument.size + 
  box_boxoptions_solaorderentry_sail_v2_25.referenced_order_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.auction_starting_price.size + 
  box_boxoptions_solaorderentry_sail_v2_25.clearing_data_dealer.size + 
  box_boxoptions_solaorderentry_sail_v2_25.owner_data_dealer.size + 
  box_boxoptions_solaorderentry_sail_v2_25.additional_price.size + 
  box_boxoptions_solaorderentry_sail_v2_25.quantity_term_quantity_term_1.size + 
  box_boxoptions_solaorderentry_sail_v2_25.additional_quantity_quantity_8.size + 
  box_boxoptions_solaorderentry_sail_v2_25.additional_client_memo.size

-- Display: Directed Order Acceptation
box_boxoptions_solaorderentry_sail_v2_25.directed_order_acceptation.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Directed Order Acceptation
box_boxoptions_solaorderentry_sail_v2_25.directed_order_acceptation.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group: Group ID
  index, group = box_boxoptions_solaorderentry_sail_v2_25.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = box_boxoptions_solaorderentry_sail_v2_25.instrument.dissect(buffer, index, packet, parent)

  -- Referenced Order Id: Order ID
  index, referenced_order_id = box_boxoptions_solaorderentry_sail_v2_25.referenced_order_id.dissect(buffer, index, packet, parent)

  -- Auction Starting Price: Price
  index, auction_starting_price = box_boxoptions_solaorderentry_sail_v2_25.auction_starting_price.dissect(buffer, index, packet, parent)

  -- Clearing Data Dealer: Struct of 5 fields
  index, clearing_data_dealer = box_boxoptions_solaorderentry_sail_v2_25.clearing_data_dealer.dissect(buffer, index, packet, parent)

  -- Owner Data Dealer: Struct of 3 fields
  index, owner_data_dealer = box_boxoptions_solaorderentry_sail_v2_25.owner_data_dealer.dissect(buffer, index, packet, parent)

  -- Additional Price: Price
  index, additional_price = box_boxoptions_solaorderentry_sail_v2_25.additional_price.dissect(buffer, index, packet, parent)

  -- Quantity Term Quantity Term 1: Quantity Term
  index, quantity_term_quantity_term_1 = box_boxoptions_solaorderentry_sail_v2_25.quantity_term_quantity_term_1.dissect(buffer, index, packet, parent)

  -- Additional Quantity Quantity 8: Quantity
  index, additional_quantity_quantity_8 = box_boxoptions_solaorderentry_sail_v2_25.additional_quantity_quantity_8.dissect(buffer, index, packet, parent)

  -- Additional Client Memo: Additional Client Memo
  index, additional_client_memo = box_boxoptions_solaorderentry_sail_v2_25.additional_client_memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Directed Order Acceptation
box_boxoptions_solaorderentry_sail_v2_25.directed_order_acceptation.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.directed_order_acceptation, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.directed_order_acceptation.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.directed_order_acceptation.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.directed_order_acceptation.fields(buffer, offset, packet, parent)
  end
end

-- Auction Entry
box_boxoptions_solaorderentry_sail_v2_25.auction_entry = {}

-- Size: Auction Entry
box_boxoptions_solaorderentry_sail_v2_25.auction_entry.size =
  box_boxoptions_solaorderentry_sail_v2_25.group.size + 
  box_boxoptions_solaorderentry_sail_v2_25.instrument.size + 
  box_boxoptions_solaorderentry_sail_v2_25.verb_side.size + 
  box_boxoptions_solaorderentry_sail_v2_25.quantity.size + 
  box_boxoptions_solaorderentry_sail_v2_25.price.size + 
  box_boxoptions_solaorderentry_sail_v2_25.buying_clearing_data.size + 
  box_boxoptions_solaorderentry_sail_v2_25.selling_clearing_data.size + 
  box_boxoptions_solaorderentry_sail_v2_25.buying_owner_data.size + 
  box_boxoptions_solaorderentry_sail_v2_25.selling_owner_data.size + 
  box_boxoptions_solaorderentry_sail_v2_25.iml_handling.size + 
  box_boxoptions_solaorderentry_sail_v2_25.special_price_term.size + 
  box_boxoptions_solaorderentry_sail_v2_25.additional_price.size + 
  box_boxoptions_solaorderentry_sail_v2_25.quantity_term_quantity_term_1.size + 
  box_boxoptions_solaorderentry_sail_v2_25.additional_quantity_additional_quantity_8.size + 
  box_boxoptions_solaorderentry_sail_v2_25.buying_additional_client_memo.size + 
  box_boxoptions_solaorderentry_sail_v2_25.selling_additional_client_memo.size + 
  box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_string_44.size

-- Display: Auction Entry
box_boxoptions_solaorderentry_sail_v2_25.auction_entry.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Entry
box_boxoptions_solaorderentry_sail_v2_25.auction_entry.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group: Group ID
  index, group = box_boxoptions_solaorderentry_sail_v2_25.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = box_boxoptions_solaorderentry_sail_v2_25.instrument.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = box_boxoptions_solaorderentry_sail_v2_25.verb_side.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity
  index, quantity = box_boxoptions_solaorderentry_sail_v2_25.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = box_boxoptions_solaorderentry_sail_v2_25.price.dissect(buffer, index, packet, parent)

  -- Buying Clearing Data: Struct of 5 fields
  index, buying_clearing_data = box_boxoptions_solaorderentry_sail_v2_25.buying_clearing_data.dissect(buffer, index, packet, parent)

  -- Selling Clearing Data: Struct of 5 fields
  index, selling_clearing_data = box_boxoptions_solaorderentry_sail_v2_25.selling_clearing_data.dissect(buffer, index, packet, parent)

  -- Buying Owner Data: Struct of 3 fields
  index, buying_owner_data = box_boxoptions_solaorderentry_sail_v2_25.buying_owner_data.dissect(buffer, index, packet, parent)

  -- Selling Owner Data: Struct of 3 fields
  index, selling_owner_data = box_boxoptions_solaorderentry_sail_v2_25.selling_owner_data.dissect(buffer, index, packet, parent)

  -- Iml Handling: IML Handling
  index, iml_handling = box_boxoptions_solaorderentry_sail_v2_25.iml_handling.dissect(buffer, index, packet, parent)

  -- Special Price Term: Special Price Term
  index, special_price_term = box_boxoptions_solaorderentry_sail_v2_25.special_price_term.dissect(buffer, index, packet, parent)

  -- Additional Price: Price
  index, additional_price = box_boxoptions_solaorderentry_sail_v2_25.additional_price.dissect(buffer, index, packet, parent)

  -- Quantity Term Quantity Term 1: Quantity Term
  index, quantity_term_quantity_term_1 = box_boxoptions_solaorderentry_sail_v2_25.quantity_term_quantity_term_1.dissect(buffer, index, packet, parent)

  -- Additional Quantity Additional Quantity 8: Additional Quantity
  index, additional_quantity_additional_quantity_8 = box_boxoptions_solaorderentry_sail_v2_25.additional_quantity_additional_quantity_8.dissect(buffer, index, packet, parent)

  -- Buying Additional Client Memo: Additional Client Memo
  index, buying_additional_client_memo = box_boxoptions_solaorderentry_sail_v2_25.buying_additional_client_memo.dissect(buffer, index, packet, parent)

  -- Selling Additional Client Memo: Additional Client Memo
  index, selling_additional_client_memo = box_boxoptions_solaorderentry_sail_v2_25.selling_additional_client_memo.dissect(buffer, index, packet, parent)

  -- Filler Must Be Blank String 44: String (4)
  index, filler_must_be_blank_string_44 = box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_string_44.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Entry
box_boxoptions_solaorderentry_sail_v2_25.auction_entry.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.auction_entry, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.auction_entry.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.auction_entry.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.auction_entry.fields(buffer, offset, packet, parent)
  end
end

-- Directed Routed Order Rejection And Quote
box_boxoptions_solaorderentry_sail_v2_25.directed_routed_order_rejection_and_quote = {}

-- Size: Directed Routed Order Rejection And Quote
box_boxoptions_solaorderentry_sail_v2_25.directed_routed_order_rejection_and_quote.size =
  box_boxoptions_solaorderentry_sail_v2_25.group.size + 
  box_boxoptions_solaorderentry_sail_v2_25.instrument.size + 
  box_boxoptions_solaorderentry_sail_v2_25.trader_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.order_id_order_id_8.size + 
  box_boxoptions_solaorderentry_sail_v2_25.rejection_code.size + 
  box_boxoptions_solaorderentry_sail_v2_25.quote_quantity.size + 
  box_boxoptions_solaorderentry_sail_v2_25.quote_price.size

-- Display: Directed Routed Order Rejection And Quote
box_boxoptions_solaorderentry_sail_v2_25.directed_routed_order_rejection_and_quote.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Directed Routed Order Rejection And Quote
box_boxoptions_solaorderentry_sail_v2_25.directed_routed_order_rejection_and_quote.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group: Group ID
  index, group = box_boxoptions_solaorderentry_sail_v2_25.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = box_boxoptions_solaorderentry_sail_v2_25.instrument.dissect(buffer, index, packet, parent)

  -- Trader Id: Trader ID
  index, trader_id = box_boxoptions_solaorderentry_sail_v2_25.trader_id.dissect(buffer, index, packet, parent)

  -- Order Id Order Id 8: Order ID
  index, order_id_order_id_8 = box_boxoptions_solaorderentry_sail_v2_25.order_id_order_id_8.dissect(buffer, index, packet, parent)

  -- Rejection Code: Rejection Code
  index, rejection_code = box_boxoptions_solaorderentry_sail_v2_25.rejection_code.dissect(buffer, index, packet, parent)

  -- Quote Quantity: Quantity
  index, quote_quantity = box_boxoptions_solaorderentry_sail_v2_25.quote_quantity.dissect(buffer, index, packet, parent)

  -- Quote Price: Price
  index, quote_price = box_boxoptions_solaorderentry_sail_v2_25.quote_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Directed Routed Order Rejection And Quote
box_boxoptions_solaorderentry_sail_v2_25.directed_routed_order_rejection_and_quote.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.directed_routed_order_rejection_and_quote, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.directed_routed_order_rejection_and_quote.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.directed_routed_order_rejection_and_quote.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.directed_routed_order_rejection_and_quote.fields(buffer, offset, packet, parent)
  end
end

-- User Global Cancellation
box_boxoptions_solaorderentry_sail_v2_25.user_global_cancellation = {}

-- Size: User Global Cancellation
box_boxoptions_solaorderentry_sail_v2_25.user_global_cancellation.size =
  box_boxoptions_solaorderentry_sail_v2_25.group.size + 
  box_boxoptions_solaorderentry_sail_v2_25.instrument.size + 
  box_boxoptions_solaorderentry_sail_v2_25.type_of_cancellation.size + 
  box_boxoptions_solaorderentry_sail_v2_25.account_type_filter.size + 
  box_boxoptions_solaorderentry_sail_v2_25.mm_cat_user_time.size

-- Display: User Global Cancellation
box_boxoptions_solaorderentry_sail_v2_25.user_global_cancellation.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: User Global Cancellation
box_boxoptions_solaorderentry_sail_v2_25.user_global_cancellation.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group: Group ID
  index, group = box_boxoptions_solaorderentry_sail_v2_25.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = box_boxoptions_solaorderentry_sail_v2_25.instrument.dissect(buffer, index, packet, parent)

  -- Type Of Cancellation: CancellationType
  index, type_of_cancellation = box_boxoptions_solaorderentry_sail_v2_25.type_of_cancellation.dissect(buffer, index, packet, parent)

  -- Account Type Filter: String (8)
  index, account_type_filter = box_boxoptions_solaorderentry_sail_v2_25.account_type_filter.dissect(buffer, index, packet, parent)

  -- Mm Cat User Time: MM CAT UserTime
  index, mm_cat_user_time = box_boxoptions_solaorderentry_sail_v2_25.mm_cat_user_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: User Global Cancellation
box_boxoptions_solaorderentry_sail_v2_25.user_global_cancellation.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.user_global_cancellation, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.user_global_cancellation.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.user_global_cancellation.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.user_global_cancellation.fields(buffer, offset, packet, parent)
  end
end

-- Global Cancellation
box_boxoptions_solaorderentry_sail_v2_25.global_cancellation = {}

-- Size: Global Cancellation
box_boxoptions_solaorderentry_sail_v2_25.global_cancellation.size =
  box_boxoptions_solaorderentry_sail_v2_25.group.size + 
  box_boxoptions_solaorderentry_sail_v2_25.type_of_cancellation_q_quotes_only.size + 
  box_boxoptions_solaorderentry_sail_v2_25.mm_cat_user_time.size

-- Display: Global Cancellation
box_boxoptions_solaorderentry_sail_v2_25.global_cancellation.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Global Cancellation
box_boxoptions_solaorderentry_sail_v2_25.global_cancellation.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group: Group ID
  index, group = box_boxoptions_solaorderentry_sail_v2_25.group.dissect(buffer, index, packet, parent)

  -- Type Of Cancellation Q Quotes Only: CancellationType
  index, type_of_cancellation_q_quotes_only = box_boxoptions_solaorderentry_sail_v2_25.type_of_cancellation_q_quotes_only.dissect(buffer, index, packet, parent)

  -- Mm Cat User Time: MM CAT UserTime
  index, mm_cat_user_time = box_boxoptions_solaorderentry_sail_v2_25.mm_cat_user_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Global Cancellation
box_boxoptions_solaorderentry_sail_v2_25.global_cancellation.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.global_cancellation, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.global_cancellation.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.global_cancellation.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.global_cancellation.fields(buffer, offset, packet, parent)
  end
end

-- Bulk Quote Data
box_boxoptions_solaorderentry_sail_v2_25.bulk_quote_data = {}

-- Size: Bulk Quote Data
box_boxoptions_solaorderentry_sail_v2_25.bulk_quote_data.size =
  box_boxoptions_solaorderentry_sail_v2_25.group.size + 
  box_boxoptions_solaorderentry_sail_v2_25.clearing_data.size + 
  box_boxoptions_solaorderentry_sail_v2_25.owner_data.size + 
  box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_string_22.size + 
  box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_2_string_88.size + 
  box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_3_string_22.size + 
  box_boxoptions_solaorderentry_sail_v2_25.calculation_time_interval.size + 
  box_boxoptions_solaorderentry_sail_v2_25.maximum_total_volume.size + 
  box_boxoptions_solaorderentry_sail_v2_25.maximum_total_value.size + 
  box_boxoptions_solaorderentry_sail_v2_25.maximum_delta_volume.size + 
  box_boxoptions_solaorderentry_sail_v2_25.maximum_delta_value.size + 
  box_boxoptions_solaorderentry_sail_v2_25.percent_of_quote.size

-- Display: Bulk Quote Data
box_boxoptions_solaorderentry_sail_v2_25.bulk_quote_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote Data
box_boxoptions_solaorderentry_sail_v2_25.bulk_quote_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group: Group ID
  index, group = box_boxoptions_solaorderentry_sail_v2_25.group.dissect(buffer, index, packet, parent)

  -- Clearing Data: Struct of 5 fields
  index, clearing_data = box_boxoptions_solaorderentry_sail_v2_25.clearing_data.dissect(buffer, index, packet, parent)

  -- Owner Data: Struct of 3 fields
  index, owner_data = box_boxoptions_solaorderentry_sail_v2_25.owner_data.dissect(buffer, index, packet, parent)

  -- Filler Must Be Blank String 22: String (2)
  index, filler_must_be_blank_string_22 = box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_string_22.dissect(buffer, index, packet, parent)

  -- Filler Must Be Blank 2 String 88: String (8)
  index, filler_must_be_blank_2_string_88 = box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_2_string_88.dissect(buffer, index, packet, parent)

  -- Filler Must Be Blank 3 String 22: String (2)
  index, filler_must_be_blank_3_string_22 = box_boxoptions_solaorderentry_sail_v2_25.filler_must_be_blank_3_string_22.dissect(buffer, index, packet, parent)

  -- Calculation Time Interval: Calculation Time Interval
  index, calculation_time_interval = box_boxoptions_solaorderentry_sail_v2_25.calculation_time_interval.dissect(buffer, index, packet, parent)

  -- Maximum Total Volume: Numeric (8)
  index, maximum_total_volume = box_boxoptions_solaorderentry_sail_v2_25.maximum_total_volume.dissect(buffer, index, packet, parent)

  -- Maximum Total Value: Numeric (8)
  index, maximum_total_value = box_boxoptions_solaorderentry_sail_v2_25.maximum_total_value.dissect(buffer, index, packet, parent)

  -- Maximum Delta Volume: Numeric (8)
  index, maximum_delta_volume = box_boxoptions_solaorderentry_sail_v2_25.maximum_delta_volume.dissect(buffer, index, packet, parent)

  -- Maximum Delta Value: Numeric (8)
  index, maximum_delta_value = box_boxoptions_solaorderentry_sail_v2_25.maximum_delta_value.dissect(buffer, index, packet, parent)

  -- Percent Of Quote: Numeric (8)
  index, percent_of_quote = box_boxoptions_solaorderentry_sail_v2_25.percent_of_quote.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bulk Quote Data
box_boxoptions_solaorderentry_sail_v2_25.bulk_quote_data.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.bulk_quote_data, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.bulk_quote_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.bulk_quote_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.bulk_quote_data.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Response
box_boxoptions_solaorderentry_sail_v2_25.heartbeat_response = {}

-- Size: Heartbeat Response
box_boxoptions_solaorderentry_sail_v2_25.heartbeat_response.size =
  box_boxoptions_solaorderentry_sail_v2_25.user_sequence_id_first_user_sequence_id_for_nextcurrent_heartbeat_period.size + 
  box_boxoptions_solaorderentry_sail_v2_25.last_exchange_message_id_sent_to_participant.size + 
  box_boxoptions_solaorderentry_sail_v2_25.time_local.size

-- Display: Heartbeat Response
box_boxoptions_solaorderentry_sail_v2_25.heartbeat_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Response
box_boxoptions_solaorderentry_sail_v2_25.heartbeat_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Sequence Id First User Sequence Id For Nextcurrent Heartbeat Period: User Sequence ID
  index, user_sequence_id_first_user_sequence_id_for_nextcurrent_heartbeat_period = box_boxoptions_solaorderentry_sail_v2_25.user_sequence_id_first_user_sequence_id_for_nextcurrent_heartbeat_period.dissect(buffer, index, packet, parent)

  -- Last Exchange Message Id Sent To Participant: Exchange Message ID
  index, last_exchange_message_id_sent_to_participant = box_boxoptions_solaorderentry_sail_v2_25.last_exchange_message_id_sent_to_participant.dissect(buffer, index, packet, parent)

  -- Time Local: Time
  index, time_local = box_boxoptions_solaorderentry_sail_v2_25.time_local.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Response
box_boxoptions_solaorderentry_sail_v2_25.heartbeat_response.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.heartbeat_response, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.heartbeat_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.heartbeat_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.heartbeat_response.fields(buffer, offset, packet, parent)
  end
end

-- Disconnection Instruction Occurrence
box_boxoptions_solaorderentry_sail_v2_25.disconnection_instruction_occurrence = {}

-- Size: Disconnection Instruction Occurrence
box_boxoptions_solaorderentry_sail_v2_25.disconnection_instruction_occurrence.size =
  box_boxoptions_solaorderentry_sail_v2_25.trader_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.disconnection_instruction_note_cancel_quotes_only_q_quotes_only.size + 
  box_boxoptions_solaorderentry_sail_v2_25.active_y_on_n_off.size

-- Display: Disconnection Instruction Occurrence
box_boxoptions_solaorderentry_sail_v2_25.disconnection_instruction_occurrence.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Disconnection Instruction Occurrence
box_boxoptions_solaorderentry_sail_v2_25.disconnection_instruction_occurrence.fields = function(buffer, offset, packet, parent, disconnection_instruction_occurrence_index)
  local index = offset

  -- Implicit Disconnection Instruction Occurrence Index
  if disconnection_instruction_occurrence_index ~= nil and show.indexes then
    local iteration = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.disconnection_instruction_occurrence_index, disconnection_instruction_occurrence_index)
    iteration:set_generated()
  end

  -- Trader Id: Trader ID
  index, trader_id = box_boxoptions_solaorderentry_sail_v2_25.trader_id.dissect(buffer, index, packet, parent)

  -- Disconnection Instruction Note Cancel Quotes Only Q Quotes Only: CancellationType
  index, disconnection_instruction_note_cancel_quotes_only_q_quotes_only = box_boxoptions_solaorderentry_sail_v2_25.disconnection_instruction_note_cancel_quotes_only_q_quotes_only.dissect(buffer, index, packet, parent)

  -- Active Y On N Off: YesNoFlag
  index, active_y_on_n_off = box_boxoptions_solaorderentry_sail_v2_25.active_y_on_n_off.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Disconnection Instruction Occurrence
box_boxoptions_solaorderentry_sail_v2_25.disconnection_instruction_occurrence.dissect = function(buffer, offset, packet, parent, disconnection_instruction_occurrence_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.disconnection_instruction_occurrence, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.disconnection_instruction_occurrence.fields(buffer, offset, packet, parent, disconnection_instruction_occurrence_index)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.disconnection_instruction_occurrence.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.disconnection_instruction_occurrence.fields(buffer, offset, packet, parent, disconnection_instruction_occurrence_index)
  end
end

-- Disconnection Instruction
box_boxoptions_solaorderentry_sail_v2_25.disconnection_instruction = {}

-- Calculate size of: Disconnection Instruction
box_boxoptions_solaorderentry_sail_v2_25.disconnection_instruction.size = function(buffer, offset)
  local index = 0

  index = index + box_boxoptions_solaorderentry_sail_v2_25.number_of_instructions_present_in_the_message.size

  -- Calculate field size from count
  local disconnection_instruction_occurrence_count = buffer(offset + index - 2, 2):string()
  index = index + disconnection_instruction_occurrence_count * 10

  return index
end

-- Display: Disconnection Instruction
box_boxoptions_solaorderentry_sail_v2_25.disconnection_instruction.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Disconnection Instruction
box_boxoptions_solaorderentry_sail_v2_25.disconnection_instruction.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Instructions Present In The Message: Numeric (2)
  index, number_of_instructions_present_in_the_message = box_boxoptions_solaorderentry_sail_v2_25.number_of_instructions_present_in_the_message.dissect(buffer, index, packet, parent)

  -- Repeating: Disconnection Instruction Occurrence
  for disconnection_instruction_occurrence_index = 1, number_of_instructions_present_in_the_message do
    index, disconnection_instruction_occurrence = box_boxoptions_solaorderentry_sail_v2_25.disconnection_instruction_occurrence.dissect(buffer, index, packet, parent, disconnection_instruction_occurrence_index)
  end

  return index
end

-- Dissect: Disconnection Instruction
box_boxoptions_solaorderentry_sail_v2_25.disconnection_instruction.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.disconnection_instruction, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.disconnection_instruction.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.disconnection_instruction.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.disconnection_instruction.fields(buffer, offset, packet, parent)
  end
end

-- User Disconnection
box_boxoptions_solaorderentry_sail_v2_25.user_disconnection = {}

-- Size: User Disconnection
box_boxoptions_solaorderentry_sail_v2_25.user_disconnection.size =
  box_boxoptions_solaorderentry_sail_v2_25.user_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.session_id.size

-- Display: User Disconnection
box_boxoptions_solaorderentry_sail_v2_25.user_disconnection.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: User Disconnection
box_boxoptions_solaorderentry_sail_v2_25.user_disconnection.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: User ID
  index, user_id = box_boxoptions_solaorderentry_sail_v2_25.user_id.dissect(buffer, index, packet, parent)

  -- Session Id: Session ID
  index, session_id = box_boxoptions_solaorderentry_sail_v2_25.session_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: User Disconnection
box_boxoptions_solaorderentry_sail_v2_25.user_disconnection.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.user_disconnection, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.user_disconnection.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.user_disconnection.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.user_disconnection.fields(buffer, offset, packet, parent)
  end
end

-- User Connection Occurrence
box_boxoptions_solaorderentry_sail_v2_25.user_connection_occurrence = {}

-- Size: User Connection Occurrence
box_boxoptions_solaorderentry_sail_v2_25.user_connection_occurrence.size =
  box_boxoptions_solaorderentry_sail_v2_25.message_types_to_be_received.size

-- Display: User Connection Occurrence
box_boxoptions_solaorderentry_sail_v2_25.user_connection_occurrence.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: User Connection Occurrence
box_boxoptions_solaorderentry_sail_v2_25.user_connection_occurrence.fields = function(buffer, offset, packet, parent, user_connection_occurrence_index)
  local index = offset

  -- Implicit User Connection Occurrence Index
  if user_connection_occurrence_index ~= nil and show.indexes then
    local iteration = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.user_connection_occurrence_index, user_connection_occurrence_index)
    iteration:set_generated()
  end

  -- Message Types To Be Received: Message Type
  index, message_types_to_be_received = box_boxoptions_solaorderentry_sail_v2_25.message_types_to_be_received.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: User Connection Occurrence
box_boxoptions_solaorderentry_sail_v2_25.user_connection_occurrence.dissect = function(buffer, offset, packet, parent, user_connection_occurrence_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.user_connection_occurrence, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.user_connection_occurrence.fields(buffer, offset, packet, parent, user_connection_occurrence_index)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.user_connection_occurrence.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.user_connection_occurrence.fields(buffer, offset, packet, parent, user_connection_occurrence_index)
  end
end

-- User Connection
box_boxoptions_solaorderentry_sail_v2_25.user_connection = {}

-- Calculate size of: User Connection
box_boxoptions_solaorderentry_sail_v2_25.user_connection.size = function(buffer, offset)
  local index = 0

  index = index + box_boxoptions_solaorderentry_sail_v2_25.protocol_version.size

  index = index + box_boxoptions_solaorderentry_sail_v2_25.user_id.size

  index = index + box_boxoptions_solaorderentry_sail_v2_25.password_md_5_encryption.size

  index = index + box_boxoptions_solaorderentry_sail_v2_25.session_id.size

  index = index + box_boxoptions_solaorderentry_sail_v2_25.time_hhmmss.size

  index = index + box_boxoptions_solaorderentry_sail_v2_25.exchange_message_id.size

  index = index + box_boxoptions_solaorderentry_sail_v2_25.inactivity_interval.size

  index = index + box_boxoptions_solaorderentry_sail_v2_25.number_of_message_types_to_be_received.size

  -- Calculate field size from count
  local user_connection_occurrence_count = buffer(offset + index - 2, 2):string()
  index = index + user_connection_occurrence_count * 2

  return index
end

-- Display: User Connection
box_boxoptions_solaorderentry_sail_v2_25.user_connection.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: User Connection
box_boxoptions_solaorderentry_sail_v2_25.user_connection.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Protocol Version: Protocol
  index, protocol_version = box_boxoptions_solaorderentry_sail_v2_25.protocol_version.dissect(buffer, index, packet, parent)

  -- User Id: User ID
  index, user_id = box_boxoptions_solaorderentry_sail_v2_25.user_id.dissect(buffer, index, packet, parent)

  -- Password Md 5 Encryption: Password
  index, password_md_5_encryption = box_boxoptions_solaorderentry_sail_v2_25.password_md_5_encryption.dissect(buffer, index, packet, parent)

  -- Session Id: Session ID
  index, session_id = box_boxoptions_solaorderentry_sail_v2_25.session_id.dissect(buffer, index, packet, parent)

  -- Time Hhmmss: Time
  index, time_hhmmss = box_boxoptions_solaorderentry_sail_v2_25.time_hhmmss.dissect(buffer, index, packet, parent)

  -- Exchange Message Id: Exchange Message ID
  index, exchange_message_id = box_boxoptions_solaorderentry_sail_v2_25.exchange_message_id.dissect(buffer, index, packet, parent)

  -- Inactivity Interval: Inactivity Interval
  index, inactivity_interval = box_boxoptions_solaorderentry_sail_v2_25.inactivity_interval.dissect(buffer, index, packet, parent)

  -- Number Of Message Types To Be Received: Numeric (2)
  index, number_of_message_types_to_be_received = box_boxoptions_solaorderentry_sail_v2_25.number_of_message_types_to_be_received.dissect(buffer, index, packet, parent)

  -- Repeating: User Connection Occurrence
  for user_connection_occurrence_index = 1, number_of_message_types_to_be_received do
    index, user_connection_occurrence = box_boxoptions_solaorderentry_sail_v2_25.user_connection_occurrence.dissect(buffer, index, packet, parent, user_connection_occurrence_index)
  end

  return index
end

-- Dissect: User Connection
box_boxoptions_solaorderentry_sail_v2_25.user_connection.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.user_connection, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.user_connection.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.user_connection.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.user_connection.fields(buffer, offset, packet, parent)
  end
end

-- Firm Message
box_boxoptions_solaorderentry_sail_v2_25.firm_message = {}

-- Dissect: Firm Message
box_boxoptions_solaorderentry_sail_v2_25.firm_message.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect User Connection
  if message_type == "TC" then
    return box_boxoptions_solaorderentry_sail_v2_25.user_connection.dissect(buffer, offset, packet, parent)
  end
  -- Dissect User Disconnection
  if message_type == "TD" then
    return box_boxoptions_solaorderentry_sail_v2_25.user_disconnection.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Disconnection Instruction
  if message_type == "TA" then
    return box_boxoptions_solaorderentry_sail_v2_25.disconnection_instruction.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Response
  if message_type == "TI" then
    return box_boxoptions_solaorderentry_sail_v2_25.heartbeat_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bulk Quote Data
  if message_type == "BD" then
    return box_boxoptions_solaorderentry_sail_v2_25.bulk_quote_data.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Global Cancellation
  if message_type == "GC" then
    return box_boxoptions_solaorderentry_sail_v2_25.global_cancellation.dissect(buffer, offset, packet, parent)
  end
  -- Dissect User Global Cancellation
  if message_type == "GZ" then
    return box_boxoptions_solaorderentry_sail_v2_25.user_global_cancellation.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Directed Routed Order Rejection And Quote
  if message_type == "KQ" then
    return box_boxoptions_solaorderentry_sail_v2_25.directed_routed_order_rejection_and_quote.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Entry
  if message_type == "OA" then
    return box_boxoptions_solaorderentry_sail_v2_25.auction_entry.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Directed Order Acceptation
  if message_type == "OD" then
    return box_boxoptions_solaorderentry_sail_v2_25.directed_order_acceptation.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Entry
  if message_type == "OE" then
    return box_boxoptions_solaorderentry_sail_v2_25.order_entry.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Improvement Order Entry
  if message_type == "OI" then
    return box_boxoptions_solaorderentry_sail_v2_25.improvement_order_entry.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Modification
  if message_type == "OM" then
    return box_boxoptions_solaorderentry_sail_v2_25.order_modification.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Complex Order Instrument
  if message_type == "ON" then
    return box_boxoptions_solaorderentry_sail_v2_25.new_complex_order_instrument.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Order Auction Entry
  if message_type == "OT" then
    return box_boxoptions_solaorderentry_sail_v2_25.complex_order_auction_entry.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bulk Quote
  if message_type == "Q<i>" then
    return box_boxoptions_solaorderentry_sail_v2_25.bulk_quote.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Executing Participant Connection
  if message_type == "RE" then
    return box_boxoptions_solaorderentry_sail_v2_25.executing_participant_connection.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Executing Participant Disconnection
  if message_type == "RF" then
    return box_boxoptions_solaorderentry_sail_v2_25.executing_participant_disconnection.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Maker Protection Subscription
  if message_type == "RP" then
    return box_boxoptions_solaorderentry_sail_v2_25.market_maker_protection_subscription.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Request For Quote
  if message_type == "RQ" then
    return box_boxoptions_solaorderentry_sail_v2_25.request_for_quote.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancellation
  if message_type == "XE" then
    return box_boxoptions_solaorderentry_sail_v2_25.order_cancellation.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Improvement Order Cancellation
  if message_type == "XI" then
    return box_boxoptions_solaorderentry_sail_v2_25.improvement_order_cancellation.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Incoming Header
box_boxoptions_solaorderentry_sail_v2_25.incoming_header = {}

-- Size: Incoming Header
box_boxoptions_solaorderentry_sail_v2_25.incoming_header.size =
  box_boxoptions_solaorderentry_sail_v2_25.message_type.size + 
  box_boxoptions_solaorderentry_sail_v2_25.user_time.size + 
  box_boxoptions_solaorderentry_sail_v2_25.trader_id.size + 
  box_boxoptions_solaorderentry_sail_v2_25.user_sequence_id.size

-- Display: Incoming Header
box_boxoptions_solaorderentry_sail_v2_25.incoming_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Incoming Header
box_boxoptions_solaorderentry_sail_v2_25.incoming_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: X
  index, message_type = box_boxoptions_solaorderentry_sail_v2_25.message_type.dissect(buffer, index, packet, parent)

  -- User Time: N
  index, user_time = box_boxoptions_solaorderentry_sail_v2_25.user_time.dissect(buffer, index, packet, parent)

  -- Trader Id: Trader ID
  index, trader_id = box_boxoptions_solaorderentry_sail_v2_25.trader_id.dissect(buffer, index, packet, parent)

  -- User Sequence ID: N
  index, user_sequence_id = box_boxoptions_solaorderentry_sail_v2_25.user_sequence_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Incoming Header
box_boxoptions_solaorderentry_sail_v2_25.incoming_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25.fields.incoming_header, buffer(offset, 0))
    local index = box_boxoptions_solaorderentry_sail_v2_25.incoming_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solaorderentry_sail_v2_25.incoming_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solaorderentry_sail_v2_25.incoming_header.fields(buffer, offset, packet, parent)
  end
end

-- Firm Packet
box_boxoptions_solaorderentry_sail_v2_25.firm_packet = {}

-- Verify required size of Tcp packet
box_boxoptions_solaorderentry_sail_v2_25.firm_packet.requiredsize = function(buffer)
  return buffer:len() >= box_boxoptions_solaorderentry_sail_v2_25.message_length.size + box_boxoptions_solaorderentry_sail_v2_25.incoming_header.size
end

-- Dissect Firm Packet
box_boxoptions_solaorderentry_sail_v2_25.firm_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Message Length: Endian
  index, message_length = box_boxoptions_solaorderentry_sail_v2_25.message_length.dissect(buffer, index, packet, parent)

  -- Incoming Header: Struct of 4 fields
  index, incoming_header = box_boxoptions_solaorderentry_sail_v2_25.incoming_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 24, 2):string()

  -- Firm Message: Runtime Type with 22 branches
  index = box_boxoptions_solaorderentry_sail_v2_25.firm_message.dissect(buffer, index, packet, parent, message_type)

  -- End Of Text: Binary
  index, end_of_text = box_boxoptions_solaorderentry_sail_v2_25.end_of_text.dissect(buffer, index, packet, parent)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_box_boxoptions_solaorderentry_sail_v2_25.init()
end

-- Connection roles for Box BoxOptions SolaOrderEntry Sail 2.25: Client is the initiator, Server is the acceptor
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
box_boxoptions_solaorderentry_sail_v2_25.role = function(packet)
  if omi_box_boxoptions_solaorderentry_sail_v2_25.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_box_boxoptions_solaorderentry_sail_v2_25.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_box_boxoptions_solaorderentry_sail_v2_25.prefs.acceptor_port

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

  if omi_box_boxoptions_solaorderentry_sail_v2_25.prefs.swap_sides then
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
box_boxoptions_solaorderentry_sail_v2_25.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Box BoxOptions SolaOrderEntry Sail 2.25
function omi_box_boxoptions_solaorderentry_sail_v2_25.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_box_boxoptions_solaorderentry_sail_v2_25.name

  -- Dissect protocol
  local protocol = parent:add(omi_box_boxoptions_solaorderentry_sail_v2_25, buffer(), omi_box_boxoptions_solaorderentry_sail_v2_25.description, "("..buffer:len().." Bytes)")

  local role = box_boxoptions_solaorderentry_sail_v2_25.role(packet)

  if role == "initiator" then
    return box_boxoptions_solaorderentry_sail_v2_25.firm_packet.dissect(buffer, packet, protocol)
  end

  return box_boxoptions_solaorderentry_sail_v2_25.exchange_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Firm Packet: would its message dispatch accept this frame?
box_boxoptions_solaorderentry_sail_v2_25.firm_packet.fingerprint = function(buffer)
  if buffer:len() < 6 then
    return false
  end

  local message_type = buffer(4, 2):string()

  -- User Connection
  if message_type == "TC" then
    return true
  end

  -- User Disconnection
  if message_type == "TD" then
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

  -- Bulk Quote Data
  if message_type == "BD" then
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

  -- Directed Routed Order Rejection And Quote
  if message_type == "KQ" then
    return true
  end

  -- Auction Entry
  if message_type == "OA" then
    return true
  end

  -- Directed Order Acceptation
  if message_type == "OD" then
    return true
  end

  -- Order Entry
  if message_type == "OE" then
    return true
  end

  -- Improvement Order Entry
  if message_type == "OI" then
    return true
  end

  -- Order Modification
  if message_type == "OM" then
    return true
  end

  -- New Complex Order Instrument
  if message_type == "ON" then
    return true
  end

  -- Complex Order Auction Entry
  if message_type == "OT" then
    return true
  end

  -- Bulk Quote
  if message_type == "Q<i>" then
    return true
  end

  -- Executing Participant Connection
  if message_type == "RE" then
    return true
  end

  -- Executing Participant Disconnection
  if message_type == "RF" then
    return true
  end

  -- Market Maker Protection Subscription
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

  -- Improvement Order Cancellation
  if message_type == "XI" then
    return true
  end

  return false
end

-- Fingerprint of Exchange Packet: would its message dispatch accept this frame?
box_boxoptions_solaorderentry_sail_v2_25.exchange_packet.fingerprint = function(buffer)
  if buffer:len() < 6 then
    return false
  end

  local message_type = buffer(4, 2):string()

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

  -- Disconnection Instruction Acknowledgement
  if message_type == "TM" then
    return true
  end

  -- Connection Acknowledgement
  if message_type == "TK" then
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

  -- Improvement Order Acknowlegment
  if message_type == "KI" then
    return true
  end

  -- Order Modification Acknowledgement
  if message_type == "KM" then
    return true
  end

  -- New Complex Order Instrument Acknowledgement
  if message_type == "KN" then
    return true
  end

  -- Standard Acknowledgement
  if message_type == "KO" then
    return true
  end

  -- Complex Order Auction Acknowledgement
  if message_type == "KT" then
    return true
  end

  -- Auction Or Improvement Cancellation Acknowledgement
  if message_type == "KY" then
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

  -- Trader Status
  if message_type == "MU" then
    return true
  end

  -- Directed Order Cancellation Notice
  if message_type == "NC" then
    return true
  end

  -- Directed Order Notice
  if message_type == "ND" then
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

  -- Leg Execution Notice
  if message_type == "NL" then
    return true
  end

  -- Cancellation Of All Quotes Notices
  if message_type == "NP" then
    return true
  end

  -- Quality Market Maker Notification
  if message_type == "NQ" then
    return true
  end

  -- Execution Notice
  if message_type == "NT" then
    return true
  end

  -- Quote Notice
  if message_type == "NU" then
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

  -- Order Cancellation Notice By System
  if message_type == "NZ" then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Box BoxOptions SolaOrderEntry Sail 2.25 (Tcp)
local function omi_box_boxoptions_solaorderentry_sail_v2_25_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not box_boxoptions_solaorderentry_sail_v2_25.firm_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not box_boxoptions_solaorderentry_sail_v2_25.firm_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_box_boxoptions_solaorderentry_sail_v2_25
  omi_box_boxoptions_solaorderentry_sail_v2_25.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Box BoxOptions SolaOrderEntry Sail 2.25 (Tcp)
local function omi_box_boxoptions_solaorderentry_sail_v2_25_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not box_boxoptions_solaorderentry_sail_v2_25.exchange_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not box_boxoptions_solaorderentry_sail_v2_25.exchange_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_box_boxoptions_solaorderentry_sail_v2_25
  omi_box_boxoptions_solaorderentry_sail_v2_25.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Box BoxOptions SolaOrderEntry Sail 2.25 (Tcp): apply the heuristic of the sender's connection role
local function omi_box_boxoptions_solaorderentry_sail_v2_25_tcp_heuristic(buffer, packet, parent)
  local role = box_boxoptions_solaorderentry_sail_v2_25.role(packet)
  local initiator = omi_box_boxoptions_solaorderentry_sail_v2_25_tcp_initiator_heuristic
  local acceptor = omi_box_boxoptions_solaorderentry_sail_v2_25_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  box_boxoptions_solaorderentry_sail_v2_25.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  box_boxoptions_solaorderentry_sail_v2_25.swap(packet)

  return false
end

-- Register Heuristics for Box BoxOptions SolaOrderEntry Sail 2.25
omi_box_boxoptions_solaorderentry_sail_v2_25:register_heuristic("tcp", omi_box_boxoptions_solaorderentry_sail_v2_25_tcp_heuristic)

-- Register Box BoxOptions SolaOrderEntry Sail 2.25 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_box_boxoptions_solaorderentry_sail_v2_25)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Box Options Market
--   Version: 2.25
--   Date: Monday, January 20, 2025
--   Specification: BOX-SAIL-Specifications-Guide-v2.25.pdf
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
