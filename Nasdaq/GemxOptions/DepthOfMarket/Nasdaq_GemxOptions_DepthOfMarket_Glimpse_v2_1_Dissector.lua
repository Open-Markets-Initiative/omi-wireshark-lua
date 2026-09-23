-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq GemxOptions DepthOfMarket Glimpse 2.1 Protocol
local omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1 = Proto("Omi.Nasdaq.GemxOptions.DepthOfMarket.Glimpse.v2.1", "Nasdaq GemxOptions DepthOfMarket Glimpse 2.1")

-- Protocol table
local nasdaq_gemxoptions_depthofmarket_glimpse_v2_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq GemxOptions DepthOfMarket Glimpse 2.1 Fields
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.accepted_sequence_number = ProtoField.new("Accepted Sequence Number", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.acceptedsequencenumber", ftypes.STRING)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.accepted_session = ProtoField.new("Accepted Session", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.acceptedsession", ftypes.STRING)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.ask_price_long = ProtoField.new("Ask Price Long", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.askpricelong", ftypes.UINT32)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.ask_price_short = ProtoField.new("Ask Price Short", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.askpriceshort", ftypes.UINT16)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.ask_reference_number = ProtoField.new("Ask Reference Number", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.askreferencenumber", ftypes.UINT64)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.ask_size_long = ProtoField.new("Ask Size Long", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.asksizelong", ftypes.UINT32)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.ask_size_short = ProtoField.new("Ask Size Short", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.asksizeshort", ftypes.UINT16)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.bid_price_long = ProtoField.new("Bid Price Long", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.bidpricelong", ftypes.UINT32)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.bid_price_short = ProtoField.new("Bid Price Short", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.bidpriceshort", ftypes.UINT16)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.bid_reference_number = ProtoField.new("Bid Reference Number", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.bidreferencenumber", ftypes.UINT64)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.bid_size_long = ProtoField.new("Bid Size Long", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.bidsizelong", ftypes.UINT32)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.bid_size_short = ProtoField.new("Bid Size Short", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.bidsizeshort", ftypes.UINT16)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.client_packet_type = ProtoField.new("Packet Type", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.clientpackettype", ftypes.STRING)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.closing_type = ProtoField.new("Closing Type", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.closingtype", ftypes.STRING)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.current_trading_state = ProtoField.new("Current Trading State", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.currenttradingstate", ftypes.STRING)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.event_code = ProtoField.new("Event Code", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.eventcode", ftypes.STRING)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.expiration_day = ProtoField.new("Expiration Day", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.expirationday", ftypes.UINT8)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.expiration_month = ProtoField.new("Expiration Month", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.expirationmonth", ftypes.UINT8)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.expiration_year = ProtoField.new("Expiration Year", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.expirationyear", ftypes.UINT8)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.explicit_strike_price = ProtoField.new("Explicit Strike Price", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.explicitstrikeprice", ftypes.UINT32)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.instrument_id = ProtoField.new("Instrument Id", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.instrumentid", ftypes.UINT32)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.mpv = ProtoField.new("Mpv", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.mpv", ftypes.STRING)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.option_type = ProtoField.new("Option Type", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.optiontype", ftypes.STRING)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.order_capacity = ProtoField.new("Order Capacity", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.ordercapacity", ftypes.STRING)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.order_reference_number = ProtoField.new("Order Reference Number", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.orderreferencenumber", ftypes.UINT64)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.packet_length = ProtoField.new("Packet Length", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.packetlength", ftypes.UINT16)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.password = ProtoField.new("Password", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.password", ftypes.STRING)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.price_long = ProtoField.new("Price Long", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.pricelong", ftypes.UINT32)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.price_short = ProtoField.new("Price Short", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.priceshort", ftypes.UINT16)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.rejectreasoncode", ftypes.STRING)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.requestedsequencenumber", ftypes.STRING)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.requested_session = ProtoField.new("Requested Session", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.requestedsession", ftypes.STRING)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.reserved_16 = ProtoField.new("Reserved 16", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.reserved16", ftypes.BYTES)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.reserved_4 = ProtoField.new("Reserved 4", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.reserved4", ftypes.BYTES)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.security_symbol = ProtoField.new("Security Symbol", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.securitysymbol", ftypes.STRING)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.sequencenumber", ftypes.STRING)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.sequencedmessagetype", ftypes.STRING)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.server_packet_type = ProtoField.new("Packet Type", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.serverpackettype", ftypes.STRING)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.side = ProtoField.new("Side", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.side", ftypes.STRING)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.text = ProtoField.new("Text", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.text", ftypes.STRING)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.timestamp", ftypes.UINT64)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.tracking_number = ProtoField.new("Tracking Number", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.trackingnumber", ftypes.UINT16)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.tradable = ProtoField.new("Tradable", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.tradable", ftypes.STRING)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.underlyingsymbol", ftypes.STRING)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.unsequencedmessage", ftypes.BYTES)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.unsequencedmessagetype", ftypes.STRING)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.username = ProtoField.new("Username", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.username", ftypes.STRING)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.volume_long = ProtoField.new("Volume Long", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.volumelong", ftypes.UINT32)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.volume_short = ProtoField.new("Volume Short", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.volumeshort", ftypes.UINT16)

-- Nasdaq GemxOptions DepthOfMarket Glimpse 2.1 Framing
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.client_packet = ProtoField.new("Packet", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.clientpacket", ftypes.STRING)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.client_packet_header = ProtoField.new("Packet Header", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.clientpacketheader", ftypes.STRING)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.client_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.clientsoupbintcppacket", ftypes.STRING)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.server_packet = ProtoField.new("Packet", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.serverpacket", ftypes.STRING)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.server_packet_header = ProtoField.new("Packet Header", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.serverpacketheader", ftypes.STRING)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.server_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.serversoupbintcppacket", ftypes.STRING)

