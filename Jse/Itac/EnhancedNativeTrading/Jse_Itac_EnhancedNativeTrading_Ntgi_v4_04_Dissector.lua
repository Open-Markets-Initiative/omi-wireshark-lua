-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Jse Itac EnhancedNativeTrading Ntgi 4.04 Protocol
local omi_jse_itac_enhancednativetrading_ntgi_v4_04 = Proto("Omi.Jse.Itac.EnhancedNativeTrading.Ntgi.v4.04", "Jse Itac EnhancedNativeTrading Ntgi 4.04")

-- Protocol table
local jse_itac_enhancednativetrading_ntgi_v4_04 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Jse Itac EnhancedNativeTrading Ntgi 4.04 Fields
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.account = ProtoField.new("Account", "jse.itac.enhancednativetrading.ntgi.v4.04.account", ftypes.STRING, nil, nil, nil, "Client Account information")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.aggressor_indicator = ProtoField.new("Aggressor Indicator", "jse.itac.enhancednativetrading.ntgi.v4.04.aggressorindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01, "Whether the order initiator is the aggressor")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.anonymity = ProtoField.new("Anonymity", "jse.itac.enhancednativetrading.ntgi.v4.04.anonymity", ftypes.UINT8, nil, nil, nil, "Whether the order is anonymous or named")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.cancel_on_disconnect = ProtoField.new("Cancel On Disconnect", "jse.itac.enhancednativetrading.ntgi.v4.04.cancelondisconnect", ftypes.UINT8, nil, nil, nil, "Whether the order is cancelled on disconnect")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.capacity = ProtoField.new("Capacity", "jse.itac.enhancednativetrading.ntgi.v4.04.capacity", ftypes.UINT8, nil, nil, nil, "Capacity in which the order is submitted")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.client_order_id = ProtoField.new("Client Order Id", "jse.itac.enhancednativetrading.ntgi.v4.04.clientorderid", ftypes.STRING, nil, nil, nil, "Client specified identifier of the rejected message if it is available")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.comp_id = ProtoField.new("Comp Id", "jse.itac.enhancednativetrading.ntgi.v4.04.compid", ftypes.STRING, nil, nil, nil, "Interface User ID (CompID) assigned to the client")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.display_quantity = ProtoField.new("Display Quantity", "jse.itac.enhancednativetrading.ntgi.v4.04.displayquantity", ftypes.INT32, nil, nil, nil, "Maximum quantity that may be displayed")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.executed_price = ProtoField.new("Executed Price", "jse.itac.enhancednativetrading.ntgi.v4.04.executedprice", ftypes.DOUBLE, nil, nil, nil, "Executed price of the trade in Zac")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.executed_quantity = ProtoField.new("Executed Quantity", "jse.itac.enhancednativetrading.ntgi.v4.04.executedquantity", ftypes.INT32)
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.execution_id = ProtoField.new("Execution Id", "jse.itac.enhancednativetrading.ntgi.v4.04.executionid", ftypes.STRING, nil, nil, nil, "Unique Identifier of the Execution Report")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.execution_instruction = ProtoField.new("Execution Instruction", "jse.itac.enhancednativetrading.ntgi.v4.04.executioninstruction", ftypes.INT8, nil, nil, nil, "Whether hidden limit orders are excluded")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.execution_type = ProtoField.new("Execution Type", "jse.itac.enhancednativetrading.ntgi.v4.04.executiontype", ftypes.STRING, nil, nil, nil, "Execution Type of the order")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.expire_time = ProtoField.new("Expire Time", "jse.itac.enhancednativetrading.ntgi.v4.04.expiretime", ftypes.STRING, nil, nil, nil, "Date and time the order expires on")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.far_maturity_date = ProtoField.new("Far Maturity Date", "jse.itac.enhancednativetrading.ntgi.v4.04.farmaturitydate", ftypes.STRING, nil, nil, nil, "Far maturity date in the YYYYMMDD format")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.far_month_type = ProtoField.new("Far Month Type", "jse.itac.enhancednativetrading.ntgi.v4.04.farmonthtype", ftypes.INT32, nil, nil, nil, "Far month type of the reference instrument")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.firm_list = ProtoField.new("Firm List", "jse.itac.enhancednativetrading.ntgi.v4.04.firmlist", ftypes.STRING, nil, nil, nil, "Pipe separated list of firms that the announcement should be sent to")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.headline = ProtoField.new("Headline", "jse.itac.enhancednativetrading.ntgi.v4.04.headline", ftypes.STRING, nil, nil, nil, "Headline or subject of market operations announcement")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.indicator_flags = ProtoField.new("Indicator Flags", "jse.itac.enhancednativetrading.ntgi.v4.04.indicatorflags", ftypes.STRING, nil, nil, nil, "Aggressor or passive side of the trade")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.instruments = ProtoField.new("Instruments", "jse.itac.enhancednativetrading.ntgi.v4.04.instruments", ftypes.STRING, nil, nil, nil, "Pipe separated list of symbols of the instruments the announcements relate to")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.is_market_ops_request = ProtoField.new("Is Market Ops Request", "jse.itac.enhancednativetrading.ntgi.v4.04.ismarketopsrequest", ftypes.UINT8, nil, nil, nil, "Whether the request was submitted by Market Operations")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.last_opt_px = ProtoField.new("Last Opt Px", "jse.itac.enhancednativetrading.ntgi.v4.04.lastoptpx", ftypes.DOUBLE, nil, nil, nil, "Price or Converted volatility of the executed options instrument")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.leaves_quantity = ProtoField.new("Leaves Quantity", "jse.itac.enhancednativetrading.ntgi.v4.04.leavesquantity", ftypes.INT32, nil, nil, nil, "Quantity available for further execution")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.limit_price = ProtoField.new("Limit Price", "jse.itac.enhancednativetrading.ntgi.v4.04.limitprice", ftypes.DOUBLE)
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.mass_cancel_request_type = ProtoField.new("Mass Cancel Request Type", "jse.itac.enhancednativetrading.ntgi.v4.04.masscancelrequesttype", ftypes.UINT8, nil, nil, nil, "Scope of the mass cancel request")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.mass_cancel_status = ProtoField.new("Mass Cancel Status", "jse.itac.enhancednativetrading.ntgi.v4.04.masscancelstatus", ftypes.UINT8, nil, nil, nil, "Outcome of the mass cancel request")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.maturity_date = ProtoField.new("Maturity Date", "jse.itac.enhancednativetrading.ntgi.v4.04.maturitydate", ftypes.STRING, nil, nil, nil, "Maturity date in the YYYYMMDD format")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.message_length = ProtoField.new("Message Length", "jse.itac.enhancednativetrading.ntgi.v4.04.messagelength", ftypes.UINT16, nil, nil, nil, "Length of the message from the Message Type field onwards")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.message_type = ProtoField.new("Message Type", "jse.itac.enhancednativetrading.ntgi.v4.04.messagetype", ftypes.STRING, nil, nil, nil, "Type of message rejected")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.minimum_quantity = ProtoField.new("Minimum Quantity", "jse.itac.enhancednativetrading.ntgi.v4.04.minimumquantity", ftypes.INT32, nil, nil, nil, "Minimum Execution Size that needs to be specified for a Hidden Limit Order")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.missed_message_status = ProtoField.new("Missed Message Status", "jse.itac.enhancednativetrading.ntgi.v4.04.missedmessagestatus", ftypes.UINT8, nil, nil, nil, "Outcome of the missed message request")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.multi_leg_reporting_type = ProtoField.new("Multi Leg Reporting Type", "jse.itac.enhancednativetrading.ntgi.v4.04.multilegreportingtype", ftypes.UINT8, nil, nil, nil, "Type of trade")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.near_month_type = ProtoField.new("Near Month Type", "jse.itac.enhancednativetrading.ntgi.v4.04.nearmonthtype", ftypes.INT32, nil, nil, nil, "Near month type of the reference instrument")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.new_password = ProtoField.new("New Password", "jse.itac.enhancednativetrading.ntgi.v4.04.newpassword", ftypes.STRING, nil, nil, nil, "New password for Interface User ID (CompID)")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.order_book = ProtoField.new("Order Book", "jse.itac.enhancednativetrading.ntgi.v4.04.orderbook", ftypes.UINT8, nil, nil, nil, "Order book the order belongs to")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.order_id_alpha_12 = ProtoField.new("Order Id Alpha 12", "jse.itac.enhancednativetrading.ntgi.v4.04.orderidalpha12", ftypes.STRING, nil, nil, nil, "Unique identifier of the order assigned by the matching system")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.order_id_string_12 = ProtoField.new("Order Id String 12", "jse.itac.enhancednativetrading.ntgi.v4.04.orderidstring12", ftypes.STRING, nil, nil, nil, "Unique identifier of the order assigned by the matching system")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.order_quantity = ProtoField.new("Order Quantity", "jse.itac.enhancednativetrading.ntgi.v4.04.orderquantity", ftypes.INT32, nil, nil, nil, "Total order quantity")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.order_status = ProtoField.new("Order Status", "jse.itac.enhancednativetrading.ntgi.v4.04.orderstatus", ftypes.UINT8, nil, nil, nil, "Status of the order")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.order_sub_type = ProtoField.new("Order Sub Type", "jse.itac.enhancednativetrading.ntgi.v4.04.ordersubtype", ftypes.UINT8, nil, nil, nil, "Whether orders or quotes are cancelled")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.order_type = ProtoField.new("Order Type", "jse.itac.enhancednativetrading.ntgi.v4.04.ordertype", ftypes.UINT8, nil, nil, nil, "Type of the order")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.orig_client_order_id = ProtoField.new("Orig Client Order Id", "jse.itac.enhancednativetrading.ntgi.v4.04.origclientorderid", ftypes.STRING, nil, nil, nil, "Client specified identifier of the order being cancelled")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.orig_time = ProtoField.new("Orig Time", "jse.itac.enhancednativetrading.ntgi.v4.04.origtime", ftypes.STRING, nil, nil, nil, "Time the announcement was published")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.original_client_order_id = ProtoField.new("Original Client Order Id", "jse.itac.enhancednativetrading.ntgi.v4.04.originalclientorderid", ftypes.STRING, nil, nil, nil, "Client specified identifier of the order being amended")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.partition_id = ProtoField.new("Partition Id", "jse.itac.enhancednativetrading.ntgi.v4.04.partitionid", ftypes.UINT8, nil, nil, nil, "Identity of the matching partition the request relates to")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.password = ProtoField.new("Password", "jse.itac.enhancednativetrading.ntgi.v4.04.password", ftypes.STRING, nil, nil, nil, "Password assigned to the Interface User ID (CompID)")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.password_expiry = ProtoField.new("Password Expiry", "jse.itac.enhancednativetrading.ntgi.v4.04.passwordexpiry", ftypes.INT32, nil, nil, nil, "Number of days for password expiry")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.protocol_version = ProtoField.new("Protocol Version", "jse.itac.enhancednativetrading.ntgi.v4.04.protocolversion", ftypes.INT32, nil, nil, nil, "Specifies the version of protocol")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.reason = ProtoField.new("Reason", "jse.itac.enhancednativetrading.ntgi.v4.04.reason", ftypes.STRING, nil, nil, nil, "Reason for the logout")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.reference_instrument = ProtoField.new("Reference Instrument", "jse.itac.enhancednativetrading.ntgi.v4.04.referenceinstrument", ftypes.STRING, nil, nil, nil, "Identifier of the underlying Symbol or Instrument ID")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.reference_instrument_identifier = ProtoField.new("Reference Instrument Identifier", "jse.itac.enhancednativetrading.ntgi.v4.04.referenceinstrumentidentifier", ftypes.UINT8, nil, nil, nil, "Whether the Reference Instrument carries a symbol or an instrument id")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.reference_price = ProtoField.new("Reference Price", "jse.itac.enhancednativetrading.ntgi.v4.04.referenceprice", ftypes.DOUBLE, nil, nil, nil, "Price the trader intends to submit the trade at")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.reject_code = ProtoField.new("Reject Code", "jse.itac.enhancednativetrading.ntgi.v4.04.rejectcode", ftypes.INT32, nil, nil, nil, "Will be zero or three if login is accepted")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.reject_reason = ProtoField.new("Reject Reason", "jse.itac.enhancednativetrading.ntgi.v4.04.rejectreason", ftypes.STRING, nil, nil, nil, "Reason for the reject")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.reserved_28 = ProtoField.new("Reserved 28", "jse.itac.enhancednativetrading.ntgi.v4.04.reserved28", ftypes.UINT8, nil, base.DEC, 0xFE)
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.rfq_id = ProtoField.new("Rfq Id", "jse.itac.enhancednativetrading.ntgi.v4.04.rfqid", ftypes.STRING, nil, nil, nil, "Unique system generated identifier assigned to the RFQ")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.secondary_trade_report_id = ProtoField.new("Secondary Trade Report Id", "jse.itac.enhancednativetrading.ntgi.v4.04.secondarytradereportid", ftypes.STRING, nil, nil, nil, "Additional order identifier used to submit special instructions to the clearing members")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.security_id = ProtoField.new("Security Id", "jse.itac.enhancednativetrading.ntgi.v4.04.securityid", ftypes.INT32, nil, nil, nil, "Numeric Identifier of the instrument for which the order is submitted")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.security_request_id = ProtoField.new("Security Request Id", "jse.itac.enhancednativetrading.ntgi.v4.04.securityrequestid", ftypes.STRING, nil, nil, nil, "Client specified identifier of the request")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.security_response_type = ProtoField.new("Security Response Type", "jse.itac.enhancednativetrading.ntgi.v4.04.securityresponsetype", ftypes.UINT8, nil, nil, nil, "Outcome of the Security Definition Request")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.security_type = ProtoField.new("Security Type", "jse.itac.enhancednativetrading.ntgi.v4.04.securitytype", ftypes.UINT8, nil, nil, nil, "Type of security")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.segment = ProtoField.new("Segment", "jse.itac.enhancednativetrading.ntgi.v4.04.segment", ftypes.STRING, nil, nil, nil, "Identifier of the segment for which orders will be cancelled")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.sequence_number = ProtoField.new("Sequence Number", "jse.itac.enhancednativetrading.ntgi.v4.04.sequencenumber", ftypes.INT32, nil, nil, nil, "Sequence number immediately after that of the last message received from the partition")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.side = ProtoField.new("Side", "jse.itac.enhancednativetrading.ntgi.v4.04.side", ftypes.UINT8, nil, nil, nil, "Side of the order")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.start_of_message = ProtoField.new("Start Of Message", "jse.itac.enhancednativetrading.ntgi.v4.04.startofmessage", ftypes.UINT8, nil, nil, nil, "Indicates the start of the message; always the binary value 2")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.stop_price = ProtoField.new("Stop Price", "jse.itac.enhancednativetrading.ntgi.v4.04.stopprice", ftypes.DOUBLE, nil, nil, nil, "Stop price or Trigger Price")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.strike_price = ProtoField.new("Strike Price", "jse.itac.enhancednativetrading.ntgi.v4.04.strikeprice", ftypes.DOUBLE, nil, nil, nil, "Strike price of the option")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.system_status = ProtoField.new("System Status", "jse.itac.enhancednativetrading.ntgi.v4.04.systemstatus", ftypes.UINT8, nil, nil, nil, "Status of the partition")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.text = ProtoField.new("Text", "jse.itac.enhancednativetrading.ntgi.v4.04.text", ftypes.STRING, nil, nil, nil, "Text of the market operations announcement")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.time_in_force = ProtoField.new("Time In Force", "jse.itac.enhancednativetrading.ntgi.v4.04.timeinforce", ftypes.UINT8, nil, nil, nil, "How long the order remains in effect")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.trader_mnemonic = ProtoField.new("Trader Mnemonic", "jse.itac.enhancednativetrading.ntgi.v4.04.tradermnemonic", ftypes.STRING, nil, nil, nil, "Concatenated identifier of the Trader Group and the JSE Trader ID")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.trailing_offset = ProtoField.new("Trailing Offset", "jse.itac.enhancednativetrading.ntgi.v4.04.trailingoffset", ftypes.DOUBLE, nil, nil, nil, "Trailing offset for trailing stop or stop limit orders")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.transact_time = ProtoField.new("Transact Time", "jse.itac.enhancednativetrading.ntgi.v4.04.transacttime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time the Execution Report was generated")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.transact_time_utc = ProtoField.new("Transact Time", "jse.itac.enhancednativetrading.ntgi.v4.04.transacttime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time the Execution Report was generated")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.transact_time_nanoseconds = ProtoField.new("Transact Time Nanoseconds", "jse.itac.enhancednativetrading.ntgi.v4.04.transacttimenanoseconds", ftypes.UINT32, nil, nil, nil, "Nanoseconds elapsed since the second, the last four bytes of Transact Time. The document names them microseconds and states accuracy up to nanoseconds, the last three digits being zero")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.transact_time_seconds = ProtoField.new("Transact Time Seconds", "jse.itac.enhancednativetrading.ntgi.v4.04.transacttimeseconds", ftypes.UINT32, nil, nil, nil, "Seconds elapsed since midnight UTC of 1 January 1970, the first four bytes of Transact Time")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.transmission_status = ProtoField.new("Transmission Status", "jse.itac.enhancednativetrading.ntgi.v4.04.transmissionstatus", ftypes.UINT8, nil, nil, nil, "Outcome of the missed message transmission")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.underlyings = ProtoField.new("Underlyings", "jse.itac.enhancednativetrading.ntgi.v4.04.underlyings", ftypes.STRING, nil, nil, nil, "Pipe separated list of symbols of underlyings the instruments relate to")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.urgency = ProtoField.new("Urgency", "jse.itac.enhancednativetrading.ntgi.v4.04.urgency", ftypes.STRING, nil, nil, nil, "Urgency of the announcement")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.user_list = ProtoField.new("User List", "jse.itac.enhancednativetrading.ntgi.v4.04.userlist", ftypes.STRING, nil, nil, nil, "Pipe separated list of users that the announcement should be sent to")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.volatility = ProtoField.new("Volatility", "jse.itac.enhancednativetrading.ntgi.v4.04.volatility", ftypes.DOUBLE, nil, nil, nil, "Volatility or Converted Volatility of the executed price of the options instrument")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.working_indicator = ProtoField.new("Working Indicator", "jse.itac.enhancednativetrading.ntgi.v4.04.workingindicator", ftypes.UINT8, nil, nil, nil, "Whether the order is currently being worked on")

-- Jse Itac EnhancedNativeTrading Ntgi 4.04 Framing
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.message = ProtoField.new("Message", "jse.itac.enhancednativetrading.ntgi.v4.04.message", ftypes.STRING, nil, nil, nil, "Native Trading Gateway Message")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.message_header = ProtoField.new("Message Header", "jse.itac.enhancednativetrading.ntgi.v4.04.messageheader", ftypes.STRING, nil, nil, nil, "Jse Native Trading Gateway Message Header")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.packet = ProtoField.new("Packet", "jse.itac.enhancednativetrading.ntgi.v4.04.packet", ftypes.STRING, nil, nil, nil, "Jse Native Trading Gateway Tcp Message Block")

-- Jse Itac EnhancedNativeTrading 4.04 Application Messages
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.business_reject_message = ProtoField.new("Business Reject Message", "jse.itac.enhancednativetrading.ntgi.v4.04.businessrejectmessage", ftypes.STRING, nil, nil, nil, "Indicates that an application message could not be processed.")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.execution_report_message = ProtoField.new("Execution Report Message", "jse.itac.enhancednativetrading.ntgi.v4.04.executionreportmessage", ftypes.STRING, nil, nil, nil, "Indicates the status of an order.")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.heartbeat_message = ProtoField.new("Heartbeat Message", "jse.itac.enhancednativetrading.ntgi.v4.04.heartbeatmessage", ftypes.BYTES, nil, nil, nil, "Used by the client and server to exercise the communication line during periods of inactivity.")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.logon_message = ProtoField.new("Logon Message", "jse.itac.enhancednativetrading.ntgi.v4.04.logonmessage", ftypes.STRING, nil, nil, nil, "Allows the client to login to the server.")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.logon_response_message = ProtoField.new("Logon Response Message", "jse.itac.enhancednativetrading.ntgi.v4.04.logonresponsemessage", ftypes.STRING, nil, nil, nil, "Used by the server to accept or reject a login request.")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.logout_message = ProtoField.new("Logout Message", "jse.itac.enhancednativetrading.ntgi.v4.04.logoutmessage", ftypes.STRING, nil, nil, nil, "Used by the client or server to terminate a session.")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.missed_message_request_ack_message = ProtoField.new("Missed Message Request Ack Message", "jse.itac.enhancednativetrading.ntgi.v4.04.missedmessagerequestackmessage", ftypes.STRING, nil, nil, nil, "Used by the server to accept or reject a request for missed messages.")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.missed_message_request_message = ProtoField.new("Missed Message Request Message", "jse.itac.enhancednativetrading.ntgi.v4.04.missedmessagerequestmessage", ftypes.STRING, nil, nil, nil, "Used by the client to recover missed messages through the Recovery Channel.")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.new_order_message = ProtoField.new("New Order Message", "jse.itac.enhancednativetrading.ntgi.v4.04.newordermessage", ftypes.STRING, nil, nil, nil, "Allows the client to submit a new order.")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.news_message = ProtoField.new("News Message", "jse.itac.enhancednativetrading.ntgi.v4.04.newsmessage", ftypes.STRING, nil, nil, nil, "Carries a market operations announcement.")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.order_cancel_reject_message = ProtoField.new("Order Cancel Reject Message", "jse.itac.enhancednativetrading.ntgi.v4.04.ordercancelrejectmessage", ftypes.STRING, nil, nil, nil, "Indicates that an order cancel or cancel replace request has been rejected.")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.order_cancel_replace_request_message = ProtoField.new("Order Cancel Replace Request Message", "jse.itac.enhancednativetrading.ntgi.v4.04.ordercancelreplacerequestmessage", ftypes.STRING, nil, nil, nil, "Allows the client to modify an Open or Parked order.")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.order_cancel_request_message = ProtoField.new("Order Cancel Request Message", "jse.itac.enhancednativetrading.ntgi.v4.04.ordercancelrequestmessage", ftypes.STRING, nil, nil, nil, "Allows the client to cancel an Open or Parked order.")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.order_mass_cancel_report_message = ProtoField.new("Order Mass Cancel Report Message", "jse.itac.enhancednativetrading.ntgi.v4.04.ordermasscancelreportmessage", ftypes.STRING, nil, nil, nil, "Indicates the outcome of an order mass cancel request.")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.order_mass_cancel_request_message = ProtoField.new("Order Mass Cancel Request Message", "jse.itac.enhancednativetrading.ntgi.v4.04.ordermasscancelrequestmessage", ftypes.STRING, nil, nil, nil, "Allows the client to mass cancel orders.")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.reject_message = ProtoField.new("Reject Message", "jse.itac.enhancednativetrading.ntgi.v4.04.rejectmessage", ftypes.STRING, nil, nil, nil, "Used by the server to reject a message that does not comply with the specifications.")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.security_definition_request_message = ProtoField.new("Security Definition Request Message", "jse.itac.enhancednativetrading.ntgi.v4.04.securitydefinitionrequestmessage", ftypes.STRING, nil, nil, nil, "Allows the client to request an instrument creation intra-day.")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.security_definition_response_message = ProtoField.new("Security Definition Response Message", "jse.itac.enhancednativetrading.ntgi.v4.04.securitydefinitionresponsemessage", ftypes.STRING, nil, nil, nil, "Indicates that a Security Definition Request has been accepted or rejected.")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.system_status_message = ProtoField.new("System Status Message", "jse.itac.enhancednativetrading.ntgi.v4.04.systemstatusmessage", ftypes.STRING, nil, nil, nil, "Disseminated in the recovery channel to indicate the status of a partition.")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.transmission_complete_message = ProtoField.new("Transmission Complete Message", "jse.itac.enhancednativetrading.ntgi.v4.04.transmissioncompletemessage", ftypes.STRING, nil, nil, nil, "Used by the server to indicate that the transmission of missed messages is complete.")

-----------------------------------------------------------------------
-- Jse Itac EnhancedNativeTrading Ntgi 4.04 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
jse_itac_enhancednativetrading_ntgi_v4_04.absolute_time_base = 0


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Jse Itac EnhancedNativeTrading Ntgi 4.04 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true

-- Register Jse Itac EnhancedNativeTrading Ntgi 4.04 Show Options
omi_jse_itac_enhancednativetrading_ntgi_v4_04.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_jse_itac_enhancednativetrading_ntgi_v4_04.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")

omi_jse_itac_enhancednativetrading_ntgi_v4_04.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_jse_itac_enhancednativetrading_ntgi_v4_04.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_jse_itac_enhancednativetrading_ntgi_v4_04.prefs.show_application_messages then
    show.application_messages = omi_jse_itac_enhancednativetrading_ntgi_v4_04.prefs.show_application_messages
  end
  if show.headers ~= omi_jse_itac_enhancednativetrading_ntgi_v4_04.prefs.show_headers then
    show.headers = omi_jse_itac_enhancednativetrading_ntgi_v4_04.prefs.show_headers
  end
  if show.structs ~= omi_jse_itac_enhancednativetrading_ntgi_v4_04.prefs.show_structs then
    show.structs = omi_jse_itac_enhancednativetrading_ntgi_v4_04.prefs.show_structs
  end
  if jse_itac_enhancednativetrading_ntgi_v4_04.absolute_time_base ~= omi_jse_itac_enhancednativetrading_ntgi_v4_04.prefs.absolute_time_base then
    jse_itac_enhancednativetrading_ntgi_v4_04.absolute_time_base = omi_jse_itac_enhancednativetrading_ntgi_v4_04.prefs.absolute_time_base
  end
end


-----------------------------------------------------------------------
-- Jse Itac EnhancedNativeTrading Ntgi 4.04 Fields
-----------------------------------------------------------------------

-- Account
jse_itac_enhancednativetrading_ntgi_v4_04.account = {}

-- Size: Account
jse_itac_enhancednativetrading_ntgi_v4_04.account.size = 10

-- Display: Account
jse_itac_enhancednativetrading_ntgi_v4_04.account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Account: No Value"
  end

  return "Account: "..value
end

-- Dissect: Account
jse_itac_enhancednativetrading_ntgi_v4_04.account.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.account.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = jse_itac_enhancednativetrading_ntgi_v4_04.account.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.account, range, value, display)

  return offset + length, value
