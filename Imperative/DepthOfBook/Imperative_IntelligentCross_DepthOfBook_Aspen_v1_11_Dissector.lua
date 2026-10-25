-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Imperative IntelligentCross DepthOfBook Aspen 1.11 Protocol
local omi_imperative_intelligentcross_depthofbook_aspen_v1_11 = Proto("Omi.Imperative.IntelligentCross.DepthOfBook.Aspen.v1.11", "Imperative IntelligentCross DepthOfBook Aspen 1.11")

-- Protocol table
local imperative_intelligentcross_depthofbook_aspen_v1_11 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Imperative IntelligentCross DepthOfBook Aspen 1.11 Fields
omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.count = ProtoField.new("Count", "imperative.intelligentcross.depthofbook.aspen.v1.11.count", ftypes.UINT16, nil, nil, nil, "Number of messages in packet")
omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.event = ProtoField.new("Event", "imperative.intelligentcross.depthofbook.aspen.v1.11.event", ftypes.STRING, nil, nil, nil, "Event Values")
omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.execution_id = ProtoField.new("Execution Id", "imperative.intelligentcross.depthofbook.aspen.v1.11.executionid", ftypes.UINT64, nil, nil, nil, "Market Issued Unique Execution ID")
omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.feed_identifier = ProtoField.new("Feed Identifier", "imperative.intelligentcross.depthofbook.aspen.v1.11.feedidentifier", ftypes.STRING, nil, nil, nil, "Unique code for feed")
omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.info = ProtoField.new("Info", "imperative.intelligentcross.depthofbook.aspen.v1.11.info", ftypes.STRING, nil, nil, nil, "optional text")
omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.length = ProtoField.new("Length", "imperative.intelligentcross.depthofbook.aspen.v1.11.length", ftypes.UINT16, nil, nil, nil, "Length of data message not including this field")
omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.listing_market = ProtoField.new("Listing Market", "imperative.intelligentcross.depthofbook.aspen.v1.11.listingmarket", ftypes.STRING, nil, nil, nil, "Code identifying the primary listing market")
omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.market_day_identifier = ProtoField.new("Market Day Identifier", "imperative.intelligentcross.depthofbook.aspen.v1.11.marketdayidentifier", ftypes.UINT32, nil, nil, nil, "Unique identifier for trading day")
omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.message_type = ProtoField.new("Message Type", "imperative.intelligentcross.depthofbook.aspen.v1.11.messagetype", ftypes.STRING, nil, nil, nil, "Code identifying message type")
omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.order_id = ProtoField.new("Order Id", "imperative.intelligentcross.depthofbook.aspen.v1.11.orderid", ftypes.UINT64, nil, nil, nil, "Market Issued Unique Order ID")
omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.price = ProtoField.new("Price", "imperative.intelligentcross.depthofbook.aspen.v1.11.price", ftypes.DOUBLE, nil, nil, nil, "Price -6 implied decimals")
omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.reserved_1 = ProtoField.new("Reserved 1", "imperative.intelligentcross.depthofbook.aspen.v1.11.reserved1", ftypes.STRING, nil, nil, nil, "Reserved for future use")
omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.reserved_2 = ProtoField.new("Reserved 2", "imperative.intelligentcross.depthofbook.aspen.v1.11.reserved2", ftypes.STRING, nil, nil, nil, "Reserved for future use")
omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.reserved_4 = ProtoField.new("Reserved 4", "imperative.intelligentcross.depthofbook.aspen.v1.11.reserved4", ftypes.STRING, nil, nil, nil, "Reserved for future use")
omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.reserved_8 = ProtoField.new("Reserved 8", "imperative.intelligentcross.depthofbook.aspen.v1.11.reserved8", ftypes.UINT64, nil, nil, nil, "Reserved for future use")
omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.round_lot_size = ProtoField.new("Round Lot Size", "imperative.intelligentcross.depthofbook.aspen.v1.11.roundlotsize", ftypes.UINT32, nil, nil, nil, "size of one round lot")
omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.sequence = ProtoField.new("Sequence", "imperative.intelligentcross.depthofbook.aspen.v1.11.sequence", ftypes.UINT64, nil, nil, nil, "Sequence number for next message")
omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.shares = ProtoField.new("Shares", "imperative.intelligentcross.depthofbook.aspen.v1.11.shares", ftypes.UINT32, nil, nil, nil, "Qty")
omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.shares_canceled = ProtoField.new("Shares Canceled", "imperative.intelligentcross.depthofbook.aspen.v1.11.sharescanceled", ftypes.UINT32, nil, nil, nil, "Number of shares cancelled")
omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.side = ProtoField.new("Side", "imperative.intelligentcross.depthofbook.aspen.v1.11.side", ftypes.STRING, nil, nil, nil, "'B'/'S'")
omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.state = ProtoField.new("State", "imperative.intelligentcross.depthofbook.aspen.v1.11.state", ftypes.STRING, nil, nil, nil, "State Values")
omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.symbol = ProtoField.new("Symbol", "imperative.intelligentcross.depthofbook.aspen.v1.11.symbol", ftypes.STRING, nil, nil, nil, "Stock Symbol")
omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.symbol_id = ProtoField.new("Symbol Id", "imperative.intelligentcross.depthofbook.aspen.v1.11.symbolid", ftypes.UINT16, nil, nil, nil, "Symbol Index")
omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.timestamp = ProtoField.new("Timestamp", "imperative.intelligentcross.depthofbook.aspen.v1.11.timestamp", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Nanoseconds Since Epoch (UTC)")
omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.timestamp_utc = ProtoField.new("Timestamp", "imperative.intelligentcross.depthofbook.aspen.v1.11.timestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Nanoseconds Since Epoch (UTC)")

-- Imperative IntelligentCross DepthOfBook Aspen 1.11 Framing
omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.message = ProtoField.new("Message", "imperative.intelligentcross.depthofbook.aspen.v1.11.message", ftypes.STRING)
omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.message_header = ProtoField.new("Message Header", "imperative.intelligentcross.depthofbook.aspen.v1.11.messageheader", ftypes.STRING, nil, nil, nil, "Length of the message")
omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.packet = ProtoField.new("Packet", "imperative.intelligentcross.depthofbook.aspen.v1.11.packet", ftypes.STRING, nil, nil, nil, "Aspen Udp Packet")
omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.packet_header = ProtoField.new("Packet Header", "imperative.intelligentcross.depthofbook.aspen.v1.11.packetheader", ftypes.STRING)

-- Imperative IntelligentCross DepthOfBook 1.11 Application Messages
omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.market_event_message = ProtoField.new("Market Event Message", "imperative.intelligentcross.depthofbook.aspen.v1.11.marketeventmessage", ftypes.STRING, nil, nil, nil, "This message appears on all quote channels and indicates the beginning of a spin message cycle")
omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.new_order_add_message = ProtoField.new("New Order Add Message", "imperative.intelligentcross.depthofbook.aspen.v1.11.neworderaddmessage", ftypes.STRING, nil, nil, nil, "New Order Add")
omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.order_cancel_all_message = ProtoField.new("Order Cancel All Message", "imperative.intelligentcross.depthofbook.aspen.v1.11.ordercancelallmessage", ftypes.STRING, nil, nil, nil, "Order Cancel All")
omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.order_executed_message = ProtoField.new("Order Executed Message", "imperative.intelligentcross.depthofbook.aspen.v1.11.orderexecutedmessage", ftypes.STRING, nil, nil, nil, "Sent when a visible order is executed")
omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.order_partial_cancel_message = ProtoField.new("Order Partial Cancel Message", "imperative.intelligentcross.depthofbook.aspen.v1.11.orderpartialcancelmessage", ftypes.STRING, nil, nil, nil, "Order Partial Cancel")
omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.order_updated_message = ProtoField.new("Order Updated Message", "imperative.intelligentcross.depthofbook.aspen.v1.11.orderupdatedmessage", ftypes.STRING, nil, nil, nil, "Order Updated")
omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.symbol_information_message = ProtoField.new("Symbol Information Message", "imperative.intelligentcross.depthofbook.aspen.v1.11.symbolinformationmessage", ftypes.STRING, nil, nil, nil, "Symbol Information")
omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.symbol_state_message = ProtoField.new("Symbol State Message", "imperative.intelligentcross.depthofbook.aspen.v1.11.symbolstatemessage", ftypes.STRING, nil, nil, nil, "Symbol State")
omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.trade_break_message = ProtoField.new("Trade Break Message", "imperative.intelligentcross.depthofbook.aspen.v1.11.tradebreakmessage", ftypes.STRING, nil, nil, nil, "Trade Break")
omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.trade_message = ProtoField.new("Trade Message", "imperative.intelligentcross.depthofbook.aspen.v1.11.trademessage", ftypes.STRING, nil, nil, nil, "Sent when a hidden order is executed")

-- Imperative IntelligentCross DepthOfBook Aspen 1.11 Generated Fields
omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.message_index = ProtoField.new("Message Index", "imperative.intelligentcross.depthofbook.aspen.v1.11.messageindex", ftypes.UINT16)

-- Imperative IntelligentCross DepthOfBook Aspen 1.11 Expert Info
imperative_intelligentcross_depthofbook_aspen_v1_11.experts = {}
imperative_intelligentcross_depthofbook_aspen_v1_11.experts.not_a_number = ProtoExpert.new("imperative.intelligentcross.depthofbook.aspen.v1.11.notanumber", "Ascii digits field holding no number", expert.group.PROTOCOL, expert.severity.WARN)
omi_imperative_intelligentcross_depthofbook_aspen_v1_11.experts = { imperative_intelligentcross_depthofbook_aspen_v1_11.experts.not_a_number }

-----------------------------------------------------------------------
-- Imperative IntelligentCross DepthOfBook Aspen 1.11 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
imperative_intelligentcross_depthofbook_aspen_v1_11.absolute_time_base = 0


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Imperative IntelligentCross DepthOfBook Aspen 1.11 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true

-- Register Imperative IntelligentCross DepthOfBook Aspen 1.11 Show Options
omi_imperative_intelligentcross_depthofbook_aspen_v1_11.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_imperative_intelligentcross_depthofbook_aspen_v1_11.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_imperative_intelligentcross_depthofbook_aspen_v1_11.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_imperative_intelligentcross_depthofbook_aspen_v1_11.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_imperative_intelligentcross_depthofbook_aspen_v1_11.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_imperative_intelligentcross_depthofbook_aspen_v1_11.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_imperative_intelligentcross_depthofbook_aspen_v1_11.prefs.show_application_messages then
    show.application_messages = omi_imperative_intelligentcross_depthofbook_aspen_v1_11.prefs.show_application_messages
  end
  if show.headers ~= omi_imperative_intelligentcross_depthofbook_aspen_v1_11.prefs.show_headers then
    show.headers = omi_imperative_intelligentcross_depthofbook_aspen_v1_11.prefs.show_headers
  end
  if show.structs ~= omi_imperative_intelligentcross_depthofbook_aspen_v1_11.prefs.show_structs then
    show.structs = omi_imperative_intelligentcross_depthofbook_aspen_v1_11.prefs.show_structs
  end
  if show.indexes ~= omi_imperative_intelligentcross_depthofbook_aspen_v1_11.prefs.show_indexes then
    show.indexes = omi_imperative_intelligentcross_depthofbook_aspen_v1_11.prefs.show_indexes
  end
  if imperative_intelligentcross_depthofbook_aspen_v1_11.absolute_time_base ~= omi_imperative_intelligentcross_depthofbook_aspen_v1_11.prefs.absolute_time_base then
    imperative_intelligentcross_depthofbook_aspen_v1_11.absolute_time_base = omi_imperative_intelligentcross_depthofbook_aspen_v1_11.prefs.absolute_time_base
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
-- Imperative IntelligentCross DepthOfBook Aspen 1.11 Fields
-----------------------------------------------------------------------

-- Count
imperative_intelligentcross_depthofbook_aspen_v1_11.count = {}

-- Size: Count
imperative_intelligentcross_depthofbook_aspen_v1_11.count.size = 2

-- Display: Count
imperative_intelligentcross_depthofbook_aspen_v1_11.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
imperative_intelligentcross_depthofbook_aspen_v1_11.count.dissect = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_depthofbook_aspen_v1_11.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = imperative_intelligentcross_depthofbook_aspen_v1_11.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.count, range, value, display)

  return offset + length, value
