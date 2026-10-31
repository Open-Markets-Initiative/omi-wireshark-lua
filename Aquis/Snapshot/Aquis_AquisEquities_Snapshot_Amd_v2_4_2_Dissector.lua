-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Aquis AquisEquities Snapshot Amd 2.4.2 Protocol
local omi_aquis_aquisequities_snapshot_amd_v2_4_2 = Proto("Omi.Aquis.AquisEquities.Snapshot.Amd.v2.4.2", "Aquis AquisEquities Snapshot Amd 2.4.2")

-- Protocol table
local aquis_aquisequities_snapshot_amd_v2_4_2 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Aquis AquisEquities Snapshot Amd 2.4.2 Fields
omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.closing_buy_qty = ProtoField.new("Closing Buy Qty", "aquis.aquisequities.snapshot.amd.v2.4.2.closingbuyqty", ftypes.UINT32, nil, nil, nil, "Total order quantity on the buy side during the closing market")
omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.closing_sell_qty = ProtoField.new("Closing Sell Qty", "aquis.aquisequities.snapshot.amd.v2.4.2.closingsellqty", ftypes.UINT32, nil, nil, nil, "Total order quantity on the sell side during the closing market")
omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.entries = ProtoField.new("Entries", "aquis.aquisequities.snapshot.amd.v2.4.2.entries", ftypes.UINT16, nil, nil, nil, "Number of open orders in the book for this security")
omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.indicative_price = ProtoField.new("Indicative Price", "aquis.aquisequities.snapshot.amd.v2.4.2.indicativeprice", ftypes.DOUBLE, nil, nil, nil, "Indicative auction price")
omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.mac_open = ProtoField.new("Mac Open", "aquis.aquisequities.snapshot.amd.v2.4.2.macopen", ftypes.UINT8, {[0]="Mac Is Closed", [1]="Mac Is Open"}, base.DEC, 0x02, "MaC open or closed")
omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.mac_run = ProtoField.new("Mac Run", "aquis.aquisequities.snapshot.amd.v2.4.2.macrun", ftypes.UINT8, {[0]="Mac Is Not Locked Down", [1]="Mac Is Locked Down"}, base.DEC, 0x04, "MaC locked down or not")
omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.market_flags = ProtoField.new("Market Flags", "aquis.aquisequities.snapshot.amd.v2.4.2.marketflags", ftypes.STRING, nil, nil, nil, "Market status flags")
omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.message_count = ProtoField.new("Message Count", "aquis.aquisequities.snapshot.amd.v2.4.2.messagecount", ftypes.UINT8, nil, nil, nil, "number of messages (n) in this packet")
omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.msg_length = ProtoField.new("Msg Length", "aquis.aquisequities.snapshot.amd.v2.4.2.msglength", ftypes.UINT8, nil, nil, nil, "Length of market data message, including header")
omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.msg_type = ProtoField.new("Msg Type", "aquis.aquisequities.snapshot.amd.v2.4.2.msgtype", ftypes.UINT8, nil, nil, nil, "Message type identifier")
omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.order_ref = ProtoField.new("Order Ref", "aquis.aquisequities.snapshot.amd.v2.4.2.orderref", ftypes.UINT32, nil, nil, nil, "Unique order reference number for the day")
omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.price = ProtoField.new("Price", "aquis.aquisequities.snapshot.amd.v2.4.2.price", ftypes.DOUBLE, nil, nil, nil, "The price of the order")
omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.quantity = ProtoField.new("Quantity", "aquis.aquisequities.snapshot.amd.v2.4.2.quantity", ftypes.UINT32, nil, nil, nil, "Number of open shares")
omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.security_count = ProtoField.new("Security Count", "aquis.aquisequities.snapshot.amd.v2.4.2.securitycount", ftypes.UINT16, nil, nil, nil, "Number of securities reported in this snapshot")
omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.security_id = ProtoField.new("Security Id", "aquis.aquisequities.snapshot.amd.v2.4.2.securityid", ftypes.UINT16, nil, nil, nil, "Numeric identifier of the relevant security")
omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.seq_no = ProtoField.new("Seq No", "aquis.aquisequities.snapshot.amd.v2.4.2.seqno", ftypes.UINT32, nil, nil, nil, "Sequence number of this message in the market data stream for the current trading day")
omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.side = ProtoField.new("Side", "aquis.aquisequities.snapshot.amd.v2.4.2.side", ftypes.UINT8, nil, nil, nil, "Side of the order")
omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.stream_seq_no = ProtoField.new("Stream Seq No", "aquis.aquisequities.snapshot.amd.v2.4.2.streamseqno", ftypes.UINT32, nil, nil, nil, "The sequence number of the last message in the continuous stream which relates to this snapshot")
omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.timestamp = ProtoField.new("Timestamp", "aquis.aquisequities.snapshot.amd.v2.4.2.timestamp", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Timestamp of this snapshot")
omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.timestamp_utc = ProtoField.new("Timestamp", "aquis.aquisequities.snapshot.amd.v2.4.2.timestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Timestamp of this snapshot")
omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.trading = ProtoField.new("Trading", "aquis.aquisequities.snapshot.amd.v2.4.2.trading", ftypes.UINT8, {[0]="Continuous Trading Closed", [1]="Continuous Trading Open"}, base.DEC, 0x01, "Continuous trading open or closed")
omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.trading_status = ProtoField.new("Trading Status", "aquis.aquisequities.snapshot.amd.v2.4.2.tradingstatus", ftypes.UINT8, nil, nil, nil, "Trading status of the security")
omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.unused_5 = ProtoField.new("Unused 5", "aquis.aquisequities.snapshot.amd.v2.4.2.unused5", ftypes.UINT8, nil, base.DEC, 0xF8, "Reserved")

-- Aquis AquisEquities Snapshot Amd 2.4.2 Framing
omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.message = ProtoField.new("Message", "aquis.aquisequities.snapshot.amd.v2.4.2.message", ftypes.STRING, nil, nil, nil, "Aquis Amd Message")
omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.message_header = ProtoField.new("Message Header", "aquis.aquisequities.snapshot.amd.v2.4.2.messageheader", ftypes.STRING, nil, nil, nil, "Aquis market data message header")
omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.packet = ProtoField.new("Packet", "aquis.aquisequities.snapshot.amd.v2.4.2.packet", ftypes.STRING, nil, nil, nil, "Aquis Udp Packet")
omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.packet_header = ProtoField.new("Packet Header", "aquis.aquisequities.snapshot.amd.v2.4.2.packetheader", ftypes.STRING, nil, nil, nil, "Aquis udp packet header")

-- Aquis AquisEquities Snapshot 2.4.2 Application Messages
omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.book_entry_message = ProtoField.new("Book Entry Message", "aquis.aquisequities.snapshot.amd.v2.4.2.bookentrymessage", ftypes.STRING, nil, nil, nil, "An appropriate number of Book Entry messages is published after each Book Status message to provide details of each order and allow the book to be built.")
omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.book_status_message = ProtoField.new("Book Status Message", "aquis.aquisequities.snapshot.amd.v2.4.2.bookstatusmessage", ftypes.STRING, nil, nil, nil, "A Book Status message is published to report the trading and market status of each security and the number of open orders on the order book for the security at the time of the snapshot.")
omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.mac_book_entry_message = ProtoField.new("Mac Book Entry Message", "aquis.aquisequities.snapshot.amd.v2.4.2.macbookentrymessage", ftypes.STRING, nil, nil, nil, "During the MaC phase, Aquis will publish the volume of the 5 best bid and offer orders per security in chronological order using the MaC Book Entry Message.")
omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.snapshot_start_message = ProtoField.new("Snapshot Start Message", "aquis.aquisequities.snapshot.amd.v2.4.2.snapshotstartmessage", ftypes.STRING, nil, nil, nil, "A Snapshot Start message is published as the first message in a snapshot to identify the sequence number in the continuous stream that this snapshot relates to. It also states the number of securities being reported in this snapshot.")

-- Aquis AquisEquities Snapshot Amd 2.4.2 Generated Fields
omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.message_index = ProtoField.new("Message Index", "aquis.aquisequities.snapshot.amd.v2.4.2.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Aquis AquisEquities Snapshot Amd 2.4.2 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
aquis_aquisequities_snapshot_amd_v2_4_2.absolute_time_base = 0


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Aquis AquisEquities Snapshot Amd 2.4.2 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true

-- Register Aquis AquisEquities Snapshot Amd 2.4.2 Show Options
omi_aquis_aquisequities_snapshot_amd_v2_4_2.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_aquis_aquisequities_snapshot_amd_v2_4_2.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_aquis_aquisequities_snapshot_amd_v2_4_2.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_aquis_aquisequities_snapshot_amd_v2_4_2.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_aquis_aquisequities_snapshot_amd_v2_4_2.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_aquis_aquisequities_snapshot_amd_v2_4_2.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_aquis_aquisequities_snapshot_amd_v2_4_2.prefs.show_application_messages then
    show.application_messages = omi_aquis_aquisequities_snapshot_amd_v2_4_2.prefs.show_application_messages
  end
  if show.headers ~= omi_aquis_aquisequities_snapshot_amd_v2_4_2.prefs.show_headers then
    show.headers = omi_aquis_aquisequities_snapshot_amd_v2_4_2.prefs.show_headers
  end
  if show.structs ~= omi_aquis_aquisequities_snapshot_amd_v2_4_2.prefs.show_structs then
    show.structs = omi_aquis_aquisequities_snapshot_amd_v2_4_2.prefs.show_structs
  end
  if show.indexes ~= omi_aquis_aquisequities_snapshot_amd_v2_4_2.prefs.show_indexes then
    show.indexes = omi_aquis_aquisequities_snapshot_amd_v2_4_2.prefs.show_indexes
  end
  if aquis_aquisequities_snapshot_amd_v2_4_2.absolute_time_base ~= omi_aquis_aquisequities_snapshot_amd_v2_4_2.prefs.absolute_time_base then
    aquis_aquisequities_snapshot_amd_v2_4_2.absolute_time_base = omi_aquis_aquisequities_snapshot_amd_v2_4_2.prefs.absolute_time_base
  end
end


-----------------------------------------------------------------------
-- Aquis AquisEquities Snapshot Amd 2.4.2 Fields
-----------------------------------------------------------------------

-- Closing Buy Qty
aquis_aquisequities_snapshot_amd_v2_4_2.closing_buy_qty = {}

-- Size: Closing Buy Qty
aquis_aquisequities_snapshot_amd_v2_4_2.closing_buy_qty.size = 4

-- Display: Closing Buy Qty
aquis_aquisequities_snapshot_amd_v2_4_2.closing_buy_qty.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Closing Buy Qty: No Value"
  end

  return "Closing Buy Qty: "..value
end

-- Dissect: Closing Buy Qty
aquis_aquisequities_snapshot_amd_v2_4_2.closing_buy_qty.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisequities_snapshot_amd_v2_4_2.closing_buy_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_aquisequities_snapshot_amd_v2_4_2.closing_buy_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.closing_buy_qty, range, value, display)

  return offset + length, value
end

-- Closing Sell Qty
aquis_aquisequities_snapshot_amd_v2_4_2.closing_sell_qty = {}

-- Size: Closing Sell Qty
aquis_aquisequities_snapshot_amd_v2_4_2.closing_sell_qty.size = 4

-- Display: Closing Sell Qty
aquis_aquisequities_snapshot_amd_v2_4_2.closing_sell_qty.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Closing Sell Qty: No Value"
  end

  return "Closing Sell Qty: "..value
end

-- Dissect: Closing Sell Qty
aquis_aquisequities_snapshot_amd_v2_4_2.closing_sell_qty.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisequities_snapshot_amd_v2_4_2.closing_sell_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_aquisequities_snapshot_amd_v2_4_2.closing_sell_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.closing_sell_qty, range, value, display)

  return offset + length, value
