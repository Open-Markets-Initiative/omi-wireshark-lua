-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Tmx Tsx IndexFeed Qrtmd 1.19 Protocol
local omi_tmx_tsx_indexfeed_qrtmd_v1_19 = Proto("Omi.Tmx.Tsx.IndexFeed.Qrtmd.v1.19", "Tmx Tsx IndexFeed Qrtmd 1.19")

-- Protocol table
local tmx_tsx_indexfeed_qrtmd_v1_19 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Tmx Tsx IndexFeed Qrtmd 1.19 Fields
omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.ask_price = ProtoField.new("Ask Price", "tmx.tsx.indexfeed.qrtmd.v1.19.askprice", ftypes.DOUBLE, nil, nil, nil, "Value for the Index based on the latest ask price of the stocks comprising the Index.")
omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.bid_price = ProtoField.new("Bid Price", "tmx.tsx.indexfeed.qrtmd.v1.19.bidprice", ftypes.DOUBLE, nil, nil, nil, "Value for the Index based on the latest bid price of the stocks comprising the Index.")
omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.continuation_identifier = ProtoField.new("Continuation Identifier", "tmx.tsx.indexfeed.qrtmd.v1.19.continuationidentifier", ftypes.STRING, nil, nil, nil, "Provides for fragmentation of a message exceeding the maximum transmission unit")
omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.exchange_identifier = ProtoField.new("Exchange Identifier", "tmx.tsx.indexfeed.qrtmd.v1.19.exchangeidentifier", ftypes.STRING, nil, nil, nil, "Code assigned to the originating exchange")
omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.high_level = ProtoField.new("High Level", "tmx.tsx.indexfeed.qrtmd.v1.19.highlevel", ftypes.DOUBLE, nil, nil, nil, "Highest level of the index for the day.")
omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.index_id = ProtoField.new("Index Id", "tmx.tsx.indexfeed.qrtmd.v1.19.indexid", ftypes.STRING, nil, nil, nil, "Identifies the index.")
omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.last_level = ProtoField.new("Last Level", "tmx.tsx.indexfeed.qrtmd.v1.19.lastlevel", ftypes.DOUBLE, nil, nil, nil, "The level of the index as of the time of the calculation.")
omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.low_level = ProtoField.new("Low Level", "tmx.tsx.indexfeed.qrtmd.v1.19.lowlevel", ftypes.DOUBLE, nil, nil, nil, "Lowest level of the index for the day.")
omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.markers = ProtoField.new("Markers", "tmx.tsx.indexfeed.qrtmd.v1.19.markers", ftypes.STRING, nil, nil, nil, "Marks the message carrying the closing values.")
omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.message_length = ProtoField.new("Message Length", "tmx.tsx.indexfeed.qrtmd.v1.19.messagelength", ftypes.UINT16, nil, nil, nil, "Total length of header and message business content, excluding Stx and Etx")
omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.message_type = ProtoField.new("Message Type", "tmx.tsx.indexfeed.qrtmd.v1.19.messagetype", ftypes.STRING, nil, nil, nil, "Unique code assigned to each message type, specific to each market service")
omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.net_change = ProtoField.new("Net Change", "tmx.tsx.indexfeed.qrtmd.v1.19.netchange", ftypes.DOUBLE, nil, nil, nil, "Net change from previous index level close.")
omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.open_level = ProtoField.new("Open Level", "tmx.tsx.indexfeed.qrtmd.v1.19.openlevel", ftypes.DOUBLE, nil, nil, nil, "Level of the index at the first calculation of the day.")
omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.pe = ProtoField.new("Pe", "tmx.tsx.indexfeed.qrtmd.v1.19.pe", ftypes.DOUBLE, nil, nil, nil, "Price/Earnings ratio for the index.")
omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.percent_trading = ProtoField.new("Percent Trading", "tmx.tsx.indexfeed.qrtmd.v1.19.percenttrading", ftypes.DOUBLE, nil, nil, nil, "Percentage of the index constituents that are open.")
omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.qrtmd_etx = ProtoField.new("Qrtmd Etx", "tmx.tsx.indexfeed.qrtmd.v1.19.qrtmdetx", ftypes.INT8, nil, nil, nil, "End of Qrtmd message")
omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.qrtmd_stx = ProtoField.new("Qrtmd Stx", "tmx.tsx.indexfeed.qrtmd.v1.19.qrtmdstx", ftypes.INT8, nil, nil, nil, "Start of Qrtmd message")
omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.retransmission_identifier = ProtoField.new("Retransmission Identifier", "tmx.tsx.indexfeed.qrtmd.v1.19.retransmissionidentifier", ftypes.STRING, nil, nil, nil, "Marks a normal transmission, and is always blank on a heartbeat")
omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.sequence_number = ProtoField.new("Sequence Number", "tmx.tsx.indexfeed.qrtmd.v1.19.sequencenumber", ftypes.UINT32, nil, nil, nil, "Assigned at service broadcast from 000000001 to 999999999, blank on a heartbeat")
omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.service_identifier = ProtoField.new("Service Identifier", "tmx.tsx.indexfeed.qrtmd.v1.19.serviceidentifier", ftypes.STRING, nil, nil, nil, "Service code identifying the market data service carried on the feed")
omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.settlement_value = ProtoField.new("Settlement Value", "tmx.tsx.indexfeed.qrtmd.v1.19.settlementvalue", ftypes.DOUBLE, nil, nil, nil, "Settlement open.")
omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.special_opening_quote = ProtoField.new("Special Opening Quote", "tmx.tsx.indexfeed.qrtmd.v1.19.specialopeningquote", ftypes.DOUBLE, nil, nil, nil, "Adjusted index open value.")
omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.time = ProtoField.new("Time", "tmx.tsx.indexfeed.qrtmd.v1.19.time", ftypes.STRING, nil, nil, nil, "Time of the index level calculation.")
omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.value = ProtoField.new("Value", "tmx.tsx.indexfeed.qrtmd.v1.19.value", ftypes.UINT64, nil, nil, nil, "Total dollar of shares traded for the index.")
omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.volume = ProtoField.new("Volume", "tmx.tsx.indexfeed.qrtmd.v1.19.volume", ftypes.UINT64, nil, nil, nil, "Total number of shares traded for the index.")
omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.yield = ProtoField.new("Yield", "tmx.tsx.indexfeed.qrtmd.v1.19.yield", ftypes.DOUBLE, nil, nil, nil, "Dividend Yield for the index, expressed as a percentage.")

