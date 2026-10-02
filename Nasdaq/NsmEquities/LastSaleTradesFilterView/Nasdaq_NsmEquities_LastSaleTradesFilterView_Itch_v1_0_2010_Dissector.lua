-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq NsmEquities LastSaleTradesFilterView Itch 1.0.2010 Protocol
local omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010 = Proto("Omi.Nasdaq.NsmEquities.LastSaleTradesFilterView.Itch.v1.0.2010", "Nasdaq NsmEquities LastSaleTradesFilterView Itch 1.0.2010")

-- Protocol table
local nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq NsmEquities LastSaleTradesFilterView Itch 1.0.2010 Fields
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.corrected_extended_hours_or_sold_code = ProtoField.new("Corrected Extended Hours Or Sold Code", "nasdaq.nsmequities.lastsaletradesfilterview.itch.v1.0.2010.correctedextendedhoursorsoldcode", ftypes.STRING)
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.corrected_sale_condition_modifier = ProtoField.new("Corrected Sale Condition Modifier", "nasdaq.nsmequities.lastsaletradesfilterview.itch.v1.0.2010.correctedsaleconditionmodifier", ftypes.STRING)
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.corrected_settlement_type = ProtoField.new("Corrected Settlement Type", "nasdaq.nsmequities.lastsaletradesfilterview.itch.v1.0.2010.correctedsettlementtype", ftypes.STRING)
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.corrected_special_sale_condition = ProtoField.new("Corrected Special Sale Condition", "nasdaq.nsmequities.lastsaletradesfilterview.itch.v1.0.2010.correctedspecialsalecondition", ftypes.STRING)
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.corrected_trade_control_number = ProtoField.new("Corrected Trade Control Number", "nasdaq.nsmequities.lastsaletradesfilterview.itch.v1.0.2010.correctedtradecontrolnumber", ftypes.STRING)
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.corrected_trade_price = ProtoField.new("Corrected Trade Price", "nasdaq.nsmequities.lastsaletradesfilterview.itch.v1.0.2010.correctedtradeprice", ftypes.DOUBLE)
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.corrected_trade_size = ProtoField.new("Corrected Trade Size", "nasdaq.nsmequities.lastsaletradesfilterview.itch.v1.0.2010.correctedtradesize", ftypes.STRING)
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.corrected_trade_through_exemption = ProtoField.new("Corrected Trade Through Exemption", "nasdaq.nsmequities.lastsaletradesfilterview.itch.v1.0.2010.correctedtradethroughexemption", ftypes.STRING)
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.current_trading_state = ProtoField.new("Current Trading State", "nasdaq.nsmequities.lastsaletradesfilterview.itch.v1.0.2010.currenttradingstate", ftypes.STRING)
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.event_code = ProtoField.new("Event Code", "nasdaq.nsmequities.lastsaletradesfilterview.itch.v1.0.2010.eventcode", ftypes.STRING)
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.extended_hours_or_sold_code = ProtoField.new("Extended Hours Or Sold Code", "nasdaq.nsmequities.lastsaletradesfilterview.itch.v1.0.2010.extendedhoursorsoldcode", ftypes.STRING)
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.financial_status_indicator = ProtoField.new("Financial Status Indicator", "nasdaq.nsmequities.lastsaletradesfilterview.itch.v1.0.2010.financialstatusindicator", ftypes.STRING)
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.issue_symbol = ProtoField.new("Issue Symbol", "nasdaq.nsmequities.lastsaletradesfilterview.itch.v1.0.2010.issuesymbol", ftypes.STRING)
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.market_category = ProtoField.new("Market Category", "nasdaq.nsmequities.lastsaletradesfilterview.itch.v1.0.2010.marketcategory", ftypes.STRING)
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.market_center_identifier = ProtoField.new("Market Center Identifier", "nasdaq.nsmequities.lastsaletradesfilterview.itch.v1.0.2010.marketcenteridentifier", ftypes.STRING)
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.message_count = ProtoField.new("Message Count", "nasdaq.nsmequities.lastsaletradesfilterview.itch.v1.0.2010.messagecount", ftypes.UINT16)
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.message_length = ProtoField.new("Message Length", "nasdaq.nsmequities.lastsaletradesfilterview.itch.v1.0.2010.messagelength", ftypes.UINT16)
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.message_type = ProtoField.new("Message Type", "nasdaq.nsmequities.lastsaletradesfilterview.itch.v1.0.2010.messagetype", ftypes.STRING)
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.original_extended_hours_or_sold_code = ProtoField.new("Original Extended Hours Or Sold Code", "nasdaq.nsmequities.lastsaletradesfilterview.itch.v1.0.2010.originalextendedhoursorsoldcode", ftypes.STRING)
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.original_sale_condition_modifier = ProtoField.new("Original Sale Condition Modifier", "nasdaq.nsmequities.lastsaletradesfilterview.itch.v1.0.2010.originalsaleconditionmodifier", ftypes.STRING)
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.original_settlement_type = ProtoField.new("Original Settlement Type", "nasdaq.nsmequities.lastsaletradesfilterview.itch.v1.0.2010.originalsettlementtype", ftypes.STRING)
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.original_special_sale_condition = ProtoField.new("Original Special Sale Condition", "nasdaq.nsmequities.lastsaletradesfilterview.itch.v1.0.2010.originalspecialsalecondition", ftypes.STRING)
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.original_trade_control_number = ProtoField.new("Original Trade Control Number", "nasdaq.nsmequities.lastsaletradesfilterview.itch.v1.0.2010.originaltradecontrolnumber", ftypes.STRING)
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.original_trade_price = ProtoField.new("Original Trade Price", "nasdaq.nsmequities.lastsaletradesfilterview.itch.v1.0.2010.originaltradeprice", ftypes.DOUBLE)
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.original_trade_size = ProtoField.new("Original Trade Size", "nasdaq.nsmequities.lastsaletradesfilterview.itch.v1.0.2010.originaltradesize", ftypes.STRING)
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.original_trade_through_exemption = ProtoField.new("Original Trade Through Exemption", "nasdaq.nsmequities.lastsaletradesfilterview.itch.v1.0.2010.originaltradethroughexemption", ftypes.STRING)
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.reason = ProtoField.new("Reason", "nasdaq.nsmequities.lastsaletradesfilterview.itch.v1.0.2010.reason", ftypes.STRING)
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.sale_condition_modifier = ProtoField.new("Sale Condition Modifier", "nasdaq.nsmequities.lastsaletradesfilterview.itch.v1.0.2010.saleconditionmodifier", ftypes.STRING)
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.security_class = ProtoField.new("Security Class", "nasdaq.nsmequities.lastsaletradesfilterview.itch.v1.0.2010.securityclass", ftypes.STRING)
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.nsmequities.lastsaletradesfilterview.itch.v1.0.2010.sequencenumber", ftypes.UINT32)
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.session = ProtoField.new("Session", "nasdaq.nsmequities.lastsaletradesfilterview.itch.v1.0.2010.session", ftypes.STRING)
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.settlement_type = ProtoField.new("Settlement Type", "nasdaq.nsmequities.lastsaletradesfilterview.itch.v1.0.2010.settlementtype", ftypes.STRING)
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.special_sale_condition = ProtoField.new("Special Sale Condition", "nasdaq.nsmequities.lastsaletradesfilterview.itch.v1.0.2010.specialsalecondition", ftypes.STRING)
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.nsmequities.lastsaletradesfilterview.itch.v1.0.2010.timestamp", ftypes.STRING)
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.trade_control_number = ProtoField.new("Trade Control Number", "nasdaq.nsmequities.lastsaletradesfilterview.itch.v1.0.2010.tradecontrolnumber", ftypes.STRING)
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.trade_price = ProtoField.new("Trade Price", "nasdaq.nsmequities.lastsaletradesfilterview.itch.v1.0.2010.tradeprice", ftypes.DOUBLE)
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.trade_size = ProtoField.new("Trade Size", "nasdaq.nsmequities.lastsaletradesfilterview.itch.v1.0.2010.tradesize", ftypes.STRING)
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.trade_through_exemption = ProtoField.new("Trade Through Exemption", "nasdaq.nsmequities.lastsaletradesfilterview.itch.v1.0.2010.tradethroughexemption", ftypes.STRING)

