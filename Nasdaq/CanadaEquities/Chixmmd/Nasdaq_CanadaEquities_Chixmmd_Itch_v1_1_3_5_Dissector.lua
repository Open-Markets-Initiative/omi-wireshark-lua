-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq CanadaEquities Chixmmd Itch 1.1.3.5 Protocol
local omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5 = Proto("Omi.Nasdaq.CanadaEquities.Chixmmd.Itch.v1.1.3.5", "Nasdaq CanadaEquities Chixmmd Itch 1.1.3.5")

-- Protocol table
local nasdaq_canadaequities_chixmmd_itch_v1_1_3_5 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq CanadaEquities Chixmmd Itch 1.1.3.5 Fields
omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.board_lot_size = ProtoField.new("Board Lot Size", "nasdaq.canadaequities.chixmmd.itch.v1.1.3.5.boardlotsize", ftypes.STRING)
omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.broker = ProtoField.new("Broker", "nasdaq.canadaequities.chixmmd.itch.v1.1.3.5.broker", ftypes.STRING)
omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.buy_sell_indicator = ProtoField.new("Buy Sell Indicator", "nasdaq.canadaequities.chixmmd.itch.v1.1.3.5.buysellindicator", ftypes.STRING)
omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.canceled_shares = ProtoField.new("Canceled Shares", "nasdaq.canadaequities.chixmmd.itch.v1.1.3.5.canceledshares", ftypes.STRING)
omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.contra_broker = ProtoField.new("Contra Broker", "nasdaq.canadaequities.chixmmd.itch.v1.1.3.5.contrabroker", ftypes.STRING)
omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.contra_order_reference = ProtoField.new("Contra Order Reference", "nasdaq.canadaequities.chixmmd.itch.v1.1.3.5.contraorderreference", ftypes.STRING)
omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.cross_type = ProtoField.new("Cross Type", "nasdaq.canadaequities.chixmmd.itch.v1.1.3.5.crosstype", ftypes.STRING)
omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.currency = ProtoField.new("Currency", "nasdaq.canadaequities.chixmmd.itch.v1.1.3.5.currency", ftypes.STRING)
omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.event_code = ProtoField.new("Event Code", "nasdaq.canadaequities.chixmmd.itch.v1.1.3.5.eventcode", ftypes.STRING)
omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.executed_shares = ProtoField.new("Executed Shares", "nasdaq.canadaequities.chixmmd.itch.v1.1.3.5.executedshares", ftypes.STRING)
omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.gef_eligible = ProtoField.new("Gef Eligible", "nasdaq.canadaequities.chixmmd.itch.v1.1.3.5.gefeligible", ftypes.STRING)
omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.length = ProtoField.new("Length", "nasdaq.canadaequities.chixmmd.itch.v1.1.3.5.length", ftypes.UINT16)
omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.listing_market = ProtoField.new("Listing Market", "nasdaq.canadaequities.chixmmd.itch.v1.1.3.5.listingmarket", ftypes.STRING)
omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.long_canceled_shares = ProtoField.new("Long Canceled Shares", "nasdaq.canadaequities.chixmmd.itch.v1.1.3.5.longcanceledshares", ftypes.STRING)
omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.long_executed_shares = ProtoField.new("Long Executed Shares", "nasdaq.canadaequities.chixmmd.itch.v1.1.3.5.longexecutedshares", ftypes.STRING)
omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.long_price = ProtoField.new("Long Price", "nasdaq.canadaequities.chixmmd.itch.v1.1.3.5.longprice", ftypes.DOUBLE)
omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.long_shares = ProtoField.new("Long Shares", "nasdaq.canadaequities.chixmmd.itch.v1.1.3.5.longshares", ftypes.STRING)
omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.message_count = ProtoField.new("Message Count", "nasdaq.canadaequities.chixmmd.itch.v1.1.3.5.messagecount", ftypes.UINT16)
omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.message_type = ProtoField.new("Message Type", "nasdaq.canadaequities.chixmmd.itch.v1.1.3.5.messagetype", ftypes.STRING)
omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.order_reference = ProtoField.new("Order Reference", "nasdaq.canadaequities.chixmmd.itch.v1.1.3.5.orderreference", ftypes.STRING)
omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.price = ProtoField.new("Price", "nasdaq.canadaequities.chixmmd.itch.v1.1.3.5.price", ftypes.DOUBLE)
omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.reserved_1 = ProtoField.new("Reserved 1", "nasdaq.canadaequities.chixmmd.itch.v1.1.3.5.reserved1", ftypes.STRING)
omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.sequence = ProtoField.new("Sequence", "nasdaq.canadaequities.chixmmd.itch.v1.1.3.5.sequence", ftypes.UINT32)
omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.session = ProtoField.new("Session", "nasdaq.canadaequities.chixmmd.itch.v1.1.3.5.session", ftypes.STRING)
omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.settlement_terms = ProtoField.new("Settlement Terms", "nasdaq.canadaequities.chixmmd.itch.v1.1.3.5.settlementterms", ftypes.STRING)
omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.shares = ProtoField.new("Shares", "nasdaq.canadaequities.chixmmd.itch.v1.1.3.5.shares", ftypes.STRING)
omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.stock = ProtoField.new("Stock", "nasdaq.canadaequities.chixmmd.itch.v1.1.3.5.stock", ftypes.STRING)
omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.canadaequities.chixmmd.itch.v1.1.3.5.timestamp", ftypes.STRING)
omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.trade_attribute = ProtoField.new("Trade Attribute", "nasdaq.canadaequities.chixmmd.itch.v1.1.3.5.tradeattribute", ftypes.STRING)
omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.trade_reference = ProtoField.new("Trade Reference", "nasdaq.canadaequities.chixmmd.itch.v1.1.3.5.tradereference", ftypes.STRING)
omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.trading_state = ProtoField.new("Trading State", "nasdaq.canadaequities.chixmmd.itch.v1.1.3.5.tradingstate", ftypes.STRING)

