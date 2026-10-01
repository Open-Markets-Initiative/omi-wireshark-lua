-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq PsxEquities Bbo Itch 2.1.2017 Protocol
local omi_nasdaq_psxequities_bbo_itch_v2_1_2017 = Proto("Omi.Nasdaq.PsxEquities.Bbo.Itch.v2.1.2017", "Nasdaq PsxEquities Bbo Itch 2.1.2017")

-- Protocol table
local nasdaq_psxequities_bbo_itch_v2_1_2017 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq PsxEquities Bbo Itch 2.1.2017 Fields
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.authenticity = ProtoField.new("Authenticity", "nasdaq.psxequities.bbo.itch.v2.1.2017.authenticity", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.breached_level = ProtoField.new("Breached Level", "nasdaq.psxequities.bbo.itch.v2.1.2017.breachedlevel", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.current_trading_state = ProtoField.new("Current Trading State", "nasdaq.psxequities.bbo.itch.v2.1.2017.currenttradingstate", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.etp_flag = ProtoField.new("Etp Flag", "nasdaq.psxequities.bbo.itch.v2.1.2017.etpflag", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.etp_leverage_factor = ProtoField.new("Etp Leverage Factor", "nasdaq.psxequities.bbo.itch.v2.1.2017.etpleveragefactor", ftypes.UINT32)
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.event_code = ProtoField.new("Event Code", "nasdaq.psxequities.bbo.itch.v2.1.2017.eventcode", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.financial_status_indicator = ProtoField.new("Financial Status Indicator", "nasdaq.psxequities.bbo.itch.v2.1.2017.financialstatusindicator", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.inverse_indicator = ProtoField.new("Inverse Indicator", "nasdaq.psxequities.bbo.itch.v2.1.2017.inverseindicator", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.ipo_flag = ProtoField.new("Ipo Flag", "nasdaq.psxequities.bbo.itch.v2.1.2017.ipoflag", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.issue_classification = ProtoField.new("Issue Classification", "nasdaq.psxequities.bbo.itch.v2.1.2017.issueclassification", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.issue_sub_type = ProtoField.new("Issue Sub Type", "nasdaq.psxequities.bbo.itch.v2.1.2017.issuesubtype", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.level_1 = ProtoField.new("Level 1", "nasdaq.psxequities.bbo.itch.v2.1.2017.level1", ftypes.DOUBLE)
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.level_2 = ProtoField.new("Level 2", "nasdaq.psxequities.bbo.itch.v2.1.2017.level2", ftypes.DOUBLE)
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.level_3 = ProtoField.new("Level 3", "nasdaq.psxequities.bbo.itch.v2.1.2017.level3", ftypes.DOUBLE)
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.luld_reference_price_tier = ProtoField.new("Luld Reference Price Tier", "nasdaq.psxequities.bbo.itch.v2.1.2017.luldreferencepricetier", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.market_category = ProtoField.new("Market Category", "nasdaq.psxequities.bbo.itch.v2.1.2017.marketcategory", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.message_count = ProtoField.new("Message Count", "nasdaq.psxequities.bbo.itch.v2.1.2017.messagecount", ftypes.UINT16)
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.message_length = ProtoField.new("Message Length", "nasdaq.psxequities.bbo.itch.v2.1.2017.messagelength", ftypes.UINT16)
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.message_type = ProtoField.new("Message Type", "nasdaq.psxequities.bbo.itch.v2.1.2017.messagetype", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.nasdaq_best_bid_nav_premium_discount_amount = ProtoField.new("Nasdaq Best Bid Nav Premium Discount Amount", "nasdaq.psxequities.bbo.itch.v2.1.2017.nasdaqbestbidnavpremiumdiscountamount", ftypes.DOUBLE)
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.nasdaq_best_bid_proxy_price = ProtoField.new("Nasdaq Best Bid Proxy Price", "nasdaq.psxequities.bbo.itch.v2.1.2017.nasdaqbestbidproxyprice", ftypes.DOUBLE)
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.nasdaq_best_bid_size = ProtoField.new("Nasdaq Best Bid Size", "nasdaq.psxequities.bbo.itch.v2.1.2017.nasdaqbestbidsize", ftypes.UINT32)
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.nasdaq_best_offer_nav_premium_discount_amount = ProtoField.new("Nasdaq Best Offer Nav Premium Discount Amount", "nasdaq.psxequities.bbo.itch.v2.1.2017.nasdaqbestoffernavpremiumdiscountamount", ftypes.DOUBLE)
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.nasdaq_best_offer_proxy_price = ProtoField.new("Nasdaq Best Offer Proxy Price", "nasdaq.psxequities.bbo.itch.v2.1.2017.nasdaqbestofferproxyprice", ftypes.DOUBLE)
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.nasdaq_best_offer_size = ProtoField.new("Nasdaq Best Offer Size", "nasdaq.psxequities.bbo.itch.v2.1.2017.nasdaqbestoffersize", ftypes.UINT32)
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.next_shares_symbol = ProtoField.new("Next Shares Symbol", "nasdaq.psxequities.bbo.itch.v2.1.2017.nextsharessymbol", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.psx_best_bid_price = ProtoField.new("Psx Best Bid Price", "nasdaq.psxequities.bbo.itch.v2.1.2017.psxbestbidprice", ftypes.DOUBLE)
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.psx_best_bid_size = ProtoField.new("Psx Best Bid Size", "nasdaq.psxequities.bbo.itch.v2.1.2017.psxbestbidsize", ftypes.UINT32)
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.psx_best_offer_price = ProtoField.new("Psx Best Offer Price", "nasdaq.psxequities.bbo.itch.v2.1.2017.psxbestofferprice", ftypes.DOUBLE)
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.psx_best_offer_size = ProtoField.new("Psx Best Offer Size", "nasdaq.psxequities.bbo.itch.v2.1.2017.psxbestoffersize", ftypes.UINT32)
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.reason = ProtoField.new("Reason", "nasdaq.psxequities.bbo.itch.v2.1.2017.reason", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "nasdaq.psxequities.bbo.itch.v2.1.2017.regshoaction", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.round_lot_size = ProtoField.new("Round Lot Size", "nasdaq.psxequities.bbo.itch.v2.1.2017.roundlotsize", ftypes.UINT32)
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.round_lots_only = ProtoField.new("Round Lots Only", "nasdaq.psxequities.bbo.itch.v2.1.2017.roundlotsonly", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.security_class = ProtoField.new("Security Class", "nasdaq.psxequities.bbo.itch.v2.1.2017.securityclass", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.psxequities.bbo.itch.v2.1.2017.sequencenumber", ftypes.UINT64)
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.session = ProtoField.new("Session", "nasdaq.psxequities.bbo.itch.v2.1.2017.session", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.short_sale_threshold_indicator = ProtoField.new("Short Sale Threshold Indicator", "nasdaq.psxequities.bbo.itch.v2.1.2017.shortsalethresholdindicator", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.stock = ProtoField.new("Stock", "nasdaq.psxequities.bbo.itch.v2.1.2017.stock", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.psxequities.bbo.itch.v2.1.2017.timestamp", ftypes.UINT64)
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.tracking_number = ProtoField.new("Tracking Number", "nasdaq.psxequities.bbo.itch.v2.1.2017.trackingnumber", ftypes.UINT16)

-- Nasdaq PsxEquities Bbo Itch 2.1.2017 Framing
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.message = ProtoField.new("Message", "nasdaq.psxequities.bbo.itch.v2.1.2017.message", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.message_header = ProtoField.new("Message Header", "nasdaq.psxequities.bbo.itch.v2.1.2017.messageheader", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.packet = ProtoField.new("Packet", "nasdaq.psxequities.bbo.itch.v2.1.2017.packet", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.psxequities.bbo.itch.v2.1.2017.packetheader", ftypes.STRING)

-- Nasdaq PsxEquities Bbo 2.1.2017 Session Messages
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.end_of_session = ProtoField.new("End Of Session", "nasdaq.psxequities.bbo.itch.v2.1.2017.endofsession", ftypes.BYTES)
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.heartbeat = ProtoField.new("Heartbeat", "nasdaq.psxequities.bbo.itch.v2.1.2017.heartbeat", ftypes.BYTES)

-- Nasdaq PsxEquities Bbo 2.1.2017 Application Messages
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.mwcb_decline_level_message = ProtoField.new("Mwcb Decline Level Message", "nasdaq.psxequities.bbo.itch.v2.1.2017.mwcbdeclinelevelmessage", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.mwcb_status_message = ProtoField.new("Mwcb Status Message", "nasdaq.psxequities.bbo.itch.v2.1.2017.mwcbstatusmessage", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.next_shares_quotation_message = ProtoField.new("Next Shares Quotation Message", "nasdaq.psxequities.bbo.itch.v2.1.2017.nextsharesquotationmessage", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.quotation_message = ProtoField.new("Quotation Message", "nasdaq.psxequities.bbo.itch.v2.1.2017.quotationmessage", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.reg_sho_short_sale_price_test_restricted_indicator_message = ProtoField.new("Reg Sho Short Sale Price Test Restricted Indicator Message", "nasdaq.psxequities.bbo.itch.v2.1.2017.regshoshortsalepricetestrestrictedindicatormessage", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.stock_directory_message = ProtoField.new("Stock Directory Message", "nasdaq.psxequities.bbo.itch.v2.1.2017.stockdirectorymessage", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.stock_trading_action_message = ProtoField.new("Stock Trading Action Message", "nasdaq.psxequities.bbo.itch.v2.1.2017.stocktradingactionmessage", ftypes.STRING)
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.psxequities.bbo.itch.v2.1.2017.systemeventmessage", ftypes.STRING)

-- Nasdaq PsxEquities Bbo Itch 2.1.2017 Generated Fields
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.message_index = ProtoField.new("Message Index", "nasdaq.psxequities.bbo.itch.v2.1.2017.messageindex", ftypes.UINT16)
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "nasdaq.psxequities.bbo.itch.v2.1.2017.messagesequencenumber", ftypes.UINT64)

-----------------------------------------------------------------------
-- Nasdaq PsxEquities Bbo Itch 2.1.2017 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
nasdaq_psxequities_bbo_itch_v2_1_2017.timestamp_format = 2

-- Hours behind UTC (EST) for midnight calculation
nasdaq_psxequities_bbo_itch_v2_1_2017.utc_offset_hours = 5


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq PsxEquities Bbo Itch 2.1.2017 Element Dissection Options
show.structs = true
show.headers = true
show.application_messages = true
show.indexes = true
show.sequences = true

-- Register Nasdaq PsxEquities Bbo Itch 2.1.2017 Show Options
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")

omi_nasdaq_psxequities_bbo_itch_v2_1_2017.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Timestamp display format", timestamp_format_enum, false)
omi_nasdaq_psxequities_bbo_itch_v2_1_2017.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 5, "Hours behind UTC (EST) for midnight calculation")

-- Handle changed preferences
function omi_nasdaq_psxequities_bbo_itch_v2_1_2017.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_psxequities_bbo_itch_v2_1_2017.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_psxequities_bbo_itch_v2_1_2017.prefs.show_application_messages
  end
  if show.headers ~= omi_nasdaq_psxequities_bbo_itch_v2_1_2017.prefs.show_headers then
    show.headers = omi_nasdaq_psxequities_bbo_itch_v2_1_2017.prefs.show_headers
  end
  if show.structs ~= omi_nasdaq_psxequities_bbo_itch_v2_1_2017.prefs.show_structs then
    show.structs = omi_nasdaq_psxequities_bbo_itch_v2_1_2017.prefs.show_structs
  end
  if show.indexes ~= omi_nasdaq_psxequities_bbo_itch_v2_1_2017.prefs.show_indexes then
    show.indexes = omi_nasdaq_psxequities_bbo_itch_v2_1_2017.prefs.show_indexes
  end
  if show.sequences ~= omi_nasdaq_psxequities_bbo_itch_v2_1_2017.prefs.show_sequences then
    show.sequences = omi_nasdaq_psxequities_bbo_itch_v2_1_2017.prefs.show_sequences
  end
  if nasdaq_psxequities_bbo_itch_v2_1_2017.timestamp_format ~= omi_nasdaq_psxequities_bbo_itch_v2_1_2017.prefs.timestamp_format then
    nasdaq_psxequities_bbo_itch_v2_1_2017.timestamp_format = omi_nasdaq_psxequities_bbo_itch_v2_1_2017.prefs.timestamp_format
  end
  if nasdaq_psxequities_bbo_itch_v2_1_2017.utc_offset_hours ~= omi_nasdaq_psxequities_bbo_itch_v2_1_2017.prefs.utc_offset_hours then
    nasdaq_psxequities_bbo_itch_v2_1_2017.utc_offset_hours = omi_nasdaq_psxequities_bbo_itch_v2_1_2017.prefs.utc_offset_hours
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
-- Nasdaq PsxEquities Bbo Itch 2.1.2017 Fields
-----------------------------------------------------------------------

-- Authenticity
nasdaq_psxequities_bbo_itch_v2_1_2017.authenticity = {}

-- Size: Authenticity
nasdaq_psxequities_bbo_itch_v2_1_2017.authenticity.size = 1

-- Display: Authenticity
nasdaq_psxequities_bbo_itch_v2_1_2017.authenticity.display = function(value)
  if value == "P" then
    return "Authenticity: Live Production (P)"
  end
  if value == "T" then
    return "Authenticity: Test (T)"
  end

  return "Authenticity: Unknown("..value..")"
end

-- Dissect: Authenticity
nasdaq_psxequities_bbo_itch_v2_1_2017.authenticity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1_2017.authenticity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_bbo_itch_v2_1_2017.authenticity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.authenticity, range, value, display)

  return offset + length, value
end

-- Breached Level
nasdaq_psxequities_bbo_itch_v2_1_2017.breached_level = {}

-- Size: Breached Level
nasdaq_psxequities_bbo_itch_v2_1_2017.breached_level.size = 1

-- Display: Breached Level
nasdaq_psxequities_bbo_itch_v2_1_2017.breached_level.display = function(value)
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
nasdaq_psxequities_bbo_itch_v2_1_2017.breached_level.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1_2017.breached_level.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_bbo_itch_v2_1_2017.breached_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.breached_level, range, value, display)

  return offset + length, value
end

-- Current Trading State
nasdaq_psxequities_bbo_itch_v2_1_2017.current_trading_state = {}

-- Size: Current Trading State
nasdaq_psxequities_bbo_itch_v2_1_2017.current_trading_state.size = 1

-- Display: Current Trading State
nasdaq_psxequities_bbo_itch_v2_1_2017.current_trading_state.display = function(value)
  if value == "H" then
    return "Current Trading State: Halted Or Paused On Nasdaq And All Utp Participants (H)"
  end
  if value == "Q" then
    return "Current Trading State: Quotation Only Period For Cross Sro Halt Or Pause (Q)"
  end
  if value == "P" then
    return "Current Trading State: Paused Across All Us Equity Markets (P)"
  end
  if value == "T" then
    return "Current Trading State: Trading On Psx (T)"
  end

  return "Current Trading State: Unknown("..value..")"
end

-- Dissect: Current Trading State
nasdaq_psxequities_bbo_itch_v2_1_2017.current_trading_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1_2017.current_trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_bbo_itch_v2_1_2017.current_trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.current_trading_state, range, value, display)

  return offset + length, value
end

-- Etp Flag
nasdaq_psxequities_bbo_itch_v2_1_2017.etp_flag = {}

-- Size: Etp Flag
nasdaq_psxequities_bbo_itch_v2_1_2017.etp_flag.size = 1

-- Display: Etp Flag
nasdaq_psxequities_bbo_itch_v2_1_2017.etp_flag.display = function(value)
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
nasdaq_psxequities_bbo_itch_v2_1_2017.etp_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1_2017.etp_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_bbo_itch_v2_1_2017.etp_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.etp_flag, range, value, display)

  return offset + length, value
end

-- Etp Leverage Factor
nasdaq_psxequities_bbo_itch_v2_1_2017.etp_leverage_factor = {}

-- Size: Etp Leverage Factor
nasdaq_psxequities_bbo_itch_v2_1_2017.etp_leverage_factor.size = 4

-- Display: Etp Leverage Factor
nasdaq_psxequities_bbo_itch_v2_1_2017.etp_leverage_factor.display = function(value)
  return "Etp Leverage Factor: "..value
end

-- Dissect: Etp Leverage Factor
nasdaq_psxequities_bbo_itch_v2_1_2017.etp_leverage_factor.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1_2017.etp_leverage_factor.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_bbo_itch_v2_1_2017.etp_leverage_factor.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.etp_leverage_factor, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_psxequities_bbo_itch_v2_1_2017.event_code = {}

-- Size: Event Code
nasdaq_psxequities_bbo_itch_v2_1_2017.event_code.size = 1

-- Display: Event Code
nasdaq_psxequities_bbo_itch_v2_1_2017.event_code.display = function(value)
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
nasdaq_psxequities_bbo_itch_v2_1_2017.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1_2017.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_bbo_itch_v2_1_2017.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.event_code, range, value, display)

  return offset + length, value
end

-- Financial Status Indicator
nasdaq_psxequities_bbo_itch_v2_1_2017.financial_status_indicator = {}

-- Size: Financial Status Indicator
nasdaq_psxequities_bbo_itch_v2_1_2017.financial_status_indicator.size = 1

-- Display: Financial Status Indicator
nasdaq_psxequities_bbo_itch_v2_1_2017.financial_status_indicator.display = function(value)
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
    return "Financial Status Indicator: Creations And Redemptions Suspended (C)"
  end
  if value == "N" then
    return "Financial Status Indicator: Normal (N)"
  end
  if value == " " then
    return "Financial Status Indicator: In Compliance (<whitespace>)"
  end

  return "Financial Status Indicator: Unknown("..value..")"
end

-- Dissect: Financial Status Indicator
nasdaq_psxequities_bbo_itch_v2_1_2017.financial_status_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1_2017.financial_status_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_bbo_itch_v2_1_2017.financial_status_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.financial_status_indicator, range, value, display)

  return offset + length, value
end

-- Inverse Indicator
nasdaq_psxequities_bbo_itch_v2_1_2017.inverse_indicator = {}

-- Size: Inverse Indicator
nasdaq_psxequities_bbo_itch_v2_1_2017.inverse_indicator.size = 1

-- Display: Inverse Indicator
nasdaq_psxequities_bbo_itch_v2_1_2017.inverse_indicator.display = function(value)
  if value == "Y" then
    return "Inverse Indicator: Inverse Etp (Y)"
  end
  if value == "N" then
    return "Inverse Indicator: Not Inverse Etp (N)"
  end

  return "Inverse Indicator: Unknown("..value..")"
end

-- Dissect: Inverse Indicator
nasdaq_psxequities_bbo_itch_v2_1_2017.inverse_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1_2017.inverse_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_bbo_itch_v2_1_2017.inverse_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.inverse_indicator, range, value, display)

  return offset + length, value
end

-- Ipo Flag
nasdaq_psxequities_bbo_itch_v2_1_2017.ipo_flag = {}

-- Size: Ipo Flag
nasdaq_psxequities_bbo_itch_v2_1_2017.ipo_flag.size = 1

-- Display: Ipo Flag
nasdaq_psxequities_bbo_itch_v2_1_2017.ipo_flag.display = function(value)
  if value == "Y" then
    return "Ipo Flag: New Ipo Security (Y)"
  end
  if value == "N" then
    return "Ipo Flag: Not New Ipo Security (N)"
  end
  if value == " " then
    return "Ipo Flag: Not Available (<whitespace>)"
  end

  return "Ipo Flag: Unknown("..value..")"
end

-- Dissect: Ipo Flag
nasdaq_psxequities_bbo_itch_v2_1_2017.ipo_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1_2017.ipo_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_bbo_itch_v2_1_2017.ipo_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.ipo_flag, range, value, display)

  return offset + length, value
end

-- Issue Classification
nasdaq_psxequities_bbo_itch_v2_1_2017.issue_classification = {}

-- Size: Issue Classification
nasdaq_psxequities_bbo_itch_v2_1_2017.issue_classification.size = 1

-- Display: Issue Classification
nasdaq_psxequities_bbo_itch_v2_1_2017.issue_classification.display = function(value)
  if value == "A" then
    return "Issue Classification: American Depositary Share (A)"
  end
  if value == "B" then
    return "Issue Classification: Bond (B)"
  end
  if value == "C" then
    return "Issue Classification: Common Stock (C)"
  end
  if value == "F" then
    return "Issue Classification: Depository Receipt (F)"
  end
  if value == "I" then
    return "Issue Classification: Sec 144 A (I)"
  end
  if value == "L" then
    return "Issue Classification: Limited Partnership (L)"
  end
  if value == "N" then
    return "Issue Classification: Notes (N)"
  end
  if value == "O" then
    return "Issue Classification: Ordinary Share (O)"
  end
  if value == "P" then
    return "Issue Classification: Preferred Stock (P)"
  end
  if value == "Q" then
    return "Issue Classification: Other Securities (Q)"
  end
  if value == "R" then
    return "Issue Classification: Right (R)"
  end
  if value == "S" then
    return "Issue Classification: Shares Of Beneficial Interest (S)"
  end
  if value == "T" then
    return "Issue Classification: Convertible Debenture (T)"
  end
  if value == "U" then
    return "Issue Classification: Unit (U)"
  end
  if value == "V" then
    return "Issue Classification: Units Benif Int (V)"
  end
  if value == "W" then
    return "Issue Classification: Warrant (W)"
  end

  return "Issue Classification: Unknown("..value..")"
end

-- Dissect: Issue Classification
nasdaq_psxequities_bbo_itch_v2_1_2017.issue_classification.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1_2017.issue_classification.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_bbo_itch_v2_1_2017.issue_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.issue_classification, range, value, display)

  return offset + length, value
end

-- Issue Sub Type
nasdaq_psxequities_bbo_itch_v2_1_2017.issue_sub_type = {}

-- Size: Issue Sub Type
nasdaq_psxequities_bbo_itch_v2_1_2017.issue_sub_type.size = 2

-- Display: Issue Sub Type
nasdaq_psxequities_bbo_itch_v2_1_2017.issue_sub_type.display = function(value)
  if value == "A" then
    return "Issue Sub Type: Preferred Trust Securities (A)"
  end
  if value == "AI" then
    return "Issue Sub Type: Alpha Index Et Ns (AI)"
  end
  if value == "B" then
    return "Issue Sub Type: Index Based Derivative (B)"
  end
  if value == "C" then
    return "Issue Sub Type: Common Shares (C)"
  end
  if value == "CB" then
    return "Issue Sub Type: Commodity Based Trust Shares (CB)"
  end
  if value == "CF" then
    return "Issue Sub Type: Commodity Futures Trust Shares (CF)"
  end
  if value == "CL" then
    return "Issue Sub Type: Commodity Linked Securities (CL)"
  end
  if value == "CM" then
    return "Issue Sub Type: Commodity Index Trust Shares (CM)"
  end
  if value == "CO" then
    return "Issue Sub Type: Collateralized Mortgage Obligation (CO)"
  end
  if value == "CT" then
    return "Issue Sub Type: Currency Trust Shares (CT)"
  end
  if value == "CU" then
    return "Issue Sub Type: Commodity Currency Linked Securities (CU)"
  end
  if value == "CW" then
    return "Issue Sub Type: Currency Warrants (CW)"
  end
  if value == "D" then
    return "Issue Sub Type: Global Depositary Shares (D)"
  end
  if value == "E" then
    return "Issue Sub Type: Etf Portfolio Depositary Receipt (E)"
  end
  if value == "EG" then
    return "Issue Sub Type: Equity Gold Shares (EG)"
  end
  if value == "EI" then
    return "Issue Sub Type: Etn Equity Index Linked Securities (EI)"
  end
  if value == "EM" then
    return "Issue Sub Type: Exchange Traded Managed Funds (EM)"
  end
  if value == "EN" then
    return "Issue Sub Type: Exchange Traded Notes (EN)"
  end
  if value == "EU" then
    return "Issue Sub Type: Equity Units (EU)"
  end
  if value == "F" then
    return "Issue Sub Type: Holdrs (F)"
  end
  if value == "FI" then
    return "Issue Sub Type: Etn Fixed Income Linked Securities (FI)"
  end
  if value == "FL" then
    return "Issue Sub Type: Etn Futures Linked Securities (FL)"
  end
  if value == "G" then
    return "Issue Sub Type: Global Shares (G)"
  end
  if value == "I" then
    return "Issue Sub Type: Etf Index Fund Shares (I)"
  end
  if value == "IR" then
    return "Issue Sub Type: Interest Rate (IR)"
  end
  if value == "IW" then
    return "Issue Sub Type: Index Warrant (IW)"
  end
  if value == "IX" then
    return "Issue Sub Type: Index Linked Exchangeable Notes (IX)"
  end
  if value == "J" then
    return "Issue Sub Type: Corporate Backed Trust Security (J)"
  end
  if value == "L" then
    return "Issue Sub Type: Contingent Litigation Right (L)"
  end
  if value == "LL" then
    return "Issue Sub Type: Limited Liability Company (LL)"
  end
  if value == "M" then
    return "Issue Sub Type: Equity Based Derivative (M)"
  end
  if value == "MF" then
    return "Issue Sub Type: Managed Fund Shares (MF)"
  end
  if value == "ML" then
    return "Issue Sub Type: Etn Multi Factor Index Linked Securities (ML)"
  end
  if value == "MT" then
    return "Issue Sub Type: Managed Trust Securities (MT)"
  end
  if value == "N" then
    return "Issue Sub Type: Ny Registry Shares (N)"
  end
  if value == "O" then
    return "Issue Sub Type: Open Ended Mutual Fund (O)"
  end
  if value == "P" then
    return "Issue Sub Type: Privately Held Security (P)"
  end
  if value == "PP" then
    return "Issue Sub Type: Poison Pill (PP)"
  end
  if value == "PU" then
    return "Issue Sub Type: Partnership Units (PU)"
  end
  if value == "Q" then
    return "Issue Sub Type: Closed End Funds (Q)"
  end
  if value == "R" then
    return "Issue Sub Type: Reg S (R)"
  end
  if value == "RC" then
    return "Issue Sub Type: Commodity Redeemable Commodity Linked Securities (RC)"
  end
  if value == "RF" then
    return "Issue Sub Type: Etn Redeemable Futures Linked Securities (RF)"
  end
  if value == "RT" then
    return "Issue Sub Type: Reit (RT)"
  end
  if value == "RU" then
    return "Issue Sub Type: Commodity Redeemable Currency Linked Securities (RU)"
  end
  if value == "S" then
    return "Issue Sub Type: Seed (S)"
  end
  if value == "SC" then
    return "Issue Sub Type: Spot Rate Closing (SC)"
  end
  if value == "SI" then
    return "Issue Sub Type: Spot Rate Intraday (SI)"
  end
  if value == "T" then
    return "Issue Sub Type: Tracking Stock (T)"
  end
  if value == "TC" then
    return "Issue Sub Type: Trust Certificates (TC)"
  end
  if value == "TU" then
    return "Issue Sub Type: Trust Units (TU)"
  end
  if value == "U" then
    return "Issue Sub Type: Portal (U)"
  end
  if value == "V" then
    return "Issue Sub Type: Contingent Value Right (V)"
  end
  if value == "W" then
    return "Issue Sub Type: Trust Issued Receipts (W)"
  end
  if value == "WC" then
    return "Issue Sub Type: World Currency Option (WC)"
  end
  if value == "X" then
    return "Issue Sub Type: Trust (X)"
  end
  if value == "Y" then
    return "Issue Sub Type: Other (Y)"
  end
  if value == "Z" then
    return "Issue Sub Type: Not Applicable (Z)"
  end

  return "Issue Sub Type: Unknown("..value..")"
end

-- Dissect: Issue Sub Type
nasdaq_psxequities_bbo_itch_v2_1_2017.issue_sub_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1_2017.issue_sub_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_bbo_itch_v2_1_2017.issue_sub_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.issue_sub_type, range, value, display)

  return offset + length, value
end

-- Level 1
nasdaq_psxequities_bbo_itch_v2_1_2017.level_1 = {}

-- Size: Level 1
nasdaq_psxequities_bbo_itch_v2_1_2017.level_1.size = 8

-- Display: Level 1
nasdaq_psxequities_bbo_itch_v2_1_2017.level_1.display = function(value)
  return "Level 1: "..value
end

-- Translate: Level 1
nasdaq_psxequities_bbo_itch_v2_1_2017.level_1.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Level 1
nasdaq_psxequities_bbo_itch_v2_1_2017.level_1.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1_2017.level_1.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_psxequities_bbo_itch_v2_1_2017.level_1.translate(raw)
  local display = nasdaq_psxequities_bbo_itch_v2_1_2017.level_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.level_1, range, value, display)

  return offset + length, value
end

-- Level 2
nasdaq_psxequities_bbo_itch_v2_1_2017.level_2 = {}

-- Size: Level 2
nasdaq_psxequities_bbo_itch_v2_1_2017.level_2.size = 8

-- Display: Level 2
nasdaq_psxequities_bbo_itch_v2_1_2017.level_2.display = function(value)
  return "Level 2: "..value
end

-- Translate: Level 2
nasdaq_psxequities_bbo_itch_v2_1_2017.level_2.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Level 2
nasdaq_psxequities_bbo_itch_v2_1_2017.level_2.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1_2017.level_2.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_psxequities_bbo_itch_v2_1_2017.level_2.translate(raw)
  local display = nasdaq_psxequities_bbo_itch_v2_1_2017.level_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.level_2, range, value, display)

  return offset + length, value
end

-- Level 3
nasdaq_psxequities_bbo_itch_v2_1_2017.level_3 = {}

-- Size: Level 3
nasdaq_psxequities_bbo_itch_v2_1_2017.level_3.size = 8

-- Display: Level 3
nasdaq_psxequities_bbo_itch_v2_1_2017.level_3.display = function(value)
  return "Level 3: "..value
end

-- Translate: Level 3
nasdaq_psxequities_bbo_itch_v2_1_2017.level_3.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Level 3
nasdaq_psxequities_bbo_itch_v2_1_2017.level_3.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1_2017.level_3.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_psxequities_bbo_itch_v2_1_2017.level_3.translate(raw)
  local display = nasdaq_psxequities_bbo_itch_v2_1_2017.level_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.level_3, range, value, display)

  return offset + length, value
end

-- Luld Reference Price Tier
nasdaq_psxequities_bbo_itch_v2_1_2017.luld_reference_price_tier = {}

-- Size: Luld Reference Price Tier
nasdaq_psxequities_bbo_itch_v2_1_2017.luld_reference_price_tier.size = 1

-- Display: Luld Reference Price Tier
nasdaq_psxequities_bbo_itch_v2_1_2017.luld_reference_price_tier.display = function(value)
  if value == "1" then
    return "Luld Reference Price Tier: Tier 1 (1)"
  end
  if value == "2" then
    return "Luld Reference Price Tier: Tier 2 (2)"
  end
  if value == " " then
    return "Luld Reference Price Tier: Not Available (<whitespace>)"
  end

  return "Luld Reference Price Tier: Unknown("..value..")"
end

-- Dissect: Luld Reference Price Tier
nasdaq_psxequities_bbo_itch_v2_1_2017.luld_reference_price_tier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1_2017.luld_reference_price_tier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_bbo_itch_v2_1_2017.luld_reference_price_tier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.luld_reference_price_tier, range, value, display)

  return offset + length, value
end

-- Market Category
nasdaq_psxequities_bbo_itch_v2_1_2017.market_category = {}

-- Size: Market Category
nasdaq_psxequities_bbo_itch_v2_1_2017.market_category.size = 1

-- Display: Market Category
nasdaq_psxequities_bbo_itch_v2_1_2017.market_category.display = function(value)
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
    return "Market Category: Nyse Amex (A)"
  end
  if value == "P" then
    return "Market Category: Nyse Arca (P)"
  end
  if value == "Z" then
    return "Market Category: Bats Bzx Exchange (Z)"
  end
  if value == "V" then
    return "Market Category: Investors Exchange (V)"
  end
  if value == " " then
    return "Market Category: Not Available (<whitespace>)"
  end

  return "Market Category: Unknown("..value..")"
end

-- Dissect: Market Category
nasdaq_psxequities_bbo_itch_v2_1_2017.market_category.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1_2017.market_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_bbo_itch_v2_1_2017.market_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.market_category, range, value, display)

  return offset + length, value
end

-- Message Count
nasdaq_psxequities_bbo_itch_v2_1_2017.message_count = {}

-- Size: Message Count
nasdaq_psxequities_bbo_itch_v2_1_2017.message_count.size = 2

-- Display: Message Count
nasdaq_psxequities_bbo_itch_v2_1_2017.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_psxequities_bbo_itch_v2_1_2017.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1_2017.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_bbo_itch_v2_1_2017.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
nasdaq_psxequities_bbo_itch_v2_1_2017.message_length = {}

-- Size: Message Length
nasdaq_psxequities_bbo_itch_v2_1_2017.message_length.size = 2

-- Display: Message Length
nasdaq_psxequities_bbo_itch_v2_1_2017.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_psxequities_bbo_itch_v2_1_2017.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1_2017.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_bbo_itch_v2_1_2017.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
nasdaq_psxequities_bbo_itch_v2_1_2017.message_type = {}

-- Size: Message Type
nasdaq_psxequities_bbo_itch_v2_1_2017.message_type.size = 1

-- Display: Message Type
nasdaq_psxequities_bbo_itch_v2_1_2017.message_type.display = function(value)
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
  if value == "V" then
    return "Message Type: Mwcb Decline Level Message (V)"
  end
  if value == "W" then
    return "Message Type: Mwcb Status Message (W)"
  end
  if value == "Q" then
    return "Message Type: Quotation Message (Q)"
  end
  if value == "A" then
    return "Message Type: Next Shares Quotation Message (A)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_psxequities_bbo_itch_v2_1_2017.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1_2017.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_bbo_itch_v2_1_2017.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.message_type, range, value, display)

  return offset + length, value
end

-- Nasdaq Best Bid Nav Premium Discount Amount
nasdaq_psxequities_bbo_itch_v2_1_2017.nasdaq_best_bid_nav_premium_discount_amount = {}

-- Size: Nasdaq Best Bid Nav Premium Discount Amount
nasdaq_psxequities_bbo_itch_v2_1_2017.nasdaq_best_bid_nav_premium_discount_amount.size = 4

-- Display: Nasdaq Best Bid Nav Premium Discount Amount
nasdaq_psxequities_bbo_itch_v2_1_2017.nasdaq_best_bid_nav_premium_discount_amount.display = function(value)
  return "Nasdaq Best Bid Nav Premium Discount Amount: "..value
end

-- Translate: Nasdaq Best Bid Nav Premium Discount Amount
nasdaq_psxequities_bbo_itch_v2_1_2017.nasdaq_best_bid_nav_premium_discount_amount.translate = function(raw)
  return raw/10000
end

-- Dissect: Nasdaq Best Bid Nav Premium Discount Amount
nasdaq_psxequities_bbo_itch_v2_1_2017.nasdaq_best_bid_nav_premium_discount_amount.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1_2017.nasdaq_best_bid_nav_premium_discount_amount.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nasdaq_psxequities_bbo_itch_v2_1_2017.nasdaq_best_bid_nav_premium_discount_amount.translate(raw)
  local display = nasdaq_psxequities_bbo_itch_v2_1_2017.nasdaq_best_bid_nav_premium_discount_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.nasdaq_best_bid_nav_premium_discount_amount, range, value, display)

  return offset + length, value
end

-- Nasdaq Best Bid Proxy Price
nasdaq_psxequities_bbo_itch_v2_1_2017.nasdaq_best_bid_proxy_price = {}

-- Size: Nasdaq Best Bid Proxy Price
nasdaq_psxequities_bbo_itch_v2_1_2017.nasdaq_best_bid_proxy_price.size = 4

-- Display: Nasdaq Best Bid Proxy Price
nasdaq_psxequities_bbo_itch_v2_1_2017.nasdaq_best_bid_proxy_price.display = function(value)
  return "Nasdaq Best Bid Proxy Price: "..value
end

-- Translate: Nasdaq Best Bid Proxy Price
nasdaq_psxequities_bbo_itch_v2_1_2017.nasdaq_best_bid_proxy_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Nasdaq Best Bid Proxy Price
nasdaq_psxequities_bbo_itch_v2_1_2017.nasdaq_best_bid_proxy_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1_2017.nasdaq_best_bid_proxy_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_psxequities_bbo_itch_v2_1_2017.nasdaq_best_bid_proxy_price.translate(raw)
  local display = nasdaq_psxequities_bbo_itch_v2_1_2017.nasdaq_best_bid_proxy_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.nasdaq_best_bid_proxy_price, range, value, display)

  return offset + length, value
end

-- Nasdaq Best Bid Size
nasdaq_psxequities_bbo_itch_v2_1_2017.nasdaq_best_bid_size = {}

-- Size: Nasdaq Best Bid Size
nasdaq_psxequities_bbo_itch_v2_1_2017.nasdaq_best_bid_size.size = 4

-- Display: Nasdaq Best Bid Size
nasdaq_psxequities_bbo_itch_v2_1_2017.nasdaq_best_bid_size.display = function(value)
  return "Nasdaq Best Bid Size: "..value
end

-- Dissect: Nasdaq Best Bid Size
nasdaq_psxequities_bbo_itch_v2_1_2017.nasdaq_best_bid_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1_2017.nasdaq_best_bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_bbo_itch_v2_1_2017.nasdaq_best_bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.nasdaq_best_bid_size, range, value, display)

  return offset + length, value
end

-- Nasdaq Best Offer Nav Premium Discount Amount
nasdaq_psxequities_bbo_itch_v2_1_2017.nasdaq_best_offer_nav_premium_discount_amount = {}

-- Size: Nasdaq Best Offer Nav Premium Discount Amount
nasdaq_psxequities_bbo_itch_v2_1_2017.nasdaq_best_offer_nav_premium_discount_amount.size = 4

-- Display: Nasdaq Best Offer Nav Premium Discount Amount
nasdaq_psxequities_bbo_itch_v2_1_2017.nasdaq_best_offer_nav_premium_discount_amount.display = function(value)
  return "Nasdaq Best Offer Nav Premium Discount Amount: "..value
end

-- Translate: Nasdaq Best Offer Nav Premium Discount Amount
nasdaq_psxequities_bbo_itch_v2_1_2017.nasdaq_best_offer_nav_premium_discount_amount.translate = function(raw)
  return raw/10000
end

-- Dissect: Nasdaq Best Offer Nav Premium Discount Amount
nasdaq_psxequities_bbo_itch_v2_1_2017.nasdaq_best_offer_nav_premium_discount_amount.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1_2017.nasdaq_best_offer_nav_premium_discount_amount.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nasdaq_psxequities_bbo_itch_v2_1_2017.nasdaq_best_offer_nav_premium_discount_amount.translate(raw)
  local display = nasdaq_psxequities_bbo_itch_v2_1_2017.nasdaq_best_offer_nav_premium_discount_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.nasdaq_best_offer_nav_premium_discount_amount, range, value, display)

  return offset + length, value
end

-- Nasdaq Best Offer Proxy Price
nasdaq_psxequities_bbo_itch_v2_1_2017.nasdaq_best_offer_proxy_price = {}

-- Size: Nasdaq Best Offer Proxy Price
nasdaq_psxequities_bbo_itch_v2_1_2017.nasdaq_best_offer_proxy_price.size = 4

-- Display: Nasdaq Best Offer Proxy Price
nasdaq_psxequities_bbo_itch_v2_1_2017.nasdaq_best_offer_proxy_price.display = function(value)
  return "Nasdaq Best Offer Proxy Price: "..value
end

-- Translate: Nasdaq Best Offer Proxy Price
nasdaq_psxequities_bbo_itch_v2_1_2017.nasdaq_best_offer_proxy_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Nasdaq Best Offer Proxy Price
nasdaq_psxequities_bbo_itch_v2_1_2017.nasdaq_best_offer_proxy_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1_2017.nasdaq_best_offer_proxy_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_psxequities_bbo_itch_v2_1_2017.nasdaq_best_offer_proxy_price.translate(raw)
  local display = nasdaq_psxequities_bbo_itch_v2_1_2017.nasdaq_best_offer_proxy_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.nasdaq_best_offer_proxy_price, range, value, display)

  return offset + length, value
end

-- Nasdaq Best Offer Size
nasdaq_psxequities_bbo_itch_v2_1_2017.nasdaq_best_offer_size = {}

-- Size: Nasdaq Best Offer Size
nasdaq_psxequities_bbo_itch_v2_1_2017.nasdaq_best_offer_size.size = 4

-- Display: Nasdaq Best Offer Size
nasdaq_psxequities_bbo_itch_v2_1_2017.nasdaq_best_offer_size.display = function(value)
  return "Nasdaq Best Offer Size: "..value
end

-- Dissect: Nasdaq Best Offer Size
nasdaq_psxequities_bbo_itch_v2_1_2017.nasdaq_best_offer_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1_2017.nasdaq_best_offer_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_bbo_itch_v2_1_2017.nasdaq_best_offer_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.nasdaq_best_offer_size, range, value, display)

  return offset + length, value
end

-- Next Shares Symbol
nasdaq_psxequities_bbo_itch_v2_1_2017.next_shares_symbol = {}

-- Size: Next Shares Symbol
nasdaq_psxequities_bbo_itch_v2_1_2017.next_shares_symbol.size = 8

-- Display: Next Shares Symbol
nasdaq_psxequities_bbo_itch_v2_1_2017.next_shares_symbol.display = function(value)
  return "Next Shares Symbol: "..value
end

-- Dissect: Next Shares Symbol
nasdaq_psxequities_bbo_itch_v2_1_2017.next_shares_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1_2017.next_shares_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_bbo_itch_v2_1_2017.next_shares_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.next_shares_symbol, range, value, display)

  return offset + length, value
end

-- Psx Best Bid Price
nasdaq_psxequities_bbo_itch_v2_1_2017.psx_best_bid_price = {}

-- Size: Psx Best Bid Price
nasdaq_psxequities_bbo_itch_v2_1_2017.psx_best_bid_price.size = 4

-- Display: Psx Best Bid Price
nasdaq_psxequities_bbo_itch_v2_1_2017.psx_best_bid_price.display = function(value)
  return "Psx Best Bid Price: "..value
end

-- Translate: Psx Best Bid Price
nasdaq_psxequities_bbo_itch_v2_1_2017.psx_best_bid_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Psx Best Bid Price
nasdaq_psxequities_bbo_itch_v2_1_2017.psx_best_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1_2017.psx_best_bid_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_psxequities_bbo_itch_v2_1_2017.psx_best_bid_price.translate(raw)
  local display = nasdaq_psxequities_bbo_itch_v2_1_2017.psx_best_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.psx_best_bid_price, range, value, display)

  return offset + length, value
end

-- Psx Best Bid Size
nasdaq_psxequities_bbo_itch_v2_1_2017.psx_best_bid_size = {}

-- Size: Psx Best Bid Size
nasdaq_psxequities_bbo_itch_v2_1_2017.psx_best_bid_size.size = 4

-- Display: Psx Best Bid Size
nasdaq_psxequities_bbo_itch_v2_1_2017.psx_best_bid_size.display = function(value)
  return "Psx Best Bid Size: "..value
end

-- Dissect: Psx Best Bid Size
nasdaq_psxequities_bbo_itch_v2_1_2017.psx_best_bid_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1_2017.psx_best_bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_bbo_itch_v2_1_2017.psx_best_bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.psx_best_bid_size, range, value, display)

  return offset + length, value
end

-- Psx Best Offer Price
nasdaq_psxequities_bbo_itch_v2_1_2017.psx_best_offer_price = {}

-- Size: Psx Best Offer Price
nasdaq_psxequities_bbo_itch_v2_1_2017.psx_best_offer_price.size = 4

-- Display: Psx Best Offer Price
nasdaq_psxequities_bbo_itch_v2_1_2017.psx_best_offer_price.display = function(value)
  return "Psx Best Offer Price: "..value
end

-- Translate: Psx Best Offer Price
nasdaq_psxequities_bbo_itch_v2_1_2017.psx_best_offer_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Psx Best Offer Price
nasdaq_psxequities_bbo_itch_v2_1_2017.psx_best_offer_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1_2017.psx_best_offer_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_psxequities_bbo_itch_v2_1_2017.psx_best_offer_price.translate(raw)
  local display = nasdaq_psxequities_bbo_itch_v2_1_2017.psx_best_offer_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.psx_best_offer_price, range, value, display)

  return offset + length, value
end

-- Psx Best Offer Size
nasdaq_psxequities_bbo_itch_v2_1_2017.psx_best_offer_size = {}

-- Size: Psx Best Offer Size
nasdaq_psxequities_bbo_itch_v2_1_2017.psx_best_offer_size.size = 4

-- Display: Psx Best Offer Size
nasdaq_psxequities_bbo_itch_v2_1_2017.psx_best_offer_size.display = function(value)
  return "Psx Best Offer Size: "..value
end

-- Dissect: Psx Best Offer Size
nasdaq_psxequities_bbo_itch_v2_1_2017.psx_best_offer_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1_2017.psx_best_offer_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_bbo_itch_v2_1_2017.psx_best_offer_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.psx_best_offer_size, range, value, display)

  return offset + length, value
end

-- Reason
nasdaq_psxequities_bbo_itch_v2_1_2017.reason = {}

-- Size: Reason
nasdaq_psxequities_bbo_itch_v2_1_2017.reason.size = 4

-- Display: Reason
nasdaq_psxequities_bbo_itch_v2_1_2017.reason.display = function(value)
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
nasdaq_psxequities_bbo_itch_v2_1_2017.reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1_2017.reason.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_bbo_itch_v2_1_2017.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.reason, range, value, display)

  return offset + length, value
