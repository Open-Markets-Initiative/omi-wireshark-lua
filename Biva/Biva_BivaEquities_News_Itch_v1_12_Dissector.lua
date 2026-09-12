-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Biva BivaEquities News Itch 1.12 Protocol
local omi_biva_bivaequities_news_itch_v1_12 = Proto("Omi.Biva.BivaEquities.News.Itch.v1.12", "Biva BivaEquities News Itch 1.12")

-- Protocol table
local biva_bivaequities_news_itch_v1_12 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Biva BivaEquities News Itch 1.12 Fields
omi_biva_bivaequities_news_itch_v1_12.fields.currency = ProtoField.new("Currency", "biva.bivaequities.news.itch.v1.12.currency", ftypes.STRING)
omi_biva_bivaequities_news_itch_v1_12.fields.delisting_or_maturity_date = ProtoField.new("Delisting Or Maturity Date", "biva.bivaequities.news.itch.v1.12.delistingormaturitydate", ftypes.UINT32)
omi_biva_bivaequities_news_itch_v1_12.fields.delisting_time = ProtoField.new("Delisting Time", "biva.bivaequities.news.itch.v1.12.delistingtime", ftypes.UINT32)
omi_biva_bivaequities_news_itch_v1_12.fields.event_code = ProtoField.new("Event Code", "biva.bivaequities.news.itch.v1.12.eventcode", ftypes.STRING)
omi_biva_bivaequities_news_itch_v1_12.fields.group = ProtoField.new("Group", "biva.bivaequities.news.itch.v1.12.group", ftypes.STRING)
omi_biva_bivaequities_news_itch_v1_12.fields.instrument = ProtoField.new("Instrument", "biva.bivaequities.news.itch.v1.12.instrument", ftypes.STRING)
omi_biva_bivaequities_news_itch_v1_12.fields.isin = ProtoField.new("Isin", "biva.bivaequities.news.itch.v1.12.isin", ftypes.STRING)
omi_biva_bivaequities_news_itch_v1_12.fields.listing_exchange = ProtoField.new("Listing Exchange", "biva.bivaequities.news.itch.v1.12.listingexchange", ftypes.STRING)
omi_biva_bivaequities_news_itch_v1_12.fields.listing_type = ProtoField.new("Listing Type", "biva.bivaequities.news.itch.v1.12.listingtype", ftypes.STRING)
omi_biva_bivaequities_news_itch_v1_12.fields.message_count = ProtoField.new("Message Count", "biva.bivaequities.news.itch.v1.12.messagecount", ftypes.UINT16)
omi_biva_bivaequities_news_itch_v1_12.fields.message_length = ProtoField.new("Message Length", "biva.bivaequities.news.itch.v1.12.messagelength", ftypes.UINT16)
omi_biva_bivaequities_news_itch_v1_12.fields.message_type = ProtoField.new("Message Type", "biva.bivaequities.news.itch.v1.12.messagetype", ftypes.STRING)
omi_biva_bivaequities_news_itch_v1_12.fields.minimum_quantity = ProtoField.new("Minimum Quantity", "biva.bivaequities.news.itch.v1.12.minimumquantity", ftypes.UINT64)
omi_biva_bivaequities_news_itch_v1_12.fields.nanoseconds = ProtoField.new("Nanoseconds", "biva.bivaequities.news.itch.v1.12.nanoseconds", ftypes.UINT32)
omi_biva_bivaequities_news_itch_v1_12.fields.news_id = ProtoField.new("News Id", "biva.bivaequities.news.itch.v1.12.newsid", ftypes.UINT32)
omi_biva_bivaequities_news_itch_v1_12.fields.news_text = ProtoField.new("News Text", "biva.bivaequities.news.itch.v1.12.newstext", ftypes.STRING)
omi_biva_bivaequities_news_itch_v1_12.fields.orderbook = ProtoField.new("Orderbook", "biva.bivaequities.news.itch.v1.12.orderbook", ftypes.UINT32)
omi_biva_bivaequities_news_itch_v1_12.fields.participant_code = ProtoField.new("Participant Code", "biva.bivaequities.news.itch.v1.12.participantcode", ftypes.STRING)
omi_biva_bivaequities_news_itch_v1_12.fields.participant_id = ProtoField.new("Participant Id", "biva.bivaequities.news.itch.v1.12.participantid", ftypes.UINT32)
omi_biva_bivaequities_news_itch_v1_12.fields.price_decimals = ProtoField.new("Price Decimals", "biva.bivaequities.news.itch.v1.12.pricedecimals", ftypes.UINT32)
omi_biva_bivaequities_news_itch_v1_12.fields.price_start = ProtoField.new("Price Start", "biva.bivaequities.news.itch.v1.12.pricestart", ftypes.UINT32)
omi_biva_bivaequities_news_itch_v1_12.fields.price_tick_size = ProtoField.new("Price Tick Size", "biva.bivaequities.news.itch.v1.12.priceticksize", ftypes.UINT32)
omi_biva_bivaequities_news_itch_v1_12.fields.price_tick_size_table_id = ProtoField.new("Price Tick Size Table Id", "biva.bivaequities.news.itch.v1.12.priceticksizetableid", ftypes.UINT32)
omi_biva_bivaequities_news_itch_v1_12.fields.quantity_decimals = ProtoField.new("Quantity Decimals", "biva.bivaequities.news.itch.v1.12.quantitydecimals", ftypes.UINT32)
omi_biva_bivaequities_news_itch_v1_12.fields.quantity_start = ProtoField.new("Quantity Start", "biva.bivaequities.news.itch.v1.12.quantitystart", ftypes.UINT64)
omi_biva_bivaequities_news_itch_v1_12.fields.quantity_tick_size = ProtoField.new("Quantity Tick Size", "biva.bivaequities.news.itch.v1.12.quantityticksize", ftypes.UINT64)
omi_biva_bivaequities_news_itch_v1_12.fields.quantity_tick_size_table_id = ProtoField.new("Quantity Tick Size Table Id", "biva.bivaequities.news.itch.v1.12.quantityticksizetableid", ftypes.UINT32)
omi_biva_bivaequities_news_itch_v1_12.fields.quotation_basis = ProtoField.new("Quotation Basis", "biva.bivaequities.news.itch.v1.12.quotationbasis", ftypes.STRING)
omi_biva_bivaequities_news_itch_v1_12.fields.reference = ProtoField.new("Reference", "biva.bivaequities.news.itch.v1.12.reference", ftypes.STRING)
omi_biva_bivaequities_news_itch_v1_12.fields.sec_code = ProtoField.new("Sec Code", "biva.bivaequities.news.itch.v1.12.seccode", ftypes.STRING)
omi_biva_bivaequities_news_itch_v1_12.fields.second = ProtoField.new("Second", "biva.bivaequities.news.itch.v1.12.second", ftypes.UINT32)
omi_biva_bivaequities_news_itch_v1_12.fields.sequence_number = ProtoField.new("Sequence Number", "biva.bivaequities.news.itch.v1.12.sequencenumber", ftypes.UINT64)
omi_biva_bivaequities_news_itch_v1_12.fields.session = ProtoField.new("Session", "biva.bivaequities.news.itch.v1.12.session", ftypes.STRING)
omi_biva_bivaequities_news_itch_v1_12.fields.tick_size_table_id = ProtoField.new("Tick Size Table Id", "biva.bivaequities.news.itch.v1.12.ticksizetableid", ftypes.UINT32)
omi_biva_bivaequities_news_itch_v1_12.fields.title = ProtoField.new("Title", "biva.bivaequities.news.itch.v1.12.title", ftypes.STRING)
omi_biva_bivaequities_news_itch_v1_12.fields.trading_action_reason = ProtoField.new("Trading Action Reason", "biva.bivaequities.news.itch.v1.12.tradingactionreason", ftypes.STRING)
omi_biva_bivaequities_news_itch_v1_12.fields.trading_state = ProtoField.new("Trading State", "biva.bivaequities.news.itch.v1.12.tradingstate", ftypes.STRING)
omi_biva_bivaequities_news_itch_v1_12.fields.turnover_ratio = ProtoField.new("Turnover Ratio", "biva.bivaequities.news.itch.v1.12.turnoverratio", ftypes.STRING)

-- Biva BivaEquities News Itch 1.12 Framing
omi_biva_bivaequities_news_itch_v1_12.fields.message = ProtoField.new("Message", "biva.bivaequities.news.itch.v1.12.message", ftypes.STRING)
omi_biva_bivaequities_news_itch_v1_12.fields.message_header = ProtoField.new("Message Header", "biva.bivaequities.news.itch.v1.12.messageheader", ftypes.STRING)
omi_biva_bivaequities_news_itch_v1_12.fields.packet = ProtoField.new("Packet", "biva.bivaequities.news.itch.v1.12.packet", ftypes.STRING)
omi_biva_bivaequities_news_itch_v1_12.fields.packet_header = ProtoField.new("Packet Header", "biva.bivaequities.news.itch.v1.12.packetheader", ftypes.STRING)

