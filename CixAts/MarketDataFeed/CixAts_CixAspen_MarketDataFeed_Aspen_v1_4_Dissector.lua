-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- CixAts CixAspen MarketDataFeed Aspen 1.4 Protocol
local omi_cixats_cixaspen_marketdatafeed_aspen_v1_4 = Proto("Omi.CixAts.CixAspen.MarketDataFeed.Aspen.v1.4", "CixAts CixAspen MarketDataFeed Aspen 1.4")

-- Protocol table
local cixats_cixaspen_marketdatafeed_aspen_v1_4 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- CixAts CixAspen MarketDataFeed Aspen 1.4 Fields
omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.board_lot_size = ProtoField.new("Board Lot Size", "cixats.cixaspen.marketdatafeed.aspen.v1.4.boardlotsize", ftypes.UINT32, nil, nil, nil, "Board Lot Size in Shares")
omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.broker = ProtoField.new("Broker", "cixats.cixaspen.marketdatafeed.aspen.v1.4.broker", ftypes.STRING, nil, nil, nil, "Three digit number Broker Number or 001 for anonymous")
omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.contra_broker = ProtoField.new("Contra Broker", "cixats.cixaspen.marketdatafeed.aspen.v1.4.contrabroker", ftypes.STRING, nil, nil, nil, "Three digit number Broker Number of the contra order or 001 for anonymous")
omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.corrected_trade_price = ProtoField.new("Corrected Trade Price", "cixats.cixaspen.marketdatafeed.aspen.v1.4.correctedtradeprice", ftypes.DOUBLE, nil, nil, nil, "Price the trade is being amended/corrected to")
omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.corrected_trade_quantity = ProtoField.new("Corrected Trade Quantity", "cixats.cixaspen.marketdatafeed.aspen.v1.4.correctedtradequantity", ftypes.DOUBLE, nil, nil, nil, "Quantity the trade is being amended/corrected to")
omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.count = ProtoField.new("Count", "cixats.cixaspen.marketdatafeed.aspen.v1.4.count", ftypes.UINT16, nil, nil, nil, "Number of messages in packet")
omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.event = ProtoField.new("Event", "cixats.cixaspen.marketdatafeed.aspen.v1.4.event", ftypes.STRING, nil, nil, nil, "Session state event code")
omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.execution_id = ProtoField.new("Execution Id", "cixats.cixaspen.marketdatafeed.aspen.v1.4.executionid", ftypes.UINT64, nil, nil, nil, "Market Issued Unique Execution ID")
omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.feed_identifier = ProtoField.new("Feed Identifier", "cixats.cixaspen.marketdatafeed.aspen.v1.4.feedidentifier", ftypes.STRING, nil, nil, nil, "Unique code for feed")
omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.info = ProtoField.new("Info", "cixats.cixaspen.marketdatafeed.aspen.v1.4.info", ftypes.STRING, nil, nil, nil, "optional text")
omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.length = ProtoField.new("Length", "cixats.cixaspen.marketdatafeed.aspen.v1.4.length", ftypes.UINT16, nil, nil, nil, "Length of data message not including this field")
omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.listing_market = ProtoField.new("Listing Market", "cixats.cixaspen.marketdatafeed.aspen.v1.4.listingmarket", ftypes.STRING, nil, nil, nil, "Code identifying the primary listing market")
omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.market_day_identifier = ProtoField.new("Market Day Identifier", "cixats.cixaspen.marketdatafeed.aspen.v1.4.marketdayidentifier", ftypes.UINT32, nil, nil, nil, "Unique identifier for trading day")
omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.message_type = ProtoField.new("Message Type", "cixats.cixaspen.marketdatafeed.aspen.v1.4.messagetype", ftypes.STRING, nil, nil, nil, "Code identifying message type")
omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.order_id = ProtoField.new("Order Id", "cixats.cixaspen.marketdatafeed.aspen.v1.4.orderid", ftypes.UINT64, nil, nil, nil, "Market Issued Unique Order ID")
omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.original_execution_id = ProtoField.new("Original Execution Id", "cixats.cixaspen.marketdatafeed.aspen.v1.4.originalexecutionid", ftypes.UINT64, nil, nil, nil, "Execution ID of the original trade being corrected")
omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.original_trade_price = ProtoField.new("Original Trade Price", "cixats.cixaspen.marketdatafeed.aspen.v1.4.originaltradeprice", ftypes.DOUBLE, nil, nil, nil, "Price of the trade being corrected")
omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.original_trade_quantity = ProtoField.new("Original Trade Quantity", "cixats.cixaspen.marketdatafeed.aspen.v1.4.originaltradequantity", ftypes.DOUBLE, nil, nil, nil, "Quantity of the trade being corrected")
omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.price = ProtoField.new("Price", "cixats.cixaspen.marketdatafeed.aspen.v1.4.price", ftypes.DOUBLE, nil, nil, nil, "Price - 6 implied decimals")
omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.quantity = ProtoField.new("Quantity", "cixats.cixaspen.marketdatafeed.aspen.v1.4.quantity", ftypes.DOUBLE, nil, nil, nil, "Quantity - 6 implied decimals")
omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.quantity_canceled = ProtoField.new("Quantity Canceled", "cixats.cixaspen.marketdatafeed.aspen.v1.4.quantitycanceled", ftypes.DOUBLE, nil, nil, nil, "Quantity canceled - Quantity 6 implied decimals")
omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.reserved_1 = ProtoField.new("Reserved 1", "cixats.cixaspen.marketdatafeed.aspen.v1.4.reserved1", ftypes.STRING, nil, nil, nil, "Reserved for future use")
omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.reserved_2 = ProtoField.new("Reserved 2", "cixats.cixaspen.marketdatafeed.aspen.v1.4.reserved2", ftypes.STRING, nil, nil, nil, "Reserved for future use")
omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.reserved_8 = ProtoField.new("Reserved 8", "cixats.cixaspen.marketdatafeed.aspen.v1.4.reserved8", ftypes.UINT64, nil, nil, nil, "Reserved for future use")
omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.sequence = ProtoField.new("Sequence", "cixats.cixaspen.marketdatafeed.aspen.v1.4.sequence", ftypes.UINT64, nil, nil, nil, "Sequence number for next message")
omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.shares = ProtoField.new("Shares", "cixats.cixaspen.marketdatafeed.aspen.v1.4.shares", ftypes.DOUBLE, nil, nil, nil, "Qty Executed - 6 implied decimals")
omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.side = ProtoField.new("Side", "cixats.cixaspen.marketdatafeed.aspen.v1.4.side", ftypes.STRING, nil, nil, nil, "Side of the order")
omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.state = ProtoField.new("State", "cixats.cixaspen.marketdatafeed.aspen.v1.4.state", ftypes.STRING, nil, nil, nil, "Symbol trading state")
omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.symbol = ProtoField.new("Symbol", "cixats.cixaspen.marketdatafeed.aspen.v1.4.symbol", ftypes.STRING, nil, nil, nil, "Stock Symbol")
omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.symbol_id = ProtoField.new("Symbol Id", "cixats.cixaspen.marketdatafeed.aspen.v1.4.symbolid", ftypes.UINT16, nil, nil, nil, "Symbol Index")
omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.timestamp = ProtoField.new("Timestamp", "cixats.cixaspen.marketdatafeed.aspen.v1.4.timestamp", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Nanoseconds Since Epoch (UTC)")
omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.timestamp_utc = ProtoField.new("Timestamp", "cixats.cixaspen.marketdatafeed.aspen.v1.4.timestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Nanoseconds Since Epoch (UTC)")

-- CixAts CixAspen MarketDataFeed Aspen 1.4 Framing
omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.message = ProtoField.new("Message", "cixats.cixaspen.marketdatafeed.aspen.v1.4.message", ftypes.STRING)
omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.message_header = ProtoField.new("Message Header", "cixats.cixaspen.marketdatafeed.aspen.v1.4.messageheader", ftypes.STRING, nil, nil, nil, "Length of the message")
omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.packet = ProtoField.new("Packet", "cixats.cixaspen.marketdatafeed.aspen.v1.4.packet", ftypes.STRING, nil, nil, nil, "Aspen Udp Packet")
omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.packet_header = ProtoField.new("Packet Header", "cixats.cixaspen.marketdatafeed.aspen.v1.4.packetheader", ftypes.STRING)

-- CixAts CixAspen MarketDataFeed 1.4 Application Messages
omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.market_event_message = ProtoField.new("Market Event Message", "cixats.cixaspen.marketdatafeed.aspen.v1.4.marketeventmessage", ftypes.STRING, nil, nil, nil, "Transitions in the overall session state")
omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.new_order_add_message = ProtoField.new("New Order Add Message", "cixats.cixaspen.marketdatafeed.aspen.v1.4.neworderaddmessage", ftypes.STRING, nil, nil, nil, "A new resting order added to the book")
omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.order_cancel_all_message = ProtoField.new("Order Cancel All Message", "cixats.cixaspen.marketdatafeed.aspen.v1.4.ordercancelallmessage", ftypes.STRING, nil, nil, nil, "Sent when the order is canceled in its entirety")
omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.order_executed_message = ProtoField.new("Order Executed Message", "cixats.cixaspen.marketdatafeed.aspen.v1.4.orderexecutedmessage", ftypes.STRING, nil, nil, nil, "Sent when an order is executed")
omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.order_partial_cancel_message = ProtoField.new("Order Partial Cancel Message", "cixats.cixaspen.marketdatafeed.aspen.v1.4.orderpartialcancelmessage", ftypes.STRING, nil, nil, nil, "Part of a resting order is canceled")
omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.symbol_information_message = ProtoField.new("Symbol Information Message", "cixats.cixaspen.marketdatafeed.aspen.v1.4.symbolinformationmessage", ftypes.STRING, nil, nil, nil, "Reference data for each symbol that may be traded")
omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.symbol_state_message = ProtoField.new("Symbol State Message", "cixats.cixaspen.marketdatafeed.aspen.v1.4.symbolstatemessage", ftypes.STRING, nil, nil, nil, "Individual symbol trading state (halts)")
omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.trade_cancel_message = ProtoField.new("Trade Cancel Message", "cixats.cixaspen.marketdatafeed.aspen.v1.4.tradecancelmessage", ftypes.STRING, nil, nil, nil, "Sent whenever an execution on CIX ATS is cancelled")
omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.trade_correct_message = ProtoField.new("Trade Correct Message", "cixats.cixaspen.marketdatafeed.aspen.v1.4.tradecorrectmessage", ftypes.STRING, nil, nil, nil, "Sent whenever an execution on CIX ATS is amended")
omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.trade_message = ProtoField.new("Trade Message", "cixats.cixaspen.marketdatafeed.aspen.v1.4.trademessage", ftypes.STRING, nil, nil, nil, "Sent when a hidden order is executed")

-- CixAts CixAspen MarketDataFeed Aspen 1.4 Generated Fields
omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.message_index = ProtoField.new("Message Index", "cixats.cixaspen.marketdatafeed.aspen.v1.4.messageindex", ftypes.UINT16)

-- CixAts CixAspen MarketDataFeed Aspen 1.4 Expert Info
cixats_cixaspen_marketdatafeed_aspen_v1_4.experts = {}
cixats_cixaspen_marketdatafeed_aspen_v1_4.experts.not_a_number = ProtoExpert.new("cixats.cixaspen.marketdatafeed.aspen.v1.4.notanumber", "Ascii digits field holding no number", expert.group.PROTOCOL, expert.severity.WARN)
omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.experts = { cixats_cixaspen_marketdatafeed_aspen_v1_4.experts.not_a_number }

-----------------------------------------------------------------------
-- CixAts CixAspen MarketDataFeed Aspen 1.4 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
cixats_cixaspen_marketdatafeed_aspen_v1_4.absolute_time_base = 0


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- CixAts CixAspen MarketDataFeed Aspen 1.4 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true

-- Register CixAts CixAspen MarketDataFeed Aspen 1.4 Show Options
omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.prefs.show_application_messages then
    show.application_messages = omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.prefs.show_application_messages
  end
  if show.headers ~= omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.prefs.show_headers then
    show.headers = omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.prefs.show_headers
  end
  if show.structs ~= omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.prefs.show_structs then
    show.structs = omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.prefs.show_structs
  end
  if show.indexes ~= omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.prefs.show_indexes then
    show.indexes = omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.prefs.show_indexes
  end
  if cixats_cixaspen_marketdatafeed_aspen_v1_4.absolute_time_base ~= omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.prefs.absolute_time_base then
    cixats_cixaspen_marketdatafeed_aspen_v1_4.absolute_time_base = omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.prefs.absolute_time_base
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
-- CixAts CixAspen MarketDataFeed Aspen 1.4 Fields
-----------------------------------------------------------------------

-- Board Lot Size
cixats_cixaspen_marketdatafeed_aspen_v1_4.board_lot_size = {}

-- Size: Board Lot Size
cixats_cixaspen_marketdatafeed_aspen_v1_4.board_lot_size.size = 4

-- Display: Board Lot Size
cixats_cixaspen_marketdatafeed_aspen_v1_4.board_lot_size.display = function(value)
  return "Board Lot Size: "..value
end

-- Dissect: Board Lot Size
cixats_cixaspen_marketdatafeed_aspen_v1_4.board_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_marketdatafeed_aspen_v1_4.board_lot_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cixats_cixaspen_marketdatafeed_aspen_v1_4.board_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.board_lot_size, range, value, display)

  return offset + length, value
