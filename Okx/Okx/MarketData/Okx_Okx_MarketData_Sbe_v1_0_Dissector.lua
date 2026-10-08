-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Okx Okx MarketData Sbe 1.0 Protocol
local omi_okx_okx_marketdata_sbe_v1_0 = Proto("Omi.Okx.Okx.MarketData.Sbe.v1.0", "Okx Okx MarketData Sbe 1.0")

-- Protocol table
local okx_okx_marketdata_sbe_v1_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Okx Okx MarketData Sbe 1.0 Fields
omi_okx_okx_marketdata_sbe_v1_0.fields.ask_ord_count = ProtoField.new("Ask Ord Count", "okx.okx.marketdata.sbe.v1.0.askordcount", ftypes.INT32)
omi_okx_okx_marketdata_sbe_v1_0.fields.ask_px_mantissa = ProtoField.new("Ask Px Mantissa", "okx.okx.marketdata.sbe.v1.0.askpxmantissa", ftypes.INT64)
omi_okx_okx_marketdata_sbe_v1_0.fields.ask_sz_mantissa = ProtoField.new("Ask Sz Mantissa", "okx.okx.marketdata.sbe.v1.0.askszmantissa", ftypes.INT64)
omi_okx_okx_marketdata_sbe_v1_0.fields.bid_ord_count = ProtoField.new("Bid Ord Count", "okx.okx.marketdata.sbe.v1.0.bidordcount", ftypes.INT32)
omi_okx_okx_marketdata_sbe_v1_0.fields.bid_px_mantissa = ProtoField.new("Bid Px Mantissa", "okx.okx.marketdata.sbe.v1.0.bidpxmantissa", ftypes.INT64)
omi_okx_okx_marketdata_sbe_v1_0.fields.bid_sz_mantissa = ProtoField.new("Bid Sz Mantissa", "okx.okx.marketdata.sbe.v1.0.bidszmantissa", ftypes.INT64)
omi_okx_okx_marketdata_sbe_v1_0.fields.block_length = ProtoField.new("Block Length", "okx.okx.marketdata.sbe.v1.0.blocklength", ftypes.UINT16)
omi_okx_okx_marketdata_sbe_v1_0.fields.books_l_2_tbt_channel_event_message_asks_group = ProtoField.new("Books L 2 Tbt Channel Event Message asks Group", "okx.okx.marketdata.sbe.v1.0.booksl2tbtchanneleventmessageasksgroup", ftypes.STRING)
omi_okx_okx_marketdata_sbe_v1_0.fields.books_l_2_tbt_channel_event_message_asks_groups = ProtoField.new("Books L 2 Tbt Channel Event Message asks Groups", "okx.okx.marketdata.sbe.v1.0.booksl2tbtchanneleventmessageasksgroups", ftypes.STRING)
omi_okx_okx_marketdata_sbe_v1_0.fields.books_l_2_tbt_channel_event_message_bids_group = ProtoField.new("Books L 2 Tbt Channel Event Message bids Group", "okx.okx.marketdata.sbe.v1.0.booksl2tbtchanneleventmessagebidsgroup", ftypes.STRING)
omi_okx_okx_marketdata_sbe_v1_0.fields.books_l_2_tbt_channel_event_message_bids_groups = ProtoField.new("Books L 2 Tbt Channel Event Message bids Groups", "okx.okx.marketdata.sbe.v1.0.booksl2tbtchanneleventmessagebidsgroups", ftypes.STRING)
omi_okx_okx_marketdata_sbe_v1_0.fields.books_l_2_tbt_elp_channel_event_message_asks_group = ProtoField.new("Books L 2 Tbt Elp Channel Event Message asks Group", "okx.okx.marketdata.sbe.v1.0.booksl2tbtelpchanneleventmessageasksgroup", ftypes.STRING)
omi_okx_okx_marketdata_sbe_v1_0.fields.books_l_2_tbt_elp_channel_event_message_asks_groups = ProtoField.new("Books L 2 Tbt Elp Channel Event Message asks Groups", "okx.okx.marketdata.sbe.v1.0.booksl2tbtelpchanneleventmessageasksgroups", ftypes.STRING)
omi_okx_okx_marketdata_sbe_v1_0.fields.books_l_2_tbt_elp_channel_event_message_bids_group = ProtoField.new("Books L 2 Tbt Elp Channel Event Message bids Group", "okx.okx.marketdata.sbe.v1.0.booksl2tbtelpchanneleventmessagebidsgroup", ftypes.STRING)
omi_okx_okx_marketdata_sbe_v1_0.fields.books_l_2_tbt_elp_channel_event_message_bids_groups = ProtoField.new("Books L 2 Tbt Elp Channel Event Message bids Groups", "okx.okx.marketdata.sbe.v1.0.booksl2tbtelpchanneleventmessagebidsgroups", ftypes.STRING)
omi_okx_okx_marketdata_sbe_v1_0.fields.count = ProtoField.new("Count", "okx.okx.marketdata.sbe.v1.0.count", ftypes.INT16)
omi_okx_okx_marketdata_sbe_v1_0.fields.group_size_16_encoding = ProtoField.new("Group Size 16 Encoding", "okx.okx.marketdata.sbe.v1.0.groupsize16encoding", ftypes.STRING)
omi_okx_okx_marketdata_sbe_v1_0.fields.inst_id_code = ProtoField.new("Inst Id Code", "okx.okx.marketdata.sbe.v1.0.instidcode", ftypes.INT64)
omi_okx_okx_marketdata_sbe_v1_0.fields.num_in_group = ProtoField.new("Num In Group", "okx.okx.marketdata.sbe.v1.0.numingroup", ftypes.UINT16)
omi_okx_okx_marketdata_sbe_v1_0.fields.ord_count = ProtoField.new("Ord Count", "okx.okx.marketdata.sbe.v1.0.ordcount", ftypes.INT32)
omi_okx_okx_marketdata_sbe_v1_0.fields.out_time = ProtoField.new("Out Time", "okx.okx.marketdata.sbe.v1.0.outtime", ftypes.INT64)
omi_okx_okx_marketdata_sbe_v1_0.fields.prev_seq_id = ProtoField.new("Prev Seq Id", "okx.okx.marketdata.sbe.v1.0.prevseqid", ftypes.INT64)
omi_okx_okx_marketdata_sbe_v1_0.fields.px_exponent = ProtoField.new("Px Exponent", "okx.okx.marketdata.sbe.v1.0.pxexponent", ftypes.INT8)
omi_okx_okx_marketdata_sbe_v1_0.fields.px_mantissa = ProtoField.new("Px Mantissa", "okx.okx.marketdata.sbe.v1.0.pxmantissa", ftypes.INT64)
omi_okx_okx_marketdata_sbe_v1_0.fields.schema_id = ProtoField.new("Schema Id", "okx.okx.marketdata.sbe.v1.0.schemaid", ftypes.UINT16)
omi_okx_okx_marketdata_sbe_v1_0.fields.seq_id = ProtoField.new("Seq Id", "okx.okx.marketdata.sbe.v1.0.seqid", ftypes.INT64)
omi_okx_okx_marketdata_sbe_v1_0.fields.side = ProtoField.new("Side", "okx.okx.marketdata.sbe.v1.0.side", ftypes.INT8)
omi_okx_okx_marketdata_sbe_v1_0.fields.snapshot_depth_response_event_message_asks_group = ProtoField.new("Snapshot Depth Response Event Message asks Group", "okx.okx.marketdata.sbe.v1.0.snapshotdepthresponseeventmessageasksgroup", ftypes.STRING)
omi_okx_okx_marketdata_sbe_v1_0.fields.snapshot_depth_response_event_message_asks_groups = ProtoField.new("Snapshot Depth Response Event Message asks Groups", "okx.okx.marketdata.sbe.v1.0.snapshotdepthresponseeventmessageasksgroups", ftypes.STRING)
omi_okx_okx_marketdata_sbe_v1_0.fields.snapshot_depth_response_event_message_bids_group = ProtoField.new("Snapshot Depth Response Event Message bids Group", "okx.okx.marketdata.sbe.v1.0.snapshotdepthresponseeventmessagebidsgroup", ftypes.STRING)
omi_okx_okx_marketdata_sbe_v1_0.fields.snapshot_depth_response_event_message_bids_groups = ProtoField.new("Snapshot Depth Response Event Message bids Groups", "okx.okx.marketdata.sbe.v1.0.snapshotdepthresponseeventmessagebidsgroups", ftypes.STRING)
omi_okx_okx_marketdata_sbe_v1_0.fields.source = ProtoField.new("Source", "okx.okx.marketdata.sbe.v1.0.source", ftypes.INT8)
omi_okx_okx_marketdata_sbe_v1_0.fields.sz_exponent = ProtoField.new("Sz Exponent", "okx.okx.marketdata.sbe.v1.0.szexponent", ftypes.INT8)
omi_okx_okx_marketdata_sbe_v1_0.fields.sz_mantissa = ProtoField.new("Sz Mantissa", "okx.okx.marketdata.sbe.v1.0.szmantissa", ftypes.INT64)
omi_okx_okx_marketdata_sbe_v1_0.fields.template_id = ProtoField.new("Template Id", "okx.okx.marketdata.sbe.v1.0.templateid", ftypes.UINT16)
omi_okx_okx_marketdata_sbe_v1_0.fields.trade_id = ProtoField.new("Trade Id", "okx.okx.marketdata.sbe.v1.0.tradeid", ftypes.INT64)
omi_okx_okx_marketdata_sbe_v1_0.fields.ts_us = ProtoField.new("Ts Us", "okx.okx.marketdata.sbe.v1.0.tsus", ftypes.INT64)
omi_okx_okx_marketdata_sbe_v1_0.fields.version = ProtoField.new("Version", "okx.okx.marketdata.sbe.v1.0.version", ftypes.UINT16)

-- Okx Okx MarketData Sbe 1.0 Framing
omi_okx_okx_marketdata_sbe_v1_0.fields.frame = ProtoField.new("Frame", "okx.okx.marketdata.sbe.v1.0.frame", ftypes.STRING)
omi_okx_okx_marketdata_sbe_v1_0.fields.message_header = ProtoField.new("Message Header", "okx.okx.marketdata.sbe.v1.0.messageheader", ftypes.STRING)
omi_okx_okx_marketdata_sbe_v1_0.fields.sbe_message = ProtoField.new("Sbe Message", "okx.okx.marketdata.sbe.v1.0.sbemessage", ftypes.STRING)

