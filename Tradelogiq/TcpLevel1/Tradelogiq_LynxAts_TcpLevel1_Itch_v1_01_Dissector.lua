-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Tradelogiq LynxAts TcpLevel1 Itch 1.01 Protocol
local omi_tradelogiq_lynxats_tcplevel1_itch_v1_01 = Proto("Omi.Tradelogiq.LynxAts.TcpLevel1.Itch.v1.01", "Tradelogiq LynxAts TcpLevel1 Itch 1.01")

-- Protocol table
local tradelogiq_lynxats_tcplevel1_itch_v1_01 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Tradelogiq LynxAts TcpLevel1 Itch 1.01 Fields
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.accepted_sequence_number = ProtoField.new("Accepted Sequence Number", "tradelogiq.lynxats.tcplevel1.itch.v1.01.acceptedsequencenumber", ftypes.STRING)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.accepted_session = ProtoField.new("Accepted Session", "tradelogiq.lynxats.tcplevel1.itch.v1.01.acceptedsession", ftypes.STRING)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.best_ask_price = ProtoField.new("Best Ask Price", "tradelogiq.lynxats.tcplevel1.itch.v1.01.bestaskprice", ftypes.DOUBLE)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.best_ask_size = ProtoField.new("Best Ask Size", "tradelogiq.lynxats.tcplevel1.itch.v1.01.bestasksize", ftypes.UINT32)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.best_bid_price = ProtoField.new("Best Bid Price", "tradelogiq.lynxats.tcplevel1.itch.v1.01.bestbidprice", ftypes.DOUBLE)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.best_bid_size = ProtoField.new("Best Bid Size", "tradelogiq.lynxats.tcplevel1.itch.v1.01.bestbidsize", ftypes.UINT32)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.board_lot_size = ProtoField.new("Board Lot Size", "tradelogiq.lynxats.tcplevel1.itch.v1.01.boardlotsize", ftypes.UINT32)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.buy_broker = ProtoField.new("Buy Broker", "tradelogiq.lynxats.tcplevel1.itch.v1.01.buybroker", ftypes.UINT16)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.client_packet_type = ProtoField.new("Client Packet Type", "tradelogiq.lynxats.tcplevel1.itch.v1.01.clientpackettype", ftypes.STRING)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.conditions = ProtoField.new("Conditions", "tradelogiq.lynxats.tcplevel1.itch.v1.01.conditions", ftypes.STRING)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.corrected_trade_price = ProtoField.new("Corrected Trade Price", "tradelogiq.lynxats.tcplevel1.itch.v1.01.correctedtradeprice", ftypes.DOUBLE)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.corrected_trade_size = ProtoField.new("Corrected Trade Size", "tradelogiq.lynxats.tcplevel1.itch.v1.01.correctedtradesize", ftypes.UINT32)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.currency = ProtoField.new("Currency", "tradelogiq.lynxats.tcplevel1.itch.v1.01.currency", ftypes.STRING)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.description = ProtoField.new("Description", "tradelogiq.lynxats.tcplevel1.itch.v1.01.description", ftypes.STRING)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.dividend_indicator = ProtoField.new("Dividend Indicator", "tradelogiq.lynxats.tcplevel1.itch.v1.01.dividendindicator", ftypes.STRING)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.event_code = ProtoField.new("Event Code", "tradelogiq.lynxats.tcplevel1.itch.v1.01.eventcode", ftypes.STRING)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.expiry_date = ProtoField.new("Expiry Date", "tradelogiq.lynxats.tcplevel1.itch.v1.01.expirydate", ftypes.STRING)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.frequency = ProtoField.new("Frequency", "tradelogiq.lynxats.tcplevel1.itch.v1.01.frequency", ftypes.STRING)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.instrument_id = ProtoField.new("Instrument Id", "tradelogiq.lynxats.tcplevel1.itch.v1.01.instrumentid", ftypes.UINT16)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.market = ProtoField.new("Market", "tradelogiq.lynxats.tcplevel1.itch.v1.01.market", ftypes.STRING)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.message_type = ProtoField.new("Message Type", "tradelogiq.lynxats.tcplevel1.itch.v1.01.messagetype", ftypes.STRING)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.original_trade_id = ProtoField.new("Original Trade Id", "tradelogiq.lynxats.tcplevel1.itch.v1.01.originaltradeid", ftypes.UINT32)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.original_trade_price = ProtoField.new("Original Trade Price", "tradelogiq.lynxats.tcplevel1.itch.v1.01.originaltradeprice", ftypes.DOUBLE)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.original_trade_size = ProtoField.new("Original Trade Size", "tradelogiq.lynxats.tcplevel1.itch.v1.01.originaltradesize", ftypes.UINT32)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.packet_length = ProtoField.new("Packet Length", "tradelogiq.lynxats.tcplevel1.itch.v1.01.packetlength", ftypes.UINT16)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.password = ProtoField.new("Password", "tradelogiq.lynxats.tcplevel1.itch.v1.01.password", ftypes.STRING)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.reason = ProtoField.new("Reason", "tradelogiq.lynxats.tcplevel1.itch.v1.01.reason", ftypes.STRING)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "tradelogiq.lynxats.tcplevel1.itch.v1.01.rejectreasoncode", ftypes.STRING)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "tradelogiq.lynxats.tcplevel1.itch.v1.01.requestedsequencenumber", ftypes.STRING)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.requested_session = ProtoField.new("Requested Session", "tradelogiq.lynxats.tcplevel1.itch.v1.01.requestedsession", ftypes.STRING)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.reserved_1 = ProtoField.new("Reserved 1", "tradelogiq.lynxats.tcplevel1.itch.v1.01.reserved1", ftypes.BYTES)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.reserved_2 = ProtoField.new("Reserved 2", "tradelogiq.lynxats.tcplevel1.itch.v1.01.reserved2", ftypes.BYTES)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.reserved_3 = ProtoField.new("Reserved 3", "tradelogiq.lynxats.tcplevel1.itch.v1.01.reserved3", ftypes.BYTES)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.reserved_9 = ProtoField.new("Reserved 9", "tradelogiq.lynxats.tcplevel1.itch.v1.01.reserved9", ftypes.BYTES)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.security_type = ProtoField.new("Security Type", "tradelogiq.lynxats.tcplevel1.itch.v1.01.securitytype", ftypes.STRING)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.sell_broker = ProtoField.new("Sell Broker", "tradelogiq.lynxats.tcplevel1.itch.v1.01.sellbroker", ftypes.UINT16)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.server_packet_type = ProtoField.new("Server Packet Type", "tradelogiq.lynxats.tcplevel1.itch.v1.01.serverpackettype", ftypes.STRING)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.shortable = ProtoField.new("Shortable", "tradelogiq.lynxats.tcplevel1.itch.v1.01.shortable", ftypes.STRING)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.stock = ProtoField.new("Stock", "tradelogiq.lynxats.tcplevel1.itch.v1.01.stock", ftypes.STRING)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.stock_symbol = ProtoField.new("Stock Symbol", "tradelogiq.lynxats.tcplevel1.itch.v1.01.stocksymbol", ftypes.STRING)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.timestamp = ProtoField.new("Timestamp", "tradelogiq.lynxats.tcplevel1.itch.v1.01.timestamp", ftypes.UINT64)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.trade_id = ProtoField.new("Trade Id", "tradelogiq.lynxats.tcplevel1.itch.v1.01.tradeid", ftypes.UINT32)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.trade_price = ProtoField.new("Trade Price", "tradelogiq.lynxats.tcplevel1.itch.v1.01.tradeprice", ftypes.DOUBLE)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.trade_size = ProtoField.new("Trade Size", "tradelogiq.lynxats.tcplevel1.itch.v1.01.tradesize", ftypes.UINT32)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.trading_state = ProtoField.new("Trading State", "tradelogiq.lynxats.tcplevel1.itch.v1.01.tradingstate", ftypes.STRING)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "tradelogiq.lynxats.tcplevel1.itch.v1.01.unsequencedmessage", ftypes.BYTES)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.username = ProtoField.new("Username", "tradelogiq.lynxats.tcplevel1.itch.v1.01.username", ftypes.STRING)

-- Tradelogiq LynxAts TcpLevel1 Itch 1.01 Framing
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.client_packet = ProtoField.new("Packet", "tradelogiq.lynxats.tcplevel1.itch.v1.01.clientpacket", ftypes.STRING)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.client_packet_header = ProtoField.new("Client Packet Header", "tradelogiq.lynxats.tcplevel1.itch.v1.01.clientpacketheader", ftypes.STRING)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.client_soup_tcp_packet = ProtoField.new("Soup Tcp Packet", "tradelogiq.lynxats.tcplevel1.itch.v1.01.clientsouptcppacket", ftypes.STRING)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "tradelogiq.lynxats.tcplevel1.itch.v1.01.sequenceddatapacket", ftypes.STRING)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.server_packet = ProtoField.new("Packet", "tradelogiq.lynxats.tcplevel1.itch.v1.01.serverpacket", ftypes.STRING)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.server_packet_header = ProtoField.new("Server Packet Header", "tradelogiq.lynxats.tcplevel1.itch.v1.01.serverpacketheader", ftypes.STRING)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.server_soup_tcp_packet = ProtoField.new("Soup Tcp Packet", "tradelogiq.lynxats.tcplevel1.itch.v1.01.serversouptcppacket", ftypes.STRING)

-- Tradelogiq LynxAts TcpLevel1 1.01 Session Messages
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.client_heartbeat = ProtoField.new("Client Heartbeat", "tradelogiq.lynxats.tcplevel1.itch.v1.01.clientheartbeat", ftypes.BYTES)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "tradelogiq.lynxats.tcplevel1.itch.v1.01.loginacceptedpacket", ftypes.STRING)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "tradelogiq.lynxats.tcplevel1.itch.v1.01.loginrejectedpacket", ftypes.STRING)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.login_request_packet = ProtoField.new("Login Request Packet", "tradelogiq.lynxats.tcplevel1.itch.v1.01.loginrequestpacket", ftypes.STRING)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.logout_request = ProtoField.new("Logout Request", "tradelogiq.lynxats.tcplevel1.itch.v1.01.logoutrequest", ftypes.BYTES)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.server_heartbeat = ProtoField.new("Server Heartbeat", "tradelogiq.lynxats.tcplevel1.itch.v1.01.serverheartbeat", ftypes.BYTES)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "tradelogiq.lynxats.tcplevel1.itch.v1.01.unsequenceddatapacket", ftypes.STRING)

