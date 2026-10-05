-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq PhlxOptions Orders Itch 1.92 Protocol
local omi_nasdaq_phlxoptions_orders_itch_v1_92 = Proto("Omi.Nasdaq.PhlxOptions.Orders.Itch.v1.92", "Nasdaq PhlxOptions Orders Itch 1.92")

-- Protocol table
local nasdaq_phlxoptions_orders_itch_v1_92 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq PhlxOptions Orders Itch 1.92 Fields
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.accepted_sequence_number = ProtoField.new("Accepted Sequence Number", "nasdaq.phlxoptions.orders.itch.v1.92.acceptedsequencenumber", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.accepted_session = ProtoField.new("Accepted Session", "nasdaq.phlxoptions.orders.itch.v1.92.acceptedsession", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.action = ProtoField.new("Action", "nasdaq.phlxoptions.orders.itch.v1.92.action", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.all_or_none = ProtoField.new("All Or None", "nasdaq.phlxoptions.orders.itch.v1.92.allornone", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.auction_id = ProtoField.new("Auction Id", "nasdaq.phlxoptions.orders.itch.v1.92.auctionid", ftypes.UINT32)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.auction_side = ProtoField.new("Auction Side", "nasdaq.phlxoptions.orders.itch.v1.92.auctionside", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.auction_type = ProtoField.new("Auction Type", "nasdaq.phlxoptions.orders.itch.v1.92.auctiontype", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.client_packet_type = ProtoField.new("Packet Type", "nasdaq.phlxoptions.orders.itch.v1.92.clientpackettype", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.complex_order_leg = ProtoField.new("Complex Order Leg", "nasdaq.phlxoptions.orders.itch.v1.92.complexorderleg", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.complex_order_strategy_leg = ProtoField.new("Complex Order Strategy Leg", "nasdaq.phlxoptions.orders.itch.v1.92.complexorderstrategyleg", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.current_trading_state = ProtoField.new("Current Trading State", "nasdaq.phlxoptions.orders.itch.v1.92.currenttradingstate", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.customer_firm_indicator = ProtoField.new("Customer Firm Indicator", "nasdaq.phlxoptions.orders.itch.v1.92.customerfirmindicator", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.day = ProtoField.new("Day", "nasdaq.phlxoptions.orders.itch.v1.92.day", ftypes.UINT16, nil, base.DEC, 0x001F)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.debit_or_credit = ProtoField.new("Debit Or Credit", "nasdaq.phlxoptions.orders.itch.v1.92.debitorcredit", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.debug_text = ProtoField.new("Debug Text", "nasdaq.phlxoptions.orders.itch.v1.92.debugtext", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.end_of_replay_sequence_number = ProtoField.new("End Of Replay Sequence Number", "nasdaq.phlxoptions.orders.itch.v1.92.endofreplaysequencenumber", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.event_code = ProtoField.new("Event Code", "nasdaq.phlxoptions.orders.itch.v1.92.eventcode", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.executable_order_volume = ProtoField.new("Executable Order Volume", "nasdaq.phlxoptions.orders.itch.v1.92.executableordervolume", ftypes.UINT32)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.expiration = ProtoField.new("Expiration", "nasdaq.phlxoptions.orders.itch.v1.92.expiration", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.explicit_strike_price = ProtoField.new("Explicit Strike Price", "nasdaq.phlxoptions.orders.itch.v1.92.explicitstrikeprice", ftypes.DOUBLE)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.imbalance_volume = ProtoField.new("Imbalance Volume", "nasdaq.phlxoptions.orders.itch.v1.92.imbalancevolume", ftypes.UINT32)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.leg_open_close_indicator = ProtoField.new("Leg Open Close Indicator", "nasdaq.phlxoptions.orders.itch.v1.92.legopencloseindicator", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.leg_ratio = ProtoField.new("Leg Ratio", "nasdaq.phlxoptions.orders.itch.v1.92.legratio", ftypes.UINT32)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.limit_price = ProtoField.new("Limit Price", "nasdaq.phlxoptions.orders.itch.v1.92.limitprice", ftypes.DOUBLE)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.market_qualifier = ProtoField.new("Market Qualifier", "nasdaq.phlxoptions.orders.itch.v1.92.marketqualifier", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.matched_volume = ProtoField.new("Matched Volume", "nasdaq.phlxoptions.orders.itch.v1.92.matchedvolume", ftypes.UINT32)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.message_count = ProtoField.new("Message Count", "nasdaq.phlxoptions.orders.itch.v1.92.messagecount", ftypes.UINT16)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.message_length = ProtoField.new("Message Length", "nasdaq.phlxoptions.orders.itch.v1.92.messagelength", ftypes.UINT16)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.message_type = ProtoField.new("Message Type", "nasdaq.phlxoptions.orders.itch.v1.92.messagetype", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.month = ProtoField.new("Month", "nasdaq.phlxoptions.orders.itch.v1.92.month", ftypes.UINT16, nil, base.DEC, 0x01E0)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.nanoseconds = ProtoField.new("Nanoseconds", "nasdaq.phlxoptions.orders.itch.v1.92.nanoseconds", ftypes.UINT32)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.number_of_legs = ProtoField.new("Number Of Legs", "nasdaq.phlxoptions.orders.itch.v1.92.numberoflegs", ftypes.UINT8)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.open_close_indicator = ProtoField.new("Open Close Indicator", "nasdaq.phlxoptions.orders.itch.v1.92.opencloseindicator", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.open_state = ProtoField.new("Open State", "nasdaq.phlxoptions.orders.itch.v1.92.openstate", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.option_closing_type = ProtoField.new("Option Closing Type", "nasdaq.phlxoptions.orders.itch.v1.92.optionclosingtype", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.option_id = ProtoField.new("Option Id", "nasdaq.phlxoptions.orders.itch.v1.92.optionid", ftypes.UINT32)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.option_type = ProtoField.new("Option Type", "nasdaq.phlxoptions.orders.itch.v1.92.optiontype", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.order_id = ProtoField.new("Order Id", "nasdaq.phlxoptions.orders.itch.v1.92.orderid", ftypes.UINT32)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.order_status = ProtoField.new("Order Status", "nasdaq.phlxoptions.orders.itch.v1.92.orderstatus", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.order_type = ProtoField.new("Order Type", "nasdaq.phlxoptions.orders.itch.v1.92.ordertype", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.original_order_volume = ProtoField.new("Original Order Volume", "nasdaq.phlxoptions.orders.itch.v1.92.originalordervolume", ftypes.UINT32)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.packet_length = ProtoField.new("Packet Length", "nasdaq.phlxoptions.orders.itch.v1.92.packetlength", ftypes.UINT16)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.password = ProtoField.new("Password", "nasdaq.phlxoptions.orders.itch.v1.92.password", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.phlx_tradable = ProtoField.new("Phlx Tradable", "nasdaq.phlxoptions.orders.itch.v1.92.phlxtradable", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.price = ProtoField.new("Price", "nasdaq.phlxoptions.orders.itch.v1.92.price", ftypes.DOUBLE)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "nasdaq.phlxoptions.orders.itch.v1.92.rejectreasoncode", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "nasdaq.phlxoptions.orders.itch.v1.92.requestedsequencenumber", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.requested_session = ProtoField.new("Requested Session", "nasdaq.phlxoptions.orders.itch.v1.92.requestedsession", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.reserved_3 = ProtoField.new("Reserved 3", "nasdaq.phlxoptions.orders.itch.v1.92.reserved3", ftypes.BYTES)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.seconds = ProtoField.new("Seconds", "nasdaq.phlxoptions.orders.itch.v1.92.seconds", ftypes.UINT32)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.security_symbol = ProtoField.new("Security Symbol", "nasdaq.phlxoptions.orders.itch.v1.92.securitysymbol", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.phlxoptions.orders.itch.v1.92.sequencenumber", ftypes.UINT32)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "nasdaq.phlxoptions.orders.itch.v1.92.sequencedmessagetype", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.server_packet_type = ProtoField.new("Packet Type", "nasdaq.phlxoptions.orders.itch.v1.92.serverpackettype", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.session = ProtoField.new("Session", "nasdaq.phlxoptions.orders.itch.v1.92.session", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.side = ProtoField.new("Side", "nasdaq.phlxoptions.orders.itch.v1.92.side", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.source = ProtoField.new("Source", "nasdaq.phlxoptions.orders.itch.v1.92.source", ftypes.UINT8)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.strategy_id = ProtoField.new("Strategy Id", "nasdaq.phlxoptions.orders.itch.v1.92.strategyid", ftypes.UINT32)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.time_in_force = ProtoField.new("Time In Force", "nasdaq.phlxoptions.orders.itch.v1.92.timeinforce", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.phlxoptions.orders.itch.v1.92.timestamp", ftypes.ABSOLUTE_TIME, nil, base.LOCAL)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.timestamp_utc = ProtoField.new("Timestamp", "nasdaq.phlxoptions.orders.itch.v1.92.timestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "nasdaq.phlxoptions.orders.itch.v1.92.underlyingsymbol", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "nasdaq.phlxoptions.orders.itch.v1.92.unsequencedmessage", ftypes.BYTES)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "nasdaq.phlxoptions.orders.itch.v1.92.unsequencedmessagetype", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.username = ProtoField.new("Username", "nasdaq.phlxoptions.orders.itch.v1.92.username", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.version = ProtoField.new("Version", "nasdaq.phlxoptions.orders.itch.v1.92.version", ftypes.UINT8)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.volume = ProtoField.new("Volume", "nasdaq.phlxoptions.orders.itch.v1.92.volume", ftypes.UINT32)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.year = ProtoField.new("Year", "nasdaq.phlxoptions.orders.itch.v1.92.year", ftypes.UINT16, nil, base.DEC, 0xFE00)

-- Nasdaq PhlxOptions Orders Itch 1.92 Framing
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.client_packet = ProtoField.new("Tcp Packet", "nasdaq.phlxoptions.orders.itch.v1.92.clientpacket", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.client_packet_header = ProtoField.new("Tcp Packet Header", "nasdaq.phlxoptions.orders.itch.v1.92.clientpacketheader", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.client_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.phlxoptions.orders.itch.v1.92.clientsoupbintcppacket", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.message = ProtoField.new("Message", "nasdaq.phlxoptions.orders.itch.v1.92.message", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.message_header = ProtoField.new("Message Header", "nasdaq.phlxoptions.orders.itch.v1.92.messageheader", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.packet = ProtoField.new("Packet", "nasdaq.phlxoptions.orders.itch.v1.92.packet", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.phlxoptions.orders.itch.v1.92.packetheader", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.server_packet = ProtoField.new("Tcp Packet", "nasdaq.phlxoptions.orders.itch.v1.92.serverpacket", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.server_packet_header = ProtoField.new("Tcp Packet Header", "nasdaq.phlxoptions.orders.itch.v1.92.serverpacketheader", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.server_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.phlxoptions.orders.itch.v1.92.serversoupbintcppacket", ftypes.STRING)

-- Nasdaq PhlxOptions Orders 1.92 Application Messages
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.auction_notification_message = ProtoField.new("Auction Notification Message", "nasdaq.phlxoptions.orders.itch.v1.92.auctionnotificationmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.complex_auction_notification_message = ProtoField.new("Complex Auction Notification Message", "nasdaq.phlxoptions.orders.itch.v1.92.complexauctionnotificationmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.complex_order_message = ProtoField.new("Complex Order Message", "nasdaq.phlxoptions.orders.itch.v1.92.complexordermessage", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.complex_order_strategy_message = ProtoField.new("Complex Order Strategy Message", "nasdaq.phlxoptions.orders.itch.v1.92.complexorderstrategymessage", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.complex_trading_action_message = ProtoField.new("Complex Trading Action Message", "nasdaq.phlxoptions.orders.itch.v1.92.complextradingactionmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.end_of_replay_sequence_message = ProtoField.new("End Of Replay Sequence Message", "nasdaq.phlxoptions.orders.itch.v1.92.endofreplaysequencemessage", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.options_directory_message = ProtoField.new("Options Directory Message", "nasdaq.phlxoptions.orders.itch.v1.92.optionsdirectorymessage", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.security_open_closed_message = ProtoField.new("Security Open Closed Message", "nasdaq.phlxoptions.orders.itch.v1.92.securityopenclosedmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.security_trading_action_message = ProtoField.new("Security Trading Action Message", "nasdaq.phlxoptions.orders.itch.v1.92.securitytradingactionmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.simple_order_message = ProtoField.new("Simple Order Message", "nasdaq.phlxoptions.orders.itch.v1.92.simpleordermessage", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.strategy_open_closed_message = ProtoField.new("Strategy Open Closed Message", "nasdaq.phlxoptions.orders.itch.v1.92.strategyopenclosedmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.phlxoptions.orders.itch.v1.92.systemeventmessage", ftypes.STRING)

-- Nasdaq PhlxOptions Orders 1.92 Session Messages
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.client_heartbeat_packet = ProtoField.new("Client Heartbeat Packet", "nasdaq.phlxoptions.orders.itch.v1.92.clientheartbeatpacket", ftypes.BYTES)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.debug_packet = ProtoField.new("Debug Packet", "nasdaq.phlxoptions.orders.itch.v1.92.debugpacket", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.end_of_session = ProtoField.new("End Of Session", "nasdaq.phlxoptions.orders.itch.v1.92.endofsession", ftypes.BYTES)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.end_of_session_packet = ProtoField.new("End Of Session Packet", "nasdaq.phlxoptions.orders.itch.v1.92.endofsessionpacket", ftypes.BYTES)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.heartbeat = ProtoField.new("Heartbeat", "nasdaq.phlxoptions.orders.itch.v1.92.heartbeat", ftypes.BYTES)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "nasdaq.phlxoptions.orders.itch.v1.92.loginacceptedpacket", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "nasdaq.phlxoptions.orders.itch.v1.92.loginrejectedpacket", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.login_request_packet = ProtoField.new("Login Request Packet", "nasdaq.phlxoptions.orders.itch.v1.92.loginrequestpacket", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.logout_request_packet = ProtoField.new("Logout Request Packet", "nasdaq.phlxoptions.orders.itch.v1.92.logoutrequestpacket", ftypes.BYTES)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "nasdaq.phlxoptions.orders.itch.v1.92.sequenceddatapacket", ftypes.STRING)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.server_heartbeat_packet = ProtoField.new("Server Heartbeat Packet", "nasdaq.phlxoptions.orders.itch.v1.92.serverheartbeatpacket", ftypes.BYTES)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "nasdaq.phlxoptions.orders.itch.v1.92.unsequenceddatapacket", ftypes.STRING)

-- Nasdaq PhlxOptions Orders Itch 1.92 Generated Fields
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.complex_order_leg_index = ProtoField.new("Complex Order Leg Index", "nasdaq.phlxoptions.orders.itch.v1.92.complexorderlegindex", ftypes.UINT16)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.complex_order_strategy_leg_index = ProtoField.new("Complex Order Strategy Leg Index", "nasdaq.phlxoptions.orders.itch.v1.92.complexorderstrategylegindex", ftypes.UINT16)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.message_index = ProtoField.new("Message Index", "nasdaq.phlxoptions.orders.itch.v1.92.messageindex", ftypes.UINT16)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "nasdaq.phlxoptions.orders.itch.v1.92.messagesequencenumber", ftypes.UINT64)
omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.sequenced_data_packet_sequence_number = ProtoField.new("Sequenced Data Packet Sequence Number", "nasdaq.phlxoptions.orders.itch.v1.92.sequenceddatapacketsequencenumber", ftypes.UINT64)

-----------------------------------------------------------------------
-- Nasdaq PhlxOptions Orders Itch 1.92 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
nasdaq_phlxoptions_orders_itch_v1_92.timestamp_format = 2

-- Hours behind UTC (EST) for midnight calculation
nasdaq_phlxoptions_orders_itch_v1_92.utc_offset_hours = 5

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
nasdaq_phlxoptions_orders_itch_v1_92.absolute_time_base = 0

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

-- Nasdaq PhlxOptions Orders Itch 1.92 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.repeating_groups = true
show.session_messages = true
show.indexes = true
show.sequences = true

-- Register Nasdaq PhlxOptions Orders Itch 1.92 Show Options
omi_nasdaq_phlxoptions_orders_itch_v1_92.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_nasdaq_phlxoptions_orders_itch_v1_92.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_nasdaq_phlxoptions_orders_itch_v1_92.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_nasdaq_phlxoptions_orders_itch_v1_92.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_phlxoptions_orders_itch_v1_92.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_phlxoptions_orders_itch_v1_92.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nasdaq_phlxoptions_orders_itch_v1_92.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_nasdaq_phlxoptions_orders_itch_v1_92.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_nasdaq_phlxoptions_orders_itch_v1_92.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_nasdaq_phlxoptions_orders_itch_v1_92.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")

omi_nasdaq_phlxoptions_orders_itch_v1_92.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Timestamp display format", timestamp_format_enum, false)
omi_nasdaq_phlxoptions_orders_itch_v1_92.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 5, "Hours behind UTC (EST) for midnight calculation")
omi_nasdaq_phlxoptions_orders_itch_v1_92.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_nasdaq_phlxoptions_orders_itch_v1_92.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_phlxoptions_orders_itch_v1_92.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_phlxoptions_orders_itch_v1_92.prefs.show_application_messages
  end
  if show.headers ~= omi_nasdaq_phlxoptions_orders_itch_v1_92.prefs.show_headers then
    show.headers = omi_nasdaq_phlxoptions_orders_itch_v1_92.prefs.show_headers
  end
  if show.repeating_groups ~= omi_nasdaq_phlxoptions_orders_itch_v1_92.prefs.show_repeating_groups then
    show.repeating_groups = omi_nasdaq_phlxoptions_orders_itch_v1_92.prefs.show_repeating_groups
  end
  if show.session_messages ~= omi_nasdaq_phlxoptions_orders_itch_v1_92.prefs.show_session_messages then
    show.session_messages = omi_nasdaq_phlxoptions_orders_itch_v1_92.prefs.show_session_messages
  end
  if show.structs ~= omi_nasdaq_phlxoptions_orders_itch_v1_92.prefs.show_structs then
    show.structs = omi_nasdaq_phlxoptions_orders_itch_v1_92.prefs.show_structs
  end
  if show.indexes ~= omi_nasdaq_phlxoptions_orders_itch_v1_92.prefs.show_indexes then
    show.indexes = omi_nasdaq_phlxoptions_orders_itch_v1_92.prefs.show_indexes
  end
  if show.sequences ~= omi_nasdaq_phlxoptions_orders_itch_v1_92.prefs.show_sequences then
    show.sequences = omi_nasdaq_phlxoptions_orders_itch_v1_92.prefs.show_sequences
  end
  if nasdaq_phlxoptions_orders_itch_v1_92.timestamp_format ~= omi_nasdaq_phlxoptions_orders_itch_v1_92.prefs.timestamp_format then
    nasdaq_phlxoptions_orders_itch_v1_92.timestamp_format = omi_nasdaq_phlxoptions_orders_itch_v1_92.prefs.timestamp_format
  end
  if nasdaq_phlxoptions_orders_itch_v1_92.utc_offset_hours ~= omi_nasdaq_phlxoptions_orders_itch_v1_92.prefs.utc_offset_hours then
    nasdaq_phlxoptions_orders_itch_v1_92.utc_offset_hours = omi_nasdaq_phlxoptions_orders_itch_v1_92.prefs.utc_offset_hours
  end
  if nasdaq_phlxoptions_orders_itch_v1_92.absolute_time_base ~= omi_nasdaq_phlxoptions_orders_itch_v1_92.prefs.absolute_time_base then
    nasdaq_phlxoptions_orders_itch_v1_92.absolute_time_base = omi_nasdaq_phlxoptions_orders_itch_v1_92.prefs.absolute_time_base
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
nasdaq_phlxoptions_orders_itch_v1_92.conversation = {}
nasdaq_phlxoptions_orders_itch_v1_92.conversation.flows = {}

-- Revisit replay cursor for stream sequences: which frame is being
-- re-dissected and which memoized occurrence within it is next
nasdaq_phlxoptions_orders_itch_v1_92.stream_frame = nil
nasdaq_phlxoptions_orders_itch_v1_92.stream_occurrence = 0

-- Conversation key for the current packet (src/dst tuple)
nasdaq_phlxoptions_orders_itch_v1_92.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
nasdaq_phlxoptions_orders_itch_v1_92.conversation.data = function(packet)
  local key = nasdaq_phlxoptions_orders_itch_v1_92.conversation.key(packet)
  local data = nasdaq_phlxoptions_orders_itch_v1_92.conversation.flows[key]
  if data == nil then
    data = { accepted_sequence_number = { last = nil, frames = {} }, sequence = { next = nil, frames = {} } }
    nasdaq_phlxoptions_orders_itch_v1_92.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
nasdaq_phlxoptions_orders_itch_v1_92.conversation.current = nil


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
-- Nasdaq PhlxOptions Orders Itch 1.92 Fields
-----------------------------------------------------------------------

-- Accepted Sequence Number
nasdaq_phlxoptions_orders_itch_v1_92.accepted_sequence_number = {}

-- Size: Accepted Sequence Number
nasdaq_phlxoptions_orders_itch_v1_92.accepted_sequence_number.size = 20

-- Display: Accepted Sequence Number
nasdaq_phlxoptions_orders_itch_v1_92.accepted_sequence_number.display = function(value)
  return "Accepted Sequence Number: "..value
end

-- Dissect: Accepted Sequence Number
nasdaq_phlxoptions_orders_itch_v1_92.accepted_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.accepted_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nasdaq_phlxoptions_orders_itch_v1_92.accepted_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.accepted_sequence_number, range, value, display)

  return offset + length, value
end

-- Accepted Session
nasdaq_phlxoptions_orders_itch_v1_92.accepted_session = {}

-- Size: Accepted Session
nasdaq_phlxoptions_orders_itch_v1_92.accepted_session.size = 10

-- Display: Accepted Session
nasdaq_phlxoptions_orders_itch_v1_92.accepted_session.display = function(value)
  return "Accepted Session: "..value
end

-- Dissect: Accepted Session
nasdaq_phlxoptions_orders_itch_v1_92.accepted_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.accepted_session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_phlxoptions_orders_itch_v1_92.accepted_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.accepted_session, range, value, display)

  return offset + length, value
end

-- Action
nasdaq_phlxoptions_orders_itch_v1_92.action = {}

-- Size: Action
nasdaq_phlxoptions_orders_itch_v1_92.action.size = 1

-- Display: Action
nasdaq_phlxoptions_orders_itch_v1_92.action.display = function(value)
  if value == "A" then
    return "Action: Add (A)"
  end
  if value == "D" then
    return "Action: Delete (D)"
  end

  return "Action: Unknown("..value..")"
end

-- Dissect: Action
nasdaq_phlxoptions_orders_itch_v1_92.action.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_92.action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.action, range, value, display)

  return offset + length, value
end

-- All Or None
nasdaq_phlxoptions_orders_itch_v1_92.all_or_none = {}

-- Size: All Or None
nasdaq_phlxoptions_orders_itch_v1_92.all_or_none.size = 1

-- Display: All Or None
nasdaq_phlxoptions_orders_itch_v1_92.all_or_none.display = function(value)
  if value == "Y" then
    return "All Or None: All Or None Order (Y)"
  end
  if value == "N" then
    return "All Or None: Not All Or None Order (N)"
  end

  return "All Or None: Unknown("..value..")"
end

-- Dissect: All Or None
nasdaq_phlxoptions_orders_itch_v1_92.all_or_none.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.all_or_none.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_92.all_or_none.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.all_or_none, range, value, display)

  return offset + length, value
end

-- Auction Id
nasdaq_phlxoptions_orders_itch_v1_92.auction_id = {}

-- Size: Auction Id
nasdaq_phlxoptions_orders_itch_v1_92.auction_id.size = 4

-- Display: Auction Id
nasdaq_phlxoptions_orders_itch_v1_92.auction_id.display = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
nasdaq_phlxoptions_orders_itch_v1_92.auction_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.auction_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_92.auction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Auction Side
nasdaq_phlxoptions_orders_itch_v1_92.auction_side = {}

-- Size: Auction Side
nasdaq_phlxoptions_orders_itch_v1_92.auction_side.size = 1

-- Display: Auction Side
nasdaq_phlxoptions_orders_itch_v1_92.auction_side.display = function(value)
  if value == "B" then
    return "Auction Side: Buy (B)"
  end
  if value == "S" then
    return "Auction Side: Sell (S)"
  end
  if value == "*" then
    return "Auction Side: Solicitation Auction (*)"
  end

  return "Auction Side: Unknown("..value..")"
end

-- Dissect: Auction Side
nasdaq_phlxoptions_orders_itch_v1_92.auction_side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.auction_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_92.auction_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.auction_side, range, value, display)

  return offset + length, value
end

-- Auction Type
nasdaq_phlxoptions_orders_itch_v1_92.auction_type = {}

-- Size: Auction Type
nasdaq_phlxoptions_orders_itch_v1_92.auction_type.size = 1

-- Display: Auction Type
nasdaq_phlxoptions_orders_itch_v1_92.auction_type.display = function(value)
  if value == "C" then
    return "Auction Type: Cola (C)"
  end
  if value == "O" then
    return "Auction Type: Opening (O)"
  end
  if value == "R" then
    return "Auction Type: Reopening (R)"
  end
  if value == "P" then
    return "Auction Type: Pixl (P)"
  end
  if value == "S" then
    return "Auction Type: Solicitation (S)"
  end
  if value == "I" then
    return "Auction Type: Order Exposure (I)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
nasdaq_phlxoptions_orders_itch_v1_92.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_92.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Client Packet Type
nasdaq_phlxoptions_orders_itch_v1_92.client_packet_type = {}

-- Size: Client Packet Type
nasdaq_phlxoptions_orders_itch_v1_92.client_packet_type.size = 1

-- Display: Client Packet Type
nasdaq_phlxoptions_orders_itch_v1_92.client_packet_type.display = function(value)
  if value == "+" then
    return "Packet Type: Debug Packet (+)"
  end
  if value == "L" then
    return "Packet Type: Login Request Packet (L)"
  end
  if value == "U" then
    return "Packet Type: Unsequenced Data Packet (U)"
  end
  if value == "R" then
    return "Packet Type: Client Heartbeat Packet (R)"
  end
  if value == "O" then
    return "Packet Type: Logout Request Packet (O)"
  end

  return "Packet Type: Unknown("..value..")"
end

-- Dissect: Client Packet Type
nasdaq_phlxoptions_orders_itch_v1_92.client_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.client_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_92.client_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.client_packet_type, range, value, display)

  return offset + length, value
end

-- Current Trading State
nasdaq_phlxoptions_orders_itch_v1_92.current_trading_state = {}

-- Size: Current Trading State
nasdaq_phlxoptions_orders_itch_v1_92.current_trading_state.size = 1

-- Display: Current Trading State
nasdaq_phlxoptions_orders_itch_v1_92.current_trading_state.display = function(value)
  if value == "H" then
    return "Current Trading State: Halt In Effect (H)"
  end
  if value == "T" then
    return "Current Trading State: Phlx Trading Resumed (T)"
  end

  return "Current Trading State: Unknown("..value..")"
end

-- Dissect: Current Trading State
nasdaq_phlxoptions_orders_itch_v1_92.current_trading_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.current_trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_92.current_trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.current_trading_state, range, value, display)

  return offset + length, value
end

-- Customer Firm Indicator
nasdaq_phlxoptions_orders_itch_v1_92.customer_firm_indicator = {}

-- Size: Customer Firm Indicator
nasdaq_phlxoptions_orders_itch_v1_92.customer_firm_indicator.size = 1

-- Display: Customer Firm Indicator
nasdaq_phlxoptions_orders_itch_v1_92.customer_firm_indicator.display = function(value)
  if value == "C" then
    return "Customer Firm Indicator: Customer Order (C)"
  end
  if value == "F" then
    return "Customer Firm Indicator: Firm Order (F)"
  end
  if value == "M" then
    return "Customer Firm Indicator: Onfloor Market Maker (M)"
  end
  if value == "B" then
    return "Customer Firm Indicator: Broker Dealer Order (B)"
  end
  if value == "P" then
    return "Customer Firm Indicator: Professional Order (P)"
  end
  if value == " " then
    return "Customer Firm Indicator: Na For Implied Order (<whitespace>)"
  end

  return "Customer Firm Indicator: Unknown("..value..")"
end

-- Dissect: Customer Firm Indicator
nasdaq_phlxoptions_orders_itch_v1_92.customer_firm_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.customer_firm_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_92.customer_firm_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.customer_firm_indicator, range, value, display)

  return offset + length, value
end

-- Debit Or Credit
nasdaq_phlxoptions_orders_itch_v1_92.debit_or_credit = {}

-- Size: Debit Or Credit
nasdaq_phlxoptions_orders_itch_v1_92.debit_or_credit.size = 1

-- Display: Debit Or Credit
nasdaq_phlxoptions_orders_itch_v1_92.debit_or_credit.display = function(value)
  if value == "D" then
    return "Debit Or Credit: Net Debit (D)"
  end
  if value == "C" then
    return "Debit Or Credit: Net Credit (C)"
  end
  if value == " " then
    return "Debit Or Credit: Even Or Market Order (<whitespace>)"
  end
  if value == "*" then
    return "Debit Or Credit: Anonymous (*)"
  end

  return "Debit Or Credit: Unknown("..value..")"
end

-- Dissect: Debit Or Credit
nasdaq_phlxoptions_orders_itch_v1_92.debit_or_credit.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.debit_or_credit.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_92.debit_or_credit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.debit_or_credit, range, value, display)

  return offset + length, value
end

-- Debug Text
nasdaq_phlxoptions_orders_itch_v1_92.debug_text = {}

-- Display: Debug Text
nasdaq_phlxoptions_orders_itch_v1_92.debug_text.display = function(value)
  return "Debug Text: "..value
end

-- Dissect runtime sized field: Debug Text
nasdaq_phlxoptions_orders_itch_v1_92.debug_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_92.debug_text.display(value, packet, parent, size)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.debug_text, range, value, display)

  return offset + size, value
end

-- End Of Replay Sequence Number
nasdaq_phlxoptions_orders_itch_v1_92.end_of_replay_sequence_number = {}

-- Size: End Of Replay Sequence Number
nasdaq_phlxoptions_orders_itch_v1_92.end_of_replay_sequence_number.size = 20

-- Display: End Of Replay Sequence Number
nasdaq_phlxoptions_orders_itch_v1_92.end_of_replay_sequence_number.display = function(value)
  return "End Of Replay Sequence Number: "..value
end

-- Dissect: End Of Replay Sequence Number
nasdaq_phlxoptions_orders_itch_v1_92.end_of_replay_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.end_of_replay_sequence_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_phlxoptions_orders_itch_v1_92.end_of_replay_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.end_of_replay_sequence_number, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_phlxoptions_orders_itch_v1_92.event_code = {}

-- Size: Event Code
nasdaq_phlxoptions_orders_itch_v1_92.event_code.size = 1

-- Display: Event Code
nasdaq_phlxoptions_orders_itch_v1_92.event_code.display = function(value)
  if value == "O" then
    return "Event Code: Start Of Messages (O)"
  end
  if value == "S" then
    return "Event Code: Start Of System Hours (S)"
  end
  if value == "Q" then
    return "Event Code: Start Of Opening Process (Q)"
  end
  if value == "N" then
    return "Event Code: Start Of Normal Hours Closing Process (N)"
  end
  if value == "L" then
    return "Event Code: Start Of Late Hours Closing Process (L)"
  end
  if value == "E" then
    return "Event Code: End Of System Hours (E)"
  end
  if value == "C" then
    return "Event Code: End Of Messages (C)"
  end
  if value == "W" then
    return "Event Code: End Of Wco Early Closing (W)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
nasdaq_phlxoptions_orders_itch_v1_92.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_92.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.event_code, range, value, display)

  return offset + length, value
end

-- Executable Order Volume
nasdaq_phlxoptions_orders_itch_v1_92.executable_order_volume = {}

-- Size: Executable Order Volume
nasdaq_phlxoptions_orders_itch_v1_92.executable_order_volume.size = 4

-- Display: Executable Order Volume
nasdaq_phlxoptions_orders_itch_v1_92.executable_order_volume.display = function(value)
  return "Executable Order Volume: "..value
end

-- Dissect: Executable Order Volume
nasdaq_phlxoptions_orders_itch_v1_92.executable_order_volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.executable_order_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_92.executable_order_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.executable_order_volume, range, value, display)

  return offset + length, value
end

-- Explicit Strike Price
nasdaq_phlxoptions_orders_itch_v1_92.explicit_strike_price = {}

-- Size: Explicit Strike Price
nasdaq_phlxoptions_orders_itch_v1_92.explicit_strike_price.size = 4

-- Display: Explicit Strike Price
nasdaq_phlxoptions_orders_itch_v1_92.explicit_strike_price.display = function(value)
  return "Explicit Strike Price: "..value
end

-- Translate: Explicit Strike Price
nasdaq_phlxoptions_orders_itch_v1_92.explicit_strike_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Explicit Strike Price
nasdaq_phlxoptions_orders_itch_v1_92.explicit_strike_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.explicit_strike_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nasdaq_phlxoptions_orders_itch_v1_92.explicit_strike_price.translate(raw)
  local display = nasdaq_phlxoptions_orders_itch_v1_92.explicit_strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.explicit_strike_price, range, value, display)

  return offset + length, value
end

-- Imbalance Volume
nasdaq_phlxoptions_orders_itch_v1_92.imbalance_volume = {}

-- Size: Imbalance Volume
nasdaq_phlxoptions_orders_itch_v1_92.imbalance_volume.size = 4

-- Display: Imbalance Volume
nasdaq_phlxoptions_orders_itch_v1_92.imbalance_volume.display = function(value)
  return "Imbalance Volume: "..value
end

-- Dissect: Imbalance Volume
nasdaq_phlxoptions_orders_itch_v1_92.imbalance_volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.imbalance_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_92.imbalance_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.imbalance_volume, range, value, display)

  return offset + length, value
end

-- Leg Open Close Indicator
nasdaq_phlxoptions_orders_itch_v1_92.leg_open_close_indicator = {}

-- Size: Leg Open Close Indicator
nasdaq_phlxoptions_orders_itch_v1_92.leg_open_close_indicator.size = 1

-- Display: Leg Open Close Indicator
nasdaq_phlxoptions_orders_itch_v1_92.leg_open_close_indicator.display = function(value)
  if value == "O" then
    return "Leg Open Close Indicator: Opens Position (O)"
  end
  if value == "C" then
    return "Leg Open Close Indicator: Closes Position (C)"
  end
  if value == " " then
    return "Leg Open Close Indicator: Stock Leg (<whitespace>)"
  end

  return "Leg Open Close Indicator: Unknown("..value..")"
end

-- Dissect: Leg Open Close Indicator
nasdaq_phlxoptions_orders_itch_v1_92.leg_open_close_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.leg_open_close_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_92.leg_open_close_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.leg_open_close_indicator, range, value, display)

  return offset + length, value
end

-- Leg Ratio
nasdaq_phlxoptions_orders_itch_v1_92.leg_ratio = {}

-- Size: Leg Ratio
nasdaq_phlxoptions_orders_itch_v1_92.leg_ratio.size = 4

-- Display: Leg Ratio
nasdaq_phlxoptions_orders_itch_v1_92.leg_ratio.display = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
nasdaq_phlxoptions_orders_itch_v1_92.leg_ratio.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.leg_ratio.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_92.leg_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Limit Price
nasdaq_phlxoptions_orders_itch_v1_92.limit_price = {}

-- Size: Limit Price
nasdaq_phlxoptions_orders_itch_v1_92.limit_price.size = 4

-- Display: Limit Price
nasdaq_phlxoptions_orders_itch_v1_92.limit_price.display = function(value)
  return "Limit Price: "..value
end

-- Translate: Limit Price
nasdaq_phlxoptions_orders_itch_v1_92.limit_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Limit Price
nasdaq_phlxoptions_orders_itch_v1_92.limit_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.limit_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nasdaq_phlxoptions_orders_itch_v1_92.limit_price.translate(raw)
  local display = nasdaq_phlxoptions_orders_itch_v1_92.limit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.limit_price, range, value, display)

  return offset + length, value
end

-- Market Qualifier
nasdaq_phlxoptions_orders_itch_v1_92.market_qualifier = {}

-- Size: Market Qualifier
nasdaq_phlxoptions_orders_itch_v1_92.market_qualifier.size = 1

-- Display: Market Qualifier
nasdaq_phlxoptions_orders_itch_v1_92.market_qualifier.display = function(value)
  if value == "O" then
    return "Market Qualifier: Opening Order (O)"
  end
  if value == "I" then
    return "Market Qualifier: Implied Order (I)"
  end
  if value == " " then
    return "Market Qualifier: Na (<whitespace>)"
  end

  return "Market Qualifier: Unknown("..value..")"
end

-- Dissect: Market Qualifier
nasdaq_phlxoptions_orders_itch_v1_92.market_qualifier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.market_qualifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_92.market_qualifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.market_qualifier, range, value, display)

  return offset + length, value
end

-- Matched Volume
nasdaq_phlxoptions_orders_itch_v1_92.matched_volume = {}

-- Size: Matched Volume
nasdaq_phlxoptions_orders_itch_v1_92.matched_volume.size = 4

-- Display: Matched Volume
nasdaq_phlxoptions_orders_itch_v1_92.matched_volume.display = function(value)
  return "Matched Volume: "..value
end

-- Dissect: Matched Volume
nasdaq_phlxoptions_orders_itch_v1_92.matched_volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.matched_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_92.matched_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.matched_volume, range, value, display)

  return offset + length, value
end

-- Message Count
nasdaq_phlxoptions_orders_itch_v1_92.message_count = {}

-- Size: Message Count
nasdaq_phlxoptions_orders_itch_v1_92.message_count.size = 2

-- Display: Message Count
nasdaq_phlxoptions_orders_itch_v1_92.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_phlxoptions_orders_itch_v1_92.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_92.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
nasdaq_phlxoptions_orders_itch_v1_92.message_length = {}

-- Size: Message Length
nasdaq_phlxoptions_orders_itch_v1_92.message_length.size = 2

-- Display: Message Length
nasdaq_phlxoptions_orders_itch_v1_92.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_phlxoptions_orders_itch_v1_92.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_92.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
nasdaq_phlxoptions_orders_itch_v1_92.message_type = {}

-- Size: Message Type
nasdaq_phlxoptions_orders_itch_v1_92.message_type.size = 1

-- Display: Message Type
nasdaq_phlxoptions_orders_itch_v1_92.message_type.display = function(value)
  if value == "S" then
    return "Message Type: System Event Message (S)"
  end
  if value == "D" then
    return "Message Type: Options Directory Message (D)"
  end
  if value == "R" then
    return "Message Type: Complex Order Strategy Message (R)"
  end
  if value == "H" then
    return "Message Type: Security Trading Action Message (H)"
  end
  if value == "I" then
    return "Message Type: Complex Trading Action Message (I)"
  end
  if value == "P" then
    return "Message Type: Security Open Closed Message (P)"
  end
  if value == "Q" then
    return "Message Type: Strategy Open Closed Message (Q)"
  end
  if value == "O" then
    return "Message Type: Simple Order Message (O)"
  end
  if value == "X" then
    return "Message Type: Complex Order Message (X)"
  end
  if value == "A" then
    return "Message Type: Auction Notification Message (A)"
  end
  if value == "C" then
    return "Message Type: Complex Auction Notification Message (C)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_phlxoptions_orders_itch_v1_92.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_92.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.message_type, range, value, display)

  return offset + length, value
end

-- Nanoseconds
nasdaq_phlxoptions_orders_itch_v1_92.nanoseconds = {}

-- Size: Nanoseconds
nasdaq_phlxoptions_orders_itch_v1_92.nanoseconds.size = 4

-- Display: Nanoseconds
nasdaq_phlxoptions_orders_itch_v1_92.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
nasdaq_phlxoptions_orders_itch_v1_92.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_92.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Number Of Legs
nasdaq_phlxoptions_orders_itch_v1_92.number_of_legs = {}

-- Size: Number Of Legs
nasdaq_phlxoptions_orders_itch_v1_92.number_of_legs.size = 1

-- Display: Number Of Legs
nasdaq_phlxoptions_orders_itch_v1_92.number_of_legs.display = function(value)
  return "Number Of Legs: "..value
end

-- Dissect: Number Of Legs
nasdaq_phlxoptions_orders_itch_v1_92.number_of_legs.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.number_of_legs.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_92.number_of_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.number_of_legs, range, value, display)

  return offset + length, value
end

-- Open Close Indicator
nasdaq_phlxoptions_orders_itch_v1_92.open_close_indicator = {}

-- Size: Open Close Indicator
nasdaq_phlxoptions_orders_itch_v1_92.open_close_indicator.size = 1

-- Display: Open Close Indicator
nasdaq_phlxoptions_orders_itch_v1_92.open_close_indicator.display = function(value)
  if value == "O" then
    return "Open Close Indicator: Opens Position (O)"
  end
  if value == "C" then
    return "Open Close Indicator: Closes Position (C)"
  end
  if value == " " then
    return "Open Close Indicator: Na (<whitespace>)"
  end

  return "Open Close Indicator: Unknown("..value..")"
end

-- Dissect: Open Close Indicator
nasdaq_phlxoptions_orders_itch_v1_92.open_close_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.open_close_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_92.open_close_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.open_close_indicator, range, value, display)

  return offset + length, value
end

-- Open State
nasdaq_phlxoptions_orders_itch_v1_92.open_state = {}

-- Size: Open State
nasdaq_phlxoptions_orders_itch_v1_92.open_state.size = 1

-- Display: Open State
nasdaq_phlxoptions_orders_itch_v1_92.open_state.display = function(value)
  if value == "Y" then
    return "Open State: Open For Auto Execution (Y)"
  end
  if value == "N" then
    return "Open State: Closed For Auto Execution (N)"
  end

  return "Open State: Unknown("..value..")"
end

-- Dissect: Open State
nasdaq_phlxoptions_orders_itch_v1_92.open_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.open_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_92.open_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.open_state, range, value, display)

  return offset + length, value
end

-- Option Closing Type
nasdaq_phlxoptions_orders_itch_v1_92.option_closing_type = {}

-- Size: Option Closing Type
nasdaq_phlxoptions_orders_itch_v1_92.option_closing_type.size = 1

-- Display: Option Closing Type
nasdaq_phlxoptions_orders_itch_v1_92.option_closing_type.display = function(value)
  if value == "N" then
    return "Option Closing Type: Normal (N)"
  end
  if value == "L" then
    return "Option Closing Type: Late (L)"
  end
  if value == "W" then
    return "Option Closing Type: Wco Early Closing (W)"
  end

  return "Option Closing Type: Unknown("..value..")"
end

-- Dissect: Option Closing Type
nasdaq_phlxoptions_orders_itch_v1_92.option_closing_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.option_closing_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_92.option_closing_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.option_closing_type, range, value, display)

  return offset + length, value
end

-- Option Id
nasdaq_phlxoptions_orders_itch_v1_92.option_id = {}

-- Size: Option Id
nasdaq_phlxoptions_orders_itch_v1_92.option_id.size = 4

-- Display: Option Id
nasdaq_phlxoptions_orders_itch_v1_92.option_id.display = function(value)
  return "Option Id: "..value
end

-- Dissect: Option Id
nasdaq_phlxoptions_orders_itch_v1_92.option_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.option_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_92.option_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.option_id, range, value, display)

  return offset + length, value
end

-- Option Type
nasdaq_phlxoptions_orders_itch_v1_92.option_type = {}

-- Size: Option Type
nasdaq_phlxoptions_orders_itch_v1_92.option_type.size = 1

-- Display: Option Type
nasdaq_phlxoptions_orders_itch_v1_92.option_type.display = function(value)
  if value == "C" then
    return "Option Type: Call (C)"
  end
  if value == "P" then
    return "Option Type: Put (P)"
  end
  if value == " " then
    return "Option Type: Stock (<whitespace>)"
  end

  return "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
nasdaq_phlxoptions_orders_itch_v1_92.option_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.option_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_92.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.option_type, range, value, display)

  return offset + length, value
end

-- Order Id
nasdaq_phlxoptions_orders_itch_v1_92.order_id = {}

-- Size: Order Id
nasdaq_phlxoptions_orders_itch_v1_92.order_id.size = 4

-- Display: Order Id
nasdaq_phlxoptions_orders_itch_v1_92.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
nasdaq_phlxoptions_orders_itch_v1_92.order_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.order_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_92.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Status
nasdaq_phlxoptions_orders_itch_v1_92.order_status = {}

-- Size: Order Status
nasdaq_phlxoptions_orders_itch_v1_92.order_status.size = 1

-- Display: Order Status
nasdaq_phlxoptions_orders_itch_v1_92.order_status.display = function(value)
  if value == "O" then
    return "Order Status: Open (O)"
  end
  if value == "F" then
    return "Order Status: Filled (F)"
  end
  if value == "C" then
    return "Order Status: Cancelled (C)"
  end
  if value == "R" then
    return "Order Status: Renotification (R)"
  end

  return "Order Status: Unknown("..value..")"
end

-- Dissect: Order Status
nasdaq_phlxoptions_orders_itch_v1_92.order_status.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.order_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_92.order_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.order_status, range, value, display)

  return offset + length, value
end

-- Order Type
nasdaq_phlxoptions_orders_itch_v1_92.order_type = {}

-- Size: Order Type
nasdaq_phlxoptions_orders_itch_v1_92.order_type.size = 1

-- Display: Order Type
nasdaq_phlxoptions_orders_itch_v1_92.order_type.display = function(value)
  if value == "M" then
    return "Order Type: Market (M)"
  end
  if value == "L" then
    return "Order Type: Limit (L)"
  end
  if value == "*" then
    return "Order Type: Anonymous (*)"
  end

  return "Order Type: Unknown("..value..")"
end

-- Dissect: Order Type
nasdaq_phlxoptions_orders_itch_v1_92.order_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.order_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_92.order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.order_type, range, value, display)

  return offset + length, value
end

-- Original Order Volume
nasdaq_phlxoptions_orders_itch_v1_92.original_order_volume = {}

-- Size: Original Order Volume
nasdaq_phlxoptions_orders_itch_v1_92.original_order_volume.size = 4

-- Display: Original Order Volume
nasdaq_phlxoptions_orders_itch_v1_92.original_order_volume.display = function(value)
  return "Original Order Volume: "..value
end

-- Dissect: Original Order Volume
nasdaq_phlxoptions_orders_itch_v1_92.original_order_volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.original_order_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_92.original_order_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.original_order_volume, range, value, display)

  return offset + length, value
end

-- Packet Length
nasdaq_phlxoptions_orders_itch_v1_92.packet_length = {}

-- Size: Packet Length
nasdaq_phlxoptions_orders_itch_v1_92.packet_length.size = 2

-- Display: Packet Length
nasdaq_phlxoptions_orders_itch_v1_92.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
nasdaq_phlxoptions_orders_itch_v1_92.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_92.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Password
nasdaq_phlxoptions_orders_itch_v1_92.password = {}

-- Size: Password
nasdaq_phlxoptions_orders_itch_v1_92.password.size = 10

-- Display: Password
nasdaq_phlxoptions_orders_itch_v1_92.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
nasdaq_phlxoptions_orders_itch_v1_92.password.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_phlxoptions_orders_itch_v1_92.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.password, range, value, display)

  return offset + length, value
end

-- Phlx Tradable
nasdaq_phlxoptions_orders_itch_v1_92.phlx_tradable = {}

-- Size: Phlx Tradable
nasdaq_phlxoptions_orders_itch_v1_92.phlx_tradable.size = 1

-- Display: Phlx Tradable
nasdaq_phlxoptions_orders_itch_v1_92.phlx_tradable.display = function(value)
  if value == "Y" then
    return "Phlx Tradable: Tradable (Y)"
  end
  if value == "N" then
    return "Phlx Tradable: Not Tradable (N)"
  end

  return "Phlx Tradable: Unknown("..value..")"
end

-- Dissect: Phlx Tradable
nasdaq_phlxoptions_orders_itch_v1_92.phlx_tradable.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.phlx_tradable.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_92.phlx_tradable.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.phlx_tradable, range, value, display)

  return offset + length, value
end

-- Price
nasdaq_phlxoptions_orders_itch_v1_92.price = {}

-- Size: Price
nasdaq_phlxoptions_orders_itch_v1_92.price.size = 4

-- Display: Price
nasdaq_phlxoptions_orders_itch_v1_92.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
nasdaq_phlxoptions_orders_itch_v1_92.price.translate = function(raw)
  return raw/10000
end

-- Dissect: Price
nasdaq_phlxoptions_orders_itch_v1_92.price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nasdaq_phlxoptions_orders_itch_v1_92.price.translate(raw)
  local display = nasdaq_phlxoptions_orders_itch_v1_92.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.price, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
nasdaq_phlxoptions_orders_itch_v1_92.reject_reason_code = {}

-- Size: Reject Reason Code
nasdaq_phlxoptions_orders_itch_v1_92.reject_reason_code.size = 1

-- Display: Reject Reason Code
nasdaq_phlxoptions_orders_itch_v1_92.reject_reason_code.display = function(value)
  if value == "A" then
    return "Reject Reason Code: Not Authorized (A)"
  end
  if value == "S" then
    return "Reject Reason Code: Session Not Available (S)"
  end

  return "Reject Reason Code: Unknown("..value..")"
end

-- Dissect: Reject Reason Code
nasdaq_phlxoptions_orders_itch_v1_92.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_92.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
nasdaq_phlxoptions_orders_itch_v1_92.requested_sequence_number = {}

-- Size: Requested Sequence Number
nasdaq_phlxoptions_orders_itch_v1_92.requested_sequence_number.size = 20

-- Display: Requested Sequence Number
nasdaq_phlxoptions_orders_itch_v1_92.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
nasdaq_phlxoptions_orders_itch_v1_92.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nasdaq_phlxoptions_orders_itch_v1_92.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
nasdaq_phlxoptions_orders_itch_v1_92.requested_session = {}

-- Size: Requested Session
nasdaq_phlxoptions_orders_itch_v1_92.requested_session.size = 10

-- Display: Requested Session
nasdaq_phlxoptions_orders_itch_v1_92.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
nasdaq_phlxoptions_orders_itch_v1_92.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.requested_session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_phlxoptions_orders_itch_v1_92.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Reserved 3
nasdaq_phlxoptions_orders_itch_v1_92.reserved_3 = {}

-- Size: Reserved 3
nasdaq_phlxoptions_orders_itch_v1_92.reserved_3.size = 3

-- Display: Reserved 3
nasdaq_phlxoptions_orders_itch_v1_92.reserved_3.display = function(value)
  return "Reserved 3: "..value
end

-- Dissect: Reserved 3
nasdaq_phlxoptions_orders_itch_v1_92.reserved_3.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.reserved_3.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nasdaq_phlxoptions_orders_itch_v1_92.reserved_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.reserved_3, range, value, display)

  return offset + length, value
end

-- Seconds
nasdaq_phlxoptions_orders_itch_v1_92.seconds = {}

-- Size: Seconds
nasdaq_phlxoptions_orders_itch_v1_92.seconds.size = 4

-- Display: Seconds
nasdaq_phlxoptions_orders_itch_v1_92.seconds.display = function(value)
  return "Seconds: "..value
end

-- Dissect: Seconds
nasdaq_phlxoptions_orders_itch_v1_92.seconds.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.seconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_92.seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.seconds, range, value, display)

  return offset + length, value
end

-- Security Symbol
nasdaq_phlxoptions_orders_itch_v1_92.security_symbol = {}

-- Size: Security Symbol
nasdaq_phlxoptions_orders_itch_v1_92.security_symbol.size = 5

-- Display: Security Symbol
nasdaq_phlxoptions_orders_itch_v1_92.security_symbol.display = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
nasdaq_phlxoptions_orders_itch_v1_92.security_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.security_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_phlxoptions_orders_itch_v1_92.security_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_phlxoptions_orders_itch_v1_92.sequence_number = {}

-- Size: Sequence Number
nasdaq_phlxoptions_orders_itch_v1_92.sequence_number.size = 4

-- Display: Sequence Number
nasdaq_phlxoptions_orders_itch_v1_92.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_phlxoptions_orders_itch_v1_92.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_92.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
nasdaq_phlxoptions_orders_itch_v1_92.sequenced_message_type = {}

-- Size: Sequenced Message Type
nasdaq_phlxoptions_orders_itch_v1_92.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
nasdaq_phlxoptions_orders_itch_v1_92.sequenced_message_type.display = function(value)
  if value == "S" then
    return "Sequenced Message Type: System Event Message (S)"
  end
  if value == "D" then
    return "Sequenced Message Type: Options Directory Message (D)"
  end
  if value == "R" then
    return "Sequenced Message Type: Complex Order Strategy Message (R)"
  end
  if value == "H" then
    return "Sequenced Message Type: Security Trading Action Message (H)"
  end
  if value == "I" then
    return "Sequenced Message Type: Complex Trading Action Message (I)"
  end
  if value == "P" then
    return "Sequenced Message Type: Security Open Closed Message (P)"
  end
  if value == "Q" then
    return "Sequenced Message Type: Strategy Open Closed Message (Q)"
  end
  if value == "O" then
    return "Sequenced Message Type: Simple Order Message (O)"
  end
  if value == "X" then
    return "Sequenced Message Type: Complex Order Message (X)"
  end
  if value == "A" then
    return "Sequenced Message Type: Auction Notification Message (A)"
  end
  if value == "C" then
    return "Sequenced Message Type: Complex Auction Notification Message (C)"
  end
  if value == "M" then
    return "Sequenced Message Type: End Of Replay Sequence Message (M)"
  end

  return "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
nasdaq_phlxoptions_orders_itch_v1_92.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_92.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Server Packet Type
nasdaq_phlxoptions_orders_itch_v1_92.server_packet_type = {}

-- Size: Server Packet Type
nasdaq_phlxoptions_orders_itch_v1_92.server_packet_type.size = 1

-- Display: Server Packet Type
nasdaq_phlxoptions_orders_itch_v1_92.server_packet_type.display = function(value)
  if value == "+" then
    return "Packet Type: Debug Packet (+)"
  end
  if value == "A" then
    return "Packet Type: Login Accepted Packet (A)"
  end
  if value == "J" then
    return "Packet Type: Login Rejected Packet (J)"
  end
  if value == "S" then
    return "Packet Type: Sequenced Data Packet (S)"
  end
  if value == "H" then
    return "Packet Type: Server Heartbeat Packet (H)"
  end
  if value == "Z" then
    return "Packet Type: End Of Session Packet (Z)"
  end

  return "Packet Type: Unknown("..value..")"
end

-- Dissect: Server Packet Type
nasdaq_phlxoptions_orders_itch_v1_92.server_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.server_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_92.server_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.server_packet_type, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_phlxoptions_orders_itch_v1_92.session = {}

-- Size: Session
nasdaq_phlxoptions_orders_itch_v1_92.session.size = 10

-- Display: Session
nasdaq_phlxoptions_orders_itch_v1_92.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
nasdaq_phlxoptions_orders_itch_v1_92.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_phlxoptions_orders_itch_v1_92.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.session, range, value, display)

  return offset + length, value
end

-- Side
nasdaq_phlxoptions_orders_itch_v1_92.side = {}

-- Size: Side
nasdaq_phlxoptions_orders_itch_v1_92.side.size = 1

-- Display: Side
nasdaq_phlxoptions_orders_itch_v1_92.side.display = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end
  if value == "*" then
    return "Side: Hidden (*)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
nasdaq_phlxoptions_orders_itch_v1_92.side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_92.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.side, range, value, display)

  return offset + length, value
end

-- Source
nasdaq_phlxoptions_orders_itch_v1_92.source = {}

-- Size: Source
nasdaq_phlxoptions_orders_itch_v1_92.source.size = 1

-- Display: Source
nasdaq_phlxoptions_orders_itch_v1_92.source.display = function(value)
  return "Source: "..value
end

-- Dissect: Source
nasdaq_phlxoptions_orders_itch_v1_92.source.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.source.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_92.source.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.source, range, value, display)

  return offset + length, value
end

-- Strategy Id
nasdaq_phlxoptions_orders_itch_v1_92.strategy_id = {}

-- Size: Strategy Id
nasdaq_phlxoptions_orders_itch_v1_92.strategy_id.size = 4

-- Display: Strategy Id
nasdaq_phlxoptions_orders_itch_v1_92.strategy_id.display = function(value)
  return "Strategy Id: "..value
end

-- Dissect: Strategy Id
nasdaq_phlxoptions_orders_itch_v1_92.strategy_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.strategy_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_92.strategy_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.strategy_id, range, value, display)

  return offset + length, value
end

-- Time In Force
nasdaq_phlxoptions_orders_itch_v1_92.time_in_force = {}

-- Size: Time In Force
nasdaq_phlxoptions_orders_itch_v1_92.time_in_force.size = 1

-- Display: Time In Force
nasdaq_phlxoptions_orders_itch_v1_92.time_in_force.display = function(value)
  if value == "D" then
    return "Time In Force: Day Order (D)"
  end
  if value == "G" then
    return "Time In Force: Gtc (G)"
  end
  if value == "I" then
    return "Time In Force: Ioc (I)"
  end

  return "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
nasdaq_phlxoptions_orders_itch_v1_92.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.time_in_force.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_92.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
nasdaq_phlxoptions_orders_itch_v1_92.underlying_symbol = {}

-- Size: Underlying Symbol
nasdaq_phlxoptions_orders_itch_v1_92.underlying_symbol.size = 13

-- Display: Underlying Symbol
nasdaq_phlxoptions_orders_itch_v1_92.underlying_symbol.display = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
nasdaq_phlxoptions_orders_itch_v1_92.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.underlying_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_phlxoptions_orders_itch_v1_92.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Unsequenced Message
nasdaq_phlxoptions_orders_itch_v1_92.unsequenced_message = {}

-- Display: Unsequenced Message
nasdaq_phlxoptions_orders_itch_v1_92.unsequenced_message.display = function(value)
  return "Unsequenced Message: "..value
end

-- Dissect runtime sized field: Unsequenced Message
nasdaq_phlxoptions_orders_itch_v1_92.unsequenced_message.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = nasdaq_phlxoptions_orders_itch_v1_92.unsequenced_message.display(value, packet, parent, size)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.unsequenced_message, range, value, display)

  return offset + size, value
