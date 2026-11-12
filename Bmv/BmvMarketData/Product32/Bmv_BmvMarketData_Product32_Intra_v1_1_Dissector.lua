-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Bmv BmvMarketData Product32 Intra 1.1 Protocol
local omi_bmv_bmvmarketdata_product32_intra_v1_1 = Proto("Omi.Bmv.BmvMarketData.Product32.Intra.v1.1", "Bmv BmvMarketData Product32 Intra 1.1")

-- Protocol table
local bmv_bmvmarketdata_product32_intra_v1_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Bmv BmvMarketData Product32 Intra 1.1 Fields
omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.datetime = ProtoField.new("Datetime", "bmv.bmvmarketdata.product32.intra.v1.1.datetime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date and time the packet is created")
omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.datetime_utc = ProtoField.new("Datetime", "bmv.bmvmarketdata.product32.intra.v1.1.datetime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date and time the packet is created")
omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.es_basis_points = ProtoField.new("Es Basis Points", "bmv.bmvmarketdata.product32.intra.v1.1.esbasispoints", ftypes.DOUBLE, nil, nil, nil, "Effective Spread expressed in basis points")
omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.es_basis_points_ask = ProtoField.new("Es Basis Points Ask", "bmv.bmvmarketdata.product32.intra.v1.1.esbasispointsask", ftypes.DOUBLE, nil, nil, nil, "Ask effective spread expressed in basis points")
omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.es_basis_points_bid = ProtoField.new("Es Basis Points Bid", "bmv.bmvmarketdata.product32.intra.v1.1.esbasispointsbid", ftypes.DOUBLE, nil, nil, nil, "Bid effective spread expressed in basis points")
omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.es_mxn = ProtoField.new("Es Mxn", "bmv.bmvmarketdata.product32.intra.v1.1.esmxn", ftypes.DOUBLE, nil, nil, nil, "Effective Spread expressed in monetary units (MXN)")
omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.es_mxn_ask = ProtoField.new("Es Mxn Ask", "bmv.bmvmarketdata.product32.intra.v1.1.esmxnask", ftypes.DOUBLE, nil, nil, nil, "Ask effective spread expressed in monetary units (MXN)")
omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.es_mxn_bid = ProtoField.new("Es Mxn Bid", "bmv.bmvmarketdata.product32.intra.v1.1.esmxnbid", ftypes.DOUBLE, nil, nil, nil, "Bid effective spread expressed in monetary units (MXN)")
omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.indices = ProtoField.new("Indices", "bmv.bmvmarketdata.product32.intra.v1.1.indices", ftypes.STRING, nil, nil, nil, "See Indices Samples Catalog on the Connections and Appendix document")
omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.instrument_number = ProtoField.new("Instrument Number", "bmv.bmvmarketdata.product32.intra.v1.1.instrumentnumber", ftypes.INT32, nil, nil, nil, "Unique code during instruments life")
omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.instruments = ProtoField.new("Instruments", "bmv.bmvmarketdata.product32.intra.v1.1.instruments", ftypes.INT16, nil, nil, nil, "Number of instruments where Stock Exchange (origin) has quotes on both sides, bid and ask")
omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.length = ProtoField.new("Length", "bmv.bmvmarketdata.product32.intra.v1.1.length", ftypes.INT16, nil, nil, nil, "Packet length, including header and all attached messages")
omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.market = ProtoField.new("Market", "bmv.bmvmarketdata.product32.intra.v1.1.market", ftypes.STRING, nil, nil, nil, "L-Local / G-Global / T-ETF’s / F-REIT’s")
omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.market_data_group = ProtoField.new("Market Data Group", "bmv.bmvmarketdata.product32.intra.v1.1.marketdatagroup", ftypes.INT8, nil, nil, nil, "See Market Data Groups Catalog")
omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.message_length = ProtoField.new("Message Length", "bmv.bmvmarketdata.product32.intra.v1.1.messagelength", ftypes.INT16, nil, nil, nil, "Indicates message length contained in this message block")
omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.message_type = ProtoField.new("Message Type", "bmv.bmvmarketdata.product32.intra.v1.1.messagetype", ftypes.UINT8, nil, nil, nil, "Code identifying the message")
omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.origin = ProtoField.new("Origin", "bmv.bmvmarketdata.product32.intra.v1.1.origin", ftypes.STRING, nil, nil, nil, "M-BMV I-BIVA")
omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.sector = ProtoField.new("Sector", "bmv.bmvmarketdata.product32.intra.v1.1.sector", ftypes.INT8, nil, nil, nil, "See Industry Classification on the Connections and Appendix document")
omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.sequence_number = ProtoField.new("Sequence Number", "bmv.bmvmarketdata.product32.intra.v1.1.sequencenumber", ftypes.INT32, nil, nil, nil, "Sequence number of the first message attached to header")
omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.session = ProtoField.new("Session", "bmv.bmvmarketdata.product32.intra.v1.1.session", ftypes.INT8, nil, nil, nil, "Current session identifier")
omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.t_best_ask = ProtoField.new("T Best Ask", "bmv.bmvmarketdata.product32.intra.v1.1.tbestask", ftypes.DOUBLE, nil, nil, nil, "Time proportion of the session, having the best ask")
omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.t_best_bid = ProtoField.new("T Best Bid", "bmv.bmvmarketdata.product32.intra.v1.1.tbestbid", ftypes.DOUBLE, nil, nil, nil, "Time proportion of the session, having the best bid")
omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.t_tie_best_ask = ProtoField.new("T Tie Best Ask", "bmv.bmvmarketdata.product32.intra.v1.1.ttiebestask", ftypes.DOUBLE, nil, nil, nil, "Time proportion of the session with a tie on the best ask")
omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.t_tie_best_bid = ProtoField.new("T Tie Best Bid", "bmv.bmvmarketdata.product32.intra.v1.1.ttiebestbid", ftypes.DOUBLE, nil, nil, nil, "Time proportion of the session with a tie on the best bid")
omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.t_without_best_ask = ProtoField.new("T Without Best Ask", "bmv.bmvmarketdata.product32.intra.v1.1.twithoutbestask", ftypes.DOUBLE, nil, nil, nil, "Time proportion of the session without having the best ask")
omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.t_without_best_bid = ProtoField.new("T Without Best Bid", "bmv.bmvmarketdata.product32.intra.v1.1.twithoutbestbid", ftypes.DOUBLE, nil, nil, nil, "Time proportion of the session without having the best bid")
omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.time = ProtoField.new("Time", "bmv.bmvmarketdata.product32.intra.v1.1.time", ftypes.DOUBLE, nil, nil, nil, "Time proportion of the session in which the Stock Exchange (origin) maintains quotes on both sides, bid and ask")
omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.time_best_spread = ProtoField.new("Time Best Spread", "bmv.bmvmarketdata.product32.intra.v1.1.timebestspread", ftypes.DOUBLE, nil, nil, nil, "Time proportion in which the Stock Exchange (origin) had the best spread")
omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.time_tie_best_spread = ProtoField.new("Time Tie Best Spread", "bmv.bmvmarketdata.product32.intra.v1.1.timetiebestspread", ftypes.DOUBLE, nil, nil, nil, "Time proportion in which the Stock Exchange (origin) tied at the best spread")
omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.time_without_best_spread = ProtoField.new("Time Without Best Spread", "bmv.bmvmarketdata.product32.intra.v1.1.timewithoutbestspread", ftypes.DOUBLE, nil, nil, nil, "Time proportion of the session in which the Stock Exchange (origin) did not have the best spread")
omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.total_messages = ProtoField.new("Total Messages", "bmv.bmvmarketdata.product32.intra.v1.1.totalmessages", ftypes.INT8, nil, nil, nil, "Number of messages after the header")