end

-- Broker
cixats_cixaspen_marketdatafeed_aspen_v1_4.broker = {}

-- Size: Broker
cixats_cixaspen_marketdatafeed_aspen_v1_4.broker.size = 3

-- Display: Broker
cixats_cixaspen_marketdatafeed_aspen_v1_4.broker.display = function(value)
  return "Broker: "..value
end

-- Dissect: Broker
cixats_cixaspen_marketdatafeed_aspen_v1_4.broker.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_marketdatafeed_aspen_v1_4.broker.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cixats_cixaspen_marketdatafeed_aspen_v1_4.broker.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.broker, range, value, display)

  return offset + length, value
end

-- Contra Broker
cixats_cixaspen_marketdatafeed_aspen_v1_4.contra_broker = {}

-- Size: Contra Broker
cixats_cixaspen_marketdatafeed_aspen_v1_4.contra_broker.size = 3

-- Display: Contra Broker
cixats_cixaspen_marketdatafeed_aspen_v1_4.contra_broker.display = function(value)
  return "Contra Broker: "..value
end

-- Dissect: Contra Broker
cixats_cixaspen_marketdatafeed_aspen_v1_4.contra_broker.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_marketdatafeed_aspen_v1_4.contra_broker.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cixats_cixaspen_marketdatafeed_aspen_v1_4.contra_broker.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.contra_broker, range, value, display)

  return offset + length, value
end

-- Corrected Trade Price
cixats_cixaspen_marketdatafeed_aspen_v1_4.corrected_trade_price = {}

-- Size: Corrected Trade Price
cixats_cixaspen_marketdatafeed_aspen_v1_4.corrected_trade_price.size = 8

-- Display: Corrected Trade Price
cixats_cixaspen_marketdatafeed_aspen_v1_4.corrected_trade_price.display = function(value)
  return "Corrected Trade Price: "..value
end

-- Translate: Corrected Trade Price
cixats_cixaspen_marketdatafeed_aspen_v1_4.corrected_trade_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Corrected Trade Price
cixats_cixaspen_marketdatafeed_aspen_v1_4.corrected_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_marketdatafeed_aspen_v1_4.corrected_trade_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cixats_cixaspen_marketdatafeed_aspen_v1_4.corrected_trade_price.translate(raw)
  local display = cixats_cixaspen_marketdatafeed_aspen_v1_4.corrected_trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.corrected_trade_price, range, value, display)

  return offset + length, value
end

-- Corrected Trade Quantity
cixats_cixaspen_marketdatafeed_aspen_v1_4.corrected_trade_quantity = {}

-- Size: Corrected Trade Quantity
cixats_cixaspen_marketdatafeed_aspen_v1_4.corrected_trade_quantity.size = 8

