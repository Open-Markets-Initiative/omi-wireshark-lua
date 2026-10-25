-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Binance BinanceSpot MarketData Sbe 1.0 Protocol
local omi_binance_binancespot_marketdata_sbe_v1_0 = Proto("Omi.Binance.BinanceSpot.MarketData.Sbe.v1.0", "Binance BinanceSpot MarketData Sbe 1.0")

-- Protocol table
local binance_binancespot_marketdata_sbe_v1_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Binance BinanceSpot MarketData Sbe 1.0 Fields
omi_binance_binancespot_marketdata_sbe_v1_0.fields.ask_price = ProtoField.new("Ask Price", "binance.binancespot.marketdata.sbe.v1.0.askprice", ftypes.INT64, nil, nil, nil, "askPrice")
omi_binance_binancespot_marketdata_sbe_v1_0.fields.ask_qty = ProtoField.new("Ask Qty", "binance.binancespot.marketdata.sbe.v1.0.askqty", ftypes.INT64, nil, nil, nil, "askQty")
omi_binance_binancespot_marketdata_sbe_v1_0.fields.bid_price = ProtoField.new("Bid Price", "binance.binancespot.marketdata.sbe.v1.0.bidprice", ftypes.INT64, nil, nil, nil, "bidPrice")
omi_binance_binancespot_marketdata_sbe_v1_0.fields.bid_qty = ProtoField.new("Bid Qty", "binance.binancespot.marketdata.sbe.v1.0.bidqty", ftypes.INT64, nil, nil, nil, "bidQty")
omi_binance_binancespot_marketdata_sbe_v1_0.fields.block_length = ProtoField.new("Block Length", "binance.binancespot.marketdata.sbe.v1.0.blocklength", ftypes.UINT16, nil, nil, nil, "blockLength")
omi_binance_binancespot_marketdata_sbe_v1_0.fields.book_update_id = ProtoField.new("Book Update Id", "binance.binancespot.marketdata.sbe.v1.0.bookupdateid", ftypes.INT64, nil, nil, nil, "bookUpdateId")
omi_binance_binancespot_marketdata_sbe_v1_0.fields.depth_diff_stream_event_message_asks_group = ProtoField.new("Depth Diff Stream Event Message asks Group", "binance.binancespot.marketdata.sbe.v1.0.depthdiffstreameventmessageasksgroup", ftypes.STRING, nil, nil, nil, "asks")
omi_binance_binancespot_marketdata_sbe_v1_0.fields.depth_diff_stream_event_message_asks_groups = ProtoField.new("Depth Diff Stream Event Message asks Groups", "binance.binancespot.marketdata.sbe.v1.0.depthdiffstreameventmessageasksgroups", ftypes.STRING, nil, nil, nil, "asks Block")
omi_binance_binancespot_marketdata_sbe_v1_0.fields.depth_diff_stream_event_message_bids_group = ProtoField.new("Depth Diff Stream Event Message bids Group", "binance.binancespot.marketdata.sbe.v1.0.depthdiffstreameventmessagebidsgroup", ftypes.STRING, nil, nil, nil, "bids")
omi_binance_binancespot_marketdata_sbe_v1_0.fields.depth_diff_stream_event_message_bids_groups = ProtoField.new("Depth Diff Stream Event Message bids Groups", "binance.binancespot.marketdata.sbe.v1.0.depthdiffstreameventmessagebidsgroups", ftypes.STRING, nil, nil, nil, "bids Block")
omi_binance_binancespot_marketdata_sbe_v1_0.fields.depth_snapshot_stream_event_message_asks_group = ProtoField.new("Depth Snapshot Stream Event Message asks Group", "binance.binancespot.marketdata.sbe.v1.0.depthsnapshotstreameventmessageasksgroup", ftypes.STRING, nil, nil, nil, "asks")
omi_binance_binancespot_marketdata_sbe_v1_0.fields.depth_snapshot_stream_event_message_asks_groups = ProtoField.new("Depth Snapshot Stream Event Message asks Groups", "binance.binancespot.marketdata.sbe.v1.0.depthsnapshotstreameventmessageasksgroups", ftypes.STRING, nil, nil, nil, "asks Block")
omi_binance_binancespot_marketdata_sbe_v1_0.fields.depth_snapshot_stream_event_message_bids_group = ProtoField.new("Depth Snapshot Stream Event Message bids Group", "binance.binancespot.marketdata.sbe.v1.0.depthsnapshotstreameventmessagebidsgroup", ftypes.STRING, nil, nil, nil, "bids")
omi_binance_binancespot_marketdata_sbe_v1_0.fields.depth_snapshot_stream_event_message_bids_groups = ProtoField.new("Depth Snapshot Stream Event Message bids Groups", "binance.binancespot.marketdata.sbe.v1.0.depthsnapshotstreameventmessagebidsgroups", ftypes.STRING, nil, nil, nil, "bids Block")
omi_binance_binancespot_marketdata_sbe_v1_0.fields.event_time = ProtoField.new("Event Time", "binance.binancespot.marketdata.sbe.v1.0.eventtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "eventTime")
omi_binance_binancespot_marketdata_sbe_v1_0.fields.event_time_utc = ProtoField.new("Event Time", "binance.binancespot.marketdata.sbe.v1.0.eventtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "eventTime")
omi_binance_binancespot_marketdata_sbe_v1_0.fields.first_book_update_id = ProtoField.new("First Book Update Id", "binance.binancespot.marketdata.sbe.v1.0.firstbookupdateid", ftypes.INT64, nil, nil, nil, "firstBookUpdateId")
omi_binance_binancespot_marketdata_sbe_v1_0.fields.group_size_16_encoding = ProtoField.new("Group Size 16 Encoding", "binance.binancespot.marketdata.sbe.v1.0.groupsize16encoding", ftypes.STRING, nil, nil, nil, "groupSize16Encoding")
omi_binance_binancespot_marketdata_sbe_v1_0.fields.group_size_encoding = ProtoField.new("Group Size Encoding", "binance.binancespot.marketdata.sbe.v1.0.groupsizeencoding", ftypes.STRING, nil, nil, nil, "groupSizeEncoding")
omi_binance_binancespot_marketdata_sbe_v1_0.fields.id = ProtoField.new("Id", "binance.binancespot.marketdata.sbe.v1.0.id", ftypes.INT64)
omi_binance_binancespot_marketdata_sbe_v1_0.fields.is_buyer_maker = ProtoField.new("Is Buyer Maker", "binance.binancespot.marketdata.sbe.v1.0.isbuyermaker", ftypes.UINT8, nil, nil, nil, "isBuyerMaker")
omi_binance_binancespot_marketdata_sbe_v1_0.fields.last_book_update_id = ProtoField.new("Last Book Update Id", "binance.binancespot.marketdata.sbe.v1.0.lastbookupdateid", ftypes.INT64, nil, nil, nil, "lastBookUpdateId")
omi_binance_binancespot_marketdata_sbe_v1_0.fields.num_in_group_uint_16 = ProtoField.new("Num In Group uint 16", "binance.binancespot.marketdata.sbe.v1.0.numingroupuint16", ftypes.UINT16, nil, nil, nil, "numInGroup")
omi_binance_binancespot_marketdata_sbe_v1_0.fields.num_in_group_uint_32 = ProtoField.new("Num In Group uint 32", "binance.binancespot.marketdata.sbe.v1.0.numingroupuint32", ftypes.UINT32, nil, nil, nil, "numInGroup")
omi_binance_binancespot_marketdata_sbe_v1_0.fields.price = ProtoField.new("Price", "binance.binancespot.marketdata.sbe.v1.0.price", ftypes.INT64)
omi_binance_binancespot_marketdata_sbe_v1_0.fields.price_exponent = ProtoField.new("Price Exponent", "binance.binancespot.marketdata.sbe.v1.0.priceexponent", ftypes.INT8, nil, nil, nil, "priceExponent")
omi_binance_binancespot_marketdata_sbe_v1_0.fields.qty = ProtoField.new("Qty", "binance.binancespot.marketdata.sbe.v1.0.qty", ftypes.INT64)
omi_binance_binancespot_marketdata_sbe_v1_0.fields.qty_exponent = ProtoField.new("Qty Exponent", "binance.binancespot.marketdata.sbe.v1.0.qtyexponent", ftypes.INT8, nil, nil, nil, "qtyExponent")
omi_binance_binancespot_marketdata_sbe_v1_0.fields.schema_id = ProtoField.new("Schema Id", "binance.binancespot.marketdata.sbe.v1.0.schemaid", ftypes.UINT16, nil, nil, nil, "Identifier of the schema the message belongs to")
omi_binance_binancespot_marketdata_sbe_v1_0.fields.symbol = ProtoField.new("Symbol", "binance.binancespot.marketdata.sbe.v1.0.symbol", ftypes.STRING, nil, nil, nil, "symbol data struct")
omi_binance_binancespot_marketdata_sbe_v1_0.fields.symbol_data = ProtoField.new("Symbol Data", "binance.binancespot.marketdata.sbe.v1.0.symboldata", ftypes.STRING)
omi_binance_binancespot_marketdata_sbe_v1_0.fields.symbol_length = ProtoField.new("Symbol Length", "binance.binancespot.marketdata.sbe.v1.0.symbollength", ftypes.UINT8)
omi_binance_binancespot_marketdata_sbe_v1_0.fields.template_id = ProtoField.new("Template Id", "binance.binancespot.marketdata.sbe.v1.0.templateid", ftypes.UINT16, nil, nil, nil, "Template id of the message")
omi_binance_binancespot_marketdata_sbe_v1_0.fields.trades_stream_event_message_trades_group = ProtoField.new("Trades Stream Event Message trades Group", "binance.binancespot.marketdata.sbe.v1.0.tradesstreameventmessagetradesgroup", ftypes.STRING, nil, nil, nil, "trades")
omi_binance_binancespot_marketdata_sbe_v1_0.fields.trades_stream_event_message_trades_groups = ProtoField.new("Trades Stream Event Message trades Groups", "binance.binancespot.marketdata.sbe.v1.0.tradesstreameventmessagetradesgroups", ftypes.STRING, nil, nil, nil, "trades Block")
omi_binance_binancespot_marketdata_sbe_v1_0.fields.transact_time = ProtoField.new("Transact Time", "binance.binancespot.marketdata.sbe.v1.0.transacttime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "transactTime")
omi_binance_binancespot_marketdata_sbe_v1_0.fields.transact_time_utc = ProtoField.new("Transact Time", "binance.binancespot.marketdata.sbe.v1.0.transacttime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "transactTime")
omi_binance_binancespot_marketdata_sbe_v1_0.fields.version = ProtoField.new("Version", "binance.binancespot.marketdata.sbe.v1.0.version", ftypes.UINT16, nil, nil, nil, "Schema version")

-- Binance BinanceSpot MarketData Sbe 1.0 Framing
omi_binance_binancespot_marketdata_sbe_v1_0.fields.frame = ProtoField.new("Frame", "binance.binancespot.marketdata.sbe.v1.0.frame", ftypes.STRING, nil, nil, nil, "Binance WebSocket binary frame payload: one Sbe message")
omi_binance_binancespot_marketdata_sbe_v1_0.fields.message_header = ProtoField.new("Message Header", "binance.binancespot.marketdata.sbe.v1.0.messageheader", ftypes.STRING, nil, nil, nil, "Binance Sbe message header — block length, template id, schema id and version of the message root")
omi_binance_binancespot_marketdata_sbe_v1_0.fields.sbe_message = ProtoField.new("Sbe Message", "binance.binancespot.marketdata.sbe.v1.0.sbemessage", ftypes.STRING, nil, nil, nil, "Binance Sbe message")

-- Binance BinanceSpot MarketData 1.0 Application Messages
omi_binance_binancespot_marketdata_sbe_v1_0.fields.best_bid_ask_stream_event_message = ProtoField.new("Best Bid Ask Stream Event Message", "binance.binancespot.marketdata.sbe.v1.0.bestbidaskstreameventmessage", ftypes.STRING, nil, nil, nil, "BestBidAskStreamEventMessage")
omi_binance_binancespot_marketdata_sbe_v1_0.fields.depth_diff_stream_event_message = ProtoField.new("Depth Diff Stream Event Message", "binance.binancespot.marketdata.sbe.v1.0.depthdiffstreameventmessage", ftypes.STRING, nil, nil, nil, "DepthDiffStreamEventMessage")
omi_binance_binancespot_marketdata_sbe_v1_0.fields.depth_snapshot_stream_event_message = ProtoField.new("Depth Snapshot Stream Event Message", "binance.binancespot.marketdata.sbe.v1.0.depthsnapshotstreameventmessage", ftypes.STRING, nil, nil, nil, "DepthSnapshotStreamEventMessage")
omi_binance_binancespot_marketdata_sbe_v1_0.fields.trades_stream_event_message = ProtoField.new("Trades Stream Event Message", "binance.binancespot.marketdata.sbe.v1.0.tradesstreameventmessage", ftypes.STRING, nil, nil, nil, "TradesStreamEventMessage")

-- Binance BinanceSpot MarketData Sbe 1.0 Generated Fields
omi_binance_binancespot_marketdata_sbe_v1_0.fields.depth_diff_stream_event_message_asks_group_index = ProtoField.new("Depth Diff Stream Event Message asks Group Index", "binance.binancespot.marketdata.sbe.v1.0.depthdiffstreameventmessageasksgroupindex", ftypes.UINT16)
omi_binance_binancespot_marketdata_sbe_v1_0.fields.depth_diff_stream_event_message_bids_group_index = ProtoField.new("Depth Diff Stream Event Message bids Group Index", "binance.binancespot.marketdata.sbe.v1.0.depthdiffstreameventmessagebidsgroupindex", ftypes.UINT16)
omi_binance_binancespot_marketdata_sbe_v1_0.fields.depth_snapshot_stream_event_message_asks_group_index = ProtoField.new("Depth Snapshot Stream Event Message asks Group Index", "binance.binancespot.marketdata.sbe.v1.0.depthsnapshotstreameventmessageasksgroupindex", ftypes.UINT16)
omi_binance_binancespot_marketdata_sbe_v1_0.fields.depth_snapshot_stream_event_message_bids_group_index = ProtoField.new("Depth Snapshot Stream Event Message bids Group Index", "binance.binancespot.marketdata.sbe.v1.0.depthsnapshotstreameventmessagebidsgroupindex", ftypes.UINT16)
omi_binance_binancespot_marketdata_sbe_v1_0.fields.trades_stream_event_message_trades_group_index = ProtoField.new("Trades Stream Event Message trades Group Index", "binance.binancespot.marketdata.sbe.v1.0.tradesstreameventmessagetradesgroupindex", ftypes.UINT16)
omi_binance_binancespot_marketdata_sbe_v1_0.fields.ask_price_calculate = ProtoField.new("Ask Price Calculate", "binance.binancespot.marketdata.sbe.v1.0.askpricecalculate", ftypes.DOUBLE)
omi_binance_binancespot_marketdata_sbe_v1_0.fields.ask_qty_calculate = ProtoField.new("Ask Qty Calculate", "binance.binancespot.marketdata.sbe.v1.0.askqtycalculate", ftypes.DOUBLE)
omi_binance_binancespot_marketdata_sbe_v1_0.fields.bid_price_calculate = ProtoField.new("Bid Price Calculate", "binance.binancespot.marketdata.sbe.v1.0.bidpricecalculate", ftypes.DOUBLE)
omi_binance_binancespot_marketdata_sbe_v1_0.fields.bid_qty_calculate = ProtoField.new("Bid Qty Calculate", "binance.binancespot.marketdata.sbe.v1.0.bidqtycalculate", ftypes.DOUBLE)
omi_binance_binancespot_marketdata_sbe_v1_0.fields.price_calculate = ProtoField.new("Price Calculate", "binance.binancespot.marketdata.sbe.v1.0.pricecalculate", ftypes.DOUBLE)
omi_binance_binancespot_marketdata_sbe_v1_0.fields.qty_calculate = ProtoField.new("Qty Calculate", "binance.binancespot.marketdata.sbe.v1.0.qtycalculate", ftypes.DOUBLE)

-----------------------------------------------------------------------
-- Binance BinanceSpot MarketData Sbe 1.0 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
binance_binancespot_marketdata_sbe_v1_0.absolute_time_base = 0

-- Price Calculate format (true = decimal-scaled, false = raw mantissa)
binance_binancespot_marketdata_sbe_v1_0.format_decimals = true


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Binance BinanceSpot MarketData Sbe 1.0 Element Dissection Options
show.application_messages = true
show.repeating_groups = true
show.headers = true
show.structs = true
show.indexes = true

-- Register Binance BinanceSpot MarketData Sbe 1.0 Show Options
omi_binance_binancespot_marketdata_sbe_v1_0.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_binance_binancespot_marketdata_sbe_v1_0.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_binance_binancespot_marketdata_sbe_v1_0.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_binance_binancespot_marketdata_sbe_v1_0.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_binance_binancespot_marketdata_sbe_v1_0.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_binance_binancespot_marketdata_sbe_v1_0.prefs.format_decimals = Pref.bool("Format Decimals", true, "Format decimal-scaled fields as scaled values (off = raw mantissa)")

omi_binance_binancespot_marketdata_sbe_v1_0.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_binance_binancespot_marketdata_sbe_v1_0.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_binance_binancespot_marketdata_sbe_v1_0.prefs.show_application_messages then
    show.application_messages = omi_binance_binancespot_marketdata_sbe_v1_0.prefs.show_application_messages
  end
  if show.headers ~= omi_binance_binancespot_marketdata_sbe_v1_0.prefs.show_headers then
    show.headers = omi_binance_binancespot_marketdata_sbe_v1_0.prefs.show_headers
  end
  if show.repeating_groups ~= omi_binance_binancespot_marketdata_sbe_v1_0.prefs.show_repeating_groups then
    show.repeating_groups = omi_binance_binancespot_marketdata_sbe_v1_0.prefs.show_repeating_groups
  end
  if show.structs ~= omi_binance_binancespot_marketdata_sbe_v1_0.prefs.show_structs then
    show.structs = omi_binance_binancespot_marketdata_sbe_v1_0.prefs.show_structs
  end
  if show.indexes ~= omi_binance_binancespot_marketdata_sbe_v1_0.prefs.show_indexes then
    show.indexes = omi_binance_binancespot_marketdata_sbe_v1_0.prefs.show_indexes
  end
  if binance_binancespot_marketdata_sbe_v1_0.format_decimals ~= omi_binance_binancespot_marketdata_sbe_v1_0.prefs.format_decimals then
    binance_binancespot_marketdata_sbe_v1_0.format_decimals = omi_binance_binancespot_marketdata_sbe_v1_0.prefs.format_decimals
  end
  if binance_binancespot_marketdata_sbe_v1_0.absolute_time_base ~= omi_binance_binancespot_marketdata_sbe_v1_0.prefs.absolute_time_base then
    binance_binancespot_marketdata_sbe_v1_0.absolute_time_base = omi_binance_binancespot_marketdata_sbe_v1_0.prefs.absolute_time_base
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
binance_binancespot_marketdata_sbe_v1_0.conversation = {}
binance_binancespot_marketdata_sbe_v1_0.conversation.flows = {}

-- Conversation key for the current packet (src/dst tuple)
binance_binancespot_marketdata_sbe_v1_0.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
binance_binancespot_marketdata_sbe_v1_0.conversation.data = function(packet)
  local key = binance_binancespot_marketdata_sbe_v1_0.conversation.key(packet)
  local data = binance_binancespot_marketdata_sbe_v1_0.conversation.flows[key]
  if data == nil then
    data = { price_exponent = { last = nil, frames = {} }, qty_exponent = { last = nil, frames = {} } }
    binance_binancespot_marketdata_sbe_v1_0.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
binance_binancespot_marketdata_sbe_v1_0.conversation.current = nil


-----------------------------------------------------------------------
-- Binance BinanceSpot MarketData Sbe 1.0 Fields
-----------------------------------------------------------------------

-- Ask Price
binance_binancespot_marketdata_sbe_v1_0.ask_price = {}

-- Size: Ask Price
binance_binancespot_marketdata_sbe_v1_0.ask_price.size = 8

-- Display: Ask Price
binance_binancespot_marketdata_sbe_v1_0.ask_price.display = function(value)
  return "Ask Price: "..value
end

-- Dissect: Ask Price
binance_binancespot_marketdata_sbe_v1_0.ask_price.dissect = function(buffer, offset, packet, parent)
  local length = binance_binancespot_marketdata_sbe_v1_0.ask_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = binance_binancespot_marketdata_sbe_v1_0.ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Ask Qty
binance_binancespot_marketdata_sbe_v1_0.ask_qty = {}

-- Size: Ask Qty
binance_binancespot_marketdata_sbe_v1_0.ask_qty.size = 8

-- Display: Ask Qty
binance_binancespot_marketdata_sbe_v1_0.ask_qty.display = function(value)
  return "Ask Qty: "..value
end

-- Dissect: Ask Qty
binance_binancespot_marketdata_sbe_v1_0.ask_qty.dissect = function(buffer, offset, packet, parent)
  local length = binance_binancespot_marketdata_sbe_v1_0.ask_qty.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = binance_binancespot_marketdata_sbe_v1_0.ask_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.ask_qty, range, value, display)

  return offset + length, value
end

-- Bid Price
binance_binancespot_marketdata_sbe_v1_0.bid_price = {}

-- Size: Bid Price
binance_binancespot_marketdata_sbe_v1_0.bid_price.size = 8

-- Display: Bid Price
binance_binancespot_marketdata_sbe_v1_0.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Dissect: Bid Price
binance_binancespot_marketdata_sbe_v1_0.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = binance_binancespot_marketdata_sbe_v1_0.bid_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = binance_binancespot_marketdata_sbe_v1_0.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Bid Qty
binance_binancespot_marketdata_sbe_v1_0.bid_qty = {}

-- Size: Bid Qty
binance_binancespot_marketdata_sbe_v1_0.bid_qty.size = 8

-- Display: Bid Qty
binance_binancespot_marketdata_sbe_v1_0.bid_qty.display = function(value)
  return "Bid Qty: "..value
end

-- Dissect: Bid Qty
binance_binancespot_marketdata_sbe_v1_0.bid_qty.dissect = function(buffer, offset, packet, parent)
  local length = binance_binancespot_marketdata_sbe_v1_0.bid_qty.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = binance_binancespot_marketdata_sbe_v1_0.bid_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.bid_qty, range, value, display)

  return offset + length, value
end

-- Block Length
binance_binancespot_marketdata_sbe_v1_0.block_length = {}

-- Size: Block Length
binance_binancespot_marketdata_sbe_v1_0.block_length.size = 2

-- Display: Block Length
binance_binancespot_marketdata_sbe_v1_0.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
binance_binancespot_marketdata_sbe_v1_0.block_length.dissect = function(buffer, offset, packet, parent)
  local length = binance_binancespot_marketdata_sbe_v1_0.block_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = binance_binancespot_marketdata_sbe_v1_0.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.block_length, range, value, display)

  return offset + length, value
end

-- Book Update Id
binance_binancespot_marketdata_sbe_v1_0.book_update_id = {}

-- Size: Book Update Id
binance_binancespot_marketdata_sbe_v1_0.book_update_id.size = 8

-- Display: Book Update Id
binance_binancespot_marketdata_sbe_v1_0.book_update_id.display = function(value)
  return "Book Update Id: "..value
end

-- Dissect: Book Update Id
binance_binancespot_marketdata_sbe_v1_0.book_update_id.dissect = function(buffer, offset, packet, parent)
  local length = binance_binancespot_marketdata_sbe_v1_0.book_update_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = binance_binancespot_marketdata_sbe_v1_0.book_update_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.book_update_id, range, value, display)

  return offset + length, value
