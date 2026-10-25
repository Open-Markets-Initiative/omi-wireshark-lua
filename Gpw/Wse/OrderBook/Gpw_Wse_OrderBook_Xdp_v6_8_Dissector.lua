-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Gpw Wse OrderBook Xdp 6.8 Protocol
local omi_gpw_wse_orderbook_xdp_v6_8 = Proto("Omi.Gpw.Wse.OrderBook.Xdp.v6.8", "Gpw Wse OrderBook Xdp 6.8")

-- Protocol table
local gpw_wse_orderbook_xdp_v6_8 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Gpw Wse OrderBook Xdp 6.8 Fields
omi_gpw_wse_orderbook_xdp_v6_8.fields.action_type = ProtoField.new("Action Type", "gpw.wse.orderbook.xdp.v6.8.actiontype", ftypes.STRING, nil, nil, nil, "This field identifies the type of operation on order book")
omi_gpw_wse_orderbook_xdp_v6_8.fields.aggregated_volume = ProtoField.new("Aggregated Volume", "gpw.wse.orderbook.xdp.v6.8.aggregatedvolume", ftypes.UINT32, nil, nil, nil, "Total quantity of orders at the given price level BondSpot: Not applicable")
omi_gpw_wse_orderbook_xdp_v6_8.fields.application_id = ProtoField.new("Application Id", "gpw.wse.orderbook.xdp.v6.8.applicationid", ftypes.STRING, nil, nil, nil, "Code identifying the application where the orderbooks are retransmitted")
omi_gpw_wse_orderbook_xdp_v6_8.fields.delivery_flag = ProtoField.new("Delivery Flag", "gpw.wse.orderbook.xdp.v6.8.deliveryflag", ftypes.UINT8, nil, nil, nil, "Indicates delivery method, and a client reads it to determine whether the packet is ZliB compressed")
omi_gpw_wse_orderbook_xdp_v6_8.fields.instance_num = ProtoField.new("Instance Num", "gpw.wse.orderbook.xdp.v6.8.instancenum", ftypes.UINT8, nil, nil, nil, "Indicates the number of trading units for which the orderbooks are rebroadcast")
omi_gpw_wse_orderbook_xdp_v6_8.fields.link_id = ProtoField.new("Link Id", "gpw.wse.orderbook.xdp.v6.8.linkid", ftypes.UINT32, nil, nil, nil, "Not used")
omi_gpw_wse_orderbook_xdp_v6_8.fields.message_size = ProtoField.new("Message Size", "gpw.wse.orderbook.xdp.v6.8.messagesize", ftypes.UINT16, nil, nil, nil, "Length of the message body, excluding the 2 byte MsgSize field")
omi_gpw_wse_orderbook_xdp_v6_8.fields.message_type = ProtoField.new("Message Type", "gpw.wse.orderbook.xdp.v6.8.messagetype", ftypes.UINT16, nil, nil, nil, "The type of this message")
omi_gpw_wse_orderbook_xdp_v6_8.fields.number_msg_entries = ProtoField.new("Number Msg Entries", "gpw.wse.orderbook.xdp.v6.8.numbermsgentries", ftypes.UINT8, nil, nil, nil, "The number of messages that are contained within the packet")
omi_gpw_wse_orderbook_xdp_v6_8.fields.number_orders = ProtoField.new("Number Orders", "gpw.wse.orderbook.xdp.v6.8.numberorders", ftypes.UINT16, nil, nil, nil, "Number of orders in the Book at the price of the current order BondSpot: Not applicable")
omi_gpw_wse_orderbook_xdp_v6_8.fields.order_date = ProtoField.new("Order Date", "gpw.wse.orderbook.xdp.v6.8.orderdate", ftypes.UINT32, nil, nil, nil, "Date of order (YYYYMMDD)")
omi_gpw_wse_orderbook_xdp_v6_8.fields.order_id = ProtoField.new("Order Id", "gpw.wse.orderbook.xdp.v6.8.orderid", ftypes.UINT32, nil, nil, nil, "Identifies the uniqueness of the order, when combined with OrderDate")
omi_gpw_wse_orderbook_xdp_v6_8.fields.order_origin = ProtoField.new("Order Origin", "gpw.wse.orderbook.xdp.v6.8.orderorigin", ftypes.STRING, nil, nil, nil, "Not used")
omi_gpw_wse_orderbook_xdp_v6_8.fields.order_priority_date = ProtoField.new("Order Priority Date", "gpw.wse.orderbook.xdp.v6.8.orderprioritydate", ftypes.UINT32, nil, nil, nil, "Date giving the priority of the order (YYYYMMDD)")
omi_gpw_wse_orderbook_xdp_v6_8.fields.order_priority_micro_secs = ProtoField.new("Order Priority Micro Secs", "gpw.wse.orderbook.xdp.v6.8.orderprioritymicrosecs", ftypes.UINT16, nil, nil, nil, "Number of micro seconds in the current millisecond BondSpot: Set to zero")
omi_gpw_wse_orderbook_xdp_v6_8.fields.order_priority_time = ProtoField.new("Order Priority Time", "gpw.wse.orderbook.xdp.v6.8.orderprioritytime", ftypes.UINT32, nil, nil, nil, "Time giving the priority of the order (HHMMSSsss)")
omi_gpw_wse_orderbook_xdp_v6_8.fields.order_type = ProtoField.new("Order Type", "gpw.wse.orderbook.xdp.v6.8.ordertype", ftypes.STRING, nil, nil, nil, "Type of Order")
omi_gpw_wse_orderbook_xdp_v6_8.fields.packet_length = ProtoField.new("Packet Length", "gpw.wse.orderbook.xdp.v6.8.packetlength", ftypes.UINT16, nil, nil, nil, "Length of the packet including the 16 byte packet header")
omi_gpw_wse_orderbook_xdp_v6_8.fields.packet_sequence_number = ProtoField.new("Packet Sequence Number", "gpw.wse.orderbook.xdp.v6.8.packetsequencenumber", ftypes.UINT32, nil, nil, nil, "The packet sequence number, unique for each broadcast stream and used for gap detection. It increases serially and monotonically and is reset to 1 at the beginning of each trading day. It is unique for packets containing market data only, and heartbeats inherit it from the last market data packet or packet sequence number reset packet")
omi_gpw_wse_orderbook_xdp_v6_8.fields.packet_type = ProtoField.new("Packet Type", "gpw.wse.orderbook.xdp.v6.8.packettype", ftypes.UINT16, nil, nil, nil, "Identifier for the type of data contained in the packet. Section 1.1 states one value, 501 for Market Data messages, for every feed the document specifies")
omi_gpw_wse_orderbook_xdp_v6_8.fields.price = ProtoField.new("Price", "gpw.wse.orderbook.xdp.v6.8.price", ftypes.UINT32, nil, nil, nil, "Price (Tto be calculated with the PriceScaleCode")
omi_gpw_wse_orderbook_xdp_v6_8.fields.price_scale_code = ProtoField.new("Price Scale Code", "gpw.wse.orderbook.xdp.v6.8.pricescalecode", ftypes.UINT8, nil, nil, nil, "Applicable to all prices in the message")
omi_gpw_wse_orderbook_xdp_v6_8.fields.reserved_1 = ProtoField.new("Reserved 1", "gpw.wse.orderbook.xdp.v6.8.reserved1", ftypes.BYTES, nil, nil, nil, "For future use")
omi_gpw_wse_orderbook_xdp_v6_8.fields.retransmission_indicator = ProtoField.new("Retransmission Indicator", "gpw.wse.orderbook.xdp.v6.8.retransmissionindicator", ftypes.STRING, nil, nil, nil, "Indicates the status of the retransmission for the instance of the trading engine")
omi_gpw_wse_orderbook_xdp_v6_8.fields.send_time = ProtoField.new("Send Time", "gpw.wse.orderbook.xdp.v6.8.sendtime", ftypes.UINT32, nil, nil, nil, "Timestamp in millisecond indicating the packet broadcast time. The number represents the number of milliseconds since midnight of the last Sunday 00:00 UTC, a weekly epoch no Epoch trait represents, so the field carries no epoch and a reader resolves the absolute time against the Sunday preceding the capture")
omi_gpw_wse_orderbook_xdp_v6_8.fields.service_id = ProtoField.new("Service Id", "gpw.wse.orderbook.xdp.v6.8.serviceid", ftypes.UINT16, nil, nil, nil, "Numeric value identifying the broadcast stream. Section 1.1 states that the possible values are described in the XDP CDE Configuration document, a companion this specification does not reproduce, so no value set is declared here")
omi_gpw_wse_orderbook_xdp_v6_8.fields.side = ProtoField.new("Side", "gpw.wse.orderbook.xdp.v6.8.side", ftypes.STRING, nil, nil, nil, "Indicates the side of the order")
omi_gpw_wse_orderbook_xdp_v6_8.fields.source_seq_num = ProtoField.new("Source Seq Num", "gpw.wse.orderbook.xdp.v6.8.sourceseqnum", ftypes.UINT32, nil, nil, nil, "This field specifies the sequence number assigned by the source system to this message")
omi_gpw_wse_orderbook_xdp_v6_8.fields.source_time = ProtoField.new("Source Time", "gpw.wse.orderbook.xdp.v6.8.sourcetime", ftypes.UINT32, nil, nil, nil, "This field specifies the time when the Order Update is generated")
omi_gpw_wse_orderbook_xdp_v6_8.fields.source_time_micro_secs = ProtoField.new("Source Time Micro Secs", "gpw.wse.orderbook.xdp.v6.8.sourcetimemicrosecs", ftypes.UINT16, nil, nil, nil, "Number of micro seconds")
omi_gpw_wse_orderbook_xdp_v6_8.fields.symbol_index = ProtoField.new("Symbol Index", "gpw.wse.orderbook.xdp.v6.8.symbolindex", ftypes.UINT32, nil, nil, nil, "UTP-MD proprietary identification of the instrument")
omi_gpw_wse_orderbook_xdp_v6_8.fields.system_id = ProtoField.new("System Id", "gpw.wse.orderbook.xdp.v6.8.systemid", ftypes.UINT32, nil, nil, nil, "The ID of the originating Exchange/System of the message")
omi_gpw_wse_orderbook_xdp_v6_8.fields.volume = ProtoField.new("Volume", "gpw.wse.orderbook.xdp.v6.8.volume", ftypes.UINT32, nil, nil, nil, "Displayed quantity of the order")