-- Display: Corrected Trade Quantity
cixats_cixaspen_marketdatafeed_aspen_v1_4.corrected_trade_quantity.display = function(value)
  return "Corrected Trade Quantity: "..value
end

-- Translate: Corrected Trade Quantity
cixats_cixaspen_marketdatafeed_aspen_v1_4.corrected_trade_quantity.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Corrected Trade Quantity
cixats_cixaspen_marketdatafeed_aspen_v1_4.corrected_trade_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_marketdatafeed_aspen_v1_4.corrected_trade_quantity.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cixats_cixaspen_marketdatafeed_aspen_v1_4.corrected_trade_quantity.translate(raw)
  local display = cixats_cixaspen_marketdatafeed_aspen_v1_4.corrected_trade_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.corrected_trade_quantity, range, value, display)

  return offset + length, value
end

-- Count
cixats_cixaspen_marketdatafeed_aspen_v1_4.count = {}

-- Size: Count
cixats_cixaspen_marketdatafeed_aspen_v1_4.count.size = 2

-- Display: Count
cixats_cixaspen_marketdatafeed_aspen_v1_4.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
cixats_cixaspen_marketdatafeed_aspen_v1_4.count.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_marketdatafeed_aspen_v1_4.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cixats_cixaspen_marketdatafeed_aspen_v1_4.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.count, range, value, display)

  return offset + length, value
end

-- Event
cixats_cixaspen_marketdatafeed_aspen_v1_4.event = {}

-- Size: Event
cixats_cixaspen_marketdatafeed_aspen_v1_4.event.size = 1

-- Display: Event
cixats_cixaspen_marketdatafeed_aspen_v1_4.event.labels = {
  ["O"] = "Event: Start Of Session (O)",
  ["S"] = "Event: Market Accepting Orders (S)",
  ["Q"] = "Event: Market Open For Trading (Q)",
  ["E"] = "Event: Market Closed For Trading (E)",
  ["C"] = "Event: End Of Session (C)",
}

cixats_cixaspen_marketdatafeed_aspen_v1_4.event.display = function(value)
  return cixats_cixaspen_marketdatafeed_aspen_v1_4.event.labels[value] or "Event: Unknown("..value..")"
end

-- Dissect: Event
cixats_cixaspen_marketdatafeed_aspen_v1_4.event.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_marketdatafeed_aspen_v1_4.event.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cixats_cixaspen_marketdatafeed_aspen_v1_4.event.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.event, range, value, display)

  return offset + length, value
end

-- Execution Id
cixats_cixaspen_marketdatafeed_aspen_v1_4.execution_id = {}

-- Size: Execution Id
cixats_cixaspen_marketdatafeed_aspen_v1_4.execution_id.size = 8

-- Display: Execution Id
cixats_cixaspen_marketdatafeed_aspen_v1_4.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
cixats_cixaspen_marketdatafeed_aspen_v1_4.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_marketdatafeed_aspen_v1_4.execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cixats_cixaspen_marketdatafeed_aspen_v1_4.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Feed Identifier
cixats_cixaspen_marketdatafeed_aspen_v1_4.feed_identifier = {}

-- Size: Feed Identifier
cixats_cixaspen_marketdatafeed_aspen_v1_4.feed_identifier.size = 1

-- Display: Feed Identifier
cixats_cixaspen_marketdatafeed_aspen_v1_4.feed_identifier.labels = {
  ["A"] = "Feed Identifier: Aspen (A)",
  ["V"] = "Feed Identifier: Aspen Vert (V)",
  ["M"] = "Feed Identifier: Midpoint (M)",
  ["B"] = "Feed Identifier: Aspen Uat (B)",
  ["W"] = "Feed Identifier: Aspen Vert Uat (W)",
  ["N"] = "Feed Identifier: Midpoint Uat (N)",
}

cixats_cixaspen_marketdatafeed_aspen_v1_4.feed_identifier.display = function(value)
  return cixats_cixaspen_marketdatafeed_aspen_v1_4.feed_identifier.labels[value] or "Feed Identifier: Unknown("..value..")"
end

-- Dissect: Feed Identifier
cixats_cixaspen_marketdatafeed_aspen_v1_4.feed_identifier.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_marketdatafeed_aspen_v1_4.feed_identifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cixats_cixaspen_marketdatafeed_aspen_v1_4.feed_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.feed_identifier, range, value, display)

  return offset + length, value
end

-- Info
cixats_cixaspen_marketdatafeed_aspen_v1_4.info = {}

-- Size: Info
cixats_cixaspen_marketdatafeed_aspen_v1_4.info.size = 4

-- Display: Info
cixats_cixaspen_marketdatafeed_aspen_v1_4.info.display = function(value)
  return "Info: "..value
end

-- Dissect: Info
cixats_cixaspen_marketdatafeed_aspen_v1_4.info.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_marketdatafeed_aspen_v1_4.info.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cixats_cixaspen_marketdatafeed_aspen_v1_4.info.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.info, range, value, display)

  return offset + length, value
end

-- Length
cixats_cixaspen_marketdatafeed_aspen_v1_4.length = {}

-- Size: Length
cixats_cixaspen_marketdatafeed_aspen_v1_4.length.size = 2

-- Display: Length
cixats_cixaspen_marketdatafeed_aspen_v1_4.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cixats_cixaspen_marketdatafeed_aspen_v1_4.length.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_marketdatafeed_aspen_v1_4.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cixats_cixaspen_marketdatafeed_aspen_v1_4.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.length, range, value, display)

  return offset + length, value
end

-- Listing Market
cixats_cixaspen_marketdatafeed_aspen_v1_4.listing_market = {}

-- Size: Listing Market
cixats_cixaspen_marketdatafeed_aspen_v1_4.listing_market.size = 1

-- Display: Listing Market
cixats_cixaspen_marketdatafeed_aspen_v1_4.listing_market.labels = {
  ["T"] = "Listing Market: Tsx (T)",
  ["V"] = "Listing Market: Venture (V)",
  ["C"] = "Listing Market: Cse (C)",
  ["N"] = "Listing Market: Neo (N)",
}

cixats_cixaspen_marketdatafeed_aspen_v1_4.listing_market.display = function(value)
  return cixats_cixaspen_marketdatafeed_aspen_v1_4.listing_market.labels[value] or "Listing Market: Unknown("..value..")"
end

-- Dissect: Listing Market
cixats_cixaspen_marketdatafeed_aspen_v1_4.listing_market.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_marketdatafeed_aspen_v1_4.listing_market.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cixats_cixaspen_marketdatafeed_aspen_v1_4.listing_market.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.listing_market, range, value, display)

  return offset + length, value
end

-- Market Day Identifier
cixats_cixaspen_marketdatafeed_aspen_v1_4.market_day_identifier = {}

-- Size: Market Day Identifier
cixats_cixaspen_marketdatafeed_aspen_v1_4.market_day_identifier.size = 9

-- Display: Market Day Identifier
cixats_cixaspen_marketdatafeed_aspen_v1_4.market_day_identifier.display = function(value)
  return "Market Day Identifier: "..value
end

-- Dissect: Market Day Identifier
cixats_cixaspen_marketdatafeed_aspen_v1_4.market_day_identifier.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_marketdatafeed_aspen_v1_4.market_day_identifier.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.market_day_identifier, range, value, "Market Day Identifier: Not Applicable")
    item:add_proto_expert_info(cixats_cixaspen_marketdatafeed_aspen_v1_4.experts.not_a_number, "Market Day Identifier is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cixats_cixaspen_marketdatafeed_aspen_v1_4.market_day_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.market_day_identifier, range, value, display)

  return offset + length, value
end

-- Message Type
cixats_cixaspen_marketdatafeed_aspen_v1_4.message_type = {}

-- Size: Message Type
cixats_cixaspen_marketdatafeed_aspen_v1_4.message_type.size = 1

-- Display: Message Type
cixats_cixaspen_marketdatafeed_aspen_v1_4.message_type.labels = {
  ["A"] = "Message Type: Market Event Message (A)",
  ["B"] = "Message Type: Symbol Information Message (B)",
  ["C"] = "Message Type: Symbol State Message (C)",
  ["D"] = "Message Type: New Order Add Message (D)",
  ["F"] = "Message Type: Order Partial Cancel Message (F)",
  ["G"] = "Message Type: Order Cancel All Message (G)",
  ["J"] = "Message Type: Order Executed Message (J)",
  ["K"] = "Message Type: Trade Message (K)",
  ["L"] = "Message Type: Trade Cancel Message (L)",
  ["M"] = "Message Type: Trade Correct Message (M)",
}

cixats_cixaspen_marketdatafeed_aspen_v1_4.message_type.display = function(value)
  return cixats_cixaspen_marketdatafeed_aspen_v1_4.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
cixats_cixaspen_marketdatafeed_aspen_v1_4.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_marketdatafeed_aspen_v1_4.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cixats_cixaspen_marketdatafeed_aspen_v1_4.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.message_type, range, value, display)

  return offset + length, value