end

-- Event
imperative_intelligentcross_depthofbook_aspen_v1_11.event = {}

-- Size: Event
imperative_intelligentcross_depthofbook_aspen_v1_11.event.size = 1

-- Display: Event
imperative_intelligentcross_depthofbook_aspen_v1_11.event.labels = {
  ["O"] = "Event: Start Of Session (O)",
  ["S"] = "Event: Market Accepting Orders (S)",
  ["Q"] = "Event: Market Open For Trading (Q)",
  ["E"] = "Event: Market Trading Ended For Day (E)",
  ["C"] = "Event: End Of Session (C)",
}

imperative_intelligentcross_depthofbook_aspen_v1_11.event.display = function(value)
  return imperative_intelligentcross_depthofbook_aspen_v1_11.event.labels[value] or "Event: Unknown("..value..")"
end

-- Dissect: Event
imperative_intelligentcross_depthofbook_aspen_v1_11.event.dissect = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_depthofbook_aspen_v1_11.event.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = imperative_intelligentcross_depthofbook_aspen_v1_11.event.display(value, buffer, offset, packet, parent)

  parent:add(omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.event, range, value, display)

  return offset + length, value
end

-- Execution Id
imperative_intelligentcross_depthofbook_aspen_v1_11.execution_id = {}

-- Size: Execution Id
imperative_intelligentcross_depthofbook_aspen_v1_11.execution_id.size = 8

-- Display: Execution Id
imperative_intelligentcross_depthofbook_aspen_v1_11.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
imperative_intelligentcross_depthofbook_aspen_v1_11.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_depthofbook_aspen_v1_11.execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = imperative_intelligentcross_depthofbook_aspen_v1_11.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Feed Identifier
imperative_intelligentcross_depthofbook_aspen_v1_11.feed_identifier = {}