-- Nasdaq NsmEquities LastSaleTradesFilterView Itch 1.0.2010 Framing
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.message = ProtoField.new("Message", "nasdaq.nsmequities.lastsaletradesfilterview.itch.v1.0.2010.message", ftypes.STRING)
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.message_header = ProtoField.new("Message Header", "nasdaq.nsmequities.lastsaletradesfilterview.itch.v1.0.2010.messageheader", ftypes.STRING)
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.packet = ProtoField.new("Packet", "nasdaq.nsmequities.lastsaletradesfilterview.itch.v1.0.2010.packet", ftypes.STRING)
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.nsmequities.lastsaletradesfilterview.itch.v1.0.2010.packetheader", ftypes.STRING)

-- Nasdaq NsmEquities LastSaleTradesFilterView 1.0.2010 Session Messages
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.end_of_session = ProtoField.new("End Of Session", "nasdaq.nsmequities.lastsaletradesfilterview.itch.v1.0.2010.endofsession", ftypes.BYTES)
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.heartbeat = ProtoField.new("Heartbeat", "nasdaq.nsmequities.lastsaletradesfilterview.itch.v1.0.2010.heartbeat", ftypes.BYTES)

-- Nasdaq NsmEquities LastSaleTradesFilterView 1.0.2010 Application Messages
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.stock_directory_message = ProtoField.new("Stock Directory Message", "nasdaq.nsmequities.lastsaletradesfilterview.itch.v1.0.2010.stockdirectorymessage", ftypes.STRING)
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.stock_trading_action_message = ProtoField.new("Stock Trading Action Message", "nasdaq.nsmequities.lastsaletradesfilterview.itch.v1.0.2010.stocktradingactionmessage", ftypes.STRING)
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.nsmequities.lastsaletradesfilterview.itch.v1.0.2010.systemeventmessage", ftypes.STRING)
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.trade_cancel_error_message = ProtoField.new("Trade Cancel Error Message", "nasdaq.nsmequities.lastsaletradesfilterview.itch.v1.0.2010.tradecancelerrormessage", ftypes.STRING)
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.trade_correction_message = ProtoField.new("Trade Correction Message", "nasdaq.nsmequities.lastsaletradesfilterview.itch.v1.0.2010.tradecorrectionmessage", ftypes.STRING)
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.trade_report_message = ProtoField.new("Trade Report Message", "nasdaq.nsmequities.lastsaletradesfilterview.itch.v1.0.2010.tradereportmessage", ftypes.STRING)

-- Nasdaq NsmEquities LastSaleTradesFilterView Itch 1.0.2010 Generated Fields
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.message_index = ProtoField.new("Message Index", "nasdaq.nsmequities.lastsaletradesfilterview.itch.v1.0.2010.messageindex", ftypes.UINT16)
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "nasdaq.nsmequities.lastsaletradesfilterview.itch.v1.0.2010.messagesequencenumber", ftypes.UINT64)

-----------------------------------------------------------------------
-- Nasdaq NsmEquities LastSaleTradesFilterView Itch 1.0.2010 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.timestamp_format = 2

-- Hours behind UTC (EST) for midnight calculation
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.utc_offset_hours = 5


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq NsmEquities LastSaleTradesFilterView Itch 1.0.2010 Element Dissection Options
show.structs = true
show.headers = true
show.application_messages = true
show.indexes = true
show.sequences = true

-- Register Nasdaq NsmEquities LastSaleTradesFilterView Itch 1.0.2010 Show Options
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")

omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Timestamp display format", timestamp_format_enum, false)
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 5, "Hours behind UTC (EST) for midnight calculation")

-- Handle changed preferences
function omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.prefs.show_application_messages
  end
  if show.headers ~= omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.prefs.show_headers then
    show.headers = omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.prefs.show_headers
  end
  if show.structs ~= omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.prefs.show_structs then
    show.structs = omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.prefs.show_structs
  end
  if show.indexes ~= omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.prefs.show_indexes then
    show.indexes = omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.prefs.show_indexes
  end
  if show.sequences ~= omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.prefs.show_sequences then
    show.sequences = omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.prefs.show_sequences
  end
  if nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.timestamp_format ~= omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.prefs.timestamp_format then
    nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.timestamp_format = omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.prefs.timestamp_format
  end
  if nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.utc_offset_hours ~= omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.prefs.utc_offset_hours then
    nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.utc_offset_hours = omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.prefs.utc_offset_hours
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
-- Nasdaq NsmEquities LastSaleTradesFilterView Itch 1.0.2010 Fields
-----------------------------------------------------------------------