end

-- Entries
aquis_aquisequities_snapshot_amd_v2_4_2.entries = {}

-- Size: Entries
aquis_aquisequities_snapshot_amd_v2_4_2.entries.size = 2

-- Display: Entries
aquis_aquisequities_snapshot_amd_v2_4_2.entries.display = function(value)
  return "Entries: "..value
end

-- Dissect: Entries
aquis_aquisequities_snapshot_amd_v2_4_2.entries.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisequities_snapshot_amd_v2_4_2.entries.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_aquisequities_snapshot_amd_v2_4_2.entries.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.entries, range, value, display)

  return offset + length, value
end

-- Indicative Price
aquis_aquisequities_snapshot_amd_v2_4_2.indicative_price = {}

-- Size: Indicative Price
aquis_aquisequities_snapshot_amd_v2_4_2.indicative_price.size = 8

-- Display: Indicative Price
aquis_aquisequities_snapshot_amd_v2_4_2.indicative_price.display = function(value)
  return "Indicative Price: "..value
end

-- Translate: Indicative Price
aquis_aquisequities_snapshot_amd_v2_4_2.indicative_price.translate = function(raw)
  return raw:tonumber()/100000
end

-- Dissect: Indicative Price
aquis_aquisequities_snapshot_amd_v2_4_2.indicative_price.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisequities_snapshot_amd_v2_4_2.indicative_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = aquis_aquisequities_snapshot_amd_v2_4_2.indicative_price.translate(raw)
  local display = aquis_aquisequities_snapshot_amd_v2_4_2.indicative_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.indicative_price, range, value, display)

  return offset + length, value
