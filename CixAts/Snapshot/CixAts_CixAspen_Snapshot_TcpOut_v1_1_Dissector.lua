-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- CixAts CixAspen Snapshot TcpOut 1.1 Protocol
local omi_cixats_cixaspen_snapshot_tcpout_v1_1 = Proto("Omi.CixAts.CixAspen.Snapshot.TcpOut.v1.1", "CixAts CixAspen Snapshot TcpOut 1.1")

-- Protocol table
local cixats_cixaspen_snapshot_tcpout_v1_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- CixAts CixAspen Snapshot TcpOut 1.1 Fields
omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.binary_data_message = ProtoField.new("Binary Data Message", "cixats.cixaspen.snapshot.tcpout.v1.1.binarydatamessage", ftypes.STRING)
omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.board_lot_size = ProtoField.new("Board Lot Size", "cixats.cixaspen.snapshot.tcpout.v1.1.boardlotsize", ftypes.UINT32)
omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.broker = ProtoField.new("Broker", "cixats.cixaspen.snapshot.tcpout.v1.1.broker", ftypes.STRING)
omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.contra_broker = ProtoField.new("Contra Broker", "cixats.cixaspen.snapshot.tcpout.v1.1.contrabroker", ftypes.STRING)
omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.event = ProtoField.new("Event", "cixats.cixaspen.snapshot.tcpout.v1.1.event", ftypes.STRING)
omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.execution_id = ProtoField.new("Execution Id", "cixats.cixaspen.snapshot.tcpout.v1.1.executionid", ftypes.UINT64)
omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.feed_identifier = ProtoField.new("Feed Identifier", "cixats.cixaspen.snapshot.tcpout.v1.1.feedidentifier", ftypes.STRING)
omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.info = ProtoField.new("Info", "cixats.cixaspen.snapshot.tcpout.v1.1.info", ftypes.STRING)
omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.length = ProtoField.new("Length", "cixats.cixaspen.snapshot.tcpout.v1.1.length", ftypes.UINT16)
omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.listing_market = ProtoField.new("Listing Market", "cixats.cixaspen.snapshot.tcpout.v1.1.listingmarket", ftypes.STRING)
omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.login_message = ProtoField.new("Login Message", "cixats.cixaspen.snapshot.tcpout.v1.1.loginmessage", ftypes.STRING)
omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.login_reject_message = ProtoField.new("Login Reject Message", "cixats.cixaspen.snapshot.tcpout.v1.1.loginrejectmessage", ftypes.STRING)
omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.market_day_identifier = ProtoField.new("Market Day Identifier", "cixats.cixaspen.snapshot.tcpout.v1.1.marketdayidentifier", ftypes.STRING)
omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.message_type = ProtoField.new("Message Type", "cixats.cixaspen.snapshot.tcpout.v1.1.messagetype", ftypes.STRING)
omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.next_sequence = ProtoField.new("Next Sequence", "cixats.cixaspen.snapshot.tcpout.v1.1.nextsequence", ftypes.STRING)
omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.order_id = ProtoField.new("Order Id", "cixats.cixaspen.snapshot.tcpout.v1.1.orderid", ftypes.UINT64)
omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.packet_type = ProtoField.new("Packet Type", "cixats.cixaspen.snapshot.tcpout.v1.1.packettype", ftypes.STRING)
omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.pass = ProtoField.new("Pass", "cixats.cixaspen.snapshot.tcpout.v1.1.pass", ftypes.STRING)
omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.price = ProtoField.new("Price", "cixats.cixaspen.snapshot.tcpout.v1.1.price", ftypes.DOUBLE)
omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.quantity = ProtoField.new("Quantity", "cixats.cixaspen.snapshot.tcpout.v1.1.quantity", ftypes.DOUBLE)
omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.quantity_canceled = ProtoField.new("Quantity Canceled", "cixats.cixaspen.snapshot.tcpout.v1.1.quantitycanceled", ftypes.DOUBLE)
omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.reason_code = ProtoField.new("Reason Code", "cixats.cixaspen.snapshot.tcpout.v1.1.reasoncode", ftypes.STRING)
omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.requested_sequence = ProtoField.new("Requested Sequence", "cixats.cixaspen.snapshot.tcpout.v1.1.requestedsequence", ftypes.STRING)
omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.reserved_1 = ProtoField.new("Reserved 1", "cixats.cixaspen.snapshot.tcpout.v1.1.reserved1", ftypes.STRING)
omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.reserved_2 = ProtoField.new("Reserved 2", "cixats.cixaspen.snapshot.tcpout.v1.1.reserved2", ftypes.STRING)
omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.sequence = ProtoField.new("Sequence", "cixats.cixaspen.snapshot.tcpout.v1.1.sequence", ftypes.UINT64)
omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.side = ProtoField.new("Side", "cixats.cixaspen.snapshot.tcpout.v1.1.side", ftypes.STRING)
omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.state = ProtoField.new("State", "cixats.cixaspen.snapshot.tcpout.v1.1.state", ftypes.STRING)
omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.successful_login_message = ProtoField.new("Successful Login Message", "cixats.cixaspen.snapshot.tcpout.v1.1.successfulloginmessage", ftypes.STRING)
omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.symbol = ProtoField.new("Symbol", "cixats.cixaspen.snapshot.tcpout.v1.1.symbol", ftypes.STRING)
omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.symbol_id = ProtoField.new("Symbol Id", "cixats.cixaspen.snapshot.tcpout.v1.1.symbolid", ftypes.UINT16)
omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.timestamp = ProtoField.new("Timestamp", "cixats.cixaspen.snapshot.tcpout.v1.1.timestamp", ftypes.UINT64)
omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.user = ProtoField.new("User", "cixats.cixaspen.snapshot.tcpout.v1.1.user", ftypes.STRING)

-- CixAts CixAspen Snapshot TcpOut 1.1 Framing
omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.packet = ProtoField.new("Packet", "cixats.cixaspen.snapshot.tcpout.v1.1.packet", ftypes.STRING)
omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.packet_header = ProtoField.new("Packet Header", "cixats.cixaspen.snapshot.tcpout.v1.1.packetheader", ftypes.STRING)
omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.tcp_packet = ProtoField.new("Tcp Packet", "cixats.cixaspen.snapshot.tcpout.v1.1.tcppacket", ftypes.STRING)