-- Corrected Extended Hours Or Sold Code
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_extended_hours_or_sold_code = {}

-- Size: Corrected Extended Hours Or Sold Code
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_extended_hours_or_sold_code.size = 1

-- Display: Corrected Extended Hours Or Sold Code
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_extended_hours_or_sold_code.display = function(value)
  if value == "T" then
    return "Corrected Extended Hours Or Sold Code: Extended Hours Trade (T)"
  end
  if value == "U" then
    return "Corrected Extended Hours Or Sold Code: Extended Hours Trade Reported Late Or Out Of Sequence (U)"
  end
  if value == "L" then
    return "Corrected Extended Hours Or Sold Code: Sold Last Reported Late But In Sequence (L)"
  end
  if value == "Z" then
    return "Corrected Extended Hours Or Sold Code: Sold Out Of Sequence (Z)"
  end
  if value == " " then
    return "Corrected Extended Hours Or Sold Code: Not Applicable (<whitespace>)"
  end

  return "Corrected Extended Hours Or Sold Code: Unknown("..value..")"
end

-- Dissect: Corrected Extended Hours Or Sold Code
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_extended_hours_or_sold_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_extended_hours_or_sold_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_extended_hours_or_sold_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.corrected_extended_hours_or_sold_code, range, value, display)

  return offset + length, value
end

-- Corrected Settlement Type
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_settlement_type = {}

-- Size: Corrected Settlement Type
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_settlement_type.size = 1

-- Display: Corrected Settlement Type
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_settlement_type.display = function(value)
  if value == "@" then
    return "Corrected Settlement Type: Regular Settlement (@)"
  end
  if value == "C" then
    return "Corrected Settlement Type: Cash Settlement (C)"
  end
  if value == "N" then
    return "Corrected Settlement Type: Next Day Settlement (N)"
  end
  if value == "R" then
    return "Corrected Settlement Type: Seller Settlement (R)"
  end

  return "Corrected Settlement Type: Unknown("..value..")"
end

-- Dissect: Corrected Settlement Type
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_settlement_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_settlement_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_settlement_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.corrected_settlement_type, range, value, display)

  return offset + length, value
end

-- Corrected Special Sale Condition
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_special_sale_condition = {}

-- Size: Corrected Special Sale Condition
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_special_sale_condition.size = 1

-- Display: Corrected Special Sale Condition
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_special_sale_condition.display = function(value)
  if value == "A" then
    return "Corrected Special Sale Condition: Acquisition (A)"
  end
  if value == "B" then
    return "Corrected Special Sale Condition: Bunched (B)"
  end
  if value == "D" then
    return "Corrected Special Sale Condition: Distribution (D)"
  end
  if value == "H" then
    return "Corrected Special Sale Condition: Price Variation Transaction (H)"
  end
  if value == "M" then
    return "Corrected Special Sale Condition: Official Close Price (M)"
  end
  if value == "P" then
    return "Corrected Special Sale Condition: Prior Reference Price (P)"
  end
  if value == "Q" then
    return "Corrected Special Sale Condition: Official Opening Price (Q)"
  end
  if value == "S" then
    return "Corrected Special Sale Condition: Split Trade (S)"
  end
  if value == "W" then
    return "Corrected Special Sale Condition: Weighted Average Price (W)"
  end
  if value == "X" then
    return "Corrected Special Sale Condition: Cross Trade (X)"
  end
  if value == "o" then
    return "Corrected Special Sale Condition: Odd Lot Execution (o)"
  end
  if value == " " then
    return "Corrected Special Sale Condition: Not Applicable (<whitespace>)"
  end

  return "Corrected Special Sale Condition: Unknown("..value..")"
end

-- Dissect: Corrected Special Sale Condition
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_special_sale_condition.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_special_sale_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_special_sale_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.corrected_special_sale_condition, range, value, display)

  return offset + length, value
end

-- Corrected Trade Control Number
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_trade_control_number = {}

-- Size: Corrected Trade Control Number
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_trade_control_number.size = 10

-- Display: Corrected Trade Control Number
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_trade_control_number.display = function(value)
  return "Corrected Trade Control Number: "..value
end

-- Dissect: Corrected Trade Control Number
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_trade_control_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_trade_control_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_trade_control_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.corrected_trade_control_number, range, value, display)

  return offset + length, value
end

-- Corrected Trade Price
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_trade_price = {}

-- Size: Corrected Trade Price
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_trade_price.size = 10

-- Display: Corrected Trade Price
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_trade_price.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_trade_price.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Corrected Trade Price: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 4 then
    digits = string.rep("0", 4 - #digits + 1)..digits
  end

  return "Corrected Trade Price: "..sign..digits:sub(1, #digits - 4)..".".. digits:sub(-4)
end

-- Dissect: Corrected Trade Price
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_trade_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.corrected_trade_price, range, value, display)

  return offset + length, value
end

-- Corrected Trade Size
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_trade_size = {}

-- Size: Corrected Trade Size
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_trade_size.size = 9

-- Display: Corrected Trade Size
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_trade_size.display = function(value)
  return "Corrected Trade Size: "..value
end

-- Dissect: Corrected Trade Size
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_trade_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_trade_size.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_trade_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.corrected_trade_size, range, value, display)

  return offset + length, value
end

-- Corrected Trade Through Exemption
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_trade_through_exemption = {}

-- Size: Corrected Trade Through Exemption
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_trade_through_exemption.size = 1

-- Display: Corrected Trade Through Exemption
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_trade_through_exemption.display = function(value)
  if value == "F" then
    return "Corrected Trade Through Exemption: Intermarket Sweep (F)"
  end
  if value == "O" then
    return "Corrected Trade Through Exemption: Opening Print (O)"
  end
  if value == "4" then
    return "Corrected Trade Through Exemption: Derivative Priced (4)"
  end
  if value == "5" then
    return "Corrected Trade Through Exemption: Re Opening Print (5)"
  end
  if value == "6" then
    return "Corrected Trade Through Exemption: Closing Print (6)"
  end
  if value == " " then
    return "Corrected Trade Through Exemption: Not Applicable (<whitespace>)"
  end

  return "Corrected Trade Through Exemption: Unknown("..value..")"
end