-- Okx Okx MarketData 1.0 Application Messages
omi_okx_okx_marketdata_sbe_v1_0.fields.bbo_tbt_channel_event_message = ProtoField.new("Bbo Tbt Channel Event Message", "okx.okx.marketdata.sbe.v1.0.bbotbtchanneleventmessage", ftypes.STRING)
omi_okx_okx_marketdata_sbe_v1_0.fields.books_l_2_tbt_channel_event_message = ProtoField.new("Books L 2 Tbt Channel Event Message", "okx.okx.marketdata.sbe.v1.0.booksl2tbtchanneleventmessage", ftypes.STRING)
omi_okx_okx_marketdata_sbe_v1_0.fields.books_l_2_tbt_elp_channel_event_message = ProtoField.new("Books L 2 Tbt Elp Channel Event Message", "okx.okx.marketdata.sbe.v1.0.booksl2tbtelpchanneleventmessage", ftypes.STRING)
omi_okx_okx_marketdata_sbe_v1_0.fields.books_l_2_tbt_elp_exponent_update_event_message = ProtoField.new("Books L 2 Tbt Elp Exponent Update Event Message", "okx.okx.marketdata.sbe.v1.0.booksl2tbtelpexponentupdateeventmessage", ftypes.STRING)
omi_okx_okx_marketdata_sbe_v1_0.fields.books_l_2_tbt_exponent_update_event_message = ProtoField.new("Books L 2 Tbt Exponent Update Event Message", "okx.okx.marketdata.sbe.v1.0.booksl2tbtexponentupdateeventmessage", ftypes.STRING)
omi_okx_okx_marketdata_sbe_v1_0.fields.snapshot_depth_response_event_message = ProtoField.new("Snapshot Depth Response Event Message", "okx.okx.marketdata.sbe.v1.0.snapshotdepthresponseeventmessage", ftypes.STRING)
omi_okx_okx_marketdata_sbe_v1_0.fields.trades_channel_event_message = ProtoField.new("Trades Channel Event Message", "okx.okx.marketdata.sbe.v1.0.tradeschanneleventmessage", ftypes.STRING)

-- Okx Okx MarketData Sbe 1.0 Generated Fields
omi_okx_okx_marketdata_sbe_v1_0.fields.books_l_2_tbt_channel_event_message_asks_group_index = ProtoField.new("Books L 2 Tbt Channel Event Message asks Group Index", "okx.okx.marketdata.sbe.v1.0.booksl2tbtchanneleventmessageasksgroupindex", ftypes.UINT16)
omi_okx_okx_marketdata_sbe_v1_0.fields.books_l_2_tbt_channel_event_message_bids_group_index = ProtoField.new("Books L 2 Tbt Channel Event Message bids Group Index", "okx.okx.marketdata.sbe.v1.0.booksl2tbtchanneleventmessagebidsgroupindex", ftypes.UINT16)
omi_okx_okx_marketdata_sbe_v1_0.fields.books_l_2_tbt_elp_channel_event_message_asks_group_index = ProtoField.new("Books L 2 Tbt Elp Channel Event Message asks Group Index", "okx.okx.marketdata.sbe.v1.0.booksl2tbtelpchanneleventmessageasksgroupindex", ftypes.UINT16)
omi_okx_okx_marketdata_sbe_v1_0.fields.books_l_2_tbt_elp_channel_event_message_bids_group_index = ProtoField.new("Books L 2 Tbt Elp Channel Event Message bids Group Index", "okx.okx.marketdata.sbe.v1.0.booksl2tbtelpchanneleventmessagebidsgroupindex", ftypes.UINT16)
omi_okx_okx_marketdata_sbe_v1_0.fields.snapshot_depth_response_event_message_asks_group_index = ProtoField.new("Snapshot Depth Response Event Message asks Group Index", "okx.okx.marketdata.sbe.v1.0.snapshotdepthresponseeventmessageasksgroupindex", ftypes.UINT16)
omi_okx_okx_marketdata_sbe_v1_0.fields.snapshot_depth_response_event_message_bids_group_index = ProtoField.new("Snapshot Depth Response Event Message bids Group Index", "okx.okx.marketdata.sbe.v1.0.snapshotdepthresponseeventmessagebidsgroupindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Okx Okx MarketData Sbe 1.0 Element Dissection Options
show.application_messages = true
show.repeating_groups = true
show.headers = true
show.structs = true
show.indexes = true

-- Register Okx Okx MarketData Sbe 1.0 Show Options
omi_okx_okx_marketdata_sbe_v1_0.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_okx_okx_marketdata_sbe_v1_0.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_okx_okx_marketdata_sbe_v1_0.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_okx_okx_marketdata_sbe_v1_0.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_okx_okx_marketdata_sbe_v1_0.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

-- Handle changed preferences
function omi_okx_okx_marketdata_sbe_v1_0.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_okx_okx_marketdata_sbe_v1_0.prefs.show_application_messages then
    show.application_messages = omi_okx_okx_marketdata_sbe_v1_0.prefs.show_application_messages
  end
  if show.headers ~= omi_okx_okx_marketdata_sbe_v1_0.prefs.show_headers then
    show.headers = omi_okx_okx_marketdata_sbe_v1_0.prefs.show_headers
  end
  if show.repeating_groups ~= omi_okx_okx_marketdata_sbe_v1_0.prefs.show_repeating_groups then
    show.repeating_groups = omi_okx_okx_marketdata_sbe_v1_0.prefs.show_repeating_groups
  end
  if show.structs ~= omi_okx_okx_marketdata_sbe_v1_0.prefs.show_structs then
    show.structs = omi_okx_okx_marketdata_sbe_v1_0.prefs.show_structs
  end
  if show.indexes ~= omi_okx_okx_marketdata_sbe_v1_0.prefs.show_indexes then
    show.indexes = omi_okx_okx_marketdata_sbe_v1_0.prefs.show_indexes
  end
end


-----------------------------------------------------------------------
-- Okx Okx MarketData Sbe 1.0 Fields
-----------------------------------------------------------------------

-- Ask Ord Count
okx_okx_marketdata_sbe_v1_0.ask_ord_count = {}

-- Size: Ask Ord Count
okx_okx_marketdata_sbe_v1_0.ask_ord_count.size = 4

-- Display: Ask Ord Count
okx_okx_marketdata_sbe_v1_0.ask_ord_count.display = function(value)
  return "Ask Ord Count: "..value
end

-- Dissect: Ask Ord Count
okx_okx_marketdata_sbe_v1_0.ask_ord_count.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_marketdata_sbe_v1_0.ask_ord_count.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = okx_okx_marketdata_sbe_v1_0.ask_ord_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_marketdata_sbe_v1_0.fields.ask_ord_count, range, value, display)

  return offset + length, value
end

-- Ask Px Mantissa
okx_okx_marketdata_sbe_v1_0.ask_px_mantissa = {}

-- Size: Ask Px Mantissa
okx_okx_marketdata_sbe_v1_0.ask_px_mantissa.size = 8

-- Display: Ask Px Mantissa
okx_okx_marketdata_sbe_v1_0.ask_px_mantissa.display = function(value)
  return "Ask Px Mantissa: "..value
end

-- Dissect: Ask Px Mantissa
okx_okx_marketdata_sbe_v1_0.ask_px_mantissa.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_marketdata_sbe_v1_0.ask_px_mantissa.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = okx_okx_marketdata_sbe_v1_0.ask_px_mantissa.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_marketdata_sbe_v1_0.fields.ask_px_mantissa, range, value, display)

  return offset + length, value
end

-- Ask Sz Mantissa
okx_okx_marketdata_sbe_v1_0.ask_sz_mantissa = {}

-- Size: Ask Sz Mantissa
okx_okx_marketdata_sbe_v1_0.ask_sz_mantissa.size = 8

-- Display: Ask Sz Mantissa
okx_okx_marketdata_sbe_v1_0.ask_sz_mantissa.display = function(value)
  return "Ask Sz Mantissa: "..value
end

-- Dissect: Ask Sz Mantissa
okx_okx_marketdata_sbe_v1_0.ask_sz_mantissa.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_marketdata_sbe_v1_0.ask_sz_mantissa.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = okx_okx_marketdata_sbe_v1_0.ask_sz_mantissa.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_marketdata_sbe_v1_0.fields.ask_sz_mantissa, range, value, display)

  return offset + length, value
end

-- Bid Ord Count
okx_okx_marketdata_sbe_v1_0.bid_ord_count = {}

-- Size: Bid Ord Count
okx_okx_marketdata_sbe_v1_0.bid_ord_count.size = 4

-- Display: Bid Ord Count
okx_okx_marketdata_sbe_v1_0.bid_ord_count.display = function(value)
  return "Bid Ord Count: "..value
end

-- Dissect: Bid Ord Count
okx_okx_marketdata_sbe_v1_0.bid_ord_count.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_marketdata_sbe_v1_0.bid_ord_count.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = okx_okx_marketdata_sbe_v1_0.bid_ord_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_marketdata_sbe_v1_0.fields.bid_ord_count, range, value, display)

  return offset + length, value
end

-- Bid Px Mantissa
okx_okx_marketdata_sbe_v1_0.bid_px_mantissa = {}

-- Size: Bid Px Mantissa
okx_okx_marketdata_sbe_v1_0.bid_px_mantissa.size = 8

-- Display: Bid Px Mantissa
okx_okx_marketdata_sbe_v1_0.bid_px_mantissa.display = function(value)
  return "Bid Px Mantissa: "..value
end

-- Dissect: Bid Px Mantissa
okx_okx_marketdata_sbe_v1_0.bid_px_mantissa.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_marketdata_sbe_v1_0.bid_px_mantissa.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = okx_okx_marketdata_sbe_v1_0.bid_px_mantissa.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_marketdata_sbe_v1_0.fields.bid_px_mantissa, range, value, display)

  return offset + length, value
end

-- Bid Sz Mantissa
okx_okx_marketdata_sbe_v1_0.bid_sz_mantissa = {}

-- Size: Bid Sz Mantissa
okx_okx_marketdata_sbe_v1_0.bid_sz_mantissa.size = 8

-- Display: Bid Sz Mantissa
okx_okx_marketdata_sbe_v1_0.bid_sz_mantissa.display = function(value)
  return "Bid Sz Mantissa: "..value
end

-- Dissect: Bid Sz Mantissa
okx_okx_marketdata_sbe_v1_0.bid_sz_mantissa.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_marketdata_sbe_v1_0.bid_sz_mantissa.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = okx_okx_marketdata_sbe_v1_0.bid_sz_mantissa.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_marketdata_sbe_v1_0.fields.bid_sz_mantissa, range, value, display)

  return offset + length, value
end

-- Block Length
okx_okx_marketdata_sbe_v1_0.block_length = {}

-- Size: Block Length
okx_okx_marketdata_sbe_v1_0.block_length.size = 2

-- Display: Block Length
okx_okx_marketdata_sbe_v1_0.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
okx_okx_marketdata_sbe_v1_0.block_length.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_marketdata_sbe_v1_0.block_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = okx_okx_marketdata_sbe_v1_0.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_marketdata_sbe_v1_0.fields.block_length, range, value, display)

  return offset + length, value
end

-- Count
okx_okx_marketdata_sbe_v1_0.count = {}

-- Size: Count
okx_okx_marketdata_sbe_v1_0.count.size = 2

-- Display: Count
okx_okx_marketdata_sbe_v1_0.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
okx_okx_marketdata_sbe_v1_0.count.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_marketdata_sbe_v1_0.count.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = okx_okx_marketdata_sbe_v1_0.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_marketdata_sbe_v1_0.fields.count, range, value, display)

  return offset + length, value
