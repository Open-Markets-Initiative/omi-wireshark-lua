-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq NasdaqCanada Chixmmd Glimpse 1.0 Protocol
local omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0 = Proto("Omi.Nasdaq.NasdaqCanada.Chixmmd.Glimpse.v1.0", "Nasdaq NasdaqCanada Chixmmd Glimpse 1.0")

-- Protocol table
local nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq NasdaqCanada Chixmmd Glimpse 1.0 Fields
omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.board_lot_size = ProtoField.new("Board Lot Size", "nasdaq.nasdaqcanada.chixmmd.glimpse.v1.0.boardlotsize", ftypes.STRING)
omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.broker = ProtoField.new("Broker", "nasdaq.nasdaqcanada.chixmmd.glimpse.v1.0.broker", ftypes.STRING)
omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.buy_sell_indicator = ProtoField.new("Buy Sell Indicator", "nasdaq.nasdaqcanada.chixmmd.glimpse.v1.0.buysellindicator", ftypes.STRING)
omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.client_packet_type = ProtoField.new("Client Packet Type", "nasdaq.nasdaqcanada.chixmmd.glimpse.v1.0.clientpackettype", ftypes.STRING)
omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.currency = ProtoField.new("Currency", "nasdaq.nasdaqcanada.chixmmd.glimpse.v1.0.currency", ftypes.STRING)
omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.debug_packet = ProtoField.new("Debug Packet", "nasdaq.nasdaqcanada.chixmmd.glimpse.v1.0.debugpacket", ftypes.STRING)
omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.event_code = ProtoField.new("Event Code", "nasdaq.nasdaqcanada.chixmmd.glimpse.v1.0.eventcode", ftypes.STRING)
omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.gef_eligible = ProtoField.new("Gef Eligible", "nasdaq.nasdaqcanada.chixmmd.glimpse.v1.0.gefeligible", ftypes.STRING)
omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.listing_market = ProtoField.new("Listing Market", "nasdaq.nasdaqcanada.chixmmd.glimpse.v1.0.listingmarket", ftypes.STRING)
omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "nasdaq.nasdaqcanada.chixmmd.glimpse.v1.0.loginacceptedpacket", ftypes.STRING)
omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "nasdaq.nasdaqcanada.chixmmd.glimpse.v1.0.loginrejectedpacket", ftypes.STRING)
omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.login_request_packet = ProtoField.new("Login Request Packet", "nasdaq.nasdaqcanada.chixmmd.glimpse.v1.0.loginrequestpacket", ftypes.STRING)
omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.long_price = ProtoField.new("Long Price", "nasdaq.nasdaqcanada.chixmmd.glimpse.v1.0.longprice", ftypes.DOUBLE)
omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.long_shares = ProtoField.new("Long Shares", "nasdaq.nasdaqcanada.chixmmd.glimpse.v1.0.longshares", ftypes.STRING)
omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.message_type = ProtoField.new("Message Type", "nasdaq.nasdaqcanada.chixmmd.glimpse.v1.0.messagetype", ftypes.STRING)
omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.order_reference = ProtoField.new("Order Reference", "nasdaq.nasdaqcanada.chixmmd.glimpse.v1.0.orderreference", ftypes.STRING)
omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.password = ProtoField.new("Password", "nasdaq.nasdaqcanada.chixmmd.glimpse.v1.0.password", ftypes.STRING)
omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.price = ProtoField.new("Price", "nasdaq.nasdaqcanada.chixmmd.glimpse.v1.0.price", ftypes.DOUBLE)
omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "nasdaq.nasdaqcanada.chixmmd.glimpse.v1.0.rejectreasoncode", ftypes.STRING)
omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "nasdaq.nasdaqcanada.chixmmd.glimpse.v1.0.requestedsequencenumber", ftypes.STRING)
omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.requested_session = ProtoField.new("Requested Session", "nasdaq.nasdaqcanada.chixmmd.glimpse.v1.0.requestedsession", ftypes.STRING)
omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.reserved_1 = ProtoField.new("Reserved 1", "nasdaq.nasdaqcanada.chixmmd.glimpse.v1.0.reserved1", ftypes.STRING)
omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.nasdaqcanada.chixmmd.glimpse.v1.0.sequencenumber", ftypes.STRING)
omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "nasdaq.nasdaqcanada.chixmmd.glimpse.v1.0.sequenceddatapacket", ftypes.STRING)
omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.server_packet_type = ProtoField.new("Server Packet Type", "nasdaq.nasdaqcanada.chixmmd.glimpse.v1.0.serverpackettype", ftypes.STRING)
omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.session = ProtoField.new("Session", "nasdaq.nasdaqcanada.chixmmd.glimpse.v1.0.session", ftypes.STRING)
omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.shares = ProtoField.new("Shares", "nasdaq.nasdaqcanada.chixmmd.glimpse.v1.0.shares", ftypes.STRING)
omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.soup_lf = ProtoField.new("Soup Lf", "nasdaq.nasdaqcanada.chixmmd.glimpse.v1.0.souplf", ftypes.INT8)
omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.stock = ProtoField.new("Stock", "nasdaq.nasdaqcanada.chixmmd.glimpse.v1.0.stock", ftypes.STRING)
omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.text = ProtoField.new("Text", "nasdaq.nasdaqcanada.chixmmd.glimpse.v1.0.text", ftypes.STRING)
omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.nasdaqcanada.chixmmd.glimpse.v1.0.timestamp", ftypes.STRING)
omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.trading_state = ProtoField.new("Trading State", "nasdaq.nasdaqcanada.chixmmd.glimpse.v1.0.tradingstate", ftypes.STRING)
omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "nasdaq.nasdaqcanada.chixmmd.glimpse.v1.0.unsequenceddatapacket", ftypes.STRING)
omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "nasdaq.nasdaqcanada.chixmmd.glimpse.v1.0.unsequencedmessage", ftypes.BYTES)
omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.username = ProtoField.new("Username", "nasdaq.nasdaqcanada.chixmmd.glimpse.v1.0.username", ftypes.STRING)

