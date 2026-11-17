-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Miax SapphireOptions ExpressOrders Meo 1.2 Protocol
local omi_miax_sapphireoptions_expressorders_meo_v1_2 = Proto("Omi.Miax.SapphireOptions.ExpressOrders.Meo.v1.2", "Miax SapphireOptions ExpressOrders Meo 1.2")

-- Protocol table
local miax_sapphireoptions_expressorders_meo_v1_2 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Miax SapphireOptions ExpressOrders Meo 1.2 Fields
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.action = ProtoField.new("Action", "miax.sapphireoptions.expressorders.meo.v1.2.action", ftypes.STRING)
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.active_on_sapphire = ProtoField.new("Active On Sapphire", "miax.sapphireoptions.expressorders.meo.v1.2.activeonsapphire", ftypes.STRING, nil, nil, nil, "Indicates if this symbol is tradable on Sapphire in the current session")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.allowable_engagement_percentage = ProtoField.new("Allowable Engagement Percentage", "miax.sapphireoptions.expressorders.meo.v1.2.allowableengagementpercentage", ftypes.UINT32, nil, nil, nil, "Percentage of order size at which the Member wants Sapphire to trigger ARM protection for this underlying. Minimum value is 1 (1%). Maximum is 65,535 (65,535%)")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.application_protocol = ProtoField.new("Application Protocol", "miax.sapphireoptions.expressorders.meo.v1.2.applicationprotocol", ftypes.STRING, nil, nil, nil, "Eg: MEI1.0 (right padded with spaces)")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.arm_2_counting_period = ProtoField.new("Arm 2 Counting Period", "miax.sapphireoptions.expressorders.meo.v1.2.arm2countingperiod", ftypes.UINT32, nil, nil, nil, "Counting Period in milliseconds in which the number of unique ARM triggers cannot exceed the configured ARM Threshold Count specified for ARM2 protection")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.arm_2_settings_update_status = ProtoField.new("Arm 2 Settings Update Status", "miax.sapphireoptions.expressorders.meo.v1.2.arm2settingsupdatestatus", ftypes.STRING, nil, nil, nil, "ARM2 settings update status")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.arm_settings_update_status = ProtoField.new("Arm Settings Update Status", "miax.sapphireoptions.expressorders.meo.v1.2.armsettingsupdatestatus", ftypes.STRING)
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.arm_threshold_count = ProtoField.new("Arm Threshold Count", "miax.sapphireoptions.expressorders.meo.v1.2.armthresholdcount", ftypes.UINT32, nil, nil, nil, "Number of unique ARM triggers for the Counting Period that will trigger ARM2 Firm Level protection")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.assignment_settings_status = ProtoField.new("Assignment Settings Status", "miax.sapphireoptions.expressorders.meo.v1.2.assignmentsettingsstatus", ftypes.STRING)
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.bulk_order_index = ProtoField.new("Bulk Order Index", "miax.sapphireoptions.expressorders.meo.v1.2.bulkorderindex", ftypes.UINT8, nil, nil, nil, "Bulk Liquidity Index assigned by Sapphire to each Order in bulk Liquidity (order position in the bulk liquidity). Set to zero for Complex binary order")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.bulk_order_status = ProtoField.new("Bulk Order Status", "miax.sapphireoptions.expressorders.meo.v1.2.bulkorderstatus", ftypes.STRING)
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.call_or_put = ProtoField.new("Call Or Put", "miax.sapphireoptions.expressorders.meo.v1.2.callorput", ftypes.STRING, nil, nil, nil, "Option Type")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.cancel_reason = ProtoField.new("Cancel Reason", "miax.sapphireoptions.expressorders.meo.v1.2.cancelreason", ftypes.STRING)
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.client_message_id = ProtoField.new("Client Message Id", "miax.sapphireoptions.expressorders.meo.v1.2.clientmessageid", ftypes.UINT32, nil, nil, nil, "Unique message ID assigned by the firm")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.client_order_id = ProtoField.new("Client Order Id", "miax.sapphireoptions.expressorders.meo.v1.2.clientorderid", ftypes.UINT32, nil, nil, nil, "Client order ID in Simple Binary Order. Set to zero for Complex Binary order")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.client_send_time = ProtoField.new("Client Send Time", "miax.sapphireoptions.expressorders.meo.v1.2.clientsendtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Firm's send time for the Liquidities. Nanoseconds since Epoch")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.client_send_time_utc = ProtoField.new("Client Send Time", "miax.sapphireoptions.expressorders.meo.v1.2.clientsendtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Firm's send time for the Liquidities. Nanoseconds since Epoch")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.closing_time = ProtoField.new("Closing Time", "miax.sapphireoptions.expressorders.meo.v1.2.closingtime", ftypes.STRING, nil, nil, nil, "Expressed in HH:MM:SS format. e.g.: 16:15:00")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.computer_id = ProtoField.new("Computer Id", "miax.sapphireoptions.expressorders.meo.v1.2.computerid", ftypes.STRING, nil, nil, nil, "ID issued by MIAX during initial setup")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.counting_period = ProtoField.new("Counting Period", "miax.sapphireoptions.expressorders.meo.v1.2.countingperiod", ftypes.UINT16, nil, nil, nil, "Duration (in number of milliseconds) in which Engagement percentage is calculated in order to determine if the MPID should be put on ARM protection for this underlying. Allowable Range: 100 to 15,000 milliseconds")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.end_sequence_number = ProtoField.new("End Sequence Number", "miax.sapphireoptions.expressorders.meo.v1.2.endsequencenumber", ftypes.UINT64, nil, nil, nil, "Sequence number of the last packet to be retransmitted")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.engine_sequence_number = ProtoField.new("Engine Sequence Number", "miax.sapphireoptions.expressorders.meo.v1.2.enginesequencenumber", ftypes.UINT64, nil, nil, nil, "Sapphire Engine sequence number of this cancel")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.engine_transaction_time = ProtoField.new("Engine Transaction Time", "miax.sapphireoptions.expressorders.meo.v1.2.enginetransactiontime", ftypes.UINT64, nil, nil, nil, "Unique timestamp, assigned by the Sapphire Matching Engine, for orders processed successfully and zero if rejected")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.event_reason = ProtoField.new("Event Reason", "miax.sapphireoptions.expressorders.meo.v1.2.eventreason", ftypes.STRING)
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.execution_id = ProtoField.new("Execution Id", "miax.sapphireoptions.expressorders.meo.v1.2.executionid", ftypes.UINT64, nil, nil, nil, "Sapphire execution ID")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.expected_event_time = ProtoField.new("Expected Event Time", "miax.sapphireoptions.expressorders.meo.v1.2.expectedeventtime", ftypes.UINT64, nil, nil, nil, "Expected time of start of the event. When underlying trading status is H, this will be 0 (zero). When underlying trading status is R or O, this will be the time at which the opening/reopening process will start for this Underlying Symbol")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.expiration_date = ProtoField.new("Expiration Date", "miax.sapphireoptions.expressorders.meo.v1.2.expirationdate", ftypes.STRING, nil, nil, nil, "Expiration date of the option in YYYYMMDD format")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.goodbye_reason = ProtoField.new("Goodbye Reason", "miax.sapphireoptions.expressorders.meo.v1.2.goodbyereason", ftypes.STRING, nil, nil, nil, "Reason")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.highest_sequence_number = ProtoField.new("Highest Sequence Number", "miax.sapphireoptions.expressorders.meo.v1.2.highestsequencenumber", ftypes.UINT64, nil, nil, nil, "The highest sequence number that the server currently has for the client")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.invalid_order_count = ProtoField.new("Invalid Order Count", "miax.sapphireoptions.expressorders.meo.v1.2.invalidordercount", ftypes.UINT8, nil, nil, nil, "Number of orders that were rejected (orders with status other than space)")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.last_price = ProtoField.new("Last Price", "miax.sapphireoptions.expressorders.meo.v1.2.lastprice", ftypes.DOUBLE, nil, nil, nil, "Price of this execution")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.last_size = ProtoField.new("Last Size", "miax.sapphireoptions.expressorders.meo.v1.2.lastsize", ftypes.UINT32, nil, nil, nil, "Number of contracts executed (not cumulative)")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.leg_ratio_qty = ProtoField.new("Leg Ratio Qty", "miax.sapphireoptions.expressorders.meo.v1.2.legratioqty", ftypes.UINT32, nil, nil, nil, "The ratio of this individual leg. Number of option contracts or Number of stock shares for this leg is: LegRatioQty * Size")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.leg_side = ProtoField.new("Leg Side", "miax.sapphireoptions.expressorders.meo.v1.2.legside", ftypes.STRING, nil, nil, nil, "The side of this individual leg")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.legs = ProtoField.new("Legs", "miax.sapphireoptions.expressorders.meo.v1.2.legs", ftypes.STRING, nil, nil, nil, "2 to 13 legs")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.liquidity_indicator = ProtoField.new("Liquidity Indicator", "miax.sapphireoptions.expressorders.meo.v1.2.liquidityindicator", ftypes.STRING, nil, nil, nil, "Order Traded as specified in this billing field")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.liquidity_type = ProtoField.new("Liquidity Type", "miax.sapphireoptions.expressorders.meo.v1.2.liquiditytype", ftypes.STRING)
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.liquidity_unit = ProtoField.new("Liquidity Unit", "miax.sapphireoptions.expressorders.meo.v1.2.liquidityunit", ftypes.BYTES, nil, nil, nil, "Can contain 1 AutoReplace Order, Standard Order, Standard Order Cancel or Standard Order Replace in each unit. Number of units should match the count specified in the count field")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.liquidity_unit_count = ProtoField.new("Liquidity Unit Count", "miax.sapphireoptions.expressorders.meo.v1.2.liquidityunitcount", ftypes.UINT8, nil, nil, nil, "Number of Orders, Cancels, Replaces in this bulk message")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.liquidity_units = ProtoField.new("Liquidity Units", "miax.sapphireoptions.expressorders.meo.v1.2.liquidityunits", ftypes.STRING, nil, nil, nil, "1 to 25 single-side Order, cancel or replace")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.login_status = ProtoField.new("Login Status", "miax.sapphireoptions.expressorders.meo.v1.2.loginstatus", ftypes.STRING)
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.logout_reason = ProtoField.new("Logout Reason", "miax.sapphireoptions.expressorders.meo.v1.2.logoutreason", ftypes.STRING, nil, nil, nil, "Reason")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.logout_text = ProtoField.new("Logout Text", "miax.sapphireoptions.expressorders.meo.v1.2.logouttext", ftypes.STRING, nil, nil, nil, "Free form human readable text to provide more details beyond the reasons mentioned above")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.long_term_option = ProtoField.new("Long Term Option", "miax.sapphireoptions.expressorders.meo.v1.2.longtermoption", ftypes.STRING)
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.mass_cancel_scope = ProtoField.new("Mass Cancel Scope", "miax.sapphireoptions.expressorders.meo.v1.2.masscancelscope", ftypes.STRING)
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.meo_version = ProtoField.new("Meo Version", "miax.sapphireoptions.expressorders.meo.v1.2.meoversion", ftypes.STRING, nil, nil, nil, "Eg: MEOX.X (where X.X is MEO version)")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.mpid = ProtoField.new("Mpid", "miax.sapphireoptions.expressorders.meo.v1.2.mpid", ftypes.STRING, nil, nil, nil, "Sapphire assigned ID of the Member")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.net_price = ProtoField.new("Net Price", "miax.sapphireoptions.expressorders.meo.v1.2.netprice", ftypes.DOUBLE, nil, nil, nil, "The net limit price for the strategy. If Side is B, a positive number represents net debit and a negative number net credit; if Side is A, a positive number represents net credit and a negative number a net debit. Price of zero is net neutral transaction for either side")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.notification_time = ProtoField.new("Notification Time", "miax.sapphireoptions.expressorders.meo.v1.2.notificationtime", ftypes.UINT64, nil, nil, nil, "Time at which this was generated by Sapphire system")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.notification_type = ProtoField.new("Notification Type", "miax.sapphireoptions.expressorders.meo.v1.2.notificationtype", ftypes.STRING)
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.number_of_legs = ProtoField.new("Number Of Legs", "miax.sapphireoptions.expressorders.meo.v1.2.numberoflegs", ftypes.UINT8, nil, nil, nil, "Number of Legs. Valid values: 2 to 12 (for Options only), 2 to 13 (for Stock-tied)")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.open_size = ProtoField.new("Open Size", "miax.sapphireoptions.expressorders.meo.v1.2.opensize", ftypes.UINT32, nil, nil, nil, "Indicates the remaining size open after processing the new order, cancel/replace or cancel. Zero for rejected orders")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.opening_time = ProtoField.new("Opening Time", "miax.sapphireoptions.expressorders.meo.v1.2.openingtime", ftypes.STRING, nil, nil, nil, "Expressed in HH:MM:SS format. e.g.: 09:30:00")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.opening_underlying_market_code = ProtoField.new("Opening Underlying Market Code", "miax.sapphireoptions.expressorders.meo.v1.2.openingunderlyingmarketcode", ftypes.STRING, nil, nil, nil, "Options opening will be triggered on receipt of Opening quote/trade from this Underlying market")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.order_acceptance_increment_indicator = ProtoField.new("Order Acceptance Increment Indicator", "miax.sapphireoptions.expressorders.meo.v1.2.orderacceptanceincrementindicator", ftypes.STRING, nil, nil, nil, "This is the Minimum Price Variation for Order acceptance as per Sapphire rules")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.order_ack_time = ProtoField.new("Order Ack Time", "miax.sapphireoptions.expressorders.meo.v1.2.orderacktime", ftypes.UINT64, nil, nil, nil, "Time at which Sapphire engine generated this response")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.order_count = ProtoField.new("Order Count", "miax.sapphireoptions.expressorders.meo.v1.2.ordercount", ftypes.UINT8, nil, nil, nil, "Number of orders that were submitted in the Bulk liquidity block")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.order_id = ProtoField.new("Order Id", "miax.sapphireoptions.expressorders.meo.v1.2.orderid", ftypes.UINT64, nil, nil, nil, "Sapphire assigned ID for complex binary order if accepted; Zero if complex binary order was rejected")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.order_response = ProtoField.new("Order Response", "miax.sapphireoptions.expressorders.meo.v1.2.orderresponse", ftypes.STRING, nil, nil, nil, "1 to N single-side order responses")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.order_status = ProtoField.new("Order Status", "miax.sapphireoptions.expressorders.meo.v1.2.orderstatus", ftypes.STRING)
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.product_add_update_time = ProtoField.new("Product Add Update Time", "miax.sapphireoptions.expressorders.meo.v1.2.productaddupdatetime", ftypes.UINT64, nil, nil, nil, "Time at which this product is added/updated on Sapphire system today")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.product_id = ProtoField.new("Product Id", "miax.sapphireoptions.expressorders.meo.v1.2.productid", ftypes.UINT32, nil, nil, nil, "Sapphire Product ID mapped to a given option. It is assigned per trading session and is valid for that session")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.relief_multiplier = ProtoField.new("Relief Multiplier", "miax.sapphireoptions.expressorders.meo.v1.2.reliefmultiplier", ftypes.DOUBLE, nil, nil, nil, "Relief is the multiplier times the regular acceptable Exchange Opening width (Opening BBO width)")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "miax.sapphireoptions.expressorders.meo.v1.2.requestedsequencenumber", ftypes.UINT64, nil, nil, nil, "Specifies client requested sequence number: next sequence number the client wants to receive upon connection, or 0 to start receiving only new messages without any replay of old messages")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.requested_session = ProtoField.new("Requested Session", "miax.sapphireoptions.expressorders.meo.v1.2.requestedsession", ftypes.UINT8, nil, nil, nil, "Specifies the session the client would like to log into, or zero to log into the currently active session")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.requested_slap_codes = ProtoField.new("Requested Slap Codes", "miax.sapphireoptions.expressorders.meo.v1.2.requestedslapcodes", ftypes.STRING, nil, nil, nil, "SLAP codes requested to be purged, one bit per code; bit 0 is the least significant bit")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.reserved_1 = ProtoField.new("Reserved 1", "miax.sapphireoptions.expressorders.meo.v1.2.reserved1", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.reserved_10 = ProtoField.new("Reserved 10", "miax.sapphireoptions.expressorders.meo.v1.2.reserved10", ftypes.BYTES, nil, nil, nil, "For future use")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.reserved_12 = ProtoField.new("Reserved 12", "miax.sapphireoptions.expressorders.meo.v1.2.reserved12", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.reserved_15 = ProtoField.new("Reserved 15", "miax.sapphireoptions.expressorders.meo.v1.2.reserved15", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.reserved_16 = ProtoField.new("Reserved 16", "miax.sapphireoptions.expressorders.meo.v1.2.reserved16", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.reserved_4 = ProtoField.new("Reserved 4", "miax.sapphireoptions.expressorders.meo.v1.2.reserved4", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.reserved_6 = ProtoField.new("Reserved 6", "miax.sapphireoptions.expressorders.meo.v1.2.reserved6", ftypes.BYTES, nil, nil, nil, "For future use")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.reserved_8 = ProtoField.new("Reserved 8", "miax.sapphireoptions.expressorders.meo.v1.2.reserved8", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.restricted_option = ProtoField.new("Restricted Option", "miax.sapphireoptions.expressorders.meo.v1.2.restrictedoption", ftypes.STRING)
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.sapphire_bbo_posting_increment_indicator = ProtoField.new("Sapphire Bbo Posting Increment Indicator", "miax.sapphireoptions.expressorders.meo.v1.2.sapphirebbopostingincrementindicator", ftypes.STRING, nil, nil, nil, "This is the Minimum Price Variation as agreed to by the Options industry (penny pilot program) and as published by Sapphire")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.scope = ProtoField.new("Scope", "miax.sapphireoptions.expressorders.meo.v1.2.scope", ftypes.STRING)
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.security_id = ProtoField.new("Security Id", "miax.sapphireoptions.expressorders.meo.v1.2.securityid", ftypes.UINT32, nil, nil, nil, "Sapphire Option Product ID if Security ID Scope is P. Sapphire Complex Strategy ID if Security ID Scope is S. If set to zero, will apply reset for both sides of every option or every strategy for the MPID")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.security_id_scope = ProtoField.new("Security Id Scope", "miax.sapphireoptions.expressorders.meo.v1.2.securityidscope", ftypes.STRING, nil, nil, nil, "Defines type of security specified in Security ID field")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.security_symbol = ProtoField.new("Security Symbol", "miax.sapphireoptions.expressorders.meo.v1.2.securitysymbol", ftypes.STRING, nil, nil, nil, "Option Security Symbol")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.sequence_number = ProtoField.new("Sequence Number", "miax.sapphireoptions.expressorders.meo.v1.2.sequencenumber", ftypes.UINT64, nil, nil, nil, "Sequence number of this sequenced data packet")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "miax.sapphireoptions.expressorders.meo.v1.2.sequenceddatapacket", ftypes.STRING, nil, nil, nil, "The Server application can choose to use Sequenced data packets to send all messages that must be recoverable by the client in case of a connection loss")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "miax.sapphireoptions.expressorders.meo.v1.2.sequencedmessagetype", ftypes.STRING, nil, nil, nil, "Message type of the application message the sequenced data packet carries")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.sesm_packet_length = ProtoField.new("Sesm Packet Length", "miax.sapphireoptions.expressorders.meo.v1.2.sesmpacketlength", ftypes.UINT16, nil, nil, nil, "The length of rest of the packet")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.sesm_packet_type = ProtoField.new("Sesm Packet Type", "miax.sapphireoptions.expressorders.meo.v1.2.sesmpackettype", ftypes.STRING, nil, nil, nil, "SesM protocol packet type")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.sesm_version = ProtoField.new("Sesm Version", "miax.sapphireoptions.expressorders.meo.v1.2.sesmversion", ftypes.STRING, nil, nil, nil, "1.1 (right padded with spaces)")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.session_id = ProtoField.new("Session Id", "miax.sapphireoptions.expressorders.meo.v1.2.sessionid", ftypes.UINT8, nil, nil, nil, "Sapphire assigned ID for the current trading session")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.side = ProtoField.new("Side", "miax.sapphireoptions.expressorders.meo.v1.2.side", ftypes.STRING, nil, nil, nil, "Side of complex binary order")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.size = ProtoField.new("Size", "miax.sapphireoptions.expressorders.meo.v1.2.size", ftypes.UINT32, nil, nil, nil, "Number of times to execute the specified strategy")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.slap_code_1 = ProtoField.new("Slap Code 1", "miax.sapphireoptions.expressorders.meo.v1.2.slapcode1", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01, "Bit 0: SLAP Code 1")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.slap_code_2 = ProtoField.new("Slap Code 2", "miax.sapphireoptions.expressorders.meo.v1.2.slapcode2", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02, "Bit 1: SLAP Code 2")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.slap_code_3 = ProtoField.new("Slap Code 3", "miax.sapphireoptions.expressorders.meo.v1.2.slapcode3", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04, "Bit 2: SLAP Code 3")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.slap_code_4 = ProtoField.new("Slap Code 4", "miax.sapphireoptions.expressorders.meo.v1.2.slapcode4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08, "Bit 3: SLAP Code 4")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.slap_code_5 = ProtoField.new("Slap Code 5", "miax.sapphireoptions.expressorders.meo.v1.2.slapcode5", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10, "Bit 4: SLAP Code 5")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.slap_code_6 = ProtoField.new("Slap Code 6", "miax.sapphireoptions.expressorders.meo.v1.2.slapcode6", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20, "Bit 5: SLAP Code 6")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.slap_code_7 = ProtoField.new("Slap Code 7", "miax.sapphireoptions.expressorders.meo.v1.2.slapcode7", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40, "Bit 6: SLAP Code 7")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.slap_code_8 = ProtoField.new("Slap Code 8", "miax.sapphireoptions.expressorders.meo.v1.2.slapcode8", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80, "Bit 7: SLAP Code 8")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.slap_codes = ProtoField.new("Slap Codes", "miax.sapphireoptions.expressorders.meo.v1.2.slapcodes", ftypes.STRING, nil, nil, nil, "SLAP codes, one bit per code; bit 0 is the least significant bit")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.source = ProtoField.new("Source", "miax.sapphireoptions.expressorders.meo.v1.2.source", ftypes.STRING)
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.start_sequence_number = ProtoField.new("Start Sequence Number", "miax.sapphireoptions.expressorders.meo.v1.2.startsequencenumber", ftypes.UINT64, nil, nil, nil, "Sequence number of the first packet to be retransmitted")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.status = ProtoField.new("Status", "miax.sapphireoptions.expressorders.meo.v1.2.status", ftypes.STRING)
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.stock_sell_short_indicator = ProtoField.new("Stock Sell Short Indicator", "miax.sapphireoptions.expressorders.meo.v1.2.stocksellshortindicator", ftypes.STRING, nil, nil, nil, "Sell Short indicator if this complex binary order sells the stock leg of the strategy")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.strategy_id = ProtoField.new("Strategy Id", "miax.sapphireoptions.expressorders.meo.v1.2.strategyid", ftypes.UINT32, nil, nil, nil, "Sapphire Strategy ID is assigned per trading day and is valid only for that day. ID is not unique between Series Product ID")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.strike_price = ProtoField.new("Strike Price", "miax.sapphireoptions.expressorders.meo.v1.2.strikeprice", ftypes.DOUBLE, nil, nil, nil, "Explicit strike price of the option")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.system_status = ProtoField.new("System Status", "miax.sapphireoptions.expressorders.meo.v1.2.systemstatus", ftypes.STRING, nil, nil, nil, "Current system status")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.test_text = ProtoField.new("Test Text", "miax.sapphireoptions.expressorders.meo.v1.2.testtext", ftypes.STRING, nil, nil, nil, "Free form human readable text")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.time_in_force = ProtoField.new("Time In Force", "miax.sapphireoptions.expressorders.meo.v1.2.timeinforce", ftypes.STRING, nil, nil, nil, "Time in Force for complex binary order")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.trade_id = ProtoField.new("Trade Id", "miax.sapphireoptions.expressorders.meo.v1.2.tradeid", ftypes.UINT32, nil, nil, nil, "Sapphire Trade ID")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.trade_status = ProtoField.new("Trade Status", "miax.sapphireoptions.expressorders.meo.v1.2.tradestatus", ftypes.STRING)
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.trading_status = ProtoField.new("Trading Status", "miax.sapphireoptions.expressorders.meo.v1.2.tradingstatus", ftypes.STRING)
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.trigger_reason = ProtoField.new("Trigger Reason", "miax.sapphireoptions.expressorders.meo.v1.2.triggerreason", ftypes.STRING)
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.triggered_slap_codes = ProtoField.new("Triggered Slap Codes", "miax.sapphireoptions.expressorders.meo.v1.2.triggeredslapcodes", ftypes.STRING, nil, nil, nil, "SLAP codes currently purged and not reset, one bit per code; bit 0 is the least significant bit")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.triggering_bulk_order_index = ProtoField.new("Triggering Bulk Order Index", "miax.sapphireoptions.expressorders.meo.v1.2.triggeringbulkorderindex", ftypes.UINT8, nil, nil, nil, "Bulk Order Index assigned by Sapphire to each Order in Bulk Liquidity (order position in the Bulk liquidity) that triggered Single Side Liquidity Protection")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.triggering_client_message_id = ProtoField.new("Triggering Client Message Id", "miax.sapphireoptions.expressorders.meo.v1.2.triggeringclientmessageid", ftypes.UINT32, nil, nil, nil, "Client Message ID supplied by the firm in the Bulk order message that triggered the Single Side Liquidity Protection")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "miax.sapphireoptions.expressorders.meo.v1.2.underlyingsymbol", ftypes.STRING, nil, nil, nil, "Stock Symbol for the option")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "miax.sapphireoptions.expressorders.meo.v1.2.unsequenceddatapacket", ftypes.STRING, nil, nil, nil, "Each unsequenced data packet carries one unsequenced message from the higher-level protocol")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "miax.sapphireoptions.expressorders.meo.v1.2.unsequencedmessagetype", ftypes.STRING, nil, nil, nil, "Message type of the application message the unsequenced data packet carries")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.update_reason = ProtoField.new("Update Reason", "miax.sapphireoptions.expressorders.meo.v1.2.updatereason", ftypes.STRING)
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.username = ProtoField.new("Username", "miax.sapphireoptions.expressorders.meo.v1.2.username", ftypes.STRING, nil, nil, nil, "Username issued by MIAX during initial setup")

-- Miax SapphireOptions ExpressOrders Meo 1.2 Framing
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.packet = ProtoField.new("Packet", "miax.sapphireoptions.expressorders.meo.v1.2.packet", ftypes.STRING, nil, nil, nil, "SesM Packet")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.sesm_packet_header = ProtoField.new("Sesm Packet Header", "miax.sapphireoptions.expressorders.meo.v1.2.sesmpacketheader", ftypes.STRING)
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.sesm_tcp_packet = ProtoField.new("Sesm Tcp Packet", "miax.sapphireoptions.expressorders.meo.v1.2.sesmtcppacket", ftypes.STRING)

-- Miax SapphireOptions ExpressOrders 1.2 Application Messages
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.arm_2_firm_level_protection_notification = ProtoField.new("Arm 2 Firm Level Protection Notification", "miax.sapphireoptions.expressorders.meo.v1.2.arm2firmlevelprotectionnotification", ftypes.STRING, nil, nil, nil, "This message format will be used to notify firms about ARM2 Firm Level protection events")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.arm_2_underlying_level_protection_notification = ProtoField.new("Arm 2 Underlying Level Protection Notification", "miax.sapphireoptions.expressorders.meo.v1.2.arm2underlyinglevelprotectionnotification", ftypes.STRING, nil, nil, nil, "This message format will be used to notify firms about ARM2 Underlying Level protection events")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.arm_2_underlying_level_protection_settings_notification = ProtoField.new("Arm 2 Underlying Level Protection Settings Notification", "miax.sapphireoptions.expressorders.meo.v1.2.arm2underlyinglevelprotectionsettingsnotification", ftypes.STRING, nil, nil, nil, "This message format will be used to notify firms of their ARM2 Underlying Level protection settings")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.arm_2_underlying_level_protection_settings_update_request = ProtoField.new("Arm 2 Underlying Level Protection Settings Update Request", "miax.sapphireoptions.expressorders.meo.v1.2.arm2underlyinglevelprotectionsettingsupdaterequest", ftypes.STRING, nil, nil, nil, "Firms can use this message format to set up their ARM2 Underlying Level protection settings for each session. Changes to these settings can be made throughout the day")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.arm_2_underlying_level_protection_settings_update_response = ProtoField.new("Arm 2 Underlying Level Protection Settings Update Response", "miax.sapphireoptions.expressorders.meo.v1.2.arm2underlyinglevelprotectionsettingsupdateresponse", ftypes.STRING, nil, nil, nil, "Sapphire uses this format to respond to the firm with a status of their ARM2 Underlying level protection Settings Update Request")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.arm_protection_settings_notification = ProtoField.new("Arm Protection Settings Notification", "miax.sapphireoptions.expressorders.meo.v1.2.armprotectionsettingsnotification", ftypes.STRING, nil, nil, nil, "This message format will be used to notify firms of their ARM settings")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.arm_settings_update_request = ProtoField.new("Arm Settings Update Request", "miax.sapphireoptions.expressorders.meo.v1.2.armsettingsupdaterequest", ftypes.STRING, nil, nil, nil, "Firms can use this message format to set up their ARM protection settings for each session. Changes to these settings can be made throughout the day")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.arm_settings_update_response = ProtoField.new("Arm Settings Update Response", "miax.sapphireoptions.expressorders.meo.v1.2.armsettingsupdateresponse", ftypes.STRING, nil, nil, nil, "Sapphire uses this format to respond to the firm with a status of their ARM protection settings request")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.cancel_notification = ProtoField.new("Cancel Notification", "miax.sapphireoptions.expressorders.meo.v1.2.cancelnotification", ftypes.STRING, nil, nil, nil, "This is the message format that will be used to notify firms about Simple or Complex order cancels. By default this is not a sequenced message; firms can request it to be configured as a sequenced message")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.complex_binary_order_request = ProtoField.new("Complex Binary Order Request", "miax.sapphireoptions.expressorders.meo.v1.2.complexbinaryorderrequest", ftypes.STRING, nil, nil, nil, "This is the format for a Complex Binary Order message that can be sent to match with a resting Complex orders on the complex book")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.complex_binary_order_response = ProtoField.new("Complex Binary Order Response", "miax.sapphireoptions.expressorders.meo.v1.2.complexbinaryorderresponse", ftypes.STRING, nil, nil, nil, "This message indicates if the complex binary order is accepted or rejected. Note that this message does not report executions")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.complex_strategy_definition_notification = ProtoField.new("Complex Strategy Definition Notification", "miax.sapphireoptions.expressorders.meo.v1.2.complexstrategydefinitionnotification", ftypes.STRING, nil, nil, nil, "This is the message format that will be used to disseminate stock option strategies traded on Sapphire for the current session")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.execution_notification = ProtoField.new("Execution Notification", "miax.sapphireoptions.expressorders.meo.v1.2.executionnotification", ftypes.STRING, nil, nil, nil, "This message format will be used to notify the firms of executions of their orders")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.liquidity_mass_cancel_request = ProtoField.new("Liquidity Mass Cancel Request", "miax.sapphireoptions.expressorders.meo.v1.2.liquiditymasscancelrequest", ftypes.STRING, nil, nil, nil, "Firms can use this message format to request the cancelation of all Simple orders for an MPID for all series for an underlying")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.liquidity_mass_cancel_response = ProtoField.new("Liquidity Mass Cancel Response", "miax.sapphireoptions.expressorders.meo.v1.2.liquiditymasscancelresponse", ftypes.STRING, nil, nil, nil, "This message format will be used to inform the firm about the status of their previous Mass Cancel request")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.liquidity_protection_reset_request = ProtoField.new("Liquidity Protection Reset Request", "miax.sapphireoptions.expressorders.meo.v1.2.liquidityprotectionresetrequest", ftypes.STRING, nil, nil, nil, "Following an order protection being engaged for a given MPID and underlying, firms must use this message format to reset their Order Protection in order to start sending orders for any option or a complex strategy of the specified underlying")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.liquidity_protection_reset_response = ProtoField.new("Liquidity Protection Reset Response", "miax.sapphireoptions.expressorders.meo.v1.2.liquidityprotectionresetresponse", ftypes.STRING, nil, nil, nil, "This message format is used to inform the firms of the status of their Order Protection Reset Request")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.liquidity_protection_trigger_notification = ProtoField.new("Liquidity Protection Trigger Notification", "miax.sapphireoptions.expressorders.meo.v1.2.liquidityprotectiontriggernotification", ftypes.STRING, nil, nil, nil, "This message format will be used to notify firms when order protection is triggered for an MPID")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.opening_width_relief_notification = ProtoField.new("Opening Width Relief Notification", "miax.sapphireoptions.expressorders.meo.v1.2.openingwidthreliefnotification", ftypes.STRING, nil, nil, nil, "This message format will be used to notify the firms if and when Sapphire grants relief from valid opening width parameters for Opening as specified by regulatory circulars of Sapphire")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.series_assignment_request = ProtoField.new("Series Assignment Request", "miax.sapphireoptions.expressorders.meo.v1.2.seriesassignmentrequest", ftypes.STRING, nil, nil, nil, "Market Making firms can use this message format to communicate to Sapphire which of their MM MPIDs is assigned or unassigned in a product")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.series_assignment_response = ProtoField.new("Series Assignment Response", "miax.sapphireoptions.expressorders.meo.v1.2.seriesassignmentresponse", ftypes.STRING, nil, nil, nil, "Sapphire uses this format to respond to the firm assignment request")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.series_update = ProtoField.new("Series Update", "miax.sapphireoptions.expressorders.meo.v1.2.seriesupdate", ftypes.STRING, nil, nil, nil, "This is the message format that will be used to disseminate all Option series traded on Sapphire for the current session on the cloud associated for this connection")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.simple_bulk_liquidity_message = ProtoField.new("Simple Bulk Liquidity Message", "miax.sapphireoptions.expressorders.meo.v1.2.simplebulkliquiditymessage", ftypes.STRING, nil, nil, nil, "Firms can use this message format to send up to 25 orders, cancels or cancel replaces. The orders are processed in the sequence according to their position in the message")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.simple_bulk_liquidity_message_response = ProtoField.new("Simple Bulk Liquidity Message Response", "miax.sapphireoptions.expressorders.meo.v1.2.simplebulkliquiditymessageresponse", ftypes.STRING, nil, nil, nil, "This message format will be used to inform the firm of the status of Orders sent in the Bulk Liquidity Message request")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.single_side_liquidity_protection_reset_request = ProtoField.new("Single Side Liquidity Protection Reset Request", "miax.sapphireoptions.expressorders.meo.v1.2.singlesideliquidityprotectionresetrequest", ftypes.STRING, nil, nil, nil, "Request to reset Single Side Liquidity Protection for the specific Option or Complex Strategy")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.single_side_liquidity_protection_reset_response = ProtoField.new("Single Side Liquidity Protection Reset Response", "miax.sapphireoptions.expressorders.meo.v1.2.singlesideliquidityprotectionresetresponse", ftypes.STRING, nil, nil, nil, "Response to Single Side Liquidity Protection Reset Request")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.single_side_liquidity_protection_trigger_notification = ProtoField.new("Single Side Liquidity Protection Trigger Notification", "miax.sapphireoptions.expressorders.meo.v1.2.singlesideliquidityprotectiontriggernotification", ftypes.STRING, nil, nil, nil, "This message format will be used to notify firms when a Single Side Liquidity Protection is triggered for an Option or Strategy")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.slap_protection_trigger_notification = ProtoField.new("Slap Protection Trigger Notification", "miax.sapphireoptions.expressorders.meo.v1.2.slapprotectiontriggernotification", ftypes.STRING, nil, nil, nil, "This message format will be used to notify firms when SLAP protection is triggered for an MPID and Underlying")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.stock_leg_execution_notification = ProtoField.new("Stock Leg Execution Notification", "miax.sapphireoptions.expressorders.meo.v1.2.stocklegexecutionnotification", ftypes.STRING, nil, nil, nil, "This message format will be used to notify the firm of a stock leg execution from a stock-tied complex binary order")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.system_state_notification = ProtoField.new("System State Notification", "miax.sapphireoptions.expressorders.meo.v1.2.systemstatenotification", ftypes.STRING, nil, nil, nil, "This message format is used to notify the firms of the state changes of the system. This is an exchange-wide notification and not a symbol or member-based notification")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.underlying_trading_status_notification = ProtoField.new("Underlying Trading Status Notification", "miax.sapphireoptions.expressorders.meo.v1.2.underlyingtradingstatusnotification", ftypes.STRING, nil, nil, nil, "This message format will be used to notify the firms of changes to the trading status of all the options of an underlying")

-- Miax SapphireOptions ExpressOrders 1.2 Session Messages
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.client_heartbeat = ProtoField.new("Client Heartbeat", "miax.sapphireoptions.expressorders.meo.v1.2.clientheartbeat", ftypes.BYTES, nil, nil, nil, "The client should send a Client Heartbeat packet anytime more than 1 second passes where no data has been sent to the server")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.end_of_session = ProtoField.new("End Of Session", "miax.sapphireoptions.expressorders.meo.v1.2.endofsession", ftypes.BYTES, nil, nil, nil, "The server will send an End of Session packet to denote that the current session is finished")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.goodbye_packet = ProtoField.new("Goodbye Packet", "miax.sapphireoptions.expressorders.meo.v1.2.goodbyepacket", ftypes.STRING, nil, nil, nil, "The server may send a GoodBye packet to inform the client a reason for termination of the connection just before it terminates the connection")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.login_request = ProtoField.new("Login Request", "miax.sapphireoptions.expressorders.meo.v1.2.loginrequest", ftypes.STRING, nil, nil, nil, "The SesM client uses this packet to allow the server to authenticate the client and to convey to the server the last sequenced packet that the client received")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.login_response = ProtoField.new("Login Response", "miax.sapphireoptions.expressorders.meo.v1.2.loginresponse", ftypes.STRING, nil, nil, nil, "The SesM server sends a Login response packet in response to a Login request packet from the client")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.logout_request = ProtoField.new("Logout Request", "miax.sapphireoptions.expressorders.meo.v1.2.logoutrequest", ftypes.STRING, nil, nil, nil, "The client may send a Logout request packet to request the connection be terminated")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.retransmission_request = ProtoField.new("Retransmission Request", "miax.sapphireoptions.expressorders.meo.v1.2.retransmissionrequest", ftypes.STRING, nil, nil, nil, "The SesM client uses this packet to request the server to retransmit a range of packets")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.server_heartbeat = ProtoField.new("Server Heartbeat", "miax.sapphireoptions.expressorders.meo.v1.2.serverheartbeat", ftypes.BYTES, nil, nil, nil, "The server should send a Server Heartbeat packet anytime more than 1 second passes where no data has been sent to the client")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.synchronization_complete = ProtoField.new("Synchronization Complete", "miax.sapphireoptions.expressorders.meo.v1.2.synchronizationcomplete", ftypes.BYTES, nil, nil, nil, "The server sends a Synchronization complete packet when it is done replaying all the old packets and is ready to start sending new packets")
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.test_packet = ProtoField.new("Test Packet", "miax.sapphireoptions.expressorders.meo.v1.2.testpacket", ftypes.STRING, nil, nil, nil, "A Test packet can be sent by either side of a SesM connection at anytime; Test packets are intended to provide human readable text that may aid in debugging problems")

-- Miax SapphireOptions ExpressOrders Meo 1.2 Generated Fields
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.legs_index = ProtoField.new("Legs Index", "miax.sapphireoptions.expressorders.meo.v1.2.legsindex", ftypes.UINT16)
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.liquidity_units_index = ProtoField.new("Liquidity Units Index", "miax.sapphireoptions.expressorders.meo.v1.2.liquidityunitsindex", ftypes.UINT16)
omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.order_response_index = ProtoField.new("Order Response Index", "miax.sapphireoptions.expressorders.meo.v1.2.orderresponseindex", ftypes.UINT16)

-- Miax SapphireOptions ExpressOrders Meo 1.2 Expert Info
miax_sapphireoptions_expressorders_meo_v1_2.experts = {}
miax_sapphireoptions_expressorders_meo_v1_2.experts.undecoded = ProtoExpert.new("miax.sapphireoptions.expressorders.meo.v1.2.undecoded", "Fields run past the size the wire gives them", expert.group.MALFORMED, expert.severity.ERROR)
omi_miax_sapphireoptions_expressorders_meo_v1_2.experts = { miax_sapphireoptions_expressorders_meo_v1_2.experts.undecoded }

-----------------------------------------------------------------------
-- Miax SapphireOptions ExpressOrders Meo 1.2 Formatting
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
miax_sapphireoptions_expressorders_meo_v1_2.timestamp_format = 2


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Miax SapphireOptions ExpressOrders Meo 1.2 Element Dissection Options
show.application_messages = true
show.session_messages = true
show.repeating_groups = true
show.structs = true
show.headers = true
show.padding = false
show.indexes = true

-- Register Miax SapphireOptions ExpressOrders Meo 1.2 Show Options
omi_miax_sapphireoptions_expressorders_meo_v1_2.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_miax_sapphireoptions_expressorders_meo_v1_2.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_miax_sapphireoptions_expressorders_meo_v1_2.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_miax_sapphireoptions_expressorders_meo_v1_2.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_miax_sapphireoptions_expressorders_meo_v1_2.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_miax_sapphireoptions_expressorders_meo_v1_2.prefs.show_padding = Pref.bool("Show Padding", show.padding, "Parse and add Padding to protocol tree")
omi_miax_sapphireoptions_expressorders_meo_v1_2.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_miax_sapphireoptions_expressorders_meo_v1_2.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Display format for this protocol's timestamps", timestamp_format_enum, false)

-- Handle changed preferences
function omi_miax_sapphireoptions_expressorders_meo_v1_2.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_miax_sapphireoptions_expressorders_meo_v1_2.prefs.show_application_messages then
    show.application_messages = omi_miax_sapphireoptions_expressorders_meo_v1_2.prefs.show_application_messages
  end
  if show.headers ~= omi_miax_sapphireoptions_expressorders_meo_v1_2.prefs.show_headers then
    show.headers = omi_miax_sapphireoptions_expressorders_meo_v1_2.prefs.show_headers
  end
  if show.padding ~= omi_miax_sapphireoptions_expressorders_meo_v1_2.prefs.show_padding then
    show.padding = omi_miax_sapphireoptions_expressorders_meo_v1_2.prefs.show_padding
  end
  if show.repeating_groups ~= omi_miax_sapphireoptions_expressorders_meo_v1_2.prefs.show_repeating_groups then
    show.repeating_groups = omi_miax_sapphireoptions_expressorders_meo_v1_2.prefs.show_repeating_groups
  end
  if show.session_messages ~= omi_miax_sapphireoptions_expressorders_meo_v1_2.prefs.show_session_messages then
    show.session_messages = omi_miax_sapphireoptions_expressorders_meo_v1_2.prefs.show_session_messages
  end
  if show.structs ~= omi_miax_sapphireoptions_expressorders_meo_v1_2.prefs.show_structs then
    show.structs = omi_miax_sapphireoptions_expressorders_meo_v1_2.prefs.show_structs
  end
  if show.indexes ~= omi_miax_sapphireoptions_expressorders_meo_v1_2.prefs.show_indexes then
    show.indexes = omi_miax_sapphireoptions_expressorders_meo_v1_2.prefs.show_indexes
  end
  if miax_sapphireoptions_expressorders_meo_v1_2.timestamp_format ~= omi_miax_sapphireoptions_expressorders_meo_v1_2.prefs.timestamp_format then
    miax_sapphireoptions_expressorders_meo_v1_2.timestamp_format = omi_miax_sapphireoptions_expressorders_meo_v1_2.prefs.timestamp_format
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
-- Miax SapphireOptions ExpressOrders Meo 1.2 Fields
-----------------------------------------------------------------------

-- Action
miax_sapphireoptions_expressorders_meo_v1_2.action = {}

-- Size: Action
miax_sapphireoptions_expressorders_meo_v1_2.action.size = 1

-- Display: Action
miax_sapphireoptions_expressorders_meo_v1_2.action.labels = {
  ["S"] = "Action: Set (S)",
  ["D"] = "Action: Delete (D)",
  ["A"] = "Action: Assign (A)",
  ["U"] = "Action: Unassign (U)",
}

miax_sapphireoptions_expressorders_meo_v1_2.action.display = function(value)
  return miax_sapphireoptions_expressorders_meo_v1_2.action.labels[value] or "Action: Unknown("..value..")"
end

-- Dissect: Action
miax_sapphireoptions_expressorders_meo_v1_2.action.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.action.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.action, range, value, display)

  return offset + length, value
end

-- Active On Sapphire
miax_sapphireoptions_expressorders_meo_v1_2.active_on_sapphire = {}

-- Size: Active On Sapphire
miax_sapphireoptions_expressorders_meo_v1_2.active_on_sapphire.size = 1

-- Display: Active On Sapphire
miax_sapphireoptions_expressorders_meo_v1_2.active_on_sapphire.labels = {
  ["A"] = "Active On Sapphire: Active Tradable On Sapphire (A)",
  ["I"] = "Active On Sapphire: Inactive Not Tradable On Sapphire (I)",
}

miax_sapphireoptions_expressorders_meo_v1_2.active_on_sapphire.display = function(value)
  return miax_sapphireoptions_expressorders_meo_v1_2.active_on_sapphire.labels[value] or "Active On Sapphire: Unknown("..value..")"
end

-- Dissect: Active On Sapphire
miax_sapphireoptions_expressorders_meo_v1_2.active_on_sapphire.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.active_on_sapphire.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.active_on_sapphire.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.active_on_sapphire, range, value, display)

  return offset + length, value