-- Size: Feed Identifier
imperative_intelligentcross_depthofbook_aspen_v1_11.feed_identifier.size = 1

-- Display: Feed Identifier
imperative_intelligentcross_depthofbook_aspen_v1_11.feed_identifier.display = function(value)
  return "Feed Identifier: "..value
end

-- Dissect: Feed Identifier
imperative_intelligentcross_depthofbook_aspen_v1_11.feed_identifier.dissect = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_depthofbook_aspen_v1_11.feed_identifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = imperative_intelligentcross_depthofbook_aspen_v1_11.feed_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.feed_identifier, range, value, display)

  return offset + length, value
end

-- Info
imperative_intelligentcross_depthofbook_aspen_v1_11.info = {}

-- Size: Info
imperative_intelligentcross_depthofbook_aspen_v1_11.info.size = 4

-- Display: Info
imperative_intelligentcross_depthofbook_aspen_v1_11.info.display = function(value)
  return "Info: "..value
end

-- Dissect: Info
imperative_intelligentcross_depthofbook_aspen_v1_11.info.dissect = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_depthofbook_aspen_v1_11.info.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = imperative_intelligentcross_depthofbook_aspen_v1_11.info.display(value, buffer, offset, packet, parent)

  parent:add(omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.info, range, value, display)

  return offset + length, value
end

-- Length
imperative_intelligentcross_depthofbook_aspen_v1_11.length = {}

-- Size: Length
imperative_intelligentcross_depthofbook_aspen_v1_11.length.size = 2

-- Display: Length
imperative_intelligentcross_depthofbook_aspen_v1_11.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
imperative_intelligentcross_depthofbook_aspen_v1_11.length.dissect = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_depthofbook_aspen_v1_11.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = imperative_intelligentcross_depthofbook_aspen_v1_11.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.length, range, value, display)

  return offset + length, value
end

-- Listing Market
imperative_intelligentcross_depthofbook_aspen_v1_11.listing_market = {}

-- Size: Listing Market
imperative_intelligentcross_depthofbook_aspen_v1_11.listing_market.size = 1

-- Display: Listing Market
imperative_intelligentcross_depthofbook_aspen_v1_11.listing_market.labels = {
  ["N"] = "Listing Market: Nyse (N)",
  ["Q"] = "Listing Market: Nasdaq (Q)",
  ["P"] = "Listing Market: Arca (P)",
  ["Z"] = "Listing Market: Bats (Z)",
  ["A"] = "Listing Market: Amex (A)",
  ["V"] = "Listing Market: Iex (V)",
}

imperative_intelligentcross_depthofbook_aspen_v1_11.listing_market.display = function(value)
  return imperative_intelligentcross_depthofbook_aspen_v1_11.listing_market.labels[value] or "Listing Market: Unknown("..value..")"
end

-- Dissect: Listing Market
imperative_intelligentcross_depthofbook_aspen_v1_11.listing_market.dissect = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_depthofbook_aspen_v1_11.listing_market.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = imperative_intelligentcross_depthofbook_aspen_v1_11.listing_market.display(value, buffer, offset, packet, parent)

  parent:add(omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.listing_market, range, value, display)

  return offset + length, value
end

-- Market Day Identifier
imperative_intelligentcross_depthofbook_aspen_v1_11.market_day_identifier = {}

-- Size: Market Day Identifier
imperative_intelligentcross_depthofbook_aspen_v1_11.market_day_identifier.size = 9

-- Display: Market Day Identifier
imperative_intelligentcross_depthofbook_aspen_v1_11.market_day_identifier.display = function(value)
  return "Market Day Identifier: "..value
end

-- Dissect: Market Day Identifier
imperative_intelligentcross_depthofbook_aspen_v1_11.market_day_identifier.dissect = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_depthofbook_aspen_v1_11.market_day_identifier.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.market_day_identifier, range, value, "Market Day Identifier: Not Applicable")
    item:add_proto_expert_info(imperative_intelligentcross_depthofbook_aspen_v1_11.experts.not_a_number, "Market Day Identifier is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = imperative_intelligentcross_depthofbook_aspen_v1_11.market_day_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.market_day_identifier, range, value, display)

  return offset + length, value
end

-- Message Type
imperative_intelligentcross_depthofbook_aspen_v1_11.message_type = {}

-- Size: Message Type
imperative_intelligentcross_depthofbook_aspen_v1_11.message_type.size = 1

-- Display: Message Type
imperative_intelligentcross_depthofbook_aspen_v1_11.message_type.labels = {
  ["A"] = "Message Type: Market Event Message (A)",
  ["B"] = "Message Type: Symbol Information Message (B)",
  ["C"] = "Message Type: Symbol State Message (C)",
  ["D"] = "Message Type: New Order Add Message (D)",
  ["F"] = "Message Type: Order Partial Cancel Message (F)",
  ["G"] = "Message Type: Order Cancel All Message (G)",
  ["H"] = "Message Type: Order Updated Message (H)",
  ["J"] = "Message Type: Order Executed Message (J)",
  ["K"] = "Message Type: Trade Message (K)",
  ["M"] = "Message Type: Trade Break Message (M)",
}

imperative_intelligentcross_depthofbook_aspen_v1_11.message_type.display = function(value)
  return imperative_intelligentcross_depthofbook_aspen_v1_11.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
imperative_intelligentcross_depthofbook_aspen_v1_11.message_type.dissect = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_depthofbook_aspen_v1_11.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = imperative_intelligentcross_depthofbook_aspen_v1_11.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.message_type, range, value, display)

  return offset + length, value
end

-- Order Id
imperative_intelligentcross_depthofbook_aspen_v1_11.order_id = {}

-- Size: Order Id
imperative_intelligentcross_depthofbook_aspen_v1_11.order_id.size = 8

-- Display: Order Id
imperative_intelligentcross_depthofbook_aspen_v1_11.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
imperative_intelligentcross_depthofbook_aspen_v1_11.order_id.dissect = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_depthofbook_aspen_v1_11.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = imperative_intelligentcross_depthofbook_aspen_v1_11.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.order_id, range, value, display)

  return offset + length, value
end

-- Price
imperative_intelligentcross_depthofbook_aspen_v1_11.price = {}

-- Size: Price
imperative_intelligentcross_depthofbook_aspen_v1_11.price.size = 8

-- Display: Price
imperative_intelligentcross_depthofbook_aspen_v1_11.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
imperative_intelligentcross_depthofbook_aspen_v1_11.price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Price
imperative_intelligentcross_depthofbook_aspen_v1_11.price.dissect = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_depthofbook_aspen_v1_11.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = imperative_intelligentcross_depthofbook_aspen_v1_11.price.translate(raw)
  local display = imperative_intelligentcross_depthofbook_aspen_v1_11.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.price, range, value, display)

  return offset + length, value
end

-- Reserved 1
imperative_intelligentcross_depthofbook_aspen_v1_11.reserved_1 = {}

-- Size: Reserved 1
imperative_intelligentcross_depthofbook_aspen_v1_11.reserved_1.size = 1

