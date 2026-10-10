-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq PhlxOptions TopOfMarket Itch 3.4 Protocol
local omi_nasdaq_phlxoptions_topofmarket_itch_v3_4 = Proto("Omi.Nasdaq.PhlxOptions.TopOfMarket.Itch.v3.4", "Nasdaq PhlxOptions TopOfMarket Itch 3.4")

-- Protocol table
local nasdaq_phlxoptions_topofmarket_itch_v3_4 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq PhlxOptions TopOfMarket Itch 3.4 Fields
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.accepted_sequence_number = ProtoField.new("Accepted Sequence Number", "nasdaq.phlxoptions.topofmarket.itch.v3.4.acceptedsequencenumber", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.accepted_session = ProtoField.new("Accepted Session", "nasdaq.phlxoptions.topofmarket.itch.v3.4.acceptedsession", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.ask_price_2 = ProtoField.new("Ask Price 2", "nasdaq.phlxoptions.topofmarket.itch.v3.4.askprice2", ftypes.DOUBLE)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.ask_price_4 = ProtoField.new("Ask Price 4", "nasdaq.phlxoptions.topofmarket.itch.v3.4.askprice4", ftypes.DOUBLE)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.ask_size_2 = ProtoField.new("Ask Size 2", "nasdaq.phlxoptions.topofmarket.itch.v3.4.asksize2", ftypes.UINT16)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.ask_size_4 = ProtoField.new("Ask Size 4", "nasdaq.phlxoptions.topofmarket.itch.v3.4.asksize4", ftypes.UINT32)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.bid_price_2 = ProtoField.new("Bid Price 2", "nasdaq.phlxoptions.topofmarket.itch.v3.4.bidprice2", ftypes.DOUBLE)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.bid_price_4 = ProtoField.new("Bid Price 4", "nasdaq.phlxoptions.topofmarket.itch.v3.4.bidprice4", ftypes.DOUBLE)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.bid_size_2 = ProtoField.new("Bid Size 2", "nasdaq.phlxoptions.topofmarket.itch.v3.4.bidsize2", ftypes.UINT16)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.bid_size_4 = ProtoField.new("Bid Size 4", "nasdaq.phlxoptions.topofmarket.itch.v3.4.bidsize4", ftypes.UINT32)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.client_packet_type = ProtoField.new("Packet Type", "nasdaq.phlxoptions.topofmarket.itch.v3.4.clientpackettype", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.cross_id = ProtoField.new("Cross Id", "nasdaq.phlxoptions.topofmarket.itch.v3.4.crossid", ftypes.UINT32)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.current_trading_state = ProtoField.new("Current Trading State", "nasdaq.phlxoptions.topofmarket.itch.v3.4.currenttradingstate", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.debug_text = ProtoField.new("Debug Text", "nasdaq.phlxoptions.topofmarket.itch.v3.4.debugtext", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.end_of_replay_sequence_number = ProtoField.new("End Of Replay Sequence Number", "nasdaq.phlxoptions.topofmarket.itch.v3.4.endofreplaysequencenumber", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.event_code = ProtoField.new("Event Code", "nasdaq.phlxoptions.topofmarket.itch.v3.4.eventcode", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.expiration_day = ProtoField.new("Expiration Day", "nasdaq.phlxoptions.topofmarket.itch.v3.4.expirationday", ftypes.UINT8)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.expiration_month = ProtoField.new("Expiration Month", "nasdaq.phlxoptions.topofmarket.itch.v3.4.expirationmonth", ftypes.UINT8)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.expiration_year = ProtoField.new("Expiration Year", "nasdaq.phlxoptions.topofmarket.itch.v3.4.expirationyear", ftypes.UINT8)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.message_count = ProtoField.new("Message Count", "nasdaq.phlxoptions.topofmarket.itch.v3.4.messagecount", ftypes.UINT16)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.message_length = ProtoField.new("Message Length", "nasdaq.phlxoptions.topofmarket.itch.v3.4.messagelength", ftypes.UINT16)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.message_type = ProtoField.new("Message Type", "nasdaq.phlxoptions.topofmarket.itch.v3.4.messagetype", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.mpv = ProtoField.new("Mpv", "nasdaq.phlxoptions.topofmarket.itch.v3.4.mpv", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.nanoseconds = ProtoField.new("Nanoseconds", "nasdaq.phlxoptions.topofmarket.itch.v3.4.nanoseconds", ftypes.UINT32)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.open_state = ProtoField.new("Open State", "nasdaq.phlxoptions.topofmarket.itch.v3.4.openstate", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.option_closing_type = ProtoField.new("Option Closing Type", "nasdaq.phlxoptions.topofmarket.itch.v3.4.optionclosingtype", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.option_id = ProtoField.new("Option Id", "nasdaq.phlxoptions.topofmarket.itch.v3.4.optionid", ftypes.UINT32)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.option_type = ProtoField.new("Option Type", "nasdaq.phlxoptions.topofmarket.itch.v3.4.optiontype", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.original_cross_id = ProtoField.new("Original Cross Id", "nasdaq.phlxoptions.topofmarket.itch.v3.4.originalcrossid", ftypes.UINT32)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.original_price = ProtoField.new("Original Price", "nasdaq.phlxoptions.topofmarket.itch.v3.4.originalprice", ftypes.DOUBLE)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.original_volume = ProtoField.new("Original Volume", "nasdaq.phlxoptions.topofmarket.itch.v3.4.originalvolume", ftypes.UINT32)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.packet_length = ProtoField.new("Packet Length", "nasdaq.phlxoptions.topofmarket.itch.v3.4.packetlength", ftypes.UINT16)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.password = ProtoField.new("Password", "nasdaq.phlxoptions.topofmarket.itch.v3.4.password", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.price_2 = ProtoField.new("Price 2", "nasdaq.phlxoptions.topofmarket.itch.v3.4.price2", ftypes.DOUBLE)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.price_4 = ProtoField.new("Price 4", "nasdaq.phlxoptions.topofmarket.itch.v3.4.price4", ftypes.DOUBLE)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.quote_condition = ProtoField.new("Quote Condition", "nasdaq.phlxoptions.topofmarket.itch.v3.4.quotecondition", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "nasdaq.phlxoptions.topofmarket.itch.v3.4.rejectreasoncode", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "nasdaq.phlxoptions.topofmarket.itch.v3.4.requestedsequencenumber", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.requested_session = ProtoField.new("Requested Session", "nasdaq.phlxoptions.topofmarket.itch.v3.4.requestedsession", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.second = ProtoField.new("Second", "nasdaq.phlxoptions.topofmarket.itch.v3.4.second", ftypes.UINT32)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.security_symbol = ProtoField.new("Security Symbol", "nasdaq.phlxoptions.topofmarket.itch.v3.4.securitysymbol", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.phlxoptions.topofmarket.itch.v3.4.sequencenumber", ftypes.UINT64)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "nasdaq.phlxoptions.topofmarket.itch.v3.4.sequencedmessagetype", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.server_packet_type = ProtoField.new("Packet Type", "nasdaq.phlxoptions.topofmarket.itch.v3.4.serverpackettype", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.session = ProtoField.new("Session", "nasdaq.phlxoptions.topofmarket.itch.v3.4.session", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.size_2 = ProtoField.new("Size 2", "nasdaq.phlxoptions.topofmarket.itch.v3.4.size2", ftypes.UINT16)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.size_4 = ProtoField.new("Size 4", "nasdaq.phlxoptions.topofmarket.itch.v3.4.size4", ftypes.UINT32)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.source = ProtoField.new("Source", "nasdaq.phlxoptions.topofmarket.itch.v3.4.source", ftypes.UINT8)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.strike_price = ProtoField.new("Strike Price", "nasdaq.phlxoptions.topofmarket.itch.v3.4.strikeprice", ftypes.DOUBLE)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.subversion = ProtoField.new("Subversion", "nasdaq.phlxoptions.topofmarket.itch.v3.4.subversion", ftypes.UINT8)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.tradable = ProtoField.new("Tradable", "nasdaq.phlxoptions.topofmarket.itch.v3.4.tradable", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.trade_condition = ProtoField.new("Trade Condition", "nasdaq.phlxoptions.topofmarket.itch.v3.4.tradecondition", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "nasdaq.phlxoptions.topofmarket.itch.v3.4.underlyingsymbol", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "nasdaq.phlxoptions.topofmarket.itch.v3.4.unsequencedmessage", ftypes.BYTES)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "nasdaq.phlxoptions.topofmarket.itch.v3.4.unsequencedmessagetype", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.username = ProtoField.new("Username", "nasdaq.phlxoptions.topofmarket.itch.v3.4.username", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.version = ProtoField.new("Version", "nasdaq.phlxoptions.topofmarket.itch.v3.4.version", ftypes.UINT8)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.volume = ProtoField.new("Volume", "nasdaq.phlxoptions.topofmarket.itch.v3.4.volume", ftypes.UINT32)

-- Nasdaq PhlxOptions TopOfMarket Itch 3.4 Framing
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.client_packet = ProtoField.new("Tcp Packet", "nasdaq.phlxoptions.topofmarket.itch.v3.4.clientpacket", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.client_packet_header = ProtoField.new("Tcp Packet Header", "nasdaq.phlxoptions.topofmarket.itch.v3.4.clientpacketheader", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.client_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.phlxoptions.topofmarket.itch.v3.4.clientsoupbintcppacket", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.message = ProtoField.new("Message", "nasdaq.phlxoptions.topofmarket.itch.v3.4.message", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.message_header = ProtoField.new("Message Header", "nasdaq.phlxoptions.topofmarket.itch.v3.4.messageheader", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.packet = ProtoField.new("Packet", "nasdaq.phlxoptions.topofmarket.itch.v3.4.packet", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.phlxoptions.topofmarket.itch.v3.4.packetheader", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.server_packet = ProtoField.new("Tcp Packet", "nasdaq.phlxoptions.topofmarket.itch.v3.4.serverpacket", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.server_packet_header = ProtoField.new("Tcp Packet Header", "nasdaq.phlxoptions.topofmarket.itch.v3.4.serverpacketheader", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.server_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.phlxoptions.topofmarket.itch.v3.4.serversoupbintcppacket", ftypes.STRING)

-- Nasdaq PhlxOptions TopOfMarket 3.4 Application Messages
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.broken_trade_report_message = ProtoField.new("Broken Trade Report Message", "nasdaq.phlxoptions.topofmarket.itch.v3.4.brokentradereportmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.end_of_replay_sequence_message = ProtoField.new("End Of Replay Sequence Message", "nasdaq.phlxoptions.topofmarket.itch.v3.4.endofreplaysequencemessage", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.long_best_ask_update_message = ProtoField.new("Long Best Ask Update Message", "nasdaq.phlxoptions.topofmarket.itch.v3.4.longbestaskupdatemessage", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.long_best_bid_and_ask_update_message = ProtoField.new("Long Best Bid And Ask Update Message", "nasdaq.phlxoptions.topofmarket.itch.v3.4.longbestbidandaskupdatemessage", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.long_best_bid_update_message = ProtoField.new("Long Best Bid Update Message", "nasdaq.phlxoptions.topofmarket.itch.v3.4.longbestbidupdatemessage", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.options_directory_message = ProtoField.new("Options Directory Message", "nasdaq.phlxoptions.topofmarket.itch.v3.4.optionsdirectorymessage", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.security_open_closed_message = ProtoField.new("Security Open Closed Message", "nasdaq.phlxoptions.topofmarket.itch.v3.4.securityopenclosedmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.short_best_ask_update_message = ProtoField.new("Short Best Ask Update Message", "nasdaq.phlxoptions.topofmarket.itch.v3.4.shortbestaskupdatemessage", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.short_best_bid_and_ask_update_message = ProtoField.new("Short Best Bid And Ask Update Message", "nasdaq.phlxoptions.topofmarket.itch.v3.4.shortbestbidandaskupdatemessage", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.short_best_bid_update_message = ProtoField.new("Short Best Bid Update Message", "nasdaq.phlxoptions.topofmarket.itch.v3.4.shortbestbidupdatemessage", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.phlxoptions.topofmarket.itch.v3.4.systemeventmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.timestamp_message = ProtoField.new("Timestamp Message", "nasdaq.phlxoptions.topofmarket.itch.v3.4.timestampmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.trade_report_message = ProtoField.new("Trade Report Message", "nasdaq.phlxoptions.topofmarket.itch.v3.4.tradereportmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.trading_action_message = ProtoField.new("Trading Action Message", "nasdaq.phlxoptions.topofmarket.itch.v3.4.tradingactionmessage", ftypes.STRING)

-- Nasdaq PhlxOptions TopOfMarket 3.4 Session Messages
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.client_heartbeat_packet = ProtoField.new("Client Heartbeat Packet", "nasdaq.phlxoptions.topofmarket.itch.v3.4.clientheartbeatpacket", ftypes.BYTES)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.debug_packet = ProtoField.new("Debug Packet", "nasdaq.phlxoptions.topofmarket.itch.v3.4.debugpacket", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.end_of_session = ProtoField.new("End Of Session", "nasdaq.phlxoptions.topofmarket.itch.v3.4.endofsession", ftypes.BYTES)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.end_of_session_packet = ProtoField.new("End Of Session Packet", "nasdaq.phlxoptions.topofmarket.itch.v3.4.endofsessionpacket", ftypes.BYTES)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.heartbeat = ProtoField.new("Heartbeat", "nasdaq.phlxoptions.topofmarket.itch.v3.4.heartbeat", ftypes.BYTES)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "nasdaq.phlxoptions.topofmarket.itch.v3.4.loginacceptedpacket", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "nasdaq.phlxoptions.topofmarket.itch.v3.4.loginrejectedpacket", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.login_request_packet = ProtoField.new("Login Request Packet", "nasdaq.phlxoptions.topofmarket.itch.v3.4.loginrequestpacket", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.logout_request_packet = ProtoField.new("Logout Request Packet", "nasdaq.phlxoptions.topofmarket.itch.v3.4.logoutrequestpacket", ftypes.BYTES)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "nasdaq.phlxoptions.topofmarket.itch.v3.4.sequenceddatapacket", ftypes.STRING)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.server_heartbeat_packet = ProtoField.new("Server Heartbeat Packet", "nasdaq.phlxoptions.topofmarket.itch.v3.4.serverheartbeatpacket", ftypes.BYTES)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "nasdaq.phlxoptions.topofmarket.itch.v3.4.unsequenceddatapacket", ftypes.STRING)

-- Nasdaq PhlxOptions TopOfMarket Itch 3.4 Generated Fields
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.message_index = ProtoField.new("Message Index", "nasdaq.phlxoptions.topofmarket.itch.v3.4.messageindex", ftypes.UINT16)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "nasdaq.phlxoptions.topofmarket.itch.v3.4.messagesequencenumber", ftypes.UINT64)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.sequenced_data_packet_sequence_number = ProtoField.new("Sequenced Data Packet Sequence Number", "nasdaq.phlxoptions.topofmarket.itch.v3.4.sequenceddatapacketsequencenumber", ftypes.UINT64)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.phlxoptions.topofmarket.itch.v3.4.timestamp", ftypes.UINT64)

-----------------------------------------------------------------------
-- Nasdaq PhlxOptions TopOfMarket Itch 3.4 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
nasdaq_phlxoptions_topofmarket_itch_v3_4.timestamp_format = 2

-- Hours behind UTC (EST) for midnight calculation
nasdaq_phlxoptions_topofmarket_itch_v3_4.utc_offset_hours = 5

-- Timestamp format (true = decimal-scaled, false = raw mantissa)
nasdaq_phlxoptions_topofmarket_itch_v3_4.format_timestamp = true

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

-- Nasdaq PhlxOptions TopOfMarket Itch 3.4 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.session_messages = true
show.indexes = true
show.sequences = true

-- Register Nasdaq PhlxOptions TopOfMarket Itch 3.4 Show Options
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.prefs.format_timestamp = Pref.bool("Format Timestamp", true, "Compose Timestamp with the stored seconds anchor (off = raw nanoseconds)")

omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.prefs.timestamp_format = Pref.enum("Nanoseconds Format", 2, "Nanoseconds display format", timestamp_format_enum, false)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 5, "Hours behind UTC (EST) for midnight calculation")

-- Handle changed preferences
function omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.prefs.show_application_messages
  end
  if show.headers ~= omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.prefs.show_headers then
    show.headers = omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.prefs.show_headers
  end
  if show.session_messages ~= omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.prefs.show_session_messages then
    show.session_messages = omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.prefs.show_session_messages
  end
  if show.structs ~= omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.prefs.show_structs then
    show.structs = omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.prefs.show_structs
  end
  if show.indexes ~= omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.prefs.show_indexes then
    show.indexes = omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.prefs.show_indexes
  end
  if show.sequences ~= omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.prefs.show_sequences then
    show.sequences = omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.prefs.show_sequences
  end
  if nasdaq_phlxoptions_topofmarket_itch_v3_4.format_timestamp ~= omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.prefs.format_timestamp then
    nasdaq_phlxoptions_topofmarket_itch_v3_4.format_timestamp = omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.prefs.format_timestamp
  end
  if nasdaq_phlxoptions_topofmarket_itch_v3_4.timestamp_format ~= omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.prefs.timestamp_format then
    nasdaq_phlxoptions_topofmarket_itch_v3_4.timestamp_format = omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.prefs.timestamp_format
  end
  if nasdaq_phlxoptions_topofmarket_itch_v3_4.utc_offset_hours ~= omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.prefs.utc_offset_hours then
    nasdaq_phlxoptions_topofmarket_itch_v3_4.utc_offset_hours = omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.prefs.utc_offset_hours
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
nasdaq_phlxoptions_topofmarket_itch_v3_4.conversation = {}
nasdaq_phlxoptions_topofmarket_itch_v3_4.conversation.flows = {}

-- Revisit replay cursor for stream sequences: which frame is being
-- re-dissected and which memoized occurrence within it is next
nasdaq_phlxoptions_topofmarket_itch_v3_4.stream_frame = nil
nasdaq_phlxoptions_topofmarket_itch_v3_4.stream_occurrence = 0

-- Conversation key for the current packet (src/dst tuple)
nasdaq_phlxoptions_topofmarket_itch_v3_4.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
nasdaq_phlxoptions_topofmarket_itch_v3_4.conversation.data = function(packet)
  local key = nasdaq_phlxoptions_topofmarket_itch_v3_4.conversation.key(packet)
  local data = nasdaq_phlxoptions_topofmarket_itch_v3_4.conversation.flows[key]
  if data == nil then
    data = { accepted_sequence_number = { last = nil, frames = {} }, second = { last = nil, frames = {} }, sequence = { next = nil, frames = {} } }
    nasdaq_phlxoptions_topofmarket_itch_v3_4.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
nasdaq_phlxoptions_topofmarket_itch_v3_4.conversation.current = nil


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
-- Nasdaq PhlxOptions TopOfMarket Itch 3.4 Fields
-----------------------------------------------------------------------

-- Accepted Sequence Number
nasdaq_phlxoptions_topofmarket_itch_v3_4.accepted_sequence_number = {}

-- Size: Accepted Sequence Number
nasdaq_phlxoptions_topofmarket_itch_v3_4.accepted_sequence_number.size = 20

-- Display: Accepted Sequence Number
nasdaq_phlxoptions_topofmarket_itch_v3_4.accepted_sequence_number.display = function(value)
  return "Accepted Sequence Number: "..value
end

-- Dissect: Accepted Sequence Number
nasdaq_phlxoptions_topofmarket_itch_v3_4.accepted_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v3_4.accepted_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.accepted_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.accepted_sequence_number, range, value, display)

  return offset + length, value
end

-- Accepted Session
nasdaq_phlxoptions_topofmarket_itch_v3_4.accepted_session = {}

-- Size: Accepted Session
nasdaq_phlxoptions_topofmarket_itch_v3_4.accepted_session.size = 10

-- Display: Accepted Session
nasdaq_phlxoptions_topofmarket_itch_v3_4.accepted_session.display = function(value)
  return "Accepted Session: "..value
end

-- Dissect: Accepted Session
nasdaq_phlxoptions_topofmarket_itch_v3_4.accepted_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v3_4.accepted_session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.accepted_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.accepted_session, range, value, display)

  return offset + length, value
end

-- Ask Price 2
nasdaq_phlxoptions_topofmarket_itch_v3_4.ask_price_2 = {}

-- Size: Ask Price 2
nasdaq_phlxoptions_topofmarket_itch_v3_4.ask_price_2.size = 2

-- Display: Ask Price 2
nasdaq_phlxoptions_topofmarket_itch_v3_4.ask_price_2.display = function(value)
  return "Ask Price 2: "..value
end

-- Translate: Ask Price 2
nasdaq_phlxoptions_topofmarket_itch_v3_4.ask_price_2.translate = function(raw)
  return raw/100
end

-- Dissect: Ask Price 2
nasdaq_phlxoptions_topofmarket_itch_v3_4.ask_price_2.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v3_4.ask_price_2.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_phlxoptions_topofmarket_itch_v3_4.ask_price_2.translate(raw)
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.ask_price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.ask_price_2, range, value, display)

  return offset + length, value
end

-- Ask Price 4
nasdaq_phlxoptions_topofmarket_itch_v3_4.ask_price_4 = {}

-- Size: Ask Price 4
nasdaq_phlxoptions_topofmarket_itch_v3_4.ask_price_4.size = 4

-- Display: Ask Price 4
nasdaq_phlxoptions_topofmarket_itch_v3_4.ask_price_4.display = function(value)
  return "Ask Price 4: "..value
end

-- Translate: Ask Price 4
nasdaq_phlxoptions_topofmarket_itch_v3_4.ask_price_4.translate = function(raw)
  return raw/10000
end

-- Dissect: Ask Price 4
nasdaq_phlxoptions_topofmarket_itch_v3_4.ask_price_4.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v3_4.ask_price_4.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nasdaq_phlxoptions_topofmarket_itch_v3_4.ask_price_4.translate(raw)
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.ask_price_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.ask_price_4, range, value, display)

  return offset + length, value
end

-- Ask Size 2
nasdaq_phlxoptions_topofmarket_itch_v3_4.ask_size_2 = {}

-- Size: Ask Size 2
nasdaq_phlxoptions_topofmarket_itch_v3_4.ask_size_2.size = 2

-- Display: Ask Size 2
nasdaq_phlxoptions_topofmarket_itch_v3_4.ask_size_2.display = function(value)
  return "Ask Size 2: "..value
end

-- Dissect: Ask Size 2
nasdaq_phlxoptions_topofmarket_itch_v3_4.ask_size_2.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v3_4.ask_size_2.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.ask_size_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.ask_size_2, range, value, display)

  return offset + length, value
end

-- Ask Size 4
nasdaq_phlxoptions_topofmarket_itch_v3_4.ask_size_4 = {}

-- Size: Ask Size 4
nasdaq_phlxoptions_topofmarket_itch_v3_4.ask_size_4.size = 4

-- Display: Ask Size 4
nasdaq_phlxoptions_topofmarket_itch_v3_4.ask_size_4.display = function(value)
  return "Ask Size 4: "..value
end

-- Dissect: Ask Size 4
nasdaq_phlxoptions_topofmarket_itch_v3_4.ask_size_4.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v3_4.ask_size_4.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.ask_size_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.ask_size_4, range, value, display)

  return offset + length, value
end

-- Bid Price 2
nasdaq_phlxoptions_topofmarket_itch_v3_4.bid_price_2 = {}

-- Size: Bid Price 2
nasdaq_phlxoptions_topofmarket_itch_v3_4.bid_price_2.size = 2

-- Display: Bid Price 2
nasdaq_phlxoptions_topofmarket_itch_v3_4.bid_price_2.display = function(value)
  return "Bid Price 2: "..value
end

-- Translate: Bid Price 2
nasdaq_phlxoptions_topofmarket_itch_v3_4.bid_price_2.translate = function(raw)
  return raw/100
end

-- Dissect: Bid Price 2
nasdaq_phlxoptions_topofmarket_itch_v3_4.bid_price_2.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v3_4.bid_price_2.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_phlxoptions_topofmarket_itch_v3_4.bid_price_2.translate(raw)
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.bid_price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.bid_price_2, range, value, display)

  return offset + length, value
end

-- Bid Price 4
nasdaq_phlxoptions_topofmarket_itch_v3_4.bid_price_4 = {}

-- Size: Bid Price 4
nasdaq_phlxoptions_topofmarket_itch_v3_4.bid_price_4.size = 4

-- Display: Bid Price 4
nasdaq_phlxoptions_topofmarket_itch_v3_4.bid_price_4.display = function(value)
  return "Bid Price 4: "..value
end

-- Translate: Bid Price 4
nasdaq_phlxoptions_topofmarket_itch_v3_4.bid_price_4.translate = function(raw)
  return raw/10000
end

-- Dissect: Bid Price 4
nasdaq_phlxoptions_topofmarket_itch_v3_4.bid_price_4.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v3_4.bid_price_4.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nasdaq_phlxoptions_topofmarket_itch_v3_4.bid_price_4.translate(raw)
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.bid_price_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.bid_price_4, range, value, display)

  return offset + length, value
end

-- Bid Size 2
nasdaq_phlxoptions_topofmarket_itch_v3_4.bid_size_2 = {}

-- Size: Bid Size 2
nasdaq_phlxoptions_topofmarket_itch_v3_4.bid_size_2.size = 2

-- Display: Bid Size 2
nasdaq_phlxoptions_topofmarket_itch_v3_4.bid_size_2.display = function(value)
  return "Bid Size 2: "..value
end

-- Dissect: Bid Size 2
nasdaq_phlxoptions_topofmarket_itch_v3_4.bid_size_2.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v3_4.bid_size_2.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.bid_size_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.bid_size_2, range, value, display)

  return offset + length, value
end

-- Bid Size 4
nasdaq_phlxoptions_topofmarket_itch_v3_4.bid_size_4 = {}

-- Size: Bid Size 4
nasdaq_phlxoptions_topofmarket_itch_v3_4.bid_size_4.size = 4

-- Display: Bid Size 4
nasdaq_phlxoptions_topofmarket_itch_v3_4.bid_size_4.display = function(value)
  return "Bid Size 4: "..value
end

-- Dissect: Bid Size 4
nasdaq_phlxoptions_topofmarket_itch_v3_4.bid_size_4.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v3_4.bid_size_4.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.bid_size_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.bid_size_4, range, value, display)

  return offset + length, value
end

-- Client Packet Type
nasdaq_phlxoptions_topofmarket_itch_v3_4.client_packet_type = {}

-- Size: Client Packet Type
nasdaq_phlxoptions_topofmarket_itch_v3_4.client_packet_type.size = 1

-- Display: Client Packet Type
nasdaq_phlxoptions_topofmarket_itch_v3_4.client_packet_type.display = function(value)
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
nasdaq_phlxoptions_topofmarket_itch_v3_4.client_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v3_4.client_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.client_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.client_packet_type, range, value, display)

  return offset + length, value
end

-- Cross Id
nasdaq_phlxoptions_topofmarket_itch_v3_4.cross_id = {}

-- Size: Cross Id
nasdaq_phlxoptions_topofmarket_itch_v3_4.cross_id.size = 4

-- Display: Cross Id
nasdaq_phlxoptions_topofmarket_itch_v3_4.cross_id.display = function(value)
  return "Cross Id: "..value
end

-- Dissect: Cross Id
nasdaq_phlxoptions_topofmarket_itch_v3_4.cross_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v3_4.cross_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.cross_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.cross_id, range, value, display)

  return offset + length, value
end

-- Current Trading State
nasdaq_phlxoptions_topofmarket_itch_v3_4.current_trading_state = {}

-- Size: Current Trading State
nasdaq_phlxoptions_topofmarket_itch_v3_4.current_trading_state.size = 1

-- Display: Current Trading State
nasdaq_phlxoptions_topofmarket_itch_v3_4.current_trading_state.display = function(value)
  if value == "H" then
    return "Current Trading State: Halt In Effect (H)"
  end
  if value == "T" then
    return "Current Trading State: Trading Resumed (T)"
  end

  return "Current Trading State: Unknown("..value..")"
end

-- Dissect: Current Trading State
nasdaq_phlxoptions_topofmarket_itch_v3_4.current_trading_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v3_4.current_trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.current_trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.current_trading_state, range, value, display)

  return offset + length, value
end

-- Debug Text
nasdaq_phlxoptions_topofmarket_itch_v3_4.debug_text = {}

-- Display: Debug Text
nasdaq_phlxoptions_topofmarket_itch_v3_4.debug_text.display = function(value)
  return "Debug Text: "..value
end

-- Dissect runtime sized field: Debug Text
nasdaq_phlxoptions_topofmarket_itch_v3_4.debug_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.debug_text.display(value, packet, parent, size)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.debug_text, range, value, display)

  return offset + size, value
end

-- End Of Replay Sequence Number
nasdaq_phlxoptions_topofmarket_itch_v3_4.end_of_replay_sequence_number = {}

-- Size: End Of Replay Sequence Number
nasdaq_phlxoptions_topofmarket_itch_v3_4.end_of_replay_sequence_number.size = 20

-- Display: End Of Replay Sequence Number
nasdaq_phlxoptions_topofmarket_itch_v3_4.end_of_replay_sequence_number.display = function(value)
  return "End Of Replay Sequence Number: "..value
end

-- Dissect: End Of Replay Sequence Number
nasdaq_phlxoptions_topofmarket_itch_v3_4.end_of_replay_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v3_4.end_of_replay_sequence_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.end_of_replay_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.end_of_replay_sequence_number, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_phlxoptions_topofmarket_itch_v3_4.event_code = {}

-- Size: Event Code
nasdaq_phlxoptions_topofmarket_itch_v3_4.event_code.size = 1

-- Display: Event Code
nasdaq_phlxoptions_topofmarket_itch_v3_4.event_code.display = function(value)
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
nasdaq_phlxoptions_topofmarket_itch_v3_4.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v3_4.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.event_code, range, value, display)

  return offset + length, value
end

-- Expiration Day
nasdaq_phlxoptions_topofmarket_itch_v3_4.expiration_day = {}

-- Size: Expiration Day
nasdaq_phlxoptions_topofmarket_itch_v3_4.expiration_day.size = 1

-- Display: Expiration Day
nasdaq_phlxoptions_topofmarket_itch_v3_4.expiration_day.display = function(value)
  return "Expiration Day: "..value
end

-- Dissect: Expiration Day
nasdaq_phlxoptions_topofmarket_itch_v3_4.expiration_day.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v3_4.expiration_day.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.expiration_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.expiration_day, range, value, display)

  return offset + length, value
end

-- Expiration Month
nasdaq_phlxoptions_topofmarket_itch_v3_4.expiration_month = {}

-- Size: Expiration Month
nasdaq_phlxoptions_topofmarket_itch_v3_4.expiration_month.size = 1

-- Display: Expiration Month
nasdaq_phlxoptions_topofmarket_itch_v3_4.expiration_month.display = function(value)
  return "Expiration Month: "..value
end

-- Dissect: Expiration Month
nasdaq_phlxoptions_topofmarket_itch_v3_4.expiration_month.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v3_4.expiration_month.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.expiration_month.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.expiration_month, range, value, display)

  return offset + length, value
end

-- Expiration Year
nasdaq_phlxoptions_topofmarket_itch_v3_4.expiration_year = {}

-- Size: Expiration Year
nasdaq_phlxoptions_topofmarket_itch_v3_4.expiration_year.size = 1

-- Display: Expiration Year
nasdaq_phlxoptions_topofmarket_itch_v3_4.expiration_year.display = function(value)
  return "Expiration Year: "..value
end

-- Dissect: Expiration Year
nasdaq_phlxoptions_topofmarket_itch_v3_4.expiration_year.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v3_4.expiration_year.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.expiration_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.expiration_year, range, value, display)

  return offset + length, value
end

-- Message Count
nasdaq_phlxoptions_topofmarket_itch_v3_4.message_count = {}

-- Size: Message Count
nasdaq_phlxoptions_topofmarket_itch_v3_4.message_count.size = 2

-- Display: Message Count
nasdaq_phlxoptions_topofmarket_itch_v3_4.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_phlxoptions_topofmarket_itch_v3_4.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v3_4.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
nasdaq_phlxoptions_topofmarket_itch_v3_4.message_length = {}

-- Size: Message Length
nasdaq_phlxoptions_topofmarket_itch_v3_4.message_length.size = 2

-- Display: Message Length
nasdaq_phlxoptions_topofmarket_itch_v3_4.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_phlxoptions_topofmarket_itch_v3_4.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v3_4.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
nasdaq_phlxoptions_topofmarket_itch_v3_4.message_type = {}

-- Size: Message Type
nasdaq_phlxoptions_topofmarket_itch_v3_4.message_type.size = 1

-- Display: Message Type
nasdaq_phlxoptions_topofmarket_itch_v3_4.message_type.display = function(value)
  if value == "T" then
    return "Message Type: Timestamp Message (T)"
  end
  if value == "S" then
    return "Message Type: System Event Message (S)"
  end
  if value == "D" then
    return "Message Type: Options Directory Message (D)"
  end
  if value == "H" then
    return "Message Type: Trading Action Message (H)"
  end
  if value == "O" then
    return "Message Type: Security Open Closed Message (O)"
  end
  if value == "q" then
    return "Message Type: Short Best Bid And Ask Update Message (q)"
  end
  if value == "Q" then
    return "Message Type: Long Best Bid And Ask Update Message (Q)"
  end
  if value == "a" then
    return "Message Type: Short Best Ask Update Message (a)"
  end
  if value == "b" then
    return "Message Type: Short Best Bid Update Message (b)"
  end
  if value == "A" then
    return "Message Type: Long Best Ask Update Message (A)"
  end
  if value == "B" then
    return "Message Type: Long Best Bid Update Message (B)"
  end
  if value == "R" then
    return "Message Type: Trade Report Message (R)"
  end
  if value == "X" then
    return "Message Type: Broken Trade Report Message (X)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_phlxoptions_topofmarket_itch_v3_4.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v3_4.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.message_type, range, value, display)

  return offset + length, value
end

-- Mpv
nasdaq_phlxoptions_topofmarket_itch_v3_4.mpv = {}

-- Size: Mpv
nasdaq_phlxoptions_topofmarket_itch_v3_4.mpv.size = 1

-- Display: Mpv
nasdaq_phlxoptions_topofmarket_itch_v3_4.mpv.display = function(value)
  if value == "E" then
    return "Mpv: Penny Everywhere (E)"
  end
  if value == "S" then
    return "Mpv: Scaled (S)"
  end
  if value == "P" then
    return "Mpv: Penny Pilot (P)"
  end

  return "Mpv: Unknown("..value..")"
end

-- Dissect: Mpv
nasdaq_phlxoptions_topofmarket_itch_v3_4.mpv.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v3_4.mpv.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.mpv.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.mpv, range, value, display)

  return offset + length, value
end

-- Nanoseconds
nasdaq_phlxoptions_topofmarket_itch_v3_4.nanoseconds = {}

-- Size: Nanoseconds
nasdaq_phlxoptions_topofmarket_itch_v3_4.nanoseconds.size = 4

-- Display: Nanoseconds
nasdaq_phlxoptions_topofmarket_itch_v3_4.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
nasdaq_phlxoptions_topofmarket_itch_v3_4.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v3_4.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Open State
nasdaq_phlxoptions_topofmarket_itch_v3_4.open_state = {}

-- Size: Open State
nasdaq_phlxoptions_topofmarket_itch_v3_4.open_state.size = 1

-- Display: Open State
nasdaq_phlxoptions_topofmarket_itch_v3_4.open_state.display = function(value)
  if value == "Y" then
    return "Open State: Open For Auto Execution (Y)"
  end
  if value == "N" then
    return "Open State: Closed For Auto Execution (N)"
  end

  return "Open State: Unknown("..value..")"
end

-- Dissect: Open State
nasdaq_phlxoptions_topofmarket_itch_v3_4.open_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v3_4.open_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.open_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.open_state, range, value, display)

  return offset + length, value
end

-- Option Closing Type
nasdaq_phlxoptions_topofmarket_itch_v3_4.option_closing_type = {}

-- Size: Option Closing Type
nasdaq_phlxoptions_topofmarket_itch_v3_4.option_closing_type.size = 1

-- Display: Option Closing Type
nasdaq_phlxoptions_topofmarket_itch_v3_4.option_closing_type.display = function(value)
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
nasdaq_phlxoptions_topofmarket_itch_v3_4.option_closing_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v3_4.option_closing_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.option_closing_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.option_closing_type, range, value, display)

  return offset + length, value
end

-- Option Id
nasdaq_phlxoptions_topofmarket_itch_v3_4.option_id = {}

-- Size: Option Id
nasdaq_phlxoptions_topofmarket_itch_v3_4.option_id.size = 4

-- Display: Option Id
nasdaq_phlxoptions_topofmarket_itch_v3_4.option_id.display = function(value)
  return "Option Id: "..value
end

-- Dissect: Option Id
nasdaq_phlxoptions_topofmarket_itch_v3_4.option_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v3_4.option_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.option_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.option_id, range, value, display)

  return offset + length, value
end

-- Option Type
nasdaq_phlxoptions_topofmarket_itch_v3_4.option_type = {}

-- Size: Option Type
nasdaq_phlxoptions_topofmarket_itch_v3_4.option_type.size = 1

-- Display: Option Type
nasdaq_phlxoptions_topofmarket_itch_v3_4.option_type.display = function(value)
  if value == "C" then
    return "Option Type: Call (C)"
  end
  if value == "P" then
    return "Option Type: Put (P)"
  end

  return "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
nasdaq_phlxoptions_topofmarket_itch_v3_4.option_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v3_4.option_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.option_type, range, value, display)

  return offset + length, value
