-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Miax MiaxOptions ExpressInterface Mei 2.9.c Protocol
local omi_miax_miaxoptions_expressinterface_mei_v2_9_c = Proto("Omi.Miax.MiaxOptions.ExpressInterface.Mei.v2.9.c", "Miax MiaxOptions ExpressInterface Mei 2.9.c")

-- Protocol table
local miax_miaxoptions_expressinterface_mei_v2_9_c = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Miax MiaxOptions ExpressInterface Mei 2.9.c Fields
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.action = ProtoField.new("Action", "miax.miaxoptions.expressinterface.mei.v2.9.c.action", ftypes.STRING)
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.active_on_miax = ProtoField.new("Active On Miax", "miax.miaxoptions.expressinterface.mei.v2.9.c.activeonmiax", ftypes.STRING, nil, nil, nil, "Indicates if this symbol is tradable on MIAX in the current session")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.allowable_engagement_percentage = ProtoField.new("Allowable Engagement Percentage", "miax.miaxoptions.expressinterface.mei.v2.9.c.allowableengagementpercentage", ftypes.UINT32, nil, nil, nil, "Percentage of quote size at which the Market Maker wants MIAX to trigger ARM protection for this underlying. Please refer to the rules for details of ARM. Maximum value is 65,535 (65,535%). See note below on minimum value.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.application_protocol = ProtoField.new("Application Protocol", "miax.miaxoptions.expressinterface.mei.v2.9.c.applicationprotocol", ftypes.STRING, nil, nil, nil, "Eg: MEI1.0 (right padded with spaces)")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.arm_2_counting_period = ProtoField.new("Arm 2 Counting Period", "miax.miaxoptions.expressinterface.mei.v2.9.c.arm2countingperiod", ftypes.UINT32, nil, nil, nil, "Counting Period in milliseconds in which the number of unique ARM triggers cannot exceed the configured ARM Threshold Count specified for ARM2 protection.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.arm_settings_update_status = ProtoField.new("Arm Settings Update Status", "miax.miaxoptions.expressinterface.mei.v2.9.c.armsettingsupdatestatus", ftypes.STRING)
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.arm_threshold_count = ProtoField.new("Arm Threshold Count", "miax.miaxoptions.expressinterface.mei.v2.9.c.armthresholdcount", ftypes.UINT32, nil, nil, nil, "Number of unique ARM triggers for the Counting Period that will trigger ARM2 Firm Level protection.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.bulk_quote_index = ProtoField.new("Bulk Quote Index", "miax.miaxoptions.expressinterface.mei.v2.9.c.bulkquoteindex", ftypes.UINT8, nil, nil, nil, "Simple Bulk Quote Index assigned by MIAX to each simple quote in bulk quote (quote position in the simple bulk quote); 0 if status is not for a bulk quote")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.bulk_quote_status = ProtoField.new("Bulk Quote Status", "miax.miaxoptions.expressinterface.mei.v2.9.c.bulkquotestatus", ftypes.STRING)
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.call_or_put = ProtoField.new("Call Or Put", "miax.miaxoptions.expressinterface.mei.v2.9.c.callorput", ftypes.STRING, nil, nil, nil, "Option Type")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.cancel_reason = ProtoField.new("Cancel Reason", "miax.miaxoptions.expressinterface.mei.v2.9.c.cancelreason", ftypes.STRING)
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.client_message_id = ProtoField.new("Client Message Id", "miax.miaxoptions.expressinterface.mei.v2.9.c.clientmessageid", ftypes.UINT32, nil, nil, nil, "Unique message ID assigned by the firm")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.client_send_time_utc = ProtoField.new("Client Send Time", "miax.miaxoptions.expressinterface.mei.v2.9.c.clientsendtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Firm’s send time for the Quotes. Nanoseconds since Epoch.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.client_send_time = ProtoField.new("Client Send Time", "miax.miaxoptions.expressinterface.mei.v2.9.c.clientsendtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Firm’s send time for the Quotes. Nanoseconds since Epoch.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.closing_time = ProtoField.new("Closing Time", "miax.miaxoptions.expressinterface.mei.v2.9.c.closingtime", ftypes.STRING, nil, nil, nil, "Expressed in HH:MM:SS format. Eg: 16:15:00")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.complex_event_id = ProtoField.new("Complex Event Id", "miax.miaxoptions.expressinterface.mei.v2.9.c.complexeventid", ftypes.UINT32, nil, nil, nil, "When complex eQuote Type = “A”: For Auction events, Event ID must match the Event ID of the event in progress (MIAX Event ID that was published in the Complex Liquidity seeking event notification) When complex eQuote Type is other than “A”: MIAX will ignore Event ID. Firms can send an Event ID of zero.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.complex_liquidity_protection_reset_status = ProtoField.new("Complex Liquidity Protection Reset Status", "miax.miaxoptions.expressinterface.mei.v2.9.c.complexliquidityprotectionresetstatus", ftypes.STRING)
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.complex_liquidity_reset = ProtoField.new("Complex Liquidity Reset", "miax.miaxoptions.expressinterface.mei.v2.9.c.complexliquidityreset", ftypes.STRING, nil, nil, nil, "Request to reset complex liquidities")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.complex_mass_cancel = ProtoField.new("Complex Mass Cancel", "miax.miaxoptions.expressinterface.mei.v2.9.c.complexmasscancel", ftypes.STRING, nil, nil, nil, "Request to mass cancel all complex liquidities.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.complex_mass_liquidity_cancel_status = ProtoField.new("Complex Mass Liquidity Cancel Status", "miax.miaxoptions.expressinterface.mei.v2.9.c.complexmassliquiditycancelstatus", ftypes.STRING)
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.computer_id = ProtoField.new("Computer Id", "miax.miaxoptions.expressinterface.mei.v2.9.c.computerid", ftypes.STRING, nil, nil, nil, "ID issued by MIAX during initial setup")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.counting_period = ProtoField.new("Counting Period", "miax.miaxoptions.expressinterface.mei.v2.9.c.countingperiod", ftypes.UINT16, nil, nil, nil, "Duration (in number of milliseconds) in which Engagement percentage is calculated in order to determine if the MPID should be put on ARM protection for this underlying. Allowable Range: 100 to 15,000 milliseconds Must be a multiple of 100 milliseconds.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.e_quote_action = ProtoField.new("E Quote Action", "miax.miaxoptions.expressinterface.mei.v2.9.c.equoteaction", ftypes.STRING, nil, nil, nil, "eQuote Action")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.e_quote_id = ProtoField.new("E Quote Id", "miax.miaxoptions.expressinterface.mei.v2.9.c.equoteid", ftypes.UINT64, nil, nil, nil, "MIAX assigned ID for eQuote if accepted; Zero if eQuote was rejected. Replaced eQuote will have the same eQuote ID as original.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.e_quote_request_status = ProtoField.new("E Quote Request Status", "miax.miaxoptions.expressinterface.mei.v2.9.c.equoterequeststatus", ftypes.STRING, nil, nil, nil, "eQuote Request Status")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.e_quote_type = ProtoField.new("E Quote Type", "miax.miaxoptions.expressinterface.mei.v2.9.c.equotetype", ftypes.STRING, nil, nil, nil, "Type of eQuote")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.end_sequence_number = ProtoField.new("End Sequence Number", "miax.miaxoptions.expressinterface.mei.v2.9.c.endsequencenumber", ftypes.UINT64, nil, nil, nil, "Sequence number of the last packet to be retransmitted")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.engine_sequence_number = ProtoField.new("Engine Sequence Number", "miax.miaxoptions.expressinterface.mei.v2.9.c.enginesequencenumber", ftypes.UINT64, nil, nil, nil, "MIAX Engine sequence number of this cancel")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.event_id = ProtoField.new("Event Id", "miax.miaxoptions.expressinterface.mei.v2.9.c.eventid", ftypes.UINT32, nil, nil, nil, "When eQuote Type = “O” or “P”: - Event ID must be zero. Otherwise, eQuote will be rejected. When eQuote Type = “A”: - For Opening event, Event ID must be zero. Otherwise, eQuote will be rejected. - For other Auction/Timer events, Event ID must match the Event ID of the event in progress (MIAX Event ID that was published in the Liquidity seeking event notification) When eQuote Type = “I”, “F” or “S”: MIAX will ignore Event ID. Firms can send an Event ID of zero. This can be changed in a replacement eQuote.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.event_reason = ProtoField.new("Event Reason", "miax.miaxoptions.expressinterface.mei.v2.9.c.eventreason", ftypes.STRING)
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.execution_id = ProtoField.new("Execution Id", "miax.miaxoptions.expressinterface.mei.v2.9.c.executionid", ftypes.UINT64, nil, nil, nil, "MIAX execution ID")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.expected_event_time = ProtoField.new("Expected Event Time", "miax.miaxoptions.expressinterface.mei.v2.9.c.expectedeventtime", ftypes.UINT64, nil, nil, nil, "Expected time of start of the event as specified below: When trading status=”H”, this will be 0 (zero). When trading status =”C”, this will be the time at which Closing rotation will start for this Product When trading status = “R”, this will be the time at which the reopening process will start for this Product")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.expiration_date = ProtoField.new("Expiration Date", "miax.miaxoptions.expressinterface.mei.v2.9.c.expirationdate", ftypes.STRING, nil, nil, nil, "Expiration date of the option in YYYYMMDD format")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.goodbye_reason = ProtoField.new("Goodbye Reason", "miax.miaxoptions.expressinterface.mei.v2.9.c.goodbyereason", ftypes.STRING, nil, nil, nil, "Reason")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.highest_sequence_number = ProtoField.new("Highest Sequence Number", "miax.miaxoptions.expressinterface.mei.v2.9.c.highestsequencenumber", ftypes.UINT64, nil, nil, nil, "The highest sequence number that the server currently has for the client")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.invalid_quote_count = ProtoField.new("Invalid Quote Count", "miax.miaxoptions.expressinterface.mei.v2.9.c.invalidquotecount", ftypes.UINT8, nil, nil, nil, "Number of quotes that were rejected (quotes with status other than “ “)")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.last_price = ProtoField.new("Last Price", "miax.miaxoptions.expressinterface.mei.v2.9.c.lastprice", ftypes.DOUBLE, nil, nil, nil, "Price of this execution")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.last_size = ProtoField.new("Last Size", "miax.miaxoptions.expressinterface.mei.v2.9.c.lastsize", ftypes.UINT32, nil, nil, nil, "Number of contracts executed (not cumulative)")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.leg = ProtoField.new("Leg", "miax.miaxoptions.expressinterface.mei.v2.9.c.leg", ftypes.STRING, nil, nil, nil, "2 to 8 legs")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.leg_ratio_qty = ProtoField.new("Leg Ratio Qty", "miax.miaxoptions.expressinterface.mei.v2.9.c.legratioqty", ftypes.UINT16, nil, nil, nil, "The ratio of this individual leg. Number of option contracts or Number of stock shares for this leg is: LegRatioQty * OrderQty")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.leg_side = ProtoField.new("Leg Side", "miax.miaxoptions.expressinterface.mei.v2.9.c.legside", ftypes.STRING, nil, nil, nil, "The side of this individual leg")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.liquidity_type = ProtoField.new("Liquidity Type", "miax.miaxoptions.expressinterface.mei.v2.9.c.liquiditytype", ftypes.STRING)
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.login_status = ProtoField.new("Login Status", "miax.miaxoptions.expressinterface.mei.v2.9.c.loginstatus", ftypes.STRING)
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.logout_reason = ProtoField.new("Logout Reason", "miax.miaxoptions.expressinterface.mei.v2.9.c.logoutreason", ftypes.STRING, nil, nil, nil, "Reason")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.logout_text = ProtoField.new("Logout Text", "miax.miaxoptions.expressinterface.mei.v2.9.c.logouttext", ftypes.STRING, nil, nil, nil, "Free form human readable text to provide more details beyond the reasons mentioned above")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.long_term_option = ProtoField.new("Long Term Option", "miax.miaxoptions.expressinterface.mei.v2.9.c.longtermoption", ftypes.STRING)
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.long_term_option_multiplier = ProtoField.new("Long Term Option Multiplier", "miax.miaxoptions.expressinterface.mei.v2.9.c.longtermoptionmultiplier", ftypes.DOUBLE, nil, nil, nil, "Multiplier of the maximum quote width (specified in the previous field) for this range applicable for Long Term Options.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.low_end_of_applicable_range = ProtoField.new("Low End Of Applicable Range", "miax.miaxoptions.expressinterface.mei.v2.9.c.lowendofapplicablerange", ftypes.DOUBLE, nil, nil, nil, "Low end of the price range for which this valid width is applicable. The high end of the price range is up to, but not including the low end of next row or infinity for last row.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.maximum_quote_width = ProtoField.new("Maximum Quote Width", "miax.miaxoptions.expressinterface.mei.v2.9.c.maximumquotewidth", ftypes.DOUBLE, nil, nil, nil, "Quote width applicable for this range for Options that are not Long Term Options.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.mei_version = ProtoField.new("Mei Version", "miax.miaxoptions.expressinterface.mei.v2.9.c.meiversion", ftypes.STRING, nil, nil, nil, "Eg:MEIX.X (where is ‘X’ is MEI version i.e.1.1 or 1.6)")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.miax_bbo_posting_increment_indicator = ProtoField.new("Miax Bbo Posting Increment Indicator", "miax.miaxoptions.expressinterface.mei.v2.9.c.miaxbbopostingincrementindicator", ftypes.STRING, nil, nil, nil, "This is the Minimum Price Variation as agreed to by the Options industry (penny pilot program) and as published by MIAX")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.mpid = ProtoField.new("Mpid", "miax.miaxoptions.expressinterface.mei.v2.9.c.mpid", ftypes.STRING, nil, nil, nil, "MIAX assigned ID of the Market Maker")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.mpv_class = ProtoField.new("Mpv Class", "miax.miaxoptions.expressinterface.mei.v2.9.c.mpvclass", ftypes.STRING, nil, nil, nil, "This valid width record is applicable for Options in this MPV class")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.net_price = ProtoField.new("Net Price", "miax.miaxoptions.expressinterface.mei.v2.9.c.netprice", ftypes.DOUBLE, nil, nil, nil, "The net limit price for the strategy If Side is “B”: • Positive number represents net debit • Negative number represents net credit If Side is “A”: • Positive number represents net credit • Negative number represents net debit Price of zero is net neutral transaction for either side.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.notification_time = ProtoField.new("Notification Time", "miax.miaxoptions.expressinterface.mei.v2.9.c.notificationtime", ftypes.UINT64, nil, nil, nil, "Time at which this was generated by MIAX system.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.notification_type = ProtoField.new("Notification Type", "miax.miaxoptions.expressinterface.mei.v2.9.c.notificationtype", ftypes.STRING)
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.number_of_legs = ProtoField.new("Number Of Legs", "miax.miaxoptions.expressinterface.mei.v2.9.c.numberoflegs", ftypes.UINT8, nil, nil, nil, "Number of Legs. Variable from 2 to 8")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.opening_time = ProtoField.new("Opening Time", "miax.miaxoptions.expressinterface.mei.v2.9.c.openingtime", ftypes.STRING, nil, nil, nil, "Expressed in HH:MM:SS format. Eg: 09:30:00")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.opening_underlying_market_code = ProtoField.new("Opening Underlying Market Code", "miax.miaxoptions.expressinterface.mei.v2.9.c.openingunderlyingmarketcode", ftypes.STRING, nil, nil, nil, "Options opening will be triggered on receipt of Opening quote/trade from this Underlying market")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.price = ProtoField.new("Price", "miax.miaxoptions.expressinterface.mei.v2.9.c.price", ftypes.DOUBLE, nil, nil, nil, "Price up to which the Market Maker is willing to match. Max Price: Defined in Technical Circular This can be changed in a replacement eQuote. This is ignored for eQuote cancels.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.priority_quote_width = ProtoField.new("Priority Quote Width", "miax.miaxoptions.expressinterface.mei.v2.9.c.priorityquotewidth", ftypes.DOUBLE, nil, nil, nil, "Maximum allowable width for a quote for this Option during regular trading in order to be considered as Priority Quote. 0 when Priority Quote Width is not applicable.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.product_add_update_time = ProtoField.new("Product Add Update Time", "miax.miaxoptions.expressinterface.mei.v2.9.c.productaddupdatetime", ftypes.UINT64, nil, nil, nil, "Time at which this product is added/updated on MIAX system today.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.product_id = ProtoField.new("Product Id", "miax.miaxoptions.expressinterface.mei.v2.9.c.productid", ftypes.UINT32, nil, nil, nil, "MIAX Product ID mapped to a given option. It is assigned per trading session and is valid for that session.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.product_id_or_strategy_id = ProtoField.new("Product Id Or Strategy Id", "miax.miaxoptions.expressinterface.mei.v2.9.c.productidorstrategyid", ftypes.UINT32, nil, nil, nil, "MIAX Product ID for Liquidity Types “Q” and “E”, and MIAX Strategy ID for Liquidity Type “C” and “X”.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.quote_acceptance_increment_indicator = ProtoField.new("Quote Acceptance Increment Indicator", "miax.miaxoptions.expressinterface.mei.v2.9.c.quoteacceptanceincrementindicator", ftypes.STRING, nil, nil, nil, "This is the Minimum Price Variation for Quote acceptance as per MIAX rules")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.quote_ack_time = ProtoField.new("Quote Ack Time", "miax.miaxoptions.expressinterface.mei.v2.9.c.quoteacktime", ftypes.UINT64, nil, nil, nil, "Time at which MIAX engine generated this response.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.quote_count = ProtoField.new("Quote Count", "miax.miaxoptions.expressinterface.mei.v2.9.c.quotecount", ftypes.UINT8, nil, nil, nil, "Number of quotes in this bulk quote message.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.quote_protection_reset_status = ProtoField.new("Quote Protection Reset Status", "miax.miaxoptions.expressinterface.mei.v2.9.c.quoteprotectionresetstatus", ftypes.STRING)
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.quote_status = ProtoField.new("Quote Status", "miax.miaxoptions.expressinterface.mei.v2.9.c.quotestatus", ftypes.STRING)
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.quotee_quote_side = ProtoField.new("Quotee Quote Side", "miax.miaxoptions.expressinterface.mei.v2.9.c.quoteequoteside", ftypes.STRING, nil, nil, nil, "This is the side of the liquidity that is being canceled")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.relief_multiplier = ProtoField.new("Relief Multiplier", "miax.miaxoptions.expressinterface.mei.v2.9.c.reliefmultiplier", ftypes.DOUBLE, nil, nil, nil, "Relief is the multiplier times the regular acceptable quote width. Eg: For a series with quote width of $0.25, a relief multiplier of 2 implies that the acceptable quote width is $0.50.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "miax.miaxoptions.expressinterface.mei.v2.9.c.requestedsequencenumber", ftypes.UINT64, nil, nil, nil, "Specifies client requested sequence number: next sequence number the client wants to receive upon connection, or 0 to start receiving only new messages without any replay of old messages")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.requested_session = ProtoField.new("Requested Session", "miax.miaxoptions.expressinterface.mei.v2.9.c.requestedsession", ftypes.UINT8, nil, nil, nil, "Specifies the session the client would like to log into, or zero to log into the currently active session")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.reserved_1 = ProtoField.new("Reserved 1", "miax.miaxoptions.expressinterface.mei.v2.9.c.reserved1", ftypes.BYTES, nil, nil, nil, "** Reserved for future use **")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.reserved_10 = ProtoField.new("Reserved 10", "miax.miaxoptions.expressinterface.mei.v2.9.c.reserved10", ftypes.BYTES, nil, nil, nil, "** Reserved for future use **")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.reserved_15 = ProtoField.new("Reserved 15", "miax.miaxoptions.expressinterface.mei.v2.9.c.reserved15", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.reserved_16 = ProtoField.new("Reserved 16", "miax.miaxoptions.expressinterface.mei.v2.9.c.reserved16", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.reserved_2 = ProtoField.new("Reserved 2", "miax.miaxoptions.expressinterface.mei.v2.9.c.reserved2", ftypes.BYTES, nil, nil, nil, "* Reserved for future use. *")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.reserved_32 = ProtoField.new("Reserved 32", "miax.miaxoptions.expressinterface.mei.v2.9.c.reserved32", ftypes.BYTES, nil, nil, nil, "* Reserved for future use. *")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.reserved_4 = ProtoField.new("Reserved 4", "miax.miaxoptions.expressinterface.mei.v2.9.c.reserved4", ftypes.BYTES, nil, nil, nil, "* Reserved for future use. *")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.reserved_8 = ProtoField.new("Reserved 8", "miax.miaxoptions.expressinterface.mei.v2.9.c.reserved8", ftypes.BYTES, nil, nil, nil, "** Reserved for future use **")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.restricted_option = ProtoField.new("Restricted Option", "miax.miaxoptions.expressinterface.mei.v2.9.c.restrictedoption", ftypes.STRING)
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.security_id = ProtoField.new("Security Id", "miax.miaxoptions.expressinterface.mei.v2.9.c.securityid", ftypes.UINT32, nil, nil, nil, "Option Product ID if Security ID Scope = “P” Complex Strategy ID if Security ID Scope = “S” If set to zero, will apply reset for both sides of every option or every strategy for the MPID")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.security_id_scope = ProtoField.new("Security Id Scope", "miax.miaxoptions.expressinterface.mei.v2.9.c.securityidscope", ftypes.STRING, nil, nil, nil, "Defines type of security specified in “Security ID” field.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.security_symbol = ProtoField.new("Security Symbol", "miax.miaxoptions.expressinterface.mei.v2.9.c.securitysymbol", ftypes.STRING, nil, nil, nil, "Option Security Symbol")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.sequence_number = ProtoField.new("Sequence Number", "miax.miaxoptions.expressinterface.mei.v2.9.c.sequencenumber", ftypes.UINT64, nil, nil, nil, "Sequence number of this sequenced data packet")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "miax.miaxoptions.expressinterface.mei.v2.9.c.sequenceddatapacket", ftypes.STRING, nil, nil, nil, "The Server application can choose to use Sequenced data packets to send all messages that must be recoverable by the client in case of a connection loss")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "miax.miaxoptions.expressinterface.mei.v2.9.c.sequencedmessagetype", ftypes.STRING, nil, nil, nil, "Message type of the application message the sequenced data packet carries")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.sesm_packet_length = ProtoField.new("Sesm Packet Length", "miax.miaxoptions.expressinterface.mei.v2.9.c.sesmpacketlength", ftypes.UINT16, nil, nil, nil, "The length of rest of the packet")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.sesm_packet_type = ProtoField.new("Sesm Packet Type", "miax.miaxoptions.expressinterface.mei.v2.9.c.sesmpackettype", ftypes.STRING, nil, nil, nil, "SesM protocol packet type")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.sesm_version = ProtoField.new("Sesm Version", "miax.miaxoptions.expressinterface.mei.v2.9.c.sesmversion", ftypes.STRING, nil, nil, nil, "1.1 (right padded with spaces)")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.session_id = ProtoField.new("Session Id", "miax.miaxoptions.expressinterface.mei.v2.9.c.sessionid", ftypes.UINT8, nil, nil, nil, "MIAX assigned ID for the current trading session")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.side = ProtoField.new("Side", "miax.miaxoptions.expressinterface.mei.v2.9.c.side", ftypes.STRING, nil, nil, nil, "Side of this eQuote")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.simple_liquidity_protection_reset_status = ProtoField.new("Simple Liquidity Protection Reset Status", "miax.miaxoptions.expressinterface.mei.v2.9.c.simpleliquidityprotectionresetstatus", ftypes.STRING)
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.simple_liquidity_reset = ProtoField.new("Simple Liquidity Reset", "miax.miaxoptions.expressinterface.mei.v2.9.c.simpleliquidityreset", ftypes.STRING, nil, nil, nil, "Request to reset simple liquidities protection")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.simple_mass_cancel = ProtoField.new("Simple Mass Cancel", "miax.miaxoptions.expressinterface.mei.v2.9.c.simplemasscancel", ftypes.STRING, nil, nil, nil, "Request to Mass Cancel all Simple liquidities.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.simple_mass_liquidity_cancel_status = ProtoField.new("Simple Mass Liquidity Cancel Status", "miax.miaxoptions.expressinterface.mei.v2.9.c.simplemassliquiditycancelstatus", ftypes.STRING)
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.simple_mass_quote_cancel_status = ProtoField.new("Simple Mass Quote Cancel Status", "miax.miaxoptions.expressinterface.mei.v2.9.c.simplemassquotecancelstatus", ftypes.STRING)
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.single_side_quote = ProtoField.new("Single Side Quote", "miax.miaxoptions.expressinterface.mei.v2.9.c.singlesidequote", ftypes.STRING, nil, nil, nil, "1 to 50 single-side quotes")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.single_side_quote_response = ProtoField.new("Single Side Quote Response", "miax.miaxoptions.expressinterface.mei.v2.9.c.singlesidequoteresponse", ftypes.STRING, nil, nil, nil, "1 to 50 single-side quote responses")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.size = ProtoField.new("Size", "miax.miaxoptions.expressinterface.mei.v2.9.c.size", ftypes.UINT32, nil, nil, nil, "Number of contracts. Max Size: 999,999 This can be changed in a replacement eQuote. Not applicable for eQuote cancel because eQuote cancel request will result in entire remaining size to be canceled.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.source = ProtoField.new("Source", "miax.miaxoptions.expressinterface.mei.v2.9.c.source", ftypes.STRING)
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.start_sequence_number = ProtoField.new("Start Sequence Number", "miax.miaxoptions.expressinterface.mei.v2.9.c.startsequencenumber", ftypes.UINT64, nil, nil, nil, "Sequence number of the first packet to be retransmitted")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.status = ProtoField.new("Status", "miax.miaxoptions.expressinterface.mei.v2.9.c.status", ftypes.STRING)
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.stock_sell_short_indicator = ProtoField.new("Stock Sell Short Indicator", "miax.miaxoptions.expressinterface.mei.v2.9.c.stocksellshortindicator", ftypes.STRING, nil, nil, nil, "Sell Short indicator if this complex eQuote sells the stock leg of the strategy")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.strategy_id = ProtoField.new("Strategy Id", "miax.miaxoptions.expressinterface.mei.v2.9.c.strategyid", ftypes.UINT32, nil, nil, nil, "MIAX Strategy ID is assigned per trading day and is valid only for that day. ID is not unique between Series Product ID.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.strike_price = ProtoField.new("Strike Price", "miax.miaxoptions.expressinterface.mei.v2.9.c.strikeprice", ftypes.DOUBLE, nil, nil, nil, "Explicit strike price of the option. Refer to data types for field processing notes")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.system_status = ProtoField.new("System Status", "miax.miaxoptions.expressinterface.mei.v2.9.c.systemstatus", ftypes.STRING)
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.target_message_id = ProtoField.new("Target Message Id", "miax.miaxoptions.expressinterface.mei.v2.9.c.targetmessageid", ftypes.UINT32, nil, nil, nil, "Zero if this is a new request. Otherwise, Client Message ID of the pending eQuote that is being replaced.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.test_text = ProtoField.new("Test Text", "miax.miaxoptions.expressinterface.mei.v2.9.c.testtext", ftypes.STRING, nil, nil, nil, "Free form human readable text")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.trade_id = ProtoField.new("Trade Id", "miax.miaxoptions.expressinterface.mei.v2.9.c.tradeid", ftypes.UINT32, nil, nil, nil, "MIAX Trade ID")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.trade_status = ProtoField.new("Trade Status", "miax.miaxoptions.expressinterface.mei.v2.9.c.tradestatus", ftypes.STRING)
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.trading_status = ProtoField.new("Trading Status", "miax.miaxoptions.expressinterface.mei.v2.9.c.tradingstatus", ftypes.STRING)
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.trigger_reason = ProtoField.new("Trigger Reason", "miax.miaxoptions.expressinterface.mei.v2.9.c.triggerreason", ftypes.STRING)
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.triggering_bulk_quote_index = ProtoField.new("Triggering Bulk Quote Index", "miax.miaxoptions.expressinterface.mei.v2.9.c.triggeringbulkquoteindex", ftypes.UINT8, nil, nil, nil, "Simple Bulk Quote Index assigned by MIAX to each quote in bulk quote when triggering liquidity is a Standard Quote")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.triggering_client_message_id = ProtoField.new("Triggering Client Message Id", "miax.miaxoptions.expressinterface.mei.v2.9.c.triggeringclientmessageid", ftypes.UINT32, nil, nil, nil, "Client Message ID supplied by the firm for the liquidity that triggered Single Side Liquidity Protection")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "miax.miaxoptions.expressinterface.mei.v2.9.c.underlyingsymbol", ftypes.STRING, nil, nil, nil, "Stock Symbol for the option.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "miax.miaxoptions.expressinterface.mei.v2.9.c.unsequenceddatapacket", ftypes.STRING, nil, nil, nil, "Each unsequenced data packet carries one unsequenced message from the higher-level protocol")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "miax.miaxoptions.expressinterface.mei.v2.9.c.unsequencedmessagetype", ftypes.STRING, nil, nil, nil, "Message type of the application message the unsequenced data packet carries")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.update_reason = ProtoField.new("Update Reason", "miax.miaxoptions.expressinterface.mei.v2.9.c.updatereason", ftypes.STRING)
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.username = ProtoField.new("Username", "miax.miaxoptions.expressinterface.mei.v2.9.c.username", ftypes.STRING, nil, nil, nil, "Username issued by MIAX during initial setup")

-- Miax MiaxOptions ExpressInterface Mei 2.9.c Framing
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.packet = ProtoField.new("Packet", "miax.miaxoptions.expressinterface.mei.v2.9.c.packet", ftypes.STRING, nil, nil, nil, "SesM Packet")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.sesm_packet_header = ProtoField.new("Sesm Packet Header", "miax.miaxoptions.expressinterface.mei.v2.9.c.sesmpacketheader", ftypes.STRING)
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.sesm_tcp_packet = ProtoField.new("Sesm Tcp Packet", "miax.miaxoptions.expressinterface.mei.v2.9.c.sesmtcppacket", ftypes.STRING)

-- Miax MiaxOptions ExpressInterface 2.9.c Application Messages
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.arm_2_firm_level_protection_notification = ProtoField.new("Arm 2 Firm Level Protection Notification", "miax.miaxoptions.expressinterface.mei.v2.9.c.arm2firmlevelprotectionnotification", ftypes.STRING, nil, nil, nil, "This message format will be used to notify firms about ARM2 Firm Level protection events.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.arm_2_underlying_level_protection_notification = ProtoField.new("Arm 2 Underlying Level Protection Notification", "miax.miaxoptions.expressinterface.mei.v2.9.c.arm2underlyinglevelprotectionnotification", ftypes.STRING, nil, nil, nil, "This message format will be used to notify firms about ARM2 Underlying Level protection events.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.arm_2_underlying_level_protection_settings_notification = ProtoField.new("Arm 2 Underlying Level Protection Settings Notification", "miax.miaxoptions.expressinterface.mei.v2.9.c.arm2underlyinglevelprotectionsettingsnotification", ftypes.STRING, nil, nil, nil, "This message format will be used to notify firms of their ARM2 Underlying Level protection settings.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.arm_2_underlying_level_protection_settings_update_request = ProtoField.new("Arm 2 Underlying Level Protection Settings Update Request", "miax.miaxoptions.expressinterface.mei.v2.9.c.arm2underlyinglevelprotectionsettingsupdaterequest", ftypes.STRING, nil, nil, nil, "Firms can use this message format to set up their ARM2 Underlying Level protection settings for each session. Changes to these settings can be made throughout the day.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.arm_2_underlying_level_protection_settings_update_response = ProtoField.new("Arm 2 Underlying Level Protection Settings Update Response", "miax.miaxoptions.expressinterface.mei.v2.9.c.arm2underlyinglevelprotectionsettingsupdateresponse", ftypes.STRING, nil, nil, nil, "MIAX uses this format to respond to the firm with a status of their ARM2 Underlying level protection Settings Update Request.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.cancel_notification = ProtoField.new("Cancel Notification", "miax.miaxoptions.expressinterface.mei.v2.9.c.cancelnotification", ftypes.STRING, nil, nil, nil, "This is the message format that will be used to notify firms about system generated or firm requested simple quote and simple or complex eQuote cancels.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.complex_enhanced_quote_e_quote_message = ProtoField.new("Complex Enhanced Quote E Quote Message", "miax.miaxoptions.expressinterface.mei.v2.9.c.complexenhancedquoteequotemessage", ftypes.STRING, nil, nil, nil, "This is the format for a Complex eQuote message that can be sent either to match with complex book or when responding to a complex auction liquidity seeking event.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.complex_enhanced_quote_e_quote_response = ProtoField.new("Complex Enhanced Quote E Quote Response", "miax.miaxoptions.expressinterface.mei.v2.9.c.complexenhancedquoteequoteresponse", ftypes.STRING, nil, nil, nil, "This message indicates if the complex eQuote was accepted or rejected. Note that this message does not report executions. For executions, please refer to the Execution notification. For the handling of any unexecuted portion that was canceled, please refer to the Cancel notification.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.complex_liquidity_protection_trigger_notification = ProtoField.new("Complex Liquidity Protection Trigger Notification", "miax.miaxoptions.expressinterface.mei.v2.9.c.complexliquidityprotectiontriggernotification", ftypes.STRING, nil, nil, nil, "This message format will be used to notify firms when an MPID is placed under complex liquidity protection. Complex Liquidity protection can be triggered due to any one of the reasons listed in the message below.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.complex_strategy_definition_notification = ProtoField.new("Complex Strategy Definition Notification", "miax.miaxoptions.expressinterface.mei.v2.9.c.complexstrategydefinitionnotification", ftypes.STRING, nil, nil, nil, "This is the message format that will be used to disseminate stock option strategies traded on MIAX for the current session. The Strategy ID sent in this message is utilized by the Administrative Information Subscriber (AIS) Feed for Complex Liquidity Seeking Events, the MIAX Order Feed (MOR) for Complex Order dissemination, the Complex Top of Market Feed (cToM) for Complex Trade and Top of Market dissemination and the MIAX Express Interface (MEI) for Complex eQuotes.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.liquidity_protection_reset_request = ProtoField.new("Liquidity Protection Reset Request", "miax.miaxoptions.expressinterface.mei.v2.9.c.liquidityprotectionresetrequest", ftypes.STRING, nil, nil, nil, "Following a quote protection being engaged for a given MPID and underlying, firms must use this message format to reset their Complex Liquidity Protection and/or Simple Liquidity Protection in order to start submitting new simple or complex liquidities for any strategy of the specified underlying and/or products of the specified underlying.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.liquidity_protection_reset_response = ProtoField.new("Liquidity Protection Reset Response", "miax.miaxoptions.expressinterface.mei.v2.9.c.liquidityprotectionresetresponse", ftypes.STRING, nil, nil, nil, "Response to the Liquidity Protection Reset Request")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.mass_liquidity_cancel_request_simple_and_complex = ProtoField.new("Mass Liquidity Cancel Request Simple And Complex", "miax.miaxoptions.expressinterface.mei.v2.9.c.massliquiditycancelrequestsimpleandcomplex", ftypes.STRING, nil, nil, nil, "Firms can use this message format to request the cancelation of all simple quotes and simple/complex eQuotes for an MPID, or all simple quotes and simple/complex eQuotes for an MPID for all series and/or strategies for an underlying")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.mass_liquidity_cancel_response = ProtoField.new("Mass Liquidity Cancel Response", "miax.miaxoptions.expressinterface.mei.v2.9.c.massliquiditycancelresponse", ftypes.STRING, nil, nil, nil, "This message format will be used to inform the firm about the status of their previous Mass Liquidity Cancel Request.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.option_execution_notification = ProtoField.new("Option Execution Notification", "miax.miaxoptions.expressinterface.mei.v2.9.c.optionexecutionnotification", ftypes.STRING, nil, nil, nil, "This message format will be used to notify the firms of executions of their simple quotes and simple or complex eQuotes.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.product_trading_status_notification = ProtoField.new("Product Trading Status Notification", "miax.miaxoptions.expressinterface.mei.v2.9.c.producttradingstatusnotification", ftypes.STRING, nil, nil, nil, "This message format will be used to notify the firms of changes to the trading status of an option.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.quote_width_relief_notification = ProtoField.new("Quote Width Relief Notification", "miax.miaxoptions.expressinterface.mei.v2.9.c.quotewidthreliefnotification", ftypes.STRING, nil, nil, nil, "This message format will be used to notify the firms if and when MIAX grants relief to the valid quote width parameters for Opening as specified in the rules and regulatory circulars of MIAX Options market.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.simple_arm_protection_settings_notification = ProtoField.new("Simple Arm Protection Settings Notification", "miax.miaxoptions.expressinterface.mei.v2.9.c.simplearmprotectionsettingsnotification", ftypes.STRING, nil, nil, nil, "This message format will be used to notify firms of their ARM settings. All the ARM settings will be published upon system initialization and each subsequent change will also be published.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.simple_arm_settings_update_request = ProtoField.new("Simple Arm Settings Update Request", "miax.miaxoptions.expressinterface.mei.v2.9.c.simplearmsettingsupdaterequest", ftypes.STRING, nil, nil, nil, "Firms can use this message format to set up their ARM protection settings for each session. Changes to these settings can be made throughout the day.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.simple_arm_settings_update_response = ProtoField.new("Simple Arm Settings Update Response", "miax.miaxoptions.expressinterface.mei.v2.9.c.simplearmsettingsupdateresponse", ftypes.STRING, nil, nil, nil, "MIAX uses this format to respond to the firm with a status of their ARM protection settings request.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.simple_bulk_quote_message = ProtoField.new("Simple Bulk Quote Message", "miax.miaxoptions.expressinterface.mei.v2.9.c.simplebulkquotemessage", ftypes.STRING, nil, nil, nil, "Firms can use this message format to send up to 50 single sided quotes. Single sided quotes enables the firms to prioritize the update of more important quotes and sides ahead of other quotes.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.simple_bulk_quote_response = ProtoField.new("Simple Bulk Quote Response", "miax.miaxoptions.expressinterface.mei.v2.9.c.simplebulkquoteresponse", ftypes.STRING, nil, nil, nil, "This message format will be used to inform the firm of the status of quotes sent in the bulk quote request.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.simple_enhanced_quote_e_quote_message = ProtoField.new("Simple Enhanced Quote E Quote Message", "miax.miaxoptions.expressinterface.mei.v2.9.c.simpleenhancedquoteequotemessage", ftypes.STRING, nil, nil, nil, "This is the format for an eQuote message that can be sent either to match with orders and quotes on the MIAX book or when responding to a liquidity seeking event.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.simple_enhanced_quote_e_quote_response = ProtoField.new("Simple Enhanced Quote E Quote Response", "miax.miaxoptions.expressinterface.mei.v2.9.c.simpleenhancedquoteequoteresponse", ftypes.STRING, nil, nil, nil, "This message indicates if the eQuote was accepted or rejected. Note that this message does not report executions. For executions, please refer to the Execution notification. For the unexecuted part that gets canceled, please refer to the Cancel notification.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.simple_mass_quote_cancel_request = ProtoField.new("Simple Mass Quote Cancel Request", "miax.miaxoptions.expressinterface.mei.v2.9.c.simplemassquotecancelrequest", ftypes.STRING, nil, nil, nil, "Firms can use this message format to request the cancelation of all simple quotes and eQuotes for an MPID, or all simple quotes and eQuotes for an MPID for all series for an underlying")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.simple_mass_quote_cancel_response = ProtoField.new("Simple Mass Quote Cancel Response", "miax.miaxoptions.expressinterface.mei.v2.9.c.simplemassquotecancelresponse", ftypes.STRING, nil, nil, nil, "This message format will be used to inform the firm about the status of their previous simple mass quote cancel request.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.simple_quote_protection_reset_request = ProtoField.new("Simple Quote Protection Reset Request", "miax.miaxoptions.expressinterface.mei.v2.9.c.simplequoteprotectionresetrequest", ftypes.STRING, nil, nil, nil, "Following a quote protection being engaged for a given MPID and underlying, firms must use this message format to reset their Quote Protection in order to start quoting for any option of the specified underlying.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.simple_quote_protection_reset_response = ProtoField.new("Simple Quote Protection Reset Response", "miax.miaxoptions.expressinterface.mei.v2.9.c.simplequoteprotectionresetresponse", ftypes.STRING, nil, nil, nil, "This message format is used to inform the firms of the status of their Simple Quote Protection Reset Request.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.simple_quote_protection_trigger_notification = ProtoField.new("Simple Quote Protection Trigger Notification", "miax.miaxoptions.expressinterface.mei.v2.9.c.simplequoteprotectiontriggernotification", ftypes.STRING, nil, nil, nil, "This message format will be used to notify firms when an MPID is placed under simple quote protection. Simple Quote protection can be triggered due to any one of the reasons listed in the message below.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.simple_series_update = ProtoField.new("Simple Series Update", "miax.miaxoptions.expressinterface.mei.v2.9.c.simpleseriesupdate", ftypes.STRING, nil, nil, nil, "This is the message format that will be used to disseminate all Option series traded on MIAX for the current session on the cloud associated for this connection.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.single_side_liquidity_protection_reset_request = ProtoField.new("Single Side Liquidity Protection Reset Request", "miax.miaxoptions.expressinterface.mei.v2.9.c.singlesideliquidityprotectionresetrequest", ftypes.STRING, nil, nil, nil, "Request to reset Single Side Liquidity Protection for the specific Option or Complex Strategy.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.single_side_liquidity_protection_reset_response = ProtoField.new("Single Side Liquidity Protection Reset Response", "miax.miaxoptions.expressinterface.mei.v2.9.c.singlesideliquidityprotectionresetresponse", ftypes.STRING, nil, nil, nil, "Response to Single Side Liquidity Protection Reset Request")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.single_side_liquidity_protection_trigger_notification = ProtoField.new("Single Side Liquidity Protection Trigger Notification", "miax.miaxoptions.expressinterface.mei.v2.9.c.singlesideliquidityprotectiontriggernotification", ftypes.STRING, nil, nil, nil, "This message format will be used to notify firms when a Single Side Liquidity Protection is triggered for a MIAX Option or Complex Strategy.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.stock_leg_execution_notification = ProtoField.new("Stock Leg Execution Notification", "miax.miaxoptions.expressinterface.mei.v2.9.c.stocklegexecutionnotification", ftypes.STRING, nil, nil, nil, "This message format will be used to notify the firm of a stock leg execution from a stock-tied complex eQuote.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.system_state_notification = ProtoField.new("System State Notification", "miax.miaxoptions.expressinterface.mei.v2.9.c.systemstatenotification", ftypes.STRING, nil, nil, nil, "This message format is used to notify the firms of the state changes of the system. This is an exchange-wide notification and not a symbol or member based notification.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.underlying_trading_status_notification = ProtoField.new("Underlying Trading Status Notification", "miax.miaxoptions.expressinterface.mei.v2.9.c.underlyingtradingstatusnotification", ftypes.STRING, nil, nil, nil, "This message format will be used to notify the firms of changes to the trading status of all the options of an underlying.")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.valid_quote_width_for_opening = ProtoField.new("Valid Quote Width For Opening", "miax.miaxoptions.expressinterface.mei.v2.9.c.validquotewidthforopening", ftypes.STRING, nil, nil, nil, "This message format will be used to convey to the firms the Valid Quote Width settings applicable to the Opening process of MIAX Options market. Each message describes a row of the Valid Quote Width table with a low end of the applicable price range and corresponding maximum quote width. The high end of the applicable price range is up to, but not including the next row’s low end applicable price range if provided or infinity for the last row. If the table has to be reloaded, all rows will be resent. Refer to Appendix C for an example.")

-- Miax MiaxOptions ExpressInterface 2.9.c Session Messages
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.client_heartbeat = ProtoField.new("Client Heartbeat", "miax.miaxoptions.expressinterface.mei.v2.9.c.clientheartbeat", ftypes.BYTES, nil, nil, nil, "The client should send a Client Heartbeat packet anytime more than 1 second passes where no data has been sent to the server")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.end_of_session = ProtoField.new("End Of Session", "miax.miaxoptions.expressinterface.mei.v2.9.c.endofsession", ftypes.BYTES, nil, nil, nil, "The server will send an End of Session packet to denote that the current session is finished")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.goodbye_packet = ProtoField.new("Goodbye Packet", "miax.miaxoptions.expressinterface.mei.v2.9.c.goodbyepacket", ftypes.STRING, nil, nil, nil, "The server may send a GoodBye packet to inform the client a reason for termination of the connection just before it terminates the connection")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.login_request = ProtoField.new("Login Request", "miax.miaxoptions.expressinterface.mei.v2.9.c.loginrequest", ftypes.STRING, nil, nil, nil, "The SesM client uses this packet to allow the server to authenticate the client and to convey to the server the last sequenced packet that the client received")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.login_response = ProtoField.new("Login Response", "miax.miaxoptions.expressinterface.mei.v2.9.c.loginresponse", ftypes.STRING, nil, nil, nil, "The SesM server sends a Login response packet in response to a Login request packet from the client")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.logout_request = ProtoField.new("Logout Request", "miax.miaxoptions.expressinterface.mei.v2.9.c.logoutrequest", ftypes.STRING, nil, nil, nil, "The client may send a Logout request packet to request the connection be terminated")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.retransmission_request = ProtoField.new("Retransmission Request", "miax.miaxoptions.expressinterface.mei.v2.9.c.retransmissionrequest", ftypes.STRING, nil, nil, nil, "The SesM client uses this packet to request the server to retransmit a range of packets")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.server_heartbeat = ProtoField.new("Server Heartbeat", "miax.miaxoptions.expressinterface.mei.v2.9.c.serverheartbeat", ftypes.BYTES, nil, nil, nil, "The server should send a Server Heartbeat packet anytime more than 1 second passes where no data has been sent to the client")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.synchronization_complete = ProtoField.new("Synchronization Complete", "miax.miaxoptions.expressinterface.mei.v2.9.c.synchronizationcomplete", ftypes.BYTES, nil, nil, nil, "The server sends a Synchronization complete packet when it is done replaying all the old packets and is ready to start sending new packets")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.test_packet = ProtoField.new("Test Packet", "miax.miaxoptions.expressinterface.mei.v2.9.c.testpacket", ftypes.STRING, nil, nil, nil, "A Test packet can be sent by either side of a SesM connection at anytime; Test packets are intended to provide human readable text that may aid in debugging problems")

-- Miax MiaxOptions ExpressInterface Mei 2.9.c Generated Fields
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.leg_index = ProtoField.new("Leg Index", "miax.miaxoptions.expressinterface.mei.v2.9.c.legindex", ftypes.UINT16)
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.single_side_quote_index = ProtoField.new("Single Side Quote Index", "miax.miaxoptions.expressinterface.mei.v2.9.c.singlesidequoteindex", ftypes.UINT16)
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.single_side_quote_response_index = ProtoField.new("Single Side Quote Response Index", "miax.miaxoptions.expressinterface.mei.v2.9.c.singlesidequoteresponseindex", ftypes.UINT16)

-- Miax MiaxOptions ExpressInterface Mei 2.9.c Expert Info
miax_miaxoptions_expressinterface_mei_v2_9_c.experts = {}
miax_miaxoptions_expressinterface_mei_v2_9_c.experts.undecoded = ProtoExpert.new("miax.miaxoptions.expressinterface.mei.v2.9.c.undecoded", "Fields run past the size the wire gives them", expert.group.MALFORMED, expert.severity.ERROR)
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.experts = { miax_miaxoptions_expressinterface_mei_v2_9_c.experts.undecoded }

-----------------------------------------------------------------------
-- Miax MiaxOptions ExpressInterface Mei 2.9.c Formatting
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
miax_miaxoptions_expressinterface_mei_v2_9_c.timestamp_format = 3


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Miax MiaxOptions ExpressInterface Mei 2.9.c Element Dissection Options
show.application_messages = true
show.session_messages = true
show.repeating_groups = true
show.structs = true
show.headers = true
show.padding = false
show.indexes = true

-- Register Miax MiaxOptions ExpressInterface Mei 2.9.c Show Options
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.prefs.show_padding = Pref.bool("Show Padding", show.padding, "Parse and add Padding to protocol tree")
omi_miax_miaxoptions_expressinterface_mei_v2_9_c.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_miax_miaxoptions_expressinterface_mei_v2_9_c.prefs.timestamp_format = Pref.enum("Timestamp Format", 3, "Display format for this protocol's timestamps", timestamp_format_enum, false)

-- Handle changed preferences
function omi_miax_miaxoptions_expressinterface_mei_v2_9_c.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_miax_miaxoptions_expressinterface_mei_v2_9_c.prefs.show_application_messages then
    show.application_messages = omi_miax_miaxoptions_expressinterface_mei_v2_9_c.prefs.show_application_messages
  end
  if show.headers ~= omi_miax_miaxoptions_expressinterface_mei_v2_9_c.prefs.show_headers then
    show.headers = omi_miax_miaxoptions_expressinterface_mei_v2_9_c.prefs.show_headers
  end
  if show.padding ~= omi_miax_miaxoptions_expressinterface_mei_v2_9_c.prefs.show_padding then
    show.padding = omi_miax_miaxoptions_expressinterface_mei_v2_9_c.prefs.show_padding
  end
  if show.repeating_groups ~= omi_miax_miaxoptions_expressinterface_mei_v2_9_c.prefs.show_repeating_groups then
    show.repeating_groups = omi_miax_miaxoptions_expressinterface_mei_v2_9_c.prefs.show_repeating_groups
  end
  if show.session_messages ~= omi_miax_miaxoptions_expressinterface_mei_v2_9_c.prefs.show_session_messages then
    show.session_messages = omi_miax_miaxoptions_expressinterface_mei_v2_9_c.prefs.show_session_messages
  end
  if show.structs ~= omi_miax_miaxoptions_expressinterface_mei_v2_9_c.prefs.show_structs then
    show.structs = omi_miax_miaxoptions_expressinterface_mei_v2_9_c.prefs.show_structs
  end
  if show.indexes ~= omi_miax_miaxoptions_expressinterface_mei_v2_9_c.prefs.show_indexes then
    show.indexes = omi_miax_miaxoptions_expressinterface_mei_v2_9_c.prefs.show_indexes
  end
  if miax_miaxoptions_expressinterface_mei_v2_9_c.timestamp_format ~= omi_miax_miaxoptions_expressinterface_mei_v2_9_c.prefs.timestamp_format then
    miax_miaxoptions_expressinterface_mei_v2_9_c.timestamp_format = omi_miax_miaxoptions_expressinterface_mei_v2_9_c.prefs.timestamp_format
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
-- Miax MiaxOptions ExpressInterface Mei 2.9.c Fields
-----------------------------------------------------------------------

-- Action
miax_miaxoptions_expressinterface_mei_v2_9_c.action = {}

-- Size: Action
miax_miaxoptions_expressinterface_mei_v2_9_c.action.size = 1

-- Display: Action
miax_miaxoptions_expressinterface_mei_v2_9_c.action.labels = {
  ["S"] = "Action: Set Add Or Update Arm Settings (S)",
  ["D"] = "Action: Delete Arm Settings (D)",
}

miax_miaxoptions_expressinterface_mei_v2_9_c.action.display = function(value)
  return miax_miaxoptions_expressinterface_mei_v2_9_c.action.labels[value] or "Action: Unknown("..value..")"
end

-- Dissect: Action
miax_miaxoptions_expressinterface_mei_v2_9_c.action.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.action.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.action, range, value, display)

  return offset + length, value
end

-- Active On Miax
miax_miaxoptions_expressinterface_mei_v2_9_c.active_on_miax = {}

-- Size: Active On Miax
miax_miaxoptions_expressinterface_mei_v2_9_c.active_on_miax.size = 1

-- Display: Active On Miax
miax_miaxoptions_expressinterface_mei_v2_9_c.active_on_miax.labels = {
  ["A"] = "Active On Miax: Active Tradable On Miax (A)",
  ["I"] = "Active On Miax: Inactive Not Tradable On Miax (I)",
}

miax_miaxoptions_expressinterface_mei_v2_9_c.active_on_miax.display = function(value)
  return miax_miaxoptions_expressinterface_mei_v2_9_c.active_on_miax.labels[value] or "Active On Miax: Unknown("..value..")"
end

-- Dissect: Active On Miax
miax_miaxoptions_expressinterface_mei_v2_9_c.active_on_miax.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.active_on_miax.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.active_on_miax.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.active_on_miax, range, value, display)

  return offset + length, value
end

-- Allowable Engagement Percentage
miax_miaxoptions_expressinterface_mei_v2_9_c.allowable_engagement_percentage = {}

-- Size: Allowable Engagement Percentage
miax_miaxoptions_expressinterface_mei_v2_9_c.allowable_engagement_percentage.size = 4

-- Display: Allowable Engagement Percentage
miax_miaxoptions_expressinterface_mei_v2_9_c.allowable_engagement_percentage.display = function(value)
  return "Allowable Engagement Percentage: "..value
end

-- Dissect: Allowable Engagement Percentage
miax_miaxoptions_expressinterface_mei_v2_9_c.allowable_engagement_percentage.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.allowable_engagement_percentage.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.allowable_engagement_percentage.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.allowable_engagement_percentage, range, value, display)

  return offset + length, value
end

-- Application Protocol
miax_miaxoptions_expressinterface_mei_v2_9_c.application_protocol = {}

-- Size: Application Protocol
miax_miaxoptions_expressinterface_mei_v2_9_c.application_protocol.size = 8

-- Display: Application Protocol
miax_miaxoptions_expressinterface_mei_v2_9_c.application_protocol.display = function(value)
  return "Application Protocol: "..value
end

-- Dissect: Application Protocol
miax_miaxoptions_expressinterface_mei_v2_9_c.application_protocol.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.application_protocol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.application_protocol.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.application_protocol, range, value, display)

  return offset + length, value
end

-- Arm 2 Counting Period
miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_counting_period = {}

-- Size: Arm 2 Counting Period
miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_counting_period.size = 4

-- Display: Arm 2 Counting Period
miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_counting_period.display = function(value)
  return "Arm 2 Counting Period: "..value
end

-- Dissect: Arm 2 Counting Period
miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_counting_period.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_counting_period.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_counting_period.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.arm_2_counting_period, range, value, display)

  return offset + length, value
end

-- Arm Settings Update Status
miax_miaxoptions_expressinterface_mei_v2_9_c.arm_settings_update_status = {}

-- Size: Arm Settings Update Status
miax_miaxoptions_expressinterface_mei_v2_9_c.arm_settings_update_status.size = 1

-- Display: Arm Settings Update Status
miax_miaxoptions_expressinterface_mei_v2_9_c.arm_settings_update_status.display = function(value)
  if value == " " then
    return "Arm Settings Update Status: Settings Applied Successfully (<whitespace>)"
  end
  if value == "A" then
    return "Arm Settings Update Status: Invalid Action (A)"
  end
  if value == "P" then
    return "Arm Settings Update Status: Invalid Allowable Engagement Percentage (P)"
  end
  if value == "D" then
    return "Arm Settings Update Status: Invalid Counting Period (D)"
  end
  if value == "M" then
    return "Arm Settings Update Status: Unknown Mpid (M)"
  end
  if value == "U" then
    return "Arm Settings Update Status: Invalid Underlying (U)"
  end
  if value == "X" then
    return "Arm Settings Update Status: Not Permitted (X)"
  end
  if value == "N" then
    return "Arm Settings Update Status: No Such Arm Settings (N)"
  end
  if value == "Z" then
    return "Arm Settings Update Status: Undefined Error (Z)"
  end
  if value == "E" then
    return "Arm Settings Update Status: Feature Not Supported (E)"
  end

  return "Arm Settings Update Status: Unknown("..value..")"
end

-- Dissect: Arm Settings Update Status
miax_miaxoptions_expressinterface_mei_v2_9_c.arm_settings_update_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.arm_settings_update_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.arm_settings_update_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.arm_settings_update_status, range, value, display)

  return offset + length, value
end

-- Arm Threshold Count
miax_miaxoptions_expressinterface_mei_v2_9_c.arm_threshold_count = {}

-- Size: Arm Threshold Count
miax_miaxoptions_expressinterface_mei_v2_9_c.arm_threshold_count.size = 4

-- Display: Arm Threshold Count
miax_miaxoptions_expressinterface_mei_v2_9_c.arm_threshold_count.display = function(value)
  return "Arm Threshold Count: "..value
end

-- Dissect: Arm Threshold Count
miax_miaxoptions_expressinterface_mei_v2_9_c.arm_threshold_count.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.arm_threshold_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.arm_threshold_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.arm_threshold_count, range, value, display)

  return offset + length, value
end

-- Bulk Quote Index
miax_miaxoptions_expressinterface_mei_v2_9_c.bulk_quote_index = {}

-- Size: Bulk Quote Index
miax_miaxoptions_expressinterface_mei_v2_9_c.bulk_quote_index.size = 1

-- Display: Bulk Quote Index
miax_miaxoptions_expressinterface_mei_v2_9_c.bulk_quote_index.display = function(value)
  return "Bulk Quote Index: "..value
end

-- Dissect: Bulk Quote Index
miax_miaxoptions_expressinterface_mei_v2_9_c.bulk_quote_index.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.bulk_quote_index.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.bulk_quote_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.bulk_quote_index, range, value, display)

  return offset + length, value
end

-- Bulk Quote Status
miax_miaxoptions_expressinterface_mei_v2_9_c.bulk_quote_status = {}

-- Size: Bulk Quote Status
miax_miaxoptions_expressinterface_mei_v2_9_c.bulk_quote_status.size = 1

-- Display: Bulk Quote Status
miax_miaxoptions_expressinterface_mei_v2_9_c.bulk_quote_status.display = function(value)
  if value == " " then
    return "Bulk Quote Status: Bulk Quote Block Is Valid (<whitespace>)"
  end
  if value == "R" then
    return "Bulk Quote Status: Invalid Bulk Quote Block (R)"
  end
  if value == "Z" then
    return "Bulk Quote Status: Undefined Error (Z)"
  end

  return "Bulk Quote Status: Unknown("..value..")"
end

-- Dissect: Bulk Quote Status
miax_miaxoptions_expressinterface_mei_v2_9_c.bulk_quote_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.bulk_quote_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.bulk_quote_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.bulk_quote_status, range, value, display)

  return offset + length, value
end

-- Call Or Put
miax_miaxoptions_expressinterface_mei_v2_9_c.call_or_put = {}

-- Size: Call Or Put
miax_miaxoptions_expressinterface_mei_v2_9_c.call_or_put.size = 1

-- Display: Call Or Put
miax_miaxoptions_expressinterface_mei_v2_9_c.call_or_put.labels = {
  ["C"] = "Call Or Put: Call (C)",
  ["P"] = "Call Or Put: Put (P)",
}

miax_miaxoptions_expressinterface_mei_v2_9_c.call_or_put.display = function(value)
  return miax_miaxoptions_expressinterface_mei_v2_9_c.call_or_put.labels[value] or "Call Or Put: Unknown("..value..")"
end

-- Dissect: Call Or Put
miax_miaxoptions_expressinterface_mei_v2_9_c.call_or_put.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.call_or_put.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.call_or_put.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.call_or_put, range, value, display)

  return offset + length, value
end

-- Cancel Reason
miax_miaxoptions_expressinterface_mei_v2_9_c.cancel_reason = {}

-- Size: Cancel Reason
miax_miaxoptions_expressinterface_mei_v2_9_c.cancel_reason.size = 1

-- Display: Cancel Reason
miax_miaxoptions_expressinterface_mei_v2_9_c.cancel_reason.labels = {
  ["S"] = "Cancel Reason: Cancel For Unexecuted Part Of Simplecomplex E Quote (S)",
  ["W"] = "Cancel Reason: Cancel For Quote Unused In Opening Reopening Or Closing (W)",
  ["C"] = "Cancel Reason: Cancel Of Resting Simple Quote Crossed By Opposite Side Quote Of Same Mpid (C)",
  ["K"] = "Cancel Reason: Complex Strategy Leg Has Wide Mbbo Only Applicable To Complex E Quotes (K)",
  ["L"] = "Cancel Reason: Complex Strategy Leg Has Prime Auction (L)",
  ["M"] = "Cancel Reason: Complex Strategy Leg Has Route Timer (M)",
  ["N"] = "Cancel Reason: Complex Strategy Leg Has Liquidity Refresh Timer (N)",
  ["J"] = "Cancel Reason: Complex Strategy Auction In Progress (J)",
  ["R"] = "Cancel Reason: Complex Strategy Leg Has Liquidity Exposure Timer (R)",
  ["Q"] = "Cancel Reason: Strategy Is Not Open For Trading (Q)",
  ["B"] = "Cancel Reason: Canceled Due To Single Side Liquidity Protection Trigger (B)",
  ["P"] = "Cancel Reason: Reserved (P)",
}

miax_miaxoptions_expressinterface_mei_v2_9_c.cancel_reason.display = function(value)
  return miax_miaxoptions_expressinterface_mei_v2_9_c.cancel_reason.labels[value] or "Cancel Reason: Unknown("..value..")"
end

-- Dissect: Cancel Reason
miax_miaxoptions_expressinterface_mei_v2_9_c.cancel_reason.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.cancel_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.cancel_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.cancel_reason, range, value, display)

  return offset + length, value
end

-- Client Message Id
miax_miaxoptions_expressinterface_mei_v2_9_c.client_message_id = {}

-- Size: Client Message Id
miax_miaxoptions_expressinterface_mei_v2_9_c.client_message_id.size = 4

-- Display: Client Message Id
miax_miaxoptions_expressinterface_mei_v2_9_c.client_message_id.display = function(value)
  return "Client Message Id: "..value
end

-- Dissect: Client Message Id
miax_miaxoptions_expressinterface_mei_v2_9_c.client_message_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.client_message_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.client_message_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.client_message_id, range, value, display)

  return offset + length, value
end

-- Client Send Time
miax_miaxoptions_expressinterface_mei_v2_9_c.client_send_time = {}

-- Size: Client Send Time
miax_miaxoptions_expressinterface_mei_v2_9_c.client_send_time.size = 8

-- Dissect: Client Send Time
miax_miaxoptions_expressinterface_mei_v2_9_c.client_send_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.client_send_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.client_send_time
  if miax_miaxoptions_expressinterface_mei_v2_9_c.timestamp_format == 3 then field = omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.client_send_time_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Closing Time
miax_miaxoptions_expressinterface_mei_v2_9_c.closing_time = {}

-- Size: Closing Time
miax_miaxoptions_expressinterface_mei_v2_9_c.closing_time.size = 8

-- Display: Closing Time
miax_miaxoptions_expressinterface_mei_v2_9_c.closing_time.display = function(value)
  return "Closing Time: "..value
end

-- Dissect: Closing Time
miax_miaxoptions_expressinterface_mei_v2_9_c.closing_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.closing_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.closing_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.closing_time, range, value, display)

  return offset + length, value
end

-- Complex Event Id
miax_miaxoptions_expressinterface_mei_v2_9_c.complex_event_id = {}

-- Size: Complex Event Id
miax_miaxoptions_expressinterface_mei_v2_9_c.complex_event_id.size = 4

-- Display: Complex Event Id
miax_miaxoptions_expressinterface_mei_v2_9_c.complex_event_id.display = function(value)
  return "Complex Event Id: "..value
end

-- Dissect: Complex Event Id
miax_miaxoptions_expressinterface_mei_v2_9_c.complex_event_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.complex_event_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.complex_event_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.complex_event_id, range, value, display)

  return offset + length, value
end

-- Complex Liquidity Protection Reset Status
miax_miaxoptions_expressinterface_mei_v2_9_c.complex_liquidity_protection_reset_status = {}

-- Size: Complex Liquidity Protection Reset Status
miax_miaxoptions_expressinterface_mei_v2_9_c.complex_liquidity_protection_reset_status.size = 1

-- Display: Complex Liquidity Protection Reset Status
miax_miaxoptions_expressinterface_mei_v2_9_c.complex_liquidity_protection_reset_status.display = function(value)
  if value == " " then
    return "Complex Liquidity Protection Reset Status: Complex Liquidity Protection Reset Successful (<whitespace>)"
  end
  if value == "U" then
    return "Complex Liquidity Protection Reset Status: Invalid Underlying (U)"
  end
  if value == "I" then
    return "Complex Liquidity Protection Reset Status: Complex Mass Liquidity Cancel Still In Progress (I)"
  end
  if value == "H" then
    return "Complex Liquidity Protection Reset Status: Halt Triggered Cleanup Of Liquidities Still In Progress (H)"
  end
  if value == "M" then
    return "Complex Liquidity Protection Reset Status: Unknown Mpid (M)"
  end
  if value == "X" then
    return "Complex Liquidity Protection Reset Status: Not Permitted (X)"
  end
  if value == "C" then
    return "Complex Liquidity Protection Reset Status: Miax Closed Request Cannot Be Completed (C)"
  end
  if value == "A" then
    return "Complex Liquidity Protection Reset Status: Arm 2 Underlying Level Protection Is In Effect (A)"
  end
  if value == "F" then
    return "Complex Liquidity Protection Reset Status: Arm 2 Firm Level Protection Is In Effect (F)"
  end
  if value == "K" then
    return "Complex Liquidity Protection Reset Status: Kill Switch Protection Is In Effect (K)"
  end
  if value == "E" then
    return "Complex Liquidity Protection Reset Status: Feature Not Supported (E)"
  end
  if value == "Z" then
    return "Complex Liquidity Protection Reset Status: Undefined Error (Z)"
  end
  if value == "J" then
    return "Complex Liquidity Protection Reset Status: Invalid Request (J)"
  end
  if value == "Q" then
    return "Complex Liquidity Protection Reset Status: Not Requested (Q)"
  end
  if value == "*" then
    return "Complex Liquidity Protection Reset Status: Downgraded From Older Version (*)"
  end

  return "Complex Liquidity Protection Reset Status: Unknown("..value..")"
end

-- Dissect: Complex Liquidity Protection Reset Status
miax_miaxoptions_expressinterface_mei_v2_9_c.complex_liquidity_protection_reset_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.complex_liquidity_protection_reset_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.complex_liquidity_protection_reset_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.complex_liquidity_protection_reset_status, range, value, display)

  return offset + length, value
end

-- Complex Liquidity Reset
miax_miaxoptions_expressinterface_mei_v2_9_c.complex_liquidity_reset = {}

-- Size: Complex Liquidity Reset
miax_miaxoptions_expressinterface_mei_v2_9_c.complex_liquidity_reset.size = 1

-- Display: Complex Liquidity Reset
miax_miaxoptions_expressinterface_mei_v2_9_c.complex_liquidity_reset.labels = {
  ["Y"] = "Complex Liquidity Reset: Yes (Y)",
  ["N"] = "Complex Liquidity Reset: No (N)",
}

miax_miaxoptions_expressinterface_mei_v2_9_c.complex_liquidity_reset.display = function(value)
  return miax_miaxoptions_expressinterface_mei_v2_9_c.complex_liquidity_reset.labels[value] or "Complex Liquidity Reset: Unknown("..value..")"
end

-- Dissect: Complex Liquidity Reset
miax_miaxoptions_expressinterface_mei_v2_9_c.complex_liquidity_reset.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.complex_liquidity_reset.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.complex_liquidity_reset.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.complex_liquidity_reset, range, value, display)

  return offset + length, value
end

-- Complex Mass Cancel
miax_miaxoptions_expressinterface_mei_v2_9_c.complex_mass_cancel = {}

-- Size: Complex Mass Cancel
miax_miaxoptions_expressinterface_mei_v2_9_c.complex_mass_cancel.size = 1

-- Display: Complex Mass Cancel
miax_miaxoptions_expressinterface_mei_v2_9_c.complex_mass_cancel.labels = {
  ["Y"] = "Complex Mass Cancel: Mass Cancel Complex E Quotes Only (Y)",
  ["N"] = "Complex Mass Cancel: Do Not Mass Cancel Complex Liquidities (N)",
}

miax_miaxoptions_expressinterface_mei_v2_9_c.complex_mass_cancel.display = function(value)
  return miax_miaxoptions_expressinterface_mei_v2_9_c.complex_mass_cancel.labels[value] or "Complex Mass Cancel: Unknown("..value..")"
end

-- Dissect: Complex Mass Cancel
miax_miaxoptions_expressinterface_mei_v2_9_c.complex_mass_cancel.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.complex_mass_cancel.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.complex_mass_cancel.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.complex_mass_cancel, range, value, display)

  return offset + length, value
end

-- Complex Mass Liquidity Cancel Status
miax_miaxoptions_expressinterface_mei_v2_9_c.complex_mass_liquidity_cancel_status = {}

-- Size: Complex Mass Liquidity Cancel Status
miax_miaxoptions_expressinterface_mei_v2_9_c.complex_mass_liquidity_cancel_status.size = 1

-- Display: Complex Mass Liquidity Cancel Status
miax_miaxoptions_expressinterface_mei_v2_9_c.complex_mass_liquidity_cancel_status.display = function(value)
  if value == " " then
    return "Complex Mass Liquidity Cancel Status: Complex Mass Liquidity Cancel Successful (<whitespace>)"
  end
  if value == "U" then
    return "Complex Mass Liquidity Cancel Status: Invalid Underlying (U)"
  end
  if value == "I" then
    return "Complex Mass Liquidity Cancel Status: Complex Mass Liquidity Cancel Still In Progress (I)"
  end
  if value == "H" then
    return "Complex Mass Liquidity Cancel Status: Halt Triggered Cleanup Of Liquidities Still In Progress (H)"
  end
  if value == "N" then
    return "Complex Mass Liquidity Cancel Status: All Liquidities Have Already Been Canceled (N)"
  end
  if value == "X" then
    return "Complex Mass Liquidity Cancel Status: Not Permitted (X)"
  end
  if value == "M" then
    return "Complex Mass Liquidity Cancel Status: Unknown Mpid (M)"
  end
  if value == "C" then
    return "Complex Mass Liquidity Cancel Status: Miax Closed Request Cannot Be Completed (C)"
  end
  if value == "J" then
    return "Complex Mass Liquidity Cancel Status: Invalid Request (J)"
  end
  if value == "E" then
    return "Complex Mass Liquidity Cancel Status: Feature Not Supported (E)"
  end
  if value == "Z" then
    return "Complex Mass Liquidity Cancel Status: Undefined Error (Z)"
  end
  if value == "Q" then
    return "Complex Mass Liquidity Cancel Status: Not Requested (Q)"
  end
  if value == "*" then
    return "Complex Mass Liquidity Cancel Status: Downgraded From Older Version (*)"
  end

  return "Complex Mass Liquidity Cancel Status: Unknown("..value..")"
end

-- Dissect: Complex Mass Liquidity Cancel Status
miax_miaxoptions_expressinterface_mei_v2_9_c.complex_mass_liquidity_cancel_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.complex_mass_liquidity_cancel_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.complex_mass_liquidity_cancel_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.complex_mass_liquidity_cancel_status, range, value, display)

  return offset + length, value
end

-- Computer Id
miax_miaxoptions_expressinterface_mei_v2_9_c.computer_id = {}

-- Size: Computer Id
miax_miaxoptions_expressinterface_mei_v2_9_c.computer_id.size = 8

-- Display: Computer Id
miax_miaxoptions_expressinterface_mei_v2_9_c.computer_id.display = function(value)
  return "Computer Id: "..value
end

-- Dissect: Computer Id
miax_miaxoptions_expressinterface_mei_v2_9_c.computer_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.computer_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.computer_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.computer_id, range, value, display)

  return offset + length, value
end

-- Counting Period
miax_miaxoptions_expressinterface_mei_v2_9_c.counting_period = {}

-- Size: Counting Period
miax_miaxoptions_expressinterface_mei_v2_9_c.counting_period.size = 2

-- Display: Counting Period
miax_miaxoptions_expressinterface_mei_v2_9_c.counting_period.display = function(value)
  return "Counting Period: "..value
end

-- Dissect: Counting Period
miax_miaxoptions_expressinterface_mei_v2_9_c.counting_period.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.counting_period.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.counting_period.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.counting_period, range, value, display)

  return offset + length, value
end

-- E Quote Action
miax_miaxoptions_expressinterface_mei_v2_9_c.e_quote_action = {}

-- Size: E Quote Action
miax_miaxoptions_expressinterface_mei_v2_9_c.e_quote_action.size = 1

-- Display: E Quote Action
miax_miaxoptions_expressinterface_mei_v2_9_c.e_quote_action.labels = {
  ["N"] = "E Quote Action: New E Quote (N)",
  ["C"] = "E Quote Action: Cancel E Quote (C)",
  ["R"] = "E Quote Action: Replace E Quote (R)",
}

miax_miaxoptions_expressinterface_mei_v2_9_c.e_quote_action.display = function(value)
  return miax_miaxoptions_expressinterface_mei_v2_9_c.e_quote_action.labels[value] or "E Quote Action: Unknown("..value..")"
end

-- Dissect: E Quote Action
miax_miaxoptions_expressinterface_mei_v2_9_c.e_quote_action.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.e_quote_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.e_quote_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.e_quote_action, range, value, display)

  return offset + length, value
end

-- E Quote Id
miax_miaxoptions_expressinterface_mei_v2_9_c.e_quote_id = {}

-- Size: E Quote Id
miax_miaxoptions_expressinterface_mei_v2_9_c.e_quote_id.size = 8

-- Display: E Quote Id
miax_miaxoptions_expressinterface_mei_v2_9_c.e_quote_id.display = function(value)
  return "E Quote Id: "..value
end

-- Dissect: E Quote Id
miax_miaxoptions_expressinterface_mei_v2_9_c.e_quote_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.e_quote_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.e_quote_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.e_quote_id, range, value, display)

  return offset + length, value
end

-- E Quote Request Status
miax_miaxoptions_expressinterface_mei_v2_9_c.e_quote_request_status = {}

-- Size: E Quote Request Status
miax_miaxoptions_expressinterface_mei_v2_9_c.e_quote_request_status.size = 1

-- Display: E Quote Request Status
miax_miaxoptions_expressinterface_mei_v2_9_c.e_quote_request_status.display = function(value)
  if value == " " then
    return "E Quote Request Status: Request Accepted Successfully (<whitespace>)"
  end
  if value == "I" then
    return "E Quote Request Status: Invalid Product Id (I)"
  end
  if value == "A" then
    return "E Quote Request Status: No Event With Such Event Id (A)"
  end
  if value == "B" then
    return "E Quote Request Status: Invalid E Quote Action (B)"
  end
  if value == "V" then
    return "E Quote Request Status: Invalid Size (V)"
  end
  if value == "M" then
    return "E Quote Request Status: E Quote Size Minimum Required Size (M)"
  end
  if value == "P" then
    return "E Quote Request Status: Invalid Price (P)"
  end
  if value == "T" then
    return "E Quote Request Status: Invalid E Quote Type (T)"
  end
  if value == "S" then
    return "E Quote Request Status: Invalid Side (S)"
  end
  if value == "1" then
    return "E Quote Request Status: E Quote Not Permitted For This Price (1)"
  end
  if value == "2" then
    return "E Quote Request Status: E Quote Not Permitted For This Side (2)"
  end
  if value == "3" then
    return "E Quote Request Status: E Quote Represented By Target Message Id Was Not Found (3)"
  end
  if value == "4" then
    return "E Quote Request Status: Client Message Id Not Unique (4)"
  end
  if value == "U" then
    return "E Quote Request Status: Unknown Mpid (U)"
  end
  if value == "5" then
    return "E Quote Request Status: Rejected Due To Quote Protection (5)"
  end
  if value == "X" then
    return "E Quote Request Status: Not Permitted (X)"
  end
  if value == "K" then
    return "E Quote Request Status: Test E Quote Successfully Accepted Prior To Lqw Or Set Lqw As Applicable But Not Placed On Miax Book (K)"
  end
  if value == "C" then
    return "E Quote Request Status: Miax Closed For Trading Of This Product Request Cannot Be Completed (C)"
  end
  if value == "D" then
    return "E Quote Request Status: Rejected Due To Self Crossing Prime Agency Order (D)"
  end
  if value == "Y" then
    return "E Quote Request Status: Rejected Due To Single Side Liquidity Protection In Effect (Y)"
  end
  if value == "Z" then
    return "E Quote Request Status: Undefined Error (Z)"
  end
  if value == "*" then
    return "E Quote Request Status: Downgraded From Older Version (*)"
  end
  if value == "J" then
    return "E Quote Request Status: Outside Price Range For Strategy (J)"
  end
  if value == "G" then
    return "E Quote Request Status: Complex Feature Is Disabled (G)"
  end
  if value == "7" then
    return "E Quote Request Status: Rejected Due To Stock Clearing Account Underlying Mpid Or Dtc Account Number Not Configured (7)"
  end
  if value == "8" then
    return "E Quote Request Status: Invalid Sell Short Indicator (8)"
  end

  return "E Quote Request Status: Unknown("..value..")"
end

-- Dissect: E Quote Request Status
miax_miaxoptions_expressinterface_mei_v2_9_c.e_quote_request_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.e_quote_request_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.e_quote_request_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.e_quote_request_status, range, value, display)

  return offset + length, value
end

-- E Quote Type
miax_miaxoptions_expressinterface_mei_v2_9_c.e_quote_type = {}

-- Size: E Quote Type
miax_miaxoptions_expressinterface_mei_v2_9_c.e_quote_type.size = 1

-- Display: E Quote Type
miax_miaxoptions_expressinterface_mei_v2_9_c.e_quote_type.labels = {
  ["O"] = "E Quote Type: Opg (O)",
  ["A"] = "E Quote Type: Aoc (A)",
  ["I"] = "E Quote Type: Ioc (I)",
  ["S"] = "E Quote Type: Iso (S)",
  ["P"] = "E Quote Type: Future Use (P)",
}

miax_miaxoptions_expressinterface_mei_v2_9_c.e_quote_type.display = function(value)
  return miax_miaxoptions_expressinterface_mei_v2_9_c.e_quote_type.labels[value] or "E Quote Type: Unknown("..value..")"
end

-- Dissect: E Quote Type
miax_miaxoptions_expressinterface_mei_v2_9_c.e_quote_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.e_quote_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.e_quote_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.e_quote_type, range, value, display)

  return offset + length, value
end

-- End Sequence Number
miax_miaxoptions_expressinterface_mei_v2_9_c.end_sequence_number = {}

-- Size: End Sequence Number
miax_miaxoptions_expressinterface_mei_v2_9_c.end_sequence_number.size = 8

-- Display: End Sequence Number
miax_miaxoptions_expressinterface_mei_v2_9_c.end_sequence_number.display = function(value)
  return "End Sequence Number: "..value
end

-- Dissect: End Sequence Number
miax_miaxoptions_expressinterface_mei_v2_9_c.end_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.end_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.end_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.end_sequence_number, range, value, display)

  return offset + length, value
end

-- Engine Sequence Number
miax_miaxoptions_expressinterface_mei_v2_9_c.engine_sequence_number = {}

-- Size: Engine Sequence Number
miax_miaxoptions_expressinterface_mei_v2_9_c.engine_sequence_number.size = 8

-- Display: Engine Sequence Number
miax_miaxoptions_expressinterface_mei_v2_9_c.engine_sequence_number.display = function(value)
  return "Engine Sequence Number: "..value
end

-- Dissect: Engine Sequence Number
miax_miaxoptions_expressinterface_mei_v2_9_c.engine_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.engine_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.engine_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.engine_sequence_number, range, value, display)

  return offset + length, value
end

-- Event Id
miax_miaxoptions_expressinterface_mei_v2_9_c.event_id = {}

-- Size: Event Id
miax_miaxoptions_expressinterface_mei_v2_9_c.event_id.size = 4

-- Display: Event Id
miax_miaxoptions_expressinterface_mei_v2_9_c.event_id.display = function(value)
  return "Event Id: "..value
end

-- Dissect: Event Id
miax_miaxoptions_expressinterface_mei_v2_9_c.event_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.event_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.event_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.event_id, range, value, display)

  return offset + length, value
end

-- Event Reason
miax_miaxoptions_expressinterface_mei_v2_9_c.event_reason = {}

-- Size: Event Reason
miax_miaxoptions_expressinterface_mei_v2_9_c.event_reason.size = 1

-- Display: Event Reason
miax_miaxoptions_expressinterface_mei_v2_9_c.event_reason.labels = {
  ["A"] = "Event Reason: This Event Resulted From Automaticmarket Driven Event (A)",
  ["M"] = "Event Reason: Miax Manually Initiated This Event (M)",
}

miax_miaxoptions_expressinterface_mei_v2_9_c.event_reason.display = function(value)
  return miax_miaxoptions_expressinterface_mei_v2_9_c.event_reason.labels[value] or "Event Reason: Unknown("..value..")"
end

-- Dissect: Event Reason
miax_miaxoptions_expressinterface_mei_v2_9_c.event_reason.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.event_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.event_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.event_reason, range, value, display)

  return offset + length, value
end

-- Execution Id
miax_miaxoptions_expressinterface_mei_v2_9_c.execution_id = {}

-- Size: Execution Id
miax_miaxoptions_expressinterface_mei_v2_9_c.execution_id.size = 8

-- Display: Execution Id
miax_miaxoptions_expressinterface_mei_v2_9_c.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
miax_miaxoptions_expressinterface_mei_v2_9_c.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Expected Event Time
miax_miaxoptions_expressinterface_mei_v2_9_c.expected_event_time = {}

-- Size: Expected Event Time
miax_miaxoptions_expressinterface_mei_v2_9_c.expected_event_time.size = 8

-- Display: Expected Event Time
miax_miaxoptions_expressinterface_mei_v2_9_c.expected_event_time.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if miax_miaxoptions_expressinterface_mei_v2_9_c.timestamp_format == 0 then
    return "Expected Event Time: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (the day the frame that carried it settled on)
  if miax_miaxoptions_expressinterface_mei_v2_9_c.timestamp_format >= 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()

    -- A frame a file handler read states no instant and reads as the epoch
    if capture_time >= 86400 then
      -- The venue's midnight: the frame's instant less the time of day it states
      local settled = math.floor((capture_time - seconds) / 900 + 0.5) * 900

      -- The zone's own date and clock, in the zone it keeps
      if miax_miaxoptions_expressinterface_mei_v2_9_c.timestamp_format == 4 then
        local day = math.floor(settled / 86400 + 0.5) * 86400

        return "Expected Event Time: "..os.date("!%Y-%m-%d %H:%M:%S.", day + seconds)..string.format("%09d", nanoseconds).." America/New York"
      end

      local format = miax_miaxoptions_expressinterface_mei_v2_9_c.timestamp_format == 3 and "!%Y-%m-%d %H:%M:%S." or "%Y-%m-%d %H:%M:%S."
      return "Expected Event Time: "..os.date(format, settled + seconds)..string.format("%09d", nanoseconds)
    end
  end

  -- Time of day mode
  return "Expected Event Time: "..os.date("!%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Expected Event Time
miax_miaxoptions_expressinterface_mei_v2_9_c.expected_event_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.expected_event_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.expected_event_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.expected_event_time, range, value, display)

  return offset + length, value
end

-- Expiration Date
miax_miaxoptions_expressinterface_mei_v2_9_c.expiration_date = {}

-- Size: Expiration Date
miax_miaxoptions_expressinterface_mei_v2_9_c.expiration_date.size = 8

-- Display: Expiration Date
miax_miaxoptions_expressinterface_mei_v2_9_c.expiration_date.display = function(value)
  if #value < 8 then
    return "Expiration Date: "..value
  end

  return "Expiration Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Expiration Date
miax_miaxoptions_expressinterface_mei_v2_9_c.expiration_date.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.expiration_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.expiration_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.expiration_date, range, value, display)

  return offset + length, value
end

-- Goodbye Reason
miax_miaxoptions_expressinterface_mei_v2_9_c.goodbye_reason = {}

-- Size: Goodbye Reason
miax_miaxoptions_expressinterface_mei_v2_9_c.goodbye_reason.size = 1

-- Display: Goodbye Reason
miax_miaxoptions_expressinterface_mei_v2_9_c.goodbye_reason.labels = {
  ["B"] = "Goodbye Reason: Bad Sesm Packet (B)",
  ["L"] = "Goodbye Reason: Timed Out Waiting For Login Packet (L)",
  ["A"] = "Goodbye Reason: Application Terminating Connection (A)",
}

miax_miaxoptions_expressinterface_mei_v2_9_c.goodbye_reason.display = function(value)
  return miax_miaxoptions_expressinterface_mei_v2_9_c.goodbye_reason.labels[value] or "Goodbye Reason: Unknown("..value..")"
end

-- Dissect: Goodbye Reason
miax_miaxoptions_expressinterface_mei_v2_9_c.goodbye_reason.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.goodbye_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.goodbye_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.goodbye_reason, range, value, display)

  return offset + length, value
end

-- Highest Sequence Number
miax_miaxoptions_expressinterface_mei_v2_9_c.highest_sequence_number = {}

-- Size: Highest Sequence Number
miax_miaxoptions_expressinterface_mei_v2_9_c.highest_sequence_number.size = 8

-- Display: Highest Sequence Number
miax_miaxoptions_expressinterface_mei_v2_9_c.highest_sequence_number.display = function(value)
  return "Highest Sequence Number: "..value
end

-- Dissect: Highest Sequence Number
miax_miaxoptions_expressinterface_mei_v2_9_c.highest_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.highest_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.highest_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.highest_sequence_number, range, value, display)

  return offset + length, value
end

-- Invalid Quote Count
miax_miaxoptions_expressinterface_mei_v2_9_c.invalid_quote_count = {}

-- Size: Invalid Quote Count
miax_miaxoptions_expressinterface_mei_v2_9_c.invalid_quote_count.size = 1

-- Display: Invalid Quote Count
miax_miaxoptions_expressinterface_mei_v2_9_c.invalid_quote_count.display = function(value)
  return "Invalid Quote Count: "..value
end

-- Dissect: Invalid Quote Count
miax_miaxoptions_expressinterface_mei_v2_9_c.invalid_quote_count.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.invalid_quote_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.invalid_quote_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.invalid_quote_count, range, value, display)

  return offset + length, value
end

-- Last Price
miax_miaxoptions_expressinterface_mei_v2_9_c.last_price = {}

-- Size: Last Price
miax_miaxoptions_expressinterface_mei_v2_9_c.last_price.size = 4

-- Display: Last Price
miax_miaxoptions_expressinterface_mei_v2_9_c.last_price.display = function(value)
  return "Last Price: "..value
end

-- Translate: Last Price
miax_miaxoptions_expressinterface_mei_v2_9_c.last_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Last Price
miax_miaxoptions_expressinterface_mei_v2_9_c.last_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.last_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_miaxoptions_expressinterface_mei_v2_9_c.last_price.translate(raw)
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.last_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.last_price, range, value, display)

  return offset + length, value
end

-- Last Size
miax_miaxoptions_expressinterface_mei_v2_9_c.last_size = {}

-- Size: Last Size
miax_miaxoptions_expressinterface_mei_v2_9_c.last_size.size = 4

-- Display: Last Size
miax_miaxoptions_expressinterface_mei_v2_9_c.last_size.display = function(value)
  return "Last Size: "..value
end

-- Dissect: Last Size
miax_miaxoptions_expressinterface_mei_v2_9_c.last_size.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.last_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.last_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.last_size, range, value, display)

  return offset + length, value
end

-- Leg Ratio Qty
miax_miaxoptions_expressinterface_mei_v2_9_c.leg_ratio_qty = {}

-- Size: Leg Ratio Qty
miax_miaxoptions_expressinterface_mei_v2_9_c.leg_ratio_qty.size = 2

-- Display: Leg Ratio Qty
miax_miaxoptions_expressinterface_mei_v2_9_c.leg_ratio_qty.display = function(value)
  return "Leg Ratio Qty: "..value
end

-- Dissect: Leg Ratio Qty
miax_miaxoptions_expressinterface_mei_v2_9_c.leg_ratio_qty.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.leg_ratio_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.leg_ratio_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.leg_ratio_qty, range, value, display)

  return offset + length, value
end

-- Leg Side
miax_miaxoptions_expressinterface_mei_v2_9_c.leg_side = {}

-- Size: Leg Side
miax_miaxoptions_expressinterface_mei_v2_9_c.leg_side.size = 1

-- Display: Leg Side
miax_miaxoptions_expressinterface_mei_v2_9_c.leg_side.labels = {
  ["B"] = "Leg Side: Bid (B)",
  ["A"] = "Leg Side: Ask (A)",
}

miax_miaxoptions_expressinterface_mei_v2_9_c.leg_side.display = function(value)
  return miax_miaxoptions_expressinterface_mei_v2_9_c.leg_side.labels[value] or "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
miax_miaxoptions_expressinterface_mei_v2_9_c.leg_side.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.leg_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.leg_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Liquidity Type
miax_miaxoptions_expressinterface_mei_v2_9_c.liquidity_type = {}

-- Size: Liquidity Type
miax_miaxoptions_expressinterface_mei_v2_9_c.liquidity_type.size = 1

-- Display: Liquidity Type
miax_miaxoptions_expressinterface_mei_v2_9_c.liquidity_type.labels = {
  ["Q"] = "Liquidity Type: Simple Quote (Q)",
  ["E"] = "Liquidity Type: Simple E Quote (E)",
  ["C"] = "Liquidity Type: Complex E Quote (C)",
  ["X"] = "Liquidity Type: Reserved For Future Use (X)",
}

miax_miaxoptions_expressinterface_mei_v2_9_c.liquidity_type.display = function(value)
  return miax_miaxoptions_expressinterface_mei_v2_9_c.liquidity_type.labels[value] or "Liquidity Type: Unknown("..value..")"
end

-- Dissect: Liquidity Type
miax_miaxoptions_expressinterface_mei_v2_9_c.liquidity_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.liquidity_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.liquidity_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.liquidity_type, range, value, display)

  return offset + length, value