end

-- Event Time
binance_binancespot_marketdata_sbe_v1_0.event_time = {}

-- Size: Event Time
binance_binancespot_marketdata_sbe_v1_0.event_time.size = 8

-- Dissect: Event Time
binance_binancespot_marketdata_sbe_v1_0.event_time.dissect = function(buffer, offset, packet, parent)
  local length = binance_binancespot_marketdata_sbe_v1_0.event_time.size
  local range = buffer(offset, length)
  local value = range:le_int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_binance_binancespot_marketdata_sbe_v1_0.fields.event_time
  if binance_binancespot_marketdata_sbe_v1_0.absolute_time_base == 1 then field = omi_binance_binancespot_marketdata_sbe_v1_0.fields.event_time_utc end

  local seconds = (value / UInt64(1000000)):tonumber()
  local nanos = (value % UInt64(1000000)):tonumber() * 1000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- First Book Update Id
binance_binancespot_marketdata_sbe_v1_0.first_book_update_id = {}

-- Size: First Book Update Id
binance_binancespot_marketdata_sbe_v1_0.first_book_update_id.size = 8

-- Display: First Book Update Id
binance_binancespot_marketdata_sbe_v1_0.first_book_update_id.display = function(value)
  return "First Book Update Id: "..value
end

-- Dissect: First Book Update Id
binance_binancespot_marketdata_sbe_v1_0.first_book_update_id.dissect = function(buffer, offset, packet, parent)
  local length = binance_binancespot_marketdata_sbe_v1_0.first_book_update_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = binance_binancespot_marketdata_sbe_v1_0.first_book_update_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.first_book_update_id, range, value, display)

  return offset + length, value