-- Bmv BmvMarketData Product32 Intra 1.1 Framing
omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.intra_multicast_header = ProtoField.new("INTRA Multicast Header", "bmv.bmvmarketdata.product32.intra.v1.1.intramulticastheader", ftypes.STRING, nil, nil, nil, "BMV INTRA Multicast Header")
omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.message_block = ProtoField.new("Message Block", "bmv.bmvmarketdata.product32.intra.v1.1.messageblock", ftypes.STRING, nil, nil, nil, "BMV INTRA Multicast message block")
omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.message_header = ProtoField.new("Message Header", "bmv.bmvmarketdata.product32.intra.v1.1.messageheader", ftypes.STRING, nil, nil, nil, "Message length and message type")
omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.packet = ProtoField.new("Packet", "bmv.bmvmarketdata.product32.intra.v1.1.packet", ftypes.STRING, nil, nil, nil, "Bmv INTRA Multicast Udp Packet")

-- Bmv BmvMarketData Product32 1.1 Application Messages
omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.effective_spread_message = ProtoField.new("Effective Spread Message", "bmv.bmvmarketdata.product32.intra.v1.1.effectivespreadmessage", ftypes.STRING, nil, nil, nil, "Transaction cost analysis benchmark.")
omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.price_leaderboard_message = ProtoField.new("Price Leaderboard Message", "bmv.bmvmarketdata.product32.intra.v1.1.priceleaderboardmessage", ftypes.STRING, nil, nil, nil, "Measures time proportion that a stock Exchange maintains the best bid and (or) ask throughout the session.")
omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.quotes_quality_message = ProtoField.new("Quotes Quality Message", "bmv.bmvmarketdata.product32.intra.v1.1.quotesqualitymessage", ftypes.STRING, nil, nil, nil, "Time proportion in which an Exchange maintains quotes on both sides, bid and ask.")
omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.spread_quality_message = ProtoField.new("Spread Quality Message", "bmv.bmvmarketdata.product32.intra.v1.1.spreadqualitymessage", ftypes.STRING, nil, nil, nil, "Quality of the quoted spread throughout the session.")

-- Bmv BmvMarketData Product32 Intra 1.1 Generated Fields
omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.message_block_index = ProtoField.new("Message Block Index", "bmv.bmvmarketdata.product32.intra.v1.1.messageblockindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Bmv BmvMarketData Product32 Intra 1.1 Formatting
-----------------------------------------------------------------------

-- Text field character encoding (Wireshark ENC_ constant)
bmv_bmvmarketdata_product32_intra_v1_1.text_encoding = ENC_ASCII

-- timestamp format
local timestamp_format_enum = {
  { 1, "Full DateTime Local", 2 },
  { 2, "Full DateTime Utc", 3 }
}

-- 0=Raw, 1=Time of Day, 2=Full DateTime Local, 3=Full DateTime Utc
bmv_bmvmarketdata_product32_intra_v1_1.timestamp_format = 2


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Bmv BmvMarketData Product32 Intra 1.1 Element Dissection Options
show.application_messages = true
show.headers = true
show.structs = true
show.indexes = true

-- Register Bmv BmvMarketData Product32 Intra 1.1 Show Options
omi_bmv_bmvmarketdata_product32_intra_v1_1.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_bmv_bmvmarketdata_product32_intra_v1_1.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_bmv_bmvmarketdata_product32_intra_v1_1.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_bmv_bmvmarketdata_product32_intra_v1_1.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_bmv_bmvmarketdata_product32_intra_v1_1.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Display format for this protocol's timestamps", timestamp_format_enum, false)

-- Handle changed preferences
function omi_bmv_bmvmarketdata_product32_intra_v1_1.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_bmv_bmvmarketdata_product32_intra_v1_1.prefs.show_application_messages then
    show.application_messages = omi_bmv_bmvmarketdata_product32_intra_v1_1.prefs.show_application_messages
  end
  if show.headers ~= omi_bmv_bmvmarketdata_product32_intra_v1_1.prefs.show_headers then
    show.headers = omi_bmv_bmvmarketdata_product32_intra_v1_1.prefs.show_headers
  end
  if show.structs ~= omi_bmv_bmvmarketdata_product32_intra_v1_1.prefs.show_structs then
    show.structs = omi_bmv_bmvmarketdata_product32_intra_v1_1.prefs.show_structs
  end
  if show.indexes ~= omi_bmv_bmvmarketdata_product32_intra_v1_1.prefs.show_indexes then
    show.indexes = omi_bmv_bmvmarketdata_product32_intra_v1_1.prefs.show_indexes
  end
  if bmv_bmvmarketdata_product32_intra_v1_1.timestamp_format ~= omi_bmv_bmvmarketdata_product32_intra_v1_1.prefs.timestamp_format then
    bmv_bmvmarketdata_product32_intra_v1_1.timestamp_format = omi_bmv_bmvmarketdata_product32_intra_v1_1.prefs.timestamp_format
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
-- Bmv BmvMarketData Product32 Intra 1.1 Fields
-----------------------------------------------------------------------

-- Datetime
bmv_bmvmarketdata_product32_intra_v1_1.datetime = {}

-- Size: Datetime
bmv_bmvmarketdata_product32_intra_v1_1.datetime.size = 8

-- Dissect: Datetime
bmv_bmvmarketdata_product32_intra_v1_1.datetime.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product32_intra_v1_1.datetime.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.datetime
  if bmv_bmvmarketdata_product32_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.datetime_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Es Basis Points
bmv_bmvmarketdata_product32_intra_v1_1.es_basis_points = {}

-- Size: Es Basis Points
bmv_bmvmarketdata_product32_intra_v1_1.es_basis_points.size = 4

-- Display: Es Basis Points
bmv_bmvmarketdata_product32_intra_v1_1.es_basis_points.display = function(value)
  return "Es Basis Points: "..value
end

-- Translate: Es Basis Points
bmv_bmvmarketdata_product32_intra_v1_1.es_basis_points.translate = function(raw)
  return raw/10000
end

-- Dissect: Es Basis Points
bmv_bmvmarketdata_product32_intra_v1_1.es_basis_points.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product32_intra_v1_1.es_basis_points.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = bmv_bmvmarketdata_product32_intra_v1_1.es_basis_points.translate(raw)
  local display = bmv_bmvmarketdata_product32_intra_v1_1.es_basis_points.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.es_basis_points, range, value, display)

  return offset + length, value
end

-- Es Basis Points Ask
bmv_bmvmarketdata_product32_intra_v1_1.es_basis_points_ask = {}

-- Size: Es Basis Points Ask
bmv_bmvmarketdata_product32_intra_v1_1.es_basis_points_ask.size = 4

-- Display: Es Basis Points Ask
bmv_bmvmarketdata_product32_intra_v1_1.es_basis_points_ask.display = function(value)
  return "Es Basis Points Ask: "..value
end

-- Translate: Es Basis Points Ask
bmv_bmvmarketdata_product32_intra_v1_1.es_basis_points_ask.translate = function(raw)
  return raw/10000
end

-- Dissect: Es Basis Points Ask
bmv_bmvmarketdata_product32_intra_v1_1.es_basis_points_ask.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product32_intra_v1_1.es_basis_points_ask.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = bmv_bmvmarketdata_product32_intra_v1_1.es_basis_points_ask.translate(raw)
  local display = bmv_bmvmarketdata_product32_intra_v1_1.es_basis_points_ask.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.es_basis_points_ask, range, value, display)

  return offset + length, value