end

-- Unsequenced Message Type
nasdaq_phlxoptions_orders_itch_v1_92.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
nasdaq_phlxoptions_orders_itch_v1_92.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
nasdaq_phlxoptions_orders_itch_v1_92.unsequenced_message_type.display = function(value)
  return "Unsequenced Message Type: "..value
end

-- Dissect: Unsequenced Message Type
nasdaq_phlxoptions_orders_itch_v1_92.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_orders_itch_v1_92.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Username
nasdaq_phlxoptions_orders_itch_v1_92.username = {}

-- Size: Username
nasdaq_phlxoptions_orders_itch_v1_92.username.size = 6

-- Display: Username
nasdaq_phlxoptions_orders_itch_v1_92.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
nasdaq_phlxoptions_orders_itch_v1_92.username.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_phlxoptions_orders_itch_v1_92.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.username, range, value, display)

  return offset + length, value
end

-- Version
nasdaq_phlxoptions_orders_itch_v1_92.version = {}

-- Size: Version
nasdaq_phlxoptions_orders_itch_v1_92.version.size = 1

-- Display: Version
nasdaq_phlxoptions_orders_itch_v1_92.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
nasdaq_phlxoptions_orders_itch_v1_92.version.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_92.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.version, range, value, display)

  return offset + length, value