-- Nasdaq GemxOptions DepthOfMarket 2.1 Application Messages
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.add_order_long_form_message = ProtoField.new("Add Order Long Form Message", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.addorderlongformmessage", ftypes.STRING)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.add_order_short_form_message = ProtoField.new("Add Order Short Form Message", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.addordershortformmessage", ftypes.STRING)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.add_quote_long_form_message = ProtoField.new("Add Quote Long Form Message", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.addquotelongformmessage", ftypes.STRING)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.add_quote_short_form_message = ProtoField.new("Add Quote Short Form Message", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.addquoteshortformmessage", ftypes.STRING)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.derivative_directory_message = ProtoField.new("Derivative Directory Message", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.derivativedirectorymessage", ftypes.STRING)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.snapshot_message = ProtoField.new("Snapshot Message", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.snapshotmessage", ftypes.STRING)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.systemeventmessage", ftypes.STRING)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.trading_action_message = ProtoField.new("Trading Action Message", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.tradingactionmessage", ftypes.STRING)

-- Nasdaq GemxOptions DepthOfMarket 2.1 Session Messages
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.client_heartbeat = ProtoField.new("Client Heartbeat", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.clientheartbeat", ftypes.BYTES)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.debug_packet = ProtoField.new("Debug Packet", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.debugpacket", ftypes.STRING)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.end_of_session = ProtoField.new("End Of Session", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.endofsession", ftypes.BYTES)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.loginacceptedpacket", ftypes.STRING)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.loginrejectedpacket", ftypes.STRING)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.login_request_packet = ProtoField.new("Login Request Packet", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.loginrequestpacket", ftypes.STRING)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.logout_request = ProtoField.new("Logout Request", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.logoutrequest", ftypes.BYTES)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.sequenceddatapacket", ftypes.STRING)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.server_heartbeat = ProtoField.new("Server Heartbeat", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.serverheartbeat", ftypes.BYTES)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.unsequenceddatapacket", ftypes.STRING)

-- Nasdaq GemxOptions DepthOfMarket Glimpse 2.1 Generated Fields
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.sequenced_data_packet_sequence_number = ProtoField.new("Sequenced Data Packet Sequence Number", "nasdaq.gemxoptions.depthofmarket.glimpse.v2.1.sequenceddatapacketsequencenumber", ftypes.UINT64)

-----------------------------------------------------------------------
-- Nasdaq GemxOptions DepthOfMarket Glimpse 2.1 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.timestamp_format = 2

-- Hours behind UTC (EST) for midnight calculation
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.utc_offset_hours = 5

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

-- Nasdaq GemxOptions DepthOfMarket Glimpse 2.1 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.session_messages = true
show.sequences = true

-- Register Nasdaq GemxOptions DepthOfMarket Glimpse 2.1 Show Options
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")

omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Timestamp display format", timestamp_format_enum, false)
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 5, "Hours behind UTC (EST) for midnight calculation")

-- Handle changed preferences
function omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.prefs.show_application_messages
  end
  if show.headers ~= omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.prefs.show_headers then
    show.headers = omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.prefs.show_headers
  end
  if show.session_messages ~= omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.prefs.show_session_messages then
    show.session_messages = omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.prefs.show_session_messages
  end
  if show.structs ~= omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.prefs.show_structs then
    show.structs = omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.prefs.show_structs
  end
  if show.sequences ~= omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.prefs.show_sequences then
    show.sequences = omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.prefs.show_sequences
  end
  if nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.timestamp_format ~= omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.prefs.timestamp_format then
    nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.timestamp_format = omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.prefs.timestamp_format
  end
  if nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.utc_offset_hours ~= omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.prefs.utc_offset_hours then
    nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.utc_offset_hours = omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.prefs.utc_offset_hours
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.conversation = {}
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.conversation.flows = {}

-- Revisit replay cursor for stream sequences: which frame is being
-- re-dissected and which memoized occurrence within it is next
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.stream_frame = nil
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.stream_occurrence = 0

-- Conversation key for the current packet (src/dst tuple)
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.conversation.data = function(packet)
  local key = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.conversation.key(packet)
  local data = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.conversation.flows[key]
  if data == nil then
    data = { accepted_sequence_number = { last = nil, frames = {} }, sequence = { next = nil, frames = {} } }
    nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.conversation.current = nil


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
-- Nasdaq GemxOptions DepthOfMarket Glimpse 2.1 Fields
-----------------------------------------------------------------------

-- Accepted Sequence Number
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.accepted_sequence_number = {}

-- Size: Accepted Sequence Number
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.accepted_sequence_number.size = 20

-- Display: Accepted Sequence Number
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.accepted_sequence_number.display = function(value)
  return "Accepted Sequence Number: "..value
end

-- Dissect: Accepted Sequence Number
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.accepted_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.accepted_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.accepted_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.accepted_sequence_number, range, value, display)

  return offset + length, value
end

-- Accepted Session
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.accepted_session = {}

-- Size: Accepted Session
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.accepted_session.size = 10

-- Display: Accepted Session
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.accepted_session.display = function(value)
  return "Accepted Session: "..value
end

-- Dissect: Accepted Session
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.accepted_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.accepted_session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.accepted_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.accepted_session, range, value, display)

  return offset + length, value
end

-- Ask Price Long
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.ask_price_long = {}

-- Size: Ask Price Long
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.ask_price_long.size = 4

-- Display: Ask Price Long
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.ask_price_long.display = function(value)
  return "Ask Price Long: "..value
end

-- Dissect: Ask Price Long
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.ask_price_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.ask_price_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.ask_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.ask_price_long, range, value, display)

  return offset + length, value
end

-- Ask Price Short
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.ask_price_short = {}

-- Size: Ask Price Short
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.ask_price_short.size = 2

-- Display: Ask Price Short
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.ask_price_short.display = function(value)
  return "Ask Price Short: "..value
end

-- Dissect: Ask Price Short
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.ask_price_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.ask_price_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.ask_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.ask_price_short, range, value, display)

  return offset + length, value
end

-- Ask Reference Number
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.ask_reference_number = {}

-- Size: Ask Reference Number
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.ask_reference_number.size = 8

-- Display: Ask Reference Number
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.ask_reference_number.display = function(value)
  return "Ask Reference Number: "..value
end

-- Dissect: Ask Reference Number
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.ask_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.ask_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.ask_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.ask_reference_number, range, value, display)

  return offset + length, value
end

-- Ask Size Long
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.ask_size_long = {}