-- Nasdaq CanadaEquities Chixmmd Itch 1.1.3.5 Framing
omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.message = ProtoField.new("Message", "nasdaq.canadaequities.chixmmd.itch.v1.1.3.5.message", ftypes.STRING)
omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.message_header = ProtoField.new("Message Header", "nasdaq.canadaequities.chixmmd.itch.v1.1.3.5.messageheader", ftypes.STRING)
omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.packet = ProtoField.new("Packet", "nasdaq.canadaequities.chixmmd.itch.v1.1.3.5.packet", ftypes.STRING)
omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.canadaequities.chixmmd.itch.v1.1.3.5.packetheader", ftypes.STRING)

-- Nasdaq CanadaEquities Chixmmd 1.1.3.5 Application Messages
omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.add_order_message = ProtoField.new("Add Order Message", "nasdaq.canadaequities.chixmmd.itch.v1.1.3.5.addordermessage", ftypes.STRING)
omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.broken_trade_message = ProtoField.new("Broken Trade Message", "nasdaq.canadaequities.chixmmd.itch.v1.1.3.5.brokentrademessage", ftypes.STRING)
omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.long_form_add_order_message = ProtoField.new("Long Form Add Order Message", "nasdaq.canadaequities.chixmmd.itch.v1.1.3.5.longformaddordermessage", ftypes.STRING)
omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.long_form_order_cancel_message = ProtoField.new("Long Form Order Cancel Message", "nasdaq.canadaequities.chixmmd.itch.v1.1.3.5.longformordercancelmessage", ftypes.STRING)
omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.long_form_order_execution_message = ProtoField.new("Long Form Order Execution Message", "nasdaq.canadaequities.chixmmd.itch.v1.1.3.5.longformorderexecutionmessage", ftypes.STRING)
omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.long_form_trade_message = ProtoField.new("Long Form Trade Message", "nasdaq.canadaequities.chixmmd.itch.v1.1.3.5.longformtrademessage", ftypes.STRING)
omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.order_cancel_message = ProtoField.new("Order Cancel Message", "nasdaq.canadaequities.chixmmd.itch.v1.1.3.5.ordercancelmessage", ftypes.STRING)
omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.order_execution_message = ProtoField.new("Order Execution Message", "nasdaq.canadaequities.chixmmd.itch.v1.1.3.5.orderexecutionmessage", ftypes.STRING)
omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.stock_status_message = ProtoField.new("Stock Status Message", "nasdaq.canadaequities.chixmmd.itch.v1.1.3.5.stockstatusmessage", ftypes.STRING)
omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.canadaequities.chixmmd.itch.v1.1.3.5.systemeventmessage", ftypes.STRING)
omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.trade_message = ProtoField.new("Trade Message", "nasdaq.canadaequities.chixmmd.itch.v1.1.3.5.trademessage", ftypes.STRING)

-- Nasdaq CanadaEquities Chixmmd 1.1.3.5 Session Messages
omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.heartbeat = ProtoField.new("Heartbeat", "nasdaq.canadaequities.chixmmd.itch.v1.1.3.5.heartbeat", ftypes.STRING)

-- Nasdaq CanadaEquities Chixmmd Itch 1.1.3.5 Generated Fields
omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.message_index = ProtoField.new("Message Index", "nasdaq.canadaequities.chixmmd.itch.v1.1.3.5.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Nasdaq CanadaEquities Chixmmd Itch 1.1.3.5 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.timestamp_format = 2

-- Hours behind UTC (EST) for midnight calculation
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.utc_offset_hours = 5


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq CanadaEquities Chixmmd Itch 1.1.3.5 Element Dissection Options
show.application_messages = true
show.session_messages = true
show.structs = true
show.headers = true
show.indexes = true

-- Register Nasdaq CanadaEquities Chixmmd Itch 1.1.3.5 Show Options
omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Timestamp display format", timestamp_format_enum, false)
omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 5, "Hours behind UTC (EST) for midnight calculation")