end

-- Anonymity
jse_itac_enhancednativetrading_ntgi_v4_04.anonymity = {}

-- Size: Anonymity
jse_itac_enhancednativetrading_ntgi_v4_04.anonymity.size = 1

-- Display: Anonymity
jse_itac_enhancednativetrading_ntgi_v4_04.anonymity.labels = {
  [0] = "Anonymity: Anonymous (0)",
  [1] = "Anonymity: Named (1)",
}

jse_itac_enhancednativetrading_ntgi_v4_04.anonymity.display = function(value)
  return jse_itac_enhancednativetrading_ntgi_v4_04.anonymity.labels[value] or "Anonymity: Unknown("..value..")"
end

-- Dissect: Anonymity
jse_itac_enhancednativetrading_ntgi_v4_04.anonymity.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.anonymity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_enhancednativetrading_ntgi_v4_04.anonymity.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.anonymity, range, value, display)

  return offset + length, value
end

-- Cancel On Disconnect
jse_itac_enhancednativetrading_ntgi_v4_04.cancel_on_disconnect = {}

-- Size: Cancel On Disconnect
jse_itac_enhancednativetrading_ntgi_v4_04.cancel_on_disconnect.size = 1

-- Display: Cancel On Disconnect
jse_itac_enhancednativetrading_ntgi_v4_04.cancel_on_disconnect.labels = {
  [0] = "Cancel On Disconnect: Do Not Cancel (0)",
  [1] = "Cancel On Disconnect: Cancel (1)",
}

jse_itac_enhancednativetrading_ntgi_v4_04.cancel_on_disconnect.display = function(value)
  return jse_itac_enhancednativetrading_ntgi_v4_04.cancel_on_disconnect.labels[value] or "Cancel On Disconnect: Unknown("..value..")"
end

-- Dissect: Cancel On Disconnect
jse_itac_enhancednativetrading_ntgi_v4_04.cancel_on_disconnect.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.cancel_on_disconnect.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_enhancednativetrading_ntgi_v4_04.cancel_on_disconnect.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.cancel_on_disconnect, range, value, display)

  return offset + length, value
end

-- Capacity
jse_itac_enhancednativetrading_ntgi_v4_04.capacity = {}

-- Size: Capacity
jse_itac_enhancednativetrading_ntgi_v4_04.capacity.size = 1

-- Display: Capacity
jse_itac_enhancednativetrading_ntgi_v4_04.capacity.labels = {
  [2] = "Capacity: Principal (2)",
  [3] = "Capacity: Agency (3)",
}

jse_itac_enhancednativetrading_ntgi_v4_04.capacity.display = function(value)
  return jse_itac_enhancednativetrading_ntgi_v4_04.capacity.labels[value] or "Capacity: Unknown("..value..")"
end

-- Dissect: Capacity
jse_itac_enhancednativetrading_ntgi_v4_04.capacity.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.capacity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_enhancednativetrading_ntgi_v4_04.capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.capacity, range, value, display)

  return offset + length, value
end

-- Client Order Id
jse_itac_enhancednativetrading_ntgi_v4_04.client_order_id = {}

-- Size: Client Order Id
jse_itac_enhancednativetrading_ntgi_v4_04.client_order_id.size = 20

-- Display: Client Order Id
jse_itac_enhancednativetrading_ntgi_v4_04.client_order_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Client Order Id: No Value"
  end

  return "Client Order Id: "..value
end

-- Dissect: Client Order Id
jse_itac_enhancednativetrading_ntgi_v4_04.client_order_id.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.client_order_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = jse_itac_enhancednativetrading_ntgi_v4_04.client_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.client_order_id, range, value, display)

  return offset + length, value
end

-- Comp Id
jse_itac_enhancednativetrading_ntgi_v4_04.comp_id = {}

-- Size: Comp Id
jse_itac_enhancednativetrading_ntgi_v4_04.comp_id.size = 6

-- Display: Comp Id
jse_itac_enhancednativetrading_ntgi_v4_04.comp_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Comp Id: No Value"
  end

  return "Comp Id: "..value
end

-- Dissect: Comp Id
jse_itac_enhancednativetrading_ntgi_v4_04.comp_id.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.comp_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = jse_itac_enhancednativetrading_ntgi_v4_04.comp_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.comp_id, range, value, display)

  return offset + length, value
end

-- Display Quantity
jse_itac_enhancednativetrading_ntgi_v4_04.display_quantity = {}

-- Size: Display Quantity
jse_itac_enhancednativetrading_ntgi_v4_04.display_quantity.size = 4

-- Display: Display Quantity
jse_itac_enhancednativetrading_ntgi_v4_04.display_quantity.display = function(value)
  return "Display Quantity: "..value
end

-- Dissect: Display Quantity
jse_itac_enhancednativetrading_ntgi_v4_04.display_quantity.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.display_quantity.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = jse_itac_enhancednativetrading_ntgi_v4_04.display_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.display_quantity, range, value, display)

  return offset + length, value
end

-- Executed Price
jse_itac_enhancednativetrading_ntgi_v4_04.executed_price = {}

-- Size: Executed Price
jse_itac_enhancednativetrading_ntgi_v4_04.executed_price.size = 8

-- Display: Executed Price
jse_itac_enhancednativetrading_ntgi_v4_04.executed_price.display = function(value)
  return "Executed Price: "..value
end

-- Translate: Executed Price
jse_itac_enhancednativetrading_ntgi_v4_04.executed_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Executed Price
jse_itac_enhancednativetrading_ntgi_v4_04.executed_price.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.executed_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = jse_itac_enhancednativetrading_ntgi_v4_04.executed_price.translate(raw)
  local display = jse_itac_enhancednativetrading_ntgi_v4_04.executed_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.executed_price, range, value, display)

  return offset + length, value
end

-- Executed Quantity
jse_itac_enhancednativetrading_ntgi_v4_04.executed_quantity = {}

-- Size: Executed Quantity
jse_itac_enhancednativetrading_ntgi_v4_04.executed_quantity.size = 4

-- Display: Executed Quantity
jse_itac_enhancednativetrading_ntgi_v4_04.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
jse_itac_enhancednativetrading_ntgi_v4_04.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = jse_itac_enhancednativetrading_ntgi_v4_04.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Execution Id
jse_itac_enhancednativetrading_ntgi_v4_04.execution_id = {}

-- Size: Execution Id
jse_itac_enhancednativetrading_ntgi_v4_04.execution_id.size = 21

-- Display: Execution Id
jse_itac_enhancednativetrading_ntgi_v4_04.execution_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Execution Id: No Value"
  end

  return "Execution Id: "..value
end

-- Dissect: Execution Id
jse_itac_enhancednativetrading_ntgi_v4_04.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.execution_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = jse_itac_enhancednativetrading_ntgi_v4_04.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Execution Instruction
jse_itac_enhancednativetrading_ntgi_v4_04.execution_instruction = {}

-- Size: Execution Instruction
jse_itac_enhancednativetrading_ntgi_v4_04.execution_instruction.size = 1

-- Display: Execution Instruction
jse_itac_enhancednativetrading_ntgi_v4_04.execution_instruction.labels = {
  [0] = "Execution Instruction: Do Not Exclude Hidden Limit Orders (0)",
  [1] = "Execution Instruction: Exclude Hidden Limit Orders (1)",
}

jse_itac_enhancednativetrading_ntgi_v4_04.execution_instruction.display = function(value)
  return jse_itac_enhancednativetrading_ntgi_v4_04.execution_instruction.labels[value] or "Execution Instruction: Unknown("..value..")"
end

-- Dissect: Execution Instruction
jse_itac_enhancednativetrading_ntgi_v4_04.execution_instruction.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.execution_instruction.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = jse_itac_enhancednativetrading_ntgi_v4_04.execution_instruction.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.execution_instruction, range, value, display)

  return offset + length, value
end

-- Execution Type
jse_itac_enhancednativetrading_ntgi_v4_04.execution_type = {}

-- Size: Execution Type
jse_itac_enhancednativetrading_ntgi_v4_04.execution_type.size = 1

-- Display: Execution Type
jse_itac_enhancednativetrading_ntgi_v4_04.execution_type.labels = {
  ["0"] = "Execution Type: New (0)",
  ["4"] = "Execution Type: Cancelled (4)",
  ["5"] = "Execution Type: Amended Modified (5)",
  ["8"] = "Execution Type: Rejected (8)",
  ["9"] = "Execution Type: Suspended (9)",
  ["C"] = "Execution Type: Expired (C)",
  ["F"] = "Execution Type: Trade (F)",
  ["G"] = "Execution Type: Trade Correct (G)",
  ["H"] = "Execution Type: Trade Cancel (H)",
  ["D"] = "Execution Type: Restated (D)",
  ["L"] = "Execution Type: Triggered (L)",
}

