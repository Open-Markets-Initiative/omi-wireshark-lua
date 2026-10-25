-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq NsmEquities BasicPlus Itch 1.0 Protocol
local omi_nasdaq_nsmequities_basicplus_itch_v1_0 = Proto("Omi.Nasdaq.NsmEquities.BasicPlus.Itch.v1.0", "Nasdaq NsmEquities BasicPlus Itch 1.0")

-- Protocol table
local nasdaq_nsmequities_basicplus_itch_v1_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq NsmEquities BasicPlus Itch 1.0 Fields
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.authenticity = ProtoField.new("Authenticity", "nasdaq.nsmequities.basicplus.itch.v1.0.authenticity", ftypes.STRING, nil, nil, nil, "Denotes if an issue or quoting participant record is set-up in Nasdaq systems in a live/production, test, or demo state.")
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.best_bid_exchanges = ProtoField.new("Best Bid Exchanges", "nasdaq.nsmequities.basicplus.itch.v1.0.bestbidexchanges", ftypes.UINT8, nil, nil, nil, "The Exchange(s) the best bid information is relative to (Appendix E).")
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.best_bid_price = ProtoField.new("Best Bid Price", "nasdaq.nsmequities.basicplus.itch.v1.0.bestbidprice", ftypes.DOUBLE, nil, nil, nil, "Denotes the best bid price, or the highest price for market buy order(s) in the execution system.")
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.best_bid_size = ProtoField.new("Best Bid Size", "nasdaq.nsmequities.basicplus.itch.v1.0.bestbidsize", ftypes.UINT32, nil, nil, nil, "Denotes the aggregated number of shares available for display within the execution system at the best bid price.")
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.best_offer_exchanges = ProtoField.new("Best Offer Exchanges", "nasdaq.nsmequities.basicplus.itch.v1.0.bestofferexchanges", ftypes.UINT8, nil, nil, nil, "The Exchange(s) the best offer information is relative to (Appendix E).")
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.best_offer_price = ProtoField.new("Best Offer Price", "nasdaq.nsmequities.basicplus.itch.v1.0.bestofferprice", ftypes.DOUBLE, nil, nil, nil, "Denotes the Nasdaq exchange's best offer price, or the lowest price for market sell order(s) in the execution system.")
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.best_offer_size = ProtoField.new("Best Offer Size", "nasdaq.nsmequities.basicplus.itch.v1.0.bestoffersize", ftypes.UINT32, nil, nil, nil, "Denotes the aggregated number of shares available for display within the execution system at the best offer price.")
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.breached_level = ProtoField.new("Breached Level", "nasdaq.nsmequities.basicplus.itch.v1.0.breachedlevel", ftypes.STRING, nil, nil, nil, "Denotes the MWCB Level that was breached.")
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.buy_side_rpi_exchanges = ProtoField.new("Buy Side Rpi Exchanges", "nasdaq.nsmequities.basicplus.itch.v1.0.buysiderpiexchanges", ftypes.UINT8, nil, nil, nil, "The Exchange(s) of buy-side RPI the information is relative to (Appendix E).")
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.etp_flag = ProtoField.new("Etp Flag", "nasdaq.nsmequities.basicplus.itch.v1.0.etpflag", ftypes.STRING, nil, nil, nil, "Indicates whether the security is an exchange traded product (ETP).")
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.etp_leverage_factor = ProtoField.new("Etp Leverage Factor", "nasdaq.nsmequities.basicplus.itch.v1.0.etpleveragefactor", ftypes.UINT32, nil, nil, nil, "Tracks the integral relationship of the ETP to the underlying index. Leverage Factor is rounded to the nearest integer below.")
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.event_code = ProtoField.new("Event Code", "nasdaq.nsmequities.basicplus.itch.v1.0.eventcode", ftypes.STRING, nil, nil, nil, "Denotes the type of system event for which the message is being generated.")
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.financial_status_indicator = ProtoField.new("Financial Status Indicator", "nasdaq.nsmequities.basicplus.itch.v1.0.financialstatusindicator", ftypes.STRING, nil, nil, nil, "For Nasdaq-listed issues, this field indicates when a firm is not in compliance with Nasdaq continued listing requirements.")
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.inverse_indicator = ProtoField.new("Inverse Indicator", "nasdaq.nsmequities.basicplus.itch.v1.0.inverseindicator", ftypes.STRING, nil, nil, nil, "Indicates the directional relationship between the ETP and underlying index.")
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.ipo_flag = ProtoField.new("Ipo Flag", "nasdaq.nsmequities.basicplus.itch.v1.0.ipoflag", ftypes.STRING, nil, nil, nil, "Indicates if the Nasdaq security is set up for IPO release.")
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.ipo_price = ProtoField.new("Ipo Price", "nasdaq.nsmequities.basicplus.itch.v1.0.ipoprice", ftypes.DOUBLE, nil, nil, nil, "Denotes the IPO price to be used for intraday net change calculations.")
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.ipo_quotation_release_qualifier = ProtoField.new("Ipo Quotation Release Qualifier", "nasdaq.nsmequities.basicplus.itch.v1.0.ipoquotationreleasequalifier", ftypes.STRING)
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.ipo_quotation_release_time = ProtoField.new("Ipo Quotation Release Time", "nasdaq.nsmequities.basicplus.itch.v1.0.ipoquotationreleasetime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Denotes the IPO release time, in seconds since Epoch 1/1/1970 00:00:00 UTC.")
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.ipo_quotation_release_time_utc = ProtoField.new("Ipo Quotation Release Time", "nasdaq.nsmequities.basicplus.itch.v1.0.ipoquotationreleasetime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Denotes the IPO release time, in seconds since Epoch 1/1/1970 00:00:00 UTC.")
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.issue_classification = ProtoField.new("Issue Classification", "nasdaq.nsmequities.basicplus.itch.v1.0.issueclassification", ftypes.STRING, nil, nil, nil, "Identifies the security class for the issue as assigned by Nasdaq.")
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.issue_sub_type = ProtoField.new("Issue Sub Type", "nasdaq.nsmequities.basicplus.itch.v1.0.issuesubtype", ftypes.STRING, nil, nil, nil, "Identifies the security sub-type for the issue as assigned by Nasdaq.")
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.level_1 = ProtoField.new("Level 1", "nasdaq.nsmequities.basicplus.itch.v1.0.level1", ftypes.DOUBLE, nil, nil, nil, "Denotes the MWCB Level 1 Value.")
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.level_2 = ProtoField.new("Level 2", "nasdaq.nsmequities.basicplus.itch.v1.0.level2", ftypes.DOUBLE, nil, nil, nil, "Denotes the MWCB Level 2 Value.")
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.level_3 = ProtoField.new("Level 3", "nasdaq.nsmequities.basicplus.itch.v1.0.level3", ftypes.DOUBLE, nil, nil, nil, "Denotes the MWCB Level 3 Value.")
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.luld_reference_price_tier = ProtoField.new("Luld Reference Price Tier", "nasdaq.nsmequities.basicplus.itch.v1.0.luldreferencepricetier", ftypes.STRING, nil, nil, nil, "Indicates which Limit Up / Limit Down price band calculation parameter is to be used for the instrument.")
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.market_category = ProtoField.new("Market Category", "nasdaq.nsmequities.basicplus.itch.v1.0.marketcategory", ftypes.STRING, nil, nil, nil, "Listing Market / Category: indicates listing market or listing market tier for the issue.")
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.market_code = ProtoField.new("Market Code", "nasdaq.nsmequities.basicplus.itch.v1.0.marketcode", ftypes.STRING, nil, nil, nil, "The Market Center the Operational Halt is in effect for")
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.message_count = ProtoField.new("Message Count", "nasdaq.nsmequities.basicplus.itch.v1.0.messagecount", ftypes.UINT16, nil, nil, nil, "Number of messages to follow this header")
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.message_length = ProtoField.new("Message Length", "nasdaq.nsmequities.basicplus.itch.v1.0.messagelength", ftypes.UINT16, nil, nil, nil, "Length of data message not including this field")
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.message_type = ProtoField.new("Message Type", "nasdaq.nsmequities.basicplus.itch.v1.0.messagetype", ftypes.STRING, nil, nil, nil, "Code identifying this message type")
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.operational_halt_action = ProtoField.new("Operational Halt Action", "nasdaq.nsmequities.basicplus.itch.v1.0.operationalhaltaction", ftypes.STRING)
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.reason_code = ProtoField.new("Reason Code", "nasdaq.nsmequities.basicplus.itch.v1.0.reasoncode", ftypes.STRING, nil, nil, nil, "Reflects the Market Ops or Market Watch code for the trading state change.")
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "nasdaq.nsmequities.basicplus.itch.v1.0.regshoaction", ftypes.STRING, nil, nil, nil, "Denotes the Reg SHO Short Sale Price Test Restriction status for the issue at the time of the message dissemination.")
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.round_lot_size = ProtoField.new("Round Lot Size", "nasdaq.nsmequities.basicplus.itch.v1.0.roundlotsize", ftypes.UINT32, nil, nil, nil, "Denotes the number of shares that represent a round lot for the issue")
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.round_lots_only = ProtoField.new("Round Lots Only", "nasdaq.nsmequities.basicplus.itch.v1.0.roundlotsonly", ftypes.STRING, nil, nil, nil, "Indicates if Nasdaq system limits order entry for issue")
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.sell_side_rpi_exchanges = ProtoField.new("Sell Side Rpi Exchanges", "nasdaq.nsmequities.basicplus.itch.v1.0.sellsiderpiexchanges", ftypes.UINT8, nil, nil, nil, "The Exchange(s) of sell-side RPI the information is relative to (Appendix E).")
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.nsmequities.basicplus.itch.v1.0.sequencenumber", ftypes.UINT64, nil, nil, nil, "Sequence number of the first message to follow this header")
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.session = ProtoField.new("Session", "nasdaq.nsmequities.basicplus.itch.v1.0.session", ftypes.STRING, nil, nil, nil, "Identity of the multicast session")
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.short_sale_threshold_indicator = ProtoField.new("Short Sale Threshold Indicator", "nasdaq.nsmequities.basicplus.itch.v1.0.shortsalethresholdindicator", ftypes.STRING, nil, nil, nil, "Indicates if a security is subject to mandatory close-out of short sales under SEC Rule 203(b)(3).")
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.stock = ProtoField.new("Stock", "nasdaq.nsmequities.basicplus.itch.v1.0.stock", ftypes.STRING, nil, nil, nil, "Denotes the security symbol for the issue in the execution system.")
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.nsmequities.basicplus.itch.v1.0.timestamp", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Timestamp represented in nanoseconds since Epoch 1/1/1970, 00:00:00 UTC.")
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.timestamp_utc = ProtoField.new("Timestamp", "nasdaq.nsmequities.basicplus.itch.v1.0.timestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Timestamp represented in nanoseconds since Epoch 1/1/1970, 00:00:00 UTC.")
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.trading_state = ProtoField.new("Trading State", "nasdaq.nsmequities.basicplus.itch.v1.0.tradingstate", ftypes.STRING, nil, nil, nil, "Reflects the current trading state for the issue.")

