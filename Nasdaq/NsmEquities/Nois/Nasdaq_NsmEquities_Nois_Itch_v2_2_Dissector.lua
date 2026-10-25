-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq NsmEquities Nois Itch 2.2 Protocol
local omi_nasdaq_nsmequities_nois_itch_v2_2 = Proto("Omi.Nasdaq.NsmEquities.Nois.Itch.v2.2", "Nasdaq NsmEquities Nois Itch 2.2")

-- Protocol table
local nasdaq_nsmequities_nois_itch_v2_2 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq NsmEquities Nois Itch 2.2 Fields
omi_nasdaq_nsmequities_nois_itch_v2_2.fields.cross_type = ProtoField.new("Cross Type", "nasdaq.nsmequities.nois.itch.v2.2.crosstype", ftypes.STRING, nil, nil, nil, "Denotes the type of Nasdaq cross for which the NOII message is being generated")
omi_nasdaq_nsmequities_nois_itch_v2_2.fields.current_reference_price = ProtoField.new("Current Reference Price", "nasdaq.nsmequities.nois.itch.v2.2.currentreferenceprice", ftypes.DOUBLE, nil, nil, nil, "Indicates price at which the NOII shares are being calculated")
omi_nasdaq_nsmequities_nois_itch_v2_2.fields.event_code = ProtoField.new("Event Code", "nasdaq.nsmequities.nois.itch.v2.2.eventcode", ftypes.STRING, nil, nil, nil, "See System Event Codes below")
omi_nasdaq_nsmequities_nois_itch_v2_2.fields.imbalance_direction = ProtoField.new("Imbalance Direction", "nasdaq.nsmequities.nois.itch.v2.2.imbalancedirection", ftypes.STRING, nil, nil, nil, "Indicates the market side of the imbalance")
omi_nasdaq_nsmequities_nois_itch_v2_2.fields.imbalance_shares = ProtoField.new("Imbalance Shares", "nasdaq.nsmequities.nois.itch.v2.2.imbalanceshares", ftypes.UINT32, nil, nil, nil, "Number of shares not paired at the Current Reference Price.")
omi_nasdaq_nsmequities_nois_itch_v2_2.fields.issue_classification = ProtoField.new("Issue Classification", "nasdaq.nsmequities.nois.itch.v2.2.issueclassification", ftypes.STRING, nil, nil, nil, "Identifies the security class for the issues as assigned by Nasdaq. See Appendix for allowable values")
omi_nasdaq_nsmequities_nois_itch_v2_2.fields.issue_sub_type = ProtoField.new("Issue Sub Type", "nasdaq.nsmequities.nois.itch.v2.2.issuesubtype", ftypes.STRING, nil, nil, nil, "Identifies the security sub-type for the issue as assigned by Nasdaq. See Appendix for allowable values.")
omi_nasdaq_nsmequities_nois_itch_v2_2.fields.market_category = ProtoField.new("Market Category", "nasdaq.nsmequities.nois.itch.v2.2.marketcategory", ftypes.STRING, nil, nil, nil, "Indicates Listing market or listing market tier for the issue")
omi_nasdaq_nsmequities_nois_itch_v2_2.fields.message_count = ProtoField.new("Message Count", "nasdaq.nsmequities.nois.itch.v2.2.messagecount", ftypes.UINT16, nil, nil, nil, "Number of messages to follow this header")
omi_nasdaq_nsmequities_nois_itch_v2_2.fields.message_data = ProtoField.new("Message Data", "nasdaq.nsmequities.nois.itch.v2.2.messagedata", ftypes.STRING, nil, nil, nil, "Mold Udp message data")
omi_nasdaq_nsmequities_nois_itch_v2_2.fields.message_length = ProtoField.new("Message Length", "nasdaq.nsmequities.nois.itch.v2.2.messagelength", ftypes.UINT16, nil, nil, nil, "Length of data message not including this field")
omi_nasdaq_nsmequities_nois_itch_v2_2.fields.message_type = ProtoField.new("Message Type", "nasdaq.nsmequities.nois.itch.v2.2.messagetype", ftypes.STRING, nil, nil, nil, "Code identifying this message type")
omi_nasdaq_nsmequities_nois_itch_v2_2.fields.near_price = ProtoField.new("Near Price", "nasdaq.nsmequities.nois.itch.v2.2.nearprice", ftypes.DOUBLE, nil, nil, nil, "A hypothetical auction-clearing price for cross orders as well as continuous orders")
omi_nasdaq_nsmequities_nois_itch_v2_2.fields.reason = ProtoField.new("Reason", "nasdaq.nsmequities.nois.itch.v2.2.reason", ftypes.STRING, nil, nil, nil, "Trading Action reason")
omi_nasdaq_nsmequities_nois_itch_v2_2.fields.rfu = ProtoField.new("Rfu", "nasdaq.nsmequities.nois.itch.v2.2.rfu", ftypes.STRING, nil, nil, nil, "Reserved for future use")
omi_nasdaq_nsmequities_nois_itch_v2_2.fields.round_lot_size = ProtoField.new("Round Lot Size", "nasdaq.nsmequities.nois.itch.v2.2.roundlotsize", ftypes.UINT24, nil, nil, nil, "Indicates the number of shares that represent a round lot for the issue")
omi_nasdaq_nsmequities_nois_itch_v2_2.fields.round_lots_only = ProtoField.new("Round Lots Only", "nasdaq.nsmequities.nois.itch.v2.2.roundlotsonly", ftypes.STRING, nil, nil, nil, "Indicates if Nasdaq system limits order entry for issue")
omi_nasdaq_nsmequities_nois_itch_v2_2.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.nsmequities.nois.itch.v2.2.sequencenumber", ftypes.UINT32, nil, nil, nil, "Sequence number of the first message to follow this header")
omi_nasdaq_nsmequities_nois_itch_v2_2.fields.session = ProtoField.new("Session", "nasdaq.nsmequities.nois.itch.v2.2.session", ftypes.STRING, nil, nil, nil, "Identity of the multicast session")
omi_nasdaq_nsmequities_nois_itch_v2_2.fields.symbol = ProtoField.new("Symbol", "nasdaq.nsmequities.nois.itch.v2.2.symbol", ftypes.STRING, nil, nil, nil, "Denotes the security symbol for the issue in the NASDAQ execution system.")
omi_nasdaq_nsmequities_nois_itch_v2_2.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.nsmequities.nois.itch.v2.2.timestamp", ftypes.UINT64, nil, nil, nil, "Number of nanoseconds past midnight")
omi_nasdaq_nsmequities_nois_itch_v2_2.fields.trading_state = ProtoField.new("Trading State", "nasdaq.nsmequities.nois.itch.v2.2.tradingstate", ftypes.STRING, nil, nil, nil, "Indicates the current trading state for the stock.")

