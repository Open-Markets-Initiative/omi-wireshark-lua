-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq NsmEquities NoiView Itch 2.1.20130309 Protocol
local omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309 = Proto("Omi.Nasdaq.NsmEquities.NoiView.Itch.v2.1.20130309", "Nasdaq NsmEquities NoiView Itch 2.1.20130309")

-- Protocol table
local nasdaq_nsmequities_noiview_itch_v2_1_20130309 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq NsmEquities NoiView Itch 2.1.20130309 Fields
omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.count = ProtoField.new("Count", "nasdaq.nsmequities.noiview.itch.v2.1.20130309.count", ftypes.UINT16)
omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.cross_price = ProtoField.new("Cross Price", "nasdaq.nsmequities.noiview.itch.v2.1.20130309.crossprice", ftypes.DOUBLE)
omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.cross_type = ProtoField.new("Cross Type", "nasdaq.nsmequities.noiview.itch.v2.1.20130309.crosstype", ftypes.STRING)
omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.current_reference_price = ProtoField.new("Current Reference Price", "nasdaq.nsmequities.noiview.itch.v2.1.20130309.currentreferenceprice", ftypes.DOUBLE)
omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.current_trading_state = ProtoField.new("Current Trading State", "nasdaq.nsmequities.noiview.itch.v2.1.20130309.currenttradingstate", ftypes.STRING)
omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.event_code = ProtoField.new("Event Code", "nasdaq.nsmequities.noiview.itch.v2.1.20130309.eventcode", ftypes.STRING)
omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.far_price = ProtoField.new("Far Price", "nasdaq.nsmequities.noiview.itch.v2.1.20130309.farprice", ftypes.DOUBLE)
omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.financial_status_indicator = ProtoField.new("Financial Status Indicator", "nasdaq.nsmequities.noiview.itch.v2.1.20130309.financialstatusindicator", ftypes.STRING)
omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.imbalance_direction = ProtoField.new("Imbalance Direction", "nasdaq.nsmequities.noiview.itch.v2.1.20130309.imbalancedirection", ftypes.STRING)
omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.imbalance_shares = ProtoField.new("Imbalance Shares", "nasdaq.nsmequities.noiview.itch.v2.1.20130309.imbalanceshares", ftypes.STRING)
omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.length = ProtoField.new("Length", "nasdaq.nsmequities.noiview.itch.v2.1.20130309.length", ftypes.UINT16)
omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.market_category = ProtoField.new("Market Category", "nasdaq.nsmequities.noiview.itch.v2.1.20130309.marketcategory", ftypes.STRING)
omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.match_number = ProtoField.new("Match Number", "nasdaq.nsmequities.noiview.itch.v2.1.20130309.matchnumber", ftypes.STRING)
omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.message_type = ProtoField.new("Message Type", "nasdaq.nsmequities.noiview.itch.v2.1.20130309.messagetype", ftypes.STRING)
omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.near_price = ProtoField.new("Near Price", "nasdaq.nsmequities.noiview.itch.v2.1.20130309.nearprice", ftypes.DOUBLE)
omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.paired_shares = ProtoField.new("Paired Shares", "nasdaq.nsmequities.noiview.itch.v2.1.20130309.pairedshares", ftypes.STRING)
omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.price_variation_indicator = ProtoField.new("Price Variation Indicator", "nasdaq.nsmequities.noiview.itch.v2.1.20130309.pricevariationindicator", ftypes.STRING)
omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.reason = ProtoField.new("Reason", "nasdaq.nsmequities.noiview.itch.v2.1.20130309.reason", ftypes.STRING)
omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "nasdaq.nsmequities.noiview.itch.v2.1.20130309.regshoaction", ftypes.STRING)
omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.round_lot_size = ProtoField.new("Round Lot Size", "nasdaq.nsmequities.noiview.itch.v2.1.20130309.roundlotsize", ftypes.STRING)
omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.round_lots_only = ProtoField.new("Round Lots Only", "nasdaq.nsmequities.noiview.itch.v2.1.20130309.roundlotsonly", ftypes.STRING)
omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.sequence = ProtoField.new("Sequence", "nasdaq.nsmequities.noiview.itch.v2.1.20130309.sequence", ftypes.UINT32)
omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.session = ProtoField.new("Session", "nasdaq.nsmequities.noiview.itch.v2.1.20130309.session", ftypes.STRING)
omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.shares = ProtoField.new("Shares", "nasdaq.nsmequities.noiview.itch.v2.1.20130309.shares", ftypes.STRING)
omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.stock = ProtoField.new("Stock", "nasdaq.nsmequities.noiview.itch.v2.1.20130309.stock", ftypes.STRING)
omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.nsmequities.noiview.itch.v2.1.20130309.timestamp", ftypes.STRING)

-- Nasdaq NsmEquities NoiView Itch 2.1.20130309 Framing
omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.message = ProtoField.new("Message", "nasdaq.nsmequities.noiview.itch.v2.1.20130309.message", ftypes.STRING)
omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.message_header = ProtoField.new("Message Header", "nasdaq.nsmequities.noiview.itch.v2.1.20130309.messageheader", ftypes.STRING)
omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.packet = ProtoField.new("Packet", "nasdaq.nsmequities.noiview.itch.v2.1.20130309.packet", ftypes.STRING)
omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.nsmequities.noiview.itch.v2.1.20130309.packetheader", ftypes.STRING)

-- Nasdaq NsmEquities NoiView 2.1.20130309 Application Messages
omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.cross_trade_message = ProtoField.new("Cross Trade Message", "nasdaq.nsmequities.noiview.itch.v2.1.20130309.crosstrademessage", ftypes.STRING)
omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.noii_message = ProtoField.new("Noii Message", "nasdaq.nsmequities.noiview.itch.v2.1.20130309.noiimessage", ftypes.STRING)
omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.reg_sho_restriction_message = ProtoField.new("Reg Sho Restriction Message", "nasdaq.nsmequities.noiview.itch.v2.1.20130309.regshorestrictionmessage", ftypes.STRING)
omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.stock_directory_message = ProtoField.new("Stock Directory Message", "nasdaq.nsmequities.noiview.itch.v2.1.20130309.stockdirectorymessage", ftypes.STRING)
omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.stock_trading_action_message = ProtoField.new("Stock Trading Action Message", "nasdaq.nsmequities.noiview.itch.v2.1.20130309.stocktradingactionmessage", ftypes.STRING)
omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.nsmequities.noiview.itch.v2.1.20130309.systemeventmessage", ftypes.STRING)