-- Nasdaq NsmEquities BasicPlus Itch 1.0 Framing
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.message = ProtoField.new("Message", "nasdaq.nsmequities.basicplus.itch.v1.0.message", ftypes.STRING, nil, nil, nil, "Mold Udp64 Message")
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.message_header = ProtoField.new("Message Header", "nasdaq.nsmequities.basicplus.itch.v1.0.messageheader", ftypes.STRING, nil, nil, nil, "Mold Udp 64 Message Header")
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.packet = ProtoField.new("Packet", "nasdaq.nsmequities.basicplus.itch.v1.0.packet", ftypes.STRING, nil, nil, nil, "Itch Mold Udp 64 Packet")
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.nsmequities.basicplus.itch.v1.0.packetheader", ftypes.STRING, nil, nil, nil, "Itch Mold Udp 64 Packet Header")

-- Nasdaq NsmEquities BasicPlus 1.0 Application Messages
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.consolidated_quotation_message = ProtoField.new("Consolidated Quotation Message", "nasdaq.nsmequities.basicplus.itch.v1.0.consolidatedquotationmessage", ftypes.STRING, nil, nil, nil, "Consolidated BBO will broadcast a real-time update every time the Consolidated BBO across Nasdaq owned and operated exchanges is updated throughout the trading day.")
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.ipo_quoting_period_update = ProtoField.new("Ipo Quoting Period Update", "nasdaq.nsmequities.basicplus.itch.v1.0.ipoquotingperiodupdate", ftypes.STRING, nil, nil, nil, "Indicates the anticipated IPO quotation release time of a security. Populated for the Nasdaq market only.")
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.mwcb_decline_level_message = ProtoField.new("Mwcb Decline Level Message", "nasdaq.nsmequities.basicplus.itch.v1.0.mwcbdeclinelevelmessage", ftypes.STRING, nil, nil, nil, "Informs data recipients what the daily MWCB breach points are set to for the current trading day.")
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.mwcb_status_message = ProtoField.new("Mwcb Status Message", "nasdaq.nsmequities.basicplus.itch.v1.0.mwcbstatusmessage", ftypes.STRING, nil, nil, nil, "Informs data recipients when a MWCB has breached one of the established levels.")
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.operational_halt_message = ProtoField.new("Operational Halt Message", "nasdaq.nsmequities.basicplus.itch.v1.0.operationalhaltmessage", ftypes.STRING, nil, nil, nil, "The Exchange uses this message to indicate the current Operational Status of a security to the trading community, for the three market centers operated by Nasdaq.")
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.reg_sho_restriction_message = ProtoField.new("Reg Sho Restriction Message", "nasdaq.nsmequities.basicplus.itch.v1.0.regshorestrictionmessage", ftypes.STRING, nil, nil, nil, "Reg SHO Short Sale Price Test Restricted Indicator. Sends updates for the Nasdaq market only.")
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.retail_price_improvement_message = ProtoField.new("Retail Price Improvement Message", "nasdaq.nsmequities.basicplus.itch.v1.0.retailpriceimprovementmessage", ftypes.STRING, nil, nil, nil, "Indicates a retail interest indication of the Bid, Ask or both the Bid and Ask for Nasdaq-listed securities. Populated for the Nasdaq Texas market only.")
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.stock_directory_message = ProtoField.new("Stock Directory Message", "nasdaq.nsmequities.basicplus.itch.v1.0.stockdirectorymessage", ftypes.STRING, nil, nil, nil, "At the start of each trading day, Nasdaq disseminates stock directory messages for all active Nasdaq and non Nasdaq listed security symbols. The Stock Directory can be sent again during the trading day if any value changes.")
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.nsmequities.basicplus.itch.v1.0.systemeventmessage", ftypes.STRING, nil, nil, nil, "System Event Messages is used to signal key market or data feed control events.")
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.trading_action_message = ProtoField.new("Trading Action Message", "nasdaq.nsmequities.basicplus.itch.v1.0.tradingactionmessage", ftypes.STRING, nil, nil, nil, "Nasdaq uses this administrative message to indicate the current trading status of a security to the trading community. The message originates from the Nasdaq market center system.")

-- Nasdaq NsmEquities BasicPlus 1.0 Session Messages
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.end_of_session = ProtoField.new("End Of Session", "nasdaq.nsmequities.basicplus.itch.v1.0.endofsession", ftypes.BYTES, nil, nil, nil, "Mold Udp64 end of session")
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.heartbeat = ProtoField.new("Heartbeat", "nasdaq.nsmequities.basicplus.itch.v1.0.heartbeat", ftypes.BYTES, nil, nil, nil, "Mold Udp64 heartbeat")

-- Nasdaq NsmEquities BasicPlus Itch 1.0 Generated Fields
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.message_index = ProtoField.new("Message Index", "nasdaq.nsmequities.basicplus.itch.v1.0.messageindex", ftypes.UINT16)
omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "nasdaq.nsmequities.basicplus.itch.v1.0.messagesequencenumber", ftypes.UINT64)

-----------------------------------------------------------------------
-- Nasdaq NsmEquities BasicPlus Itch 1.0 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
nasdaq_nsmequities_basicplus_itch_v1_0.absolute_time_base = 0


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq NsmEquities BasicPlus Itch 1.0 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true
show.sequences = true

-- Register Nasdaq NsmEquities BasicPlus Itch 1.0 Show Options
omi_nasdaq_nsmequities_basicplus_itch_v1_0.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_nsmequities_basicplus_itch_v1_0.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_nsmequities_basicplus_itch_v1_0.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nasdaq_nsmequities_basicplus_itch_v1_0.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_nasdaq_nsmequities_basicplus_itch_v1_0.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")

omi_nasdaq_nsmequities_basicplus_itch_v1_0.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_nasdaq_nsmequities_basicplus_itch_v1_0.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_nsmequities_basicplus_itch_v1_0.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_nsmequities_basicplus_itch_v1_0.prefs.show_application_messages
  end
  if show.headers ~= omi_nasdaq_nsmequities_basicplus_itch_v1_0.prefs.show_headers then
    show.headers = omi_nasdaq_nsmequities_basicplus_itch_v1_0.prefs.show_headers
  end
  if show.structs ~= omi_nasdaq_nsmequities_basicplus_itch_v1_0.prefs.show_structs then
    show.structs = omi_nasdaq_nsmequities_basicplus_itch_v1_0.prefs.show_structs
  end
  if show.indexes ~= omi_nasdaq_nsmequities_basicplus_itch_v1_0.prefs.show_indexes then
    show.indexes = omi_nasdaq_nsmequities_basicplus_itch_v1_0.prefs.show_indexes
  end
  if show.sequences ~= omi_nasdaq_nsmequities_basicplus_itch_v1_0.prefs.show_sequences then
    show.sequences = omi_nasdaq_nsmequities_basicplus_itch_v1_0.prefs.show_sequences
  end
  if nasdaq_nsmequities_basicplus_itch_v1_0.absolute_time_base ~= omi_nasdaq_nsmequities_basicplus_itch_v1_0.prefs.absolute_time_base then
    nasdaq_nsmequities_basicplus_itch_v1_0.absolute_time_base = omi_nasdaq_nsmequities_basicplus_itch_v1_0.prefs.absolute_time_base
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
-- Nasdaq NsmEquities BasicPlus Itch 1.0 Fields
-----------------------------------------------------------------------

-- Authenticity
nasdaq_nsmequities_basicplus_itch_v1_0.authenticity = {}

-- Size: Authenticity
nasdaq_nsmequities_basicplus_itch_v1_0.authenticity.size = 1

-- Display: Authenticity
nasdaq_nsmequities_basicplus_itch_v1_0.authenticity.labels = {
  ["P"] = "Authenticity: Live Production (P)",
  ["T"] = "Authenticity: Test (T)",
}

nasdaq_nsmequities_basicplus_itch_v1_0.authenticity.display = function(value)
  return nasdaq_nsmequities_basicplus_itch_v1_0.authenticity.labels[value] or "Authenticity: Unknown("..value..")"
end

-- Dissect: Authenticity
nasdaq_nsmequities_basicplus_itch_v1_0.authenticity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_basicplus_itch_v1_0.authenticity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_basicplus_itch_v1_0.authenticity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.authenticity, range, value, display)

  return offset + length, value
end

-- Best Bid Exchanges
nasdaq_nsmequities_basicplus_itch_v1_0.best_bid_exchanges = {}

-- Size: Best Bid Exchanges
nasdaq_nsmequities_basicplus_itch_v1_0.best_bid_exchanges.size = 1

-- Display: Best Bid Exchanges
nasdaq_nsmequities_basicplus_itch_v1_0.best_bid_exchanges.labels = {
  [1] = "Best Bid Exchanges: Nasdaq (1)",
  [2] = "Best Bid Exchanges: Nasdaq Texas (2)",
  [3] = "Best Bid Exchanges: Nasdaq And Nasdaq Texas (3)",
  [4] = "Best Bid Exchanges: Nasdaq Psx (4)",
  [5] = "Best Bid Exchanges: Nasdaq And Nasdaq Psx (5)",
  [6] = "Best Bid Exchanges: Nasdaq Texas And Nasdaq Psx (6)",
  [7] = "Best Bid Exchanges: Nasdaq Nasdaq Texas And Nasdaq Psx (7)",
}

nasdaq_nsmequities_basicplus_itch_v1_0.best_bid_exchanges.display = function(value)
  return nasdaq_nsmequities_basicplus_itch_v1_0.best_bid_exchanges.labels[value] or "Best Bid Exchanges: Unknown("..value..")"
end

-- Dissect: Best Bid Exchanges
nasdaq_nsmequities_basicplus_itch_v1_0.best_bid_exchanges.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_basicplus_itch_v1_0.best_bid_exchanges.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_basicplus_itch_v1_0.best_bid_exchanges.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.best_bid_exchanges, range, value, display)

  return offset + length, value
end

-- Best Bid Price
nasdaq_nsmequities_basicplus_itch_v1_0.best_bid_price = {}

-- Size: Best Bid Price
nasdaq_nsmequities_basicplus_itch_v1_0.best_bid_price.size = 8

-- Display: Best Bid Price
nasdaq_nsmequities_basicplus_itch_v1_0.best_bid_price.display = function(value)
  return "Best Bid Price: "..value
end

-- Translate: Best Bid Price
nasdaq_nsmequities_basicplus_itch_v1_0.best_bid_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Best Bid Price
nasdaq_nsmequities_basicplus_itch_v1_0.best_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_basicplus_itch_v1_0.best_bid_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_nsmequities_basicplus_itch_v1_0.best_bid_price.translate(raw)
  local display = nasdaq_nsmequities_basicplus_itch_v1_0.best_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.best_bid_price, range, value, display)

  return offset + length, value
end

-- Best Bid Size
nasdaq_nsmequities_basicplus_itch_v1_0.best_bid_size = {}