-- Gpw Wse OrderBook Xdp 6.8 Framing
omi_gpw_wse_orderbook_xdp_v6_8.fields.message = ProtoField.new("Message", "gpw.wse.orderbook.xdp.v6.8.message", ftypes.STRING)
omi_gpw_wse_orderbook_xdp_v6_8.fields.message_header = ProtoField.new("Message Header", "gpw.wse.orderbook.xdp.v6.8.messageheader", ftypes.STRING)
omi_gpw_wse_orderbook_xdp_v6_8.fields.packet = ProtoField.new("Packet", "gpw.wse.orderbook.xdp.v6.8.packet", ftypes.STRING, nil, nil, nil, "Gpw Xdp Udp Packet")
omi_gpw_wse_orderbook_xdp_v6_8.fields.packet_header = ProtoField.new("Packet Header", "gpw.wse.orderbook.xdp.v6.8.packetheader", ftypes.STRING, nil, nil, nil, "All messages are preceded by a common packet header format, which section 1.1 states for every Market Information message")

-- Gpw Wse OrderBook 6.8 Application Messages
omi_gpw_wse_orderbook_xdp_v6_8.fields.order_book_retransmission_delimiter_message = ProtoField.new("Order Book Retransmission Delimiter Message", "gpw.wse.orderbook.xdp.v6.8.orderbookretransmissiondelimitermessage", ftypes.STRING, nil, nil, nil, "The Orderbook retransmission delimiter message is set to clean then update the market sheet with the orders from previous days still remaining in the order book")
omi_gpw_wse_orderbook_xdp_v6_8.fields.order_update_market_sheet_message = ProtoField.new("Order Update Market Sheet Message", "gpw.wse.orderbook.xdp.v6.8.orderupdatemarketsheetmessage", ftypes.STRING, nil, nil, nil, "The Order update message generated by the trading engine UTP indicates the creation or modification of a line in the \"market sheet\" (a.k.a")