end

-- Original Cross Id
nasdaq_phlxoptions_topofmarket_itch_v3_4.original_cross_id = {}

-- Size: Original Cross Id
nasdaq_phlxoptions_topofmarket_itch_v3_4.original_cross_id.size = 4

-- Display: Original Cross Id
nasdaq_phlxoptions_topofmarket_itch_v3_4.original_cross_id.display = function(value)
  return "Original Cross Id: "..value
end

-- Dissect: Original Cross Id
nasdaq_phlxoptions_topofmarket_itch_v3_4.original_cross_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v3_4.original_cross_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.original_cross_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.original_cross_id, range, value, display)

  return offset + length, value
end

-- Original Price
nasdaq_phlxoptions_topofmarket_itch_v3_4.original_price = {}

-- Size: Original Price
nasdaq_phlxoptions_topofmarket_itch_v3_4.original_price.size = 4

-- Display: Original Price
nasdaq_phlxoptions_topofmarket_itch_v3_4.original_price.display = function(value)
  return "Original Price: "..value
end

-- Translate: Original Price
nasdaq_phlxoptions_topofmarket_itch_v3_4.original_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Original Price
nasdaq_phlxoptions_topofmarket_itch_v3_4.original_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v3_4.original_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nasdaq_phlxoptions_topofmarket_itch_v3_4.original_price.translate(raw)
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.original_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.original_price, range, value, display)

  return offset + length, value