-- Nasdaq NsmEquities Nois Itch 2.2 Framing
omi_nasdaq_nsmequities_nois_itch_v2_2.fields.message = ProtoField.new("Message", "nasdaq.nsmequities.nois.itch.v2.2.message", ftypes.STRING, nil, nil, nil, "Mold Udp Message")
omi_nasdaq_nsmequities_nois_itch_v2_2.fields.message_header = ProtoField.new("Message Header", "nasdaq.nsmequities.nois.itch.v2.2.messageheader", ftypes.STRING, nil, nil, nil, "Mold Udp Message Header")
omi_nasdaq_nsmequities_nois_itch_v2_2.fields.packet = ProtoField.new("Packet", "nasdaq.nsmequities.nois.itch.v2.2.packet", ftypes.STRING, nil, nil, nil, "Itch Udp Packet")
omi_nasdaq_nsmequities_nois_itch_v2_2.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.nsmequities.nois.itch.v2.2.packetheader", ftypes.STRING, nil, nil, nil, "Itch Mold Udp Packet Header")

-- Nasdaq NsmEquities Nois 2.2 Session Messages
omi_nasdaq_nsmequities_nois_itch_v2_2.fields.end_of_session = ProtoField.new("End Of Session", "nasdaq.nsmequities.nois.itch.v2.2.endofsession", ftypes.BYTES, nil, nil, nil, "Mold Udp end of session")
omi_nasdaq_nsmequities_nois_itch_v2_2.fields.heartbeat = ProtoField.new("Heartbeat", "nasdaq.nsmequities.nois.itch.v2.2.heartbeat", ftypes.BYTES, nil, nil, nil, "Mold Udp heartbeat")

-- Nasdaq NsmEquities Nois 2.2 Application Messages
omi_nasdaq_nsmequities_nois_itch_v2_2.fields.nois_message = ProtoField.new("Nois Message", "nasdaq.nsmequities.nois.itch.v2.2.noismessage", ftypes.STRING, nil, nil, nil, "Nasdaq Net Order Imbalance Snapshot (NOIS) provides a snapshot of the Nasdaq net order imbalance data at selected time intervals.")
omi_nasdaq_nsmequities_nois_itch_v2_2.fields.stock_directory = ProtoField.new("Stock Directory", "nasdaq.nsmequities.nois.itch.v2.2.stockdirectory", ftypes.STRING, nil, nil, nil, "At the start of each trading day, Nasdaq disseminates stock directory messages for all active symbols in the Nasdaq execution system.")
omi_nasdaq_nsmequities_nois_itch_v2_2.fields.stock_trading_action = ProtoField.new("Stock Trading Action", "nasdaq.nsmequities.nois.itch.v2.2.stocktradingaction", ftypes.STRING, nil, nil, nil, "Nasdaq uses this administrative message to indicate the current trading status of a security to the trading community.")
omi_nasdaq_nsmequities_nois_itch_v2_2.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.nsmequities.nois.itch.v2.2.systemeventmessage", ftypes.STRING, nil, nil, nil, "The system event message type is used to signal a market or data feed handler event.")

-- Nasdaq NsmEquities Nois Itch 2.2 Generated Fields
omi_nasdaq_nsmequities_nois_itch_v2_2.fields.message_index = ProtoField.new("Message Index", "nasdaq.nsmequities.nois.itch.v2.2.messageindex", ftypes.UINT16)
omi_nasdaq_nsmequities_nois_itch_v2_2.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "nasdaq.nsmequities.nois.itch.v2.2.messagesequencenumber", ftypes.UINT64)

-- Nasdaq NsmEquities Nois Itch 2.2 Expert Info
nasdaq_nsmequities_nois_itch_v2_2.experts = {}
nasdaq_nsmequities_nois_itch_v2_2.experts.message_after_end_of_session = ProtoExpert.new("nasdaq.nsmequities.nois.itch.v2.2.messageafterendofsession", "Message after the end of session, which must be the last block of its packet", expert.group.MALFORMED, expert.severity.ERROR)
nasdaq_nsmequities_nois_itch_v2_2.experts.not_a_number = ProtoExpert.new("nasdaq.nsmequities.nois.itch.v2.2.notanumber", "Ascii digits field holding no number", expert.group.PROTOCOL, expert.severity.WARN)
omi_nasdaq_nsmequities_nois_itch_v2_2.experts = { nasdaq_nsmequities_nois_itch_v2_2.experts.message_after_end_of_session, nasdaq_nsmequities_nois_itch_v2_2.experts.not_a_number }

-----------------------------------------------------------------------
-- Nasdaq NsmEquities Nois Itch 2.2 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
nasdaq_nsmequities_nois_itch_v2_2.timestamp_format = 2

-- Hours behind UTC (EST) for midnight calculation
nasdaq_nsmequities_nois_itch_v2_2.utc_offset_hours = 5


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq NsmEquities Nois Itch 2.2 Element Dissection Options
show.structs = true
show.headers = true
show.application_messages = true
show.indexes = true
show.sequences = true

-- Register Nasdaq NsmEquities Nois Itch 2.2 Show Options
omi_nasdaq_nsmequities_nois_itch_v2_2.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_nsmequities_nois_itch_v2_2.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nasdaq_nsmequities_nois_itch_v2_2.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_nsmequities_nois_itch_v2_2.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_nasdaq_nsmequities_nois_itch_v2_2.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")

omi_nasdaq_nsmequities_nois_itch_v2_2.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Timestamp display format", timestamp_format_enum, false)
omi_nasdaq_nsmequities_nois_itch_v2_2.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 5, "Hours behind UTC (EST) for midnight calculation")