end

-- Order Id
cixats_cixaspen_marketdatafeed_aspen_v1_4.order_id = {}

-- Size: Order Id
cixats_cixaspen_marketdatafeed_aspen_v1_4.order_id.size = 8

-- Display: Order Id
cixats_cixaspen_marketdatafeed_aspen_v1_4.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cixats_cixaspen_marketdatafeed_aspen_v1_4.order_id.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_marketdatafeed_aspen_v1_4.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cixats_cixaspen_marketdatafeed_aspen_v1_4.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.order_id, range, value, display)

  return offset + length, value
end

-- Original Execution Id
cixats_cixaspen_marketdatafeed_aspen_v1_4.original_execution_id = {}

-- Size: Original Execution Id
cixats_cixaspen_marketdatafeed_aspen_v1_4.original_execution_id.size = 8

-- Display: Original Execution Id
cixats_cixaspen_marketdatafeed_aspen_v1_4.original_execution_id.display = function(value)
  return "Original Execution Id: "..value
end

-- Dissect: Original Execution Id
cixats_cixaspen_marketdatafeed_aspen_v1_4.original_execution_id.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_marketdatafeed_aspen_v1_4.original_execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cixats_cixaspen_marketdatafeed_aspen_v1_4.original_execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.original_execution_id, range, value, display)

  return offset + length, value
end

-- Original Trade Price
cixats_cixaspen_marketdatafeed_aspen_v1_4.original_trade_price = {}

-- Size: Original Trade Price
cixats_cixaspen_marketdatafeed_aspen_v1_4.original_trade_price.size = 8

-- Display: Original Trade Price
cixats_cixaspen_marketdatafeed_aspen_v1_4.original_trade_price.display = function(value)
  return "Original Trade Price: "..value
end

-- Translate: Original Trade Price
cixats_cixaspen_marketdatafeed_aspen_v1_4.original_trade_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Original Trade Price
cixats_cixaspen_marketdatafeed_aspen_v1_4.original_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_marketdatafeed_aspen_v1_4.original_trade_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cixats_cixaspen_marketdatafeed_aspen_v1_4.original_trade_price.translate(raw)
  local display = cixats_cixaspen_marketdatafeed_aspen_v1_4.original_trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.original_trade_price, range, value, display)

  return offset + length, value
end

-- Original Trade Quantity
cixats_cixaspen_marketdatafeed_aspen_v1_4.original_trade_quantity = {}

-- Size: Original Trade Quantity
cixats_cixaspen_marketdatafeed_aspen_v1_4.original_trade_quantity.size = 8

-- Display: Original Trade Quantity
cixats_cixaspen_marketdatafeed_aspen_v1_4.original_trade_quantity.display = function(value)
  return "Original Trade Quantity: "..value
end

-- Translate: Original Trade Quantity
cixats_cixaspen_marketdatafeed_aspen_v1_4.original_trade_quantity.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Original Trade Quantity
cixats_cixaspen_marketdatafeed_aspen_v1_4.original_trade_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_marketdatafeed_aspen_v1_4.original_trade_quantity.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cixats_cixaspen_marketdatafeed_aspen_v1_4.original_trade_quantity.translate(raw)
  local display = cixats_cixaspen_marketdatafeed_aspen_v1_4.original_trade_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.original_trade_quantity, range, value, display)

  return offset + length, value
end

-- Price
cixats_cixaspen_marketdatafeed_aspen_v1_4.price = {}

-- Size: Price
cixats_cixaspen_marketdatafeed_aspen_v1_4.price.size = 8

-- Display: Price
cixats_cixaspen_marketdatafeed_aspen_v1_4.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
cixats_cixaspen_marketdatafeed_aspen_v1_4.price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Price
cixats_cixaspen_marketdatafeed_aspen_v1_4.price.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_marketdatafeed_aspen_v1_4.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cixats_cixaspen_marketdatafeed_aspen_v1_4.price.translate(raw)
  local display = cixats_cixaspen_marketdatafeed_aspen_v1_4.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity
cixats_cixaspen_marketdatafeed_aspen_v1_4.quantity = {}

-- Size: Quantity
cixats_cixaspen_marketdatafeed_aspen_v1_4.quantity.size = 8

-- Display: Quantity
cixats_cixaspen_marketdatafeed_aspen_v1_4.quantity.display = function(value)
  return "Quantity: "..value
end

-- Translate: Quantity
cixats_cixaspen_marketdatafeed_aspen_v1_4.quantity.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Quantity
cixats_cixaspen_marketdatafeed_aspen_v1_4.quantity.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_marketdatafeed_aspen_v1_4.quantity.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cixats_cixaspen_marketdatafeed_aspen_v1_4.quantity.translate(raw)
  local display = cixats_cixaspen_marketdatafeed_aspen_v1_4.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.quantity, range, value, display)

  return offset + length, value
end

-- Quantity Canceled
cixats_cixaspen_marketdatafeed_aspen_v1_4.quantity_canceled = {}

-- Size: Quantity Canceled
cixats_cixaspen_marketdatafeed_aspen_v1_4.quantity_canceled.size = 8

-- Display: Quantity Canceled
cixats_cixaspen_marketdatafeed_aspen_v1_4.quantity_canceled.display = function(value)
  return "Quantity Canceled: "..value
end

-- Translate: Quantity Canceled
cixats_cixaspen_marketdatafeed_aspen_v1_4.quantity_canceled.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Quantity Canceled
cixats_cixaspen_marketdatafeed_aspen_v1_4.quantity_canceled.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_marketdatafeed_aspen_v1_4.quantity_canceled.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cixats_cixaspen_marketdatafeed_aspen_v1_4.quantity_canceled.translate(raw)
  local display = cixats_cixaspen_marketdatafeed_aspen_v1_4.quantity_canceled.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.quantity_canceled, range, value, display)

  return offset + length, value
end

-- Reserved 1
cixats_cixaspen_marketdatafeed_aspen_v1_4.reserved_1 = {}

-- Size: Reserved 1
cixats_cixaspen_marketdatafeed_aspen_v1_4.reserved_1.size = 1

-- Display: Reserved 1
cixats_cixaspen_marketdatafeed_aspen_v1_4.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
cixats_cixaspen_marketdatafeed_aspen_v1_4.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_marketdatafeed_aspen_v1_4.reserved_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cixats_cixaspen_marketdatafeed_aspen_v1_4.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 2
cixats_cixaspen_marketdatafeed_aspen_v1_4.reserved_2 = {}

-- Size: Reserved 2
cixats_cixaspen_marketdatafeed_aspen_v1_4.reserved_2.size = 2

-- Display: Reserved 2
cixats_cixaspen_marketdatafeed_aspen_v1_4.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
cixats_cixaspen_marketdatafeed_aspen_v1_4.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_marketdatafeed_aspen_v1_4.reserved_2.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cixats_cixaspen_marketdatafeed_aspen_v1_4.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Reserved 8
cixats_cixaspen_marketdatafeed_aspen_v1_4.reserved_8 = {}

-- Size: Reserved 8
cixats_cixaspen_marketdatafeed_aspen_v1_4.reserved_8.size = 8