end

-- Original Volume
nasdaq_phlxoptions_topofmarket_itch_v3_4.original_volume = {}

-- Size: Original Volume
nasdaq_phlxoptions_topofmarket_itch_v3_4.original_volume.size = 4

-- Display: Original Volume
nasdaq_phlxoptions_topofmarket_itch_v3_4.original_volume.display = function(value)
  return "Original Volume: "..value
end

-- Dissect: Original Volume
nasdaq_phlxoptions_topofmarket_itch_v3_4.original_volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v3_4.original_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.original_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.original_volume, range, value, display)

  return offset + length, value
end

-- Packet Length
nasdaq_phlxoptions_topofmarket_itch_v3_4.packet_length = {}

-- Size: Packet Length
nasdaq_phlxoptions_topofmarket_itch_v3_4.packet_length.size = 2

-- Display: Packet Length
nasdaq_phlxoptions_topofmarket_itch_v3_4.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
nasdaq_phlxoptions_topofmarket_itch_v3_4.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v3_4.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Password
nasdaq_phlxoptions_topofmarket_itch_v3_4.password = {}

-- Size: Password
nasdaq_phlxoptions_topofmarket_itch_v3_4.password.size = 10

-- Display: Password
nasdaq_phlxoptions_topofmarket_itch_v3_4.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
nasdaq_phlxoptions_topofmarket_itch_v3_4.password.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v3_4.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.password, range, value, display)

  return offset + length, value