end

-- Volume
nasdaq_phlxoptions_orders_itch_v1_92.volume = {}

-- Size: Volume
nasdaq_phlxoptions_orders_itch_v1_92.volume.size = 4

-- Display: Volume
nasdaq_phlxoptions_orders_itch_v1_92.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
nasdaq_phlxoptions_orders_itch_v1_92.volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_orders_itch_v1_92.volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_92.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.volume, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq PhlxOptions Orders Itch 1.92
-----------------------------------------------------------------------

-- Timestamp
nasdaq_phlxoptions_orders_itch_v1_92.timestamp = {}

-- Size: Timestamp
nasdaq_phlxoptions_orders_itch_v1_92.timestamp.size =
  nasdaq_phlxoptions_orders_itch_v1_92.seconds.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.nanoseconds.size

-- Display: Timestamp
nasdaq_phlxoptions_orders_itch_v1_92.timestamp.display = function(packet, parent, value)
  -- Check null value
  if value == nil then
    return "No Value"

  end

  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect Fields: Timestamp
nasdaq_phlxoptions_orders_itch_v1_92.timestamp.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: Integer
  index, seconds = nasdaq_phlxoptions_orders_itch_v1_92.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_orders_itch_v1_92.nanoseconds.dissect(buffer, index, packet, parent)

  -- Composite value
  local timestamp = UInt64.new(seconds * 1000000000 + nanoseconds)

  return index, timestamp
