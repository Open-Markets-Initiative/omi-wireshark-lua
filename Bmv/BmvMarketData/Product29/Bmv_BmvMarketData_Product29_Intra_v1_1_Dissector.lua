-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Bmv BmvMarketData Product29 Intra 1.1 Protocol
local omi_bmv_bmvmarketdata_product29_intra_v1_1 = Proto("Omi.Bmv.BmvMarketData.Product29.Intra.v1.1", "Bmv BmvMarketData Product29 Intra 1.1")

-- Protocol table
local bmv_bmvmarketdata_product29_intra_v1_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Bmv BmvMarketData Product29 Intra 1.1 Fields
omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.average_traded_value = ProtoField.new("Average Traded Value", "bmv.bmvmarketdata.product29.intra.v1.1.averagetradedvalue", ftypes.DOUBLE, nil, nil, nil, "Average traded value per trade")
omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.average_volume = ProtoField.new("Average Volume", "bmv.bmvmarketdata.product29.intra.v1.1.averagevolume", ftypes.INT64, nil, nil, nil, "Average volume per trade")
omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.datetime = ProtoField.new("Datetime", "bmv.bmvmarketdata.product29.intra.v1.1.datetime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date and time the packet is created")
omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.datetime_utc = ProtoField.new("Datetime", "bmv.bmvmarketdata.product29.intra.v1.1.datetime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date and time the packet is created")
omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.depth_ask = ProtoField.new("Depth Ask", "bmv.bmvmarketdata.product29.intra.v1.1.depthask", ftypes.INT64, nil, nil, nil, "Total volume of ask’s full depth")
omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.depth_ask_10_l = ProtoField.new("Depth Ask 10 L", "bmv.bmvmarketdata.product29.intra.v1.1.depthask10l", ftypes.INT64, nil, nil, nil, "Total volume of ask’s first 10 levels")
omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.depth_bid = ProtoField.new("Depth Bid", "bmv.bmvmarketdata.product29.intra.v1.1.depthbid", ftypes.INT64, nil, nil, nil, "Total volume of bid’s full depth")
omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.depth_bid_10_l = ProtoField.new("Depth Bid 10 L", "bmv.bmvmarketdata.product29.intra.v1.1.depthbid10l", ftypes.INT64, nil, nil, nil, "Total volume of bid’s first 10 levels")
omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.direction_of_the_bid = ProtoField.new("Direction Of The Bid", "bmv.bmvmarketdata.product29.intra.v1.1.directionofthebid", ftypes.STRING, nil, nil, nil, "C- Purchase V-Sale")
omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.indices = ProtoField.new("Indices", "bmv.bmvmarketdata.product29.intra.v1.1.indices", ftypes.STRING, nil, nil, nil, "See Indices Samples Catalog on the Connections and Appendix document")
omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.instrument_number = ProtoField.new("Instrument Number", "bmv.bmvmarketdata.product29.intra.v1.1.instrumentnumber", ftypes.INT32, nil, nil, nil, "Sole code throughout the life on the instrument")
omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.instruments_ba = ProtoField.new("Instruments Ba", "bmv.bmvmarketdata.product29.intra.v1.1.instrumentsba", ftypes.INT16, nil, nil, nil, "Number of instruments at which the Exchange has quotes at the national best ask up to the message reception")
omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.instruments_bb = ProtoField.new("Instruments Bb", "bmv.bmvmarketdata.product29.intra.v1.1.instrumentsbb", ftypes.INT16, nil, nil, nil, "Number of instruments at which the Exchange has quotes at the national best bid up to the message reception")
omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.instruments_gv_ba = ProtoField.new("Instruments Gv Ba", "bmv.bmvmarketdata.product29.intra.v1.1.instrumentsgvba", ftypes.INT16, nil, nil, nil, "Number of instruments at which the Exchange has greater volume at the national best ask up to the message reception")
omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.instruments_gv_bb = ProtoField.new("Instruments Gv Bb", "bmv.bmvmarketdata.product29.intra.v1.1.instrumentsgvbb", ftypes.INT16, nil, nil, nil, "Number of instruments at which the Exchange has greater volume at the national best bid up to the message reception")
omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.length = ProtoField.new("Length", "bmv.bmvmarketdata.product29.intra.v1.1.length", ftypes.INT16, nil, nil, nil, "Packet length, including header and all attached messages")
omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.market = ProtoField.new("Market", "bmv.bmvmarketdata.product29.intra.v1.1.market", ftypes.STRING, nil, nil, nil, "L-Local / G-Global / T-ETF’s / F-REIT’s")
omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.market_data_group = ProtoField.new("Market Data Group", "bmv.bmvmarketdata.product29.intra.v1.1.marketdatagroup", ftypes.INT8, nil, nil, nil, "See Market Data Groups Catalog")
omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.message_length = ProtoField.new("Message Length", "bmv.bmvmarketdata.product29.intra.v1.1.messagelength", ftypes.INT16, nil, nil, nil, "Indicates message length contained in this message block")
omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.message_type = ProtoField.new("Message Type", "bmv.bmvmarketdata.product29.intra.v1.1.messagetype", ftypes.UINT8, nil, nil, nil, "Code identifying the message")
omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.origin = ProtoField.new("Origin", "bmv.bmvmarketdata.product29.intra.v1.1.origin", ftypes.STRING, nil, nil, nil, "M-BMV I-BIVA")
omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.price_rate = ProtoField.new("Price Rate", "bmv.bmvmarketdata.product29.intra.v1.1.pricerate", ftypes.DOUBLE, nil, nil, nil, "Price of the best bid")
omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.ratio_v_at_ba = ProtoField.new("Ratio V At Ba", "bmv.bmvmarketdata.product29.intra.v1.1.ratiovatba", ftypes.INT32, nil, nil, nil, "Volume ratio between the total volume of the Exchange at the best ask and the national total volume at the best ask")
omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.ratio_v_at_bb = ProtoField.new("Ratio V At Bb", "bmv.bmvmarketdata.product29.intra.v1.1.ratiovatbb", ftypes.INT32, nil, nil, nil, "Volume ratio between the total volume of the Exchange at the best bid and the national total volume at the best bid")
omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.sector = ProtoField.new("Sector", "bmv.bmvmarketdata.product29.intra.v1.1.sector", ftypes.INT8, nil, nil, nil, "See Industry Classification on the Connections and Appendix document")
omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.sequence_number = ProtoField.new("Sequence Number", "bmv.bmvmarketdata.product29.intra.v1.1.sequencenumber", ftypes.INT32, nil, nil, nil, "Sequence number of the first message attached to header")
omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.session = ProtoField.new("Session", "bmv.bmvmarketdata.product29.intra.v1.1.session", ftypes.INT8, nil, nil, nil, "Current session identifier")
omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.t_best_ask = ProtoField.new("T Best Ask", "bmv.bmvmarketdata.product29.intra.v1.1.tbestask", ftypes.DOUBLE, nil, nil, nil, "Time proportion of the session, having the best ask")
omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.t_best_bid = ProtoField.new("T Best Bid", "bmv.bmvmarketdata.product29.intra.v1.1.tbestbid", ftypes.DOUBLE, nil, nil, nil, "Time proportion of the session, having the best bid")
omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.t_tie_best_ask = ProtoField.new("T Tie Best Ask", "bmv.bmvmarketdata.product29.intra.v1.1.ttiebestask", ftypes.DOUBLE, nil, nil, nil, "Time proportion of the session with a tie on the best ask")
omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.t_tie_best_bid = ProtoField.new("T Tie Best Bid", "bmv.bmvmarketdata.product29.intra.v1.1.ttiebestbid", ftypes.DOUBLE, nil, nil, nil, "Time proportion of the session with a tie on the best bid")
omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.t_without_best_ask = ProtoField.new("T Without Best Ask", "bmv.bmvmarketdata.product29.intra.v1.1.twithoutbestask", ftypes.DOUBLE, nil, nil, nil, "Time proportion of the session without having the best ask")
omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.t_without_best_bid = ProtoField.new("T Without Best Bid", "bmv.bmvmarketdata.product29.intra.v1.1.twithoutbestbid", ftypes.DOUBLE, nil, nil, nil, "Time proportion of the session without having the best bid")
omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.total_messages = ProtoField.new("Total Messages", "bmv.bmvmarketdata.product29.intra.v1.1.totalmessages", ftypes.INT8, nil, nil, nil, "Number of messages after the header")
omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.type_of_trading = ProtoField.new("Type Of Trading", "bmv.bmvmarketdata.product29.intra.v1.1.typeoftrading", ftypes.STRING, nil, nil, nil, "See Catalogue of Type of Trading on the Connections and Appendix document")
omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.volume = ProtoField.new("Volume", "bmv.bmvmarketdata.product29.intra.v1.1.volume", ftypes.INT64, nil, nil, nil, "Volume of the order")
omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.vwp_ask = ProtoField.new("Vwp Ask", "bmv.bmvmarketdata.product29.intra.v1.1.vwpask", ftypes.DOUBLE, nil, nil, nil, "Full ask’s depth volume weighted price")
omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.vwp_ask_10_l = ProtoField.new("Vwp Ask 10 L", "bmv.bmvmarketdata.product29.intra.v1.1.vwpask10l", ftypes.DOUBLE, nil, nil, nil, "Ask’s first 10 levels volume weighted price")
omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.vwp_bid = ProtoField.new("Vwp Bid", "bmv.bmvmarketdata.product29.intra.v1.1.vwpbid", ftypes.DOUBLE, nil, nil, nil, "Full bid’s depth volume weighted price")
omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.vwp_bid_10_l = ProtoField.new("Vwp Bid 10 L", "bmv.bmvmarketdata.product29.intra.v1.1.vwpbid10l", ftypes.DOUBLE, nil, nil, nil, "Bid’s first 10 levels volume weighted price")