end

-- Allowable Engagement Percentage
miax_sapphireoptions_expressorders_meo_v1_2.allowable_engagement_percentage = {}

-- Size: Allowable Engagement Percentage
miax_sapphireoptions_expressorders_meo_v1_2.allowable_engagement_percentage.size = 4

-- Display: Allowable Engagement Percentage
miax_sapphireoptions_expressorders_meo_v1_2.allowable_engagement_percentage.display = function(value)
  return "Allowable Engagement Percentage: "..value
end

-- Dissect: Allowable Engagement Percentage
miax_sapphireoptions_expressorders_meo_v1_2.allowable_engagement_percentage.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.allowable_engagement_percentage.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.allowable_engagement_percentage.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.allowable_engagement_percentage, range, value, display)

  return offset + length, value
end

-- Application Protocol
miax_sapphireoptions_expressorders_meo_v1_2.application_protocol = {}

-- Size: Application Protocol
miax_sapphireoptions_expressorders_meo_v1_2.application_protocol.size = 8

-- Display: Application Protocol
miax_sapphireoptions_expressorders_meo_v1_2.application_protocol.display = function(value)
  return "Application Protocol: "..value
end

-- Dissect: Application Protocol
miax_sapphireoptions_expressorders_meo_v1_2.application_protocol.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.application_protocol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_sapphireoptions_expressorders_meo_v1_2.application_protocol.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.application_protocol, range, value, display)

  return offset + length, value
end

-- Arm 2 Counting Period
miax_sapphireoptions_expressorders_meo_v1_2.arm_2_counting_period = {}

-- Size: Arm 2 Counting Period
miax_sapphireoptions_expressorders_meo_v1_2.arm_2_counting_period.size = 4

-- Display: Arm 2 Counting Period
miax_sapphireoptions_expressorders_meo_v1_2.arm_2_counting_period.display = function(value)
  return "Arm 2 Counting Period: "..value
end

-- Dissect: Arm 2 Counting Period
miax_sapphireoptions_expressorders_meo_v1_2.arm_2_counting_period.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.arm_2_counting_period.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.arm_2_counting_period.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.arm_2_counting_period, range, value, display)

  return offset + length, value
end

-- Arm 2 Settings Update Status
miax_sapphireoptions_expressorders_meo_v1_2.arm_2_settings_update_status = {}

-- Size: Arm 2 Settings Update Status
miax_sapphireoptions_expressorders_meo_v1_2.arm_2_settings_update_status.size = 1

-- Display: Arm 2 Settings Update Status
miax_sapphireoptions_expressorders_meo_v1_2.arm_2_settings_update_status.display = function(value)
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
miax_sapphireoptions_expressorders_meo_v1_2.arm_2_settings_update_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.arm_2_settings_update_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.arm_2_settings_update_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.arm_2_settings_update_status, range, value, display)

  return offset + length, value
end

-- Arm Settings Update Status
miax_sapphireoptions_expressorders_meo_v1_2.arm_settings_update_status = {}

-- Size: Arm Settings Update Status
miax_sapphireoptions_expressorders_meo_v1_2.arm_settings_update_status.size = 1

-- Display: Arm Settings Update Status
miax_sapphireoptions_expressorders_meo_v1_2.arm_settings_update_status.display = function(value)
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
miax_sapphireoptions_expressorders_meo_v1_2.arm_settings_update_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.arm_settings_update_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.arm_settings_update_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.arm_settings_update_status, range, value, display)

  return offset + length, value
end

-- Arm Threshold Count
miax_sapphireoptions_expressorders_meo_v1_2.arm_threshold_count = {}

-- Size: Arm Threshold Count
miax_sapphireoptions_expressorders_meo_v1_2.arm_threshold_count.size = 4

-- Display: Arm Threshold Count
miax_sapphireoptions_expressorders_meo_v1_2.arm_threshold_count.display = function(value)
  return "Arm Threshold Count: "..value
end

-- Dissect: Arm Threshold Count
miax_sapphireoptions_expressorders_meo_v1_2.arm_threshold_count.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.arm_threshold_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.arm_threshold_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.arm_threshold_count, range, value, display)

  return offset + length, value
end

-- Assignment Settings Status
miax_sapphireoptions_expressorders_meo_v1_2.assignment_settings_status = {}

-- Size: Assignment Settings Status
miax_sapphireoptions_expressorders_meo_v1_2.assignment_settings_status.size = 1

-- Display: Assignment Settings Status
miax_sapphireoptions_expressorders_meo_v1_2.assignment_settings_status.display = function(value)
  if value == " " then
    return "Assignment Settings Status: Settings Applied Successfully (<whitespace>)"
  end
  if value == "A" then
    return "Assignment Settings Status: Invalid Action (A)"
  end
  if value == "M" then
    return "Assignment Settings Status: Unknown Mpid (M)"
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
miax_sapphireoptions_expressorders_meo_v1_2.assignment_settings_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.assignment_settings_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.assignment_settings_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.assignment_settings_status, range, value, display)

  return offset + length, value
end

-- Bulk Order Index
miax_sapphireoptions_expressorders_meo_v1_2.bulk_order_index = {}

-- Size: Bulk Order Index
miax_sapphireoptions_expressorders_meo_v1_2.bulk_order_index.size = 1

-- Display: Bulk Order Index
miax_sapphireoptions_expressorders_meo_v1_2.bulk_order_index.display = function(value)
  return "Bulk Order Index: "..value
end

-- Dissect: Bulk Order Index
miax_sapphireoptions_expressorders_meo_v1_2.bulk_order_index.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.bulk_order_index.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.bulk_order_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.bulk_order_index, range, value, display)

  return offset + length, value
end

-- Bulk Order Status
miax_sapphireoptions_expressorders_meo_v1_2.bulk_order_status = {}

-- Size: Bulk Order Status
miax_sapphireoptions_expressorders_meo_v1_2.bulk_order_status.size = 1

-- Display: Bulk Order Status
miax_sapphireoptions_expressorders_meo_v1_2.bulk_order_status.display = function(value)
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
miax_sapphireoptions_expressorders_meo_v1_2.bulk_order_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.bulk_order_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.bulk_order_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.bulk_order_status, range, value, display)

  return offset + length, value
end

-- Call Or Put
miax_sapphireoptions_expressorders_meo_v1_2.call_or_put = {}

-- Size: Call Or Put
miax_sapphireoptions_expressorders_meo_v1_2.call_or_put.size = 1

-- Display: Call Or Put
miax_sapphireoptions_expressorders_meo_v1_2.call_or_put.labels = {
  ["C"] = "Call Or Put: Call (C)",
  ["P"] = "Call Or Put: Put (P)",
}

miax_sapphireoptions_expressorders_meo_v1_2.call_or_put.display = function(value)
  return miax_sapphireoptions_expressorders_meo_v1_2.call_or_put.labels[value] or "Call Or Put: Unknown("..value..")"
end

-- Dissect: Call Or Put
miax_sapphireoptions_expressorders_meo_v1_2.call_or_put.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.call_or_put.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.call_or_put.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.call_or_put, range, value, display)

  return offset + length, value
end

-- Cancel Reason
miax_sapphireoptions_expressorders_meo_v1_2.cancel_reason = {}

-- Size: Cancel Reason
miax_sapphireoptions_expressorders_meo_v1_2.cancel_reason.size = 1

-- Display: Cancel Reason
miax_sapphireoptions_expressorders_meo_v1_2.cancel_reason.labels = {
  ["B"] = "Cancel Reason: Sapphire Help Desk Initiated Cancel (B)",
  ["G"] = "Cancel Reason: Auto Replace Order Canceled Due To Reject Of The Replacement Request (G)",
  ["K"] = "Cancel Reason: Complex Strategy Leg Has Wide Mbbo (K)",
  ["A"] = "Cancel Reason: Price Protection Canceled (A)",
  ["C"] = "Cancel Reason: Cancel Of Resting Order Crossed By Opposite Side Order Of Same Mpid Or Firm (C)",
  ["D"] = "Cancel Reason: Luld Canceled (D)",
  ["E"] = "Cancel Reason: Strategy Is Not Open For Trading (E)",
  ["J"] = "Cancel Reason: Standard Order Is Canceled As A Result Of Cancel Replace Request (J)",
  ["S"] = "Cancel Reason: Cancel For Unexecuted Part Of Order (S)",
  ["Q"] = "Cancel Reason: Canceled Due To Single Side Liquidity Protection Trigger (Q)",
  ["I"] = "Cancel Reason: Standard Order Canceled Due To Replace Request While Blocked By Slap Protection (I)",
  ["Z"] = "Cancel Reason: Undefined Reason (Z)",
  ["*"] = "Cancel Reason: Downgraded From Older Version (*)",
}

miax_sapphireoptions_expressorders_meo_v1_2.cancel_reason.display = function(value)
  return miax_sapphireoptions_expressorders_meo_v1_2.cancel_reason.labels[value] or "Cancel Reason: Unknown("..value..")"
end

-- Dissect: Cancel Reason
miax_sapphireoptions_expressorders_meo_v1_2.cancel_reason.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.cancel_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.cancel_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.cancel_reason, range, value, display)

  return offset + length, value
end

-- Client Message Id
miax_sapphireoptions_expressorders_meo_v1_2.client_message_id = {}

-- Size: Client Message Id
miax_sapphireoptions_expressorders_meo_v1_2.client_message_id.size = 4

-- Display: Client Message Id
miax_sapphireoptions_expressorders_meo_v1_2.client_message_id.display = function(value)
  return "Client Message Id: "..value
end

-- Dissect: Client Message Id
miax_sapphireoptions_expressorders_meo_v1_2.client_message_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.client_message_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.client_message_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.client_message_id, range, value, display)

  return offset + length, value
end

-- Client Order Id
miax_sapphireoptions_expressorders_meo_v1_2.client_order_id = {}

-- Size: Client Order Id
miax_sapphireoptions_expressorders_meo_v1_2.client_order_id.size = 4

-- Display: Client Order Id
miax_sapphireoptions_expressorders_meo_v1_2.client_order_id.display = function(value)
  return "Client Order Id: "..value
end

-- Dissect: Client Order Id
miax_sapphireoptions_expressorders_meo_v1_2.client_order_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.client_order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.client_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.client_order_id, range, value, display)

  return offset + length, value
end

-- Client Send Time
miax_sapphireoptions_expressorders_meo_v1_2.client_send_time = {}

-- Size: Client Send Time
miax_sapphireoptions_expressorders_meo_v1_2.client_send_time.size = 8

-- Dissect: Client Send Time
miax_sapphireoptions_expressorders_meo_v1_2.client_send_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.client_send_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.client_send_time
  if miax_sapphireoptions_expressorders_meo_v1_2.timestamp_format == 3 then field = omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.client_send_time_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Closing Time
miax_sapphireoptions_expressorders_meo_v1_2.closing_time = {}

-- Size: Closing Time
miax_sapphireoptions_expressorders_meo_v1_2.closing_time.size = 8

-- Display: Closing Time
miax_sapphireoptions_expressorders_meo_v1_2.closing_time.display = function(value)
  return "Closing Time: "..value
end

-- Dissect: Closing Time
miax_sapphireoptions_expressorders_meo_v1_2.closing_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.closing_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_sapphireoptions_expressorders_meo_v1_2.closing_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.closing_time, range, value, display)

  return offset + length, value
end

-- Computer Id
miax_sapphireoptions_expressorders_meo_v1_2.computer_id = {}

-- Size: Computer Id
miax_sapphireoptions_expressorders_meo_v1_2.computer_id.size = 8

-- Display: Computer Id
miax_sapphireoptions_expressorders_meo_v1_2.computer_id.display = function(value)
  return "Computer Id: "..value
end

