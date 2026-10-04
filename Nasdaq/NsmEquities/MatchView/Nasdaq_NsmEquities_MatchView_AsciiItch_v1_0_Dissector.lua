-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq NsmEquities MatchView AsciiItch 1.0 Protocol
local omi_nasdaq_nsmequities_matchview_asciiitch_v1_0 = Proto("Omi.Nasdaq.NsmEquities.MatchView.AsciiItch.v1.0", "Nasdaq NsmEquities MatchView AsciiItch 1.0")

-- Protocol table
local nasdaq_nsmequities_matchview_asciiitch_v1_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq NsmEquities MatchView AsciiItch 1.0 Fields
omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.fields.ask_price = ProtoField.new("Ask Price", "nasdaq.nsmequities.matchview.asciiitch.v1.0.askprice", ftypes.DOUBLE)
omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.fields.bid_price = ProtoField.new("Bid Price", "nasdaq.nsmequities.matchview.asciiitch.v1.0.bidprice", ftypes.DOUBLE)
omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.fields.message_count = ProtoField.new("Message Count", "nasdaq.nsmequities.matchview.asciiitch.v1.0.messagecount", ftypes.UINT16)
omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.fields.message_length = ProtoField.new("Message Length", "nasdaq.nsmequities.matchview.asciiitch.v1.0.messagelength", ftypes.UINT16)
omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.fields.message_type = ProtoField.new("Message Type", "nasdaq.nsmequities.matchview.asciiitch.v1.0.messagetype", ftypes.STRING)
omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.nsmequities.matchview.asciiitch.v1.0.sequencenumber", ftypes.UINT32)
omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.fields.session = ProtoField.new("Session", "nasdaq.nsmequities.matchview.asciiitch.v1.0.session", ftypes.STRING)
omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.fields.symbol = ProtoField.new("Symbol", "nasdaq.nsmequities.matchview.asciiitch.v1.0.symbol", ftypes.STRING)
omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.nsmequities.matchview.asciiitch.v1.0.timestamp", ftypes.STRING)

-- Nasdaq NsmEquities MatchView AsciiItch 1.0 Framing
omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.fields.message = ProtoField.new("Message", "nasdaq.nsmequities.matchview.asciiitch.v1.0.message", ftypes.STRING)
omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.fields.message_header = ProtoField.new("Message Header", "nasdaq.nsmequities.matchview.asciiitch.v1.0.messageheader", ftypes.STRING)
omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.fields.packet = ProtoField.new("Packet", "nasdaq.nsmequities.matchview.asciiitch.v1.0.packet", ftypes.STRING)
omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.nsmequities.matchview.asciiitch.v1.0.packetheader", ftypes.STRING)

-- Nasdaq NsmEquities MatchView 1.0 Application Messages
omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.fields.best_bid_and_offer_message = ProtoField.new("Best Bid And Offer Message", "nasdaq.nsmequities.matchview.asciiitch.v1.0.bestbidandoffermessage", ftypes.STRING)

-- Nasdaq NsmEquities MatchView 1.0 Session Messages
omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.fields.end_of_session = ProtoField.new("End Of Session", "nasdaq.nsmequities.matchview.asciiitch.v1.0.endofsession", ftypes.BYTES)
omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.fields.heartbeat = ProtoField.new("Heartbeat", "nasdaq.nsmequities.matchview.asciiitch.v1.0.heartbeat", ftypes.BYTES)

-- Nasdaq NsmEquities MatchView AsciiItch 1.0 Generated Fields
omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.fields.message_index = ProtoField.new("Message Index", "nasdaq.nsmequities.matchview.asciiitch.v1.0.messageindex", ftypes.UINT16)
omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "nasdaq.nsmequities.matchview.asciiitch.v1.0.messagesequencenumber", ftypes.UINT64)

-----------------------------------------------------------------------
-- Nasdaq NsmEquities MatchView AsciiItch 1.0 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
nasdaq_nsmequities_matchview_asciiitch_v1_0.timestamp_format = 2