-- Tmx Tsx IndexFeed Qrtmd 1.19 Framing
omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.message_header = ProtoField.new("Message Header", "tmx.tsx.indexfeed.qrtmd.v1.19.messageheader", ftypes.STRING, nil, nil, nil, "Twenty two byte ascii header carried on every Qrtmd message")
omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.packet = ProtoField.new("Packet", "tmx.tsx.indexfeed.qrtmd.v1.19.packet", ftypes.STRING, nil, nil, nil, "Qrtmd Udp Packet")

-- Tmx Tsx IndexFeed 1.19 Application Messages
omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.beginning_of_index_summary_message = ProtoField.new("Beginning Of Index Summary Message", "tmx.tsx.indexfeed.qrtmd.v1.19.beginningofindexsummarymessage", ftypes.BYTES, nil, nil, nil, "Indicates that the end of day Index is to follow.")
omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.s_and_p_tsx_official_index_level_message = ProtoField.new("S And P Tsx Official Index Level Message", "tmx.tsx.indexfeed.qrtmd.v1.19.sandptsxofficialindexlevelmessage", ftypes.STRING, nil, nil, nil, "Level of an index as of the time of the calculation.")

-- Tmx Tsx IndexFeed Qrtmd 1.19 Expert Info
tmx_tsx_indexfeed_qrtmd_v1_19.experts = {}
tmx_tsx_indexfeed_qrtmd_v1_19.experts.not_a_number = ProtoExpert.new("tmx.tsx.indexfeed.qrtmd.v1.19.notanumber", "Ascii digits field holding no number", expert.group.PROTOCOL, expert.severity.WARN)
omi_tmx_tsx_indexfeed_qrtmd_v1_19.experts = { tmx_tsx_indexfeed_qrtmd_v1_19.experts.not_a_number }

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Tmx Tsx IndexFeed Qrtmd 1.19 Element Dissection Options
show.headers = true
show.structs = true
show.application_messages = true

-- Register Tmx Tsx IndexFeed Qrtmd 1.19 Show Options
omi_tmx_tsx_indexfeed_qrtmd_v1_19.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_tmx_tsx_indexfeed_qrtmd_v1_19.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_tmx_tsx_indexfeed_qrtmd_v1_19.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")

-- Handle changed preferences
function omi_tmx_tsx_indexfeed_qrtmd_v1_19.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_tmx_tsx_indexfeed_qrtmd_v1_19.prefs.show_application_messages then
    show.application_messages = omi_tmx_tsx_indexfeed_qrtmd_v1_19.prefs.show_application_messages
  end
  if show.headers ~= omi_tmx_tsx_indexfeed_qrtmd_v1_19.prefs.show_headers then
    show.headers = omi_tmx_tsx_indexfeed_qrtmd_v1_19.prefs.show_headers
  end
  if show.structs ~= omi_tmx_tsx_indexfeed_qrtmd_v1_19.prefs.show_structs then
    show.structs = omi_tmx_tsx_indexfeed_qrtmd_v1_19.prefs.show_structs
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

-- ascii digits as an unsigned 64 bit value, nil when the run is no number
ascii_to_uint64 = function(str)
  local digits = str:match("^%s*(%d+)%s*$")

  if digits == nil then
    return nil
  end

  local value = UInt64.new(digits)

  -- UInt64.new stops at its maximum rather than failing, so an overrun would
  -- read as that maximum. Nineteen digits always fit, so only a longer run is
  -- read back and compared against the digits it came from
  if #digits > 19 then
    local significant = digits:match("^0*(%d+)$")

    if tostring(value) ~= significant then
      return nil
    end
  end

  return value
end


-----------------------------------------------------------------------
-- Tmx Tsx IndexFeed Qrtmd 1.19 Fields
-----------------------------------------------------------------------

-- Ask Price
tmx_tsx_indexfeed_qrtmd_v1_19.ask_price = {}

-- Size: Ask Price
tmx_tsx_indexfeed_qrtmd_v1_19.ask_price.size = 7

-- Display: Ask Price
tmx_tsx_indexfeed_qrtmd_v1_19.ask_price.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, tmx_tsx_indexfeed_qrtmd_v1_19.ask_price.size):string(), 2)

  if text == nil then
    return "Ask Price: "..tostring(value)
  end

  return "Ask Price: "..text
end

-- Dissect: Ask Price
tmx_tsx_indexfeed_qrtmd_v1_19.ask_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_indexfeed_qrtmd_v1_19.ask_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.ask_price, range, value, "Ask Price: Not Applicable")
    item:add_proto_expert_info(tmx_tsx_indexfeed_qrtmd_v1_19.experts.not_a_number, "Ask Price is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = tmx_tsx_indexfeed_qrtmd_v1_19.ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Bid Price
tmx_tsx_indexfeed_qrtmd_v1_19.bid_price = {}

-- Size: Bid Price
tmx_tsx_indexfeed_qrtmd_v1_19.bid_price.size = 7

-- Display: Bid Price
tmx_tsx_indexfeed_qrtmd_v1_19.bid_price.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, tmx_tsx_indexfeed_qrtmd_v1_19.bid_price.size):string(), 2)

  if text == nil then
    return "Bid Price: "..tostring(value)
  end

  return "Bid Price: "..text
end

