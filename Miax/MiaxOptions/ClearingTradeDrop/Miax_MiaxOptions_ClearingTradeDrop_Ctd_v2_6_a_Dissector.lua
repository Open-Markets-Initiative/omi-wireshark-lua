-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Miax MiaxOptions ClearingTradeDrop Ctd 2.6.a Protocol
local omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a = Proto("Omi.Miax.MiaxOptions.ClearingTradeDrop.Ctd.v2.6.a", "Miax MiaxOptions ClearingTradeDrop Ctd 2.6.a")

-- Protocol table
local miax_miaxoptions_clearingtradedrop_ctd_v2_6_a = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Miax MiaxOptions ClearingTradeDrop Ctd 2.6.a Fields
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.account_id = ProtoField.new("Account Id", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.accountid", ftypes.STRING, nil, nil, nil, "Account ID that is supplied in the FIX order")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.allocation_id = ProtoField.new("Allocation Id", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.allocationid", ftypes.STRING, nil, nil, nil, "Individual Allocation ID (Tag 467) for each MIAX PRIME/cPRIME Order participant supplied in the FIX New Order Cross. If not applicable, filled with spaces.")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.application_protocol = ProtoField.new("Application Protocol", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.applicationprotocol", ftypes.STRING, nil, nil, nil, "Eg: MEI1.0 (right padded with spaces)")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.auction_type = ProtoField.new("Auction Type", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.auctiontype", ftypes.STRING, nil, nil, nil, "Simple Market Auction Type. Only applicable when Market State is Auction.")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.billing_clearing_number = ProtoField.new("Billing Clearing Number", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.billingclearingnumber", ftypes.UINT32, nil, nil, nil, "OCC Clearing number to be billed. This defaults to the same as the Clearing Number unless an alternative Billing MPID is specified on order entry. For Trades due to Quotes, eQuotes: MM Clearing Number.")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.billing_mpid = ProtoField.new("Billing Mpid", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.billingmpid", ftypes.STRING, nil, nil, nil, "For Trades due to Orders: specifies the MPID that is being Billed. This defaults to the same as the Executing MPID unless an alternative MPID is specified on order entry. For Trades due to Quotes, eQuotes: MM MPID.")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.bulk_quote_index = ProtoField.new("Bulk Quote Index", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.bulkquoteindex", ftypes.UINT8, nil, nil, nil, "For Trades due to Quotes: Index assigned by MIAX to each quote in bulk quote (Index = quote position in the bulk quote). For Trades due to Orders, eQuotes: zero.")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.call_or_put = ProtoField.new("Call Or Put", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.callorput", ftypes.STRING, nil, nil, nil, "Option leg: Option Type")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.class_fee_type = ProtoField.new("Class Fee Type", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.classfeetype", ftypes.STRING)
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.clearing_mpid = ProtoField.new("Clearing Mpid", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.clearingmpid", ftypes.STRING, nil, nil, nil, "Option leg: Clearing MPID of the member. Stock leg: Underlying MPID or the DTC Account number")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.clearing_number = ProtoField.new("Clearing Number", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.clearingnumber", ftypes.UINT32, nil, nil, nil, "Option leg: OCC Clearing number. Stock leg: 0 (zero)")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.client_message_id = ProtoField.new("Client Message Id", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.clientmessageid", ftypes.UINT32, nil, nil, nil, "For Trades due to Quotes, eQuotes: Firm assigned ID of the Quote or eQuote. For Trades due to Orders: zero.")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.cmta = ProtoField.new("Cmta", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.cmta", ftypes.UINT32, nil, nil, nil, "Option leg: CMTA in case of a give-up trade. Stock leg: 0 (zero)")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.computer_id = ProtoField.new("Computer Id", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.computerid", ftypes.STRING, nil, nil, nil, "ID issued by MIAX during initial setup")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.configured_counting_time_period = ProtoField.new("Configured Counting Time Period", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.configuredcountingtimeperiod", ftypes.UINT32, nil, nil, nil, "Configured time period in milliseconds which is used to consider events for this Metric ID")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.configured_max_quantity = ProtoField.new("Configured Max Quantity", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.configuredmaxquantity", ftypes.UINT32, nil, nil, nil, "Configured max threshold of counted items for the Configured Counting Time interval for this Metric ID. Defines rate for the counting time period.")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.contra_clearing_number = ProtoField.new("Contra Clearing Number", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.contraclearingnumber", ftypes.UINT32, nil, nil, nil, "Option leg: OCC Clearing number. Stock leg: 0 (zero)")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.contra_cmta = ProtoField.new("Contra Cmta", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.contracmta", ftypes.UINT32, nil, nil, nil, "Option leg: CMTA in case of a give-up trade. Stock leg: 0 (zero)")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.contra_liquidity_timer_role = ProtoField.new("Contra Liquidity Timer Role", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.contraliquiditytimerrole", ftypes.STRING, nil, nil, nil, "When the liquidity is involved in a trade occurring in a MIAX PRIME Auction or Timer Event such as a Route and Liquidity Refresh, this field contains the role of the contra liquidity.")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.contra_liquidity_type = ProtoField.new("Contra Liquidity Type", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.contraliquiditytype", ftypes.STRING)
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.contra_member_type = ProtoField.new("Contra Member Type", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.contramembertype", ftypes.STRING, nil, nil, nil, "Member Type")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.contra_order_capacity = ProtoField.new("Contra Order Capacity", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.contraordercapacity", ftypes.STRING, nil, nil, nil, "Order Capacity")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.contra_origin = ProtoField.new("Contra Origin", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.contraorigin", ftypes.STRING, nil, nil, nil, "Origin")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.contra_strategy_timer_role = ProtoField.new("Contra Strategy Timer Role", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.contrastrategytimerrole", ftypes.STRING, nil, nil, nil, "When the liquidity is involved in a trade occurring in a Complex Standard Auction as defined in field Strategy Auction Type, or a cPRIME auction or cC2C or cQCC or RFC crossing, this field contains the role of the liquidity.")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.contra_time_in_force = ProtoField.new("Contra Time In Force", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.contratimeinforce", ftypes.STRING, nil, nil, nil, "ContraTimeInForce")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.correction_number = ProtoField.new("Correction Number", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.correctionnumber", ftypes.UINT8, nil, nil, nil, "Trade correction number. Used to identify version of the trade being corrected or canceled. Increments by 1 for each subsequent correction. While this is 0 for new trades, new trades resulting from corrections may have a non-zero number.")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.correction_type = ProtoField.new("Correction Type", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.correctiontype", ftypes.STRING, nil, nil, nil, "Gives more information to the user when this is a correction.")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.ctd_version = ProtoField.new("Ctd Version", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.ctdversion", ftypes.STRING, nil, nil, nil, "E.g.: CTD2.0. Firms are advised to send CTD Version number certified with MIAX (i.e. CTD2.0).")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.current_quantity = ProtoField.new("Current Quantity", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.currentquantity", ftypes.UINT32, nil, nil, nil, "Current counted quantity at the time of the event for this Metric ID.")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.directed_status = ProtoField.new("Directed Status", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.directedstatus", ftypes.STRING, nil, nil, nil, "Status of directed order flow.")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.end_sequence_number = ProtoField.new("End Sequence Number", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.endsequencenumber", ftypes.UINT64, nil, nil, nil, "Sequence number of the last packet to be retransmitted")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.event_id = ProtoField.new("Event Id", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.eventid", ftypes.UINT32, nil, nil, nil, "Unique ID assigned by MIAX for this event. Can be used to order events. Event Type S Event ID will equal zero")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.event_type = ProtoField.new("Event Type", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.eventtype", ftypes.STRING)
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.executing_mpid = ProtoField.new("Executing Mpid", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.executingmpid", ftypes.STRING, nil, nil, nil, "For Trades due to Orders: MPID of the EEM/OFP (SenderSubID field in FIX order or FirmMPID for MIAX PRIME/cPRIME Order; Note that this will be different than Clearing MPID for MM FIX orders). For Trades due to Quotes, eQuotes: MM MPID.")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.execution_exchange = ProtoField.new("Execution Exchange", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.executionexchange", ftypes.STRING, nil, nil, nil, "Option leg: Market where a customer option order was traded after routing from MIAX")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.execution_id = ProtoField.new("Execution Id", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.executionid", ftypes.UINT64, nil, nil, nil, "MIAX assigned unique Execution ID. Each side of the Clearing trade will have a unique Execution ID.")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.expiration_date = ProtoField.new("Expiration Date", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.expirationdate", ftypes.UINT32, nil, nil, nil, "Option leg: Expiration date of the option in YYYYMMDD format. Stock leg: 0 (zero)")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.fix_order_id = ProtoField.new("Fix Order Id", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.fixorderid", ftypes.STRING, nil, nil, nil, "For Trades due to Orders: Firm assigned Order ID sent via the CLOrderID FIX field. For Trades due to Quotes, eQuotes: Spaces.")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.goodbye_reason = ProtoField.new("Goodbye Reason", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.goodbyereason", ftypes.STRING, nil, nil, nil, "Reason")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.highest_sequence_number = ProtoField.new("Highest Sequence Number", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.highestsequencenumber", ftypes.UINT64, nil, nil, nil, "The highest sequence number that the server currently has for the client")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.leg_reference_id = ProtoField.new("Leg Reference Id", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.legreferenceid", ftypes.STRING, nil, nil, nil, "Client specified ID in FIX complex order for the leg corresponding to the option in this trade.")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.liquidity_indicator = ProtoField.new("Liquidity Indicator", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.liquidityindicator", ftypes.STRING, nil, nil, nil, "Pertains to this side.")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.liquidity_timer_role = ProtoField.new("Liquidity Timer Role", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.liquiditytimerrole", ftypes.STRING, nil, nil, nil, "When the liquidity is involved in a trade occurring in a MIAX PRIME Auction or Timer Event such as a Route and Liquidity Refresh, this field contains the role of the liquidity.")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.liquidity_type = ProtoField.new("Liquidity Type", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.liquiditytype", ftypes.STRING, nil, nil, nil, "Pertains to this side.")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.login_status = ProtoField.new("Login Status", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.loginstatus", ftypes.STRING)
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.logout_reason = ProtoField.new("Logout Reason", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.logoutreason", ftypes.STRING, nil, nil, nil, "Reason")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.logout_text = ProtoField.new("Logout Text", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.logouttext", ftypes.STRING, nil, nil, nil, "Free form human readable text to provide more details beyond the reasons mentioned above")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.market_maker_role = ProtoField.new("Market Maker Role", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.marketmakerrole", ftypes.STRING, nil, nil, nil, "Pertains to this side.")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.market_state = ProtoField.new("Market State", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.marketstate", ftypes.STRING, nil, nil, nil, "Simple Market State")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.max_peak_quantity = ProtoField.new("Max Peak Quantity", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.maxpeakquantity", ftypes.UINT32, nil, nil, nil, "Max peak for Current Quantity during pulse interval")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.member_type = ProtoField.new("Member Type", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.membertype", ftypes.STRING)
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.metric_id = ProtoField.new("Metric Id", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.metricid", ftypes.STRING, nil, nil, nil, "Metric ID for the group")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.metric_type = ProtoField.new("Metric Type", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.metrictype", ftypes.STRING)
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.miax_bbo_posting_increment_indicator = ProtoField.new("Miax Bbo Posting Increment Indicator", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.miaxbbopostingincrementindicator", ftypes.STRING, nil, nil, nil, "Option leg: This is the Minimum Price Variation as agreed to by the Options industry (penny pilot program) and as published by MIAX")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.mm_priority_indicator = ProtoField.new("Mm Priority Indicator", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.mmpriorityindicator", ftypes.STRING, nil, nil, nil, "Pertains to this side only if this side belongs to a market maker.")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.mpid = ProtoField.new("Mpid", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.mpid", ftypes.STRING, nil, nil, nil, "Contra side: Option leg: MPID of the member. Stock leg: Underlying MPID or the DTC Account number")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.mpid_group_id = ProtoField.new("Mpid Group Id", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.mpidgroupid", ftypes.STRING, nil, nil, nil, "Firm Assigned Group ID")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.multi_account = ProtoField.new("Multi Account", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.multiaccount", ftypes.STRING, nil, nil, nil, "Sub or multi account ID specified in FIX order")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.notification_time = ProtoField.new("Notification Time", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.notificationtime", ftypes.UINT64, nil, nil, nil, "Time at which this was generated by MIAX system.")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.open_close_indicator = ProtoField.new("Open Close Indicator", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.opencloseindicator", ftypes.STRING, nil, nil, nil, "Option leg: Open/Close Indicator")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.order_capacity = ProtoField.new("Order Capacity", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.ordercapacity", ftypes.STRING)
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.order_date = ProtoField.new("Order Date", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.orderdate", ftypes.UINT32, nil, nil, nil, "For Trades due to Orders: Format: YYYYMMDD. For Trades due to Quotes, eQuotes: zero.")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.origin = ProtoField.new("Origin", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.origin", ftypes.STRING)
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.percentage_level = ProtoField.new("Percentage Level", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.percentagelevel", ftypes.UINT8, nil, nil, nil, "Current Percentage for the Counted Quantity in relationship to Configured Max Quantity. Valid values from 0 to 255%. Actual percentages greater than 255 will be reported as the max (255)")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.price = ProtoField.new("Price", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.price", ftypes.DOUBLE, nil, nil, nil, "Trade price. In case of a corrected trade, this is the corrected trade price.")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.processing_time = ProtoField.new("Processing Time", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.processingtime", ftypes.UINT64, nil, nil, nil, "Time at which MIAX system (Matching Engine) processed this trade.")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.product_id = ProtoField.new("Product Id", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.productid", ftypes.UINT32, nil, nil, nil, "Option leg: MIAX Product ID mapped to a given option. It is assigned per trading session and is valid for that session. Stock leg: 0 (zero)")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.protection_type = ProtoField.new("Protection Type", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.protectiontype", ftypes.STRING)
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.reference_correction_number = ProtoField.new("Reference Correction Number", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.referencecorrectionnumber", ftypes.UINT8, nil, nil, nil, "Correction Number of the parent trade in case of a correction or a new trade generated due to correction. 0 otherwise.")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.reference_trade_id = ProtoField.new("Reference Trade Id", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.referencetradeid", ftypes.UINT32, nil, nil, nil, "Trade ID of the parent trade in case of a correction or a new trade generated due to correction. 0 otherwise.")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.reference_trade_time = ProtoField.new("Reference Trade Time", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.referencetradetime", ftypes.UINT64, nil, nil, nil, "Time of the parent trade (version of this trade that was active prior to this correction) in case of a correction or a new trade generated due to correction. 0 otherwise.")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.requestedsequencenumber", ftypes.UINT64, nil, nil, nil, "Specifies client requested sequence number: next sequence number the client wants to receive upon connection, or 0 to start receiving only new messages without any replay of old messages")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.requested_session = ProtoField.new("Requested Session", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.requestedsession", ftypes.UINT8, nil, nil, nil, "Specifies the session the client would like to log into, or zero to log into the currently active session")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.reserved_12 = ProtoField.new("Reserved 12", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.reserved12", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.reserved_32 = ProtoField.new("Reserved 32", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.reserved32", ftypes.BYTES, nil, nil, nil, "Reserved for future use.")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.reserved_4 = ProtoField.new("Reserved 4", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.reserved4", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.reserved_7 = ProtoField.new("Reserved 7", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.reserved7", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.reserved_8 = ProtoField.new("Reserved 8", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.reserved8", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.route_id = ProtoField.new("Route Id", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.routeid", ftypes.STRING, nil, nil, nil, "ID used to route to this session.")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.routed_order_quantity = ProtoField.new("Routed Order Quantity", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.routedorderquantity", ftypes.UINT32, nil, nil, nil, "This contains 0 (zero) for trades at MIAX. For trades resulting from Orders routed to other exchanges, this contains total routed quantity that will be useful in calculating away-exchange block size billing rate.")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.second_reserved_12 = ProtoField.new("Second Reserved 12", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.secondreserved12", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.second_reserved_8 = ProtoField.new("Second Reserved 8", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.secondreserved8", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.security_symbol = ProtoField.new("Security Symbol", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.securitysymbol", ftypes.STRING, nil, nil, nil, "Option leg: Option Security Symbol. Stock leg: Filled with spaces = N/A (Not Applicable)")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.sequence_number = ProtoField.new("Sequence Number", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.sequencenumber", ftypes.UINT64, nil, nil, nil, "Sequence number of this sequenced data packet")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.sequenceddatapacket", ftypes.STRING, nil, nil, nil, "The Server application can choose to use Sequenced data packets to send all messages that must be recoverable by the client in case of a connection loss")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.sequencedmessagetype", ftypes.STRING, nil, nil, nil, "Message type of the application message the sequenced data packet carries")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.sesm_packet_length = ProtoField.new("Sesm Packet Length", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.sesmpacketlength", ftypes.UINT16, nil, nil, nil, "The length of rest of the packet")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.sesm_packet_type = ProtoField.new("Sesm Packet Type", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.sesmpackettype", ftypes.STRING, nil, nil, nil, "SesM protocol packet type")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.sesm_version = ProtoField.new("Sesm Version", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.sesmversion", ftypes.STRING, nil, nil, nil, "1.1 (right padded with spaces)")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.session_id = ProtoField.new("Session Id", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.sessionid", ftypes.UINT8, nil, nil, nil, "The session ID of the session that is now logged into")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.side = ProtoField.new("Side", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.side", ftypes.STRING, nil, nil, nil, "The side of the trade on which this receiver was involved in.")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.size = ProtoField.new("Size", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.size", ftypes.UINT32, nil, nil, nil, "Number of option contracts or stock shares traded in this clearing trade. In case of a corrected trade, this is the corrected trade size.")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.start_sequence_number = ProtoField.new("Start Sequence Number", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.startsequencenumber", ftypes.UINT64, nil, nil, nil, "Sequence number of the first packet to be retransmitted")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.stock_execution_destination = ProtoField.new("Stock Execution Destination", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.stockexecutiondestination", ftypes.STRING, nil, nil, nil, "Stock leg: Stock trading/reporting venue that will report and clear the stock leg trade.")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.stock_short_sell_indicator = ProtoField.new("Stock Short Sell Indicator", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.stockshortsellindicator", ftypes.STRING)
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.strategy_auction_type = ProtoField.new("Strategy Auction Type", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.strategyauctiontype", ftypes.STRING, nil, nil, nil, "Only applicable when Strategy State is Standard Auction.")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.strategy_id = ProtoField.new("Strategy Id", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.strategyid", ftypes.UINT32, nil, nil, nil, "MIAX assigned unique Complex Strategy ID for the day. Populated only for complex trades, otherwise set to zero.")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.strategy_state = ProtoField.new("Strategy State", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.strategystate", ftypes.STRING)
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.strategy_timer_role = ProtoField.new("Strategy Timer Role", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.strategytimerrole", ftypes.STRING, nil, nil, nil, "When the liquidity is involved in a trade occurring in a Complex Standard Auction as defined in field Strategy Auction Type, or a cPRIME auction or cC2C or cQCC or RFC crossing, this field contains the role of the liquidity.")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.strike_price = ProtoField.new("Strike Price", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.strikeprice", ftypes.DOUBLE, nil, nil, nil, "Option leg: Explicit strike price of the option. Refer to data types for field processing notes. Stock leg: 0 (zero)")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.supplementary_id = ProtoField.new("Supplementary Id", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.supplementaryid", ftypes.STRING, nil, nil, nil, "Supplementary ID supplied in the Text field of the FIX order")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.system_status = ProtoField.new("System Status", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.systemstatus", ftypes.STRING, nil, nil, nil, "Current system status")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.test_text = ProtoField.new("Test Text", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.testtext", ftypes.STRING, nil, nil, nil, "Free form human readable text")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.third_reserved_12 = ProtoField.new("Third Reserved 12", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.thirdreserved12", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.time_in_force = ProtoField.new("Time In Force", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.timeinforce", ftypes.STRING, nil, nil, nil, "TimeInForce")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.trade_action = ProtoField.new("Trade Action", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.tradeaction", ftypes.STRING, nil, nil, nil, "Note that New trades and Trade Cancel messages can also be generated due to a Clearing changing correction. See Correction Type field for details.")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.trade_as_of_date = ProtoField.new("Trade As Of Date", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.tradeasofdate", ftypes.UINT32, nil, nil, nil, "As-of Date for As-of Trades. Format: YYYYMMDD. Zero for non As-of Trades.")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.trade_condition = ProtoField.new("Trade Condition", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.tradecondition", ftypes.STRING, nil, nil, nil, "See Appendix A for list of possible values. CTD Versions older than CTD2.4 will always have a Regular trade condition (= ‘ ‘ / space) for all system generated automatic trades. In case of a corrected trade, this is the corrected trade condition.")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.trade_id = ProtoField.new("Trade Id", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.tradeid", ftypes.UINT32, nil, nil, nil, "MIAX assigned unique Trade ID for the day. For corrections and cancels, this is the trade ID of the original trade. When used in conjunction with Correction Number, Side and Trade Action, this is a unique identifier for each clearing trade.")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.trade_time = ProtoField.new("Trade Time", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.tradetime", ftypes.UINT64, nil, nil, nil, "Automatic Trades: Time at which the Matching Engine created this trade. Will be same as Processing Time. Manual Trades: Trade Time of the new manual trade. Trades cancels, corrections: Trade Time of the original trade.")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.trade_type = ProtoField.new("Trade Type", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.tradetype", ftypes.STRING)
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.traded_with_directed_mm = ProtoField.new("Traded With Directed Mm", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.tradedwithdirectedmm", ftypes.STRING, nil, nil, nil, "Indicates if the trade occurred with the MM to which the order was Directed")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.trading_session_id = ProtoField.new("Session Id", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.tradingsessionid", ftypes.UINT32, nil, nil, nil, "MIAX assigned ID for the current trading session. A change in Session ID will mean that restarting at message sequence number 1.")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.transaction_id = ProtoField.new("Transaction Id", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.transactionid", ftypes.UINT32, nil, nil, nil, "All clearing trades generated from a single Engine transaction will have the same transaction ID")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.underlyingsymbol", ftypes.STRING, nil, nil, nil, "Underlying Symbol for the option or stock leg. Format for Stock Leg: OCC Options Underlying Symbol (default) or Stock Ticker Symbol (configurable)")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.underlying_type = ProtoField.new("Underlying Type", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.underlyingtype", ftypes.STRING)
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.unsequenceddatapacket", ftypes.STRING, nil, nil, nil, "Each unsequenced data packet carries one unsequenced message from the higher-level protocol")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.unsequencedmessagetype", ftypes.STRING, nil, nil, nil, "Message type of the application message the unsequenced data packet carries")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.username = ProtoField.new("Username", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.username", ftypes.STRING, nil, nil, nil, "Username issued by MIAX during initial setup")

-- Miax MiaxOptions ClearingTradeDrop Ctd 2.6.a Framing
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.packet = ProtoField.new("Packet", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.packet", ftypes.STRING, nil, nil, nil, "SesM Packet")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.sesm_packet_header = ProtoField.new("Sesm Packet Header", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.sesmpacketheader", ftypes.STRING)
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.sesm_tcp_packet = ProtoField.new("Sesm Tcp Packet", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.sesmtcppacket", ftypes.STRING)

-- Miax MiaxOptions ClearingTradeDrop 2.6.a Session Messages
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.client_heartbeat = ProtoField.new("Client Heartbeat", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.clientheartbeat", ftypes.BYTES, nil, nil, nil, "The client should send a Client Heartbeat packet anytime more than 1 second passes where no data has been sent to the server")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.end_of_session = ProtoField.new("End Of Session", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.endofsession", ftypes.BYTES, nil, nil, nil, "The server will send an End of Session packet to denote that the current session is finished")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.goodbye_packet = ProtoField.new("Goodbye Packet", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.goodbyepacket", ftypes.STRING, nil, nil, nil, "The server may send a GoodBye packet to inform the client a reason for termination of the connection just before it terminates the connection")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.login_request = ProtoField.new("Login Request", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.loginrequest", ftypes.STRING, nil, nil, nil, "The SesM client uses this packet to allow the server to authenticate the client and to convey to the server the last sequenced packet that the client received")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.login_response = ProtoField.new("Login Response", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.loginresponse", ftypes.STRING, nil, nil, nil, "The SesM server sends a Login response packet in response to a Login request packet from the client")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.logout_request = ProtoField.new("Logout Request", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.logoutrequest", ftypes.STRING, nil, nil, nil, "The client may send a Logout request packet to request the connection be terminated")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.retransmission_request = ProtoField.new("Retransmission Request", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.retransmissionrequest", ftypes.STRING, nil, nil, nil, "The SesM client uses this packet to request the server to retransmit a range of packets")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.server_heartbeat = ProtoField.new("Server Heartbeat", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.serverheartbeat", ftypes.BYTES, nil, nil, nil, "The server should send a Server Heartbeat packet anytime more than 1 second passes where no data has been sent to the client")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.synchronization_complete = ProtoField.new("Synchronization Complete", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.synchronizationcomplete", ftypes.BYTES, nil, nil, nil, "The server sends a Synchronization complete packet when it is done replaying all the old packets and is ready to start sending new packets")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.test_packet = ProtoField.new("Test Packet", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.testpacket", ftypes.STRING, nil, nil, nil, "A Test packet can be sent by either side of a SesM connection at anytime; Test packets are intended to provide human readable text that may aid in debugging problems")

-- Miax MiaxOptions ClearingTradeDrop 2.6.a Application Messages
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.risk_notification_message = ProtoField.new("Risk Notification Message", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.risknotificationmessage", ftypes.STRING, nil, nil, nil, "Firms configured to use Risk Protection Monitoring will receive User Notification communicating the status of Risk checks. Field Event Type is used to determine the reason for the notification. The following message will be used to disseminate all MIAX Risk Protection Monitor (RPM) related notifications. Sequenced and UnSequenced Pkt based on Event Type: solicited event types (T, R, W, D, A, P, U) are Sequenced messages at the SesM protocol level and recoverable; unsolicited (S) are Unsequenced and not recoverable.")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.system_state = ProtoField.new("System State", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.systemstate", ftypes.STRING, nil, nil, nil, "This message format is used to notify firms of the state changes of the system. Firms can use notifications as triggers in their system to ensure electronic synchronization of systems.")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.trade_message = ProtoField.new("Trade Message", "miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.trademessage", ftypes.STRING, nil, nil, nil, "This is the message format that will be used to disseminate all MIAX trade related content for entitled parties. MIAX sends trades, trade corrections and trade cancels using this message. This is a sequenced message.")

-- Miax MiaxOptions ClearingTradeDrop Ctd 2.6.a Expert Info
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.experts = {}
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.experts.undecoded = ProtoExpert.new("miax.miaxoptions.clearingtradedrop.ctd.v2.6.a.undecoded", "Fields run past the size the wire gives them", expert.group.MALFORMED, expert.severity.ERROR)
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.experts = { miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.experts.undecoded }

-----------------------------------------------------------------------
-- Miax MiaxOptions ClearingTradeDrop Ctd 2.6.a Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "DateTime Local", 2 },
  { 4, "DateTime Utc", 3 },
  { 5, "DateTime America/New York", 4 }
}

-- 0=Raw, 1=Time of Day, 2=DateTime Local, 3=DateTime Utc, 4=DateTime Zone
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.timestamp_format = 2


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Miax MiaxOptions ClearingTradeDrop Ctd 2.6.a Element Dissection Options
show.session_messages = true
show.structs = true
show.application_messages = true
show.headers = true
show.padding = false

-- Register Miax MiaxOptions ClearingTradeDrop Ctd 2.6.a Show Options
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.prefs.show_padding = Pref.bool("Show Padding", show.padding, "Parse and add Padding to protocol tree")

omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Display format for this protocol's timestamps", timestamp_format_enum, false)

-- Handle changed preferences
function omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.prefs.show_application_messages then
    show.application_messages = omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.prefs.show_application_messages
  end
  if show.headers ~= omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.prefs.show_headers then
    show.headers = omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.prefs.show_headers
  end
  if show.padding ~= omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.prefs.show_padding then
    show.padding = omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.prefs.show_padding
  end
  if show.session_messages ~= omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.prefs.show_session_messages then
    show.session_messages = omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.prefs.show_session_messages
  end
  if show.structs ~= omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.prefs.show_structs then
    show.structs = omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.prefs.show_structs
  end
  if miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.timestamp_format ~= omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.prefs.timestamp_format then
    miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.timestamp_format = omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.prefs.timestamp_format
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


-- Mark a sized group whose fields read past its end; raise any other failure as it was
local function undecoded(failure, parent, expert, text)
  if not string.find(tostring(failure), "Range is out of bounds", 1, true) then
    error(failure, 0)
  end

  parent:add_proto_expert_info(expert, text)
end
-----------------------------------------------------------------------
-- Miax MiaxOptions ClearingTradeDrop Ctd 2.6.a Fields
-----------------------------------------------------------------------

-- Account Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.account_id = {}

-- Size: Account Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.account_id.size = 10

-- Display: Account Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.account_id.display = function(value)
  return "Account Id: "..value
end

-- Dissect: Account Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.account_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.account_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.account_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.account_id, range, value, display)

  return offset + length, value
end

-- Allocation Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.allocation_id = {}

-- Size: Allocation Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.allocation_id.size = 4

-- Display: Allocation Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.allocation_id.display = function(value)
  return "Allocation Id: "..value
end

-- Dissect: Allocation Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.allocation_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.allocation_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.allocation_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.allocation_id, range, value, display)

  return offset + length, value
end

-- Application Protocol
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.application_protocol = {}

-- Size: Application Protocol
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.application_protocol.size = 8

-- Display: Application Protocol
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.application_protocol.display = function(value)
  return "Application Protocol: "..value
end

-- Dissect: Application Protocol
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.application_protocol.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.application_protocol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.application_protocol.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.application_protocol, range, value, display)

  return offset + length, value
end

-- Auction Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.auction_type = {}

-- Size: Auction Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.auction_type.size = 1

-- Display: Auction Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.auction_type.display = function(value)
  if value == " " then
    return "Auction Type: Not Applicable (<whitespace>)"
  end
  if value == "1" then
    return "Auction Type: Opening (1)"
  end
  if value == "2" then
    return "Auction Type: Reopening (2)"
  end
  if value == "3" then
    return "Auction Type: Closing (3)"
  end
  if value == "4" then
    return "Auction Type: Routing (4)"
  end
  if value == "5" then
    return "Auction Type: Liquidity Refresh (5)"
  end
  if value == "6" then
    return "Auction Type: Prime Paired Order (6)"
  end
  if value == "7" then
    return "Auction Type: Prime Customer Cross (7)"
  end
  if value == "8" then
    return "Auction Type: Prime Qualified Contingent Cross (8)"
  end
  if value == "9" then
    return "Auction Type: Liquidity Exposure Process (9)"
  end
  if value == "*" then
    return "Auction Type: Downgraded For Older Version (*)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Billing Clearing Number
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.billing_clearing_number = {}

-- Size: Billing Clearing Number
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.billing_clearing_number.size = 4

-- Display: Billing Clearing Number
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.billing_clearing_number.display = function(value)
  return "Billing Clearing Number: "..value
end

-- Dissect: Billing Clearing Number
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.billing_clearing_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.billing_clearing_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.billing_clearing_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.billing_clearing_number, range, value, display)

  return offset + length, value
end

-- Billing Mpid
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.billing_mpid = {}

-- Size: Billing Mpid
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.billing_mpid.size = 4

-- Display: Billing Mpid
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.billing_mpid.display = function(value)
  return "Billing Mpid: "..value
end

-- Dissect: Billing Mpid
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.billing_mpid.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.billing_mpid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.billing_mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.billing_mpid, range, value, display)

  return offset + length, value
end

-- Bulk Quote Index
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.bulk_quote_index = {}

-- Size: Bulk Quote Index
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.bulk_quote_index.size = 1

-- Display: Bulk Quote Index
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.bulk_quote_index.display = function(value)
  return "Bulk Quote Index: "..value
end

-- Dissect: Bulk Quote Index
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.bulk_quote_index.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.bulk_quote_index.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.bulk_quote_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.bulk_quote_index, range, value, display)

  return offset + length, value
end

-- Call Or Put
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.call_or_put = {}

-- Size: Call Or Put
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.call_or_put.size = 1

-- Display: Call Or Put
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.call_or_put.display = function(value)
  if value == "C" then
    return "Call Or Put: Call (C)"
  end
  if value == "P" then
    return "Call Or Put: Put (P)"
  end
  if value == " " then
    return "Call Or Put: Not Applicable (<whitespace>)"
  end

  return "Call Or Put: Unknown("..value..")"
end

-- Dissect: Call Or Put
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.call_or_put.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.call_or_put.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.call_or_put.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.call_or_put, range, value, display)

  return offset + length, value
end

-- Class Fee Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.class_fee_type = {}

-- Size: Class Fee Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.class_fee_type.size = 1

-- Display: Class Fee Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.class_fee_type.labels = {
  ["C"] = "Class Fee Type: Conventional Fee Based (C)",
  ["M"] = "Class Fee Type: Maker Taker Fee Based (M)",
}

miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.class_fee_type.display = function(value)
  return miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.class_fee_type.labels[value] or "Class Fee Type: Unknown("..value..")"
end

-- Dissect: Class Fee Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.class_fee_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.class_fee_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.class_fee_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.class_fee_type, range, value, display)

  return offset + length, value
end

-- Clearing Mpid
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.clearing_mpid = {}

-- Size: Clearing Mpid
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.clearing_mpid.size = 4

-- Display: Clearing Mpid
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.clearing_mpid.display = function(value)
  return "Clearing Mpid: "..value
end

-- Dissect: Clearing Mpid
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.clearing_mpid.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.clearing_mpid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.clearing_mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.clearing_mpid, range, value, display)

  return offset + length, value
end

-- Clearing Number
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.clearing_number = {}

-- Size: Clearing Number
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.clearing_number.size = 4

-- Display: Clearing Number
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.clearing_number.display = function(value)
  return "Clearing Number: "..value
end

-- Dissect: Clearing Number
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.clearing_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.clearing_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.clearing_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.clearing_number, range, value, display)

  return offset + length, value
end

-- Client Message Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.client_message_id = {}

-- Size: Client Message Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.client_message_id.size = 4

-- Display: Client Message Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.client_message_id.display = function(value)
  return "Client Message Id: "..value
end

-- Dissect: Client Message Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.client_message_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.client_message_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.client_message_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.client_message_id, range, value, display)

  return offset + length, value
