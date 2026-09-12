-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nse NseCd Snapshot Binary 6.8 Protocol
local omi_nse_nsecd_snapshot_binary_v6_8 = Proto("Omi.Nse.NseCd.Snapshot.Binary.v6.8", "Nse NseCd Snapshot Binary 6.8")

-- Protocol table
local nse_nsecd_snapshot_binary_v6_8 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nse NseCd Snapshot Binary 6.8 Fields
omi_nse_nsecd_snapshot_binary_v6_8.fields.last_sequence_number = ProtoField.new("Last Sequence Number", "nse.nsecd.snapshot.binary.v6.8.lastsequencenumber", ftypes.UINT32)
omi_nse_nsecd_snapshot_binary_v6_8.fields.message_type = ProtoField.new("Message Type", "nse.nsecd.snapshot.binary.v6.8.messagetype", ftypes.STRING)
omi_nse_nsecd_snapshot_binary_v6_8.fields.number_of_records = ProtoField.new("Number Of Records", "nse.nsecd.snapshot.binary.v6.8.numberofrecords", ftypes.INT32)
omi_nse_nsecd_snapshot_binary_v6_8.fields.order_id = ProtoField.new("Order Id", "nse.nsecd.snapshot.binary.v6.8.orderid", ftypes.DOUBLE)
omi_nse_nsecd_snapshot_binary_v6_8.fields.order_type = ProtoField.new("Order Type", "nse.nsecd.snapshot.binary.v6.8.ordertype", ftypes.STRING)
omi_nse_nsecd_snapshot_binary_v6_8.fields.price = ProtoField.new("Price", "nse.nsecd.snapshot.binary.v6.8.price", ftypes.DOUBLE)
omi_nse_nsecd_snapshot_binary_v6_8.fields.quantity = ProtoField.new("Quantity", "nse.nsecd.snapshot.binary.v6.8.quantity", ftypes.INT32)
omi_nse_nsecd_snapshot_binary_v6_8.fields.size = ProtoField.new("Size", "nse.nsecd.snapshot.binary.v6.8.size", ftypes.INT32)
omi_nse_nsecd_snapshot_binary_v6_8.fields.stream_id = ProtoField.new("Stream Id", "nse.nsecd.snapshot.binary.v6.8.streamid", ftypes.INT16)
omi_nse_nsecd_snapshot_binary_v6_8.fields.timestamp = ProtoField.new("Timestamp", "nse.nsecd.snapshot.binary.v6.8.timestamp", ftypes.INT64)
omi_nse_nsecd_snapshot_binary_v6_8.fields.token = ProtoField.new("Token", "nse.nsecd.snapshot.binary.v6.8.token", ftypes.INT32)
omi_nse_nsecd_snapshot_binary_v6_8.fields.trans_code = ProtoField.new("Trans Code", "nse.nsecd.snapshot.binary.v6.8.transcode", ftypes.INT16)

-- Nse NseCd Snapshot Binary 6.8 Framing
omi_nse_nsecd_snapshot_binary_v6_8.fields.message = ProtoField.new("Message", "nse.nsecd.snapshot.binary.v6.8.message", ftypes.STRING)
omi_nse_nsecd_snapshot_binary_v6_8.fields.packet = ProtoField.new("Packet", "nse.nsecd.snapshot.binary.v6.8.packet", ftypes.STRING)
omi_nse_nsecd_snapshot_binary_v6_8.fields.snapshot_header = ProtoField.new("Snapshot Header", "nse.nsecd.snapshot.binary.v6.8.snapshotheader", ftypes.STRING)

-- Nse NseCd Snapshot 6.8 Application Messages
omi_nse_nsecd_snapshot_binary_v6_8.fields.new_order_message = ProtoField.new("New Order Message", "nse.nsecd.snapshot.binary.v6.8.newordermessage", ftypes.STRING)
omi_nse_nsecd_snapshot_binary_v6_8.fields.new_spread_order_message = ProtoField.new("New Spread Order Message", "nse.nsecd.snapshot.binary.v6.8.newspreadordermessage", ftypes.STRING)

