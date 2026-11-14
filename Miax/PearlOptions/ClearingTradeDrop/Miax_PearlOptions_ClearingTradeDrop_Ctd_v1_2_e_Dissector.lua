-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Miax PearlOptions ClearingTradeDrop Ctd 1.2.e Protocol
local omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e = Proto("Omi.Miax.PearlOptions.ClearingTradeDrop.Ctd.v1.2.e", "Miax PearlOptions ClearingTradeDrop Ctd 1.2.e")

-- Protocol table
local miax_pearloptions_clearingtradedrop_ctd_v1_2_e = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Miax PearlOptions ClearingTradeDrop Ctd 1.2.e Fields
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.account_id = ProtoField.new("Account Id", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.accountid", ftypes.STRING, nil, nil, nil, "Account ID that is supplied in the order")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.application_protocol = ProtoField.new("Application Protocol", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.applicationprotocol", ftypes.STRING, nil, nil, nil, "Eg: MEI1.0 (right padded with spaces)")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.bulk_liquidity_index = ProtoField.new("Bulk Liquidity Index", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.bulkliquidityindex", ftypes.UINT8, nil, nil, nil, "For Trades due to Binary orders: Index assigned by Pearl to each liquidity unit in bulk liquidity message (Index = liquidity unit position in the bulk liquidity message). For Trades due to FIX Orders: zero.")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.call_or_put = ProtoField.new("Call Or Put", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.callorput", ftypes.STRING, nil, nil, nil, "Option Type")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.class_fee_type = ProtoField.new("Class Fee Type", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.classfeetype", ftypes.STRING)
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.clearing_mpid = ProtoField.new("Clearing Mpid", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.clearingmpid", ftypes.STRING, nil, nil, nil, "Clearing MPID of the member")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.clearing_number = ProtoField.new("Clearing Number", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.clearingnumber", ftypes.UINT32, nil, nil, nil, "OCC Clearing number")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.client_message_id = ProtoField.new("Client Message Id", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.clientmessageid", ftypes.UINT32, nil, nil, nil, "For Trades due to Binary Orders: Firm assigned Client Message ID of the bulk liquidity message. For Trades due to FIX Orders: zero.")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.client_order_id = ProtoField.new("Client Order Id", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.clientorderid", ftypes.UINT32, nil, nil, nil, "For Trades due to Binary Orders: Firm assigned Client Order ID. For Trades due to FIX Orders: zero.")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.cmta = ProtoField.new("Cmta", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.cmta", ftypes.UINT32, nil, nil, nil, "CMTA in case of a give-up trade")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.computer_id = ProtoField.new("Computer Id", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.computerid", ftypes.STRING, nil, nil, nil, "ID issued by MIAX during initial setup")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.configured_counting_time_period = ProtoField.new("Configured Counting Time Period", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.configuredcountingtimeperiod", ftypes.UINT32, nil, nil, nil, "Configured time period in milliseconds which is used to consider events for this Metric ID")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.configured_max_quantity = ProtoField.new("Configured Max Quantity", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.configuredmaxquantity", ftypes.UINT32, nil, nil, nil, "Configured max threshold of counted items for the Configured Counting Time interval for this Metric ID. Defines rate for the counting time period.")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.contra_clearing_number = ProtoField.new("Contra Clearing Number", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.contraclearingnumber", ftypes.UINT32, nil, nil, nil, "OCC Clearing number")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.contra_cmta = ProtoField.new("Contra Cmta", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.contracmta", ftypes.UINT32, nil, nil, nil, "CMTA in case of a give-up trade")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.contra_member_type = ProtoField.new("Contra Member Type", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.contramembertype", ftypes.STRING, nil, nil, nil, "Member Type")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.contra_origin = ProtoField.new("Contra Origin", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.contraorigin", ftypes.STRING, nil, nil, nil, "Origin")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.contra_time_in_force = ProtoField.new("Contra Time In Force", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.contratimeinforce", ftypes.STRING, nil, nil, nil, "ContraTimeInForce")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.correction_number = ProtoField.new("Correction Number", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.correctionnumber", ftypes.UINT8, nil, nil, nil, "Trade correction number. Used to identify version of the trade being corrected or canceled. Increments by 1 for each subsequent correction. While this is 0 for new trades, new trades resulting from corrections may have a non-zero number.")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.correction_type = ProtoField.new("Correction Type", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.correctiontype", ftypes.STRING, nil, nil, nil, "Gives more information to the user when this is a correction.")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.ctd_version = ProtoField.new("Ctd Version", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.ctdversion", ftypes.STRING, nil, nil, nil, "Eg: CTD1.0. The CTD Version field value for this release will be CTD1.0. Firms are advised to send CTD1.0 in the SesM Login Request.")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.current_quantity = ProtoField.new("Current Quantity", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.currentquantity", ftypes.UINT32, nil, nil, nil, "Current counted quantity at the time of the event for this Metric ID.")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.end_sequence_number = ProtoField.new("End Sequence Number", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.endsequencenumber", ftypes.UINT64, nil, nil, nil, "Sequence number of the last packet to be retransmitted")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.event_id = ProtoField.new("Event Id", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.eventid", ftypes.UINT32, nil, nil, nil, "Unique ID assigned by Pearl for this event. Can be used to order events. Event Type S Event ID will equal zero")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.event_type = ProtoField.new("Event Type", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.eventtype", ftypes.STRING)
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.executing_mpid = ProtoField.new("Executing Mpid", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.executingmpid", ftypes.STRING, nil, nil, nil, "For Trades due to FIX Orders: MPID of the EEM/OFP (SenderSubID field in FIX order; Note that this will be different than Clearing MPID for MM FIX orders). For Trades due to Binary Orders: Delivering MPID.")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.execution_exchange = ProtoField.new("Execution Exchange", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.executionexchange", ftypes.STRING, nil, nil, nil, "Market where a customer order was traded after routing from Pearl")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.execution_id = ProtoField.new("Execution Id", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.executionid", ftypes.UINT64, nil, nil, nil, "Pearl assigned unique Execution ID. Each side of the Clearing trade will have a unique Execution ID.")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.expiration_date = ProtoField.new("Expiration Date", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.expirationdate", ftypes.UINT32, nil, nil, nil, "Expiration date of the option in YYYYMMDD format")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.fix_order_id = ProtoField.new("Fix Order Id", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.fixorderid", ftypes.STRING, nil, nil, nil, "For Trades due to FIX Orders: Firm assigned Order ID sent via the ClOrdID FIX field. For Trades due to Binary Orders: Spaces.")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.free_trading_condition = ProtoField.new("Free Trading Condition", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.freetradingcondition", ftypes.STRING)
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.goodbye_reason = ProtoField.new("Goodbye Reason", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.goodbyereason", ftypes.STRING, nil, nil, nil, "Reason")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.highest_sequence_number = ProtoField.new("Highest Sequence Number", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.highestsequencenumber", ftypes.UINT64, nil, nil, nil, "The highest sequence number that the server currently has for the client")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.liquidity_indicator = ProtoField.new("Liquidity Indicator", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.liquidityindicator", ftypes.STRING, nil, nil, nil, "Pertains to this side.")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.liquidity_type = ProtoField.new("Liquidity Type", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.liquiditytype", ftypes.STRING, nil, nil, nil, "Pertains to this side.")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.login_status = ProtoField.new("Login Status", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.loginstatus", ftypes.STRING)
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.logout_reason = ProtoField.new("Logout Reason", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.logoutreason", ftypes.STRING, nil, nil, nil, "Reason")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.logout_text = ProtoField.new("Logout Text", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.logouttext", ftypes.STRING, nil, nil, nil, "Free form human readable text to provide more details beyond the reasons mentioned above")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.market_state = ProtoField.new("Market State", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.marketstate", ftypes.STRING)
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.max_peak_quantity = ProtoField.new("Max Peak Quantity", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.maxpeakquantity", ftypes.UINT32, nil, nil, nil, "Max peak for Current Quantity during pulse interval")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.member_type = ProtoField.new("Member Type", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.membertype", ftypes.STRING)
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.metric_id = ProtoField.new("Metric Id", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.metricid", ftypes.STRING, nil, nil, nil, "Metric ID for the group")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.metric_type = ProtoField.new("Metric Type", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.metrictype", ftypes.STRING)
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.mpid = ProtoField.new("Mpid", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.mpid", ftypes.STRING, nil, nil, nil, "Contra side: MPID of the member")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.mpid_group_id = ProtoField.new("Mpid Group Id", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.mpidgroupid", ftypes.STRING, nil, nil, nil, "Firm Assigned Group ID")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.multi_account = ProtoField.new("Multi Account", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.multiaccount", ftypes.STRING, nil, nil, nil, "Sub or multi account ID specified in order")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.notification_time = ProtoField.new("Notification Time", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.notificationtime", ftypes.UINT64, nil, nil, nil, "Time at which this was generated by Pearl system.")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.open_close_indicator = ProtoField.new("Open Close Indicator", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.opencloseindicator", ftypes.STRING, nil, nil, nil, "Open/Close Indicator")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.order_date = ProtoField.new("Order Date", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.orderdate", ftypes.UINT32, nil, nil, nil, "For Trades due to FIX Orders: Format: YYYYMMDD. For Binary orders: zero.")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.origin = ProtoField.new("Origin", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.origin", ftypes.STRING)
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.pearl_bbo_posting_increment_indicator = ProtoField.new("Pearl Bbo Posting Increment Indicator", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.pearlbbopostingincrementindicator", ftypes.STRING, nil, nil, nil, "This is the Minimum Price Variation as agreed to by the Options industry (penny pilot program) and as published by Pearl")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.percentage_level = ProtoField.new("Percentage Level", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.percentagelevel", ftypes.UINT8, nil, nil, nil, "Current Percentage for the Counted Quantity in relationship to Configured Max Quantity. Valid values from 0 to 255%. Actual percentages greater than 255 will be reported as the max (255)")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.price = ProtoField.new("Price", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.price", ftypes.DOUBLE, nil, nil, nil, "Trade price. This is the corrected trade price if that price changed in a trade correction.")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.processing_time = ProtoField.new("Processing Time", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.processingtime", ftypes.UINT64, nil, nil, nil, "Time at which Pearl system (Matching Engine) processed this trade.")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.product_id = ProtoField.new("Product Id", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.productid", ftypes.UINT32, nil, nil, nil, "Pearl Product ID mapped to a given option. It is assigned per trading session and is valid for that session.")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.protection_type = ProtoField.new("Protection Type", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.protectiontype", ftypes.STRING)
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.reference_correction_number = ProtoField.new("Reference Correction Number", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.referencecorrectionnumber", ftypes.UINT8, nil, nil, nil, "Correction Number of the parent trade in case of a correction or a new trade generated due to correction. 0 otherwise.")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.reference_trade_id = ProtoField.new("Reference Trade Id", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.referencetradeid", ftypes.UINT32, nil, nil, nil, "Trade ID of the parent trade in case of a correction or a new trade generated due to correction. 0 otherwise.")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.reference_trade_time = ProtoField.new("Reference Trade Time", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.referencetradetime", ftypes.UINT64, nil, nil, nil, "Time of the parent trade (version of this trade that was active prior to this correction) in case of a correction or a new trade generated due to correction. 0 otherwise.")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.requestedsequencenumber", ftypes.UINT64, nil, nil, nil, "Specifies client requested sequence number: next sequence number the client wants to receive upon connection, or 0 to start receiving only new messages without any replay of old messages")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.requested_session = ProtoField.new("Requested Session", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.requestedsession", ftypes.UINT8, nil, nil, nil, "Specifies the session the client would like to log into, or zero to log into the currently active session")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.reserved_15 = ProtoField.new("Reserved 15", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.reserved15", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.reserved_16 = ProtoField.new("Reserved 16", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.reserved16", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.reserved_20 = ProtoField.new("Reserved 20", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.reserved20", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.reserved_32 = ProtoField.new("Reserved 32", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.reserved32", ftypes.BYTES, nil, nil, nil, "Reserved for future use.")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.reserved_8 = ProtoField.new("Reserved 8", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.reserved8", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.route_id = ProtoField.new("Route Id", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.routeid", ftypes.STRING, nil, nil, nil, "ID used to route to this session.")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.routed_order_quantity = ProtoField.new("Routed Order Quantity", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.routedorderquantity", ftypes.UINT32, nil, nil, nil, "This contains 0 (zero) for trades at Pearl. For trades resulting from Orders routed to other exchanges, this contains total routed quantity that will be useful in calculating away-exchange block size billing rate.")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.second_reserved_20 = ProtoField.new("Second Reserved 20", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.secondreserved20", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.second_reserved_8 = ProtoField.new("Second Reserved 8", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.secondreserved8", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.security_symbol = ProtoField.new("Security Symbol", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.securitysymbol", ftypes.STRING, nil, nil, nil, "Option Security Symbol")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.sequence_number = ProtoField.new("Sequence Number", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.sequencenumber", ftypes.UINT64, nil, nil, nil, "Sequence number of this sequenced data packet")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.sequenceddatapacket", ftypes.STRING, nil, nil, nil, "The Server application can choose to use Sequenced data packets to send all messages that must be recoverable by the client in case of a connection loss")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.sequencedmessagetype", ftypes.STRING, nil, nil, nil, "Message type of the application message the sequenced data packet carries")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.sesm_packet_length = ProtoField.new("Sesm Packet Length", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.sesmpacketlength", ftypes.UINT16, nil, nil, nil, "The length of rest of the packet")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.sesm_packet_type = ProtoField.new("Sesm Packet Type", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.sesmpackettype", ftypes.STRING, nil, nil, nil, "SesM protocol packet type")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.sesm_version = ProtoField.new("Sesm Version", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.sesmversion", ftypes.STRING, nil, nil, nil, "1.1 (right padded with spaces)")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.session_id = ProtoField.new("Session Id", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.sessionid", ftypes.UINT8, nil, nil, nil, "The session ID of the session that is now logged into")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.session_id = ProtoField.new("Session ID", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.sessionid", ftypes.UINT32, nil, nil, nil, "Pearl assigned ID for the current trading session. A change in Session ID will mean that restarting at message sequence number 1.")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.side = ProtoField.new("Side", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.side", ftypes.STRING, nil, nil, nil, "The side of the trade on which this receiver was involved in.")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.size = ProtoField.new("Size", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.size", ftypes.UINT32, nil, nil, nil, "Number of contract traded in this clearing trade. This is the corrected trade size if that size changed in a trade correction.")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.start_sequence_number = ProtoField.new("Start Sequence Number", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.startsequencenumber", ftypes.UINT64, nil, nil, nil, "Sequence number of the first packet to be retransmitted")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.strike_price = ProtoField.new("Strike Price", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.strikeprice", ftypes.DOUBLE, nil, nil, nil, "Explicit strike price of the option. Refer to data types for field processing notes")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.supplementary_id = ProtoField.new("Supplementary Id", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.supplementaryid", ftypes.STRING, nil, nil, nil, "Supplementary ID supplied in the Text field of the FIX order and Additional Text field of MEO orders")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.system_status = ProtoField.new("System Status", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.systemstatus", ftypes.STRING, nil, nil, nil, "Current system status")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.test_text = ProtoField.new("Test Text", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.testtext", ftypes.STRING, nil, nil, nil, "Free form human readable text")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.third_reserved_20 = ProtoField.new("Third Reserved 20", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.thirdreserved20", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.time_in_force = ProtoField.new("Time In Force", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.timeinforce", ftypes.STRING, nil, nil, nil, "TimeInForce")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.trade_action = ProtoField.new("Trade Action", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.tradeaction", ftypes.STRING, nil, nil, nil, "Note that New trades and Trade Cancel messages can also be generated due to a Clearing changing correction. See Correction Type field for details.")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.trade_as_of_date = ProtoField.new("Trade As Of Date", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.tradeasofdate", ftypes.UINT32, nil, nil, nil, "As-of Date for As-of Trades. Format: YYYYMMDD. Zero for non As-of Trades.")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.trade_condition = ProtoField.new("Trade Condition", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.tradecondition", ftypes.STRING, nil, nil, nil, "See Appendix A for list of possible values. This is the corrected trade condition if that condition changed in a trade correction.")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.trade_id = ProtoField.new("Trade Id", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.tradeid", ftypes.UINT32, nil, nil, nil, "Pearl assigned unique Trade ID for the day. For corrections and cancels, this is the trade ID of the original trade. When used in conjunction with Correction Number, Side and Trade Action, this is a unique identifier for each clearing trade.")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.trade_time = ProtoField.new("Trade Time", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.tradetime", ftypes.UINT64, nil, nil, nil, "Automatic Trades: Time at which the Matching Engine created this trade. Will be same as Processing Time. Manual Trades: Trade Time of the new manual trade. Trades cancels, corrections: Trade Time of the original trade.")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.trade_type = ProtoField.new("Trade Type", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.tradetype", ftypes.STRING)
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.transaction_id = ProtoField.new("Transaction Id", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.transactionid", ftypes.UINT32, nil, nil, nil, "All clearing trades generated from a single Engine transaction will have the same transaction ID")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.underlyingsymbol", ftypes.STRING, nil, nil, nil, "Stock Symbol for the option.")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.underlying_type = ProtoField.new("Underlying Type", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.underlyingtype", ftypes.STRING)
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.unsequenceddatapacket", ftypes.STRING, nil, nil, nil, "Each unsequenced data packet carries one unsequenced message from the higher-level protocol")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.unsequencedmessagetype", ftypes.STRING, nil, nil, nil, "Message type of the application message the unsequenced data packet carries")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.username = ProtoField.new("Username", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.username", ftypes.STRING, nil, nil, nil, "Username issued by MIAX during initial setup")

-- Miax PearlOptions ClearingTradeDrop Ctd 1.2.e Framing
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.packet = ProtoField.new("Packet", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.packet", ftypes.STRING, nil, nil, nil, "SesM Packet")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.sesm_packet_header = ProtoField.new("Sesm Packet Header", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.sesmpacketheader", ftypes.STRING)
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.sesm_tcp_packet = ProtoField.new("Sesm Tcp Packet", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.sesmtcppacket", ftypes.STRING)

-- Miax PearlOptions ClearingTradeDrop 1.2.e Session Messages
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.client_heartbeat = ProtoField.new("Client Heartbeat", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.clientheartbeat", ftypes.BYTES, nil, nil, nil, "The client should send a Client Heartbeat packet anytime more than 1 second passes where no data has been sent to the server")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.end_of_session = ProtoField.new("End Of Session", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.endofsession", ftypes.BYTES, nil, nil, nil, "The server will send an End of Session packet to denote that the current session is finished")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.goodbye_packet = ProtoField.new("Goodbye Packet", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.goodbyepacket", ftypes.STRING, nil, nil, nil, "The server may send a GoodBye packet to inform the client a reason for termination of the connection just before it terminates the connection")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.login_request = ProtoField.new("Login Request", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.loginrequest", ftypes.STRING, nil, nil, nil, "The SesM client uses this packet to allow the server to authenticate the client and to convey to the server the last sequenced packet that the client received")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.login_response = ProtoField.new("Login Response", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.loginresponse", ftypes.STRING, nil, nil, nil, "The SesM server sends a Login response packet in response to a Login request packet from the client")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.logout_request = ProtoField.new("Logout Request", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.logoutrequest", ftypes.STRING, nil, nil, nil, "The client may send a Logout request packet to request the connection be terminated")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.retransmission_request = ProtoField.new("Retransmission Request", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.retransmissionrequest", ftypes.STRING, nil, nil, nil, "The SesM client uses this packet to request the server to retransmit a range of packets")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.server_heartbeat = ProtoField.new("Server Heartbeat", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.serverheartbeat", ftypes.BYTES, nil, nil, nil, "The server should send a Server Heartbeat packet anytime more than 1 second passes where no data has been sent to the client")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.synchronization_complete = ProtoField.new("Synchronization Complete", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.synchronizationcomplete", ftypes.BYTES, nil, nil, nil, "The server sends a Synchronization complete packet when it is done replaying all the old packets and is ready to start sending new packets")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.test_packet = ProtoField.new("Test Packet", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.testpacket", ftypes.STRING, nil, nil, nil, "A Test packet can be sent by either side of a SesM connection at anytime; Test packets are intended to provide human readable text that may aid in debugging problems")

-- Miax PearlOptions ClearingTradeDrop 1.2.e Application Messages
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.risk_notification_message = ProtoField.new("Risk Notification Message", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.risknotificationmessage", ftypes.STRING, nil, nil, nil, "Firms configured to use Risk Protection Monitoring will receive User Notification communicating the status of Risk checks. Field Event Type is used to determine the reason for the notification. The following message will be used to disseminate all Pearl Risk Protection Monitor (RPM) related notifications. Sequenced and UnSequenced Pkt based on Event Type: solicited event types (T, R, W, D, A, P, U) are Sequenced messages at the SesM protocol level and recoverable; unsolicited (S) are Unsequenced and not recoverable.")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.system_state = ProtoField.new("System State", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.systemstate", ftypes.STRING, nil, nil, nil, "This message format is used to notify firms of the state changes of the system. Firms can use notifications as triggers in their system to ensure electronic synchronization of systems.")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.trade_message = ProtoField.new("Trade Message", "miax.pearloptions.clearingtradedrop.ctd.v1.2.e.trademessage", ftypes.STRING, nil, nil, nil, "This is the message format that will be used to disseminate all Pearl trade related content for entitled parties. Pearl sends trades, trade corrections and trade cancels using this message. This is a sequenced message.")

-----------------------------------------------------------------------
-- Miax PearlOptions ClearingTradeDrop Ctd 1.2.e Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime Local", 2 },
  { 4, "Full DateTime Utc", 3 }
}

-- 0=Raw, 1=Time of Day, 2=Full DateTime Local, 3=Full DateTime Utc
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.timestamp_format = 2


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Miax PearlOptions ClearingTradeDrop Ctd 1.2.e Element Dissection Options
show.session_messages = true
show.structs = true
show.application_messages = true
show.headers = true
show.padding = false

-- Register Miax PearlOptions ClearingTradeDrop Ctd 1.2.e Show Options
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.prefs.show_padding = Pref.bool("Show Padding", show.padding, "Parse and add Padding to protocol tree")

omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Display format for this protocol's timestamps", timestamp_format_enum, false)

-- Handle changed preferences
function omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.prefs.show_application_messages then
    show.application_messages = omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.prefs.show_application_messages
  end
  if show.headers ~= omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.prefs.show_headers then
    show.headers = omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.prefs.show_headers
  end
  if show.padding ~= omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.prefs.show_padding then
    show.padding = omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.prefs.show_padding
  end
  if show.session_messages ~= omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.prefs.show_session_messages then
    show.session_messages = omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.prefs.show_session_messages
  end
  if show.structs ~= omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.prefs.show_structs then
    show.structs = omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.prefs.show_structs
  end
  if miax_pearloptions_clearingtradedrop_ctd_v1_2_e.timestamp_format ~= omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.prefs.timestamp_format then
    miax_pearloptions_clearingtradedrop_ctd_v1_2_e.timestamp_format = omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.prefs.timestamp_format
  end
end


-----------------------------------------------------------------------
-- Protocol Functions
-----------------------------------------------------------------------

-- trim trailing spaces
trim_right_spaces = function(str)
  local finish = str:len()

  while finish > 0 and str:byte(finish) == 0x20 do
    finish = finish - 1
  end

  return str:sub(1, finish)
end


-----------------------------------------------------------------------
-- Miax PearlOptions ClearingTradeDrop Ctd 1.2.e Fields
-----------------------------------------------------------------------

-- Account Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.account_id = {}

-- Size: Account Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.account_id.size = 10

-- Display: Account Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.account_id.display = function(value)
  return "Account Id: "..value
end

-- Dissect: Account Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.account_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.account_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.account_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.account_id, range, value, display)

  return offset + length, value
end

-- Application Protocol
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.application_protocol = {}

-- Size: Application Protocol
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.application_protocol.size = 8

-- Display: Application Protocol
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.application_protocol.display = function(value)
  return "Application Protocol: "..value
end

-- Dissect: Application Protocol
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.application_protocol.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.application_protocol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.application_protocol.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.application_protocol, range, value, display)

  return offset + length, value
end

-- Bulk Liquidity Index
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.bulk_liquidity_index = {}

-- Size: Bulk Liquidity Index
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.bulk_liquidity_index.size = 1

-- Display: Bulk Liquidity Index
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.bulk_liquidity_index.display = function(value)
  return "Bulk Liquidity Index: "..value
end

-- Dissect: Bulk Liquidity Index
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.bulk_liquidity_index.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.bulk_liquidity_index.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.bulk_liquidity_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.bulk_liquidity_index, range, value, display)

  return offset + length, value
end

-- Call Or Put
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.call_or_put = {}

-- Size: Call Or Put
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.call_or_put.size = 1

-- Display: Call Or Put
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.call_or_put.labels = {
  ["C"] = "Call Or Put: Call (C)",
  ["P"] = "Call Or Put: Put (P)",
}

miax_pearloptions_clearingtradedrop_ctd_v1_2_e.call_or_put.display = function(value)
  return miax_pearloptions_clearingtradedrop_ctd_v1_2_e.call_or_put.labels[value] or "Call Or Put: Unknown("..value..")"
end

-- Dissect: Call Or Put
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.call_or_put.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.call_or_put.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.call_or_put.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.call_or_put, range, value, display)

  return offset + length, value
end

-- Class Fee Type
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.class_fee_type = {}

-- Size: Class Fee Type
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.class_fee_type.size = 1

-- Display: Class Fee Type
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.class_fee_type.labels = {
  ["M"] = "Class Fee Type: Maker Taker Fee Based (M)",
}

miax_pearloptions_clearingtradedrop_ctd_v1_2_e.class_fee_type.display = function(value)
  return miax_pearloptions_clearingtradedrop_ctd_v1_2_e.class_fee_type.labels[value] or "Class Fee Type: Unknown("..value..")"
end

-- Dissect: Class Fee Type
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.class_fee_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.class_fee_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.class_fee_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.class_fee_type, range, value, display)

  return offset + length, value
end

-- Clearing Mpid
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.clearing_mpid = {}

-- Size: Clearing Mpid
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.clearing_mpid.size = 4

-- Display: Clearing Mpid
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.clearing_mpid.display = function(value)
  return "Clearing Mpid: "..value
end

-- Dissect: Clearing Mpid
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.clearing_mpid.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.clearing_mpid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.clearing_mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.clearing_mpid, range, value, display)

  return offset + length, value
end

-- Clearing Number
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.clearing_number = {}

-- Size: Clearing Number
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.clearing_number.size = 4

-- Display: Clearing Number
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.clearing_number.display = function(value)
  return "Clearing Number: "..value
end

-- Dissect: Clearing Number
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.clearing_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.clearing_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.clearing_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.clearing_number, range, value, display)

  return offset + length, value
end

-- Client Message Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.client_message_id = {}

-- Size: Client Message Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.client_message_id.size = 4

-- Display: Client Message Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.client_message_id.display = function(value)
  return "Client Message Id: "..value
end

-- Dissect: Client Message Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.client_message_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.client_message_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.client_message_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.client_message_id, range, value, display)

  return offset + length, value