end

-- Inst Id Code
okx_okx_marketdata_sbe_v1_0.inst_id_code = {}

-- Size: Inst Id Code
okx_okx_marketdata_sbe_v1_0.inst_id_code.size = 8

-- Display: Inst Id Code
okx_okx_marketdata_sbe_v1_0.inst_id_code.display = function(value)
  return "Inst Id Code: "..value
end

-- Dissect: Inst Id Code
okx_okx_marketdata_sbe_v1_0.inst_id_code.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_marketdata_sbe_v1_0.inst_id_code.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = okx_okx_marketdata_sbe_v1_0.inst_id_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_marketdata_sbe_v1_0.fields.inst_id_code, range, value, display)

  return offset + length, value
end

-- Num In Group
okx_okx_marketdata_sbe_v1_0.num_in_group = {}

-- Size: Num In Group
okx_okx_marketdata_sbe_v1_0.num_in_group.size = 2

-- Display: Num In Group
okx_okx_marketdata_sbe_v1_0.num_in_group.display = function(value)
  return "Num In Group: "..value
end

-- Dissect: Num In Group
okx_okx_marketdata_sbe_v1_0.num_in_group.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_marketdata_sbe_v1_0.num_in_group.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = okx_okx_marketdata_sbe_v1_0.num_in_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_marketdata_sbe_v1_0.fields.num_in_group, range, value, display)

  return offset + length, value
end

-- Ord Count
okx_okx_marketdata_sbe_v1_0.ord_count = {}

-- Size: Ord Count
okx_okx_marketdata_sbe_v1_0.ord_count.size = 4

-- Display: Ord Count
okx_okx_marketdata_sbe_v1_0.ord_count.display = function(value)
  return "Ord Count: "..value
end

-- Dissect: Ord Count
okx_okx_marketdata_sbe_v1_0.ord_count.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_marketdata_sbe_v1_0.ord_count.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = okx_okx_marketdata_sbe_v1_0.ord_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_marketdata_sbe_v1_0.fields.ord_count, range, value, display)

  return offset + length, value
end

-- Out Time
okx_okx_marketdata_sbe_v1_0.out_time = {}

-- Size: Out Time
okx_okx_marketdata_sbe_v1_0.out_time.size = 8

-- Display: Out Time
okx_okx_marketdata_sbe_v1_0.out_time.display = function(value)
  return "Out Time: "..value
end

-- Dissect: Out Time
okx_okx_marketdata_sbe_v1_0.out_time.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_marketdata_sbe_v1_0.out_time.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = okx_okx_marketdata_sbe_v1_0.out_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_marketdata_sbe_v1_0.fields.out_time, range, value, display)

  return offset + length, value
end

-- Prev Seq Id
okx_okx_marketdata_sbe_v1_0.prev_seq_id = {}

-- Size: Prev Seq Id
okx_okx_marketdata_sbe_v1_0.prev_seq_id.size = 8

-- Display: Prev Seq Id
okx_okx_marketdata_sbe_v1_0.prev_seq_id.display = function(value)
  return "Prev Seq Id: "..value
end

-- Dissect: Prev Seq Id
okx_okx_marketdata_sbe_v1_0.prev_seq_id.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_marketdata_sbe_v1_0.prev_seq_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = okx_okx_marketdata_sbe_v1_0.prev_seq_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_marketdata_sbe_v1_0.fields.prev_seq_id, range, value, display)

  return offset + length, value
end

-- Px Exponent
okx_okx_marketdata_sbe_v1_0.px_exponent = {}

-- Size: Px Exponent
okx_okx_marketdata_sbe_v1_0.px_exponent.size = 1

-- Display: Px Exponent
okx_okx_marketdata_sbe_v1_0.px_exponent.display = function(value)
  return "Px Exponent: "..value
end

-- Dissect: Px Exponent
okx_okx_marketdata_sbe_v1_0.px_exponent.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_marketdata_sbe_v1_0.px_exponent.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = okx_okx_marketdata_sbe_v1_0.px_exponent.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_marketdata_sbe_v1_0.fields.px_exponent, range, value, display)

  return offset + length, value
end

-- Px Mantissa
okx_okx_marketdata_sbe_v1_0.px_mantissa = {}

-- Size: Px Mantissa
okx_okx_marketdata_sbe_v1_0.px_mantissa.size = 8

-- Display: Px Mantissa
okx_okx_marketdata_sbe_v1_0.px_mantissa.display = function(value)
  return "Px Mantissa: "..value
end

-- Dissect: Px Mantissa
okx_okx_marketdata_sbe_v1_0.px_mantissa.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_marketdata_sbe_v1_0.px_mantissa.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = okx_okx_marketdata_sbe_v1_0.px_mantissa.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_marketdata_sbe_v1_0.fields.px_mantissa, range, value, display)

  return offset + length, value
end

-- Schema Id
okx_okx_marketdata_sbe_v1_0.schema_id = {}

-- Size: Schema Id
okx_okx_marketdata_sbe_v1_0.schema_id.size = 2

-- Display: Schema Id
okx_okx_marketdata_sbe_v1_0.schema_id.display = function(value)
  if value == 1 then
    return "Schema Id: SchemaId"
  end

  return "Schema Id: Unknown("..value..")"
end

-- Dissect: Schema Id
okx_okx_marketdata_sbe_v1_0.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_marketdata_sbe_v1_0.schema_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = okx_okx_marketdata_sbe_v1_0.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_marketdata_sbe_v1_0.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Seq Id
okx_okx_marketdata_sbe_v1_0.seq_id = {}

-- Size: Seq Id
okx_okx_marketdata_sbe_v1_0.seq_id.size = 8

-- Display: Seq Id
okx_okx_marketdata_sbe_v1_0.seq_id.display = function(value)
  return "Seq Id: "..value
end

-- Dissect: Seq Id
okx_okx_marketdata_sbe_v1_0.seq_id.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_marketdata_sbe_v1_0.seq_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = okx_okx_marketdata_sbe_v1_0.seq_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_marketdata_sbe_v1_0.fields.seq_id, range, value, display)

  return offset + length, value
end

-- Side
okx_okx_marketdata_sbe_v1_0.side = {}

-- Size: Side
okx_okx_marketdata_sbe_v1_0.side.size = 1

-- Display: Side
okx_okx_marketdata_sbe_v1_0.side.display = function(value)
  if value == 0 then
    return "Side: Sell (0)"
  end
  if value == 1 then
    return "Side: Buy (1)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
okx_okx_marketdata_sbe_v1_0.side.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_marketdata_sbe_v1_0.side.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = okx_okx_marketdata_sbe_v1_0.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_marketdata_sbe_v1_0.fields.side, range, value, display)

  return offset + length, value
end

-- Source
okx_okx_marketdata_sbe_v1_0.source = {}

-- Size: Source
okx_okx_marketdata_sbe_v1_0.source.size = 1

-- Display: Source
okx_okx_marketdata_sbe_v1_0.source.display = function(value)
  if value == 0 then
    return "Source: Normal (0)"
  end
  if value == 1 then
    return "Source: Elp (1)"
  end

  return "Source: Unknown("..value..")"
end

-- Dissect: Source
okx_okx_marketdata_sbe_v1_0.source.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_marketdata_sbe_v1_0.source.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = okx_okx_marketdata_sbe_v1_0.source.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_marketdata_sbe_v1_0.fields.source, range, value, display)

  return offset + length, value
end

-- Sz Exponent
okx_okx_marketdata_sbe_v1_0.sz_exponent = {}

-- Size: Sz Exponent
okx_okx_marketdata_sbe_v1_0.sz_exponent.size = 1

-- Display: Sz Exponent
okx_okx_marketdata_sbe_v1_0.sz_exponent.display = function(value)
  return "Sz Exponent: "..value
end

-- Dissect: Sz Exponent
okx_okx_marketdata_sbe_v1_0.sz_exponent.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_marketdata_sbe_v1_0.sz_exponent.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = okx_okx_marketdata_sbe_v1_0.sz_exponent.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_marketdata_sbe_v1_0.fields.sz_exponent, range, value, display)

  return offset + length, value
end

-- Sz Mantissa
okx_okx_marketdata_sbe_v1_0.sz_mantissa = {}

-- Size: Sz Mantissa
okx_okx_marketdata_sbe_v1_0.sz_mantissa.size = 8

-- Display: Sz Mantissa
okx_okx_marketdata_sbe_v1_0.sz_mantissa.display = function(value)
  return "Sz Mantissa: "..value
end

-- Dissect: Sz Mantissa
okx_okx_marketdata_sbe_v1_0.sz_mantissa.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_marketdata_sbe_v1_0.sz_mantissa.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = okx_okx_marketdata_sbe_v1_0.sz_mantissa.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_marketdata_sbe_v1_0.fields.sz_mantissa, range, value, display)

  return offset + length, value
end

-- Template Id
okx_okx_marketdata_sbe_v1_0.template_id = {}

-- Size: Template Id
okx_okx_marketdata_sbe_v1_0.template_id.size = 2

-- Display: Template Id
okx_okx_marketdata_sbe_v1_0.template_id.display = function(value)
  if value == 1000 then
    return "Template Id: Bbo Tbt Channel Event Message (1000)"
  end
  if value == 1001 then
    return "Template Id: Books L 2 Tbt Channel Event Message (1001)"
  end
  if value == 1002 then
    return "Template Id: Books L 2 Tbt Exponent Update Event Message (1002)"
  end
  if value == 1003 then
    return "Template Id: Books L 2 Tbt Elp Channel Event Message (1003)"
  end
  if value == 1004 then
    return "Template Id: Books L 2 Tbt Elp Exponent Update Event Message (1004)"
  end
  if value == 1005 then
    return "Template Id: Trades Channel Event Message (1005)"
  end
  if value == 1006 then
    return "Template Id: Snapshot Depth Response Event Message (1006)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
okx_okx_marketdata_sbe_v1_0.template_id.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_marketdata_sbe_v1_0.template_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = okx_okx_marketdata_sbe_v1_0.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_marketdata_sbe_v1_0.fields.template_id, range, value, display)

  return offset + length, value
end

-- Trade Id
okx_okx_marketdata_sbe_v1_0.trade_id = {}

-- Size: Trade Id
okx_okx_marketdata_sbe_v1_0.trade_id.size = 8

-- Display: Trade Id
okx_okx_marketdata_sbe_v1_0.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
okx_okx_marketdata_sbe_v1_0.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_marketdata_sbe_v1_0.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = okx_okx_marketdata_sbe_v1_0.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_marketdata_sbe_v1_0.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Ts Us
okx_okx_marketdata_sbe_v1_0.ts_us = {}

-- Size: Ts Us
okx_okx_marketdata_sbe_v1_0.ts_us.size = 8

-- Display: Ts Us
okx_okx_marketdata_sbe_v1_0.ts_us.display = function(value)
  return "Ts Us: "..value
end