-- Dissect: Corrected Trade Through Exemption
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_trade_through_exemption.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_trade_through_exemption.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_trade_through_exemption.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.corrected_trade_through_exemption, range, value, display)

  return offset + length, value
end

-- Current Trading State
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.current_trading_state = {}

-- Size: Current Trading State
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.current_trading_state.size = 1

-- Display: Current Trading State
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.current_trading_state.display = function(value)
  if value == "H" then
    return "Current Trading State: Halted Or Paused On Nasdaq And All Utp Participants (H)"
  end
  if value == "V" then
    return "Current Trading State: Halted Or Paused On Nasdaq Omx (V)"
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
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.current_trading_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.current_trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.current_trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.current_trading_state, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.event_code = {}

-- Size: Event Code
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.event_code.size = 1

-- Display: Event Code
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.event_code.display = function(value)
  if value == "O" then
    return "Event Code: Start Of Transmissions (O)"
  end
  if value == "Q" then
    return "Event Code: Start Of Market Hours (Q)"
  end
  if value == "M" then
    return "Event Code: End Of Market Hours (M)"
  end
  if value == "C" then
    return "Event Code: End Of Transmissions (C)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.event_code, range, value, display)

  return offset + length, value
end

-- Extended Hours Or Sold Code
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.extended_hours_or_sold_code = {}

-- Size: Extended Hours Or Sold Code
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.extended_hours_or_sold_code.size = 1

-- Display: Extended Hours Or Sold Code
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.extended_hours_or_sold_code.display = function(value)
  if value == "T" then
    return "Extended Hours Or Sold Code: Extended Hours Trade (T)"
  end
  if value == "U" then
    return "Extended Hours Or Sold Code: Extended Hours Trade Reported Late Or Out Of Sequence (U)"
  end
  if value == "L" then
    return "Extended Hours Or Sold Code: Sold Last Reported Late But In Sequence (L)"
  end
  if value == "Z" then
    return "Extended Hours Or Sold Code: Sold Out Of Sequence (Z)"
  end
  if value == " " then
    return "Extended Hours Or Sold Code: Not Applicable (<whitespace>)"
  end

  return "Extended Hours Or Sold Code: Unknown("..value..")"
end

-- Dissect: Extended Hours Or Sold Code
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.extended_hours_or_sold_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.extended_hours_or_sold_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.extended_hours_or_sold_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.extended_hours_or_sold_code, range, value, display)

  return offset + length, value
end

-- Financial Status Indicator
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.financial_status_indicator = {}

-- Size: Financial Status Indicator
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.financial_status_indicator.size = 1

-- Display: Financial Status Indicator
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.financial_status_indicator.display = function(value)
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
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.financial_status_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.financial_status_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.financial_status_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.financial_status_indicator, range, value, display)

  return offset + length, value
end

-- Issue Symbol
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.issue_symbol = {}

-- Size: Issue Symbol
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.issue_symbol.size = 6

-- Display: Issue Symbol
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.issue_symbol.display = function(value)
  return "Issue Symbol: "..value
end

-- Dissect: Issue Symbol
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.issue_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.issue_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.issue_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.issue_symbol, range, value, display)

  return offset + length, value
end

-- Market Category
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.market_category = {}

-- Size: Market Category
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.market_category.size = 1

-- Display: Market Category
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.market_category.display = function(value)
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
  if value == " " then
    return "Market Category: Not Available (<whitespace>)"
  end

  return "Market Category: Unknown("..value..")"
end

-- Dissect: Market Category
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.market_category.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.market_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.market_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.market_category, range, value, display)

  return offset + length, value
end

-- Market Center Identifier
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.market_center_identifier = {}

-- Size: Market Center Identifier
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.market_center_identifier.size = 1

-- Display: Market Center Identifier
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.market_center_identifier.display = function(value)
  if value == "Q" then
    return "Market Center Identifier: Nasdaq (Q)"
  end
  if value == "L" then
    return "Market Center Identifier: Trf (L)"
  end

  return "Market Center Identifier: Unknown("..value..")"
end

-- Dissect: Market Center Identifier
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.market_center_identifier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.market_center_identifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.market_center_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.market_center_identifier, range, value, display)

  return offset + length, value
end

-- Message Count
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.message_count = {}

-- Size: Message Count
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.message_count.size = 2

-- Display: Message Count
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.message_length = {}

-- Size: Message Length
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.message_length.size = 2

-- Display: Message Length
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.message_type = {}

-- Size: Message Type
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.message_type.size = 1

-- Display: Message Type
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.message_type.display = function(value)
  if value == "S" then
    return "Message Type: System Event Message (S)"
  end
  if value == "T" then
    return "Message Type: Trade Report Message (T)"
  end
  if value == "X" then
    return "Message Type: Trade Cancel Error Message (X)"
  end
  if value == "C" then
    return "Message Type: Trade Correction Message (C)"
  end
  if value == "H" then
    return "Message Type: Stock Trading Action Message (H)"
  end
  if value == "R" then
    return "Message Type: Stock Directory Message (R)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.message_type, range, value, display)

  return offset + length, value
end

-- Original Extended Hours Or Sold Code
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_extended_hours_or_sold_code = {}

-- Size: Original Extended Hours Or Sold Code
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_extended_hours_or_sold_code.size = 1

-- Display: Original Extended Hours Or Sold Code
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_extended_hours_or_sold_code.display = function(value)
  if value == "T" then
    return "Original Extended Hours Or Sold Code: Extended Hours Trade (T)"
  end
  if value == "U" then
    return "Original Extended Hours Or Sold Code: Extended Hours Trade Reported Late Or Out Of Sequence (U)"
  end
  if value == "L" then
    return "Original Extended Hours Or Sold Code: Sold Last Reported Late But In Sequence (L)"
  end
  if value == "Z" then
    return "Original Extended Hours Or Sold Code: Sold Out Of Sequence (Z)"
  end
  if value == " " then
    return "Original Extended Hours Or Sold Code: Not Applicable (<whitespace>)"
  end

  return "Original Extended Hours Or Sold Code: Unknown("..value..")"
end

-- Dissect: Original Extended Hours Or Sold Code
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_extended_hours_or_sold_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_extended_hours_or_sold_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_extended_hours_or_sold_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.original_extended_hours_or_sold_code, range, value, display)

  return offset + length, value
end

-- Original Settlement Type
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_settlement_type = {}

