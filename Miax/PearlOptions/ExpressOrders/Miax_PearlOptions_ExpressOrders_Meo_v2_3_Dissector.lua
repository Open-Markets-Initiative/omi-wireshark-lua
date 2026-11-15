-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Miax PearlOptions ExpressOrders Meo 2.3 Protocol
local omi_miax_pearloptions_expressorders_meo_v2_3 = Proto("Omi.Miax.PearlOptions.ExpressOrders.Meo.v2.3", "Miax PearlOptions ExpressOrders Meo 2.3")

-- Protocol table
local miax_pearloptions_expressorders_meo_v2_3 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Miax PearlOptions ExpressOrders Meo 2.3 Fields
omi_miax_pearloptions_expressorders_meo_v2_3.fields.account = ProtoField.new("Account", "miax.pearloptions.expressorders.meo.v2.3.account", ftypes.STRING, nil, nil, nil, "Customer ID defined by the firms")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.action = ProtoField.new("Action", "miax.pearloptions.expressorders.meo.v2.3.action", ftypes.STRING)
omi_miax_pearloptions_expressorders_meo_v2_3.fields.active_on_pearl = ProtoField.new("Active On Pearl", "miax.pearloptions.expressorders.meo.v2.3.activeonpearl", ftypes.STRING, nil, nil, nil, "Indicates if this symbol is tradable on Pearl in the current session")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.allowable_engagement_percentage = ProtoField.new("Allowable Engagement Percentage", "miax.pearloptions.expressorders.meo.v2.3.allowableengagementpercentage", ftypes.UINT32, nil, nil, nil, "Percentage of order size at which the Member wants Pearl to trigger ARM protection for this underlying. Minimum value is 1 (1%). Maximum is 65,535 (65,535%)")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.application_protocol = ProtoField.new("Application Protocol", "miax.pearloptions.expressorders.meo.v2.3.applicationprotocol", ftypes.STRING, nil, nil, nil, "Eg: MEI1.0 (right padded with spaces)")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.arm_2_settings_update_status = ProtoField.new("Arm 2 Settings Update Status", "miax.pearloptions.expressorders.meo.v2.3.arm2settingsupdatestatus", ftypes.STRING, nil, nil, nil, "ARM2 settings update status")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.arm_settings_update_status = ProtoField.new("Arm Settings Update Status", "miax.pearloptions.expressorders.meo.v2.3.armsettingsupdatestatus", ftypes.STRING)
omi_miax_pearloptions_expressorders_meo_v2_3.fields.arm_threshold_count_binary_4u_4 = ProtoField.new("Arm Threshold Count Binary 4u 4", "miax.pearloptions.expressorders.meo.v2.3.armthresholdcountbinary4u4", ftypes.UINT32, nil, nil, nil, "Number of unique ARM triggers for the Counting Period that will trigger ARM2 Firm Level protection")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.arm_threshold_count_binary_u_4 = ProtoField.new("Arm Threshold Count Binary U 4", "miax.pearloptions.expressorders.meo.v2.3.armthresholdcountbinaryu4", ftypes.UINT32, nil, nil, nil, "Number of ARM triggers for the Counting Period for the specified underlying that will trigger ARM2 Underlying level protection. Minimum: 3 Maximum: 99")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.assignment_settings_status = ProtoField.new("Assignment Settings Status", "miax.pearloptions.expressorders.meo.v2.3.assignmentsettingsstatus", ftypes.STRING)
omi_miax_pearloptions_expressorders_meo_v2_3.fields.away_market_maker_origin_multiplier = ProtoField.new("Away Market Maker Origin Multiplier", "miax.pearloptions.expressorders.meo.v2.3.awaymarketmakeroriginmultiplier", ftypes.UINT16, nil, nil, nil, "Contra side Away Market Maker Origin Multiplier. Valid range: 0-5000")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.broker_dealer_origin_multiplier = ProtoField.new("Broker Dealer Origin Multiplier", "miax.pearloptions.expressorders.meo.v2.3.brokerdealeroriginmultiplier", ftypes.UINT16, nil, nil, nil, "Contra side Broker Dealer Origin Multiplier. Valid range: 0-5000")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.bulk_order_index = ProtoField.new("Bulk Order Index", "miax.pearloptions.expressorders.meo.v2.3.bulkorderindex", ftypes.UINT8, nil, nil, nil, "Bulk Liquidity Index assigned by Pearl to each Order in bulk Liquidity (order position in the bulk liquidity)")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.bulk_order_status = ProtoField.new("Bulk Order Status", "miax.pearloptions.expressorders.meo.v2.3.bulkorderstatus", ftypes.STRING)
omi_miax_pearloptions_expressorders_meo_v2_3.fields.call_or_put = ProtoField.new("Call Or Put", "miax.pearloptions.expressorders.meo.v2.3.callorput", ftypes.STRING, nil, nil, nil, "Option Type")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.cancel_reason = ProtoField.new("Cancel Reason", "miax.pearloptions.expressorders.meo.v2.3.cancelreason", ftypes.STRING)
omi_miax_pearloptions_expressorders_meo_v2_3.fields.clearing_account = ProtoField.new("Clearing Account", "miax.pearloptions.expressorders.meo.v2.3.clearingaccount", ftypes.STRING, nil, nil, nil, "OCC Sub account (Multi-account) for non-MM orders or MM MPID for EEMs sending MM orders (in which case MPID field above becomes Executing MPID)")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.client_message_id = ProtoField.new("Client Message Id", "miax.pearloptions.expressorders.meo.v2.3.clientmessageid", ftypes.UINT32, nil, nil, nil, "Unique message ID assigned by the firm")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.client_order_id = ProtoField.new("Client Order Id", "miax.pearloptions.expressorders.meo.v2.3.clientorderid", ftypes.UINT32)
omi_miax_pearloptions_expressorders_meo_v2_3.fields.client_send_time = ProtoField.new("Client Send Time", "miax.pearloptions.expressorders.meo.v2.3.clientsendtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Firm's send time for the Liquidities. Nanoseconds since Epoch")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.client_send_time_utc = ProtoField.new("Client Send Time", "miax.pearloptions.expressorders.meo.v2.3.clientsendtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Firm's send time for the Liquidities. Nanoseconds since Epoch")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.closing_time = ProtoField.new("Closing Time", "miax.pearloptions.expressorders.meo.v2.3.closingtime", ftypes.STRING, nil, nil, nil, "Expressed in HH:MM:SS format. Eg: 16:15:00")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.cmta = ProtoField.new("Cmta", "miax.pearloptions.expressorders.meo.v2.3.cmta", ftypes.UINT32, nil, nil, nil, "CMTA sent in the order")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.computer_id = ProtoField.new("Computer Id", "miax.pearloptions.expressorders.meo.v2.3.computerid", ftypes.STRING, nil, nil, nil, "ID issued by MIAX during initial setup")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.counting_period_binary_4u_4 = ProtoField.new("Counting Period Binary 4u 4", "miax.pearloptions.expressorders.meo.v2.3.countingperiodbinary4u4", ftypes.UINT32, nil, nil, nil, "Counting Period in milliseconds in which the number of unique ARM triggers cannot exceed the configured ARM Threshold Count specified for ARM2 protection")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.counting_period_binary_u_2 = ProtoField.new("Counting Period Binary U 2", "miax.pearloptions.expressorders.meo.v2.3.countingperiodbinaryu2", ftypes.UINT16, nil, nil, nil, "Duration (in number of milliseconds) in which Engagement percentage is calculated in order to determine if the MPID should be put on ARM protection for this underlying. Allowable Range: 100 to 15,000 milliseconds")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.counting_period_binary_u_4 = ProtoField.new("Counting Period Binary U 4", "miax.pearloptions.expressorders.meo.v2.3.countingperiodbinaryu4", ftypes.UINT32, nil, nil, nil, "Duration (in number of milliseconds) for which ARM triggers are counted in order to determine if they don't exceed the specified ARM2 Threshold. Allowable Range: 1000 to 24,300,000 milliseconds")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.covered_uncovered = ProtoField.new("Covered Uncovered", "miax.pearloptions.expressorders.meo.v2.3.covereduncovered", ftypes.STRING, nil, nil, nil, "Covered or uncovered")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.end_sequence_number = ProtoField.new("End Sequence Number", "miax.pearloptions.expressorders.meo.v2.3.endsequencenumber", ftypes.UINT64, nil, nil, nil, "Sequence number of the last packet to be retransmitted")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.engine_sequence_number = ProtoField.new("Engine Sequence Number", "miax.pearloptions.expressorders.meo.v2.3.enginesequencenumber", ftypes.UINT64, nil, nil, nil, "Pearl Engine sequence number of this cancel")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.event_reason = ProtoField.new("Event Reason", "miax.pearloptions.expressorders.meo.v2.3.eventreason", ftypes.STRING)
omi_miax_pearloptions_expressorders_meo_v2_3.fields.execution_id = ProtoField.new("Execution Id", "miax.pearloptions.expressorders.meo.v2.3.executionid", ftypes.UINT64, nil, nil, nil, "Pearl execution ID")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.expected_event_time = ProtoField.new("Expected Event Time", "miax.pearloptions.expressorders.meo.v2.3.expectedeventtime", ftypes.UINT64, nil, nil, nil, "Expected time of start of the event. When underlying trading status is H or C, this will be 0 (zero). When underlying trading status is R or O, this will be the time at which the opening/reopening process will start for this Underlying Symbol")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.expiration_date = ProtoField.new("Expiration Date", "miax.pearloptions.expressorders.meo.v2.3.expirationdate", ftypes.STRING, nil, nil, nil, "Expiration date of the option in YYYYMMDD format")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.firm_origin_multiplier = ProtoField.new("Firm Origin Multiplier", "miax.pearloptions.expressorders.meo.v2.3.firmoriginmultiplier", ftypes.UINT16, nil, nil, nil, "Contra side Firm Origin Multiplier. Valid range: 0-5000")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.goodbye_reason = ProtoField.new("Goodbye Reason", "miax.pearloptions.expressorders.meo.v2.3.goodbyereason", ftypes.STRING, nil, nil, nil, "Reason")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.highest_sequence_number = ProtoField.new("Highest Sequence Number", "miax.pearloptions.expressorders.meo.v2.3.highestsequencenumber", ftypes.UINT64, nil, nil, nil, "The highest sequence number that the server currently has for the client")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.invalid_order_count = ProtoField.new("Invalid Order Count", "miax.pearloptions.expressorders.meo.v2.3.invalidordercount", ftypes.UINT8, nil, nil, nil, "Number of orders that were rejected (orders with status other than space)")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.last_price = ProtoField.new("Last Price", "miax.pearloptions.expressorders.meo.v2.3.lastprice", ftypes.DOUBLE, nil, nil, nil, "Price of this execution")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.last_size = ProtoField.new("Last Size", "miax.pearloptions.expressorders.meo.v2.3.lastsize", ftypes.UINT32, nil, nil, nil, "Number of contracts executed (not cumulative)")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.liquidity_indicator = ProtoField.new("Liquidity Indicator", "miax.pearloptions.expressorders.meo.v2.3.liquidityindicator", ftypes.STRING, nil, nil, nil, "Order Traded as specified in this billing field")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.liquidity_type = ProtoField.new("Liquidity Type", "miax.pearloptions.expressorders.meo.v2.3.liquiditytype", ftypes.STRING)
omi_miax_pearloptions_expressorders_meo_v2_3.fields.liquidity_unit = ProtoField.new("Liquidity Unit", "miax.pearloptions.expressorders.meo.v2.3.liquidityunit", ftypes.BYTES, nil, nil, nil, "Can contain 1 AutoReplace Order, Standard Order, Standard Order Cancel or Standard Order Replace in each unit. Number of units should match the count specified in the count field")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.liquidity_unit_count = ProtoField.new("Liquidity Unit Count", "miax.pearloptions.expressorders.meo.v2.3.liquidityunitcount", ftypes.UINT8, nil, nil, nil, "Number of Orders, Cancels, Replaces in this bulk message")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.liquidity_units = ProtoField.new("Liquidity Units", "miax.pearloptions.expressorders.meo.v2.3.liquidityunits", ftypes.STRING, nil, nil, nil, "1 to 25 single-side Order, cancel or replace")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.login_status = ProtoField.new("Login Status", "miax.pearloptions.expressorders.meo.v2.3.loginstatus", ftypes.STRING)
omi_miax_pearloptions_expressorders_meo_v2_3.fields.logout_reason = ProtoField.new("Logout Reason", "miax.pearloptions.expressorders.meo.v2.3.logoutreason", ftypes.STRING, nil, nil, nil, "Reason")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.logout_text = ProtoField.new("Logout Text", "miax.pearloptions.expressorders.meo.v2.3.logouttext", ftypes.STRING, nil, nil, nil, "Free form human readable text to provide more details beyond the reasons mentioned above")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.long_term_option = ProtoField.new("Long Term Option", "miax.pearloptions.expressorders.meo.v2.3.longtermoption", ftypes.STRING)
omi_miax_pearloptions_expressorders_meo_v2_3.fields.market_maker_origin_multiplier = ProtoField.new("Market Maker Origin Multiplier", "miax.pearloptions.expressorders.meo.v2.3.marketmakeroriginmultiplier", ftypes.UINT16, nil, nil, nil, "Contra side Market Maker Origin Multiplier. Valid range: 0-5000")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.mass_cancel_scope = ProtoField.new("Mass Cancel Scope", "miax.pearloptions.expressorders.meo.v2.3.masscancelscope", ftypes.STRING)
omi_miax_pearloptions_expressorders_meo_v2_3.fields.meo_version = ProtoField.new("Meo Version", "miax.pearloptions.expressorders.meo.v2.3.meoversion", ftypes.STRING, nil, nil, nil, "Eg: MEOX.X (where X.X is MEO version)")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.mpid = ProtoField.new("Mpid", "miax.pearloptions.expressorders.meo.v2.3.mpid", ftypes.STRING, nil, nil, nil, "Pearl assigned ID of the Member")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.mvp = ProtoField.new("Mvp", "miax.pearloptions.expressorders.meo.v2.3.mvp", ftypes.INT8, nil, nil, nil, "Number or price levels up to which the order will trade from the initial market price at time of arrival. Negative value indicates MEO to use Exchange default value")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.non_priority_customer_origin_multiplier = ProtoField.new("Non Priority Customer Origin Multiplier", "miax.pearloptions.expressorders.meo.v2.3.nonprioritycustomeroriginmultiplier", ftypes.UINT16, nil, nil, nil, "Contra side Non-Priority Customer Origin Multiplier. Valid range: 0-5000")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.notification_time = ProtoField.new("Notification Time", "miax.pearloptions.expressorders.meo.v2.3.notificationtime", ftypes.UINT64, nil, nil, nil, "Time at which this was generated by Pearl system")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.notification_type = ProtoField.new("Notification Type", "miax.pearloptions.expressorders.meo.v2.3.notificationtype", ftypes.STRING)
omi_miax_pearloptions_expressorders_meo_v2_3.fields.open_close = ProtoField.new("Open Close", "miax.pearloptions.expressorders.meo.v2.3.openclose", ftypes.STRING, nil, nil, nil, "Open or close")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.open_size = ProtoField.new("Open Size", "miax.pearloptions.expressorders.meo.v2.3.opensize", ftypes.UINT32, nil, nil, nil, "Indicates the remaining size open after processing the new order, cancel/replace or cancel. Zero for rejected orders")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.opening_time = ProtoField.new("Opening Time", "miax.pearloptions.expressorders.meo.v2.3.openingtime", ftypes.STRING, nil, nil, nil, "Expressed in HH:MM:SS format. Eg: 09:30:00")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.opening_underlying_market_code = ProtoField.new("Opening Underlying Market Code", "miax.pearloptions.expressorders.meo.v2.3.openingunderlyingmarketcode", ftypes.STRING, nil, nil, nil, "Options opening will be triggered on receipt of Opening quote/trade from this Underlying market")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.order_acceptance_increment_indicator = ProtoField.new("Order Acceptance Increment Indicator", "miax.pearloptions.expressorders.meo.v2.3.orderacceptanceincrementindicator", ftypes.STRING, nil, nil, nil, "This is the Minimum Price Variation for Order acceptance as per Pearl rules")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.order_ack_time = ProtoField.new("Order Ack Time", "miax.pearloptions.expressorders.meo.v2.3.orderacktime", ftypes.UINT64, nil, nil, nil, "Time at which Pearl engine generated this response")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.order_count = ProtoField.new("Order Count", "miax.pearloptions.expressorders.meo.v2.3.ordercount", ftypes.UINT8, nil, nil, nil, "Number of orders that were submitted in the Bulk liquidity block")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.order_instruction = ProtoField.new("Order Instruction", "miax.pearloptions.expressorders.meo.v2.3.orderinstruction", ftypes.STRING)
omi_miax_pearloptions_expressorders_meo_v2_3.fields.order_response = ProtoField.new("Order Response", "miax.pearloptions.expressorders.meo.v2.3.orderresponse", ftypes.STRING, nil, nil, nil, "1 to N single-side order responses")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.order_status = ProtoField.new("Order Status", "miax.pearloptions.expressorders.meo.v2.3.orderstatus", ftypes.STRING)
omi_miax_pearloptions_expressorders_meo_v2_3.fields.origin = ProtoField.new("Origin", "miax.pearloptions.expressorders.meo.v2.3.origin", ftypes.STRING, nil, nil, nil, "Specifies the order origin type")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.pearl_bbo_posting_increment_indicator = ProtoField.new("Pearl Bbo Posting Increment Indicator", "miax.pearloptions.expressorders.meo.v2.3.pearlbbopostingincrementindicator", ftypes.STRING, nil, nil, nil, "This is the Minimum Price Variation as agreed to by the Options industry (penny pilot program) and as published by Pearl")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.price = ProtoField.new("Price", "miax.pearloptions.expressorders.meo.v2.3.price", ftypes.DOUBLE, nil, nil, nil, "Price that was sent in the Order. 0 for market orders")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.priority_customer_origin_multiplier = ProtoField.new("Priority Customer Origin Multiplier", "miax.pearloptions.expressorders.meo.v2.3.prioritycustomeroriginmultiplier", ftypes.UINT16, nil, nil, nil, "Contra side Priority Customer Origin Multiplier. Valid range: 0-5000")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.product_add_update_time = ProtoField.new("Product Add Update Time", "miax.pearloptions.expressorders.meo.v2.3.productaddupdatetime", ftypes.UINT64, nil, nil, nil, "Time at which this product is added/updated on Pearl system today")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.product_id = ProtoField.new("Product Id", "miax.pearloptions.expressorders.meo.v2.3.productid", ftypes.UINT32, nil, nil, nil, "Pearl Product ID mapped to a given option. It is assigned per trading session and is valid for that session")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.relief_multiplier = ProtoField.new("Relief Multiplier", "miax.pearloptions.expressorders.meo.v2.3.reliefmultiplier", ftypes.DOUBLE, nil, nil, nil, "Relief is the multiplier times the regular acceptable Exchange Opening width (Opening BBO width)")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "miax.pearloptions.expressorders.meo.v2.3.requestedsequencenumber", ftypes.UINT64, nil, nil, nil, "Specifies client requested sequence number: next sequence number the client wants to receive upon connection, or 0 to start receiving only new messages without any replay of old messages")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.requested_session = ProtoField.new("Requested Session", "miax.pearloptions.expressorders.meo.v2.3.requestedsession", ftypes.UINT8, nil, nil, nil, "Specifies the session the client would like to log into, or zero to log into the currently active session")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.requested_slap_codes = ProtoField.new("Requested Slap Codes", "miax.pearloptions.expressorders.meo.v2.3.requestedslapcodes", ftypes.STRING, nil, nil, nil, "SLAP codes requested to be purged, one bit per code; bit 0 is the least significant bit")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.reserved_10 = ProtoField.new("Reserved 10", "miax.pearloptions.expressorders.meo.v2.3.reserved10", ftypes.BYTES, nil, nil, nil, "For future use")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.reserved_12 = ProtoField.new("Reserved 12", "miax.pearloptions.expressorders.meo.v2.3.reserved12", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.reserved_15 = ProtoField.new("Reserved 15", "miax.pearloptions.expressorders.meo.v2.3.reserved15", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.reserved_16 = ProtoField.new("Reserved 16", "miax.pearloptions.expressorders.meo.v2.3.reserved16", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.reserved_4 = ProtoField.new("Reserved 4", "miax.pearloptions.expressorders.meo.v2.3.reserved4", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.reserved_6 = ProtoField.new("Reserved 6", "miax.pearloptions.expressorders.meo.v2.3.reserved6", ftypes.BYTES, nil, nil, nil, "For future use")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.restricted_option = ProtoField.new("Restricted Option", "miax.pearloptions.expressorders.meo.v2.3.restrictedoption", ftypes.STRING)
omi_miax_pearloptions_expressorders_meo_v2_3.fields.scope = ProtoField.new("Scope", "miax.pearloptions.expressorders.meo.v2.3.scope", ftypes.STRING)
omi_miax_pearloptions_expressorders_meo_v2_3.fields.security_symbol = ProtoField.new("Security Symbol", "miax.pearloptions.expressorders.meo.v2.3.securitysymbol", ftypes.STRING, nil, nil, nil, "Option Security Symbol")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.self_trade_protection_status = ProtoField.new("Self Trade Protection Status", "miax.pearloptions.expressorders.meo.v2.3.selftradeprotectionstatus", ftypes.STRING, nil, nil, nil, "Self-trade protection status")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.sequence_number = ProtoField.new("Sequence Number", "miax.pearloptions.expressorders.meo.v2.3.sequencenumber", ftypes.UINT64, nil, nil, nil, "Sequence number of this sequenced data packet")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "miax.pearloptions.expressorders.meo.v2.3.sequenceddatapacket", ftypes.STRING, nil, nil, nil, "The Server application can choose to use Sequenced data packets to send all messages that must be recoverable by the client in case of a connection loss")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "miax.pearloptions.expressorders.meo.v2.3.sequencedmessagetype", ftypes.STRING, nil, nil, nil, "Message type of the application message the sequenced data packet carries")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.sesm_packet_length = ProtoField.new("Sesm Packet Length", "miax.pearloptions.expressorders.meo.v2.3.sesmpacketlength", ftypes.UINT16, nil, nil, nil, "The length of rest of the packet")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.sesm_packet_type = ProtoField.new("Sesm Packet Type", "miax.pearloptions.expressorders.meo.v2.3.sesmpackettype", ftypes.STRING, nil, nil, nil, "SesM protocol packet type")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.sesm_version = ProtoField.new("Sesm Version", "miax.pearloptions.expressorders.meo.v2.3.sesmversion", ftypes.STRING, nil, nil, nil, "1.1 (right padded with spaces)")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.session_id = ProtoField.new("Session Id", "miax.pearloptions.expressorders.meo.v2.3.sessionid", ftypes.UINT8, nil, nil, nil, "Pearl assigned ID for the current trading session")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.side = ProtoField.new("Side", "miax.pearloptions.expressorders.meo.v2.3.side", ftypes.STRING, nil, nil, nil, "The side of Product ID to reset")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.size = ProtoField.new("Size", "miax.pearloptions.expressorders.meo.v2.3.size", ftypes.UINT32, nil, nil, nil, "Number of contracts")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.slap_code_1 = ProtoField.new("Slap Code 1", "miax.pearloptions.expressorders.meo.v2.3.slapcode1", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01, "Bit 0: SLAP Code 1")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.slap_code_2 = ProtoField.new("Slap Code 2", "miax.pearloptions.expressorders.meo.v2.3.slapcode2", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02, "Bit 1: SLAP Code 2")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.slap_code_3 = ProtoField.new("Slap Code 3", "miax.pearloptions.expressorders.meo.v2.3.slapcode3", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04, "Bit 2: SLAP Code 3")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.slap_code_4 = ProtoField.new("Slap Code 4", "miax.pearloptions.expressorders.meo.v2.3.slapcode4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08, "Bit 3: SLAP Code 4")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.slap_code_5 = ProtoField.new("Slap Code 5", "miax.pearloptions.expressorders.meo.v2.3.slapcode5", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10, "Bit 4: SLAP Code 5")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.slap_code_6 = ProtoField.new("Slap Code 6", "miax.pearloptions.expressorders.meo.v2.3.slapcode6", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20, "Bit 5: SLAP Code 6")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.slap_code_7 = ProtoField.new("Slap Code 7", "miax.pearloptions.expressorders.meo.v2.3.slapcode7", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40, "Bit 6: SLAP Code 7")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.slap_code_8 = ProtoField.new("Slap Code 8", "miax.pearloptions.expressorders.meo.v2.3.slapcode8", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80, "Bit 7: SLAP Code 8")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.slap_codes = ProtoField.new("Slap Codes", "miax.pearloptions.expressorders.meo.v2.3.slapcodes", ftypes.STRING, nil, nil, nil, "SLAP codes, one bit per code; bit 0 is the least significant bit")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.source = ProtoField.new("Source", "miax.pearloptions.expressorders.meo.v2.3.source", ftypes.STRING)
omi_miax_pearloptions_expressorders_meo_v2_3.fields.start_sequence_number = ProtoField.new("Start Sequence Number", "miax.pearloptions.expressorders.meo.v2.3.startsequencenumber", ftypes.UINT64, nil, nil, nil, "Sequence number of the first packet to be retransmitted")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.status = ProtoField.new("Status", "miax.pearloptions.expressorders.meo.v2.3.status", ftypes.STRING)
omi_miax_pearloptions_expressorders_meo_v2_3.fields.strike_price = ProtoField.new("Strike Price", "miax.pearloptions.expressorders.meo.v2.3.strikeprice", ftypes.DOUBLE, nil, nil, nil, "Explicit strike price of the option")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.system_status = ProtoField.new("System Status", "miax.pearloptions.expressorders.meo.v2.3.systemstatus", ftypes.STRING, nil, nil, nil, "Current system status")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.target_client_order_id = ProtoField.new("Target Client Order Id", "miax.pearloptions.expressorders.meo.v2.3.targetclientorderid", ftypes.UINT32, nil, nil, nil, "Target Client Order of the order that was replaced")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.test_text = ProtoField.new("Test Text", "miax.pearloptions.expressorders.meo.v2.3.testtext", ftypes.STRING, nil, nil, nil, "Free form human readable text")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.time_in_force_tif = ProtoField.new("Time In Force Tif", "miax.pearloptions.expressorders.meo.v2.3.timeinforcetif", ftypes.STRING, nil, nil, nil, "Time in force")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.trade_id = ProtoField.new("Trade Id", "miax.pearloptions.expressorders.meo.v2.3.tradeid", ftypes.UINT32, nil, nil, nil, "Pearl Trade ID")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.trade_status = ProtoField.new("Trade Status", "miax.pearloptions.expressorders.meo.v2.3.tradestatus", ftypes.STRING)
omi_miax_pearloptions_expressorders_meo_v2_3.fields.trading_status = ProtoField.new("Trading Status", "miax.pearloptions.expressorders.meo.v2.3.tradingstatus", ftypes.STRING)
omi_miax_pearloptions_expressorders_meo_v2_3.fields.trigger_reason = ProtoField.new("Trigger Reason", "miax.pearloptions.expressorders.meo.v2.3.triggerreason", ftypes.STRING)
omi_miax_pearloptions_expressorders_meo_v2_3.fields.triggered_slap_codes = ProtoField.new("Triggered Slap Codes", "miax.pearloptions.expressorders.meo.v2.3.triggeredslapcodes", ftypes.STRING, nil, nil, nil, "SLAP codes currently purged and not reset, one bit per code; bit 0 is the least significant bit")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.triggering_bulk_order_index = ProtoField.new("Triggering Bulk Order Index", "miax.pearloptions.expressorders.meo.v2.3.triggeringbulkorderindex", ftypes.UINT8, nil, nil, nil, "Bulk Order Index assigned by Pearl to each Order in Bulk Liquidity (order position in the Bulk liquidity) that triggered Single Side Liquidity Protection")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.triggering_client_message_id = ProtoField.new("Triggering Client Message Id", "miax.pearloptions.expressorders.meo.v2.3.triggeringclientmessageid", ftypes.UINT32, nil, nil, nil, "Client Message ID supplied by the firm in the Bulk order message that triggered the Single Side Liquidity Protection")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "miax.pearloptions.expressorders.meo.v2.3.underlyingsymbol", ftypes.STRING, nil, nil, nil, "Stock Symbol for the option")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "miax.pearloptions.expressorders.meo.v2.3.unsequenceddatapacket", ftypes.STRING, nil, nil, nil, "Each unsequenced data packet carries one unsequenced message from the higher-level protocol")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "miax.pearloptions.expressorders.meo.v2.3.unsequencedmessagetype", ftypes.STRING, nil, nil, nil, "Message type of the application message the unsequenced data packet carries")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.username = ProtoField.new("Username", "miax.pearloptions.expressorders.meo.v2.3.username", ftypes.STRING, nil, nil, nil, "Username issued by MIAX during initial setup")

-- Miax PearlOptions ExpressOrders Meo 2.3 Framing
omi_miax_pearloptions_expressorders_meo_v2_3.fields.packet = ProtoField.new("Packet", "miax.pearloptions.expressorders.meo.v2.3.packet", ftypes.STRING, nil, nil, nil, "SesM Packet")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.sesm_packet_header = ProtoField.new("Sesm Packet Header", "miax.pearloptions.expressorders.meo.v2.3.sesmpacketheader", ftypes.STRING)
omi_miax_pearloptions_expressorders_meo_v2_3.fields.sesm_tcp_packet = ProtoField.new("Sesm Tcp Packet", "miax.pearloptions.expressorders.meo.v2.3.sesmtcppacket", ftypes.STRING)