-- Dissect: Ts Us
okx_okx_marketdata_sbe_v1_0.ts_us.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_marketdata_sbe_v1_0.ts_us.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = okx_okx_marketdata_sbe_v1_0.ts_us.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_marketdata_sbe_v1_0.fields.ts_us, range, value, display)

  return offset + length, value
end

-- Version
okx_okx_marketdata_sbe_v1_0.version = {}

-- Size: Version
okx_okx_marketdata_sbe_v1_0.version.size = 2

-- Display: Version
okx_okx_marketdata_sbe_v1_0.version.display = function(value)
  if value == 0 then
    return "Version: Version 1.0.0"
  end

  return "Version: Unknown("..value..")"
end

-- Dissect: Version
okx_okx_marketdata_sbe_v1_0.version.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_marketdata_sbe_v1_0.version.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = okx_okx_marketdata_sbe_v1_0.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_marketdata_sbe_v1_0.fields.version, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Okx Okx MarketData Sbe 1.0
-----------------------------------------------------------------------

-- Snapshot Depth Response Event Message bids Group
okx_okx_marketdata_sbe_v1_0.snapshot_depth_response_event_message_bids_group = {}

-- Size: Snapshot Depth Response Event Message bids Group
okx_okx_marketdata_sbe_v1_0.snapshot_depth_response_event_message_bids_group.size =
  okx_okx_marketdata_sbe_v1_0.px_mantissa.size + 
  okx_okx_marketdata_sbe_v1_0.sz_mantissa.size + 
  okx_okx_marketdata_sbe_v1_0.ord_count.size

-- Display: Snapshot Depth Response Event Message bids Group
okx_okx_marketdata_sbe_v1_0.snapshot_depth_response_event_message_bids_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Depth Response Event Message bids Group
okx_okx_marketdata_sbe_v1_0.snapshot_depth_response_event_message_bids_group.fields = function(buffer, offset, packet, parent, snapshot_depth_response_event_message_bids_group_index)
  local index = offset

  -- Implicit Snapshot Depth Response Event Message bids Group Index
  if snapshot_depth_response_event_message_bids_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_okx_okx_marketdata_sbe_v1_0.fields.snapshot_depth_response_event_message_bids_group_index, snapshot_depth_response_event_message_bids_group_index)
    iteration:set_generated()
  end

  -- Px Mantissa: int64
  index, px_mantissa = okx_okx_marketdata_sbe_v1_0.px_mantissa.dissect(buffer, index, packet, parent)

  -- Sz Mantissa: int64
  index, sz_mantissa = okx_okx_marketdata_sbe_v1_0.sz_mantissa.dissect(buffer, index, packet, parent)

  -- Ord Count: int32
  index, ord_count = okx_okx_marketdata_sbe_v1_0.ord_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Depth Response Event Message bids Group
okx_okx_marketdata_sbe_v1_0.snapshot_depth_response_event_message_bids_group.dissect = function(buffer, offset, packet, parent, snapshot_depth_response_event_message_bids_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_okx_okx_marketdata_sbe_v1_0.fields.snapshot_depth_response_event_message_bids_group, buffer(offset, 0))
    local index = okx_okx_marketdata_sbe_v1_0.snapshot_depth_response_event_message_bids_group.fields(buffer, offset, packet, parent, snapshot_depth_response_event_message_bids_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = okx_okx_marketdata_sbe_v1_0.snapshot_depth_response_event_message_bids_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return okx_okx_marketdata_sbe_v1_0.snapshot_depth_response_event_message_bids_group.fields(buffer, offset, packet, parent, snapshot_depth_response_event_message_bids_group_index)
  end
end

-- Group Size 16 Encoding
okx_okx_marketdata_sbe_v1_0.group_size_16_encoding = {}

-- Size: Group Size 16 Encoding
okx_okx_marketdata_sbe_v1_0.group_size_16_encoding.size =
  okx_okx_marketdata_sbe_v1_0.block_length.size + 
  okx_okx_marketdata_sbe_v1_0.num_in_group.size

-- Display: Group Size 16 Encoding
okx_okx_marketdata_sbe_v1_0.group_size_16_encoding.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group Size 16 Encoding
okx_okx_marketdata_sbe_v1_0.group_size_16_encoding.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: uint16
  index, block_length = okx_okx_marketdata_sbe_v1_0.block_length.dissect(buffer, index, packet, parent)

  -- Num In Group: uint16
  index, num_in_group = okx_okx_marketdata_sbe_v1_0.num_in_group.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Size 16 Encoding
okx_okx_marketdata_sbe_v1_0.group_size_16_encoding.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_okx_okx_marketdata_sbe_v1_0.fields.group_size_16_encoding, buffer(offset, 0))
    local index = okx_okx_marketdata_sbe_v1_0.group_size_16_encoding.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = okx_okx_marketdata_sbe_v1_0.group_size_16_encoding.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return okx_okx_marketdata_sbe_v1_0.group_size_16_encoding.fields(buffer, offset, packet, parent)
  end
end

-- Snapshot Depth Response Event Message bids Groups
okx_okx_marketdata_sbe_v1_0.snapshot_depth_response_event_message_bids_groups = {}

-- Calculate size of: Snapshot Depth Response Event Message bids Groups
okx_okx_marketdata_sbe_v1_0.snapshot_depth_response_event_message_bids_groups.size = function(buffer, offset)
  local index = 0

  index = index + okx_okx_marketdata_sbe_v1_0.group_size_16_encoding.size

  -- Calculate field size from count
  local snapshot_depth_response_event_message_bids_group_count = buffer(offset + index - 2, 2):le_uint()
  index = index + snapshot_depth_response_event_message_bids_group_count * 20

  return index
end

-- Display: Snapshot Depth Response Event Message bids Groups
okx_okx_marketdata_sbe_v1_0.snapshot_depth_response_event_message_bids_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Depth Response Event Message bids Groups
okx_okx_marketdata_sbe_v1_0.snapshot_depth_response_event_message_bids_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size 16 Encoding: Struct of 2 fields
  index, group_size_16_encoding = okx_okx_marketdata_sbe_v1_0.group_size_16_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 2, 2):le_uint()

  -- Repeating: Snapshot Depth Response Event Message bids Group
  for snapshot_depth_response_event_message_bids_group_index = 1, num_in_group do
    index, snapshot_depth_response_event_message_bids_group = okx_okx_marketdata_sbe_v1_0.snapshot_depth_response_event_message_bids_group.dissect(buffer, index, packet, parent, snapshot_depth_response_event_message_bids_group_index)
  end

  return index
end

-- Dissect: Snapshot Depth Response Event Message bids Groups
okx_okx_marketdata_sbe_v1_0.snapshot_depth_response_event_message_bids_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_okx_okx_marketdata_sbe_v1_0.fields.snapshot_depth_response_event_message_bids_groups, buffer(offset, 0))
    local index = okx_okx_marketdata_sbe_v1_0.snapshot_depth_response_event_message_bids_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = okx_okx_marketdata_sbe_v1_0.snapshot_depth_response_event_message_bids_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return okx_okx_marketdata_sbe_v1_0.snapshot_depth_response_event_message_bids_groups.fields(buffer, offset, packet, parent)
  end
end

-- Snapshot Depth Response Event Message asks Group
okx_okx_marketdata_sbe_v1_0.snapshot_depth_response_event_message_asks_group = {}

-- Size: Snapshot Depth Response Event Message asks Group
okx_okx_marketdata_sbe_v1_0.snapshot_depth_response_event_message_asks_group.size =
  okx_okx_marketdata_sbe_v1_0.px_mantissa.size + 
  okx_okx_marketdata_sbe_v1_0.sz_mantissa.size + 
  okx_okx_marketdata_sbe_v1_0.ord_count.size

-- Display: Snapshot Depth Response Event Message asks Group
okx_okx_marketdata_sbe_v1_0.snapshot_depth_response_event_message_asks_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Depth Response Event Message asks Group
okx_okx_marketdata_sbe_v1_0.snapshot_depth_response_event_message_asks_group.fields = function(buffer, offset, packet, parent, snapshot_depth_response_event_message_asks_group_index)
  local index = offset

  -- Implicit Snapshot Depth Response Event Message asks Group Index
  if snapshot_depth_response_event_message_asks_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_okx_okx_marketdata_sbe_v1_0.fields.snapshot_depth_response_event_message_asks_group_index, snapshot_depth_response_event_message_asks_group_index)
    iteration:set_generated()
  end

  -- Px Mantissa: int64
  index, px_mantissa = okx_okx_marketdata_sbe_v1_0.px_mantissa.dissect(buffer, index, packet, parent)

  -- Sz Mantissa: int64
  index, sz_mantissa = okx_okx_marketdata_sbe_v1_0.sz_mantissa.dissect(buffer, index, packet, parent)

  -- Ord Count: int32
  index, ord_count = okx_okx_marketdata_sbe_v1_0.ord_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Depth Response Event Message asks Group
okx_okx_marketdata_sbe_v1_0.snapshot_depth_response_event_message_asks_group.dissect = function(buffer, offset, packet, parent, snapshot_depth_response_event_message_asks_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_okx_okx_marketdata_sbe_v1_0.fields.snapshot_depth_response_event_message_asks_group, buffer(offset, 0))
    local index = okx_okx_marketdata_sbe_v1_0.snapshot_depth_response_event_message_asks_group.fields(buffer, offset, packet, parent, snapshot_depth_response_event_message_asks_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = okx_okx_marketdata_sbe_v1_0.snapshot_depth_response_event_message_asks_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return okx_okx_marketdata_sbe_v1_0.snapshot_depth_response_event_message_asks_group.fields(buffer, offset, packet, parent, snapshot_depth_response_event_message_asks_group_index)
  end
end

-- Snapshot Depth Response Event Message asks Groups
okx_okx_marketdata_sbe_v1_0.snapshot_depth_response_event_message_asks_groups = {}

-- Calculate size of: Snapshot Depth Response Event Message asks Groups
okx_okx_marketdata_sbe_v1_0.snapshot_depth_response_event_message_asks_groups.size = function(buffer, offset)
  local index = 0

  index = index + okx_okx_marketdata_sbe_v1_0.group_size_16_encoding.size

  -- Calculate field size from count
  local snapshot_depth_response_event_message_asks_group_count = buffer(offset + index - 2, 2):le_uint()
  index = index + snapshot_depth_response_event_message_asks_group_count * 20

  return index
end

-- Display: Snapshot Depth Response Event Message asks Groups
okx_okx_marketdata_sbe_v1_0.snapshot_depth_response_event_message_asks_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Depth Response Event Message asks Groups
okx_okx_marketdata_sbe_v1_0.snapshot_depth_response_event_message_asks_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size 16 Encoding: Struct of 2 fields
  index, group_size_16_encoding = okx_okx_marketdata_sbe_v1_0.group_size_16_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 2, 2):le_uint()

  -- Repeating: Snapshot Depth Response Event Message asks Group
  for snapshot_depth_response_event_message_asks_group_index = 1, num_in_group do
    index, snapshot_depth_response_event_message_asks_group = okx_okx_marketdata_sbe_v1_0.snapshot_depth_response_event_message_asks_group.dissect(buffer, index, packet, parent, snapshot_depth_response_event_message_asks_group_index)
  end

  return index
