-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nse NseFo Mtbt Binary 7.0 Protocol
local omi_nse_nsefo_mtbt_binary_v7_0 = Proto("Omi.Nse.NseFo.Mtbt.Binary.v7.0", "Nse NseFo Mtbt Binary 7.0")

-- Protocol table
local nse_nsefo_mtbt_binary_v7_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nse NseFo Mtbt Binary 7.0 Fields
omi_nse_nsefo_mtbt_binary_v7_0.fields.buy_order_id = ProtoField.new("Buy Order Id", "nse.nsefo.mtbt.binary.v7.0.buyorderid", ftypes.DOUBLE, nil, nil, nil, "Day Unique Order Reference Number for Buy-Side Order")
omi_nse_nsefo_mtbt_binary_v7_0.fields.last_sequence_no = ProtoField.new("Last Sequence No", "nse.nsefo.mtbt.binary.v7.0.lastsequenceno", ftypes.UINT32, nil, nil, nil, "Last sent data sequence no. of the Stream")
omi_nse_nsefo_mtbt_binary_v7_0.fields.message_length = ProtoField.new("Message Length", "nse.nsefo.mtbt.binary.v7.0.messagelength", ftypes.INT16, nil, nil, nil, "Total size of the packet including Stream Header and Stream Data [2, Short]")
omi_nse_nsefo_mtbt_binary_v7_0.fields.message_type = ProtoField.new("Message Type", "nse.nsefo.mtbt.binary.v7.0.messagetype", ftypes.STRING, nil, nil, nil, "cMsgType. Code identifying message type [1, Char]")
omi_nse_nsefo_mtbt_binary_v7_0.fields.order_id = ProtoField.new("Order Id", "nse.nsefo.mtbt.binary.v7.0.orderid", ftypes.DOUBLE, nil, nil, nil, "Day Unique Order Reference Number")
omi_nse_nsefo_mtbt_binary_v7_0.fields.order_type = ProtoField.new("Order Type", "nse.nsefo.mtbt.binary.v7.0.ordertype", ftypes.STRING, nil, nil, nil, "Order Type Values")
omi_nse_nsefo_mtbt_binary_v7_0.fields.price = ProtoField.new("Price", "nse.nsefo.mtbt.binary.v7.0.price", ftypes.DOUBLE, nil, nil, nil, "Price of the order (In Paise)")
omi_nse_nsefo_mtbt_binary_v7_0.fields.quantity = ProtoField.new("Quantity", "nse.nsefo.mtbt.binary.v7.0.quantity", ftypes.INT32, nil, nil, nil, "Quantity of the order")
omi_nse_nsefo_mtbt_binary_v7_0.fields.sell_order_id = ProtoField.new("Sell Order Id", "nse.nsefo.mtbt.binary.v7.0.sellorderid", ftypes.DOUBLE, nil, nil, nil, "Day Unique Order Reference Number for Sell-Side Order")
omi_nse_nsefo_mtbt_binary_v7_0.fields.sequence_number = ProtoField.new("Sequence Number", "nse.nsefo.mtbt.binary.v7.0.sequencenumber", ftypes.UINT32, nil, nil, nil, "Sequence number of the packet for this Stream Id. For Equity Derivative (FO) segment, this field is unsigned int [4, Uint]")
omi_nse_nsefo_mtbt_binary_v7_0.fields.stream_id = ProtoField.new("Stream Id", "nse.nsefo.mtbt.binary.v7.0.streamid", ftypes.INT16, nil, nil, nil, "Identifies a particular stream [2, Short]")
omi_nse_nsefo_mtbt_binary_v7_0.fields.timestamp = ProtoField.new("Timestamp", "nse.nsefo.mtbt.binary.v7.0.timestamp", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time in nanoseconds from 01-Jan-1980 00:00:00")
omi_nse_nsefo_mtbt_binary_v7_0.fields.timestamp_utc = ProtoField.new("Timestamp", "nse.nsefo.mtbt.binary.v7.0.timestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time in nanoseconds from 01-Jan-1980 00:00:00")
omi_nse_nsefo_mtbt_binary_v7_0.fields.token = ProtoField.new("Token", "nse.nsefo.mtbt.binary.v7.0.token", ftypes.INT32, nil, nil, nil, "Unique Contract Identifier")
omi_nse_nsefo_mtbt_binary_v7_0.fields.trade_price = ProtoField.new("Trade Price", "nse.nsefo.mtbt.binary.v7.0.tradeprice", ftypes.DOUBLE, nil, nil, nil, "Trade Price (In Paise)")
omi_nse_nsefo_mtbt_binary_v7_0.fields.trade_quantity = ProtoField.new("Trade Quantity", "nse.nsefo.mtbt.binary.v7.0.tradequantity", ftypes.INT32)

-- Nse NseFo Mtbt Binary 7.0 Framing
omi_nse_nsefo_mtbt_binary_v7_0.fields.message = ProtoField.new("Message", "nse.nsefo.mtbt.binary.v7.0.message", ftypes.STRING, nil, nil, nil, "STREAM_DATA. First field is always Message Type and must be read/interpreted first.")
omi_nse_nsefo_mtbt_binary_v7_0.fields.packet = ProtoField.new("Packet", "nse.nsefo.mtbt.binary.v7.0.packet", ftypes.STRING, nil, nil, nil, "Mtbt Udp Packet. One STREAM_DATA message per packet.")
omi_nse_nsefo_mtbt_binary_v7_0.fields.stream_header = ProtoField.new("Stream Header", "nse.nsefo.mtbt.binary.v7.0.streamheader", ftypes.STRING, nil, nil, nil, "STREAM_HEADER")

-- Nse NseFo Mtbt 7.0 Application Messages
omi_nse_nsefo_mtbt_binary_v7_0.fields.heartbeat_message = ProtoField.new("Heartbeat Message", "nse.nsefo.mtbt.binary.v7.0.heartbeatmessage", ftypes.STRING, nil, nil, nil, "Heartbeat message will be sent when there is no data available for a few seconds. Only applicable for UDP TBT multicast channels.")
omi_nse_nsefo_mtbt_binary_v7_0.fields.new_order_message = ProtoField.new("New Order Message", "nse.nsefo.mtbt.binary.v7.0.newordermessage", ftypes.STRING, nil, nil, nil, "For every new order request, this message is sent.")
omi_nse_nsefo_mtbt_binary_v7_0.fields.new_spread_order_message = ProtoField.new("New Spread Order Message", "nse.nsefo.mtbt.binary.v7.0.newspreadordermessage", ftypes.STRING, nil, nil, nil, "FO and CD segments only. For every new spread order request, this message is sent.")
omi_nse_nsefo_mtbt_binary_v7_0.fields.order_cancellation_message = ProtoField.new("Order Cancellation Message", "nse.nsefo.mtbt.binary.v7.0.ordercancellationmessage", ftypes.STRING, nil, nil, nil, "For every order cancellation request, this message is sent.")
omi_nse_nsefo_mtbt_binary_v7_0.fields.order_modification_message = ProtoField.new("Order Modification Message", "nse.nsefo.mtbt.binary.v7.0.ordermodificationmessage", ftypes.STRING, nil, nil, nil, "For every order modification request, this message is sent.")
omi_nse_nsefo_mtbt_binary_v7_0.fields.spread_order_cancellation_message = ProtoField.new("Spread Order Cancellation Message", "nse.nsefo.mtbt.binary.v7.0.spreadordercancellationmessage", ftypes.STRING, nil, nil, nil, "FO and CD segments only. For every spread order cancellation request, this message is sent.")
omi_nse_nsefo_mtbt_binary_v7_0.fields.spread_order_modification_message = ProtoField.new("Spread Order Modification Message", "nse.nsefo.mtbt.binary.v7.0.spreadordermodificationmessage", ftypes.STRING, nil, nil, nil, "FO and CD segments only. For every spread order modification request, this message is sent.")
omi_nse_nsefo_mtbt_binary_v7_0.fields.spread_trade_message = ProtoField.new("Spread Trade Message", "nse.nsefo.mtbt.binary.v7.0.spreadtrademessage", ftypes.STRING, nil, nil, nil, "FO and CD segments only. This message is sent whenever a spread order in the order book gets executed fully or partially.")
omi_nse_nsefo_mtbt_binary_v7_0.fields.trade_cancel_message = ProtoField.new("Trade Cancel Message", "nse.nsefo.mtbt.binary.v7.0.tradecancelmessage", ftypes.STRING, nil, nil, nil, "For CM and FO segments only. This message is sent whenever a Trade gets cancelled.")
omi_nse_nsefo_mtbt_binary_v7_0.fields.trade_message = ProtoField.new("Trade Message", "nse.nsefo.mtbt.binary.v7.0.trademessage", ftypes.STRING, nil, nil, nil, "This message is sent whenever an order in the order book gets executed fully or partially.")

-----------------------------------------------------------------------
-- Nse NseFo Mtbt Binary 7.0 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
nse_nsefo_mtbt_binary_v7_0.absolute_time_base = 0


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nse NseFo Mtbt Binary 7.0 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.sequences = true

-- Register Nse NseFo Mtbt Binary 7.0 Show Options
omi_nse_nsefo_mtbt_binary_v7_0.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nse_nsefo_mtbt_binary_v7_0.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nse_nsefo_mtbt_binary_v7_0.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nse_nsefo_mtbt_binary_v7_0.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")

omi_nse_nsefo_mtbt_binary_v7_0.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_nse_nsefo_mtbt_binary_v7_0.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nse_nsefo_mtbt_binary_v7_0.prefs.show_application_messages then
    show.application_messages = omi_nse_nsefo_mtbt_binary_v7_0.prefs.show_application_messages
  end
  if show.headers ~= omi_nse_nsefo_mtbt_binary_v7_0.prefs.show_headers then
    show.headers = omi_nse_nsefo_mtbt_binary_v7_0.prefs.show_headers
  end
  if show.structs ~= omi_nse_nsefo_mtbt_binary_v7_0.prefs.show_structs then
    show.structs = omi_nse_nsefo_mtbt_binary_v7_0.prefs.show_structs
  end
  if show.sequences ~= omi_nse_nsefo_mtbt_binary_v7_0.prefs.show_sequences then
    show.sequences = omi_nse_nsefo_mtbt_binary_v7_0.prefs.show_sequences
  end
  if nse_nsefo_mtbt_binary_v7_0.absolute_time_base ~= omi_nse_nsefo_mtbt_binary_v7_0.prefs.absolute_time_base then
    nse_nsefo_mtbt_binary_v7_0.absolute_time_base = omi_nse_nsefo_mtbt_binary_v7_0.prefs.absolute_time_base
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
nse_nsefo_mtbt_binary_v7_0.conversation = {}
nse_nsefo_mtbt_binary_v7_0.conversation.flows = {}

-- Revisit replay cursor for stream sequences: which frame is being
-- re-dissected and which memoized occurrence within it is next
nse_nsefo_mtbt_binary_v7_0.stream_frame = nil
nse_nsefo_mtbt_binary_v7_0.stream_occurrence = 0

-- Conversation key for the current packet (src/dst tuple)
nse_nsefo_mtbt_binary_v7_0.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
nse_nsefo_mtbt_binary_v7_0.conversation.data = function(packet)
  local key = nse_nsefo_mtbt_binary_v7_0.conversation.key(packet)
  local data = nse_nsefo_mtbt_binary_v7_0.conversation.flows[key]
  if data == nil then
    data = { sequence = { next = nil, frames = {} } }
    nse_nsefo_mtbt_binary_v7_0.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
nse_nsefo_mtbt_binary_v7_0.conversation.current = nil


-----------------------------------------------------------------------
-- Nse NseFo Mtbt Binary 7.0 Fields
-----------------------------------------------------------------------

-- Buy Order Id
nse_nsefo_mtbt_binary_v7_0.buy_order_id = {}

-- Size: Buy Order Id
nse_nsefo_mtbt_binary_v7_0.buy_order_id.size = 8

-- Display: Buy Order Id
nse_nsefo_mtbt_binary_v7_0.buy_order_id.display = function(value)
  return "Buy Order Id: "..string.format("%.0f", value)
end

-- Dissect: Buy Order Id
nse_nsefo_mtbt_binary_v7_0.buy_order_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_mtbt_binary_v7_0.buy_order_id.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nse_nsefo_mtbt_binary_v7_0.buy_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_mtbt_binary_v7_0.fields.buy_order_id, range, value, display)

  return offset + length, value