end

-- Price 2
nasdaq_phlxoptions_topofmarket_itch_v3_4.price_2 = {}

-- Size: Price 2
nasdaq_phlxoptions_topofmarket_itch_v3_4.price_2.size = 2

-- Display: Price 2
nasdaq_phlxoptions_topofmarket_itch_v3_4.price_2.display = function(value)
  return "Price 2: "..value
end

-- Translate: Price 2
nasdaq_phlxoptions_topofmarket_itch_v3_4.price_2.translate = function(raw)
  return raw/100
end

-- Dissect: Price 2
nasdaq_phlxoptions_topofmarket_itch_v3_4.price_2.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v3_4.price_2.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_phlxoptions_topofmarket_itch_v3_4.price_2.translate(raw)
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.price_2, range, value, display)

  return offset + length, value
end

-- Price 4
nasdaq_phlxoptions_topofmarket_itch_v3_4.price_4 = {}

-- Size: Price 4
nasdaq_phlxoptions_topofmarket_itch_v3_4.price_4.size = 4

-- Display: Price 4
nasdaq_phlxoptions_topofmarket_itch_v3_4.price_4.display = function(value)
  return "Price 4: "..value
end

-- Translate: Price 4
nasdaq_phlxoptions_topofmarket_itch_v3_4.price_4.translate = function(raw)
  return raw/10000
end

-- Dissect: Price 4
nasdaq_phlxoptions_topofmarket_itch_v3_4.price_4.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v3_4.price_4.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nasdaq_phlxoptions_topofmarket_itch_v3_4.price_4.translate(raw)
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.price_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.price_4, range, value, display)

  return offset + length, value
end

-- Quote Condition
nasdaq_phlxoptions_topofmarket_itch_v3_4.quote_condition = {}

-- Size: Quote Condition
nasdaq_phlxoptions_topofmarket_itch_v3_4.quote_condition.size = 1

-- Display: Quote Condition
nasdaq_phlxoptions_topofmarket_itch_v3_4.quote_condition.display = function(value)
  if value == " " then
    return "Quote Condition: Regular Quoteautox Eligible (<whitespace>)"
  end
  if value == "F" then
    return "Quote Condition: Non Firm Quote (F)"
  end
  if value == "R" then
    return "Quote Condition: Rotational Quote (R)"
  end
  if value == "X" then
    return "Quote Condition: Bid Side Firm (X)"
  end
  if value == "Y" then
    return "Quote Condition: Ask Side Firm (Y)"
  end

  return "Quote Condition: Unknown("..value..")"
end

-- Dissect: Quote Condition
nasdaq_phlxoptions_topofmarket_itch_v3_4.quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v3_4.quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.quote_condition, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
nasdaq_phlxoptions_topofmarket_itch_v3_4.reject_reason_code = {}

-- Size: Reject Reason Code
nasdaq_phlxoptions_topofmarket_itch_v3_4.reject_reason_code.size = 1

-- Display: Reject Reason Code
nasdaq_phlxoptions_topofmarket_itch_v3_4.reject_reason_code.display = function(value)
  if value == "A" then
    return "Reject Reason Code: Not Authorized (A)"
  end
  if value == "S" then
    return "Reject Reason Code: Session Not Available (S)"
  end

  return "Reject Reason Code: Unknown("..value..")"
end

-- Dissect: Reject Reason Code
nasdaq_phlxoptions_topofmarket_itch_v3_4.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v3_4.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
nasdaq_phlxoptions_topofmarket_itch_v3_4.requested_sequence_number = {}

-- Size: Requested Sequence Number
nasdaq_phlxoptions_topofmarket_itch_v3_4.requested_sequence_number.size = 20

-- Display: Requested Sequence Number
nasdaq_phlxoptions_topofmarket_itch_v3_4.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
nasdaq_phlxoptions_topofmarket_itch_v3_4.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v3_4.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
nasdaq_phlxoptions_topofmarket_itch_v3_4.requested_session = {}

-- Size: Requested Session
nasdaq_phlxoptions_topofmarket_itch_v3_4.requested_session.size = 10

-- Display: Requested Session
nasdaq_phlxoptions_topofmarket_itch_v3_4.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
nasdaq_phlxoptions_topofmarket_itch_v3_4.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v3_4.requested_session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Second
nasdaq_phlxoptions_topofmarket_itch_v3_4.second = {}

-- Size: Second
nasdaq_phlxoptions_topofmarket_itch_v3_4.second.size = 4

-- Store: Second
nasdaq_phlxoptions_topofmarket_itch_v3_4.second.current = nil

-- Generated: Second
nasdaq_phlxoptions_topofmarket_itch_v3_4.second.generated = function(value, range, packet, parent)
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.second.display(value)
  local second = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.second, range, value, display)
  second:set_generated()
end

-- Display: Second
nasdaq_phlxoptions_topofmarket_itch_v3_4.second.display = function(value)
  return "Second: "..value
end

-- Dissect: Second
nasdaq_phlxoptions_topofmarket_itch_v3_4.second.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v3_4.second.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.second.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.second, range, value, display)

  return offset + length, value
end

-- Security Symbol
nasdaq_phlxoptions_topofmarket_itch_v3_4.security_symbol = {}

-- Size: Security Symbol
nasdaq_phlxoptions_topofmarket_itch_v3_4.security_symbol.size = 6

-- Display: Security Symbol
nasdaq_phlxoptions_topofmarket_itch_v3_4.security_symbol.display = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
nasdaq_phlxoptions_topofmarket_itch_v3_4.security_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v3_4.security_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.security_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_phlxoptions_topofmarket_itch_v3_4.sequence_number = {}

-- Size: Sequence Number
nasdaq_phlxoptions_topofmarket_itch_v3_4.sequence_number.size = 8

-- Display: Sequence Number
nasdaq_phlxoptions_topofmarket_itch_v3_4.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_phlxoptions_topofmarket_itch_v3_4.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v3_4.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
nasdaq_phlxoptions_topofmarket_itch_v3_4.sequenced_message_type = {}

-- Size: Sequenced Message Type
nasdaq_phlxoptions_topofmarket_itch_v3_4.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
nasdaq_phlxoptions_topofmarket_itch_v3_4.sequenced_message_type.display = function(value)
  if value == "T" then
    return "Sequenced Message Type: Timestamp Message (T)"
  end
  if value == "S" then
    return "Sequenced Message Type: System Event Message (S)"
  end
  if value == "D" then
    return "Sequenced Message Type: Options Directory Message (D)"
  end
  if value == "H" then
    return "Sequenced Message Type: Trading Action Message (H)"
  end
  if value == "O" then
    return "Sequenced Message Type: Security Open Closed Message (O)"
  end
  if value == "q" then
    return "Sequenced Message Type: Short Best Bid And Ask Update Message (q)"
  end
  if value == "Q" then
    return "Sequenced Message Type: Long Best Bid And Ask Update Message (Q)"
  end
  if value == "a" then
    return "Sequenced Message Type: Short Best Ask Update Message (a)"
  end
  if value == "b" then
    return "Sequenced Message Type: Short Best Bid Update Message (b)"
  end
  if value == "A" then
    return "Sequenced Message Type: Long Best Ask Update Message (A)"
  end
  if value == "B" then
    return "Sequenced Message Type: Long Best Bid Update Message (B)"
  end
  if value == "R" then
    return "Sequenced Message Type: Trade Report Message (R)"
  end
  if value == "X" then
    return "Sequenced Message Type: Broken Trade Report Message (X)"
  end
  if value == "M" then
    return "Sequenced Message Type: End Of Replay Sequence Message (M)"
  end

  return "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
nasdaq_phlxoptions_topofmarket_itch_v3_4.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v3_4.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Server Packet Type
nasdaq_phlxoptions_topofmarket_itch_v3_4.server_packet_type = {}

-- Size: Server Packet Type
nasdaq_phlxoptions_topofmarket_itch_v3_4.server_packet_type.size = 1

-- Display: Server Packet Type
nasdaq_phlxoptions_topofmarket_itch_v3_4.server_packet_type.display = function(value)
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
nasdaq_phlxoptions_topofmarket_itch_v3_4.server_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v3_4.server_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.server_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.server_packet_type, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_phlxoptions_topofmarket_itch_v3_4.session = {}

-- Size: Session
nasdaq_phlxoptions_topofmarket_itch_v3_4.session.size = 10

-- Display: Session
nasdaq_phlxoptions_topofmarket_itch_v3_4.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
nasdaq_phlxoptions_topofmarket_itch_v3_4.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v3_4.session.size
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

  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.session, range, value, display)

  return offset + length, value
end

-- Size 2
nasdaq_phlxoptions_topofmarket_itch_v3_4.size_2 = {}

-- Size: Size 2
nasdaq_phlxoptions_topofmarket_itch_v3_4.size_2.size = 2

-- Display: Size 2
nasdaq_phlxoptions_topofmarket_itch_v3_4.size_2.display = function(value)
  return "Size 2: "..value
end

-- Dissect: Size 2
nasdaq_phlxoptions_topofmarket_itch_v3_4.size_2.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v3_4.size_2.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.size_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.size_2, range, value, display)

  return offset + length, value
end

-- Size 4
nasdaq_phlxoptions_topofmarket_itch_v3_4.size_4 = {}

-- Size: Size 4
nasdaq_phlxoptions_topofmarket_itch_v3_4.size_4.size = 4

-- Display: Size 4
nasdaq_phlxoptions_topofmarket_itch_v3_4.size_4.display = function(value)
  return "Size 4: "..value
end

-- Dissect: Size 4
nasdaq_phlxoptions_topofmarket_itch_v3_4.size_4.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v3_4.size_4.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.size_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.size_4, range, value, display)

  return offset + length, value
end

-- Source
nasdaq_phlxoptions_topofmarket_itch_v3_4.source = {}

-- Size: Source
nasdaq_phlxoptions_topofmarket_itch_v3_4.source.size = 1

-- Display: Source
nasdaq_phlxoptions_topofmarket_itch_v3_4.source.display = function(value)
  return "Source: "..value
end

-- Dissect: Source
nasdaq_phlxoptions_topofmarket_itch_v3_4.source.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v3_4.source.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.source.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.source, range, value, display)

  return offset + length, value
end

-- Strike Price
nasdaq_phlxoptions_topofmarket_itch_v3_4.strike_price = {}

-- Size: Strike Price
nasdaq_phlxoptions_topofmarket_itch_v3_4.strike_price.size = 4

-- Display: Strike Price
nasdaq_phlxoptions_topofmarket_itch_v3_4.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Translate: Strike Price
nasdaq_phlxoptions_topofmarket_itch_v3_4.strike_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Strike Price
nasdaq_phlxoptions_topofmarket_itch_v3_4.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v3_4.strike_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nasdaq_phlxoptions_topofmarket_itch_v3_4.strike_price.translate(raw)
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Subversion
nasdaq_phlxoptions_topofmarket_itch_v3_4.subversion = {}

-- Size: Subversion
nasdaq_phlxoptions_topofmarket_itch_v3_4.subversion.size = 1

-- Display: Subversion
nasdaq_phlxoptions_topofmarket_itch_v3_4.subversion.display = function(value)
  return "Subversion: "..value
end

-- Dissect: Subversion
nasdaq_phlxoptions_topofmarket_itch_v3_4.subversion.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v3_4.subversion.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.subversion.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.subversion, range, value, display)

  return offset + length, value
end

-- Tradable
nasdaq_phlxoptions_topofmarket_itch_v3_4.tradable = {}

-- Size: Tradable
nasdaq_phlxoptions_topofmarket_itch_v3_4.tradable.size = 1