end

-- Dissect: Snapshot Depth Response Event Message asks Groups
okx_okx_marketdata_sbe_v1_0.snapshot_depth_response_event_message_asks_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_okx_okx_marketdata_sbe_v1_0.fields.snapshot_depth_response_event_message_asks_groups, buffer(offset, 0))
    local index = okx_okx_marketdata_sbe_v1_0.snapshot_depth_response_event_message_asks_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = okx_okx_marketdata_sbe_v1_0.snapshot_depth_response_event_message_asks_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return okx_okx_marketdata_sbe_v1_0.snapshot_depth_response_event_message_asks_groups.fields(buffer, offset, packet, parent)
  end
end

-- Snapshot Depth Response Event Message
okx_okx_marketdata_sbe_v1_0.snapshot_depth_response_event_message = {}

-- Calculate size of: Snapshot Depth Response Event Message
okx_okx_marketdata_sbe_v1_0.snapshot_depth_response_event_message.size = function(buffer, offset)
  local index = 0

  index = index + okx_okx_marketdata_sbe_v1_0.inst_id_code.size

  index = index + okx_okx_marketdata_sbe_v1_0.ts_us.size

  index = index + okx_okx_marketdata_sbe_v1_0.seq_id.size

  index = index + okx_okx_marketdata_sbe_v1_0.px_exponent.size

  index = index + okx_okx_marketdata_sbe_v1_0.sz_exponent.size

  index = index + okx_okx_marketdata_sbe_v1_0.snapshot_depth_response_event_message_asks_groups.size(buffer, offset + index)

  index = index + okx_okx_marketdata_sbe_v1_0.snapshot_depth_response_event_message_bids_groups.size(buffer, offset + index)

  return index
end

-- Display: Snapshot Depth Response Event Message
okx_okx_marketdata_sbe_v1_0.snapshot_depth_response_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Depth Response Event Message
okx_okx_marketdata_sbe_v1_0.snapshot_depth_response_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inst Id Code: int64
  index, inst_id_code = okx_okx_marketdata_sbe_v1_0.inst_id_code.dissect(buffer, index, packet, parent)

  -- Ts Us: int64
  index, ts_us = okx_okx_marketdata_sbe_v1_0.ts_us.dissect(buffer, index, packet, parent)

  -- Seq Id: int64
  index, seq_id = okx_okx_marketdata_sbe_v1_0.seq_id.dissect(buffer, index, packet, parent)

  -- Px Exponent: int8
  index, px_exponent = okx_okx_marketdata_sbe_v1_0.px_exponent.dissect(buffer, index, packet, parent)

  -- Sz Exponent: int8
  index, sz_exponent = okx_okx_marketdata_sbe_v1_0.sz_exponent.dissect(buffer, index, packet, parent)

  -- Snapshot Depth Response Event Message asks Groups: Struct of 2 fields
  index, snapshot_depth_response_event_message_asks_groups = okx_okx_marketdata_sbe_v1_0.snapshot_depth_response_event_message_asks_groups.dissect(buffer, index, packet, parent)

  -- Snapshot Depth Response Event Message bids Groups: Struct of 2 fields
  index, snapshot_depth_response_event_message_bids_groups = okx_okx_marketdata_sbe_v1_0.snapshot_depth_response_event_message_bids_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Depth Response Event Message
okx_okx_marketdata_sbe_v1_0.snapshot_depth_response_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_okx_okx_marketdata_sbe_v1_0.fields.snapshot_depth_response_event_message, buffer(offset, 0))
    local index = okx_okx_marketdata_sbe_v1_0.snapshot_depth_response_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = okx_okx_marketdata_sbe_v1_0.snapshot_depth_response_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return okx_okx_marketdata_sbe_v1_0.snapshot_depth_response_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Trades Channel Event Message
okx_okx_marketdata_sbe_v1_0.trades_channel_event_message = {}

-- Size: Trades Channel Event Message
okx_okx_marketdata_sbe_v1_0.trades_channel_event_message.size =
  okx_okx_marketdata_sbe_v1_0.inst_id_code.size + 
  okx_okx_marketdata_sbe_v1_0.ts_us.size + 
  okx_okx_marketdata_sbe_v1_0.out_time.size + 
  okx_okx_marketdata_sbe_v1_0.seq_id.size + 
  okx_okx_marketdata_sbe_v1_0.px_mantissa.size + 
  okx_okx_marketdata_sbe_v1_0.sz_mantissa.size + 
  okx_okx_marketdata_sbe_v1_0.trade_id.size + 
  okx_okx_marketdata_sbe_v1_0.count.size + 
  okx_okx_marketdata_sbe_v1_0.side.size + 
  okx_okx_marketdata_sbe_v1_0.px_exponent.size + 
  okx_okx_marketdata_sbe_v1_0.sz_exponent.size + 
  okx_okx_marketdata_sbe_v1_0.source.size

-- Display: Trades Channel Event Message
okx_okx_marketdata_sbe_v1_0.trades_channel_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trades Channel Event Message
okx_okx_marketdata_sbe_v1_0.trades_channel_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inst Id Code: int64
  index, inst_id_code = okx_okx_marketdata_sbe_v1_0.inst_id_code.dissect(buffer, index, packet, parent)

  -- Ts Us: int64
  index, ts_us = okx_okx_marketdata_sbe_v1_0.ts_us.dissect(buffer, index, packet, parent)

  -- Out Time: int64
  index, out_time = okx_okx_marketdata_sbe_v1_0.out_time.dissect(buffer, index, packet, parent)

  -- Seq Id: int64
  index, seq_id = okx_okx_marketdata_sbe_v1_0.seq_id.dissect(buffer, index, packet, parent)

  -- Px Mantissa: int64
  index, px_mantissa = okx_okx_marketdata_sbe_v1_0.px_mantissa.dissect(buffer, index, packet, parent)

  -- Sz Mantissa: int64
  index, sz_mantissa = okx_okx_marketdata_sbe_v1_0.sz_mantissa.dissect(buffer, index, packet, parent)

  -- Trade Id: int64
  index, trade_id = okx_okx_marketdata_sbe_v1_0.trade_id.dissect(buffer, index, packet, parent)

  -- Count: int16
  index, count = okx_okx_marketdata_sbe_v1_0.count.dissect(buffer, index, packet, parent)

  -- Side: sideEnum
  index, side = okx_okx_marketdata_sbe_v1_0.side.dissect(buffer, index, packet, parent)

  -- Px Exponent: int8
  index, px_exponent = okx_okx_marketdata_sbe_v1_0.px_exponent.dissect(buffer, index, packet, parent)

  -- Sz Exponent: int8
  index, sz_exponent = okx_okx_marketdata_sbe_v1_0.sz_exponent.dissect(buffer, index, packet, parent)

  -- Source: sourceEnum
  index, source = okx_okx_marketdata_sbe_v1_0.source.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trades Channel Event Message
okx_okx_marketdata_sbe_v1_0.trades_channel_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_okx_okx_marketdata_sbe_v1_0.fields.trades_channel_event_message, buffer(offset, 0))
    local index = okx_okx_marketdata_sbe_v1_0.trades_channel_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = okx_okx_marketdata_sbe_v1_0.trades_channel_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return okx_okx_marketdata_sbe_v1_0.trades_channel_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Books L 2 Tbt Elp Exponent Update Event Message
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_elp_exponent_update_event_message = {}

-- Size: Books L 2 Tbt Elp Exponent Update Event Message
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_elp_exponent_update_event_message.size =
  okx_okx_marketdata_sbe_v1_0.inst_id_code.size + 
  okx_okx_marketdata_sbe_v1_0.ts_us.size + 
  okx_okx_marketdata_sbe_v1_0.out_time.size + 
  okx_okx_marketdata_sbe_v1_0.seq_id.size + 
  okx_okx_marketdata_sbe_v1_0.prev_seq_id.size + 
  okx_okx_marketdata_sbe_v1_0.px_exponent.size + 
  okx_okx_marketdata_sbe_v1_0.sz_exponent.size

-- Display: Books L 2 Tbt Elp Exponent Update Event Message
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_elp_exponent_update_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Books L 2 Tbt Elp Exponent Update Event Message
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_elp_exponent_update_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inst Id Code: int64
  index, inst_id_code = okx_okx_marketdata_sbe_v1_0.inst_id_code.dissect(buffer, index, packet, parent)

  -- Ts Us: int64
  index, ts_us = okx_okx_marketdata_sbe_v1_0.ts_us.dissect(buffer, index, packet, parent)

  -- Out Time: int64
  index, out_time = okx_okx_marketdata_sbe_v1_0.out_time.dissect(buffer, index, packet, parent)

  -- Seq Id: int64
  index, seq_id = okx_okx_marketdata_sbe_v1_0.seq_id.dissect(buffer, index, packet, parent)

  -- Prev Seq Id: int64
  index, prev_seq_id = okx_okx_marketdata_sbe_v1_0.prev_seq_id.dissect(buffer, index, packet, parent)

  -- Px Exponent: int8
  index, px_exponent = okx_okx_marketdata_sbe_v1_0.px_exponent.dissect(buffer, index, packet, parent)

  -- Sz Exponent: int8
  index, sz_exponent = okx_okx_marketdata_sbe_v1_0.sz_exponent.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Books L 2 Tbt Elp Exponent Update Event Message
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_elp_exponent_update_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_okx_okx_marketdata_sbe_v1_0.fields.books_l_2_tbt_elp_exponent_update_event_message, buffer(offset, 0))
    local index = okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_elp_exponent_update_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_elp_exponent_update_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_elp_exponent_update_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Books L 2 Tbt Elp Channel Event Message bids Group
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_elp_channel_event_message_bids_group = {}

-- Size: Books L 2 Tbt Elp Channel Event Message bids Group
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_elp_channel_event_message_bids_group.size =
  okx_okx_marketdata_sbe_v1_0.px_mantissa.size + 
  okx_okx_marketdata_sbe_v1_0.sz_mantissa.size + 
  okx_okx_marketdata_sbe_v1_0.ord_count.size