end

-- Es Basis Points Bid
bmv_bmvmarketdata_product32_intra_v1_1.es_basis_points_bid = {}

-- Size: Es Basis Points Bid
bmv_bmvmarketdata_product32_intra_v1_1.es_basis_points_bid.size = 4

-- Display: Es Basis Points Bid
bmv_bmvmarketdata_product32_intra_v1_1.es_basis_points_bid.display = function(value)
  return "Es Basis Points Bid: "..value
end

-- Translate: Es Basis Points Bid
bmv_bmvmarketdata_product32_intra_v1_1.es_basis_points_bid.translate = function(raw)
  return raw/10000
end

-- Dissect: Es Basis Points Bid
bmv_bmvmarketdata_product32_intra_v1_1.es_basis_points_bid.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product32_intra_v1_1.es_basis_points_bid.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = bmv_bmvmarketdata_product32_intra_v1_1.es_basis_points_bid.translate(raw)
  local display = bmv_bmvmarketdata_product32_intra_v1_1.es_basis_points_bid.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.es_basis_points_bid, range, value, display)

  return offset + length, value
end

-- Es Mxn
bmv_bmvmarketdata_product32_intra_v1_1.es_mxn = {}

-- Size: Es Mxn
bmv_bmvmarketdata_product32_intra_v1_1.es_mxn.size = 4

-- Display: Es Mxn
bmv_bmvmarketdata_product32_intra_v1_1.es_mxn.display = function(value)
  return "Es Mxn: "..value
end

-- Translate: Es Mxn
bmv_bmvmarketdata_product32_intra_v1_1.es_mxn.translate = function(raw)
  return raw/10000
end

-- Dissect: Es Mxn
bmv_bmvmarketdata_product32_intra_v1_1.es_mxn.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product32_intra_v1_1.es_mxn.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = bmv_bmvmarketdata_product32_intra_v1_1.es_mxn.translate(raw)
  local display = bmv_bmvmarketdata_product32_intra_v1_1.es_mxn.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.es_mxn, range, value, display)

  return offset + length, value
end

-- Es Mxn Ask
bmv_bmvmarketdata_product32_intra_v1_1.es_mxn_ask = {}

-- Size: Es Mxn Ask
bmv_bmvmarketdata_product32_intra_v1_1.es_mxn_ask.size = 4

-- Display: Es Mxn Ask
bmv_bmvmarketdata_product32_intra_v1_1.es_mxn_ask.display = function(value)
  return "Es Mxn Ask: "..value
end

-- Translate: Es Mxn Ask
bmv_bmvmarketdata_product32_intra_v1_1.es_mxn_ask.translate = function(raw)
  return raw/10000
end

-- Dissect: Es Mxn Ask
bmv_bmvmarketdata_product32_intra_v1_1.es_mxn_ask.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product32_intra_v1_1.es_mxn_ask.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = bmv_bmvmarketdata_product32_intra_v1_1.es_mxn_ask.translate(raw)
  local display = bmv_bmvmarketdata_product32_intra_v1_1.es_mxn_ask.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.es_mxn_ask, range, value, display)

  return offset + length, value
end

-- Es Mxn Bid
bmv_bmvmarketdata_product32_intra_v1_1.es_mxn_bid = {}

-- Size: Es Mxn Bid
bmv_bmvmarketdata_product32_intra_v1_1.es_mxn_bid.size = 4

-- Display: Es Mxn Bid
bmv_bmvmarketdata_product32_intra_v1_1.es_mxn_bid.display = function(value)
  return "Es Mxn Bid: "..value
end

-- Translate: Es Mxn Bid
bmv_bmvmarketdata_product32_intra_v1_1.es_mxn_bid.translate = function(raw)
  return raw/10000
end

-- Dissect: Es Mxn Bid
bmv_bmvmarketdata_product32_intra_v1_1.es_mxn_bid.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product32_intra_v1_1.es_mxn_bid.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = bmv_bmvmarketdata_product32_intra_v1_1.es_mxn_bid.translate(raw)
  local display = bmv_bmvmarketdata_product32_intra_v1_1.es_mxn_bid.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.es_mxn_bid, range, value, display)

  return offset + length, value
end

-- Indices
bmv_bmvmarketdata_product32_intra_v1_1.indices = {}

-- Size: Indices
bmv_bmvmarketdata_product32_intra_v1_1.indices.size = 2

-- Display: Indices
bmv_bmvmarketdata_product32_intra_v1_1.indices.display = function(value)
  return "Indices: "..value
end

-- Dissect: Indices
bmv_bmvmarketdata_product32_intra_v1_1.indices.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product32_intra_v1_1.indices.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_product32_intra_v1_1.indices.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.indices, range, value, display)

  return offset + length, value
end

-- Instrument Number
bmv_bmvmarketdata_product32_intra_v1_1.instrument_number = {}

-- Size: Instrument Number
bmv_bmvmarketdata_product32_intra_v1_1.instrument_number.size = 4

-- Display: Instrument Number
bmv_bmvmarketdata_product32_intra_v1_1.instrument_number.display = function(value)
  return "Instrument Number: "..value
end

-- Dissect: Instrument Number
bmv_bmvmarketdata_product32_intra_v1_1.instrument_number.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product32_intra_v1_1.instrument_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product32_intra_v1_1.instrument_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.instrument_number, range, value, display)

  return offset + length, value
end

-- Instruments
bmv_bmvmarketdata_product32_intra_v1_1.instruments = {}

-- Size: Instruments
bmv_bmvmarketdata_product32_intra_v1_1.instruments.size = 2

-- Display: Instruments
bmv_bmvmarketdata_product32_intra_v1_1.instruments.display = function(value)
  return "Instruments: "..value
end

-- Dissect: Instruments
bmv_bmvmarketdata_product32_intra_v1_1.instruments.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product32_intra_v1_1.instruments.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product32_intra_v1_1.instruments.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.instruments, range, value, display)

  return offset + length, value
end

-- Length
bmv_bmvmarketdata_product32_intra_v1_1.length = {}

-- Size: Length
bmv_bmvmarketdata_product32_intra_v1_1.length.size = 2

-- Display: Length
bmv_bmvmarketdata_product32_intra_v1_1.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
bmv_bmvmarketdata_product32_intra_v1_1.length.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product32_intra_v1_1.length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product32_intra_v1_1.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.length, range, value, display)

  return offset + length, value
end

-- Market
bmv_bmvmarketdata_product32_intra_v1_1.market = {}

-- Size: Market
bmv_bmvmarketdata_product32_intra_v1_1.market.size = 1

-- Display: Market
bmv_bmvmarketdata_product32_intra_v1_1.market.labels = {
  ["L"] = "Market: Local (L)",
  ["G"] = "Market: Global (G)",
  ["T"] = "Market: Et Fs (T)",
  ["F"] = "Market: Rei Ts (F)",
}

bmv_bmvmarketdata_product32_intra_v1_1.market.display = function(value)
  return bmv_bmvmarketdata_product32_intra_v1_1.market.labels[value] or "Market: Unknown("..value..")"
end

-- Dissect: Market
bmv_bmvmarketdata_product32_intra_v1_1.market.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product32_intra_v1_1.market.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product32_intra_v1_1.market.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.market, range, value, display)

  return offset + length, value
end