-- Biva BivaEquities News 1.12 Application Messages
omi_biva_bivaequities_news_itch_v1_12.fields.news_message = ProtoField.new("News Message", "biva.bivaequities.news.itch.v1.12.newsmessage", ftypes.STRING)
omi_biva_bivaequities_news_itch_v1_12.fields.orderbook_directory_message = ProtoField.new("Orderbook Directory Message", "biva.bivaequities.news.itch.v1.12.orderbookdirectorymessage", ftypes.STRING)
omi_biva_bivaequities_news_itch_v1_12.fields.orderbook_trading_action_message = ProtoField.new("Orderbook Trading Action Message", "biva.bivaequities.news.itch.v1.12.orderbooktradingactionmessage", ftypes.STRING)
omi_biva_bivaequities_news_itch_v1_12.fields.participant_directory_message = ProtoField.new("Participant Directory Message", "biva.bivaequities.news.itch.v1.12.participantdirectorymessage", ftypes.STRING)
omi_biva_bivaequities_news_itch_v1_12.fields.price_tick_size_message = ProtoField.new("Price Tick Size Message", "biva.bivaequities.news.itch.v1.12.priceticksizemessage", ftypes.STRING)
omi_biva_bivaequities_news_itch_v1_12.fields.quantity_tick_size_message = ProtoField.new("Quantity Tick Size Message", "biva.bivaequities.news.itch.v1.12.quantityticksizemessage", ftypes.STRING)
omi_biva_bivaequities_news_itch_v1_12.fields.system_event_message = ProtoField.new("System Event Message", "biva.bivaequities.news.itch.v1.12.systemeventmessage", ftypes.STRING)
omi_biva_bivaequities_news_itch_v1_12.fields.time_stamp_seconds_message = ProtoField.new("Time Stamp Seconds Message", "biva.bivaequities.news.itch.v1.12.timestampsecondsmessage", ftypes.STRING)

-- Biva BivaEquities News Itch 1.12 generated fields
omi_biva_bivaequities_news_itch_v1_12.fields.message_index = ProtoField.new("Message Index", "biva.bivaequities.news.itch.v1.12.messageindex", ftypes.UINT16)
omi_biva_bivaequities_news_itch_v1_12.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "biva.bivaequities.news.itch.v1.12.messagesequencenumber", ftypes.UINT64)
omi_biva_bivaequities_news_itch_v1_12.fields.timestamp = ProtoField.new("Timestamp", "biva.bivaequities.news.itch.v1.12.timestamp", ftypes.UINT64)

-----------------------------------------------------------------------
-- Biva BivaEquities News Itch 1.12 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
biva_bivaequities_news_itch_v1_12.timestamp_format = 2

-- Hours behind UTC (CST) for midnight calculation
biva_bivaequities_news_itch_v1_12.utc_offset_hours = 6

-- Timestamp format (true = decimal-scaled, false = raw mantissa)
biva_bivaequities_news_itch_v1_12.format_timestamp = true


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Biva BivaEquities News Itch 1.12 Element Dissection Options
show.structs = true
show.headers = true
show.application_messages = true
show.indexes = true
show.sequences = true

-- Register Biva BivaEquities News Itch 1.12 Show Options
omi_biva_bivaequities_news_itch_v1_12.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_biva_bivaequities_news_itch_v1_12.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_biva_bivaequities_news_itch_v1_12.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_biva_bivaequities_news_itch_v1_12.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_biva_bivaequities_news_itch_v1_12.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")
omi_biva_bivaequities_news_itch_v1_12.prefs.format_timestamp = Pref.bool("Format Timestamp", true, "Compose Timestamp with the stored seconds anchor (off = raw nanoseconds)")

omi_biva_bivaequities_news_itch_v1_12.prefs.timestamp_format = Pref.enum("Nanoseconds Format", 2, "Nanoseconds display format", timestamp_format_enum, false)
omi_biva_bivaequities_news_itch_v1_12.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 6, "Hours behind UTC (CST) for midnight calculation")

-- Handle changed preferences
function omi_biva_bivaequities_news_itch_v1_12.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_biva_bivaequities_news_itch_v1_12.prefs.show_application_messages then
    show.application_messages = omi_biva_bivaequities_news_itch_v1_12.prefs.show_application_messages
  end
  if show.headers ~= omi_biva_bivaequities_news_itch_v1_12.prefs.show_headers then
    show.headers = omi_biva_bivaequities_news_itch_v1_12.prefs.show_headers
  end
  if show.structs ~= omi_biva_bivaequities_news_itch_v1_12.prefs.show_structs then
    show.structs = omi_biva_bivaequities_news_itch_v1_12.prefs.show_structs
  end
  if show.indexes ~= omi_biva_bivaequities_news_itch_v1_12.prefs.show_indexes then
    show.indexes = omi_biva_bivaequities_news_itch_v1_12.prefs.show_indexes
  end
  if show.sequences ~= omi_biva_bivaequities_news_itch_v1_12.prefs.show_sequences then
    show.sequences = omi_biva_bivaequities_news_itch_v1_12.prefs.show_sequences
  end
  if biva_bivaequities_news_itch_v1_12.format_timestamp ~= omi_biva_bivaequities_news_itch_v1_12.prefs.format_timestamp then
    biva_bivaequities_news_itch_v1_12.format_timestamp = omi_biva_bivaequities_news_itch_v1_12.prefs.format_timestamp
  end
  if biva_bivaequities_news_itch_v1_12.timestamp_format ~= omi_biva_bivaequities_news_itch_v1_12.prefs.timestamp_format then
    biva_bivaequities_news_itch_v1_12.timestamp_format = omi_biva_bivaequities_news_itch_v1_12.prefs.timestamp_format
  end
  if biva_bivaequities_news_itch_v1_12.utc_offset_hours ~= omi_biva_bivaequities_news_itch_v1_12.prefs.utc_offset_hours then
    biva_bivaequities_news_itch_v1_12.utc_offset_hours = omi_biva_bivaequities_news_itch_v1_12.prefs.utc_offset_hours
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
biva_bivaequities_news_itch_v1_12.conversation = {}
biva_bivaequities_news_itch_v1_12.conversation.flows = {}

-- Conversation key for the current packet (src/dst tuple)
biva_bivaequities_news_itch_v1_12.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
biva_bivaequities_news_itch_v1_12.conversation.data = function(packet)
  local key = biva_bivaequities_news_itch_v1_12.conversation.key(packet)
  local data = biva_bivaequities_news_itch_v1_12.conversation.flows[key]
  if data == nil then
    data = { second = { last = nil, frames = {} } }
    biva_bivaequities_news_itch_v1_12.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
biva_bivaequities_news_itch_v1_12.conversation.current = nil


-----------------------------------------------------------------------
-- Protocol Functions
-----------------------------------------------------------------------

-- trim trailing spaces
trim_right_spaces = function(str)
  local finish = str:len()

  for i = 1, finish do
    if str:byte(i) == 0x20 then
      return str:sub(1, i - 1)
    end
  end

  return str
end


-----------------------------------------------------------------------
-- Biva BivaEquities News Itch 1.12 Fields
-----------------------------------------------------------------------

-- Currency
biva_bivaequities_news_itch_v1_12.currency = {}

-- Size: Currency
biva_bivaequities_news_itch_v1_12.currency.size = 3

-- Display: Currency
biva_bivaequities_news_itch_v1_12.currency.display = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
biva_bivaequities_news_itch_v1_12.currency.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_news_itch_v1_12.currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = biva_bivaequities_news_itch_v1_12.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_news_itch_v1_12.fields.currency, range, value, display)

  return offset + length, value
end

-- Delisting Or Maturity Date
biva_bivaequities_news_itch_v1_12.delisting_or_maturity_date = {}

-- Size: Delisting Or Maturity Date
biva_bivaequities_news_itch_v1_12.delisting_or_maturity_date.size = 4

-- Display: Delisting Or Maturity Date
biva_bivaequities_news_itch_v1_12.delisting_or_maturity_date.display = function(value)
  return "Delisting Or Maturity Date: "..value
end

-- Dissect: Delisting Or Maturity Date
biva_bivaequities_news_itch_v1_12.delisting_or_maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_news_itch_v1_12.delisting_or_maturity_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = biva_bivaequities_news_itch_v1_12.delisting_or_maturity_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_news_itch_v1_12.fields.delisting_or_maturity_date, range, value, display)

  return offset + length, value
end

-- Delisting Time
biva_bivaequities_news_itch_v1_12.delisting_time = {}

-- Size: Delisting Time
biva_bivaequities_news_itch_v1_12.delisting_time.size = 4

-- Display: Delisting Time
biva_bivaequities_news_itch_v1_12.delisting_time.display = function(value)
  return "Delisting Time: "..value
end

-- Dissect: Delisting Time
biva_bivaequities_news_itch_v1_12.delisting_time.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_news_itch_v1_12.delisting_time.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = biva_bivaequities_news_itch_v1_12.delisting_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_news_itch_v1_12.fields.delisting_time, range, value, display)

  return offset + length, value
end

