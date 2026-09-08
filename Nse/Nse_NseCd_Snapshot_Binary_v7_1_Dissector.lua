-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nse NseCd Snapshot Binary 7.1 Protocol
local omi_nse_nsecd_snapshot_binary_v7_1 = Proto("Omi.Nse.NseCd.Snapshot.Binary.v7.1", "Nse NseCd Snapshot Binary 7.1")

-- Protocol table
local nse_nsecd_snapshot_binary_v7_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nse NseCd Snapshot Binary 7.1 Fields
omi_nse_nsecd_snapshot_binary_v7_1.fields.client_message_type = ProtoField.new("Client Message Type", "nse.nsecd.snapshot.binary.v7.1.clientmessagetype", ftypes.STRING)
omi_nse_nsecd_snapshot_binary_v7_1.fields.end_sequence_number = ProtoField.new("End Sequence Number", "nse.nsecd.snapshot.binary.v7.1.endsequencenumber", ftypes.UINT32)
omi_nse_nsecd_snapshot_binary_v7_1.fields.last_sequence_number = ProtoField.new("Last Sequence Number", "nse.nsecd.snapshot.binary.v7.1.lastsequencenumber", ftypes.UINT32)
omi_nse_nsecd_snapshot_binary_v7_1.fields.message_length = ProtoField.new("Message Length", "nse.nsecd.snapshot.binary.v7.1.messagelength", ftypes.INT16)
omi_nse_nsecd_snapshot_binary_v7_1.fields.message_type = ProtoField.new("Message Type", "nse.nsecd.snapshot.binary.v7.1.messagetype", ftypes.STRING)
omi_nse_nsecd_snapshot_binary_v7_1.fields.number_of_records = ProtoField.new("Number Of Records", "nse.nsecd.snapshot.binary.v7.1.numberofrecords", ftypes.INT32)
omi_nse_nsecd_snapshot_binary_v7_1.fields.order_id = ProtoField.new("Order Id", "nse.nsecd.snapshot.binary.v7.1.orderid", ftypes.DOUBLE)
omi_nse_nsecd_snapshot_binary_v7_1.fields.order_type = ProtoField.new("Order Type", "nse.nsecd.snapshot.binary.v7.1.ordertype", ftypes.STRING)
omi_nse_nsecd_snapshot_binary_v7_1.fields.price = ProtoField.new("Price", "nse.nsecd.snapshot.binary.v7.1.price", ftypes.DOUBLE)
omi_nse_nsecd_snapshot_binary_v7_1.fields.quantity = ProtoField.new("Quantity", "nse.nsecd.snapshot.binary.v7.1.quantity", ftypes.INT32)
omi_nse_nsecd_snapshot_binary_v7_1.fields.request_status = ProtoField.new("Request Status", "nse.nsecd.snapshot.binary.v7.1.requeststatus", ftypes.STRING)
omi_nse_nsecd_snapshot_binary_v7_1.fields.response_message_type = ProtoField.new("Response Message Type", "nse.nsecd.snapshot.binary.v7.1.responsemessagetype", ftypes.STRING)
omi_nse_nsecd_snapshot_binary_v7_1.fields.sequence_number = ProtoField.new("Sequence Number", "nse.nsecd.snapshot.binary.v7.1.sequencenumber", ftypes.UINT32)
omi_nse_nsecd_snapshot_binary_v7_1.fields.size = ProtoField.new("Size", "nse.nsecd.snapshot.binary.v7.1.size", ftypes.INT32)
omi_nse_nsecd_snapshot_binary_v7_1.fields.start_sequence_number = ProtoField.new("Start Sequence Number", "nse.nsecd.snapshot.binary.v7.1.startsequencenumber", ftypes.UINT32)
omi_nse_nsecd_snapshot_binary_v7_1.fields.stream_id = ProtoField.new("Stream Id", "nse.nsecd.snapshot.binary.v7.1.streamid", ftypes.INT16)
omi_nse_nsecd_snapshot_binary_v7_1.fields.timestamp = ProtoField.new("Timestamp", "nse.nsecd.snapshot.binary.v7.1.timestamp", ftypes.INT64)
omi_nse_nsecd_snapshot_binary_v7_1.fields.token = ProtoField.new("Token", "nse.nsecd.snapshot.binary.v7.1.token", ftypes.INT32)
omi_nse_nsecd_snapshot_binary_v7_1.fields.trans_code = ProtoField.new("Trans Code", "nse.nsecd.snapshot.binary.v7.1.transcode", ftypes.INT16)

-- Nse NseCd Snapshot Binary 7.1 Headers
omi_nse_nsecd_snapshot_binary_v7_1.fields.client_message = ProtoField.new("Client Message", "nse.nsecd.snapshot.binary.v7.1.clientmessage", ftypes.STRING)
omi_nse_nsecd_snapshot_binary_v7_1.fields.client_packet = ProtoField.new("Client Packet", "nse.nsecd.snapshot.binary.v7.1.clientpacket", ftypes.STRING)
omi_nse_nsecd_snapshot_binary_v7_1.fields.message = ProtoField.new("Message", "nse.nsecd.snapshot.binary.v7.1.message", ftypes.STRING)
omi_nse_nsecd_snapshot_binary_v7_1.fields.packet = ProtoField.new("Packet", "nse.nsecd.snapshot.binary.v7.1.packet", ftypes.STRING)
omi_nse_nsecd_snapshot_binary_v7_1.fields.response_message = ProtoField.new("Response Message", "nse.nsecd.snapshot.binary.v7.1.responsemessage", ftypes.STRING)
omi_nse_nsecd_snapshot_binary_v7_1.fields.response_packet = ProtoField.new("Response Packet", "nse.nsecd.snapshot.binary.v7.1.responsepacket", ftypes.STRING)
omi_nse_nsecd_snapshot_binary_v7_1.fields.snapshot_header = ProtoField.new("Snapshot Header", "nse.nsecd.snapshot.binary.v7.1.snapshotheader", ftypes.STRING)
omi_nse_nsecd_snapshot_binary_v7_1.fields.stream_header = ProtoField.new("Stream Header", "nse.nsecd.snapshot.binary.v7.1.streamheader", ftypes.STRING)