end

-- Last Sequence No
nse_nsefo_mtbt_binary_v7_0.last_sequence_no = {}

-- Size: Last Sequence No
nse_nsefo_mtbt_binary_v7_0.last_sequence_no.size = 4

-- Display: Last Sequence No
nse_nsefo_mtbt_binary_v7_0.last_sequence_no.display = function(value)
  return "Last Sequence No: "..value
end

-- Dissect: Last Sequence No
nse_nsefo_mtbt_binary_v7_0.last_sequence_no.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_mtbt_binary_v7_0.last_sequence_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nse_nsefo_mtbt_binary_v7_0.last_sequence_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_mtbt_binary_v7_0.fields.last_sequence_no, range, value, display)

  return offset + length, value
end

-- Message Length
nse_nsefo_mtbt_binary_v7_0.message_length = {}

-- Size: Message Length
nse_nsefo_mtbt_binary_v7_0.message_length.size = 2

-- Display: Message Length
nse_nsefo_mtbt_binary_v7_0.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nse_nsefo_mtbt_binary_v7_0.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_mtbt_binary_v7_0.message_length.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nse_nsefo_mtbt_binary_v7_0.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_mtbt_binary_v7_0.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
nse_nsefo_mtbt_binary_v7_0.message_type = {}

-- Size: Message Type
nse_nsefo_mtbt_binary_v7_0.message_type.size = 1

