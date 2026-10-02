-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq NtxEquities LastSale Itch 4.0.2026 Protocol
local omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026 = Proto("Omi.Nasdaq.NtxEquities.LastSale.Itch.v4.0.2026", "Nasdaq NtxEquities LastSale Itch 4.0.2026")

-- Protocol table
local nasdaq_ntxequities_lastsale_itch_v4_0_2026 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq NtxEquities LastSale Itch 4.0.2026 Fields
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.authenticity = ProtoField.new("Authenticity", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.authenticity", ftypes.STRING)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.bloomberg_id = ProtoField.new("Bloomberg Id", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.bloombergid", ftypes.STRING)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.breached_level = ProtoField.new("Breached Level", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.breachedlevel", ftypes.STRING)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.client_timestamp = ProtoField.new("Client Timestamp", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.clienttimestamp", ftypes.UINT64)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.corrected_sale_condition_modifier = ProtoField.new("Corrected Sale Condition Modifier", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.correctedsaleconditionmodifier", ftypes.STRING)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.corrected_trade_control_number = ProtoField.new("Corrected Trade Control Number", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.correctedtradecontrolnumber", ftypes.STRING)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.corrected_trade_price = ProtoField.new("Corrected Trade Price", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.correctedtradeprice", ftypes.DOUBLE)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.corrected_trade_size = ProtoField.new("Corrected Trade Size", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.correctedtradesize", ftypes.DOUBLE)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.current_trading_state = ProtoField.new("Current Trading State", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.currenttradingstate", ftypes.STRING)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.etp_flag = ProtoField.new("Etp Flag", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.etpflag", ftypes.STRING)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.etp_leverage_factor = ProtoField.new("Etp Leverage Factor", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.etpleveragefactor", ftypes.UINT32)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.event_code = ProtoField.new("Event Code", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.eventcode", ftypes.STRING)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.financial_status_indicator = ProtoField.new("Financial Status Indicator", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.financialstatusindicator", ftypes.STRING)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.inverse_indicator = ProtoField.new("Inverse Indicator", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.inverseindicator", ftypes.STRING)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.ipo_flag = ProtoField.new("Ipo Flag", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.ipoflag", ftypes.STRING)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.issue_classification = ProtoField.new("Issue Classification", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.issueclassification", ftypes.STRING)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.issue_sub_type = ProtoField.new("Issue Sub Type", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.issuesubtype", ftypes.STRING)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.issue_symbol = ProtoField.new("Issue Symbol", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.issuesymbol", ftypes.STRING)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.level_1 = ProtoField.new("Level 1", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.level1", ftypes.DOUBLE)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.level_2 = ProtoField.new("Level 2", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.level2", ftypes.DOUBLE)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.level_3 = ProtoField.new("Level 3", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.level3", ftypes.DOUBLE)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.luld_reference_price_tier = ProtoField.new("Luld Reference Price Tier", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.luldreferencepricetier", ftypes.STRING)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.market_category = ProtoField.new("Market Category", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.marketcategory", ftypes.STRING)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.market_code = ProtoField.new("Market Code", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.marketcode", ftypes.STRING)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.message_count = ProtoField.new("Message Count", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.messagecount", ftypes.UINT16)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.message_length = ProtoField.new("Message Length", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.messagelength", ftypes.UINT16)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.message_type = ProtoField.new("Message Type", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.messagetype", ftypes.STRING)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.operational_halt_action = ProtoField.new("Operational Halt Action", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.operationalhaltaction", ftypes.STRING)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.original_sale_condition_modifier = ProtoField.new("Original Sale Condition Modifier", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.originalsaleconditionmodifier", ftypes.STRING)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.original_trade_control_number = ProtoField.new("Original Trade Control Number", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.originaltradecontrolnumber", ftypes.STRING)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.original_trade_price = ProtoField.new("Original Trade Price", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.originaltradeprice", ftypes.DOUBLE)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.original_trade_size = ProtoField.new("Original Trade Size", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.originaltradesize", ftypes.DOUBLE)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.originating_market_center_identifier = ProtoField.new("Originating Market Center Identifier", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.originatingmarketcenteridentifier", ftypes.STRING)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.reason = ProtoField.new("Reason", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.reason", ftypes.STRING)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.regshoaction", ftypes.STRING)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.round_lot_size = ProtoField.new("Round Lot Size", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.roundlotsize", ftypes.UINT32)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.round_lots_only = ProtoField.new("Round Lots Only", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.roundlotsonly", ftypes.STRING)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.sale_condition_modifier = ProtoField.new("Sale Condition Modifier", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.saleconditionmodifier", ftypes.STRING)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.security_class = ProtoField.new("Security Class", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.securityclass", ftypes.STRING)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.sequencenumber", ftypes.UINT64)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.session = ProtoField.new("Session", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.session", ftypes.STRING)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.short_sale_threshold_indicator = ProtoField.new("Short Sale Threshold Indicator", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.shortsalethresholdindicator", ftypes.STRING)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.stock = ProtoField.new("Stock", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.stock", ftypes.STRING)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.stock_alpha_8 = ProtoField.new("Stock Alpha 8", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.stockalpha8", ftypes.STRING)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.timestamp", ftypes.UINT64)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.tracking_number = ProtoField.new("Tracking Number", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.trackingnumber", ftypes.UINT16)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.trade_control_number = ProtoField.new("Trade Control Number", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.tradecontrolnumber", ftypes.STRING)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.trade_price = ProtoField.new("Trade Price", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.tradeprice", ftypes.DOUBLE)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.trade_size = ProtoField.new("Trade Size", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.tradesize", ftypes.DOUBLE)

-- Nasdaq NtxEquities LastSale Itch 4.0.2026 Framing
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.message = ProtoField.new("Message", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.message", ftypes.STRING)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.message_header = ProtoField.new("Message Header", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.messageheader", ftypes.STRING)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.packet = ProtoField.new("Packet", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.packet", ftypes.STRING)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.packetheader", ftypes.STRING)

-- Nasdaq NtxEquities LastSale 4.0.2026 Session Messages
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.end_of_session = ProtoField.new("End Of Session", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.endofsession", ftypes.BYTES)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.heartbeat = ProtoField.new("Heartbeat", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.heartbeat", ftypes.BYTES)

-- Nasdaq NtxEquities LastSale 4.0.2026 Application Messages
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.mwcb_decline_level_message = ProtoField.new("Mwcb Decline Level Message", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.mwcbdeclinelevelmessage", ftypes.STRING)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.mwcb_status_message = ProtoField.new("Mwcb Status Message", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.mwcbstatusmessage", ftypes.STRING)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.operational_halt_message = ProtoField.new("Operational Halt Message", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.operationalhaltmessage", ftypes.STRING)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.reg_sho_short_sale_price_test_restricted_indicator_message = ProtoField.new("Reg Sho Short Sale Price Test Restricted Indicator Message", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.regshoshortsalepricetestrestrictedindicatormessage", ftypes.STRING)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.stock_directory_message = ProtoField.new("Stock Directory Message", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.stockdirectorymessage", ftypes.STRING)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.stock_trading_action_message = ProtoField.new("Stock Trading Action Message", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.stocktradingactionmessage", ftypes.STRING)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.systemeventmessage", ftypes.STRING)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.trade_cancel_error_message = ProtoField.new("Trade Cancel Error Message", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.tradecancelerrormessage", ftypes.STRING)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.trade_correction_message = ProtoField.new("Trade Correction Message", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.tradecorrectionmessage", ftypes.STRING)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.trade_report_message = ProtoField.new("Trade Report Message", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.tradereportmessage", ftypes.STRING)

-- Nasdaq NtxEquities LastSale Itch 4.0.2026 Generated Fields
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.message_index = ProtoField.new("Message Index", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.messageindex", ftypes.UINT16)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "nasdaq.ntxequities.lastsale.itch.v4.0.2026.messagesequencenumber", ftypes.UINT64)

-----------------------------------------------------------------------
-- Nasdaq NtxEquities LastSale Itch 4.0.2026 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
nasdaq_ntxequities_lastsale_itch_v4_0_2026.timestamp_format = 2

-- Hours behind UTC (EST) for midnight calculation
nasdaq_ntxequities_lastsale_itch_v4_0_2026.utc_offset_hours = 5


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq NtxEquities LastSale Itch 4.0.2026 Element Dissection Options
show.structs = true
show.headers = true
show.application_messages = true
show.indexes = true
show.sequences = true

-- Register Nasdaq NtxEquities LastSale Itch 4.0.2026 Show Options
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")

omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Timestamp display format", timestamp_format_enum, false)
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 5, "Hours behind UTC (EST) for midnight calculation")

-- Handle changed preferences
function omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.prefs.show_application_messages
  end
  if show.headers ~= omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.prefs.show_headers then
    show.headers = omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.prefs.show_headers
  end
  if show.structs ~= omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.prefs.show_structs then
    show.structs = omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.prefs.show_structs
  end
  if show.indexes ~= omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.prefs.show_indexes then
    show.indexes = omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.prefs.show_indexes
  end
  if show.sequences ~= omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.prefs.show_sequences then
    show.sequences = omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.prefs.show_sequences
  end
  if nasdaq_ntxequities_lastsale_itch_v4_0_2026.timestamp_format ~= omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.prefs.timestamp_format then
    nasdaq_ntxequities_lastsale_itch_v4_0_2026.timestamp_format = omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.prefs.timestamp_format
  end
  if nasdaq_ntxequities_lastsale_itch_v4_0_2026.utc_offset_hours ~= omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.prefs.utc_offset_hours then
    nasdaq_ntxequities_lastsale_itch_v4_0_2026.utc_offset_hours = omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.prefs.utc_offset_hours
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
-- Nasdaq NtxEquities LastSale Itch 4.0.2026 Fields
-----------------------------------------------------------------------

-- Authenticity
nasdaq_ntxequities_lastsale_itch_v4_0_2026.authenticity = {}

-- Size: Authenticity
nasdaq_ntxequities_lastsale_itch_v4_0_2026.authenticity.size = 1