-- Event Code
biva_bivaequities_news_itch_v1_12.event_code = {}

-- Size: Event Code
biva_bivaequities_news_itch_v1_12.event_code.size = 1

-- Display: Event Code
biva_bivaequities_news_itch_v1_12.event_code.display = function(value)
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
  if value == "V" then
    return "Event Code: Scheduled Auction Starts (V)"
  end
  if value == "U" then
    return "Event Code: Scheduled Auction Closes (U)"
  end
  if value == "P" then
    return "Event Code: Start Of Post Close Session (P)"
  end
  if value == "T" then
    return "Event Code: End Of Post Close Session (T)"
  end
  if value == "E" then
    return "Event Code: End Of System Hours (E)"
  end
  if value == "C" then
    return "Event Code: End Of Messages (C)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
biva_bivaequities_news_itch_v1_12.event_code.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_news_itch_v1_12.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = biva_bivaequities_news_itch_v1_12.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_news_itch_v1_12.fields.event_code, range, value, display)

  return offset + length, value
end

-- Group
biva_bivaequities_news_itch_v1_12.group = {}

-- Size: Group
biva_bivaequities_news_itch_v1_12.group.size = 8

-- Display: Group
biva_bivaequities_news_itch_v1_12.group.display = function(value)
  return "Group: "..value
end

-- Dissect: Group
biva_bivaequities_news_itch_v1_12.group.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_news_itch_v1_12.group.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = biva_bivaequities_news_itch_v1_12.group.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_news_itch_v1_12.fields.group, range, value, display)

  return offset + length, value
end

-- Instrument
biva_bivaequities_news_itch_v1_12.instrument = {}

-- Size: Instrument
biva_bivaequities_news_itch_v1_12.instrument.size = 12

-- Display: Instrument
biva_bivaequities_news_itch_v1_12.instrument.display = function(value)
  return "Instrument: "..value
end

-- Dissect: Instrument
biva_bivaequities_news_itch_v1_12.instrument.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_news_itch_v1_12.instrument.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = biva_bivaequities_news_itch_v1_12.instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_news_itch_v1_12.fields.instrument, range, value, display)

  return offset + length, value
end

-- Isin
biva_bivaequities_news_itch_v1_12.isin = {}

-- Size: Isin
biva_bivaequities_news_itch_v1_12.isin.size = 12

-- Display: Isin
biva_bivaequities_news_itch_v1_12.isin.display = function(value)
  return "Isin: "..value
end

-- Dissect: Isin
biva_bivaequities_news_itch_v1_12.isin.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_news_itch_v1_12.isin.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = biva_bivaequities_news_itch_v1_12.isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_news_itch_v1_12.fields.isin, range, value, display)

  return offset + length, value
end

-- Listing Exchange
biva_bivaequities_news_itch_v1_12.listing_exchange = {}

-- Size: Listing Exchange
biva_bivaequities_news_itch_v1_12.listing_exchange.size = 4

-- Display: Listing Exchange
biva_bivaequities_news_itch_v1_12.listing_exchange.display = function(value)
  return "Listing Exchange: "..value
end

-- Dissect: Listing Exchange
biva_bivaequities_news_itch_v1_12.listing_exchange.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_news_itch_v1_12.listing_exchange.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = biva_bivaequities_news_itch_v1_12.listing_exchange.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_news_itch_v1_12.fields.listing_exchange, range, value, display)

  return offset + length, value
end

-- Listing Type
biva_bivaequities_news_itch_v1_12.listing_type = {}

-- Size: Listing Type
biva_bivaequities_news_itch_v1_12.listing_type.size = 1

-- Display: Listing Type
biva_bivaequities_news_itch_v1_12.listing_type.display = function(value)
  if value == "R" then
    return "Listing Type: Regular Securities (R)"
  end
  if value == "S" then
    return "Listing Type: Sub Rm Securities (S)"
  end

  return "Listing Type: Unknown("..value..")"
end

-- Dissect: Listing Type
biva_bivaequities_news_itch_v1_12.listing_type.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_news_itch_v1_12.listing_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = biva_bivaequities_news_itch_v1_12.listing_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_news_itch_v1_12.fields.listing_type, range, value, display)

  return offset + length, value
end

-- Message Count
biva_bivaequities_news_itch_v1_12.message_count = {}

-- Size: Message Count
biva_bivaequities_news_itch_v1_12.message_count.size = 2

-- Display: Message Count
biva_bivaequities_news_itch_v1_12.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
biva_bivaequities_news_itch_v1_12.message_count.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_news_itch_v1_12.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = biva_bivaequities_news_itch_v1_12.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_news_itch_v1_12.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
biva_bivaequities_news_itch_v1_12.message_length = {}

-- Size: Message Length
biva_bivaequities_news_itch_v1_12.message_length.size = 2

-- Display: Message Length
biva_bivaequities_news_itch_v1_12.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
biva_bivaequities_news_itch_v1_12.message_length.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_news_itch_v1_12.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = biva_bivaequities_news_itch_v1_12.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_news_itch_v1_12.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
biva_bivaequities_news_itch_v1_12.message_type = {}

-- Size: Message Type
biva_bivaequities_news_itch_v1_12.message_type.size = 1

-- Display: Message Type
biva_bivaequities_news_itch_v1_12.message_type.display = function(value)
  if value == "T" then
    return "Message Type: Time Stamp Seconds Message (T)"
  end
  if value == "S" then
    return "Message Type: System Event Message (S)"
  end
  if value == "L" then
    return "Message Type: Price Tick Size Message (L)"
  end
  if value == "M" then
    return "Message Type: Quantity Tick Size Message (M)"
  end
  if value == "R" then
    return "Message Type: Orderbook Directory Message (R)"
  end
  if value == "F" then
    return "Message Type: Participant Directory Message (F)"
  end
  if value == "H" then
    return "Message Type: Orderbook Trading Action Message (H)"
  end
  if value == "N" then
    return "Message Type: News Message (N)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
biva_bivaequities_news_itch_v1_12.message_type.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_news_itch_v1_12.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = biva_bivaequities_news_itch_v1_12.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_news_itch_v1_12.fields.message_type, range, value, display)

  return offset + length, value
end

-- Minimum Quantity
biva_bivaequities_news_itch_v1_12.minimum_quantity = {}

-- Size: Minimum Quantity
biva_bivaequities_news_itch_v1_12.minimum_quantity.size = 8

-- Display: Minimum Quantity
biva_bivaequities_news_itch_v1_12.minimum_quantity.display = function(value)
  return "Minimum Quantity: "..value
end

-- Dissect: Minimum Quantity
biva_bivaequities_news_itch_v1_12.minimum_quantity.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_news_itch_v1_12.minimum_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = biva_bivaequities_news_itch_v1_12.minimum_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_news_itch_v1_12.fields.minimum_quantity, range, value, display)

  return offset + length, value
end

-- Nanoseconds
biva_bivaequities_news_itch_v1_12.nanoseconds = {}

-- Size: Nanoseconds
biva_bivaequities_news_itch_v1_12.nanoseconds.size = 4

-- Display: Nanoseconds
biva_bivaequities_news_itch_v1_12.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
biva_bivaequities_news_itch_v1_12.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_news_itch_v1_12.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = biva_bivaequities_news_itch_v1_12.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_news_itch_v1_12.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- News Id
biva_bivaequities_news_itch_v1_12.news_id = {}

-- Size: News Id
biva_bivaequities_news_itch_v1_12.news_id.size = 4

-- Display: News Id
biva_bivaequities_news_itch_v1_12.news_id.display = function(value)
  return "News Id: "..value
end

-- Dissect: News Id
biva_bivaequities_news_itch_v1_12.news_id.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_news_itch_v1_12.news_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = biva_bivaequities_news_itch_v1_12.news_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_news_itch_v1_12.fields.news_id, range, value, display)

  return offset + length, value
end

-- News Text
biva_bivaequities_news_itch_v1_12.news_text = {}

-- Size: News Text
biva_bivaequities_news_itch_v1_12.news_text.size = function(buffer, offset)
  local maximum = 511
  local terminator = 0
  local length = 0
  while length < maximum and buffer(offset + length, 1):uint() ~= terminator do
    length = length + 1
  end
  -- consume the terminator byte itself when present
  if length < maximum and buffer:len() > offset + length and buffer(offset + length, 1):uint() == terminator then
    length = length + 1
  end

  return length
end

-- Display: News Text
biva_bivaequities_news_itch_v1_12.news_text.display = function(value)
  -- Check if field has value
  if value == "" then
    return "News Text: No Value"
  end

  return "News Text: "..value
end

-- Dissect: News Text
biva_bivaequities_news_itch_v1_12.news_text.dissect = function(buffer, offset, packet, parent)
  local maximum = 511
  local terminator = 0
  local length = 0
  while length < maximum and buffer(offset + length, 1):uint() ~= terminator do
    length = length + 1
  end
  -- consume the terminator byte itself when present
  if length < maximum and buffer:len() > offset + length and buffer(offset + length, 1):uint() == terminator then
    length = length + 1
  end

  local range = buffer(offset, length)
  local value = range:string()
  local display = biva_bivaequities_news_itch_v1_12.news_text.display(value, packet, parent)

  parent:add(omi_biva_bivaequities_news_itch_v1_12.fields.news_text, range, value, display)

  return offset + length, value