end

-- Client Order Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.client_order_id = {}

-- Size: Client Order Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.client_order_id.size = 4

-- Display: Client Order Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.client_order_id.display = function(value)
  return "Client Order Id: "..value
end

-- Dissect: Client Order Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.client_order_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.client_order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.client_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.client_order_id, range, value, display)

  return offset + length, value
end

-- Cmta
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.cmta = {}

-- Size: Cmta
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.cmta.size = 4

-- Display: Cmta
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.cmta.display = function(value)
  return "Cmta: "..value
end

-- Dissect: Cmta
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.cmta.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.cmta.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.cmta.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.cmta, range, value, display)

  return offset + length, value
end

-- Computer Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.computer_id = {}

-- Size: Computer Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.computer_id.size = 8

-- Display: Computer Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.computer_id.display = function(value)
  return "Computer Id: "..value
end

-- Dissect: Computer Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.computer_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.computer_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.computer_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.computer_id, range, value, display)

  return offset + length, value
end

-- Configured Counting Time Period
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.configured_counting_time_period = {}

-- Size: Configured Counting Time Period
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.configured_counting_time_period.size = 4

-- Display: Configured Counting Time Period
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.configured_counting_time_period.display = function(value)
  return "Configured Counting Time Period: "..value
end

-- Dissect: Configured Counting Time Period
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.configured_counting_time_period.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.configured_counting_time_period.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.configured_counting_time_period.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.configured_counting_time_period, range, value, display)

  return offset + length, value