-- Tradelogiq LynxAts TcpLevel1 1.01 Application Messages
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.extended_stock_directory_message = ProtoField.new("Extended Stock Directory Message", "tradelogiq.lynxats.tcplevel1.itch.v1.01.extendedstockdirectorymessage", ftypes.STRING)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.quote_message = ProtoField.new("Quote Message", "tradelogiq.lynxats.tcplevel1.itch.v1.01.quotemessage", ftypes.STRING)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.stock_directory_message = ProtoField.new("Stock Directory Message", "tradelogiq.lynxats.tcplevel1.itch.v1.01.stockdirectorymessage", ftypes.STRING)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.stock_status_message = ProtoField.new("Stock Status Message", "tradelogiq.lynxats.tcplevel1.itch.v1.01.stockstatusmessage", ftypes.STRING)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.system_event_message = ProtoField.new("System Event Message", "tradelogiq.lynxats.tcplevel1.itch.v1.01.systemeventmessage", ftypes.STRING)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.trade_bust_message = ProtoField.new("Trade Bust Message", "tradelogiq.lynxats.tcplevel1.itch.v1.01.tradebustmessage", ftypes.STRING)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.trade_correction_message = ProtoField.new("Trade Correction Message", "tradelogiq.lynxats.tcplevel1.itch.v1.01.tradecorrectionmessage", ftypes.STRING)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.trade_report_message = ProtoField.new("Trade Report Message", "tradelogiq.lynxats.tcplevel1.itch.v1.01.tradereportmessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Tradelogiq LynxAts TcpLevel1 Itch 1.01 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
tradelogiq_lynxats_tcplevel1_itch_v1_01.timestamp_format = 2

-- Hours behind UTC (UTC) for midnight calculation
tradelogiq_lynxats_tcplevel1_itch_v1_01.utc_offset_hours = 0

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

-- Tradelogiq LynxAts TcpLevel1 Itch 1.01 Element Dissection Options
show.structs = true
show.headers = true
show.application_messages = true
show.session_messages = true

-- Register Tradelogiq LynxAts TcpLevel1 Itch 1.01 Show Options
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")

omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Timestamp display format", timestamp_format_enum, false)
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 0, "Hours behind UTC (UTC) for midnight calculation")

-- Handle changed preferences
function omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.prefs.show_application_messages then
    show.application_messages = omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.prefs.show_application_messages
  end
  if show.headers ~= omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.prefs.show_headers then
    show.headers = omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.prefs.show_headers
  end
  if show.session_messages ~= omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.prefs.show_session_messages then
    show.session_messages = omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.prefs.show_session_messages
  end
  if show.structs ~= omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.prefs.show_structs then
    show.structs = omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.prefs.show_structs
  end
  if tradelogiq_lynxats_tcplevel1_itch_v1_01.timestamp_format ~= omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.prefs.timestamp_format then
    tradelogiq_lynxats_tcplevel1_itch_v1_01.timestamp_format = omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.prefs.timestamp_format
  end
  if tradelogiq_lynxats_tcplevel1_itch_v1_01.utc_offset_hours ~= omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.prefs.utc_offset_hours then
    tradelogiq_lynxats_tcplevel1_itch_v1_01.utc_offset_hours = omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.prefs.utc_offset_hours
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
-- Tradelogiq LynxAts TcpLevel1 Itch 1.01 Fields
-----------------------------------------------------------------------

-- Accepted Sequence Number
tradelogiq_lynxats_tcplevel1_itch_v1_01.accepted_sequence_number = {}

-- Size: Accepted Sequence Number
tradelogiq_lynxats_tcplevel1_itch_v1_01.accepted_sequence_number.size = 20

-- Display: Accepted Sequence Number
tradelogiq_lynxats_tcplevel1_itch_v1_01.accepted_sequence_number.display = function(value)
  return "Accepted Sequence Number: "..value
end

-- Dissect: Accepted Sequence Number
tradelogiq_lynxats_tcplevel1_itch_v1_01.accepted_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_tcplevel1_itch_v1_01.accepted_sequence_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.accepted_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.accepted_sequence_number, range, value, display)

  return offset + length, value
end

-- Accepted Session
tradelogiq_lynxats_tcplevel1_itch_v1_01.accepted_session = {}

-- Size: Accepted Session
tradelogiq_lynxats_tcplevel1_itch_v1_01.accepted_session.size = 10

-- Display: Accepted Session
tradelogiq_lynxats_tcplevel1_itch_v1_01.accepted_session.display = function(value)
  return "Accepted Session: "..value
end

-- Dissect: Accepted Session
tradelogiq_lynxats_tcplevel1_itch_v1_01.accepted_session.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_tcplevel1_itch_v1_01.accepted_session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.accepted_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.accepted_session, range, value, display)

  return offset + length, value
end

-- Best Ask Price
tradelogiq_lynxats_tcplevel1_itch_v1_01.best_ask_price = {}

-- Size: Best Ask Price
tradelogiq_lynxats_tcplevel1_itch_v1_01.best_ask_price.size = 8

-- Display: Best Ask Price
tradelogiq_lynxats_tcplevel1_itch_v1_01.best_ask_price.display = function(value)
  return "Best Ask Price: "..value
end

-- Translate: Best Ask Price
tradelogiq_lynxats_tcplevel1_itch_v1_01.best_ask_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Best Ask Price
tradelogiq_lynxats_tcplevel1_itch_v1_01.best_ask_price.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_tcplevel1_itch_v1_01.best_ask_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = tradelogiq_lynxats_tcplevel1_itch_v1_01.best_ask_price.translate(raw)
  local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.best_ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.best_ask_price, range, value, display)

  return offset + length, value
end

-- Best Ask Size
tradelogiq_lynxats_tcplevel1_itch_v1_01.best_ask_size = {}

-- Size: Best Ask Size
tradelogiq_lynxats_tcplevel1_itch_v1_01.best_ask_size.size = 4

-- Display: Best Ask Size
tradelogiq_lynxats_tcplevel1_itch_v1_01.best_ask_size.display = function(value)
  return "Best Ask Size: "..value
end

-- Dissect: Best Ask Size
tradelogiq_lynxats_tcplevel1_itch_v1_01.best_ask_size.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_tcplevel1_itch_v1_01.best_ask_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.best_ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.best_ask_size, range, value, display)

  return offset + length, value
end

-- Best Bid Price
tradelogiq_lynxats_tcplevel1_itch_v1_01.best_bid_price = {}

-- Size: Best Bid Price
tradelogiq_lynxats_tcplevel1_itch_v1_01.best_bid_price.size = 8

-- Display: Best Bid Price
tradelogiq_lynxats_tcplevel1_itch_v1_01.best_bid_price.display = function(value)
  return "Best Bid Price: "..value
end

-- Translate: Best Bid Price
tradelogiq_lynxats_tcplevel1_itch_v1_01.best_bid_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Best Bid Price
tradelogiq_lynxats_tcplevel1_itch_v1_01.best_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_tcplevel1_itch_v1_01.best_bid_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = tradelogiq_lynxats_tcplevel1_itch_v1_01.best_bid_price.translate(raw)
  local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.best_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.best_bid_price, range, value, display)

  return offset + length, value
end

-- Best Bid Size
tradelogiq_lynxats_tcplevel1_itch_v1_01.best_bid_size = {}

-- Size: Best Bid Size
tradelogiq_lynxats_tcplevel1_itch_v1_01.best_bid_size.size = 4

-- Display: Best Bid Size
tradelogiq_lynxats_tcplevel1_itch_v1_01.best_bid_size.display = function(value)
  return "Best Bid Size: "..value
end

-- Dissect: Best Bid Size
tradelogiq_lynxats_tcplevel1_itch_v1_01.best_bid_size.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_tcplevel1_itch_v1_01.best_bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.best_bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.best_bid_size, range, value, display)

  return offset + length, value
end

-- Board Lot Size
tradelogiq_lynxats_tcplevel1_itch_v1_01.board_lot_size = {}

-- Size: Board Lot Size
tradelogiq_lynxats_tcplevel1_itch_v1_01.board_lot_size.size = 4

-- Display: Board Lot Size
tradelogiq_lynxats_tcplevel1_itch_v1_01.board_lot_size.display = function(value)
  return "Board Lot Size: "..value
end

-- Dissect: Board Lot Size
tradelogiq_lynxats_tcplevel1_itch_v1_01.board_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_tcplevel1_itch_v1_01.board_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.board_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.board_lot_size, range, value, display)

  return offset + length, value
end

-- Buy Broker
tradelogiq_lynxats_tcplevel1_itch_v1_01.buy_broker = {}

-- Size: Buy Broker
tradelogiq_lynxats_tcplevel1_itch_v1_01.buy_broker.size = 2

-- Display: Buy Broker
tradelogiq_lynxats_tcplevel1_itch_v1_01.buy_broker.display = function(value)
  return "Buy Broker: "..value
end

-- Dissect: Buy Broker
tradelogiq_lynxats_tcplevel1_itch_v1_01.buy_broker.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_tcplevel1_itch_v1_01.buy_broker.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.buy_broker.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.buy_broker, range, value, display)

  return offset + length, value
end

-- Client Packet Type
tradelogiq_lynxats_tcplevel1_itch_v1_01.client_packet_type = {}

-- Size: Client Packet Type
tradelogiq_lynxats_tcplevel1_itch_v1_01.client_packet_type.size = 1

-- Display: Client Packet Type
tradelogiq_lynxats_tcplevel1_itch_v1_01.client_packet_type.display = function(value)
  if value == "L" then
    return "Client Packet Type: Login Request Packet (L)"
  end
  if value == "U" then
    return "Client Packet Type: Unsequenced Data Packet (U)"
  end
  if value == "R" then
    return "Client Packet Type: Client Heartbeat Packet (R)"
  end
  if value == "O" then
    return "Client Packet Type: Logout Request Packet (O)"
  end

  return "Client Packet Type: Unknown("..value..")"
end

-- Dissect: Client Packet Type
tradelogiq_lynxats_tcplevel1_itch_v1_01.client_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_tcplevel1_itch_v1_01.client_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.client_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.client_packet_type, range, value, display)

  return offset + length, value
end

-- Conditions
tradelogiq_lynxats_tcplevel1_itch_v1_01.conditions = {}

-- Size: Conditions
tradelogiq_lynxats_tcplevel1_itch_v1_01.conditions.size = 5

-- Display: Conditions
tradelogiq_lynxats_tcplevel1_itch_v1_01.conditions.display = function(value)
  return "Conditions: "..value
end

-- Dissect: Conditions
tradelogiq_lynxats_tcplevel1_itch_v1_01.conditions.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_tcplevel1_itch_v1_01.conditions.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.conditions.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.conditions, range, value, display)

  return offset + length, value
end

-- Corrected Trade Price
tradelogiq_lynxats_tcplevel1_itch_v1_01.corrected_trade_price = {}

-- Size: Corrected Trade Price
tradelogiq_lynxats_tcplevel1_itch_v1_01.corrected_trade_price.size = 8

-- Display: Corrected Trade Price
tradelogiq_lynxats_tcplevel1_itch_v1_01.corrected_trade_price.display = function(value)
  return "Corrected Trade Price: "..value
end

-- Translate: Corrected Trade Price
tradelogiq_lynxats_tcplevel1_itch_v1_01.corrected_trade_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Corrected Trade Price
tradelogiq_lynxats_tcplevel1_itch_v1_01.corrected_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_tcplevel1_itch_v1_01.corrected_trade_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = tradelogiq_lynxats_tcplevel1_itch_v1_01.corrected_trade_price.translate(raw)
  local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.corrected_trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.corrected_trade_price, range, value, display)

  return offset + length, value
end

-- Corrected Trade Size
tradelogiq_lynxats_tcplevel1_itch_v1_01.corrected_trade_size = {}

