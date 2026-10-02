-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq PsxEquities Bbo AsciiItch 1.1.2013.2 Protocol
local omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2 = Proto("Omi.Nasdaq.PsxEquities.Bbo.AsciiItch.v1.1.2013.2", "Nasdaq PsxEquities Bbo AsciiItch 1.1.2013.2")

-- Protocol table
local nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq PsxEquities Bbo AsciiItch 1.1.2013.2 Fields
omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.current_trading_state = ProtoField.new("Current Trading State", "nasdaq.psxequities.bbo.asciiitch.v1.1.2013.2.currenttradingstate", ftypes.STRING)
omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.event_code = ProtoField.new("Event Code", "nasdaq.psxequities.bbo.asciiitch.v1.1.2013.2.eventcode", ftypes.STRING)
omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.financial_status_indicator = ProtoField.new("Financial Status Indicator", "nasdaq.psxequities.bbo.asciiitch.v1.1.2013.2.financialstatusindicator", ftypes.STRING)
omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.issue_symbol = ProtoField.new("Issue Symbol", "nasdaq.psxequities.bbo.asciiitch.v1.1.2013.2.issuesymbol", ftypes.STRING)
omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.market_category = ProtoField.new("Market Category", "nasdaq.psxequities.bbo.asciiitch.v1.1.2013.2.marketcategory", ftypes.STRING)
omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.message_count = ProtoField.new("Message Count", "nasdaq.psxequities.bbo.asciiitch.v1.1.2013.2.messagecount", ftypes.UINT16)
omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.message_length = ProtoField.new("Message Length", "nasdaq.psxequities.bbo.asciiitch.v1.1.2013.2.messagelength", ftypes.UINT16)
omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.message_type = ProtoField.new("Message Type", "nasdaq.psxequities.bbo.asciiitch.v1.1.2013.2.messagetype", ftypes.STRING)
omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.psx_best_bid_price = ProtoField.new("Psx Best Bid Price", "nasdaq.psxequities.bbo.asciiitch.v1.1.2013.2.psxbestbidprice", ftypes.DOUBLE)
omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.psx_best_bid_size = ProtoField.new("Psx Best Bid Size", "nasdaq.psxequities.bbo.asciiitch.v1.1.2013.2.psxbestbidsize", ftypes.STRING)
omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.psx_best_offer_price = ProtoField.new("Psx Best Offer Price", "nasdaq.psxequities.bbo.asciiitch.v1.1.2013.2.psxbestofferprice", ftypes.DOUBLE)
omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.psx_best_offer_size = ProtoField.new("Psx Best Offer Size", "nasdaq.psxequities.bbo.asciiitch.v1.1.2013.2.psxbestoffersize", ftypes.STRING)
omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.reason = ProtoField.new("Reason", "nasdaq.psxequities.bbo.asciiitch.v1.1.2013.2.reason", ftypes.STRING)
omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "nasdaq.psxequities.bbo.asciiitch.v1.1.2013.2.regshoaction", ftypes.STRING)
omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.security_class = ProtoField.new("Security Class", "nasdaq.psxequities.bbo.asciiitch.v1.1.2013.2.securityclass", ftypes.STRING)
omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.psxequities.bbo.asciiitch.v1.1.2013.2.sequencenumber", ftypes.UINT32)
omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.session = ProtoField.new("Session", "nasdaq.psxequities.bbo.asciiitch.v1.1.2013.2.session", ftypes.STRING)
omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.stock = ProtoField.new("Stock", "nasdaq.psxequities.bbo.asciiitch.v1.1.2013.2.stock", ftypes.STRING)
omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.psxequities.bbo.asciiitch.v1.1.2013.2.timestamp", ftypes.STRING)

-- Nasdaq PsxEquities Bbo AsciiItch 1.1.2013.2 Framing
omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.message = ProtoField.new("Message", "nasdaq.psxequities.bbo.asciiitch.v1.1.2013.2.message", ftypes.STRING)
omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.message_header = ProtoField.new("Message Header", "nasdaq.psxequities.bbo.asciiitch.v1.1.2013.2.messageheader", ftypes.STRING)
omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.packet = ProtoField.new("Packet", "nasdaq.psxequities.bbo.asciiitch.v1.1.2013.2.packet", ftypes.STRING)
omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.psxequities.bbo.asciiitch.v1.1.2013.2.packetheader", ftypes.STRING)