-- CixAts CixAspen Snapshot 1.1 Application Messages
omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.end_of_snapshot_message = ProtoField.new("End Of Snapshot Message", "cixats.cixaspen.snapshot.tcpout.v1.1.endofsnapshotmessage", ftypes.STRING)
omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.market_event_message = ProtoField.new("Market Event Message", "cixats.cixaspen.snapshot.tcpout.v1.1.marketeventmessage", ftypes.STRING)
omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.new_order_add_message = ProtoField.new("New Order Add Message", "cixats.cixaspen.snapshot.tcpout.v1.1.neworderaddmessage", ftypes.STRING)
omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.order_cancel_all_message = ProtoField.new("Order Cancel All Message", "cixats.cixaspen.snapshot.tcpout.v1.1.ordercancelallmessage", ftypes.STRING)
omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.order_executed_message = ProtoField.new("Order Executed Message", "cixats.cixaspen.snapshot.tcpout.v1.1.orderexecutedmessage", ftypes.STRING)
omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.order_partial_cancel_message = ProtoField.new("Order Partial Cancel Message", "cixats.cixaspen.snapshot.tcpout.v1.1.orderpartialcancelmessage", ftypes.STRING)
omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.symbol_information_message = ProtoField.new("Symbol Information Message", "cixats.cixaspen.snapshot.tcpout.v1.1.symbolinformationmessage", ftypes.STRING)
omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.symbol_state_message = ProtoField.new("Symbol State Message", "cixats.cixaspen.snapshot.tcpout.v1.1.symbolstatemessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- CixAts CixAspen Snapshot TcpOut 1.1 Element Dissection Options
show.structs = true
show.application_messages = true
show.headers = true

-- Register CixAts CixAspen Snapshot TcpOut 1.1 Show Options
omi_cixats_cixaspen_snapshot_tcpout_v1_1.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_cixats_cixaspen_snapshot_tcpout_v1_1.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cixats_cixaspen_snapshot_tcpout_v1_1.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")

-- Handle changed preferences
function omi_cixats_cixaspen_snapshot_tcpout_v1_1.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cixats_cixaspen_snapshot_tcpout_v1_1.prefs.show_application_messages then
    show.application_messages = omi_cixats_cixaspen_snapshot_tcpout_v1_1.prefs.show_application_messages
  end
  if show.headers ~= omi_cixats_cixaspen_snapshot_tcpout_v1_1.prefs.show_headers then
    show.headers = omi_cixats_cixaspen_snapshot_tcpout_v1_1.prefs.show_headers
  end
  if show.structs ~= omi_cixats_cixaspen_snapshot_tcpout_v1_1.prefs.show_structs then
    show.structs = omi_cixats_cixaspen_snapshot_tcpout_v1_1.prefs.show_structs
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
-- CixAts CixAspen Snapshot TcpOut 1.1 Fields
-----------------------------------------------------------------------

-- Board Lot Size
cixats_cixaspen_snapshot_tcpout_v1_1.board_lot_size = {}

-- Size: Board Lot Size
cixats_cixaspen_snapshot_tcpout_v1_1.board_lot_size.size = 4

-- Display: Board Lot Size
cixats_cixaspen_snapshot_tcpout_v1_1.board_lot_size.display = function(value)
  return "Board Lot Size: "..value
end

-- Dissect: Board Lot Size
cixats_cixaspen_snapshot_tcpout_v1_1.board_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_snapshot_tcpout_v1_1.board_lot_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cixats_cixaspen_snapshot_tcpout_v1_1.board_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.board_lot_size, range, value, display)

  return offset + length, value
end

-- Broker
cixats_cixaspen_snapshot_tcpout_v1_1.broker = {}

-- Size: Broker
cixats_cixaspen_snapshot_tcpout_v1_1.broker.size = 3

-- Display: Broker
cixats_cixaspen_snapshot_tcpout_v1_1.broker.display = function(value)
  return "Broker: "..value
end

-- Dissect: Broker
cixats_cixaspen_snapshot_tcpout_v1_1.broker.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_snapshot_tcpout_v1_1.broker.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cixats_cixaspen_snapshot_tcpout_v1_1.broker.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.broker, range, value, display)

  return offset + length, value
end

-- Contra Broker
cixats_cixaspen_snapshot_tcpout_v1_1.contra_broker = {}

-- Size: Contra Broker
cixats_cixaspen_snapshot_tcpout_v1_1.contra_broker.size = 3

-- Display: Contra Broker
cixats_cixaspen_snapshot_tcpout_v1_1.contra_broker.display = function(value)
  return "Contra Broker: "..value
end

-- Dissect: Contra Broker
cixats_cixaspen_snapshot_tcpout_v1_1.contra_broker.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_snapshot_tcpout_v1_1.contra_broker.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cixats_cixaspen_snapshot_tcpout_v1_1.contra_broker.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.contra_broker, range, value, display)

  return offset + length, value
end

-- Event
cixats_cixaspen_snapshot_tcpout_v1_1.event = {}

-- Size: Event
cixats_cixaspen_snapshot_tcpout_v1_1.event.size = 1

-- Display: Event
cixats_cixaspen_snapshot_tcpout_v1_1.event.display = function(value)
  if value == "O" then
    return "Event: Start Of Session (O)"
  end
  if value == "S" then
    return "Event: Market Accepting Orders (S)"
  end
  if value == "Q" then
    return "Event: Market Open For Trading (Q)"
  end
  if value == "E" then
    return "Event: Market Closed For Trading (E)"
  end
  if value == "C" then
    return "Event: End Of Session (C)"
  end

  return "Event: Unknown("..value..")"
end

-- Dissect: Event
cixats_cixaspen_snapshot_tcpout_v1_1.event.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_snapshot_tcpout_v1_1.event.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cixats_cixaspen_snapshot_tcpout_v1_1.event.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.event, range, value, display)

  return offset + length, value
end

-- Execution Id
cixats_cixaspen_snapshot_tcpout_v1_1.execution_id = {}

-- Size: Execution Id
cixats_cixaspen_snapshot_tcpout_v1_1.execution_id.size = 8

-- Display: Execution Id
cixats_cixaspen_snapshot_tcpout_v1_1.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
cixats_cixaspen_snapshot_tcpout_v1_1.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_snapshot_tcpout_v1_1.execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cixats_cixaspen_snapshot_tcpout_v1_1.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Feed Identifier
cixats_cixaspen_snapshot_tcpout_v1_1.feed_identifier = {}

-- Size: Feed Identifier
cixats_cixaspen_snapshot_tcpout_v1_1.feed_identifier.size = 1

-- Display: Feed Identifier
cixats_cixaspen_snapshot_tcpout_v1_1.feed_identifier.display = function(value)
  if value == "A" then
    return "Feed Identifier: Aspen (A)"
  end
  if value == "V" then
    return "Feed Identifier: Aspen Vert (V)"
  end
  if value == "M" then
    return "Feed Identifier: Midpoint (M)"
  end
  if value == "B" then
    return "Feed Identifier: Aspen Uat (B)"
  end
  if value == "W" then
    return "Feed Identifier: Aspen Vert Uat (W)"
  end
  if value == "N" then
    return "Feed Identifier: Midpoint Uat (N)"
  end

  return "Feed Identifier: Unknown("..value..")"
end

-- Dissect: Feed Identifier
cixats_cixaspen_snapshot_tcpout_v1_1.feed_identifier.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_snapshot_tcpout_v1_1.feed_identifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cixats_cixaspen_snapshot_tcpout_v1_1.feed_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.feed_identifier, range, value, display)

  return offset + length, value
end

-- Info
cixats_cixaspen_snapshot_tcpout_v1_1.info = {}

-- Size: Info
cixats_cixaspen_snapshot_tcpout_v1_1.info.size = 4

-- Display: Info
cixats_cixaspen_snapshot_tcpout_v1_1.info.display = function(value)
  return "Info: "..value
end