-- Bmv BmvMarketData Product29 Intra 1.1 Framing
omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.intra_multicast_header = ProtoField.new("INTRA Multicast Header", "bmv.bmvmarketdata.product29.intra.v1.1.intramulticastheader", ftypes.STRING, nil, nil, nil, "BMV INTRA Multicast Header")
omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.message_block = ProtoField.new("Message Block", "bmv.bmvmarketdata.product29.intra.v1.1.messageblock", ftypes.STRING, nil, nil, nil, "BMV INTRA Multicast message block")
omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.message_header = ProtoField.new("Message Header", "bmv.bmvmarketdata.product29.intra.v1.1.messageheader", ftypes.STRING, nil, nil, nil, "Message length and message type")
omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.packet = ProtoField.new("Packet", "bmv.bmvmarketdata.product29.intra.v1.1.packet", ftypes.STRING, nil, nil, nil, "Bmv INTRA Multicast Udp Packet")

-- Bmv BmvMarketData Product29 1.1 Application Messages
omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.benchmark_trade_message = ProtoField.new("Benchmark Trade Message", "bmv.bmvmarketdata.product29.intra.v1.1.benchmarktrademessage", ftypes.STRING, nil, nil, nil, "Trading statistics by trade.")
omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.depth_at_best_prices_message = ProtoField.new("Depth At Best Prices Message", "bmv.bmvmarketdata.product29.intra.v1.1.depthatbestpricesmessage", ftypes.STRING, nil, nil, nil, "Identify the deepest quotes depth for the national best bid and offer.")
omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.last_quote_message = ProtoField.new("Last Quote Message", "bmv.bmvmarketdata.product29.intra.v1.1.lastquotemessage", ftypes.STRING, nil, nil, nil, "Message sent by instrument when the best bid is modified in the electronic book by the Origin Exchange; denotes the side that is modified, the sale or the purchase.")
omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.price_leaderboard_message = ProtoField.new("Price Leaderboard Message", "bmv.bmvmarketdata.product29.intra.v1.1.priceleaderboardmessage", ftypes.STRING, nil, nil, nil, "Measures time proportion that a stock Exchange maintains the best bid and (or) ask throughout the session.")
omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.trading_sniper_message = ProtoField.new("Trading Sniper Message", "bmv.bmvmarketdata.product29.intra.v1.1.tradingsnipermessage", ftypes.STRING, nil, nil, nil, "Quotes composition analysis, full and first ten depth levels")

-- Bmv BmvMarketData Product29 Intra 1.1 Generated Fields
omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.message_block_index = ProtoField.new("Message Block Index", "bmv.bmvmarketdata.product29.intra.v1.1.messageblockindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Bmv BmvMarketData Product29 Intra 1.1 Formatting
-----------------------------------------------------------------------

-- Text field character encoding (Wireshark ENC_ constant)
bmv_bmvmarketdata_product29_intra_v1_1.text_encoding = ENC_ASCII

-- timestamp format
local timestamp_format_enum = {
  { 1, "Full DateTime Local", 2 },
  { 2, "Full DateTime Utc", 3 }
}

-- 0=Raw, 1=Time of Day, 2=Full DateTime Local, 3=Full DateTime Utc
bmv_bmvmarketdata_product29_intra_v1_1.timestamp_format = 2


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Bmv BmvMarketData Product29 Intra 1.1 Element Dissection Options
show.application_messages = true
show.headers = true
show.structs = true
show.indexes = true

-- Register Bmv BmvMarketData Product29 Intra 1.1 Show Options
omi_bmv_bmvmarketdata_product29_intra_v1_1.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_bmv_bmvmarketdata_product29_intra_v1_1.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_bmv_bmvmarketdata_product29_intra_v1_1.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_bmv_bmvmarketdata_product29_intra_v1_1.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_bmv_bmvmarketdata_product29_intra_v1_1.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Display format for this protocol's timestamps", timestamp_format_enum, false)

-- Handle changed preferences
function omi_bmv_bmvmarketdata_product29_intra_v1_1.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_bmv_bmvmarketdata_product29_intra_v1_1.prefs.show_application_messages then
    show.application_messages = omi_bmv_bmvmarketdata_product29_intra_v1_1.prefs.show_application_messages
  end
  if show.headers ~= omi_bmv_bmvmarketdata_product29_intra_v1_1.prefs.show_headers then
    show.headers = omi_bmv_bmvmarketdata_product29_intra_v1_1.prefs.show_headers
  end
  if show.structs ~= omi_bmv_bmvmarketdata_product29_intra_v1_1.prefs.show_structs then
    show.structs = omi_bmv_bmvmarketdata_product29_intra_v1_1.prefs.show_structs
  end
  if show.indexes ~= omi_bmv_bmvmarketdata_product29_intra_v1_1.prefs.show_indexes then
    show.indexes = omi_bmv_bmvmarketdata_product29_intra_v1_1.prefs.show_indexes
  end
  if bmv_bmvmarketdata_product29_intra_v1_1.timestamp_format ~= omi_bmv_bmvmarketdata_product29_intra_v1_1.prefs.timestamp_format then
    bmv_bmvmarketdata_product29_intra_v1_1.timestamp_format = omi_bmv_bmvmarketdata_product29_intra_v1_1.prefs.timestamp_format
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
-- Bmv BmvMarketData Product29 Intra 1.1 Fields
-----------------------------------------------------------------------

-- Average Traded Value
bmv_bmvmarketdata_product29_intra_v1_1.average_traded_value = {}

-- Size: Average Traded Value
bmv_bmvmarketdata_product29_intra_v1_1.average_traded_value.size = 8

-- Display: Average Traded Value
bmv_bmvmarketdata_product29_intra_v1_1.average_traded_value.display = function(value)
  return "Average Traded Value: "..value
end

-- Translate: Average Traded Value
bmv_bmvmarketdata_product29_intra_v1_1.average_traded_value.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Average Traded Value
bmv_bmvmarketdata_product29_intra_v1_1.average_traded_value.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product29_intra_v1_1.average_traded_value.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product29_intra_v1_1.average_traded_value.translate(raw)
  local display = bmv_bmvmarketdata_product29_intra_v1_1.average_traded_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.average_traded_value, range, value, display)

  return offset + length, value
end

-- Average Volume
bmv_bmvmarketdata_product29_intra_v1_1.average_volume = {}

-- Size: Average Volume
bmv_bmvmarketdata_product29_intra_v1_1.average_volume.size = 8

-- Display: Average Volume
bmv_bmvmarketdata_product29_intra_v1_1.average_volume.display = function(value)
  return "Average Volume: "..value
end

-- Dissect: Average Volume
bmv_bmvmarketdata_product29_intra_v1_1.average_volume.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product29_intra_v1_1.average_volume.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = bmv_bmvmarketdata_product29_intra_v1_1.average_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.average_volume, range, value, display)

  return offset + length, value
end

-- Datetime
bmv_bmvmarketdata_product29_intra_v1_1.datetime = {}

-- Size: Datetime
bmv_bmvmarketdata_product29_intra_v1_1.datetime.size = 8

-- Dissect: Datetime
bmv_bmvmarketdata_product29_intra_v1_1.datetime.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product29_intra_v1_1.datetime.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.datetime
  if bmv_bmvmarketdata_product29_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.datetime_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Depth Ask
bmv_bmvmarketdata_product29_intra_v1_1.depth_ask = {}