-- Nasdaq PsxEquities Bbo 1.1.2013.2 Session Messages
omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.end_of_session = ProtoField.new("End Of Session", "nasdaq.psxequities.bbo.asciiitch.v1.1.2013.2.endofsession", ftypes.BYTES)
omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.heartbeat = ProtoField.new("Heartbeat", "nasdaq.psxequities.bbo.asciiitch.v1.1.2013.2.heartbeat", ftypes.BYTES)

-- Nasdaq PsxEquities Bbo 1.1.2013.2 Application Messages
omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.quotation_message = ProtoField.new("Quotation Message", "nasdaq.psxequities.bbo.asciiitch.v1.1.2013.2.quotationmessage", ftypes.STRING)
omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.reg_sho_short_sale_price_test_restricted_indicator_message = ProtoField.new("Reg Sho Short Sale Price Test Restricted Indicator Message", "nasdaq.psxequities.bbo.asciiitch.v1.1.2013.2.regshoshortsalepricetestrestrictedindicatormessage", ftypes.STRING)
omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.stock_directory_message = ProtoField.new("Stock Directory Message", "nasdaq.psxequities.bbo.asciiitch.v1.1.2013.2.stockdirectorymessage", ftypes.STRING)
omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.stock_trading_action_message = ProtoField.new("Stock Trading Action Message", "nasdaq.psxequities.bbo.asciiitch.v1.1.2013.2.stocktradingactionmessage", ftypes.STRING)
omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.psxequities.bbo.asciiitch.v1.1.2013.2.systemeventmessage", ftypes.STRING)

-- Nasdaq PsxEquities Bbo AsciiItch 1.1.2013.2 Generated Fields
omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.message_index = ProtoField.new("Message Index", "nasdaq.psxequities.bbo.asciiitch.v1.1.2013.2.messageindex", ftypes.UINT16)
omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "nasdaq.psxequities.bbo.asciiitch.v1.1.2013.2.messagesequencenumber", ftypes.UINT64)

-----------------------------------------------------------------------
-- Nasdaq PsxEquities Bbo AsciiItch 1.1.2013.2 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.timestamp_format = 2

-- Hours behind UTC (EST) for midnight calculation
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.utc_offset_hours = 5


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq PsxEquities Bbo AsciiItch 1.1.2013.2 Element Dissection Options
show.structs = true
show.headers = true
show.application_messages = true
show.indexes = true
show.sequences = true

-- Register Nasdaq PsxEquities Bbo AsciiItch 1.1.2013.2 Show Options
omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")

omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Timestamp display format", timestamp_format_enum, false)
omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 5, "Hours behind UTC (EST) for midnight calculation")

-- Handle changed preferences
function omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.prefs.show_application_messages
  end
  if show.headers ~= omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.prefs.show_headers then
    show.headers = omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.prefs.show_headers
  end
  if show.structs ~= omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.prefs.show_structs then
    show.structs = omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.prefs.show_structs
  end
  if show.indexes ~= omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.prefs.show_indexes then
    show.indexes = omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.prefs.show_indexes
  end
  if show.sequences ~= omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.prefs.show_sequences then
    show.sequences = omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.prefs.show_sequences
  end
  if nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.timestamp_format ~= omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.prefs.timestamp_format then
    nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.timestamp_format = omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.prefs.timestamp_format
  end
  if nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.utc_offset_hours ~= omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.prefs.utc_offset_hours then
    nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.utc_offset_hours = omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.prefs.utc_offset_hours
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
-- Nasdaq PsxEquities Bbo AsciiItch 1.1.2013.2 Fields
-----------------------------------------------------------------------

-- Current Trading State
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.current_trading_state = {}

-- Size: Current Trading State
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.current_trading_state.size = 1

-- Display: Current Trading State
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.current_trading_state.display = function(value)
  if value == "H" then
    return "Current Trading State: Halted Or Paused On Nasdaq And All Utp Participants (H)"
  end
  if value == "Q" then
    return "Current Trading State: Quotation Only Period For Cross Sro Halt Or Pause (Q)"
  end
  if value == "R" then
    return "Current Trading State: Quotation Only Period For Nasdaq Omx Only Halt Or Pause (R)"
  end
  if value == "T" then
    return "Current Trading State: Trading On Nasdaq (T)"
  end

  return "Current Trading State: Unknown("..value..")"