end

-- Orderbook
biva_bivaequities_news_itch_v1_12.orderbook = {}

-- Size: Orderbook
biva_bivaequities_news_itch_v1_12.orderbook.size = 4

-- Display: Orderbook
biva_bivaequities_news_itch_v1_12.orderbook.display = function(value)
  return "Orderbook: "..value
end

-- Dissect: Orderbook
biva_bivaequities_news_itch_v1_12.orderbook.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_news_itch_v1_12.orderbook.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = biva_bivaequities_news_itch_v1_12.orderbook.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_news_itch_v1_12.fields.orderbook, range, value, display)

  return offset + length, value
end

-- Participant Code
biva_bivaequities_news_itch_v1_12.participant_code = {}

-- Size: Participant Code
biva_bivaequities_news_itch_v1_12.participant_code.size = 12

-- Display: Participant Code
biva_bivaequities_news_itch_v1_12.participant_code.display = function(value)
  return "Participant Code: "..value
end

-- Dissect: Participant Code
biva_bivaequities_news_itch_v1_12.participant_code.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_news_itch_v1_12.participant_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = biva_bivaequities_news_itch_v1_12.participant_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_news_itch_v1_12.fields.participant_code, range, value, display)

  return offset + length, value
end

-- Participant Id
biva_bivaequities_news_itch_v1_12.participant_id = {}

-- Size: Participant Id
biva_bivaequities_news_itch_v1_12.participant_id.size = 4

-- Display: Participant Id
biva_bivaequities_news_itch_v1_12.participant_id.display = function(value)
  return "Participant Id: "..value
end

-- Dissect: Participant Id
biva_bivaequities_news_itch_v1_12.participant_id.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_news_itch_v1_12.participant_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = biva_bivaequities_news_itch_v1_12.participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_news_itch_v1_12.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Price Decimals
biva_bivaequities_news_itch_v1_12.price_decimals = {}

-- Size: Price Decimals
biva_bivaequities_news_itch_v1_12.price_decimals.size = 4

-- Display: Price Decimals
biva_bivaequities_news_itch_v1_12.price_decimals.display = function(value)
  return "Price Decimals: "..value
end

-- Dissect: Price Decimals
biva_bivaequities_news_itch_v1_12.price_decimals.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_news_itch_v1_12.price_decimals.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = biva_bivaequities_news_itch_v1_12.price_decimals.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_news_itch_v1_12.fields.price_decimals, range, value, display)

  return offset + length, value
end

-- Price Start
biva_bivaequities_news_itch_v1_12.price_start = {}

-- Size: Price Start
biva_bivaequities_news_itch_v1_12.price_start.size = 4

-- Display: Price Start
biva_bivaequities_news_itch_v1_12.price_start.display = function(value)
  return "Price Start: "..value
end

-- Dissect: Price Start
biva_bivaequities_news_itch_v1_12.price_start.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_news_itch_v1_12.price_start.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = biva_bivaequities_news_itch_v1_12.price_start.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_news_itch_v1_12.fields.price_start, range, value, display)

  return offset + length, value
end

-- Price Tick Size
biva_bivaequities_news_itch_v1_12.price_tick_size = {}

-- Size: Price Tick Size
biva_bivaequities_news_itch_v1_12.price_tick_size.size = 4

-- Display: Price Tick Size
biva_bivaequities_news_itch_v1_12.price_tick_size.display = function(value)
  return "Price Tick Size: "..value
end

-- Dissect: Price Tick Size
biva_bivaequities_news_itch_v1_12.price_tick_size.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_news_itch_v1_12.price_tick_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = biva_bivaequities_news_itch_v1_12.price_tick_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_news_itch_v1_12.fields.price_tick_size, range, value, display)

  return offset + length, value
end

-- Price Tick Size Table Id
biva_bivaequities_news_itch_v1_12.price_tick_size_table_id = {}

-- Size: Price Tick Size Table Id
biva_bivaequities_news_itch_v1_12.price_tick_size_table_id.size = 4

-- Display: Price Tick Size Table Id
biva_bivaequities_news_itch_v1_12.price_tick_size_table_id.display = function(value)
  return "Price Tick Size Table Id: "..value
end

-- Dissect: Price Tick Size Table Id
biva_bivaequities_news_itch_v1_12.price_tick_size_table_id.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_news_itch_v1_12.price_tick_size_table_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = biva_bivaequities_news_itch_v1_12.price_tick_size_table_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_news_itch_v1_12.fields.price_tick_size_table_id, range, value, display)

  return offset + length, value
end

-- Quantity Decimals
biva_bivaequities_news_itch_v1_12.quantity_decimals = {}

-- Size: Quantity Decimals
biva_bivaequities_news_itch_v1_12.quantity_decimals.size = 4

-- Display: Quantity Decimals
biva_bivaequities_news_itch_v1_12.quantity_decimals.display = function(value)
  return "Quantity Decimals: "..value
end

-- Dissect: Quantity Decimals
biva_bivaequities_news_itch_v1_12.quantity_decimals.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_news_itch_v1_12.quantity_decimals.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = biva_bivaequities_news_itch_v1_12.quantity_decimals.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_news_itch_v1_12.fields.quantity_decimals, range, value, display)

  return offset + length, value
end

-- Quantity Start
biva_bivaequities_news_itch_v1_12.quantity_start = {}

-- Size: Quantity Start
biva_bivaequities_news_itch_v1_12.quantity_start.size = 8

-- Display: Quantity Start
biva_bivaequities_news_itch_v1_12.quantity_start.display = function(value)
  return "Quantity Start: "..value
end

-- Dissect: Quantity Start
biva_bivaequities_news_itch_v1_12.quantity_start.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_news_itch_v1_12.quantity_start.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = biva_bivaequities_news_itch_v1_12.quantity_start.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_news_itch_v1_12.fields.quantity_start, range, value, display)

  return offset + length, value
end

-- Quantity Tick Size
biva_bivaequities_news_itch_v1_12.quantity_tick_size = {}

-- Size: Quantity Tick Size
biva_bivaequities_news_itch_v1_12.quantity_tick_size.size = 8

-- Display: Quantity Tick Size
biva_bivaequities_news_itch_v1_12.quantity_tick_size.display = function(value)
  return "Quantity Tick Size: "..value
end

-- Dissect: Quantity Tick Size
biva_bivaequities_news_itch_v1_12.quantity_tick_size.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_news_itch_v1_12.quantity_tick_size.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = biva_bivaequities_news_itch_v1_12.quantity_tick_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_news_itch_v1_12.fields.quantity_tick_size, range, value, display)

  return offset + length, value
end

-- Quantity Tick Size Table Id
biva_bivaequities_news_itch_v1_12.quantity_tick_size_table_id = {}

-- Size: Quantity Tick Size Table Id
biva_bivaequities_news_itch_v1_12.quantity_tick_size_table_id.size = 4

-- Display: Quantity Tick Size Table Id
biva_bivaequities_news_itch_v1_12.quantity_tick_size_table_id.display = function(value)
  return "Quantity Tick Size Table Id: "..value
end

-- Dissect: Quantity Tick Size Table Id
biva_bivaequities_news_itch_v1_12.quantity_tick_size_table_id.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_news_itch_v1_12.quantity_tick_size_table_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = biva_bivaequities_news_itch_v1_12.quantity_tick_size_table_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_news_itch_v1_12.fields.quantity_tick_size_table_id, range, value, display)

  return offset + length, value
end

-- Quotation Basis
biva_bivaequities_news_itch_v1_12.quotation_basis = {}

-- Size: Quotation Basis
biva_bivaequities_news_itch_v1_12.quotation_basis.size = 3

-- Display: Quotation Basis
biva_bivaequities_news_itch_v1_12.quotation_basis.display = function(value)
  return "Quotation Basis: "..value
end

-- Dissect: Quotation Basis
biva_bivaequities_news_itch_v1_12.quotation_basis.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_news_itch_v1_12.quotation_basis.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = biva_bivaequities_news_itch_v1_12.quotation_basis.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_news_itch_v1_12.fields.quotation_basis, range, value, display)

  return offset + length, value
end

-- Reference
biva_bivaequities_news_itch_v1_12.reference = {}

-- Size: Reference
biva_bivaequities_news_itch_v1_12.reference.size = function(buffer, offset)
  local maximum = 255
  local terminator = 0
  local length = 0
  while length < maximum and buffer(offset + length, 1):uint() ~= terminator do
    length = length + 1
  end
  -- consume the terminator byte itself when present
  if length < maximum and buffer:len() > offset + length and buffer(offset + length, 1):uint() == terminator then
    length = length + 1
  end

  return length
end

-- Display: Reference
biva_bivaequities_news_itch_v1_12.reference.display = function(value)
  -- Check if field has value
  if value == "" then
    return "Reference: No Value"
  end

  return "Reference: "..value