-- Size: Depth Ask
bmv_bmvmarketdata_product29_intra_v1_1.depth_ask.size = 8

-- Display: Depth Ask
bmv_bmvmarketdata_product29_intra_v1_1.depth_ask.display = function(value)
  return "Depth Ask: "..value
end

-- Dissect: Depth Ask
bmv_bmvmarketdata_product29_intra_v1_1.depth_ask.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product29_intra_v1_1.depth_ask.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = bmv_bmvmarketdata_product29_intra_v1_1.depth_ask.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.depth_ask, range, value, display)

  return offset + length, value
end

-- Depth Ask 10 L
bmv_bmvmarketdata_product29_intra_v1_1.depth_ask_10_l = {}

-- Size: Depth Ask 10 L
bmv_bmvmarketdata_product29_intra_v1_1.depth_ask_10_l.size = 8

-- Display: Depth Ask 10 L
bmv_bmvmarketdata_product29_intra_v1_1.depth_ask_10_l.display = function(value)
  return "Depth Ask 10 L: "..value
end

-- Dissect: Depth Ask 10 L
bmv_bmvmarketdata_product29_intra_v1_1.depth_ask_10_l.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product29_intra_v1_1.depth_ask_10_l.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = bmv_bmvmarketdata_product29_intra_v1_1.depth_ask_10_l.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.depth_ask_10_l, range, value, display)

  return offset + length, value
end

-- Depth Bid
bmv_bmvmarketdata_product29_intra_v1_1.depth_bid = {}

-- Size: Depth Bid
bmv_bmvmarketdata_product29_intra_v1_1.depth_bid.size = 8

-- Display: Depth Bid
bmv_bmvmarketdata_product29_intra_v1_1.depth_bid.display = function(value)
  return "Depth Bid: "..value
end

-- Dissect: Depth Bid
bmv_bmvmarketdata_product29_intra_v1_1.depth_bid.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product29_intra_v1_1.depth_bid.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = bmv_bmvmarketdata_product29_intra_v1_1.depth_bid.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.depth_bid, range, value, display)

  return offset + length, value
end

-- Depth Bid 10 L
bmv_bmvmarketdata_product29_intra_v1_1.depth_bid_10_l = {}

-- Size: Depth Bid 10 L
bmv_bmvmarketdata_product29_intra_v1_1.depth_bid_10_l.size = 8

-- Display: Depth Bid 10 L
bmv_bmvmarketdata_product29_intra_v1_1.depth_bid_10_l.display = function(value)
  return "Depth Bid 10 L: "..value
end

-- Dissect: Depth Bid 10 L
bmv_bmvmarketdata_product29_intra_v1_1.depth_bid_10_l.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product29_intra_v1_1.depth_bid_10_l.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = bmv_bmvmarketdata_product29_intra_v1_1.depth_bid_10_l.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.depth_bid_10_l, range, value, display)

  return offset + length, value
end

-- Direction Of The Bid
bmv_bmvmarketdata_product29_intra_v1_1.direction_of_the_bid = {}

-- Size: Direction Of The Bid
bmv_bmvmarketdata_product29_intra_v1_1.direction_of_the_bid.size = 1

-- Display: Direction Of The Bid
bmv_bmvmarketdata_product29_intra_v1_1.direction_of_the_bid.labels = {
  ["C"] = "Direction Of The Bid: Purchase (C)",
  ["V"] = "Direction Of The Bid: Sale (V)",
}

bmv_bmvmarketdata_product29_intra_v1_1.direction_of_the_bid.display = function(value)
  return bmv_bmvmarketdata_product29_intra_v1_1.direction_of_the_bid.labels[value] or "Direction Of The Bid: Unknown("..value..")"
end

-- Dissect: Direction Of The Bid
bmv_bmvmarketdata_product29_intra_v1_1.direction_of_the_bid.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product29_intra_v1_1.direction_of_the_bid.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product29_intra_v1_1.direction_of_the_bid.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.direction_of_the_bid, range, value, display)

  return offset + length, value
end

-- Indices
bmv_bmvmarketdata_product29_intra_v1_1.indices = {}

-- Size: Indices
bmv_bmvmarketdata_product29_intra_v1_1.indices.size = 2

-- Display: Indices
bmv_bmvmarketdata_product29_intra_v1_1.indices.display = function(value)
  return "Indices: "..value
end

-- Dissect: Indices
bmv_bmvmarketdata_product29_intra_v1_1.indices.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product29_intra_v1_1.indices.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_product29_intra_v1_1.indices.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.indices, range, value, display)

  return offset + length, value
end

-- Instrument Number
bmv_bmvmarketdata_product29_intra_v1_1.instrument_number = {}

-- Size: Instrument Number
bmv_bmvmarketdata_product29_intra_v1_1.instrument_number.size = 4

-- Display: Instrument Number
bmv_bmvmarketdata_product29_intra_v1_1.instrument_number.display = function(value)
  return "Instrument Number: "..value
end

-- Dissect: Instrument Number
bmv_bmvmarketdata_product29_intra_v1_1.instrument_number.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product29_intra_v1_1.instrument_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product29_intra_v1_1.instrument_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.instrument_number, range, value, display)

  return offset + length, value
end

-- Instruments Ba
bmv_bmvmarketdata_product29_intra_v1_1.instruments_ba = {}

-- Size: Instruments Ba
bmv_bmvmarketdata_product29_intra_v1_1.instruments_ba.size = 2

-- Display: Instruments Ba
bmv_bmvmarketdata_product29_intra_v1_1.instruments_ba.display = function(value)
  return "Instruments Ba: "..value
end

-- Dissect: Instruments Ba
bmv_bmvmarketdata_product29_intra_v1_1.instruments_ba.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product29_intra_v1_1.instruments_ba.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product29_intra_v1_1.instruments_ba.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.instruments_ba, range, value, display)

  return offset + length, value
end

-- Instruments Bb
bmv_bmvmarketdata_product29_intra_v1_1.instruments_bb = {}

-- Size: Instruments Bb
bmv_bmvmarketdata_product29_intra_v1_1.instruments_bb.size = 2

-- Display: Instruments Bb
bmv_bmvmarketdata_product29_intra_v1_1.instruments_bb.display = function(value)
  return "Instruments Bb: "..value
end

-- Dissect: Instruments Bb
bmv_bmvmarketdata_product29_intra_v1_1.instruments_bb.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product29_intra_v1_1.instruments_bb.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product29_intra_v1_1.instruments_bb.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.instruments_bb, range, value, display)

  return offset + length, value
end

-- Instruments Gv Ba
bmv_bmvmarketdata_product29_intra_v1_1.instruments_gv_ba = {}

-- Size: Instruments Gv Ba
bmv_bmvmarketdata_product29_intra_v1_1.instruments_gv_ba.size = 2

-- Display: Instruments Gv Ba
bmv_bmvmarketdata_product29_intra_v1_1.instruments_gv_ba.display = function(value)
  return "Instruments Gv Ba: "..value
end

-- Dissect: Instruments Gv Ba
bmv_bmvmarketdata_product29_intra_v1_1.instruments_gv_ba.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product29_intra_v1_1.instruments_gv_ba.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product29_intra_v1_1.instruments_gv_ba.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.instruments_gv_ba, range, value, display)

  return offset + length, value
end

-- Instruments Gv Bb
bmv_bmvmarketdata_product29_intra_v1_1.instruments_gv_bb = {}

-- Size: Instruments Gv Bb
bmv_bmvmarketdata_product29_intra_v1_1.instruments_gv_bb.size = 2

-- Display: Instruments Gv Bb
bmv_bmvmarketdata_product29_intra_v1_1.instruments_gv_bb.display = function(value)
  return "Instruments Gv Bb: "..value
end

-- Dissect: Instruments Gv Bb
bmv_bmvmarketdata_product29_intra_v1_1.instruments_gv_bb.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product29_intra_v1_1.instruments_gv_bb.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product29_intra_v1_1.instruments_gv_bb.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.instruments_gv_bb, range, value, display)

  return offset + length, value
end

-- Length
bmv_bmvmarketdata_product29_intra_v1_1.length = {}

-- Size: Length
bmv_bmvmarketdata_product29_intra_v1_1.length.size = 2

-- Display: Length
bmv_bmvmarketdata_product29_intra_v1_1.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
bmv_bmvmarketdata_product29_intra_v1_1.length.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product29_intra_v1_1.length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product29_intra_v1_1.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.length, range, value, display)

  return offset + length, value
end

-- Market
bmv_bmvmarketdata_product29_intra_v1_1.market = {}

-- Size: Market
bmv_bmvmarketdata_product29_intra_v1_1.market.size = 1