end

-- Dissect: Current Trading State
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.current_trading_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.current_trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.current_trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.current_trading_state, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.event_code = {}

-- Size: Event Code
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.event_code.size = 1

-- Display: Event Code
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.event_code.display = function(value)
  if value == "O" then
    return "Event Code: Start Of Transmissions (O)"
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
    return "Event Code: End Of Transmissions (C)"
  end
  if value == "A" then
    return "Event Code: Emergency Market Condition Halt (A)"
  end
  if value == "R" then
    return "Event Code: Emergency Market Condition Quote Only Period (R)"
  end
  if value == "B" then
    return "Event Code: Emergency Market Condition Resumption (B)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.event_code, range, value, display)

  return offset + length, value
end

-- Financial Status Indicator
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.financial_status_indicator = {}

-- Size: Financial Status Indicator
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.financial_status_indicator.size = 1

-- Display: Financial Status Indicator
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.financial_status_indicator.display = function(value)
  if value == "D" then
    return "Financial Status Indicator: Deficient (D)"
  end
  if value == "E" then
    return "Financial Status Indicator: Delinquent (E)"
  end
  if value == "Q" then
    return "Financial Status Indicator: Bankrupt (Q)"
  end
  if value == "G" then
    return "Financial Status Indicator: Deficient And Bankrupt (G)"
  end
  if value == "H" then
    return "Financial Status Indicator: Deficient And Delinquent (H)"
  end
  if value == "J" then
    return "Financial Status Indicator: Delinquent And Bankrupt (J)"
  end
  if value == "K" then
    return "Financial Status Indicator: Deficient Delinquent And Bankrupt (K)"
  end
  if value == " " then
    return "Financial Status Indicator: In Compliance Or Not Listed (<whitespace>)"
  end

  return "Financial Status Indicator: Unknown("..value..")"
end

-- Dissect: Financial Status Indicator
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.financial_status_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.financial_status_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.financial_status_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.financial_status_indicator, range, value, display)

  return offset + length, value
end

-- Issue Symbol
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.issue_symbol = {}

-- Size: Issue Symbol
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.issue_symbol.size = 8

-- Display: Issue Symbol
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.issue_symbol.display = function(value)
  return "Issue Symbol: "..value
end

-- Dissect: Issue Symbol
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.issue_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.issue_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.issue_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.issue_symbol, range, value, display)

  return offset + length, value
end

-- Market Category
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.market_category = {}

-- Size: Market Category
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.market_category.size = 1

-- Display: Market Category
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.market_category.display = function(value)
  if value == "N" then
    return "Market Category: Nyse (N)"
  end
  if value == "A" then
    return "Market Category: Nyse Amex (A)"
  end
  if value == "P" then
    return "Market Category: Nyse Arca (P)"
  end
  if value == "Q" then
    return "Market Category: Nasdaq Global Select Market (Q)"
  end
  if value == "G" then
    return "Market Category: Nasdaq Global Market (G)"
  end
  if value == "S" then
    return "Market Category: Nasdaq Capital Market (S)"
  end
  if value == "Z" then
    return "Market Category: Bats Bzx Exchange (Z)"
  end
  if value == " " then
    return "Market Category: Not Available (<whitespace>)"
  end

  return "Market Category: Unknown("..value..")"
end

-- Dissect: Market Category
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.market_category.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.market_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.market_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.market_category, range, value, display)

  return offset + length, value
end

-- Message Count
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.message_count = {}

-- Size: Message Count
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.message_count.size = 2

-- Display: Message Count
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.message_length = {}

-- Size: Message Length
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.message_length.size = 2

-- Display: Message Length
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.message_type = {}

-- Size: Message Type
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.message_type.size = 1

-- Display: Message Type
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.message_type.display = function(value)
  if value == "S" then
    return "Message Type: System Event Message (S)"
  end
  if value == "R" then
    return "Message Type: Stock Directory Message (R)"
  end
  if value == "H" then
    return "Message Type: Stock Trading Action Message (H)"
  end
  if value == "Y" then
    return "Message Type: Reg Sho Short Sale Price Test Restricted Indicator Message (Y)"
  end
  if value == "Q" then
    return "Message Type: Quotation Message (Q)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.message_type, range, value, display)

  return offset + length, value