-- Display: Books L 2 Tbt Elp Channel Event Message bids Group
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_elp_channel_event_message_bids_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Books L 2 Tbt Elp Channel Event Message bids Group
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_elp_channel_event_message_bids_group.fields = function(buffer, offset, packet, parent, books_l_2_tbt_elp_channel_event_message_bids_group_index)
  local index = offset

  -- Implicit Books L 2 Tbt Elp Channel Event Message bids Group Index
  if books_l_2_tbt_elp_channel_event_message_bids_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_okx_okx_marketdata_sbe_v1_0.fields.books_l_2_tbt_elp_channel_event_message_bids_group_index, books_l_2_tbt_elp_channel_event_message_bids_group_index)
    iteration:set_generated()
  end

  -- Px Mantissa: int64
  index, px_mantissa = okx_okx_marketdata_sbe_v1_0.px_mantissa.dissect(buffer, index, packet, parent)

  -- Sz Mantissa: int64
  index, sz_mantissa = okx_okx_marketdata_sbe_v1_0.sz_mantissa.dissect(buffer, index, packet, parent)

  -- Ord Count: int32
  index, ord_count = okx_okx_marketdata_sbe_v1_0.ord_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Books L 2 Tbt Elp Channel Event Message bids Group
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_elp_channel_event_message_bids_group.dissect = function(buffer, offset, packet, parent, books_l_2_tbt_elp_channel_event_message_bids_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_okx_okx_marketdata_sbe_v1_0.fields.books_l_2_tbt_elp_channel_event_message_bids_group, buffer(offset, 0))
    local index = okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_elp_channel_event_message_bids_group.fields(buffer, offset, packet, parent, books_l_2_tbt_elp_channel_event_message_bids_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_elp_channel_event_message_bids_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_elp_channel_event_message_bids_group.fields(buffer, offset, packet, parent, books_l_2_tbt_elp_channel_event_message_bids_group_index)
  end
end

-- Books L 2 Tbt Elp Channel Event Message bids Groups
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_elp_channel_event_message_bids_groups = {}

-- Calculate size of: Books L 2 Tbt Elp Channel Event Message bids Groups
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_elp_channel_event_message_bids_groups.size = function(buffer, offset)
  local index = 0

  index = index + okx_okx_marketdata_sbe_v1_0.group_size_16_encoding.size

  -- Calculate field size from count
  local books_l_2_tbt_elp_channel_event_message_bids_group_count = buffer(offset + index - 2, 2):le_uint()
  index = index + books_l_2_tbt_elp_channel_event_message_bids_group_count * 20

  return index
end

-- Display: Books L 2 Tbt Elp Channel Event Message bids Groups
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_elp_channel_event_message_bids_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Books L 2 Tbt Elp Channel Event Message bids Groups
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_elp_channel_event_message_bids_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size 16 Encoding: Struct of 2 fields
  index, group_size_16_encoding = okx_okx_marketdata_sbe_v1_0.group_size_16_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 2, 2):le_uint()

  -- Repeating: Books L 2 Tbt Elp Channel Event Message bids Group
  for books_l_2_tbt_elp_channel_event_message_bids_group_index = 1, num_in_group do
    index, books_l_2_tbt_elp_channel_event_message_bids_group = okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_elp_channel_event_message_bids_group.dissect(buffer, index, packet, parent, books_l_2_tbt_elp_channel_event_message_bids_group_index)
  end

  return index
end

-- Dissect: Books L 2 Tbt Elp Channel Event Message bids Groups
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_elp_channel_event_message_bids_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_okx_okx_marketdata_sbe_v1_0.fields.books_l_2_tbt_elp_channel_event_message_bids_groups, buffer(offset, 0))
    local index = okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_elp_channel_event_message_bids_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_elp_channel_event_message_bids_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_elp_channel_event_message_bids_groups.fields(buffer, offset, packet, parent)
  end
end

-- Books L 2 Tbt Elp Channel Event Message asks Group
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_elp_channel_event_message_asks_group = {}

-- Size: Books L 2 Tbt Elp Channel Event Message asks Group
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_elp_channel_event_message_asks_group.size =
  okx_okx_marketdata_sbe_v1_0.px_mantissa.size + 
  okx_okx_marketdata_sbe_v1_0.sz_mantissa.size + 
  okx_okx_marketdata_sbe_v1_0.ord_count.size

-- Display: Books L 2 Tbt Elp Channel Event Message asks Group
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_elp_channel_event_message_asks_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Books L 2 Tbt Elp Channel Event Message asks Group
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_elp_channel_event_message_asks_group.fields = function(buffer, offset, packet, parent, books_l_2_tbt_elp_channel_event_message_asks_group_index)
  local index = offset

  -- Implicit Books L 2 Tbt Elp Channel Event Message asks Group Index
  if books_l_2_tbt_elp_channel_event_message_asks_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_okx_okx_marketdata_sbe_v1_0.fields.books_l_2_tbt_elp_channel_event_message_asks_group_index, books_l_2_tbt_elp_channel_event_message_asks_group_index)
    iteration:set_generated()
  end

  -- Px Mantissa: int64
  index, px_mantissa = okx_okx_marketdata_sbe_v1_0.px_mantissa.dissect(buffer, index, packet, parent)

  -- Sz Mantissa: int64
  index, sz_mantissa = okx_okx_marketdata_sbe_v1_0.sz_mantissa.dissect(buffer, index, packet, parent)

  -- Ord Count: int32
  index, ord_count = okx_okx_marketdata_sbe_v1_0.ord_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Books L 2 Tbt Elp Channel Event Message asks Group
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_elp_channel_event_message_asks_group.dissect = function(buffer, offset, packet, parent, books_l_2_tbt_elp_channel_event_message_asks_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_okx_okx_marketdata_sbe_v1_0.fields.books_l_2_tbt_elp_channel_event_message_asks_group, buffer(offset, 0))
    local index = okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_elp_channel_event_message_asks_group.fields(buffer, offset, packet, parent, books_l_2_tbt_elp_channel_event_message_asks_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_elp_channel_event_message_asks_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_elp_channel_event_message_asks_group.fields(buffer, offset, packet, parent, books_l_2_tbt_elp_channel_event_message_asks_group_index)
  end
end

-- Books L 2 Tbt Elp Channel Event Message asks Groups
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_elp_channel_event_message_asks_groups = {}

-- Calculate size of: Books L 2 Tbt Elp Channel Event Message asks Groups
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_elp_channel_event_message_asks_groups.size = function(buffer, offset)
  local index = 0

  index = index + okx_okx_marketdata_sbe_v1_0.group_size_16_encoding.size

  -- Calculate field size from count
  local books_l_2_tbt_elp_channel_event_message_asks_group_count = buffer(offset + index - 2, 2):le_uint()
  index = index + books_l_2_tbt_elp_channel_event_message_asks_group_count * 20

  return index
end

-- Display: Books L 2 Tbt Elp Channel Event Message asks Groups
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_elp_channel_event_message_asks_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Books L 2 Tbt Elp Channel Event Message asks Groups
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_elp_channel_event_message_asks_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size 16 Encoding: Struct of 2 fields
  index, group_size_16_encoding = okx_okx_marketdata_sbe_v1_0.group_size_16_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 2, 2):le_uint()

  -- Repeating: Books L 2 Tbt Elp Channel Event Message asks Group
  for books_l_2_tbt_elp_channel_event_message_asks_group_index = 1, num_in_group do
    index, books_l_2_tbt_elp_channel_event_message_asks_group = okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_elp_channel_event_message_asks_group.dissect(buffer, index, packet, parent, books_l_2_tbt_elp_channel_event_message_asks_group_index)
  end

  return index
end

-- Dissect: Books L 2 Tbt Elp Channel Event Message asks Groups
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_elp_channel_event_message_asks_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_okx_okx_marketdata_sbe_v1_0.fields.books_l_2_tbt_elp_channel_event_message_asks_groups, buffer(offset, 0))
    local index = okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_elp_channel_event_message_asks_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_elp_channel_event_message_asks_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_elp_channel_event_message_asks_groups.fields(buffer, offset, packet, parent)
  end
end

-- Books L 2 Tbt Elp Channel Event Message
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_elp_channel_event_message = {}

-- Calculate size of: Books L 2 Tbt Elp Channel Event Message
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_elp_channel_event_message.size = function(buffer, offset)
  local index = 0

  index = index + okx_okx_marketdata_sbe_v1_0.inst_id_code.size

  index = index + okx_okx_marketdata_sbe_v1_0.ts_us.size

  index = index + okx_okx_marketdata_sbe_v1_0.out_time.size

  index = index + okx_okx_marketdata_sbe_v1_0.seq_id.size

  index = index + okx_okx_marketdata_sbe_v1_0.prev_seq_id.size

  index = index + okx_okx_marketdata_sbe_v1_0.px_exponent.size

  index = index + okx_okx_marketdata_sbe_v1_0.sz_exponent.size

  index = index + okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_elp_channel_event_message_asks_groups.size(buffer, offset + index)

  index = index + okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_elp_channel_event_message_bids_groups.size(buffer, offset + index)

  return index
end

-- Display: Books L 2 Tbt Elp Channel Event Message
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_elp_channel_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Books L 2 Tbt Elp Channel Event Message
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_elp_channel_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inst Id Code: int64
  index, inst_id_code = okx_okx_marketdata_sbe_v1_0.inst_id_code.dissect(buffer, index, packet, parent)

  -- Ts Us: int64
  index, ts_us = okx_okx_marketdata_sbe_v1_0.ts_us.dissect(buffer, index, packet, parent)

  -- Out Time: int64
  index, out_time = okx_okx_marketdata_sbe_v1_0.out_time.dissect(buffer, index, packet, parent)

  -- Seq Id: int64
  index, seq_id = okx_okx_marketdata_sbe_v1_0.seq_id.dissect(buffer, index, packet, parent)

  -- Prev Seq Id: int64
  index, prev_seq_id = okx_okx_marketdata_sbe_v1_0.prev_seq_id.dissect(buffer, index, packet, parent)

  -- Px Exponent: int8
  index, px_exponent = okx_okx_marketdata_sbe_v1_0.px_exponent.dissect(buffer, index, packet, parent)

  -- Sz Exponent: int8
  index, sz_exponent = okx_okx_marketdata_sbe_v1_0.sz_exponent.dissect(buffer, index, packet, parent)

  -- Books L 2 Tbt Elp Channel Event Message asks Groups: Struct of 2 fields
  index, books_l_2_tbt_elp_channel_event_message_asks_groups = okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_elp_channel_event_message_asks_groups.dissect(buffer, index, packet, parent)

  -- Books L 2 Tbt Elp Channel Event Message bids Groups: Struct of 2 fields
  index, books_l_2_tbt_elp_channel_event_message_bids_groups = okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_elp_channel_event_message_bids_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Books L 2 Tbt Elp Channel Event Message
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_elp_channel_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_okx_okx_marketdata_sbe_v1_0.fields.books_l_2_tbt_elp_channel_event_message, buffer(offset, 0))
    local index = okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_elp_channel_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_elp_channel_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_elp_channel_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Books L 2 Tbt Exponent Update Event Message
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_exponent_update_event_message = {}

-- Size: Books L 2 Tbt Exponent Update Event Message
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_exponent_update_event_message.size =
  okx_okx_marketdata_sbe_v1_0.inst_id_code.size + 
  okx_okx_marketdata_sbe_v1_0.ts_us.size + 
  okx_okx_marketdata_sbe_v1_0.out_time.size + 
  okx_okx_marketdata_sbe_v1_0.seq_id.size + 
  okx_okx_marketdata_sbe_v1_0.prev_seq_id.size + 
  okx_okx_marketdata_sbe_v1_0.px_exponent.size + 
  okx_okx_marketdata_sbe_v1_0.sz_exponent.size