-- Display: Tradable
nasdaq_phlxoptions_topofmarket_itch_v3_4.tradable.display = function(value)
  if value == "Y" then
    return "Tradable: Tradable (Y)"
  end
  if value == "N" then
    return "Tradable: Not Tradable (N)"
  end

  return "Tradable: Unknown("..value..")"
end

-- Dissect: Tradable
nasdaq_phlxoptions_topofmarket_itch_v3_4.tradable.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v3_4.tradable.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.tradable.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.tradable, range, value, display)

  return offset + length, value
end

-- Trade Condition
nasdaq_phlxoptions_topofmarket_itch_v3_4.trade_condition = {}

-- Size: Trade Condition
nasdaq_phlxoptions_topofmarket_itch_v3_4.trade_condition.size = 1

-- Display: Trade Condition
nasdaq_phlxoptions_topofmarket_itch_v3_4.trade_condition.display = function(value)
  return "Trade Condition: "..value
end

-- Dissect: Trade Condition
nasdaq_phlxoptions_topofmarket_itch_v3_4.trade_condition.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v3_4.trade_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.trade_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
nasdaq_phlxoptions_topofmarket_itch_v3_4.underlying_symbol = {}

-- Size: Underlying Symbol
nasdaq_phlxoptions_topofmarket_itch_v3_4.underlying_symbol.size = 13

-- Display: Underlying Symbol
nasdaq_phlxoptions_topofmarket_itch_v3_4.underlying_symbol.display = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
nasdaq_phlxoptions_topofmarket_itch_v3_4.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v3_4.underlying_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Unsequenced Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.unsequenced_message = {}

-- Display: Unsequenced Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.unsequenced_message.display = function(value)
  return "Unsequenced Message: "..value
end

-- Dissect runtime sized field: Unsequenced Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.unsequenced_message.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.unsequenced_message.display(value, packet, parent, size)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.unsequenced_message, range, value, display)

  return offset + size, value
end

-- Unsequenced Message Type
nasdaq_phlxoptions_topofmarket_itch_v3_4.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
nasdaq_phlxoptions_topofmarket_itch_v3_4.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
nasdaq_phlxoptions_topofmarket_itch_v3_4.unsequenced_message_type.display = function(value)
  return "Unsequenced Message Type: "..value
end

-- Dissect: Unsequenced Message Type
nasdaq_phlxoptions_topofmarket_itch_v3_4.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v3_4.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Username
nasdaq_phlxoptions_topofmarket_itch_v3_4.username = {}

-- Size: Username
nasdaq_phlxoptions_topofmarket_itch_v3_4.username.size = 6

-- Display: Username
nasdaq_phlxoptions_topofmarket_itch_v3_4.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
nasdaq_phlxoptions_topofmarket_itch_v3_4.username.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v3_4.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.username, range, value, display)

  return offset + length, value
end

-- Version
nasdaq_phlxoptions_topofmarket_itch_v3_4.version = {}

-- Size: Version
nasdaq_phlxoptions_topofmarket_itch_v3_4.version.size = 1

-- Display: Version
nasdaq_phlxoptions_topofmarket_itch_v3_4.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
nasdaq_phlxoptions_topofmarket_itch_v3_4.version.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v3_4.version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.version, range, value, display)

  return offset + length, value
end

-- Volume
nasdaq_phlxoptions_topofmarket_itch_v3_4.volume = {}

-- Size: Volume
nasdaq_phlxoptions_topofmarket_itch_v3_4.volume.size = 4

-- Display: Volume
nasdaq_phlxoptions_topofmarket_itch_v3_4.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
nasdaq_phlxoptions_topofmarket_itch_v3_4.volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v3_4.volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.volume, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_phlxoptions_topofmarket_itch_v3_4.timestamp = {}

-- Translate: Timestamp
nasdaq_phlxoptions_topofmarket_itch_v3_4.timestamp.translate = function(nanoseconds, stored_second)
  return UInt64.new(stored_second * 1000000000 + nanoseconds)
end

-- Display: Timestamp
nasdaq_phlxoptions_topofmarket_itch_v3_4.timestamp.display = function(nanoseconds, stored_second, packet)
  -- Raw display mode
  if nasdaq_phlxoptions_topofmarket_itch_v3_4.timestamp_format == 0 then
    return "Timestamp: "..(stored_second * 1000000000 + nanoseconds)
  end

  -- Full datetime mode (calculate from capture date + UTC offset)
  if nasdaq_phlxoptions_topofmarket_itch_v3_4.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = nasdaq_phlxoptions_topofmarket_itch_v3_4.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400
    local full_seconds = local_midnight + stored_second

    return "Timestamp: "..os.date("!%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", nanoseconds)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("!%H:%M:%S.", stored_second)..string.format("%09d", nanoseconds)
end

-- Composite: Timestamp
nasdaq_phlxoptions_topofmarket_itch_v3_4.timestamp.composite = function(buffer, offset, stored_second, packet, parent)
  local length = nasdaq_phlxoptions_topofmarket_itch_v3_4.nanoseconds.size
  local range = buffer(offset, length)
  local nanoseconds = range:uint()
  local value = nasdaq_phlxoptions_topofmarket_itch_v3_4.timestamp.translate(nanoseconds, stored_second)
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.timestamp.display(nanoseconds, stored_second, packet)
  parent = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.timestamp, range, value, display)

  nasdaq_phlxoptions_topofmarket_itch_v3_4.second.generated(stored_second, range, packet, parent)

  display = nasdaq_phlxoptions_topofmarket_itch_v3_4.nanoseconds.display(nanoseconds)
  parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.nanoseconds, range, nanoseconds, display)

  return offset + length, value
end

-- Dissect: Timestamp
nasdaq_phlxoptions_topofmarket_itch_v3_4.timestamp.dissect = function(buffer, offset, packet, parent)
  if nasdaq_phlxoptions_topofmarket_itch_v3_4.format_timestamp then
    local stored_second = nasdaq_phlxoptions_topofmarket_itch_v3_4.second.current

    if stored_second ~= nil then
      return nasdaq_phlxoptions_topofmarket_itch_v3_4.timestamp.composite(buffer, offset, stored_second, packet, parent)
    end
  end

  return nasdaq_phlxoptions_topofmarket_itch_v3_4.nanoseconds.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Nasdaq PhlxOptions TopOfMarket Itch 3.4
-----------------------------------------------------------------------

-- Broken Trade Report Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.broken_trade_report_message = {}

-- Size: Broken Trade Report Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.broken_trade_report_message.size =
  nasdaq_phlxoptions_topofmarket_itch_v3_4.nanoseconds.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.option_id.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.original_cross_id.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.original_price.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.original_volume.size

-- Display: Broken Trade Report Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.broken_trade_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broken Trade Report Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.broken_trade_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_topofmarket_itch_v3_4.timestamp.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_phlxoptions_topofmarket_itch_v3_4.option_id.dissect(buffer, index, packet, parent)

  -- Original Cross Id: Integer
  index, original_cross_id = nasdaq_phlxoptions_topofmarket_itch_v3_4.original_cross_id.dissect(buffer, index, packet, parent)

  -- Original Price: Integer
  index, original_price = nasdaq_phlxoptions_topofmarket_itch_v3_4.original_price.dissect(buffer, index, packet, parent)

  -- Original Volume: Integer
  index, original_volume = nasdaq_phlxoptions_topofmarket_itch_v3_4.original_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Broken Trade Report Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.broken_trade_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.broken_trade_report_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_topofmarket_itch_v3_4.broken_trade_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.broken_trade_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.broken_trade_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Report Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.trade_report_message = {}

-- Size: Trade Report Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.trade_report_message.size =
  nasdaq_phlxoptions_topofmarket_itch_v3_4.nanoseconds.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.option_id.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.cross_id.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.trade_condition.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.price_4.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.volume.size

-- Display: Trade Report Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.trade_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Report Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.trade_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_topofmarket_itch_v3_4.timestamp.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_phlxoptions_topofmarket_itch_v3_4.option_id.dissect(buffer, index, packet, parent)

  -- Cross Id: Integer
  index, cross_id = nasdaq_phlxoptions_topofmarket_itch_v3_4.cross_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alpha
  index, trade_condition = nasdaq_phlxoptions_topofmarket_itch_v3_4.trade_condition.dissect(buffer, index, packet, parent)

  -- Price 4: Integer
  index, price_4 = nasdaq_phlxoptions_topofmarket_itch_v3_4.price_4.dissect(buffer, index, packet, parent)

  -- Volume: Integer
  index, volume = nasdaq_phlxoptions_topofmarket_itch_v3_4.volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Report Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.trade_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.trade_report_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_topofmarket_itch_v3_4.trade_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.trade_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.trade_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Long Best Bid Update Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.long_best_bid_update_message = {}

-- Size: Long Best Bid Update Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.long_best_bid_update_message.size =
  nasdaq_phlxoptions_topofmarket_itch_v3_4.nanoseconds.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.option_id.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.quote_condition.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.price_4.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.size_4.size

-- Display: Long Best Bid Update Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.long_best_bid_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Best Bid Update Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.long_best_bid_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_topofmarket_itch_v3_4.timestamp.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_phlxoptions_topofmarket_itch_v3_4.option_id.dissect(buffer, index, packet, parent)

  -- Quote Condition: Alpha
  index, quote_condition = nasdaq_phlxoptions_topofmarket_itch_v3_4.quote_condition.dissect(buffer, index, packet, parent)

  -- Price 4: Integer
  index, price_4 = nasdaq_phlxoptions_topofmarket_itch_v3_4.price_4.dissect(buffer, index, packet, parent)

  -- Size 4: Integer
  index, size_4 = nasdaq_phlxoptions_topofmarket_itch_v3_4.size_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Best Bid Update Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.long_best_bid_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.long_best_bid_update_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_topofmarket_itch_v3_4.long_best_bid_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.long_best_bid_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.long_best_bid_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Long Best Ask Update Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.long_best_ask_update_message = {}

-- Size: Long Best Ask Update Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.long_best_ask_update_message.size =
  nasdaq_phlxoptions_topofmarket_itch_v3_4.nanoseconds.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.option_id.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.quote_condition.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.price_4.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.size_4.size

-- Display: Long Best Ask Update Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.long_best_ask_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Best Ask Update Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.long_best_ask_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_topofmarket_itch_v3_4.timestamp.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_phlxoptions_topofmarket_itch_v3_4.option_id.dissect(buffer, index, packet, parent)

  -- Quote Condition: Alpha
  index, quote_condition = nasdaq_phlxoptions_topofmarket_itch_v3_4.quote_condition.dissect(buffer, index, packet, parent)

  -- Price 4: Integer
  index, price_4 = nasdaq_phlxoptions_topofmarket_itch_v3_4.price_4.dissect(buffer, index, packet, parent)

  -- Size 4: Integer
  index, size_4 = nasdaq_phlxoptions_topofmarket_itch_v3_4.size_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Best Ask Update Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.long_best_ask_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.long_best_ask_update_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_topofmarket_itch_v3_4.long_best_ask_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.long_best_ask_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.long_best_ask_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Short Best Bid Update Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.short_best_bid_update_message = {}

-- Size: Short Best Bid Update Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.short_best_bid_update_message.size =
  nasdaq_phlxoptions_topofmarket_itch_v3_4.nanoseconds.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.option_id.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.quote_condition.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.price_2.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.size_2.size

-- Display: Short Best Bid Update Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.short_best_bid_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Best Bid Update Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.short_best_bid_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_topofmarket_itch_v3_4.timestamp.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_phlxoptions_topofmarket_itch_v3_4.option_id.dissect(buffer, index, packet, parent)

  -- Quote Condition: Alpha
  index, quote_condition = nasdaq_phlxoptions_topofmarket_itch_v3_4.quote_condition.dissect(buffer, index, packet, parent)

  -- Price 2: Integer
  index, price_2 = nasdaq_phlxoptions_topofmarket_itch_v3_4.price_2.dissect(buffer, index, packet, parent)

  -- Size 2: Integer
  index, size_2 = nasdaq_phlxoptions_topofmarket_itch_v3_4.size_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Best Bid Update Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.short_best_bid_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.short_best_bid_update_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_topofmarket_itch_v3_4.short_best_bid_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.short_best_bid_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.short_best_bid_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Short Best Ask Update Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.short_best_ask_update_message = {}

-- Size: Short Best Ask Update Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.short_best_ask_update_message.size =
  nasdaq_phlxoptions_topofmarket_itch_v3_4.nanoseconds.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.option_id.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.quote_condition.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.price_2.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.size_2.size

-- Display: Short Best Ask Update Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.short_best_ask_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Best Ask Update Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.short_best_ask_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_topofmarket_itch_v3_4.timestamp.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_phlxoptions_topofmarket_itch_v3_4.option_id.dissect(buffer, index, packet, parent)

  -- Quote Condition: Alpha
  index, quote_condition = nasdaq_phlxoptions_topofmarket_itch_v3_4.quote_condition.dissect(buffer, index, packet, parent)

  -- Price 2: Integer
  index, price_2 = nasdaq_phlxoptions_topofmarket_itch_v3_4.price_2.dissect(buffer, index, packet, parent)

  -- Size 2: Integer
  index, size_2 = nasdaq_phlxoptions_topofmarket_itch_v3_4.size_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Best Ask Update Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.short_best_ask_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.short_best_ask_update_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_topofmarket_itch_v3_4.short_best_ask_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.short_best_ask_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.short_best_ask_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Long Best Bid And Ask Update Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.long_best_bid_and_ask_update_message = {}