-- Size: Corrected Trade Size
tradelogiq_lynxats_tcplevel1_itch_v1_01.corrected_trade_size.size = 4

-- Display: Corrected Trade Size
tradelogiq_lynxats_tcplevel1_itch_v1_01.corrected_trade_size.display = function(value)
  return "Corrected Trade Size: "..value
end

-- Dissect: Corrected Trade Size
tradelogiq_lynxats_tcplevel1_itch_v1_01.corrected_trade_size.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_tcplevel1_itch_v1_01.corrected_trade_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.corrected_trade_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.corrected_trade_size, range, value, display)

  return offset + length, value
end

-- Currency
tradelogiq_lynxats_tcplevel1_itch_v1_01.currency = {}

-- Size: Currency
tradelogiq_lynxats_tcplevel1_itch_v1_01.currency.size = 3

-- Display: Currency
tradelogiq_lynxats_tcplevel1_itch_v1_01.currency.display = function(value)
  if value == "CAD" then
    return "Currency: Canadian Dollars (CAD)"
  end
  if value == "USD" then
    return "Currency: Us Dollars (USD)"
  end

  return "Currency: Unknown("..value..")"
end

-- Dissect: Currency
tradelogiq_lynxats_tcplevel1_itch_v1_01.currency.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_tcplevel1_itch_v1_01.currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.currency, range, value, display)

  return offset + length, value
end

-- Description
tradelogiq_lynxats_tcplevel1_itch_v1_01.description = {}

-- Size: Description
tradelogiq_lynxats_tcplevel1_itch_v1_01.description.size = 20

-- Display: Description
tradelogiq_lynxats_tcplevel1_itch_v1_01.description.display = function(value)
  return "Description: "..value
end

-- Dissect: Description
tradelogiq_lynxats_tcplevel1_itch_v1_01.description.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_tcplevel1_itch_v1_01.description.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.description.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.description, range, value, display)

  return offset + length, value
end

-- Dividend Indicator
tradelogiq_lynxats_tcplevel1_itch_v1_01.dividend_indicator = {}

-- Size: Dividend Indicator
tradelogiq_lynxats_tcplevel1_itch_v1_01.dividend_indicator.size = 1

-- Display: Dividend Indicator
tradelogiq_lynxats_tcplevel1_itch_v1_01.dividend_indicator.display = function(value)
  if value == "A" then
    return "Dividend Indicator: Annual (A)"
  end
  if value == "S" then
    return "Dividend Indicator: Semi Annual (S)"
  end
  if value == "Q" then
    return "Dividend Indicator: Quarterly (Q)"
  end
  if value == "M" then
    return "Dividend Indicator: Monthly (M)"
  end

  return "Dividend Indicator: Unknown("..value..")"
end

-- Dissect: Dividend Indicator
tradelogiq_lynxats_tcplevel1_itch_v1_01.dividend_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_tcplevel1_itch_v1_01.dividend_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.dividend_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.dividend_indicator, range, value, display)

  return offset + length, value
end

-- Event Code
tradelogiq_lynxats_tcplevel1_itch_v1_01.event_code = {}

-- Size: Event Code
tradelogiq_lynxats_tcplevel1_itch_v1_01.event_code.size = 1

-- Display: Event Code
tradelogiq_lynxats_tcplevel1_itch_v1_01.event_code.display = function(value)
  if value == "O" then
    return "Event Code: Start Of Messages (O)"
  end
  if value == "S" then
    return "Event Code: Start Of System Hours (S)"
  end
  if value == "Q" then
    return "Event Code: Start Of Market Hours (Q)"
  end
  if value == "M" then
    return "Event Code: End Of Market Hours (M)"
  end
  if value == "E" then
    return "Event Code: End Of System Hours (E)"
  end
  if value == "C" then
    return "Event Code: End Of Messages (C)"
  end
  if value == "B" then
    return "Event Code: Trading Halted (B)"
  end
  if value == "R" then
    return "Event Code: Trading Resumed (R)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
tradelogiq_lynxats_tcplevel1_itch_v1_01.event_code.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_tcplevel1_itch_v1_01.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.event_code, range, value, display)

  return offset + length, value
end

-- Expiry Date
tradelogiq_lynxats_tcplevel1_itch_v1_01.expiry_date = {}

-- Size: Expiry Date
tradelogiq_lynxats_tcplevel1_itch_v1_01.expiry_date.size = 8

-- Display: Expiry Date
tradelogiq_lynxats_tcplevel1_itch_v1_01.expiry_date.display = function(value)
  if #value < 8 then
    return "Expiry Date: "..value
  end

  return "Expiry Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Expiry Date
tradelogiq_lynxats_tcplevel1_itch_v1_01.expiry_date.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_tcplevel1_itch_v1_01.expiry_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.expiry_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.expiry_date, range, value, display)

  return offset + length, value
end

-- Frequency
tradelogiq_lynxats_tcplevel1_itch_v1_01.frequency = {}

-- Size: Frequency
tradelogiq_lynxats_tcplevel1_itch_v1_01.frequency.size = 1

-- Display: Frequency
tradelogiq_lynxats_tcplevel1_itch_v1_01.frequency.display = function(value)
  if value == "A" then
    return "Frequency: Annual (A)"
  end
  if value == "S" then
    return "Frequency: Semi Annual (S)"
  end
  if value == "Q" then
    return "Frequency: Quarterly (Q)"
  end
  if value == "M" then
    return "Frequency: Monthly (M)"
  end

  return "Frequency: Unknown("..value..")"
end

-- Dissect: Frequency
tradelogiq_lynxats_tcplevel1_itch_v1_01.frequency.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_tcplevel1_itch_v1_01.frequency.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.frequency.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.frequency, range, value, display)

  return offset + length, value
end

-- Instrument Id
tradelogiq_lynxats_tcplevel1_itch_v1_01.instrument_id = {}

-- Size: Instrument Id
tradelogiq_lynxats_tcplevel1_itch_v1_01.instrument_id.size = 2

-- Display: Instrument Id
tradelogiq_lynxats_tcplevel1_itch_v1_01.instrument_id.display = function(value)
  return "Instrument Id: "..value
end

-- Dissect: Instrument Id
tradelogiq_lynxats_tcplevel1_itch_v1_01.instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_tcplevel1_itch_v1_01.instrument_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.instrument_id, range, value, display)

  return offset + length, value
end

-- Market
tradelogiq_lynxats_tcplevel1_itch_v1_01.market = {}

-- Size: Market
tradelogiq_lynxats_tcplevel1_itch_v1_01.market.size = 1

-- Display: Market
tradelogiq_lynxats_tcplevel1_itch_v1_01.market.display = function(value)
  if value == "t" then
    return "Market: Tsx (t)"
  end
  if value == "v" then
    return "Market: Venture (v)"
  end
  if value == "c" then
    return "Market: Cnsx (c)"
  end
  if value == "q" then
    return "Market: Nasdaq Canada (q)"
  end
  if value == "o" then
    return "Market: Omega (o)"
  end
  if value == "z" then
    return "Market: Aequitas (z)"
  end

  return "Market: Unknown("..value..")"
end

-- Dissect: Market
tradelogiq_lynxats_tcplevel1_itch_v1_01.market.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_tcplevel1_itch_v1_01.market.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.market.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.market, range, value, display)

  return offset + length, value
end

-- Message Type
tradelogiq_lynxats_tcplevel1_itch_v1_01.message_type = {}

-- Size: Message Type
tradelogiq_lynxats_tcplevel1_itch_v1_01.message_type.size = 1

-- Display: Message Type
tradelogiq_lynxats_tcplevel1_itch_v1_01.message_type.display = function(value)
  if value == "W" then
    return "Message Type: Quote Message (W)"
  end
  if value == "T" then
    return "Message Type: Trade Report Message (T)"
  end
  if value == "N" then
    return "Message Type: Trade Bust Message (N)"
  end
  if value == "M" then
    return "Message Type: Trade Correction Message (M)"
  end
  if value == "S" then
    return "Message Type: System Event Message (S)"
  end
  if value == "R" then
    return "Message Type: Stock Directory Message (R)"
  end
  if value == "r" then
    return "Message Type: Extended Stock Directory Message (r)"
  end
  if value == "H" then
    return "Message Type: Stock Status Message (H)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
tradelogiq_lynxats_tcplevel1_itch_v1_01.message_type.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_tcplevel1_itch_v1_01.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.message_type, range, value, display)

  return offset + length, value
end

-- Original Trade Id
tradelogiq_lynxats_tcplevel1_itch_v1_01.original_trade_id = {}

-- Size: Original Trade Id
tradelogiq_lynxats_tcplevel1_itch_v1_01.original_trade_id.size = 4

-- Display: Original Trade Id
tradelogiq_lynxats_tcplevel1_itch_v1_01.original_trade_id.display = function(value)
  return "Original Trade Id: "..value
end

-- Dissect: Original Trade Id
tradelogiq_lynxats_tcplevel1_itch_v1_01.original_trade_id.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_tcplevel1_itch_v1_01.original_trade_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.original_trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.original_trade_id, range, value, display)

  return offset + length, value
end

-- Original Trade Price
tradelogiq_lynxats_tcplevel1_itch_v1_01.original_trade_price = {}

-- Size: Original Trade Price
tradelogiq_lynxats_tcplevel1_itch_v1_01.original_trade_price.size = 8

-- Display: Original Trade Price
tradelogiq_lynxats_tcplevel1_itch_v1_01.original_trade_price.display = function(value)
  return "Original Trade Price: "..value
end

-- Translate: Original Trade Price
tradelogiq_lynxats_tcplevel1_itch_v1_01.original_trade_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Original Trade Price
tradelogiq_lynxats_tcplevel1_itch_v1_01.original_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_tcplevel1_itch_v1_01.original_trade_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = tradelogiq_lynxats_tcplevel1_itch_v1_01.original_trade_price.translate(raw)
  local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.original_trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.original_trade_price, range, value, display)

  return offset + length, value
end

-- Original Trade Size
tradelogiq_lynxats_tcplevel1_itch_v1_01.original_trade_size = {}

-- Size: Original Trade Size
tradelogiq_lynxats_tcplevel1_itch_v1_01.original_trade_size.size = 4

-- Display: Original Trade Size
tradelogiq_lynxats_tcplevel1_itch_v1_01.original_trade_size.display = function(value)
  return "Original Trade Size: "..value
end

-- Dissect: Original Trade Size
tradelogiq_lynxats_tcplevel1_itch_v1_01.original_trade_size.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_tcplevel1_itch_v1_01.original_trade_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.original_trade_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.original_trade_size, range, value, display)

  return offset + length, value
end

-- Packet Length
tradelogiq_lynxats_tcplevel1_itch_v1_01.packet_length = {}

-- Size: Packet Length
tradelogiq_lynxats_tcplevel1_itch_v1_01.packet_length.size = 2

-- Display: Packet Length
tradelogiq_lynxats_tcplevel1_itch_v1_01.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
tradelogiq_lynxats_tcplevel1_itch_v1_01.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_tcplevel1_itch_v1_01.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Password
tradelogiq_lynxats_tcplevel1_itch_v1_01.password = {}