-- Display: Market
bmv_bmvmarketdata_product29_intra_v1_1.market.labels = {
  ["L"] = "Market: Local (L)",
  ["G"] = "Market: Global (G)",
  ["T"] = "Market: Et Fs (T)",
  ["F"] = "Market: Rei Ts (F)",
}

bmv_bmvmarketdata_product29_intra_v1_1.market.display = function(value)
  return bmv_bmvmarketdata_product29_intra_v1_1.market.labels[value] or "Market: Unknown("..value..")"
end

-- Dissect: Market
bmv_bmvmarketdata_product29_intra_v1_1.market.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product29_intra_v1_1.market.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product29_intra_v1_1.market.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.market, range, value, display)

  return offset + length, value
end

-- Market Data Group
bmv_bmvmarketdata_product29_intra_v1_1.market_data_group = {}

-- Size: Market Data Group
bmv_bmvmarketdata_product29_intra_v1_1.market_data_group.size = 1

-- Display: Market Data Group
bmv_bmvmarketdata_product29_intra_v1_1.market_data_group.labels = {
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

bmv_bmvmarketdata_product29_intra_v1_1.market_data_group.display = function(value)
  return bmv_bmvmarketdata_product29_intra_v1_1.market_data_group.labels[value] or "Market Data Group: Unknown("..value..")"
end

-- Dissect: Market Data Group
bmv_bmvmarketdata_product29_intra_v1_1.market_data_group.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product29_intra_v1_1.market_data_group.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product29_intra_v1_1.market_data_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.market_data_group, range, value, display)

  return offset + length, value
end

-- Message Length
bmv_bmvmarketdata_product29_intra_v1_1.message_length = {}

-- Size: Message Length
bmv_bmvmarketdata_product29_intra_v1_1.message_length.size = 2

-- Display: Message Length
bmv_bmvmarketdata_product29_intra_v1_1.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
bmv_bmvmarketdata_product29_intra_v1_1.message_length.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product29_intra_v1_1.message_length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product29_intra_v1_1.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
bmv_bmvmarketdata_product29_intra_v1_1.message_type = {}

-- Size: Message Type
bmv_bmvmarketdata_product29_intra_v1_1.message_type.size = 1

-- Display: Message Type
bmv_bmvmarketdata_product29_intra_v1_1.message_type.display = function(value)
  if value == 0x6D then
    return "Message Type: Last Quote Message (0x6D)"
  end
  if value == 0x3A then
    return "Message Type: Benchmark Trade Message (0x3A)"
  end
  if value == 0x40 then
    return "Message Type: Price Leaderboard Message (0x40)"
  end
  if value == 0x3C then
    return "Message Type: Trading Sniper Message (0x3C)"
  end
  if value == 0x5E then
    return "Message Type: Depth At Best Prices Message (0x5E)"
  end

  return "Message Type: Unknown("..string.format("0x%02X", value)..")"
end

-- Dissect: Message Type
bmv_bmvmarketdata_product29_intra_v1_1.message_type.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product29_intra_v1_1.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bmv_bmvmarketdata_product29_intra_v1_1.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.message_type, range, value, display)

  return offset + length, value
end

-- Origin
bmv_bmvmarketdata_product29_intra_v1_1.origin = {}

-- Size: Origin
bmv_bmvmarketdata_product29_intra_v1_1.origin.size = 1

-- Display: Origin
bmv_bmvmarketdata_product29_intra_v1_1.origin.labels = {
  ["M"] = "Origin: Bmv (M)",
  ["I"] = "Origin: Biva (I)",
  ["A"] = "Origin: Both (A)",
}

bmv_bmvmarketdata_product29_intra_v1_1.origin.display = function(value)
  return bmv_bmvmarketdata_product29_intra_v1_1.origin.labels[value] or "Origin: Unknown("..value..")"
end

-- Dissect: Origin
bmv_bmvmarketdata_product29_intra_v1_1.origin.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product29_intra_v1_1.origin.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product29_intra_v1_1.origin.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.origin, range, value, display)

  return offset + length, value
end

-- Price Rate
bmv_bmvmarketdata_product29_intra_v1_1.price_rate = {}

-- Size: Price Rate
bmv_bmvmarketdata_product29_intra_v1_1.price_rate.size = 8

-- Display: Price Rate
bmv_bmvmarketdata_product29_intra_v1_1.price_rate.display = function(value)
  return "Price Rate: "..value
end

-- Translate: Price Rate
bmv_bmvmarketdata_product29_intra_v1_1.price_rate.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price Rate
bmv_bmvmarketdata_product29_intra_v1_1.price_rate.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product29_intra_v1_1.price_rate.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product29_intra_v1_1.price_rate.translate(raw)
  local display = bmv_bmvmarketdata_product29_intra_v1_1.price_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.price_rate, range, value, display)

  return offset + length, value
end

-- Ratio V At Ba
bmv_bmvmarketdata_product29_intra_v1_1.ratio_v_at_ba = {}

-- Size: Ratio V At Ba
bmv_bmvmarketdata_product29_intra_v1_1.ratio_v_at_ba.size = 4

-- Display: Ratio V At Ba
bmv_bmvmarketdata_product29_intra_v1_1.ratio_v_at_ba.display = function(value)
  return "Ratio V At Ba: "..value
end

-- Dissect: Ratio V At Ba
bmv_bmvmarketdata_product29_intra_v1_1.ratio_v_at_ba.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product29_intra_v1_1.ratio_v_at_ba.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product29_intra_v1_1.ratio_v_at_ba.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.ratio_v_at_ba, range, value, display)

  return offset + length, value
end

-- Ratio V At Bb
bmv_bmvmarketdata_product29_intra_v1_1.ratio_v_at_bb = {}

-- Size: Ratio V At Bb
bmv_bmvmarketdata_product29_intra_v1_1.ratio_v_at_bb.size = 4

-- Display: Ratio V At Bb
bmv_bmvmarketdata_product29_intra_v1_1.ratio_v_at_bb.display = function(value)
  return "Ratio V At Bb: "..value
end

-- Dissect: Ratio V At Bb
bmv_bmvmarketdata_product29_intra_v1_1.ratio_v_at_bb.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product29_intra_v1_1.ratio_v_at_bb.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product29_intra_v1_1.ratio_v_at_bb.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.ratio_v_at_bb, range, value, display)

  return offset + length, value
end

-- Sector
bmv_bmvmarketdata_product29_intra_v1_1.sector = {}

-- Size: Sector
bmv_bmvmarketdata_product29_intra_v1_1.sector.size = 1

-- Display: Sector
bmv_bmvmarketdata_product29_intra_v1_1.sector.display = function(value)
  return "Sector: "..value
end

-- Dissect: Sector
bmv_bmvmarketdata_product29_intra_v1_1.sector.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product29_intra_v1_1.sector.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product29_intra_v1_1.sector.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.sector, range, value, display)

  return offset + length, value
end

-- Sequence Number
bmv_bmvmarketdata_product29_intra_v1_1.sequence_number = {}

-- Size: Sequence Number
bmv_bmvmarketdata_product29_intra_v1_1.sequence_number.size = 4

-- Display: Sequence Number
bmv_bmvmarketdata_product29_intra_v1_1.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
bmv_bmvmarketdata_product29_intra_v1_1.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product29_intra_v1_1.sequence_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product29_intra_v1_1.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
bmv_bmvmarketdata_product29_intra_v1_1.session = {}

-- Size: Session
bmv_bmvmarketdata_product29_intra_v1_1.session.size = 1

-- Display: Session
bmv_bmvmarketdata_product29_intra_v1_1.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
bmv_bmvmarketdata_product29_intra_v1_1.session.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product29_intra_v1_1.session.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product29_intra_v1_1.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.session, range, value, display)

  return offset + length, value
end

-- T Best Ask
bmv_bmvmarketdata_product29_intra_v1_1.t_best_ask = {}

-- Size: T Best Ask
bmv_bmvmarketdata_product29_intra_v1_1.t_best_ask.size = 4

-- Display: T Best Ask
bmv_bmvmarketdata_product29_intra_v1_1.t_best_ask.display = function(value)
  return "T Best Ask: "..value
end

-- Translate: T Best Ask
bmv_bmvmarketdata_product29_intra_v1_1.t_best_ask.translate = function(raw)
  return raw/10000
end

-- Dissect: T Best Ask
bmv_bmvmarketdata_product29_intra_v1_1.t_best_ask.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product29_intra_v1_1.t_best_ask.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = bmv_bmvmarketdata_product29_intra_v1_1.t_best_ask.translate(raw)
  local display = bmv_bmvmarketdata_product29_intra_v1_1.t_best_ask.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.t_best_ask, range, value, display)

  return offset + length, value