-- Nasdaq NsmEquities NoiView 2.1.20130309 Session Messages
omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.end_of_session = ProtoField.new("End Of Session", "nasdaq.nsmequities.noiview.itch.v2.1.20130309.endofsession", ftypes.BYTES)
omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.heartbeat = ProtoField.new("Heartbeat", "nasdaq.nsmequities.noiview.itch.v2.1.20130309.heartbeat", ftypes.BYTES)

-- Nasdaq NsmEquities NoiView Itch 2.1.20130309 Generated Fields
omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.message_index = ProtoField.new("Message Index", "nasdaq.nsmequities.noiview.itch.v2.1.20130309.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Nasdaq NsmEquities NoiView Itch 2.1.20130309 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
nasdaq_nsmequities_noiview_itch_v2_1_20130309.timestamp_format = 2

-- Hours behind UTC (EST) for midnight calculation
nasdaq_nsmequities_noiview_itch_v2_1_20130309.utc_offset_hours = 5


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq NsmEquities NoiView Itch 2.1.20130309 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true

-- Register Nasdaq NsmEquities NoiView Itch 2.1.20130309 Show Options
omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Timestamp display format", timestamp_format_enum, false)
omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 5, "Hours behind UTC (EST) for midnight calculation")

-- Handle changed preferences
function omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.prefs.show_application_messages
  end
  if show.headers ~= omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.prefs.show_headers then
    show.headers = omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.prefs.show_headers
  end
  if show.structs ~= omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.prefs.show_structs then
    show.structs = omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.prefs.show_structs
  end
  if show.indexes ~= omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.prefs.show_indexes then
    show.indexes = omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.prefs.show_indexes
  end
  if nasdaq_nsmequities_noiview_itch_v2_1_20130309.timestamp_format ~= omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.prefs.timestamp_format then
    nasdaq_nsmequities_noiview_itch_v2_1_20130309.timestamp_format = omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.prefs.timestamp_format
  end
  if nasdaq_nsmequities_noiview_itch_v2_1_20130309.utc_offset_hours ~= omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.prefs.utc_offset_hours then
    nasdaq_nsmequities_noiview_itch_v2_1_20130309.utc_offset_hours = omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.prefs.utc_offset_hours
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
-- Nasdaq NsmEquities NoiView Itch 2.1.20130309 Fields
-----------------------------------------------------------------------

-- Count
nasdaq_nsmequities_noiview_itch_v2_1_20130309.count = {}

-- Size: Count
nasdaq_nsmequities_noiview_itch_v2_1_20130309.count.size = 2

-- Display: Count
nasdaq_nsmequities_noiview_itch_v2_1_20130309.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
nasdaq_nsmequities_noiview_itch_v2_1_20130309.count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noiview_itch_v2_1_20130309.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nasdaq_nsmequities_noiview_itch_v2_1_20130309.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.count, range, value, display)

  return offset + length, value
end

-- Cross Price
nasdaq_nsmequities_noiview_itch_v2_1_20130309.cross_price = {}

-- Size: Cross Price
nasdaq_nsmequities_noiview_itch_v2_1_20130309.cross_price.size = 10