end

-- Configured Max Quantity
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.configured_max_quantity = {}

-- Size: Configured Max Quantity
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.configured_max_quantity.size = 4

-- Display: Configured Max Quantity
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.configured_max_quantity.display = function(value)
  return "Configured Max Quantity: "..value
end

-- Dissect: Configured Max Quantity
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.configured_max_quantity.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.configured_max_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.configured_max_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.configured_max_quantity, range, value, display)

  return offset + length, value
end

-- Contra Clearing Number
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.contra_clearing_number = {}

-- Size: Contra Clearing Number
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.contra_clearing_number.size = 4

-- Display: Contra Clearing Number
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.contra_clearing_number.display = function(value)
  return "Contra Clearing Number: "..value
end

-- Dissect: Contra Clearing Number
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.contra_clearing_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.contra_clearing_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.contra_clearing_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.contra_clearing_number, range, value, display)

  return offset + length, value
end

-- Contra Cmta
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.contra_cmta = {}

-- Size: Contra Cmta
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.contra_cmta.size = 4

-- Display: Contra Cmta
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.contra_cmta.display = function(value)
  return "Contra Cmta: "..value
end

-- Dissect: Contra Cmta
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.contra_cmta.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.contra_cmta.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.contra_cmta.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.contra_cmta, range, value, display)

  return offset + length, value
end

-- Contra Member Type
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.contra_member_type = {}

-- Size: Contra Member Type
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.contra_member_type.size = 1

-- Display: Contra Member Type
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.contra_member_type.labels = {
  ["E"] = "Contra Member Type: Electronic Exchange Member (E)",
  ["M"] = "Contra Member Type: Market Maker (M)",
  ["R"] = "Contra Member Type: Routing Broker (R)",
}

miax_pearloptions_clearingtradedrop_ctd_v1_2_e.contra_member_type.display = function(value)
  return miax_pearloptions_clearingtradedrop_ctd_v1_2_e.contra_member_type.labels[value] or "Contra Member Type: Unknown("..value..")"
end

-- Dissect: Contra Member Type
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.contra_member_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.contra_member_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.contra_member_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.contra_member_type, range, value, display)

  return offset + length, value
end

-- Contra Origin
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.contra_origin = {}

-- Size: Contra Origin
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.contra_origin.size = 1

-- Display: Contra Origin
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.contra_origin.labels = {
  ["C"] = "Contra Origin: Priority Customer (C)",
  ["N"] = "Contra Origin: Non Priority Customer (N)",
  ["F"] = "Contra Origin: Firm (F)",
  ["B"] = "Contra Origin: Broker Dealer (B)",
  ["P"] = "Contra Origin: Member Market Maker (P)",
  ["A"] = "Contra Origin: Away Exchange Market Maker (A)",
}

miax_pearloptions_clearingtradedrop_ctd_v1_2_e.contra_origin.display = function(value)
  return miax_pearloptions_clearingtradedrop_ctd_v1_2_e.contra_origin.labels[value] or "Contra Origin: Unknown("..value..")"
end

-- Dissect: Contra Origin
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.contra_origin.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.contra_origin.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.contra_origin.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.contra_origin, range, value, display)

  return offset + length, value
end

-- Contra Time In Force
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.contra_time_in_force = {}

-- Size: Contra Time In Force
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.contra_time_in_force.size = 1

-- Display: Contra Time In Force
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.contra_time_in_force.labels = {
  ["0"] = "Contra Time In Force: Day (0)",
  ["1"] = "Contra Time In Force: Gtc (1)",
  ["3"] = "Contra Time In Force: Ioc (3)",
  ["*"] = "Contra Time In Force: Downgraded For Older Version (*)",
}

miax_pearloptions_clearingtradedrop_ctd_v1_2_e.contra_time_in_force.display = function(value)
  return miax_pearloptions_clearingtradedrop_ctd_v1_2_e.contra_time_in_force.labels[value] or "Contra Time In Force: Unknown("..value..")"
end

-- Dissect: Contra Time In Force
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.contra_time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.contra_time_in_force.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.contra_time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.contra_time_in_force, range, value, display)

  return offset + length, value
end

-- Correction Number
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.correction_number = {}

-- Size: Correction Number
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.correction_number.size = 1

-- Display: Correction Number
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.correction_number.display = function(value)
  return "Correction Number: "..value
end

-- Dissect: Correction Number
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.correction_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.correction_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.correction_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.correction_number, range, value, display)

  return offset + length, value
end

-- Correction Type
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.correction_type = {}

-- Size: Correction Type
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.correction_type.size = 1

-- Display: Correction Type
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.correction_type.labels = {
  ["1"] = "Correction Type: Not Applicable (1)",
  ["2"] = "Correction Type: Price Andor Size Change (2)",
  ["3"] = "Correction Type: This Side Clearing Change (3)",
  ["4"] = "Correction Type: Contra Side Clearing Change (4)",
  ["5"] = "Correction Type: Both Side Clearing Change (5)",
}

miax_pearloptions_clearingtradedrop_ctd_v1_2_e.correction_type.display = function(value)
  return miax_pearloptions_clearingtradedrop_ctd_v1_2_e.correction_type.labels[value] or "Correction Type: Unknown("..value..")"
end

-- Dissect: Correction Type
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.correction_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.correction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.correction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.correction_type, range, value, display)

  return offset + length, value
end

-- Ctd Version
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.ctd_version = {}

-- Size: Ctd Version
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.ctd_version.size = 8

-- Display: Ctd Version
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.ctd_version.display = function(value)
  return "Ctd Version: "..value
end

-- Dissect: Ctd Version
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.ctd_version.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.ctd_version.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.ctd_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.ctd_version, range, value, display)

  return offset + length, value
end

-- Current Quantity
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.current_quantity = {}

-- Size: Current Quantity
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.current_quantity.size = 4

-- Display: Current Quantity
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.current_quantity.display = function(value)
  return "Current Quantity: "..value
end

-- Dissect: Current Quantity
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.current_quantity.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.current_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.current_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.current_quantity, range, value, display)

  return offset + length, value
end

-- End Sequence Number
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.end_sequence_number = {}

-- Size: End Sequence Number
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.end_sequence_number.size = 8

-- Display: End Sequence Number
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.end_sequence_number.display = function(value)
  return "End Sequence Number: "..value
end

-- Dissect: End Sequence Number
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.end_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.end_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.end_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.end_sequence_number, range, value, display)

  return offset + length, value
end

-- Event Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.event_id = {}

-- Size: Event Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.event_id.size = 4

-- Display: Event Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.event_id.display = function(value)
  return "Event Id: "..value
end

-- Dissect: Event Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.event_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.event_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.event_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.event_id, range, value, display)

  return offset + length, value
end

-- Event Type
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.event_type = {}

-- Size: Event Type
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.event_type.size = 1

-- Display: Event Type
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.event_type.labels = {
  ["S"] = "Event Type: Period Status Pulse Notification (S)",
  ["T"] = "Event Type: Safeguard Trigger (T)",
  ["R"] = "Event Type: Reset Risk Metric (R)",
  ["W"] = "Event Type: Warning Only (W)",
  ["D"] = "Event Type: Metric Deleted (D)",
  ["A"] = "Event Type: Metric Added (A)",
  ["P"] = "Event Type: Metric Paused (P)",
  ["U"] = "Event Type: Metric Un Paused (U)",
  ["*"] = "Event Type: Downgraded For Older Version (*)",
}

miax_pearloptions_clearingtradedrop_ctd_v1_2_e.event_type.display = function(value)
  return miax_pearloptions_clearingtradedrop_ctd_v1_2_e.event_type.labels[value] or "Event Type: Unknown("..value..")"
end

-- Dissect: Event Type
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.event_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.event_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.event_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.event_type, range, value, display)

  return offset + length, value
end

-- Executing Mpid
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.executing_mpid = {}

-- Size: Executing Mpid
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.executing_mpid.size = 4

-- Display: Executing Mpid
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.executing_mpid.display = function(value)
  return "Executing Mpid: "..value
end

-- Dissect: Executing Mpid
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.executing_mpid.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.executing_mpid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.executing_mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.executing_mpid, range, value, display)

  return offset + length, value
end

-- Execution Exchange
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.execution_exchange = {}

-- Size: Execution Exchange
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.execution_exchange.size = 1

-- Display: Execution Exchange
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.execution_exchange.display = function(value)
  if value == "A" then
    return "Execution Exchange: Nyse Amex (A)"
  end
  if value == "N" then
    return "Execution Exchange: Nyse Arca (N)"
  end
  if value == "B" then
    return "Execution Exchange: Box (B)"
  end
  if value == "C" then
    return "Execution Exchange: Cboe (C)"
  end
  if value == "W" then
    return "Execution Exchange: C 2 (W)"
  end
  if value == "I" then
    return "Execution Exchange: Ise (I)"
  end
  if value == "H" then
    return "Execution Exchange: Ise Gemini (H)"
  end
  if value == "J" then
    return "Execution Exchange: Ise Mercury (J)"
  end
  if value == "Q" then
    return "Execution Exchange: Nasdaq Omx Options Market (Q)"
  end
  if value == "X" then
    return "Execution Exchange: Nasdaq Omx Phlx Options Market (X)"
  end
  if value == "T" then
    return "Execution Exchange: Nasdaq Bx (T)"
  end
  if value == "Z" then
    return "Execution Exchange: Bats (Z)"
  end
  if value == "E" then
    return "Execution Exchange: Edgx Options Market (E)"
  end
  if value == "M" then
    return "Execution Exchange: Miax (M)"
  end
  if value == "D" then
    return "Execution Exchange: Miax Emerald (D)"
  end
  if value == "U" then
    return "Execution Exchange: Memx Options (U)"
  end
  if value == "S" then
    return "Execution Exchange: Miax Sapphire (S)"
  end
  if value == "V" then
    return "Execution Exchange: Iex Options (V)"
  end
  if value == "G" then
    return "Execution Exchange: Mx 2 Options (G)"
  end
  if value == " " then
    return "Execution Exchange: Traded At Pearl (<whitespace>)"
  end

  return "Execution Exchange: Unknown("..value..")"