-- Dissect: Bid Price
tmx_tsx_indexfeed_qrtmd_v1_19.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_indexfeed_qrtmd_v1_19.bid_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.bid_price, range, value, "Bid Price: Not Applicable")
    item:add_proto_expert_info(tmx_tsx_indexfeed_qrtmd_v1_19.experts.not_a_number, "Bid Price is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = tmx_tsx_indexfeed_qrtmd_v1_19.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Continuation Identifier
tmx_tsx_indexfeed_qrtmd_v1_19.continuation_identifier = {}

-- Size: Continuation Identifier
tmx_tsx_indexfeed_qrtmd_v1_19.continuation_identifier.size = 1

-- Display: Continuation Identifier
tmx_tsx_indexfeed_qrtmd_v1_19.continuation_identifier.labels = {
  ["0"] = "Continuation Identifier: Stand Alone Message (0)",
}

tmx_tsx_indexfeed_qrtmd_v1_19.continuation_identifier.display = function(value)
  return tmx_tsx_indexfeed_qrtmd_v1_19.continuation_identifier.labels[value] or "Continuation Identifier: Unknown("..value..")"
end

-- Dissect: Continuation Identifier
tmx_tsx_indexfeed_qrtmd_v1_19.continuation_identifier.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_indexfeed_qrtmd_v1_19.continuation_identifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsx_indexfeed_qrtmd_v1_19.continuation_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.continuation_identifier, range, value, display)

  return offset + length, value
end

-- Exchange Identifier
tmx_tsx_indexfeed_qrtmd_v1_19.exchange_identifier = {}

-- Size: Exchange Identifier
tmx_tsx_indexfeed_qrtmd_v1_19.exchange_identifier.size = 2

-- Display: Exchange Identifier
tmx_tsx_indexfeed_qrtmd_v1_19.exchange_identifier.labels = {
  ["T"] = "Exchange Identifier: Toronto Stock Exchange (T)",
  ["V"] = "Exchange Identifier: Tsx Venture Exchange (V)",
  ["A"] = "Exchange Identifier: Tsx Alpha Exchange (A)",
}

tmx_tsx_indexfeed_qrtmd_v1_19.exchange_identifier.display = function(value)
  return tmx_tsx_indexfeed_qrtmd_v1_19.exchange_identifier.labels[value] or "Exchange Identifier: Unknown("..value..")"
end

-- Dissect: Exchange Identifier
tmx_tsx_indexfeed_qrtmd_v1_19.exchange_identifier.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_indexfeed_qrtmd_v1_19.exchange_identifier.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_tsx_indexfeed_qrtmd_v1_19.exchange_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.exchange_identifier, range, value, display)

  return offset + length, value
end

-- High Level
tmx_tsx_indexfeed_qrtmd_v1_19.high_level = {}

-- Size: High Level
tmx_tsx_indexfeed_qrtmd_v1_19.high_level.size = 8

-- Display: High Level
tmx_tsx_indexfeed_qrtmd_v1_19.high_level.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, tmx_tsx_indexfeed_qrtmd_v1_19.high_level.size):string(), 2)

  if text == nil then
    return "High Level: "..tostring(value)
  end

  return "High Level: "..text
end

-- Dissect: High Level
tmx_tsx_indexfeed_qrtmd_v1_19.high_level.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_indexfeed_qrtmd_v1_19.high_level.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.high_level, range, value, "High Level: Not Applicable")
    item:add_proto_expert_info(tmx_tsx_indexfeed_qrtmd_v1_19.experts.not_a_number, "High Level is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = tmx_tsx_indexfeed_qrtmd_v1_19.high_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.high_level, range, value, display)

  return offset + length, value
end

-- Index Id
tmx_tsx_indexfeed_qrtmd_v1_19.index_id = {}

-- Size: Index Id
tmx_tsx_indexfeed_qrtmd_v1_19.index_id.size = 4

-- Display: Index Id
tmx_tsx_indexfeed_qrtmd_v1_19.index_id.display = function(value)
  return "Index Id: "..value
end

-- Dissect: Index Id
tmx_tsx_indexfeed_qrtmd_v1_19.index_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_indexfeed_qrtmd_v1_19.index_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_tsx_indexfeed_qrtmd_v1_19.index_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.index_id, range, value, display)

  return offset + length, value
end

-- Last Level
tmx_tsx_indexfeed_qrtmd_v1_19.last_level = {}

-- Size: Last Level
tmx_tsx_indexfeed_qrtmd_v1_19.last_level.size = 8

-- Display: Last Level
tmx_tsx_indexfeed_qrtmd_v1_19.last_level.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, tmx_tsx_indexfeed_qrtmd_v1_19.last_level.size):string(), 2)

  if text == nil then
    return "Last Level: "..tostring(value)
  end

  return "Last Level: "..text
end

-- Dissect: Last Level
tmx_tsx_indexfeed_qrtmd_v1_19.last_level.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_indexfeed_qrtmd_v1_19.last_level.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.last_level, range, value, "Last Level: Not Applicable")
    item:add_proto_expert_info(tmx_tsx_indexfeed_qrtmd_v1_19.experts.not_a_number, "Last Level is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = tmx_tsx_indexfeed_qrtmd_v1_19.last_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.last_level, range, value, display)

  return offset + length, value
end

-- Low Level
tmx_tsx_indexfeed_qrtmd_v1_19.low_level = {}

-- Size: Low Level
tmx_tsx_indexfeed_qrtmd_v1_19.low_level.size = 8

-- Display: Low Level
tmx_tsx_indexfeed_qrtmd_v1_19.low_level.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, tmx_tsx_indexfeed_qrtmd_v1_19.low_level.size):string(), 2)

  if text == nil then
    return "Low Level: "..tostring(value)
  end

  return "Low Level: "..text
end