-- Display: Message Type
nse_nsefo_mtbt_binary_v7_0.message_type.labels = {
  ["N"] = "Message Type: New Order Message (N)",
  ["M"] = "Message Type: Order Modification Message (M)",
  ["X"] = "Message Type: Order Cancellation Message (X)",
  ["T"] = "Message Type: Trade Message (T)",
  ["G"] = "Message Type: New Spread Order Message (G)",
  ["H"] = "Message Type: Spread Order Modification Message (H)",
  ["J"] = "Message Type: Spread Order Cancellation Message (J)",
  ["K"] = "Message Type: Spread Trade Message (K)",
  ["C"] = "Message Type: Trade Cancel Message (C)",
  ["Z"] = "Message Type: Heartbeat Message (Z)",
}

nse_nsefo_mtbt_binary_v7_0.message_type.display = function(value)
  return nse_nsefo_mtbt_binary_v7_0.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nse_nsefo_mtbt_binary_v7_0.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_mtbt_binary_v7_0.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_mtbt_binary_v7_0.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_mtbt_binary_v7_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Order Id
nse_nsefo_mtbt_binary_v7_0.order_id = {}

-- Size: Order Id
nse_nsefo_mtbt_binary_v7_0.order_id.size = 8

-- Display: Order Id
nse_nsefo_mtbt_binary_v7_0.order_id.display = function(value)
  return "Order Id: "..string.format("%.0f", value)
end

-- Dissect: Order Id
nse_nsefo_mtbt_binary_v7_0.order_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_mtbt_binary_v7_0.order_id.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nse_nsefo_mtbt_binary_v7_0.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_mtbt_binary_v7_0.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Type
nse_nsefo_mtbt_binary_v7_0.order_type = {}

-- Size: Order Type
nse_nsefo_mtbt_binary_v7_0.order_type.size = 1

-- Display: Order Type
nse_nsefo_mtbt_binary_v7_0.order_type.labels = {
  ["B"] = "Order Type: Buy Order (B)",
  ["S"] = "Order Type: Sell Order (S)",
}

nse_nsefo_mtbt_binary_v7_0.order_type.display = function(value)
  return nse_nsefo_mtbt_binary_v7_0.order_type.labels[value] or "Order Type: Unknown("..value..")"
end

-- Dissect: Order Type
nse_nsefo_mtbt_binary_v7_0.order_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_mtbt_binary_v7_0.order_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_mtbt_binary_v7_0.order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_mtbt_binary_v7_0.fields.order_type, range, value, display)

  return offset + length, value
end

-- Price
nse_nsefo_mtbt_binary_v7_0.price = {}

-- Size: Price
nse_nsefo_mtbt_binary_v7_0.price.size = 4

-- Display: Price
nse_nsefo_mtbt_binary_v7_0.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
nse_nsefo_mtbt_binary_v7_0.price.translate = function(raw)
  return raw/100
end

-- Dissect: Price
nse_nsefo_mtbt_binary_v7_0.price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_mtbt_binary_v7_0.price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nse_nsefo_mtbt_binary_v7_0.price.translate(raw)
  local display = nse_nsefo_mtbt_binary_v7_0.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_mtbt_binary_v7_0.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity
nse_nsefo_mtbt_binary_v7_0.quantity = {}

-- Size: Quantity
nse_nsefo_mtbt_binary_v7_0.quantity.size = 4