-- Size: Long Best Bid And Ask Update Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.long_best_bid_and_ask_update_message.size =
  nasdaq_phlxoptions_topofmarket_itch_v3_4.nanoseconds.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.option_id.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.quote_condition.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.bid_price_4.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.bid_size_4.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.ask_price_4.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.ask_size_4.size

-- Display: Long Best Bid And Ask Update Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.long_best_bid_and_ask_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Best Bid And Ask Update Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.long_best_bid_and_ask_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_topofmarket_itch_v3_4.timestamp.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_phlxoptions_topofmarket_itch_v3_4.option_id.dissect(buffer, index, packet, parent)

  -- Quote Condition: Alpha
  index, quote_condition = nasdaq_phlxoptions_topofmarket_itch_v3_4.quote_condition.dissect(buffer, index, packet, parent)

  -- Bid Price 4: Integer
  index, bid_price_4 = nasdaq_phlxoptions_topofmarket_itch_v3_4.bid_price_4.dissect(buffer, index, packet, parent)

  -- Bid Size 4: Integer
  index, bid_size_4 = nasdaq_phlxoptions_topofmarket_itch_v3_4.bid_size_4.dissect(buffer, index, packet, parent)

  -- Ask Price 4: Integer
  index, ask_price_4 = nasdaq_phlxoptions_topofmarket_itch_v3_4.ask_price_4.dissect(buffer, index, packet, parent)

  -- Ask Size 4: Integer
  index, ask_size_4 = nasdaq_phlxoptions_topofmarket_itch_v3_4.ask_size_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Best Bid And Ask Update Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.long_best_bid_and_ask_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.long_best_bid_and_ask_update_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_topofmarket_itch_v3_4.long_best_bid_and_ask_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.long_best_bid_and_ask_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.long_best_bid_and_ask_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Short Best Bid And Ask Update Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.short_best_bid_and_ask_update_message = {}

-- Size: Short Best Bid And Ask Update Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.short_best_bid_and_ask_update_message.size =
  nasdaq_phlxoptions_topofmarket_itch_v3_4.nanoseconds.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.option_id.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.quote_condition.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.bid_price_2.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.bid_size_2.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.ask_price_2.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.ask_size_2.size

-- Display: Short Best Bid And Ask Update Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.short_best_bid_and_ask_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Best Bid And Ask Update Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.short_best_bid_and_ask_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_topofmarket_itch_v3_4.timestamp.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_phlxoptions_topofmarket_itch_v3_4.option_id.dissect(buffer, index, packet, parent)

  -- Quote Condition: Alpha
  index, quote_condition = nasdaq_phlxoptions_topofmarket_itch_v3_4.quote_condition.dissect(buffer, index, packet, parent)

  -- Bid Price 2: Integer
  index, bid_price_2 = nasdaq_phlxoptions_topofmarket_itch_v3_4.bid_price_2.dissect(buffer, index, packet, parent)

  -- Bid Size 2: Integer
  index, bid_size_2 = nasdaq_phlxoptions_topofmarket_itch_v3_4.bid_size_2.dissect(buffer, index, packet, parent)

  -- Ask Price 2: Integer
  index, ask_price_2 = nasdaq_phlxoptions_topofmarket_itch_v3_4.ask_price_2.dissect(buffer, index, packet, parent)

  -- Ask Size 2: Integer
  index, ask_size_2 = nasdaq_phlxoptions_topofmarket_itch_v3_4.ask_size_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Best Bid And Ask Update Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.short_best_bid_and_ask_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.short_best_bid_and_ask_update_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_topofmarket_itch_v3_4.short_best_bid_and_ask_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.short_best_bid_and_ask_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.short_best_bid_and_ask_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Open Closed Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.security_open_closed_message = {}

-- Size: Security Open Closed Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.security_open_closed_message.size =
  nasdaq_phlxoptions_topofmarket_itch_v3_4.nanoseconds.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.option_id.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.open_state.size

-- Display: Security Open Closed Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.security_open_closed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Open Closed Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.security_open_closed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_topofmarket_itch_v3_4.timestamp.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_phlxoptions_topofmarket_itch_v3_4.option_id.dissect(buffer, index, packet, parent)

  -- Open State: Alpha
  index, open_state = nasdaq_phlxoptions_topofmarket_itch_v3_4.open_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Open Closed Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.security_open_closed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.security_open_closed_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_topofmarket_itch_v3_4.security_open_closed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.security_open_closed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.security_open_closed_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Action Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.trading_action_message = {}

-- Size: Trading Action Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.trading_action_message.size =
  nasdaq_phlxoptions_topofmarket_itch_v3_4.nanoseconds.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.option_id.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.current_trading_state.size

-- Display: Trading Action Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Action Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_topofmarket_itch_v3_4.timestamp.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_phlxoptions_topofmarket_itch_v3_4.option_id.dissect(buffer, index, packet, parent)

  -- Current Trading State: Alpha
  index, current_trading_state = nasdaq_phlxoptions_topofmarket_itch_v3_4.current_trading_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Action Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.trading_action_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_topofmarket_itch_v3_4.trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Options Directory Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.options_directory_message = {}

-- Size: Options Directory Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.options_directory_message.size =
  nasdaq_phlxoptions_topofmarket_itch_v3_4.nanoseconds.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.option_id.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.security_symbol.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.expiration_year.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.expiration_month.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.expiration_day.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.strike_price.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.option_type.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.source.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.underlying_symbol.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.option_closing_type.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.tradable.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.mpv.size

-- Display: Options Directory Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.options_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Directory Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.options_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_topofmarket_itch_v3_4.timestamp.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_phlxoptions_topofmarket_itch_v3_4.option_id.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = nasdaq_phlxoptions_topofmarket_itch_v3_4.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration Year: Integer
  index, expiration_year = nasdaq_phlxoptions_topofmarket_itch_v3_4.expiration_year.dissect(buffer, index, packet, parent)

  -- Expiration Month: Integer
  index, expiration_month = nasdaq_phlxoptions_topofmarket_itch_v3_4.expiration_month.dissect(buffer, index, packet, parent)

  -- Expiration Day: Integer
  index, expiration_day = nasdaq_phlxoptions_topofmarket_itch_v3_4.expiration_day.dissect(buffer, index, packet, parent)

  -- Strike Price: Integer
  index, strike_price = nasdaq_phlxoptions_topofmarket_itch_v3_4.strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: Alpha
  index, option_type = nasdaq_phlxoptions_topofmarket_itch_v3_4.option_type.dissect(buffer, index, packet, parent)

  -- Source: Integer
  index, source = nasdaq_phlxoptions_topofmarket_itch_v3_4.source.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alpha
  index, underlying_symbol = nasdaq_phlxoptions_topofmarket_itch_v3_4.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Option Closing Type: Alpha
  index, option_closing_type = nasdaq_phlxoptions_topofmarket_itch_v3_4.option_closing_type.dissect(buffer, index, packet, parent)

  -- Tradable: Alpha
  index, tradable = nasdaq_phlxoptions_topofmarket_itch_v3_4.tradable.dissect(buffer, index, packet, parent)

  -- Mpv: Alpha
  index, mpv = nasdaq_phlxoptions_topofmarket_itch_v3_4.mpv.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Directory Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.options_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.options_directory_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_topofmarket_itch_v3_4.options_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.options_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.options_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.system_event_message = {}

-- Size: System Event Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.system_event_message.size =
  nasdaq_phlxoptions_topofmarket_itch_v3_4.nanoseconds.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.event_code.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.version.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.subversion.size

-- Display: System Event Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_topofmarket_itch_v3_4.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: Alpha
  index, event_code = nasdaq_phlxoptions_topofmarket_itch_v3_4.event_code.dissect(buffer, index, packet, parent)

  -- Version: Integer
  index, version = nasdaq_phlxoptions_topofmarket_itch_v3_4.version.dissect(buffer, index, packet, parent)

  -- Subversion: Integer
  index, subversion = nasdaq_phlxoptions_topofmarket_itch_v3_4.subversion.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_topofmarket_itch_v3_4.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Timestamp Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.timestamp_message = {}

-- Size: Timestamp Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.timestamp_message.size =
  nasdaq_phlxoptions_topofmarket_itch_v3_4.second.size

-- Display: Timestamp Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.timestamp_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Timestamp Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.timestamp_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Second: Integer
  index, second = nasdaq_phlxoptions_topofmarket_itch_v3_4.second.dissect(buffer, index, packet, parent)

  -- Store Second Value
  nasdaq_phlxoptions_topofmarket_itch_v3_4.second.current = second

  if not packet.visited then
    nasdaq_phlxoptions_topofmarket_itch_v3_4.conversation.current.second.last = second
  end

  return index
end

-- Dissect: Timestamp Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.timestamp_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.timestamp_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_topofmarket_itch_v3_4.timestamp_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.timestamp_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.timestamp_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nasdaq_phlxoptions_topofmarket_itch_v3_4.payload = {}

-- Dissect: Payload
nasdaq_phlxoptions_topofmarket_itch_v3_4.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Timestamp Message
  if message_type == "T" then
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.timestamp_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System Event Message
  if message_type == "S" then
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Directory Message
  if message_type == "D" then
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.options_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Action Message
  if message_type == "H" then
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Open Closed Message
  if message_type == "O" then
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.security_open_closed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Short Best Bid And Ask Update Message
  if message_type == "q" then
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.short_best_bid_and_ask_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Long Best Bid And Ask Update Message
  if message_type == "Q" then
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.long_best_bid_and_ask_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Short Best Ask Update Message
  if message_type == "a" then
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.short_best_ask_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Short Best Bid Update Message
  if message_type == "b" then
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.short_best_bid_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Long Best Ask Update Message
  if message_type == "A" then
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.long_best_ask_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Long Best Bid Update Message
  if message_type == "B" then
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.long_best_bid_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Report Message
  if message_type == "R" then
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.trade_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Broken Trade Report Message
  if message_type == "X" then
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.broken_trade_report_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nasdaq_phlxoptions_topofmarket_itch_v3_4.message_header = {}

-- Size: Message Header
nasdaq_phlxoptions_topofmarket_itch_v3_4.message_header.size =
  nasdaq_phlxoptions_topofmarket_itch_v3_4.message_length.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.message_type.size

-- Display: Message Header
nasdaq_phlxoptions_topofmarket_itch_v3_4.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_phlxoptions_topofmarket_itch_v3_4.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_phlxoptions_topofmarket_itch_v3_4.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 13 values
  index, message_type = nasdaq_phlxoptions_topofmarket_itch_v3_4.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_phlxoptions_topofmarket_itch_v3_4.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.message_header, buffer(offset, 0))
    local index = nasdaq_phlxoptions_topofmarket_itch_v3_4.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.message = {}

-- Read runtime size of: Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 2):uint()

  return message_length + 2
end

-- Display: Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Implicit Message Sequence Number
  if message_index ~= nil and show.sequences and nasdaq_phlxoptions_topofmarket_itch_v3_4.packet_sequence ~= nil then
    local sequence = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.message_sequence_number, UInt64.new(nasdaq_phlxoptions_topofmarket_itch_v3_4.packet_sequence + message_index - 1))
    sequence:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_phlxoptions_topofmarket_itch_v3_4.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 13 branches
  index = nasdaq_phlxoptions_topofmarket_itch_v3_4.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = nasdaq_phlxoptions_topofmarket_itch_v3_4.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.message, buffer(offset, 0))
    local current = nasdaq_phlxoptions_topofmarket_itch_v3_4.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_phlxoptions_topofmarket_itch_v3_4.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- End Of Session
nasdaq_phlxoptions_topofmarket_itch_v3_4.end_of_session = {}

-- Display: End Of Session
nasdaq_phlxoptions_topofmarket_itch_v3_4.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
nasdaq_phlxoptions_topofmarket_itch_v3_4.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Heartbeat
nasdaq_phlxoptions_topofmarket_itch_v3_4.heartbeat = {}

-- Display: Heartbeat
nasdaq_phlxoptions_topofmarket_itch_v3_4.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
nasdaq_phlxoptions_topofmarket_itch_v3_4.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
nasdaq_phlxoptions_topofmarket_itch_v3_4.messages = {}

-- Dissect: Messages
nasdaq_phlxoptions_topofmarket_itch_v3_4.messages.dissect = function(buffer, offset, packet, parent, message_count)
  -- Dissect Heartbeat
  if message_count == 0 then
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session
  if message_count == 65535 then
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.end_of_session.dissect(buffer, offset, packet, parent)
  end

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    offset = nasdaq_phlxoptions_topofmarket_itch_v3_4.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end
end

-- Packet Header
nasdaq_phlxoptions_topofmarket_itch_v3_4.packet_header = {}

-- Size: Packet Header
nasdaq_phlxoptions_topofmarket_itch_v3_4.packet_header.size =
  nasdaq_phlxoptions_topofmarket_itch_v3_4.session.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.sequence_number.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.message_count.size