-- Size: Original Settlement Type
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_settlement_type.size = 1

-- Display: Original Settlement Type
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_settlement_type.display = function(value)
  if value == "@" then
    return "Original Settlement Type: Regular Settlement (@)"
  end
  if value == "C" then
    return "Original Settlement Type: Cash Settlement (C)"
  end
  if value == "N" then
    return "Original Settlement Type: Next Day Settlement (N)"
  end
  if value == "R" then
    return "Original Settlement Type: Seller Settlement (R)"
  end

  return "Original Settlement Type: Unknown("..value..")"
end

-- Dissect: Original Settlement Type
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_settlement_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_settlement_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_settlement_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.original_settlement_type, range, value, display)

  return offset + length, value
end

-- Original Special Sale Condition
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_special_sale_condition = {}

-- Size: Original Special Sale Condition
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_special_sale_condition.size = 1

-- Display: Original Special Sale Condition
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_special_sale_condition.display = function(value)
  if value == "A" then
    return "Original Special Sale Condition: Acquisition (A)"
  end
  if value == "B" then
    return "Original Special Sale Condition: Bunched (B)"
  end
  if value == "D" then
    return "Original Special Sale Condition: Distribution (D)"
  end
  if value == "H" then
    return "Original Special Sale Condition: Price Variation Transaction (H)"
  end
  if value == "M" then
    return "Original Special Sale Condition: Official Close Price (M)"
  end
  if value == "P" then
    return "Original Special Sale Condition: Prior Reference Price (P)"
  end
  if value == "Q" then
    return "Original Special Sale Condition: Official Opening Price (Q)"
  end
  if value == "S" then
    return "Original Special Sale Condition: Split Trade (S)"
  end
  if value == "W" then
    return "Original Special Sale Condition: Weighted Average Price (W)"
  end
  if value == "X" then
    return "Original Special Sale Condition: Cross Trade (X)"
  end
  if value == "o" then
    return "Original Special Sale Condition: Odd Lot Execution (o)"
  end
  if value == " " then
    return "Original Special Sale Condition: Not Applicable (<whitespace>)"
  end

  return "Original Special Sale Condition: Unknown("..value..")"
end

-- Dissect: Original Special Sale Condition
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_special_sale_condition.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_special_sale_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_special_sale_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.original_special_sale_condition, range, value, display)

  return offset + length, value
end

-- Original Trade Control Number
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_trade_control_number = {}

-- Size: Original Trade Control Number
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_trade_control_number.size = 10

-- Display: Original Trade Control Number
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_trade_control_number.display = function(value)
  return "Original Trade Control Number: "..value
end

-- Dissect: Original Trade Control Number
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_trade_control_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_trade_control_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_trade_control_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.original_trade_control_number, range, value, display)

  return offset + length, value
end

-- Original Trade Price
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_trade_price = {}

-- Size: Original Trade Price
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_trade_price.size = 10

-- Display: Original Trade Price
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_trade_price.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_trade_price.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Original Trade Price: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 4 then
    digits = string.rep("0", 4 - #digits + 1)..digits
  end

  return "Original Trade Price: "..sign..digits:sub(1, #digits - 4)..".".. digits:sub(-4)
end

-- Dissect: Original Trade Price
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_trade_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.original_trade_price, range, value, display)

  return offset + length, value
end

-- Original Trade Size
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_trade_size = {}

-- Size: Original Trade Size
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_trade_size.size = 9

-- Display: Original Trade Size
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_trade_size.display = function(value)
  return "Original Trade Size: "..value
end

-- Dissect: Original Trade Size
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_trade_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_trade_size.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_trade_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.original_trade_size, range, value, display)

  return offset + length, value
end

-- Original Trade Through Exemption
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_trade_through_exemption = {}

-- Size: Original Trade Through Exemption
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_trade_through_exemption.size = 1

-- Display: Original Trade Through Exemption
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_trade_through_exemption.display = function(value)
  if value == "F" then
    return "Original Trade Through Exemption: Intermarket Sweep (F)"
  end
  if value == "O" then
    return "Original Trade Through Exemption: Opening Print (O)"
  end
  if value == "4" then
    return "Original Trade Through Exemption: Derivative Priced (4)"
  end
  if value == "5" then
    return "Original Trade Through Exemption: Re Opening Print (5)"
  end
  if value == "6" then
    return "Original Trade Through Exemption: Closing Print (6)"
  end
  if value == " " then
    return "Original Trade Through Exemption: Not Applicable (<whitespace>)"
  end

  return "Original Trade Through Exemption: Unknown("..value..")"
end

-- Dissect: Original Trade Through Exemption
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_trade_through_exemption.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_trade_through_exemption.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_trade_through_exemption.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.original_trade_through_exemption, range, value, display)

  return offset + length, value
end

-- Reason
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.reason = {}

-- Size: Reason
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.reason.size = 4

-- Display: Reason
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.reason.display = function(value)
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
    return "Reason: Ipo Security Released For Quotation Nasdaq Securities Only (IPOQ)"
  end
  if value == "IPOE" then
    return "Reason: Ipo Security Positioning Window Extension Nasdaq Securities Only (IPOE)"
  end
  if value == " " then
    return "Reason: Reason Not Available (<whitespace>)"
  end

  return "Reason: Unknown("..value..")"
end

-- Dissect: Reason
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.reason.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.reason, range, value, display)

  return offset + length, value
end

-- Security Class
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.security_class = {}

-- Size: Security Class
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.security_class.size = 1

-- Display: Security Class
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.security_class.display = function(value)
  if value == "Q" then
    return "Security Class: Nasdaq (Q)"
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

  return "Security Class: Unknown("..value..")"
end

-- Dissect: Security Class
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.security_class.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.security_class.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.security_class.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.security_class, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.sequence_number = {}

-- Size: Sequence Number
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.sequence_number.size = 4

-- Display: Sequence Number
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.session = {}

-- Size: Session
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.session.size = 10

-- Display: Session
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.session, range, value, display)

  return offset + length, value
end

-- Settlement Type
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.settlement_type = {}

-- Size: Settlement Type
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.settlement_type.size = 1

-- Display: Settlement Type
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.settlement_type.display = function(value)
  if value == "@" then
    return "Settlement Type: Regular Settlement (@)"
  end
  if value == "C" then
    return "Settlement Type: Cash Settlement (C)"
  end
  if value == "N" then
    return "Settlement Type: Next Day Settlement (N)"
  end
  if value == "R" then
    return "Settlement Type: Seller Settlement (R)"
  end

  return "Settlement Type: Unknown("..value..")"