jse_itac_enhancednativetrading_ntgi_v4_04.execution_type.display = function(value)
  return jse_itac_enhancednativetrading_ntgi_v4_04.execution_type.labels[value] or "Execution Type: Unknown("..value..")"
end

-- Dissect: Execution Type
jse_itac_enhancednativetrading_ntgi_v4_04.execution_type.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.execution_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_enhancednativetrading_ntgi_v4_04.execution_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.execution_type, range, value, display)

  return offset + length, value
end

-- Expire Time
jse_itac_enhancednativetrading_ntgi_v4_04.expire_time = {}

-- Size: Expire Time
jse_itac_enhancednativetrading_ntgi_v4_04.expire_time.size = 17

-- Display: Expire Time
jse_itac_enhancednativetrading_ntgi_v4_04.expire_time.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Expire Time: No Value"
  end

  return "Expire Time: "..value
end

-- Dissect: Expire Time
jse_itac_enhancednativetrading_ntgi_v4_04.expire_time.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.expire_time.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = jse_itac_enhancednativetrading_ntgi_v4_04.expire_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.expire_time, range, value, display)

  return offset + length, value
end

-- Far Maturity Date
jse_itac_enhancednativetrading_ntgi_v4_04.far_maturity_date = {}

-- Size: Far Maturity Date
jse_itac_enhancednativetrading_ntgi_v4_04.far_maturity_date.size = 8

-- Display: Far Maturity Date
jse_itac_enhancednativetrading_ntgi_v4_04.far_maturity_date.display = function(value)
  if #value < 8 then
    return "Far Maturity Date: "..value
  end

  return "Far Maturity Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Far Maturity Date
jse_itac_enhancednativetrading_ntgi_v4_04.far_maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.far_maturity_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jse_itac_enhancednativetrading_ntgi_v4_04.far_maturity_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.far_maturity_date, range, value, display)

  return offset + length, value
end

-- Far Month Type
jse_itac_enhancednativetrading_ntgi_v4_04.far_month_type = {}

-- Size: Far Month Type
jse_itac_enhancednativetrading_ntgi_v4_04.far_month_type.size = 4

-- Display: Far Month Type
jse_itac_enhancednativetrading_ntgi_v4_04.far_month_type.display = function(value)
  return "Far Month Type: "..value
end

-- Dissect: Far Month Type
jse_itac_enhancednativetrading_ntgi_v4_04.far_month_type.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.far_month_type.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = jse_itac_enhancednativetrading_ntgi_v4_04.far_month_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.far_month_type, range, value, display)

  return offset + length, value
end

-- Firm List
jse_itac_enhancednativetrading_ntgi_v4_04.firm_list = {}

-- Size: Firm List
jse_itac_enhancednativetrading_ntgi_v4_04.firm_list.size = 54

-- Display: Firm List
jse_itac_enhancednativetrading_ntgi_v4_04.firm_list.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Firm List: No Value"
  end

  return "Firm List: "..value
end

-- Dissect: Firm List
jse_itac_enhancednativetrading_ntgi_v4_04.firm_list.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.firm_list.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = jse_itac_enhancednativetrading_ntgi_v4_04.firm_list.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.firm_list, range, value, display)

  return offset + length, value
end

-- Headline
jse_itac_enhancednativetrading_ntgi_v4_04.headline = {}

-- Size: Headline
jse_itac_enhancednativetrading_ntgi_v4_04.headline.size = 100

-- Display: Headline
jse_itac_enhancednativetrading_ntgi_v4_04.headline.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Headline: No Value"
  end

  return "Headline: "..value
end

-- Dissect: Headline
jse_itac_enhancednativetrading_ntgi_v4_04.headline.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.headline.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = jse_itac_enhancednativetrading_ntgi_v4_04.headline.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.headline, range, value, display)

  return offset + length, value
end

-- Instruments
jse_itac_enhancednativetrading_ntgi_v4_04.instruments = {}

-- Size: Instruments
jse_itac_enhancednativetrading_ntgi_v4_04.instruments.size = 100

-- Display: Instruments
jse_itac_enhancednativetrading_ntgi_v4_04.instruments.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Instruments: No Value"
  end

  return "Instruments: "..value
end

-- Dissect: Instruments
jse_itac_enhancednativetrading_ntgi_v4_04.instruments.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.instruments.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = jse_itac_enhancednativetrading_ntgi_v4_04.instruments.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.instruments, range, value, display)

  return offset + length, value
end

-- Is Market Ops Request
jse_itac_enhancednativetrading_ntgi_v4_04.is_market_ops_request = {}

-- Size: Is Market Ops Request
jse_itac_enhancednativetrading_ntgi_v4_04.is_market_ops_request.size = 1

-- Display: Is Market Ops Request
jse_itac_enhancednativetrading_ntgi_v4_04.is_market_ops_request.labels = {
  [0] = "Is Market Ops Request: No (0)",
  [1] = "Is Market Ops Request: Yes (1)",
}

jse_itac_enhancednativetrading_ntgi_v4_04.is_market_ops_request.display = function(value)
  return jse_itac_enhancednativetrading_ntgi_v4_04.is_market_ops_request.labels[value] or "Is Market Ops Request: Unknown("..value..")"
end

-- Dissect: Is Market Ops Request
jse_itac_enhancednativetrading_ntgi_v4_04.is_market_ops_request.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.is_market_ops_request.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_enhancednativetrading_ntgi_v4_04.is_market_ops_request.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.is_market_ops_request, range, value, display)

  return offset + length, value
end

-- Last Opt Px
jse_itac_enhancednativetrading_ntgi_v4_04.last_opt_px = {}

-- Size: Last Opt Px
jse_itac_enhancednativetrading_ntgi_v4_04.last_opt_px.size = 8

-- Display: Last Opt Px
jse_itac_enhancednativetrading_ntgi_v4_04.last_opt_px.display = function(value)
  return "Last Opt Px: "..value
end

-- Translate: Last Opt Px
jse_itac_enhancednativetrading_ntgi_v4_04.last_opt_px.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Last Opt Px
jse_itac_enhancednativetrading_ntgi_v4_04.last_opt_px.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.last_opt_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = jse_itac_enhancednativetrading_ntgi_v4_04.last_opt_px.translate(raw)
  local display = jse_itac_enhancednativetrading_ntgi_v4_04.last_opt_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.last_opt_px, range, value, display)

  return offset + length, value
end

-- Leaves Quantity
jse_itac_enhancednativetrading_ntgi_v4_04.leaves_quantity = {}

-- Size: Leaves Quantity
jse_itac_enhancednativetrading_ntgi_v4_04.leaves_quantity.size = 4

-- Display: Leaves Quantity
jse_itac_enhancednativetrading_ntgi_v4_04.leaves_quantity.display = function(value)
  return "Leaves Quantity: "..value
end

-- Dissect: Leaves Quantity
jse_itac_enhancednativetrading_ntgi_v4_04.leaves_quantity.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.leaves_quantity.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = jse_itac_enhancednativetrading_ntgi_v4_04.leaves_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.leaves_quantity, range, value, display)

  return offset + length, value
end

-- Limit Price
jse_itac_enhancednativetrading_ntgi_v4_04.limit_price = {}

-- Size: Limit Price
jse_itac_enhancednativetrading_ntgi_v4_04.limit_price.size = 8

-- Display: Limit Price
jse_itac_enhancednativetrading_ntgi_v4_04.limit_price.display = function(value)
  return "Limit Price: "..value
end

-- Translate: Limit Price
jse_itac_enhancednativetrading_ntgi_v4_04.limit_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Limit Price
jse_itac_enhancednativetrading_ntgi_v4_04.limit_price.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.limit_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = jse_itac_enhancednativetrading_ntgi_v4_04.limit_price.translate(raw)
  local display = jse_itac_enhancednativetrading_ntgi_v4_04.limit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.limit_price, range, value, display)

  return offset + length, value
end

-- Mass Cancel Request Type
jse_itac_enhancednativetrading_ntgi_v4_04.mass_cancel_request_type = {}

-- Size: Mass Cancel Request Type
jse_itac_enhancednativetrading_ntgi_v4_04.mass_cancel_request_type.size = 1

-- Display: Mass Cancel Request Type
jse_itac_enhancednativetrading_ntgi_v4_04.mass_cancel_request_type.labels = {
  [3] = "Mass Cancel Request Type: All Firm Orders For Instrument (3)",
  [4] = "Mass Cancel Request Type: All Firm Orders For Segment (4)",
  [7] = "Mass Cancel Request Type: All Orders For Client Interface User Id (7)",
  [8] = "Mass Cancel Request Type: All Orders For Firm (8)",
  [9] = "Mass Cancel Request Type: Client Interface User Id Orders For Instrument (9)",
  [14] = "Mass Cancel Request Type: Client Interest For Underlying (14)",
  [15] = "Mass Cancel Request Type: Client Interface User Id Orders For Segment (15)",
  [22] = "Mass Cancel Request Type: Firm Interest For Underlying (22)",
}

jse_itac_enhancednativetrading_ntgi_v4_04.mass_cancel_request_type.display = function(value)
  return jse_itac_enhancednativetrading_ntgi_v4_04.mass_cancel_request_type.labels[value] or "Mass Cancel Request Type: Unknown("..value..")"
end

-- Dissect: Mass Cancel Request Type
jse_itac_enhancednativetrading_ntgi_v4_04.mass_cancel_request_type.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.mass_cancel_request_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_enhancednativetrading_ntgi_v4_04.mass_cancel_request_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.mass_cancel_request_type, range, value, display)

  return offset + length, value
end

-- Mass Cancel Status
jse_itac_enhancednativetrading_ntgi_v4_04.mass_cancel_status = {}

-- Size: Mass Cancel Status
jse_itac_enhancednativetrading_ntgi_v4_04.mass_cancel_status.size = 1

-- Display: Mass Cancel Status
jse_itac_enhancednativetrading_ntgi_v4_04.mass_cancel_status.labels = {
  [0] = "Mass Cancel Status: Rejected (0)",
  [7] = "Mass Cancel Status: Accepted (7)",
}

jse_itac_enhancednativetrading_ntgi_v4_04.mass_cancel_status.display = function(value)
  return jse_itac_enhancednativetrading_ntgi_v4_04.mass_cancel_status.labels[value] or "Mass Cancel Status: Unknown("..value..")"
end

-- Dissect: Mass Cancel Status
jse_itac_enhancednativetrading_ntgi_v4_04.mass_cancel_status.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.mass_cancel_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_enhancednativetrading_ntgi_v4_04.mass_cancel_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.mass_cancel_status, range, value, display)

  return offset + length, value
end

-- Maturity Date
jse_itac_enhancednativetrading_ntgi_v4_04.maturity_date = {}

-- Size: Maturity Date
jse_itac_enhancednativetrading_ntgi_v4_04.maturity_date.size = 8

-- Display: Maturity Date
jse_itac_enhancednativetrading_ntgi_v4_04.maturity_date.display = function(value)
  if #value < 8 then
    return "Maturity Date: "..value
  end

  return "Maturity Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Maturity Date
jse_itac_enhancednativetrading_ntgi_v4_04.maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.maturity_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jse_itac_enhancednativetrading_ntgi_v4_04.maturity_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Message Length
jse_itac_enhancednativetrading_ntgi_v4_04.message_length = {}

-- Size: Message Length
jse_itac_enhancednativetrading_ntgi_v4_04.message_length.size = 2

-- Display: Message Length
jse_itac_enhancednativetrading_ntgi_v4_04.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
jse_itac_enhancednativetrading_ntgi_v4_04.message_length.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_enhancednativetrading_ntgi_v4_04.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
jse_itac_enhancednativetrading_ntgi_v4_04.message_type = {}

-- Size: Message Type
jse_itac_enhancednativetrading_ntgi_v4_04.message_type.size = 1

-- Display: Message Type
jse_itac_enhancednativetrading_ntgi_v4_04.message_type.labels = {
  ["A"] = "Message Type: Logon Message (A)",
  ["B"] = "Message Type: Logon Response Message (B)",
  ["5"] = "Message Type: Logout Message (5)",
  ["0"] = "Message Type: Heartbeat Message (0)",
  ["3"] = "Message Type: Reject Message (3)",
  ["M"] = "Message Type: Missed Message Request Message (M)",
  ["N"] = "Message Type: Missed Message Request Ack Message (N)",
  ["P"] = "Message Type: Transmission Complete Message (P)",
  ["n"] = "Message Type: System Status Message (n)",
  ["D"] = "Message Type: New Order Message (D)",
  ["F"] = "Message Type: Order Cancel Request Message (F)",
  ["q"] = "Message Type: Order Mass Cancel Request Message (q)",
  ["G"] = "Message Type: Order Cancel Replace Request Message (G)",
  ["O"] = "Message Type: Security Definition Request Message (O)",
  ["8"] = "Message Type: Execution Report Message (8)",
  ["9"] = "Message Type: Order Cancel Reject Message (9)",
  ["r"] = "Message Type: Order Mass Cancel Report Message (r)",
  ["R"] = "Message Type: Security Definition Response Message (R)",
  ["Z"] = "Message Type: News Message (Z)",
  ["j"] = "Message Type: Business Reject Message (j)",
}

jse_itac_enhancednativetrading_ntgi_v4_04.message_type.display = function(value)
  return jse_itac_enhancednativetrading_ntgi_v4_04.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
jse_itac_enhancednativetrading_ntgi_v4_04.message_type.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_enhancednativetrading_ntgi_v4_04.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.message_type, range, value, display)

  return offset + length, value
end

-- Minimum Quantity
jse_itac_enhancednativetrading_ntgi_v4_04.minimum_quantity = {}

-- Size: Minimum Quantity
jse_itac_enhancednativetrading_ntgi_v4_04.minimum_quantity.size = 4

-- Display: Minimum Quantity
jse_itac_enhancednativetrading_ntgi_v4_04.minimum_quantity.display = function(value)
  return "Minimum Quantity: "..value
end

-- Dissect: Minimum Quantity
jse_itac_enhancednativetrading_ntgi_v4_04.minimum_quantity.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.minimum_quantity.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = jse_itac_enhancednativetrading_ntgi_v4_04.minimum_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.minimum_quantity, range, value, display)

  return offset + length, value
end

-- Missed Message Status
jse_itac_enhancednativetrading_ntgi_v4_04.missed_message_status = {}

-- Size: Missed Message Status
jse_itac_enhancednativetrading_ntgi_v4_04.missed_message_status.size = 1

-- Display: Missed Message Status
jse_itac_enhancednativetrading_ntgi_v4_04.missed_message_status.labels = {
  [0] = "Missed Message Status: Request Accepted Successful (0)",
  [1] = "Missed Message Status: Request Limit Reached (1)",
  [2] = "Missed Message Status: Invalid Partition Id (2)",
  [3] = "Missed Message Status: Service Unavailable (3)",
}

jse_itac_enhancednativetrading_ntgi_v4_04.missed_message_status.display = function(value)
  return jse_itac_enhancednativetrading_ntgi_v4_04.missed_message_status.labels[value] or "Missed Message Status: Unknown("..value..")"
end

-- Dissect: Missed Message Status
jse_itac_enhancednativetrading_ntgi_v4_04.missed_message_status.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.missed_message_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_enhancednativetrading_ntgi_v4_04.missed_message_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.missed_message_status, range, value, display)

  return offset + length, value
end

-- Multi Leg Reporting Type
jse_itac_enhancednativetrading_ntgi_v4_04.multi_leg_reporting_type = {}

-- Size: Multi Leg Reporting Type
jse_itac_enhancednativetrading_ntgi_v4_04.multi_leg_reporting_type.size = 1

-- Display: Multi Leg Reporting Type
jse_itac_enhancednativetrading_ntgi_v4_04.multi_leg_reporting_type.labels = {
  [1] = "Multi Leg Reporting Type: Trade Of Single Instrument (1)",
  [2] = "Multi Leg Reporting Type: Leg Trade Of A Multi Leg Instrument (2)",
  [3] = "Multi Leg Reporting Type: Trade Of Multi Leg Instrument (3)",
}

jse_itac_enhancednativetrading_ntgi_v4_04.multi_leg_reporting_type.display = function(value)
  return jse_itac_enhancednativetrading_ntgi_v4_04.multi_leg_reporting_type.labels[value] or "Multi Leg Reporting Type: Unknown("..value..")"
end

-- Dissect: Multi Leg Reporting Type
jse_itac_enhancednativetrading_ntgi_v4_04.multi_leg_reporting_type.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.multi_leg_reporting_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_enhancednativetrading_ntgi_v4_04.multi_leg_reporting_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.multi_leg_reporting_type, range, value, display)

  return offset + length, value
end

-- Near Month Type
jse_itac_enhancednativetrading_ntgi_v4_04.near_month_type = {}

-- Size: Near Month Type
jse_itac_enhancednativetrading_ntgi_v4_04.near_month_type.size = 4

-- Display: Near Month Type
jse_itac_enhancednativetrading_ntgi_v4_04.near_month_type.display = function(value)
  return "Near Month Type: "..value
end

-- Dissect: Near Month Type
jse_itac_enhancednativetrading_ntgi_v4_04.near_month_type.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.near_month_type.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = jse_itac_enhancednativetrading_ntgi_v4_04.near_month_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.near_month_type, range, value, display)

  return offset + length, value
end

-- New Password
jse_itac_enhancednativetrading_ntgi_v4_04.new_password = {}

-- Size: New Password
jse_itac_enhancednativetrading_ntgi_v4_04.new_password.size = 25

-- Display: New Password
jse_itac_enhancednativetrading_ntgi_v4_04.new_password.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "New Password: No Value"
  end

  return "New Password: "..value
end