-- Display: Reserved 1
imperative_intelligentcross_depthofbook_aspen_v1_11.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
imperative_intelligentcross_depthofbook_aspen_v1_11.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_depthofbook_aspen_v1_11.reserved_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = imperative_intelligentcross_depthofbook_aspen_v1_11.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 2
imperative_intelligentcross_depthofbook_aspen_v1_11.reserved_2 = {}

-- Size: Reserved 2
imperative_intelligentcross_depthofbook_aspen_v1_11.reserved_2.size = 2

-- Display: Reserved 2
imperative_intelligentcross_depthofbook_aspen_v1_11.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
imperative_intelligentcross_depthofbook_aspen_v1_11.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_depthofbook_aspen_v1_11.reserved_2.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = imperative_intelligentcross_depthofbook_aspen_v1_11.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Reserved 4
imperative_intelligentcross_depthofbook_aspen_v1_11.reserved_4 = {}

-- Size: Reserved 4
imperative_intelligentcross_depthofbook_aspen_v1_11.reserved_4.size = 4

-- Display: Reserved 4
imperative_intelligentcross_depthofbook_aspen_v1_11.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
imperative_intelligentcross_depthofbook_aspen_v1_11.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_depthofbook_aspen_v1_11.reserved_4.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = imperative_intelligentcross_depthofbook_aspen_v1_11.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Reserved 8
imperative_intelligentcross_depthofbook_aspen_v1_11.reserved_8 = {}

-- Size: Reserved 8
imperative_intelligentcross_depthofbook_aspen_v1_11.reserved_8.size = 8

-- Display: Reserved 8
imperative_intelligentcross_depthofbook_aspen_v1_11.reserved_8.display = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
imperative_intelligentcross_depthofbook_aspen_v1_11.reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_depthofbook_aspen_v1_11.reserved_8.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = imperative_intelligentcross_depthofbook_aspen_v1_11.reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.reserved_8, range, value, display)

  return offset + length, value
end

-- Round Lot Size
imperative_intelligentcross_depthofbook_aspen_v1_11.round_lot_size = {}

-- Size: Round Lot Size
imperative_intelligentcross_depthofbook_aspen_v1_11.round_lot_size.size = 4

-- Display: Round Lot Size
imperative_intelligentcross_depthofbook_aspen_v1_11.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
imperative_intelligentcross_depthofbook_aspen_v1_11.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_depthofbook_aspen_v1_11.round_lot_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = imperative_intelligentcross_depthofbook_aspen_v1_11.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Sequence
imperative_intelligentcross_depthofbook_aspen_v1_11.sequence = {}

-- Size: Sequence
imperative_intelligentcross_depthofbook_aspen_v1_11.sequence.size = 8

-- Display: Sequence
imperative_intelligentcross_depthofbook_aspen_v1_11.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
imperative_intelligentcross_depthofbook_aspen_v1_11.sequence.dissect = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_depthofbook_aspen_v1_11.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = imperative_intelligentcross_depthofbook_aspen_v1_11.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.sequence, range, value, display)

  return offset + length, value
end

-- Shares
imperative_intelligentcross_depthofbook_aspen_v1_11.shares = {}

-- Size: Shares
imperative_intelligentcross_depthofbook_aspen_v1_11.shares.size = 4

-- Display: Shares
imperative_intelligentcross_depthofbook_aspen_v1_11.shares.display = function(value)
  return "Shares: "..value
end

-- Dissect: Shares
imperative_intelligentcross_depthofbook_aspen_v1_11.shares.dissect = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_depthofbook_aspen_v1_11.shares.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = imperative_intelligentcross_depthofbook_aspen_v1_11.shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.shares, range, value, display)

  return offset + length, value
end

-- Shares Canceled
imperative_intelligentcross_depthofbook_aspen_v1_11.shares_canceled = {}

-- Size: Shares Canceled
imperative_intelligentcross_depthofbook_aspen_v1_11.shares_canceled.size = 4

-- Display: Shares Canceled
imperative_intelligentcross_depthofbook_aspen_v1_11.shares_canceled.display = function(value)
  return "Shares Canceled: "..value
end

-- Dissect: Shares Canceled
imperative_intelligentcross_depthofbook_aspen_v1_11.shares_canceled.dissect = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_depthofbook_aspen_v1_11.shares_canceled.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = imperative_intelligentcross_depthofbook_aspen_v1_11.shares_canceled.display(value, buffer, offset, packet, parent)

  parent:add(omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.shares_canceled, range, value, display)

  return offset + length, value
end

-- Side
imperative_intelligentcross_depthofbook_aspen_v1_11.side = {}

-- Size: Side
imperative_intelligentcross_depthofbook_aspen_v1_11.side.size = 1

-- Display: Side
imperative_intelligentcross_depthofbook_aspen_v1_11.side.labels = {
  ["B"] = "Side: Buy (B)",
  ["S"] = "Side: Sell (S)",
  ["C"] = "Side: End Of Session (C)",
}

imperative_intelligentcross_depthofbook_aspen_v1_11.side.display = function(value)
  return imperative_intelligentcross_depthofbook_aspen_v1_11.side.labels[value] or "Side: Unknown("..value..")"
end

-- Dissect: Side
imperative_intelligentcross_depthofbook_aspen_v1_11.side.dissect = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_depthofbook_aspen_v1_11.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = imperative_intelligentcross_depthofbook_aspen_v1_11.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.side, range, value, display)

  return offset + length, value
end

-- State
imperative_intelligentcross_depthofbook_aspen_v1_11.state = {}

-- Size: State
imperative_intelligentcross_depthofbook_aspen_v1_11.state.size = 1

-- Display: State
imperative_intelligentcross_depthofbook_aspen_v1_11.state.labels = {
  ["I"] = "State: Inactive (I)",
  ["A"] = "State: Active (A)",
  ["D"] = "State: Disabled (D)",
  ["E"] = "State: Enabled (E)",
}

imperative_intelligentcross_depthofbook_aspen_v1_11.state.display = function(value)
  return imperative_intelligentcross_depthofbook_aspen_v1_11.state.labels[value] or "State: Unknown("..value..")"
end

-- Dissect: State
imperative_intelligentcross_depthofbook_aspen_v1_11.state.dissect = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_depthofbook_aspen_v1_11.state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = imperative_intelligentcross_depthofbook_aspen_v1_11.state.display(value, buffer, offset, packet, parent)

  parent:add(omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.state, range, value, display)

  return offset + length, value
end

-- Symbol
imperative_intelligentcross_depthofbook_aspen_v1_11.symbol = {}

-- Size: Symbol
imperative_intelligentcross_depthofbook_aspen_v1_11.symbol.size = 11

-- Display: Symbol
imperative_intelligentcross_depthofbook_aspen_v1_11.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
imperative_intelligentcross_depthofbook_aspen_v1_11.symbol.dissect = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_depthofbook_aspen_v1_11.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = imperative_intelligentcross_depthofbook_aspen_v1_11.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Id
imperative_intelligentcross_depthofbook_aspen_v1_11.symbol_id = {}