end

-- Psx Best Bid Price
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.psx_best_bid_price = {}

-- Size: Psx Best Bid Price
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.psx_best_bid_price.size = 10

-- Display: Psx Best Bid Price
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.psx_best_bid_price.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.psx_best_bid_price.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Psx Best Bid Price: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 4 then
    digits = string.rep("0", 4 - #digits + 1)..digits
  end

  return "Psx Best Bid Price: "..sign..digits:sub(1, #digits - 4)..".".. digits:sub(-4)
end

-- Dissect: Psx Best Bid Price
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.psx_best_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.psx_best_bid_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.psx_best_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.psx_best_bid_price, range, value, display)

  return offset + length, value
end

-- Psx Best Bid Size
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.psx_best_bid_size = {}

-- Size: Psx Best Bid Size
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.psx_best_bid_size.size = 9

-- Display: Psx Best Bid Size
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.psx_best_bid_size.display = function(value)
  return "Psx Best Bid Size: "..value
end

-- Dissect: Psx Best Bid Size
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.psx_best_bid_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.psx_best_bid_size.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.psx_best_bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.psx_best_bid_size, range, value, display)

  return offset + length, value
end

-- Psx Best Offer Price
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.psx_best_offer_price = {}

-- Size: Psx Best Offer Price
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.psx_best_offer_price.size = 10

-- Display: Psx Best Offer Price
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.psx_best_offer_price.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.psx_best_offer_price.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Psx Best Offer Price: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 4 then
    digits = string.rep("0", 4 - #digits + 1)..digits
  end

  return "Psx Best Offer Price: "..sign..digits:sub(1, #digits - 4)..".".. digits:sub(-4)
end

-- Dissect: Psx Best Offer Price
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.psx_best_offer_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.psx_best_offer_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.psx_best_offer_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.psx_best_offer_price, range, value, display)

  return offset + length, value
end

-- Psx Best Offer Size
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.psx_best_offer_size = {}

-- Size: Psx Best Offer Size
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.psx_best_offer_size.size = 9

-- Display: Psx Best Offer Size
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.psx_best_offer_size.display = function(value)
  return "Psx Best Offer Size: "..value
end

-- Dissect: Psx Best Offer Size
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.psx_best_offer_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.psx_best_offer_size.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.psx_best_offer_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.psx_best_offer_size, range, value, display)

  return offset + length, value
end

-- Reason
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.reason = {}

-- Size: Reason
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.reason.size = 4