end

-- Message Count
aquis_aquisequities_snapshot_amd_v2_4_2.message_count = {}

-- Size: Message Count
aquis_aquisequities_snapshot_amd_v2_4_2.message_count.size = 1

-- Display: Message Count
aquis_aquisequities_snapshot_amd_v2_4_2.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
aquis_aquisequities_snapshot_amd_v2_4_2.message_count.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisequities_snapshot_amd_v2_4_2.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = aquis_aquisequities_snapshot_amd_v2_4_2.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.message_count, range, value, display)

  return offset + length, value
end

-- Msg Length
aquis_aquisequities_snapshot_amd_v2_4_2.msg_length = {}

-- Size: Msg Length
aquis_aquisequities_snapshot_amd_v2_4_2.msg_length.size = 1

-- Display: Msg Length
aquis_aquisequities_snapshot_amd_v2_4_2.msg_length.display = function(value)
  return "Msg Length: "..value
end

-- Dissect: Msg Length
aquis_aquisequities_snapshot_amd_v2_4_2.msg_length.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisequities_snapshot_amd_v2_4_2.msg_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = aquis_aquisequities_snapshot_amd_v2_4_2.msg_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.msg_length, range, value, display)

  return offset + length, value
end

-- Msg Type
aquis_aquisequities_snapshot_amd_v2_4_2.msg_type = {}