end

-- Login Status
miax_miaxoptions_expressinterface_mei_v2_9_c.login_status = {}

-- Size: Login Status
miax_miaxoptions_expressinterface_mei_v2_9_c.login_status.size = 1

-- Display: Login Status
miax_miaxoptions_expressinterface_mei_v2_9_c.login_status.display = function(value)
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
miax_miaxoptions_expressinterface_mei_v2_9_c.login_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.login_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.login_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.login_status, range, value, display)

  return offset + length, value
end

-- Logout Reason
miax_miaxoptions_expressinterface_mei_v2_9_c.logout_reason = {}

-- Size: Logout Reason
miax_miaxoptions_expressinterface_mei_v2_9_c.logout_reason.size = 1

-- Display: Logout Reason
miax_miaxoptions_expressinterface_mei_v2_9_c.logout_reason.display = function(value)
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
miax_miaxoptions_expressinterface_mei_v2_9_c.logout_reason.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.logout_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.logout_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.logout_reason, range, value, display)

  return offset + length, value
end

-- Logout Text
miax_miaxoptions_expressinterface_mei_v2_9_c.logout_text = {}

-- Display: Logout Text
miax_miaxoptions_expressinterface_mei_v2_9_c.logout_text.display = function(value)
  return "Logout Text: "..value