-- Size: Best Bid Size
nasdaq_nsmequities_basicplus_itch_v1_0.best_bid_size.size = 4

-- Display: Best Bid Size
nasdaq_nsmequities_basicplus_itch_v1_0.best_bid_size.display = function(value)
  return "Best Bid Size: "..value
end

-- Dissect: Best Bid Size
nasdaq_nsmequities_basicplus_itch_v1_0.best_bid_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_basicplus_itch_v1_0.best_bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_basicplus_itch_v1_0.best_bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.best_bid_size, range, value, display)

  return offset + length, value
end

-- Best Offer Exchanges
nasdaq_nsmequities_basicplus_itch_v1_0.best_offer_exchanges = {}

-- Size: Best Offer Exchanges
nasdaq_nsmequities_basicplus_itch_v1_0.best_offer_exchanges.size = 1

-- Display: Best Offer Exchanges
nasdaq_nsmequities_basicplus_itch_v1_0.best_offer_exchanges.labels = {
  [1] = "Best Offer Exchanges: Nasdaq (1)",
  [2] = "Best Offer Exchanges: Nasdaq Texas (2)",
  [3] = "Best Offer Exchanges: Nasdaq And Nasdaq Texas (3)",
  [4] = "Best Offer Exchanges: Nasdaq Psx (4)",
  [5] = "Best Offer Exchanges: Nasdaq And Nasdaq Psx (5)",
  [6] = "Best Offer Exchanges: Nasdaq Texas And Nasdaq Psx (6)",
  [7] = "Best Offer Exchanges: Nasdaq Nasdaq Texas And Nasdaq Psx (7)",
}

nasdaq_nsmequities_basicplus_itch_v1_0.best_offer_exchanges.display = function(value)
  return nasdaq_nsmequities_basicplus_itch_v1_0.best_offer_exchanges.labels[value] or "Best Offer Exchanges: Unknown("..value..")"
end

-- Dissect: Best Offer Exchanges
nasdaq_nsmequities_basicplus_itch_v1_0.best_offer_exchanges.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_basicplus_itch_v1_0.best_offer_exchanges.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_basicplus_itch_v1_0.best_offer_exchanges.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.best_offer_exchanges, range, value, display)

  return offset + length, value
end

-- Best Offer Price
nasdaq_nsmequities_basicplus_itch_v1_0.best_offer_price = {}

-- Size: Best Offer Price
nasdaq_nsmequities_basicplus_itch_v1_0.best_offer_price.size = 8

-- Display: Best Offer Price
nasdaq_nsmequities_basicplus_itch_v1_0.best_offer_price.display = function(value)
  return "Best Offer Price: "..value
end

-- Translate: Best Offer Price
nasdaq_nsmequities_basicplus_itch_v1_0.best_offer_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Best Offer Price
nasdaq_nsmequities_basicplus_itch_v1_0.best_offer_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_basicplus_itch_v1_0.best_offer_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_nsmequities_basicplus_itch_v1_0.best_offer_price.translate(raw)
  local display = nasdaq_nsmequities_basicplus_itch_v1_0.best_offer_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.best_offer_price, range, value, display)

  return offset + length, value
end

-- Best Offer Size
nasdaq_nsmequities_basicplus_itch_v1_0.best_offer_size = {}

-- Size: Best Offer Size
nasdaq_nsmequities_basicplus_itch_v1_0.best_offer_size.size = 4

-- Display: Best Offer Size
nasdaq_nsmequities_basicplus_itch_v1_0.best_offer_size.display = function(value)
  return "Best Offer Size: "..value
end

-- Dissect: Best Offer Size
nasdaq_nsmequities_basicplus_itch_v1_0.best_offer_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_basicplus_itch_v1_0.best_offer_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_basicplus_itch_v1_0.best_offer_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.best_offer_size, range, value, display)

  return offset + length, value
end

-- Breached Level
nasdaq_nsmequities_basicplus_itch_v1_0.breached_level = {}

-- Size: Breached Level
nasdaq_nsmequities_basicplus_itch_v1_0.breached_level.size = 1

-- Display: Breached Level
nasdaq_nsmequities_basicplus_itch_v1_0.breached_level.labels = {
  ["1"] = "Breached Level: Level 1 (1)",
  ["2"] = "Breached Level: Level 2 (2)",
  ["3"] = "Breached Level: Level 3 (3)",
}

nasdaq_nsmequities_basicplus_itch_v1_0.breached_level.display = function(value)
  return nasdaq_nsmequities_basicplus_itch_v1_0.breached_level.labels[value] or "Breached Level: Unknown("..value..")"
end

-- Dissect: Breached Level
nasdaq_nsmequities_basicplus_itch_v1_0.breached_level.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_basicplus_itch_v1_0.breached_level.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_basicplus_itch_v1_0.breached_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.breached_level, range, value, display)

  return offset + length, value
end

-- Buy Side Rpi Exchanges
nasdaq_nsmequities_basicplus_itch_v1_0.buy_side_rpi_exchanges = {}

-- Size: Buy Side Rpi Exchanges
nasdaq_nsmequities_basicplus_itch_v1_0.buy_side_rpi_exchanges.size = 1

-- Display: Buy Side Rpi Exchanges
nasdaq_nsmequities_basicplus_itch_v1_0.buy_side_rpi_exchanges.labels = {
  [1] = "Buy Side Rpi Exchanges: Nasdaq (1)",
  [2] = "Buy Side Rpi Exchanges: Nasdaq Texas (2)",
  [3] = "Buy Side Rpi Exchanges: Nasdaq And Nasdaq Texas (3)",
  [4] = "Buy Side Rpi Exchanges: Nasdaq Psx (4)",
  [5] = "Buy Side Rpi Exchanges: Nasdaq And Nasdaq Psx (5)",
  [6] = "Buy Side Rpi Exchanges: Nasdaq Texas And Nasdaq Psx (6)",
  [7] = "Buy Side Rpi Exchanges: Nasdaq Nasdaq Texas And Nasdaq Psx (7)",
}

nasdaq_nsmequities_basicplus_itch_v1_0.buy_side_rpi_exchanges.display = function(value)
  return nasdaq_nsmequities_basicplus_itch_v1_0.buy_side_rpi_exchanges.labels[value] or "Buy Side Rpi Exchanges: Unknown("..value..")"
end

-- Dissect: Buy Side Rpi Exchanges
nasdaq_nsmequities_basicplus_itch_v1_0.buy_side_rpi_exchanges.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_basicplus_itch_v1_0.buy_side_rpi_exchanges.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_basicplus_itch_v1_0.buy_side_rpi_exchanges.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.buy_side_rpi_exchanges, range, value, display)

  return offset + length, value
end

-- Etp Flag
nasdaq_nsmequities_basicplus_itch_v1_0.etp_flag = {}

-- Size: Etp Flag
nasdaq_nsmequities_basicplus_itch_v1_0.etp_flag.size = 1

-- Display: Etp Flag
nasdaq_nsmequities_basicplus_itch_v1_0.etp_flag.display = function(value)
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
nasdaq_nsmequities_basicplus_itch_v1_0.etp_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_basicplus_itch_v1_0.etp_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_basicplus_itch_v1_0.etp_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.etp_flag, range, value, display)

  return offset + length, value
end

-- Etp Leverage Factor
nasdaq_nsmequities_basicplus_itch_v1_0.etp_leverage_factor = {}

-- Size: Etp Leverage Factor
nasdaq_nsmequities_basicplus_itch_v1_0.etp_leverage_factor.size = 4

-- Display: Etp Leverage Factor
nasdaq_nsmequities_basicplus_itch_v1_0.etp_leverage_factor.display = function(value)
  return "Etp Leverage Factor: "..value
end

-- Dissect: Etp Leverage Factor
nasdaq_nsmequities_basicplus_itch_v1_0.etp_leverage_factor.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_basicplus_itch_v1_0.etp_leverage_factor.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_basicplus_itch_v1_0.etp_leverage_factor.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.etp_leverage_factor, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_nsmequities_basicplus_itch_v1_0.event_code = {}

-- Size: Event Code
nasdaq_nsmequities_basicplus_itch_v1_0.event_code.size = 1

-- Display: Event Code
nasdaq_nsmequities_basicplus_itch_v1_0.event_code.labels = {
  ["O"] = "Event Code: Start Of Consolidated Market Transmissions (O)",
  ["S"] = "Event Code: Start Of System Hours (S)",
  ["Q"] = "Event Code: Start Of Regular Market Hours (Q)",
  ["M"] = "Event Code: End Of Regular Market Hours (M)",
  ["E"] = "Event Code: End Of System Hours (E)",
  ["C"] = "Event Code: End Of Transmissions (C)",
}

nasdaq_nsmequities_basicplus_itch_v1_0.event_code.display = function(value)
  return nasdaq_nsmequities_basicplus_itch_v1_0.event_code.labels[value] or "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
nasdaq_nsmequities_basicplus_itch_v1_0.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_basicplus_itch_v1_0.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_basicplus_itch_v1_0.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.event_code, range, value, display)

  return offset + length, value
end

-- Financial Status Indicator
nasdaq_nsmequities_basicplus_itch_v1_0.financial_status_indicator = {}

-- Size: Financial Status Indicator
nasdaq_nsmequities_basicplus_itch_v1_0.financial_status_indicator.size = 1

-- Display: Financial Status Indicator
nasdaq_nsmequities_basicplus_itch_v1_0.financial_status_indicator.display = function(value)
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
    return "Financial Status Indicator: Not Available (<whitespace>)"
  end

  return "Financial Status Indicator: Unknown("..value..")"
end

-- Dissect: Financial Status Indicator
nasdaq_nsmequities_basicplus_itch_v1_0.financial_status_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_basicplus_itch_v1_0.financial_status_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_basicplus_itch_v1_0.financial_status_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.financial_status_indicator, range, value, display)

  return offset + length, value
end

-- Inverse Indicator
nasdaq_nsmequities_basicplus_itch_v1_0.inverse_indicator = {}

-- Size: Inverse Indicator
nasdaq_nsmequities_basicplus_itch_v1_0.inverse_indicator.size = 1

-- Display: Inverse Indicator
nasdaq_nsmequities_basicplus_itch_v1_0.inverse_indicator.labels = {
  ["Y"] = "Inverse Indicator: Inverse Etp (Y)",
  ["N"] = "Inverse Indicator: Not Inverse Etp (N)",
}

nasdaq_nsmequities_basicplus_itch_v1_0.inverse_indicator.display = function(value)
  return nasdaq_nsmequities_basicplus_itch_v1_0.inverse_indicator.labels[value] or "Inverse Indicator: Unknown("..value..")"
end

-- Dissect: Inverse Indicator
nasdaq_nsmequities_basicplus_itch_v1_0.inverse_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_basicplus_itch_v1_0.inverse_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_basicplus_itch_v1_0.inverse_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.inverse_indicator, range, value, display)

  return offset + length, value
end