-- Display: Quantity
nse_nsefo_mtbt_binary_v7_0.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
nse_nsefo_mtbt_binary_v7_0.quantity.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_mtbt_binary_v7_0.quantity.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nse_nsefo_mtbt_binary_v7_0.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_mtbt_binary_v7_0.fields.quantity, range, value, display)

  return offset + length, value
end

-- Sell Order Id
nse_nsefo_mtbt_binary_v7_0.sell_order_id = {}

-- Size: Sell Order Id
nse_nsefo_mtbt_binary_v7_0.sell_order_id.size = 8

-- Display: Sell Order Id
nse_nsefo_mtbt_binary_v7_0.sell_order_id.display = function(value)
  return "Sell Order Id: "..string.format("%.0f", value)
end

-- Dissect: Sell Order Id
nse_nsefo_mtbt_binary_v7_0.sell_order_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_mtbt_binary_v7_0.sell_order_id.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nse_nsefo_mtbt_binary_v7_0.sell_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_mtbt_binary_v7_0.fields.sell_order_id, range, value, display)

  return offset + length, value
end

-- Sequence Number
nse_nsefo_mtbt_binary_v7_0.sequence_number = {}

-- Size: Sequence Number
nse_nsefo_mtbt_binary_v7_0.sequence_number.size = 4

-- Display: Sequence Number
nse_nsefo_mtbt_binary_v7_0.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nse_nsefo_mtbt_binary_v7_0.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_mtbt_binary_v7_0.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nse_nsefo_mtbt_binary_v7_0.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_mtbt_binary_v7_0.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Stream Id
nse_nsefo_mtbt_binary_v7_0.stream_id = {}

-- Size: Stream Id
nse_nsefo_mtbt_binary_v7_0.stream_id.size = 2

-- Display: Stream Id
nse_nsefo_mtbt_binary_v7_0.stream_id.display = function(value)
  return "Stream Id: "..value
end

-- Dissect: Stream Id
nse_nsefo_mtbt_binary_v7_0.stream_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_mtbt_binary_v7_0.stream_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nse_nsefo_mtbt_binary_v7_0.stream_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_mtbt_binary_v7_0.fields.stream_id, range, value, display)

  return offset + length, value
end

-- Timestamp
nse_nsefo_mtbt_binary_v7_0.timestamp = {}

-- Size: Timestamp
nse_nsefo_mtbt_binary_v7_0.timestamp.size = 8

-- Dissect: Timestamp
nse_nsefo_mtbt_binary_v7_0.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_mtbt_binary_v7_0.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nse_nsefo_mtbt_binary_v7_0.fields.timestamp
  if nse_nsefo_mtbt_binary_v7_0.absolute_time_base == 1 then field = omi_nse_nsefo_mtbt_binary_v7_0.fields.timestamp_utc end

  local seconds = (value / UInt64(1000000000)):tonumber() + 315532800
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Token
nse_nsefo_mtbt_binary_v7_0.token = {}

-- Size: Token
nse_nsefo_mtbt_binary_v7_0.token.size = 4

-- Display: Token
nse_nsefo_mtbt_binary_v7_0.token.display = function(value)
  return "Token: "..value
end

-- Dissect: Token
nse_nsefo_mtbt_binary_v7_0.token.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_mtbt_binary_v7_0.token.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nse_nsefo_mtbt_binary_v7_0.token.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_mtbt_binary_v7_0.fields.token, range, value, display)

  return offset + length, value
end

-- Trade Price
nse_nsefo_mtbt_binary_v7_0.trade_price = {}

-- Size: Trade Price
nse_nsefo_mtbt_binary_v7_0.trade_price.size = 4

-- Display: Trade Price
nse_nsefo_mtbt_binary_v7_0.trade_price.display = function(value)
  return "Trade Price: "..value
end

-- Translate: Trade Price
nse_nsefo_mtbt_binary_v7_0.trade_price.translate = function(raw)
  return raw/100
end

-- Dissect: Trade Price
nse_nsefo_mtbt_binary_v7_0.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_mtbt_binary_v7_0.trade_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nse_nsefo_mtbt_binary_v7_0.trade_price.translate(raw)
  local display = nse_nsefo_mtbt_binary_v7_0.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_mtbt_binary_v7_0.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Trade Quantity
nse_nsefo_mtbt_binary_v7_0.trade_quantity = {}

-- Size: Trade Quantity
nse_nsefo_mtbt_binary_v7_0.trade_quantity.size = 4

-- Display: Trade Quantity
nse_nsefo_mtbt_binary_v7_0.trade_quantity.display = function(value)
  return "Trade Quantity: "..value
end

-- Dissect: Trade Quantity
nse_nsefo_mtbt_binary_v7_0.trade_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_mtbt_binary_v7_0.trade_quantity.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nse_nsefo_mtbt_binary_v7_0.trade_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_mtbt_binary_v7_0.fields.trade_quantity, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nse NseFo Mtbt Binary 7.0
-----------------------------------------------------------------------

-- Heartbeat Message
nse_nsefo_mtbt_binary_v7_0.heartbeat_message = {}

-- Size: Heartbeat Message
nse_nsefo_mtbt_binary_v7_0.heartbeat_message.size =
  nse_nsefo_mtbt_binary_v7_0.last_sequence_no.size

-- Display: Heartbeat Message
nse_nsefo_mtbt_binary_v7_0.heartbeat_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Message
nse_nsefo_mtbt_binary_v7_0.heartbeat_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Sequence No: UINT
  index, last_sequence_no = nse_nsefo_mtbt_binary_v7_0.last_sequence_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Message
nse_nsefo_mtbt_binary_v7_0.heartbeat_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_mtbt_binary_v7_0.fields.heartbeat_message, buffer(offset, 0))
    local index = nse_nsefo_mtbt_binary_v7_0.heartbeat_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_mtbt_binary_v7_0.heartbeat_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_mtbt_binary_v7_0.heartbeat_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancel Message