-- Handle changed preferences
function omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.prefs.show_application_messages
  end
  if show.headers ~= omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.prefs.show_headers then
    show.headers = omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.prefs.show_headers
  end
  if show.session_messages ~= omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.prefs.show_session_messages then
    show.session_messages = omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.prefs.show_session_messages
  end
  if show.structs ~= omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.prefs.show_structs then
    show.structs = omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.prefs.show_structs
  end
  if show.indexes ~= omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.prefs.show_indexes then
    show.indexes = omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.prefs.show_indexes
  end
  if nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.timestamp_format ~= omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.prefs.timestamp_format then
    nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.timestamp_format = omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.prefs.timestamp_format
  end
  if nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.utc_offset_hours ~= omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.prefs.utc_offset_hours then
    nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.utc_offset_hours = omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.prefs.utc_offset_hours
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
-- Nasdaq CanadaEquities Chixmmd Itch 1.1.3.5 Fields
-----------------------------------------------------------------------

-- Board Lot Size
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.board_lot_size = {}

-- Size: Board Lot Size
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.board_lot_size.size = 4

-- Display: Board Lot Size
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.board_lot_size.display = function(value)
  return "Board Lot Size: "..value
end

-- Dissect: Board Lot Size
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.board_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.board_lot_size.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.board_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.board_lot_size, range, value, display)

  return offset + length, value
end

-- Broker
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.broker = {}

-- Size: Broker
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.broker.size = 3

-- Display: Broker
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.broker.display = function(value)
  return "Broker: "..value
end

-- Dissect: Broker
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.broker.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.broker.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.broker.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.broker, range, value, display)

  return offset + length, value
end

-- Buy Sell Indicator
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.buy_sell_indicator = {}

-- Size: Buy Sell Indicator
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.buy_sell_indicator.size = 1

-- Display: Buy Sell Indicator
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.buy_sell_indicator.display = function(value)
  if value == "B" then
    return "Buy Sell Indicator: Buy (B)"
  end
  if value == "S" then
    return "Buy Sell Indicator: Sell (S)"
  end

  return "Buy Sell Indicator: Unknown("..value..")"
end

-- Dissect: Buy Sell Indicator
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.buy_sell_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.buy_sell_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.buy_sell_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.buy_sell_indicator, range, value, display)

  return offset + length, value
end

-- Canceled Shares
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.canceled_shares = {}

-- Size: Canceled Shares
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.canceled_shares.size = 6

-- Display: Canceled Shares
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.canceled_shares.display = function(value)
  return "Canceled Shares: "..value
end

-- Dissect: Canceled Shares
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.canceled_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.canceled_shares.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.canceled_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.canceled_shares, range, value, display)

  return offset + length, value
end

-- Contra Broker
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.contra_broker = {}

-- Size: Contra Broker
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.contra_broker.size = 3

-- Display: Contra Broker
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.contra_broker.display = function(value)
  return "Contra Broker: "..value
end

-- Dissect: Contra Broker
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.contra_broker.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.contra_broker.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.contra_broker.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.contra_broker, range, value, display)

  return offset + length, value
end

-- Contra Order Reference
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.contra_order_reference = {}

-- Size: Contra Order Reference
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.contra_order_reference.size = 9

-- Display: Contra Order Reference
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.contra_order_reference.display = function(value)
  return "Contra Order Reference: "..value
end

-- Dissect: Contra Order Reference
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.contra_order_reference.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.contra_order_reference.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.contra_order_reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.contra_order_reference, range, value, display)

  return offset + length, value
end

-- Cross Type
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.cross_type = {}

-- Size: Cross Type
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.cross_type.size = 1

-- Display: Cross Type
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.cross_type.display = function(value)
  if value == "I" then
    return "Cross Type: Internal (I)"
  end
  if value == "B" then
    return "Cross Type: Basis (B)"
  end
  if value == "C" then
    return "Cross Type: Contingent (C)"
  end
  if value == "V" then
    return "Cross Type: Vwap (V)"
  end
  if value == "X" then
    return "Cross Type: Intentional Cross (X)"
  end
  if value == "D" then
    return "Cross Type: Derivative Related (D)"
  end

  return "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.cross_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Currency
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.currency = {}

-- Size: Currency
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.currency.size = 3

-- Display: Currency
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.currency.display = function(value)
  if value == "CAD" then
    return "Currency: Canadian Dollars (CAD)"
  end
  if value == "USD" then
    return "Currency: Us Dollars (USD)"
  end

  return "Currency: Unknown("..value..")"