-- Size: Password
tradelogiq_lynxats_tcplevel1_itch_v1_01.password.size = 10

-- Display: Password
tradelogiq_lynxats_tcplevel1_itch_v1_01.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
tradelogiq_lynxats_tcplevel1_itch_v1_01.password.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_tcplevel1_itch_v1_01.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.password, range, value, display)

  return offset + length, value
end

-- Reason
tradelogiq_lynxats_tcplevel1_itch_v1_01.reason = {}

-- Size: Reason
tradelogiq_lynxats_tcplevel1_itch_v1_01.reason.size = 4

-- Display: Reason
tradelogiq_lynxats_tcplevel1_itch_v1_01.reason.display = function(value)
  if value == "R" then
    return "Reason: Regulatory Halt (R)"
  end
  if value == "B" then
    return "Reason: Business Halt (B)"
  end

  return "Reason: Unknown("..value..")"
end

-- Dissect: Reason
tradelogiq_lynxats_tcplevel1_itch_v1_01.reason.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_tcplevel1_itch_v1_01.reason.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.reason, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
tradelogiq_lynxats_tcplevel1_itch_v1_01.reject_reason_code = {}

-- Size: Reject Reason Code
tradelogiq_lynxats_tcplevel1_itch_v1_01.reject_reason_code.size = 1

-- Display: Reject Reason Code
tradelogiq_lynxats_tcplevel1_itch_v1_01.reject_reason_code.display = function(value)
  if value == "A" then
    return "Reject Reason Code: Not Authorized (A)"
  end
  if value == "S" then
    return "Reject Reason Code: Session Not Available (S)"
  end

  return "Reject Reason Code: Unknown("..value..")"
end

-- Dissect: Reject Reason Code
tradelogiq_lynxats_tcplevel1_itch_v1_01.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_tcplevel1_itch_v1_01.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
tradelogiq_lynxats_tcplevel1_itch_v1_01.requested_sequence_number = {}

-- Size: Requested Sequence Number
tradelogiq_lynxats_tcplevel1_itch_v1_01.requested_sequence_number.size = 20

-- Display: Requested Sequence Number
tradelogiq_lynxats_tcplevel1_itch_v1_01.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
tradelogiq_lynxats_tcplevel1_itch_v1_01.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_tcplevel1_itch_v1_01.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
tradelogiq_lynxats_tcplevel1_itch_v1_01.requested_session = {}

-- Size: Requested Session
tradelogiq_lynxats_tcplevel1_itch_v1_01.requested_session.size = 10

-- Display: Requested Session
tradelogiq_lynxats_tcplevel1_itch_v1_01.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
tradelogiq_lynxats_tcplevel1_itch_v1_01.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_tcplevel1_itch_v1_01.requested_session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Reserved 1
tradelogiq_lynxats_tcplevel1_itch_v1_01.reserved_1 = {}

-- Size: Reserved 1
tradelogiq_lynxats_tcplevel1_itch_v1_01.reserved_1.size = 1

-- Display: Reserved 1
tradelogiq_lynxats_tcplevel1_itch_v1_01.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
tradelogiq_lynxats_tcplevel1_itch_v1_01.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_tcplevel1_itch_v1_01.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 2
tradelogiq_lynxats_tcplevel1_itch_v1_01.reserved_2 = {}

-- Size: Reserved 2
tradelogiq_lynxats_tcplevel1_itch_v1_01.reserved_2.size = 2

-- Display: Reserved 2
tradelogiq_lynxats_tcplevel1_itch_v1_01.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
tradelogiq_lynxats_tcplevel1_itch_v1_01.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_tcplevel1_itch_v1_01.reserved_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Reserved 3
tradelogiq_lynxats_tcplevel1_itch_v1_01.reserved_3 = {}

-- Size: Reserved 3
tradelogiq_lynxats_tcplevel1_itch_v1_01.reserved_3.size = 3

-- Display: Reserved 3
tradelogiq_lynxats_tcplevel1_itch_v1_01.reserved_3.display = function(value)
  return "Reserved 3: "..value
end

-- Dissect: Reserved 3
tradelogiq_lynxats_tcplevel1_itch_v1_01.reserved_3.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_tcplevel1_itch_v1_01.reserved_3.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.reserved_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.reserved_3, range, value, display)

  return offset + length, value
end

-- Reserved 9
tradelogiq_lynxats_tcplevel1_itch_v1_01.reserved_9 = {}

-- Size: Reserved 9
tradelogiq_lynxats_tcplevel1_itch_v1_01.reserved_9.size = 9

-- Display: Reserved 9
tradelogiq_lynxats_tcplevel1_itch_v1_01.reserved_9.display = function(value)
  return "Reserved 9: "..value
end

-- Dissect: Reserved 9
tradelogiq_lynxats_tcplevel1_itch_v1_01.reserved_9.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_tcplevel1_itch_v1_01.reserved_9.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.reserved_9.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.reserved_9, range, value, display)

  return offset + length, value
end

-- Security Type
tradelogiq_lynxats_tcplevel1_itch_v1_01.security_type = {}

-- Size: Security Type
tradelogiq_lynxats_tcplevel1_itch_v1_01.security_type.size = 1

-- Display: Security Type
tradelogiq_lynxats_tcplevel1_itch_v1_01.security_type.display = function(value)
  if value == "d" then
    return "Security Type: Debentures (d)"
  end
  if value == "r" then
    return "Security Type: Rights (r)"
  end
  if value == "n" then
    return "Security Type: Notes (n)"
  end
  if value == "w" then
    return "Security Type: Warrants (w)"
  end

  return "Security Type: Unknown("..value..")"
end

-- Dissect: Security Type
tradelogiq_lynxats_tcplevel1_itch_v1_01.security_type.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_tcplevel1_itch_v1_01.security_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.security_type, range, value, display)

  return offset + length, value
end

-- Sell Broker
tradelogiq_lynxats_tcplevel1_itch_v1_01.sell_broker = {}

-- Size: Sell Broker
tradelogiq_lynxats_tcplevel1_itch_v1_01.sell_broker.size = 2

-- Display: Sell Broker
tradelogiq_lynxats_tcplevel1_itch_v1_01.sell_broker.display = function(value)
  return "Sell Broker: "..value
end

-- Dissect: Sell Broker
tradelogiq_lynxats_tcplevel1_itch_v1_01.sell_broker.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_tcplevel1_itch_v1_01.sell_broker.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.sell_broker.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.sell_broker, range, value, display)

  return offset + length, value
end

-- Server Packet Type
tradelogiq_lynxats_tcplevel1_itch_v1_01.server_packet_type = {}

-- Size: Server Packet Type
tradelogiq_lynxats_tcplevel1_itch_v1_01.server_packet_type.size = 1

-- Display: Server Packet Type
tradelogiq_lynxats_tcplevel1_itch_v1_01.server_packet_type.display = function(value)
  if value == "A" then
    return "Server Packet Type: Login Accepted Packet (A)"
  end
  if value == "J" then
    return "Server Packet Type: Login Rejected Packet (J)"
  end
  if value == "S" then
    return "Server Packet Type: Sequenced Data Packet (S)"
  end
  if value == "H" then
    return "Server Packet Type: Server Heartbeat Packet (H)"
  end

  return "Server Packet Type: Unknown("..value..")"
end

-- Dissect: Server Packet Type
tradelogiq_lynxats_tcplevel1_itch_v1_01.server_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_tcplevel1_itch_v1_01.server_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.server_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.server_packet_type, range, value, display)

  return offset + length, value
end

-- Shortable
tradelogiq_lynxats_tcplevel1_itch_v1_01.shortable = {}

-- Size: Shortable
tradelogiq_lynxats_tcplevel1_itch_v1_01.shortable.size = 1

-- Display: Shortable
tradelogiq_lynxats_tcplevel1_itch_v1_01.shortable.display = function(value)
  if value == "E" then
    return "Shortable: Short Exempt (E)"
  end
  if value == "S" then
    return "Shortable: Shortable (S)"
  end
  if value == "N" then
    return "Shortable: Not Shortable (N)"
  end

  return "Shortable: Unknown("..value..")"
end

-- Dissect: Shortable
tradelogiq_lynxats_tcplevel1_itch_v1_01.shortable.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_tcplevel1_itch_v1_01.shortable.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.shortable.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.shortable, range, value, display)

  return offset + length, value
end

-- Stock
tradelogiq_lynxats_tcplevel1_itch_v1_01.stock = {}

-- Size: Stock
tradelogiq_lynxats_tcplevel1_itch_v1_01.stock.size = 10

-- Display: Stock
tradelogiq_lynxats_tcplevel1_itch_v1_01.stock.display = function(value)
  return "Stock: "..value
end

-- Dissect: Stock
tradelogiq_lynxats_tcplevel1_itch_v1_01.stock.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_tcplevel1_itch_v1_01.stock.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.stock.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.stock, range, value, display)

  return offset + length, value
end

-- Stock Symbol
tradelogiq_lynxats_tcplevel1_itch_v1_01.stock_symbol = {}

-- Size: Stock Symbol
tradelogiq_lynxats_tcplevel1_itch_v1_01.stock_symbol.size = 10

-- Display: Stock Symbol
tradelogiq_lynxats_tcplevel1_itch_v1_01.stock_symbol.display = function(value)
  return "Stock Symbol: "..value
end

-- Dissect: Stock Symbol
tradelogiq_lynxats_tcplevel1_itch_v1_01.stock_symbol.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_tcplevel1_itch_v1_01.stock_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.stock_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.stock_symbol, range, value, display)

  return offset + length, value
end

-- Timestamp
tradelogiq_lynxats_tcplevel1_itch_v1_01.timestamp = {}

-- Size: Timestamp
tradelogiq_lynxats_tcplevel1_itch_v1_01.timestamp.size = 8

-- Display: Timestamp
tradelogiq_lynxats_tcplevel1_itch_v1_01.timestamp.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if tradelogiq_lynxats_tcplevel1_itch_v1_01.timestamp_format == 0 then
    return "Timestamp: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (calculate from capture date + UTC offset)
  if tradelogiq_lynxats_tcplevel1_itch_v1_01.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = tradelogiq_lynxats_tcplevel1_itch_v1_01.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", nanoseconds)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
tradelogiq_lynxats_tcplevel1_itch_v1_01.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_tcplevel1_itch_v1_01.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trade Id
tradelogiq_lynxats_tcplevel1_itch_v1_01.trade_id = {}

-- Size: Trade Id
tradelogiq_lynxats_tcplevel1_itch_v1_01.trade_id.size = 4

-- Display: Trade Id
tradelogiq_lynxats_tcplevel1_itch_v1_01.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
tradelogiq_lynxats_tcplevel1_itch_v1_01.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_tcplevel1_itch_v1_01.trade_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trade Price
tradelogiq_lynxats_tcplevel1_itch_v1_01.trade_price = {}

-- Size: Trade Price
tradelogiq_lynxats_tcplevel1_itch_v1_01.trade_price.size = 8

-- Display: Trade Price
tradelogiq_lynxats_tcplevel1_itch_v1_01.trade_price.display = function(value)
  return "Trade Price: "..value
end

