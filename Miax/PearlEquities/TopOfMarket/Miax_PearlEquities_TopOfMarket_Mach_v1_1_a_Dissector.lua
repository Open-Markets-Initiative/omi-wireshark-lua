-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Miax PearlEquities TopOfMarket Mach 1.1.a Protocol
local omi_miax_pearlequities_topofmarket_mach_v1_1_a = Proto("Omi.Miax.PearlEquities.TopOfMarket.Mach.v1.1.a", "Miax PearlEquities TopOfMarket Mach 1.1.a")

-- Protocol table
local miax_pearlequities_topofmarket_mach_v1_1_a = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Miax PearlEquities TopOfMarket Mach 1.1.a Fields
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.application_message = ProtoField.new("Application Message", "miax.pearlequities.topofmarket.mach.v1.1.a.applicationmessage", ftypes.STRING)
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.bid_price = ProtoField.new("Bid Price", "miax.pearlequities.topofmarket.mach.v1.1.a.bidprice", ftypes.DOUBLE, nil, nil, nil, "Displayed bid price.")
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.bid_size = ProtoField.new("Bid Size", "miax.pearlequities.topofmarket.mach.v1.1.a.bidsize", ftypes.UINT16, nil, nil, nil, "Aggregate size in shares at the displayed bid price.")
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.closing_time = ProtoField.new("Closing Time", "miax.pearlequities.topofmarket.mach.v1.1.a.closingtime", ftypes.STRING, nil, nil, nil, "Expressed in HH:MM:SS format. Eg: 16:00:00")
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.correction_number = ProtoField.new("Correction Number", "miax.pearlequities.topofmarket.mach.v1.1.a.correctionnumber", ftypes.UINT8, nil, nil, nil, "Trade correction number. Set to zero for new trades. Increments by 1 for each subsequent correction.")
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.flags = ProtoField.new("Flags", "miax.pearlequities.topofmarket.mach.v1.1.a.flags", ftypes.STRING)
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.lot_size = ProtoField.new("Lot Size", "miax.pearlequities.topofmarket.mach.v1.1.a.lotsize", ftypes.UINT16, nil, nil, nil, "Round Lot size in shares.")
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.mach_packet_length = ProtoField.new("Mach Packet Length", "miax.pearlequities.topofmarket.mach.v1.1.a.machpacketlength", ftypes.UINT16, nil, nil, nil, "Length of the packet. This includes the header and application data")
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.mach_packet_type = ProtoField.new("Mach Packet Type", "miax.pearlequities.topofmarket.mach.v1.1.a.machpackettype", ftypes.UINT8, nil, nil, nil, "protocol packet type")
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.market_state = ProtoField.new("Market State", "miax.pearlequities.topofmarket.mach.v1.1.a.marketstate", ftypes.UINT8, nil, nil, nil, "Market State enum")
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.message_type = ProtoField.new("Message Type", "miax.pearlequities.topofmarket.mach.v1.1.a.messagetype", ftypes.UINT8, nil, nil, nil, "Code identifying this message type")
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.nanoseconds = ProtoField.new("Nanoseconds", "miax.pearlequities.topofmarket.mach.v1.1.a.nanoseconds", ftypes.UINT32, nil, nil, nil, "Nanoseconds part of the time that applies to this message.")
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.offer_price = ProtoField.new("Offer Price", "miax.pearlequities.topofmarket.mach.v1.1.a.offerprice", ftypes.DOUBLE, nil, nil, nil, "Displayed offer price.")
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.offer_size = ProtoField.new("Offer Size", "miax.pearlequities.topofmarket.mach.v1.1.a.offersize", ftypes.UINT16, nil, nil, nil, "Aggregate size in shares at the displayed offer price.")
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.opening_time = ProtoField.new("Opening Time", "miax.pearlequities.topofmarket.mach.v1.1.a.openingtime", ftypes.STRING, nil, nil, nil, "Expressed in HH:MM:SS format. Eg: 09:30:00")
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.price = ProtoField.new("Price", "miax.pearlequities.topofmarket.mach.v1.1.a.price", ftypes.DOUBLE, nil, nil, nil, "Execution price.")
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.primary_market_code = ProtoField.new("Primary Market Code", "miax.pearlequities.topofmarket.mach.v1.1.a.primarymarketcode", ftypes.STRING, nil, nil, nil, "Primary Market Code Enum")
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.reserved_1 = ProtoField.new("Reserved 1", "miax.pearlequities.topofmarket.mach.v1.1.a.reserved1", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.second_reserved_1 = ProtoField.new("Second Reserved 1", "miax.pearlequities.topofmarket.mach.v1.1.a.secondreserved1", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.seconds = ProtoField.new("Seconds", "miax.pearlequities.topofmarket.mach.v1.1.a.seconds", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Seconds part of the time that applies to all messages that gets disseminated until this message gets sent again.")
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.seconds_utc = ProtoField.new("Seconds", "miax.pearlequities.topofmarket.mach.v1.1.a.seconds.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Seconds part of the time that applies to all messages that gets disseminated until this message gets sent again.")
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.sequence_number = ProtoField.new("Sequence Number", "miax.pearlequities.topofmarket.mach.v1.1.a.sequencenumber", ftypes.UINT64, nil, nil, nil, "Sequence number of this data packet")
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.session_id = ProtoField.new("Session Id", "miax.pearlequities.topofmarket.mach.v1.1.a.sessionid", ftypes.UINT8, nil, nil, nil, "Current trading session identifier.")
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.session_number = ProtoField.new("Session Number", "miax.pearlequities.topofmarket.mach.v1.1.a.sessionnumber", ftypes.UINT8, nil, nil, nil, "protocol packet type")
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.short_sale_restriction = ProtoField.new("Short Sale Restriction", "miax.pearlequities.topofmarket.mach.v1.1.a.shortsalerestriction", ftypes.STRING, nil, nil, nil, "Current state of short sale restriction.")
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.size = ProtoField.new("Size", "miax.pearlequities.topofmarket.mach.v1.1.a.size", ftypes.UINT32, nil, nil, nil, "Number of shares executed.")
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.symbol_id = ProtoField.new("Symbol Id", "miax.pearlequities.topofmarket.mach.v1.1.a.symbolid", ftypes.UINT32, nil, nil, nil, "Symbol ID mapped to a given symbol. It is assigned per trading session and is valid for that session.")
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.system_status = ProtoField.new("System Status", "miax.pearlequities.topofmarket.mach.v1.1.a.systemstatus", ftypes.STRING, nil, nil, nil, "System Status enum")
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.test_security_indicator = ProtoField.new("Test Security Indicator", "miax.pearlequities.topofmarket.mach.v1.1.a.testsecurityindicator", ftypes.STRING, nil, nil, nil, "‘Y’ – Yes, ‘N’ – No")
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.ticker_symbol = ProtoField.new("Ticker Symbol", "miax.pearlequities.topofmarket.mach.v1.1.a.tickersymbol", ftypes.STRING, nil, nil, nil, "Ticker symbol for the security in NASDAQ Integrated Platform format.")
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.to_m_version = ProtoField.new("To M Version", "miax.pearlequities.topofmarket.mach.v1.1.a.tomversion", ftypes.STRING, nil, nil, nil, "Eg: ToM1.0")
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.trade_id = ProtoField.new("Trade Id", "miax.pearlequities.topofmarket.mach.v1.1.a.tradeid", ftypes.UINT64, nil, nil, nil, "Unique ID assigned by the Matching Engine.")
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.trading_status = ProtoField.new("Trading Status", "miax.pearlequities.topofmarket.mach.v1.1.a.tradingstatus", ftypes.UINT8, nil, nil, nil, "Trading Status enums")

-- Miax PearlEquities TopOfMarket Mach 1.1.a Framing
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.mach_message = ProtoField.new("Mach Message", "miax.pearlequities.topofmarket.mach.v1.1.a.machmessage", ftypes.STRING)
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.mach_packet_header = ProtoField.new("Mach Packet Header", "miax.pearlequities.topofmarket.mach.v1.1.a.machpacketheader", ftypes.STRING, nil, nil, nil, "Mach packet header (12 bytes)")
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.packet = ProtoField.new("Packet", "miax.pearlequities.topofmarket.mach.v1.1.a.packet", ftypes.STRING)

-- Miax PearlEquities TopOfMarket 1.1.a Application Messages
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.compact_top_of_market_best_bid_and_offer_message = ProtoField.new("Compact Top Of Market Best Bid And Offer Message", "miax.pearlequities.topofmarket.mach.v1.1.a.compacttopofmarketbestbidandoffermessage", ftypes.STRING, nil, nil, nil, "This is the message format that will be used to publish MIAX PEARL Best Bid and Offer (MPBBO) of a security with MPBBO values that can fit in this compact format. In the compact format both bid and offer prices have 2 decimal places and are limited to a maximum value of $655.35. Bid and Offer sizes are limited to 65,535 shares.")
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.last_sale_message = ProtoField.new("Last Sale Message", "miax.pearlequities.topofmarket.mach.v1.1.a.lastsalemessage", ftypes.STRING, nil, nil, nil, "This is the message format that will be used to disseminate Trades that are resulting from executions on MIAX PEARL Equities during the current trading session. It includes a Trade ID that is unique to the trade across the exchange for the trading day. Trade corrections will also be disseminated using the same message format.")
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.security_trading_status_notification_message = ProtoField.new("Security Trading Status Notification Message", "miax.pearlequities.topofmarket.mach.v1.1.a.securitytradingstatusnotificationmessage", ftypes.STRING, nil, nil, nil, "This is the message format that will be used to notify firms of changes to the trading status of a particular security.")
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.symbol_update_message = ProtoField.new("Symbol Update Message", "miax.pearlequities.topofmarket.mach.v1.1.a.symbolupdatemessage", ftypes.STRING, nil, nil, nil, "This is the message format that will be used to disseminate all security symbols traded on MIAX PEARL Equities for the current trading session. The Symbol ID sent in this message will be disseminated in Top of Market and Last Sale messages.")
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.system_state_message = ProtoField.new("System State Message", "miax.pearlequities.topofmarket.mach.v1.1.a.systemstatemessage", ftypes.STRING, nil, nil, nil, "This is the message format that will be used to notify firms of the state changes of the system. This is a notification that applies to all symbols on the feed. Firms can use notifications as triggers in their system to ensure electronic synchronization of systems.")
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.system_time_message = ProtoField.new("System Time Message", "miax.pearlequities.topofmarket.mach.v1.1.a.systemtimemessage", ftypes.STRING, nil, nil, nil, "This is the message format that will be used to disseminate the “seconds” part of the timestamp that is applicable to all messages that are sent in the current second.")
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.trade_cancel_message = ProtoField.new("Trade Cancel Message", "miax.pearlequities.topofmarket.mach.v1.1.a.tradecancelmessage", ftypes.STRING, nil, nil, nil, "This is the message format that will be used to disseminate canceled trades that are resulting from Trade cancellations on MIAX PEARL Equities during the current trading session.")
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.wide_top_of_market_best_bid_and_offer_message = ProtoField.new("Wide Top Of Market Best Bid And Offer Message", "miax.pearlequities.topofmarket.mach.v1.1.a.widetopofmarketbestbidandoffermessage", ftypes.STRING, nil, nil, nil, "This is the message format that will be used to publish MIAX PEARL Best Bid and Offer (MPBBO) of a security with MPBBO values that will not fit in the compact format.")

-- Miax PearlEquities TopOfMarket Mach 1.1.a Generated Fields
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.timestamp = ProtoField.new("Timestamp", "miax.pearlequities.topofmarket.mach.v1.1.a.timestamp", ftypes.UINT64)

-----------------------------------------------------------------------
-- Miax PearlEquities TopOfMarket Mach 1.1.a Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
miax_pearlequities_topofmarket_mach_v1_1_a.absolute_time_base = 0

-- Timestamp format (true = decimal-scaled, false = raw mantissa)
miax_pearlequities_topofmarket_mach_v1_1_a.format_timestamp = true


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Miax PearlEquities TopOfMarket Mach 1.1.a Element Dissection Options
show.structs = true
show.application_messages = true
show.headers = true

-- Register Miax PearlEquities TopOfMarket Mach 1.1.a Show Options
omi_miax_pearlequities_topofmarket_mach_v1_1_a.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_miax_pearlequities_topofmarket_mach_v1_1_a.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_miax_pearlequities_topofmarket_mach_v1_1_a.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_miax_pearlequities_topofmarket_mach_v1_1_a.prefs.format_timestamp = Pref.bool("Format Timestamp", true, "Compose Timestamp with the stored seconds anchor (off = raw nanoseconds)")

omi_miax_pearlequities_topofmarket_mach_v1_1_a.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_miax_pearlequities_topofmarket_mach_v1_1_a.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_miax_pearlequities_topofmarket_mach_v1_1_a.prefs.show_application_messages then
    show.application_messages = omi_miax_pearlequities_topofmarket_mach_v1_1_a.prefs.show_application_messages
  end
  if show.headers ~= omi_miax_pearlequities_topofmarket_mach_v1_1_a.prefs.show_headers then
    show.headers = omi_miax_pearlequities_topofmarket_mach_v1_1_a.prefs.show_headers
  end
  if show.structs ~= omi_miax_pearlequities_topofmarket_mach_v1_1_a.prefs.show_structs then
    show.structs = omi_miax_pearlequities_topofmarket_mach_v1_1_a.prefs.show_structs
  end
  if miax_pearlequities_topofmarket_mach_v1_1_a.format_timestamp ~= omi_miax_pearlequities_topofmarket_mach_v1_1_a.prefs.format_timestamp then
    miax_pearlequities_topofmarket_mach_v1_1_a.format_timestamp = omi_miax_pearlequities_topofmarket_mach_v1_1_a.prefs.format_timestamp
  end
  if miax_pearlequities_topofmarket_mach_v1_1_a.absolute_time_base ~= omi_miax_pearlequities_topofmarket_mach_v1_1_a.prefs.absolute_time_base then
    miax_pearlequities_topofmarket_mach_v1_1_a.absolute_time_base = omi_miax_pearlequities_topofmarket_mach_v1_1_a.prefs.absolute_time_base
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
miax_pearlequities_topofmarket_mach_v1_1_a.conversation = {}
miax_pearlequities_topofmarket_mach_v1_1_a.conversation.flows = {}

-- Conversation key for the current packet (src/dst tuple)
miax_pearlequities_topofmarket_mach_v1_1_a.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
miax_pearlequities_topofmarket_mach_v1_1_a.conversation.data = function(packet)
  local key = miax_pearlequities_topofmarket_mach_v1_1_a.conversation.key(packet)
  local data = miax_pearlequities_topofmarket_mach_v1_1_a.conversation.flows[key]
  if data == nil then
    data = { seconds = { last = nil, frames = {} } }
    miax_pearlequities_topofmarket_mach_v1_1_a.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
miax_pearlequities_topofmarket_mach_v1_1_a.conversation.current = nil


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
-- Miax PearlEquities TopOfMarket Mach 1.1.a Fields
-----------------------------------------------------------------------

-- Bid Price
miax_pearlequities_topofmarket_mach_v1_1_a.bid_price = {}

-- Size: Bid Price
miax_pearlequities_topofmarket_mach_v1_1_a.bid_price.size = 2

-- Display: Bid Price
miax_pearlequities_topofmarket_mach_v1_1_a.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Translate: Bid Price
miax_pearlequities_topofmarket_mach_v1_1_a.bid_price.translate = function(raw)
  return raw/100
end

-- Dissect: Bid Price
miax_pearlequities_topofmarket_mach_v1_1_a.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.bid_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_pearlequities_topofmarket_mach_v1_1_a.bid_price.translate(raw)
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Bid Size
miax_pearlequities_topofmarket_mach_v1_1_a.bid_size = {}

-- Size: Bid Size
miax_pearlequities_topofmarket_mach_v1_1_a.bid_size.size = 2

-- Display: Bid Size
miax_pearlequities_topofmarket_mach_v1_1_a.bid_size.display = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
miax_pearlequities_topofmarket_mach_v1_1_a.bid_size.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.bid_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Closing Time
miax_pearlequities_topofmarket_mach_v1_1_a.closing_time = {}

-- Size: Closing Time
miax_pearlequities_topofmarket_mach_v1_1_a.closing_time.size = 8

-- Display: Closing Time
miax_pearlequities_topofmarket_mach_v1_1_a.closing_time.display = function(value)
  return "Closing Time: "..value
end

-- Dissect: Closing Time
miax_pearlequities_topofmarket_mach_v1_1_a.closing_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.closing_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.closing_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.closing_time, range, value, display)

  return offset + length, value
end

-- Correction Number
miax_pearlequities_topofmarket_mach_v1_1_a.correction_number = {}

-- Size: Correction Number
miax_pearlequities_topofmarket_mach_v1_1_a.correction_number.size = 1

-- Display: Correction Number
miax_pearlequities_topofmarket_mach_v1_1_a.correction_number.display = function(value)
  return "Correction Number: "..value
end

-- Dissect: Correction Number
miax_pearlequities_topofmarket_mach_v1_1_a.correction_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.correction_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.correction_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.correction_number, range, value, display)

  return offset + length, value
end

-- Flags
miax_pearlequities_topofmarket_mach_v1_1_a.flags = {}

-- Size: Flags
miax_pearlequities_topofmarket_mach_v1_1_a.flags.size = 0

-- Display: Flags
miax_pearlequities_topofmarket_mach_v1_1_a.flags.display = function(value)
  return "Flags: "..value
end

-- Dissect: Flags
miax_pearlequities_topofmarket_mach_v1_1_a.flags.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.flags.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.flags.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.flags, range, value, display)

  return offset + length, value