-- Size: Msg Type
aquis_aquisequities_snapshot_amd_v2_4_2.msg_type.size = 1

-- Display: Msg Type
aquis_aquisequities_snapshot_amd_v2_4_2.msg_type.labels = {
  [10] = "Msg Type: Snapshot Start Message (10)",
  [11] = "Msg Type: Book Status Message (11)",
  [12] = "Msg Type: Book Entry Message (12)",
  [18] = "Msg Type: Mac Book Entry Message (18)",
}

aquis_aquisequities_snapshot_amd_v2_4_2.msg_type.display = function(value)
  return aquis_aquisequities_snapshot_amd_v2_4_2.msg_type.labels[value] or "Msg Type: Unknown("..value..")"
end

-- Dissect: Msg Type
aquis_aquisequities_snapshot_amd_v2_4_2.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisequities_snapshot_amd_v2_4_2.msg_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = aquis_aquisequities_snapshot_amd_v2_4_2.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.msg_type, range, value, display)

  return offset + length, value
end

-- Order Ref
aquis_aquisequities_snapshot_amd_v2_4_2.order_ref = {}

-- Size: Order Ref
aquis_aquisequities_snapshot_amd_v2_4_2.order_ref.size = 4

-- Display: Order Ref
aquis_aquisequities_snapshot_amd_v2_4_2.order_ref.display = function(value)
  return "Order Ref: "..value
end

-- Dissect: Order Ref
aquis_aquisequities_snapshot_amd_v2_4_2.order_ref.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisequities_snapshot_amd_v2_4_2.order_ref.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_aquisequities_snapshot_amd_v2_4_2.order_ref.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.order_ref, range, value, display)

  return offset + length, value
end

-- Price
aquis_aquisequities_snapshot_amd_v2_4_2.price = {}

-- Size: Price
aquis_aquisequities_snapshot_amd_v2_4_2.price.size = 8

-- Display: Price
aquis_aquisequities_snapshot_amd_v2_4_2.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
aquis_aquisequities_snapshot_amd_v2_4_2.price.translate = function(raw)
  return raw:tonumber()/100000
end

-- Dissect: Price
aquis_aquisequities_snapshot_amd_v2_4_2.price.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisequities_snapshot_amd_v2_4_2.price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = aquis_aquisequities_snapshot_amd_v2_4_2.price.translate(raw)
  local display = aquis_aquisequities_snapshot_amd_v2_4_2.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity
aquis_aquisequities_snapshot_amd_v2_4_2.quantity = {}

-- Size: Quantity
aquis_aquisequities_snapshot_amd_v2_4_2.quantity.size = 4

-- Display: Quantity
aquis_aquisequities_snapshot_amd_v2_4_2.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
aquis_aquisequities_snapshot_amd_v2_4_2.quantity.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisequities_snapshot_amd_v2_4_2.quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_aquisequities_snapshot_amd_v2_4_2.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.quantity, range, value, display)

  return offset + length, value
end

-- Security Count
aquis_aquisequities_snapshot_amd_v2_4_2.security_count = {}

-- Size: Security Count
aquis_aquisequities_snapshot_amd_v2_4_2.security_count.size = 2

-- Display: Security Count
aquis_aquisequities_snapshot_amd_v2_4_2.security_count.display = function(value)
  return "Security Count: "..value
end

-- Dissect: Security Count
aquis_aquisequities_snapshot_amd_v2_4_2.security_count.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisequities_snapshot_amd_v2_4_2.security_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_aquisequities_snapshot_amd_v2_4_2.security_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.security_count, range, value, display)

  return offset + length, value
end

-- Security Id
aquis_aquisequities_snapshot_amd_v2_4_2.security_id = {}

-- Size: Security Id
aquis_aquisequities_snapshot_amd_v2_4_2.security_id.size = 2

-- Display: Security Id
aquis_aquisequities_snapshot_amd_v2_4_2.security_id.display = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
aquis_aquisequities_snapshot_amd_v2_4_2.security_id.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisequities_snapshot_amd_v2_4_2.security_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_aquisequities_snapshot_amd_v2_4_2.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.security_id, range, value, display)

  return offset + length, value
end

-- Seq No
aquis_aquisequities_snapshot_amd_v2_4_2.seq_no = {}

-- Size: Seq No
aquis_aquisequities_snapshot_amd_v2_4_2.seq_no.size = 4

-- Display: Seq No
aquis_aquisequities_snapshot_amd_v2_4_2.seq_no.display = function(value)
  return "Seq No: "..value
end

-- Dissect: Seq No
aquis_aquisequities_snapshot_amd_v2_4_2.seq_no.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisequities_snapshot_amd_v2_4_2.seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_aquisequities_snapshot_amd_v2_4_2.seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.seq_no, range, value, display)

  return offset + length, value