-- Miax PearlOptions ExpressOrders 2.3 Application Messages
omi_miax_pearloptions_expressorders_meo_v2_3.fields.arm_2_firm_level_protection_notification = ProtoField.new("Arm 2 Firm Level Protection Notification", "miax.pearloptions.expressorders.meo.v2.3.arm2firmlevelprotectionnotification", ftypes.STRING, nil, nil, nil, "This message format will be used to notify firms about ARM2 Firm Level protection events")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.arm_2_underlying_level_protection_notification = ProtoField.new("Arm 2 Underlying Level Protection Notification", "miax.pearloptions.expressorders.meo.v2.3.arm2underlyinglevelprotectionnotification", ftypes.STRING, nil, nil, nil, "This message format will be used to notify firms about ARM2 Underlying Level protection events")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.arm_2_underlying_level_protection_settings_notification = ProtoField.new("Arm 2 Underlying Level Protection Settings Notification", "miax.pearloptions.expressorders.meo.v2.3.arm2underlyinglevelprotectionsettingsnotification", ftypes.STRING, nil, nil, nil, "This message format will be used to notify firms of their ARM2 Underlying Level protection settings")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.arm_2_underlying_level_protection_settings_update_request = ProtoField.new("Arm 2 Underlying Level Protection Settings Update Request", "miax.pearloptions.expressorders.meo.v2.3.arm2underlyinglevelprotectionsettingsupdaterequest", ftypes.STRING, nil, nil, nil, "Firms can use this message format to set up their ARM2 Underlying Level protection settings for each session. Changes to these settings can be made throughout the day")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.arm_2_underlying_level_protection_settings_update_response = ProtoField.new("Arm 2 Underlying Level Protection Settings Update Response", "miax.pearloptions.expressorders.meo.v2.3.arm2underlyinglevelprotectionsettingsupdateresponse", ftypes.STRING, nil, nil, nil, "Pearl uses this format to respond to the firm with a status of their ARM2 Underlying level protection Settings Update Request")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.arm_protection_settings_notification = ProtoField.new("Arm Protection Settings Notification", "miax.pearloptions.expressorders.meo.v2.3.armprotectionsettingsnotification", ftypes.STRING, nil, nil, nil, "This message format will be used to notify firms of their ARM settings")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.arm_settings_update_request = ProtoField.new("Arm Settings Update Request", "miax.pearloptions.expressorders.meo.v2.3.armsettingsupdaterequest", ftypes.STRING, nil, nil, nil, "Firms can use this message format to set up their ARM protection settings for each session. Changes to these settings can be made throughout the day")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.arm_settings_update_response = ProtoField.new("Arm Settings Update Response", "miax.pearloptions.expressorders.meo.v2.3.armsettingsupdateresponse", ftypes.STRING, nil, nil, nil, "Pearl uses this format to respond to the firm with a status of their ARM protection settings request")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.bulk_liquidity_message = ProtoField.new("Bulk Liquidity Message", "miax.pearloptions.expressorders.meo.v2.3.bulkliquiditymessage", ftypes.STRING, nil, nil, nil, "Firms can use this message format to send up to 25 orders, cancels or cancel replaces. The orders are processed in the sequence according to their position in the message")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.bulk_liquidity_message_response = ProtoField.new("Bulk Liquidity Message Response", "miax.pearloptions.expressorders.meo.v2.3.bulkliquiditymessageresponse", ftypes.STRING, nil, nil, nil, "This message format will be used to inform the firm of the status of Orders sent in the Bulk Liquidity Message request")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.cancel_notification = ProtoField.new("Cancel Notification", "miax.pearloptions.expressorders.meo.v2.3.cancelnotification", ftypes.STRING, nil, nil, nil, "This is the message format that will be used to notify firms about order cancels. By default this is not a sequenced message; firms can request it to be configured as a sequenced message")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.done_for_the_day_notification = ProtoField.new("Done For The Day Notification", "miax.pearloptions.expressorders.meo.v2.3.doneforthedaynotification", ftypes.STRING, nil, nil, nil, "This is the message format that will be used to notify firms about the final status of the binary orders at the end of day after end of LOW")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.execution_notification = ProtoField.new("Execution Notification", "miax.pearloptions.expressorders.meo.v2.3.executionnotification", ftypes.STRING, nil, nil, nil, "This message format will be used to notify the firms of executions of their orders")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.liquidity_mass_cancel_request = ProtoField.new("Liquidity Mass Cancel Request", "miax.pearloptions.expressorders.meo.v2.3.liquiditymasscancelrequest", ftypes.STRING, nil, nil, nil, "Firms can use this message format to request the cancelation of all orders for an MPID for all series for an underlying")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.liquidity_mass_cancel_response = ProtoField.new("Liquidity Mass Cancel Response", "miax.pearloptions.expressorders.meo.v2.3.liquiditymasscancelresponse", ftypes.STRING, nil, nil, nil, "This message format will be used to inform the firm about the status of their previous Mass Cancel request")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.liquidity_protection_reset_request = ProtoField.new("Liquidity Protection Reset Request", "miax.pearloptions.expressorders.meo.v2.3.liquidityprotectionresetrequest", ftypes.STRING, nil, nil, nil, "Firms use this message format to reset their Order Protection for an underlying")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.liquidity_protection_reset_response = ProtoField.new("Liquidity Protection Reset Response", "miax.pearloptions.expressorders.meo.v2.3.liquidityprotectionresetresponse", ftypes.STRING, nil, nil, nil, "This message format is used to inform the firms of the status of their Order Protection Reset Request")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.liquidity_protection_trigger_notification = ProtoField.new("Liquidity Protection Trigger Notification", "miax.pearloptions.expressorders.meo.v2.3.liquidityprotectiontriggernotification", ftypes.STRING, nil, nil, nil, "This message format will be used to notify firms when order protection is triggered for an MPID")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.opening_width_relief_notification = ProtoField.new("Opening Width Relief Notification", "miax.pearloptions.expressorders.meo.v2.3.openingwidthreliefnotification", ftypes.STRING, nil, nil, nil, "This message format will be used to notify the firms if and when Pearl grants relief from valid opening width parameters for Opening as specified by regulatory circulars of Pearl")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.order_notification = ProtoField.new("Order Notification", "miax.pearloptions.expressorders.meo.v2.3.ordernotification", ftypes.STRING, nil, nil, nil, "This is the message format that will be used to notify firms about orders sent by firms. Note that this is sent for new orders only (including replaces) and it is meant to provide a copy of the order")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.self_trade_protection_designation_request = ProtoField.new("Self Trade Protection Designation Request", "miax.pearloptions.expressorders.meo.v2.3.selftradeprotectiondesignationrequest", ftypes.STRING, nil, nil, nil, "Firms can use this message format to communicate to Pearl which of their EEM MPIDs are designated for self-trade protection")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.self_trade_protection_designation_response = ProtoField.new("Self Trade Protection Designation Response", "miax.pearloptions.expressorders.meo.v2.3.selftradeprotectiondesignationresponse", ftypes.STRING, nil, nil, nil, "Pearl uses this format to respond to the firm assignment request")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.series_assignment_request = ProtoField.new("Series Assignment Request", "miax.pearloptions.expressorders.meo.v2.3.seriesassignmentrequest", ftypes.STRING, nil, nil, nil, "Market Making firms can use this message format to communicate to Pearl which of their MM MPIDs is assigned or unassigned in a product")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.series_assignment_response = ProtoField.new("Series Assignment Response", "miax.pearloptions.expressorders.meo.v2.3.seriesassignmentresponse", ftypes.STRING, nil, nil, nil, "Pearl uses this format to respond to the firm assignment request")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.series_update = ProtoField.new("Series Update", "miax.pearloptions.expressorders.meo.v2.3.seriesupdate", ftypes.STRING, nil, nil, nil, "This is the message format that will be used to disseminate all Option series traded on Pearl for the current session on the cloud associated for this connection")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.single_side_liquidity_protection_reset_request = ProtoField.new("Single Side Liquidity Protection Reset Request", "miax.pearloptions.expressorders.meo.v2.3.singlesideliquidityprotectionresetrequest", ftypes.STRING, nil, nil, nil, "Request to reset Single Side Liquidity Protection for the specific Option and Side for a given MPID")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.single_side_liquidity_protection_reset_response = ProtoField.new("Single Side Liquidity Protection Reset Response", "miax.pearloptions.expressorders.meo.v2.3.singlesideliquidityprotectionresetresponse", ftypes.STRING, nil, nil, nil, "Response to Single Side Liquidity Protection Reset Request")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.single_side_liquidity_protection_trigger_notification = ProtoField.new("Single Side Liquidity Protection Trigger Notification", "miax.pearloptions.expressorders.meo.v2.3.singlesideliquidityprotectiontriggernotification", ftypes.STRING, nil, nil, nil, "This message format will be used to notify firms when a Single Side Liquidity Protection is triggered for an Option")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.slap_protection_trigger_notification = ProtoField.new("Slap Protection Trigger Notification", "miax.pearloptions.expressorders.meo.v2.3.slapprotectiontriggernotification", ftypes.STRING, nil, nil, nil, "This message format will be used to notify firms when SLAP protection is triggered for an MPID and Underlying")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.system_state_notification = ProtoField.new("System State Notification", "miax.pearloptions.expressorders.meo.v2.3.systemstatenotification", ftypes.STRING, nil, nil, nil, "This message format is used to notify the firms of the state changes of the system. This is an exchange-wide notification and not a symbol or member-based notification")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.underlying_trading_status_notification = ProtoField.new("Underlying Trading Status Notification", "miax.pearloptions.expressorders.meo.v2.3.underlyingtradingstatusnotification", ftypes.STRING, nil, nil, nil, "This message format will be used to notify the firms of changes to the trading status of all the options of an underlying")

-- Miax PearlOptions ExpressOrders 2.3 Session Messages
omi_miax_pearloptions_expressorders_meo_v2_3.fields.client_heartbeat = ProtoField.new("Client Heartbeat", "miax.pearloptions.expressorders.meo.v2.3.clientheartbeat", ftypes.BYTES, nil, nil, nil, "The client should send a Client Heartbeat packet anytime more than 1 second passes where no data has been sent to the server")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.end_of_session = ProtoField.new("End Of Session", "miax.pearloptions.expressorders.meo.v2.3.endofsession", ftypes.BYTES, nil, nil, nil, "The server will send an End of Session packet to denote that the current session is finished")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.goodbye_packet = ProtoField.new("Goodbye Packet", "miax.pearloptions.expressorders.meo.v2.3.goodbyepacket", ftypes.STRING, nil, nil, nil, "The server may send a GoodBye packet to inform the client a reason for termination of the connection just before it terminates the connection")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.login_request = ProtoField.new("Login Request", "miax.pearloptions.expressorders.meo.v2.3.loginrequest", ftypes.STRING, nil, nil, nil, "The SesM client uses this packet to allow the server to authenticate the client and to convey to the server the last sequenced packet that the client received")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.login_response = ProtoField.new("Login Response", "miax.pearloptions.expressorders.meo.v2.3.loginresponse", ftypes.STRING, nil, nil, nil, "The SesM server sends a Login response packet in response to a Login request packet from the client")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.logout_request = ProtoField.new("Logout Request", "miax.pearloptions.expressorders.meo.v2.3.logoutrequest", ftypes.STRING, nil, nil, nil, "The client may send a Logout request packet to request the connection be terminated")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.retransmission_request = ProtoField.new("Retransmission Request", "miax.pearloptions.expressorders.meo.v2.3.retransmissionrequest", ftypes.STRING, nil, nil, nil, "The SesM client uses this packet to request the server to retransmit a range of packets")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.server_heartbeat = ProtoField.new("Server Heartbeat", "miax.pearloptions.expressorders.meo.v2.3.serverheartbeat", ftypes.BYTES, nil, nil, nil, "The server should send a Server Heartbeat packet anytime more than 1 second passes where no data has been sent to the client")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.synchronization_complete = ProtoField.new("Synchronization Complete", "miax.pearloptions.expressorders.meo.v2.3.synchronizationcomplete", ftypes.BYTES, nil, nil, nil, "The server sends a Synchronization complete packet when it is done replaying all the old packets and is ready to start sending new packets")
omi_miax_pearloptions_expressorders_meo_v2_3.fields.test_packet = ProtoField.new("Test Packet", "miax.pearloptions.expressorders.meo.v2.3.testpacket", ftypes.STRING, nil, nil, nil, "A Test packet can be sent by either side of a SesM connection at anytime; Test packets are intended to provide human readable text that may aid in debugging problems")

-- Miax PearlOptions ExpressOrders Meo 2.3 Generated Fields
omi_miax_pearloptions_expressorders_meo_v2_3.fields.liquidity_units_index = ProtoField.new("Liquidity Units Index", "miax.pearloptions.expressorders.meo.v2.3.liquidityunitsindex", ftypes.UINT16)
omi_miax_pearloptions_expressorders_meo_v2_3.fields.order_response_index = ProtoField.new("Order Response Index", "miax.pearloptions.expressorders.meo.v2.3.orderresponseindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Miax PearlOptions ExpressOrders Meo 2.3 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime Local", 2 },
  { 4, "Full DateTime Utc", 3 }
}

-- 0=Raw, 1=Time of Day, 2=Full DateTime Local, 3=Full DateTime Utc
miax_pearloptions_expressorders_meo_v2_3.timestamp_format = 2


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Miax PearlOptions ExpressOrders Meo 2.3 Element Dissection Options
show.application_messages = true
show.session_messages = true
show.repeating_groups = true
show.structs = true
show.headers = true
show.padding = false
show.indexes = true

-- Register Miax PearlOptions ExpressOrders Meo 2.3 Show Options
omi_miax_pearloptions_expressorders_meo_v2_3.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_miax_pearloptions_expressorders_meo_v2_3.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_miax_pearloptions_expressorders_meo_v2_3.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_miax_pearloptions_expressorders_meo_v2_3.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_miax_pearloptions_expressorders_meo_v2_3.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_miax_pearloptions_expressorders_meo_v2_3.prefs.show_padding = Pref.bool("Show Padding", show.padding, "Parse and add Padding to protocol tree")
omi_miax_pearloptions_expressorders_meo_v2_3.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_miax_pearloptions_expressorders_meo_v2_3.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Display format for this protocol's timestamps", timestamp_format_enum, false)

-- Handle changed preferences
function omi_miax_pearloptions_expressorders_meo_v2_3.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_miax_pearloptions_expressorders_meo_v2_3.prefs.show_application_messages then
    show.application_messages = omi_miax_pearloptions_expressorders_meo_v2_3.prefs.show_application_messages
  end
  if show.headers ~= omi_miax_pearloptions_expressorders_meo_v2_3.prefs.show_headers then
    show.headers = omi_miax_pearloptions_expressorders_meo_v2_3.prefs.show_headers
  end
  if show.padding ~= omi_miax_pearloptions_expressorders_meo_v2_3.prefs.show_padding then
    show.padding = omi_miax_pearloptions_expressorders_meo_v2_3.prefs.show_padding
  end
  if show.repeating_groups ~= omi_miax_pearloptions_expressorders_meo_v2_3.prefs.show_repeating_groups then
    show.repeating_groups = omi_miax_pearloptions_expressorders_meo_v2_3.prefs.show_repeating_groups
  end
  if show.session_messages ~= omi_miax_pearloptions_expressorders_meo_v2_3.prefs.show_session_messages then
    show.session_messages = omi_miax_pearloptions_expressorders_meo_v2_3.prefs.show_session_messages
  end
  if show.structs ~= omi_miax_pearloptions_expressorders_meo_v2_3.prefs.show_structs then
    show.structs = omi_miax_pearloptions_expressorders_meo_v2_3.prefs.show_structs
  end
  if show.indexes ~= omi_miax_pearloptions_expressorders_meo_v2_3.prefs.show_indexes then
    show.indexes = omi_miax_pearloptions_expressorders_meo_v2_3.prefs.show_indexes
  end
  if miax_pearloptions_expressorders_meo_v2_3.timestamp_format ~= omi_miax_pearloptions_expressorders_meo_v2_3.prefs.timestamp_format then
    miax_pearloptions_expressorders_meo_v2_3.timestamp_format = omi_miax_pearloptions_expressorders_meo_v2_3.prefs.timestamp_format
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
-- Miax PearlOptions ExpressOrders Meo 2.3 Fields
-----------------------------------------------------------------------

-- Account
miax_pearloptions_expressorders_meo_v2_3.account = {}

-- Size: Account
miax_pearloptions_expressorders_meo_v2_3.account.size = 10

-- Display: Account
miax_pearloptions_expressorders_meo_v2_3.account.display = function(value)
  return "Account: "..value
end

-- Dissect: Account
miax_pearloptions_expressorders_meo_v2_3.account.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.account.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearloptions_expressorders_meo_v2_3.account.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.account, range, value, display)

  return offset + length, value
end

-- Action
miax_pearloptions_expressorders_meo_v2_3.action = {}

-- Size: Action
miax_pearloptions_expressorders_meo_v2_3.action.size = 1

-- Display: Action
miax_pearloptions_expressorders_meo_v2_3.action.labels = {
  ["S"] = "Action: Set (S)",
  ["D"] = "Action: Delete (D)",
  ["A"] = "Action: Assign (A)",
  ["U"] = "Action: Unassign (U)",
}

miax_pearloptions_expressorders_meo_v2_3.action.display = function(value)
  return miax_pearloptions_expressorders_meo_v2_3.action.labels[value] or "Action: Unknown("..value..")"
end

-- Dissect: Action
miax_pearloptions_expressorders_meo_v2_3.action.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_expressorders_meo_v2_3.action.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.action, range, value, display)

  return offset + length, value
end

-- Active On Pearl
miax_pearloptions_expressorders_meo_v2_3.active_on_pearl = {}

-- Size: Active On Pearl
miax_pearloptions_expressorders_meo_v2_3.active_on_pearl.size = 1

-- Display: Active On Pearl
miax_pearloptions_expressorders_meo_v2_3.active_on_pearl.labels = {
  ["A"] = "Active On Pearl: Active Tradable On Pearl (A)",
  ["I"] = "Active On Pearl: Inactive Not Tradable On Pearl (I)",
}

miax_pearloptions_expressorders_meo_v2_3.active_on_pearl.display = function(value)
  return miax_pearloptions_expressorders_meo_v2_3.active_on_pearl.labels[value] or "Active On Pearl: Unknown("..value..")"
end

-- Dissect: Active On Pearl
miax_pearloptions_expressorders_meo_v2_3.active_on_pearl.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.active_on_pearl.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_expressorders_meo_v2_3.active_on_pearl.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.active_on_pearl, range, value, display)

  return offset + length, value
end

-- Allowable Engagement Percentage
miax_pearloptions_expressorders_meo_v2_3.allowable_engagement_percentage = {}

-- Size: Allowable Engagement Percentage
miax_pearloptions_expressorders_meo_v2_3.allowable_engagement_percentage.size = 4

-- Display: Allowable Engagement Percentage
miax_pearloptions_expressorders_meo_v2_3.allowable_engagement_percentage.display = function(value)
  return "Allowable Engagement Percentage: "..value
end

-- Dissect: Allowable Engagement Percentage
miax_pearloptions_expressorders_meo_v2_3.allowable_engagement_percentage.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.allowable_engagement_percentage.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_expressorders_meo_v2_3.allowable_engagement_percentage.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.allowable_engagement_percentage, range, value, display)

  return offset + length, value
end

-- Application Protocol
miax_pearloptions_expressorders_meo_v2_3.application_protocol = {}

-- Size: Application Protocol
miax_pearloptions_expressorders_meo_v2_3.application_protocol.size = 8

-- Display: Application Protocol
miax_pearloptions_expressorders_meo_v2_3.application_protocol.display = function(value)
  return "Application Protocol: "..value
end

-- Dissect: Application Protocol
miax_pearloptions_expressorders_meo_v2_3.application_protocol.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.application_protocol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearloptions_expressorders_meo_v2_3.application_protocol.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.application_protocol, range, value, display)

  return offset + length, value
end

-- Arm 2 Settings Update Status
miax_pearloptions_expressorders_meo_v2_3.arm_2_settings_update_status = {}

-- Size: Arm 2 Settings Update Status
miax_pearloptions_expressorders_meo_v2_3.arm_2_settings_update_status.size = 1

-- Display: Arm 2 Settings Update Status
miax_pearloptions_expressorders_meo_v2_3.arm_2_settings_update_status.display = function(value)
  if value == " " then
    return "Arm 2 Settings Update Status: Settings Applied Successfully (<whitespace>)"
  end
  if value == "A" then
    return "Arm 2 Settings Update Status: Invalid Action (A)"
  end
  if value == "P" then
    return "Arm 2 Settings Update Status: Invalid Arm Threshold (P)"
  end
  if value == "D" then
    return "Arm 2 Settings Update Status: Invalid Counting Period (D)"
  end
  if value == "I" then
    return "Arm 2 Settings Update Status: Invalid For Eem Mpid (I)"
  end
  if value == "M" then
    return "Arm 2 Settings Update Status: Unknown Mpid (M)"
  end
  if value == "U" then
    return "Arm 2 Settings Update Status: Invalid Underlying (U)"
  end
  if value == "N" then
    return "Arm 2 Settings Update Status: No Such Arm 2 Setting (N)"
  end
  if value == "Z" then
    return "Arm 2 Settings Update Status: Undefined Error (Z)"
  end
  if value == "*" then
    return "Arm 2 Settings Update Status: Downgraded From Older Version (*)"
  end

  return "Arm 2 Settings Update Status: Unknown("..value..")"
end

-- Dissect: Arm 2 Settings Update Status
miax_pearloptions_expressorders_meo_v2_3.arm_2_settings_update_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.arm_2_settings_update_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_expressorders_meo_v2_3.arm_2_settings_update_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.arm_2_settings_update_status, range, value, display)

  return offset + length, value
end

-- Arm Settings Update Status
miax_pearloptions_expressorders_meo_v2_3.arm_settings_update_status = {}

-- Size: Arm Settings Update Status
miax_pearloptions_expressorders_meo_v2_3.arm_settings_update_status.size = 1

-- Display: Arm Settings Update Status
miax_pearloptions_expressorders_meo_v2_3.arm_settings_update_status.display = function(value)
  if value == " " then
    return "Arm Settings Update Status: Settings Applied Successfully (<whitespace>)"
  end
  if value == "A" then
    return "Arm Settings Update Status: Invalid Action (A)"
  end
  if value == "B" then
    return "Arm Settings Update Status: Invalid Origin Multiplier Value (B)"
  end
  if value == "C" then
    return "Arm Settings Update Status: Enhanced Arm Feature Is Disabled (C)"
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
  if value == "N" then
    return "Arm Settings Update Status: No Such Arm Settings (N)"
  end
  if value == "Z" then
    return "Arm Settings Update Status: Undefined Error (Z)"
  end
  if value == "*" then
    return "Arm Settings Update Status: Downgraded From Older Version (*)"
  end

  return "Arm Settings Update Status: Unknown("..value..")"
end

-- Dissect: Arm Settings Update Status
miax_pearloptions_expressorders_meo_v2_3.arm_settings_update_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.arm_settings_update_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_expressorders_meo_v2_3.arm_settings_update_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.arm_settings_update_status, range, value, display)

  return offset + length, value
end

-- Arm Threshold Count Binary 4u 4
miax_pearloptions_expressorders_meo_v2_3.arm_threshold_count_binary_4u_4 = {}

-- Size: Arm Threshold Count Binary 4u 4
miax_pearloptions_expressorders_meo_v2_3.arm_threshold_count_binary_4u_4.size = 4

-- Display: Arm Threshold Count Binary 4u 4
miax_pearloptions_expressorders_meo_v2_3.arm_threshold_count_binary_4u_4.display = function(value)
  return "Arm Threshold Count Binary 4u 4: "..value
end

-- Dissect: Arm Threshold Count Binary 4u 4
miax_pearloptions_expressorders_meo_v2_3.arm_threshold_count_binary_4u_4.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.arm_threshold_count_binary_4u_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_expressorders_meo_v2_3.arm_threshold_count_binary_4u_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.arm_threshold_count_binary_4u_4, range, value, display)

  return offset + length, value
end

-- Arm Threshold Count Binary U 4
miax_pearloptions_expressorders_meo_v2_3.arm_threshold_count_binary_u_4 = {}

-- Size: Arm Threshold Count Binary U 4
miax_pearloptions_expressorders_meo_v2_3.arm_threshold_count_binary_u_4.size = 4

-- Display: Arm Threshold Count Binary U 4
miax_pearloptions_expressorders_meo_v2_3.arm_threshold_count_binary_u_4.display = function(value)
  return "Arm Threshold Count Binary U 4: "..value
end

-- Dissect: Arm Threshold Count Binary U 4
miax_pearloptions_expressorders_meo_v2_3.arm_threshold_count_binary_u_4.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.arm_threshold_count_binary_u_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_expressorders_meo_v2_3.arm_threshold_count_binary_u_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.arm_threshold_count_binary_u_4, range, value, display)

  return offset + length, value
end

-- Assignment Settings Status
miax_pearloptions_expressorders_meo_v2_3.assignment_settings_status = {}

-- Size: Assignment Settings Status
miax_pearloptions_expressorders_meo_v2_3.assignment_settings_status.size = 1

-- Display: Assignment Settings Status
miax_pearloptions_expressorders_meo_v2_3.assignment_settings_status.display = function(value)
  if value == " " then
    return "Assignment Settings Status: Settings Applied Successfully (<whitespace>)"
  end
  if value == "A" then
    return "Assignment Settings Status: Invalid Action (A)"
  end
  if value == "M" then
    return "Assignment Settings Status: Unknown Mpid (M)"
  end
  if value == "E" then
    return "Assignment Settings Status: Invalid Request For Eem Mpid (E)"
  end
  if value == "T" then
    return "Assignment Settings Status: Settings Not Permitted (T)"
  end
  if value == "I" then
    return "Assignment Settings Status: Invalid Product Code (I)"
  end
  if value == "P" then
    return "Assignment Settings Status: Assignment Cannot Be For Put Options (P)"
  end
  if value == "Z" then
    return "Assignment Settings Status: Undefined Error (Z)"
  end
  if value == "*" then
    return "Assignment Settings Status: Downgraded From Older Version (*)"
  end

  return "Assignment Settings Status: Unknown("..value..")"
end

-- Dissect: Assignment Settings Status
miax_pearloptions_expressorders_meo_v2_3.assignment_settings_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.assignment_settings_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_expressorders_meo_v2_3.assignment_settings_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.assignment_settings_status, range, value, display)

  return offset + length, value
end

-- Away Market Maker Origin Multiplier
miax_pearloptions_expressorders_meo_v2_3.away_market_maker_origin_multiplier = {}

-- Size: Away Market Maker Origin Multiplier
miax_pearloptions_expressorders_meo_v2_3.away_market_maker_origin_multiplier.size = 2

-- Display: Away Market Maker Origin Multiplier
miax_pearloptions_expressorders_meo_v2_3.away_market_maker_origin_multiplier.display = function(value)
  return "Away Market Maker Origin Multiplier: "..value
end

-- Dissect: Away Market Maker Origin Multiplier
miax_pearloptions_expressorders_meo_v2_3.away_market_maker_origin_multiplier.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.away_market_maker_origin_multiplier.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_expressorders_meo_v2_3.away_market_maker_origin_multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.away_market_maker_origin_multiplier, range, value, display)

  return offset + length, value
end

-- Broker Dealer Origin Multiplier
miax_pearloptions_expressorders_meo_v2_3.broker_dealer_origin_multiplier = {}

-- Size: Broker Dealer Origin Multiplier
miax_pearloptions_expressorders_meo_v2_3.broker_dealer_origin_multiplier.size = 2

-- Display: Broker Dealer Origin Multiplier
miax_pearloptions_expressorders_meo_v2_3.broker_dealer_origin_multiplier.display = function(value)
  return "Broker Dealer Origin Multiplier: "..value
end

-- Dissect: Broker Dealer Origin Multiplier
miax_pearloptions_expressorders_meo_v2_3.broker_dealer_origin_multiplier.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.broker_dealer_origin_multiplier.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_expressorders_meo_v2_3.broker_dealer_origin_multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.broker_dealer_origin_multiplier, range, value, display)

  return offset + length, value
end

-- Bulk Order Index
miax_pearloptions_expressorders_meo_v2_3.bulk_order_index = {}

-- Size: Bulk Order Index
miax_pearloptions_expressorders_meo_v2_3.bulk_order_index.size = 1

-- Display: Bulk Order Index
miax_pearloptions_expressorders_meo_v2_3.bulk_order_index.display = function(value)
  return "Bulk Order Index: "..value
end

-- Dissect: Bulk Order Index
miax_pearloptions_expressorders_meo_v2_3.bulk_order_index.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.bulk_order_index.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_pearloptions_expressorders_meo_v2_3.bulk_order_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.bulk_order_index, range, value, display)

  return offset + length, value
end

-- Bulk Order Status
miax_pearloptions_expressorders_meo_v2_3.bulk_order_status = {}

-- Size: Bulk Order Status
miax_pearloptions_expressorders_meo_v2_3.bulk_order_status.size = 1

-- Display: Bulk Order Status
miax_pearloptions_expressorders_meo_v2_3.bulk_order_status.display = function(value)
  if value == " " then
    return "Bulk Order Status: Bulk Liquidity Block Is Valid (<whitespace>)"
  end
  if value == "R" then
    return "Bulk Order Status: Invalid Bulk Liquidity Block (R)"
  end
  if value == "Z" then
    return "Bulk Order Status: Undefined Error (Z)"
  end

  return "Bulk Order Status: Unknown("..value..")"
end

-- Dissect: Bulk Order Status
miax_pearloptions_expressorders_meo_v2_3.bulk_order_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.bulk_order_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_expressorders_meo_v2_3.bulk_order_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.bulk_order_status, range, value, display)

  return offset + length, value
end

-- Call Or Put
miax_pearloptions_expressorders_meo_v2_3.call_or_put = {}

-- Size: Call Or Put
miax_pearloptions_expressorders_meo_v2_3.call_or_put.size = 1

-- Display: Call Or Put
miax_pearloptions_expressorders_meo_v2_3.call_or_put.labels = {
  ["C"] = "Call Or Put: Call (C)",
  ["P"] = "Call Or Put: Put (P)",
}

miax_pearloptions_expressorders_meo_v2_3.call_or_put.display = function(value)
  return miax_pearloptions_expressorders_meo_v2_3.call_or_put.labels[value] or "Call Or Put: Unknown("..value..")"
end

-- Dissect: Call Or Put
miax_pearloptions_expressorders_meo_v2_3.call_or_put.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.call_or_put.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_expressorders_meo_v2_3.call_or_put.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.call_or_put, range, value, display)

  return offset + length, value
end

-- Cancel Reason
miax_pearloptions_expressorders_meo_v2_3.cancel_reason = {}

-- Size: Cancel Reason
miax_pearloptions_expressorders_meo_v2_3.cancel_reason.size = 1

-- Display: Cancel Reason
miax_pearloptions_expressorders_meo_v2_3.cancel_reason.labels = {
  ["L"] = "Cancel Reason: Line Disconnect Triggered Protection Standard Hybrid Mass Cancel (L)",
  ["B"] = "Cancel Reason: Pearl Help Desk Initiated Cancel (B)",
  ["U"] = "Cancel Reason: Firm Initiated Standard Hybrid Mass Cancel (U)",
  ["R"] = "Cancel Reason: Pearl Initiated Hybrid Mass Cancel Due To Arm Protection (R)",
  ["O"] = "Cancel Reason: Rpm Binary Order Rate Protection Trigger Standard Mass Cancel (O)",
  ["T"] = "Cancel Reason: Rpm Binary Order Executed Contracts Rate Protection Trigger Standard Mass Cancel (T)",
  ["F"] = "Cancel Reason: Arm 2 Firm Level Protection Initiated Hybrid Mass Cancel (F)",
  ["A"] = "Cancel Reason: Price Protection Canceled (A)",
  ["C"] = "Cancel Reason: Cancel Of Resting Order Crossed By Opposite Side Order Of Same Mpid Or Firm (C)",
  ["D"] = "Cancel Reason: Luld Canceled (D)",
  ["J"] = "Cancel Reason: Canceled By User With Cancel Or Replace Request (J)",
  ["M"] = "Cancel Reason: Canceled Due To Replace Request While Blocked By Rpm Protection (M)",
  ["P"] = "Cancel Reason: Post Only Canceled Due To Locking Or Crossing Managed Interest On The Opposite Side (P)",
  ["S"] = "Cancel Reason: Cancel For Unexecuted Part Of Order (S)",
  ["Q"] = "Cancel Reason: Canceled Due To Single Side Liquidity Protection Trigger (Q)",
  ["G"] = "Cancel Reason: A R Order Cancelled Due To Rejection Of An A R Replace Request (G)",
  ["H"] = "Cancel Reason: Firm Initiated Slap Protection (H)",
  ["I"] = "Cancel Reason: Standard Order Canceled Due To Replace Request While Blocked By Slap Protection (I)",
  ["Z"] = "Cancel Reason: Undefined Reason (Z)",
  ["*"] = "Cancel Reason: Downgraded From Older Version (*)",
}

miax_pearloptions_expressorders_meo_v2_3.cancel_reason.display = function(value)
  return miax_pearloptions_expressorders_meo_v2_3.cancel_reason.labels[value] or "Cancel Reason: Unknown("..value..")"
end

-- Dissect: Cancel Reason
miax_pearloptions_expressorders_meo_v2_3.cancel_reason.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.cancel_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_expressorders_meo_v2_3.cancel_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.cancel_reason, range, value, display)

  return offset + length, value
end

-- Clearing Account
miax_pearloptions_expressorders_meo_v2_3.clearing_account = {}

-- Size: Clearing Account
miax_pearloptions_expressorders_meo_v2_3.clearing_account.size = 5