end

-- Lot Size
miax_pearlequities_topofmarket_mach_v1_1_a.lot_size = {}

-- Size: Lot Size
miax_pearlequities_topofmarket_mach_v1_1_a.lot_size.size = 2

-- Display: Lot Size
miax_pearlequities_topofmarket_mach_v1_1_a.lot_size.display = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
miax_pearlequities_topofmarket_mach_v1_1_a.lot_size.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.lot_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Mach Packet Length
miax_pearlequities_topofmarket_mach_v1_1_a.mach_packet_length = {}

-- Size: Mach Packet Length
miax_pearlequities_topofmarket_mach_v1_1_a.mach_packet_length.size = 2

-- Display: Mach Packet Length
miax_pearlequities_topofmarket_mach_v1_1_a.mach_packet_length.display = function(value)
  return "Mach Packet Length: "..value
end

-- Dissect: Mach Packet Length
miax_pearlequities_topofmarket_mach_v1_1_a.mach_packet_length.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.mach_packet_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.mach_packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.mach_packet_length, range, value, display)

  return offset + length, value
end

-- Mach Packet Type
miax_pearlequities_topofmarket_mach_v1_1_a.mach_packet_type = {}

-- Size: Mach Packet Type
miax_pearlequities_topofmarket_mach_v1_1_a.mach_packet_type.size = 1