end

-- Side
aquis_aquisequities_snapshot_amd_v2_4_2.side = {}

-- Size: Side
aquis_aquisequities_snapshot_amd_v2_4_2.side.size = 1

-- Display: Side
aquis_aquisequities_snapshot_amd_v2_4_2.side.labels = {
  [1] = "Side: Buy Order (1)",
  [2] = "Side: Sell Order (2)",
}

aquis_aquisequities_snapshot_amd_v2_4_2.side.display = function(value)
  return aquis_aquisequities_snapshot_amd_v2_4_2.side.labels[value] or "Side: Unknown("..value..")"
end

-- Dissect: Side
aquis_aquisequities_snapshot_amd_v2_4_2.side.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisequities_snapshot_amd_v2_4_2.side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_aquisequities_snapshot_amd_v2_4_2.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.side, range, value, display)

  return offset + length, value
end

-- Stream Seq No
aquis_aquisequities_snapshot_amd_v2_4_2.stream_seq_no = {}

-- Size: Stream Seq No
aquis_aquisequities_snapshot_amd_v2_4_2.stream_seq_no.size = 4

-- Display: Stream Seq No
aquis_aquisequities_snapshot_amd_v2_4_2.stream_seq_no.display = function(value)
  return "Stream Seq No: "..value
end

-- Dissect: Stream Seq No
aquis_aquisequities_snapshot_amd_v2_4_2.stream_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisequities_snapshot_amd_v2_4_2.stream_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_aquisequities_snapshot_amd_v2_4_2.stream_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.stream_seq_no, range, value, display)

  return offset + length, value
end

-- Timestamp
aquis_aquisequities_snapshot_amd_v2_4_2.timestamp = {}

-- Size: Timestamp
aquis_aquisequities_snapshot_amd_v2_4_2.timestamp.size = 8

-- Dissect: Timestamp
aquis_aquisequities_snapshot_amd_v2_4_2.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisequities_snapshot_amd_v2_4_2.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.timestamp
  if aquis_aquisequities_snapshot_amd_v2_4_2.absolute_time_base == 1 then field = omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.timestamp_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Trading Status
aquis_aquisequities_snapshot_amd_v2_4_2.trading_status = {}

-- Size: Trading Status
aquis_aquisequities_snapshot_amd_v2_4_2.trading_status.size = 1

-- Display: Trading Status
aquis_aquisequities_snapshot_amd_v2_4_2.trading_status.labels = {
  [1] = "Trading Status: Active (1)",
  [2] = "Trading Status: Halted (2)",
  [3] = "Trading Status: Suspended (3)",
  [8] = "Trading Status: Aod Start (8)",
  [24] = "Trading Status: Aod End (24)",
}

aquis_aquisequities_snapshot_amd_v2_4_2.trading_status.display = function(value)
  return aquis_aquisequities_snapshot_amd_v2_4_2.trading_status.labels[value] or "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
aquis_aquisequities_snapshot_amd_v2_4_2.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisequities_snapshot_amd_v2_4_2.trading_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_aquisequities_snapshot_amd_v2_4_2.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.trading_status, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Aquis AquisEquities Snapshot Amd 2.4.2
-----------------------------------------------------------------------

-- Mac Book Entry Message
aquis_aquisequities_snapshot_amd_v2_4_2.mac_book_entry_message = {}

-- Size: Mac Book Entry Message
aquis_aquisequities_snapshot_amd_v2_4_2.mac_book_entry_message.size =
  aquis_aquisequities_snapshot_amd_v2_4_2.security_id.size + 
  aquis_aquisequities_snapshot_amd_v2_4_2.side.size + 
  aquis_aquisequities_snapshot_amd_v2_4_2.quantity.size + 
  aquis_aquisequities_snapshot_amd_v2_4_2.price.size + 
  aquis_aquisequities_snapshot_amd_v2_4_2.order_ref.size

-- Display: Mac Book Entry Message
aquis_aquisequities_snapshot_amd_v2_4_2.mac_book_entry_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mac Book Entry Message
aquis_aquisequities_snapshot_amd_v2_4_2.mac_book_entry_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = aquis_aquisequities_snapshot_amd_v2_4_2.security_id.dissect(buffer, index, packet, parent)

  -- Side: u8
  index, side = aquis_aquisequities_snapshot_amd_v2_4_2.side.dissect(buffer, index, packet, parent)

  -- Quantity: u32
  index, quantity = aquis_aquisequities_snapshot_amd_v2_4_2.quantity.dissect(buffer, index, packet, parent)

  -- Price: u64
  index, price = aquis_aquisequities_snapshot_amd_v2_4_2.price.dissect(buffer, index, packet, parent)

  -- Order Ref: u32
  index, order_ref = aquis_aquisequities_snapshot_amd_v2_4_2.order_ref.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mac Book Entry Message