-- Display: Authenticity
nasdaq_ntxequities_lastsale_itch_v4_0_2026.authenticity.display = function(value)
  if value == "P" then
    return "Authenticity: Live Production (P)"
  end
  if value == "T" then
    return "Authenticity: Test (T)"
  end

  return "Authenticity: Unknown("..value..")"
end

-- Dissect: Authenticity
nasdaq_ntxequities_lastsale_itch_v4_0_2026.authenticity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_lastsale_itch_v4_0_2026.authenticity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.authenticity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.authenticity, range, value, display)

  return offset + length, value
end

-- Bloomberg Id
nasdaq_ntxequities_lastsale_itch_v4_0_2026.bloomberg_id = {}

-- Size: Bloomberg Id
nasdaq_ntxequities_lastsale_itch_v4_0_2026.bloomberg_id.size = 12

-- Display: Bloomberg Id
nasdaq_ntxequities_lastsale_itch_v4_0_2026.bloomberg_id.display = function(value)
  return "Bloomberg Id: "..value
end

-- Dissect: Bloomberg Id
nasdaq_ntxequities_lastsale_itch_v4_0_2026.bloomberg_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_lastsale_itch_v4_0_2026.bloomberg_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.bloomberg_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.bloomberg_id, range, value, display)

  return offset + length, value
end

-- Breached Level
nasdaq_ntxequities_lastsale_itch_v4_0_2026.breached_level = {}

-- Size: Breached Level
nasdaq_ntxequities_lastsale_itch_v4_0_2026.breached_level.size = 1

-- Display: Breached Level
nasdaq_ntxequities_lastsale_itch_v4_0_2026.breached_level.display = function(value)
  if value == "1" then
    return "Breached Level: Level 1 (1)"
  end
  if value == "2" then
    return "Breached Level: Level 2 (2)"
  end
  if value == "3" then
    return "Breached Level: Level 3 (3)"
  end

  return "Breached Level: Unknown("..value..")"
end

-- Dissect: Breached Level
nasdaq_ntxequities_lastsale_itch_v4_0_2026.breached_level.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_lastsale_itch_v4_0_2026.breached_level.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.breached_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.breached_level, range, value, display)

  return offset + length, value
end

-- Client Timestamp
nasdaq_ntxequities_lastsale_itch_v4_0_2026.client_timestamp = {}

-- Size: Client Timestamp
nasdaq_ntxequities_lastsale_itch_v4_0_2026.client_timestamp.size = 8

-- Display: Client Timestamp
nasdaq_ntxequities_lastsale_itch_v4_0_2026.client_timestamp.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if nasdaq_ntxequities_lastsale_itch_v4_0_2026.timestamp_format == 0 then
    return "Client Timestamp: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (calculate from capture date + UTC offset)
  if nasdaq_ntxequities_lastsale_itch_v4_0_2026.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = nasdaq_ntxequities_lastsale_itch_v4_0_2026.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Client Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", nanoseconds)
  end

  -- Time of day mode
  return "Client Timestamp: "..os.date("%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Client Timestamp
nasdaq_ntxequities_lastsale_itch_v4_0_2026.client_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_lastsale_itch_v4_0_2026.client_timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.client_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.client_timestamp, range, value, display)

  return offset + length, value
end

-- Corrected Sale Condition Modifier
nasdaq_ntxequities_lastsale_itch_v4_0_2026.corrected_sale_condition_modifier = {}

-- Size: Corrected Sale Condition Modifier
nasdaq_ntxequities_lastsale_itch_v4_0_2026.corrected_sale_condition_modifier.size = 4

-- Display: Corrected Sale Condition Modifier
nasdaq_ntxequities_lastsale_itch_v4_0_2026.corrected_sale_condition_modifier.display = function(value)
  return "Corrected Sale Condition Modifier: "..value
end

-- Dissect: Corrected Sale Condition Modifier
nasdaq_ntxequities_lastsale_itch_v4_0_2026.corrected_sale_condition_modifier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_lastsale_itch_v4_0_2026.corrected_sale_condition_modifier.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.corrected_sale_condition_modifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.corrected_sale_condition_modifier, range, value, display)

  return offset + length, value
end

-- Corrected Trade Control Number
nasdaq_ntxequities_lastsale_itch_v4_0_2026.corrected_trade_control_number = {}

-- Size: Corrected Trade Control Number
nasdaq_ntxequities_lastsale_itch_v4_0_2026.corrected_trade_control_number.size = 10

-- Display: Corrected Trade Control Number
nasdaq_ntxequities_lastsale_itch_v4_0_2026.corrected_trade_control_number.display = function(value)
  return "Corrected Trade Control Number: "..value
end

-- Dissect: Corrected Trade Control Number
nasdaq_ntxequities_lastsale_itch_v4_0_2026.corrected_trade_control_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_lastsale_itch_v4_0_2026.corrected_trade_control_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.corrected_trade_control_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.corrected_trade_control_number, range, value, display)

  return offset + length, value
end

-- Corrected Trade Price
nasdaq_ntxequities_lastsale_itch_v4_0_2026.corrected_trade_price = {}

-- Size: Corrected Trade Price
nasdaq_ntxequities_lastsale_itch_v4_0_2026.corrected_trade_price.size = 8

-- Display: Corrected Trade Price
nasdaq_ntxequities_lastsale_itch_v4_0_2026.corrected_trade_price.display = function(value)
  return "Corrected Trade Price: "..value
end

-- Translate: Corrected Trade Price
nasdaq_ntxequities_lastsale_itch_v4_0_2026.corrected_trade_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Corrected Trade Price
nasdaq_ntxequities_lastsale_itch_v4_0_2026.corrected_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_lastsale_itch_v4_0_2026.corrected_trade_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_ntxequities_lastsale_itch_v4_0_2026.corrected_trade_price.translate(raw)
  local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.corrected_trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.corrected_trade_price, range, value, display)

  return offset + length, value
end

-- Corrected Trade Size
nasdaq_ntxequities_lastsale_itch_v4_0_2026.corrected_trade_size = {}

-- Size: Corrected Trade Size
nasdaq_ntxequities_lastsale_itch_v4_0_2026.corrected_trade_size.size = 8

-- Display: Corrected Trade Size
nasdaq_ntxequities_lastsale_itch_v4_0_2026.corrected_trade_size.display = function(value)
  return "Corrected Trade Size: "..value
end

-- Translate: Corrected Trade Size
nasdaq_ntxequities_lastsale_itch_v4_0_2026.corrected_trade_size.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Corrected Trade Size
nasdaq_ntxequities_lastsale_itch_v4_0_2026.corrected_trade_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_lastsale_itch_v4_0_2026.corrected_trade_size.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_ntxequities_lastsale_itch_v4_0_2026.corrected_trade_size.translate(raw)
  local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.corrected_trade_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.corrected_trade_size, range, value, display)

  return offset + length, value
end

-- Current Trading State
nasdaq_ntxequities_lastsale_itch_v4_0_2026.current_trading_state = {}

-- Size: Current Trading State
nasdaq_ntxequities_lastsale_itch_v4_0_2026.current_trading_state.size = 1

-- Display: Current Trading State
nasdaq_ntxequities_lastsale_itch_v4_0_2026.current_trading_state.display = function(value)
  if value == "H" then
    return "Current Trading State: Halted (H)"
  end
  if value == "P" then
    return "Current Trading State: Paused (P)"
  end
  if value == "Q" then
    return "Current Trading State: Quotation Only (Q)"
  end
  if value == "T" then
    return "Current Trading State: Trading (T)"
  end

  return "Current Trading State: Unknown("..value..")"
end

-- Dissect: Current Trading State
nasdaq_ntxequities_lastsale_itch_v4_0_2026.current_trading_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_lastsale_itch_v4_0_2026.current_trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.current_trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.current_trading_state, range, value, display)

  return offset + length, value
end

-- Etp Flag
nasdaq_ntxequities_lastsale_itch_v4_0_2026.etp_flag = {}

-- Size: Etp Flag
nasdaq_ntxequities_lastsale_itch_v4_0_2026.etp_flag.size = 1

-- Display: Etp Flag
nasdaq_ntxequities_lastsale_itch_v4_0_2026.etp_flag.display = function(value)
  if value == "Y" then
    return "Etp Flag: Etp (Y)"
  end
  if value == "N" then
    return "Etp Flag: Not Etp (N)"
  end
  if value == " " then
    return "Etp Flag: Not Available (<whitespace>)"
  end

  return "Etp Flag: Unknown("..value..")"
end

-- Dissect: Etp Flag
nasdaq_ntxequities_lastsale_itch_v4_0_2026.etp_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_lastsale_itch_v4_0_2026.etp_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.etp_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.etp_flag, range, value, display)

  return offset + length, value
end

-- Etp Leverage Factor
nasdaq_ntxequities_lastsale_itch_v4_0_2026.etp_leverage_factor = {}

-- Size: Etp Leverage Factor
nasdaq_ntxequities_lastsale_itch_v4_0_2026.etp_leverage_factor.size = 4

-- Display: Etp Leverage Factor
nasdaq_ntxequities_lastsale_itch_v4_0_2026.etp_leverage_factor.display = function(value)
  return "Etp Leverage Factor: "..value
end

-- Dissect: Etp Leverage Factor
nasdaq_ntxequities_lastsale_itch_v4_0_2026.etp_leverage_factor.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_lastsale_itch_v4_0_2026.etp_leverage_factor.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.etp_leverage_factor.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.etp_leverage_factor, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_ntxequities_lastsale_itch_v4_0_2026.event_code = {}

-- Size: Event Code
nasdaq_ntxequities_lastsale_itch_v4_0_2026.event_code.size = 1

-- Display: Event Code
nasdaq_ntxequities_lastsale_itch_v4_0_2026.event_code.display = function(value)
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

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
nasdaq_ntxequities_lastsale_itch_v4_0_2026.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_lastsale_itch_v4_0_2026.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.event_code, range, value, display)

  return offset + length, value
end

-- Financial Status Indicator
nasdaq_ntxequities_lastsale_itch_v4_0_2026.financial_status_indicator = {}

-- Size: Financial Status Indicator
nasdaq_ntxequities_lastsale_itch_v4_0_2026.financial_status_indicator.size = 1