end

-- Dissect: Timestamp
nasdaq_phlxoptions_orders_itch_v1_92.timestamp.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- An absolute time item carries its value from the moment it is created,
    -- so the parts are read here rather than taken from the fields below it
    local seconds = buffer(offset, 4):uint()
    local nanoseconds = buffer(offset + 4, 4):uint()
    local length = nasdaq_phlxoptions_orders_itch_v1_92.timestamp.size
    -- A field's absolute time base is fixed when it is declared, so the
    -- protocol declares one per base and the preference picks between them
    local field = omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.timestamp
    if nasdaq_phlxoptions_orders_itch_v1_92.absolute_time_base == 1 then field = omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.timestamp_utc end
    parent = parent:add(field, buffer(offset, length), NSTime.new(seconds, nanoseconds))
    local index = nasdaq_phlxoptions_orders_itch_v1_92.timestamp.fields(buffer, offset, packet, parent)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_orders_itch_v1_92.timestamp.fields(buffer, offset, packet, parent)
  end
end

-- Complex Auction Notification Message
nasdaq_phlxoptions_orders_itch_v1_92.complex_auction_notification_message = {}

-- Size: Complex Auction Notification Message
nasdaq_phlxoptions_orders_itch_v1_92.complex_auction_notification_message.size =
  nasdaq_phlxoptions_orders_itch_v1_92.timestamp.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.strategy_id.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.auction_id.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.auction_type.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.price.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.auction_side.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.debit_or_credit.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.volume.size