-- Nasdaq NasdaqCanada Chixmmd Glimpse 1.0 Framing
omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.client_packet = ProtoField.new("Client Packet", "nasdaq.nasdaqcanada.chixmmd.glimpse.v1.0.clientpacket", ftypes.STRING)
omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.client_packet_header = ProtoField.new("Client Packet Header", "nasdaq.nasdaqcanada.chixmmd.glimpse.v1.0.clientpacketheader", ftypes.STRING)
omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.sequenced_message_header = ProtoField.new("Sequenced Message Header", "nasdaq.nasdaqcanada.chixmmd.glimpse.v1.0.sequencedmessageheader", ftypes.STRING)
omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.server_packet = ProtoField.new("Server Packet", "nasdaq.nasdaqcanada.chixmmd.glimpse.v1.0.serverpacket", ftypes.STRING)
omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.server_packet_header = ProtoField.new("Server Packet Header", "nasdaq.nasdaqcanada.chixmmd.glimpse.v1.0.serverpacketheader", ftypes.STRING)

-- Nasdaq NasdaqCanada Chixmmd 1.0 Application Messages
omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.add_order_message = ProtoField.new("Add Order Message", "nasdaq.nasdaqcanada.chixmmd.glimpse.v1.0.addordermessage", ftypes.STRING)
omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.long_form_add_order_message = ProtoField.new("Long Form Add Order Message", "nasdaq.nasdaqcanada.chixmmd.glimpse.v1.0.longformaddordermessage", ftypes.STRING)
omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.stock_status_message = ProtoField.new("Stock Status Message", "nasdaq.nasdaqcanada.chixmmd.glimpse.v1.0.stockstatusmessage", ftypes.STRING)
omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.nasdaqcanada.chixmmd.glimpse.v1.0.systemeventmessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Nasdaq NasdaqCanada Chixmmd Glimpse 1.0 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.timestamp_format = 2

-- Hours behind UTC (EST) for midnight calculation
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.utc_offset_hours = 5

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

-- Nasdaq NasdaqCanada Chixmmd Glimpse 1.0 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true

-- Register Nasdaq NasdaqCanada Chixmmd Glimpse 1.0 Show Options
omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")

omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Timestamp display format", timestamp_format_enum, false)
omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 5, "Hours behind UTC (EST) for midnight calculation")

-- Handle changed preferences
function omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.prefs.show_application_messages
  end
  if show.headers ~= omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.prefs.show_headers then
    show.headers = omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.prefs.show_headers
  end
  if show.structs ~= omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.prefs.show_structs then
    show.structs = omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.prefs.show_structs
  end
  if nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.timestamp_format ~= omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.prefs.timestamp_format then
    nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.timestamp_format = omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.prefs.timestamp_format
  end
  if nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.utc_offset_hours ~= omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.prefs.utc_offset_hours then
    nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.utc_offset_hours = omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.prefs.utc_offset_hours
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

-- trim leading spaces
trim_left_spaces = function(str)
  local start = 1

  while start <= str:len() and str:byte(start) == 0x20 do
    start = start + 1
  end

  return str:sub(start)
end

-- trim leading zeros
trim_left_zeros = function(str)
  local start = 1

  while start < str:len() and str:byte(start) == 0x30 do
    start = start + 1
  end

  return str:sub(start)
end

-- is every character a digit
is_digits = function(str)
  if str:len() == 0 then
    return false
  end

  for index = 1, str:len() do
    local byte = str:byte(index)

    if byte < 0x30 or byte > 0x39 then
      return false
    end
  end

  return true
end

-- the number a digit run of implied decimal places spells
format_implied_decimal_text = function(str, places)
  local digits = trim_left_spaces(str)
  local sign = ""
  local first = digits:sub(1, 1)

  if first == "-" or first == "+" then
    sign = first
    digits = digits:sub(2)
  end

  if not is_digits(digits) then
    return nil
  end

  digits = trim_left_zeros(digits)

  while digits:len() <= places do
    digits = "0"..digits
  end

  return sign..digits:sub(1, digits:len() - places).."."..digits:sub(-places)
end


-----------------------------------------------------------------------
-- Nasdaq NasdaqCanada Chixmmd Glimpse 1.0 Fields
-----------------------------------------------------------------------

-- Board Lot Size
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.board_lot_size = {}

-- Size: Board Lot Size
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.board_lot_size.size = 4

-- Display: Board Lot Size
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.board_lot_size.display = function(value)
  return "Board Lot Size: "..value
end

-- Dissect: Board Lot Size
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.board_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.board_lot_size.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.board_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.board_lot_size, range, value, display)

  return offset + length, value
end

-- Broker
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.broker = {}

-- Size: Broker
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.broker.size = 3

-- Display: Broker
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.broker.display = function(value)
  return "Broker: "..value
end

-- Dissect: Broker
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.broker.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.broker.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.broker.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.broker, range, value, display)

  return offset + length, value
end

-- Buy Sell Indicator
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.buy_sell_indicator = {}

-- Size: Buy Sell Indicator
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.buy_sell_indicator.size = 1

-- Display: Buy Sell Indicator
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.buy_sell_indicator.display = function(value)
  if value == "B" then
    return "Buy Sell Indicator: Buy (B)"
  end
  if value == "S" then
    return "Buy Sell Indicator: Sell (S)"
  end

  return "Buy Sell Indicator: Unknown("..value..")"
end

-- Dissect: Buy Sell Indicator
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.buy_sell_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.buy_sell_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.buy_sell_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.buy_sell_indicator, range, value, display)

  return offset + length, value
end

-- Client Packet Type
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.client_packet_type = {}

-- Size: Client Packet Type
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.client_packet_type.size = 1

-- Display: Client Packet Type
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.client_packet_type.display = function(value)
  if value == "+" then
    return "Client Packet Type: Debug Packet (+)"
  end
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
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.client_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.client_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.client_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.client_packet_type, range, value, display)

  return offset + length, value
end

-- Currency
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.currency = {}

-- Size: Currency
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.currency.size = 3

-- Display: Currency
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.currency.display = function(value)
  if value == "CAD" then
    return "Currency: Canadian Dollars (CAD)"
  end
  if value == "USD" then
    return "Currency: Us Dollars (USD)"
  end

  return "Currency: Unknown("..value..")"
end