-- Handle changed preferences
function omi_nasdaq_nsmequities_nois_itch_v2_2.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_nsmequities_nois_itch_v2_2.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_nsmequities_nois_itch_v2_2.prefs.show_application_messages
  end
  if show.headers ~= omi_nasdaq_nsmequities_nois_itch_v2_2.prefs.show_headers then
    show.headers = omi_nasdaq_nsmequities_nois_itch_v2_2.prefs.show_headers
  end
  if show.structs ~= omi_nasdaq_nsmequities_nois_itch_v2_2.prefs.show_structs then
    show.structs = omi_nasdaq_nsmequities_nois_itch_v2_2.prefs.show_structs
  end
  if show.indexes ~= omi_nasdaq_nsmequities_nois_itch_v2_2.prefs.show_indexes then
    show.indexes = omi_nasdaq_nsmequities_nois_itch_v2_2.prefs.show_indexes
  end
  if show.sequences ~= omi_nasdaq_nsmequities_nois_itch_v2_2.prefs.show_sequences then
    show.sequences = omi_nasdaq_nsmequities_nois_itch_v2_2.prefs.show_sequences
  end
  if nasdaq_nsmequities_nois_itch_v2_2.timestamp_format ~= omi_nasdaq_nsmequities_nois_itch_v2_2.prefs.timestamp_format then
    nasdaq_nsmequities_nois_itch_v2_2.timestamp_format = omi_nasdaq_nsmequities_nois_itch_v2_2.prefs.timestamp_format
  end
  if nasdaq_nsmequities_nois_itch_v2_2.utc_offset_hours ~= omi_nasdaq_nsmequities_nois_itch_v2_2.prefs.utc_offset_hours then
    nasdaq_nsmequities_nois_itch_v2_2.utc_offset_hours = omi_nasdaq_nsmequities_nois_itch_v2_2.prefs.utc_offset_hours
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
-- Nasdaq NsmEquities Nois Itch 2.2 Fields
-----------------------------------------------------------------------

-- Cross Type
nasdaq_nsmequities_nois_itch_v2_2.cross_type = {}

-- Size: Cross Type
nasdaq_nsmequities_nois_itch_v2_2.cross_type.size = 1

-- Display: Cross Type
nasdaq_nsmequities_nois_itch_v2_2.cross_type.labels = {
  ["O"] = "Cross Type: Open Cross (O)",
  ["C"] = "Cross Type: Close Cross (C)",
  ["H"] = "Cross Type: Intraday Opening Cross For Ipo (H)",
}

nasdaq_nsmequities_nois_itch_v2_2.cross_type.display = function(value)
  return nasdaq_nsmequities_nois_itch_v2_2.cross_type.labels[value] or "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
nasdaq_nsmequities_nois_itch_v2_2.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_nois_itch_v2_2.cross_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_nois_itch_v2_2.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Current Reference Price
nasdaq_nsmequities_nois_itch_v2_2.current_reference_price = {}

-- Size: Current Reference Price
nasdaq_nsmequities_nois_itch_v2_2.current_reference_price.size = 10

-- Display: Current Reference Price
nasdaq_nsmequities_nois_itch_v2_2.current_reference_price.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, nasdaq_nsmequities_nois_itch_v2_2.current_reference_price.size):string(), 4)

  if text == nil then
    return "Current Reference Price: "..tostring(value)
  end

  return "Current Reference Price: "..text
end

-- Dissect: Current Reference Price
nasdaq_nsmequities_nois_itch_v2_2.current_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_nois_itch_v2_2.current_reference_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2.fields.current_reference_price, range, value, "Current Reference Price: Not Applicable")
    item:add_proto_expert_info(nasdaq_nsmequities_nois_itch_v2_2.experts.not_a_number, "Current Reference Price is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = nasdaq_nsmequities_nois_itch_v2_2.current_reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2.fields.current_reference_price, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_nsmequities_nois_itch_v2_2.event_code = {}

-- Size: Event Code
nasdaq_nsmequities_nois_itch_v2_2.event_code.size = 1

-- Display: Event Code
nasdaq_nsmequities_nois_itch_v2_2.event_code.labels = {
  ["O"] = "Event Code: Start Of Messages (O)",
  ["S"] = "Event Code: Start Of System Hours (S)",
  ["Q"] = "Event Code: Start Of Market Hours (Q)",
  ["M"] = "Event Code: End Of Market Hours (M)",
  ["E"] = "Event Code: End Of System Hours (E)",
  ["C"] = "Event Code: End Of Messages (C)",
}

nasdaq_nsmequities_nois_itch_v2_2.event_code.display = function(value)
  return nasdaq_nsmequities_nois_itch_v2_2.event_code.labels[value] or "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
nasdaq_nsmequities_nois_itch_v2_2.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_nois_itch_v2_2.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_nois_itch_v2_2.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2.fields.event_code, range, value, display)

  return offset + length, value
end

-- Imbalance Direction
nasdaq_nsmequities_nois_itch_v2_2.imbalance_direction = {}

-- Size: Imbalance Direction
nasdaq_nsmequities_nois_itch_v2_2.imbalance_direction.size = 1

-- Display: Imbalance Direction
nasdaq_nsmequities_nois_itch_v2_2.imbalance_direction.labels = {
  ["B"] = "Imbalance Direction: Buy (B)",
  ["S"] = "Imbalance Direction: Sell (S)",
  ["N"] = "Imbalance Direction: No Imbalance (N)",
  ["O"] = "Imbalance Direction: Insufficient (O)",
}

nasdaq_nsmequities_nois_itch_v2_2.imbalance_direction.display = function(value)
  return nasdaq_nsmequities_nois_itch_v2_2.imbalance_direction.labels[value] or "Imbalance Direction: Unknown("..value..")"
end

-- Dissect: Imbalance Direction
nasdaq_nsmequities_nois_itch_v2_2.imbalance_direction.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_nois_itch_v2_2.imbalance_direction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_nois_itch_v2_2.imbalance_direction.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2.fields.imbalance_direction, range, value, display)

  return offset + length, value
end

-- Imbalance Shares
nasdaq_nsmequities_nois_itch_v2_2.imbalance_shares = {}

-- Size: Imbalance Shares
nasdaq_nsmequities_nois_itch_v2_2.imbalance_shares.size = 9

-- Display: Imbalance Shares
nasdaq_nsmequities_nois_itch_v2_2.imbalance_shares.display = function(value)
  return "Imbalance Shares: "..value
end