end

-- Dissect: Execution Exchange
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.execution_exchange.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.execution_exchange.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.execution_exchange.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.execution_exchange, range, value, display)

  return offset + length, value
end

-- Execution Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.execution_id = {}

-- Size: Execution Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.execution_id.size = 8

-- Display: Execution Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Expiration Date
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.expiration_date = {}

-- Size: Expiration Date
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.expiration_date.size = 4

-- Display: Expiration Date
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.expiration_date.display = function(value)
  return "Expiration Date: "..value
end

-- Dissect: Expiration Date
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.expiration_date.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.expiration_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.expiration_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.expiration_date, range, value, display)

  return offset + length, value
end

-- Fix Order Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fix_order_id = {}

-- Size: Fix Order Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fix_order_id.size = 30

-- Display: Fix Order Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fix_order_id.display = function(value)
  return "Fix Order Id: "..value
end

-- Dissect: Fix Order Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fix_order_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fix_order_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fix_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.fix_order_id, range, value, display)

  return offset + length, value
end

-- Free Trading Condition
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.free_trading_condition = {}

-- Size: Free Trading Condition
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.free_trading_condition.size = 1

-- Display: Free Trading Condition
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.free_trading_condition.display = function(value)
  if value == "1" then
    return "Free Trading Condition: Regular (1)"
  end
  if value == "2" then
    return "Free Trading Condition: Abbo Uncrossed (2)"
  end
  if value == " " then
    return "Free Trading Condition: Not Applicable (<whitespace>)"
  end
  if value == "*" then
    return "Free Trading Condition: Downgraded For Older Version (*)"
  end

  return "Free Trading Condition: Unknown("..value..")"
end

-- Dissect: Free Trading Condition
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.free_trading_condition.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.free_trading_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.free_trading_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.free_trading_condition, range, value, display)

  return offset + length, value
end

-- Goodbye Reason
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.goodbye_reason = {}

-- Size: Goodbye Reason
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.goodbye_reason.size = 1

-- Display: Goodbye Reason
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.goodbye_reason.labels = {
  ["B"] = "Goodbye Reason: Bad Sesm Packet (B)",
  ["L"] = "Goodbye Reason: Timed Out Waiting For Login Packet (L)",
  ["A"] = "Goodbye Reason: Application Terminating Connection (A)",
}

miax_pearloptions_clearingtradedrop_ctd_v1_2_e.goodbye_reason.display = function(value)
  return miax_pearloptions_clearingtradedrop_ctd_v1_2_e.goodbye_reason.labels[value] or "Goodbye Reason: Unknown("..value..")"
end

-- Dissect: Goodbye Reason
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.goodbye_reason.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.goodbye_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.goodbye_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.goodbye_reason, range, value, display)

  return offset + length, value
end

-- Highest Sequence Number
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.highest_sequence_number = {}

-- Size: Highest Sequence Number
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.highest_sequence_number.size = 8

-- Display: Highest Sequence Number
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.highest_sequence_number.display = function(value)
  return "Highest Sequence Number: "..value
end

-- Dissect: Highest Sequence Number
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.highest_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.highest_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.highest_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.highest_sequence_number, range, value, display)

  return offset + length, value
end

-- Liquidity Indicator
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.liquidity_indicator = {}

-- Size: Liquidity Indicator
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.liquidity_indicator.size = 1

-- Display: Liquidity Indicator
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.liquidity_indicator.display = function(value)
  if value == "M" then
    return "Liquidity Indicator: Maker (M)"
  end
  if value == "T" then
    return "Liquidity Indicator: Taker (T)"
  end
  if value == " " then
    return "Liquidity Indicator: Not Applicable (<whitespace>)"
  end

  return "Liquidity Indicator: Unknown("..value..")"
end

-- Dissect: Liquidity Indicator
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.liquidity_indicator.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.liquidity_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.liquidity_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Liquidity Type
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.liquidity_type = {}

-- Size: Liquidity Type
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.liquidity_type.size = 1

-- Display: Liquidity Type
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.liquidity_type.display = function(value)
  if value == "F" then
    return "Liquidity Type: Fix Order (F)"
  end
  if value == "B" then
    return "Liquidity Type: Binary Order (B)"
  end
  if value == " " then
    return "Liquidity Type: Not Applicable (<whitespace>)"
  end
  if value == "*" then
    return "Liquidity Type: Downgraded For Older Version (*)"
  end

  return "Liquidity Type: Unknown("..value..")"
end

-- Dissect: Liquidity Type
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.liquidity_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.liquidity_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.liquidity_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.liquidity_type, range, value, display)

  return offset + length, value
end

-- Login Status
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.login_status = {}

-- Size: Login Status
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.login_status.size = 1

-- Display: Login Status
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.login_status.display = function(value)
  if value == " " then
    return "Login Status: Login Successful (<whitespace>)"
  end
  if value == "X" then
    return "Login Status: Rejected (X)"
  end
  if value == "S" then
    return "Login Status: Requested Session Is Not Available (S)"
  end
  if value == "N" then
    return "Login Status: Invalid Start Sequence Number Requested (N)"
  end
  if value == "I" then
    return "Login Status: Incompatible Session Protocol Version (I)"
  end
  if value == "A" then
    return "Login Status: Incompatible Application Protocol Version (A)"
  end
  if value == "L" then
    return "Login Status: Request Rejected Because Client Already Logged In (L)"
  end

  return "Login Status: Unknown("..value..")"
end

-- Dissect: Login Status
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.login_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.login_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.login_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.login_status, range, value, display)

  return offset + length, value
end

-- Logout Reason
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.logout_reason = {}

-- Size: Logout Reason
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.logout_reason.size = 1

-- Display: Logout Reason
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.logout_reason.display = function(value)
  if value == " " then
    return "Logout Reason: Graceful Logout (<whitespace>)"
  end
  if value == "B" then
    return "Logout Reason: Bad Sesm Packet (B)"
  end
  if value == "L" then
    return "Logout Reason: Timed Out Waiting For Login Packet (L)"
  end
  if value == "A" then
    return "Logout Reason: Application Terminating Connection (A)"
  end

  return "Logout Reason: Unknown("..value..")"
end

-- Dissect: Logout Reason
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.logout_reason.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.logout_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.logout_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.logout_reason, range, value, display)

  return offset + length, value
end

-- Logout Text
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.logout_text = {}

-- Display: Logout Text
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.logout_text.display = function(value)
  return "Logout Text: "..value
end

-- Dissect runtime sized field: Logout Text
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.logout_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.logout_text.display(value, packet, parent, size)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.logout_text, range, value, display)

  return offset + size, value
end

-- Market State
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.market_state = {}

-- Size: Market State
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.market_state.size = 1

-- Display: Market State
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.market_state.display = function(value)
  if value == "T" then
    return "Market State: Free Trading (T)"
  end
  if value == "O" then
    return "Market State: Opening (O)"
  end
  if value == " " then
    return "Market State: Not Applicable (<whitespace>)"
  end
  if value == "*" then
    return "Market State: Downgraded For Older Version (*)"
  end

  return "Market State: Unknown("..value..")"
end

-- Dissect: Market State
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.market_state.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.market_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.market_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.market_state, range, value, display)

  return offset + length, value
end

-- Max Peak Quantity
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.max_peak_quantity = {}

-- Size: Max Peak Quantity
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.max_peak_quantity.size = 4

-- Display: Max Peak Quantity
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.max_peak_quantity.display = function(value)
  return "Max Peak Quantity: "..value
end

-- Dissect: Max Peak Quantity
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.max_peak_quantity.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.max_peak_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.max_peak_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.max_peak_quantity, range, value, display)

  return offset + length, value
end

-- Member Type
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.member_type = {}

-- Size: Member Type
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.member_type.size = 1

-- Display: Member Type
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.member_type.labels = {
  ["E"] = "Member Type: Electronic Exchange Member (E)",
  ["M"] = "Member Type: Market Maker (M)",
  ["R"] = "Member Type: Routing Broker (R)",
}

miax_pearloptions_clearingtradedrop_ctd_v1_2_e.member_type.display = function(value)
  return miax_pearloptions_clearingtradedrop_ctd_v1_2_e.member_type.labels[value] or "Member Type: Unknown("..value..")"
end

-- Dissect: Member Type
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.member_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.member_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.member_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.member_type, range, value, display)

  return offset + length, value
end

-- Metric Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.metric_id = {}

-- Size: Metric Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.metric_id.size = 32

-- Display: Metric Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.metric_id.display = function(value)
  return "Metric Id: "..value
end

-- Dissect: Metric Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.metric_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.metric_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.metric_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.metric_id, range, value, display)

  return offset + length, value
end

-- Metric Type
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.metric_type = {}

-- Size: Metric Type
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.metric_type.size = 1

-- Display: Metric Type
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.metric_type.labels = {
  ["C"] = "Metric Type: Rate Of Executed Order Contracts (C)",
  ["O"] = "Metric Type: Rate Of New Replace Orders Received (O)",
  ["*"] = "Metric Type: Downgraded For Older Version (*)",
}

miax_pearloptions_clearingtradedrop_ctd_v1_2_e.metric_type.display = function(value)
  return miax_pearloptions_clearingtradedrop_ctd_v1_2_e.metric_type.labels[value] or "Metric Type: Unknown("..value..")"
end

-- Dissect: Metric Type
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.metric_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.metric_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.metric_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.metric_type, range, value, display)

  return offset + length, value
end

-- Mpid
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.mpid = {}

-- Size: Mpid
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.mpid.size = 4

-- Display: Mpid
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.mpid.display = function(value)
  return "Mpid: "..value
end

-- Dissect: Mpid
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.mpid.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.mpid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.mpid, range, value, display)

  return offset + length, value
end

-- Mpid Group Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.mpid_group_id = {}

-- Size: Mpid Group Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.mpid_group_id.size = 32

-- Display: Mpid Group Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.mpid_group_id.display = function(value)
  return "Mpid Group Id: "..value
end

-- Dissect: Mpid Group Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.mpid_group_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.mpid_group_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.mpid_group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.mpid_group_id, range, value, display)

  return offset + length, value
end

-- Multi Account
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.multi_account = {}

-- Size: Multi Account
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.multi_account.size = 5

-- Display: Multi Account
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.multi_account.display = function(value)
  return "Multi Account: "..value
end

-- Dissect: Multi Account
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.multi_account.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.multi_account.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.multi_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.multi_account, range, value, display)

  return offset + length, value
end

-- Notification Time
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.notification_time = {}

-- Size: Notification Time
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.notification_time.size = 8

-- Display: Notification Time
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.notification_time.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if miax_pearloptions_clearingtradedrop_ctd_v1_2_e.timestamp_format == 0 then
    return "Notification Time: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (the day the frame that carried it settled on)
  if miax_pearloptions_clearingtradedrop_ctd_v1_2_e.timestamp_format >= 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()

    -- A frame a file handler read states no instant and reads as the epoch
    if capture_time >= 86400 then
      -- The venue's midnight: the frame's instant less the time of day it states
      local settled = math.floor((capture_time - seconds) / 900 + 0.5) * 900

      local midnight = math.floor(settled / 86400 + 0.5) * 86400

      local format = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.timestamp_format == 3 and "!%Y-%m-%d %H:%M:%S." or "%Y-%m-%d %H:%M:%S."
      return "Notification Time: "..os.date(format, midnight + seconds)..string.format("%09d", nanoseconds)
    end
  end

  -- Time of day mode
  return "Notification Time: "..os.date("!%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Notification Time
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.notification_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.notification_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.notification_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.notification_time, range, value, display)

  return offset + length, value
end

-- Open Close Indicator
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.open_close_indicator = {}

-- Size: Open Close Indicator
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.open_close_indicator.size = 1

-- Display: Open Close Indicator
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.open_close_indicator.labels = {
  ["O"] = "Open Close Indicator: Opening Position (O)",
  ["C"] = "Open Close Indicator: Closing Position (C)",
}

miax_pearloptions_clearingtradedrop_ctd_v1_2_e.open_close_indicator.display = function(value)
  return miax_pearloptions_clearingtradedrop_ctd_v1_2_e.open_close_indicator.labels[value] or "Open Close Indicator: Unknown("..value..")"
end

-- Dissect: Open Close Indicator
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.open_close_indicator.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.open_close_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.open_close_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.open_close_indicator, range, value, display)

  return offset + length, value
end

-- Order Date
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.order_date = {}

-- Size: Order Date
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.order_date.size = 4

-- Display: Order Date
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.order_date.display = function(value)
  return "Order Date: "..value
end

-- Dissect: Order Date
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.order_date.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.order_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.order_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.order_date, range, value, display)

  return offset + length, value