-- Dissect: Computer Id
miax_sapphireoptions_expressorders_meo_v1_2.computer_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.computer_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_sapphireoptions_expressorders_meo_v1_2.computer_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.computer_id, range, value, display)

  return offset + length, value
end

-- Counting Period
miax_sapphireoptions_expressorders_meo_v1_2.counting_period = {}

-- Size: Counting Period
miax_sapphireoptions_expressorders_meo_v1_2.counting_period.size = 2

-- Display: Counting Period
miax_sapphireoptions_expressorders_meo_v1_2.counting_period.display = function(value)
  return "Counting Period: "..value
end

-- Dissect: Counting Period
miax_sapphireoptions_expressorders_meo_v1_2.counting_period.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.counting_period.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.counting_period.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.counting_period, range, value, display)

  return offset + length, value
end

-- End Sequence Number
miax_sapphireoptions_expressorders_meo_v1_2.end_sequence_number = {}

-- Size: End Sequence Number
miax_sapphireoptions_expressorders_meo_v1_2.end_sequence_number.size = 8

-- Display: End Sequence Number
miax_sapphireoptions_expressorders_meo_v1_2.end_sequence_number.display = function(value)
  return "End Sequence Number: "..value
end

-- Dissect: End Sequence Number
miax_sapphireoptions_expressorders_meo_v1_2.end_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.end_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.end_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.end_sequence_number, range, value, display)

  return offset + length, value
end

-- Engine Sequence Number
miax_sapphireoptions_expressorders_meo_v1_2.engine_sequence_number = {}

-- Size: Engine Sequence Number
miax_sapphireoptions_expressorders_meo_v1_2.engine_sequence_number.size = 8

-- Display: Engine Sequence Number
miax_sapphireoptions_expressorders_meo_v1_2.engine_sequence_number.display = function(value)
  return "Engine Sequence Number: "..value
end

-- Dissect: Engine Sequence Number
miax_sapphireoptions_expressorders_meo_v1_2.engine_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.engine_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.engine_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.engine_sequence_number, range, value, display)

  return offset + length, value
end

-- Engine Transaction Time
miax_sapphireoptions_expressorders_meo_v1_2.engine_transaction_time = {}

-- Size: Engine Transaction Time
miax_sapphireoptions_expressorders_meo_v1_2.engine_transaction_time.size = 8

-- Display: Engine Transaction Time
miax_sapphireoptions_expressorders_meo_v1_2.engine_transaction_time.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if miax_sapphireoptions_expressorders_meo_v1_2.timestamp_format == 0 then
    return "Engine Transaction Time: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (the day the frame that carried it settled on)
  if miax_sapphireoptions_expressorders_meo_v1_2.timestamp_format >= 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()

    -- A frame a file handler read states no instant and reads as the epoch
    if capture_time >= 86400 then
      -- The venue's midnight: the frame's instant less the time of day it states
      local settled = math.floor((capture_time - seconds) / 900 + 0.5) * 900

      -- The zone's own date and clock, in the zone it keeps
      if miax_sapphireoptions_expressorders_meo_v1_2.timestamp_format == 4 then
        local day = math.floor(settled / 86400 + 0.5) * 86400

        return "Engine Transaction Time: "..os.date("!%Y-%m-%d %H:%M:%S.", day + seconds)..string.format("%09d", nanoseconds).." America/New York"
      end

      local format = miax_sapphireoptions_expressorders_meo_v1_2.timestamp_format == 3 and "!%Y-%m-%d %H:%M:%S." or "%Y-%m-%d %H:%M:%S."
      return "Engine Transaction Time: "..os.date(format, settled + seconds)..string.format("%09d", nanoseconds)
    end
  end

  -- Time of day mode
  return "Engine Transaction Time: "..os.date("!%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Engine Transaction Time
miax_sapphireoptions_expressorders_meo_v1_2.engine_transaction_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.engine_transaction_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.engine_transaction_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.engine_transaction_time, range, value, display)

  return offset + length, value
end

-- Event Reason
miax_sapphireoptions_expressorders_meo_v1_2.event_reason = {}

-- Size: Event Reason
miax_sapphireoptions_expressorders_meo_v1_2.event_reason.size = 1

-- Display: Event Reason
miax_sapphireoptions_expressorders_meo_v1_2.event_reason.labels = {
  ["A"] = "Event Reason: This Event Resulted From Automaticmarket Driven Event (A)",
  ["M"] = "Event Reason: Sapphire Manually Initiated This Event (M)",
}

miax_sapphireoptions_expressorders_meo_v1_2.event_reason.display = function(value)
  return miax_sapphireoptions_expressorders_meo_v1_2.event_reason.labels[value] or "Event Reason: Unknown("..value..")"
end

-- Dissect: Event Reason
miax_sapphireoptions_expressorders_meo_v1_2.event_reason.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.event_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.event_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.event_reason, range, value, display)

  return offset + length, value
end

-- Execution Id
miax_sapphireoptions_expressorders_meo_v1_2.execution_id = {}

-- Size: Execution Id
miax_sapphireoptions_expressorders_meo_v1_2.execution_id.size = 8

-- Display: Execution Id
miax_sapphireoptions_expressorders_meo_v1_2.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
miax_sapphireoptions_expressorders_meo_v1_2.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Expected Event Time
miax_sapphireoptions_expressorders_meo_v1_2.expected_event_time = {}

-- Size: Expected Event Time
miax_sapphireoptions_expressorders_meo_v1_2.expected_event_time.size = 8

-- Display: Expected Event Time
miax_sapphireoptions_expressorders_meo_v1_2.expected_event_time.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if miax_sapphireoptions_expressorders_meo_v1_2.timestamp_format == 0 then
    return "Expected Event Time: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (the day the frame that carried it settled on)
  if miax_sapphireoptions_expressorders_meo_v1_2.timestamp_format >= 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()

    -- A frame a file handler read states no instant and reads as the epoch
    if capture_time >= 86400 then
      -- The venue's midnight: the frame's instant less the time of day it states
      local settled = math.floor((capture_time - seconds) / 900 + 0.5) * 900

      -- The zone's own date and clock, in the zone it keeps
      if miax_sapphireoptions_expressorders_meo_v1_2.timestamp_format == 4 then
        local day = math.floor(settled / 86400 + 0.5) * 86400

        return "Expected Event Time: "..os.date("!%Y-%m-%d %H:%M:%S.", day + seconds)..string.format("%09d", nanoseconds).." America/New York"
      end

      local format = miax_sapphireoptions_expressorders_meo_v1_2.timestamp_format == 3 and "!%Y-%m-%d %H:%M:%S." or "%Y-%m-%d %H:%M:%S."
      return "Expected Event Time: "..os.date(format, settled + seconds)..string.format("%09d", nanoseconds)
    end
  end

  -- Time of day mode
  return "Expected Event Time: "..os.date("!%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Expected Event Time
miax_sapphireoptions_expressorders_meo_v1_2.expected_event_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.expected_event_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.expected_event_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.expected_event_time, range, value, display)

  return offset + length, value
end

-- Expiration Date
miax_sapphireoptions_expressorders_meo_v1_2.expiration_date = {}

-- Size: Expiration Date
miax_sapphireoptions_expressorders_meo_v1_2.expiration_date.size = 8

-- Display: Expiration Date
miax_sapphireoptions_expressorders_meo_v1_2.expiration_date.display = function(value)
  return "Expiration Date: "..value
end

-- Dissect: Expiration Date
miax_sapphireoptions_expressorders_meo_v1_2.expiration_date.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.expiration_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_sapphireoptions_expressorders_meo_v1_2.expiration_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.expiration_date, range, value, display)

  return offset + length, value
end

-- Goodbye Reason
miax_sapphireoptions_expressorders_meo_v1_2.goodbye_reason = {}

-- Size: Goodbye Reason
miax_sapphireoptions_expressorders_meo_v1_2.goodbye_reason.size = 1

-- Display: Goodbye Reason
miax_sapphireoptions_expressorders_meo_v1_2.goodbye_reason.labels = {
  ["B"] = "Goodbye Reason: Bad Sesm Packet (B)",
  ["L"] = "Goodbye Reason: Timed Out Waiting For Login Packet (L)",
  ["A"] = "Goodbye Reason: Application Terminating Connection (A)",
}

miax_sapphireoptions_expressorders_meo_v1_2.goodbye_reason.display = function(value)
  return miax_sapphireoptions_expressorders_meo_v1_2.goodbye_reason.labels[value] or "Goodbye Reason: Unknown("..value..")"
end

-- Dissect: Goodbye Reason
miax_sapphireoptions_expressorders_meo_v1_2.goodbye_reason.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.goodbye_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.goodbye_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.goodbye_reason, range, value, display)

  return offset + length, value
end

-- Highest Sequence Number
miax_sapphireoptions_expressorders_meo_v1_2.highest_sequence_number = {}

-- Size: Highest Sequence Number
miax_sapphireoptions_expressorders_meo_v1_2.highest_sequence_number.size = 8

-- Display: Highest Sequence Number
miax_sapphireoptions_expressorders_meo_v1_2.highest_sequence_number.display = function(value)
  return "Highest Sequence Number: "..value
end

-- Dissect: Highest Sequence Number
miax_sapphireoptions_expressorders_meo_v1_2.highest_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.highest_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.highest_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.highest_sequence_number, range, value, display)

  return offset + length, value
end

-- Invalid Order Count
miax_sapphireoptions_expressorders_meo_v1_2.invalid_order_count = {}

-- Size: Invalid Order Count
miax_sapphireoptions_expressorders_meo_v1_2.invalid_order_count.size = 1

-- Display: Invalid Order Count
miax_sapphireoptions_expressorders_meo_v1_2.invalid_order_count.display = function(value)
  return "Invalid Order Count: "..value
end

-- Dissect: Invalid Order Count
miax_sapphireoptions_expressorders_meo_v1_2.invalid_order_count.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.invalid_order_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.invalid_order_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.invalid_order_count, range, value, display)

  return offset + length, value
end

-- Last Price
miax_sapphireoptions_expressorders_meo_v1_2.last_price = {}

-- Size: Last Price
miax_sapphireoptions_expressorders_meo_v1_2.last_price.size = 4

-- Display: Last Price
miax_sapphireoptions_expressorders_meo_v1_2.last_price.display = function(value)
  return "Last Price: "..value
end

-- Translate: Last Price
miax_sapphireoptions_expressorders_meo_v1_2.last_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Last Price
miax_sapphireoptions_expressorders_meo_v1_2.last_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.last_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_sapphireoptions_expressorders_meo_v1_2.last_price.translate(raw)
  local display = miax_sapphireoptions_expressorders_meo_v1_2.last_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.last_price, range, value, display)

  return offset + length, value
end

-- Last Size
miax_sapphireoptions_expressorders_meo_v1_2.last_size = {}

-- Size: Last Size
miax_sapphireoptions_expressorders_meo_v1_2.last_size.size = 4

-- Display: Last Size
miax_sapphireoptions_expressorders_meo_v1_2.last_size.display = function(value)
  return "Last Size: "..value
end

-- Dissect: Last Size
miax_sapphireoptions_expressorders_meo_v1_2.last_size.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.last_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.last_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.last_size, range, value, display)

  return offset + length, value
end

-- Leg Ratio Qty
miax_sapphireoptions_expressorders_meo_v1_2.leg_ratio_qty = {}

-- Size: Leg Ratio Qty
miax_sapphireoptions_expressorders_meo_v1_2.leg_ratio_qty.size = 4

-- Display: Leg Ratio Qty
miax_sapphireoptions_expressorders_meo_v1_2.leg_ratio_qty.display = function(value)
  return "Leg Ratio Qty: "..value
end

-- Dissect: Leg Ratio Qty
miax_sapphireoptions_expressorders_meo_v1_2.leg_ratio_qty.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.leg_ratio_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.leg_ratio_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.leg_ratio_qty, range, value, display)

  return offset + length, value
end

-- Leg Side
miax_sapphireoptions_expressorders_meo_v1_2.leg_side = {}

-- Size: Leg Side
miax_sapphireoptions_expressorders_meo_v1_2.leg_side.size = 1

-- Display: Leg Side
miax_sapphireoptions_expressorders_meo_v1_2.leg_side.labels = {
  ["B"] = "Leg Side: Bid (B)",
  ["A"] = "Leg Side: Ask (A)",
}

miax_sapphireoptions_expressorders_meo_v1_2.leg_side.display = function(value)
  return miax_sapphireoptions_expressorders_meo_v1_2.leg_side.labels[value] or "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
miax_sapphireoptions_expressorders_meo_v1_2.leg_side.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.leg_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.leg_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Liquidity Indicator
miax_sapphireoptions_expressorders_meo_v1_2.liquidity_indicator = {}

-- Size: Liquidity Indicator
miax_sapphireoptions_expressorders_meo_v1_2.liquidity_indicator.size = 1

-- Display: Liquidity Indicator
miax_sapphireoptions_expressorders_meo_v1_2.liquidity_indicator.display = function(value)
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
miax_sapphireoptions_expressorders_meo_v1_2.liquidity_indicator.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.liquidity_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.liquidity_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Liquidity Type
miax_sapphireoptions_expressorders_meo_v1_2.liquidity_type = {}

-- Size: Liquidity Type
miax_sapphireoptions_expressorders_meo_v1_2.liquidity_type.size = 1

-- Display: Liquidity Type
miax_sapphireoptions_expressorders_meo_v1_2.liquidity_type.labels = {
  ["O"] = "Liquidity Type: Simple Binary Order (O)",
  ["X"] = "Liquidity Type: Complex Binary Order (X)",
}

miax_sapphireoptions_expressorders_meo_v1_2.liquidity_type.display = function(value)
  return miax_sapphireoptions_expressorders_meo_v1_2.liquidity_type.labels[value] or "Liquidity Type: Unknown("..value..")"
end

-- Dissect: Liquidity Type
miax_sapphireoptions_expressorders_meo_v1_2.liquidity_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.liquidity_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.liquidity_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.liquidity_type, range, value, display)

  return offset + length, value
end

-- Liquidity Unit
miax_sapphireoptions_expressorders_meo_v1_2.liquidity_unit = {}

-- Size: Liquidity Unit
miax_sapphireoptions_expressorders_meo_v1_2.liquidity_unit.size = 40

-- Display: Liquidity Unit
miax_sapphireoptions_expressorders_meo_v1_2.liquidity_unit.display = function(value)
  return "Liquidity Unit: "..value
end

-- Dissect: Liquidity Unit
miax_sapphireoptions_expressorders_meo_v1_2.liquidity_unit.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.liquidity_unit.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_sapphireoptions_expressorders_meo_v1_2.liquidity_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.liquidity_unit, range, range:raw(), display)

  return offset + length, value
end

-- Liquidity Unit Count
miax_sapphireoptions_expressorders_meo_v1_2.liquidity_unit_count = {}

-- Size: Liquidity Unit Count
miax_sapphireoptions_expressorders_meo_v1_2.liquidity_unit_count.size = 1

-- Display: Liquidity Unit Count
miax_sapphireoptions_expressorders_meo_v1_2.liquidity_unit_count.display = function(value)
  return "Liquidity Unit Count: "..value
end

-- Dissect: Liquidity Unit Count
miax_sapphireoptions_expressorders_meo_v1_2.liquidity_unit_count.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.liquidity_unit_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.liquidity_unit_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.liquidity_unit_count, range, value, display)

  return offset + length, value
end

-- Login Status
miax_sapphireoptions_expressorders_meo_v1_2.login_status = {}

-- Size: Login Status
miax_sapphireoptions_expressorders_meo_v1_2.login_status.size = 1

-- Display: Login Status
miax_sapphireoptions_expressorders_meo_v1_2.login_status.display = function(value)
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
miax_sapphireoptions_expressorders_meo_v1_2.login_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.login_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.login_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.login_status, range, value, display)

  return offset + length, value
end

-- Logout Reason
miax_sapphireoptions_expressorders_meo_v1_2.logout_reason = {}

-- Size: Logout Reason
miax_sapphireoptions_expressorders_meo_v1_2.logout_reason.size = 1

-- Display: Logout Reason
miax_sapphireoptions_expressorders_meo_v1_2.logout_reason.display = function(value)
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
miax_sapphireoptions_expressorders_meo_v1_2.logout_reason.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.logout_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.logout_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.logout_reason, range, value, display)

  return offset + length, value
end

-- Logout Text
miax_sapphireoptions_expressorders_meo_v1_2.logout_text = {}

-- Display: Logout Text
miax_sapphireoptions_expressorders_meo_v1_2.logout_text.display = function(value)
  return "Logout Text: "..value
end

-- Dissect runtime sized field: Logout Text
miax_sapphireoptions_expressorders_meo_v1_2.logout_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.logout_text.display(value, packet, parent, size)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.logout_text, range, value, display)

  return offset + size, value
end

-- Long Term Option
miax_sapphireoptions_expressorders_meo_v1_2.long_term_option = {}

-- Size: Long Term Option
miax_sapphireoptions_expressorders_meo_v1_2.long_term_option.size = 1

-- Display: Long Term Option
miax_sapphireoptions_expressorders_meo_v1_2.long_term_option.labels = {
  ["Y"] = "Long Term Option: Far Month Expiration As Defined By Sapphire Rules (Y)",
  ["N"] = "Long Term Option: Near Month Expiration As Defined By Sapphire Rules (N)",
}

miax_sapphireoptions_expressorders_meo_v1_2.long_term_option.display = function(value)
  return miax_sapphireoptions_expressorders_meo_v1_2.long_term_option.labels[value] or "Long Term Option: Unknown("..value..")"
end

-- Dissect: Long Term Option
miax_sapphireoptions_expressorders_meo_v1_2.long_term_option.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.long_term_option.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.long_term_option.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.long_term_option, range, value, display)

  return offset + length, value
end

-- Mass Cancel Scope
miax_sapphireoptions_expressorders_meo_v1_2.mass_cancel_scope = {}

-- Size: Mass Cancel Scope
miax_sapphireoptions_expressorders_meo_v1_2.mass_cancel_scope.size = 1

-- Display: Mass Cancel Scope
miax_sapphireoptions_expressorders_meo_v1_2.mass_cancel_scope.labels = {
  ["A"] = "Mass Cancel Scope: Standard Mass Cancel (A)",
  ["D"] = "Mass Cancel Scope: Hybrid Mass Cancel (D)",
  ["S"] = "Mass Cancel Scope: Selective Liquidity Auto Purge Slap (S)",
}

miax_sapphireoptions_expressorders_meo_v1_2.mass_cancel_scope.display = function(value)
  return miax_sapphireoptions_expressorders_meo_v1_2.mass_cancel_scope.labels[value] or "Mass Cancel Scope: Unknown("..value..")"
end

-- Dissect: Mass Cancel Scope
miax_sapphireoptions_expressorders_meo_v1_2.mass_cancel_scope.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.mass_cancel_scope.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.mass_cancel_scope.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.mass_cancel_scope, range, value, display)

  return offset + length, value
end

-- Meo Version
miax_sapphireoptions_expressorders_meo_v1_2.meo_version = {}

-- Size: Meo Version
miax_sapphireoptions_expressorders_meo_v1_2.meo_version.size = 8

-- Display: Meo Version
miax_sapphireoptions_expressorders_meo_v1_2.meo_version.display = function(value)
  return "Meo Version: "..value
end

-- Dissect: Meo Version
miax_sapphireoptions_expressorders_meo_v1_2.meo_version.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.meo_version.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_sapphireoptions_expressorders_meo_v1_2.meo_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.meo_version, range, value, display)

  return offset + length, value
end

-- Mpid
miax_sapphireoptions_expressorders_meo_v1_2.mpid = {}

-- Size: Mpid
miax_sapphireoptions_expressorders_meo_v1_2.mpid.size = 4

-- Display: Mpid
miax_sapphireoptions_expressorders_meo_v1_2.mpid.display = function(value)
  return "Mpid: "..value
end

-- Dissect: Mpid
miax_sapphireoptions_expressorders_meo_v1_2.mpid.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.mpid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_sapphireoptions_expressorders_meo_v1_2.mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.mpid, range, value, display)

  return offset + length, value
end

-- Net Price
miax_sapphireoptions_expressorders_meo_v1_2.net_price = {}

-- Size: Net Price
miax_sapphireoptions_expressorders_meo_v1_2.net_price.size = 8

-- Display: Net Price
miax_sapphireoptions_expressorders_meo_v1_2.net_price.display = function(value)
  return "Net Price: "..value
end

-- Translate: Net Price
miax_sapphireoptions_expressorders_meo_v1_2.net_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Net Price
miax_sapphireoptions_expressorders_meo_v1_2.net_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.net_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = miax_sapphireoptions_expressorders_meo_v1_2.net_price.translate(raw)
  local display = miax_sapphireoptions_expressorders_meo_v1_2.net_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.net_price, range, value, display)

  return offset + length, value
end

-- Notification Time
miax_sapphireoptions_expressorders_meo_v1_2.notification_time = {}

-- Size: Notification Time
miax_sapphireoptions_expressorders_meo_v1_2.notification_time.size = 8

-- Display: Notification Time
miax_sapphireoptions_expressorders_meo_v1_2.notification_time.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if miax_sapphireoptions_expressorders_meo_v1_2.timestamp_format == 0 then
    return "Notification Time: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (the day the frame that carried it settled on)
  if miax_sapphireoptions_expressorders_meo_v1_2.timestamp_format >= 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()

    -- A frame a file handler read states no instant and reads as the epoch
    if capture_time >= 86400 then
      -- The venue's midnight: the frame's instant less the time of day it states
      local settled = math.floor((capture_time - seconds) / 900 + 0.5) * 900

      -- The zone's own date and clock, in the zone it keeps
      if miax_sapphireoptions_expressorders_meo_v1_2.timestamp_format == 4 then
        local day = math.floor(settled / 86400 + 0.5) * 86400

        return "Notification Time: "..os.date("!%Y-%m-%d %H:%M:%S.", day + seconds)..string.format("%09d", nanoseconds).." America/New York"
      end

      local format = miax_sapphireoptions_expressorders_meo_v1_2.timestamp_format == 3 and "!%Y-%m-%d %H:%M:%S." or "%Y-%m-%d %H:%M:%S."
      return "Notification Time: "..os.date(format, settled + seconds)..string.format("%09d", nanoseconds)
    end
  end

  -- Time of day mode
  return "Notification Time: "..os.date("!%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Notification Time
miax_sapphireoptions_expressorders_meo_v1_2.notification_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.notification_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.notification_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.notification_time, range, value, display)

  return offset + length, value
end

-- Notification Type
miax_sapphireoptions_expressorders_meo_v1_2.notification_type = {}

-- Size: Notification Type
miax_sapphireoptions_expressorders_meo_v1_2.notification_type.size = 1

-- Display: Notification Type
miax_sapphireoptions_expressorders_meo_v1_2.notification_type.labels = {
  ["T"] = "Notification Type: Triggered (T)",
  ["R"] = "Notification Type: Reset (R)",
  ["*"] = "Notification Type: Downgraded From Older Version (*)",
}

miax_sapphireoptions_expressorders_meo_v1_2.notification_type.display = function(value)
  return miax_sapphireoptions_expressorders_meo_v1_2.notification_type.labels[value] or "Notification Type: Unknown("..value..")"
end

-- Dissect: Notification Type
miax_sapphireoptions_expressorders_meo_v1_2.notification_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.notification_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.notification_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.notification_type, range, value, display)

  return offset + length, value
end

-- Number Of Legs
miax_sapphireoptions_expressorders_meo_v1_2.number_of_legs = {}

-- Size: Number Of Legs
miax_sapphireoptions_expressorders_meo_v1_2.number_of_legs.size = 1

-- Display: Number Of Legs
miax_sapphireoptions_expressorders_meo_v1_2.number_of_legs.display = function(value)
  return "Number Of Legs: "..value
end

-- Dissect: Number Of Legs
miax_sapphireoptions_expressorders_meo_v1_2.number_of_legs.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.number_of_legs.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.number_of_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.number_of_legs, range, value, display)

  return offset + length, value
end

-- Open Size
miax_sapphireoptions_expressorders_meo_v1_2.open_size = {}

-- Size: Open Size
miax_sapphireoptions_expressorders_meo_v1_2.open_size.size = 4

-- Display: Open Size
miax_sapphireoptions_expressorders_meo_v1_2.open_size.display = function(value)
  return "Open Size: "..value
end

-- Dissect: Open Size
miax_sapphireoptions_expressorders_meo_v1_2.open_size.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.open_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.open_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.open_size, range, value, display)

  return offset + length, value
end

-- Opening Time
miax_sapphireoptions_expressorders_meo_v1_2.opening_time = {}

-- Size: Opening Time
miax_sapphireoptions_expressorders_meo_v1_2.opening_time.size = 8

-- Display: Opening Time
miax_sapphireoptions_expressorders_meo_v1_2.opening_time.display = function(value)
  return "Opening Time: "..value
end

-- Dissect: Opening Time
miax_sapphireoptions_expressorders_meo_v1_2.opening_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.opening_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_sapphireoptions_expressorders_meo_v1_2.opening_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.opening_time, range, value, display)

  return offset + length, value
end

-- Opening Underlying Market Code
miax_sapphireoptions_expressorders_meo_v1_2.opening_underlying_market_code = {}

-- Size: Opening Underlying Market Code
miax_sapphireoptions_expressorders_meo_v1_2.opening_underlying_market_code.size = 1

-- Display: Opening Underlying Market Code
miax_sapphireoptions_expressorders_meo_v1_2.opening_underlying_market_code.labels = {
  ["A"] = "Opening Underlying Market Code: Nyse Amex (A)",
  ["B"] = "Opening Underlying Market Code: Nasdaq Omx Bx (B)",
  ["C"] = "Opening Underlying Market Code: National Stock Exchange (C)",
  ["D"] = "Opening Underlying Market Code: Finra Adf (D)",
  ["E"] = "Opening Underlying Market Code: Market Independent (E)",
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

miax_sapphireoptions_expressorders_meo_v1_2.opening_underlying_market_code.display = function(value)
  return miax_sapphireoptions_expressorders_meo_v1_2.opening_underlying_market_code.labels[value] or "Opening Underlying Market Code: Unknown("..value..")"
end

-- Dissect: Opening Underlying Market Code
miax_sapphireoptions_expressorders_meo_v1_2.opening_underlying_market_code.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.opening_underlying_market_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.opening_underlying_market_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.opening_underlying_market_code, range, value, display)

  return offset + length, value
end

-- Order Acceptance Increment Indicator
miax_sapphireoptions_expressorders_meo_v1_2.order_acceptance_increment_indicator = {}

-- Size: Order Acceptance Increment Indicator
miax_sapphireoptions_expressorders_meo_v1_2.order_acceptance_increment_indicator.size = 1

-- Display: Order Acceptance Increment Indicator
miax_sapphireoptions_expressorders_meo_v1_2.order_acceptance_increment_indicator.labels = {
  ["P"] = "Order Acceptance Increment Indicator: Penny Penny (P)",
  ["N"] = "Order Acceptance Increment Indicator: Penny Nickel (N)",
  ["D"] = "Order Acceptance Increment Indicator: Nickel Dime (D)",
}

miax_sapphireoptions_expressorders_meo_v1_2.order_acceptance_increment_indicator.display = function(value)
  return miax_sapphireoptions_expressorders_meo_v1_2.order_acceptance_increment_indicator.labels[value] or "Order Acceptance Increment Indicator: Unknown("..value..")"
end

-- Dissect: Order Acceptance Increment Indicator
miax_sapphireoptions_expressorders_meo_v1_2.order_acceptance_increment_indicator.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.order_acceptance_increment_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.order_acceptance_increment_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.order_acceptance_increment_indicator, range, value, display)

  return offset + length, value
end

-- Order Ack Time
miax_sapphireoptions_expressorders_meo_v1_2.order_ack_time = {}

-- Size: Order Ack Time
miax_sapphireoptions_expressorders_meo_v1_2.order_ack_time.size = 8

-- Display: Order Ack Time
miax_sapphireoptions_expressorders_meo_v1_2.order_ack_time.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if miax_sapphireoptions_expressorders_meo_v1_2.timestamp_format == 0 then
    return "Order Ack Time: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (the day the frame that carried it settled on)
  if miax_sapphireoptions_expressorders_meo_v1_2.timestamp_format >= 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()

    -- A frame a file handler read states no instant and reads as the epoch
    if capture_time >= 86400 then
      -- The venue's midnight: the frame's instant less the time of day it states
      local settled = math.floor((capture_time - seconds) / 900 + 0.5) * 900

      -- The zone's own date and clock, in the zone it keeps
      if miax_sapphireoptions_expressorders_meo_v1_2.timestamp_format == 4 then
        local day = math.floor(settled / 86400 + 0.5) * 86400

        return "Order Ack Time: "..os.date("!%Y-%m-%d %H:%M:%S.", day + seconds)..string.format("%09d", nanoseconds).." America/New York"
      end

      local format = miax_sapphireoptions_expressorders_meo_v1_2.timestamp_format == 3 and "!%Y-%m-%d %H:%M:%S." or "%Y-%m-%d %H:%M:%S."
      return "Order Ack Time: "..os.date(format, settled + seconds)..string.format("%09d", nanoseconds)
    end
  end

  -- Time of day mode
  return "Order Ack Time: "..os.date("!%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Order Ack Time
miax_sapphireoptions_expressorders_meo_v1_2.order_ack_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.order_ack_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.order_ack_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.order_ack_time, range, value, display)

  return offset + length, value