-- Hours behind UTC (EST) for midnight calculation
nasdaq_nsmequities_matchview_asciiitch_v1_0.utc_offset_hours = 5


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq NsmEquities MatchView AsciiItch 1.0 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true
show.sequences = true

-- Register Nasdaq NsmEquities MatchView AsciiItch 1.0 Show Options
omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")

omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Timestamp display format", timestamp_format_enum, false)
omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 5, "Hours behind UTC (EST) for midnight calculation")

-- Handle changed preferences
function omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.prefs.show_application_messages
  end
  if show.headers ~= omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.prefs.show_headers then
    show.headers = omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.prefs.show_headers
  end
  if show.structs ~= omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.prefs.show_structs then
    show.structs = omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.prefs.show_structs
  end
  if show.indexes ~= omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.prefs.show_indexes then
    show.indexes = omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.prefs.show_indexes
  end
  if show.sequences ~= omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.prefs.show_sequences then
    show.sequences = omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.prefs.show_sequences
  end
  if nasdaq_nsmequities_matchview_asciiitch_v1_0.timestamp_format ~= omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.prefs.timestamp_format then
    nasdaq_nsmequities_matchview_asciiitch_v1_0.timestamp_format = omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.prefs.timestamp_format
  end
  if nasdaq_nsmequities_matchview_asciiitch_v1_0.utc_offset_hours ~= omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.prefs.utc_offset_hours then
    nasdaq_nsmequities_matchview_asciiitch_v1_0.utc_offset_hours = omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.prefs.utc_offset_hours
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
-- Nasdaq NsmEquities MatchView AsciiItch 1.0 Fields
-----------------------------------------------------------------------

-- Ask Price
nasdaq_nsmequities_matchview_asciiitch_v1_0.ask_price = {}

-- Size: Ask Price
nasdaq_nsmequities_matchview_asciiitch_v1_0.ask_price.size = 10

-- Display: Ask Price
nasdaq_nsmequities_matchview_asciiitch_v1_0.ask_price.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, nasdaq_nsmequities_matchview_asciiitch_v1_0.ask_price.size):string(), 4)

  if text == nil then
    return "Ask Price: "..tostring(value)
  end

  return "Ask Price: "..text
end

-- Dissect: Ask Price
nasdaq_nsmequities_matchview_asciiitch_v1_0.ask_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_matchview_asciiitch_v1_0.ask_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
  end
  value = value/10000

  local display = nasdaq_nsmequities_matchview_asciiitch_v1_0.ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Bid Price
nasdaq_nsmequities_matchview_asciiitch_v1_0.bid_price = {}

-- Size: Bid Price
nasdaq_nsmequities_matchview_asciiitch_v1_0.bid_price.size = 10

-- Display: Bid Price
nasdaq_nsmequities_matchview_asciiitch_v1_0.bid_price.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, nasdaq_nsmequities_matchview_asciiitch_v1_0.bid_price.size):string(), 4)

  if text == nil then
    return "Bid Price: "..tostring(value)
  end

  return "Bid Price: "..text
end

-- Dissect: Bid Price
nasdaq_nsmequities_matchview_asciiitch_v1_0.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_matchview_asciiitch_v1_0.bid_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
  end
  value = value/10000

  local display = nasdaq_nsmequities_matchview_asciiitch_v1_0.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Message Count
nasdaq_nsmequities_matchview_asciiitch_v1_0.message_count = {}

-- Size: Message Count
nasdaq_nsmequities_matchview_asciiitch_v1_0.message_count.size = 2

-- Display: Message Count
nasdaq_nsmequities_matchview_asciiitch_v1_0.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_nsmequities_matchview_asciiitch_v1_0.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_matchview_asciiitch_v1_0.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nasdaq_nsmequities_matchview_asciiitch_v1_0.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
nasdaq_nsmequities_matchview_asciiitch_v1_0.message_length = {}

-- Size: Message Length
nasdaq_nsmequities_matchview_asciiitch_v1_0.message_length.size = 2

-- Display: Message Length
nasdaq_nsmequities_matchview_asciiitch_v1_0.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_nsmequities_matchview_asciiitch_v1_0.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_matchview_asciiitch_v1_0.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_matchview_asciiitch_v1_0.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
nasdaq_nsmequities_matchview_asciiitch_v1_0.message_type = {}