nse_nsefo_mtbt_binary_v7_0.trade_cancel_message = {}

-- Size: Trade Cancel Message
nse_nsefo_mtbt_binary_v7_0.trade_cancel_message.size =
  nse_nsefo_mtbt_binary_v7_0.timestamp.size + 
  nse_nsefo_mtbt_binary_v7_0.buy_order_id.size + 
  nse_nsefo_mtbt_binary_v7_0.sell_order_id.size + 
  nse_nsefo_mtbt_binary_v7_0.token.size + 
  nse_nsefo_mtbt_binary_v7_0.trade_price.size + 
  nse_nsefo_mtbt_binary_v7_0.trade_quantity.size

-- Display: Trade Cancel Message
nse_nsefo_mtbt_binary_v7_0.trade_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Message
nse_nsefo_mtbt_binary_v7_0.trade_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: LONG
  index, timestamp = nse_nsefo_mtbt_binary_v7_0.timestamp.dissect(buffer, index, packet, parent)

  -- Buy Order Id: DOUBLE
  index, buy_order_id = nse_nsefo_mtbt_binary_v7_0.buy_order_id.dissect(buffer, index, packet, parent)

  -- Sell Order Id: DOUBLE
  index, sell_order_id = nse_nsefo_mtbt_binary_v7_0.sell_order_id.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nsefo_mtbt_binary_v7_0.token.dissect(buffer, index, packet, parent)

  -- Trade Price: INT
  index, trade_price = nse_nsefo_mtbt_binary_v7_0.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Quantity: INT
  index, trade_quantity = nse_nsefo_mtbt_binary_v7_0.trade_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Message
nse_nsefo_mtbt_binary_v7_0.trade_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_mtbt_binary_v7_0.fields.trade_cancel_message, buffer(offset, 0))
    local index = nse_nsefo_mtbt_binary_v7_0.trade_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_mtbt_binary_v7_0.trade_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_mtbt_binary_v7_0.trade_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Spread Trade Message
nse_nsefo_mtbt_binary_v7_0.spread_trade_message = {}

-- Size: Spread Trade Message
nse_nsefo_mtbt_binary_v7_0.spread_trade_message.size =
  nse_nsefo_mtbt_binary_v7_0.timestamp.size + 
  nse_nsefo_mtbt_binary_v7_0.buy_order_id.size + 
  nse_nsefo_mtbt_binary_v7_0.sell_order_id.size + 
  nse_nsefo_mtbt_binary_v7_0.token.size + 
  nse_nsefo_mtbt_binary_v7_0.trade_price.size + 
  nse_nsefo_mtbt_binary_v7_0.quantity.size

-- Display: Spread Trade Message
nse_nsefo_mtbt_binary_v7_0.spread_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spread Trade Message
nse_nsefo_mtbt_binary_v7_0.spread_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: LONG
  index, timestamp = nse_nsefo_mtbt_binary_v7_0.timestamp.dissect(buffer, index, packet, parent)

  -- Buy Order Id: DOUBLE
  index, buy_order_id = nse_nsefo_mtbt_binary_v7_0.buy_order_id.dissect(buffer, index, packet, parent)

  -- Sell Order Id: DOUBLE
  index, sell_order_id = nse_nsefo_mtbt_binary_v7_0.sell_order_id.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nsefo_mtbt_binary_v7_0.token.dissect(buffer, index, packet, parent)

  -- Trade Price: INT
  index, trade_price = nse_nsefo_mtbt_binary_v7_0.trade_price.dissect(buffer, index, packet, parent)

  -- Quantity: INT
  index, quantity = nse_nsefo_mtbt_binary_v7_0.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spread Trade Message
nse_nsefo_mtbt_binary_v7_0.spread_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_mtbt_binary_v7_0.fields.spread_trade_message, buffer(offset, 0))
    local index = nse_nsefo_mtbt_binary_v7_0.spread_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_mtbt_binary_v7_0.spread_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_mtbt_binary_v7_0.spread_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Spread Order Cancellation Message
nse_nsefo_mtbt_binary_v7_0.spread_order_cancellation_message = {}

-- Size: Spread Order Cancellation Message
nse_nsefo_mtbt_binary_v7_0.spread_order_cancellation_message.size =
  nse_nsefo_mtbt_binary_v7_0.timestamp.size + 
  nse_nsefo_mtbt_binary_v7_0.order_id.size + 
  nse_nsefo_mtbt_binary_v7_0.token.size + 
  nse_nsefo_mtbt_binary_v7_0.order_type.size + 
  nse_nsefo_mtbt_binary_v7_0.price.size + 
  nse_nsefo_mtbt_binary_v7_0.quantity.size

-- Display: Spread Order Cancellation Message
nse_nsefo_mtbt_binary_v7_0.spread_order_cancellation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spread Order Cancellation Message
nse_nsefo_mtbt_binary_v7_0.spread_order_cancellation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: LONG
  index, timestamp = nse_nsefo_mtbt_binary_v7_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: DOUBLE
  index, order_id = nse_nsefo_mtbt_binary_v7_0.order_id.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nsefo_mtbt_binary_v7_0.token.dissect(buffer, index, packet, parent)

  -- Order Type: CHAR
  index, order_type = nse_nsefo_mtbt_binary_v7_0.order_type.dissect(buffer, index, packet, parent)

  -- Price: INT
  index, price = nse_nsefo_mtbt_binary_v7_0.price.dissect(buffer, index, packet, parent)

  -- Quantity: INT
  index, quantity = nse_nsefo_mtbt_binary_v7_0.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spread Order Cancellation Message
nse_nsefo_mtbt_binary_v7_0.spread_order_cancellation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_mtbt_binary_v7_0.fields.spread_order_cancellation_message, buffer(offset, 0))
    local index = nse_nsefo_mtbt_binary_v7_0.spread_order_cancellation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_mtbt_binary_v7_0.spread_order_cancellation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_mtbt_binary_v7_0.spread_order_cancellation_message.fields(buffer, offset, packet, parent)
  end