-- Nse NseCd Snapshot 7.1 Application Messages
omi_nse_nsecd_snapshot_binary_v7_1.fields.new_order_message = ProtoField.new("New Order Message", "nse.nsecd.snapshot.binary.v7.1.newordermessage", ftypes.STRING)
omi_nse_nsecd_snapshot_binary_v7_1.fields.new_spread_order_message = ProtoField.new("New Spread Order Message", "nse.nsecd.snapshot.binary.v7.1.newspreadordermessage", ftypes.STRING)
omi_nse_nsecd_snapshot_binary_v7_1.fields.order_book_snapshot_recovery_request_message = ProtoField.new("Order Book Snapshot Recovery Request Message", "nse.nsecd.snapshot.binary.v7.1.orderbooksnapshotrecoveryrequestmessage", ftypes.STRING)
omi_nse_nsecd_snapshot_binary_v7_1.fields.order_book_snapshot_recovery_response_message = ProtoField.new("Order Book Snapshot Recovery Response Message", "nse.nsecd.snapshot.binary.v7.1.orderbooksnapshotrecoveryresponsemessage", ftypes.STRING)

-- Nse NseCd Snapshot Binary 7.1 generated fields
omi_nse_nsecd_snapshot_binary_v7_1.fields.message_index = ProtoField.new("Message Index", "nse.nsecd.snapshot.binary.v7.1.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nse NseCd Snapshot Binary 7.1 Element Dissection Options
show.structs = true
show.application_messages = true
show.indexes = true

-- Register Nse NseCd Snapshot Binary 7.1 Show Options
local role_enum = {
  { 1, "Resolve from the conversation", 0 },
  { 2, "Initiator", 1 },
  { 3, "Acceptor", 2 }
}
omi_nse_nsecd_snapshot_binary_v7_1.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_nse_nsecd_snapshot_binary_v7_1.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_nse_nsecd_snapshot_binary_v7_1.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_nse_nsecd_snapshot_binary_v7_1.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nse_nsecd_snapshot_binary_v7_1.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nse_nsecd_snapshot_binary_v7_1.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

-- Handle changed preferences
function omi_nse_nsecd_snapshot_binary_v7_1.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nse_nsecd_snapshot_binary_v7_1.prefs.show_application_messages then
    show.application_messages = omi_nse_nsecd_snapshot_binary_v7_1.prefs.show_application_messages
  end
  if show.structs ~= omi_nse_nsecd_snapshot_binary_v7_1.prefs.show_structs then
    show.structs = omi_nse_nsecd_snapshot_binary_v7_1.prefs.show_structs
  end
  if show.indexes ~= omi_nse_nsecd_snapshot_binary_v7_1.prefs.show_indexes then
    show.indexes = omi_nse_nsecd_snapshot_binary_v7_1.prefs.show_indexes
  end
end


-----------------------------------------------------------------------
-- Nse NseCd Snapshot Binary 7.1 Fields
-----------------------------------------------------------------------

-- Client Message Type
nse_nsecd_snapshot_binary_v7_1.client_message_type = {}

-- Size: Client Message Type
nse_nsecd_snapshot_binary_v7_1.client_message_type.size = 1

-- Display: Client Message Type
nse_nsecd_snapshot_binary_v7_1.client_message_type.display = function(value)
  if value == "O" then
    return "Client Message Type: Order Book Snapshot Recovery Request Message (O)"
  end

  return "Client Message Type: Unknown("..value..")"
end

-- Dissect: Client Message Type
nse_nsecd_snapshot_binary_v7_1.client_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_snapshot_binary_v7_1.client_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsecd_snapshot_binary_v7_1.client_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_snapshot_binary_v7_1.fields.client_message_type, range, value, display)

  return offset + length, value
end

-- End Sequence Number
nse_nsecd_snapshot_binary_v7_1.end_sequence_number = {}

-- Size: End Sequence Number
nse_nsecd_snapshot_binary_v7_1.end_sequence_number.size = 4

-- Display: End Sequence Number
nse_nsecd_snapshot_binary_v7_1.end_sequence_number.display = function(value)
  return "End Sequence Number: "..value
end

-- Dissect: End Sequence Number
nse_nsecd_snapshot_binary_v7_1.end_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_snapshot_binary_v7_1.end_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nse_nsecd_snapshot_binary_v7_1.end_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_snapshot_binary_v7_1.fields.end_sequence_number, range, value, display)

  return offset + length, value
end

-- Last Sequence Number
nse_nsecd_snapshot_binary_v7_1.last_sequence_number = {}

-- Size: Last Sequence Number
nse_nsecd_snapshot_binary_v7_1.last_sequence_number.size = 4

-- Display: Last Sequence Number
nse_nsecd_snapshot_binary_v7_1.last_sequence_number.display = function(value)
  return "Last Sequence Number: "..value
end

-- Dissect: Last Sequence Number
nse_nsecd_snapshot_binary_v7_1.last_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_snapshot_binary_v7_1.last_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nse_nsecd_snapshot_binary_v7_1.last_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_snapshot_binary_v7_1.fields.last_sequence_number, range, value, display)

  return offset + length, value