end

-- Cmta
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.cmta = {}

-- Size: Cmta
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.cmta.size = 4

-- Display: Cmta
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.cmta.display = function(value)
  return "Cmta: "..value
end

-- Dissect: Cmta
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.cmta.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.cmta.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.cmta.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.cmta, range, value, display)

  return offset + length, value
end

-- Computer Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.computer_id = {}

-- Size: Computer Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.computer_id.size = 8

-- Display: Computer Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.computer_id.display = function(value)
  return "Computer Id: "..value
end

-- Dissect: Computer Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.computer_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.computer_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.computer_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.computer_id, range, value, display)

  return offset + length, value
end

-- Configured Counting Time Period
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.configured_counting_time_period = {}

-- Size: Configured Counting Time Period
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.configured_counting_time_period.size = 4

-- Display: Configured Counting Time Period
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.configured_counting_time_period.display = function(value)
  return "Configured Counting Time Period: "..value
end

-- Dissect: Configured Counting Time Period
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.configured_counting_time_period.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.configured_counting_time_period.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.configured_counting_time_period.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.configured_counting_time_period, range, value, display)

  return offset + length, value
end

-- Configured Max Quantity
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.configured_max_quantity = {}

-- Size: Configured Max Quantity
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.configured_max_quantity.size = 4

-- Display: Configured Max Quantity
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.configured_max_quantity.display = function(value)
  return "Configured Max Quantity: "..value
