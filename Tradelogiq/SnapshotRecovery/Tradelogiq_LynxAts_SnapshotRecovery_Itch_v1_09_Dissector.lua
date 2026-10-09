-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Tradelogiq LynxAts SnapshotRecovery Itch 1.09 Protocol
local omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09 = Proto("Omi.Tradelogiq.LynxAts.SnapshotRecovery.Itch.v1.09", "Tradelogiq LynxAts SnapshotRecovery Itch 1.09")

-- Protocol table
local tradelogiq_lynxats_snapshotrecovery_itch_v1_09 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Tradelogiq LynxAts SnapshotRecovery Itch 1.09 Fields
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.accepted_sequence_number = ProtoField.new("Accepted Sequence Number", "tradelogiq.lynxats.snapshotrecovery.itch.v1.09.acceptedsequencenumber", ftypes.STRING)
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.accepted_session = ProtoField.new("Accepted Session", "tradelogiq.lynxats.snapshotrecovery.itch.v1.09.acceptedsession", ftypes.STRING)
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.board_lot_size = ProtoField.new("Board Lot Size", "tradelogiq.lynxats.snapshotrecovery.itch.v1.09.boardlotsize", ftypes.UINT32)
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.buy_sell_indicator = ProtoField.new("Buy Sell Indicator", "tradelogiq.lynxats.snapshotrecovery.itch.v1.09.buysellindicator", ftypes.STRING)
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.client_packet_type = ProtoField.new("Client Packet Type", "tradelogiq.lynxats.snapshotrecovery.itch.v1.09.clientpackettype", ftypes.STRING)
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.currency = ProtoField.new("Currency", "tradelogiq.lynxats.snapshotrecovery.itch.v1.09.currency", ftypes.STRING)
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.description = ProtoField.new("Description", "tradelogiq.lynxats.snapshotrecovery.itch.v1.09.description", ftypes.STRING)
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.dividend_indicator = ProtoField.new("Dividend Indicator", "tradelogiq.lynxats.snapshotrecovery.itch.v1.09.dividendindicator", ftypes.STRING)
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.event_code = ProtoField.new("Event Code", "tradelogiq.lynxats.snapshotrecovery.itch.v1.09.eventcode", ftypes.STRING)
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.exec_broker_id = ProtoField.new("Exec Broker Id", "tradelogiq.lynxats.snapshotrecovery.itch.v1.09.execbrokerid", ftypes.UINT16)
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.expiry_date = ProtoField.new("Expiry Date", "tradelogiq.lynxats.snapshotrecovery.itch.v1.09.expirydate", ftypes.STRING)
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.frequency = ProtoField.new("Frequency", "tradelogiq.lynxats.snapshotrecovery.itch.v1.09.frequency", ftypes.STRING)
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.instrument_id = ProtoField.new("Instrument Id", "tradelogiq.lynxats.snapshotrecovery.itch.v1.09.instrumentid", ftypes.UINT16)
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.market = ProtoField.new("Market", "tradelogiq.lynxats.snapshotrecovery.itch.v1.09.market", ftypes.STRING)
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.message_type = ProtoField.new("Message Type", "tradelogiq.lynxats.snapshotrecovery.itch.v1.09.messagetype", ftypes.STRING)
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.order_reference_number = ProtoField.new("Order Reference Number", "tradelogiq.lynxats.snapshotrecovery.itch.v1.09.orderreferencenumber", ftypes.UINT32)
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.packet_length = ProtoField.new("Packet Length", "tradelogiq.lynxats.snapshotrecovery.itch.v1.09.packetlength", ftypes.UINT16)
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.password = ProtoField.new("Password", "tradelogiq.lynxats.snapshotrecovery.itch.v1.09.password", ftypes.STRING)
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.price = ProtoField.new("Price", "tradelogiq.lynxats.snapshotrecovery.itch.v1.09.price", ftypes.DOUBLE)
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.reason = ProtoField.new("Reason", "tradelogiq.lynxats.snapshotrecovery.itch.v1.09.reason", ftypes.STRING)
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "tradelogiq.lynxats.snapshotrecovery.itch.v1.09.rejectreasoncode", ftypes.STRING)
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "tradelogiq.lynxats.snapshotrecovery.itch.v1.09.requestedsequencenumber", ftypes.STRING)
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.requested_session = ProtoField.new("Requested Session", "tradelogiq.lynxats.snapshotrecovery.itch.v1.09.requestedsession", ftypes.STRING)
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.reserved_2 = ProtoField.new("Reserved 2", "tradelogiq.lynxats.snapshotrecovery.itch.v1.09.reserved2", ftypes.BYTES)
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.reserved_3 = ProtoField.new("Reserved 3", "tradelogiq.lynxats.snapshotrecovery.itch.v1.09.reserved3", ftypes.BYTES)
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.reserved_9 = ProtoField.new("Reserved 9", "tradelogiq.lynxats.snapshotrecovery.itch.v1.09.reserved9", ftypes.BYTES)
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.security_type = ProtoField.new("Security Type", "tradelogiq.lynxats.snapshotrecovery.itch.v1.09.securitytype", ftypes.STRING)
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.server_packet_type = ProtoField.new("Server Packet Type", "tradelogiq.lynxats.snapshotrecovery.itch.v1.09.serverpackettype", ftypes.STRING)
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.shares = ProtoField.new("Shares", "tradelogiq.lynxats.snapshotrecovery.itch.v1.09.shares", ftypes.UINT32)
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.shortable = ProtoField.new("Shortable", "tradelogiq.lynxats.snapshotrecovery.itch.v1.09.shortable", ftypes.STRING)
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.stock = ProtoField.new("Stock", "tradelogiq.lynxats.snapshotrecovery.itch.v1.09.stock", ftypes.STRING)
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.timestamp = ProtoField.new("Timestamp", "tradelogiq.lynxats.snapshotrecovery.itch.v1.09.timestamp", ftypes.UINT64)
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.trading_state = ProtoField.new("Trading State", "tradelogiq.lynxats.snapshotrecovery.itch.v1.09.tradingstate", ftypes.STRING)
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "tradelogiq.lynxats.snapshotrecovery.itch.v1.09.unsequencedmessage", ftypes.BYTES)
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.username = ProtoField.new("Username", "tradelogiq.lynxats.snapshotrecovery.itch.v1.09.username", ftypes.STRING)