end

-- Reg Sho Action
nasdaq_psxequities_bbo_itch_v2_1_2017.reg_sho_action = {}

-- Size: Reg Sho Action
nasdaq_psxequities_bbo_itch_v2_1_2017.reg_sho_action.size = 1

-- Display: Reg Sho Action
nasdaq_psxequities_bbo_itch_v2_1_2017.reg_sho_action.display = function(value)
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
nasdaq_psxequities_bbo_itch_v2_1_2017.reg_sho_action.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1_2017.reg_sho_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_bbo_itch_v2_1_2017.reg_sho_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Round Lot Size
nasdaq_psxequities_bbo_itch_v2_1_2017.round_lot_size = {}

-- Size: Round Lot Size
nasdaq_psxequities_bbo_itch_v2_1_2017.round_lot_size.size = 4

-- Display: Round Lot Size
nasdaq_psxequities_bbo_itch_v2_1_2017.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
nasdaq_psxequities_bbo_itch_v2_1_2017.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1_2017.round_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_bbo_itch_v2_1_2017.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Round Lots Only
nasdaq_psxequities_bbo_itch_v2_1_2017.round_lots_only = {}

-- Size: Round Lots Only
nasdaq_psxequities_bbo_itch_v2_1_2017.round_lots_only.size = 1