end

-- Id
binance_binancespot_marketdata_sbe_v1_0.id = {}

-- Size: Id
binance_binancespot_marketdata_sbe_v1_0.id.size = 8

-- Display: Id
binance_binancespot_marketdata_sbe_v1_0.id.display = function(value)
  return "Id: "..value
end

-- Dissect: Id
binance_binancespot_marketdata_sbe_v1_0.id.dissect = function(buffer, offset, packet, parent)
  local length = binance_binancespot_marketdata_sbe_v1_0.id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = binance_binancespot_marketdata_sbe_v1_0.id.display(value, buffer, offset, packet, parent)

  parent:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.id, range, value, display)

  return offset + length, value
end

-- Is Buyer Maker
binance_binancespot_marketdata_sbe_v1_0.is_buyer_maker = {}

-- Size: Is Buyer Maker
binance_binancespot_marketdata_sbe_v1_0.is_buyer_maker.size = 1

-- Display: Is Buyer Maker
binance_binancespot_marketdata_sbe_v1_0.is_buyer_maker.labels = {
  [0] = "Is Buyer Maker: False (0)",
  [1] = "Is Buyer Maker: True (1)",
}

binance_binancespot_marketdata_sbe_v1_0.is_buyer_maker.display = function(value)
  return binance_binancespot_marketdata_sbe_v1_0.is_buyer_maker.labels[value] or "Is Buyer Maker: Unknown("..value..")"
end

-- Dissect: Is Buyer Maker
binance_binancespot_marketdata_sbe_v1_0.is_buyer_maker.dissect = function(buffer, offset, packet, parent)
  local length = binance_binancespot_marketdata_sbe_v1_0.is_buyer_maker.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = binance_binancespot_marketdata_sbe_v1_0.is_buyer_maker.display(value, buffer, offset, packet, parent)

  parent:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.is_buyer_maker, range, value, display)

  return offset + length, value
end

-- Last Book Update Id
binance_binancespot_marketdata_sbe_v1_0.last_book_update_id = {}

-- Size: Last Book Update Id
binance_binancespot_marketdata_sbe_v1_0.last_book_update_id.size = 8

-- Display: Last Book Update Id
binance_binancespot_marketdata_sbe_v1_0.last_book_update_id.display = function(value)
  return "Last Book Update Id: "..value
end

-- Dissect: Last Book Update Id
binance_binancespot_marketdata_sbe_v1_0.last_book_update_id.dissect = function(buffer, offset, packet, parent)
  local length = binance_binancespot_marketdata_sbe_v1_0.last_book_update_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = binance_binancespot_marketdata_sbe_v1_0.last_book_update_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.last_book_update_id, range, value, display)

  return offset + length, value
end

-- Num In Group uint 16
binance_binancespot_marketdata_sbe_v1_0.num_in_group_uint_16 = {}

-- Size: Num In Group uint 16
binance_binancespot_marketdata_sbe_v1_0.num_in_group_uint_16.size = 2

-- Display: Num In Group uint 16
binance_binancespot_marketdata_sbe_v1_0.num_in_group_uint_16.display = function(value)
  return "Num In Group uint 16: "..value
end

-- Dissect: Num In Group uint 16
binance_binancespot_marketdata_sbe_v1_0.num_in_group_uint_16.dissect = function(buffer, offset, packet, parent)
  local length = binance_binancespot_marketdata_sbe_v1_0.num_in_group_uint_16.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = binance_binancespot_marketdata_sbe_v1_0.num_in_group_uint_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.num_in_group_uint_16, range, value, display)

  return offset + length, value
end

-- Num In Group uint 32
binance_binancespot_marketdata_sbe_v1_0.num_in_group_uint_32 = {}

-- Size: Num In Group uint 32
binance_binancespot_marketdata_sbe_v1_0.num_in_group_uint_32.size = 4

-- Display: Num In Group uint 32
binance_binancespot_marketdata_sbe_v1_0.num_in_group_uint_32.display = function(value)
  return "Num In Group uint 32: "..value
end

-- Dissect: Num In Group uint 32
binance_binancespot_marketdata_sbe_v1_0.num_in_group_uint_32.dissect = function(buffer, offset, packet, parent)
  local length = binance_binancespot_marketdata_sbe_v1_0.num_in_group_uint_32.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = binance_binancespot_marketdata_sbe_v1_0.num_in_group_uint_32.display(value, buffer, offset, packet, parent)

  parent:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.num_in_group_uint_32, range, value, display)

  return offset + length, value
end

-- Price
binance_binancespot_marketdata_sbe_v1_0.price = {}

-- Size: Price
binance_binancespot_marketdata_sbe_v1_0.price.size = 8

-- Display: Price
binance_binancespot_marketdata_sbe_v1_0.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
binance_binancespot_marketdata_sbe_v1_0.price.dissect = function(buffer, offset, packet, parent)
  local length = binance_binancespot_marketdata_sbe_v1_0.price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = binance_binancespot_marketdata_sbe_v1_0.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.price, range, value, display)

  return offset + length, value
end

-- Price Exponent
binance_binancespot_marketdata_sbe_v1_0.price_exponent = {}

-- Size: Price Exponent
binance_binancespot_marketdata_sbe_v1_0.price_exponent.size = 1

-- Store: Price Exponent
binance_binancespot_marketdata_sbe_v1_0.price_exponent.current = nil

-- Generated: Price Exponent
binance_binancespot_marketdata_sbe_v1_0.price_exponent.generated = function(value, range, packet, parent)
  local display = binance_binancespot_marketdata_sbe_v1_0.price_exponent.display(value)
  local price_exponent = parent:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.price_exponent, range, value, display)
  price_exponent:set_generated()
end

-- Display: Price Exponent
binance_binancespot_marketdata_sbe_v1_0.price_exponent.display = function(value)
  return "Price Exponent: "..value
end

-- Dissect: Price Exponent
binance_binancespot_marketdata_sbe_v1_0.price_exponent.dissect = function(buffer, offset, packet, parent)
  local length = binance_binancespot_marketdata_sbe_v1_0.price_exponent.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = binance_binancespot_marketdata_sbe_v1_0.price_exponent.display(value, buffer, offset, packet, parent)

  parent:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.price_exponent, range, value, display)

  return offset + length, value
end

-- Qty
binance_binancespot_marketdata_sbe_v1_0.qty = {}

-- Size: Qty
binance_binancespot_marketdata_sbe_v1_0.qty.size = 8

-- Display: Qty
binance_binancespot_marketdata_sbe_v1_0.qty.display = function(value)
  return "Qty: "..value
end

-- Dissect: Qty
binance_binancespot_marketdata_sbe_v1_0.qty.dissect = function(buffer, offset, packet, parent)
  local length = binance_binancespot_marketdata_sbe_v1_0.qty.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = binance_binancespot_marketdata_sbe_v1_0.qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.qty, range, value, display)

  return offset + length, value
end

-- Qty Exponent
binance_binancespot_marketdata_sbe_v1_0.qty_exponent = {}

-- Size: Qty Exponent
binance_binancespot_marketdata_sbe_v1_0.qty_exponent.size = 1

-- Store: Qty Exponent
binance_binancespot_marketdata_sbe_v1_0.qty_exponent.current = nil

-- Generated: Qty Exponent
binance_binancespot_marketdata_sbe_v1_0.qty_exponent.generated = function(value, range, packet, parent)
  local display = binance_binancespot_marketdata_sbe_v1_0.qty_exponent.display(value)
  local qty_exponent = parent:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.qty_exponent, range, value, display)
  qty_exponent:set_generated()
end

-- Display: Qty Exponent
binance_binancespot_marketdata_sbe_v1_0.qty_exponent.display = function(value)
  return "Qty Exponent: "..value
end

-- Dissect: Qty Exponent
binance_binancespot_marketdata_sbe_v1_0.qty_exponent.dissect = function(buffer, offset, packet, parent)
  local length = binance_binancespot_marketdata_sbe_v1_0.qty_exponent.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = binance_binancespot_marketdata_sbe_v1_0.qty_exponent.display(value, buffer, offset, packet, parent)

  parent:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.qty_exponent, range, value, display)

  return offset + length, value
end

-- Schema Id
binance_binancespot_marketdata_sbe_v1_0.schema_id = {}

-- Size: Schema Id
binance_binancespot_marketdata_sbe_v1_0.schema_id.size = 2

-- Display: Schema Id
binance_binancespot_marketdata_sbe_v1_0.schema_id.display = function(value)
  if value == 1 then
    return "Schema Id: SchemaId"
  end

  return "Schema Id: Unknown("..value..")"
end

-- Dissect: Schema Id
binance_binancespot_marketdata_sbe_v1_0.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = binance_binancespot_marketdata_sbe_v1_0.schema_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = binance_binancespot_marketdata_sbe_v1_0.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Symbol Data
binance_binancespot_marketdata_sbe_v1_0.symbol_data = {}

-- Display: Symbol Data
binance_binancespot_marketdata_sbe_v1_0.symbol_data.display = function(value)
  return "Symbol Data: "..value
end

-- Dissect runtime sized field: Symbol Data
binance_binancespot_marketdata_sbe_v1_0.symbol_data.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = binance_binancespot_marketdata_sbe_v1_0.symbol_data.display(value, packet, parent, size)

  parent:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.symbol_data, range, value, display)

  return offset + size, value
end

-- Symbol Length
binance_binancespot_marketdata_sbe_v1_0.symbol_length = {}

-- Size: Symbol Length
binance_binancespot_marketdata_sbe_v1_0.symbol_length.size = 1

-- Display: Symbol Length
binance_binancespot_marketdata_sbe_v1_0.symbol_length.display = function(value)
  return "Symbol Length: "..value
end

-- Dissect: Symbol Length
binance_binancespot_marketdata_sbe_v1_0.symbol_length.dissect = function(buffer, offset, packet, parent)
  local length = binance_binancespot_marketdata_sbe_v1_0.symbol_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = binance_binancespot_marketdata_sbe_v1_0.symbol_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.symbol_length, range, value, display)

  return offset + length, value
end

-- Template Id
binance_binancespot_marketdata_sbe_v1_0.template_id = {}

-- Size: Template Id
binance_binancespot_marketdata_sbe_v1_0.template_id.size = 2

-- Display: Template Id
binance_binancespot_marketdata_sbe_v1_0.template_id.labels = {
  [10000] = "Template Id: Trades Stream Event Message (10000)",
  [10001] = "Template Id: Best Bid Ask Stream Event Message (10001)",
  [10002] = "Template Id: Depth Snapshot Stream Event Message (10002)",
  [10003] = "Template Id: Depth Diff Stream Event Message (10003)",
}

binance_binancespot_marketdata_sbe_v1_0.template_id.display = function(value)
  return binance_binancespot_marketdata_sbe_v1_0.template_id.labels[value] or "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
binance_binancespot_marketdata_sbe_v1_0.template_id.dissect = function(buffer, offset, packet, parent)
  local length = binance_binancespot_marketdata_sbe_v1_0.template_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = binance_binancespot_marketdata_sbe_v1_0.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.template_id, range, value, display)

  return offset + length, value
end

-- Transact Time
binance_binancespot_marketdata_sbe_v1_0.transact_time = {}

-- Size: Transact Time
binance_binancespot_marketdata_sbe_v1_0.transact_time.size = 8

-- Dissect: Transact Time
binance_binancespot_marketdata_sbe_v1_0.transact_time.dissect = function(buffer, offset, packet, parent)
  local length = binance_binancespot_marketdata_sbe_v1_0.transact_time.size
  local range = buffer(offset, length)
  local value = range:le_int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_binance_binancespot_marketdata_sbe_v1_0.fields.transact_time
  if binance_binancespot_marketdata_sbe_v1_0.absolute_time_base == 1 then field = omi_binance_binancespot_marketdata_sbe_v1_0.fields.transact_time_utc end

  local seconds = (value / UInt64(1000000)):tonumber()
  local nanos = (value % UInt64(1000000)):tonumber() * 1000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Version
binance_binancespot_marketdata_sbe_v1_0.version = {}

-- Size: Version
binance_binancespot_marketdata_sbe_v1_0.version.size = 2