-- Display: Clearing Account
miax_pearloptions_expressorders_meo_v2_3.clearing_account.display = function(value)
  return "Clearing Account: "..value
end

-- Dissect: Clearing Account
miax_pearloptions_expressorders_meo_v2_3.clearing_account.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.clearing_account.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearloptions_expressorders_meo_v2_3.clearing_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.clearing_account, range, value, display)

  return offset + length, value
end

-- Client Message Id
miax_pearloptions_expressorders_meo_v2_3.client_message_id = {}

-- Size: Client Message Id
miax_pearloptions_expressorders_meo_v2_3.client_message_id.size = 4

-- Display: Client Message Id
miax_pearloptions_expressorders_meo_v2_3.client_message_id.display = function(value)
  return "Client Message Id: "..value
end

-- Dissect: Client Message Id
miax_pearloptions_expressorders_meo_v2_3.client_message_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.client_message_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_expressorders_meo_v2_3.client_message_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.client_message_id, range, value, display)

  return offset + length, value
end

-- Client Order Id
miax_pearloptions_expressorders_meo_v2_3.client_order_id = {}

-- Size: Client Order Id
miax_pearloptions_expressorders_meo_v2_3.client_order_id.size = 4

-- Display: Client Order Id
miax_pearloptions_expressorders_meo_v2_3.client_order_id.display = function(value)
  return "Client Order Id: "..value
end

-- Dissect: Client Order Id
miax_pearloptions_expressorders_meo_v2_3.client_order_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.client_order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_expressorders_meo_v2_3.client_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.client_order_id, range, value, display)

  return offset + length, value
end

-- Client Send Time
miax_pearloptions_expressorders_meo_v2_3.client_send_time = {}

-- Size: Client Send Time
miax_pearloptions_expressorders_meo_v2_3.client_send_time.size = 8

-- Dissect: Client Send Time
miax_pearloptions_expressorders_meo_v2_3.client_send_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.client_send_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_miax_pearloptions_expressorders_meo_v2_3.fields.client_send_time
  if miax_pearloptions_expressorders_meo_v2_3.timestamp_format == 3 then field = omi_miax_pearloptions_expressorders_meo_v2_3.fields.client_send_time_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Closing Time
miax_pearloptions_expressorders_meo_v2_3.closing_time = {}

-- Size: Closing Time
miax_pearloptions_expressorders_meo_v2_3.closing_time.size = 8

-- Display: Closing Time
miax_pearloptions_expressorders_meo_v2_3.closing_time.display = function(value)
  return "Closing Time: "..value
end

-- Dissect: Closing Time
miax_pearloptions_expressorders_meo_v2_3.closing_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.closing_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearloptions_expressorders_meo_v2_3.closing_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.closing_time, range, value, display)

  return offset + length, value
end

-- Cmta
miax_pearloptions_expressorders_meo_v2_3.cmta = {}

-- Size: Cmta
miax_pearloptions_expressorders_meo_v2_3.cmta.size = 4

-- Display: Cmta
miax_pearloptions_expressorders_meo_v2_3.cmta.display = function(value)
  return "Cmta: "..value
end

-- Dissect: Cmta
miax_pearloptions_expressorders_meo_v2_3.cmta.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.cmta.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_expressorders_meo_v2_3.cmta.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.cmta, range, value, display)

  return offset + length, value
end

-- Computer Id
miax_pearloptions_expressorders_meo_v2_3.computer_id = {}

-- Size: Computer Id
miax_pearloptions_expressorders_meo_v2_3.computer_id.size = 8

-- Display: Computer Id
miax_pearloptions_expressorders_meo_v2_3.computer_id.display = function(value)
  return "Computer Id: "..value
end

-- Dissect: Computer Id
miax_pearloptions_expressorders_meo_v2_3.computer_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.computer_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearloptions_expressorders_meo_v2_3.computer_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.computer_id, range, value, display)

  return offset + length, value
end

-- Counting Period Binary 4u 4
miax_pearloptions_expressorders_meo_v2_3.counting_period_binary_4u_4 = {}

-- Size: Counting Period Binary 4u 4
miax_pearloptions_expressorders_meo_v2_3.counting_period_binary_4u_4.size = 4

-- Display: Counting Period Binary 4u 4
miax_pearloptions_expressorders_meo_v2_3.counting_period_binary_4u_4.display = function(value)
  return "Counting Period Binary 4u 4: "..value
end

-- Dissect: Counting Period Binary 4u 4
miax_pearloptions_expressorders_meo_v2_3.counting_period_binary_4u_4.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.counting_period_binary_4u_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_expressorders_meo_v2_3.counting_period_binary_4u_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.counting_period_binary_4u_4, range, value, display)

  return offset + length, value
end

-- Counting Period Binary U 2
miax_pearloptions_expressorders_meo_v2_3.counting_period_binary_u_2 = {}

-- Size: Counting Period Binary U 2
miax_pearloptions_expressorders_meo_v2_3.counting_period_binary_u_2.size = 2

-- Display: Counting Period Binary U 2
miax_pearloptions_expressorders_meo_v2_3.counting_period_binary_u_2.display = function(value)
  return "Counting Period Binary U 2: "..value
end

-- Dissect: Counting Period Binary U 2
miax_pearloptions_expressorders_meo_v2_3.counting_period_binary_u_2.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.counting_period_binary_u_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_expressorders_meo_v2_3.counting_period_binary_u_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.counting_period_binary_u_2, range, value, display)

  return offset + length, value
end

-- Counting Period Binary U 4
miax_pearloptions_expressorders_meo_v2_3.counting_period_binary_u_4 = {}

-- Size: Counting Period Binary U 4
miax_pearloptions_expressorders_meo_v2_3.counting_period_binary_u_4.size = 4

-- Display: Counting Period Binary U 4
miax_pearloptions_expressorders_meo_v2_3.counting_period_binary_u_4.display = function(value)
  return "Counting Period Binary U 4: "..value
end

-- Dissect: Counting Period Binary U 4
miax_pearloptions_expressorders_meo_v2_3.counting_period_binary_u_4.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.counting_period_binary_u_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_expressorders_meo_v2_3.counting_period_binary_u_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.counting_period_binary_u_4, range, value, display)

  return offset + length, value
end

-- Covered Uncovered
miax_pearloptions_expressorders_meo_v2_3.covered_uncovered = {}

-- Size: Covered Uncovered
miax_pearloptions_expressorders_meo_v2_3.covered_uncovered.size = 1

-- Display: Covered Uncovered
miax_pearloptions_expressorders_meo_v2_3.covered_uncovered.labels = {
  ["C"] = "Covered Uncovered: Covered (C)",
  ["U"] = "Covered Uncovered: Uncovered (U)",
  ["N"] = "Covered Uncovered: Na (N)",
}

miax_pearloptions_expressorders_meo_v2_3.covered_uncovered.display = function(value)
  return miax_pearloptions_expressorders_meo_v2_3.covered_uncovered.labels[value] or "Covered Uncovered: Unknown("..value..")"
end

-- Dissect: Covered Uncovered
miax_pearloptions_expressorders_meo_v2_3.covered_uncovered.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.covered_uncovered.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_expressorders_meo_v2_3.covered_uncovered.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.covered_uncovered, range, value, display)

  return offset + length, value
end

-- End Sequence Number
miax_pearloptions_expressorders_meo_v2_3.end_sequence_number = {}

-- Size: End Sequence Number
miax_pearloptions_expressorders_meo_v2_3.end_sequence_number.size = 8

-- Display: End Sequence Number
miax_pearloptions_expressorders_meo_v2_3.end_sequence_number.display = function(value)
  return "End Sequence Number: "..value
end

-- Dissect: End Sequence Number
miax_pearloptions_expressorders_meo_v2_3.end_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.end_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearloptions_expressorders_meo_v2_3.end_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.end_sequence_number, range, value, display)

  return offset + length, value
end

-- Engine Sequence Number
miax_pearloptions_expressorders_meo_v2_3.engine_sequence_number = {}

-- Size: Engine Sequence Number
miax_pearloptions_expressorders_meo_v2_3.engine_sequence_number.size = 8

-- Display: Engine Sequence Number
miax_pearloptions_expressorders_meo_v2_3.engine_sequence_number.display = function(value)
  return "Engine Sequence Number: "..value
end

-- Dissect: Engine Sequence Number
miax_pearloptions_expressorders_meo_v2_3.engine_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.engine_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearloptions_expressorders_meo_v2_3.engine_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.engine_sequence_number, range, value, display)

  return offset + length, value
end

-- Event Reason
miax_pearloptions_expressorders_meo_v2_3.event_reason = {}

-- Size: Event Reason
miax_pearloptions_expressorders_meo_v2_3.event_reason.size = 1

-- Display: Event Reason
miax_pearloptions_expressorders_meo_v2_3.event_reason.labels = {
  ["A"] = "Event Reason: This Event Resulted From Automaticmarket Driven Event (A)",
  ["M"] = "Event Reason: Pearl Manually Initiated This Event (M)",
}

miax_pearloptions_expressorders_meo_v2_3.event_reason.display = function(value)
  return miax_pearloptions_expressorders_meo_v2_3.event_reason.labels[value] or "Event Reason: Unknown("..value..")"
end

-- Dissect: Event Reason
miax_pearloptions_expressorders_meo_v2_3.event_reason.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.event_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_expressorders_meo_v2_3.event_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.event_reason, range, value, display)

  return offset + length, value
end

-- Execution Id
miax_pearloptions_expressorders_meo_v2_3.execution_id = {}

-- Size: Execution Id
miax_pearloptions_expressorders_meo_v2_3.execution_id.size = 8

-- Display: Execution Id
miax_pearloptions_expressorders_meo_v2_3.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
miax_pearloptions_expressorders_meo_v2_3.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearloptions_expressorders_meo_v2_3.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Expected Event Time
miax_pearloptions_expressorders_meo_v2_3.expected_event_time = {}

-- Size: Expected Event Time
miax_pearloptions_expressorders_meo_v2_3.expected_event_time.size = 8

-- Display: Expected Event Time
miax_pearloptions_expressorders_meo_v2_3.expected_event_time.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if miax_pearloptions_expressorders_meo_v2_3.timestamp_format == 0 then
    return "Expected Event Time: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (the day the frame that carried it settled on)
  if miax_pearloptions_expressorders_meo_v2_3.timestamp_format >= 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()

    -- A frame a file handler read states no instant and reads as the epoch
    if capture_time >= 86400 then
      -- The venue's midnight: the frame's instant less the time of day it states
      local settled = math.floor((capture_time - seconds) / 900 + 0.5) * 900

      local midnight = math.floor(settled / 86400 + 0.5) * 86400

      local format = miax_pearloptions_expressorders_meo_v2_3.timestamp_format == 3 and "!%Y-%m-%d %H:%M:%S." or "%Y-%m-%d %H:%M:%S."
      return "Expected Event Time: "..os.date(format, midnight + seconds)..string.format("%09d", nanoseconds)
    end
  end

  -- Time of day mode
  return "Expected Event Time: "..os.date("!%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Expected Event Time
miax_pearloptions_expressorders_meo_v2_3.expected_event_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.expected_event_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearloptions_expressorders_meo_v2_3.expected_event_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.expected_event_time, range, value, display)

  return offset + length, value
end

-- Expiration Date
miax_pearloptions_expressorders_meo_v2_3.expiration_date = {}

-- Size: Expiration Date
miax_pearloptions_expressorders_meo_v2_3.expiration_date.size = 8

-- Display: Expiration Date
miax_pearloptions_expressorders_meo_v2_3.expiration_date.display = function(value)
  return "Expiration Date: "..value
end

-- Dissect: Expiration Date
miax_pearloptions_expressorders_meo_v2_3.expiration_date.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.expiration_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearloptions_expressorders_meo_v2_3.expiration_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.expiration_date, range, value, display)

  return offset + length, value
end

-- Firm Origin Multiplier
miax_pearloptions_expressorders_meo_v2_3.firm_origin_multiplier = {}

-- Size: Firm Origin Multiplier
miax_pearloptions_expressorders_meo_v2_3.firm_origin_multiplier.size = 2

-- Display: Firm Origin Multiplier
miax_pearloptions_expressorders_meo_v2_3.firm_origin_multiplier.display = function(value)
  return "Firm Origin Multiplier: "..value
end

-- Dissect: Firm Origin Multiplier
miax_pearloptions_expressorders_meo_v2_3.firm_origin_multiplier.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.firm_origin_multiplier.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_expressorders_meo_v2_3.firm_origin_multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.firm_origin_multiplier, range, value, display)

  return offset + length, value
end

-- Goodbye Reason
miax_pearloptions_expressorders_meo_v2_3.goodbye_reason = {}

-- Size: Goodbye Reason
miax_pearloptions_expressorders_meo_v2_3.goodbye_reason.size = 1

-- Display: Goodbye Reason
miax_pearloptions_expressorders_meo_v2_3.goodbye_reason.labels = {
  ["B"] = "Goodbye Reason: Bad Sesm Packet (B)",
  ["L"] = "Goodbye Reason: Timed Out Waiting For Login Packet (L)",
  ["A"] = "Goodbye Reason: Application Terminating Connection (A)",
}

miax_pearloptions_expressorders_meo_v2_3.goodbye_reason.display = function(value)
  return miax_pearloptions_expressorders_meo_v2_3.goodbye_reason.labels[value] or "Goodbye Reason: Unknown("..value..")"
end

-- Dissect: Goodbye Reason
miax_pearloptions_expressorders_meo_v2_3.goodbye_reason.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.goodbye_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_expressorders_meo_v2_3.goodbye_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.goodbye_reason, range, value, display)

  return offset + length, value
end

-- Highest Sequence Number
miax_pearloptions_expressorders_meo_v2_3.highest_sequence_number = {}

-- Size: Highest Sequence Number
miax_pearloptions_expressorders_meo_v2_3.highest_sequence_number.size = 8

-- Display: Highest Sequence Number
miax_pearloptions_expressorders_meo_v2_3.highest_sequence_number.display = function(value)
  return "Highest Sequence Number: "..value
end

-- Dissect: Highest Sequence Number
miax_pearloptions_expressorders_meo_v2_3.highest_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.highest_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearloptions_expressorders_meo_v2_3.highest_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.highest_sequence_number, range, value, display)

  return offset + length, value
end

-- Invalid Order Count
miax_pearloptions_expressorders_meo_v2_3.invalid_order_count = {}

-- Size: Invalid Order Count
miax_pearloptions_expressorders_meo_v2_3.invalid_order_count.size = 1

-- Display: Invalid Order Count
miax_pearloptions_expressorders_meo_v2_3.invalid_order_count.display = function(value)
  return "Invalid Order Count: "..value
end

-- Dissect: Invalid Order Count
miax_pearloptions_expressorders_meo_v2_3.invalid_order_count.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.invalid_order_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_pearloptions_expressorders_meo_v2_3.invalid_order_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.invalid_order_count, range, value, display)

  return offset + length, value
end

-- Last Price
miax_pearloptions_expressorders_meo_v2_3.last_price = {}

-- Size: Last Price
miax_pearloptions_expressorders_meo_v2_3.last_price.size = 4

-- Display: Last Price
miax_pearloptions_expressorders_meo_v2_3.last_price.display = function(value)
  return "Last Price: "..value
end

-- Translate: Last Price
miax_pearloptions_expressorders_meo_v2_3.last_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Last Price
miax_pearloptions_expressorders_meo_v2_3.last_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.last_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_pearloptions_expressorders_meo_v2_3.last_price.translate(raw)
  local display = miax_pearloptions_expressorders_meo_v2_3.last_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.last_price, range, value, display)

  return offset + length, value
end

-- Last Size
miax_pearloptions_expressorders_meo_v2_3.last_size = {}

-- Size: Last Size
miax_pearloptions_expressorders_meo_v2_3.last_size.size = 4

-- Display: Last Size
miax_pearloptions_expressorders_meo_v2_3.last_size.display = function(value)
  return "Last Size: "..value
end

-- Dissect: Last Size
miax_pearloptions_expressorders_meo_v2_3.last_size.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.last_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_expressorders_meo_v2_3.last_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.last_size, range, value, display)

  return offset + length, value
end

-- Liquidity Indicator
miax_pearloptions_expressorders_meo_v2_3.liquidity_indicator = {}

-- Size: Liquidity Indicator
miax_pearloptions_expressorders_meo_v2_3.liquidity_indicator.size = 1

-- Display: Liquidity Indicator
miax_pearloptions_expressorders_meo_v2_3.liquidity_indicator.display = function(value)
  if value == "M" then
    return "Liquidity Indicator: Maker (M)"
  end
  if value == "T" then
    return "Liquidity Indicator: Taker (T)"
  end
  if value == " " then
    return "Liquidity Indicator: Na (<whitespace>)"
  end
  if value == "*" then
    return "Liquidity Indicator: Downgraded For Older Version (*)"
  end

  return "Liquidity Indicator: Unknown("..value..")"
end

-- Dissect: Liquidity Indicator
miax_pearloptions_expressorders_meo_v2_3.liquidity_indicator.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.liquidity_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_expressorders_meo_v2_3.liquidity_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Liquidity Type
miax_pearloptions_expressorders_meo_v2_3.liquidity_type = {}

-- Size: Liquidity Type
miax_pearloptions_expressorders_meo_v2_3.liquidity_type.size = 1

-- Display: Liquidity Type
miax_pearloptions_expressorders_meo_v2_3.liquidity_type.labels = {
  ["O"] = "Liquidity Type: Binary Order (O)",
  ["X"] = "Liquidity Type: Reserved For Future Use (X)",
}

miax_pearloptions_expressorders_meo_v2_3.liquidity_type.display = function(value)
  return miax_pearloptions_expressorders_meo_v2_3.liquidity_type.labels[value] or "Liquidity Type: Unknown("..value..")"
end

-- Dissect: Liquidity Type
miax_pearloptions_expressorders_meo_v2_3.liquidity_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.liquidity_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_expressorders_meo_v2_3.liquidity_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.liquidity_type, range, value, display)

  return offset + length, value
end

-- Liquidity Unit
miax_pearloptions_expressorders_meo_v2_3.liquidity_unit = {}

-- Size: Liquidity Unit
miax_pearloptions_expressorders_meo_v2_3.liquidity_unit.size = 57

-- Display: Liquidity Unit
miax_pearloptions_expressorders_meo_v2_3.liquidity_unit.display = function(value)
  return "Liquidity Unit: "..value
end

-- Dissect: Liquidity Unit
miax_pearloptions_expressorders_meo_v2_3.liquidity_unit.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.liquidity_unit.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_pearloptions_expressorders_meo_v2_3.liquidity_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.liquidity_unit, range, value, display)

  return offset + length, value
end

-- Liquidity Unit Count
miax_pearloptions_expressorders_meo_v2_3.liquidity_unit_count = {}

-- Size: Liquidity Unit Count
miax_pearloptions_expressorders_meo_v2_3.liquidity_unit_count.size = 1

-- Display: Liquidity Unit Count
miax_pearloptions_expressorders_meo_v2_3.liquidity_unit_count.display = function(value)
  return "Liquidity Unit Count: "..value
end

-- Dissect: Liquidity Unit Count
miax_pearloptions_expressorders_meo_v2_3.liquidity_unit_count.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.liquidity_unit_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_pearloptions_expressorders_meo_v2_3.liquidity_unit_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.liquidity_unit_count, range, value, display)

  return offset + length, value
end

-- Login Status
miax_pearloptions_expressorders_meo_v2_3.login_status = {}

-- Size: Login Status
miax_pearloptions_expressorders_meo_v2_3.login_status.size = 1

-- Display: Login Status
miax_pearloptions_expressorders_meo_v2_3.login_status.display = function(value)
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
miax_pearloptions_expressorders_meo_v2_3.login_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.login_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_expressorders_meo_v2_3.login_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.login_status, range, value, display)

  return offset + length, value
end

-- Logout Reason
miax_pearloptions_expressorders_meo_v2_3.logout_reason = {}

-- Size: Logout Reason
miax_pearloptions_expressorders_meo_v2_3.logout_reason.size = 1

-- Display: Logout Reason
miax_pearloptions_expressorders_meo_v2_3.logout_reason.display = function(value)
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
miax_pearloptions_expressorders_meo_v2_3.logout_reason.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.logout_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_expressorders_meo_v2_3.logout_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.logout_reason, range, value, display)

  return offset + length, value
end

-- Logout Text
miax_pearloptions_expressorders_meo_v2_3.logout_text = {}

-- Display: Logout Text
miax_pearloptions_expressorders_meo_v2_3.logout_text.display = function(value)
  return "Logout Text: "..value
end

-- Dissect runtime sized field: Logout Text
miax_pearloptions_expressorders_meo_v2_3.logout_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = miax_pearloptions_expressorders_meo_v2_3.logout_text.display(value, packet, parent, size)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.logout_text, range, value, display)

  return offset + size, value
end

-- Long Term Option
miax_pearloptions_expressorders_meo_v2_3.long_term_option = {}

-- Size: Long Term Option
miax_pearloptions_expressorders_meo_v2_3.long_term_option.size = 1

-- Display: Long Term Option
miax_pearloptions_expressorders_meo_v2_3.long_term_option.labels = {
  ["Y"] = "Long Term Option: Far Month Expiration As Defined By Pearl Rules (Y)",
  ["N"] = "Long Term Option: Near Month Expiration As Defined By Pearl Rules (N)",
}

miax_pearloptions_expressorders_meo_v2_3.long_term_option.display = function(value)
  return miax_pearloptions_expressorders_meo_v2_3.long_term_option.labels[value] or "Long Term Option: Unknown("..value..")"
end

-- Dissect: Long Term Option
miax_pearloptions_expressorders_meo_v2_3.long_term_option.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.long_term_option.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_expressorders_meo_v2_3.long_term_option.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.long_term_option, range, value, display)

  return offset + length, value
end

-- Market Maker Origin Multiplier
miax_pearloptions_expressorders_meo_v2_3.market_maker_origin_multiplier = {}

-- Size: Market Maker Origin Multiplier
miax_pearloptions_expressorders_meo_v2_3.market_maker_origin_multiplier.size = 2

-- Display: Market Maker Origin Multiplier
miax_pearloptions_expressorders_meo_v2_3.market_maker_origin_multiplier.display = function(value)
  return "Market Maker Origin Multiplier: "..value
end

-- Dissect: Market Maker Origin Multiplier
miax_pearloptions_expressorders_meo_v2_3.market_maker_origin_multiplier.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.market_maker_origin_multiplier.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_expressorders_meo_v2_3.market_maker_origin_multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.market_maker_origin_multiplier, range, value, display)

  return offset + length, value
end

-- Mass Cancel Scope
miax_pearloptions_expressorders_meo_v2_3.mass_cancel_scope = {}

-- Size: Mass Cancel Scope
miax_pearloptions_expressorders_meo_v2_3.mass_cancel_scope.size = 1

-- Display: Mass Cancel Scope
miax_pearloptions_expressorders_meo_v2_3.mass_cancel_scope.labels = {
  ["A"] = "Mass Cancel Scope: Standard Mass Cancel (A)",
  ["D"] = "Mass Cancel Scope: Hybrid Mass Cancel (D)",
  ["S"] = "Mass Cancel Scope: Selective Liquidity Auto Purge Slap (S)",
}

miax_pearloptions_expressorders_meo_v2_3.mass_cancel_scope.display = function(value)
  return miax_pearloptions_expressorders_meo_v2_3.mass_cancel_scope.labels[value] or "Mass Cancel Scope: Unknown("..value..")"
end

-- Dissect: Mass Cancel Scope
miax_pearloptions_expressorders_meo_v2_3.mass_cancel_scope.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.mass_cancel_scope.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_expressorders_meo_v2_3.mass_cancel_scope.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.mass_cancel_scope, range, value, display)

  return offset + length, value
end

-- Meo Version
miax_pearloptions_expressorders_meo_v2_3.meo_version = {}

-- Size: Meo Version
miax_pearloptions_expressorders_meo_v2_3.meo_version.size = 8

-- Display: Meo Version
miax_pearloptions_expressorders_meo_v2_3.meo_version.display = function(value)
  return "Meo Version: "..value
end

-- Dissect: Meo Version
miax_pearloptions_expressorders_meo_v2_3.meo_version.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.meo_version.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearloptions_expressorders_meo_v2_3.meo_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.meo_version, range, value, display)

  return offset + length, value
end

-- Mpid
miax_pearloptions_expressorders_meo_v2_3.mpid = {}

-- Size: Mpid
miax_pearloptions_expressorders_meo_v2_3.mpid.size = 4

-- Display: Mpid
miax_pearloptions_expressorders_meo_v2_3.mpid.display = function(value)
  return "Mpid: "..value
end

-- Dissect: Mpid
miax_pearloptions_expressorders_meo_v2_3.mpid.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.mpid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearloptions_expressorders_meo_v2_3.mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.mpid, range, value, display)

  return offset + length, value
end

-- Mvp
miax_pearloptions_expressorders_meo_v2_3.mvp = {}

-- Size: Mvp
miax_pearloptions_expressorders_meo_v2_3.mvp.size = 1

-- Display: Mvp
miax_pearloptions_expressorders_meo_v2_3.mvp.display = function(value)
  return "Mvp: "..value
end

-- Dissect: Mvp
miax_pearloptions_expressorders_meo_v2_3.mvp.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.mvp.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = miax_pearloptions_expressorders_meo_v2_3.mvp.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.mvp, range, value, display)

  return offset + length, value
end

-- Non Priority Customer Origin Multiplier
miax_pearloptions_expressorders_meo_v2_3.non_priority_customer_origin_multiplier = {}

-- Size: Non Priority Customer Origin Multiplier
miax_pearloptions_expressorders_meo_v2_3.non_priority_customer_origin_multiplier.size = 2

-- Display: Non Priority Customer Origin Multiplier
miax_pearloptions_expressorders_meo_v2_3.non_priority_customer_origin_multiplier.display = function(value)
  return "Non Priority Customer Origin Multiplier: "..value
end

-- Dissect: Non Priority Customer Origin Multiplier
miax_pearloptions_expressorders_meo_v2_3.non_priority_customer_origin_multiplier.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.non_priority_customer_origin_multiplier.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_expressorders_meo_v2_3.non_priority_customer_origin_multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.non_priority_customer_origin_multiplier, range, value, display)

  return offset + length, value
end

-- Notification Time
miax_pearloptions_expressorders_meo_v2_3.notification_time = {}

-- Size: Notification Time
miax_pearloptions_expressorders_meo_v2_3.notification_time.size = 8

-- Display: Notification Time
miax_pearloptions_expressorders_meo_v2_3.notification_time.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if miax_pearloptions_expressorders_meo_v2_3.timestamp_format == 0 then
    return "Notification Time: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (the day the frame that carried it settled on)
  if miax_pearloptions_expressorders_meo_v2_3.timestamp_format >= 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()

    -- A frame a file handler read states no instant and reads as the epoch
    if capture_time >= 86400 then
      -- The venue's midnight: the frame's instant less the time of day it states
      local settled = math.floor((capture_time - seconds) / 900 + 0.5) * 900

      local midnight = math.floor(settled / 86400 + 0.5) * 86400

      local format = miax_pearloptions_expressorders_meo_v2_3.timestamp_format == 3 and "!%Y-%m-%d %H:%M:%S." or "%Y-%m-%d %H:%M:%S."
      return "Notification Time: "..os.date(format, midnight + seconds)..string.format("%09d", nanoseconds)
    end
  end

  -- Time of day mode
  return "Notification Time: "..os.date("!%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Notification Time
miax_pearloptions_expressorders_meo_v2_3.notification_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.notification_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearloptions_expressorders_meo_v2_3.notification_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.notification_time, range, value, display)

  return offset + length, value
end

-- Notification Type
miax_pearloptions_expressorders_meo_v2_3.notification_type = {}

-- Size: Notification Type
miax_pearloptions_expressorders_meo_v2_3.notification_type.size = 1

-- Display: Notification Type
miax_pearloptions_expressorders_meo_v2_3.notification_type.labels = {
  ["T"] = "Notification Type: Triggered (T)",
  ["R"] = "Notification Type: Reset (R)",
  ["*"] = "Notification Type: Downgraded From Older Version (*)",
}

miax_pearloptions_expressorders_meo_v2_3.notification_type.display = function(value)
  return miax_pearloptions_expressorders_meo_v2_3.notification_type.labels[value] or "Notification Type: Unknown("..value..")"
end

-- Dissect: Notification Type
miax_pearloptions_expressorders_meo_v2_3.notification_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.notification_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_expressorders_meo_v2_3.notification_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.notification_type, range, value, display)

  return offset + length, value
end

-- Open Close
miax_pearloptions_expressorders_meo_v2_3.open_close = {}

-- Size: Open Close
miax_pearloptions_expressorders_meo_v2_3.open_close.size = 1

-- Display: Open Close
miax_pearloptions_expressorders_meo_v2_3.open_close.labels = {
  ["O"] = "Open Close: Open (O)",
  ["C"] = "Open Close: Close (C)",
  ["N"] = "Open Close: Na (N)",
}

miax_pearloptions_expressorders_meo_v2_3.open_close.display = function(value)
  return miax_pearloptions_expressorders_meo_v2_3.open_close.labels[value] or "Open Close: Unknown("..value..")"
end

-- Dissect: Open Close
miax_pearloptions_expressorders_meo_v2_3.open_close.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.open_close.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_expressorders_meo_v2_3.open_close.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.open_close, range, value, display)

  return offset + length, value
end

-- Open Size
miax_pearloptions_expressorders_meo_v2_3.open_size = {}

-- Size: Open Size
miax_pearloptions_expressorders_meo_v2_3.open_size.size = 4

-- Display: Open Size
miax_pearloptions_expressorders_meo_v2_3.open_size.display = function(value)
  return "Open Size: "..value
end

-- Dissect: Open Size
miax_pearloptions_expressorders_meo_v2_3.open_size.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.open_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_expressorders_meo_v2_3.open_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.open_size, range, value, display)

  return offset + length, value
end

-- Opening Time
miax_pearloptions_expressorders_meo_v2_3.opening_time = {}

-- Size: Opening Time
miax_pearloptions_expressorders_meo_v2_3.opening_time.size = 8

-- Display: Opening Time
miax_pearloptions_expressorders_meo_v2_3.opening_time.display = function(value)
  return "Opening Time: "..value
end

-- Dissect: Opening Time
miax_pearloptions_expressorders_meo_v2_3.opening_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.opening_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearloptions_expressorders_meo_v2_3.opening_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.opening_time, range, value, display)

  return offset + length, value
end

-- Opening Underlying Market Code
miax_pearloptions_expressorders_meo_v2_3.opening_underlying_market_code = {}

-- Size: Opening Underlying Market Code
miax_pearloptions_expressorders_meo_v2_3.opening_underlying_market_code.size = 1

-- Display: Opening Underlying Market Code
miax_pearloptions_expressorders_meo_v2_3.opening_underlying_market_code.labels = {
  ["A"] = "Opening Underlying Market Code: Nyse Amex (A)",
  ["B"] = "Opening Underlying Market Code: Nasdaq Texas (B)",
  ["C"] = "Opening Underlying Market Code: National Stock Exchange (C)",
  ["D"] = "Opening Underlying Market Code: Finra Adf (D)",
  ["E"] = "Opening Underlying Market Code: Market Independent (E)",
  ["F"] = "Opening Underlying Market Code: Txse (F)",
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

miax_pearloptions_expressorders_meo_v2_3.opening_underlying_market_code.display = function(value)
  return miax_pearloptions_expressorders_meo_v2_3.opening_underlying_market_code.labels[value] or "Opening Underlying Market Code: Unknown("..value..")"
end

-- Dissect: Opening Underlying Market Code
miax_pearloptions_expressorders_meo_v2_3.opening_underlying_market_code.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.opening_underlying_market_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_expressorders_meo_v2_3.opening_underlying_market_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.opening_underlying_market_code, range, value, display)

  return offset + length, value