-- Display: Reserved 8
cixats_cixaspen_marketdatafeed_aspen_v1_4.reserved_8.display = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
cixats_cixaspen_marketdatafeed_aspen_v1_4.reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_marketdatafeed_aspen_v1_4.reserved_8.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cixats_cixaspen_marketdatafeed_aspen_v1_4.reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.reserved_8, range, value, display)

  return offset + length, value
end

-- Sequence
cixats_cixaspen_marketdatafeed_aspen_v1_4.sequence = {}

-- Size: Sequence
cixats_cixaspen_marketdatafeed_aspen_v1_4.sequence.size = 8

-- Display: Sequence
cixats_cixaspen_marketdatafeed_aspen_v1_4.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cixats_cixaspen_marketdatafeed_aspen_v1_4.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_marketdatafeed_aspen_v1_4.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cixats_cixaspen_marketdatafeed_aspen_v1_4.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.sequence, range, value, display)

  return offset + length, value
end

-- Shares
cixats_cixaspen_marketdatafeed_aspen_v1_4.shares = {}

-- Size: Shares
cixats_cixaspen_marketdatafeed_aspen_v1_4.shares.size = 8

-- Display: Shares
cixats_cixaspen_marketdatafeed_aspen_v1_4.shares.display = function(value)
  return "Shares: "..value
end

-- Translate: Shares
cixats_cixaspen_marketdatafeed_aspen_v1_4.shares.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Shares
cixats_cixaspen_marketdatafeed_aspen_v1_4.shares.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_marketdatafeed_aspen_v1_4.shares.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cixats_cixaspen_marketdatafeed_aspen_v1_4.shares.translate(raw)
  local display = cixats_cixaspen_marketdatafeed_aspen_v1_4.shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.shares, range, value, display)

  return offset + length, value
end

-- Side
cixats_cixaspen_marketdatafeed_aspen_v1_4.side = {}

-- Size: Side
cixats_cixaspen_marketdatafeed_aspen_v1_4.side.size = 1

-- Display: Side
cixats_cixaspen_marketdatafeed_aspen_v1_4.side.labels = {
  ["B"] = "Side: Buy (B)",
  ["S"] = "Side: Sell (S)",
}

cixats_cixaspen_marketdatafeed_aspen_v1_4.side.display = function(value)
  return cixats_cixaspen_marketdatafeed_aspen_v1_4.side.labels[value] or "Side: Unknown("..value..")"
end

-- Dissect: Side
cixats_cixaspen_marketdatafeed_aspen_v1_4.side.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_marketdatafeed_aspen_v1_4.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cixats_cixaspen_marketdatafeed_aspen_v1_4.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.side, range, value, display)

  return offset + length, value
end

-- State
cixats_cixaspen_marketdatafeed_aspen_v1_4.state = {}

-- Size: State
cixats_cixaspen_marketdatafeed_aspen_v1_4.state.size = 1

-- Display: State
cixats_cixaspen_marketdatafeed_aspen_v1_4.state.labels = {
  ["H"] = "State: Halted (H)",
  ["T"] = "State: Trading (T)",
}

cixats_cixaspen_marketdatafeed_aspen_v1_4.state.display = function(value)
  return cixats_cixaspen_marketdatafeed_aspen_v1_4.state.labels[value] or "State: Unknown("..value..")"
end

-- Dissect: State
cixats_cixaspen_marketdatafeed_aspen_v1_4.state.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_marketdatafeed_aspen_v1_4.state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cixats_cixaspen_marketdatafeed_aspen_v1_4.state.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.state, range, value, display)

  return offset + length, value
end

-- Symbol
cixats_cixaspen_marketdatafeed_aspen_v1_4.symbol = {}

-- Size: Symbol
cixats_cixaspen_marketdatafeed_aspen_v1_4.symbol.size = 11

-- Display: Symbol
cixats_cixaspen_marketdatafeed_aspen_v1_4.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
cixats_cixaspen_marketdatafeed_aspen_v1_4.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_marketdatafeed_aspen_v1_4.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cixats_cixaspen_marketdatafeed_aspen_v1_4.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Id
cixats_cixaspen_marketdatafeed_aspen_v1_4.symbol_id = {}

-- Size: Symbol Id
cixats_cixaspen_marketdatafeed_aspen_v1_4.symbol_id.size = 2

-- Display: Symbol Id
cixats_cixaspen_marketdatafeed_aspen_v1_4.symbol_id.display = function(value)
  return "Symbol Id: "..value
end

-- Dissect: Symbol Id
cixats_cixaspen_marketdatafeed_aspen_v1_4.symbol_id.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_marketdatafeed_aspen_v1_4.symbol_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cixats_cixaspen_marketdatafeed_aspen_v1_4.symbol_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.symbol_id, range, value, display)

  return offset + length, value
end

-- Timestamp
cixats_cixaspen_marketdatafeed_aspen_v1_4.timestamp = {}

-- Size: Timestamp
cixats_cixaspen_marketdatafeed_aspen_v1_4.timestamp.size = 8

-- Dissect: Timestamp
cixats_cixaspen_marketdatafeed_aspen_v1_4.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_marketdatafeed_aspen_v1_4.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.timestamp
  if cixats_cixaspen_marketdatafeed_aspen_v1_4.absolute_time_base == 1 then field = omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.timestamp_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect CixAts CixAspen MarketDataFeed Aspen 1.4
-----------------------------------------------------------------------

-- Trade Correct Message
cixats_cixaspen_marketdatafeed_aspen_v1_4.trade_correct_message = {}

-- Size: Trade Correct Message
cixats_cixaspen_marketdatafeed_aspen_v1_4.trade_correct_message.size =
  cixats_cixaspen_marketdatafeed_aspen_v1_4.symbol_id.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.timestamp.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.reserved_8.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.reserved_1.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.symbol.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.execution_id.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.broker.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.contra_broker.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.original_execution_id.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.original_trade_price.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.original_trade_quantity.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.corrected_trade_price.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.corrected_trade_quantity.size

-- Display: Trade Correct Message
cixats_cixaspen_marketdatafeed_aspen_v1_4.trade_correct_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Correct Message
cixats_cixaspen_marketdatafeed_aspen_v1_4.trade_correct_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Id: Integer
  index, symbol_id = cixats_cixaspen_marketdatafeed_aspen_v1_4.symbol_id.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = cixats_cixaspen_marketdatafeed_aspen_v1_4.timestamp.dissect(buffer, index, packet, parent)

  -- Reserved 8: Integer
  index, reserved_8 = cixats_cixaspen_marketdatafeed_aspen_v1_4.reserved_8.dissect(buffer, index, packet, parent)

  -- Reserved 1: Alpha
  index, reserved_1 = cixats_cixaspen_marketdatafeed_aspen_v1_4.reserved_1.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = cixats_cixaspen_marketdatafeed_aspen_v1_4.symbol.dissect(buffer, index, packet, parent)

  -- Execution Id: Integer
  index, execution_id = cixats_cixaspen_marketdatafeed_aspen_v1_4.execution_id.dissect(buffer, index, packet, parent)

  -- Broker: Alpha
  index, broker = cixats_cixaspen_marketdatafeed_aspen_v1_4.broker.dissect(buffer, index, packet, parent)

  -- Contra Broker: Alpha
  index, contra_broker = cixats_cixaspen_marketdatafeed_aspen_v1_4.contra_broker.dissect(buffer, index, packet, parent)

  -- Original Execution Id: Integer
  index, original_execution_id = cixats_cixaspen_marketdatafeed_aspen_v1_4.original_execution_id.dissect(buffer, index, packet, parent)

  -- Original Trade Price: Integer
  index, original_trade_price = cixats_cixaspen_marketdatafeed_aspen_v1_4.original_trade_price.dissect(buffer, index, packet, parent)

  -- Original Trade Quantity: Integer
  index, original_trade_quantity = cixats_cixaspen_marketdatafeed_aspen_v1_4.original_trade_quantity.dissect(buffer, index, packet, parent)

  -- Corrected Trade Price: Integer
  index, corrected_trade_price = cixats_cixaspen_marketdatafeed_aspen_v1_4.corrected_trade_price.dissect(buffer, index, packet, parent)

  -- Corrected Trade Quantity: Integer
  index, corrected_trade_quantity = cixats_cixaspen_marketdatafeed_aspen_v1_4.corrected_trade_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Correct Message
