-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq NasdaqCanada Chixmmd AsciiItch 1.1.3.5 Protocol
local omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5 = Proto("Omi.Nasdaq.NasdaqCanada.Chixmmd.AsciiItch.v1.1.3.5", "Nasdaq NasdaqCanada Chixmmd AsciiItch 1.1.3.5")

-- Protocol table
local nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq NasdaqCanada Chixmmd AsciiItch 1.1.3.5 Fields
omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.board_lot_size = ProtoField.new("Board Lot Size", "nasdaq.nasdaqcanada.chixmmd.asciiitch.v1.1.3.5.boardlotsize", ftypes.UINT16, nil, nil, nil, "Board Lot Size in Shares")
omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.broker = ProtoField.new("Broker", "nasdaq.nasdaqcanada.chixmmd.asciiitch.v1.1.3.5.broker", ftypes.UINT16, nil, nil, nil, "The three digit numeric TSX Broker Number or 001 for anonymous.")
omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.buy_sell_indicator = ProtoField.new("Buy Sell Indicator", "nasdaq.nasdaqcanada.chixmmd.asciiitch.v1.1.3.5.buysellindicator", ftypes.STRING, nil, nil, nil, "B = Buy Order; S = Sell Order")
omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.canceled_shares = ProtoField.new("Canceled Shares", "nasdaq.nasdaqcanada.chixmmd.asciiitch.v1.1.3.5.canceledshares", ftypes.UINT24, nil, nil, nil, "Number of shares cancelled")
omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.contra_broker = ProtoField.new("Contra Broker", "nasdaq.nasdaqcanada.chixmmd.asciiitch.v1.1.3.5.contrabroker", ftypes.UINT16, nil, nil, nil, "The three digit numeric TSX Broker Number of the contra order or 001 for anonymous.")
omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.contra_order_reference = ProtoField.new("Contra Order Reference", "nasdaq.nasdaqcanada.chixmmd.asciiitch.v1.1.3.5.contraorderreference", ftypes.UINT32, nil, nil, nil, "The reference key of the contra-order that was executed.")
omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.cross_type = ProtoField.new("Cross Type", "nasdaq.nasdaqcanada.chixmmd.asciiitch.v1.1.3.5.crosstype", ftypes.STRING, nil, nil, nil, "I = Internal; B = Basis; C = Contingent; V = VWAP; X = Intentional Cross; D = Derivative Related; N = Net Asset Value")
omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.currency = ProtoField.new("Currency", "nasdaq.nasdaqcanada.chixmmd.asciiitch.v1.1.3.5.currency", ftypes.STRING, nil, nil, nil, "CAD = Canadian Dollars, USD = US Dollars")
omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.event_code = ProtoField.new("Event Code", "nasdaq.nasdaqcanada.chixmmd.asciiitch.v1.1.3.5.eventcode", ftypes.STRING, nil, nil, nil, "System event code, see Event Code values")
omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.executed_shares = ProtoField.new("Executed Shares", "nasdaq.nasdaqcanada.chixmmd.asciiitch.v1.1.3.5.executedshares", ftypes.UINT24, nil, nil, nil, "The number of shares executed on this trade")
omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.gef_eligible = ProtoField.new("Gef Eligible", "nasdaq.nasdaqcanada.chixmmd.asciiitch.v1.1.3.5.gefeligible", ftypes.STRING, nil, nil, nil, "Y = GEF Eligible, N = Not GEF Eligible")
omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.length = ProtoField.new("Length", "nasdaq.nasdaqcanada.chixmmd.asciiitch.v1.1.3.5.length", ftypes.UINT16, nil, nil, nil, "Length of the market data message, not including this field")
omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.listing_market = ProtoField.new("Listing Market", "nasdaq.nasdaqcanada.chixmmd.asciiitch.v1.1.3.5.listingmarket", ftypes.STRING, nil, nil, nil, "T = TSX, V = Venture, C = CSE, N = Neo")
omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.long_canceled_shares = ProtoField.new("Long Canceled Shares", "nasdaq.nasdaqcanada.chixmmd.asciiitch.v1.1.3.5.longcanceledshares", ftypes.UINT64, nil, nil, nil, "Number of shares cancelled")
omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.long_executed_shares = ProtoField.new("Long Executed Shares", "nasdaq.nasdaqcanada.chixmmd.asciiitch.v1.1.3.5.longexecutedshares", ftypes.UINT64, nil, nil, nil, "The number of shares executed on this trade")
omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.long_price = ProtoField.new("Long Price", "nasdaq.nasdaqcanada.chixmmd.asciiitch.v1.1.3.5.longprice", ftypes.DOUBLE, nil, nil, nil, "The display price of the order. Long form price: 12 whole number places followed by 7 implied decimal digits.")
omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.long_shares = ProtoField.new("Long Shares", "nasdaq.nasdaqcanada.chixmmd.asciiitch.v1.1.3.5.longshares", ftypes.UINT64, nil, nil, nil, "Total number of shares being added to the book (may be less than the number of shares entered because part of the order may trade before being posted to the book).")
omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.message_count = ProtoField.new("Message Count", "nasdaq.nasdaqcanada.chixmmd.asciiitch.v1.1.3.5.messagecount", ftypes.UINT16, nil, nil, nil, "Number of messages in the packet, zero on a heartbeat")
omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.message_type = ProtoField.new("Message Type", "nasdaq.nasdaqcanada.chixmmd.asciiitch.v1.1.3.5.messagetype", ftypes.STRING, nil, nil, nil, "Code identifying this message type")
omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.order_reference = ProtoField.new("Order Reference", "nasdaq.nasdaqcanada.chixmmd.asciiitch.v1.1.3.5.orderreference", ftypes.UINT32, nil, nil, nil, "Day unique order reference number")
omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.price = ProtoField.new("Price", "nasdaq.nasdaqcanada.chixmmd.asciiitch.v1.1.3.5.price", ftypes.DOUBLE, nil, nil, nil, "The display price of the order.")
omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.reserved_1 = ProtoField.new("Reserved 1", "nasdaq.nasdaqcanada.chixmmd.asciiitch.v1.1.3.5.reserved1", ftypes.STRING, nil, nil, nil, "Reserved for future use")
omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.sequence = ProtoField.new("Sequence", "nasdaq.nasdaqcanada.chixmmd.asciiitch.v1.1.3.5.sequence", ftypes.UINT32, nil, nil, nil, "Sequence number of the first message, or on a heartbeat the sequence number of the next market data message")
omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.session = ProtoField.new("Session", "nasdaq.nasdaqcanada.chixmmd.asciiitch.v1.1.3.5.session", ftypes.STRING, nil, nil, nil, "Current session of the market data stream")
omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.settlement_terms = ProtoField.new("Settlement Terms", "nasdaq.nasdaqcanada.chixmmd.asciiitch.v1.1.3.5.settlementterms", ftypes.STRING, nil, nil, nil, "T = Cash Today; D = Delayed Delivery")
omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.shares = ProtoField.new("Shares", "nasdaq.nasdaqcanada.chixmmd.asciiitch.v1.1.3.5.shares", ftypes.UINT24, nil, nil, nil, "Total number of shares being added to the book (may be less than the number of shares entered because part of the order may trade before being posted to the book).")
omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.stock = ProtoField.new("Stock", "nasdaq.nasdaqcanada.chixmmd.asciiitch.v1.1.3.5.stock", ftypes.STRING, nil, nil, nil, "Stock symbol right padded with spaces.")
omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.nasdaqcanada.chixmmd.asciiitch.v1.1.3.5.timestamp", ftypes.UINT32, nil, nil, nil, "Milliseconds past midnight local time the message was generated")
omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.trade_attribute = ProtoField.new("Trade Attribute", "nasdaq.nasdaqcanada.chixmmd.asciiitch.v1.1.3.5.tradeattribute", ftypes.STRING, nil, nil, nil, "C = Market On Close")
omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.trade_reference = ProtoField.new("Trade Reference", "nasdaq.nasdaqcanada.chixmmd.asciiitch.v1.1.3.5.tradereference", ftypes.UINT32, nil, nil, nil, "Day unique trade reference number")
omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.trading_state = ProtoField.new("Trading State", "nasdaq.nasdaqcanada.chixmmd.asciiitch.v1.1.3.5.tradingstate", ftypes.STRING, nil, nil, nil, "H = Halted, T = Trading")