end

-- Dissect: Currency
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.currency.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.currency, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.event_code = {}

-- Size: Event Code
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.event_code.size = 1

-- Display: Event Code
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.event_code.display = function(value)
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
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.event_code, range, value, display)

  return offset + length, value
end

-- Executed Shares
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.executed_shares = {}

-- Size: Executed Shares
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.executed_shares.size = 6

-- Display: Executed Shares
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.executed_shares.display = function(value)
  return "Executed Shares: "..value
end

-- Dissect: Executed Shares
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.executed_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.executed_shares.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.executed_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.executed_shares, range, value, display)

  return offset + length, value
end

-- Gef Eligible
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.gef_eligible = {}

-- Size: Gef Eligible
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.gef_eligible.size = 1

-- Display: Gef Eligible
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.gef_eligible.display = function(value)
  if value == "Y" then
    return "Gef Eligible: Gef Eligible (Y)"
  end
  if value == "N" then
    return "Gef Eligible: Not Gef Eligible (N)"
  end

  return "Gef Eligible: Unknown("..value..")"
end

-- Dissect: Gef Eligible
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.gef_eligible.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.gef_eligible.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.gef_eligible.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.gef_eligible, range, value, display)

  return offset + length, value
end

-- Length
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.length = {}

-- Size: Length
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.length.size = 2

-- Display: Length
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.length, range, value, display)

  return offset + length, value
end

-- Listing Market
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.listing_market = {}

-- Size: Listing Market
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.listing_market.size = 1

-- Display: Listing Market
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.listing_market.display = function(value)
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
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.listing_market.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.listing_market.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.listing_market.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.listing_market, range, value, display)

  return offset + length, value
end

-- Long Canceled Shares
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_canceled_shares = {}

-- Size: Long Canceled Shares
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_canceled_shares.size = 10

-- Display: Long Canceled Shares
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_canceled_shares.display = function(value)
  return "Long Canceled Shares: "..value
end

-- Dissect: Long Canceled Shares
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_canceled_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_canceled_shares.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_canceled_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.long_canceled_shares, range, value, display)

  return offset + length, value
end

-- Long Executed Shares
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_executed_shares = {}

-- Size: Long Executed Shares
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_executed_shares.size = 10

-- Display: Long Executed Shares
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_executed_shares.display = function(value)
  return "Long Executed Shares: "..value
end

-- Dissect: Long Executed Shares
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_executed_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_executed_shares.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_executed_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.long_executed_shares, range, value, display)

  return offset + length, value
end

-- Long Price
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_price = {}

-- Size: Long Price
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_price.size = 19

-- Display: Long Price
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_price.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_price.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Long Price: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 7 then
    digits = string.rep("0", 7 - #digits + 1)..digits
  end

  return "Long Price: "..sign..digits:sub(1, #digits - 7)..".".. digits:sub(-7)
end

-- Dissect: Long Price
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.long_price, range, value, display)

  return offset + length, value
end

-- Long Shares
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_shares = {}

-- Size: Long Shares
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_shares.size = 10

-- Display: Long Shares
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_shares.display = function(value)
  return "Long Shares: "..value
end

-- Dissect: Long Shares
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_shares.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.long_shares, range, value, display)

  return offset + length, value
end

-- Message Count
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.message_count = {}

-- Size: Message Count
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.message_count.size = 2

-- Display: Message Count
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Type
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.message_type = {}

-- Size: Message Type
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.message_type.size = 1

-- Display: Message Type
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.message_type.display = function(value)
  if value == "A" then
    return "Message Type: Add Order Message (A)"
  end
  if value == "a" then
    return "Message Type: Long Form Add Order Message (a)"
  end
  if value == "E" then
    return "Message Type: Order Execution Message (E)"
  end
  if value == "e" then
    return "Message Type: Long Form Order Execution Message (e)"
  end
  if value == "X" then
    return "Message Type: Order Cancel Message (X)"
  end
  if value == "x" then
    return "Message Type: Long Form Order Cancel Message (x)"
  end
  if value == "P" then
    return "Message Type: Trade Message (P)"
  end
  if value == "p" then
    return "Message Type: Long Form Trade Message (p)"
  end
  if value == "B" then
    return "Message Type: Broken Trade Message (B)"
  end
  if value == "S" then
    return "Message Type: System Event Message (S)"
  end
  if value == "H" then
    return "Message Type: Stock Status Message (H)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.message_type, range, value, display)

  return offset + length, value
end

-- Order Reference
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.order_reference = {}

-- Size: Order Reference
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.order_reference.size = 9

-- Display: Order Reference
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.order_reference.display = function(value)
  return "Order Reference: "..value
end