-- Display: Round Lots Only
nasdaq_psxequities_bbo_itch_v2_1_2017.round_lots_only.display = function(value)
  if value == "Y" then
    return "Round Lots Only: Round Lots Only (Y)"
  end
  if value == "N" then
    return "Round Lots Only: Odd And Mixed Lots Allowed (N)"
  end

  return "Round Lots Only: Unknown("..value..")"
end

-- Dissect: Round Lots Only
nasdaq_psxequities_bbo_itch_v2_1_2017.round_lots_only.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1_2017.round_lots_only.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_bbo_itch_v2_1_2017.round_lots_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.round_lots_only, range, value, display)

  return offset + length, value
end

-- Security Class
nasdaq_psxequities_bbo_itch_v2_1_2017.security_class = {}

-- Size: Security Class
nasdaq_psxequities_bbo_itch_v2_1_2017.security_class.size = 1

-- Display: Security Class
nasdaq_psxequities_bbo_itch_v2_1_2017.security_class.display = function(value)
  if value == "Q" then
    return "Security Class: Nasdaq Listed Issue (Q)"
  end
  if value == "N" then
    return "Security Class: Nyse (N)"
  end
  if value == "A" then
    return "Security Class: Nyse Mkt (A)"
  end
  if value == "P" then
    return "Security Class: Nyse Arca (P)"
  end
  if value == "Z" then
    return "Security Class: Bats (Z)"
  end
  if value == "V" then
    return "Security Class: Iexg (V)"
  end

  return "Security Class: Unknown("..value..")"