-- Display: Packet Header
nasdaq_phlxoptions_topofmarket_itch_v3_4.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_phlxoptions_topofmarket_itch_v3_4.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_phlxoptions_topofmarket_itch_v3_4.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = nasdaq_phlxoptions_topofmarket_itch_v3_4.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_phlxoptions_topofmarket_itch_v3_4.message_count.dissect(buffer, index, packet, parent)

  -- Sequence base for the packet's messages
  nasdaq_phlxoptions_topofmarket_itch_v3_4.packet_sequence = sequence_number

  return index
end

-- Dissect: Packet Header
nasdaq_phlxoptions_topofmarket_itch_v3_4.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_phlxoptions_topofmarket_itch_v3_4.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_phlxoptions_topofmarket_itch_v3_4.packet = {}

-- Verify required size of Udp packet
nasdaq_phlxoptions_topofmarket_itch_v3_4.packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_phlxoptions_topofmarket_itch_v3_4.packet_header.size
end

-- Dissect Packet
nasdaq_phlxoptions_topofmarket_itch_v3_4.packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = nasdaq_phlxoptions_topofmarket_itch_v3_4.conversation.data(packet)
  if not packet.visited then
    data.second.frames[packet.number] = data.second.last
  end
  nasdaq_phlxoptions_topofmarket_itch_v3_4.second.current = data.second.frames[packet.number]
  nasdaq_phlxoptions_topofmarket_itch_v3_4.conversation.current = data

  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_phlxoptions_topofmarket_itch_v3_4.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Messages: Runtime Type with 3 branches
  index = nasdaq_phlxoptions_topofmarket_itch_v3_4.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end

-- End Of Session Packet
nasdaq_phlxoptions_topofmarket_itch_v3_4.end_of_session_packet = {}

-- Display: End Of Session Packet
nasdaq_phlxoptions_topofmarket_itch_v3_4.end_of_session_packet.display = function(packet, parent, length)
  return "End Of Session Packet"
end


-- Dissect: End Of Session Packet
nasdaq_phlxoptions_topofmarket_itch_v3_4.end_of_session_packet.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.end_of_session_packet.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Server Heartbeat Packet
nasdaq_phlxoptions_topofmarket_itch_v3_4.server_heartbeat_packet = {}

-- Display: Server Heartbeat Packet
nasdaq_phlxoptions_topofmarket_itch_v3_4.server_heartbeat_packet.display = function(packet, parent, length)
  return "Server Heartbeat Packet"
end


-- Dissect: Server Heartbeat Packet
nasdaq_phlxoptions_topofmarket_itch_v3_4.server_heartbeat_packet.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.server_heartbeat_packet.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- End Of Replay Sequence Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.end_of_replay_sequence_message = {}

-- Size: End Of Replay Sequence Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.end_of_replay_sequence_message.size =
  nasdaq_phlxoptions_topofmarket_itch_v3_4.end_of_replay_sequence_number.size

-- Display: End Of Replay Sequence Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.end_of_replay_sequence_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Replay Sequence Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.end_of_replay_sequence_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- End Of Replay Sequence Number: Alphanumeric
  index, end_of_replay_sequence_number = nasdaq_phlxoptions_topofmarket_itch_v3_4.end_of_replay_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Replay Sequence Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.end_of_replay_sequence_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.end_of_replay_sequence_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_topofmarket_itch_v3_4.end_of_replay_sequence_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.end_of_replay_sequence_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.end_of_replay_sequence_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.sequenced_message = {}

-- Dissect: Sequenced Message
nasdaq_phlxoptions_topofmarket_itch_v3_4.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  -- Dissect Timestamp Message
  if sequenced_message_type == "T" then
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.timestamp_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System Event Message
  if sequenced_message_type == "S" then
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Directory Message
  if sequenced_message_type == "D" then
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.options_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Action Message
  if sequenced_message_type == "H" then
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Open Closed Message
  if sequenced_message_type == "O" then
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.security_open_closed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Short Best Bid And Ask Update Message
  if sequenced_message_type == "q" then
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.short_best_bid_and_ask_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Long Best Bid And Ask Update Message
  if sequenced_message_type == "Q" then
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.long_best_bid_and_ask_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Short Best Ask Update Message
  if sequenced_message_type == "a" then
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.short_best_ask_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Short Best Bid Update Message
  if sequenced_message_type == "b" then
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.short_best_bid_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Long Best Ask Update Message
  if sequenced_message_type == "A" then
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.long_best_ask_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Long Best Bid Update Message
  if sequenced_message_type == "B" then
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.long_best_bid_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Report Message
  if sequenced_message_type == "R" then
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.trade_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Broken Trade Report Message
  if sequenced_message_type == "X" then
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.broken_trade_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Replay Sequence Message
  if sequenced_message_type == "M" then
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.end_of_replay_sequence_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Data Packet
nasdaq_phlxoptions_topofmarket_itch_v3_4.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
nasdaq_phlxoptions_topofmarket_itch_v3_4.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Sequenced Data Packet
nasdaq_phlxoptions_topofmarket_itch_v3_4.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
nasdaq_phlxoptions_topofmarket_itch_v3_4.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Implicit Sequenced Data Packet Sequence Number
  local flow = nasdaq_phlxoptions_topofmarket_itch_v3_4.conversation.current
  if flow ~= nil then
    local memo = flow.sequence.frames[packet.number]
    if not packet.visited then
      if flow.sequence.next == nil then
        flow.sequence.next = tonumber(nasdaq_phlxoptions_topofmarket_itch_v3_4.accepted_sequence_number.current)
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
          local sequence = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    else
      if memo ~= nil and #memo > 0 then
        if nasdaq_phlxoptions_topofmarket_itch_v3_4.stream_frame ~= packet.number or nasdaq_phlxoptions_topofmarket_itch_v3_4.stream_occurrence >= #memo then
          nasdaq_phlxoptions_topofmarket_itch_v3_4.stream_frame = packet.number
          nasdaq_phlxoptions_topofmarket_itch_v3_4.stream_occurrence = 0
        end
        nasdaq_phlxoptions_topofmarket_itch_v3_4.stream_occurrence = nasdaq_phlxoptions_topofmarket_itch_v3_4.stream_occurrence + 1
        local value = memo[nasdaq_phlxoptions_topofmarket_itch_v3_4.stream_occurrence]
        if show.sequences and value ~= nil then
          local sequence = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    end
  end

  -- Sequenced Message Type: 1 Byte Ascii String Enum with 14 values
  index, sequenced_message_type = nasdaq_phlxoptions_topofmarket_itch_v3_4.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 14 branches
  index = nasdaq_phlxoptions_topofmarket_itch_v3_4.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
nasdaq_phlxoptions_topofmarket_itch_v3_4.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = nasdaq_phlxoptions_topofmarket_itch_v3_4.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.sequenced_data_packet, buffer(offset, 0))
    local current = nasdaq_phlxoptions_topofmarket_itch_v3_4.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_phlxoptions_topofmarket_itch_v3_4.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
end

-- Login Rejected Packet
nasdaq_phlxoptions_topofmarket_itch_v3_4.login_rejected_packet = {}

-- Size: Login Rejected Packet
nasdaq_phlxoptions_topofmarket_itch_v3_4.login_rejected_packet.size =
  nasdaq_phlxoptions_topofmarket_itch_v3_4.reject_reason_code.size

-- Display: Login Rejected Packet
nasdaq_phlxoptions_topofmarket_itch_v3_4.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
nasdaq_phlxoptions_topofmarket_itch_v3_4.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String Enum with 2 values
  index, reject_reason_code = nasdaq_phlxoptions_topofmarket_itch_v3_4.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
nasdaq_phlxoptions_topofmarket_itch_v3_4.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.login_rejected_packet, buffer(offset, 0))
    local index = nasdaq_phlxoptions_topofmarket_itch_v3_4.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
nasdaq_phlxoptions_topofmarket_itch_v3_4.login_accepted_packet = {}

-- Size: Login Accepted Packet
nasdaq_phlxoptions_topofmarket_itch_v3_4.login_accepted_packet.size =
  nasdaq_phlxoptions_topofmarket_itch_v3_4.accepted_session.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.accepted_sequence_number.size

-- Display: Login Accepted Packet
nasdaq_phlxoptions_topofmarket_itch_v3_4.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
nasdaq_phlxoptions_topofmarket_itch_v3_4.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Accepted Session: 10 Byte Ascii String
  index, accepted_session = nasdaq_phlxoptions_topofmarket_itch_v3_4.accepted_session.dissect(buffer, index, packet, parent)

  -- Accepted Sequence Number: 20 Byte Ascii String
  index, accepted_sequence_number = nasdaq_phlxoptions_topofmarket_itch_v3_4.accepted_sequence_number.dissect(buffer, index, packet, parent)

  -- Store Accepted Sequence Number Value
  nasdaq_phlxoptions_topofmarket_itch_v3_4.accepted_sequence_number.current = accepted_sequence_number

  if not packet.visited then
    nasdaq_phlxoptions_topofmarket_itch_v3_4.conversation.current.accepted_sequence_number.last = accepted_sequence_number
  end

  return index
end

-- Dissect: Login Accepted Packet
nasdaq_phlxoptions_topofmarket_itch_v3_4.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.login_accepted_packet, buffer(offset, 0))
    local index = nasdaq_phlxoptions_topofmarket_itch_v3_4.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
nasdaq_phlxoptions_topofmarket_itch_v3_4.debug_packet = {}

-- Calculate size of: Debug Packet
nasdaq_phlxoptions_topofmarket_itch_v3_4.debug_packet.size = function(buffer, offset)
  local index = 0

  -- Parse runtime size of: Debug Text
  index = index + buffer(offset + index - 3, 2):uint()

  return index
end

-- Display: Debug Packet
nasdaq_phlxoptions_topofmarket_itch_v3_4.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
nasdaq_phlxoptions_topofmarket_itch_v3_4.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  -- Runtime Size Of: Debug Text
  local size_of_debug_text = packet_length - 1

  -- Debug Text: 0 Byte Ascii String
  index, debug_text = nasdaq_phlxoptions_topofmarket_itch_v3_4.debug_text.dissect(buffer, index, packet, parent, size_of_debug_text)

  return index
end

-- Dissect: Debug Packet
nasdaq_phlxoptions_topofmarket_itch_v3_4.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.debug_packet, buffer(offset, 0))
    local index = nasdaq_phlxoptions_topofmarket_itch_v3_4.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Server Payload
nasdaq_phlxoptions_topofmarket_itch_v3_4.server_payload = {}

-- Dissect: Server Payload
nasdaq_phlxoptions_topofmarket_itch_v3_4.server_payload.dissect = function(buffer, offset, packet, parent, server_packet_type)
  -- Dissect Debug Packet
  if server_packet_type == "+" then
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Packet
  if server_packet_type == "A" then
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.login_accepted_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if server_packet_type == "J" then
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.login_rejected_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Data Packet
  if server_packet_type == "S" then
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Server Heartbeat Packet
  if server_packet_type == "H" then
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.server_heartbeat_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session Packet
  if server_packet_type == "Z" then
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.end_of_session_packet.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Server Packet Header
nasdaq_phlxoptions_topofmarket_itch_v3_4.server_packet_header = {}

-- Size: Server Packet Header
nasdaq_phlxoptions_topofmarket_itch_v3_4.server_packet_header.size =
  nasdaq_phlxoptions_topofmarket_itch_v3_4.packet_length.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.server_packet_type.size

-- Display: Server Packet Header
nasdaq_phlxoptions_topofmarket_itch_v3_4.server_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Packet Header
nasdaq_phlxoptions_topofmarket_itch_v3_4.server_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nasdaq_phlxoptions_topofmarket_itch_v3_4.packet_length.dissect(buffer, index, packet, parent)

  -- Server Packet Type: 1 Byte Ascii String Enum with 6 values
  index, server_packet_type = nasdaq_phlxoptions_topofmarket_itch_v3_4.server_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Server Packet Header
nasdaq_phlxoptions_topofmarket_itch_v3_4.server_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.server_packet_header, buffer(offset, 0))
    local index = nasdaq_phlxoptions_topofmarket_itch_v3_4.server_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.server_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.server_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Soup Bin Tcp Packet
nasdaq_phlxoptions_topofmarket_itch_v3_4.server_soup_bin_tcp_packet = {}

-- Display: Server Soup Bin Tcp Packet
nasdaq_phlxoptions_topofmarket_itch_v3_4.server_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Soup Bin Tcp Packet
nasdaq_phlxoptions_topofmarket_itch_v3_4.server_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset

  -- Server Packet Header: Struct of 2 fields
  index, server_packet_header = nasdaq_phlxoptions_topofmarket_itch_v3_4.server_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Server Packet Type
  local server_packet_type = buffer(index - 1, 1):string()

  -- Server Payload: Runtime Type with 6 branches
  index = nasdaq_phlxoptions_topofmarket_itch_v3_4.server_payload.dissect(buffer, index, packet, parent, server_packet_type)

  return index
end

-- Dissect: Server Soup Bin Tcp Packet
nasdaq_phlxoptions_topofmarket_itch_v3_4.server_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset + size_of_server_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.server_soup_bin_tcp_packet, buffer(offset, 0))
    local current = nasdaq_phlxoptions_topofmarket_itch_v3_4.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
    parent:set_len(size_of_server_soup_bin_tcp_packet)
    local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.server_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_phlxoptions_topofmarket_itch_v3_4.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Server Soup Bin Tcp Packet