-- Nse NseCd Snapshot Binary 6.8 generated fields
omi_nse_nsecd_snapshot_binary_v6_8.fields.message_index = ProtoField.new("Message Index", "nse.nsecd.snapshot.binary.v6.8.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nse NseCd Snapshot Binary 6.8 Element Dissection Options
show.headers = true
show.application_messages = true
show.structs = true
show.indexes = true

-- Register Nse NseCd Snapshot Binary 6.8 Show Options
omi_nse_nsecd_snapshot_binary_v6_8.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nse_nsecd_snapshot_binary_v6_8.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nse_nsecd_snapshot_binary_v6_8.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nse_nsecd_snapshot_binary_v6_8.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

-- Handle changed preferences
function omi_nse_nsecd_snapshot_binary_v6_8.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nse_nsecd_snapshot_binary_v6_8.prefs.show_application_messages then
    show.application_messages = omi_nse_nsecd_snapshot_binary_v6_8.prefs.show_application_messages
  end
  if show.headers ~= omi_nse_nsecd_snapshot_binary_v6_8.prefs.show_headers then
    show.headers = omi_nse_nsecd_snapshot_binary_v6_8.prefs.show_headers
  end
  if show.structs ~= omi_nse_nsecd_snapshot_binary_v6_8.prefs.show_structs then
    show.structs = omi_nse_nsecd_snapshot_binary_v6_8.prefs.show_structs
  end
  if show.indexes ~= omi_nse_nsecd_snapshot_binary_v6_8.prefs.show_indexes then
    show.indexes = omi_nse_nsecd_snapshot_binary_v6_8.prefs.show_indexes
  end
end


-----------------------------------------------------------------------
-- Nse NseCd Snapshot Binary 6.8 Fields
-----------------------------------------------------------------------

-- Last Sequence Number
nse_nsecd_snapshot_binary_v6_8.last_sequence_number = {}

-- Size: Last Sequence Number
nse_nsecd_snapshot_binary_v6_8.last_sequence_number.size = 4

-- Display: Last Sequence Number
nse_nsecd_snapshot_binary_v6_8.last_sequence_number.display = function(value)
  return "Last Sequence Number: "..value
end

-- Dissect: Last Sequence Number
nse_nsecd_snapshot_binary_v6_8.last_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_snapshot_binary_v6_8.last_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nse_nsecd_snapshot_binary_v6_8.last_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_snapshot_binary_v6_8.fields.last_sequence_number, range, value, display)

  return offset + length, value
end

-- Message Type
nse_nsecd_snapshot_binary_v6_8.message_type = {}

-- Size: Message Type
nse_nsecd_snapshot_binary_v6_8.message_type.size = 1

-- Display: Message Type
nse_nsecd_snapshot_binary_v6_8.message_type.display = function(value)
  if value == "N" then
    return "Message Type: New Order Message (N)"
  end
  if value == "G" then
    return "Message Type: New Spread Order Message (G)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nse_nsecd_snapshot_binary_v6_8.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_snapshot_binary_v6_8.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsecd_snapshot_binary_v6_8.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_snapshot_binary_v6_8.fields.message_type, range, value, display)

  return offset + length, value
end

-- Number Of Records
nse_nsecd_snapshot_binary_v6_8.number_of_records = {}

-- Size: Number Of Records
nse_nsecd_snapshot_binary_v6_8.number_of_records.size = 4

-- Display: Number Of Records
nse_nsecd_snapshot_binary_v6_8.number_of_records.display = function(value)
  return "Number Of Records: "..value
end

-- Dissect: Number Of Records
nse_nsecd_snapshot_binary_v6_8.number_of_records.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_snapshot_binary_v6_8.number_of_records.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nse_nsecd_snapshot_binary_v6_8.number_of_records.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_snapshot_binary_v6_8.fields.number_of_records, range, value, display)

  return offset + length, value
end

-- Order Id
nse_nsecd_snapshot_binary_v6_8.order_id = {}