end

-- Spread Order Modification Message
nse_nsefo_mtbt_binary_v7_0.spread_order_modification_message = {}

-- Size: Spread Order Modification Message
nse_nsefo_mtbt_binary_v7_0.spread_order_modification_message.size =
  nse_nsefo_mtbt_binary_v7_0.timestamp.size + 
  nse_nsefo_mtbt_binary_v7_0.order_id.size + 
  nse_nsefo_mtbt_binary_v7_0.token.size + 
  nse_nsefo_mtbt_binary_v7_0.order_type.size + 
  nse_nsefo_mtbt_binary_v7_0.price.size + 
  nse_nsefo_mtbt_binary_v7_0.quantity.size

-- Display: Spread Order Modification Message
nse_nsefo_mtbt_binary_v7_0.spread_order_modification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spread Order Modification Message
nse_nsefo_mtbt_binary_v7_0.spread_order_modification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: LONG
  index, timestamp = nse_nsefo_mtbt_binary_v7_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: DOUBLE
  index, order_id = nse_nsefo_mtbt_binary_v7_0.order_id.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nsefo_mtbt_binary_v7_0.token.dissect(buffer, index, packet, parent)

  -- Order Type: CHAR
  index, order_type = nse_nsefo_mtbt_binary_v7_0.order_type.dissect(buffer, index, packet, parent)

  -- Price: INT
  index, price = nse_nsefo_mtbt_binary_v7_0.price.dissect(buffer, index, packet, parent)

  -- Quantity: INT
  index, quantity = nse_nsefo_mtbt_binary_v7_0.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spread Order Modification Message
nse_nsefo_mtbt_binary_v7_0.spread_order_modification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_mtbt_binary_v7_0.fields.spread_order_modification_message, buffer(offset, 0))
    local index = nse_nsefo_mtbt_binary_v7_0.spread_order_modification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_mtbt_binary_v7_0.spread_order_modification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_mtbt_binary_v7_0.spread_order_modification_message.fields(buffer, offset, packet, parent)
  end
end

-- New Spread Order Message
nse_nsefo_mtbt_binary_v7_0.new_spread_order_message = {}

-- Size: New Spread Order Message
nse_nsefo_mtbt_binary_v7_0.new_spread_order_message.size =
  nse_nsefo_mtbt_binary_v7_0.timestamp.size + 
  nse_nsefo_mtbt_binary_v7_0.order_id.size + 
  nse_nsefo_mtbt_binary_v7_0.token.size + 
  nse_nsefo_mtbt_binary_v7_0.order_type.size + 
  nse_nsefo_mtbt_binary_v7_0.price.size + 
  nse_nsefo_mtbt_binary_v7_0.quantity.size

-- Display: New Spread Order Message
nse_nsefo_mtbt_binary_v7_0.new_spread_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Spread Order Message
nse_nsefo_mtbt_binary_v7_0.new_spread_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: LONG
  index, timestamp = nse_nsefo_mtbt_binary_v7_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: DOUBLE
  index, order_id = nse_nsefo_mtbt_binary_v7_0.order_id.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nsefo_mtbt_binary_v7_0.token.dissect(buffer, index, packet, parent)

  -- Order Type: CHAR
  index, order_type = nse_nsefo_mtbt_binary_v7_0.order_type.dissect(buffer, index, packet, parent)

  -- Price: INT
  index, price = nse_nsefo_mtbt_binary_v7_0.price.dissect(buffer, index, packet, parent)

  -- Quantity: INT
  index, quantity = nse_nsefo_mtbt_binary_v7_0.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Spread Order Message
nse_nsefo_mtbt_binary_v7_0.new_spread_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_mtbt_binary_v7_0.fields.new_spread_order_message, buffer(offset, 0))
    local index = nse_nsefo_mtbt_binary_v7_0.new_spread_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_mtbt_binary_v7_0.new_spread_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_mtbt_binary_v7_0.new_spread_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message
nse_nsefo_mtbt_binary_v7_0.trade_message = {}

-- Size: Trade Message
nse_nsefo_mtbt_binary_v7_0.trade_message.size =
  nse_nsefo_mtbt_binary_v7_0.timestamp.size + 
  nse_nsefo_mtbt_binary_v7_0.buy_order_id.size + 
  nse_nsefo_mtbt_binary_v7_0.sell_order_id.size + 
  nse_nsefo_mtbt_binary_v7_0.token.size + 
  nse_nsefo_mtbt_binary_v7_0.trade_price.size + 
  nse_nsefo_mtbt_binary_v7_0.trade_quantity.size

-- Display: Trade Message
nse_nsefo_mtbt_binary_v7_0.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
nse_nsefo_mtbt_binary_v7_0.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: LONG
  index, timestamp = nse_nsefo_mtbt_binary_v7_0.timestamp.dissect(buffer, index, packet, parent)

  -- Buy Order Id: DOUBLE
  index, buy_order_id = nse_nsefo_mtbt_binary_v7_0.buy_order_id.dissect(buffer, index, packet, parent)

  -- Sell Order Id: DOUBLE
  index, sell_order_id = nse_nsefo_mtbt_binary_v7_0.sell_order_id.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nsefo_mtbt_binary_v7_0.token.dissect(buffer, index, packet, parent)

  -- Trade Price: INT
  index, trade_price = nse_nsefo_mtbt_binary_v7_0.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Quantity: INT
  index, trade_quantity = nse_nsefo_mtbt_binary_v7_0.trade_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
nse_nsefo_mtbt_binary_v7_0.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_mtbt_binary_v7_0.fields.trade_message, buffer(offset, 0))
    local index = nse_nsefo_mtbt_binary_v7_0.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_mtbt_binary_v7_0.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_mtbt_binary_v7_0.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancellation Message