-- Gpw Wse OrderBook Xdp 6.8 Generated Fields
omi_gpw_wse_orderbook_xdp_v6_8.fields.message_index = ProtoField.new("Message Index", "gpw.wse.orderbook.xdp.v6.8.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Gpw Wse OrderBook Xdp 6.8 Element Dissection Options
show.structs = true
show.headers = true
show.application_messages = true
show.indexes = true

-- Register Gpw Wse OrderBook Xdp 6.8 Show Options
omi_gpw_wse_orderbook_xdp_v6_8.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_gpw_wse_orderbook_xdp_v6_8.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_gpw_wse_orderbook_xdp_v6_8.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_gpw_wse_orderbook_xdp_v6_8.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

-- Handle changed preferences
function omi_gpw_wse_orderbook_xdp_v6_8.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_gpw_wse_orderbook_xdp_v6_8.prefs.show_application_messages then
    show.application_messages = omi_gpw_wse_orderbook_xdp_v6_8.prefs.show_application_messages
  end
  if show.headers ~= omi_gpw_wse_orderbook_xdp_v6_8.prefs.show_headers then
    show.headers = omi_gpw_wse_orderbook_xdp_v6_8.prefs.show_headers
  end
  if show.structs ~= omi_gpw_wse_orderbook_xdp_v6_8.prefs.show_structs then
    show.structs = omi_gpw_wse_orderbook_xdp_v6_8.prefs.show_structs
  end
  if show.indexes ~= omi_gpw_wse_orderbook_xdp_v6_8.prefs.show_indexes then
    show.indexes = omi_gpw_wse_orderbook_xdp_v6_8.prefs.show_indexes
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


-- Zlib decompression: wireshark built in inflate (uncompress_zlib from 4.4, uncompress before)
local function zlib_decompress(range)
  local ok, decompressed = pcall(function() return range:uncompress_zlib("Decompressed") end)

  if ok then
    return decompressed
  end

  return range:uncompress("Decompressed")
end
-----------------------------------------------------------------------
-- Gpw Wse OrderBook Xdp 6.8 Fields
-----------------------------------------------------------------------

-- Action Type
gpw_wse_orderbook_xdp_v6_8.action_type = {}

-- Size: Action Type
gpw_wse_orderbook_xdp_v6_8.action_type.size = 1

-- Display: Action Type
gpw_wse_orderbook_xdp_v6_8.action_type.labels = {
  ["A"] = "Action Type: New Order (A)",
  ["M"] = "Action Type: Modification Of Existing Order Case Of Partial Fill (M)",
  ["D"] = "Action Type: Deletion Of Order Identified By Order Id (D)",
  ["F"] = "Action Type: Deletion All Orders For One Instrument At The Start Of The Day Before The Order Book Retransmission (F)",
  ["Y"] = "Action Type: Retransmission Of All Orders For The Given Instrument (Y)",
}

gpw_wse_orderbook_xdp_v6_8.action_type.display = function(value)
  return gpw_wse_orderbook_xdp_v6_8.action_type.labels[value] or "Action Type: Unknown("..value..")"
end

-- Dissect: Action Type
gpw_wse_orderbook_xdp_v6_8.action_type.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderbook_xdp_v6_8.action_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_orderbook_xdp_v6_8.action_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderbook_xdp_v6_8.fields.action_type, range, value, display)

  return offset + length, value
end

-- Aggregated Volume
gpw_wse_orderbook_xdp_v6_8.aggregated_volume = {}

-- Size: Aggregated Volume
gpw_wse_orderbook_xdp_v6_8.aggregated_volume.size = 4

-- Display: Aggregated Volume
gpw_wse_orderbook_xdp_v6_8.aggregated_volume.display = function(value)
  return "Aggregated Volume: "..value
end

-- Dissect: Aggregated Volume
gpw_wse_orderbook_xdp_v6_8.aggregated_volume.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderbook_xdp_v6_8.aggregated_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_orderbook_xdp_v6_8.aggregated_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderbook_xdp_v6_8.fields.aggregated_volume, range, value, display)

  return offset + length, value
end

-- Application Id
gpw_wse_orderbook_xdp_v6_8.application_id = {}

-- Size: Application Id
gpw_wse_orderbook_xdp_v6_8.application_id.size = 2

-- Display: Application Id
gpw_wse_orderbook_xdp_v6_8.application_id.labels = {
  ["W0"] = "Application Id: The Application Where The Orderbooks Are Retransmitted (W0)",
}

gpw_wse_orderbook_xdp_v6_8.application_id.display = function(value)
  return gpw_wse_orderbook_xdp_v6_8.application_id.labels[value] or "Application Id: Unknown("..value..")"
end

-- Dissect: Application Id
gpw_wse_orderbook_xdp_v6_8.application_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderbook_xdp_v6_8.application_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_orderbook_xdp_v6_8.application_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderbook_xdp_v6_8.fields.application_id, range, value, display)

  return offset + length, value
end

-- Delivery Flag
gpw_wse_orderbook_xdp_v6_8.delivery_flag = {}

-- Size: Delivery Flag
gpw_wse_orderbook_xdp_v6_8.delivery_flag.size = 1

-- Display: Delivery Flag
gpw_wse_orderbook_xdp_v6_8.delivery_flag.labels = {
  [0] = "Delivery Flag: Real Time Message Uncompressed (0)",
  [2] = "Delivery Flag: Retransmission Message Uncompressed (2)",
  [16] = "Delivery Flag: Real Time Message Zlib Compressed (16)",
  [17] = "Delivery Flag: Refresh Message Zlib Compressed (17)",
  [18] = "Delivery Flag: Retransmission Message Compressed (18)",
}

gpw_wse_orderbook_xdp_v6_8.delivery_flag.display = function(value)
  return gpw_wse_orderbook_xdp_v6_8.delivery_flag.labels[value] or "Delivery Flag: Unknown("..value..")"
end

-- Dissect: Delivery Flag
gpw_wse_orderbook_xdp_v6_8.delivery_flag.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderbook_xdp_v6_8.delivery_flag.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_orderbook_xdp_v6_8.delivery_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderbook_xdp_v6_8.fields.delivery_flag, range, value, display)

  return offset + length, value
end

-- Instance Num
gpw_wse_orderbook_xdp_v6_8.instance_num = {}

-- Size: Instance Num
gpw_wse_orderbook_xdp_v6_8.instance_num.size = 1

-- Display: Instance Num
gpw_wse_orderbook_xdp_v6_8.instance_num.display = function(value)
  return "Instance Num: "..value
end

-- Dissect: Instance Num
gpw_wse_orderbook_xdp_v6_8.instance_num.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderbook_xdp_v6_8.instance_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_orderbook_xdp_v6_8.instance_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderbook_xdp_v6_8.fields.instance_num, range, value, display)

  return offset + length, value
end

-- Link Id
gpw_wse_orderbook_xdp_v6_8.link_id = {}

-- Size: Link Id
gpw_wse_orderbook_xdp_v6_8.link_id.size = 4

-- Display: Link Id
gpw_wse_orderbook_xdp_v6_8.link_id.display = function(value)
  return "Link Id: "..value
end

-- Dissect: Link Id
gpw_wse_orderbook_xdp_v6_8.link_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderbook_xdp_v6_8.link_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_orderbook_xdp_v6_8.link_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderbook_xdp_v6_8.fields.link_id, range, value, display)

  return offset + length, value
end

-- Message Size
gpw_wse_orderbook_xdp_v6_8.message_size = {}

-- Size: Message Size
gpw_wse_orderbook_xdp_v6_8.message_size.size = 2

-- Display: Message Size
gpw_wse_orderbook_xdp_v6_8.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
gpw_wse_orderbook_xdp_v6_8.message_size.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderbook_xdp_v6_8.message_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_orderbook_xdp_v6_8.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderbook_xdp_v6_8.fields.message_size, range, value, display)

  return offset + length, value
end

-- Message Type
gpw_wse_orderbook_xdp_v6_8.message_type = {}

-- Size: Message Type
gpw_wse_orderbook_xdp_v6_8.message_type.size = 2