-- Display: Mach Packet Type
miax_pearlequities_topofmarket_mach_v1_1_a.mach_packet_type.labels = {
  [0] = "Mach Packet Type: Heartbeat (0)",
  [1] = "Mach Packet Type: Start Of Session (1)",
  [2] = "Mach Packet Type: End Of Session (2)",
  [3] = "Mach Packet Type: Application Message (3)",
}

miax_pearlequities_topofmarket_mach_v1_1_a.mach_packet_type.display = function(value)
  return miax_pearlequities_topofmarket_mach_v1_1_a.mach_packet_type.labels[value] or "Mach Packet Type: Unknown("..value..")"
end

-- Dissect: Mach Packet Type
miax_pearlequities_topofmarket_mach_v1_1_a.mach_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.mach_packet_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.mach_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.mach_packet_type, range, value, display)

  return offset + length, value
end

-- Market State
miax_pearlequities_topofmarket_mach_v1_1_a.market_state = {}

-- Size: Market State
miax_pearlequities_topofmarket_mach_v1_1_a.market_state.size = 1

-- Display: Market State
miax_pearlequities_topofmarket_mach_v1_1_a.market_state.labels = {
  [1] = "Market State: Pre Opening (1)",
  [2] = "Market State: Early Trading (2)",
  [3] = "Market State: Regular Trading (3)",
  [4] = "Market State: After Hours Trading (4)",
}

miax_pearlequities_topofmarket_mach_v1_1_a.market_state.display = function(value)
  return miax_pearlequities_topofmarket_mach_v1_1_a.market_state.labels[value] or "Market State: Unknown("..value..")"
end

-- Dissect: Market State
miax_pearlequities_topofmarket_mach_v1_1_a.market_state.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.market_state.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.market_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.market_state, range, value, display)

  return offset + length, value
end

-- Message Type
miax_pearlequities_topofmarket_mach_v1_1_a.message_type = {}

-- Size: Message Type
miax_pearlequities_topofmarket_mach_v1_1_a.message_type.size = 1

-- Display: Message Type
miax_pearlequities_topofmarket_mach_v1_1_a.message_type.labels = {
  [49] = "Message Type: System Time Message (49)",
  [1] = "Message Type: Symbol Update Message (1)",
  [83] = "Message Type: System State Message (83)",
  [4] = "Message Type: Security Trading Status Notification Message (4)",
  [2] = "Message Type: Compact Top Of Market Best Bid And Offer Message (2)",
  [3] = "Message Type: Wide Top Of Market Best Bid And Offer Message (3)",
  [10] = "Message Type: Last Sale Message (10)",
  [11] = "Message Type: Trade Cancel Message (11)",
}

miax_pearlequities_topofmarket_mach_v1_1_a.message_type.display = function(value)
  return miax_pearlequities_topofmarket_mach_v1_1_a.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
miax_pearlequities_topofmarket_mach_v1_1_a.message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.message_type, range, value, display)

  return offset + length, value
end

-- Nanoseconds
miax_pearlequities_topofmarket_mach_v1_1_a.nanoseconds = {}

-- Size: Nanoseconds
miax_pearlequities_topofmarket_mach_v1_1_a.nanoseconds.size = 4

-- Display: Nanoseconds
miax_pearlequities_topofmarket_mach_v1_1_a.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
miax_pearlequities_topofmarket_mach_v1_1_a.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Offer Price
miax_pearlequities_topofmarket_mach_v1_1_a.offer_price = {}

-- Size: Offer Price
miax_pearlequities_topofmarket_mach_v1_1_a.offer_price.size = 2

-- Display: Offer Price
miax_pearlequities_topofmarket_mach_v1_1_a.offer_price.display = function(value)
  return "Offer Price: "..value
end

-- Translate: Offer Price
miax_pearlequities_topofmarket_mach_v1_1_a.offer_price.translate = function(raw)
  return raw/100
end

-- Dissect: Offer Price
miax_pearlequities_topofmarket_mach_v1_1_a.offer_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.offer_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_pearlequities_topofmarket_mach_v1_1_a.offer_price.translate(raw)
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.offer_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.offer_price, range, value, display)

  return offset + length, value
end

-- Offer Size
miax_pearlequities_topofmarket_mach_v1_1_a.offer_size = {}

-- Size: Offer Size
miax_pearlequities_topofmarket_mach_v1_1_a.offer_size.size = 2

-- Display: Offer Size
miax_pearlequities_topofmarket_mach_v1_1_a.offer_size.display = function(value)
  return "Offer Size: "..value
end

-- Dissect: Offer Size
miax_pearlequities_topofmarket_mach_v1_1_a.offer_size.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.offer_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.offer_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.offer_size, range, value, display)

  return offset + length, value
end

-- Opening Time
miax_pearlequities_topofmarket_mach_v1_1_a.opening_time = {}

-- Size: Opening Time
miax_pearlequities_topofmarket_mach_v1_1_a.opening_time.size = 8

-- Display: Opening Time
miax_pearlequities_topofmarket_mach_v1_1_a.opening_time.display = function(value)
  return "Opening Time: "..value
end

-- Dissect: Opening Time
miax_pearlequities_topofmarket_mach_v1_1_a.opening_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.opening_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.opening_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.opening_time, range, value, display)

  return offset + length, value
end

-- Price
miax_pearlequities_topofmarket_mach_v1_1_a.price = {}

-- Size: Price
miax_pearlequities_topofmarket_mach_v1_1_a.price.size = 8

-- Display: Price
miax_pearlequities_topofmarket_mach_v1_1_a.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
miax_pearlequities_topofmarket_mach_v1_1_a.price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Price
miax_pearlequities_topofmarket_mach_v1_1_a.price.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = miax_pearlequities_topofmarket_mach_v1_1_a.price.translate(raw)
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.price, range, value, display)

  return offset + length, value
end

-- Primary Market Code
miax_pearlequities_topofmarket_mach_v1_1_a.primary_market_code = {}

-- Size: Primary Market Code
miax_pearlequities_topofmarket_mach_v1_1_a.primary_market_code.size = 1