-- Dissect: Imbalance Shares
nasdaq_nsmequities_nois_itch_v2_2.imbalance_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_nois_itch_v2_2.imbalance_shares.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2.fields.imbalance_shares, range, value, "Imbalance Shares: Not Applicable")
    item:add_proto_expert_info(nasdaq_nsmequities_nois_itch_v2_2.experts.not_a_number, "Imbalance Shares is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nasdaq_nsmequities_nois_itch_v2_2.imbalance_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2.fields.imbalance_shares, range, value, display)

  return offset + length, value
end

-- Issue Classification
nasdaq_nsmequities_nois_itch_v2_2.issue_classification = {}

-- Size: Issue Classification
nasdaq_nsmequities_nois_itch_v2_2.issue_classification.size = 1

-- Display: Issue Classification
nasdaq_nsmequities_nois_itch_v2_2.issue_classification.labels = {
  ["A"] = "Issue Classification: American Depositary Share (A)",
  ["B"] = "Issue Classification: Bond (B)",
  ["C"] = "Issue Classification: Common Stock (C)",
  ["F"] = "Issue Classification: Depository Receipt (F)",
  ["I"] = "Issue Classification: Sec 144 A (I)",
  ["L"] = "Issue Classification: Limited Partnership (L)",
  ["N"] = "Issue Classification: Notes (N)",
  ["O"] = "Issue Classification: Ordinary Share (O)",
  ["P"] = "Issue Classification: Preferred Stock (P)",
  ["Q"] = "Issue Classification: Other Securities (Q)",
  ["R"] = "Issue Classification: Right (R)",
  ["S"] = "Issue Classification: Shares Of Beneficial Interest (S)",
  ["T"] = "Issue Classification: Convertible Debenture (T)",
  ["U"] = "Issue Classification: Unit (U)",
  ["V"] = "Issue Classification: Units Benif Int (V)",
  ["W"] = "Issue Classification: Warrant (W)",
}

nasdaq_nsmequities_nois_itch_v2_2.issue_classification.display = function(value)
  return nasdaq_nsmequities_nois_itch_v2_2.issue_classification.labels[value] or "Issue Classification: Unknown("..value..")"
end

-- Dissect: Issue Classification
nasdaq_nsmequities_nois_itch_v2_2.issue_classification.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_nois_itch_v2_2.issue_classification.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_nois_itch_v2_2.issue_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2.fields.issue_classification, range, value, display)

  return offset + length, value
end

-- Issue Sub Type
nasdaq_nsmequities_nois_itch_v2_2.issue_sub_type = {}

-- Size: Issue Sub Type
nasdaq_nsmequities_nois_itch_v2_2.issue_sub_type.size = 2

-- Display: Issue Sub Type
nasdaq_nsmequities_nois_itch_v2_2.issue_sub_type.labels = {
  ["A"] = "Issue Sub Type: Preferred Trust Securities (A)",
  ["AI"] = "Issue Sub Type: Alpha Index Et Ns (AI)",
  ["B"] = "Issue Sub Type: Index Based Derivative (B)",
  ["C"] = "Issue Sub Type: Common Shares (C)",
  ["CB"] = "Issue Sub Type: Commodity Based Trust Shares (CB)",
  ["CF"] = "Issue Sub Type: Commodity Futures Trust Shares (CF)",
  ["CL"] = "Issue Sub Type: Commodity Linked Securities (CL)",
  ["CM"] = "Issue Sub Type: Commodity Index Trust Shares (CM)",
  ["CO"] = "Issue Sub Type: Collateralized Mortgage Obligation (CO)",
  ["CT"] = "Issue Sub Type: Currency Trust Shares (CT)",
  ["CU"] = "Issue Sub Type: Commodity Currency Linked Securities (CU)",
  ["CW"] = "Issue Sub Type: Currency Warrants (CW)",
  ["D"] = "Issue Sub Type: Global Depositary Shares (D)",
  ["E"] = "Issue Sub Type: Etf Portfolio Depositary Receipt (E)",
  ["EG"] = "Issue Sub Type: Equity Gold Shares (EG)",
  ["EI"] = "Issue Sub Type: Etn Equity Index Linked Securities (EI)",
  ["EM"] = "Issue Sub Type: Next Shares Exchange Traded Managed Fund (EM)",
  ["EN"] = "Issue Sub Type: Exchange Traded Notes (EN)",
  ["EU"] = "Issue Sub Type: Equity Units (EU)",
  ["F"] = "Issue Sub Type: Holdrs (F)",
  ["FI"] = "Issue Sub Type: Etn Fixed Income Linked Securities (FI)",
  ["FL"] = "Issue Sub Type: Etn Futures Linked Securities (FL)",
  ["G"] = "Issue Sub Type: Global Shares (G)",
  ["I"] = "Issue Sub Type: Etf Index Fund Shares (I)",
  ["IR"] = "Issue Sub Type: Interest Rate (IR)",
  ["IW"] = "Issue Sub Type: Index Warrant (IW)",
  ["IX"] = "Issue Sub Type: Index Linked Exchangeable Notes (IX)",
  ["J"] = "Issue Sub Type: Corporate Backed Trust Security (J)",
  ["L"] = "Issue Sub Type: Contingent Litigation Right (L)",
  ["LL"] = "Issue Sub Type: Limited Liability Company (LL)",
  ["M"] = "Issue Sub Type: Equity Based Derivative (M)",
  ["MF"] = "Issue Sub Type: Managed Fund Shares (MF)",
  ["ML"] = "Issue Sub Type: Etn Multi Factor Index Linked Securities (ML)",
  ["MT"] = "Issue Sub Type: Managed Trust Securities (MT)",
  ["N"] = "Issue Sub Type: Ny Registry Shares (N)",
  ["O"] = "Issue Sub Type: Open Ended Mutual Fund (O)",
  ["P"] = "Issue Sub Type: Privately Held Security (P)",
  ["PP"] = "Issue Sub Type: Poison Pill (PP)",
  ["PU"] = "Issue Sub Type: Partnership Units (PU)",
  ["Q"] = "Issue Sub Type: Closed End Funds (Q)",
  ["R"] = "Issue Sub Type: Reg S (R)",
  ["RC"] = "Issue Sub Type: Commodity Redeemable Commodity Linked Securities (RC)",
  ["RF"] = "Issue Sub Type: Etn Redeemable Futures Linked Securities (RF)",
  ["RT"] = "Issue Sub Type: Reit (RT)",
  ["RU"] = "Issue Sub Type: Commodity Redeemable Currency Linked Securities (RU)",
  ["S"] = "Issue Sub Type: Seed (S)",
  ["SC"] = "Issue Sub Type: Spot Rate Closing (SC)",
  ["SI"] = "Issue Sub Type: Spot Rate Intraday (SI)",
  ["T"] = "Issue Sub Type: Tracking Stock (T)",
  ["TC"] = "Issue Sub Type: Trust Certificates (TC)",
  ["TU"] = "Issue Sub Type: Trust Units (TU)",
  ["U"] = "Issue Sub Type: Portal (U)",
  ["V"] = "Issue Sub Type: Contingent Value Right (V)",
  ["W"] = "Issue Sub Type: Trust Issued Receipts (W)",
  ["WC"] = "Issue Sub Type: World Currency Option (WC)",
  ["X"] = "Issue Sub Type: Trust (X)",
  ["Y"] = "Issue Sub Type: Other (Y)",
  ["Z"] = "Issue Sub Type: Not Applicable (Z)",
}