-- Nasdaq NasdaqCanada Chixmmd AsciiItch 1.1.3.5 Framing
omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.message = ProtoField.new("Message", "nasdaq.nasdaqcanada.chixmmd.asciiitch.v1.1.3.5.message", ftypes.STRING, nil, nil, nil, "CHIXMMD data message")
omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.message_header = ProtoField.new("Message Header", "nasdaq.nasdaqcanada.chixmmd.asciiitch.v1.1.3.5.messageheader", ftypes.STRING, nil, nil, nil, "Length of the market data message, then its timestamp and type")
omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.packet = ProtoField.new("Packet", "nasdaq.nasdaqcanada.chixmmd.asciiitch.v1.1.3.5.packet", ftypes.STRING, nil, nil, nil, "CHIXMMD multicast packet")
omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.nasdaqcanada.chixmmd.asciiitch.v1.1.3.5.packetheader", ftypes.STRING, nil, nil, nil, "CHIXMMD multicast packet header")

-- Nasdaq NasdaqCanada Chixmmd 1.1.3.5 Application Messages
omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.add_order_message = ProtoField.new("Add Order Message", "nasdaq.nasdaqcanada.chixmmd.asciiitch.v1.1.3.5.addordermessage", ftypes.STRING, nil, nil, nil, "An Add Order Message indicates that CXC or CX2 has accepted a visible order into the book. It includes a day-unique Order Reference key assigned to the order. The issuing of an Add Order Message is not necessarily always for a new order (see Modification of Existing Orders). Not applicable to CXD.")
omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.broken_trade_message = ProtoField.new("Broken Trade Message", "nasdaq.nasdaqcanada.chixmmd.asciiitch.v1.1.3.5.brokentrademessage", ftypes.STRING, nil, nil, nil, "A Broken Trade message is sent whenever an execution is broken. A Broken Trade is final; once a trade is broken it cannot be reinstated.")
omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.long_form_add_order_message = ProtoField.new("Long Form Add Order Message", "nasdaq.nasdaqcanada.chixmmd.asciiitch.v1.1.3.5.longformaddordermessage", ftypes.STRING, nil, nil, nil, "An Add Order Message indicates that CXC or CX2 has accepted a visible order into the book. It includes a day-unique Order Reference key assigned to the order. The issuing of an Add Order Message is not necessarily always for a new order (see Modification of Existing Orders). Not applicable to CXD. Long form messages are used when either the price or size is larger than the standard messages can permit.")
omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.long_form_order_cancel_message = ProtoField.new("Long Form Order Cancel Message", "nasdaq.nasdaqcanada.chixmmd.asciiitch.v1.1.3.5.longformordercancelmessage", ftypes.STRING, nil, nil, nil, "An Order Cancel Message is sent whenever an order on the book is fully canceled, its quantity revised down or when a pegged order is re-priced. Not applicable to CXD. Long form messages are used when either the price or size is larger than the standard messages can permit.")
omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.long_form_order_execution_message = ProtoField.new("Long Form Order Execution Message", "nasdaq.nasdaqcanada.chixmmd.asciiitch.v1.1.3.5.longformorderexecutionmessage", ftypes.STRING, nil, nil, nil, "An Order Execution Message is sent whenever an order on the book is executed in whole or in part. Not applicable to CXD. Long form messages are used when either the price or size is larger than the standard messages can permit.")
omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.long_form_trade_message = ProtoField.new("Long Form Trade Message", "nasdaq.nasdaqcanada.chixmmd.asciiitch.v1.1.3.5.longformtrademessage", ftypes.STRING, nil, nil, nil, "A Trade Message is sent when a trade occurs against order quantity not visible on the book (i.e. a fully or partially hidden order). They do not affect the book. The Order Reference is always 0 and the Buy/Sell indicator B. Long form messages are used when either the price or size is larger than the standard messages can permit.")
omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.order_cancel_message = ProtoField.new("Order Cancel Message", "nasdaq.nasdaqcanada.chixmmd.asciiitch.v1.1.3.5.ordercancelmessage", ftypes.STRING, nil, nil, nil, "An Order Cancel Message is sent whenever an order on the book is fully canceled, its quantity revised down or when a pegged order is re-priced. Not applicable to CXD.")
omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.order_execution_message = ProtoField.new("Order Execution Message", "nasdaq.nasdaqcanada.chixmmd.asciiitch.v1.1.3.5.orderexecutionmessage", ftypes.STRING, nil, nil, nil, "An Order Execution Message is sent whenever an order on the book is executed in whole or in part. Not applicable to CXD.")
omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.stock_status_message = ProtoField.new("Stock Status Message", "nasdaq.nasdaqcanada.chixmmd.asciiitch.v1.1.3.5.stockstatusmessage", ftypes.STRING, nil, nil, nil, "This message indicates the current trading status of a stock. At the start of day, the feed will send out a stock status message for each of the symbols trading on CXC, CX2 and CXD. Subsequently, stock status messages will be sent when a stock is halted or is released for trading.")
omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.nasdaqcanada.chixmmd.asciiitch.v1.1.3.5.systemeventmessage", ftypes.STRING, nil, nil, nil, "The system event message type is used to indicate a market state event.")
omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.trade_message = ProtoField.new("Trade Message", "nasdaq.nasdaqcanada.chixmmd.asciiitch.v1.1.3.5.trademessage", ftypes.STRING, nil, nil, nil, "A Trade Message is sent when a trade occurs against order quantity not visible on the book (i.e. a fully or partially hidden order). They do not affect the book. The Order Reference is always 0 and the Buy/Sell indicator B.")