end

-- Dissect runtime sized field: Logout Text
miax_miaxoptions_expressinterface_mei_v2_9_c.logout_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.logout_text.display(value, packet, parent, size)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.logout_text, range, value, display)

  return offset + size, value
end

-- Long Term Option
miax_miaxoptions_expressinterface_mei_v2_9_c.long_term_option = {}

-- Size: Long Term Option
miax_miaxoptions_expressinterface_mei_v2_9_c.long_term_option.size = 1

-- Display: Long Term Option
miax_miaxoptions_expressinterface_mei_v2_9_c.long_term_option.labels = {
  ["Y"] = "Long Term Option: Far Month Expiration As Defined By Miax Rules (Y)",
  ["N"] = "Long Term Option: Near Month Expiration As Defined By Miax Rules (N)",
}

miax_miaxoptions_expressinterface_mei_v2_9_c.long_term_option.display = function(value)
  return miax_miaxoptions_expressinterface_mei_v2_9_c.long_term_option.labels[value] or "Long Term Option: Unknown("..value..")"
end

-- Dissect: Long Term Option
miax_miaxoptions_expressinterface_mei_v2_9_c.long_term_option.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.long_term_option.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.long_term_option.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.long_term_option, range, value, display)

  return offset + length, value
end

-- Long Term Option Multiplier
miax_miaxoptions_expressinterface_mei_v2_9_c.long_term_option_multiplier = {}

-- Size: Long Term Option Multiplier
miax_miaxoptions_expressinterface_mei_v2_9_c.long_term_option_multiplier.size = 4

-- Display: Long Term Option Multiplier
miax_miaxoptions_expressinterface_mei_v2_9_c.long_term_option_multiplier.display = function(value)
  return "Long Term Option Multiplier: "..value
end

-- Translate: Long Term Option Multiplier
miax_miaxoptions_expressinterface_mei_v2_9_c.long_term_option_multiplier.translate = function(raw)
  return raw/10000
end

-- Dissect: Long Term Option Multiplier
miax_miaxoptions_expressinterface_mei_v2_9_c.long_term_option_multiplier.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.long_term_option_multiplier.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_miaxoptions_expressinterface_mei_v2_9_c.long_term_option_multiplier.translate(raw)
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.long_term_option_multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.long_term_option_multiplier, range, value, display)

  return offset + length, value
end

-- Low End Of Applicable Range
miax_miaxoptions_expressinterface_mei_v2_9_c.low_end_of_applicable_range = {}

-- Size: Low End Of Applicable Range
miax_miaxoptions_expressinterface_mei_v2_9_c.low_end_of_applicable_range.size = 4

-- Display: Low End Of Applicable Range
miax_miaxoptions_expressinterface_mei_v2_9_c.low_end_of_applicable_range.display = function(value)
  return "Low End Of Applicable Range: "..value
end

-- Translate: Low End Of Applicable Range
miax_miaxoptions_expressinterface_mei_v2_9_c.low_end_of_applicable_range.translate = function(raw)
  return raw/10000
end

-- Dissect: Low End Of Applicable Range
miax_miaxoptions_expressinterface_mei_v2_9_c.low_end_of_applicable_range.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.low_end_of_applicable_range.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_miaxoptions_expressinterface_mei_v2_9_c.low_end_of_applicable_range.translate(raw)
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.low_end_of_applicable_range.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.low_end_of_applicable_range, range, value, display)

  return offset + length, value
end

-- Maximum Quote Width
miax_miaxoptions_expressinterface_mei_v2_9_c.maximum_quote_width = {}

-- Size: Maximum Quote Width
miax_miaxoptions_expressinterface_mei_v2_9_c.maximum_quote_width.size = 4

-- Display: Maximum Quote Width
miax_miaxoptions_expressinterface_mei_v2_9_c.maximum_quote_width.display = function(value)
  return "Maximum Quote Width: "..value
end

-- Translate: Maximum Quote Width
miax_miaxoptions_expressinterface_mei_v2_9_c.maximum_quote_width.translate = function(raw)
  return raw/10000
end

-- Dissect: Maximum Quote Width
miax_miaxoptions_expressinterface_mei_v2_9_c.maximum_quote_width.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.maximum_quote_width.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_miaxoptions_expressinterface_mei_v2_9_c.maximum_quote_width.translate(raw)
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.maximum_quote_width.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.maximum_quote_width, range, value, display)

  return offset + length, value
end

-- Mei Version
miax_miaxoptions_expressinterface_mei_v2_9_c.mei_version = {}

-- Size: Mei Version
miax_miaxoptions_expressinterface_mei_v2_9_c.mei_version.size = 8

-- Display: Mei Version
miax_miaxoptions_expressinterface_mei_v2_9_c.mei_version.display = function(value)
  return "Mei Version: "..value
end

-- Dissect: Mei Version
miax_miaxoptions_expressinterface_mei_v2_9_c.mei_version.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.mei_version.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.mei_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.mei_version, range, value, display)

  return offset + length, value
end

-- Miax Bbo Posting Increment Indicator
miax_miaxoptions_expressinterface_mei_v2_9_c.miax_bbo_posting_increment_indicator = {}

-- Size: Miax Bbo Posting Increment Indicator
miax_miaxoptions_expressinterface_mei_v2_9_c.miax_bbo_posting_increment_indicator.size = 1

-- Display: Miax Bbo Posting Increment Indicator
miax_miaxoptions_expressinterface_mei_v2_9_c.miax_bbo_posting_increment_indicator.labels = {
  ["P"] = "Miax Bbo Posting Increment Indicator: Penny (P)",
  ["N"] = "Miax Bbo Posting Increment Indicator: Penny Nickel (N)",
  ["D"] = "Miax Bbo Posting Increment Indicator: Nickel Dime (D)",
}

miax_miaxoptions_expressinterface_mei_v2_9_c.miax_bbo_posting_increment_indicator.display = function(value)
  return miax_miaxoptions_expressinterface_mei_v2_9_c.miax_bbo_posting_increment_indicator.labels[value] or "Miax Bbo Posting Increment Indicator: Unknown("..value..")"
end

-- Dissect: Miax Bbo Posting Increment Indicator
miax_miaxoptions_expressinterface_mei_v2_9_c.miax_bbo_posting_increment_indicator.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.miax_bbo_posting_increment_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.miax_bbo_posting_increment_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.miax_bbo_posting_increment_indicator, range, value, display)

  return offset + length, value
end

-- Mpid
miax_miaxoptions_expressinterface_mei_v2_9_c.mpid = {}