end

-- Message Length
nse_nsecd_snapshot_binary_v7_1.message_length = {}

-- Size: Message Length
nse_nsecd_snapshot_binary_v7_1.message_length.size = 2

-- Display: Message Length
nse_nsecd_snapshot_binary_v7_1.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nse_nsecd_snapshot_binary_v7_1.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_snapshot_binary_v7_1.message_length.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nse_nsecd_snapshot_binary_v7_1.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_snapshot_binary_v7_1.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
nse_nsecd_snapshot_binary_v7_1.message_type = {}

-- Size: Message Type
nse_nsecd_snapshot_binary_v7_1.message_type.size = 1

-- Display: Message Type
nse_nsecd_snapshot_binary_v7_1.message_type.display = function(value)
  if value == "N" then
    return "Message Type: New Order Message (N)"
  end
  if value == "G" then
    return "Message Type: New Spread Order Message (G)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nse_nsecd_snapshot_binary_v7_1.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_snapshot_binary_v7_1.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsecd_snapshot_binary_v7_1.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_snapshot_binary_v7_1.fields.message_type, range, value, display)

  return offset + length, value
end

-- Number Of Records
nse_nsecd_snapshot_binary_v7_1.number_of_records = {}

-- Size: Number Of Records
nse_nsecd_snapshot_binary_v7_1.number_of_records.size = 4

-- Display: Number Of Records
nse_nsecd_snapshot_binary_v7_1.number_of_records.display = function(value)
  return "Number Of Records: "..value
end

-- Dissect: Number Of Records
nse_nsecd_snapshot_binary_v7_1.number_of_records.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_snapshot_binary_v7_1.number_of_records.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nse_nsecd_snapshot_binary_v7_1.number_of_records.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_snapshot_binary_v7_1.fields.number_of_records, range, value, display)

  return offset + length, value
end

-- Order Id
nse_nsecd_snapshot_binary_v7_1.order_id = {}

-- Size: Order Id
nse_nsecd_snapshot_binary_v7_1.order_id.size = 8

-- Display: Order Id
nse_nsecd_snapshot_binary_v7_1.order_id.display = function(value)
  return "Order Id: "..string.format("%.0f", value)
end

-- Dissect: Order Id
nse_nsecd_snapshot_binary_v7_1.order_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_snapshot_binary_v7_1.order_id.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nse_nsecd_snapshot_binary_v7_1.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_snapshot_binary_v7_1.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Type
nse_nsecd_snapshot_binary_v7_1.order_type = {}

-- Size: Order Type
nse_nsecd_snapshot_binary_v7_1.order_type.size = 1

-- Display: Order Type
nse_nsecd_snapshot_binary_v7_1.order_type.display = function(value)
  if value == "B" then
    return "Order Type: Buy Order (B)"
  end
  if value == "S" then
    return "Order Type: Sell Order (S)"
  end

  return "Order Type: Unknown("..value..")"
end

-- Dissect: Order Type
nse_nsecd_snapshot_binary_v7_1.order_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_snapshot_binary_v7_1.order_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsecd_snapshot_binary_v7_1.order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_snapshot_binary_v7_1.fields.order_type, range, value, display)

  return offset + length, value
end

-- Price
nse_nsecd_snapshot_binary_v7_1.price = {}

-- Size: Price
nse_nsecd_snapshot_binary_v7_1.price.size = 4

-- Display: Price
nse_nsecd_snapshot_binary_v7_1.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
nse_nsecd_snapshot_binary_v7_1.price.translate = function(raw)
  return raw/10000000
end

-- Dissect: Price
nse_nsecd_snapshot_binary_v7_1.price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_snapshot_binary_v7_1.price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nse_nsecd_snapshot_binary_v7_1.price.translate(raw)
  local display = nse_nsecd_snapshot_binary_v7_1.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_snapshot_binary_v7_1.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity
nse_nsecd_snapshot_binary_v7_1.quantity = {}

-- Size: Quantity
nse_nsecd_snapshot_binary_v7_1.quantity.size = 4

-- Display: Quantity
nse_nsecd_snapshot_binary_v7_1.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
nse_nsecd_snapshot_binary_v7_1.quantity.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_snapshot_binary_v7_1.quantity.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nse_nsecd_snapshot_binary_v7_1.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_snapshot_binary_v7_1.fields.quantity, range, value, display)

  return offset + length, value
end

-- Request Status
nse_nsecd_snapshot_binary_v7_1.request_status = {}

-- Size: Request Status
nse_nsecd_snapshot_binary_v7_1.request_status.size = 1

-- Display: Request Status
nse_nsecd_snapshot_binary_v7_1.request_status.display = function(value)
  if value == "S" then
    return "Request Status: Success (S)"
  end
  if value == "E" then
    return "Request Status: Error (E)"
  end

  return "Request Status: Unknown("..value..")"
end

-- Dissect: Request Status
nse_nsecd_snapshot_binary_v7_1.request_status.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_snapshot_binary_v7_1.request_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsecd_snapshot_binary_v7_1.request_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_snapshot_binary_v7_1.fields.request_status, range, value, display)

  return offset + length, value
end

-- Response Message Type
nse_nsecd_snapshot_binary_v7_1.response_message_type = {}

-- Size: Response Message Type
nse_nsecd_snapshot_binary_v7_1.response_message_type.size = 1