end

-- Order Acceptance Increment Indicator
miax_pearloptions_expressorders_meo_v2_3.order_acceptance_increment_indicator = {}

-- Size: Order Acceptance Increment Indicator
miax_pearloptions_expressorders_meo_v2_3.order_acceptance_increment_indicator.size = 1

-- Display: Order Acceptance Increment Indicator
miax_pearloptions_expressorders_meo_v2_3.order_acceptance_increment_indicator.labels = {
  ["P"] = "Order Acceptance Increment Indicator: Penny Penny (P)",
  ["N"] = "Order Acceptance Increment Indicator: Penny Nickel (N)",
  ["D"] = "Order Acceptance Increment Indicator: Nickel Dime (D)",
}

miax_pearloptions_expressorders_meo_v2_3.order_acceptance_increment_indicator.display = function(value)
  return miax_pearloptions_expressorders_meo_v2_3.order_acceptance_increment_indicator.labels[value] or "Order Acceptance Increment Indicator: Unknown("..value..")"
end

-- Dissect: Order Acceptance Increment Indicator
miax_pearloptions_expressorders_meo_v2_3.order_acceptance_increment_indicator.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.order_acceptance_increment_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_expressorders_meo_v2_3.order_acceptance_increment_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.order_acceptance_increment_indicator, range, value, display)

  return offset + length, value
end

-- Order Ack Time
miax_pearloptions_expressorders_meo_v2_3.order_ack_time = {}

-- Size: Order Ack Time
miax_pearloptions_expressorders_meo_v2_3.order_ack_time.size = 8

-- Display: Order Ack Time
miax_pearloptions_expressorders_meo_v2_3.order_ack_time.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if miax_pearloptions_expressorders_meo_v2_3.timestamp_format == 0 then
    return "Order Ack Time: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (the day the frame that carried it settled on)
  if miax_pearloptions_expressorders_meo_v2_3.timestamp_format >= 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()

    -- A frame a file handler read states no instant and reads as the epoch
    if capture_time >= 86400 then
      -- The venue's midnight: the frame's instant less the time of day it states
      local settled = math.floor((capture_time - seconds) / 900 + 0.5) * 900

      local midnight = math.floor(settled / 86400 + 0.5) * 86400

      local format = miax_pearloptions_expressorders_meo_v2_3.timestamp_format == 3 and "!%Y-%m-%d %H:%M:%S." or "%Y-%m-%d %H:%M:%S."
      return "Order Ack Time: "..os.date(format, midnight + seconds)..string.format("%09d", nanoseconds)
    end
  end

  -- Time of day mode
  return "Order Ack Time: "..os.date("!%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Order Ack Time
miax_pearloptions_expressorders_meo_v2_3.order_ack_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.order_ack_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearloptions_expressorders_meo_v2_3.order_ack_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.order_ack_time, range, value, display)

  return offset + length, value
end

-- Order Count
miax_pearloptions_expressorders_meo_v2_3.order_count = {}

-- Size: Order Count
miax_pearloptions_expressorders_meo_v2_3.order_count.size = 1

-- Display: Order Count
miax_pearloptions_expressorders_meo_v2_3.order_count.display = function(value)
  return "Order Count: "..value
end

-- Dissect: Order Count
miax_pearloptions_expressorders_meo_v2_3.order_count.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.order_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_pearloptions_expressorders_meo_v2_3.order_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.order_count, range, value, display)

  return offset + length, value
end

-- Order Instruction
miax_pearloptions_expressorders_meo_v2_3.order_instruction = {}

-- Size: Order Instruction
miax_pearloptions_expressorders_meo_v2_3.order_instruction.size = 1

-- Display: Order Instruction
miax_pearloptions_expressorders_meo_v2_3.order_instruction.labels = {
  ["R"] = "Order Instruction: Regular (R)",
  ["S"] = "Order Instruction: Iso (S)",
  ["P"] = "Order Instruction: Post Only (P)",
}

miax_pearloptions_expressorders_meo_v2_3.order_instruction.display = function(value)
  return miax_pearloptions_expressorders_meo_v2_3.order_instruction.labels[value] or "Order Instruction: Unknown("..value..")"
end

-- Dissect: Order Instruction
miax_pearloptions_expressorders_meo_v2_3.order_instruction.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.order_instruction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_expressorders_meo_v2_3.order_instruction.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.order_instruction, range, value, display)

  return offset + length, value
end

-- Order Status
miax_pearloptions_expressorders_meo_v2_3.order_status = {}

-- Size: Order Status
miax_pearloptions_expressorders_meo_v2_3.order_status.size = 1

-- Display: Order Status
miax_pearloptions_expressorders_meo_v2_3.order_status.display = function(value)
  if value == " " then
    return "Order Status: Successfully Accepted (<whitespace>)"
  end
  if value == "A" then
    return "Order Status: Market Order Not Accepted During Luld (A)"
  end
  if value == "B" then
    return "Order Status: Too Wide For Sell Market Zero Bid (B)"
  end
  if value == "C" then
    return "Order Status: Pearl Closed For Trading Of This Product (C)"
  end
  if value == "E" then
    return "Order Status: Market Too Wide To Accept Market Order (E)"
  end
  if value == "F" then
    return "Order Status: Buy Sell Limit Too Aggressive (F)"
  end
  if value == "G" then
    return "Order Status: Max Open Orders Exceeded (G)"
  end
  if value == "H" then
    return "Order Status: Max Open Contracts Exceeded (H)"
  end
  if value == "I" then
    return "Order Status: Invalid Tif When Option Not Trading (I)"
  end
  if value == "J" then
    return "Order Status: Invalid Order Instruction When Option Not Trading (J)"
  end
  if value == "K" then
    return "Order Status: No A R Order To Cancel (K)"
  end
  if value == "L" then
    return "Order Status: Order Received While Not In Low (L)"
  end
  if value == "N" then
    return "Order Status: Invalid Client Order Id (N)"
  end
  if value == "O" then
    return "Order Status: Invalid Product Id (O)"
  end
  if value == "P" then
    return "Order Status: Invalid Or Protected Price (P)"
  end
  if value == "Q" then
    return "Order Status: Invalid Size (Q)"
  end
  if value == "R" then
    return "Order Status: Rejected Due To Order Protection (R)"
  end
  if value == "S" then
    return "Order Status: Invalid Side (S)"
  end
  if value == "T" then
    return "Order Status: Invalid Target Client Order Id (T)"
  end
  if value == "U" then
    return "Order Status: Unknown Mpid (U)"
  end
  if value == "V" then
    return "Order Status: Invalid To Change (V)"
  end
  if value == "W" then
    return "Order Status: Invalid Cancel Request (W)"
  end
  if value == "X" then
    return "Order Status: Not Permitted (X)"
  end
  if value == "Y" then
    return "Order Status: Invalid For Mpid (Y)"
  end
  if value == "1" then
    return "Order Status: Invalid Origin (1)"
  end
  if value == "2" then
    return "Order Status: Invalid Tif (2)"
  end
  if value == "3" then
    return "Order Status: Restricted Option (3)"
  end
  if value == "4" then
    return "Order Status: Non Tradable Option (4)"
  end
  if value == "5" then
    return "Order Status: Incompatible Order Type (5)"
  end
  if value == "6" then
    return "Order Status: Incompatible Tif (6)"
  end
  if value == "7" then
    return "Order Status: Invalid Order Instruction (7)"
  end
  if value == "8" then
    return "Order Status: Invalid Open Close (8)"
  end
  if value == "9" then
    return "Order Status: Invalid Covered Un Covered (9)"
  end
  if value == "0" then
    return "Order Status: Invalid Mvp Ticks (0)"
  end
  if value == "a" then
    return "Order Status: Invalid Clearing Account (a)"
  end
  if value == "b" then
    return "Order Status: Blocked By Occ Kill Switch (b)"
  end
  if value == "c" then
    return "Order Status: Blocked By Rpm (c)"
  end
  if value == "e" then
    return "Order Status: Duplicate Client Order Id (e)"
  end
  if value == "f" then
    return "Order Status: Invalid Account (f)"
  end
  if value == "g" then
    return "Order Status: Invalid Liquidity Unit Type (g)"
  end
  if value == "h" then
    return "Order Status: Invalid Cmta Specified (h)"
  end
  if value == "s" then
    return "Order Status: Rejected Due To Single Side Liquidity Protection In Effect (s)"
  end
  if value == "t" then
    return "Order Status: Invalid Additional Text (t)"
  end
  if value == "u" then
    return "Order Status: Rejected Due To Slap Protection In Effect (u)"
  end
  if value == "v" then
    return "Order Status: Slap Code Specified For An Immediate Order (v)"
  end
  if value == "Z" then
    return "Order Status: Undefined Error (Z)"
  end
  if value == "*" then
    return "Order Status: Downgraded From Older Version (*)"
  end

  return "Order Status: Unknown("..value..")"
end

-- Dissect: Order Status
miax_pearloptions_expressorders_meo_v2_3.order_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.order_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_expressorders_meo_v2_3.order_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.order_status, range, value, display)

  return offset + length, value
end

-- Origin
miax_pearloptions_expressorders_meo_v2_3.origin = {}

-- Size: Origin
miax_pearloptions_expressorders_meo_v2_3.origin.size = 1

-- Display: Origin
miax_pearloptions_expressorders_meo_v2_3.origin.labels = {
  ["0"] = "Origin: Priority Customer (0)",
  ["1"] = "Origin: Firm (1)",
  ["2"] = "Origin: Broker Dealer (2)",
  ["4"] = "Origin: Market Maker (4)",
  ["5"] = "Origin: Non Member Market Maker (5)",
  ["8"] = "Origin: Non Priority Customer (8)",
}

miax_pearloptions_expressorders_meo_v2_3.origin.display = function(value)
  return miax_pearloptions_expressorders_meo_v2_3.origin.labels[value] or "Origin: Unknown("..value..")"
end

-- Dissect: Origin
miax_pearloptions_expressorders_meo_v2_3.origin.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.origin.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_expressorders_meo_v2_3.origin.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.origin, range, value, display)

  return offset + length, value
end

-- Pearl Bbo Posting Increment Indicator
miax_pearloptions_expressorders_meo_v2_3.pearl_bbo_posting_increment_indicator = {}

-- Size: Pearl Bbo Posting Increment Indicator
miax_pearloptions_expressorders_meo_v2_3.pearl_bbo_posting_increment_indicator.size = 1

-- Display: Pearl Bbo Posting Increment Indicator
miax_pearloptions_expressorders_meo_v2_3.pearl_bbo_posting_increment_indicator.labels = {
  ["P"] = "Pearl Bbo Posting Increment Indicator: Penny Penny (P)",
  ["N"] = "Pearl Bbo Posting Increment Indicator: Penny Nickel (N)",
  ["D"] = "Pearl Bbo Posting Increment Indicator: Nickel Dime (D)",
}

miax_pearloptions_expressorders_meo_v2_3.pearl_bbo_posting_increment_indicator.display = function(value)
  return miax_pearloptions_expressorders_meo_v2_3.pearl_bbo_posting_increment_indicator.labels[value] or "Pearl Bbo Posting Increment Indicator: Unknown("..value..")"
end

-- Dissect: Pearl Bbo Posting Increment Indicator
miax_pearloptions_expressorders_meo_v2_3.pearl_bbo_posting_increment_indicator.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.pearl_bbo_posting_increment_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_expressorders_meo_v2_3.pearl_bbo_posting_increment_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.pearl_bbo_posting_increment_indicator, range, value, display)

  return offset + length, value
end

-- Price
miax_pearloptions_expressorders_meo_v2_3.price = {}

-- Size: Price
miax_pearloptions_expressorders_meo_v2_3.price.size = 4

-- Display: Price
miax_pearloptions_expressorders_meo_v2_3.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
miax_pearloptions_expressorders_meo_v2_3.price.translate = function(raw)
  return raw/10000
end

-- Dissect: Price
miax_pearloptions_expressorders_meo_v2_3.price.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.price.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_pearloptions_expressorders_meo_v2_3.price.translate(raw)
  local display = miax_pearloptions_expressorders_meo_v2_3.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.price, range, value, display)

  return offset + length, value
end

-- Priority Customer Origin Multiplier
miax_pearloptions_expressorders_meo_v2_3.priority_customer_origin_multiplier = {}

-- Size: Priority Customer Origin Multiplier
miax_pearloptions_expressorders_meo_v2_3.priority_customer_origin_multiplier.size = 2

-- Display: Priority Customer Origin Multiplier
miax_pearloptions_expressorders_meo_v2_3.priority_customer_origin_multiplier.display = function(value)
  return "Priority Customer Origin Multiplier: "..value
end

-- Dissect: Priority Customer Origin Multiplier
miax_pearloptions_expressorders_meo_v2_3.priority_customer_origin_multiplier.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.priority_customer_origin_multiplier.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_expressorders_meo_v2_3.priority_customer_origin_multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.priority_customer_origin_multiplier, range, value, display)

  return offset + length, value
end

-- Product Add Update Time
miax_pearloptions_expressorders_meo_v2_3.product_add_update_time = {}

-- Size: Product Add Update Time
miax_pearloptions_expressorders_meo_v2_3.product_add_update_time.size = 8

-- Display: Product Add Update Time
miax_pearloptions_expressorders_meo_v2_3.product_add_update_time.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if miax_pearloptions_expressorders_meo_v2_3.timestamp_format == 0 then
    return "Product Add Update Time: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (the day the frame that carried it settled on)
  if miax_pearloptions_expressorders_meo_v2_3.timestamp_format >= 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()

    -- A frame a file handler read states no instant and reads as the epoch
    if capture_time >= 86400 then
      -- The venue's midnight: the frame's instant less the time of day it states
      local settled = math.floor((capture_time - seconds) / 900 + 0.5) * 900

      local midnight = math.floor(settled / 86400 + 0.5) * 86400

      local format = miax_pearloptions_expressorders_meo_v2_3.timestamp_format == 3 and "!%Y-%m-%d %H:%M:%S." or "%Y-%m-%d %H:%M:%S."
      return "Product Add Update Time: "..os.date(format, midnight + seconds)..string.format("%09d", nanoseconds)
    end
  end

  -- Time of day mode
  return "Product Add Update Time: "..os.date("!%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Product Add Update Time
miax_pearloptions_expressorders_meo_v2_3.product_add_update_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.product_add_update_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearloptions_expressorders_meo_v2_3.product_add_update_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.product_add_update_time, range, value, display)

  return offset + length, value
end

-- Product Id
miax_pearloptions_expressorders_meo_v2_3.product_id = {}

-- Size: Product Id
miax_pearloptions_expressorders_meo_v2_3.product_id.size = 4

-- Display: Product Id
miax_pearloptions_expressorders_meo_v2_3.product_id.display = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
miax_pearloptions_expressorders_meo_v2_3.product_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.product_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_expressorders_meo_v2_3.product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.product_id, range, value, display)

  return offset + length, value
end

-- Relief Multiplier
miax_pearloptions_expressorders_meo_v2_3.relief_multiplier = {}

-- Size: Relief Multiplier
miax_pearloptions_expressorders_meo_v2_3.relief_multiplier.size = 4

-- Display: Relief Multiplier
miax_pearloptions_expressorders_meo_v2_3.relief_multiplier.display = function(value)
  return "Relief Multiplier: "..value
end

-- Translate: Relief Multiplier
miax_pearloptions_expressorders_meo_v2_3.relief_multiplier.translate = function(raw)
  return raw/10000
end

-- Dissect: Relief Multiplier
miax_pearloptions_expressorders_meo_v2_3.relief_multiplier.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.relief_multiplier.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_pearloptions_expressorders_meo_v2_3.relief_multiplier.translate(raw)
  local display = miax_pearloptions_expressorders_meo_v2_3.relief_multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.relief_multiplier, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
miax_pearloptions_expressorders_meo_v2_3.requested_sequence_number = {}

-- Size: Requested Sequence Number
miax_pearloptions_expressorders_meo_v2_3.requested_sequence_number.size = 8

-- Display: Requested Sequence Number
miax_pearloptions_expressorders_meo_v2_3.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
miax_pearloptions_expressorders_meo_v2_3.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearloptions_expressorders_meo_v2_3.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
miax_pearloptions_expressorders_meo_v2_3.requested_session = {}

-- Size: Requested Session
miax_pearloptions_expressorders_meo_v2_3.requested_session.size = 1

-- Display: Requested Session
miax_pearloptions_expressorders_meo_v2_3.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
miax_pearloptions_expressorders_meo_v2_3.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.requested_session.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_pearloptions_expressorders_meo_v2_3.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Reserved 10
miax_pearloptions_expressorders_meo_v2_3.reserved_10 = {}

-- Size: Reserved 10
miax_pearloptions_expressorders_meo_v2_3.reserved_10.size = 10

-- Display: Reserved 10
miax_pearloptions_expressorders_meo_v2_3.reserved_10.display = function(value)
  return "Reserved 10: "..value
end

-- Dissect: Reserved 10
miax_pearloptions_expressorders_meo_v2_3.reserved_10.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.reserved_10.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_pearloptions_expressorders_meo_v2_3.reserved_10.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.reserved_10, range, value, display)

  return offset + length, value
end

-- Reserved 12
miax_pearloptions_expressorders_meo_v2_3.reserved_12 = {}

-- Size: Reserved 12
miax_pearloptions_expressorders_meo_v2_3.reserved_12.size = 12

-- Display: Reserved 12
miax_pearloptions_expressorders_meo_v2_3.reserved_12.display = function(value)
  return "Reserved 12: "..value
end

-- Dissect: Reserved 12
miax_pearloptions_expressorders_meo_v2_3.reserved_12.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.reserved_12.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_pearloptions_expressorders_meo_v2_3.reserved_12.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.reserved_12, range, value, display)

  return offset + length, value
end

-- Reserved 15
miax_pearloptions_expressorders_meo_v2_3.reserved_15 = {}

-- Size: Reserved 15
miax_pearloptions_expressorders_meo_v2_3.reserved_15.size = 15

-- Display: Reserved 15
miax_pearloptions_expressorders_meo_v2_3.reserved_15.display = function(value)
  return "Reserved 15: "..value
end

-- Dissect: Reserved 15
miax_pearloptions_expressorders_meo_v2_3.reserved_15.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.reserved_15.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_pearloptions_expressorders_meo_v2_3.reserved_15.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.reserved_15, range, value, display)

  return offset + length, value
end

-- Reserved 16
miax_pearloptions_expressorders_meo_v2_3.reserved_16 = {}

-- Size: Reserved 16
miax_pearloptions_expressorders_meo_v2_3.reserved_16.size = 16

-- Display: Reserved 16
miax_pearloptions_expressorders_meo_v2_3.reserved_16.display = function(value)
  return "Reserved 16: "..value
end

-- Dissect: Reserved 16
miax_pearloptions_expressorders_meo_v2_3.reserved_16.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.reserved_16.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_pearloptions_expressorders_meo_v2_3.reserved_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.reserved_16, range, value, display)

  return offset + length, value
end

-- Reserved 4
miax_pearloptions_expressorders_meo_v2_3.reserved_4 = {}

-- Size: Reserved 4
miax_pearloptions_expressorders_meo_v2_3.reserved_4.size = 4

-- Display: Reserved 4
miax_pearloptions_expressorders_meo_v2_3.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
miax_pearloptions_expressorders_meo_v2_3.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_pearloptions_expressorders_meo_v2_3.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Reserved 6
miax_pearloptions_expressorders_meo_v2_3.reserved_6 = {}

-- Size: Reserved 6
miax_pearloptions_expressorders_meo_v2_3.reserved_6.size = 6

-- Display: Reserved 6
miax_pearloptions_expressorders_meo_v2_3.reserved_6.display = function(value)
  return "Reserved 6: "..value
end

-- Dissect: Reserved 6
miax_pearloptions_expressorders_meo_v2_3.reserved_6.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.reserved_6.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_pearloptions_expressorders_meo_v2_3.reserved_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.reserved_6, range, value, display)

  return offset + length, value
end

-- Restricted Option
miax_pearloptions_expressorders_meo_v2_3.restricted_option = {}

-- Size: Restricted Option
miax_pearloptions_expressorders_meo_v2_3.restricted_option.size = 1

-- Display: Restricted Option
miax_pearloptions_expressorders_meo_v2_3.restricted_option.labels = {
  ["Y"] = "Restricted Option: Pearl Will Accept Position Closing Orders Only (Y)",
  ["N"] = "Restricted Option: Pearl Will Accept Open And Close Positions (N)",
}

miax_pearloptions_expressorders_meo_v2_3.restricted_option.display = function(value)
  return miax_pearloptions_expressorders_meo_v2_3.restricted_option.labels[value] or "Restricted Option: Unknown("..value..")"
end

-- Dissect: Restricted Option
miax_pearloptions_expressorders_meo_v2_3.restricted_option.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.restricted_option.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_expressorders_meo_v2_3.restricted_option.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.restricted_option, range, value, display)

  return offset + length, value
end

-- Scope
miax_pearloptions_expressorders_meo_v2_3.scope = {}

-- Size: Scope
miax_pearloptions_expressorders_meo_v2_3.scope.size = 1

-- Display: Scope
miax_pearloptions_expressorders_meo_v2_3.scope.labels = {
  ["A"] = "Scope: Reset Standard Hybrid Mass Cancel (A)",
  ["S"] = "Scope: Reset Slap (S)",
}

miax_pearloptions_expressorders_meo_v2_3.scope.display = function(value)
  return miax_pearloptions_expressorders_meo_v2_3.scope.labels[value] or "Scope: Unknown("..value..")"
end

-- Dissect: Scope
miax_pearloptions_expressorders_meo_v2_3.scope.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.scope.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_expressorders_meo_v2_3.scope.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.scope, range, value, display)

  return offset + length, value
end

-- Security Symbol
miax_pearloptions_expressorders_meo_v2_3.security_symbol = {}

-- Size: Security Symbol
miax_pearloptions_expressorders_meo_v2_3.security_symbol.size = 6

-- Display: Security Symbol
miax_pearloptions_expressorders_meo_v2_3.security_symbol.display = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
miax_pearloptions_expressorders_meo_v2_3.security_symbol.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.security_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearloptions_expressorders_meo_v2_3.security_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Self Trade Protection Status
miax_pearloptions_expressorders_meo_v2_3.self_trade_protection_status = {}

-- Size: Self Trade Protection Status
miax_pearloptions_expressorders_meo_v2_3.self_trade_protection_status.size = 1

-- Display: Self Trade Protection Status
miax_pearloptions_expressorders_meo_v2_3.self_trade_protection_status.display = function(value)
  if value == " " then
    return "Self Trade Protection Status: Settings Applied Successfully (<whitespace>)"
  end
  if value == "M" then
    return "Self Trade Protection Status: Unknown Mpid (M)"
  end
  if value == "E" then
    return "Self Trade Protection Status: Invalid For Mm Mpid (E)"
  end
  if value == "A" then
    return "Self Trade Protection Status: Invalid Action (A)"
  end
  if value == "Z" then
    return "Self Trade Protection Status: Undefined Error (Z)"
  end
  if value == "*" then
    return "Self Trade Protection Status: Downgraded From Older Version (*)"
  end

  return "Self Trade Protection Status: Unknown("..value..")"
end

-- Dissect: Self Trade Protection Status
miax_pearloptions_expressorders_meo_v2_3.self_trade_protection_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.self_trade_protection_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_expressorders_meo_v2_3.self_trade_protection_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.self_trade_protection_status, range, value, display)

  return offset + length, value
end

-- Sequence Number
miax_pearloptions_expressorders_meo_v2_3.sequence_number = {}

-- Size: Sequence Number
miax_pearloptions_expressorders_meo_v2_3.sequence_number.size = 8

-- Display: Sequence Number
miax_pearloptions_expressorders_meo_v2_3.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
miax_pearloptions_expressorders_meo_v2_3.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearloptions_expressorders_meo_v2_3.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
miax_pearloptions_expressorders_meo_v2_3.sequenced_message_type = {}

-- Size: Sequenced Message Type
miax_pearloptions_expressorders_meo_v2_3.sequenced_message_type.size = 2

-- Display: Sequenced Message Type
miax_pearloptions_expressorders_meo_v2_3.sequenced_message_type.labels = {
  ["SU"] = "Sequenced Message Type: Series Update (SU)",
  ["SN"] = "Sequenced Message Type: System State Notification (SN)",
  ["UN"] = "Sequenced Message Type: Underlying Trading Status Notification (UN)",
  ["QN"] = "Sequenced Message Type: Opening Width Relief Notification (QN)",
  ["RN"] = "Sequenced Message Type: Arm Protection Settings Notification (RN)",
  ["A2"] = "Sequenced Message Type: Arm 2 Underlying Level Protection Settings Notification (A2)",
  ["QX"] = "Sequenced Message Type: Single Side Liquidity Protection Trigger Notification (QX)",
  ["UP"] = "Sequenced Message Type: Arm 2 Underlying Level Protection Notification (UP)",
  ["FP"] = "Sequenced Message Type: Arm 2 Firm Level Protection Notification (FP)",
  ["XN"] = "Sequenced Message Type: Cancel Notification (XN)",
  ["EN"] = "Sequenced Message Type: Execution Notification (EN)",
}

miax_pearloptions_expressorders_meo_v2_3.sequenced_message_type.display = function(value)
  return miax_pearloptions_expressorders_meo_v2_3.sequenced_message_type.labels[value] or "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
miax_pearloptions_expressorders_meo_v2_3.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_expressorders_meo_v2_3.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Sesm Packet Length
miax_pearloptions_expressorders_meo_v2_3.sesm_packet_length = {}

-- Size: Sesm Packet Length
miax_pearloptions_expressorders_meo_v2_3.sesm_packet_length.size = 2

-- Display: Sesm Packet Length
miax_pearloptions_expressorders_meo_v2_3.sesm_packet_length.display = function(value)
  return "Sesm Packet Length: "..value
end

-- Dissect: Sesm Packet Length
miax_pearloptions_expressorders_meo_v2_3.sesm_packet_length.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.sesm_packet_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_expressorders_meo_v2_3.sesm_packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.sesm_packet_length, range, value, display)

  return offset + length, value
end

-- Sesm Packet Type
miax_pearloptions_expressorders_meo_v2_3.sesm_packet_type = {}

-- Size: Sesm Packet Type
miax_pearloptions_expressorders_meo_v2_3.sesm_packet_type.size = 1

-- Display: Sesm Packet Type
miax_pearloptions_expressorders_meo_v2_3.sesm_packet_type.labels = {
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

miax_pearloptions_expressorders_meo_v2_3.sesm_packet_type.display = function(value)
  return miax_pearloptions_expressorders_meo_v2_3.sesm_packet_type.labels[value] or "Sesm Packet Type: Unknown("..value..")"
end

-- Dissect: Sesm Packet Type
miax_pearloptions_expressorders_meo_v2_3.sesm_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.sesm_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_expressorders_meo_v2_3.sesm_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.sesm_packet_type, range, value, display)

  return offset + length, value
end

-- Sesm Version
miax_pearloptions_expressorders_meo_v2_3.sesm_version = {}

-- Size: Sesm Version
miax_pearloptions_expressorders_meo_v2_3.sesm_version.size = 5

-- Display: Sesm Version
miax_pearloptions_expressorders_meo_v2_3.sesm_version.display = function(value)
  return "Sesm Version: "..value
end

-- Dissect: Sesm Version
miax_pearloptions_expressorders_meo_v2_3.sesm_version.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.sesm_version.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearloptions_expressorders_meo_v2_3.sesm_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.sesm_version, range, value, display)

  return offset + length, value
end

-- Session Id
miax_pearloptions_expressorders_meo_v2_3.session_id = {}

-- Size: Session Id
miax_pearloptions_expressorders_meo_v2_3.session_id.size = 1

-- Display: Session Id
miax_pearloptions_expressorders_meo_v2_3.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
miax_pearloptions_expressorders_meo_v2_3.session_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.session_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_pearloptions_expressorders_meo_v2_3.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.session_id, range, value, display)

  return offset + length, value
end

-- Side
miax_pearloptions_expressorders_meo_v2_3.side = {}

-- Size: Side
miax_pearloptions_expressorders_meo_v2_3.side.size = 1

-- Display: Side
miax_pearloptions_expressorders_meo_v2_3.side.labels = {
  ["B"] = "Side: Buy (B)",
  ["S"] = "Side: Sell (S)",
  ["N"] = "Side: Not Applicable (N)",
}

miax_pearloptions_expressorders_meo_v2_3.side.display = function(value)
  return miax_pearloptions_expressorders_meo_v2_3.side.labels[value] or "Side: Unknown("..value..")"
end

-- Dissect: Side
miax_pearloptions_expressorders_meo_v2_3.side.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_expressorders_meo_v2_3.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.side, range, value, display)

  return offset + length, value
end

-- Size
miax_pearloptions_expressorders_meo_v2_3.size = {}

-- Size: Size
miax_pearloptions_expressorders_meo_v2_3.size.size = 4

-- Display: Size
miax_pearloptions_expressorders_meo_v2_3.size.display = function(value)
  return "Size: "..value
end

-- Dissect: Size
miax_pearloptions_expressorders_meo_v2_3.size.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_expressorders_meo_v2_3.size.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.size, range, value, display)

  return offset + length, value
end

-- Source
miax_pearloptions_expressorders_meo_v2_3.source = {}

-- Size: Source
miax_pearloptions_expressorders_meo_v2_3.source.size = 1

-- Display: Source
miax_pearloptions_expressorders_meo_v2_3.source.labels = {
  ["T"] = "Source: Changes Carried Out By The Firm Via Meo (T)",
  ["E"] = "Source: Changes Carried Out By The Exchange (E)",
}

miax_pearloptions_expressorders_meo_v2_3.source.display = function(value)
  return miax_pearloptions_expressorders_meo_v2_3.source.labels[value] or "Source: Unknown("..value..")"
end

-- Dissect: Source
miax_pearloptions_expressorders_meo_v2_3.source.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.source.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_expressorders_meo_v2_3.source.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.source, range, value, display)

  return offset + length, value
end

-- Start Sequence Number
miax_pearloptions_expressorders_meo_v2_3.start_sequence_number = {}

-- Size: Start Sequence Number
miax_pearloptions_expressorders_meo_v2_3.start_sequence_number.size = 8

-- Display: Start Sequence Number
miax_pearloptions_expressorders_meo_v2_3.start_sequence_number.display = function(value)
  return "Start Sequence Number: "..value
end

-- Dissect: Start Sequence Number
miax_pearloptions_expressorders_meo_v2_3.start_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.start_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearloptions_expressorders_meo_v2_3.start_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.start_sequence_number, range, value, display)

  return offset + length, value
end

-- Status
miax_pearloptions_expressorders_meo_v2_3.status = {}

-- Size: Status
miax_pearloptions_expressorders_meo_v2_3.status.size = 1

-- Display: Status
miax_pearloptions_expressorders_meo_v2_3.status.display = function(value)
  if value == " " then
    return "Status: Successful (<whitespace>)"
  end
  if value == "A" then
    return "Status: All Specified Slap Codes Are Already Purged (A)"
  end
  if value == "B" then
    return "Status: Slap Codes Are Not Provided In The Request (B)"
  end
  if value == "C" then
    return "Status: Cannot Cancel While Not In Low (C)"
  end
  if value == "D" then
    return "Status: Slap Purge While Standard Hybrid Mass Cancel Is Active (D)"
  end
  if value == "E" then
    return "Status: Feature Not Enabled (E)"
  end
  if value == "F" then
    return "Status: Arm 2 Firm Level Protection Is In Effect (F)"
  end
  if value == "J" then
    return "Status: Mass Cancel Scope Contains Invalid Value (J)"
  end
  if value == "M" then
    return "Status: Unknown Mpid (M)"
  end
  if value == "N" then
    return "Status: All Orders Have Already Been Canceled (N)"
  end
  if value == "S" then
    return "Status: Invalid Scope (S)"
  end
  if value == "U" then
    return "Status: Invalid Underlying (U)"
  end
  if value == "X" then
    return "Status: Slap Feature Disabled (X)"
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
miax_pearloptions_expressorders_meo_v2_3.status.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_expressorders_meo_v2_3.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.status, range, value, display)

  return offset + length, value