-- Dissect: New Password
jse_itac_enhancednativetrading_ntgi_v4_04.new_password.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.new_password.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = jse_itac_enhancednativetrading_ntgi_v4_04.new_password.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.new_password, range, value, display)

  return offset + length, value
end

-- Order Book
jse_itac_enhancednativetrading_ntgi_v4_04.order_book = {}

-- Size: Order Book
jse_itac_enhancednativetrading_ntgi_v4_04.order_book.size = 1

-- Display: Order Book
jse_itac_enhancednativetrading_ntgi_v4_04.order_book.labels = {
  [1] = "Order Book: Regular (1)",
  [9] = "Order Book: Bulletin Board (9)",
  [11] = "Order Book: Negotiated Trades (11)",
  [51] = "Order Book: Fx Auction (51)",
}

jse_itac_enhancednativetrading_ntgi_v4_04.order_book.display = function(value)
  return jse_itac_enhancednativetrading_ntgi_v4_04.order_book.labels[value] or "Order Book: Unknown("..value..")"
end

-- Dissect: Order Book
jse_itac_enhancednativetrading_ntgi_v4_04.order_book.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.order_book.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_enhancednativetrading_ntgi_v4_04.order_book.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.order_book, range, value, display)

  return offset + length, value
end

-- Order Id Alpha 12
jse_itac_enhancednativetrading_ntgi_v4_04.order_id_alpha_12 = {}

-- Size: Order Id Alpha 12
jse_itac_enhancednativetrading_ntgi_v4_04.order_id_alpha_12.size = 12

-- Display: Order Id Alpha 12
jse_itac_enhancednativetrading_ntgi_v4_04.order_id_alpha_12.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Order Id Alpha 12: No Value"
  end

  return "Order Id Alpha 12: "..value
end

-- Dissect: Order Id Alpha 12
jse_itac_enhancednativetrading_ntgi_v4_04.order_id_alpha_12.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.order_id_alpha_12.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = jse_itac_enhancednativetrading_ntgi_v4_04.order_id_alpha_12.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.order_id_alpha_12, range, value, display)

  return offset + length, value
end

-- Order Id String 12
jse_itac_enhancednativetrading_ntgi_v4_04.order_id_string_12 = {}

-- Size: Order Id String 12
jse_itac_enhancednativetrading_ntgi_v4_04.order_id_string_12.size = 12

-- Display: Order Id String 12
jse_itac_enhancednativetrading_ntgi_v4_04.order_id_string_12.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Order Id String 12: No Value"
  end

  return "Order Id String 12: "..value
end

-- Dissect: Order Id String 12
jse_itac_enhancednativetrading_ntgi_v4_04.order_id_string_12.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.order_id_string_12.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = jse_itac_enhancednativetrading_ntgi_v4_04.order_id_string_12.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.order_id_string_12, range, value, display)

  return offset + length, value
end

-- Order Quantity
jse_itac_enhancednativetrading_ntgi_v4_04.order_quantity = {}

-- Size: Order Quantity
jse_itac_enhancednativetrading_ntgi_v4_04.order_quantity.size = 4

-- Display: Order Quantity
jse_itac_enhancednativetrading_ntgi_v4_04.order_quantity.display = function(value)
  return "Order Quantity: "..value
end

-- Dissect: Order Quantity
jse_itac_enhancednativetrading_ntgi_v4_04.order_quantity.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.order_quantity.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = jse_itac_enhancednativetrading_ntgi_v4_04.order_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.order_quantity, range, value, display)

  return offset + length, value
end

-- Order Status
jse_itac_enhancednativetrading_ntgi_v4_04.order_status = {}

-- Size: Order Status
jse_itac_enhancednativetrading_ntgi_v4_04.order_status.size = 1

-- Display: Order Status
jse_itac_enhancednativetrading_ntgi_v4_04.order_status.labels = {
  [0] = "Order Status: New (0)",
  [1] = "Order Status: Partially Filled (1)",
  [2] = "Order Status: Filled (2)",
  [4] = "Order Status: Cancelled (4)",
  [6] = "Order Status: Expired (6)",
  [8] = "Order Status: Rejected (8)",
  [9] = "Order Status: Suspended (9)",
}

jse_itac_enhancednativetrading_ntgi_v4_04.order_status.display = function(value)
  return jse_itac_enhancednativetrading_ntgi_v4_04.order_status.labels[value] or "Order Status: Unknown("..value..")"
end

-- Dissect: Order Status
jse_itac_enhancednativetrading_ntgi_v4_04.order_status.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.order_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_enhancednativetrading_ntgi_v4_04.order_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.order_status, range, value, display)

  return offset + length, value
end

-- Order Sub Type
jse_itac_enhancednativetrading_ntgi_v4_04.order_sub_type = {}

-- Size: Order Sub Type
jse_itac_enhancednativetrading_ntgi_v4_04.order_sub_type.size = 1

-- Display: Order Sub Type
jse_itac_enhancednativetrading_ntgi_v4_04.order_sub_type.labels = {
  [0] = "Order Sub Type: Order (0)",
  [3] = "Order Sub Type: Quote (3)",
}

jse_itac_enhancednativetrading_ntgi_v4_04.order_sub_type.display = function(value)
  return jse_itac_enhancednativetrading_ntgi_v4_04.order_sub_type.labels[value] or "Order Sub Type: Unknown("..value..")"
end

-- Dissect: Order Sub Type
jse_itac_enhancednativetrading_ntgi_v4_04.order_sub_type.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.order_sub_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_enhancednativetrading_ntgi_v4_04.order_sub_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.order_sub_type, range, value, display)

  return offset + length, value
end

-- Order Type
jse_itac_enhancednativetrading_ntgi_v4_04.order_type = {}

-- Size: Order Type
jse_itac_enhancednativetrading_ntgi_v4_04.order_type.size = 1

-- Display: Order Type
jse_itac_enhancednativetrading_ntgi_v4_04.order_type.labels = {
  [1] = "Order Type: Market Order (1)",
  [2] = "Order Type: Limit Order (2)",
  [3] = "Order Type: Stop Order (3)",
  [4] = "Order Type: Stop Limit Order (4)",
  [5] = "Order Type: Market To Limit Order (5)",
  [6] = "Order Type: Market If Touched (6)",
}

jse_itac_enhancednativetrading_ntgi_v4_04.order_type.display = function(value)
  return jse_itac_enhancednativetrading_ntgi_v4_04.order_type.labels[value] or "Order Type: Unknown("..value..")"
end

-- Dissect: Order Type
jse_itac_enhancednativetrading_ntgi_v4_04.order_type.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.order_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_enhancednativetrading_ntgi_v4_04.order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.order_type, range, value, display)

  return offset + length, value
end

-- Orig Client Order Id
jse_itac_enhancednativetrading_ntgi_v4_04.orig_client_order_id = {}

-- Size: Orig Client Order Id
jse_itac_enhancednativetrading_ntgi_v4_04.orig_client_order_id.size = 20

-- Display: Orig Client Order Id
jse_itac_enhancednativetrading_ntgi_v4_04.orig_client_order_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Orig Client Order Id: No Value"
  end

  return "Orig Client Order Id: "..value
end

-- Dissect: Orig Client Order Id
jse_itac_enhancednativetrading_ntgi_v4_04.orig_client_order_id.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.orig_client_order_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = jse_itac_enhancednativetrading_ntgi_v4_04.orig_client_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.orig_client_order_id, range, value, display)

  return offset + length, value
end

-- Orig Time
jse_itac_enhancednativetrading_ntgi_v4_04.orig_time = {}

-- Size: Orig Time
jse_itac_enhancednativetrading_ntgi_v4_04.orig_time.size = 24

-- Display: Orig Time
jse_itac_enhancednativetrading_ntgi_v4_04.orig_time.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Orig Time: No Value"
  end

  return "Orig Time: "..value
end

-- Dissect: Orig Time
jse_itac_enhancednativetrading_ntgi_v4_04.orig_time.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.orig_time.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = jse_itac_enhancednativetrading_ntgi_v4_04.orig_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.orig_time, range, value, display)

  return offset + length, value
end

-- Original Client Order Id
jse_itac_enhancednativetrading_ntgi_v4_04.original_client_order_id = {}

-- Size: Original Client Order Id
jse_itac_enhancednativetrading_ntgi_v4_04.original_client_order_id.size = 20

-- Display: Original Client Order Id
jse_itac_enhancednativetrading_ntgi_v4_04.original_client_order_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Original Client Order Id: No Value"
  end

  return "Original Client Order Id: "..value
end

-- Dissect: Original Client Order Id
jse_itac_enhancednativetrading_ntgi_v4_04.original_client_order_id.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.original_client_order_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = jse_itac_enhancednativetrading_ntgi_v4_04.original_client_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.original_client_order_id, range, value, display)

  return offset + length, value
end

-- Partition Id
jse_itac_enhancednativetrading_ntgi_v4_04.partition_id = {}

-- Size: Partition Id
jse_itac_enhancednativetrading_ntgi_v4_04.partition_id.size = 1

-- Display: Partition Id
jse_itac_enhancednativetrading_ntgi_v4_04.partition_id.display = function(value)
  return "Partition Id: "..value
end

-- Dissect: Partition Id
jse_itac_enhancednativetrading_ntgi_v4_04.partition_id.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.partition_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_enhancednativetrading_ntgi_v4_04.partition_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.partition_id, range, value, display)

  return offset + length, value
end

-- Password
jse_itac_enhancednativetrading_ntgi_v4_04.password = {}

-- Size: Password
jse_itac_enhancednativetrading_ntgi_v4_04.password.size = 25

-- Display: Password
jse_itac_enhancednativetrading_ntgi_v4_04.password.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Password: No Value"
  end

  return "Password: "..value
end

-- Dissect: Password
jse_itac_enhancednativetrading_ntgi_v4_04.password.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.password.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = jse_itac_enhancednativetrading_ntgi_v4_04.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.password, range, value, display)

  return offset + length, value
end

-- Password Expiry
jse_itac_enhancednativetrading_ntgi_v4_04.password_expiry = {}

-- Size: Password Expiry
jse_itac_enhancednativetrading_ntgi_v4_04.password_expiry.size = 4

-- Display: Password Expiry
jse_itac_enhancednativetrading_ntgi_v4_04.password_expiry.display = function(value)
  return "Password Expiry: "..value
end

-- Dissect: Password Expiry
jse_itac_enhancednativetrading_ntgi_v4_04.password_expiry.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.password_expiry.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = jse_itac_enhancednativetrading_ntgi_v4_04.password_expiry.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.password_expiry, range, value, display)

  return offset + length, value
end

-- Protocol Version
jse_itac_enhancednativetrading_ntgi_v4_04.protocol_version = {}

-- Size: Protocol Version
jse_itac_enhancednativetrading_ntgi_v4_04.protocol_version.size = 4

-- Display: Protocol Version
jse_itac_enhancednativetrading_ntgi_v4_04.protocol_version.display = function(value)
  return "Protocol Version: "..value
end

-- Dissect: Protocol Version
jse_itac_enhancednativetrading_ntgi_v4_04.protocol_version.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.protocol_version.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = jse_itac_enhancednativetrading_ntgi_v4_04.protocol_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.protocol_version, range, value, display)

  return offset + length, value
end

-- Reason
jse_itac_enhancednativetrading_ntgi_v4_04.reason = {}

-- Size: Reason
jse_itac_enhancednativetrading_ntgi_v4_04.reason.size = 20

-- Display: Reason
jse_itac_enhancednativetrading_ntgi_v4_04.reason.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Reason: No Value"
  end

  return "Reason: "..value
end

-- Dissect: Reason
jse_itac_enhancednativetrading_ntgi_v4_04.reason.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.reason.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = jse_itac_enhancednativetrading_ntgi_v4_04.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.reason, range, value, display)

  return offset + length, value
end

-- Reference Instrument
jse_itac_enhancednativetrading_ntgi_v4_04.reference_instrument = {}

-- Size: Reference Instrument
jse_itac_enhancednativetrading_ntgi_v4_04.reference_instrument.size = 25

-- Display: Reference Instrument
jse_itac_enhancednativetrading_ntgi_v4_04.reference_instrument.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Reference Instrument: No Value"
  end

  return "Reference Instrument: "..value
end

-- Dissect: Reference Instrument
jse_itac_enhancednativetrading_ntgi_v4_04.reference_instrument.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.reference_instrument.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = jse_itac_enhancednativetrading_ntgi_v4_04.reference_instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.reference_instrument, range, value, display)

  return offset + length, value
end

-- Reference Instrument Identifier
jse_itac_enhancednativetrading_ntgi_v4_04.reference_instrument_identifier = {}

-- Size: Reference Instrument Identifier
jse_itac_enhancednativetrading_ntgi_v4_04.reference_instrument_identifier.size = 1

-- Display: Reference Instrument Identifier
jse_itac_enhancednativetrading_ntgi_v4_04.reference_instrument_identifier.labels = {
  [0] = "Reference Instrument Identifier: Symbol (0)",
  [1] = "Reference Instrument Identifier: Instrument Id (1)",
}

jse_itac_enhancednativetrading_ntgi_v4_04.reference_instrument_identifier.display = function(value)
  return jse_itac_enhancednativetrading_ntgi_v4_04.reference_instrument_identifier.labels[value] or "Reference Instrument Identifier: Unknown("..value..")"
end

-- Dissect: Reference Instrument Identifier
jse_itac_enhancednativetrading_ntgi_v4_04.reference_instrument_identifier.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.reference_instrument_identifier.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_enhancednativetrading_ntgi_v4_04.reference_instrument_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.reference_instrument_identifier, range, value, display)

  return offset + length, value
end

-- Reference Price
jse_itac_enhancednativetrading_ntgi_v4_04.reference_price = {}

-- Size: Reference Price
jse_itac_enhancednativetrading_ntgi_v4_04.reference_price.size = 8

-- Display: Reference Price
jse_itac_enhancednativetrading_ntgi_v4_04.reference_price.display = function(value)
  return "Reference Price: "..value
end

-- Translate: Reference Price
jse_itac_enhancednativetrading_ntgi_v4_04.reference_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Reference Price
jse_itac_enhancednativetrading_ntgi_v4_04.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.reference_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = jse_itac_enhancednativetrading_ntgi_v4_04.reference_price.translate(raw)
  local display = jse_itac_enhancednativetrading_ntgi_v4_04.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Reject Code
jse_itac_enhancednativetrading_ntgi_v4_04.reject_code = {}

-- Size: Reject Code
jse_itac_enhancednativetrading_ntgi_v4_04.reject_code.size = 4

-- Display: Reject Code
jse_itac_enhancednativetrading_ntgi_v4_04.reject_code.display = function(value)
  return "Reject Code: "..value
end

-- Dissect: Reject Code
jse_itac_enhancednativetrading_ntgi_v4_04.reject_code.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.reject_code.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = jse_itac_enhancednativetrading_ntgi_v4_04.reject_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.reject_code, range, value, display)

  return offset + length, value
end

-- Reject Reason
jse_itac_enhancednativetrading_ntgi_v4_04.reject_reason = {}

-- Size: Reject Reason
jse_itac_enhancednativetrading_ntgi_v4_04.reject_reason.size = 30

-- Display: Reject Reason
jse_itac_enhancednativetrading_ntgi_v4_04.reject_reason.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Reject Reason: No Value"
  end

  return "Reject Reason: "..value
end

-- Dissect: Reject Reason
jse_itac_enhancednativetrading_ntgi_v4_04.reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.reject_reason.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = jse_itac_enhancednativetrading_ntgi_v4_04.reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.reject_reason, range, value, display)

  return offset + length, value
end

-- Rfq Id
jse_itac_enhancednativetrading_ntgi_v4_04.rfq_id = {}

-- Size: Rfq Id
jse_itac_enhancednativetrading_ntgi_v4_04.rfq_id.size = 10

-- Display: Rfq Id
jse_itac_enhancednativetrading_ntgi_v4_04.rfq_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Rfq Id: No Value"
  end

  return "Rfq Id: "..value
end

-- Dissect: Rfq Id
jse_itac_enhancednativetrading_ntgi_v4_04.rfq_id.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.rfq_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = jse_itac_enhancednativetrading_ntgi_v4_04.rfq_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.rfq_id, range, value, display)

  return offset + length, value
end

-- Secondary Trade Report Id
jse_itac_enhancednativetrading_ntgi_v4_04.secondary_trade_report_id = {}

-- Size: Secondary Trade Report Id
jse_itac_enhancednativetrading_ntgi_v4_04.secondary_trade_report_id.size = 10

-- Display: Secondary Trade Report Id
jse_itac_enhancednativetrading_ntgi_v4_04.secondary_trade_report_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Secondary Trade Report Id: No Value"
  end

  return "Secondary Trade Report Id: "..value
end

-- Dissect: Secondary Trade Report Id
jse_itac_enhancednativetrading_ntgi_v4_04.secondary_trade_report_id.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.secondary_trade_report_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = jse_itac_enhancednativetrading_ntgi_v4_04.secondary_trade_report_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.secondary_trade_report_id, range, value, display)

  return offset + length, value
end

-- Security Id
jse_itac_enhancednativetrading_ntgi_v4_04.security_id = {}

-- Size: Security Id
jse_itac_enhancednativetrading_ntgi_v4_04.security_id.size = 4

-- Display: Security Id
jse_itac_enhancednativetrading_ntgi_v4_04.security_id.display = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
jse_itac_enhancednativetrading_ntgi_v4_04.security_id.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.security_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = jse_itac_enhancednativetrading_ntgi_v4_04.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.security_id, range, value, display)

  return offset + length, value
end

-- Security Request Id
jse_itac_enhancednativetrading_ntgi_v4_04.security_request_id = {}