-- Dissect: Currency
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.currency.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.currency, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.event_code = {}

-- Size: Event Code
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.event_code.size = 1

-- Display: Event Code
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.event_code.display = function(value)
  if value == "O" then
    return "Event Code: Start Of Messages (O)"
  end
  if value == "S" then
    return "Event Code: Start Of Nasdaq Canada Trading Session (S)"
  end
  if value == "Q" then
    return "Event Code: Start Of Primary Market Trading Session (Q)"
  end
  if value == "M" then
    return "Event Code: End Of Primary Market Trading Session (M)"
  end
  if value == "E" then
    return "Event Code: End Of System Hours (E)"
  end
  if value == "C" then
    return "Event Code: End Of Messages (C)"
  end
  if value == "W" then
    return "Event Code: Market Wide Circuit Breaker Halt (W)"
  end
  if value == "R" then
    return "Event Code: Market Wide Circuit Breaker Resumption (R)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.event_code, range, value, display)

  return offset + length, value
end

-- Gef Eligible
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.gef_eligible = {}

-- Size: Gef Eligible
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.gef_eligible.size = 1

-- Display: Gef Eligible
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.gef_eligible.display = function(value)
  if value == "Y" then
    return "Gef Eligible: Gef Eligible (Y)"
  end
  if value == "N" then
    return "Gef Eligible: Not Gef Eligible (N)"
  end

  return "Gef Eligible: Unknown("..value..")"
end

-- Dissect: Gef Eligible
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.gef_eligible.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.gef_eligible.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.gef_eligible.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.gef_eligible, range, value, display)

  return offset + length, value
end

-- Listing Market
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.listing_market = {}

-- Size: Listing Market
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.listing_market.size = 1

-- Display: Listing Market
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.listing_market.display = function(value)
  if value == "T" then
    return "Listing Market: Tsx (T)"
  end
  if value == "V" then
    return "Listing Market: Tsx Venture (V)"
  end
  if value == "C" then
    return "Listing Market: Cse (C)"
  end
  if value == "N" then
    return "Listing Market: Neo (N)"
  end

  return "Listing Market: Unknown("..value..")"
end

-- Dissect: Listing Market
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.listing_market.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.listing_market.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.listing_market.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.listing_market, range, value, display)

  return offset + length, value
end

-- Long Price
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.long_price = {}

-- Size: Long Price
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.long_price.size = 19

-- Display: Long Price
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.long_price.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.long_price.size):string(), 7)

  if text == nil then
    return "Long Price: "..tostring(value)
  end

  return "Long Price: "..text
end

-- Dissect: Long Price
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.long_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.long_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
  end
  value = value/10000000

  local display = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.long_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.long_price, range, value, display)

  return offset + length, value
end

-- Long Shares
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.long_shares = {}

-- Size: Long Shares
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.long_shares.size = 10

-- Display: Long Shares
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.long_shares.display = function(value)
  return "Long Shares: "..value
end

-- Dissect: Long Shares
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.long_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.long_shares.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.long_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.long_shares, range, value, display)

  return offset + length, value
end

-- Message Type
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.message_type = {}

-- Size: Message Type
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.message_type.size = 1

-- Display: Message Type
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.message_type.display = function(value)
  if value == "S" then
    return "Message Type: System Event Message (S)"
  end
  if value == "H" then
    return "Message Type: Stock Status Message (H)"
  end
  if value == "A" then
    return "Message Type: Add Order Message (A)"
  end
  if value == "a" then
    return "Message Type: Long Form Add Order Message (a)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Order Reference
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.order_reference = {}

-- Size: Order Reference
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.order_reference.size = 9

-- Display: Order Reference
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.order_reference.display = function(value)
  return "Order Reference: "..value
end

-- Dissect: Order Reference
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.order_reference.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.order_reference.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.order_reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.order_reference, range, value, display)

  return offset + length, value
end

-- Password
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.password = {}

-- Size: Password
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.password.size = 10

-- Display: Password
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.password.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.password, range, value, display)

  return offset + length, value
end

-- Price
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.price = {}

-- Size: Price
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.price.size = 10