-- Ipo Flag
nasdaq_nsmequities_basicplus_itch_v1_0.ipo_flag = {}

-- Size: Ipo Flag
nasdaq_nsmequities_basicplus_itch_v1_0.ipo_flag.size = 1

-- Display: Ipo Flag
nasdaq_nsmequities_basicplus_itch_v1_0.ipo_flag.display = function(value)
  if value == "Y" then
    return "Ipo Flag: Set Up For Ipo Release (Y)"
  end
  if value == "N" then
    return "Ipo Flag: Not Set Up For Ipo Release (N)"
  end
  if value == "Z" then
    return "Ipo Flag: Non Ipo New Listed Security (Z)"
  end
  if value == " " then
    return "Ipo Flag: Not Available (<whitespace>)"
  end

  return "Ipo Flag: Unknown("..value..")"
end

-- Dissect: Ipo Flag
nasdaq_nsmequities_basicplus_itch_v1_0.ipo_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_basicplus_itch_v1_0.ipo_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_basicplus_itch_v1_0.ipo_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.ipo_flag, range, value, display)

  return offset + length, value
end

-- Ipo Price
nasdaq_nsmequities_basicplus_itch_v1_0.ipo_price = {}

-- Size: Ipo Price
nasdaq_nsmequities_basicplus_itch_v1_0.ipo_price.size = 8

-- Display: Ipo Price
nasdaq_nsmequities_basicplus_itch_v1_0.ipo_price.display = function(value)
  return "Ipo Price: "..value
end

-- Translate: Ipo Price
nasdaq_nsmequities_basicplus_itch_v1_0.ipo_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Ipo Price
nasdaq_nsmequities_basicplus_itch_v1_0.ipo_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_basicplus_itch_v1_0.ipo_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_nsmequities_basicplus_itch_v1_0.ipo_price.translate(raw)
  local display = nasdaq_nsmequities_basicplus_itch_v1_0.ipo_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.ipo_price, range, value, display)

  return offset + length, value
end

-- Ipo Quotation Release Qualifier
nasdaq_nsmequities_basicplus_itch_v1_0.ipo_quotation_release_qualifier = {}

-- Size: Ipo Quotation Release Qualifier
nasdaq_nsmequities_basicplus_itch_v1_0.ipo_quotation_release_qualifier.size = 1

-- Display: Ipo Quotation Release Qualifier
nasdaq_nsmequities_basicplus_itch_v1_0.ipo_quotation_release_qualifier.labels = {
  ["A"] = "Ipo Quotation Release Qualifier: Anticipated Quotation Release Time (A)",
  ["C"] = "Ipo Quotation Release Qualifier: Ipo Release Canceled Or Postponed (C)",
}

nasdaq_nsmequities_basicplus_itch_v1_0.ipo_quotation_release_qualifier.display = function(value)
  return nasdaq_nsmequities_basicplus_itch_v1_0.ipo_quotation_release_qualifier.labels[value] or "Ipo Quotation Release Qualifier: Unknown("..value..")"
end

-- Dissect: Ipo Quotation Release Qualifier
nasdaq_nsmequities_basicplus_itch_v1_0.ipo_quotation_release_qualifier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_basicplus_itch_v1_0.ipo_quotation_release_qualifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_basicplus_itch_v1_0.ipo_quotation_release_qualifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.ipo_quotation_release_qualifier, range, value, display)

  return offset + length, value
end

-- Ipo Quotation Release Time
nasdaq_nsmequities_basicplus_itch_v1_0.ipo_quotation_release_time = {}

-- Size: Ipo Quotation Release Time
nasdaq_nsmequities_basicplus_itch_v1_0.ipo_quotation_release_time.size = 4

-- Dissect: Ipo Quotation Release Time
nasdaq_nsmequities_basicplus_itch_v1_0.ipo_quotation_release_time.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_basicplus_itch_v1_0.ipo_quotation_release_time.size
  local range = buffer(offset, length)
  local value = range:uint()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.ipo_quotation_release_time
  if nasdaq_nsmequities_basicplus_itch_v1_0.absolute_time_base == 1 then field = omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.ipo_quotation_release_time_utc end

  local seconds = value
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Issue Classification
nasdaq_nsmequities_basicplus_itch_v1_0.issue_classification = {}

-- Size: Issue Classification
nasdaq_nsmequities_basicplus_itch_v1_0.issue_classification.size = 1

-- Display: Issue Classification
nasdaq_nsmequities_basicplus_itch_v1_0.issue_classification.labels = {
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
  ["V"] = "Issue Classification: Units Of Beneficial Interest (V)",
  ["W"] = "Issue Classification: Warrant (W)",
}

nasdaq_nsmequities_basicplus_itch_v1_0.issue_classification.display = function(value)
  return nasdaq_nsmequities_basicplus_itch_v1_0.issue_classification.labels[value] or "Issue Classification: Unknown("..value..")"
end

-- Dissect: Issue Classification
nasdaq_nsmequities_basicplus_itch_v1_0.issue_classification.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_basicplus_itch_v1_0.issue_classification.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_basicplus_itch_v1_0.issue_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.issue_classification, range, value, display)

  return offset + length, value
end

-- Issue Sub Type
nasdaq_nsmequities_basicplus_itch_v1_0.issue_sub_type = {}

-- Size: Issue Sub Type
nasdaq_nsmequities_basicplus_itch_v1_0.issue_sub_type.size = 2

-- Display: Issue Sub Type
nasdaq_nsmequities_basicplus_itch_v1_0.issue_sub_type.labels = {
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

nasdaq_nsmequities_basicplus_itch_v1_0.issue_sub_type.display = function(value)
  return nasdaq_nsmequities_basicplus_itch_v1_0.issue_sub_type.labels[value] or "Issue Sub Type: Unknown("..value..")"
end

-- Dissect: Issue Sub Type
nasdaq_nsmequities_basicplus_itch_v1_0.issue_sub_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_basicplus_itch_v1_0.issue_sub_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_basicplus_itch_v1_0.issue_sub_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.issue_sub_type, range, value, display)

  return offset + length, value
end

-- Level 1
nasdaq_nsmequities_basicplus_itch_v1_0.level_1 = {}

-- Size: Level 1
nasdaq_nsmequities_basicplus_itch_v1_0.level_1.size = 8

-- Display: Level 1
nasdaq_nsmequities_basicplus_itch_v1_0.level_1.display = function(value)
  return "Level 1: "..value
end

-- Translate: Level 1
nasdaq_nsmequities_basicplus_itch_v1_0.level_1.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Level 1
nasdaq_nsmequities_basicplus_itch_v1_0.level_1.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_basicplus_itch_v1_0.level_1.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_nsmequities_basicplus_itch_v1_0.level_1.translate(raw)
  local display = nasdaq_nsmequities_basicplus_itch_v1_0.level_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.level_1, range, value, display)

  return offset + length, value
end

-- Level 2
nasdaq_nsmequities_basicplus_itch_v1_0.level_2 = {}

-- Size: Level 2
nasdaq_nsmequities_basicplus_itch_v1_0.level_2.size = 8

-- Display: Level 2
nasdaq_nsmequities_basicplus_itch_v1_0.level_2.display = function(value)
  return "Level 2: "..value
end

-- Translate: Level 2
nasdaq_nsmequities_basicplus_itch_v1_0.level_2.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Level 2
nasdaq_nsmequities_basicplus_itch_v1_0.level_2.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_basicplus_itch_v1_0.level_2.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_nsmequities_basicplus_itch_v1_0.level_2.translate(raw)
  local display = nasdaq_nsmequities_basicplus_itch_v1_0.level_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.level_2, range, value, display)

  return offset + length, value
end

-- Level 3
nasdaq_nsmequities_basicplus_itch_v1_0.level_3 = {}

-- Size: Level 3
nasdaq_nsmequities_basicplus_itch_v1_0.level_3.size = 8

-- Display: Level 3
nasdaq_nsmequities_basicplus_itch_v1_0.level_3.display = function(value)
  return "Level 3: "..value
end

-- Translate: Level 3
nasdaq_nsmequities_basicplus_itch_v1_0.level_3.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Level 3
nasdaq_nsmequities_basicplus_itch_v1_0.level_3.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_basicplus_itch_v1_0.level_3.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_nsmequities_basicplus_itch_v1_0.level_3.translate(raw)
  local display = nasdaq_nsmequities_basicplus_itch_v1_0.level_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.level_3, range, value, display)

  return offset + length, value
end

-- Luld Reference Price Tier
nasdaq_nsmequities_basicplus_itch_v1_0.luld_reference_price_tier = {}

-- Size: Luld Reference Price Tier
nasdaq_nsmequities_basicplus_itch_v1_0.luld_reference_price_tier.size = 1

-- Display: Luld Reference Price Tier
nasdaq_nsmequities_basicplus_itch_v1_0.luld_reference_price_tier.display = function(value)
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
nasdaq_nsmequities_basicplus_itch_v1_0.luld_reference_price_tier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_basicplus_itch_v1_0.luld_reference_price_tier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_basicplus_itch_v1_0.luld_reference_price_tier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.luld_reference_price_tier, range, value, display)

  return offset + length, value
end

-- Market Category
nasdaq_nsmequities_basicplus_itch_v1_0.market_category = {}

-- Size: Market Category
nasdaq_nsmequities_basicplus_itch_v1_0.market_category.size = 1

-- Display: Market Category
nasdaq_nsmequities_basicplus_itch_v1_0.market_category.display = function(value)
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
    return "Market Category: Investors Exchange (V)"
  end
  if value == " " then
    return "Market Category: Not Available (<whitespace>)"
  end

  return "Market Category: Unknown("..value..")"
end

-- Dissect: Market Category
nasdaq_nsmequities_basicplus_itch_v1_0.market_category.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_basicplus_itch_v1_0.market_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_basicplus_itch_v1_0.market_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.market_category, range, value, display)

  return offset + length, value
end

-- Market Code
nasdaq_nsmequities_basicplus_itch_v1_0.market_code = {}

-- Size: Market Code
nasdaq_nsmequities_basicplus_itch_v1_0.market_code.size = 1

-- Display: Market Code
nasdaq_nsmequities_basicplus_itch_v1_0.market_code.labels = {
  ["Q"] = "Market Code: Nasdaq (Q)",
  ["B"] = "Market Code: Nasdaq Texas (B)",
  ["X"] = "Market Code: Psx (X)",
}

nasdaq_nsmequities_basicplus_itch_v1_0.market_code.display = function(value)
  return nasdaq_nsmequities_basicplus_itch_v1_0.market_code.labels[value] or "Market Code: Unknown("..value..")"
end

-- Dissect: Market Code
nasdaq_nsmequities_basicplus_itch_v1_0.market_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_basicplus_itch_v1_0.market_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_basicplus_itch_v1_0.market_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.market_code, range, value, display)

  return offset + length, value
end

-- Message Count
nasdaq_nsmequities_basicplus_itch_v1_0.message_count = {}

-- Size: Message Count
nasdaq_nsmequities_basicplus_itch_v1_0.message_count.size = 2