-- Display: Complex Auction Notification Message
nasdaq_phlxoptions_orders_itch_v1_92.complex_auction_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Auction Notification Message
nasdaq_phlxoptions_orders_itch_v1_92.complex_auction_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Struct of 2 fields
  index, timestamp = nasdaq_phlxoptions_orders_itch_v1_92.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_phlxoptions_orders_itch_v1_92.strategy_id.dissect(buffer, index, packet, parent)

  -- Auction Id: Integer
  index, auction_id = nasdaq_phlxoptions_orders_itch_v1_92.auction_id.dissect(buffer, index, packet, parent)

  -- Auction Type: Alpha
  index, auction_type = nasdaq_phlxoptions_orders_itch_v1_92.auction_type.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = nasdaq_phlxoptions_orders_itch_v1_92.price.dissect(buffer, index, packet, parent)

  -- Auction Side: Alpha
  index, auction_side = nasdaq_phlxoptions_orders_itch_v1_92.auction_side.dissect(buffer, index, packet, parent)

  -- Debit Or Credit: Alpha
  index, debit_or_credit = nasdaq_phlxoptions_orders_itch_v1_92.debit_or_credit.dissect(buffer, index, packet, parent)

  -- Volume: Integer
  index, volume = nasdaq_phlxoptions_orders_itch_v1_92.volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Auction Notification Message
nasdaq_phlxoptions_orders_itch_v1_92.complex_auction_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.complex_auction_notification_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_orders_itch_v1_92.complex_auction_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_orders_itch_v1_92.complex_auction_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_orders_itch_v1_92.complex_auction_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Expiration
nasdaq_phlxoptions_orders_itch_v1_92.expiration = {}

-- Size: Expiration
nasdaq_phlxoptions_orders_itch_v1_92.expiration.size = 2

-- Display: Expiration
nasdaq_phlxoptions_orders_itch_v1_92.expiration.display = function(range, value, packet, parent)
  local flags = {}


  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Expiration
nasdaq_phlxoptions_orders_itch_v1_92.expiration.bits = function(range, value, packet, parent)

  -- Day: 5 Bit Unsigned Fixed Width Integer
  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.day, range, value)

  -- Month: 4 Bit Unsigned Fixed Width Integer
  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.month, range, value)

  -- Year: 7 Bit Unsigned Fixed Width Integer
  parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.year, range, value)
end

-- Dissect: Expiration
nasdaq_phlxoptions_orders_itch_v1_92.expiration.dissect = function(buffer, offset, packet, parent)
  local size = nasdaq_phlxoptions_orders_itch_v1_92.expiration.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = nasdaq_phlxoptions_orders_itch_v1_92.expiration.display(range, value, packet, parent)
  local element = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.expiration, range, display)

  if show.structs then
    nasdaq_phlxoptions_orders_itch_v1_92.expiration.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Auction Notification Message
nasdaq_phlxoptions_orders_itch_v1_92.auction_notification_message = {}

-- Size: Auction Notification Message
nasdaq_phlxoptions_orders_itch_v1_92.auction_notification_message.size =
  nasdaq_phlxoptions_orders_itch_v1_92.timestamp.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.option_id.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.security_symbol.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.expiration.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.explicit_strike_price.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.option_type.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.auction_id.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.auction_type.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.price.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.auction_side.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.matched_volume.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.imbalance_volume.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.customer_firm_indicator.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.reserved_3.size

-- Display: Auction Notification Message
nasdaq_phlxoptions_orders_itch_v1_92.auction_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Notification Message
nasdaq_phlxoptions_orders_itch_v1_92.auction_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Struct of 2 fields
  index, timestamp = nasdaq_phlxoptions_orders_itch_v1_92.timestamp.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_phlxoptions_orders_itch_v1_92.option_id.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = nasdaq_phlxoptions_orders_itch_v1_92.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration: Struct of 3 fields
  index, expiration = nasdaq_phlxoptions_orders_itch_v1_92.expiration.dissect(buffer, index, packet, parent)

  -- Explicit Strike Price: Integer
  index, explicit_strike_price = nasdaq_phlxoptions_orders_itch_v1_92.explicit_strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: Alpha
  index, option_type = nasdaq_phlxoptions_orders_itch_v1_92.option_type.dissect(buffer, index, packet, parent)

  -- Auction Id: Integer
  index, auction_id = nasdaq_phlxoptions_orders_itch_v1_92.auction_id.dissect(buffer, index, packet, parent)

  -- Auction Type: Alpha
  index, auction_type = nasdaq_phlxoptions_orders_itch_v1_92.auction_type.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = nasdaq_phlxoptions_orders_itch_v1_92.price.dissect(buffer, index, packet, parent)

  -- Auction Side: Alpha
  index, auction_side = nasdaq_phlxoptions_orders_itch_v1_92.auction_side.dissect(buffer, index, packet, parent)

  -- Matched Volume: Integer
  index, matched_volume = nasdaq_phlxoptions_orders_itch_v1_92.matched_volume.dissect(buffer, index, packet, parent)

  -- Imbalance Volume: Integer
  index, imbalance_volume = nasdaq_phlxoptions_orders_itch_v1_92.imbalance_volume.dissect(buffer, index, packet, parent)

  -- Customer Firm Indicator: Alpha
  index, customer_firm_indicator = nasdaq_phlxoptions_orders_itch_v1_92.customer_firm_indicator.dissect(buffer, index, packet, parent)

  -- Reserved 3: N/A
  index, reserved_3 = nasdaq_phlxoptions_orders_itch_v1_92.reserved_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Notification Message
nasdaq_phlxoptions_orders_itch_v1_92.auction_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.auction_notification_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_orders_itch_v1_92.auction_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_orders_itch_v1_92.auction_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_orders_itch_v1_92.auction_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Complex Order Leg
nasdaq_phlxoptions_orders_itch_v1_92.complex_order_leg = {}

-- Size: Complex Order Leg
nasdaq_phlxoptions_orders_itch_v1_92.complex_order_leg.size =
  nasdaq_phlxoptions_orders_itch_v1_92.leg_open_close_indicator.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.option_id.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.security_symbol.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.expiration.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.explicit_strike_price.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.option_type.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.side.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.leg_ratio.size

-- Display: Complex Order Leg
nasdaq_phlxoptions_orders_itch_v1_92.complex_order_leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Order Leg
nasdaq_phlxoptions_orders_itch_v1_92.complex_order_leg.fields = function(buffer, offset, packet, parent, complex_order_leg_index)
  local index = offset

  -- Implicit Complex Order Leg Index
  if complex_order_leg_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.complex_order_leg_index, complex_order_leg_index)
    iteration:set_generated()
  end

  -- Leg Open Close Indicator: Alpha
  index, leg_open_close_indicator = nasdaq_phlxoptions_orders_itch_v1_92.leg_open_close_indicator.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_phlxoptions_orders_itch_v1_92.option_id.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = nasdaq_phlxoptions_orders_itch_v1_92.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration: Struct of 3 fields
  index, expiration = nasdaq_phlxoptions_orders_itch_v1_92.expiration.dissect(buffer, index, packet, parent)

  -- Explicit Strike Price: Integer
  index, explicit_strike_price = nasdaq_phlxoptions_orders_itch_v1_92.explicit_strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: Alpha
  index, option_type = nasdaq_phlxoptions_orders_itch_v1_92.option_type.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_phlxoptions_orders_itch_v1_92.side.dissect(buffer, index, packet, parent)

  -- Leg Ratio: Integer
  index, leg_ratio = nasdaq_phlxoptions_orders_itch_v1_92.leg_ratio.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Order Leg
nasdaq_phlxoptions_orders_itch_v1_92.complex_order_leg.dissect = function(buffer, offset, packet, parent, complex_order_leg_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.complex_order_leg, buffer(offset, 0))
    local index = nasdaq_phlxoptions_orders_itch_v1_92.complex_order_leg.fields(buffer, offset, packet, parent, complex_order_leg_index)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_orders_itch_v1_92.complex_order_leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_orders_itch_v1_92.complex_order_leg.fields(buffer, offset, packet, parent, complex_order_leg_index)
  end
end

-- Complex Order Message
nasdaq_phlxoptions_orders_itch_v1_92.complex_order_message = {}

-- Calculate size of: Complex Order Message
nasdaq_phlxoptions_orders_itch_v1_92.complex_order_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlxoptions_orders_itch_v1_92.timestamp.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_92.strategy_id.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_92.order_id.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_92.side.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_92.original_order_volume.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_92.executable_order_volume.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_92.order_status.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_92.order_type.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_92.limit_price.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_92.debit_or_credit.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_92.all_or_none.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_92.time_in_force.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_92.customer_firm_indicator.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_92.underlying_symbol.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_92.number_of_legs.size

  -- Calculate field size from count
  local complex_order_leg_count = buffer(offset + index - 1, 1):uint()
  index = index + complex_order_leg_count * 22

  return index
end

-- Display: Complex Order Message
nasdaq_phlxoptions_orders_itch_v1_92.complex_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Order Message
nasdaq_phlxoptions_orders_itch_v1_92.complex_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Struct of 2 fields
  index, timestamp = nasdaq_phlxoptions_orders_itch_v1_92.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_phlxoptions_orders_itch_v1_92.strategy_id.dissect(buffer, index, packet, parent)

  -- Order Id: Integer
  index, order_id = nasdaq_phlxoptions_orders_itch_v1_92.order_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_phlxoptions_orders_itch_v1_92.side.dissect(buffer, index, packet, parent)

  -- Original Order Volume: Integer
  index, original_order_volume = nasdaq_phlxoptions_orders_itch_v1_92.original_order_volume.dissect(buffer, index, packet, parent)

  -- Executable Order Volume: Integer
  index, executable_order_volume = nasdaq_phlxoptions_orders_itch_v1_92.executable_order_volume.dissect(buffer, index, packet, parent)

  -- Order Status: Alpha
  index, order_status = nasdaq_phlxoptions_orders_itch_v1_92.order_status.dissect(buffer, index, packet, parent)

  -- Order Type: Alpha
  index, order_type = nasdaq_phlxoptions_orders_itch_v1_92.order_type.dissect(buffer, index, packet, parent)

  -- Limit Price: Integer
  index, limit_price = nasdaq_phlxoptions_orders_itch_v1_92.limit_price.dissect(buffer, index, packet, parent)

  -- Debit Or Credit: Alpha
  index, debit_or_credit = nasdaq_phlxoptions_orders_itch_v1_92.debit_or_credit.dissect(buffer, index, packet, parent)

  -- All Or None: Alpha
  index, all_or_none = nasdaq_phlxoptions_orders_itch_v1_92.all_or_none.dissect(buffer, index, packet, parent)

  -- Time In Force: Alpha
  index, time_in_force = nasdaq_phlxoptions_orders_itch_v1_92.time_in_force.dissect(buffer, index, packet, parent)

  -- Customer Firm Indicator: Alpha
  index, customer_firm_indicator = nasdaq_phlxoptions_orders_itch_v1_92.customer_firm_indicator.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = nasdaq_phlxoptions_orders_itch_v1_92.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Number Of Legs: Integer
  index, number_of_legs = nasdaq_phlxoptions_orders_itch_v1_92.number_of_legs.dissect(buffer, index, packet, parent)

  -- Repeating: Complex Order Leg
  for complex_order_leg_index = 1, number_of_legs do
    index, complex_order_leg = nasdaq_phlxoptions_orders_itch_v1_92.complex_order_leg.dissect(buffer, index, packet, parent, complex_order_leg_index)
  end

  return index
end

-- Dissect: Complex Order Message
nasdaq_phlxoptions_orders_itch_v1_92.complex_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.complex_order_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_orders_itch_v1_92.complex_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_orders_itch_v1_92.complex_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_orders_itch_v1_92.complex_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple Order Message
nasdaq_phlxoptions_orders_itch_v1_92.simple_order_message = {}

-- Size: Simple Order Message
nasdaq_phlxoptions_orders_itch_v1_92.simple_order_message.size =
  nasdaq_phlxoptions_orders_itch_v1_92.timestamp.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.option_id.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.security_symbol.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.expiration.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.explicit_strike_price.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.option_type.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.order_id.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.side.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.original_order_volume.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.executable_order_volume.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.order_status.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.order_type.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.market_qualifier.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.limit_price.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.all_or_none.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.time_in_force.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.customer_firm_indicator.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.open_close_indicator.size

-- Display: Simple Order Message
nasdaq_phlxoptions_orders_itch_v1_92.simple_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Order Message
nasdaq_phlxoptions_orders_itch_v1_92.simple_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Struct of 2 fields
  index, timestamp = nasdaq_phlxoptions_orders_itch_v1_92.timestamp.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_phlxoptions_orders_itch_v1_92.option_id.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = nasdaq_phlxoptions_orders_itch_v1_92.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration: Struct of 3 fields
  index, expiration = nasdaq_phlxoptions_orders_itch_v1_92.expiration.dissect(buffer, index, packet, parent)

  -- Explicit Strike Price: Integer
  index, explicit_strike_price = nasdaq_phlxoptions_orders_itch_v1_92.explicit_strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: Alpha
  index, option_type = nasdaq_phlxoptions_orders_itch_v1_92.option_type.dissect(buffer, index, packet, parent)

  -- Order Id: Integer
  index, order_id = nasdaq_phlxoptions_orders_itch_v1_92.order_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_phlxoptions_orders_itch_v1_92.side.dissect(buffer, index, packet, parent)

  -- Original Order Volume: Integer
  index, original_order_volume = nasdaq_phlxoptions_orders_itch_v1_92.original_order_volume.dissect(buffer, index, packet, parent)

  -- Executable Order Volume: Integer
  index, executable_order_volume = nasdaq_phlxoptions_orders_itch_v1_92.executable_order_volume.dissect(buffer, index, packet, parent)

  -- Order Status: Alpha
  index, order_status = nasdaq_phlxoptions_orders_itch_v1_92.order_status.dissect(buffer, index, packet, parent)

  -- Order Type: Alpha
  index, order_type = nasdaq_phlxoptions_orders_itch_v1_92.order_type.dissect(buffer, index, packet, parent)

  -- Market Qualifier: Alpha
  index, market_qualifier = nasdaq_phlxoptions_orders_itch_v1_92.market_qualifier.dissect(buffer, index, packet, parent)

  -- Limit Price: Integer
  index, limit_price = nasdaq_phlxoptions_orders_itch_v1_92.limit_price.dissect(buffer, index, packet, parent)

  -- All Or None: Alpha
  index, all_or_none = nasdaq_phlxoptions_orders_itch_v1_92.all_or_none.dissect(buffer, index, packet, parent)

  -- Time In Force: Alpha
  index, time_in_force = nasdaq_phlxoptions_orders_itch_v1_92.time_in_force.dissect(buffer, index, packet, parent)

  -- Customer Firm Indicator: Alpha
  index, customer_firm_indicator = nasdaq_phlxoptions_orders_itch_v1_92.customer_firm_indicator.dissect(buffer, index, packet, parent)

  -- Open Close Indicator: Alpha
  index, open_close_indicator = nasdaq_phlxoptions_orders_itch_v1_92.open_close_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Order Message