-- Nasdaq NasdaqCanada Chixmmd 1.1.3.5 Session Messages
omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.heartbeat = ProtoField.new("Heartbeat", "nasdaq.nasdaqcanada.chixmmd.asciiitch.v1.1.3.5.heartbeat", ftypes.STRING, nil, nil, nil, "The heartbeat carries the current session of the market data stream, to be used in the Login Request of the recovery service")

-- Nasdaq NasdaqCanada Chixmmd AsciiItch 1.1.3.5 Generated Fields
omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.message_index = ProtoField.new("Message Index", "nasdaq.nasdaqcanada.chixmmd.asciiitch.v1.1.3.5.messageindex", ftypes.UINT16)

-- Nasdaq NasdaqCanada Chixmmd AsciiItch 1.1.3.5 Expert Info
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.experts = {}
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.experts.not_a_number = ProtoExpert.new("nasdaq.nasdaqcanada.chixmmd.asciiitch.v1.1.3.5.notanumber", "Ascii digits field holding no number", expert.group.PROTOCOL, expert.severity.WARN)
omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.experts = { nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.experts.not_a_number }

-----------------------------------------------------------------------
-- Nasdaq NasdaqCanada Chixmmd AsciiItch 1.1.3.5 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.timestamp_format = 2


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq NasdaqCanada Chixmmd AsciiItch 1.1.3.5 Element Dissection Options
show.application_messages = true
show.session_messages = true
show.structs = true
show.headers = true
show.indexes = true

-- Register Nasdaq NasdaqCanada Chixmmd AsciiItch 1.1.3.5 Show Options
omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Timestamp display format", timestamp_format_enum, false)

-- Handle changed preferences
function omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.prefs.show_application_messages
  end
  if show.headers ~= omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.prefs.show_headers then
    show.headers = omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.prefs.show_headers
  end
  if show.session_messages ~= omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.prefs.show_session_messages then
    show.session_messages = omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.prefs.show_session_messages
  end
  if show.structs ~= omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.prefs.show_structs then
    show.structs = omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.prefs.show_structs
  end
  if show.indexes ~= omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.prefs.show_indexes then
    show.indexes = omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.prefs.show_indexes
  end
  if nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.timestamp_format ~= omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.prefs.timestamp_format then
    nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.timestamp_format = omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.prefs.timestamp_format
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
-- Nasdaq NasdaqCanada Chixmmd AsciiItch 1.1.3.5 Fields
-----------------------------------------------------------------------

-- Board Lot Size
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.board_lot_size = {}

-- Size: Board Lot Size
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.board_lot_size.size = 4

-- Display: Board Lot Size
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.board_lot_size.display = function(value)
  return "Board Lot Size: "..value
end

-- Dissect: Board Lot Size
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.board_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.board_lot_size.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.board_lot_size, range, value, "Board Lot Size: Not Applicable")
    item:add_proto_expert_info(nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.experts.not_a_number, "Board Lot Size is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.board_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.board_lot_size, range, value, display)

  return offset + length, value
end

-- Broker
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.broker = {}

-- Size: Broker
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.broker.size = 3

-- Display: Broker
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.broker.display = function(value)
  return "Broker: "..value
end

-- Dissect: Broker
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.broker.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.broker.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.broker, range, value, "Broker: Not Applicable")
    item:add_proto_expert_info(nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.experts.not_a_number, "Broker is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.broker.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.broker, range, value, display)

  return offset + length, value
end

-- Buy Sell Indicator
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.buy_sell_indicator = {}

-- Size: Buy Sell Indicator
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.buy_sell_indicator.size = 1

-- Display: Buy Sell Indicator
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.buy_sell_indicator.labels = {
  ["B"] = "Buy Sell Indicator: Buy (B)",
  ["S"] = "Buy Sell Indicator: Sell (S)",
}

nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.buy_sell_indicator.display = function(value)
  return nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.buy_sell_indicator.labels[value] or "Buy Sell Indicator: Unknown("..value..")"
end

-- Dissect: Buy Sell Indicator
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.buy_sell_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.buy_sell_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.buy_sell_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.buy_sell_indicator, range, value, display)

  return offset + length, value