-- Display: Version
binance_binancespot_marketdata_sbe_v1_0.version.display = function(value)
  if value == 0 then
    return "Version: Version 5.2"
  end

  return "Version: Unknown("..value..")"
end

-- Dissect: Version
binance_binancespot_marketdata_sbe_v1_0.version.dissect = function(buffer, offset, packet, parent)
  local length = binance_binancespot_marketdata_sbe_v1_0.version.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = binance_binancespot_marketdata_sbe_v1_0.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.version, range, value, display)

  return offset + length, value
end

-- Ask Price Calculate
binance_binancespot_marketdata_sbe_v1_0.ask_price_calculate = {}

-- Display: Ask Price Calculate
binance_binancespot_marketdata_sbe_v1_0.ask_price_calculate.display = function(value)
  return "Ask Price Calculate: " .. string.format("%g", value)
end

-- Composite: Ask Price Calculate
binance_binancespot_marketdata_sbe_v1_0.ask_price_calculate.composite = function(buffer, offset, stored_price_exponent, packet, parent)
  local length = binance_binancespot_marketdata_sbe_v1_0.ask_price.size
  local range = buffer(offset, length)
  local mantissa = range:le_int64()
  local value = mantissa:tonumber() * (10 ^ stored_price_exponent)
  local display = binance_binancespot_marketdata_sbe_v1_0.ask_price_calculate.display(value)
  local field_tree = parent:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.ask_price_calculate, range, value, display)
  local mantissa_display = binance_binancespot_marketdata_sbe_v1_0.ask_price.display(mantissa)

  field_tree:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.ask_price, range, mantissa, mantissa_display)

  local stored_price_exponent_entry = field_tree:add("Price Exponent: " .. tostring(stored_price_exponent))
  stored_price_exponent_entry:set_generated()

  return offset + length, value
end

-- Dissect: Ask Price Calculate
binance_binancespot_marketdata_sbe_v1_0.ask_price_calculate.dissect = function(buffer, offset, packet, parent)
  if binance_binancespot_marketdata_sbe_v1_0.format_decimals then
    local stored_price_exponent = binance_binancespot_marketdata_sbe_v1_0.price_exponent.current

    if stored_price_exponent ~= nil then
      return binance_binancespot_marketdata_sbe_v1_0.ask_price_calculate.composite(buffer, offset, stored_price_exponent, packet, parent)
    end
  end

  return binance_binancespot_marketdata_sbe_v1_0.ask_price.dissect(buffer, offset, packet, parent)
end

-- Ask Qty Calculate
binance_binancespot_marketdata_sbe_v1_0.ask_qty_calculate = {}

-- Display: Ask Qty Calculate
binance_binancespot_marketdata_sbe_v1_0.ask_qty_calculate.display = function(value)
  return "Ask Qty Calculate: " .. string.format("%g", value)
end

-- Composite: Ask Qty Calculate
binance_binancespot_marketdata_sbe_v1_0.ask_qty_calculate.composite = function(buffer, offset, stored_qty_exponent, packet, parent)
  local length = binance_binancespot_marketdata_sbe_v1_0.ask_qty.size
  local range = buffer(offset, length)
  local mantissa = range:le_int64()
  local value = mantissa:tonumber() * (10 ^ stored_qty_exponent)
  local display = binance_binancespot_marketdata_sbe_v1_0.ask_qty_calculate.display(value)
  local field_tree = parent:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.ask_qty_calculate, range, value, display)
  local mantissa_display = binance_binancespot_marketdata_sbe_v1_0.ask_qty.display(mantissa)

  field_tree:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.ask_qty, range, mantissa, mantissa_display)

  local stored_qty_exponent_entry = field_tree:add("Qty Exponent: " .. tostring(stored_qty_exponent))
  stored_qty_exponent_entry:set_generated()

  return offset + length, value
end

-- Dissect: Ask Qty Calculate
binance_binancespot_marketdata_sbe_v1_0.ask_qty_calculate.dissect = function(buffer, offset, packet, parent)
  if binance_binancespot_marketdata_sbe_v1_0.format_decimals then
    local stored_qty_exponent = binance_binancespot_marketdata_sbe_v1_0.qty_exponent.current

    if stored_qty_exponent ~= nil then
      return binance_binancespot_marketdata_sbe_v1_0.ask_qty_calculate.composite(buffer, offset, stored_qty_exponent, packet, parent)
    end
  end

  return binance_binancespot_marketdata_sbe_v1_0.ask_qty.dissect(buffer, offset, packet, parent)
end

-- Bid Price Calculate
binance_binancespot_marketdata_sbe_v1_0.bid_price_calculate = {}

-- Display: Bid Price Calculate
binance_binancespot_marketdata_sbe_v1_0.bid_price_calculate.display = function(value)
  return "Bid Price Calculate: " .. string.format("%g", value)
end

-- Composite: Bid Price Calculate
binance_binancespot_marketdata_sbe_v1_0.bid_price_calculate.composite = function(buffer, offset, stored_price_exponent, packet, parent)
  local length = binance_binancespot_marketdata_sbe_v1_0.bid_price.size
  local range = buffer(offset, length)
  local mantissa = range:le_int64()
  local value = mantissa:tonumber() * (10 ^ stored_price_exponent)
  local display = binance_binancespot_marketdata_sbe_v1_0.bid_price_calculate.display(value)
  local field_tree = parent:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.bid_price_calculate, range, value, display)
  local mantissa_display = binance_binancespot_marketdata_sbe_v1_0.bid_price.display(mantissa)

  field_tree:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.bid_price, range, mantissa, mantissa_display)

  local stored_price_exponent_entry = field_tree:add("Price Exponent: " .. tostring(stored_price_exponent))
  stored_price_exponent_entry:set_generated()

  return offset + length, value
end

-- Dissect: Bid Price Calculate
binance_binancespot_marketdata_sbe_v1_0.bid_price_calculate.dissect = function(buffer, offset, packet, parent)
  if binance_binancespot_marketdata_sbe_v1_0.format_decimals then
    local stored_price_exponent = binance_binancespot_marketdata_sbe_v1_0.price_exponent.current

    if stored_price_exponent ~= nil then
      return binance_binancespot_marketdata_sbe_v1_0.bid_price_calculate.composite(buffer, offset, stored_price_exponent, packet, parent)
    end
  end

  return binance_binancespot_marketdata_sbe_v1_0.bid_price.dissect(buffer, offset, packet, parent)
end

-- Bid Qty Calculate
binance_binancespot_marketdata_sbe_v1_0.bid_qty_calculate = {}

-- Display: Bid Qty Calculate
binance_binancespot_marketdata_sbe_v1_0.bid_qty_calculate.display = function(value)
  return "Bid Qty Calculate: " .. string.format("%g", value)
end

-- Composite: Bid Qty Calculate
binance_binancespot_marketdata_sbe_v1_0.bid_qty_calculate.composite = function(buffer, offset, stored_qty_exponent, packet, parent)
  local length = binance_binancespot_marketdata_sbe_v1_0.bid_qty.size
  local range = buffer(offset, length)
  local mantissa = range:le_int64()
  local value = mantissa:tonumber() * (10 ^ stored_qty_exponent)
  local display = binance_binancespot_marketdata_sbe_v1_0.bid_qty_calculate.display(value)
  local field_tree = parent:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.bid_qty_calculate, range, value, display)
  local mantissa_display = binance_binancespot_marketdata_sbe_v1_0.bid_qty.display(mantissa)

  field_tree:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.bid_qty, range, mantissa, mantissa_display)

  local stored_qty_exponent_entry = field_tree:add("Qty Exponent: " .. tostring(stored_qty_exponent))
  stored_qty_exponent_entry:set_generated()

  return offset + length, value
end

-- Dissect: Bid Qty Calculate
binance_binancespot_marketdata_sbe_v1_0.bid_qty_calculate.dissect = function(buffer, offset, packet, parent)
  if binance_binancespot_marketdata_sbe_v1_0.format_decimals then
    local stored_qty_exponent = binance_binancespot_marketdata_sbe_v1_0.qty_exponent.current

    if stored_qty_exponent ~= nil then
      return binance_binancespot_marketdata_sbe_v1_0.bid_qty_calculate.composite(buffer, offset, stored_qty_exponent, packet, parent)
    end
  end

  return binance_binancespot_marketdata_sbe_v1_0.bid_qty.dissect(buffer, offset, packet, parent)
end

-- Price Calculate
binance_binancespot_marketdata_sbe_v1_0.price_calculate = {}

-- Display: Price Calculate
binance_binancespot_marketdata_sbe_v1_0.price_calculate.display = function(value)
  return "Price Calculate: " .. string.format("%g", value)
end

-- Composite: Price Calculate
binance_binancespot_marketdata_sbe_v1_0.price_calculate.composite = function(buffer, offset, stored_price_exponent, packet, parent)
  local length = binance_binancespot_marketdata_sbe_v1_0.price.size
  local range = buffer(offset, length)
  local mantissa = range:le_int64()
  local value = mantissa:tonumber() * (10 ^ stored_price_exponent)
  local display = binance_binancespot_marketdata_sbe_v1_0.price_calculate.display(value)
  local field_tree = parent:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.price_calculate, range, value, display)
  local mantissa_display = binance_binancespot_marketdata_sbe_v1_0.price.display(mantissa)

  field_tree:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.price, range, mantissa, mantissa_display)

  local stored_price_exponent_entry = field_tree:add("Price Exponent: " .. tostring(stored_price_exponent))
  stored_price_exponent_entry:set_generated()

  return offset + length, value
end

-- Dissect: Price Calculate
binance_binancespot_marketdata_sbe_v1_0.price_calculate.dissect = function(buffer, offset, packet, parent)
  if binance_binancespot_marketdata_sbe_v1_0.format_decimals then
    local stored_price_exponent = binance_binancespot_marketdata_sbe_v1_0.price_exponent.current

    if stored_price_exponent ~= nil then
      return binance_binancespot_marketdata_sbe_v1_0.price_calculate.composite(buffer, offset, stored_price_exponent, packet, parent)
    end
  end

  return binance_binancespot_marketdata_sbe_v1_0.price.dissect(buffer, offset, packet, parent)
end

-- Qty Calculate
binance_binancespot_marketdata_sbe_v1_0.qty_calculate = {}

-- Display: Qty Calculate
binance_binancespot_marketdata_sbe_v1_0.qty_calculate.display = function(value)
  return "Qty Calculate: " .. string.format("%g", value)
end

-- Composite: Qty Calculate
binance_binancespot_marketdata_sbe_v1_0.qty_calculate.composite = function(buffer, offset, stored_qty_exponent, packet, parent)
  local length = binance_binancespot_marketdata_sbe_v1_0.qty.size
  local range = buffer(offset, length)
  local mantissa = range:le_int64()
  local value = mantissa:tonumber() * (10 ^ stored_qty_exponent)
  local display = binance_binancespot_marketdata_sbe_v1_0.qty_calculate.display(value)
  local field_tree = parent:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.qty_calculate, range, value, display)
  local mantissa_display = binance_binancespot_marketdata_sbe_v1_0.qty.display(mantissa)

  field_tree:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.qty, range, mantissa, mantissa_display)

  local stored_qty_exponent_entry = field_tree:add("Qty Exponent: " .. tostring(stored_qty_exponent))
  stored_qty_exponent_entry:set_generated()

  return offset + length, value
end

-- Dissect: Qty Calculate
binance_binancespot_marketdata_sbe_v1_0.qty_calculate.dissect = function(buffer, offset, packet, parent)
  if binance_binancespot_marketdata_sbe_v1_0.format_decimals then
    local stored_qty_exponent = binance_binancespot_marketdata_sbe_v1_0.qty_exponent.current

    if stored_qty_exponent ~= nil then
      return binance_binancespot_marketdata_sbe_v1_0.qty_calculate.composite(buffer, offset, stored_qty_exponent, packet, parent)
    end
  end

  return binance_binancespot_marketdata_sbe_v1_0.qty.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Binance BinanceSpot MarketData Sbe 1.0
-----------------------------------------------------------------------

-- Symbol
binance_binancespot_marketdata_sbe_v1_0.symbol = {}

-- Calculate size of: Symbol
binance_binancespot_marketdata_sbe_v1_0.symbol.size = function(buffer, offset)
  local index = 0

  index = index + binance_binancespot_marketdata_sbe_v1_0.symbol_length.size

  local symbol_length = buffer(offset + 0, 1):uint()

  if symbol_length > 0 then
    -- Parse runtime size of: Symbol Data
    index = index + buffer(offset + index - 1, 1):uint()

  end

  return index