end

-- T Best Bid
bmv_bmvmarketdata_product29_intra_v1_1.t_best_bid = {}

-- Size: T Best Bid
bmv_bmvmarketdata_product29_intra_v1_1.t_best_bid.size = 4

-- Display: T Best Bid
bmv_bmvmarketdata_product29_intra_v1_1.t_best_bid.display = function(value)
  return "T Best Bid: "..value
end

-- Translate: T Best Bid
bmv_bmvmarketdata_product29_intra_v1_1.t_best_bid.translate = function(raw)
  return raw/10000
end

-- Dissect: T Best Bid
bmv_bmvmarketdata_product29_intra_v1_1.t_best_bid.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product29_intra_v1_1.t_best_bid.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = bmv_bmvmarketdata_product29_intra_v1_1.t_best_bid.translate(raw)
  local display = bmv_bmvmarketdata_product29_intra_v1_1.t_best_bid.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.t_best_bid, range, value, display)

  return offset + length, value
end

-- T Tie Best Ask
bmv_bmvmarketdata_product29_intra_v1_1.t_tie_best_ask = {}

-- Size: T Tie Best Ask
bmv_bmvmarketdata_product29_intra_v1_1.t_tie_best_ask.size = 4

-- Display: T Tie Best Ask
bmv_bmvmarketdata_product29_intra_v1_1.t_tie_best_ask.display = function(value)
  return "T Tie Best Ask: "..value
end

-- Translate: T Tie Best Ask
bmv_bmvmarketdata_product29_intra_v1_1.t_tie_best_ask.translate = function(raw)
  return raw/10000
end

-- Dissect: T Tie Best Ask
bmv_bmvmarketdata_product29_intra_v1_1.t_tie_best_ask.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product29_intra_v1_1.t_tie_best_ask.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = bmv_bmvmarketdata_product29_intra_v1_1.t_tie_best_ask.translate(raw)
  local display = bmv_bmvmarketdata_product29_intra_v1_1.t_tie_best_ask.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.t_tie_best_ask, range, value, display)

  return offset + length, value
end

-- T Tie Best Bid
bmv_bmvmarketdata_product29_intra_v1_1.t_tie_best_bid = {}

-- Size: T Tie Best Bid
bmv_bmvmarketdata_product29_intra_v1_1.t_tie_best_bid.size = 4

-- Display: T Tie Best Bid
bmv_bmvmarketdata_product29_intra_v1_1.t_tie_best_bid.display = function(value)
  return "T Tie Best Bid: "..value
end

-- Translate: T Tie Best Bid
bmv_bmvmarketdata_product29_intra_v1_1.t_tie_best_bid.translate = function(raw)
  return raw/10000
end

-- Dissect: T Tie Best Bid
bmv_bmvmarketdata_product29_intra_v1_1.t_tie_best_bid.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product29_intra_v1_1.t_tie_best_bid.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = bmv_bmvmarketdata_product29_intra_v1_1.t_tie_best_bid.translate(raw)
  local display = bmv_bmvmarketdata_product29_intra_v1_1.t_tie_best_bid.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.t_tie_best_bid, range, value, display)

  return offset + length, value
end

-- T Without Best Ask
bmv_bmvmarketdata_product29_intra_v1_1.t_without_best_ask = {}

-- Size: T Without Best Ask
bmv_bmvmarketdata_product29_intra_v1_1.t_without_best_ask.size = 4

-- Display: T Without Best Ask
bmv_bmvmarketdata_product29_intra_v1_1.t_without_best_ask.display = function(value)
  return "T Without Best Ask: "..value
end

-- Translate: T Without Best Ask
bmv_bmvmarketdata_product29_intra_v1_1.t_without_best_ask.translate = function(raw)
  return raw/10000
end

-- Dissect: T Without Best Ask
bmv_bmvmarketdata_product29_intra_v1_1.t_without_best_ask.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product29_intra_v1_1.t_without_best_ask.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = bmv_bmvmarketdata_product29_intra_v1_1.t_without_best_ask.translate(raw)
  local display = bmv_bmvmarketdata_product29_intra_v1_1.t_without_best_ask.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.t_without_best_ask, range, value, display)

  return offset + length, value
end

-- T Without Best Bid
bmv_bmvmarketdata_product29_intra_v1_1.t_without_best_bid = {}

-- Size: T Without Best Bid
bmv_bmvmarketdata_product29_intra_v1_1.t_without_best_bid.size = 4

-- Display: T Without Best Bid
bmv_bmvmarketdata_product29_intra_v1_1.t_without_best_bid.display = function(value)
  return "T Without Best Bid: "..value
end

-- Translate: T Without Best Bid
bmv_bmvmarketdata_product29_intra_v1_1.t_without_best_bid.translate = function(raw)
  return raw/10000
end

-- Dissect: T Without Best Bid
bmv_bmvmarketdata_product29_intra_v1_1.t_without_best_bid.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product29_intra_v1_1.t_without_best_bid.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = bmv_bmvmarketdata_product29_intra_v1_1.t_without_best_bid.translate(raw)
  local display = bmv_bmvmarketdata_product29_intra_v1_1.t_without_best_bid.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.t_without_best_bid, range, value, display)

  return offset + length, value
end

-- Total Messages
bmv_bmvmarketdata_product29_intra_v1_1.total_messages = {}

-- Size: Total Messages
bmv_bmvmarketdata_product29_intra_v1_1.total_messages.size = 1

-- Display: Total Messages
bmv_bmvmarketdata_product29_intra_v1_1.total_messages.display = function(value)
  return "Total Messages: "..value
end

-- Dissect: Total Messages
bmv_bmvmarketdata_product29_intra_v1_1.total_messages.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product29_intra_v1_1.total_messages.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product29_intra_v1_1.total_messages.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.total_messages, range, value, display)

  return offset + length, value
end

-- Type Of Trading
bmv_bmvmarketdata_product29_intra_v1_1.type_of_trading = {}

-- Size: Type Of Trading
bmv_bmvmarketdata_product29_intra_v1_1.type_of_trading.size = 1

-- Display: Type Of Trading
bmv_bmvmarketdata_product29_intra_v1_1.type_of_trading.labels = {
  ["E"] = "Type Of Trading: Continuous Electronic Trading (E)",
  ["C"] = "Type Of Trading: Market On Close (C)",
  ["B"] = "Type Of Trading: Block Trading (B)",
  ["D"] = "Type Of Trading: Debt Trading (D)",
  ["W"] = "Type Of Trading: Warrants Trading (W)",
}

bmv_bmvmarketdata_product29_intra_v1_1.type_of_trading.display = function(value)
  return bmv_bmvmarketdata_product29_intra_v1_1.type_of_trading.labels[value] or "Type Of Trading: Unknown("..value..")"
end

-- Dissect: Type Of Trading
bmv_bmvmarketdata_product29_intra_v1_1.type_of_trading.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product29_intra_v1_1.type_of_trading.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product29_intra_v1_1.type_of_trading.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.type_of_trading, range, value, display)

  return offset + length, value
end

-- Volume
bmv_bmvmarketdata_product29_intra_v1_1.volume = {}

-- Size: Volume
bmv_bmvmarketdata_product29_intra_v1_1.volume.size = 8

-- Display: Volume
bmv_bmvmarketdata_product29_intra_v1_1.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
bmv_bmvmarketdata_product29_intra_v1_1.volume.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product29_intra_v1_1.volume.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = bmv_bmvmarketdata_product29_intra_v1_1.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.volume, range, value, display)

  return offset + length, value
end

-- Vwp Ask
bmv_bmvmarketdata_product29_intra_v1_1.vwp_ask = {}

-- Size: Vwp Ask
bmv_bmvmarketdata_product29_intra_v1_1.vwp_ask.size = 8

-- Display: Vwp Ask
bmv_bmvmarketdata_product29_intra_v1_1.vwp_ask.display = function(value)
  return "Vwp Ask: "..value
end

-- Translate: Vwp Ask
bmv_bmvmarketdata_product29_intra_v1_1.vwp_ask.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Vwp Ask
bmv_bmvmarketdata_product29_intra_v1_1.vwp_ask.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product29_intra_v1_1.vwp_ask.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product29_intra_v1_1.vwp_ask.translate(raw)
  local display = bmv_bmvmarketdata_product29_intra_v1_1.vwp_ask.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.vwp_ask, range, value, display)

  return offset + length, value
end

-- Vwp Ask 10 L
bmv_bmvmarketdata_product29_intra_v1_1.vwp_ask_10_l = {}