-- Size: Mpid
miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.size = 4

-- Display: Mpid
miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.display = function(value)
  return "Mpid: "..value
end

-- Dissect: Mpid
miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.mpid, range, value, display)

  return offset + length, value
end

-- Mpv Class
miax_miaxoptions_expressinterface_mei_v2_9_c.mpv_class = {}

-- Size: Mpv Class
miax_miaxoptions_expressinterface_mei_v2_9_c.mpv_class.size = 1

-- Display: Mpv Class
miax_miaxoptions_expressinterface_mei_v2_9_c.mpv_class.labels = {
  ["P"] = "Mpv Class: Penny (P)",
  ["N"] = "Mpv Class: Penny Nickel (N)",
  ["D"] = "Mpv Class: Nickel Dime (D)",
}

miax_miaxoptions_expressinterface_mei_v2_9_c.mpv_class.display = function(value)
  return miax_miaxoptions_expressinterface_mei_v2_9_c.mpv_class.labels[value] or "Mpv Class: Unknown("..value..")"
end

-- Dissect: Mpv Class
miax_miaxoptions_expressinterface_mei_v2_9_c.mpv_class.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.mpv_class.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.mpv_class.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.mpv_class, range, value, display)

  return offset + length, value
end

-- Net Price
miax_miaxoptions_expressinterface_mei_v2_9_c.net_price = {}

-- Size: Net Price
miax_miaxoptions_expressinterface_mei_v2_9_c.net_price.size = 8

-- Display: Net Price
miax_miaxoptions_expressinterface_mei_v2_9_c.net_price.display = function(value)
  return "Net Price: "..value
end

-- Translate: Net Price
miax_miaxoptions_expressinterface_mei_v2_9_c.net_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Net Price
miax_miaxoptions_expressinterface_mei_v2_9_c.net_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.net_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = miax_miaxoptions_expressinterface_mei_v2_9_c.net_price.translate(raw)
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.net_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.net_price, range, value, display)

  return offset + length, value
end

-- Notification Time
miax_miaxoptions_expressinterface_mei_v2_9_c.notification_time = {}

-- Size: Notification Time
miax_miaxoptions_expressinterface_mei_v2_9_c.notification_time.size = 8

-- Display: Notification Time
miax_miaxoptions_expressinterface_mei_v2_9_c.notification_time.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if miax_miaxoptions_expressinterface_mei_v2_9_c.timestamp_format == 0 then
    return "Notification Time: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (the day the frame that carried it settled on)
  if miax_miaxoptions_expressinterface_mei_v2_9_c.timestamp_format >= 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()

    -- A frame a file handler read states no instant and reads as the epoch
    if capture_time >= 86400 then
      -- The venue's midnight: the frame's instant less the time of day it states
      local settled = math.floor((capture_time - seconds) / 900 + 0.5) * 900

      -- The zone's own date and clock, in the zone it keeps
      if miax_miaxoptions_expressinterface_mei_v2_9_c.timestamp_format == 4 then
        local day = math.floor(settled / 86400 + 0.5) * 86400

        return "Notification Time: "..os.date("!%Y-%m-%d %H:%M:%S.", day + seconds)..string.format("%09d", nanoseconds).." America/New York"
      end

      local format = miax_miaxoptions_expressinterface_mei_v2_9_c.timestamp_format == 3 and "!%Y-%m-%d %H:%M:%S." or "%Y-%m-%d %H:%M:%S."
      return "Notification Time: "..os.date(format, settled + seconds)..string.format("%09d", nanoseconds)
    end
  end

  -- Time of day mode
  return "Notification Time: "..os.date("!%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Notification Time
miax_miaxoptions_expressinterface_mei_v2_9_c.notification_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.notification_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.notification_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.notification_time, range, value, display)

  return offset + length, value
end

-- Notification Type
miax_miaxoptions_expressinterface_mei_v2_9_c.notification_type = {}

-- Size: Notification Type
miax_miaxoptions_expressinterface_mei_v2_9_c.notification_type.size = 1

-- Display: Notification Type
miax_miaxoptions_expressinterface_mei_v2_9_c.notification_type.labels = {
  ["T"] = "Notification Type: Arm 2 Underlying Level Protection Triggered (T)",
  ["R"] = "Notification Type: Arm 2 Underlying Level Protection Reset (R)",
  ["*"] = "Notification Type: Downgraded From Older Version (*)",
}

miax_miaxoptions_expressinterface_mei_v2_9_c.notification_type.display = function(value)
  return miax_miaxoptions_expressinterface_mei_v2_9_c.notification_type.labels[value] or "Notification Type: Unknown("..value..")"
end

-- Dissect: Notification Type
miax_miaxoptions_expressinterface_mei_v2_9_c.notification_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.notification_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.notification_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.notification_type, range, value, display)

  return offset + length, value
end

-- Number Of Legs
miax_miaxoptions_expressinterface_mei_v2_9_c.number_of_legs = {}

-- Size: Number Of Legs
miax_miaxoptions_expressinterface_mei_v2_9_c.number_of_legs.size = 1

-- Display: Number Of Legs
miax_miaxoptions_expressinterface_mei_v2_9_c.number_of_legs.display = function(value)
  return "Number Of Legs: "..value
end

-- Dissect: Number Of Legs
miax_miaxoptions_expressinterface_mei_v2_9_c.number_of_legs.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.number_of_legs.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.number_of_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.number_of_legs, range, value, display)

  return offset + length, value
end

-- Opening Time
miax_miaxoptions_expressinterface_mei_v2_9_c.opening_time = {}

-- Size: Opening Time
miax_miaxoptions_expressinterface_mei_v2_9_c.opening_time.size = 8

-- Display: Opening Time
miax_miaxoptions_expressinterface_mei_v2_9_c.opening_time.display = function(value)
  return "Opening Time: "..value
end

-- Dissect: Opening Time
miax_miaxoptions_expressinterface_mei_v2_9_c.opening_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.opening_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.opening_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.opening_time, range, value, display)

  return offset + length, value
end

-- Opening Underlying Market Code
miax_miaxoptions_expressinterface_mei_v2_9_c.opening_underlying_market_code = {}

-- Size: Opening Underlying Market Code
miax_miaxoptions_expressinterface_mei_v2_9_c.opening_underlying_market_code.size = 1

-- Display: Opening Underlying Market Code
miax_miaxoptions_expressinterface_mei_v2_9_c.opening_underlying_market_code.labels = {
  ["A"] = "Opening Underlying Market Code: Nyse Amex (A)",
  ["B"] = "Opening Underlying Market Code: Nasdaq Omx Bx (B)",
  ["C"] = "Opening Underlying Market Code: National Stock Exchange (C)",
  ["D"] = "Opening Underlying Market Code: Finra Adf (D)",
  ["E"] = "Opening Underlying Market Code: Market Independent Any Market That Opens First (E)",
  ["H"] = "Opening Underlying Market Code: Miax Pearl Equities (H)",
  ["I"] = "Opening Underlying Market Code: International Securities Exchange (I)",
  ["J"] = "Opening Underlying Market Code: Edga Exchange Inc (J)",
  ["K"] = "Opening Underlying Market Code: Edgx Exchange Inc (K)",
  ["L"] = "Opening Underlying Market Code: Ltse (L)",
  ["M"] = "Opening Underlying Market Code: Chicago Stock Exchange (M)",
  ["N"] = "Opening Underlying Market Code: Nyse Euronext (N)",
  ["P"] = "Opening Underlying Market Code: Nyse Arca Exchange (P)",
  ["Q"] = "Opening Underlying Market Code: Nasdaq Omx Via Utp Feed (Q)",
  ["T"] = "Opening Underlying Market Code: Nasdaq Omx Via Cta Feed (T)",
  ["U"] = "Opening Underlying Market Code: Memx (U)",
  ["V"] = "Opening Underlying Market Code: Iex (V)",
  ["W"] = "Opening Underlying Market Code: Cboe Stock Exchange Cbsx (W)",
  ["X"] = "Opening Underlying Market Code: Nasdaq Omx Phlx (X)",
  ["Y"] = "Opening Underlying Market Code: Bats Y Exchange Inc (Y)",
  ["Z"] = "Opening Underlying Market Code: Bats Exchange Inc (Z)",
}

miax_miaxoptions_expressinterface_mei_v2_9_c.opening_underlying_market_code.display = function(value)
  return miax_miaxoptions_expressinterface_mei_v2_9_c.opening_underlying_market_code.labels[value] or "Opening Underlying Market Code: Unknown("..value..")"
end

-- Dissect: Opening Underlying Market Code
miax_miaxoptions_expressinterface_mei_v2_9_c.opening_underlying_market_code.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.opening_underlying_market_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.opening_underlying_market_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.opening_underlying_market_code, range, value, display)

  return offset + length, value
end

-- Price
miax_miaxoptions_expressinterface_mei_v2_9_c.price = {}

-- Size: Price
miax_miaxoptions_expressinterface_mei_v2_9_c.price.size = 4

-- Display: Price
miax_miaxoptions_expressinterface_mei_v2_9_c.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
miax_miaxoptions_expressinterface_mei_v2_9_c.price.translate = function(raw)
  return raw/10000
end

-- Dissect: Price
miax_miaxoptions_expressinterface_mei_v2_9_c.price.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.price.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_miaxoptions_expressinterface_mei_v2_9_c.price.translate(raw)
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.price, range, value, display)

  return offset + length, value
end

-- Priority Quote Width
miax_miaxoptions_expressinterface_mei_v2_9_c.priority_quote_width = {}

-- Size: Priority Quote Width
miax_miaxoptions_expressinterface_mei_v2_9_c.priority_quote_width.size = 4

-- Display: Priority Quote Width
miax_miaxoptions_expressinterface_mei_v2_9_c.priority_quote_width.display = function(value)
  return "Priority Quote Width: "..value
end

-- Translate: Priority Quote Width
miax_miaxoptions_expressinterface_mei_v2_9_c.priority_quote_width.translate = function(raw)
  return raw/10000
end

-- Dissect: Priority Quote Width
miax_miaxoptions_expressinterface_mei_v2_9_c.priority_quote_width.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.priority_quote_width.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_miaxoptions_expressinterface_mei_v2_9_c.priority_quote_width.translate(raw)
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.priority_quote_width.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.priority_quote_width, range, value, display)

  return offset + length, value
end

-- Product Add Update Time
miax_miaxoptions_expressinterface_mei_v2_9_c.product_add_update_time = {}

-- Size: Product Add Update Time
miax_miaxoptions_expressinterface_mei_v2_9_c.product_add_update_time.size = 8

-- Display: Product Add Update Time
miax_miaxoptions_expressinterface_mei_v2_9_c.product_add_update_time.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if miax_miaxoptions_expressinterface_mei_v2_9_c.timestamp_format == 0 then
    return "Product Add Update Time: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (the day the frame that carried it settled on)
  if miax_miaxoptions_expressinterface_mei_v2_9_c.timestamp_format >= 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()

    -- A frame a file handler read states no instant and reads as the epoch
    if capture_time >= 86400 then
      -- The venue's midnight: the frame's instant less the time of day it states
      local settled = math.floor((capture_time - seconds) / 900 + 0.5) * 900

      -- The zone's own date and clock, in the zone it keeps
      if miax_miaxoptions_expressinterface_mei_v2_9_c.timestamp_format == 4 then
        local day = math.floor(settled / 86400 + 0.5) * 86400

        return "Product Add Update Time: "..os.date("!%Y-%m-%d %H:%M:%S.", day + seconds)..string.format("%09d", nanoseconds).." America/New York"
      end

      local format = miax_miaxoptions_expressinterface_mei_v2_9_c.timestamp_format == 3 and "!%Y-%m-%d %H:%M:%S." or "%Y-%m-%d %H:%M:%S."
      return "Product Add Update Time: "..os.date(format, settled + seconds)..string.format("%09d", nanoseconds)
    end
  end

  -- Time of day mode
  return "Product Add Update Time: "..os.date("!%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Product Add Update Time
miax_miaxoptions_expressinterface_mei_v2_9_c.product_add_update_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.product_add_update_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.product_add_update_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.product_add_update_time, range, value, display)

  return offset + length, value
end

-- Product Id
miax_miaxoptions_expressinterface_mei_v2_9_c.product_id = {}

-- Size: Product Id
miax_miaxoptions_expressinterface_mei_v2_9_c.product_id.size = 4

-- Display: Product Id
miax_miaxoptions_expressinterface_mei_v2_9_c.product_id.display = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
miax_miaxoptions_expressinterface_mei_v2_9_c.product_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.product_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.product_id, range, value, display)

  return offset + length, value
end

-- Product Id Or Strategy Id
miax_miaxoptions_expressinterface_mei_v2_9_c.product_id_or_strategy_id = {}

-- Size: Product Id Or Strategy Id
miax_miaxoptions_expressinterface_mei_v2_9_c.product_id_or_strategy_id.size = 4

-- Display: Product Id Or Strategy Id
miax_miaxoptions_expressinterface_mei_v2_9_c.product_id_or_strategy_id.display = function(value)
  return "Product Id Or Strategy Id: "..value
end

-- Dissect: Product Id Or Strategy Id
miax_miaxoptions_expressinterface_mei_v2_9_c.product_id_or_strategy_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.product_id_or_strategy_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.product_id_or_strategy_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.product_id_or_strategy_id, range, value, display)

  return offset + length, value
end

-- Quote Acceptance Increment Indicator
miax_miaxoptions_expressinterface_mei_v2_9_c.quote_acceptance_increment_indicator = {}

-- Size: Quote Acceptance Increment Indicator
miax_miaxoptions_expressinterface_mei_v2_9_c.quote_acceptance_increment_indicator.size = 1

-- Display: Quote Acceptance Increment Indicator
miax_miaxoptions_expressinterface_mei_v2_9_c.quote_acceptance_increment_indicator.labels = {
  ["P"] = "Quote Acceptance Increment Indicator: Penny (P)",
  ["N"] = "Quote Acceptance Increment Indicator: Penny Nickel (N)",
  ["D"] = "Quote Acceptance Increment Indicator: Nickel Dime (D)",
}

miax_miaxoptions_expressinterface_mei_v2_9_c.quote_acceptance_increment_indicator.display = function(value)
  return miax_miaxoptions_expressinterface_mei_v2_9_c.quote_acceptance_increment_indicator.labels[value] or "Quote Acceptance Increment Indicator: Unknown("..value..")"
end

-- Dissect: Quote Acceptance Increment Indicator
miax_miaxoptions_expressinterface_mei_v2_9_c.quote_acceptance_increment_indicator.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.quote_acceptance_increment_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.quote_acceptance_increment_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.quote_acceptance_increment_indicator, range, value, display)

  return offset + length, value
end

-- Quote Ack Time
miax_miaxoptions_expressinterface_mei_v2_9_c.quote_ack_time = {}

-- Size: Quote Ack Time
miax_miaxoptions_expressinterface_mei_v2_9_c.quote_ack_time.size = 8

-- Display: Quote Ack Time
miax_miaxoptions_expressinterface_mei_v2_9_c.quote_ack_time.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if miax_miaxoptions_expressinterface_mei_v2_9_c.timestamp_format == 0 then
    return "Quote Ack Time: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (the day the frame that carried it settled on)
  if miax_miaxoptions_expressinterface_mei_v2_9_c.timestamp_format >= 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()

    -- A frame a file handler read states no instant and reads as the epoch
    if capture_time >= 86400 then
      -- The venue's midnight: the frame's instant less the time of day it states
      local settled = math.floor((capture_time - seconds) / 900 + 0.5) * 900

      -- The zone's own date and clock, in the zone it keeps
      if miax_miaxoptions_expressinterface_mei_v2_9_c.timestamp_format == 4 then
        local day = math.floor(settled / 86400 + 0.5) * 86400

        return "Quote Ack Time: "..os.date("!%Y-%m-%d %H:%M:%S.", day + seconds)..string.format("%09d", nanoseconds).." America/New York"
      end

      local format = miax_miaxoptions_expressinterface_mei_v2_9_c.timestamp_format == 3 and "!%Y-%m-%d %H:%M:%S." or "%Y-%m-%d %H:%M:%S."
      return "Quote Ack Time: "..os.date(format, settled + seconds)..string.format("%09d", nanoseconds)
    end
  end

  -- Time of day mode
  return "Quote Ack Time: "..os.date("!%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Quote Ack Time
miax_miaxoptions_expressinterface_mei_v2_9_c.quote_ack_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.quote_ack_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.quote_ack_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.quote_ack_time, range, value, display)

  return offset + length, value
end

-- Quote Count
miax_miaxoptions_expressinterface_mei_v2_9_c.quote_count = {}

-- Size: Quote Count
miax_miaxoptions_expressinterface_mei_v2_9_c.quote_count.size = 1

-- Display: Quote Count
miax_miaxoptions_expressinterface_mei_v2_9_c.quote_count.display = function(value)
  return "Quote Count: "..value
end

-- Dissect: Quote Count
miax_miaxoptions_expressinterface_mei_v2_9_c.quote_count.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.quote_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.quote_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.quote_count, range, value, display)

  return offset + length, value
end

-- Quote Protection Reset Status
miax_miaxoptions_expressinterface_mei_v2_9_c.quote_protection_reset_status = {}

-- Size: Quote Protection Reset Status
miax_miaxoptions_expressinterface_mei_v2_9_c.quote_protection_reset_status.size = 1

-- Display: Quote Protection Reset Status
miax_miaxoptions_expressinterface_mei_v2_9_c.quote_protection_reset_status.display = function(value)
  if value == " " then
    return "Quote Protection Reset Status: Quote Protection Reset Successful (<whitespace>)"
  end
  if value == "U" then
    return "Quote Protection Reset Status: Invalid Underlying (U)"
  end
  if value == "I" then
    return "Quote Protection Reset Status: Mass Quote Cancel Still In Progress (I)"
  end
  if value == "H" then
    return "Quote Protection Reset Status: Halt Triggered Cleanup Of Quotes Still In Progress (H)"
  end
  if value == "M" then
    return "Quote Protection Reset Status: Unknown Mpid (M)"
  end
  if value == "X" then
    return "Quote Protection Reset Status: Not Permitted (X)"
  end
  if value == "C" then
    return "Quote Protection Reset Status: Miax Closed Request Cannot Be Completed (C)"
  end
  if value == "A" then
    return "Quote Protection Reset Status: Arm 2 Underlying Level Protection Is In Effect (A)"
  end
  if value == "F" then
    return "Quote Protection Reset Status: Arm 2 Firm Level Protection Is In Effect (F)"
  end
  if value == "K" then
    return "Quote Protection Reset Status: Kill Switch Protection Is In Effect (K)"
  end
  if value == "Z" then
    return "Quote Protection Reset Status: Undefined Error (Z)"
  end
  if value == "*" then
    return "Quote Protection Reset Status: Downgraded From Older Version (*)"
  end

  return "Quote Protection Reset Status: Unknown("..value..")"
end

-- Dissect: Quote Protection Reset Status
miax_miaxoptions_expressinterface_mei_v2_9_c.quote_protection_reset_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.quote_protection_reset_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.quote_protection_reset_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.quote_protection_reset_status, range, value, display)

  return offset + length, value
end

-- Quote Status
miax_miaxoptions_expressinterface_mei_v2_9_c.quote_status = {}

-- Size: Quote Status
miax_miaxoptions_expressinterface_mei_v2_9_c.quote_status.size = 1

-- Display: Quote Status
miax_miaxoptions_expressinterface_mei_v2_9_c.quote_status.display = function(value)
  if value == " " then
    return "Quote Status: Quote Successfully Accepted (<whitespace>)"
  end
  if value == "T" then
    return "Quote Status: Test Quote Successfully Accepted Prior To Lqw Or Set Lqw As Applicable But Not Placed On Miax Book (T)"
  end
  if value == "C" then
    return "Quote Status: Miax Closed For Trading Of This Product Request Cannot Be Completed (C)"
  end
  if value == "O" then
    return "Quote Status: Invalid Product Id (O)"
  end
  if value == "P" then
    return "Quote Status: Invalid Price (P)"
  end
  if value == "Q" then
    return "Quote Status: Invalid Size (Q)"
  end
  if value == "S" then
    return "Quote Status: Invalid Side (S)"
  end
  if value == "U" then
    return "Quote Status: Unknown Mpid (U)"
  end
  if value == "X" then
    return "Quote Status: Not Permitted (X)"
  end
  if value == "M" then
    return "Quote Status: Quote Size Minimum Required Size (M)"
  end
  if value == "R" then
    return "Quote Status: Rejected Due To Quote Protection (R)"
  end
  if value == "D" then
    return "Quote Status: Rejected Due To Self Crossing Prime Agency Order (D)"
  end
  if value == "Y" then
    return "Quote Status: Rejected Due To Single Side Liquidity Protection In Effect (Y)"
  end
  if value == "Z" then
    return "Quote Status: Undefined Error (Z)"
  end

  return "Quote Status: Unknown("..value..")"
end

-- Dissect: Quote Status
miax_miaxoptions_expressinterface_mei_v2_9_c.quote_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.quote_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.quote_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.quote_status, range, value, display)

  return offset + length, value
end

-- Quotee Quote Side
miax_miaxoptions_expressinterface_mei_v2_9_c.quotee_quote_side = {}

-- Size: Quotee Quote Side
miax_miaxoptions_expressinterface_mei_v2_9_c.quotee_quote_side.size = 1

-- Display: Quotee Quote Side
miax_miaxoptions_expressinterface_mei_v2_9_c.quotee_quote_side.labels = {
  ["B"] = "Quotee Quote Side: Bid (B)",
  ["A"] = "Quotee Quote Side: Ask (A)",
}

miax_miaxoptions_expressinterface_mei_v2_9_c.quotee_quote_side.display = function(value)
  return miax_miaxoptions_expressinterface_mei_v2_9_c.quotee_quote_side.labels[value] or "Quotee Quote Side: Unknown("..value..")"
end

-- Dissect: Quotee Quote Side
miax_miaxoptions_expressinterface_mei_v2_9_c.quotee_quote_side.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.quotee_quote_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.quotee_quote_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.quotee_quote_side, range, value, display)

  return offset + length, value
end

-- Relief Multiplier
miax_miaxoptions_expressinterface_mei_v2_9_c.relief_multiplier = {}

-- Size: Relief Multiplier
miax_miaxoptions_expressinterface_mei_v2_9_c.relief_multiplier.size = 4

-- Display: Relief Multiplier
miax_miaxoptions_expressinterface_mei_v2_9_c.relief_multiplier.display = function(value)
  return "Relief Multiplier: "..value
end

-- Translate: Relief Multiplier
miax_miaxoptions_expressinterface_mei_v2_9_c.relief_multiplier.translate = function(raw)
  return raw/10000
end

-- Dissect: Relief Multiplier
miax_miaxoptions_expressinterface_mei_v2_9_c.relief_multiplier.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.relief_multiplier.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_miaxoptions_expressinterface_mei_v2_9_c.relief_multiplier.translate(raw)
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.relief_multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.relief_multiplier, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
miax_miaxoptions_expressinterface_mei_v2_9_c.requested_sequence_number = {}

-- Size: Requested Sequence Number
miax_miaxoptions_expressinterface_mei_v2_9_c.requested_sequence_number.size = 8

-- Display: Requested Sequence Number
miax_miaxoptions_expressinterface_mei_v2_9_c.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
miax_miaxoptions_expressinterface_mei_v2_9_c.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
miax_miaxoptions_expressinterface_mei_v2_9_c.requested_session = {}

-- Size: Requested Session
miax_miaxoptions_expressinterface_mei_v2_9_c.requested_session.size = 1

-- Display: Requested Session
miax_miaxoptions_expressinterface_mei_v2_9_c.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
miax_miaxoptions_expressinterface_mei_v2_9_c.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.requested_session.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Reserved 1
miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_1 = {}

-- Size: Reserved 1
miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_1.size = 1

-- Display: Reserved 1
miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.reserved_1, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 10
miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_10 = {}

-- Size: Reserved 10
miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_10.size = 10

-- Display: Reserved 10
miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_10.display = function(value)
  return "Reserved 10: "..value
end

-- Dissect: Reserved 10
miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_10.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_10.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_10.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.reserved_10, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 15
miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_15 = {}

-- Size: Reserved 15
miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_15.size = 15

-- Display: Reserved 15
miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_15.display = function(value)
  return "Reserved 15: "..value
end

-- Dissect: Reserved 15
miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_15.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_15.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_15.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.reserved_15, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 16
miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_16 = {}

-- Size: Reserved 16
miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_16.size = 16

-- Display: Reserved 16
miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_16.display = function(value)
  return "Reserved 16: "..value
end

-- Dissect: Reserved 16
miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_16.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_16.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.reserved_16, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 2
miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_2 = {}

-- Size: Reserved 2
miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_2.size = 2

-- Display: Reserved 2
miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.reserved_2, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 32
miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_32 = {}

-- Size: Reserved 32
miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_32.size = 32

-- Display: Reserved 32
miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_32.display = function(value)
  return "Reserved 32: "..value
end

-- Dissect: Reserved 32
miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_32.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_32.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_32.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.reserved_32, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 4
miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_4 = {}

-- Size: Reserved 4
miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_4.size = 4

-- Display: Reserved 4
miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.reserved_4, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 8
miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_8 = {}

-- Size: Reserved 8
miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_8.size = 8

-- Display: Reserved 8
miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_8.display = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.reserved_8, range, range:raw(), display)

  return offset + length, value
end

-- Restricted Option
miax_miaxoptions_expressinterface_mei_v2_9_c.restricted_option = {}

-- Size: Restricted Option
miax_miaxoptions_expressinterface_mei_v2_9_c.restricted_option.size = 1

-- Display: Restricted Option
miax_miaxoptions_expressinterface_mei_v2_9_c.restricted_option.labels = {
  ["Y"] = "Restricted Option: Miax Will Accept Position Closing Orders Only (Y)",
  ["N"] = "Restricted Option: Miax Will Accept Open And Close Positions (N)",
}

miax_miaxoptions_expressinterface_mei_v2_9_c.restricted_option.display = function(value)
  return miax_miaxoptions_expressinterface_mei_v2_9_c.restricted_option.labels[value] or "Restricted Option: Unknown("..value..")"
end

-- Dissect: Restricted Option
miax_miaxoptions_expressinterface_mei_v2_9_c.restricted_option.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.restricted_option.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.restricted_option.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.restricted_option, range, value, display)

  return offset + length, value
end

-- Security Id
miax_miaxoptions_expressinterface_mei_v2_9_c.security_id = {}

-- Size: Security Id
miax_miaxoptions_expressinterface_mei_v2_9_c.security_id.size = 4

-- Display: Security Id
miax_miaxoptions_expressinterface_mei_v2_9_c.security_id.display = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
miax_miaxoptions_expressinterface_mei_v2_9_c.security_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.security_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.security_id, range, value, display)

  return offset + length, value
end

-- Security Id Scope
miax_miaxoptions_expressinterface_mei_v2_9_c.security_id_scope = {}

-- Size: Security Id Scope
miax_miaxoptions_expressinterface_mei_v2_9_c.security_id_scope.size = 1

-- Display: Security Id Scope
miax_miaxoptions_expressinterface_mei_v2_9_c.security_id_scope.labels = {
  ["P"] = "Security Id Scope: Security Id Specifies Option Product Id (P)",
  ["S"] = "Security Id Scope: Security Id Specifies Complex Strategy Id (S)",
}

miax_miaxoptions_expressinterface_mei_v2_9_c.security_id_scope.display = function(value)
  return miax_miaxoptions_expressinterface_mei_v2_9_c.security_id_scope.labels[value] or "Security Id Scope: Unknown("..value..")"
end

-- Dissect: Security Id Scope
miax_miaxoptions_expressinterface_mei_v2_9_c.security_id_scope.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.security_id_scope.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.security_id_scope.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.security_id_scope, range, value, display)

  return offset + length, value
end

-- Security Symbol
miax_miaxoptions_expressinterface_mei_v2_9_c.security_symbol = {}

-- Size: Security Symbol
miax_miaxoptions_expressinterface_mei_v2_9_c.security_symbol.size = 6

-- Display: Security Symbol
miax_miaxoptions_expressinterface_mei_v2_9_c.security_symbol.display = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
miax_miaxoptions_expressinterface_mei_v2_9_c.security_symbol.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.security_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.security_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Sequence Number
miax_miaxoptions_expressinterface_mei_v2_9_c.sequence_number = {}

-- Size: Sequence Number
miax_miaxoptions_expressinterface_mei_v2_9_c.sequence_number.size = 8

-- Display: Sequence Number
miax_miaxoptions_expressinterface_mei_v2_9_c.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
miax_miaxoptions_expressinterface_mei_v2_9_c.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
miax_miaxoptions_expressinterface_mei_v2_9_c.sequenced_message_type = {}

-- Size: Sequenced Message Type
miax_miaxoptions_expressinterface_mei_v2_9_c.sequenced_message_type.size = 2

-- Display: Sequenced Message Type
miax_miaxoptions_expressinterface_mei_v2_9_c.sequenced_message_type.labels = {
  ["SU"] = "Sequenced Message Type: Simple Series Update (SU)",
  ["QW"] = "Sequenced Message Type: Valid Quote Width For Opening (QW)",
  ["ER"] = "Sequenced Message Type: Simple Enhanced Quote E Quote Response (ER)",
  ["CR"] = "Sequenced Message Type: Complex Enhanced Quote E Quote Response (CR)",
  ["SN"] = "Sequenced Message Type: System State Notification (SN)",
  ["TN"] = "Sequenced Message Type: Product Trading Status Notification (TN)",
  ["UN"] = "Sequenced Message Type: Underlying Trading Status Notification (UN)",
  ["QN"] = "Sequenced Message Type: Quote Width Relief Notification (QN)",
  ["AN"] = "Sequenced Message Type: Simple Arm Protection Settings Notification (AN)",
  ["A2"] = "Sequenced Message Type: Arm 2 Underlying Level Protection Settings Notification (A2)",
  ["QX"] = "Sequenced Message Type: Single Side Liquidity Protection Trigger Notification (QX)",
  ["UP"] = "Sequenced Message Type: Arm 2 Underlying Level Protection Notification (UP)",
  ["FP"] = "Sequenced Message Type: Arm 2 Firm Level Protection Notification (FP)",
  ["SC"] = "Sequenced Message Type: Complex Strategy Definition Notification (SC)",
  ["XN"] = "Sequenced Message Type: Cancel Notification (XN)",
  ["EN"] = "Sequenced Message Type: Option Execution Notification (EN)",
  ["ST"] = "Sequenced Message Type: Stock Leg Execution Notification (ST)",
}

miax_miaxoptions_expressinterface_mei_v2_9_c.sequenced_message_type.display = function(value)
  return miax_miaxoptions_expressinterface_mei_v2_9_c.sequenced_message_type.labels[value] or "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
miax_miaxoptions_expressinterface_mei_v2_9_c.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Sesm Packet Length
miax_miaxoptions_expressinterface_mei_v2_9_c.sesm_packet_length = {}

-- Size: Sesm Packet Length
miax_miaxoptions_expressinterface_mei_v2_9_c.sesm_packet_length.size = 2

-- Display: Sesm Packet Length
miax_miaxoptions_expressinterface_mei_v2_9_c.sesm_packet_length.display = function(value)
  return "Sesm Packet Length: "..value
end

-- Dissect: Sesm Packet Length
miax_miaxoptions_expressinterface_mei_v2_9_c.sesm_packet_length.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.sesm_packet_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.sesm_packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.sesm_packet_length, range, value, display)

  return offset + length, value
end

-- Sesm Packet Type
miax_miaxoptions_expressinterface_mei_v2_9_c.sesm_packet_type = {}

-- Size: Sesm Packet Type
miax_miaxoptions_expressinterface_mei_v2_9_c.sesm_packet_type.size = 1

-- Display: Sesm Packet Type
miax_miaxoptions_expressinterface_mei_v2_9_c.sesm_packet_type.labels = {
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

miax_miaxoptions_expressinterface_mei_v2_9_c.sesm_packet_type.display = function(value)
  return miax_miaxoptions_expressinterface_mei_v2_9_c.sesm_packet_type.labels[value] or "Sesm Packet Type: Unknown("..value..")"
end

-- Dissect: Sesm Packet Type
miax_miaxoptions_expressinterface_mei_v2_9_c.sesm_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.sesm_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.sesm_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.sesm_packet_type, range, value, display)

  return offset + length, value
end

-- Sesm Version
miax_miaxoptions_expressinterface_mei_v2_9_c.sesm_version = {}