-- Display: Books L 2 Tbt Exponent Update Event Message
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_exponent_update_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Books L 2 Tbt Exponent Update Event Message
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_exponent_update_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inst Id Code: int64
  index, inst_id_code = okx_okx_marketdata_sbe_v1_0.inst_id_code.dissect(buffer, index, packet, parent)

  -- Ts Us: int64
  index, ts_us = okx_okx_marketdata_sbe_v1_0.ts_us.dissect(buffer, index, packet, parent)

  -- Out Time: int64
  index, out_time = okx_okx_marketdata_sbe_v1_0.out_time.dissect(buffer, index, packet, parent)

  -- Seq Id: int64
  index, seq_id = okx_okx_marketdata_sbe_v1_0.seq_id.dissect(buffer, index, packet, parent)

  -- Prev Seq Id: int64
  index, prev_seq_id = okx_okx_marketdata_sbe_v1_0.prev_seq_id.dissect(buffer, index, packet, parent)

  -- Px Exponent: int8
  index, px_exponent = okx_okx_marketdata_sbe_v1_0.px_exponent.dissect(buffer, index, packet, parent)

  -- Sz Exponent: int8
  index, sz_exponent = okx_okx_marketdata_sbe_v1_0.sz_exponent.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Books L 2 Tbt Exponent Update Event Message
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_exponent_update_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_okx_okx_marketdata_sbe_v1_0.fields.books_l_2_tbt_exponent_update_event_message, buffer(offset, 0))
    local index = okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_exponent_update_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_exponent_update_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_exponent_update_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Books L 2 Tbt Channel Event Message bids Group
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_channel_event_message_bids_group = {}

-- Size: Books L 2 Tbt Channel Event Message bids Group
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_channel_event_message_bids_group.size =
  okx_okx_marketdata_sbe_v1_0.px_mantissa.size + 
  okx_okx_marketdata_sbe_v1_0.sz_mantissa.size + 
  okx_okx_marketdata_sbe_v1_0.ord_count.size

-- Display: Books L 2 Tbt Channel Event Message bids Group
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_channel_event_message_bids_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Books L 2 Tbt Channel Event Message bids Group
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_channel_event_message_bids_group.fields = function(buffer, offset, packet, parent, books_l_2_tbt_channel_event_message_bids_group_index)
  local index = offset

  -- Implicit Books L 2 Tbt Channel Event Message bids Group Index
  if books_l_2_tbt_channel_event_message_bids_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_okx_okx_marketdata_sbe_v1_0.fields.books_l_2_tbt_channel_event_message_bids_group_index, books_l_2_tbt_channel_event_message_bids_group_index)
    iteration:set_generated()
  end

  -- Px Mantissa: int64
  index, px_mantissa = okx_okx_marketdata_sbe_v1_0.px_mantissa.dissect(buffer, index, packet, parent)

  -- Sz Mantissa: int64
  index, sz_mantissa = okx_okx_marketdata_sbe_v1_0.sz_mantissa.dissect(buffer, index, packet, parent)

  -- Ord Count: int32
  index, ord_count = okx_okx_marketdata_sbe_v1_0.ord_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Books L 2 Tbt Channel Event Message bids Group
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_channel_event_message_bids_group.dissect = function(buffer, offset, packet, parent, books_l_2_tbt_channel_event_message_bids_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_okx_okx_marketdata_sbe_v1_0.fields.books_l_2_tbt_channel_event_message_bids_group, buffer(offset, 0))
    local index = okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_channel_event_message_bids_group.fields(buffer, offset, packet, parent, books_l_2_tbt_channel_event_message_bids_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_channel_event_message_bids_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_channel_event_message_bids_group.fields(buffer, offset, packet, parent, books_l_2_tbt_channel_event_message_bids_group_index)
  end
end

-- Books L 2 Tbt Channel Event Message bids Groups
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_channel_event_message_bids_groups = {}

-- Calculate size of: Books L 2 Tbt Channel Event Message bids Groups
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_channel_event_message_bids_groups.size = function(buffer, offset)
  local index = 0

  index = index + okx_okx_marketdata_sbe_v1_0.group_size_16_encoding.size

  -- Calculate field size from count
  local books_l_2_tbt_channel_event_message_bids_group_count = buffer(offset + index - 2, 2):le_uint()
  index = index + books_l_2_tbt_channel_event_message_bids_group_count * 20

  return index
end

-- Display: Books L 2 Tbt Channel Event Message bids Groups
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_channel_event_message_bids_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Books L 2 Tbt Channel Event Message bids Groups
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_channel_event_message_bids_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size 16 Encoding: Struct of 2 fields
  index, group_size_16_encoding = okx_okx_marketdata_sbe_v1_0.group_size_16_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 2, 2):le_uint()

  -- Repeating: Books L 2 Tbt Channel Event Message bids Group
  for books_l_2_tbt_channel_event_message_bids_group_index = 1, num_in_group do
    index, books_l_2_tbt_channel_event_message_bids_group = okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_channel_event_message_bids_group.dissect(buffer, index, packet, parent, books_l_2_tbt_channel_event_message_bids_group_index)
  end

  return index
end

-- Dissect: Books L 2 Tbt Channel Event Message bids Groups
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_channel_event_message_bids_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_okx_okx_marketdata_sbe_v1_0.fields.books_l_2_tbt_channel_event_message_bids_groups, buffer(offset, 0))
    local index = okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_channel_event_message_bids_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_channel_event_message_bids_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_channel_event_message_bids_groups.fields(buffer, offset, packet, parent)
  end
end

-- Books L 2 Tbt Channel Event Message asks Group
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_channel_event_message_asks_group = {}

-- Size: Books L 2 Tbt Channel Event Message asks Group
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_channel_event_message_asks_group.size =
  okx_okx_marketdata_sbe_v1_0.px_mantissa.size + 
  okx_okx_marketdata_sbe_v1_0.sz_mantissa.size + 
  okx_okx_marketdata_sbe_v1_0.ord_count.size

-- Display: Books L 2 Tbt Channel Event Message asks Group
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_channel_event_message_asks_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Books L 2 Tbt Channel Event Message asks Group
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_channel_event_message_asks_group.fields = function(buffer, offset, packet, parent, books_l_2_tbt_channel_event_message_asks_group_index)
  local index = offset

  -- Implicit Books L 2 Tbt Channel Event Message asks Group Index
  if books_l_2_tbt_channel_event_message_asks_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_okx_okx_marketdata_sbe_v1_0.fields.books_l_2_tbt_channel_event_message_asks_group_index, books_l_2_tbt_channel_event_message_asks_group_index)
    iteration:set_generated()
  end

  -- Px Mantissa: int64
  index, px_mantissa = okx_okx_marketdata_sbe_v1_0.px_mantissa.dissect(buffer, index, packet, parent)

  -- Sz Mantissa: int64
  index, sz_mantissa = okx_okx_marketdata_sbe_v1_0.sz_mantissa.dissect(buffer, index, packet, parent)

  -- Ord Count: int32
  index, ord_count = okx_okx_marketdata_sbe_v1_0.ord_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Books L 2 Tbt Channel Event Message asks Group
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_channel_event_message_asks_group.dissect = function(buffer, offset, packet, parent, books_l_2_tbt_channel_event_message_asks_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_okx_okx_marketdata_sbe_v1_0.fields.books_l_2_tbt_channel_event_message_asks_group, buffer(offset, 0))
    local index = okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_channel_event_message_asks_group.fields(buffer, offset, packet, parent, books_l_2_tbt_channel_event_message_asks_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_channel_event_message_asks_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_channel_event_message_asks_group.fields(buffer, offset, packet, parent, books_l_2_tbt_channel_event_message_asks_group_index)
  end
end

-- Books L 2 Tbt Channel Event Message asks Groups
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_channel_event_message_asks_groups = {}

-- Calculate size of: Books L 2 Tbt Channel Event Message asks Groups
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_channel_event_message_asks_groups.size = function(buffer, offset)
  local index = 0

  index = index + okx_okx_marketdata_sbe_v1_0.group_size_16_encoding.size

  -- Calculate field size from count
  local books_l_2_tbt_channel_event_message_asks_group_count = buffer(offset + index - 2, 2):le_uint()
  index = index + books_l_2_tbt_channel_event_message_asks_group_count * 20

  return index
end

-- Display: Books L 2 Tbt Channel Event Message asks Groups
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_channel_event_message_asks_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Books L 2 Tbt Channel Event Message asks Groups
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_channel_event_message_asks_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size 16 Encoding: Struct of 2 fields
  index, group_size_16_encoding = okx_okx_marketdata_sbe_v1_0.group_size_16_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 2, 2):le_uint()

  -- Repeating: Books L 2 Tbt Channel Event Message asks Group
  for books_l_2_tbt_channel_event_message_asks_group_index = 1, num_in_group do
    index, books_l_2_tbt_channel_event_message_asks_group = okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_channel_event_message_asks_group.dissect(buffer, index, packet, parent, books_l_2_tbt_channel_event_message_asks_group_index)
  end

  return index
end

-- Dissect: Books L 2 Tbt Channel Event Message asks Groups
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_channel_event_message_asks_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_okx_okx_marketdata_sbe_v1_0.fields.books_l_2_tbt_channel_event_message_asks_groups, buffer(offset, 0))
    local index = okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_channel_event_message_asks_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_channel_event_message_asks_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_channel_event_message_asks_groups.fields(buffer, offset, packet, parent)
  end
end

-- Books L 2 Tbt Channel Event Message
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_channel_event_message = {}

-- Calculate size of: Books L 2 Tbt Channel Event Message
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_channel_event_message.size = function(buffer, offset)
  local index = 0

  index = index + okx_okx_marketdata_sbe_v1_0.inst_id_code.size

  index = index + okx_okx_marketdata_sbe_v1_0.ts_us.size

  index = index + okx_okx_marketdata_sbe_v1_0.out_time.size

  index = index + okx_okx_marketdata_sbe_v1_0.seq_id.size

  index = index + okx_okx_marketdata_sbe_v1_0.prev_seq_id.size

  index = index + okx_okx_marketdata_sbe_v1_0.px_exponent.size

  index = index + okx_okx_marketdata_sbe_v1_0.sz_exponent.size

  index = index + okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_channel_event_message_asks_groups.size(buffer, offset + index)

  index = index + okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_channel_event_message_bids_groups.size(buffer, offset + index)

  return index
end