-- Display: Price
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.price.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.price.size):string(), 4)

  if text == nil then
    return "Price: "..tostring(value)
  end

  return "Price: "..text
end

-- Dissect: Price
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
  end
  value = value/10000

  local display = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.price, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.reject_reason_code = {}

-- Size: Reject Reason Code
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.reject_reason_code.size = 1

-- Display: Reject Reason Code
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.reject_reason_code.display = function(value)
  return "Reject Reason Code: "..value
end

-- Dissect: Reject Reason Code
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.requested_sequence_number = {}

-- Size: Requested Sequence Number
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.requested_sequence_number.size = 10

-- Display: Requested Sequence Number
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.requested_session = {}

-- Size: Requested Session
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.requested_session.size = 10

-- Display: Requested Session
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.requested_session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Reserved 1
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.reserved_1 = {}

-- Size: Reserved 1
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.reserved_1.size = 1

-- Display: Reserved 1
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.reserved_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.sequence_number = {}

-- Size: Sequence Number
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.sequence_number.size = 10

-- Display: Sequence Number
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Server Packet Type
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.server_packet_type = {}

-- Size: Server Packet Type
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.server_packet_type.size = 1

-- Display: Server Packet Type
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.server_packet_type.display = function(value)
  if value == "+" then
    return "Server Packet Type: Debug Packet (+)"
  end
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
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.server_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.server_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.server_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.server_packet_type, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.session = {}

-- Size: Session
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.session.size = 10

-- Display: Session
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.session, range, value, display)

  return offset + length, value
end

-- Shares
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.shares = {}

-- Size: Shares
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.shares.size = 6

-- Display: Shares
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.shares.display = function(value)
  return "Shares: "..value
end

-- Dissect: Shares
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.shares.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.shares, range, value, display)

  return offset + length, value
end

-- Soup Lf
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.soup_lf = {}

-- Size: Soup Lf
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.soup_lf.size = 1

-- Display: Soup Lf
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.soup_lf.display = function(value)
  if value == 10 then
    return "Soup Lf: Line Feed"
  end

  return "Soup Lf: Unknown("..value..")"
end

-- Dissect: Soup Lf
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.soup_lf.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.soup_lf.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.soup_lf.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.soup_lf, range, value, display)

  return offset + length, value
end

-- Stock
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.stock = {}

-- Size: Stock
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.stock.size = 10

-- Display: Stock
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.stock.display = function(value)
  return "Stock: "..value
end

-- Dissect: Stock
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.stock.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.stock.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.stock.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.stock, range, value, display)

  return offset + length, value
end

-- Text
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.text = {}

-- Size: Text
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.text.size = 1

-- Display: Text
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.text.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.text, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.timestamp = {}

-- Size: Timestamp
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.timestamp.size = 8

-- Display: Timestamp
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.timestamp.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode (or unparsable ASCII fell back to a non-number)
  if type(value) ~= "number" then
    return "Timestamp: "..tostring(value)
  end

  if nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.timestamp_format == 0 then
    return "Timestamp: "..value
  end

  -- Parse milliseconds since midnight
  local seconds = math.floor(value / 1000)
  local milliseconds = value % 1000

  -- Full datetime mode (calculate from capture date + UTC offset)
  if nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Timestamp: "..os.date("!%Y-%m-%d %H:%M:%S.", full_seconds + utc_offset_seconds)..string.format("%03d", milliseconds)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("!%H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Timestamp
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.timestamp.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trading State
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.trading_state = {}

-- Size: Trading State
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.trading_state.size = 1

-- Display: Trading State
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.trading_state.display = function(value)
  if value == "H" then
    return "Trading State: Halted (H)"
  end
  if value == "T" then
    return "Trading State: Trading (T)"
  end

  return "Trading State: Unknown("..value..")"
end

-- Dissect: Trading State
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.trading_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.trading_state, range, value, display)

  return offset + length, value
end

-- Unsequenced Message
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.unsequenced_message = {}

-- Size: Unsequenced Message
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.unsequenced_message.size = 0

-- Display: Unsequenced Message
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.unsequenced_message.display = function(value)
  return "Unsequenced Message: "..value
end