-- Display: Message Count
nasdaq_nsmequities_basicplus_itch_v1_0.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_nsmequities_basicplus_itch_v1_0.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_basicplus_itch_v1_0.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_basicplus_itch_v1_0.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
nasdaq_nsmequities_basicplus_itch_v1_0.message_length = {}

-- Size: Message Length
nasdaq_nsmequities_basicplus_itch_v1_0.message_length.size = 2

-- Display: Message Length
nasdaq_nsmequities_basicplus_itch_v1_0.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_nsmequities_basicplus_itch_v1_0.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_basicplus_itch_v1_0.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_basicplus_itch_v1_0.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
nasdaq_nsmequities_basicplus_itch_v1_0.message_type = {}

-- Size: Message Type
nasdaq_nsmequities_basicplus_itch_v1_0.message_type.size = 1

-- Display: Message Type
nasdaq_nsmequities_basicplus_itch_v1_0.message_type.labels = {
  ["S"] = "Message Type: System Event Message (S)",
  ["Q"] = "Message Type: Consolidated Quotation Message (Q)",
  ["N"] = "Message Type: Retail Price Improvement Message (N)",
  ["H"] = "Message Type: Trading Action Message (H)",
  ["Y"] = "Message Type: Reg Sho Restriction Message (Y)",
  ["R"] = "Message Type: Stock Directory Message (R)",
  ["V"] = "Message Type: Mwcb Decline Level Message (V)",
  ["W"] = "Message Type: Mwcb Status Message (W)",
  ["K"] = "Message Type: Ipo Quoting Period Update (K)",
  ["h"] = "Message Type: Operational Halt Message (h)",
}

nasdaq_nsmequities_basicplus_itch_v1_0.message_type.display = function(value)
  return nasdaq_nsmequities_basicplus_itch_v1_0.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_nsmequities_basicplus_itch_v1_0.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_basicplus_itch_v1_0.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_basicplus_itch_v1_0.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Operational Halt Action
nasdaq_nsmequities_basicplus_itch_v1_0.operational_halt_action = {}

-- Size: Operational Halt Action
nasdaq_nsmequities_basicplus_itch_v1_0.operational_halt_action.size = 1

-- Display: Operational Halt Action
nasdaq_nsmequities_basicplus_itch_v1_0.operational_halt_action.labels = {
  ["H"] = "Operational Halt Action: Halted (H)",
  ["T"] = "Operational Halt Action: Trading Resumed (T)",
}

nasdaq_nsmequities_basicplus_itch_v1_0.operational_halt_action.display = function(value)
  return nasdaq_nsmequities_basicplus_itch_v1_0.operational_halt_action.labels[value] or "Operational Halt Action: Unknown("..value..")"
end

-- Dissect: Operational Halt Action
nasdaq_nsmequities_basicplus_itch_v1_0.operational_halt_action.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_basicplus_itch_v1_0.operational_halt_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_basicplus_itch_v1_0.operational_halt_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.operational_halt_action, range, value, display)

  return offset + length, value
end

-- Reason Code
nasdaq_nsmequities_basicplus_itch_v1_0.reason_code = {}

-- Size: Reason Code
nasdaq_nsmequities_basicplus_itch_v1_0.reason_code.size = 4

-- Display: Reason Code
nasdaq_nsmequities_basicplus_itch_v1_0.reason_code.display = function(value)
  if value == "T1" then
    return "Reason Code: Halt News Pending (T1)"
  end
  if value == "T2" then
    return "Reason Code: Halt News Disseminated (T2)"
  end
  if value == "T5" then
    return "Reason Code: Single Security Trading Pause In Effect (T5)"
  end
  if value == "T6" then
    return "Reason Code: Regulatory Halt Extraordinary Market Activity (T6)"
  end
  if value == "T8" then
    return "Reason Code: Halt Etf (T8)"
  end
  if value == "T12" then
    return "Reason Code: Trading Halted (T12)"
  end
  if value == "H4" then
    return "Reason Code: Halt Non Compliance (H4)"
  end
  if value == "H9" then
    return "Reason Code: Halt Filings Not Current (H9)"
  end
  if value == "H10" then
    return "Reason Code: Halt Sec Trading Suspension (H10)"
  end
  if value == "H11" then
    return "Reason Code: Halt Regulatory Concern (H11)"
  end
  if value == "O1" then
    return "Reason Code: Operations Halt (O1)"
  end
  if value == "LUDP" then
    return "Reason Code: Volatility Trading Pause (LUDP)"
  end
  if value == "LUDS" then
    return "Reason Code: Straddle Condition Trading Pause (LUDS)"
  end
  if value == "MWC1" then
    return "Reason Code: Circuit Breaker Halt Level 1 (MWC1)"
  end
  if value == "MWC2" then
    return "Reason Code: Circuit Breaker Halt Level 2 (MWC2)"
  end
  if value == "MWC3" then
    return "Reason Code: Circuit Breaker Halt Level 3 (MWC3)"
  end
  if value == "MWC0" then
    return "Reason Code: Carry Over Circuit Breaker Halt (MWC0)"
  end
  if value == "IPO1" then
    return "Reason Code: Ipo Issue (IPO1)"
  end
  if value == "M1" then
    return "Reason Code: Corporate Action (M1)"
  end
  if value == "M2" then
    return "Reason Code: Not Available (M2)"
  end
  if value == "T3" then
    return "Reason Code: News And Resumption Times (T3)"
  end
  if value == "T7" then
    return "Reason Code: Trading Pause Quotation Only Period (T7)"
  end
  if value == "R4" then
    return "Reason Code: Qualifications Issues Resolved (R4)"
  end
  if value == "R9" then
    return "Reason Code: Filing Requirements Satisfied (R9)"
  end
  if value == "C3" then
    return "Reason Code: Issuer News Not Forthcoming (C3)"
  end
  if value == "C4" then
    return "Reason Code: Qualifications Halt Ended (C4)"
  end
  if value == "C9" then
    return "Reason Code: Qualifications Halt Concluded (C9)"
  end
  if value == "C11" then
    return "Reason Code: Trade Halt Concluded By Other Regulatory Authority (C11)"
  end
  if value == "MWCQ" then
    return "Reason Code: Market Wide Circuit Breaker Resumption (MWCQ)"
  end
  if value == "R1" then
    return "Reason Code: New Issue Available (R1)"
  end
  if value == "R2" then
    return "Reason Code: Issue Available (R2)"
  end
  if value == "IPOQ" then
    return "Reason Code: Ipo Security Released (IPOQ)"
  end
  if value == "IPOE" then
    return "Reason Code: Ipo Security Positioning Window Extension (IPOE)"
  end
  if value == " " then
    return "Reason Code: Reason Not Available (<whitespace>)"
  end

  return "Reason Code: Unknown("..value..")"
end

-- Dissect: Reason Code
nasdaq_nsmequities_basicplus_itch_v1_0.reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_basicplus_itch_v1_0.reason_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_basicplus_itch_v1_0.reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.reason_code, range, value, display)

  return offset + length, value
end

-- Reg Sho Action
nasdaq_nsmequities_basicplus_itch_v1_0.reg_sho_action = {}

-- Size: Reg Sho Action
nasdaq_nsmequities_basicplus_itch_v1_0.reg_sho_action.size = 1

-- Display: Reg Sho Action
nasdaq_nsmequities_basicplus_itch_v1_0.reg_sho_action.labels = {
  ["0"] = "Reg Sho Action: No Price Test (0)",
  ["1"] = "Reg Sho Action: Reg Sho Short Sale Price Test Restriction (1)",
  ["2"] = "Reg Sho Action: Test Restriction Remains (2)",
}

nasdaq_nsmequities_basicplus_itch_v1_0.reg_sho_action.display = function(value)
  return nasdaq_nsmequities_basicplus_itch_v1_0.reg_sho_action.labels[value] or "Reg Sho Action: Unknown("..value..")"
end

-- Dissect: Reg Sho Action
nasdaq_nsmequities_basicplus_itch_v1_0.reg_sho_action.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_basicplus_itch_v1_0.reg_sho_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_basicplus_itch_v1_0.reg_sho_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Round Lot Size
nasdaq_nsmequities_basicplus_itch_v1_0.round_lot_size = {}

-- Size: Round Lot Size
nasdaq_nsmequities_basicplus_itch_v1_0.round_lot_size.size = 4

-- Display: Round Lot Size
nasdaq_nsmequities_basicplus_itch_v1_0.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
nasdaq_nsmequities_basicplus_itch_v1_0.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_basicplus_itch_v1_0.round_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_basicplus_itch_v1_0.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Round Lots Only
nasdaq_nsmequities_basicplus_itch_v1_0.round_lots_only = {}

-- Size: Round Lots Only
nasdaq_nsmequities_basicplus_itch_v1_0.round_lots_only.size = 1

-- Display: Round Lots Only
nasdaq_nsmequities_basicplus_itch_v1_0.round_lots_only.labels = {
  ["Y"] = "Round Lots Only: Yes (Y)",
  ["N"] = "Round Lots Only: No (N)",
}

nasdaq_nsmequities_basicplus_itch_v1_0.round_lots_only.display = function(value)
  return nasdaq_nsmequities_basicplus_itch_v1_0.round_lots_only.labels[value] or "Round Lots Only: Unknown("..value..")"
end

-- Dissect: Round Lots Only
nasdaq_nsmequities_basicplus_itch_v1_0.round_lots_only.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_basicplus_itch_v1_0.round_lots_only.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_basicplus_itch_v1_0.round_lots_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.round_lots_only, range, value, display)

  return offset + length, value
end

-- Sell Side Rpi Exchanges
nasdaq_nsmequities_basicplus_itch_v1_0.sell_side_rpi_exchanges = {}

-- Size: Sell Side Rpi Exchanges
nasdaq_nsmequities_basicplus_itch_v1_0.sell_side_rpi_exchanges.size = 1

-- Display: Sell Side Rpi Exchanges
nasdaq_nsmequities_basicplus_itch_v1_0.sell_side_rpi_exchanges.labels = {
  [1] = "Sell Side Rpi Exchanges: Nasdaq (1)",
  [2] = "Sell Side Rpi Exchanges: Nasdaq Texas (2)",
  [3] = "Sell Side Rpi Exchanges: Nasdaq And Nasdaq Texas (3)",
  [4] = "Sell Side Rpi Exchanges: Nasdaq Psx (4)",
  [5] = "Sell Side Rpi Exchanges: Nasdaq And Nasdaq Psx (5)",
  [6] = "Sell Side Rpi Exchanges: Nasdaq Texas And Nasdaq Psx (6)",
  [7] = "Sell Side Rpi Exchanges: Nasdaq Nasdaq Texas And Nasdaq Psx (7)",
}

nasdaq_nsmequities_basicplus_itch_v1_0.sell_side_rpi_exchanges.display = function(value)
  return nasdaq_nsmequities_basicplus_itch_v1_0.sell_side_rpi_exchanges.labels[value] or "Sell Side Rpi Exchanges: Unknown("..value..")"