-- Dissect: Order Reference
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.order_reference.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.order_reference.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.order_reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.order_reference, range, value, display)

  return offset + length, value
end

-- Price
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.price = {}

-- Size: Price
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.price.size = 10

-- Display: Price
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.price.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.price.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Price: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 4 then
    digits = string.rep("0", 4 - #digits + 1)..digits
  end

  return "Price: "..sign..digits:sub(1, #digits - 4)..".".. digits:sub(-4)
end

-- Dissect: Price
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.price, range, value, display)

  return offset + length, value
end

-- Reserved 1
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.reserved_1 = {}

-- Size: Reserved 1
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.reserved_1.size = 1

-- Display: Reserved 1
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.reserved_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Sequence
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.sequence = {}

-- Size: Sequence
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.sequence.size = 4

-- Display: Sequence
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.sequence.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.sequence.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.sequence, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.session = {}

-- Size: Session
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.session.size = 10

-- Display: Session
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.session, range, value, display)

  return offset + length, value
end

-- Settlement Terms
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.settlement_terms = {}

-- Size: Settlement Terms
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.settlement_terms.size = 1

-- Display: Settlement Terms
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.settlement_terms.display = function(value)
  if value == "T" then
    return "Settlement Terms: Cash Today (T)"
  end
  if value == "D" then
    return "Settlement Terms: Delayed Delivery (D)"
  end

  return "Settlement Terms: Unknown("..value..")"
end

-- Dissect: Settlement Terms
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.settlement_terms.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.settlement_terms.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.settlement_terms.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.settlement_terms, range, value, display)

  return offset + length, value
end

-- Shares
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.shares = {}

-- Size: Shares
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.shares.size = 6

-- Display: Shares
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.shares.display = function(value)
  return "Shares: "..value
end

-- Dissect: Shares
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.shares.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.shares, range, value, display)

  return offset + length, value
end

-- Stock
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.stock = {}

-- Size: Stock
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.stock.size = 10

-- Display: Stock
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.stock.display = function(value)
  return "Stock: "..value
end

-- Dissect: Stock
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.stock.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.stock.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.stock.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.stock, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.timestamp = {}

-- Size: Timestamp
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.timestamp.size = 8

-- Display: Timestamp
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.timestamp.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode (or unparsable ASCII fell back to a non-number)
  if type(value) ~= "number" then
    return "Timestamp: "..tostring(value)
  end

  if nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.timestamp_format == 0 then
    return "Timestamp: "..value
  end

  -- Parse milliseconds since midnight
  local seconds = math.floor(value / 1000)
  local milliseconds = value % 1000

  -- Full datetime mode (calculate from capture date + UTC offset)
  if nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Timestamp: "..os.date("!%Y-%m-%d %H:%M:%S.", full_seconds + utc_offset_seconds)..string.format("%03d", milliseconds)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("!%H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Timestamp
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.timestamp.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trade Attribute
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.trade_attribute = {}

-- Size: Trade Attribute
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.trade_attribute.size = 1

-- Display: Trade Attribute
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.trade_attribute.display = function(value)
  if value == "B" then
    return "Trade Attribute: Bypass (B)"
  end
  if value == "C" then
    return "Trade Attribute: Market On Close Or Cxd Conditional (C)"
  end
  if value == "L" then
    return "Trade Attribute: Melo (L)"
  end
  if value == "P" then
    return "Trade Attribute: Cxd Pure Stream (P)"
  end

  return "Trade Attribute: Unknown("..value..")"
end

-- Dissect: Trade Attribute
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.trade_attribute.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.trade_attribute.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.trade_attribute.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.trade_attribute, range, value, display)

  return offset + length, value
end

-- Trade Reference
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.trade_reference = {}

-- Size: Trade Reference
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.trade_reference.size = 9

-- Display: Trade Reference
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.trade_reference.display = function(value)
  return "Trade Reference: "..value
end

-- Dissect: Trade Reference
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.trade_reference.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.trade_reference.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.trade_reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.trade_reference, range, value, display)

  return offset + length, value
end

-- Trading State
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.trading_state = {}

-- Size: Trading State
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.trading_state.size = 1

-- Display: Trading State
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.trading_state.display = function(value)
  if value == "H" then
    return "Trading State: Halted (H)"
  end
  if value == "T" then
    return "Trading State: Trading (T)"
  end

  return "Trading State: Unknown("..value..")"
end

-- Dissect: Trading State
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.trading_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.trading_state, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq CanadaEquities Chixmmd Itch 1.1.3.5
-----------------------------------------------------------------------

-- Stock Status Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.stock_status_message = {}

-- Size: Stock Status Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.stock_status_message.size =
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.stock.size + 
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.trading_state.size + 
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.reserved_1.size + 
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.listing_market.size + 
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.board_lot_size.size + 
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.currency.size + 
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.gef_eligible.size