-- Size: Message Type
nasdaq_nsmequities_matchview_asciiitch_v1_0.message_type.size = 1

-- Display: Message Type
nasdaq_nsmequities_matchview_asciiitch_v1_0.message_type.display = function(value)
  if value == "U" then
    return "Message Type: Best Bid And Offer Message (U)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_nsmequities_matchview_asciiitch_v1_0.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_matchview_asciiitch_v1_0.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_matchview_asciiitch_v1_0.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_nsmequities_matchview_asciiitch_v1_0.sequence_number = {}

-- Size: Sequence Number
nasdaq_nsmequities_matchview_asciiitch_v1_0.sequence_number.size = 4

-- Display: Sequence Number
nasdaq_nsmequities_matchview_asciiitch_v1_0.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_nsmequities_matchview_asciiitch_v1_0.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_matchview_asciiitch_v1_0.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_matchview_asciiitch_v1_0.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_nsmequities_matchview_asciiitch_v1_0.session = {}

-- Size: Session
nasdaq_nsmequities_matchview_asciiitch_v1_0.session.size = 10

-- Display: Session
nasdaq_nsmequities_matchview_asciiitch_v1_0.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
nasdaq_nsmequities_matchview_asciiitch_v1_0.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_matchview_asciiitch_v1_0.session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_matchview_asciiitch_v1_0.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.fields.session, range, value, display)

  return offset + length, value
end

-- Symbol
nasdaq_nsmequities_matchview_asciiitch_v1_0.symbol = {}

-- Size: Symbol
nasdaq_nsmequities_matchview_asciiitch_v1_0.symbol.size = 6

-- Display: Symbol
nasdaq_nsmequities_matchview_asciiitch_v1_0.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
nasdaq_nsmequities_matchview_asciiitch_v1_0.symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_matchview_asciiitch_v1_0.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_matchview_asciiitch_v1_0.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.fields.symbol, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_nsmequities_matchview_asciiitch_v1_0.timestamp = {}

-- Size: Timestamp
nasdaq_nsmequities_matchview_asciiitch_v1_0.timestamp.size = 8

-- Display: Timestamp
nasdaq_nsmequities_matchview_asciiitch_v1_0.timestamp.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode (or unparsable ASCII fell back to a non-number)
  if type(value) ~= "number" then
    return "Timestamp: "..tostring(value)
  end

  if nasdaq_nsmequities_matchview_asciiitch_v1_0.timestamp_format == 0 then
    return "Timestamp: "..value
  end

  -- Parse milliseconds since midnight
  local seconds = math.floor(value / 1000)
  local milliseconds = value % 1000

  -- Full datetime mode (calculate from capture date + UTC offset)
  if nasdaq_nsmequities_matchview_asciiitch_v1_0.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = nasdaq_nsmequities_matchview_asciiitch_v1_0.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Timestamp: "..os.date("!%Y-%m-%d %H:%M:%S.", full_seconds + utc_offset_seconds)..string.format("%03d", milliseconds)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("!%H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Timestamp
nasdaq_nsmequities_matchview_asciiitch_v1_0.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_matchview_asciiitch_v1_0.timestamp.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nasdaq_nsmequities_matchview_asciiitch_v1_0.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.fields.timestamp, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq NsmEquities MatchView AsciiItch 1.0
-----------------------------------------------------------------------

-- Best Bid And Offer Message
nasdaq_nsmequities_matchview_asciiitch_v1_0.best_bid_and_offer_message = {}

-- Size: Best Bid And Offer Message
nasdaq_nsmequities_matchview_asciiitch_v1_0.best_bid_and_offer_message.size =
  nasdaq_nsmequities_matchview_asciiitch_v1_0.symbol.size + 
  nasdaq_nsmequities_matchview_asciiitch_v1_0.bid_price.size + 
  nasdaq_nsmequities_matchview_asciiitch_v1_0.ask_price.size