-- Size: Security Request Id
jse_itac_enhancednativetrading_ntgi_v4_04.security_request_id.size = 10

-- Display: Security Request Id
jse_itac_enhancednativetrading_ntgi_v4_04.security_request_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Request Id: No Value"
  end

  return "Security Request Id: "..value
end

-- Dissect: Security Request Id
jse_itac_enhancednativetrading_ntgi_v4_04.security_request_id.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.security_request_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = jse_itac_enhancednativetrading_ntgi_v4_04.security_request_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.security_request_id, range, value, display)

  return offset + length, value
end

-- Security Response Type
jse_itac_enhancednativetrading_ntgi_v4_04.security_response_type = {}

-- Size: Security Response Type
jse_itac_enhancednativetrading_ntgi_v4_04.security_response_type.size = 1

-- Display: Security Response Type
jse_itac_enhancednativetrading_ntgi_v4_04.security_response_type.labels = {
  [0] = "Security Response Type: Rejected (0)",
  [1] = "Security Response Type: Accepted (1)",
}

jse_itac_enhancednativetrading_ntgi_v4_04.security_response_type.display = function(value)
  return jse_itac_enhancednativetrading_ntgi_v4_04.security_response_type.labels[value] or "Security Response Type: Unknown("..value..")"
end

-- Dissect: Security Response Type
jse_itac_enhancednativetrading_ntgi_v4_04.security_response_type.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.security_response_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_enhancednativetrading_ntgi_v4_04.security_response_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.security_response_type, range, value, display)

  return offset + length, value
end

-- Security Type
jse_itac_enhancednativetrading_ntgi_v4_04.security_type = {}

-- Size: Security Type
jse_itac_enhancednativetrading_ntgi_v4_04.security_type.size = 1

-- Display: Security Type
jse_itac_enhancednativetrading_ntgi_v4_04.security_type.labels = {
  [1] = "Security Type: Future (1)",
  [2] = "Security Type: Call Option (2)",
  [3] = "Security Type: Put Option (3)",
  [99] = "Security Type: Fwd Fwd (99)",
  [100] = "Security Type: Delta Option (100)",
}

jse_itac_enhancednativetrading_ntgi_v4_04.security_type.display = function(value)
  return jse_itac_enhancednativetrading_ntgi_v4_04.security_type.labels[value] or "Security Type: Unknown("..value..")"
end

-- Dissect: Security Type
jse_itac_enhancednativetrading_ntgi_v4_04.security_type.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.security_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_enhancednativetrading_ntgi_v4_04.security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.security_type, range, value, display)

  return offset + length, value
end

-- Segment
jse_itac_enhancednativetrading_ntgi_v4_04.segment = {}

-- Size: Segment
jse_itac_enhancednativetrading_ntgi_v4_04.segment.size = 6

-- Display: Segment
jse_itac_enhancednativetrading_ntgi_v4_04.segment.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Segment: No Value"
  end

  return "Segment: "..value
end

-- Dissect: Segment
jse_itac_enhancednativetrading_ntgi_v4_04.segment.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.segment.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = jse_itac_enhancednativetrading_ntgi_v4_04.segment.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.segment, range, value, display)

  return offset + length, value
end

-- Sequence Number
jse_itac_enhancednativetrading_ntgi_v4_04.sequence_number = {}

-- Size: Sequence Number
jse_itac_enhancednativetrading_ntgi_v4_04.sequence_number.size = 4

-- Display: Sequence Number
jse_itac_enhancednativetrading_ntgi_v4_04.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
jse_itac_enhancednativetrading_ntgi_v4_04.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = jse_itac_enhancednativetrading_ntgi_v4_04.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Side
jse_itac_enhancednativetrading_ntgi_v4_04.side = {}

-- Size: Side
jse_itac_enhancednativetrading_ntgi_v4_04.side.size = 1

-- Display: Side
jse_itac_enhancednativetrading_ntgi_v4_04.side.labels = {
  [1] = "Side: Buy (1)",
  [2] = "Side: Sell (2)",
}

jse_itac_enhancednativetrading_ntgi_v4_04.side.display = function(value)
  return jse_itac_enhancednativetrading_ntgi_v4_04.side.labels[value] or "Side: Unknown("..value..")"
end

-- Dissect: Side
jse_itac_enhancednativetrading_ntgi_v4_04.side.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_enhancednativetrading_ntgi_v4_04.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.side, range, value, display)

  return offset + length, value
end

-- Start Of Message
jse_itac_enhancednativetrading_ntgi_v4_04.start_of_message = {}

-- Size: Start Of Message
jse_itac_enhancednativetrading_ntgi_v4_04.start_of_message.size = 1

-- Display: Start Of Message
jse_itac_enhancednativetrading_ntgi_v4_04.start_of_message.display = function(value)
  return "Start Of Message: "..value
end

-- Dissect: Start Of Message
jse_itac_enhancednativetrading_ntgi_v4_04.start_of_message.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.start_of_message.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jse_itac_enhancednativetrading_ntgi_v4_04.start_of_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.start_of_message, range, value, display)

  return offset + length, value
end

-- Stop Price
jse_itac_enhancednativetrading_ntgi_v4_04.stop_price = {}

-- Size: Stop Price
jse_itac_enhancednativetrading_ntgi_v4_04.stop_price.size = 8

-- Display: Stop Price
jse_itac_enhancednativetrading_ntgi_v4_04.stop_price.display = function(value)
  return "Stop Price: "..value
end

-- Translate: Stop Price
jse_itac_enhancednativetrading_ntgi_v4_04.stop_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Stop Price
jse_itac_enhancednativetrading_ntgi_v4_04.stop_price.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.stop_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = jse_itac_enhancednativetrading_ntgi_v4_04.stop_price.translate(raw)
  local display = jse_itac_enhancednativetrading_ntgi_v4_04.stop_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.stop_price, range, value, display)

  return offset + length, value
end

-- Strike Price
jse_itac_enhancednativetrading_ntgi_v4_04.strike_price = {}

-- Size: Strike Price
jse_itac_enhancednativetrading_ntgi_v4_04.strike_price.size = 8

-- Display: Strike Price
jse_itac_enhancednativetrading_ntgi_v4_04.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Translate: Strike Price
jse_itac_enhancednativetrading_ntgi_v4_04.strike_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Strike Price
jse_itac_enhancednativetrading_ntgi_v4_04.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.strike_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = jse_itac_enhancednativetrading_ntgi_v4_04.strike_price.translate(raw)
  local display = jse_itac_enhancednativetrading_ntgi_v4_04.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.strike_price, range, value, display)

  return offset + length, value
end

-- System Status
jse_itac_enhancednativetrading_ntgi_v4_04.system_status = {}

-- Size: System Status
jse_itac_enhancednativetrading_ntgi_v4_04.system_status.size = 1

-- Display: System Status
jse_itac_enhancednativetrading_ntgi_v4_04.system_status.labels = {
  [1] = "System Status: Recovery Service Resumed (1)",
  [2] = "System Status: Recovery Service Unavailable (2)",
  [3] = "System Status: Partition Suspended (3)",
}

jse_itac_enhancednativetrading_ntgi_v4_04.system_status.display = function(value)
  return jse_itac_enhancednativetrading_ntgi_v4_04.system_status.labels[value] or "System Status: Unknown("..value..")"
end

-- Dissect: System Status
jse_itac_enhancednativetrading_ntgi_v4_04.system_status.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.system_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_enhancednativetrading_ntgi_v4_04.system_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.system_status, range, value, display)

  return offset + length, value
end

-- Text
jse_itac_enhancednativetrading_ntgi_v4_04.text = {}

-- Size: Text
jse_itac_enhancednativetrading_ntgi_v4_04.text.size = 750

-- Display: Text
jse_itac_enhancednativetrading_ntgi_v4_04.text.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Text: No Value"
  end

  return "Text: "..value
end

-- Dissect: Text
jse_itac_enhancednativetrading_ntgi_v4_04.text.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.text.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = jse_itac_enhancednativetrading_ntgi_v4_04.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.text, range, value, display)

  return offset + length, value
end

-- Time In Force
jse_itac_enhancednativetrading_ntgi_v4_04.time_in_force = {}

-- Size: Time In Force
jse_itac_enhancednativetrading_ntgi_v4_04.time_in_force.size = 1

-- Display: Time In Force
jse_itac_enhancednativetrading_ntgi_v4_04.time_in_force.labels = {
  [0] = "Time In Force: Day (0)",
  [1] = "Time In Force: Good Till Cancel Gtc (1)",
  [3] = "Time In Force: Immediate Or Cancel Ioc (3)",
  [4] = "Time In Force: Fill Or Kill Fok (4)",
  [5] = "Time In Force: At The Open Opg (5)",
  [6] = "Time In Force: Good Till Date Gtd (6)",
  [8] = "Time In Force: Good Till Time Gtt (8)",
  [9] = "Time In Force: Good For Auction Gfa (9)",
  [10] = "Time In Force: At The Close Atc (10)",
  [12] = "Time In Force: Closing Price Cross Cpx (12)",
  [51] = "Time In Force: Good For Intraday Auction Gfx (51)",
}

jse_itac_enhancednativetrading_ntgi_v4_04.time_in_force.display = function(value)
  return jse_itac_enhancednativetrading_ntgi_v4_04.time_in_force.labels[value] or "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
jse_itac_enhancednativetrading_ntgi_v4_04.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.time_in_force.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_enhancednativetrading_ntgi_v4_04.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Trader Mnemonic
jse_itac_enhancednativetrading_ntgi_v4_04.trader_mnemonic = {}

-- Size: Trader Mnemonic
jse_itac_enhancednativetrading_ntgi_v4_04.trader_mnemonic.size = 17

-- Display: Trader Mnemonic
jse_itac_enhancednativetrading_ntgi_v4_04.trader_mnemonic.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Trader Mnemonic: No Value"
  end

  return "Trader Mnemonic: "..value
end

-- Dissect: Trader Mnemonic
jse_itac_enhancednativetrading_ntgi_v4_04.trader_mnemonic.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.trader_mnemonic.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = jse_itac_enhancednativetrading_ntgi_v4_04.trader_mnemonic.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.trader_mnemonic, range, value, display)

  return offset + length, value
end

-- Trailing Offset
jse_itac_enhancednativetrading_ntgi_v4_04.trailing_offset = {}

-- Size: Trailing Offset
jse_itac_enhancednativetrading_ntgi_v4_04.trailing_offset.size = 8

-- Display: Trailing Offset
jse_itac_enhancednativetrading_ntgi_v4_04.trailing_offset.display = function(value)
  return "Trailing Offset: "..value
end

-- Translate: Trailing Offset
jse_itac_enhancednativetrading_ntgi_v4_04.trailing_offset.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Trailing Offset
jse_itac_enhancednativetrading_ntgi_v4_04.trailing_offset.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.trailing_offset.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = jse_itac_enhancednativetrading_ntgi_v4_04.trailing_offset.translate(raw)
  local display = jse_itac_enhancednativetrading_ntgi_v4_04.trailing_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.trailing_offset, range, value, display)

  return offset + length, value
end

-- Transact Time Nanoseconds
jse_itac_enhancednativetrading_ntgi_v4_04.transact_time_nanoseconds = {}

-- Size: Transact Time Nanoseconds
jse_itac_enhancednativetrading_ntgi_v4_04.transact_time_nanoseconds.size = 4

-- Display: Transact Time Nanoseconds
jse_itac_enhancednativetrading_ntgi_v4_04.transact_time_nanoseconds.display = function(value)
  return "Transact Time Nanoseconds: "..value
end

-- Dissect: Transact Time Nanoseconds
jse_itac_enhancednativetrading_ntgi_v4_04.transact_time_nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.transact_time_nanoseconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_enhancednativetrading_ntgi_v4_04.transact_time_nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.transact_time_nanoseconds, range, value, display)

  return offset + length, value
end

-- Transact Time Seconds
jse_itac_enhancednativetrading_ntgi_v4_04.transact_time_seconds = {}

-- Size: Transact Time Seconds
jse_itac_enhancednativetrading_ntgi_v4_04.transact_time_seconds.size = 4

-- Display: Transact Time Seconds
jse_itac_enhancednativetrading_ntgi_v4_04.transact_time_seconds.display = function(value)
  return "Transact Time Seconds: "..value
end

-- Dissect: Transact Time Seconds
jse_itac_enhancednativetrading_ntgi_v4_04.transact_time_seconds.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.transact_time_seconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_enhancednativetrading_ntgi_v4_04.transact_time_seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.transact_time_seconds, range, value, display)

  return offset + length, value
end

-- Transmission Status
jse_itac_enhancednativetrading_ntgi_v4_04.transmission_status = {}

-- Size: Transmission Status
jse_itac_enhancednativetrading_ntgi_v4_04.transmission_status.size = 1

-- Display: Transmission Status
jse_itac_enhancednativetrading_ntgi_v4_04.transmission_status.labels = {
  [0] = "Transmission Status: All Messages Transmitted (0)",
  [1] = "Transmission Status: Message Limit Reached (1)",
  [3] = "Transmission Status: Service Unavailable (3)",
}

jse_itac_enhancednativetrading_ntgi_v4_04.transmission_status.display = function(value)
  return jse_itac_enhancednativetrading_ntgi_v4_04.transmission_status.labels[value] or "Transmission Status: Unknown("..value..")"
end

-- Dissect: Transmission Status
jse_itac_enhancednativetrading_ntgi_v4_04.transmission_status.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.transmission_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_enhancednativetrading_ntgi_v4_04.transmission_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.transmission_status, range, value, display)

  return offset + length, value
end

-- Underlyings
jse_itac_enhancednativetrading_ntgi_v4_04.underlyings = {}

-- Size: Underlyings
jse_itac_enhancednativetrading_ntgi_v4_04.underlyings.size = 100

-- Display: Underlyings
jse_itac_enhancednativetrading_ntgi_v4_04.underlyings.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlyings: No Value"
  end

  return "Underlyings: "..value
end

-- Dissect: Underlyings
jse_itac_enhancednativetrading_ntgi_v4_04.underlyings.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.underlyings.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = jse_itac_enhancednativetrading_ntgi_v4_04.underlyings.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.underlyings, range, value, display)

  return offset + length, value
end

-- Urgency
jse_itac_enhancednativetrading_ntgi_v4_04.urgency = {}

-- Size: Urgency
jse_itac_enhancednativetrading_ntgi_v4_04.urgency.size = 1

-- Display: Urgency
jse_itac_enhancednativetrading_ntgi_v4_04.urgency.labels = {
  ["0"] = "Urgency: Regular (0)",
  ["1"] = "Urgency: High Priority (1)",
  ["2"] = "Urgency: Low Priority (2)",
}

jse_itac_enhancednativetrading_ntgi_v4_04.urgency.display = function(value)
  return jse_itac_enhancednativetrading_ntgi_v4_04.urgency.labels[value] or "Urgency: Unknown("..value..")"
end

-- Dissect: Urgency
jse_itac_enhancednativetrading_ntgi_v4_04.urgency.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.urgency.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jse_itac_enhancednativetrading_ntgi_v4_04.urgency.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.urgency, range, value, display)

  return offset + length, value
end

-- User List
jse_itac_enhancednativetrading_ntgi_v4_04.user_list = {}

-- Size: User List
jse_itac_enhancednativetrading_ntgi_v4_04.user_list.size = 54

-- Display: User List
jse_itac_enhancednativetrading_ntgi_v4_04.user_list.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "User List: No Value"
  end

  return "User List: "..value
end

-- Dissect: User List
jse_itac_enhancednativetrading_ntgi_v4_04.user_list.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.user_list.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = jse_itac_enhancednativetrading_ntgi_v4_04.user_list.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.user_list, range, value, display)

  return offset + length, value
end

-- Volatility
jse_itac_enhancednativetrading_ntgi_v4_04.volatility = {}

-- Size: Volatility
jse_itac_enhancednativetrading_ntgi_v4_04.volatility.size = 8

-- Display: Volatility
jse_itac_enhancednativetrading_ntgi_v4_04.volatility.display = function(value)
  return "Volatility: "..value
end

-- Translate: Volatility
jse_itac_enhancednativetrading_ntgi_v4_04.volatility.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Volatility
jse_itac_enhancednativetrading_ntgi_v4_04.volatility.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.volatility.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = jse_itac_enhancednativetrading_ntgi_v4_04.volatility.translate(raw)
  local display = jse_itac_enhancednativetrading_ntgi_v4_04.volatility.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.volatility, range, value, display)

  return offset + length, value
end

-- Working Indicator
jse_itac_enhancednativetrading_ntgi_v4_04.working_indicator = {}

-- Size: Working Indicator
jse_itac_enhancednativetrading_ntgi_v4_04.working_indicator.size = 1

-- Display: Working Indicator
jse_itac_enhancednativetrading_ntgi_v4_04.working_indicator.labels = {
  [0] = "Working Indicator: Unset (0)",
  [1] = "Working Indicator: Order Is Being Worked (1)",
  [2] = "Working Indicator: Order Is Not Currently In A Working State (2)",
}

jse_itac_enhancednativetrading_ntgi_v4_04.working_indicator.display = function(value)
  return jse_itac_enhancednativetrading_ntgi_v4_04.working_indicator.labels[value] or "Working Indicator: Unknown("..value..")"
end

-- Dissect: Working Indicator
jse_itac_enhancednativetrading_ntgi_v4_04.working_indicator.dissect = function(buffer, offset, packet, parent)
  local length = jse_itac_enhancednativetrading_ntgi_v4_04.working_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = jse_itac_enhancednativetrading_ntgi_v4_04.working_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.working_indicator, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Jse Itac EnhancedNativeTrading Ntgi 4.04
-----------------------------------------------------------------------