-- Display: Message Type
gpw_wse_orderbook_xdp_v6_8.message_type.labels = {
  [230] = "Message Type: Order Update Market Sheet Message (230)",
  [231] = "Message Type: Order Book Retransmission Delimiter Message (231)",
}

gpw_wse_orderbook_xdp_v6_8.message_type.display = function(value)
  return gpw_wse_orderbook_xdp_v6_8.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
gpw_wse_orderbook_xdp_v6_8.message_type.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderbook_xdp_v6_8.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_orderbook_xdp_v6_8.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderbook_xdp_v6_8.fields.message_type, range, value, display)

  return offset + length, value
end

-- Number Msg Entries
gpw_wse_orderbook_xdp_v6_8.number_msg_entries = {}

-- Size: Number Msg Entries
gpw_wse_orderbook_xdp_v6_8.number_msg_entries.size = 1

-- Display: Number Msg Entries
gpw_wse_orderbook_xdp_v6_8.number_msg_entries.display = function(value)
  return "Number Msg Entries: "..value
end

-- Dissect: Number Msg Entries
gpw_wse_orderbook_xdp_v6_8.number_msg_entries.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderbook_xdp_v6_8.number_msg_entries.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_orderbook_xdp_v6_8.number_msg_entries.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderbook_xdp_v6_8.fields.number_msg_entries, range, value, display)

  return offset + length, value
end

-- Number Orders
gpw_wse_orderbook_xdp_v6_8.number_orders = {}

-- Size: Number Orders
gpw_wse_orderbook_xdp_v6_8.number_orders.size = 2

-- Display: Number Orders
gpw_wse_orderbook_xdp_v6_8.number_orders.display = function(value)
  return "Number Orders: "..value
end

-- Dissect: Number Orders
gpw_wse_orderbook_xdp_v6_8.number_orders.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderbook_xdp_v6_8.number_orders.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_orderbook_xdp_v6_8.number_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderbook_xdp_v6_8.fields.number_orders, range, value, display)

  return offset + length, value
end

-- Order Date
gpw_wse_orderbook_xdp_v6_8.order_date = {}

-- Size: Order Date
gpw_wse_orderbook_xdp_v6_8.order_date.size = 4

-- Display: Order Date
gpw_wse_orderbook_xdp_v6_8.order_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Order Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Order Date
gpw_wse_orderbook_xdp_v6_8.order_date.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderbook_xdp_v6_8.order_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_orderbook_xdp_v6_8.order_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderbook_xdp_v6_8.fields.order_date, range, value, display)

  return offset + length, value
end

-- Order Id
gpw_wse_orderbook_xdp_v6_8.order_id = {}

-- Size: Order Id
gpw_wse_orderbook_xdp_v6_8.order_id.size = 4

-- Display: Order Id
gpw_wse_orderbook_xdp_v6_8.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
gpw_wse_orderbook_xdp_v6_8.order_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderbook_xdp_v6_8.order_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_orderbook_xdp_v6_8.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderbook_xdp_v6_8.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Origin
gpw_wse_orderbook_xdp_v6_8.order_origin = {}

-- Size: Order Origin
gpw_wse_orderbook_xdp_v6_8.order_origin.size = 1

-- Display: Order Origin
gpw_wse_orderbook_xdp_v6_8.order_origin.display = function(value)
  return "Order Origin: "..value
end

-- Dissect: Order Origin
gpw_wse_orderbook_xdp_v6_8.order_origin.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderbook_xdp_v6_8.order_origin.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_orderbook_xdp_v6_8.order_origin.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderbook_xdp_v6_8.fields.order_origin, range, value, display)

  return offset + length, value
end

-- Order Priority Date
gpw_wse_orderbook_xdp_v6_8.order_priority_date = {}

-- Size: Order Priority Date
gpw_wse_orderbook_xdp_v6_8.order_priority_date.size = 4

-- Display: Order Priority Date
gpw_wse_orderbook_xdp_v6_8.order_priority_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Order Priority Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Order Priority Date
gpw_wse_orderbook_xdp_v6_8.order_priority_date.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderbook_xdp_v6_8.order_priority_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_orderbook_xdp_v6_8.order_priority_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderbook_xdp_v6_8.fields.order_priority_date, range, value, display)

  return offset + length, value
end

-- Order Priority Micro Secs
gpw_wse_orderbook_xdp_v6_8.order_priority_micro_secs = {}

-- Size: Order Priority Micro Secs
gpw_wse_orderbook_xdp_v6_8.order_priority_micro_secs.size = 2

-- Display: Order Priority Micro Secs
gpw_wse_orderbook_xdp_v6_8.order_priority_micro_secs.display = function(value)
  return "Order Priority Micro Secs: "..value
end

-- Dissect: Order Priority Micro Secs
gpw_wse_orderbook_xdp_v6_8.order_priority_micro_secs.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderbook_xdp_v6_8.order_priority_micro_secs.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_orderbook_xdp_v6_8.order_priority_micro_secs.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderbook_xdp_v6_8.fields.order_priority_micro_secs, range, value, display)

  return offset + length, value
end

-- Order Priority Time
gpw_wse_orderbook_xdp_v6_8.order_priority_time = {}

-- Size: Order Priority Time
gpw_wse_orderbook_xdp_v6_8.order_priority_time.size = 4

-- Display: Order Priority Time
gpw_wse_orderbook_xdp_v6_8.order_priority_time.display = function(value)
  local hour = math.floor(value / 10000000)
  local minute = math.floor(value / 100000) % 100
  local second = math.floor(value / 1000) % 100
  local milli = value % 1000

  return string.format("Order Priority Time: %02d:%02d:%02d.%03d", hour, minute, second, milli)
end

-- Dissect: Order Priority Time
gpw_wse_orderbook_xdp_v6_8.order_priority_time.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderbook_xdp_v6_8.order_priority_time.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_orderbook_xdp_v6_8.order_priority_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderbook_xdp_v6_8.fields.order_priority_time, range, value, display)

  return offset + length, value
end

-- Order Type
gpw_wse_orderbook_xdp_v6_8.order_type = {}

-- Size: Order Type
gpw_wse_orderbook_xdp_v6_8.order_type.size = 1

-- Display: Order Type
gpw_wse_orderbook_xdp_v6_8.order_type.display = function(value)
  if value == "1" then
    return "Order Type: Market Order (1)"
  end
  if value == "2" then
    return "Order Type: Limit Order (2)"
  end
  if value == "K" then
    return "Order Type: Market To Limit Order (K)"
  end
  if value == "P" then
    return "Order Type: Peg Order (P)"
  end
  if value == 0 then
    return "Order Type: Not Provided Case Of Order Deletion Independently Of Reason"
  end

  return "Order Type: Unknown("..value..")"
end