-- Tradelogiq LynxAts SnapshotRecovery Itch 1.09 Framing
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.client_packet = ProtoField.new("Packet", "tradelogiq.lynxats.snapshotrecovery.itch.v1.09.clientpacket", ftypes.STRING)
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.client_packet_header = ProtoField.new("Client Packet Header", "tradelogiq.lynxats.snapshotrecovery.itch.v1.09.clientpacketheader", ftypes.STRING)
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.client_soup_tcp_packet = ProtoField.new("Soup Tcp Packet", "tradelogiq.lynxats.snapshotrecovery.itch.v1.09.clientsouptcppacket", ftypes.STRING)
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "tradelogiq.lynxats.snapshotrecovery.itch.v1.09.sequenceddatapacket", ftypes.STRING)
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.server_packet = ProtoField.new("Packet", "tradelogiq.lynxats.snapshotrecovery.itch.v1.09.serverpacket", ftypes.STRING)
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.server_packet_header = ProtoField.new("Server Packet Header", "tradelogiq.lynxats.snapshotrecovery.itch.v1.09.serverpacketheader", ftypes.STRING)
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.server_soup_tcp_packet = ProtoField.new("Soup Tcp Packet", "tradelogiq.lynxats.snapshotrecovery.itch.v1.09.serversouptcppacket", ftypes.STRING)

-- Tradelogiq LynxAts SnapshotRecovery 1.09 Application Messages
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.add_order_message = ProtoField.new("Add Order Message", "tradelogiq.lynxats.snapshotrecovery.itch.v1.09.addordermessage", ftypes.STRING)
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.extended_stock_directory_message = ProtoField.new("Extended Stock Directory Message", "tradelogiq.lynxats.snapshotrecovery.itch.v1.09.extendedstockdirectorymessage", ftypes.STRING)
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.stock_directory_message = ProtoField.new("Stock Directory Message", "tradelogiq.lynxats.snapshotrecovery.itch.v1.09.stockdirectorymessage", ftypes.STRING)
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.stock_trading_action_message = ProtoField.new("Stock Trading Action Message", "tradelogiq.lynxats.snapshotrecovery.itch.v1.09.stocktradingactionmessage", ftypes.STRING)
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.system_event_message = ProtoField.new("System Event Message", "tradelogiq.lynxats.snapshotrecovery.itch.v1.09.systemeventmessage", ftypes.STRING)

-- Tradelogiq LynxAts SnapshotRecovery 1.09 Session Messages
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.client_heartbeat = ProtoField.new("Client Heartbeat", "tradelogiq.lynxats.snapshotrecovery.itch.v1.09.clientheartbeat", ftypes.BYTES)
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "tradelogiq.lynxats.snapshotrecovery.itch.v1.09.loginacceptedpacket", ftypes.STRING)
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "tradelogiq.lynxats.snapshotrecovery.itch.v1.09.loginrejectedpacket", ftypes.STRING)
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.login_request_packet = ProtoField.new("Login Request Packet", "tradelogiq.lynxats.snapshotrecovery.itch.v1.09.loginrequestpacket", ftypes.STRING)
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.logout_request = ProtoField.new("Logout Request", "tradelogiq.lynxats.snapshotrecovery.itch.v1.09.logoutrequest", ftypes.BYTES)
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.server_heartbeat = ProtoField.new("Server Heartbeat", "tradelogiq.lynxats.snapshotrecovery.itch.v1.09.serverheartbeat", ftypes.BYTES)
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "tradelogiq.lynxats.snapshotrecovery.itch.v1.09.unsequenceddatapacket", ftypes.STRING)

-----------------------------------------------------------------------
-- Tradelogiq LynxAts SnapshotRecovery Itch 1.09 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.timestamp_format = 2

-- Hours behind UTC (UTC) for midnight calculation
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.utc_offset_hours = 0

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

-- Tradelogiq LynxAts SnapshotRecovery Itch 1.09 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.session_messages = true

-- Register Tradelogiq LynxAts SnapshotRecovery Itch 1.09 Show Options
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")

omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Timestamp display format", timestamp_format_enum, false)
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 0, "Hours behind UTC (UTC) for midnight calculation")

-- Handle changed preferences
function omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.prefs.show_application_messages then
    show.application_messages = omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.prefs.show_application_messages
  end
  if show.headers ~= omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.prefs.show_headers then
    show.headers = omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.prefs.show_headers
  end
  if show.session_messages ~= omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.prefs.show_session_messages then
    show.session_messages = omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.prefs.show_session_messages
  end
  if show.structs ~= omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.prefs.show_structs then
    show.structs = omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.prefs.show_structs
  end
  if tradelogiq_lynxats_snapshotrecovery_itch_v1_09.timestamp_format ~= omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.prefs.timestamp_format then
    tradelogiq_lynxats_snapshotrecovery_itch_v1_09.timestamp_format = omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.prefs.timestamp_format
  end
  if tradelogiq_lynxats_snapshotrecovery_itch_v1_09.utc_offset_hours ~= omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.prefs.utc_offset_hours then
    tradelogiq_lynxats_snapshotrecovery_itch_v1_09.utc_offset_hours = omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.prefs.utc_offset_hours
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
-- Tradelogiq LynxAts SnapshotRecovery Itch 1.09 Fields
-----------------------------------------------------------------------