end

-- Dissect: Configured Max Quantity
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.configured_max_quantity.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.configured_max_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.configured_max_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.configured_max_quantity, range, value, display)

  return offset + length, value
end

-- Contra Clearing Number
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_clearing_number = {}

-- Size: Contra Clearing Number
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_clearing_number.size = 4

-- Display: Contra Clearing Number
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_clearing_number.display = function(value)
  return "Contra Clearing Number: "..value
end

-- Dissect: Contra Clearing Number
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_clearing_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_clearing_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_clearing_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.contra_clearing_number, range, value, display)

  return offset + length, value
end

-- Contra Cmta
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_cmta = {}

-- Size: Contra Cmta
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_cmta.size = 4

-- Display: Contra Cmta
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_cmta.display = function(value)
  return "Contra Cmta: "..value
end

-- Dissect: Contra Cmta
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_cmta.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_cmta.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_cmta.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.contra_cmta, range, value, display)

  return offset + length, value
end

-- Contra Liquidity Timer Role
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_liquidity_timer_role = {}

-- Size: Contra Liquidity Timer Role
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_liquidity_timer_role.size = 1

-- Display: Contra Liquidity Timer Role
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_liquidity_timer_role.display = function(value)
  if value == "I" then
    return "Contra Liquidity Timer Role: Timer Initiator (I)"
  end
  if value == "J" then
    return "Contra Liquidity Timer Role: Timer Joiner (J)"
  end
  if value == "T" then
    return "Contra Liquidity Timer Role: Received Before On Same Side (T)"
  end
  if value == "B" then
    return "Contra Liquidity Timer Role: Received On Opposite Side Before (B)"
  end
  if value == "A" then
    return "Contra Liquidity Timer Role: Received On Opposite Side After (A)"
  end
  if value == "R" then
    return "Contra Liquidity Timer Role: Response (R)"
  end
  if value == "E" then
    return "Contra Liquidity Timer Role: Managed Interest (E)"
  end
  if value == "K" then
    return "Contra Liquidity Timer Role: Prime Contra (K)"
  end
  if value == "P" then
    return "Contra Liquidity Timer Role: Prime Customer Cross (P)"
  end
  if value == " " then
    return "Contra Liquidity Timer Role: Not Applicable (<whitespace>)"
  end
  if value == "*" then
    return "Contra Liquidity Timer Role: Downgraded For Older Version (*)"
  end

  return "Contra Liquidity Timer Role: Unknown("..value..")"
end

-- Dissect: Contra Liquidity Timer Role
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_liquidity_timer_role.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_liquidity_timer_role.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_liquidity_timer_role.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.contra_liquidity_timer_role, range, value, display)

  return offset + length, value
end

-- Contra Liquidity Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_liquidity_type = {}

-- Size: Contra Liquidity Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_liquidity_type.size = 1

-- Display: Contra Liquidity Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_liquidity_type.display = function(value)
  if value == "O" then
    return "Contra Liquidity Type: Order (O)"
  end
  if value == "Q" then
    return "Contra Liquidity Type: Quote (Q)"
  end
  if value == "E" then
    return "Contra Liquidity Type: E Quote (E)"
  end
  if value == "C" then
    return "Contra Liquidity Type: Complex Order (C)"
  end
  if value == "D" then
    return "Contra Liquidity Type: Complex E Quote (D)"
  end
  if value == " " then
    return "Contra Liquidity Type: Not Applicable (<whitespace>)"
  end
  if value == "*" then
    return "Contra Liquidity Type: Downgraded From Older Version (*)"
  end

  return "Contra Liquidity Type: Unknown("..value..")"
end

-- Dissect: Contra Liquidity Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_liquidity_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_liquidity_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_liquidity_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.contra_liquidity_type, range, value, display)

  return offset + length, value
end

-- Contra Member Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_member_type = {}

-- Size: Contra Member Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_member_type.size = 1

-- Display: Contra Member Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_member_type.display = function(value)
  if value == "E" then
    return "Contra Member Type: Electronic Exchange Member (E)"
  end
  if value == "M" then
    return "Contra Member Type: Market Maker (M)"
  end
  if value == "R" then
    return "Contra Member Type: Routing Broker (R)"
  end
  if value == " " then
    return "Contra Member Type: Not Applicable (<whitespace>)"
  end

  return "Contra Member Type: Unknown("..value..")"
end

-- Dissect: Contra Member Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_member_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_member_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_member_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.contra_member_type, range, value, display)

  return offset + length, value
end

-- Contra Order Capacity
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_order_capacity = {}

-- Size: Contra Order Capacity
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_order_capacity.size = 1

-- Display: Contra Order Capacity
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_order_capacity.display = function(value)
  if value == " " then
    return "Contra Order Capacity: Not Applicable (<whitespace>)"
  end
  if value == "P" then
    return "Contra Order Capacity: Principal (P)"
  end
  if value == "A" then
    return "Contra Order Capacity: Agency (A)"
  end
  if value == "R" then
    return "Contra Order Capacity: Riskless Principal (R)"
  end

  return "Contra Order Capacity: Unknown("..value..")"
end

-- Dissect: Contra Order Capacity
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_order_capacity.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_order_capacity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_order_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.contra_order_capacity, range, value, display)

  return offset + length, value
end

-- Contra Origin
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_origin = {}

-- Size: Contra Origin
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_origin.size = 1

-- Display: Contra Origin
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_origin.labels = {
  ["C"] = "Contra Origin: Priority Customer (C)",
  ["N"] = "Contra Origin: Non Priority Customer (N)",
  ["F"] = "Contra Origin: Firm (F)",
  ["B"] = "Contra Origin: Broker Dealer (B)",
  ["M"] = "Contra Origin: Member Market Maker (M)",
  ["A"] = "Contra Origin: Away Exchange Market Maker (A)",
}

miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_origin.display = function(value)
  return miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_origin.labels[value] or "Contra Origin: Unknown("..value..")"
end

-- Dissect: Contra Origin
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_origin.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_origin.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_origin.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.contra_origin, range, value, display)

  return offset + length, value
end

-- Contra Strategy Timer Role
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_strategy_timer_role = {}

-- Size: Contra Strategy Timer Role
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_strategy_timer_role.size = 1

-- Display: Contra Strategy Timer Role
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_strategy_timer_role.display = function(value)
  if value == "I" then
    return "Contra Strategy Timer Role: Initiator (I)"
  end
  if value == "J" then
    return "Contra Strategy Timer Role: Joiner (J)"
  end
  if value == "T" then
    return "Contra Strategy Timer Role: Pre Existing On Same Side (T)"
  end
  if value == "B" then
    return "Contra Strategy Timer Role: Pre Existing On Opposite Side (B)"
  end
  if value == "A" then
    return "Contra Strategy Timer Role: Un Related On Opposite Side (A)"
  end
  if value == "R" then
    return "Contra Strategy Timer Role: Response On Opposite Side (R)"
  end
  if value == "G" then
    return "Contra Strategy Timer Role: Response On Same Side (G)"
  end
  if value == "K" then
    return "Contra Strategy Timer Role: C Prime Contra (K)"
  end
  if value == "P" then
    return "Contra Strategy Timer Role: C C 2 C Order (P)"
  end
  if value == " " then
    return "Contra Strategy Timer Role: Not Applicable (<whitespace>)"
  end
  if value == "*" then
    return "Contra Strategy Timer Role: Downgraded For Older Version (*)"
  end

  return "Contra Strategy Timer Role: Unknown("..value..")"
end

-- Dissect: Contra Strategy Timer Role
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_strategy_timer_role.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_strategy_timer_role.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_strategy_timer_role.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.contra_strategy_timer_role, range, value, display)

  return offset + length, value
end

-- Contra Time In Force
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_time_in_force = {}

-- Size: Contra Time In Force
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_time_in_force.size = 1

-- Display: Contra Time In Force
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_time_in_force.labels = {
  ["0"] = "Contra Time In Force: Day (0)",
  ["1"] = "Contra Time In Force: Gtc (1)",
  ["2"] = "Contra Time In Force: Opg (2)",
  ["3"] = "Contra Time In Force: Ioc (3)",
  ["9"] = "Contra Time In Force: At Crossing (9)",
  ["A"] = "Contra Time In Force: Sao (A)",
  ["*"] = "Contra Time In Force: Downgraded For Older Version (*)",
}

miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_time_in_force.display = function(value)
  return miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_time_in_force.labels[value] or "Contra Time In Force: Unknown("..value..")"
end

-- Dissect: Contra Time In Force
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_time_in_force.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.contra_time_in_force, range, value, display)

  return offset + length, value