cixats_cixaspen_marketdatafeed_aspen_v1_4.trade_correct_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.trade_correct_message, buffer(offset, 0))
    local index = cixats_cixaspen_marketdatafeed_aspen_v1_4.trade_correct_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cixats_cixaspen_marketdatafeed_aspen_v1_4.trade_correct_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cixats_cixaspen_marketdatafeed_aspen_v1_4.trade_correct_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancel Message
cixats_cixaspen_marketdatafeed_aspen_v1_4.trade_cancel_message = {}

-- Size: Trade Cancel Message
cixats_cixaspen_marketdatafeed_aspen_v1_4.trade_cancel_message.size =
  cixats_cixaspen_marketdatafeed_aspen_v1_4.symbol_id.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.timestamp.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.reserved_8.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.reserved_1.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.shares.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.symbol.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.price.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.execution_id.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.broker.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.contra_broker.size

-- Display: Trade Cancel Message
cixats_cixaspen_marketdatafeed_aspen_v1_4.trade_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Message
cixats_cixaspen_marketdatafeed_aspen_v1_4.trade_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Id: Integer
  index, symbol_id = cixats_cixaspen_marketdatafeed_aspen_v1_4.symbol_id.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = cixats_cixaspen_marketdatafeed_aspen_v1_4.timestamp.dissect(buffer, index, packet, parent)

  -- Reserved 8: Integer
  index, reserved_8 = cixats_cixaspen_marketdatafeed_aspen_v1_4.reserved_8.dissect(buffer, index, packet, parent)

  -- Reserved 1: Alpha
  index, reserved_1 = cixats_cixaspen_marketdatafeed_aspen_v1_4.reserved_1.dissect(buffer, index, packet, parent)

  -- Shares: Integer
  index, shares = cixats_cixaspen_marketdatafeed_aspen_v1_4.shares.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = cixats_cixaspen_marketdatafeed_aspen_v1_4.symbol.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = cixats_cixaspen_marketdatafeed_aspen_v1_4.price.dissect(buffer, index, packet, parent)

  -- Execution Id: Integer
  index, execution_id = cixats_cixaspen_marketdatafeed_aspen_v1_4.execution_id.dissect(buffer, index, packet, parent)

  -- Broker: Alpha
  index, broker = cixats_cixaspen_marketdatafeed_aspen_v1_4.broker.dissect(buffer, index, packet, parent)

  -- Contra Broker: Alpha
  index, contra_broker = cixats_cixaspen_marketdatafeed_aspen_v1_4.contra_broker.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Message
cixats_cixaspen_marketdatafeed_aspen_v1_4.trade_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.trade_cancel_message, buffer(offset, 0))
    local index = cixats_cixaspen_marketdatafeed_aspen_v1_4.trade_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cixats_cixaspen_marketdatafeed_aspen_v1_4.trade_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cixats_cixaspen_marketdatafeed_aspen_v1_4.trade_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message
cixats_cixaspen_marketdatafeed_aspen_v1_4.trade_message = {}

-- Size: Trade Message
cixats_cixaspen_marketdatafeed_aspen_v1_4.trade_message.size =
  cixats_cixaspen_marketdatafeed_aspen_v1_4.symbol_id.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.timestamp.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.reserved_8.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.side.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.shares.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.symbol.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.price.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.execution_id.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.broker.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.contra_broker.size

-- Display: Trade Message
cixats_cixaspen_marketdatafeed_aspen_v1_4.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
cixats_cixaspen_marketdatafeed_aspen_v1_4.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Id: Integer
  index, symbol_id = cixats_cixaspen_marketdatafeed_aspen_v1_4.symbol_id.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = cixats_cixaspen_marketdatafeed_aspen_v1_4.timestamp.dissect(buffer, index, packet, parent)

  -- Reserved 8: Integer
  index, reserved_8 = cixats_cixaspen_marketdatafeed_aspen_v1_4.reserved_8.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = cixats_cixaspen_marketdatafeed_aspen_v1_4.side.dissect(buffer, index, packet, parent)

  -- Shares: Integer
  index, shares = cixats_cixaspen_marketdatafeed_aspen_v1_4.shares.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = cixats_cixaspen_marketdatafeed_aspen_v1_4.symbol.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = cixats_cixaspen_marketdatafeed_aspen_v1_4.price.dissect(buffer, index, packet, parent)

  -- Execution Id: Integer
  index, execution_id = cixats_cixaspen_marketdatafeed_aspen_v1_4.execution_id.dissect(buffer, index, packet, parent)

  -- Broker: Alpha
  index, broker = cixats_cixaspen_marketdatafeed_aspen_v1_4.broker.dissect(buffer, index, packet, parent)

  -- Contra Broker: Alpha
  index, contra_broker = cixats_cixaspen_marketdatafeed_aspen_v1_4.contra_broker.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
cixats_cixaspen_marketdatafeed_aspen_v1_4.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.trade_message, buffer(offset, 0))
    local index = cixats_cixaspen_marketdatafeed_aspen_v1_4.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cixats_cixaspen_marketdatafeed_aspen_v1_4.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cixats_cixaspen_marketdatafeed_aspen_v1_4.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
cixats_cixaspen_marketdatafeed_aspen_v1_4.order_executed_message = {}

-- Size: Order Executed Message
cixats_cixaspen_marketdatafeed_aspen_v1_4.order_executed_message.size =
  cixats_cixaspen_marketdatafeed_aspen_v1_4.timestamp.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.order_id.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.quantity.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.execution_id.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.side.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.price.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.broker.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.contra_broker.size

-- Display: Order Executed Message
cixats_cixaspen_marketdatafeed_aspen_v1_4.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
cixats_cixaspen_marketdatafeed_aspen_v1_4.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = cixats_cixaspen_marketdatafeed_aspen_v1_4.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Integer
  index, order_id = cixats_cixaspen_marketdatafeed_aspen_v1_4.order_id.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = cixats_cixaspen_marketdatafeed_aspen_v1_4.quantity.dissect(buffer, index, packet, parent)

  -- Execution Id: Integer
  index, execution_id = cixats_cixaspen_marketdatafeed_aspen_v1_4.execution_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = cixats_cixaspen_marketdatafeed_aspen_v1_4.side.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = cixats_cixaspen_marketdatafeed_aspen_v1_4.price.dissect(buffer, index, packet, parent)

  -- Broker: Alpha
  index, broker = cixats_cixaspen_marketdatafeed_aspen_v1_4.broker.dissect(buffer, index, packet, parent)

  -- Contra Broker: Alpha
  index, contra_broker = cixats_cixaspen_marketdatafeed_aspen_v1_4.contra_broker.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
cixats_cixaspen_marketdatafeed_aspen_v1_4.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.order_executed_message, buffer(offset, 0))
    local index = cixats_cixaspen_marketdatafeed_aspen_v1_4.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cixats_cixaspen_marketdatafeed_aspen_v1_4.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cixats_cixaspen_marketdatafeed_aspen_v1_4.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel All Message
cixats_cixaspen_marketdatafeed_aspen_v1_4.order_cancel_all_message = {}

-- Size: Order Cancel All Message
cixats_cixaspen_marketdatafeed_aspen_v1_4.order_cancel_all_message.size =
  cixats_cixaspen_marketdatafeed_aspen_v1_4.timestamp.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.order_id.size

-- Display: Order Cancel All Message
cixats_cixaspen_marketdatafeed_aspen_v1_4.order_cancel_all_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel All Message
cixats_cixaspen_marketdatafeed_aspen_v1_4.order_cancel_all_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = cixats_cixaspen_marketdatafeed_aspen_v1_4.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Integer
  index, order_id = cixats_cixaspen_marketdatafeed_aspen_v1_4.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel All Message
cixats_cixaspen_marketdatafeed_aspen_v1_4.order_cancel_all_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.order_cancel_all_message, buffer(offset, 0))
    local index = cixats_cixaspen_marketdatafeed_aspen_v1_4.order_cancel_all_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cixats_cixaspen_marketdatafeed_aspen_v1_4.order_cancel_all_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cixats_cixaspen_marketdatafeed_aspen_v1_4.order_cancel_all_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Partial Cancel Message