end

-- Strike Price
miax_pearloptions_expressorders_meo_v2_3.strike_price = {}

-- Size: Strike Price
miax_pearloptions_expressorders_meo_v2_3.strike_price.size = 4

-- Display: Strike Price
miax_pearloptions_expressorders_meo_v2_3.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Translate: Strike Price
miax_pearloptions_expressorders_meo_v2_3.strike_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Strike Price
miax_pearloptions_expressorders_meo_v2_3.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.strike_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_pearloptions_expressorders_meo_v2_3.strike_price.translate(raw)
  local display = miax_pearloptions_expressorders_meo_v2_3.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.strike_price, range, value, display)

  return offset + length, value
end

-- System Status
miax_pearloptions_expressorders_meo_v2_3.system_status = {}

-- Size: System Status
miax_pearloptions_expressorders_meo_v2_3.system_status.size = 1

-- Display: System Status
miax_pearloptions_expressorders_meo_v2_3.system_status.labels = {
  ["S"] = "System Status: Start Of System Hours (S)",
  ["C"] = "System Status: End Of System Hours (C)",
  ["P"] = "System Status: Low (P)",
  ["L"] = "System Status: Not In Low (L)",
  ["M"] = "System Status: Mpid Product Assignment Window Open (M)",
  ["E"] = "System Status: Mpid Product Assignment Window Closed (E)",
  ["1"] = "System Status: Start Of Test Session (1)",
  ["2"] = "System Status: End Of Test Session (2)",
}

miax_pearloptions_expressorders_meo_v2_3.system_status.display = function(value)
  return miax_pearloptions_expressorders_meo_v2_3.system_status.labels[value] or "System Status: Unknown("..value..")"
end

-- Dissect: System Status
miax_pearloptions_expressorders_meo_v2_3.system_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.system_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_expressorders_meo_v2_3.system_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.system_status, range, value, display)

  return offset + length, value
end

-- Target Client Order Id
miax_pearloptions_expressorders_meo_v2_3.target_client_order_id = {}

-- Size: Target Client Order Id
miax_pearloptions_expressorders_meo_v2_3.target_client_order_id.size = 4

-- Display: Target Client Order Id
miax_pearloptions_expressorders_meo_v2_3.target_client_order_id.display = function(value)
  return "Target Client Order Id: "..value
end

-- Dissect: Target Client Order Id
miax_pearloptions_expressorders_meo_v2_3.target_client_order_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.target_client_order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_expressorders_meo_v2_3.target_client_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.target_client_order_id, range, value, display)

  return offset + length, value
end

-- Test Text
miax_pearloptions_expressorders_meo_v2_3.test_text = {}

-- Display: Test Text
miax_pearloptions_expressorders_meo_v2_3.test_text.display = function(value)
  return "Test Text: "..value
end

-- Dissect runtime sized field: Test Text
miax_pearloptions_expressorders_meo_v2_3.test_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = miax_pearloptions_expressorders_meo_v2_3.test_text.display(value, packet, parent, size)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.test_text, range, value, display)

  return offset + size, value
end

-- Time In Force Tif
miax_pearloptions_expressorders_meo_v2_3.time_in_force_tif = {}

-- Size: Time In Force Tif
miax_pearloptions_expressorders_meo_v2_3.time_in_force_tif.size = 1

-- Display: Time In Force Tif
miax_pearloptions_expressorders_meo_v2_3.time_in_force_tif.labels = {
  ["D"] = "Time In Force Tif: Day (D)",
  ["I"] = "Time In Force Tif: Ioc (I)",
}

miax_pearloptions_expressorders_meo_v2_3.time_in_force_tif.display = function(value)
  return miax_pearloptions_expressorders_meo_v2_3.time_in_force_tif.labels[value] or "Time In Force Tif: Unknown("..value..")"
end

-- Dissect: Time In Force Tif
miax_pearloptions_expressorders_meo_v2_3.time_in_force_tif.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.time_in_force_tif.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_expressorders_meo_v2_3.time_in_force_tif.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.time_in_force_tif, range, value, display)

  return offset + length, value
end

-- Trade Id
miax_pearloptions_expressorders_meo_v2_3.trade_id = {}

-- Size: Trade Id
miax_pearloptions_expressorders_meo_v2_3.trade_id.size = 4

-- Display: Trade Id
miax_pearloptions_expressorders_meo_v2_3.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
miax_pearloptions_expressorders_meo_v2_3.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_expressorders_meo_v2_3.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trade Status
miax_pearloptions_expressorders_meo_v2_3.trade_status = {}

-- Size: Trade Status
miax_pearloptions_expressorders_meo_v2_3.trade_status.size = 1

-- Display: Trade Status
miax_pearloptions_expressorders_meo_v2_3.trade_status.labels = {
  ["E"] = "Trade Status: New Execution (E)",
}

miax_pearloptions_expressorders_meo_v2_3.trade_status.display = function(value)
  return miax_pearloptions_expressorders_meo_v2_3.trade_status.labels[value] or "Trade Status: Unknown("..value..")"
end

-- Dissect: Trade Status
miax_pearloptions_expressorders_meo_v2_3.trade_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.trade_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_expressorders_meo_v2_3.trade_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.trade_status, range, value, display)

  return offset + length, value
end

-- Trading Status
miax_pearloptions_expressorders_meo_v2_3.trading_status = {}

-- Size: Trading Status
miax_pearloptions_expressorders_meo_v2_3.trading_status.size = 1

-- Display: Trading Status
miax_pearloptions_expressorders_meo_v2_3.trading_status.labels = {
  ["H"] = "Trading Status: Pearl Has Halted Trading For This Underlying Symbol (H)",
  ["R"] = "Trading Status: Pearl Will Resume Trading Reopen For This Underlying Symbol (R)",
  ["O"] = "Trading Status: Pearl Will Open Trading For This Underlying Symbol (O)",
  ["C"] = "Trading Status: Pearl Has Closed Trading For This Underlying Symbol (C)",
}

miax_pearloptions_expressorders_meo_v2_3.trading_status.display = function(value)
  return miax_pearloptions_expressorders_meo_v2_3.trading_status.labels[value] or "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
miax_pearloptions_expressorders_meo_v2_3.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_expressorders_meo_v2_3.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Trigger Reason
miax_pearloptions_expressorders_meo_v2_3.trigger_reason = {}

-- Size: Trigger Reason
miax_pearloptions_expressorders_meo_v2_3.trigger_reason.size = 1

-- Display: Trigger Reason
miax_pearloptions_expressorders_meo_v2_3.trigger_reason.labels = {
  ["L"] = "Trigger Reason: Line Disconnect Triggered Protection (L)",
  ["B"] = "Trigger Reason: Pearl Help Desk Triggered Protection (B)",
  ["U"] = "Trigger Reason: Firm Initiated Standard Hybrid Mass Cancel (U)",
  ["R"] = "Trigger Reason: Arm Triggered Protection (R)",
  ["O"] = "Trigger Reason: Rpm Binary Order Rate Protection Trigger (O)",
  ["T"] = "Trigger Reason: Rpm Binary Order Executed Contracts Rate Protection Trigger (T)",
  ["F"] = "Trigger Reason: Arm 2 Firm Level Protection Initiated Hybrid Mass Cancel (F)",
  ["J"] = "Trigger Reason: Reserved For Future Use (J)",
  ["*"] = "Trigger Reason: Downgraded From Older Version (*)",
}

miax_pearloptions_expressorders_meo_v2_3.trigger_reason.display = function(value)
  return miax_pearloptions_expressorders_meo_v2_3.trigger_reason.labels[value] or "Trigger Reason: Unknown("..value..")"
end

-- Dissect: Trigger Reason
miax_pearloptions_expressorders_meo_v2_3.trigger_reason.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.trigger_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_expressorders_meo_v2_3.trigger_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.trigger_reason, range, value, display)

  return offset + length, value
end

-- Triggering Bulk Order Index
miax_pearloptions_expressorders_meo_v2_3.triggering_bulk_order_index = {}

-- Size: Triggering Bulk Order Index
miax_pearloptions_expressorders_meo_v2_3.triggering_bulk_order_index.size = 1

-- Display: Triggering Bulk Order Index
miax_pearloptions_expressorders_meo_v2_3.triggering_bulk_order_index.display = function(value)
  return "Triggering Bulk Order Index: "..value
end

-- Dissect: Triggering Bulk Order Index
miax_pearloptions_expressorders_meo_v2_3.triggering_bulk_order_index.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.triggering_bulk_order_index.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_pearloptions_expressorders_meo_v2_3.triggering_bulk_order_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.triggering_bulk_order_index, range, value, display)

  return offset + length, value
end

-- Triggering Client Message Id
miax_pearloptions_expressorders_meo_v2_3.triggering_client_message_id = {}

-- Size: Triggering Client Message Id
miax_pearloptions_expressorders_meo_v2_3.triggering_client_message_id.size = 4

-- Display: Triggering Client Message Id
miax_pearloptions_expressorders_meo_v2_3.triggering_client_message_id.display = function(value)
  return "Triggering Client Message Id: "..value
end

-- Dissect: Triggering Client Message Id
miax_pearloptions_expressorders_meo_v2_3.triggering_client_message_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.triggering_client_message_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_expressorders_meo_v2_3.triggering_client_message_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.triggering_client_message_id, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
miax_pearloptions_expressorders_meo_v2_3.underlying_symbol = {}

-- Size: Underlying Symbol
miax_pearloptions_expressorders_meo_v2_3.underlying_symbol.size = 11

-- Display: Underlying Symbol
miax_pearloptions_expressorders_meo_v2_3.underlying_symbol.display = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
miax_pearloptions_expressorders_meo_v2_3.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.underlying_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearloptions_expressorders_meo_v2_3.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Unsequenced Message Type
miax_pearloptions_expressorders_meo_v2_3.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
miax_pearloptions_expressorders_meo_v2_3.unsequenced_message_type.size = 2

-- Display: Unsequenced Message Type
miax_pearloptions_expressorders_meo_v2_3.unsequenced_message_type.labels = {
  ["RS"] = "Unsequenced Message Type: Arm Settings Update Request (RS)",
  ["AA"] = "Unsequenced Message Type: Arm Settings Update Response (AA)",
  ["2S"] = "Unsequenced Message Type: Arm 2 Underlying Level Protection Settings Update Request (2S)",
  ["2R"] = "Unsequenced Message Type: Arm 2 Underlying Level Protection Settings Update Response (2R)",
  ["SA"] = "Unsequenced Message Type: Series Assignment Request (SA)",
  ["AR"] = "Unsequenced Message Type: Series Assignment Response (AR)",
  ["SP"] = "Unsequenced Message Type: Self Trade Protection Designation Request (SP)",
  ["SR"] = "Unsequenced Message Type: Self Trade Protection Designation Response (SR)",
  ["lm"] = "Unsequenced Message Type: Bulk Liquidity Message (lm)",
  ["LR"] = "Unsequenced Message Type: Bulk Liquidity Message Response (LR)",
  ["xq"] = "Unsequenced Message Type: Liquidity Mass Cancel Request (xq)",
  ["XR"] = "Unsequenced Message Type: Liquidity Mass Cancel Response (XR)",
  ["P1"] = "Unsequenced Message Type: Liquidity Protection Reset Request (P1)",
  ["PR"] = "Unsequenced Message Type: Liquidity Protection Reset Response (PR)",
  ["SS"] = "Unsequenced Message Type: Single Side Liquidity Protection Reset Request (SS)",
  ["ST"] = "Unsequenced Message Type: Single Side Liquidity Protection Reset Response (ST)",
  ["QP"] = "Unsequenced Message Type: Liquidity Protection Trigger Notification (QP)",
  ["SL"] = "Unsequenced Message Type: Slap Protection Trigger Notification (SL)",
  ["ON"] = "Unsequenced Message Type: Order Notification (ON)",
  ["DD"] = "Unsequenced Message Type: Done For The Day Notification (DD)",
  ["XN"] = "Unsequenced Message Type: Cancel Notification (XN)",
}

miax_pearloptions_expressorders_meo_v2_3.unsequenced_message_type.display = function(value)
  return miax_pearloptions_expressorders_meo_v2_3.unsequenced_message_type.labels[value] or "Unsequenced Message Type: Unknown("..value..")"
end

-- Dissect: Unsequenced Message Type
miax_pearloptions_expressorders_meo_v2_3.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_expressorders_meo_v2_3.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Username
miax_pearloptions_expressorders_meo_v2_3.username = {}

-- Size: Username
miax_pearloptions_expressorders_meo_v2_3.username.size = 5

-- Display: Username
miax_pearloptions_expressorders_meo_v2_3.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
miax_pearloptions_expressorders_meo_v2_3.username.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_expressorders_meo_v2_3.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearloptions_expressorders_meo_v2_3.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Miax PearlOptions ExpressOrders Meo 2.3
-----------------------------------------------------------------------

-- Test Packet
miax_pearloptions_expressorders_meo_v2_3.test_packet = {}

-- Calculate size of: Test Packet
miax_pearloptions_expressorders_meo_v2_3.test_packet.size = function(buffer, offset)
  local index = 0

  -- Parse runtime size of: Test Text
  index = index + buffer(offset + index - 3, 2):le_uint()

  return index
end

-- Display: Test Packet
miax_pearloptions_expressorders_meo_v2_3.test_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Test Packet
miax_pearloptions_expressorders_meo_v2_3.test_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Test Text
  local size_of_test_text = sesm_packet_length - 1

  -- Test Text: 0 Byte Ascii String
  index, test_text = miax_pearloptions_expressorders_meo_v2_3.test_text.dissect(buffer, index, packet, parent, size_of_test_text)

  return index
end

-- Dissect: Test Packet
miax_pearloptions_expressorders_meo_v2_3.test_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.test_packet, buffer(offset, 0))
    local index = miax_pearloptions_expressorders_meo_v2_3.test_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_expressorders_meo_v2_3.test_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_expressorders_meo_v2_3.test_packet.fields(buffer, offset, packet, parent)
  end
end

-- Client Heartbeat
miax_pearloptions_expressorders_meo_v2_3.client_heartbeat = {}

-- Display: Client Heartbeat
miax_pearloptions_expressorders_meo_v2_3.client_heartbeat.display = function(packet, parent, length)
  return "Client Heartbeat"
end


-- Dissect: Client Heartbeat
miax_pearloptions_expressorders_meo_v2_3.client_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = miax_pearloptions_expressorders_meo_v2_3.client_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Server Heartbeat
miax_pearloptions_expressorders_meo_v2_3.server_heartbeat = {}

-- Display: Server Heartbeat
miax_pearloptions_expressorders_meo_v2_3.server_heartbeat.display = function(packet, parent, length)
  return "Server Heartbeat"
end


-- Dissect: Server Heartbeat
miax_pearloptions_expressorders_meo_v2_3.server_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = miax_pearloptions_expressorders_meo_v2_3.server_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- End Of Session
miax_pearloptions_expressorders_meo_v2_3.end_of_session = {}

-- Display: End Of Session
miax_pearloptions_expressorders_meo_v2_3.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
miax_pearloptions_expressorders_meo_v2_3.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = miax_pearloptions_expressorders_meo_v2_3.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Goodbye Packet
miax_pearloptions_expressorders_meo_v2_3.goodbye_packet = {}

-- Calculate size of: Goodbye Packet
miax_pearloptions_expressorders_meo_v2_3.goodbye_packet.size = function(buffer, offset)
  local index = 0

  index = index + miax_pearloptions_expressorders_meo_v2_3.goodbye_reason.size

  -- Parse runtime size of: Logout Text
  index = index + buffer(offset + index - 4, 2):le_uint()

  return index
end

-- Display: Goodbye Packet
miax_pearloptions_expressorders_meo_v2_3.goodbye_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Goodbye Packet
miax_pearloptions_expressorders_meo_v2_3.goodbye_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Goodbye Reason: 1 Byte Ascii String Enum with 3 values
  index, goodbye_reason = miax_pearloptions_expressorders_meo_v2_3.goodbye_reason.dissect(buffer, index, packet, parent)

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Logout Text
  local size_of_logout_text = sesm_packet_length - 2

  -- Logout Text: 0 Byte Ascii String
  index, logout_text = miax_pearloptions_expressorders_meo_v2_3.logout_text.dissect(buffer, index, packet, parent, size_of_logout_text)

  return index
end

-- Dissect: Goodbye Packet
miax_pearloptions_expressorders_meo_v2_3.goodbye_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.goodbye_packet, buffer(offset, 0))
    local index = miax_pearloptions_expressorders_meo_v2_3.goodbye_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_expressorders_meo_v2_3.goodbye_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_expressorders_meo_v2_3.goodbye_packet.fields(buffer, offset, packet, parent)
  end
end

-- Logout Request
miax_pearloptions_expressorders_meo_v2_3.logout_request = {}

-- Calculate size of: Logout Request
miax_pearloptions_expressorders_meo_v2_3.logout_request.size = function(buffer, offset)
  local index = 0

  index = index + miax_pearloptions_expressorders_meo_v2_3.logout_reason.size

  -- Parse runtime size of: Logout Text
  index = index + buffer(offset + index - 4, 2):le_uint()

  return index
end

-- Display: Logout Request
miax_pearloptions_expressorders_meo_v2_3.logout_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Request
miax_pearloptions_expressorders_meo_v2_3.logout_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logout Reason: 1 Byte Ascii String Enum with 4 values
  index, logout_reason = miax_pearloptions_expressorders_meo_v2_3.logout_reason.dissect(buffer, index, packet, parent)

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Logout Text
  local size_of_logout_text = sesm_packet_length - 2

  -- Logout Text: 0 Byte Ascii String
  index, logout_text = miax_pearloptions_expressorders_meo_v2_3.logout_text.dissect(buffer, index, packet, parent, size_of_logout_text)

  return index
end

-- Dissect: Logout Request
miax_pearloptions_expressorders_meo_v2_3.logout_request.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.logout_request, buffer(offset, 0))
    local index = miax_pearloptions_expressorders_meo_v2_3.logout_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_expressorders_meo_v2_3.logout_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_expressorders_meo_v2_3.logout_request.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Request
miax_pearloptions_expressorders_meo_v2_3.retransmission_request = {}

-- Size: Retransmission Request
miax_pearloptions_expressorders_meo_v2_3.retransmission_request.size =
  miax_pearloptions_expressorders_meo_v2_3.start_sequence_number.size + 
  miax_pearloptions_expressorders_meo_v2_3.end_sequence_number.size

-- Display: Retransmission Request
miax_pearloptions_expressorders_meo_v2_3.retransmission_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request
miax_pearloptions_expressorders_meo_v2_3.retransmission_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, start_sequence_number = miax_pearloptions_expressorders_meo_v2_3.start_sequence_number.dissect(buffer, index, packet, parent)

  -- End Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, end_sequence_number = miax_pearloptions_expressorders_meo_v2_3.end_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request
miax_pearloptions_expressorders_meo_v2_3.retransmission_request.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.retransmission_request, buffer(offset, 0))
    local index = miax_pearloptions_expressorders_meo_v2_3.retransmission_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_expressorders_meo_v2_3.retransmission_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_expressorders_meo_v2_3.retransmission_request.fields(buffer, offset, packet, parent)
  end
end

-- Synchronization Complete
miax_pearloptions_expressorders_meo_v2_3.synchronization_complete = {}

-- Display: Synchronization Complete
miax_pearloptions_expressorders_meo_v2_3.synchronization_complete.display = function(packet, parent, length)
  return "Synchronization Complete"
end


-- Dissect: Synchronization Complete
miax_pearloptions_expressorders_meo_v2_3.synchronization_complete.dissect = function(buffer, offset, packet, parent)
  local display = miax_pearloptions_expressorders_meo_v2_3.synchronization_complete.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Login Response
miax_pearloptions_expressorders_meo_v2_3.login_response = {}

-- Size: Login Response
miax_pearloptions_expressorders_meo_v2_3.login_response.size =
  miax_pearloptions_expressorders_meo_v2_3.login_status.size + 
  miax_pearloptions_expressorders_meo_v2_3.session_id.size + 
  miax_pearloptions_expressorders_meo_v2_3.highest_sequence_number.size

-- Display: Login Response
miax_pearloptions_expressorders_meo_v2_3.login_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response
miax_pearloptions_expressorders_meo_v2_3.login_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Login Status: 1 Byte Ascii String Enum with 7 values
  index, login_status = miax_pearloptions_expressorders_meo_v2_3.login_status.dissect(buffer, index, packet, parent)

  -- Session Id: BinaryU
  index, session_id = miax_pearloptions_expressorders_meo_v2_3.session_id.dissect(buffer, index, packet, parent)

  -- Highest Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, highest_sequence_number = miax_pearloptions_expressorders_meo_v2_3.highest_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response
miax_pearloptions_expressorders_meo_v2_3.login_response.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.login_response, buffer(offset, 0))
    local index = miax_pearloptions_expressorders_meo_v2_3.login_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_expressorders_meo_v2_3.login_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_expressorders_meo_v2_3.login_response.fields(buffer, offset, packet, parent)
  end
end

-- Login Request
miax_pearloptions_expressorders_meo_v2_3.login_request = {}

-- Size: Login Request
miax_pearloptions_expressorders_meo_v2_3.login_request.size =
  miax_pearloptions_expressorders_meo_v2_3.sesm_version.size + 
  miax_pearloptions_expressorders_meo_v2_3.username.size + 
  miax_pearloptions_expressorders_meo_v2_3.computer_id.size + 
  miax_pearloptions_expressorders_meo_v2_3.application_protocol.size + 
  miax_pearloptions_expressorders_meo_v2_3.requested_session.size + 
  miax_pearloptions_expressorders_meo_v2_3.requested_sequence_number.size

-- Display: Login Request
miax_pearloptions_expressorders_meo_v2_3.login_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request
miax_pearloptions_expressorders_meo_v2_3.login_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sesm Version: 5 Byte Ascii String
  index, sesm_version = miax_pearloptions_expressorders_meo_v2_3.sesm_version.dissect(buffer, index, packet, parent)

  -- Username: 5 Byte Ascii String
  index, username = miax_pearloptions_expressorders_meo_v2_3.username.dissect(buffer, index, packet, parent)

  -- Computer Id: 8 Byte Ascii String
  index, computer_id = miax_pearloptions_expressorders_meo_v2_3.computer_id.dissect(buffer, index, packet, parent)

  -- Application Protocol: 8 Byte Ascii String
  index, application_protocol = miax_pearloptions_expressorders_meo_v2_3.application_protocol.dissect(buffer, index, packet, parent)

  -- Requested Session: 1 Byte Unsigned Fixed Width Integer
  index, requested_session = miax_pearloptions_expressorders_meo_v2_3.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, requested_sequence_number = miax_pearloptions_expressorders_meo_v2_3.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request
miax_pearloptions_expressorders_meo_v2_3.login_request.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.login_request, buffer(offset, 0))
    local index = miax_pearloptions_expressorders_meo_v2_3.login_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_expressorders_meo_v2_3.login_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_expressorders_meo_v2_3.login_request.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Notification
miax_pearloptions_expressorders_meo_v2_3.cancel_notification = {}

-- Size: Cancel Notification
miax_pearloptions_expressorders_meo_v2_3.cancel_notification.size =
  miax_pearloptions_expressorders_meo_v2_3.notification_time.size + 
  miax_pearloptions_expressorders_meo_v2_3.mpid.size + 
  miax_pearloptions_expressorders_meo_v2_3.product_id.size + 
  miax_pearloptions_expressorders_meo_v2_3.liquidity_type.size + 
  miax_pearloptions_expressorders_meo_v2_3.client_message_id.size + 
  miax_pearloptions_expressorders_meo_v2_3.client_order_id.size + 
  miax_pearloptions_expressorders_meo_v2_3.bulk_order_index.size + 
  miax_pearloptions_expressorders_meo_v2_3.side.size + 
  miax_pearloptions_expressorders_meo_v2_3.size.size + 
  miax_pearloptions_expressorders_meo_v2_3.engine_sequence_number.size + 
  miax_pearloptions_expressorders_meo_v2_3.cancel_reason.size

-- Display: Cancel Notification
miax_pearloptions_expressorders_meo_v2_3.cancel_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Notification
miax_pearloptions_expressorders_meo_v2_3.cancel_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: NanoTime
  index, notification_time = miax_pearloptions_expressorders_meo_v2_3.notification_time.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_pearloptions_expressorders_meo_v2_3.mpid.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_pearloptions_expressorders_meo_v2_3.product_id.dissect(buffer, index, packet, parent)

  -- Liquidity Type: Alphanumeric
  index, liquidity_type = miax_pearloptions_expressorders_meo_v2_3.liquidity_type.dissect(buffer, index, packet, parent)

  -- Client Message Id: BinaryU
  index, client_message_id = miax_pearloptions_expressorders_meo_v2_3.client_message_id.dissect(buffer, index, packet, parent)

  -- Client Order Id: BinaryU
  index, client_order_id = miax_pearloptions_expressorders_meo_v2_3.client_order_id.dissect(buffer, index, packet, parent)

  -- Bulk Order Index: BinaryU
  index, bulk_order_index = miax_pearloptions_expressorders_meo_v2_3.bulk_order_index.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = miax_pearloptions_expressorders_meo_v2_3.side.dissect(buffer, index, packet, parent)

  -- Size: BinaryU
  index, size = miax_pearloptions_expressorders_meo_v2_3.size.dissect(buffer, index, packet, parent)

  -- Engine Sequence Number: BinaryU
  index, engine_sequence_number = miax_pearloptions_expressorders_meo_v2_3.engine_sequence_number.dissect(buffer, index, packet, parent)

  -- Cancel Reason: Alphanumeric
  index, cancel_reason = miax_pearloptions_expressorders_meo_v2_3.cancel_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Notification
miax_pearloptions_expressorders_meo_v2_3.cancel_notification.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.cancel_notification, buffer(offset, 0))
    local index = miax_pearloptions_expressorders_meo_v2_3.cancel_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_expressorders_meo_v2_3.cancel_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_expressorders_meo_v2_3.cancel_notification.fields(buffer, offset, packet, parent)
  end
end

-- Done For The Day Notification
miax_pearloptions_expressorders_meo_v2_3.done_for_the_day_notification = {}

-- Size: Done For The Day Notification
miax_pearloptions_expressorders_meo_v2_3.done_for_the_day_notification.size =
  miax_pearloptions_expressorders_meo_v2_3.notification_time.size + 
  miax_pearloptions_expressorders_meo_v2_3.client_order_id.size + 
  miax_pearloptions_expressorders_meo_v2_3.client_message_id.size + 
  miax_pearloptions_expressorders_meo_v2_3.bulk_order_index.size + 
  miax_pearloptions_expressorders_meo_v2_3.target_client_order_id.size + 
  miax_pearloptions_expressorders_meo_v2_3.mpid.size + 
  miax_pearloptions_expressorders_meo_v2_3.product_id.size + 
  miax_pearloptions_expressorders_meo_v2_3.time_in_force_tif.size + 
  miax_pearloptions_expressorders_meo_v2_3.order_instruction.size + 
  miax_pearloptions_expressorders_meo_v2_3.origin.size + 
  miax_pearloptions_expressorders_meo_v2_3.mvp.size + 
  miax_pearloptions_expressorders_meo_v2_3.price.size + 
  miax_pearloptions_expressorders_meo_v2_3.size.size + 
  miax_pearloptions_expressorders_meo_v2_3.side.size + 
  miax_pearloptions_expressorders_meo_v2_3.open_close.size + 
  miax_pearloptions_expressorders_meo_v2_3.covered_uncovered.size + 
  miax_pearloptions_expressorders_meo_v2_3.clearing_account.size + 
  miax_pearloptions_expressorders_meo_v2_3.cmta.size + 
  miax_pearloptions_expressorders_meo_v2_3.account.size

-- Display: Done For The Day Notification
miax_pearloptions_expressorders_meo_v2_3.done_for_the_day_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Done For The Day Notification
miax_pearloptions_expressorders_meo_v2_3.done_for_the_day_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: NanoTime
  index, notification_time = miax_pearloptions_expressorders_meo_v2_3.notification_time.dissect(buffer, index, packet, parent)

  -- Client Order Id: BinaryU
  index, client_order_id = miax_pearloptions_expressorders_meo_v2_3.client_order_id.dissect(buffer, index, packet, parent)

  -- Client Message Id: BinaryU
  index, client_message_id = miax_pearloptions_expressorders_meo_v2_3.client_message_id.dissect(buffer, index, packet, parent)

  -- Bulk Order Index: BinaryU
  index, bulk_order_index = miax_pearloptions_expressorders_meo_v2_3.bulk_order_index.dissect(buffer, index, packet, parent)

  -- Target Client Order Id: BinaryU
  index, target_client_order_id = miax_pearloptions_expressorders_meo_v2_3.target_client_order_id.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_pearloptions_expressorders_meo_v2_3.mpid.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_pearloptions_expressorders_meo_v2_3.product_id.dissect(buffer, index, packet, parent)

  -- Time In Force Tif: Alphanumeric
  index, time_in_force_tif = miax_pearloptions_expressorders_meo_v2_3.time_in_force_tif.dissect(buffer, index, packet, parent)

  -- Order Instruction: Alphanumeric
  index, order_instruction = miax_pearloptions_expressorders_meo_v2_3.order_instruction.dissect(buffer, index, packet, parent)

  -- Origin: Alphanumeric
  index, origin = miax_pearloptions_expressorders_meo_v2_3.origin.dissect(buffer, index, packet, parent)

  -- Mvp: BinaryS
  index, mvp = miax_pearloptions_expressorders_meo_v2_3.mvp.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrc4U
  index, price = miax_pearloptions_expressorders_meo_v2_3.price.dissect(buffer, index, packet, parent)

  -- Size: BinaryU
  index, size = miax_pearloptions_expressorders_meo_v2_3.size.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = miax_pearloptions_expressorders_meo_v2_3.side.dissect(buffer, index, packet, parent)

  -- Open Close: Alphanumeric
  index, open_close = miax_pearloptions_expressorders_meo_v2_3.open_close.dissect(buffer, index, packet, parent)

  -- Covered Uncovered: Alphanumeric
  index, covered_uncovered = miax_pearloptions_expressorders_meo_v2_3.covered_uncovered.dissect(buffer, index, packet, parent)

  -- Clearing Account: Alphanumeric
  index, clearing_account = miax_pearloptions_expressorders_meo_v2_3.clearing_account.dissect(buffer, index, packet, parent)

  -- Cmta: BinaryU
  index, cmta = miax_pearloptions_expressorders_meo_v2_3.cmta.dissect(buffer, index, packet, parent)

  -- Account: Alphanumeric
  index, account = miax_pearloptions_expressorders_meo_v2_3.account.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Done For The Day Notification
miax_pearloptions_expressorders_meo_v2_3.done_for_the_day_notification.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.done_for_the_day_notification, buffer(offset, 0))
    local index = miax_pearloptions_expressorders_meo_v2_3.done_for_the_day_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_expressorders_meo_v2_3.done_for_the_day_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_expressorders_meo_v2_3.done_for_the_day_notification.fields(buffer, offset, packet, parent)
  end
end