aquis_aquisequities_snapshot_amd_v2_4_2.mac_book_entry_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.mac_book_entry_message, buffer(offset, 0))
    local index = aquis_aquisequities_snapshot_amd_v2_4_2.mac_book_entry_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_aquisequities_snapshot_amd_v2_4_2.mac_book_entry_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_aquisequities_snapshot_amd_v2_4_2.mac_book_entry_message.fields(buffer, offset, packet, parent)
  end
end

-- Book Entry Message
aquis_aquisequities_snapshot_amd_v2_4_2.book_entry_message = {}

-- Size: Book Entry Message
aquis_aquisequities_snapshot_amd_v2_4_2.book_entry_message.size =
  aquis_aquisequities_snapshot_amd_v2_4_2.security_id.size + 
  aquis_aquisequities_snapshot_amd_v2_4_2.side.size + 
  aquis_aquisequities_snapshot_amd_v2_4_2.quantity.size + 
  aquis_aquisequities_snapshot_amd_v2_4_2.price.size + 
  aquis_aquisequities_snapshot_amd_v2_4_2.order_ref.size

-- Display: Book Entry Message
aquis_aquisequities_snapshot_amd_v2_4_2.book_entry_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Book Entry Message
aquis_aquisequities_snapshot_amd_v2_4_2.book_entry_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = aquis_aquisequities_snapshot_amd_v2_4_2.security_id.dissect(buffer, index, packet, parent)

  -- Side: u8
  index, side = aquis_aquisequities_snapshot_amd_v2_4_2.side.dissect(buffer, index, packet, parent)

  -- Quantity: u32
  index, quantity = aquis_aquisequities_snapshot_amd_v2_4_2.quantity.dissect(buffer, index, packet, parent)

  -- Price: u64
  index, price = aquis_aquisequities_snapshot_amd_v2_4_2.price.dissect(buffer, index, packet, parent)

  -- Order Ref: u32
  index, order_ref = aquis_aquisequities_snapshot_amd_v2_4_2.order_ref.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Book Entry Message
aquis_aquisequities_snapshot_amd_v2_4_2.book_entry_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.book_entry_message, buffer(offset, 0))
    local index = aquis_aquisequities_snapshot_amd_v2_4_2.book_entry_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_aquisequities_snapshot_amd_v2_4_2.book_entry_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_aquisequities_snapshot_amd_v2_4_2.book_entry_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Flags
aquis_aquisequities_snapshot_amd_v2_4_2.market_flags = {}

-- Size: Market Flags
aquis_aquisequities_snapshot_amd_v2_4_2.market_flags.size = 1

-- Display: Market Flags
aquis_aquisequities_snapshot_amd_v2_4_2.market_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Trading flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Trading"
  end
  -- Is Mac Open flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Mac Open"
  end
  -- Is Mac Run flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Mac Run"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Market Flags
aquis_aquisequities_snapshot_amd_v2_4_2.market_flags.bits = function(range, value, packet, parent)

  -- Trading: 1 Bit Enum with 2 values
  parent:add(omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.trading, range, value)

  -- Mac Open: 1 Bit Enum with 2 values
  parent:add(omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.mac_open, range, value)

  -- Mac Run: 1 Bit Enum with 2 values
  parent:add(omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.mac_run, range, value)

  -- Unused 5: 5 Bit
  parent:add(omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.unused_5, range, value)
end

-- Dissect: Market Flags
aquis_aquisequities_snapshot_amd_v2_4_2.market_flags.dissect = function(buffer, offset, packet, parent)
  local size = aquis_aquisequities_snapshot_amd_v2_4_2.market_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = aquis_aquisequities_snapshot_amd_v2_4_2.market_flags.display(range, value, packet, parent)
  local element = parent:add(omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.market_flags, range, display)

  if show.structs then
    aquis_aquisequities_snapshot_amd_v2_4_2.market_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Book Status Message
aquis_aquisequities_snapshot_amd_v2_4_2.book_status_message = {}

-- Size: Book Status Message
aquis_aquisequities_snapshot_amd_v2_4_2.book_status_message.size =
  aquis_aquisequities_snapshot_amd_v2_4_2.security_id.size + 
  aquis_aquisequities_snapshot_amd_v2_4_2.trading_status.size + 
  aquis_aquisequities_snapshot_amd_v2_4_2.market_flags.size + 
  aquis_aquisequities_snapshot_amd_v2_4_2.entries.size + 
  aquis_aquisequities_snapshot_amd_v2_4_2.closing_buy_qty.size + 
  aquis_aquisequities_snapshot_amd_v2_4_2.closing_sell_qty.size + 
  aquis_aquisequities_snapshot_amd_v2_4_2.indicative_price.size