-- Size: Symbol Id
imperative_intelligentcross_depthofbook_aspen_v1_11.symbol_id.size = 2

-- Display: Symbol Id
imperative_intelligentcross_depthofbook_aspen_v1_11.symbol_id.display = function(value)
  return "Symbol Id: "..value
end

-- Dissect: Symbol Id
imperative_intelligentcross_depthofbook_aspen_v1_11.symbol_id.dissect = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_depthofbook_aspen_v1_11.symbol_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = imperative_intelligentcross_depthofbook_aspen_v1_11.symbol_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.symbol_id, range, value, display)

  return offset + length, value
end

-- Timestamp
imperative_intelligentcross_depthofbook_aspen_v1_11.timestamp = {}

-- Size: Timestamp
imperative_intelligentcross_depthofbook_aspen_v1_11.timestamp.size = 8

-- Dissect: Timestamp
imperative_intelligentcross_depthofbook_aspen_v1_11.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = imperative_intelligentcross_depthofbook_aspen_v1_11.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.timestamp
  if imperative_intelligentcross_depthofbook_aspen_v1_11.absolute_time_base == 1 then field = omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.timestamp_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Imperative IntelligentCross DepthOfBook Aspen 1.11
-----------------------------------------------------------------------

-- Trade Break Message
imperative_intelligentcross_depthofbook_aspen_v1_11.trade_break_message = {}

-- Size: Trade Break Message
imperative_intelligentcross_depthofbook_aspen_v1_11.trade_break_message.size =
  imperative_intelligentcross_depthofbook_aspen_v1_11.symbol_id.size + 
  imperative_intelligentcross_depthofbook_aspen_v1_11.timestamp.size + 
  imperative_intelligentcross_depthofbook_aspen_v1_11.execution_id.size

-- Display: Trade Break Message
imperative_intelligentcross_depthofbook_aspen_v1_11.trade_break_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Break Message
imperative_intelligentcross_depthofbook_aspen_v1_11.trade_break_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Id: Integer
  index, symbol_id = imperative_intelligentcross_depthofbook_aspen_v1_11.symbol_id.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = imperative_intelligentcross_depthofbook_aspen_v1_11.timestamp.dissect(buffer, index, packet, parent)

  -- Execution Id: Integer
  index, execution_id = imperative_intelligentcross_depthofbook_aspen_v1_11.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Break Message
imperative_intelligentcross_depthofbook_aspen_v1_11.trade_break_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.trade_break_message, buffer(offset, 0))
    local index = imperative_intelligentcross_depthofbook_aspen_v1_11.trade_break_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = imperative_intelligentcross_depthofbook_aspen_v1_11.trade_break_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return imperative_intelligentcross_depthofbook_aspen_v1_11.trade_break_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message
imperative_intelligentcross_depthofbook_aspen_v1_11.trade_message = {}

-- Size: Trade Message
imperative_intelligentcross_depthofbook_aspen_v1_11.trade_message.size =
  imperative_intelligentcross_depthofbook_aspen_v1_11.symbol_id.size + 
  imperative_intelligentcross_depthofbook_aspen_v1_11.timestamp.size + 
  imperative_intelligentcross_depthofbook_aspen_v1_11.reserved_8.size + 
  imperative_intelligentcross_depthofbook_aspen_v1_11.reserved_1.size + 
  imperative_intelligentcross_depthofbook_aspen_v1_11.shares.size + 
  imperative_intelligentcross_depthofbook_aspen_v1_11.symbol.size + 
  imperative_intelligentcross_depthofbook_aspen_v1_11.price.size + 
  imperative_intelligentcross_depthofbook_aspen_v1_11.execution_id.size

-- Display: Trade Message
imperative_intelligentcross_depthofbook_aspen_v1_11.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
imperative_intelligentcross_depthofbook_aspen_v1_11.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Id: Integer
  index, symbol_id = imperative_intelligentcross_depthofbook_aspen_v1_11.symbol_id.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = imperative_intelligentcross_depthofbook_aspen_v1_11.timestamp.dissect(buffer, index, packet, parent)

  -- Reserved 8: Integer
  index, reserved_8 = imperative_intelligentcross_depthofbook_aspen_v1_11.reserved_8.dissect(buffer, index, packet, parent)

  -- Reserved 1: Alpha
  index, reserved_1 = imperative_intelligentcross_depthofbook_aspen_v1_11.reserved_1.dissect(buffer, index, packet, parent)

  -- Shares: Integer
  index, shares = imperative_intelligentcross_depthofbook_aspen_v1_11.shares.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = imperative_intelligentcross_depthofbook_aspen_v1_11.symbol.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = imperative_intelligentcross_depthofbook_aspen_v1_11.price.dissect(buffer, index, packet, parent)

  -- Execution Id: Integer
  index, execution_id = imperative_intelligentcross_depthofbook_aspen_v1_11.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
imperative_intelligentcross_depthofbook_aspen_v1_11.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.trade_message, buffer(offset, 0))
    local index = imperative_intelligentcross_depthofbook_aspen_v1_11.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = imperative_intelligentcross_depthofbook_aspen_v1_11.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return imperative_intelligentcross_depthofbook_aspen_v1_11.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
imperative_intelligentcross_depthofbook_aspen_v1_11.order_executed_message = {}

-- Size: Order Executed Message
imperative_intelligentcross_depthofbook_aspen_v1_11.order_executed_message.size =
  imperative_intelligentcross_depthofbook_aspen_v1_11.symbol_id.size + 
  imperative_intelligentcross_depthofbook_aspen_v1_11.timestamp.size + 
  imperative_intelligentcross_depthofbook_aspen_v1_11.order_id.size + 
  imperative_intelligentcross_depthofbook_aspen_v1_11.shares.size + 
  imperative_intelligentcross_depthofbook_aspen_v1_11.execution_id.size + 
  imperative_intelligentcross_depthofbook_aspen_v1_11.reserved_1.size + 
  imperative_intelligentcross_depthofbook_aspen_v1_11.price.size

-- Display: Order Executed Message
imperative_intelligentcross_depthofbook_aspen_v1_11.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
imperative_intelligentcross_depthofbook_aspen_v1_11.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Id: Integer
  index, symbol_id = imperative_intelligentcross_depthofbook_aspen_v1_11.symbol_id.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = imperative_intelligentcross_depthofbook_aspen_v1_11.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Integer
  index, order_id = imperative_intelligentcross_depthofbook_aspen_v1_11.order_id.dissect(buffer, index, packet, parent)

  -- Shares: Integer
  index, shares = imperative_intelligentcross_depthofbook_aspen_v1_11.shares.dissect(buffer, index, packet, parent)

  -- Execution Id: Integer
  index, execution_id = imperative_intelligentcross_depthofbook_aspen_v1_11.execution_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: Alpha
  index, reserved_1 = imperative_intelligentcross_depthofbook_aspen_v1_11.reserved_1.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = imperative_intelligentcross_depthofbook_aspen_v1_11.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