-- Dissect: Low Level
tmx_tsx_indexfeed_qrtmd_v1_19.low_level.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_indexfeed_qrtmd_v1_19.low_level.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.low_level, range, value, "Low Level: Not Applicable")
    item:add_proto_expert_info(tmx_tsx_indexfeed_qrtmd_v1_19.experts.not_a_number, "Low Level is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = tmx_tsx_indexfeed_qrtmd_v1_19.low_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.low_level, range, value, display)

  return offset + length, value
end

-- Markers
tmx_tsx_indexfeed_qrtmd_v1_19.markers = {}

-- Size: Markers
tmx_tsx_indexfeed_qrtmd_v1_19.markers.size = 1

-- Display: Markers
tmx_tsx_indexfeed_qrtmd_v1_19.markers.labels = {
  ["C"] = "Markers: Close (C)",
}

tmx_tsx_indexfeed_qrtmd_v1_19.markers.display = function(value)
  return tmx_tsx_indexfeed_qrtmd_v1_19.markers.labels[value] or "Markers: Unknown("..value..")"
end

-- Dissect: Markers
tmx_tsx_indexfeed_qrtmd_v1_19.markers.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_indexfeed_qrtmd_v1_19.markers.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsx_indexfeed_qrtmd_v1_19.markers.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.markers, range, value, display)

  return offset + length, value
end

-- Message Length
tmx_tsx_indexfeed_qrtmd_v1_19.message_length = {}

-- Size: Message Length
tmx_tsx_indexfeed_qrtmd_v1_19.message_length.size = 4

-- Display: Message Length
tmx_tsx_indexfeed_qrtmd_v1_19.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
tmx_tsx_indexfeed_qrtmd_v1_19.message_length.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_indexfeed_qrtmd_v1_19.message_length.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.message_length, range, value, "Message Length: Not Applicable")
    item:add_proto_expert_info(tmx_tsx_indexfeed_qrtmd_v1_19.experts.not_a_number, "Message Length is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_tsx_indexfeed_qrtmd_v1_19.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
tmx_tsx_indexfeed_qrtmd_v1_19.message_type = {}

-- Size: Message Type
tmx_tsx_indexfeed_qrtmd_v1_19.message_type.size = 2

-- Display: Message Type
tmx_tsx_indexfeed_qrtmd_v1_19.message_type.labels = {
  ["K"] = "Message Type: S And P Tsx Official Index Level Message (K)",
  ["PA"] = "Message Type: Beginning Of Index Summary Message (PA)",
}

tmx_tsx_indexfeed_qrtmd_v1_19.message_type.display = function(value)
  return tmx_tsx_indexfeed_qrtmd_v1_19.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
tmx_tsx_indexfeed_qrtmd_v1_19.message_type.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_indexfeed_qrtmd_v1_19.message_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_tsx_indexfeed_qrtmd_v1_19.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.message_type, range, value, display)

  return offset + length, value
end

-- Net Change
tmx_tsx_indexfeed_qrtmd_v1_19.net_change = {}

-- Size: Net Change
tmx_tsx_indexfeed_qrtmd_v1_19.net_change.size = 7

-- Display: Net Change
tmx_tsx_indexfeed_qrtmd_v1_19.net_change.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, tmx_tsx_indexfeed_qrtmd_v1_19.net_change.size):string(), 2)

  if text == nil then
    return "Net Change: "..tostring(value)
  end

  return "Net Change: "..text
end

-- Dissect: Net Change
tmx_tsx_indexfeed_qrtmd_v1_19.net_change.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_indexfeed_qrtmd_v1_19.net_change.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.net_change, range, value, "Net Change: Not Applicable")
    item:add_proto_expert_info(tmx_tsx_indexfeed_qrtmd_v1_19.experts.not_a_number, "Net Change is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = tmx_tsx_indexfeed_qrtmd_v1_19.net_change.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.net_change, range, value, display)

  return offset + length, value
end

-- Open Level
tmx_tsx_indexfeed_qrtmd_v1_19.open_level = {}

-- Size: Open Level
tmx_tsx_indexfeed_qrtmd_v1_19.open_level.size = 8

-- Display: Open Level
tmx_tsx_indexfeed_qrtmd_v1_19.open_level.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, tmx_tsx_indexfeed_qrtmd_v1_19.open_level.size):string(), 2)

  if text == nil then
    return "Open Level: "..tostring(value)
  end

  return "Open Level: "..text
end

-- Dissect: Open Level
tmx_tsx_indexfeed_qrtmd_v1_19.open_level.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_indexfeed_qrtmd_v1_19.open_level.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.open_level, range, value, "Open Level: Not Applicable")
    item:add_proto_expert_info(tmx_tsx_indexfeed_qrtmd_v1_19.experts.not_a_number, "Open Level is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = tmx_tsx_indexfeed_qrtmd_v1_19.open_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.open_level, range, value, display)

  return offset + length, value
end

-- Pe
tmx_tsx_indexfeed_qrtmd_v1_19.pe = {}

-- Size: Pe
tmx_tsx_indexfeed_qrtmd_v1_19.pe.size = 7

-- Display: Pe
tmx_tsx_indexfeed_qrtmd_v1_19.pe.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, tmx_tsx_indexfeed_qrtmd_v1_19.pe.size):string(), 2)

  if text == nil then
    return "Pe: "..tostring(value)
  end

  return "Pe: "..text
end

-- Dissect: Pe
tmx_tsx_indexfeed_qrtmd_v1_19.pe.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_indexfeed_qrtmd_v1_19.pe.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.pe, range, value, "Pe: Not Applicable")
    item:add_proto_expert_info(tmx_tsx_indexfeed_qrtmd_v1_19.experts.not_a_number, "Pe is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = tmx_tsx_indexfeed_qrtmd_v1_19.pe.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.pe, range, value, display)

  return offset + length, value
end

-- Percent Trading
tmx_tsx_indexfeed_qrtmd_v1_19.percent_trading = {}

-- Size: Percent Trading
tmx_tsx_indexfeed_qrtmd_v1_19.percent_trading.size = 7

-- Display: Percent Trading
tmx_tsx_indexfeed_qrtmd_v1_19.percent_trading.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, tmx_tsx_indexfeed_qrtmd_v1_19.percent_trading.size):string(), 4)

  if text == nil then
    return "Percent Trading: "..tostring(value)
  end

  return "Percent Trading: "..text
end