-- Accepted Sequence Number
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.accepted_sequence_number = {}

-- Size: Accepted Sequence Number
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.accepted_sequence_number.size = 20

-- Display: Accepted Sequence Number
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.accepted_sequence_number.display = function(value)
  return "Accepted Sequence Number: "..value
end

-- Dissect: Accepted Sequence Number
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.accepted_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.accepted_sequence_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.accepted_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.accepted_sequence_number, range, value, display)

  return offset + length, value
end

-- Accepted Session
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.accepted_session = {}

-- Size: Accepted Session
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.accepted_session.size = 10

-- Display: Accepted Session
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.accepted_session.display = function(value)
  return "Accepted Session: "..value
end

-- Dissect: Accepted Session
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.accepted_session.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.accepted_session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.accepted_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.accepted_session, range, value, display)

  return offset + length, value
end

-- Board Lot Size
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.board_lot_size = {}

-- Size: Board Lot Size
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.board_lot_size.size = 4

-- Display: Board Lot Size
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.board_lot_size.display = function(value)
  return "Board Lot Size: "..value
end

-- Dissect: Board Lot Size
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.board_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.board_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.board_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.board_lot_size, range, value, display)

  return offset + length, value
end

-- Buy Sell Indicator
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.buy_sell_indicator = {}

-- Size: Buy Sell Indicator
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.buy_sell_indicator.size = 1

-- Display: Buy Sell Indicator
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.buy_sell_indicator.display = function(value)
  if value == "B" then
    return "Buy Sell Indicator: Buy Order (B)"
  end
  if value == "S" then
    return "Buy Sell Indicator: Sell Order (S)"
  end

  return "Buy Sell Indicator: Unknown("..value..")"
end

-- Dissect: Buy Sell Indicator
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.buy_sell_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.buy_sell_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.buy_sell_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.buy_sell_indicator, range, value, display)

  return offset + length, value
end

-- Client Packet Type
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.client_packet_type = {}

-- Size: Client Packet Type
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.client_packet_type.size = 1

-- Display: Client Packet Type
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.client_packet_type.display = function(value)
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
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.client_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.client_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.client_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.client_packet_type, range, value, display)

  return offset + length, value
end

-- Currency
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.currency = {}

-- Size: Currency
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.currency.size = 3

-- Display: Currency
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.currency.display = function(value)
  if value == "CAD" then
    return "Currency: Canadian Dollars (CAD)"
  end
  if value == "USD" then
    return "Currency: Us Dollars (USD)"
  end

  return "Currency: Unknown("..value..")"
end

-- Dissect: Currency
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.currency.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.currency, range, value, display)

  return offset + length, value
end

-- Description
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.description = {}

-- Size: Description
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.description.size = 20

-- Display: Description
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.description.display = function(value)
  return "Description: "..value
end

-- Dissect: Description
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.description.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.description.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.description.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.description, range, value, display)

  return offset + length, value
end

-- Dividend Indicator
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.dividend_indicator = {}

-- Size: Dividend Indicator
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.dividend_indicator.size = 1

-- Display: Dividend Indicator
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.dividend_indicator.display = function(value)
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
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.dividend_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.dividend_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.dividend_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.dividend_indicator, range, value, display)

  return offset + length, value
end

-- Event Code
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.event_code = {}

-- Size: Event Code
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.event_code.size = 1

-- Display: Event Code
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.event_code.display = function(value)
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
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.event_code.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.event_code, range, value, display)

  return offset + length, value
end

-- Exec Broker Id
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.exec_broker_id = {}

-- Size: Exec Broker Id
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.exec_broker_id.size = 2

-- Display: Exec Broker Id
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.exec_broker_id.display = function(value)
  return "Exec Broker Id: "..value
end

-- Dissect: Exec Broker Id
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.exec_broker_id.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.exec_broker_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.exec_broker_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.exec_broker_id, range, value, display)

  return offset + length, value
end

-- Expiry Date
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.expiry_date = {}

-- Size: Expiry Date
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.expiry_date.size = 8

-- Display: Expiry Date
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.expiry_date.display = function(value)
  if #value < 8 then
    return "Expiry Date: "..value
  end

  return "Expiry Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Expiry Date
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.expiry_date.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.expiry_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.expiry_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.expiry_date, range, value, display)

  return offset + length, value
end

-- Frequency
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.frequency = {}

-- Size: Frequency
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.frequency.size = 1

-- Display: Frequency
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.frequency.display = function(value)
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
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.frequency.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.frequency.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.frequency.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.frequency, range, value, display)

  return offset + length, value
end

-- Instrument Id
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.instrument_id = {}

-- Size: Instrument Id
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.instrument_id.size = 2

-- Display: Instrument Id
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.instrument_id.display = function(value)
  return "Instrument Id: "..value
end

-- Dissect: Instrument Id
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.instrument_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.instrument_id, range, value, display)

  return offset + length, value
end

-- Market
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.market = {}

-- Size: Market
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.market.size = 1

-- Display: Market
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.market.display = function(value)
  if value == "t" then
    return "Market: Tsx (t)"
  end
  if value == "v" then
    return "Market: Tsx Venture (v)"
  end
  if value == "c" then
    return "Market: Cse (c)"
  end
  if value == "q" then
    return "Market: Nasdaq Canada (q)"
  end
  if value == "o" then
    return "Market: Omega Ats (o)"
  end
  if value == "z" then
    return "Market: Cboe Canada (z)"
  end

  return "Market: Unknown("..value..")"
end

-- Dissect: Market
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.market.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.market.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.market.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.market, range, value, display)

  return offset + length, value
end

-- Message Type
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.message_type = {}

-- Size: Message Type
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.message_type.size = 1