-- Display: Financial Status Indicator
nasdaq_ntxequities_lastsale_itch_v4_0_2026.financial_status_indicator.display = function(value)
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
  if value == "C" then
    return "Financial Status Indicator: Creations Redemptions Suspended (C)"
  end
  if value == "N" then
    return "Financial Status Indicator: Normal (N)"
  end
  if value == " " then
    return "Financial Status Indicator: Not Available (<whitespace>)"
  end

  return "Financial Status Indicator: Unknown("..value..")"
end

-- Dissect: Financial Status Indicator
nasdaq_ntxequities_lastsale_itch_v4_0_2026.financial_status_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_lastsale_itch_v4_0_2026.financial_status_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.financial_status_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.financial_status_indicator, range, value, display)

  return offset + length, value
end

-- Inverse Indicator
nasdaq_ntxequities_lastsale_itch_v4_0_2026.inverse_indicator = {}

-- Size: Inverse Indicator
nasdaq_ntxequities_lastsale_itch_v4_0_2026.inverse_indicator.size = 1

-- Display: Inverse Indicator
nasdaq_ntxequities_lastsale_itch_v4_0_2026.inverse_indicator.display = function(value)
  if value == "Y" then
    return "Inverse Indicator: Inverse Etp (Y)"
  end
  if value == "N" then
    return "Inverse Indicator: Not Inverse Etp (N)"
  end

  return "Inverse Indicator: Unknown("..value..")"
end

-- Dissect: Inverse Indicator
nasdaq_ntxequities_lastsale_itch_v4_0_2026.inverse_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_lastsale_itch_v4_0_2026.inverse_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.inverse_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.inverse_indicator, range, value, display)

  return offset + length, value
end

-- Ipo Flag
nasdaq_ntxequities_lastsale_itch_v4_0_2026.ipo_flag = {}

-- Size: Ipo Flag
nasdaq_ntxequities_lastsale_itch_v4_0_2026.ipo_flag.size = 1

-- Display: Ipo Flag
nasdaq_ntxequities_lastsale_itch_v4_0_2026.ipo_flag.display = function(value)
  if value == "Y" then
    return "Ipo Flag: Yes (Y)"
  end
  if value == "N" then
    return "Ipo Flag: No (N)"
  end
  if value == "Z" then
    return "Ipo Flag: Non Ipo New Listed (Z)"
  end
  if value == " " then
    return "Ipo Flag: Not Available (<whitespace>)"
  end

  return "Ipo Flag: Unknown("..value..")"
end

-- Dissect: Ipo Flag
nasdaq_ntxequities_lastsale_itch_v4_0_2026.ipo_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_lastsale_itch_v4_0_2026.ipo_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.ipo_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.ipo_flag, range, value, display)

  return offset + length, value
end

-- Issue Classification
nasdaq_ntxequities_lastsale_itch_v4_0_2026.issue_classification = {}

-- Size: Issue Classification
nasdaq_ntxequities_lastsale_itch_v4_0_2026.issue_classification.size = 1

-- Display: Issue Classification
nasdaq_ntxequities_lastsale_itch_v4_0_2026.issue_classification.display = function(value)
  if value == "A" then
    return "Issue Classification: Ads (A)"
  end
  if value == "B" then
    return "Issue Classification: Bond (B)"
  end
  if value == "C" then
    return "Issue Classification: Common (C)"
  end
  if value == "F" then
    return "Issue Classification: Depository (F)"
  end
  if value == "I" then
    return "Issue Classification: Sec 144 A (I)"
  end
  if value == "L" then
    return "Issue Classification: Limited (L)"
  end
  if value == "N" then
    return "Issue Classification: Notes (N)"
  end
  if value == "O" then
    return "Issue Classification: Ordinary (O)"
  end
  if value == "P" then
    return "Issue Classification: Preferred (P)"
  end
  if value == "Q" then
    return "Issue Classification: Other (Q)"
  end
  if value == "R" then
    return "Issue Classification: Right (R)"
  end
  if value == "S" then
    return "Issue Classification: Shares (S)"
  end
  if value == "T" then
    return "Issue Classification: Convertible (T)"
  end
  if value == "U" then
    return "Issue Classification: Unit (U)"
  end
  if value == "V" then
    return "Issue Classification: Units Bi (V)"
  end
  if value == "W" then
    return "Issue Classification: Warrant (W)"
  end

  return "Issue Classification: Unknown("..value..")"
end

-- Dissect: Issue Classification
nasdaq_ntxequities_lastsale_itch_v4_0_2026.issue_classification.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_lastsale_itch_v4_0_2026.issue_classification.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.issue_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.issue_classification, range, value, display)

  return offset + length, value
end

-- Issue Sub Type
nasdaq_ntxequities_lastsale_itch_v4_0_2026.issue_sub_type = {}

-- Size: Issue Sub Type
nasdaq_ntxequities_lastsale_itch_v4_0_2026.issue_sub_type.size = 2

-- Display: Issue Sub Type
nasdaq_ntxequities_lastsale_itch_v4_0_2026.issue_sub_type.display = function(value)
  return "Issue Sub Type: "..value
end

-- Dissect: Issue Sub Type
nasdaq_ntxequities_lastsale_itch_v4_0_2026.issue_sub_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_lastsale_itch_v4_0_2026.issue_sub_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.issue_sub_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.issue_sub_type, range, value, display)

  return offset + length, value
end

-- Issue Symbol
nasdaq_ntxequities_lastsale_itch_v4_0_2026.issue_symbol = {}

-- Size: Issue Symbol
nasdaq_ntxequities_lastsale_itch_v4_0_2026.issue_symbol.size = 8

-- Display: Issue Symbol
nasdaq_ntxequities_lastsale_itch_v4_0_2026.issue_symbol.display = function(value)
  return "Issue Symbol: "..value
end

-- Dissect: Issue Symbol
nasdaq_ntxequities_lastsale_itch_v4_0_2026.issue_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_lastsale_itch_v4_0_2026.issue_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.issue_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.issue_symbol, range, value, display)

  return offset + length, value
end

-- Level 1
nasdaq_ntxequities_lastsale_itch_v4_0_2026.level_1 = {}

-- Size: Level 1
nasdaq_ntxequities_lastsale_itch_v4_0_2026.level_1.size = 8

-- Display: Level 1
nasdaq_ntxequities_lastsale_itch_v4_0_2026.level_1.display = function(value)
  return "Level 1: "..value
end

-- Translate: Level 1
nasdaq_ntxequities_lastsale_itch_v4_0_2026.level_1.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Level 1
nasdaq_ntxequities_lastsale_itch_v4_0_2026.level_1.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_lastsale_itch_v4_0_2026.level_1.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_ntxequities_lastsale_itch_v4_0_2026.level_1.translate(raw)
  local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.level_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.level_1, range, value, display)

  return offset + length, value
end

-- Level 2
nasdaq_ntxequities_lastsale_itch_v4_0_2026.level_2 = {}

-- Size: Level 2
nasdaq_ntxequities_lastsale_itch_v4_0_2026.level_2.size = 8

-- Display: Level 2
nasdaq_ntxequities_lastsale_itch_v4_0_2026.level_2.display = function(value)
  return "Level 2: "..value
end

-- Translate: Level 2
nasdaq_ntxequities_lastsale_itch_v4_0_2026.level_2.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Level 2
nasdaq_ntxequities_lastsale_itch_v4_0_2026.level_2.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_lastsale_itch_v4_0_2026.level_2.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_ntxequities_lastsale_itch_v4_0_2026.level_2.translate(raw)
  local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.level_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.level_2, range, value, display)

  return offset + length, value
end

-- Level 3
nasdaq_ntxequities_lastsale_itch_v4_0_2026.level_3 = {}

-- Size: Level 3
nasdaq_ntxequities_lastsale_itch_v4_0_2026.level_3.size = 8

-- Display: Level 3
nasdaq_ntxequities_lastsale_itch_v4_0_2026.level_3.display = function(value)
  return "Level 3: "..value
end

-- Translate: Level 3
nasdaq_ntxequities_lastsale_itch_v4_0_2026.level_3.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Level 3
nasdaq_ntxequities_lastsale_itch_v4_0_2026.level_3.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_lastsale_itch_v4_0_2026.level_3.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_ntxequities_lastsale_itch_v4_0_2026.level_3.translate(raw)
  local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.level_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.level_3, range, value, display)

  return offset + length, value
end

-- Luld Reference Price Tier
nasdaq_ntxequities_lastsale_itch_v4_0_2026.luld_reference_price_tier = {}

-- Size: Luld Reference Price Tier
nasdaq_ntxequities_lastsale_itch_v4_0_2026.luld_reference_price_tier.size = 1

-- Display: Luld Reference Price Tier
nasdaq_ntxequities_lastsale_itch_v4_0_2026.luld_reference_price_tier.display = function(value)
  if value == "1" then
    return "Luld Reference Price Tier: Tier 1 (1)"
  end
  if value == "2" then
    return "Luld Reference Price Tier: Tier 2 (2)"
  end
  if value == " " then
    return "Luld Reference Price Tier: Not Applicable (<whitespace>)"
  end

  return "Luld Reference Price Tier: Unknown("..value..")"
end

-- Dissect: Luld Reference Price Tier
nasdaq_ntxequities_lastsale_itch_v4_0_2026.luld_reference_price_tier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_lastsale_itch_v4_0_2026.luld_reference_price_tier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.luld_reference_price_tier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.luld_reference_price_tier, range, value, display)

  return offset + length, value
end

-- Market Category
nasdaq_ntxequities_lastsale_itch_v4_0_2026.market_category = {}

-- Size: Market Category
nasdaq_ntxequities_lastsale_itch_v4_0_2026.market_category.size = 1

-- Display: Market Category
nasdaq_ntxequities_lastsale_itch_v4_0_2026.market_category.display = function(value)
  if value == "Q" then
    return "Market Category: Nasdaq Global Select Market (Q)"
  end
  if value == "G" then
    return "Market Category: Nasdaq Global Market (G)"
  end
  if value == "S" then
    return "Market Category: Nasdaq Capital Market (S)"
  end
  if value == "N" then
    return "Market Category: Nyse (N)"
  end
  if value == "A" then
    return "Market Category: Nyse American (A)"
  end
  if value == "P" then
    return "Market Category: Nyse Arca (P)"
  end
  if value == "M" then
    return "Market Category: Nyse Texas (M)"
  end
  if value == "Z" then
    return "Market Category: Bats Z (Z)"
  end
  if value == "V" then
    return "Market Category: Iex (V)"
  end
  if value == " " then
    return "Market Category: Not Available (<whitespace>)"
  end

  return "Market Category: Unknown("..value..")"