-- Dissect: Unsequenced Message
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.unsequenced_message.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.unsequenced_message.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.unsequenced_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.unsequenced_message, range, value, display)

  return offset + length, value
end

-- Username
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.username = {}

-- Size: Username
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.username.size = 6

-- Display: Username
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.username.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq NasdaqCanada Chixmmd Glimpse 1.0
-----------------------------------------------------------------------

-- Long Form Add Order Message
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.long_form_add_order_message = {}

-- Size: Long Form Add Order Message
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.long_form_add_order_message.size =
  nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.order_reference.size + 
  nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.buy_sell_indicator.size + 
  nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.long_shares.size + 
  nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.stock.size + 
  nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.long_price.size + 
  nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.broker.size

-- Display: Long Form Add Order Message
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.long_form_add_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Form Add Order Message
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.long_form_add_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Reference: Numeric
  index, order_reference = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.order_reference.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: Alphanumeric
  index, buy_sell_indicator = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Long Shares: Numeric
  index, long_shares = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.long_shares.dissect(buffer, index, packet, parent)

  -- Stock: Alphanumeric
  index, stock = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.stock.dissect(buffer, index, packet, parent)

  -- Long Price: Price
  index, long_price = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.long_price.dissect(buffer, index, packet, parent)

  -- Broker: Numeric
  index, broker = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.broker.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Form Add Order Message
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.long_form_add_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.long_form_add_order_message, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.long_form_add_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.long_form_add_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.long_form_add_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Message
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.add_order_message = {}

-- Size: Add Order Message
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.add_order_message.size =
  nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.order_reference.size + 
  nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.buy_sell_indicator.size + 
  nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.shares.size + 
  nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.stock.size + 
  nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.price.size + 
  nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.broker.size

-- Display: Add Order Message
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.add_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.add_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Reference: Numeric
  index, order_reference = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.order_reference.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: Alphanumeric
  index, buy_sell_indicator = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Shares: Numeric
  index, shares = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.shares.dissect(buffer, index, packet, parent)

  -- Stock: Alphanumeric
  index, stock = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.stock.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.price.dissect(buffer, index, packet, parent)

  -- Broker: Numeric
  index, broker = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.broker.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.add_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.add_order_message, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.add_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.add_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.add_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Stock Status Message
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.stock_status_message = {}

-- Size: Stock Status Message
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.stock_status_message.size =
  nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.stock.size + 
  nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.trading_state.size + 
  nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.reserved_1.size + 
  nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.listing_market.size + 
  nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.board_lot_size.size + 
  nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.currency.size + 
  nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.gef_eligible.size

-- Display: Stock Status Message
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.stock_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Status Message
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.stock_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock: Alphanumeric
  index, stock = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.stock.dissect(buffer, index, packet, parent)

  -- Trading State: Alphanumeric
  index, trading_state = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.trading_state.dissect(buffer, index, packet, parent)

  -- Reserved 1: Alphanumeric
  index, reserved_1 = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.reserved_1.dissect(buffer, index, packet, parent)

  -- Listing Market: Alphanumeric
  index, listing_market = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.listing_market.dissect(buffer, index, packet, parent)

  -- Board Lot Size: Numeric
  index, board_lot_size = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.board_lot_size.dissect(buffer, index, packet, parent)

  -- Currency: Alphanumeric
  index, currency = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.currency.dissect(buffer, index, packet, parent)

  -- Gef Eligible: Alphanumeric
  index, gef_eligible = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.gef_eligible.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Status Message
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.stock_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.stock_status_message, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.stock_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.stock_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.stock_status_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.system_event_message = {}

-- Size: System Event Message
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.system_event_message.size =
  nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.event_code.size

-- Display: System Event Message
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Event Code: Alphanumeric
  index, event_code = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.sequenced_message = {}

-- Dissect: Sequenced Message
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.sequenced_message.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event Message
  if message_type == "S" then
    return nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Status Message
  if message_type == "H" then
    return nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.stock_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message
  if message_type == "A" then
    return nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.add_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Long Form Add Order Message
  if message_type == "a" then
    return nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.long_form_add_order_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Message Header
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.sequenced_message_header = {}