-- Display: Response Message Type
nse_nsecd_snapshot_binary_v7_1.response_message_type.display = function(value)
  if value == "B" then
    return "Response Message Type: Order Book Snapshot Recovery Response Message (B)"
  end

  return "Response Message Type: Unknown("..value..")"
end

-- Dissect: Response Message Type
nse_nsecd_snapshot_binary_v7_1.response_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_snapshot_binary_v7_1.response_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsecd_snapshot_binary_v7_1.response_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_snapshot_binary_v7_1.fields.response_message_type, range, value, display)

  return offset + length, value
end

-- Sequence Number
nse_nsecd_snapshot_binary_v7_1.sequence_number = {}

-- Size: Sequence Number
nse_nsecd_snapshot_binary_v7_1.sequence_number.size = 4

-- Display: Sequence Number
nse_nsecd_snapshot_binary_v7_1.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nse_nsecd_snapshot_binary_v7_1.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_snapshot_binary_v7_1.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nse_nsecd_snapshot_binary_v7_1.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_snapshot_binary_v7_1.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Size
nse_nsecd_snapshot_binary_v7_1.size = {}

-- Size: Size
nse_nsecd_snapshot_binary_v7_1.size.size = 4

-- Display: Size
nse_nsecd_snapshot_binary_v7_1.size.display = function(value)
  return "Size: "..value
end

-- Dissect: Size
nse_nsecd_snapshot_binary_v7_1.size.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_snapshot_binary_v7_1.size.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nse_nsecd_snapshot_binary_v7_1.size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_snapshot_binary_v7_1.fields.size, range, value, display)

  return offset + length, value
end

-- Start Sequence Number
nse_nsecd_snapshot_binary_v7_1.start_sequence_number = {}

-- Size: Start Sequence Number
nse_nsecd_snapshot_binary_v7_1.start_sequence_number.size = 4

-- Display: Start Sequence Number
nse_nsecd_snapshot_binary_v7_1.start_sequence_number.display = function(value)
  return "Start Sequence Number: "..value
end

-- Dissect: Start Sequence Number
nse_nsecd_snapshot_binary_v7_1.start_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_snapshot_binary_v7_1.start_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nse_nsecd_snapshot_binary_v7_1.start_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_snapshot_binary_v7_1.fields.start_sequence_number, range, value, display)

  return offset + length, value
end

-- Stream Id
nse_nsecd_snapshot_binary_v7_1.stream_id = {}

-- Size: Stream Id
nse_nsecd_snapshot_binary_v7_1.stream_id.size = 2

-- Display: Stream Id
nse_nsecd_snapshot_binary_v7_1.stream_id.display = function(value)
  return "Stream Id: "..value
end

-- Dissect: Stream Id
nse_nsecd_snapshot_binary_v7_1.stream_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_snapshot_binary_v7_1.stream_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nse_nsecd_snapshot_binary_v7_1.stream_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_snapshot_binary_v7_1.fields.stream_id, range, value, display)

  return offset + length, value
end

-- Timestamp
nse_nsecd_snapshot_binary_v7_1.timestamp = {}

-- Size: Timestamp
nse_nsecd_snapshot_binary_v7_1.timestamp.size = 8

-- Display: Timestamp
nse_nsecd_snapshot_binary_v7_1.timestamp.display = function(value)
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
nse_nsecd_snapshot_binary_v7_1.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_snapshot_binary_v7_1.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = nse_nsecd_snapshot_binary_v7_1.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_snapshot_binary_v7_1.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Token
nse_nsecd_snapshot_binary_v7_1.token = {}

-- Size: Token
nse_nsecd_snapshot_binary_v7_1.token.size = 4

-- Display: Token
nse_nsecd_snapshot_binary_v7_1.token.display = function(value)
  return "Token: "..value
end

-- Dissect: Token
nse_nsecd_snapshot_binary_v7_1.token.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_snapshot_binary_v7_1.token.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nse_nsecd_snapshot_binary_v7_1.token.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_snapshot_binary_v7_1.fields.token, range, value, display)

  return offset + length, value
end

-- Trans Code
nse_nsecd_snapshot_binary_v7_1.trans_code = {}

-- Size: Trans Code
nse_nsecd_snapshot_binary_v7_1.trans_code.size = 2

-- Display: Trans Code
nse_nsecd_snapshot_binary_v7_1.trans_code.display = function(value)
  if value == 10501 then
    return "Trans Code: Order Book Snapshot (10501)"
  end

  return "Trans Code: Unknown("..value..")"
end

-- Dissect: Trans Code
nse_nsecd_snapshot_binary_v7_1.trans_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsecd_snapshot_binary_v7_1.trans_code.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nse_nsecd_snapshot_binary_v7_1.trans_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsecd_snapshot_binary_v7_1.fields.trans_code, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nse NseCd Snapshot Binary 7.1
-----------------------------------------------------------------------

-- Order Book Snapshot Recovery Response Message
nse_nsecd_snapshot_binary_v7_1.order_book_snapshot_recovery_response_message = {}

-- Size: Order Book Snapshot Recovery Response Message
nse_nsecd_snapshot_binary_v7_1.order_book_snapshot_recovery_response_message.size =
  nse_nsecd_snapshot_binary_v7_1.request_status.size

-- Display: Order Book Snapshot Recovery Response Message
nse_nsecd_snapshot_binary_v7_1.order_book_snapshot_recovery_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book Snapshot Recovery Response Message
nse_nsecd_snapshot_binary_v7_1.order_book_snapshot_recovery_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Status: CHAR
  index, request_status = nse_nsecd_snapshot_binary_v7_1.request_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book Snapshot Recovery Response Message