end

-- Dissect: Security Class
nasdaq_psxequities_bbo_itch_v2_1_2017.security_class.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1_2017.security_class.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_bbo_itch_v2_1_2017.security_class.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.security_class, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_psxequities_bbo_itch_v2_1_2017.sequence_number = {}

-- Size: Sequence Number
nasdaq_psxequities_bbo_itch_v2_1_2017.sequence_number.size = 8

-- Display: Sequence Number
nasdaq_psxequities_bbo_itch_v2_1_2017.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_psxequities_bbo_itch_v2_1_2017.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1_2017.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_psxequities_bbo_itch_v2_1_2017.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_psxequities_bbo_itch_v2_1_2017.session = {}

-- Size: Session
nasdaq_psxequities_bbo_itch_v2_1_2017.session.size = 10

-- Display: Session
nasdaq_psxequities_bbo_itch_v2_1_2017.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
nasdaq_psxequities_bbo_itch_v2_1_2017.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1_2017.session.size
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

  local display = nasdaq_psxequities_bbo_itch_v2_1_2017.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.session, range, value, display)

  return offset + length, value
end

-- Short Sale Threshold Indicator
nasdaq_psxequities_bbo_itch_v2_1_2017.short_sale_threshold_indicator = {}

-- Size: Short Sale Threshold Indicator
nasdaq_psxequities_bbo_itch_v2_1_2017.short_sale_threshold_indicator.size = 1