end

-- Correction Number
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.correction_number = {}

-- Size: Correction Number
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.correction_number.size = 1

-- Display: Correction Number
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.correction_number.display = function(value)
  return "Correction Number: "..value
end

-- Dissect: Correction Number
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.correction_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.correction_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.correction_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.correction_number, range, value, display)

  return offset + length, value
end

-- Correction Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.correction_type = {}

-- Size: Correction Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.correction_type.size = 1

-- Display: Correction Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.correction_type.labels = {
  ["1"] = "Correction Type: Not Applicable (1)",
  ["2"] = "Correction Type: Price Andor Size Change (2)",
  ["3"] = "Correction Type: This Side Clearing Change (3)",
  ["4"] = "Correction Type: Contra Side Clearing Change (4)",
  ["5"] = "Correction Type: Both Side Clearing Change (5)",
}

miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.correction_type.display = function(value)
  return miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.correction_type.labels[value] or "Correction Type: Unknown("..value..")"
end

-- Dissect: Correction Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.correction_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.correction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.correction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.correction_type, range, value, display)

  return offset + length, value
end

-- Ctd Version
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.ctd_version = {}

-- Size: Ctd Version
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.ctd_version.size = 8

-- Display: Ctd Version
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.ctd_version.display = function(value)
  return "Ctd Version: "..value
end

-- Dissect: Ctd Version
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.ctd_version.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.ctd_version.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.ctd_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.ctd_version, range, value, display)

  return offset + length, value
end

-- Current Quantity
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.current_quantity = {}

-- Size: Current Quantity
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.current_quantity.size = 4

-- Display: Current Quantity
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.current_quantity.display = function(value)
  return "Current Quantity: "..value
end

-- Dissect: Current Quantity
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.current_quantity.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.current_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.current_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.current_quantity, range, value, display)

  return offset + length, value
end

-- Directed Status
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.directed_status = {}

-- Size: Directed Status
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.directed_status.size = 1

-- Display: Directed Status
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.directed_status.labels = {
  ["E"] = "Directed Status: Directed To Dlmm Assigned To Underlying (E)",
  ["U"] = "Directed Status: Directed To Dlmm Not Assigned To Underlying (U)",
  ["N"] = "Directed Status: Non Directed Order (N)",
  ["X"] = "Directed Status: Dfc Invalid (X)",
  ["I"] = "Directed Status: Not Directed Due To Order Origin (I)",
}

miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.directed_status.display = function(value)
  return miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.directed_status.labels[value] or "Directed Status: Unknown("..value..")"
end

-- Dissect: Directed Status
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.directed_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.directed_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.directed_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.directed_status, range, value, display)

  return offset + length, value
end

-- End Sequence Number
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.end_sequence_number = {}

-- Size: End Sequence Number
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.end_sequence_number.size = 8

-- Display: End Sequence Number
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.end_sequence_number.display = function(value)
  return "End Sequence Number: "..value
end

-- Dissect: End Sequence Number
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.end_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.end_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.end_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.end_sequence_number, range, value, display)

  return offset + length, value
end

-- Event Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.event_id = {}

-- Size: Event Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.event_id.size = 4

-- Display: Event Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.event_id.display = function(value)
  return "Event Id: "..value
end

-- Dissect: Event Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.event_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.event_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.event_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.event_id, range, value, display)

  return offset + length, value
end

-- Event Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.event_type = {}

-- Size: Event Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.event_type.size = 1

-- Display: Event Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.event_type.labels = {
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

miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.event_type.display = function(value)
  return miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.event_type.labels[value] or "Event Type: Unknown("..value..")"
end

-- Dissect: Event Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.event_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.event_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.event_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.event_type, range, value, display)

  return offset + length, value
end

-- Executing Mpid
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.executing_mpid = {}

-- Size: Executing Mpid
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.executing_mpid.size = 4

-- Display: Executing Mpid
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.executing_mpid.display = function(value)
  return "Executing Mpid: "..value
end

-- Dissect: Executing Mpid
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.executing_mpid.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.executing_mpid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.executing_mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.executing_mpid, range, value, display)

  return offset + length, value
end

-- Execution Exchange
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.execution_exchange = {}

-- Size: Execution Exchange
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.execution_exchange.size = 1

-- Display: Execution Exchange
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.execution_exchange.display = function(value)
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
  if value == "P" then
    return "Execution Exchange: Miax Pearl (P)"
  end
  if value == "D" then
    return "Execution Exchange: Miax Emerald (D)"
  end
  if value == " " then
    return "Execution Exchange: Traded At Miax (<whitespace>)"
  end
  if value == "-" then
    return "Execution Exchange: Not Applicable (-)"
  end

  return "Execution Exchange: Unknown("..value..")"
end

-- Dissect: Execution Exchange
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.execution_exchange.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.execution_exchange.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.execution_exchange.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.execution_exchange, range, value, display)

  return offset + length, value
end

-- Execution Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.execution_id = {}

-- Size: Execution Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.execution_id.size = 8

-- Display: Execution Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Expiration Date
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.expiration_date = {}

-- Size: Expiration Date
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.expiration_date.size = 4

-- Display: Expiration Date
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.expiration_date.display = function(value)
  return "Expiration Date: "..value
end

-- Dissect: Expiration Date
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.expiration_date.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.expiration_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.expiration_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.expiration_date, range, value, display)

  return offset + length, value
end

-- Fix Order Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fix_order_id = {}

-- Size: Fix Order Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fix_order_id.size = 30

-- Display: Fix Order Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fix_order_id.display = function(value)
  return "Fix Order Id: "..value
end

-- Dissect: Fix Order Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fix_order_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fix_order_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fix_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.fix_order_id, range, value, display)

  return offset + length, value
end

-- Goodbye Reason
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.goodbye_reason = {}

-- Size: Goodbye Reason
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.goodbye_reason.size = 1

-- Display: Goodbye Reason
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.goodbye_reason.labels = {
  ["B"] = "Goodbye Reason: Bad Sesm Packet (B)",
  ["L"] = "Goodbye Reason: Timed Out Waiting For Login Packet (L)",
  ["A"] = "Goodbye Reason: Application Terminating Connection (A)",
}

miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.goodbye_reason.display = function(value)
  return miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.goodbye_reason.labels[value] or "Goodbye Reason: Unknown("..value..")"
end

-- Dissect: Goodbye Reason
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.goodbye_reason.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.goodbye_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.goodbye_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.goodbye_reason, range, value, display)

  return offset + length, value
end

-- Highest Sequence Number
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.highest_sequence_number = {}

-- Size: Highest Sequence Number
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.highest_sequence_number.size = 8

-- Display: Highest Sequence Number
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.highest_sequence_number.display = function(value)
  return "Highest Sequence Number: "..value
end

-- Dissect: Highest Sequence Number
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.highest_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.highest_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.highest_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.highest_sequence_number, range, value, display)

  return offset + length, value
end

-- Leg Reference Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.leg_reference_id = {}

-- Size: Leg Reference Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.leg_reference_id.size = 5

-- Display: Leg Reference Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.leg_reference_id.display = function(value)
  return "Leg Reference Id: "..value
end

-- Dissect: Leg Reference Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.leg_reference_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.leg_reference_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.leg_reference_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.leg_reference_id, range, value, display)

  return offset + length, value
end

-- Liquidity Indicator
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.liquidity_indicator = {}

-- Size: Liquidity Indicator
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.liquidity_indicator.size = 1

-- Display: Liquidity Indicator
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.liquidity_indicator.display = function(value)
  if value == "A" then
    return "Liquidity Indicator: Add (A)"
  end
  if value == "R" then
    return "Liquidity Indicator: Remove (R)"
  end
  if value == " " then
    return "Liquidity Indicator: Not Applicable (<whitespace>)"
  end

  return "Liquidity Indicator: Unknown("..value..")"
end

-- Dissect: Liquidity Indicator
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.liquidity_indicator.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.liquidity_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.liquidity_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Liquidity Timer Role
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.liquidity_timer_role = {}

-- Size: Liquidity Timer Role
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.liquidity_timer_role.size = 1

-- Display: Liquidity Timer Role
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.liquidity_timer_role.display = function(value)
  if value == "I" then
    return "Liquidity Timer Role: Timer Initiator (I)"
  end
  if value == "J" then
    return "Liquidity Timer Role: Timer Joiner (J)"
  end
  if value == "T" then
    return "Liquidity Timer Role: Received Before On Same Side (T)"
  end
  if value == "B" then
    return "Liquidity Timer Role: Received On Opposite Side Before (B)"
  end
  if value == "A" then
    return "Liquidity Timer Role: Received On Opposite Side After (A)"
  end
  if value == "R" then
    return "Liquidity Timer Role: Response (R)"
  end
  if value == "E" then
    return "Liquidity Timer Role: Managed Interest (E)"
  end
  if value == "K" then
    return "Liquidity Timer Role: Prime Contra (K)"
  end
  if value == "P" then
    return "Liquidity Timer Role: Prime Customer Cross (P)"
  end
  if value == " " then
    return "Liquidity Timer Role: Not Applicable (<whitespace>)"
  end
  if value == "*" then
    return "Liquidity Timer Role: Downgraded For Older Version (*)"
  end

  return "Liquidity Timer Role: Unknown("..value..")"
end

-- Dissect: Liquidity Timer Role
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.liquidity_timer_role.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.liquidity_timer_role.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.liquidity_timer_role.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.liquidity_timer_role, range, value, display)

  return offset + length, value
end

-- Liquidity Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.liquidity_type = {}

-- Size: Liquidity Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.liquidity_type.size = 1

-- Display: Liquidity Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.liquidity_type.display = function(value)
  if value == "O" then
    return "Liquidity Type: Order (O)"
  end
  if value == "Q" then
    return "Liquidity Type: Quote (Q)"
  end
  if value == "E" then
    return "Liquidity Type: E Quote (E)"
  end
  if value == "C" then
    return "Liquidity Type: Complex Order (C)"
  end
  if value == "D" then
    return "Liquidity Type: Complex E Quote (D)"
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
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.liquidity_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.liquidity_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.liquidity_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.liquidity_type, range, value, display)

  return offset + length, value
end

-- Login Status
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.login_status = {}

-- Size: Login Status
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.login_status.size = 1

-- Display: Login Status
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.login_status.display = function(value)
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
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.login_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.login_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.login_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.login_status, range, value, display)

  return offset + length, value
end

-- Logout Reason
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.logout_reason = {}

-- Size: Logout Reason
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.logout_reason.size = 1

-- Display: Logout Reason
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.logout_reason.display = function(value)
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
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.logout_reason.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.logout_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.logout_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.logout_reason, range, value, display)

  return offset + length, value
end

-- Logout Text
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.logout_text = {}

-- Display: Logout Text
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.logout_text.display = function(value)
  return "Logout Text: "..value
end

-- Dissect runtime sized field: Logout Text
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.logout_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.logout_text.display(value, packet, parent, size)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.logout_text, range, value, display)

  return offset + size, value
end

-- Market Maker Role
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.market_maker_role = {}

-- Size: Market Maker Role
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.market_maker_role.size = 1

-- Display: Market Maker Role
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.market_maker_role.display = function(value)
  if value == "P" then
    return "Market Maker Role: Plmm (P)"
  end
  if value == "L" then
    return "Market Maker Role: Lmm (L)"
  end
  if value == "R" then
    return "Market Maker Role: Rmm (R)"
  end
  if value == "U" then
    return "Market Maker Role: Umm (U)"
  end
  if value == " " then
    return "Market Maker Role: Other (<whitespace>)"
  end

  return "Market Maker Role: Unknown("..value..")"
end

-- Dissect: Market Maker Role
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.market_maker_role.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.market_maker_role.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.market_maker_role.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.market_maker_role, range, value, display)

  return offset + length, value
end

-- Market State
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.market_state = {}

-- Size: Market State
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.market_state.size = 1

-- Display: Market State
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.market_state.display = function(value)
  if value == "T" then
    return "Market State: Free Trading (T)"
  end
  if value == "A" then
    return "Market State: Auction (A)"
  end
  if value == "H" then
    return "Market State: Halted (H)"
  end
  if value == "N" then
    return "Market State: Non Tradable (N)"
  end
  if value == " " then
    return "Market State: Not Applicable (<whitespace>)"
  end

  return "Market State: Unknown("..value..")"
end

-- Dissect: Market State
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.market_state.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.market_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.market_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.market_state, range, value, display)

  return offset + length, value
end

-- Max Peak Quantity
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.max_peak_quantity = {}

-- Size: Max Peak Quantity
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.max_peak_quantity.size = 4

-- Display: Max Peak Quantity
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.max_peak_quantity.display = function(value)
  return "Max Peak Quantity: "..value
end

-- Dissect: Max Peak Quantity
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.max_peak_quantity.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.max_peak_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.max_peak_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.max_peak_quantity, range, value, display)

  return offset + length, value
end

-- Member Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.member_type = {}

-- Size: Member Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.member_type.size = 1

-- Display: Member Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.member_type.display = function(value)
  if value == "E" then
    return "Member Type: Electronic Exchange Member (E)"
  end
  if value == "M" then
    return "Member Type: Market Maker (M)"
  end
  if value == "R" then
    return "Member Type: Routing Broker (R)"
  end
  if value == " " then
    return "Member Type: Not Applicable (<whitespace>)"
  end

  return "Member Type: Unknown("..value..")"
end

-- Dissect: Member Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.member_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.member_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.member_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.member_type, range, value, display)

  return offset + length, value
end

-- Metric Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.metric_id = {}

-- Size: Metric Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.metric_id.size = 32

-- Display: Metric Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.metric_id.display = function(value)
  return "Metric Id: "..value
end

-- Dissect: Metric Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.metric_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.metric_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.metric_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.metric_id, range, value, display)

  return offset + length, value
end

-- Metric Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.metric_type = {}

-- Size: Metric Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.metric_type.size = 1

-- Display: Metric Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.metric_type.labels = {
  ["C"] = "Metric Type: Rate Of Executed Order Contracts (C)",
  ["O"] = "Metric Type: Rate Of New Replace Orders Received (O)",
  ["*"] = "Metric Type: Downgraded For Older Version (*)",
}

miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.metric_type.display = function(value)
  return miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.metric_type.labels[value] or "Metric Type: Unknown("..value..")"
end

-- Dissect: Metric Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.metric_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.metric_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.metric_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.metric_type, range, value, display)

  return offset + length, value
end

-- Miax Bbo Posting Increment Indicator
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.miax_bbo_posting_increment_indicator = {}

-- Size: Miax Bbo Posting Increment Indicator
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.miax_bbo_posting_increment_indicator.size = 1