nse_nsecd_snapshot_binary_v7_1.order_book_snapshot_recovery_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecd_snapshot_binary_v7_1.fields.order_book_snapshot_recovery_response_message, buffer(offset, 0))
    local index = nse_nsecd_snapshot_binary_v7_1.order_book_snapshot_recovery_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecd_snapshot_binary_v7_1.order_book_snapshot_recovery_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecd_snapshot_binary_v7_1.order_book_snapshot_recovery_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Response Payload
nse_nsecd_snapshot_binary_v7_1.response_payload = {}

-- Dissect: Response Payload
nse_nsecd_snapshot_binary_v7_1.response_payload.dissect = function(buffer, offset, packet, parent, response_message_type)
  -- Dissect Order Book Snapshot Recovery Response Message
  if response_message_type == "B" then
    return nse_nsecd_snapshot_binary_v7_1.order_book_snapshot_recovery_response_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Response Message
nse_nsecd_snapshot_binary_v7_1.response_message = {}

-- Size: Response Message
nse_nsecd_snapshot_binary_v7_1.response_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index)
end

-- Display: Response Message
nse_nsecd_snapshot_binary_v7_1.response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Response Message
nse_nsecd_snapshot_binary_v7_1.response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Response Message Type: Char
  index, response_message_type = nse_nsecd_snapshot_binary_v7_1.response_message_type.dissect(buffer, index, packet, parent)

  -- Dependency for Response Payload
  local end_of_payload = buffer:len()

  -- Response Payload: Runtime Type with 1 branches
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Response Payload: Runtime Type with 1 branches
    index = nse_nsecd_snapshot_binary_v7_1.response_payload.dissect(buffer, index, packet, parent, response_message_type)
  end

  return index
end

-- Dissect: Response Message
nse_nsecd_snapshot_binary_v7_1.response_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecd_snapshot_binary_v7_1.fields.response_message, buffer(offset, 0))
    local index = nse_nsecd_snapshot_binary_v7_1.response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecd_snapshot_binary_v7_1.response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecd_snapshot_binary_v7_1.response_message.fields(buffer, offset, packet, parent)
  end
end

-- Stream Header
nse_nsecd_snapshot_binary_v7_1.stream_header = {}

-- Size: Stream Header
nse_nsecd_snapshot_binary_v7_1.stream_header.size =
  nse_nsecd_snapshot_binary_v7_1.message_length.size + 
  nse_nsecd_snapshot_binary_v7_1.stream_id.size + 
  nse_nsecd_snapshot_binary_v7_1.sequence_number.size

-- Display: Stream Header
nse_nsecd_snapshot_binary_v7_1.stream_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Header
nse_nsecd_snapshot_binary_v7_1.stream_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: Short
  index, message_length = nse_nsecd_snapshot_binary_v7_1.message_length.dissect(buffer, index, packet, parent)

  -- Stream Id: SHORT
  index, stream_id = nse_nsecd_snapshot_binary_v7_1.stream_id.dissect(buffer, index, packet, parent)

  -- Sequence Number: Uint
  index, sequence_number = nse_nsecd_snapshot_binary_v7_1.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Header
nse_nsecd_snapshot_binary_v7_1.stream_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecd_snapshot_binary_v7_1.fields.stream_header, buffer(offset, 0))
    local index = nse_nsecd_snapshot_binary_v7_1.stream_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecd_snapshot_binary_v7_1.stream_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecd_snapshot_binary_v7_1.stream_header.fields(buffer, offset, packet, parent)
  end
end

-- Response Packet
nse_nsecd_snapshot_binary_v7_1.response_packet = {}

-- Verify required size of Tcp packet
nse_nsecd_snapshot_binary_v7_1.response_packet.requiredsize = function(buffer)
  return buffer:len() >= nse_nsecd_snapshot_binary_v7_1.stream_header.size + nse_nsecd_snapshot_binary_v7_1.response_message_type.size
end

-- Dissect Response Packet
nse_nsecd_snapshot_binary_v7_1.response_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Stream Header: Struct of 3 fields
  index, stream_header = nse_nsecd_snapshot_binary_v7_1.stream_header.dissect(buffer, index, packet, parent)

  -- Response Message: Struct of 2 fields
  index, response_message = nse_nsecd_snapshot_binary_v7_1.response_message.dissect(buffer, index, packet, parent)

  return index
end

-- Order Book Snapshot Recovery Request Message
nse_nsecd_snapshot_binary_v7_1.order_book_snapshot_recovery_request_message = {}

-- Size: Order Book Snapshot Recovery Request Message
nse_nsecd_snapshot_binary_v7_1.order_book_snapshot_recovery_request_message.size =
  nse_nsecd_snapshot_binary_v7_1.stream_id.size + 
  nse_nsecd_snapshot_binary_v7_1.start_sequence_number.size + 
  nse_nsecd_snapshot_binary_v7_1.end_sequence_number.size

-- Display: Order Book Snapshot Recovery Request Message
nse_nsecd_snapshot_binary_v7_1.order_book_snapshot_recovery_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book Snapshot Recovery Request Message
nse_nsecd_snapshot_binary_v7_1.order_book_snapshot_recovery_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stream Id: SHORT
  index, stream_id = nse_nsecd_snapshot_binary_v7_1.stream_id.dissect(buffer, index, packet, parent)

  -- Start Sequence Number: UINT
  index, start_sequence_number = nse_nsecd_snapshot_binary_v7_1.start_sequence_number.dissect(buffer, index, packet, parent)

  -- End Sequence Number: UINT
  index, end_sequence_number = nse_nsecd_snapshot_binary_v7_1.end_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book Snapshot Recovery Request Message