-- Order Notification
miax_pearloptions_expressorders_meo_v2_3.order_notification = {}

-- Size: Order Notification
miax_pearloptions_expressorders_meo_v2_3.order_notification.size =
  miax_pearloptions_expressorders_meo_v2_3.notification_time.size + 
  miax_pearloptions_expressorders_meo_v2_3.client_order_id.size + 
  miax_pearloptions_expressorders_meo_v2_3.client_message_id.size + 
  miax_pearloptions_expressorders_meo_v2_3.bulk_order_index.size + 
  miax_pearloptions_expressorders_meo_v2_3.target_client_order_id.size + 
  miax_pearloptions_expressorders_meo_v2_3.mpid.size + 
  miax_pearloptions_expressorders_meo_v2_3.product_id.size + 
  miax_pearloptions_expressorders_meo_v2_3.time_in_force_tif.size + 
  miax_pearloptions_expressorders_meo_v2_3.order_instruction.size + 
  miax_pearloptions_expressorders_meo_v2_3.origin.size + 
  miax_pearloptions_expressorders_meo_v2_3.mvp.size + 
  miax_pearloptions_expressorders_meo_v2_3.price.size + 
  miax_pearloptions_expressorders_meo_v2_3.size.size + 
  miax_pearloptions_expressorders_meo_v2_3.side.size + 
  miax_pearloptions_expressorders_meo_v2_3.open_close.size + 
  miax_pearloptions_expressorders_meo_v2_3.covered_uncovered.size + 
  miax_pearloptions_expressorders_meo_v2_3.clearing_account.size + 
  miax_pearloptions_expressorders_meo_v2_3.cmta.size + 
  miax_pearloptions_expressorders_meo_v2_3.account.size

-- Display: Order Notification
miax_pearloptions_expressorders_meo_v2_3.order_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Notification
miax_pearloptions_expressorders_meo_v2_3.order_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: NanoTime
  index, notification_time = miax_pearloptions_expressorders_meo_v2_3.notification_time.dissect(buffer, index, packet, parent)

  -- Client Order Id: BinaryU
  index, client_order_id = miax_pearloptions_expressorders_meo_v2_3.client_order_id.dissect(buffer, index, packet, parent)

  -- Client Message Id: BinaryU
  index, client_message_id = miax_pearloptions_expressorders_meo_v2_3.client_message_id.dissect(buffer, index, packet, parent)

  -- Bulk Order Index: BinaryU
  index, bulk_order_index = miax_pearloptions_expressorders_meo_v2_3.bulk_order_index.dissect(buffer, index, packet, parent)

  -- Target Client Order Id: BinaryU
  index, target_client_order_id = miax_pearloptions_expressorders_meo_v2_3.target_client_order_id.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_pearloptions_expressorders_meo_v2_3.mpid.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_pearloptions_expressorders_meo_v2_3.product_id.dissect(buffer, index, packet, parent)

  -- Time In Force Tif: Alphanumeric
  index, time_in_force_tif = miax_pearloptions_expressorders_meo_v2_3.time_in_force_tif.dissect(buffer, index, packet, parent)

  -- Order Instruction: Alphanumeric
  index, order_instruction = miax_pearloptions_expressorders_meo_v2_3.order_instruction.dissect(buffer, index, packet, parent)

  -- Origin: Alphanumeric
  index, origin = miax_pearloptions_expressorders_meo_v2_3.origin.dissect(buffer, index, packet, parent)

  -- Mvp: BinaryS
  index, mvp = miax_pearloptions_expressorders_meo_v2_3.mvp.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrc4U
  index, price = miax_pearloptions_expressorders_meo_v2_3.price.dissect(buffer, index, packet, parent)

  -- Size: BinaryU
  index, size = miax_pearloptions_expressorders_meo_v2_3.size.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = miax_pearloptions_expressorders_meo_v2_3.side.dissect(buffer, index, packet, parent)

  -- Open Close: Alphanumeric
  index, open_close = miax_pearloptions_expressorders_meo_v2_3.open_close.dissect(buffer, index, packet, parent)

  -- Covered Uncovered: Alphanumeric
  index, covered_uncovered = miax_pearloptions_expressorders_meo_v2_3.covered_uncovered.dissect(buffer, index, packet, parent)

  -- Clearing Account: Alphanumeric
  index, clearing_account = miax_pearloptions_expressorders_meo_v2_3.clearing_account.dissect(buffer, index, packet, parent)

  -- Cmta: BinaryU
  index, cmta = miax_pearloptions_expressorders_meo_v2_3.cmta.dissect(buffer, index, packet, parent)

  -- Account: Alphanumeric
  index, account = miax_pearloptions_expressorders_meo_v2_3.account.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Notification
miax_pearloptions_expressorders_meo_v2_3.order_notification.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.order_notification, buffer(offset, 0))
    local index = miax_pearloptions_expressorders_meo_v2_3.order_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_expressorders_meo_v2_3.order_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_expressorders_meo_v2_3.order_notification.fields(buffer, offset, packet, parent)
  end
end

-- Triggered Slap Codes
miax_pearloptions_expressorders_meo_v2_3.triggered_slap_codes = {}

-- Size: Triggered Slap Codes
miax_pearloptions_expressorders_meo_v2_3.triggered_slap_codes.size = 1

-- Display: Triggered Slap Codes
miax_pearloptions_expressorders_meo_v2_3.triggered_slap_codes.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Slap Code 1 flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Slap Code 1"
  end
  -- Is Slap Code 2 flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Slap Code 2"
  end
  -- Is Slap Code 3 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Slap Code 3"
  end
  -- Is Slap Code 4 flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Slap Code 4"
  end
  -- Is Slap Code 5 flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Slap Code 5"
  end
  -- Is Slap Code 6 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Slap Code 6"
  end
  -- Is Slap Code 7 flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Slap Code 7"
  end
  -- Is Slap Code 8 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Slap Code 8"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Triggered Slap Codes
miax_pearloptions_expressorders_meo_v2_3.triggered_slap_codes.bits = function(range, value, packet, parent)

  -- Slap Code 1: 1 Bit
  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.slap_code_1, range, value)

  -- Slap Code 2: 1 Bit
  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.slap_code_2, range, value)

  -- Slap Code 3: 1 Bit
  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.slap_code_3, range, value)

  -- Slap Code 4: 1 Bit
  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.slap_code_4, range, value)

  -- Slap Code 5: 1 Bit
  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.slap_code_5, range, value)

  -- Slap Code 6: 1 Bit
  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.slap_code_6, range, value)

  -- Slap Code 7: 1 Bit
  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.slap_code_7, range, value)

  -- Slap Code 8: 1 Bit
  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.slap_code_8, range, value)
end

-- Dissect: Triggered Slap Codes
miax_pearloptions_expressorders_meo_v2_3.triggered_slap_codes.dissect = function(buffer, offset, packet, parent)
  local size = miax_pearloptions_expressorders_meo_v2_3.triggered_slap_codes.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = miax_pearloptions_expressorders_meo_v2_3.triggered_slap_codes.display(range, value, packet, parent)
  local element = parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.triggered_slap_codes, range, display)

  if show.structs then
    miax_pearloptions_expressorders_meo_v2_3.triggered_slap_codes.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Requested Slap Codes
miax_pearloptions_expressorders_meo_v2_3.requested_slap_codes = {}

-- Size: Requested Slap Codes
miax_pearloptions_expressorders_meo_v2_3.requested_slap_codes.size = 1

-- Display: Requested Slap Codes
miax_pearloptions_expressorders_meo_v2_3.requested_slap_codes.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Slap Code 1 flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Slap Code 1"
  end
  -- Is Slap Code 2 flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Slap Code 2"
  end
  -- Is Slap Code 3 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Slap Code 3"
  end
  -- Is Slap Code 4 flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Slap Code 4"
  end
  -- Is Slap Code 5 flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Slap Code 5"
  end
  -- Is Slap Code 6 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Slap Code 6"
  end
  -- Is Slap Code 7 flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Slap Code 7"
  end
  -- Is Slap Code 8 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Slap Code 8"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Requested Slap Codes
miax_pearloptions_expressorders_meo_v2_3.requested_slap_codes.bits = function(range, value, packet, parent)

  -- Slap Code 1: 1 Bit
  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.slap_code_1, range, value)

  -- Slap Code 2: 1 Bit
  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.slap_code_2, range, value)

  -- Slap Code 3: 1 Bit
  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.slap_code_3, range, value)

  -- Slap Code 4: 1 Bit
  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.slap_code_4, range, value)

  -- Slap Code 5: 1 Bit
  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.slap_code_5, range, value)

  -- Slap Code 6: 1 Bit
  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.slap_code_6, range, value)

  -- Slap Code 7: 1 Bit
  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.slap_code_7, range, value)

  -- Slap Code 8: 1 Bit
  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.slap_code_8, range, value)
end

-- Dissect: Requested Slap Codes
miax_pearloptions_expressorders_meo_v2_3.requested_slap_codes.dissect = function(buffer, offset, packet, parent)
  local size = miax_pearloptions_expressorders_meo_v2_3.requested_slap_codes.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = miax_pearloptions_expressorders_meo_v2_3.requested_slap_codes.display(range, value, packet, parent)
  local element = parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.requested_slap_codes, range, display)

  if show.structs then
    miax_pearloptions_expressorders_meo_v2_3.requested_slap_codes.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Slap Protection Trigger Notification
miax_pearloptions_expressorders_meo_v2_3.slap_protection_trigger_notification = {}

-- Size: Slap Protection Trigger Notification
miax_pearloptions_expressorders_meo_v2_3.slap_protection_trigger_notification.size =
  miax_pearloptions_expressorders_meo_v2_3.notification_time.size + 
  miax_pearloptions_expressorders_meo_v2_3.mpid.size + 
  miax_pearloptions_expressorders_meo_v2_3.underlying_symbol.size + 
  miax_pearloptions_expressorders_meo_v2_3.requested_slap_codes.size + 
  miax_pearloptions_expressorders_meo_v2_3.triggered_slap_codes.size + 
  miax_pearloptions_expressorders_meo_v2_3.reserved_10.size

-- Display: Slap Protection Trigger Notification
miax_pearloptions_expressorders_meo_v2_3.slap_protection_trigger_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Slap Protection Trigger Notification
miax_pearloptions_expressorders_meo_v2_3.slap_protection_trigger_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: NanoTime
  index, notification_time = miax_pearloptions_expressorders_meo_v2_3.notification_time.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_pearloptions_expressorders_meo_v2_3.mpid.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_pearloptions_expressorders_meo_v2_3.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Requested Slap Codes: Struct of 8 fields
  index, requested_slap_codes = miax_pearloptions_expressorders_meo_v2_3.requested_slap_codes.dissect(buffer, index, packet, parent)

  -- Triggered Slap Codes: Struct of 8 fields
  index, triggered_slap_codes = miax_pearloptions_expressorders_meo_v2_3.triggered_slap_codes.dissect(buffer, index, packet, parent)

  -- Reserved 10: BinaryU
  if show.padding then
    index, reserved_10 = miax_pearloptions_expressorders_meo_v2_3.reserved_10.dissect(buffer, index, packet, parent)
  else
    index = index + miax_pearloptions_expressorders_meo_v2_3.reserved_10.size
  end

  return index
end

-- Dissect: Slap Protection Trigger Notification
miax_pearloptions_expressorders_meo_v2_3.slap_protection_trigger_notification.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.slap_protection_trigger_notification, buffer(offset, 0))
    local index = miax_pearloptions_expressorders_meo_v2_3.slap_protection_trigger_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_expressorders_meo_v2_3.slap_protection_trigger_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_expressorders_meo_v2_3.slap_protection_trigger_notification.fields(buffer, offset, packet, parent)
  end
end

-- Liquidity Protection Trigger Notification
miax_pearloptions_expressorders_meo_v2_3.liquidity_protection_trigger_notification = {}

-- Size: Liquidity Protection Trigger Notification
miax_pearloptions_expressorders_meo_v2_3.liquidity_protection_trigger_notification.size =
  miax_pearloptions_expressorders_meo_v2_3.notification_time.size + 
  miax_pearloptions_expressorders_meo_v2_3.mpid.size + 
  miax_pearloptions_expressorders_meo_v2_3.underlying_symbol.size + 
  miax_pearloptions_expressorders_meo_v2_3.trigger_reason.size

-- Display: Liquidity Protection Trigger Notification
miax_pearloptions_expressorders_meo_v2_3.liquidity_protection_trigger_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Liquidity Protection Trigger Notification
miax_pearloptions_expressorders_meo_v2_3.liquidity_protection_trigger_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: NanoTime
  index, notification_time = miax_pearloptions_expressorders_meo_v2_3.notification_time.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_pearloptions_expressorders_meo_v2_3.mpid.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_pearloptions_expressorders_meo_v2_3.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Trigger Reason: Alphanumeric
  index, trigger_reason = miax_pearloptions_expressorders_meo_v2_3.trigger_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Liquidity Protection Trigger Notification
miax_pearloptions_expressorders_meo_v2_3.liquidity_protection_trigger_notification.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.liquidity_protection_trigger_notification, buffer(offset, 0))
    local index = miax_pearloptions_expressorders_meo_v2_3.liquidity_protection_trigger_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_expressorders_meo_v2_3.liquidity_protection_trigger_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_expressorders_meo_v2_3.liquidity_protection_trigger_notification.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Liquidity Protection Reset Response
miax_pearloptions_expressorders_meo_v2_3.single_side_liquidity_protection_reset_response = {}

-- Size: Single Side Liquidity Protection Reset Response
miax_pearloptions_expressorders_meo_v2_3.single_side_liquidity_protection_reset_response.size =
  miax_pearloptions_expressorders_meo_v2_3.client_message_id.size + 
  miax_pearloptions_expressorders_meo_v2_3.mpid.size + 
  miax_pearloptions_expressorders_meo_v2_3.reserved_4.size + 
  miax_pearloptions_expressorders_meo_v2_3.status.size

-- Display: Single Side Liquidity Protection Reset Response
miax_pearloptions_expressorders_meo_v2_3.single_side_liquidity_protection_reset_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Liquidity Protection Reset Response
miax_pearloptions_expressorders_meo_v2_3.single_side_liquidity_protection_reset_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Message Id: BinaryU
  index, client_message_id = miax_pearloptions_expressorders_meo_v2_3.client_message_id.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_pearloptions_expressorders_meo_v2_3.mpid.dissect(buffer, index, packet, parent)

  -- Reserved 4: BinaryU
  if show.padding then
    index, reserved_4 = miax_pearloptions_expressorders_meo_v2_3.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + miax_pearloptions_expressorders_meo_v2_3.reserved_4.size
  end

  -- Status: Alphanumeric
  index, status = miax_pearloptions_expressorders_meo_v2_3.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Liquidity Protection Reset Response
miax_pearloptions_expressorders_meo_v2_3.single_side_liquidity_protection_reset_response.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.single_side_liquidity_protection_reset_response, buffer(offset, 0))
    local index = miax_pearloptions_expressorders_meo_v2_3.single_side_liquidity_protection_reset_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_expressorders_meo_v2_3.single_side_liquidity_protection_reset_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_expressorders_meo_v2_3.single_side_liquidity_protection_reset_response.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Liquidity Protection Reset Request
miax_pearloptions_expressorders_meo_v2_3.single_side_liquidity_protection_reset_request = {}

-- Size: Single Side Liquidity Protection Reset Request
miax_pearloptions_expressorders_meo_v2_3.single_side_liquidity_protection_reset_request.size =
  miax_pearloptions_expressorders_meo_v2_3.client_message_id.size + 
  miax_pearloptions_expressorders_meo_v2_3.mpid.size + 
  miax_pearloptions_expressorders_meo_v2_3.product_id.size + 
  miax_pearloptions_expressorders_meo_v2_3.side.size + 
  miax_pearloptions_expressorders_meo_v2_3.reserved_4.size

-- Display: Single Side Liquidity Protection Reset Request
miax_pearloptions_expressorders_meo_v2_3.single_side_liquidity_protection_reset_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Liquidity Protection Reset Request
miax_pearloptions_expressorders_meo_v2_3.single_side_liquidity_protection_reset_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Message Id: BinaryU
  index, client_message_id = miax_pearloptions_expressorders_meo_v2_3.client_message_id.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_pearloptions_expressorders_meo_v2_3.mpid.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_pearloptions_expressorders_meo_v2_3.product_id.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = miax_pearloptions_expressorders_meo_v2_3.side.dissect(buffer, index, packet, parent)

  -- Reserved 4: BinaryU
  if show.padding then
    index, reserved_4 = miax_pearloptions_expressorders_meo_v2_3.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + miax_pearloptions_expressorders_meo_v2_3.reserved_4.size
  end

  return index
end

-- Dissect: Single Side Liquidity Protection Reset Request
miax_pearloptions_expressorders_meo_v2_3.single_side_liquidity_protection_reset_request.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.single_side_liquidity_protection_reset_request, buffer(offset, 0))
    local index = miax_pearloptions_expressorders_meo_v2_3.single_side_liquidity_protection_reset_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_expressorders_meo_v2_3.single_side_liquidity_protection_reset_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_expressorders_meo_v2_3.single_side_liquidity_protection_reset_request.fields(buffer, offset, packet, parent)
  end
end

-- Liquidity Protection Reset Response
miax_pearloptions_expressorders_meo_v2_3.liquidity_protection_reset_response = {}

-- Size: Liquidity Protection Reset Response
miax_pearloptions_expressorders_meo_v2_3.liquidity_protection_reset_response.size =
  miax_pearloptions_expressorders_meo_v2_3.client_message_id.size + 
  miax_pearloptions_expressorders_meo_v2_3.mpid.size + 
  miax_pearloptions_expressorders_meo_v2_3.status.size

-- Display: Liquidity Protection Reset Response
miax_pearloptions_expressorders_meo_v2_3.liquidity_protection_reset_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Liquidity Protection Reset Response
miax_pearloptions_expressorders_meo_v2_3.liquidity_protection_reset_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Message Id: BinaryU
  index, client_message_id = miax_pearloptions_expressorders_meo_v2_3.client_message_id.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_pearloptions_expressorders_meo_v2_3.mpid.dissect(buffer, index, packet, parent)

  -- Status: Alphanumeric
  index, status = miax_pearloptions_expressorders_meo_v2_3.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Liquidity Protection Reset Response
miax_pearloptions_expressorders_meo_v2_3.liquidity_protection_reset_response.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.liquidity_protection_reset_response, buffer(offset, 0))
    local index = miax_pearloptions_expressorders_meo_v2_3.liquidity_protection_reset_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_expressorders_meo_v2_3.liquidity_protection_reset_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_expressorders_meo_v2_3.liquidity_protection_reset_response.fields(buffer, offset, packet, parent)
  end
end

-- Slap Codes
miax_pearloptions_expressorders_meo_v2_3.slap_codes = {}

-- Size: Slap Codes
miax_pearloptions_expressorders_meo_v2_3.slap_codes.size = 1

-- Display: Slap Codes
miax_pearloptions_expressorders_meo_v2_3.slap_codes.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Slap Code 1 flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Slap Code 1"
  end
  -- Is Slap Code 2 flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Slap Code 2"
  end
  -- Is Slap Code 3 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Slap Code 3"
  end
  -- Is Slap Code 4 flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Slap Code 4"
  end
  -- Is Slap Code 5 flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Slap Code 5"
  end
  -- Is Slap Code 6 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Slap Code 6"
  end
  -- Is Slap Code 7 flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Slap Code 7"
  end
  -- Is Slap Code 8 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Slap Code 8"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Slap Codes
miax_pearloptions_expressorders_meo_v2_3.slap_codes.bits = function(range, value, packet, parent)

  -- Slap Code 1: 1 Bit
  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.slap_code_1, range, value)

  -- Slap Code 2: 1 Bit
  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.slap_code_2, range, value)

  -- Slap Code 3: 1 Bit
  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.slap_code_3, range, value)

  -- Slap Code 4: 1 Bit
  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.slap_code_4, range, value)

  -- Slap Code 5: 1 Bit
  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.slap_code_5, range, value)

  -- Slap Code 6: 1 Bit
  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.slap_code_6, range, value)

  -- Slap Code 7: 1 Bit
  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.slap_code_7, range, value)

  -- Slap Code 8: 1 Bit
  parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.slap_code_8, range, value)
end

-- Dissect: Slap Codes
miax_pearloptions_expressorders_meo_v2_3.slap_codes.dissect = function(buffer, offset, packet, parent)
  local size = miax_pearloptions_expressorders_meo_v2_3.slap_codes.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = miax_pearloptions_expressorders_meo_v2_3.slap_codes.display(range, value, packet, parent)
  local element = parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.slap_codes, range, display)

  if show.structs then
    miax_pearloptions_expressorders_meo_v2_3.slap_codes.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Liquidity Protection Reset Request
miax_pearloptions_expressorders_meo_v2_3.liquidity_protection_reset_request = {}

-- Size: Liquidity Protection Reset Request
miax_pearloptions_expressorders_meo_v2_3.liquidity_protection_reset_request.size =
  miax_pearloptions_expressorders_meo_v2_3.client_message_id.size + 
  miax_pearloptions_expressorders_meo_v2_3.mpid.size + 
  miax_pearloptions_expressorders_meo_v2_3.underlying_symbol.size + 
  miax_pearloptions_expressorders_meo_v2_3.scope.size + 
  miax_pearloptions_expressorders_meo_v2_3.slap_codes.size + 
  miax_pearloptions_expressorders_meo_v2_3.reserved_10.size

-- Display: Liquidity Protection Reset Request
miax_pearloptions_expressorders_meo_v2_3.liquidity_protection_reset_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Liquidity Protection Reset Request
miax_pearloptions_expressorders_meo_v2_3.liquidity_protection_reset_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Message Id: BinaryU
  index, client_message_id = miax_pearloptions_expressorders_meo_v2_3.client_message_id.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_pearloptions_expressorders_meo_v2_3.mpid.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_pearloptions_expressorders_meo_v2_3.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Scope: Alphanumeric
  index, scope = miax_pearloptions_expressorders_meo_v2_3.scope.dissect(buffer, index, packet, parent)

  -- Slap Codes: Struct of 8 fields
  index, slap_codes = miax_pearloptions_expressorders_meo_v2_3.slap_codes.dissect(buffer, index, packet, parent)

  -- Reserved 10: BinaryU
  if show.padding then
    index, reserved_10 = miax_pearloptions_expressorders_meo_v2_3.reserved_10.dissect(buffer, index, packet, parent)
  else
    index = index + miax_pearloptions_expressorders_meo_v2_3.reserved_10.size
  end

  return index
end

-- Dissect: Liquidity Protection Reset Request
miax_pearloptions_expressorders_meo_v2_3.liquidity_protection_reset_request.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.liquidity_protection_reset_request, buffer(offset, 0))
    local index = miax_pearloptions_expressorders_meo_v2_3.liquidity_protection_reset_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_expressorders_meo_v2_3.liquidity_protection_reset_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_expressorders_meo_v2_3.liquidity_protection_reset_request.fields(buffer, offset, packet, parent)
  end
end

-- Liquidity Mass Cancel Response
miax_pearloptions_expressorders_meo_v2_3.liquidity_mass_cancel_response = {}

-- Size: Liquidity Mass Cancel Response
miax_pearloptions_expressorders_meo_v2_3.liquidity_mass_cancel_response.size =
  miax_pearloptions_expressorders_meo_v2_3.client_message_id.size + 
  miax_pearloptions_expressorders_meo_v2_3.mpid.size + 
  miax_pearloptions_expressorders_meo_v2_3.status.size

-- Display: Liquidity Mass Cancel Response
miax_pearloptions_expressorders_meo_v2_3.liquidity_mass_cancel_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Liquidity Mass Cancel Response
miax_pearloptions_expressorders_meo_v2_3.liquidity_mass_cancel_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Message Id: BinaryU
  index, client_message_id = miax_pearloptions_expressorders_meo_v2_3.client_message_id.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_pearloptions_expressorders_meo_v2_3.mpid.dissect(buffer, index, packet, parent)

  -- Status: Alphanumeric
  index, status = miax_pearloptions_expressorders_meo_v2_3.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Liquidity Mass Cancel Response
miax_pearloptions_expressorders_meo_v2_3.liquidity_mass_cancel_response.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.liquidity_mass_cancel_response, buffer(offset, 0))
    local index = miax_pearloptions_expressorders_meo_v2_3.liquidity_mass_cancel_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_expressorders_meo_v2_3.liquidity_mass_cancel_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_expressorders_meo_v2_3.liquidity_mass_cancel_response.fields(buffer, offset, packet, parent)
  end
end

-- Liquidity Mass Cancel Request
miax_pearloptions_expressorders_meo_v2_3.liquidity_mass_cancel_request = {}

-- Size: Liquidity Mass Cancel Request
miax_pearloptions_expressorders_meo_v2_3.liquidity_mass_cancel_request.size =
  miax_pearloptions_expressorders_meo_v2_3.client_message_id.size + 
  miax_pearloptions_expressorders_meo_v2_3.mpid.size + 
  miax_pearloptions_expressorders_meo_v2_3.client_send_time.size + 
  miax_pearloptions_expressorders_meo_v2_3.underlying_symbol.size + 
  miax_pearloptions_expressorders_meo_v2_3.mass_cancel_scope.size + 
  miax_pearloptions_expressorders_meo_v2_3.slap_codes.size + 
  miax_pearloptions_expressorders_meo_v2_3.reserved_6.size

-- Display: Liquidity Mass Cancel Request
miax_pearloptions_expressorders_meo_v2_3.liquidity_mass_cancel_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Liquidity Mass Cancel Request
miax_pearloptions_expressorders_meo_v2_3.liquidity_mass_cancel_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Message Id: BinaryU
  index, client_message_id = miax_pearloptions_expressorders_meo_v2_3.client_message_id.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_pearloptions_expressorders_meo_v2_3.mpid.dissect(buffer, index, packet, parent)

  -- Client Send Time: TimeStamp
  index, client_send_time = miax_pearloptions_expressorders_meo_v2_3.client_send_time.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_pearloptions_expressorders_meo_v2_3.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Mass Cancel Scope: Alphanumeric
  index, mass_cancel_scope = miax_pearloptions_expressorders_meo_v2_3.mass_cancel_scope.dissect(buffer, index, packet, parent)

  -- Slap Codes: Struct of 8 fields
  index, slap_codes = miax_pearloptions_expressorders_meo_v2_3.slap_codes.dissect(buffer, index, packet, parent)

  -- Reserved 6: BinaryU
  if show.padding then
    index, reserved_6 = miax_pearloptions_expressorders_meo_v2_3.reserved_6.dissect(buffer, index, packet, parent)
  else
    index = index + miax_pearloptions_expressorders_meo_v2_3.reserved_6.size
  end

  return index
end

-- Dissect: Liquidity Mass Cancel Request
miax_pearloptions_expressorders_meo_v2_3.liquidity_mass_cancel_request.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.liquidity_mass_cancel_request, buffer(offset, 0))
    local index = miax_pearloptions_expressorders_meo_v2_3.liquidity_mass_cancel_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_expressorders_meo_v2_3.liquidity_mass_cancel_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_expressorders_meo_v2_3.liquidity_mass_cancel_request.fields(buffer, offset, packet, parent)
  end
end

-- Order Response
miax_pearloptions_expressorders_meo_v2_3.order_response = {}

-- Size: Order Response
miax_pearloptions_expressorders_meo_v2_3.order_response.size =
  miax_pearloptions_expressorders_meo_v2_3.order_status.size + 
  miax_pearloptions_expressorders_meo_v2_3.engine_sequence_number.size + 
  miax_pearloptions_expressorders_meo_v2_3.open_size.size

-- Display: Order Response
miax_pearloptions_expressorders_meo_v2_3.order_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Response
miax_pearloptions_expressorders_meo_v2_3.order_response.fields = function(buffer, offset, packet, parent, order_response_index)
  local index = offset

  -- Implicit Order Response Index
  if order_response_index ~= nil and show.indexes then
    local iteration = parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.order_response_index, order_response_index)
    iteration:set_generated()
  end

  -- Order Status: Alphanumeric
  index, order_status = miax_pearloptions_expressorders_meo_v2_3.order_status.dissect(buffer, index, packet, parent)

  -- Engine Sequence Number: BinaryU
  index, engine_sequence_number = miax_pearloptions_expressorders_meo_v2_3.engine_sequence_number.dissect(buffer, index, packet, parent)

  -- Open Size: BinaryU
  index, open_size = miax_pearloptions_expressorders_meo_v2_3.open_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Response
miax_pearloptions_expressorders_meo_v2_3.order_response.dissect = function(buffer, offset, packet, parent, order_response_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.order_response, buffer(offset, 0))
    local index = miax_pearloptions_expressorders_meo_v2_3.order_response.fields(buffer, offset, packet, parent, order_response_index)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_expressorders_meo_v2_3.order_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_expressorders_meo_v2_3.order_response.fields(buffer, offset, packet, parent, order_response_index)
  end
end

-- Bulk Liquidity Message Response
miax_pearloptions_expressorders_meo_v2_3.bulk_liquidity_message_response = {}

-- Calculate size of: Bulk Liquidity Message Response
miax_pearloptions_expressorders_meo_v2_3.bulk_liquidity_message_response.size = function(buffer, offset)
  local index = 0

  index = index + miax_pearloptions_expressorders_meo_v2_3.client_message_id.size

  index = index + miax_pearloptions_expressorders_meo_v2_3.bulk_order_status.size

  index = index + miax_pearloptions_expressorders_meo_v2_3.order_count.size

  index = index + miax_pearloptions_expressorders_meo_v2_3.invalid_order_count.size

  index = index + miax_pearloptions_expressorders_meo_v2_3.order_ack_time.size

  -- Calculate field size from count
  local order_response_count = buffer(offset + index - 9, 1):uint()
  index = index + order_response_count * 13

  return index
end

-- Display: Bulk Liquidity Message Response
miax_pearloptions_expressorders_meo_v2_3.bulk_liquidity_message_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Liquidity Message Response
miax_pearloptions_expressorders_meo_v2_3.bulk_liquidity_message_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Message Id: BinaryU
  index, client_message_id = miax_pearloptions_expressorders_meo_v2_3.client_message_id.dissect(buffer, index, packet, parent)

  -- Bulk Order Status: Alphanumeric
  index, bulk_order_status = miax_pearloptions_expressorders_meo_v2_3.bulk_order_status.dissect(buffer, index, packet, parent)

  -- Order Count: BinaryU
  index, order_count = miax_pearloptions_expressorders_meo_v2_3.order_count.dissect(buffer, index, packet, parent)

  -- Invalid Order Count: BinaryU
  index, invalid_order_count = miax_pearloptions_expressorders_meo_v2_3.invalid_order_count.dissect(buffer, index, packet, parent)

  -- Order Ack Time: NanoTime
  index, order_ack_time = miax_pearloptions_expressorders_meo_v2_3.order_ack_time.dissect(buffer, index, packet, parent)

  -- Repeating: Order Response
  for order_response_index = 1, invalid_order_count do
    index, order_response = miax_pearloptions_expressorders_meo_v2_3.order_response.dissect(buffer, index, packet, parent, order_response_index)
  end

  return index
end

-- Dissect: Bulk Liquidity Message Response
miax_pearloptions_expressorders_meo_v2_3.bulk_liquidity_message_response.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.bulk_liquidity_message_response, buffer(offset, 0))
    local index = miax_pearloptions_expressorders_meo_v2_3.bulk_liquidity_message_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_expressorders_meo_v2_3.bulk_liquidity_message_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_expressorders_meo_v2_3.bulk_liquidity_message_response.fields(buffer, offset, packet, parent)
  end
end

-- Liquidity Units
miax_pearloptions_expressorders_meo_v2_3.liquidity_units = {}