-- Display: Best Bid And Offer Message
nasdaq_nsmequities_matchview_asciiitch_v1_0.best_bid_and_offer_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Bid And Offer Message
nasdaq_nsmequities_matchview_asciiitch_v1_0.best_bid_and_offer_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: Alpha
  index, symbol = nasdaq_nsmequities_matchview_asciiitch_v1_0.symbol.dissect(buffer, index, packet, parent)

  -- Bid Price: Numeric
  index, bid_price = nasdaq_nsmequities_matchview_asciiitch_v1_0.bid_price.dissect(buffer, index, packet, parent)

  -- Ask Price: Numeric
  index, ask_price = nasdaq_nsmequities_matchview_asciiitch_v1_0.ask_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Bid And Offer Message
nasdaq_nsmequities_matchview_asciiitch_v1_0.best_bid_and_offer_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.fields.best_bid_and_offer_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_matchview_asciiitch_v1_0.best_bid_and_offer_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_matchview_asciiitch_v1_0.best_bid_and_offer_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_matchview_asciiitch_v1_0.best_bid_and_offer_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nasdaq_nsmequities_matchview_asciiitch_v1_0.payload = {}

-- Dissect: Payload
nasdaq_nsmequities_matchview_asciiitch_v1_0.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Best Bid And Offer Message
  if message_type == "U" then
    return nasdaq_nsmequities_matchview_asciiitch_v1_0.best_bid_and_offer_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nasdaq_nsmequities_matchview_asciiitch_v1_0.message_header = {}

-- Size: Message Header
nasdaq_nsmequities_matchview_asciiitch_v1_0.message_header.size =
  nasdaq_nsmequities_matchview_asciiitch_v1_0.message_length.size + 
  nasdaq_nsmequities_matchview_asciiitch_v1_0.timestamp.size + 
  nasdaq_nsmequities_matchview_asciiitch_v1_0.message_type.size

-- Display: Message Header
nasdaq_nsmequities_matchview_asciiitch_v1_0.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_nsmequities_matchview_asciiitch_v1_0.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_nsmequities_matchview_asciiitch_v1_0.message_length.dissect(buffer, index, packet, parent)

  -- Timestamp: 8 Byte Ascii String
  index, timestamp = nasdaq_nsmequities_matchview_asciiitch_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 1 values
  index, message_type = nasdaq_nsmequities_matchview_asciiitch_v1_0.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_nsmequities_matchview_asciiitch_v1_0.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.fields.message_header, buffer(offset, 0))
    local index = nasdaq_nsmequities_matchview_asciiitch_v1_0.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_matchview_asciiitch_v1_0.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_matchview_asciiitch_v1_0.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_nsmequities_matchview_asciiitch_v1_0.message = {}

-- Read runtime size of: Message
nasdaq_nsmequities_matchview_asciiitch_v1_0.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 2):uint()

  return message_length + 2
end

-- Display: Message
nasdaq_nsmequities_matchview_asciiitch_v1_0.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_nsmequities_matchview_asciiitch_v1_0.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Implicit Message Sequence Number
  if message_index ~= nil and show.sequences and nasdaq_nsmequities_matchview_asciiitch_v1_0.packet_sequence ~= nil then
    local sequence = parent:add(omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.fields.message_sequence_number, UInt64.new(nasdaq_nsmequities_matchview_asciiitch_v1_0.packet_sequence + message_index - 1))
    sequence:set_generated()
  end

  -- Message Header: Struct of 3 fields
  index, message_header = nasdaq_nsmequities_matchview_asciiitch_v1_0.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 1 branches
  index = nasdaq_nsmequities_matchview_asciiitch_v1_0.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_nsmequities_matchview_asciiitch_v1_0.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = nasdaq_nsmequities_matchview_asciiitch_v1_0.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.fields.message, buffer(offset, 0))
    local current = nasdaq_nsmequities_matchview_asciiitch_v1_0.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_nsmequities_matchview_asciiitch_v1_0.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_matchview_asciiitch_v1_0.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- End Of Session
nasdaq_nsmequities_matchview_asciiitch_v1_0.end_of_session = {}