nse_nsecd_snapshot_binary_v7_1.order_book_snapshot_recovery_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecd_snapshot_binary_v7_1.fields.order_book_snapshot_recovery_request_message, buffer(offset, 0))
    local index = nse_nsecd_snapshot_binary_v7_1.order_book_snapshot_recovery_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecd_snapshot_binary_v7_1.order_book_snapshot_recovery_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecd_snapshot_binary_v7_1.order_book_snapshot_recovery_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Client Payload
nse_nsecd_snapshot_binary_v7_1.client_payload = {}

-- Dissect: Client Payload
nse_nsecd_snapshot_binary_v7_1.client_payload.dissect = function(buffer, offset, packet, parent, client_message_type)
  -- Dissect Order Book Snapshot Recovery Request Message
  if client_message_type == "O" then
    return nse_nsecd_snapshot_binary_v7_1.order_book_snapshot_recovery_request_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Message
nse_nsecd_snapshot_binary_v7_1.client_message = {}

-- Size: Client Message
nse_nsecd_snapshot_binary_v7_1.client_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index)
end

-- Display: Client Message
nse_nsecd_snapshot_binary_v7_1.client_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Message
nse_nsecd_snapshot_binary_v7_1.client_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Message Type: Char
  index, client_message_type = nse_nsecd_snapshot_binary_v7_1.client_message_type.dissect(buffer, index, packet, parent)

  -- Dependency for Client Payload
  local end_of_payload = buffer:len()

  -- Client Payload: Runtime Type with 1 branches
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Client Payload: Runtime Type with 1 branches
    index = nse_nsecd_snapshot_binary_v7_1.client_payload.dissect(buffer, index, packet, parent, client_message_type)
  end

  return index
end

-- Dissect: Client Message
nse_nsecd_snapshot_binary_v7_1.client_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecd_snapshot_binary_v7_1.fields.client_message, buffer(offset, 0))
    local index = nse_nsecd_snapshot_binary_v7_1.client_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecd_snapshot_binary_v7_1.client_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecd_snapshot_binary_v7_1.client_message.fields(buffer, offset, packet, parent)
  end
end

-- Client Packet
nse_nsecd_snapshot_binary_v7_1.client_packet = {}

-- Verify required size of Tcp packet
nse_nsecd_snapshot_binary_v7_1.client_packet.requiredsize = function(buffer)
  return buffer:len() >= nse_nsecd_snapshot_binary_v7_1.client_message_type.size
end

-- Dissect Client Packet
nse_nsecd_snapshot_binary_v7_1.client_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Client Message: Struct of 2 fields
  index, client_message = nse_nsecd_snapshot_binary_v7_1.client_message.dissect(buffer, index, packet, parent)

  return index
end

-- New Spread Order Message
nse_nsecd_snapshot_binary_v7_1.new_spread_order_message = {}

-- Size: New Spread Order Message
nse_nsecd_snapshot_binary_v7_1.new_spread_order_message.size =
  nse_nsecd_snapshot_binary_v7_1.timestamp.size + 
  nse_nsecd_snapshot_binary_v7_1.order_id.size + 
  nse_nsecd_snapshot_binary_v7_1.token.size + 
  nse_nsecd_snapshot_binary_v7_1.order_type.size + 
  nse_nsecd_snapshot_binary_v7_1.price.size + 
  nse_nsecd_snapshot_binary_v7_1.quantity.size

-- Display: New Spread Order Message
nse_nsecd_snapshot_binary_v7_1.new_spread_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Spread Order Message
nse_nsecd_snapshot_binary_v7_1.new_spread_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: LONG
  index, timestamp = nse_nsecd_snapshot_binary_v7_1.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: DOUBLE
  index, order_id = nse_nsecd_snapshot_binary_v7_1.order_id.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nsecd_snapshot_binary_v7_1.token.dissect(buffer, index, packet, parent)

  -- Order Type: CHAR
  index, order_type = nse_nsecd_snapshot_binary_v7_1.order_type.dissect(buffer, index, packet, parent)

  -- Price: INT
  index, price = nse_nsecd_snapshot_binary_v7_1.price.dissect(buffer, index, packet, parent)

  -- Quantity: INT
  index, quantity = nse_nsecd_snapshot_binary_v7_1.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Spread Order Message
nse_nsecd_snapshot_binary_v7_1.new_spread_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecd_snapshot_binary_v7_1.fields.new_spread_order_message, buffer(offset, 0))
    local index = nse_nsecd_snapshot_binary_v7_1.new_spread_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecd_snapshot_binary_v7_1.new_spread_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecd_snapshot_binary_v7_1.new_spread_order_message.fields(buffer, offset, packet, parent)
  end
end

-- New Order Message
nse_nsecd_snapshot_binary_v7_1.new_order_message = {}

-- Size: New Order Message
nse_nsecd_snapshot_binary_v7_1.new_order_message.size =
  nse_nsecd_snapshot_binary_v7_1.timestamp.size + 
  nse_nsecd_snapshot_binary_v7_1.order_id.size + 
  nse_nsecd_snapshot_binary_v7_1.token.size + 
  nse_nsecd_snapshot_binary_v7_1.order_type.size + 
  nse_nsecd_snapshot_binary_v7_1.price.size + 
  nse_nsecd_snapshot_binary_v7_1.quantity.size