-- Size: Order Id
nse_nsecd_snapshot_binary_v6_8.order_id.size = 8

-- Display: Order Id
nse_nsecd_snapshot_binary_v6_8.order_id.display = function(value)
  return "Order Id: "..string.format("%.0f", value)
end

-- Dissect: Order Id
nse_nsecd_snapshot_binary_v6_8.order_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_snapshot_binary_v6_8.order_id.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nse_nsecd_snapshot_binary_v6_8.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_snapshot_binary_v6_8.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Type
nse_nsecd_snapshot_binary_v6_8.order_type = {}

-- Size: Order Type
nse_nsecd_snapshot_binary_v6_8.order_type.size = 1

-- Display: Order Type
nse_nsecd_snapshot_binary_v6_8.order_type.display = function(value)
  if value == "B" then
    return "Order Type: Buy Order (B)"
  end
  if value == "S" then
    return "Order Type: Sell Order (S)"
  end

  return "Order Type: Unknown("..value..")"
end

-- Dissect: Order Type
nse_nsecd_snapshot_binary_v6_8.order_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_snapshot_binary_v6_8.order_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsecd_snapshot_binary_v6_8.order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_snapshot_binary_v6_8.fields.order_type, range, value, display)

  return offset + length, value
end

-- Price
nse_nsecd_snapshot_binary_v6_8.price = {}

-- Size: Price
nse_nsecd_snapshot_binary_v6_8.price.size = 4

-- Display: Price
nse_nsecd_snapshot_binary_v6_8.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
nse_nsecd_snapshot_binary_v6_8.price.translate = function(raw)
  return raw/10000000
end

-- Dissect: Price
nse_nsecd_snapshot_binary_v6_8.price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_snapshot_binary_v6_8.price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nse_nsecd_snapshot_binary_v6_8.price.translate(raw)
  local display = nse_nsecd_snapshot_binary_v6_8.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_snapshot_binary_v6_8.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity
nse_nsecd_snapshot_binary_v6_8.quantity = {}

-- Size: Quantity
nse_nsecd_snapshot_binary_v6_8.quantity.size = 4

-- Display: Quantity
nse_nsecd_snapshot_binary_v6_8.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
nse_nsecd_snapshot_binary_v6_8.quantity.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_snapshot_binary_v6_8.quantity.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nse_nsecd_snapshot_binary_v6_8.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_snapshot_binary_v6_8.fields.quantity, range, value, display)

  return offset + length, value
end

-- Size
nse_nsecd_snapshot_binary_v6_8.size = {}

-- Size: Size
nse_nsecd_snapshot_binary_v6_8.size.size = 4

-- Display: Size
nse_nsecd_snapshot_binary_v6_8.size.display = function(value)
  return "Size: "..value
end

-- Dissect: Size
nse_nsecd_snapshot_binary_v6_8.size.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_snapshot_binary_v6_8.size.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nse_nsecd_snapshot_binary_v6_8.size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_snapshot_binary_v6_8.fields.size, range, value, display)

  return offset + length, value
end

-- Stream Id
nse_nsecd_snapshot_binary_v6_8.stream_id = {}

-- Size: Stream Id
nse_nsecd_snapshot_binary_v6_8.stream_id.size = 2

-- Display: Stream Id
nse_nsecd_snapshot_binary_v6_8.stream_id.display = function(value)
  return "Stream Id: "..value
end

-- Dissect: Stream Id
nse_nsecd_snapshot_binary_v6_8.stream_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_snapshot_binary_v6_8.stream_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nse_nsecd_snapshot_binary_v6_8.stream_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_snapshot_binary_v6_8.fields.stream_id, range, value, display)

  return offset + length, value
end

-- Timestamp
nse_nsecd_snapshot_binary_v6_8.timestamp = {}

-- Size: Timestamp
nse_nsecd_snapshot_binary_v6_8.timestamp.size = 8