-- Market Data Group
bmv_bmvmarketdata_product32_intra_v1_1.market_data_group = {}

-- Size: Market Data Group
bmv_bmvmarketdata_product32_intra_v1_1.market_data_group.size = 1

-- Display: Market Data Group
bmv_bmvmarketdata_product32_intra_v1_1.market_data_group.labels = {
  [1] = "Market Data Group: Indepth Local Market (1)",
  [2] = "Market Data Group: Indepth Global Market (2)",
  [3] = "Market Data Group: Twenty Price Levels Of Local Market (3)",
  [4] = "Market Data Group: Twenty Price Levels Of Global Market (4)",
  [5] = "Market Data Group: Best Offers Of Local Market (5)",
  [6] = "Market Data Group: Best Offers Of Global Market (6)",
  [7] = "Market Data Group: Ten Price Levels Of Derivative Futures (7)",
  [8] = "Market Data Group: Ten Price Levels Of Derivative Options (8)",
  [9] = "Market Data Group: Best Offers For Derivative Futures (9)",
  [10] = "Market Data Group: Best Offers For Derivative Options (10)",
  [11] = "Market Data Group: Money Market (11)",
  [12] = "Market Data Group: Indices Components (12)",
  [13] = "Market Data Group: Level Of Indices (13)",
  [14] = "Market Data Group: Levels Of Inavs (14)",
  [15] = "Market Data Group: Indepth Local And Global Market (15)",
  [16] = "Market Data Group: Twenty Price Levels Of Local And Global Market (16)",
  [17] = "Market Data Group: Best Offers Of Local And Global Market With Money Market (17)",
  [18] = "Market Data Group: Twenty Price Levels Of Local And Global Market Indices Components Level Of Indices And Levels Of Inavs (18)",
  [19] = "Market Data Group: Ten Price Levels Of Derivate Futures And Derivative Options (19)",
  [20] = "Market Data Group: Best Offers For Derivative Futures And Derivative Options (20)",
  [21] = "Market Data Group: Added Value With Benchmark (21)",
  [22] = "Market Data Group: Added Value With Capitalization Rules (22)",
  [23] = "Market Data Group: Indices Levels With Delay (23)",
  [24] = "Market Data Group: Local And Global Market With Money Market Best Positions With Delay (24)",
  [25] = "Market Data Group: Equities Market Trades Consolidated Feed (25)",
  [26] = "Market Data Group: Best Bid Of The Equities Market Consolidated Feed (26)",
  [27] = "Market Data Group: Full Depth Consolidated Feed (27)",
  [28] = "Market Data Group: Closing Price Origin (28)",
  [29] = "Market Data Group: Analytics Price And Market Depth (29)",
  [32] = "Market Data Group: Analytics Market Quality (32)",
  [33] = "Market Data Group: Analytics Spead Performance (33)",
  [34] = "Market Data Group: Analytics Negotiation (34)",
  [40] = "Market Data Group: Channel Zero Catalogs (40)",
}

bmv_bmvmarketdata_product32_intra_v1_1.market_data_group.display = function(value)
  return bmv_bmvmarketdata_product32_intra_v1_1.market_data_group.labels[value] or "Market Data Group: Unknown("..value..")"
end

-- Dissect: Market Data Group
bmv_bmvmarketdata_product32_intra_v1_1.market_data_group.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product32_intra_v1_1.market_data_group.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product32_intra_v1_1.market_data_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.market_data_group, range, value, display)

  return offset + length, value
end

-- Message Length
bmv_bmvmarketdata_product32_intra_v1_1.message_length = {}

-- Size: Message Length
bmv_bmvmarketdata_product32_intra_v1_1.message_length.size = 2

-- Display: Message Length
bmv_bmvmarketdata_product32_intra_v1_1.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
bmv_bmvmarketdata_product32_intra_v1_1.message_length.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product32_intra_v1_1.message_length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product32_intra_v1_1.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
bmv_bmvmarketdata_product32_intra_v1_1.message_type = {}

-- Size: Message Type
bmv_bmvmarketdata_product32_intra_v1_1.message_type.size = 1

-- Display: Message Type
bmv_bmvmarketdata_product32_intra_v1_1.message_type.display = function(value)
  if value == 0x3D then
    return "Message Type: Effective Spread Message (0x3D)"
  end
  if value == 0x7B then
    return "Message Type: Spread Quality Message (0x7B)"
  end
  if value == 0x40 then
    return "Message Type: Price Leaderboard Message (0x40)"
  end
  if value == 0x7C then
    return "Message Type: Quotes Quality Message (0x7C)"
  end

  return "Message Type: Unknown("..string.format("0x%02X", value)..")"
end

-- Dissect: Message Type
bmv_bmvmarketdata_product32_intra_v1_1.message_type.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product32_intra_v1_1.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bmv_bmvmarketdata_product32_intra_v1_1.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.message_type, range, value, display)

  return offset + length, value
end

-- Origin
bmv_bmvmarketdata_product32_intra_v1_1.origin = {}

-- Size: Origin
bmv_bmvmarketdata_product32_intra_v1_1.origin.size = 1

-- Display: Origin
bmv_bmvmarketdata_product32_intra_v1_1.origin.labels = {
  ["M"] = "Origin: Bmv (M)",
  ["I"] = "Origin: Biva (I)",
  ["A"] = "Origin: Both (A)",
}

bmv_bmvmarketdata_product32_intra_v1_1.origin.display = function(value)
  return bmv_bmvmarketdata_product32_intra_v1_1.origin.labels[value] or "Origin: Unknown("..value..")"
end

-- Dissect: Origin
bmv_bmvmarketdata_product32_intra_v1_1.origin.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product32_intra_v1_1.origin.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product32_intra_v1_1.origin.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.origin, range, value, display)

  return offset + length, value
end

-- Sector
bmv_bmvmarketdata_product32_intra_v1_1.sector = {}

-- Size: Sector
bmv_bmvmarketdata_product32_intra_v1_1.sector.size = 1

-- Display: Sector
bmv_bmvmarketdata_product32_intra_v1_1.sector.display = function(value)
  return "Sector: "..value
end

-- Dissect: Sector
bmv_bmvmarketdata_product32_intra_v1_1.sector.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product32_intra_v1_1.sector.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product32_intra_v1_1.sector.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.sector, range, value, display)

  return offset + length, value
end

-- Sequence Number
bmv_bmvmarketdata_product32_intra_v1_1.sequence_number = {}

-- Size: Sequence Number
bmv_bmvmarketdata_product32_intra_v1_1.sequence_number.size = 4

-- Display: Sequence Number
bmv_bmvmarketdata_product32_intra_v1_1.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
bmv_bmvmarketdata_product32_intra_v1_1.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product32_intra_v1_1.sequence_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product32_intra_v1_1.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
bmv_bmvmarketdata_product32_intra_v1_1.session = {}

-- Size: Session
bmv_bmvmarketdata_product32_intra_v1_1.session.size = 1

-- Display: Session
bmv_bmvmarketdata_product32_intra_v1_1.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
bmv_bmvmarketdata_product32_intra_v1_1.session.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product32_intra_v1_1.session.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product32_intra_v1_1.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.session, range, value, display)

  return offset + length, value
end

-- T Best Ask
bmv_bmvmarketdata_product32_intra_v1_1.t_best_ask = {}

-- Size: T Best Ask
bmv_bmvmarketdata_product32_intra_v1_1.t_best_ask.size = 4

-- Display: T Best Ask
bmv_bmvmarketdata_product32_intra_v1_1.t_best_ask.display = function(value)
  return "T Best Ask: "..value