nasdaq_phlxoptions_orders_itch_v1_92.simple_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.simple_order_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_orders_itch_v1_92.simple_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_orders_itch_v1_92.simple_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_orders_itch_v1_92.simple_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Strategy Open Closed Message
nasdaq_phlxoptions_orders_itch_v1_92.strategy_open_closed_message = {}

-- Size: Strategy Open Closed Message
nasdaq_phlxoptions_orders_itch_v1_92.strategy_open_closed_message.size =
  nasdaq_phlxoptions_orders_itch_v1_92.timestamp.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.strategy_id.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.open_state.size

-- Display: Strategy Open Closed Message
nasdaq_phlxoptions_orders_itch_v1_92.strategy_open_closed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Open Closed Message
nasdaq_phlxoptions_orders_itch_v1_92.strategy_open_closed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Struct of 2 fields
  index, timestamp = nasdaq_phlxoptions_orders_itch_v1_92.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_phlxoptions_orders_itch_v1_92.strategy_id.dissect(buffer, index, packet, parent)

  -- Open State: Alpha
  index, open_state = nasdaq_phlxoptions_orders_itch_v1_92.open_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Open Closed Message
nasdaq_phlxoptions_orders_itch_v1_92.strategy_open_closed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.strategy_open_closed_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_orders_itch_v1_92.strategy_open_closed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_orders_itch_v1_92.strategy_open_closed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_orders_itch_v1_92.strategy_open_closed_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Open Closed Message
nasdaq_phlxoptions_orders_itch_v1_92.security_open_closed_message = {}

-- Size: Security Open Closed Message
nasdaq_phlxoptions_orders_itch_v1_92.security_open_closed_message.size =
  nasdaq_phlxoptions_orders_itch_v1_92.timestamp.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.option_id.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.security_symbol.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.expiration.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.explicit_strike_price.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.option_type.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.open_state.size

-- Display: Security Open Closed Message
nasdaq_phlxoptions_orders_itch_v1_92.security_open_closed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Open Closed Message
nasdaq_phlxoptions_orders_itch_v1_92.security_open_closed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Struct of 2 fields
  index, timestamp = nasdaq_phlxoptions_orders_itch_v1_92.timestamp.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_phlxoptions_orders_itch_v1_92.option_id.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = nasdaq_phlxoptions_orders_itch_v1_92.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration: Struct of 3 fields
  index, expiration = nasdaq_phlxoptions_orders_itch_v1_92.expiration.dissect(buffer, index, packet, parent)

  -- Explicit Strike Price: Integer
  index, explicit_strike_price = nasdaq_phlxoptions_orders_itch_v1_92.explicit_strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: Alpha
  index, option_type = nasdaq_phlxoptions_orders_itch_v1_92.option_type.dissect(buffer, index, packet, parent)

  -- Open State: Alpha
  index, open_state = nasdaq_phlxoptions_orders_itch_v1_92.open_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Open Closed Message
nasdaq_phlxoptions_orders_itch_v1_92.security_open_closed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.security_open_closed_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_orders_itch_v1_92.security_open_closed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_orders_itch_v1_92.security_open_closed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_orders_itch_v1_92.security_open_closed_message.fields(buffer, offset, packet, parent)
  end
end

-- Complex Trading Action Message
nasdaq_phlxoptions_orders_itch_v1_92.complex_trading_action_message = {}

-- Size: Complex Trading Action Message
nasdaq_phlxoptions_orders_itch_v1_92.complex_trading_action_message.size =
  nasdaq_phlxoptions_orders_itch_v1_92.timestamp.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.strategy_id.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.current_trading_state.size

-- Display: Complex Trading Action Message
nasdaq_phlxoptions_orders_itch_v1_92.complex_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Trading Action Message
nasdaq_phlxoptions_orders_itch_v1_92.complex_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Struct of 2 fields
  index, timestamp = nasdaq_phlxoptions_orders_itch_v1_92.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_phlxoptions_orders_itch_v1_92.strategy_id.dissect(buffer, index, packet, parent)

  -- Current Trading State: Alpha
  index, current_trading_state = nasdaq_phlxoptions_orders_itch_v1_92.current_trading_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Trading Action Message
nasdaq_phlxoptions_orders_itch_v1_92.complex_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.complex_trading_action_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_orders_itch_v1_92.complex_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_orders_itch_v1_92.complex_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_orders_itch_v1_92.complex_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Trading Action Message
nasdaq_phlxoptions_orders_itch_v1_92.security_trading_action_message = {}

-- Size: Security Trading Action Message
nasdaq_phlxoptions_orders_itch_v1_92.security_trading_action_message.size =
  nasdaq_phlxoptions_orders_itch_v1_92.timestamp.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.option_id.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.security_symbol.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.expiration.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.explicit_strike_price.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.option_type.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.current_trading_state.size

-- Display: Security Trading Action Message
nasdaq_phlxoptions_orders_itch_v1_92.security_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Trading Action Message
nasdaq_phlxoptions_orders_itch_v1_92.security_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Struct of 2 fields
  index, timestamp = nasdaq_phlxoptions_orders_itch_v1_92.timestamp.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_phlxoptions_orders_itch_v1_92.option_id.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = nasdaq_phlxoptions_orders_itch_v1_92.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration: Struct of 3 fields
  index, expiration = nasdaq_phlxoptions_orders_itch_v1_92.expiration.dissect(buffer, index, packet, parent)

  -- Explicit Strike Price: Integer
  index, explicit_strike_price = nasdaq_phlxoptions_orders_itch_v1_92.explicit_strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: Alpha
  index, option_type = nasdaq_phlxoptions_orders_itch_v1_92.option_type.dissect(buffer, index, packet, parent)

  -- Current Trading State: Alpha
  index, current_trading_state = nasdaq_phlxoptions_orders_itch_v1_92.current_trading_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Trading Action Message
nasdaq_phlxoptions_orders_itch_v1_92.security_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.security_trading_action_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_orders_itch_v1_92.security_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_orders_itch_v1_92.security_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_orders_itch_v1_92.security_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Complex Order Strategy Leg
nasdaq_phlxoptions_orders_itch_v1_92.complex_order_strategy_leg = {}

-- Size: Complex Order Strategy Leg
nasdaq_phlxoptions_orders_itch_v1_92.complex_order_strategy_leg.size =
  nasdaq_phlxoptions_orders_itch_v1_92.option_id.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.security_symbol.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.expiration.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.explicit_strike_price.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.option_type.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.side.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.leg_ratio.size

-- Display: Complex Order Strategy Leg
nasdaq_phlxoptions_orders_itch_v1_92.complex_order_strategy_leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Order Strategy Leg
nasdaq_phlxoptions_orders_itch_v1_92.complex_order_strategy_leg.fields = function(buffer, offset, packet, parent, complex_order_strategy_leg_index)
  local index = offset

  -- Implicit Complex Order Strategy Leg Index
  if complex_order_strategy_leg_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.complex_order_strategy_leg_index, complex_order_strategy_leg_index)
    iteration:set_generated()
  end

  -- Option Id: Integer
  index, option_id = nasdaq_phlxoptions_orders_itch_v1_92.option_id.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = nasdaq_phlxoptions_orders_itch_v1_92.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration: Struct of 3 fields
  index, expiration = nasdaq_phlxoptions_orders_itch_v1_92.expiration.dissect(buffer, index, packet, parent)

  -- Explicit Strike Price: Integer
  index, explicit_strike_price = nasdaq_phlxoptions_orders_itch_v1_92.explicit_strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: Alpha
  index, option_type = nasdaq_phlxoptions_orders_itch_v1_92.option_type.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_phlxoptions_orders_itch_v1_92.side.dissect(buffer, index, packet, parent)

  -- Leg Ratio: Integer
  index, leg_ratio = nasdaq_phlxoptions_orders_itch_v1_92.leg_ratio.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Order Strategy Leg
nasdaq_phlxoptions_orders_itch_v1_92.complex_order_strategy_leg.dissect = function(buffer, offset, packet, parent, complex_order_strategy_leg_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.complex_order_strategy_leg, buffer(offset, 0))
    local index = nasdaq_phlxoptions_orders_itch_v1_92.complex_order_strategy_leg.fields(buffer, offset, packet, parent, complex_order_strategy_leg_index)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_orders_itch_v1_92.complex_order_strategy_leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_orders_itch_v1_92.complex_order_strategy_leg.fields(buffer, offset, packet, parent, complex_order_strategy_leg_index)
  end
end

-- Complex Order Strategy Message
nasdaq_phlxoptions_orders_itch_v1_92.complex_order_strategy_message = {}

-- Calculate size of: Complex Order Strategy Message
nasdaq_phlxoptions_orders_itch_v1_92.complex_order_strategy_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlxoptions_orders_itch_v1_92.timestamp.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_92.strategy_id.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_92.source.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_92.underlying_symbol.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_92.action.size

  index = index + nasdaq_phlxoptions_orders_itch_v1_92.number_of_legs.size

  -- Calculate field size from count
  local complex_order_strategy_leg_count = buffer(offset + index - 1, 1):uint()
  index = index + complex_order_strategy_leg_count * 21

  return index
end

-- Display: Complex Order Strategy Message
nasdaq_phlxoptions_orders_itch_v1_92.complex_order_strategy_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Order Strategy Message
nasdaq_phlxoptions_orders_itch_v1_92.complex_order_strategy_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Struct of 2 fields
  index, timestamp = nasdaq_phlxoptions_orders_itch_v1_92.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_phlxoptions_orders_itch_v1_92.strategy_id.dissect(buffer, index, packet, parent)

  -- Source: Integer
  index, source = nasdaq_phlxoptions_orders_itch_v1_92.source.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = nasdaq_phlxoptions_orders_itch_v1_92.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Action: Alphanumeric
  index, action = nasdaq_phlxoptions_orders_itch_v1_92.action.dissect(buffer, index, packet, parent)

  -- Number Of Legs: Integer
  index, number_of_legs = nasdaq_phlxoptions_orders_itch_v1_92.number_of_legs.dissect(buffer, index, packet, parent)

  -- Repeating: Complex Order Strategy Leg
  for complex_order_strategy_leg_index = 1, number_of_legs do
    index, complex_order_strategy_leg = nasdaq_phlxoptions_orders_itch_v1_92.complex_order_strategy_leg.dissect(buffer, index, packet, parent, complex_order_strategy_leg_index)
  end

  return index
end

-- Dissect: Complex Order Strategy Message
nasdaq_phlxoptions_orders_itch_v1_92.complex_order_strategy_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.complex_order_strategy_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_orders_itch_v1_92.complex_order_strategy_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_orders_itch_v1_92.complex_order_strategy_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_orders_itch_v1_92.complex_order_strategy_message.fields(buffer, offset, packet, parent)
  end
end

-- Options Directory Message
nasdaq_phlxoptions_orders_itch_v1_92.options_directory_message = {}

-- Size: Options Directory Message
nasdaq_phlxoptions_orders_itch_v1_92.options_directory_message.size =
  nasdaq_phlxoptions_orders_itch_v1_92.timestamp.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.option_id.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.security_symbol.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.expiration.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.explicit_strike_price.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.option_type.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.source.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.underlying_symbol.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.option_closing_type.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.phlx_tradable.size

-- Display: Options Directory Message
nasdaq_phlxoptions_orders_itch_v1_92.options_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Directory Message
nasdaq_phlxoptions_orders_itch_v1_92.options_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Struct of 2 fields
  index, timestamp = nasdaq_phlxoptions_orders_itch_v1_92.timestamp.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_phlxoptions_orders_itch_v1_92.option_id.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = nasdaq_phlxoptions_orders_itch_v1_92.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration: Struct of 3 fields
  index, expiration = nasdaq_phlxoptions_orders_itch_v1_92.expiration.dissect(buffer, index, packet, parent)

  -- Explicit Strike Price: Integer
  index, explicit_strike_price = nasdaq_phlxoptions_orders_itch_v1_92.explicit_strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: Alpha
  index, option_type = nasdaq_phlxoptions_orders_itch_v1_92.option_type.dissect(buffer, index, packet, parent)

  -- Source: Integer
  index, source = nasdaq_phlxoptions_orders_itch_v1_92.source.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = nasdaq_phlxoptions_orders_itch_v1_92.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Option Closing Type: Alpha
  index, option_closing_type = nasdaq_phlxoptions_orders_itch_v1_92.option_closing_type.dissect(buffer, index, packet, parent)

  -- Phlx Tradable: Alpha
  index, phlx_tradable = nasdaq_phlxoptions_orders_itch_v1_92.phlx_tradable.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Directory Message
nasdaq_phlxoptions_orders_itch_v1_92.options_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.options_directory_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_orders_itch_v1_92.options_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_orders_itch_v1_92.options_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_orders_itch_v1_92.options_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_phlxoptions_orders_itch_v1_92.system_event_message = {}

-- Size: System Event Message
nasdaq_phlxoptions_orders_itch_v1_92.system_event_message.size =
  nasdaq_phlxoptions_orders_itch_v1_92.timestamp.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.event_code.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.version.size

-- Display: System Event Message
nasdaq_phlxoptions_orders_itch_v1_92.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_phlxoptions_orders_itch_v1_92.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Struct of 2 fields
  index, timestamp = nasdaq_phlxoptions_orders_itch_v1_92.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: Alpha
  index, event_code = nasdaq_phlxoptions_orders_itch_v1_92.event_code.dissect(buffer, index, packet, parent)

  -- Version: Integer
  index, version = nasdaq_phlxoptions_orders_itch_v1_92.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_phlxoptions_orders_itch_v1_92.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_orders_itch_v1_92.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_orders_itch_v1_92.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_orders_itch_v1_92.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nasdaq_phlxoptions_orders_itch_v1_92.payload = {}

-- Dissect: Payload
nasdaq_phlxoptions_orders_itch_v1_92.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event Message
  if message_type == "S" then
    return nasdaq_phlxoptions_orders_itch_v1_92.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Directory Message
  if message_type == "D" then
    return nasdaq_phlxoptions_orders_itch_v1_92.options_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Order Strategy Message
  if message_type == "R" then
    return nasdaq_phlxoptions_orders_itch_v1_92.complex_order_strategy_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Trading Action Message
  if message_type == "H" then
    return nasdaq_phlxoptions_orders_itch_v1_92.security_trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Trading Action Message
  if message_type == "I" then
    return nasdaq_phlxoptions_orders_itch_v1_92.complex_trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Open Closed Message
  if message_type == "P" then
    return nasdaq_phlxoptions_orders_itch_v1_92.security_open_closed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Open Closed Message
  if message_type == "Q" then
    return nasdaq_phlxoptions_orders_itch_v1_92.strategy_open_closed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Simple Order Message
  if message_type == "O" then
    return nasdaq_phlxoptions_orders_itch_v1_92.simple_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Order Message
  if message_type == "X" then
    return nasdaq_phlxoptions_orders_itch_v1_92.complex_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Notification Message
  if message_type == "A" then
    return nasdaq_phlxoptions_orders_itch_v1_92.auction_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Auction Notification Message
  if message_type == "C" then
    return nasdaq_phlxoptions_orders_itch_v1_92.complex_auction_notification_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nasdaq_phlxoptions_orders_itch_v1_92.message_header = {}

-- Size: Message Header
nasdaq_phlxoptions_orders_itch_v1_92.message_header.size =
  nasdaq_phlxoptions_orders_itch_v1_92.message_length.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.message_type.size