end

-- Dissect: Sell Side Rpi Exchanges
nasdaq_nsmequities_basicplus_itch_v1_0.sell_side_rpi_exchanges.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_basicplus_itch_v1_0.sell_side_rpi_exchanges.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_basicplus_itch_v1_0.sell_side_rpi_exchanges.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.sell_side_rpi_exchanges, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_nsmequities_basicplus_itch_v1_0.sequence_number = {}

-- Size: Sequence Number
nasdaq_nsmequities_basicplus_itch_v1_0.sequence_number.size = 8

-- Display: Sequence Number
nasdaq_nsmequities_basicplus_itch_v1_0.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_nsmequities_basicplus_itch_v1_0.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_basicplus_itch_v1_0.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_basicplus_itch_v1_0.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_nsmequities_basicplus_itch_v1_0.session = {}

-- Size: Session
nasdaq_nsmequities_basicplus_itch_v1_0.session.size = 10

-- Display: Session
nasdaq_nsmequities_basicplus_itch_v1_0.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
nasdaq_nsmequities_basicplus_itch_v1_0.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_basicplus_itch_v1_0.session.size
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

  local display = nasdaq_nsmequities_basicplus_itch_v1_0.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.session, range, value, display)

  return offset + length, value
end

-- Short Sale Threshold Indicator
nasdaq_nsmequities_basicplus_itch_v1_0.short_sale_threshold_indicator = {}

-- Size: Short Sale Threshold Indicator
nasdaq_nsmequities_basicplus_itch_v1_0.short_sale_threshold_indicator.size = 1

-- Display: Short Sale Threshold Indicator
nasdaq_nsmequities_basicplus_itch_v1_0.short_sale_threshold_indicator.display = function(value)
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
nasdaq_nsmequities_basicplus_itch_v1_0.short_sale_threshold_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_basicplus_itch_v1_0.short_sale_threshold_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_basicplus_itch_v1_0.short_sale_threshold_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.short_sale_threshold_indicator, range, value, display)

  return offset + length, value
end

-- Stock
nasdaq_nsmequities_basicplus_itch_v1_0.stock = {}

-- Size: Stock
nasdaq_nsmequities_basicplus_itch_v1_0.stock.size = 8

-- Display: Stock
nasdaq_nsmequities_basicplus_itch_v1_0.stock.display = function(value)
  return "Stock: "..value
end

-- Dissect: Stock
nasdaq_nsmequities_basicplus_itch_v1_0.stock.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_basicplus_itch_v1_0.stock.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_basicplus_itch_v1_0.stock.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.stock, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_nsmequities_basicplus_itch_v1_0.timestamp = {}

-- Size: Timestamp
nasdaq_nsmequities_basicplus_itch_v1_0.timestamp.size = 8

-- Dissect: Timestamp
nasdaq_nsmequities_basicplus_itch_v1_0.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_basicplus_itch_v1_0.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.timestamp
  if nasdaq_nsmequities_basicplus_itch_v1_0.absolute_time_base == 1 then field = omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.timestamp_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Trading State
nasdaq_nsmequities_basicplus_itch_v1_0.trading_state = {}

-- Size: Trading State
nasdaq_nsmequities_basicplus_itch_v1_0.trading_state.size = 1

-- Display: Trading State
nasdaq_nsmequities_basicplus_itch_v1_0.trading_state.labels = {
  ["H"] = "Trading State: Halted (H)",
  ["P"] = "Trading State: Paused (P)",
  ["Q"] = "Trading State: Quotation Only Period (Q)",
  ["T"] = "Trading State: Trading (T)",
}

nasdaq_nsmequities_basicplus_itch_v1_0.trading_state.display = function(value)
  return nasdaq_nsmequities_basicplus_itch_v1_0.trading_state.labels[value] or "Trading State: Unknown("..value..")"
end

-- Dissect: Trading State
nasdaq_nsmequities_basicplus_itch_v1_0.trading_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_basicplus_itch_v1_0.trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_basicplus_itch_v1_0.trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.trading_state, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq NsmEquities BasicPlus Itch 1.0
-----------------------------------------------------------------------

-- Operational Halt Message
nasdaq_nsmequities_basicplus_itch_v1_0.operational_halt_message = {}

-- Size: Operational Halt Message
nasdaq_nsmequities_basicplus_itch_v1_0.operational_halt_message.size =
  nasdaq_nsmequities_basicplus_itch_v1_0.timestamp.size + 
  nasdaq_nsmequities_basicplus_itch_v1_0.stock.size + 
  nasdaq_nsmequities_basicplus_itch_v1_0.market_code.size + 
  nasdaq_nsmequities_basicplus_itch_v1_0.operational_halt_action.size

-- Display: Operational Halt Message
nasdaq_nsmequities_basicplus_itch_v1_0.operational_halt_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Operational Halt Message
nasdaq_nsmequities_basicplus_itch_v1_0.operational_halt_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = nasdaq_nsmequities_basicplus_itch_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_nsmequities_basicplus_itch_v1_0.stock.dissect(buffer, index, packet, parent)

  -- Market Code: Alpha
  index, market_code = nasdaq_nsmequities_basicplus_itch_v1_0.market_code.dissect(buffer, index, packet, parent)

  -- Operational Halt Action: Alpha
  index, operational_halt_action = nasdaq_nsmequities_basicplus_itch_v1_0.operational_halt_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Operational Halt Message
nasdaq_nsmequities_basicplus_itch_v1_0.operational_halt_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.operational_halt_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_basicplus_itch_v1_0.operational_halt_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_basicplus_itch_v1_0.operational_halt_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_basicplus_itch_v1_0.operational_halt_message.fields(buffer, offset, packet, parent)
  end
end

-- Ipo Quoting Period Update
nasdaq_nsmequities_basicplus_itch_v1_0.ipo_quoting_period_update = {}

-- Size: Ipo Quoting Period Update
nasdaq_nsmequities_basicplus_itch_v1_0.ipo_quoting_period_update.size =
  nasdaq_nsmequities_basicplus_itch_v1_0.timestamp.size + 
  nasdaq_nsmequities_basicplus_itch_v1_0.stock.size + 
  nasdaq_nsmequities_basicplus_itch_v1_0.ipo_quotation_release_time.size + 
  nasdaq_nsmequities_basicplus_itch_v1_0.ipo_quotation_release_qualifier.size + 
  nasdaq_nsmequities_basicplus_itch_v1_0.ipo_price.size

-- Display: Ipo Quoting Period Update
nasdaq_nsmequities_basicplus_itch_v1_0.ipo_quoting_period_update.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ipo Quoting Period Update
nasdaq_nsmequities_basicplus_itch_v1_0.ipo_quoting_period_update.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = nasdaq_nsmequities_basicplus_itch_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_nsmequities_basicplus_itch_v1_0.stock.dissect(buffer, index, packet, parent)

  -- Ipo Quotation Release Time: Integer
  index, ipo_quotation_release_time = nasdaq_nsmequities_basicplus_itch_v1_0.ipo_quotation_release_time.dissect(buffer, index, packet, parent)

  -- Ipo Quotation Release Qualifier: Alpha
  index, ipo_quotation_release_qualifier = nasdaq_nsmequities_basicplus_itch_v1_0.ipo_quotation_release_qualifier.dissect(buffer, index, packet, parent)

  -- Ipo Price: Price (6)
  index, ipo_price = nasdaq_nsmequities_basicplus_itch_v1_0.ipo_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ipo Quoting Period Update
nasdaq_nsmequities_basicplus_itch_v1_0.ipo_quoting_period_update.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.ipo_quoting_period_update, buffer(offset, 0))
    local index = nasdaq_nsmequities_basicplus_itch_v1_0.ipo_quoting_period_update.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_basicplus_itch_v1_0.ipo_quoting_period_update.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_basicplus_itch_v1_0.ipo_quoting_period_update.fields(buffer, offset, packet, parent)
  end
end

-- Mwcb Status Message
nasdaq_nsmequities_basicplus_itch_v1_0.mwcb_status_message = {}

-- Size: Mwcb Status Message
nasdaq_nsmequities_basicplus_itch_v1_0.mwcb_status_message.size =
  nasdaq_nsmequities_basicplus_itch_v1_0.timestamp.size + 
  nasdaq_nsmequities_basicplus_itch_v1_0.breached_level.size

-- Display: Mwcb Status Message
nasdaq_nsmequities_basicplus_itch_v1_0.mwcb_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mwcb Status Message
nasdaq_nsmequities_basicplus_itch_v1_0.mwcb_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = nasdaq_nsmequities_basicplus_itch_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Breached Level: Alpha
  index, breached_level = nasdaq_nsmequities_basicplus_itch_v1_0.breached_level.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mwcb Status Message
nasdaq_nsmequities_basicplus_itch_v1_0.mwcb_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.mwcb_status_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_basicplus_itch_v1_0.mwcb_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_basicplus_itch_v1_0.mwcb_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_basicplus_itch_v1_0.mwcb_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Mwcb Decline Level Message
nasdaq_nsmequities_basicplus_itch_v1_0.mwcb_decline_level_message = {}

-- Size: Mwcb Decline Level Message
nasdaq_nsmequities_basicplus_itch_v1_0.mwcb_decline_level_message.size =
  nasdaq_nsmequities_basicplus_itch_v1_0.timestamp.size + 
  nasdaq_nsmequities_basicplus_itch_v1_0.level_1.size + 
  nasdaq_nsmequities_basicplus_itch_v1_0.level_2.size + 
  nasdaq_nsmequities_basicplus_itch_v1_0.level_3.size

-- Display: Mwcb Decline Level Message
nasdaq_nsmequities_basicplus_itch_v1_0.mwcb_decline_level_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mwcb Decline Level Message
nasdaq_nsmequities_basicplus_itch_v1_0.mwcb_decline_level_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = nasdaq_nsmequities_basicplus_itch_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Level 1: Price (8)
  index, level_1 = nasdaq_nsmequities_basicplus_itch_v1_0.level_1.dissect(buffer, index, packet, parent)

  -- Level 2: Price (8)
  index, level_2 = nasdaq_nsmequities_basicplus_itch_v1_0.level_2.dissect(buffer, index, packet, parent)

  -- Level 3: Price (8)
  index, level_3 = nasdaq_nsmequities_basicplus_itch_v1_0.level_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mwcb Decline Level Message
nasdaq_nsmequities_basicplus_itch_v1_0.mwcb_decline_level_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.mwcb_decline_level_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_basicplus_itch_v1_0.mwcb_decline_level_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_basicplus_itch_v1_0.mwcb_decline_level_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_basicplus_itch_v1_0.mwcb_decline_level_message.fields(buffer, offset, packet, parent)
  end
end

-- Stock Directory Message
nasdaq_nsmequities_basicplus_itch_v1_0.stock_directory_message = {}