-- Size: Sesm Version
miax_miaxoptions_expressinterface_mei_v2_9_c.sesm_version.size = 5

-- Display: Sesm Version
miax_miaxoptions_expressinterface_mei_v2_9_c.sesm_version.display = function(value)
  return "Sesm Version: "..value
end

-- Dissect: Sesm Version
miax_miaxoptions_expressinterface_mei_v2_9_c.sesm_version.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.sesm_version.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.sesm_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.sesm_version, range, value, display)

  return offset + length, value
end

-- Session Id
miax_miaxoptions_expressinterface_mei_v2_9_c.session_id = {}

-- Size: Session Id
miax_miaxoptions_expressinterface_mei_v2_9_c.session_id.size = 1

-- Display: Session Id
miax_miaxoptions_expressinterface_mei_v2_9_c.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
miax_miaxoptions_expressinterface_mei_v2_9_c.session_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.session_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.session_id, range, value, display)

  return offset + length, value
end

-- Side
miax_miaxoptions_expressinterface_mei_v2_9_c.side = {}

-- Size: Side
miax_miaxoptions_expressinterface_mei_v2_9_c.side.size = 1

-- Display: Side
miax_miaxoptions_expressinterface_mei_v2_9_c.side.labels = {
  ["B"] = "Side: Bid (B)",
  ["A"] = "Side: Ask (A)",
  ["N"] = "Side: Not Applicable (N)",
  ["S"] = "Side: Sold (S)",
}

miax_miaxoptions_expressinterface_mei_v2_9_c.side.display = function(value)
  return miax_miaxoptions_expressinterface_mei_v2_9_c.side.labels[value] or "Side: Unknown("..value..")"
end

-- Dissect: Side
miax_miaxoptions_expressinterface_mei_v2_9_c.side.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.side, range, value, display)

  return offset + length, value
end

-- Simple Liquidity Protection Reset Status
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_liquidity_protection_reset_status = {}

-- Size: Simple Liquidity Protection Reset Status
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_liquidity_protection_reset_status.size = 1

-- Display: Simple Liquidity Protection Reset Status
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_liquidity_protection_reset_status.display = function(value)
  if value == " " then
    return "Simple Liquidity Protection Reset Status: Simple Liquidity Protection Reset Successful (<whitespace>)"
  end
  if value == "U" then
    return "Simple Liquidity Protection Reset Status: Invalid Underlying (U)"
  end
  if value == "I" then
    return "Simple Liquidity Protection Reset Status: Simple Mass Liquidity Cancel Still In Progress (I)"
  end
  if value == "H" then
    return "Simple Liquidity Protection Reset Status: Halt Triggered Cleanup Of Liquidates Still In Progress (H)"
  end
  if value == "M" then
    return "Simple Liquidity Protection Reset Status: Unknown Mpid (M)"
  end
  if value == "X" then
    return "Simple Liquidity Protection Reset Status: Not Permitted (X)"
  end
  if value == "C" then
    return "Simple Liquidity Protection Reset Status: Miax Closed Request Cannot Be Completed (C)"
  end
  if value == "A" then
    return "Simple Liquidity Protection Reset Status: Arm 2 Underlying Level Protection Is In Effect (A)"
  end
  if value == "F" then
    return "Simple Liquidity Protection Reset Status: Arm 2 Firm Level Protection Is In Effect (F)"
  end
  if value == "K" then
    return "Simple Liquidity Protection Reset Status: Kill Switch Protection Is In Effect (K)"
  end
  if value == "E" then
    return "Simple Liquidity Protection Reset Status: Feature Not Supported (E)"
  end
  if value == "Z" then
    return "Simple Liquidity Protection Reset Status: Undefined Error (Z)"
  end
  if value == "J" then
    return "Simple Liquidity Protection Reset Status: Invalid Request (J)"
  end
  if value == "Q" then
    return "Simple Liquidity Protection Reset Status: Not Requested (Q)"
  end
  if value == "*" then
    return "Simple Liquidity Protection Reset Status: Downgraded From Older Version (*)"
  end

  return "Simple Liquidity Protection Reset Status: Unknown("..value..")"
end

-- Dissect: Simple Liquidity Protection Reset Status
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_liquidity_protection_reset_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.simple_liquidity_protection_reset_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.simple_liquidity_protection_reset_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.simple_liquidity_protection_reset_status, range, value, display)

  return offset + length, value
end

-- Simple Liquidity Reset
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_liquidity_reset = {}

-- Size: Simple Liquidity Reset
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_liquidity_reset.size = 1

-- Display: Simple Liquidity Reset
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_liquidity_reset.labels = {
  ["Y"] = "Simple Liquidity Reset: Yes (Y)",
  ["N"] = "Simple Liquidity Reset: No (N)",
}

miax_miaxoptions_expressinterface_mei_v2_9_c.simple_liquidity_reset.display = function(value)
  return miax_miaxoptions_expressinterface_mei_v2_9_c.simple_liquidity_reset.labels[value] or "Simple Liquidity Reset: Unknown("..value..")"
end

-- Dissect: Simple Liquidity Reset
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_liquidity_reset.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.simple_liquidity_reset.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.simple_liquidity_reset.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.simple_liquidity_reset, range, value, display)

  return offset + length, value
end

-- Simple Mass Cancel
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_mass_cancel = {}

-- Size: Simple Mass Cancel
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_mass_cancel.size = 1

-- Display: Simple Mass Cancel
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_mass_cancel.labels = {
  ["Y"] = "Simple Mass Cancel: Mass Cancel Simple Quotes And E Quotes (Y)",
  ["N"] = "Simple Mass Cancel: Do Not Mass Cancel Simple Quotes And E Quotes (N)",
  ["Q"] = "Simple Mass Cancel: Mass Cancel Simple Quotes Only Underlying Symbol Must Be Filled With Valid Underlying For This Option (Q)",
}

miax_miaxoptions_expressinterface_mei_v2_9_c.simple_mass_cancel.display = function(value)
  return miax_miaxoptions_expressinterface_mei_v2_9_c.simple_mass_cancel.labels[value] or "Simple Mass Cancel: Unknown("..value..")"
end

-- Dissect: Simple Mass Cancel
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_mass_cancel.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.simple_mass_cancel.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.simple_mass_cancel.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.simple_mass_cancel, range, value, display)

  return offset + length, value
end

-- Simple Mass Liquidity Cancel Status
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_mass_liquidity_cancel_status = {}

-- Size: Simple Mass Liquidity Cancel Status
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_mass_liquidity_cancel_status.size = 1

-- Display: Simple Mass Liquidity Cancel Status
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_mass_liquidity_cancel_status.display = function(value)
  if value == " " then
    return "Simple Mass Liquidity Cancel Status: Simple Mass Liquidity Cancel Successful (<whitespace>)"
  end
  if value == "U" then
    return "Simple Mass Liquidity Cancel Status: Invalid Underlying (U)"
  end
  if value == "I" then
    return "Simple Mass Liquidity Cancel Status: Simple Mass Liquidity Cancel Still In Progress (I)"
  end
  if value == "H" then
    return "Simple Mass Liquidity Cancel Status: Halt Triggered Cleanup Of Liquidities Still In Progress (H)"
  end
  if value == "N" then
    return "Simple Mass Liquidity Cancel Status: All Liquidities Have Already Been Canceled (N)"
  end
  if value == "X" then
    return "Simple Mass Liquidity Cancel Status: Not Permitted (X)"
  end
  if value == "M" then
    return "Simple Mass Liquidity Cancel Status: Unknown Mpid (M)"
  end
  if value == "C" then
    return "Simple Mass Liquidity Cancel Status: Miax Closed Request Cannot Be Completed (C)"
  end
  if value == "J" then
    return "Simple Mass Liquidity Cancel Status: Invalid Request (J)"
  end
  if value == "E" then
    return "Simple Mass Liquidity Cancel Status: Feature Not Supported (E)"
  end
  if value == "Z" then
    return "Simple Mass Liquidity Cancel Status: Undefined Error (Z)"
  end
  if value == "Q" then
    return "Simple Mass Liquidity Cancel Status: Not Requested (Q)"
  end
  if value == "*" then
    return "Simple Mass Liquidity Cancel Status: Downgraded From Older Version (*)"
  end

  return "Simple Mass Liquidity Cancel Status: Unknown("..value..")"
end

-- Dissect: Simple Mass Liquidity Cancel Status
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_mass_liquidity_cancel_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.simple_mass_liquidity_cancel_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.simple_mass_liquidity_cancel_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.simple_mass_liquidity_cancel_status, range, value, display)

  return offset + length, value
end

-- Simple Mass Quote Cancel Status
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_mass_quote_cancel_status = {}

-- Size: Simple Mass Quote Cancel Status
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_mass_quote_cancel_status.size = 1

-- Display: Simple Mass Quote Cancel Status
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_mass_quote_cancel_status.display = function(value)
  if value == " " then
    return "Simple Mass Quote Cancel Status: Cancel Successful (<whitespace>)"
  end
  if value == "U" then
    return "Simple Mass Quote Cancel Status: Invalid Underlying (U)"
  end
  if value == "I" then
    return "Simple Mass Quote Cancel Status: Mass Quote Cancel Still In Progress (I)"
  end
  if value == "H" then
    return "Simple Mass Quote Cancel Status: Halt Triggered Cleanup Of Quotes Still In Progress (H)"
  end
  if value == "N" then
    return "Simple Mass Quote Cancel Status: All Quote Have Already Been Canceled (N)"
  end
  if value == "X" then
    return "Simple Mass Quote Cancel Status: Not Permitted (X)"
  end
  if value == "M" then
    return "Simple Mass Quote Cancel Status: Unknown Mpid (M)"
  end
  if value == "C" then
    return "Simple Mass Quote Cancel Status: Miax Closed Request Cannot Be Completed (C)"
  end
  if value == "Z" then
    return "Simple Mass Quote Cancel Status: Undefined Error (Z)"
  end

  return "Simple Mass Quote Cancel Status: Unknown("..value..")"
end

-- Dissect: Simple Mass Quote Cancel Status
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_mass_quote_cancel_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.simple_mass_quote_cancel_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.simple_mass_quote_cancel_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.simple_mass_quote_cancel_status, range, value, display)

  return offset + length, value
end

-- Size
miax_miaxoptions_expressinterface_mei_v2_9_c.size = {}

-- Size: Size
miax_miaxoptions_expressinterface_mei_v2_9_c.size.size = 4

-- Display: Size
miax_miaxoptions_expressinterface_mei_v2_9_c.size.display = function(value)
  return "Size: "..value
end

-- Dissect: Size
miax_miaxoptions_expressinterface_mei_v2_9_c.size.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.size.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.size, range, value, display)

  return offset + length, value
end

-- Source
miax_miaxoptions_expressinterface_mei_v2_9_c.source = {}

-- Size: Source
miax_miaxoptions_expressinterface_mei_v2_9_c.source.size = 1

-- Display: Source
miax_miaxoptions_expressinterface_mei_v2_9_c.source.labels = {
  ["T"] = "Source: Changes Carried Out By The Firm Via Mei (T)",
  ["E"] = "Source: Changes Carried Out By The Exchange Global Default Changes Or Firm Requested Settings Applied Manually (E)",
}

miax_miaxoptions_expressinterface_mei_v2_9_c.source.display = function(value)
  return miax_miaxoptions_expressinterface_mei_v2_9_c.source.labels[value] or "Source: Unknown("..value..")"
end

-- Dissect: Source
miax_miaxoptions_expressinterface_mei_v2_9_c.source.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.source.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.source.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.source, range, value, display)

  return offset + length, value
end

-- Start Sequence Number
miax_miaxoptions_expressinterface_mei_v2_9_c.start_sequence_number = {}

-- Size: Start Sequence Number
miax_miaxoptions_expressinterface_mei_v2_9_c.start_sequence_number.size = 8

-- Display: Start Sequence Number
miax_miaxoptions_expressinterface_mei_v2_9_c.start_sequence_number.display = function(value)
  return "Start Sequence Number: "..value
end

-- Dissect: Start Sequence Number
miax_miaxoptions_expressinterface_mei_v2_9_c.start_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.start_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.start_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.start_sequence_number, range, value, display)

  return offset + length, value
end

-- Status
miax_miaxoptions_expressinterface_mei_v2_9_c.status = {}

-- Size: Status
miax_miaxoptions_expressinterface_mei_v2_9_c.status.size = 1

-- Display: Status
miax_miaxoptions_expressinterface_mei_v2_9_c.status.display = function(value)
  if value == " " then
    return "Status: Single Side Protection Reset Request Successful (<whitespace>)"
  end
  if value == "M" then
    return "Status: Invalid Mpid (M)"
  end
  if value == "C" then
    return "Status: Invalid Security Id Scope (C)"
  end
  if value == "I" then
    return "Status: Invalid Security Id (I)"
  end
  if value == "S" then
    return "Status: Invalid Side (S)"
  end
  if value == "E" then
    return "Status: Feature Not Enabled (E)"
  end
  if value == "Z" then
    return "Status: Undefined Error (Z)"
  end
  if value == "*" then
    return "Status: Downgraded From Older Version (*)"
  end

  return "Status: Unknown("..value..")"
end

-- Dissect: Status
miax_miaxoptions_expressinterface_mei_v2_9_c.status.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.status, range, value, display)

  return offset + length, value
end

-- Stock Sell Short Indicator
miax_miaxoptions_expressinterface_mei_v2_9_c.stock_sell_short_indicator = {}

-- Size: Stock Sell Short Indicator
miax_miaxoptions_expressinterface_mei_v2_9_c.stock_sell_short_indicator.size = 1

-- Display: Stock Sell Short Indicator
miax_miaxoptions_expressinterface_mei_v2_9_c.stock_sell_short_indicator.display = function(value)
  if value == "N" then
    return "Stock Sell Short Indicator: Not Short (N)"
  end
  if value == "Y" then
    return "Stock Sell Short Indicator: Short (Y)"
  end
  if value == "E" then
    return "Stock Sell Short Indicator: Short Exempt (E)"
  end
  if value == " " then
    return "Stock Sell Short Indicator: Not Applicable (<whitespace>)"
  end

  return "Stock Sell Short Indicator: Unknown("..value..")"
end

-- Dissect: Stock Sell Short Indicator
miax_miaxoptions_expressinterface_mei_v2_9_c.stock_sell_short_indicator.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.stock_sell_short_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.stock_sell_short_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.stock_sell_short_indicator, range, value, display)

  return offset + length, value
end

-- Strategy Id
miax_miaxoptions_expressinterface_mei_v2_9_c.strategy_id = {}

-- Size: Strategy Id
miax_miaxoptions_expressinterface_mei_v2_9_c.strategy_id.size = 4

-- Display: Strategy Id
miax_miaxoptions_expressinterface_mei_v2_9_c.strategy_id.display = function(value)
  return "Strategy Id: "..value
end

-- Dissect: Strategy Id
miax_miaxoptions_expressinterface_mei_v2_9_c.strategy_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.strategy_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.strategy_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.strategy_id, range, value, display)

  return offset + length, value
end

-- Strike Price
miax_miaxoptions_expressinterface_mei_v2_9_c.strike_price = {}

-- Size: Strike Price
miax_miaxoptions_expressinterface_mei_v2_9_c.strike_price.size = 4

-- Display: Strike Price
miax_miaxoptions_expressinterface_mei_v2_9_c.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Translate: Strike Price
miax_miaxoptions_expressinterface_mei_v2_9_c.strike_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Strike Price
miax_miaxoptions_expressinterface_mei_v2_9_c.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.strike_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_miaxoptions_expressinterface_mei_v2_9_c.strike_price.translate(raw)
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.strike_price, range, value, display)

  return offset + length, value
end

-- System Status
miax_miaxoptions_expressinterface_mei_v2_9_c.system_status = {}

-- Size: System Status
miax_miaxoptions_expressinterface_mei_v2_9_c.system_status.size = 1

-- Display: System Status
miax_miaxoptions_expressinterface_mei_v2_9_c.system_status.labels = {
  ["S"] = "System Status: Firm Interface Start Up Time Ready To Accept Application Messages (S)",
  ["P"] = "System Status: Lqw Ready To Accept Official Quotes (P)",
  ["C"] = "System Status: End Of System Hours (C)",
  ["L"] = "System Status: Pre Lqw Not Ready To Accept Official Quotes (L)",
  ["X"] = "System Status: System Currently Not Accepting Messages (X)",
  ["1"] = "System Status: Start Of Test Session Sent Before Tests (1)",
  ["2"] = "System Status: End Of Test Session (2)",
}

miax_miaxoptions_expressinterface_mei_v2_9_c.system_status.display = function(value)
  return miax_miaxoptions_expressinterface_mei_v2_9_c.system_status.labels[value] or "System Status: Unknown("..value..")"
end

-- Dissect: System Status
miax_miaxoptions_expressinterface_mei_v2_9_c.system_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.system_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.system_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.system_status, range, value, display)

  return offset + length, value
end

-- Target Message Id
miax_miaxoptions_expressinterface_mei_v2_9_c.target_message_id = {}

-- Size: Target Message Id
miax_miaxoptions_expressinterface_mei_v2_9_c.target_message_id.size = 4

-- Display: Target Message Id
miax_miaxoptions_expressinterface_mei_v2_9_c.target_message_id.display = function(value)
  return "Target Message Id: "..value
end

-- Dissect: Target Message Id
miax_miaxoptions_expressinterface_mei_v2_9_c.target_message_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.target_message_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.target_message_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.target_message_id, range, value, display)

  return offset + length, value
end

-- Test Text
miax_miaxoptions_expressinterface_mei_v2_9_c.test_text = {}

-- Display: Test Text
miax_miaxoptions_expressinterface_mei_v2_9_c.test_text.display = function(value)
  return "Test Text: "..value
end

-- Dissect runtime sized field: Test Text
miax_miaxoptions_expressinterface_mei_v2_9_c.test_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.test_text.display(value, packet, parent, size)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.test_text, range, value, display)

  return offset + size, value
end

-- Trade Id
miax_miaxoptions_expressinterface_mei_v2_9_c.trade_id = {}

-- Size: Trade Id
miax_miaxoptions_expressinterface_mei_v2_9_c.trade_id.size = 4

-- Display: Trade Id
miax_miaxoptions_expressinterface_mei_v2_9_c.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
miax_miaxoptions_expressinterface_mei_v2_9_c.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trade Status
miax_miaxoptions_expressinterface_mei_v2_9_c.trade_status = {}

-- Size: Trade Status
miax_miaxoptions_expressinterface_mei_v2_9_c.trade_status.size = 1

-- Display: Trade Status
miax_miaxoptions_expressinterface_mei_v2_9_c.trade_status.labels = {
  ["E"] = "Trade Status: New Execution (E)",
}

miax_miaxoptions_expressinterface_mei_v2_9_c.trade_status.display = function(value)
  return miax_miaxoptions_expressinterface_mei_v2_9_c.trade_status.labels[value] or "Trade Status: Unknown("..value..")"
end

-- Dissect: Trade Status
miax_miaxoptions_expressinterface_mei_v2_9_c.trade_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.trade_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.trade_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.trade_status, range, value, display)

  return offset + length, value
end

-- Trading Status
miax_miaxoptions_expressinterface_mei_v2_9_c.trading_status = {}

-- Size: Trading Status
miax_miaxoptions_expressinterface_mei_v2_9_c.trading_status.size = 1

-- Display: Trading Status
miax_miaxoptions_expressinterface_mei_v2_9_c.trading_status.labels = {
  ["H"] = "Trading Status: Halted (H)",
  ["C"] = "Trading Status: Closing (C)",
  ["R"] = "Trading Status: Resume (R)",
  ["O"] = "Trading Status: Open (O)",
}

miax_miaxoptions_expressinterface_mei_v2_9_c.trading_status.display = function(value)
  return miax_miaxoptions_expressinterface_mei_v2_9_c.trading_status.labels[value] or "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
miax_miaxoptions_expressinterface_mei_v2_9_c.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Trigger Reason
miax_miaxoptions_expressinterface_mei_v2_9_c.trigger_reason = {}

-- Size: Trigger Reason
miax_miaxoptions_expressinterface_mei_v2_9_c.trigger_reason.size = 1

-- Display: Trigger Reason
miax_miaxoptions_expressinterface_mei_v2_9_c.trigger_reason.labels = {
  ["E"] = "Trigger Reason: Exchange Initiated Mass Quote Cancel (E)",
  ["U"] = "Trigger Reason: Firm Initiated Mass Quote Cancel (U)",
  ["R"] = "Trigger Reason: Arm Triggered Protection (R)",
  ["T"] = "Trigger Reason: Trading Halt (T)",
  ["K"] = "Trigger Reason: Kill Switch Protection Is In Effect Future Use (K)",
  ["F"] = "Trigger Reason: Arm 2 Firm Level Protection Initiated Mass Quote Cancel (F)",
  ["J"] = "Trigger Reason: Reserved For Future Use (J)",
  ["*"] = "Trigger Reason: Downgraded From Older Version (*)",
}

miax_miaxoptions_expressinterface_mei_v2_9_c.trigger_reason.display = function(value)
  return miax_miaxoptions_expressinterface_mei_v2_9_c.trigger_reason.labels[value] or "Trigger Reason: Unknown("..value..")"
end

-- Dissect: Trigger Reason
miax_miaxoptions_expressinterface_mei_v2_9_c.trigger_reason.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.trigger_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.trigger_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.trigger_reason, range, value, display)

  return offset + length, value
end

-- Triggering Bulk Quote Index
miax_miaxoptions_expressinterface_mei_v2_9_c.triggering_bulk_quote_index = {}

-- Size: Triggering Bulk Quote Index
miax_miaxoptions_expressinterface_mei_v2_9_c.triggering_bulk_quote_index.size = 1

-- Display: Triggering Bulk Quote Index
miax_miaxoptions_expressinterface_mei_v2_9_c.triggering_bulk_quote_index.display = function(value)
  return "Triggering Bulk Quote Index: "..value
end

-- Dissect: Triggering Bulk Quote Index
miax_miaxoptions_expressinterface_mei_v2_9_c.triggering_bulk_quote_index.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.triggering_bulk_quote_index.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.triggering_bulk_quote_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.triggering_bulk_quote_index, range, value, display)

  return offset + length, value
end

-- Triggering Client Message Id
miax_miaxoptions_expressinterface_mei_v2_9_c.triggering_client_message_id = {}

-- Size: Triggering Client Message Id
miax_miaxoptions_expressinterface_mei_v2_9_c.triggering_client_message_id.size = 4

-- Display: Triggering Client Message Id
miax_miaxoptions_expressinterface_mei_v2_9_c.triggering_client_message_id.display = function(value)
  return "Triggering Client Message Id: "..value
end

-- Dissect: Triggering Client Message Id
miax_miaxoptions_expressinterface_mei_v2_9_c.triggering_client_message_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.triggering_client_message_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.triggering_client_message_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.triggering_client_message_id, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
miax_miaxoptions_expressinterface_mei_v2_9_c.underlying_symbol = {}

-- Size: Underlying Symbol
miax_miaxoptions_expressinterface_mei_v2_9_c.underlying_symbol.size = 11

-- Display: Underlying Symbol
miax_miaxoptions_expressinterface_mei_v2_9_c.underlying_symbol.display = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
miax_miaxoptions_expressinterface_mei_v2_9_c.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.underlying_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Unsequenced Message Type
miax_miaxoptions_expressinterface_mei_v2_9_c.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
miax_miaxoptions_expressinterface_mei_v2_9_c.unsequenced_message_type.size = 2

-- Display: Unsequenced Message Type
miax_miaxoptions_expressinterface_mei_v2_9_c.unsequenced_message_type.labels = {
  ["AS"] = "Unsequenced Message Type: Simple Arm Settings Update Request (AS)",
  ["AA"] = "Unsequenced Message Type: Simple Arm Settings Update Response (AA)",
  ["2S"] = "Unsequenced Message Type: Arm 2 Underlying Level Protection Settings Update Request (2S)",
  ["2R"] = "Unsequenced Message Type: Arm 2 Underlying Level Protection Settings Update Response (2R)",
  ["qq"] = "Unsequenced Message Type: Simple Bulk Quote Message (qq)",
  ["QR"] = "Unsequenced Message Type: Simple Bulk Quote Response (QR)",
  ["eq"] = "Unsequenced Message Type: Simple Enhanced Quote E Quote Message (eq)",
  ["ce"] = "Unsequenced Message Type: Complex Enhanced Quote E Quote Message (ce)",
  ["xq"] = "Unsequenced Message Type: Simple Mass Quote Cancel Request (xq)",
  ["XR"] = "Unsequenced Message Type: Simple Mass Quote Cancel Response (XR)",
  ["xk"] = "Unsequenced Message Type: Mass Liquidity Cancel Request Simple And Complex (xk)",
  ["XP"] = "Unsequenced Message Type: Mass Liquidity Cancel Response (XP)",
  ["PX"] = "Unsequenced Message Type: Simple Quote Protection Reset Request (PX)",
  ["PR"] = "Unsequenced Message Type: Simple Quote Protection Reset Response (PR)",
  ["PC"] = "Unsequenced Message Type: Liquidity Protection Reset Request (PC)",
  ["PK"] = "Unsequenced Message Type: Liquidity Protection Reset Response (PK)",
  ["SS"] = "Unsequenced Message Type: Single Side Liquidity Protection Reset Request (SS)",
  ["SR"] = "Unsequenced Message Type: Single Side Liquidity Protection Reset Response (SR)",
  ["QP"] = "Unsequenced Message Type: Simple Quote Protection Trigger Notification (QP)",
  ["QC"] = "Unsequenced Message Type: Complex Liquidity Protection Trigger Notification (QC)",
  ["XN"] = "Unsequenced Message Type: Cancel Notification (XN)",
}

miax_miaxoptions_expressinterface_mei_v2_9_c.unsequenced_message_type.display = function(value)
  return miax_miaxoptions_expressinterface_mei_v2_9_c.unsequenced_message_type.labels[value] or "Unsequenced Message Type: Unknown("..value..")"
end

-- Dissect: Unsequenced Message Type
miax_miaxoptions_expressinterface_mei_v2_9_c.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Update Reason
miax_miaxoptions_expressinterface_mei_v2_9_c.update_reason = {}

-- Size: Update Reason
miax_miaxoptions_expressinterface_mei_v2_9_c.update_reason.size = 1

-- Display: Update Reason
miax_miaxoptions_expressinterface_mei_v2_9_c.update_reason.labels = {
  ["N"] = "Update Reason: New Strategy Created (N)",
  ["U"] = "Update Reason: Strategy Definition Updated (U)",
  ["*"] = "Update Reason: Downgraded For Older Version (*)",
}

miax_miaxoptions_expressinterface_mei_v2_9_c.update_reason.display = function(value)
  return miax_miaxoptions_expressinterface_mei_v2_9_c.update_reason.labels[value] or "Update Reason: Unknown("..value..")"
end

-- Dissect: Update Reason
miax_miaxoptions_expressinterface_mei_v2_9_c.update_reason.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.update_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.update_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.update_reason, range, value, display)

  return offset + length, value
end

-- Username
miax_miaxoptions_expressinterface_mei_v2_9_c.username = {}

-- Size: Username
miax_miaxoptions_expressinterface_mei_v2_9_c.username.size = 5

-- Display: Username
miax_miaxoptions_expressinterface_mei_v2_9_c.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
miax_miaxoptions_expressinterface_mei_v2_9_c.username.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_expressinterface_mei_v2_9_c.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Miax MiaxOptions ExpressInterface Mei 2.9.c
-----------------------------------------------------------------------

-- Test Packet
miax_miaxoptions_expressinterface_mei_v2_9_c.test_packet = {}

-- Calculate size of: Test Packet
miax_miaxoptions_expressinterface_mei_v2_9_c.test_packet.size = function(buffer, offset)
  local index = 0

  -- Parse runtime size of: Test Text
  local sesm_packet_length = buffer(offset + index - 3, 2):le_uint()
  index = index + sesm_packet_length - 1

  return index
end

-- Display: Test Packet
miax_miaxoptions_expressinterface_mei_v2_9_c.test_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Test Packet
miax_miaxoptions_expressinterface_mei_v2_9_c.test_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Test Text
  local size_of_test_text = sesm_packet_length - 1

  -- Test Text: 0 Byte Ascii String
  index, test_text = miax_miaxoptions_expressinterface_mei_v2_9_c.test_text.dissect(buffer, index, packet, parent, size_of_test_text)

  return index
end

-- Dissect: Test Packet
miax_miaxoptions_expressinterface_mei_v2_9_c.test_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.test_packet, buffer(offset, 0))
    local index = miax_miaxoptions_expressinterface_mei_v2_9_c.test_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_expressinterface_mei_v2_9_c.test_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_expressinterface_mei_v2_9_c.test_packet.fields(buffer, offset, packet, parent)
  end
end

-- Client Heartbeat
miax_miaxoptions_expressinterface_mei_v2_9_c.client_heartbeat = {}

-- Display: Client Heartbeat
miax_miaxoptions_expressinterface_mei_v2_9_c.client_heartbeat.display = function(packet, parent, length)
  return "Client Heartbeat"
end


-- Dissect: Client Heartbeat
miax_miaxoptions_expressinterface_mei_v2_9_c.client_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.client_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Server Heartbeat
miax_miaxoptions_expressinterface_mei_v2_9_c.server_heartbeat = {}

-- Display: Server Heartbeat
miax_miaxoptions_expressinterface_mei_v2_9_c.server_heartbeat.display = function(packet, parent, length)
  return "Server Heartbeat"
end


-- Dissect: Server Heartbeat
miax_miaxoptions_expressinterface_mei_v2_9_c.server_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.server_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- End Of Session
miax_miaxoptions_expressinterface_mei_v2_9_c.end_of_session = {}

-- Display: End Of Session
miax_miaxoptions_expressinterface_mei_v2_9_c.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
miax_miaxoptions_expressinterface_mei_v2_9_c.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Goodbye Packet
miax_miaxoptions_expressinterface_mei_v2_9_c.goodbye_packet = {}

-- Calculate size of: Goodbye Packet
miax_miaxoptions_expressinterface_mei_v2_9_c.goodbye_packet.size = function(buffer, offset)
  local index = 0

  index = index + miax_miaxoptions_expressinterface_mei_v2_9_c.goodbye_reason.size

  -- Parse runtime size of: Logout Text
  local sesm_packet_length = buffer(offset + index - 4, 2):le_uint()
  index = index + sesm_packet_length - 2

  return index
end

-- Display: Goodbye Packet
miax_miaxoptions_expressinterface_mei_v2_9_c.goodbye_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Goodbye Packet
miax_miaxoptions_expressinterface_mei_v2_9_c.goodbye_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Goodbye Reason: 1 Byte Ascii String Enum with 3 values
  index, goodbye_reason = miax_miaxoptions_expressinterface_mei_v2_9_c.goodbye_reason.dissect(buffer, index, packet, parent)

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Logout Text
  local size_of_logout_text = sesm_packet_length - 2

  -- Logout Text: 0 Byte Ascii String
  index, logout_text = miax_miaxoptions_expressinterface_mei_v2_9_c.logout_text.dissect(buffer, index, packet, parent, size_of_logout_text)

  return index
end

-- Dissect: Goodbye Packet
miax_miaxoptions_expressinterface_mei_v2_9_c.goodbye_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.goodbye_packet, buffer(offset, 0))
    local index = miax_miaxoptions_expressinterface_mei_v2_9_c.goodbye_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_expressinterface_mei_v2_9_c.goodbye_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_expressinterface_mei_v2_9_c.goodbye_packet.fields(buffer, offset, packet, parent)
  end
end

-- Logout Request
miax_miaxoptions_expressinterface_mei_v2_9_c.logout_request = {}

-- Calculate size of: Logout Request
miax_miaxoptions_expressinterface_mei_v2_9_c.logout_request.size = function(buffer, offset)
  local index = 0

  index = index + miax_miaxoptions_expressinterface_mei_v2_9_c.logout_reason.size

  -- Parse runtime size of: Logout Text
  local sesm_packet_length = buffer(offset + index - 4, 2):le_uint()
  index = index + sesm_packet_length - 2

  return index
end

-- Display: Logout Request
miax_miaxoptions_expressinterface_mei_v2_9_c.logout_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Request
miax_miaxoptions_expressinterface_mei_v2_9_c.logout_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logout Reason: 1 Byte Ascii String Enum with 4 values
  index, logout_reason = miax_miaxoptions_expressinterface_mei_v2_9_c.logout_reason.dissect(buffer, index, packet, parent)

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Logout Text
  local size_of_logout_text = sesm_packet_length - 2

  -- Logout Text: 0 Byte Ascii String
  index, logout_text = miax_miaxoptions_expressinterface_mei_v2_9_c.logout_text.dissect(buffer, index, packet, parent, size_of_logout_text)

  return index