-- Display: Miax Bbo Posting Increment Indicator
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.miax_bbo_posting_increment_indicator.display = function(value)
  if value == "P" then
    return "Miax Bbo Posting Increment Indicator: Penny (P)"
  end
  if value == "N" then
    return "Miax Bbo Posting Increment Indicator: Penny Nickel (N)"
  end
  if value == "D" then
    return "Miax Bbo Posting Increment Indicator: Nickel Dime (D)"
  end
  if value == " " then
    return "Miax Bbo Posting Increment Indicator: Not Applicable (<whitespace>)"
  end

  return "Miax Bbo Posting Increment Indicator: Unknown("..value..")"
end

-- Dissect: Miax Bbo Posting Increment Indicator
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.miax_bbo_posting_increment_indicator.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.miax_bbo_posting_increment_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.miax_bbo_posting_increment_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.miax_bbo_posting_increment_indicator, range, value, display)

  return offset + length, value
end

-- Mm Priority Indicator
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.mm_priority_indicator = {}

-- Size: Mm Priority Indicator
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.mm_priority_indicator.size = 1

-- Display: Mm Priority Indicator
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.mm_priority_indicator.display = function(value)
  if value == "Y" then
    return "Mm Priority Indicator: Yes (Y)"
  end
  if value == "N" then
    return "Mm Priority Indicator: No (N)"
  end
  if value == " " then
    return "Mm Priority Indicator: Not Applicable (<whitespace>)"
  end

  return "Mm Priority Indicator: Unknown("..value..")"
end

-- Dissect: Mm Priority Indicator
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.mm_priority_indicator.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.mm_priority_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.mm_priority_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.mm_priority_indicator, range, value, display)

  return offset + length, value
end

-- Mpid
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.mpid = {}

-- Size: Mpid
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.mpid.size = 4

-- Display: Mpid
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.mpid.display = function(value)
  return "Mpid: "..value
end

-- Dissect: Mpid
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.mpid.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.mpid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.mpid, range, value, display)

  return offset + length, value
end

-- Mpid Group Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.mpid_group_id = {}

-- Size: Mpid Group Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.mpid_group_id.size = 32

-- Display: Mpid Group Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.mpid_group_id.display = function(value)
  return "Mpid Group Id: "..value
end

-- Dissect: Mpid Group Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.mpid_group_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.mpid_group_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.mpid_group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.mpid_group_id, range, value, display)

  return offset + length, value
end

-- Multi Account
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.multi_account = {}

-- Size: Multi Account
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.multi_account.size = 5

-- Display: Multi Account
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.multi_account.display = function(value)
  return "Multi Account: "..value
end

-- Dissect: Multi Account
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.multi_account.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.multi_account.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.multi_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.multi_account, range, value, display)

  return offset + length, value
end

-- Notification Time
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.notification_time = {}

-- Size: Notification Time
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.notification_time.size = 8

-- Display: Notification Time
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.notification_time.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.timestamp_format == 0 then
    return "Notification Time: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (the day the frame that carried it settled on)
  if miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.timestamp_format >= 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()

    -- A frame a file handler read states no instant and reads as the epoch
    if capture_time >= 86400 then
      -- The venue's midnight: the frame's instant less the time of day it states
      local settled = math.floor((capture_time - seconds) / 900 + 0.5) * 900

      -- The zone's own date and clock, in the zone it keeps
      if miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.timestamp_format == 4 then
        local day = math.floor(settled / 86400 + 0.5) * 86400

        return "Notification Time: "..os.date("!%Y-%m-%d %H:%M:%S.", day + seconds)..string.format("%09d", nanoseconds).." America/New York"
      end

      local format = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.timestamp_format == 3 and "!%Y-%m-%d %H:%M:%S." or "%Y-%m-%d %H:%M:%S."
      return "Notification Time: "..os.date(format, settled + seconds)..string.format("%09d", nanoseconds)
    end
  end

  -- Time of day mode
  return "Notification Time: "..os.date("!%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Notification Time
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.notification_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.notification_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.notification_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.notification_time, range, value, display)

  return offset + length, value
end

-- Open Close Indicator
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.open_close_indicator = {}

-- Size: Open Close Indicator
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.open_close_indicator.size = 1

-- Display: Open Close Indicator
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.open_close_indicator.display = function(value)
  if value == "O" then
    return "Open Close Indicator: Opening Position (O)"
  end
  if value == "C" then
    return "Open Close Indicator: Closing Position (C)"
  end
  if value == " " then
    return "Open Close Indicator: Not Applicable (<whitespace>)"
  end

  return "Open Close Indicator: Unknown("..value..")"
end

-- Dissect: Open Close Indicator
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.open_close_indicator.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.open_close_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.open_close_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.open_close_indicator, range, value, display)

  return offset + length, value
end

-- Order Capacity
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.order_capacity = {}

-- Size: Order Capacity
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.order_capacity.size = 1

-- Display: Order Capacity
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.order_capacity.display = function(value)
  if value == " " then
    return "Order Capacity: Not Applicable (<whitespace>)"
  end
  if value == "P" then
    return "Order Capacity: Principal (P)"
  end
  if value == "A" then
    return "Order Capacity: Agency (A)"
  end
  if value == "R" then
    return "Order Capacity: Riskless Principal (R)"
  end

  return "Order Capacity: Unknown("..value..")"
end

-- Dissect: Order Capacity
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.order_capacity.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.order_capacity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.order_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.order_capacity, range, value, display)

  return offset + length, value
end

-- Order Date
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.order_date = {}

-- Size: Order Date
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.order_date.size = 4

-- Display: Order Date
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.order_date.display = function(value)
  return "Order Date: "..value
end

-- Dissect: Order Date
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.order_date.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.order_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.order_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.order_date, range, value, display)

  return offset + length, value
end

-- Origin
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.origin = {}

-- Size: Origin
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.origin.size = 1

-- Display: Origin
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.origin.labels = {
  ["C"] = "Origin: Priority Customer (C)",
  ["N"] = "Origin: Non Priority Customer (N)",
  ["F"] = "Origin: Firm (F)",
  ["B"] = "Origin: Broker Dealer (B)",
  ["M"] = "Origin: Member Market Maker (M)",
  ["A"] = "Origin: Away Exchange Market Maker (A)",
}

miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.origin.display = function(value)
  return miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.origin.labels[value] or "Origin: Unknown("..value..")"
end

-- Dissect: Origin
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.origin.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.origin.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.origin.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.origin, range, value, display)

  return offset + length, value
end

-- Percentage Level
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.percentage_level = {}

-- Size: Percentage Level
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.percentage_level.size = 1

-- Display: Percentage Level
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.percentage_level.display = function(value)
  return "Percentage Level: "..value
end

-- Dissect: Percentage Level
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.percentage_level.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.percentage_level.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.percentage_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.percentage_level, range, value, display)

  return offset + length, value
end

-- Price
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.price = {}

-- Size: Price
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.price.size = 4

-- Display: Price
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.price.translate = function(raw)
  return raw/10000
end

-- Dissect: Price
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.price.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.price.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.price.translate(raw)
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.price, range, value, display)

  return offset + length, value
end

-- Processing Time
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.processing_time = {}

-- Size: Processing Time
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.processing_time.size = 8

-- Display: Processing Time
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.processing_time.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.timestamp_format == 0 then
    return "Processing Time: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (the day the frame that carried it settled on)
  if miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.timestamp_format >= 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()

    -- A frame a file handler read states no instant and reads as the epoch
    if capture_time >= 86400 then
      -- The venue's midnight: the frame's instant less the time of day it states
      local settled = math.floor((capture_time - seconds) / 900 + 0.5) * 900

      -- The zone's own date and clock, in the zone it keeps
      if miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.timestamp_format == 4 then
        local day = math.floor(settled / 86400 + 0.5) * 86400

        return "Processing Time: "..os.date("!%Y-%m-%d %H:%M:%S.", day + seconds)..string.format("%09d", nanoseconds).." America/New York"
      end

      local format = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.timestamp_format == 3 and "!%Y-%m-%d %H:%M:%S." or "%Y-%m-%d %H:%M:%S."
      return "Processing Time: "..os.date(format, settled + seconds)..string.format("%09d", nanoseconds)
    end
  end

  -- Time of day mode
  return "Processing Time: "..os.date("!%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Processing Time
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.processing_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.processing_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.processing_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.processing_time, range, value, display)

  return offset + length, value
end

-- Product Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.product_id = {}

-- Size: Product Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.product_id.size = 4

-- Display: Product Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.product_id.display = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.product_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.product_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.product_id, range, value, display)

  return offset + length, value
end

-- Protection Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.protection_type = {}

-- Size: Protection Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.protection_type.size = 1

-- Display: Protection Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.protection_type.labels = {
  ["B"] = "Protection Type: Block (B)",
  ["M"] = "Protection Type: Block And Mass Cancel (M)",
  ["W"] = "Protection Type: Warning Only (W)",
  ["*"] = "Protection Type: Downgraded For Older Version (*)",
}

miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.protection_type.display = function(value)
  return miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.protection_type.labels[value] or "Protection Type: Unknown("..value..")"
end

-- Dissect: Protection Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.protection_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.protection_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.protection_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.protection_type, range, value, display)

  return offset + length, value
end

-- Reference Correction Number
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reference_correction_number = {}

-- Size: Reference Correction Number
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reference_correction_number.size = 1

-- Display: Reference Correction Number
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reference_correction_number.display = function(value)
  return "Reference Correction Number: "..value
end

-- Dissect: Reference Correction Number
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reference_correction_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reference_correction_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reference_correction_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.reference_correction_number, range, value, display)

  return offset + length, value
end

-- Reference Trade Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reference_trade_id = {}

-- Size: Reference Trade Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reference_trade_id.size = 4

-- Display: Reference Trade Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reference_trade_id.display = function(value)
  return "Reference Trade Id: "..value
end

-- Dissect: Reference Trade Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reference_trade_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reference_trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reference_trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.reference_trade_id, range, value, display)

  return offset + length, value
end

-- Reference Trade Time
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reference_trade_time = {}

-- Size: Reference Trade Time
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reference_trade_time.size = 8

-- Display: Reference Trade Time
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reference_trade_time.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.timestamp_format == 0 then
    return "Reference Trade Time: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (the day the frame that carried it settled on)
  if miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.timestamp_format >= 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()

    -- A frame a file handler read states no instant and reads as the epoch
    if capture_time >= 86400 then
      -- The venue's midnight: the frame's instant less the time of day it states
      local settled = math.floor((capture_time - seconds) / 900 + 0.5) * 900

      -- The zone's own date and clock, in the zone it keeps
      if miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.timestamp_format == 4 then
        local day = math.floor(settled / 86400 + 0.5) * 86400

        return "Reference Trade Time: "..os.date("!%Y-%m-%d %H:%M:%S.", day + seconds)..string.format("%09d", nanoseconds).." America/New York"
      end

      local format = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.timestamp_format == 3 and "!%Y-%m-%d %H:%M:%S." or "%Y-%m-%d %H:%M:%S."
      return "Reference Trade Time: "..os.date(format, settled + seconds)..string.format("%09d", nanoseconds)
    end
  end

  -- Time of day mode
  return "Reference Trade Time: "..os.date("!%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Reference Trade Time
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reference_trade_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reference_trade_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reference_trade_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.reference_trade_time, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.requested_sequence_number = {}

-- Size: Requested Sequence Number
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.requested_sequence_number.size = 8

-- Display: Requested Sequence Number
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.requested_session = {}

-- Size: Requested Session
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.requested_session.size = 1

-- Display: Requested Session
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.requested_session.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Reserved 12
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reserved_12 = {}

-- Size: Reserved 12
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reserved_12.size = 12

-- Display: Reserved 12
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reserved_12.display = function(value)
  return "Reserved 12: "..value
end

-- Dissect: Reserved 12
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reserved_12.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reserved_12.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reserved_12.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.reserved_12, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 32
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reserved_32 = {}

-- Size: Reserved 32
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reserved_32.size = 32

-- Display: Reserved 32
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reserved_32.display = function(value)
  return "Reserved 32: "..value
end

-- Dissect: Reserved 32
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reserved_32.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reserved_32.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reserved_32.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.reserved_32, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 4
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reserved_4 = {}

-- Size: Reserved 4
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reserved_4.size = 4

-- Display: Reserved 4
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.reserved_4, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 7
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reserved_7 = {}

-- Size: Reserved 7
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reserved_7.size = 7

-- Display: Reserved 7
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reserved_7.display = function(value)
  return "Reserved 7: "..value
end

-- Dissect: Reserved 7
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reserved_7.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reserved_7.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reserved_7.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.reserved_7, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 8
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reserved_8 = {}

-- Size: Reserved 8
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reserved_8.size = 8

-- Display: Reserved 8
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reserved_8.display = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.reserved_8, range, range:raw(), display)

  return offset + length, value
end

-- Route Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.route_id = {}

-- Size: Route Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.route_id.size = 32

-- Display: Route Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.route_id.display = function(value)
  return "Route Id: "..value
end

-- Dissect: Route Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.route_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.route_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.route_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.route_id, range, value, display)

  return offset + length, value
end

-- Routed Order Quantity
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.routed_order_quantity = {}

-- Size: Routed Order Quantity
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.routed_order_quantity.size = 4

-- Display: Routed Order Quantity
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.routed_order_quantity.display = function(value)
  return "Routed Order Quantity: "..value
end

-- Dissect: Routed Order Quantity
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.routed_order_quantity.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.routed_order_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.routed_order_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.routed_order_quantity, range, value, display)

  return offset + length, value
end

-- Second Reserved 12
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.second_reserved_12 = {}

-- Size: Second Reserved 12
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.second_reserved_12.size = 12

-- Display: Second Reserved 12
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.second_reserved_12.display = function(value)
  return "Second Reserved 12: "..value
end

-- Dissect: Second Reserved 12
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.second_reserved_12.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.second_reserved_12.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.second_reserved_12.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.second_reserved_12, range, range:raw(), display)

  return offset + length, value
end

-- Second Reserved 8
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.second_reserved_8 = {}

-- Size: Second Reserved 8
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.second_reserved_8.size = 8

-- Display: Second Reserved 8
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.second_reserved_8.display = function(value)
  return "Second Reserved 8: "..value
end

-- Dissect: Second Reserved 8
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.second_reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.second_reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.second_reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.second_reserved_8, range, range:raw(), display)

  return offset + length, value
end

-- Security Symbol
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.security_symbol = {}

-- Size: Security Symbol
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.security_symbol.size = 6

-- Display: Security Symbol
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.security_symbol.display = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.security_symbol.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.security_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.security_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Sequence Number
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sequence_number = {}

-- Size: Sequence Number
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sequence_number.size = 8

-- Display: Sequence Number
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sequenced_message_type = {}

-- Size: Sequenced Message Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sequenced_message_type.labels = {
  ["S"] = "Sequenced Message Type: System State (S)",
  ["T"] = "Sequenced Message Type: Trade Message (T)",
  ["R"] = "Sequenced Message Type: Risk Notification Message (R)",
}

miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sequenced_message_type.display = function(value)
  return miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sequenced_message_type.labels[value] or "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Sesm Packet Length
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sesm_packet_length = {}