-- Display: Message Type
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.message_type.display = function(value)
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
    return "Message Type: Stock Trading Action Message (H)"
  end
  if value == "A" then
    return "Message Type: Add Order Message (A)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.message_type.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.message_type, range, value, display)

  return offset + length, value
end

-- Order Reference Number
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.order_reference_number = {}

-- Size: Order Reference Number
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.order_reference_number.size = 4

-- Display: Order Reference Number
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.order_reference_number.display = function(value)
  return "Order Reference Number: "..value
end

-- Dissect: Order Reference Number
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.order_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.order_reference_number, range, value, display)

  return offset + length, value
end

-- Packet Length
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.packet_length = {}

-- Size: Packet Length
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.packet_length.size = 2

-- Display: Packet Length
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Password
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.password = {}

-- Size: Password
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.password.size = 10

-- Display: Password
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.password.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.password, range, value, display)

  return offset + length, value
end

-- Price
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.price = {}

-- Size: Price
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.price.size = 4

-- Display: Price
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.price.translate = function(raw)
  return raw/10000
end

-- Dissect: Price
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.price.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.price.translate(raw)
  local display = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.price, range, value, display)

  return offset + length, value
end

-- Reason
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.reason = {}

-- Size: Reason
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.reason.size = 4

-- Display: Reason
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.reason.display = function(value)
  if value == "R" then
    return "Reason: Regulatory Halt (R)"
  end
  if value == "B" then
    return "Reason: Business Halt (B)"
  end

  return "Reason: Unknown("..value..")"
end

-- Dissect: Reason
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.reason.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.reason.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.reason, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.reject_reason_code = {}

-- Size: Reject Reason Code
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.reject_reason_code.size = 1

-- Display: Reject Reason Code
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.reject_reason_code.display = function(value)
  if value == "A" then
    return "Reject Reason Code: Not Authorized (A)"
  end
  if value == "S" then
    return "Reject Reason Code: Session Not Available (S)"
  end

  return "Reject Reason Code: Unknown("..value..")"
end

-- Dissect: Reject Reason Code
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.requested_sequence_number = {}

-- Size: Requested Sequence Number
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.requested_sequence_number.size = 20

-- Display: Requested Sequence Number
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.requested_session = {}

-- Size: Requested Session
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.requested_session.size = 10

-- Display: Requested Session
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.requested_session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Reserved 2
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.reserved_2 = {}

-- Size: Reserved 2
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.reserved_2.size = 2

-- Display: Reserved 2
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.reserved_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Reserved 3
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.reserved_3 = {}

-- Size: Reserved 3
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.reserved_3.size = 3

-- Display: Reserved 3
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.reserved_3.display = function(value)
  return "Reserved 3: "..value
end

-- Dissect: Reserved 3
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.reserved_3.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.reserved_3.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.reserved_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.reserved_3, range, value, display)

  return offset + length, value
end

-- Reserved 9
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.reserved_9 = {}

-- Size: Reserved 9
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.reserved_9.size = 9

-- Display: Reserved 9
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.reserved_9.display = function(value)
  return "Reserved 9: "..value
end

-- Dissect: Reserved 9
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.reserved_9.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.reserved_9.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.reserved_9.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.reserved_9, range, value, display)

  return offset + length, value
end

-- Security Type
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.security_type = {}

-- Size: Security Type
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.security_type.size = 1

-- Display: Security Type
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.security_type.display = function(value)
  if value == "b" then
    return "Security Type: Bonds (b)"
  end
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
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.security_type.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.security_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.security_type, range, value, display)

  return offset + length, value
end

-- Server Packet Type
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.server_packet_type = {}

-- Size: Server Packet Type
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.server_packet_type.size = 1

-- Display: Server Packet Type
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.server_packet_type.display = function(value)
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
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.server_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.server_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.server_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.server_packet_type, range, value, display)

  return offset + length, value
end

-- Shares
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.shares = {}

-- Size: Shares
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.shares.size = 4

-- Display: Shares
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.shares.display = function(value)
  return "Shares: "..value
end

-- Dissect: Shares
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.shares.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.shares.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.shares, range, value, display)

  return offset + length, value
end

-- Shortable
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.shortable = {}

-- Size: Shortable
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.shortable.size = 1

-- Display: Shortable
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.shortable.display = function(value)
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
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.shortable.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.shortable.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.shortable.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.shortable, range, value, display)

  return offset + length, value
end

-- Stock
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.stock = {}

-- Size: Stock
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.stock.size = 10

-- Display: Stock
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.stock.display = function(value)
  return "Stock: "..value
end

-- Dissect: Stock
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.stock.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.stock.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.stock.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.stock, range, value, display)

  return offset + length, value
end

-- Timestamp
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.timestamp = {}

-- Size: Timestamp
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.timestamp.size = 8

-- Display: Timestamp
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.timestamp.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if tradelogiq_lynxats_snapshotrecovery_itch_v1_09.timestamp_format == 0 then
    return "Timestamp: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (calculate from capture date + UTC offset)
  if tradelogiq_lynxats_snapshotrecovery_itch_v1_09.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", nanoseconds)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trading State
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.trading_state = {}

-- Size: Trading State
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.trading_state.size = 1

-- Display: Trading State
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.trading_state.display = function(value)
  if value == "H" then
    return "Trading State: Halted (H)"
  end
  if value == "T" then
    return "Trading State: Trading (T)"
  end

  return "Trading State: Unknown("..value..")"
end

-- Dissect: Trading State
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.trading_state.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.trading_state, range, value, display)

  return offset + length, value
end

-- Unsequenced Message
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.unsequenced_message = {}

-- Display: Unsequenced Message
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.unsequenced_message.display = function(value)
  return "Unsequenced Message: "..value
end