end

-- Canceled Shares
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.canceled_shares = {}

-- Size: Canceled Shares
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.canceled_shares.size = 6

-- Display: Canceled Shares
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.canceled_shares.display = function(value)
  return "Canceled Shares: "..value
end

-- Dissect: Canceled Shares
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.canceled_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.canceled_shares.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.canceled_shares, range, value, "Canceled Shares: Not Applicable")
    item:add_proto_expert_info(nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.experts.not_a_number, "Canceled Shares is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.canceled_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.canceled_shares, range, value, display)

  return offset + length, value
end

-- Contra Broker
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.contra_broker = {}

-- Size: Contra Broker
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.contra_broker.size = 3

-- Display: Contra Broker
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.contra_broker.display = function(value)
  return "Contra Broker: "..value
end

-- Dissect: Contra Broker
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.contra_broker.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.contra_broker.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.contra_broker, range, value, "Contra Broker: Not Applicable")
    item:add_proto_expert_info(nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.experts.not_a_number, "Contra Broker is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.contra_broker.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.contra_broker, range, value, display)

  return offset + length, value
end

-- Contra Order Reference
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.contra_order_reference = {}

-- Size: Contra Order Reference
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.contra_order_reference.size = 9

-- Display: Contra Order Reference
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.contra_order_reference.display = function(value)
  return "Contra Order Reference: "..value
end

-- Dissect: Contra Order Reference
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.contra_order_reference.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.contra_order_reference.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.contra_order_reference, range, value, "Contra Order Reference: Not Applicable")
    item:add_proto_expert_info(nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.experts.not_a_number, "Contra Order Reference is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.contra_order_reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.contra_order_reference, range, value, display)

  return offset + length, value
end

-- Cross Type
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.cross_type = {}

-- Size: Cross Type
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.cross_type.size = 1

-- Display: Cross Type
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.cross_type.labels = {
  ["I"] = "Cross Type: Internal (I)",
  ["B"] = "Cross Type: Basis (B)",
  ["C"] = "Cross Type: Contingent (C)",
  ["V"] = "Cross Type: Vwap (V)",
  ["X"] = "Cross Type: Intentional Cross (X)",
  ["D"] = "Cross Type: Derivative Related (D)",
  ["N"] = "Cross Type: Net Asset Value (N)",
}

nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.cross_type.display = function(value)
  return nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.cross_type.labels[value] or "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.cross_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Currency
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.currency = {}

-- Size: Currency
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.currency.size = 3

-- Display: Currency
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.currency.labels = {
  ["CAD"] = "Currency: Canadian Dollars (CAD)",
  ["USD"] = "Currency: Us Dollars (USD)",
}

nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.currency.display = function(value)
  return nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.currency.labels[value] or "Currency: Unknown("..value..")"
end

-- Dissect: Currency
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.currency.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.currency, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.event_code = {}

-- Size: Event Code
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.event_code.size = 1

-- Display: Event Code
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.event_code.labels = {
  ["O"] = "Event Code: Start Of Messages (O)",
  ["S"] = "Event Code: Start Of Nasdaq Canada Trading Session (S)",
  ["Q"] = "Event Code: Start Of Primary Market Trading Session (Q)",
  ["M"] = "Event Code: End Of Primary Market Trading Session (M)",
  ["E"] = "Event Code: End Of System Hours (E)",
  ["C"] = "Event Code: End Of Messages (C)",
  ["W"] = "Event Code: Market Wide Circuit Breaker Halt (W)",
  ["R"] = "Event Code: Market Wide Circuit Breaker Resumption (R)",
}

nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.event_code.display = function(value)
  return nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.event_code.labels[value] or "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.event_code, range, value, display)

  return offset + length, value
end

-- Executed Shares
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.executed_shares = {}

-- Size: Executed Shares
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.executed_shares.size = 6

-- Display: Executed Shares
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.executed_shares.display = function(value)
  return "Executed Shares: "..value
end

-- Dissect: Executed Shares
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.executed_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.executed_shares.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.executed_shares, range, value, "Executed Shares: Not Applicable")
    item:add_proto_expert_info(nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.experts.not_a_number, "Executed Shares is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.executed_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.executed_shares, range, value, display)

  return offset + length, value
end

-- Gef Eligible
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.gef_eligible = {}

-- Size: Gef Eligible
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.gef_eligible.size = 1

-- Display: Gef Eligible
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.gef_eligible.labels = {
  ["Y"] = "Gef Eligible: Gef Eligible (Y)",
  ["N"] = "Gef Eligible: Not Gef Eligible (N)",
}

nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.gef_eligible.display = function(value)
  return nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.gef_eligible.labels[value] or "Gef Eligible: Unknown("..value..")"
end

-- Dissect: Gef Eligible
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.gef_eligible.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.gef_eligible.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.gef_eligible.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.gef_eligible, range, value, display)

  return offset + length, value
end

-- Length
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.length = {}

-- Size: Length
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.length.size = 2

-- Display: Length
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.length, range, value, display)

  return offset + length, value
end

-- Listing Market
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.listing_market = {}

-- Size: Listing Market
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.listing_market.size = 1

-- Display: Listing Market
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.listing_market.labels = {
  ["T"] = "Listing Market: Tsx (T)",
  ["V"] = "Listing Market: Tsx Venture (V)",
  ["C"] = "Listing Market: Cse (C)",
  ["N"] = "Listing Market: Neo (N)",
}

nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.listing_market.display = function(value)
  return nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.listing_market.labels[value] or "Listing Market: Unknown("..value..")"
end

-- Dissect: Listing Market
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.listing_market.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.listing_market.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.listing_market.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.listing_market, range, value, display)

  return offset + length, value
end

-- Long Canceled Shares
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_canceled_shares = {}

-- Size: Long Canceled Shares
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_canceled_shares.size = 10

-- Display: Long Canceled Shares
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_canceled_shares.display = function(value)
  return "Long Canceled Shares: "..value
end

-- Dissect: Long Canceled Shares
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_canceled_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_canceled_shares.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.long_canceled_shares, range, value, "Long Canceled Shares: Not Applicable")
    item:add_proto_expert_info(nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.experts.not_a_number, "Long Canceled Shares is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_canceled_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.long_canceled_shares, range, value, display)

  return offset + length, value
end

-- Long Executed Shares
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_executed_shares = {}

-- Size: Long Executed Shares
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_executed_shares.size = 10

-- Display: Long Executed Shares
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_executed_shares.display = function(value)
  return "Long Executed Shares: "..value
end

-- Dissect: Long Executed Shares
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_executed_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_executed_shares.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.long_executed_shares, range, value, "Long Executed Shares: Not Applicable")
    item:add_proto_expert_info(nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.experts.not_a_number, "Long Executed Shares is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_executed_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.long_executed_shares, range, value, display)

  return offset + length, value
end

-- Long Price
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_price = {}

-- Size: Long Price
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_price.size = 19

-- Display: Long Price
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_price.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_price.size):string(), 7)

  if text == nil then
    return "Long Price: "..tostring(value)
  end

  return "Long Price: "..text
end

-- Dissect: Long Price
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.long_price, range, value, "Long Price: Not Applicable")
    item:add_proto_expert_info(nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.experts.not_a_number, "Long Price is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000000

  local display = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.long_price, range, value, display)

  return offset + length, value
end

-- Long Shares
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_shares = {}

-- Size: Long Shares
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_shares.size = 10

-- Display: Long Shares
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_shares.display = function(value)
  return "Long Shares: "..value
end

-- Dissect: Long Shares
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_shares.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.long_shares, range, value, "Long Shares: Not Applicable")
    item:add_proto_expert_info(nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.experts.not_a_number, "Long Shares is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.long_shares, range, value, display)

  return offset + length, value
end

-- Message Count
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.message_count = {}

-- Size: Message Count
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.message_count.size = 2

-- Display: Message Count
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Type
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.message_type = {}

-- Size: Message Type
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.message_type.size = 1

-- Display: Message Type
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.message_type.labels = {
  ["A"] = "Message Type: Add Order Message (A)",
  ["a"] = "Message Type: Long Form Add Order Message (a)",
  ["E"] = "Message Type: Order Execution Message (E)",
  ["e"] = "Message Type: Long Form Order Execution Message (e)",
  ["X"] = "Message Type: Order Cancel Message (X)",
  ["x"] = "Message Type: Long Form Order Cancel Message (x)",
  ["P"] = "Message Type: Trade Message (P)",
  ["p"] = "Message Type: Long Form Trade Message (p)",
  ["B"] = "Message Type: Broken Trade Message (B)",
  ["S"] = "Message Type: System Event Message (S)",
  ["H"] = "Message Type: Stock Status Message (H)",
}

nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.message_type.display = function(value)
  return nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.message_type, range, value, display)

  return offset + length, value
end

-- Order Reference
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.order_reference = {}

-- Size: Order Reference
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.order_reference.size = 9

-- Display: Order Reference
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.order_reference.display = function(value)
  return "Order Reference: "..value
end

-- Dissect: Order Reference
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.order_reference.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.order_reference.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.order_reference, range, value, "Order Reference: Not Applicable")
    item:add_proto_expert_info(nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.experts.not_a_number, "Order Reference is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.order_reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.order_reference, range, value, display)

  return offset + length, value
end

-- Price
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.price = {}

-- Size: Price
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.price.size = 10

-- Display: Price
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.price.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.price.size):string(), 4)

  if text == nil then
    return "Price: "..tostring(value)
  end

  return "Price: "..text
end

-- Dissect: Price
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.price, range, value, "Price: Not Applicable")
    item:add_proto_expert_info(nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.experts.not_a_number, "Price is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.price, range, value, display)

  return offset + length, value
end

-- Reserved 1
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.reserved_1 = {}

-- Size: Reserved 1
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.reserved_1.size = 1

-- Display: Reserved 1
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.reserved_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Sequence
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.sequence = {}

-- Size: Sequence
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.sequence.size = 4

-- Display: Sequence
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.sequence.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.sequence.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.sequence, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.session = {}

-- Size: Session
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.session.size = 10

-- Display: Session
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.session, range, value, display)

  return offset + length, value
end

-- Settlement Terms
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.settlement_terms = {}

-- Size: Settlement Terms
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.settlement_terms.size = 1

-- Display: Settlement Terms
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.settlement_terms.labels = {
  ["T"] = "Settlement Terms: Cash Today (T)",
  ["D"] = "Settlement Terms: Delayed Delivery (D)",
}

nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.settlement_terms.display = function(value)
  return nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.settlement_terms.labels[value] or "Settlement Terms: Unknown("..value..")"
end

-- Dissect: Settlement Terms
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.settlement_terms.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.settlement_terms.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.settlement_terms.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.settlement_terms, range, value, display)

  return offset + length, value
end

-- Shares
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.shares = {}

-- Size: Shares
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.shares.size = 6

-- Display: Shares
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.shares.display = function(value)
  return "Shares: "..value
end