-- Display: Book Status Message
aquis_aquisequities_snapshot_amd_v2_4_2.book_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Book Status Message
aquis_aquisequities_snapshot_amd_v2_4_2.book_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = aquis_aquisequities_snapshot_amd_v2_4_2.security_id.dissect(buffer, index, packet, parent)

  -- Trading Status: u8
  index, trading_status = aquis_aquisequities_snapshot_amd_v2_4_2.trading_status.dissect(buffer, index, packet, parent)

  -- Market Flags: Struct of 4 fields
  index, market_flags = aquis_aquisequities_snapshot_amd_v2_4_2.market_flags.dissect(buffer, index, packet, parent)

  -- Entries: u16
  index, entries = aquis_aquisequities_snapshot_amd_v2_4_2.entries.dissect(buffer, index, packet, parent)

  -- Closing Buy Qty: u32
  index, closing_buy_qty = aquis_aquisequities_snapshot_amd_v2_4_2.closing_buy_qty.dissect(buffer, index, packet, parent)

  -- Closing Sell Qty: u32
  index, closing_sell_qty = aquis_aquisequities_snapshot_amd_v2_4_2.closing_sell_qty.dissect(buffer, index, packet, parent)

  -- Indicative Price: u64
  index, indicative_price = aquis_aquisequities_snapshot_amd_v2_4_2.indicative_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Book Status Message
aquis_aquisequities_snapshot_amd_v2_4_2.book_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.book_status_message, buffer(offset, 0))
    local index = aquis_aquisequities_snapshot_amd_v2_4_2.book_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_aquisequities_snapshot_amd_v2_4_2.book_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_aquisequities_snapshot_amd_v2_4_2.book_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Snapshot Start Message
aquis_aquisequities_snapshot_amd_v2_4_2.snapshot_start_message = {}

-- Size: Snapshot Start Message
aquis_aquisequities_snapshot_amd_v2_4_2.snapshot_start_message.size =
  aquis_aquisequities_snapshot_amd_v2_4_2.stream_seq_no.size + 
  aquis_aquisequities_snapshot_amd_v2_4_2.security_count.size + 
  aquis_aquisequities_snapshot_amd_v2_4_2.timestamp.size

-- Display: Snapshot Start Message
aquis_aquisequities_snapshot_amd_v2_4_2.snapshot_start_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Start Message
aquis_aquisequities_snapshot_amd_v2_4_2.snapshot_start_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stream Seq No: u32
  index, stream_seq_no = aquis_aquisequities_snapshot_amd_v2_4_2.stream_seq_no.dissect(buffer, index, packet, parent)

  -- Security Count: u16
  index, security_count = aquis_aquisequities_snapshot_amd_v2_4_2.security_count.dissect(buffer, index, packet, parent)

  -- Timestamp: u64
  index, timestamp = aquis_aquisequities_snapshot_amd_v2_4_2.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Start Message
aquis_aquisequities_snapshot_amd_v2_4_2.snapshot_start_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.snapshot_start_message, buffer(offset, 0))
    local index = aquis_aquisequities_snapshot_amd_v2_4_2.snapshot_start_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_aquisequities_snapshot_amd_v2_4_2.snapshot_start_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_aquisequities_snapshot_amd_v2_4_2.snapshot_start_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
aquis_aquisequities_snapshot_amd_v2_4_2.payload = {}

-- Dispatch: Payload
aquis_aquisequities_snapshot_amd_v2_4_2.payload.dispatch = {
  [10] = aquis_aquisequities_snapshot_amd_v2_4_2.snapshot_start_message.dissect,
  [11] = aquis_aquisequities_snapshot_amd_v2_4_2.book_status_message.dissect,
  [12] = aquis_aquisequities_snapshot_amd_v2_4_2.book_entry_message.dissect,
  [18] = aquis_aquisequities_snapshot_amd_v2_4_2.mac_book_entry_message.dissect,
}

-- Dissect: Payload
aquis_aquisequities_snapshot_amd_v2_4_2.payload.dissect = function(buffer, offset, packet, parent, msg_type)
  local dissect = aquis_aquisequities_snapshot_amd_v2_4_2.payload.dispatch[msg_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
aquis_aquisequities_snapshot_amd_v2_4_2.message_header = {}

-- Size: Message Header
aquis_aquisequities_snapshot_amd_v2_4_2.message_header.size =
  aquis_aquisequities_snapshot_amd_v2_4_2.msg_type.size + 
  aquis_aquisequities_snapshot_amd_v2_4_2.msg_length.size + 
  aquis_aquisequities_snapshot_amd_v2_4_2.seq_no.size

-- Display: Message Header
aquis_aquisequities_snapshot_amd_v2_4_2.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
aquis_aquisequities_snapshot_amd_v2_4_2.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Type: u8
  index, msg_type = aquis_aquisequities_snapshot_amd_v2_4_2.msg_type.dissect(buffer, index, packet, parent)

  -- Msg Length: u8
  index, msg_length = aquis_aquisequities_snapshot_amd_v2_4_2.msg_length.dissect(buffer, index, packet, parent)

  -- Seq No: u32
  index, seq_no = aquis_aquisequities_snapshot_amd_v2_4_2.seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
aquis_aquisequities_snapshot_amd_v2_4_2.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.message_header, buffer(offset, 0))
    local index = aquis_aquisequities_snapshot_amd_v2_4_2.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_aquisequities_snapshot_amd_v2_4_2.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_aquisequities_snapshot_amd_v2_4_2.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