-- Dissect runtime sized field: Unsequenced Message
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.unsequenced_message.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.unsequenced_message.display(value, packet, parent, size)

  parent:add(omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.unsequenced_message, range, value, display)

  return offset + size, value
end

-- Username
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.username = {}

-- Size: Username
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.username.size = 6

-- Display: Username
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.username.dissect = function(buffer, offset, packet, parent)
  local length = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Tradelogiq LynxAts SnapshotRecovery Itch 1.09
-----------------------------------------------------------------------

-- Add Order Message
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.add_order_message = {}

-- Size: Add Order Message
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.add_order_message.size =
  tradelogiq_lynxats_snapshotrecovery_itch_v1_09.buy_sell_indicator.size + 
  tradelogiq_lynxats_snapshotrecovery_itch_v1_09.instrument_id.size + 
  tradelogiq_lynxats_snapshotrecovery_itch_v1_09.timestamp.size + 
  tradelogiq_lynxats_snapshotrecovery_itch_v1_09.order_reference_number.size + 
  tradelogiq_lynxats_snapshotrecovery_itch_v1_09.shares.size + 
  tradelogiq_lynxats_snapshotrecovery_itch_v1_09.price.size + 
  tradelogiq_lynxats_snapshotrecovery_itch_v1_09.exec_broker_id.size + 
  tradelogiq_lynxats_snapshotrecovery_itch_v1_09.reserved_2.size

-- Display: Add Order Message
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.add_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.add_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Buy Sell Indicator: Alphabetic
  index, buy_sell_indicator = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.instrument_id.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.order_reference_number.dissect(buffer, index, packet, parent)

  -- Shares: Integer
  index, shares = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.shares.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.price.dissect(buffer, index, packet, parent)

  -- Exec Broker Id: Integer
  index, exec_broker_id = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.exec_broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 2: Alpha
  index, reserved_2 = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.add_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.add_order_message, buffer(offset, 0))
    local index = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.add_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.add_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tradelogiq_lynxats_snapshotrecovery_itch_v1_09.add_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Stock Trading Action Message
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.stock_trading_action_message = {}

-- Size: Stock Trading Action Message
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.stock_trading_action_message.size =
  tradelogiq_lynxats_snapshotrecovery_itch_v1_09.trading_state.size + 
  tradelogiq_lynxats_snapshotrecovery_itch_v1_09.instrument_id.size + 
  tradelogiq_lynxats_snapshotrecovery_itch_v1_09.timestamp.size + 
  tradelogiq_lynxats_snapshotrecovery_itch_v1_09.reason.size

-- Display: Stock Trading Action Message
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.stock_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Trading Action Message
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.stock_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading State: Alpha
  index, trading_state = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.trading_state.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.instrument_id.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.timestamp.dissect(buffer, index, packet, parent)

  -- Reason: Alphanumeric
  index, reason = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Trading Action Message
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.stock_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.stock_trading_action_message, buffer(offset, 0))
    local index = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.stock_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.stock_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tradelogiq_lynxats_snapshotrecovery_itch_v1_09.stock_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Extended Stock Directory Message
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.extended_stock_directory_message = {}

-- Size: Extended Stock Directory Message
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.extended_stock_directory_message.size =
  tradelogiq_lynxats_snapshotrecovery_itch_v1_09.market.size + 
  tradelogiq_lynxats_snapshotrecovery_itch_v1_09.stock.size + 
  tradelogiq_lynxats_snapshotrecovery_itch_v1_09.timestamp.size + 
  tradelogiq_lynxats_snapshotrecovery_itch_v1_09.board_lot_size.size + 
  tradelogiq_lynxats_snapshotrecovery_itch_v1_09.instrument_id.size + 
  tradelogiq_lynxats_snapshotrecovery_itch_v1_09.shortable.size + 
  tradelogiq_lynxats_snapshotrecovery_itch_v1_09.frequency.size + 
  tradelogiq_lynxats_snapshotrecovery_itch_v1_09.reserved_9.size + 
  tradelogiq_lynxats_snapshotrecovery_itch_v1_09.currency.size + 
  tradelogiq_lynxats_snapshotrecovery_itch_v1_09.security_type.size + 
  tradelogiq_lynxats_snapshotrecovery_itch_v1_09.expiry_date.size + 
  tradelogiq_lynxats_snapshotrecovery_itch_v1_09.description.size + 
  tradelogiq_lynxats_snapshotrecovery_itch_v1_09.reserved_3.size

-- Display: Extended Stock Directory Message
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.extended_stock_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Extended Stock Directory Message
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.extended_stock_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market: Alphanumeric
  index, market = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.market.dissect(buffer, index, packet, parent)

  -- Stock: Alphanumeric & '.'
  index, stock = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.stock.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.timestamp.dissect(buffer, index, packet, parent)

  -- Board Lot Size: Integer
  index, board_lot_size = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.board_lot_size.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.instrument_id.dissect(buffer, index, packet, parent)

  -- Shortable: Alpha
  index, shortable = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.shortable.dissect(buffer, index, packet, parent)

  -- Frequency: Alpha
  index, frequency = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.frequency.dissect(buffer, index, packet, parent)

  -- Reserved 9: Alphanumeric
  index, reserved_9 = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.reserved_9.dissect(buffer, index, packet, parent)

  -- Currency: Alpha
  index, currency = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.currency.dissect(buffer, index, packet, parent)

  -- Security Type: Alpha
  index, security_type = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.security_type.dissect(buffer, index, packet, parent)

  -- Expiry Date: Date
  index, expiry_date = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.expiry_date.dissect(buffer, index, packet, parent)

  -- Description: Alphanumeric
  index, description = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.description.dissect(buffer, index, packet, parent)

  -- Reserved 3: Alpha
  index, reserved_3 = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.reserved_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Extended Stock Directory Message
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.extended_stock_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.extended_stock_directory_message, buffer(offset, 0))
    local index = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.extended_stock_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.extended_stock_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tradelogiq_lynxats_snapshotrecovery_itch_v1_09.extended_stock_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Stock Directory Message
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.stock_directory_message = {}