-- Display: Primary Market Code
miax_pearlequities_topofmarket_mach_v1_1_a.primary_market_code.labels = {
  ["A"] = "Primary Market Code: Nyse American (A)",
  ["B"] = "Primary Market Code: Nasdaq Bx (B)",
  ["C"] = "Primary Market Code: Nyse National (C)",
  ["H"] = "Primary Market Code: Miax Pearl Equities (H)",
  ["I"] = "Primary Market Code: Nasdaq Ise (I)",
  ["J"] = "Primary Market Code: Cboe Edga Exchange (J)",
  ["K"] = "Primary Market Code: Cboe Edgx Exchange (K)",
  ["L"] = "Primary Market Code: Long Term Stock Exchange (L)",
  ["M"] = "Primary Market Code: Nyse Chicago (M)",
  ["N"] = "Primary Market Code: New York Stock Exchange (N)",
  ["P"] = "Primary Market Code: Nyse Arca (P)",
  ["Q"] = "Primary Market Code: Nasdaq (Q)",
  ["U"] = "Primary Market Code: Members Exchange (U)",
  ["V"] = "Primary Market Code: Investors Exchange (V)",
  ["W"] = "Primary Market Code: Cboe Stock Exchange (W)",
  ["X"] = "Primary Market Code: Nasdaq Phlx (X)",
  ["Y"] = "Primary Market Code: Cboe Byx Exchange (Y)",
  ["Z"] = "Primary Market Code: Cboe Bzx Exchange (Z)",
}

miax_pearlequities_topofmarket_mach_v1_1_a.primary_market_code.display = function(value)
  return miax_pearlequities_topofmarket_mach_v1_1_a.primary_market_code.labels[value] or "Primary Market Code: Unknown("..value..")"
end

-- Dissect: Primary Market Code
miax_pearlequities_topofmarket_mach_v1_1_a.primary_market_code.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.primary_market_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.primary_market_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.primary_market_code, range, value, display)

  return offset + length, value
end

-- Reserved 1
miax_pearlequities_topofmarket_mach_v1_1_a.reserved_1 = {}

-- Size: Reserved 1
miax_pearlequities_topofmarket_mach_v1_1_a.reserved_1.size = 1

-- Display: Reserved 1
miax_pearlequities_topofmarket_mach_v1_1_a.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
miax_pearlequities_topofmarket_mach_v1_1_a.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Second Reserved 1
miax_pearlequities_topofmarket_mach_v1_1_a.second_reserved_1 = {}

-- Size: Second Reserved 1
miax_pearlequities_topofmarket_mach_v1_1_a.second_reserved_1.size = 1

-- Display: Second Reserved 1
miax_pearlequities_topofmarket_mach_v1_1_a.second_reserved_1.display = function(value)
  return "Second Reserved 1: "..value
end

-- Dissect: Second Reserved 1
miax_pearlequities_topofmarket_mach_v1_1_a.second_reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.second_reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.second_reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.second_reserved_1, range, value, display)

  return offset + length, value
end

-- Seconds
miax_pearlequities_topofmarket_mach_v1_1_a.seconds = {}

-- Size: Seconds
miax_pearlequities_topofmarket_mach_v1_1_a.seconds.size = 4

-- Store: Seconds
miax_pearlequities_topofmarket_mach_v1_1_a.seconds.current = nil

-- Generated: Seconds
miax_pearlequities_topofmarket_mach_v1_1_a.seconds.generated = function(value, range, packet, parent)
  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.seconds
  if miax_pearlequities_topofmarket_mach_v1_1_a.absolute_time_base == 1 then field = omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.seconds_utc end
  local seconds = parent:add(field, range, NSTime.new(value, 0))
  seconds:set_generated()
end

-- Dissect: Seconds
miax_pearlequities_topofmarket_mach_v1_1_a.seconds.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.seconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.seconds
  if miax_pearlequities_topofmarket_mach_v1_1_a.absolute_time_base == 1 then field = omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.seconds_utc end

  local seconds = value
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Sequence Number
miax_pearlequities_topofmarket_mach_v1_1_a.sequence_number = {}

-- Size: Sequence Number
miax_pearlequities_topofmarket_mach_v1_1_a.sequence_number.size = 8

-- Display: Sequence Number
miax_pearlequities_topofmarket_mach_v1_1_a.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
miax_pearlequities_topofmarket_mach_v1_1_a.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session Id
miax_pearlequities_topofmarket_mach_v1_1_a.session_id = {}

-- Size: Session Id
miax_pearlequities_topofmarket_mach_v1_1_a.session_id.size = 1

-- Display: Session Id
miax_pearlequities_topofmarket_mach_v1_1_a.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
miax_pearlequities_topofmarket_mach_v1_1_a.session_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.session_id, range, value, display)

  return offset + length, value
end

-- Session Number
miax_pearlequities_topofmarket_mach_v1_1_a.session_number = {}

-- Size: Session Number
miax_pearlequities_topofmarket_mach_v1_1_a.session_number.size = 1

-- Display: Session Number
miax_pearlequities_topofmarket_mach_v1_1_a.session_number.display = function(value)
  return "Session Number: "..value
end

-- Dissect: Session Number
miax_pearlequities_topofmarket_mach_v1_1_a.session_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.session_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.session_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.session_number, range, value, display)

  return offset + length, value
end

-- Short Sale Restriction
miax_pearlequities_topofmarket_mach_v1_1_a.short_sale_restriction = {}

-- Size: Short Sale Restriction
miax_pearlequities_topofmarket_mach_v1_1_a.short_sale_restriction.size = 1

-- Display: Short Sale Restriction
miax_pearlequities_topofmarket_mach_v1_1_a.short_sale_restriction.labels = {
  ["Y"] = "Short Sale Restriction: Ssr In Effect (Y)",
  ["N"] = "Short Sale Restriction: Ssr Not In Effect (N)",
}

miax_pearlequities_topofmarket_mach_v1_1_a.short_sale_restriction.display = function(value)
  return miax_pearlequities_topofmarket_mach_v1_1_a.short_sale_restriction.labels[value] or "Short Sale Restriction: Unknown("..value..")"
end

-- Dissect: Short Sale Restriction
miax_pearlequities_topofmarket_mach_v1_1_a.short_sale_restriction.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.short_sale_restriction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.short_sale_restriction.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.short_sale_restriction, range, value, display)

  return offset + length, value
end

-- Size
miax_pearlequities_topofmarket_mach_v1_1_a.size = {}

-- Size: Size
miax_pearlequities_topofmarket_mach_v1_1_a.size.size = 4

-- Display: Size
miax_pearlequities_topofmarket_mach_v1_1_a.size.display = function(value)
  return "Size: "..value
end

-- Dissect: Size
miax_pearlequities_topofmarket_mach_v1_1_a.size.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.size.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.size, range, value, display)

  return offset + length, value
end

-- Symbol Id
miax_pearlequities_topofmarket_mach_v1_1_a.symbol_id = {}

-- Size: Symbol Id
miax_pearlequities_topofmarket_mach_v1_1_a.symbol_id.size = 4

-- Display: Symbol Id
miax_pearlequities_topofmarket_mach_v1_1_a.symbol_id.display = function(value)
  return "Symbol Id: "..value
end

-- Dissect: Symbol Id
miax_pearlequities_topofmarket_mach_v1_1_a.symbol_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.symbol_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.symbol_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.symbol_id, range, value, display)

  return offset + length, value
end

-- System Status
miax_pearlequities_topofmarket_mach_v1_1_a.system_status = {}

-- Size: System Status
miax_pearlequities_topofmarket_mach_v1_1_a.system_status.size = 1

-- Display: System Status
miax_pearlequities_topofmarket_mach_v1_1_a.system_status.labels = {
  ["S"] = "System Status: Start (S)",
  ["C"] = "System Status: End (C)",
  ["1"] = "System Status: Start (1)",
  ["2"] = "System Status: End (2)",
}

miax_pearlequities_topofmarket_mach_v1_1_a.system_status.display = function(value)
  return miax_pearlequities_topofmarket_mach_v1_1_a.system_status.labels[value] or "System Status: Unknown("..value..")"
end

-- Dissect: System Status
miax_pearlequities_topofmarket_mach_v1_1_a.system_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.system_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.system_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.system_status, range, value, display)

  return offset + length, value
end

-- Test Security Indicator
miax_pearlequities_topofmarket_mach_v1_1_a.test_security_indicator = {}

-- Size: Test Security Indicator
miax_pearlequities_topofmarket_mach_v1_1_a.test_security_indicator.size = 1

-- Display: Test Security Indicator
miax_pearlequities_topofmarket_mach_v1_1_a.test_security_indicator.labels = {
  ["Y"] = "Test Security Indicator: Yes (Y)",
  ["N"] = "Test Security Indicator: No (N)",
}

miax_pearlequities_topofmarket_mach_v1_1_a.test_security_indicator.display = function(value)
  return miax_pearlequities_topofmarket_mach_v1_1_a.test_security_indicator.labels[value] or "Test Security Indicator: Unknown("..value..")"
end

-- Dissect: Test Security Indicator
miax_pearlequities_topofmarket_mach_v1_1_a.test_security_indicator.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.test_security_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.test_security_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.test_security_indicator, range, value, display)

  return offset + length, value