-- Transact Time
jse_itac_enhancednativetrading_ntgi_v4_04.transact_time = {}

-- Size: Transact Time
jse_itac_enhancednativetrading_ntgi_v4_04.transact_time.size =
  jse_itac_enhancednativetrading_ntgi_v4_04.transact_time_seconds.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.transact_time_nanoseconds.size

-- Display: Transact Time
jse_itac_enhancednativetrading_ntgi_v4_04.transact_time.display = function(packet, parent, value)
  -- Check null value
  if value == nil then
    return "No Value"

  end

  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect Fields: Transact Time
jse_itac_enhancednativetrading_ntgi_v4_04.transact_time.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time Seconds: 4 Byte Unsigned Fixed Width Integer
  index, transact_time_seconds = jse_itac_enhancednativetrading_ntgi_v4_04.transact_time_seconds.dissect(buffer, index, packet, parent)

  -- Transact Time Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, transact_time_nanoseconds = jse_itac_enhancednativetrading_ntgi_v4_04.transact_time_nanoseconds.dissect(buffer, index, packet, parent)

  -- Composite value
  local transact_time = UInt64.new(transact_time_seconds * 1000000000 + transact_time_nanoseconds)

  return index, transact_time
end

-- Dissect: Transact Time
jse_itac_enhancednativetrading_ntgi_v4_04.transact_time.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- An absolute time item carries its value from the moment it is created,
    -- so the parts are read here rather than taken from the fields below it
    local transact_time_seconds = buffer(offset, 4):le_uint()
    local transact_time_nanoseconds = buffer(offset + 4, 4):le_uint()
    local length = jse_itac_enhancednativetrading_ntgi_v4_04.transact_time.size
    -- A field's absolute time base is fixed when it is declared, so the
    -- protocol declares one per base and the preference picks between them
    local field = omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.transact_time
    if jse_itac_enhancednativetrading_ntgi_v4_04.absolute_time_base == 1 then field = omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.transact_time_utc end
    parent = parent:add(field, buffer(offset, length), NSTime.new(transact_time_seconds, transact_time_nanoseconds))
    local index = jse_itac_enhancednativetrading_ntgi_v4_04.transact_time.fields(buffer, offset, packet, parent)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_enhancednativetrading_ntgi_v4_04.transact_time.fields(buffer, offset, packet, parent)
  end
end

-- Business Reject Message
jse_itac_enhancednativetrading_ntgi_v4_04.business_reject_message = {}

-- Size: Business Reject Message
jse_itac_enhancednativetrading_ntgi_v4_04.business_reject_message.size =
  jse_itac_enhancednativetrading_ntgi_v4_04.partition_id.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.sequence_number.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.reject_code.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.client_order_id.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.order_id_alpha_12.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.transact_time.size

-- Display: Business Reject Message
jse_itac_enhancednativetrading_ntgi_v4_04.business_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Business Reject Message
jse_itac_enhancednativetrading_ntgi_v4_04.business_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Partition Id: UInt8
  index, partition_id = jse_itac_enhancednativetrading_ntgi_v4_04.partition_id.dissect(buffer, index, packet, parent)

  -- Sequence Number: Int32
  index, sequence_number = jse_itac_enhancednativetrading_ntgi_v4_04.sequence_number.dissect(buffer, index, packet, parent)

  -- Reject Code: Int32
  index, reject_code = jse_itac_enhancednativetrading_ntgi_v4_04.reject_code.dissect(buffer, index, packet, parent)

  -- Client Order Id: Alpha
  index, client_order_id = jse_itac_enhancednativetrading_ntgi_v4_04.client_order_id.dissect(buffer, index, packet, parent)

  -- Order Id Alpha 12: Alpha
  index, order_id_alpha_12 = jse_itac_enhancednativetrading_ntgi_v4_04.order_id_alpha_12.dissect(buffer, index, packet, parent)

  -- Transact Time: Struct of 2 fields
  index, transact_time = jse_itac_enhancednativetrading_ntgi_v4_04.transact_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Business Reject Message
jse_itac_enhancednativetrading_ntgi_v4_04.business_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.business_reject_message, buffer(offset, 0))
    local index = jse_itac_enhancednativetrading_ntgi_v4_04.business_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_enhancednativetrading_ntgi_v4_04.business_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_enhancednativetrading_ntgi_v4_04.business_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- News Message
jse_itac_enhancednativetrading_ntgi_v4_04.news_message = {}

-- Size: News Message
jse_itac_enhancednativetrading_ntgi_v4_04.news_message.size =
  jse_itac_enhancednativetrading_ntgi_v4_04.partition_id.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.sequence_number.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.orig_time.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.urgency.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.headline.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.text.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.instruments.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.underlyings.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.firm_list.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.user_list.size

-- Display: News Message
jse_itac_enhancednativetrading_ntgi_v4_04.news_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: News Message
jse_itac_enhancednativetrading_ntgi_v4_04.news_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Partition Id: UInt8
  index, partition_id = jse_itac_enhancednativetrading_ntgi_v4_04.partition_id.dissect(buffer, index, packet, parent)

  -- Sequence Number: Int32
  index, sequence_number = jse_itac_enhancednativetrading_ntgi_v4_04.sequence_number.dissect(buffer, index, packet, parent)

  -- Orig Time: Alpha
  index, orig_time = jse_itac_enhancednativetrading_ntgi_v4_04.orig_time.dissect(buffer, index, packet, parent)

  -- Urgency: Byte
  index, urgency = jse_itac_enhancednativetrading_ntgi_v4_04.urgency.dissect(buffer, index, packet, parent)

  -- Headline: Alpha
  index, headline = jse_itac_enhancednativetrading_ntgi_v4_04.headline.dissect(buffer, index, packet, parent)

  -- Text: Alpha
  index, text = jse_itac_enhancednativetrading_ntgi_v4_04.text.dissect(buffer, index, packet, parent)

  -- Instruments: Alpha
  index, instruments = jse_itac_enhancednativetrading_ntgi_v4_04.instruments.dissect(buffer, index, packet, parent)

  -- Underlyings: Alpha
  index, underlyings = jse_itac_enhancednativetrading_ntgi_v4_04.underlyings.dissect(buffer, index, packet, parent)

  -- Firm List: Alpha
  index, firm_list = jse_itac_enhancednativetrading_ntgi_v4_04.firm_list.dissect(buffer, index, packet, parent)

  -- User List: Alpha
  index, user_list = jse_itac_enhancednativetrading_ntgi_v4_04.user_list.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: News Message
jse_itac_enhancednativetrading_ntgi_v4_04.news_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.news_message, buffer(offset, 0))
    local index = jse_itac_enhancednativetrading_ntgi_v4_04.news_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_enhancednativetrading_ntgi_v4_04.news_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_enhancednativetrading_ntgi_v4_04.news_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Definition Response Message
jse_itac_enhancednativetrading_ntgi_v4_04.security_definition_response_message = {}

-- Size: Security Definition Response Message
jse_itac_enhancednativetrading_ntgi_v4_04.security_definition_response_message.size =
  jse_itac_enhancednativetrading_ntgi_v4_04.security_request_id.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.security_response_type.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.reject_code.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.security_id.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.security_type.size

-- Display: Security Definition Response Message
jse_itac_enhancednativetrading_ntgi_v4_04.security_definition_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Response Message
jse_itac_enhancednativetrading_ntgi_v4_04.security_definition_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Request Id: Alpha
  index, security_request_id = jse_itac_enhancednativetrading_ntgi_v4_04.security_request_id.dissect(buffer, index, packet, parent)

  -- Security Response Type: UInt8
  index, security_response_type = jse_itac_enhancednativetrading_ntgi_v4_04.security_response_type.dissect(buffer, index, packet, parent)

  -- Reject Code: Int32
  index, reject_code = jse_itac_enhancednativetrading_ntgi_v4_04.reject_code.dissect(buffer, index, packet, parent)

  -- Security Id: Int32
  index, security_id = jse_itac_enhancednativetrading_ntgi_v4_04.security_id.dissect(buffer, index, packet, parent)

  -- Security Type: UInt8
  index, security_type = jse_itac_enhancednativetrading_ntgi_v4_04.security_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Response Message
jse_itac_enhancednativetrading_ntgi_v4_04.security_definition_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.security_definition_response_message, buffer(offset, 0))
    local index = jse_itac_enhancednativetrading_ntgi_v4_04.security_definition_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_enhancednativetrading_ntgi_v4_04.security_definition_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_enhancednativetrading_ntgi_v4_04.security_definition_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Mass Cancel Report Message
jse_itac_enhancednativetrading_ntgi_v4_04.order_mass_cancel_report_message = {}

-- Size: Order Mass Cancel Report Message
jse_itac_enhancednativetrading_ntgi_v4_04.order_mass_cancel_report_message.size =
  jse_itac_enhancednativetrading_ntgi_v4_04.partition_id.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.sequence_number.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.client_order_id.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.mass_cancel_status.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.reject_code.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.transact_time.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.order_book.size

-- Display: Order Mass Cancel Report Message
jse_itac_enhancednativetrading_ntgi_v4_04.order_mass_cancel_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Mass Cancel Report Message
jse_itac_enhancednativetrading_ntgi_v4_04.order_mass_cancel_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Partition Id: UInt8
  index, partition_id = jse_itac_enhancednativetrading_ntgi_v4_04.partition_id.dissect(buffer, index, packet, parent)

  -- Sequence Number: Int32
  index, sequence_number = jse_itac_enhancednativetrading_ntgi_v4_04.sequence_number.dissect(buffer, index, packet, parent)

  -- Client Order Id: Alpha
  index, client_order_id = jse_itac_enhancednativetrading_ntgi_v4_04.client_order_id.dissect(buffer, index, packet, parent)

  -- Mass Cancel Status: UInt8
  index, mass_cancel_status = jse_itac_enhancednativetrading_ntgi_v4_04.mass_cancel_status.dissect(buffer, index, packet, parent)

  -- Reject Code: Int32
  index, reject_code = jse_itac_enhancednativetrading_ntgi_v4_04.reject_code.dissect(buffer, index, packet, parent)

  -- Transact Time: Struct of 2 fields
  index, transact_time = jse_itac_enhancednativetrading_ntgi_v4_04.transact_time.dissect(buffer, index, packet, parent)

  -- Order Book: UInt8
  index, order_book = jse_itac_enhancednativetrading_ntgi_v4_04.order_book.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Mass Cancel Report Message
jse_itac_enhancednativetrading_ntgi_v4_04.order_mass_cancel_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.order_mass_cancel_report_message, buffer(offset, 0))
    local index = jse_itac_enhancednativetrading_ntgi_v4_04.order_mass_cancel_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_enhancednativetrading_ntgi_v4_04.order_mass_cancel_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_enhancednativetrading_ntgi_v4_04.order_mass_cancel_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Reject Message
jse_itac_enhancednativetrading_ntgi_v4_04.order_cancel_reject_message = {}

-- Size: Order Cancel Reject Message
jse_itac_enhancednativetrading_ntgi_v4_04.order_cancel_reject_message.size =
  jse_itac_enhancednativetrading_ntgi_v4_04.partition_id.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.sequence_number.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.client_order_id.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.order_id_alpha_12.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.transact_time.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.reject_code.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.order_book.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.rfq_id.size

-- Display: Order Cancel Reject Message
jse_itac_enhancednativetrading_ntgi_v4_04.order_cancel_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Reject Message
jse_itac_enhancednativetrading_ntgi_v4_04.order_cancel_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Partition Id: UInt8
  index, partition_id = jse_itac_enhancednativetrading_ntgi_v4_04.partition_id.dissect(buffer, index, packet, parent)

  -- Sequence Number: Int32
  index, sequence_number = jse_itac_enhancednativetrading_ntgi_v4_04.sequence_number.dissect(buffer, index, packet, parent)

  -- Client Order Id: Alpha
  index, client_order_id = jse_itac_enhancednativetrading_ntgi_v4_04.client_order_id.dissect(buffer, index, packet, parent)

  -- Order Id Alpha 12: Alpha
  index, order_id_alpha_12 = jse_itac_enhancednativetrading_ntgi_v4_04.order_id_alpha_12.dissect(buffer, index, packet, parent)

  -- Transact Time: Struct of 2 fields
  index, transact_time = jse_itac_enhancednativetrading_ntgi_v4_04.transact_time.dissect(buffer, index, packet, parent)

  -- Reject Code: Int32
  index, reject_code = jse_itac_enhancednativetrading_ntgi_v4_04.reject_code.dissect(buffer, index, packet, parent)

  -- Order Book: UInt8
  index, order_book = jse_itac_enhancednativetrading_ntgi_v4_04.order_book.dissect(buffer, index, packet, parent)

  -- Rfq Id: Alpha
  index, rfq_id = jse_itac_enhancednativetrading_ntgi_v4_04.rfq_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Reject Message
jse_itac_enhancednativetrading_ntgi_v4_04.order_cancel_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.order_cancel_reject_message, buffer(offset, 0))
    local index = jse_itac_enhancednativetrading_ntgi_v4_04.order_cancel_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_enhancednativetrading_ntgi_v4_04.order_cancel_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_enhancednativetrading_ntgi_v4_04.order_cancel_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Indicator Flags
jse_itac_enhancednativetrading_ntgi_v4_04.indicator_flags = {}

-- Size: Indicator Flags
jse_itac_enhancednativetrading_ntgi_v4_04.indicator_flags.size = 1

-- Display: Indicator Flags
jse_itac_enhancednativetrading_ntgi_v4_04.indicator_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Aggressor Indicator flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Aggressor Indicator"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Indicator Flags
jse_itac_enhancednativetrading_ntgi_v4_04.indicator_flags.bits = function(range, value, packet, parent)

  -- Aggressor Indicator: 1 Bit
  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.aggressor_indicator, range, value)

  -- Reserved 28: 7 Bit
  parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.reserved_28, range, value)
end

-- Dissect: Indicator Flags
jse_itac_enhancednativetrading_ntgi_v4_04.indicator_flags.dissect = function(buffer, offset, packet, parent)
  local size = jse_itac_enhancednativetrading_ntgi_v4_04.indicator_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = jse_itac_enhancednativetrading_ntgi_v4_04.indicator_flags.display(range, value, packet, parent)
  local element = parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.indicator_flags, range, display)

  if show.structs then
    jse_itac_enhancednativetrading_ntgi_v4_04.indicator_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Execution Report Message
jse_itac_enhancednativetrading_ntgi_v4_04.execution_report_message = {}

-- Size: Execution Report Message
jse_itac_enhancednativetrading_ntgi_v4_04.execution_report_message.size =
  jse_itac_enhancednativetrading_ntgi_v4_04.partition_id.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.sequence_number.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.execution_id.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.client_order_id.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.order_id_alpha_12.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.execution_type.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.order_status.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.reject_code.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.executed_price.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.executed_quantity.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.leaves_quantity.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.working_indicator.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.security_id.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.side.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.trader_mnemonic.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.account.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.is_market_ops_request.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.transact_time.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.order_book.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.execution_instruction.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.multi_leg_reporting_type.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.last_opt_px.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.volatility.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.secondary_trade_report_id.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.indicator_flags.size

-- Display: Execution Report Message
jse_itac_enhancednativetrading_ntgi_v4_04.execution_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Message
jse_itac_enhancednativetrading_ntgi_v4_04.execution_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Partition Id: UInt8
  index, partition_id = jse_itac_enhancednativetrading_ntgi_v4_04.partition_id.dissect(buffer, index, packet, parent)

  -- Sequence Number: Int32
  index, sequence_number = jse_itac_enhancednativetrading_ntgi_v4_04.sequence_number.dissect(buffer, index, packet, parent)

  -- Execution Id: Alpha
  index, execution_id = jse_itac_enhancednativetrading_ntgi_v4_04.execution_id.dissect(buffer, index, packet, parent)

  -- Client Order Id: Alpha
  index, client_order_id = jse_itac_enhancednativetrading_ntgi_v4_04.client_order_id.dissect(buffer, index, packet, parent)

  -- Order Id Alpha 12: Alpha
  index, order_id_alpha_12 = jse_itac_enhancednativetrading_ntgi_v4_04.order_id_alpha_12.dissect(buffer, index, packet, parent)

  -- Execution Type: Alpha
  index, execution_type = jse_itac_enhancednativetrading_ntgi_v4_04.execution_type.dissect(buffer, index, packet, parent)

  -- Order Status: UInt8
  index, order_status = jse_itac_enhancednativetrading_ntgi_v4_04.order_status.dissect(buffer, index, packet, parent)

  -- Reject Code: Int32
  index, reject_code = jse_itac_enhancednativetrading_ntgi_v4_04.reject_code.dissect(buffer, index, packet, parent)

  -- Executed Price: Price
  index, executed_price = jse_itac_enhancednativetrading_ntgi_v4_04.executed_price.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Int32
  index, executed_quantity = jse_itac_enhancednativetrading_ntgi_v4_04.executed_quantity.dissect(buffer, index, packet, parent)

  -- Leaves Quantity: Int32
  index, leaves_quantity = jse_itac_enhancednativetrading_ntgi_v4_04.leaves_quantity.dissect(buffer, index, packet, parent)

  -- Working Indicator: UInt8
  index, working_indicator = jse_itac_enhancednativetrading_ntgi_v4_04.working_indicator.dissect(buffer, index, packet, parent)

  -- Security Id: Int32
  index, security_id = jse_itac_enhancednativetrading_ntgi_v4_04.security_id.dissect(buffer, index, packet, parent)

  -- Side: UInt8
  index, side = jse_itac_enhancednativetrading_ntgi_v4_04.side.dissect(buffer, index, packet, parent)

  -- Trader Mnemonic: Alpha
  index, trader_mnemonic = jse_itac_enhancednativetrading_ntgi_v4_04.trader_mnemonic.dissect(buffer, index, packet, parent)

  -- Account: Alpha
  index, account = jse_itac_enhancednativetrading_ntgi_v4_04.account.dissect(buffer, index, packet, parent)

  -- Is Market Ops Request: UInt8
  index, is_market_ops_request = jse_itac_enhancednativetrading_ntgi_v4_04.is_market_ops_request.dissect(buffer, index, packet, parent)

  -- Transact Time: Struct of 2 fields
  index, transact_time = jse_itac_enhancednativetrading_ntgi_v4_04.transact_time.dissect(buffer, index, packet, parent)

  -- Order Book: UInt8
  index, order_book = jse_itac_enhancednativetrading_ntgi_v4_04.order_book.dissect(buffer, index, packet, parent)

  -- Execution Instruction: Int8
  index, execution_instruction = jse_itac_enhancednativetrading_ntgi_v4_04.execution_instruction.dissect(buffer, index, packet, parent)

  -- Multi Leg Reporting Type: UInt8
  index, multi_leg_reporting_type = jse_itac_enhancednativetrading_ntgi_v4_04.multi_leg_reporting_type.dissect(buffer, index, packet, parent)

  -- Last Opt Px: Price
  index, last_opt_px = jse_itac_enhancednativetrading_ntgi_v4_04.last_opt_px.dissect(buffer, index, packet, parent)

  -- Volatility: Price
  index, volatility = jse_itac_enhancednativetrading_ntgi_v4_04.volatility.dissect(buffer, index, packet, parent)

  -- Secondary Trade Report Id: Alpha
  index, secondary_trade_report_id = jse_itac_enhancednativetrading_ntgi_v4_04.secondary_trade_report_id.dissect(buffer, index, packet, parent)

  -- Indicator Flags: Struct of 2 fields
  index, indicator_flags = jse_itac_enhancednativetrading_ntgi_v4_04.indicator_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Message