-- Translate: Trade Price
tradelogiq_lynxats_tcplevel1_itch_v1_01.trade_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Trade Price
tradelogiq_lynxats_tcplevel1_itch_v1_01.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_tcplevel1_itch_v1_01.trade_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = tradelogiq_lynxats_tcplevel1_itch_v1_01.trade_price.translate(raw)
  local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Trade Size
tradelogiq_lynxats_tcplevel1_itch_v1_01.trade_size = {}

-- Size: Trade Size
tradelogiq_lynxats_tcplevel1_itch_v1_01.trade_size.size = 4

-- Display: Trade Size
tradelogiq_lynxats_tcplevel1_itch_v1_01.trade_size.display = function(value)
  return "Trade Size: "..value
end

-- Dissect: Trade Size
tradelogiq_lynxats_tcplevel1_itch_v1_01.trade_size.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_tcplevel1_itch_v1_01.trade_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.trade_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.trade_size, range, value, display)

  return offset + length, value
end

-- Trading State
tradelogiq_lynxats_tcplevel1_itch_v1_01.trading_state = {}

-- Size: Trading State
tradelogiq_lynxats_tcplevel1_itch_v1_01.trading_state.size = 1

-- Display: Trading State
tradelogiq_lynxats_tcplevel1_itch_v1_01.trading_state.display = function(value)
  if value == "H" then
    return "Trading State: Halted (H)"
  end
  if value == "T" then
    return "Trading State: Trading (T)"
  end

  return "Trading State: Unknown("..value..")"
end

-- Dissect: Trading State
tradelogiq_lynxats_tcplevel1_itch_v1_01.trading_state.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_tcplevel1_itch_v1_01.trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.trading_state, range, value, display)

  return offset + length, value
end

-- Unsequenced Message
tradelogiq_lynxats_tcplevel1_itch_v1_01.unsequenced_message = {}

-- Display: Unsequenced Message
tradelogiq_lynxats_tcplevel1_itch_v1_01.unsequenced_message.display = function(value)
  return "Unsequenced Message: "..value
end

-- Dissect runtime sized field: Unsequenced Message
tradelogiq_lynxats_tcplevel1_itch_v1_01.unsequenced_message.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.unsequenced_message.display(value, packet, parent, size)

  parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.unsequenced_message, range, value, display)

  return offset + size, value
end

-- Username
tradelogiq_lynxats_tcplevel1_itch_v1_01.username = {}

-- Size: Username
tradelogiq_lynxats_tcplevel1_itch_v1_01.username.size = 6

-- Display: Username
tradelogiq_lynxats_tcplevel1_itch_v1_01.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
tradelogiq_lynxats_tcplevel1_itch_v1_01.username.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_tcplevel1_itch_v1_01.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Tradelogiq LynxAts TcpLevel1 Itch 1.01
-----------------------------------------------------------------------

-- Stock Status Message
tradelogiq_lynxats_tcplevel1_itch_v1_01.stock_status_message = {}

-- Size: Stock Status Message
tradelogiq_lynxats_tcplevel1_itch_v1_01.stock_status_message.size =
  tradelogiq_lynxats_tcplevel1_itch_v1_01.trading_state.size + 
  tradelogiq_lynxats_tcplevel1_itch_v1_01.stock.size + 
  tradelogiq_lynxats_tcplevel1_itch_v1_01.timestamp.size + 
  tradelogiq_lynxats_tcplevel1_itch_v1_01.reason.size

-- Display: Stock Status Message
tradelogiq_lynxats_tcplevel1_itch_v1_01.stock_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Status Message
tradelogiq_lynxats_tcplevel1_itch_v1_01.stock_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading State: Alpha
  index, trading_state = tradelogiq_lynxats_tcplevel1_itch_v1_01.trading_state.dissect(buffer, index, packet, parent)

  -- Stock: Alphanumeric & '.'
  index, stock = tradelogiq_lynxats_tcplevel1_itch_v1_01.stock.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = tradelogiq_lynxats_tcplevel1_itch_v1_01.timestamp.dissect(buffer, index, packet, parent)

  -- Reason: Alphanumeric
  index, reason = tradelogiq_lynxats_tcplevel1_itch_v1_01.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Status Message
tradelogiq_lynxats_tcplevel1_itch_v1_01.stock_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.stock_status_message, buffer(offset, 0))
    local index = tradelogiq_lynxats_tcplevel1_itch_v1_01.stock_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.stock_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tradelogiq_lynxats_tcplevel1_itch_v1_01.stock_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Extended Stock Directory Message
tradelogiq_lynxats_tcplevel1_itch_v1_01.extended_stock_directory_message = {}

-- Size: Extended Stock Directory Message
tradelogiq_lynxats_tcplevel1_itch_v1_01.extended_stock_directory_message.size =
  tradelogiq_lynxats_tcplevel1_itch_v1_01.market.size + 
  tradelogiq_lynxats_tcplevel1_itch_v1_01.stock.size + 
  tradelogiq_lynxats_tcplevel1_itch_v1_01.timestamp.size + 
  tradelogiq_lynxats_tcplevel1_itch_v1_01.board_lot_size.size + 
  tradelogiq_lynxats_tcplevel1_itch_v1_01.instrument_id.size + 
  tradelogiq_lynxats_tcplevel1_itch_v1_01.shortable.size + 
  tradelogiq_lynxats_tcplevel1_itch_v1_01.frequency.size + 
  tradelogiq_lynxats_tcplevel1_itch_v1_01.reserved_9.size + 
  tradelogiq_lynxats_tcplevel1_itch_v1_01.currency.size + 
  tradelogiq_lynxats_tcplevel1_itch_v1_01.security_type.size + 
  tradelogiq_lynxats_tcplevel1_itch_v1_01.expiry_date.size + 
  tradelogiq_lynxats_tcplevel1_itch_v1_01.description.size + 
  tradelogiq_lynxats_tcplevel1_itch_v1_01.reserved_3.size

-- Display: Extended Stock Directory Message
tradelogiq_lynxats_tcplevel1_itch_v1_01.extended_stock_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Extended Stock Directory Message
tradelogiq_lynxats_tcplevel1_itch_v1_01.extended_stock_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market: Alphanumeric
  index, market = tradelogiq_lynxats_tcplevel1_itch_v1_01.market.dissect(buffer, index, packet, parent)

  -- Stock: Alphanumeric & '.'
  index, stock = tradelogiq_lynxats_tcplevel1_itch_v1_01.stock.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = tradelogiq_lynxats_tcplevel1_itch_v1_01.timestamp.dissect(buffer, index, packet, parent)

  -- Board Lot Size: Integer
  index, board_lot_size = tradelogiq_lynxats_tcplevel1_itch_v1_01.board_lot_size.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = tradelogiq_lynxats_tcplevel1_itch_v1_01.instrument_id.dissect(buffer, index, packet, parent)

  -- Shortable: Alpha
  index, shortable = tradelogiq_lynxats_tcplevel1_itch_v1_01.shortable.dissect(buffer, index, packet, parent)

  -- Frequency: Alpha
  index, frequency = tradelogiq_lynxats_tcplevel1_itch_v1_01.frequency.dissect(buffer, index, packet, parent)

  -- Reserved 9: Alphanumeric
  index, reserved_9 = tradelogiq_lynxats_tcplevel1_itch_v1_01.reserved_9.dissect(buffer, index, packet, parent)

  -- Currency: Alpha
  index, currency = tradelogiq_lynxats_tcplevel1_itch_v1_01.currency.dissect(buffer, index, packet, parent)

  -- Security Type: Alpha
  index, security_type = tradelogiq_lynxats_tcplevel1_itch_v1_01.security_type.dissect(buffer, index, packet, parent)

  -- Expiry Date: Date
  index, expiry_date = tradelogiq_lynxats_tcplevel1_itch_v1_01.expiry_date.dissect(buffer, index, packet, parent)

  -- Description: Alphanumeric
  index, description = tradelogiq_lynxats_tcplevel1_itch_v1_01.description.dissect(buffer, index, packet, parent)

  -- Reserved 3: Alpha
  index, reserved_3 = tradelogiq_lynxats_tcplevel1_itch_v1_01.reserved_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Extended Stock Directory Message
tradelogiq_lynxats_tcplevel1_itch_v1_01.extended_stock_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.extended_stock_directory_message, buffer(offset, 0))
    local index = tradelogiq_lynxats_tcplevel1_itch_v1_01.extended_stock_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.extended_stock_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tradelogiq_lynxats_tcplevel1_itch_v1_01.extended_stock_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Stock Directory Message
tradelogiq_lynxats_tcplevel1_itch_v1_01.stock_directory_message = {}

-- Size: Stock Directory Message
tradelogiq_lynxats_tcplevel1_itch_v1_01.stock_directory_message.size =
  tradelogiq_lynxats_tcplevel1_itch_v1_01.market.size + 
  tradelogiq_lynxats_tcplevel1_itch_v1_01.stock.size + 
  tradelogiq_lynxats_tcplevel1_itch_v1_01.timestamp.size + 
  tradelogiq_lynxats_tcplevel1_itch_v1_01.board_lot_size.size + 
  tradelogiq_lynxats_tcplevel1_itch_v1_01.instrument_id.size + 
  tradelogiq_lynxats_tcplevel1_itch_v1_01.shortable.size + 
  tradelogiq_lynxats_tcplevel1_itch_v1_01.dividend_indicator.size + 
  tradelogiq_lynxats_tcplevel1_itch_v1_01.reserved_9.size + 
  tradelogiq_lynxats_tcplevel1_itch_v1_01.currency.size

-- Display: Stock Directory Message
tradelogiq_lynxats_tcplevel1_itch_v1_01.stock_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Directory Message
tradelogiq_lynxats_tcplevel1_itch_v1_01.stock_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market: Alphanumeric
  index, market = tradelogiq_lynxats_tcplevel1_itch_v1_01.market.dissect(buffer, index, packet, parent)

  -- Stock: Alphanumeric & '.'
  index, stock = tradelogiq_lynxats_tcplevel1_itch_v1_01.stock.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = tradelogiq_lynxats_tcplevel1_itch_v1_01.timestamp.dissect(buffer, index, packet, parent)

  -- Board Lot Size: Integer
  index, board_lot_size = tradelogiq_lynxats_tcplevel1_itch_v1_01.board_lot_size.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = tradelogiq_lynxats_tcplevel1_itch_v1_01.instrument_id.dissect(buffer, index, packet, parent)

  -- Shortable: Alpha
  index, shortable = tradelogiq_lynxats_tcplevel1_itch_v1_01.shortable.dissect(buffer, index, packet, parent)

  -- Dividend Indicator: Alpha
  index, dividend_indicator = tradelogiq_lynxats_tcplevel1_itch_v1_01.dividend_indicator.dissect(buffer, index, packet, parent)

  -- Reserved 9: Alphanumeric
  index, reserved_9 = tradelogiq_lynxats_tcplevel1_itch_v1_01.reserved_9.dissect(buffer, index, packet, parent)

  -- Currency: Alpha
  index, currency = tradelogiq_lynxats_tcplevel1_itch_v1_01.currency.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Directory Message