end

-- Dissect: Logout Request
miax_miaxoptions_expressinterface_mei_v2_9_c.logout_request.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.logout_request, buffer(offset, 0))
    local index = miax_miaxoptions_expressinterface_mei_v2_9_c.logout_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_expressinterface_mei_v2_9_c.logout_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_expressinterface_mei_v2_9_c.logout_request.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Request
miax_miaxoptions_expressinterface_mei_v2_9_c.retransmission_request = {}

-- Size: Retransmission Request
miax_miaxoptions_expressinterface_mei_v2_9_c.retransmission_request.size =
  miax_miaxoptions_expressinterface_mei_v2_9_c.start_sequence_number.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.end_sequence_number.size

-- Display: Retransmission Request
miax_miaxoptions_expressinterface_mei_v2_9_c.retransmission_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request
miax_miaxoptions_expressinterface_mei_v2_9_c.retransmission_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, start_sequence_number = miax_miaxoptions_expressinterface_mei_v2_9_c.start_sequence_number.dissect(buffer, index, packet, parent)

  -- End Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, end_sequence_number = miax_miaxoptions_expressinterface_mei_v2_9_c.end_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request
miax_miaxoptions_expressinterface_mei_v2_9_c.retransmission_request.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.retransmission_request, buffer(offset, 0))
    local index = miax_miaxoptions_expressinterface_mei_v2_9_c.retransmission_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_expressinterface_mei_v2_9_c.retransmission_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_expressinterface_mei_v2_9_c.retransmission_request.fields(buffer, offset, packet, parent)
  end
end

-- Synchronization Complete
miax_miaxoptions_expressinterface_mei_v2_9_c.synchronization_complete = {}

-- Display: Synchronization Complete
miax_miaxoptions_expressinterface_mei_v2_9_c.synchronization_complete.display = function(packet, parent, length)
  return "Synchronization Complete"
end


-- Dissect: Synchronization Complete
miax_miaxoptions_expressinterface_mei_v2_9_c.synchronization_complete.dissect = function(buffer, offset, packet, parent)
  local display = miax_miaxoptions_expressinterface_mei_v2_9_c.synchronization_complete.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Login Response
miax_miaxoptions_expressinterface_mei_v2_9_c.login_response = {}

-- Size: Login Response
miax_miaxoptions_expressinterface_mei_v2_9_c.login_response.size =
  miax_miaxoptions_expressinterface_mei_v2_9_c.login_status.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.session_id.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.highest_sequence_number.size

-- Display: Login Response
miax_miaxoptions_expressinterface_mei_v2_9_c.login_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response
miax_miaxoptions_expressinterface_mei_v2_9_c.login_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Login Status: 1 Byte Ascii String Enum with 7 values
  index, login_status = miax_miaxoptions_expressinterface_mei_v2_9_c.login_status.dissect(buffer, index, packet, parent)

  -- Session Id: BinaryU
  index, session_id = miax_miaxoptions_expressinterface_mei_v2_9_c.session_id.dissect(buffer, index, packet, parent)

  -- Highest Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, highest_sequence_number = miax_miaxoptions_expressinterface_mei_v2_9_c.highest_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response
miax_miaxoptions_expressinterface_mei_v2_9_c.login_response.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.login_response, buffer(offset, 0))
    local index = miax_miaxoptions_expressinterface_mei_v2_9_c.login_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_expressinterface_mei_v2_9_c.login_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_expressinterface_mei_v2_9_c.login_response.fields(buffer, offset, packet, parent)
  end
end

-- Login Request
miax_miaxoptions_expressinterface_mei_v2_9_c.login_request = {}

-- Size: Login Request
miax_miaxoptions_expressinterface_mei_v2_9_c.login_request.size =
  miax_miaxoptions_expressinterface_mei_v2_9_c.sesm_version.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.username.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.computer_id.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.application_protocol.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.requested_session.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.requested_sequence_number.size

-- Display: Login Request
miax_miaxoptions_expressinterface_mei_v2_9_c.login_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request
miax_miaxoptions_expressinterface_mei_v2_9_c.login_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sesm Version: 5 Byte Ascii String
  index, sesm_version = miax_miaxoptions_expressinterface_mei_v2_9_c.sesm_version.dissect(buffer, index, packet, parent)

  -- Username: 5 Byte Ascii String
  index, username = miax_miaxoptions_expressinterface_mei_v2_9_c.username.dissect(buffer, index, packet, parent)

  -- Computer Id: 8 Byte Ascii String
  index, computer_id = miax_miaxoptions_expressinterface_mei_v2_9_c.computer_id.dissect(buffer, index, packet, parent)

  -- Application Protocol: 8 Byte Ascii String
  index, application_protocol = miax_miaxoptions_expressinterface_mei_v2_9_c.application_protocol.dissect(buffer, index, packet, parent)

  -- Requested Session: 1 Byte Unsigned Fixed Width Integer
  index, requested_session = miax_miaxoptions_expressinterface_mei_v2_9_c.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, requested_sequence_number = miax_miaxoptions_expressinterface_mei_v2_9_c.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request
miax_miaxoptions_expressinterface_mei_v2_9_c.login_request.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.login_request, buffer(offset, 0))
    local index = miax_miaxoptions_expressinterface_mei_v2_9_c.login_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_expressinterface_mei_v2_9_c.login_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_expressinterface_mei_v2_9_c.login_request.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.cancel_notification = {}

-- Size: Cancel Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.cancel_notification.size =
  miax_miaxoptions_expressinterface_mei_v2_9_c.notification_time.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.product_id_or_strategy_id.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.liquidity_type.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.client_message_id.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.bulk_quote_index.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.quotee_quote_side.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.size.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.engine_sequence_number.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.cancel_reason.size

-- Display: Cancel Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.cancel_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.cancel_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: NanoTime
  index, notification_time = miax_miaxoptions_expressinterface_mei_v2_9_c.notification_time.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.dissect(buffer, index, packet, parent)

  -- Product Id Or Strategy Id: BinaryU
  index, product_id_or_strategy_id = miax_miaxoptions_expressinterface_mei_v2_9_c.product_id_or_strategy_id.dissect(buffer, index, packet, parent)

  -- Liquidity Type: Alphanumeric
  index, liquidity_type = miax_miaxoptions_expressinterface_mei_v2_9_c.liquidity_type.dissect(buffer, index, packet, parent)

  -- Client Message Id: BinaryU
  index, client_message_id = miax_miaxoptions_expressinterface_mei_v2_9_c.client_message_id.dissect(buffer, index, packet, parent)

  -- Bulk Quote Index: BinaryU
  index, bulk_quote_index = miax_miaxoptions_expressinterface_mei_v2_9_c.bulk_quote_index.dissect(buffer, index, packet, parent)

  -- Quotee Quote Side: Alphanumeric
  index, quotee_quote_side = miax_miaxoptions_expressinterface_mei_v2_9_c.quotee_quote_side.dissect(buffer, index, packet, parent)

  -- Size: BinaryU
  index, size = miax_miaxoptions_expressinterface_mei_v2_9_c.size.dissect(buffer, index, packet, parent)

  -- Engine Sequence Number: BinaryU
  index, engine_sequence_number = miax_miaxoptions_expressinterface_mei_v2_9_c.engine_sequence_number.dissect(buffer, index, packet, parent)

  -- Cancel Reason: Alphanumeric
  index, cancel_reason = miax_miaxoptions_expressinterface_mei_v2_9_c.cancel_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.cancel_notification.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.cancel_notification, buffer(offset, 0))
    local index = miax_miaxoptions_expressinterface_mei_v2_9_c.cancel_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_expressinterface_mei_v2_9_c.cancel_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_expressinterface_mei_v2_9_c.cancel_notification.fields(buffer, offset, packet, parent)
  end
end

-- Complex Liquidity Protection Trigger Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.complex_liquidity_protection_trigger_notification = {}

-- Size: Complex Liquidity Protection Trigger Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.complex_liquidity_protection_trigger_notification.size =
  miax_miaxoptions_expressinterface_mei_v2_9_c.notification_time.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.underlying_symbol.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.trigger_reason.size

-- Display: Complex Liquidity Protection Trigger Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.complex_liquidity_protection_trigger_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Liquidity Protection Trigger Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.complex_liquidity_protection_trigger_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: NanoTime
  index, notification_time = miax_miaxoptions_expressinterface_mei_v2_9_c.notification_time.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_miaxoptions_expressinterface_mei_v2_9_c.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Trigger Reason: Alphanumeric
  index, trigger_reason = miax_miaxoptions_expressinterface_mei_v2_9_c.trigger_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Liquidity Protection Trigger Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.complex_liquidity_protection_trigger_notification.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.complex_liquidity_protection_trigger_notification, buffer(offset, 0))
    local index = miax_miaxoptions_expressinterface_mei_v2_9_c.complex_liquidity_protection_trigger_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_expressinterface_mei_v2_9_c.complex_liquidity_protection_trigger_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_expressinterface_mei_v2_9_c.complex_liquidity_protection_trigger_notification.fields(buffer, offset, packet, parent)
  end
end

-- Simple Quote Protection Trigger Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_quote_protection_trigger_notification = {}

-- Size: Simple Quote Protection Trigger Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_quote_protection_trigger_notification.size =
  miax_miaxoptions_expressinterface_mei_v2_9_c.notification_time.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.underlying_symbol.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.trigger_reason.size

-- Display: Simple Quote Protection Trigger Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_quote_protection_trigger_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Quote Protection Trigger Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_quote_protection_trigger_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: NanoTime
  index, notification_time = miax_miaxoptions_expressinterface_mei_v2_9_c.notification_time.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_miaxoptions_expressinterface_mei_v2_9_c.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Trigger Reason: Alphanumeric
  index, trigger_reason = miax_miaxoptions_expressinterface_mei_v2_9_c.trigger_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Quote Protection Trigger Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_quote_protection_trigger_notification.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.simple_quote_protection_trigger_notification, buffer(offset, 0))
    local index = miax_miaxoptions_expressinterface_mei_v2_9_c.simple_quote_protection_trigger_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_expressinterface_mei_v2_9_c.simple_quote_protection_trigger_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_expressinterface_mei_v2_9_c.simple_quote_protection_trigger_notification.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Liquidity Protection Reset Response
miax_miaxoptions_expressinterface_mei_v2_9_c.single_side_liquidity_protection_reset_response = {}

-- Size: Single Side Liquidity Protection Reset Response
miax_miaxoptions_expressinterface_mei_v2_9_c.single_side_liquidity_protection_reset_response.size =
  miax_miaxoptions_expressinterface_mei_v2_9_c.client_message_id.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_4.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.status.size

-- Display: Single Side Liquidity Protection Reset Response
miax_miaxoptions_expressinterface_mei_v2_9_c.single_side_liquidity_protection_reset_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Liquidity Protection Reset Response
miax_miaxoptions_expressinterface_mei_v2_9_c.single_side_liquidity_protection_reset_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Message Id: BinaryU
  index, client_message_id = miax_miaxoptions_expressinterface_mei_v2_9_c.client_message_id.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.dissect(buffer, index, packet, parent)

  -- Reserved 4: BinaryU
  if show.padding then
    index, reserved_4 = miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_4.size
  end

  -- Status: Alphanumeric
  index, status = miax_miaxoptions_expressinterface_mei_v2_9_c.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Liquidity Protection Reset Response
miax_miaxoptions_expressinterface_mei_v2_9_c.single_side_liquidity_protection_reset_response.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.single_side_liquidity_protection_reset_response, buffer(offset, 0))
    local index = miax_miaxoptions_expressinterface_mei_v2_9_c.single_side_liquidity_protection_reset_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_expressinterface_mei_v2_9_c.single_side_liquidity_protection_reset_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_expressinterface_mei_v2_9_c.single_side_liquidity_protection_reset_response.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Liquidity Protection Reset Request
miax_miaxoptions_expressinterface_mei_v2_9_c.single_side_liquidity_protection_reset_request = {}

-- Size: Single Side Liquidity Protection Reset Request
miax_miaxoptions_expressinterface_mei_v2_9_c.single_side_liquidity_protection_reset_request.size =
  miax_miaxoptions_expressinterface_mei_v2_9_c.client_message_id.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.security_id_scope.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.security_id.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.side.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_4.size

-- Display: Single Side Liquidity Protection Reset Request
miax_miaxoptions_expressinterface_mei_v2_9_c.single_side_liquidity_protection_reset_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Liquidity Protection Reset Request
miax_miaxoptions_expressinterface_mei_v2_9_c.single_side_liquidity_protection_reset_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Message Id: BinaryU
  index, client_message_id = miax_miaxoptions_expressinterface_mei_v2_9_c.client_message_id.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.dissect(buffer, index, packet, parent)

  -- Security Id Scope: Alphanumeric
  index, security_id_scope = miax_miaxoptions_expressinterface_mei_v2_9_c.security_id_scope.dissect(buffer, index, packet, parent)

  -- Security Id: BinaryU
  index, security_id = miax_miaxoptions_expressinterface_mei_v2_9_c.security_id.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = miax_miaxoptions_expressinterface_mei_v2_9_c.side.dissect(buffer, index, packet, parent)

  -- Reserved 4: BinaryU
  if show.padding then
    index, reserved_4 = miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_4.size
  end

  return index
end

-- Dissect: Single Side Liquidity Protection Reset Request
miax_miaxoptions_expressinterface_mei_v2_9_c.single_side_liquidity_protection_reset_request.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.single_side_liquidity_protection_reset_request, buffer(offset, 0))
    local index = miax_miaxoptions_expressinterface_mei_v2_9_c.single_side_liquidity_protection_reset_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_expressinterface_mei_v2_9_c.single_side_liquidity_protection_reset_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_expressinterface_mei_v2_9_c.single_side_liquidity_protection_reset_request.fields(buffer, offset, packet, parent)
  end
end

-- Liquidity Protection Reset Response
miax_miaxoptions_expressinterface_mei_v2_9_c.liquidity_protection_reset_response = {}

-- Size: Liquidity Protection Reset Response
miax_miaxoptions_expressinterface_mei_v2_9_c.liquidity_protection_reset_response.size =
  miax_miaxoptions_expressinterface_mei_v2_9_c.client_message_id.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.simple_liquidity_protection_reset_status.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.complex_liquidity_protection_reset_status.size

-- Display: Liquidity Protection Reset Response
miax_miaxoptions_expressinterface_mei_v2_9_c.liquidity_protection_reset_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Liquidity Protection Reset Response
miax_miaxoptions_expressinterface_mei_v2_9_c.liquidity_protection_reset_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Message Id: BinaryU
  index, client_message_id = miax_miaxoptions_expressinterface_mei_v2_9_c.client_message_id.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.dissect(buffer, index, packet, parent)

  -- Simple Liquidity Protection Reset Status: Alphanumeric
  index, simple_liquidity_protection_reset_status = miax_miaxoptions_expressinterface_mei_v2_9_c.simple_liquidity_protection_reset_status.dissect(buffer, index, packet, parent)

  -- Complex Liquidity Protection Reset Status: Alphanumeric
  index, complex_liquidity_protection_reset_status = miax_miaxoptions_expressinterface_mei_v2_9_c.complex_liquidity_protection_reset_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Liquidity Protection Reset Response
miax_miaxoptions_expressinterface_mei_v2_9_c.liquidity_protection_reset_response.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.liquidity_protection_reset_response, buffer(offset, 0))
    local index = miax_miaxoptions_expressinterface_mei_v2_9_c.liquidity_protection_reset_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_expressinterface_mei_v2_9_c.liquidity_protection_reset_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_expressinterface_mei_v2_9_c.liquidity_protection_reset_response.fields(buffer, offset, packet, parent)
  end
end

-- Liquidity Protection Reset Request
miax_miaxoptions_expressinterface_mei_v2_9_c.liquidity_protection_reset_request = {}

-- Size: Liquidity Protection Reset Request
miax_miaxoptions_expressinterface_mei_v2_9_c.liquidity_protection_reset_request.size =
  miax_miaxoptions_expressinterface_mei_v2_9_c.client_message_id.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.underlying_symbol.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.simple_liquidity_reset.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.complex_liquidity_reset.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_8.size

-- Display: Liquidity Protection Reset Request
miax_miaxoptions_expressinterface_mei_v2_9_c.liquidity_protection_reset_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Liquidity Protection Reset Request
miax_miaxoptions_expressinterface_mei_v2_9_c.liquidity_protection_reset_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Message Id: BinaryU
  index, client_message_id = miax_miaxoptions_expressinterface_mei_v2_9_c.client_message_id.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_miaxoptions_expressinterface_mei_v2_9_c.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Simple Liquidity Reset: Alphanumeric
  index, simple_liquidity_reset = miax_miaxoptions_expressinterface_mei_v2_9_c.simple_liquidity_reset.dissect(buffer, index, packet, parent)

  -- Complex Liquidity Reset: Alphanumeric
  index, complex_liquidity_reset = miax_miaxoptions_expressinterface_mei_v2_9_c.complex_liquidity_reset.dissect(buffer, index, packet, parent)

  -- Reserved 8: BinaryU
  if show.padding then
    index, reserved_8 = miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_8.dissect(buffer, index, packet, parent)
  else
    index = index + miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_8.size
  end

  return index
end

-- Dissect: Liquidity Protection Reset Request
miax_miaxoptions_expressinterface_mei_v2_9_c.liquidity_protection_reset_request.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.liquidity_protection_reset_request, buffer(offset, 0))
    local index = miax_miaxoptions_expressinterface_mei_v2_9_c.liquidity_protection_reset_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_expressinterface_mei_v2_9_c.liquidity_protection_reset_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_expressinterface_mei_v2_9_c.liquidity_protection_reset_request.fields(buffer, offset, packet, parent)
  end
end

-- Simple Quote Protection Reset Response
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_quote_protection_reset_response = {}

-- Size: Simple Quote Protection Reset Response
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_quote_protection_reset_response.size =
  miax_miaxoptions_expressinterface_mei_v2_9_c.client_message_id.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.quote_protection_reset_status.size

-- Display: Simple Quote Protection Reset Response
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_quote_protection_reset_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Quote Protection Reset Response
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_quote_protection_reset_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Message Id: BinaryU
  index, client_message_id = miax_miaxoptions_expressinterface_mei_v2_9_c.client_message_id.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.dissect(buffer, index, packet, parent)

  -- Quote Protection Reset Status: Alphanumeric
  index, quote_protection_reset_status = miax_miaxoptions_expressinterface_mei_v2_9_c.quote_protection_reset_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Quote Protection Reset Response
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_quote_protection_reset_response.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.simple_quote_protection_reset_response, buffer(offset, 0))
    local index = miax_miaxoptions_expressinterface_mei_v2_9_c.simple_quote_protection_reset_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_expressinterface_mei_v2_9_c.simple_quote_protection_reset_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_expressinterface_mei_v2_9_c.simple_quote_protection_reset_response.fields(buffer, offset, packet, parent)
  end
end

-- Simple Quote Protection Reset Request
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_quote_protection_reset_request = {}

-- Size: Simple Quote Protection Reset Request
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_quote_protection_reset_request.size =
  miax_miaxoptions_expressinterface_mei_v2_9_c.client_message_id.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.underlying_symbol.size

-- Display: Simple Quote Protection Reset Request
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_quote_protection_reset_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Quote Protection Reset Request
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_quote_protection_reset_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Message Id: BinaryU
  index, client_message_id = miax_miaxoptions_expressinterface_mei_v2_9_c.client_message_id.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_miaxoptions_expressinterface_mei_v2_9_c.underlying_symbol.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Quote Protection Reset Request
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_quote_protection_reset_request.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.simple_quote_protection_reset_request, buffer(offset, 0))
    local index = miax_miaxoptions_expressinterface_mei_v2_9_c.simple_quote_protection_reset_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_expressinterface_mei_v2_9_c.simple_quote_protection_reset_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_expressinterface_mei_v2_9_c.simple_quote_protection_reset_request.fields(buffer, offset, packet, parent)
  end
end

-- Mass Liquidity Cancel Response
miax_miaxoptions_expressinterface_mei_v2_9_c.mass_liquidity_cancel_response = {}

-- Size: Mass Liquidity Cancel Response
miax_miaxoptions_expressinterface_mei_v2_9_c.mass_liquidity_cancel_response.size =
  miax_miaxoptions_expressinterface_mei_v2_9_c.client_message_id.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.simple_mass_liquidity_cancel_status.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.complex_mass_liquidity_cancel_status.size

-- Display: Mass Liquidity Cancel Response
miax_miaxoptions_expressinterface_mei_v2_9_c.mass_liquidity_cancel_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Liquidity Cancel Response
miax_miaxoptions_expressinterface_mei_v2_9_c.mass_liquidity_cancel_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Message Id: BinaryU
  index, client_message_id = miax_miaxoptions_expressinterface_mei_v2_9_c.client_message_id.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.dissect(buffer, index, packet, parent)

  -- Simple Mass Liquidity Cancel Status: Alphanumeric
  index, simple_mass_liquidity_cancel_status = miax_miaxoptions_expressinterface_mei_v2_9_c.simple_mass_liquidity_cancel_status.dissect(buffer, index, packet, parent)

  -- Complex Mass Liquidity Cancel Status: Alphanumeric
  index, complex_mass_liquidity_cancel_status = miax_miaxoptions_expressinterface_mei_v2_9_c.complex_mass_liquidity_cancel_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Liquidity Cancel Response
miax_miaxoptions_expressinterface_mei_v2_9_c.mass_liquidity_cancel_response.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.mass_liquidity_cancel_response, buffer(offset, 0))
    local index = miax_miaxoptions_expressinterface_mei_v2_9_c.mass_liquidity_cancel_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_expressinterface_mei_v2_9_c.mass_liquidity_cancel_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_expressinterface_mei_v2_9_c.mass_liquidity_cancel_response.fields(buffer, offset, packet, parent)
  end
end

-- Mass Liquidity Cancel Request Simple And Complex
miax_miaxoptions_expressinterface_mei_v2_9_c.mass_liquidity_cancel_request_simple_and_complex = {}

-- Size: Mass Liquidity Cancel Request Simple And Complex
miax_miaxoptions_expressinterface_mei_v2_9_c.mass_liquidity_cancel_request_simple_and_complex.size =
  miax_miaxoptions_expressinterface_mei_v2_9_c.client_message_id.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.client_send_time.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.underlying_symbol.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.simple_mass_cancel.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.complex_mass_cancel.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_8.size

-- Display: Mass Liquidity Cancel Request Simple And Complex
miax_miaxoptions_expressinterface_mei_v2_9_c.mass_liquidity_cancel_request_simple_and_complex.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Liquidity Cancel Request Simple And Complex
miax_miaxoptions_expressinterface_mei_v2_9_c.mass_liquidity_cancel_request_simple_and_complex.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Message Id: BinaryU
  index, client_message_id = miax_miaxoptions_expressinterface_mei_v2_9_c.client_message_id.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.dissect(buffer, index, packet, parent)

  -- Client Send Time: TimeStamp
  index, client_send_time = miax_miaxoptions_expressinterface_mei_v2_9_c.client_send_time.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_miaxoptions_expressinterface_mei_v2_9_c.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Simple Mass Cancel: Alphanumeric
  index, simple_mass_cancel = miax_miaxoptions_expressinterface_mei_v2_9_c.simple_mass_cancel.dissect(buffer, index, packet, parent)

  -- Complex Mass Cancel: Alphanumeric
  index, complex_mass_cancel = miax_miaxoptions_expressinterface_mei_v2_9_c.complex_mass_cancel.dissect(buffer, index, packet, parent)

  -- Reserved 8: BinaryU
  if show.padding then
    index, reserved_8 = miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_8.dissect(buffer, index, packet, parent)
  else
    index = index + miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_8.size
  end

  return index
end

-- Dissect: Mass Liquidity Cancel Request Simple And Complex
miax_miaxoptions_expressinterface_mei_v2_9_c.mass_liquidity_cancel_request_simple_and_complex.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.mass_liquidity_cancel_request_simple_and_complex, buffer(offset, 0))
    local index = miax_miaxoptions_expressinterface_mei_v2_9_c.mass_liquidity_cancel_request_simple_and_complex.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_expressinterface_mei_v2_9_c.mass_liquidity_cancel_request_simple_and_complex.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_expressinterface_mei_v2_9_c.mass_liquidity_cancel_request_simple_and_complex.fields(buffer, offset, packet, parent)
  end
end

-- Simple Mass Quote Cancel Response
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_mass_quote_cancel_response = {}

-- Size: Simple Mass Quote Cancel Response
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_mass_quote_cancel_response.size =
  miax_miaxoptions_expressinterface_mei_v2_9_c.client_message_id.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.simple_mass_quote_cancel_status.size

-- Display: Simple Mass Quote Cancel Response
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_mass_quote_cancel_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Mass Quote Cancel Response
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_mass_quote_cancel_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Message Id: BinaryU
  index, client_message_id = miax_miaxoptions_expressinterface_mei_v2_9_c.client_message_id.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.dissect(buffer, index, packet, parent)

  -- Simple Mass Quote Cancel Status: Alphanumeric
  index, simple_mass_quote_cancel_status = miax_miaxoptions_expressinterface_mei_v2_9_c.simple_mass_quote_cancel_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Mass Quote Cancel Response
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_mass_quote_cancel_response.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.simple_mass_quote_cancel_response, buffer(offset, 0))
    local index = miax_miaxoptions_expressinterface_mei_v2_9_c.simple_mass_quote_cancel_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_expressinterface_mei_v2_9_c.simple_mass_quote_cancel_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_expressinterface_mei_v2_9_c.simple_mass_quote_cancel_response.fields(buffer, offset, packet, parent)
  end
end

-- Simple Mass Quote Cancel Request
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_mass_quote_cancel_request = {}

-- Size: Simple Mass Quote Cancel Request
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_mass_quote_cancel_request.size =
  miax_miaxoptions_expressinterface_mei_v2_9_c.client_message_id.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.client_send_time.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.underlying_symbol.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_4.size

-- Display: Simple Mass Quote Cancel Request
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_mass_quote_cancel_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Mass Quote Cancel Request
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_mass_quote_cancel_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Message Id: BinaryU
  index, client_message_id = miax_miaxoptions_expressinterface_mei_v2_9_c.client_message_id.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.dissect(buffer, index, packet, parent)

  -- Client Send Time: TimeStamp
  index, client_send_time = miax_miaxoptions_expressinterface_mei_v2_9_c.client_send_time.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_miaxoptions_expressinterface_mei_v2_9_c.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Reserved 4: BinaryU
  if show.padding then
    index, reserved_4 = miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_4.size
  end

  return index
end

-- Dissect: Simple Mass Quote Cancel Request
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_mass_quote_cancel_request.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.simple_mass_quote_cancel_request, buffer(offset, 0))
    local index = miax_miaxoptions_expressinterface_mei_v2_9_c.simple_mass_quote_cancel_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_expressinterface_mei_v2_9_c.simple_mass_quote_cancel_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_expressinterface_mei_v2_9_c.simple_mass_quote_cancel_request.fields(buffer, offset, packet, parent)
  end
end

-- Complex Enhanced Quote E Quote Message
miax_miaxoptions_expressinterface_mei_v2_9_c.complex_enhanced_quote_e_quote_message = {}

-- Size: Complex Enhanced Quote E Quote Message
miax_miaxoptions_expressinterface_mei_v2_9_c.complex_enhanced_quote_e_quote_message.size =
  miax_miaxoptions_expressinterface_mei_v2_9_c.client_message_id.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.client_send_time.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.strategy_id.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.e_quote_action.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.e_quote_type.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.complex_event_id.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.target_message_id.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.net_price.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.size.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.side.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.stock_sell_short_indicator.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_15.size

-- Display: Complex Enhanced Quote E Quote Message
miax_miaxoptions_expressinterface_mei_v2_9_c.complex_enhanced_quote_e_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Enhanced Quote E Quote Message
miax_miaxoptions_expressinterface_mei_v2_9_c.complex_enhanced_quote_e_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Message Id: BinaryU
  index, client_message_id = miax_miaxoptions_expressinterface_mei_v2_9_c.client_message_id.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.dissect(buffer, index, packet, parent)

  -- Client Send Time: TimeStamp
  index, client_send_time = miax_miaxoptions_expressinterface_mei_v2_9_c.client_send_time.dissect(buffer, index, packet, parent)

  -- Strategy Id: BinaryU
  index, strategy_id = miax_miaxoptions_expressinterface_mei_v2_9_c.strategy_id.dissect(buffer, index, packet, parent)

  -- E Quote Action: Alphanumeric
  index, e_quote_action = miax_miaxoptions_expressinterface_mei_v2_9_c.e_quote_action.dissect(buffer, index, packet, parent)

  -- E Quote Type: Alphanumeric
  index, e_quote_type = miax_miaxoptions_expressinterface_mei_v2_9_c.e_quote_type.dissect(buffer, index, packet, parent)

  -- Complex Event Id: BinaryU
  index, complex_event_id = miax_miaxoptions_expressinterface_mei_v2_9_c.complex_event_id.dissect(buffer, index, packet, parent)

  -- Target Message Id: BinaryU
  index, target_message_id = miax_miaxoptions_expressinterface_mei_v2_9_c.target_message_id.dissect(buffer, index, packet, parent)

  -- Net Price: BinaryPrc4S
  index, net_price = miax_miaxoptions_expressinterface_mei_v2_9_c.net_price.dissect(buffer, index, packet, parent)

  -- Size: BinaryU
  index, size = miax_miaxoptions_expressinterface_mei_v2_9_c.size.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = miax_miaxoptions_expressinterface_mei_v2_9_c.side.dissect(buffer, index, packet, parent)

  -- Stock Sell Short Indicator: Alphanumeric
  index, stock_sell_short_indicator = miax_miaxoptions_expressinterface_mei_v2_9_c.stock_sell_short_indicator.dissect(buffer, index, packet, parent)

  -- Reserved 15: Alphanumeric
  if show.padding then
    index, reserved_15 = miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_15.dissect(buffer, index, packet, parent)
  else
    index = index + miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_15.size
  end

  return index
end

-- Dissect: Complex Enhanced Quote E Quote Message
miax_miaxoptions_expressinterface_mei_v2_9_c.complex_enhanced_quote_e_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.complex_enhanced_quote_e_quote_message, buffer(offset, 0))
    local index = miax_miaxoptions_expressinterface_mei_v2_9_c.complex_enhanced_quote_e_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_expressinterface_mei_v2_9_c.complex_enhanced_quote_e_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_expressinterface_mei_v2_9_c.complex_enhanced_quote_e_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple Enhanced Quote E Quote Message
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_enhanced_quote_e_quote_message = {}

-- Size: Simple Enhanced Quote E Quote Message
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_enhanced_quote_e_quote_message.size =
  miax_miaxoptions_expressinterface_mei_v2_9_c.client_message_id.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.client_send_time.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.product_id.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.e_quote_action.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.e_quote_type.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.event_id.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.target_message_id.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.price.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.size.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.side.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_4.size

-- Display: Simple Enhanced Quote E Quote Message
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_enhanced_quote_e_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Enhanced Quote E Quote Message
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_enhanced_quote_e_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Message Id: BinaryU
  index, client_message_id = miax_miaxoptions_expressinterface_mei_v2_9_c.client_message_id.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.dissect(buffer, index, packet, parent)

  -- Client Send Time: TimeStamp
  index, client_send_time = miax_miaxoptions_expressinterface_mei_v2_9_c.client_send_time.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_miaxoptions_expressinterface_mei_v2_9_c.product_id.dissect(buffer, index, packet, parent)

  -- E Quote Action: Alphanumeric
  index, e_quote_action = miax_miaxoptions_expressinterface_mei_v2_9_c.e_quote_action.dissect(buffer, index, packet, parent)

  -- E Quote Type: Alphanumeric
  index, e_quote_type = miax_miaxoptions_expressinterface_mei_v2_9_c.e_quote_type.dissect(buffer, index, packet, parent)

  -- Event Id: BinaryU
  index, event_id = miax_miaxoptions_expressinterface_mei_v2_9_c.event_id.dissect(buffer, index, packet, parent)

  -- Target Message Id: BinaryU
  index, target_message_id = miax_miaxoptions_expressinterface_mei_v2_9_c.target_message_id.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrc4U
  index, price = miax_miaxoptions_expressinterface_mei_v2_9_c.price.dissect(buffer, index, packet, parent)

  -- Size: BinaryU
  index, size = miax_miaxoptions_expressinterface_mei_v2_9_c.size.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = miax_miaxoptions_expressinterface_mei_v2_9_c.side.dissect(buffer, index, packet, parent)

  -- Reserved 4: BinaryU
  if show.padding then
    index, reserved_4 = miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_4.size
  end

  return index