-- Size: Sesm Packet Length
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sesm_packet_length.size = 2

-- Display: Sesm Packet Length
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sesm_packet_length.display = function(value)
  return "Sesm Packet Length: "..value
end

-- Dissect: Sesm Packet Length
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sesm_packet_length.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sesm_packet_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sesm_packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.sesm_packet_length, range, value, display)

  return offset + length, value
end

-- Sesm Packet Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sesm_packet_type = {}

-- Size: Sesm Packet Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sesm_packet_type.size = 1

-- Display: Sesm Packet Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sesm_packet_type.labels = {
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

miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sesm_packet_type.display = function(value)
  return miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sesm_packet_type.labels[value] or "Sesm Packet Type: Unknown("..value..")"
end

-- Dissect: Sesm Packet Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sesm_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sesm_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sesm_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.sesm_packet_type, range, value, display)

  return offset + length, value
end

-- Sesm Version
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sesm_version = {}

-- Size: Sesm Version
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sesm_version.size = 5

-- Display: Sesm Version
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sesm_version.display = function(value)
  return "Sesm Version: "..value
end

-- Dissect: Sesm Version
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sesm_version.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sesm_version.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sesm_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.sesm_version, range, value, display)

  return offset + length, value
end

-- Session Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.session_id = {}

-- Size: Session Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.session_id.size = 1

-- Display: Session Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.session_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.session_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.session_id, range, value, display)

  return offset + length, value
end

-- Side
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.side = {}

-- Size: Side
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.side.size = 1

-- Display: Side
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.side.labels = {
  ["B"] = "Side: Buy (B)",
  ["S"] = "Side: Sell (S)",
}

miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.side.display = function(value)
  return miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.side.labels[value] or "Side: Unknown("..value..")"
end

-- Dissect: Side
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.side.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.side, range, value, display)

  return offset + length, value
end

-- Size
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.size = {}

-- Size: Size
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.size.size = 4

-- Display: Size
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.size.display = function(value)
  return "Size: "..value
end

-- Dissect: Size
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.size.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.size.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.size, range, value, display)

  return offset + length, value
end

-- Start Sequence Number
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.start_sequence_number = {}

-- Size: Start Sequence Number
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.start_sequence_number.size = 8

-- Display: Start Sequence Number
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.start_sequence_number.display = function(value)
  return "Start Sequence Number: "..value
end

-- Dissect: Start Sequence Number
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.start_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.start_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.start_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.start_sequence_number, range, value, display)

  return offset + length, value
end

-- Stock Execution Destination
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.stock_execution_destination = {}

-- Size: Stock Execution Destination
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.stock_execution_destination.size = 1

-- Display: Stock Execution Destination
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.stock_execution_destination.display = function(value)
  if value == "1" then
    return "Stock Execution Destination: Nasdaq Trf (1)"
  end
  if value == " " then
    return "Stock Execution Destination: Not Applicable (<whitespace>)"
  end

  return "Stock Execution Destination: Unknown("..value..")"
end

-- Dissect: Stock Execution Destination
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.stock_execution_destination.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.stock_execution_destination.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.stock_execution_destination.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.stock_execution_destination, range, value, display)

  return offset + length, value
end

-- Stock Short Sell Indicator
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.stock_short_sell_indicator = {}

-- Size: Stock Short Sell Indicator
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.stock_short_sell_indicator.size = 1

-- Display: Stock Short Sell Indicator
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.stock_short_sell_indicator.display = function(value)
  if value == "N" then
    return "Stock Short Sell Indicator: Not A Short Sale (N)"
  end
  if value == "Y" then
    return "Stock Short Sell Indicator: Short Sale (Y)"
  end
  if value == "E" then
    return "Stock Short Sell Indicator: Short Sale Exempt (E)"
  end
  if value == " " then
    return "Stock Short Sell Indicator: Not Applicable (<whitespace>)"
  end

  return "Stock Short Sell Indicator: Unknown("..value..")"
end

-- Dissect: Stock Short Sell Indicator
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.stock_short_sell_indicator.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.stock_short_sell_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.stock_short_sell_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.stock_short_sell_indicator, range, value, display)

  return offset + length, value
end

-- Strategy Auction Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.strategy_auction_type = {}

-- Size: Strategy Auction Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.strategy_auction_type.size = 1

-- Display: Strategy Auction Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.strategy_auction_type.display = function(value)
  if value == " " then
    return "Strategy Auction Type: Not Applicable (<whitespace>)"
  end
  if value == "I" then
    return "Strategy Auction Type: Initial Improvement Opening (I)"
  end
  if value == "Y" then
    return "Strategy Auction Type: Initial Improvement Opening Book Crossed (Y)"
  end
  if value == "U" then
    return "Strategy Auction Type: Upon Receipt Improvement (U)"
  end
  if value == "R" then
    return "Strategy Auction Type: Reevaluation Improvement (R)"
  end
  if value == "P" then
    return "Strategy Auction Type: Reevaluation Improvement Book Crossed (P)"
  end
  if value == "C" then
    return "Strategy Auction Type: Immediate Book Uncrossing (C)"
  end
  if value == "L" then
    return "Strategy Auction Type: Complex Liquidity Exposure Process (L)"
  end
  if value == "*" then
    return "Strategy Auction Type: Downgraded For Older Version (*)"
  end

  return "Strategy Auction Type: Unknown("..value..")"
end

-- Dissect: Strategy Auction Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.strategy_auction_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.strategy_auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.strategy_auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.strategy_auction_type, range, value, display)

  return offset + length, value
end

-- Strategy Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.strategy_id = {}

-- Size: Strategy Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.strategy_id.size = 4

-- Display: Strategy Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.strategy_id.display = function(value)
  return "Strategy Id: "..value
end

-- Dissect: Strategy Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.strategy_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.strategy_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.strategy_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.strategy_id, range, value, display)

  return offset + length, value
end

-- Strategy State
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.strategy_state = {}

-- Size: Strategy State
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.strategy_state.size = 1

-- Display: Strategy State
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.strategy_state.display = function(value)
  if value == " " then
    return "Strategy State: Not Applicable (<whitespace>)"
  end
  if value == "A" then
    return "Strategy State: Standard Auction (A)"
  end
  if value == "F" then
    return "Strategy State: Free Trading (F)"
  end
  if value == "P" then
    return "Strategy State: C Prime (P)"
  end
  if value == "X" then
    return "Strategy State: C C 2 C (X)"
  end
  if value == "Q" then
    return "Strategy State: C Qcc (Q)"
  end
  if value == "R" then
    return "Strategy State: Rfc (R)"
  end
  if value == "*" then
    return "Strategy State: Downgraded For Older Version (*)"
  end

  return "Strategy State: Unknown("..value..")"
end

-- Dissect: Strategy State
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.strategy_state.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.strategy_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.strategy_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.strategy_state, range, value, display)

  return offset + length, value
end

-- Strategy Timer Role
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.strategy_timer_role = {}

-- Size: Strategy Timer Role
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.strategy_timer_role.size = 1

-- Display: Strategy Timer Role
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.strategy_timer_role.display = function(value)
  if value == "I" then
    return "Strategy Timer Role: Initiator (I)"
  end
  if value == "J" then
    return "Strategy Timer Role: Joiner (J)"
  end
  if value == "T" then
    return "Strategy Timer Role: Pre Existing On Same Side (T)"
  end
  if value == "B" then
    return "Strategy Timer Role: Pre Existing On Opposite Side (B)"
  end
  if value == "A" then
    return "Strategy Timer Role: Un Related On Opposite Side (A)"
  end
  if value == "R" then
    return "Strategy Timer Role: Response On Opposite Side (R)"
  end
  if value == "G" then
    return "Strategy Timer Role: Response On Same Side (G)"
  end
  if value == "K" then
    return "Strategy Timer Role: C Prime Contra (K)"
  end
  if value == "P" then
    return "Strategy Timer Role: C C 2 C Order (P)"
  end
  if value == " " then
    return "Strategy Timer Role: Not Applicable (<whitespace>)"
  end
  if value == "*" then
    return "Strategy Timer Role: Downgraded For Older Version (*)"
  end

  return "Strategy Timer Role: Unknown("..value..")"
end

-- Dissect: Strategy Timer Role
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.strategy_timer_role.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.strategy_timer_role.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.strategy_timer_role.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.strategy_timer_role, range, value, display)

  return offset + length, value
end

-- Strike Price
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.strike_price = {}

-- Size: Strike Price
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.strike_price.size = 4

-- Display: Strike Price
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Translate: Strike Price
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.strike_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Strike Price
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.strike_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.strike_price.translate(raw)
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Supplementary Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.supplementary_id = {}

-- Size: Supplementary Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.supplementary_id.size = 13

-- Display: Supplementary Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.supplementary_id.display = function(value)
  return "Supplementary Id: "..value
end

-- Dissect: Supplementary Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.supplementary_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.supplementary_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.supplementary_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.supplementary_id, range, value, display)

  return offset + length, value
end

-- System Status
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.system_status = {}

-- Size: System Status
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.system_status.size = 1

-- Display: System Status
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.system_status.labels = {
  ["C"] = "System Status: End Of Application Messages (C)",
  ["1"] = "System Status: Start Of Test Session (1)",
  ["2"] = "System Status: End Of Test Session (2)",
}

miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.system_status.display = function(value)
  return miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.system_status.labels[value] or "System Status: Unknown("..value..")"
end

-- Dissect: System Status
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.system_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.system_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.system_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.system_status, range, value, display)

  return offset + length, value
end

-- Test Text
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.test_text = {}

-- Display: Test Text
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.test_text.display = function(value)
  return "Test Text: "..value
end

-- Dissect runtime sized field: Test Text
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.test_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.test_text.display(value, packet, parent, size)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.test_text, range, value, display)

  return offset + size, value
end

-- Third Reserved 12
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.third_reserved_12 = {}

-- Size: Third Reserved 12
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.third_reserved_12.size = 12

-- Display: Third Reserved 12
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.third_reserved_12.display = function(value)
  return "Third Reserved 12: "..value
end

-- Dissect: Third Reserved 12
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.third_reserved_12.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.third_reserved_12.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.third_reserved_12.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.third_reserved_12, range, range:raw(), display)

  return offset + length, value
end

-- Time In Force
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.time_in_force = {}

-- Size: Time In Force
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.time_in_force.size = 1

-- Display: Time In Force
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.time_in_force.labels = {
  ["0"] = "Time In Force: Day (0)",
  ["1"] = "Time In Force: Gtc (1)",
  ["2"] = "Time In Force: Opg (2)",
  ["3"] = "Time In Force: Ioc (3)",
  ["9"] = "Time In Force: At Crossing (9)",
  ["A"] = "Time In Force: Sao (A)",
  ["*"] = "Time In Force: Downgraded For Older Version (*)",
}

miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.time_in_force.display = function(value)
  return miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.time_in_force.labels[value] or "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.time_in_force.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Trade Action
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_action = {}

-- Size: Trade Action
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_action.size = 1

-- Display: Trade Action
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_action.labels = {
  ["N"] = "Trade Action: New Trade (N)",
  ["C"] = "Trade Action: Trade Correction (C)",
  ["X"] = "Trade Action: Trade Cancel (X)",
}

miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_action.display = function(value)
  return miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_action.labels[value] or "Trade Action: Unknown("..value..")"
end

-- Dissect: Trade Action
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_action.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.trade_action, range, value, display)

  return offset + length, value
end

-- Trade As Of Date
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_as_of_date = {}

-- Size: Trade As Of Date
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_as_of_date.size = 4

-- Display: Trade As Of Date
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_as_of_date.display = function(value)
  return "Trade As Of Date: "..value
end

-- Dissect: Trade As Of Date
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_as_of_date.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_as_of_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_as_of_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.trade_as_of_date, range, value, display)

  return offset + length, value
end

-- Trade Condition
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_condition = {}

-- Size: Trade Condition
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_condition.size = 1

-- Display: Trade Condition
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_condition.display = function(value)
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
    return "Trade Condition: Two Options In The Same Class (L)"
  end
  if value == "M" then
    return "Trade Condition: A Buy And A Sell In A Put And A Call (M)"
  end
  if value == "N" then
    return "Trade Condition: Reserved (N)"
  end
  if value == "O" then
    return "Trade Condition: Reserved (O)"
  end
  if value == "P" then
    return "Trade Condition: Option Or Stock Portion Of A Stock Tied Order (P)"
  end
  if value == "Q" then
    return "Trade Condition: Buy Of A Call And Sell Of A Put (Q)"
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
    return "Trade Condition: Iso Paired Prime (b)"
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
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_condition.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Trade Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_id = {}

-- Size: Trade Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_id.size = 4

-- Display: Trade Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trade Time
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_time = {}

-- Size: Trade Time
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_time.size = 8

-- Display: Trade Time
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_time.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.timestamp_format == 0 then
    return "Trade Time: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (the day the frame that carried it settled on)
  if miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.timestamp_format >= 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()

    -- A frame a file handler read states no instant and reads as the epoch
    if capture_time >= 86400 then
      -- The venue's midnight: the frame's instant less the time of day it states
      local settled = math.floor((capture_time - seconds) / 900 + 0.5) * 900

      -- The zone's own date and clock, in the zone it keeps
      if miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.timestamp_format == 4 then
        local day = math.floor(settled / 86400 + 0.5) * 86400

        return "Trade Time: "..os.date("!%Y-%m-%d %H:%M:%S.", day + seconds)..string.format("%09d", nanoseconds).." America/New York"
      end

      local format = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.timestamp_format == 3 and "!%Y-%m-%d %H:%M:%S." or "%Y-%m-%d %H:%M:%S."
      return "Trade Time: "..os.date(format, settled + seconds)..string.format("%09d", nanoseconds)
    end
  end

  -- Time of day mode
  return "Trade Time: "..os.date("!%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Trade Time
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.trade_time, range, value, display)

  return offset + length, value
end

-- Trade Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_type = {}

-- Size: Trade Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_type.size = 1

-- Display: Trade Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_type.labels = {
  ["A"] = "Trade Type: Automatic (A)",
  ["M"] = "Trade Type: Manual (M)",
}

miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_type.display = function(value)
  return miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_type.labels[value] or "Trade Type: Unknown("..value..")"
end

-- Dissect: Trade Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.trade_type, range, value, display)

  return offset + length, value
end

-- Traded With Directed Mm
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.traded_with_directed_mm = {}

-- Size: Traded With Directed Mm
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.traded_with_directed_mm.size = 1

-- Display: Traded With Directed Mm
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.traded_with_directed_mm.display = function(value)
  if value == "Y" then
    return "Traded With Directed Mm: Yes (Y)"
  end
  if value == "N" then
    return "Traded With Directed Mm: No (N)"
  end
  if value == " " then
    return "Traded With Directed Mm: Not Applicable (<whitespace>)"
  end

  return "Traded With Directed Mm: Unknown("..value..")"
end