-- Size: Stock Directory Message
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.stock_directory_message.size =
  tradelogiq_lynxats_snapshotrecovery_itch_v1_09.market.size + 
  tradelogiq_lynxats_snapshotrecovery_itch_v1_09.stock.size + 
  tradelogiq_lynxats_snapshotrecovery_itch_v1_09.timestamp.size + 
  tradelogiq_lynxats_snapshotrecovery_itch_v1_09.board_lot_size.size + 
  tradelogiq_lynxats_snapshotrecovery_itch_v1_09.instrument_id.size + 
  tradelogiq_lynxats_snapshotrecovery_itch_v1_09.shortable.size + 
  tradelogiq_lynxats_snapshotrecovery_itch_v1_09.dividend_indicator.size + 
  tradelogiq_lynxats_snapshotrecovery_itch_v1_09.reserved_9.size + 
  tradelogiq_lynxats_snapshotrecovery_itch_v1_09.currency.size

-- Display: Stock Directory Message
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.stock_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Directory Message
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.stock_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market: Alphanumeric
  index, market = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.market.dissect(buffer, index, packet, parent)

  -- Stock: Alphanumeric & '.'
  index, stock = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.stock.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.timestamp.dissect(buffer, index, packet, parent)

  -- Board Lot Size: Integer
  index, board_lot_size = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.board_lot_size.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.instrument_id.dissect(buffer, index, packet, parent)

  -- Shortable: Alpha
  index, shortable = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.shortable.dissect(buffer, index, packet, parent)

  -- Dividend Indicator: Alpha
  index, dividend_indicator = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.dividend_indicator.dissect(buffer, index, packet, parent)

  -- Reserved 9: Alphanumeric
  index, reserved_9 = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.reserved_9.dissect(buffer, index, packet, parent)

  -- Currency: Alpha
  index, currency = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.currency.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Directory Message
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.stock_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.stock_directory_message, buffer(offset, 0))
    local index = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.stock_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.stock_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tradelogiq_lynxats_snapshotrecovery_itch_v1_09.stock_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.system_event_message = {}

-- Size: System Event Message
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.system_event_message.size =
  tradelogiq_lynxats_snapshotrecovery_itch_v1_09.event_code.size + 
  tradelogiq_lynxats_snapshotrecovery_itch_v1_09.reserved_2.size + 
  tradelogiq_lynxats_snapshotrecovery_itch_v1_09.timestamp.size

-- Display: System Event Message
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Event Code: Alpha
  index, event_code = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.event_code.dissect(buffer, index, packet, parent)

  -- Reserved 2: Alpha
  index, reserved_2 = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.reserved_2.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.system_event_message, buffer(offset, 0))
    local index = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tradelogiq_lynxats_snapshotrecovery_itch_v1_09.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.payload = {}

-- Dissect: Payload
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event Message
  if message_type == "S" then
    return tradelogiq_lynxats_snapshotrecovery_itch_v1_09.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Directory Message
  if message_type == "R" then
    return tradelogiq_lynxats_snapshotrecovery_itch_v1_09.stock_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Extended Stock Directory Message
  if message_type == "r" then
    return tradelogiq_lynxats_snapshotrecovery_itch_v1_09.extended_stock_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Trading Action Message
  if message_type == "H" then
    return tradelogiq_lynxats_snapshotrecovery_itch_v1_09.stock_trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message
  if message_type == "A" then
    return tradelogiq_lynxats_snapshotrecovery_itch_v1_09.add_order_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Data Packet
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.sequenced_data_packet = {}

-- Calculate size of: Sequenced Data Packet
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.sequenced_data_packet.size = function(buffer, offset)
  local index = 0

  index = index + tradelogiq_lynxats_snapshotrecovery_itch_v1_09.message_type.size

  -- Parse runtime size of: Payload
  index = index + buffer(offset + index - 4, 2):uint()

  return index
end

-- Display: Sequenced Data Packet
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.sequenced_data_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: 1 Byte Ascii String Enum with 5 values
  index, message_type = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.message_type.dissect(buffer, index, packet, parent)

  -- Payload: Runtime Type with 5 branches
  index = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Sequenced Data Packet
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.sequenced_data_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.sequenced_data_packet, buffer(offset, 0))
    local index = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.sequenced_data_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.sequenced_data_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tradelogiq_lynxats_snapshotrecovery_itch_v1_09.sequenced_data_packet.fields(buffer, offset, packet, parent)
  end
end

-- Server Heartbeat
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.server_heartbeat = {}

-- Display: Server Heartbeat
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.server_heartbeat.display = function(packet, parent, length)
  return "Server Heartbeat"
end


-- Dissect: Server Heartbeat
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.server_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.server_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Login Rejected Packet
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.login_rejected_packet = {}

-- Size: Login Rejected Packet
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.login_rejected_packet.size =
  tradelogiq_lynxats_snapshotrecovery_itch_v1_09.reject_reason_code.size

-- Display: Login Rejected Packet
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String Enum with 2 values
  index, reject_reason_code = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.login_rejected_packet, buffer(offset, 0))
    local index = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tradelogiq_lynxats_snapshotrecovery_itch_v1_09.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.login_accepted_packet = {}

-- Size: Login Accepted Packet
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.login_accepted_packet.size =
  tradelogiq_lynxats_snapshotrecovery_itch_v1_09.accepted_session.size + 
  tradelogiq_lynxats_snapshotrecovery_itch_v1_09.accepted_sequence_number.size