end

-- Dissect: Settlement Type
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.settlement_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.settlement_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.settlement_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.settlement_type, range, value, display)

  return offset + length, value
end

-- Special Sale Condition
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.special_sale_condition = {}

-- Size: Special Sale Condition
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.special_sale_condition.size = 1

-- Display: Special Sale Condition
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.special_sale_condition.display = function(value)
  if value == "A" then
    return "Special Sale Condition: Acquisition (A)"
  end
  if value == "B" then
    return "Special Sale Condition: Bunched (B)"
  end
  if value == "D" then
    return "Special Sale Condition: Distribution (D)"
  end
  if value == "H" then
    return "Special Sale Condition: Price Variation Transaction (H)"
  end
  if value == "M" then
    return "Special Sale Condition: Official Close Price (M)"
  end
  if value == "P" then
    return "Special Sale Condition: Prior Reference Price (P)"
  end
  if value == "Q" then
    return "Special Sale Condition: Official Opening Price (Q)"
  end
  if value == "S" then
    return "Special Sale Condition: Split Trade (S)"
  end
  if value == "W" then
    return "Special Sale Condition: Weighted Average Price (W)"
  end
  if value == "X" then
    return "Special Sale Condition: Cross Trade (X)"
  end
  if value == "o" then
    return "Special Sale Condition: Odd Lot Execution (o)"
  end
  if value == " " then
    return "Special Sale Condition: Not Applicable (<whitespace>)"
  end

  return "Special Sale Condition: Unknown("..value..")"
end

-- Dissect: Special Sale Condition
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.special_sale_condition.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.special_sale_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.special_sale_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.special_sale_condition, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.timestamp = {}

-- Size: Timestamp
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.timestamp.size = 8

-- Display: Timestamp
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.timestamp.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode (or unparsable ASCII fell back to a non-number)
  if type(value) ~= "number" then
    return "Timestamp: "..tostring(value)
  end

  if nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.timestamp_format == 0 then
    return "Timestamp: "..value
  end

  -- Parse milliseconds since midnight
  local seconds = math.floor(value / 1000)
  local milliseconds = value % 1000

  -- Full datetime mode (calculate from capture date + UTC offset)
  if nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Timestamp: "..os.date("!%Y-%m-%d %H:%M:%S.", full_seconds + utc_offset_seconds)..string.format("%03d", milliseconds)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("!%H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Timestamp
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.timestamp.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trade Control Number
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_control_number = {}

-- Size: Trade Control Number
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_control_number.size = 10

-- Display: Trade Control Number
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_control_number.display = function(value)
  return "Trade Control Number: "..value
end

-- Dissect: Trade Control Number
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_control_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_control_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_control_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.trade_control_number, range, value, display)

  return offset + length, value
end

-- Trade Price
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_price = {}

-- Size: Trade Price
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_price.size = 10

-- Display: Trade Price
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_price.display = function(value, buffer, offset, packet, parent)
  local digits = buffer(offset, nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_price.size):string():match("^%s*(.-)%s*$")
  local sign = ""

  if digits:sub(1, 1) == "-" or digits:sub(1, 1) == "+" then
    sign = digits:sub(1, 1)
    digits = digits:sub(2)
  end

  if not digits:match("^%d+$") then
    return "Trade Price: "..tostring(value)
  end

  digits = digits:gsub("^0+", "")

  if #digits <= 4 then
    digits = string.rep("0", 4 - #digits + 1)..digits
  end

  return "Trade Price: "..sign..digits:sub(1, #digits - 4)..".".. digits:sub(-4)
end

-- Dissect: Trade Price
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Trade Size
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_size = {}

-- Size: Trade Size
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_size.size = 9

-- Display: Trade Size
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_size.display = function(value)
  return "Trade Size: "..value
end

-- Dissect: Trade Size
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_size.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.trade_size, range, value, display)

  return offset + length, value
end

-- Trade Through Exemption
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_through_exemption = {}

-- Size: Trade Through Exemption
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_through_exemption.size = 1

-- Display: Trade Through Exemption
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_through_exemption.display = function(value)
  if value == "F" then
    return "Trade Through Exemption: Intermarket Sweep (F)"
  end
  if value == "O" then
    return "Trade Through Exemption: Opening Print (O)"
  end
  if value == "4" then
    return "Trade Through Exemption: Derivative Priced (4)"
  end
  if value == "5" then
    return "Trade Through Exemption: Re Opening Print (5)"
  end
  if value == "6" then
    return "Trade Through Exemption: Closing Print (6)"
  end
  if value == " " then
    return "Trade Through Exemption: Not Applicable (<whitespace>)"
  end

  return "Trade Through Exemption: Unknown("..value..")"
end

-- Dissect: Trade Through Exemption
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_through_exemption.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_through_exemption.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_through_exemption.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.trade_through_exemption, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq NsmEquities LastSaleTradesFilterView Itch 1.0.2010
-----------------------------------------------------------------------

-- Stock Directory Message
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.stock_directory_message = {}

-- Size: Stock Directory Message
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.stock_directory_message.size =
  nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.issue_symbol.size + 
  nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.market_category.size + 
  nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.financial_status_indicator.size

-- Display: Stock Directory Message
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.stock_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Directory Message
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.stock_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Issue Symbol: Alphanumeric
  index, issue_symbol = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.issue_symbol.dissect(buffer, index, packet, parent)

  -- Market Category: Alphanumeric
  index, market_category = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.market_category.dissect(buffer, index, packet, parent)

  -- Financial Status Indicator: Alphanumeric
  index, financial_status_indicator = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.financial_status_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Directory Message
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.stock_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.stock_directory_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.stock_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.stock_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.stock_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Stock Trading Action Message
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.stock_trading_action_message = {}

-- Size: Stock Trading Action Message
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.stock_trading_action_message.size =
  nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.issue_symbol.size + 
  nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.security_class.size + 
  nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.current_trading_state.size + 
  nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.reason.size

-- Display: Stock Trading Action Message
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.stock_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Trading Action Message
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.stock_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Issue Symbol: Alphanumeric
  index, issue_symbol = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.issue_symbol.dissect(buffer, index, packet, parent)

  -- Security Class: Alphabetic
  index, security_class = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.security_class.dissect(buffer, index, packet, parent)

  -- Current Trading State: Alphabetic
  index, current_trading_state = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.current_trading_state.dissect(buffer, index, packet, parent)

  -- Reason: Alphanumeric
  index, reason = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Trading Action Message
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.stock_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.stock_trading_action_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.stock_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.stock_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.stock_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Corrected Sale Condition Modifier
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_sale_condition_modifier = {}

-- Size: Corrected Sale Condition Modifier
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_sale_condition_modifier.size =
  nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_settlement_type.size + 
  nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_trade_through_exemption.size + 
  nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_extended_hours_or_sold_code.size + 
  nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_special_sale_condition.size

-- Display: Corrected Sale Condition Modifier
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_sale_condition_modifier.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Corrected Sale Condition Modifier
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_sale_condition_modifier.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Corrected Settlement Type: Alphanumeric
  index, corrected_settlement_type = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_settlement_type.dissect(buffer, index, packet, parent)

  -- Corrected Trade Through Exemption: Alphanumeric
  index, corrected_trade_through_exemption = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_trade_through_exemption.dissect(buffer, index, packet, parent)

  -- Corrected Extended Hours Or Sold Code: Alphanumeric
  index, corrected_extended_hours_or_sold_code = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_extended_hours_or_sold_code.dissect(buffer, index, packet, parent)

  -- Corrected Special Sale Condition: Alphanumeric
  index, corrected_special_sale_condition = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_special_sale_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Corrected Sale Condition Modifier
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_sale_condition_modifier.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.corrected_sale_condition_modifier, buffer(offset, 0))
    local index = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_sale_condition_modifier.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_sale_condition_modifier.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_sale_condition_modifier.fields(buffer, offset, packet, parent)
  end