-- Dissect: Shares
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.shares.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.shares, range, value, "Shares: Not Applicable")
    item:add_proto_expert_info(nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.experts.not_a_number, "Shares is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.shares, range, value, display)

  return offset + length, value
end

-- Stock
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.stock = {}

-- Size: Stock
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.stock.size = 10

-- Display: Stock
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.stock.display = function(value)
  return "Stock: "..value
end

-- Dissect: Stock
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.stock.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.stock.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.stock.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.stock, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.timestamp = {}

-- Size: Timestamp
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.timestamp.size = 8

-- Display: Timestamp
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.timestamp.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode (or unparsable ASCII fell back to a non-number)
  if type(value) ~= "number" then
    return "Timestamp: "..tostring(value)
  end

  if nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.timestamp_format == 0 then
    return "Timestamp: "..value
  end

  -- Parse milliseconds since midnight
  local seconds = math.floor(value / 1000)
  local milliseconds = value % 1000

  -- Full datetime mode (the day the frame that carried it settled on)
  if nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()

    -- A frame a file handler read states no instant and reads as the epoch
    if capture_time >= 86400 then
      -- The venue's midnight: the frame's instant less the time of day it states
      local settled = math.floor((capture_time - seconds) / 900 + 0.5) * 900

      local midnight = math.floor(settled / 86400 + 0.5) * 86400

      return "Timestamp: "..os.date("!%Y-%m-%d %H:%M:%S.", midnight + seconds)..string.format("%03d", milliseconds)
    end
  end

  -- Time of day mode
  return "Timestamp: "..os.date("!%H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Timestamp
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.timestamp.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.timestamp, range, value, "Timestamp: Not Applicable")
    item:add_proto_expert_info(nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.experts.not_a_number, "Timestamp is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trade Attribute
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.trade_attribute = {}

-- Size: Trade Attribute
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.trade_attribute.size = 1

-- Display: Trade Attribute
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.trade_attribute.labels = {
  ["B"] = "Trade Attribute: Bypass (B)",
  ["C"] = "Trade Attribute: Market On Close Or Cxd Conditional (C)",
  ["L"] = "Trade Attribute: M Elo (L)",
  ["P"] = "Trade Attribute: Cxd Pure Stream (P)",
}

nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.trade_attribute.display = function(value)
  return nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.trade_attribute.labels[value] or "Trade Attribute: Unknown("..value..")"
end

-- Dissect: Trade Attribute
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.trade_attribute.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.trade_attribute.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.trade_attribute.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.trade_attribute, range, value, display)

  return offset + length, value
end

-- Trade Reference
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.trade_reference = {}

-- Size: Trade Reference
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.trade_reference.size = 9

-- Display: Trade Reference
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.trade_reference.display = function(value)
  return "Trade Reference: "..value
end

-- Dissect: Trade Reference
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.trade_reference.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.trade_reference.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.trade_reference, range, value, "Trade Reference: Not Applicable")
    item:add_proto_expert_info(nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.experts.not_a_number, "Trade Reference is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.trade_reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.trade_reference, range, value, display)

  return offset + length, value
end

-- Trading State
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.trading_state = {}

-- Size: Trading State
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.trading_state.size = 1

-- Display: Trading State
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.trading_state.labels = {
  ["H"] = "Trading State: Halted (H)",
  ["T"] = "Trading State: Trading (T)",
}

nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.trading_state.display = function(value)
  return nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.trading_state.labels[value] or "Trading State: Unknown("..value..")"
end

-- Dissect: Trading State
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.trading_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.trading_state, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq NasdaqCanada Chixmmd AsciiItch 1.1.3.5
-----------------------------------------------------------------------

-- Stock Status Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.stock_status_message = {}

-- Size: Stock Status Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.stock_status_message.size =
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.stock.size + 
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.trading_state.size + 
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.reserved_1.size + 
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.listing_market.size + 
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.board_lot_size.size + 
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.currency.size + 
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.gef_eligible.size

-- Display: Stock Status Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.stock_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Status Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.stock_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock: Alphanumeric
  index, stock = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.stock.dissect(buffer, index, packet, parent)

  -- Trading State: Alphanumeric
  index, trading_state = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.trading_state.dissect(buffer, index, packet, parent)

  -- Reserved 1: Alphanumeric
  index, reserved_1 = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.reserved_1.dissect(buffer, index, packet, parent)

  -- Listing Market: Alphanumeric
  index, listing_market = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.listing_market.dissect(buffer, index, packet, parent)

  -- Board Lot Size: Numeric
  index, board_lot_size = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.board_lot_size.dissect(buffer, index, packet, parent)

  -- Currency: Alphanumeric
  index, currency = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.currency.dissect(buffer, index, packet, parent)

  -- Gef Eligible: Alphanumeric
  index, gef_eligible = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.gef_eligible.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Status Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.stock_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.stock_status_message, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.stock_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.stock_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.stock_status_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.system_event_message = {}

-- Size: System Event Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.system_event_message.size =
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.event_code.size

-- Display: System Event Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Event Code: Alphanumeric
  index, event_code = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Broken Trade Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.broken_trade_message = {}

-- Size: Broken Trade Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.broken_trade_message.size =
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.trade_reference.size

-- Display: Broken Trade Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.broken_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broken Trade Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.broken_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trade Reference: Numeric
  index, trade_reference = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.trade_reference.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Broken Trade Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.broken_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.broken_trade_message, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.broken_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.broken_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.broken_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Long Form Trade Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_form_trade_message = {}

-- Size: Long Form Trade Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_form_trade_message.size =
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.order_reference.size + 
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.buy_sell_indicator.size + 
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_shares.size + 
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.stock.size + 
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_price.size + 
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.trade_reference.size + 
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.contra_order_reference.size + 
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.broker.size + 
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.contra_broker.size + 
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.trade_attribute.size + 
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.cross_type.size + 
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.settlement_terms.size

-- Display: Long Form Trade Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_form_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Form Trade Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_form_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Reference: Numeric
  index, order_reference = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.order_reference.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: Alphanumeric
  index, buy_sell_indicator = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Long Shares: Numeric
  index, long_shares = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_shares.dissect(buffer, index, packet, parent)

  -- Stock: Alphanumeric
  index, stock = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.stock.dissect(buffer, index, packet, parent)

  -- Long Price: Price
  index, long_price = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_price.dissect(buffer, index, packet, parent)

  -- Trade Reference: Numeric
  index, trade_reference = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.trade_reference.dissect(buffer, index, packet, parent)

  -- Contra Order Reference: Numeric
  index, contra_order_reference = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.contra_order_reference.dissect(buffer, index, packet, parent)

  -- Broker: Numeric
  index, broker = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.broker.dissect(buffer, index, packet, parent)

  -- Contra Broker: Numeric
  index, contra_broker = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.contra_broker.dissect(buffer, index, packet, parent)

  -- Trade Attribute: Alphanumeric
  index, trade_attribute = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.trade_attribute.dissect(buffer, index, packet, parent)

  -- Cross Type: Alphanumeric
  index, cross_type = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.cross_type.dissect(buffer, index, packet, parent)

  -- Settlement Terms: Alphanumeric
  index, settlement_terms = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.settlement_terms.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Form Trade Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_form_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.long_form_trade_message, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_form_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_form_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_form_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.trade_message = {}

-- Size: Trade Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.trade_message.size =
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.order_reference.size + 
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.buy_sell_indicator.size + 
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.shares.size + 
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.stock.size + 
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.price.size + 
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.trade_reference.size + 
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.contra_order_reference.size + 
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.broker.size + 
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.contra_broker.size + 
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.trade_attribute.size + 
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.cross_type.size + 
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.settlement_terms.size

-- Display: Trade Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Reference: Numeric
  index, order_reference = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.order_reference.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: Alphanumeric
  index, buy_sell_indicator = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Shares: Numeric
  index, shares = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.shares.dissect(buffer, index, packet, parent)

  -- Stock: Alphanumeric
  index, stock = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.stock.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.price.dissect(buffer, index, packet, parent)

  -- Trade Reference: Numeric
  index, trade_reference = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.trade_reference.dissect(buffer, index, packet, parent)

  -- Contra Order Reference: Numeric
  index, contra_order_reference = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.contra_order_reference.dissect(buffer, index, packet, parent)

  -- Broker: Numeric
  index, broker = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.broker.dissect(buffer, index, packet, parent)

  -- Contra Broker: Numeric
  index, contra_broker = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.contra_broker.dissect(buffer, index, packet, parent)

  -- Trade Attribute: Alphanumeric
  index, trade_attribute = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.trade_attribute.dissect(buffer, index, packet, parent)

  -- Cross Type: Alphanumeric
  index, cross_type = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.cross_type.dissect(buffer, index, packet, parent)

  -- Settlement Terms: Alphanumeric
  index, settlement_terms = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.settlement_terms.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.trade_message, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Long Form Order Cancel Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_form_order_cancel_message = {}

-- Size: Long Form Order Cancel Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_form_order_cancel_message.size =
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.order_reference.size + 
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_canceled_shares.size

-- Display: Long Form Order Cancel Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_form_order_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Form Order Cancel Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_form_order_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Reference: Numeric
  index, order_reference = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.order_reference.dissect(buffer, index, packet, parent)

  -- Long Canceled Shares: Numeric
  index, long_canceled_shares = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_canceled_shares.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Form Order Cancel Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_form_order_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.long_form_order_cancel_message, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_form_order_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_form_order_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_form_order_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.order_cancel_message = {}

-- Size: Order Cancel Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.order_cancel_message.size =
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.order_reference.size + 
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.canceled_shares.size

-- Display: Order Cancel Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.order_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.order_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Reference: Numeric
  index, order_reference = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.order_reference.dissect(buffer, index, packet, parent)

  -- Canceled Shares: Numeric
  index, canceled_shares = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.canceled_shares.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.order_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.order_cancel_message, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.order_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.order_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.order_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Long Form Order Execution Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_form_order_execution_message = {}

-- Size: Long Form Order Execution Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_form_order_execution_message.size =
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.order_reference.size + 
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_executed_shares.size + 
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.trade_reference.size + 
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.contra_order_reference.size + 
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.trade_attribute.size + 
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.broker.size + 
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.contra_broker.size

-- Display: Long Form Order Execution Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_form_order_execution_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Form Order Execution Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_form_order_execution_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Reference: Numeric
  index, order_reference = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.order_reference.dissect(buffer, index, packet, parent)

  -- Long Executed Shares: Numeric
  index, long_executed_shares = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_executed_shares.dissect(buffer, index, packet, parent)

  -- Trade Reference: Numeric
  index, trade_reference = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.trade_reference.dissect(buffer, index, packet, parent)

  -- Contra Order Reference: Numeric
  index, contra_order_reference = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.contra_order_reference.dissect(buffer, index, packet, parent)

  -- Trade Attribute: Alphanumeric
  index, trade_attribute = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.trade_attribute.dissect(buffer, index, packet, parent)

  -- Broker: Numeric
  index, broker = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.broker.dissect(buffer, index, packet, parent)

  -- Contra Broker: Numeric
  index, contra_broker = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.contra_broker.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Form Order Execution Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_form_order_execution_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.long_form_order_execution_message, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_form_order_execution_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_form_order_execution_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_form_order_execution_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Execution Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.order_execution_message = {}

-- Size: Order Execution Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.order_execution_message.size =
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.order_reference.size + 
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.executed_shares.size + 
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.trade_reference.size + 
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.contra_order_reference.size + 
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.trade_attribute.size + 
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.broker.size + 
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.contra_broker.size

-- Display: Order Execution Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.order_execution_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Execution Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.order_execution_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Reference: Numeric
  index, order_reference = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.order_reference.dissect(buffer, index, packet, parent)

  -- Executed Shares: Numeric
  index, executed_shares = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.executed_shares.dissect(buffer, index, packet, parent)

  -- Trade Reference: Numeric
  index, trade_reference = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.trade_reference.dissect(buffer, index, packet, parent)

  -- Contra Order Reference: Numeric
  index, contra_order_reference = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.contra_order_reference.dissect(buffer, index, packet, parent)

  -- Trade Attribute: Alphanumeric
  index, trade_attribute = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.trade_attribute.dissect(buffer, index, packet, parent)

  -- Broker: Numeric
  index, broker = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.broker.dissect(buffer, index, packet, parent)

  -- Contra Broker: Numeric
  index, contra_broker = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.contra_broker.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Execution Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.order_execution_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.order_execution_message, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.order_execution_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.order_execution_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.order_execution_message.fields(buffer, offset, packet, parent)
  end
end

-- Long Form Add Order Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_form_add_order_message = {}

-- Size: Long Form Add Order Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_form_add_order_message.size =
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.order_reference.size + 
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.buy_sell_indicator.size + 
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_shares.size + 
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.stock.size + 
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_price.size + 
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.broker.size

-- Display: Long Form Add Order Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_form_add_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Form Add Order Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_form_add_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Reference: Numeric
  index, order_reference = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.order_reference.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: Alphanumeric
  index, buy_sell_indicator = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Long Shares: Numeric
  index, long_shares = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_shares.dissect(buffer, index, packet, parent)

  -- Stock: Alphanumeric
  index, stock = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.stock.dissect(buffer, index, packet, parent)

  -- Long Price: Price
  index, long_price = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_price.dissect(buffer, index, packet, parent)

  -- Broker: Numeric
  index, broker = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.broker.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Form Add Order Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_form_add_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.long_form_add_order_message, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_form_add_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_form_add_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_form_add_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.add_order_message = {}

-- Size: Add Order Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.add_order_message.size =
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.order_reference.size + 
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.buy_sell_indicator.size + 
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.shares.size + 
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.stock.size + 
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.price.size + 
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.broker.size

-- Display: Add Order Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.add_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.add_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Reference: Numeric
  index, order_reference = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.order_reference.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: Alphanumeric
  index, buy_sell_indicator = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Shares: Numeric
  index, shares = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.shares.dissect(buffer, index, packet, parent)

  -- Stock: Alphanumeric
  index, stock = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.stock.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.price.dissect(buffer, index, packet, parent)

  -- Broker: Numeric
  index, broker = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.broker.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.add_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.add_order_message, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.add_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.add_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.add_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.payload = {}

-- Dispatch: Payload
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.payload.dispatch = {
  ["A"] = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.add_order_message.dissect,
  ["a"] = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_form_add_order_message.dissect,
  ["E"] = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.order_execution_message.dissect,
  ["e"] = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_form_order_execution_message.dissect,
  ["X"] = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.order_cancel_message.dissect,
  ["x"] = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_form_order_cancel_message.dissect,
  ["P"] = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.trade_message.dissect,
  ["p"] = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.long_form_trade_message.dissect,
  ["B"] = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.broken_trade_message.dissect,
  ["S"] = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.system_event_message.dissect,
  ["H"] = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.stock_status_message.dissect,
}

-- Dissect: Payload
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.payload.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.payload.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.message_header = {}

-- Size: Message Header
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.message_header.size =
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.length.size + 
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.timestamp.size + 
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.message_type.size

-- Display: Message Header
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.length.dissect(buffer, index, packet, parent)

  -- Timestamp: 8 Byte Ascii String
  index, timestamp = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.timestamp.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 11 values
  index, message_type = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.message_header, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.message = {}

-- Read runtime size of: Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Length
  local length = buffer(offset, 2):uint()

  return length + 2
end

-- Display: Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 3 fields
  index, message_header = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 11 branches
  index = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.message, buffer(offset, 0))
    local current = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Heartbeat
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.heartbeat = {}