-- Dissect: Info
cixats_cixaspen_snapshot_tcpout_v1_1.info.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_snapshot_tcpout_v1_1.info.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cixats_cixaspen_snapshot_tcpout_v1_1.info.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.info, range, value, display)

  return offset + length, value
end

-- Length
cixats_cixaspen_snapshot_tcpout_v1_1.length = {}

-- Size: Length
cixats_cixaspen_snapshot_tcpout_v1_1.length.size = 2

-- Display: Length
cixats_cixaspen_snapshot_tcpout_v1_1.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cixats_cixaspen_snapshot_tcpout_v1_1.length.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_snapshot_tcpout_v1_1.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cixats_cixaspen_snapshot_tcpout_v1_1.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.length, range, value, display)

  return offset + length, value
end

-- Listing Market
cixats_cixaspen_snapshot_tcpout_v1_1.listing_market = {}

-- Size: Listing Market
cixats_cixaspen_snapshot_tcpout_v1_1.listing_market.size = 1

-- Display: Listing Market
cixats_cixaspen_snapshot_tcpout_v1_1.listing_market.display = function(value)
  if value == "T" then
    return "Listing Market: Tsx (T)"
  end
  if value == "V" then
    return "Listing Market: Venture (V)"
  end
  if value == "C" then
    return "Listing Market: Cse (C)"
  end
  if value == "N" then
    return "Listing Market: Neo (N)"
  end

  return "Listing Market: Unknown("..value..")"
end

-- Dissect: Listing Market
cixats_cixaspen_snapshot_tcpout_v1_1.listing_market.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_snapshot_tcpout_v1_1.listing_market.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cixats_cixaspen_snapshot_tcpout_v1_1.listing_market.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.listing_market, range, value, display)

  return offset + length, value
end

-- Market Day Identifier
cixats_cixaspen_snapshot_tcpout_v1_1.market_day_identifier = {}

-- Size: Market Day Identifier
cixats_cixaspen_snapshot_tcpout_v1_1.market_day_identifier.size = 9

-- Display: Market Day Identifier
cixats_cixaspen_snapshot_tcpout_v1_1.market_day_identifier.display = function(value)
  return "Market Day Identifier: "..value
end

-- Dissect: Market Day Identifier
cixats_cixaspen_snapshot_tcpout_v1_1.market_day_identifier.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_snapshot_tcpout_v1_1.market_day_identifier.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cixats_cixaspen_snapshot_tcpout_v1_1.market_day_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.market_day_identifier, range, value, display)

  return offset + length, value
end

-- Message Type
cixats_cixaspen_snapshot_tcpout_v1_1.message_type = {}

-- Size: Message Type
cixats_cixaspen_snapshot_tcpout_v1_1.message_type.size = 1

-- Display: Message Type
cixats_cixaspen_snapshot_tcpout_v1_1.message_type.display = function(value)
  if value == "A" then
    return "Message Type: Market Event Message (A)"
  end
  if value == "B" then
    return "Message Type: Symbol Information Message (B)"
  end
  if value == "C" then
    return "Message Type: Symbol State Message (C)"
  end
  if value == "D" then
    return "Message Type: New Order Add Message (D)"
  end
  if value == "F" then
    return "Message Type: Order Partial Cancel Message (F)"
  end
  if value == "G" then
    return "Message Type: Order Cancel All Message (G)"
  end
  if value == "J" then
    return "Message Type: Order Executed Message (J)"
  end
  if value == "X" then
    return "Message Type: End Of Snapshot Message (X)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
cixats_cixaspen_snapshot_tcpout_v1_1.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_snapshot_tcpout_v1_1.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cixats_cixaspen_snapshot_tcpout_v1_1.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.message_type, range, value, display)

  return offset + length, value
end

-- Next Sequence
cixats_cixaspen_snapshot_tcpout_v1_1.next_sequence = {}

-- Size: Next Sequence
cixats_cixaspen_snapshot_tcpout_v1_1.next_sequence.size = 20

-- Display: Next Sequence
cixats_cixaspen_snapshot_tcpout_v1_1.next_sequence.display = function(value)
  return "Next Sequence: "..value
end

-- Dissect: Next Sequence
cixats_cixaspen_snapshot_tcpout_v1_1.next_sequence.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_snapshot_tcpout_v1_1.next_sequence.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cixats_cixaspen_snapshot_tcpout_v1_1.next_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.next_sequence, range, value, display)

  return offset + length, value
end

-- Order Id
cixats_cixaspen_snapshot_tcpout_v1_1.order_id = {}

-- Size: Order Id
cixats_cixaspen_snapshot_tcpout_v1_1.order_id.size = 8

-- Display: Order Id
cixats_cixaspen_snapshot_tcpout_v1_1.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cixats_cixaspen_snapshot_tcpout_v1_1.order_id.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_snapshot_tcpout_v1_1.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cixats_cixaspen_snapshot_tcpout_v1_1.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.order_id, range, value, display)

  return offset + length, value
end

-- Packet Type
cixats_cixaspen_snapshot_tcpout_v1_1.packet_type = {}

-- Size: Packet Type
cixats_cixaspen_snapshot_tcpout_v1_1.packet_type.size = 1

-- Display: Packet Type
cixats_cixaspen_snapshot_tcpout_v1_1.packet_type.display = function(value)
  if value == "L" then
    return "Packet Type: Login Message (L)"
  end
  if value == "R" then
    return "Packet Type: Client Heartbeat Message (R)"
  end
  if value == "A" then
    return "Packet Type: Successful Login Message (A)"
  end
  if value == "J" then
    return "Packet Type: Login Reject Message (J)"
  end
  if value == "H" then
    return "Packet Type: Server Heartbeat Message (H)"
  end
  if value == "S" then
    return "Packet Type: Binary Data Message (S)"
  end

  return "Packet Type: Unknown("..value..")"
end

-- Dissect: Packet Type
cixats_cixaspen_snapshot_tcpout_v1_1.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_snapshot_tcpout_v1_1.packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cixats_cixaspen_snapshot_tcpout_v1_1.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Pass
cixats_cixaspen_snapshot_tcpout_v1_1.pass = {}

-- Size: Pass
cixats_cixaspen_snapshot_tcpout_v1_1.pass.size = 10

-- Display: Pass
cixats_cixaspen_snapshot_tcpout_v1_1.pass.display = function(value)
  return "Pass: "..value
end

-- Dissect: Pass
cixats_cixaspen_snapshot_tcpout_v1_1.pass.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_snapshot_tcpout_v1_1.pass.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cixats_cixaspen_snapshot_tcpout_v1_1.pass.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.pass, range, value, display)

  return offset + length, value
end

-- Price
cixats_cixaspen_snapshot_tcpout_v1_1.price = {}

-- Size: Price
cixats_cixaspen_snapshot_tcpout_v1_1.price.size = 8

-- Display: Price
cixats_cixaspen_snapshot_tcpout_v1_1.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
cixats_cixaspen_snapshot_tcpout_v1_1.price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Price
cixats_cixaspen_snapshot_tcpout_v1_1.price.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_snapshot_tcpout_v1_1.price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cixats_cixaspen_snapshot_tcpout_v1_1.price.translate(raw)
  local display = cixats_cixaspen_snapshot_tcpout_v1_1.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity
cixats_cixaspen_snapshot_tcpout_v1_1.quantity = {}

-- Size: Quantity
cixats_cixaspen_snapshot_tcpout_v1_1.quantity.size = 8

-- Display: Quantity
cixats_cixaspen_snapshot_tcpout_v1_1.quantity.display = function(value)
  return "Quantity: "..value
end

-- Translate: Quantity
cixats_cixaspen_snapshot_tcpout_v1_1.quantity.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Quantity
cixats_cixaspen_snapshot_tcpout_v1_1.quantity.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_snapshot_tcpout_v1_1.quantity.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cixats_cixaspen_snapshot_tcpout_v1_1.quantity.translate(raw)
  local display = cixats_cixaspen_snapshot_tcpout_v1_1.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.quantity, range, value, display)

  return offset + length, value
end

-- Quantity Canceled
cixats_cixaspen_snapshot_tcpout_v1_1.quantity_canceled = {}

-- Size: Quantity Canceled
cixats_cixaspen_snapshot_tcpout_v1_1.quantity_canceled.size = 8

-- Display: Quantity Canceled
cixats_cixaspen_snapshot_tcpout_v1_1.quantity_canceled.display = function(value)
  return "Quantity Canceled: "..value
end

-- Translate: Quantity Canceled
cixats_cixaspen_snapshot_tcpout_v1_1.quantity_canceled.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Quantity Canceled
cixats_cixaspen_snapshot_tcpout_v1_1.quantity_canceled.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_snapshot_tcpout_v1_1.quantity_canceled.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cixats_cixaspen_snapshot_tcpout_v1_1.quantity_canceled.translate(raw)
  local display = cixats_cixaspen_snapshot_tcpout_v1_1.quantity_canceled.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.quantity_canceled, range, value, display)

  return offset + length, value
end

-- Reason Code
cixats_cixaspen_snapshot_tcpout_v1_1.reason_code = {}

-- Size: Reason Code
cixats_cixaspen_snapshot_tcpout_v1_1.reason_code.size = 1

-- Display: Reason Code
cixats_cixaspen_snapshot_tcpout_v1_1.reason_code.display = function(value)
  if value == "A" then
    return "Reason Code: Invalid User Password (A)"
  end
  if value == "B" then
    return "Reason Code: Invalid Sequence (B)"
  end
  if value == "S" then
    return "Reason Code: Invalid Market Day Feed Id (S)"
  end

  return "Reason Code: Unknown("..value..")"
end

-- Dissect: Reason Code
cixats_cixaspen_snapshot_tcpout_v1_1.reason_code.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_snapshot_tcpout_v1_1.reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cixats_cixaspen_snapshot_tcpout_v1_1.reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.reason_code, range, value, display)

  return offset + length, value
end

-- Requested Sequence
cixats_cixaspen_snapshot_tcpout_v1_1.requested_sequence = {}

-- Size: Requested Sequence
cixats_cixaspen_snapshot_tcpout_v1_1.requested_sequence.size = 20

-- Display: Requested Sequence
cixats_cixaspen_snapshot_tcpout_v1_1.requested_sequence.display = function(value)
  return "Requested Sequence: "..value
end

-- Dissect: Requested Sequence
cixats_cixaspen_snapshot_tcpout_v1_1.requested_sequence.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_snapshot_tcpout_v1_1.requested_sequence.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cixats_cixaspen_snapshot_tcpout_v1_1.requested_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.requested_sequence, range, value, display)

  return offset + length, value
end

-- Reserved 1
cixats_cixaspen_snapshot_tcpout_v1_1.reserved_1 = {}

-- Size: Reserved 1
cixats_cixaspen_snapshot_tcpout_v1_1.reserved_1.size = 1

-- Display: Reserved 1
cixats_cixaspen_snapshot_tcpout_v1_1.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
cixats_cixaspen_snapshot_tcpout_v1_1.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_snapshot_tcpout_v1_1.reserved_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cixats_cixaspen_snapshot_tcpout_v1_1.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 2
cixats_cixaspen_snapshot_tcpout_v1_1.reserved_2 = {}

-- Size: Reserved 2
cixats_cixaspen_snapshot_tcpout_v1_1.reserved_2.size = 2

-- Display: Reserved 2
cixats_cixaspen_snapshot_tcpout_v1_1.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
cixats_cixaspen_snapshot_tcpout_v1_1.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_snapshot_tcpout_v1_1.reserved_2.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cixats_cixaspen_snapshot_tcpout_v1_1.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Sequence
cixats_cixaspen_snapshot_tcpout_v1_1.sequence = {}

-- Size: Sequence
cixats_cixaspen_snapshot_tcpout_v1_1.sequence.size = 8

-- Display: Sequence
cixats_cixaspen_snapshot_tcpout_v1_1.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cixats_cixaspen_snapshot_tcpout_v1_1.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_snapshot_tcpout_v1_1.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cixats_cixaspen_snapshot_tcpout_v1_1.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.sequence, range, value, display)

  return offset + length, value
end

-- Side
cixats_cixaspen_snapshot_tcpout_v1_1.side = {}

-- Size: Side
cixats_cixaspen_snapshot_tcpout_v1_1.side.size = 1

-- Display: Side
cixats_cixaspen_snapshot_tcpout_v1_1.side.display = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
cixats_cixaspen_snapshot_tcpout_v1_1.side.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_snapshot_tcpout_v1_1.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cixats_cixaspen_snapshot_tcpout_v1_1.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.side, range, value, display)

  return offset + length, value
end

-- State
cixats_cixaspen_snapshot_tcpout_v1_1.state = {}

-- Size: State
cixats_cixaspen_snapshot_tcpout_v1_1.state.size = 1

-- Display: State
cixats_cixaspen_snapshot_tcpout_v1_1.state.display = function(value)
  if value == "H" then
    return "State: Halted (H)"
  end
  if value == "T" then
    return "State: Trading (T)"
  end

  return "State: Unknown("..value..")"
end

-- Dissect: State
cixats_cixaspen_snapshot_tcpout_v1_1.state.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_snapshot_tcpout_v1_1.state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cixats_cixaspen_snapshot_tcpout_v1_1.state.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.state, range, value, display)

  return offset + length, value
end

-- Symbol
cixats_cixaspen_snapshot_tcpout_v1_1.symbol = {}

-- Size: Symbol
cixats_cixaspen_snapshot_tcpout_v1_1.symbol.size = 11

-- Display: Symbol
cixats_cixaspen_snapshot_tcpout_v1_1.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
cixats_cixaspen_snapshot_tcpout_v1_1.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_snapshot_tcpout_v1_1.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cixats_cixaspen_snapshot_tcpout_v1_1.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Id
cixats_cixaspen_snapshot_tcpout_v1_1.symbol_id = {}

-- Size: Symbol Id
cixats_cixaspen_snapshot_tcpout_v1_1.symbol_id.size = 2

-- Display: Symbol Id
cixats_cixaspen_snapshot_tcpout_v1_1.symbol_id.display = function(value)
  return "Symbol Id: "..value
end