-- Size: Liquidity Units
miax_pearloptions_expressorders_meo_v2_3.liquidity_units.size =
  miax_pearloptions_expressorders_meo_v2_3.liquidity_unit.size

-- Display: Liquidity Units
miax_pearloptions_expressorders_meo_v2_3.liquidity_units.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Liquidity Units
miax_pearloptions_expressorders_meo_v2_3.liquidity_units.fields = function(buffer, offset, packet, parent, liquidity_units_index)
  local index = offset

  -- Implicit Liquidity Units Index
  if liquidity_units_index ~= nil and show.indexes then
    local iteration = parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.liquidity_units_index, liquidity_units_index)
    iteration:set_generated()
  end

  -- Liquidity Unit: BinaryU
  index, liquidity_unit = miax_pearloptions_expressorders_meo_v2_3.liquidity_unit.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Liquidity Units
miax_pearloptions_expressorders_meo_v2_3.liquidity_units.dissect = function(buffer, offset, packet, parent, liquidity_units_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.liquidity_units, buffer(offset, 0))
    local index = miax_pearloptions_expressorders_meo_v2_3.liquidity_units.fields(buffer, offset, packet, parent, liquidity_units_index)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_expressorders_meo_v2_3.liquidity_units.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_expressorders_meo_v2_3.liquidity_units.fields(buffer, offset, packet, parent, liquidity_units_index)
  end
end

-- Bulk Liquidity Message
miax_pearloptions_expressorders_meo_v2_3.bulk_liquidity_message = {}

-- Calculate size of: Bulk Liquidity Message
miax_pearloptions_expressorders_meo_v2_3.bulk_liquidity_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_pearloptions_expressorders_meo_v2_3.client_message_id.size

  index = index + miax_pearloptions_expressorders_meo_v2_3.client_send_time.size

  index = index + miax_pearloptions_expressorders_meo_v2_3.liquidity_unit_count.size

  index = index + miax_pearloptions_expressorders_meo_v2_3.reserved_4.size

  -- Calculate field size from count
  local liquidity_units_count = buffer(offset + index - 5, 1):uint()
  index = index + liquidity_units_count * 57

  return index
end

-- Display: Bulk Liquidity Message
miax_pearloptions_expressorders_meo_v2_3.bulk_liquidity_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Liquidity Message
miax_pearloptions_expressorders_meo_v2_3.bulk_liquidity_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Message Id: BinaryU
  index, client_message_id = miax_pearloptions_expressorders_meo_v2_3.client_message_id.dissect(buffer, index, packet, parent)

  -- Client Send Time: TimeStamp
  index, client_send_time = miax_pearloptions_expressorders_meo_v2_3.client_send_time.dissect(buffer, index, packet, parent)

  -- Liquidity Unit Count: BinaryU
  index, liquidity_unit_count = miax_pearloptions_expressorders_meo_v2_3.liquidity_unit_count.dissect(buffer, index, packet, parent)

  -- Reserved 4: BinaryU
  if show.padding then
    index, reserved_4 = miax_pearloptions_expressorders_meo_v2_3.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + miax_pearloptions_expressorders_meo_v2_3.reserved_4.size
  end

  -- Repeating: Liquidity Units
  for liquidity_units_index = 1, liquidity_unit_count do
    index, liquidity_units = miax_pearloptions_expressorders_meo_v2_3.liquidity_units.dissect(buffer, index, packet, parent, liquidity_units_index)
  end

  return index
end

-- Dissect: Bulk Liquidity Message
miax_pearloptions_expressorders_meo_v2_3.bulk_liquidity_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.bulk_liquidity_message, buffer(offset, 0))
    local index = miax_pearloptions_expressorders_meo_v2_3.bulk_liquidity_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_expressorders_meo_v2_3.bulk_liquidity_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_expressorders_meo_v2_3.bulk_liquidity_message.fields(buffer, offset, packet, parent)
  end
end

-- Self Trade Protection Designation Response
miax_pearloptions_expressorders_meo_v2_3.self_trade_protection_designation_response = {}

-- Size: Self Trade Protection Designation Response
miax_pearloptions_expressorders_meo_v2_3.self_trade_protection_designation_response.size =
  miax_pearloptions_expressorders_meo_v2_3.client_message_id.size + 
  miax_pearloptions_expressorders_meo_v2_3.mpid.size + 
  miax_pearloptions_expressorders_meo_v2_3.self_trade_protection_status.size

-- Display: Self Trade Protection Designation Response
miax_pearloptions_expressorders_meo_v2_3.self_trade_protection_designation_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Self Trade Protection Designation Response
miax_pearloptions_expressorders_meo_v2_3.self_trade_protection_designation_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Message Id: BinaryU
  index, client_message_id = miax_pearloptions_expressorders_meo_v2_3.client_message_id.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_pearloptions_expressorders_meo_v2_3.mpid.dissect(buffer, index, packet, parent)

  -- Self Trade Protection Status: Alphanumeric
  index, self_trade_protection_status = miax_pearloptions_expressorders_meo_v2_3.self_trade_protection_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Self Trade Protection Designation Response
miax_pearloptions_expressorders_meo_v2_3.self_trade_protection_designation_response.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.self_trade_protection_designation_response, buffer(offset, 0))
    local index = miax_pearloptions_expressorders_meo_v2_3.self_trade_protection_designation_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_expressorders_meo_v2_3.self_trade_protection_designation_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_expressorders_meo_v2_3.self_trade_protection_designation_response.fields(buffer, offset, packet, parent)
  end
end

-- Self Trade Protection Designation Request
miax_pearloptions_expressorders_meo_v2_3.self_trade_protection_designation_request = {}

-- Size: Self Trade Protection Designation Request
miax_pearloptions_expressorders_meo_v2_3.self_trade_protection_designation_request.size =
  miax_pearloptions_expressorders_meo_v2_3.client_message_id.size + 
  miax_pearloptions_expressorders_meo_v2_3.mpid.size + 
  miax_pearloptions_expressorders_meo_v2_3.action.size

-- Display: Self Trade Protection Designation Request
miax_pearloptions_expressorders_meo_v2_3.self_trade_protection_designation_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Self Trade Protection Designation Request
miax_pearloptions_expressorders_meo_v2_3.self_trade_protection_designation_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Message Id: BinaryU
  index, client_message_id = miax_pearloptions_expressorders_meo_v2_3.client_message_id.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_pearloptions_expressorders_meo_v2_3.mpid.dissect(buffer, index, packet, parent)

  -- Action: Alphanumeric
  index, action = miax_pearloptions_expressorders_meo_v2_3.action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Self Trade Protection Designation Request
miax_pearloptions_expressorders_meo_v2_3.self_trade_protection_designation_request.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.self_trade_protection_designation_request, buffer(offset, 0))
    local index = miax_pearloptions_expressorders_meo_v2_3.self_trade_protection_designation_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_expressorders_meo_v2_3.self_trade_protection_designation_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_expressorders_meo_v2_3.self_trade_protection_designation_request.fields(buffer, offset, packet, parent)
  end
end

-- Series Assignment Response
miax_pearloptions_expressorders_meo_v2_3.series_assignment_response = {}

-- Size: Series Assignment Response
miax_pearloptions_expressorders_meo_v2_3.series_assignment_response.size =
  miax_pearloptions_expressorders_meo_v2_3.client_message_id.size + 
  miax_pearloptions_expressorders_meo_v2_3.mpid.size + 
  miax_pearloptions_expressorders_meo_v2_3.assignment_settings_status.size

-- Display: Series Assignment Response
miax_pearloptions_expressorders_meo_v2_3.series_assignment_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Series Assignment Response
miax_pearloptions_expressorders_meo_v2_3.series_assignment_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Message Id: BinaryU
  index, client_message_id = miax_pearloptions_expressorders_meo_v2_3.client_message_id.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_pearloptions_expressorders_meo_v2_3.mpid.dissect(buffer, index, packet, parent)

  -- Assignment Settings Status: Alphanumeric
  index, assignment_settings_status = miax_pearloptions_expressorders_meo_v2_3.assignment_settings_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Series Assignment Response
miax_pearloptions_expressorders_meo_v2_3.series_assignment_response.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.series_assignment_response, buffer(offset, 0))
    local index = miax_pearloptions_expressorders_meo_v2_3.series_assignment_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_expressorders_meo_v2_3.series_assignment_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_expressorders_meo_v2_3.series_assignment_response.fields(buffer, offset, packet, parent)
  end
end

-- Series Assignment Request
miax_pearloptions_expressorders_meo_v2_3.series_assignment_request = {}

-- Size: Series Assignment Request
miax_pearloptions_expressorders_meo_v2_3.series_assignment_request.size =
  miax_pearloptions_expressorders_meo_v2_3.client_message_id.size + 
  miax_pearloptions_expressorders_meo_v2_3.mpid.size + 
  miax_pearloptions_expressorders_meo_v2_3.product_id.size + 
  miax_pearloptions_expressorders_meo_v2_3.action.size

-- Display: Series Assignment Request
miax_pearloptions_expressorders_meo_v2_3.series_assignment_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Series Assignment Request
miax_pearloptions_expressorders_meo_v2_3.series_assignment_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Message Id: BinaryU
  index, client_message_id = miax_pearloptions_expressorders_meo_v2_3.client_message_id.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_pearloptions_expressorders_meo_v2_3.mpid.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_pearloptions_expressorders_meo_v2_3.product_id.dissect(buffer, index, packet, parent)

  -- Action: Alphanumeric
  index, action = miax_pearloptions_expressorders_meo_v2_3.action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Series Assignment Request
miax_pearloptions_expressorders_meo_v2_3.series_assignment_request.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.series_assignment_request, buffer(offset, 0))
    local index = miax_pearloptions_expressorders_meo_v2_3.series_assignment_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_expressorders_meo_v2_3.series_assignment_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_expressorders_meo_v2_3.series_assignment_request.fields(buffer, offset, packet, parent)
  end
end

-- Arm 2 Underlying Level Protection Settings Update Response
miax_pearloptions_expressorders_meo_v2_3.arm_2_underlying_level_protection_settings_update_response = {}

-- Size: Arm 2 Underlying Level Protection Settings Update Response
miax_pearloptions_expressorders_meo_v2_3.arm_2_underlying_level_protection_settings_update_response.size =
  miax_pearloptions_expressorders_meo_v2_3.client_message_id.size + 
  miax_pearloptions_expressorders_meo_v2_3.mpid.size + 
  miax_pearloptions_expressorders_meo_v2_3.underlying_symbol.size + 
  miax_pearloptions_expressorders_meo_v2_3.arm_2_settings_update_status.size

-- Display: Arm 2 Underlying Level Protection Settings Update Response
miax_pearloptions_expressorders_meo_v2_3.arm_2_underlying_level_protection_settings_update_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Arm 2 Underlying Level Protection Settings Update Response
miax_pearloptions_expressorders_meo_v2_3.arm_2_underlying_level_protection_settings_update_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Message Id: BinaryU
  index, client_message_id = miax_pearloptions_expressorders_meo_v2_3.client_message_id.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_pearloptions_expressorders_meo_v2_3.mpid.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_pearloptions_expressorders_meo_v2_3.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Arm 2 Settings Update Status: Alphanumeric
  index, arm_2_settings_update_status = miax_pearloptions_expressorders_meo_v2_3.arm_2_settings_update_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Arm 2 Underlying Level Protection Settings Update Response
miax_pearloptions_expressorders_meo_v2_3.arm_2_underlying_level_protection_settings_update_response.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.arm_2_underlying_level_protection_settings_update_response, buffer(offset, 0))
    local index = miax_pearloptions_expressorders_meo_v2_3.arm_2_underlying_level_protection_settings_update_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_expressorders_meo_v2_3.arm_2_underlying_level_protection_settings_update_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_expressorders_meo_v2_3.arm_2_underlying_level_protection_settings_update_response.fields(buffer, offset, packet, parent)
  end
end

-- Arm 2 Underlying Level Protection Settings Update Request
miax_pearloptions_expressorders_meo_v2_3.arm_2_underlying_level_protection_settings_update_request = {}

-- Size: Arm 2 Underlying Level Protection Settings Update Request
miax_pearloptions_expressorders_meo_v2_3.arm_2_underlying_level_protection_settings_update_request.size =
  miax_pearloptions_expressorders_meo_v2_3.client_message_id.size + 
  miax_pearloptions_expressorders_meo_v2_3.mpid.size + 
  miax_pearloptions_expressorders_meo_v2_3.action.size + 
  miax_pearloptions_expressorders_meo_v2_3.underlying_symbol.size + 
  miax_pearloptions_expressorders_meo_v2_3.arm_threshold_count_binary_u_4.size + 
  miax_pearloptions_expressorders_meo_v2_3.counting_period_binary_u_4.size

-- Display: Arm 2 Underlying Level Protection Settings Update Request
miax_pearloptions_expressorders_meo_v2_3.arm_2_underlying_level_protection_settings_update_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Arm 2 Underlying Level Protection Settings Update Request
miax_pearloptions_expressorders_meo_v2_3.arm_2_underlying_level_protection_settings_update_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Message Id: BinaryU
  index, client_message_id = miax_pearloptions_expressorders_meo_v2_3.client_message_id.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_pearloptions_expressorders_meo_v2_3.mpid.dissect(buffer, index, packet, parent)

  -- Action: Alphanumeric
  index, action = miax_pearloptions_expressorders_meo_v2_3.action.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_pearloptions_expressorders_meo_v2_3.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Arm Threshold Count Binary U 4: BinaryU
  index, arm_threshold_count_binary_u_4 = miax_pearloptions_expressorders_meo_v2_3.arm_threshold_count_binary_u_4.dissect(buffer, index, packet, parent)

  -- Counting Period Binary U 4: BinaryU
  index, counting_period_binary_u_4 = miax_pearloptions_expressorders_meo_v2_3.counting_period_binary_u_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Arm 2 Underlying Level Protection Settings Update Request
miax_pearloptions_expressorders_meo_v2_3.arm_2_underlying_level_protection_settings_update_request.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.arm_2_underlying_level_protection_settings_update_request, buffer(offset, 0))
    local index = miax_pearloptions_expressorders_meo_v2_3.arm_2_underlying_level_protection_settings_update_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_expressorders_meo_v2_3.arm_2_underlying_level_protection_settings_update_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_expressorders_meo_v2_3.arm_2_underlying_level_protection_settings_update_request.fields(buffer, offset, packet, parent)
  end
end

-- Arm Settings Update Response
miax_pearloptions_expressorders_meo_v2_3.arm_settings_update_response = {}

-- Size: Arm Settings Update Response
miax_pearloptions_expressorders_meo_v2_3.arm_settings_update_response.size =
  miax_pearloptions_expressorders_meo_v2_3.client_message_id.size + 
  miax_pearloptions_expressorders_meo_v2_3.mpid.size + 
  miax_pearloptions_expressorders_meo_v2_3.underlying_symbol.size + 
  miax_pearloptions_expressorders_meo_v2_3.arm_settings_update_status.size

-- Display: Arm Settings Update Response
miax_pearloptions_expressorders_meo_v2_3.arm_settings_update_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Arm Settings Update Response
miax_pearloptions_expressorders_meo_v2_3.arm_settings_update_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Message Id: BinaryU
  index, client_message_id = miax_pearloptions_expressorders_meo_v2_3.client_message_id.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_pearloptions_expressorders_meo_v2_3.mpid.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_pearloptions_expressorders_meo_v2_3.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Arm Settings Update Status: Alphanumeric
  index, arm_settings_update_status = miax_pearloptions_expressorders_meo_v2_3.arm_settings_update_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Arm Settings Update Response
miax_pearloptions_expressorders_meo_v2_3.arm_settings_update_response.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.arm_settings_update_response, buffer(offset, 0))
    local index = miax_pearloptions_expressorders_meo_v2_3.arm_settings_update_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_expressorders_meo_v2_3.arm_settings_update_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_expressorders_meo_v2_3.arm_settings_update_response.fields(buffer, offset, packet, parent)
  end
end

-- Arm Settings Update Request
miax_pearloptions_expressorders_meo_v2_3.arm_settings_update_request = {}

-- Size: Arm Settings Update Request
miax_pearloptions_expressorders_meo_v2_3.arm_settings_update_request.size =
  miax_pearloptions_expressorders_meo_v2_3.client_message_id.size + 
  miax_pearloptions_expressorders_meo_v2_3.mpid.size + 
  miax_pearloptions_expressorders_meo_v2_3.action.size + 
  miax_pearloptions_expressorders_meo_v2_3.underlying_symbol.size + 
  miax_pearloptions_expressorders_meo_v2_3.allowable_engagement_percentage.size + 
  miax_pearloptions_expressorders_meo_v2_3.counting_period_binary_u_2.size + 
  miax_pearloptions_expressorders_meo_v2_3.market_maker_origin_multiplier.size + 
  miax_pearloptions_expressorders_meo_v2_3.away_market_maker_origin_multiplier.size + 
  miax_pearloptions_expressorders_meo_v2_3.broker_dealer_origin_multiplier.size + 
  miax_pearloptions_expressorders_meo_v2_3.firm_origin_multiplier.size + 
  miax_pearloptions_expressorders_meo_v2_3.priority_customer_origin_multiplier.size + 
  miax_pearloptions_expressorders_meo_v2_3.non_priority_customer_origin_multiplier.size + 
  miax_pearloptions_expressorders_meo_v2_3.reserved_16.size

-- Display: Arm Settings Update Request
miax_pearloptions_expressorders_meo_v2_3.arm_settings_update_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Arm Settings Update Request
miax_pearloptions_expressorders_meo_v2_3.arm_settings_update_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Message Id: BinaryU
  index, client_message_id = miax_pearloptions_expressorders_meo_v2_3.client_message_id.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_pearloptions_expressorders_meo_v2_3.mpid.dissect(buffer, index, packet, parent)

  -- Action: Alphanumeric
  index, action = miax_pearloptions_expressorders_meo_v2_3.action.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_pearloptions_expressorders_meo_v2_3.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Allowable Engagement Percentage: BinaryU
  index, allowable_engagement_percentage = miax_pearloptions_expressorders_meo_v2_3.allowable_engagement_percentage.dissect(buffer, index, packet, parent)

  -- Counting Period Binary U 2: BinaryU
  index, counting_period_binary_u_2 = miax_pearloptions_expressorders_meo_v2_3.counting_period_binary_u_2.dissect(buffer, index, packet, parent)

  -- Market Maker Origin Multiplier: BinaryU
  index, market_maker_origin_multiplier = miax_pearloptions_expressorders_meo_v2_3.market_maker_origin_multiplier.dissect(buffer, index, packet, parent)

  -- Away Market Maker Origin Multiplier: BinaryU
  index, away_market_maker_origin_multiplier = miax_pearloptions_expressorders_meo_v2_3.away_market_maker_origin_multiplier.dissect(buffer, index, packet, parent)

  -- Broker Dealer Origin Multiplier: BinaryU
  index, broker_dealer_origin_multiplier = miax_pearloptions_expressorders_meo_v2_3.broker_dealer_origin_multiplier.dissect(buffer, index, packet, parent)

  -- Firm Origin Multiplier: BinaryU
  index, firm_origin_multiplier = miax_pearloptions_expressorders_meo_v2_3.firm_origin_multiplier.dissect(buffer, index, packet, parent)

  -- Priority Customer Origin Multiplier: BinaryU
  index, priority_customer_origin_multiplier = miax_pearloptions_expressorders_meo_v2_3.priority_customer_origin_multiplier.dissect(buffer, index, packet, parent)

  -- Non Priority Customer Origin Multiplier: BinaryU
  index, non_priority_customer_origin_multiplier = miax_pearloptions_expressorders_meo_v2_3.non_priority_customer_origin_multiplier.dissect(buffer, index, packet, parent)

  -- Reserved 16: BinaryU
  if show.padding then
    index, reserved_16 = miax_pearloptions_expressorders_meo_v2_3.reserved_16.dissect(buffer, index, packet, parent)
  else
    index = index + miax_pearloptions_expressorders_meo_v2_3.reserved_16.size
  end

  return index
end

-- Dissect: Arm Settings Update Request
miax_pearloptions_expressorders_meo_v2_3.arm_settings_update_request.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.arm_settings_update_request, buffer(offset, 0))
    local index = miax_pearloptions_expressorders_meo_v2_3.arm_settings_update_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_expressorders_meo_v2_3.arm_settings_update_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_expressorders_meo_v2_3.arm_settings_update_request.fields(buffer, offset, packet, parent)
  end
end

-- Unsequenced Message
miax_pearloptions_expressorders_meo_v2_3.unsequenced_message = {}

-- Dispatch: Unsequenced Message
miax_pearloptions_expressorders_meo_v2_3.unsequenced_message.dispatch = {
  ["RS"] = miax_pearloptions_expressorders_meo_v2_3.arm_settings_update_request.dissect,
  ["AA"] = miax_pearloptions_expressorders_meo_v2_3.arm_settings_update_response.dissect,
  ["2S"] = miax_pearloptions_expressorders_meo_v2_3.arm_2_underlying_level_protection_settings_update_request.dissect,
  ["2R"] = miax_pearloptions_expressorders_meo_v2_3.arm_2_underlying_level_protection_settings_update_response.dissect,
  ["SA"] = miax_pearloptions_expressorders_meo_v2_3.series_assignment_request.dissect,
  ["AR"] = miax_pearloptions_expressorders_meo_v2_3.series_assignment_response.dissect,
  ["SP"] = miax_pearloptions_expressorders_meo_v2_3.self_trade_protection_designation_request.dissect,
  ["SR"] = miax_pearloptions_expressorders_meo_v2_3.self_trade_protection_designation_response.dissect,
  ["lm"] = miax_pearloptions_expressorders_meo_v2_3.bulk_liquidity_message.dissect,
  ["LR"] = miax_pearloptions_expressorders_meo_v2_3.bulk_liquidity_message_response.dissect,
  ["xq"] = miax_pearloptions_expressorders_meo_v2_3.liquidity_mass_cancel_request.dissect,
  ["XR"] = miax_pearloptions_expressorders_meo_v2_3.liquidity_mass_cancel_response.dissect,
  ["P1"] = miax_pearloptions_expressorders_meo_v2_3.liquidity_protection_reset_request.dissect,
  ["PR"] = miax_pearloptions_expressorders_meo_v2_3.liquidity_protection_reset_response.dissect,
  ["SS"] = miax_pearloptions_expressorders_meo_v2_3.single_side_liquidity_protection_reset_request.dissect,
  ["ST"] = miax_pearloptions_expressorders_meo_v2_3.single_side_liquidity_protection_reset_response.dissect,
  ["QP"] = miax_pearloptions_expressorders_meo_v2_3.liquidity_protection_trigger_notification.dissect,
  ["SL"] = miax_pearloptions_expressorders_meo_v2_3.slap_protection_trigger_notification.dissect,
  ["ON"] = miax_pearloptions_expressorders_meo_v2_3.order_notification.dissect,
  ["DD"] = miax_pearloptions_expressorders_meo_v2_3.done_for_the_day_notification.dissect,
  ["XN"] = miax_pearloptions_expressorders_meo_v2_3.cancel_notification.dissect,
}

-- Dissect: Unsequenced Message
miax_pearloptions_expressorders_meo_v2_3.unsequenced_message.dissect = function(buffer, offset, packet, parent, unsequenced_message_type)
  local dissect = miax_pearloptions_expressorders_meo_v2_3.unsequenced_message.dispatch[unsequenced_message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Unsequenced Data Packet
miax_pearloptions_expressorders_meo_v2_3.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
miax_pearloptions_expressorders_meo_v2_3.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  return sesm_packet_length - 1
end

-- Display: Unsequenced Data Packet
miax_pearloptions_expressorders_meo_v2_3.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
miax_pearloptions_expressorders_meo_v2_3.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 2 Byte Ascii String Enum with 21 values
  index, unsequenced_message_type = miax_pearloptions_expressorders_meo_v2_3.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Unsequenced Message: Runtime Type with 21 branches
  index = miax_pearloptions_expressorders_meo_v2_3.unsequenced_message.dissect(buffer, index, packet, parent, unsequenced_message_type)

  return index
end

-- Dissect: Unsequenced Data Packet
miax_pearloptions_expressorders_meo_v2_3.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = miax_pearloptions_expressorders_meo_v2_3.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = miax_pearloptions_expressorders_meo_v2_3.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = miax_pearloptions_expressorders_meo_v2_3.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_pearloptions_expressorders_meo_v2_3.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Execution Notification
miax_pearloptions_expressorders_meo_v2_3.execution_notification = {}

-- Size: Execution Notification
miax_pearloptions_expressorders_meo_v2_3.execution_notification.size =
  miax_pearloptions_expressorders_meo_v2_3.notification_time.size + 
  miax_pearloptions_expressorders_meo_v2_3.mpid.size + 
  miax_pearloptions_expressorders_meo_v2_3.product_id.size + 
  miax_pearloptions_expressorders_meo_v2_3.liquidity_type.size + 
  miax_pearloptions_expressorders_meo_v2_3.client_message_id.size + 
  miax_pearloptions_expressorders_meo_v2_3.client_order_id.size + 
  miax_pearloptions_expressorders_meo_v2_3.bulk_order_index.size + 
  miax_pearloptions_expressorders_meo_v2_3.trade_id.size + 
  miax_pearloptions_expressorders_meo_v2_3.execution_id.size + 
  miax_pearloptions_expressorders_meo_v2_3.trade_status.size + 
  miax_pearloptions_expressorders_meo_v2_3.last_price.size + 
  miax_pearloptions_expressorders_meo_v2_3.side.size + 
  miax_pearloptions_expressorders_meo_v2_3.last_size.size + 
  miax_pearloptions_expressorders_meo_v2_3.liquidity_indicator.size + 
  miax_pearloptions_expressorders_meo_v2_3.reserved_15.size

-- Display: Execution Notification
miax_pearloptions_expressorders_meo_v2_3.execution_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Notification
miax_pearloptions_expressorders_meo_v2_3.execution_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: NanoTime
  index, notification_time = miax_pearloptions_expressorders_meo_v2_3.notification_time.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_pearloptions_expressorders_meo_v2_3.mpid.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_pearloptions_expressorders_meo_v2_3.product_id.dissect(buffer, index, packet, parent)

  -- Liquidity Type: Alphanumeric
  index, liquidity_type = miax_pearloptions_expressorders_meo_v2_3.liquidity_type.dissect(buffer, index, packet, parent)

  -- Client Message Id: BinaryU
  index, client_message_id = miax_pearloptions_expressorders_meo_v2_3.client_message_id.dissect(buffer, index, packet, parent)

  -- Client Order Id: BinaryU
  index, client_order_id = miax_pearloptions_expressorders_meo_v2_3.client_order_id.dissect(buffer, index, packet, parent)

  -- Bulk Order Index: BinaryU
  index, bulk_order_index = miax_pearloptions_expressorders_meo_v2_3.bulk_order_index.dissect(buffer, index, packet, parent)

  -- Trade Id: BinaryU
  index, trade_id = miax_pearloptions_expressorders_meo_v2_3.trade_id.dissect(buffer, index, packet, parent)

  -- Execution Id: BinaryU
  index, execution_id = miax_pearloptions_expressorders_meo_v2_3.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Status: Alphanumeric
  index, trade_status = miax_pearloptions_expressorders_meo_v2_3.trade_status.dissect(buffer, index, packet, parent)

  -- Last Price: BinaryPrc4U
  index, last_price = miax_pearloptions_expressorders_meo_v2_3.last_price.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = miax_pearloptions_expressorders_meo_v2_3.side.dissect(buffer, index, packet, parent)

  -- Last Size: BinaryU
  index, last_size = miax_pearloptions_expressorders_meo_v2_3.last_size.dissect(buffer, index, packet, parent)

  -- Liquidity Indicator: Alphanumeric
  index, liquidity_indicator = miax_pearloptions_expressorders_meo_v2_3.liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Reserved 15: BinaryU
  if show.padding then
    index, reserved_15 = miax_pearloptions_expressorders_meo_v2_3.reserved_15.dissect(buffer, index, packet, parent)
  else
    index = index + miax_pearloptions_expressorders_meo_v2_3.reserved_15.size
  end

  return index
end

-- Dissect: Execution Notification
miax_pearloptions_expressorders_meo_v2_3.execution_notification.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.execution_notification, buffer(offset, 0))
    local index = miax_pearloptions_expressorders_meo_v2_3.execution_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_expressorders_meo_v2_3.execution_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_expressorders_meo_v2_3.execution_notification.fields(buffer, offset, packet, parent)
  end
end

-- Arm 2 Firm Level Protection Notification
miax_pearloptions_expressorders_meo_v2_3.arm_2_firm_level_protection_notification = {}

-- Size: Arm 2 Firm Level Protection Notification
miax_pearloptions_expressorders_meo_v2_3.arm_2_firm_level_protection_notification.size =
  miax_pearloptions_expressorders_meo_v2_3.notification_time.size + 
  miax_pearloptions_expressorders_meo_v2_3.arm_threshold_count_binary_4u_4.size + 
  miax_pearloptions_expressorders_meo_v2_3.counting_period_binary_4u_4.size + 
  miax_pearloptions_expressorders_meo_v2_3.notification_type.size + 
  miax_pearloptions_expressorders_meo_v2_3.reserved_16.size

-- Display: Arm 2 Firm Level Protection Notification
miax_pearloptions_expressorders_meo_v2_3.arm_2_firm_level_protection_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Arm 2 Firm Level Protection Notification
miax_pearloptions_expressorders_meo_v2_3.arm_2_firm_level_protection_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: NanoTime
  index, notification_time = miax_pearloptions_expressorders_meo_v2_3.notification_time.dissect(buffer, index, packet, parent)

  -- Arm Threshold Count Binary 4u 4: Binary4U
  index, arm_threshold_count_binary_4u_4 = miax_pearloptions_expressorders_meo_v2_3.arm_threshold_count_binary_4u_4.dissect(buffer, index, packet, parent)

  -- Counting Period Binary 4u 4: Binary4U
  index, counting_period_binary_4u_4 = miax_pearloptions_expressorders_meo_v2_3.counting_period_binary_4u_4.dissect(buffer, index, packet, parent)

  -- Notification Type: Alphanumeric
  index, notification_type = miax_pearloptions_expressorders_meo_v2_3.notification_type.dissect(buffer, index, packet, parent)

  -- Reserved 16: BinaryU
  if show.padding then
    index, reserved_16 = miax_pearloptions_expressorders_meo_v2_3.reserved_16.dissect(buffer, index, packet, parent)
  else
    index = index + miax_pearloptions_expressorders_meo_v2_3.reserved_16.size
  end

  return index
end

-- Dissect: Arm 2 Firm Level Protection Notification
miax_pearloptions_expressorders_meo_v2_3.arm_2_firm_level_protection_notification.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.arm_2_firm_level_protection_notification, buffer(offset, 0))
    local index = miax_pearloptions_expressorders_meo_v2_3.arm_2_firm_level_protection_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_expressorders_meo_v2_3.arm_2_firm_level_protection_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_expressorders_meo_v2_3.arm_2_firm_level_protection_notification.fields(buffer, offset, packet, parent)
  end
end

-- Arm 2 Underlying Level Protection Notification
miax_pearloptions_expressorders_meo_v2_3.arm_2_underlying_level_protection_notification = {}

-- Size: Arm 2 Underlying Level Protection Notification
miax_pearloptions_expressorders_meo_v2_3.arm_2_underlying_level_protection_notification.size =
  miax_pearloptions_expressorders_meo_v2_3.notification_time.size + 
  miax_pearloptions_expressorders_meo_v2_3.mpid.size + 
  miax_pearloptions_expressorders_meo_v2_3.underlying_symbol.size + 
  miax_pearloptions_expressorders_meo_v2_3.notification_type.size + 
  miax_pearloptions_expressorders_meo_v2_3.arm_threshold_count_binary_u_4.size + 
  miax_pearloptions_expressorders_meo_v2_3.counting_period_binary_u_4.size + 
  miax_pearloptions_expressorders_meo_v2_3.reserved_16.size