-- Size: Heartbeat
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.heartbeat.size =
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.session.size

-- Display: Heartbeat
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.heartbeat.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.heartbeat.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.session.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.heartbeat.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.heartbeat, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.heartbeat.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.heartbeat.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.heartbeat.fields(buffer, offset, packet, parent)
  end
end

-- Messages
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.messages = {}

-- Dispatch: Messages
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.messages.dispatch = {
  [0] = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.heartbeat.dissect,
}

-- Dissect: Messages
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.messages.dissect = function(buffer, offset, packet, parent, message_count)
  local dissect = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.messages.dispatch[message_count]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Length
    local length = buffer(offset, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = length + 2

    -- Message: Struct of 2 fields
    offset = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end
end

-- Packet Header
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.packet_header = {}

-- Size: Packet Header
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.packet_header.size =
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.sequence.size + 
  nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.message_count.size

-- Display: Packet Header
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.sequence.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.packet = {}

-- Verify required size of Udp packet
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.packet_header.size
end

-- Dissect Packet
nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 2 fields
  index, packet_header = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Messages: Runtime Type with 2 branches
  index = nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.init()
end

-- Dissector for Nasdaq NasdaqCanada Chixmmd AsciiItch 1.1.3.5
function omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5, buffer(), omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.description, "("..buffer:len().." Bytes)")
  return nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq NasdaqCanada Chixmmd AsciiItch 1.1.3.5 (Udp)
local function omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5
  omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq NasdaqCanada Chixmmd AsciiItch 1.1.3.5
omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5:register_heuristic("udp", omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5_udp_heuristic)

-- Register Nasdaq NasdaqCanada Chixmmd AsciiItch 1.1.3.5 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_nasdaq_nasdaqcanada_chixmmd_asciiitch_v1_1_3_5)

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
--   Specification: Nasdaq Canada Multicast Market Data Specification CHIXMMD 1.1 V3.6_French.pdf
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