-- Size: Sequenced Message Header
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.sequenced_message_header.size =
  nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.timestamp.size + 
  nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.message_type.size

-- Display: Sequenced Message Header
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.sequenced_message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Message Header
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.sequenced_message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Ascii String
  index, timestamp = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 4 values
  index, message_type = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequenced Message Header
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.sequenced_message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.sequenced_message_header, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.sequenced_message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.sequenced_message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.sequenced_message_header.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Data Packet
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.sequenced_data_packet = {}

-- Calculate size of: Sequenced Data Packet
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.sequenced_data_packet.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.sequenced_message_header.size

  -- Calculate runtime size of Sequenced Message field
  local sequenced_message_offset = offset + index
  local sequenced_message_type = buffer(sequenced_message_offset - 1, 1):string()
  index = index + nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.sequenced_message.size(buffer, sequenced_message_offset, sequenced_message_type)

  return index
end

-- Display: Sequenced Data Packet
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.sequenced_data_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequenced Message Header: Struct of 2 fields
  index, sequenced_message_header = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.sequenced_message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Sequenced Message: Runtime Type with 4 branches
  index = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.sequenced_message.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Sequenced Data Packet
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.sequenced_data_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.sequenced_data_packet, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.sequenced_data_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.sequenced_data_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.sequenced_data_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Rejected Packet
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.login_rejected_packet = {}

-- Size: Login Rejected Packet
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.login_rejected_packet.size =
  nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.reject_reason_code.size

-- Display: Login Rejected Packet
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String
  index, reject_reason_code = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.login_rejected_packet, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.login_accepted_packet = {}

-- Size: Login Accepted Packet
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.login_accepted_packet.size =
  nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.session.size + 
  nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.sequence_number.size

-- Display: Login Accepted Packet
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 10 Byte Ascii String
  index, sequence_number = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Accepted Packet
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.login_accepted_packet, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.debug_packet = {}

-- Size: Debug Packet
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.debug_packet.size =
  nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.text.size

-- Display: Debug Packet
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text: 1 Byte Ascii String
  index, text = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Debug Packet
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.debug_packet, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Server Payload
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.server_payload = {}

-- Dissect: Server Payload
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.server_payload.dissect = function(buffer, offset, packet, parent, server_packet_type)
  -- Dissect Debug Packet
  if server_packet_type == "+" then
    return nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Packet
  if server_packet_type == "A" then
    return nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.login_accepted_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if server_packet_type == "J" then
    return nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.login_rejected_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Data Packet
  if server_packet_type == "S" then
    return nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Server Packet Header
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.server_packet_header = {}

-- Size: Server Packet Header
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.server_packet_header.size =
  nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.server_packet_type.size

-- Display: Server Packet Header
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.server_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Packet Header
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.server_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Server Packet Type: 1 Byte Ascii String Enum with 5 values
  index, server_packet_type = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.server_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Server Packet Header
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.server_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.server_packet_header, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.server_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.server_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.server_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Packet
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.server_packet = {}

-- Verify required size of Tcp packet
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.server_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.server_packet_header.size
end

-- Dissect Server Packet
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.server_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Server Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Server Packet Header: Struct of 1 fields
    index, server_packet_header = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.server_packet_header.dissect(buffer, index, packet, parent)

    -- Dependency element: Server Packet Type
    local server_packet_type = buffer(index - 1, 1):string()

    -- Server Payload: Runtime Type with 4 branches
    index = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.server_payload.dissect(buffer, index, packet, parent, server_packet_type)

    -- Soup Lf: 1 Byte Fixed Width Integer Static
    index, soup_lf = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.soup_lf.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Unsequenced Data Packet
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.unsequenced_data_packet = {}

-- Size: Unsequenced Data Packet
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.unsequenced_data_packet.size =
  nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.unsequenced_message.size

-- Display: Unsequenced Data Packet
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.unsequenced_data_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Unsequenced Message: 0 Byte
  index, unsequenced_message = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.unsequenced_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unsequenced Data Packet
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.unsequenced_data_packet, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.unsequenced_data_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.unsequenced_data_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.unsequenced_data_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Request Packet
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.login_request_packet = {}