-- Dissect: Order Type
gpw_wse_orderbook_xdp_v6_8.order_type.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderbook_xdp_v6_8.order_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = gpw_wse_orderbook_xdp_v6_8.order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderbook_xdp_v6_8.fields.order_type, range, value, display)

  return offset + length, value
end

-- Packet Length
gpw_wse_orderbook_xdp_v6_8.packet_length = {}

-- Size: Packet Length
gpw_wse_orderbook_xdp_v6_8.packet_length.size = 2

-- Display: Packet Length
gpw_wse_orderbook_xdp_v6_8.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
gpw_wse_orderbook_xdp_v6_8.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderbook_xdp_v6_8.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_orderbook_xdp_v6_8.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderbook_xdp_v6_8.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Packet Sequence Number
gpw_wse_orderbook_xdp_v6_8.packet_sequence_number = {}

-- Size: Packet Sequence Number
gpw_wse_orderbook_xdp_v6_8.packet_sequence_number.size = 4

-- Display: Packet Sequence Number
gpw_wse_orderbook_xdp_v6_8.packet_sequence_number.display = function(value)
  return "Packet Sequence Number: "..value
end

-- Dissect: Packet Sequence Number
gpw_wse_orderbook_xdp_v6_8.packet_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderbook_xdp_v6_8.packet_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_orderbook_xdp_v6_8.packet_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderbook_xdp_v6_8.fields.packet_sequence_number, range, value, display)

  return offset + length, value
end

-- Packet Type
gpw_wse_orderbook_xdp_v6_8.packet_type = {}

-- Size: Packet Type
gpw_wse_orderbook_xdp_v6_8.packet_type.size = 2

-- Display: Packet Type
gpw_wse_orderbook_xdp_v6_8.packet_type.labels = {
  [501] = "Packet Type: Market Data Messages (501)",
}

gpw_wse_orderbook_xdp_v6_8.packet_type.display = function(value)
  return gpw_wse_orderbook_xdp_v6_8.packet_type.labels[value] or "Packet Type: Unknown("..value..")"
end

-- Dissect: Packet Type
gpw_wse_orderbook_xdp_v6_8.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderbook_xdp_v6_8.packet_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_orderbook_xdp_v6_8.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderbook_xdp_v6_8.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Price
gpw_wse_orderbook_xdp_v6_8.price = {}

-- Size: Price
gpw_wse_orderbook_xdp_v6_8.price.size = 4

-- Display: Price
gpw_wse_orderbook_xdp_v6_8.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
gpw_wse_orderbook_xdp_v6_8.price.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderbook_xdp_v6_8.price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_orderbook_xdp_v6_8.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderbook_xdp_v6_8.fields.price, range, value, display)

  return offset + length, value
end

-- Price Scale Code
gpw_wse_orderbook_xdp_v6_8.price_scale_code = {}

-- Size: Price Scale Code
gpw_wse_orderbook_xdp_v6_8.price_scale_code.size = 1

-- Display: Price Scale Code
gpw_wse_orderbook_xdp_v6_8.price_scale_code.display = function(value)
  return "Price Scale Code: "..value
end

-- Dissect: Price Scale Code
gpw_wse_orderbook_xdp_v6_8.price_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderbook_xdp_v6_8.price_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_orderbook_xdp_v6_8.price_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderbook_xdp_v6_8.fields.price_scale_code, range, value, display)

  return offset + length, value
end

-- Reserved 1
gpw_wse_orderbook_xdp_v6_8.reserved_1 = {}

-- Size: Reserved 1
gpw_wse_orderbook_xdp_v6_8.reserved_1.size = 1

-- Display: Reserved 1
gpw_wse_orderbook_xdp_v6_8.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
gpw_wse_orderbook_xdp_v6_8.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderbook_xdp_v6_8.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = gpw_wse_orderbook_xdp_v6_8.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderbook_xdp_v6_8.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Retransmission Indicator
gpw_wse_orderbook_xdp_v6_8.retransmission_indicator = {}

-- Size: Retransmission Indicator
gpw_wse_orderbook_xdp_v6_8.retransmission_indicator.size = 1

-- Display: Retransmission Indicator
gpw_wse_orderbook_xdp_v6_8.retransmission_indicator.labels = {
  ["B"] = "Retransmission Indicator: Beginning Of The Retransmission (B)",
  ["E"] = "Retransmission Indicator: End Of The Retransmission (E)",
}

gpw_wse_orderbook_xdp_v6_8.retransmission_indicator.display = function(value)
  return gpw_wse_orderbook_xdp_v6_8.retransmission_indicator.labels[value] or "Retransmission Indicator: Unknown("..value..")"
end

-- Dissect: Retransmission Indicator
gpw_wse_orderbook_xdp_v6_8.retransmission_indicator.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderbook_xdp_v6_8.retransmission_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_orderbook_xdp_v6_8.retransmission_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderbook_xdp_v6_8.fields.retransmission_indicator, range, value, display)

  return offset + length, value
end

-- Send Time
gpw_wse_orderbook_xdp_v6_8.send_time = {}

-- Size: Send Time
gpw_wse_orderbook_xdp_v6_8.send_time.size = 4

-- Display: Send Time
gpw_wse_orderbook_xdp_v6_8.send_time.display = function(value)
  return "Send Time: "..value
end

-- Dissect: Send Time
gpw_wse_orderbook_xdp_v6_8.send_time.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderbook_xdp_v6_8.send_time.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_orderbook_xdp_v6_8.send_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderbook_xdp_v6_8.fields.send_time, range, value, display)

  return offset + length, value
end

-- Service Id
gpw_wse_orderbook_xdp_v6_8.service_id = {}

-- Size: Service Id
gpw_wse_orderbook_xdp_v6_8.service_id.size = 2

-- Display: Service Id
gpw_wse_orderbook_xdp_v6_8.service_id.display = function(value)
  return "Service Id: "..value
end

-- Dissect: Service Id
gpw_wse_orderbook_xdp_v6_8.service_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderbook_xdp_v6_8.service_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_orderbook_xdp_v6_8.service_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderbook_xdp_v6_8.fields.service_id, range, value, display)

  return offset + length, value
end

-- Side
gpw_wse_orderbook_xdp_v6_8.side = {}

-- Size: Side
gpw_wse_orderbook_xdp_v6_8.side.size = 1

-- Display: Side
gpw_wse_orderbook_xdp_v6_8.side.labels = {
  ["1"] = "Side: Buy (1)",
  ["2"] = "Side: Sell (2)",
  ["5"] = "Side: Sell Short Equivalent To Value 2 Sell Optional For Exchange Members And Not Monitored By The Wse (5)",
}

gpw_wse_orderbook_xdp_v6_8.side.display = function(value)
  return gpw_wse_orderbook_xdp_v6_8.side.labels[value] or "Side: Unknown("..value..")"
end