-- Display: Timestamp
nse_nsecd_snapshot_binary_v6_8.timestamp.display = function(value)
  -- Parse Dos epoch nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber() + 315532800
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- a value os.date cannot represent is shown raw rather than aborting the dissection
  local ok, text = pcall(os.date, "%Y-%m-%d %H:%M:%S.", seconds)

  if not ok then
    return "Timestamp: "..tostring(value)
  end

  return "Timestamp: "..text..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
nse_nsecd_snapshot_binary_v6_8.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_snapshot_binary_v6_8.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = nse_nsecd_snapshot_binary_v6_8.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_snapshot_binary_v6_8.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Token
nse_nsecd_snapshot_binary_v6_8.token = {}

-- Size: Token
nse_nsecd_snapshot_binary_v6_8.token.size = 4

-- Display: Token
nse_nsecd_snapshot_binary_v6_8.token.display = function(value)
  return "Token: "..value
end

-- Dissect: Token
nse_nsecd_snapshot_binary_v6_8.token.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_snapshot_binary_v6_8.token.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nse_nsecd_snapshot_binary_v6_8.token.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_snapshot_binary_v6_8.fields.token, range, value, display)

  return offset + length, value
end

-- Trans Code
nse_nsecd_snapshot_binary_v6_8.trans_code = {}

-- Size: Trans Code
nse_nsecd_snapshot_binary_v6_8.trans_code.size = 2

-- Display: Trans Code
nse_nsecd_snapshot_binary_v6_8.trans_code.display = function(value)
  if value == 10501 then
    return "Trans Code: Order Book Snapshot (10501)"
  end

  return "Trans Code: Unknown("..value..")"
end

-- Dissect: Trans Code
nse_nsecd_snapshot_binary_v6_8.trans_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_snapshot_binary_v6_8.trans_code.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nse_nsecd_snapshot_binary_v6_8.trans_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_snapshot_binary_v6_8.fields.trans_code, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nse NseCd Snapshot Binary 6.8
-----------------------------------------------------------------------

-- New Spread Order Message
nse_nsecd_snapshot_binary_v6_8.new_spread_order_message = {}

-- Size: New Spread Order Message
nse_nsecd_snapshot_binary_v6_8.new_spread_order_message.size =
  nse_nsecd_snapshot_binary_v6_8.timestamp.size + 
  nse_nsecd_snapshot_binary_v6_8.order_id.size + 
  nse_nsecd_snapshot_binary_v6_8.token.size + 
  nse_nsecd_snapshot_binary_v6_8.order_type.size + 
  nse_nsecd_snapshot_binary_v6_8.price.size + 
  nse_nsecd_snapshot_binary_v6_8.quantity.size

-- Display: New Spread Order Message
nse_nsecd_snapshot_binary_v6_8.new_spread_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Spread Order Message
nse_nsecd_snapshot_binary_v6_8.new_spread_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: LONG
  index, timestamp = nse_nsecd_snapshot_binary_v6_8.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: DOUBLE
  index, order_id = nse_nsecd_snapshot_binary_v6_8.order_id.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nsecd_snapshot_binary_v6_8.token.dissect(buffer, index, packet, parent)

  -- Order Type: CHAR
  index, order_type = nse_nsecd_snapshot_binary_v6_8.order_type.dissect(buffer, index, packet, parent)

  -- Price: INT
  index, price = nse_nsecd_snapshot_binary_v6_8.price.dissect(buffer, index, packet, parent)

  -- Quantity: INT
  index, quantity = nse_nsecd_snapshot_binary_v6_8.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Spread Order Message
nse_nsecd_snapshot_binary_v6_8.new_spread_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecd_snapshot_binary_v6_8.fields.new_spread_order_message, buffer(offset, 0))
    local index = nse_nsecd_snapshot_binary_v6_8.new_spread_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecd_snapshot_binary_v6_8.new_spread_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecd_snapshot_binary_v6_8.new_spread_order_message.fields(buffer, offset, packet, parent)
  end
end

-- New Order Message
nse_nsecd_snapshot_binary_v6_8.new_order_message = {}