-- Size: Ask Size Long
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.ask_size_long.size = 4

-- Display: Ask Size Long
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.ask_size_long.display = function(value)
  return "Ask Size Long: "..value
end

-- Dissect: Ask Size Long
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.ask_size_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.ask_size_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.ask_size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.ask_size_long, range, value, display)

  return offset + length, value
end

-- Ask Size Short
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.ask_size_short = {}

-- Size: Ask Size Short
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.ask_size_short.size = 2

-- Display: Ask Size Short
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.ask_size_short.display = function(value)
  return "Ask Size Short: "..value
end

-- Dissect: Ask Size Short
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.ask_size_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.ask_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.ask_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.ask_size_short, range, value, display)

  return offset + length, value
end

-- Bid Price Long
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.bid_price_long = {}

-- Size: Bid Price Long
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.bid_price_long.size = 4

-- Display: Bid Price Long
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.bid_price_long.display = function(value)
  return "Bid Price Long: "..value
end

-- Dissect: Bid Price Long
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.bid_price_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.bid_price_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.bid_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.bid_price_long, range, value, display)

  return offset + length, value
end

-- Bid Price Short
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.bid_price_short = {}

-- Size: Bid Price Short
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.bid_price_short.size = 2

-- Display: Bid Price Short
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.bid_price_short.display = function(value)
  return "Bid Price Short: "..value
end

-- Dissect: Bid Price Short
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.bid_price_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.bid_price_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.bid_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.bid_price_short, range, value, display)

  return offset + length, value
end

-- Bid Reference Number
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.bid_reference_number = {}

-- Size: Bid Reference Number
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.bid_reference_number.size = 8

-- Display: Bid Reference Number
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.bid_reference_number.display = function(value)
  return "Bid Reference Number: "..value
end

-- Dissect: Bid Reference Number
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.bid_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.bid_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.bid_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.bid_reference_number, range, value, display)

  return offset + length, value
end

-- Bid Size Long
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.bid_size_long = {}

-- Size: Bid Size Long
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.bid_size_long.size = 4

-- Display: Bid Size Long
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.bid_size_long.display = function(value)
  return "Bid Size Long: "..value
end

-- Dissect: Bid Size Long
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.bid_size_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.bid_size_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.bid_size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.bid_size_long, range, value, display)

  return offset + length, value
end

-- Bid Size Short
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.bid_size_short = {}

-- Size: Bid Size Short
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.bid_size_short.size = 2

-- Display: Bid Size Short
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.bid_size_short.display = function(value)
  return "Bid Size Short: "..value
end

-- Dissect: Bid Size Short
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.bid_size_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.bid_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.bid_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.bid_size_short, range, value, display)

  return offset + length, value
end

-- Client Packet Type
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.client_packet_type = {}

-- Size: Client Packet Type
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.client_packet_type.size = 1

-- Display: Client Packet Type
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.client_packet_type.display = function(value)
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
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.client_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.client_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.client_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.client_packet_type, range, value, display)

  return offset + length, value
end

-- Closing Type
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.closing_type = {}

-- Size: Closing Type
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.closing_type.size = 1

-- Display: Closing Type
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.closing_type.display = function(value)
  if value == "N" then
    return "Closing Type: Normal Hours (N)"
  end
  if value == "L" then
    return "Closing Type: Late Hours (L)"
  end
  if value == "W" then
    return "Closing Type: Wco Early Closing (W)"
  end

  return "Closing Type: Unknown("..value..")"
end

-- Dissect: Closing Type
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.closing_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.closing_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.closing_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.closing_type, range, value, display)

  return offset + length, value
end

-- Current Trading State
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.current_trading_state = {}

-- Size: Current Trading State
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.current_trading_state.size = 1

-- Display: Current Trading State
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.current_trading_state.display = function(value)
  if value == "B" then
    return "Current Trading State: Buy Side Suspended (B)"
  end
  if value == "S" then
    return "Current Trading State: Sell Side Suspended (S)"
  end
  if value == "H" then
    return "Current Trading State: Halt In Effect (H)"
  end
  if value == "T" then
    return "Current Trading State: Continuous Trading (T)"
  end
  if value == "I" then
    return "Current Trading State: Pre Open (I)"
  end
  if value == "O" then
    return "Current Trading State: Opening Auction (O)"
  end
  if value == "R" then
    return "Current Trading State: Re Opening (R)"
  end
  if value == "X" then
    return "Current Trading State: Closed (X)"
  end

  return "Current Trading State: Unknown("..value..")"
end

-- Dissect: Current Trading State
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.current_trading_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.current_trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.current_trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.current_trading_state, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.event_code = {}

-- Size: Event Code
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.event_code.size = 1

-- Display: Event Code
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.event_code.display = function(value)
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
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.event_code, range, value, display)

  return offset + length, value
end

-- Expiration Day
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.expiration_day = {}

-- Size: Expiration Day
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.expiration_day.size = 1

-- Display: Expiration Day
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.expiration_day.display = function(value)
  return "Expiration Day: "..value
end

-- Dissect: Expiration Day
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.expiration_day.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.expiration_day.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.expiration_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.expiration_day, range, value, display)

  return offset + length, value
end

-- Expiration Month
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.expiration_month = {}

-- Size: Expiration Month
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.expiration_month.size = 1

-- Display: Expiration Month
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.expiration_month.display = function(value)
  return "Expiration Month: "..value
end

-- Dissect: Expiration Month
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.expiration_month.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.expiration_month.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.expiration_month.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.expiration_month, range, value, display)

  return offset + length, value
end

-- Expiration Year
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.expiration_year = {}

-- Size: Expiration Year
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.expiration_year.size = 1

-- Display: Expiration Year
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.expiration_year.display = function(value)
  return "Expiration Year: "..value
end

-- Dissect: Expiration Year
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.expiration_year.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.expiration_year.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.expiration_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.expiration_year, range, value, display)

  return offset + length, value
end

-- Explicit Strike Price
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.explicit_strike_price = {}

-- Size: Explicit Strike Price
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.explicit_strike_price.size = 4