-- Size: Vwp Ask 10 L
bmv_bmvmarketdata_product29_intra_v1_1.vwp_ask_10_l.size = 8

-- Display: Vwp Ask 10 L
bmv_bmvmarketdata_product29_intra_v1_1.vwp_ask_10_l.display = function(value)
  return "Vwp Ask 10 L: "..value
end

-- Translate: Vwp Ask 10 L
bmv_bmvmarketdata_product29_intra_v1_1.vwp_ask_10_l.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Vwp Ask 10 L
bmv_bmvmarketdata_product29_intra_v1_1.vwp_ask_10_l.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product29_intra_v1_1.vwp_ask_10_l.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product29_intra_v1_1.vwp_ask_10_l.translate(raw)
  local display = bmv_bmvmarketdata_product29_intra_v1_1.vwp_ask_10_l.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.vwp_ask_10_l, range, value, display)

  return offset + length, value
end

-- Vwp Bid
bmv_bmvmarketdata_product29_intra_v1_1.vwp_bid = {}

-- Size: Vwp Bid
bmv_bmvmarketdata_product29_intra_v1_1.vwp_bid.size = 8

-- Display: Vwp Bid
bmv_bmvmarketdata_product29_intra_v1_1.vwp_bid.display = function(value)
  return "Vwp Bid: "..value
end

-- Translate: Vwp Bid
bmv_bmvmarketdata_product29_intra_v1_1.vwp_bid.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Vwp Bid
bmv_bmvmarketdata_product29_intra_v1_1.vwp_bid.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product29_intra_v1_1.vwp_bid.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product29_intra_v1_1.vwp_bid.translate(raw)
  local display = bmv_bmvmarketdata_product29_intra_v1_1.vwp_bid.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.vwp_bid, range, value, display)

  return offset + length, value
end

-- Vwp Bid 10 L
bmv_bmvmarketdata_product29_intra_v1_1.vwp_bid_10_l = {}

-- Size: Vwp Bid 10 L
bmv_bmvmarketdata_product29_intra_v1_1.vwp_bid_10_l.size = 8

-- Display: Vwp Bid 10 L
bmv_bmvmarketdata_product29_intra_v1_1.vwp_bid_10_l.display = function(value)
  return "Vwp Bid 10 L: "..value
end

-- Translate: Vwp Bid 10 L
bmv_bmvmarketdata_product29_intra_v1_1.vwp_bid_10_l.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Vwp Bid 10 L
bmv_bmvmarketdata_product29_intra_v1_1.vwp_bid_10_l.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product29_intra_v1_1.vwp_bid_10_l.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product29_intra_v1_1.vwp_bid_10_l.translate(raw)
  local display = bmv_bmvmarketdata_product29_intra_v1_1.vwp_bid_10_l.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.vwp_bid_10_l, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Bmv BmvMarketData Product29 Intra 1.1
-----------------------------------------------------------------------

-- Depth At Best Prices Message
bmv_bmvmarketdata_product29_intra_v1_1.depth_at_best_prices_message = {}

-- Size: Depth At Best Prices Message
bmv_bmvmarketdata_product29_intra_v1_1.depth_at_best_prices_message.size =
  bmv_bmvmarketdata_product29_intra_v1_1.origin.size + 
  bmv_bmvmarketdata_product29_intra_v1_1.instruments_bb.size + 
  bmv_bmvmarketdata_product29_intra_v1_1.instruments_gv_bb.size + 
  bmv_bmvmarketdata_product29_intra_v1_1.ratio_v_at_bb.size + 
  bmv_bmvmarketdata_product29_intra_v1_1.instruments_ba.size + 
  bmv_bmvmarketdata_product29_intra_v1_1.instruments_gv_ba.size + 
  bmv_bmvmarketdata_product29_intra_v1_1.ratio_v_at_ba.size + 
  bmv_bmvmarketdata_product29_intra_v1_1.market.size + 
  bmv_bmvmarketdata_product29_intra_v1_1.sector.size + 
  bmv_bmvmarketdata_product29_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_product29_intra_v1_1.indices.size

-- Display: Depth At Best Prices Message
bmv_bmvmarketdata_product29_intra_v1_1.depth_at_best_prices_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Depth At Best Prices Message
bmv_bmvmarketdata_product29_intra_v1_1.depth_at_best_prices_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Origin: ALFA
  index, origin = bmv_bmvmarketdata_product29_intra_v1_1.origin.dissect(buffer, index, packet, parent)

  -- Instruments Bb: Int16
  index, instruments_bb = bmv_bmvmarketdata_product29_intra_v1_1.instruments_bb.dissect(buffer, index, packet, parent)

  -- Instruments Gv Bb: Int16
  index, instruments_gv_bb = bmv_bmvmarketdata_product29_intra_v1_1.instruments_gv_bb.dissect(buffer, index, packet, parent)

  -- Ratio V At Bb: Int32
  index, ratio_v_at_bb = bmv_bmvmarketdata_product29_intra_v1_1.ratio_v_at_bb.dissect(buffer, index, packet, parent)

  -- Instruments Ba: Int16
  index, instruments_ba = bmv_bmvmarketdata_product29_intra_v1_1.instruments_ba.dissect(buffer, index, packet, parent)

  -- Instruments Gv Ba: Int16
  index, instruments_gv_ba = bmv_bmvmarketdata_product29_intra_v1_1.instruments_gv_ba.dissect(buffer, index, packet, parent)

  -- Ratio V At Ba: Int32
  index, ratio_v_at_ba = bmv_bmvmarketdata_product29_intra_v1_1.ratio_v_at_ba.dissect(buffer, index, packet, parent)

  -- Market: ALFA
  index, market = bmv_bmvmarketdata_product29_intra_v1_1.market.dissect(buffer, index, packet, parent)

  -- Sector: Int8
  index, sector = bmv_bmvmarketdata_product29_intra_v1_1.sector.dissect(buffer, index, packet, parent)

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_product29_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Indices: ALFA
  index, indices = bmv_bmvmarketdata_product29_intra_v1_1.indices.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Depth At Best Prices Message
bmv_bmvmarketdata_product29_intra_v1_1.depth_at_best_prices_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.depth_at_best_prices_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product29_intra_v1_1.depth_at_best_prices_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product29_intra_v1_1.depth_at_best_prices_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product29_intra_v1_1.depth_at_best_prices_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Sniper Message
bmv_bmvmarketdata_product29_intra_v1_1.trading_sniper_message = {}

-- Size: Trading Sniper Message
bmv_bmvmarketdata_product29_intra_v1_1.trading_sniper_message.size =
  bmv_bmvmarketdata_product29_intra_v1_1.origin.size + 
  bmv_bmvmarketdata_product29_intra_v1_1.depth_bid.size + 
  bmv_bmvmarketdata_product29_intra_v1_1.depth_ask.size + 
  bmv_bmvmarketdata_product29_intra_v1_1.depth_bid_10_l.size + 
  bmv_bmvmarketdata_product29_intra_v1_1.depth_ask_10_l.size + 
  bmv_bmvmarketdata_product29_intra_v1_1.vwp_bid_10_l.size + 
  bmv_bmvmarketdata_product29_intra_v1_1.vwp_ask_10_l.size + 
  bmv_bmvmarketdata_product29_intra_v1_1.vwp_bid.size + 
  bmv_bmvmarketdata_product29_intra_v1_1.vwp_ask.size + 
  bmv_bmvmarketdata_product29_intra_v1_1.market.size + 
  bmv_bmvmarketdata_product29_intra_v1_1.sector.size + 
  bmv_bmvmarketdata_product29_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_product29_intra_v1_1.indices.size