end

-- Order Count
miax_sapphireoptions_expressorders_meo_v1_2.order_count = {}

-- Size: Order Count
miax_sapphireoptions_expressorders_meo_v1_2.order_count.size = 1

-- Display: Order Count
miax_sapphireoptions_expressorders_meo_v1_2.order_count.display = function(value)
  return "Order Count: "..value
end

-- Dissect: Order Count
miax_sapphireoptions_expressorders_meo_v1_2.order_count.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.order_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.order_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.order_count, range, value, display)

  return offset + length, value
end

-- Order Id
miax_sapphireoptions_expressorders_meo_v1_2.order_id = {}

-- Size: Order Id
miax_sapphireoptions_expressorders_meo_v1_2.order_id.size = 8

-- Display: Order Id
miax_sapphireoptions_expressorders_meo_v1_2.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
miax_sapphireoptions_expressorders_meo_v1_2.order_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Status
miax_sapphireoptions_expressorders_meo_v1_2.order_status = {}

-- Size: Order Status
miax_sapphireoptions_expressorders_meo_v1_2.order_status.size = 1

-- Display: Order Status
miax_sapphireoptions_expressorders_meo_v1_2.order_status.display = function(value)
  if value == " " then
    return "Order Status: Successfully Accepted (<whitespace>)"
  end
  if value == "C" then
    return "Order Status: Sapphire Closed For Trading Of This Product (C)"
  end
  if value == "F" then
    return "Order Status: Buy Sell Limit Too Aggressive (F)"
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
    return "Order Status: Invalid Price (P)"
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
  if value == "2" then
    return "Order Status: Invalid Tif (2)"
  end
  if value == "4" then
    return "Order Status: Non Tradable Option (4)"
  end
  if value == "5" then
    return "Order Status: Incompatible Order Type (5)"
  end
  if value == "7" then
    return "Order Status: Invalid Order Instruction (7)"
  end
  if value == "0" then
    return "Order Status: Invalid Mvp Ticks (0)"
  end
  if value == "b" then
    return "Order Status: Blocked By Occ Kill Switch (b)"
  end
  if value == "e" then
    return "Order Status: Duplicate Client Order Id (e)"
  end
  if value == "g" then
    return "Order Status: Invalid Liquidity Unit Type (g)"
  end
  if value == "s" then
    return "Order Status: Rejected Due To Single Side Liquidity Protection In Effect (s)"
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
miax_sapphireoptions_expressorders_meo_v1_2.order_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.order_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.order_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.order_status, range, value, display)

  return offset + length, value
end

-- Product Add Update Time
miax_sapphireoptions_expressorders_meo_v1_2.product_add_update_time = {}

-- Size: Product Add Update Time
miax_sapphireoptions_expressorders_meo_v1_2.product_add_update_time.size = 8

-- Display: Product Add Update Time
miax_sapphireoptions_expressorders_meo_v1_2.product_add_update_time.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if miax_sapphireoptions_expressorders_meo_v1_2.timestamp_format == 0 then
    return "Product Add Update Time: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (the day the frame that carried it settled on)
  if miax_sapphireoptions_expressorders_meo_v1_2.timestamp_format >= 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()

    -- A frame a file handler read states no instant and reads as the epoch
    if capture_time >= 86400 then
      -- The venue's midnight: the frame's instant less the time of day it states
      local settled = math.floor((capture_time - seconds) / 900 + 0.5) * 900

      -- The zone's own date and clock, in the zone it keeps
      if miax_sapphireoptions_expressorders_meo_v1_2.timestamp_format == 4 then
        local day = math.floor(settled / 86400 + 0.5) * 86400

        return "Product Add Update Time: "..os.date("!%Y-%m-%d %H:%M:%S.", day + seconds)..string.format("%09d", nanoseconds).." America/New York"
      end

      local format = miax_sapphireoptions_expressorders_meo_v1_2.timestamp_format == 3 and "!%Y-%m-%d %H:%M:%S." or "%Y-%m-%d %H:%M:%S."
      return "Product Add Update Time: "..os.date(format, settled + seconds)..string.format("%09d", nanoseconds)
    end
  end

  -- Time of day mode
  return "Product Add Update Time: "..os.date("!%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Product Add Update Time
miax_sapphireoptions_expressorders_meo_v1_2.product_add_update_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.product_add_update_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.product_add_update_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.product_add_update_time, range, value, display)

  return offset + length, value
end

-- Product Id
miax_sapphireoptions_expressorders_meo_v1_2.product_id = {}

-- Size: Product Id
miax_sapphireoptions_expressorders_meo_v1_2.product_id.size = 4

-- Display: Product Id
miax_sapphireoptions_expressorders_meo_v1_2.product_id.display = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
miax_sapphireoptions_expressorders_meo_v1_2.product_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.product_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.product_id, range, value, display)

  return offset + length, value
end

-- Relief Multiplier
miax_sapphireoptions_expressorders_meo_v1_2.relief_multiplier = {}

-- Size: Relief Multiplier
miax_sapphireoptions_expressorders_meo_v1_2.relief_multiplier.size = 4

-- Display: Relief Multiplier
miax_sapphireoptions_expressorders_meo_v1_2.relief_multiplier.display = function(value)
  return "Relief Multiplier: "..value
end

-- Translate: Relief Multiplier
miax_sapphireoptions_expressorders_meo_v1_2.relief_multiplier.translate = function(raw)
  return raw/10000
end

-- Dissect: Relief Multiplier
miax_sapphireoptions_expressorders_meo_v1_2.relief_multiplier.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.relief_multiplier.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_sapphireoptions_expressorders_meo_v1_2.relief_multiplier.translate(raw)
  local display = miax_sapphireoptions_expressorders_meo_v1_2.relief_multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.relief_multiplier, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
miax_sapphireoptions_expressorders_meo_v1_2.requested_sequence_number = {}

-- Size: Requested Sequence Number
miax_sapphireoptions_expressorders_meo_v1_2.requested_sequence_number.size = 8

-- Display: Requested Sequence Number
miax_sapphireoptions_expressorders_meo_v1_2.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
miax_sapphireoptions_expressorders_meo_v1_2.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
miax_sapphireoptions_expressorders_meo_v1_2.requested_session = {}

-- Size: Requested Session
miax_sapphireoptions_expressorders_meo_v1_2.requested_session.size = 1

-- Display: Requested Session
miax_sapphireoptions_expressorders_meo_v1_2.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
miax_sapphireoptions_expressorders_meo_v1_2.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.requested_session.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Reserved 1
miax_sapphireoptions_expressorders_meo_v1_2.reserved_1 = {}

-- Size: Reserved 1
miax_sapphireoptions_expressorders_meo_v1_2.reserved_1.size = 1

-- Display: Reserved 1
miax_sapphireoptions_expressorders_meo_v1_2.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
miax_sapphireoptions_expressorders_meo_v1_2.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_sapphireoptions_expressorders_meo_v1_2.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.reserved_1, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 10
miax_sapphireoptions_expressorders_meo_v1_2.reserved_10 = {}

-- Size: Reserved 10
miax_sapphireoptions_expressorders_meo_v1_2.reserved_10.size = 10

-- Display: Reserved 10
miax_sapphireoptions_expressorders_meo_v1_2.reserved_10.display = function(value)
  return "Reserved 10: "..value
end

-- Dissect: Reserved 10
miax_sapphireoptions_expressorders_meo_v1_2.reserved_10.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.reserved_10.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_sapphireoptions_expressorders_meo_v1_2.reserved_10.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.reserved_10, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 12
miax_sapphireoptions_expressorders_meo_v1_2.reserved_12 = {}

-- Size: Reserved 12
miax_sapphireoptions_expressorders_meo_v1_2.reserved_12.size = 12

-- Display: Reserved 12
miax_sapphireoptions_expressorders_meo_v1_2.reserved_12.display = function(value)
  return "Reserved 12: "..value
end

-- Dissect: Reserved 12
miax_sapphireoptions_expressorders_meo_v1_2.reserved_12.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.reserved_12.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_sapphireoptions_expressorders_meo_v1_2.reserved_12.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.reserved_12, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 15
miax_sapphireoptions_expressorders_meo_v1_2.reserved_15 = {}

-- Size: Reserved 15
miax_sapphireoptions_expressorders_meo_v1_2.reserved_15.size = 15

-- Display: Reserved 15
miax_sapphireoptions_expressorders_meo_v1_2.reserved_15.display = function(value)
  return "Reserved 15: "..value
end

-- Dissect: Reserved 15
miax_sapphireoptions_expressorders_meo_v1_2.reserved_15.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.reserved_15.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_sapphireoptions_expressorders_meo_v1_2.reserved_15.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.reserved_15, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 16
miax_sapphireoptions_expressorders_meo_v1_2.reserved_16 = {}

-- Size: Reserved 16
miax_sapphireoptions_expressorders_meo_v1_2.reserved_16.size = 16

-- Display: Reserved 16
miax_sapphireoptions_expressorders_meo_v1_2.reserved_16.display = function(value)
  return "Reserved 16: "..value
end

-- Dissect: Reserved 16
miax_sapphireoptions_expressorders_meo_v1_2.reserved_16.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.reserved_16.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_sapphireoptions_expressorders_meo_v1_2.reserved_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.reserved_16, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 4
miax_sapphireoptions_expressorders_meo_v1_2.reserved_4 = {}

-- Size: Reserved 4
miax_sapphireoptions_expressorders_meo_v1_2.reserved_4.size = 4

-- Display: Reserved 4
miax_sapphireoptions_expressorders_meo_v1_2.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
miax_sapphireoptions_expressorders_meo_v1_2.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_sapphireoptions_expressorders_meo_v1_2.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.reserved_4, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 6
miax_sapphireoptions_expressorders_meo_v1_2.reserved_6 = {}

-- Size: Reserved 6
miax_sapphireoptions_expressorders_meo_v1_2.reserved_6.size = 6

-- Display: Reserved 6
miax_sapphireoptions_expressorders_meo_v1_2.reserved_6.display = function(value)
  return "Reserved 6: "..value
end

-- Dissect: Reserved 6
miax_sapphireoptions_expressorders_meo_v1_2.reserved_6.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.reserved_6.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_sapphireoptions_expressorders_meo_v1_2.reserved_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.reserved_6, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 8
miax_sapphireoptions_expressorders_meo_v1_2.reserved_8 = {}

-- Size: Reserved 8
miax_sapphireoptions_expressorders_meo_v1_2.reserved_8.size = 8

-- Display: Reserved 8
miax_sapphireoptions_expressorders_meo_v1_2.reserved_8.display = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
miax_sapphireoptions_expressorders_meo_v1_2.reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_sapphireoptions_expressorders_meo_v1_2.reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.reserved_8, range, range:raw(), display)

  return offset + length, value
end

-- Restricted Option
miax_sapphireoptions_expressorders_meo_v1_2.restricted_option = {}

-- Size: Restricted Option
miax_sapphireoptions_expressorders_meo_v1_2.restricted_option.size = 1

-- Display: Restricted Option
miax_sapphireoptions_expressorders_meo_v1_2.restricted_option.labels = {
  ["Y"] = "Restricted Option: Sapphire Will Accept Position Closing Orders Only (Y)",
  ["N"] = "Restricted Option: Sapphire Will Accept Open And Close Positions (N)",
}

miax_sapphireoptions_expressorders_meo_v1_2.restricted_option.display = function(value)
  return miax_sapphireoptions_expressorders_meo_v1_2.restricted_option.labels[value] or "Restricted Option: Unknown("..value..")"
end

-- Dissect: Restricted Option
miax_sapphireoptions_expressorders_meo_v1_2.restricted_option.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.restricted_option.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.restricted_option.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.restricted_option, range, value, display)

  return offset + length, value
end

-- Sapphire Bbo Posting Increment Indicator
miax_sapphireoptions_expressorders_meo_v1_2.sapphire_bbo_posting_increment_indicator = {}

-- Size: Sapphire Bbo Posting Increment Indicator
miax_sapphireoptions_expressorders_meo_v1_2.sapphire_bbo_posting_increment_indicator.size = 1

-- Display: Sapphire Bbo Posting Increment Indicator
miax_sapphireoptions_expressorders_meo_v1_2.sapphire_bbo_posting_increment_indicator.labels = {
  ["P"] = "Sapphire Bbo Posting Increment Indicator: Penny Penny (P)",
  ["N"] = "Sapphire Bbo Posting Increment Indicator: Penny Nickel (N)",
  ["D"] = "Sapphire Bbo Posting Increment Indicator: Nickel Dime (D)",
}

miax_sapphireoptions_expressorders_meo_v1_2.sapphire_bbo_posting_increment_indicator.display = function(value)
  return miax_sapphireoptions_expressorders_meo_v1_2.sapphire_bbo_posting_increment_indicator.labels[value] or "Sapphire Bbo Posting Increment Indicator: Unknown("..value..")"
end

-- Dissect: Sapphire Bbo Posting Increment Indicator
miax_sapphireoptions_expressorders_meo_v1_2.sapphire_bbo_posting_increment_indicator.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.sapphire_bbo_posting_increment_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.sapphire_bbo_posting_increment_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.sapphire_bbo_posting_increment_indicator, range, value, display)

  return offset + length, value
end

-- Scope
miax_sapphireoptions_expressorders_meo_v1_2.scope = {}

-- Size: Scope
miax_sapphireoptions_expressorders_meo_v1_2.scope.size = 1

-- Display: Scope
miax_sapphireoptions_expressorders_meo_v1_2.scope.labels = {
  ["A"] = "Scope: Reset Standard Hybrid Mass Cancel (A)",
  ["S"] = "Scope: Reset Slap (S)",
}

miax_sapphireoptions_expressorders_meo_v1_2.scope.display = function(value)
  return miax_sapphireoptions_expressorders_meo_v1_2.scope.labels[value] or "Scope: Unknown("..value..")"
end

-- Dissect: Scope
miax_sapphireoptions_expressorders_meo_v1_2.scope.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.scope.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.scope.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.scope, range, value, display)

  return offset + length, value
end

-- Security Id
miax_sapphireoptions_expressorders_meo_v1_2.security_id = {}

-- Size: Security Id
miax_sapphireoptions_expressorders_meo_v1_2.security_id.size = 4

-- Display: Security Id
miax_sapphireoptions_expressorders_meo_v1_2.security_id.display = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
miax_sapphireoptions_expressorders_meo_v1_2.security_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.security_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.security_id, range, value, display)

  return offset + length, value
end

-- Security Id Scope
miax_sapphireoptions_expressorders_meo_v1_2.security_id_scope = {}

-- Size: Security Id Scope
miax_sapphireoptions_expressorders_meo_v1_2.security_id_scope.size = 1

-- Display: Security Id Scope
miax_sapphireoptions_expressorders_meo_v1_2.security_id_scope.labels = {
  ["P"] = "Security Id Scope: Security Id Specifies Sapphire Option Product Id (P)",
  ["S"] = "Security Id Scope: Security Id Specifies Sapphire Complex Strategy Id (S)",
  ["O"] = "Security Id Scope: Simple Binary Order (O)",
  ["X"] = "Security Id Scope: Complex Binary Order (X)",
}

miax_sapphireoptions_expressorders_meo_v1_2.security_id_scope.display = function(value)
  return miax_sapphireoptions_expressorders_meo_v1_2.security_id_scope.labels[value] or "Security Id Scope: Unknown("..value..")"
end

-- Dissect: Security Id Scope
miax_sapphireoptions_expressorders_meo_v1_2.security_id_scope.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.security_id_scope.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.security_id_scope.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.security_id_scope, range, value, display)

  return offset + length, value
end

-- Security Symbol
miax_sapphireoptions_expressorders_meo_v1_2.security_symbol = {}

-- Size: Security Symbol
miax_sapphireoptions_expressorders_meo_v1_2.security_symbol.size = 6

-- Display: Security Symbol
miax_sapphireoptions_expressorders_meo_v1_2.security_symbol.display = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
miax_sapphireoptions_expressorders_meo_v1_2.security_symbol.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.security_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_sapphireoptions_expressorders_meo_v1_2.security_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Sequence Number
miax_sapphireoptions_expressorders_meo_v1_2.sequence_number = {}

-- Size: Sequence Number
miax_sapphireoptions_expressorders_meo_v1_2.sequence_number.size = 8

-- Display: Sequence Number
miax_sapphireoptions_expressorders_meo_v1_2.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
miax_sapphireoptions_expressorders_meo_v1_2.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
miax_sapphireoptions_expressorders_meo_v1_2.sequenced_message_type = {}

-- Size: Sequenced Message Type
miax_sapphireoptions_expressorders_meo_v1_2.sequenced_message_type.size = 2

-- Display: Sequenced Message Type
miax_sapphireoptions_expressorders_meo_v1_2.sequenced_message_type.labels = {
  ["SU"] = "Sequenced Message Type: Series Update (SU)",
  ["CR"] = "Sequenced Message Type: Complex Binary Order Response (CR)",
  ["SN"] = "Sequenced Message Type: System State Notification (SN)",
  ["UN"] = "Sequenced Message Type: Underlying Trading Status Notification (UN)",
  ["QN"] = "Sequenced Message Type: Opening Width Relief Notification (QN)",
  ["AN"] = "Sequenced Message Type: Arm Protection Settings Notification (AN)",
  ["A2"] = "Sequenced Message Type: Arm 2 Underlying Level Protection Settings Notification (A2)",
  ["QX"] = "Sequenced Message Type: Single Side Liquidity Protection Trigger Notification (QX)",
  ["UP"] = "Sequenced Message Type: Arm 2 Underlying Level Protection Notification (UP)",
  ["FP"] = "Sequenced Message Type: Arm 2 Firm Level Protection Notification (FP)",
  ["XN"] = "Sequenced Message Type: Cancel Notification (XN)",
  ["EN"] = "Sequenced Message Type: Execution Notification (EN)",
  ["SC"] = "Sequenced Message Type: Complex Strategy Definition Notification (SC)",
  ["CS"] = "Sequenced Message Type: Stock Leg Execution Notification (CS)",
}

miax_sapphireoptions_expressorders_meo_v1_2.sequenced_message_type.display = function(value)
  return miax_sapphireoptions_expressorders_meo_v1_2.sequenced_message_type.labels[value] or "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
miax_sapphireoptions_expressorders_meo_v1_2.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Sesm Packet Length
miax_sapphireoptions_expressorders_meo_v1_2.sesm_packet_length = {}

-- Size: Sesm Packet Length
miax_sapphireoptions_expressorders_meo_v1_2.sesm_packet_length.size = 2

-- Display: Sesm Packet Length
miax_sapphireoptions_expressorders_meo_v1_2.sesm_packet_length.display = function(value)
  return "Sesm Packet Length: "..value
end

-- Dissect: Sesm Packet Length
miax_sapphireoptions_expressorders_meo_v1_2.sesm_packet_length.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.sesm_packet_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.sesm_packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.sesm_packet_length, range, value, display)

  return offset + length, value
end

-- Sesm Packet Type
miax_sapphireoptions_expressorders_meo_v1_2.sesm_packet_type = {}

-- Size: Sesm Packet Type
miax_sapphireoptions_expressorders_meo_v1_2.sesm_packet_type.size = 1

-- Display: Sesm Packet Type
miax_sapphireoptions_expressorders_meo_v1_2.sesm_packet_type.labels = {
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

miax_sapphireoptions_expressorders_meo_v1_2.sesm_packet_type.display = function(value)
  return miax_sapphireoptions_expressorders_meo_v1_2.sesm_packet_type.labels[value] or "Sesm Packet Type: Unknown("..value..")"
end

-- Dissect: Sesm Packet Type
miax_sapphireoptions_expressorders_meo_v1_2.sesm_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.sesm_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.sesm_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.sesm_packet_type, range, value, display)

  return offset + length, value
end

-- Sesm Version
miax_sapphireoptions_expressorders_meo_v1_2.sesm_version = {}

-- Size: Sesm Version
miax_sapphireoptions_expressorders_meo_v1_2.sesm_version.size = 5

-- Display: Sesm Version
miax_sapphireoptions_expressorders_meo_v1_2.sesm_version.display = function(value)
  return "Sesm Version: "..value
end

-- Dissect: Sesm Version
miax_sapphireoptions_expressorders_meo_v1_2.sesm_version.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.sesm_version.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_sapphireoptions_expressorders_meo_v1_2.sesm_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.sesm_version, range, value, display)

  return offset + length, value
end

-- Session Id
miax_sapphireoptions_expressorders_meo_v1_2.session_id = {}

-- Size: Session Id
miax_sapphireoptions_expressorders_meo_v1_2.session_id.size = 1

-- Display: Session Id
miax_sapphireoptions_expressorders_meo_v1_2.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
miax_sapphireoptions_expressorders_meo_v1_2.session_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.session_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.session_id, range, value, display)

  return offset + length, value
end

-- Side
miax_sapphireoptions_expressorders_meo_v1_2.side = {}

-- Size: Side
miax_sapphireoptions_expressorders_meo_v1_2.side.size = 1

-- Display: Side
miax_sapphireoptions_expressorders_meo_v1_2.side.labels = {
  ["B"] = "Side: Buy (B)",
  ["S"] = "Side: Sell (S)",
  ["N"] = "Side: Not Applicable (N)",
}

miax_sapphireoptions_expressorders_meo_v1_2.side.display = function(value)
  return miax_sapphireoptions_expressorders_meo_v1_2.side.labels[value] or "Side: Unknown("..value..")"
end

-- Dissect: Side
miax_sapphireoptions_expressorders_meo_v1_2.side.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.side, range, value, display)

  return offset + length, value
end

-- Size
miax_sapphireoptions_expressorders_meo_v1_2.size = {}

-- Size: Size
miax_sapphireoptions_expressorders_meo_v1_2.size.size = 4

-- Display: Size
miax_sapphireoptions_expressorders_meo_v1_2.size.display = function(value)
  return "Size: "..value
end

-- Dissect: Size
miax_sapphireoptions_expressorders_meo_v1_2.size.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.size.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.size, range, value, display)

  return offset + length, value
end

-- Source
miax_sapphireoptions_expressorders_meo_v1_2.source = {}

-- Size: Source
miax_sapphireoptions_expressorders_meo_v1_2.source.size = 1

-- Display: Source
miax_sapphireoptions_expressorders_meo_v1_2.source.labels = {
  ["T"] = "Source: Changes Carried Out By The Firm Via Meo (T)",
  ["E"] = "Source: Changes Carried Out By The Exchange (E)",
}

miax_sapphireoptions_expressorders_meo_v1_2.source.display = function(value)
  return miax_sapphireoptions_expressorders_meo_v1_2.source.labels[value] or "Source: Unknown("..value..")"
end

-- Dissect: Source
miax_sapphireoptions_expressorders_meo_v1_2.source.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.source.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.source.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.source, range, value, display)

  return offset + length, value
end

-- Start Sequence Number
miax_sapphireoptions_expressorders_meo_v1_2.start_sequence_number = {}

-- Size: Start Sequence Number
miax_sapphireoptions_expressorders_meo_v1_2.start_sequence_number.size = 8

-- Display: Start Sequence Number
miax_sapphireoptions_expressorders_meo_v1_2.start_sequence_number.display = function(value)
  return "Start Sequence Number: "..value
end

-- Dissect: Start Sequence Number
miax_sapphireoptions_expressorders_meo_v1_2.start_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.start_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.start_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.start_sequence_number, range, value, display)

  return offset + length, value
end

-- Status
miax_sapphireoptions_expressorders_meo_v1_2.status = {}

-- Size: Status
miax_sapphireoptions_expressorders_meo_v1_2.status.size = 1

-- Display: Status
miax_sapphireoptions_expressorders_meo_v1_2.status.display = function(value)
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
    return "Status: Single Side Protection Is Not Enabled For The Specified Mpid (E)"
  end
  if value == "F" then
    return "Status: Arm 2 Firm Level Protection Is In Effect (F)"
  end
  if value == "G" then
    return "Status: Complex Feature Disabled (G)"
  end
  if value == "I" then
    return "Status: Invalid Strategy Id (I)"
  end
  if value == "J" then
    return "Status: Mass Cancel Scope Contains Invalid Value (J)"
  end
  if value == "K" then
    return "Status: Not In Low (K)"
  end
  if value == "M" then
    return "Status: Unknown Mpid (M)"
  end
  if value == "N" then
    return "Status: All Orders Have Already Been Canceled (N)"
  end
  if value == "P" then
    return "Status: Invalid Price (P)"
  end
  if value == "R" then
    return "Status: Rejected Due To Order Protection (R)"
  end
  if value == "S" then
    return "Status: Invalid Scope (S)"
  end
  if value == "T" then
    return "Status: Invalid Time In Force (T)"
  end
  if value == "U" then
    return "Status: Invalid Underlying (U)"
  end
  if value == "V" then
    return "Status: Invalid Size (V)"
  end
  if value == "X" then
    return "Status: Slap Feature Disabled (X)"
  end
  if value == "Y" then
    return "Status: Rejected Due To Single Side Liquidity Protection In Effect (Y)"
  end
  if value == "b" then
    return "Status: Blocked By Occ Kill Switch (b)"
  end
  if value == "7" then
    return "Status: Rejected Due To Stock Clearing Account Underlying Mpid Or Dtc Account Number Not Configured (7)"
  end
  if value == "8" then
    return "Status: Invalid Sell Short Indicator (8)"
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
miax_sapphireoptions_expressorders_meo_v1_2.status.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.status, range, value, display)

  return offset + length, value
end

-- Stock Sell Short Indicator
miax_sapphireoptions_expressorders_meo_v1_2.stock_sell_short_indicator = {}

-- Size: Stock Sell Short Indicator
miax_sapphireoptions_expressorders_meo_v1_2.stock_sell_short_indicator.size = 1

-- Display: Stock Sell Short Indicator
miax_sapphireoptions_expressorders_meo_v1_2.stock_sell_short_indicator.display = function(value)
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
    return "Stock Sell Short Indicator: Na (<whitespace>)"
  end

  return "Stock Sell Short Indicator: Unknown("..value..")"
end

-- Dissect: Stock Sell Short Indicator
miax_sapphireoptions_expressorders_meo_v1_2.stock_sell_short_indicator.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.stock_sell_short_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.stock_sell_short_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.stock_sell_short_indicator, range, value, display)

  return offset + length, value
end

-- Strategy Id
miax_sapphireoptions_expressorders_meo_v1_2.strategy_id = {}

-- Size: Strategy Id
miax_sapphireoptions_expressorders_meo_v1_2.strategy_id.size = 4

-- Display: Strategy Id
miax_sapphireoptions_expressorders_meo_v1_2.strategy_id.display = function(value)
  return "Strategy Id: "..value
end

-- Dissect: Strategy Id
miax_sapphireoptions_expressorders_meo_v1_2.strategy_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.strategy_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.strategy_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.strategy_id, range, value, display)

  return offset + length, value
end

-- Strike Price
miax_sapphireoptions_expressorders_meo_v1_2.strike_price = {}

-- Size: Strike Price
miax_sapphireoptions_expressorders_meo_v1_2.strike_price.size = 4

-- Display: Strike Price
miax_sapphireoptions_expressorders_meo_v1_2.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Translate: Strike Price
miax_sapphireoptions_expressorders_meo_v1_2.strike_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Strike Price
miax_sapphireoptions_expressorders_meo_v1_2.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.strike_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_sapphireoptions_expressorders_meo_v1_2.strike_price.translate(raw)
  local display = miax_sapphireoptions_expressorders_meo_v1_2.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.strike_price, range, value, display)

  return offset + length, value
end

-- System Status
miax_sapphireoptions_expressorders_meo_v1_2.system_status = {}

-- Size: System Status
miax_sapphireoptions_expressorders_meo_v1_2.system_status.size = 1

-- Display: System Status
miax_sapphireoptions_expressorders_meo_v1_2.system_status.labels = {
  ["S"] = "System Status: Start Of System Hours (S)",
  ["C"] = "System Status: End Of System Hours (C)",
  ["P"] = "System Status: Low (P)",
  ["L"] = "System Status: Not In Low (L)",
  ["M"] = "System Status: Mpid Product Assignment Window Open (M)",
  ["E"] = "System Status: Mpid Product Assignment Window Closed (E)",
  ["1"] = "System Status: Start Of Test Session (1)",
  ["2"] = "System Status: End Of Test Session (2)",
}