tradelogiq_lynxats_tcplevel1_itch_v1_01.stock_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.stock_directory_message, buffer(offset, 0))
    local index = tradelogiq_lynxats_tcplevel1_itch_v1_01.stock_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.stock_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tradelogiq_lynxats_tcplevel1_itch_v1_01.stock_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
tradelogiq_lynxats_tcplevel1_itch_v1_01.system_event_message = {}

-- Size: System Event Message
tradelogiq_lynxats_tcplevel1_itch_v1_01.system_event_message.size =
  tradelogiq_lynxats_tcplevel1_itch_v1_01.event_code.size + 
  tradelogiq_lynxats_tcplevel1_itch_v1_01.reserved_2.size + 
  tradelogiq_lynxats_tcplevel1_itch_v1_01.timestamp.size

-- Display: System Event Message
tradelogiq_lynxats_tcplevel1_itch_v1_01.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
tradelogiq_lynxats_tcplevel1_itch_v1_01.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Event Code: Alphanumeric
  index, event_code = tradelogiq_lynxats_tcplevel1_itch_v1_01.event_code.dissect(buffer, index, packet, parent)

  -- Reserved 2: Alpha
  index, reserved_2 = tradelogiq_lynxats_tcplevel1_itch_v1_01.reserved_2.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = tradelogiq_lynxats_tcplevel1_itch_v1_01.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
tradelogiq_lynxats_tcplevel1_itch_v1_01.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.system_event_message, buffer(offset, 0))
    local index = tradelogiq_lynxats_tcplevel1_itch_v1_01.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tradelogiq_lynxats_tcplevel1_itch_v1_01.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Correction Message
tradelogiq_lynxats_tcplevel1_itch_v1_01.trade_correction_message = {}

-- Size: Trade Correction Message
tradelogiq_lynxats_tcplevel1_itch_v1_01.trade_correction_message.size =
  tradelogiq_lynxats_tcplevel1_itch_v1_01.reserved_1.size + 
  tradelogiq_lynxats_tcplevel1_itch_v1_01.stock_symbol.size + 
  tradelogiq_lynxats_tcplevel1_itch_v1_01.timestamp.size + 
  tradelogiq_lynxats_tcplevel1_itch_v1_01.original_trade_id.size + 
  tradelogiq_lynxats_tcplevel1_itch_v1_01.original_trade_price.size + 
  tradelogiq_lynxats_tcplevel1_itch_v1_01.original_trade_size.size + 
  tradelogiq_lynxats_tcplevel1_itch_v1_01.corrected_trade_price.size + 
  tradelogiq_lynxats_tcplevel1_itch_v1_01.corrected_trade_size.size

-- Display: Trade Correction Message
tradelogiq_lynxats_tcplevel1_itch_v1_01.trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Correction Message
tradelogiq_lynxats_tcplevel1_itch_v1_01.trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 1: Alpha
  index, reserved_1 = tradelogiq_lynxats_tcplevel1_itch_v1_01.reserved_1.dissect(buffer, index, packet, parent)

  -- Stock Symbol: Alphanumeric & '.'
  index, stock_symbol = tradelogiq_lynxats_tcplevel1_itch_v1_01.stock_symbol.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = tradelogiq_lynxats_tcplevel1_itch_v1_01.timestamp.dissect(buffer, index, packet, parent)

  -- Original Trade Id: Integer
  index, original_trade_id = tradelogiq_lynxats_tcplevel1_itch_v1_01.original_trade_id.dissect(buffer, index, packet, parent)

  -- Original Trade Price: Price
  index, original_trade_price = tradelogiq_lynxats_tcplevel1_itch_v1_01.original_trade_price.dissect(buffer, index, packet, parent)

  -- Original Trade Size: Integer
  index, original_trade_size = tradelogiq_lynxats_tcplevel1_itch_v1_01.original_trade_size.dissect(buffer, index, packet, parent)

  -- Corrected Trade Price: Price
  index, corrected_trade_price = tradelogiq_lynxats_tcplevel1_itch_v1_01.corrected_trade_price.dissect(buffer, index, packet, parent)

  -- Corrected Trade Size: Integer
  index, corrected_trade_size = tradelogiq_lynxats_tcplevel1_itch_v1_01.corrected_trade_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Correction Message
tradelogiq_lynxats_tcplevel1_itch_v1_01.trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.trade_correction_message, buffer(offset, 0))
    local index = tradelogiq_lynxats_tcplevel1_itch_v1_01.trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tradelogiq_lynxats_tcplevel1_itch_v1_01.trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Bust Message
tradelogiq_lynxats_tcplevel1_itch_v1_01.trade_bust_message = {}

-- Size: Trade Bust Message
tradelogiq_lynxats_tcplevel1_itch_v1_01.trade_bust_message.size =
  tradelogiq_lynxats_tcplevel1_itch_v1_01.reserved_1.size + 
  tradelogiq_lynxats_tcplevel1_itch_v1_01.stock_symbol.size + 
  tradelogiq_lynxats_tcplevel1_itch_v1_01.timestamp.size + 
  tradelogiq_lynxats_tcplevel1_itch_v1_01.trade_id.size

-- Display: Trade Bust Message
tradelogiq_lynxats_tcplevel1_itch_v1_01.trade_bust_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Bust Message
tradelogiq_lynxats_tcplevel1_itch_v1_01.trade_bust_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 1: Alpha
  index, reserved_1 = tradelogiq_lynxats_tcplevel1_itch_v1_01.reserved_1.dissect(buffer, index, packet, parent)

  -- Stock Symbol: Alphanumeric & '.'
  index, stock_symbol = tradelogiq_lynxats_tcplevel1_itch_v1_01.stock_symbol.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = tradelogiq_lynxats_tcplevel1_itch_v1_01.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Id: Integer
  index, trade_id = tradelogiq_lynxats_tcplevel1_itch_v1_01.trade_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Bust Message
tradelogiq_lynxats_tcplevel1_itch_v1_01.trade_bust_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.trade_bust_message, buffer(offset, 0))
    local index = tradelogiq_lynxats_tcplevel1_itch_v1_01.trade_bust_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.trade_bust_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tradelogiq_lynxats_tcplevel1_itch_v1_01.trade_bust_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Report Message
tradelogiq_lynxats_tcplevel1_itch_v1_01.trade_report_message = {}

-- Size: Trade Report Message
tradelogiq_lynxats_tcplevel1_itch_v1_01.trade_report_message.size =
  tradelogiq_lynxats_tcplevel1_itch_v1_01.conditions.size + 
  tradelogiq_lynxats_tcplevel1_itch_v1_01.stock_symbol.size + 
  tradelogiq_lynxats_tcplevel1_itch_v1_01.timestamp.size + 
  tradelogiq_lynxats_tcplevel1_itch_v1_01.trade_id.size + 
  tradelogiq_lynxats_tcplevel1_itch_v1_01.trade_price.size + 
  tradelogiq_lynxats_tcplevel1_itch_v1_01.trade_size.size + 
  tradelogiq_lynxats_tcplevel1_itch_v1_01.buy_broker.size + 
  tradelogiq_lynxats_tcplevel1_itch_v1_01.sell_broker.size

-- Display: Trade Report Message
tradelogiq_lynxats_tcplevel1_itch_v1_01.trade_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Report Message
tradelogiq_lynxats_tcplevel1_itch_v1_01.trade_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Conditions: Alpha
  index, conditions = tradelogiq_lynxats_tcplevel1_itch_v1_01.conditions.dissect(buffer, index, packet, parent)

  -- Stock Symbol: Alphanumeric & '.'
  index, stock_symbol = tradelogiq_lynxats_tcplevel1_itch_v1_01.stock_symbol.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = tradelogiq_lynxats_tcplevel1_itch_v1_01.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Id: Integer
  index, trade_id = tradelogiq_lynxats_tcplevel1_itch_v1_01.trade_id.dissect(buffer, index, packet, parent)

  -- Trade Price: Integer
  index, trade_price = tradelogiq_lynxats_tcplevel1_itch_v1_01.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Size: Integer
  index, trade_size = tradelogiq_lynxats_tcplevel1_itch_v1_01.trade_size.dissect(buffer, index, packet, parent)

  -- Buy Broker: Integer
  index, buy_broker = tradelogiq_lynxats_tcplevel1_itch_v1_01.buy_broker.dissect(buffer, index, packet, parent)

  -- Sell Broker: Integer
  index, sell_broker = tradelogiq_lynxats_tcplevel1_itch_v1_01.sell_broker.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Report Message
tradelogiq_lynxats_tcplevel1_itch_v1_01.trade_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.trade_report_message, buffer(offset, 0))
    local index = tradelogiq_lynxats_tcplevel1_itch_v1_01.trade_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.trade_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tradelogiq_lynxats_tcplevel1_itch_v1_01.trade_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Message
tradelogiq_lynxats_tcplevel1_itch_v1_01.quote_message = {}

-- Size: Quote Message
tradelogiq_lynxats_tcplevel1_itch_v1_01.quote_message.size =
  tradelogiq_lynxats_tcplevel1_itch_v1_01.reserved_1.size + 
  tradelogiq_lynxats_tcplevel1_itch_v1_01.stock_symbol.size + 
  tradelogiq_lynxats_tcplevel1_itch_v1_01.timestamp.size + 
  tradelogiq_lynxats_tcplevel1_itch_v1_01.best_bid_price.size + 
  tradelogiq_lynxats_tcplevel1_itch_v1_01.best_bid_size.size + 
  tradelogiq_lynxats_tcplevel1_itch_v1_01.best_ask_price.size + 
  tradelogiq_lynxats_tcplevel1_itch_v1_01.best_ask_size.size

-- Display: Quote Message
tradelogiq_lynxats_tcplevel1_itch_v1_01.quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Message
tradelogiq_lynxats_tcplevel1_itch_v1_01.quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 1: Alpha
  index, reserved_1 = tradelogiq_lynxats_tcplevel1_itch_v1_01.reserved_1.dissect(buffer, index, packet, parent)

  -- Stock Symbol: Alphanumeric & '.'
  index, stock_symbol = tradelogiq_lynxats_tcplevel1_itch_v1_01.stock_symbol.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = tradelogiq_lynxats_tcplevel1_itch_v1_01.timestamp.dissect(buffer, index, packet, parent)

  -- Best Bid Price: Price
  index, best_bid_price = tradelogiq_lynxats_tcplevel1_itch_v1_01.best_bid_price.dissect(buffer, index, packet, parent)

  -- Best Bid Size: Integer
  index, best_bid_size = tradelogiq_lynxats_tcplevel1_itch_v1_01.best_bid_size.dissect(buffer, index, packet, parent)

  -- Best Ask Price: Price
  index, best_ask_price = tradelogiq_lynxats_tcplevel1_itch_v1_01.best_ask_price.dissect(buffer, index, packet, parent)

  -- Best Ask Size: Integer
  index, best_ask_size = tradelogiq_lynxats_tcplevel1_itch_v1_01.best_ask_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Message
tradelogiq_lynxats_tcplevel1_itch_v1_01.quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.quote_message, buffer(offset, 0))
    local index = tradelogiq_lynxats_tcplevel1_itch_v1_01.quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tradelogiq_lynxats_tcplevel1_itch_v1_01.quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