-- Display: Cross Price
nasdaq_nsmequities_noiview_itch_v2_1_20130309.cross_price.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, nasdaq_nsmequities_noiview_itch_v2_1_20130309.cross_price.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Cross Price: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 4 then
    digits = string.rep("0", 4 - #digits + 1)..digits
  end

  return "Cross Price: "..sign..digits:sub(1, #digits - 4)..".".. digits:sub(-4)
end

-- Dissect: Cross Price
nasdaq_nsmequities_noiview_itch_v2_1_20130309.cross_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noiview_itch_v2_1_20130309.cross_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_nsmequities_noiview_itch_v2_1_20130309.cross_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.cross_price, range, value, display)

  return offset + length, value
end

-- Cross Type
nasdaq_nsmequities_noiview_itch_v2_1_20130309.cross_type = {}

-- Size: Cross Type
nasdaq_nsmequities_noiview_itch_v2_1_20130309.cross_type.size = 1

-- Display: Cross Type
nasdaq_nsmequities_noiview_itch_v2_1_20130309.cross_type.display = function(value)
  if value == "O" then
    return "Cross Type: Open Cross (O)"
  end
  if value == "C" then
    return "Cross Type: Close Cross (C)"
  end
  if value == "H" then
    return "Cross Type: Intraday Opening Cross For Ipo And Halted Paused Securities (H)"
  end

  return "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
nasdaq_nsmequities_noiview_itch_v2_1_20130309.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noiview_itch_v2_1_20130309.cross_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_noiview_itch_v2_1_20130309.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Current Reference Price
nasdaq_nsmequities_noiview_itch_v2_1_20130309.current_reference_price = {}

-- Size: Current Reference Price
nasdaq_nsmequities_noiview_itch_v2_1_20130309.current_reference_price.size = 10

-- Display: Current Reference Price
nasdaq_nsmequities_noiview_itch_v2_1_20130309.current_reference_price.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, nasdaq_nsmequities_noiview_itch_v2_1_20130309.current_reference_price.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Current Reference Price: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 4 then
    digits = string.rep("0", 4 - #digits + 1)..digits
  end

  return "Current Reference Price: "..sign..digits:sub(1, #digits - 4)..".".. digits:sub(-4)
end

-- Dissect: Current Reference Price
nasdaq_nsmequities_noiview_itch_v2_1_20130309.current_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noiview_itch_v2_1_20130309.current_reference_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_nsmequities_noiview_itch_v2_1_20130309.current_reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.current_reference_price, range, value, display)

  return offset + length, value
end

-- Current Trading State
nasdaq_nsmequities_noiview_itch_v2_1_20130309.current_trading_state = {}

-- Size: Current Trading State
nasdaq_nsmequities_noiview_itch_v2_1_20130309.current_trading_state.size = 1

-- Display: Current Trading State
nasdaq_nsmequities_noiview_itch_v2_1_20130309.current_trading_state.display = function(value)
  if value == "H" then
    return "Current Trading State: Halted Or Paused Across All Us Equity Markets Sr Os (H)"
  end
  if value == "P" then
    return "Current Trading State: Paused Across All Us Equity Markets Sr Os (P)"
  end
  if value == "Q" then
    return "Current Trading State: Quotation Only Period For Cross Sro Halt Or Pause (Q)"
  end
  if value == "T" then
    return "Current Trading State: Trading On Nasdaq (T)"
  end

  return "Current Trading State: Unknown("..value..")"
end

-- Dissect: Current Trading State
nasdaq_nsmequities_noiview_itch_v2_1_20130309.current_trading_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noiview_itch_v2_1_20130309.current_trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_noiview_itch_v2_1_20130309.current_trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.current_trading_state, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_nsmequities_noiview_itch_v2_1_20130309.event_code = {}

-- Size: Event Code
nasdaq_nsmequities_noiview_itch_v2_1_20130309.event_code.size = 1

-- Display: Event Code
nasdaq_nsmequities_noiview_itch_v2_1_20130309.event_code.display = function(value)
  if value == "O" then
    return "Event Code: Start Of Messages (O)"
  end
  if value == "S" then
    return "Event Code: Start Of System Hours (S)"
  end
  if value == "Q" then
    return "Event Code: Start Of Market Hours (Q)"
  end
  if value == "X" then
    return "Event Code: Clear Noii Opening Cross Data (X)"
  end
  if value == "M" then
    return "Event Code: End Of Market Hours (M)"
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
nasdaq_nsmequities_noiview_itch_v2_1_20130309.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noiview_itch_v2_1_20130309.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_noiview_itch_v2_1_20130309.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.event_code, range, value, display)

  return offset + length, value
end

-- Far Price
nasdaq_nsmequities_noiview_itch_v2_1_20130309.far_price = {}

-- Size: Far Price
nasdaq_nsmequities_noiview_itch_v2_1_20130309.far_price.size = 10

-- Display: Far Price
nasdaq_nsmequities_noiview_itch_v2_1_20130309.far_price.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, nasdaq_nsmequities_noiview_itch_v2_1_20130309.far_price.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Far Price: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 4 then
    digits = string.rep("0", 4 - #digits + 1)..digits
  end

  return "Far Price: "..sign..digits:sub(1, #digits - 4)..".".. digits:sub(-4)
end

-- Dissect: Far Price
nasdaq_nsmequities_noiview_itch_v2_1_20130309.far_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noiview_itch_v2_1_20130309.far_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_nsmequities_noiview_itch_v2_1_20130309.far_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.far_price, range, value, display)

  return offset + length, value
end

-- Financial Status Indicator
nasdaq_nsmequities_noiview_itch_v2_1_20130309.financial_status_indicator = {}

-- Size: Financial Status Indicator
nasdaq_nsmequities_noiview_itch_v2_1_20130309.financial_status_indicator.size = 1

-- Display: Financial Status Indicator
nasdaq_nsmequities_noiview_itch_v2_1_20130309.financial_status_indicator.display = function(value)
  if value == "D" then
    return "Financial Status Indicator: Deficient (D)"
  end
  if value == "E" then
    return "Financial Status Indicator: Delinquent (E)"
  end
  if value == "Q" then
    return "Financial Status Indicator: Bankrupt (Q)"
  end
  if value == "S" then
    return "Financial Status Indicator: Suspended (S)"
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
    return "Financial Status Indicator: Company Is In Compliance (<whitespace>)"
  end

  return "Financial Status Indicator: Unknown("..value..")"
end

-- Dissect: Financial Status Indicator
nasdaq_nsmequities_noiview_itch_v2_1_20130309.financial_status_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noiview_itch_v2_1_20130309.financial_status_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_noiview_itch_v2_1_20130309.financial_status_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.financial_status_indicator, range, value, display)

  return offset + length, value
end

-- Imbalance Direction
nasdaq_nsmequities_noiview_itch_v2_1_20130309.imbalance_direction = {}

-- Size: Imbalance Direction
nasdaq_nsmequities_noiview_itch_v2_1_20130309.imbalance_direction.size = 1

-- Display: Imbalance Direction
nasdaq_nsmequities_noiview_itch_v2_1_20130309.imbalance_direction.display = function(value)
  if value == "B" then
    return "Imbalance Direction: Buy Imbalance (B)"
  end
  if value == "S" then
    return "Imbalance Direction: Sell Imbalance (S)"
  end
  if value == "N" then
    return "Imbalance Direction: No Imbalance (N)"
  end
  if value == "O" then
    return "Imbalance Direction: Insufficient Orders To Calculate (O)"
  end

  return "Imbalance Direction: Unknown("..value..")"
end

-- Dissect: Imbalance Direction
nasdaq_nsmequities_noiview_itch_v2_1_20130309.imbalance_direction.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noiview_itch_v2_1_20130309.imbalance_direction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_noiview_itch_v2_1_20130309.imbalance_direction.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.imbalance_direction, range, value, display)

  return offset + length, value
end

-- Imbalance Shares
nasdaq_nsmequities_noiview_itch_v2_1_20130309.imbalance_shares = {}

-- Size: Imbalance Shares
nasdaq_nsmequities_noiview_itch_v2_1_20130309.imbalance_shares.size = 9

-- Display: Imbalance Shares
nasdaq_nsmequities_noiview_itch_v2_1_20130309.imbalance_shares.display = function(value)
  return "Imbalance Shares: "..value
end

-- Dissect: Imbalance Shares
nasdaq_nsmequities_noiview_itch_v2_1_20130309.imbalance_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noiview_itch_v2_1_20130309.imbalance_shares.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_nsmequities_noiview_itch_v2_1_20130309.imbalance_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.imbalance_shares, range, value, display)

  return offset + length, value
end

-- Length
nasdaq_nsmequities_noiview_itch_v2_1_20130309.length = {}

-- Size: Length
nasdaq_nsmequities_noiview_itch_v2_1_20130309.length.size = 2

-- Display: Length
nasdaq_nsmequities_noiview_itch_v2_1_20130309.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
nasdaq_nsmequities_noiview_itch_v2_1_20130309.length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noiview_itch_v2_1_20130309.length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_noiview_itch_v2_1_20130309.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.length, range, value, display)

  return offset + length, value
end

-- Market Category
nasdaq_nsmequities_noiview_itch_v2_1_20130309.market_category = {}