-- Size: Stock Directory Message
nasdaq_nsmequities_basicplus_itch_v1_0.stock_directory_message.size =
  nasdaq_nsmequities_basicplus_itch_v1_0.timestamp.size + 
  nasdaq_nsmequities_basicplus_itch_v1_0.stock.size + 
  nasdaq_nsmequities_basicplus_itch_v1_0.market_category.size + 
  nasdaq_nsmequities_basicplus_itch_v1_0.financial_status_indicator.size + 
  nasdaq_nsmequities_basicplus_itch_v1_0.round_lot_size.size + 
  nasdaq_nsmequities_basicplus_itch_v1_0.round_lots_only.size + 
  nasdaq_nsmequities_basicplus_itch_v1_0.issue_classification.size + 
  nasdaq_nsmequities_basicplus_itch_v1_0.issue_sub_type.size + 
  nasdaq_nsmequities_basicplus_itch_v1_0.authenticity.size + 
  nasdaq_nsmequities_basicplus_itch_v1_0.short_sale_threshold_indicator.size + 
  nasdaq_nsmequities_basicplus_itch_v1_0.ipo_flag.size + 
  nasdaq_nsmequities_basicplus_itch_v1_0.luld_reference_price_tier.size + 
  nasdaq_nsmequities_basicplus_itch_v1_0.etp_flag.size + 
  nasdaq_nsmequities_basicplus_itch_v1_0.etp_leverage_factor.size + 
  nasdaq_nsmequities_basicplus_itch_v1_0.inverse_indicator.size

-- Display: Stock Directory Message
nasdaq_nsmequities_basicplus_itch_v1_0.stock_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Directory Message
nasdaq_nsmequities_basicplus_itch_v1_0.stock_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = nasdaq_nsmequities_basicplus_itch_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_nsmequities_basicplus_itch_v1_0.stock.dissect(buffer, index, packet, parent)

  -- Market Category: Alpha
  index, market_category = nasdaq_nsmequities_basicplus_itch_v1_0.market_category.dissect(buffer, index, packet, parent)

  -- Financial Status Indicator: Alpha
  index, financial_status_indicator = nasdaq_nsmequities_basicplus_itch_v1_0.financial_status_indicator.dissect(buffer, index, packet, parent)

  -- Round Lot Size: Integer
  index, round_lot_size = nasdaq_nsmequities_basicplus_itch_v1_0.round_lot_size.dissect(buffer, index, packet, parent)

  -- Round Lots Only: Alpha
  index, round_lots_only = nasdaq_nsmequities_basicplus_itch_v1_0.round_lots_only.dissect(buffer, index, packet, parent)

  -- Issue Classification: Alpha
  index, issue_classification = nasdaq_nsmequities_basicplus_itch_v1_0.issue_classification.dissect(buffer, index, packet, parent)

  -- Issue Sub Type: Alpha
  index, issue_sub_type = nasdaq_nsmequities_basicplus_itch_v1_0.issue_sub_type.dissect(buffer, index, packet, parent)

  -- Authenticity: Alpha
  index, authenticity = nasdaq_nsmequities_basicplus_itch_v1_0.authenticity.dissect(buffer, index, packet, parent)

  -- Short Sale Threshold Indicator: Alpha
  index, short_sale_threshold_indicator = nasdaq_nsmequities_basicplus_itch_v1_0.short_sale_threshold_indicator.dissect(buffer, index, packet, parent)

  -- Ipo Flag: Alpha
  index, ipo_flag = nasdaq_nsmequities_basicplus_itch_v1_0.ipo_flag.dissect(buffer, index, packet, parent)

  -- Luld Reference Price Tier: Alpha
  index, luld_reference_price_tier = nasdaq_nsmequities_basicplus_itch_v1_0.luld_reference_price_tier.dissect(buffer, index, packet, parent)

  -- Etp Flag: Alpha
  index, etp_flag = nasdaq_nsmequities_basicplus_itch_v1_0.etp_flag.dissect(buffer, index, packet, parent)

  -- Etp Leverage Factor: Integer
  index, etp_leverage_factor = nasdaq_nsmequities_basicplus_itch_v1_0.etp_leverage_factor.dissect(buffer, index, packet, parent)

  -- Inverse Indicator: Alpha
  index, inverse_indicator = nasdaq_nsmequities_basicplus_itch_v1_0.inverse_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Directory Message
nasdaq_nsmequities_basicplus_itch_v1_0.stock_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.stock_directory_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_basicplus_itch_v1_0.stock_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_basicplus_itch_v1_0.stock_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_basicplus_itch_v1_0.stock_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Reg Sho Restriction Message
nasdaq_nsmequities_basicplus_itch_v1_0.reg_sho_restriction_message = {}

-- Size: Reg Sho Restriction Message
nasdaq_nsmequities_basicplus_itch_v1_0.reg_sho_restriction_message.size =
  nasdaq_nsmequities_basicplus_itch_v1_0.timestamp.size + 
  nasdaq_nsmequities_basicplus_itch_v1_0.stock.size + 
  nasdaq_nsmequities_basicplus_itch_v1_0.reg_sho_action.size

-- Display: Reg Sho Restriction Message
nasdaq_nsmequities_basicplus_itch_v1_0.reg_sho_restriction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reg Sho Restriction Message
nasdaq_nsmequities_basicplus_itch_v1_0.reg_sho_restriction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = nasdaq_nsmequities_basicplus_itch_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_nsmequities_basicplus_itch_v1_0.stock.dissect(buffer, index, packet, parent)

  -- Reg Sho Action: Alpha
  index, reg_sho_action = nasdaq_nsmequities_basicplus_itch_v1_0.reg_sho_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reg Sho Restriction Message
nasdaq_nsmequities_basicplus_itch_v1_0.reg_sho_restriction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.reg_sho_restriction_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_basicplus_itch_v1_0.reg_sho_restriction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_basicplus_itch_v1_0.reg_sho_restriction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_basicplus_itch_v1_0.reg_sho_restriction_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Action Message
nasdaq_nsmequities_basicplus_itch_v1_0.trading_action_message = {}

-- Size: Trading Action Message
nasdaq_nsmequities_basicplus_itch_v1_0.trading_action_message.size =
  nasdaq_nsmequities_basicplus_itch_v1_0.timestamp.size + 
  nasdaq_nsmequities_basicplus_itch_v1_0.stock.size + 
  nasdaq_nsmequities_basicplus_itch_v1_0.trading_state.size + 
  nasdaq_nsmequities_basicplus_itch_v1_0.reason_code.size

-- Display: Trading Action Message
nasdaq_nsmequities_basicplus_itch_v1_0.trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Action Message
nasdaq_nsmequities_basicplus_itch_v1_0.trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = nasdaq_nsmequities_basicplus_itch_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_nsmequities_basicplus_itch_v1_0.stock.dissect(buffer, index, packet, parent)

  -- Trading State: Alpha
  index, trading_state = nasdaq_nsmequities_basicplus_itch_v1_0.trading_state.dissect(buffer, index, packet, parent)

  -- Reason Code: Alpha
  index, reason_code = nasdaq_nsmequities_basicplus_itch_v1_0.reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Action Message
nasdaq_nsmequities_basicplus_itch_v1_0.trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.trading_action_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_basicplus_itch_v1_0.trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_basicplus_itch_v1_0.trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_basicplus_itch_v1_0.trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Retail Price Improvement Message
nasdaq_nsmequities_basicplus_itch_v1_0.retail_price_improvement_message = {}

-- Size: Retail Price Improvement Message
nasdaq_nsmequities_basicplus_itch_v1_0.retail_price_improvement_message.size =
  nasdaq_nsmequities_basicplus_itch_v1_0.timestamp.size + 
  nasdaq_nsmequities_basicplus_itch_v1_0.stock.size + 
  nasdaq_nsmequities_basicplus_itch_v1_0.buy_side_rpi_exchanges.size + 
  nasdaq_nsmequities_basicplus_itch_v1_0.sell_side_rpi_exchanges.size

-- Display: Retail Price Improvement Message
nasdaq_nsmequities_basicplus_itch_v1_0.retail_price_improvement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retail Price Improvement Message
nasdaq_nsmequities_basicplus_itch_v1_0.retail_price_improvement_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = nasdaq_nsmequities_basicplus_itch_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_nsmequities_basicplus_itch_v1_0.stock.dissect(buffer, index, packet, parent)

  -- Buy Side Rpi Exchanges: Integer
  index, buy_side_rpi_exchanges = nasdaq_nsmequities_basicplus_itch_v1_0.buy_side_rpi_exchanges.dissect(buffer, index, packet, parent)

  -- Sell Side Rpi Exchanges: Integer
  index, sell_side_rpi_exchanges = nasdaq_nsmequities_basicplus_itch_v1_0.sell_side_rpi_exchanges.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retail Price Improvement Message
nasdaq_nsmequities_basicplus_itch_v1_0.retail_price_improvement_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.retail_price_improvement_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_basicplus_itch_v1_0.retail_price_improvement_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_basicplus_itch_v1_0.retail_price_improvement_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_basicplus_itch_v1_0.retail_price_improvement_message.fields(buffer, offset, packet, parent)
  end
end

-- Consolidated Quotation Message
nasdaq_nsmequities_basicplus_itch_v1_0.consolidated_quotation_message = {}

-- Size: Consolidated Quotation Message
nasdaq_nsmequities_basicplus_itch_v1_0.consolidated_quotation_message.size =
  nasdaq_nsmequities_basicplus_itch_v1_0.timestamp.size + 
  nasdaq_nsmequities_basicplus_itch_v1_0.stock.size + 
  nasdaq_nsmequities_basicplus_itch_v1_0.best_bid_price.size + 
  nasdaq_nsmequities_basicplus_itch_v1_0.best_bid_size.size + 
  nasdaq_nsmequities_basicplus_itch_v1_0.best_offer_price.size + 
  nasdaq_nsmequities_basicplus_itch_v1_0.best_offer_size.size + 
  nasdaq_nsmequities_basicplus_itch_v1_0.best_bid_exchanges.size + 
  nasdaq_nsmequities_basicplus_itch_v1_0.best_offer_exchanges.size

-- Display: Consolidated Quotation Message
nasdaq_nsmequities_basicplus_itch_v1_0.consolidated_quotation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Consolidated Quotation Message
nasdaq_nsmequities_basicplus_itch_v1_0.consolidated_quotation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = nasdaq_nsmequities_basicplus_itch_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_nsmequities_basicplus_itch_v1_0.stock.dissect(buffer, index, packet, parent)

  -- Best Bid Price: Price (6)
  index, best_bid_price = nasdaq_nsmequities_basicplus_itch_v1_0.best_bid_price.dissect(buffer, index, packet, parent)

  -- Best Bid Size: Integer
  index, best_bid_size = nasdaq_nsmequities_basicplus_itch_v1_0.best_bid_size.dissect(buffer, index, packet, parent)

  -- Best Offer Price: Price (6)
  index, best_offer_price = nasdaq_nsmequities_basicplus_itch_v1_0.best_offer_price.dissect(buffer, index, packet, parent)

  -- Best Offer Size: Integer
  index, best_offer_size = nasdaq_nsmequities_basicplus_itch_v1_0.best_offer_size.dissect(buffer, index, packet, parent)

  -- Best Bid Exchanges: Integer
  index, best_bid_exchanges = nasdaq_nsmequities_basicplus_itch_v1_0.best_bid_exchanges.dissect(buffer, index, packet, parent)

  -- Best Offer Exchanges: Integer
  index, best_offer_exchanges = nasdaq_nsmequities_basicplus_itch_v1_0.best_offer_exchanges.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Consolidated Quotation Message