miax_sapphireoptions_expressorders_meo_v1_2.system_status.display = function(value)
  return miax_sapphireoptions_expressorders_meo_v1_2.system_status.labels[value] or "System Status: Unknown("..value..")"
end

-- Dissect: System Status
miax_sapphireoptions_expressorders_meo_v1_2.system_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.system_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.system_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.system_status, range, value, display)

  return offset + length, value
end

-- Test Text
miax_sapphireoptions_expressorders_meo_v1_2.test_text = {}

-- Display: Test Text
miax_sapphireoptions_expressorders_meo_v1_2.test_text.display = function(value)
  return "Test Text: "..value
end

-- Dissect runtime sized field: Test Text
miax_sapphireoptions_expressorders_meo_v1_2.test_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.test_text.display(value, packet, parent, size)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.test_text, range, value, display)

  return offset + size, value
end

-- Time In Force
miax_sapphireoptions_expressorders_meo_v1_2.time_in_force = {}

-- Size: Time In Force
miax_sapphireoptions_expressorders_meo_v1_2.time_in_force.size = 1

-- Display: Time In Force
miax_sapphireoptions_expressorders_meo_v1_2.time_in_force.labels = {
  ["I"] = "Time In Force: Ioc (I)",
}

miax_sapphireoptions_expressorders_meo_v1_2.time_in_force.display = function(value)
  return miax_sapphireoptions_expressorders_meo_v1_2.time_in_force.labels[value] or "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
miax_sapphireoptions_expressorders_meo_v1_2.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.time_in_force.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Trade Id
miax_sapphireoptions_expressorders_meo_v1_2.trade_id = {}

-- Size: Trade Id
miax_sapphireoptions_expressorders_meo_v1_2.trade_id.size = 4

-- Display: Trade Id
miax_sapphireoptions_expressorders_meo_v1_2.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
miax_sapphireoptions_expressorders_meo_v1_2.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trade Status
miax_sapphireoptions_expressorders_meo_v1_2.trade_status = {}

-- Size: Trade Status
miax_sapphireoptions_expressorders_meo_v1_2.trade_status.size = 1

-- Display: Trade Status
miax_sapphireoptions_expressorders_meo_v1_2.trade_status.labels = {
  ["E"] = "Trade Status: New Execution (E)",
}

miax_sapphireoptions_expressorders_meo_v1_2.trade_status.display = function(value)
  return miax_sapphireoptions_expressorders_meo_v1_2.trade_status.labels[value] or "Trade Status: Unknown("..value..")"
end

-- Dissect: Trade Status
miax_sapphireoptions_expressorders_meo_v1_2.trade_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.trade_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.trade_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.trade_status, range, value, display)

  return offset + length, value
end

-- Trading Status
miax_sapphireoptions_expressorders_meo_v1_2.trading_status = {}

-- Size: Trading Status
miax_sapphireoptions_expressorders_meo_v1_2.trading_status.size = 1

-- Display: Trading Status
miax_sapphireoptions_expressorders_meo_v1_2.trading_status.labels = {
  ["H"] = "Trading Status: Sapphire Has Halted Trading For This Underlying Symbol (H)",
  ["R"] = "Trading Status: Sapphire Will Resume Trading Reopen For This Underlying Symbol (R)",
  ["O"] = "Trading Status: Sapphire Will Open Trading For This Underlying Symbol (O)",
}

miax_sapphireoptions_expressorders_meo_v1_2.trading_status.display = function(value)
  return miax_sapphireoptions_expressorders_meo_v1_2.trading_status.labels[value] or "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
miax_sapphireoptions_expressorders_meo_v1_2.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Trigger Reason
miax_sapphireoptions_expressorders_meo_v1_2.trigger_reason = {}

-- Size: Trigger Reason
miax_sapphireoptions_expressorders_meo_v1_2.trigger_reason.size = 1

-- Display: Trigger Reason
miax_sapphireoptions_expressorders_meo_v1_2.trigger_reason.labels = {
  ["L"] = "Trigger Reason: Line Disconnect Triggered Protection (L)",
  ["B"] = "Trigger Reason: Sapphire Help Desk Triggered Protection (B)",
  ["U"] = "Trigger Reason: Firm Initiated Standard Hybrid Mass Cancel (U)",
  ["R"] = "Trigger Reason: Arm Triggered Protection (R)",
  ["F"] = "Trigger Reason: Arm 2 Firm Level Protection Initiated Hybrid Mass Cancel (F)",
  ["J"] = "Trigger Reason: Undefined Reason (J)",
  ["*"] = "Trigger Reason: Downgraded From Older Version (*)",
}

miax_sapphireoptions_expressorders_meo_v1_2.trigger_reason.display = function(value)
  return miax_sapphireoptions_expressorders_meo_v1_2.trigger_reason.labels[value] or "Trigger Reason: Unknown("..value..")"
end

-- Dissect: Trigger Reason
miax_sapphireoptions_expressorders_meo_v1_2.trigger_reason.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.trigger_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.trigger_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.trigger_reason, range, value, display)

  return offset + length, value
end

-- Triggering Bulk Order Index
miax_sapphireoptions_expressorders_meo_v1_2.triggering_bulk_order_index = {}

-- Size: Triggering Bulk Order Index
miax_sapphireoptions_expressorders_meo_v1_2.triggering_bulk_order_index.size = 1

-- Display: Triggering Bulk Order Index
miax_sapphireoptions_expressorders_meo_v1_2.triggering_bulk_order_index.display = function(value)
  return "Triggering Bulk Order Index: "..value
end

-- Dissect: Triggering Bulk Order Index
miax_sapphireoptions_expressorders_meo_v1_2.triggering_bulk_order_index.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.triggering_bulk_order_index.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.triggering_bulk_order_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.triggering_bulk_order_index, range, value, display)

  return offset + length, value
end

-- Triggering Client Message Id
miax_sapphireoptions_expressorders_meo_v1_2.triggering_client_message_id = {}

-- Size: Triggering Client Message Id
miax_sapphireoptions_expressorders_meo_v1_2.triggering_client_message_id.size = 4

-- Display: Triggering Client Message Id
miax_sapphireoptions_expressorders_meo_v1_2.triggering_client_message_id.display = function(value)
  return "Triggering Client Message Id: "..value
end

-- Dissect: Triggering Client Message Id
miax_sapphireoptions_expressorders_meo_v1_2.triggering_client_message_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.triggering_client_message_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.triggering_client_message_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.triggering_client_message_id, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
miax_sapphireoptions_expressorders_meo_v1_2.underlying_symbol = {}

-- Size: Underlying Symbol
miax_sapphireoptions_expressorders_meo_v1_2.underlying_symbol.size = 11

-- Display: Underlying Symbol
miax_sapphireoptions_expressorders_meo_v1_2.underlying_symbol.display = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
miax_sapphireoptions_expressorders_meo_v1_2.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.underlying_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_sapphireoptions_expressorders_meo_v1_2.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Unsequenced Message Type
miax_sapphireoptions_expressorders_meo_v1_2.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
miax_sapphireoptions_expressorders_meo_v1_2.unsequenced_message_type.size = 2

-- Display: Unsequenced Message Type
miax_sapphireoptions_expressorders_meo_v1_2.unsequenced_message_type.labels = {
  ["AS"] = "Unsequenced Message Type: Arm Settings Update Request (AS)",
  ["AA"] = "Unsequenced Message Type: Arm Settings Update Response (AA)",
  ["2S"] = "Unsequenced Message Type: Arm 2 Underlying Level Protection Settings Update Request (2S)",
  ["2R"] = "Unsequenced Message Type: Arm 2 Underlying Level Protection Settings Update Response (2R)",
  ["SA"] = "Unsequenced Message Type: Series Assignment Request (SA)",
  ["AR"] = "Unsequenced Message Type: Series Assignment Response (AR)",
  ["lm"] = "Unsequenced Message Type: Simple Bulk Liquidity Message (lm)",
  ["LR"] = "Unsequenced Message Type: Simple Bulk Liquidity Message Response (LR)",
  ["CO"] = "Unsequenced Message Type: Complex Binary Order Request (CO)",
  ["xq"] = "Unsequenced Message Type: Liquidity Mass Cancel Request (xq)",
  ["XR"] = "Unsequenced Message Type: Liquidity Mass Cancel Response (XR)",
  ["P1"] = "Unsequenced Message Type: Liquidity Protection Reset Request (P1)",
  ["PR"] = "Unsequenced Message Type: Liquidity Protection Reset Response (PR)",
  ["SS"] = "Unsequenced Message Type: Single Side Liquidity Protection Reset Request (SS)",
  ["ST"] = "Unsequenced Message Type: Single Side Liquidity Protection Reset Response (ST)",
  ["QP"] = "Unsequenced Message Type: Liquidity Protection Trigger Notification (QP)",
  ["SL"] = "Unsequenced Message Type: Slap Protection Trigger Notification (SL)",
  ["XN"] = "Unsequenced Message Type: Cancel Notification (XN)",
}

miax_sapphireoptions_expressorders_meo_v1_2.unsequenced_message_type.display = function(value)
  return miax_sapphireoptions_expressorders_meo_v1_2.unsequenced_message_type.labels[value] or "Unsequenced Message Type: Unknown("..value..")"
end

-- Dissect: Unsequenced Message Type
miax_sapphireoptions_expressorders_meo_v1_2.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Update Reason
miax_sapphireoptions_expressorders_meo_v1_2.update_reason = {}

-- Size: Update Reason
miax_sapphireoptions_expressorders_meo_v1_2.update_reason.size = 1

-- Display: Update Reason
miax_sapphireoptions_expressorders_meo_v1_2.update_reason.labels = {
  ["N"] = "Update Reason: New Strategy Created (N)",
  ["U"] = "Update Reason: Strategy Definition Updated (U)",
  ["*"] = "Update Reason: Downgraded For Older Version (*)",
}

miax_sapphireoptions_expressorders_meo_v1_2.update_reason.display = function(value)
  return miax_sapphireoptions_expressorders_meo_v1_2.update_reason.labels[value] or "Update Reason: Unknown("..value..")"
end

-- Dissect: Update Reason
miax_sapphireoptions_expressorders_meo_v1_2.update_reason.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.update_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.update_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.update_reason, range, value, display)

  return offset + length, value
end

-- Username
miax_sapphireoptions_expressorders_meo_v1_2.username = {}

-- Size: Username
miax_sapphireoptions_expressorders_meo_v1_2.username.size = 5

-- Display: Username
miax_sapphireoptions_expressorders_meo_v1_2.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
miax_sapphireoptions_expressorders_meo_v1_2.username.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_expressorders_meo_v1_2.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_sapphireoptions_expressorders_meo_v1_2.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Miax SapphireOptions ExpressOrders Meo 1.2
-----------------------------------------------------------------------

-- Test Packet
miax_sapphireoptions_expressorders_meo_v1_2.test_packet = {}

-- Calculate size of: Test Packet
miax_sapphireoptions_expressorders_meo_v1_2.test_packet.size = function(buffer, offset)
  local index = 0

  -- Parse runtime size of: Test Text
  local sesm_packet_length = buffer(offset + index - 3, 2):le_uint()
  index = index + sesm_packet_length - 1

  return index
end

-- Display: Test Packet
miax_sapphireoptions_expressorders_meo_v1_2.test_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Test Packet
miax_sapphireoptions_expressorders_meo_v1_2.test_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Test Text
  local size_of_test_text = sesm_packet_length - 1

  -- Test Text: 0 Byte Ascii String
  index, test_text = miax_sapphireoptions_expressorders_meo_v1_2.test_text.dissect(buffer, index, packet, parent, size_of_test_text)

  return index
end

-- Dissect: Test Packet
miax_sapphireoptions_expressorders_meo_v1_2.test_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.test_packet, buffer(offset, 0))
    local index = miax_sapphireoptions_expressorders_meo_v1_2.test_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_expressorders_meo_v1_2.test_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_expressorders_meo_v1_2.test_packet.fields(buffer, offset, packet, parent)
  end
end

-- Client Heartbeat
miax_sapphireoptions_expressorders_meo_v1_2.client_heartbeat = {}

-- Display: Client Heartbeat
miax_sapphireoptions_expressorders_meo_v1_2.client_heartbeat.display = function(packet, parent, length)
  return "Client Heartbeat"
end


-- Dissect: Client Heartbeat
miax_sapphireoptions_expressorders_meo_v1_2.client_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = miax_sapphireoptions_expressorders_meo_v1_2.client_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Server Heartbeat
miax_sapphireoptions_expressorders_meo_v1_2.server_heartbeat = {}

-- Display: Server Heartbeat
miax_sapphireoptions_expressorders_meo_v1_2.server_heartbeat.display = function(packet, parent, length)
  return "Server Heartbeat"
end


-- Dissect: Server Heartbeat
miax_sapphireoptions_expressorders_meo_v1_2.server_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = miax_sapphireoptions_expressorders_meo_v1_2.server_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- End Of Session
miax_sapphireoptions_expressorders_meo_v1_2.end_of_session = {}

-- Display: End Of Session
miax_sapphireoptions_expressorders_meo_v1_2.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
miax_sapphireoptions_expressorders_meo_v1_2.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = miax_sapphireoptions_expressorders_meo_v1_2.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Goodbye Packet
miax_sapphireoptions_expressorders_meo_v1_2.goodbye_packet = {}

-- Calculate size of: Goodbye Packet
miax_sapphireoptions_expressorders_meo_v1_2.goodbye_packet.size = function(buffer, offset)
  local index = 0

  index = index + miax_sapphireoptions_expressorders_meo_v1_2.goodbye_reason.size

  -- Parse runtime size of: Logout Text
  local sesm_packet_length = buffer(offset + index - 4, 2):le_uint()
  index = index + sesm_packet_length - 2

  return index
end

-- Display: Goodbye Packet
miax_sapphireoptions_expressorders_meo_v1_2.goodbye_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Goodbye Packet
miax_sapphireoptions_expressorders_meo_v1_2.goodbye_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Goodbye Reason: 1 Byte Ascii String Enum with 3 values
  index, goodbye_reason = miax_sapphireoptions_expressorders_meo_v1_2.goodbye_reason.dissect(buffer, index, packet, parent)

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Logout Text
  local size_of_logout_text = sesm_packet_length - 2

  -- Logout Text: 0 Byte Ascii String
  index, logout_text = miax_sapphireoptions_expressorders_meo_v1_2.logout_text.dissect(buffer, index, packet, parent, size_of_logout_text)

  return index
end

-- Dissect: Goodbye Packet
miax_sapphireoptions_expressorders_meo_v1_2.goodbye_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.goodbye_packet, buffer(offset, 0))
    local index = miax_sapphireoptions_expressorders_meo_v1_2.goodbye_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_expressorders_meo_v1_2.goodbye_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_expressorders_meo_v1_2.goodbye_packet.fields(buffer, offset, packet, parent)
  end
end

-- Logout Request
miax_sapphireoptions_expressorders_meo_v1_2.logout_request = {}

-- Calculate size of: Logout Request
miax_sapphireoptions_expressorders_meo_v1_2.logout_request.size = function(buffer, offset)
  local index = 0

  index = index + miax_sapphireoptions_expressorders_meo_v1_2.logout_reason.size

  -- Parse runtime size of: Logout Text
  local sesm_packet_length = buffer(offset + index - 4, 2):le_uint()
  index = index + sesm_packet_length - 2

  return index
end

-- Display: Logout Request
miax_sapphireoptions_expressorders_meo_v1_2.logout_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Request
miax_sapphireoptions_expressorders_meo_v1_2.logout_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logout Reason: 1 Byte Ascii String Enum with 4 values
  index, logout_reason = miax_sapphireoptions_expressorders_meo_v1_2.logout_reason.dissect(buffer, index, packet, parent)

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Logout Text
  local size_of_logout_text = sesm_packet_length - 2

  -- Logout Text: 0 Byte Ascii String
  index, logout_text = miax_sapphireoptions_expressorders_meo_v1_2.logout_text.dissect(buffer, index, packet, parent, size_of_logout_text)

  return index
end

-- Dissect: Logout Request
miax_sapphireoptions_expressorders_meo_v1_2.logout_request.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.logout_request, buffer(offset, 0))
    local index = miax_sapphireoptions_expressorders_meo_v1_2.logout_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_expressorders_meo_v1_2.logout_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_expressorders_meo_v1_2.logout_request.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Request
miax_sapphireoptions_expressorders_meo_v1_2.retransmission_request = {}

-- Size: Retransmission Request
miax_sapphireoptions_expressorders_meo_v1_2.retransmission_request.size =
  miax_sapphireoptions_expressorders_meo_v1_2.start_sequence_number.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.end_sequence_number.size

-- Display: Retransmission Request
miax_sapphireoptions_expressorders_meo_v1_2.retransmission_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request
miax_sapphireoptions_expressorders_meo_v1_2.retransmission_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, start_sequence_number = miax_sapphireoptions_expressorders_meo_v1_2.start_sequence_number.dissect(buffer, index, packet, parent)

  -- End Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, end_sequence_number = miax_sapphireoptions_expressorders_meo_v1_2.end_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request
miax_sapphireoptions_expressorders_meo_v1_2.retransmission_request.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.retransmission_request, buffer(offset, 0))
    local index = miax_sapphireoptions_expressorders_meo_v1_2.retransmission_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_expressorders_meo_v1_2.retransmission_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_expressorders_meo_v1_2.retransmission_request.fields(buffer, offset, packet, parent)
  end
end

-- Synchronization Complete
miax_sapphireoptions_expressorders_meo_v1_2.synchronization_complete = {}

-- Display: Synchronization Complete
miax_sapphireoptions_expressorders_meo_v1_2.synchronization_complete.display = function(packet, parent, length)
  return "Synchronization Complete"
end


-- Dissect: Synchronization Complete
miax_sapphireoptions_expressorders_meo_v1_2.synchronization_complete.dissect = function(buffer, offset, packet, parent)
  local display = miax_sapphireoptions_expressorders_meo_v1_2.synchronization_complete.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Login Response
miax_sapphireoptions_expressorders_meo_v1_2.login_response = {}

-- Size: Login Response
miax_sapphireoptions_expressorders_meo_v1_2.login_response.size =
  miax_sapphireoptions_expressorders_meo_v1_2.login_status.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.session_id.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.highest_sequence_number.size

-- Display: Login Response
miax_sapphireoptions_expressorders_meo_v1_2.login_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response
miax_sapphireoptions_expressorders_meo_v1_2.login_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Login Status: 1 Byte Ascii String Enum with 7 values
  index, login_status = miax_sapphireoptions_expressorders_meo_v1_2.login_status.dissect(buffer, index, packet, parent)

  -- Session Id: BinaryU
  index, session_id = miax_sapphireoptions_expressorders_meo_v1_2.session_id.dissect(buffer, index, packet, parent)

  -- Highest Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, highest_sequence_number = miax_sapphireoptions_expressorders_meo_v1_2.highest_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response
miax_sapphireoptions_expressorders_meo_v1_2.login_response.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.login_response, buffer(offset, 0))
    local index = miax_sapphireoptions_expressorders_meo_v1_2.login_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_expressorders_meo_v1_2.login_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_expressorders_meo_v1_2.login_response.fields(buffer, offset, packet, parent)
  end
end

-- Login Request
miax_sapphireoptions_expressorders_meo_v1_2.login_request = {}

-- Size: Login Request
miax_sapphireoptions_expressorders_meo_v1_2.login_request.size =
  miax_sapphireoptions_expressorders_meo_v1_2.sesm_version.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.username.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.computer_id.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.application_protocol.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.requested_session.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.requested_sequence_number.size

-- Display: Login Request
miax_sapphireoptions_expressorders_meo_v1_2.login_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request
miax_sapphireoptions_expressorders_meo_v1_2.login_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sesm Version: 5 Byte Ascii String
  index, sesm_version = miax_sapphireoptions_expressorders_meo_v1_2.sesm_version.dissect(buffer, index, packet, parent)

  -- Username: 5 Byte Ascii String
  index, username = miax_sapphireoptions_expressorders_meo_v1_2.username.dissect(buffer, index, packet, parent)

  -- Computer Id: 8 Byte Ascii String
  index, computer_id = miax_sapphireoptions_expressorders_meo_v1_2.computer_id.dissect(buffer, index, packet, parent)

  -- Application Protocol: 8 Byte Ascii String
  index, application_protocol = miax_sapphireoptions_expressorders_meo_v1_2.application_protocol.dissect(buffer, index, packet, parent)

  -- Requested Session: 1 Byte Unsigned Fixed Width Integer
  index, requested_session = miax_sapphireoptions_expressorders_meo_v1_2.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, requested_sequence_number = miax_sapphireoptions_expressorders_meo_v1_2.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request
miax_sapphireoptions_expressorders_meo_v1_2.login_request.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.login_request, buffer(offset, 0))
    local index = miax_sapphireoptions_expressorders_meo_v1_2.login_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_expressorders_meo_v1_2.login_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_expressorders_meo_v1_2.login_request.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Notification
miax_sapphireoptions_expressorders_meo_v1_2.cancel_notification = {}

-- Size: Cancel Notification
miax_sapphireoptions_expressorders_meo_v1_2.cancel_notification.size =
  miax_sapphireoptions_expressorders_meo_v1_2.notification_time.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.mpid.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.security_id_scope.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.security_id.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.client_message_id.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.client_order_id.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.bulk_order_index.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.side.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.size.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.engine_sequence_number.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.cancel_reason.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.reserved_8.size

-- Display: Cancel Notification
miax_sapphireoptions_expressorders_meo_v1_2.cancel_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Notification
miax_sapphireoptions_expressorders_meo_v1_2.cancel_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: NanoTime
  index, notification_time = miax_sapphireoptions_expressorders_meo_v1_2.notification_time.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_sapphireoptions_expressorders_meo_v1_2.mpid.dissect(buffer, index, packet, parent)

  -- Security Id Scope: Alphanumeric
  index, security_id_scope = miax_sapphireoptions_expressorders_meo_v1_2.security_id_scope.dissect(buffer, index, packet, parent)

  -- Security Id: BinaryU
  index, security_id = miax_sapphireoptions_expressorders_meo_v1_2.security_id.dissect(buffer, index, packet, parent)

  -- Client Message Id: BinaryU
  index, client_message_id = miax_sapphireoptions_expressorders_meo_v1_2.client_message_id.dissect(buffer, index, packet, parent)

  -- Client Order Id: BinaryU
  index, client_order_id = miax_sapphireoptions_expressorders_meo_v1_2.client_order_id.dissect(buffer, index, packet, parent)

  -- Bulk Order Index: BinaryU
  index, bulk_order_index = miax_sapphireoptions_expressorders_meo_v1_2.bulk_order_index.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = miax_sapphireoptions_expressorders_meo_v1_2.side.dissect(buffer, index, packet, parent)

  -- Size: BinaryU
  index, size = miax_sapphireoptions_expressorders_meo_v1_2.size.dissect(buffer, index, packet, parent)

  -- Engine Sequence Number: BinaryU
  index, engine_sequence_number = miax_sapphireoptions_expressorders_meo_v1_2.engine_sequence_number.dissect(buffer, index, packet, parent)

  -- Cancel Reason: Alphanumeric
  index, cancel_reason = miax_sapphireoptions_expressorders_meo_v1_2.cancel_reason.dissect(buffer, index, packet, parent)

  -- Reserved 8: Alphanumeric
  if show.padding then
    index, reserved_8 = miax_sapphireoptions_expressorders_meo_v1_2.reserved_8.dissect(buffer, index, packet, parent)
  else
    index = index + miax_sapphireoptions_expressorders_meo_v1_2.reserved_8.size
  end

  return index
end

-- Dissect: Cancel Notification
miax_sapphireoptions_expressorders_meo_v1_2.cancel_notification.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.cancel_notification, buffer(offset, 0))
    local index = miax_sapphireoptions_expressorders_meo_v1_2.cancel_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_expressorders_meo_v1_2.cancel_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_expressorders_meo_v1_2.cancel_notification.fields(buffer, offset, packet, parent)
  end
end

-- Triggered Slap Codes
miax_sapphireoptions_expressorders_meo_v1_2.triggered_slap_codes = {}

-- Size: Triggered Slap Codes
miax_sapphireoptions_expressorders_meo_v1_2.triggered_slap_codes.size = 1

-- Display: Triggered Slap Codes
miax_sapphireoptions_expressorders_meo_v1_2.triggered_slap_codes.display = function(range, value, packet, parent)
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
miax_sapphireoptions_expressorders_meo_v1_2.triggered_slap_codes.bits = function(range, value, packet, parent)

  -- Slap Code 1: 1 Bit
  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.slap_code_1, range, value)

  -- Slap Code 2: 1 Bit
  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.slap_code_2, range, value)

  -- Slap Code 3: 1 Bit
  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.slap_code_3, range, value)

  -- Slap Code 4: 1 Bit
  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.slap_code_4, range, value)

  -- Slap Code 5: 1 Bit
  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.slap_code_5, range, value)

  -- Slap Code 6: 1 Bit
  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.slap_code_6, range, value)

  -- Slap Code 7: 1 Bit
  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.slap_code_7, range, value)

  -- Slap Code 8: 1 Bit
  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.slap_code_8, range, value)
end

-- Dissect: Triggered Slap Codes
miax_sapphireoptions_expressorders_meo_v1_2.triggered_slap_codes.dissect = function(buffer, offset, packet, parent)
  local size = miax_sapphireoptions_expressorders_meo_v1_2.triggered_slap_codes.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.triggered_slap_codes.display(range, value, packet, parent)
  local element = parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.triggered_slap_codes, range, display)

  if show.structs then
    miax_sapphireoptions_expressorders_meo_v1_2.triggered_slap_codes.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Requested Slap Codes
miax_sapphireoptions_expressorders_meo_v1_2.requested_slap_codes = {}

-- Size: Requested Slap Codes
miax_sapphireoptions_expressorders_meo_v1_2.requested_slap_codes.size = 1

-- Display: Requested Slap Codes
miax_sapphireoptions_expressorders_meo_v1_2.requested_slap_codes.display = function(range, value, packet, parent)
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
miax_sapphireoptions_expressorders_meo_v1_2.requested_slap_codes.bits = function(range, value, packet, parent)

  -- Slap Code 1: 1 Bit
  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.slap_code_1, range, value)

  -- Slap Code 2: 1 Bit
  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.slap_code_2, range, value)

  -- Slap Code 3: 1 Bit
  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.slap_code_3, range, value)

  -- Slap Code 4: 1 Bit
  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.slap_code_4, range, value)

  -- Slap Code 5: 1 Bit
  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.slap_code_5, range, value)

  -- Slap Code 6: 1 Bit
  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.slap_code_6, range, value)

  -- Slap Code 7: 1 Bit
  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.slap_code_7, range, value)

  -- Slap Code 8: 1 Bit
  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.slap_code_8, range, value)
end

-- Dissect: Requested Slap Codes
miax_sapphireoptions_expressorders_meo_v1_2.requested_slap_codes.dissect = function(buffer, offset, packet, parent)
  local size = miax_sapphireoptions_expressorders_meo_v1_2.requested_slap_codes.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.requested_slap_codes.display(range, value, packet, parent)
  local element = parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.requested_slap_codes, range, display)

  if show.structs then
    miax_sapphireoptions_expressorders_meo_v1_2.requested_slap_codes.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Slap Protection Trigger Notification
miax_sapphireoptions_expressorders_meo_v1_2.slap_protection_trigger_notification = {}

-- Size: Slap Protection Trigger Notification
miax_sapphireoptions_expressorders_meo_v1_2.slap_protection_trigger_notification.size =
  miax_sapphireoptions_expressorders_meo_v1_2.notification_time.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.mpid.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.underlying_symbol.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.requested_slap_codes.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.triggered_slap_codes.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.reserved_10.size

-- Display: Slap Protection Trigger Notification
miax_sapphireoptions_expressorders_meo_v1_2.slap_protection_trigger_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Slap Protection Trigger Notification
miax_sapphireoptions_expressorders_meo_v1_2.slap_protection_trigger_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: NanoTime
  index, notification_time = miax_sapphireoptions_expressorders_meo_v1_2.notification_time.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_sapphireoptions_expressorders_meo_v1_2.mpid.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_sapphireoptions_expressorders_meo_v1_2.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Requested Slap Codes: Struct of 8 fields
  index, requested_slap_codes = miax_sapphireoptions_expressorders_meo_v1_2.requested_slap_codes.dissect(buffer, index, packet, parent)

  -- Triggered Slap Codes: Struct of 8 fields
  index, triggered_slap_codes = miax_sapphireoptions_expressorders_meo_v1_2.triggered_slap_codes.dissect(buffer, index, packet, parent)

  -- Reserved 10: BinaryU
  if show.padding then
    index, reserved_10 = miax_sapphireoptions_expressorders_meo_v1_2.reserved_10.dissect(buffer, index, packet, parent)
  else
    index = index + miax_sapphireoptions_expressorders_meo_v1_2.reserved_10.size
  end

  return index