-- Size: Market Category
nasdaq_nsmequities_noiview_itch_v2_1_20130309.market_category.size = 1

-- Display: Market Category
nasdaq_nsmequities_noiview_itch_v2_1_20130309.market_category.display = function(value)
  if value == "N" then
    return "Market Category: New York Stock Exchange Nyse (N)"
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

  return "Market Category: Unknown("..value..")"
end

-- Dissect: Market Category
nasdaq_nsmequities_noiview_itch_v2_1_20130309.market_category.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noiview_itch_v2_1_20130309.market_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_noiview_itch_v2_1_20130309.market_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.market_category, range, value, display)

  return offset + length, value
end

-- Match Number
nasdaq_nsmequities_noiview_itch_v2_1_20130309.match_number = {}

-- Size: Match Number
nasdaq_nsmequities_noiview_itch_v2_1_20130309.match_number.size = 12

-- Display: Match Number
nasdaq_nsmequities_noiview_itch_v2_1_20130309.match_number.display = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
nasdaq_nsmequities_noiview_itch_v2_1_20130309.match_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noiview_itch_v2_1_20130309.match_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_nsmequities_noiview_itch_v2_1_20130309.match_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.match_number, range, value, display)

  return offset + length, value
end

-- Message Type
nasdaq_nsmequities_noiview_itch_v2_1_20130309.message_type = {}

-- Size: Message Type
nasdaq_nsmequities_noiview_itch_v2_1_20130309.message_type.size = 1

-- Display: Message Type
nasdaq_nsmequities_noiview_itch_v2_1_20130309.message_type.display = function(value)
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
    return "Message Type: Reg Sho Restriction Message (Y)"
  end
  if value == "I" then
    return "Message Type: Noii Message (I)"
  end
  if value == "Q" then
    return "Message Type: Cross Trade Message (Q)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_nsmequities_noiview_itch_v2_1_20130309.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noiview_itch_v2_1_20130309.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_noiview_itch_v2_1_20130309.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.message_type, range, value, display)

  return offset + length, value
end

-- Near Price
nasdaq_nsmequities_noiview_itch_v2_1_20130309.near_price = {}

-- Size: Near Price
nasdaq_nsmequities_noiview_itch_v2_1_20130309.near_price.size = 10

-- Display: Near Price
nasdaq_nsmequities_noiview_itch_v2_1_20130309.near_price.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, nasdaq_nsmequities_noiview_itch_v2_1_20130309.near_price.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Near Price: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 4 then
    digits = string.rep("0", 4 - #digits + 1)..digits
  end

  return "Near Price: "..sign..digits:sub(1, #digits - 4)..".".. digits:sub(-4)
end

-- Dissect: Near Price
nasdaq_nsmequities_noiview_itch_v2_1_20130309.near_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noiview_itch_v2_1_20130309.near_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_nsmequities_noiview_itch_v2_1_20130309.near_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.near_price, range, value, display)

  return offset + length, value
end

-- Paired Shares
nasdaq_nsmequities_noiview_itch_v2_1_20130309.paired_shares = {}

-- Size: Paired Shares
nasdaq_nsmequities_noiview_itch_v2_1_20130309.paired_shares.size = 9

-- Display: Paired Shares
nasdaq_nsmequities_noiview_itch_v2_1_20130309.paired_shares.display = function(value)
  return "Paired Shares: "..value
end

-- Dissect: Paired Shares
nasdaq_nsmequities_noiview_itch_v2_1_20130309.paired_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noiview_itch_v2_1_20130309.paired_shares.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_nsmequities_noiview_itch_v2_1_20130309.paired_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.paired_shares, range, value, display)

  return offset + length, value
end

-- Price Variation Indicator
nasdaq_nsmequities_noiview_itch_v2_1_20130309.price_variation_indicator = {}

-- Size: Price Variation Indicator
nasdaq_nsmequities_noiview_itch_v2_1_20130309.price_variation_indicator.size = 1

-- Display: Price Variation Indicator
nasdaq_nsmequities_noiview_itch_v2_1_20130309.price_variation_indicator.display = function(value)
  if value == "L" then
    return "Price Variation Indicator: Less Than 1% (L)"
  end
  if value == "1" then
    return "Price Variation Indicator: One To One Point Nine Nine Percent (1)"
  end
  if value == "2" then
    return "Price Variation Indicator: Two To Two Point Nine Nine Percent (2)"
  end
  if value == "3" then
    return "Price Variation Indicator: Three To Three Point Nine Nine Percent (3)"
  end
  if value == "4" then
    return "Price Variation Indicator: Four To Four Point Nine Nine Percent (4)"
  end
  if value == "5" then
    return "Price Variation Indicator: Five To Five Point Nine Nine Percent (5)"
  end
  if value == "6" then
    return "Price Variation Indicator: Six To Six Point Nine Nine Percent (6)"
  end
  if value == "7" then
    return "Price Variation Indicator: Seven To Seven Point Nine Nine Percent (7)"
  end
  if value == "8" then
    return "Price Variation Indicator: Eight To Eight Point Nine Nine Percent (8)"
  end
  if value == "9" then
    return "Price Variation Indicator: Nine To Nine Point Nine Nine Percent (9)"
  end
  if value == "A" then
    return "Price Variation Indicator: Ten To Nineteen Point Nine Nine Percent (A)"
  end
  if value == "B" then
    return "Price Variation Indicator: Twenty To Twenty Nine Point Nine Nine Percent (B)"
  end
  if value == "C" then
    return "Price Variation Indicator: Thirty Percent Or Greater (C)"
  end
  if value == " " then
    return "Price Variation Indicator: Cannot Be Calculated (<whitespace>)"
  end

  return "Price Variation Indicator: Unknown("..value..")"
end

-- Dissect: Price Variation Indicator
nasdaq_nsmequities_noiview_itch_v2_1_20130309.price_variation_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noiview_itch_v2_1_20130309.price_variation_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_noiview_itch_v2_1_20130309.price_variation_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.price_variation_indicator, range, value, display)

  return offset + length, value
end

-- Reason
nasdaq_nsmequities_noiview_itch_v2_1_20130309.reason = {}

-- Size: Reason
nasdaq_nsmequities_noiview_itch_v2_1_20130309.reason.size = 4