-- Dissect: Symbol Id
cixats_cixaspen_snapshot_tcpout_v1_1.symbol_id.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_snapshot_tcpout_v1_1.symbol_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cixats_cixaspen_snapshot_tcpout_v1_1.symbol_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.symbol_id, range, value, display)

  return offset + length, value
end

-- Timestamp
cixats_cixaspen_snapshot_tcpout_v1_1.timestamp = {}

-- Size: Timestamp
cixats_cixaspen_snapshot_tcpout_v1_1.timestamp.size = 8

-- Display: Timestamp
cixats_cixaspen_snapshot_tcpout_v1_1.timestamp.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
cixats_cixaspen_snapshot_tcpout_v1_1.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_snapshot_tcpout_v1_1.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cixats_cixaspen_snapshot_tcpout_v1_1.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.timestamp, range, value, display)

  return offset + length, value
end

-- User
cixats_cixaspen_snapshot_tcpout_v1_1.user = {}

-- Size: User
cixats_cixaspen_snapshot_tcpout_v1_1.user.size = 6

-- Display: User
cixats_cixaspen_snapshot_tcpout_v1_1.user.display = function(value)
  return "User: "..value
end

-- Dissect: User
cixats_cixaspen_snapshot_tcpout_v1_1.user.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_snapshot_tcpout_v1_1.user.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cixats_cixaspen_snapshot_tcpout_v1_1.user.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.user, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect CixAts CixAspen Snapshot TcpOut 1.1
-----------------------------------------------------------------------

-- End Of Snapshot Message
cixats_cixaspen_snapshot_tcpout_v1_1.end_of_snapshot_message = {}

-- Size: End Of Snapshot Message
cixats_cixaspen_snapshot_tcpout_v1_1.end_of_snapshot_message.size =
  cixats_cixaspen_snapshot_tcpout_v1_1.sequence.size

-- Display: End Of Snapshot Message
cixats_cixaspen_snapshot_tcpout_v1_1.end_of_snapshot_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Snapshot Message
cixats_cixaspen_snapshot_tcpout_v1_1.end_of_snapshot_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Integer
  index, sequence = cixats_cixaspen_snapshot_tcpout_v1_1.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Snapshot Message
cixats_cixaspen_snapshot_tcpout_v1_1.end_of_snapshot_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.end_of_snapshot_message, buffer(offset, 0))
    local index = cixats_cixaspen_snapshot_tcpout_v1_1.end_of_snapshot_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cixats_cixaspen_snapshot_tcpout_v1_1.end_of_snapshot_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cixats_cixaspen_snapshot_tcpout_v1_1.end_of_snapshot_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
cixats_cixaspen_snapshot_tcpout_v1_1.order_executed_message = {}

-- Size: Order Executed Message
cixats_cixaspen_snapshot_tcpout_v1_1.order_executed_message.size =
  cixats_cixaspen_snapshot_tcpout_v1_1.timestamp.size + 
  cixats_cixaspen_snapshot_tcpout_v1_1.order_id.size + 
  cixats_cixaspen_snapshot_tcpout_v1_1.quantity.size + 
  cixats_cixaspen_snapshot_tcpout_v1_1.execution_id.size + 
  cixats_cixaspen_snapshot_tcpout_v1_1.side.size + 
  cixats_cixaspen_snapshot_tcpout_v1_1.price.size + 
  cixats_cixaspen_snapshot_tcpout_v1_1.broker.size + 
  cixats_cixaspen_snapshot_tcpout_v1_1.contra_broker.size

-- Display: Order Executed Message
cixats_cixaspen_snapshot_tcpout_v1_1.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
cixats_cixaspen_snapshot_tcpout_v1_1.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = cixats_cixaspen_snapshot_tcpout_v1_1.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Integer
  index, order_id = cixats_cixaspen_snapshot_tcpout_v1_1.order_id.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = cixats_cixaspen_snapshot_tcpout_v1_1.quantity.dissect(buffer, index, packet, parent)

  -- Execution Id: Integer
  index, execution_id = cixats_cixaspen_snapshot_tcpout_v1_1.execution_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = cixats_cixaspen_snapshot_tcpout_v1_1.side.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = cixats_cixaspen_snapshot_tcpout_v1_1.price.dissect(buffer, index, packet, parent)

  -- Broker: Alpha
  index, broker = cixats_cixaspen_snapshot_tcpout_v1_1.broker.dissect(buffer, index, packet, parent)

  -- Contra Broker: Alpha
  index, contra_broker = cixats_cixaspen_snapshot_tcpout_v1_1.contra_broker.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
cixats_cixaspen_snapshot_tcpout_v1_1.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.order_executed_message, buffer(offset, 0))
    local index = cixats_cixaspen_snapshot_tcpout_v1_1.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cixats_cixaspen_snapshot_tcpout_v1_1.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cixats_cixaspen_snapshot_tcpout_v1_1.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel All Message
cixats_cixaspen_snapshot_tcpout_v1_1.order_cancel_all_message = {}

-- Size: Order Cancel All Message
cixats_cixaspen_snapshot_tcpout_v1_1.order_cancel_all_message.size =
  cixats_cixaspen_snapshot_tcpout_v1_1.timestamp.size + 
  cixats_cixaspen_snapshot_tcpout_v1_1.order_id.size

-- Display: Order Cancel All Message
cixats_cixaspen_snapshot_tcpout_v1_1.order_cancel_all_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel All Message
cixats_cixaspen_snapshot_tcpout_v1_1.order_cancel_all_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = cixats_cixaspen_snapshot_tcpout_v1_1.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Integer
  index, order_id = cixats_cixaspen_snapshot_tcpout_v1_1.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel All Message
cixats_cixaspen_snapshot_tcpout_v1_1.order_cancel_all_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.order_cancel_all_message, buffer(offset, 0))
    local index = cixats_cixaspen_snapshot_tcpout_v1_1.order_cancel_all_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cixats_cixaspen_snapshot_tcpout_v1_1.order_cancel_all_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cixats_cixaspen_snapshot_tcpout_v1_1.order_cancel_all_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Partial Cancel Message
cixats_cixaspen_snapshot_tcpout_v1_1.order_partial_cancel_message = {}

-- Size: Order Partial Cancel Message
cixats_cixaspen_snapshot_tcpout_v1_1.order_partial_cancel_message.size =
  cixats_cixaspen_snapshot_tcpout_v1_1.timestamp.size + 
  cixats_cixaspen_snapshot_tcpout_v1_1.order_id.size + 
  cixats_cixaspen_snapshot_tcpout_v1_1.quantity_canceled.size

-- Display: Order Partial Cancel Message
cixats_cixaspen_snapshot_tcpout_v1_1.order_partial_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Partial Cancel Message
cixats_cixaspen_snapshot_tcpout_v1_1.order_partial_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = cixats_cixaspen_snapshot_tcpout_v1_1.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Integer
  index, order_id = cixats_cixaspen_snapshot_tcpout_v1_1.order_id.dissect(buffer, index, packet, parent)

  -- Quantity Canceled: Integer
  index, quantity_canceled = cixats_cixaspen_snapshot_tcpout_v1_1.quantity_canceled.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Partial Cancel Message