end

-- Dissect: Slap Protection Trigger Notification
miax_sapphireoptions_expressorders_meo_v1_2.slap_protection_trigger_notification.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.slap_protection_trigger_notification, buffer(offset, 0))
    local index = miax_sapphireoptions_expressorders_meo_v1_2.slap_protection_trigger_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_expressorders_meo_v1_2.slap_protection_trigger_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_expressorders_meo_v1_2.slap_protection_trigger_notification.fields(buffer, offset, packet, parent)
  end
end

-- Liquidity Protection Trigger Notification
miax_sapphireoptions_expressorders_meo_v1_2.liquidity_protection_trigger_notification = {}

-- Size: Liquidity Protection Trigger Notification
miax_sapphireoptions_expressorders_meo_v1_2.liquidity_protection_trigger_notification.size =
  miax_sapphireoptions_expressorders_meo_v1_2.notification_time.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.mpid.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.underlying_symbol.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.trigger_reason.size

-- Display: Liquidity Protection Trigger Notification
miax_sapphireoptions_expressorders_meo_v1_2.liquidity_protection_trigger_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Liquidity Protection Trigger Notification
miax_sapphireoptions_expressorders_meo_v1_2.liquidity_protection_trigger_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: NanoTime
  index, notification_time = miax_sapphireoptions_expressorders_meo_v1_2.notification_time.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_sapphireoptions_expressorders_meo_v1_2.mpid.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_sapphireoptions_expressorders_meo_v1_2.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Trigger Reason: Alphanumeric
  index, trigger_reason = miax_sapphireoptions_expressorders_meo_v1_2.trigger_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Liquidity Protection Trigger Notification
miax_sapphireoptions_expressorders_meo_v1_2.liquidity_protection_trigger_notification.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.liquidity_protection_trigger_notification, buffer(offset, 0))
    local index = miax_sapphireoptions_expressorders_meo_v1_2.liquidity_protection_trigger_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_expressorders_meo_v1_2.liquidity_protection_trigger_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_expressorders_meo_v1_2.liquidity_protection_trigger_notification.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Liquidity Protection Reset Response
miax_sapphireoptions_expressorders_meo_v1_2.single_side_liquidity_protection_reset_response = {}

-- Size: Single Side Liquidity Protection Reset Response
miax_sapphireoptions_expressorders_meo_v1_2.single_side_liquidity_protection_reset_response.size =
  miax_sapphireoptions_expressorders_meo_v1_2.client_message_id.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.mpid.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.reserved_4.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.status.size

-- Display: Single Side Liquidity Protection Reset Response
miax_sapphireoptions_expressorders_meo_v1_2.single_side_liquidity_protection_reset_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Liquidity Protection Reset Response
miax_sapphireoptions_expressorders_meo_v1_2.single_side_liquidity_protection_reset_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Message Id: BinaryU
  index, client_message_id = miax_sapphireoptions_expressorders_meo_v1_2.client_message_id.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_sapphireoptions_expressorders_meo_v1_2.mpid.dissect(buffer, index, packet, parent)

  -- Reserved 4: BinaryU
  if show.padding then
    index, reserved_4 = miax_sapphireoptions_expressorders_meo_v1_2.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + miax_sapphireoptions_expressorders_meo_v1_2.reserved_4.size
  end

  -- Status: Alphanumeric
  index, status = miax_sapphireoptions_expressorders_meo_v1_2.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Liquidity Protection Reset Response
miax_sapphireoptions_expressorders_meo_v1_2.single_side_liquidity_protection_reset_response.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.single_side_liquidity_protection_reset_response, buffer(offset, 0))
    local index = miax_sapphireoptions_expressorders_meo_v1_2.single_side_liquidity_protection_reset_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_expressorders_meo_v1_2.single_side_liquidity_protection_reset_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_expressorders_meo_v1_2.single_side_liquidity_protection_reset_response.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Liquidity Protection Reset Request
miax_sapphireoptions_expressorders_meo_v1_2.single_side_liquidity_protection_reset_request = {}

-- Size: Single Side Liquidity Protection Reset Request
miax_sapphireoptions_expressorders_meo_v1_2.single_side_liquidity_protection_reset_request.size =
  miax_sapphireoptions_expressorders_meo_v1_2.client_message_id.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.mpid.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.security_id_scope.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.security_id.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.side.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.reserved_4.size

-- Display: Single Side Liquidity Protection Reset Request
miax_sapphireoptions_expressorders_meo_v1_2.single_side_liquidity_protection_reset_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Liquidity Protection Reset Request
miax_sapphireoptions_expressorders_meo_v1_2.single_side_liquidity_protection_reset_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Message Id: BinaryU
  index, client_message_id = miax_sapphireoptions_expressorders_meo_v1_2.client_message_id.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_sapphireoptions_expressorders_meo_v1_2.mpid.dissect(buffer, index, packet, parent)

  -- Security Id Scope: Alphanumeric
  index, security_id_scope = miax_sapphireoptions_expressorders_meo_v1_2.security_id_scope.dissect(buffer, index, packet, parent)

  -- Security Id: BinaryU
  index, security_id = miax_sapphireoptions_expressorders_meo_v1_2.security_id.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = miax_sapphireoptions_expressorders_meo_v1_2.side.dissect(buffer, index, packet, parent)

  -- Reserved 4: BinaryU
  if show.padding then
    index, reserved_4 = miax_sapphireoptions_expressorders_meo_v1_2.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + miax_sapphireoptions_expressorders_meo_v1_2.reserved_4.size
  end

  return index
end

-- Dissect: Single Side Liquidity Protection Reset Request
miax_sapphireoptions_expressorders_meo_v1_2.single_side_liquidity_protection_reset_request.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.single_side_liquidity_protection_reset_request, buffer(offset, 0))
    local index = miax_sapphireoptions_expressorders_meo_v1_2.single_side_liquidity_protection_reset_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_expressorders_meo_v1_2.single_side_liquidity_protection_reset_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_expressorders_meo_v1_2.single_side_liquidity_protection_reset_request.fields(buffer, offset, packet, parent)
  end
end

-- Liquidity Protection Reset Response
miax_sapphireoptions_expressorders_meo_v1_2.liquidity_protection_reset_response = {}

-- Size: Liquidity Protection Reset Response
miax_sapphireoptions_expressorders_meo_v1_2.liquidity_protection_reset_response.size =
  miax_sapphireoptions_expressorders_meo_v1_2.client_message_id.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.mpid.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.status.size

-- Display: Liquidity Protection Reset Response
miax_sapphireoptions_expressorders_meo_v1_2.liquidity_protection_reset_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Liquidity Protection Reset Response
miax_sapphireoptions_expressorders_meo_v1_2.liquidity_protection_reset_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Message Id: BinaryU
  index, client_message_id = miax_sapphireoptions_expressorders_meo_v1_2.client_message_id.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_sapphireoptions_expressorders_meo_v1_2.mpid.dissect(buffer, index, packet, parent)

  -- Status: Alphanumeric
  index, status = miax_sapphireoptions_expressorders_meo_v1_2.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Liquidity Protection Reset Response
miax_sapphireoptions_expressorders_meo_v1_2.liquidity_protection_reset_response.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.liquidity_protection_reset_response, buffer(offset, 0))
    local index = miax_sapphireoptions_expressorders_meo_v1_2.liquidity_protection_reset_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_expressorders_meo_v1_2.liquidity_protection_reset_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_expressorders_meo_v1_2.liquidity_protection_reset_response.fields(buffer, offset, packet, parent)
  end
end

-- Slap Codes
miax_sapphireoptions_expressorders_meo_v1_2.slap_codes = {}

-- Size: Slap Codes
miax_sapphireoptions_expressorders_meo_v1_2.slap_codes.size = 1

-- Display: Slap Codes
miax_sapphireoptions_expressorders_meo_v1_2.slap_codes.display = function(range, value, packet, parent)
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
miax_sapphireoptions_expressorders_meo_v1_2.slap_codes.bits = function(range, value, packet, parent)

  -- Slap Code 1: 1 Bit
  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.slap_code_1, range, value)

  -- Slap Code 2: 1 Bit
  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.slap_code_2, range, value)

  -- Slap Code 3: 1 Bit
  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.slap_code_3, range, value)

  -- Slap Code 4: 1 Bit
  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.slap_code_4, range, value)

  -- Slap Code 5: 1 Bit
  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.slap_code_5, range, value)

  -- Slap Code 6: 1 Bit
  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.slap_code_6, range, value)

  -- Slap Code 7: 1 Bit
  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.slap_code_7, range, value)

  -- Slap Code 8: 1 Bit
  parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.slap_code_8, range, value)
end

-- Dissect: Slap Codes
miax_sapphireoptions_expressorders_meo_v1_2.slap_codes.dissect = function(buffer, offset, packet, parent)
  local size = miax_sapphireoptions_expressorders_meo_v1_2.slap_codes.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = miax_sapphireoptions_expressorders_meo_v1_2.slap_codes.display(range, value, packet, parent)
  local element = parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.slap_codes, range, display)

  if show.structs then
    miax_sapphireoptions_expressorders_meo_v1_2.slap_codes.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Liquidity Protection Reset Request
miax_sapphireoptions_expressorders_meo_v1_2.liquidity_protection_reset_request = {}

-- Size: Liquidity Protection Reset Request
miax_sapphireoptions_expressorders_meo_v1_2.liquidity_protection_reset_request.size =
  miax_sapphireoptions_expressorders_meo_v1_2.client_message_id.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.mpid.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.underlying_symbol.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.scope.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.slap_codes.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.reserved_10.size

-- Display: Liquidity Protection Reset Request
miax_sapphireoptions_expressorders_meo_v1_2.liquidity_protection_reset_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Liquidity Protection Reset Request
miax_sapphireoptions_expressorders_meo_v1_2.liquidity_protection_reset_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Message Id: BinaryU
  index, client_message_id = miax_sapphireoptions_expressorders_meo_v1_2.client_message_id.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_sapphireoptions_expressorders_meo_v1_2.mpid.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_sapphireoptions_expressorders_meo_v1_2.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Scope: Alphanumeric
  index, scope = miax_sapphireoptions_expressorders_meo_v1_2.scope.dissect(buffer, index, packet, parent)

  -- Slap Codes: Struct of 8 fields
  index, slap_codes = miax_sapphireoptions_expressorders_meo_v1_2.slap_codes.dissect(buffer, index, packet, parent)

  -- Reserved 10: BinaryU
  if show.padding then
    index, reserved_10 = miax_sapphireoptions_expressorders_meo_v1_2.reserved_10.dissect(buffer, index, packet, parent)
  else
    index = index + miax_sapphireoptions_expressorders_meo_v1_2.reserved_10.size
  end

  return index
end

-- Dissect: Liquidity Protection Reset Request
miax_sapphireoptions_expressorders_meo_v1_2.liquidity_protection_reset_request.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.liquidity_protection_reset_request, buffer(offset, 0))
    local index = miax_sapphireoptions_expressorders_meo_v1_2.liquidity_protection_reset_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_expressorders_meo_v1_2.liquidity_protection_reset_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_expressorders_meo_v1_2.liquidity_protection_reset_request.fields(buffer, offset, packet, parent)
  end
end

-- Liquidity Mass Cancel Response
miax_sapphireoptions_expressorders_meo_v1_2.liquidity_mass_cancel_response = {}

-- Size: Liquidity Mass Cancel Response
miax_sapphireoptions_expressorders_meo_v1_2.liquidity_mass_cancel_response.size =
  miax_sapphireoptions_expressorders_meo_v1_2.client_message_id.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.mpid.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.status.size

-- Display: Liquidity Mass Cancel Response
miax_sapphireoptions_expressorders_meo_v1_2.liquidity_mass_cancel_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Liquidity Mass Cancel Response
miax_sapphireoptions_expressorders_meo_v1_2.liquidity_mass_cancel_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Message Id: BinaryU
  index, client_message_id = miax_sapphireoptions_expressorders_meo_v1_2.client_message_id.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_sapphireoptions_expressorders_meo_v1_2.mpid.dissect(buffer, index, packet, parent)

  -- Status: Alphanumeric
  index, status = miax_sapphireoptions_expressorders_meo_v1_2.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Liquidity Mass Cancel Response
miax_sapphireoptions_expressorders_meo_v1_2.liquidity_mass_cancel_response.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.liquidity_mass_cancel_response, buffer(offset, 0))
    local index = miax_sapphireoptions_expressorders_meo_v1_2.liquidity_mass_cancel_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_expressorders_meo_v1_2.liquidity_mass_cancel_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_expressorders_meo_v1_2.liquidity_mass_cancel_response.fields(buffer, offset, packet, parent)
  end
end

-- Liquidity Mass Cancel Request
miax_sapphireoptions_expressorders_meo_v1_2.liquidity_mass_cancel_request = {}

-- Size: Liquidity Mass Cancel Request
miax_sapphireoptions_expressorders_meo_v1_2.liquidity_mass_cancel_request.size =
  miax_sapphireoptions_expressorders_meo_v1_2.client_message_id.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.mpid.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.client_send_time.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.underlying_symbol.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.mass_cancel_scope.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.slap_codes.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.reserved_6.size

-- Display: Liquidity Mass Cancel Request
miax_sapphireoptions_expressorders_meo_v1_2.liquidity_mass_cancel_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Liquidity Mass Cancel Request
miax_sapphireoptions_expressorders_meo_v1_2.liquidity_mass_cancel_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Message Id: BinaryU
  index, client_message_id = miax_sapphireoptions_expressorders_meo_v1_2.client_message_id.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_sapphireoptions_expressorders_meo_v1_2.mpid.dissect(buffer, index, packet, parent)

  -- Client Send Time: TimeStamp
  index, client_send_time = miax_sapphireoptions_expressorders_meo_v1_2.client_send_time.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_sapphireoptions_expressorders_meo_v1_2.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Mass Cancel Scope: Alphanumeric
  index, mass_cancel_scope = miax_sapphireoptions_expressorders_meo_v1_2.mass_cancel_scope.dissect(buffer, index, packet, parent)

  -- Slap Codes: Struct of 8 fields
  index, slap_codes = miax_sapphireoptions_expressorders_meo_v1_2.slap_codes.dissect(buffer, index, packet, parent)

  -- Reserved 6: BinaryU
  if show.padding then
    index, reserved_6 = miax_sapphireoptions_expressorders_meo_v1_2.reserved_6.dissect(buffer, index, packet, parent)
  else
    index = index + miax_sapphireoptions_expressorders_meo_v1_2.reserved_6.size
  end

  return index
end

-- Dissect: Liquidity Mass Cancel Request
miax_sapphireoptions_expressorders_meo_v1_2.liquidity_mass_cancel_request.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.liquidity_mass_cancel_request, buffer(offset, 0))
    local index = miax_sapphireoptions_expressorders_meo_v1_2.liquidity_mass_cancel_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_expressorders_meo_v1_2.liquidity_mass_cancel_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_expressorders_meo_v1_2.liquidity_mass_cancel_request.fields(buffer, offset, packet, parent)
  end
end

-- Complex Binary Order Request
miax_sapphireoptions_expressorders_meo_v1_2.complex_binary_order_request = {}

-- Size: Complex Binary Order Request
miax_sapphireoptions_expressorders_meo_v1_2.complex_binary_order_request.size =
  miax_sapphireoptions_expressorders_meo_v1_2.client_message_id.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.mpid.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.client_send_time.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.strategy_id.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.time_in_force.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.net_price.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.size.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.side.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.stock_sell_short_indicator.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.reserved_16.size

-- Display: Complex Binary Order Request
miax_sapphireoptions_expressorders_meo_v1_2.complex_binary_order_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Binary Order Request
miax_sapphireoptions_expressorders_meo_v1_2.complex_binary_order_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Message Id: BinaryU
  index, client_message_id = miax_sapphireoptions_expressorders_meo_v1_2.client_message_id.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_sapphireoptions_expressorders_meo_v1_2.mpid.dissect(buffer, index, packet, parent)

  -- Client Send Time: TimeStamp
  index, client_send_time = miax_sapphireoptions_expressorders_meo_v1_2.client_send_time.dissect(buffer, index, packet, parent)

  -- Strategy Id: BinaryU
  index, strategy_id = miax_sapphireoptions_expressorders_meo_v1_2.strategy_id.dissect(buffer, index, packet, parent)

  -- Time In Force: Alphanumeric
  index, time_in_force = miax_sapphireoptions_expressorders_meo_v1_2.time_in_force.dissect(buffer, index, packet, parent)

  -- Net Price: BinaryPrc4S
  index, net_price = miax_sapphireoptions_expressorders_meo_v1_2.net_price.dissect(buffer, index, packet, parent)

  -- Size: BinaryU
  index, size = miax_sapphireoptions_expressorders_meo_v1_2.size.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = miax_sapphireoptions_expressorders_meo_v1_2.side.dissect(buffer, index, packet, parent)

  -- Stock Sell Short Indicator: Alphanumeric
  index, stock_sell_short_indicator = miax_sapphireoptions_expressorders_meo_v1_2.stock_sell_short_indicator.dissect(buffer, index, packet, parent)

  -- Reserved 16: Alphanumeric
  if show.padding then
    index, reserved_16 = miax_sapphireoptions_expressorders_meo_v1_2.reserved_16.dissect(buffer, index, packet, parent)
  else
    index = index + miax_sapphireoptions_expressorders_meo_v1_2.reserved_16.size
  end

  return index
end

-- Dissect: Complex Binary Order Request
miax_sapphireoptions_expressorders_meo_v1_2.complex_binary_order_request.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.complex_binary_order_request, buffer(offset, 0))
    local index = miax_sapphireoptions_expressorders_meo_v1_2.complex_binary_order_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_expressorders_meo_v1_2.complex_binary_order_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_expressorders_meo_v1_2.complex_binary_order_request.fields(buffer, offset, packet, parent)
  end
end

-- Order Response
miax_sapphireoptions_expressorders_meo_v1_2.order_response = {}

-- Size: Order Response
miax_sapphireoptions_expressorders_meo_v1_2.order_response.size =
  miax_sapphireoptions_expressorders_meo_v1_2.order_status.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.engine_sequence_number.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.engine_transaction_time.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.open_size.size

-- Display: Order Response
miax_sapphireoptions_expressorders_meo_v1_2.order_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Response
miax_sapphireoptions_expressorders_meo_v1_2.order_response.fields = function(buffer, offset, packet, parent, order_response_index)
  local index = offset

  -- Implicit Order Response Index
  if order_response_index ~= nil and show.indexes then
    local iteration = parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.order_response_index, order_response_index)
    iteration:set_generated()
  end

  -- Order Status: Alphanumeric
  index, order_status = miax_sapphireoptions_expressorders_meo_v1_2.order_status.dissect(buffer, index, packet, parent)

  -- Engine Sequence Number: BinaryU
  index, engine_sequence_number = miax_sapphireoptions_expressorders_meo_v1_2.engine_sequence_number.dissect(buffer, index, packet, parent)

  -- Engine Transaction Time: NanoTime
  index, engine_transaction_time = miax_sapphireoptions_expressorders_meo_v1_2.engine_transaction_time.dissect(buffer, index, packet, parent)

  -- Open Size: BinaryU
  index, open_size = miax_sapphireoptions_expressorders_meo_v1_2.open_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Response
miax_sapphireoptions_expressorders_meo_v1_2.order_response.dissect = function(buffer, offset, packet, parent, order_response_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.order_response, buffer(offset, 0))
    local index = miax_sapphireoptions_expressorders_meo_v1_2.order_response.fields(buffer, offset, packet, parent, order_response_index)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_expressorders_meo_v1_2.order_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_expressorders_meo_v1_2.order_response.fields(buffer, offset, packet, parent, order_response_index)
  end
end

-- Simple Bulk Liquidity Message Response
miax_sapphireoptions_expressorders_meo_v1_2.simple_bulk_liquidity_message_response = {}

-- Calculate size of: Simple Bulk Liquidity Message Response
miax_sapphireoptions_expressorders_meo_v1_2.simple_bulk_liquidity_message_response.size = function(buffer, offset)
  local index = 0

  index = index + miax_sapphireoptions_expressorders_meo_v1_2.client_message_id.size

  index = index + miax_sapphireoptions_expressorders_meo_v1_2.bulk_order_status.size

  index = index + miax_sapphireoptions_expressorders_meo_v1_2.order_count.size

  index = index + miax_sapphireoptions_expressorders_meo_v1_2.invalid_order_count.size

  index = index + miax_sapphireoptions_expressorders_meo_v1_2.order_ack_time.size

  -- Calculate field size from count
  local order_response_count = buffer(offset + index - 9, 1):uint()
  index = index + order_response_count * 21

  return index
end

-- Display: Simple Bulk Liquidity Message Response
miax_sapphireoptions_expressorders_meo_v1_2.simple_bulk_liquidity_message_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Bulk Liquidity Message Response
miax_sapphireoptions_expressorders_meo_v1_2.simple_bulk_liquidity_message_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Message Id: BinaryU
  index, client_message_id = miax_sapphireoptions_expressorders_meo_v1_2.client_message_id.dissect(buffer, index, packet, parent)

  -- Bulk Order Status: Alphanumeric
  index, bulk_order_status = miax_sapphireoptions_expressorders_meo_v1_2.bulk_order_status.dissect(buffer, index, packet, parent)

  -- Order Count: BinaryU
  index, order_count = miax_sapphireoptions_expressorders_meo_v1_2.order_count.dissect(buffer, index, packet, parent)

  -- Invalid Order Count: BinaryU
  index, invalid_order_count = miax_sapphireoptions_expressorders_meo_v1_2.invalid_order_count.dissect(buffer, index, packet, parent)

  -- Order Ack Time: NanoTime
  index, order_ack_time = miax_sapphireoptions_expressorders_meo_v1_2.order_ack_time.dissect(buffer, index, packet, parent)

  -- Repeating: Order Response
  for order_response_index = 1, invalid_order_count do
    index, order_response = miax_sapphireoptions_expressorders_meo_v1_2.order_response.dissect(buffer, index, packet, parent, order_response_index)
  end

  return index
end

-- Dissect: Simple Bulk Liquidity Message Response
miax_sapphireoptions_expressorders_meo_v1_2.simple_bulk_liquidity_message_response.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.simple_bulk_liquidity_message_response, buffer(offset, 0))
    local index = miax_sapphireoptions_expressorders_meo_v1_2.simple_bulk_liquidity_message_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_expressorders_meo_v1_2.simple_bulk_liquidity_message_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_expressorders_meo_v1_2.simple_bulk_liquidity_message_response.fields(buffer, offset, packet, parent)
  end
end

-- Liquidity Units
miax_sapphireoptions_expressorders_meo_v1_2.liquidity_units = {}

-- Size: Liquidity Units
miax_sapphireoptions_expressorders_meo_v1_2.liquidity_units.size =
  miax_sapphireoptions_expressorders_meo_v1_2.liquidity_unit.size

-- Display: Liquidity Units
miax_sapphireoptions_expressorders_meo_v1_2.liquidity_units.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Liquidity Units
miax_sapphireoptions_expressorders_meo_v1_2.liquidity_units.fields = function(buffer, offset, packet, parent, liquidity_units_index)
  local index = offset

  -- Implicit Liquidity Units Index
  if liquidity_units_index ~= nil and show.indexes then
    local iteration = parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.liquidity_units_index, liquidity_units_index)
    iteration:set_generated()
  end

  -- Liquidity Unit: BinaryU
  index, liquidity_unit = miax_sapphireoptions_expressorders_meo_v1_2.liquidity_unit.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Liquidity Units
miax_sapphireoptions_expressorders_meo_v1_2.liquidity_units.dissect = function(buffer, offset, packet, parent, liquidity_units_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.liquidity_units, buffer(offset, 0))
    local index = miax_sapphireoptions_expressorders_meo_v1_2.liquidity_units.fields(buffer, offset, packet, parent, liquidity_units_index)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_expressorders_meo_v1_2.liquidity_units.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_expressorders_meo_v1_2.liquidity_units.fields(buffer, offset, packet, parent, liquidity_units_index)
  end
end

-- Simple Bulk Liquidity Message
miax_sapphireoptions_expressorders_meo_v1_2.simple_bulk_liquidity_message = {}

-- Calculate size of: Simple Bulk Liquidity Message
miax_sapphireoptions_expressorders_meo_v1_2.simple_bulk_liquidity_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_sapphireoptions_expressorders_meo_v1_2.client_message_id.size

  index = index + miax_sapphireoptions_expressorders_meo_v1_2.client_send_time.size

  index = index + miax_sapphireoptions_expressorders_meo_v1_2.liquidity_unit_count.size

  index = index + miax_sapphireoptions_expressorders_meo_v1_2.reserved_4.size

  -- Calculate field size from count
  local liquidity_units_count = buffer(offset + index - 5, 1):uint()
  index = index + liquidity_units_count * 40

  return index
end

-- Display: Simple Bulk Liquidity Message
miax_sapphireoptions_expressorders_meo_v1_2.simple_bulk_liquidity_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Bulk Liquidity Message
miax_sapphireoptions_expressorders_meo_v1_2.simple_bulk_liquidity_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Message Id: BinaryU
  index, client_message_id = miax_sapphireoptions_expressorders_meo_v1_2.client_message_id.dissect(buffer, index, packet, parent)

  -- Client Send Time: TimeStamp
  index, client_send_time = miax_sapphireoptions_expressorders_meo_v1_2.client_send_time.dissect(buffer, index, packet, parent)

  -- Liquidity Unit Count: BinaryU
  index, liquidity_unit_count = miax_sapphireoptions_expressorders_meo_v1_2.liquidity_unit_count.dissect(buffer, index, packet, parent)

  -- Reserved 4: BinaryU
  if show.padding then
    index, reserved_4 = miax_sapphireoptions_expressorders_meo_v1_2.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + miax_sapphireoptions_expressorders_meo_v1_2.reserved_4.size
  end

  -- Repeating: Liquidity Units
  for liquidity_units_index = 1, liquidity_unit_count do
    index, liquidity_units = miax_sapphireoptions_expressorders_meo_v1_2.liquidity_units.dissect(buffer, index, packet, parent, liquidity_units_index)
  end

  return index
end

-- Dissect: Simple Bulk Liquidity Message
miax_sapphireoptions_expressorders_meo_v1_2.simple_bulk_liquidity_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.simple_bulk_liquidity_message, buffer(offset, 0))
    local index = miax_sapphireoptions_expressorders_meo_v1_2.simple_bulk_liquidity_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_expressorders_meo_v1_2.simple_bulk_liquidity_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_expressorders_meo_v1_2.simple_bulk_liquidity_message.fields(buffer, offset, packet, parent)
  end
end

-- Series Assignment Response
miax_sapphireoptions_expressorders_meo_v1_2.series_assignment_response = {}

-- Size: Series Assignment Response
miax_sapphireoptions_expressorders_meo_v1_2.series_assignment_response.size =
  miax_sapphireoptions_expressorders_meo_v1_2.client_message_id.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.mpid.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.assignment_settings_status.size

-- Display: Series Assignment Response
miax_sapphireoptions_expressorders_meo_v1_2.series_assignment_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Series Assignment Response
miax_sapphireoptions_expressorders_meo_v1_2.series_assignment_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Message Id: BinaryU
  index, client_message_id = miax_sapphireoptions_expressorders_meo_v1_2.client_message_id.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_sapphireoptions_expressorders_meo_v1_2.mpid.dissect(buffer, index, packet, parent)

  -- Assignment Settings Status: Alphanumeric
  index, assignment_settings_status = miax_sapphireoptions_expressorders_meo_v1_2.assignment_settings_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Series Assignment Response
miax_sapphireoptions_expressorders_meo_v1_2.series_assignment_response.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.series_assignment_response, buffer(offset, 0))
    local index = miax_sapphireoptions_expressorders_meo_v1_2.series_assignment_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_expressorders_meo_v1_2.series_assignment_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_expressorders_meo_v1_2.series_assignment_response.fields(buffer, offset, packet, parent)
  end
end

-- Series Assignment Request
miax_sapphireoptions_expressorders_meo_v1_2.series_assignment_request = {}

-- Size: Series Assignment Request
miax_sapphireoptions_expressorders_meo_v1_2.series_assignment_request.size =
  miax_sapphireoptions_expressorders_meo_v1_2.client_message_id.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.mpid.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.product_id.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.action.size