cixats_cixaspen_marketdatafeed_aspen_v1_4.order_partial_cancel_message = {}

-- Size: Order Partial Cancel Message
cixats_cixaspen_marketdatafeed_aspen_v1_4.order_partial_cancel_message.size =
  cixats_cixaspen_marketdatafeed_aspen_v1_4.timestamp.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.order_id.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.quantity_canceled.size

-- Display: Order Partial Cancel Message
cixats_cixaspen_marketdatafeed_aspen_v1_4.order_partial_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Partial Cancel Message
cixats_cixaspen_marketdatafeed_aspen_v1_4.order_partial_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = cixats_cixaspen_marketdatafeed_aspen_v1_4.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Integer
  index, order_id = cixats_cixaspen_marketdatafeed_aspen_v1_4.order_id.dissect(buffer, index, packet, parent)

  -- Quantity Canceled: Integer
  index, quantity_canceled = cixats_cixaspen_marketdatafeed_aspen_v1_4.quantity_canceled.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Partial Cancel Message
cixats_cixaspen_marketdatafeed_aspen_v1_4.order_partial_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.order_partial_cancel_message, buffer(offset, 0))
    local index = cixats_cixaspen_marketdatafeed_aspen_v1_4.order_partial_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cixats_cixaspen_marketdatafeed_aspen_v1_4.order_partial_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cixats_cixaspen_marketdatafeed_aspen_v1_4.order_partial_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- New Order Add Message
cixats_cixaspen_marketdatafeed_aspen_v1_4.new_order_add_message = {}

-- Size: New Order Add Message
cixats_cixaspen_marketdatafeed_aspen_v1_4.new_order_add_message.size =
  cixats_cixaspen_marketdatafeed_aspen_v1_4.timestamp.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.symbol_id.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.order_id.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.side.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.quantity.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.symbol.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.price.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.broker.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.reserved_1.size

-- Display: New Order Add Message
cixats_cixaspen_marketdatafeed_aspen_v1_4.new_order_add_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Add Message
cixats_cixaspen_marketdatafeed_aspen_v1_4.new_order_add_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = cixats_cixaspen_marketdatafeed_aspen_v1_4.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Id: Integer
  index, symbol_id = cixats_cixaspen_marketdatafeed_aspen_v1_4.symbol_id.dissect(buffer, index, packet, parent)

  -- Order Id: Integer
  index, order_id = cixats_cixaspen_marketdatafeed_aspen_v1_4.order_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = cixats_cixaspen_marketdatafeed_aspen_v1_4.side.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = cixats_cixaspen_marketdatafeed_aspen_v1_4.quantity.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = cixats_cixaspen_marketdatafeed_aspen_v1_4.symbol.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = cixats_cixaspen_marketdatafeed_aspen_v1_4.price.dissect(buffer, index, packet, parent)

  -- Broker: Alpha
  index, broker = cixats_cixaspen_marketdatafeed_aspen_v1_4.broker.dissect(buffer, index, packet, parent)

  -- Reserved 1: Alpha
  index, reserved_1 = cixats_cixaspen_marketdatafeed_aspen_v1_4.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Add Message
cixats_cixaspen_marketdatafeed_aspen_v1_4.new_order_add_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.new_order_add_message, buffer(offset, 0))
    local index = cixats_cixaspen_marketdatafeed_aspen_v1_4.new_order_add_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cixats_cixaspen_marketdatafeed_aspen_v1_4.new_order_add_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cixats_cixaspen_marketdatafeed_aspen_v1_4.new_order_add_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol State Message
cixats_cixaspen_marketdatafeed_aspen_v1_4.symbol_state_message = {}

-- Size: Symbol State Message
cixats_cixaspen_marketdatafeed_aspen_v1_4.symbol_state_message.size =
  cixats_cixaspen_marketdatafeed_aspen_v1_4.timestamp.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.symbol_id.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.symbol.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.state.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.reserved_1.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.info.size

-- Display: Symbol State Message
cixats_cixaspen_marketdatafeed_aspen_v1_4.symbol_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol State Message
cixats_cixaspen_marketdatafeed_aspen_v1_4.symbol_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = cixats_cixaspen_marketdatafeed_aspen_v1_4.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Id: Integer
  index, symbol_id = cixats_cixaspen_marketdatafeed_aspen_v1_4.symbol_id.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = cixats_cixaspen_marketdatafeed_aspen_v1_4.symbol.dissect(buffer, index, packet, parent)

  -- State: Alpha
  index, state = cixats_cixaspen_marketdatafeed_aspen_v1_4.state.dissect(buffer, index, packet, parent)

  -- Reserved 1: Alpha
  index, reserved_1 = cixats_cixaspen_marketdatafeed_aspen_v1_4.reserved_1.dissect(buffer, index, packet, parent)

  -- Info: Alpha
  index, info = cixats_cixaspen_marketdatafeed_aspen_v1_4.info.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol State Message
cixats_cixaspen_marketdatafeed_aspen_v1_4.symbol_state_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.symbol_state_message, buffer(offset, 0))
    local index = cixats_cixaspen_marketdatafeed_aspen_v1_4.symbol_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cixats_cixaspen_marketdatafeed_aspen_v1_4.symbol_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cixats_cixaspen_marketdatafeed_aspen_v1_4.symbol_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Information Message
cixats_cixaspen_marketdatafeed_aspen_v1_4.symbol_information_message = {}

-- Size: Symbol Information Message
cixats_cixaspen_marketdatafeed_aspen_v1_4.symbol_information_message.size =
  cixats_cixaspen_marketdatafeed_aspen_v1_4.timestamp.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.symbol_id.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.symbol.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.listing_market.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.board_lot_size.size

-- Display: Symbol Information Message
cixats_cixaspen_marketdatafeed_aspen_v1_4.symbol_information_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Information Message
cixats_cixaspen_marketdatafeed_aspen_v1_4.symbol_information_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = cixats_cixaspen_marketdatafeed_aspen_v1_4.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Id: Integer
  index, symbol_id = cixats_cixaspen_marketdatafeed_aspen_v1_4.symbol_id.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = cixats_cixaspen_marketdatafeed_aspen_v1_4.symbol.dissect(buffer, index, packet, parent)

  -- Listing Market: Alpha
  index, listing_market = cixats_cixaspen_marketdatafeed_aspen_v1_4.listing_market.dissect(buffer, index, packet, parent)

  -- Board Lot Size: Integer
  index, board_lot_size = cixats_cixaspen_marketdatafeed_aspen_v1_4.board_lot_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Information Message
cixats_cixaspen_marketdatafeed_aspen_v1_4.symbol_information_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.symbol_information_message, buffer(offset, 0))
    local index = cixats_cixaspen_marketdatafeed_aspen_v1_4.symbol_information_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cixats_cixaspen_marketdatafeed_aspen_v1_4.symbol_information_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cixats_cixaspen_marketdatafeed_aspen_v1_4.symbol_information_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Event Message
cixats_cixaspen_marketdatafeed_aspen_v1_4.market_event_message = {}

-- Size: Market Event Message
cixats_cixaspen_marketdatafeed_aspen_v1_4.market_event_message.size =
  cixats_cixaspen_marketdatafeed_aspen_v1_4.reserved_2.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.timestamp.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.event.size

-- Display: Market Event Message
cixats_cixaspen_marketdatafeed_aspen_v1_4.market_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Event Message
cixats_cixaspen_marketdatafeed_aspen_v1_4.market_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: Alpha
  index, reserved_2 = cixats_cixaspen_marketdatafeed_aspen_v1_4.reserved_2.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = cixats_cixaspen_marketdatafeed_aspen_v1_4.timestamp.dissect(buffer, index, packet, parent)

  -- Event: Alpha
  index, event = cixats_cixaspen_marketdatafeed_aspen_v1_4.event.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Event Message
cixats_cixaspen_marketdatafeed_aspen_v1_4.market_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.market_event_message, buffer(offset, 0))
    local index = cixats_cixaspen_marketdatafeed_aspen_v1_4.market_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cixats_cixaspen_marketdatafeed_aspen_v1_4.market_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cixats_cixaspen_marketdatafeed_aspen_v1_4.market_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cixats_cixaspen_marketdatafeed_aspen_v1_4.payload = {}