tradelogiq_lynxats_tcplevel1_itch_v1_01.payload = {}

-- Dissect: Payload
tradelogiq_lynxats_tcplevel1_itch_v1_01.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Quote Message
  if message_type == "W" then
    return tradelogiq_lynxats_tcplevel1_itch_v1_01.quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Report Message
  if message_type == "T" then
    return tradelogiq_lynxats_tcplevel1_itch_v1_01.trade_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Bust Message
  if message_type == "N" then
    return tradelogiq_lynxats_tcplevel1_itch_v1_01.trade_bust_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Correction Message
  if message_type == "M" then
    return tradelogiq_lynxats_tcplevel1_itch_v1_01.trade_correction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System Event Message
  if message_type == "S" then
    return tradelogiq_lynxats_tcplevel1_itch_v1_01.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Directory Message
  if message_type == "R" then
    return tradelogiq_lynxats_tcplevel1_itch_v1_01.stock_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Extended Stock Directory Message
  if message_type == "r" then
    return tradelogiq_lynxats_tcplevel1_itch_v1_01.extended_stock_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Status Message
  if message_type == "H" then
    return tradelogiq_lynxats_tcplevel1_itch_v1_01.stock_status_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Data Packet
tradelogiq_lynxats_tcplevel1_itch_v1_01.sequenced_data_packet = {}

-- Calculate size of: Sequenced Data Packet
tradelogiq_lynxats_tcplevel1_itch_v1_01.sequenced_data_packet.size = function(buffer, offset)
  local index = 0

  index = index + tradelogiq_lynxats_tcplevel1_itch_v1_01.message_type.size

  -- Parse runtime size of: Payload
  index = index + buffer(offset + index - 4, 2):uint()

  return index
end

-- Display: Sequenced Data Packet
tradelogiq_lynxats_tcplevel1_itch_v1_01.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
tradelogiq_lynxats_tcplevel1_itch_v1_01.sequenced_data_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: 1 Byte Ascii String Enum with 8 values
  index, message_type = tradelogiq_lynxats_tcplevel1_itch_v1_01.message_type.dissect(buffer, index, packet, parent)

  -- Payload: Runtime Type with 8 branches
  index = tradelogiq_lynxats_tcplevel1_itch_v1_01.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Sequenced Data Packet
tradelogiq_lynxats_tcplevel1_itch_v1_01.sequenced_data_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.sequenced_data_packet, buffer(offset, 0))
    local index = tradelogiq_lynxats_tcplevel1_itch_v1_01.sequenced_data_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.sequenced_data_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tradelogiq_lynxats_tcplevel1_itch_v1_01.sequenced_data_packet.fields(buffer, offset, packet, parent)
  end
end

-- Server Heartbeat
tradelogiq_lynxats_tcplevel1_itch_v1_01.server_heartbeat = {}

-- Display: Server Heartbeat
tradelogiq_lynxats_tcplevel1_itch_v1_01.server_heartbeat.display = function(packet, parent, length)
  return "Server Heartbeat"
end


-- Dissect: Server Heartbeat
tradelogiq_lynxats_tcplevel1_itch_v1_01.server_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.server_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Login Rejected Packet
tradelogiq_lynxats_tcplevel1_itch_v1_01.login_rejected_packet = {}

-- Size: Login Rejected Packet
tradelogiq_lynxats_tcplevel1_itch_v1_01.login_rejected_packet.size =
  tradelogiq_lynxats_tcplevel1_itch_v1_01.reject_reason_code.size

-- Display: Login Rejected Packet
tradelogiq_lynxats_tcplevel1_itch_v1_01.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
tradelogiq_lynxats_tcplevel1_itch_v1_01.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String Enum with 2 values
  index, reject_reason_code = tradelogiq_lynxats_tcplevel1_itch_v1_01.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
tradelogiq_lynxats_tcplevel1_itch_v1_01.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.login_rejected_packet, buffer(offset, 0))
    local index = tradelogiq_lynxats_tcplevel1_itch_v1_01.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tradelogiq_lynxats_tcplevel1_itch_v1_01.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
tradelogiq_lynxats_tcplevel1_itch_v1_01.login_accepted_packet = {}

-- Size: Login Accepted Packet
tradelogiq_lynxats_tcplevel1_itch_v1_01.login_accepted_packet.size =
  tradelogiq_lynxats_tcplevel1_itch_v1_01.accepted_session.size + 
  tradelogiq_lynxats_tcplevel1_itch_v1_01.accepted_sequence_number.size

-- Display: Login Accepted Packet
tradelogiq_lynxats_tcplevel1_itch_v1_01.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
tradelogiq_lynxats_tcplevel1_itch_v1_01.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Accepted Session: 10 Byte Ascii String
  index, accepted_session = tradelogiq_lynxats_tcplevel1_itch_v1_01.accepted_session.dissect(buffer, index, packet, parent)

  -- Accepted Sequence Number: 20 Byte Ascii String
  index, accepted_sequence_number = tradelogiq_lynxats_tcplevel1_itch_v1_01.accepted_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Accepted Packet
tradelogiq_lynxats_tcplevel1_itch_v1_01.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.login_accepted_packet, buffer(offset, 0))
    local index = tradelogiq_lynxats_tcplevel1_itch_v1_01.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tradelogiq_lynxats_tcplevel1_itch_v1_01.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Server Payload
tradelogiq_lynxats_tcplevel1_itch_v1_01.server_payload = {}

-- Dissect: Server Payload
tradelogiq_lynxats_tcplevel1_itch_v1_01.server_payload.dissect = function(buffer, offset, packet, parent, server_packet_type)
  -- Dissect Login Accepted Packet
  if server_packet_type == "A" then
    return tradelogiq_lynxats_tcplevel1_itch_v1_01.login_accepted_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if server_packet_type == "J" then
    return tradelogiq_lynxats_tcplevel1_itch_v1_01.login_rejected_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Server Heartbeat
  if server_packet_type == "H" then
    return tradelogiq_lynxats_tcplevel1_itch_v1_01.server_heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Data Packet
  if server_packet_type == "S" then
    return tradelogiq_lynxats_tcplevel1_itch_v1_01.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Server Packet Header
tradelogiq_lynxats_tcplevel1_itch_v1_01.server_packet_header = {}

-- Size: Server Packet Header
tradelogiq_lynxats_tcplevel1_itch_v1_01.server_packet_header.size =
  tradelogiq_lynxats_tcplevel1_itch_v1_01.packet_length.size + 
  tradelogiq_lynxats_tcplevel1_itch_v1_01.server_packet_type.size

-- Display: Server Packet Header
tradelogiq_lynxats_tcplevel1_itch_v1_01.server_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Packet Header
tradelogiq_lynxats_tcplevel1_itch_v1_01.server_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = tradelogiq_lynxats_tcplevel1_itch_v1_01.packet_length.dissect(buffer, index, packet, parent)

  -- Server Packet Type: 1 Byte Ascii String Enum with 4 values
  index, server_packet_type = tradelogiq_lynxats_tcplevel1_itch_v1_01.server_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Server Packet Header
tradelogiq_lynxats_tcplevel1_itch_v1_01.server_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.server_packet_header, buffer(offset, 0))
    local index = tradelogiq_lynxats_tcplevel1_itch_v1_01.server_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.server_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tradelogiq_lynxats_tcplevel1_itch_v1_01.server_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Soup Tcp Packet
tradelogiq_lynxats_tcplevel1_itch_v1_01.server_soup_tcp_packet = {}

-- Display: Server Soup Tcp Packet
tradelogiq_lynxats_tcplevel1_itch_v1_01.server_soup_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Soup Tcp Packet
tradelogiq_lynxats_tcplevel1_itch_v1_01.server_soup_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_server_soup_tcp_packet)
  local index = offset

  -- Server Packet Header: Struct of 2 fields
  index, server_packet_header = tradelogiq_lynxats_tcplevel1_itch_v1_01.server_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Server Packet Type
  local server_packet_type = buffer(index - 1, 1):string()

  -- Server Payload: Runtime Type with 4 branches
  index = tradelogiq_lynxats_tcplevel1_itch_v1_01.server_payload.dissect(buffer, index, packet, parent, server_packet_type)

  return index
end

-- Dissect: Server Soup Tcp Packet
tradelogiq_lynxats_tcplevel1_itch_v1_01.server_soup_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_server_soup_tcp_packet)
  local index = offset + size_of_server_soup_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.server_soup_tcp_packet, buffer(offset, 0))
    local current = tradelogiq_lynxats_tcplevel1_itch_v1_01.server_soup_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_tcp_packet)
    parent:set_len(size_of_server_soup_tcp_packet)
    local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.server_soup_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    tradelogiq_lynxats_tcplevel1_itch_v1_01.server_soup_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Server Soup Tcp Packet
local server_soup_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < tradelogiq_lynxats_tcplevel1_itch_v1_01.server_packet_header.size then
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
tradelogiq_lynxats_tcplevel1_itch_v1_01.server_packet = {}

-- Verify required size of Tcp packet
tradelogiq_lynxats_tcplevel1_itch_v1_01.server_packet.requiredsize = function(buffer)
  return buffer:len() >= tradelogiq_lynxats_tcplevel1_itch_v1_01.server_packet_header.size
end

-- Dissect Server Packet
tradelogiq_lynxats_tcplevel1_itch_v1_01.server_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Server Soup Tcp Packet
  local end_of_payload = buffer:len()

  -- Server Soup Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_server_soup_tcp_packet = server_soup_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = tradelogiq_lynxats_tcplevel1_itch_v1_01.server_soup_tcp_packet.dissect(buffer, index, packet, parent, size_of_server_soup_tcp_packet)
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

-- Logout Request
tradelogiq_lynxats_tcplevel1_itch_v1_01.logout_request = {}

-- Display: Logout Request
tradelogiq_lynxats_tcplevel1_itch_v1_01.logout_request.display = function(packet, parent, length)
  return "Logout Request"
end


-- Dissect: Logout Request
tradelogiq_lynxats_tcplevel1_itch_v1_01.logout_request.dissect = function(buffer, offset, packet, parent)
  local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.logout_request.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Client Heartbeat
tradelogiq_lynxats_tcplevel1_itch_v1_01.client_heartbeat = {}

-- Display: Client Heartbeat
tradelogiq_lynxats_tcplevel1_itch_v1_01.client_heartbeat.display = function(packet, parent, length)
  return "Client Heartbeat"
end


-- Dissect: Client Heartbeat
tradelogiq_lynxats_tcplevel1_itch_v1_01.client_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.client_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Unsequenced Data Packet
tradelogiq_lynxats_tcplevel1_itch_v1_01.unsequenced_data_packet = {}

-- Calculate size of: Unsequenced Data Packet
tradelogiq_lynxats_tcplevel1_itch_v1_01.unsequenced_data_packet.size = function(buffer, offset)
  local index = 0

  -- Parse runtime size of: Unsequenced Message
  index = index + buffer(offset + index - 3, 2):uint()

  return index
end