-- Display: New Order Message
nse_nsecd_snapshot_binary_v7_1.new_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Message
nse_nsecd_snapshot_binary_v7_1.new_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: LONG
  index, timestamp = nse_nsecd_snapshot_binary_v7_1.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: DOUBLE
  index, order_id = nse_nsecd_snapshot_binary_v7_1.order_id.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nsecd_snapshot_binary_v7_1.token.dissect(buffer, index, packet, parent)

  -- Order Type: CHAR
  index, order_type = nse_nsecd_snapshot_binary_v7_1.order_type.dissect(buffer, index, packet, parent)

  -- Price: INT
  index, price = nse_nsecd_snapshot_binary_v7_1.price.dissect(buffer, index, packet, parent)

  -- Quantity: INT
  index, quantity = nse_nsecd_snapshot_binary_v7_1.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Message
nse_nsecd_snapshot_binary_v7_1.new_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecd_snapshot_binary_v7_1.fields.new_order_message, buffer(offset, 0))
    local index = nse_nsecd_snapshot_binary_v7_1.new_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecd_snapshot_binary_v7_1.new_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecd_snapshot_binary_v7_1.new_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nse_nsecd_snapshot_binary_v7_1.payload = {}

-- Dissect: Payload
nse_nsecd_snapshot_binary_v7_1.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect New Order Message
  if message_type == "N" then
    return nse_nsecd_snapshot_binary_v7_1.new_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Spread Order Message
  if message_type == "G" then
    return nse_nsecd_snapshot_binary_v7_1.new_spread_order_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message
nse_nsecd_snapshot_binary_v7_1.message = {}

-- Calculate size of: Message
nse_nsecd_snapshot_binary_v7_1.message.size = function(buffer, offset)
  local index = 0

  index = index + nse_nsecd_snapshot_binary_v7_1.message_type.size

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 1, 1):string()
  index = index + nse_nsecd_snapshot_binary_v7_1.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