end

-- Original Sale Condition Modifier
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_sale_condition_modifier = {}

-- Size: Original Sale Condition Modifier
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_sale_condition_modifier.size =
  nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_settlement_type.size + 
  nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_trade_through_exemption.size + 
  nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_extended_hours_or_sold_code.size + 
  nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_special_sale_condition.size

-- Display: Original Sale Condition Modifier
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_sale_condition_modifier.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Original Sale Condition Modifier
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_sale_condition_modifier.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Original Settlement Type: Alphanumeric
  index, original_settlement_type = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_settlement_type.dissect(buffer, index, packet, parent)

  -- Original Trade Through Exemption: Alphanumeric
  index, original_trade_through_exemption = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_trade_through_exemption.dissect(buffer, index, packet, parent)

  -- Original Extended Hours Or Sold Code: Alphanumeric
  index, original_extended_hours_or_sold_code = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_extended_hours_or_sold_code.dissect(buffer, index, packet, parent)

  -- Original Special Sale Condition: Alphanumeric
  index, original_special_sale_condition = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_special_sale_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Original Sale Condition Modifier
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_sale_condition_modifier.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.original_sale_condition_modifier, buffer(offset, 0))
    local index = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_sale_condition_modifier.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_sale_condition_modifier.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_sale_condition_modifier.fields(buffer, offset, packet, parent)
  end
end

-- Trade Correction Message
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_correction_message = {}

-- Size: Trade Correction Message
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_correction_message.size =
  nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.market_center_identifier.size + 
  nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.issue_symbol.size + 
  nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.security_class.size + 
  nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_trade_control_number.size + 
  nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_trade_price.size + 
  nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_trade_size.size + 
  nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_sale_condition_modifier.size + 
  nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_trade_control_number.size + 
  nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_trade_price.size + 
  nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_trade_size.size + 
  nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_sale_condition_modifier.size

-- Display: Trade Correction Message
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Correction Message
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Identifier: Alphabetic
  index, market_center_identifier = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.market_center_identifier.dissect(buffer, index, packet, parent)

  -- Issue Symbol: Alphanumeric
  index, issue_symbol = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.issue_symbol.dissect(buffer, index, packet, parent)

  -- Security Class: Alphabetic
  index, security_class = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.security_class.dissect(buffer, index, packet, parent)

  -- Original Trade Control Number: Alphanumeric
  index, original_trade_control_number = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_trade_control_number.dissect(buffer, index, packet, parent)

  -- Original Trade Price: Numeric
  index, original_trade_price = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_trade_price.dissect(buffer, index, packet, parent)

  -- Original Trade Size: Numeric
  index, original_trade_size = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_trade_size.dissect(buffer, index, packet, parent)

  -- Original Sale Condition Modifier: Struct of 4 fields
  index, original_sale_condition_modifier = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_sale_condition_modifier.dissect(buffer, index, packet, parent)

  -- Corrected Trade Control Number: Alphanumeric
  index, corrected_trade_control_number = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_trade_control_number.dissect(buffer, index, packet, parent)

  -- Corrected Trade Price: Numeric
  index, corrected_trade_price = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_trade_price.dissect(buffer, index, packet, parent)

  -- Corrected Trade Size: Numeric
  index, corrected_trade_size = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_trade_size.dissect(buffer, index, packet, parent)

  -- Corrected Sale Condition Modifier: Struct of 4 fields
  index, corrected_sale_condition_modifier = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.corrected_sale_condition_modifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Correction Message
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.trade_correction_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancel Error Message
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_cancel_error_message = {}

-- Size: Trade Cancel Error Message
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_cancel_error_message.size =
  nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.market_center_identifier.size + 
  nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.issue_symbol.size + 
  nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.security_class.size + 
  nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_trade_control_number.size + 
  nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_trade_price.size + 
  nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_trade_size.size + 
  nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_sale_condition_modifier.size

-- Display: Trade Cancel Error Message
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_cancel_error_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Error Message
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_cancel_error_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Identifier: Alphabetic
  index, market_center_identifier = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.market_center_identifier.dissect(buffer, index, packet, parent)

  -- Issue Symbol: Alphanumeric
  index, issue_symbol = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.issue_symbol.dissect(buffer, index, packet, parent)

  -- Security Class: Alphabetic
  index, security_class = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.security_class.dissect(buffer, index, packet, parent)

  -- Original Trade Control Number: Alphanumeric
  index, original_trade_control_number = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_trade_control_number.dissect(buffer, index, packet, parent)

  -- Original Trade Price: Numeric
  index, original_trade_price = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_trade_price.dissect(buffer, index, packet, parent)

  -- Original Trade Size: Numeric
  index, original_trade_size = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_trade_size.dissect(buffer, index, packet, parent)

  -- Original Sale Condition Modifier: Struct of 4 fields
  index, original_sale_condition_modifier = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.original_sale_condition_modifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Error Message
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_cancel_error_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.trade_cancel_error_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_cancel_error_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_cancel_error_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_cancel_error_message.fields(buffer, offset, packet, parent)
  end