end

-- Ticker Symbol
miax_pearlequities_topofmarket_mach_v1_1_a.ticker_symbol = {}

-- Size: Ticker Symbol
miax_pearlequities_topofmarket_mach_v1_1_a.ticker_symbol.size = 11

-- Display: Ticker Symbol
miax_pearlequities_topofmarket_mach_v1_1_a.ticker_symbol.display = function(value)
  return "Ticker Symbol: "..value
end

-- Dissect: Ticker Symbol
miax_pearlequities_topofmarket_mach_v1_1_a.ticker_symbol.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.ticker_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.ticker_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.ticker_symbol, range, value, display)

  return offset + length, value
end

-- To M Version
miax_pearlequities_topofmarket_mach_v1_1_a.to_m_version = {}

-- Size: To M Version
miax_pearlequities_topofmarket_mach_v1_1_a.to_m_version.size = 8

-- Display: To M Version
miax_pearlequities_topofmarket_mach_v1_1_a.to_m_version.display = function(value)
  return "To M Version: "..value
end

-- Dissect: To M Version
miax_pearlequities_topofmarket_mach_v1_1_a.to_m_version.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.to_m_version.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.to_m_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.to_m_version, range, value, display)

  return offset + length, value
end

-- Trade Id
miax_pearlequities_topofmarket_mach_v1_1_a.trade_id = {}

-- Size: Trade Id
miax_pearlequities_topofmarket_mach_v1_1_a.trade_id.size = 8

-- Display: Trade Id
miax_pearlequities_topofmarket_mach_v1_1_a.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
miax_pearlequities_topofmarket_mach_v1_1_a.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trading Status
miax_pearlequities_topofmarket_mach_v1_1_a.trading_status = {}

-- Size: Trading Status
miax_pearlequities_topofmarket_mach_v1_1_a.trading_status.size = 1

-- Display: Trading Status
miax_pearlequities_topofmarket_mach_v1_1_a.trading_status.labels = {
  [1] = "Trading Status: Pre Open (1)",
  [2] = "Trading Status: Trading (2)",
  [3] = "Trading Status: Halt (3)",
  [4] = "Trading Status: Operational Halt (4)",
  [5] = "Trading Status: Closed (5)",
}

miax_pearlequities_topofmarket_mach_v1_1_a.trading_status.display = function(value)
  return miax_pearlequities_topofmarket_mach_v1_1_a.trading_status.labels[value] or "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
miax_pearlequities_topofmarket_mach_v1_1_a.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.trading_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Timestamp
miax_pearlequities_topofmarket_mach_v1_1_a.timestamp = {}

-- Translate: Timestamp
miax_pearlequities_topofmarket_mach_v1_1_a.timestamp.translate = function(nanoseconds, stored_seconds)
  return UInt64.new(stored_seconds * 1000000000 + nanoseconds)
end

-- Display: Timestamp
miax_pearlequities_topofmarket_mach_v1_1_a.timestamp.display = function(nanoseconds, stored_seconds)
  return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", stored_seconds)..string.format("%09d", nanoseconds)
end

-- Composite: Timestamp
miax_pearlequities_topofmarket_mach_v1_1_a.timestamp.composite = function(buffer, offset, stored_seconds, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.nanoseconds.size
  local range = buffer(offset, length)
  local nanoseconds = range:le_uint()
  local value = miax_pearlequities_topofmarket_mach_v1_1_a.timestamp.translate(nanoseconds, stored_seconds)
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.timestamp.display(nanoseconds, stored_seconds, packet)
  parent = parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.timestamp, range, value, display)

  miax_pearlequities_topofmarket_mach_v1_1_a.seconds.generated(stored_seconds, range, packet, parent)

  display = miax_pearlequities_topofmarket_mach_v1_1_a.nanoseconds.display(nanoseconds)
  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.nanoseconds, range, nanoseconds, display)

  return offset + length, value
end

-- Dissect: Timestamp
miax_pearlequities_topofmarket_mach_v1_1_a.timestamp.dissect = function(buffer, offset, packet, parent)
  if miax_pearlequities_topofmarket_mach_v1_1_a.format_timestamp then
    local stored_seconds = miax_pearlequities_topofmarket_mach_v1_1_a.seconds.current

    if stored_seconds ~= nil then
      return miax_pearlequities_topofmarket_mach_v1_1_a.timestamp.composite(buffer, offset, stored_seconds, packet, parent)
    end
  end

  return miax_pearlequities_topofmarket_mach_v1_1_a.nanoseconds.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Miax PearlEquities TopOfMarket Mach 1.1.a
-----------------------------------------------------------------------

-- Trade Cancel Message
miax_pearlequities_topofmarket_mach_v1_1_a.trade_cancel_message = {}

-- Size: Trade Cancel Message
miax_pearlequities_topofmarket_mach_v1_1_a.trade_cancel_message.size =
  miax_pearlequities_topofmarket_mach_v1_1_a.nanoseconds.size + 
  miax_pearlequities_topofmarket_mach_v1_1_a.symbol_id.size + 
  miax_pearlequities_topofmarket_mach_v1_1_a.trade_id.size + 
  miax_pearlequities_topofmarket_mach_v1_1_a.correction_number.size + 
  miax_pearlequities_topofmarket_mach_v1_1_a.price.size + 
  miax_pearlequities_topofmarket_mach_v1_1_a.size.size

-- Display: Trade Cancel Message
miax_pearlequities_topofmarket_mach_v1_1_a.trade_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Message
miax_pearlequities_topofmarket_mach_v1_1_a.trade_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_pearlequities_topofmarket_mach_v1_1_a.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_topofmarket_mach_v1_1_a.symbol_id.dissect(buffer, index, packet, parent)

  -- Trade Id: BinaryU
  index, trade_id = miax_pearlequities_topofmarket_mach_v1_1_a.trade_id.dissect(buffer, index, packet, parent)

  -- Correction Number: BinaryU
  index, correction_number = miax_pearlequities_topofmarket_mach_v1_1_a.correction_number.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrc6U
  index, price = miax_pearlequities_topofmarket_mach_v1_1_a.price.dissect(buffer, index, packet, parent)

  -- Size: BinaryU
  index, size = miax_pearlequities_topofmarket_mach_v1_1_a.size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Message
miax_pearlequities_topofmarket_mach_v1_1_a.trade_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.trade_cancel_message, buffer(offset, 0))
    local index = miax_pearlequities_topofmarket_mach_v1_1_a.trade_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_topofmarket_mach_v1_1_a.trade_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_topofmarket_mach_v1_1_a.trade_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Last Sale Message
miax_pearlequities_topofmarket_mach_v1_1_a.last_sale_message = {}

-- Size: Last Sale Message
miax_pearlequities_topofmarket_mach_v1_1_a.last_sale_message.size =
  miax_pearlequities_topofmarket_mach_v1_1_a.nanoseconds.size + 
  miax_pearlequities_topofmarket_mach_v1_1_a.symbol_id.size + 
  miax_pearlequities_topofmarket_mach_v1_1_a.trade_id.size + 
  miax_pearlequities_topofmarket_mach_v1_1_a.correction_number.size + 
  miax_pearlequities_topofmarket_mach_v1_1_a.price.size + 
  miax_pearlequities_topofmarket_mach_v1_1_a.size.size + 
  miax_pearlequities_topofmarket_mach_v1_1_a.flags.size

-- Display: Last Sale Message
miax_pearlequities_topofmarket_mach_v1_1_a.last_sale_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Last Sale Message
miax_pearlequities_topofmarket_mach_v1_1_a.last_sale_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_pearlequities_topofmarket_mach_v1_1_a.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_topofmarket_mach_v1_1_a.symbol_id.dissect(buffer, index, packet, parent)

  -- Trade Id: BinaryU
  index, trade_id = miax_pearlequities_topofmarket_mach_v1_1_a.trade_id.dissect(buffer, index, packet, parent)

  -- Correction Number: BinaryU
  index, correction_number = miax_pearlequities_topofmarket_mach_v1_1_a.correction_number.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrc6U
  index, price = miax_pearlequities_topofmarket_mach_v1_1_a.price.dissect(buffer, index, packet, parent)

  -- Size: BinaryU
  index, size = miax_pearlequities_topofmarket_mach_v1_1_a.size.dissect(buffer, index, packet, parent)

  -- Flags: 0 Byte Ascii String
  index, flags = miax_pearlequities_topofmarket_mach_v1_1_a.flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Last Sale Message