-- Display: Unsequenced Data Packet
tradelogiq_lynxats_tcplevel1_itch_v1_01.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
tradelogiq_lynxats_tcplevel1_itch_v1_01.unsequenced_data_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  -- Runtime Size Of: Unsequenced Message
  local size_of_unsequenced_message = packet_length - 1

  -- Unsequenced Message: 0 Byte
  index, unsequenced_message = tradelogiq_lynxats_tcplevel1_itch_v1_01.unsequenced_message.dissect(buffer, index, packet, parent, size_of_unsequenced_message)

  return index
end

-- Dissect: Unsequenced Data Packet
tradelogiq_lynxats_tcplevel1_itch_v1_01.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.unsequenced_data_packet, buffer(offset, 0))
    local index = tradelogiq_lynxats_tcplevel1_itch_v1_01.unsequenced_data_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.unsequenced_data_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tradelogiq_lynxats_tcplevel1_itch_v1_01.unsequenced_data_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Request Packet
tradelogiq_lynxats_tcplevel1_itch_v1_01.login_request_packet = {}

-- Size: Login Request Packet
tradelogiq_lynxats_tcplevel1_itch_v1_01.login_request_packet.size =
  tradelogiq_lynxats_tcplevel1_itch_v1_01.username.size + 
  tradelogiq_lynxats_tcplevel1_itch_v1_01.password.size + 
  tradelogiq_lynxats_tcplevel1_itch_v1_01.requested_session.size + 
  tradelogiq_lynxats_tcplevel1_itch_v1_01.requested_sequence_number.size

-- Display: Login Request Packet
tradelogiq_lynxats_tcplevel1_itch_v1_01.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
tradelogiq_lynxats_tcplevel1_itch_v1_01.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = tradelogiq_lynxats_tcplevel1_itch_v1_01.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = tradelogiq_lynxats_tcplevel1_itch_v1_01.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = tradelogiq_lynxats_tcplevel1_itch_v1_01.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = tradelogiq_lynxats_tcplevel1_itch_v1_01.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
tradelogiq_lynxats_tcplevel1_itch_v1_01.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.login_request_packet, buffer(offset, 0))
    local index = tradelogiq_lynxats_tcplevel1_itch_v1_01.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tradelogiq_lynxats_tcplevel1_itch_v1_01.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Client Payload
tradelogiq_lynxats_tcplevel1_itch_v1_01.client_payload = {}

-- Dissect: Client Payload
tradelogiq_lynxats_tcplevel1_itch_v1_01.client_payload.dissect = function(buffer, offset, packet, parent, client_packet_type)
  -- Dissect Login Request Packet
  if client_packet_type == "L" then
    return tradelogiq_lynxats_tcplevel1_itch_v1_01.login_request_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if client_packet_type == "U" then
    return tradelogiq_lynxats_tcplevel1_itch_v1_01.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Client Heartbeat
  if client_packet_type == "R" then
    return tradelogiq_lynxats_tcplevel1_itch_v1_01.client_heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request
  if client_packet_type == "O" then
    return tradelogiq_lynxats_tcplevel1_itch_v1_01.logout_request.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Packet Header
tradelogiq_lynxats_tcplevel1_itch_v1_01.client_packet_header = {}

-- Size: Client Packet Header
tradelogiq_lynxats_tcplevel1_itch_v1_01.client_packet_header.size =
  tradelogiq_lynxats_tcplevel1_itch_v1_01.packet_length.size + 
  tradelogiq_lynxats_tcplevel1_itch_v1_01.client_packet_type.size

-- Display: Client Packet Header
tradelogiq_lynxats_tcplevel1_itch_v1_01.client_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Packet Header
tradelogiq_lynxats_tcplevel1_itch_v1_01.client_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = tradelogiq_lynxats_tcplevel1_itch_v1_01.packet_length.dissect(buffer, index, packet, parent)

  -- Client Packet Type: 1 Byte Ascii String Enum with 4 values
  index, client_packet_type = tradelogiq_lynxats_tcplevel1_itch_v1_01.client_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Packet Header
tradelogiq_lynxats_tcplevel1_itch_v1_01.client_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.client_packet_header, buffer(offset, 0))
    local index = tradelogiq_lynxats_tcplevel1_itch_v1_01.client_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.client_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tradelogiq_lynxats_tcplevel1_itch_v1_01.client_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Client Soup Tcp Packet
tradelogiq_lynxats_tcplevel1_itch_v1_01.client_soup_tcp_packet = {}

-- Display: Client Soup Tcp Packet
tradelogiq_lynxats_tcplevel1_itch_v1_01.client_soup_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Soup Tcp Packet
tradelogiq_lynxats_tcplevel1_itch_v1_01.client_soup_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_client_soup_tcp_packet)
  local index = offset

  -- Client Packet Header: Struct of 2 fields
  index, client_packet_header = tradelogiq_lynxats_tcplevel1_itch_v1_01.client_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Client Packet Type
  local client_packet_type = buffer(index - 1, 1):string()

  -- Client Payload: Runtime Type with 4 branches
  index = tradelogiq_lynxats_tcplevel1_itch_v1_01.client_payload.dissect(buffer, index, packet, parent, client_packet_type)

  return index
end

-- Dissect: Client Soup Tcp Packet
tradelogiq_lynxats_tcplevel1_itch_v1_01.client_soup_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_client_soup_tcp_packet)
  local index = offset + size_of_client_soup_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.fields.client_soup_tcp_packet, buffer(offset, 0))
    local current = tradelogiq_lynxats_tcplevel1_itch_v1_01.client_soup_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_tcp_packet)
    parent:set_len(size_of_client_soup_tcp_packet)
    local display = tradelogiq_lynxats_tcplevel1_itch_v1_01.client_soup_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    tradelogiq_lynxats_tcplevel1_itch_v1_01.client_soup_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Client Soup Tcp Packet
local client_soup_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < tradelogiq_lynxats_tcplevel1_itch_v1_01.client_packet_header.size then
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
tradelogiq_lynxats_tcplevel1_itch_v1_01.client_packet = {}

-- Verify required size of Tcp packet
tradelogiq_lynxats_tcplevel1_itch_v1_01.client_packet.requiredsize = function(buffer)
  return buffer:len() >= tradelogiq_lynxats_tcplevel1_itch_v1_01.client_packet_header.size
end

-- Dissect Client Packet
tradelogiq_lynxats_tcplevel1_itch_v1_01.client_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Client Soup Tcp Packet
  local end_of_payload = buffer:len()

  -- Client Soup Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_client_soup_tcp_packet = client_soup_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = tradelogiq_lynxats_tcplevel1_itch_v1_01.client_soup_tcp_packet.dissect(buffer, index, packet, parent, size_of_client_soup_tcp_packet)
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
function omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.init()
end

-- Connection roles for Tradelogiq LynxAts TcpLevel1 Itch 1.01: Client is the initiator, Server is the acceptor
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
tradelogiq_lynxats_tcplevel1_itch_v1_01.role = function(packet)
  if omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.prefs.acceptor_port

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

  if omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.prefs.swap_sides then
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
tradelogiq_lynxats_tcplevel1_itch_v1_01.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Tradelogiq LynxAts TcpLevel1 Itch 1.01
function omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.name

  -- Dissect protocol
  local protocol = parent:add(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01, buffer(), omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.description, "("..buffer:len().." Bytes)")
  local role = tradelogiq_lynxats_tcplevel1_itch_v1_01.role(packet)

  if role == "initiator" then
    return tradelogiq_lynxats_tcplevel1_itch_v1_01.client_packet.dissect(buffer, packet, protocol)
  end

  return tradelogiq_lynxats_tcplevel1_itch_v1_01.server_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
tradelogiq_lynxats_tcplevel1_itch_v1_01.client_packet.fingerprint = function(buffer)
  if buffer:len() < 3 then
    return false
  end

  local client_packet_type = buffer(2, 1):string()

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
tradelogiq_lynxats_tcplevel1_itch_v1_01.server_packet.fingerprint = function(buffer)
  if buffer:len() < 3 then
    return false
  end

  local server_packet_type = buffer(2, 1):string()

  -- Login Accepted Packet
  if server_packet_type == "A" then
    return true
  end

  -- Login Rejected Packet
  if server_packet_type == "J" then
    return true
  end

  -- Server Heartbeat
  if server_packet_type == "H" then
    return true
  end

  -- Sequenced Data Packet: carries the application messages, which tell this protocol from others sharing the session framing
  if server_packet_type == "S" then
    if buffer:len() < 4 then
      return false
    end

    local message_type = buffer(3, 1):string()

    -- Quote Message
    if message_type == "W" then
      return true
    end

    -- Trade Report Message
    if message_type == "T" then
      return true
    end

    -- Trade Bust Message
    if message_type == "N" then
      return true
    end

    -- Trade Correction Message
    if message_type == "M" then
      return true
    end

    -- System Event Message
    if message_type == "S" then
      return true
    end

    -- Stock Directory Message
    if message_type == "R" then
      return true
    end

    -- Extended Stock Directory Message
    if message_type == "r" then
      return true
    end

    -- Stock Status Message
    if message_type == "H" then
      return true
    end

    return false
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Tradelogiq LynxAts TcpLevel1 Itch 1.01 (Tcp)
local function omi_tradelogiq_lynxats_tcplevel1_itch_v1_01_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not tradelogiq_lynxats_tcplevel1_itch_v1_01.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not tradelogiq_lynxats_tcplevel1_itch_v1_01.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_tradelogiq_lynxats_tcplevel1_itch_v1_01
  omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Tradelogiq LynxAts TcpLevel1 Itch 1.01 (Tcp)
local function omi_tradelogiq_lynxats_tcplevel1_itch_v1_01_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not tradelogiq_lynxats_tcplevel1_itch_v1_01.server_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not tradelogiq_lynxats_tcplevel1_itch_v1_01.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_tradelogiq_lynxats_tcplevel1_itch_v1_01
  omi_tradelogiq_lynxats_tcplevel1_itch_v1_01.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Tradelogiq LynxAts TcpLevel1 Itch 1.01 (Tcp): apply the heuristic of the sender's connection role
local function omi_tradelogiq_lynxats_tcplevel1_itch_v1_01_tcp_heuristic(buffer, packet, parent)
  local role = tradelogiq_lynxats_tcplevel1_itch_v1_01.role(packet)
  local initiator = omi_tradelogiq_lynxats_tcplevel1_itch_v1_01_tcp_initiator_heuristic
  local acceptor = omi_tradelogiq_lynxats_tcplevel1_itch_v1_01_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  tradelogiq_lynxats_tcplevel1_itch_v1_01.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  tradelogiq_lynxats_tcplevel1_itch_v1_01.swap(packet)

  return false
end

-- Register Heuristics for Tradelogiq LynxAts TcpLevel1 Itch 1.01
omi_tradelogiq_lynxats_tcplevel1_itch_v1_01:register_heuristic("tcp", omi_tradelogiq_lynxats_tcplevel1_itch_v1_01_tcp_heuristic)

-- Register Tradelogiq LynxAts TcpLevel1 Itch 1.01 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_tradelogiq_lynxats_tcplevel1_itch_v1_01)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Tradelogiq Markets Inc.
--   Version: 1.01
--   Date: Sunday, January 30, 2022
--   Specification: TradelogiQ-Level-1-ITCH-5.0-Specification-v1.01.pdf
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