-- Display: Reason
nasdaq_nsmequities_noiview_itch_v2_1_20130309.reason.display = function(value)
  if value == "T1" then
    return "Reason: Halt News Pending (T1)"
  end
  if value == "T2" then
    return "Reason: Halt News Disseminated (T2)"
  end
  if value == "T5" then
    return "Reason: Single Stock Trading Pause In Effect (T5)"
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
    return "Reason: Single Stock Trading Pause Quotation Only Period (T7)"
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
nasdaq_nsmequities_noiview_itch_v2_1_20130309.reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noiview_itch_v2_1_20130309.reason.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_noiview_itch_v2_1_20130309.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.reason, range, value, display)

  return offset + length, value
end

-- Reg Sho Action
nasdaq_nsmequities_noiview_itch_v2_1_20130309.reg_sho_action = {}

-- Size: Reg Sho Action
nasdaq_nsmequities_noiview_itch_v2_1_20130309.reg_sho_action.size = 1

-- Display: Reg Sho Action
nasdaq_nsmequities_noiview_itch_v2_1_20130309.reg_sho_action.display = function(value)
  if value == "0" then
    return "Reg Sho Action: No Price Test In Place (0)"
  end
  if value == "1" then
    return "Reg Sho Action: Reg Sho Short Sale Price Test Restriction In Effect Due To An Intraday Price Drop In Security (1)"
  end
  if value == "2" then
    return "Reg Sho Action: Reg Sho Short Sale Price Test Restriction Remains In Effect (2)"
  end

  return "Reg Sho Action: Unknown("..value..")"
end

-- Dissect: Reg Sho Action
nasdaq_nsmequities_noiview_itch_v2_1_20130309.reg_sho_action.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noiview_itch_v2_1_20130309.reg_sho_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_noiview_itch_v2_1_20130309.reg_sho_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Round Lot Size
nasdaq_nsmequities_noiview_itch_v2_1_20130309.round_lot_size = {}

-- Size: Round Lot Size
nasdaq_nsmequities_noiview_itch_v2_1_20130309.round_lot_size.size = 6

-- Display: Round Lot Size
nasdaq_nsmequities_noiview_itch_v2_1_20130309.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
nasdaq_nsmequities_noiview_itch_v2_1_20130309.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noiview_itch_v2_1_20130309.round_lot_size.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_nsmequities_noiview_itch_v2_1_20130309.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Round Lots Only
nasdaq_nsmequities_noiview_itch_v2_1_20130309.round_lots_only = {}

-- Size: Round Lots Only
nasdaq_nsmequities_noiview_itch_v2_1_20130309.round_lots_only.size = 1

-- Display: Round Lots Only
nasdaq_nsmequities_noiview_itch_v2_1_20130309.round_lots_only.display = function(value)
  if value == "Y" then
    return "Round Lots Only: Only Round Lots Are Accepted In This Stock (Y)"
  end
  if value == "N" then
    return "Round Lots Only: Oddmixed Lots Are Allowed (N)"
  end

  return "Round Lots Only: Unknown("..value..")"
end

-- Dissect: Round Lots Only
nasdaq_nsmequities_noiview_itch_v2_1_20130309.round_lots_only.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noiview_itch_v2_1_20130309.round_lots_only.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_noiview_itch_v2_1_20130309.round_lots_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.round_lots_only, range, value, display)

  return offset + length, value
end

-- Sequence
nasdaq_nsmequities_noiview_itch_v2_1_20130309.sequence = {}

-- Size: Sequence
nasdaq_nsmequities_noiview_itch_v2_1_20130309.sequence.size = 4

-- Display: Sequence
nasdaq_nsmequities_noiview_itch_v2_1_20130309.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
nasdaq_nsmequities_noiview_itch_v2_1_20130309.sequence.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noiview_itch_v2_1_20130309.sequence.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_noiview_itch_v2_1_20130309.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.sequence, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_nsmequities_noiview_itch_v2_1_20130309.session = {}

-- Size: Session
nasdaq_nsmequities_noiview_itch_v2_1_20130309.session.size = 10

-- Display: Session
nasdaq_nsmequities_noiview_itch_v2_1_20130309.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
nasdaq_nsmequities_noiview_itch_v2_1_20130309.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noiview_itch_v2_1_20130309.session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_noiview_itch_v2_1_20130309.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.session, range, value, display)

  return offset + length, value
end

-- Shares
nasdaq_nsmequities_noiview_itch_v2_1_20130309.shares = {}

-- Size: Shares
nasdaq_nsmequities_noiview_itch_v2_1_20130309.shares.size = 9

-- Display: Shares
nasdaq_nsmequities_noiview_itch_v2_1_20130309.shares.display = function(value)
  return "Shares: "..value
end

-- Dissect: Shares
nasdaq_nsmequities_noiview_itch_v2_1_20130309.shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noiview_itch_v2_1_20130309.shares.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_nsmequities_noiview_itch_v2_1_20130309.shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.shares, range, value, display)

  return offset + length, value
end

-- Stock
nasdaq_nsmequities_noiview_itch_v2_1_20130309.stock = {}

-- Size: Stock
nasdaq_nsmequities_noiview_itch_v2_1_20130309.stock.size = 8

-- Display: Stock
nasdaq_nsmequities_noiview_itch_v2_1_20130309.stock.display = function(value)
  return "Stock: "..value
end

-- Dissect: Stock
nasdaq_nsmequities_noiview_itch_v2_1_20130309.stock.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noiview_itch_v2_1_20130309.stock.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_noiview_itch_v2_1_20130309.stock.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.stock, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_nsmequities_noiview_itch_v2_1_20130309.timestamp = {}

-- Size: Timestamp
nasdaq_nsmequities_noiview_itch_v2_1_20130309.timestamp.size = 8

-- Display: Timestamp
nasdaq_nsmequities_noiview_itch_v2_1_20130309.timestamp.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode (or unparsable ASCII fell back to a non-number)
  if type(value) ~= "number" then
    return "Timestamp: "..tostring(value)
  end

  if nasdaq_nsmequities_noiview_itch_v2_1_20130309.timestamp_format == 0 then
    return "Timestamp: "..value
  end

  -- Parse milliseconds since midnight
  local seconds = math.floor(value / 1000)
  local milliseconds = value % 1000

  -- Full datetime mode (calculate from capture date + UTC offset)
  if nasdaq_nsmequities_noiview_itch_v2_1_20130309.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = nasdaq_nsmequities_noiview_itch_v2_1_20130309.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Timestamp: "..os.date("!%Y-%m-%d %H:%M:%S.", full_seconds + utc_offset_seconds)..string.format("%03d", milliseconds)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("!%H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Timestamp