-- Dissect: Percent Trading
tmx_tsx_indexfeed_qrtmd_v1_19.percent_trading.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_indexfeed_qrtmd_v1_19.percent_trading.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.percent_trading, range, value, "Percent Trading: Not Applicable")
    item:add_proto_expert_info(tmx_tsx_indexfeed_qrtmd_v1_19.experts.not_a_number, "Percent Trading is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = tmx_tsx_indexfeed_qrtmd_v1_19.percent_trading.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.percent_trading, range, value, display)

  return offset + length, value
end

-- Qrtmd Etx
tmx_tsx_indexfeed_qrtmd_v1_19.qrtmd_etx = {}

-- Size: Qrtmd Etx
tmx_tsx_indexfeed_qrtmd_v1_19.qrtmd_etx.size = 1

-- Display: Qrtmd Etx
tmx_tsx_indexfeed_qrtmd_v1_19.qrtmd_etx.display = function(value)
  return "Qrtmd Etx: "..value
end

-- Dissect: Qrtmd Etx
tmx_tsx_indexfeed_qrtmd_v1_19.qrtmd_etx.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_indexfeed_qrtmd_v1_19.qrtmd_etx.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = tmx_tsx_indexfeed_qrtmd_v1_19.qrtmd_etx.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.qrtmd_etx, range, value, display)

  return offset + length, value
end

-- Qrtmd Stx
tmx_tsx_indexfeed_qrtmd_v1_19.qrtmd_stx = {}

-- Size: Qrtmd Stx
tmx_tsx_indexfeed_qrtmd_v1_19.qrtmd_stx.size = 1

-- Display: Qrtmd Stx
tmx_tsx_indexfeed_qrtmd_v1_19.qrtmd_stx.display = function(value)
  if value == 2 then
    return "Qrtmd Stx: Stx"
  end

  return "Qrtmd Stx: Unknown("..value..")"
end

-- Dissect: Qrtmd Stx
tmx_tsx_indexfeed_qrtmd_v1_19.qrtmd_stx.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_indexfeed_qrtmd_v1_19.qrtmd_stx.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = tmx_tsx_indexfeed_qrtmd_v1_19.qrtmd_stx.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.qrtmd_stx, range, value, display)

  return offset + length, value
end

-- Retransmission Identifier
tmx_tsx_indexfeed_qrtmd_v1_19.retransmission_identifier = {}

-- Size: Retransmission Identifier
tmx_tsx_indexfeed_qrtmd_v1_19.retransmission_identifier.size = 1

-- Display: Retransmission Identifier
tmx_tsx_indexfeed_qrtmd_v1_19.retransmission_identifier.labels = {
  ["0"] = "Retransmission Identifier: Normal Transmission (0)",
}

tmx_tsx_indexfeed_qrtmd_v1_19.retransmission_identifier.display = function(value)
  return tmx_tsx_indexfeed_qrtmd_v1_19.retransmission_identifier.labels[value] or "Retransmission Identifier: Unknown("..value..")"
end

-- Dissect: Retransmission Identifier
tmx_tsx_indexfeed_qrtmd_v1_19.retransmission_identifier.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_indexfeed_qrtmd_v1_19.retransmission_identifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsx_indexfeed_qrtmd_v1_19.retransmission_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.retransmission_identifier, range, value, display)

  return offset + length, value
end

-- Sequence Number
tmx_tsx_indexfeed_qrtmd_v1_19.sequence_number = {}

-- Size: Sequence Number
tmx_tsx_indexfeed_qrtmd_v1_19.sequence_number.size = 9

-- Display: Sequence Number
tmx_tsx_indexfeed_qrtmd_v1_19.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
tmx_tsx_indexfeed_qrtmd_v1_19.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_indexfeed_qrtmd_v1_19.sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.sequence_number, range, value, "Sequence Number: Not Applicable")
    item:add_proto_expert_info(tmx_tsx_indexfeed_qrtmd_v1_19.experts.not_a_number, "Sequence Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_tsx_indexfeed_qrtmd_v1_19.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Service Identifier
tmx_tsx_indexfeed_qrtmd_v1_19.service_identifier = {}

-- Size: Service Identifier
tmx_tsx_indexfeed_qrtmd_v1_19.service_identifier.size = 3

-- Display: Service Identifier
tmx_tsx_indexfeed_qrtmd_v1_19.service_identifier.labels = {
  ["TL1"] = "Service Identifier: Toronto Level 1 (TL1)",
  ["CL1"] = "Service Identifier: Tsx Venture Exchange Level 1 (CL1)",
  ["AL1"] = "Service Identifier: Alpha Level 1 (AL1)",
  ["TL2"] = "Service Identifier: Toronto Level 2 (TL2)",
  ["CL2"] = "Service Identifier: Tsx Venture Exchange Level 2 (CL2)",
  ["AL2"] = "Service Identifier: Alpha Level 2 (AL2)",
  ["TX1"] = "Service Identifier: Index Service Level 1 (TX1)",
  ["TRD"] = "Service Identifier: Reference Data Feed Toronto (TRD)",
  ["VRD"] = "Service Identifier: Reference Data Feed Venture (VRD)",
}

tmx_tsx_indexfeed_qrtmd_v1_19.service_identifier.display = function(value)
  return tmx_tsx_indexfeed_qrtmd_v1_19.service_identifier.labels[value] or "Service Identifier: Unknown("..value..")"
end

-- Dissect: Service Identifier
tmx_tsx_indexfeed_qrtmd_v1_19.service_identifier.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_indexfeed_qrtmd_v1_19.service_identifier.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_tsx_indexfeed_qrtmd_v1_19.service_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.service_identifier, range, value, display)

  return offset + length, value
end

-- Settlement Value
tmx_tsx_indexfeed_qrtmd_v1_19.settlement_value = {}

-- Size: Settlement Value
tmx_tsx_indexfeed_qrtmd_v1_19.settlement_value.size = 8

-- Display: Settlement Value
tmx_tsx_indexfeed_qrtmd_v1_19.settlement_value.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, tmx_tsx_indexfeed_qrtmd_v1_19.settlement_value.size):string(), 2)

  if text == nil then
    return "Settlement Value: "..tostring(value)
  end

  return "Settlement Value: "..text
end