-- Display: Short Sale Threshold Indicator
nasdaq_psxequities_bbo_itch_v2_1_2017.short_sale_threshold_indicator.display = function(value)
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
nasdaq_psxequities_bbo_itch_v2_1_2017.short_sale_threshold_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1_2017.short_sale_threshold_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_bbo_itch_v2_1_2017.short_sale_threshold_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.short_sale_threshold_indicator, range, value, display)

  return offset + length, value
end

-- Stock
nasdaq_psxequities_bbo_itch_v2_1_2017.stock = {}

-- Size: Stock
nasdaq_psxequities_bbo_itch_v2_1_2017.stock.size = 8

-- Display: Stock
nasdaq_psxequities_bbo_itch_v2_1_2017.stock.display = function(value)
  return "Stock: "..value
end

-- Dissect: Stock
nasdaq_psxequities_bbo_itch_v2_1_2017.stock.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1_2017.stock.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_bbo_itch_v2_1_2017.stock.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.stock, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_psxequities_bbo_itch_v2_1_2017.timestamp = {}

-- Size: Timestamp
nasdaq_psxequities_bbo_itch_v2_1_2017.timestamp.size = 6

-- Display: Timestamp
nasdaq_psxequities_bbo_itch_v2_1_2017.timestamp.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if nasdaq_psxequities_bbo_itch_v2_1_2017.timestamp_format == 0 then
    return "Timestamp: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (calculate from capture date + UTC offset)
  if nasdaq_psxequities_bbo_itch_v2_1_2017.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = nasdaq_psxequities_bbo_itch_v2_1_2017.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", nanoseconds)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