end

-- Translate: T Best Ask
bmv_bmvmarketdata_product32_intra_v1_1.t_best_ask.translate = function(raw)
  return raw/10000
end

-- Dissect: T Best Ask
bmv_bmvmarketdata_product32_intra_v1_1.t_best_ask.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product32_intra_v1_1.t_best_ask.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = bmv_bmvmarketdata_product32_intra_v1_1.t_best_ask.translate(raw)
  local display = bmv_bmvmarketdata_product32_intra_v1_1.t_best_ask.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.t_best_ask, range, value, display)

  return offset + length, value
end

-- T Best Bid
bmv_bmvmarketdata_product32_intra_v1_1.t_best_bid = {}

-- Size: T Best Bid
bmv_bmvmarketdata_product32_intra_v1_1.t_best_bid.size = 4

-- Display: T Best Bid
bmv_bmvmarketdata_product32_intra_v1_1.t_best_bid.display = function(value)
  return "T Best Bid: "..value
end

-- Translate: T Best Bid
bmv_bmvmarketdata_product32_intra_v1_1.t_best_bid.translate = function(raw)
  return raw/10000
end

-- Dissect: T Best Bid
bmv_bmvmarketdata_product32_intra_v1_1.t_best_bid.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product32_intra_v1_1.t_best_bid.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = bmv_bmvmarketdata_product32_intra_v1_1.t_best_bid.translate(raw)
  local display = bmv_bmvmarketdata_product32_intra_v1_1.t_best_bid.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.t_best_bid, range, value, display)

  return offset + length, value
end

-- T Tie Best Ask
bmv_bmvmarketdata_product32_intra_v1_1.t_tie_best_ask = {}

-- Size: T Tie Best Ask
bmv_bmvmarketdata_product32_intra_v1_1.t_tie_best_ask.size = 4

-- Display: T Tie Best Ask
bmv_bmvmarketdata_product32_intra_v1_1.t_tie_best_ask.display = function(value)
  return "T Tie Best Ask: "..value
end

-- Translate: T Tie Best Ask
bmv_bmvmarketdata_product32_intra_v1_1.t_tie_best_ask.translate = function(raw)
  return raw/10000
end

-- Dissect: T Tie Best Ask
bmv_bmvmarketdata_product32_intra_v1_1.t_tie_best_ask.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product32_intra_v1_1.t_tie_best_ask.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = bmv_bmvmarketdata_product32_intra_v1_1.t_tie_best_ask.translate(raw)
  local display = bmv_bmvmarketdata_product32_intra_v1_1.t_tie_best_ask.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.t_tie_best_ask, range, value, display)

  return offset + length, value
end

-- T Tie Best Bid
bmv_bmvmarketdata_product32_intra_v1_1.t_tie_best_bid = {}

-- Size: T Tie Best Bid
bmv_bmvmarketdata_product32_intra_v1_1.t_tie_best_bid.size = 4

-- Display: T Tie Best Bid
bmv_bmvmarketdata_product32_intra_v1_1.t_tie_best_bid.display = function(value)
  return "T Tie Best Bid: "..value
end

-- Translate: T Tie Best Bid
bmv_bmvmarketdata_product32_intra_v1_1.t_tie_best_bid.translate = function(raw)
  return raw/10000
end

-- Dissect: T Tie Best Bid
bmv_bmvmarketdata_product32_intra_v1_1.t_tie_best_bid.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product32_intra_v1_1.t_tie_best_bid.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = bmv_bmvmarketdata_product32_intra_v1_1.t_tie_best_bid.translate(raw)
  local display = bmv_bmvmarketdata_product32_intra_v1_1.t_tie_best_bid.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.t_tie_best_bid, range, value, display)

  return offset + length, value
end

-- T Without Best Ask
bmv_bmvmarketdata_product32_intra_v1_1.t_without_best_ask = {}

-- Size: T Without Best Ask
bmv_bmvmarketdata_product32_intra_v1_1.t_without_best_ask.size = 4

-- Display: T Without Best Ask
bmv_bmvmarketdata_product32_intra_v1_1.t_without_best_ask.display = function(value)
  return "T Without Best Ask: "..value
end

-- Translate: T Without Best Ask
bmv_bmvmarketdata_product32_intra_v1_1.t_without_best_ask.translate = function(raw)
  return raw/10000
end

-- Dissect: T Without Best Ask
bmv_bmvmarketdata_product32_intra_v1_1.t_without_best_ask.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product32_intra_v1_1.t_without_best_ask.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = bmv_bmvmarketdata_product32_intra_v1_1.t_without_best_ask.translate(raw)
  local display = bmv_bmvmarketdata_product32_intra_v1_1.t_without_best_ask.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.t_without_best_ask, range, value, display)

  return offset + length, value
end

-- T Without Best Bid
bmv_bmvmarketdata_product32_intra_v1_1.t_without_best_bid = {}

-- Size: T Without Best Bid
bmv_bmvmarketdata_product32_intra_v1_1.t_without_best_bid.size = 4

-- Display: T Without Best Bid
bmv_bmvmarketdata_product32_intra_v1_1.t_without_best_bid.display = function(value)
  return "T Without Best Bid: "..value
end

-- Translate: T Without Best Bid
bmv_bmvmarketdata_product32_intra_v1_1.t_without_best_bid.translate = function(raw)
  return raw/10000
end

-- Dissect: T Without Best Bid
bmv_bmvmarketdata_product32_intra_v1_1.t_without_best_bid.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product32_intra_v1_1.t_without_best_bid.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = bmv_bmvmarketdata_product32_intra_v1_1.t_without_best_bid.translate(raw)
  local display = bmv_bmvmarketdata_product32_intra_v1_1.t_without_best_bid.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.t_without_best_bid, range, value, display)

  return offset + length, value
end

-- Time
bmv_bmvmarketdata_product32_intra_v1_1.time = {}

-- Size: Time
bmv_bmvmarketdata_product32_intra_v1_1.time.size = 4

-- Display: Time
bmv_bmvmarketdata_product32_intra_v1_1.time.display = function(value)
  return "Time: "..value
end

-- Translate: Time
bmv_bmvmarketdata_product32_intra_v1_1.time.translate = function(raw)
  return raw/10000
end

-- Dissect: Time
bmv_bmvmarketdata_product32_intra_v1_1.time.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product32_intra_v1_1.time.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = bmv_bmvmarketdata_product32_intra_v1_1.time.translate(raw)
  local display = bmv_bmvmarketdata_product32_intra_v1_1.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.time, range, value, display)

  return offset + length, value
end

-- Time Best Spread
bmv_bmvmarketdata_product32_intra_v1_1.time_best_spread = {}

-- Size: Time Best Spread
bmv_bmvmarketdata_product32_intra_v1_1.time_best_spread.size = 4

-- Display: Time Best Spread
bmv_bmvmarketdata_product32_intra_v1_1.time_best_spread.display = function(value)
  return "Time Best Spread: "..value
end

-- Translate: Time Best Spread
bmv_bmvmarketdata_product32_intra_v1_1.time_best_spread.translate = function(raw)
  return raw/10000
end

-- Dissect: Time Best Spread
bmv_bmvmarketdata_product32_intra_v1_1.time_best_spread.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product32_intra_v1_1.time_best_spread.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = bmv_bmvmarketdata_product32_intra_v1_1.time_best_spread.translate(raw)
  local display = bmv_bmvmarketdata_product32_intra_v1_1.time_best_spread.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.time_best_spread, range, value, display)

  return offset + length, value