-- Dissect: Traded With Directed Mm
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.traded_with_directed_mm.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.traded_with_directed_mm.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.traded_with_directed_mm.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.traded_with_directed_mm, range, value, display)

  return offset + length, value
end

-- Trading Session Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trading_session_id = {}

-- Size: Trading Session Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trading_session_id.size = 4

-- Display: Trading Session Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trading_session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Trading Session Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trading_session_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trading_session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trading_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.trading_session_id, range, value, display)

  return offset + length, value
end

-- Transaction Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.transaction_id = {}

-- Size: Transaction Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.transaction_id.size = 4

-- Display: Transaction Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.transaction_id.display = function(value)
  return "Transaction Id: "..value
end

-- Dissect: Transaction Id
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.transaction_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.transaction_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.transaction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.transaction_id, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.underlying_symbol = {}

-- Size: Underlying Symbol
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.underlying_symbol.size = 11

-- Display: Underlying Symbol
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.underlying_symbol.display = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.underlying_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Underlying Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.underlying_type = {}

-- Size: Underlying Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.underlying_type.size = 1

-- Display: Underlying Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.underlying_type.labels = {
  ["F"] = "Underlying Type: Etf (F)",
  ["I"] = "Underlying Type: Index (I)",
  ["E"] = "Underlying Type: Equity (E)",
}

miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.underlying_type.display = function(value)
  return miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.underlying_type.labels[value] or "Underlying Type: Unknown("..value..")"
end

-- Dissect: Underlying Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.underlying_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.underlying_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.underlying_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.underlying_type, range, value, display)

  return offset + length, value
end

-- Unsequenced Message Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.unsequenced_message_type.labels = {
  ["R"] = "Unsequenced Message Type: Risk Notification Message (R)",
}

miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.unsequenced_message_type.display = function(value)
  return miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.unsequenced_message_type.labels[value] or "Unsequenced Message Type: Unknown("..value..")"
end

-- Dissect: Unsequenced Message Type
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Username
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.username = {}

-- Size: Username
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.username.size = 5

-- Display: Username
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.username.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Miax MiaxOptions ClearingTradeDrop Ctd 2.6.a
-----------------------------------------------------------------------

-- Test Packet
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.test_packet = {}

-- Calculate size of: Test Packet
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.test_packet.size = function(buffer, offset)
  local index = 0

  -- Parse runtime size of: Test Text
  local sesm_packet_length = buffer(offset + index - 3, 2):le_uint()
  index = index + sesm_packet_length - 1

  return index
end

-- Display: Test Packet
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.test_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Test Packet
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.test_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Test Text
  local size_of_test_text = sesm_packet_length - 1

  -- Test Text: 0 Byte Ascii String
  index, test_text = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.test_text.dissect(buffer, index, packet, parent, size_of_test_text)

  return index
end

-- Dissect: Test Packet
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.test_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.test_packet, buffer(offset, 0))
    local index = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.test_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.test_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.test_packet.fields(buffer, offset, packet, parent)
  end
end

-- Client Heartbeat
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.client_heartbeat = {}

-- Display: Client Heartbeat
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.client_heartbeat.display = function(packet, parent, length)
  return "Client Heartbeat"
end


-- Dissect: Client Heartbeat
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.client_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.client_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Server Heartbeat
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.server_heartbeat = {}

-- Display: Server Heartbeat
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.server_heartbeat.display = function(packet, parent, length)
  return "Server Heartbeat"
end


-- Dissect: Server Heartbeat
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.server_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.server_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- End Of Session
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.end_of_session = {}

-- Display: End Of Session
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Goodbye Packet
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.goodbye_packet = {}

-- Calculate size of: Goodbye Packet
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.goodbye_packet.size = function(buffer, offset)
  local index = 0

  index = index + miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.goodbye_reason.size

  -- Parse runtime size of: Logout Text
  local sesm_packet_length = buffer(offset + index - 4, 2):le_uint()
  index = index + sesm_packet_length - 2

  return index
end

-- Display: Goodbye Packet
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.goodbye_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Goodbye Packet
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.goodbye_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Goodbye Reason: 1 Byte Ascii String Enum with 3 values
  index, goodbye_reason = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.goodbye_reason.dissect(buffer, index, packet, parent)

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Logout Text
  local size_of_logout_text = sesm_packet_length - 2

  -- Logout Text: 0 Byte Ascii String
  index, logout_text = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.logout_text.dissect(buffer, index, packet, parent, size_of_logout_text)

  return index
end

-- Dissect: Goodbye Packet
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.goodbye_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.goodbye_packet, buffer(offset, 0))
    local index = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.goodbye_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.goodbye_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.goodbye_packet.fields(buffer, offset, packet, parent)
  end
end

-- Logout Request
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.logout_request = {}

-- Calculate size of: Logout Request
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.logout_request.size = function(buffer, offset)
  local index = 0

  index = index + miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.logout_reason.size

  -- Parse runtime size of: Logout Text
  local sesm_packet_length = buffer(offset + index - 4, 2):le_uint()
  index = index + sesm_packet_length - 2

  return index
end

-- Display: Logout Request
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.logout_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Request
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.logout_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logout Reason: 1 Byte Ascii String Enum with 4 values
  index, logout_reason = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.logout_reason.dissect(buffer, index, packet, parent)

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Logout Text
  local size_of_logout_text = sesm_packet_length - 2

  -- Logout Text: 0 Byte Ascii String
  index, logout_text = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.logout_text.dissect(buffer, index, packet, parent, size_of_logout_text)

  return index
end

-- Dissect: Logout Request
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.logout_request.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.logout_request, buffer(offset, 0))
    local index = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.logout_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.logout_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.logout_request.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Request
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.retransmission_request = {}

-- Size: Retransmission Request
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.retransmission_request.size =
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.start_sequence_number.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.end_sequence_number.size

-- Display: Retransmission Request
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.retransmission_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.retransmission_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, start_sequence_number = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.start_sequence_number.dissect(buffer, index, packet, parent)

  -- End Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, end_sequence_number = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.end_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.retransmission_request.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.retransmission_request, buffer(offset, 0))
    local index = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.retransmission_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.retransmission_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.retransmission_request.fields(buffer, offset, packet, parent)
  end
end

-- Synchronization Complete
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.synchronization_complete = {}

-- Display: Synchronization Complete
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.synchronization_complete.display = function(packet, parent, length)
  return "Synchronization Complete"
end


-- Dissect: Synchronization Complete
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.synchronization_complete.dissect = function(buffer, offset, packet, parent)
  local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.synchronization_complete.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Login Response
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.login_response = {}

-- Size: Login Response
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.login_response.size =
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.login_status.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.session_id.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.highest_sequence_number.size

-- Display: Login Response
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.login_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.login_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Login Status: 1 Byte Ascii String Enum with 7 values
  index, login_status = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.login_status.dissect(buffer, index, packet, parent)

  -- Session Id: 1 Byte Unsigned Fixed Width Integer
  index, session_id = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.session_id.dissect(buffer, index, packet, parent)

  -- Highest Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, highest_sequence_number = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.highest_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.login_response.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.login_response, buffer(offset, 0))
    local index = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.login_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.login_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.login_response.fields(buffer, offset, packet, parent)
  end
end

-- Login Request
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.login_request = {}

-- Size: Login Request
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.login_request.size =
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sesm_version.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.username.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.computer_id.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.application_protocol.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.requested_session.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.requested_sequence_number.size

-- Display: Login Request
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.login_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.login_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sesm Version: 5 Byte Ascii String
  index, sesm_version = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sesm_version.dissect(buffer, index, packet, parent)

  -- Username: 5 Byte Ascii String
  index, username = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.username.dissect(buffer, index, packet, parent)

  -- Computer Id: 8 Byte Ascii String
  index, computer_id = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.computer_id.dissect(buffer, index, packet, parent)

  -- Application Protocol: 8 Byte Ascii String
  index, application_protocol = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.application_protocol.dissect(buffer, index, packet, parent)

  -- Requested Session: 1 Byte Unsigned Fixed Width Integer
  index, requested_session = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, requested_sequence_number = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.login_request.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.login_request, buffer(offset, 0))
    local index = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.login_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.login_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.login_request.fields(buffer, offset, packet, parent)
  end
end

-- Risk Notification Message
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.risk_notification_message = {}

-- Size: Risk Notification Message
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.risk_notification_message.size =
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.processing_time.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.mpid_group_id.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.metric_id.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.route_id.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.metric_type.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.protection_type.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.event_type.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.event_id.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.configured_counting_time_period.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.configured_max_quantity.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.current_quantity.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.max_peak_quantity.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.percentage_level.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reserved_32.size

-- Display: Risk Notification Message
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.risk_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Risk Notification Message
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.risk_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Processing Time: NanoTime
  index, processing_time = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.processing_time.dissect(buffer, index, packet, parent)

  -- Mpid Group Id: Alphanumeric
  index, mpid_group_id = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.mpid_group_id.dissect(buffer, index, packet, parent)

  -- Metric Id: Alphanumeric
  index, metric_id = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.metric_id.dissect(buffer, index, packet, parent)

  -- Route Id: Alphanumeric
  index, route_id = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.route_id.dissect(buffer, index, packet, parent)

  -- Metric Type: Alphanumeric
  index, metric_type = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.metric_type.dissect(buffer, index, packet, parent)

  -- Protection Type: Alphanumeric
  index, protection_type = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.protection_type.dissect(buffer, index, packet, parent)

  -- Event Type: Alphanumeric
  index, event_type = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.event_type.dissect(buffer, index, packet, parent)

  -- Event Id: Binary4U
  index, event_id = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.event_id.dissect(buffer, index, packet, parent)

  -- Configured Counting Time Period: Binary4U
  index, configured_counting_time_period = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.configured_counting_time_period.dissect(buffer, index, packet, parent)

  -- Configured Max Quantity: Binary4U
  index, configured_max_quantity = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.configured_max_quantity.dissect(buffer, index, packet, parent)

  -- Current Quantity: Binary4U
  index, current_quantity = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.current_quantity.dissect(buffer, index, packet, parent)

  -- Max Peak Quantity: Binary4U
  index, max_peak_quantity = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.max_peak_quantity.dissect(buffer, index, packet, parent)

  -- Percentage Level: BinaryU
  index, percentage_level = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.percentage_level.dissect(buffer, index, packet, parent)

  -- Reserved 32: Binary4U
  if show.padding then
    index, reserved_32 = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reserved_32.dissect(buffer, index, packet, parent)
  else
    index = index + miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reserved_32.size
  end

  return index
end

-- Dissect: Risk Notification Message
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.risk_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.risk_notification_message, buffer(offset, 0))
    local index = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.risk_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.risk_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.risk_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Unsequenced Message
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.unsequenced_message = {}

-- Dispatch: Unsequenced Message
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.unsequenced_message.dispatch = {
  ["R"] = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.risk_notification_message.dissect,
}