imperative_intelligentcross_depthofbook_aspen_v1_11.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.order_executed_message, buffer(offset, 0))
    local index = imperative_intelligentcross_depthofbook_aspen_v1_11.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = imperative_intelligentcross_depthofbook_aspen_v1_11.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return imperative_intelligentcross_depthofbook_aspen_v1_11.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Updated Message
imperative_intelligentcross_depthofbook_aspen_v1_11.order_updated_message = {}

-- Size: Order Updated Message
imperative_intelligentcross_depthofbook_aspen_v1_11.order_updated_message.size =
  imperative_intelligentcross_depthofbook_aspen_v1_11.symbol_id.size + 
  imperative_intelligentcross_depthofbook_aspen_v1_11.timestamp.size + 
  imperative_intelligentcross_depthofbook_aspen_v1_11.order_id.size + 
  imperative_intelligentcross_depthofbook_aspen_v1_11.shares.size + 
  imperative_intelligentcross_depthofbook_aspen_v1_11.price.size

-- Display: Order Updated Message
imperative_intelligentcross_depthofbook_aspen_v1_11.order_updated_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Updated Message
imperative_intelligentcross_depthofbook_aspen_v1_11.order_updated_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Id: Integer
  index, symbol_id = imperative_intelligentcross_depthofbook_aspen_v1_11.symbol_id.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = imperative_intelligentcross_depthofbook_aspen_v1_11.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Integer
  index, order_id = imperative_intelligentcross_depthofbook_aspen_v1_11.order_id.dissect(buffer, index, packet, parent)

  -- Shares: Integer
  index, shares = imperative_intelligentcross_depthofbook_aspen_v1_11.shares.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = imperative_intelligentcross_depthofbook_aspen_v1_11.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Updated Message
imperative_intelligentcross_depthofbook_aspen_v1_11.order_updated_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.order_updated_message, buffer(offset, 0))
    local index = imperative_intelligentcross_depthofbook_aspen_v1_11.order_updated_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = imperative_intelligentcross_depthofbook_aspen_v1_11.order_updated_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return imperative_intelligentcross_depthofbook_aspen_v1_11.order_updated_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel All Message
imperative_intelligentcross_depthofbook_aspen_v1_11.order_cancel_all_message = {}

-- Size: Order Cancel All Message
imperative_intelligentcross_depthofbook_aspen_v1_11.order_cancel_all_message.size =
  imperative_intelligentcross_depthofbook_aspen_v1_11.symbol_id.size + 
  imperative_intelligentcross_depthofbook_aspen_v1_11.timestamp.size + 
  imperative_intelligentcross_depthofbook_aspen_v1_11.order_id.size

-- Display: Order Cancel All Message
imperative_intelligentcross_depthofbook_aspen_v1_11.order_cancel_all_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel All Message
imperative_intelligentcross_depthofbook_aspen_v1_11.order_cancel_all_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Id: Integer
  index, symbol_id = imperative_intelligentcross_depthofbook_aspen_v1_11.symbol_id.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = imperative_intelligentcross_depthofbook_aspen_v1_11.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Integer
  index, order_id = imperative_intelligentcross_depthofbook_aspen_v1_11.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel All Message
imperative_intelligentcross_depthofbook_aspen_v1_11.order_cancel_all_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.order_cancel_all_message, buffer(offset, 0))
    local index = imperative_intelligentcross_depthofbook_aspen_v1_11.order_cancel_all_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = imperative_intelligentcross_depthofbook_aspen_v1_11.order_cancel_all_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return imperative_intelligentcross_depthofbook_aspen_v1_11.order_cancel_all_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Partial Cancel Message
imperative_intelligentcross_depthofbook_aspen_v1_11.order_partial_cancel_message = {}

-- Size: Order Partial Cancel Message
imperative_intelligentcross_depthofbook_aspen_v1_11.order_partial_cancel_message.size =
  imperative_intelligentcross_depthofbook_aspen_v1_11.symbol_id.size + 
  imperative_intelligentcross_depthofbook_aspen_v1_11.timestamp.size + 
  imperative_intelligentcross_depthofbook_aspen_v1_11.order_id.size + 
  imperative_intelligentcross_depthofbook_aspen_v1_11.shares_canceled.size

-- Display: Order Partial Cancel Message
imperative_intelligentcross_depthofbook_aspen_v1_11.order_partial_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Partial Cancel Message
imperative_intelligentcross_depthofbook_aspen_v1_11.order_partial_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Id: Integer
  index, symbol_id = imperative_intelligentcross_depthofbook_aspen_v1_11.symbol_id.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = imperative_intelligentcross_depthofbook_aspen_v1_11.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Integer
  index, order_id = imperative_intelligentcross_depthofbook_aspen_v1_11.order_id.dissect(buffer, index, packet, parent)

  -- Shares Canceled: Integer
  index, shares_canceled = imperative_intelligentcross_depthofbook_aspen_v1_11.shares_canceled.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Partial Cancel Message
imperative_intelligentcross_depthofbook_aspen_v1_11.order_partial_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.order_partial_cancel_message, buffer(offset, 0))
    local index = imperative_intelligentcross_depthofbook_aspen_v1_11.order_partial_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = imperative_intelligentcross_depthofbook_aspen_v1_11.order_partial_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return imperative_intelligentcross_depthofbook_aspen_v1_11.order_partial_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- New Order Add Message
imperative_intelligentcross_depthofbook_aspen_v1_11.new_order_add_message = {}

-- Size: New Order Add Message
imperative_intelligentcross_depthofbook_aspen_v1_11.new_order_add_message.size =
  imperative_intelligentcross_depthofbook_aspen_v1_11.symbol_id.size + 
  imperative_intelligentcross_depthofbook_aspen_v1_11.timestamp.size + 
  imperative_intelligentcross_depthofbook_aspen_v1_11.order_id.size + 
  imperative_intelligentcross_depthofbook_aspen_v1_11.side.size + 
  imperative_intelligentcross_depthofbook_aspen_v1_11.shares.size + 
  imperative_intelligentcross_depthofbook_aspen_v1_11.symbol.size + 
  imperative_intelligentcross_depthofbook_aspen_v1_11.price.size + 
  imperative_intelligentcross_depthofbook_aspen_v1_11.reserved_4.size

-- Display: New Order Add Message
imperative_intelligentcross_depthofbook_aspen_v1_11.new_order_add_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Add Message
imperative_intelligentcross_depthofbook_aspen_v1_11.new_order_add_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Id: Integer
  index, symbol_id = imperative_intelligentcross_depthofbook_aspen_v1_11.symbol_id.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = imperative_intelligentcross_depthofbook_aspen_v1_11.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Integer
  index, order_id = imperative_intelligentcross_depthofbook_aspen_v1_11.order_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = imperative_intelligentcross_depthofbook_aspen_v1_11.side.dissect(buffer, index, packet, parent)

  -- Shares: Integer
  index, shares = imperative_intelligentcross_depthofbook_aspen_v1_11.shares.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = imperative_intelligentcross_depthofbook_aspen_v1_11.symbol.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = imperative_intelligentcross_depthofbook_aspen_v1_11.price.dissect(buffer, index, packet, parent)

  -- Reserved 4: Alpha
  index, reserved_4 = imperative_intelligentcross_depthofbook_aspen_v1_11.reserved_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Add Message