end

-- Display: Symbol
binance_binancespot_marketdata_sbe_v1_0.symbol.display = function(packet, parent, value, length)
  if value == nil then
    return "No Value"
  end

  return value
end

-- Dissect Fields: Symbol
binance_binancespot_marketdata_sbe_v1_0.symbol.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Length: uint8
  index, symbol_length = binance_binancespot_marketdata_sbe_v1_0.symbol_length.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Symbol Data
  local symbol_data = nil

  local symbol_data_exists = symbol_length > 0

  if symbol_data_exists then

    -- Runtime Size Of: Symbol Data
    index, symbol_data = binance_binancespot_marketdata_sbe_v1_0.symbol_data.dissect(buffer, index, packet, parent, symbol_length)
  end

  -- Composite value
  local symbol = symbol_data

  return index, symbol
end

-- Dissect: Symbol
binance_binancespot_marketdata_sbe_v1_0.symbol.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.symbol, buffer(offset, 0))
    local index, value = binance_binancespot_marketdata_sbe_v1_0.symbol.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = binance_binancespot_marketdata_sbe_v1_0.symbol.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return binance_binancespot_marketdata_sbe_v1_0.symbol.fields(buffer, offset, packet, parent)
  end
end

-- Depth Diff Stream Event Message asks Group
binance_binancespot_marketdata_sbe_v1_0.depth_diff_stream_event_message_asks_group = {}

-- Size: Depth Diff Stream Event Message asks Group
binance_binancespot_marketdata_sbe_v1_0.depth_diff_stream_event_message_asks_group.size =
  binance_binancespot_marketdata_sbe_v1_0.price.size + 
  binance_binancespot_marketdata_sbe_v1_0.qty.size

-- Display: Depth Diff Stream Event Message asks Group
binance_binancespot_marketdata_sbe_v1_0.depth_diff_stream_event_message_asks_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Depth Diff Stream Event Message asks Group
binance_binancespot_marketdata_sbe_v1_0.depth_diff_stream_event_message_asks_group.fields = function(buffer, offset, packet, parent, depth_diff_stream_event_message_asks_group_index)
  local index = offset

  -- Implicit Depth Diff Stream Event Message asks Group Index
  if depth_diff_stream_event_message_asks_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.depth_diff_stream_event_message_asks_group_index, depth_diff_stream_event_message_asks_group_index)
    iteration:set_generated()
  end

  -- Price: mantissa64
  index, price = binance_binancespot_marketdata_sbe_v1_0.price_calculate.dissect(buffer, index, packet, parent)

  -- Qty: mantissa64
  index, qty = binance_binancespot_marketdata_sbe_v1_0.qty_calculate.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Depth Diff Stream Event Message asks Group
binance_binancespot_marketdata_sbe_v1_0.depth_diff_stream_event_message_asks_group.dissect = function(buffer, offset, packet, parent, depth_diff_stream_event_message_asks_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.depth_diff_stream_event_message_asks_group, buffer(offset, 0))
    local index = binance_binancespot_marketdata_sbe_v1_0.depth_diff_stream_event_message_asks_group.fields(buffer, offset, packet, parent, depth_diff_stream_event_message_asks_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = binance_binancespot_marketdata_sbe_v1_0.depth_diff_stream_event_message_asks_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return binance_binancespot_marketdata_sbe_v1_0.depth_diff_stream_event_message_asks_group.fields(buffer, offset, packet, parent, depth_diff_stream_event_message_asks_group_index)
  end
end

-- Group Size 16 Encoding
binance_binancespot_marketdata_sbe_v1_0.group_size_16_encoding = {}

-- Size: Group Size 16 Encoding
binance_binancespot_marketdata_sbe_v1_0.group_size_16_encoding.size =
  binance_binancespot_marketdata_sbe_v1_0.block_length.size + 
  binance_binancespot_marketdata_sbe_v1_0.num_in_group_uint_16.size

-- Display: Group Size 16 Encoding
binance_binancespot_marketdata_sbe_v1_0.group_size_16_encoding.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group Size 16 Encoding
binance_binancespot_marketdata_sbe_v1_0.group_size_16_encoding.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: uint16
  index, block_length = binance_binancespot_marketdata_sbe_v1_0.block_length.dissect(buffer, index, packet, parent)

  -- Num In Group uint 16: uint16
  index, num_in_group_uint_16 = binance_binancespot_marketdata_sbe_v1_0.num_in_group_uint_16.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Size 16 Encoding
binance_binancespot_marketdata_sbe_v1_0.group_size_16_encoding.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.group_size_16_encoding, buffer(offset, 0))
    local index = binance_binancespot_marketdata_sbe_v1_0.group_size_16_encoding.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = binance_binancespot_marketdata_sbe_v1_0.group_size_16_encoding.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return binance_binancespot_marketdata_sbe_v1_0.group_size_16_encoding.fields(buffer, offset, packet, parent)
  end
end

-- Depth Diff Stream Event Message asks Groups
binance_binancespot_marketdata_sbe_v1_0.depth_diff_stream_event_message_asks_groups = {}

-- Calculate size of: Depth Diff Stream Event Message asks Groups
binance_binancespot_marketdata_sbe_v1_0.depth_diff_stream_event_message_asks_groups.size = function(buffer, offset)
  local index = 0

  index = index + binance_binancespot_marketdata_sbe_v1_0.group_size_16_encoding.size

  -- Calculate field size from count
  local depth_diff_stream_event_message_asks_group_count = buffer(offset + index - 2, 2):le_uint()
  index = index + depth_diff_stream_event_message_asks_group_count * 16

  return index
end

-- Display: Depth Diff Stream Event Message asks Groups
binance_binancespot_marketdata_sbe_v1_0.depth_diff_stream_event_message_asks_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Depth Diff Stream Event Message asks Groups
binance_binancespot_marketdata_sbe_v1_0.depth_diff_stream_event_message_asks_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size 16 Encoding: Struct of 2 fields
  index, group_size_16_encoding = binance_binancespot_marketdata_sbe_v1_0.group_size_16_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group uint 16
  local num_in_group_uint_16 = buffer(index - 2, 2):le_uint()

  -- Repeating: Depth Diff Stream Event Message asks Group
  for depth_diff_stream_event_message_asks_group_index = 1, num_in_group_uint_16 do
    index, depth_diff_stream_event_message_asks_group = binance_binancespot_marketdata_sbe_v1_0.depth_diff_stream_event_message_asks_group.dissect(buffer, index, packet, parent, depth_diff_stream_event_message_asks_group_index)
  end

  return index
end

-- Dissect: Depth Diff Stream Event Message asks Groups
binance_binancespot_marketdata_sbe_v1_0.depth_diff_stream_event_message_asks_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.depth_diff_stream_event_message_asks_groups, buffer(offset, 0))
    local index = binance_binancespot_marketdata_sbe_v1_0.depth_diff_stream_event_message_asks_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = binance_binancespot_marketdata_sbe_v1_0.depth_diff_stream_event_message_asks_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return binance_binancespot_marketdata_sbe_v1_0.depth_diff_stream_event_message_asks_groups.fields(buffer, offset, packet, parent)
  end
end

-- Depth Diff Stream Event Message bids Group
binance_binancespot_marketdata_sbe_v1_0.depth_diff_stream_event_message_bids_group = {}

-- Size: Depth Diff Stream Event Message bids Group
binance_binancespot_marketdata_sbe_v1_0.depth_diff_stream_event_message_bids_group.size =
  binance_binancespot_marketdata_sbe_v1_0.price.size + 
  binance_binancespot_marketdata_sbe_v1_0.qty.size

-- Display: Depth Diff Stream Event Message bids Group
binance_binancespot_marketdata_sbe_v1_0.depth_diff_stream_event_message_bids_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Depth Diff Stream Event Message bids Group
binance_binancespot_marketdata_sbe_v1_0.depth_diff_stream_event_message_bids_group.fields = function(buffer, offset, packet, parent, depth_diff_stream_event_message_bids_group_index)
  local index = offset

  -- Implicit Depth Diff Stream Event Message bids Group Index
  if depth_diff_stream_event_message_bids_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.depth_diff_stream_event_message_bids_group_index, depth_diff_stream_event_message_bids_group_index)
    iteration:set_generated()
  end

  -- Price: mantissa64
  index, price = binance_binancespot_marketdata_sbe_v1_0.price_calculate.dissect(buffer, index, packet, parent)

  -- Qty: mantissa64
  index, qty = binance_binancespot_marketdata_sbe_v1_0.qty_calculate.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Depth Diff Stream Event Message bids Group
binance_binancespot_marketdata_sbe_v1_0.depth_diff_stream_event_message_bids_group.dissect = function(buffer, offset, packet, parent, depth_diff_stream_event_message_bids_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.depth_diff_stream_event_message_bids_group, buffer(offset, 0))
    local index = binance_binancespot_marketdata_sbe_v1_0.depth_diff_stream_event_message_bids_group.fields(buffer, offset, packet, parent, depth_diff_stream_event_message_bids_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = binance_binancespot_marketdata_sbe_v1_0.depth_diff_stream_event_message_bids_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return binance_binancespot_marketdata_sbe_v1_0.depth_diff_stream_event_message_bids_group.fields(buffer, offset, packet, parent, depth_diff_stream_event_message_bids_group_index)
  end
end

-- Depth Diff Stream Event Message bids Groups
binance_binancespot_marketdata_sbe_v1_0.depth_diff_stream_event_message_bids_groups = {}

-- Calculate size of: Depth Diff Stream Event Message bids Groups
binance_binancespot_marketdata_sbe_v1_0.depth_diff_stream_event_message_bids_groups.size = function(buffer, offset)
  local index = 0

  index = index + binance_binancespot_marketdata_sbe_v1_0.group_size_16_encoding.size

  -- Calculate field size from count
  local depth_diff_stream_event_message_bids_group_count = buffer(offset + index - 2, 2):le_uint()
  index = index + depth_diff_stream_event_message_bids_group_count * 16

  return index
end

-- Display: Depth Diff Stream Event Message bids Groups
binance_binancespot_marketdata_sbe_v1_0.depth_diff_stream_event_message_bids_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Depth Diff Stream Event Message bids Groups
binance_binancespot_marketdata_sbe_v1_0.depth_diff_stream_event_message_bids_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size 16 Encoding: Struct of 2 fields
  index, group_size_16_encoding = binance_binancespot_marketdata_sbe_v1_0.group_size_16_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group uint 16
  local num_in_group_uint_16 = buffer(index - 2, 2):le_uint()

  -- Repeating: Depth Diff Stream Event Message bids Group
  for depth_diff_stream_event_message_bids_group_index = 1, num_in_group_uint_16 do
    index, depth_diff_stream_event_message_bids_group = binance_binancespot_marketdata_sbe_v1_0.depth_diff_stream_event_message_bids_group.dissect(buffer, index, packet, parent, depth_diff_stream_event_message_bids_group_index)
  end

  return index
end

-- Dissect: Depth Diff Stream Event Message bids Groups
binance_binancespot_marketdata_sbe_v1_0.depth_diff_stream_event_message_bids_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.depth_diff_stream_event_message_bids_groups, buffer(offset, 0))
    local index = binance_binancespot_marketdata_sbe_v1_0.depth_diff_stream_event_message_bids_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = binance_binancespot_marketdata_sbe_v1_0.depth_diff_stream_event_message_bids_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return binance_binancespot_marketdata_sbe_v1_0.depth_diff_stream_event_message_bids_groups.fields(buffer, offset, packet, parent)
  end
end

-- Depth Diff Stream Event Message
binance_binancespot_marketdata_sbe_v1_0.depth_diff_stream_event_message = {}

-- Calculate size of: Depth Diff Stream Event Message
binance_binancespot_marketdata_sbe_v1_0.depth_diff_stream_event_message.size = function(buffer, offset)
  local index = 0

  index = index + binance_binancespot_marketdata_sbe_v1_0.event_time.size

  index = index + binance_binancespot_marketdata_sbe_v1_0.first_book_update_id.size

  index = index + binance_binancespot_marketdata_sbe_v1_0.last_book_update_id.size

  index = index + binance_binancespot_marketdata_sbe_v1_0.price_exponent.size

  index = index + binance_binancespot_marketdata_sbe_v1_0.qty_exponent.size

  index = index + binance_binancespot_marketdata_sbe_v1_0.depth_diff_stream_event_message_bids_groups.size(buffer, offset + index)

  index = index + binance_binancespot_marketdata_sbe_v1_0.depth_diff_stream_event_message_asks_groups.size(buffer, offset + index)

  index = index + binance_binancespot_marketdata_sbe_v1_0.symbol.size(buffer, offset + index)

  return index