-- Display: Stock Status Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.stock_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Status Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.stock_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock: Alphanumeric
  index, stock = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.stock.dissect(buffer, index, packet, parent)

  -- Trading State: Alphanumeric
  index, trading_state = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.trading_state.dissect(buffer, index, packet, parent)

  -- Reserved 1: Alphanumeric
  index, reserved_1 = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.reserved_1.dissect(buffer, index, packet, parent)

  -- Listing Market: Alphanumeric
  index, listing_market = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.listing_market.dissect(buffer, index, packet, parent)

  -- Board Lot Size: Numeric
  index, board_lot_size = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.board_lot_size.dissect(buffer, index, packet, parent)

  -- Currency: Alphanumeric
  index, currency = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.currency.dissect(buffer, index, packet, parent)

  -- Gef Eligible: Alphanumeric
  index, gef_eligible = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.gef_eligible.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Status Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.stock_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.stock_status_message, buffer(offset, 0))
    local index = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.stock_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.stock_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.stock_status_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.system_event_message = {}

-- Size: System Event Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.system_event_message.size =
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.event_code.size

-- Display: System Event Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Event Code: Alphanumeric
  index, event_code = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Broken Trade Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.broken_trade_message = {}

-- Size: Broken Trade Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.broken_trade_message.size =
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.trade_reference.size

-- Display: Broken Trade Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.broken_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broken Trade Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.broken_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trade Reference: Numeric
  index, trade_reference = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.trade_reference.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Broken Trade Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.broken_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.broken_trade_message, buffer(offset, 0))
    local index = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.broken_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.broken_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.broken_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Long Form Trade Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_form_trade_message = {}

-- Size: Long Form Trade Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_form_trade_message.size =
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.order_reference.size + 
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.buy_sell_indicator.size + 
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_shares.size + 
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.stock.size + 
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_price.size + 
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.trade_reference.size + 
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.contra_order_reference.size + 
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.broker.size + 
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.contra_broker.size + 
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.trade_attribute.size + 
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.cross_type.size + 
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.settlement_terms.size

-- Display: Long Form Trade Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_form_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Form Trade Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_form_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Reference: Numeric
  index, order_reference = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.order_reference.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: Alphanumeric
  index, buy_sell_indicator = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Long Shares: Numeric
  index, long_shares = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_shares.dissect(buffer, index, packet, parent)

  -- Stock: Alphanumeric
  index, stock = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.stock.dissect(buffer, index, packet, parent)

  -- Long Price: Price
  index, long_price = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_price.dissect(buffer, index, packet, parent)

  -- Trade Reference: Numeric
  index, trade_reference = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.trade_reference.dissect(buffer, index, packet, parent)

  -- Contra Order Reference: Numeric
  index, contra_order_reference = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.contra_order_reference.dissect(buffer, index, packet, parent)

  -- Broker: Numeric
  index, broker = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.broker.dissect(buffer, index, packet, parent)

  -- Contra Broker: Numeric
  index, contra_broker = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.contra_broker.dissect(buffer, index, packet, parent)

  -- Trade Attribute: Alphanumeric
  index, trade_attribute = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.trade_attribute.dissect(buffer, index, packet, parent)

  -- Cross Type: Alphanumeric
  index, cross_type = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.cross_type.dissect(buffer, index, packet, parent)

  -- Settlement Terms: Alphanumeric
  index, settlement_terms = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.settlement_terms.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Form Trade Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_form_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.long_form_trade_message, buffer(offset, 0))
    local index = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_form_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_form_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_form_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.trade_message = {}

-- Size: Trade Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.trade_message.size =
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.order_reference.size + 
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.buy_sell_indicator.size + 
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.shares.size + 
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.stock.size + 
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.price.size + 
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.trade_reference.size + 
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.contra_order_reference.size + 
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.broker.size + 
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.contra_broker.size + 
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.trade_attribute.size + 
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.cross_type.size + 
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.settlement_terms.size

-- Display: Trade Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Reference: Numeric
  index, order_reference = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.order_reference.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: Alphanumeric
  index, buy_sell_indicator = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Shares: Numeric
  index, shares = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.shares.dissect(buffer, index, packet, parent)

  -- Stock: Alphanumeric
  index, stock = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.stock.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.price.dissect(buffer, index, packet, parent)

  -- Trade Reference: Numeric
  index, trade_reference = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.trade_reference.dissect(buffer, index, packet, parent)

  -- Contra Order Reference: Numeric
  index, contra_order_reference = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.contra_order_reference.dissect(buffer, index, packet, parent)

  -- Broker: Numeric
  index, broker = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.broker.dissect(buffer, index, packet, parent)

  -- Contra Broker: Numeric
  index, contra_broker = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.contra_broker.dissect(buffer, index, packet, parent)

  -- Trade Attribute: Alphanumeric
  index, trade_attribute = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.trade_attribute.dissect(buffer, index, packet, parent)

  -- Cross Type: Alphanumeric
  index, cross_type = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.cross_type.dissect(buffer, index, packet, parent)

  -- Settlement Terms: Alphanumeric
  index, settlement_terms = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.settlement_terms.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.trade_message, buffer(offset, 0))
    local index = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Long Form Order Cancel Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_form_order_cancel_message = {}