end

-- Origin
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.origin = {}

-- Size: Origin
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.origin.size = 1

-- Display: Origin
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.origin.labels = {
  ["C"] = "Origin: Priority Customer (C)",
  ["N"] = "Origin: Non Priority Customer (N)",
  ["F"] = "Origin: Firm (F)",
  ["B"] = "Origin: Broker Dealer (B)",
  ["P"] = "Origin: Member Market Maker (P)",
  ["A"] = "Origin: Away Exchange Market Maker (A)",
}

miax_pearloptions_clearingtradedrop_ctd_v1_2_e.origin.display = function(value)
  return miax_pearloptions_clearingtradedrop_ctd_v1_2_e.origin.labels[value] or "Origin: Unknown("..value..")"
end

-- Dissect: Origin
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.origin.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.origin.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.origin.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.origin, range, value, display)

  return offset + length, value
end

-- Pearl Bbo Posting Increment Indicator
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.pearl_bbo_posting_increment_indicator = {}

-- Size: Pearl Bbo Posting Increment Indicator
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.pearl_bbo_posting_increment_indicator.size = 1

-- Display: Pearl Bbo Posting Increment Indicator
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.pearl_bbo_posting_increment_indicator.labels = {
  ["P"] = "Pearl Bbo Posting Increment Indicator: Penny (P)",
  ["N"] = "Pearl Bbo Posting Increment Indicator: Penny Nickel (N)",
  ["D"] = "Pearl Bbo Posting Increment Indicator: Nickel Dime (D)",
}

miax_pearloptions_clearingtradedrop_ctd_v1_2_e.pearl_bbo_posting_increment_indicator.display = function(value)
  return miax_pearloptions_clearingtradedrop_ctd_v1_2_e.pearl_bbo_posting_increment_indicator.labels[value] or "Pearl Bbo Posting Increment Indicator: Unknown("..value..")"
end

-- Dissect: Pearl Bbo Posting Increment Indicator
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.pearl_bbo_posting_increment_indicator.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.pearl_bbo_posting_increment_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.pearl_bbo_posting_increment_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.pearl_bbo_posting_increment_indicator, range, value, display)

  return offset + length, value
end

-- Percentage Level
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.percentage_level = {}

-- Size: Percentage Level
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.percentage_level.size = 1

-- Display: Percentage Level
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.percentage_level.display = function(value)
  return "Percentage Level: "..value
end

-- Dissect: Percentage Level
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.percentage_level.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.percentage_level.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.percentage_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.percentage_level, range, value, display)

  return offset + length, value
end

-- Price
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.price = {}

-- Size: Price
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.price.size = 4

-- Display: Price
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.price.translate = function(raw)
  return raw/10000
end

-- Dissect: Price
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.price.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.price.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.price.translate(raw)
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.price, range, value, display)

  return offset + length, value
end

-- Processing Time
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.processing_time = {}

-- Size: Processing Time
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.processing_time.size = 8

-- Display: Processing Time
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.processing_time.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if miax_pearloptions_clearingtradedrop_ctd_v1_2_e.timestamp_format == 0 then
    return "Processing Time: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (the day the frame that carried it settled on)
  if miax_pearloptions_clearingtradedrop_ctd_v1_2_e.timestamp_format >= 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()

    -- A frame a file handler read states no instant and reads as the epoch
    if capture_time >= 86400 then
      -- The venue's midnight: the frame's instant less the time of day it states
      local settled = math.floor((capture_time - seconds) / 900 + 0.5) * 900

      local midnight = math.floor(settled / 86400 + 0.5) * 86400

      local format = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.timestamp_format == 3 and "!%Y-%m-%d %H:%M:%S." or "%Y-%m-%d %H:%M:%S."
      return "Processing Time: "..os.date(format, midnight + seconds)..string.format("%09d", nanoseconds)
    end
  end

  -- Time of day mode
  return "Processing Time: "..os.date("!%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Processing Time
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.processing_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.processing_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.processing_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.processing_time, range, value, display)

  return offset + length, value
end

-- Product Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.product_id = {}

-- Size: Product Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.product_id.size = 4

-- Display: Product Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.product_id.display = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.product_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.product_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.product_id, range, value, display)

  return offset + length, value
end

-- Protection Type
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.protection_type = {}

-- Size: Protection Type
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.protection_type.size = 1

-- Display: Protection Type
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.protection_type.labels = {
  ["B"] = "Protection Type: Block (B)",
  ["M"] = "Protection Type: Block And Mass Cancel (M)",
  ["W"] = "Protection Type: Warning Only (W)",
  ["*"] = "Protection Type: Downgraded For Older Version (*)",
}

miax_pearloptions_clearingtradedrop_ctd_v1_2_e.protection_type.display = function(value)
  return miax_pearloptions_clearingtradedrop_ctd_v1_2_e.protection_type.labels[value] or "Protection Type: Unknown("..value..")"
end

-- Dissect: Protection Type
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.protection_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.protection_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.protection_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.protection_type, range, value, display)

  return offset + length, value
end

-- Reference Correction Number
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reference_correction_number = {}

-- Size: Reference Correction Number
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reference_correction_number.size = 1

-- Display: Reference Correction Number
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reference_correction_number.display = function(value)
  return "Reference Correction Number: "..value
end

-- Dissect: Reference Correction Number
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reference_correction_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reference_correction_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reference_correction_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.reference_correction_number, range, value, display)

  return offset + length, value
end

-- Reference Trade Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reference_trade_id = {}

-- Size: Reference Trade Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reference_trade_id.size = 4

-- Display: Reference Trade Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reference_trade_id.display = function(value)
  return "Reference Trade Id: "..value
end

-- Dissect: Reference Trade Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reference_trade_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reference_trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reference_trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.reference_trade_id, range, value, display)

  return offset + length, value
end

-- Reference Trade Time
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reference_trade_time = {}

-- Size: Reference Trade Time
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reference_trade_time.size = 8

-- Display: Reference Trade Time
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reference_trade_time.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if miax_pearloptions_clearingtradedrop_ctd_v1_2_e.timestamp_format == 0 then
    return "Reference Trade Time: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (the day the frame that carried it settled on)
  if miax_pearloptions_clearingtradedrop_ctd_v1_2_e.timestamp_format >= 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()

    -- A frame a file handler read states no instant and reads as the epoch
    if capture_time >= 86400 then
      -- The venue's midnight: the frame's instant less the time of day it states
      local settled = math.floor((capture_time - seconds) / 900 + 0.5) * 900

      local midnight = math.floor(settled / 86400 + 0.5) * 86400

      local format = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.timestamp_format == 3 and "!%Y-%m-%d %H:%M:%S." or "%Y-%m-%d %H:%M:%S."
      return "Reference Trade Time: "..os.date(format, midnight + seconds)..string.format("%09d", nanoseconds)
    end
  end

  -- Time of day mode
  return "Reference Trade Time: "..os.date("!%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Reference Trade Time
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reference_trade_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reference_trade_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reference_trade_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.reference_trade_time, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.requested_sequence_number = {}

-- Size: Requested Sequence Number
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.requested_sequence_number.size = 8

-- Display: Requested Sequence Number
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.requested_session = {}

-- Size: Requested Session
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.requested_session.size = 1

-- Display: Requested Session
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.requested_session.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Reserved 15
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reserved_15 = {}

-- Size: Reserved 15
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reserved_15.size = 15

-- Display: Reserved 15
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reserved_15.display = function(value)
  return "Reserved 15: "..value
end

-- Dissect: Reserved 15
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reserved_15.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reserved_15.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reserved_15.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.reserved_15, range, value, display)

  return offset + length, value
end

-- Reserved 16
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reserved_16 = {}

-- Size: Reserved 16
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reserved_16.size = 16

-- Display: Reserved 16
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reserved_16.display = function(value)
  return "Reserved 16: "..value
end

-- Dissect: Reserved 16
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reserved_16.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reserved_16.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reserved_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.reserved_16, range, value, display)

  return offset + length, value
end

-- Reserved 20
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reserved_20 = {}

-- Size: Reserved 20
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reserved_20.size = 20

-- Display: Reserved 20
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reserved_20.display = function(value)
  return "Reserved 20: "..value
end

-- Dissect: Reserved 20
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reserved_20.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reserved_20.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reserved_20.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.reserved_20, range, value, display)

  return offset + length, value
end

-- Reserved 32
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reserved_32 = {}

-- Size: Reserved 32
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reserved_32.size = 32

-- Display: Reserved 32
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reserved_32.display = function(value)
  return "Reserved 32: "..value
end

-- Dissect: Reserved 32
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reserved_32.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reserved_32.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reserved_32.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.reserved_32, range, value, display)

  return offset + length, value
end

-- Reserved 8
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reserved_8 = {}

-- Size: Reserved 8
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reserved_8.size = 8

-- Display: Reserved 8
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reserved_8.display = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.reserved_8, range, value, display)

  return offset + length, value
end

-- Route Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.route_id = {}

-- Size: Route Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.route_id.size = 32

-- Display: Route Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.route_id.display = function(value)
  return "Route Id: "..value
end

-- Dissect: Route Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.route_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.route_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.route_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.route_id, range, value, display)

  return offset + length, value
end

-- Routed Order Quantity
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.routed_order_quantity = {}

-- Size: Routed Order Quantity
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.routed_order_quantity.size = 4

-- Display: Routed Order Quantity
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.routed_order_quantity.display = function(value)
  return "Routed Order Quantity: "..value
end

-- Dissect: Routed Order Quantity
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.routed_order_quantity.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.routed_order_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.routed_order_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.routed_order_quantity, range, value, display)

  return offset + length, value
end

-- Second Reserved 20
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.second_reserved_20 = {}

-- Size: Second Reserved 20
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.second_reserved_20.size = 20

-- Display: Second Reserved 20
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.second_reserved_20.display = function(value)
  return "Second Reserved 20: "..value
end

-- Dissect: Second Reserved 20
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.second_reserved_20.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.second_reserved_20.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.second_reserved_20.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.second_reserved_20, range, value, display)

  return offset + length, value
end

-- Second Reserved 8
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.second_reserved_8 = {}

-- Size: Second Reserved 8
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.second_reserved_8.size = 8

-- Display: Second Reserved 8
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.second_reserved_8.display = function(value)
  return "Second Reserved 8: "..value
end

-- Dissect: Second Reserved 8
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.second_reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.second_reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.second_reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.second_reserved_8, range, value, display)

  return offset + length, value
end

-- Security Symbol
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.security_symbol = {}

-- Size: Security Symbol
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.security_symbol.size = 6

-- Display: Security Symbol
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.security_symbol.display = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.security_symbol.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.security_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.security_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Sequence Number
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sequence_number = {}

-- Size: Sequence Number
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sequence_number.size = 8

-- Display: Sequence Number
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sequenced_message_type = {}

-- Size: Sequenced Message Type
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sequenced_message_type.labels = {
  ["S"] = "Sequenced Message Type: System State (S)",
  ["T"] = "Sequenced Message Type: Trade Message (T)",
  ["R"] = "Sequenced Message Type: Risk Notification Message (R)",
}

miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sequenced_message_type.display = function(value)
  return miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sequenced_message_type.labels[value] or "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Sesm Packet Length
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sesm_packet_length = {}

-- Size: Sesm Packet Length
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sesm_packet_length.size = 2

-- Display: Sesm Packet Length
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sesm_packet_length.display = function(value)
  return "Sesm Packet Length: "..value
end

-- Dissect: Sesm Packet Length
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sesm_packet_length.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sesm_packet_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sesm_packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.sesm_packet_length, range, value, display)

  return offset + length, value
end

-- Sesm Packet Type
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sesm_packet_type = {}

-- Size: Sesm Packet Type
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sesm_packet_type.size = 1

-- Display: Sesm Packet Type
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sesm_packet_type.labels = {
  ["S"] = "Sesm Packet Type: Sequenced Data Packet (S)",
  ["U"] = "Sesm Packet Type: Unsequenced Data Packet (U)",
  ["L"] = "Sesm Packet Type: Login Request (L)",
  ["R"] = "Sesm Packet Type: Login Response (R)",
  ["C"] = "Sesm Packet Type: Synchronization Complete (C)",
  ["A"] = "Sesm Packet Type: Retransmission Request (A)",
  ["X"] = "Sesm Packet Type: Logout Request (X)",
  ["G"] = "Sesm Packet Type: Goodbye Packet (G)",
  ["E"] = "Sesm Packet Type: End Of Session (E)",
  ["0"] = "Sesm Packet Type: Server Heartbeat (0)",
  ["1"] = "Sesm Packet Type: Client Heartbeat (1)",
  ["T"] = "Sesm Packet Type: Test Packet (T)",
}

miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sesm_packet_type.display = function(value)
  return miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sesm_packet_type.labels[value] or "Sesm Packet Type: Unknown("..value..")"
end