-- Dissect: Payload
cixats_cixaspen_marketdatafeed_aspen_v1_4.payload.dispatch = {
  ["A"] = cixats_cixaspen_marketdatafeed_aspen_v1_4.market_event_message.dissect,
  ["B"] = cixats_cixaspen_marketdatafeed_aspen_v1_4.symbol_information_message.dissect,
  ["C"] = cixats_cixaspen_marketdatafeed_aspen_v1_4.symbol_state_message.dissect,
  ["D"] = cixats_cixaspen_marketdatafeed_aspen_v1_4.new_order_add_message.dissect,
  ["F"] = cixats_cixaspen_marketdatafeed_aspen_v1_4.order_partial_cancel_message.dissect,
  ["G"] = cixats_cixaspen_marketdatafeed_aspen_v1_4.order_cancel_all_message.dissect,
  ["J"] = cixats_cixaspen_marketdatafeed_aspen_v1_4.order_executed_message.dissect,
  ["K"] = cixats_cixaspen_marketdatafeed_aspen_v1_4.trade_message.dissect,
  ["L"] = cixats_cixaspen_marketdatafeed_aspen_v1_4.trade_cancel_message.dissect,
  ["M"] = cixats_cixaspen_marketdatafeed_aspen_v1_4.trade_correct_message.dissect,
}

cixats_cixaspen_marketdatafeed_aspen_v1_4.payload.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = cixats_cixaspen_marketdatafeed_aspen_v1_4.payload.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cixats_cixaspen_marketdatafeed_aspen_v1_4.message_header = {}

-- Size: Message Header
cixats_cixaspen_marketdatafeed_aspen_v1_4.message_header.size =
  cixats_cixaspen_marketdatafeed_aspen_v1_4.length.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.message_type.size

-- Display: Message Header
cixats_cixaspen_marketdatafeed_aspen_v1_4.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cixats_cixaspen_marketdatafeed_aspen_v1_4.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cixats_cixaspen_marketdatafeed_aspen_v1_4.length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 10 values
  index, message_type = cixats_cixaspen_marketdatafeed_aspen_v1_4.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cixats_cixaspen_marketdatafeed_aspen_v1_4.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.message_header, buffer(offset, 0))
    local index = cixats_cixaspen_marketdatafeed_aspen_v1_4.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cixats_cixaspen_marketdatafeed_aspen_v1_4.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cixats_cixaspen_marketdatafeed_aspen_v1_4.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cixats_cixaspen_marketdatafeed_aspen_v1_4.message = {}

-- Display: Message
cixats_cixaspen_marketdatafeed_aspen_v1_4.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cixats_cixaspen_marketdatafeed_aspen_v1_4.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cixats_cixaspen_marketdatafeed_aspen_v1_4.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 10 branches
  index = cixats_cixaspen_marketdatafeed_aspen_v1_4.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cixats_cixaspen_marketdatafeed_aspen_v1_4.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.message, buffer(offset, 0))
    local current = cixats_cixaspen_marketdatafeed_aspen_v1_4.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cixats_cixaspen_marketdatafeed_aspen_v1_4.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cixats_cixaspen_marketdatafeed_aspen_v1_4.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Packet Header
cixats_cixaspen_marketdatafeed_aspen_v1_4.packet_header = {}

-- Size: Packet Header
cixats_cixaspen_marketdatafeed_aspen_v1_4.packet_header.size =
  cixats_cixaspen_marketdatafeed_aspen_v1_4.market_day_identifier.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.feed_identifier.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.sequence.size + 
  cixats_cixaspen_marketdatafeed_aspen_v1_4.count.size

-- Display: Packet Header
cixats_cixaspen_marketdatafeed_aspen_v1_4.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cixats_cixaspen_marketdatafeed_aspen_v1_4.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Day Identifier: 9 Byte Ascii String
  index, market_day_identifier = cixats_cixaspen_marketdatafeed_aspen_v1_4.market_day_identifier.dissect(buffer, index, packet, parent)

  -- Feed Identifier: 1 Byte Ascii String Enum with 6 values
  index, feed_identifier = cixats_cixaspen_marketdatafeed_aspen_v1_4.feed_identifier.dissect(buffer, index, packet, parent)

  -- Sequence: 8 Byte Unsigned Fixed Width Integer
  index, sequence = cixats_cixaspen_marketdatafeed_aspen_v1_4.sequence.dissect(buffer, index, packet, parent)

  -- Count: 2 Byte Unsigned Fixed Width Integer
  index, count = cixats_cixaspen_marketdatafeed_aspen_v1_4.count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cixats_cixaspen_marketdatafeed_aspen_v1_4.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.fields.packet_header, buffer(offset, 0))
    local index = cixats_cixaspen_marketdatafeed_aspen_v1_4.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cixats_cixaspen_marketdatafeed_aspen_v1_4.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cixats_cixaspen_marketdatafeed_aspen_v1_4.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cixats_cixaspen_marketdatafeed_aspen_v1_4.packet = {}

-- Verify required size of Udp packet
cixats_cixaspen_marketdatafeed_aspen_v1_4.packet.requiredsize = function(buffer)
  return buffer:len() >= cixats_cixaspen_marketdatafeed_aspen_v1_4.packet_header.size
end

-- Dissect Packet
cixats_cixaspen_marketdatafeed_aspen_v1_4.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cixats_cixaspen_marketdatafeed_aspen_v1_4.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Length
    local length = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    local size_of_message = length + 2

    -- Message: Struct of 2 fields
    index, message = cixats_cixaspen_marketdatafeed_aspen_v1_4.message.dissect(buffer, index, packet, parent, size_of_message, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.init()
end

-- Dissector for CixAts CixAspen MarketDataFeed Aspen 1.4
function omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.name

  -- Dissect protocol
  local protocol = parent:add(omi_cixats_cixaspen_marketdatafeed_aspen_v1_4, buffer(), omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.description, "("..buffer:len().." Bytes)")
  return cixats_cixaspen_marketdatafeed_aspen_v1_4.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
cixats_cixaspen_marketdatafeed_aspen_v1_4.packet.fingerprint = function(buffer)
  if buffer:len() < 23 then
    return false
  end

  local message_type = buffer(22, 1):string()

  -- Market Event Message
  if message_type == "A" then
    return true
  end

  -- Symbol Information Message
  if message_type == "B" then
    return true
  end

  -- Symbol State Message
  if message_type == "C" then
    return true
  end

  -- New Order Add Message
  if message_type == "D" then
    return true
  end

  -- Order Partial Cancel Message
  if message_type == "F" then
    return true
  end

  -- Order Cancel All Message
  if message_type == "G" then
    return true
  end

  -- Order Executed Message
  if message_type == "J" then
    return true
  end

  -- Trade Message
  if message_type == "K" then
    return true
  end

  -- Trade Cancel Message
  if message_type == "L" then
    return true
  end

  -- Trade Correct Message
  if message_type == "M" then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for CixAts CixAspen MarketDataFeed Aspen 1.4 (Udp)
local function omi_cixats_cixaspen_marketdatafeed_aspen_v1_4_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cixats_cixaspen_marketdatafeed_aspen_v1_4.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this udp packet message dispatch
  if not cixats_cixaspen_marketdatafeed_aspen_v1_4.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cixats_cixaspen_marketdatafeed_aspen_v1_4
  omi_cixats_cixaspen_marketdatafeed_aspen_v1_4.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for CixAts CixAspen MarketDataFeed Aspen 1.4
omi_cixats_cixaspen_marketdatafeed_aspen_v1_4:register_heuristic("udp", omi_cixats_cixaspen_marketdatafeed_aspen_v1_4_udp_heuristic)

-- Register CixAts CixAspen MarketDataFeed Aspen 1.4 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_cixats_cixaspen_marketdatafeed_aspen_v1_4)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: CIX Trading Inc.
--   Version: 1.4
--   Date: Thursday, April 9, 2026
--   Specification: Market Data Feed Specification-1.4.pdf
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