-- Dissect: Settlement Value
tmx_tsx_indexfeed_qrtmd_v1_19.settlement_value.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_indexfeed_qrtmd_v1_19.settlement_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.settlement_value, range, value, "Settlement Value: Not Applicable")
    item:add_proto_expert_info(tmx_tsx_indexfeed_qrtmd_v1_19.experts.not_a_number, "Settlement Value is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = tmx_tsx_indexfeed_qrtmd_v1_19.settlement_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.settlement_value, range, value, display)

  return offset + length, value
end

-- Special Opening Quote
tmx_tsx_indexfeed_qrtmd_v1_19.special_opening_quote = {}

-- Size: Special Opening Quote
tmx_tsx_indexfeed_qrtmd_v1_19.special_opening_quote.size = 8

-- Display: Special Opening Quote
tmx_tsx_indexfeed_qrtmd_v1_19.special_opening_quote.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, tmx_tsx_indexfeed_qrtmd_v1_19.special_opening_quote.size):string(), 2)

  if text == nil then
    return "Special Opening Quote: "..tostring(value)
  end

  return "Special Opening Quote: "..text
end

-- Dissect: Special Opening Quote
tmx_tsx_indexfeed_qrtmd_v1_19.special_opening_quote.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_indexfeed_qrtmd_v1_19.special_opening_quote.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.special_opening_quote, range, value, "Special Opening Quote: Not Applicable")
    item:add_proto_expert_info(tmx_tsx_indexfeed_qrtmd_v1_19.experts.not_a_number, "Special Opening Quote is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = tmx_tsx_indexfeed_qrtmd_v1_19.special_opening_quote.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.special_opening_quote, range, value, display)

  return offset + length, value
end

-- Time
tmx_tsx_indexfeed_qrtmd_v1_19.time = {}

-- Size: Time
tmx_tsx_indexfeed_qrtmd_v1_19.time.size = 6

-- Display: Time
tmx_tsx_indexfeed_qrtmd_v1_19.time.display = function(value)
  if #value < 6 then
    return "Time: "..value
  end

  return "Time: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6)
end

-- Dissect: Time
tmx_tsx_indexfeed_qrtmd_v1_19.time.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_indexfeed_qrtmd_v1_19.time.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsx_indexfeed_qrtmd_v1_19.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.time, range, value, display)

  return offset + length, value
end

-- Value
tmx_tsx_indexfeed_qrtmd_v1_19.value = {}

-- Size: Value
tmx_tsx_indexfeed_qrtmd_v1_19.value.size = 12

-- Display: Value
tmx_tsx_indexfeed_qrtmd_v1_19.value.display = function(value)
  return "Value: "..value
end

-- Dissect: Value
tmx_tsx_indexfeed_qrtmd_v1_19.value.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_indexfeed_qrtmd_v1_19.value.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.value, range, value, "Value: Not Applicable")
    item:add_proto_expert_info(tmx_tsx_indexfeed_qrtmd_v1_19.experts.not_a_number, "Value is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_tsx_indexfeed_qrtmd_v1_19.value.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.value, range, value, display)

  return offset + length, value
end

-- Volume
tmx_tsx_indexfeed_qrtmd_v1_19.volume = {}

-- Size: Volume
tmx_tsx_indexfeed_qrtmd_v1_19.volume.size = 11

-- Display: Volume
tmx_tsx_indexfeed_qrtmd_v1_19.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
tmx_tsx_indexfeed_qrtmd_v1_19.volume.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_indexfeed_qrtmd_v1_19.volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.volume, range, value, "Volume: Not Applicable")
    item:add_proto_expert_info(tmx_tsx_indexfeed_qrtmd_v1_19.experts.not_a_number, "Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_tsx_indexfeed_qrtmd_v1_19.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.volume, range, value, display)

  return offset + length, value
end

-- Yield
tmx_tsx_indexfeed_qrtmd_v1_19.yield = {}

-- Size: Yield
tmx_tsx_indexfeed_qrtmd_v1_19.yield.size = 5

-- Display: Yield
tmx_tsx_indexfeed_qrtmd_v1_19.yield.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, tmx_tsx_indexfeed_qrtmd_v1_19.yield.size):string(), 2)

  if text == nil then
    return "Yield: "..tostring(value)
  end

  return "Yield: "..text
end