end

-- Time Tie Best Spread
bmv_bmvmarketdata_product32_intra_v1_1.time_tie_best_spread = {}

-- Size: Time Tie Best Spread
bmv_bmvmarketdata_product32_intra_v1_1.time_tie_best_spread.size = 4

-- Display: Time Tie Best Spread
bmv_bmvmarketdata_product32_intra_v1_1.time_tie_best_spread.display = function(value)
  return "Time Tie Best Spread: "..value
end

-- Translate: Time Tie Best Spread
bmv_bmvmarketdata_product32_intra_v1_1.time_tie_best_spread.translate = function(raw)
  return raw/10000
end

-- Dissect: Time Tie Best Spread
bmv_bmvmarketdata_product32_intra_v1_1.time_tie_best_spread.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product32_intra_v1_1.time_tie_best_spread.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = bmv_bmvmarketdata_product32_intra_v1_1.time_tie_best_spread.translate(raw)
  local display = bmv_bmvmarketdata_product32_intra_v1_1.time_tie_best_spread.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.time_tie_best_spread, range, value, display)

  return offset + length, value
end

-- Time Without Best Spread
bmv_bmvmarketdata_product32_intra_v1_1.time_without_best_spread = {}

-- Size: Time Without Best Spread
bmv_bmvmarketdata_product32_intra_v1_1.time_without_best_spread.size = 4

-- Display: Time Without Best Spread
bmv_bmvmarketdata_product32_intra_v1_1.time_without_best_spread.display = function(value)
  return "Time Without Best Spread: "..value
end

-- Translate: Time Without Best Spread
bmv_bmvmarketdata_product32_intra_v1_1.time_without_best_spread.translate = function(raw)
  return raw/10000
end

-- Dissect: Time Without Best Spread
bmv_bmvmarketdata_product32_intra_v1_1.time_without_best_spread.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product32_intra_v1_1.time_without_best_spread.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = bmv_bmvmarketdata_product32_intra_v1_1.time_without_best_spread.translate(raw)
  local display = bmv_bmvmarketdata_product32_intra_v1_1.time_without_best_spread.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.time_without_best_spread, range, value, display)

  return offset + length, value
end

-- Total Messages
bmv_bmvmarketdata_product32_intra_v1_1.total_messages = {}

-- Size: Total Messages
bmv_bmvmarketdata_product32_intra_v1_1.total_messages.size = 1

-- Display: Total Messages
bmv_bmvmarketdata_product32_intra_v1_1.total_messages.display = function(value)
  return "Total Messages: "..value
end

-- Dissect: Total Messages
bmv_bmvmarketdata_product32_intra_v1_1.total_messages.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product32_intra_v1_1.total_messages.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product32_intra_v1_1.total_messages.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.total_messages, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Bmv BmvMarketData Product32 Intra 1.1
-----------------------------------------------------------------------

-- Quotes Quality Message
bmv_bmvmarketdata_product32_intra_v1_1.quotes_quality_message = {}

-- Size: Quotes Quality Message
bmv_bmvmarketdata_product32_intra_v1_1.quotes_quality_message.size =
  bmv_bmvmarketdata_product32_intra_v1_1.origin.size + 
  bmv_bmvmarketdata_product32_intra_v1_1.instruments.size + 
  bmv_bmvmarketdata_product32_intra_v1_1.time.size + 
  bmv_bmvmarketdata_product32_intra_v1_1.market.size + 
  bmv_bmvmarketdata_product32_intra_v1_1.sector.size + 
  bmv_bmvmarketdata_product32_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_product32_intra_v1_1.indices.size

-- Display: Quotes Quality Message
bmv_bmvmarketdata_product32_intra_v1_1.quotes_quality_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quotes Quality Message
bmv_bmvmarketdata_product32_intra_v1_1.quotes_quality_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Origin: ALFA
  index, origin = bmv_bmvmarketdata_product32_intra_v1_1.origin.dissect(buffer, index, packet, parent)

  -- Instruments: Int16
  index, instruments = bmv_bmvmarketdata_product32_intra_v1_1.instruments.dissect(buffer, index, packet, parent)

  -- Time: Precio(4)
  index, time = bmv_bmvmarketdata_product32_intra_v1_1.time.dissect(buffer, index, packet, parent)

  -- Market: ALFA
  index, market = bmv_bmvmarketdata_product32_intra_v1_1.market.dissect(buffer, index, packet, parent)

  -- Sector: Int8
  index, sector = bmv_bmvmarketdata_product32_intra_v1_1.sector.dissect(buffer, index, packet, parent)

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_product32_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Indices: ALFA
  index, indices = bmv_bmvmarketdata_product32_intra_v1_1.indices.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quotes Quality Message
bmv_bmvmarketdata_product32_intra_v1_1.quotes_quality_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.quotes_quality_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product32_intra_v1_1.quotes_quality_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product32_intra_v1_1.quotes_quality_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product32_intra_v1_1.quotes_quality_message.fields(buffer, offset, packet, parent)
  end
end

-- Price Leaderboard Message
bmv_bmvmarketdata_product32_intra_v1_1.price_leaderboard_message = {}

-- Size: Price Leaderboard Message
bmv_bmvmarketdata_product32_intra_v1_1.price_leaderboard_message.size =
  bmv_bmvmarketdata_product32_intra_v1_1.origin.size + 
  bmv_bmvmarketdata_product32_intra_v1_1.t_best_bid.size + 
  bmv_bmvmarketdata_product32_intra_v1_1.t_tie_best_bid.size + 
  bmv_bmvmarketdata_product32_intra_v1_1.t_without_best_bid.size + 
  bmv_bmvmarketdata_product32_intra_v1_1.t_best_ask.size + 
  bmv_bmvmarketdata_product32_intra_v1_1.t_tie_best_ask.size + 
  bmv_bmvmarketdata_product32_intra_v1_1.t_without_best_ask.size + 
  bmv_bmvmarketdata_product32_intra_v1_1.market.size + 
  bmv_bmvmarketdata_product32_intra_v1_1.sector.size + 
  bmv_bmvmarketdata_product32_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_product32_intra_v1_1.indices.size

-- Display: Price Leaderboard Message
bmv_bmvmarketdata_product32_intra_v1_1.price_leaderboard_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Price Leaderboard Message
bmv_bmvmarketdata_product32_intra_v1_1.price_leaderboard_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Origin: ALFA
  index, origin = bmv_bmvmarketdata_product32_intra_v1_1.origin.dissect(buffer, index, packet, parent)

  -- T Best Bid: Precio(4)
  index, t_best_bid = bmv_bmvmarketdata_product32_intra_v1_1.t_best_bid.dissect(buffer, index, packet, parent)

  -- T Tie Best Bid: Precio(4)
  index, t_tie_best_bid = bmv_bmvmarketdata_product32_intra_v1_1.t_tie_best_bid.dissect(buffer, index, packet, parent)

  -- T Without Best Bid: Precio(4)
  index, t_without_best_bid = bmv_bmvmarketdata_product32_intra_v1_1.t_without_best_bid.dissect(buffer, index, packet, parent)

  -- T Best Ask: Precio(4)
  index, t_best_ask = bmv_bmvmarketdata_product32_intra_v1_1.t_best_ask.dissect(buffer, index, packet, parent)

  -- T Tie Best Ask: Precio(4)
  index, t_tie_best_ask = bmv_bmvmarketdata_product32_intra_v1_1.t_tie_best_ask.dissect(buffer, index, packet, parent)

  -- T Without Best Ask: Precio(4)
  index, t_without_best_ask = bmv_bmvmarketdata_product32_intra_v1_1.t_without_best_ask.dissect(buffer, index, packet, parent)

  -- Market: ALFA
  index, market = bmv_bmvmarketdata_product32_intra_v1_1.market.dissect(buffer, index, packet, parent)

  -- Sector: Int8
  index, sector = bmv_bmvmarketdata_product32_intra_v1_1.sector.dissect(buffer, index, packet, parent)

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_product32_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Indices: ALFA
  index, indices = bmv_bmvmarketdata_product32_intra_v1_1.indices.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Price Leaderboard Message