-- Display: Message Header
nasdaq_phlxoptions_orders_itch_v1_92.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_phlxoptions_orders_itch_v1_92.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_phlxoptions_orders_itch_v1_92.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 11 values
  index, message_type = nasdaq_phlxoptions_orders_itch_v1_92.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_phlxoptions_orders_itch_v1_92.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.message_header, buffer(offset, 0))
    local index = nasdaq_phlxoptions_orders_itch_v1_92.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_orders_itch_v1_92.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_orders_itch_v1_92.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_phlxoptions_orders_itch_v1_92.message = {}

-- Read runtime size of: Message
nasdaq_phlxoptions_orders_itch_v1_92.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 2):uint()

  return message_length + 2
end

-- Display: Message
nasdaq_phlxoptions_orders_itch_v1_92.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_phlxoptions_orders_itch_v1_92.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Implicit Message Sequence Number
  if message_index ~= nil and show.sequences and nasdaq_phlxoptions_orders_itch_v1_92.packet_sequence ~= nil then
    local sequence = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.message_sequence_number, UInt64.new(nasdaq_phlxoptions_orders_itch_v1_92.packet_sequence + message_index - 1))
    sequence:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_phlxoptions_orders_itch_v1_92.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 11 branches
  index = nasdaq_phlxoptions_orders_itch_v1_92.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_phlxoptions_orders_itch_v1_92.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = nasdaq_phlxoptions_orders_itch_v1_92.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.message, buffer(offset, 0))
    local current = nasdaq_phlxoptions_orders_itch_v1_92.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_phlxoptions_orders_itch_v1_92.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_phlxoptions_orders_itch_v1_92.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- End Of Session
nasdaq_phlxoptions_orders_itch_v1_92.end_of_session = {}

-- Display: End Of Session
nasdaq_phlxoptions_orders_itch_v1_92.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
nasdaq_phlxoptions_orders_itch_v1_92.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_phlxoptions_orders_itch_v1_92.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Heartbeat
nasdaq_phlxoptions_orders_itch_v1_92.heartbeat = {}

-- Display: Heartbeat
nasdaq_phlxoptions_orders_itch_v1_92.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
nasdaq_phlxoptions_orders_itch_v1_92.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_phlxoptions_orders_itch_v1_92.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
nasdaq_phlxoptions_orders_itch_v1_92.messages = {}

-- Dissect: Messages
nasdaq_phlxoptions_orders_itch_v1_92.messages.dissect = function(buffer, offset, packet, parent, message_count)
  -- Dissect Heartbeat
  if message_count == 0 then
    return nasdaq_phlxoptions_orders_itch_v1_92.heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session
  if message_count == 65535 then
    return nasdaq_phlxoptions_orders_itch_v1_92.end_of_session.dissect(buffer, offset, packet, parent)
  end

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    offset = nasdaq_phlxoptions_orders_itch_v1_92.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end
end

-- Packet Header
nasdaq_phlxoptions_orders_itch_v1_92.packet_header = {}

-- Size: Packet Header
nasdaq_phlxoptions_orders_itch_v1_92.packet_header.size =
  nasdaq_phlxoptions_orders_itch_v1_92.session.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.sequence_number.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.message_count.size

-- Display: Packet Header
nasdaq_phlxoptions_orders_itch_v1_92.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_phlxoptions_orders_itch_v1_92.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_phlxoptions_orders_itch_v1_92.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = nasdaq_phlxoptions_orders_itch_v1_92.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_phlxoptions_orders_itch_v1_92.message_count.dissect(buffer, index, packet, parent)

  -- Sequence base for the packet's messages
  nasdaq_phlxoptions_orders_itch_v1_92.packet_sequence = sequence_number

  return index
end

-- Dissect: Packet Header
nasdaq_phlxoptions_orders_itch_v1_92.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_phlxoptions_orders_itch_v1_92.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_orders_itch_v1_92.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_orders_itch_v1_92.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_phlxoptions_orders_itch_v1_92.packet = {}

-- Verify required size of Udp packet
nasdaq_phlxoptions_orders_itch_v1_92.packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_phlxoptions_orders_itch_v1_92.packet_header.size
end

-- Dissect Packet
nasdaq_phlxoptions_orders_itch_v1_92.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_phlxoptions_orders_itch_v1_92.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):le_uint()

  -- Messages: Runtime Type with 3 branches
  index = nasdaq_phlxoptions_orders_itch_v1_92.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end

-- End Of Session Packet
nasdaq_phlxoptions_orders_itch_v1_92.end_of_session_packet = {}

-- Display: End Of Session Packet
nasdaq_phlxoptions_orders_itch_v1_92.end_of_session_packet.display = function(packet, parent, length)
  return "End Of Session Packet"
end


-- Dissect: End Of Session Packet
nasdaq_phlxoptions_orders_itch_v1_92.end_of_session_packet.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_phlxoptions_orders_itch_v1_92.end_of_session_packet.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Server Heartbeat Packet
nasdaq_phlxoptions_orders_itch_v1_92.server_heartbeat_packet = {}

-- Display: Server Heartbeat Packet
nasdaq_phlxoptions_orders_itch_v1_92.server_heartbeat_packet.display = function(packet, parent, length)
  return "Server Heartbeat Packet"
end


-- Dissect: Server Heartbeat Packet
nasdaq_phlxoptions_orders_itch_v1_92.server_heartbeat_packet.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_phlxoptions_orders_itch_v1_92.server_heartbeat_packet.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- End Of Replay Sequence Message
nasdaq_phlxoptions_orders_itch_v1_92.end_of_replay_sequence_message = {}

-- Size: End Of Replay Sequence Message
nasdaq_phlxoptions_orders_itch_v1_92.end_of_replay_sequence_message.size =
  nasdaq_phlxoptions_orders_itch_v1_92.end_of_replay_sequence_number.size

-- Display: End Of Replay Sequence Message
nasdaq_phlxoptions_orders_itch_v1_92.end_of_replay_sequence_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Replay Sequence Message
nasdaq_phlxoptions_orders_itch_v1_92.end_of_replay_sequence_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- End Of Replay Sequence Number: Alphanumeric
  index, end_of_replay_sequence_number = nasdaq_phlxoptions_orders_itch_v1_92.end_of_replay_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Replay Sequence Message
nasdaq_phlxoptions_orders_itch_v1_92.end_of_replay_sequence_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.end_of_replay_sequence_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_orders_itch_v1_92.end_of_replay_sequence_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_orders_itch_v1_92.end_of_replay_sequence_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_orders_itch_v1_92.end_of_replay_sequence_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
nasdaq_phlxoptions_orders_itch_v1_92.sequenced_message = {}

-- Dissect: Sequenced Message
nasdaq_phlxoptions_orders_itch_v1_92.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  -- Dissect System Event Message
  if sequenced_message_type == "S" then
    return nasdaq_phlxoptions_orders_itch_v1_92.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Directory Message
  if sequenced_message_type == "D" then
    return nasdaq_phlxoptions_orders_itch_v1_92.options_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Order Strategy Message
  if sequenced_message_type == "R" then
    return nasdaq_phlxoptions_orders_itch_v1_92.complex_order_strategy_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Trading Action Message
  if sequenced_message_type == "H" then
    return nasdaq_phlxoptions_orders_itch_v1_92.security_trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Trading Action Message
  if sequenced_message_type == "I" then
    return nasdaq_phlxoptions_orders_itch_v1_92.complex_trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Open Closed Message
  if sequenced_message_type == "P" then
    return nasdaq_phlxoptions_orders_itch_v1_92.security_open_closed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Open Closed Message
  if sequenced_message_type == "Q" then
    return nasdaq_phlxoptions_orders_itch_v1_92.strategy_open_closed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Simple Order Message
  if sequenced_message_type == "O" then
    return nasdaq_phlxoptions_orders_itch_v1_92.simple_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Order Message
  if sequenced_message_type == "X" then
    return nasdaq_phlxoptions_orders_itch_v1_92.complex_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Notification Message
  if sequenced_message_type == "A" then
    return nasdaq_phlxoptions_orders_itch_v1_92.auction_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Auction Notification Message
  if sequenced_message_type == "C" then
    return nasdaq_phlxoptions_orders_itch_v1_92.complex_auction_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Replay Sequence Message
  if sequenced_message_type == "M" then
    return nasdaq_phlxoptions_orders_itch_v1_92.end_of_replay_sequence_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Data Packet
nasdaq_phlxoptions_orders_itch_v1_92.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
nasdaq_phlxoptions_orders_itch_v1_92.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Sequenced Data Packet
nasdaq_phlxoptions_orders_itch_v1_92.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
nasdaq_phlxoptions_orders_itch_v1_92.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Implicit Sequenced Data Packet Sequence Number
  local flow = nasdaq_phlxoptions_orders_itch_v1_92.conversation.current
  if flow ~= nil then
    local memo = flow.sequence.frames[packet.number]
    if not packet.visited then
      if flow.sequence.next == nil then
        flow.sequence.next = tonumber(nasdaq_phlxoptions_orders_itch_v1_92.accepted_sequence_number.current)
      end
      local value = flow.sequence.next
      if value ~= nil then
        if memo == nil then
          memo = {}
          flow.sequence.frames[packet.number] = memo
        end
        memo[#memo + 1] = value
        flow.sequence.next = value + 1
        if show.sequences then
          local sequence = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    else
      if memo ~= nil and #memo > 0 then
        if nasdaq_phlxoptions_orders_itch_v1_92.stream_frame ~= packet.number or nasdaq_phlxoptions_orders_itch_v1_92.stream_occurrence >= #memo then
          nasdaq_phlxoptions_orders_itch_v1_92.stream_frame = packet.number
          nasdaq_phlxoptions_orders_itch_v1_92.stream_occurrence = 0
        end
        nasdaq_phlxoptions_orders_itch_v1_92.stream_occurrence = nasdaq_phlxoptions_orders_itch_v1_92.stream_occurrence + 1
        local value = memo[nasdaq_phlxoptions_orders_itch_v1_92.stream_occurrence]
        if show.sequences and value ~= nil then
          local sequence = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    end
  end

  -- Sequenced Message Type: 1 Byte Ascii String Enum with 12 values
  index, sequenced_message_type = nasdaq_phlxoptions_orders_itch_v1_92.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 12 branches
  index = nasdaq_phlxoptions_orders_itch_v1_92.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
nasdaq_phlxoptions_orders_itch_v1_92.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = nasdaq_phlxoptions_orders_itch_v1_92.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.sequenced_data_packet, buffer(offset, 0))
    local current = nasdaq_phlxoptions_orders_itch_v1_92.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = nasdaq_phlxoptions_orders_itch_v1_92.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_phlxoptions_orders_itch_v1_92.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
end

-- Login Rejected Packet
nasdaq_phlxoptions_orders_itch_v1_92.login_rejected_packet = {}

-- Size: Login Rejected Packet
nasdaq_phlxoptions_orders_itch_v1_92.login_rejected_packet.size =
  nasdaq_phlxoptions_orders_itch_v1_92.reject_reason_code.size

-- Display: Login Rejected Packet
nasdaq_phlxoptions_orders_itch_v1_92.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
nasdaq_phlxoptions_orders_itch_v1_92.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String Enum with 2 values
  index, reject_reason_code = nasdaq_phlxoptions_orders_itch_v1_92.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
nasdaq_phlxoptions_orders_itch_v1_92.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.login_rejected_packet, buffer(offset, 0))
    local index = nasdaq_phlxoptions_orders_itch_v1_92.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_orders_itch_v1_92.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_orders_itch_v1_92.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
nasdaq_phlxoptions_orders_itch_v1_92.login_accepted_packet = {}

-- Size: Login Accepted Packet
nasdaq_phlxoptions_orders_itch_v1_92.login_accepted_packet.size =
  nasdaq_phlxoptions_orders_itch_v1_92.accepted_session.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.accepted_sequence_number.size

-- Display: Login Accepted Packet
nasdaq_phlxoptions_orders_itch_v1_92.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
nasdaq_phlxoptions_orders_itch_v1_92.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Accepted Session: 10 Byte Ascii String
  index, accepted_session = nasdaq_phlxoptions_orders_itch_v1_92.accepted_session.dissect(buffer, index, packet, parent)

  -- Accepted Sequence Number: 20 Byte Ascii String
  index, accepted_sequence_number = nasdaq_phlxoptions_orders_itch_v1_92.accepted_sequence_number.dissect(buffer, index, packet, parent)

  -- Store Accepted Sequence Number Value
  nasdaq_phlxoptions_orders_itch_v1_92.accepted_sequence_number.current = accepted_sequence_number

  if not packet.visited then
    nasdaq_phlxoptions_orders_itch_v1_92.conversation.current.accepted_sequence_number.last = accepted_sequence_number
  end

  return index
end

-- Dissect: Login Accepted Packet
nasdaq_phlxoptions_orders_itch_v1_92.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.login_accepted_packet, buffer(offset, 0))
    local index = nasdaq_phlxoptions_orders_itch_v1_92.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_orders_itch_v1_92.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_orders_itch_v1_92.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
nasdaq_phlxoptions_orders_itch_v1_92.debug_packet = {}

-- Calculate size of: Debug Packet
nasdaq_phlxoptions_orders_itch_v1_92.debug_packet.size = function(buffer, offset)
  local index = 0

  -- Parse runtime size of: Debug Text
  index = index + buffer(offset + index - 3, 2):uint()

  return index
end

-- Display: Debug Packet
nasdaq_phlxoptions_orders_itch_v1_92.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
nasdaq_phlxoptions_orders_itch_v1_92.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  -- Runtime Size Of: Debug Text
  local size_of_debug_text = packet_length - 1

  -- Debug Text: 0 Byte Ascii String
  index, debug_text = nasdaq_phlxoptions_orders_itch_v1_92.debug_text.dissect(buffer, index, packet, parent, size_of_debug_text)

  return index
end

-- Dissect: Debug Packet
nasdaq_phlxoptions_orders_itch_v1_92.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.debug_packet, buffer(offset, 0))
    local index = nasdaq_phlxoptions_orders_itch_v1_92.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_orders_itch_v1_92.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_orders_itch_v1_92.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Server Payload
nasdaq_phlxoptions_orders_itch_v1_92.server_payload = {}

-- Dissect: Server Payload
nasdaq_phlxoptions_orders_itch_v1_92.server_payload.dissect = function(buffer, offset, packet, parent, server_packet_type)
  -- Dissect Debug Packet
  if server_packet_type == "+" then
    return nasdaq_phlxoptions_orders_itch_v1_92.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Packet
  if server_packet_type == "A" then
    return nasdaq_phlxoptions_orders_itch_v1_92.login_accepted_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if server_packet_type == "J" then
    return nasdaq_phlxoptions_orders_itch_v1_92.login_rejected_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Data Packet
  if server_packet_type == "S" then
    return nasdaq_phlxoptions_orders_itch_v1_92.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Server Heartbeat Packet
  if server_packet_type == "H" then
    return nasdaq_phlxoptions_orders_itch_v1_92.server_heartbeat_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session Packet
  if server_packet_type == "Z" then
    return nasdaq_phlxoptions_orders_itch_v1_92.end_of_session_packet.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Server Packet Header
nasdaq_phlxoptions_orders_itch_v1_92.server_packet_header = {}

-- Size: Server Packet Header
nasdaq_phlxoptions_orders_itch_v1_92.server_packet_header.size =
  nasdaq_phlxoptions_orders_itch_v1_92.packet_length.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.server_packet_type.size

-- Display: Server Packet Header
nasdaq_phlxoptions_orders_itch_v1_92.server_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Packet Header
nasdaq_phlxoptions_orders_itch_v1_92.server_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nasdaq_phlxoptions_orders_itch_v1_92.packet_length.dissect(buffer, index, packet, parent)

  -- Server Packet Type: 1 Byte Ascii String Enum with 6 values
  index, server_packet_type = nasdaq_phlxoptions_orders_itch_v1_92.server_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Server Packet Header