end

-- Dissect: Reference
biva_bivaequities_news_itch_v1_12.reference.dissect = function(buffer, offset, packet, parent)
  local maximum = 255
  local terminator = 0
  local length = 0
  while length < maximum and buffer(offset + length, 1):uint() ~= terminator do
    length = length + 1
  end
  -- consume the terminator byte itself when present
  if length < maximum and buffer:len() > offset + length and buffer(offset + length, 1):uint() == terminator then
    length = length + 1
  end

  local range = buffer(offset, length)
  local value = range:string()
  local display = biva_bivaequities_news_itch_v1_12.reference.display(value, packet, parent)

  parent:add(omi_biva_bivaequities_news_itch_v1_12.fields.reference, range, value, display)

  return offset + length, value
end

-- Sec Code
biva_bivaequities_news_itch_v1_12.sec_code = {}

-- Size: Sec Code
biva_bivaequities_news_itch_v1_12.sec_code.size = 15

-- Display: Sec Code
biva_bivaequities_news_itch_v1_12.sec_code.display = function(value)
  return "Sec Code: "..value
end

-- Dissect: Sec Code
biva_bivaequities_news_itch_v1_12.sec_code.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_news_itch_v1_12.sec_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = biva_bivaequities_news_itch_v1_12.sec_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_news_itch_v1_12.fields.sec_code, range, value, display)

  return offset + length, value
end

-- Second
biva_bivaequities_news_itch_v1_12.second = {}

-- Size: Second
biva_bivaequities_news_itch_v1_12.second.size = 4

-- Store: Second
biva_bivaequities_news_itch_v1_12.second.current = nil

-- Generated: Second
biva_bivaequities_news_itch_v1_12.second.generated = function(value, range, packet, parent)
  local display = biva_bivaequities_news_itch_v1_12.second.display(value)
  local second = parent:add(omi_biva_bivaequities_news_itch_v1_12.fields.second, range, value, display)
  second:set_generated()
end

-- Display: Second
biva_bivaequities_news_itch_v1_12.second.display = function(value)
  return "Second: "..value
end

-- Dissect: Second
biva_bivaequities_news_itch_v1_12.second.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_news_itch_v1_12.second.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = biva_bivaequities_news_itch_v1_12.second.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_news_itch_v1_12.fields.second, range, value, display)

  return offset + length, value
end

-- Sequence Number
biva_bivaequities_news_itch_v1_12.sequence_number = {}

-- Size: Sequence Number
biva_bivaequities_news_itch_v1_12.sequence_number.size = 8

-- Display: Sequence Number
biva_bivaequities_news_itch_v1_12.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
biva_bivaequities_news_itch_v1_12.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_news_itch_v1_12.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = biva_bivaequities_news_itch_v1_12.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_news_itch_v1_12.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
biva_bivaequities_news_itch_v1_12.session = {}

-- Size: Session
biva_bivaequities_news_itch_v1_12.session.size = 10

-- Display: Session
biva_bivaequities_news_itch_v1_12.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
biva_bivaequities_news_itch_v1_12.session.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_news_itch_v1_12.session.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = biva_bivaequities_news_itch_v1_12.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_news_itch_v1_12.fields.session, range, value, display)

  return offset + length, value
end

-- Tick Size Table Id
biva_bivaequities_news_itch_v1_12.tick_size_table_id = {}

-- Size: Tick Size Table Id
biva_bivaequities_news_itch_v1_12.tick_size_table_id.size = 4

-- Display: Tick Size Table Id
biva_bivaequities_news_itch_v1_12.tick_size_table_id.display = function(value)
  return "Tick Size Table Id: "..value
end

-- Dissect: Tick Size Table Id
biva_bivaequities_news_itch_v1_12.tick_size_table_id.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_news_itch_v1_12.tick_size_table_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = biva_bivaequities_news_itch_v1_12.tick_size_table_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_news_itch_v1_12.fields.tick_size_table_id, range, value, display)

  return offset + length, value
end

-- Title
biva_bivaequities_news_itch_v1_12.title = {}

-- Size: Title
biva_bivaequities_news_itch_v1_12.title.size = function(buffer, offset)
  local maximum = 80
  local terminator = 0
  local length = 0
  while length < maximum and buffer(offset + length, 1):uint() ~= terminator do
    length = length + 1
  end
  -- consume the terminator byte itself when present
  if length < maximum and buffer:len() > offset + length and buffer(offset + length, 1):uint() == terminator then
    length = length + 1
  end

  return length
end

-- Display: Title
biva_bivaequities_news_itch_v1_12.title.display = function(value)
  -- Check if field has value
  if value == "" then
    return "Title: No Value"
  end

  return "Title: "..value
end

-- Dissect: Title
biva_bivaequities_news_itch_v1_12.title.dissect = function(buffer, offset, packet, parent)
  local maximum = 80
  local terminator = 0
  local length = 0
  while length < maximum and buffer(offset + length, 1):uint() ~= terminator do
    length = length + 1
  end
  -- consume the terminator byte itself when present
  if length < maximum and buffer:len() > offset + length and buffer(offset + length, 1):uint() == terminator then
    length = length + 1
  end

  local range = buffer(offset, length)
  local value = range:string()
  local display = biva_bivaequities_news_itch_v1_12.title.display(value, packet, parent)

  parent:add(omi_biva_bivaequities_news_itch_v1_12.fields.title, range, value, display)

  return offset + length, value
end

-- Trading Action Reason
biva_bivaequities_news_itch_v1_12.trading_action_reason = {}

-- Size: Trading Action Reason
biva_bivaequities_news_itch_v1_12.trading_action_reason.size = 1

-- Display: Trading Action Reason
biva_bivaequities_news_itch_v1_12.trading_action_reason.display = function(value)
  if value == "N" then
    return "Trading Action Reason: Normal Trading (N)"
  end
  if value == "H" then
    return "Trading Action Reason: Volatility Auction (H)"
  end
  if value == "A" then
    return "Trading Action Reason: Continuous Auction Start (A)"
  end
  if value == "B" then
    return "Trading Action Reason: Continuous Auction End (B)"
  end
  if value == "Q" then
    return "Trading Action Reason: News Pending (Q)"
  end
  if value == "S" then
    return "Trading Action Reason: Static Price Band Breach (S)"
  end
  if value == "M" then
    return "Trading Action Reason: Market Surveillance Suspension (M)"
  end
  if value == "O" then
    return "Trading Action Reason: Suspension By Market Of Origin (O)"
  end
  if value == "C" then
    return "Trading Action Reason: Non Compliance (C)"
  end
  if value == "I" then
    return "Trading Action Reason: Start Of Indication Of Interest (I)"
  end
  if value == "E" then
    return "Trading Action Reason: Expired Security Is Unavailable For Trading (E)"
  end
  if value == "L" then
    return "Trading Action Reason: Not Yet Available For Trading (L)"
  end

  return "Trading Action Reason: Unknown("..value..")"
end

-- Dissect: Trading Action Reason
biva_bivaequities_news_itch_v1_12.trading_action_reason.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_news_itch_v1_12.trading_action_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = biva_bivaequities_news_itch_v1_12.trading_action_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_news_itch_v1_12.fields.trading_action_reason, range, value, display)

  return offset + length, value
end

-- Trading State
biva_bivaequities_news_itch_v1_12.trading_state = {}

-- Size: Trading State
biva_bivaequities_news_itch_v1_12.trading_state.size = 1

-- Display: Trading State
biva_bivaequities_news_itch_v1_12.trading_state.display = function(value)
  if value == "T" then
    return "Trading State: Trading (T)"
  end
  if value == "V" then
    return "Trading State: Suspended (V)"
  end

  return "Trading State: Unknown("..value..")"
end

-- Dissect: Trading State
biva_bivaequities_news_itch_v1_12.trading_state.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_news_itch_v1_12.trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = biva_bivaequities_news_itch_v1_12.trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_news_itch_v1_12.fields.trading_state, range, value, display)

  return offset + length, value
end

-- Turnover Ratio
biva_bivaequities_news_itch_v1_12.turnover_ratio = {}

-- Size: Turnover Ratio
biva_bivaequities_news_itch_v1_12.turnover_ratio.size = 1

-- Display: Turnover Ratio
biva_bivaequities_news_itch_v1_12.turnover_ratio.display = function(value)
  return "Turnover Ratio: "..value
end

-- Dissect: Turnover Ratio
biva_bivaequities_news_itch_v1_12.turnover_ratio.dissect = function(buffer, offset, packet, parent)
  local length = biva_bivaequities_news_itch_v1_12.turnover_ratio.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = biva_bivaequities_news_itch_v1_12.turnover_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_biva_bivaequities_news_itch_v1_12.fields.turnover_ratio, range, value, display)

  return offset + length, value
end

-- Timestamp
biva_bivaequities_news_itch_v1_12.timestamp = {}