-- Size: Long Form Order Cancel Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_form_order_cancel_message.size =
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.order_reference.size + 
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_canceled_shares.size

-- Display: Long Form Order Cancel Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_form_order_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Form Order Cancel Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_form_order_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Reference: Numeric
  index, order_reference = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.order_reference.dissect(buffer, index, packet, parent)

  -- Long Canceled Shares: Numeric
  index, long_canceled_shares = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_canceled_shares.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Form Order Cancel Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_form_order_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.long_form_order_cancel_message, buffer(offset, 0))
    local index = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_form_order_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_form_order_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_form_order_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.order_cancel_message = {}

-- Size: Order Cancel Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.order_cancel_message.size =
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.order_reference.size + 
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.canceled_shares.size

-- Display: Order Cancel Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.order_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.order_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Reference: Numeric
  index, order_reference = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.order_reference.dissect(buffer, index, packet, parent)

  -- Canceled Shares: Numeric
  index, canceled_shares = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.canceled_shares.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.order_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.order_cancel_message, buffer(offset, 0))
    local index = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.order_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.order_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.order_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Long Form Order Execution Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_form_order_execution_message = {}

-- Size: Long Form Order Execution Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_form_order_execution_message.size =
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.order_reference.size + 
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_executed_shares.size + 
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.trade_reference.size + 
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.contra_order_reference.size + 
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.trade_attribute.size + 
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.broker.size + 
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.contra_broker.size

-- Display: Long Form Order Execution Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_form_order_execution_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Form Order Execution Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_form_order_execution_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Reference: Numeric
  index, order_reference = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.order_reference.dissect(buffer, index, packet, parent)

  -- Long Executed Shares: Numeric
  index, long_executed_shares = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_executed_shares.dissect(buffer, index, packet, parent)

  -- Trade Reference: Numeric
  index, trade_reference = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.trade_reference.dissect(buffer, index, packet, parent)

  -- Contra Order Reference: Numeric
  index, contra_order_reference = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.contra_order_reference.dissect(buffer, index, packet, parent)

  -- Trade Attribute: Alphanumeric
  index, trade_attribute = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.trade_attribute.dissect(buffer, index, packet, parent)

  -- Broker: Numeric
  index, broker = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.broker.dissect(buffer, index, packet, parent)

  -- Contra Broker: Numeric
  index, contra_broker = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.contra_broker.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Form Order Execution Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_form_order_execution_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.long_form_order_execution_message, buffer(offset, 0))
    local index = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_form_order_execution_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_form_order_execution_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_form_order_execution_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Execution Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.order_execution_message = {}

-- Size: Order Execution Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.order_execution_message.size =
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.order_reference.size + 
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.executed_shares.size + 
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.trade_reference.size + 
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.contra_order_reference.size + 
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.trade_attribute.size + 
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.broker.size + 
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.contra_broker.size

-- Display: Order Execution Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.order_execution_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Execution Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.order_execution_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Reference: Numeric
  index, order_reference = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.order_reference.dissect(buffer, index, packet, parent)

  -- Executed Shares: Numeric
  index, executed_shares = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.executed_shares.dissect(buffer, index, packet, parent)

  -- Trade Reference: Numeric
  index, trade_reference = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.trade_reference.dissect(buffer, index, packet, parent)

  -- Contra Order Reference: Numeric
  index, contra_order_reference = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.contra_order_reference.dissect(buffer, index, packet, parent)

  -- Trade Attribute: Alphanumeric
  index, trade_attribute = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.trade_attribute.dissect(buffer, index, packet, parent)

  -- Broker: Numeric
  index, broker = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.broker.dissect(buffer, index, packet, parent)

  -- Contra Broker: Numeric
  index, contra_broker = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.contra_broker.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Execution Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.order_execution_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.order_execution_message, buffer(offset, 0))
    local index = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.order_execution_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.order_execution_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.order_execution_message.fields(buffer, offset, packet, parent)
  end
end

-- Long Form Add Order Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_form_add_order_message = {}

-- Size: Long Form Add Order Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_form_add_order_message.size =
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.order_reference.size + 
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.buy_sell_indicator.size + 
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_shares.size + 
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.stock.size + 
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_price.size + 
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.broker.size