-- Dissect: Sesm Packet Type
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sesm_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sesm_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sesm_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.sesm_packet_type, range, value, display)

  return offset + length, value
end

-- Sesm Version
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sesm_version = {}

-- Size: Sesm Version
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sesm_version.size = 5

-- Display: Sesm Version
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sesm_version.display = function(value)
  return "Sesm Version: "..value
end

-- Dissect: Sesm Version
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sesm_version.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sesm_version.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sesm_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.sesm_version, range, value, display)

  return offset + length, value
end

-- Session Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.session_id = {}

-- Size: Session Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.session_id.size = 1

-- Display: Session Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.session_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.session_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.session_id, range, value, display)

  return offset + length, value
end

-- Session ID
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.session_id = {}

-- Size: Session ID
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.session_id.size = 4

-- Display: Session ID
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.session_id.display = function(value)
  return "Session ID: "..value
end

-- Dissect: Session ID
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.session_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.session_id, range, value, display)

  return offset + length, value
end

-- Side
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.side = {}

-- Size: Side
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.side.size = 1

-- Display: Side
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.side.labels = {
  ["B"] = "Side: Buy (B)",
  ["S"] = "Side: Sell (S)",
}

miax_pearloptions_clearingtradedrop_ctd_v1_2_e.side.display = function(value)
  return miax_pearloptions_clearingtradedrop_ctd_v1_2_e.side.labels[value] or "Side: Unknown("..value..")"
end

-- Dissect: Side
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.side.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.side, range, value, display)

  return offset + length, value
end

-- Size
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.size = {}

-- Size: Size
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.size.size = 4

-- Display: Size
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.size.display = function(value)
  return "Size: "..value
end

-- Dissect: Size
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.size.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.size.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.size, range, value, display)

  return offset + length, value
end

-- Start Sequence Number
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.start_sequence_number = {}

-- Size: Start Sequence Number
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.start_sequence_number.size = 8

-- Display: Start Sequence Number
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.start_sequence_number.display = function(value)
  return "Start Sequence Number: "..value
end

-- Dissect: Start Sequence Number
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.start_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.start_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.start_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.start_sequence_number, range, value, display)

  return offset + length, value
end

-- Strike Price
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.strike_price = {}

-- Size: Strike Price
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.strike_price.size = 4

-- Display: Strike Price
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Translate: Strike Price
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.strike_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Strike Price
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.strike_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.strike_price.translate(raw)
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Supplementary Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.supplementary_id = {}

-- Size: Supplementary Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.supplementary_id.size = 13

-- Display: Supplementary Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.supplementary_id.display = function(value)
  return "Supplementary Id: "..value
end

-- Dissect: Supplementary Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.supplementary_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.supplementary_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.supplementary_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.supplementary_id, range, value, display)

  return offset + length, value
end

-- System Status
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.system_status = {}

-- Size: System Status
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.system_status.size = 1

-- Display: System Status
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.system_status.labels = {
  ["C"] = "System Status: End Of Application Messages (C)",
  ["1"] = "System Status: Start Of Test Session (1)",
  ["2"] = "System Status: End Of Test Session (2)",
}

miax_pearloptions_clearingtradedrop_ctd_v1_2_e.system_status.display = function(value)
  return miax_pearloptions_clearingtradedrop_ctd_v1_2_e.system_status.labels[value] or "System Status: Unknown("..value..")"
end

-- Dissect: System Status
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.system_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.system_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.system_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.system_status, range, value, display)

  return offset + length, value
end

-- Test Text
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.test_text = {}

-- Display: Test Text
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.test_text.display = function(value)
  return "Test Text: "..value
end

-- Dissect runtime sized field: Test Text
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.test_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.test_text.display(value, packet, parent, size)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.test_text, range, value, display)

  return offset + size, value
end

-- Third Reserved 20
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.third_reserved_20 = {}

-- Size: Third Reserved 20
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.third_reserved_20.size = 20

-- Display: Third Reserved 20
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.third_reserved_20.display = function(value)
  return "Third Reserved 20: "..value
end

-- Dissect: Third Reserved 20
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.third_reserved_20.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.third_reserved_20.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.third_reserved_20.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.third_reserved_20, range, value, display)

  return offset + length, value
end

-- Time In Force
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.time_in_force = {}

-- Size: Time In Force
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.time_in_force.size = 1

-- Display: Time In Force
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.time_in_force.labels = {
  ["0"] = "Time In Force: Day (0)",
  ["1"] = "Time In Force: Gtc (1)",
  ["3"] = "Time In Force: Ioc (3)",
  ["*"] = "Time In Force: Downgraded For Older Version (*)",
}

miax_pearloptions_clearingtradedrop_ctd_v1_2_e.time_in_force.display = function(value)
  return miax_pearloptions_clearingtradedrop_ctd_v1_2_e.time_in_force.labels[value] or "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.time_in_force.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Trade Action
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_action = {}

-- Size: Trade Action
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_action.size = 1

-- Display: Trade Action
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_action.labels = {
  ["N"] = "Trade Action: New Trade (N)",
  ["C"] = "Trade Action: Trade Correction (C)",
  ["X"] = "Trade Action: Trade Cancel (X)",
}

miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_action.display = function(value)
  return miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_action.labels[value] or "Trade Action: Unknown("..value..")"
end

-- Dissect: Trade Action
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_action.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.trade_action, range, value, display)

  return offset + length, value
end

-- Trade As Of Date
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_as_of_date = {}

-- Size: Trade As Of Date
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_as_of_date.size = 4

-- Display: Trade As Of Date
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_as_of_date.display = function(value)
  return "Trade As Of Date: "..value
end

-- Dissect: Trade As Of Date
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_as_of_date.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_as_of_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_as_of_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.trade_as_of_date, range, value, display)

  return offset + length, value
end

-- Trade Condition
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_condition = {}

-- Size: Trade Condition
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_condition.size = 1

-- Display: Trade Condition
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_condition.display = function(value)
  if value == " " then
    return "Trade Condition: Regular (<whitespace>)"
  end
  if value == "A" then
    return "Trade Condition: Cancel Of Trade Previously Reported Other Than As The Last Or Opening (A)"
  end
  if value == "B" then
    return "Trade Condition: Late And Is Out Of Sequence (B)"
  end
  if value == "C" then
    return "Trade Condition: Cancel Of The Last Reported Trade (C)"
  end
  if value == "D" then
    return "Trade Condition: Late And Is In Correct Sequence (D)"
  end
  if value == "E" then
    return "Trade Condition: Cancel Of The First Reported Trade (E)"
  end
  if value == "F" then
    return "Trade Condition: Late Report Of The Opening Trade And Is Out Of Sequence (F)"
  end
  if value == "G" then
    return "Trade Condition: Cancel Of The Only Reported Trade (G)"
  end
  if value == "H" then
    return "Trade Condition: Late Report Of The Opening Trade And Is In Correct Sequence (H)"
  end
  if value == "I" then
    return "Trade Condition: Auto (I)"
  end
  if value == "J" then
    return "Trade Condition: Reopening Of An Option (J)"
  end
  if value == "K" then
    return "Trade Condition: Reserved (K)"
  end
  if value == "L" then
    return "Trade Condition: Reserved (L)"
  end
  if value == "M" then
    return "Trade Condition: Reserved (M)"
  end
  if value == "N" then
    return "Trade Condition: Reserved (N)"
  end
  if value == "O" then
    return "Trade Condition: Reserved (O)"
  end
  if value == "P" then
    return "Trade Condition: Reserved (P)"
  end
  if value == "Q" then
    return "Trade Condition: Reserved (Q)"
  end
  if value == "R" then
    return "Trade Condition: Execution Of A Stopped Order (R)"
  end
  if value == "S" then
    return "Trade Condition: Execution Of An Iso Order (S)"
  end
  if value == "T" then
    return "Trade Condition: Reserved (T)"
  end
  if value == "X" then
    return "Trade Condition: Trade Through Exempt (X)"
  end
  if value == "a" then
    return "Trade Condition: Paired Prime (a)"
  end
  if value == "b" then
    return "Trade Condition: Reserved (b)"
  end
  if value == "c" then
    return "Trade Condition: Prime Customer To Customer Cross Or Prime Qcc (c)"
  end
  if value == "d" then
    return "Trade Condition: Reserved (d)"
  end
  if value == "e" then
    return "Trade Condition: Reserved (e)"
  end
  if value == "f" then
    return "Trade Condition: Complex Not Stock Tied No Legging (f)"
  end
  if value == "g" then
    return "Trade Condition: Complex Prime Not Stock Tied No Legging (g)"
  end
  if value == "h" then
    return "Trade Condition: Complex Prime Customer To Customer Cross Or Qcc Not Stock Tied (h)"
  end
  if value == "i" then
    return "Trade Condition: Reserved (i)"
  end
  if value == "j" then
    return "Trade Condition: Complex Legging Not Stock Tied (j)"
  end
  if value == "k" then
    return "Trade Condition: Complex Prime Stock Tied No Legging (k)"
  end
  if value == "l" then
    return "Trade Condition: Complex Prime Legging Not Stock Tied (l)"
  end
  if value == "m" then
    return "Trade Condition: Reserved (m)"
  end
  if value == "n" then
    return "Trade Condition: Complex Stock Tied No Legging (n)"
  end
  if value == "o" then
    return "Trade Condition: Complex Customer To Customer Cross Or Qcc Stock Tied (o)"
  end
  if value == "p" then
    return "Trade Condition: Reserved (p)"
  end
  if value == "q" then
    return "Trade Condition: Reserved (q)"
  end
  if value == "r" then
    return "Trade Condition: Reserved (r)"
  end
  if value == "s" then
    return "Trade Condition: Reserved (s)"
  end
  if value == "t" then
    return "Trade Condition: Reserved (t)"
  end

  return "Trade Condition: Unknown("..value..")"
end

-- Dissect: Trade Condition
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_condition.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Trade Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_id = {}

-- Size: Trade Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_id.size = 4

-- Display: Trade Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trade Time
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_time = {}

-- Size: Trade Time
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_time.size = 8

-- Display: Trade Time
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_time.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if miax_pearloptions_clearingtradedrop_ctd_v1_2_e.timestamp_format == 0 then
    return "Trade Time: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (the day the frame that carried it settled on)
  if miax_pearloptions_clearingtradedrop_ctd_v1_2_e.timestamp_format >= 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()

    -- A frame a file handler read states no instant and reads as the epoch
    if capture_time >= 86400 then
      -- The venue's midnight: the frame's instant less the time of day it states
      local settled = math.floor((capture_time - seconds) / 900 + 0.5) * 900

      local midnight = math.floor(settled / 86400 + 0.5) * 86400

      local format = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.timestamp_format == 3 and "!%Y-%m-%d %H:%M:%S." or "%Y-%m-%d %H:%M:%S."
      return "Trade Time: "..os.date(format, midnight + seconds)..string.format("%09d", nanoseconds)
    end
  end

  -- Time of day mode
  return "Trade Time: "..os.date("!%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Trade Time
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.trade_time, range, value, display)

  return offset + length, value
end

-- Trade Type
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_type = {}

-- Size: Trade Type
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_type.size = 1

-- Display: Trade Type
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_type.labels = {
  ["A"] = "Trade Type: Automatic (A)",
  ["M"] = "Trade Type: Manual (M)",
}

miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_type.display = function(value)
  return miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_type.labels[value] or "Trade Type: Unknown("..value..")"
end

-- Dissect: Trade Type
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.trade_type, range, value, display)

  return offset + length, value
end

-- Transaction Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.transaction_id = {}

-- Size: Transaction Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.transaction_id.size = 4

-- Display: Transaction Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.transaction_id.display = function(value)
  return "Transaction Id: "..value
end

-- Dissect: Transaction Id
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.transaction_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.transaction_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.transaction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.transaction_id, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.underlying_symbol = {}

-- Size: Underlying Symbol
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.underlying_symbol.size = 11

-- Display: Underlying Symbol
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.underlying_symbol.display = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.underlying_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Underlying Type
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.underlying_type = {}

-- Size: Underlying Type
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.underlying_type.size = 1

-- Display: Underlying Type
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.underlying_type.labels = {
  ["F"] = "Underlying Type: Etf (F)",
  ["I"] = "Underlying Type: Index (I)",
  ["E"] = "Underlying Type: Equity (E)",
}

miax_pearloptions_clearingtradedrop_ctd_v1_2_e.underlying_type.display = function(value)
  return miax_pearloptions_clearingtradedrop_ctd_v1_2_e.underlying_type.labels[value] or "Underlying Type: Unknown("..value..")"
end

-- Dissect: Underlying Type
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.underlying_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.underlying_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.underlying_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.underlying_type, range, value, display)

  return offset + length, value
end

-- Unsequenced Message Type
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.unsequenced_message_type.labels = {
  ["R"] = "Unsequenced Message Type: Risk Notification Message (R)",
}