cixats_cixaspen_snapshot_tcpout_v1_1.order_partial_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.order_partial_cancel_message, buffer(offset, 0))
    local index = cixats_cixaspen_snapshot_tcpout_v1_1.order_partial_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cixats_cixaspen_snapshot_tcpout_v1_1.order_partial_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cixats_cixaspen_snapshot_tcpout_v1_1.order_partial_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- New Order Add Message
cixats_cixaspen_snapshot_tcpout_v1_1.new_order_add_message = {}

-- Size: New Order Add Message
cixats_cixaspen_snapshot_tcpout_v1_1.new_order_add_message.size =
  cixats_cixaspen_snapshot_tcpout_v1_1.timestamp.size + 
  cixats_cixaspen_snapshot_tcpout_v1_1.symbol_id.size + 
  cixats_cixaspen_snapshot_tcpout_v1_1.order_id.size + 
  cixats_cixaspen_snapshot_tcpout_v1_1.side.size + 
  cixats_cixaspen_snapshot_tcpout_v1_1.quantity.size + 
  cixats_cixaspen_snapshot_tcpout_v1_1.symbol.size + 
  cixats_cixaspen_snapshot_tcpout_v1_1.price.size + 
  cixats_cixaspen_snapshot_tcpout_v1_1.broker.size + 
  cixats_cixaspen_snapshot_tcpout_v1_1.reserved_1.size

-- Display: New Order Add Message
cixats_cixaspen_snapshot_tcpout_v1_1.new_order_add_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Add Message
cixats_cixaspen_snapshot_tcpout_v1_1.new_order_add_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = cixats_cixaspen_snapshot_tcpout_v1_1.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Id: Integer
  index, symbol_id = cixats_cixaspen_snapshot_tcpout_v1_1.symbol_id.dissect(buffer, index, packet, parent)

  -- Order Id: Integer
  index, order_id = cixats_cixaspen_snapshot_tcpout_v1_1.order_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = cixats_cixaspen_snapshot_tcpout_v1_1.side.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = cixats_cixaspen_snapshot_tcpout_v1_1.quantity.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = cixats_cixaspen_snapshot_tcpout_v1_1.symbol.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = cixats_cixaspen_snapshot_tcpout_v1_1.price.dissect(buffer, index, packet, parent)

  -- Broker: Alpha
  index, broker = cixats_cixaspen_snapshot_tcpout_v1_1.broker.dissect(buffer, index, packet, parent)

  -- Reserved 1: Alpha
  index, reserved_1 = cixats_cixaspen_snapshot_tcpout_v1_1.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Add Message
cixats_cixaspen_snapshot_tcpout_v1_1.new_order_add_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.new_order_add_message, buffer(offset, 0))
    local index = cixats_cixaspen_snapshot_tcpout_v1_1.new_order_add_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cixats_cixaspen_snapshot_tcpout_v1_1.new_order_add_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cixats_cixaspen_snapshot_tcpout_v1_1.new_order_add_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol State Message
cixats_cixaspen_snapshot_tcpout_v1_1.symbol_state_message = {}

-- Size: Symbol State Message
cixats_cixaspen_snapshot_tcpout_v1_1.symbol_state_message.size =
  cixats_cixaspen_snapshot_tcpout_v1_1.timestamp.size + 
  cixats_cixaspen_snapshot_tcpout_v1_1.symbol_id.size + 
  cixats_cixaspen_snapshot_tcpout_v1_1.symbol.size + 
  cixats_cixaspen_snapshot_tcpout_v1_1.state.size + 
  cixats_cixaspen_snapshot_tcpout_v1_1.reserved_1.size + 
  cixats_cixaspen_snapshot_tcpout_v1_1.info.size

-- Display: Symbol State Message
cixats_cixaspen_snapshot_tcpout_v1_1.symbol_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol State Message
cixats_cixaspen_snapshot_tcpout_v1_1.symbol_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = cixats_cixaspen_snapshot_tcpout_v1_1.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Id: Integer
  index, symbol_id = cixats_cixaspen_snapshot_tcpout_v1_1.symbol_id.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = cixats_cixaspen_snapshot_tcpout_v1_1.symbol.dissect(buffer, index, packet, parent)

  -- State: Alpha
  index, state = cixats_cixaspen_snapshot_tcpout_v1_1.state.dissect(buffer, index, packet, parent)

  -- Reserved 1: Alpha
  index, reserved_1 = cixats_cixaspen_snapshot_tcpout_v1_1.reserved_1.dissect(buffer, index, packet, parent)

  -- Info: Alpha
  index, info = cixats_cixaspen_snapshot_tcpout_v1_1.info.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol State Message
cixats_cixaspen_snapshot_tcpout_v1_1.symbol_state_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.symbol_state_message, buffer(offset, 0))
    local index = cixats_cixaspen_snapshot_tcpout_v1_1.symbol_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cixats_cixaspen_snapshot_tcpout_v1_1.symbol_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cixats_cixaspen_snapshot_tcpout_v1_1.symbol_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Information Message
cixats_cixaspen_snapshot_tcpout_v1_1.symbol_information_message = {}

-- Size: Symbol Information Message
cixats_cixaspen_snapshot_tcpout_v1_1.symbol_information_message.size =
  cixats_cixaspen_snapshot_tcpout_v1_1.timestamp.size + 
  cixats_cixaspen_snapshot_tcpout_v1_1.symbol_id.size + 
  cixats_cixaspen_snapshot_tcpout_v1_1.symbol.size + 
  cixats_cixaspen_snapshot_tcpout_v1_1.listing_market.size + 
  cixats_cixaspen_snapshot_tcpout_v1_1.board_lot_size.size

-- Display: Symbol Information Message
cixats_cixaspen_snapshot_tcpout_v1_1.symbol_information_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Information Message
cixats_cixaspen_snapshot_tcpout_v1_1.symbol_information_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = cixats_cixaspen_snapshot_tcpout_v1_1.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Id: Integer
  index, symbol_id = cixats_cixaspen_snapshot_tcpout_v1_1.symbol_id.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = cixats_cixaspen_snapshot_tcpout_v1_1.symbol.dissect(buffer, index, packet, parent)

  -- Listing Market: Alpha
  index, listing_market = cixats_cixaspen_snapshot_tcpout_v1_1.listing_market.dissect(buffer, index, packet, parent)

  -- Board Lot Size: Integer
  index, board_lot_size = cixats_cixaspen_snapshot_tcpout_v1_1.board_lot_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Information Message
cixats_cixaspen_snapshot_tcpout_v1_1.symbol_information_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.symbol_information_message, buffer(offset, 0))
    local index = cixats_cixaspen_snapshot_tcpout_v1_1.symbol_information_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cixats_cixaspen_snapshot_tcpout_v1_1.symbol_information_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cixats_cixaspen_snapshot_tcpout_v1_1.symbol_information_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Event Message
cixats_cixaspen_snapshot_tcpout_v1_1.market_event_message = {}

-- Size: Market Event Message
cixats_cixaspen_snapshot_tcpout_v1_1.market_event_message.size =
  cixats_cixaspen_snapshot_tcpout_v1_1.reserved_2.size + 
  cixats_cixaspen_snapshot_tcpout_v1_1.timestamp.size + 
  cixats_cixaspen_snapshot_tcpout_v1_1.event.size