end

-- Dissect: Market Category
nasdaq_ntxequities_lastsale_itch_v4_0_2026.market_category.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_lastsale_itch_v4_0_2026.market_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.market_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.market_category, range, value, display)

  return offset + length, value
end

-- Market Code
nasdaq_ntxequities_lastsale_itch_v4_0_2026.market_code = {}

-- Size: Market Code
nasdaq_ntxequities_lastsale_itch_v4_0_2026.market_code.size = 1

-- Display: Market Code
nasdaq_ntxequities_lastsale_itch_v4_0_2026.market_code.display = function(value)
  if value == "Q" then
    return "Market Code: Nasdaq (Q)"
  end
  if value == "B" then
    return "Market Code: Nasdaq Texas (B)"
  end
  if value == "X" then
    return "Market Code: Psx (X)"
  end

  return "Market Code: Unknown("..value..")"
end

-- Dissect: Market Code
nasdaq_ntxequities_lastsale_itch_v4_0_2026.market_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_lastsale_itch_v4_0_2026.market_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.market_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.market_code, range, value, display)

  return offset + length, value
end

-- Message Count
nasdaq_ntxequities_lastsale_itch_v4_0_2026.message_count = {}

-- Size: Message Count
nasdaq_ntxequities_lastsale_itch_v4_0_2026.message_count.size = 2

-- Display: Message Count
nasdaq_ntxequities_lastsale_itch_v4_0_2026.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_ntxequities_lastsale_itch_v4_0_2026.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_lastsale_itch_v4_0_2026.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
nasdaq_ntxequities_lastsale_itch_v4_0_2026.message_length = {}

-- Size: Message Length
nasdaq_ntxequities_lastsale_itch_v4_0_2026.message_length.size = 2

-- Display: Message Length
nasdaq_ntxequities_lastsale_itch_v4_0_2026.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_ntxequities_lastsale_itch_v4_0_2026.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_lastsale_itch_v4_0_2026.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
nasdaq_ntxequities_lastsale_itch_v4_0_2026.message_type = {}

-- Size: Message Type
nasdaq_ntxequities_lastsale_itch_v4_0_2026.message_type.size = 1

-- Display: Message Type
nasdaq_ntxequities_lastsale_itch_v4_0_2026.message_type.display = function(value)
  if value == "S" then
    return "Message Type: System Event Message (S)"
  end
  if value == "e" then
    return "Message Type: Trade Report Message (e)"
  end
  if value == "o" then
    return "Message Type: Trade Cancel Error Message (o)"
  end
  if value == "b" then
    return "Message Type: Trade Correction Message (b)"
  end
  if value == "H" then
    return "Message Type: Stock Trading Action Message (H)"
  end
  if value == "Y" then
    return "Message Type: Reg Sho Short Sale Price Test Restricted Indicator Message (Y)"
  end
  if value == "R" then
    return "Message Type: Stock Directory Message (R)"
  end
  if value == "V" then
    return "Message Type: Mwcb Decline Level Message (V)"
  end
  if value == "W" then
    return "Message Type: Mwcb Status Message (W)"
  end
  if value == "h" then
    return "Message Type: Operational Halt Message (h)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_ntxequities_lastsale_itch_v4_0_2026.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_lastsale_itch_v4_0_2026.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.message_type, range, value, display)

  return offset + length, value
end

-- Operational Halt Action
nasdaq_ntxequities_lastsale_itch_v4_0_2026.operational_halt_action = {}

-- Size: Operational Halt Action
nasdaq_ntxequities_lastsale_itch_v4_0_2026.operational_halt_action.size = 1

-- Display: Operational Halt Action
nasdaq_ntxequities_lastsale_itch_v4_0_2026.operational_halt_action.display = function(value)
  if value == "H" then
    return "Operational Halt Action: Operationally Halted (H)"
  end
  if value == "T" then
    return "Operational Halt Action: Operational Halt Lifted (T)"
  end

  return "Operational Halt Action: Unknown("..value..")"
end

-- Dissect: Operational Halt Action
nasdaq_ntxequities_lastsale_itch_v4_0_2026.operational_halt_action.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_lastsale_itch_v4_0_2026.operational_halt_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.operational_halt_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.operational_halt_action, range, value, display)

  return offset + length, value
end

-- Original Sale Condition Modifier
nasdaq_ntxequities_lastsale_itch_v4_0_2026.original_sale_condition_modifier = {}

-- Size: Original Sale Condition Modifier
nasdaq_ntxequities_lastsale_itch_v4_0_2026.original_sale_condition_modifier.size = 4

-- Display: Original Sale Condition Modifier
nasdaq_ntxequities_lastsale_itch_v4_0_2026.original_sale_condition_modifier.display = function(value)
  return "Original Sale Condition Modifier: "..value
end

-- Dissect: Original Sale Condition Modifier
nasdaq_ntxequities_lastsale_itch_v4_0_2026.original_sale_condition_modifier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_lastsale_itch_v4_0_2026.original_sale_condition_modifier.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.original_sale_condition_modifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.original_sale_condition_modifier, range, value, display)

  return offset + length, value
end

-- Original Trade Control Number
nasdaq_ntxequities_lastsale_itch_v4_0_2026.original_trade_control_number = {}

-- Size: Original Trade Control Number
nasdaq_ntxequities_lastsale_itch_v4_0_2026.original_trade_control_number.size = 10

-- Display: Original Trade Control Number
nasdaq_ntxequities_lastsale_itch_v4_0_2026.original_trade_control_number.display = function(value)
  return "Original Trade Control Number: "..value
end

-- Dissect: Original Trade Control Number
nasdaq_ntxequities_lastsale_itch_v4_0_2026.original_trade_control_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_lastsale_itch_v4_0_2026.original_trade_control_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.original_trade_control_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.original_trade_control_number, range, value, display)

  return offset + length, value
end

-- Original Trade Price
nasdaq_ntxequities_lastsale_itch_v4_0_2026.original_trade_price = {}

-- Size: Original Trade Price
nasdaq_ntxequities_lastsale_itch_v4_0_2026.original_trade_price.size = 8

-- Display: Original Trade Price
nasdaq_ntxequities_lastsale_itch_v4_0_2026.original_trade_price.display = function(value)
  return "Original Trade Price: "..value
end

-- Translate: Original Trade Price
nasdaq_ntxequities_lastsale_itch_v4_0_2026.original_trade_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Original Trade Price
nasdaq_ntxequities_lastsale_itch_v4_0_2026.original_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_lastsale_itch_v4_0_2026.original_trade_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_ntxequities_lastsale_itch_v4_0_2026.original_trade_price.translate(raw)
  local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.original_trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.original_trade_price, range, value, display)

  return offset + length, value
end

-- Original Trade Size
nasdaq_ntxequities_lastsale_itch_v4_0_2026.original_trade_size = {}

-- Size: Original Trade Size
nasdaq_ntxequities_lastsale_itch_v4_0_2026.original_trade_size.size = 8

-- Display: Original Trade Size
nasdaq_ntxequities_lastsale_itch_v4_0_2026.original_trade_size.display = function(value)
  return "Original Trade Size: "..value
end

-- Translate: Original Trade Size
nasdaq_ntxequities_lastsale_itch_v4_0_2026.original_trade_size.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Original Trade Size
nasdaq_ntxequities_lastsale_itch_v4_0_2026.original_trade_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_lastsale_itch_v4_0_2026.original_trade_size.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_ntxequities_lastsale_itch_v4_0_2026.original_trade_size.translate(raw)
  local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.original_trade_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.original_trade_size, range, value, display)

  return offset + length, value
end

-- Originating Market Center Identifier
nasdaq_ntxequities_lastsale_itch_v4_0_2026.originating_market_center_identifier = {}

-- Size: Originating Market Center Identifier
nasdaq_ntxequities_lastsale_itch_v4_0_2026.originating_market_center_identifier.size = 1

-- Display: Originating Market Center Identifier
nasdaq_ntxequities_lastsale_itch_v4_0_2026.originating_market_center_identifier.display = function(value)
  if value == "Q" then
    return "Originating Market Center Identifier: Nasdaq (Q)"
  end
  if value == "L" then
    return "Originating Market Center Identifier: Trf Carteret (L)"
  end
  if value == "2" then
    return "Originating Market Center Identifier: Trf Chicago (2)"
  end
  if value == "B" then
    return "Originating Market Center Identifier: Nasdaq Texas (B)"
  end
  if value == "X" then
    return "Originating Market Center Identifier: Psx (X)"
  end

  return "Originating Market Center Identifier: Unknown("..value..")"
end

-- Dissect: Originating Market Center Identifier
nasdaq_ntxequities_lastsale_itch_v4_0_2026.originating_market_center_identifier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_lastsale_itch_v4_0_2026.originating_market_center_identifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.originating_market_center_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.originating_market_center_identifier, range, value, display)

  return offset + length, value
end

-- Reason
nasdaq_ntxequities_lastsale_itch_v4_0_2026.reason = {}

-- Size: Reason
nasdaq_ntxequities_lastsale_itch_v4_0_2026.reason.size = 4

-- Display: Reason
nasdaq_ntxequities_lastsale_itch_v4_0_2026.reason.display = function(value)
  return "Reason: "..value
end

-- Dissect: Reason
nasdaq_ntxequities_lastsale_itch_v4_0_2026.reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_lastsale_itch_v4_0_2026.reason.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.reason, range, value, display)

  return offset + length, value
end

-- Reg Sho Action
nasdaq_ntxequities_lastsale_itch_v4_0_2026.reg_sho_action = {}

-- Size: Reg Sho Action
nasdaq_ntxequities_lastsale_itch_v4_0_2026.reg_sho_action.size = 1