-- Display: Trading Sniper Message
bmv_bmvmarketdata_product29_intra_v1_1.trading_sniper_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Sniper Message
bmv_bmvmarketdata_product29_intra_v1_1.trading_sniper_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Origin: ALFA
  index, origin = bmv_bmvmarketdata_product29_intra_v1_1.origin.dissect(buffer, index, packet, parent)

  -- Depth Bid: Int64
  index, depth_bid = bmv_bmvmarketdata_product29_intra_v1_1.depth_bid.dissect(buffer, index, packet, parent)

  -- Depth Ask: Int64
  index, depth_ask = bmv_bmvmarketdata_product29_intra_v1_1.depth_ask.dissect(buffer, index, packet, parent)

  -- Depth Bid 10 L: Int64
  index, depth_bid_10_l = bmv_bmvmarketdata_product29_intra_v1_1.depth_bid_10_l.dissect(buffer, index, packet, parent)

  -- Depth Ask 10 L: Int64
  index, depth_ask_10_l = bmv_bmvmarketdata_product29_intra_v1_1.depth_ask_10_l.dissect(buffer, index, packet, parent)

  -- Vwp Bid 10 L: Precio(8)
  index, vwp_bid_10_l = bmv_bmvmarketdata_product29_intra_v1_1.vwp_bid_10_l.dissect(buffer, index, packet, parent)

  -- Vwp Ask 10 L: Precio(8)
  index, vwp_ask_10_l = bmv_bmvmarketdata_product29_intra_v1_1.vwp_ask_10_l.dissect(buffer, index, packet, parent)

  -- Vwp Bid: Precio(8)
  index, vwp_bid = bmv_bmvmarketdata_product29_intra_v1_1.vwp_bid.dissect(buffer, index, packet, parent)

  -- Vwp Ask: Precio(8)
  index, vwp_ask = bmv_bmvmarketdata_product29_intra_v1_1.vwp_ask.dissect(buffer, index, packet, parent)

  -- Market: ALFA
  index, market = bmv_bmvmarketdata_product29_intra_v1_1.market.dissect(buffer, index, packet, parent)

  -- Sector: Int8
  index, sector = bmv_bmvmarketdata_product29_intra_v1_1.sector.dissect(buffer, index, packet, parent)

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_product29_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Indices: ALFA
  index, indices = bmv_bmvmarketdata_product29_intra_v1_1.indices.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Sniper Message
bmv_bmvmarketdata_product29_intra_v1_1.trading_sniper_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.trading_sniper_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product29_intra_v1_1.trading_sniper_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product29_intra_v1_1.trading_sniper_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product29_intra_v1_1.trading_sniper_message.fields(buffer, offset, packet, parent)
  end
end

-- Price Leaderboard Message
bmv_bmvmarketdata_product29_intra_v1_1.price_leaderboard_message = {}

-- Size: Price Leaderboard Message
bmv_bmvmarketdata_product29_intra_v1_1.price_leaderboard_message.size =
  bmv_bmvmarketdata_product29_intra_v1_1.origin.size + 
  bmv_bmvmarketdata_product29_intra_v1_1.t_best_bid.size + 
  bmv_bmvmarketdata_product29_intra_v1_1.t_tie_best_bid.size + 
  bmv_bmvmarketdata_product29_intra_v1_1.t_without_best_bid.size + 
  bmv_bmvmarketdata_product29_intra_v1_1.t_best_ask.size + 
  bmv_bmvmarketdata_product29_intra_v1_1.t_tie_best_ask.size + 
  bmv_bmvmarketdata_product29_intra_v1_1.t_without_best_ask.size + 
  bmv_bmvmarketdata_product29_intra_v1_1.market.size + 
  bmv_bmvmarketdata_product29_intra_v1_1.sector.size + 
  bmv_bmvmarketdata_product29_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_product29_intra_v1_1.indices.size

-- Display: Price Leaderboard Message
bmv_bmvmarketdata_product29_intra_v1_1.price_leaderboard_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Price Leaderboard Message
bmv_bmvmarketdata_product29_intra_v1_1.price_leaderboard_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Origin: ALFA
  index, origin = bmv_bmvmarketdata_product29_intra_v1_1.origin.dissect(buffer, index, packet, parent)

  -- T Best Bid: Precio(4)
  index, t_best_bid = bmv_bmvmarketdata_product29_intra_v1_1.t_best_bid.dissect(buffer, index, packet, parent)

  -- T Tie Best Bid: Precio(4)
  index, t_tie_best_bid = bmv_bmvmarketdata_product29_intra_v1_1.t_tie_best_bid.dissect(buffer, index, packet, parent)

  -- T Without Best Bid: Precio(4)
  index, t_without_best_bid = bmv_bmvmarketdata_product29_intra_v1_1.t_without_best_bid.dissect(buffer, index, packet, parent)

  -- T Best Ask: Precio(4)
  index, t_best_ask = bmv_bmvmarketdata_product29_intra_v1_1.t_best_ask.dissect(buffer, index, packet, parent)

  -- T Tie Best Ask: Precio(4)
  index, t_tie_best_ask = bmv_bmvmarketdata_product29_intra_v1_1.t_tie_best_ask.dissect(buffer, index, packet, parent)

  -- T Without Best Ask: Precio(4)
  index, t_without_best_ask = bmv_bmvmarketdata_product29_intra_v1_1.t_without_best_ask.dissect(buffer, index, packet, parent)

  -- Market: ALFA
  index, market = bmv_bmvmarketdata_product29_intra_v1_1.market.dissect(buffer, index, packet, parent)

  -- Sector: Int8
  index, sector = bmv_bmvmarketdata_product29_intra_v1_1.sector.dissect(buffer, index, packet, parent)

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_product29_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Indices: ALFA
  index, indices = bmv_bmvmarketdata_product29_intra_v1_1.indices.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Price Leaderboard Message
bmv_bmvmarketdata_product29_intra_v1_1.price_leaderboard_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.price_leaderboard_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product29_intra_v1_1.price_leaderboard_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product29_intra_v1_1.price_leaderboard_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product29_intra_v1_1.price_leaderboard_message.fields(buffer, offset, packet, parent)
  end
end

-- Benchmark Trade Message
bmv_bmvmarketdata_product29_intra_v1_1.benchmark_trade_message = {}

-- Size: Benchmark Trade Message
bmv_bmvmarketdata_product29_intra_v1_1.benchmark_trade_message.size =
  bmv_bmvmarketdata_product29_intra_v1_1.origin.size + 
  bmv_bmvmarketdata_product29_intra_v1_1.average_volume.size + 
  bmv_bmvmarketdata_product29_intra_v1_1.average_traded_value.size + 
  bmv_bmvmarketdata_product29_intra_v1_1.market.size + 
  bmv_bmvmarketdata_product29_intra_v1_1.sector.size + 
  bmv_bmvmarketdata_product29_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_product29_intra_v1_1.indices.size

-- Display: Benchmark Trade Message
bmv_bmvmarketdata_product29_intra_v1_1.benchmark_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Benchmark Trade Message
bmv_bmvmarketdata_product29_intra_v1_1.benchmark_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Origin: ALFA
  index, origin = bmv_bmvmarketdata_product29_intra_v1_1.origin.dissect(buffer, index, packet, parent)

  -- Average Volume: Int64
  index, average_volume = bmv_bmvmarketdata_product29_intra_v1_1.average_volume.dissect(buffer, index, packet, parent)

  -- Average Traded Value: Precio(8)
  index, average_traded_value = bmv_bmvmarketdata_product29_intra_v1_1.average_traded_value.dissect(buffer, index, packet, parent)

  -- Market: ALFA
  index, market = bmv_bmvmarketdata_product29_intra_v1_1.market.dissect(buffer, index, packet, parent)

  -- Sector: Int8
  index, sector = bmv_bmvmarketdata_product29_intra_v1_1.sector.dissect(buffer, index, packet, parent)

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_product29_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Indices: ALFA
  index, indices = bmv_bmvmarketdata_product29_intra_v1_1.indices.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Benchmark Trade Message
bmv_bmvmarketdata_product29_intra_v1_1.benchmark_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.benchmark_trade_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product29_intra_v1_1.benchmark_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product29_intra_v1_1.benchmark_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product29_intra_v1_1.benchmark_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Last Quote Message
bmv_bmvmarketdata_product29_intra_v1_1.last_quote_message = {}

-- Size: Last Quote Message
bmv_bmvmarketdata_product29_intra_v1_1.last_quote_message.size =
  bmv_bmvmarketdata_product29_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_product29_intra_v1_1.origin.size + 
  bmv_bmvmarketdata_product29_intra_v1_1.volume.size + 
  bmv_bmvmarketdata_product29_intra_v1_1.price_rate.size + 
  bmv_bmvmarketdata_product29_intra_v1_1.direction_of_the_bid.size + 
  bmv_bmvmarketdata_product29_intra_v1_1.type_of_trading.size

-- Display: Last Quote Message
bmv_bmvmarketdata_product29_intra_v1_1.last_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Last Quote Message
bmv_bmvmarketdata_product29_intra_v1_1.last_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_product29_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Origin: ALFA
  index, origin = bmv_bmvmarketdata_product29_intra_v1_1.origin.dissect(buffer, index, packet, parent)

  -- Volume: Int64
  index, volume = bmv_bmvmarketdata_product29_intra_v1_1.volume.dissect(buffer, index, packet, parent)

  -- Price Rate: Precio (8)
  index, price_rate = bmv_bmvmarketdata_product29_intra_v1_1.price_rate.dissect(buffer, index, packet, parent)

  -- Direction Of The Bid: ALFA
  index, direction_of_the_bid = bmv_bmvmarketdata_product29_intra_v1_1.direction_of_the_bid.dissect(buffer, index, packet, parent)

  -- Type Of Trading: ALFA
  index, type_of_trading = bmv_bmvmarketdata_product29_intra_v1_1.type_of_trading.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Last Quote Message