-- Display: Explicit Strike Price
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.explicit_strike_price.display = function(value)
  return "Explicit Strike Price: "..value
end

-- Dissect: Explicit Strike Price
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.explicit_strike_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.explicit_strike_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.explicit_strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.explicit_strike_price, range, value, display)

  return offset + length, value
end

-- Instrument Id
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.instrument_id = {}

-- Size: Instrument Id
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.instrument_id.size = 4

-- Display: Instrument Id
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.instrument_id.display = function(value)
  return "Instrument Id: "..value
end

-- Dissect: Instrument Id
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.instrument_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.instrument_id, range, value, display)

  return offset + length, value
end

-- Mpv
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.mpv = {}

-- Size: Mpv
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.mpv.size = 1

-- Display: Mpv
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.mpv.display = function(value)
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
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.mpv.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.mpv.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.mpv.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.mpv, range, value, display)

  return offset + length, value
end

-- Option Type
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.option_type = {}

-- Size: Option Type
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.option_type.size = 1

-- Display: Option Type
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.option_type.display = function(value)
  if value == "C" then
    return "Option Type: Call (C)"
  end
  if value == "P" then
    return "Option Type: Put (P)"
  end
  if value == "N" then
    return "Option Type: Not Applicable (N)"
  end

  return "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.option_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.option_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.option_type, range, value, display)

  return offset + length, value
end

-- Order Capacity
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.order_capacity = {}

-- Size: Order Capacity
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.order_capacity.size = 1

-- Display: Order Capacity
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.order_capacity.display = function(value)
  if value == "C" then
    return "Order Capacity: Customer Order (C)"
  end
  if value == "F" then
    return "Order Capacity: Firm Order (F)"
  end
  if value == "M" then
    return "Order Capacity: Market Maker Order (M)"
  end
  if value == "B" then
    return "Order Capacity: Broker Dealer Order (B)"
  end
  if value == "P" then
    return "Order Capacity: Professional Order (P)"
  end
  if value == "O" then
    return "Order Capacity: Other Exchange Market Maker Order (O)"
  end
  if value == "J" then
    return "Order Capacity: Joint Back Office (J)"
  end
  if value == " " then
    return "Order Capacity: Na (<whitespace>)"
  end

  return "Order Capacity: Unknown("..value..")"
end

-- Dissect: Order Capacity
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.order_capacity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.order_capacity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.order_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.order_capacity, range, value, display)

  return offset + length, value
end

-- Order Reference Number
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.order_reference_number = {}

-- Size: Order Reference Number
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.order_reference_number.size = 8

-- Display: Order Reference Number
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.order_reference_number.display = function(value)
  return "Order Reference Number: "..value
end

-- Dissect: Order Reference Number
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.order_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.order_reference_number, range, value, display)

  return offset + length, value
end

-- Packet Length
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.packet_length = {}

-- Size: Packet Length
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.packet_length.size = 2

-- Display: Packet Length
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Password
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.password = {}

-- Size: Password
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.password.size = 10

-- Display: Password
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.password.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.password, range, value, display)

  return offset + length, value
end

-- Price Long
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.price_long = {}

-- Size: Price Long
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.price_long.size = 4

-- Display: Price Long
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.price_long.display = function(value)
  return "Price Long: "..value
end

-- Dissect: Price Long
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.price_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.price_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.price_long, range, value, display)

  return offset + length, value
end

-- Price Short
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.price_short = {}

-- Size: Price Short
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.price_short.size = 2

-- Display: Price Short
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.price_short.display = function(value)
  return "Price Short: "..value
end

-- Dissect: Price Short
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.price_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.price_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.price_short, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.reject_reason_code = {}

-- Size: Reject Reason Code
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.reject_reason_code.size = 1

-- Display: Reject Reason Code
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.reject_reason_code.display = function(value)
  if value == "A" then
    return "Reject Reason Code: Not Authorized (A)"
  end
  if value == "S" then
    return "Reject Reason Code: Session Not Available (S)"
  end

  return "Reject Reason Code: Unknown("..value..")"
end

-- Dissect: Reject Reason Code
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.requested_sequence_number = {}

-- Size: Requested Sequence Number
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.requested_sequence_number.size = 20

-- Display: Requested Sequence Number
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.requested_session = {}

-- Size: Requested Session
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.requested_session.size = 10

-- Display: Requested Session
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.requested_session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Reserved 16
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.reserved_16 = {}

-- Size: Reserved 16
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.reserved_16.size = 16

-- Display: Reserved 16
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.reserved_16.display = function(value)
  return "Reserved 16: "..value
end

-- Dissect: Reserved 16
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.reserved_16.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.reserved_16.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.reserved_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.reserved_16, range, value, display)

  return offset + length, value
end

-- Reserved 4
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.reserved_4 = {}

-- Size: Reserved 4
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.reserved_4.size = 4

-- Display: Reserved 4
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Security Symbol
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.security_symbol = {}

-- Size: Security Symbol
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.security_symbol.size = 8

-- Display: Security Symbol
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.security_symbol.display = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.security_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.security_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.security_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.sequence_number = {}

-- Size: Sequence Number
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.sequence_number.size = 20

-- Display: Sequence Number
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.sequence_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.sequenced_message_type = {}

-- Size: Sequenced Message Type
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.sequenced_message_type.display = function(value)
  if value == "S" then
    return "Sequenced Message Type: System Event Message (S)"
  end
  if value == "m" then
    return "Sequenced Message Type: Derivative Directory Message (m)"
  end
  if value == "H" then
    return "Sequenced Message Type: Trading Action Message (H)"
  end
  if value == "r" then
    return "Sequenced Message Type: Add Order Short Form Message (r)"
  end
  if value == "o" then
    return "Sequenced Message Type: Add Order Long Form Message (o)"
  end
  if value == "j" then
    return "Sequenced Message Type: Add Quote Short Form Message (j)"
  end
  if value == "J" then
    return "Sequenced Message Type: Add Quote Long Form Message (J)"
  end
  if value == "M" then
    return "Sequenced Message Type: Snapshot Message (M)"
  end

  return "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Server Packet Type
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.server_packet_type = {}

-- Size: Server Packet Type
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.server_packet_type.size = 1