nasdaq_nsmequities_noiview_itch_v2_1_20130309.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noiview_itch_v2_1_20130309.timestamp.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_nsmequities_noiview_itch_v2_1_20130309.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.timestamp, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq NsmEquities NoiView Itch 2.1.20130309
-----------------------------------------------------------------------

-- Cross Trade Message
nasdaq_nsmequities_noiview_itch_v2_1_20130309.cross_trade_message = {}

-- Size: Cross Trade Message
nasdaq_nsmequities_noiview_itch_v2_1_20130309.cross_trade_message.size =
  nasdaq_nsmequities_noiview_itch_v2_1_20130309.shares.size + 
  nasdaq_nsmequities_noiview_itch_v2_1_20130309.stock.size + 
  nasdaq_nsmequities_noiview_itch_v2_1_20130309.cross_price.size + 
  nasdaq_nsmequities_noiview_itch_v2_1_20130309.match_number.size + 
  nasdaq_nsmequities_noiview_itch_v2_1_20130309.cross_type.size

-- Display: Cross Trade Message
nasdaq_nsmequities_noiview_itch_v2_1_20130309.cross_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cross Trade Message
nasdaq_nsmequities_noiview_itch_v2_1_20130309.cross_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Shares: Numeric
  index, shares = nasdaq_nsmequities_noiview_itch_v2_1_20130309.shares.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_nsmequities_noiview_itch_v2_1_20130309.stock.dissect(buffer, index, packet, parent)

  -- Cross Price: Price
  index, cross_price = nasdaq_nsmequities_noiview_itch_v2_1_20130309.cross_price.dissect(buffer, index, packet, parent)

  -- Match Number: Numeric
  index, match_number = nasdaq_nsmequities_noiview_itch_v2_1_20130309.match_number.dissect(buffer, index, packet, parent)

  -- Cross Type: Alpha
  index, cross_type = nasdaq_nsmequities_noiview_itch_v2_1_20130309.cross_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Trade Message
nasdaq_nsmequities_noiview_itch_v2_1_20130309.cross_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.cross_trade_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_noiview_itch_v2_1_20130309.cross_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_noiview_itch_v2_1_20130309.cross_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_noiview_itch_v2_1_20130309.cross_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Noii Message
nasdaq_nsmequities_noiview_itch_v2_1_20130309.noii_message = {}

-- Size: Noii Message
nasdaq_nsmequities_noiview_itch_v2_1_20130309.noii_message.size =
  nasdaq_nsmequities_noiview_itch_v2_1_20130309.paired_shares.size + 
  nasdaq_nsmequities_noiview_itch_v2_1_20130309.imbalance_shares.size + 
  nasdaq_nsmequities_noiview_itch_v2_1_20130309.imbalance_direction.size + 
  nasdaq_nsmequities_noiview_itch_v2_1_20130309.stock.size + 
  nasdaq_nsmequities_noiview_itch_v2_1_20130309.far_price.size + 
  nasdaq_nsmequities_noiview_itch_v2_1_20130309.near_price.size + 
  nasdaq_nsmequities_noiview_itch_v2_1_20130309.current_reference_price.size + 
  nasdaq_nsmequities_noiview_itch_v2_1_20130309.cross_type.size + 
  nasdaq_nsmequities_noiview_itch_v2_1_20130309.price_variation_indicator.size

-- Display: Noii Message
nasdaq_nsmequities_noiview_itch_v2_1_20130309.noii_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Noii Message
nasdaq_nsmequities_noiview_itch_v2_1_20130309.noii_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Paired Shares: Numeric
  index, paired_shares = nasdaq_nsmequities_noiview_itch_v2_1_20130309.paired_shares.dissect(buffer, index, packet, parent)

  -- Imbalance Shares: Numeric
  index, imbalance_shares = nasdaq_nsmequities_noiview_itch_v2_1_20130309.imbalance_shares.dissect(buffer, index, packet, parent)

  -- Imbalance Direction: Alpha
  index, imbalance_direction = nasdaq_nsmequities_noiview_itch_v2_1_20130309.imbalance_direction.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_nsmequities_noiview_itch_v2_1_20130309.stock.dissect(buffer, index, packet, parent)

  -- Far Price: Price
  index, far_price = nasdaq_nsmequities_noiview_itch_v2_1_20130309.far_price.dissect(buffer, index, packet, parent)

  -- Near Price: Price
  index, near_price = nasdaq_nsmequities_noiview_itch_v2_1_20130309.near_price.dissect(buffer, index, packet, parent)

  -- Current Reference Price: Price
  index, current_reference_price = nasdaq_nsmequities_noiview_itch_v2_1_20130309.current_reference_price.dissect(buffer, index, packet, parent)

  -- Cross Type: Alpha
  index, cross_type = nasdaq_nsmequities_noiview_itch_v2_1_20130309.cross_type.dissect(buffer, index, packet, parent)

  -- Price Variation Indicator: Alpha
  index, price_variation_indicator = nasdaq_nsmequities_noiview_itch_v2_1_20130309.price_variation_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Noii Message
nasdaq_nsmequities_noiview_itch_v2_1_20130309.noii_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.noii_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_noiview_itch_v2_1_20130309.noii_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_noiview_itch_v2_1_20130309.noii_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_noiview_itch_v2_1_20130309.noii_message.fields(buffer, offset, packet, parent)
  end
end

-- Reg Sho Restriction Message
nasdaq_nsmequities_noiview_itch_v2_1_20130309.reg_sho_restriction_message = {}

-- Size: Reg Sho Restriction Message
nasdaq_nsmequities_noiview_itch_v2_1_20130309.reg_sho_restriction_message.size =
  nasdaq_nsmequities_noiview_itch_v2_1_20130309.stock.size + 
  nasdaq_nsmequities_noiview_itch_v2_1_20130309.reg_sho_action.size