nasdaq_nsmequities_nois_itch_v2_2.issue_sub_type.display = function(value)
  return nasdaq_nsmequities_nois_itch_v2_2.issue_sub_type.labels[value] or "Issue Sub Type: Unknown("..value..")"
end

-- Dissect: Issue Sub Type
nasdaq_nsmequities_nois_itch_v2_2.issue_sub_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_nois_itch_v2_2.issue_sub_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_nois_itch_v2_2.issue_sub_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2.fields.issue_sub_type, range, value, display)

  return offset + length, value
end

-- Market Category
nasdaq_nsmequities_nois_itch_v2_2.market_category = {}

-- Size: Market Category
nasdaq_nsmequities_nois_itch_v2_2.market_category.size = 1

-- Display: Market Category
nasdaq_nsmequities_nois_itch_v2_2.market_category.labels = {
  ["Q"] = "Market Category: Nasdaq Global Select Market (Q)",
  ["G"] = "Market Category: Nasdaq Global Market (G)",
  ["S"] = "Market Category: Nasdaq Capital Market (S)",
  ["N"] = "Market Category: New York Stock Exchange (N)",
  ["A"] = "Market Category: Nyse Amex (A)",
  ["P"] = "Market Category: Nyse Arca (P)",
  ["Z"] = "Market Category: Bats Z Exchange (Z)",
  ["V"] = "Market Category: Investors Exchange (V)",
}

nasdaq_nsmequities_nois_itch_v2_2.market_category.display = function(value)
  return nasdaq_nsmequities_nois_itch_v2_2.market_category.labels[value] or "Market Category: Unknown("..value..")"
end

-- Dissect: Market Category
nasdaq_nsmequities_nois_itch_v2_2.market_category.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_nois_itch_v2_2.market_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_nois_itch_v2_2.market_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2.fields.market_category, range, value, display)

  return offset + length, value
end

-- Message Count
nasdaq_nsmequities_nois_itch_v2_2.message_count = {}

-- Size: Message Count
nasdaq_nsmequities_nois_itch_v2_2.message_count.size = 2

-- Display: Message Count
nasdaq_nsmequities_nois_itch_v2_2.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_nsmequities_nois_itch_v2_2.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_nois_itch_v2_2.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nasdaq_nsmequities_nois_itch_v2_2.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
nasdaq_nsmequities_nois_itch_v2_2.message_length = {}

-- Size: Message Length
nasdaq_nsmequities_nois_itch_v2_2.message_length.size = 2

-- Display: Message Length
nasdaq_nsmequities_nois_itch_v2_2.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_nsmequities_nois_itch_v2_2.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_nois_itch_v2_2.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nasdaq_nsmequities_nois_itch_v2_2.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
nasdaq_nsmequities_nois_itch_v2_2.message_type = {}

-- Size: Message Type
nasdaq_nsmequities_nois_itch_v2_2.message_type.size = 1

-- Display: Message Type
nasdaq_nsmequities_nois_itch_v2_2.message_type.labels = {
  ["S"] = "Message Type: System Event Message (S)",
  ["R"] = "Message Type: Stock Directory (R)",
  ["H"] = "Message Type: Stock Trading Action (H)",
  ["I"] = "Message Type: Nois Message (I)",
}

nasdaq_nsmequities_nois_itch_v2_2.message_type.display = function(value)
  return nasdaq_nsmequities_nois_itch_v2_2.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_nsmequities_nois_itch_v2_2.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_nois_itch_v2_2.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_nois_itch_v2_2.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2.fields.message_type, range, value, display)

  return offset + length, value
end

-- Near Price
nasdaq_nsmequities_nois_itch_v2_2.near_price = {}

-- Size: Near Price
nasdaq_nsmequities_nois_itch_v2_2.near_price.size = 10

-- Display: Near Price
nasdaq_nsmequities_nois_itch_v2_2.near_price.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, nasdaq_nsmequities_nois_itch_v2_2.near_price.size):string(), 4)

  if text == nil then
    return "Near Price: "..tostring(value)
  end

  return "Near Price: "..text
end

-- Dissect: Near Price
nasdaq_nsmequities_nois_itch_v2_2.near_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_nois_itch_v2_2.near_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2.fields.near_price, range, value, "Near Price: Not Applicable")
    item:add_proto_expert_info(nasdaq_nsmequities_nois_itch_v2_2.experts.not_a_number, "Near Price is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = nasdaq_nsmequities_nois_itch_v2_2.near_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2.fields.near_price, range, value, display)

  return offset + length, value
end

-- Reason
nasdaq_nsmequities_nois_itch_v2_2.reason = {}

-- Size: Reason
nasdaq_nsmequities_nois_itch_v2_2.reason.size = 1

-- Display: Reason
nasdaq_nsmequities_nois_itch_v2_2.reason.display = function(value)
  return "Reason: "..value
end

-- Dissect: Reason
nasdaq_nsmequities_nois_itch_v2_2.reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_nois_itch_v2_2.reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_nois_itch_v2_2.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2.fields.reason, range, value, display)

  return offset + length, value
end

-- Rfu
nasdaq_nsmequities_nois_itch_v2_2.rfu = {}

-- Size: Rfu
nasdaq_nsmequities_nois_itch_v2_2.rfu.size = 1

-- Display: Rfu
nasdaq_nsmequities_nois_itch_v2_2.rfu.display = function(value)
  return "Rfu: "..value
end

-- Dissect: Rfu
nasdaq_nsmequities_nois_itch_v2_2.rfu.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_nois_itch_v2_2.rfu.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_nois_itch_v2_2.rfu.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2.fields.rfu, range, value, display)

  return offset + length, value
end

-- Round Lot Size
nasdaq_nsmequities_nois_itch_v2_2.round_lot_size = {}

-- Size: Round Lot Size
nasdaq_nsmequities_nois_itch_v2_2.round_lot_size.size = 6