nasdaq_phlxoptions_orders_itch_v1_92.server_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.server_packet_header, buffer(offset, 0))
    local index = nasdaq_phlxoptions_orders_itch_v1_92.server_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_orders_itch_v1_92.server_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_orders_itch_v1_92.server_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Soup Bin Tcp Packet
nasdaq_phlxoptions_orders_itch_v1_92.server_soup_bin_tcp_packet = {}

-- Display: Server Soup Bin Tcp Packet
nasdaq_phlxoptions_orders_itch_v1_92.server_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Soup Bin Tcp Packet
nasdaq_phlxoptions_orders_itch_v1_92.server_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset

  -- Server Packet Header: Struct of 2 fields
  index, server_packet_header = nasdaq_phlxoptions_orders_itch_v1_92.server_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Server Packet Type
  local server_packet_type = buffer(index - 1, 1):string()

  -- Server Payload: Runtime Type with 6 branches
  index = nasdaq_phlxoptions_orders_itch_v1_92.server_payload.dissect(buffer, index, packet, parent, server_packet_type)

  return index
end

-- Dissect: Server Soup Bin Tcp Packet
nasdaq_phlxoptions_orders_itch_v1_92.server_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset + size_of_server_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.server_soup_bin_tcp_packet, buffer(offset, 0))
    local current = nasdaq_phlxoptions_orders_itch_v1_92.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
    parent:set_len(size_of_server_soup_bin_tcp_packet)
    local display = nasdaq_phlxoptions_orders_itch_v1_92.server_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_phlxoptions_orders_itch_v1_92.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Server Soup Bin Tcp Packet
local server_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nasdaq_phlxoptions_orders_itch_v1_92.server_packet_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 2):uint() + 2

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Server Packet
nasdaq_phlxoptions_orders_itch_v1_92.server_packet = {}

-- Verify required size of Tcp packet
nasdaq_phlxoptions_orders_itch_v1_92.server_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_phlxoptions_orders_itch_v1_92.server_packet_header.size
end

-- Dissect Server Packet
nasdaq_phlxoptions_orders_itch_v1_92.server_packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = nasdaq_phlxoptions_orders_itch_v1_92.conversation.data(packet)
  if not packet.visited then
    data.accepted_sequence_number.frames[packet.number] = data.accepted_sequence_number.last
  end
  nasdaq_phlxoptions_orders_itch_v1_92.accepted_sequence_number.current = data.accepted_sequence_number.frames[packet.number]
  nasdaq_phlxoptions_orders_itch_v1_92.conversation.current = data

  local index = 0

  -- Dependency for Server Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Server Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_server_soup_bin_tcp_packet = server_soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = nasdaq_phlxoptions_orders_itch_v1_92.server_soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_server_soup_bin_tcp_packet)
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

-- Logout Request Packet
nasdaq_phlxoptions_orders_itch_v1_92.logout_request_packet = {}

-- Display: Logout Request Packet
nasdaq_phlxoptions_orders_itch_v1_92.logout_request_packet.display = function(packet, parent, length)
  return "Logout Request Packet"
end


-- Dissect: Logout Request Packet
nasdaq_phlxoptions_orders_itch_v1_92.logout_request_packet.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_phlxoptions_orders_itch_v1_92.logout_request_packet.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Client Heartbeat Packet
nasdaq_phlxoptions_orders_itch_v1_92.client_heartbeat_packet = {}

-- Display: Client Heartbeat Packet
nasdaq_phlxoptions_orders_itch_v1_92.client_heartbeat_packet.display = function(packet, parent, length)
  return "Client Heartbeat Packet"
end


-- Dissect: Client Heartbeat Packet
nasdaq_phlxoptions_orders_itch_v1_92.client_heartbeat_packet.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_phlxoptions_orders_itch_v1_92.client_heartbeat_packet.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Unsequenced Data Packet
nasdaq_phlxoptions_orders_itch_v1_92.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
nasdaq_phlxoptions_orders_itch_v1_92.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Unsequenced Data Packet
nasdaq_phlxoptions_orders_itch_v1_92.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
nasdaq_phlxoptions_orders_itch_v1_92.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String
  index, unsequenced_message_type = nasdaq_phlxoptions_orders_itch_v1_92.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  -- Runtime Size Of: Unsequenced Message
  local size_of_unsequenced_message = packet_length - 2

  -- Unsequenced Message: 0 Byte
  index, unsequenced_message = nasdaq_phlxoptions_orders_itch_v1_92.unsequenced_message.dissect(buffer, index, packet, parent, size_of_unsequenced_message)

  return index
end

-- Dissect: Unsequenced Data Packet
nasdaq_phlxoptions_orders_itch_v1_92.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = nasdaq_phlxoptions_orders_itch_v1_92.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = nasdaq_phlxoptions_orders_itch_v1_92.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = nasdaq_phlxoptions_orders_itch_v1_92.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_phlxoptions_orders_itch_v1_92.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Login Request Packet
nasdaq_phlxoptions_orders_itch_v1_92.login_request_packet = {}

-- Size: Login Request Packet
nasdaq_phlxoptions_orders_itch_v1_92.login_request_packet.size =
  nasdaq_phlxoptions_orders_itch_v1_92.username.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.password.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.requested_session.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.requested_sequence_number.size

-- Display: Login Request Packet
nasdaq_phlxoptions_orders_itch_v1_92.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
nasdaq_phlxoptions_orders_itch_v1_92.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = nasdaq_phlxoptions_orders_itch_v1_92.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = nasdaq_phlxoptions_orders_itch_v1_92.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = nasdaq_phlxoptions_orders_itch_v1_92.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = nasdaq_phlxoptions_orders_itch_v1_92.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
nasdaq_phlxoptions_orders_itch_v1_92.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.login_request_packet, buffer(offset, 0))
    local index = nasdaq_phlxoptions_orders_itch_v1_92.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_orders_itch_v1_92.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_orders_itch_v1_92.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Client Payload
nasdaq_phlxoptions_orders_itch_v1_92.client_payload = {}

-- Dissect: Client Payload
nasdaq_phlxoptions_orders_itch_v1_92.client_payload.dissect = function(buffer, offset, packet, parent, client_packet_type)
  -- Dissect Debug Packet
  if client_packet_type == "+" then
    return nasdaq_phlxoptions_orders_itch_v1_92.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Packet
  if client_packet_type == "L" then
    return nasdaq_phlxoptions_orders_itch_v1_92.login_request_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if client_packet_type == "U" then
    return nasdaq_phlxoptions_orders_itch_v1_92.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Client Heartbeat Packet
  if client_packet_type == "R" then
    return nasdaq_phlxoptions_orders_itch_v1_92.client_heartbeat_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request Packet
  if client_packet_type == "O" then
    return nasdaq_phlxoptions_orders_itch_v1_92.logout_request_packet.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Packet Header
nasdaq_phlxoptions_orders_itch_v1_92.client_packet_header = {}

-- Size: Client Packet Header
nasdaq_phlxoptions_orders_itch_v1_92.client_packet_header.size =
  nasdaq_phlxoptions_orders_itch_v1_92.packet_length.size + 
  nasdaq_phlxoptions_orders_itch_v1_92.client_packet_type.size

-- Display: Client Packet Header
nasdaq_phlxoptions_orders_itch_v1_92.client_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Packet Header
nasdaq_phlxoptions_orders_itch_v1_92.client_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nasdaq_phlxoptions_orders_itch_v1_92.packet_length.dissect(buffer, index, packet, parent)

  -- Client Packet Type: 1 Byte Ascii String Enum with 5 values
  index, client_packet_type = nasdaq_phlxoptions_orders_itch_v1_92.client_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Packet Header
nasdaq_phlxoptions_orders_itch_v1_92.client_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.client_packet_header, buffer(offset, 0))
    local index = nasdaq_phlxoptions_orders_itch_v1_92.client_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_orders_itch_v1_92.client_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_orders_itch_v1_92.client_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Client Soup Bin Tcp Packet
nasdaq_phlxoptions_orders_itch_v1_92.client_soup_bin_tcp_packet = {}

-- Display: Client Soup Bin Tcp Packet
nasdaq_phlxoptions_orders_itch_v1_92.client_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Soup Bin Tcp Packet
nasdaq_phlxoptions_orders_itch_v1_92.client_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset

  -- Client Packet Header: Struct of 2 fields
  index, client_packet_header = nasdaq_phlxoptions_orders_itch_v1_92.client_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Client Packet Type
  local client_packet_type = buffer(index - 1, 1):string()

  -- Client Payload: Runtime Type with 5 branches
  index = nasdaq_phlxoptions_orders_itch_v1_92.client_payload.dissect(buffer, index, packet, parent, client_packet_type)

  return index
end

-- Dissect: Client Soup Bin Tcp Packet
nasdaq_phlxoptions_orders_itch_v1_92.client_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset + size_of_client_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92.fields.client_soup_bin_tcp_packet, buffer(offset, 0))
    local current = nasdaq_phlxoptions_orders_itch_v1_92.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
    parent:set_len(size_of_client_soup_bin_tcp_packet)
    local display = nasdaq_phlxoptions_orders_itch_v1_92.client_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_phlxoptions_orders_itch_v1_92.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Client Soup Bin Tcp Packet
local client_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nasdaq_phlxoptions_orders_itch_v1_92.client_packet_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 2):uint() + 2

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Client Packet
nasdaq_phlxoptions_orders_itch_v1_92.client_packet = {}

-- Verify required size of Tcp packet
nasdaq_phlxoptions_orders_itch_v1_92.client_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_phlxoptions_orders_itch_v1_92.client_packet_header.size
end

-- Dissect Client Packet
nasdaq_phlxoptions_orders_itch_v1_92.client_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Client Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Client Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_client_soup_bin_tcp_packet = client_soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = nasdaq_phlxoptions_orders_itch_v1_92.client_soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_client_soup_bin_tcp_packet)
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
function omi_nasdaq_phlxoptions_orders_itch_v1_92.init()
  nasdaq_phlxoptions_orders_itch_v1_92.accepted_sequence_number.current = nil
  nasdaq_phlxoptions_orders_itch_v1_92.conversation.current = nil
  nasdaq_phlxoptions_orders_itch_v1_92.conversation.flows = {}
end

-- Connection roles for Nasdaq PhlxOptions Orders Itch 1.92: Client is the initiator, Server is the acceptor
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
nasdaq_phlxoptions_orders_itch_v1_92.role = function(packet)
  if omi_nasdaq_phlxoptions_orders_itch_v1_92.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_nasdaq_phlxoptions_orders_itch_v1_92.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_nasdaq_phlxoptions_orders_itch_v1_92.prefs.acceptor_port

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

  if omi_nasdaq_phlxoptions_orders_itch_v1_92.prefs.swap_sides then
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
nasdaq_phlxoptions_orders_itch_v1_92.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Nasdaq PhlxOptions Orders Itch 1.92
function omi_nasdaq_phlxoptions_orders_itch_v1_92.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_phlxoptions_orders_itch_v1_92.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_phlxoptions_orders_itch_v1_92, buffer(), omi_nasdaq_phlxoptions_orders_itch_v1_92.description, "("..buffer:len().." Bytes)")

  if packet.port_type == 2 then
    local role = nasdaq_phlxoptions_orders_itch_v1_92.role(packet)

    if role == "initiator" then
      return nasdaq_phlxoptions_orders_itch_v1_92.client_packet.dissect(buffer, packet, protocol)
    end

    return nasdaq_phlxoptions_orders_itch_v1_92.server_packet.dissect(buffer, packet, protocol)
  end

  if packet.port_type == 3 then
    return nasdaq_phlxoptions_orders_itch_v1_92.packet.dissect(buffer, packet, protocol)
  end
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
nasdaq_phlxoptions_orders_itch_v1_92.client_packet.fingerprint = function(buffer)
  if buffer:len() < 3 then
    return false
  end

  local client_packet_type = buffer(2, 1):string()

  -- Debug Packet
  if client_packet_type == "+" then
    return true
  end

  -- Login Request Packet
  if client_packet_type == "L" then
    return true
  end

  -- Unsequenced Data Packet
  if client_packet_type == "U" then
    return true
  end

  -- Client Heartbeat Packet
  if client_packet_type == "R" then
    return true
  end

  -- Logout Request Packet
  if client_packet_type == "O" then
    return true
  end

  return false
end

-- Fingerprint of Server Packet: would its message dispatch accept this frame?
nasdaq_phlxoptions_orders_itch_v1_92.server_packet.fingerprint = function(buffer)
  if buffer:len() < 3 then
    return false
  end

  local server_packet_type = buffer(2, 1):string()

  -- Debug Packet
  if server_packet_type == "+" then
    return true
  end

  -- Login Accepted Packet
  if server_packet_type == "A" then
    return true
  end

  -- Login Rejected Packet
  if server_packet_type == "J" then
    return true
  end

  -- Sequenced Data Packet
  if server_packet_type == "S" then
    return true
  end

  -- Server Heartbeat Packet
  if server_packet_type == "H" then
    return true
  end

  -- End Of Session Packet
  if server_packet_type == "Z" then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq PhlxOptions Orders Itch 1.92 (Tcp)
local function omi_nasdaq_phlxoptions_orders_itch_v1_92_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_phlxoptions_orders_itch_v1_92.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not nasdaq_phlxoptions_orders_itch_v1_92.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_phlxoptions_orders_itch_v1_92
  omi_nasdaq_phlxoptions_orders_itch_v1_92.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq PhlxOptions Orders Itch 1.92 (Tcp)
local function omi_nasdaq_phlxoptions_orders_itch_v1_92_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_phlxoptions_orders_itch_v1_92.server_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not nasdaq_phlxoptions_orders_itch_v1_92.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_phlxoptions_orders_itch_v1_92
  omi_nasdaq_phlxoptions_orders_itch_v1_92.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq PhlxOptions Orders Itch 1.92 (Udp)
local function omi_nasdaq_phlxoptions_orders_itch_v1_92_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_phlxoptions_orders_itch_v1_92.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_phlxoptions_orders_itch_v1_92
  omi_nasdaq_phlxoptions_orders_itch_v1_92.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq PhlxOptions Orders Itch 1.92 (Tcp): apply the heuristic of the sender's connection role
local function omi_nasdaq_phlxoptions_orders_itch_v1_92_tcp_heuristic(buffer, packet, parent)
  local role = nasdaq_phlxoptions_orders_itch_v1_92.role(packet)
  local initiator = omi_nasdaq_phlxoptions_orders_itch_v1_92_tcp_initiator_heuristic
  local acceptor = omi_nasdaq_phlxoptions_orders_itch_v1_92_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  nasdaq_phlxoptions_orders_itch_v1_92.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  nasdaq_phlxoptions_orders_itch_v1_92.swap(packet)

  return false
end

-- Register Heuristics for Nasdaq PhlxOptions Orders Itch 1.92
omi_nasdaq_phlxoptions_orders_itch_v1_92:register_heuristic("tcp", omi_nasdaq_phlxoptions_orders_itch_v1_92_tcp_heuristic)
omi_nasdaq_phlxoptions_orders_itch_v1_92:register_heuristic("udp", omi_nasdaq_phlxoptions_orders_itch_v1_92_udp_heuristic)

-- Register Nasdaq PhlxOptions Orders Itch 1.92 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_nasdaq_phlxoptions_orders_itch_v1_92)

-- Register Nasdaq PhlxOptions Orders Itch 1.92 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_nasdaq_phlxoptions_orders_itch_v1_92)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 1.92
--   Date: Friday, April 25, 2025
--   Specification: topoplusorders - TCP Update.pdf
--   Specification: topoplusorders__1_.pdf
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