-- Dissect: Unsequenced Message
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.unsequenced_message.dissect = function(buffer, offset, packet, parent, unsequenced_message_type)
  local dissect = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.unsequenced_message.dispatch[unsequenced_message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Unsequenced Data Packet
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  return sesm_packet_length - 1
end

-- Display: Unsequenced Data Packet
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String Enum with 1 values
  index, unsequenced_message_type = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Unsequenced Message: Runtime Type with 1 branches
  index = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.unsequenced_message.dissect(buffer, index, packet, parent, unsequenced_message_type)

  return index
end

-- Dissect: Unsequenced Data Packet
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Trade Message
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_message = {}

-- Size: Trade Message
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_message.size =
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.processing_time.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_time.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_as_of_date.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_action.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_type.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_id.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.execution_id.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.correction_number.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.transaction_id.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reference_trade_time.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reference_trade_id.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reference_correction_number.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.correction_type.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.event_id.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.strategy_id.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reserved_12.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.product_id.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.underlying_symbol.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.underlying_type.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.security_symbol.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.expiration_date.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.strike_price.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.call_or_put.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reserved_8.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.side.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.price.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.size.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_condition.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.second_reserved_8.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.class_fee_type.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.miax_bbo_posting_increment_indicator.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.execution_exchange.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.routed_order_quantity.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.market_maker_role.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.traded_with_directed_mm.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.market_state.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.auction_type.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.directed_status.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.strategy_state.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.strategy_auction_type.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.stock_execution_destination.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_liquidity_type.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.second_reserved_12.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.executing_mpid.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.order_date.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fix_order_id.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.client_message_id.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.bulk_quote_index.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.open_close_indicator.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.liquidity_type.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.mm_priority_indicator.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.liquidity_indicator.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.liquidity_timer_role.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.time_in_force.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.billing_mpid.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.leg_reference_id.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.strategy_timer_role.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.stock_short_sell_indicator.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reserved_4.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.clearing_mpid.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.member_type.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.origin.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.clearing_number.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.cmta.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.multi_account.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.account_id.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.supplementary_id.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.allocation_id.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.billing_clearing_number.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.order_capacity.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reserved_7.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.mpid.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_member_type.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_origin.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_clearing_number.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_cmta.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_time_in_force.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_liquidity_timer_role.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_strategy_timer_role.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_order_capacity.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.third_reserved_12.size

-- Display: Trade Message
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Processing Time: NanoTime
  index, processing_time = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.processing_time.dissect(buffer, index, packet, parent)

  -- Trade Time: NanoTime
  index, trade_time = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_time.dissect(buffer, index, packet, parent)

  -- Trade As Of Date: BinaryU
  index, trade_as_of_date = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_as_of_date.dissect(buffer, index, packet, parent)

  -- Trade Action: Alphanumeric
  index, trade_action = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_action.dissect(buffer, index, packet, parent)

  -- Trade Type: Alphanumeric
  index, trade_type = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_type.dissect(buffer, index, packet, parent)

  -- Trade Id: BinaryU
  index, trade_id = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_id.dissect(buffer, index, packet, parent)

  -- Execution Id: BinaryU
  index, execution_id = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.execution_id.dissect(buffer, index, packet, parent)

  -- Correction Number: BinaryU
  index, correction_number = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.correction_number.dissect(buffer, index, packet, parent)

  -- Transaction Id: BinaryU
  index, transaction_id = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.transaction_id.dissect(buffer, index, packet, parent)

  -- Reference Trade Time: NanoTime
  index, reference_trade_time = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reference_trade_time.dissect(buffer, index, packet, parent)

  -- Reference Trade Id: BinaryU
  index, reference_trade_id = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reference_trade_id.dissect(buffer, index, packet, parent)

  -- Reference Correction Number: BinaryU
  index, reference_correction_number = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reference_correction_number.dissect(buffer, index, packet, parent)

  -- Correction Type: Alphanumeric
  index, correction_type = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.correction_type.dissect(buffer, index, packet, parent)

  -- Event Id: Binary4U
  index, event_id = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.event_id.dissect(buffer, index, packet, parent)

  -- Strategy Id: BinaryU
  index, strategy_id = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.strategy_id.dissect(buffer, index, packet, parent)

  -- Reserved 12: BinaryU
  if show.padding then
    index, reserved_12 = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reserved_12.dissect(buffer, index, packet, parent)
  else
    index = index + miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reserved_12.size
  end

  -- Product Id: BinaryU
  index, product_id = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.product_id.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Underlying Type: Alphanumeric
  index, underlying_type = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.underlying_type.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration Date: BinaryU
  index, expiration_date = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.expiration_date.dissect(buffer, index, packet, parent)

  -- Strike Price: BinaryPrc4U
  index, strike_price = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.strike_price.dissect(buffer, index, packet, parent)

  -- Call Or Put: Alphanumeric
  index, call_or_put = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.call_or_put.dissect(buffer, index, packet, parent)

  -- Reserved 8: BinaryU
  if show.padding then
    index, reserved_8 = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reserved_8.dissect(buffer, index, packet, parent)
  else
    index = index + miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reserved_8.size
  end

  -- Side: Alphanumeric
  index, side = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.side.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrc4U
  index, price = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.price.dissect(buffer, index, packet, parent)

  -- Size: BinaryU
  index, size = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.size.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_condition.dissect(buffer, index, packet, parent)

  -- Second Reserved 8: BinaryU
  if show.padding then
    index, second_reserved_8 = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.second_reserved_8.dissect(buffer, index, packet, parent)
  else
    index = index + miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.second_reserved_8.size
  end

  -- Class Fee Type: Alphanumeric
  index, class_fee_type = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.class_fee_type.dissect(buffer, index, packet, parent)

  -- Miax Bbo Posting Increment Indicator: Alphanumeric
  index, miax_bbo_posting_increment_indicator = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.miax_bbo_posting_increment_indicator.dissect(buffer, index, packet, parent)

  -- Execution Exchange: Alphanumeric
  index, execution_exchange = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.execution_exchange.dissect(buffer, index, packet, parent)

  -- Routed Order Quantity: BinaryU
  index, routed_order_quantity = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.routed_order_quantity.dissect(buffer, index, packet, parent)

  -- Market Maker Role: Alphanumeric
  index, market_maker_role = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.market_maker_role.dissect(buffer, index, packet, parent)

  -- Traded With Directed Mm: Alphanumeric
  index, traded_with_directed_mm = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.traded_with_directed_mm.dissect(buffer, index, packet, parent)

  -- Market State: Alphanumeric
  index, market_state = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.market_state.dissect(buffer, index, packet, parent)

  -- Auction Type: Alphanumeric
  index, auction_type = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.auction_type.dissect(buffer, index, packet, parent)

  -- Directed Status: Alphanumeric
  index, directed_status = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.directed_status.dissect(buffer, index, packet, parent)

  -- Strategy State: Alphanumeric
  index, strategy_state = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.strategy_state.dissect(buffer, index, packet, parent)

  -- Strategy Auction Type: Alphanumeric
  index, strategy_auction_type = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.strategy_auction_type.dissect(buffer, index, packet, parent)

  -- Stock Execution Destination: Alphanumeric
  index, stock_execution_destination = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.stock_execution_destination.dissect(buffer, index, packet, parent)

  -- Contra Liquidity Type: Alphanumeric
  index, contra_liquidity_type = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_liquidity_type.dissect(buffer, index, packet, parent)

  -- Second Reserved 12: BinaryU
  if show.padding then
    index, second_reserved_12 = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.second_reserved_12.dissect(buffer, index, packet, parent)
  else
    index = index + miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.second_reserved_12.size
  end

  -- Executing Mpid: Alphanumeric
  index, executing_mpid = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.executing_mpid.dissect(buffer, index, packet, parent)

  -- Order Date: BinaryU
  index, order_date = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.order_date.dissect(buffer, index, packet, parent)

  -- Fix Order Id: Alphanumeric
  index, fix_order_id = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fix_order_id.dissect(buffer, index, packet, parent)

  -- Client Message Id: BinaryU
  index, client_message_id = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.client_message_id.dissect(buffer, index, packet, parent)

  -- Bulk Quote Index: BinaryU
  index, bulk_quote_index = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.bulk_quote_index.dissect(buffer, index, packet, parent)

  -- Open Close Indicator: Alphanumeric
  index, open_close_indicator = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.open_close_indicator.dissect(buffer, index, packet, parent)

  -- Liquidity Type: Alphanumeric
  index, liquidity_type = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.liquidity_type.dissect(buffer, index, packet, parent)

  -- Mm Priority Indicator: Alphanumeric
  index, mm_priority_indicator = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.mm_priority_indicator.dissect(buffer, index, packet, parent)

  -- Liquidity Indicator: Alphanumeric
  index, liquidity_indicator = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Liquidity Timer Role: Alphanumeric
  index, liquidity_timer_role = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.liquidity_timer_role.dissect(buffer, index, packet, parent)

  -- Time In Force: Alphanumeric
  index, time_in_force = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.time_in_force.dissect(buffer, index, packet, parent)

  -- Billing Mpid: Alphanumeric
  index, billing_mpid = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.billing_mpid.dissect(buffer, index, packet, parent)

  -- Leg Reference Id: Alphanumeric
  index, leg_reference_id = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.leg_reference_id.dissect(buffer, index, packet, parent)

  -- Strategy Timer Role: Alphanumeric
  index, strategy_timer_role = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.strategy_timer_role.dissect(buffer, index, packet, parent)

  -- Stock Short Sell Indicator: Alphanumeric
  index, stock_short_sell_indicator = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.stock_short_sell_indicator.dissect(buffer, index, packet, parent)

  -- Reserved 4: BinaryU
  if show.padding then
    index, reserved_4 = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reserved_4.size
  end

  -- Clearing Mpid: Alphanumeric
  index, clearing_mpid = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.clearing_mpid.dissect(buffer, index, packet, parent)

  -- Member Type: Alphanumeric
  index, member_type = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.member_type.dissect(buffer, index, packet, parent)

  -- Origin: Alphanumeric
  index, origin = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.origin.dissect(buffer, index, packet, parent)

  -- Clearing Number: BinaryU
  index, clearing_number = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.clearing_number.dissect(buffer, index, packet, parent)

  -- Cmta: BinaryU
  index, cmta = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.cmta.dissect(buffer, index, packet, parent)

  -- Multi Account: Alphanumeric
  index, multi_account = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.multi_account.dissect(buffer, index, packet, parent)

  -- Account Id: Alphanumeric
  index, account_id = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.account_id.dissect(buffer, index, packet, parent)

  -- Supplementary Id: Alphanumeric
  index, supplementary_id = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.supplementary_id.dissect(buffer, index, packet, parent)

  -- Allocation Id: Alphanumeric
  index, allocation_id = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.allocation_id.dissect(buffer, index, packet, parent)

  -- Billing Clearing Number: BinaryU
  index, billing_clearing_number = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.billing_clearing_number.dissect(buffer, index, packet, parent)

  -- Order Capacity: Alphanumeric
  index, order_capacity = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.order_capacity.dissect(buffer, index, packet, parent)

  -- Reserved 7: BinaryU
  if show.padding then
    index, reserved_7 = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reserved_7.dissect(buffer, index, packet, parent)
  else
    index = index + miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.reserved_7.size
  end

  -- Mpid: Alphanumeric
  index, mpid = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.mpid.dissect(buffer, index, packet, parent)

  -- Contra Member Type: Alphanumeric
  index, contra_member_type = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_member_type.dissect(buffer, index, packet, parent)

  -- Contra Origin: Alphanumeric
  index, contra_origin = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_origin.dissect(buffer, index, packet, parent)

  -- Contra Clearing Number: BinaryU
  index, contra_clearing_number = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_clearing_number.dissect(buffer, index, packet, parent)

  -- Contra Cmta: BinaryU
  index, contra_cmta = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_cmta.dissect(buffer, index, packet, parent)

  -- Contra Time In Force: Alphanumeric
  index, contra_time_in_force = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_time_in_force.dissect(buffer, index, packet, parent)

  -- Contra Liquidity Timer Role: Alphanumeric
  index, contra_liquidity_timer_role = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_liquidity_timer_role.dissect(buffer, index, packet, parent)

  -- Contra Strategy Timer Role: Alphanumeric
  index, contra_strategy_timer_role = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_strategy_timer_role.dissect(buffer, index, packet, parent)

  -- Contra Order Capacity: Alphanumeric
  index, contra_order_capacity = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.contra_order_capacity.dissect(buffer, index, packet, parent)

  -- Third Reserved 12: BinaryU
  if show.padding then
    index, third_reserved_12 = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.third_reserved_12.dissect(buffer, index, packet, parent)
  else
    index = index + miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.third_reserved_12.size
  end

  return index
end

-- Dissect: Trade Message
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.trade_message, buffer(offset, 0))
    local index = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- System State
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.system_state = {}

-- Size: System State
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.system_state.size =
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.notification_time.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.ctd_version.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trading_session_id.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.system_status.size

-- Display: System State
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.system_state.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System State
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.system_state.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: NanoTime
  index, notification_time = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.notification_time.dissect(buffer, index, packet, parent)

  -- Ctd Version: Alphanumeric
  index, ctd_version = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.ctd_version.dissect(buffer, index, packet, parent)

  -- Trading Session Id: BinaryU
  index, trading_session_id = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trading_session_id.dissect(buffer, index, packet, parent)

  -- System Status: Alphanumeric
  index, system_status = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.system_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System State
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.system_state.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.system_state, buffer(offset, 0))
    local index = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.system_state.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.system_state.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.system_state.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sequenced_message = {}

-- Dispatch: Sequenced Message
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sequenced_message.dispatch = {
  ["S"] = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.system_state.dissect,
  ["T"] = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.trade_message.dissect,
  ["R"] = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.risk_notification_message.dissect,
}

-- Dissect: Sequenced Message
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  local dissect = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sequenced_message.dispatch[sequenced_message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Data Packet
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  return sesm_packet_length - 1
end

-- Display: Sequenced Data Packet
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sequence_number.dissect(buffer, index, packet, parent)

  -- Sequenced Message Type: 1 Byte Ascii String Enum with 3 values
  index, sequenced_message_type = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 3 branches
  index = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.sequenced_data_packet, buffer(offset, 0))
    local current = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
end

-- Sesm Payload
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sesm_payload = {}

-- Dispatch: Sesm Payload
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sesm_payload.dispatch = {
  ["S"] = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sequenced_data_packet.dissect,
  ["U"] = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.unsequenced_data_packet.dissect,
  ["L"] = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.login_request.dissect,
  ["R"] = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.login_response.dissect,
  ["C"] = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.synchronization_complete.dissect,
  ["A"] = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.retransmission_request.dissect,
  ["X"] = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.logout_request.dissect,
  ["G"] = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.goodbye_packet.dissect,
  ["E"] = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.end_of_session.dissect,
  ["0"] = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.server_heartbeat.dissect,
  ["1"] = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.client_heartbeat.dissect,
  ["T"] = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.test_packet.dissect,
}

-- Dissect: Sesm Payload
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sesm_payload.dissect = function(buffer, offset, packet, parent, sesm_packet_type)
  local dissect = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sesm_payload.dispatch[sesm_packet_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sesm Packet Header
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sesm_packet_header = {}

-- Size: Sesm Packet Header
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sesm_packet_header.size =
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sesm_packet_length.size + 
  miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sesm_packet_type.size

-- Display: Sesm Packet Header
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sesm_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sesm Packet Header
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sesm_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sesm Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, sesm_packet_length = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sesm_packet_length.dissect(buffer, index, packet, parent)

  -- Sesm Packet Type: 1 Byte Ascii String Enum with 12 values
  index, sesm_packet_type = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sesm_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sesm Packet Header
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sesm_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.sesm_packet_header, buffer(offset, 0))
    local index = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sesm_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sesm_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sesm_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Sesm Tcp Packet
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sesm_tcp_packet = {}

-- Display: Sesm Tcp Packet
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sesm_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sesm Tcp Packet
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sesm_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_sesm_tcp_packet)
  local index = offset

  -- Sesm Packet Header: Struct of 2 fields
  index, sesm_packet_header = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sesm_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Sesm Packet Type
  local sesm_packet_type = buffer(index - 1, 1):string()

  -- Sesm Payload: Runtime Type with 12 branches
  index = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sesm_payload.dissect(buffer, index, packet, parent, sesm_packet_type)

  return index
end

-- Dissect: Sesm Tcp Packet
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sesm_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_sesm_tcp_packet)
  local index = offset + size_of_sesm_tcp_packet

  -- Its fields read only its own bytes: a layout running past them is marked, not raised
  local bounded = buffer(0, math.min(index, buffer:len())):tvb()

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.fields.sesm_tcp_packet, buffer(offset, 0))
    local decoded, failure = pcall(miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sesm_tcp_packet.fields, bounded, offset, packet, parent, size_of_sesm_tcp_packet)
    if not decoded then
      undecoded(failure, parent, miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.experts.undecoded, "Sesm Tcp Packet does not decode within its "..size_of_sesm_tcp_packet.." bytes")
    end
    parent:set_len(size_of_sesm_tcp_packet)
    local display = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sesm_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    local decoded, failure = pcall(miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sesm_tcp_packet.fields, bounded, offset, packet, parent, size_of_sesm_tcp_packet)
    if not decoded then
      undecoded(failure, parent, miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.experts.undecoded, "Sesm Tcp Packet does not decode within its "..size_of_sesm_tcp_packet.." bytes")
    end

    return index
  end
end

-- Remaining Bytes For: Sesm Tcp Packet
local sesm_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sesm_packet_header.size then
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
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.packet = {}

-- Verify required size of Tcp packet
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.packet.requiredsize = function(buffer)
  return buffer:len() >= miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sesm_packet_header.size
end

-- Dissect Packet
miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.packet.dissect = function(buffer, packet, parent)
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
      index = miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.sesm_tcp_packet.dissect(frame, index, packet, parent, size_of_sesm_tcp_packet)
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
function omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.init()
end

-- Dissector for Miax MiaxOptions ClearingTradeDrop Ctd 2.6.a
function omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.name

  -- Dissect protocol
  local protocol = parent:add(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a, buffer(), omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.description, "("..buffer:len().." Bytes)")
  return miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Miax MiaxOptions ClearingTradeDrop Ctd 2.6.a (Tcp)
local function omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a
  omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Miax MiaxOptions ClearingTradeDrop Ctd 2.6.a
omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a:register_heuristic("tcp", omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a_tcp_heuristic)

-- Register Miax MiaxOptions ClearingTradeDrop Ctd 2.6.a for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_miax_miaxoptions_clearingtradedrop_ctd_v2_6_a)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Miami International Holdings
--   Version: 2.6.a
--   Date: Monday, August 22, 2022
--   Specification: Clearing_Trade_Drop_CTD_v2.6a.pdf
--   Specification: MIAX Options TcpSessionMgmt SesM v1_1e.pdf
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