nasdaq_psxequities_bbo_itch_v2_1_2017.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1_2017.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_psxequities_bbo_itch_v2_1_2017.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Tracking Number
nasdaq_psxequities_bbo_itch_v2_1_2017.tracking_number = {}

-- Size: Tracking Number
nasdaq_psxequities_bbo_itch_v2_1_2017.tracking_number.size = 2

-- Display: Tracking Number
nasdaq_psxequities_bbo_itch_v2_1_2017.tracking_number.display = function(value)
  return "Tracking Number: "..value
end

-- Dissect: Tracking Number
nasdaq_psxequities_bbo_itch_v2_1_2017.tracking_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_bbo_itch_v2_1_2017.tracking_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_bbo_itch_v2_1_2017.tracking_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.tracking_number, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq PsxEquities Bbo Itch 2.1.2017
-----------------------------------------------------------------------

-- Next Shares Quotation Message
nasdaq_psxequities_bbo_itch_v2_1_2017.next_shares_quotation_message = {}

-- Size: Next Shares Quotation Message
nasdaq_psxequities_bbo_itch_v2_1_2017.next_shares_quotation_message.size =
  nasdaq_psxequities_bbo_itch_v2_1_2017.tracking_number.size + 
  nasdaq_psxequities_bbo_itch_v2_1_2017.timestamp.size + 
  nasdaq_psxequities_bbo_itch_v2_1_2017.next_shares_symbol.size + 
  nasdaq_psxequities_bbo_itch_v2_1_2017.security_class.size + 
  nasdaq_psxequities_bbo_itch_v2_1_2017.nasdaq_best_bid_proxy_price.size + 
  nasdaq_psxequities_bbo_itch_v2_1_2017.nasdaq_best_bid_size.size + 
  nasdaq_psxequities_bbo_itch_v2_1_2017.nasdaq_best_bid_nav_premium_discount_amount.size + 
  nasdaq_psxequities_bbo_itch_v2_1_2017.nasdaq_best_offer_proxy_price.size + 
  nasdaq_psxequities_bbo_itch_v2_1_2017.nasdaq_best_offer_size.size + 
  nasdaq_psxequities_bbo_itch_v2_1_2017.nasdaq_best_offer_nav_premium_discount_amount.size

-- Display: Next Shares Quotation Message
nasdaq_psxequities_bbo_itch_v2_1_2017.next_shares_quotation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Next Shares Quotation Message
nasdaq_psxequities_bbo_itch_v2_1_2017.next_shares_quotation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_psxequities_bbo_itch_v2_1_2017.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_psxequities_bbo_itch_v2_1_2017.timestamp.dissect(buffer, index, packet, parent)

  -- Next Shares Symbol: Alphanumeric
  index, next_shares_symbol = nasdaq_psxequities_bbo_itch_v2_1_2017.next_shares_symbol.dissect(buffer, index, packet, parent)

  -- Security Class: Alphanumeric
  index, security_class = nasdaq_psxequities_bbo_itch_v2_1_2017.security_class.dissect(buffer, index, packet, parent)

  -- Nasdaq Best Bid Proxy Price: Price (4)
  index, nasdaq_best_bid_proxy_price = nasdaq_psxequities_bbo_itch_v2_1_2017.nasdaq_best_bid_proxy_price.dissect(buffer, index, packet, parent)

  -- Nasdaq Best Bid Size: Integer
  index, nasdaq_best_bid_size = nasdaq_psxequities_bbo_itch_v2_1_2017.nasdaq_best_bid_size.dissect(buffer, index, packet, parent)

  -- Nasdaq Best Bid Nav Premium Discount Amount: Signed Price (4)
  index, nasdaq_best_bid_nav_premium_discount_amount = nasdaq_psxequities_bbo_itch_v2_1_2017.nasdaq_best_bid_nav_premium_discount_amount.dissect(buffer, index, packet, parent)

  -- Nasdaq Best Offer Proxy Price: Price (4)
  index, nasdaq_best_offer_proxy_price = nasdaq_psxequities_bbo_itch_v2_1_2017.nasdaq_best_offer_proxy_price.dissect(buffer, index, packet, parent)

  -- Nasdaq Best Offer Size: Integer
  index, nasdaq_best_offer_size = nasdaq_psxequities_bbo_itch_v2_1_2017.nasdaq_best_offer_size.dissect(buffer, index, packet, parent)

  -- Nasdaq Best Offer Nav Premium Discount Amount: Signed Price (4)
  index, nasdaq_best_offer_nav_premium_discount_amount = nasdaq_psxequities_bbo_itch_v2_1_2017.nasdaq_best_offer_nav_premium_discount_amount.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Next Shares Quotation Message
nasdaq_psxequities_bbo_itch_v2_1_2017.next_shares_quotation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.next_shares_quotation_message, buffer(offset, 0))
    local index = nasdaq_psxequities_bbo_itch_v2_1_2017.next_shares_quotation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_bbo_itch_v2_1_2017.next_shares_quotation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_bbo_itch_v2_1_2017.next_shares_quotation_message.fields(buffer, offset, packet, parent)
  end
end

-- Quotation Message
nasdaq_psxequities_bbo_itch_v2_1_2017.quotation_message = {}

-- Size: Quotation Message
nasdaq_psxequities_bbo_itch_v2_1_2017.quotation_message.size =
  nasdaq_psxequities_bbo_itch_v2_1_2017.tracking_number.size + 
  nasdaq_psxequities_bbo_itch_v2_1_2017.timestamp.size + 
  nasdaq_psxequities_bbo_itch_v2_1_2017.stock.size + 
  nasdaq_psxequities_bbo_itch_v2_1_2017.security_class.size + 
  nasdaq_psxequities_bbo_itch_v2_1_2017.psx_best_bid_price.size + 
  nasdaq_psxequities_bbo_itch_v2_1_2017.psx_best_bid_size.size + 
  nasdaq_psxequities_bbo_itch_v2_1_2017.psx_best_offer_price.size + 
  nasdaq_psxequities_bbo_itch_v2_1_2017.psx_best_offer_size.size

-- Display: Quotation Message
nasdaq_psxequities_bbo_itch_v2_1_2017.quotation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quotation Message
nasdaq_psxequities_bbo_itch_v2_1_2017.quotation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_psxequities_bbo_itch_v2_1_2017.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_psxequities_bbo_itch_v2_1_2017.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: Alphanumeric
  index, stock = nasdaq_psxequities_bbo_itch_v2_1_2017.stock.dissect(buffer, index, packet, parent)

  -- Security Class: Alphanumeric
  index, security_class = nasdaq_psxequities_bbo_itch_v2_1_2017.security_class.dissect(buffer, index, packet, parent)

  -- Psx Best Bid Price: Price (4)
  index, psx_best_bid_price = nasdaq_psxequities_bbo_itch_v2_1_2017.psx_best_bid_price.dissect(buffer, index, packet, parent)

  -- Psx Best Bid Size: Integer
  index, psx_best_bid_size = nasdaq_psxequities_bbo_itch_v2_1_2017.psx_best_bid_size.dissect(buffer, index, packet, parent)

  -- Psx Best Offer Price: Price (4)
  index, psx_best_offer_price = nasdaq_psxequities_bbo_itch_v2_1_2017.psx_best_offer_price.dissect(buffer, index, packet, parent)

  -- Psx Best Offer Size: Integer
  index, psx_best_offer_size = nasdaq_psxequities_bbo_itch_v2_1_2017.psx_best_offer_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quotation Message
nasdaq_psxequities_bbo_itch_v2_1_2017.quotation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.quotation_message, buffer(offset, 0))
    local index = nasdaq_psxequities_bbo_itch_v2_1_2017.quotation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_bbo_itch_v2_1_2017.quotation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_bbo_itch_v2_1_2017.quotation_message.fields(buffer, offset, packet, parent)
  end
end

-- Mwcb Status Message
nasdaq_psxequities_bbo_itch_v2_1_2017.mwcb_status_message = {}

-- Size: Mwcb Status Message
nasdaq_psxequities_bbo_itch_v2_1_2017.mwcb_status_message.size =
  nasdaq_psxequities_bbo_itch_v2_1_2017.tracking_number.size + 
  nasdaq_psxequities_bbo_itch_v2_1_2017.timestamp.size + 
  nasdaq_psxequities_bbo_itch_v2_1_2017.breached_level.size

-- Display: Mwcb Status Message
nasdaq_psxequities_bbo_itch_v2_1_2017.mwcb_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mwcb Status Message
nasdaq_psxequities_bbo_itch_v2_1_2017.mwcb_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_psxequities_bbo_itch_v2_1_2017.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_psxequities_bbo_itch_v2_1_2017.timestamp.dissect(buffer, index, packet, parent)

  -- Breached Level: Alphanumeric
  index, breached_level = nasdaq_psxequities_bbo_itch_v2_1_2017.breached_level.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mwcb Status Message