jse_itac_enhancednativetrading_ntgi_v4_04.execution_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.execution_report_message, buffer(offset, 0))
    local index = jse_itac_enhancednativetrading_ntgi_v4_04.execution_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_enhancednativetrading_ntgi_v4_04.execution_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_enhancednativetrading_ntgi_v4_04.execution_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Definition Request Message
jse_itac_enhancednativetrading_ntgi_v4_04.security_definition_request_message = {}

-- Size: Security Definition Request Message
jse_itac_enhancednativetrading_ntgi_v4_04.security_definition_request_message.size =
  jse_itac_enhancednativetrading_ntgi_v4_04.security_request_id.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.security_type.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.strike_price.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.maturity_date.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.reference_instrument_identifier.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.reference_instrument.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.reference_price.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.near_month_type.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.far_month_type.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.far_maturity_date.size

-- Display: Security Definition Request Message
jse_itac_enhancednativetrading_ntgi_v4_04.security_definition_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Request Message
jse_itac_enhancednativetrading_ntgi_v4_04.security_definition_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Request Id: Alpha
  index, security_request_id = jse_itac_enhancednativetrading_ntgi_v4_04.security_request_id.dissect(buffer, index, packet, parent)

  -- Security Type: UInt8
  index, security_type = jse_itac_enhancednativetrading_ntgi_v4_04.security_type.dissect(buffer, index, packet, parent)

  -- Strike Price: Price
  index, strike_price = jse_itac_enhancednativetrading_ntgi_v4_04.strike_price.dissect(buffer, index, packet, parent)

  -- Maturity Date: Alpha
  index, maturity_date = jse_itac_enhancednativetrading_ntgi_v4_04.maturity_date.dissect(buffer, index, packet, parent)

  -- Reference Instrument Identifier: UInt8
  index, reference_instrument_identifier = jse_itac_enhancednativetrading_ntgi_v4_04.reference_instrument_identifier.dissect(buffer, index, packet, parent)

  -- Reference Instrument: Alpha
  index, reference_instrument = jse_itac_enhancednativetrading_ntgi_v4_04.reference_instrument.dissect(buffer, index, packet, parent)

  -- Reference Price: Price
  index, reference_price = jse_itac_enhancednativetrading_ntgi_v4_04.reference_price.dissect(buffer, index, packet, parent)

  -- Near Month Type: Int32
  index, near_month_type = jse_itac_enhancednativetrading_ntgi_v4_04.near_month_type.dissect(buffer, index, packet, parent)

  -- Far Month Type: Int32
  index, far_month_type = jse_itac_enhancednativetrading_ntgi_v4_04.far_month_type.dissect(buffer, index, packet, parent)

  -- Far Maturity Date: Alpha
  index, far_maturity_date = jse_itac_enhancednativetrading_ntgi_v4_04.far_maturity_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Request Message
jse_itac_enhancednativetrading_ntgi_v4_04.security_definition_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.security_definition_request_message, buffer(offset, 0))
    local index = jse_itac_enhancednativetrading_ntgi_v4_04.security_definition_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_enhancednativetrading_ntgi_v4_04.security_definition_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_enhancednativetrading_ntgi_v4_04.security_definition_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Replace Request Message
jse_itac_enhancednativetrading_ntgi_v4_04.order_cancel_replace_request_message = {}

-- Size: Order Cancel Replace Request Message
jse_itac_enhancednativetrading_ntgi_v4_04.order_cancel_replace_request_message.size =
  jse_itac_enhancednativetrading_ntgi_v4_04.client_order_id.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.original_client_order_id.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.order_id_string_12.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.security_id.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.trader_mnemonic.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.account.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.order_type.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.time_in_force.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.expire_time.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.side.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.order_quantity.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.display_quantity.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.minimum_quantity.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.limit_price.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.stop_price.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.order_book.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.secondary_trade_report_id.size

-- Display: Order Cancel Replace Request Message
jse_itac_enhancednativetrading_ntgi_v4_04.order_cancel_replace_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Replace Request Message
jse_itac_enhancednativetrading_ntgi_v4_04.order_cancel_replace_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Order Id: Alpha
  index, client_order_id = jse_itac_enhancednativetrading_ntgi_v4_04.client_order_id.dissect(buffer, index, packet, parent)

  -- Original Client Order Id: Alpha
  index, original_client_order_id = jse_itac_enhancednativetrading_ntgi_v4_04.original_client_order_id.dissect(buffer, index, packet, parent)

  -- Order Id String 12: String
  index, order_id_string_12 = jse_itac_enhancednativetrading_ntgi_v4_04.order_id_string_12.dissect(buffer, index, packet, parent)

  -- Security Id: Int32
  index, security_id = jse_itac_enhancednativetrading_ntgi_v4_04.security_id.dissect(buffer, index, packet, parent)

  -- Trader Mnemonic: Alpha
  index, trader_mnemonic = jse_itac_enhancednativetrading_ntgi_v4_04.trader_mnemonic.dissect(buffer, index, packet, parent)

  -- Account: Alpha
  index, account = jse_itac_enhancednativetrading_ntgi_v4_04.account.dissect(buffer, index, packet, parent)

  -- Order Type: UInt8
  index, order_type = jse_itac_enhancednativetrading_ntgi_v4_04.order_type.dissect(buffer, index, packet, parent)

  -- Time In Force: UInt8
  index, time_in_force = jse_itac_enhancednativetrading_ntgi_v4_04.time_in_force.dissect(buffer, index, packet, parent)

  -- Expire Time: Alpha
  index, expire_time = jse_itac_enhancednativetrading_ntgi_v4_04.expire_time.dissect(buffer, index, packet, parent)

  -- Side: UInt8
  index, side = jse_itac_enhancednativetrading_ntgi_v4_04.side.dissect(buffer, index, packet, parent)

  -- Order Quantity: Int32
  index, order_quantity = jse_itac_enhancednativetrading_ntgi_v4_04.order_quantity.dissect(buffer, index, packet, parent)

  -- Display Quantity: Int32
  index, display_quantity = jse_itac_enhancednativetrading_ntgi_v4_04.display_quantity.dissect(buffer, index, packet, parent)

  -- Minimum Quantity: Int32
  index, minimum_quantity = jse_itac_enhancednativetrading_ntgi_v4_04.minimum_quantity.dissect(buffer, index, packet, parent)

  -- Limit Price: Price
  index, limit_price = jse_itac_enhancednativetrading_ntgi_v4_04.limit_price.dissect(buffer, index, packet, parent)

  -- Stop Price: Price
  index, stop_price = jse_itac_enhancednativetrading_ntgi_v4_04.stop_price.dissect(buffer, index, packet, parent)

  -- Order Book: UInt8
  index, order_book = jse_itac_enhancednativetrading_ntgi_v4_04.order_book.dissect(buffer, index, packet, parent)

  -- Secondary Trade Report Id: Alpha
  index, secondary_trade_report_id = jse_itac_enhancednativetrading_ntgi_v4_04.secondary_trade_report_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Replace Request Message
jse_itac_enhancednativetrading_ntgi_v4_04.order_cancel_replace_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.order_cancel_replace_request_message, buffer(offset, 0))
    local index = jse_itac_enhancednativetrading_ntgi_v4_04.order_cancel_replace_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_enhancednativetrading_ntgi_v4_04.order_cancel_replace_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_enhancednativetrading_ntgi_v4_04.order_cancel_replace_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Mass Cancel Request Message
jse_itac_enhancednativetrading_ntgi_v4_04.order_mass_cancel_request_message = {}

-- Size: Order Mass Cancel Request Message
jse_itac_enhancednativetrading_ntgi_v4_04.order_mass_cancel_request_message.size =
  jse_itac_enhancednativetrading_ntgi_v4_04.client_order_id.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.mass_cancel_request_type.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.security_id.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.segment.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.order_sub_type.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.order_book.size

-- Display: Order Mass Cancel Request Message
jse_itac_enhancednativetrading_ntgi_v4_04.order_mass_cancel_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Mass Cancel Request Message
jse_itac_enhancednativetrading_ntgi_v4_04.order_mass_cancel_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Order Id: Alpha
  index, client_order_id = jse_itac_enhancednativetrading_ntgi_v4_04.client_order_id.dissect(buffer, index, packet, parent)

  -- Mass Cancel Request Type: UInt8
  index, mass_cancel_request_type = jse_itac_enhancednativetrading_ntgi_v4_04.mass_cancel_request_type.dissect(buffer, index, packet, parent)

  -- Security Id: Int32
  index, security_id = jse_itac_enhancednativetrading_ntgi_v4_04.security_id.dissect(buffer, index, packet, parent)

  -- Segment: Alpha
  index, segment = jse_itac_enhancednativetrading_ntgi_v4_04.segment.dissect(buffer, index, packet, parent)

  -- Order Sub Type: UInt8
  index, order_sub_type = jse_itac_enhancednativetrading_ntgi_v4_04.order_sub_type.dissect(buffer, index, packet, parent)

  -- Order Book: UInt8
  index, order_book = jse_itac_enhancednativetrading_ntgi_v4_04.order_book.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Mass Cancel Request Message
jse_itac_enhancednativetrading_ntgi_v4_04.order_mass_cancel_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.order_mass_cancel_request_message, buffer(offset, 0))
    local index = jse_itac_enhancednativetrading_ntgi_v4_04.order_mass_cancel_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_enhancednativetrading_ntgi_v4_04.order_mass_cancel_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_enhancednativetrading_ntgi_v4_04.order_mass_cancel_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Request Message
jse_itac_enhancednativetrading_ntgi_v4_04.order_cancel_request_message = {}

-- Size: Order Cancel Request Message
jse_itac_enhancednativetrading_ntgi_v4_04.order_cancel_request_message.size =
  jse_itac_enhancednativetrading_ntgi_v4_04.client_order_id.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.orig_client_order_id.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.order_id_alpha_12.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.security_id.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.trader_mnemonic.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.side.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.order_book.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.rfq_id.size

-- Display: Order Cancel Request Message
jse_itac_enhancednativetrading_ntgi_v4_04.order_cancel_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Request Message
jse_itac_enhancednativetrading_ntgi_v4_04.order_cancel_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Order Id: Alpha
  index, client_order_id = jse_itac_enhancednativetrading_ntgi_v4_04.client_order_id.dissect(buffer, index, packet, parent)

  -- Orig Client Order Id: Alpha
  index, orig_client_order_id = jse_itac_enhancednativetrading_ntgi_v4_04.orig_client_order_id.dissect(buffer, index, packet, parent)

  -- Order Id Alpha 12: Alpha
  index, order_id_alpha_12 = jse_itac_enhancednativetrading_ntgi_v4_04.order_id_alpha_12.dissect(buffer, index, packet, parent)

  -- Security Id: Int32
  index, security_id = jse_itac_enhancednativetrading_ntgi_v4_04.security_id.dissect(buffer, index, packet, parent)

  -- Trader Mnemonic: Alpha
  index, trader_mnemonic = jse_itac_enhancednativetrading_ntgi_v4_04.trader_mnemonic.dissect(buffer, index, packet, parent)

  -- Side: UInt8
  index, side = jse_itac_enhancednativetrading_ntgi_v4_04.side.dissect(buffer, index, packet, parent)

  -- Order Book: UInt8
  index, order_book = jse_itac_enhancednativetrading_ntgi_v4_04.order_book.dissect(buffer, index, packet, parent)

  -- Rfq Id: Alpha
  index, rfq_id = jse_itac_enhancednativetrading_ntgi_v4_04.rfq_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Request Message
jse_itac_enhancednativetrading_ntgi_v4_04.order_cancel_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.order_cancel_request_message, buffer(offset, 0))
    local index = jse_itac_enhancednativetrading_ntgi_v4_04.order_cancel_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_enhancednativetrading_ntgi_v4_04.order_cancel_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_enhancednativetrading_ntgi_v4_04.order_cancel_request_message.fields(buffer, offset, packet, parent)
  end
end

-- New Order Message
jse_itac_enhancednativetrading_ntgi_v4_04.new_order_message = {}

-- Size: New Order Message
jse_itac_enhancednativetrading_ntgi_v4_04.new_order_message.size =
  jse_itac_enhancednativetrading_ntgi_v4_04.client_order_id.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.security_id.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.trader_mnemonic.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.account.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.order_type.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.time_in_force.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.expire_time.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.side.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.order_quantity.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.display_quantity.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.minimum_quantity.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.limit_price.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.stop_price.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.capacity.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.cancel_on_disconnect.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.order_book.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.anonymity.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.trailing_offset.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.secondary_trade_report_id.size

-- Display: New Order Message
jse_itac_enhancednativetrading_ntgi_v4_04.new_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Message
jse_itac_enhancednativetrading_ntgi_v4_04.new_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Order Id: Alpha
  index, client_order_id = jse_itac_enhancednativetrading_ntgi_v4_04.client_order_id.dissect(buffer, index, packet, parent)

  -- Security Id: Int32
  index, security_id = jse_itac_enhancednativetrading_ntgi_v4_04.security_id.dissect(buffer, index, packet, parent)

  -- Trader Mnemonic: Alpha
  index, trader_mnemonic = jse_itac_enhancednativetrading_ntgi_v4_04.trader_mnemonic.dissect(buffer, index, packet, parent)

  -- Account: Alpha
  index, account = jse_itac_enhancednativetrading_ntgi_v4_04.account.dissect(buffer, index, packet, parent)

  -- Order Type: UInt8
  index, order_type = jse_itac_enhancednativetrading_ntgi_v4_04.order_type.dissect(buffer, index, packet, parent)

  -- Time In Force: UInt8
  index, time_in_force = jse_itac_enhancednativetrading_ntgi_v4_04.time_in_force.dissect(buffer, index, packet, parent)

  -- Expire Time: Alpha
  index, expire_time = jse_itac_enhancednativetrading_ntgi_v4_04.expire_time.dissect(buffer, index, packet, parent)

  -- Side: UInt8
  index, side = jse_itac_enhancednativetrading_ntgi_v4_04.side.dissect(buffer, index, packet, parent)

  -- Order Quantity: Int32
  index, order_quantity = jse_itac_enhancednativetrading_ntgi_v4_04.order_quantity.dissect(buffer, index, packet, parent)

  -- Display Quantity: Int32
  index, display_quantity = jse_itac_enhancednativetrading_ntgi_v4_04.display_quantity.dissect(buffer, index, packet, parent)

  -- Minimum Quantity: Int32
  index, minimum_quantity = jse_itac_enhancednativetrading_ntgi_v4_04.minimum_quantity.dissect(buffer, index, packet, parent)

  -- Limit Price: Price
  index, limit_price = jse_itac_enhancednativetrading_ntgi_v4_04.limit_price.dissect(buffer, index, packet, parent)

  -- Stop Price: Price
  index, stop_price = jse_itac_enhancednativetrading_ntgi_v4_04.stop_price.dissect(buffer, index, packet, parent)

  -- Capacity: UInt8
  index, capacity = jse_itac_enhancednativetrading_ntgi_v4_04.capacity.dissect(buffer, index, packet, parent)

  -- Cancel On Disconnect: UInt8
  index, cancel_on_disconnect = jse_itac_enhancednativetrading_ntgi_v4_04.cancel_on_disconnect.dissect(buffer, index, packet, parent)

  -- Order Book: UInt8
  index, order_book = jse_itac_enhancednativetrading_ntgi_v4_04.order_book.dissect(buffer, index, packet, parent)

  -- Anonymity: UInt8
  index, anonymity = jse_itac_enhancednativetrading_ntgi_v4_04.anonymity.dissect(buffer, index, packet, parent)

  -- Trailing Offset: Price
  index, trailing_offset = jse_itac_enhancednativetrading_ntgi_v4_04.trailing_offset.dissect(buffer, index, packet, parent)

  -- Secondary Trade Report Id: Alpha
  index, secondary_trade_report_id = jse_itac_enhancednativetrading_ntgi_v4_04.secondary_trade_report_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Message