-- Display: Reason
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.reason.display = function(value)
  if value == "T1" then
    return "Reason: Halt News Pending (T1)"
  end
  if value == "T2" then
    return "Reason: Halt News Disseminated (T2)"
  end
  if value == "T5" then
    return "Reason: Single Security Trading Pause In Affect (T5)"
  end
  if value == "T6" then
    return "Reason: Regulatory Halt Extraordinary Market Activity (T6)"
  end
  if value == "T8" then
    return "Reason: Halt Etf (T8)"
  end
  if value == "T12" then
    return "Reason: Trading Halted For Information Requested By Listing Market (T12)"
  end
  if value == "H4" then
    return "Reason: Halt Non Compliance (H4)"
  end
  if value == "H9" then
    return "Reason: Halt Filings Not Current (H9)"
  end
  if value == "H10" then
    return "Reason: Halt Sec Trading Suspension (H10)"
  end
  if value == "H11" then
    return "Reason: Halt Regulatory Concern (H11)"
  end
  if value == "O1" then
    return "Reason: Operations Halt Contact Market Operations (O1)"
  end
  if value == "LUDP" then
    return "Reason: Volatility Trading Pause (LUDP)"
  end
  if value == "LUDS" then
    return "Reason: Volatility Trading Pause Straddle Condition (LUDS)"
  end
  if value == "MWC1" then
    return "Reason: Market Wide Circuit Breaker Halt Level 1 (MWC1)"
  end
  if value == "MWC2" then
    return "Reason: Market Wide Circuit Breaker Halt Level 2 (MWC2)"
  end
  if value == "MWC3" then
    return "Reason: Market Wide Circuit Breaker Halt Level 3 (MWC3)"
  end
  if value == "MWC0" then
    return "Reason: Market Wide Circuit Breaker Halt Carry Over From Previous Day (MWC0)"
  end
  if value == "IPO1" then
    return "Reason: Ipo Issue Not Yet Trading (IPO1)"
  end
  if value == "M1" then
    return "Reason: Corporate Action (M1)"
  end
  if value == "M2" then
    return "Reason: Quotation Not Available (M2)"
  end
  if value == "T3" then
    return "Reason: News And Resumption Times (T3)"
  end
  if value == "T7" then
    return "Reason: Single Security Trading Pause Quotation Only Period (T7)"
  end
  if value == "R4" then
    return "Reason: Qualifications Issues Reviewed Resolved Quotations Trading To Resume (R4)"
  end
  if value == "R9" then
    return "Reason: Filing Requirements Satisfied Resolved Quotations Trading To Resume (R9)"
  end
  if value == "C3" then
    return "Reason: Issuer News Not Forthcoming Quotations Trading To Resume (C3)"
  end
  if value == "C4" then
    return "Reason: Qualifications Halt Ended Maintenance Requirements Met Resume (C4)"
  end
  if value == "C9" then
    return "Reason: Qualifications Halt Concluded Filings Met Quotes Trades To Resume (C9)"
  end
  if value == "C11" then
    return "Reason: Trade Halt Concluded By Other Regulatory Auth Quotes Trades Resume (C11)"
  end
  if value == "MWCQ" then
    return "Reason: Market Wide Circuit Breaker Resumption (MWCQ)"
  end
  if value == "R1" then
    return "Reason: New Issue Available (R1)"
  end
  if value == "R2" then
    return "Reason: Issue Available (R2)"
  end
  if value == "IPOQ" then
    return "Reason: Ipo Security Released For Quotation (IPOQ)"
  end
  if value == "IPOE" then
    return "Reason: Ipo Security Positioning Window Extension (IPOE)"
  end
  if value == " " then
    return "Reason: Reason Not Available (<whitespace>)"
  end

  return "Reason: Unknown("..value..")"
end

-- Dissect: Reason
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.reason.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.reason, range, value, display)

  return offset + length, value
end

-- Reg Sho Action
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.reg_sho_action = {}

-- Size: Reg Sho Action
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.reg_sho_action.size = 1

-- Display: Reg Sho Action
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.reg_sho_action.display = function(value)
  if value == "0" then
    return "Reg Sho Action: No Price Test In Place (0)"
  end
  if value == "1" then
    return "Reg Sho Action: Restriction In Effect (1)"
  end
  if value == "2" then
    return "Reg Sho Action: Restriction Remains In Effect (2)"
  end

  return "Reg Sho Action: Unknown("..value..")"
end

-- Dissect: Reg Sho Action
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.reg_sho_action.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.reg_sho_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.reg_sho_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Security Class
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.security_class = {}

-- Size: Security Class
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.security_class.size = 1

-- Display: Security Class
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.security_class.display = function(value)
  if value == "Q" then
    return "Security Class: Nasdaq Listed Issue (Q)"
  end
  if value == "N" then
    return "Security Class: Nyse (N)"
  end
  if value == "A" then
    return "Security Class: Nyse Amex (A)"
  end
  if value == "P" then
    return "Security Class: Nyse Arca (P)"
  end
  if value == "Z" then
    return "Security Class: Bats (Z)"
  end

  return "Security Class: Unknown("..value..")"
end

-- Dissect: Security Class
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.security_class.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.security_class.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.security_class.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.security_class, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.sequence_number = {}

-- Size: Sequence Number
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.sequence_number.size = 4

-- Display: Sequence Number
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.session = {}

-- Size: Session
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.session.size = 10

-- Display: Session
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.session, range, value, display)

  return offset + length, value
end

-- Stock
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.stock = {}

-- Size: Stock
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.stock.size = 8

-- Display: Stock
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.stock.display = function(value)
  return "Stock: "..value
end

-- Dissect: Stock
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.stock.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.stock.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.stock.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.stock, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.timestamp = {}

-- Size: Timestamp
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.timestamp.size = 8