-- Display: Reg Sho Action
nasdaq_ntxequities_lastsale_itch_v4_0_2026.reg_sho_action.display = function(value)
  if value == "0" then
    return "Reg Sho Action: No Price Test (0)"
  end
  if value == "1" then
    return "Reg Sho Action: Restriction In Effect (1)"
  end
  if value == "2" then
    return "Reg Sho Action: Restriction Remains (2)"
  end

  return "Reg Sho Action: Unknown("..value..")"
end

-- Dissect: Reg Sho Action
nasdaq_ntxequities_lastsale_itch_v4_0_2026.reg_sho_action.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_lastsale_itch_v4_0_2026.reg_sho_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.reg_sho_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Round Lot Size
nasdaq_ntxequities_lastsale_itch_v4_0_2026.round_lot_size = {}

-- Size: Round Lot Size
nasdaq_ntxequities_lastsale_itch_v4_0_2026.round_lot_size.size = 4

-- Display: Round Lot Size
nasdaq_ntxequities_lastsale_itch_v4_0_2026.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
nasdaq_ntxequities_lastsale_itch_v4_0_2026.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_lastsale_itch_v4_0_2026.round_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Round Lots Only
nasdaq_ntxequities_lastsale_itch_v4_0_2026.round_lots_only = {}

-- Size: Round Lots Only
nasdaq_ntxequities_lastsale_itch_v4_0_2026.round_lots_only.size = 1

-- Display: Round Lots Only
nasdaq_ntxequities_lastsale_itch_v4_0_2026.round_lots_only.display = function(value)
  if value == "Y" then
    return "Round Lots Only: Round Lots Only (Y)"
  end
  if value == "N" then
    return "Round Lots Only: No Restrictions (N)"
  end

  return "Round Lots Only: Unknown("..value..")"
end

-- Dissect: Round Lots Only
nasdaq_ntxequities_lastsale_itch_v4_0_2026.round_lots_only.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_lastsale_itch_v4_0_2026.round_lots_only.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.round_lots_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.round_lots_only, range, value, display)

  return offset + length, value
end

-- Sale Condition Modifier
nasdaq_ntxequities_lastsale_itch_v4_0_2026.sale_condition_modifier = {}

-- Size: Sale Condition Modifier
nasdaq_ntxequities_lastsale_itch_v4_0_2026.sale_condition_modifier.size = 4

-- Display: Sale Condition Modifier
nasdaq_ntxequities_lastsale_itch_v4_0_2026.sale_condition_modifier.display = function(value)
  return "Sale Condition Modifier: "..value
end

-- Dissect: Sale Condition Modifier
nasdaq_ntxequities_lastsale_itch_v4_0_2026.sale_condition_modifier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_lastsale_itch_v4_0_2026.sale_condition_modifier.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.sale_condition_modifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.sale_condition_modifier, range, value, display)

  return offset + length, value
end

-- Security Class
nasdaq_ntxequities_lastsale_itch_v4_0_2026.security_class = {}

-- Size: Security Class
nasdaq_ntxequities_lastsale_itch_v4_0_2026.security_class.size = 1

-- Display: Security Class
nasdaq_ntxequities_lastsale_itch_v4_0_2026.security_class.display = function(value)
  if value == "Q" then
    return "Security Class: Nasdaq (Q)"
  end
  if value == "N" then
    return "Security Class: Nyse (N)"
  end
  if value == "A" then
    return "Security Class: Nyse American (A)"
  end
  if value == "P" then
    return "Security Class: Nyse Arca (P)"
  end
  if value == "M" then
    return "Security Class: Nyse Texas (M)"
  end
  if value == "Z" then
    return "Security Class: Bats (Z)"
  end
  if value == "V" then
    return "Security Class: Iex (V)"
  end
  if value == "F" then
    return "Security Class: Texas Stock Exchange (F)"
  end

  return "Security Class: Unknown("..value..")"
end

-- Dissect: Security Class
nasdaq_ntxequities_lastsale_itch_v4_0_2026.security_class.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_lastsale_itch_v4_0_2026.security_class.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.security_class.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.security_class, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_ntxequities_lastsale_itch_v4_0_2026.sequence_number = {}

-- Size: Sequence Number
nasdaq_ntxequities_lastsale_itch_v4_0_2026.sequence_number.size = 8

-- Display: Sequence Number
nasdaq_ntxequities_lastsale_itch_v4_0_2026.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_ntxequities_lastsale_itch_v4_0_2026.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_lastsale_itch_v4_0_2026.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_ntxequities_lastsale_itch_v4_0_2026.session = {}

-- Size: Session
nasdaq_ntxequities_lastsale_itch_v4_0_2026.session.size = 10

-- Display: Session
nasdaq_ntxequities_lastsale_itch_v4_0_2026.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
nasdaq_ntxequities_lastsale_itch_v4_0_2026.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_lastsale_itch_v4_0_2026.session.size
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

  local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.session, range, value, display)

  return offset + length, value
end

-- Short Sale Threshold Indicator
nasdaq_ntxequities_lastsale_itch_v4_0_2026.short_sale_threshold_indicator = {}

-- Size: Short Sale Threshold Indicator
nasdaq_ntxequities_lastsale_itch_v4_0_2026.short_sale_threshold_indicator.size = 1

-- Display: Short Sale Threshold Indicator
nasdaq_ntxequities_lastsale_itch_v4_0_2026.short_sale_threshold_indicator.display = function(value)
  if value == "Y" then
    return "Short Sale Threshold Indicator: Restricted (Y)"
  end
  if value == "N" then
    return "Short Sale Threshold Indicator: Not Restricted (N)"
  end
  if value == " " then
    return "Short Sale Threshold Indicator: Not Available (<whitespace>)"
  end

  return "Short Sale Threshold Indicator: Unknown("..value..")"
end

-- Dissect: Short Sale Threshold Indicator
nasdaq_ntxequities_lastsale_itch_v4_0_2026.short_sale_threshold_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_lastsale_itch_v4_0_2026.short_sale_threshold_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.short_sale_threshold_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.short_sale_threshold_indicator, range, value, display)

  return offset + length, value
end

-- Stock
nasdaq_ntxequities_lastsale_itch_v4_0_2026.stock = {}

-- Size: Stock
nasdaq_ntxequities_lastsale_itch_v4_0_2026.stock.size = 8

-- Display: Stock
nasdaq_ntxequities_lastsale_itch_v4_0_2026.stock.display = function(value)
  return "Stock: "..value
end

-- Dissect: Stock
nasdaq_ntxequities_lastsale_itch_v4_0_2026.stock.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_lastsale_itch_v4_0_2026.stock.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.stock.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.stock, range, value, display)

  return offset + length, value
end

-- Stock Alpha 8
nasdaq_ntxequities_lastsale_itch_v4_0_2026.stock_alpha_8 = {}

-- Size: Stock Alpha 8
nasdaq_ntxequities_lastsale_itch_v4_0_2026.stock_alpha_8.size = 8

-- Display: Stock Alpha 8
nasdaq_ntxequities_lastsale_itch_v4_0_2026.stock_alpha_8.display = function(value)
  return "Stock Alpha 8: "..value
end

-- Dissect: Stock Alpha 8
nasdaq_ntxequities_lastsale_itch_v4_0_2026.stock_alpha_8.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_lastsale_itch_v4_0_2026.stock_alpha_8.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.stock_alpha_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.stock_alpha_8, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_ntxequities_lastsale_itch_v4_0_2026.timestamp = {}

-- Size: Timestamp
nasdaq_ntxequities_lastsale_itch_v4_0_2026.timestamp.size = 6

-- Display: Timestamp
nasdaq_ntxequities_lastsale_itch_v4_0_2026.timestamp.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if nasdaq_ntxequities_lastsale_itch_v4_0_2026.timestamp_format == 0 then
    return "Timestamp: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (calculate from capture date + UTC offset)
  if nasdaq_ntxequities_lastsale_itch_v4_0_2026.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = nasdaq_ntxequities_lastsale_itch_v4_0_2026.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", nanoseconds)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
nasdaq_ntxequities_lastsale_itch_v4_0_2026.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_lastsale_itch_v4_0_2026.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Tracking Number
nasdaq_ntxequities_lastsale_itch_v4_0_2026.tracking_number = {}

-- Size: Tracking Number
nasdaq_ntxequities_lastsale_itch_v4_0_2026.tracking_number.size = 2

-- Display: Tracking Number
nasdaq_ntxequities_lastsale_itch_v4_0_2026.tracking_number.display = function(value)
  return "Tracking Number: "..value
end

-- Dissect: Tracking Number
nasdaq_ntxequities_lastsale_itch_v4_0_2026.tracking_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_lastsale_itch_v4_0_2026.tracking_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.tracking_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.tracking_number, range, value, display)

  return offset + length, value
end

-- Trade Control Number
nasdaq_ntxequities_lastsale_itch_v4_0_2026.trade_control_number = {}

-- Size: Trade Control Number
nasdaq_ntxequities_lastsale_itch_v4_0_2026.trade_control_number.size = 10

-- Display: Trade Control Number
nasdaq_ntxequities_lastsale_itch_v4_0_2026.trade_control_number.display = function(value)
  return "Trade Control Number: "..value
end

-- Dissect: Trade Control Number
nasdaq_ntxequities_lastsale_itch_v4_0_2026.trade_control_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_lastsale_itch_v4_0_2026.trade_control_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.trade_control_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.trade_control_number, range, value, display)

  return offset + length, value
end

-- Trade Price
nasdaq_ntxequities_lastsale_itch_v4_0_2026.trade_price = {}

-- Size: Trade Price
nasdaq_ntxequities_lastsale_itch_v4_0_2026.trade_price.size = 8

-- Display: Trade Price
nasdaq_ntxequities_lastsale_itch_v4_0_2026.trade_price.display = function(value)
  return "Trade Price: "..value
end

-- Translate: Trade Price
nasdaq_ntxequities_lastsale_itch_v4_0_2026.trade_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Trade Price
nasdaq_ntxequities_lastsale_itch_v4_0_2026.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_lastsale_itch_v4_0_2026.trade_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_ntxequities_lastsale_itch_v4_0_2026.trade_price.translate(raw)
  local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Trade Size