nse_nsecd_snapshot_binary_v7_1.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nse_nsecd_snapshot_binary_v7_1.message.fields = function(buffer, offset, packet, parent, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nsecd_snapshot_binary_v7_1.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Type: Char
  index, message_type = nse_nsecd_snapshot_binary_v7_1.message_type.dissect(buffer, index, packet, parent)

  -- Payload: Runtime Type with 2 branches
  index = nse_nsecd_snapshot_binary_v7_1.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nse_nsecd_snapshot_binary_v7_1.message.dissect = function(buffer, offset, packet, parent, message_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecd_snapshot_binary_v7_1.fields.message, buffer(offset, 0))
    local index = nse_nsecd_snapshot_binary_v7_1.message.fields(buffer, offset, packet, parent, message_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecd_snapshot_binary_v7_1.message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecd_snapshot_binary_v7_1.message.fields(buffer, offset, packet, parent, message_index)
  end
end

-- Snapshot Header
nse_nsecd_snapshot_binary_v7_1.snapshot_header = {}

-- Size: Snapshot Header
nse_nsecd_snapshot_binary_v7_1.snapshot_header.size =
  nse_nsecd_snapshot_binary_v7_1.trans_code.size + 
  nse_nsecd_snapshot_binary_v7_1.size.size + 
  nse_nsecd_snapshot_binary_v7_1.number_of_records.size + 
  nse_nsecd_snapshot_binary_v7_1.last_sequence_number.size + 
  nse_nsecd_snapshot_binary_v7_1.stream_id.size

-- Display: Snapshot Header
nse_nsecd_snapshot_binary_v7_1.snapshot_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Header
nse_nsecd_snapshot_binary_v7_1.snapshot_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trans Code: Short
  index, trans_code = nse_nsecd_snapshot_binary_v7_1.trans_code.dissect(buffer, index, packet, parent)

  -- Size: Int
  index, size = nse_nsecd_snapshot_binary_v7_1.size.dissect(buffer, index, packet, parent)

  -- Number Of Records: Int
  index, number_of_records = nse_nsecd_snapshot_binary_v7_1.number_of_records.dissect(buffer, index, packet, parent)

  -- Last Sequence Number: Uint
  index, last_sequence_number = nse_nsecd_snapshot_binary_v7_1.last_sequence_number.dissect(buffer, index, packet, parent)

  -- Stream Id: SHORT
  index, stream_id = nse_nsecd_snapshot_binary_v7_1.stream_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Header
nse_nsecd_snapshot_binary_v7_1.snapshot_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsecd_snapshot_binary_v7_1.fields.snapshot_header, buffer(offset, 0))
    local index = nse_nsecd_snapshot_binary_v7_1.snapshot_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsecd_snapshot_binary_v7_1.snapshot_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsecd_snapshot_binary_v7_1.snapshot_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nse_nsecd_snapshot_binary_v7_1.packet = {}

-- Verify required size of Tcp packet
nse_nsecd_snapshot_binary_v7_1.packet.requiredsize = function(buffer)
  return buffer:len() >= nse_nsecd_snapshot_binary_v7_1.snapshot_header.size
end

-- Dissect Packet
nse_nsecd_snapshot_binary_v7_1.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Snapshot Header: Struct of 5 fields
  index, snapshot_header = nse_nsecd_snapshot_binary_v7_1.snapshot_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Number Of Records
  local number_of_records = buffer(index - 10, 4):le_int()

  -- Repeating: Message
  for message_index = 1, number_of_records do
    index, message = nse_nsecd_snapshot_binary_v7_1.message.dissect(buffer, index, packet, parent, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nse_nsecd_snapshot_binary_v7_1.init()
end

-- Connection roles for Nse NseCd Snapshot Binary 7.1: Client is the initiator, Server is the acceptor, Server is the acceptor
-- Initiator endpoint of each conversation, recorded from its first frame
local initiators = {}

-- Conversations whose first frame proved to be the acceptor's: the heuristic swaps the sides
local swapped = {}

-- Endpoint key of an address and port
local function endpoint(address, port)
  return tostring(address)..":"..tostring(port)
end


-- Conversation key, the same in both directions
local function conversation(packet)
  local a = endpoint(packet.src, packet.src_port)
  local b = endpoint(packet.dst, packet.dst_port)
  if a < b then
    return a.." "..b
  end
  return b.." "..a
end


-- Connection role of the frame's sender
nse_nsecd_snapshot_binary_v7_1.role = function(packet)
  if omi_nse_nsecd_snapshot_binary_v7_1.prefs.assume_role == 1 then
    return "initiator"
  end
  if omi_nse_nsecd_snapshot_binary_v7_1.prefs.assume_role == 2 then
    return "acceptor"
  end
  local port = omi_nse_nsecd_snapshot_binary_v7_1.prefs.acceptor_port
  if port ~= 0 and packet.dst_port == port then
    return "initiator"
  end
  if port ~= 0 and packet.src_port == port then
    return "acceptor"
  end
  local key = conversation(packet)
  local sender = endpoint(packet.src, packet.src_port)
  if initiators[key] == nil then
    initiators[key] = sender
  end
  local first = initiators[key] == sender
  if omi_nse_nsecd_snapshot_binary_v7_1.prefs.swap_sides then
    first = not first
  end
  if swapped[key] then
    first = not first
  end
  if first then
    return "initiator"
  end
  return "acceptor"
end


-- Swap the resolved sides of the frame's conversation
nse_nsecd_snapshot_binary_v7_1.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Nse NseCd Snapshot Binary 7.1
function omi_nse_nsecd_snapshot_binary_v7_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nse_nsecd_snapshot_binary_v7_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_nse_nsecd_snapshot_binary_v7_1, buffer(), omi_nse_nsecd_snapshot_binary_v7_1.description, "("..buffer:len().." Bytes)")
  local role = nse_nsecd_snapshot_binary_v7_1.role(packet)
  if role == "initiator" then
    return nse_nsecd_snapshot_binary_v7_1.client_packet.dissect(buffer, packet, protocol)
  end
  return nse_nsecd_snapshot_binary_v7_1.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
nse_nsecd_snapshot_binary_v7_1.packet.fingerprint = function(buffer)
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


-- Fingerprint of Client Packet: would its message dispatch accept this frame?
nse_nsecd_snapshot_binary_v7_1.client_packet.fingerprint = function(buffer)
  if buffer:len() < 1 then
    return false
  end
  local client_message_type = buffer(0, 1):string()

  -- Order Book Snapshot Recovery Request Message
  if client_message_type == "O" then
    return true
  end

  return false
end


-- Fingerprint of Response Packet: would its message dispatch accept this frame?
nse_nsecd_snapshot_binary_v7_1.response_packet.fingerprint = function(buffer)
  if buffer:len() < 9 then
    return false
  end
  local response_message_type = buffer(8, 1):string()

  -- Order Book Snapshot Recovery Response Message
  if response_message_type == "B" then
    return true
  end

  return false
end



-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nse NseCd Snapshot Binary 7.1 (Tcp)
local function omi_nse_nsecd_snapshot_binary_v7_1_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nse_nsecd_snapshot_binary_v7_1.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not nse_nsecd_snapshot_binary_v7_1.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nse_nsecd_snapshot_binary_v7_1
  omi_nse_nsecd_snapshot_binary_v7_1.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nse NseCd Snapshot Binary 7.1 (Tcp)
local function omi_nse_nsecd_snapshot_binary_v7_1_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nse_nsecd_snapshot_binary_v7_1.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not nse_nsecd_snapshot_binary_v7_1.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nse_nsecd_snapshot_binary_v7_1
  omi_nse_nsecd_snapshot_binary_v7_1.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nse NseCd Snapshot Binary 7.1 (Tcp)
local function omi_nse_nsecd_snapshot_binary_v7_1_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nse_nsecd_snapshot_binary_v7_1.response_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not nse_nsecd_snapshot_binary_v7_1.response_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nse_nsecd_snapshot_binary_v7_1
  omi_nse_nsecd_snapshot_binary_v7_1.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nse NseCd Snapshot Binary 7.1 (Tcp): apply the heuristic of the sender's connection role
local function omi_nse_nsecd_snapshot_binary_v7_1_tcp_heuristic(buffer, packet, parent)
  local role = nse_nsecd_snapshot_binary_v7_1.role(packet)
  local first, second = omi_nse_nsecd_snapshot_binary_v7_1_tcp_initiator_heuristic, omi_nse_nsecd_snapshot_binary_v7_1_tcp_acceptor_heuristic
  if role == "acceptor" then
    first, second = second, first
  end
  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  nse_nsecd_snapshot_binary_v7_1.swap(packet)
  if second(buffer, packet, parent) then
    return true
  end
  nse_nsecd_snapshot_binary_v7_1.swap(packet)

  return false
end

-- Register Heuristics for Nse NseCd Snapshot Binary 7.1
omi_nse_nsecd_snapshot_binary_v7_1:register_heuristic("tcp", omi_nse_nsecd_snapshot_binary_v7_1_tcp_heuristic)
-- Register Nse NseCd Snapshot Binary 7.1 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_nse_nsecd_snapshot_binary_v7_1)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Stock Exchange of India Ltd
--   Version: 7.1
--   Date: Tuesday, September 1, 2026
--   Specification: MTBT_CUR_NNF_PROTOCOL_7.1_20260902170936.pdf
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