end

-- Sale Condition Modifier
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.sale_condition_modifier = {}

-- Size: Sale Condition Modifier
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.sale_condition_modifier.size =
  nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.settlement_type.size + 
  nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_through_exemption.size + 
  nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.extended_hours_or_sold_code.size + 
  nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.special_sale_condition.size

-- Display: Sale Condition Modifier
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.sale_condition_modifier.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sale Condition Modifier
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.sale_condition_modifier.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Settlement Type: Alphanumeric
  index, settlement_type = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.settlement_type.dissect(buffer, index, packet, parent)

  -- Trade Through Exemption: Alphanumeric
  index, trade_through_exemption = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_through_exemption.dissect(buffer, index, packet, parent)

  -- Extended Hours Or Sold Code: Alphanumeric
  index, extended_hours_or_sold_code = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.extended_hours_or_sold_code.dissect(buffer, index, packet, parent)

  -- Special Sale Condition: Alphanumeric
  index, special_sale_condition = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.special_sale_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sale Condition Modifier
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.sale_condition_modifier.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.sale_condition_modifier, buffer(offset, 0))
    local index = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.sale_condition_modifier.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.sale_condition_modifier.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.sale_condition_modifier.fields(buffer, offset, packet, parent)
  end
end

-- Trade Report Message
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_report_message = {}

-- Size: Trade Report Message
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_report_message.size =
  nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.market_center_identifier.size + 
  nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.issue_symbol.size + 
  nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.security_class.size + 
  nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_control_number.size + 
  nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_price.size + 
  nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_size.size + 
  nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.sale_condition_modifier.size

-- Display: Trade Report Message
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Report Message
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Identifier: Alphabetic
  index, market_center_identifier = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.market_center_identifier.dissect(buffer, index, packet, parent)

  -- Issue Symbol: Alphanumeric
  index, issue_symbol = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.issue_symbol.dissect(buffer, index, packet, parent)

  -- Security Class: Alphabetic
  index, security_class = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.security_class.dissect(buffer, index, packet, parent)

  -- Trade Control Number: Alphanumeric
  index, trade_control_number = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_control_number.dissect(buffer, index, packet, parent)

  -- Trade Price: Numeric
  index, trade_price = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Size: Numeric
  index, trade_size = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_size.dissect(buffer, index, packet, parent)

  -- Sale Condition Modifier: Struct of 4 fields
  index, sale_condition_modifier = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.sale_condition_modifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Report Message
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.trade_report_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_report_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.system_event_message = {}

-- Size: System Event Message
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.system_event_message.size =
  nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.event_code.size

-- Display: System Event Message
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Event Code: Alphanumeric
  index, event_code = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.payload = {}

-- Dissect: Payload
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event Message
  if message_type == "S" then
    return nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Report Message
  if message_type == "T" then
    return nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Error Message
  if message_type == "X" then
    return nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_cancel_error_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Correction Message
  if message_type == "C" then
    return nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.trade_correction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Trading Action Message
  if message_type == "H" then
    return nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.stock_trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Directory Message
  if message_type == "R" then
    return nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.stock_directory_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.message_header = {}

-- Size: Message Header
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.message_header.size =
  nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.message_length.size + 
  nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.timestamp.size + 
  nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.message_type.size

-- Display: Message Header
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.message_length.dissect(buffer, index, packet, parent)

  -- Timestamp: 8 Byte Ascii String
  index, timestamp = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.timestamp.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 6 values
  index, message_type = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.message_header, buffer(offset, 0))
    local index = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.message = {}

-- Read runtime size of: Message
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 2):uint()

  return message_length + 2
end

-- Display: Message
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Implicit Message Sequence Number
  if message_index ~= nil and show.sequences and nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.packet_sequence ~= nil then
    local sequence = parent:add(omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.message_sequence_number, UInt64.new(nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.packet_sequence + message_index - 1))
    sequence:set_generated()
  end

  -- Message Header: Struct of 3 fields
  index, message_header = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 6 branches
  index = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.message, buffer(offset, 0))
    local current = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- End Of Session
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.end_of_session = {}

-- Display: End Of Session
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Heartbeat
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.heartbeat = {}

-- Display: Heartbeat
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.messages = {}

-- Dissect: Messages
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.messages.dissect = function(buffer, offset, packet, parent, message_count)
  -- Dissect Heartbeat
  if message_count == 0 then
    return nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session
  if message_count == 65535 then
    return nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.end_of_session.dissect(buffer, offset, packet, parent)
  end

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    offset = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end
end

-- Packet Header
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.packet_header = {}

-- Size: Packet Header
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.packet_header.size =
  nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.session.size + 
  nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.sequence_number.size + 
  nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.message_count.size

-- Display: Packet Header
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.message_count.dissect(buffer, index, packet, parent)

  -- Sequence base for the packet's messages
  nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.packet_sequence = sequence_number

  return index
end

-- Dissect: Packet Header
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.packet = {}

-- Verify required size of Udp packet
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.packet_header.size
end

-- Dissect Packet
nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):le_uint()

  -- Messages: Runtime Type with 3 branches
  index = nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.init()
end

-- Dissector for Nasdaq NsmEquities LastSaleTradesFilterView Itch 1.0.2010
function omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010, buffer(), omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.description, "("..buffer:len().." Bytes)")
  return nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq NsmEquities LastSaleTradesFilterView Itch 1.0.2010 (Udp)
local function omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010
  omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq NsmEquities LastSaleTradesFilterView Itch 1.0.2010
omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010:register_heuristic("udp", omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010_udp_heuristic)

-- Register Nasdaq NsmEquities LastSaleTradesFilterView Itch 1.0.2010 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_nasdaq_nsmequities_lastsaletradesfilterview_itch_v1_0_2010)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 1.0.2010
--   Since: 1.0.2007
--   Date: Thursday, November 11, 2010
--   Specification: NQLastSaleSpec.pdf
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