end

-- Display: Depth Diff Stream Event Message
binance_binancespot_marketdata_sbe_v1_0.depth_diff_stream_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Depth Diff Stream Event Message
binance_binancespot_marketdata_sbe_v1_0.depth_diff_stream_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Event Time: utcTimestampUs
  index, event_time = binance_binancespot_marketdata_sbe_v1_0.event_time.dissect(buffer, index, packet, parent)

  -- First Book Update Id: updateId
  index, first_book_update_id = binance_binancespot_marketdata_sbe_v1_0.first_book_update_id.dissect(buffer, index, packet, parent)

  -- Last Book Update Id: updateId
  index, last_book_update_id = binance_binancespot_marketdata_sbe_v1_0.last_book_update_id.dissect(buffer, index, packet, parent)

  -- Price Exponent: exponent8
  index, price_exponent = binance_binancespot_marketdata_sbe_v1_0.price_exponent.dissect(buffer, index, packet, parent)

  -- Store Price Exponent Value
  binance_binancespot_marketdata_sbe_v1_0.price_exponent.current = price_exponent

  if not packet.visited then
    binance_binancespot_marketdata_sbe_v1_0.conversation.current.price_exponent.last = price_exponent
  end

  -- Qty Exponent: exponent8
  index, qty_exponent = binance_binancespot_marketdata_sbe_v1_0.qty_exponent.dissect(buffer, index, packet, parent)

  -- Store Qty Exponent Value
  binance_binancespot_marketdata_sbe_v1_0.qty_exponent.current = qty_exponent

  if not packet.visited then
    binance_binancespot_marketdata_sbe_v1_0.conversation.current.qty_exponent.last = qty_exponent
  end

  -- Depth Diff Stream Event Message bids Groups: Struct of 2 fields
  index, depth_diff_stream_event_message_bids_groups = binance_binancespot_marketdata_sbe_v1_0.depth_diff_stream_event_message_bids_groups.dissect(buffer, index, packet, parent)

  -- Depth Diff Stream Event Message asks Groups: Struct of 2 fields
  index, depth_diff_stream_event_message_asks_groups = binance_binancespot_marketdata_sbe_v1_0.depth_diff_stream_event_message_asks_groups.dissect(buffer, index, packet, parent)

  -- Symbol: Struct of 2 fields
  index, symbol = binance_binancespot_marketdata_sbe_v1_0.symbol.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Depth Diff Stream Event Message
binance_binancespot_marketdata_sbe_v1_0.depth_diff_stream_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.depth_diff_stream_event_message, buffer(offset, 0))
    local index = binance_binancespot_marketdata_sbe_v1_0.depth_diff_stream_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = binance_binancespot_marketdata_sbe_v1_0.depth_diff_stream_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return binance_binancespot_marketdata_sbe_v1_0.depth_diff_stream_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Depth Snapshot Stream Event Message asks Group
binance_binancespot_marketdata_sbe_v1_0.depth_snapshot_stream_event_message_asks_group = {}

-- Size: Depth Snapshot Stream Event Message asks Group
binance_binancespot_marketdata_sbe_v1_0.depth_snapshot_stream_event_message_asks_group.size =
  binance_binancespot_marketdata_sbe_v1_0.price.size + 
  binance_binancespot_marketdata_sbe_v1_0.qty.size

-- Display: Depth Snapshot Stream Event Message asks Group
binance_binancespot_marketdata_sbe_v1_0.depth_snapshot_stream_event_message_asks_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Depth Snapshot Stream Event Message asks Group
binance_binancespot_marketdata_sbe_v1_0.depth_snapshot_stream_event_message_asks_group.fields = function(buffer, offset, packet, parent, depth_snapshot_stream_event_message_asks_group_index)
  local index = offset

  -- Implicit Depth Snapshot Stream Event Message asks Group Index
  if depth_snapshot_stream_event_message_asks_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.depth_snapshot_stream_event_message_asks_group_index, depth_snapshot_stream_event_message_asks_group_index)
    iteration:set_generated()
  end

  -- Price: mantissa64
  index, price = binance_binancespot_marketdata_sbe_v1_0.price_calculate.dissect(buffer, index, packet, parent)

  -- Qty: mantissa64
  index, qty = binance_binancespot_marketdata_sbe_v1_0.qty_calculate.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Depth Snapshot Stream Event Message asks Group
binance_binancespot_marketdata_sbe_v1_0.depth_snapshot_stream_event_message_asks_group.dissect = function(buffer, offset, packet, parent, depth_snapshot_stream_event_message_asks_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.depth_snapshot_stream_event_message_asks_group, buffer(offset, 0))
    local index = binance_binancespot_marketdata_sbe_v1_0.depth_snapshot_stream_event_message_asks_group.fields(buffer, offset, packet, parent, depth_snapshot_stream_event_message_asks_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = binance_binancespot_marketdata_sbe_v1_0.depth_snapshot_stream_event_message_asks_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return binance_binancespot_marketdata_sbe_v1_0.depth_snapshot_stream_event_message_asks_group.fields(buffer, offset, packet, parent, depth_snapshot_stream_event_message_asks_group_index)
  end
end

-- Depth Snapshot Stream Event Message asks Groups
binance_binancespot_marketdata_sbe_v1_0.depth_snapshot_stream_event_message_asks_groups = {}

-- Calculate size of: Depth Snapshot Stream Event Message asks Groups
binance_binancespot_marketdata_sbe_v1_0.depth_snapshot_stream_event_message_asks_groups.size = function(buffer, offset)
  local index = 0

  index = index + binance_binancespot_marketdata_sbe_v1_0.group_size_16_encoding.size

  -- Calculate field size from count
  local depth_snapshot_stream_event_message_asks_group_count = buffer(offset + index - 2, 2):le_uint()
  index = index + depth_snapshot_stream_event_message_asks_group_count * 16

  return index
end

-- Display: Depth Snapshot Stream Event Message asks Groups
binance_binancespot_marketdata_sbe_v1_0.depth_snapshot_stream_event_message_asks_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Depth Snapshot Stream Event Message asks Groups
binance_binancespot_marketdata_sbe_v1_0.depth_snapshot_stream_event_message_asks_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size 16 Encoding: Struct of 2 fields
  index, group_size_16_encoding = binance_binancespot_marketdata_sbe_v1_0.group_size_16_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group uint 16
  local num_in_group_uint_16 = buffer(index - 2, 2):le_uint()

  -- Repeating: Depth Snapshot Stream Event Message asks Group
  for depth_snapshot_stream_event_message_asks_group_index = 1, num_in_group_uint_16 do
    index, depth_snapshot_stream_event_message_asks_group = binance_binancespot_marketdata_sbe_v1_0.depth_snapshot_stream_event_message_asks_group.dissect(buffer, index, packet, parent, depth_snapshot_stream_event_message_asks_group_index)
  end

  return index
end

-- Dissect: Depth Snapshot Stream Event Message asks Groups
binance_binancespot_marketdata_sbe_v1_0.depth_snapshot_stream_event_message_asks_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.depth_snapshot_stream_event_message_asks_groups, buffer(offset, 0))
    local index = binance_binancespot_marketdata_sbe_v1_0.depth_snapshot_stream_event_message_asks_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = binance_binancespot_marketdata_sbe_v1_0.depth_snapshot_stream_event_message_asks_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return binance_binancespot_marketdata_sbe_v1_0.depth_snapshot_stream_event_message_asks_groups.fields(buffer, offset, packet, parent)
  end
end

-- Depth Snapshot Stream Event Message bids Group
binance_binancespot_marketdata_sbe_v1_0.depth_snapshot_stream_event_message_bids_group = {}

-- Size: Depth Snapshot Stream Event Message bids Group
binance_binancespot_marketdata_sbe_v1_0.depth_snapshot_stream_event_message_bids_group.size =
  binance_binancespot_marketdata_sbe_v1_0.price.size + 
  binance_binancespot_marketdata_sbe_v1_0.qty.size

-- Display: Depth Snapshot Stream Event Message bids Group
binance_binancespot_marketdata_sbe_v1_0.depth_snapshot_stream_event_message_bids_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Depth Snapshot Stream Event Message bids Group
binance_binancespot_marketdata_sbe_v1_0.depth_snapshot_stream_event_message_bids_group.fields = function(buffer, offset, packet, parent, depth_snapshot_stream_event_message_bids_group_index)
  local index = offset

  -- Implicit Depth Snapshot Stream Event Message bids Group Index
  if depth_snapshot_stream_event_message_bids_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.depth_snapshot_stream_event_message_bids_group_index, depth_snapshot_stream_event_message_bids_group_index)
    iteration:set_generated()
  end

  -- Price: mantissa64
  index, price = binance_binancespot_marketdata_sbe_v1_0.price_calculate.dissect(buffer, index, packet, parent)

  -- Qty: mantissa64
  index, qty = binance_binancespot_marketdata_sbe_v1_0.qty_calculate.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Depth Snapshot Stream Event Message bids Group
binance_binancespot_marketdata_sbe_v1_0.depth_snapshot_stream_event_message_bids_group.dissect = function(buffer, offset, packet, parent, depth_snapshot_stream_event_message_bids_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.depth_snapshot_stream_event_message_bids_group, buffer(offset, 0))
    local index = binance_binancespot_marketdata_sbe_v1_0.depth_snapshot_stream_event_message_bids_group.fields(buffer, offset, packet, parent, depth_snapshot_stream_event_message_bids_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = binance_binancespot_marketdata_sbe_v1_0.depth_snapshot_stream_event_message_bids_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return binance_binancespot_marketdata_sbe_v1_0.depth_snapshot_stream_event_message_bids_group.fields(buffer, offset, packet, parent, depth_snapshot_stream_event_message_bids_group_index)
  end
end

-- Depth Snapshot Stream Event Message bids Groups
binance_binancespot_marketdata_sbe_v1_0.depth_snapshot_stream_event_message_bids_groups = {}

-- Calculate size of: Depth Snapshot Stream Event Message bids Groups
binance_binancespot_marketdata_sbe_v1_0.depth_snapshot_stream_event_message_bids_groups.size = function(buffer, offset)
  local index = 0

  index = index + binance_binancespot_marketdata_sbe_v1_0.group_size_16_encoding.size

  -- Calculate field size from count
  local depth_snapshot_stream_event_message_bids_group_count = buffer(offset + index - 2, 2):le_uint()
  index = index + depth_snapshot_stream_event_message_bids_group_count * 16

  return index
end

-- Display: Depth Snapshot Stream Event Message bids Groups
binance_binancespot_marketdata_sbe_v1_0.depth_snapshot_stream_event_message_bids_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Depth Snapshot Stream Event Message bids Groups
binance_binancespot_marketdata_sbe_v1_0.depth_snapshot_stream_event_message_bids_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size 16 Encoding: Struct of 2 fields
  index, group_size_16_encoding = binance_binancespot_marketdata_sbe_v1_0.group_size_16_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group uint 16
  local num_in_group_uint_16 = buffer(index - 2, 2):le_uint()

  -- Repeating: Depth Snapshot Stream Event Message bids Group
  for depth_snapshot_stream_event_message_bids_group_index = 1, num_in_group_uint_16 do
    index, depth_snapshot_stream_event_message_bids_group = binance_binancespot_marketdata_sbe_v1_0.depth_snapshot_stream_event_message_bids_group.dissect(buffer, index, packet, parent, depth_snapshot_stream_event_message_bids_group_index)
  end

  return index
end

-- Dissect: Depth Snapshot Stream Event Message bids Groups
binance_binancespot_marketdata_sbe_v1_0.depth_snapshot_stream_event_message_bids_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.depth_snapshot_stream_event_message_bids_groups, buffer(offset, 0))
    local index = binance_binancespot_marketdata_sbe_v1_0.depth_snapshot_stream_event_message_bids_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = binance_binancespot_marketdata_sbe_v1_0.depth_snapshot_stream_event_message_bids_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return binance_binancespot_marketdata_sbe_v1_0.depth_snapshot_stream_event_message_bids_groups.fields(buffer, offset, packet, parent)
  end
end

-- Depth Snapshot Stream Event Message
binance_binancespot_marketdata_sbe_v1_0.depth_snapshot_stream_event_message = {}