local server_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nasdaq_phlxoptions_topofmarket_itch_v3_4.server_packet_header.size then
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
nasdaq_phlxoptions_topofmarket_itch_v3_4.server_packet = {}

-- Verify required size of Tcp packet
nasdaq_phlxoptions_topofmarket_itch_v3_4.server_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_phlxoptions_topofmarket_itch_v3_4.server_packet_header.size
end

-- Dissect Server Packet
nasdaq_phlxoptions_topofmarket_itch_v3_4.server_packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = nasdaq_phlxoptions_topofmarket_itch_v3_4.conversation.data(packet)
  if not packet.visited then
    data.accepted_sequence_number.frames[packet.number] = data.accepted_sequence_number.last
    data.second.frames[packet.number] = data.second.last
  end
  nasdaq_phlxoptions_topofmarket_itch_v3_4.accepted_sequence_number.current = data.accepted_sequence_number.frames[packet.number]
  nasdaq_phlxoptions_topofmarket_itch_v3_4.second.current = data.second.frames[packet.number]
  nasdaq_phlxoptions_topofmarket_itch_v3_4.conversation.current = data

  local index = 0

  -- Dependency for Server Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Server Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_server_soup_bin_tcp_packet = server_soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_server_soup_bin_tcp_packet):tvb()
      index = nasdaq_phlxoptions_topofmarket_itch_v3_4.server_soup_bin_tcp_packet.dissect(frame, index, packet, parent, size_of_server_soup_bin_tcp_packet)
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
nasdaq_phlxoptions_topofmarket_itch_v3_4.logout_request_packet = {}

-- Display: Logout Request Packet
nasdaq_phlxoptions_topofmarket_itch_v3_4.logout_request_packet.display = function(packet, parent, length)
  return "Logout Request Packet"
end


-- Dissect: Logout Request Packet
nasdaq_phlxoptions_topofmarket_itch_v3_4.logout_request_packet.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.logout_request_packet.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Client Heartbeat Packet
nasdaq_phlxoptions_topofmarket_itch_v3_4.client_heartbeat_packet = {}

-- Display: Client Heartbeat Packet
nasdaq_phlxoptions_topofmarket_itch_v3_4.client_heartbeat_packet.display = function(packet, parent, length)
  return "Client Heartbeat Packet"
end


-- Dissect: Client Heartbeat Packet
nasdaq_phlxoptions_topofmarket_itch_v3_4.client_heartbeat_packet.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.client_heartbeat_packet.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Unsequenced Data Packet
nasdaq_phlxoptions_topofmarket_itch_v3_4.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
nasdaq_phlxoptions_topofmarket_itch_v3_4.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Unsequenced Data Packet
nasdaq_phlxoptions_topofmarket_itch_v3_4.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
nasdaq_phlxoptions_topofmarket_itch_v3_4.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String
  index, unsequenced_message_type = nasdaq_phlxoptions_topofmarket_itch_v3_4.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  -- Runtime Size Of: Unsequenced Message
  local size_of_unsequenced_message = packet_length - 2

  -- Unsequenced Message: 0 Byte
  index, unsequenced_message = nasdaq_phlxoptions_topofmarket_itch_v3_4.unsequenced_message.dissect(buffer, index, packet, parent, size_of_unsequenced_message)

  return index
end

-- Dissect: Unsequenced Data Packet
nasdaq_phlxoptions_topofmarket_itch_v3_4.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = nasdaq_phlxoptions_topofmarket_itch_v3_4.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = nasdaq_phlxoptions_topofmarket_itch_v3_4.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_phlxoptions_topofmarket_itch_v3_4.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Login Request Packet
nasdaq_phlxoptions_topofmarket_itch_v3_4.login_request_packet = {}

-- Size: Login Request Packet
nasdaq_phlxoptions_topofmarket_itch_v3_4.login_request_packet.size =
  nasdaq_phlxoptions_topofmarket_itch_v3_4.username.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.password.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.requested_session.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.requested_sequence_number.size

-- Display: Login Request Packet
nasdaq_phlxoptions_topofmarket_itch_v3_4.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
nasdaq_phlxoptions_topofmarket_itch_v3_4.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = nasdaq_phlxoptions_topofmarket_itch_v3_4.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = nasdaq_phlxoptions_topofmarket_itch_v3_4.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = nasdaq_phlxoptions_topofmarket_itch_v3_4.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = nasdaq_phlxoptions_topofmarket_itch_v3_4.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
nasdaq_phlxoptions_topofmarket_itch_v3_4.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.login_request_packet, buffer(offset, 0))
    local index = nasdaq_phlxoptions_topofmarket_itch_v3_4.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Client Payload
nasdaq_phlxoptions_topofmarket_itch_v3_4.client_payload = {}

-- Dissect: Client Payload
nasdaq_phlxoptions_topofmarket_itch_v3_4.client_payload.dissect = function(buffer, offset, packet, parent, client_packet_type)
  -- Dissect Debug Packet
  if client_packet_type == "+" then
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Packet
  if client_packet_type == "L" then
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.login_request_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if client_packet_type == "U" then
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Client Heartbeat Packet
  if client_packet_type == "R" then
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.client_heartbeat_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request Packet
  if client_packet_type == "O" then
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.logout_request_packet.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Packet Header
nasdaq_phlxoptions_topofmarket_itch_v3_4.client_packet_header = {}

-- Size: Client Packet Header
nasdaq_phlxoptions_topofmarket_itch_v3_4.client_packet_header.size =
  nasdaq_phlxoptions_topofmarket_itch_v3_4.packet_length.size + 
  nasdaq_phlxoptions_topofmarket_itch_v3_4.client_packet_type.size

-- Display: Client Packet Header
nasdaq_phlxoptions_topofmarket_itch_v3_4.client_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Packet Header
nasdaq_phlxoptions_topofmarket_itch_v3_4.client_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nasdaq_phlxoptions_topofmarket_itch_v3_4.packet_length.dissect(buffer, index, packet, parent)

  -- Client Packet Type: 1 Byte Ascii String Enum with 5 values
  index, client_packet_type = nasdaq_phlxoptions_topofmarket_itch_v3_4.client_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Packet Header
nasdaq_phlxoptions_topofmarket_itch_v3_4.client_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.client_packet_header, buffer(offset, 0))
    local index = nasdaq_phlxoptions_topofmarket_itch_v3_4.client_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.client_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.client_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Client Soup Bin Tcp Packet
nasdaq_phlxoptions_topofmarket_itch_v3_4.client_soup_bin_tcp_packet = {}

-- Display: Client Soup Bin Tcp Packet
nasdaq_phlxoptions_topofmarket_itch_v3_4.client_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Soup Bin Tcp Packet
nasdaq_phlxoptions_topofmarket_itch_v3_4.client_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset

  -- Client Packet Header: Struct of 2 fields
  index, client_packet_header = nasdaq_phlxoptions_topofmarket_itch_v3_4.client_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Client Packet Type
  local client_packet_type = buffer(index - 1, 1):string()

  -- Client Payload: Runtime Type with 5 branches
  index = nasdaq_phlxoptions_topofmarket_itch_v3_4.client_payload.dissect(buffer, index, packet, parent, client_packet_type)

  return index
end

-- Dissect: Client Soup Bin Tcp Packet
nasdaq_phlxoptions_topofmarket_itch_v3_4.client_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset + size_of_client_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.fields.client_soup_bin_tcp_packet, buffer(offset, 0))
    local current = nasdaq_phlxoptions_topofmarket_itch_v3_4.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
    parent:set_len(size_of_client_soup_bin_tcp_packet)
    local display = nasdaq_phlxoptions_topofmarket_itch_v3_4.client_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_phlxoptions_topofmarket_itch_v3_4.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Client Soup Bin Tcp Packet
local client_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nasdaq_phlxoptions_topofmarket_itch_v3_4.client_packet_header.size then
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
nasdaq_phlxoptions_topofmarket_itch_v3_4.client_packet = {}

-- Verify required size of Tcp packet
nasdaq_phlxoptions_topofmarket_itch_v3_4.client_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_phlxoptions_topofmarket_itch_v3_4.client_packet_header.size
end

-- Dissect Client Packet
nasdaq_phlxoptions_topofmarket_itch_v3_4.client_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Client Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Client Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_client_soup_bin_tcp_packet = client_soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_client_soup_bin_tcp_packet):tvb()
      index = nasdaq_phlxoptions_topofmarket_itch_v3_4.client_soup_bin_tcp_packet.dissect(frame, index, packet, parent, size_of_client_soup_bin_tcp_packet)
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
function omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.init()
  nasdaq_phlxoptions_topofmarket_itch_v3_4.accepted_sequence_number.current = nil
  nasdaq_phlxoptions_topofmarket_itch_v3_4.second.current = nil
  nasdaq_phlxoptions_topofmarket_itch_v3_4.conversation.current = nil
  nasdaq_phlxoptions_topofmarket_itch_v3_4.conversation.flows = {}
end

-- Connection roles for Nasdaq PhlxOptions TopOfMarket Itch 3.4: Client is the initiator, Server is the acceptor
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
nasdaq_phlxoptions_topofmarket_itch_v3_4.role = function(packet)
  if omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.prefs.acceptor_port

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

  if omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.prefs.swap_sides then
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
nasdaq_phlxoptions_topofmarket_itch_v3_4.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Nasdaq PhlxOptions TopOfMarket Itch 3.4
function omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.name

  if packet.port_type == 2 then
    -- Dissect protocol
    local protocol = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4, buffer(), omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.description, "("..buffer:len().." Bytes)")
    local role = nasdaq_phlxoptions_topofmarket_itch_v3_4.role(packet)

    if role == "initiator" then
      return nasdaq_phlxoptions_topofmarket_itch_v3_4.client_packet.dissect(buffer, packet, protocol)
    end

    return nasdaq_phlxoptions_topofmarket_itch_v3_4.server_packet.dissect(buffer, packet, protocol)
  end

  if packet.port_type == 3 then
    -- Dissect protocol
    local protocol = parent:add(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4, buffer(), omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.description, "("..buffer:len().." Bytes)")
    return nasdaq_phlxoptions_topofmarket_itch_v3_4.packet.dissect(buffer, packet, protocol)
  end
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
nasdaq_phlxoptions_topofmarket_itch_v3_4.client_packet.fingerprint = function(buffer)
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
nasdaq_phlxoptions_topofmarket_itch_v3_4.server_packet.fingerprint = function(buffer)
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

-- Dissector Heuristic for Nasdaq PhlxOptions TopOfMarket Itch 3.4 (Tcp)
local function omi_nasdaq_phlxoptions_topofmarket_itch_v3_4_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_phlxoptions_topofmarket_itch_v3_4.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not nasdaq_phlxoptions_topofmarket_itch_v3_4.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_phlxoptions_topofmarket_itch_v3_4
  omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq PhlxOptions TopOfMarket Itch 3.4 (Tcp)
local function omi_nasdaq_phlxoptions_topofmarket_itch_v3_4_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_phlxoptions_topofmarket_itch_v3_4.server_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not nasdaq_phlxoptions_topofmarket_itch_v3_4.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_phlxoptions_topofmarket_itch_v3_4
  omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq PhlxOptions TopOfMarket Itch 3.4 (Udp)
local function omi_nasdaq_phlxoptions_topofmarket_itch_v3_4_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_phlxoptions_topofmarket_itch_v3_4.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_phlxoptions_topofmarket_itch_v3_4
  omi_nasdaq_phlxoptions_topofmarket_itch_v3_4.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq PhlxOptions TopOfMarket Itch 3.4 (Tcp): apply the heuristic of the sender's connection role
local function omi_nasdaq_phlxoptions_topofmarket_itch_v3_4_tcp_heuristic(buffer, packet, parent)
  local role = nasdaq_phlxoptions_topofmarket_itch_v3_4.role(packet)
  local initiator = omi_nasdaq_phlxoptions_topofmarket_itch_v3_4_tcp_initiator_heuristic
  local acceptor = omi_nasdaq_phlxoptions_topofmarket_itch_v3_4_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  nasdaq_phlxoptions_topofmarket_itch_v3_4.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  nasdaq_phlxoptions_topofmarket_itch_v3_4.swap(packet)

  return false
end

-- Register Heuristics for Nasdaq PhlxOptions TopOfMarket Itch 3.4
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4:register_heuristic("tcp", omi_nasdaq_phlxoptions_topofmarket_itch_v3_4_tcp_heuristic)
omi_nasdaq_phlxoptions_topofmarket_itch_v3_4:register_heuristic("udp", omi_nasdaq_phlxoptions_topofmarket_itch_v3_4_udp_heuristic)

-- Register Nasdaq PhlxOptions TopOfMarket Itch 3.4 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4)

-- Register Nasdaq PhlxOptions TopOfMarket Itch 3.4 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_nasdaq_phlxoptions_topofmarket_itch_v3_4)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 3.4
--   Date: Friday, April 25, 2025
--   Specification: Top of PHLX - TCP Update.pdf
--   Specification: Top of PHLX Options (3.4).pdf
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