nasdaq_nsmequities_basicplus_itch_v1_0.consolidated_quotation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.consolidated_quotation_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_basicplus_itch_v1_0.consolidated_quotation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_basicplus_itch_v1_0.consolidated_quotation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_basicplus_itch_v1_0.consolidated_quotation_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_nsmequities_basicplus_itch_v1_0.system_event_message = {}

-- Size: System Event Message
nasdaq_nsmequities_basicplus_itch_v1_0.system_event_message.size =
  nasdaq_nsmequities_basicplus_itch_v1_0.timestamp.size + 
  nasdaq_nsmequities_basicplus_itch_v1_0.event_code.size

-- Display: System Event Message
nasdaq_nsmequities_basicplus_itch_v1_0.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_nsmequities_basicplus_itch_v1_0.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = nasdaq_nsmequities_basicplus_itch_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: Alpha
  index, event_code = nasdaq_nsmequities_basicplus_itch_v1_0.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_nsmequities_basicplus_itch_v1_0.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_basicplus_itch_v1_0.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_basicplus_itch_v1_0.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_basicplus_itch_v1_0.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nasdaq_nsmequities_basicplus_itch_v1_0.payload = {}

-- Dissect: Payload
nasdaq_nsmequities_basicplus_itch_v1_0.payload.dispatch = {
  ["S"] = nasdaq_nsmequities_basicplus_itch_v1_0.system_event_message.dissect,
  ["Q"] = nasdaq_nsmequities_basicplus_itch_v1_0.consolidated_quotation_message.dissect,
  ["N"] = nasdaq_nsmequities_basicplus_itch_v1_0.retail_price_improvement_message.dissect,
  ["H"] = nasdaq_nsmequities_basicplus_itch_v1_0.trading_action_message.dissect,
  ["Y"] = nasdaq_nsmequities_basicplus_itch_v1_0.reg_sho_restriction_message.dissect,
  ["R"] = nasdaq_nsmequities_basicplus_itch_v1_0.stock_directory_message.dissect,
  ["V"] = nasdaq_nsmequities_basicplus_itch_v1_0.mwcb_decline_level_message.dissect,
  ["W"] = nasdaq_nsmequities_basicplus_itch_v1_0.mwcb_status_message.dissect,
  ["K"] = nasdaq_nsmequities_basicplus_itch_v1_0.ipo_quoting_period_update.dissect,
  ["h"] = nasdaq_nsmequities_basicplus_itch_v1_0.operational_halt_message.dissect,
}

nasdaq_nsmequities_basicplus_itch_v1_0.payload.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = nasdaq_nsmequities_basicplus_itch_v1_0.payload.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nasdaq_nsmequities_basicplus_itch_v1_0.message_header = {}

-- Size: Message Header
nasdaq_nsmequities_basicplus_itch_v1_0.message_header.size =
  nasdaq_nsmequities_basicplus_itch_v1_0.message_length.size + 
  nasdaq_nsmequities_basicplus_itch_v1_0.message_type.size

-- Display: Message Header
nasdaq_nsmequities_basicplus_itch_v1_0.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_nsmequities_basicplus_itch_v1_0.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_nsmequities_basicplus_itch_v1_0.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 10 values
  index, message_type = nasdaq_nsmequities_basicplus_itch_v1_0.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_nsmequities_basicplus_itch_v1_0.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.message_header, buffer(offset, 0))
    local index = nasdaq_nsmequities_basicplus_itch_v1_0.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_basicplus_itch_v1_0.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_basicplus_itch_v1_0.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_nsmequities_basicplus_itch_v1_0.message = {}

-- Read runtime size of: Message
nasdaq_nsmequities_basicplus_itch_v1_0.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 2):uint()

  return message_length + 2
end

-- Display: Message
nasdaq_nsmequities_basicplus_itch_v1_0.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_nsmequities_basicplus_itch_v1_0.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Implicit Message Sequence Number
  if message_index ~= nil and show.sequences and nasdaq_nsmequities_basicplus_itch_v1_0.packet_sequence ~= nil then
    local sequence = parent:add(omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.message_sequence_number, UInt64.new(nasdaq_nsmequities_basicplus_itch_v1_0.packet_sequence + message_index - 1))
    sequence:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_nsmequities_basicplus_itch_v1_0.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 10 branches
  index = nasdaq_nsmequities_basicplus_itch_v1_0.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_nsmequities_basicplus_itch_v1_0.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = nasdaq_nsmequities_basicplus_itch_v1_0.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.message, buffer(offset, 0))
    local current = nasdaq_nsmequities_basicplus_itch_v1_0.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_nsmequities_basicplus_itch_v1_0.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_basicplus_itch_v1_0.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- End Of Session
nasdaq_nsmequities_basicplus_itch_v1_0.end_of_session = {}

-- Display: End Of Session
nasdaq_nsmequities_basicplus_itch_v1_0.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
nasdaq_nsmequities_basicplus_itch_v1_0.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nsmequities_basicplus_itch_v1_0.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Heartbeat
nasdaq_nsmequities_basicplus_itch_v1_0.heartbeat = {}

-- Display: Heartbeat
nasdaq_nsmequities_basicplus_itch_v1_0.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
nasdaq_nsmequities_basicplus_itch_v1_0.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nsmequities_basicplus_itch_v1_0.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
nasdaq_nsmequities_basicplus_itch_v1_0.messages = {}

-- Dissect: Messages
nasdaq_nsmequities_basicplus_itch_v1_0.messages.dispatch = {
  [0] = nasdaq_nsmequities_basicplus_itch_v1_0.heartbeat.dissect,
  [65535] = nasdaq_nsmequities_basicplus_itch_v1_0.end_of_session.dissect,
}

nasdaq_nsmequities_basicplus_itch_v1_0.messages.dissect = function(buffer, offset, packet, parent, message_count)
  local dissect = nasdaq_nsmequities_basicplus_itch_v1_0.messages.dispatch[message_count]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    offset = nasdaq_nsmequities_basicplus_itch_v1_0.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end
end

-- Packet Header
nasdaq_nsmequities_basicplus_itch_v1_0.packet_header = {}

-- Size: Packet Header
nasdaq_nsmequities_basicplus_itch_v1_0.packet_header.size =
  nasdaq_nsmequities_basicplus_itch_v1_0.session.size + 
  nasdaq_nsmequities_basicplus_itch_v1_0.sequence_number.size + 
  nasdaq_nsmequities_basicplus_itch_v1_0.message_count.size

-- Display: Packet Header
nasdaq_nsmequities_basicplus_itch_v1_0.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_nsmequities_basicplus_itch_v1_0.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_nsmequities_basicplus_itch_v1_0.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = nasdaq_nsmequities_basicplus_itch_v1_0.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_nsmequities_basicplus_itch_v1_0.message_count.dissect(buffer, index, packet, parent)

  -- Sequence base for the packet's messages
  nasdaq_nsmequities_basicplus_itch_v1_0.packet_sequence = sequence_number

  return index
end

-- Dissect: Packet Header
nasdaq_nsmequities_basicplus_itch_v1_0.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_basicplus_itch_v1_0.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_nsmequities_basicplus_itch_v1_0.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_basicplus_itch_v1_0.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_basicplus_itch_v1_0.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_nsmequities_basicplus_itch_v1_0.packet = {}

-- Verify required size of Udp packet
nasdaq_nsmequities_basicplus_itch_v1_0.packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_nsmequities_basicplus_itch_v1_0.packet_header.size
end

-- Dissect Packet
nasdaq_nsmequities_basicplus_itch_v1_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_nsmequities_basicplus_itch_v1_0.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Messages: Runtime Type with 3 branches
  index = nasdaq_nsmequities_basicplus_itch_v1_0.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_nsmequities_basicplus_itch_v1_0.init()
end

-- Dissector for Nasdaq NsmEquities BasicPlus Itch 1.0
function omi_nasdaq_nsmequities_basicplus_itch_v1_0.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_nsmequities_basicplus_itch_v1_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_nsmequities_basicplus_itch_v1_0, buffer(), omi_nasdaq_nsmequities_basicplus_itch_v1_0.description, "("..buffer:len().." Bytes)")
  return nasdaq_nsmequities_basicplus_itch_v1_0.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
nasdaq_nsmequities_basicplus_itch_v1_0.packet.fingerprint = function(buffer)
  if buffer:len() < 20 then
    return false
  end

  local message_count = buffer(18, 2):uint()

  -- Heartbeat
  if message_count == 0 then
    return true
  end

  -- End Of Session
  if message_count == 65535 then
    return true
  end

  -- Message: carries the application messages, which tell this protocol from others sharing the session framing
  if buffer:len() < 23 then
    return false
  end

  local message_type = buffer(22, 1):string()

  -- System Event Message
  if message_type == "S" then
    return true
  end

  -- Consolidated Quotation Message
  if message_type == "Q" then
    return true
  end

  -- Retail Price Improvement Message
  if message_type == "N" then
    return true
  end

  -- Trading Action Message
  if message_type == "H" then
    return true
  end

  -- Reg Sho Restriction Message
  if message_type == "Y" then
    return true
  end

  -- Stock Directory Message
  if message_type == "R" then
    return true
  end

  -- Mwcb Decline Level Message
  if message_type == "V" then
    return true
  end

  -- Mwcb Status Message
  if message_type == "W" then
    return true
  end

  -- Ipo Quoting Period Update
  if message_type == "K" then
    return true
  end

  -- Operational Halt Message
  if message_type == "h" then
    return true
  end


  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq NsmEquities BasicPlus Itch 1.0 (Udp)
local function omi_nasdaq_nsmequities_basicplus_itch_v1_0_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_nsmequities_basicplus_itch_v1_0.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this udp packet message dispatch
  if not nasdaq_nsmequities_basicplus_itch_v1_0.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_nsmequities_basicplus_itch_v1_0
  omi_nasdaq_nsmequities_basicplus_itch_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq NsmEquities BasicPlus Itch 1.0
omi_nasdaq_nsmequities_basicplus_itch_v1_0:register_heuristic("udp", omi_nasdaq_nsmequities_basicplus_itch_v1_0_udp_heuristic)

-- Register Nasdaq NsmEquities BasicPlus Itch 1.0 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_nasdaq_nsmequities_basicplus_itch_v1_0)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 1.0
--   Date: Friday, May 29, 2026
--   Specification: Nasdaq_Basic_Plus_vF.pdf
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