-- Display: Round Lot Size
nasdaq_nsmequities_nois_itch_v2_2.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
nasdaq_nsmequities_nois_itch_v2_2.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_nois_itch_v2_2.round_lot_size.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2.fields.round_lot_size, range, value, "Round Lot Size: Not Applicable")
    item:add_proto_expert_info(nasdaq_nsmequities_nois_itch_v2_2.experts.not_a_number, "Round Lot Size is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nasdaq_nsmequities_nois_itch_v2_2.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Round Lots Only
nasdaq_nsmequities_nois_itch_v2_2.round_lots_only = {}

-- Size: Round Lots Only
nasdaq_nsmequities_nois_itch_v2_2.round_lots_only.size = 1

-- Display: Round Lots Only
nasdaq_nsmequities_nois_itch_v2_2.round_lots_only.labels = {
  ["Y"] = "Round Lots Only: Round Lots Only (Y)",
  ["N"] = "Round Lots Only: No Restrictions (N)",
}

nasdaq_nsmequities_nois_itch_v2_2.round_lots_only.display = function(value)
  return nasdaq_nsmequities_nois_itch_v2_2.round_lots_only.labels[value] or "Round Lots Only: Unknown("..value..")"
end

-- Dissect: Round Lots Only
nasdaq_nsmequities_nois_itch_v2_2.round_lots_only.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_nois_itch_v2_2.round_lots_only.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_nois_itch_v2_2.round_lots_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2.fields.round_lots_only, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_nsmequities_nois_itch_v2_2.sequence_number = {}

-- Size: Sequence Number
nasdaq_nsmequities_nois_itch_v2_2.sequence_number.size = 4

-- Display: Sequence Number
nasdaq_nsmequities_nois_itch_v2_2.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_nsmequities_nois_itch_v2_2.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_nois_itch_v2_2.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nasdaq_nsmequities_nois_itch_v2_2.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_nsmequities_nois_itch_v2_2.session = {}

-- Size: Session
nasdaq_nsmequities_nois_itch_v2_2.session.size = 10

-- Display: Session
nasdaq_nsmequities_nois_itch_v2_2.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
nasdaq_nsmequities_nois_itch_v2_2.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_nois_itch_v2_2.session.size
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

  local display = nasdaq_nsmequities_nois_itch_v2_2.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2.fields.session, range, value, display)

  return offset + length, value
end

-- Symbol
nasdaq_nsmequities_nois_itch_v2_2.symbol = {}

-- Size: Symbol
nasdaq_nsmequities_nois_itch_v2_2.symbol.size = 8

-- Display: Symbol
nasdaq_nsmequities_nois_itch_v2_2.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
nasdaq_nsmequities_nois_itch_v2_2.symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_nois_itch_v2_2.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_nois_itch_v2_2.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2.fields.symbol, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_nsmequities_nois_itch_v2_2.timestamp = {}

-- Size: Timestamp
nasdaq_nsmequities_nois_itch_v2_2.timestamp.size = 8

-- Display: Timestamp
nasdaq_nsmequities_nois_itch_v2_2.timestamp.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if nasdaq_nsmequities_nois_itch_v2_2.timestamp_format == 0 then
    return "Timestamp: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (calculate from capture date + UTC offset)
  if nasdaq_nsmequities_nois_itch_v2_2.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = nasdaq_nsmequities_nois_itch_v2_2.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", nanoseconds)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
nasdaq_nsmequities_nois_itch_v2_2.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_nois_itch_v2_2.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_nois_itch_v2_2.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trading State
nasdaq_nsmequities_nois_itch_v2_2.trading_state = {}

-- Size: Trading State
nasdaq_nsmequities_nois_itch_v2_2.trading_state.size = 1

-- Display: Trading State
nasdaq_nsmequities_nois_itch_v2_2.trading_state.labels = {
  ["H"] = "Trading State: Halted (H)",
  ["P"] = "Trading State: Paused (P)",
  ["Q"] = "Trading State: Quotation Only (Q)",
  ["T"] = "Trading State: Trading (T)",
}

nasdaq_nsmequities_nois_itch_v2_2.trading_state.display = function(value)
  return nasdaq_nsmequities_nois_itch_v2_2.trading_state.labels[value] or "Trading State: Unknown("..value..")"
end

-- Dissect: Trading State
nasdaq_nsmequities_nois_itch_v2_2.trading_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_nois_itch_v2_2.trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_nois_itch_v2_2.trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2.fields.trading_state, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq NsmEquities Nois Itch 2.2
-----------------------------------------------------------------------

-- Nois Message
nasdaq_nsmequities_nois_itch_v2_2.nois_message = {}

-- Size: Nois Message
nasdaq_nsmequities_nois_itch_v2_2.nois_message.size =
  nasdaq_nsmequities_nois_itch_v2_2.imbalance_shares.size + 
  nasdaq_nsmequities_nois_itch_v2_2.imbalance_direction.size + 
  nasdaq_nsmequities_nois_itch_v2_2.symbol.size + 
  nasdaq_nsmequities_nois_itch_v2_2.near_price.size + 
  nasdaq_nsmequities_nois_itch_v2_2.current_reference_price.size + 
  nasdaq_nsmequities_nois_itch_v2_2.cross_type.size

-- Display: Nois Message
nasdaq_nsmequities_nois_itch_v2_2.nois_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Nois Message
nasdaq_nsmequities_nois_itch_v2_2.nois_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Imbalance Shares: Numeric
  index, imbalance_shares = nasdaq_nsmequities_nois_itch_v2_2.imbalance_shares.dissect(buffer, index, packet, parent)

  -- Imbalance Direction: Alpha
  index, imbalance_direction = nasdaq_nsmequities_nois_itch_v2_2.imbalance_direction.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = nasdaq_nsmequities_nois_itch_v2_2.symbol.dissect(buffer, index, packet, parent)

  -- Near Price: Price
  index, near_price = nasdaq_nsmequities_nois_itch_v2_2.near_price.dissect(buffer, index, packet, parent)

  -- Current Reference Price: Price
  index, current_reference_price = nasdaq_nsmequities_nois_itch_v2_2.current_reference_price.dissect(buffer, index, packet, parent)

  -- Cross Type: Alpha
  index, cross_type = nasdaq_nsmequities_nois_itch_v2_2.cross_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Nois Message
nasdaq_nsmequities_nois_itch_v2_2.nois_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2.fields.nois_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_nois_itch_v2_2.nois_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_nois_itch_v2_2.nois_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_nois_itch_v2_2.nois_message.fields(buffer, offset, packet, parent)
  end
end

-- Stock Trading Action
nasdaq_nsmequities_nois_itch_v2_2.stock_trading_action = {}

-- Size: Stock Trading Action
nasdaq_nsmequities_nois_itch_v2_2.stock_trading_action.size =
  nasdaq_nsmequities_nois_itch_v2_2.symbol.size + 
  nasdaq_nsmequities_nois_itch_v2_2.trading_state.size + 
  nasdaq_nsmequities_nois_itch_v2_2.reason.size