jse_itac_enhancednativetrading_ntgi_v4_04.new_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.new_order_message, buffer(offset, 0))
    local index = jse_itac_enhancednativetrading_ntgi_v4_04.new_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_enhancednativetrading_ntgi_v4_04.new_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_enhancednativetrading_ntgi_v4_04.new_order_message.fields(buffer, offset, packet, parent)
  end
end

-- System Status Message
jse_itac_enhancednativetrading_ntgi_v4_04.system_status_message = {}

-- Size: System Status Message
jse_itac_enhancednativetrading_ntgi_v4_04.system_status_message.size =
  jse_itac_enhancednativetrading_ntgi_v4_04.partition_id.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.system_status.size

-- Display: System Status Message
jse_itac_enhancednativetrading_ntgi_v4_04.system_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Status Message
jse_itac_enhancednativetrading_ntgi_v4_04.system_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Partition Id: UInt8
  index, partition_id = jse_itac_enhancednativetrading_ntgi_v4_04.partition_id.dissect(buffer, index, packet, parent)

  -- System Status: UInt8
  index, system_status = jse_itac_enhancednativetrading_ntgi_v4_04.system_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Status Message
jse_itac_enhancednativetrading_ntgi_v4_04.system_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.system_status_message, buffer(offset, 0))
    local index = jse_itac_enhancednativetrading_ntgi_v4_04.system_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_enhancednativetrading_ntgi_v4_04.system_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_enhancednativetrading_ntgi_v4_04.system_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Transmission Complete Message
jse_itac_enhancednativetrading_ntgi_v4_04.transmission_complete_message = {}

-- Size: Transmission Complete Message
jse_itac_enhancednativetrading_ntgi_v4_04.transmission_complete_message.size =
  jse_itac_enhancednativetrading_ntgi_v4_04.transmission_status.size

-- Display: Transmission Complete Message
jse_itac_enhancednativetrading_ntgi_v4_04.transmission_complete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Transmission Complete Message
jse_itac_enhancednativetrading_ntgi_v4_04.transmission_complete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transmission Status: UInt8
  index, transmission_status = jse_itac_enhancednativetrading_ntgi_v4_04.transmission_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Transmission Complete Message
jse_itac_enhancednativetrading_ntgi_v4_04.transmission_complete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.transmission_complete_message, buffer(offset, 0))
    local index = jse_itac_enhancednativetrading_ntgi_v4_04.transmission_complete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_enhancednativetrading_ntgi_v4_04.transmission_complete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_enhancednativetrading_ntgi_v4_04.transmission_complete_message.fields(buffer, offset, packet, parent)
  end
end

-- Missed Message Request Ack Message
jse_itac_enhancednativetrading_ntgi_v4_04.missed_message_request_ack_message = {}

-- Size: Missed Message Request Ack Message
jse_itac_enhancednativetrading_ntgi_v4_04.missed_message_request_ack_message.size =
  jse_itac_enhancednativetrading_ntgi_v4_04.missed_message_status.size

-- Display: Missed Message Request Ack Message
jse_itac_enhancednativetrading_ntgi_v4_04.missed_message_request_ack_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Missed Message Request Ack Message
jse_itac_enhancednativetrading_ntgi_v4_04.missed_message_request_ack_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Missed Message Status: UInt8
  index, missed_message_status = jse_itac_enhancednativetrading_ntgi_v4_04.missed_message_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Missed Message Request Ack Message
jse_itac_enhancednativetrading_ntgi_v4_04.missed_message_request_ack_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.missed_message_request_ack_message, buffer(offset, 0))
    local index = jse_itac_enhancednativetrading_ntgi_v4_04.missed_message_request_ack_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_enhancednativetrading_ntgi_v4_04.missed_message_request_ack_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_enhancednativetrading_ntgi_v4_04.missed_message_request_ack_message.fields(buffer, offset, packet, parent)
  end
end

-- Missed Message Request Message
jse_itac_enhancednativetrading_ntgi_v4_04.missed_message_request_message = {}

-- Size: Missed Message Request Message
jse_itac_enhancednativetrading_ntgi_v4_04.missed_message_request_message.size =
  jse_itac_enhancednativetrading_ntgi_v4_04.partition_id.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.sequence_number.size

-- Display: Missed Message Request Message
jse_itac_enhancednativetrading_ntgi_v4_04.missed_message_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Missed Message Request Message
jse_itac_enhancednativetrading_ntgi_v4_04.missed_message_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Partition Id: UInt8
  index, partition_id = jse_itac_enhancednativetrading_ntgi_v4_04.partition_id.dissect(buffer, index, packet, parent)

  -- Sequence Number: Int32
  index, sequence_number = jse_itac_enhancednativetrading_ntgi_v4_04.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Missed Message Request Message
jse_itac_enhancednativetrading_ntgi_v4_04.missed_message_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.missed_message_request_message, buffer(offset, 0))
    local index = jse_itac_enhancednativetrading_ntgi_v4_04.missed_message_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_enhancednativetrading_ntgi_v4_04.missed_message_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_enhancednativetrading_ntgi_v4_04.missed_message_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Reject Message
jse_itac_enhancednativetrading_ntgi_v4_04.reject_message = {}

-- Size: Reject Message
jse_itac_enhancednativetrading_ntgi_v4_04.reject_message.size =
  jse_itac_enhancednativetrading_ntgi_v4_04.reject_code.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.reject_reason.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.message_type.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.client_order_id.size

-- Display: Reject Message
jse_itac_enhancednativetrading_ntgi_v4_04.reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reject Message
jse_itac_enhancednativetrading_ntgi_v4_04.reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Code: Int32
  index, reject_code = jse_itac_enhancednativetrading_ntgi_v4_04.reject_code.dissect(buffer, index, packet, parent)

  -- Reject Reason: Alpha
  index, reject_reason = jse_itac_enhancednativetrading_ntgi_v4_04.reject_reason.dissect(buffer, index, packet, parent)

  -- Message Type: Byte
  index, message_type = jse_itac_enhancednativetrading_ntgi_v4_04.message_type.dissect(buffer, index, packet, parent)

  -- Client Order Id: Alpha
  index, client_order_id = jse_itac_enhancednativetrading_ntgi_v4_04.client_order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reject Message
jse_itac_enhancednativetrading_ntgi_v4_04.reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.reject_message, buffer(offset, 0))
    local index = jse_itac_enhancednativetrading_ntgi_v4_04.reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_enhancednativetrading_ntgi_v4_04.reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_enhancednativetrading_ntgi_v4_04.reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Message
jse_itac_enhancednativetrading_ntgi_v4_04.heartbeat_message = {}

-- Display: Heartbeat Message
jse_itac_enhancednativetrading_ntgi_v4_04.heartbeat_message.display = function(packet, parent, length)
  return "Heartbeat Message"
end


-- Dissect: Heartbeat Message
jse_itac_enhancednativetrading_ntgi_v4_04.heartbeat_message.dissect = function(buffer, offset, packet, parent)
  local display = jse_itac_enhancednativetrading_ntgi_v4_04.heartbeat_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Logout Message
jse_itac_enhancednativetrading_ntgi_v4_04.logout_message = {}

-- Size: Logout Message
jse_itac_enhancednativetrading_ntgi_v4_04.logout_message.size =
  jse_itac_enhancednativetrading_ntgi_v4_04.reason.size

-- Display: Logout Message
jse_itac_enhancednativetrading_ntgi_v4_04.logout_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Message
jse_itac_enhancednativetrading_ntgi_v4_04.logout_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason: Alpha
  index, reason = jse_itac_enhancednativetrading_ntgi_v4_04.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout Message
jse_itac_enhancednativetrading_ntgi_v4_04.logout_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.logout_message, buffer(offset, 0))
    local index = jse_itac_enhancednativetrading_ntgi_v4_04.logout_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_enhancednativetrading_ntgi_v4_04.logout_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_enhancednativetrading_ntgi_v4_04.logout_message.fields(buffer, offset, packet, parent)
  end
end

-- Logon Response Message
jse_itac_enhancednativetrading_ntgi_v4_04.logon_response_message = {}

-- Size: Logon Response Message
jse_itac_enhancednativetrading_ntgi_v4_04.logon_response_message.size =
  jse_itac_enhancednativetrading_ntgi_v4_04.reject_code.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.password_expiry.size

-- Display: Logon Response Message
jse_itac_enhancednativetrading_ntgi_v4_04.logon_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Response Message
jse_itac_enhancednativetrading_ntgi_v4_04.logon_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Code: Int32
  index, reject_code = jse_itac_enhancednativetrading_ntgi_v4_04.reject_code.dissect(buffer, index, packet, parent)

  -- Password Expiry: Int32
  index, password_expiry = jse_itac_enhancednativetrading_ntgi_v4_04.password_expiry.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Response Message
jse_itac_enhancednativetrading_ntgi_v4_04.logon_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.logon_response_message, buffer(offset, 0))
    local index = jse_itac_enhancednativetrading_ntgi_v4_04.logon_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_enhancednativetrading_ntgi_v4_04.logon_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_enhancednativetrading_ntgi_v4_04.logon_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Logon Message
jse_itac_enhancednativetrading_ntgi_v4_04.logon_message = {}

-- Size: Logon Message
jse_itac_enhancednativetrading_ntgi_v4_04.logon_message.size =
  jse_itac_enhancednativetrading_ntgi_v4_04.comp_id.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.password.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.new_password.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.protocol_version.size

-- Display: Logon Message
jse_itac_enhancednativetrading_ntgi_v4_04.logon_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Message
jse_itac_enhancednativetrading_ntgi_v4_04.logon_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Comp Id: Alpha
  index, comp_id = jse_itac_enhancednativetrading_ntgi_v4_04.comp_id.dissect(buffer, index, packet, parent)

  -- Password: Alpha
  index, password = jse_itac_enhancednativetrading_ntgi_v4_04.password.dissect(buffer, index, packet, parent)

  -- New Password: Alpha
  index, new_password = jse_itac_enhancednativetrading_ntgi_v4_04.new_password.dissect(buffer, index, packet, parent)

  -- Protocol Version: Int32
  index, protocol_version = jse_itac_enhancednativetrading_ntgi_v4_04.protocol_version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Message
jse_itac_enhancednativetrading_ntgi_v4_04.logon_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.logon_message, buffer(offset, 0))
    local index = jse_itac_enhancednativetrading_ntgi_v4_04.logon_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_enhancednativetrading_ntgi_v4_04.logon_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_enhancednativetrading_ntgi_v4_04.logon_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
jse_itac_enhancednativetrading_ntgi_v4_04.payload = {}

-- Dissect: Payload
jse_itac_enhancednativetrading_ntgi_v4_04.payload.dispatch = {
  ["A"] = jse_itac_enhancednativetrading_ntgi_v4_04.logon_message.dissect,
  ["B"] = jse_itac_enhancednativetrading_ntgi_v4_04.logon_response_message.dissect,
  ["5"] = jse_itac_enhancednativetrading_ntgi_v4_04.logout_message.dissect,
  ["0"] = jse_itac_enhancednativetrading_ntgi_v4_04.heartbeat_message.dissect,
  ["3"] = jse_itac_enhancednativetrading_ntgi_v4_04.reject_message.dissect,
  ["M"] = jse_itac_enhancednativetrading_ntgi_v4_04.missed_message_request_message.dissect,
  ["N"] = jse_itac_enhancednativetrading_ntgi_v4_04.missed_message_request_ack_message.dissect,
  ["P"] = jse_itac_enhancednativetrading_ntgi_v4_04.transmission_complete_message.dissect,
  ["n"] = jse_itac_enhancednativetrading_ntgi_v4_04.system_status_message.dissect,
  ["D"] = jse_itac_enhancednativetrading_ntgi_v4_04.new_order_message.dissect,
  ["F"] = jse_itac_enhancednativetrading_ntgi_v4_04.order_cancel_request_message.dissect,
  ["q"] = jse_itac_enhancednativetrading_ntgi_v4_04.order_mass_cancel_request_message.dissect,
  ["G"] = jse_itac_enhancednativetrading_ntgi_v4_04.order_cancel_replace_request_message.dissect,
  ["O"] = jse_itac_enhancednativetrading_ntgi_v4_04.security_definition_request_message.dissect,
  ["8"] = jse_itac_enhancednativetrading_ntgi_v4_04.execution_report_message.dissect,
  ["9"] = jse_itac_enhancednativetrading_ntgi_v4_04.order_cancel_reject_message.dissect,
  ["r"] = jse_itac_enhancednativetrading_ntgi_v4_04.order_mass_cancel_report_message.dissect,
  ["R"] = jse_itac_enhancednativetrading_ntgi_v4_04.security_definition_response_message.dissect,
  ["Z"] = jse_itac_enhancednativetrading_ntgi_v4_04.news_message.dissect,
  ["j"] = jse_itac_enhancednativetrading_ntgi_v4_04.business_reject_message.dissect,
}

jse_itac_enhancednativetrading_ntgi_v4_04.payload.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = jse_itac_enhancednativetrading_ntgi_v4_04.payload.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
jse_itac_enhancednativetrading_ntgi_v4_04.message_header = {}

-- Size: Message Header
jse_itac_enhancednativetrading_ntgi_v4_04.message_header.size =
  jse_itac_enhancednativetrading_ntgi_v4_04.start_of_message.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.message_length.size + 
  jse_itac_enhancednativetrading_ntgi_v4_04.message_type.size

-- Display: Message Header
jse_itac_enhancednativetrading_ntgi_v4_04.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
jse_itac_enhancednativetrading_ntgi_v4_04.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Of Message: UInt8
  index, start_of_message = jse_itac_enhancednativetrading_ntgi_v4_04.start_of_message.dissect(buffer, index, packet, parent)

  -- Message Length: UInt16
  index, message_length = jse_itac_enhancednativetrading_ntgi_v4_04.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: Byte
  index, message_type = jse_itac_enhancednativetrading_ntgi_v4_04.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
jse_itac_enhancednativetrading_ntgi_v4_04.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.message_header, buffer(offset, 0))
    local index = jse_itac_enhancednativetrading_ntgi_v4_04.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jse_itac_enhancednativetrading_ntgi_v4_04.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jse_itac_enhancednativetrading_ntgi_v4_04.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
jse_itac_enhancednativetrading_ntgi_v4_04.message = {}

-- Display: Message
jse_itac_enhancednativetrading_ntgi_v4_04.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
jse_itac_enhancednativetrading_ntgi_v4_04.message.fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = jse_itac_enhancednativetrading_ntgi_v4_04.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 20 branches
  index = jse_itac_enhancednativetrading_ntgi_v4_04.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
jse_itac_enhancednativetrading_ntgi_v4_04.message.dissect = function(buffer, offset, packet, parent, size_of_message)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04.fields.message, buffer(offset, 0))
    local current = jse_itac_enhancednativetrading_ntgi_v4_04.message.fields(buffer, offset, packet, parent, size_of_message)
    parent:set_len(size_of_message)
    local display = jse_itac_enhancednativetrading_ntgi_v4_04.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    jse_itac_enhancednativetrading_ntgi_v4_04.message.fields(buffer, offset, packet, parent, size_of_message)

    return index
  end
end

-- Remaining Bytes For: Message
local message_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < jse_itac_enhancednativetrading_ntgi_v4_04.message_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index + 1, 2):le_uint() + 3

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Packet
jse_itac_enhancednativetrading_ntgi_v4_04.packet = {}

-- Verify required size of Tcp packet
jse_itac_enhancednativetrading_ntgi_v4_04.packet.requiredsize = function(buffer)
  return buffer:len() >= jse_itac_enhancednativetrading_ntgi_v4_04.message_header.size
end

-- Dissect Packet
jse_itac_enhancednativetrading_ntgi_v4_04.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_message = message_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_message):tvb()
      index = jse_itac_enhancednativetrading_ntgi_v4_04.message.dissect(frame, index, packet, parent, size_of_message)
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
function omi_jse_itac_enhancednativetrading_ntgi_v4_04.init()
end

-- Dissector for Jse Itac EnhancedNativeTrading Ntgi 4.04
function omi_jse_itac_enhancednativetrading_ntgi_v4_04.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_jse_itac_enhancednativetrading_ntgi_v4_04.name

  -- Dissect protocol
  local protocol = parent:add(omi_jse_itac_enhancednativetrading_ntgi_v4_04, buffer(), omi_jse_itac_enhancednativetrading_ntgi_v4_04.description, "("..buffer:len().." Bytes)")
  return jse_itac_enhancednativetrading_ntgi_v4_04.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Jse Itac EnhancedNativeTrading Ntgi 4.04 (Tcp)
local function omi_jse_itac_enhancednativetrading_ntgi_v4_04_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not jse_itac_enhancednativetrading_ntgi_v4_04.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_jse_itac_enhancednativetrading_ntgi_v4_04
  omi_jse_itac_enhancednativetrading_ntgi_v4_04.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Jse Itac EnhancedNativeTrading Ntgi 4.04
omi_jse_itac_enhancednativetrading_ntgi_v4_04:register_heuristic("tcp", omi_jse_itac_enhancednativetrading_ntgi_v4_04_tcp_heuristic)

-- Register Jse Itac EnhancedNativeTrading Ntgi 4.04 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_jse_itac_enhancednativetrading_ntgi_v4_04)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: JSE Limited
--   Version: 4.04
--   Date: Thursday, March 28, 2024
--   Specification: JSE Volume 01D - Enhanced Native Trading Gateway (4.04).pdf
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