-- Display: Login Accepted Packet
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Accepted Session: 10 Byte Ascii String
  index, accepted_session = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.accepted_session.dissect(buffer, index, packet, parent)

  -- Accepted Sequence Number: 20 Byte Ascii String
  index, accepted_sequence_number = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.accepted_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Accepted Packet
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.login_accepted_packet, buffer(offset, 0))
    local index = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tradelogiq_lynxats_snapshotrecovery_itch_v1_09.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Server Payload
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.server_payload = {}

-- Dissect: Server Payload
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.server_payload.dissect = function(buffer, offset, packet, parent, server_packet_type)
  -- Dissect Login Accepted Packet
  if server_packet_type == "A" then
    return tradelogiq_lynxats_snapshotrecovery_itch_v1_09.login_accepted_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if server_packet_type == "J" then
    return tradelogiq_lynxats_snapshotrecovery_itch_v1_09.login_rejected_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Server Heartbeat
  if server_packet_type == "H" then
    return tradelogiq_lynxats_snapshotrecovery_itch_v1_09.server_heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Data Packet
  if server_packet_type == "S" then
    return tradelogiq_lynxats_snapshotrecovery_itch_v1_09.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Server Packet Header
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.server_packet_header = {}

-- Size: Server Packet Header
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.server_packet_header.size =
  tradelogiq_lynxats_snapshotrecovery_itch_v1_09.packet_length.size + 
  tradelogiq_lynxats_snapshotrecovery_itch_v1_09.server_packet_type.size

-- Display: Server Packet Header
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.server_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Packet Header
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.server_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.packet_length.dissect(buffer, index, packet, parent)

  -- Server Packet Type: 1 Byte Ascii String Enum with 4 values
  index, server_packet_type = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.server_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Server Packet Header
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.server_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.server_packet_header, buffer(offset, 0))
    local index = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.server_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.server_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tradelogiq_lynxats_snapshotrecovery_itch_v1_09.server_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Soup Tcp Packet
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.server_soup_tcp_packet = {}

-- Display: Server Soup Tcp Packet
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.server_soup_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Soup Tcp Packet
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.server_soup_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_server_soup_tcp_packet)
  local index = offset

  -- Server Packet Header: Struct of 2 fields
  index, server_packet_header = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.server_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Server Packet Type
  local server_packet_type = buffer(index - 1, 1):string()

  -- Server Payload: Runtime Type with 4 branches
  index = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.server_payload.dissect(buffer, index, packet, parent, server_packet_type)

  return index
end

-- Dissect: Server Soup Tcp Packet
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.server_soup_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_server_soup_tcp_packet)
  local index = offset + size_of_server_soup_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.server_soup_tcp_packet, buffer(offset, 0))
    local current = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.server_soup_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_tcp_packet)
    parent:set_len(size_of_server_soup_tcp_packet)
    local display = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.server_soup_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    tradelogiq_lynxats_snapshotrecovery_itch_v1_09.server_soup_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Server Soup Tcp Packet
local server_soup_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < tradelogiq_lynxats_snapshotrecovery_itch_v1_09.server_packet_header.size then
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
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.server_packet = {}

-- Verify required size of Tcp packet
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.server_packet.requiredsize = function(buffer)
  return buffer:len() >= tradelogiq_lynxats_snapshotrecovery_itch_v1_09.server_packet_header.size
end

-- Dissect Server Packet
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.server_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Server Soup Tcp Packet
  local end_of_payload = buffer:len()

  -- Server Soup Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_server_soup_tcp_packet = server_soup_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.server_soup_tcp_packet.dissect(buffer, index, packet, parent, size_of_server_soup_tcp_packet)
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
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.logout_request = {}

-- Display: Logout Request
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.logout_request.display = function(packet, parent, length)
  return "Logout Request"
end


-- Dissect: Logout Request
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.logout_request.dissect = function(buffer, offset, packet, parent)
  local display = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.logout_request.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Client Heartbeat
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.client_heartbeat = {}

-- Display: Client Heartbeat
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.client_heartbeat.display = function(packet, parent, length)
  return "Client Heartbeat"
end


-- Dissect: Client Heartbeat
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.client_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.client_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Unsequenced Data Packet
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.unsequenced_data_packet = {}

-- Calculate size of: Unsequenced Data Packet
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.unsequenced_data_packet.size = function(buffer, offset)
  local index = 0

  -- Parse runtime size of: Unsequenced Message
  index = index + buffer(offset + index - 3, 2):uint()

  return index
end

-- Display: Unsequenced Data Packet
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.unsequenced_data_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  -- Runtime Size Of: Unsequenced Message
  local size_of_unsequenced_message = packet_length - 1

  -- Unsequenced Message: 0 Byte
  index, unsequenced_message = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.unsequenced_message.dissect(buffer, index, packet, parent, size_of_unsequenced_message)

  return index
end

-- Dissect: Unsequenced Data Packet
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.unsequenced_data_packet, buffer(offset, 0))
    local index = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.unsequenced_data_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.unsequenced_data_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tradelogiq_lynxats_snapshotrecovery_itch_v1_09.unsequenced_data_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Request Packet
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.login_request_packet = {}

-- Size: Login Request Packet
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.login_request_packet.size =
  tradelogiq_lynxats_snapshotrecovery_itch_v1_09.username.size + 
  tradelogiq_lynxats_snapshotrecovery_itch_v1_09.password.size + 
  tradelogiq_lynxats_snapshotrecovery_itch_v1_09.requested_session.size + 
  tradelogiq_lynxats_snapshotrecovery_itch_v1_09.requested_sequence_number.size

-- Display: Login Request Packet
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.login_request_packet, buffer(offset, 0))
    local index = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tradelogiq_lynxats_snapshotrecovery_itch_v1_09.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Client Payload
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.client_payload = {}