-- Translate: Timestamp
biva_bivaequities_news_itch_v1_12.timestamp.translate = function(nanoseconds, stored_second)
  return UInt64.new(stored_second * 1000000000 + nanoseconds)
end

-- Display: Timestamp
biva_bivaequities_news_itch_v1_12.timestamp.display = function(nanoseconds, stored_second, packet)
  -- Raw display mode
  if biva_bivaequities_news_itch_v1_12.timestamp_format == 0 then
    return "Timestamp: "..(stored_second * 1000000000 + nanoseconds)
  end

  -- Full datetime mode (calculate from capture date + UTC offset)
  if biva_bivaequities_news_itch_v1_12.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = biva_bivaequities_news_itch_v1_12.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400
    local full_seconds = local_midnight + stored_second

    return "Timestamp: "..os.date("!%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", nanoseconds)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("!%H:%M:%S.", stored_second)..string.format("%09d", nanoseconds)
end

-- Composite: Timestamp
biva_bivaequities_news_itch_v1_12.timestamp.composite = function(buffer, offset, stored_second, packet, parent)
  local length = biva_bivaequities_news_itch_v1_12.nanoseconds.size
  local range = buffer(offset, length)
  local nanoseconds = range:uint()
  local value = biva_bivaequities_news_itch_v1_12.timestamp.translate(nanoseconds, stored_second)
  local display = biva_bivaequities_news_itch_v1_12.timestamp.display(nanoseconds, stored_second, packet)
  parent = parent:add(omi_biva_bivaequities_news_itch_v1_12.fields.timestamp, range, value, display)

  biva_bivaequities_news_itch_v1_12.second.generated(stored_second, range, packet, parent)

  display = biva_bivaequities_news_itch_v1_12.nanoseconds.display(nanoseconds)
  parent:add(omi_biva_bivaequities_news_itch_v1_12.fields.nanoseconds, range, nanoseconds, display)

  return offset + length, value
end

-- Dissect: Timestamp
biva_bivaequities_news_itch_v1_12.timestamp.dissect = function(buffer, offset, packet, parent)
  if biva_bivaequities_news_itch_v1_12.format_timestamp then
    local stored_second = biva_bivaequities_news_itch_v1_12.second.current

    if stored_second ~= nil then
      return biva_bivaequities_news_itch_v1_12.timestamp.composite(buffer, offset, stored_second, packet, parent)
    end
  end

  return biva_bivaequities_news_itch_v1_12.nanoseconds.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Biva BivaEquities News Itch 1.12
-----------------------------------------------------------------------

-- News Message
biva_bivaequities_news_itch_v1_12.news_message = {}

-- Calculate size of: News Message
biva_bivaequities_news_itch_v1_12.news_message.size = function(buffer, offset)
  local index = 0

  index = index + biva_bivaequities_news_itch_v1_12.nanoseconds.size

  index = index + biva_bivaequities_news_itch_v1_12.orderbook.size

  index = index + biva_bivaequities_news_itch_v1_12.news_id.size

  index = index + biva_bivaequities_news_itch_v1_12.participant_id.size

  index = index + biva_bivaequities_news_itch_v1_12.title.size(buffer, offset + index)

  index = index + biva_bivaequities_news_itch_v1_12.reference.size(buffer, offset + index)

  index = index + biva_bivaequities_news_itch_v1_12.news_text.size(buffer, offset + index)

  return index
end

-- Display: News Message
biva_bivaequities_news_itch_v1_12.news_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: News Message
biva_bivaequities_news_itch_v1_12.news_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = biva_bivaequities_news_itch_v1_12.timestamp.dissect(buffer, index, packet, parent)

  -- Orderbook: Integer
  index, orderbook = biva_bivaequities_news_itch_v1_12.orderbook.dissect(buffer, index, packet, parent)

  -- News Id: Integer
  index, news_id = biva_bivaequities_news_itch_v1_12.news_id.dissect(buffer, index, packet, parent)

  -- Participant Id: Integer
  index, participant_id = biva_bivaequities_news_itch_v1_12.participant_id.dissect(buffer, index, packet, parent)

  -- Title: Null-Terminated Alpha
  index, title = biva_bivaequities_news_itch_v1_12.title.dissect(buffer, index, packet, parent)

  -- Reference: Null-Terminated Alpha
  index, reference = biva_bivaequities_news_itch_v1_12.reference.dissect(buffer, index, packet, parent)

  -- News Text: Null-Terminated Alpha
  index, news_text = biva_bivaequities_news_itch_v1_12.news_text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: News Message
biva_bivaequities_news_itch_v1_12.news_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_biva_bivaequities_news_itch_v1_12.fields.news_message, buffer(offset, 0))
    local index = biva_bivaequities_news_itch_v1_12.news_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = biva_bivaequities_news_itch_v1_12.news_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return biva_bivaequities_news_itch_v1_12.news_message.fields(buffer, offset, packet, parent)
  end
end

-- Orderbook Trading Action Message
biva_bivaequities_news_itch_v1_12.orderbook_trading_action_message = {}

-- Size: Orderbook Trading Action Message
biva_bivaequities_news_itch_v1_12.orderbook_trading_action_message.size =
  biva_bivaequities_news_itch_v1_12.nanoseconds.size + 
  biva_bivaequities_news_itch_v1_12.orderbook.size + 
  biva_bivaequities_news_itch_v1_12.trading_state.size + 
  biva_bivaequities_news_itch_v1_12.trading_action_reason.size

-- Display: Orderbook Trading Action Message
biva_bivaequities_news_itch_v1_12.orderbook_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Orderbook Trading Action Message
biva_bivaequities_news_itch_v1_12.orderbook_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = biva_bivaequities_news_itch_v1_12.timestamp.dissect(buffer, index, packet, parent)

  -- Orderbook: Integer
  index, orderbook = biva_bivaequities_news_itch_v1_12.orderbook.dissect(buffer, index, packet, parent)

  -- Trading State: Alpha
  index, trading_state = biva_bivaequities_news_itch_v1_12.trading_state.dissect(buffer, index, packet, parent)

  -- Trading Action Reason: Alpha
  index, trading_action_reason = biva_bivaequities_news_itch_v1_12.trading_action_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Orderbook Trading Action Message
biva_bivaequities_news_itch_v1_12.orderbook_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_biva_bivaequities_news_itch_v1_12.fields.orderbook_trading_action_message, buffer(offset, 0))
    local index = biva_bivaequities_news_itch_v1_12.orderbook_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = biva_bivaequities_news_itch_v1_12.orderbook_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return biva_bivaequities_news_itch_v1_12.orderbook_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Participant Directory Message
biva_bivaequities_news_itch_v1_12.participant_directory_message = {}

-- Size: Participant Directory Message
biva_bivaequities_news_itch_v1_12.participant_directory_message.size =
  biva_bivaequities_news_itch_v1_12.nanoseconds.size + 
  biva_bivaequities_news_itch_v1_12.participant_id.size + 
  biva_bivaequities_news_itch_v1_12.participant_code.size

-- Display: Participant Directory Message
biva_bivaequities_news_itch_v1_12.participant_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Participant Directory Message
biva_bivaequities_news_itch_v1_12.participant_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = biva_bivaequities_news_itch_v1_12.timestamp.dissect(buffer, index, packet, parent)

  -- Participant Id: Integer
  index, participant_id = biva_bivaequities_news_itch_v1_12.participant_id.dissect(buffer, index, packet, parent)

  -- Participant Code: Alpha
  index, participant_code = biva_bivaequities_news_itch_v1_12.participant_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Participant Directory Message
biva_bivaequities_news_itch_v1_12.participant_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_biva_bivaequities_news_itch_v1_12.fields.participant_directory_message, buffer(offset, 0))
    local index = biva_bivaequities_news_itch_v1_12.participant_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = biva_bivaequities_news_itch_v1_12.participant_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return biva_bivaequities_news_itch_v1_12.participant_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Orderbook Directory Message
biva_bivaequities_news_itch_v1_12.orderbook_directory_message = {}

-- Size: Orderbook Directory Message
biva_bivaequities_news_itch_v1_12.orderbook_directory_message.size =
  biva_bivaequities_news_itch_v1_12.nanoseconds.size + 
  biva_bivaequities_news_itch_v1_12.orderbook.size + 
  biva_bivaequities_news_itch_v1_12.isin.size + 
  biva_bivaequities_news_itch_v1_12.sec_code.size + 
  biva_bivaequities_news_itch_v1_12.currency.size + 
  biva_bivaequities_news_itch_v1_12.group.size + 
  biva_bivaequities_news_itch_v1_12.minimum_quantity.size + 
  biva_bivaequities_news_itch_v1_12.quantity_tick_size_table_id.size + 
  biva_bivaequities_news_itch_v1_12.quantity_decimals.size + 
  biva_bivaequities_news_itch_v1_12.price_tick_size_table_id.size + 
  biva_bivaequities_news_itch_v1_12.price_decimals.size + 
  biva_bivaequities_news_itch_v1_12.delisting_or_maturity_date.size + 
  biva_bivaequities_news_itch_v1_12.delisting_time.size + 
  biva_bivaequities_news_itch_v1_12.turnover_ratio.size + 
  biva_bivaequities_news_itch_v1_12.quotation_basis.size + 
  biva_bivaequities_news_itch_v1_12.instrument.size + 
  biva_bivaequities_news_itch_v1_12.listing_type.size + 
  biva_bivaequities_news_itch_v1_12.listing_exchange.size