-- Display: Market Event Message
cixats_cixaspen_snapshot_tcpout_v1_1.market_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Event Message
cixats_cixaspen_snapshot_tcpout_v1_1.market_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: Alpha
  index, reserved_2 = cixats_cixaspen_snapshot_tcpout_v1_1.reserved_2.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = cixats_cixaspen_snapshot_tcpout_v1_1.timestamp.dissect(buffer, index, packet, parent)

  -- Event: Alpha
  index, event = cixats_cixaspen_snapshot_tcpout_v1_1.event.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Event Message
cixats_cixaspen_snapshot_tcpout_v1_1.market_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.market_event_message, buffer(offset, 0))
    local index = cixats_cixaspen_snapshot_tcpout_v1_1.market_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cixats_cixaspen_snapshot_tcpout_v1_1.market_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cixats_cixaspen_snapshot_tcpout_v1_1.market_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cixats_cixaspen_snapshot_tcpout_v1_1.payload = {}

-- Dissect: Payload
cixats_cixaspen_snapshot_tcpout_v1_1.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Market Event Message
  if message_type == "A" then
    return cixats_cixaspen_snapshot_tcpout_v1_1.market_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Information Message
  if message_type == "B" then
    return cixats_cixaspen_snapshot_tcpout_v1_1.symbol_information_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol State Message
  if message_type == "C" then
    return cixats_cixaspen_snapshot_tcpout_v1_1.symbol_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Add Message
  if message_type == "D" then
    return cixats_cixaspen_snapshot_tcpout_v1_1.new_order_add_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Partial Cancel Message
  if message_type == "F" then
    return cixats_cixaspen_snapshot_tcpout_v1_1.order_partial_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel All Message
  if message_type == "G" then
    return cixats_cixaspen_snapshot_tcpout_v1_1.order_cancel_all_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == "J" then
    return cixats_cixaspen_snapshot_tcpout_v1_1.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Snapshot Message
  if message_type == "X" then
    return cixats_cixaspen_snapshot_tcpout_v1_1.end_of_snapshot_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Binary Data Message
cixats_cixaspen_snapshot_tcpout_v1_1.binary_data_message = {}

-- Read runtime size of: Binary Data Message
cixats_cixaspen_snapshot_tcpout_v1_1.binary_data_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Length
  local length = buffer(offset - 3, 2):le_uint()

  return length - 4
end

-- Display: Binary Data Message
cixats_cixaspen_snapshot_tcpout_v1_1.binary_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Binary Data Message
cixats_cixaspen_snapshot_tcpout_v1_1.binary_data_message.fields = function(buffer, offset, packet, parent, size_of_binary_data_message)
  local index = offset

  -- Message Type: Alpha
  index, message_type = cixats_cixaspen_snapshot_tcpout_v1_1.message_type.dissect(buffer, index, packet, parent)

  -- Payload: Runtime Type with 8 branches
  index = cixats_cixaspen_snapshot_tcpout_v1_1.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Binary Data Message
cixats_cixaspen_snapshot_tcpout_v1_1.binary_data_message.dissect = function(buffer, offset, packet, parent, size_of_binary_data_message)
  local size_of_binary_data_message = cixats_cixaspen_snapshot_tcpout_v1_1.binary_data_message.size(buffer, offset)
  local index = offset + size_of_binary_data_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.binary_data_message, buffer(offset, 0))
    local current = cixats_cixaspen_snapshot_tcpout_v1_1.binary_data_message.fields(buffer, offset, packet, parent, size_of_binary_data_message)
    parent:set_len(size_of_binary_data_message)
    local display = cixats_cixaspen_snapshot_tcpout_v1_1.binary_data_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cixats_cixaspen_snapshot_tcpout_v1_1.binary_data_message.fields(buffer, offset, packet, parent, size_of_binary_data_message)

    return index
  end
end

-- Login Reject Message
cixats_cixaspen_snapshot_tcpout_v1_1.login_reject_message = {}

-- Size: Login Reject Message
cixats_cixaspen_snapshot_tcpout_v1_1.login_reject_message.size =
  cixats_cixaspen_snapshot_tcpout_v1_1.reason_code.size

-- Display: Login Reject Message
cixats_cixaspen_snapshot_tcpout_v1_1.login_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Reject Message
cixats_cixaspen_snapshot_tcpout_v1_1.login_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason Code: Alpha
  index, reason_code = cixats_cixaspen_snapshot_tcpout_v1_1.reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Reject Message
cixats_cixaspen_snapshot_tcpout_v1_1.login_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.login_reject_message, buffer(offset, 0))
    local index = cixats_cixaspen_snapshot_tcpout_v1_1.login_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cixats_cixaspen_snapshot_tcpout_v1_1.login_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cixats_cixaspen_snapshot_tcpout_v1_1.login_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Successful Login Message
cixats_cixaspen_snapshot_tcpout_v1_1.successful_login_message = {}

-- Size: Successful Login Message
cixats_cixaspen_snapshot_tcpout_v1_1.successful_login_message.size =
  cixats_cixaspen_snapshot_tcpout_v1_1.market_day_identifier.size + 
  cixats_cixaspen_snapshot_tcpout_v1_1.feed_identifier.size + 
  cixats_cixaspen_snapshot_tcpout_v1_1.next_sequence.size

-- Display: Successful Login Message
cixats_cixaspen_snapshot_tcpout_v1_1.successful_login_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Successful Login Message
cixats_cixaspen_snapshot_tcpout_v1_1.successful_login_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Day Identifier: Number
  index, market_day_identifier = cixats_cixaspen_snapshot_tcpout_v1_1.market_day_identifier.dissect(buffer, index, packet, parent)

  -- Feed Identifier: Alpha
  index, feed_identifier = cixats_cixaspen_snapshot_tcpout_v1_1.feed_identifier.dissect(buffer, index, packet, parent)

  -- Next Sequence: Alpha
  index, next_sequence = cixats_cixaspen_snapshot_tcpout_v1_1.next_sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Successful Login Message
cixats_cixaspen_snapshot_tcpout_v1_1.successful_login_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.successful_login_message, buffer(offset, 0))
    local index = cixats_cixaspen_snapshot_tcpout_v1_1.successful_login_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cixats_cixaspen_snapshot_tcpout_v1_1.successful_login_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cixats_cixaspen_snapshot_tcpout_v1_1.successful_login_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Message
cixats_cixaspen_snapshot_tcpout_v1_1.login_message = {}

-- Size: Login Message
cixats_cixaspen_snapshot_tcpout_v1_1.login_message.size =
  cixats_cixaspen_snapshot_tcpout_v1_1.user.size + 
  cixats_cixaspen_snapshot_tcpout_v1_1.pass.size + 
  cixats_cixaspen_snapshot_tcpout_v1_1.market_day_identifier.size + 
  cixats_cixaspen_snapshot_tcpout_v1_1.feed_identifier.size + 
  cixats_cixaspen_snapshot_tcpout_v1_1.requested_sequence.size