-- Dissect: Client Payload
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.client_payload.dissect = function(buffer, offset, packet, parent, client_packet_type)
  -- Dissect Login Request Packet
  if client_packet_type == "L" then
    return tradelogiq_lynxats_snapshotrecovery_itch_v1_09.login_request_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if client_packet_type == "U" then
    return tradelogiq_lynxats_snapshotrecovery_itch_v1_09.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Client Heartbeat
  if client_packet_type == "R" then
    return tradelogiq_lynxats_snapshotrecovery_itch_v1_09.client_heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request
  if client_packet_type == "O" then
    return tradelogiq_lynxats_snapshotrecovery_itch_v1_09.logout_request.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Packet Header
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.client_packet_header = {}

-- Size: Client Packet Header
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.client_packet_header.size =
  tradelogiq_lynxats_snapshotrecovery_itch_v1_09.packet_length.size + 
  tradelogiq_lynxats_snapshotrecovery_itch_v1_09.client_packet_type.size

-- Display: Client Packet Header
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.client_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Packet Header
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.client_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.packet_length.dissect(buffer, index, packet, parent)

  -- Client Packet Type: 1 Byte Ascii String Enum with 4 values
  index, client_packet_type = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.client_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Packet Header
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.client_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.client_packet_header, buffer(offset, 0))
    local index = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.client_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.client_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tradelogiq_lynxats_snapshotrecovery_itch_v1_09.client_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Client Soup Tcp Packet
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.client_soup_tcp_packet = {}

-- Display: Client Soup Tcp Packet
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.client_soup_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Soup Tcp Packet
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.client_soup_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_client_soup_tcp_packet)
  local index = offset

  -- Client Packet Header: Struct of 2 fields
  index, client_packet_header = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.client_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Client Packet Type
  local client_packet_type = buffer(index - 1, 1):string()

  -- Client Payload: Runtime Type with 4 branches
  index = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.client_payload.dissect(buffer, index, packet, parent, client_packet_type)

  return index
end

-- Dissect: Client Soup Tcp Packet
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.client_soup_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_client_soup_tcp_packet)
  local index = offset + size_of_client_soup_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.fields.client_soup_tcp_packet, buffer(offset, 0))
    local current = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.client_soup_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_tcp_packet)
    parent:set_len(size_of_client_soup_tcp_packet)
    local display = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.client_soup_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    tradelogiq_lynxats_snapshotrecovery_itch_v1_09.client_soup_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Client Soup Tcp Packet
local client_soup_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < tradelogiq_lynxats_snapshotrecovery_itch_v1_09.client_packet_header.size then
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
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.client_packet = {}

-- Verify required size of Tcp packet
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.client_packet.requiredsize = function(buffer)
  return buffer:len() >= tradelogiq_lynxats_snapshotrecovery_itch_v1_09.client_packet_header.size
end

-- Dissect Client Packet
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.client_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Client Soup Tcp Packet
  local end_of_payload = buffer:len()

  -- Client Soup Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_client_soup_tcp_packet = client_soup_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.client_soup_tcp_packet.dissect(buffer, index, packet, parent, size_of_client_soup_tcp_packet)
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
function omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.init()
end

-- Connection roles for Tradelogiq LynxAts SnapshotRecovery Itch 1.09: Client is the initiator, Server is the acceptor
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
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.role = function(packet)
  if omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.prefs.acceptor_port

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

  if omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.prefs.swap_sides then
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
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Tradelogiq LynxAts SnapshotRecovery Itch 1.09
function omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.name

  -- Dissect protocol
  local protocol = parent:add(omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09, buffer(), omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.description, "("..buffer:len().." Bytes)")
  local role = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.role(packet)

  if role == "initiator" then
    return tradelogiq_lynxats_snapshotrecovery_itch_v1_09.client_packet.dissect(buffer, packet, protocol)
  end

  return tradelogiq_lynxats_snapshotrecovery_itch_v1_09.server_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.client_packet.fingerprint = function(buffer)
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
tradelogiq_lynxats_snapshotrecovery_itch_v1_09.server_packet.fingerprint = function(buffer)
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

    -- Stock Trading Action Message
    if message_type == "H" then
      return true
    end

    -- Add Order Message
    if message_type == "A" then
      return true
    end

    return false
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Tradelogiq LynxAts SnapshotRecovery Itch 1.09 (Tcp)
local function omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not tradelogiq_lynxats_snapshotrecovery_itch_v1_09.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not tradelogiq_lynxats_snapshotrecovery_itch_v1_09.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09
  omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Tradelogiq LynxAts SnapshotRecovery Itch 1.09 (Tcp)
local function omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not tradelogiq_lynxats_snapshotrecovery_itch_v1_09.server_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not tradelogiq_lynxats_snapshotrecovery_itch_v1_09.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09
  omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Tradelogiq LynxAts SnapshotRecovery Itch 1.09 (Tcp): apply the heuristic of the sender's connection role
local function omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09_tcp_heuristic(buffer, packet, parent)
  local role = tradelogiq_lynxats_snapshotrecovery_itch_v1_09.role(packet)
  local initiator = omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09_tcp_initiator_heuristic
  local acceptor = omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  tradelogiq_lynxats_snapshotrecovery_itch_v1_09.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  tradelogiq_lynxats_snapshotrecovery_itch_v1_09.swap(packet)

  return false
end

-- Register Heuristics for Tradelogiq LynxAts SnapshotRecovery Itch 1.09
omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09:register_heuristic("tcp", omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09_tcp_heuristic)

-- Register Tradelogiq LynxAts SnapshotRecovery Itch 1.09 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_tradelogiq_lynxats_snapshotrecovery_itch_v1_09)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Tradelogiq Markets Inc.
--   Version: 1.09
--   Date: Thursday, June 5, 2025
--   Specification: Tradelogiq-SnapshotRecovery-Specifications-v1.09.pdf
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