-- Dissect: Side
gpw_wse_orderbook_xdp_v6_8.side.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderbook_xdp_v6_8.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_orderbook_xdp_v6_8.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderbook_xdp_v6_8.fields.side, range, value, display)

  return offset + length, value
end

-- Source Seq Num
gpw_wse_orderbook_xdp_v6_8.source_seq_num = {}

-- Size: Source Seq Num
gpw_wse_orderbook_xdp_v6_8.source_seq_num.size = 4

-- Display: Source Seq Num
gpw_wse_orderbook_xdp_v6_8.source_seq_num.display = function(value)
  return "Source Seq Num: "..value
end

-- Dissect: Source Seq Num
gpw_wse_orderbook_xdp_v6_8.source_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderbook_xdp_v6_8.source_seq_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_orderbook_xdp_v6_8.source_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderbook_xdp_v6_8.fields.source_seq_num, range, value, display)

  return offset + length, value
end

-- Source Time
gpw_wse_orderbook_xdp_v6_8.source_time = {}

-- Size: Source Time
gpw_wse_orderbook_xdp_v6_8.source_time.size = 4

-- Display: Source Time
gpw_wse_orderbook_xdp_v6_8.source_time.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if gpw_wse_orderbook_xdp_v6_8.timestamp_format == 0 then
    return "Source Time: "..value
  end

  -- Parse milliseconds since midnight
  local seconds = math.floor(value / 1000)
  local milliseconds = value % 1000

  -- Full datetime mode (calculate from capture date + UTC offset)
  if gpw_wse_orderbook_xdp_v6_8.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = gpw_wse_orderbook_xdp_v6_8.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Source Time: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%03d", milliseconds)
  end

  -- Time of day mode
  return "Source Time: "..os.date("%H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Source Time
gpw_wse_orderbook_xdp_v6_8.source_time.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderbook_xdp_v6_8.source_time.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_orderbook_xdp_v6_8.source_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderbook_xdp_v6_8.fields.source_time, range, value, display)

  return offset + length, value
end

-- Source Time Micro Secs
gpw_wse_orderbook_xdp_v6_8.source_time_micro_secs = {}

-- Size: Source Time Micro Secs
gpw_wse_orderbook_xdp_v6_8.source_time_micro_secs.size = 2

-- Display: Source Time Micro Secs
gpw_wse_orderbook_xdp_v6_8.source_time_micro_secs.display = function(value)
  return "Source Time Micro Secs: "..value
end

-- Dissect: Source Time Micro Secs
gpw_wse_orderbook_xdp_v6_8.source_time_micro_secs.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderbook_xdp_v6_8.source_time_micro_secs.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_orderbook_xdp_v6_8.source_time_micro_secs.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderbook_xdp_v6_8.fields.source_time_micro_secs, range, value, display)

  return offset + length, value
end

-- Symbol Index
gpw_wse_orderbook_xdp_v6_8.symbol_index = {}

-- Size: Symbol Index
gpw_wse_orderbook_xdp_v6_8.symbol_index.size = 4

-- Display: Symbol Index
gpw_wse_orderbook_xdp_v6_8.symbol_index.display = function(value)
  return "Symbol Index: "..value
end

-- Dissect: Symbol Index
gpw_wse_orderbook_xdp_v6_8.symbol_index.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderbook_xdp_v6_8.symbol_index.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_orderbook_xdp_v6_8.symbol_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderbook_xdp_v6_8.fields.symbol_index, range, value, display)

  return offset + length, value
end

-- System Id
gpw_wse_orderbook_xdp_v6_8.system_id = {}

-- Size: System Id
gpw_wse_orderbook_xdp_v6_8.system_id.size = 4

-- Display: System Id
gpw_wse_orderbook_xdp_v6_8.system_id.labels = {
  [1] = "System Id: All Non Utp Systems (1)",
  [11] = "System Id: Utp Trading Unit 1 (11)",
  [12] = "System Id: Utp Trading Unit 2 (12)",
}

gpw_wse_orderbook_xdp_v6_8.system_id.display = function(value)
  return gpw_wse_orderbook_xdp_v6_8.system_id.labels[value] or "System Id: Unknown("..value..")"
end

-- Dissect: System Id
gpw_wse_orderbook_xdp_v6_8.system_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderbook_xdp_v6_8.system_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_orderbook_xdp_v6_8.system_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderbook_xdp_v6_8.fields.system_id, range, value, display)

  return offset + length, value
end

-- Volume
gpw_wse_orderbook_xdp_v6_8.volume = {}

-- Size: Volume
gpw_wse_orderbook_xdp_v6_8.volume.size = 4

-- Display: Volume
gpw_wse_orderbook_xdp_v6_8.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
gpw_wse_orderbook_xdp_v6_8.volume.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_orderbook_xdp_v6_8.volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_orderbook_xdp_v6_8.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_orderbook_xdp_v6_8.fields.volume, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Gpw Wse OrderBook Xdp 6.8
-----------------------------------------------------------------------

-- Order Book Retransmission Delimiter Message
gpw_wse_orderbook_xdp_v6_8.order_book_retransmission_delimiter_message = {}

-- Size: Order Book Retransmission Delimiter Message
gpw_wse_orderbook_xdp_v6_8.order_book_retransmission_delimiter_message.size =
  gpw_wse_orderbook_xdp_v6_8.source_time.size + 
  gpw_wse_orderbook_xdp_v6_8.source_seq_num.size + 
  gpw_wse_orderbook_xdp_v6_8.application_id.size + 
  gpw_wse_orderbook_xdp_v6_8.instance_num.size + 
  gpw_wse_orderbook_xdp_v6_8.retransmission_indicator.size

-- Display: Order Book Retransmission Delimiter Message
gpw_wse_orderbook_xdp_v6_8.order_book_retransmission_delimiter_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book Retransmission Delimiter Message
gpw_wse_orderbook_xdp_v6_8.order_book_retransmission_delimiter_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary Int.
  index, source_time = gpw_wse_orderbook_xdp_v6_8.source_time.dissect(buffer, index, packet, parent)

  -- Source Seq Num: Binary Int.
  index, source_seq_num = gpw_wse_orderbook_xdp_v6_8.source_seq_num.dissect(buffer, index, packet, parent)

  -- Application Id: ASCII Str.
  index, application_id = gpw_wse_orderbook_xdp_v6_8.application_id.dissect(buffer, index, packet, parent)

  -- Instance Num: Binary Int.
  index, instance_num = gpw_wse_orderbook_xdp_v6_8.instance_num.dissect(buffer, index, packet, parent)

  -- Retransmission Indicator: ASCII Ch.
  index, retransmission_indicator = gpw_wse_orderbook_xdp_v6_8.retransmission_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book Retransmission Delimiter Message