-- Display: Reg Sho Restriction Message
nasdaq_nsmequities_noiview_itch_v2_1_20130309.reg_sho_restriction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reg Sho Restriction Message
nasdaq_nsmequities_noiview_itch_v2_1_20130309.reg_sho_restriction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock: Alpha
  index, stock = nasdaq_nsmequities_noiview_itch_v2_1_20130309.stock.dissect(buffer, index, packet, parent)

  -- Reg Sho Action: Alpha
  index, reg_sho_action = nasdaq_nsmequities_noiview_itch_v2_1_20130309.reg_sho_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reg Sho Restriction Message
nasdaq_nsmequities_noiview_itch_v2_1_20130309.reg_sho_restriction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.reg_sho_restriction_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_noiview_itch_v2_1_20130309.reg_sho_restriction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_noiview_itch_v2_1_20130309.reg_sho_restriction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_noiview_itch_v2_1_20130309.reg_sho_restriction_message.fields(buffer, offset, packet, parent)
  end
end

-- Stock Trading Action Message
nasdaq_nsmequities_noiview_itch_v2_1_20130309.stock_trading_action_message = {}

-- Size: Stock Trading Action Message
nasdaq_nsmequities_noiview_itch_v2_1_20130309.stock_trading_action_message.size =
  nasdaq_nsmequities_noiview_itch_v2_1_20130309.stock.size + 
  nasdaq_nsmequities_noiview_itch_v2_1_20130309.current_trading_state.size + 
  nasdaq_nsmequities_noiview_itch_v2_1_20130309.reason.size

-- Display: Stock Trading Action Message
nasdaq_nsmequities_noiview_itch_v2_1_20130309.stock_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Trading Action Message
nasdaq_nsmequities_noiview_itch_v2_1_20130309.stock_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock: Alpha
  index, stock = nasdaq_nsmequities_noiview_itch_v2_1_20130309.stock.dissect(buffer, index, packet, parent)

  -- Current Trading State: Alpha
  index, current_trading_state = nasdaq_nsmequities_noiview_itch_v2_1_20130309.current_trading_state.dissect(buffer, index, packet, parent)

  -- Reason: Alpha
  index, reason = nasdaq_nsmequities_noiview_itch_v2_1_20130309.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Trading Action Message
nasdaq_nsmequities_noiview_itch_v2_1_20130309.stock_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.stock_trading_action_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_noiview_itch_v2_1_20130309.stock_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_noiview_itch_v2_1_20130309.stock_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_noiview_itch_v2_1_20130309.stock_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Stock Directory Message
nasdaq_nsmequities_noiview_itch_v2_1_20130309.stock_directory_message = {}

-- Size: Stock Directory Message
nasdaq_nsmequities_noiview_itch_v2_1_20130309.stock_directory_message.size =
  nasdaq_nsmequities_noiview_itch_v2_1_20130309.stock.size + 
  nasdaq_nsmequities_noiview_itch_v2_1_20130309.market_category.size + 
  nasdaq_nsmequities_noiview_itch_v2_1_20130309.financial_status_indicator.size + 
  nasdaq_nsmequities_noiview_itch_v2_1_20130309.round_lot_size.size + 
  nasdaq_nsmequities_noiview_itch_v2_1_20130309.round_lots_only.size

-- Display: Stock Directory Message
nasdaq_nsmequities_noiview_itch_v2_1_20130309.stock_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Directory Message
nasdaq_nsmequities_noiview_itch_v2_1_20130309.stock_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock: Alpha
  index, stock = nasdaq_nsmequities_noiview_itch_v2_1_20130309.stock.dissect(buffer, index, packet, parent)

  -- Market Category: Alpha
  index, market_category = nasdaq_nsmequities_noiview_itch_v2_1_20130309.market_category.dissect(buffer, index, packet, parent)

  -- Financial Status Indicator: Alpha
  index, financial_status_indicator = nasdaq_nsmequities_noiview_itch_v2_1_20130309.financial_status_indicator.dissect(buffer, index, packet, parent)

  -- Round Lot Size: Numeric
  index, round_lot_size = nasdaq_nsmequities_noiview_itch_v2_1_20130309.round_lot_size.dissect(buffer, index, packet, parent)

  -- Round Lots Only: Alpha
  index, round_lots_only = nasdaq_nsmequities_noiview_itch_v2_1_20130309.round_lots_only.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Directory Message
nasdaq_nsmequities_noiview_itch_v2_1_20130309.stock_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.stock_directory_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_noiview_itch_v2_1_20130309.stock_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_noiview_itch_v2_1_20130309.stock_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_noiview_itch_v2_1_20130309.stock_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_nsmequities_noiview_itch_v2_1_20130309.system_event_message = {}

-- Size: System Event Message
nasdaq_nsmequities_noiview_itch_v2_1_20130309.system_event_message.size =
  nasdaq_nsmequities_noiview_itch_v2_1_20130309.event_code.size

-- Display: System Event Message
nasdaq_nsmequities_noiview_itch_v2_1_20130309.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_nsmequities_noiview_itch_v2_1_20130309.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Event Code: Alpha
  index, event_code = nasdaq_nsmequities_noiview_itch_v2_1_20130309.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_nsmequities_noiview_itch_v2_1_20130309.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_noiview_itch_v2_1_20130309.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_noiview_itch_v2_1_20130309.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_noiview_itch_v2_1_20130309.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nasdaq_nsmequities_noiview_itch_v2_1_20130309.payload = {}

-- Dissect: Payload
nasdaq_nsmequities_noiview_itch_v2_1_20130309.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event Message
  if message_type == "S" then
    return nasdaq_nsmequities_noiview_itch_v2_1_20130309.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Directory Message
  if message_type == "R" then
    return nasdaq_nsmequities_noiview_itch_v2_1_20130309.stock_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Trading Action Message
  if message_type == "H" then
    return nasdaq_nsmequities_noiview_itch_v2_1_20130309.stock_trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reg Sho Restriction Message
  if message_type == "Y" then
    return nasdaq_nsmequities_noiview_itch_v2_1_20130309.reg_sho_restriction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Noii Message
  if message_type == "I" then
    return nasdaq_nsmequities_noiview_itch_v2_1_20130309.noii_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cross Trade Message
  if message_type == "Q" then
    return nasdaq_nsmequities_noiview_itch_v2_1_20130309.cross_trade_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nasdaq_nsmequities_noiview_itch_v2_1_20130309.message_header = {}