miax_pearloptions_clearingtradedrop_ctd_v1_2_e.unsequenced_message_type.display = function(value)
  return miax_pearloptions_clearingtradedrop_ctd_v1_2_e.unsequenced_message_type.labels[value] or "Unsequenced Message Type: Unknown("..value..")"
end

-- Dissect: Unsequenced Message Type
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Username
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.username = {}

-- Size: Username
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.username.size = 5

-- Display: Username
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.username.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Miax PearlOptions ClearingTradeDrop Ctd 1.2.e
-----------------------------------------------------------------------

-- Test Packet
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.test_packet = {}

-- Calculate size of: Test Packet
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.test_packet.size = function(buffer, offset)
  local index = 0

  -- Parse runtime size of: Test Text
  index = index + buffer(offset + index - 3, 2):le_uint()

  return index
end

-- Display: Test Packet
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.test_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Test Packet
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.test_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Test Text
  local size_of_test_text = sesm_packet_length - 1

  -- Test Text: 0 Byte Ascii String
  index, test_text = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.test_text.dissect(buffer, index, packet, parent, size_of_test_text)

  return index
end

-- Dissect: Test Packet
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.test_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.test_packet, buffer(offset, 0))
    local index = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.test_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.test_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_clearingtradedrop_ctd_v1_2_e.test_packet.fields(buffer, offset, packet, parent)
  end
end

-- Client Heartbeat
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.client_heartbeat = {}

-- Display: Client Heartbeat
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.client_heartbeat.display = function(packet, parent, length)
  return "Client Heartbeat"
end


-- Dissect: Client Heartbeat
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.client_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.client_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Server Heartbeat
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.server_heartbeat = {}

-- Display: Server Heartbeat
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.server_heartbeat.display = function(packet, parent, length)
  return "Server Heartbeat"
end


-- Dissect: Server Heartbeat
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.server_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.server_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- End Of Session
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.end_of_session = {}

-- Display: End Of Session
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Goodbye Packet
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.goodbye_packet = {}

-- Calculate size of: Goodbye Packet
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.goodbye_packet.size = function(buffer, offset)
  local index = 0

  index = index + miax_pearloptions_clearingtradedrop_ctd_v1_2_e.goodbye_reason.size

  -- Parse runtime size of: Logout Text
  index = index + buffer(offset + index - 4, 2):le_uint()

  return index
end

-- Display: Goodbye Packet
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.goodbye_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Goodbye Packet
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.goodbye_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Goodbye Reason: 1 Byte Ascii String Enum with 3 values
  index, goodbye_reason = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.goodbye_reason.dissect(buffer, index, packet, parent)

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Logout Text
  local size_of_logout_text = sesm_packet_length - 2

  -- Logout Text: 0 Byte Ascii String
  index, logout_text = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.logout_text.dissect(buffer, index, packet, parent, size_of_logout_text)

  return index
end

-- Dissect: Goodbye Packet
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.goodbye_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.goodbye_packet, buffer(offset, 0))
    local index = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.goodbye_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.goodbye_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_clearingtradedrop_ctd_v1_2_e.goodbye_packet.fields(buffer, offset, packet, parent)
  end
end

-- Logout Request
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.logout_request = {}

-- Calculate size of: Logout Request
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.logout_request.size = function(buffer, offset)
  local index = 0

  index = index + miax_pearloptions_clearingtradedrop_ctd_v1_2_e.logout_reason.size

  -- Parse runtime size of: Logout Text
  index = index + buffer(offset + index - 4, 2):le_uint()

  return index
end

-- Display: Logout Request
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.logout_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Request
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.logout_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logout Reason: 1 Byte Ascii String Enum with 4 values
  index, logout_reason = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.logout_reason.dissect(buffer, index, packet, parent)

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Logout Text
  local size_of_logout_text = sesm_packet_length - 2

  -- Logout Text: 0 Byte Ascii String
  index, logout_text = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.logout_text.dissect(buffer, index, packet, parent, size_of_logout_text)

  return index
end

-- Dissect: Logout Request
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.logout_request.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.logout_request, buffer(offset, 0))
    local index = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.logout_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.logout_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_clearingtradedrop_ctd_v1_2_e.logout_request.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Request
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.retransmission_request = {}

-- Size: Retransmission Request
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.retransmission_request.size =
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.start_sequence_number.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.end_sequence_number.size

-- Display: Retransmission Request
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.retransmission_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.retransmission_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, start_sequence_number = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.start_sequence_number.dissect(buffer, index, packet, parent)

  -- End Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, end_sequence_number = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.end_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.retransmission_request.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.retransmission_request, buffer(offset, 0))
    local index = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.retransmission_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.retransmission_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_clearingtradedrop_ctd_v1_2_e.retransmission_request.fields(buffer, offset, packet, parent)
  end
end

-- Synchronization Complete
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.synchronization_complete = {}

-- Display: Synchronization Complete
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.synchronization_complete.display = function(packet, parent, length)
  return "Synchronization Complete"
end


-- Dissect: Synchronization Complete
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.synchronization_complete.dissect = function(buffer, offset, packet, parent)
  local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.synchronization_complete.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Login Response
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.login_response = {}

-- Size: Login Response
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.login_response.size =
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.login_status.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.session_id.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.highest_sequence_number.size

-- Display: Login Response
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.login_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.login_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Login Status: 1 Byte Ascii String Enum with 7 values
  index, login_status = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.login_status.dissect(buffer, index, packet, parent)

  -- Session Id: 1 Byte Unsigned Fixed Width Integer
  index, session_id = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.session_id.dissect(buffer, index, packet, parent)

  -- Highest Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, highest_sequence_number = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.highest_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.login_response.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.login_response, buffer(offset, 0))
    local index = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.login_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.login_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_clearingtradedrop_ctd_v1_2_e.login_response.fields(buffer, offset, packet, parent)
  end
end

-- Login Request
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.login_request = {}

-- Size: Login Request
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.login_request.size =
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sesm_version.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.username.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.computer_id.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.application_protocol.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.requested_session.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.requested_sequence_number.size

-- Display: Login Request
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.login_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.login_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sesm Version: 5 Byte Ascii String
  index, sesm_version = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sesm_version.dissect(buffer, index, packet, parent)

  -- Username: 5 Byte Ascii String
  index, username = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.username.dissect(buffer, index, packet, parent)

  -- Computer Id: 8 Byte Ascii String
  index, computer_id = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.computer_id.dissect(buffer, index, packet, parent)

  -- Application Protocol: 8 Byte Ascii String
  index, application_protocol = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.application_protocol.dissect(buffer, index, packet, parent)

  -- Requested Session: 1 Byte Unsigned Fixed Width Integer
  index, requested_session = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, requested_sequence_number = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.login_request.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.login_request, buffer(offset, 0))
    local index = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.login_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.login_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_clearingtradedrop_ctd_v1_2_e.login_request.fields(buffer, offset, packet, parent)
  end
end

-- Risk Notification Message
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.risk_notification_message = {}

-- Size: Risk Notification Message
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.risk_notification_message.size =
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.processing_time.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.mpid_group_id.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.metric_id.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.route_id.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.metric_type.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.protection_type.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.event_type.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.event_id.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.configured_counting_time_period.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.configured_max_quantity.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.current_quantity.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.max_peak_quantity.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.percentage_level.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reserved_32.size

-- Display: Risk Notification Message
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.risk_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Risk Notification Message
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.risk_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Processing Time: NanoTime
  index, processing_time = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.processing_time.dissect(buffer, index, packet, parent)

  -- Mpid Group Id: Alphanumeric
  index, mpid_group_id = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.mpid_group_id.dissect(buffer, index, packet, parent)

  -- Metric Id: Alphanumeric
  index, metric_id = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.metric_id.dissect(buffer, index, packet, parent)

  -- Route Id: Alphanumeric
  index, route_id = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.route_id.dissect(buffer, index, packet, parent)

  -- Metric Type: Alphanumeric
  index, metric_type = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.metric_type.dissect(buffer, index, packet, parent)

  -- Protection Type: Alphanumeric
  index, protection_type = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.protection_type.dissect(buffer, index, packet, parent)

  -- Event Type: Alphanumeric
  index, event_type = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.event_type.dissect(buffer, index, packet, parent)

  -- Event Id: Binary4U
  index, event_id = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.event_id.dissect(buffer, index, packet, parent)

  -- Configured Counting Time Period: Binary4U
  index, configured_counting_time_period = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.configured_counting_time_period.dissect(buffer, index, packet, parent)

  -- Configured Max Quantity: Binary4U
  index, configured_max_quantity = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.configured_max_quantity.dissect(buffer, index, packet, parent)

  -- Current Quantity: Binary4U
  index, current_quantity = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.current_quantity.dissect(buffer, index, packet, parent)

  -- Max Peak Quantity: Binary4U
  index, max_peak_quantity = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.max_peak_quantity.dissect(buffer, index, packet, parent)

  -- Percentage Level: BinaryU
  index, percentage_level = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.percentage_level.dissect(buffer, index, packet, parent)

  -- Reserved 32: Binary4U
  if show.padding then
    index, reserved_32 = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reserved_32.dissect(buffer, index, packet, parent)
  else
    index = index + miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reserved_32.size
  end

  return index
end

-- Dissect: Risk Notification Message
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.risk_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.risk_notification_message, buffer(offset, 0))
    local index = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.risk_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.risk_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_clearingtradedrop_ctd_v1_2_e.risk_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Unsequenced Message
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.unsequenced_message = {}

-- Dispatch: Unsequenced Message
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.unsequenced_message.dispatch = {
  ["R"] = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.risk_notification_message.dissect,
}