-- Size: New Order Message
nse_nsecd_snapshot_binary_v6_8.new_order_message.size =
  nse_nsecd_snapshot_binary_v6_8.timestamp.size + 
  nse_nsecd_snapshot_binary_v6_8.order_id.size + 
  nse_nsecd_snapshot_binary_v6_8.token.size + 
  nse_nsecd_snapshot_binary_v6_8.order_type.size + 
  nse_nsecd_snapshot_binary_v6_8.price.size + 
  nse_nsecd_snapshot_binary_v6_8.quantity.size

-- Display: New Order Message
nse_nsecd_snapshot_binary_v6_8.new_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Message
nse_nsecd_snapshot_binary_v6_8.new_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: LONG
  index, timestamp = nse_nsecd_snapshot_binary_v6_8.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: DOUBLE
  index, order_id = nse_nsecd_snapshot_binary_v6_8.order_id.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nsecd_snapshot_binary_v6_8.token.dissect(buffer, index, packet, parent)

  -- Order Type: CHAR
  index, order_type = nse_nsecd_snapshot_binary_v6_8.order_type.dissect(buffer, index, packet, parent)

  -- Price: INT
  index, price = nse_nsecd_snapshot_binary_v6_8.price.dissect(buffer, index, packet, parent)

  -- Quantity: INT
  index, quantity = nse_nsecd_snapshot_binary_v6_8.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Message
nse_nsecd_snapshot_binary_v6_8.new_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecd_snapshot_binary_v6_8.fields.new_order_message, buffer(offset, 0))
    local index = nse_nsecd_snapshot_binary_v6_8.new_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecd_snapshot_binary_v6_8.new_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecd_snapshot_binary_v6_8.new_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nse_nsecd_snapshot_binary_v6_8.payload = {}

-- Dissect: Payload
nse_nsecd_snapshot_binary_v6_8.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect New Order Message
  if message_type == "N" then
    return nse_nsecd_snapshot_binary_v6_8.new_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Spread Order Message
  if message_type == "G" then
    return nse_nsecd_snapshot_binary_v6_8.new_spread_order_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message
nse_nsecd_snapshot_binary_v6_8.message = {}

-- Calculate size of: Message
nse_nsecd_snapshot_binary_v6_8.message.size = function(buffer, offset)
  local index = 0

  index = index + nse_nsecd_snapshot_binary_v6_8.message_type.size

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 1, 1):string()
  index = index + nse_nsecd_snapshot_binary_v6_8.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
nse_nsecd_snapshot_binary_v6_8.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nse_nsecd_snapshot_binary_v6_8.message.fields = function(buffer, offset, packet, parent, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nsecd_snapshot_binary_v6_8.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Type: Char
  index, message_type = nse_nsecd_snapshot_binary_v6_8.message_type.dissect(buffer, index, packet, parent)

  -- Payload: Runtime Type with 2 branches
  index = nse_nsecd_snapshot_binary_v6_8.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nse_nsecd_snapshot_binary_v6_8.message.dissect = function(buffer, offset, packet, parent, message_index)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecd_snapshot_binary_v6_8.fields.message, buffer(offset, 0))
    local index = nse_nsecd_snapshot_binary_v6_8.message.fields(buffer, offset, packet, parent, message_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecd_snapshot_binary_v6_8.message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecd_snapshot_binary_v6_8.message.fields(buffer, offset, packet, parent, message_index)
  end
end

-- Snapshot Header
nse_nsecd_snapshot_binary_v6_8.snapshot_header = {}

-- Size: Snapshot Header
nse_nsecd_snapshot_binary_v6_8.snapshot_header.size =
  nse_nsecd_snapshot_binary_v6_8.trans_code.size + 
  nse_nsecd_snapshot_binary_v6_8.size.size + 
  nse_nsecd_snapshot_binary_v6_8.number_of_records.size + 
  nse_nsecd_snapshot_binary_v6_8.last_sequence_number.size + 
  nse_nsecd_snapshot_binary_v6_8.stream_id.size

-- Display: Snapshot Header
nse_nsecd_snapshot_binary_v6_8.snapshot_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Header
nse_nsecd_snapshot_binary_v6_8.snapshot_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trans Code: Short
  index, trans_code = nse_nsecd_snapshot_binary_v6_8.trans_code.dissect(buffer, index, packet, parent)

  -- Size: Int
  index, size = nse_nsecd_snapshot_binary_v6_8.size.dissect(buffer, index, packet, parent)

  -- Number Of Records: Int
  index, number_of_records = nse_nsecd_snapshot_binary_v6_8.number_of_records.dissect(buffer, index, packet, parent)

  -- Last Sequence Number: Uint
  index, last_sequence_number = nse_nsecd_snapshot_binary_v6_8.last_sequence_number.dissect(buffer, index, packet, parent)

  -- Stream Id: Short
  index, stream_id = nse_nsecd_snapshot_binary_v6_8.stream_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Header
nse_nsecd_snapshot_binary_v6_8.snapshot_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecd_snapshot_binary_v6_8.fields.snapshot_header, buffer(offset, 0))
    local index = nse_nsecd_snapshot_binary_v6_8.snapshot_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecd_snapshot_binary_v6_8.snapshot_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecd_snapshot_binary_v6_8.snapshot_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nse_nsecd_snapshot_binary_v6_8.packet = {}