-- Display: Server Packet Type
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.server_packet_type.display = function(value)
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
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.server_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.server_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.server_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.server_packet_type, range, value, display)

  return offset + length, value
end

-- Side
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.side = {}

-- Size: Side
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.side.size = 1

-- Display: Side
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.side.display = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end
  if value == "M" then
    return "Side: Buy Implied (M)"
  end
  if value == "N" then
    return "Side: Sell Implied (N)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.side, range, value, display)

  return offset + length, value
end

-- Text
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.text = {}

-- Size: Text
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.text.size = 1

-- Display: Text
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.text.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.text, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.timestamp = {}

-- Size: Timestamp
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.timestamp.size = 8

-- Display: Timestamp
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.timestamp.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.timestamp_format == 0 then
    return "Timestamp: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (calculate from capture date + UTC offset)
  if nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", nanoseconds)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Tracking Number
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.tracking_number = {}

-- Size: Tracking Number
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.tracking_number.size = 2

-- Display: Tracking Number
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.tracking_number.display = function(value)
  return "Tracking Number: "..value
end

-- Dissect: Tracking Number
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.tracking_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.tracking_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.tracking_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.tracking_number, range, value, display)

  return offset + length, value
end

-- Tradable
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.tradable = {}

-- Size: Tradable
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.tradable.size = 1

-- Display: Tradable
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.tradable.display = function(value)
  if value == "Y" then
    return "Tradable: Tradable (Y)"
  end
  if value == "N" then
    return "Tradable: Not Tradable (N)"
  end

  return "Tradable: Unknown("..value..")"
end

-- Dissect: Tradable
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.tradable.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.tradable.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.tradable.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.tradable, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.underlying_symbol = {}

-- Size: Underlying Symbol
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.underlying_symbol.size = 13

-- Display: Underlying Symbol
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.underlying_symbol.display = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.underlying_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Unsequenced Message
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.unsequenced_message = {}

-- Display: Unsequenced Message
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.unsequenced_message.display = function(value)
  return "Unsequenced Message: "..value
end

-- Dissect runtime sized field: Unsequenced Message
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.unsequenced_message.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.unsequenced_message.display(value, packet, parent, size)

  parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.unsequenced_message, range, value, display)

  return offset + size, value
end

-- Unsequenced Message Type
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.unsequenced_message_type.display = function(value)
  return "Unsequenced Message Type: "..value
end

-- Dissect: Unsequenced Message Type
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Username
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.username = {}

-- Size: Username
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.username.size = 6

-- Display: Username
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.username.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.username, range, value, display)

  return offset + length, value
end

-- Volume Long
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.volume_long = {}

-- Size: Volume Long
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.volume_long.size = 4

-- Display: Volume Long
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.volume_long.display = function(value)
  return "Volume Long: "..value
end

-- Dissect: Volume Long
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.volume_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.volume_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.volume_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.volume_long, range, value, display)

  return offset + length, value
end

-- Volume Short
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.volume_short = {}

-- Size: Volume Short
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.volume_short.size = 2

-- Display: Volume Short
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.volume_short.display = function(value)
  return "Volume Short: "..value
end

-- Dissect: Volume Short
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.volume_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.volume_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.volume_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.volume_short, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq GemxOptions DepthOfMarket Glimpse 2.1
-----------------------------------------------------------------------

-- End Of Session
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.end_of_session = {}

-- Display: End Of Session
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Server Heartbeat
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.server_heartbeat = {}

-- Display: Server Heartbeat
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.server_heartbeat.display = function(packet, parent, length)
  return "Server Heartbeat"
end


-- Dissect: Server Heartbeat
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.server_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.server_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Snapshot Message
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.snapshot_message = {}

-- Size: Snapshot Message
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.snapshot_message.size =
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.sequence_number.size

-- Display: Snapshot Message
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.snapshot_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Message
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.snapshot_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: Alphanumeric
  index, sequence_number = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Message
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.snapshot_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.snapshot_message, buffer(offset, 0))
    local index = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.snapshot_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.snapshot_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.snapshot_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Quote Long Form Message
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.add_quote_long_form_message = {}

-- Size: Add Quote Long Form Message
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.add_quote_long_form_message.size =
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.tracking_number.size + 
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.timestamp.size + 
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.instrument_id.size + 
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.bid_reference_number.size + 
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.ask_reference_number.size + 
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.bid_price_long.size + 
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.bid_size_long.size + 
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.ask_price_long.size + 
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.ask_size_long.size

-- Display: Add Quote Long Form Message
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.add_quote_long_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Quote Long Form Message
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.add_quote_long_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.instrument_id.dissect(buffer, index, packet, parent)

  -- Bid Reference Number: Integer
  index, bid_reference_number = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.bid_reference_number.dissect(buffer, index, packet, parent)

  -- Ask Reference Number: Integer
  index, ask_reference_number = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.ask_reference_number.dissect(buffer, index, packet, parent)

  -- Bid Price Long: Integer
  index, bid_price_long = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.bid_price_long.dissect(buffer, index, packet, parent)

  -- Bid Size Long: Integer
  index, bid_size_long = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.bid_size_long.dissect(buffer, index, packet, parent)

  -- Ask Price Long: Integer
  index, ask_price_long = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.ask_price_long.dissect(buffer, index, packet, parent)

  -- Ask Size Long: Integer
  index, ask_size_long = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.ask_size_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Quote Long Form Message
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.add_quote_long_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.add_quote_long_form_message, buffer(offset, 0))
    local index = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.add_quote_long_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.add_quote_long_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.add_quote_long_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Quote Short Form Message
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.add_quote_short_form_message = {}

-- Size: Add Quote Short Form Message
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.add_quote_short_form_message.size =
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.tracking_number.size + 
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.timestamp.size + 
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.instrument_id.size + 
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.bid_reference_number.size + 
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.ask_reference_number.size + 
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.bid_price_short.size + 
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.bid_size_short.size + 
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.ask_price_short.size + 
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.ask_size_short.size