bmv_bmvmarketdata_product32_intra_v1_1.price_leaderboard_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.price_leaderboard_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product32_intra_v1_1.price_leaderboard_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product32_intra_v1_1.price_leaderboard_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product32_intra_v1_1.price_leaderboard_message.fields(buffer, offset, packet, parent)
  end
end

-- Spread Quality Message
bmv_bmvmarketdata_product32_intra_v1_1.spread_quality_message = {}

-- Size: Spread Quality Message
bmv_bmvmarketdata_product32_intra_v1_1.spread_quality_message.size =
  bmv_bmvmarketdata_product32_intra_v1_1.origin.size + 
  bmv_bmvmarketdata_product32_intra_v1_1.time_best_spread.size + 
  bmv_bmvmarketdata_product32_intra_v1_1.time_tie_best_spread.size + 
  bmv_bmvmarketdata_product32_intra_v1_1.time_without_best_spread.size + 
  bmv_bmvmarketdata_product32_intra_v1_1.market.size + 
  bmv_bmvmarketdata_product32_intra_v1_1.sector.size + 
  bmv_bmvmarketdata_product32_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_product32_intra_v1_1.indices.size

-- Display: Spread Quality Message
bmv_bmvmarketdata_product32_intra_v1_1.spread_quality_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spread Quality Message
bmv_bmvmarketdata_product32_intra_v1_1.spread_quality_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Origin: ALFA
  index, origin = bmv_bmvmarketdata_product32_intra_v1_1.origin.dissect(buffer, index, packet, parent)

  -- Time Best Spread: Precio(4)
  index, time_best_spread = bmv_bmvmarketdata_product32_intra_v1_1.time_best_spread.dissect(buffer, index, packet, parent)

  -- Time Tie Best Spread: Precio(4)
  index, time_tie_best_spread = bmv_bmvmarketdata_product32_intra_v1_1.time_tie_best_spread.dissect(buffer, index, packet, parent)

  -- Time Without Best Spread: Precio(4)
  index, time_without_best_spread = bmv_bmvmarketdata_product32_intra_v1_1.time_without_best_spread.dissect(buffer, index, packet, parent)

  -- Market: ALFA
  index, market = bmv_bmvmarketdata_product32_intra_v1_1.market.dissect(buffer, index, packet, parent)

  -- Sector: Int8
  index, sector = bmv_bmvmarketdata_product32_intra_v1_1.sector.dissect(buffer, index, packet, parent)

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_product32_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Indices: ALFA
  index, indices = bmv_bmvmarketdata_product32_intra_v1_1.indices.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spread Quality Message
bmv_bmvmarketdata_product32_intra_v1_1.spread_quality_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.spread_quality_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product32_intra_v1_1.spread_quality_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product32_intra_v1_1.spread_quality_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product32_intra_v1_1.spread_quality_message.fields(buffer, offset, packet, parent)
  end
end

-- Effective Spread Message
bmv_bmvmarketdata_product32_intra_v1_1.effective_spread_message = {}

-- Size: Effective Spread Message
bmv_bmvmarketdata_product32_intra_v1_1.effective_spread_message.size =
  bmv_bmvmarketdata_product32_intra_v1_1.origin.size + 
  bmv_bmvmarketdata_product32_intra_v1_1.es_mxn.size + 
  bmv_bmvmarketdata_product32_intra_v1_1.es_basis_points.size + 
  bmv_bmvmarketdata_product32_intra_v1_1.es_mxn_bid.size + 
  bmv_bmvmarketdata_product32_intra_v1_1.es_basis_points_bid.size + 
  bmv_bmvmarketdata_product32_intra_v1_1.es_mxn_ask.size + 
  bmv_bmvmarketdata_product32_intra_v1_1.es_basis_points_ask.size + 
  bmv_bmvmarketdata_product32_intra_v1_1.market.size + 
  bmv_bmvmarketdata_product32_intra_v1_1.sector.size + 
  bmv_bmvmarketdata_product32_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_product32_intra_v1_1.indices.size

-- Display: Effective Spread Message
bmv_bmvmarketdata_product32_intra_v1_1.effective_spread_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Effective Spread Message
bmv_bmvmarketdata_product32_intra_v1_1.effective_spread_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Origin: ALFA
  index, origin = bmv_bmvmarketdata_product32_intra_v1_1.origin.dissect(buffer, index, packet, parent)

  -- Es Mxn: Precio(4)
  index, es_mxn = bmv_bmvmarketdata_product32_intra_v1_1.es_mxn.dissect(buffer, index, packet, parent)

  -- Es Basis Points: Precio(4)
  index, es_basis_points = bmv_bmvmarketdata_product32_intra_v1_1.es_basis_points.dissect(buffer, index, packet, parent)

  -- Es Mxn Bid: Precio(4)
  index, es_mxn_bid = bmv_bmvmarketdata_product32_intra_v1_1.es_mxn_bid.dissect(buffer, index, packet, parent)

  -- Es Basis Points Bid: Precio(4)
  index, es_basis_points_bid = bmv_bmvmarketdata_product32_intra_v1_1.es_basis_points_bid.dissect(buffer, index, packet, parent)

  -- Es Mxn Ask: Precio(4)
  index, es_mxn_ask = bmv_bmvmarketdata_product32_intra_v1_1.es_mxn_ask.dissect(buffer, index, packet, parent)

  -- Es Basis Points Ask: Precio(4)
  index, es_basis_points_ask = bmv_bmvmarketdata_product32_intra_v1_1.es_basis_points_ask.dissect(buffer, index, packet, parent)

  -- Market: ALFA
  index, market = bmv_bmvmarketdata_product32_intra_v1_1.market.dissect(buffer, index, packet, parent)

  -- Sector: Int8
  index, sector = bmv_bmvmarketdata_product32_intra_v1_1.sector.dissect(buffer, index, packet, parent)

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_product32_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Indices: ALFA
  index, indices = bmv_bmvmarketdata_product32_intra_v1_1.indices.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Effective Spread Message
bmv_bmvmarketdata_product32_intra_v1_1.effective_spread_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.effective_spread_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product32_intra_v1_1.effective_spread_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product32_intra_v1_1.effective_spread_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product32_intra_v1_1.effective_spread_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
bmv_bmvmarketdata_product32_intra_v1_1.payload = {}

-- Dissect: Payload
bmv_bmvmarketdata_product32_intra_v1_1.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Effective Spread Message
  if message_type == 0x3D then
    return bmv_bmvmarketdata_product32_intra_v1_1.effective_spread_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spread Quality Message
  if message_type == 0x7B then
    return bmv_bmvmarketdata_product32_intra_v1_1.spread_quality_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Price Leaderboard Message
  if message_type == 0x40 then
    return bmv_bmvmarketdata_product32_intra_v1_1.price_leaderboard_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quotes Quality Message
  if message_type == 0x7C then
    return bmv_bmvmarketdata_product32_intra_v1_1.quotes_quality_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