nse_nsefo_mtbt_binary_v7_0.order_cancellation_message = {}

-- Size: Order Cancellation Message
nse_nsefo_mtbt_binary_v7_0.order_cancellation_message.size =
  nse_nsefo_mtbt_binary_v7_0.timestamp.size + 
  nse_nsefo_mtbt_binary_v7_0.order_id.size + 
  nse_nsefo_mtbt_binary_v7_0.token.size + 
  nse_nsefo_mtbt_binary_v7_0.order_type.size + 
  nse_nsefo_mtbt_binary_v7_0.price.size + 
  nse_nsefo_mtbt_binary_v7_0.quantity.size

-- Display: Order Cancellation Message
nse_nsefo_mtbt_binary_v7_0.order_cancellation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancellation Message
nse_nsefo_mtbt_binary_v7_0.order_cancellation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: LONG
  index, timestamp = nse_nsefo_mtbt_binary_v7_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: DOUBLE
  index, order_id = nse_nsefo_mtbt_binary_v7_0.order_id.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nsefo_mtbt_binary_v7_0.token.dissect(buffer, index, packet, parent)

  -- Order Type: CHAR
  index, order_type = nse_nsefo_mtbt_binary_v7_0.order_type.dissect(buffer, index, packet, parent)

  -- Price: INT
  index, price = nse_nsefo_mtbt_binary_v7_0.price.dissect(buffer, index, packet, parent)

  -- Quantity: INT
  index, quantity = nse_nsefo_mtbt_binary_v7_0.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancellation Message
nse_nsefo_mtbt_binary_v7_0.order_cancellation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_mtbt_binary_v7_0.fields.order_cancellation_message, buffer(offset, 0))
    local index = nse_nsefo_mtbt_binary_v7_0.order_cancellation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_mtbt_binary_v7_0.order_cancellation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_mtbt_binary_v7_0.order_cancellation_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Modification Message
nse_nsefo_mtbt_binary_v7_0.order_modification_message = {}

-- Size: Order Modification Message
nse_nsefo_mtbt_binary_v7_0.order_modification_message.size =
  nse_nsefo_mtbt_binary_v7_0.timestamp.size + 
  nse_nsefo_mtbt_binary_v7_0.order_id.size + 
  nse_nsefo_mtbt_binary_v7_0.token.size + 
  nse_nsefo_mtbt_binary_v7_0.order_type.size + 
  nse_nsefo_mtbt_binary_v7_0.price.size + 
  nse_nsefo_mtbt_binary_v7_0.quantity.size

-- Display: Order Modification Message
nse_nsefo_mtbt_binary_v7_0.order_modification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modification Message
nse_nsefo_mtbt_binary_v7_0.order_modification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: LONG
  index, timestamp = nse_nsefo_mtbt_binary_v7_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: DOUBLE
  index, order_id = nse_nsefo_mtbt_binary_v7_0.order_id.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nsefo_mtbt_binary_v7_0.token.dissect(buffer, index, packet, parent)

  -- Order Type: CHAR
  index, order_type = nse_nsefo_mtbt_binary_v7_0.order_type.dissect(buffer, index, packet, parent)

  -- Price: INT
  index, price = nse_nsefo_mtbt_binary_v7_0.price.dissect(buffer, index, packet, parent)

  -- Quantity: INT
  index, quantity = nse_nsefo_mtbt_binary_v7_0.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modification Message
nse_nsefo_mtbt_binary_v7_0.order_modification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_mtbt_binary_v7_0.fields.order_modification_message, buffer(offset, 0))
    local index = nse_nsefo_mtbt_binary_v7_0.order_modification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_mtbt_binary_v7_0.order_modification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_mtbt_binary_v7_0.order_modification_message.fields(buffer, offset, packet, parent)
  end
end

-- New Order Message
nse_nsefo_mtbt_binary_v7_0.new_order_message = {}

-- Size: New Order Message
nse_nsefo_mtbt_binary_v7_0.new_order_message.size =
  nse_nsefo_mtbt_binary_v7_0.timestamp.size + 
  nse_nsefo_mtbt_binary_v7_0.order_id.size + 
  nse_nsefo_mtbt_binary_v7_0.token.size + 
  nse_nsefo_mtbt_binary_v7_0.order_type.size + 
  nse_nsefo_mtbt_binary_v7_0.price.size + 
  nse_nsefo_mtbt_binary_v7_0.quantity.size

-- Display: New Order Message
nse_nsefo_mtbt_binary_v7_0.new_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Message
nse_nsefo_mtbt_binary_v7_0.new_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: LONG
  index, timestamp = nse_nsefo_mtbt_binary_v7_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: DOUBLE
  index, order_id = nse_nsefo_mtbt_binary_v7_0.order_id.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nsefo_mtbt_binary_v7_0.token.dissect(buffer, index, packet, parent)

  -- Order Type: CHAR
  index, order_type = nse_nsefo_mtbt_binary_v7_0.order_type.dissect(buffer, index, packet, parent)

  -- Price: INT
  index, price = nse_nsefo_mtbt_binary_v7_0.price.dissect(buffer, index, packet, parent)

  -- Quantity: INT
  index, quantity = nse_nsefo_mtbt_binary_v7_0.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Message
nse_nsefo_mtbt_binary_v7_0.new_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_mtbt_binary_v7_0.fields.new_order_message, buffer(offset, 0))
    local index = nse_nsefo_mtbt_binary_v7_0.new_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_mtbt_binary_v7_0.new_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_mtbt_binary_v7_0.new_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nse_nsefo_mtbt_binary_v7_0.payload = {}