-- Display: Add Quote Short Form Message
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.add_quote_short_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Quote Short Form Message
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.add_quote_short_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.instrument_id.dissect(buffer, index, packet, parent)

  -- Bid Reference Number: Integer
  index, bid_reference_number = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.bid_reference_number.dissect(buffer, index, packet, parent)

  -- Ask Reference Number: Integer
  index, ask_reference_number = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.ask_reference_number.dissect(buffer, index, packet, parent)

  -- Bid Price Short: Integer
  index, bid_price_short = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.bid_price_short.dissect(buffer, index, packet, parent)

  -- Bid Size Short: Integer
  index, bid_size_short = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.bid_size_short.dissect(buffer, index, packet, parent)

  -- Ask Price Short: Integer
  index, ask_price_short = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.ask_price_short.dissect(buffer, index, packet, parent)

  -- Ask Size Short: Integer
  index, ask_size_short = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.ask_size_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Quote Short Form Message
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.add_quote_short_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.add_quote_short_form_message, buffer(offset, 0))
    local index = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.add_quote_short_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.add_quote_short_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.add_quote_short_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Long Form Message
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.add_order_long_form_message = {}

-- Size: Add Order Long Form Message
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.add_order_long_form_message.size =
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.tracking_number.size + 
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.timestamp.size + 
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.instrument_id.size + 
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.order_reference_number.size + 
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.side.size + 
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.order_capacity.size + 
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.price_long.size + 
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.volume_long.size + 
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.reserved_4.size

-- Display: Add Order Long Form Message
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.add_order_long_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Long Form Message
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.add_order_long_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.instrument_id.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.order_reference_number.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.side.dissect(buffer, index, packet, parent)

  -- Order Capacity: Alpha
  index, order_capacity = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.order_capacity.dissect(buffer, index, packet, parent)

  -- Price Long: Integer
  index, price_long = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.price_long.dissect(buffer, index, packet, parent)

  -- Volume Long: Integer
  index, volume_long = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.volume_long.dissect(buffer, index, packet, parent)

  -- Reserved 4: Alpha
  index, reserved_4 = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.reserved_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Long Form Message
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.add_order_long_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.add_order_long_form_message, buffer(offset, 0))
    local index = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.add_order_long_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.add_order_long_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.add_order_long_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Short Form Message
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.add_order_short_form_message = {}

-- Size: Add Order Short Form Message
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.add_order_short_form_message.size =
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.tracking_number.size + 
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.timestamp.size + 
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.instrument_id.size + 
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.order_reference_number.size + 
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.side.size + 
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.order_capacity.size + 
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.price_short.size + 
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.volume_short.size + 
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.reserved_4.size

-- Display: Add Order Short Form Message
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.add_order_short_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Short Form Message
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.add_order_short_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.instrument_id.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.order_reference_number.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.side.dissect(buffer, index, packet, parent)

  -- Order Capacity: Alpha
  index, order_capacity = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.order_capacity.dissect(buffer, index, packet, parent)

  -- Price Short: Integer
  index, price_short = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.price_short.dissect(buffer, index, packet, parent)

  -- Volume Short: Integer
  index, volume_short = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.volume_short.dissect(buffer, index, packet, parent)

  -- Reserved 4: Alpha
  index, reserved_4 = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.reserved_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Short Form Message
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.add_order_short_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.add_order_short_form_message, buffer(offset, 0))
    local index = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.add_order_short_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.add_order_short_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.add_order_short_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Action Message
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.trading_action_message = {}

-- Size: Trading Action Message
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.trading_action_message.size =
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.tracking_number.size + 
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.timestamp.size + 
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.instrument_id.size + 
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.current_trading_state.size

-- Display: Trading Action Message
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Action Message
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.instrument_id.dissect(buffer, index, packet, parent)

  -- Current Trading State: Alpha
  index, current_trading_state = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.current_trading_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Action Message
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.trading_action_message, buffer(offset, 0))
    local index = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Derivative Directory Message
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.derivative_directory_message = {}

-- Size: Derivative Directory Message
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.derivative_directory_message.size =
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.tracking_number.size + 
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.timestamp.size + 
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.instrument_id.size + 
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.security_symbol.size + 
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.expiration_year.size + 
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.expiration_month.size + 
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.expiration_day.size + 
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.explicit_strike_price.size + 
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.option_type.size + 
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.underlying_symbol.size + 
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.closing_type.size + 
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.tradable.size + 
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.mpv.size + 
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.reserved_16.size

-- Display: Derivative Directory Message
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.derivative_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Derivative Directory Message
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.derivative_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.instrument_id.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration Year: Integer
  index, expiration_year = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.expiration_year.dissect(buffer, index, packet, parent)

  -- Expiration Month: Integer
  index, expiration_month = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.expiration_month.dissect(buffer, index, packet, parent)

  -- Expiration Day: Integer
  index, expiration_day = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.expiration_day.dissect(buffer, index, packet, parent)

  -- Explicit Strike Price: Integer
  index, explicit_strike_price = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.explicit_strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: Alpha
  index, option_type = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.option_type.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alpha
  index, underlying_symbol = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Closing Type: Alpha
  index, closing_type = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.closing_type.dissect(buffer, index, packet, parent)

  -- Tradable: Alpha
  index, tradable = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.tradable.dissect(buffer, index, packet, parent)

  -- Mpv: Alpha
  index, mpv = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.mpv.dissect(buffer, index, packet, parent)

  -- Reserved 16: Alpha
  index, reserved_16 = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.reserved_16.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Derivative Directory Message
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.derivative_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.derivative_directory_message, buffer(offset, 0))
    local index = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.derivative_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.derivative_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.derivative_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.system_event_message = {}

-- Size: System Event Message
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.system_event_message.size =
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.tracking_number.size + 
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.timestamp.size + 
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.event_code.size

-- Display: System Event Message
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: Alpha
  index, event_code = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.sequenced_message = {}