nasdaq_psxequities_bbo_itch_v2_1_2017.mwcb_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.mwcb_status_message, buffer(offset, 0))
    local index = nasdaq_psxequities_bbo_itch_v2_1_2017.mwcb_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_bbo_itch_v2_1_2017.mwcb_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_bbo_itch_v2_1_2017.mwcb_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Mwcb Decline Level Message
nasdaq_psxequities_bbo_itch_v2_1_2017.mwcb_decline_level_message = {}

-- Size: Mwcb Decline Level Message
nasdaq_psxequities_bbo_itch_v2_1_2017.mwcb_decline_level_message.size =
  nasdaq_psxequities_bbo_itch_v2_1_2017.tracking_number.size + 
  nasdaq_psxequities_bbo_itch_v2_1_2017.timestamp.size + 
  nasdaq_psxequities_bbo_itch_v2_1_2017.level_1.size + 
  nasdaq_psxequities_bbo_itch_v2_1_2017.level_2.size + 
  nasdaq_psxequities_bbo_itch_v2_1_2017.level_3.size

-- Display: Mwcb Decline Level Message
nasdaq_psxequities_bbo_itch_v2_1_2017.mwcb_decline_level_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mwcb Decline Level Message
nasdaq_psxequities_bbo_itch_v2_1_2017.mwcb_decline_level_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_psxequities_bbo_itch_v2_1_2017.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_psxequities_bbo_itch_v2_1_2017.timestamp.dissect(buffer, index, packet, parent)

  -- Level 1: Price (8)
  index, level_1 = nasdaq_psxequities_bbo_itch_v2_1_2017.level_1.dissect(buffer, index, packet, parent)

  -- Level 2: Price (8)
  index, level_2 = nasdaq_psxequities_bbo_itch_v2_1_2017.level_2.dissect(buffer, index, packet, parent)

  -- Level 3: Price (8)
  index, level_3 = nasdaq_psxequities_bbo_itch_v2_1_2017.level_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mwcb Decline Level Message
nasdaq_psxequities_bbo_itch_v2_1_2017.mwcb_decline_level_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.mwcb_decline_level_message, buffer(offset, 0))
    local index = nasdaq_psxequities_bbo_itch_v2_1_2017.mwcb_decline_level_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_bbo_itch_v2_1_2017.mwcb_decline_level_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_bbo_itch_v2_1_2017.mwcb_decline_level_message.fields(buffer, offset, packet, parent)
  end
end

-- Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_psxequities_bbo_itch_v2_1_2017.reg_sho_short_sale_price_test_restricted_indicator_message = {}

-- Size: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_psxequities_bbo_itch_v2_1_2017.reg_sho_short_sale_price_test_restricted_indicator_message.size =
  nasdaq_psxequities_bbo_itch_v2_1_2017.tracking_number.size + 
  nasdaq_psxequities_bbo_itch_v2_1_2017.timestamp.size + 
  nasdaq_psxequities_bbo_itch_v2_1_2017.stock.size + 
  nasdaq_psxequities_bbo_itch_v2_1_2017.reg_sho_action.size

-- Display: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_psxequities_bbo_itch_v2_1_2017.reg_sho_short_sale_price_test_restricted_indicator_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_psxequities_bbo_itch_v2_1_2017.reg_sho_short_sale_price_test_restricted_indicator_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_psxequities_bbo_itch_v2_1_2017.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_psxequities_bbo_itch_v2_1_2017.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: Alphanumeric
  index, stock = nasdaq_psxequities_bbo_itch_v2_1_2017.stock.dissect(buffer, index, packet, parent)

  -- Reg Sho Action: Alphanumeric
  index, reg_sho_action = nasdaq_psxequities_bbo_itch_v2_1_2017.reg_sho_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_psxequities_bbo_itch_v2_1_2017.reg_sho_short_sale_price_test_restricted_indicator_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.reg_sho_short_sale_price_test_restricted_indicator_message, buffer(offset, 0))
    local index = nasdaq_psxequities_bbo_itch_v2_1_2017.reg_sho_short_sale_price_test_restricted_indicator_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_bbo_itch_v2_1_2017.reg_sho_short_sale_price_test_restricted_indicator_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_bbo_itch_v2_1_2017.reg_sho_short_sale_price_test_restricted_indicator_message.fields(buffer, offset, packet, parent)
  end
end

-- Stock Trading Action Message
nasdaq_psxequities_bbo_itch_v2_1_2017.stock_trading_action_message = {}

-- Size: Stock Trading Action Message
nasdaq_psxequities_bbo_itch_v2_1_2017.stock_trading_action_message.size =
  nasdaq_psxequities_bbo_itch_v2_1_2017.tracking_number.size + 
  nasdaq_psxequities_bbo_itch_v2_1_2017.timestamp.size + 
  nasdaq_psxequities_bbo_itch_v2_1_2017.stock.size + 
  nasdaq_psxequities_bbo_itch_v2_1_2017.security_class.size + 
  nasdaq_psxequities_bbo_itch_v2_1_2017.current_trading_state.size + 
  nasdaq_psxequities_bbo_itch_v2_1_2017.reason.size

-- Display: Stock Trading Action Message
nasdaq_psxequities_bbo_itch_v2_1_2017.stock_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Trading Action Message
nasdaq_psxequities_bbo_itch_v2_1_2017.stock_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_psxequities_bbo_itch_v2_1_2017.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_psxequities_bbo_itch_v2_1_2017.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: Alphanumeric
  index, stock = nasdaq_psxequities_bbo_itch_v2_1_2017.stock.dissect(buffer, index, packet, parent)

  -- Security Class: Alphanumeric
  index, security_class = nasdaq_psxequities_bbo_itch_v2_1_2017.security_class.dissect(buffer, index, packet, parent)

  -- Current Trading State: Alphanumeric
  index, current_trading_state = nasdaq_psxequities_bbo_itch_v2_1_2017.current_trading_state.dissect(buffer, index, packet, parent)

  -- Reason: Alphanumeric
  index, reason = nasdaq_psxequities_bbo_itch_v2_1_2017.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Trading Action Message
nasdaq_psxequities_bbo_itch_v2_1_2017.stock_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.stock_trading_action_message, buffer(offset, 0))
    local index = nasdaq_psxequities_bbo_itch_v2_1_2017.stock_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_bbo_itch_v2_1_2017.stock_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_bbo_itch_v2_1_2017.stock_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Stock Directory Message
nasdaq_psxequities_bbo_itch_v2_1_2017.stock_directory_message = {}

-- Size: Stock Directory Message
nasdaq_psxequities_bbo_itch_v2_1_2017.stock_directory_message.size =
  nasdaq_psxequities_bbo_itch_v2_1_2017.tracking_number.size + 
  nasdaq_psxequities_bbo_itch_v2_1_2017.timestamp.size + 
  nasdaq_psxequities_bbo_itch_v2_1_2017.stock.size + 
  nasdaq_psxequities_bbo_itch_v2_1_2017.market_category.size + 
  nasdaq_psxequities_bbo_itch_v2_1_2017.financial_status_indicator.size + 
  nasdaq_psxequities_bbo_itch_v2_1_2017.round_lot_size.size + 
  nasdaq_psxequities_bbo_itch_v2_1_2017.round_lots_only.size + 
  nasdaq_psxequities_bbo_itch_v2_1_2017.issue_classification.size + 
  nasdaq_psxequities_bbo_itch_v2_1_2017.issue_sub_type.size + 
  nasdaq_psxequities_bbo_itch_v2_1_2017.authenticity.size + 
  nasdaq_psxequities_bbo_itch_v2_1_2017.short_sale_threshold_indicator.size + 
  nasdaq_psxequities_bbo_itch_v2_1_2017.ipo_flag.size + 
  nasdaq_psxequities_bbo_itch_v2_1_2017.luld_reference_price_tier.size + 
  nasdaq_psxequities_bbo_itch_v2_1_2017.etp_flag.size + 
  nasdaq_psxequities_bbo_itch_v2_1_2017.etp_leverage_factor.size + 
  nasdaq_psxequities_bbo_itch_v2_1_2017.inverse_indicator.size

-- Display: Stock Directory Message
nasdaq_psxequities_bbo_itch_v2_1_2017.stock_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Directory Message
nasdaq_psxequities_bbo_itch_v2_1_2017.stock_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_psxequities_bbo_itch_v2_1_2017.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_psxequities_bbo_itch_v2_1_2017.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: Alphanumeric
  index, stock = nasdaq_psxequities_bbo_itch_v2_1_2017.stock.dissect(buffer, index, packet, parent)

  -- Market Category: Alphanumeric
  index, market_category = nasdaq_psxequities_bbo_itch_v2_1_2017.market_category.dissect(buffer, index, packet, parent)

  -- Financial Status Indicator: Alphanumeric
  index, financial_status_indicator = nasdaq_psxequities_bbo_itch_v2_1_2017.financial_status_indicator.dissect(buffer, index, packet, parent)

  -- Round Lot Size: Integer
  index, round_lot_size = nasdaq_psxequities_bbo_itch_v2_1_2017.round_lot_size.dissect(buffer, index, packet, parent)

  -- Round Lots Only: Alphanumeric
  index, round_lots_only = nasdaq_psxequities_bbo_itch_v2_1_2017.round_lots_only.dissect(buffer, index, packet, parent)

  -- Issue Classification: Alphanumeric
  index, issue_classification = nasdaq_psxequities_bbo_itch_v2_1_2017.issue_classification.dissect(buffer, index, packet, parent)

  -- Issue Sub Type: Alphanumeric
  index, issue_sub_type = nasdaq_psxequities_bbo_itch_v2_1_2017.issue_sub_type.dissect(buffer, index, packet, parent)

  -- Authenticity: Alphanumeric
  index, authenticity = nasdaq_psxequities_bbo_itch_v2_1_2017.authenticity.dissect(buffer, index, packet, parent)

  -- Short Sale Threshold Indicator: Alphanumeric
  index, short_sale_threshold_indicator = nasdaq_psxequities_bbo_itch_v2_1_2017.short_sale_threshold_indicator.dissect(buffer, index, packet, parent)

  -- Ipo Flag: Alphanumeric
  index, ipo_flag = nasdaq_psxequities_bbo_itch_v2_1_2017.ipo_flag.dissect(buffer, index, packet, parent)

  -- Luld Reference Price Tier: Alphanumeric
  index, luld_reference_price_tier = nasdaq_psxequities_bbo_itch_v2_1_2017.luld_reference_price_tier.dissect(buffer, index, packet, parent)

  -- Etp Flag: Alphanumeric
  index, etp_flag = nasdaq_psxequities_bbo_itch_v2_1_2017.etp_flag.dissect(buffer, index, packet, parent)

  -- Etp Leverage Factor: Integer
  index, etp_leverage_factor = nasdaq_psxequities_bbo_itch_v2_1_2017.etp_leverage_factor.dissect(buffer, index, packet, parent)

  -- Inverse Indicator: Alphanumeric
  index, inverse_indicator = nasdaq_psxequities_bbo_itch_v2_1_2017.inverse_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Directory Message