-- Display: Series Assignment Request
miax_sapphireoptions_expressorders_meo_v1_2.series_assignment_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Series Assignment Request
miax_sapphireoptions_expressorders_meo_v1_2.series_assignment_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Message Id: BinaryU
  index, client_message_id = miax_sapphireoptions_expressorders_meo_v1_2.client_message_id.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_sapphireoptions_expressorders_meo_v1_2.mpid.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_sapphireoptions_expressorders_meo_v1_2.product_id.dissect(buffer, index, packet, parent)

  -- Action: Alphanumeric
  index, action = miax_sapphireoptions_expressorders_meo_v1_2.action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Series Assignment Request
miax_sapphireoptions_expressorders_meo_v1_2.series_assignment_request.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.series_assignment_request, buffer(offset, 0))
    local index = miax_sapphireoptions_expressorders_meo_v1_2.series_assignment_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_expressorders_meo_v1_2.series_assignment_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_expressorders_meo_v1_2.series_assignment_request.fields(buffer, offset, packet, parent)
  end
end

-- Arm 2 Underlying Level Protection Settings Update Response
miax_sapphireoptions_expressorders_meo_v1_2.arm_2_underlying_level_protection_settings_update_response = {}

-- Size: Arm 2 Underlying Level Protection Settings Update Response
miax_sapphireoptions_expressorders_meo_v1_2.arm_2_underlying_level_protection_settings_update_response.size =
  miax_sapphireoptions_expressorders_meo_v1_2.client_message_id.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.mpid.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.underlying_symbol.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.arm_2_settings_update_status.size

-- Display: Arm 2 Underlying Level Protection Settings Update Response
miax_sapphireoptions_expressorders_meo_v1_2.arm_2_underlying_level_protection_settings_update_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Arm 2 Underlying Level Protection Settings Update Response
miax_sapphireoptions_expressorders_meo_v1_2.arm_2_underlying_level_protection_settings_update_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Message Id: BinaryU
  index, client_message_id = miax_sapphireoptions_expressorders_meo_v1_2.client_message_id.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_sapphireoptions_expressorders_meo_v1_2.mpid.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_sapphireoptions_expressorders_meo_v1_2.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Arm 2 Settings Update Status: Alphanumeric
  index, arm_2_settings_update_status = miax_sapphireoptions_expressorders_meo_v1_2.arm_2_settings_update_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Arm 2 Underlying Level Protection Settings Update Response
miax_sapphireoptions_expressorders_meo_v1_2.arm_2_underlying_level_protection_settings_update_response.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.arm_2_underlying_level_protection_settings_update_response, buffer(offset, 0))
    local index = miax_sapphireoptions_expressorders_meo_v1_2.arm_2_underlying_level_protection_settings_update_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_expressorders_meo_v1_2.arm_2_underlying_level_protection_settings_update_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_expressorders_meo_v1_2.arm_2_underlying_level_protection_settings_update_response.fields(buffer, offset, packet, parent)
  end
end

-- Arm 2 Underlying Level Protection Settings Update Request
miax_sapphireoptions_expressorders_meo_v1_2.arm_2_underlying_level_protection_settings_update_request = {}

-- Size: Arm 2 Underlying Level Protection Settings Update Request
miax_sapphireoptions_expressorders_meo_v1_2.arm_2_underlying_level_protection_settings_update_request.size =
  miax_sapphireoptions_expressorders_meo_v1_2.client_message_id.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.mpid.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.action.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.underlying_symbol.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.arm_threshold_count.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.arm_2_counting_period.size

-- Display: Arm 2 Underlying Level Protection Settings Update Request
miax_sapphireoptions_expressorders_meo_v1_2.arm_2_underlying_level_protection_settings_update_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Arm 2 Underlying Level Protection Settings Update Request
miax_sapphireoptions_expressorders_meo_v1_2.arm_2_underlying_level_protection_settings_update_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Message Id: BinaryU
  index, client_message_id = miax_sapphireoptions_expressorders_meo_v1_2.client_message_id.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_sapphireoptions_expressorders_meo_v1_2.mpid.dissect(buffer, index, packet, parent)

  -- Action: Alphanumeric
  index, action = miax_sapphireoptions_expressorders_meo_v1_2.action.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_sapphireoptions_expressorders_meo_v1_2.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Arm Threshold Count: Binary4U
  index, arm_threshold_count = miax_sapphireoptions_expressorders_meo_v1_2.arm_threshold_count.dissect(buffer, index, packet, parent)

  -- Arm 2 Counting Period: Binary4U
  index, arm_2_counting_period = miax_sapphireoptions_expressorders_meo_v1_2.arm_2_counting_period.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Arm 2 Underlying Level Protection Settings Update Request
miax_sapphireoptions_expressorders_meo_v1_2.arm_2_underlying_level_protection_settings_update_request.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.arm_2_underlying_level_protection_settings_update_request, buffer(offset, 0))
    local index = miax_sapphireoptions_expressorders_meo_v1_2.arm_2_underlying_level_protection_settings_update_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_expressorders_meo_v1_2.arm_2_underlying_level_protection_settings_update_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_expressorders_meo_v1_2.arm_2_underlying_level_protection_settings_update_request.fields(buffer, offset, packet, parent)
  end
end

-- Arm Settings Update Response
miax_sapphireoptions_expressorders_meo_v1_2.arm_settings_update_response = {}

-- Size: Arm Settings Update Response
miax_sapphireoptions_expressorders_meo_v1_2.arm_settings_update_response.size =
  miax_sapphireoptions_expressorders_meo_v1_2.client_message_id.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.mpid.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.underlying_symbol.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.arm_settings_update_status.size

-- Display: Arm Settings Update Response
miax_sapphireoptions_expressorders_meo_v1_2.arm_settings_update_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Arm Settings Update Response
miax_sapphireoptions_expressorders_meo_v1_2.arm_settings_update_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Message Id: BinaryU
  index, client_message_id = miax_sapphireoptions_expressorders_meo_v1_2.client_message_id.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_sapphireoptions_expressorders_meo_v1_2.mpid.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_sapphireoptions_expressorders_meo_v1_2.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Arm Settings Update Status: Alphanumeric
  index, arm_settings_update_status = miax_sapphireoptions_expressorders_meo_v1_2.arm_settings_update_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Arm Settings Update Response
miax_sapphireoptions_expressorders_meo_v1_2.arm_settings_update_response.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.arm_settings_update_response, buffer(offset, 0))
    local index = miax_sapphireoptions_expressorders_meo_v1_2.arm_settings_update_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_expressorders_meo_v1_2.arm_settings_update_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_expressorders_meo_v1_2.arm_settings_update_response.fields(buffer, offset, packet, parent)
  end
end

-- Arm Settings Update Request
miax_sapphireoptions_expressorders_meo_v1_2.arm_settings_update_request = {}

-- Size: Arm Settings Update Request
miax_sapphireoptions_expressorders_meo_v1_2.arm_settings_update_request.size =
  miax_sapphireoptions_expressorders_meo_v1_2.client_message_id.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.mpid.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.action.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.underlying_symbol.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.allowable_engagement_percentage.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.counting_period.size

-- Display: Arm Settings Update Request
miax_sapphireoptions_expressorders_meo_v1_2.arm_settings_update_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Arm Settings Update Request
miax_sapphireoptions_expressorders_meo_v1_2.arm_settings_update_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Message Id: BinaryU
  index, client_message_id = miax_sapphireoptions_expressorders_meo_v1_2.client_message_id.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_sapphireoptions_expressorders_meo_v1_2.mpid.dissect(buffer, index, packet, parent)

  -- Action: Alphanumeric
  index, action = miax_sapphireoptions_expressorders_meo_v1_2.action.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_sapphireoptions_expressorders_meo_v1_2.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Allowable Engagement Percentage: BinaryU
  index, allowable_engagement_percentage = miax_sapphireoptions_expressorders_meo_v1_2.allowable_engagement_percentage.dissect(buffer, index, packet, parent)

  -- Counting Period: BinaryU
  index, counting_period = miax_sapphireoptions_expressorders_meo_v1_2.counting_period.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Arm Settings Update Request
miax_sapphireoptions_expressorders_meo_v1_2.arm_settings_update_request.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.arm_settings_update_request, buffer(offset, 0))
    local index = miax_sapphireoptions_expressorders_meo_v1_2.arm_settings_update_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_expressorders_meo_v1_2.arm_settings_update_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_expressorders_meo_v1_2.arm_settings_update_request.fields(buffer, offset, packet, parent)
  end
end

-- Unsequenced Message
miax_sapphireoptions_expressorders_meo_v1_2.unsequenced_message = {}

-- Dispatch: Unsequenced Message
miax_sapphireoptions_expressorders_meo_v1_2.unsequenced_message.dispatch = {
  ["AS"] = miax_sapphireoptions_expressorders_meo_v1_2.arm_settings_update_request.dissect,
  ["AA"] = miax_sapphireoptions_expressorders_meo_v1_2.arm_settings_update_response.dissect,
  ["2S"] = miax_sapphireoptions_expressorders_meo_v1_2.arm_2_underlying_level_protection_settings_update_request.dissect,
  ["2R"] = miax_sapphireoptions_expressorders_meo_v1_2.arm_2_underlying_level_protection_settings_update_response.dissect,
  ["SA"] = miax_sapphireoptions_expressorders_meo_v1_2.series_assignment_request.dissect,
  ["AR"] = miax_sapphireoptions_expressorders_meo_v1_2.series_assignment_response.dissect,
  ["lm"] = miax_sapphireoptions_expressorders_meo_v1_2.simple_bulk_liquidity_message.dissect,
  ["LR"] = miax_sapphireoptions_expressorders_meo_v1_2.simple_bulk_liquidity_message_response.dissect,
  ["CO"] = miax_sapphireoptions_expressorders_meo_v1_2.complex_binary_order_request.dissect,
  ["xq"] = miax_sapphireoptions_expressorders_meo_v1_2.liquidity_mass_cancel_request.dissect,
  ["XR"] = miax_sapphireoptions_expressorders_meo_v1_2.liquidity_mass_cancel_response.dissect,
  ["P1"] = miax_sapphireoptions_expressorders_meo_v1_2.liquidity_protection_reset_request.dissect,
  ["PR"] = miax_sapphireoptions_expressorders_meo_v1_2.liquidity_protection_reset_response.dissect,
  ["SS"] = miax_sapphireoptions_expressorders_meo_v1_2.single_side_liquidity_protection_reset_request.dissect,
  ["ST"] = miax_sapphireoptions_expressorders_meo_v1_2.single_side_liquidity_protection_reset_response.dissect,
  ["QP"] = miax_sapphireoptions_expressorders_meo_v1_2.liquidity_protection_trigger_notification.dissect,
  ["SL"] = miax_sapphireoptions_expressorders_meo_v1_2.slap_protection_trigger_notification.dissect,
  ["XN"] = miax_sapphireoptions_expressorders_meo_v1_2.cancel_notification.dissect,
}

-- Dissect: Unsequenced Message
miax_sapphireoptions_expressorders_meo_v1_2.unsequenced_message.dissect = function(buffer, offset, packet, parent, unsequenced_message_type)
  local dissect = miax_sapphireoptions_expressorders_meo_v1_2.unsequenced_message.dispatch[unsequenced_message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Unsequenced Data Packet
miax_sapphireoptions_expressorders_meo_v1_2.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
miax_sapphireoptions_expressorders_meo_v1_2.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  return sesm_packet_length - 1
end

-- Display: Unsequenced Data Packet
miax_sapphireoptions_expressorders_meo_v1_2.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
miax_sapphireoptions_expressorders_meo_v1_2.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 2 Byte Ascii String Enum with 18 values
  index, unsequenced_message_type = miax_sapphireoptions_expressorders_meo_v1_2.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Unsequenced Message: Runtime Type with 18 branches
  index = miax_sapphireoptions_expressorders_meo_v1_2.unsequenced_message.dissect(buffer, index, packet, parent, unsequenced_message_type)

  return index
end

-- Dissect: Unsequenced Data Packet
miax_sapphireoptions_expressorders_meo_v1_2.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = miax_sapphireoptions_expressorders_meo_v1_2.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = miax_sapphireoptions_expressorders_meo_v1_2.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = miax_sapphireoptions_expressorders_meo_v1_2.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_sapphireoptions_expressorders_meo_v1_2.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Stock Leg Execution Notification
miax_sapphireoptions_expressorders_meo_v1_2.stock_leg_execution_notification = {}

-- Size: Stock Leg Execution Notification
miax_sapphireoptions_expressorders_meo_v1_2.stock_leg_execution_notification.size =
  miax_sapphireoptions_expressorders_meo_v1_2.notification_time.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.mpid.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.underlying_symbol.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.liquidity_type.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.client_message_id.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.trade_id.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.execution_id.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.trade_status.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.last_price.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.side.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.stock_sell_short_indicator.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.last_size.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.reserved_16.size

-- Display: Stock Leg Execution Notification
miax_sapphireoptions_expressorders_meo_v1_2.stock_leg_execution_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Leg Execution Notification
miax_sapphireoptions_expressorders_meo_v1_2.stock_leg_execution_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: NanoTime
  index, notification_time = miax_sapphireoptions_expressorders_meo_v1_2.notification_time.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_sapphireoptions_expressorders_meo_v1_2.mpid.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_sapphireoptions_expressorders_meo_v1_2.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Liquidity Type: Alphanumeric
  index, liquidity_type = miax_sapphireoptions_expressorders_meo_v1_2.liquidity_type.dissect(buffer, index, packet, parent)

  -- Client Message Id: BinaryU
  index, client_message_id = miax_sapphireoptions_expressorders_meo_v1_2.client_message_id.dissect(buffer, index, packet, parent)

  -- Trade Id: BinaryU
  index, trade_id = miax_sapphireoptions_expressorders_meo_v1_2.trade_id.dissect(buffer, index, packet, parent)

  -- Execution Id: BinaryU
  index, execution_id = miax_sapphireoptions_expressorders_meo_v1_2.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Status: Alphanumeric
  index, trade_status = miax_sapphireoptions_expressorders_meo_v1_2.trade_status.dissect(buffer, index, packet, parent)

  -- Last Price: BinaryPrc4U
  index, last_price = miax_sapphireoptions_expressorders_meo_v1_2.last_price.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = miax_sapphireoptions_expressorders_meo_v1_2.side.dissect(buffer, index, packet, parent)

  -- Stock Sell Short Indicator: Alphanumeric
  index, stock_sell_short_indicator = miax_sapphireoptions_expressorders_meo_v1_2.stock_sell_short_indicator.dissect(buffer, index, packet, parent)

  -- Last Size: BinaryU
  index, last_size = miax_sapphireoptions_expressorders_meo_v1_2.last_size.dissect(buffer, index, packet, parent)

  -- Reserved 16: Alphanumeric
  if show.padding then
    index, reserved_16 = miax_sapphireoptions_expressorders_meo_v1_2.reserved_16.dissect(buffer, index, packet, parent)
  else
    index = index + miax_sapphireoptions_expressorders_meo_v1_2.reserved_16.size
  end

  return index
end

-- Dissect: Stock Leg Execution Notification
miax_sapphireoptions_expressorders_meo_v1_2.stock_leg_execution_notification.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.stock_leg_execution_notification, buffer(offset, 0))
    local index = miax_sapphireoptions_expressorders_meo_v1_2.stock_leg_execution_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_expressorders_meo_v1_2.stock_leg_execution_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_expressorders_meo_v1_2.stock_leg_execution_notification.fields(buffer, offset, packet, parent)
  end
end

-- Legs
miax_sapphireoptions_expressorders_meo_v1_2.legs = {}

-- Size: Legs
miax_sapphireoptions_expressorders_meo_v1_2.legs.size =
  miax_sapphireoptions_expressorders_meo_v1_2.product_id.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.leg_ratio_qty.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.leg_side.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.reserved_8.size

-- Display: Legs
miax_sapphireoptions_expressorders_meo_v1_2.legs.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Legs
miax_sapphireoptions_expressorders_meo_v1_2.legs.fields = function(buffer, offset, packet, parent, legs_index)
  local index = offset

  -- Implicit Legs Index
  if legs_index ~= nil and show.indexes then
    local iteration = parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.legs_index, legs_index)
    iteration:set_generated()
  end

  -- Product Id: BinaryU
  index, product_id = miax_sapphireoptions_expressorders_meo_v1_2.product_id.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty: BinaryU
  index, leg_ratio_qty = miax_sapphireoptions_expressorders_meo_v1_2.leg_ratio_qty.dissect(buffer, index, packet, parent)

  -- Leg Side: Alphanumeric
  index, leg_side = miax_sapphireoptions_expressorders_meo_v1_2.leg_side.dissect(buffer, index, packet, parent)

  -- Reserved 8: Alphanumeric
  if show.padding then
    index, reserved_8 = miax_sapphireoptions_expressorders_meo_v1_2.reserved_8.dissect(buffer, index, packet, parent)
  else
    index = index + miax_sapphireoptions_expressorders_meo_v1_2.reserved_8.size
  end

  return index
end

-- Dissect: Legs
miax_sapphireoptions_expressorders_meo_v1_2.legs.dissect = function(buffer, offset, packet, parent, legs_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.legs, buffer(offset, 0))
    local index = miax_sapphireoptions_expressorders_meo_v1_2.legs.fields(buffer, offset, packet, parent, legs_index)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_expressorders_meo_v1_2.legs.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_expressorders_meo_v1_2.legs.fields(buffer, offset, packet, parent, legs_index)
  end
end

-- Complex Strategy Definition Notification
miax_sapphireoptions_expressorders_meo_v1_2.complex_strategy_definition_notification = {}

-- Calculate size of: Complex Strategy Definition Notification
miax_sapphireoptions_expressorders_meo_v1_2.complex_strategy_definition_notification.size = function(buffer, offset)
  local index = 0

  index = index + miax_sapphireoptions_expressorders_meo_v1_2.notification_time.size

  index = index + miax_sapphireoptions_expressorders_meo_v1_2.strategy_id.size

  index = index + miax_sapphireoptions_expressorders_meo_v1_2.underlying_symbol.size

  index = index + miax_sapphireoptions_expressorders_meo_v1_2.active_on_sapphire.size

  index = index + miax_sapphireoptions_expressorders_meo_v1_2.reserved_1.size

  index = index + miax_sapphireoptions_expressorders_meo_v1_2.update_reason.size

  index = index + miax_sapphireoptions_expressorders_meo_v1_2.reserved_10.size

  index = index + miax_sapphireoptions_expressorders_meo_v1_2.number_of_legs.size

  -- Calculate field size from count
  local legs_count = buffer(offset + index - 1, 1):uint()
  index = index + legs_count * 17

  return index
end

-- Display: Complex Strategy Definition Notification
miax_sapphireoptions_expressorders_meo_v1_2.complex_strategy_definition_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Strategy Definition Notification
miax_sapphireoptions_expressorders_meo_v1_2.complex_strategy_definition_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: NanoTime
  index, notification_time = miax_sapphireoptions_expressorders_meo_v1_2.notification_time.dissect(buffer, index, packet, parent)

  -- Strategy Id: BinaryU
  index, strategy_id = miax_sapphireoptions_expressorders_meo_v1_2.strategy_id.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_sapphireoptions_expressorders_meo_v1_2.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Active On Sapphire: Alphanumeric
  index, active_on_sapphire = miax_sapphireoptions_expressorders_meo_v1_2.active_on_sapphire.dissect(buffer, index, packet, parent)

  -- Reserved 1: BinaryU
  if show.padding then
    index, reserved_1 = miax_sapphireoptions_expressorders_meo_v1_2.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + miax_sapphireoptions_expressorders_meo_v1_2.reserved_1.size
  end

  -- Update Reason: Alphanumeric
  index, update_reason = miax_sapphireoptions_expressorders_meo_v1_2.update_reason.dissect(buffer, index, packet, parent)

  -- Reserved 10: BinaryU
  if show.padding then
    index, reserved_10 = miax_sapphireoptions_expressorders_meo_v1_2.reserved_10.dissect(buffer, index, packet, parent)
  else
    index = index + miax_sapphireoptions_expressorders_meo_v1_2.reserved_10.size
  end

  -- Number Of Legs: BinaryU
  index, number_of_legs = miax_sapphireoptions_expressorders_meo_v1_2.number_of_legs.dissect(buffer, index, packet, parent)

  -- Repeating: Legs
  for legs_index = 1, number_of_legs do
    index, legs = miax_sapphireoptions_expressorders_meo_v1_2.legs.dissect(buffer, index, packet, parent, legs_index)
  end

  return index
end

-- Dissect: Complex Strategy Definition Notification
miax_sapphireoptions_expressorders_meo_v1_2.complex_strategy_definition_notification.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.complex_strategy_definition_notification, buffer(offset, 0))
    local index = miax_sapphireoptions_expressorders_meo_v1_2.complex_strategy_definition_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_expressorders_meo_v1_2.complex_strategy_definition_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_expressorders_meo_v1_2.complex_strategy_definition_notification.fields(buffer, offset, packet, parent)
  end
end

-- Execution Notification
miax_sapphireoptions_expressorders_meo_v1_2.execution_notification = {}

-- Size: Execution Notification
miax_sapphireoptions_expressorders_meo_v1_2.execution_notification.size =
  miax_sapphireoptions_expressorders_meo_v1_2.notification_time.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.mpid.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.liquidity_type.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.product_id.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.client_message_id.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.client_order_id.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.bulk_order_index.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.trade_id.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.execution_id.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.trade_status.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.last_price.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.side.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.last_size.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.liquidity_indicator.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.reserved_15.size

-- Display: Execution Notification
miax_sapphireoptions_expressorders_meo_v1_2.execution_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Notification
miax_sapphireoptions_expressorders_meo_v1_2.execution_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: NanoTime
  index, notification_time = miax_sapphireoptions_expressorders_meo_v1_2.notification_time.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_sapphireoptions_expressorders_meo_v1_2.mpid.dissect(buffer, index, packet, parent)

  -- Liquidity Type: Alphanumeric
  index, liquidity_type = miax_sapphireoptions_expressorders_meo_v1_2.liquidity_type.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_sapphireoptions_expressorders_meo_v1_2.product_id.dissect(buffer, index, packet, parent)

  -- Client Message Id: BinaryU
  index, client_message_id = miax_sapphireoptions_expressorders_meo_v1_2.client_message_id.dissect(buffer, index, packet, parent)

  -- Client Order Id: BinaryU
  index, client_order_id = miax_sapphireoptions_expressorders_meo_v1_2.client_order_id.dissect(buffer, index, packet, parent)

  -- Bulk Order Index: BinaryU
  index, bulk_order_index = miax_sapphireoptions_expressorders_meo_v1_2.bulk_order_index.dissect(buffer, index, packet, parent)

  -- Trade Id: BinaryU
  index, trade_id = miax_sapphireoptions_expressorders_meo_v1_2.trade_id.dissect(buffer, index, packet, parent)

  -- Execution Id: BinaryU
  index, execution_id = miax_sapphireoptions_expressorders_meo_v1_2.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Status: Alphanumeric
  index, trade_status = miax_sapphireoptions_expressorders_meo_v1_2.trade_status.dissect(buffer, index, packet, parent)

  -- Last Price: BinaryPrc4U
  index, last_price = miax_sapphireoptions_expressorders_meo_v1_2.last_price.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = miax_sapphireoptions_expressorders_meo_v1_2.side.dissect(buffer, index, packet, parent)

  -- Last Size: BinaryU
  index, last_size = miax_sapphireoptions_expressorders_meo_v1_2.last_size.dissect(buffer, index, packet, parent)

  -- Liquidity Indicator: Alphanumeric
  index, liquidity_indicator = miax_sapphireoptions_expressorders_meo_v1_2.liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Reserved 15: BinaryU
  if show.padding then
    index, reserved_15 = miax_sapphireoptions_expressorders_meo_v1_2.reserved_15.dissect(buffer, index, packet, parent)
  else
    index = index + miax_sapphireoptions_expressorders_meo_v1_2.reserved_15.size
  end

  return index
end

-- Dissect: Execution Notification
miax_sapphireoptions_expressorders_meo_v1_2.execution_notification.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.execution_notification, buffer(offset, 0))
    local index = miax_sapphireoptions_expressorders_meo_v1_2.execution_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_expressorders_meo_v1_2.execution_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_expressorders_meo_v1_2.execution_notification.fields(buffer, offset, packet, parent)
  end
end

-- Arm 2 Firm Level Protection Notification
miax_sapphireoptions_expressorders_meo_v1_2.arm_2_firm_level_protection_notification = {}

-- Size: Arm 2 Firm Level Protection Notification
miax_sapphireoptions_expressorders_meo_v1_2.arm_2_firm_level_protection_notification.size =
  miax_sapphireoptions_expressorders_meo_v1_2.notification_time.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.arm_threshold_count.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.arm_2_counting_period.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.notification_type.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.reserved_16.size

-- Display: Arm 2 Firm Level Protection Notification
miax_sapphireoptions_expressorders_meo_v1_2.arm_2_firm_level_protection_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Arm 2 Firm Level Protection Notification
miax_sapphireoptions_expressorders_meo_v1_2.arm_2_firm_level_protection_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: NanoTime
  index, notification_time = miax_sapphireoptions_expressorders_meo_v1_2.notification_time.dissect(buffer, index, packet, parent)

  -- Arm Threshold Count: Binary4U
  index, arm_threshold_count = miax_sapphireoptions_expressorders_meo_v1_2.arm_threshold_count.dissect(buffer, index, packet, parent)

  -- Arm 2 Counting Period: Binary4U
  index, arm_2_counting_period = miax_sapphireoptions_expressorders_meo_v1_2.arm_2_counting_period.dissect(buffer, index, packet, parent)

  -- Notification Type: Alphanumeric
  index, notification_type = miax_sapphireoptions_expressorders_meo_v1_2.notification_type.dissect(buffer, index, packet, parent)

  -- Reserved 16: Alphanumeric
  if show.padding then
    index, reserved_16 = miax_sapphireoptions_expressorders_meo_v1_2.reserved_16.dissect(buffer, index, packet, parent)
  else
    index = index + miax_sapphireoptions_expressorders_meo_v1_2.reserved_16.size
  end

  return index
end

-- Dissect: Arm 2 Firm Level Protection Notification
miax_sapphireoptions_expressorders_meo_v1_2.arm_2_firm_level_protection_notification.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.arm_2_firm_level_protection_notification, buffer(offset, 0))
    local index = miax_sapphireoptions_expressorders_meo_v1_2.arm_2_firm_level_protection_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_expressorders_meo_v1_2.arm_2_firm_level_protection_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_expressorders_meo_v1_2.arm_2_firm_level_protection_notification.fields(buffer, offset, packet, parent)
  end
end

-- Arm 2 Underlying Level Protection Notification
miax_sapphireoptions_expressorders_meo_v1_2.arm_2_underlying_level_protection_notification = {}

-- Size: Arm 2 Underlying Level Protection Notification
miax_sapphireoptions_expressorders_meo_v1_2.arm_2_underlying_level_protection_notification.size =
  miax_sapphireoptions_expressorders_meo_v1_2.notification_time.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.mpid.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.underlying_symbol.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.notification_type.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.arm_threshold_count.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.arm_2_counting_period.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.reserved_16.size

-- Display: Arm 2 Underlying Level Protection Notification
miax_sapphireoptions_expressorders_meo_v1_2.arm_2_underlying_level_protection_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Arm 2 Underlying Level Protection Notification
miax_sapphireoptions_expressorders_meo_v1_2.arm_2_underlying_level_protection_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: NanoTime
  index, notification_time = miax_sapphireoptions_expressorders_meo_v1_2.notification_time.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_sapphireoptions_expressorders_meo_v1_2.mpid.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_sapphireoptions_expressorders_meo_v1_2.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Notification Type: Alphanumeric
  index, notification_type = miax_sapphireoptions_expressorders_meo_v1_2.notification_type.dissect(buffer, index, packet, parent)

  -- Arm Threshold Count: Binary4U
  index, arm_threshold_count = miax_sapphireoptions_expressorders_meo_v1_2.arm_threshold_count.dissect(buffer, index, packet, parent)

  -- Arm 2 Counting Period: Binary4U
  index, arm_2_counting_period = miax_sapphireoptions_expressorders_meo_v1_2.arm_2_counting_period.dissect(buffer, index, packet, parent)

  -- Reserved 16: Alphanumeric
  if show.padding then
    index, reserved_16 = miax_sapphireoptions_expressorders_meo_v1_2.reserved_16.dissect(buffer, index, packet, parent)
  else
    index = index + miax_sapphireoptions_expressorders_meo_v1_2.reserved_16.size
  end

  return index
end