-- Display: Orderbook Directory Message
biva_bivaequities_news_itch_v1_12.orderbook_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Orderbook Directory Message
biva_bivaequities_news_itch_v1_12.orderbook_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = biva_bivaequities_news_itch_v1_12.timestamp.dissect(buffer, index, packet, parent)

  -- Orderbook: Integer
  index, orderbook = biva_bivaequities_news_itch_v1_12.orderbook.dissect(buffer, index, packet, parent)

  -- Isin: Alpha
  index, isin = biva_bivaequities_news_itch_v1_12.isin.dissect(buffer, index, packet, parent)

  -- Sec Code: Alpha
  index, sec_code = biva_bivaequities_news_itch_v1_12.sec_code.dissect(buffer, index, packet, parent)

  -- Currency: Alpha
  index, currency = biva_bivaequities_news_itch_v1_12.currency.dissect(buffer, index, packet, parent)

  -- Group: Alpha
  index, group = biva_bivaequities_news_itch_v1_12.group.dissect(buffer, index, packet, parent)

  -- Minimum Quantity: Integer
  index, minimum_quantity = biva_bivaequities_news_itch_v1_12.minimum_quantity.dissect(buffer, index, packet, parent)

  -- Quantity Tick Size Table Id: Integer
  index, quantity_tick_size_table_id = biva_bivaequities_news_itch_v1_12.quantity_tick_size_table_id.dissect(buffer, index, packet, parent)

  -- Quantity Decimals: Integer
  index, quantity_decimals = biva_bivaequities_news_itch_v1_12.quantity_decimals.dissect(buffer, index, packet, parent)

  -- Price Tick Size Table Id: Integer
  index, price_tick_size_table_id = biva_bivaequities_news_itch_v1_12.price_tick_size_table_id.dissect(buffer, index, packet, parent)

  -- Price Decimals: Integer
  index, price_decimals = biva_bivaequities_news_itch_v1_12.price_decimals.dissect(buffer, index, packet, parent)

  -- Delisting Or Maturity Date: Integer
  index, delisting_or_maturity_date = biva_bivaequities_news_itch_v1_12.delisting_or_maturity_date.dissect(buffer, index, packet, parent)

  -- Delisting Time: Integer
  index, delisting_time = biva_bivaequities_news_itch_v1_12.delisting_time.dissect(buffer, index, packet, parent)

  -- Turnover Ratio: Alpha
  index, turnover_ratio = biva_bivaequities_news_itch_v1_12.turnover_ratio.dissect(buffer, index, packet, parent)

  -- Quotation Basis: Alpha
  index, quotation_basis = biva_bivaequities_news_itch_v1_12.quotation_basis.dissect(buffer, index, packet, parent)

  -- Instrument: Alpha
  index, instrument = biva_bivaequities_news_itch_v1_12.instrument.dissect(buffer, index, packet, parent)

  -- Listing Type: Alpha
  index, listing_type = biva_bivaequities_news_itch_v1_12.listing_type.dissect(buffer, index, packet, parent)

  -- Listing Exchange: Alpha
  index, listing_exchange = biva_bivaequities_news_itch_v1_12.listing_exchange.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Orderbook Directory Message
biva_bivaequities_news_itch_v1_12.orderbook_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_biva_bivaequities_news_itch_v1_12.fields.orderbook_directory_message, buffer(offset, 0))
    local index = biva_bivaequities_news_itch_v1_12.orderbook_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = biva_bivaequities_news_itch_v1_12.orderbook_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return biva_bivaequities_news_itch_v1_12.orderbook_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Quantity Tick Size Message
biva_bivaequities_news_itch_v1_12.quantity_tick_size_message = {}

-- Size: Quantity Tick Size Message
biva_bivaequities_news_itch_v1_12.quantity_tick_size_message.size =
  biva_bivaequities_news_itch_v1_12.nanoseconds.size + 
  biva_bivaequities_news_itch_v1_12.tick_size_table_id.size + 
  biva_bivaequities_news_itch_v1_12.quantity_tick_size.size + 
  biva_bivaequities_news_itch_v1_12.quantity_start.size

-- Display: Quantity Tick Size Message
biva_bivaequities_news_itch_v1_12.quantity_tick_size_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quantity Tick Size Message
biva_bivaequities_news_itch_v1_12.quantity_tick_size_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = biva_bivaequities_news_itch_v1_12.timestamp.dissect(buffer, index, packet, parent)

  -- Tick Size Table Id: Integer
  index, tick_size_table_id = biva_bivaequities_news_itch_v1_12.tick_size_table_id.dissect(buffer, index, packet, parent)

  -- Quantity Tick Size: Integer
  index, quantity_tick_size = biva_bivaequities_news_itch_v1_12.quantity_tick_size.dissect(buffer, index, packet, parent)

  -- Quantity Start: Integer
  index, quantity_start = biva_bivaequities_news_itch_v1_12.quantity_start.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quantity Tick Size Message
biva_bivaequities_news_itch_v1_12.quantity_tick_size_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_biva_bivaequities_news_itch_v1_12.fields.quantity_tick_size_message, buffer(offset, 0))
    local index = biva_bivaequities_news_itch_v1_12.quantity_tick_size_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = biva_bivaequities_news_itch_v1_12.quantity_tick_size_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return biva_bivaequities_news_itch_v1_12.quantity_tick_size_message.fields(buffer, offset, packet, parent)
  end
end

-- Price Tick Size Message
biva_bivaequities_news_itch_v1_12.price_tick_size_message = {}

-- Size: Price Tick Size Message
biva_bivaequities_news_itch_v1_12.price_tick_size_message.size =
  biva_bivaequities_news_itch_v1_12.nanoseconds.size + 
  biva_bivaequities_news_itch_v1_12.tick_size_table_id.size + 
  biva_bivaequities_news_itch_v1_12.price_tick_size.size + 
  biva_bivaequities_news_itch_v1_12.price_start.size

-- Display: Price Tick Size Message
biva_bivaequities_news_itch_v1_12.price_tick_size_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Price Tick Size Message
biva_bivaequities_news_itch_v1_12.price_tick_size_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = biva_bivaequities_news_itch_v1_12.timestamp.dissect(buffer, index, packet, parent)

  -- Tick Size Table Id: Integer
  index, tick_size_table_id = biva_bivaequities_news_itch_v1_12.tick_size_table_id.dissect(buffer, index, packet, parent)

  -- Price Tick Size: Integer
  index, price_tick_size = biva_bivaequities_news_itch_v1_12.price_tick_size.dissect(buffer, index, packet, parent)

  -- Price Start: Integer
  index, price_start = biva_bivaequities_news_itch_v1_12.price_start.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Price Tick Size Message
biva_bivaequities_news_itch_v1_12.price_tick_size_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_biva_bivaequities_news_itch_v1_12.fields.price_tick_size_message, buffer(offset, 0))
    local index = biva_bivaequities_news_itch_v1_12.price_tick_size_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = biva_bivaequities_news_itch_v1_12.price_tick_size_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return biva_bivaequities_news_itch_v1_12.price_tick_size_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
biva_bivaequities_news_itch_v1_12.system_event_message = {}

-- Size: System Event Message
biva_bivaequities_news_itch_v1_12.system_event_message.size =
  biva_bivaequities_news_itch_v1_12.nanoseconds.size + 
  biva_bivaequities_news_itch_v1_12.group.size + 
  biva_bivaequities_news_itch_v1_12.event_code.size + 
  biva_bivaequities_news_itch_v1_12.orderbook.size

-- Display: System Event Message
biva_bivaequities_news_itch_v1_12.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
biva_bivaequities_news_itch_v1_12.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = biva_bivaequities_news_itch_v1_12.timestamp.dissect(buffer, index, packet, parent)

  -- Group: Alpha
  index, group = biva_bivaequities_news_itch_v1_12.group.dissect(buffer, index, packet, parent)

  -- Event Code: Alpha
  index, event_code = biva_bivaequities_news_itch_v1_12.event_code.dissect(buffer, index, packet, parent)

  -- Orderbook: Integer
  index, orderbook = biva_bivaequities_news_itch_v1_12.orderbook.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
biva_bivaequities_news_itch_v1_12.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_biva_bivaequities_news_itch_v1_12.fields.system_event_message, buffer(offset, 0))
    local index = biva_bivaequities_news_itch_v1_12.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = biva_bivaequities_news_itch_v1_12.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return biva_bivaequities_news_itch_v1_12.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Time Stamp Seconds Message
biva_bivaequities_news_itch_v1_12.time_stamp_seconds_message = {}

-- Size: Time Stamp Seconds Message
biva_bivaequities_news_itch_v1_12.time_stamp_seconds_message.size =
  biva_bivaequities_news_itch_v1_12.second.size