-- Size: Login Request Packet
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.login_request_packet.size =
  nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.username.size + 
  nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.password.size + 
  nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.requested_session.size + 
  nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.requested_sequence_number.size

-- Display: Login Request Packet
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 10 Byte Ascii String
  index, requested_sequence_number = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.login_request_packet, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Client Payload
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.client_payload = {}

-- Dissect: Client Payload
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.client_payload.dissect = function(buffer, offset, packet, parent, client_packet_type)
  -- Dissect Debug Packet
  if client_packet_type == "+" then
    return nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Packet
  if client_packet_type == "L" then
    return nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.login_request_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if client_packet_type == "U" then
    return nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Packet Header
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.client_packet_header = {}

-- Size: Client Packet Header
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.client_packet_header.size =
  nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.client_packet_type.size

-- Display: Client Packet Header
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.client_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Packet Header
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.client_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Packet Type: 1 Byte Ascii String Enum with 5 values
  index, client_packet_type = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.client_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Packet Header
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.client_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.fields.client_packet_header, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.client_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.client_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.client_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Client Packet
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.client_packet = {}

-- Verify required size of Tcp packet
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.client_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.client_packet_header.size
end

-- Dissect Client Packet
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.client_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Client Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Client Packet Header: Struct of 1 fields
    index, client_packet_header = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.client_packet_header.dissect(buffer, index, packet, parent)

    -- Dependency element: Client Packet Type
    local client_packet_type = buffer(index - 1, 1):string()

    -- Client Payload: Runtime Type with 3 branches
    index = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.client_payload.dissect(buffer, index, packet, parent, client_packet_type)

    -- Soup Lf: 1 Byte Fixed Width Integer Static
    index, soup_lf = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.soup_lf.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.init()
end

-- Connection roles for Nasdaq NasdaqCanada Chixmmd Glimpse 1.0: Client is the initiator, Server is the acceptor
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
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.role = function(packet)
  if omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.prefs.acceptor_port

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

  if omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.prefs.swap_sides then
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
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Nasdaq NasdaqCanada Chixmmd Glimpse 1.0
function omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0, buffer(), omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.description, "("..buffer:len().." Bytes)")

  local role = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.role(packet)

  if role == "initiator" then
    return nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.client_packet.dissect(buffer, packet, protocol)
  end

  return nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.server_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.client_packet.fingerprint = function(buffer)
  if buffer:len() < 1 then
    return false
  end

  local client_packet_type = buffer(0, 1):string()

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

  return false
end

-- Fingerprint of Server Packet: would its message dispatch accept this frame?
nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.server_packet.fingerprint = function(buffer)
  if buffer:len() < 1 then
    return false
  end

  local server_packet_type = buffer(0, 1):string()

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
    if buffer:len() < 10 then
      return false
    end

    local message_type = buffer(9, 1):string()

    -- System Event Message
    if message_type == "S" then
      return true
    end

    -- Stock Status Message
    if message_type == "H" then
      return true
    end

    -- Add Order Message
    if message_type == "A" then
      return true
    end

    -- Long Form Add Order Message
    if message_type == "a" then
      return true
    end

    return false
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq NasdaqCanada Chixmmd Glimpse 1.0 (Tcp)
local function omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0
  omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq NasdaqCanada Chixmmd Glimpse 1.0 (Tcp)
local function omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.server_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0
  omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq NasdaqCanada Chixmmd Glimpse 1.0 (Tcp): apply the heuristic of the sender's connection role
local function omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0_tcp_heuristic(buffer, packet, parent)
  local role = nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.role(packet)
  local initiator = omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0_tcp_initiator_heuristic
  local acceptor = omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0.swap(packet)

  return false
end

-- Register Heuristics for Nasdaq NasdaqCanada Chixmmd Glimpse 1.0
omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0:register_heuristic("tcp", omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0_tcp_heuristic)

-- Register Nasdaq NasdaqCanada Chixmmd Glimpse 1.0 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_nasdaq_nasdaqcanada_chixmmd_glimpse_v1_0)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 1.0
--   Date: Monday, September 1, 2025
--   Specification: NasdaqCanadaGlimpse1.0Specification.pdf
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