imperative_intelligentcross_depthofbook_aspen_v1_11.new_order_add_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.new_order_add_message, buffer(offset, 0))
    local index = imperative_intelligentcross_depthofbook_aspen_v1_11.new_order_add_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = imperative_intelligentcross_depthofbook_aspen_v1_11.new_order_add_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return imperative_intelligentcross_depthofbook_aspen_v1_11.new_order_add_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol State Message
imperative_intelligentcross_depthofbook_aspen_v1_11.symbol_state_message = {}

-- Size: Symbol State Message
imperative_intelligentcross_depthofbook_aspen_v1_11.symbol_state_message.size =
  imperative_intelligentcross_depthofbook_aspen_v1_11.symbol_id.size + 
  imperative_intelligentcross_depthofbook_aspen_v1_11.timestamp.size + 
  imperative_intelligentcross_depthofbook_aspen_v1_11.symbol.size + 
  imperative_intelligentcross_depthofbook_aspen_v1_11.state.size + 
  imperative_intelligentcross_depthofbook_aspen_v1_11.reserved_1.size + 
  imperative_intelligentcross_depthofbook_aspen_v1_11.info.size

-- Display: Symbol State Message
imperative_intelligentcross_depthofbook_aspen_v1_11.symbol_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol State Message
imperative_intelligentcross_depthofbook_aspen_v1_11.symbol_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Id: Integer
  index, symbol_id = imperative_intelligentcross_depthofbook_aspen_v1_11.symbol_id.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = imperative_intelligentcross_depthofbook_aspen_v1_11.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = imperative_intelligentcross_depthofbook_aspen_v1_11.symbol.dissect(buffer, index, packet, parent)

  -- State: Alpha
  index, state = imperative_intelligentcross_depthofbook_aspen_v1_11.state.dissect(buffer, index, packet, parent)

  -- Reserved 1: Alpha
  index, reserved_1 = imperative_intelligentcross_depthofbook_aspen_v1_11.reserved_1.dissect(buffer, index, packet, parent)

  -- Info: Alpha
  index, info = imperative_intelligentcross_depthofbook_aspen_v1_11.info.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol State Message
imperative_intelligentcross_depthofbook_aspen_v1_11.symbol_state_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.symbol_state_message, buffer(offset, 0))
    local index = imperative_intelligentcross_depthofbook_aspen_v1_11.symbol_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = imperative_intelligentcross_depthofbook_aspen_v1_11.symbol_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return imperative_intelligentcross_depthofbook_aspen_v1_11.symbol_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Information Message
imperative_intelligentcross_depthofbook_aspen_v1_11.symbol_information_message = {}

-- Size: Symbol Information Message
imperative_intelligentcross_depthofbook_aspen_v1_11.symbol_information_message.size =
  imperative_intelligentcross_depthofbook_aspen_v1_11.symbol_id.size + 
  imperative_intelligentcross_depthofbook_aspen_v1_11.timestamp.size + 
  imperative_intelligentcross_depthofbook_aspen_v1_11.symbol.size + 
  imperative_intelligentcross_depthofbook_aspen_v1_11.listing_market.size + 
  imperative_intelligentcross_depthofbook_aspen_v1_11.reserved_1.size + 
  imperative_intelligentcross_depthofbook_aspen_v1_11.round_lot_size.size

-- Display: Symbol Information Message
imperative_intelligentcross_depthofbook_aspen_v1_11.symbol_information_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Information Message
imperative_intelligentcross_depthofbook_aspen_v1_11.symbol_information_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Id: Integer
  index, symbol_id = imperative_intelligentcross_depthofbook_aspen_v1_11.symbol_id.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = imperative_intelligentcross_depthofbook_aspen_v1_11.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = imperative_intelligentcross_depthofbook_aspen_v1_11.symbol.dissect(buffer, index, packet, parent)

  -- Listing Market: Alpha
  index, listing_market = imperative_intelligentcross_depthofbook_aspen_v1_11.listing_market.dissect(buffer, index, packet, parent)

  -- Reserved 1: Alpha
  index, reserved_1 = imperative_intelligentcross_depthofbook_aspen_v1_11.reserved_1.dissect(buffer, index, packet, parent)

  -- Round Lot Size: Integer
  index, round_lot_size = imperative_intelligentcross_depthofbook_aspen_v1_11.round_lot_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Information Message
imperative_intelligentcross_depthofbook_aspen_v1_11.symbol_information_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.symbol_information_message, buffer(offset, 0))
    local index = imperative_intelligentcross_depthofbook_aspen_v1_11.symbol_information_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = imperative_intelligentcross_depthofbook_aspen_v1_11.symbol_information_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return imperative_intelligentcross_depthofbook_aspen_v1_11.symbol_information_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Event Message
imperative_intelligentcross_depthofbook_aspen_v1_11.market_event_message = {}

-- Size: Market Event Message
imperative_intelligentcross_depthofbook_aspen_v1_11.market_event_message.size =
  imperative_intelligentcross_depthofbook_aspen_v1_11.reserved_2.size + 
  imperative_intelligentcross_depthofbook_aspen_v1_11.timestamp.size + 
  imperative_intelligentcross_depthofbook_aspen_v1_11.event.size

-- Display: Market Event Message
imperative_intelligentcross_depthofbook_aspen_v1_11.market_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Event Message
imperative_intelligentcross_depthofbook_aspen_v1_11.market_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: Alpha
  index, reserved_2 = imperative_intelligentcross_depthofbook_aspen_v1_11.reserved_2.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = imperative_intelligentcross_depthofbook_aspen_v1_11.timestamp.dissect(buffer, index, packet, parent)

  -- Event: Alpha
  index, event = imperative_intelligentcross_depthofbook_aspen_v1_11.event.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Event Message
imperative_intelligentcross_depthofbook_aspen_v1_11.market_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.market_event_message, buffer(offset, 0))
    local index = imperative_intelligentcross_depthofbook_aspen_v1_11.market_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = imperative_intelligentcross_depthofbook_aspen_v1_11.market_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return imperative_intelligentcross_depthofbook_aspen_v1_11.market_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
imperative_intelligentcross_depthofbook_aspen_v1_11.payload = {}

-- Dissect: Payload
imperative_intelligentcross_depthofbook_aspen_v1_11.payload.dispatch = {
  ["A"] = imperative_intelligentcross_depthofbook_aspen_v1_11.market_event_message.dissect,
  ["B"] = imperative_intelligentcross_depthofbook_aspen_v1_11.symbol_information_message.dissect,
  ["C"] = imperative_intelligentcross_depthofbook_aspen_v1_11.symbol_state_message.dissect,
  ["D"] = imperative_intelligentcross_depthofbook_aspen_v1_11.new_order_add_message.dissect,
  ["F"] = imperative_intelligentcross_depthofbook_aspen_v1_11.order_partial_cancel_message.dissect,
  ["G"] = imperative_intelligentcross_depthofbook_aspen_v1_11.order_cancel_all_message.dissect,
  ["H"] = imperative_intelligentcross_depthofbook_aspen_v1_11.order_updated_message.dissect,
  ["J"] = imperative_intelligentcross_depthofbook_aspen_v1_11.order_executed_message.dissect,
  ["K"] = imperative_intelligentcross_depthofbook_aspen_v1_11.trade_message.dissect,
  ["M"] = imperative_intelligentcross_depthofbook_aspen_v1_11.trade_break_message.dissect,
}