-- Dissect: Sequenced Message
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  -- Dissect System Event Message
  if sequenced_message_type == "S" then
    return nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivative Directory Message
  if sequenced_message_type == "m" then
    return nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.derivative_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Action Message
  if sequenced_message_type == "H" then
    return nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Short Form Message
  if sequenced_message_type == "r" then
    return nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.add_order_short_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Long Form Message
  if sequenced_message_type == "o" then
    return nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.add_order_long_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Quote Short Form Message
  if sequenced_message_type == "j" then
    return nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.add_quote_short_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Quote Long Form Message
  if sequenced_message_type == "J" then
    return nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.add_quote_long_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Message
  if sequenced_message_type == "M" then
    return nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.snapshot_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Data Packet
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Sequenced Data Packet
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Implicit Sequenced Data Packet Sequence Number
  local flow = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.conversation.current
  if flow ~= nil then
    local memo = flow.sequence.frames[packet.number]
    if not packet.visited then
      if flow.sequence.next == nil then
        flow.sequence.next = tonumber(nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.accepted_sequence_number.current)
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
          local sequence = parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    else
      if memo ~= nil and #memo > 0 then
        if nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.stream_frame ~= packet.number or nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.stream_occurrence >= #memo then
          nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.stream_frame = packet.number
          nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.stream_occurrence = 0
        end
        nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.stream_occurrence = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.stream_occurrence + 1
        local value = memo[nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.stream_occurrence]
        if show.sequences and value ~= nil then
          local sequence = parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    end
  end

  -- Sequenced Message Type: 1 Byte Ascii String Enum with 8 values
  index, sequenced_message_type = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 8 branches
  index = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.sequenced_data_packet, buffer(offset, 0))
    local current = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
end

-- Login Rejected Packet
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.login_rejected_packet = {}

-- Size: Login Rejected Packet
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.login_rejected_packet.size =
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.reject_reason_code.size

-- Display: Login Rejected Packet
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String Enum with 2 values
  index, reject_reason_code = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.login_rejected_packet, buffer(offset, 0))
    local index = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.login_accepted_packet = {}

-- Size: Login Accepted Packet
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.login_accepted_packet.size =
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.accepted_session.size + 
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.accepted_sequence_number.size

-- Display: Login Accepted Packet
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Accepted Session: 10 Byte Ascii String
  index, accepted_session = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.accepted_session.dissect(buffer, index, packet, parent)

  -- Accepted Sequence Number: 20 Byte Ascii String
  index, accepted_sequence_number = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.accepted_sequence_number.dissect(buffer, index, packet, parent)

  -- Store Accepted Sequence Number Value
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.accepted_sequence_number.current = accepted_sequence_number

  if not packet.visited then
    nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.conversation.current.accepted_sequence_number.last = accepted_sequence_number
  end

  return index
end

-- Dissect: Login Accepted Packet
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.login_accepted_packet, buffer(offset, 0))
    local index = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.debug_packet = {}

-- Size: Debug Packet
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.debug_packet.size =
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.text.size

-- Display: Debug Packet
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text: 1 Byte Ascii String
  index, text = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Debug Packet
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.debug_packet, buffer(offset, 0))
    local index = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Server Payload
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.server_payload = {}

-- Dissect: Server Payload
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.server_payload.dissect = function(buffer, offset, packet, parent, server_packet_type)
  -- Dissect Debug Packet
  if server_packet_type == "+" then
    return nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Packet
  if server_packet_type == "A" then
    return nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.login_accepted_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if server_packet_type == "J" then
    return nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.login_rejected_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Data Packet
  if server_packet_type == "S" then
    return nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Server Heartbeat
  if server_packet_type == "H" then
    return nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.server_heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session
  if server_packet_type == "Z" then
    return nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.end_of_session.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Server Packet Header
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.server_packet_header = {}

-- Size: Server Packet Header
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.server_packet_header.size =
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.packet_length.size + 
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.server_packet_type.size

-- Display: Server Packet Header
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.server_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Packet Header
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.server_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.packet_length.dissect(buffer, index, packet, parent)

  -- Server Packet Type: 1 Byte Ascii String Enum with 6 values
  index, server_packet_type = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.server_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Server Packet Header
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.server_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.server_packet_header, buffer(offset, 0))
    local index = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.server_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.server_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.server_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Soup Bin Tcp Packet
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.server_soup_bin_tcp_packet = {}

-- Display: Server Soup Bin Tcp Packet
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.server_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Soup Bin Tcp Packet
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.server_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset

  -- Server Packet Header: Struct of 2 fields
  index, server_packet_header = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.server_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Server Packet Type
  local server_packet_type = buffer(index - 1, 1):string()

  -- Server Payload: Runtime Type with 6 branches
  index = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.server_payload.dissect(buffer, index, packet, parent, server_packet_type)

  return index
end

-- Dissect: Server Soup Bin Tcp Packet
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.server_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset + size_of_server_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.server_soup_bin_tcp_packet, buffer(offset, 0))
    local current = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
    parent:set_len(size_of_server_soup_bin_tcp_packet)
    local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.server_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Server Soup Bin Tcp Packet
local server_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.server_packet_header.size then
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
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.server_packet = {}

-- Verify required size of Tcp packet
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.server_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.server_packet_header.size
end

-- Dissect Server Packet
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.server_packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.conversation.data(packet)
  if not packet.visited then
    data.accepted_sequence_number.frames[packet.number] = data.accepted_sequence_number.last
  end
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.accepted_sequence_number.current = data.accepted_sequence_number.frames[packet.number]
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.conversation.current = data

  local index = 0

  -- Dependency for Server Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Server Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_server_soup_bin_tcp_packet = server_soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.server_soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_server_soup_bin_tcp_packet)
    else
      -- More bytes needed, so set packet information
      packet.desegment_offset = index
      packet.desegment_len = -(available)

      break
    end
  end

  return index
end

-- Logout Request
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.logout_request = {}

-- Display: Logout Request
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.logout_request.display = function(packet, parent, length)
  return "Logout Request"
end


-- Dissect: Logout Request
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.logout_request.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.logout_request.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Client Heartbeat
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.client_heartbeat = {}

-- Display: Client Heartbeat
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.client_heartbeat.display = function(packet, parent, length)
  return "Client Heartbeat"
end


-- Dissect: Client Heartbeat
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.client_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.client_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Unsequenced Data Packet
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Unsequenced Data Packet
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String
  index, unsequenced_message_type = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  -- Runtime Size Of: Unsequenced Message
  local size_of_unsequenced_message = packet_length - 2

  -- Unsequenced Message: 0 Byte
  index, unsequenced_message = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.unsequenced_message.dissect(buffer, index, packet, parent, size_of_unsequenced_message)

  return index