-- Display: Login Message
cixats_cixaspen_snapshot_tcpout_v1_1.login_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Message
cixats_cixaspen_snapshot_tcpout_v1_1.login_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User: Alpha
  index, user = cixats_cixaspen_snapshot_tcpout_v1_1.user.dissect(buffer, index, packet, parent)

  -- Pass: Alpha
  index, pass = cixats_cixaspen_snapshot_tcpout_v1_1.pass.dissect(buffer, index, packet, parent)

  -- Market Day Identifier: Number
  index, market_day_identifier = cixats_cixaspen_snapshot_tcpout_v1_1.market_day_identifier.dissect(buffer, index, packet, parent)

  -- Feed Identifier: Alpha
  index, feed_identifier = cixats_cixaspen_snapshot_tcpout_v1_1.feed_identifier.dissect(buffer, index, packet, parent)

  -- Requested Sequence: Alpha
  index, requested_sequence = cixats_cixaspen_snapshot_tcpout_v1_1.requested_sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Message
cixats_cixaspen_snapshot_tcpout_v1_1.login_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.login_message, buffer(offset, 0))
    local index = cixats_cixaspen_snapshot_tcpout_v1_1.login_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cixats_cixaspen_snapshot_tcpout_v1_1.login_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cixats_cixaspen_snapshot_tcpout_v1_1.login_message.fields(buffer, offset, packet, parent)
  end
end

-- Packet Payload
cixats_cixaspen_snapshot_tcpout_v1_1.packet_payload = {}

-- Dissect: Packet Payload
cixats_cixaspen_snapshot_tcpout_v1_1.packet_payload.dissect = function(buffer, offset, packet, parent, packet_type)
  -- Dissect Login Message
  if packet_type == "L" then
    return cixats_cixaspen_snapshot_tcpout_v1_1.login_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Client Heartbeat Message
  if packet_type == "R" then
    return offset
  end
  -- Dissect Successful Login Message
  if packet_type == "A" then
    return cixats_cixaspen_snapshot_tcpout_v1_1.successful_login_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Reject Message
  if packet_type == "J" then
    return cixats_cixaspen_snapshot_tcpout_v1_1.login_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Server Heartbeat Message
  if packet_type == "H" then
    return offset
  end
  -- Dissect Binary Data Message
  if packet_type == "S" then
    return cixats_cixaspen_snapshot_tcpout_v1_1.binary_data_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Packet Header
cixats_cixaspen_snapshot_tcpout_v1_1.packet_header = {}

-- Size: Packet Header
cixats_cixaspen_snapshot_tcpout_v1_1.packet_header.size =
  cixats_cixaspen_snapshot_tcpout_v1_1.length.size + 
  cixats_cixaspen_snapshot_tcpout_v1_1.packet_type.size

-- Display: Packet Header
cixats_cixaspen_snapshot_tcpout_v1_1.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cixats_cixaspen_snapshot_tcpout_v1_1.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: Integer
  index, length = cixats_cixaspen_snapshot_tcpout_v1_1.length.dissect(buffer, index, packet, parent)

  -- Packet Type: Alpha
  index, packet_type = cixats_cixaspen_snapshot_tcpout_v1_1.packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cixats_cixaspen_snapshot_tcpout_v1_1.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.packet_header, buffer(offset, 0))
    local index = cixats_cixaspen_snapshot_tcpout_v1_1.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cixats_cixaspen_snapshot_tcpout_v1_1.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cixats_cixaspen_snapshot_tcpout_v1_1.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Tcp Packet
cixats_cixaspen_snapshot_tcpout_v1_1.tcp_packet = {}

-- Display: Tcp Packet
cixats_cixaspen_snapshot_tcpout_v1_1.tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tcp Packet
cixats_cixaspen_snapshot_tcpout_v1_1.tcp_packet.fields = function(buffer, offset, packet, parent, size_of_tcp_packet)
  local index = offset

  -- Packet Header: Struct of 2 fields
  index, packet_header = cixats_cixaspen_snapshot_tcpout_v1_1.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Type
  local packet_type = buffer(index - 1, 1):string()

  -- Packet Payload: Runtime Type with 6 branches
  index = cixats_cixaspen_snapshot_tcpout_v1_1.packet_payload.dissect(buffer, index, packet, parent, packet_type)

  return index
end

-- Dissect: Tcp Packet
cixats_cixaspen_snapshot_tcpout_v1_1.tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_tcp_packet)
  local index = offset + size_of_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_cixats_cixaspen_snapshot_tcpout_v1_1.fields.tcp_packet, buffer(offset, 0))
    local current = cixats_cixaspen_snapshot_tcpout_v1_1.tcp_packet.fields(buffer, offset, packet, parent, size_of_tcp_packet)
    parent:set_len(size_of_tcp_packet)
    local display = cixats_cixaspen_snapshot_tcpout_v1_1.tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cixats_cixaspen_snapshot_tcpout_v1_1.tcp_packet.fields(buffer, offset, packet, parent, size_of_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Tcp Packet
local tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < cixats_cixaspen_snapshot_tcpout_v1_1.packet_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 2):le_uint()

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Packet
cixats_cixaspen_snapshot_tcpout_v1_1.packet = {}

-- Verify required size of Tcp packet
cixats_cixaspen_snapshot_tcpout_v1_1.packet.requiredsize = function(buffer)
  return buffer:len() >= cixats_cixaspen_snapshot_tcpout_v1_1.packet_header.size
end

-- Dissect Packet
cixats_cixaspen_snapshot_tcpout_v1_1.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Tcp Packet
  local end_of_payload = buffer:len()

  -- Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_tcp_packet = tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = cixats_cixaspen_snapshot_tcpout_v1_1.tcp_packet.dissect(buffer, index, packet, parent, size_of_tcp_packet)
    else
      -- More bytes needed, so set packet information
      packet.desegment_offset = index
      packet.desegment_len = -(available)

      break
    end
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cixats_cixaspen_snapshot_tcpout_v1_1.init()
end

-- Dissector for CixAts CixAspen Snapshot TcpOut 1.1
function omi_cixats_cixaspen_snapshot_tcpout_v1_1.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_cixats_cixaspen_snapshot_tcpout_v1_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_cixats_cixaspen_snapshot_tcpout_v1_1, buffer(), omi_cixats_cixaspen_snapshot_tcpout_v1_1.description, "("..buffer:len().." Bytes)")
  return cixats_cixaspen_snapshot_tcpout_v1_1.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for CixAts CixAspen Snapshot TcpOut 1.1 (Tcp)
local function omi_cixats_cixaspen_snapshot_tcpout_v1_1_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cixats_cixaspen_snapshot_tcpout_v1_1.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cixats_cixaspen_snapshot_tcpout_v1_1
  omi_cixats_cixaspen_snapshot_tcpout_v1_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for CixAts CixAspen Snapshot TcpOut 1.1
omi_cixats_cixaspen_snapshot_tcpout_v1_1:register_heuristic("tcp", omi_cixats_cixaspen_snapshot_tcpout_v1_1_tcp_heuristic)

-- Register CixAts CixAspen Snapshot TcpOut 1.1 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_cixats_cixaspen_snapshot_tcpout_v1_1)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: CIX Trading Inc.
--   Version: 1.1
--   Date: Monday, September 15, 2025
--   Specification: Market Data Recovery Feed Specification-1.1.pdf
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