-- Display: Long Form Add Order Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_form_add_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Form Add Order Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_form_add_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Reference: Numeric
  index, order_reference = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.order_reference.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: Alphanumeric
  index, buy_sell_indicator = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Long Shares: Numeric
  index, long_shares = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_shares.dissect(buffer, index, packet, parent)

  -- Stock: Alphanumeric
  index, stock = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.stock.dissect(buffer, index, packet, parent)

  -- Long Price: Price
  index, long_price = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_price.dissect(buffer, index, packet, parent)

  -- Broker: Numeric
  index, broker = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.broker.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Form Add Order Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_form_add_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.long_form_add_order_message, buffer(offset, 0))
    local index = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_form_add_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_form_add_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_form_add_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.add_order_message = {}

-- Size: Add Order Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.add_order_message.size =
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.order_reference.size + 
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.buy_sell_indicator.size + 
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.shares.size + 
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.stock.size + 
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.price.size + 
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.broker.size

-- Display: Add Order Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.add_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.add_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Reference: Numeric
  index, order_reference = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.order_reference.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: Alphanumeric
  index, buy_sell_indicator = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Shares: Numeric
  index, shares = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.shares.dissect(buffer, index, packet, parent)

  -- Stock: Alphanumeric
  index, stock = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.stock.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.price.dissect(buffer, index, packet, parent)

  -- Broker: Numeric
  index, broker = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.broker.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.add_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.add_order_message, buffer(offset, 0))
    local index = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.add_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.add_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.add_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.payload = {}

-- Dissect: Payload
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Add Order Message
  if message_type == "A" then
    return nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.add_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Long Form Add Order Message
  if message_type == "a" then
    return nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_form_add_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Execution Message
  if message_type == "E" then
    return nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.order_execution_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Long Form Order Execution Message
  if message_type == "e" then
    return nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_form_order_execution_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Message
  if message_type == "X" then
    return nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.order_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Long Form Order Cancel Message
  if message_type == "x" then
    return nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_form_order_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if message_type == "P" then
    return nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Long Form Trade Message
  if message_type == "p" then
    return nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.long_form_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Broken Trade Message
  if message_type == "B" then
    return nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.broken_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System Event Message
  if message_type == "S" then
    return nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Status Message
  if message_type == "H" then
    return nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.stock_status_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.message_header = {}

-- Size: Message Header
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.message_header.size =
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.length.size + 
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.timestamp.size + 
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.message_type.size

-- Display: Message Header
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.length.dissect(buffer, index, packet, parent)

  -- Timestamp: 8 Byte Ascii String
  index, timestamp = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.timestamp.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 11 values
  index, message_type = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.message_header, buffer(offset, 0))
    local index = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.message = {}

-- Read runtime size of: Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Length
  local length = buffer(offset, 2):uint()

  return length + 2
end

-- Display: Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 3 fields
  index, message_header = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 11 branches
  index = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.message, buffer(offset, 0))
    local current = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Heartbeat
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.heartbeat = {}

-- Size: Heartbeat
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.heartbeat.size =
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.session.size

-- Display: Heartbeat
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.heartbeat.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.heartbeat.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.session.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.heartbeat.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.heartbeat, buffer(offset, 0))
    local index = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.heartbeat.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.heartbeat.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.heartbeat.fields(buffer, offset, packet, parent)
  end
end

-- Messages
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.messages = {}

-- Dissect: Messages
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.messages.dissect = function(buffer, offset, packet, parent, message_count)
  -- Dissect Heartbeat
  if message_count == 0 then
    return nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.heartbeat.dissect(buffer, offset, packet, parent)
  end

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Length
    local length = buffer(offset, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = length + 2

    -- Message: Struct of 2 fields
    offset = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end
end

-- Packet Header
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.packet_header = {}

-- Size: Packet Header
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.packet_header.size =
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.sequence.size + 
  nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.message_count.size

-- Display: Packet Header
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.sequence.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.packet = {}

-- Verify required size of Udp packet
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.packet_header.size
end

-- Dissect Packet
nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 2 fields
  index, packet_header = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Messages: Runtime Type with 2 branches
  index = nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.init()
end

-- Dissector for Nasdaq CanadaEquities Chixmmd Itch 1.1.3.5
function omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5, buffer(), omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.description, "("..buffer:len().." Bytes)")
  return nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq CanadaEquities Chixmmd Itch 1.1.3.5 (Udp)
local function omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5
  omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq CanadaEquities Chixmmd Itch 1.1.3.5
omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5:register_heuristic("udp", omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5_udp_heuristic)

-- Register Nasdaq CanadaEquities Chixmmd Itch 1.1.3.5 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_nasdaq_canadaequities_chixmmd_itch_v1_1_3_5)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 1.1.3.5
--   Date: Monday, February 24, 2025
--   Specification: Nasdaq-Canada-Multicast-Market-Data-Specification-CHIXMMD-1.1-V3.5.pdf
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