-- Dissect: Payload
nse_nsefo_mtbt_binary_v7_0.payload.dispatch = {
  ["N"] = nse_nsefo_mtbt_binary_v7_0.new_order_message.dissect,
  ["M"] = nse_nsefo_mtbt_binary_v7_0.order_modification_message.dissect,
  ["X"] = nse_nsefo_mtbt_binary_v7_0.order_cancellation_message.dissect,
  ["T"] = nse_nsefo_mtbt_binary_v7_0.trade_message.dissect,
  ["G"] = nse_nsefo_mtbt_binary_v7_0.new_spread_order_message.dissect,
  ["H"] = nse_nsefo_mtbt_binary_v7_0.spread_order_modification_message.dissect,
  ["J"] = nse_nsefo_mtbt_binary_v7_0.spread_order_cancellation_message.dissect,
  ["K"] = nse_nsefo_mtbt_binary_v7_0.spread_trade_message.dissect,
  ["C"] = nse_nsefo_mtbt_binary_v7_0.trade_cancel_message.dissect,
  ["Z"] = nse_nsefo_mtbt_binary_v7_0.heartbeat_message.dissect,
}

nse_nsefo_mtbt_binary_v7_0.payload.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = nse_nsefo_mtbt_binary_v7_0.payload.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message
nse_nsefo_mtbt_binary_v7_0.message = {}

-- Display: Message
nse_nsefo_mtbt_binary_v7_0.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nse_nsefo_mtbt_binary_v7_0.message.fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Type: Char
  index, message_type = nse_nsefo_mtbt_binary_v7_0.message_type.dissect(buffer, index, packet, parent)

  -- Dependency for Payload
  local end_of_payload = offset + size_of_message

  -- Payload: Runtime Type with 10 branches
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Payload: Runtime Type with 10 branches
    index = nse_nsefo_mtbt_binary_v7_0.payload.dissect(buffer, index, packet, parent, message_type)
  end

  return index
end

-- Dissect: Message
nse_nsefo_mtbt_binary_v7_0.message.dissect = function(buffer, offset, packet, parent, size_of_message)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nse_nsefo_mtbt_binary_v7_0.fields.message, buffer(offset, 0))
    local current = nse_nsefo_mtbt_binary_v7_0.message.fields(buffer, offset, packet, parent, size_of_message)
    parent:set_len(size_of_message)
    local display = nse_nsefo_mtbt_binary_v7_0.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nse_nsefo_mtbt_binary_v7_0.message.fields(buffer, offset, packet, parent, size_of_message)

    return index
  end
end

-- Stream Header
nse_nsefo_mtbt_binary_v7_0.stream_header = {}

-- Size: Stream Header
nse_nsefo_mtbt_binary_v7_0.stream_header.size =
  nse_nsefo_mtbt_binary_v7_0.message_length.size + 
  nse_nsefo_mtbt_binary_v7_0.stream_id.size + 
  nse_nsefo_mtbt_binary_v7_0.sequence_number.size

-- Display: Stream Header
nse_nsefo_mtbt_binary_v7_0.stream_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Header
nse_nsefo_mtbt_binary_v7_0.stream_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: Short
  index, message_length = nse_nsefo_mtbt_binary_v7_0.message_length.dissect(buffer, index, packet, parent)

  -- Stream Id: Short
  index, stream_id = nse_nsefo_mtbt_binary_v7_0.stream_id.dissect(buffer, index, packet, parent)

  -- Sequence Number: Uint
  index, sequence_number = nse_nsefo_mtbt_binary_v7_0.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Header
nse_nsefo_mtbt_binary_v7_0.stream_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_mtbt_binary_v7_0.fields.stream_header, buffer(offset, 0))
    local index = nse_nsefo_mtbt_binary_v7_0.stream_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_mtbt_binary_v7_0.stream_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_mtbt_binary_v7_0.stream_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nse_nsefo_mtbt_binary_v7_0.packet = {}

-- Verify required size of Udp packet
nse_nsefo_mtbt_binary_v7_0.packet.requiredsize = function(buffer)
  return buffer:len() >= nse_nsefo_mtbt_binary_v7_0.stream_header.size
end

-- Dissect Packet
nse_nsefo_mtbt_binary_v7_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Stream Header: Struct of 3 fields
  index, stream_header = nse_nsefo_mtbt_binary_v7_0.stream_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(index - 8, 2):le_int()

  -- Runtime Size Of: Message
  local size_of_message = message_length - 8

  -- Message: Struct of 2 fields
  index, message = nse_nsefo_mtbt_binary_v7_0.message.dissect(buffer, index, packet, parent, size_of_message)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nse_nsefo_mtbt_binary_v7_0.init()
end

-- Dissector for Nse NseFo Mtbt Binary 7.0
function omi_nse_nsefo_mtbt_binary_v7_0.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nse_nsefo_mtbt_binary_v7_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_nse_nsefo_mtbt_binary_v7_0, buffer(), omi_nse_nsefo_mtbt_binary_v7_0.description, "("..buffer:len().." Bytes)")
  return nse_nsefo_mtbt_binary_v7_0.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nse NseFo Mtbt Binary 7.0 (Udp)
local function omi_nse_nsefo_mtbt_binary_v7_0_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nse_nsefo_mtbt_binary_v7_0.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nse_nsefo_mtbt_binary_v7_0
  omi_nse_nsefo_mtbt_binary_v7_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nse NseFo Mtbt Binary 7.0
omi_nse_nsefo_mtbt_binary_v7_0:register_heuristic("udp", omi_nse_nsefo_mtbt_binary_v7_0_udp_heuristic)

-- Register Nse NseFo Mtbt Binary 7.0 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_nse_nsefo_mtbt_binary_v7_0)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Stock Exchange of India Ltd
--   Version: 7.0
--   Date: Saturday, August 1, 2026
--   Specification: MTBT_FO_NNF_PROTOCOL_7.0_20260817172155.pdf
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