-- Display: End Of Session
nasdaq_nsmequities_matchview_asciiitch_v1_0.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
nasdaq_nsmequities_matchview_asciiitch_v1_0.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nsmequities_matchview_asciiitch_v1_0.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Heartbeat
nasdaq_nsmequities_matchview_asciiitch_v1_0.heartbeat = {}

-- Display: Heartbeat
nasdaq_nsmequities_matchview_asciiitch_v1_0.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
nasdaq_nsmequities_matchview_asciiitch_v1_0.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nsmequities_matchview_asciiitch_v1_0.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
nasdaq_nsmequities_matchview_asciiitch_v1_0.messages = {}

-- Dissect: Messages
nasdaq_nsmequities_matchview_asciiitch_v1_0.messages.dissect = function(buffer, offset, packet, parent, message_count)
  -- Dissect Heartbeat
  if message_count == 0 then
    return nasdaq_nsmequities_matchview_asciiitch_v1_0.heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session
  if message_count == 65535 then
    return nasdaq_nsmequities_matchview_asciiitch_v1_0.end_of_session.dissect(buffer, offset, packet, parent)
  end

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    offset = nasdaq_nsmequities_matchview_asciiitch_v1_0.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end
end

-- Packet Header
nasdaq_nsmequities_matchview_asciiitch_v1_0.packet_header = {}

-- Size: Packet Header
nasdaq_nsmequities_matchview_asciiitch_v1_0.packet_header.size =
  nasdaq_nsmequities_matchview_asciiitch_v1_0.session.size + 
  nasdaq_nsmequities_matchview_asciiitch_v1_0.sequence_number.size + 
  nasdaq_nsmequities_matchview_asciiitch_v1_0.message_count.size

-- Display: Packet Header
nasdaq_nsmequities_matchview_asciiitch_v1_0.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_nsmequities_matchview_asciiitch_v1_0.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_nsmequities_matchview_asciiitch_v1_0.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = nasdaq_nsmequities_matchview_asciiitch_v1_0.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_nsmequities_matchview_asciiitch_v1_0.message_count.dissect(buffer, index, packet, parent)

  -- Sequence base for the packet's messages
  nasdaq_nsmequities_matchview_asciiitch_v1_0.packet_sequence = sequence_number

  return index
end

-- Dissect: Packet Header
nasdaq_nsmequities_matchview_asciiitch_v1_0.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_nsmequities_matchview_asciiitch_v1_0.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_matchview_asciiitch_v1_0.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_matchview_asciiitch_v1_0.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_nsmequities_matchview_asciiitch_v1_0.packet = {}

-- Verify required size of Udp packet
nasdaq_nsmequities_matchview_asciiitch_v1_0.packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_nsmequities_matchview_asciiitch_v1_0.packet_header.size
end

-- Dissect Packet
nasdaq_nsmequities_matchview_asciiitch_v1_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_nsmequities_matchview_asciiitch_v1_0.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):le_uint()

  -- Messages: Runtime Type with 3 branches
  index = nasdaq_nsmequities_matchview_asciiitch_v1_0.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.init()
end

-- Dissector for Nasdaq NsmEquities MatchView AsciiItch 1.0
function omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_nsmequities_matchview_asciiitch_v1_0, buffer(), omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.description, "("..buffer:len().." Bytes)")
  return nasdaq_nsmequities_matchview_asciiitch_v1_0.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq NsmEquities MatchView AsciiItch 1.0 (Udp)
local function omi_nasdaq_nsmequities_matchview_asciiitch_v1_0_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_nsmequities_matchview_asciiitch_v1_0.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_nsmequities_matchview_asciiitch_v1_0
  omi_nasdaq_nsmequities_matchview_asciiitch_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq NsmEquities MatchView AsciiItch 1.0
omi_nasdaq_nsmequities_matchview_asciiitch_v1_0:register_heuristic("udp", omi_nasdaq_nsmequities_matchview_asciiitch_v1_0_udp_heuristic)

-- Register Nasdaq NsmEquities MatchView AsciiItch 1.0 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_nasdaq_nsmequities_matchview_asciiitch_v1_0)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 1.0
--   Since: 1.0
--   Date: Friday, December 14, 2007
--   Specification: ouchpricingfeed.pdf
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