-- Display: Time Stamp Seconds Message
biva_bivaequities_news_itch_v1_12.time_stamp_seconds_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Stamp Seconds Message
biva_bivaequities_news_itch_v1_12.time_stamp_seconds_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Second: Integer
  index, second = biva_bivaequities_news_itch_v1_12.second.dissect(buffer, index, packet, parent)

  -- Store Second Value
  biva_bivaequities_news_itch_v1_12.second.current = second

  if not packet.visited then
    biva_bivaequities_news_itch_v1_12.conversation.current.second.last = second
  end

  return index
end

-- Dissect: Time Stamp Seconds Message
biva_bivaequities_news_itch_v1_12.time_stamp_seconds_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_biva_bivaequities_news_itch_v1_12.fields.time_stamp_seconds_message, buffer(offset, 0))
    local index = biva_bivaequities_news_itch_v1_12.time_stamp_seconds_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = biva_bivaequities_news_itch_v1_12.time_stamp_seconds_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return biva_bivaequities_news_itch_v1_12.time_stamp_seconds_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
biva_bivaequities_news_itch_v1_12.payload = {}

-- Dissect: Payload
biva_bivaequities_news_itch_v1_12.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Time Stamp Seconds Message
  if message_type == "T" then
    return biva_bivaequities_news_itch_v1_12.time_stamp_seconds_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System Event Message
  if message_type == "S" then
    return biva_bivaequities_news_itch_v1_12.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Price Tick Size Message
  if message_type == "L" then
    return biva_bivaequities_news_itch_v1_12.price_tick_size_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quantity Tick Size Message
  if message_type == "M" then
    return biva_bivaequities_news_itch_v1_12.quantity_tick_size_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Orderbook Directory Message
  if message_type == "R" then
    return biva_bivaequities_news_itch_v1_12.orderbook_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Participant Directory Message
  if message_type == "F" then
    return biva_bivaequities_news_itch_v1_12.participant_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Orderbook Trading Action Message
  if message_type == "H" then
    return biva_bivaequities_news_itch_v1_12.orderbook_trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect News Message
  if message_type == "N" then
    return biva_bivaequities_news_itch_v1_12.news_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
biva_bivaequities_news_itch_v1_12.message_header = {}

-- Size: Message Header
biva_bivaequities_news_itch_v1_12.message_header.size =
  biva_bivaequities_news_itch_v1_12.message_length.size + 
  biva_bivaequities_news_itch_v1_12.message_type.size

-- Display: Message Header
biva_bivaequities_news_itch_v1_12.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
biva_bivaequities_news_itch_v1_12.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = biva_bivaequities_news_itch_v1_12.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 8 values
  index, message_type = biva_bivaequities_news_itch_v1_12.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
biva_bivaequities_news_itch_v1_12.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_biva_bivaequities_news_itch_v1_12.fields.message_header, buffer(offset, 0))
    local index = biva_bivaequities_news_itch_v1_12.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = biva_bivaequities_news_itch_v1_12.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return biva_bivaequities_news_itch_v1_12.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
biva_bivaequities_news_itch_v1_12.message = {}

-- Read runtime size of: Message
biva_bivaequities_news_itch_v1_12.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 2):uint()

  return message_length + 2
end

-- Display: Message
biva_bivaequities_news_itch_v1_12.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
biva_bivaequities_news_itch_v1_12.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_biva_bivaequities_news_itch_v1_12.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Implicit Message Sequence Number
  if message_index ~= nil and show.sequences and biva_bivaequities_news_itch_v1_12.sequence ~= nil then
    local sequence = parent:add(omi_biva_bivaequities_news_itch_v1_12.fields.message_sequence_number, UInt64.new(biva_bivaequities_news_itch_v1_12.sequence + message_index - 1))
    sequence:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = biva_bivaequities_news_itch_v1_12.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 8 branches
  index = biva_bivaequities_news_itch_v1_12.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
biva_bivaequities_news_itch_v1_12.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = biva_bivaequities_news_itch_v1_12.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_biva_bivaequities_news_itch_v1_12.fields.message, buffer(offset, 0))
    local current = biva_bivaequities_news_itch_v1_12.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = biva_bivaequities_news_itch_v1_12.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    biva_bivaequities_news_itch_v1_12.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- End Of Session
biva_bivaequities_news_itch_v1_12.end_of_session = {}

-- Display: End Of Session
biva_bivaequities_news_itch_v1_12.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
biva_bivaequities_news_itch_v1_12.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = biva_bivaequities_news_itch_v1_12.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Heartbeat
biva_bivaequities_news_itch_v1_12.heartbeat = {}

-- Display: Heartbeat
biva_bivaequities_news_itch_v1_12.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
biva_bivaequities_news_itch_v1_12.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = biva_bivaequities_news_itch_v1_12.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
biva_bivaequities_news_itch_v1_12.messages = {}

-- Dissect: Messages
biva_bivaequities_news_itch_v1_12.messages.dissect = function(buffer, offset, packet, parent, message_count)
  -- Dissect Heartbeat
  if message_count == 0 then
    return biva_bivaequities_news_itch_v1_12.heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session
  if message_count == 65535 then
    return biva_bivaequities_news_itch_v1_12.end_of_session.dissect(buffer, offset, packet, parent)
  end
  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    offset = biva_bivaequities_news_itch_v1_12.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end

  return offset
end

-- Packet Header
biva_bivaequities_news_itch_v1_12.packet_header = {}

-- Size: Packet Header
biva_bivaequities_news_itch_v1_12.packet_header.size =
  biva_bivaequities_news_itch_v1_12.session.size + 
  biva_bivaequities_news_itch_v1_12.sequence_number.size + 
  biva_bivaequities_news_itch_v1_12.message_count.size

-- Display: Packet Header
biva_bivaequities_news_itch_v1_12.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
biva_bivaequities_news_itch_v1_12.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = biva_bivaequities_news_itch_v1_12.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = biva_bivaequities_news_itch_v1_12.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = biva_bivaequities_news_itch_v1_12.message_count.dissect(buffer, index, packet, parent)

  -- Sequence base for the packet's messages
  biva_bivaequities_news_itch_v1_12.sequence = sequence_number

  return index
end

-- Dissect: Packet Header
biva_bivaequities_news_itch_v1_12.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_biva_bivaequities_news_itch_v1_12.fields.packet_header, buffer(offset, 0))
    local index = biva_bivaequities_news_itch_v1_12.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = biva_bivaequities_news_itch_v1_12.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return biva_bivaequities_news_itch_v1_12.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
biva_bivaequities_news_itch_v1_12.packet = {}

-- Verify required size of Udp packet
biva_bivaequities_news_itch_v1_12.packet.requiredsize = function(buffer)
  return buffer:len() >= biva_bivaequities_news_itch_v1_12.packet_header.size
end

-- Dissect Packet
biva_bivaequities_news_itch_v1_12.packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = biva_bivaequities_news_itch_v1_12.conversation.data(packet)
  if not packet.visited then
    data.second.frames[packet.number] = data.second.last
  end
  biva_bivaequities_news_itch_v1_12.second.current = data.second.frames[packet.number]
  biva_bivaequities_news_itch_v1_12.conversation.current = data

  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = biva_bivaequities_news_itch_v1_12.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Messages: Runtime Type with 3 branches
  index = biva_bivaequities_news_itch_v1_12.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_biva_bivaequities_news_itch_v1_12.init()
  biva_bivaequities_news_itch_v1_12.second.current = nil
  biva_bivaequities_news_itch_v1_12.conversation.current = nil
  biva_bivaequities_news_itch_v1_12.conversation.flows = {}
end

-- Dissector for Biva BivaEquities News Itch 1.12
function omi_biva_bivaequities_news_itch_v1_12.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_biva_bivaequities_news_itch_v1_12.name

  -- Dissect protocol
  local protocol = parent:add(omi_biva_bivaequities_news_itch_v1_12, buffer(), omi_biva_bivaequities_news_itch_v1_12.description, "("..buffer:len().." Bytes)")
  return biva_bivaequities_news_itch_v1_12.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Biva BivaEquities News Itch 1.12 (Udp)
local function omi_biva_bivaequities_news_itch_v1_12_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not biva_bivaequities_news_itch_v1_12.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_biva_bivaequities_news_itch_v1_12
  omi_biva_bivaequities_news_itch_v1_12.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Biva BivaEquities News Itch 1.12
omi_biva_bivaequities_news_itch_v1_12:register_heuristic("udp", omi_biva_bivaequities_news_itch_v1_12_udp_heuristic)

-- Register Biva BivaEquities News Itch 1.12 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_biva_bivaequities_news_itch_v1_12)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Bolsa Institucional de Valores
--   Version: 1.12
--   Date: Saturday, January 1, 2022
--   Specification: BIVA_X-Stream_External_ITCH_Specification_v1.12.0.pdf
--
-- Script:
--   Generator: 1.5.0.0
--   Compiler: 2.0
--   License: Public/GPLv3
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