miax_pearlequities_topofmarket_mach_v1_1_a.last_sale_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.last_sale_message, buffer(offset, 0))
    local index = miax_pearlequities_topofmarket_mach_v1_1_a.last_sale_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_topofmarket_mach_v1_1_a.last_sale_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_topofmarket_mach_v1_1_a.last_sale_message.fields(buffer, offset, packet, parent)
  end
end

-- Wide Top Of Market Best Bid And Offer Message
miax_pearlequities_topofmarket_mach_v1_1_a.wide_top_of_market_best_bid_and_offer_message = {}

-- Size: Wide Top Of Market Best Bid And Offer Message
miax_pearlequities_topofmarket_mach_v1_1_a.wide_top_of_market_best_bid_and_offer_message.size =
  miax_pearlequities_topofmarket_mach_v1_1_a.nanoseconds.size + 
  miax_pearlequities_topofmarket_mach_v1_1_a.symbol_id.size + 
  miax_pearlequities_topofmarket_mach_v1_1_a.bid_price.size + 
  miax_pearlequities_topofmarket_mach_v1_1_a.bid_size.size + 
  miax_pearlequities_topofmarket_mach_v1_1_a.offer_price.size + 
  miax_pearlequities_topofmarket_mach_v1_1_a.offer_size.size

-- Display: Wide Top Of Market Best Bid And Offer Message
miax_pearlequities_topofmarket_mach_v1_1_a.wide_top_of_market_best_bid_and_offer_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Wide Top Of Market Best Bid And Offer Message
miax_pearlequities_topofmarket_mach_v1_1_a.wide_top_of_market_best_bid_and_offer_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_pearlequities_topofmarket_mach_v1_1_a.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_topofmarket_mach_v1_1_a.symbol_id.dissect(buffer, index, packet, parent)

  -- Bid Price: BinaryPrc2U
  index, bid_price = miax_pearlequities_topofmarket_mach_v1_1_a.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Size: BinaryU
  index, bid_size = miax_pearlequities_topofmarket_mach_v1_1_a.bid_size.dissect(buffer, index, packet, parent)

  -- Offer Price: BinaryPrc2U
  index, offer_price = miax_pearlequities_topofmarket_mach_v1_1_a.offer_price.dissect(buffer, index, packet, parent)

  -- Offer Size: BinaryU
  index, offer_size = miax_pearlequities_topofmarket_mach_v1_1_a.offer_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Wide Top Of Market Best Bid And Offer Message
miax_pearlequities_topofmarket_mach_v1_1_a.wide_top_of_market_best_bid_and_offer_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.wide_top_of_market_best_bid_and_offer_message, buffer(offset, 0))
    local index = miax_pearlequities_topofmarket_mach_v1_1_a.wide_top_of_market_best_bid_and_offer_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_topofmarket_mach_v1_1_a.wide_top_of_market_best_bid_and_offer_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_topofmarket_mach_v1_1_a.wide_top_of_market_best_bid_and_offer_message.fields(buffer, offset, packet, parent)
  end
end

-- Compact Top Of Market Best Bid And Offer Message
miax_pearlequities_topofmarket_mach_v1_1_a.compact_top_of_market_best_bid_and_offer_message = {}

-- Size: Compact Top Of Market Best Bid And Offer Message
miax_pearlequities_topofmarket_mach_v1_1_a.compact_top_of_market_best_bid_and_offer_message.size =
  miax_pearlequities_topofmarket_mach_v1_1_a.nanoseconds.size + 
  miax_pearlequities_topofmarket_mach_v1_1_a.symbol_id.size + 
  miax_pearlequities_topofmarket_mach_v1_1_a.bid_price.size + 
  miax_pearlequities_topofmarket_mach_v1_1_a.bid_size.size + 
  miax_pearlequities_topofmarket_mach_v1_1_a.offer_price.size + 
  miax_pearlequities_topofmarket_mach_v1_1_a.offer_size.size

-- Display: Compact Top Of Market Best Bid And Offer Message
miax_pearlequities_topofmarket_mach_v1_1_a.compact_top_of_market_best_bid_and_offer_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Compact Top Of Market Best Bid And Offer Message
miax_pearlequities_topofmarket_mach_v1_1_a.compact_top_of_market_best_bid_and_offer_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_pearlequities_topofmarket_mach_v1_1_a.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_topofmarket_mach_v1_1_a.symbol_id.dissect(buffer, index, packet, parent)

  -- Bid Price: BinaryPrc2U
  index, bid_price = miax_pearlequities_topofmarket_mach_v1_1_a.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Size: BinaryU
  index, bid_size = miax_pearlequities_topofmarket_mach_v1_1_a.bid_size.dissect(buffer, index, packet, parent)

  -- Offer Price: BinaryPrc2U
  index, offer_price = miax_pearlequities_topofmarket_mach_v1_1_a.offer_price.dissect(buffer, index, packet, parent)

  -- Offer Size: BinaryU
  index, offer_size = miax_pearlequities_topofmarket_mach_v1_1_a.offer_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Compact Top Of Market Best Bid And Offer Message
miax_pearlequities_topofmarket_mach_v1_1_a.compact_top_of_market_best_bid_and_offer_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.compact_top_of_market_best_bid_and_offer_message, buffer(offset, 0))
    local index = miax_pearlequities_topofmarket_mach_v1_1_a.compact_top_of_market_best_bid_and_offer_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_topofmarket_mach_v1_1_a.compact_top_of_market_best_bid_and_offer_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_topofmarket_mach_v1_1_a.compact_top_of_market_best_bid_and_offer_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Trading Status Notification Message
miax_pearlequities_topofmarket_mach_v1_1_a.security_trading_status_notification_message = {}

-- Size: Security Trading Status Notification Message
miax_pearlequities_topofmarket_mach_v1_1_a.security_trading_status_notification_message.size =
  miax_pearlequities_topofmarket_mach_v1_1_a.nanoseconds.size + 
  miax_pearlequities_topofmarket_mach_v1_1_a.symbol_id.size + 
  miax_pearlequities_topofmarket_mach_v1_1_a.trading_status.size + 
  miax_pearlequities_topofmarket_mach_v1_1_a.market_state.size + 
  miax_pearlequities_topofmarket_mach_v1_1_a.short_sale_restriction.size

-- Display: Security Trading Status Notification Message
miax_pearlequities_topofmarket_mach_v1_1_a.security_trading_status_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Trading Status Notification Message
miax_pearlequities_topofmarket_mach_v1_1_a.security_trading_status_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_pearlequities_topofmarket_mach_v1_1_a.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_topofmarket_mach_v1_1_a.symbol_id.dissect(buffer, index, packet, parent)

  -- Trading Status: BinaryU
  index, trading_status = miax_pearlequities_topofmarket_mach_v1_1_a.trading_status.dissect(buffer, index, packet, parent)

  -- Market State: BinaryU
  index, market_state = miax_pearlequities_topofmarket_mach_v1_1_a.market_state.dissect(buffer, index, packet, parent)

  -- Short Sale Restriction: Alphanumeric
  index, short_sale_restriction = miax_pearlequities_topofmarket_mach_v1_1_a.short_sale_restriction.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Trading Status Notification Message
miax_pearlequities_topofmarket_mach_v1_1_a.security_trading_status_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.security_trading_status_notification_message, buffer(offset, 0))
    local index = miax_pearlequities_topofmarket_mach_v1_1_a.security_trading_status_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_topofmarket_mach_v1_1_a.security_trading_status_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_topofmarket_mach_v1_1_a.security_trading_status_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- System State Message
miax_pearlequities_topofmarket_mach_v1_1_a.system_state_message = {}

-- Size: System State Message
miax_pearlequities_topofmarket_mach_v1_1_a.system_state_message.size =
  miax_pearlequities_topofmarket_mach_v1_1_a.nanoseconds.size + 
  miax_pearlequities_topofmarket_mach_v1_1_a.to_m_version.size + 
  miax_pearlequities_topofmarket_mach_v1_1_a.session_id.size + 
  miax_pearlequities_topofmarket_mach_v1_1_a.system_status.size

-- Display: System State Message
miax_pearlequities_topofmarket_mach_v1_1_a.system_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System State Message
miax_pearlequities_topofmarket_mach_v1_1_a.system_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_pearlequities_topofmarket_mach_v1_1_a.timestamp.dissect(buffer, index, packet, parent)

  -- To M Version: Alphanumeric
  index, to_m_version = miax_pearlequities_topofmarket_mach_v1_1_a.to_m_version.dissect(buffer, index, packet, parent)

  -- Session Id: BinaryU
  index, session_id = miax_pearlequities_topofmarket_mach_v1_1_a.session_id.dissect(buffer, index, packet, parent)

  -- System Status: Alphanumeric
  index, system_status = miax_pearlequities_topofmarket_mach_v1_1_a.system_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System State Message