-- Dissect: Yield
tmx_tsx_indexfeed_qrtmd_v1_19.yield.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_indexfeed_qrtmd_v1_19.yield.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.yield, range, value, "Yield: Not Applicable")
    item:add_proto_expert_info(tmx_tsx_indexfeed_qrtmd_v1_19.experts.not_a_number, "Yield is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = tmx_tsx_indexfeed_qrtmd_v1_19.yield.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.yield, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Tmx Tsx IndexFeed Qrtmd 1.19
-----------------------------------------------------------------------

-- Beginning Of Index Summary Message
tmx_tsx_indexfeed_qrtmd_v1_19.beginning_of_index_summary_message = {}

-- Display: Beginning Of Index Summary Message
tmx_tsx_indexfeed_qrtmd_v1_19.beginning_of_index_summary_message.display = function(packet, parent, length)
  return "Beginning Of Index Summary Message"
end


-- Dissect: Beginning Of Index Summary Message
tmx_tsx_indexfeed_qrtmd_v1_19.beginning_of_index_summary_message.dissect = function(buffer, offset, packet, parent)
  local display = tmx_tsx_indexfeed_qrtmd_v1_19.beginning_of_index_summary_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- S And P Tsx Official Index Level Message
tmx_tsx_indexfeed_qrtmd_v1_19.s_and_p_tsx_official_index_level_message = {}

-- Size: S And P Tsx Official Index Level Message
tmx_tsx_indexfeed_qrtmd_v1_19.s_and_p_tsx_official_index_level_message.size =
  tmx_tsx_indexfeed_qrtmd_v1_19.time.size + 
  tmx_tsx_indexfeed_qrtmd_v1_19.index_id.size + 
  tmx_tsx_indexfeed_qrtmd_v1_19.last_level.size + 
  tmx_tsx_indexfeed_qrtmd_v1_19.net_change.size + 
  tmx_tsx_indexfeed_qrtmd_v1_19.volume.size + 
  tmx_tsx_indexfeed_qrtmd_v1_19.value.size + 
  tmx_tsx_indexfeed_qrtmd_v1_19.open_level.size + 
  tmx_tsx_indexfeed_qrtmd_v1_19.settlement_value.size + 
  tmx_tsx_indexfeed_qrtmd_v1_19.special_opening_quote.size + 
  tmx_tsx_indexfeed_qrtmd_v1_19.percent_trading.size + 
  tmx_tsx_indexfeed_qrtmd_v1_19.high_level.size + 
  tmx_tsx_indexfeed_qrtmd_v1_19.low_level.size + 
  tmx_tsx_indexfeed_qrtmd_v1_19.pe.size + 
  tmx_tsx_indexfeed_qrtmd_v1_19.yield.size + 
  tmx_tsx_indexfeed_qrtmd_v1_19.markers.size + 
  tmx_tsx_indexfeed_qrtmd_v1_19.bid_price.size + 
  tmx_tsx_indexfeed_qrtmd_v1_19.ask_price.size

-- Display: S And P Tsx Official Index Level Message
tmx_tsx_indexfeed_qrtmd_v1_19.s_and_p_tsx_official_index_level_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: S And P Tsx Official Index Level Message
tmx_tsx_indexfeed_qrtmd_v1_19.s_and_p_tsx_official_index_level_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Alphanumeric
  index, time = tmx_tsx_indexfeed_qrtmd_v1_19.time.dissect(buffer, index, packet, parent)

  -- Index Id: Alphanumeric
  index, index_id = tmx_tsx_indexfeed_qrtmd_v1_19.index_id.dissect(buffer, index, packet, parent)

  -- Last Level: Numeric
  index, last_level = tmx_tsx_indexfeed_qrtmd_v1_19.last_level.dissect(buffer, index, packet, parent)

  -- Net Change: Signed numeric
  index, net_change = tmx_tsx_indexfeed_qrtmd_v1_19.net_change.dissect(buffer, index, packet, parent)

  -- Volume: Numeric
  index, volume = tmx_tsx_indexfeed_qrtmd_v1_19.volume.dissect(buffer, index, packet, parent)

  -- Value: Numeric
  index, value = tmx_tsx_indexfeed_qrtmd_v1_19.value.dissect(buffer, index, packet, parent)

  -- Open Level: Numeric
  index, open_level = tmx_tsx_indexfeed_qrtmd_v1_19.open_level.dissect(buffer, index, packet, parent)

  -- Settlement Value: Numeric
  index, settlement_value = tmx_tsx_indexfeed_qrtmd_v1_19.settlement_value.dissect(buffer, index, packet, parent)

  -- Special Opening Quote: Numeric
  index, special_opening_quote = tmx_tsx_indexfeed_qrtmd_v1_19.special_opening_quote.dissect(buffer, index, packet, parent)

  -- Percent Trading: Numeric
  index, percent_trading = tmx_tsx_indexfeed_qrtmd_v1_19.percent_trading.dissect(buffer, index, packet, parent)

  -- High Level: Numeric
  index, high_level = tmx_tsx_indexfeed_qrtmd_v1_19.high_level.dissect(buffer, index, packet, parent)

  -- Low Level: Numeric
  index, low_level = tmx_tsx_indexfeed_qrtmd_v1_19.low_level.dissect(buffer, index, packet, parent)

  -- Pe: Signed numeric
  index, pe = tmx_tsx_indexfeed_qrtmd_v1_19.pe.dissect(buffer, index, packet, parent)

  -- Yield: Numeric
  index, yield = tmx_tsx_indexfeed_qrtmd_v1_19.yield.dissect(buffer, index, packet, parent)

  -- Markers: Alphabetic
  index, markers = tmx_tsx_indexfeed_qrtmd_v1_19.markers.dissect(buffer, index, packet, parent)

  -- Bid Price: Numeric
  index, bid_price = tmx_tsx_indexfeed_qrtmd_v1_19.bid_price.dissect(buffer, index, packet, parent)

  -- Ask Price: Numeric
  index, ask_price = tmx_tsx_indexfeed_qrtmd_v1_19.ask_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: S And P Tsx Official Index Level Message
tmx_tsx_indexfeed_qrtmd_v1_19.s_and_p_tsx_official_index_level_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.s_and_p_tsx_official_index_level_message, buffer(offset, 0))
    local index = tmx_tsx_indexfeed_qrtmd_v1_19.s_and_p_tsx_official_index_level_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsx_indexfeed_qrtmd_v1_19.s_and_p_tsx_official_index_level_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsx_indexfeed_qrtmd_v1_19.s_and_p_tsx_official_index_level_message.fields(buffer, offset, packet, parent)
  end
end

-- Message Body
tmx_tsx_indexfeed_qrtmd_v1_19.message_body = {}

-- Dispatch: Message Body
tmx_tsx_indexfeed_qrtmd_v1_19.message_body.dispatch = {
  ["K"] = tmx_tsx_indexfeed_qrtmd_v1_19.s_and_p_tsx_official_index_level_message.dissect,
  ["PA"] = tmx_tsx_indexfeed_qrtmd_v1_19.beginning_of_index_summary_message.dissect,
}

-- Dissect: Message Body
tmx_tsx_indexfeed_qrtmd_v1_19.message_body.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = tmx_tsx_indexfeed_qrtmd_v1_19.message_body.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
tmx_tsx_indexfeed_qrtmd_v1_19.message_header = {}

-- Size: Message Header
tmx_tsx_indexfeed_qrtmd_v1_19.message_header.size =
  tmx_tsx_indexfeed_qrtmd_v1_19.message_length.size + 
  tmx_tsx_indexfeed_qrtmd_v1_19.sequence_number.size + 
  tmx_tsx_indexfeed_qrtmd_v1_19.service_identifier.size + 
  tmx_tsx_indexfeed_qrtmd_v1_19.retransmission_identifier.size + 
  tmx_tsx_indexfeed_qrtmd_v1_19.continuation_identifier.size + 
  tmx_tsx_indexfeed_qrtmd_v1_19.message_type.size + 
  tmx_tsx_indexfeed_qrtmd_v1_19.exchange_identifier.size