-- Display: Arm 2 Underlying Level Protection Notification
miax_pearloptions_expressorders_meo_v2_3.arm_2_underlying_level_protection_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Arm 2 Underlying Level Protection Notification
miax_pearloptions_expressorders_meo_v2_3.arm_2_underlying_level_protection_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: NanoTime
  index, notification_time = miax_pearloptions_expressorders_meo_v2_3.notification_time.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_pearloptions_expressorders_meo_v2_3.mpid.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_pearloptions_expressorders_meo_v2_3.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Notification Type: Alphanumeric
  index, notification_type = miax_pearloptions_expressorders_meo_v2_3.notification_type.dissect(buffer, index, packet, parent)

  -- Arm Threshold Count Binary U 4: BinaryU
  index, arm_threshold_count_binary_u_4 = miax_pearloptions_expressorders_meo_v2_3.arm_threshold_count_binary_u_4.dissect(buffer, index, packet, parent)

  -- Counting Period Binary U 4: BinaryU
  index, counting_period_binary_u_4 = miax_pearloptions_expressorders_meo_v2_3.counting_period_binary_u_4.dissect(buffer, index, packet, parent)

  -- Reserved 16: BinaryU
  if show.padding then
    index, reserved_16 = miax_pearloptions_expressorders_meo_v2_3.reserved_16.dissect(buffer, index, packet, parent)
  else
    index = index + miax_pearloptions_expressorders_meo_v2_3.reserved_16.size
  end

  return index
end

-- Dissect: Arm 2 Underlying Level Protection Notification
miax_pearloptions_expressorders_meo_v2_3.arm_2_underlying_level_protection_notification.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.arm_2_underlying_level_protection_notification, buffer(offset, 0))
    local index = miax_pearloptions_expressorders_meo_v2_3.arm_2_underlying_level_protection_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_expressorders_meo_v2_3.arm_2_underlying_level_protection_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_expressorders_meo_v2_3.arm_2_underlying_level_protection_notification.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Liquidity Protection Trigger Notification
miax_pearloptions_expressorders_meo_v2_3.single_side_liquidity_protection_trigger_notification = {}

-- Size: Single Side Liquidity Protection Trigger Notification
miax_pearloptions_expressorders_meo_v2_3.single_side_liquidity_protection_trigger_notification.size =
  miax_pearloptions_expressorders_meo_v2_3.notification_time.size + 
  miax_pearloptions_expressorders_meo_v2_3.mpid.size + 
  miax_pearloptions_expressorders_meo_v2_3.product_id.size + 
  miax_pearloptions_expressorders_meo_v2_3.side.size + 
  miax_pearloptions_expressorders_meo_v2_3.triggering_client_message_id.size + 
  miax_pearloptions_expressorders_meo_v2_3.triggering_bulk_order_index.size + 
  miax_pearloptions_expressorders_meo_v2_3.reserved_4.size

-- Display: Single Side Liquidity Protection Trigger Notification
miax_pearloptions_expressorders_meo_v2_3.single_side_liquidity_protection_trigger_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Liquidity Protection Trigger Notification
miax_pearloptions_expressorders_meo_v2_3.single_side_liquidity_protection_trigger_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: NanoTime
  index, notification_time = miax_pearloptions_expressorders_meo_v2_3.notification_time.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_pearloptions_expressorders_meo_v2_3.mpid.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_pearloptions_expressorders_meo_v2_3.product_id.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = miax_pearloptions_expressorders_meo_v2_3.side.dissect(buffer, index, packet, parent)

  -- Triggering Client Message Id: BinaryU
  index, triggering_client_message_id = miax_pearloptions_expressorders_meo_v2_3.triggering_client_message_id.dissect(buffer, index, packet, parent)

  -- Triggering Bulk Order Index: BinaryU
  index, triggering_bulk_order_index = miax_pearloptions_expressorders_meo_v2_3.triggering_bulk_order_index.dissect(buffer, index, packet, parent)

  -- Reserved 4: BinaryU
  if show.padding then
    index, reserved_4 = miax_pearloptions_expressorders_meo_v2_3.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + miax_pearloptions_expressorders_meo_v2_3.reserved_4.size
  end

  return index
end

-- Dissect: Single Side Liquidity Protection Trigger Notification
miax_pearloptions_expressorders_meo_v2_3.single_side_liquidity_protection_trigger_notification.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.single_side_liquidity_protection_trigger_notification, buffer(offset, 0))
    local index = miax_pearloptions_expressorders_meo_v2_3.single_side_liquidity_protection_trigger_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_expressorders_meo_v2_3.single_side_liquidity_protection_trigger_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_expressorders_meo_v2_3.single_side_liquidity_protection_trigger_notification.fields(buffer, offset, packet, parent)
  end
end

-- Arm 2 Underlying Level Protection Settings Notification
miax_pearloptions_expressorders_meo_v2_3.arm_2_underlying_level_protection_settings_notification = {}

-- Size: Arm 2 Underlying Level Protection Settings Notification
miax_pearloptions_expressorders_meo_v2_3.arm_2_underlying_level_protection_settings_notification.size =
  miax_pearloptions_expressorders_meo_v2_3.notification_time.size + 
  miax_pearloptions_expressorders_meo_v2_3.mpid.size + 
  miax_pearloptions_expressorders_meo_v2_3.action.size + 
  miax_pearloptions_expressorders_meo_v2_3.underlying_symbol.size + 
  miax_pearloptions_expressorders_meo_v2_3.arm_threshold_count_binary_u_4.size + 
  miax_pearloptions_expressorders_meo_v2_3.counting_period_binary_u_4.size + 
  miax_pearloptions_expressorders_meo_v2_3.reserved_16.size

-- Display: Arm 2 Underlying Level Protection Settings Notification
miax_pearloptions_expressorders_meo_v2_3.arm_2_underlying_level_protection_settings_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Arm 2 Underlying Level Protection Settings Notification
miax_pearloptions_expressorders_meo_v2_3.arm_2_underlying_level_protection_settings_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: NanoTime
  index, notification_time = miax_pearloptions_expressorders_meo_v2_3.notification_time.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_pearloptions_expressorders_meo_v2_3.mpid.dissect(buffer, index, packet, parent)

  -- Action: Alphanumeric
  index, action = miax_pearloptions_expressorders_meo_v2_3.action.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_pearloptions_expressorders_meo_v2_3.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Arm Threshold Count Binary U 4: BinaryU
  index, arm_threshold_count_binary_u_4 = miax_pearloptions_expressorders_meo_v2_3.arm_threshold_count_binary_u_4.dissect(buffer, index, packet, parent)

  -- Counting Period Binary U 4: BinaryU
  index, counting_period_binary_u_4 = miax_pearloptions_expressorders_meo_v2_3.counting_period_binary_u_4.dissect(buffer, index, packet, parent)

  -- Reserved 16: BinaryU
  if show.padding then
    index, reserved_16 = miax_pearloptions_expressorders_meo_v2_3.reserved_16.dissect(buffer, index, packet, parent)
  else
    index = index + miax_pearloptions_expressorders_meo_v2_3.reserved_16.size
  end

  return index
end

-- Dissect: Arm 2 Underlying Level Protection Settings Notification
miax_pearloptions_expressorders_meo_v2_3.arm_2_underlying_level_protection_settings_notification.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.arm_2_underlying_level_protection_settings_notification, buffer(offset, 0))
    local index = miax_pearloptions_expressorders_meo_v2_3.arm_2_underlying_level_protection_settings_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_expressorders_meo_v2_3.arm_2_underlying_level_protection_settings_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_expressorders_meo_v2_3.arm_2_underlying_level_protection_settings_notification.fields(buffer, offset, packet, parent)
  end
end

-- Arm Protection Settings Notification
miax_pearloptions_expressorders_meo_v2_3.arm_protection_settings_notification = {}

-- Size: Arm Protection Settings Notification
miax_pearloptions_expressorders_meo_v2_3.arm_protection_settings_notification.size =
  miax_pearloptions_expressorders_meo_v2_3.notification_time.size + 
  miax_pearloptions_expressorders_meo_v2_3.mpid.size + 
  miax_pearloptions_expressorders_meo_v2_3.underlying_symbol.size + 
  miax_pearloptions_expressorders_meo_v2_3.allowable_engagement_percentage.size + 
  miax_pearloptions_expressorders_meo_v2_3.counting_period_binary_u_2.size + 
  miax_pearloptions_expressorders_meo_v2_3.action.size + 
  miax_pearloptions_expressorders_meo_v2_3.source.size + 
  miax_pearloptions_expressorders_meo_v2_3.market_maker_origin_multiplier.size + 
  miax_pearloptions_expressorders_meo_v2_3.away_market_maker_origin_multiplier.size + 
  miax_pearloptions_expressorders_meo_v2_3.broker_dealer_origin_multiplier.size + 
  miax_pearloptions_expressorders_meo_v2_3.firm_origin_multiplier.size + 
  miax_pearloptions_expressorders_meo_v2_3.priority_customer_origin_multiplier.size + 
  miax_pearloptions_expressorders_meo_v2_3.non_priority_customer_origin_multiplier.size + 
  miax_pearloptions_expressorders_meo_v2_3.reserved_16.size

-- Display: Arm Protection Settings Notification
miax_pearloptions_expressorders_meo_v2_3.arm_protection_settings_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Arm Protection Settings Notification
miax_pearloptions_expressorders_meo_v2_3.arm_protection_settings_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: NanoTime
  index, notification_time = miax_pearloptions_expressorders_meo_v2_3.notification_time.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_pearloptions_expressorders_meo_v2_3.mpid.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_pearloptions_expressorders_meo_v2_3.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Allowable Engagement Percentage: BinaryU
  index, allowable_engagement_percentage = miax_pearloptions_expressorders_meo_v2_3.allowable_engagement_percentage.dissect(buffer, index, packet, parent)

  -- Counting Period Binary U 2: BinaryU
  index, counting_period_binary_u_2 = miax_pearloptions_expressorders_meo_v2_3.counting_period_binary_u_2.dissect(buffer, index, packet, parent)

  -- Action: Alphanumeric
  index, action = miax_pearloptions_expressorders_meo_v2_3.action.dissect(buffer, index, packet, parent)

  -- Source: Alphanumeric
  index, source = miax_pearloptions_expressorders_meo_v2_3.source.dissect(buffer, index, packet, parent)

  -- Market Maker Origin Multiplier: BinaryU
  index, market_maker_origin_multiplier = miax_pearloptions_expressorders_meo_v2_3.market_maker_origin_multiplier.dissect(buffer, index, packet, parent)

  -- Away Market Maker Origin Multiplier: BinaryU
  index, away_market_maker_origin_multiplier = miax_pearloptions_expressorders_meo_v2_3.away_market_maker_origin_multiplier.dissect(buffer, index, packet, parent)

  -- Broker Dealer Origin Multiplier: BinaryU
  index, broker_dealer_origin_multiplier = miax_pearloptions_expressorders_meo_v2_3.broker_dealer_origin_multiplier.dissect(buffer, index, packet, parent)

  -- Firm Origin Multiplier: BinaryU
  index, firm_origin_multiplier = miax_pearloptions_expressorders_meo_v2_3.firm_origin_multiplier.dissect(buffer, index, packet, parent)

  -- Priority Customer Origin Multiplier: BinaryU
  index, priority_customer_origin_multiplier = miax_pearloptions_expressorders_meo_v2_3.priority_customer_origin_multiplier.dissect(buffer, index, packet, parent)

  -- Non Priority Customer Origin Multiplier: BinaryU
  index, non_priority_customer_origin_multiplier = miax_pearloptions_expressorders_meo_v2_3.non_priority_customer_origin_multiplier.dissect(buffer, index, packet, parent)

  -- Reserved 16: BinaryU
  if show.padding then
    index, reserved_16 = miax_pearloptions_expressorders_meo_v2_3.reserved_16.dissect(buffer, index, packet, parent)
  else
    index = index + miax_pearloptions_expressorders_meo_v2_3.reserved_16.size
  end

  return index
end

-- Dissect: Arm Protection Settings Notification
miax_pearloptions_expressorders_meo_v2_3.arm_protection_settings_notification.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.arm_protection_settings_notification, buffer(offset, 0))
    local index = miax_pearloptions_expressorders_meo_v2_3.arm_protection_settings_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_expressorders_meo_v2_3.arm_protection_settings_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_expressorders_meo_v2_3.arm_protection_settings_notification.fields(buffer, offset, packet, parent)
  end
end

-- Opening Width Relief Notification
miax_pearloptions_expressorders_meo_v2_3.opening_width_relief_notification = {}

-- Size: Opening Width Relief Notification
miax_pearloptions_expressorders_meo_v2_3.opening_width_relief_notification.size =
  miax_pearloptions_expressorders_meo_v2_3.notification_time.size + 
  miax_pearloptions_expressorders_meo_v2_3.underlying_symbol.size + 
  miax_pearloptions_expressorders_meo_v2_3.relief_multiplier.size

-- Display: Opening Width Relief Notification
miax_pearloptions_expressorders_meo_v2_3.opening_width_relief_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Opening Width Relief Notification
miax_pearloptions_expressorders_meo_v2_3.opening_width_relief_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: NanoTime
  index, notification_time = miax_pearloptions_expressorders_meo_v2_3.notification_time.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_pearloptions_expressorders_meo_v2_3.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Relief Multiplier: BinaryPrc4U
  index, relief_multiplier = miax_pearloptions_expressorders_meo_v2_3.relief_multiplier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Opening Width Relief Notification
miax_pearloptions_expressorders_meo_v2_3.opening_width_relief_notification.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.opening_width_relief_notification, buffer(offset, 0))
    local index = miax_pearloptions_expressorders_meo_v2_3.opening_width_relief_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_expressorders_meo_v2_3.opening_width_relief_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_expressorders_meo_v2_3.opening_width_relief_notification.fields(buffer, offset, packet, parent)
  end
end

-- Underlying Trading Status Notification
miax_pearloptions_expressorders_meo_v2_3.underlying_trading_status_notification = {}

-- Size: Underlying Trading Status Notification
miax_pearloptions_expressorders_meo_v2_3.underlying_trading_status_notification.size =
  miax_pearloptions_expressorders_meo_v2_3.notification_time.size + 
  miax_pearloptions_expressorders_meo_v2_3.underlying_symbol.size + 
  miax_pearloptions_expressorders_meo_v2_3.trading_status.size + 
  miax_pearloptions_expressorders_meo_v2_3.event_reason.size + 
  miax_pearloptions_expressorders_meo_v2_3.expected_event_time.size

-- Display: Underlying Trading Status Notification
miax_pearloptions_expressorders_meo_v2_3.underlying_trading_status_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Underlying Trading Status Notification
miax_pearloptions_expressorders_meo_v2_3.underlying_trading_status_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: NanoTime
  index, notification_time = miax_pearloptions_expressorders_meo_v2_3.notification_time.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_pearloptions_expressorders_meo_v2_3.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Trading Status: Alphanumeric
  index, trading_status = miax_pearloptions_expressorders_meo_v2_3.trading_status.dissect(buffer, index, packet, parent)

  -- Event Reason: Alphanumeric
  index, event_reason = miax_pearloptions_expressorders_meo_v2_3.event_reason.dissect(buffer, index, packet, parent)

  -- Expected Event Time: NanoTime
  index, expected_event_time = miax_pearloptions_expressorders_meo_v2_3.expected_event_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlying Trading Status Notification
miax_pearloptions_expressorders_meo_v2_3.underlying_trading_status_notification.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.underlying_trading_status_notification, buffer(offset, 0))
    local index = miax_pearloptions_expressorders_meo_v2_3.underlying_trading_status_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_expressorders_meo_v2_3.underlying_trading_status_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_expressorders_meo_v2_3.underlying_trading_status_notification.fields(buffer, offset, packet, parent)
  end
end

-- System State Notification
miax_pearloptions_expressorders_meo_v2_3.system_state_notification = {}

-- Size: System State Notification
miax_pearloptions_expressorders_meo_v2_3.system_state_notification.size =
  miax_pearloptions_expressorders_meo_v2_3.notification_time.size + 
  miax_pearloptions_expressorders_meo_v2_3.meo_version.size + 
  miax_pearloptions_expressorders_meo_v2_3.session_id.size + 
  miax_pearloptions_expressorders_meo_v2_3.system_status.size

-- Display: System State Notification
miax_pearloptions_expressorders_meo_v2_3.system_state_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System State Notification
miax_pearloptions_expressorders_meo_v2_3.system_state_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: NanoTime
  index, notification_time = miax_pearloptions_expressorders_meo_v2_3.notification_time.dissect(buffer, index, packet, parent)

  -- Meo Version: Alphanumeric
  index, meo_version = miax_pearloptions_expressorders_meo_v2_3.meo_version.dissect(buffer, index, packet, parent)

  -- Session Id: BinaryU
  index, session_id = miax_pearloptions_expressorders_meo_v2_3.session_id.dissect(buffer, index, packet, parent)

  -- System Status: Alphanumeric
  index, system_status = miax_pearloptions_expressorders_meo_v2_3.system_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System State Notification
miax_pearloptions_expressorders_meo_v2_3.system_state_notification.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.system_state_notification, buffer(offset, 0))
    local index = miax_pearloptions_expressorders_meo_v2_3.system_state_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_expressorders_meo_v2_3.system_state_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_expressorders_meo_v2_3.system_state_notification.fields(buffer, offset, packet, parent)
  end
end

-- Series Update
miax_pearloptions_expressorders_meo_v2_3.series_update = {}

-- Size: Series Update
miax_pearloptions_expressorders_meo_v2_3.series_update.size =
  miax_pearloptions_expressorders_meo_v2_3.product_add_update_time.size + 
  miax_pearloptions_expressorders_meo_v2_3.product_id.size + 
  miax_pearloptions_expressorders_meo_v2_3.underlying_symbol.size + 
  miax_pearloptions_expressorders_meo_v2_3.security_symbol.size + 
  miax_pearloptions_expressorders_meo_v2_3.expiration_date.size + 
  miax_pearloptions_expressorders_meo_v2_3.strike_price.size + 
  miax_pearloptions_expressorders_meo_v2_3.call_or_put.size + 
  miax_pearloptions_expressorders_meo_v2_3.opening_time.size + 
  miax_pearloptions_expressorders_meo_v2_3.closing_time.size + 
  miax_pearloptions_expressorders_meo_v2_3.restricted_option.size + 
  miax_pearloptions_expressorders_meo_v2_3.long_term_option.size + 
  miax_pearloptions_expressorders_meo_v2_3.active_on_pearl.size + 
  miax_pearloptions_expressorders_meo_v2_3.pearl_bbo_posting_increment_indicator.size + 
  miax_pearloptions_expressorders_meo_v2_3.order_acceptance_increment_indicator.size + 
  miax_pearloptions_expressorders_meo_v2_3.opening_underlying_market_code.size + 
  miax_pearloptions_expressorders_meo_v2_3.reserved_12.size

-- Display: Series Update
miax_pearloptions_expressorders_meo_v2_3.series_update.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Series Update
miax_pearloptions_expressorders_meo_v2_3.series_update.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Product Add Update Time: NanoTime
  index, product_add_update_time = miax_pearloptions_expressorders_meo_v2_3.product_add_update_time.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_pearloptions_expressorders_meo_v2_3.product_id.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_pearloptions_expressorders_meo_v2_3.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = miax_pearloptions_expressorders_meo_v2_3.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration Date: Alphanumeric
  index, expiration_date = miax_pearloptions_expressorders_meo_v2_3.expiration_date.dissect(buffer, index, packet, parent)

  -- Strike Price: BinaryPrc4U
  index, strike_price = miax_pearloptions_expressorders_meo_v2_3.strike_price.dissect(buffer, index, packet, parent)

  -- Call Or Put: Alphanumeric
  index, call_or_put = miax_pearloptions_expressorders_meo_v2_3.call_or_put.dissect(buffer, index, packet, parent)

  -- Opening Time: Alphanumeric
  index, opening_time = miax_pearloptions_expressorders_meo_v2_3.opening_time.dissect(buffer, index, packet, parent)

  -- Closing Time: Alphanumeric
  index, closing_time = miax_pearloptions_expressorders_meo_v2_3.closing_time.dissect(buffer, index, packet, parent)

  -- Restricted Option: Alphanumeric
  index, restricted_option = miax_pearloptions_expressorders_meo_v2_3.restricted_option.dissect(buffer, index, packet, parent)

  -- Long Term Option: Alphanumeric
  index, long_term_option = miax_pearloptions_expressorders_meo_v2_3.long_term_option.dissect(buffer, index, packet, parent)

  -- Active On Pearl: Alphanumeric
  index, active_on_pearl = miax_pearloptions_expressorders_meo_v2_3.active_on_pearl.dissect(buffer, index, packet, parent)

  -- Pearl Bbo Posting Increment Indicator: Alphanumeric
  index, pearl_bbo_posting_increment_indicator = miax_pearloptions_expressorders_meo_v2_3.pearl_bbo_posting_increment_indicator.dissect(buffer, index, packet, parent)

  -- Order Acceptance Increment Indicator: Alphanumeric
  index, order_acceptance_increment_indicator = miax_pearloptions_expressorders_meo_v2_3.order_acceptance_increment_indicator.dissect(buffer, index, packet, parent)

  -- Opening Underlying Market Code: Alphanumeric
  index, opening_underlying_market_code = miax_pearloptions_expressorders_meo_v2_3.opening_underlying_market_code.dissect(buffer, index, packet, parent)

  -- Reserved 12: BinaryU
  if show.padding then
    index, reserved_12 = miax_pearloptions_expressorders_meo_v2_3.reserved_12.dissect(buffer, index, packet, parent)
  else
    index = index + miax_pearloptions_expressorders_meo_v2_3.reserved_12.size
  end

  return index
end

-- Dissect: Series Update
miax_pearloptions_expressorders_meo_v2_3.series_update.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.series_update, buffer(offset, 0))
    local index = miax_pearloptions_expressorders_meo_v2_3.series_update.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_expressorders_meo_v2_3.series_update.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_expressorders_meo_v2_3.series_update.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
miax_pearloptions_expressorders_meo_v2_3.sequenced_message = {}

-- Dispatch: Sequenced Message
miax_pearloptions_expressorders_meo_v2_3.sequenced_message.dispatch = {
  ["SU"] = miax_pearloptions_expressorders_meo_v2_3.series_update.dissect,
  ["SN"] = miax_pearloptions_expressorders_meo_v2_3.system_state_notification.dissect,
  ["UN"] = miax_pearloptions_expressorders_meo_v2_3.underlying_trading_status_notification.dissect,
  ["QN"] = miax_pearloptions_expressorders_meo_v2_3.opening_width_relief_notification.dissect,
  ["RN"] = miax_pearloptions_expressorders_meo_v2_3.arm_protection_settings_notification.dissect,
  ["A2"] = miax_pearloptions_expressorders_meo_v2_3.arm_2_underlying_level_protection_settings_notification.dissect,
  ["QX"] = miax_pearloptions_expressorders_meo_v2_3.single_side_liquidity_protection_trigger_notification.dissect,
  ["UP"] = miax_pearloptions_expressorders_meo_v2_3.arm_2_underlying_level_protection_notification.dissect,
  ["FP"] = miax_pearloptions_expressorders_meo_v2_3.arm_2_firm_level_protection_notification.dissect,
  ["XN"] = miax_pearloptions_expressorders_meo_v2_3.cancel_notification.dissect,
  ["EN"] = miax_pearloptions_expressorders_meo_v2_3.execution_notification.dissect,
}

-- Dissect: Sequenced Message
miax_pearloptions_expressorders_meo_v2_3.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  local dissect = miax_pearloptions_expressorders_meo_v2_3.sequenced_message.dispatch[sequenced_message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Data Packet
miax_pearloptions_expressorders_meo_v2_3.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
miax_pearloptions_expressorders_meo_v2_3.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  return sesm_packet_length - 1
end

-- Display: Sequenced Data Packet
miax_pearloptions_expressorders_meo_v2_3.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
miax_pearloptions_expressorders_meo_v2_3.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = miax_pearloptions_expressorders_meo_v2_3.sequence_number.dissect(buffer, index, packet, parent)

  -- Sequenced Message Type: 2 Byte Ascii String Enum with 11 values
  index, sequenced_message_type = miax_pearloptions_expressorders_meo_v2_3.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 11 branches
  index = miax_pearloptions_expressorders_meo_v2_3.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
miax_pearloptions_expressorders_meo_v2_3.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = miax_pearloptions_expressorders_meo_v2_3.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.sequenced_data_packet, buffer(offset, 0))
    local current = miax_pearloptions_expressorders_meo_v2_3.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = miax_pearloptions_expressorders_meo_v2_3.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_pearloptions_expressorders_meo_v2_3.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
end

-- Sesm Payload
miax_pearloptions_expressorders_meo_v2_3.sesm_payload = {}

-- Dispatch: Sesm Payload
miax_pearloptions_expressorders_meo_v2_3.sesm_payload.dispatch = {
  ["S"] = miax_pearloptions_expressorders_meo_v2_3.sequenced_data_packet.dissect,
  ["U"] = miax_pearloptions_expressorders_meo_v2_3.unsequenced_data_packet.dissect,
  ["L"] = miax_pearloptions_expressorders_meo_v2_3.login_request.dissect,
  ["R"] = miax_pearloptions_expressorders_meo_v2_3.login_response.dissect,
  ["C"] = miax_pearloptions_expressorders_meo_v2_3.synchronization_complete.dissect,
  ["A"] = miax_pearloptions_expressorders_meo_v2_3.retransmission_request.dissect,
  ["X"] = miax_pearloptions_expressorders_meo_v2_3.logout_request.dissect,
  ["G"] = miax_pearloptions_expressorders_meo_v2_3.goodbye_packet.dissect,
  ["E"] = miax_pearloptions_expressorders_meo_v2_3.end_of_session.dissect,
  ["0"] = miax_pearloptions_expressorders_meo_v2_3.server_heartbeat.dissect,
  ["1"] = miax_pearloptions_expressorders_meo_v2_3.client_heartbeat.dissect,
  ["T"] = miax_pearloptions_expressorders_meo_v2_3.test_packet.dissect,
}

-- Dissect: Sesm Payload
miax_pearloptions_expressorders_meo_v2_3.sesm_payload.dissect = function(buffer, offset, packet, parent, sesm_packet_type)
  local dissect = miax_pearloptions_expressorders_meo_v2_3.sesm_payload.dispatch[sesm_packet_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sesm Packet Header
miax_pearloptions_expressorders_meo_v2_3.sesm_packet_header = {}

-- Size: Sesm Packet Header
miax_pearloptions_expressorders_meo_v2_3.sesm_packet_header.size =
  miax_pearloptions_expressorders_meo_v2_3.sesm_packet_length.size + 
  miax_pearloptions_expressorders_meo_v2_3.sesm_packet_type.size

-- Display: Sesm Packet Header
miax_pearloptions_expressorders_meo_v2_3.sesm_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sesm Packet Header
miax_pearloptions_expressorders_meo_v2_3.sesm_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sesm Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, sesm_packet_length = miax_pearloptions_expressorders_meo_v2_3.sesm_packet_length.dissect(buffer, index, packet, parent)

  -- Sesm Packet Type: 1 Byte Ascii String Enum with 12 values
  index, sesm_packet_type = miax_pearloptions_expressorders_meo_v2_3.sesm_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sesm Packet Header
miax_pearloptions_expressorders_meo_v2_3.sesm_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.sesm_packet_header, buffer(offset, 0))
    local index = miax_pearloptions_expressorders_meo_v2_3.sesm_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_expressorders_meo_v2_3.sesm_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_expressorders_meo_v2_3.sesm_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Sesm Tcp Packet
miax_pearloptions_expressorders_meo_v2_3.sesm_tcp_packet = {}

-- Display: Sesm Tcp Packet
miax_pearloptions_expressorders_meo_v2_3.sesm_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sesm Tcp Packet
miax_pearloptions_expressorders_meo_v2_3.sesm_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_sesm_tcp_packet)
  local index = offset

  -- Sesm Packet Header: Struct of 2 fields
  index, sesm_packet_header = miax_pearloptions_expressorders_meo_v2_3.sesm_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Sesm Packet Type
  local sesm_packet_type = buffer(index - 1, 1):string()

  -- Sesm Payload: Runtime Type with 12 branches
  index = miax_pearloptions_expressorders_meo_v2_3.sesm_payload.dissect(buffer, index, packet, parent, sesm_packet_type)

  return index
end

-- Dissect: Sesm Tcp Packet
miax_pearloptions_expressorders_meo_v2_3.sesm_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_sesm_tcp_packet)
  local index = offset + size_of_sesm_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_miax_pearloptions_expressorders_meo_v2_3.fields.sesm_tcp_packet, buffer(offset, 0))
    local current = miax_pearloptions_expressorders_meo_v2_3.sesm_tcp_packet.fields(buffer, offset, packet, parent, size_of_sesm_tcp_packet)
    parent:set_len(size_of_sesm_tcp_packet)
    local display = miax_pearloptions_expressorders_meo_v2_3.sesm_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_pearloptions_expressorders_meo_v2_3.sesm_tcp_packet.fields(buffer, offset, packet, parent, size_of_sesm_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Sesm Tcp Packet
local sesm_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < miax_pearloptions_expressorders_meo_v2_3.sesm_packet_header.size then
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
miax_pearloptions_expressorders_meo_v2_3.packet = {}

-- Verify required size of Tcp packet
miax_pearloptions_expressorders_meo_v2_3.packet.requiredsize = function(buffer)
  return buffer:len() >= miax_pearloptions_expressorders_meo_v2_3.sesm_packet_header.size
end

-- Dissect Packet
miax_pearloptions_expressorders_meo_v2_3.packet.dissect = function(buffer, packet, parent)
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
      index = miax_pearloptions_expressorders_meo_v2_3.sesm_tcp_packet.dissect(frame, index, packet, parent, size_of_sesm_tcp_packet)
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
function omi_miax_pearloptions_expressorders_meo_v2_3.init()
end

-- Dissector for Miax PearlOptions ExpressOrders Meo 2.3
function omi_miax_pearloptions_expressorders_meo_v2_3.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_miax_pearloptions_expressorders_meo_v2_3.name

  -- Dissect protocol
  local protocol = parent:add(omi_miax_pearloptions_expressorders_meo_v2_3, buffer(), omi_miax_pearloptions_expressorders_meo_v2_3.description, "("..buffer:len().." Bytes)")
  return miax_pearloptions_expressorders_meo_v2_3.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Miax PearlOptions ExpressOrders Meo 2.3 (Tcp)
local function omi_miax_pearloptions_expressorders_meo_v2_3_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not miax_pearloptions_expressorders_meo_v2_3.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_miax_pearloptions_expressorders_meo_v2_3
  omi_miax_pearloptions_expressorders_meo_v2_3.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Miax PearlOptions ExpressOrders Meo 2.3
omi_miax_pearloptions_expressorders_meo_v2_3:register_heuristic("tcp", omi_miax_pearloptions_expressorders_meo_v2_3_tcp_heuristic)

-- Register Miax PearlOptions ExpressOrders Meo 2.3 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_miax_pearloptions_expressorders_meo_v2_3)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Miami International Holdings
--   Version: 2.3
--   Date: Thursday, October 15, 2026
--   Specification: MIAX_Express_Orders_MEO_v2.3.pdf
--   Specification: MIAX_PEARL_TcpSessionMgmt_SesM_v1_1e_0.pdf
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