nasdaq_ntxequities_lastsale_itch_v4_0_2026.trade_size = {}

-- Size: Trade Size
nasdaq_ntxequities_lastsale_itch_v4_0_2026.trade_size.size = 8

-- Display: Trade Size
nasdaq_ntxequities_lastsale_itch_v4_0_2026.trade_size.display = function(value)
  return "Trade Size: "..value
end

-- Translate: Trade Size
nasdaq_ntxequities_lastsale_itch_v4_0_2026.trade_size.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Trade Size
nasdaq_ntxequities_lastsale_itch_v4_0_2026.trade_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_lastsale_itch_v4_0_2026.trade_size.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_ntxequities_lastsale_itch_v4_0_2026.trade_size.translate(raw)
  local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.trade_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.trade_size, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq NtxEquities LastSale Itch 4.0.2026
-----------------------------------------------------------------------

-- Operational Halt Message
nasdaq_ntxequities_lastsale_itch_v4_0_2026.operational_halt_message = {}

-- Size: Operational Halt Message
nasdaq_ntxequities_lastsale_itch_v4_0_2026.operational_halt_message.size =
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.tracking_number.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.timestamp.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.stock_alpha_8.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.market_code.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.operational_halt_action.size

-- Display: Operational Halt Message
nasdaq_ntxequities_lastsale_itch_v4_0_2026.operational_halt_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Operational Halt Message
nasdaq_ntxequities_lastsale_itch_v4_0_2026.operational_halt_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_ntxequities_lastsale_itch_v4_0_2026.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_ntxequities_lastsale_itch_v4_0_2026.timestamp.dissect(buffer, index, packet, parent)

  -- Stock Alpha 8: Alpha
  index, stock_alpha_8 = nasdaq_ntxequities_lastsale_itch_v4_0_2026.stock_alpha_8.dissect(buffer, index, packet, parent)

  -- Market Code: Alpha
  index, market_code = nasdaq_ntxequities_lastsale_itch_v4_0_2026.market_code.dissect(buffer, index, packet, parent)

  -- Operational Halt Action: Alpha
  index, operational_halt_action = nasdaq_ntxequities_lastsale_itch_v4_0_2026.operational_halt_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Operational Halt Message
nasdaq_ntxequities_lastsale_itch_v4_0_2026.operational_halt_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.operational_halt_message, buffer(offset, 0))
    local index = nasdaq_ntxequities_lastsale_itch_v4_0_2026.operational_halt_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.operational_halt_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_lastsale_itch_v4_0_2026.operational_halt_message.fields(buffer, offset, packet, parent)
  end
end

-- Mwcb Status Message
nasdaq_ntxequities_lastsale_itch_v4_0_2026.mwcb_status_message = {}

-- Size: Mwcb Status Message
nasdaq_ntxequities_lastsale_itch_v4_0_2026.mwcb_status_message.size =
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.tracking_number.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.timestamp.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.breached_level.size

-- Display: Mwcb Status Message
nasdaq_ntxequities_lastsale_itch_v4_0_2026.mwcb_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mwcb Status Message
nasdaq_ntxequities_lastsale_itch_v4_0_2026.mwcb_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_ntxequities_lastsale_itch_v4_0_2026.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_ntxequities_lastsale_itch_v4_0_2026.timestamp.dissect(buffer, index, packet, parent)

  -- Breached Level: Alphanumeric
  index, breached_level = nasdaq_ntxequities_lastsale_itch_v4_0_2026.breached_level.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mwcb Status Message
nasdaq_ntxequities_lastsale_itch_v4_0_2026.mwcb_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.mwcb_status_message, buffer(offset, 0))
    local index = nasdaq_ntxequities_lastsale_itch_v4_0_2026.mwcb_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.mwcb_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_lastsale_itch_v4_0_2026.mwcb_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Mwcb Decline Level Message
nasdaq_ntxequities_lastsale_itch_v4_0_2026.mwcb_decline_level_message = {}

-- Size: Mwcb Decline Level Message
nasdaq_ntxequities_lastsale_itch_v4_0_2026.mwcb_decline_level_message.size =
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.tracking_number.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.timestamp.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.level_1.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.level_2.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.level_3.size

-- Display: Mwcb Decline Level Message
nasdaq_ntxequities_lastsale_itch_v4_0_2026.mwcb_decline_level_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mwcb Decline Level Message
nasdaq_ntxequities_lastsale_itch_v4_0_2026.mwcb_decline_level_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_ntxequities_lastsale_itch_v4_0_2026.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_ntxequities_lastsale_itch_v4_0_2026.timestamp.dissect(buffer, index, packet, parent)

  -- Level 1: Price (8)
  index, level_1 = nasdaq_ntxequities_lastsale_itch_v4_0_2026.level_1.dissect(buffer, index, packet, parent)

  -- Level 2: Price (8)
  index, level_2 = nasdaq_ntxequities_lastsale_itch_v4_0_2026.level_2.dissect(buffer, index, packet, parent)

  -- Level 3: Price (8)
  index, level_3 = nasdaq_ntxequities_lastsale_itch_v4_0_2026.level_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mwcb Decline Level Message
nasdaq_ntxequities_lastsale_itch_v4_0_2026.mwcb_decline_level_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.mwcb_decline_level_message, buffer(offset, 0))
    local index = nasdaq_ntxequities_lastsale_itch_v4_0_2026.mwcb_decline_level_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.mwcb_decline_level_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_lastsale_itch_v4_0_2026.mwcb_decline_level_message.fields(buffer, offset, packet, parent)
  end
end

-- Stock Directory Message
nasdaq_ntxequities_lastsale_itch_v4_0_2026.stock_directory_message = {}

-- Size: Stock Directory Message
nasdaq_ntxequities_lastsale_itch_v4_0_2026.stock_directory_message.size =
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.tracking_number.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.timestamp.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.stock.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.market_category.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.financial_status_indicator.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.round_lot_size.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.round_lots_only.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.issue_classification.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.issue_sub_type.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.authenticity.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.short_sale_threshold_indicator.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.ipo_flag.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.luld_reference_price_tier.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.etp_flag.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.etp_leverage_factor.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.inverse_indicator.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.bloomberg_id.size

-- Display: Stock Directory Message
nasdaq_ntxequities_lastsale_itch_v4_0_2026.stock_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Directory Message
nasdaq_ntxequities_lastsale_itch_v4_0_2026.stock_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_ntxequities_lastsale_itch_v4_0_2026.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_ntxequities_lastsale_itch_v4_0_2026.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: Alphanumeric
  index, stock = nasdaq_ntxequities_lastsale_itch_v4_0_2026.stock.dissect(buffer, index, packet, parent)

  -- Market Category: Alphanumeric
  index, market_category = nasdaq_ntxequities_lastsale_itch_v4_0_2026.market_category.dissect(buffer, index, packet, parent)

  -- Financial Status Indicator: Alphanumeric
  index, financial_status_indicator = nasdaq_ntxequities_lastsale_itch_v4_0_2026.financial_status_indicator.dissect(buffer, index, packet, parent)

  -- Round Lot Size: Integer
  index, round_lot_size = nasdaq_ntxequities_lastsale_itch_v4_0_2026.round_lot_size.dissect(buffer, index, packet, parent)

  -- Round Lots Only: Alphanumeric
  index, round_lots_only = nasdaq_ntxequities_lastsale_itch_v4_0_2026.round_lots_only.dissect(buffer, index, packet, parent)

  -- Issue Classification: Alphanumeric
  index, issue_classification = nasdaq_ntxequities_lastsale_itch_v4_0_2026.issue_classification.dissect(buffer, index, packet, parent)

  -- Issue Sub Type: Alphanumeric
  index, issue_sub_type = nasdaq_ntxequities_lastsale_itch_v4_0_2026.issue_sub_type.dissect(buffer, index, packet, parent)

  -- Authenticity: Alphanumeric
  index, authenticity = nasdaq_ntxequities_lastsale_itch_v4_0_2026.authenticity.dissect(buffer, index, packet, parent)

  -- Short Sale Threshold Indicator: Alphanumeric
  index, short_sale_threshold_indicator = nasdaq_ntxequities_lastsale_itch_v4_0_2026.short_sale_threshold_indicator.dissect(buffer, index, packet, parent)

  -- Ipo Flag: Alphanumeric
  index, ipo_flag = nasdaq_ntxequities_lastsale_itch_v4_0_2026.ipo_flag.dissect(buffer, index, packet, parent)

  -- Luld Reference Price Tier: Alphanumeric
  index, luld_reference_price_tier = nasdaq_ntxequities_lastsale_itch_v4_0_2026.luld_reference_price_tier.dissect(buffer, index, packet, parent)

  -- Etp Flag: Alphanumeric
  index, etp_flag = nasdaq_ntxequities_lastsale_itch_v4_0_2026.etp_flag.dissect(buffer, index, packet, parent)

  -- Etp Leverage Factor: Integer
  index, etp_leverage_factor = nasdaq_ntxequities_lastsale_itch_v4_0_2026.etp_leverage_factor.dissect(buffer, index, packet, parent)

  -- Inverse Indicator: Alphanumeric
  index, inverse_indicator = nasdaq_ntxequities_lastsale_itch_v4_0_2026.inverse_indicator.dissect(buffer, index, packet, parent)

  -- Bloomberg Id: Alphanumeric
  index, bloomberg_id = nasdaq_ntxequities_lastsale_itch_v4_0_2026.bloomberg_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Directory Message
nasdaq_ntxequities_lastsale_itch_v4_0_2026.stock_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.stock_directory_message, buffer(offset, 0))
    local index = nasdaq_ntxequities_lastsale_itch_v4_0_2026.stock_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.stock_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_lastsale_itch_v4_0_2026.stock_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_ntxequities_lastsale_itch_v4_0_2026.reg_sho_short_sale_price_test_restricted_indicator_message = {}

-- Size: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_ntxequities_lastsale_itch_v4_0_2026.reg_sho_short_sale_price_test_restricted_indicator_message.size =
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.tracking_number.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.timestamp.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.issue_symbol.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.reg_sho_action.size