-- Display: Message Header
tmx_tsx_indexfeed_qrtmd_v1_19.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
tmx_tsx_indexfeed_qrtmd_v1_19.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: Numeric
  index, message_length = tmx_tsx_indexfeed_qrtmd_v1_19.message_length.dissect(buffer, index, packet, parent)

  -- Sequence Number: Numeric
  index, sequence_number = tmx_tsx_indexfeed_qrtmd_v1_19.sequence_number.dissect(buffer, index, packet, parent)

  -- Service Identifier: Alphanumeric
  index, service_identifier = tmx_tsx_indexfeed_qrtmd_v1_19.service_identifier.dissect(buffer, index, packet, parent)

  -- Retransmission Identifier: Alphanumeric
  index, retransmission_identifier = tmx_tsx_indexfeed_qrtmd_v1_19.retransmission_identifier.dissect(buffer, index, packet, parent)

  -- Continuation Identifier: Alphanumeric
  index, continuation_identifier = tmx_tsx_indexfeed_qrtmd_v1_19.continuation_identifier.dissect(buffer, index, packet, parent)

  -- Message Type: Alphanumeric
  index, message_type = tmx_tsx_indexfeed_qrtmd_v1_19.message_type.dissect(buffer, index, packet, parent)

  -- Exchange Identifier: Alphanumeric
  index, exchange_identifier = tmx_tsx_indexfeed_qrtmd_v1_19.exchange_identifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
tmx_tsx_indexfeed_qrtmd_v1_19.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsx_indexfeed_qrtmd_v1_19.fields.message_header, buffer(offset, 0))
    local index = tmx_tsx_indexfeed_qrtmd_v1_19.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsx_indexfeed_qrtmd_v1_19.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsx_indexfeed_qrtmd_v1_19.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
tmx_tsx_indexfeed_qrtmd_v1_19.packet = {}

-- Verify required size of Udp packet
tmx_tsx_indexfeed_qrtmd_v1_19.packet.requiredsize = function(buffer)
  return buffer:len() >= tmx_tsx_indexfeed_qrtmd_v1_19.qrtmd_stx.size + tmx_tsx_indexfeed_qrtmd_v1_19.message_header.size
end

-- Dissect Packet
tmx_tsx_indexfeed_qrtmd_v1_19.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Qrtmd Stx: character
  index, qrtmd_stx = tmx_tsx_indexfeed_qrtmd_v1_19.qrtmd_stx.dissect(buffer, index, packet, parent)

  -- Message Header: Struct of 7 fields
  index, message_header = tmx_tsx_indexfeed_qrtmd_v1_19.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = trim_right_spaces(buffer(index - 4, 2):string())

  -- Message Body: Runtime Type with 2 branches
  index = tmx_tsx_indexfeed_qrtmd_v1_19.message_body.dissect(buffer, index, packet, parent, message_type)

  -- Qrtmd Etx: character
  index, qrtmd_etx = tmx_tsx_indexfeed_qrtmd_v1_19.qrtmd_etx.dissect(buffer, index, packet, parent)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_tmx_tsx_indexfeed_qrtmd_v1_19.init()
end

-- Dissector for Tmx Tsx IndexFeed Qrtmd 1.19
function omi_tmx_tsx_indexfeed_qrtmd_v1_19.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_tmx_tsx_indexfeed_qrtmd_v1_19.name

  -- Dissect protocol
  local protocol = parent:add(omi_tmx_tsx_indexfeed_qrtmd_v1_19, buffer(), omi_tmx_tsx_indexfeed_qrtmd_v1_19.description, "("..buffer:len().." Bytes)")
  return tmx_tsx_indexfeed_qrtmd_v1_19.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
tmx_tsx_indexfeed_qrtmd_v1_19.packet.fingerprint = function(buffer)
  if buffer:len() < 21 then
    return false
  end

  local message_type = buffer(19, 2):string()

  -- S And P Tsx Official Index Level Message
  if message_type == "K" then
    return true
  end

  -- Beginning Of Index Summary Message
  if message_type == "PA" then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify Qrtmd Stx Field
tmx_tsx_indexfeed_qrtmd_v1_19.qrtmd_stx.verify = function(buffer)
  -- Too short to carry the field: not this protocol
  if buffer:len() < 0 + 1 then
    return false
  end

  -- Attempt to read field
  local value = buffer(0, 1):int()

  if value == 2 then
    return true
  end

  return false
end

-- Dissector Heuristic for Tmx Tsx IndexFeed Qrtmd 1.19 (Udp)
local function omi_tmx_tsx_indexfeed_qrtmd_v1_19_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not tmx_tsx_indexfeed_qrtmd_v1_19.packet.requiredsize(buffer) then return false end

  -- Verify Qrtmd Stx
  if not tmx_tsx_indexfeed_qrtmd_v1_19.qrtmd_stx.verify(buffer) then return false end

  -- Verify the frame matches this udp packet message dispatch
  if not tmx_tsx_indexfeed_qrtmd_v1_19.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_tmx_tsx_indexfeed_qrtmd_v1_19
  omi_tmx_tsx_indexfeed_qrtmd_v1_19.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Tmx Tsx IndexFeed Qrtmd 1.19
omi_tmx_tsx_indexfeed_qrtmd_v1_19:register_heuristic("udp", omi_tmx_tsx_indexfeed_qrtmd_v1_19_udp_heuristic)

-- Register Tmx Tsx IndexFeed Qrtmd 1.19 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_tmx_tsx_indexfeed_qrtmd_v1_19)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: TMX Group
--   Version: 1.19
--   Date: Tuesday, October 12, 2021
--   Specification: QRTMD TX1 (1.19).pdf
--   Specification: QRTMD PSSAG (2.10).pdf
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