-- Calculate size of: Depth Snapshot Stream Event Message
binance_binancespot_marketdata_sbe_v1_0.depth_snapshot_stream_event_message.size = function(buffer, offset)
  local index = 0

  index = index + binance_binancespot_marketdata_sbe_v1_0.event_time.size

  index = index + binance_binancespot_marketdata_sbe_v1_0.book_update_id.size

  index = index + binance_binancespot_marketdata_sbe_v1_0.price_exponent.size

  index = index + binance_binancespot_marketdata_sbe_v1_0.qty_exponent.size

  index = index + binance_binancespot_marketdata_sbe_v1_0.depth_snapshot_stream_event_message_bids_groups.size(buffer, offset + index)

  index = index + binance_binancespot_marketdata_sbe_v1_0.depth_snapshot_stream_event_message_asks_groups.size(buffer, offset + index)

  index = index + binance_binancespot_marketdata_sbe_v1_0.symbol.size(buffer, offset + index)

  return index
end

-- Display: Depth Snapshot Stream Event Message
binance_binancespot_marketdata_sbe_v1_0.depth_snapshot_stream_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Depth Snapshot Stream Event Message
binance_binancespot_marketdata_sbe_v1_0.depth_snapshot_stream_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Event Time: utcTimestampUs
  index, event_time = binance_binancespot_marketdata_sbe_v1_0.event_time.dissect(buffer, index, packet, parent)

  -- Book Update Id: updateId
  index, book_update_id = binance_binancespot_marketdata_sbe_v1_0.book_update_id.dissect(buffer, index, packet, parent)

  -- Price Exponent: exponent8
  index, price_exponent = binance_binancespot_marketdata_sbe_v1_0.price_exponent.dissect(buffer, index, packet, parent)

  -- Store Price Exponent Value
  binance_binancespot_marketdata_sbe_v1_0.price_exponent.current = price_exponent

  if not packet.visited then
    binance_binancespot_marketdata_sbe_v1_0.conversation.current.price_exponent.last = price_exponent
  end

  -- Qty Exponent: exponent8
  index, qty_exponent = binance_binancespot_marketdata_sbe_v1_0.qty_exponent.dissect(buffer, index, packet, parent)

  -- Store Qty Exponent Value
  binance_binancespot_marketdata_sbe_v1_0.qty_exponent.current = qty_exponent

  if not packet.visited then
    binance_binancespot_marketdata_sbe_v1_0.conversation.current.qty_exponent.last = qty_exponent
  end

  -- Depth Snapshot Stream Event Message bids Groups: Struct of 2 fields
  index, depth_snapshot_stream_event_message_bids_groups = binance_binancespot_marketdata_sbe_v1_0.depth_snapshot_stream_event_message_bids_groups.dissect(buffer, index, packet, parent)

  -- Depth Snapshot Stream Event Message asks Groups: Struct of 2 fields
  index, depth_snapshot_stream_event_message_asks_groups = binance_binancespot_marketdata_sbe_v1_0.depth_snapshot_stream_event_message_asks_groups.dissect(buffer, index, packet, parent)

  -- Symbol: Struct of 2 fields
  index, symbol = binance_binancespot_marketdata_sbe_v1_0.symbol.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Depth Snapshot Stream Event Message
binance_binancespot_marketdata_sbe_v1_0.depth_snapshot_stream_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.depth_snapshot_stream_event_message, buffer(offset, 0))
    local index = binance_binancespot_marketdata_sbe_v1_0.depth_snapshot_stream_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = binance_binancespot_marketdata_sbe_v1_0.depth_snapshot_stream_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return binance_binancespot_marketdata_sbe_v1_0.depth_snapshot_stream_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Best Bid Ask Stream Event Message
binance_binancespot_marketdata_sbe_v1_0.best_bid_ask_stream_event_message = {}

-- Calculate size of: Best Bid Ask Stream Event Message
binance_binancespot_marketdata_sbe_v1_0.best_bid_ask_stream_event_message.size = function(buffer, offset)
  local index = 0

  index = index + binance_binancespot_marketdata_sbe_v1_0.event_time.size

  index = index + binance_binancespot_marketdata_sbe_v1_0.book_update_id.size

  index = index + binance_binancespot_marketdata_sbe_v1_0.price_exponent.size

  index = index + binance_binancespot_marketdata_sbe_v1_0.qty_exponent.size

  index = index + binance_binancespot_marketdata_sbe_v1_0.bid_price.size

  index = index + binance_binancespot_marketdata_sbe_v1_0.bid_qty.size

  index = index + binance_binancespot_marketdata_sbe_v1_0.ask_price.size

  index = index + binance_binancespot_marketdata_sbe_v1_0.ask_qty.size

  index = index + binance_binancespot_marketdata_sbe_v1_0.symbol.size(buffer, offset + index)

  return index
end

-- Display: Best Bid Ask Stream Event Message
binance_binancespot_marketdata_sbe_v1_0.best_bid_ask_stream_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Bid Ask Stream Event Message
binance_binancespot_marketdata_sbe_v1_0.best_bid_ask_stream_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Event Time: utcTimestampUs
  index, event_time = binance_binancespot_marketdata_sbe_v1_0.event_time.dissect(buffer, index, packet, parent)

  -- Book Update Id: updateId
  index, book_update_id = binance_binancespot_marketdata_sbe_v1_0.book_update_id.dissect(buffer, index, packet, parent)

  -- Price Exponent: exponent8
  index, price_exponent = binance_binancespot_marketdata_sbe_v1_0.price_exponent.dissect(buffer, index, packet, parent)

  -- Store Price Exponent Value
  binance_binancespot_marketdata_sbe_v1_0.price_exponent.current = price_exponent

  if not packet.visited then
    binance_binancespot_marketdata_sbe_v1_0.conversation.current.price_exponent.last = price_exponent
  end

  -- Qty Exponent: exponent8
  index, qty_exponent = binance_binancespot_marketdata_sbe_v1_0.qty_exponent.dissect(buffer, index, packet, parent)

  -- Store Qty Exponent Value
  binance_binancespot_marketdata_sbe_v1_0.qty_exponent.current = qty_exponent

  if not packet.visited then
    binance_binancespot_marketdata_sbe_v1_0.conversation.current.qty_exponent.last = qty_exponent
  end

  -- Bid Price: mantissa64
  index, bid_price = binance_binancespot_marketdata_sbe_v1_0.bid_price_calculate.dissect(buffer, index, packet, parent)

  -- Bid Qty: mantissa64
  index, bid_qty = binance_binancespot_marketdata_sbe_v1_0.bid_qty_calculate.dissect(buffer, index, packet, parent)

  -- Ask Price: mantissa64
  index, ask_price = binance_binancespot_marketdata_sbe_v1_0.ask_price_calculate.dissect(buffer, index, packet, parent)

  -- Ask Qty: mantissa64
  index, ask_qty = binance_binancespot_marketdata_sbe_v1_0.ask_qty_calculate.dissect(buffer, index, packet, parent)

  -- Symbol: Struct of 2 fields
  index, symbol = binance_binancespot_marketdata_sbe_v1_0.symbol.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Bid Ask Stream Event Message
binance_binancespot_marketdata_sbe_v1_0.best_bid_ask_stream_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.best_bid_ask_stream_event_message, buffer(offset, 0))
    local index = binance_binancespot_marketdata_sbe_v1_0.best_bid_ask_stream_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = binance_binancespot_marketdata_sbe_v1_0.best_bid_ask_stream_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return binance_binancespot_marketdata_sbe_v1_0.best_bid_ask_stream_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Trades Stream Event Message trades Group
binance_binancespot_marketdata_sbe_v1_0.trades_stream_event_message_trades_group = {}

-- Size: Trades Stream Event Message trades Group
binance_binancespot_marketdata_sbe_v1_0.trades_stream_event_message_trades_group.size =
  binance_binancespot_marketdata_sbe_v1_0.id.size + 
  binance_binancespot_marketdata_sbe_v1_0.price.size + 
  binance_binancespot_marketdata_sbe_v1_0.qty.size + 
  binance_binancespot_marketdata_sbe_v1_0.is_buyer_maker.size

-- Display: Trades Stream Event Message trades Group
binance_binancespot_marketdata_sbe_v1_0.trades_stream_event_message_trades_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trades Stream Event Message trades Group
binance_binancespot_marketdata_sbe_v1_0.trades_stream_event_message_trades_group.fields = function(buffer, offset, packet, parent, trades_stream_event_message_trades_group_index)
  local index = offset

  -- Implicit Trades Stream Event Message trades Group Index
  if trades_stream_event_message_trades_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.trades_stream_event_message_trades_group_index, trades_stream_event_message_trades_group_index)
    iteration:set_generated()
  end

  -- Id: tradeId
  index, id = binance_binancespot_marketdata_sbe_v1_0.id.dissect(buffer, index, packet, parent)

  -- Price: mantissa64
  index, price = binance_binancespot_marketdata_sbe_v1_0.price_calculate.dissect(buffer, index, packet, parent)

  -- Qty: mantissa64
  index, qty = binance_binancespot_marketdata_sbe_v1_0.qty_calculate.dissect(buffer, index, packet, parent)

  -- Is Buyer Maker: boolEnum
  index, is_buyer_maker = binance_binancespot_marketdata_sbe_v1_0.is_buyer_maker.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trades Stream Event Message trades Group
binance_binancespot_marketdata_sbe_v1_0.trades_stream_event_message_trades_group.dissect = function(buffer, offset, packet, parent, trades_stream_event_message_trades_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.trades_stream_event_message_trades_group, buffer(offset, 0))
    local index = binance_binancespot_marketdata_sbe_v1_0.trades_stream_event_message_trades_group.fields(buffer, offset, packet, parent, trades_stream_event_message_trades_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = binance_binancespot_marketdata_sbe_v1_0.trades_stream_event_message_trades_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return binance_binancespot_marketdata_sbe_v1_0.trades_stream_event_message_trades_group.fields(buffer, offset, packet, parent, trades_stream_event_message_trades_group_index)
  end
end

-- Group Size Encoding
binance_binancespot_marketdata_sbe_v1_0.group_size_encoding = {}

-- Size: Group Size Encoding
binance_binancespot_marketdata_sbe_v1_0.group_size_encoding.size =
  binance_binancespot_marketdata_sbe_v1_0.block_length.size + 
  binance_binancespot_marketdata_sbe_v1_0.num_in_group_uint_32.size

-- Display: Group Size Encoding
binance_binancespot_marketdata_sbe_v1_0.group_size_encoding.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group Size Encoding
binance_binancespot_marketdata_sbe_v1_0.group_size_encoding.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: uint16
  index, block_length = binance_binancespot_marketdata_sbe_v1_0.block_length.dissect(buffer, index, packet, parent)

  -- Num In Group uint 32: uint32
  index, num_in_group_uint_32 = binance_binancespot_marketdata_sbe_v1_0.num_in_group_uint_32.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Size Encoding
binance_binancespot_marketdata_sbe_v1_0.group_size_encoding.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.group_size_encoding, buffer(offset, 0))
    local index = binance_binancespot_marketdata_sbe_v1_0.group_size_encoding.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = binance_binancespot_marketdata_sbe_v1_0.group_size_encoding.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return binance_binancespot_marketdata_sbe_v1_0.group_size_encoding.fields(buffer, offset, packet, parent)
  end
end

-- Trades Stream Event Message trades Groups
binance_binancespot_marketdata_sbe_v1_0.trades_stream_event_message_trades_groups = {}

-- Calculate size of: Trades Stream Event Message trades Groups
binance_binancespot_marketdata_sbe_v1_0.trades_stream_event_message_trades_groups.size = function(buffer, offset)
  local index = 0

  index = index + binance_binancespot_marketdata_sbe_v1_0.group_size_encoding.size

  -- Calculate field size from count
  local trades_stream_event_message_trades_group_count = buffer(offset + index - 4, 4):le_uint()
  index = index + trades_stream_event_message_trades_group_count * 25

  return index
end

-- Display: Trades Stream Event Message trades Groups
binance_binancespot_marketdata_sbe_v1_0.trades_stream_event_message_trades_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trades Stream Event Message trades Groups
binance_binancespot_marketdata_sbe_v1_0.trades_stream_event_message_trades_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = binance_binancespot_marketdata_sbe_v1_0.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group uint 32
  local num_in_group_uint_32 = buffer(index - 4, 4):le_uint()

  -- Repeating: Trades Stream Event Message trades Group
  for trades_stream_event_message_trades_group_index = 1, num_in_group_uint_32 do
    index, trades_stream_event_message_trades_group = binance_binancespot_marketdata_sbe_v1_0.trades_stream_event_message_trades_group.dissect(buffer, index, packet, parent, trades_stream_event_message_trades_group_index)
  end

  return index
end