-- Display: Timestamp
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.timestamp.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode (or unparsable ASCII fell back to a non-number)
  if type(value) ~= "number" then
    return "Timestamp: "..tostring(value)
  end

  if nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.timestamp_format == 0 then
    return "Timestamp: "..value
  end

  -- Parse milliseconds since midnight
  local seconds = math.floor(value / 1000)
  local milliseconds = value % 1000

  -- Full datetime mode (calculate from capture date + UTC offset)
  if nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Timestamp: "..os.date("!%Y-%m-%d %H:%M:%S.", full_seconds + utc_offset_seconds)..string.format("%03d", milliseconds)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("!%H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Timestamp
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.timestamp.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.timestamp, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq PsxEquities Bbo AsciiItch 1.1.2013.2
-----------------------------------------------------------------------

-- Quotation Message
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.quotation_message = {}

-- Size: Quotation Message
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.quotation_message.size =
  nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.stock.size + 
  nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.security_class.size + 
  nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.psx_best_bid_price.size + 
  nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.psx_best_bid_size.size + 
  nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.psx_best_offer_price.size + 
  nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.psx_best_offer_size.size

-- Display: Quotation Message
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.quotation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quotation Message
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.quotation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock: Alpha
  index, stock = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.stock.dissect(buffer, index, packet, parent)

  -- Security Class: Alphabetic
  index, security_class = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.security_class.dissect(buffer, index, packet, parent)

  -- Psx Best Bid Price: Numeric
  index, psx_best_bid_price = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.psx_best_bid_price.dissect(buffer, index, packet, parent)

  -- Psx Best Bid Size: Numeric
  index, psx_best_bid_size = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.psx_best_bid_size.dissect(buffer, index, packet, parent)

  -- Psx Best Offer Price: Numeric
  index, psx_best_offer_price = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.psx_best_offer_price.dissect(buffer, index, packet, parent)

  -- Psx Best Offer Size: Numeric
  index, psx_best_offer_size = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.psx_best_offer_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quotation Message
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.quotation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.quotation_message, buffer(offset, 0))
    local index = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.quotation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.quotation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.quotation_message.fields(buffer, offset, packet, parent)
  end
end

-- Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.reg_sho_short_sale_price_test_restricted_indicator_message = {}

-- Size: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.reg_sho_short_sale_price_test_restricted_indicator_message.size =
  nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.stock.size + 
  nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.reg_sho_action.size

-- Display: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.reg_sho_short_sale_price_test_restricted_indicator_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.reg_sho_short_sale_price_test_restricted_indicator_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock: Alpha
  index, stock = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.stock.dissect(buffer, index, packet, parent)

  -- Reg Sho Action: Alpha
  index, reg_sho_action = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.reg_sho_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.reg_sho_short_sale_price_test_restricted_indicator_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.reg_sho_short_sale_price_test_restricted_indicator_message, buffer(offset, 0))
    local index = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.reg_sho_short_sale_price_test_restricted_indicator_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.reg_sho_short_sale_price_test_restricted_indicator_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.reg_sho_short_sale_price_test_restricted_indicator_message.fields(buffer, offset, packet, parent)
  end
end

-- Stock Trading Action Message
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.stock_trading_action_message = {}

-- Size: Stock Trading Action Message
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.stock_trading_action_message.size =
  nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.stock.size + 
  nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.security_class.size + 
  nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.current_trading_state.size + 
  nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.reason.size

-- Display: Stock Trading Action Message
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.stock_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Trading Action Message
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.stock_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock: Alpha
  index, stock = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.stock.dissect(buffer, index, packet, parent)

  -- Security Class: Alphabetic
  index, security_class = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.security_class.dissect(buffer, index, packet, parent)

  -- Current Trading State: Alphabetic
  index, current_trading_state = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.current_trading_state.dissect(buffer, index, packet, parent)

  -- Reason: Alphanumeric
  index, reason = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Trading Action Message
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.stock_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.stock_trading_action_message, buffer(offset, 0))
    local index = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.stock_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.stock_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.stock_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Stock Directory Message
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.stock_directory_message = {}

-- Size: Stock Directory Message
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.stock_directory_message.size =
  nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.issue_symbol.size + 
  nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.market_category.size + 
  nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.financial_status_indicator.size