-- Dissect: Unsequenced Message
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.unsequenced_message.dissect = function(buffer, offset, packet, parent, unsequenced_message_type)
  local dissect = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.unsequenced_message.dispatch[unsequenced_message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Unsequenced Data Packet
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  return sesm_packet_length - 1
end

-- Display: Unsequenced Data Packet
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String Enum with 1 values
  index, unsequenced_message_type = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Unsequenced Message: Runtime Type with 1 branches
  index = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.unsequenced_message.dissect(buffer, index, packet, parent, unsequenced_message_type)

  return index
end

-- Dissect: Unsequenced Data Packet
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_pearloptions_clearingtradedrop_ctd_v1_2_e.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Trade Message
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_message = {}

-- Size: Trade Message
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_message.size =
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.processing_time.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_time.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_as_of_date.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_action.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_type.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_id.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.execution_id.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.correction_number.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.transaction_id.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reference_trade_time.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reference_trade_id.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reference_correction_number.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.correction_type.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reserved_20.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.product_id.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.underlying_symbol.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.underlying_type.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.security_symbol.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.expiration_date.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.strike_price.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.call_or_put.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reserved_8.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.side.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.price.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.size.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_condition.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.second_reserved_8.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.class_fee_type.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.pearl_bbo_posting_increment_indicator.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.execution_exchange.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.routed_order_quantity.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.market_state.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.free_trading_condition.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.second_reserved_20.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.executing_mpid.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.order_date.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fix_order_id.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.client_order_id.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.client_message_id.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.bulk_liquidity_index.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.open_close_indicator.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.liquidity_type.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.liquidity_indicator.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.time_in_force.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.third_reserved_20.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.clearing_mpid.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.member_type.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.origin.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.clearing_number.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.cmta.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.multi_account.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.account_id.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.supplementary_id.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reserved_16.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.mpid.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.contra_member_type.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.contra_origin.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.contra_clearing_number.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.contra_cmta.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.contra_time_in_force.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reserved_15.size

-- Display: Trade Message
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Processing Time: NanoTime
  index, processing_time = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.processing_time.dissect(buffer, index, packet, parent)

  -- Trade Time: NanoTime
  index, trade_time = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_time.dissect(buffer, index, packet, parent)

  -- Trade As Of Date: BinaryU
  index, trade_as_of_date = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_as_of_date.dissect(buffer, index, packet, parent)

  -- Trade Action: Alphanumeric
  index, trade_action = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_action.dissect(buffer, index, packet, parent)

  -- Trade Type: Alphanumeric
  index, trade_type = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_type.dissect(buffer, index, packet, parent)

  -- Trade Id: BinaryU
  index, trade_id = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_id.dissect(buffer, index, packet, parent)

  -- Execution Id: BinaryU
  index, execution_id = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.execution_id.dissect(buffer, index, packet, parent)

  -- Correction Number: BinaryU
  index, correction_number = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.correction_number.dissect(buffer, index, packet, parent)

  -- Transaction Id: BinaryU
  index, transaction_id = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.transaction_id.dissect(buffer, index, packet, parent)

  -- Reference Trade Time: NanoTime
  index, reference_trade_time = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reference_trade_time.dissect(buffer, index, packet, parent)

  -- Reference Trade Id: BinaryU
  index, reference_trade_id = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reference_trade_id.dissect(buffer, index, packet, parent)

  -- Reference Correction Number: BinaryU
  index, reference_correction_number = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reference_correction_number.dissect(buffer, index, packet, parent)

  -- Correction Type: Alphanumeric
  index, correction_type = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.correction_type.dissect(buffer, index, packet, parent)

  -- Reserved 20: BinaryU
  if show.padding then
    index, reserved_20 = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reserved_20.dissect(buffer, index, packet, parent)
  else
    index = index + miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reserved_20.size
  end

  -- Product Id: BinaryU
  index, product_id = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.product_id.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Underlying Type: Alphanumeric
  index, underlying_type = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.underlying_type.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration Date: BinaryU
  index, expiration_date = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.expiration_date.dissect(buffer, index, packet, parent)

  -- Strike Price: BinaryPrc4U
  index, strike_price = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.strike_price.dissect(buffer, index, packet, parent)

  -- Call Or Put: Alphanumeric
  index, call_or_put = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.call_or_put.dissect(buffer, index, packet, parent)

  -- Reserved 8: BinaryU
  if show.padding then
    index, reserved_8 = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reserved_8.dissect(buffer, index, packet, parent)
  else
    index = index + miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reserved_8.size
  end

  -- Side: Alphanumeric
  index, side = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.side.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrc4U
  index, price = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.price.dissect(buffer, index, packet, parent)

  -- Size: BinaryU
  index, size = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.size.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_condition.dissect(buffer, index, packet, parent)

  -- Second Reserved 8: BinaryU
  if show.padding then
    index, second_reserved_8 = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.second_reserved_8.dissect(buffer, index, packet, parent)
  else
    index = index + miax_pearloptions_clearingtradedrop_ctd_v1_2_e.second_reserved_8.size
  end

  -- Class Fee Type: Alphanumeric
  index, class_fee_type = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.class_fee_type.dissect(buffer, index, packet, parent)

  -- Pearl Bbo Posting Increment Indicator: Alphanumeric
  index, pearl_bbo_posting_increment_indicator = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.pearl_bbo_posting_increment_indicator.dissect(buffer, index, packet, parent)

  -- Execution Exchange: Alphanumeric
  index, execution_exchange = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.execution_exchange.dissect(buffer, index, packet, parent)

  -- Routed Order Quantity: BinaryU
  index, routed_order_quantity = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.routed_order_quantity.dissect(buffer, index, packet, parent)

  -- Market State: Alphanumeric
  index, market_state = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.market_state.dissect(buffer, index, packet, parent)

  -- Free Trading Condition: Alphanumeric
  index, free_trading_condition = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.free_trading_condition.dissect(buffer, index, packet, parent)

  -- Second Reserved 20: BinaryU
  if show.padding then
    index, second_reserved_20 = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.second_reserved_20.dissect(buffer, index, packet, parent)
  else
    index = index + miax_pearloptions_clearingtradedrop_ctd_v1_2_e.second_reserved_20.size
  end

  -- Executing Mpid: Alphanumeric
  index, executing_mpid = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.executing_mpid.dissect(buffer, index, packet, parent)

  -- Order Date: BinaryU
  index, order_date = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.order_date.dissect(buffer, index, packet, parent)

  -- Fix Order Id: Alphanumeric
  index, fix_order_id = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fix_order_id.dissect(buffer, index, packet, parent)

  -- Client Order Id: BinaryU
  index, client_order_id = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.client_order_id.dissect(buffer, index, packet, parent)

  -- Client Message Id: BinaryU
  index, client_message_id = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.client_message_id.dissect(buffer, index, packet, parent)

  -- Bulk Liquidity Index: BinaryU
  index, bulk_liquidity_index = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.bulk_liquidity_index.dissect(buffer, index, packet, parent)

  -- Open Close Indicator: Alphanumeric
  index, open_close_indicator = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.open_close_indicator.dissect(buffer, index, packet, parent)

  -- Liquidity Type: Alphanumeric
  index, liquidity_type = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.liquidity_type.dissect(buffer, index, packet, parent)

  -- Liquidity Indicator: Alphanumeric
  index, liquidity_indicator = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Time In Force: Alphanumeric
  index, time_in_force = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.time_in_force.dissect(buffer, index, packet, parent)

  -- Third Reserved 20: BinaryU
  if show.padding then
    index, third_reserved_20 = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.third_reserved_20.dissect(buffer, index, packet, parent)
  else
    index = index + miax_pearloptions_clearingtradedrop_ctd_v1_2_e.third_reserved_20.size
  end

  -- Clearing Mpid: Alphanumeric
  index, clearing_mpid = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.clearing_mpid.dissect(buffer, index, packet, parent)

  -- Member Type: Alphanumeric
  index, member_type = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.member_type.dissect(buffer, index, packet, parent)

  -- Origin: Alphanumeric
  index, origin = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.origin.dissect(buffer, index, packet, parent)

  -- Clearing Number: BinaryU
  index, clearing_number = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.clearing_number.dissect(buffer, index, packet, parent)

  -- Cmta: BinaryU
  index, cmta = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.cmta.dissect(buffer, index, packet, parent)

  -- Multi Account: Alphanumeric
  index, multi_account = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.multi_account.dissect(buffer, index, packet, parent)

  -- Account Id: Alphanumeric
  index, account_id = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.account_id.dissect(buffer, index, packet, parent)

  -- Supplementary Id: Alphanumeric
  index, supplementary_id = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.supplementary_id.dissect(buffer, index, packet, parent)

  -- Reserved 16: BinaryU
  if show.padding then
    index, reserved_16 = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reserved_16.dissect(buffer, index, packet, parent)
  else
    index = index + miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reserved_16.size
  end

  -- Mpid: Alphanumeric
  index, mpid = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.mpid.dissect(buffer, index, packet, parent)

  -- Contra Member Type: Alphanumeric
  index, contra_member_type = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.contra_member_type.dissect(buffer, index, packet, parent)

  -- Contra Origin: Alphanumeric
  index, contra_origin = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.contra_origin.dissect(buffer, index, packet, parent)

  -- Contra Clearing Number: BinaryU
  index, contra_clearing_number = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.contra_clearing_number.dissect(buffer, index, packet, parent)

  -- Contra Cmta: BinaryU
  index, contra_cmta = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.contra_cmta.dissect(buffer, index, packet, parent)

  -- Contra Time In Force: Alphanumeric
  index, contra_time_in_force = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.contra_time_in_force.dissect(buffer, index, packet, parent)

  -- Reserved 15: BinaryU
  if show.padding then
    index, reserved_15 = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reserved_15.dissect(buffer, index, packet, parent)
  else
    index = index + miax_pearloptions_clearingtradedrop_ctd_v1_2_e.reserved_15.size
  end

  return index
end

-- Dissect: Trade Message
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.trade_message, buffer(offset, 0))
    local index = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- System State
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.system_state = {}

-- Size: System State
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.system_state.size =
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.notification_time.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.ctd_version.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.session_id.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.system_status.size

-- Display: System State
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.system_state.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System State
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.system_state.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: NanoTime
  index, notification_time = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.notification_time.dissect(buffer, index, packet, parent)

  -- Ctd Version: Alphanumeric
  index, ctd_version = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.ctd_version.dissect(buffer, index, packet, parent)

  -- Session ID: BinaryU
  index, session_id = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.session_id.dissect(buffer, index, packet, parent)

  -- System Status: Alphanumeric
  index, system_status = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.system_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System State
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.system_state.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.system_state, buffer(offset, 0))
    local index = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.system_state.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.system_state.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_clearingtradedrop_ctd_v1_2_e.system_state.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sequenced_message = {}

-- Dispatch: Sequenced Message
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sequenced_message.dispatch = {
  ["S"] = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.system_state.dissect,
  ["T"] = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.trade_message.dissect,
  ["R"] = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.risk_notification_message.dissect,
}

-- Dissect: Sequenced Message
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  local dissect = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sequenced_message.dispatch[sequenced_message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Data Packet
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  return sesm_packet_length - 1
end

-- Display: Sequenced Data Packet
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sequence_number.dissect(buffer, index, packet, parent)

  -- Sequenced Message Type: 1 Byte Ascii String Enum with 3 values
  index, sequenced_message_type = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 3 branches
  index = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.sequenced_data_packet, buffer(offset, 0))
    local current = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
end

-- Sesm Payload
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sesm_payload = {}

-- Dispatch: Sesm Payload
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sesm_payload.dispatch = {
  ["S"] = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sequenced_data_packet.dissect,
  ["U"] = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.unsequenced_data_packet.dissect,
  ["L"] = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.login_request.dissect,
  ["R"] = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.login_response.dissect,
  ["C"] = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.synchronization_complete.dissect,
  ["A"] = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.retransmission_request.dissect,
  ["X"] = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.logout_request.dissect,
  ["G"] = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.goodbye_packet.dissect,
  ["E"] = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.end_of_session.dissect,
  ["0"] = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.server_heartbeat.dissect,
  ["1"] = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.client_heartbeat.dissect,
  ["T"] = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.test_packet.dissect,
}

-- Dissect: Sesm Payload
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sesm_payload.dissect = function(buffer, offset, packet, parent, sesm_packet_type)
  local dissect = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sesm_payload.dispatch[sesm_packet_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sesm Packet Header
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sesm_packet_header = {}

-- Size: Sesm Packet Header
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sesm_packet_header.size =
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sesm_packet_length.size + 
  miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sesm_packet_type.size

-- Display: Sesm Packet Header
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sesm_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sesm Packet Header
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sesm_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sesm Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, sesm_packet_length = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sesm_packet_length.dissect(buffer, index, packet, parent)

  -- Sesm Packet Type: 1 Byte Ascii String Enum with 12 values
  index, sesm_packet_type = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sesm_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sesm Packet Header
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sesm_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.sesm_packet_header, buffer(offset, 0))
    local index = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sesm_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sesm_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sesm_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Sesm Tcp Packet
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sesm_tcp_packet = {}

-- Display: Sesm Tcp Packet
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sesm_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sesm Tcp Packet
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sesm_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_sesm_tcp_packet)
  local index = offset

  -- Sesm Packet Header: Struct of 2 fields
  index, sesm_packet_header = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sesm_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Sesm Packet Type
  local sesm_packet_type = buffer(index - 1, 1):string()

  -- Sesm Payload: Runtime Type with 12 branches
  index = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sesm_payload.dissect(buffer, index, packet, parent, sesm_packet_type)

  return index
end

-- Dissect: Sesm Tcp Packet
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sesm_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_sesm_tcp_packet)
  local index = offset + size_of_sesm_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.fields.sesm_tcp_packet, buffer(offset, 0))
    local current = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sesm_tcp_packet.fields(buffer, offset, packet, parent, size_of_sesm_tcp_packet)
    parent:set_len(size_of_sesm_tcp_packet)
    local display = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sesm_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sesm_tcp_packet.fields(buffer, offset, packet, parent, size_of_sesm_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Sesm Tcp Packet
local sesm_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sesm_packet_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 2):le_uint() + 2

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Packet
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.packet = {}

-- Verify required size of Tcp packet
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.packet.requiredsize = function(buffer)
  return buffer:len() >= miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sesm_packet_header.size
end

-- Dissect Packet
miax_pearloptions_clearingtradedrop_ctd_v1_2_e.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Sesm Tcp Packet
  local end_of_payload = buffer:len()

  -- Sesm Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_sesm_tcp_packet = sesm_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_sesm_tcp_packet):tvb()
      index = miax_pearloptions_clearingtradedrop_ctd_v1_2_e.sesm_tcp_packet.dissect(frame, index, packet, parent, size_of_sesm_tcp_packet)
    else
      -- More bytes needed, so set packet information
      packet.desegment_offset = index
      packet.desegment_len = -(available)

      -- Claim the whole buffer: tcp keeps the bytes from desegment_offset for reassembly
      return end_of_payload
    end
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.init()
end

-- Dissector for Miax PearlOptions ClearingTradeDrop Ctd 1.2.e
function omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.name

  -- Dissect protocol
  local protocol = parent:add(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e, buffer(), omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.description, "("..buffer:len().." Bytes)")
  return miax_pearloptions_clearingtradedrop_ctd_v1_2_e.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Miax PearlOptions ClearingTradeDrop Ctd 1.2.e (Tcp)
local function omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not miax_pearloptions_clearingtradedrop_ctd_v1_2_e.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e
  omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Miax PearlOptions ClearingTradeDrop Ctd 1.2.e
omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e:register_heuristic("tcp", omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e_tcp_heuristic)

-- Register Miax PearlOptions ClearingTradeDrop Ctd 1.2.e for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_miax_pearloptions_clearingtradedrop_ctd_v1_2_e)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Miami International Holdings
--   Version: 1.2.e
--   Date: Tuesday, August 4, 2026
--   Specification: Pearl_Clearing_Trade_Drop_CTD_v1.2e.pdf
--   Specification: MIAX PEARL TcpSessionMgmt SesM v1_1e_0 (2023-11-11).pdf
--
-- Script:
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