imperative_intelligentcross_depthofbook_aspen_v1_11.payload.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = imperative_intelligentcross_depthofbook_aspen_v1_11.payload.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
imperative_intelligentcross_depthofbook_aspen_v1_11.message_header = {}

-- Size: Message Header
imperative_intelligentcross_depthofbook_aspen_v1_11.message_header.size =
  imperative_intelligentcross_depthofbook_aspen_v1_11.length.size + 
  imperative_intelligentcross_depthofbook_aspen_v1_11.message_type.size

-- Display: Message Header
imperative_intelligentcross_depthofbook_aspen_v1_11.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
imperative_intelligentcross_depthofbook_aspen_v1_11.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = imperative_intelligentcross_depthofbook_aspen_v1_11.length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 10 values
  index, message_type = imperative_intelligentcross_depthofbook_aspen_v1_11.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
imperative_intelligentcross_depthofbook_aspen_v1_11.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.message_header, buffer(offset, 0))
    local index = imperative_intelligentcross_depthofbook_aspen_v1_11.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = imperative_intelligentcross_depthofbook_aspen_v1_11.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return imperative_intelligentcross_depthofbook_aspen_v1_11.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
imperative_intelligentcross_depthofbook_aspen_v1_11.message = {}

-- Calculate size of: Message
imperative_intelligentcross_depthofbook_aspen_v1_11.message.size = function(buffer, offset)
  local index = 0

  index = index + imperative_intelligentcross_depthofbook_aspen_v1_11.message_header.size

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 1, 1):string()
  index = index + imperative_intelligentcross_depthofbook_aspen_v1_11.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
imperative_intelligentcross_depthofbook_aspen_v1_11.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
imperative_intelligentcross_depthofbook_aspen_v1_11.message.fields = function(buffer, offset, packet, parent, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = imperative_intelligentcross_depthofbook_aspen_v1_11.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 10 branches
  index = imperative_intelligentcross_depthofbook_aspen_v1_11.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
imperative_intelligentcross_depthofbook_aspen_v1_11.message.dissect = function(buffer, offset, packet, parent, message_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.message, buffer(offset, 0))
    local index = imperative_intelligentcross_depthofbook_aspen_v1_11.message.fields(buffer, offset, packet, parent, message_index)
    local length = index - offset
    parent:set_len(length)
    local display = imperative_intelligentcross_depthofbook_aspen_v1_11.message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return imperative_intelligentcross_depthofbook_aspen_v1_11.message.fields(buffer, offset, packet, parent, message_index)
  end
end

-- Packet Header
imperative_intelligentcross_depthofbook_aspen_v1_11.packet_header = {}

-- Size: Packet Header
imperative_intelligentcross_depthofbook_aspen_v1_11.packet_header.size =
  imperative_intelligentcross_depthofbook_aspen_v1_11.market_day_identifier.size + 
  imperative_intelligentcross_depthofbook_aspen_v1_11.feed_identifier.size + 
  imperative_intelligentcross_depthofbook_aspen_v1_11.sequence.size + 
  imperative_intelligentcross_depthofbook_aspen_v1_11.count.size

-- Display: Packet Header
imperative_intelligentcross_depthofbook_aspen_v1_11.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
imperative_intelligentcross_depthofbook_aspen_v1_11.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Day Identifier: 9 Byte Ascii String
  index, market_day_identifier = imperative_intelligentcross_depthofbook_aspen_v1_11.market_day_identifier.dissect(buffer, index, packet, parent)

  -- Feed Identifier: 1 Byte Ascii String
  index, feed_identifier = imperative_intelligentcross_depthofbook_aspen_v1_11.feed_identifier.dissect(buffer, index, packet, parent)

  -- Sequence: 8 Byte Unsigned Fixed Width Integer
  index, sequence = imperative_intelligentcross_depthofbook_aspen_v1_11.sequence.dissect(buffer, index, packet, parent)

  -- Count: 2 Byte Unsigned Fixed Width Integer
  index, count = imperative_intelligentcross_depthofbook_aspen_v1_11.count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
imperative_intelligentcross_depthofbook_aspen_v1_11.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_imperative_intelligentcross_depthofbook_aspen_v1_11.fields.packet_header, buffer(offset, 0))
    local index = imperative_intelligentcross_depthofbook_aspen_v1_11.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = imperative_intelligentcross_depthofbook_aspen_v1_11.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return imperative_intelligentcross_depthofbook_aspen_v1_11.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
imperative_intelligentcross_depthofbook_aspen_v1_11.packet = {}

-- Verify required size of Udp packet
imperative_intelligentcross_depthofbook_aspen_v1_11.packet.requiredsize = function(buffer)
  return buffer:len() >= imperative_intelligentcross_depthofbook_aspen_v1_11.packet_header.size
end

-- Dissect Packet
imperative_intelligentcross_depthofbook_aspen_v1_11.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = imperative_intelligentcross_depthofbook_aspen_v1_11.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1
    index, message = imperative_intelligentcross_depthofbook_aspen_v1_11.message.dissect(buffer, index, packet, parent, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_imperative_intelligentcross_depthofbook_aspen_v1_11.init()
end

-- Dissector for Imperative IntelligentCross DepthOfBook Aspen 1.11
function omi_imperative_intelligentcross_depthofbook_aspen_v1_11.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_imperative_intelligentcross_depthofbook_aspen_v1_11.name

  -- Dissect protocol
  local protocol = parent:add(omi_imperative_intelligentcross_depthofbook_aspen_v1_11, buffer(), omi_imperative_intelligentcross_depthofbook_aspen_v1_11.description, "("..buffer:len().." Bytes)")
  return imperative_intelligentcross_depthofbook_aspen_v1_11.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Imperative IntelligentCross DepthOfBook Aspen 1.11 (Udp)
local function omi_imperative_intelligentcross_depthofbook_aspen_v1_11_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not imperative_intelligentcross_depthofbook_aspen_v1_11.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_imperative_intelligentcross_depthofbook_aspen_v1_11
  omi_imperative_intelligentcross_depthofbook_aspen_v1_11.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Imperative IntelligentCross DepthOfBook Aspen 1.11
omi_imperative_intelligentcross_depthofbook_aspen_v1_11:register_heuristic("udp", omi_imperative_intelligentcross_depthofbook_aspen_v1_11_udp_heuristic)

-- Register Imperative IntelligentCross DepthOfBook Aspen 1.11 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_imperative_intelligentcross_depthofbook_aspen_v1_11)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Imperative Execution
--   Version: 1.11
--   Date: Thursday, July 30, 2020
--   Specification: IntelligentCrossMarketDataFeedSpec.v.1.11.pdf
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