-- Size: Message Header
nasdaq_nsmequities_noiview_itch_v2_1_20130309.message_header.size =
  nasdaq_nsmequities_noiview_itch_v2_1_20130309.length.size + 
  nasdaq_nsmequities_noiview_itch_v2_1_20130309.timestamp.size + 
  nasdaq_nsmequities_noiview_itch_v2_1_20130309.message_type.size

-- Display: Message Header
nasdaq_nsmequities_noiview_itch_v2_1_20130309.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_nsmequities_noiview_itch_v2_1_20130309.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = nasdaq_nsmequities_noiview_itch_v2_1_20130309.length.dissect(buffer, index, packet, parent)

  -- Timestamp: 8 Byte Ascii String
  index, timestamp = nasdaq_nsmequities_noiview_itch_v2_1_20130309.timestamp.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 6 values
  index, message_type = nasdaq_nsmequities_noiview_itch_v2_1_20130309.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_nsmequities_noiview_itch_v2_1_20130309.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.message_header, buffer(offset, 0))
    local index = nasdaq_nsmequities_noiview_itch_v2_1_20130309.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_noiview_itch_v2_1_20130309.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_noiview_itch_v2_1_20130309.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_nsmequities_noiview_itch_v2_1_20130309.message = {}

-- Read runtime size of: Message
nasdaq_nsmequities_noiview_itch_v2_1_20130309.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Length
  local length = buffer(offset, 2):uint()

  return length + 2
end

-- Display: Message
nasdaq_nsmequities_noiview_itch_v2_1_20130309.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_nsmequities_noiview_itch_v2_1_20130309.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 3 fields
  index, message_header = nasdaq_nsmequities_noiview_itch_v2_1_20130309.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 6 branches
  index = nasdaq_nsmequities_noiview_itch_v2_1_20130309.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_nsmequities_noiview_itch_v2_1_20130309.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = nasdaq_nsmequities_noiview_itch_v2_1_20130309.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.message, buffer(offset, 0))
    local current = nasdaq_nsmequities_noiview_itch_v2_1_20130309.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_nsmequities_noiview_itch_v2_1_20130309.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_noiview_itch_v2_1_20130309.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- End Of Session
nasdaq_nsmequities_noiview_itch_v2_1_20130309.end_of_session = {}

-- Display: End Of Session
nasdaq_nsmequities_noiview_itch_v2_1_20130309.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
nasdaq_nsmequities_noiview_itch_v2_1_20130309.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nsmequities_noiview_itch_v2_1_20130309.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Heartbeat
nasdaq_nsmequities_noiview_itch_v2_1_20130309.heartbeat = {}

-- Display: Heartbeat
nasdaq_nsmequities_noiview_itch_v2_1_20130309.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
nasdaq_nsmequities_noiview_itch_v2_1_20130309.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nsmequities_noiview_itch_v2_1_20130309.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
nasdaq_nsmequities_noiview_itch_v2_1_20130309.messages = {}

-- Dissect: Messages
nasdaq_nsmequities_noiview_itch_v2_1_20130309.messages.dissect = function(buffer, offset, packet, parent, count)
  -- Dissect Heartbeat
  if count == 0 then
    return nasdaq_nsmequities_noiview_itch_v2_1_20130309.heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session
  if count == 65535 then
    return nasdaq_nsmequities_noiview_itch_v2_1_20130309.end_of_session.dissect(buffer, offset, packet, parent)
  end

  -- Repeating: Message
  for message_index = 1, count do

    -- Dependency element: Length
    local length = buffer(offset, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = length + 2

    -- Message: Struct of 2 fields
    offset = nasdaq_nsmequities_noiview_itch_v2_1_20130309.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end
end

-- Packet Header
nasdaq_nsmequities_noiview_itch_v2_1_20130309.packet_header = {}

-- Size: Packet Header
nasdaq_nsmequities_noiview_itch_v2_1_20130309.packet_header.size =
  nasdaq_nsmequities_noiview_itch_v2_1_20130309.session.size + 
  nasdaq_nsmequities_noiview_itch_v2_1_20130309.sequence.size + 
  nasdaq_nsmequities_noiview_itch_v2_1_20130309.count.size

-- Display: Packet Header
nasdaq_nsmequities_noiview_itch_v2_1_20130309.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_nsmequities_noiview_itch_v2_1_20130309.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_nsmequities_noiview_itch_v2_1_20130309.session.dissect(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = nasdaq_nsmequities_noiview_itch_v2_1_20130309.sequence.dissect(buffer, index, packet, parent)

  -- Count: 2 Byte Unsigned Fixed Width Integer
  index, count = nasdaq_nsmequities_noiview_itch_v2_1_20130309.count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nasdaq_nsmequities_noiview_itch_v2_1_20130309.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_nsmequities_noiview_itch_v2_1_20130309.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_noiview_itch_v2_1_20130309.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_noiview_itch_v2_1_20130309.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_nsmequities_noiview_itch_v2_1_20130309.packet = {}

-- Verify required size of Udp packet
nasdaq_nsmequities_noiview_itch_v2_1_20130309.packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_nsmequities_noiview_itch_v2_1_20130309.packet_header.size
end

-- Dissect Packet
nasdaq_nsmequities_noiview_itch_v2_1_20130309.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_nsmequities_noiview_itch_v2_1_20130309.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Count
  local count = buffer(index - 2, 2):le_uint()

  -- Messages: Runtime Type with 3 branches
  index = nasdaq_nsmequities_noiview_itch_v2_1_20130309.messages.dissect(buffer, index, packet, parent, count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.init()
end

-- Dissector for Nasdaq NsmEquities NoiView Itch 2.1.20130309
function omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309, buffer(), omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.description, "("..buffer:len().." Bytes)")
  return nasdaq_nsmequities_noiview_itch_v2_1_20130309.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq NsmEquities NoiView Itch 2.1.20130309 (Udp)
local function omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_nsmequities_noiview_itch_v2_1_20130309.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309
  omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq NsmEquities NoiView Itch 2.1.20130309
omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309:register_heuristic("udp", omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309_udp_heuristic)

-- Register Nasdaq NsmEquities NoiView Itch 2.1.20130309 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_nasdaq_nsmequities_noiview_itch_v2_1_20130309)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 2.1.20130309
--   Date: Saturday, March 9, 2013
--   Specification: NQNoiview-v2_1.pdf
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