-- Display: Stock Trading Action
nasdaq_nsmequities_nois_itch_v2_2.stock_trading_action.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Trading Action
nasdaq_nsmequities_nois_itch_v2_2.stock_trading_action.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: Alpha
  index, symbol = nasdaq_nsmequities_nois_itch_v2_2.symbol.dissect(buffer, index, packet, parent)

  -- Trading State: Alpha
  index, trading_state = nasdaq_nsmequities_nois_itch_v2_2.trading_state.dissect(buffer, index, packet, parent)

  -- Reason: Alpha
  index, reason = nasdaq_nsmequities_nois_itch_v2_2.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Trading Action
nasdaq_nsmequities_nois_itch_v2_2.stock_trading_action.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2.fields.stock_trading_action, buffer(offset, 0))
    local index = nasdaq_nsmequities_nois_itch_v2_2.stock_trading_action.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_nois_itch_v2_2.stock_trading_action.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_nois_itch_v2_2.stock_trading_action.fields(buffer, offset, packet, parent)
  end
end

-- Stock Directory
nasdaq_nsmequities_nois_itch_v2_2.stock_directory = {}

-- Size: Stock Directory
nasdaq_nsmequities_nois_itch_v2_2.stock_directory.size =
  nasdaq_nsmequities_nois_itch_v2_2.symbol.size + 
  nasdaq_nsmequities_nois_itch_v2_2.market_category.size + 
  nasdaq_nsmequities_nois_itch_v2_2.rfu.size + 
  nasdaq_nsmequities_nois_itch_v2_2.round_lot_size.size + 
  nasdaq_nsmequities_nois_itch_v2_2.round_lots_only.size + 
  nasdaq_nsmequities_nois_itch_v2_2.issue_classification.size + 
  nasdaq_nsmequities_nois_itch_v2_2.issue_sub_type.size

-- Display: Stock Directory
nasdaq_nsmequities_nois_itch_v2_2.stock_directory.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Directory
nasdaq_nsmequities_nois_itch_v2_2.stock_directory.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: Alpha
  index, symbol = nasdaq_nsmequities_nois_itch_v2_2.symbol.dissect(buffer, index, packet, parent)

  -- Market Category: Alpha
  index, market_category = nasdaq_nsmequities_nois_itch_v2_2.market_category.dissect(buffer, index, packet, parent)

  -- Rfu: Alpha
  index, rfu = nasdaq_nsmequities_nois_itch_v2_2.rfu.dissect(buffer, index, packet, parent)

  -- Round Lot Size: Numeric
  index, round_lot_size = nasdaq_nsmequities_nois_itch_v2_2.round_lot_size.dissect(buffer, index, packet, parent)

  -- Round Lots Only: Alpha
  index, round_lots_only = nasdaq_nsmequities_nois_itch_v2_2.round_lots_only.dissect(buffer, index, packet, parent)

  -- Issue Classification: Alpha
  index, issue_classification = nasdaq_nsmequities_nois_itch_v2_2.issue_classification.dissect(buffer, index, packet, parent)

  -- Issue Sub Type: Alpha
  index, issue_sub_type = nasdaq_nsmequities_nois_itch_v2_2.issue_sub_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Directory
nasdaq_nsmequities_nois_itch_v2_2.stock_directory.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2.fields.stock_directory, buffer(offset, 0))
    local index = nasdaq_nsmequities_nois_itch_v2_2.stock_directory.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_nois_itch_v2_2.stock_directory.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_nois_itch_v2_2.stock_directory.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_nsmequities_nois_itch_v2_2.system_event_message = {}

-- Size: System Event Message
nasdaq_nsmequities_nois_itch_v2_2.system_event_message.size =
  nasdaq_nsmequities_nois_itch_v2_2.event_code.size

-- Display: System Event Message
nasdaq_nsmequities_nois_itch_v2_2.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_nsmequities_nois_itch_v2_2.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Event Code: Alpha
  index, event_code = nasdaq_nsmequities_nois_itch_v2_2.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_nsmequities_nois_itch_v2_2.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_nois_itch_v2_2.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_nois_itch_v2_2.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_nois_itch_v2_2.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nasdaq_nsmequities_nois_itch_v2_2.payload = {}

-- Dissect: Payload
nasdaq_nsmequities_nois_itch_v2_2.payload.dispatch = {
  ["S"] = nasdaq_nsmequities_nois_itch_v2_2.system_event_message.dissect,
  ["R"] = nasdaq_nsmequities_nois_itch_v2_2.stock_directory.dissect,
  ["H"] = nasdaq_nsmequities_nois_itch_v2_2.stock_trading_action.dissect,
  ["I"] = nasdaq_nsmequities_nois_itch_v2_2.nois_message.dissect,
}

nasdaq_nsmequities_nois_itch_v2_2.payload.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = nasdaq_nsmequities_nois_itch_v2_2.payload.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nasdaq_nsmequities_nois_itch_v2_2.message_header = {}

-- Size: Message Header
nasdaq_nsmequities_nois_itch_v2_2.message_header.size =
  nasdaq_nsmequities_nois_itch_v2_2.timestamp.size + 
  nasdaq_nsmequities_nois_itch_v2_2.message_type.size

-- Display: Message Header
nasdaq_nsmequities_nois_itch_v2_2.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_nsmequities_nois_itch_v2_2.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_nois_itch_v2_2.timestamp.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 4 values
  index, message_type = nasdaq_nsmequities_nois_itch_v2_2.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_nsmequities_nois_itch_v2_2.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2.fields.message_header, buffer(offset, 0))
    local index = nasdaq_nsmequities_nois_itch_v2_2.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_nois_itch_v2_2.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_nois_itch_v2_2.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message Data
nasdaq_nsmequities_nois_itch_v2_2.message_data = {}

-- Calculate size of: Message Data
nasdaq_nsmequities_nois_itch_v2_2.message_data.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_nois_itch_v2_2.message_header.size

  -- Parse runtime size of: Payload
  index = index + buffer(offset + index - 11, 2):le_uint()

  return index
end

-- Display: Message Data
nasdaq_nsmequities_nois_itch_v2_2.message_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Data
nasdaq_nsmequities_nois_itch_v2_2.message_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_nsmequities_nois_itch_v2_2.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 4 branches
  index = nasdaq_nsmequities_nois_itch_v2_2.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message Data
nasdaq_nsmequities_nois_itch_v2_2.message_data.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2.fields.message_data, buffer(offset, 0))
    local index = nasdaq_nsmequities_nois_itch_v2_2.message_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_nois_itch_v2_2.message_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_nois_itch_v2_2.message_data.fields(buffer, offset, packet, parent)
  end
end

-- End Of Session
nasdaq_nsmequities_nois_itch_v2_2.end_of_session = {}