-- Dissect: Trades Stream Event Message trades Groups
binance_binancespot_marketdata_sbe_v1_0.trades_stream_event_message_trades_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.trades_stream_event_message_trades_groups, buffer(offset, 0))
    local index = binance_binancespot_marketdata_sbe_v1_0.trades_stream_event_message_trades_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = binance_binancespot_marketdata_sbe_v1_0.trades_stream_event_message_trades_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return binance_binancespot_marketdata_sbe_v1_0.trades_stream_event_message_trades_groups.fields(buffer, offset, packet, parent)
  end
end

-- Trades Stream Event Message
binance_binancespot_marketdata_sbe_v1_0.trades_stream_event_message = {}

-- Calculate size of: Trades Stream Event Message
binance_binancespot_marketdata_sbe_v1_0.trades_stream_event_message.size = function(buffer, offset)
  local index = 0

  index = index + binance_binancespot_marketdata_sbe_v1_0.event_time.size

  index = index + binance_binancespot_marketdata_sbe_v1_0.transact_time.size

  index = index + binance_binancespot_marketdata_sbe_v1_0.price_exponent.size

  index = index + binance_binancespot_marketdata_sbe_v1_0.qty_exponent.size

  index = index + binance_binancespot_marketdata_sbe_v1_0.trades_stream_event_message_trades_groups.size(buffer, offset + index)

  index = index + binance_binancespot_marketdata_sbe_v1_0.symbol.size(buffer, offset + index)

  return index
end

-- Display: Trades Stream Event Message
binance_binancespot_marketdata_sbe_v1_0.trades_stream_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trades Stream Event Message
binance_binancespot_marketdata_sbe_v1_0.trades_stream_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Event Time: utcTimestampUs
  index, event_time = binance_binancespot_marketdata_sbe_v1_0.event_time.dissect(buffer, index, packet, parent)

  -- Transact Time: utcTimestampUs
  index, transact_time = binance_binancespot_marketdata_sbe_v1_0.transact_time.dissect(buffer, index, packet, parent)

  -- Price Exponent: exponent8
  index, price_exponent = binance_binancespot_marketdata_sbe_v1_0.price_exponent.dissect(buffer, index, packet, parent)

  -- Store Price Exponent Value
  binance_binancespot_marketdata_sbe_v1_0.price_exponent.current = price_exponent

  if not packet.visited then
    binance_binancespot_marketdata_sbe_v1_0.conversation.current.price_exponent.last = price_exponent
  end

  -- Qty Exponent: exponent8
  index, qty_exponent = binance_binancespot_marketdata_sbe_v1_0.qty_exponent.dissect(buffer, index, packet, parent)

  -- Store Qty Exponent Value
  binance_binancespot_marketdata_sbe_v1_0.qty_exponent.current = qty_exponent

  if not packet.visited then
    binance_binancespot_marketdata_sbe_v1_0.conversation.current.qty_exponent.last = qty_exponent
  end

  -- Trades Stream Event Message trades Groups: Struct of 2 fields
  index, trades_stream_event_message_trades_groups = binance_binancespot_marketdata_sbe_v1_0.trades_stream_event_message_trades_groups.dissect(buffer, index, packet, parent)

  -- Symbol: Struct of 2 fields
  index, symbol = binance_binancespot_marketdata_sbe_v1_0.symbol.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trades Stream Event Message
binance_binancespot_marketdata_sbe_v1_0.trades_stream_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.trades_stream_event_message, buffer(offset, 0))
    local index = binance_binancespot_marketdata_sbe_v1_0.trades_stream_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = binance_binancespot_marketdata_sbe_v1_0.trades_stream_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return binance_binancespot_marketdata_sbe_v1_0.trades_stream_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
binance_binancespot_marketdata_sbe_v1_0.payload = {}

-- Dissect: Payload
binance_binancespot_marketdata_sbe_v1_0.payload.dispatch = {
  [10000] = binance_binancespot_marketdata_sbe_v1_0.trades_stream_event_message.dissect,
  [10001] = binance_binancespot_marketdata_sbe_v1_0.best_bid_ask_stream_event_message.dissect,
  [10002] = binance_binancespot_marketdata_sbe_v1_0.depth_snapshot_stream_event_message.dissect,
  [10003] = binance_binancespot_marketdata_sbe_v1_0.depth_diff_stream_event_message.dissect,
}

binance_binancespot_marketdata_sbe_v1_0.payload.dissect = function(buffer, offset, packet, parent, template_id)
  local dissect = binance_binancespot_marketdata_sbe_v1_0.payload.dispatch[template_id]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
binance_binancespot_marketdata_sbe_v1_0.message_header = {}

-- Size: Message Header
binance_binancespot_marketdata_sbe_v1_0.message_header.size =
  binance_binancespot_marketdata_sbe_v1_0.block_length.size + 
  binance_binancespot_marketdata_sbe_v1_0.template_id.size + 
  binance_binancespot_marketdata_sbe_v1_0.schema_id.size + 
  binance_binancespot_marketdata_sbe_v1_0.version.size

-- Display: Message Header
binance_binancespot_marketdata_sbe_v1_0.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
binance_binancespot_marketdata_sbe_v1_0.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: uint16
  index, block_length = binance_binancespot_marketdata_sbe_v1_0.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: uint16
  index, template_id = binance_binancespot_marketdata_sbe_v1_0.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: uint16
  index, schema_id = binance_binancespot_marketdata_sbe_v1_0.schema_id.dissect(buffer, index, packet, parent)

  -- Version: uint16
  index, version = binance_binancespot_marketdata_sbe_v1_0.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
binance_binancespot_marketdata_sbe_v1_0.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.message_header, buffer(offset, 0))
    local index = binance_binancespot_marketdata_sbe_v1_0.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = binance_binancespot_marketdata_sbe_v1_0.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return binance_binancespot_marketdata_sbe_v1_0.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Sbe Message
binance_binancespot_marketdata_sbe_v1_0.sbe_message = {}

-- Calculate size of: Sbe Message
binance_binancespot_marketdata_sbe_v1_0.sbe_message.size = function(buffer, offset)
  local index = 0

  index = index + binance_binancespot_marketdata_sbe_v1_0.message_header.size

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 6, 2):le_uint()
  index = index + binance_binancespot_marketdata_sbe_v1_0.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Sbe Message
binance_binancespot_marketdata_sbe_v1_0.sbe_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Message
binance_binancespot_marketdata_sbe_v1_0.sbe_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 4 fields
  index, message_header = binance_binancespot_marketdata_sbe_v1_0.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Payload: Runtime Type with 4 branches
  index = binance_binancespot_marketdata_sbe_v1_0.payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Sbe Message
binance_binancespot_marketdata_sbe_v1_0.sbe_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_binance_binancespot_marketdata_sbe_v1_0.fields.sbe_message, buffer(offset, 0))
    local index = binance_binancespot_marketdata_sbe_v1_0.sbe_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = binance_binancespot_marketdata_sbe_v1_0.sbe_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return binance_binancespot_marketdata_sbe_v1_0.sbe_message.fields(buffer, offset, packet, parent)
  end
end

-- Frame
binance_binancespot_marketdata_sbe_v1_0.frame = {}

-- Verify required size of WebSocket packet
binance_binancespot_marketdata_sbe_v1_0.frame.requiredsize = function(buffer)
  return buffer:len() >= binance_binancespot_marketdata_sbe_v1_0.message_header.size
end

-- Dissect Frame
binance_binancespot_marketdata_sbe_v1_0.frame.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = binance_binancespot_marketdata_sbe_v1_0.conversation.data(packet)
  if not packet.visited then
    data.price_exponent.frames[packet.number] = data.price_exponent.last
    data.qty_exponent.frames[packet.number] = data.qty_exponent.last
    data.price_exponent.frames[packet.number] = data.price_exponent.last
    data.qty_exponent.frames[packet.number] = data.qty_exponent.last
    data.price_exponent.frames[packet.number] = data.price_exponent.last
    data.qty_exponent.frames[packet.number] = data.qty_exponent.last
    data.price_exponent.frames[packet.number] = data.price_exponent.last
    data.qty_exponent.frames[packet.number] = data.qty_exponent.last
  end
  binance_binancespot_marketdata_sbe_v1_0.price_exponent.current = data.price_exponent.frames[packet.number]
  binance_binancespot_marketdata_sbe_v1_0.qty_exponent.current = data.qty_exponent.frames[packet.number]
  binance_binancespot_marketdata_sbe_v1_0.price_exponent.current = data.price_exponent.frames[packet.number]
  binance_binancespot_marketdata_sbe_v1_0.qty_exponent.current = data.qty_exponent.frames[packet.number]
  binance_binancespot_marketdata_sbe_v1_0.price_exponent.current = data.price_exponent.frames[packet.number]
  binance_binancespot_marketdata_sbe_v1_0.qty_exponent.current = data.qty_exponent.frames[packet.number]
  binance_binancespot_marketdata_sbe_v1_0.price_exponent.current = data.price_exponent.frames[packet.number]
  binance_binancespot_marketdata_sbe_v1_0.qty_exponent.current = data.qty_exponent.frames[packet.number]
  binance_binancespot_marketdata_sbe_v1_0.conversation.current = data

  local index = 0

  -- Sbe Message: Struct of 2 fields
  index, sbe_message = binance_binancespot_marketdata_sbe_v1_0.sbe_message.dissect(buffer, index, packet, parent)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_binance_binancespot_marketdata_sbe_v1_0.init()
  binance_binancespot_marketdata_sbe_v1_0.price_exponent.current = nil
  binance_binancespot_marketdata_sbe_v1_0.qty_exponent.current = nil
  binance_binancespot_marketdata_sbe_v1_0.conversation.current = nil
  binance_binancespot_marketdata_sbe_v1_0.conversation.flows = {}
end

-- Dissector for Binance BinanceSpot MarketData Sbe 1.0
function omi_binance_binancespot_marketdata_sbe_v1_0.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_binance_binancespot_marketdata_sbe_v1_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_binance_binancespot_marketdata_sbe_v1_0, buffer(), omi_binance_binancespot_marketdata_sbe_v1_0.description, "("..buffer:len().." Bytes)")
  return binance_binancespot_marketdata_sbe_v1_0.frame.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Frame: would its message dispatch accept this frame?
binance_binancespot_marketdata_sbe_v1_0.frame.fingerprint = function(buffer)
  if buffer:len() < 4 then
    return false
  end

  local template_id = buffer(2, 2):le_uint()

  -- Trades Stream Event Message
  if template_id == 10000 then
    return true
  end

  -- Best Bid Ask Stream Event Message
  if template_id == 10001 then
    return true
  end

  -- Depth Snapshot Stream Event Message
  if template_id == 10002 then
    return true
  end

  -- Depth Diff Stream Event Message
  if template_id == 10003 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify Schema Id Field
binance_binancespot_marketdata_sbe_v1_0.schema_id.verify = function(buffer)
  -- Too short to carry the field: not this protocol
  if buffer:len() < 4 + 2 then
    return false
  end

  -- Attempt to read field
  local value = buffer(4, 2):le_uint()

  if value == 1 then
    return true
  end

  return false
end

-- Verify Version Field
binance_binancespot_marketdata_sbe_v1_0.version.verify = function(buffer)
  -- Too short to carry the field: not this protocol
  if buffer:len() < 6 + 2 then
    return false
  end

  -- Attempt to read field
  local value = buffer(6, 2):le_uint()

  if value == 0 then
    return true
  end

  return false
end

-- Dissector Heuristic for Binance BinanceSpot MarketData Sbe 1.0 (WebSocket)
local function omi_binance_binancespot_marketdata_sbe_v1_0_ws_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not binance_binancespot_marketdata_sbe_v1_0.frame.requiredsize(buffer) then return false end

  -- Verify Schema Id
  if not binance_binancespot_marketdata_sbe_v1_0.schema_id.verify(buffer) then return false end

  -- Verify Version
  if not binance_binancespot_marketdata_sbe_v1_0.version.verify(buffer) then return false end

  -- Verify the frame matches this websocket frame message dispatch
  if not binance_binancespot_marketdata_sbe_v1_0.frame.fingerprint(buffer) then return false end

  -- Protocol is valid, dissect this packet: each WebSocket message comes to the heuristic, so the conversation stays the WebSocket's
  omi_binance_binancespot_marketdata_sbe_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Binance BinanceSpot MarketData Sbe 1.0
omi_binance_binancespot_marketdata_sbe_v1_0:register_heuristic("ws", omi_binance_binancespot_marketdata_sbe_v1_0_ws_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Binance
--   Version: 1.0
--   Date: Friday, September 18, 2026
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