end

-- Dissect: Simple Enhanced Quote E Quote Message
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_enhanced_quote_e_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.simple_enhanced_quote_e_quote_message, buffer(offset, 0))
    local index = miax_miaxoptions_expressinterface_mei_v2_9_c.simple_enhanced_quote_e_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_expressinterface_mei_v2_9_c.simple_enhanced_quote_e_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_expressinterface_mei_v2_9_c.simple_enhanced_quote_e_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Quote Response
miax_miaxoptions_expressinterface_mei_v2_9_c.single_side_quote_response = {}

-- Size: Single Side Quote Response
miax_miaxoptions_expressinterface_mei_v2_9_c.single_side_quote_response.size =
  miax_miaxoptions_expressinterface_mei_v2_9_c.quote_status.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.engine_sequence_number.size

-- Display: Single Side Quote Response
miax_miaxoptions_expressinterface_mei_v2_9_c.single_side_quote_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Quote Response
miax_miaxoptions_expressinterface_mei_v2_9_c.single_side_quote_response.fields = function(buffer, offset, packet, parent, single_side_quote_response_index)
  local index = offset

  -- Implicit Single Side Quote Response Index
  if single_side_quote_response_index ~= nil and show.indexes then
    local iteration = parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.single_side_quote_response_index, single_side_quote_response_index)
    iteration:set_generated()
  end

  -- Quote Status: Alphanumeric
  index, quote_status = miax_miaxoptions_expressinterface_mei_v2_9_c.quote_status.dissect(buffer, index, packet, parent)

  -- Engine Sequence Number: BinaryU
  index, engine_sequence_number = miax_miaxoptions_expressinterface_mei_v2_9_c.engine_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Quote Response
miax_miaxoptions_expressinterface_mei_v2_9_c.single_side_quote_response.dissect = function(buffer, offset, packet, parent, single_side_quote_response_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.single_side_quote_response, buffer(offset, 0))
    local index = miax_miaxoptions_expressinterface_mei_v2_9_c.single_side_quote_response.fields(buffer, offset, packet, parent, single_side_quote_response_index)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_expressinterface_mei_v2_9_c.single_side_quote_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_expressinterface_mei_v2_9_c.single_side_quote_response.fields(buffer, offset, packet, parent, single_side_quote_response_index)
  end
end

-- Simple Bulk Quote Response
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_bulk_quote_response = {}

-- Calculate size of: Simple Bulk Quote Response
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_bulk_quote_response.size = function(buffer, offset)
  local index = 0

  index = index + miax_miaxoptions_expressinterface_mei_v2_9_c.client_message_id.size

  index = index + miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.size

  index = index + miax_miaxoptions_expressinterface_mei_v2_9_c.bulk_quote_status.size

  index = index + miax_miaxoptions_expressinterface_mei_v2_9_c.quote_count.size

  index = index + miax_miaxoptions_expressinterface_mei_v2_9_c.invalid_quote_count.size

  index = index + miax_miaxoptions_expressinterface_mei_v2_9_c.quote_ack_time.size

  -- Calculate field size from count
  local single_side_quote_response_count = buffer(offset + index - 9, 1):uint()
  index = index + single_side_quote_response_count * 9

  return index
end

-- Display: Simple Bulk Quote Response
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_bulk_quote_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Bulk Quote Response
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_bulk_quote_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Message Id: BinaryU
  index, client_message_id = miax_miaxoptions_expressinterface_mei_v2_9_c.client_message_id.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.dissect(buffer, index, packet, parent)

  -- Bulk Quote Status: Alphanumeric
  index, bulk_quote_status = miax_miaxoptions_expressinterface_mei_v2_9_c.bulk_quote_status.dissect(buffer, index, packet, parent)

  -- Quote Count: BinaryU
  index, quote_count = miax_miaxoptions_expressinterface_mei_v2_9_c.quote_count.dissect(buffer, index, packet, parent)

  -- Invalid Quote Count: BinaryU
  index, invalid_quote_count = miax_miaxoptions_expressinterface_mei_v2_9_c.invalid_quote_count.dissect(buffer, index, packet, parent)

  -- Quote Ack Time: NanoTime
  index, quote_ack_time = miax_miaxoptions_expressinterface_mei_v2_9_c.quote_ack_time.dissect(buffer, index, packet, parent)

  -- Repeating: Single Side Quote Response
  for single_side_quote_response_index = 1, invalid_quote_count do
    index, single_side_quote_response = miax_miaxoptions_expressinterface_mei_v2_9_c.single_side_quote_response.dissect(buffer, index, packet, parent, single_side_quote_response_index)
  end

  return index
end

-- Dissect: Simple Bulk Quote Response
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_bulk_quote_response.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.simple_bulk_quote_response, buffer(offset, 0))
    local index = miax_miaxoptions_expressinterface_mei_v2_9_c.simple_bulk_quote_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_expressinterface_mei_v2_9_c.simple_bulk_quote_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_expressinterface_mei_v2_9_c.simple_bulk_quote_response.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Quote
miax_miaxoptions_expressinterface_mei_v2_9_c.single_side_quote = {}

-- Size: Single Side Quote
miax_miaxoptions_expressinterface_mei_v2_9_c.single_side_quote.size =
  miax_miaxoptions_expressinterface_mei_v2_9_c.product_id.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.price.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.size.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.side.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_2.size

-- Display: Single Side Quote
miax_miaxoptions_expressinterface_mei_v2_9_c.single_side_quote.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Quote
miax_miaxoptions_expressinterface_mei_v2_9_c.single_side_quote.fields = function(buffer, offset, packet, parent, single_side_quote_index)
  local index = offset

  -- Implicit Single Side Quote Index
  if single_side_quote_index ~= nil and show.indexes then
    local iteration = parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.single_side_quote_index, single_side_quote_index)
    iteration:set_generated()
  end

  -- Product Id: BinaryU
  index, product_id = miax_miaxoptions_expressinterface_mei_v2_9_c.product_id.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrc4U
  index, price = miax_miaxoptions_expressinterface_mei_v2_9_c.price.dissect(buffer, index, packet, parent)

  -- Size: BinaryU
  index, size = miax_miaxoptions_expressinterface_mei_v2_9_c.size.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = miax_miaxoptions_expressinterface_mei_v2_9_c.side.dissect(buffer, index, packet, parent)

  -- Reserved 2: BinaryU
  if show.padding then
    index, reserved_2 = miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_2.dissect(buffer, index, packet, parent)
  else
    index = index + miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_2.size
  end

  return index
end

-- Dissect: Single Side Quote
miax_miaxoptions_expressinterface_mei_v2_9_c.single_side_quote.dissect = function(buffer, offset, packet, parent, single_side_quote_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.single_side_quote, buffer(offset, 0))
    local index = miax_miaxoptions_expressinterface_mei_v2_9_c.single_side_quote.fields(buffer, offset, packet, parent, single_side_quote_index)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_expressinterface_mei_v2_9_c.single_side_quote.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_expressinterface_mei_v2_9_c.single_side_quote.fields(buffer, offset, packet, parent, single_side_quote_index)
  end
end

-- Simple Bulk Quote Message
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_bulk_quote_message = {}

-- Calculate size of: Simple Bulk Quote Message
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_bulk_quote_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_miaxoptions_expressinterface_mei_v2_9_c.client_message_id.size

  index = index + miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.size

  index = index + miax_miaxoptions_expressinterface_mei_v2_9_c.client_send_time.size

  index = index + miax_miaxoptions_expressinterface_mei_v2_9_c.quote_count.size

  index = index + miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_32.size

  -- Calculate field size from count
  local single_side_quote_count = buffer(offset + index - 33, 1):uint()
  index = index + single_side_quote_count * 15

  return index
end

-- Display: Simple Bulk Quote Message
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_bulk_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Bulk Quote Message
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_bulk_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Message Id: BinaryU
  index, client_message_id = miax_miaxoptions_expressinterface_mei_v2_9_c.client_message_id.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.dissect(buffer, index, packet, parent)

  -- Client Send Time: TimeStamp
  index, client_send_time = miax_miaxoptions_expressinterface_mei_v2_9_c.client_send_time.dissect(buffer, index, packet, parent)

  -- Quote Count: BinaryU
  index, quote_count = miax_miaxoptions_expressinterface_mei_v2_9_c.quote_count.dissect(buffer, index, packet, parent)

  -- Reserved 32: BinaryU
  if show.padding then
    index, reserved_32 = miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_32.dissect(buffer, index, packet, parent)
  else
    index = index + miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_32.size
  end

  -- Repeating: Single Side Quote
  for single_side_quote_index = 1, quote_count do
    index, single_side_quote = miax_miaxoptions_expressinterface_mei_v2_9_c.single_side_quote.dissect(buffer, index, packet, parent, single_side_quote_index)
  end

  return index
end

-- Dissect: Simple Bulk Quote Message
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_bulk_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.simple_bulk_quote_message, buffer(offset, 0))
    local index = miax_miaxoptions_expressinterface_mei_v2_9_c.simple_bulk_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_expressinterface_mei_v2_9_c.simple_bulk_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_expressinterface_mei_v2_9_c.simple_bulk_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Arm 2 Underlying Level Protection Settings Update Response
miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_underlying_level_protection_settings_update_response = {}

-- Size: Arm 2 Underlying Level Protection Settings Update Response
miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_underlying_level_protection_settings_update_response.size =
  miax_miaxoptions_expressinterface_mei_v2_9_c.client_message_id.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.underlying_symbol.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.arm_settings_update_status.size

-- Display: Arm 2 Underlying Level Protection Settings Update Response
miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_underlying_level_protection_settings_update_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Arm 2 Underlying Level Protection Settings Update Response
miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_underlying_level_protection_settings_update_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Message Id: BinaryU
  index, client_message_id = miax_miaxoptions_expressinterface_mei_v2_9_c.client_message_id.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_miaxoptions_expressinterface_mei_v2_9_c.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Arm Settings Update Status: Alphanumeric
  index, arm_settings_update_status = miax_miaxoptions_expressinterface_mei_v2_9_c.arm_settings_update_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Arm 2 Underlying Level Protection Settings Update Response
miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_underlying_level_protection_settings_update_response.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.arm_2_underlying_level_protection_settings_update_response, buffer(offset, 0))
    local index = miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_underlying_level_protection_settings_update_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_underlying_level_protection_settings_update_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_underlying_level_protection_settings_update_response.fields(buffer, offset, packet, parent)
  end
end

-- Arm 2 Underlying Level Protection Settings Update Request
miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_underlying_level_protection_settings_update_request = {}

-- Size: Arm 2 Underlying Level Protection Settings Update Request
miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_underlying_level_protection_settings_update_request.size =
  miax_miaxoptions_expressinterface_mei_v2_9_c.client_message_id.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.action.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.underlying_symbol.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.arm_threshold_count.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_counting_period.size

-- Display: Arm 2 Underlying Level Protection Settings Update Request
miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_underlying_level_protection_settings_update_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Arm 2 Underlying Level Protection Settings Update Request
miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_underlying_level_protection_settings_update_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Message Id: BinaryU
  index, client_message_id = miax_miaxoptions_expressinterface_mei_v2_9_c.client_message_id.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.dissect(buffer, index, packet, parent)

  -- Action: Alphanumeric
  index, action = miax_miaxoptions_expressinterface_mei_v2_9_c.action.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_miaxoptions_expressinterface_mei_v2_9_c.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Arm Threshold Count: Binary4U
  index, arm_threshold_count = miax_miaxoptions_expressinterface_mei_v2_9_c.arm_threshold_count.dissect(buffer, index, packet, parent)

  -- Arm 2 Counting Period: Binary4U
  index, arm_2_counting_period = miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_counting_period.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Arm 2 Underlying Level Protection Settings Update Request
miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_underlying_level_protection_settings_update_request.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.arm_2_underlying_level_protection_settings_update_request, buffer(offset, 0))
    local index = miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_underlying_level_protection_settings_update_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_underlying_level_protection_settings_update_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_underlying_level_protection_settings_update_request.fields(buffer, offset, packet, parent)
  end
end

-- Simple Arm Settings Update Response
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_arm_settings_update_response = {}

-- Size: Simple Arm Settings Update Response
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_arm_settings_update_response.size =
  miax_miaxoptions_expressinterface_mei_v2_9_c.client_message_id.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.underlying_symbol.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.arm_settings_update_status.size

-- Display: Simple Arm Settings Update Response
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_arm_settings_update_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Arm Settings Update Response
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_arm_settings_update_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Message Id: BinaryU
  index, client_message_id = miax_miaxoptions_expressinterface_mei_v2_9_c.client_message_id.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_miaxoptions_expressinterface_mei_v2_9_c.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Arm Settings Update Status: Alphanumeric
  index, arm_settings_update_status = miax_miaxoptions_expressinterface_mei_v2_9_c.arm_settings_update_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Arm Settings Update Response
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_arm_settings_update_response.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.simple_arm_settings_update_response, buffer(offset, 0))
    local index = miax_miaxoptions_expressinterface_mei_v2_9_c.simple_arm_settings_update_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_expressinterface_mei_v2_9_c.simple_arm_settings_update_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_expressinterface_mei_v2_9_c.simple_arm_settings_update_response.fields(buffer, offset, packet, parent)
  end
end

-- Simple Arm Settings Update Request
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_arm_settings_update_request = {}

-- Size: Simple Arm Settings Update Request
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_arm_settings_update_request.size =
  miax_miaxoptions_expressinterface_mei_v2_9_c.client_message_id.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.action.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.underlying_symbol.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.allowable_engagement_percentage.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.counting_period.size

-- Display: Simple Arm Settings Update Request
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_arm_settings_update_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Arm Settings Update Request
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_arm_settings_update_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Message Id: BinaryU
  index, client_message_id = miax_miaxoptions_expressinterface_mei_v2_9_c.client_message_id.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.dissect(buffer, index, packet, parent)

  -- Action: Alphanumeric
  index, action = miax_miaxoptions_expressinterface_mei_v2_9_c.action.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_miaxoptions_expressinterface_mei_v2_9_c.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Allowable Engagement Percentage: BinaryU
  index, allowable_engagement_percentage = miax_miaxoptions_expressinterface_mei_v2_9_c.allowable_engagement_percentage.dissect(buffer, index, packet, parent)

  -- Counting Period: BinaryU
  index, counting_period = miax_miaxoptions_expressinterface_mei_v2_9_c.counting_period.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Arm Settings Update Request
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_arm_settings_update_request.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.simple_arm_settings_update_request, buffer(offset, 0))
    local index = miax_miaxoptions_expressinterface_mei_v2_9_c.simple_arm_settings_update_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_expressinterface_mei_v2_9_c.simple_arm_settings_update_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_expressinterface_mei_v2_9_c.simple_arm_settings_update_request.fields(buffer, offset, packet, parent)
  end
end

-- Unsequenced Message
miax_miaxoptions_expressinterface_mei_v2_9_c.unsequenced_message = {}

-- Dispatch: Unsequenced Message
miax_miaxoptions_expressinterface_mei_v2_9_c.unsequenced_message.dispatch = {
  ["AS"] = miax_miaxoptions_expressinterface_mei_v2_9_c.simple_arm_settings_update_request.dissect,
  ["AA"] = miax_miaxoptions_expressinterface_mei_v2_9_c.simple_arm_settings_update_response.dissect,
  ["2S"] = miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_underlying_level_protection_settings_update_request.dissect,
  ["2R"] = miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_underlying_level_protection_settings_update_response.dissect,
  ["qq"] = miax_miaxoptions_expressinterface_mei_v2_9_c.simple_bulk_quote_message.dissect,
  ["QR"] = miax_miaxoptions_expressinterface_mei_v2_9_c.simple_bulk_quote_response.dissect,
  ["eq"] = miax_miaxoptions_expressinterface_mei_v2_9_c.simple_enhanced_quote_e_quote_message.dissect,
  ["ce"] = miax_miaxoptions_expressinterface_mei_v2_9_c.complex_enhanced_quote_e_quote_message.dissect,
  ["xq"] = miax_miaxoptions_expressinterface_mei_v2_9_c.simple_mass_quote_cancel_request.dissect,
  ["XR"] = miax_miaxoptions_expressinterface_mei_v2_9_c.simple_mass_quote_cancel_response.dissect,
  ["xk"] = miax_miaxoptions_expressinterface_mei_v2_9_c.mass_liquidity_cancel_request_simple_and_complex.dissect,
  ["XP"] = miax_miaxoptions_expressinterface_mei_v2_9_c.mass_liquidity_cancel_response.dissect,
  ["PX"] = miax_miaxoptions_expressinterface_mei_v2_9_c.simple_quote_protection_reset_request.dissect,
  ["PR"] = miax_miaxoptions_expressinterface_mei_v2_9_c.simple_quote_protection_reset_response.dissect,
  ["PC"] = miax_miaxoptions_expressinterface_mei_v2_9_c.liquidity_protection_reset_request.dissect,
  ["PK"] = miax_miaxoptions_expressinterface_mei_v2_9_c.liquidity_protection_reset_response.dissect,
  ["SS"] = miax_miaxoptions_expressinterface_mei_v2_9_c.single_side_liquidity_protection_reset_request.dissect,
  ["SR"] = miax_miaxoptions_expressinterface_mei_v2_9_c.single_side_liquidity_protection_reset_response.dissect,
  ["QP"] = miax_miaxoptions_expressinterface_mei_v2_9_c.simple_quote_protection_trigger_notification.dissect,
  ["QC"] = miax_miaxoptions_expressinterface_mei_v2_9_c.complex_liquidity_protection_trigger_notification.dissect,
  ["XN"] = miax_miaxoptions_expressinterface_mei_v2_9_c.cancel_notification.dissect,
}

-- Dissect: Unsequenced Message
miax_miaxoptions_expressinterface_mei_v2_9_c.unsequenced_message.dissect = function(buffer, offset, packet, parent, unsequenced_message_type)
  local dissect = miax_miaxoptions_expressinterface_mei_v2_9_c.unsequenced_message.dispatch[unsequenced_message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Unsequenced Data Packet
miax_miaxoptions_expressinterface_mei_v2_9_c.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
miax_miaxoptions_expressinterface_mei_v2_9_c.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  return sesm_packet_length - 1
end

-- Display: Unsequenced Data Packet
miax_miaxoptions_expressinterface_mei_v2_9_c.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
miax_miaxoptions_expressinterface_mei_v2_9_c.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 2 Byte Ascii String Enum with 21 values
  index, unsequenced_message_type = miax_miaxoptions_expressinterface_mei_v2_9_c.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Unsequenced Message: Runtime Type with 21 branches
  index = miax_miaxoptions_expressinterface_mei_v2_9_c.unsequenced_message.dissect(buffer, index, packet, parent, unsequenced_message_type)

  return index
end

-- Dissect: Unsequenced Data Packet
miax_miaxoptions_expressinterface_mei_v2_9_c.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = miax_miaxoptions_expressinterface_mei_v2_9_c.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = miax_miaxoptions_expressinterface_mei_v2_9_c.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = miax_miaxoptions_expressinterface_mei_v2_9_c.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_miaxoptions_expressinterface_mei_v2_9_c.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Stock Leg Execution Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.stock_leg_execution_notification = {}

-- Size: Stock Leg Execution Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.stock_leg_execution_notification.size =
  miax_miaxoptions_expressinterface_mei_v2_9_c.notification_time.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.underlying_symbol.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.liquidity_type.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.client_message_id.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.event_id.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.trade_id.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.execution_id.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.trade_status.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.last_price.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.side.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.stock_sell_short_indicator.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.last_size.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_16.size

-- Display: Stock Leg Execution Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.stock_leg_execution_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Leg Execution Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.stock_leg_execution_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: NanoTime
  index, notification_time = miax_miaxoptions_expressinterface_mei_v2_9_c.notification_time.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_miaxoptions_expressinterface_mei_v2_9_c.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Liquidity Type: Alphanumeric
  index, liquidity_type = miax_miaxoptions_expressinterface_mei_v2_9_c.liquidity_type.dissect(buffer, index, packet, parent)

  -- Client Message Id: BinaryU
  index, client_message_id = miax_miaxoptions_expressinterface_mei_v2_9_c.client_message_id.dissect(buffer, index, packet, parent)

  -- Event Id: BinaryU
  index, event_id = miax_miaxoptions_expressinterface_mei_v2_9_c.event_id.dissect(buffer, index, packet, parent)

  -- Trade Id: BinaryU
  index, trade_id = miax_miaxoptions_expressinterface_mei_v2_9_c.trade_id.dissect(buffer, index, packet, parent)

  -- Execution Id: BinaryU
  index, execution_id = miax_miaxoptions_expressinterface_mei_v2_9_c.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Status: Alphanumeric
  index, trade_status = miax_miaxoptions_expressinterface_mei_v2_9_c.trade_status.dissect(buffer, index, packet, parent)

  -- Last Price: BinaryPrc4U
  index, last_price = miax_miaxoptions_expressinterface_mei_v2_9_c.last_price.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = miax_miaxoptions_expressinterface_mei_v2_9_c.side.dissect(buffer, index, packet, parent)

  -- Stock Sell Short Indicator: Alphanumeric
  index, stock_sell_short_indicator = miax_miaxoptions_expressinterface_mei_v2_9_c.stock_sell_short_indicator.dissect(buffer, index, packet, parent)

  -- Last Size: BinaryU
  index, last_size = miax_miaxoptions_expressinterface_mei_v2_9_c.last_size.dissect(buffer, index, packet, parent)

  -- Reserved 16: Alphanumeric
  if show.padding then
    index, reserved_16 = miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_16.dissect(buffer, index, packet, parent)
  else
    index = index + miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_16.size
  end

  return index
end

-- Dissect: Stock Leg Execution Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.stock_leg_execution_notification.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.stock_leg_execution_notification, buffer(offset, 0))
    local index = miax_miaxoptions_expressinterface_mei_v2_9_c.stock_leg_execution_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_expressinterface_mei_v2_9_c.stock_leg_execution_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_expressinterface_mei_v2_9_c.stock_leg_execution_notification.fields(buffer, offset, packet, parent)
  end
end

-- Option Execution Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.option_execution_notification = {}

-- Size: Option Execution Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.option_execution_notification.size =
  miax_miaxoptions_expressinterface_mei_v2_9_c.notification_time.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.product_id.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.liquidity_type.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.client_message_id.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.bulk_quote_index.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.event_id.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.trade_id.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.execution_id.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_1.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.trade_status.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.last_price.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.side.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.last_size.size

-- Display: Option Execution Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.option_execution_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Execution Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.option_execution_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: NanoTime
  index, notification_time = miax_miaxoptions_expressinterface_mei_v2_9_c.notification_time.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_miaxoptions_expressinterface_mei_v2_9_c.product_id.dissect(buffer, index, packet, parent)

  -- Liquidity Type: Alphanumeric
  index, liquidity_type = miax_miaxoptions_expressinterface_mei_v2_9_c.liquidity_type.dissect(buffer, index, packet, parent)

  -- Client Message Id: BinaryU
  index, client_message_id = miax_miaxoptions_expressinterface_mei_v2_9_c.client_message_id.dissect(buffer, index, packet, parent)

  -- Bulk Quote Index: BinaryU
  index, bulk_quote_index = miax_miaxoptions_expressinterface_mei_v2_9_c.bulk_quote_index.dissect(buffer, index, packet, parent)

  -- Event Id: BinaryU
  index, event_id = miax_miaxoptions_expressinterface_mei_v2_9_c.event_id.dissect(buffer, index, packet, parent)

  -- Trade Id: BinaryU
  index, trade_id = miax_miaxoptions_expressinterface_mei_v2_9_c.trade_id.dissect(buffer, index, packet, parent)

  -- Execution Id: BinaryU
  index, execution_id = miax_miaxoptions_expressinterface_mei_v2_9_c.execution_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: BinaryU
  if show.padding then
    index, reserved_1 = miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_1.size
  end

  -- Trade Status: Alphanumeric
  index, trade_status = miax_miaxoptions_expressinterface_mei_v2_9_c.trade_status.dissect(buffer, index, packet, parent)

  -- Last Price: BinaryPrc4U
  index, last_price = miax_miaxoptions_expressinterface_mei_v2_9_c.last_price.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = miax_miaxoptions_expressinterface_mei_v2_9_c.side.dissect(buffer, index, packet, parent)

  -- Last Size: BinaryU
  index, last_size = miax_miaxoptions_expressinterface_mei_v2_9_c.last_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Execution Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.option_execution_notification.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.option_execution_notification, buffer(offset, 0))
    local index = miax_miaxoptions_expressinterface_mei_v2_9_c.option_execution_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_expressinterface_mei_v2_9_c.option_execution_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_expressinterface_mei_v2_9_c.option_execution_notification.fields(buffer, offset, packet, parent)
  end
end

-- Leg
miax_miaxoptions_expressinterface_mei_v2_9_c.leg = {}

-- Size: Leg
miax_miaxoptions_expressinterface_mei_v2_9_c.leg.size =
  miax_miaxoptions_expressinterface_mei_v2_9_c.product_id.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.leg_ratio_qty.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.leg_side.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_8.size

-- Display: Leg
miax_miaxoptions_expressinterface_mei_v2_9_c.leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Leg
miax_miaxoptions_expressinterface_mei_v2_9_c.leg.fields = function(buffer, offset, packet, parent, leg_index)
  local index = offset

  -- Implicit Leg Index
  if leg_index ~= nil and show.indexes then
    local iteration = parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.leg_index, leg_index)
    iteration:set_generated()
  end

  -- Product Id: BinaryU
  index, product_id = miax_miaxoptions_expressinterface_mei_v2_9_c.product_id.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty: BinaryU
  index, leg_ratio_qty = miax_miaxoptions_expressinterface_mei_v2_9_c.leg_ratio_qty.dissect(buffer, index, packet, parent)

  -- Leg Side: Alphanumeric
  index, leg_side = miax_miaxoptions_expressinterface_mei_v2_9_c.leg_side.dissect(buffer, index, packet, parent)

  -- Reserved 8: BinaryU
  if show.padding then
    index, reserved_8 = miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_8.dissect(buffer, index, packet, parent)
  else
    index = index + miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_8.size
  end

  return index
end

-- Dissect: Leg
miax_miaxoptions_expressinterface_mei_v2_9_c.leg.dissect = function(buffer, offset, packet, parent, leg_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.leg, buffer(offset, 0))
    local index = miax_miaxoptions_expressinterface_mei_v2_9_c.leg.fields(buffer, offset, packet, parent, leg_index)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_expressinterface_mei_v2_9_c.leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_expressinterface_mei_v2_9_c.leg.fields(buffer, offset, packet, parent, leg_index)
  end
end

-- Complex Strategy Definition Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.complex_strategy_definition_notification = {}

-- Calculate size of: Complex Strategy Definition Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.complex_strategy_definition_notification.size = function(buffer, offset)
  local index = 0

  index = index + miax_miaxoptions_expressinterface_mei_v2_9_c.notification_time.size

  index = index + miax_miaxoptions_expressinterface_mei_v2_9_c.strategy_id.size

  index = index + miax_miaxoptions_expressinterface_mei_v2_9_c.underlying_symbol.size

  index = index + miax_miaxoptions_expressinterface_mei_v2_9_c.active_on_miax.size

  index = index + miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_1.size

  index = index + miax_miaxoptions_expressinterface_mei_v2_9_c.update_reason.size

  index = index + miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_10.size

  index = index + miax_miaxoptions_expressinterface_mei_v2_9_c.number_of_legs.size

  -- Calculate field size from count
  local leg_count = buffer(offset + index - 1, 1):uint()
  index = index + leg_count * 15

  return index
end

-- Display: Complex Strategy Definition Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.complex_strategy_definition_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Strategy Definition Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.complex_strategy_definition_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: NanoTime
  index, notification_time = miax_miaxoptions_expressinterface_mei_v2_9_c.notification_time.dissect(buffer, index, packet, parent)

  -- Strategy Id: BinaryU
  index, strategy_id = miax_miaxoptions_expressinterface_mei_v2_9_c.strategy_id.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_miaxoptions_expressinterface_mei_v2_9_c.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Active On Miax: Alphanumeric
  index, active_on_miax = miax_miaxoptions_expressinterface_mei_v2_9_c.active_on_miax.dissect(buffer, index, packet, parent)

  -- Reserved 1: BinaryU
  if show.padding then
    index, reserved_1 = miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_1.size
  end

  -- Update Reason: Alphanumeric
  index, update_reason = miax_miaxoptions_expressinterface_mei_v2_9_c.update_reason.dissect(buffer, index, packet, parent)

  -- Reserved 10: BinaryU
  if show.padding then
    index, reserved_10 = miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_10.dissect(buffer, index, packet, parent)
  else
    index = index + miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_10.size
  end

  -- Number Of Legs: BinaryU
  index, number_of_legs = miax_miaxoptions_expressinterface_mei_v2_9_c.number_of_legs.dissect(buffer, index, packet, parent)

  -- Repeating: Leg
  for leg_index = 1, number_of_legs do
    index, leg = miax_miaxoptions_expressinterface_mei_v2_9_c.leg.dissect(buffer, index, packet, parent, leg_index)
  end

  return index
end

-- Dissect: Complex Strategy Definition Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.complex_strategy_definition_notification.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.complex_strategy_definition_notification, buffer(offset, 0))
    local index = miax_miaxoptions_expressinterface_mei_v2_9_c.complex_strategy_definition_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_expressinterface_mei_v2_9_c.complex_strategy_definition_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_expressinterface_mei_v2_9_c.complex_strategy_definition_notification.fields(buffer, offset, packet, parent)
  end
end

-- Arm 2 Firm Level Protection Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_firm_level_protection_notification = {}

-- Size: Arm 2 Firm Level Protection Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_firm_level_protection_notification.size =
  miax_miaxoptions_expressinterface_mei_v2_9_c.notification_time.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.arm_threshold_count.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_counting_period.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.notification_type.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_16.size

-- Display: Arm 2 Firm Level Protection Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_firm_level_protection_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Arm 2 Firm Level Protection Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_firm_level_protection_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: NanoTime
  index, notification_time = miax_miaxoptions_expressinterface_mei_v2_9_c.notification_time.dissect(buffer, index, packet, parent)

  -- Arm Threshold Count: Binary4U
  index, arm_threshold_count = miax_miaxoptions_expressinterface_mei_v2_9_c.arm_threshold_count.dissect(buffer, index, packet, parent)

  -- Arm 2 Counting Period: Binary4U
  index, arm_2_counting_period = miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_counting_period.dissect(buffer, index, packet, parent)

  -- Notification Type: Alphanumeric
  index, notification_type = miax_miaxoptions_expressinterface_mei_v2_9_c.notification_type.dissect(buffer, index, packet, parent)

  -- Reserved 16: Alphanumeric
  if show.padding then
    index, reserved_16 = miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_16.dissect(buffer, index, packet, parent)
  else
    index = index + miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_16.size
  end

  return index
end

-- Dissect: Arm 2 Firm Level Protection Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_firm_level_protection_notification.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.arm_2_firm_level_protection_notification, buffer(offset, 0))
    local index = miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_firm_level_protection_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_firm_level_protection_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_firm_level_protection_notification.fields(buffer, offset, packet, parent)
  end
end

-- Arm 2 Underlying Level Protection Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_underlying_level_protection_notification = {}

-- Size: Arm 2 Underlying Level Protection Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_underlying_level_protection_notification.size =
  miax_miaxoptions_expressinterface_mei_v2_9_c.notification_time.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.underlying_symbol.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.notification_type.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.arm_threshold_count.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_counting_period.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_16.size

-- Display: Arm 2 Underlying Level Protection Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_underlying_level_protection_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Arm 2 Underlying Level Protection Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_underlying_level_protection_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: NanoTime
  index, notification_time = miax_miaxoptions_expressinterface_mei_v2_9_c.notification_time.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_miaxoptions_expressinterface_mei_v2_9_c.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Notification Type: Alphanumeric
  index, notification_type = miax_miaxoptions_expressinterface_mei_v2_9_c.notification_type.dissect(buffer, index, packet, parent)

  -- Arm Threshold Count: Binary4U
  index, arm_threshold_count = miax_miaxoptions_expressinterface_mei_v2_9_c.arm_threshold_count.dissect(buffer, index, packet, parent)

  -- Arm 2 Counting Period: Binary4U
  index, arm_2_counting_period = miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_counting_period.dissect(buffer, index, packet, parent)

  -- Reserved 16: Alphanumeric
  if show.padding then
    index, reserved_16 = miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_16.dissect(buffer, index, packet, parent)
  else
    index = index + miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_16.size
  end

  return index