miax_pearlequities_topofmarket_mach_v1_1_a.system_state_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.system_state_message, buffer(offset, 0))
    local index = miax_pearlequities_topofmarket_mach_v1_1_a.system_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_topofmarket_mach_v1_1_a.system_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_topofmarket_mach_v1_1_a.system_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Update Message
miax_pearlequities_topofmarket_mach_v1_1_a.symbol_update_message = {}

-- Size: Symbol Update Message
miax_pearlequities_topofmarket_mach_v1_1_a.symbol_update_message.size =
  miax_pearlequities_topofmarket_mach_v1_1_a.nanoseconds.size + 
  miax_pearlequities_topofmarket_mach_v1_1_a.symbol_id.size + 
  miax_pearlequities_topofmarket_mach_v1_1_a.ticker_symbol.size + 
  miax_pearlequities_topofmarket_mach_v1_1_a.reserved_1.size + 
  miax_pearlequities_topofmarket_mach_v1_1_a.test_security_indicator.size + 
  miax_pearlequities_topofmarket_mach_v1_1_a.second_reserved_1.size + 
  miax_pearlequities_topofmarket_mach_v1_1_a.lot_size.size + 
  miax_pearlequities_topofmarket_mach_v1_1_a.opening_time.size + 
  miax_pearlequities_topofmarket_mach_v1_1_a.closing_time.size + 
  miax_pearlequities_topofmarket_mach_v1_1_a.primary_market_code.size

-- Display: Symbol Update Message
miax_pearlequities_topofmarket_mach_v1_1_a.symbol_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Update Message
miax_pearlequities_topofmarket_mach_v1_1_a.symbol_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_pearlequities_topofmarket_mach_v1_1_a.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_topofmarket_mach_v1_1_a.symbol_id.dissect(buffer, index, packet, parent)

  -- Ticker Symbol: Alphanumeric
  index, ticker_symbol = miax_pearlequities_topofmarket_mach_v1_1_a.ticker_symbol.dissect(buffer, index, packet, parent)

  -- Reserved 1: BinaryU
  index, reserved_1 = miax_pearlequities_topofmarket_mach_v1_1_a.reserved_1.dissect(buffer, index, packet, parent)

  -- Test Security Indicator: Alphanumeric
  index, test_security_indicator = miax_pearlequities_topofmarket_mach_v1_1_a.test_security_indicator.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: BinaryU
  index, second_reserved_1 = miax_pearlequities_topofmarket_mach_v1_1_a.second_reserved_1.dissect(buffer, index, packet, parent)

  -- Lot Size: BinaryU
  index, lot_size = miax_pearlequities_topofmarket_mach_v1_1_a.lot_size.dissect(buffer, index, packet, parent)

  -- Opening Time: Alphanumeric
  index, opening_time = miax_pearlequities_topofmarket_mach_v1_1_a.opening_time.dissect(buffer, index, packet, parent)

  -- Closing Time: Alphanumeric
  index, closing_time = miax_pearlequities_topofmarket_mach_v1_1_a.closing_time.dissect(buffer, index, packet, parent)

  -- Primary Market Code: Alphanumeric
  index, primary_market_code = miax_pearlequities_topofmarket_mach_v1_1_a.primary_market_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Update Message
miax_pearlequities_topofmarket_mach_v1_1_a.symbol_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.symbol_update_message, buffer(offset, 0))
    local index = miax_pearlequities_topofmarket_mach_v1_1_a.symbol_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_topofmarket_mach_v1_1_a.symbol_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_topofmarket_mach_v1_1_a.symbol_update_message.fields(buffer, offset, packet, parent)
  end
end

-- System Time Message
miax_pearlequities_topofmarket_mach_v1_1_a.system_time_message = {}

-- Size: System Time Message
miax_pearlequities_topofmarket_mach_v1_1_a.system_time_message.size =
  miax_pearlequities_topofmarket_mach_v1_1_a.seconds.size

-- Display: System Time Message
miax_pearlequities_topofmarket_mach_v1_1_a.system_time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Time Message
miax_pearlequities_topofmarket_mach_v1_1_a.system_time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: SecTime
  index, seconds = miax_pearlequities_topofmarket_mach_v1_1_a.seconds.dissect(buffer, index, packet, parent)

  -- Store Seconds Value
  miax_pearlequities_topofmarket_mach_v1_1_a.seconds.current = seconds

  if not packet.visited then
    miax_pearlequities_topofmarket_mach_v1_1_a.conversation.current.seconds.last = seconds
  end

  return index
end

-- Dissect: System Time Message
miax_pearlequities_topofmarket_mach_v1_1_a.system_time_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.system_time_message, buffer(offset, 0))
    local index = miax_pearlequities_topofmarket_mach_v1_1_a.system_time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_topofmarket_mach_v1_1_a.system_time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_topofmarket_mach_v1_1_a.system_time_message.fields(buffer, offset, packet, parent)
  end
end

-- Data
miax_pearlequities_topofmarket_mach_v1_1_a.data = {}

-- Dissect: Data
miax_pearlequities_topofmarket_mach_v1_1_a.data.dispatch = {
  [49] = miax_pearlequities_topofmarket_mach_v1_1_a.system_time_message.dissect,
  [1] = miax_pearlequities_topofmarket_mach_v1_1_a.symbol_update_message.dissect,
  [83] = miax_pearlequities_topofmarket_mach_v1_1_a.system_state_message.dissect,
  [4] = miax_pearlequities_topofmarket_mach_v1_1_a.security_trading_status_notification_message.dissect,
  [2] = miax_pearlequities_topofmarket_mach_v1_1_a.compact_top_of_market_best_bid_and_offer_message.dissect,
  [3] = miax_pearlequities_topofmarket_mach_v1_1_a.wide_top_of_market_best_bid_and_offer_message.dissect,
  [10] = miax_pearlequities_topofmarket_mach_v1_1_a.last_sale_message.dissect,
  [11] = miax_pearlequities_topofmarket_mach_v1_1_a.trade_cancel_message.dissect,
}

miax_pearlequities_topofmarket_mach_v1_1_a.data.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = miax_pearlequities_topofmarket_mach_v1_1_a.data.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Application Message
miax_pearlequities_topofmarket_mach_v1_1_a.application_message = {}

-- Read runtime size of: Application Message
miax_pearlequities_topofmarket_mach_v1_1_a.application_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Mach Packet Length
  local mach_packet_length = buffer(offset - 4, 2):le_uint()

  return mach_packet_length - 12
end

-- Display: Application Message
miax_pearlequities_topofmarket_mach_v1_1_a.application_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Application Message
miax_pearlequities_topofmarket_mach_v1_1_a.application_message.fields = function(buffer, offset, packet, parent, size_of_application_message)
  local index = offset

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, message_type = miax_pearlequities_topofmarket_mach_v1_1_a.message_type.dissect(buffer, index, packet, parent)

  -- Data: Runtime Type with 8 branches
  index = miax_pearlequities_topofmarket_mach_v1_1_a.data.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Application Message
miax_pearlequities_topofmarket_mach_v1_1_a.application_message.dissect = function(buffer, offset, packet, parent, size_of_application_message)
  local size_of_application_message = miax_pearlequities_topofmarket_mach_v1_1_a.application_message.size(buffer, offset)
  local index = offset + size_of_application_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.application_message, buffer(offset, 0))
    local current = miax_pearlequities_topofmarket_mach_v1_1_a.application_message.fields(buffer, offset, packet, parent, size_of_application_message)
    parent:set_len(size_of_application_message)
    local display = miax_pearlequities_topofmarket_mach_v1_1_a.application_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_pearlequities_topofmarket_mach_v1_1_a.application_message.fields(buffer, offset, packet, parent, size_of_application_message)

    return index
  end
end

-- End Of Session
miax_pearlequities_topofmarket_mach_v1_1_a.end_of_session = {}

-- Display: End Of Session
miax_pearlequities_topofmarket_mach_v1_1_a.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
miax_pearlequities_topofmarket_mach_v1_1_a.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Start Of Session
miax_pearlequities_topofmarket_mach_v1_1_a.start_of_session = {}

-- Display: Start Of Session
miax_pearlequities_topofmarket_mach_v1_1_a.start_of_session.display = function(packet, parent, length)
  return "Start Of Session"
end


-- Dissect: Start Of Session
miax_pearlequities_topofmarket_mach_v1_1_a.start_of_session.dissect = function(buffer, offset, packet, parent)
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.start_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Heartbeat
miax_pearlequities_topofmarket_mach_v1_1_a.heartbeat = {}