end

-- Dissect: Unsequenced Data Packet
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Login Request Packet
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.login_request_packet = {}

-- Size: Login Request Packet
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.login_request_packet.size =
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.username.size + 
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.password.size + 
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.requested_session.size + 
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.requested_sequence_number.size

-- Display: Login Request Packet
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.login_request_packet, buffer(offset, 0))
    local index = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Client Payload
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.client_payload = {}

-- Dissect: Client Payload
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.client_payload.dissect = function(buffer, offset, packet, parent, client_packet_type)
  -- Dissect Debug Packet
  if client_packet_type == "+" then
    return nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Packet
  if client_packet_type == "L" then
    return nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.login_request_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if client_packet_type == "U" then
    return nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Client Heartbeat
  if client_packet_type == "R" then
    return nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.client_heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request
  if client_packet_type == "O" then
    return nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.logout_request.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Packet Header
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.client_packet_header = {}

-- Size: Client Packet Header
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.client_packet_header.size =
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.packet_length.size + 
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.client_packet_type.size

-- Display: Client Packet Header
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.client_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Packet Header
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.client_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.packet_length.dissect(buffer, index, packet, parent)

  -- Client Packet Type: 1 Byte Ascii String Enum with 5 values
  index, client_packet_type = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.client_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Packet Header
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.client_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.client_packet_header, buffer(offset, 0))
    local index = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.client_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.client_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.client_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Client Soup Bin Tcp Packet
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.client_soup_bin_tcp_packet = {}

-- Display: Client Soup Bin Tcp Packet
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.client_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Soup Bin Tcp Packet
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.client_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset

  -- Client Packet Header: Struct of 2 fields
  index, client_packet_header = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.client_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Client Packet Type
  local client_packet_type = buffer(index - 1, 1):string()

  -- Client Payload: Runtime Type with 5 branches
  index = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.client_payload.dissect(buffer, index, packet, parent, client_packet_type)

  return index
end

-- Dissect: Client Soup Bin Tcp Packet
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.client_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset + size_of_client_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.fields.client_soup_bin_tcp_packet, buffer(offset, 0))
    local current = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
    parent:set_len(size_of_client_soup_bin_tcp_packet)
    local display = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.client_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Client Soup Bin Tcp Packet
local client_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.client_packet_header.size then
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
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.client_packet = {}

-- Verify required size of Tcp packet
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.client_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.client_packet_header.size
end

-- Dissect Client Packet
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.client_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Client Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Client Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_client_soup_bin_tcp_packet = client_soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.client_soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_client_soup_bin_tcp_packet)
    else
      -- More bytes needed, so set packet information
      packet.desegment_offset = index
      packet.desegment_len = -(available)

      break
    end
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.init()
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.accepted_sequence_number.current = nil
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.conversation.current = nil
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.conversation.flows = {}
end

-- Connection roles for Nasdaq GemxOptions DepthOfMarket Glimpse 2.1: Client is the initiator, Server is the acceptor
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
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.role = function(packet)
  if omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.prefs.acceptor_port

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

  if omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.prefs.swap_sides then
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
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Nasdaq GemxOptions DepthOfMarket Glimpse 2.1
function omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1, buffer(), omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.description, "("..buffer:len().." Bytes)")

  local role = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.role(packet)

  if role == "initiator" then
    return nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.client_packet.dissect(buffer, packet, protocol)
  end

  return nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.server_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.client_packet.fingerprint = function(buffer)
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

  -- Client Heartbeat
  if client_packet_type == "R" then
    return true
  end

  -- Logout Request
  if client_packet_type == "O" then
    return true
  end

  return false
end

-- Fingerprint of Server Packet: would its message dispatch accept this frame?
nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.server_packet.fingerprint = function(buffer)
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

  -- Sequenced Data Packet: carries the application messages, which tell this protocol from others sharing the session framing
  if server_packet_type == "S" then
    if buffer:len() < 4 then
      return false
    end

    local sequenced_message_type = buffer(3, 1):string()

    -- System Event Message
    if sequenced_message_type == "S" then
      return true
    end

    -- Derivative Directory Message
    if sequenced_message_type == "m" then
      return true
    end

    -- Trading Action Message
    if sequenced_message_type == "H" then
      return true
    end

    -- Add Order Short Form Message
    if sequenced_message_type == "r" then
      return true
    end

    -- Add Order Long Form Message
    if sequenced_message_type == "o" then
      return true
    end

    -- Add Quote Short Form Message
    if sequenced_message_type == "j" then
      return true
    end

    -- Add Quote Long Form Message
    if sequenced_message_type == "J" then
      return true
    end

    -- Snapshot Message
    if sequenced_message_type == "M" then
      return true
    end

    return false
  end

  -- Server Heartbeat
  if server_packet_type == "H" then
    return true
  end

  -- End Of Session
  if server_packet_type == "Z" then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq GemxOptions DepthOfMarket Glimpse 2.1 (Tcp)
local function omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1
  omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq GemxOptions DepthOfMarket Glimpse 2.1 (Tcp)
local function omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.server_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1
  omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq GemxOptions DepthOfMarket Glimpse 2.1 (Tcp): apply the heuristic of the sender's connection role
local function omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1_tcp_heuristic(buffer, packet, parent)
  local role = nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.role(packet)
  local initiator = omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1_tcp_initiator_heuristic
  local acceptor = omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  nasdaq_gemxoptions_depthofmarket_glimpse_v2_1.swap(packet)

  return false
end

-- Register Heuristics for Nasdaq GemxOptions DepthOfMarket Glimpse 2.1
omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1:register_heuristic("tcp", omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1_tcp_heuristic)

-- Register Nasdaq GemxOptions DepthOfMarket Glimpse 2.1 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_nasdaq_gemxoptions_depthofmarket_glimpse_v2_1)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 2.1
--   Date: Friday, February 13, 2026
--   Specification: Options_Depth_of_Market_Glimpse.pdf
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