end

-- Dissect: Arm 2 Underlying Level Protection Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_underlying_level_protection_notification.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.arm_2_underlying_level_protection_notification, buffer(offset, 0))
    local index = miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_underlying_level_protection_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_underlying_level_protection_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_underlying_level_protection_notification.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Liquidity Protection Trigger Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.single_side_liquidity_protection_trigger_notification = {}

-- Size: Single Side Liquidity Protection Trigger Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.single_side_liquidity_protection_trigger_notification.size =
  miax_miaxoptions_expressinterface_mei_v2_9_c.notification_time.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.security_id_scope.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.security_id.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.side.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.triggering_client_message_id.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.triggering_bulk_quote_index.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_4.size

-- Display: Single Side Liquidity Protection Trigger Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.single_side_liquidity_protection_trigger_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Liquidity Protection Trigger Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.single_side_liquidity_protection_trigger_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: NanoTime
  index, notification_time = miax_miaxoptions_expressinterface_mei_v2_9_c.notification_time.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.dissect(buffer, index, packet, parent)

  -- Security Id Scope: Alphanumeric
  index, security_id_scope = miax_miaxoptions_expressinterface_mei_v2_9_c.security_id_scope.dissect(buffer, index, packet, parent)

  -- Security Id: BinaryU
  index, security_id = miax_miaxoptions_expressinterface_mei_v2_9_c.security_id.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = miax_miaxoptions_expressinterface_mei_v2_9_c.side.dissect(buffer, index, packet, parent)

  -- Triggering Client Message Id: BinaryU
  index, triggering_client_message_id = miax_miaxoptions_expressinterface_mei_v2_9_c.triggering_client_message_id.dissect(buffer, index, packet, parent)

  -- Triggering Bulk Quote Index: BinaryU
  index, triggering_bulk_quote_index = miax_miaxoptions_expressinterface_mei_v2_9_c.triggering_bulk_quote_index.dissect(buffer, index, packet, parent)

  -- Reserved 4: BinaryU
  if show.padding then
    index, reserved_4 = miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_4.size
  end

  return index
end

-- Dissect: Single Side Liquidity Protection Trigger Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.single_side_liquidity_protection_trigger_notification.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.single_side_liquidity_protection_trigger_notification, buffer(offset, 0))
    local index = miax_miaxoptions_expressinterface_mei_v2_9_c.single_side_liquidity_protection_trigger_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_expressinterface_mei_v2_9_c.single_side_liquidity_protection_trigger_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_expressinterface_mei_v2_9_c.single_side_liquidity_protection_trigger_notification.fields(buffer, offset, packet, parent)
  end
end

-- Arm 2 Underlying Level Protection Settings Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_underlying_level_protection_settings_notification = {}

-- Size: Arm 2 Underlying Level Protection Settings Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_underlying_level_protection_settings_notification.size =
  miax_miaxoptions_expressinterface_mei_v2_9_c.notification_time.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.action.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.underlying_symbol.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.arm_threshold_count.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_counting_period.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_16.size

-- Display: Arm 2 Underlying Level Protection Settings Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_underlying_level_protection_settings_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Arm 2 Underlying Level Protection Settings Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_underlying_level_protection_settings_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: NanoTime
  index, notification_time = miax_miaxoptions_expressinterface_mei_v2_9_c.notification_time.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.dissect(buffer, index, packet, parent)

  -- Action: Alphanumeric
  index, action = miax_miaxoptions_expressinterface_mei_v2_9_c.action.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_miaxoptions_expressinterface_mei_v2_9_c.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Arm Threshold Count: Binary4U
  index, arm_threshold_count = miax_miaxoptions_expressinterface_mei_v2_9_c.arm_threshold_count.dissect(buffer, index, packet, parent)

  -- Arm 2 Counting Period: Binary4U
  index, arm_2_counting_period = miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_counting_period.dissect(buffer, index, packet, parent)

  -- Reserved 16: Alphanumeric
  if show.padding then
    index, reserved_16 = miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_16.dissect(buffer, index, packet, parent)
  else
    index = index + miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_16.size
  end

  return index
end

-- Dissect: Arm 2 Underlying Level Protection Settings Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_underlying_level_protection_settings_notification.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.arm_2_underlying_level_protection_settings_notification, buffer(offset, 0))
    local index = miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_underlying_level_protection_settings_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_underlying_level_protection_settings_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_underlying_level_protection_settings_notification.fields(buffer, offset, packet, parent)
  end
end

-- Simple Arm Protection Settings Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_arm_protection_settings_notification = {}

-- Size: Simple Arm Protection Settings Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_arm_protection_settings_notification.size =
  miax_miaxoptions_expressinterface_mei_v2_9_c.notification_time.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.underlying_symbol.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.allowable_engagement_percentage.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.counting_period.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.action.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.source.size

-- Display: Simple Arm Protection Settings Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_arm_protection_settings_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Arm Protection Settings Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_arm_protection_settings_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: NanoTime
  index, notification_time = miax_miaxoptions_expressinterface_mei_v2_9_c.notification_time.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_miaxoptions_expressinterface_mei_v2_9_c.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Allowable Engagement Percentage: BinaryU
  index, allowable_engagement_percentage = miax_miaxoptions_expressinterface_mei_v2_9_c.allowable_engagement_percentage.dissect(buffer, index, packet, parent)

  -- Counting Period: BinaryU
  index, counting_period = miax_miaxoptions_expressinterface_mei_v2_9_c.counting_period.dissect(buffer, index, packet, parent)

  -- Action: Alphanumeric
  index, action = miax_miaxoptions_expressinterface_mei_v2_9_c.action.dissect(buffer, index, packet, parent)

  -- Source: Alphanumeric
  index, source = miax_miaxoptions_expressinterface_mei_v2_9_c.source.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Arm Protection Settings Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_arm_protection_settings_notification.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.simple_arm_protection_settings_notification, buffer(offset, 0))
    local index = miax_miaxoptions_expressinterface_mei_v2_9_c.simple_arm_protection_settings_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_expressinterface_mei_v2_9_c.simple_arm_protection_settings_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_expressinterface_mei_v2_9_c.simple_arm_protection_settings_notification.fields(buffer, offset, packet, parent)
  end
end

-- Quote Width Relief Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.quote_width_relief_notification = {}

-- Size: Quote Width Relief Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.quote_width_relief_notification.size =
  miax_miaxoptions_expressinterface_mei_v2_9_c.notification_time.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.underlying_symbol.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.relief_multiplier.size

-- Display: Quote Width Relief Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.quote_width_relief_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Width Relief Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.quote_width_relief_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: NanoTime
  index, notification_time = miax_miaxoptions_expressinterface_mei_v2_9_c.notification_time.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_miaxoptions_expressinterface_mei_v2_9_c.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Relief Multiplier: BinaryPrc4U
  index, relief_multiplier = miax_miaxoptions_expressinterface_mei_v2_9_c.relief_multiplier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Width Relief Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.quote_width_relief_notification.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.quote_width_relief_notification, buffer(offset, 0))
    local index = miax_miaxoptions_expressinterface_mei_v2_9_c.quote_width_relief_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_expressinterface_mei_v2_9_c.quote_width_relief_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_expressinterface_mei_v2_9_c.quote_width_relief_notification.fields(buffer, offset, packet, parent)
  end
end

-- Underlying Trading Status Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.underlying_trading_status_notification = {}

-- Size: Underlying Trading Status Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.underlying_trading_status_notification.size =
  miax_miaxoptions_expressinterface_mei_v2_9_c.notification_time.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.underlying_symbol.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.trading_status.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.event_reason.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.expected_event_time.size

-- Display: Underlying Trading Status Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.underlying_trading_status_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Underlying Trading Status Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.underlying_trading_status_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: NanoTime
  index, notification_time = miax_miaxoptions_expressinterface_mei_v2_9_c.notification_time.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_miaxoptions_expressinterface_mei_v2_9_c.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Trading Status: Alphanumeric
  index, trading_status = miax_miaxoptions_expressinterface_mei_v2_9_c.trading_status.dissect(buffer, index, packet, parent)

  -- Event Reason: Alphanumeric
  index, event_reason = miax_miaxoptions_expressinterface_mei_v2_9_c.event_reason.dissect(buffer, index, packet, parent)

  -- Expected Event Time: NanoTime
  index, expected_event_time = miax_miaxoptions_expressinterface_mei_v2_9_c.expected_event_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlying Trading Status Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.underlying_trading_status_notification.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.underlying_trading_status_notification, buffer(offset, 0))
    local index = miax_miaxoptions_expressinterface_mei_v2_9_c.underlying_trading_status_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_expressinterface_mei_v2_9_c.underlying_trading_status_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_expressinterface_mei_v2_9_c.underlying_trading_status_notification.fields(buffer, offset, packet, parent)
  end
end

-- Product Trading Status Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.product_trading_status_notification = {}

-- Size: Product Trading Status Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.product_trading_status_notification.size =
  miax_miaxoptions_expressinterface_mei_v2_9_c.notification_time.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.product_id.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.trading_status.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.expected_event_time.size

-- Display: Product Trading Status Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.product_trading_status_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Product Trading Status Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.product_trading_status_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: NanoTime
  index, notification_time = miax_miaxoptions_expressinterface_mei_v2_9_c.notification_time.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_miaxoptions_expressinterface_mei_v2_9_c.product_id.dissect(buffer, index, packet, parent)

  -- Trading Status: Alphanumeric
  index, trading_status = miax_miaxoptions_expressinterface_mei_v2_9_c.trading_status.dissect(buffer, index, packet, parent)

  -- Expected Event Time: NanoTime
  index, expected_event_time = miax_miaxoptions_expressinterface_mei_v2_9_c.expected_event_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Product Trading Status Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.product_trading_status_notification.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.product_trading_status_notification, buffer(offset, 0))
    local index = miax_miaxoptions_expressinterface_mei_v2_9_c.product_trading_status_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_expressinterface_mei_v2_9_c.product_trading_status_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_expressinterface_mei_v2_9_c.product_trading_status_notification.fields(buffer, offset, packet, parent)
  end
end

-- System State Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.system_state_notification = {}

-- Size: System State Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.system_state_notification.size =
  miax_miaxoptions_expressinterface_mei_v2_9_c.notification_time.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.mei_version.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.session_id.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.system_status.size

-- Display: System State Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.system_state_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System State Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.system_state_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: NanoTime
  index, notification_time = miax_miaxoptions_expressinterface_mei_v2_9_c.notification_time.dissect(buffer, index, packet, parent)

  -- Mei Version: Alphanumeric
  index, mei_version = miax_miaxoptions_expressinterface_mei_v2_9_c.mei_version.dissect(buffer, index, packet, parent)

  -- Session Id: BinaryU
  index, session_id = miax_miaxoptions_expressinterface_mei_v2_9_c.session_id.dissect(buffer, index, packet, parent)

  -- System Status: Alphanumeric
  index, system_status = miax_miaxoptions_expressinterface_mei_v2_9_c.system_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System State Notification
miax_miaxoptions_expressinterface_mei_v2_9_c.system_state_notification.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.system_state_notification, buffer(offset, 0))
    local index = miax_miaxoptions_expressinterface_mei_v2_9_c.system_state_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_expressinterface_mei_v2_9_c.system_state_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_expressinterface_mei_v2_9_c.system_state_notification.fields(buffer, offset, packet, parent)
  end
end

-- Complex Enhanced Quote E Quote Response
miax_miaxoptions_expressinterface_mei_v2_9_c.complex_enhanced_quote_e_quote_response = {}

-- Size: Complex Enhanced Quote E Quote Response
miax_miaxoptions_expressinterface_mei_v2_9_c.complex_enhanced_quote_e_quote_response.size =
  miax_miaxoptions_expressinterface_mei_v2_9_c.client_message_id.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.e_quote_id.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.e_quote_request_status.size

-- Display: Complex Enhanced Quote E Quote Response
miax_miaxoptions_expressinterface_mei_v2_9_c.complex_enhanced_quote_e_quote_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Enhanced Quote E Quote Response
miax_miaxoptions_expressinterface_mei_v2_9_c.complex_enhanced_quote_e_quote_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Message Id: BinaryU
  index, client_message_id = miax_miaxoptions_expressinterface_mei_v2_9_c.client_message_id.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.dissect(buffer, index, packet, parent)

  -- E Quote Id: BinaryU
  index, e_quote_id = miax_miaxoptions_expressinterface_mei_v2_9_c.e_quote_id.dissect(buffer, index, packet, parent)

  -- E Quote Request Status: Alphanumeric
  index, e_quote_request_status = miax_miaxoptions_expressinterface_mei_v2_9_c.e_quote_request_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Enhanced Quote E Quote Response
miax_miaxoptions_expressinterface_mei_v2_9_c.complex_enhanced_quote_e_quote_response.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.complex_enhanced_quote_e_quote_response, buffer(offset, 0))
    local index = miax_miaxoptions_expressinterface_mei_v2_9_c.complex_enhanced_quote_e_quote_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_expressinterface_mei_v2_9_c.complex_enhanced_quote_e_quote_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_expressinterface_mei_v2_9_c.complex_enhanced_quote_e_quote_response.fields(buffer, offset, packet, parent)
  end
end

-- Simple Enhanced Quote E Quote Response
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_enhanced_quote_e_quote_response = {}

-- Size: Simple Enhanced Quote E Quote Response
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_enhanced_quote_e_quote_response.size =
  miax_miaxoptions_expressinterface_mei_v2_9_c.client_message_id.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.e_quote_id.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.e_quote_request_status.size

-- Display: Simple Enhanced Quote E Quote Response
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_enhanced_quote_e_quote_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Enhanced Quote E Quote Response
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_enhanced_quote_e_quote_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Message Id: BinaryU
  index, client_message_id = miax_miaxoptions_expressinterface_mei_v2_9_c.client_message_id.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_miaxoptions_expressinterface_mei_v2_9_c.mpid.dissect(buffer, index, packet, parent)

  -- E Quote Id: BinaryU
  index, e_quote_id = miax_miaxoptions_expressinterface_mei_v2_9_c.e_quote_id.dissect(buffer, index, packet, parent)

  -- E Quote Request Status: Alphanumeric
  index, e_quote_request_status = miax_miaxoptions_expressinterface_mei_v2_9_c.e_quote_request_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Enhanced Quote E Quote Response
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_enhanced_quote_e_quote_response.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.simple_enhanced_quote_e_quote_response, buffer(offset, 0))
    local index = miax_miaxoptions_expressinterface_mei_v2_9_c.simple_enhanced_quote_e_quote_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_expressinterface_mei_v2_9_c.simple_enhanced_quote_e_quote_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_expressinterface_mei_v2_9_c.simple_enhanced_quote_e_quote_response.fields(buffer, offset, packet, parent)
  end
end

-- Valid Quote Width For Opening
miax_miaxoptions_expressinterface_mei_v2_9_c.valid_quote_width_for_opening = {}

-- Size: Valid Quote Width For Opening
miax_miaxoptions_expressinterface_mei_v2_9_c.valid_quote_width_for_opening.size =
  miax_miaxoptions_expressinterface_mei_v2_9_c.notification_time.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.mpv_class.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.low_end_of_applicable_range.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.maximum_quote_width.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.long_term_option_multiplier.size

-- Display: Valid Quote Width For Opening
miax_miaxoptions_expressinterface_mei_v2_9_c.valid_quote_width_for_opening.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Valid Quote Width For Opening
miax_miaxoptions_expressinterface_mei_v2_9_c.valid_quote_width_for_opening.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: NanoTime
  index, notification_time = miax_miaxoptions_expressinterface_mei_v2_9_c.notification_time.dissect(buffer, index, packet, parent)

  -- Mpv Class: Alphanumeric
  index, mpv_class = miax_miaxoptions_expressinterface_mei_v2_9_c.mpv_class.dissect(buffer, index, packet, parent)

  -- Low End Of Applicable Range: BinaryPrc4U
  index, low_end_of_applicable_range = miax_miaxoptions_expressinterface_mei_v2_9_c.low_end_of_applicable_range.dissect(buffer, index, packet, parent)

  -- Maximum Quote Width: BinaryPrc4U
  index, maximum_quote_width = miax_miaxoptions_expressinterface_mei_v2_9_c.maximum_quote_width.dissect(buffer, index, packet, parent)

  -- Long Term Option Multiplier: BinaryPrc4U
  index, long_term_option_multiplier = miax_miaxoptions_expressinterface_mei_v2_9_c.long_term_option_multiplier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Valid Quote Width For Opening
miax_miaxoptions_expressinterface_mei_v2_9_c.valid_quote_width_for_opening.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.valid_quote_width_for_opening, buffer(offset, 0))
    local index = miax_miaxoptions_expressinterface_mei_v2_9_c.valid_quote_width_for_opening.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_expressinterface_mei_v2_9_c.valid_quote_width_for_opening.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_expressinterface_mei_v2_9_c.valid_quote_width_for_opening.fields(buffer, offset, packet, parent)
  end
end

-- Simple Series Update
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_series_update = {}

-- Size: Simple Series Update
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_series_update.size =
  miax_miaxoptions_expressinterface_mei_v2_9_c.product_add_update_time.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.product_id.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.underlying_symbol.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.security_symbol.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.expiration_date.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.strike_price.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.call_or_put.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.opening_time.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.closing_time.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.restricted_option.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.long_term_option.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.active_on_miax.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.miax_bbo_posting_increment_indicator.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.quote_acceptance_increment_indicator.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.opening_underlying_market_code.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.priority_quote_width.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_8.size

-- Display: Simple Series Update
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_series_update.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Series Update
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_series_update.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Product Add Update Time: NanoTime
  index, product_add_update_time = miax_miaxoptions_expressinterface_mei_v2_9_c.product_add_update_time.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_miaxoptions_expressinterface_mei_v2_9_c.product_id.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_miaxoptions_expressinterface_mei_v2_9_c.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = miax_miaxoptions_expressinterface_mei_v2_9_c.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration Date: Alphanumeric
  index, expiration_date = miax_miaxoptions_expressinterface_mei_v2_9_c.expiration_date.dissect(buffer, index, packet, parent)

  -- Strike Price: BinaryPrc4U
  index, strike_price = miax_miaxoptions_expressinterface_mei_v2_9_c.strike_price.dissect(buffer, index, packet, parent)

  -- Call Or Put: Alphanumeric
  index, call_or_put = miax_miaxoptions_expressinterface_mei_v2_9_c.call_or_put.dissect(buffer, index, packet, parent)

  -- Opening Time: Alphanumeric
  index, opening_time = miax_miaxoptions_expressinterface_mei_v2_9_c.opening_time.dissect(buffer, index, packet, parent)

  -- Closing Time: Alphanumeric
  index, closing_time = miax_miaxoptions_expressinterface_mei_v2_9_c.closing_time.dissect(buffer, index, packet, parent)

  -- Restricted Option: Alphanumeric
  index, restricted_option = miax_miaxoptions_expressinterface_mei_v2_9_c.restricted_option.dissect(buffer, index, packet, parent)

  -- Long Term Option: Alphanumeric
  index, long_term_option = miax_miaxoptions_expressinterface_mei_v2_9_c.long_term_option.dissect(buffer, index, packet, parent)

  -- Active On Miax: Alphanumeric
  index, active_on_miax = miax_miaxoptions_expressinterface_mei_v2_9_c.active_on_miax.dissect(buffer, index, packet, parent)

  -- Miax Bbo Posting Increment Indicator: Alphanumeric
  index, miax_bbo_posting_increment_indicator = miax_miaxoptions_expressinterface_mei_v2_9_c.miax_bbo_posting_increment_indicator.dissect(buffer, index, packet, parent)

  -- Quote Acceptance Increment Indicator: Alphanumeric
  index, quote_acceptance_increment_indicator = miax_miaxoptions_expressinterface_mei_v2_9_c.quote_acceptance_increment_indicator.dissect(buffer, index, packet, parent)

  -- Opening Underlying Market Code: Alphanumeric
  index, opening_underlying_market_code = miax_miaxoptions_expressinterface_mei_v2_9_c.opening_underlying_market_code.dissect(buffer, index, packet, parent)

  -- Priority Quote Width: BinaryPrc4U
  index, priority_quote_width = miax_miaxoptions_expressinterface_mei_v2_9_c.priority_quote_width.dissect(buffer, index, packet, parent)

  -- Reserved 8: BinaryU
  if show.padding then
    index, reserved_8 = miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_8.dissect(buffer, index, packet, parent)
  else
    index = index + miax_miaxoptions_expressinterface_mei_v2_9_c.reserved_8.size
  end

  return index
end

-- Dissect: Simple Series Update
miax_miaxoptions_expressinterface_mei_v2_9_c.simple_series_update.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.simple_series_update, buffer(offset, 0))
    local index = miax_miaxoptions_expressinterface_mei_v2_9_c.simple_series_update.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_expressinterface_mei_v2_9_c.simple_series_update.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_expressinterface_mei_v2_9_c.simple_series_update.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
miax_miaxoptions_expressinterface_mei_v2_9_c.sequenced_message = {}

-- Dispatch: Sequenced Message
miax_miaxoptions_expressinterface_mei_v2_9_c.sequenced_message.dispatch = {
  ["SU"] = miax_miaxoptions_expressinterface_mei_v2_9_c.simple_series_update.dissect,
  ["QW"] = miax_miaxoptions_expressinterface_mei_v2_9_c.valid_quote_width_for_opening.dissect,
  ["ER"] = miax_miaxoptions_expressinterface_mei_v2_9_c.simple_enhanced_quote_e_quote_response.dissect,
  ["CR"] = miax_miaxoptions_expressinterface_mei_v2_9_c.complex_enhanced_quote_e_quote_response.dissect,
  ["SN"] = miax_miaxoptions_expressinterface_mei_v2_9_c.system_state_notification.dissect,
  ["TN"] = miax_miaxoptions_expressinterface_mei_v2_9_c.product_trading_status_notification.dissect,
  ["UN"] = miax_miaxoptions_expressinterface_mei_v2_9_c.underlying_trading_status_notification.dissect,
  ["QN"] = miax_miaxoptions_expressinterface_mei_v2_9_c.quote_width_relief_notification.dissect,
  ["AN"] = miax_miaxoptions_expressinterface_mei_v2_9_c.simple_arm_protection_settings_notification.dissect,
  ["A2"] = miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_underlying_level_protection_settings_notification.dissect,
  ["QX"] = miax_miaxoptions_expressinterface_mei_v2_9_c.single_side_liquidity_protection_trigger_notification.dissect,
  ["UP"] = miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_underlying_level_protection_notification.dissect,
  ["FP"] = miax_miaxoptions_expressinterface_mei_v2_9_c.arm_2_firm_level_protection_notification.dissect,
  ["SC"] = miax_miaxoptions_expressinterface_mei_v2_9_c.complex_strategy_definition_notification.dissect,
  ["XN"] = miax_miaxoptions_expressinterface_mei_v2_9_c.cancel_notification.dissect,
  ["EN"] = miax_miaxoptions_expressinterface_mei_v2_9_c.option_execution_notification.dissect,
  ["ST"] = miax_miaxoptions_expressinterface_mei_v2_9_c.stock_leg_execution_notification.dissect,
}

-- Dissect: Sequenced Message
miax_miaxoptions_expressinterface_mei_v2_9_c.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  local dissect = miax_miaxoptions_expressinterface_mei_v2_9_c.sequenced_message.dispatch[sequenced_message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Data Packet
miax_miaxoptions_expressinterface_mei_v2_9_c.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
miax_miaxoptions_expressinterface_mei_v2_9_c.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  return sesm_packet_length - 1
end

-- Display: Sequenced Data Packet
miax_miaxoptions_expressinterface_mei_v2_9_c.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
miax_miaxoptions_expressinterface_mei_v2_9_c.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = miax_miaxoptions_expressinterface_mei_v2_9_c.sequence_number.dissect(buffer, index, packet, parent)

  -- Sequenced Message Type: 2 Byte Ascii String Enum with 17 values
  index, sequenced_message_type = miax_miaxoptions_expressinterface_mei_v2_9_c.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 17 branches
  index = miax_miaxoptions_expressinterface_mei_v2_9_c.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
miax_miaxoptions_expressinterface_mei_v2_9_c.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = miax_miaxoptions_expressinterface_mei_v2_9_c.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.sequenced_data_packet, buffer(offset, 0))
    local current = miax_miaxoptions_expressinterface_mei_v2_9_c.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = miax_miaxoptions_expressinterface_mei_v2_9_c.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_miaxoptions_expressinterface_mei_v2_9_c.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
end

-- Sesm Payload
miax_miaxoptions_expressinterface_mei_v2_9_c.sesm_payload = {}

-- Dispatch: Sesm Payload
miax_miaxoptions_expressinterface_mei_v2_9_c.sesm_payload.dispatch = {
  ["S"] = miax_miaxoptions_expressinterface_mei_v2_9_c.sequenced_data_packet.dissect,
  ["U"] = miax_miaxoptions_expressinterface_mei_v2_9_c.unsequenced_data_packet.dissect,
  ["L"] = miax_miaxoptions_expressinterface_mei_v2_9_c.login_request.dissect,
  ["R"] = miax_miaxoptions_expressinterface_mei_v2_9_c.login_response.dissect,
  ["C"] = miax_miaxoptions_expressinterface_mei_v2_9_c.synchronization_complete.dissect,
  ["A"] = miax_miaxoptions_expressinterface_mei_v2_9_c.retransmission_request.dissect,
  ["X"] = miax_miaxoptions_expressinterface_mei_v2_9_c.logout_request.dissect,
  ["G"] = miax_miaxoptions_expressinterface_mei_v2_9_c.goodbye_packet.dissect,
  ["E"] = miax_miaxoptions_expressinterface_mei_v2_9_c.end_of_session.dissect,
  ["0"] = miax_miaxoptions_expressinterface_mei_v2_9_c.server_heartbeat.dissect,
  ["1"] = miax_miaxoptions_expressinterface_mei_v2_9_c.client_heartbeat.dissect,
  ["T"] = miax_miaxoptions_expressinterface_mei_v2_9_c.test_packet.dissect,
}

-- Dissect: Sesm Payload
miax_miaxoptions_expressinterface_mei_v2_9_c.sesm_payload.dissect = function(buffer, offset, packet, parent, sesm_packet_type)
  local dissect = miax_miaxoptions_expressinterface_mei_v2_9_c.sesm_payload.dispatch[sesm_packet_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sesm Packet Header
miax_miaxoptions_expressinterface_mei_v2_9_c.sesm_packet_header = {}

-- Size: Sesm Packet Header
miax_miaxoptions_expressinterface_mei_v2_9_c.sesm_packet_header.size =
  miax_miaxoptions_expressinterface_mei_v2_9_c.sesm_packet_length.size + 
  miax_miaxoptions_expressinterface_mei_v2_9_c.sesm_packet_type.size

-- Display: Sesm Packet Header
miax_miaxoptions_expressinterface_mei_v2_9_c.sesm_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sesm Packet Header
miax_miaxoptions_expressinterface_mei_v2_9_c.sesm_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sesm Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, sesm_packet_length = miax_miaxoptions_expressinterface_mei_v2_9_c.sesm_packet_length.dissect(buffer, index, packet, parent)

  -- Sesm Packet Type: 1 Byte Ascii String Enum with 12 values
  index, sesm_packet_type = miax_miaxoptions_expressinterface_mei_v2_9_c.sesm_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sesm Packet Header
miax_miaxoptions_expressinterface_mei_v2_9_c.sesm_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.sesm_packet_header, buffer(offset, 0))
    local index = miax_miaxoptions_expressinterface_mei_v2_9_c.sesm_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_expressinterface_mei_v2_9_c.sesm_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_expressinterface_mei_v2_9_c.sesm_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Sesm Tcp Packet
miax_miaxoptions_expressinterface_mei_v2_9_c.sesm_tcp_packet = {}

-- Display: Sesm Tcp Packet
miax_miaxoptions_expressinterface_mei_v2_9_c.sesm_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sesm Tcp Packet
miax_miaxoptions_expressinterface_mei_v2_9_c.sesm_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_sesm_tcp_packet)
  local index = offset

  -- Sesm Packet Header: Struct of 2 fields
  index, sesm_packet_header = miax_miaxoptions_expressinterface_mei_v2_9_c.sesm_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Sesm Packet Type
  local sesm_packet_type = buffer(index - 1, 1):string()

  -- Sesm Payload: Runtime Type with 12 branches
  index = miax_miaxoptions_expressinterface_mei_v2_9_c.sesm_payload.dissect(buffer, index, packet, parent, sesm_packet_type)

  return index
end

-- Dissect: Sesm Tcp Packet
miax_miaxoptions_expressinterface_mei_v2_9_c.sesm_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_sesm_tcp_packet)
  local index = offset + size_of_sesm_tcp_packet

  -- Its fields read only its own bytes: a layout running past them is marked, not raised
  local bounded = buffer(0, math.min(index, buffer:len())):tvb()

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c.fields.sesm_tcp_packet, buffer(offset, 0))
    local decoded, failure = pcall(miax_miaxoptions_expressinterface_mei_v2_9_c.sesm_tcp_packet.fields, bounded, offset, packet, parent, size_of_sesm_tcp_packet)
    if not decoded then
      undecoded(failure, parent, miax_miaxoptions_expressinterface_mei_v2_9_c.experts.undecoded, "Sesm Tcp Packet does not decode within its "..size_of_sesm_tcp_packet.." bytes")
    end
    parent:set_len(size_of_sesm_tcp_packet)
    local display = miax_miaxoptions_expressinterface_mei_v2_9_c.sesm_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    local decoded, failure = pcall(miax_miaxoptions_expressinterface_mei_v2_9_c.sesm_tcp_packet.fields, bounded, offset, packet, parent, size_of_sesm_tcp_packet)
    if not decoded then
      undecoded(failure, parent, miax_miaxoptions_expressinterface_mei_v2_9_c.experts.undecoded, "Sesm Tcp Packet does not decode within its "..size_of_sesm_tcp_packet.." bytes")
    end

    return index
  end
end

-- Remaining Bytes For: Sesm Tcp Packet
local sesm_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < miax_miaxoptions_expressinterface_mei_v2_9_c.sesm_packet_header.size then
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
miax_miaxoptions_expressinterface_mei_v2_9_c.packet = {}

-- Verify required size of Tcp packet
miax_miaxoptions_expressinterface_mei_v2_9_c.packet.requiredsize = function(buffer)
  return buffer:len() >= miax_miaxoptions_expressinterface_mei_v2_9_c.sesm_packet_header.size
end

-- Dissect Packet
miax_miaxoptions_expressinterface_mei_v2_9_c.packet.dissect = function(buffer, packet, parent)
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
      index = miax_miaxoptions_expressinterface_mei_v2_9_c.sesm_tcp_packet.dissect(frame, index, packet, parent, size_of_sesm_tcp_packet)
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
function omi_miax_miaxoptions_expressinterface_mei_v2_9_c.init()
end

-- Dissector for Miax MiaxOptions ExpressInterface Mei 2.9.c
function omi_miax_miaxoptions_expressinterface_mei_v2_9_c.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_miax_miaxoptions_expressinterface_mei_v2_9_c.name

  -- Dissect protocol
  local protocol = parent:add(omi_miax_miaxoptions_expressinterface_mei_v2_9_c, buffer(), omi_miax_miaxoptions_expressinterface_mei_v2_9_c.description, "("..buffer:len().." Bytes)")
  return miax_miaxoptions_expressinterface_mei_v2_9_c.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Miax MiaxOptions ExpressInterface Mei 2.9.c (Tcp)
local function omi_miax_miaxoptions_expressinterface_mei_v2_9_c_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not miax_miaxoptions_expressinterface_mei_v2_9_c.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_miax_miaxoptions_expressinterface_mei_v2_9_c
  omi_miax_miaxoptions_expressinterface_mei_v2_9_c.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Miax MiaxOptions ExpressInterface Mei 2.9.c
omi_miax_miaxoptions_expressinterface_mei_v2_9_c:register_heuristic("tcp", omi_miax_miaxoptions_expressinterface_mei_v2_9_c_tcp_heuristic)

-- Register Miax MiaxOptions ExpressInterface Mei 2.9.c for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_miax_miaxoptions_expressinterface_mei_v2_9_c)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Miami International Holdings
--   Version: 2.9.c
--   Date: Monday, August 1, 2022
--   Specification: MIAX_Express_Interface_MEI_v2.9c.pdf
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
--   https://patents.google.com/patent/US12101388B2/en
--   https://patents.google.com/patent/US20240419416A1/en
--   https://patents.google.com/patent/US20260368281A1/en
--
-----------------------------------------------------------------------