-- Display: Stock Directory Message
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.stock_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Directory Message
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.stock_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Issue Symbol: Alphanumeric
  index, issue_symbol = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.issue_symbol.dissect(buffer, index, packet, parent)

  -- Market Category: Alphanumeric
  index, market_category = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.market_category.dissect(buffer, index, packet, parent)

  -- Financial Status Indicator: Alphanumeric
  index, financial_status_indicator = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.financial_status_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Directory Message
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.stock_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.stock_directory_message, buffer(offset, 0))
    local index = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.stock_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.stock_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.stock_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.system_event_message = {}

-- Size: System Event Message
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.system_event_message.size =
  nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.event_code.size

-- Display: System Event Message
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Event Code: Alphanumeric
  index, event_code = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.payload = {}

-- Dissect: Payload
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event Message
  if message_type == "S" then
    return nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Directory Message
  if message_type == "R" then
    return nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.stock_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Trading Action Message
  if message_type == "H" then
    return nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.stock_trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reg Sho Short Sale Price Test Restricted Indicator Message
  if message_type == "Y" then
    return nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.reg_sho_short_sale_price_test_restricted_indicator_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quotation Message
  if message_type == "Q" then
    return nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.quotation_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.message_header = {}

-- Size: Message Header
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.message_header.size =
  nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.message_length.size + 
  nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.timestamp.size + 
  nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.message_type.size

-- Display: Message Header
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.message_length.dissect(buffer, index, packet, parent)

  -- Timestamp: 8 Byte Ascii String
  index, timestamp = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.timestamp.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 5 values
  index, message_type = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.message_header, buffer(offset, 0))
    local index = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.message = {}

-- Read runtime size of: Message
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 2):uint()

  return message_length + 2
end

-- Display: Message
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Implicit Message Sequence Number
  if message_index ~= nil and show.sequences and nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.packet_sequence ~= nil then
    local sequence = parent:add(omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.message_sequence_number, UInt64.new(nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.packet_sequence + message_index - 1))
    sequence:set_generated()
  end

  -- Message Header: Struct of 3 fields
  index, message_header = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 5 branches
  index = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.message, buffer(offset, 0))
    local current = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- End Of Session
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.end_of_session = {}

-- Display: End Of Session
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Heartbeat
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.heartbeat = {}

-- Display: Heartbeat
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.messages = {}

-- Dissect: Messages
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.messages.dissect = function(buffer, offset, packet, parent, message_count)
  -- Dissect Heartbeat
  if message_count == 0 then
    return nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session
  if message_count == 65535 then
    return nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.end_of_session.dissect(buffer, offset, packet, parent)
  end

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    offset = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end
end

-- Packet Header
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.packet_header = {}

-- Size: Packet Header
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.packet_header.size =
  nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.session.size + 
  nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.sequence_number.size + 
  nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.message_count.size

-- Display: Packet Header
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.message_count.dissect(buffer, index, packet, parent)

  -- Sequence base for the packet's messages
  nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.packet_sequence = sequence_number

  return index
end

-- Dissect: Packet Header
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.packet = {}

-- Verify required size of Udp packet
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.packet_header.size
end

-- Dissect Packet
nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):le_uint()

  -- Messages: Runtime Type with 3 branches
  index = nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.init()
end

-- Dissector for Nasdaq PsxEquities Bbo AsciiItch 1.1.2013.2
function omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2, buffer(), omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.description, "("..buffer:len().." Bytes)")
  return nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq PsxEquities Bbo AsciiItch 1.1.2013.2 (Udp)
local function omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2
  omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq PsxEquities Bbo AsciiItch 1.1.2013.2
omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2:register_heuristic("udp", omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2_udp_heuristic)

-- Register Nasdaq PsxEquities Bbo AsciiItch 1.1.2013.2 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_nasdaq_psxequities_bbo_asciiitch_v1_1_2013_2)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 1.1.2013.2
--   Since: 1.1.2010
--   Date: Monday, March 11, 2013
--   Specification: PSXbbo-v1_1.pdf
--   Specification: PSXbbo-v1_1.pdf
--   Specification: PSXbbo-v1_1.pdf
--   Specification: PSXbbo-v1_1.pdf
--   Specification: PSXbbo-v1_1.pdf
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