-- Display: Books L 2 Tbt Channel Event Message
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_channel_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Books L 2 Tbt Channel Event Message
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_channel_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inst Id Code: int64
  index, inst_id_code = okx_okx_marketdata_sbe_v1_0.inst_id_code.dissect(buffer, index, packet, parent)

  -- Ts Us: int64
  index, ts_us = okx_okx_marketdata_sbe_v1_0.ts_us.dissect(buffer, index, packet, parent)

  -- Out Time: int64
  index, out_time = okx_okx_marketdata_sbe_v1_0.out_time.dissect(buffer, index, packet, parent)

  -- Seq Id: int64
  index, seq_id = okx_okx_marketdata_sbe_v1_0.seq_id.dissect(buffer, index, packet, parent)

  -- Prev Seq Id: int64
  index, prev_seq_id = okx_okx_marketdata_sbe_v1_0.prev_seq_id.dissect(buffer, index, packet, parent)

  -- Px Exponent: int8
  index, px_exponent = okx_okx_marketdata_sbe_v1_0.px_exponent.dissect(buffer, index, packet, parent)

  -- Sz Exponent: int8
  index, sz_exponent = okx_okx_marketdata_sbe_v1_0.sz_exponent.dissect(buffer, index, packet, parent)

  -- Books L 2 Tbt Channel Event Message asks Groups: Struct of 2 fields
  index, books_l_2_tbt_channel_event_message_asks_groups = okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_channel_event_message_asks_groups.dissect(buffer, index, packet, parent)

  -- Books L 2 Tbt Channel Event Message bids Groups: Struct of 2 fields
  index, books_l_2_tbt_channel_event_message_bids_groups = okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_channel_event_message_bids_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Books L 2 Tbt Channel Event Message
okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_channel_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_okx_okx_marketdata_sbe_v1_0.fields.books_l_2_tbt_channel_event_message, buffer(offset, 0))
    local index = okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_channel_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_channel_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_channel_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Bbo Tbt Channel Event Message
okx_okx_marketdata_sbe_v1_0.bbo_tbt_channel_event_message = {}

-- Size: Bbo Tbt Channel Event Message
okx_okx_marketdata_sbe_v1_0.bbo_tbt_channel_event_message.size =
  okx_okx_marketdata_sbe_v1_0.inst_id_code.size + 
  okx_okx_marketdata_sbe_v1_0.ts_us.size + 
  okx_okx_marketdata_sbe_v1_0.out_time.size + 
  okx_okx_marketdata_sbe_v1_0.seq_id.size + 
  okx_okx_marketdata_sbe_v1_0.ask_px_mantissa.size + 
  okx_okx_marketdata_sbe_v1_0.ask_sz_mantissa.size + 
  okx_okx_marketdata_sbe_v1_0.bid_px_mantissa.size + 
  okx_okx_marketdata_sbe_v1_0.bid_sz_mantissa.size + 
  okx_okx_marketdata_sbe_v1_0.ask_ord_count.size + 
  okx_okx_marketdata_sbe_v1_0.bid_ord_count.size + 
  okx_okx_marketdata_sbe_v1_0.px_exponent.size + 
  okx_okx_marketdata_sbe_v1_0.sz_exponent.size

-- Display: Bbo Tbt Channel Event Message
okx_okx_marketdata_sbe_v1_0.bbo_tbt_channel_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bbo Tbt Channel Event Message
okx_okx_marketdata_sbe_v1_0.bbo_tbt_channel_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inst Id Code: int64
  index, inst_id_code = okx_okx_marketdata_sbe_v1_0.inst_id_code.dissect(buffer, index, packet, parent)

  -- Ts Us: int64
  index, ts_us = okx_okx_marketdata_sbe_v1_0.ts_us.dissect(buffer, index, packet, parent)

  -- Out Time: int64
  index, out_time = okx_okx_marketdata_sbe_v1_0.out_time.dissect(buffer, index, packet, parent)

  -- Seq Id: int64
  index, seq_id = okx_okx_marketdata_sbe_v1_0.seq_id.dissect(buffer, index, packet, parent)

  -- Ask Px Mantissa: int64
  index, ask_px_mantissa = okx_okx_marketdata_sbe_v1_0.ask_px_mantissa.dissect(buffer, index, packet, parent)

  -- Ask Sz Mantissa: int64
  index, ask_sz_mantissa = okx_okx_marketdata_sbe_v1_0.ask_sz_mantissa.dissect(buffer, index, packet, parent)

  -- Bid Px Mantissa: int64
  index, bid_px_mantissa = okx_okx_marketdata_sbe_v1_0.bid_px_mantissa.dissect(buffer, index, packet, parent)

  -- Bid Sz Mantissa: int64
  index, bid_sz_mantissa = okx_okx_marketdata_sbe_v1_0.bid_sz_mantissa.dissect(buffer, index, packet, parent)

  -- Ask Ord Count: int32
  index, ask_ord_count = okx_okx_marketdata_sbe_v1_0.ask_ord_count.dissect(buffer, index, packet, parent)

  -- Bid Ord Count: int32
  index, bid_ord_count = okx_okx_marketdata_sbe_v1_0.bid_ord_count.dissect(buffer, index, packet, parent)

  -- Px Exponent: int8
  index, px_exponent = okx_okx_marketdata_sbe_v1_0.px_exponent.dissect(buffer, index, packet, parent)

  -- Sz Exponent: int8
  index, sz_exponent = okx_okx_marketdata_sbe_v1_0.sz_exponent.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bbo Tbt Channel Event Message
okx_okx_marketdata_sbe_v1_0.bbo_tbt_channel_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_okx_okx_marketdata_sbe_v1_0.fields.bbo_tbt_channel_event_message, buffer(offset, 0))
    local index = okx_okx_marketdata_sbe_v1_0.bbo_tbt_channel_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = okx_okx_marketdata_sbe_v1_0.bbo_tbt_channel_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return okx_okx_marketdata_sbe_v1_0.bbo_tbt_channel_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
okx_okx_marketdata_sbe_v1_0.payload = {}

-- Dissect: Payload
okx_okx_marketdata_sbe_v1_0.payload.dissect = function(buffer, offset, packet, parent, template_id)
  -- Dissect Bbo Tbt Channel Event Message
  if template_id == 1000 then
    return okx_okx_marketdata_sbe_v1_0.bbo_tbt_channel_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Books L 2 Tbt Channel Event Message
  if template_id == 1001 then
    return okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_channel_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Books L 2 Tbt Exponent Update Event Message
  if template_id == 1002 then
    return okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_exponent_update_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Books L 2 Tbt Elp Channel Event Message
  if template_id == 1003 then
    return okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_elp_channel_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Books L 2 Tbt Elp Exponent Update Event Message
  if template_id == 1004 then
    return okx_okx_marketdata_sbe_v1_0.books_l_2_tbt_elp_exponent_update_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trades Channel Event Message
  if template_id == 1005 then
    return okx_okx_marketdata_sbe_v1_0.trades_channel_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Depth Response Event Message
  if template_id == 1006 then
    return okx_okx_marketdata_sbe_v1_0.snapshot_depth_response_event_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
okx_okx_marketdata_sbe_v1_0.message_header = {}

-- Size: Message Header
okx_okx_marketdata_sbe_v1_0.message_header.size =
  okx_okx_marketdata_sbe_v1_0.block_length.size + 
  okx_okx_marketdata_sbe_v1_0.template_id.size + 
  okx_okx_marketdata_sbe_v1_0.schema_id.size + 
  okx_okx_marketdata_sbe_v1_0.version.size

-- Display: Message Header
okx_okx_marketdata_sbe_v1_0.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
okx_okx_marketdata_sbe_v1_0.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: uint16
  index, block_length = okx_okx_marketdata_sbe_v1_0.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: uint16
  index, template_id = okx_okx_marketdata_sbe_v1_0.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: uint16
  index, schema_id = okx_okx_marketdata_sbe_v1_0.schema_id.dissect(buffer, index, packet, parent)

  -- Version: uint16
  index, version = okx_okx_marketdata_sbe_v1_0.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
okx_okx_marketdata_sbe_v1_0.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_okx_okx_marketdata_sbe_v1_0.fields.message_header, buffer(offset, 0))
    local index = okx_okx_marketdata_sbe_v1_0.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = okx_okx_marketdata_sbe_v1_0.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return okx_okx_marketdata_sbe_v1_0.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Sbe Message
okx_okx_marketdata_sbe_v1_0.sbe_message = {}

-- Calculate size of: Sbe Message
okx_okx_marketdata_sbe_v1_0.sbe_message.size = function(buffer, offset)
  local index = 0

  index = index + okx_okx_marketdata_sbe_v1_0.message_header.size

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 6, 2):le_uint()
  index = index + okx_okx_marketdata_sbe_v1_0.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Sbe Message
okx_okx_marketdata_sbe_v1_0.sbe_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Message
okx_okx_marketdata_sbe_v1_0.sbe_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 4 fields
  index, message_header = okx_okx_marketdata_sbe_v1_0.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Payload: Runtime Type with 7 branches
  index = okx_okx_marketdata_sbe_v1_0.payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Sbe Message
okx_okx_marketdata_sbe_v1_0.sbe_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_okx_okx_marketdata_sbe_v1_0.fields.sbe_message, buffer(offset, 0))
    local index = okx_okx_marketdata_sbe_v1_0.sbe_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = okx_okx_marketdata_sbe_v1_0.sbe_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return okx_okx_marketdata_sbe_v1_0.sbe_message.fields(buffer, offset, packet, parent)
  end
end

-- Frame
okx_okx_marketdata_sbe_v1_0.frame = {}

-- Verify required size of WebSocket packet
okx_okx_marketdata_sbe_v1_0.frame.requiredsize = function(buffer)
  return buffer:len() >= okx_okx_marketdata_sbe_v1_0.message_header.size
end

-- Dissect Frame
okx_okx_marketdata_sbe_v1_0.frame.dissect = function(buffer, packet, parent)
  local index = 0

  -- Sbe Message: Struct of 2 fields
  index, sbe_message = okx_okx_marketdata_sbe_v1_0.sbe_message.dissect(buffer, index, packet, parent)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_okx_okx_marketdata_sbe_v1_0.init()
end

-- Dissector for Okx Okx MarketData Sbe 1.0
function omi_okx_okx_marketdata_sbe_v1_0.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_okx_okx_marketdata_sbe_v1_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_okx_okx_marketdata_sbe_v1_0, buffer(), omi_okx_okx_marketdata_sbe_v1_0.description, "("..buffer:len().." Bytes)")
  return okx_okx_marketdata_sbe_v1_0.frame.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify Schema Id Field
okx_okx_marketdata_sbe_v1_0.schema_id.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(4, 2):le_uint()

  if value == 1 then
    return true
  end

  return false
end

-- Verify Version Field
okx_okx_marketdata_sbe_v1_0.version.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(6, 2):le_uint()

  if value == 0 then
    return true
  end

  return false
end

-- Dissector Heuristic for Okx Okx MarketData Sbe 1.0 (WebSocket)
local function omi_okx_okx_marketdata_sbe_v1_0_ws_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not okx_okx_marketdata_sbe_v1_0.frame.requiredsize(buffer) then return false end

  -- Verify Schema Id
  if not okx_okx_marketdata_sbe_v1_0.schema_id.verify(buffer) then return false end

  -- Verify Version
  if not okx_okx_marketdata_sbe_v1_0.version.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_okx_okx_marketdata_sbe_v1_0
  omi_okx_okx_marketdata_sbe_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Okx Okx MarketData Sbe 1.0
omi_okx_okx_marketdata_sbe_v1_0:register_heuristic("ws", omi_okx_okx_marketdata_sbe_v1_0_ws_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: OKX
--   Version: 1.0
--   Date: Thursday, November 6, 2025
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