aquis_aquisequities_snapshot_amd_v2_4_2.message = {}

-- Display: Message
aquis_aquisequities_snapshot_amd_v2_4_2.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
aquis_aquisequities_snapshot_amd_v2_4_2.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 3 fields
  index, message_header = aquis_aquisequities_snapshot_amd_v2_4_2.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Type
  local msg_type = buffer(index - 6, 1):uint()

  -- Payload: Runtime Type with 4 branches
  index = aquis_aquisequities_snapshot_amd_v2_4_2.payload.dissect(buffer, index, packet, parent, msg_type)

  return index
end

-- Dissect: Message
aquis_aquisequities_snapshot_amd_v2_4_2.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.message, buffer(offset, 0))
    local current = aquis_aquisequities_snapshot_amd_v2_4_2.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = aquis_aquisequities_snapshot_amd_v2_4_2.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    aquis_aquisequities_snapshot_amd_v2_4_2.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Packet Header
aquis_aquisequities_snapshot_amd_v2_4_2.packet_header = {}

-- Size: Packet Header
aquis_aquisequities_snapshot_amd_v2_4_2.packet_header.size =
  aquis_aquisequities_snapshot_amd_v2_4_2.message_count.size

-- Display: Packet Header
aquis_aquisequities_snapshot_amd_v2_4_2.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
aquis_aquisequities_snapshot_amd_v2_4_2.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Count: u8
  index, message_count = aquis_aquisequities_snapshot_amd_v2_4_2.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
aquis_aquisequities_snapshot_amd_v2_4_2.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_aquisequities_snapshot_amd_v2_4_2.fields.packet_header, buffer(offset, 0))
    local index = aquis_aquisequities_snapshot_amd_v2_4_2.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_aquisequities_snapshot_amd_v2_4_2.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_aquisequities_snapshot_amd_v2_4_2.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
aquis_aquisequities_snapshot_amd_v2_4_2.packet = {}

-- Verify required size of Udp packet
aquis_aquisequities_snapshot_amd_v2_4_2.packet.requiredsize = function(buffer)
  return buffer:len() >= aquis_aquisequities_snapshot_amd_v2_4_2.packet_header.size
end

-- Dissect Packet
aquis_aquisequities_snapshot_amd_v2_4_2.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 1 fields
  index, packet_header = aquis_aquisequities_snapshot_amd_v2_4_2.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Msg Length
    local msg_length = buffer(index + 1, 1):uint()

    -- Runtime Size Of: Message
    index, message = aquis_aquisequities_snapshot_amd_v2_4_2.message.dissect(buffer, index, packet, parent, msg_length, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_aquis_aquisequities_snapshot_amd_v2_4_2.init()
end

-- Dissector for Aquis AquisEquities Snapshot Amd 2.4.2
function omi_aquis_aquisequities_snapshot_amd_v2_4_2.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_aquis_aquisequities_snapshot_amd_v2_4_2.name

  -- Dissect protocol
  local protocol = parent:add(omi_aquis_aquisequities_snapshot_amd_v2_4_2, buffer(), omi_aquis_aquisequities_snapshot_amd_v2_4_2.description, "("..buffer:len().." Bytes)")
  return aquis_aquisequities_snapshot_amd_v2_4_2.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
aquis_aquisequities_snapshot_amd_v2_4_2.packet.fingerprint = function(buffer)
  if buffer:len() < 2 then
    return false
  end

  local msg_type = buffer(1, 1):uint()

  -- Snapshot Start Message
  if msg_type == 10 then
    return true
  end

  -- Book Status Message
  if msg_type == 11 then
    return true
  end

  -- Book Entry Message
  if msg_type == 12 then
    return true
  end

  -- Mac Book Entry Message
  if msg_type == 18 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Aquis AquisEquities Snapshot Amd 2.4.2 (Udp)
local function omi_aquis_aquisequities_snapshot_amd_v2_4_2_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not aquis_aquisequities_snapshot_amd_v2_4_2.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this udp packet message dispatch
  if not aquis_aquisequities_snapshot_amd_v2_4_2.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_aquis_aquisequities_snapshot_amd_v2_4_2
  omi_aquis_aquisequities_snapshot_amd_v2_4_2.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Aquis AquisEquities Snapshot Amd 2.4.2
omi_aquis_aquisequities_snapshot_amd_v2_4_2:register_heuristic("udp", omi_aquis_aquisequities_snapshot_amd_v2_4_2_udp_heuristic)

-- Register Aquis AquisEquities Snapshot Amd 2.4.2 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_aquis_aquisequities_snapshot_amd_v2_4_2)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Aquis Exchange
--   Version: 2.4.2
--   Date: Monday, May 30, 2022
--   Specification: Aquis Market Data Technical Specification v2.4.2.pdf
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