bmv_bmvmarketdata_product32_intra_v1_1.message_header = {}

-- Size: Message Header
bmv_bmvmarketdata_product32_intra_v1_1.message_header.size =
  bmv_bmvmarketdata_product32_intra_v1_1.message_length.size + 
  bmv_bmvmarketdata_product32_intra_v1_1.message_type.size

-- Display: Message Header
bmv_bmvmarketdata_product32_intra_v1_1.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
bmv_bmvmarketdata_product32_intra_v1_1.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: Int16
  index, message_length = bmv_bmvmarketdata_product32_intra_v1_1.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: ALPHA
  index, message_type = bmv_bmvmarketdata_product32_intra_v1_1.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
bmv_bmvmarketdata_product32_intra_v1_1.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.message_header, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product32_intra_v1_1.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product32_intra_v1_1.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product32_intra_v1_1.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message Block
bmv_bmvmarketdata_product32_intra_v1_1.message_block = {}

-- Display: Message Block
bmv_bmvmarketdata_product32_intra_v1_1.message_block.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Block
bmv_bmvmarketdata_product32_intra_v1_1.message_block.fields = function(buffer, offset, packet, parent, size_of_message_block, message_block_index)
  local index = offset

  -- Implicit Message Block Index
  if message_block_index ~= nil and show.indexes then
    local iteration = parent:add(omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.message_block_index, message_block_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = bmv_bmvmarketdata_product32_intra_v1_1.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):uint()

  -- Payload: Runtime Type with 4 branches
  index = bmv_bmvmarketdata_product32_intra_v1_1.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message Block
bmv_bmvmarketdata_product32_intra_v1_1.message_block.dissect = function(buffer, offset, packet, parent, size_of_message_block, message_block_index)
  local index = offset + size_of_message_block

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.message_block, buffer(offset, 0))
    local current = bmv_bmvmarketdata_product32_intra_v1_1.message_block.fields(buffer, offset, packet, parent, size_of_message_block, message_block_index)
    parent:set_len(size_of_message_block)
    local display = bmv_bmvmarketdata_product32_intra_v1_1.message_block.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bmv_bmvmarketdata_product32_intra_v1_1.message_block.fields(buffer, offset, packet, parent, size_of_message_block, message_block_index)

    return index
  end
end

-- INTRA Multicast Header
bmv_bmvmarketdata_product32_intra_v1_1.intra_multicast_header = {}

-- Size: INTRA Multicast Header
bmv_bmvmarketdata_product32_intra_v1_1.intra_multicast_header.size =
  bmv_bmvmarketdata_product32_intra_v1_1.length.size + 
  bmv_bmvmarketdata_product32_intra_v1_1.total_messages.size + 
  bmv_bmvmarketdata_product32_intra_v1_1.market_data_group.size + 
  bmv_bmvmarketdata_product32_intra_v1_1.session.size + 
  bmv_bmvmarketdata_product32_intra_v1_1.sequence_number.size + 
  bmv_bmvmarketdata_product32_intra_v1_1.datetime.size

-- Display: INTRA Multicast Header
bmv_bmvmarketdata_product32_intra_v1_1.intra_multicast_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: INTRA Multicast Header
bmv_bmvmarketdata_product32_intra_v1_1.intra_multicast_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: Int16
  index, length = bmv_bmvmarketdata_product32_intra_v1_1.length.dissect(buffer, index, packet, parent)

  -- Total Messages: Int8
  index, total_messages = bmv_bmvmarketdata_product32_intra_v1_1.total_messages.dissect(buffer, index, packet, parent)

  -- Market Data Group: Int8
  index, market_data_group = bmv_bmvmarketdata_product32_intra_v1_1.market_data_group.dissect(buffer, index, packet, parent)

  -- Session: Int8
  index, session = bmv_bmvmarketdata_product32_intra_v1_1.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: Int32
  index, sequence_number = bmv_bmvmarketdata_product32_intra_v1_1.sequence_number.dissect(buffer, index, packet, parent)

  -- Datetime: Timestamp(3)
  index, datetime = bmv_bmvmarketdata_product32_intra_v1_1.datetime.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: INTRA Multicast Header
bmv_bmvmarketdata_product32_intra_v1_1.intra_multicast_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product32_intra_v1_1.fields.intra_multicast_header, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product32_intra_v1_1.intra_multicast_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product32_intra_v1_1.intra_multicast_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product32_intra_v1_1.intra_multicast_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
bmv_bmvmarketdata_product32_intra_v1_1.packet = {}

-- Verify required size of Udp packet
bmv_bmvmarketdata_product32_intra_v1_1.packet.requiredsize = function(buffer)
  return buffer:len() >= bmv_bmvmarketdata_product32_intra_v1_1.intra_multicast_header.size
end

-- Dissect Packet
bmv_bmvmarketdata_product32_intra_v1_1.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- INTRA Multicast Header: Struct of 6 fields
  index, intra_multicast_header = bmv_bmvmarketdata_product32_intra_v1_1.intra_multicast_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message Block
  local end_of_payload = buffer:len()

  -- Message Block: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):int()

    -- Runtime Size Of: Message Block
    local size_of_message_block = message_length + 2

    -- Message Block: Struct of 2 fields
    index, message_block = bmv_bmvmarketdata_product32_intra_v1_1.message_block.dissect(buffer, index, packet, parent, size_of_message_block, message_block_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_bmv_bmvmarketdata_product32_intra_v1_1.init()
end

-- Dissector for Bmv BmvMarketData Product32 Intra 1.1
function omi_bmv_bmvmarketdata_product32_intra_v1_1.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_bmv_bmvmarketdata_product32_intra_v1_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_bmv_bmvmarketdata_product32_intra_v1_1, buffer(), omi_bmv_bmvmarketdata_product32_intra_v1_1.description, "("..buffer:len().." Bytes)")
  return bmv_bmvmarketdata_product32_intra_v1_1.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
bmv_bmvmarketdata_product32_intra_v1_1.packet.fingerprint = function(buffer)
  if buffer:len() < 20 then
    return false
  end

  local message_type = buffer(19, 1):uint()

  -- Effective Spread Message
  if message_type == 0x3D then
    return true
  end

  -- Spread Quality Message
  if message_type == 0x7B then
    return true
  end

  -- Price Leaderboard Message
  if message_type == 0x40 then
    return true
  end

  -- Quotes Quality Message
  if message_type == 0x7C then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Bmv BmvMarketData Product32 Intra 1.1 (Udp)
local function omi_bmv_bmvmarketdata_product32_intra_v1_1_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not bmv_bmvmarketdata_product32_intra_v1_1.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this udp packet message dispatch
  if not bmv_bmvmarketdata_product32_intra_v1_1.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_bmv_bmvmarketdata_product32_intra_v1_1
  omi_bmv_bmvmarketdata_product32_intra_v1_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Bmv BmvMarketData Product32 Intra 1.1
omi_bmv_bmvmarketdata_product32_intra_v1_1:register_heuristic("udp", omi_bmv_bmvmarketdata_product32_intra_v1_1_udp_heuristic)

-- Register Bmv BmvMarketData Product32 Intra 1.1 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_bmv_bmvmarketdata_product32_intra_v1_1)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Bolsa Mexicana de Valores
--   Version: 1.1
--   Specification: Market Data Multicast_P32_1_ENG.pdf
--   Specification: Connection_Appendix_6.pdf
--
-- Script:
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