-- Dissect: Arm 2 Underlying Level Protection Notification
miax_sapphireoptions_expressorders_meo_v1_2.arm_2_underlying_level_protection_notification.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.arm_2_underlying_level_protection_notification, buffer(offset, 0))
    local index = miax_sapphireoptions_expressorders_meo_v1_2.arm_2_underlying_level_protection_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_expressorders_meo_v1_2.arm_2_underlying_level_protection_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_expressorders_meo_v1_2.arm_2_underlying_level_protection_notification.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Liquidity Protection Trigger Notification
miax_sapphireoptions_expressorders_meo_v1_2.single_side_liquidity_protection_trigger_notification = {}

-- Size: Single Side Liquidity Protection Trigger Notification
miax_sapphireoptions_expressorders_meo_v1_2.single_side_liquidity_protection_trigger_notification.size =
  miax_sapphireoptions_expressorders_meo_v1_2.notification_time.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.mpid.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.security_id_scope.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.security_id.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.side.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.triggering_client_message_id.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.triggering_bulk_order_index.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.reserved_4.size

-- Display: Single Side Liquidity Protection Trigger Notification
miax_sapphireoptions_expressorders_meo_v1_2.single_side_liquidity_protection_trigger_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Liquidity Protection Trigger Notification
miax_sapphireoptions_expressorders_meo_v1_2.single_side_liquidity_protection_trigger_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: NanoTime
  index, notification_time = miax_sapphireoptions_expressorders_meo_v1_2.notification_time.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_sapphireoptions_expressorders_meo_v1_2.mpid.dissect(buffer, index, packet, parent)

  -- Security Id Scope: Alphanumeric
  index, security_id_scope = miax_sapphireoptions_expressorders_meo_v1_2.security_id_scope.dissect(buffer, index, packet, parent)

  -- Security Id: BinaryU
  index, security_id = miax_sapphireoptions_expressorders_meo_v1_2.security_id.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = miax_sapphireoptions_expressorders_meo_v1_2.side.dissect(buffer, index, packet, parent)

  -- Triggering Client Message Id: BinaryU
  index, triggering_client_message_id = miax_sapphireoptions_expressorders_meo_v1_2.triggering_client_message_id.dissect(buffer, index, packet, parent)

  -- Triggering Bulk Order Index: BinaryU
  index, triggering_bulk_order_index = miax_sapphireoptions_expressorders_meo_v1_2.triggering_bulk_order_index.dissect(buffer, index, packet, parent)

  -- Reserved 4: BinaryU
  if show.padding then
    index, reserved_4 = miax_sapphireoptions_expressorders_meo_v1_2.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + miax_sapphireoptions_expressorders_meo_v1_2.reserved_4.size
  end

  return index
end

-- Dissect: Single Side Liquidity Protection Trigger Notification
miax_sapphireoptions_expressorders_meo_v1_2.single_side_liquidity_protection_trigger_notification.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.single_side_liquidity_protection_trigger_notification, buffer(offset, 0))
    local index = miax_sapphireoptions_expressorders_meo_v1_2.single_side_liquidity_protection_trigger_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_expressorders_meo_v1_2.single_side_liquidity_protection_trigger_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_expressorders_meo_v1_2.single_side_liquidity_protection_trigger_notification.fields(buffer, offset, packet, parent)
  end
end

-- Arm 2 Underlying Level Protection Settings Notification
miax_sapphireoptions_expressorders_meo_v1_2.arm_2_underlying_level_protection_settings_notification = {}

-- Size: Arm 2 Underlying Level Protection Settings Notification
miax_sapphireoptions_expressorders_meo_v1_2.arm_2_underlying_level_protection_settings_notification.size =
  miax_sapphireoptions_expressorders_meo_v1_2.notification_time.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.mpid.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.action.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.underlying_symbol.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.arm_threshold_count.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.arm_2_counting_period.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.reserved_16.size

-- Display: Arm 2 Underlying Level Protection Settings Notification
miax_sapphireoptions_expressorders_meo_v1_2.arm_2_underlying_level_protection_settings_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Arm 2 Underlying Level Protection Settings Notification
miax_sapphireoptions_expressorders_meo_v1_2.arm_2_underlying_level_protection_settings_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: NanoTime
  index, notification_time = miax_sapphireoptions_expressorders_meo_v1_2.notification_time.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_sapphireoptions_expressorders_meo_v1_2.mpid.dissect(buffer, index, packet, parent)

  -- Action: Alphanumeric
  index, action = miax_sapphireoptions_expressorders_meo_v1_2.action.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_sapphireoptions_expressorders_meo_v1_2.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Arm Threshold Count: Binary4U
  index, arm_threshold_count = miax_sapphireoptions_expressorders_meo_v1_2.arm_threshold_count.dissect(buffer, index, packet, parent)

  -- Arm 2 Counting Period: Binary4U
  index, arm_2_counting_period = miax_sapphireoptions_expressorders_meo_v1_2.arm_2_counting_period.dissect(buffer, index, packet, parent)

  -- Reserved 16: Alphanumeric
  if show.padding then
    index, reserved_16 = miax_sapphireoptions_expressorders_meo_v1_2.reserved_16.dissect(buffer, index, packet, parent)
  else
    index = index + miax_sapphireoptions_expressorders_meo_v1_2.reserved_16.size
  end

  return index
end

-- Dissect: Arm 2 Underlying Level Protection Settings Notification
miax_sapphireoptions_expressorders_meo_v1_2.arm_2_underlying_level_protection_settings_notification.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.arm_2_underlying_level_protection_settings_notification, buffer(offset, 0))
    local index = miax_sapphireoptions_expressorders_meo_v1_2.arm_2_underlying_level_protection_settings_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_expressorders_meo_v1_2.arm_2_underlying_level_protection_settings_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_expressorders_meo_v1_2.arm_2_underlying_level_protection_settings_notification.fields(buffer, offset, packet, parent)
  end
end

-- Arm Protection Settings Notification
miax_sapphireoptions_expressorders_meo_v1_2.arm_protection_settings_notification = {}

-- Size: Arm Protection Settings Notification
miax_sapphireoptions_expressorders_meo_v1_2.arm_protection_settings_notification.size =
  miax_sapphireoptions_expressorders_meo_v1_2.notification_time.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.mpid.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.underlying_symbol.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.allowable_engagement_percentage.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.counting_period.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.action.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.source.size

-- Display: Arm Protection Settings Notification
miax_sapphireoptions_expressorders_meo_v1_2.arm_protection_settings_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Arm Protection Settings Notification
miax_sapphireoptions_expressorders_meo_v1_2.arm_protection_settings_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: NanoTime
  index, notification_time = miax_sapphireoptions_expressorders_meo_v1_2.notification_time.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_sapphireoptions_expressorders_meo_v1_2.mpid.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_sapphireoptions_expressorders_meo_v1_2.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Allowable Engagement Percentage: BinaryU
  index, allowable_engagement_percentage = miax_sapphireoptions_expressorders_meo_v1_2.allowable_engagement_percentage.dissect(buffer, index, packet, parent)

  -- Counting Period: BinaryU
  index, counting_period = miax_sapphireoptions_expressorders_meo_v1_2.counting_period.dissect(buffer, index, packet, parent)

  -- Action: Alphanumeric
  index, action = miax_sapphireoptions_expressorders_meo_v1_2.action.dissect(buffer, index, packet, parent)

  -- Source: Alphanumeric
  index, source = miax_sapphireoptions_expressorders_meo_v1_2.source.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Arm Protection Settings Notification
miax_sapphireoptions_expressorders_meo_v1_2.arm_protection_settings_notification.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.arm_protection_settings_notification, buffer(offset, 0))
    local index = miax_sapphireoptions_expressorders_meo_v1_2.arm_protection_settings_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_expressorders_meo_v1_2.arm_protection_settings_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_expressorders_meo_v1_2.arm_protection_settings_notification.fields(buffer, offset, packet, parent)
  end
end

-- Opening Width Relief Notification
miax_sapphireoptions_expressorders_meo_v1_2.opening_width_relief_notification = {}

-- Size: Opening Width Relief Notification
miax_sapphireoptions_expressorders_meo_v1_2.opening_width_relief_notification.size =
  miax_sapphireoptions_expressorders_meo_v1_2.notification_time.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.underlying_symbol.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.relief_multiplier.size

-- Display: Opening Width Relief Notification
miax_sapphireoptions_expressorders_meo_v1_2.opening_width_relief_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Opening Width Relief Notification
miax_sapphireoptions_expressorders_meo_v1_2.opening_width_relief_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: NanoTime
  index, notification_time = miax_sapphireoptions_expressorders_meo_v1_2.notification_time.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_sapphireoptions_expressorders_meo_v1_2.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Relief Multiplier: BinaryPrc4U
  index, relief_multiplier = miax_sapphireoptions_expressorders_meo_v1_2.relief_multiplier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Opening Width Relief Notification
miax_sapphireoptions_expressorders_meo_v1_2.opening_width_relief_notification.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.opening_width_relief_notification, buffer(offset, 0))
    local index = miax_sapphireoptions_expressorders_meo_v1_2.opening_width_relief_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_expressorders_meo_v1_2.opening_width_relief_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_expressorders_meo_v1_2.opening_width_relief_notification.fields(buffer, offset, packet, parent)
  end
end

-- Underlying Trading Status Notification
miax_sapphireoptions_expressorders_meo_v1_2.underlying_trading_status_notification = {}

-- Size: Underlying Trading Status Notification
miax_sapphireoptions_expressorders_meo_v1_2.underlying_trading_status_notification.size =
  miax_sapphireoptions_expressorders_meo_v1_2.notification_time.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.underlying_symbol.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.trading_status.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.event_reason.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.expected_event_time.size

-- Display: Underlying Trading Status Notification
miax_sapphireoptions_expressorders_meo_v1_2.underlying_trading_status_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Underlying Trading Status Notification
miax_sapphireoptions_expressorders_meo_v1_2.underlying_trading_status_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: NanoTime
  index, notification_time = miax_sapphireoptions_expressorders_meo_v1_2.notification_time.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_sapphireoptions_expressorders_meo_v1_2.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Trading Status: Alphanumeric
  index, trading_status = miax_sapphireoptions_expressorders_meo_v1_2.trading_status.dissect(buffer, index, packet, parent)

  -- Event Reason: Alphanumeric
  index, event_reason = miax_sapphireoptions_expressorders_meo_v1_2.event_reason.dissect(buffer, index, packet, parent)

  -- Expected Event Time: NanoTime
  index, expected_event_time = miax_sapphireoptions_expressorders_meo_v1_2.expected_event_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlying Trading Status Notification
miax_sapphireoptions_expressorders_meo_v1_2.underlying_trading_status_notification.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.underlying_trading_status_notification, buffer(offset, 0))
    local index = miax_sapphireoptions_expressorders_meo_v1_2.underlying_trading_status_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_expressorders_meo_v1_2.underlying_trading_status_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_expressorders_meo_v1_2.underlying_trading_status_notification.fields(buffer, offset, packet, parent)
  end
end

-- System State Notification
miax_sapphireoptions_expressorders_meo_v1_2.system_state_notification = {}

-- Size: System State Notification
miax_sapphireoptions_expressorders_meo_v1_2.system_state_notification.size =
  miax_sapphireoptions_expressorders_meo_v1_2.notification_time.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.meo_version.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.session_id.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.system_status.size

-- Display: System State Notification
miax_sapphireoptions_expressorders_meo_v1_2.system_state_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System State Notification
miax_sapphireoptions_expressorders_meo_v1_2.system_state_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: NanoTime
  index, notification_time = miax_sapphireoptions_expressorders_meo_v1_2.notification_time.dissect(buffer, index, packet, parent)

  -- Meo Version: Alphanumeric
  index, meo_version = miax_sapphireoptions_expressorders_meo_v1_2.meo_version.dissect(buffer, index, packet, parent)

  -- Session Id: BinaryU
  index, session_id = miax_sapphireoptions_expressorders_meo_v1_2.session_id.dissect(buffer, index, packet, parent)

  -- System Status: Alphanumeric
  index, system_status = miax_sapphireoptions_expressorders_meo_v1_2.system_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System State Notification
miax_sapphireoptions_expressorders_meo_v1_2.system_state_notification.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.system_state_notification, buffer(offset, 0))
    local index = miax_sapphireoptions_expressorders_meo_v1_2.system_state_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_expressorders_meo_v1_2.system_state_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_expressorders_meo_v1_2.system_state_notification.fields(buffer, offset, packet, parent)
  end
end

-- Complex Binary Order Response
miax_sapphireoptions_expressorders_meo_v1_2.complex_binary_order_response = {}

-- Size: Complex Binary Order Response
miax_sapphireoptions_expressorders_meo_v1_2.complex_binary_order_response.size =
  miax_sapphireoptions_expressorders_meo_v1_2.client_message_id.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.mpid.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.order_id.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.status.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.reserved_16.size

-- Display: Complex Binary Order Response
miax_sapphireoptions_expressorders_meo_v1_2.complex_binary_order_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Binary Order Response
miax_sapphireoptions_expressorders_meo_v1_2.complex_binary_order_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Message Id: BinaryU
  index, client_message_id = miax_sapphireoptions_expressorders_meo_v1_2.client_message_id.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_sapphireoptions_expressorders_meo_v1_2.mpid.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_sapphireoptions_expressorders_meo_v1_2.order_id.dissect(buffer, index, packet, parent)

  -- Status: Alphanumeric
  index, status = miax_sapphireoptions_expressorders_meo_v1_2.status.dissect(buffer, index, packet, parent)

  -- Reserved 16: Alphanumeric
  if show.padding then
    index, reserved_16 = miax_sapphireoptions_expressorders_meo_v1_2.reserved_16.dissect(buffer, index, packet, parent)
  else
    index = index + miax_sapphireoptions_expressorders_meo_v1_2.reserved_16.size
  end

  return index
end

-- Dissect: Complex Binary Order Response
miax_sapphireoptions_expressorders_meo_v1_2.complex_binary_order_response.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.complex_binary_order_response, buffer(offset, 0))
    local index = miax_sapphireoptions_expressorders_meo_v1_2.complex_binary_order_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_expressorders_meo_v1_2.complex_binary_order_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_expressorders_meo_v1_2.complex_binary_order_response.fields(buffer, offset, packet, parent)
  end
end

-- Series Update
miax_sapphireoptions_expressorders_meo_v1_2.series_update = {}

-- Size: Series Update
miax_sapphireoptions_expressorders_meo_v1_2.series_update.size =
  miax_sapphireoptions_expressorders_meo_v1_2.product_add_update_time.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.product_id.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.underlying_symbol.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.security_symbol.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.expiration_date.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.strike_price.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.call_or_put.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.opening_time.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.closing_time.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.restricted_option.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.long_term_option.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.active_on_sapphire.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.sapphire_bbo_posting_increment_indicator.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.order_acceptance_increment_indicator.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.opening_underlying_market_code.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.reserved_12.size

-- Display: Series Update
miax_sapphireoptions_expressorders_meo_v1_2.series_update.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Series Update
miax_sapphireoptions_expressorders_meo_v1_2.series_update.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Product Add Update Time: NanoTime
  index, product_add_update_time = miax_sapphireoptions_expressorders_meo_v1_2.product_add_update_time.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_sapphireoptions_expressorders_meo_v1_2.product_id.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_sapphireoptions_expressorders_meo_v1_2.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = miax_sapphireoptions_expressorders_meo_v1_2.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration Date: Alphanumeric
  index, expiration_date = miax_sapphireoptions_expressorders_meo_v1_2.expiration_date.dissect(buffer, index, packet, parent)

  -- Strike Price: BinaryPrc4U
  index, strike_price = miax_sapphireoptions_expressorders_meo_v1_2.strike_price.dissect(buffer, index, packet, parent)

  -- Call Or Put: Alphanumeric
  index, call_or_put = miax_sapphireoptions_expressorders_meo_v1_2.call_or_put.dissect(buffer, index, packet, parent)

  -- Opening Time: Alphanumeric
  index, opening_time = miax_sapphireoptions_expressorders_meo_v1_2.opening_time.dissect(buffer, index, packet, parent)

  -- Closing Time: Alphanumeric
  index, closing_time = miax_sapphireoptions_expressorders_meo_v1_2.closing_time.dissect(buffer, index, packet, parent)

  -- Restricted Option: Alphanumeric
  index, restricted_option = miax_sapphireoptions_expressorders_meo_v1_2.restricted_option.dissect(buffer, index, packet, parent)

  -- Long Term Option: Alphanumeric
  index, long_term_option = miax_sapphireoptions_expressorders_meo_v1_2.long_term_option.dissect(buffer, index, packet, parent)

  -- Active On Sapphire: Alphanumeric
  index, active_on_sapphire = miax_sapphireoptions_expressorders_meo_v1_2.active_on_sapphire.dissect(buffer, index, packet, parent)

  -- Sapphire Bbo Posting Increment Indicator: Alphanumeric
  index, sapphire_bbo_posting_increment_indicator = miax_sapphireoptions_expressorders_meo_v1_2.sapphire_bbo_posting_increment_indicator.dissect(buffer, index, packet, parent)

  -- Order Acceptance Increment Indicator: Alphanumeric
  index, order_acceptance_increment_indicator = miax_sapphireoptions_expressorders_meo_v1_2.order_acceptance_increment_indicator.dissect(buffer, index, packet, parent)

  -- Opening Underlying Market Code: Alphanumeric
  index, opening_underlying_market_code = miax_sapphireoptions_expressorders_meo_v1_2.opening_underlying_market_code.dissect(buffer, index, packet, parent)

  -- Reserved 12: BinaryU
  if show.padding then
    index, reserved_12 = miax_sapphireoptions_expressorders_meo_v1_2.reserved_12.dissect(buffer, index, packet, parent)
  else
    index = index + miax_sapphireoptions_expressorders_meo_v1_2.reserved_12.size
  end

  return index
end

-- Dissect: Series Update
miax_sapphireoptions_expressorders_meo_v1_2.series_update.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.series_update, buffer(offset, 0))
    local index = miax_sapphireoptions_expressorders_meo_v1_2.series_update.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_expressorders_meo_v1_2.series_update.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_expressorders_meo_v1_2.series_update.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
miax_sapphireoptions_expressorders_meo_v1_2.sequenced_message = {}

-- Dispatch: Sequenced Message
miax_sapphireoptions_expressorders_meo_v1_2.sequenced_message.dispatch = {
  ["SU"] = miax_sapphireoptions_expressorders_meo_v1_2.series_update.dissect,
  ["CR"] = miax_sapphireoptions_expressorders_meo_v1_2.complex_binary_order_response.dissect,
  ["SN"] = miax_sapphireoptions_expressorders_meo_v1_2.system_state_notification.dissect,
  ["UN"] = miax_sapphireoptions_expressorders_meo_v1_2.underlying_trading_status_notification.dissect,
  ["QN"] = miax_sapphireoptions_expressorders_meo_v1_2.opening_width_relief_notification.dissect,
  ["AN"] = miax_sapphireoptions_expressorders_meo_v1_2.arm_protection_settings_notification.dissect,
  ["A2"] = miax_sapphireoptions_expressorders_meo_v1_2.arm_2_underlying_level_protection_settings_notification.dissect,
  ["QX"] = miax_sapphireoptions_expressorders_meo_v1_2.single_side_liquidity_protection_trigger_notification.dissect,
  ["UP"] = miax_sapphireoptions_expressorders_meo_v1_2.arm_2_underlying_level_protection_notification.dissect,
  ["FP"] = miax_sapphireoptions_expressorders_meo_v1_2.arm_2_firm_level_protection_notification.dissect,
  ["XN"] = miax_sapphireoptions_expressorders_meo_v1_2.cancel_notification.dissect,
  ["EN"] = miax_sapphireoptions_expressorders_meo_v1_2.execution_notification.dissect,
  ["SC"] = miax_sapphireoptions_expressorders_meo_v1_2.complex_strategy_definition_notification.dissect,
  ["CS"] = miax_sapphireoptions_expressorders_meo_v1_2.stock_leg_execution_notification.dissect,
}

-- Dissect: Sequenced Message
miax_sapphireoptions_expressorders_meo_v1_2.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  local dissect = miax_sapphireoptions_expressorders_meo_v1_2.sequenced_message.dispatch[sequenced_message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Data Packet
miax_sapphireoptions_expressorders_meo_v1_2.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
miax_sapphireoptions_expressorders_meo_v1_2.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  return sesm_packet_length - 1
end

-- Display: Sequenced Data Packet
miax_sapphireoptions_expressorders_meo_v1_2.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
miax_sapphireoptions_expressorders_meo_v1_2.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = miax_sapphireoptions_expressorders_meo_v1_2.sequence_number.dissect(buffer, index, packet, parent)

  -- Sequenced Message Type: 2 Byte Ascii String Enum with 14 values
  index, sequenced_message_type = miax_sapphireoptions_expressorders_meo_v1_2.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 14 branches
  index = miax_sapphireoptions_expressorders_meo_v1_2.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
miax_sapphireoptions_expressorders_meo_v1_2.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = miax_sapphireoptions_expressorders_meo_v1_2.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.sequenced_data_packet, buffer(offset, 0))
    local current = miax_sapphireoptions_expressorders_meo_v1_2.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = miax_sapphireoptions_expressorders_meo_v1_2.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_sapphireoptions_expressorders_meo_v1_2.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
end

-- Sesm Payload
miax_sapphireoptions_expressorders_meo_v1_2.sesm_payload = {}

-- Dispatch: Sesm Payload
miax_sapphireoptions_expressorders_meo_v1_2.sesm_payload.dispatch = {
  ["S"] = miax_sapphireoptions_expressorders_meo_v1_2.sequenced_data_packet.dissect,
  ["U"] = miax_sapphireoptions_expressorders_meo_v1_2.unsequenced_data_packet.dissect,
  ["L"] = miax_sapphireoptions_expressorders_meo_v1_2.login_request.dissect,
  ["R"] = miax_sapphireoptions_expressorders_meo_v1_2.login_response.dissect,
  ["C"] = miax_sapphireoptions_expressorders_meo_v1_2.synchronization_complete.dissect,
  ["A"] = miax_sapphireoptions_expressorders_meo_v1_2.retransmission_request.dissect,
  ["X"] = miax_sapphireoptions_expressorders_meo_v1_2.logout_request.dissect,
  ["G"] = miax_sapphireoptions_expressorders_meo_v1_2.goodbye_packet.dissect,
  ["E"] = miax_sapphireoptions_expressorders_meo_v1_2.end_of_session.dissect,
  ["0"] = miax_sapphireoptions_expressorders_meo_v1_2.server_heartbeat.dissect,
  ["1"] = miax_sapphireoptions_expressorders_meo_v1_2.client_heartbeat.dissect,
  ["T"] = miax_sapphireoptions_expressorders_meo_v1_2.test_packet.dissect,
}

-- Dissect: Sesm Payload
miax_sapphireoptions_expressorders_meo_v1_2.sesm_payload.dissect = function(buffer, offset, packet, parent, sesm_packet_type)
  local dissect = miax_sapphireoptions_expressorders_meo_v1_2.sesm_payload.dispatch[sesm_packet_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sesm Packet Header
miax_sapphireoptions_expressorders_meo_v1_2.sesm_packet_header = {}

-- Size: Sesm Packet Header
miax_sapphireoptions_expressorders_meo_v1_2.sesm_packet_header.size =
  miax_sapphireoptions_expressorders_meo_v1_2.sesm_packet_length.size + 
  miax_sapphireoptions_expressorders_meo_v1_2.sesm_packet_type.size

-- Display: Sesm Packet Header
miax_sapphireoptions_expressorders_meo_v1_2.sesm_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sesm Packet Header
miax_sapphireoptions_expressorders_meo_v1_2.sesm_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sesm Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, sesm_packet_length = miax_sapphireoptions_expressorders_meo_v1_2.sesm_packet_length.dissect(buffer, index, packet, parent)

  -- Sesm Packet Type: 1 Byte Ascii String Enum with 12 values
  index, sesm_packet_type = miax_sapphireoptions_expressorders_meo_v1_2.sesm_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sesm Packet Header
miax_sapphireoptions_expressorders_meo_v1_2.sesm_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.sesm_packet_header, buffer(offset, 0))
    local index = miax_sapphireoptions_expressorders_meo_v1_2.sesm_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_expressorders_meo_v1_2.sesm_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_expressorders_meo_v1_2.sesm_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Sesm Tcp Packet
miax_sapphireoptions_expressorders_meo_v1_2.sesm_tcp_packet = {}

-- Display: Sesm Tcp Packet
miax_sapphireoptions_expressorders_meo_v1_2.sesm_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sesm Tcp Packet
miax_sapphireoptions_expressorders_meo_v1_2.sesm_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_sesm_tcp_packet)
  local index = offset

  -- Sesm Packet Header: Struct of 2 fields
  index, sesm_packet_header = miax_sapphireoptions_expressorders_meo_v1_2.sesm_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Sesm Packet Type
  local sesm_packet_type = buffer(index - 1, 1):string()

  -- Sesm Payload: Runtime Type with 12 branches
  index = miax_sapphireoptions_expressorders_meo_v1_2.sesm_payload.dissect(buffer, index, packet, parent, sesm_packet_type)

  return index
end

-- Dissect: Sesm Tcp Packet
miax_sapphireoptions_expressorders_meo_v1_2.sesm_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_sesm_tcp_packet)
  local index = offset + size_of_sesm_tcp_packet

  -- Its fields read only its own bytes: a layout running past them is marked, not raised
  local bounded = buffer(0, math.min(index, buffer:len())):tvb()

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2.fields.sesm_tcp_packet, buffer(offset, 0))
    local decoded, failure = pcall(miax_sapphireoptions_expressorders_meo_v1_2.sesm_tcp_packet.fields, bounded, offset, packet, parent, size_of_sesm_tcp_packet)
    if not decoded then
      undecoded(failure, parent, miax_sapphireoptions_expressorders_meo_v1_2.experts.undecoded, "Sesm Tcp Packet does not decode within its "..size_of_sesm_tcp_packet.." bytes")
    end
    parent:set_len(size_of_sesm_tcp_packet)
    local display = miax_sapphireoptions_expressorders_meo_v1_2.sesm_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    local decoded, failure = pcall(miax_sapphireoptions_expressorders_meo_v1_2.sesm_tcp_packet.fields, bounded, offset, packet, parent, size_of_sesm_tcp_packet)
    if not decoded then
      undecoded(failure, parent, miax_sapphireoptions_expressorders_meo_v1_2.experts.undecoded, "Sesm Tcp Packet does not decode within its "..size_of_sesm_tcp_packet.." bytes")
    end

    return index
  end
end

-- Remaining Bytes For: Sesm Tcp Packet
local sesm_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < miax_sapphireoptions_expressorders_meo_v1_2.sesm_packet_header.size then
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
miax_sapphireoptions_expressorders_meo_v1_2.packet = {}

-- Verify required size of Tcp packet
miax_sapphireoptions_expressorders_meo_v1_2.packet.requiredsize = function(buffer)
  return buffer:len() >= miax_sapphireoptions_expressorders_meo_v1_2.sesm_packet_header.size
end

-- Dissect Packet
miax_sapphireoptions_expressorders_meo_v1_2.packet.dissect = function(buffer, packet, parent)
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
      index = miax_sapphireoptions_expressorders_meo_v1_2.sesm_tcp_packet.dissect(frame, index, packet, parent, size_of_sesm_tcp_packet)
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
function omi_miax_sapphireoptions_expressorders_meo_v1_2.init()
end

-- Dissector for Miax SapphireOptions ExpressOrders Meo 1.2
function omi_miax_sapphireoptions_expressorders_meo_v1_2.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_miax_sapphireoptions_expressorders_meo_v1_2.name

  -- Dissect protocol
  local protocol = parent:add(omi_miax_sapphireoptions_expressorders_meo_v1_2, buffer(), omi_miax_sapphireoptions_expressorders_meo_v1_2.description, "("..buffer:len().." Bytes)")
  return miax_sapphireoptions_expressorders_meo_v1_2.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Miax SapphireOptions ExpressOrders Meo 1.2 (Tcp)
local function omi_miax_sapphireoptions_expressorders_meo_v1_2_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not miax_sapphireoptions_expressorders_meo_v1_2.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_miax_sapphireoptions_expressorders_meo_v1_2
  omi_miax_sapphireoptions_expressorders_meo_v1_2.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Miax SapphireOptions ExpressOrders Meo 1.2
omi_miax_sapphireoptions_expressorders_meo_v1_2:register_heuristic("tcp", omi_miax_sapphireoptions_expressorders_meo_v1_2_tcp_heuristic)

-- Register Miax SapphireOptions ExpressOrders Meo 1.2 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_miax_sapphireoptions_expressorders_meo_v1_2)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Miami International Holdings
--   Version: 1.2
--   Date: Thursday, January 15, 2026
--   Specification: Sapphire MIAX Express Orders MEO v1.2.pdf
--   Specification: Sapphire TcpSessionMgmt SesM v1.1e.pdf
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