gpw_wse_orderbook_xdp_v6_8.order_book_retransmission_delimiter_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_orderbook_xdp_v6_8.fields.order_book_retransmission_delimiter_message, buffer(offset, 0))
    local index = gpw_wse_orderbook_xdp_v6_8.order_book_retransmission_delimiter_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_orderbook_xdp_v6_8.order_book_retransmission_delimiter_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_orderbook_xdp_v6_8.order_book_retransmission_delimiter_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Update Market Sheet Message
gpw_wse_orderbook_xdp_v6_8.order_update_market_sheet_message = {}

-- Size: Order Update Market Sheet Message
gpw_wse_orderbook_xdp_v6_8.order_update_market_sheet_message.size =
  gpw_wse_orderbook_xdp_v6_8.symbol_index.size + 
  gpw_wse_orderbook_xdp_v6_8.source_time.size + 
  gpw_wse_orderbook_xdp_v6_8.source_seq_num.size + 
  gpw_wse_orderbook_xdp_v6_8.price.size + 
  gpw_wse_orderbook_xdp_v6_8.aggregated_volume.size + 
  gpw_wse_orderbook_xdp_v6_8.volume.size + 
  gpw_wse_orderbook_xdp_v6_8.link_id.size + 
  gpw_wse_orderbook_xdp_v6_8.order_id.size + 
  gpw_wse_orderbook_xdp_v6_8.system_id.size + 
  gpw_wse_orderbook_xdp_v6_8.source_time_micro_secs.size + 
  gpw_wse_orderbook_xdp_v6_8.number_orders.size + 
  gpw_wse_orderbook_xdp_v6_8.side.size + 
  gpw_wse_orderbook_xdp_v6_8.order_type.size + 
  gpw_wse_orderbook_xdp_v6_8.action_type.size + 
  gpw_wse_orderbook_xdp_v6_8.price_scale_code.size + 
  gpw_wse_orderbook_xdp_v6_8.order_date.size + 
  gpw_wse_orderbook_xdp_v6_8.order_priority_date.size + 
  gpw_wse_orderbook_xdp_v6_8.order_priority_time.size + 
  gpw_wse_orderbook_xdp_v6_8.order_priority_micro_secs.size + 
  gpw_wse_orderbook_xdp_v6_8.order_origin.size + 
  gpw_wse_orderbook_xdp_v6_8.reserved_1.size

-- Display: Order Update Market Sheet Message
gpw_wse_orderbook_xdp_v6_8.order_update_market_sheet_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Update Market Sheet Message
gpw_wse_orderbook_xdp_v6_8.order_update_market_sheet_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary Int.
  index, symbol_index = gpw_wse_orderbook_xdp_v6_8.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Time: Binary Int.
  index, source_time = gpw_wse_orderbook_xdp_v6_8.source_time.dissect(buffer, index, packet, parent)

  -- Source Seq Num: Binary Int.
  index, source_seq_num = gpw_wse_orderbook_xdp_v6_8.source_seq_num.dissect(buffer, index, packet, parent)

  -- Price: Binary Int.
  index, price = gpw_wse_orderbook_xdp_v6_8.price.dissect(buffer, index, packet, parent)

  -- Aggregated Volume: Binary Int.
  index, aggregated_volume = gpw_wse_orderbook_xdp_v6_8.aggregated_volume.dissect(buffer, index, packet, parent)

  -- Volume: Binary Int.
  index, volume = gpw_wse_orderbook_xdp_v6_8.volume.dissect(buffer, index, packet, parent)

  -- Link Id: Binary Int.
  index, link_id = gpw_wse_orderbook_xdp_v6_8.link_id.dissect(buffer, index, packet, parent)

  -- Order Id: Binary Int.
  index, order_id = gpw_wse_orderbook_xdp_v6_8.order_id.dissect(buffer, index, packet, parent)

  -- System Id: Binary Int.
  index, system_id = gpw_wse_orderbook_xdp_v6_8.system_id.dissect(buffer, index, packet, parent)

  -- Source Time Micro Secs: Binary Int.
  index, source_time_micro_secs = gpw_wse_orderbook_xdp_v6_8.source_time_micro_secs.dissect(buffer, index, packet, parent)

  -- Number Orders: Binary Int.
  index, number_orders = gpw_wse_orderbook_xdp_v6_8.number_orders.dissect(buffer, index, packet, parent)

  -- Side: ASCII Ch.
  index, side = gpw_wse_orderbook_xdp_v6_8.side.dissect(buffer, index, packet, parent)

  -- Order Type: ASCII Ch.
  index, order_type = gpw_wse_orderbook_xdp_v6_8.order_type.dissect(buffer, index, packet, parent)

  -- Action Type: ASCII Ch.
  index, action_type = gpw_wse_orderbook_xdp_v6_8.action_type.dissect(buffer, index, packet, parent)

  -- Price Scale Code: Binary Int.
  index, price_scale_code = gpw_wse_orderbook_xdp_v6_8.price_scale_code.dissect(buffer, index, packet, parent)

  -- Order Date: Binary Int.
  index, order_date = gpw_wse_orderbook_xdp_v6_8.order_date.dissect(buffer, index, packet, parent)

  -- Order Priority Date: Binary Int.
  index, order_priority_date = gpw_wse_orderbook_xdp_v6_8.order_priority_date.dissect(buffer, index, packet, parent)

  -- Order Priority Time: Binary Int.
  index, order_priority_time = gpw_wse_orderbook_xdp_v6_8.order_priority_time.dissect(buffer, index, packet, parent)

  -- Order Priority Micro Secs: Binary Int.
  index, order_priority_micro_secs = gpw_wse_orderbook_xdp_v6_8.order_priority_micro_secs.dissect(buffer, index, packet, parent)

  -- Order Origin: ASCII Ch.
  index, order_origin = gpw_wse_orderbook_xdp_v6_8.order_origin.dissect(buffer, index, packet, parent)

  -- Reserved 1: Binary Int.
  index, reserved_1 = gpw_wse_orderbook_xdp_v6_8.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Update Market Sheet Message
gpw_wse_orderbook_xdp_v6_8.order_update_market_sheet_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_orderbook_xdp_v6_8.fields.order_update_market_sheet_message, buffer(offset, 0))
    local index = gpw_wse_orderbook_xdp_v6_8.order_update_market_sheet_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_orderbook_xdp_v6_8.order_update_market_sheet_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_orderbook_xdp_v6_8.order_update_market_sheet_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
gpw_wse_orderbook_xdp_v6_8.payload = {}

-- Dissect: Payload
gpw_wse_orderbook_xdp_v6_8.payload.dispatch = {
  [230] = gpw_wse_orderbook_xdp_v6_8.order_update_market_sheet_message.dissect,
  [231] = gpw_wse_orderbook_xdp_v6_8.order_book_retransmission_delimiter_message.dissect,
}

gpw_wse_orderbook_xdp_v6_8.payload.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = gpw_wse_orderbook_xdp_v6_8.payload.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
gpw_wse_orderbook_xdp_v6_8.message_header = {}