bmv_bmvmarketdata_product29_intra_v1_1.last_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.last_quote_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product29_intra_v1_1.last_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product29_intra_v1_1.last_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product29_intra_v1_1.last_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
bmv_bmvmarketdata_product29_intra_v1_1.payload = {}

-- Dissect: Payload
bmv_bmvmarketdata_product29_intra_v1_1.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Last Quote Message
  if message_type == 0x6D then
    return bmv_bmvmarketdata_product29_intra_v1_1.last_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Benchmark Trade Message
  if message_type == 0x3A then
    return bmv_bmvmarketdata_product29_intra_v1_1.benchmark_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Price Leaderboard Message
  if message_type == 0x40 then
    return bmv_bmvmarketdata_product29_intra_v1_1.price_leaderboard_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Sniper Message
  if message_type == 0x3C then
    return bmv_bmvmarketdata_product29_intra_v1_1.trading_sniper_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Depth At Best Prices Message
  if message_type == 0x5E then
    return bmv_bmvmarketdata_product29_intra_v1_1.depth_at_best_prices_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
bmv_bmvmarketdata_product29_intra_v1_1.message_header = {}

-- Size: Message Header
bmv_bmvmarketdata_product29_intra_v1_1.message_header.size =
  bmv_bmvmarketdata_product29_intra_v1_1.message_length.size + 
  bmv_bmvmarketdata_product29_intra_v1_1.message_type.size

-- Display: Message Header
bmv_bmvmarketdata_product29_intra_v1_1.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
bmv_bmvmarketdata_product29_intra_v1_1.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: Int16
  index, message_length = bmv_bmvmarketdata_product29_intra_v1_1.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: ALPHA
  index, message_type = bmv_bmvmarketdata_product29_intra_v1_1.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
bmv_bmvmarketdata_product29_intra_v1_1.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.message_header, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product29_intra_v1_1.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product29_intra_v1_1.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product29_intra_v1_1.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message Block
bmv_bmvmarketdata_product29_intra_v1_1.message_block = {}

-- Display: Message Block
bmv_bmvmarketdata_product29_intra_v1_1.message_block.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Block
bmv_bmvmarketdata_product29_intra_v1_1.message_block.fields = function(buffer, offset, packet, parent, size_of_message_block, message_block_index)
  local index = offset

  -- Implicit Message Block Index
  if message_block_index ~= nil and show.indexes then
    local iteration = parent:add(omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.message_block_index, message_block_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = bmv_bmvmarketdata_product29_intra_v1_1.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):uint()

  -- Payload: Runtime Type with 5 branches
  index = bmv_bmvmarketdata_product29_intra_v1_1.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message Block
bmv_bmvmarketdata_product29_intra_v1_1.message_block.dissect = function(buffer, offset, packet, parent, size_of_message_block, message_block_index)
  local index = offset + size_of_message_block

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.message_block, buffer(offset, 0))
    local current = bmv_bmvmarketdata_product29_intra_v1_1.message_block.fields(buffer, offset, packet, parent, size_of_message_block, message_block_index)
    parent:set_len(size_of_message_block)
    local display = bmv_bmvmarketdata_product29_intra_v1_1.message_block.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bmv_bmvmarketdata_product29_intra_v1_1.message_block.fields(buffer, offset, packet, parent, size_of_message_block, message_block_index)

    return index
  end
end

-- INTRA Multicast Header
bmv_bmvmarketdata_product29_intra_v1_1.intra_multicast_header = {}

-- Size: INTRA Multicast Header
bmv_bmvmarketdata_product29_intra_v1_1.intra_multicast_header.size =
  bmv_bmvmarketdata_product29_intra_v1_1.length.size + 
  bmv_bmvmarketdata_product29_intra_v1_1.total_messages.size + 
  bmv_bmvmarketdata_product29_intra_v1_1.market_data_group.size + 
  bmv_bmvmarketdata_product29_intra_v1_1.session.size + 
  bmv_bmvmarketdata_product29_intra_v1_1.sequence_number.size + 
  bmv_bmvmarketdata_product29_intra_v1_1.datetime.size

-- Display: INTRA Multicast Header
bmv_bmvmarketdata_product29_intra_v1_1.intra_multicast_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: INTRA Multicast Header
bmv_bmvmarketdata_product29_intra_v1_1.intra_multicast_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: Int16
  index, length = bmv_bmvmarketdata_product29_intra_v1_1.length.dissect(buffer, index, packet, parent)

  -- Total Messages: Int8
  index, total_messages = bmv_bmvmarketdata_product29_intra_v1_1.total_messages.dissect(buffer, index, packet, parent)

  -- Market Data Group: Int8
  index, market_data_group = bmv_bmvmarketdata_product29_intra_v1_1.market_data_group.dissect(buffer, index, packet, parent)

  -- Session: Int8
  index, session = bmv_bmvmarketdata_product29_intra_v1_1.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: Int32
  index, sequence_number = bmv_bmvmarketdata_product29_intra_v1_1.sequence_number.dissect(buffer, index, packet, parent)

  -- Datetime: Timestamp(3)
  index, datetime = bmv_bmvmarketdata_product29_intra_v1_1.datetime.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: INTRA Multicast Header
bmv_bmvmarketdata_product29_intra_v1_1.intra_multicast_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product29_intra_v1_1.fields.intra_multicast_header, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product29_intra_v1_1.intra_multicast_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product29_intra_v1_1.intra_multicast_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product29_intra_v1_1.intra_multicast_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
bmv_bmvmarketdata_product29_intra_v1_1.packet = {}

-- Verify required size of Udp packet
bmv_bmvmarketdata_product29_intra_v1_1.packet.requiredsize = function(buffer)
  return buffer:len() >= bmv_bmvmarketdata_product29_intra_v1_1.intra_multicast_header.size
end

-- Dissect Packet
bmv_bmvmarketdata_product29_intra_v1_1.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- INTRA Multicast Header: Struct of 6 fields
  index, intra_multicast_header = bmv_bmvmarketdata_product29_intra_v1_1.intra_multicast_header.dissect(buffer, index, packet, parent)

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
    index, message_block = bmv_bmvmarketdata_product29_intra_v1_1.message_block.dissect(buffer, index, packet, parent, size_of_message_block, message_block_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_bmv_bmvmarketdata_product29_intra_v1_1.init()
end

-- Dissector for Bmv BmvMarketData Product29 Intra 1.1
function omi_bmv_bmvmarketdata_product29_intra_v1_1.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_bmv_bmvmarketdata_product29_intra_v1_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_bmv_bmvmarketdata_product29_intra_v1_1, buffer(), omi_bmv_bmvmarketdata_product29_intra_v1_1.description, "("..buffer:len().." Bytes)")
  return bmv_bmvmarketdata_product29_intra_v1_1.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
bmv_bmvmarketdata_product29_intra_v1_1.packet.fingerprint = function(buffer)
  if buffer:len() < 20 then
    return false
  end

  local message_type = buffer(19, 1):uint()

  -- Last Quote Message
  if message_type == 0x6D then
    return true
  end

  -- Benchmark Trade Message
  if message_type == 0x3A then
    return true
  end

  -- Price Leaderboard Message
  if message_type == 0x40 then
    return true
  end

  -- Trading Sniper Message
  if message_type == 0x3C then
    return true
  end

  -- Depth At Best Prices Message
  if message_type == 0x5E then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Bmv BmvMarketData Product29 Intra 1.1 (Udp)
local function omi_bmv_bmvmarketdata_product29_intra_v1_1_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not bmv_bmvmarketdata_product29_intra_v1_1.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this udp packet message dispatch
  if not bmv_bmvmarketdata_product29_intra_v1_1.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_bmv_bmvmarketdata_product29_intra_v1_1
  omi_bmv_bmvmarketdata_product29_intra_v1_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Bmv BmvMarketData Product29 Intra 1.1
omi_bmv_bmvmarketdata_product29_intra_v1_1:register_heuristic("udp", omi_bmv_bmvmarketdata_product29_intra_v1_1_udp_heuristic)

-- Register Bmv BmvMarketData Product29 Intra 1.1 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_bmv_bmvmarketdata_product29_intra_v1_1)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Bolsa Mexicana de Valores
--   Version: 1.1
--   Specification: Market Data Multicast_P29_1_ENG.pdf
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