-- Display: End Of Session
nasdaq_nsmequities_nois_itch_v2_2.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
nasdaq_nsmequities_nois_itch_v2_2.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nsmequities_nois_itch_v2_2.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Message Body
nasdaq_nsmequities_nois_itch_v2_2.message_body = {}

-- Dissect: Message Body
nasdaq_nsmequities_nois_itch_v2_2.message_body.dispatch = {
  [0] = nasdaq_nsmequities_nois_itch_v2_2.end_of_session.dissect,
}

nasdaq_nsmequities_nois_itch_v2_2.message_body.dissect = function(buffer, offset, packet, parent, message_length)
  local dissect = nasdaq_nsmequities_nois_itch_v2_2.message_body.dispatch[message_length]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  -- Dissect Message Data
  return nasdaq_nsmequities_nois_itch_v2_2.message_data.dissect(buffer, offset, packet, parent)
end

-- Message
nasdaq_nsmequities_nois_itch_v2_2.message = {}

-- Read runtime size of: Message
nasdaq_nsmequities_nois_itch_v2_2.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 2):le_uint()

  return message_length + 2
end

-- Display: Message
nasdaq_nsmequities_nois_itch_v2_2.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_nsmequities_nois_itch_v2_2.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Implicit Message Sequence Number
  if message_index ~= nil and show.sequences and nasdaq_nsmequities_nois_itch_v2_2.packet_sequence ~= nil then
    local sequence = parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2.fields.message_sequence_number, UInt64.new(nasdaq_nsmequities_nois_itch_v2_2.packet_sequence + message_index - 1))
    sequence:set_generated()
  end

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_nsmequities_nois_itch_v2_2.message_length.dissect(buffer, index, packet, parent)

  -- Message Body: Runtime Type with 2 branches
  index = nasdaq_nsmequities_nois_itch_v2_2.message_body.dissect(buffer, index, packet, parent, message_length)

  return index
end

-- Dissect: Message
nasdaq_nsmequities_nois_itch_v2_2.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = nasdaq_nsmequities_nois_itch_v2_2.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2.fields.message, buffer(offset, 0))
    local current = nasdaq_nsmequities_nois_itch_v2_2.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_nsmequities_nois_itch_v2_2.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_nois_itch_v2_2.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Heartbeat
nasdaq_nsmequities_nois_itch_v2_2.heartbeat = {}

-- Display: Heartbeat
nasdaq_nsmequities_nois_itch_v2_2.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
nasdaq_nsmequities_nois_itch_v2_2.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nsmequities_nois_itch_v2_2.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
nasdaq_nsmequities_nois_itch_v2_2.messages = {}

-- Dissect: Messages
nasdaq_nsmequities_nois_itch_v2_2.messages.dispatch = {
  [0] = nasdaq_nsmequities_nois_itch_v2_2.heartbeat.dissect,
}

nasdaq_nsmequities_nois_itch_v2_2.messages.dissect = function(buffer, offset, packet, parent, message_count)
  local dissect = nasdaq_nsmequities_nois_itch_v2_2.messages.dispatch[message_count]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 2):le_uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    offset = nasdaq_nsmequities_nois_itch_v2_2.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)

    -- End Of Session: the session ends here, nothing in the packet may follow it
    if message_length == 0 then
      if offset < buffer:len() then
        parent:add_tvb_expert_info(nasdaq_nsmequities_nois_itch_v2_2.experts.message_after_end_of_session, buffer(offset), "Message after the end of session: "..(buffer:len() - offset).." bytes follow it")
      elseif message_index < message_count then
        parent:add_proto_expert_info(nasdaq_nsmequities_nois_itch_v2_2.experts.message_after_end_of_session, "Message after the end of session: count states "..(message_count - message_index).." more")
      end
      break
    end
  end
end

-- Packet Header
nasdaq_nsmequities_nois_itch_v2_2.packet_header = {}

-- Size: Packet Header
nasdaq_nsmequities_nois_itch_v2_2.packet_header.size =
  nasdaq_nsmequities_nois_itch_v2_2.session.size + 
  nasdaq_nsmequities_nois_itch_v2_2.sequence_number.size + 
  nasdaq_nsmequities_nois_itch_v2_2.message_count.size

-- Display: Packet Header
nasdaq_nsmequities_nois_itch_v2_2.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_nsmequities_nois_itch_v2_2.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_nsmequities_nois_itch_v2_2.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = nasdaq_nsmequities_nois_itch_v2_2.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_nsmequities_nois_itch_v2_2.message_count.dissect(buffer, index, packet, parent)

  -- Sequence base for the packet's messages
  nasdaq_nsmequities_nois_itch_v2_2.packet_sequence = sequence_number

  return index
end

-- Dissect: Packet Header
nasdaq_nsmequities_nois_itch_v2_2.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_nsmequities_nois_itch_v2_2.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_nois_itch_v2_2.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_nois_itch_v2_2.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_nsmequities_nois_itch_v2_2.packet = {}

-- Verify required size of Udp packet
nasdaq_nsmequities_nois_itch_v2_2.packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_nsmequities_nois_itch_v2_2.packet_header.size
end

-- Dissect Packet
nasdaq_nsmequities_nois_itch_v2_2.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_nsmequities_nois_itch_v2_2.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):le_uint()

  -- Messages: Runtime Type with 2 branches
  index = nasdaq_nsmequities_nois_itch_v2_2.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_nsmequities_nois_itch_v2_2.init()
end

-- Dissector for Nasdaq NsmEquities Nois Itch 2.2
function omi_nasdaq_nsmequities_nois_itch_v2_2.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_nsmequities_nois_itch_v2_2.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2, buffer(), omi_nasdaq_nsmequities_nois_itch_v2_2.description, "("..buffer:len().." Bytes)")
  return nasdaq_nsmequities_nois_itch_v2_2.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq NsmEquities Nois Itch 2.2 (Udp)
local function omi_nasdaq_nsmequities_nois_itch_v2_2_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_nsmequities_nois_itch_v2_2.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_nsmequities_nois_itch_v2_2
  omi_nasdaq_nsmequities_nois_itch_v2_2.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq NsmEquities Nois Itch 2.2
omi_nasdaq_nsmequities_nois_itch_v2_2:register_heuristic("udp", omi_nasdaq_nsmequities_nois_itch_v2_2_udp_heuristic)

-- Register Nasdaq NsmEquities Nois Itch 2.2 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_nasdaq_nsmequities_nois_itch_v2_2)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 2.2
--   Date: Monday, June 23, 2025
--   Specification: NOIS_v2.2.pdf
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