-- Verify required size of Tcp packet
nse_nsecd_snapshot_binary_v6_8.packet.requiredsize = function(buffer)
  return buffer:len() >= nse_nsecd_snapshot_binary_v6_8.snapshot_header.size
end

-- Dissect Packet
nse_nsecd_snapshot_binary_v6_8.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Snapshot Header: Struct of 5 fields
  index, snapshot_header = nse_nsecd_snapshot_binary_v6_8.snapshot_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Number Of Records
  local number_of_records = buffer(index - 10, 4):le_int()

  -- Repeating: Message
  for message_index = 1, number_of_records do
    index, message = nse_nsecd_snapshot_binary_v6_8.message.dissect(buffer, index, packet, parent, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nse_nsecd_snapshot_binary_v6_8.init()
end

-- Dissector for Nse NseCd Snapshot Binary 6.8
function omi_nse_nsecd_snapshot_binary_v6_8.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nse_nsecd_snapshot_binary_v6_8.name

  -- Dissect protocol
  local protocol = parent:add(omi_nse_nsecd_snapshot_binary_v6_8, buffer(), omi_nse_nsecd_snapshot_binary_v6_8.description, "("..buffer:len().." Bytes)")
  return nse_nsecd_snapshot_binary_v6_8.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
nse_nsecd_snapshot_binary_v6_8.packet.fingerprint = function(buffer)
  if buffer:len() < 17 then
    return false
  end
  local message_type = buffer(16, 1):string()

  -- New Order Message
  if message_type == "N" then
    return true
  end

  -- New Spread Order Message
  if message_type == "G" then
    return true
  end

  return false
end



-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nse NseCd Snapshot Binary 6.8 (Tcp)
local function omi_nse_nsecd_snapshot_binary_v6_8_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nse_nsecd_snapshot_binary_v6_8.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not nse_nsecd_snapshot_binary_v6_8.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nse_nsecd_snapshot_binary_v6_8
  omi_nse_nsecd_snapshot_binary_v6_8.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nse NseCd Snapshot Binary 6.8
omi_nse_nsecd_snapshot_binary_v6_8:register_heuristic("tcp", omi_nse_nsecd_snapshot_binary_v6_8_tcp_acceptor_heuristic)

-- Register Nse NseCd Snapshot Binary 6.8 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_nse_nsecd_snapshot_binary_v6_8)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Stock Exchange of India Ltd
--   Version: 6.8
--   Date: Monday, December 1, 2025
--   Specification: MTBT_CUR_NNF_PROTOCOL_6_8_20260401172325.pdf
--
-- Script:
--   Generator: 1.5.0.0
--   Compiler: 2.0
--   License: Public/GPLv3
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