-- Display: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_ntxequities_lastsale_itch_v4_0_2026.reg_sho_short_sale_price_test_restricted_indicator_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_ntxequities_lastsale_itch_v4_0_2026.reg_sho_short_sale_price_test_restricted_indicator_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_ntxequities_lastsale_itch_v4_0_2026.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_ntxequities_lastsale_itch_v4_0_2026.timestamp.dissect(buffer, index, packet, parent)

  -- Issue Symbol: Alphanumeric
  index, issue_symbol = nasdaq_ntxequities_lastsale_itch_v4_0_2026.issue_symbol.dissect(buffer, index, packet, parent)

  -- Reg Sho Action: Alphanumeric
  index, reg_sho_action = nasdaq_ntxequities_lastsale_itch_v4_0_2026.reg_sho_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_ntxequities_lastsale_itch_v4_0_2026.reg_sho_short_sale_price_test_restricted_indicator_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.reg_sho_short_sale_price_test_restricted_indicator_message, buffer(offset, 0))
    local index = nasdaq_ntxequities_lastsale_itch_v4_0_2026.reg_sho_short_sale_price_test_restricted_indicator_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.reg_sho_short_sale_price_test_restricted_indicator_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_lastsale_itch_v4_0_2026.reg_sho_short_sale_price_test_restricted_indicator_message.fields(buffer, offset, packet, parent)
  end
end

-- Stock Trading Action Message
nasdaq_ntxequities_lastsale_itch_v4_0_2026.stock_trading_action_message = {}

-- Size: Stock Trading Action Message
nasdaq_ntxequities_lastsale_itch_v4_0_2026.stock_trading_action_message.size =
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.tracking_number.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.timestamp.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.issue_symbol.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.security_class.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.current_trading_state.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.reason.size

-- Display: Stock Trading Action Message
nasdaq_ntxequities_lastsale_itch_v4_0_2026.stock_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Trading Action Message
nasdaq_ntxequities_lastsale_itch_v4_0_2026.stock_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_ntxequities_lastsale_itch_v4_0_2026.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_ntxequities_lastsale_itch_v4_0_2026.timestamp.dissect(buffer, index, packet, parent)

  -- Issue Symbol: Alphanumeric
  index, issue_symbol = nasdaq_ntxequities_lastsale_itch_v4_0_2026.issue_symbol.dissect(buffer, index, packet, parent)

  -- Security Class: Alphanumeric
  index, security_class = nasdaq_ntxequities_lastsale_itch_v4_0_2026.security_class.dissect(buffer, index, packet, parent)

  -- Current Trading State: Alphanumeric
  index, current_trading_state = nasdaq_ntxequities_lastsale_itch_v4_0_2026.current_trading_state.dissect(buffer, index, packet, parent)

  -- Reason: Alphanumeric
  index, reason = nasdaq_ntxequities_lastsale_itch_v4_0_2026.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Trading Action Message
nasdaq_ntxequities_lastsale_itch_v4_0_2026.stock_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.stock_trading_action_message, buffer(offset, 0))
    local index = nasdaq_ntxequities_lastsale_itch_v4_0_2026.stock_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.stock_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_lastsale_itch_v4_0_2026.stock_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Correction Message
nasdaq_ntxequities_lastsale_itch_v4_0_2026.trade_correction_message = {}

-- Size: Trade Correction Message
nasdaq_ntxequities_lastsale_itch_v4_0_2026.trade_correction_message.size =
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.tracking_number.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.timestamp.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.client_timestamp.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.originating_market_center_identifier.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.issue_symbol.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.security_class.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.original_trade_control_number.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.original_trade_price.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.original_trade_size.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.original_sale_condition_modifier.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.corrected_trade_control_number.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.corrected_trade_price.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.corrected_trade_size.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.corrected_sale_condition_modifier.size

-- Display: Trade Correction Message
nasdaq_ntxequities_lastsale_itch_v4_0_2026.trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Correction Message
nasdaq_ntxequities_lastsale_itch_v4_0_2026.trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_ntxequities_lastsale_itch_v4_0_2026.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_ntxequities_lastsale_itch_v4_0_2026.timestamp.dissect(buffer, index, packet, parent)

  -- Client Timestamp: Integer
  index, client_timestamp = nasdaq_ntxequities_lastsale_itch_v4_0_2026.client_timestamp.dissect(buffer, index, packet, parent)

  -- Originating Market Center Identifier: Alphanumeric
  index, originating_market_center_identifier = nasdaq_ntxequities_lastsale_itch_v4_0_2026.originating_market_center_identifier.dissect(buffer, index, packet, parent)

  -- Issue Symbol: Alphanumeric
  index, issue_symbol = nasdaq_ntxequities_lastsale_itch_v4_0_2026.issue_symbol.dissect(buffer, index, packet, parent)

  -- Security Class: Alphanumeric
  index, security_class = nasdaq_ntxequities_lastsale_itch_v4_0_2026.security_class.dissect(buffer, index, packet, parent)

  -- Original Trade Control Number: Alphanumeric
  index, original_trade_control_number = nasdaq_ntxequities_lastsale_itch_v4_0_2026.original_trade_control_number.dissect(buffer, index, packet, parent)

  -- Original Trade Price: Price (4)
  index, original_trade_price = nasdaq_ntxequities_lastsale_itch_v4_0_2026.original_trade_price.dissect(buffer, index, packet, parent)

  -- Original Trade Size: Size (6)
  index, original_trade_size = nasdaq_ntxequities_lastsale_itch_v4_0_2026.original_trade_size.dissect(buffer, index, packet, parent)

  -- Original Sale Condition Modifier: Alphanumeric
  index, original_sale_condition_modifier = nasdaq_ntxequities_lastsale_itch_v4_0_2026.original_sale_condition_modifier.dissect(buffer, index, packet, parent)

  -- Corrected Trade Control Number: Alphanumeric
  index, corrected_trade_control_number = nasdaq_ntxequities_lastsale_itch_v4_0_2026.corrected_trade_control_number.dissect(buffer, index, packet, parent)

  -- Corrected Trade Price: Price (4)
  index, corrected_trade_price = nasdaq_ntxequities_lastsale_itch_v4_0_2026.corrected_trade_price.dissect(buffer, index, packet, parent)

  -- Corrected Trade Size: Size (6)
  index, corrected_trade_size = nasdaq_ntxequities_lastsale_itch_v4_0_2026.corrected_trade_size.dissect(buffer, index, packet, parent)

  -- Corrected Sale Condition Modifier: Alphanumeric
  index, corrected_sale_condition_modifier = nasdaq_ntxequities_lastsale_itch_v4_0_2026.corrected_sale_condition_modifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Correction Message
nasdaq_ntxequities_lastsale_itch_v4_0_2026.trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.trade_correction_message, buffer(offset, 0))
    local index = nasdaq_ntxequities_lastsale_itch_v4_0_2026.trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_lastsale_itch_v4_0_2026.trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancel Error Message
nasdaq_ntxequities_lastsale_itch_v4_0_2026.trade_cancel_error_message = {}

-- Size: Trade Cancel Error Message
nasdaq_ntxequities_lastsale_itch_v4_0_2026.trade_cancel_error_message.size =
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.tracking_number.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.timestamp.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.client_timestamp.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.originating_market_center_identifier.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.issue_symbol.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.security_class.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.original_trade_control_number.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.original_trade_price.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.original_trade_size.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.original_sale_condition_modifier.size

-- Display: Trade Cancel Error Message
nasdaq_ntxequities_lastsale_itch_v4_0_2026.trade_cancel_error_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Error Message
nasdaq_ntxequities_lastsale_itch_v4_0_2026.trade_cancel_error_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_ntxequities_lastsale_itch_v4_0_2026.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_ntxequities_lastsale_itch_v4_0_2026.timestamp.dissect(buffer, index, packet, parent)

  -- Client Timestamp: Integer
  index, client_timestamp = nasdaq_ntxequities_lastsale_itch_v4_0_2026.client_timestamp.dissect(buffer, index, packet, parent)

  -- Originating Market Center Identifier: Alphanumeric
  index, originating_market_center_identifier = nasdaq_ntxequities_lastsale_itch_v4_0_2026.originating_market_center_identifier.dissect(buffer, index, packet, parent)

  -- Issue Symbol: Alphanumeric
  index, issue_symbol = nasdaq_ntxequities_lastsale_itch_v4_0_2026.issue_symbol.dissect(buffer, index, packet, parent)

  -- Security Class: Alphanumeric
  index, security_class = nasdaq_ntxequities_lastsale_itch_v4_0_2026.security_class.dissect(buffer, index, packet, parent)

  -- Original Trade Control Number: Alphanumeric
  index, original_trade_control_number = nasdaq_ntxequities_lastsale_itch_v4_0_2026.original_trade_control_number.dissect(buffer, index, packet, parent)

  -- Original Trade Price: Price (4)
  index, original_trade_price = nasdaq_ntxequities_lastsale_itch_v4_0_2026.original_trade_price.dissect(buffer, index, packet, parent)

  -- Original Trade Size: Size (6)
  index, original_trade_size = nasdaq_ntxequities_lastsale_itch_v4_0_2026.original_trade_size.dissect(buffer, index, packet, parent)

  -- Original Sale Condition Modifier: Alphanumeric
  index, original_sale_condition_modifier = nasdaq_ntxequities_lastsale_itch_v4_0_2026.original_sale_condition_modifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Error Message
nasdaq_ntxequities_lastsale_itch_v4_0_2026.trade_cancel_error_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.trade_cancel_error_message, buffer(offset, 0))
    local index = nasdaq_ntxequities_lastsale_itch_v4_0_2026.trade_cancel_error_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.trade_cancel_error_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_lastsale_itch_v4_0_2026.trade_cancel_error_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Report Message
nasdaq_ntxequities_lastsale_itch_v4_0_2026.trade_report_message = {}

-- Size: Trade Report Message
nasdaq_ntxequities_lastsale_itch_v4_0_2026.trade_report_message.size =
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.tracking_number.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.timestamp.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.client_timestamp.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.originating_market_center_identifier.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.issue_symbol.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.security_class.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.trade_control_number.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.trade_price.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.trade_size.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.sale_condition_modifier.size