-- Size: Message Header
gpw_wse_orderbook_xdp_v6_8.message_header.size =
  gpw_wse_orderbook_xdp_v6_8.message_size.size + 
  gpw_wse_orderbook_xdp_v6_8.message_type.size

-- Display: Message Header
gpw_wse_orderbook_xdp_v6_8.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
gpw_wse_orderbook_xdp_v6_8.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: Binary Int.
  index, message_size = gpw_wse_orderbook_xdp_v6_8.message_size.dissect(buffer, index, packet, parent)

  -- Message Type: Binary Int.
  index, message_type = gpw_wse_orderbook_xdp_v6_8.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
gpw_wse_orderbook_xdp_v6_8.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_orderbook_xdp_v6_8.fields.message_header, buffer(offset, 0))
    local index = gpw_wse_orderbook_xdp_v6_8.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_orderbook_xdp_v6_8.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_orderbook_xdp_v6_8.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
gpw_wse_orderbook_xdp_v6_8.message = {}

-- Display: Message
gpw_wse_orderbook_xdp_v6_8.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
gpw_wse_orderbook_xdp_v6_8.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_gpw_wse_orderbook_xdp_v6_8.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = gpw_wse_orderbook_xdp_v6_8.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 2, 2):uint()

  -- Payload: Runtime Type with 2 branches
  index = gpw_wse_orderbook_xdp_v6_8.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
gpw_wse_orderbook_xdp_v6_8.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_gpw_wse_orderbook_xdp_v6_8.fields.message, buffer(offset, 0))
    local current = gpw_wse_orderbook_xdp_v6_8.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = gpw_wse_orderbook_xdp_v6_8.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    gpw_wse_orderbook_xdp_v6_8.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Packet Header
gpw_wse_orderbook_xdp_v6_8.packet_header = {}

-- Size: Packet Header
gpw_wse_orderbook_xdp_v6_8.packet_header.size =
  gpw_wse_orderbook_xdp_v6_8.packet_length.size + 
  gpw_wse_orderbook_xdp_v6_8.packet_type.size + 
  gpw_wse_orderbook_xdp_v6_8.packet_sequence_number.size + 
  gpw_wse_orderbook_xdp_v6_8.send_time.size + 
  gpw_wse_orderbook_xdp_v6_8.service_id.size + 
  gpw_wse_orderbook_xdp_v6_8.delivery_flag.size + 
  gpw_wse_orderbook_xdp_v6_8.number_msg_entries.size

-- Display: Packet Header
gpw_wse_orderbook_xdp_v6_8.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
gpw_wse_orderbook_xdp_v6_8.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: Binary Int.
  index, packet_length = gpw_wse_orderbook_xdp_v6_8.packet_length.dissect(buffer, index, packet, parent)

  -- Packet Type: Binary Int.
  index, packet_type = gpw_wse_orderbook_xdp_v6_8.packet_type.dissect(buffer, index, packet, parent)

  -- Packet Sequence Number: Binary Int.
  index, packet_sequence_number = gpw_wse_orderbook_xdp_v6_8.packet_sequence_number.dissect(buffer, index, packet, parent)

  -- Send Time: Binary Int.
  index, send_time = gpw_wse_orderbook_xdp_v6_8.send_time.dissect(buffer, index, packet, parent)

  -- Service Id: Binary Int.
  index, service_id = gpw_wse_orderbook_xdp_v6_8.service_id.dissect(buffer, index, packet, parent)

  -- Delivery Flag: Binary Int.
  index, delivery_flag = gpw_wse_orderbook_xdp_v6_8.delivery_flag.dissect(buffer, index, packet, parent)

  -- Number Msg Entries: Binary Int.
  index, number_msg_entries = gpw_wse_orderbook_xdp_v6_8.number_msg_entries.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
gpw_wse_orderbook_xdp_v6_8.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_orderbook_xdp_v6_8.fields.packet_header, buffer(offset, 0))
    local index = gpw_wse_orderbook_xdp_v6_8.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_orderbook_xdp_v6_8.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_orderbook_xdp_v6_8.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
gpw_wse_orderbook_xdp_v6_8.packet = {}

-- Verify required size of Udp packet
gpw_wse_orderbook_xdp_v6_8.packet.requiredsize = function(buffer)
  return buffer:len() >= gpw_wse_orderbook_xdp_v6_8.packet_header.size
end

-- Dissect Packet
gpw_wse_orderbook_xdp_v6_8.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 7 fields
  index, packet_header = gpw_wse_orderbook_xdp_v6_8.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Delivery Flag
  local delivery_flag = buffer(index - 2, 1):uint()

  local message_conversion = delivery_flag > 15

  if message_conversion then
    buffer = zlib_decompress(buffer(index, buffer:len() - index))
    index = 0
  end

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Size
    local message_size = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_size + 2

    -- Message: Struct of 2 fields
    index, message = gpw_wse_orderbook_xdp_v6_8.message.dissect(buffer, index, packet, parent, size_of_message, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_gpw_wse_orderbook_xdp_v6_8.init()
end

-- Dissector for Gpw Wse OrderBook Xdp 6.8
function omi_gpw_wse_orderbook_xdp_v6_8.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_gpw_wse_orderbook_xdp_v6_8.name

  -- Dissect protocol
  local protocol = parent:add(omi_gpw_wse_orderbook_xdp_v6_8, buffer(), omi_gpw_wse_orderbook_xdp_v6_8.description, "("..buffer:len().." Bytes)")
  return gpw_wse_orderbook_xdp_v6_8.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
gpw_wse_orderbook_xdp_v6_8.packet.fingerprint = function(buffer)
  if buffer:len() < 20 then
    return false
  end

  local message_type = buffer(18, 2):uint()

  -- Order Update Market Sheet Message
  if message_type == 230 then
    return true
  end

  -- Order Book Retransmission Delimiter Message
  if message_type == 231 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Gpw Wse OrderBook Xdp 6.8 (Udp)
local function omi_gpw_wse_orderbook_xdp_v6_8_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not gpw_wse_orderbook_xdp_v6_8.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this udp packet message dispatch
  if not gpw_wse_orderbook_xdp_v6_8.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_gpw_wse_orderbook_xdp_v6_8
  omi_gpw_wse_orderbook_xdp_v6_8.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Gpw Wse OrderBook Xdp 6.8
omi_gpw_wse_orderbook_xdp_v6_8:register_heuristic("udp", omi_gpw_wse_orderbook_xdp_v6_8_udp_heuristic)

-- Register Gpw Wse OrderBook Xdp 6.8 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_gpw_wse_orderbook_xdp_v6_8)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Giełda Papierów Wartościowych w Warszawie
--   Version: 6.8
--   Date: Tuesday, February 11, 2020
--   Specification: WSE_CDE_XDP_Message_Specifications_v_68.pdf
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