-- Display: Heartbeat
miax_pearlequities_topofmarket_mach_v1_1_a.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
miax_pearlequities_topofmarket_mach_v1_1_a.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Payload
miax_pearlequities_topofmarket_mach_v1_1_a.payload = {}

-- Dissect: Payload
miax_pearlequities_topofmarket_mach_v1_1_a.payload.dispatch = {
  [0] = miax_pearlequities_topofmarket_mach_v1_1_a.heartbeat.dissect,
  [1] = miax_pearlequities_topofmarket_mach_v1_1_a.start_of_session.dissect,
  [2] = miax_pearlequities_topofmarket_mach_v1_1_a.end_of_session.dissect,
  [3] = miax_pearlequities_topofmarket_mach_v1_1_a.application_message.dissect,
}

miax_pearlequities_topofmarket_mach_v1_1_a.payload.dissect = function(buffer, offset, packet, parent, mach_packet_type)
  local dissect = miax_pearlequities_topofmarket_mach_v1_1_a.payload.dispatch[mach_packet_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Mach Packet Header
miax_pearlequities_topofmarket_mach_v1_1_a.mach_packet_header = {}

-- Size: Mach Packet Header
miax_pearlequities_topofmarket_mach_v1_1_a.mach_packet_header.size =
  miax_pearlequities_topofmarket_mach_v1_1_a.sequence_number.size + 
  miax_pearlequities_topofmarket_mach_v1_1_a.mach_packet_length.size + 
  miax_pearlequities_topofmarket_mach_v1_1_a.mach_packet_type.size + 
  miax_pearlequities_topofmarket_mach_v1_1_a.session_number.size

-- Display: Mach Packet Header
miax_pearlequities_topofmarket_mach_v1_1_a.mach_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mach Packet Header
miax_pearlequities_topofmarket_mach_v1_1_a.mach_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = miax_pearlequities_topofmarket_mach_v1_1_a.sequence_number.dissect(buffer, index, packet, parent)

  -- Mach Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, mach_packet_length = miax_pearlequities_topofmarket_mach_v1_1_a.mach_packet_length.dissect(buffer, index, packet, parent)

  -- Mach Packet Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, mach_packet_type = miax_pearlequities_topofmarket_mach_v1_1_a.mach_packet_type.dissect(buffer, index, packet, parent)

  -- Session Number: 1 Byte Unsigned Fixed Width Integer
  index, session_number = miax_pearlequities_topofmarket_mach_v1_1_a.session_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mach Packet Header
miax_pearlequities_topofmarket_mach_v1_1_a.mach_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.mach_packet_header, buffer(offset, 0))
    local index = miax_pearlequities_topofmarket_mach_v1_1_a.mach_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_topofmarket_mach_v1_1_a.mach_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_topofmarket_mach_v1_1_a.mach_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Mach Message
miax_pearlequities_topofmarket_mach_v1_1_a.mach_message = {}

-- Display: Mach Message
miax_pearlequities_topofmarket_mach_v1_1_a.mach_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mach Message
miax_pearlequities_topofmarket_mach_v1_1_a.mach_message.fields = function(buffer, offset, packet, parent, size_of_mach_message)
  local index = offset

  -- Mach Packet Header: Struct of 4 fields
  index, mach_packet_header = miax_pearlequities_topofmarket_mach_v1_1_a.mach_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Mach Packet Type
  local mach_packet_type = buffer(index - 2, 1):le_uint()

  -- Payload: Runtime Type with 4 branches
  index = miax_pearlequities_topofmarket_mach_v1_1_a.payload.dissect(buffer, index, packet, parent, mach_packet_type)

  return index
end

-- Dissect: Mach Message
miax_pearlequities_topofmarket_mach_v1_1_a.mach_message.dissect = function(buffer, offset, packet, parent, size_of_mach_message)
  local index = offset + size_of_mach_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.mach_message, buffer(offset, 0))
    local current = miax_pearlequities_topofmarket_mach_v1_1_a.mach_message.fields(buffer, offset, packet, parent, size_of_mach_message)
    parent:set_len(size_of_mach_message)
    local display = miax_pearlequities_topofmarket_mach_v1_1_a.mach_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_pearlequities_topofmarket_mach_v1_1_a.mach_message.fields(buffer, offset, packet, parent, size_of_mach_message)

    return index
  end
end

-- Packet
miax_pearlequities_topofmarket_mach_v1_1_a.packet = {}

-- Verify required size of Udp packet
miax_pearlequities_topofmarket_mach_v1_1_a.packet.requiredsize = function(buffer)
  return buffer:len() >= miax_pearlequities_topofmarket_mach_v1_1_a.mach_packet_header.size
end

-- Dissect Packet
miax_pearlequities_topofmarket_mach_v1_1_a.packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = miax_pearlequities_topofmarket_mach_v1_1_a.conversation.data(packet)
  if not packet.visited then
    data.seconds.frames[packet.number] = data.seconds.last
  end
  miax_pearlequities_topofmarket_mach_v1_1_a.seconds.current = data.seconds.frames[packet.number]
  miax_pearlequities_topofmarket_mach_v1_1_a.conversation.current = data

  local index = 0

  -- Dependency for Mach Message
  local end_of_payload = buffer:len()

  -- Mach Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Mach Packet Length
    local mach_packet_length = buffer(index + 8, 2):le_uint()

    -- Runtime Size Of: Mach Message
    index, mach_message = miax_pearlequities_topofmarket_mach_v1_1_a.mach_message.dissect(buffer, index, packet, parent, mach_packet_length)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_miax_pearlequities_topofmarket_mach_v1_1_a.init()
  miax_pearlequities_topofmarket_mach_v1_1_a.seconds.current = nil
  miax_pearlequities_topofmarket_mach_v1_1_a.conversation.current = nil
  miax_pearlequities_topofmarket_mach_v1_1_a.conversation.flows = {}
end

-- Dissector for Miax PearlEquities TopOfMarket Mach 1.1.a
function omi_miax_pearlequities_topofmarket_mach_v1_1_a.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_miax_pearlequities_topofmarket_mach_v1_1_a.name

  -- Dissect protocol
  local protocol = parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a, buffer(), omi_miax_pearlequities_topofmarket_mach_v1_1_a.description, "("..buffer:len().." Bytes)")
  return miax_pearlequities_topofmarket_mach_v1_1_a.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
miax_pearlequities_topofmarket_mach_v1_1_a.packet.fingerprint = function(buffer)
  if buffer:len() < 11 then
    return false
  end

  local mach_packet_type = buffer(10, 1):le_uint()

  -- Heartbeat
  if mach_packet_type == 0 then
    return true
  end

  -- Start Of Session
  if mach_packet_type == 1 then
    return true
  end

  -- End Of Session
  if mach_packet_type == 2 then
    return true
  end

  -- Application Message: carries the application messages, which tell this protocol from others sharing the session framing
  if mach_packet_type == 3 then
    if buffer:len() < 13 then
      return false
    end

    local message_type = buffer(12, 1):uint()

    -- System Time Message
    if message_type == 49 then
      return true
    end

    -- Symbol Update Message
    if message_type == 1 then
      return true
    end

    -- System State Message
    if message_type == 83 then
      return true
    end

    -- Security Trading Status Notification Message
    if message_type == 4 then
      return true
    end

    -- Compact Top Of Market Best Bid And Offer Message
    if message_type == 2 then
      return true
    end

    -- Wide Top Of Market Best Bid And Offer Message
    if message_type == 3 then
      return true
    end

    -- Last Sale Message
    if message_type == 10 then
      return true
    end

    -- Trade Cancel Message
    if message_type == 11 then
      return true
    end

    return false
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Miax PearlEquities TopOfMarket Mach 1.1.a (Udp)
local function omi_miax_pearlequities_topofmarket_mach_v1_1_a_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not miax_pearlequities_topofmarket_mach_v1_1_a.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this udp packet message dispatch
  if not miax_pearlequities_topofmarket_mach_v1_1_a.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_miax_pearlequities_topofmarket_mach_v1_1_a
  omi_miax_pearlequities_topofmarket_mach_v1_1_a.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Miax PearlEquities TopOfMarket Mach 1.1.a
omi_miax_pearlequities_topofmarket_mach_v1_1_a:register_heuristic("udp", omi_miax_pearlequities_topofmarket_mach_v1_1_a_udp_heuristic)

-- Register Miax PearlEquities TopOfMarket Mach 1.1.a for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_miax_pearlequities_topofmarket_mach_v1_1_a)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Miami International Holdings
--   Version: 1.1.a
--   Date: Thursday, November 5, 2020
--   Specification: MIAX_PEARL_Equities_ToM_Feed_v1.1a.pdf
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