-- Display: Trade Report Message
nasdaq_ntxequities_lastsale_itch_v4_0_2026.trade_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Report Message
nasdaq_ntxequities_lastsale_itch_v4_0_2026.trade_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_ntxequities_lastsale_itch_v4_0_2026.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_ntxequities_lastsale_itch_v4_0_2026.timestamp.dissect(buffer, index, packet, parent)

  -- Client Timestamp: Integer
  index, client_timestamp = nasdaq_ntxequities_lastsale_itch_v4_0_2026.client_timestamp.dissect(buffer, index, packet, parent)

  -- Originating Market Center Identifier: Alphanumeric
  index, originating_market_center_identifier = nasdaq_ntxequities_lastsale_itch_v4_0_2026.originating_market_center_identifier.dissect(buffer, index, packet, parent)

  -- Issue Symbol: Alphanumeric
  index, issue_symbol = nasdaq_ntxequities_lastsale_itch_v4_0_2026.issue_symbol.dissect(buffer, index, packet, parent)

  -- Security Class: Alphanumeric
  index, security_class = nasdaq_ntxequities_lastsale_itch_v4_0_2026.security_class.dissect(buffer, index, packet, parent)

  -- Trade Control Number: Alphanumeric
  index, trade_control_number = nasdaq_ntxequities_lastsale_itch_v4_0_2026.trade_control_number.dissect(buffer, index, packet, parent)

  -- Trade Price: Price (4)
  index, trade_price = nasdaq_ntxequities_lastsale_itch_v4_0_2026.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Size: Size (6)
  index, trade_size = nasdaq_ntxequities_lastsale_itch_v4_0_2026.trade_size.dissect(buffer, index, packet, parent)

  -- Sale Condition Modifier: Alphanumeric
  index, sale_condition_modifier = nasdaq_ntxequities_lastsale_itch_v4_0_2026.sale_condition_modifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Report Message
nasdaq_ntxequities_lastsale_itch_v4_0_2026.trade_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.trade_report_message, buffer(offset, 0))
    local index = nasdaq_ntxequities_lastsale_itch_v4_0_2026.trade_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.trade_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_lastsale_itch_v4_0_2026.trade_report_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_ntxequities_lastsale_itch_v4_0_2026.system_event_message = {}

-- Size: System Event Message
nasdaq_ntxequities_lastsale_itch_v4_0_2026.system_event_message.size =
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.tracking_number.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.timestamp.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.event_code.size

-- Display: System Event Message
nasdaq_ntxequities_lastsale_itch_v4_0_2026.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_ntxequities_lastsale_itch_v4_0_2026.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_ntxequities_lastsale_itch_v4_0_2026.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_ntxequities_lastsale_itch_v4_0_2026.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: Alphanumeric
  index, event_code = nasdaq_ntxequities_lastsale_itch_v4_0_2026.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_ntxequities_lastsale_itch_v4_0_2026.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_ntxequities_lastsale_itch_v4_0_2026.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_lastsale_itch_v4_0_2026.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nasdaq_ntxequities_lastsale_itch_v4_0_2026.payload = {}

-- Dissect: Payload
nasdaq_ntxequities_lastsale_itch_v4_0_2026.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event Message
  if message_type == "S" then
    return nasdaq_ntxequities_lastsale_itch_v4_0_2026.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Report Message
  if message_type == "e" then
    return nasdaq_ntxequities_lastsale_itch_v4_0_2026.trade_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Error Message
  if message_type == "o" then
    return nasdaq_ntxequities_lastsale_itch_v4_0_2026.trade_cancel_error_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Correction Message
  if message_type == "b" then
    return nasdaq_ntxequities_lastsale_itch_v4_0_2026.trade_correction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Trading Action Message
  if message_type == "H" then
    return nasdaq_ntxequities_lastsale_itch_v4_0_2026.stock_trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reg Sho Short Sale Price Test Restricted Indicator Message
  if message_type == "Y" then
    return nasdaq_ntxequities_lastsale_itch_v4_0_2026.reg_sho_short_sale_price_test_restricted_indicator_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Directory Message
  if message_type == "R" then
    return nasdaq_ntxequities_lastsale_itch_v4_0_2026.stock_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mwcb Decline Level Message
  if message_type == "V" then
    return nasdaq_ntxequities_lastsale_itch_v4_0_2026.mwcb_decline_level_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mwcb Status Message
  if message_type == "W" then
    return nasdaq_ntxequities_lastsale_itch_v4_0_2026.mwcb_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Operational Halt Message
  if message_type == "h" then
    return nasdaq_ntxequities_lastsale_itch_v4_0_2026.operational_halt_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nasdaq_ntxequities_lastsale_itch_v4_0_2026.message_header = {}

-- Size: Message Header
nasdaq_ntxequities_lastsale_itch_v4_0_2026.message_header.size =
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.message_length.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.message_type.size

-- Display: Message Header
nasdaq_ntxequities_lastsale_itch_v4_0_2026.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_ntxequities_lastsale_itch_v4_0_2026.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_ntxequities_lastsale_itch_v4_0_2026.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 10 values
  index, message_type = nasdaq_ntxequities_lastsale_itch_v4_0_2026.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_ntxequities_lastsale_itch_v4_0_2026.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.message_header, buffer(offset, 0))
    local index = nasdaq_ntxequities_lastsale_itch_v4_0_2026.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_lastsale_itch_v4_0_2026.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_ntxequities_lastsale_itch_v4_0_2026.message = {}

-- Read runtime size of: Message
nasdaq_ntxequities_lastsale_itch_v4_0_2026.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 2):uint()

  return message_length + 2
end

-- Display: Message
nasdaq_ntxequities_lastsale_itch_v4_0_2026.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_ntxequities_lastsale_itch_v4_0_2026.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Implicit Message Sequence Number
  if message_index ~= nil and show.sequences and nasdaq_ntxequities_lastsale_itch_v4_0_2026.packet_sequence ~= nil then
    local sequence = parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.message_sequence_number, UInt64.new(nasdaq_ntxequities_lastsale_itch_v4_0_2026.packet_sequence + message_index - 1))
    sequence:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_ntxequities_lastsale_itch_v4_0_2026.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 10 branches
  index = nasdaq_ntxequities_lastsale_itch_v4_0_2026.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_ntxequities_lastsale_itch_v4_0_2026.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = nasdaq_ntxequities_lastsale_itch_v4_0_2026.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.message, buffer(offset, 0))
    local current = nasdaq_ntxequities_lastsale_itch_v4_0_2026.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_ntxequities_lastsale_itch_v4_0_2026.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- End Of Session
nasdaq_ntxequities_lastsale_itch_v4_0_2026.end_of_session = {}

-- Display: End Of Session
nasdaq_ntxequities_lastsale_itch_v4_0_2026.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
nasdaq_ntxequities_lastsale_itch_v4_0_2026.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Heartbeat
nasdaq_ntxequities_lastsale_itch_v4_0_2026.heartbeat = {}

-- Display: Heartbeat
nasdaq_ntxequities_lastsale_itch_v4_0_2026.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
nasdaq_ntxequities_lastsale_itch_v4_0_2026.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
nasdaq_ntxequities_lastsale_itch_v4_0_2026.messages = {}

-- Dissect: Messages
nasdaq_ntxequities_lastsale_itch_v4_0_2026.messages.dissect = function(buffer, offset, packet, parent, message_count)
  -- Dissect Heartbeat
  if message_count == 0 then
    return nasdaq_ntxequities_lastsale_itch_v4_0_2026.heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session
  if message_count == 65535 then
    return nasdaq_ntxequities_lastsale_itch_v4_0_2026.end_of_session.dissect(buffer, offset, packet, parent)
  end

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    offset = nasdaq_ntxequities_lastsale_itch_v4_0_2026.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end
end

-- Packet Header
nasdaq_ntxequities_lastsale_itch_v4_0_2026.packet_header = {}

-- Size: Packet Header
nasdaq_ntxequities_lastsale_itch_v4_0_2026.packet_header.size =
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.session.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.sequence_number.size + 
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.message_count.size

-- Display: Packet Header
nasdaq_ntxequities_lastsale_itch_v4_0_2026.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_ntxequities_lastsale_itch_v4_0_2026.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_ntxequities_lastsale_itch_v4_0_2026.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = nasdaq_ntxequities_lastsale_itch_v4_0_2026.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_ntxequities_lastsale_itch_v4_0_2026.message_count.dissect(buffer, index, packet, parent)

  -- Sequence base for the packet's messages
  nasdaq_ntxequities_lastsale_itch_v4_0_2026.packet_sequence = sequence_number

  return index
end

-- Dissect: Packet Header
nasdaq_ntxequities_lastsale_itch_v4_0_2026.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_ntxequities_lastsale_itch_v4_0_2026.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_lastsale_itch_v4_0_2026.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_lastsale_itch_v4_0_2026.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_ntxequities_lastsale_itch_v4_0_2026.packet = {}

-- Verify required size of Udp packet
nasdaq_ntxequities_lastsale_itch_v4_0_2026.packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_ntxequities_lastsale_itch_v4_0_2026.packet_header.size
end

-- Dissect Packet
nasdaq_ntxequities_lastsale_itch_v4_0_2026.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_ntxequities_lastsale_itch_v4_0_2026.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Messages: Runtime Type with 3 branches
  index = nasdaq_ntxequities_lastsale_itch_v4_0_2026.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.init()
end

-- Dissector for Nasdaq NtxEquities LastSale Itch 4.0.2026
function omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026, buffer(), omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.description, "("..buffer:len().." Bytes)")
  return nasdaq_ntxequities_lastsale_itch_v4_0_2026.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq NtxEquities LastSale Itch 4.0.2026 (Udp)
local function omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_ntxequities_lastsale_itch_v4_0_2026.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026
  omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq NtxEquities LastSale Itch 4.0.2026
omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026:register_heuristic("udp", omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026_udp_heuristic)

-- Register Nasdaq NtxEquities LastSale Itch 4.0.2026 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_nasdaq_ntxequities_lastsale_itch_v4_0_2026)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 4.0.2026
--   Since: 4.0
--   Date: Wednesday, June 17, 2026
--   Specification: NLS4.0_06172026.pdf
--   Specification: NLS4.0_02132026.pdf
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