nasdaq_psxequities_bbo_itch_v2_1_2017.stock_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.stock_directory_message, buffer(offset, 0))
    local index = nasdaq_psxequities_bbo_itch_v2_1_2017.stock_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_bbo_itch_v2_1_2017.stock_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_bbo_itch_v2_1_2017.stock_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_psxequities_bbo_itch_v2_1_2017.system_event_message = {}

-- Size: System Event Message
nasdaq_psxequities_bbo_itch_v2_1_2017.system_event_message.size =
  nasdaq_psxequities_bbo_itch_v2_1_2017.tracking_number.size + 
  nasdaq_psxequities_bbo_itch_v2_1_2017.timestamp.size + 
  nasdaq_psxequities_bbo_itch_v2_1_2017.event_code.size

-- Display: System Event Message
nasdaq_psxequities_bbo_itch_v2_1_2017.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_psxequities_bbo_itch_v2_1_2017.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_psxequities_bbo_itch_v2_1_2017.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_psxequities_bbo_itch_v2_1_2017.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: Alphanumeric
  index, event_code = nasdaq_psxequities_bbo_itch_v2_1_2017.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_psxequities_bbo_itch_v2_1_2017.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_psxequities_bbo_itch_v2_1_2017.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_bbo_itch_v2_1_2017.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_bbo_itch_v2_1_2017.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nasdaq_psxequities_bbo_itch_v2_1_2017.payload = {}

-- Dissect: Payload
nasdaq_psxequities_bbo_itch_v2_1_2017.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event Message
  if message_type == "S" then
    return nasdaq_psxequities_bbo_itch_v2_1_2017.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Directory Message
  if message_type == "R" then
    return nasdaq_psxequities_bbo_itch_v2_1_2017.stock_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Trading Action Message
  if message_type == "H" then
    return nasdaq_psxequities_bbo_itch_v2_1_2017.stock_trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reg Sho Short Sale Price Test Restricted Indicator Message
  if message_type == "Y" then
    return nasdaq_psxequities_bbo_itch_v2_1_2017.reg_sho_short_sale_price_test_restricted_indicator_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mwcb Decline Level Message
  if message_type == "V" then
    return nasdaq_psxequities_bbo_itch_v2_1_2017.mwcb_decline_level_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mwcb Status Message
  if message_type == "W" then
    return nasdaq_psxequities_bbo_itch_v2_1_2017.mwcb_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quotation Message
  if message_type == "Q" then
    return nasdaq_psxequities_bbo_itch_v2_1_2017.quotation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Next Shares Quotation Message
  if message_type == "A" then
    return nasdaq_psxequities_bbo_itch_v2_1_2017.next_shares_quotation_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nasdaq_psxequities_bbo_itch_v2_1_2017.message_header = {}

-- Size: Message Header
nasdaq_psxequities_bbo_itch_v2_1_2017.message_header.size =
  nasdaq_psxequities_bbo_itch_v2_1_2017.message_length.size + 
  nasdaq_psxequities_bbo_itch_v2_1_2017.message_type.size

-- Display: Message Header
nasdaq_psxequities_bbo_itch_v2_1_2017.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_psxequities_bbo_itch_v2_1_2017.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_psxequities_bbo_itch_v2_1_2017.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 8 values
  index, message_type = nasdaq_psxequities_bbo_itch_v2_1_2017.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_psxequities_bbo_itch_v2_1_2017.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.message_header, buffer(offset, 0))
    local index = nasdaq_psxequities_bbo_itch_v2_1_2017.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_bbo_itch_v2_1_2017.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_bbo_itch_v2_1_2017.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_psxequities_bbo_itch_v2_1_2017.message = {}

-- Read runtime size of: Message
nasdaq_psxequities_bbo_itch_v2_1_2017.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 2):uint()

  return message_length + 2
end

-- Display: Message
nasdaq_psxequities_bbo_itch_v2_1_2017.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_psxequities_bbo_itch_v2_1_2017.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Implicit Message Sequence Number
  if message_index ~= nil and show.sequences and nasdaq_psxequities_bbo_itch_v2_1_2017.sequence ~= nil then
    local sequence = parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.message_sequence_number, UInt64.new(nasdaq_psxequities_bbo_itch_v2_1_2017.sequence + message_index - 1))
    sequence:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_psxequities_bbo_itch_v2_1_2017.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 8 branches
  index = nasdaq_psxequities_bbo_itch_v2_1_2017.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_psxequities_bbo_itch_v2_1_2017.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = nasdaq_psxequities_bbo_itch_v2_1_2017.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.message, buffer(offset, 0))
    local current = nasdaq_psxequities_bbo_itch_v2_1_2017.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_psxequities_bbo_itch_v2_1_2017.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_psxequities_bbo_itch_v2_1_2017.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- End Of Session
nasdaq_psxequities_bbo_itch_v2_1_2017.end_of_session = {}

-- Display: End Of Session
nasdaq_psxequities_bbo_itch_v2_1_2017.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
nasdaq_psxequities_bbo_itch_v2_1_2017.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_psxequities_bbo_itch_v2_1_2017.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Heartbeat
nasdaq_psxequities_bbo_itch_v2_1_2017.heartbeat = {}

-- Display: Heartbeat
nasdaq_psxequities_bbo_itch_v2_1_2017.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
nasdaq_psxequities_bbo_itch_v2_1_2017.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_psxequities_bbo_itch_v2_1_2017.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
nasdaq_psxequities_bbo_itch_v2_1_2017.messages = {}

-- Dissect: Messages
nasdaq_psxequities_bbo_itch_v2_1_2017.messages.dissect = function(buffer, offset, packet, parent, message_count)
  -- Dissect Heartbeat
  if message_count == 0 then
    return nasdaq_psxequities_bbo_itch_v2_1_2017.heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session
  if message_count == 65535 then
    return nasdaq_psxequities_bbo_itch_v2_1_2017.end_of_session.dissect(buffer, offset, packet, parent)
  end

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    offset = nasdaq_psxequities_bbo_itch_v2_1_2017.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end
end

-- Packet Header
nasdaq_psxequities_bbo_itch_v2_1_2017.packet_header = {}

-- Size: Packet Header
nasdaq_psxequities_bbo_itch_v2_1_2017.packet_header.size =
  nasdaq_psxequities_bbo_itch_v2_1_2017.session.size + 
  nasdaq_psxequities_bbo_itch_v2_1_2017.sequence_number.size + 
  nasdaq_psxequities_bbo_itch_v2_1_2017.message_count.size

-- Display: Packet Header
nasdaq_psxequities_bbo_itch_v2_1_2017.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_psxequities_bbo_itch_v2_1_2017.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_psxequities_bbo_itch_v2_1_2017.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = nasdaq_psxequities_bbo_itch_v2_1_2017.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_psxequities_bbo_itch_v2_1_2017.message_count.dissect(buffer, index, packet, parent)

  -- Sequence base for the packet's messages
  nasdaq_psxequities_bbo_itch_v2_1_2017.sequence = sequence_number

  return index
end

-- Dissect: Packet Header
nasdaq_psxequities_bbo_itch_v2_1_2017.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1_2017.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_psxequities_bbo_itch_v2_1_2017.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_bbo_itch_v2_1_2017.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_bbo_itch_v2_1_2017.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_psxequities_bbo_itch_v2_1_2017.packet = {}

-- Verify required size of Udp packet
nasdaq_psxequities_bbo_itch_v2_1_2017.packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_psxequities_bbo_itch_v2_1_2017.packet_header.size
end

-- Dissect Packet
nasdaq_psxequities_bbo_itch_v2_1_2017.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_psxequities_bbo_itch_v2_1_2017.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Messages: Runtime Type with 3 branches
  index = nasdaq_psxequities_bbo_itch_v2_1_2017.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_psxequities_bbo_itch_v2_1_2017.init()
end

-- Dissector for Nasdaq PsxEquities Bbo Itch 2.1.2017
function omi_nasdaq_psxequities_bbo_itch_v2_1_2017.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_psxequities_bbo_itch_v2_1_2017.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_psxequities_bbo_itch_v2_1_2017, buffer(), omi_nasdaq_psxequities_bbo_itch_v2_1_2017.description, "("..buffer:len().." Bytes)")
  return nasdaq_psxequities_bbo_itch_v2_1_2017.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq PsxEquities Bbo Itch 2.1.2017 (Udp)
local function omi_nasdaq_psxequities_bbo_itch_v2_1_2017_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_psxequities_bbo_itch_v2_1_2017.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_psxequities_bbo_itch_v2_1_2017
  omi_nasdaq_psxequities_bbo_itch_v2_1_2017.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq PsxEquities Bbo Itch 2.1.2017
omi_nasdaq_psxequities_bbo_itch_v2_1_2017:register_heuristic("udp", omi_nasdaq_psxequities_bbo_itch_v2_1_2017_udp_heuristic)

-- Register Nasdaq PsxEquities Bbo Itch 2.1.2017 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_nasdaq_psxequities_bbo_itch_v2_1_2017)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 2.1.2017
--   Since: 2.1.2015
--   Date: Tuesday, September 12, 2017
--   Specification: PSXbboSpecification2.1.pdf
--   Specification: PSXbboSpecification2.1.pdf
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
