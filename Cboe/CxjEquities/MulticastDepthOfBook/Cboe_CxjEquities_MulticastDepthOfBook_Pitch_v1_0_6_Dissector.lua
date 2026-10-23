-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe CxjEquities MulticastDepthOfBook Pitch 1.0.6 Protocol
local omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6 = Proto("Omi.Cboe.CxjEquities.MulticastDepthOfBook.Pitch.v1.0.6", "Cboe CxjEquities MulticastDepthOfBook Pitch 1.0.6")

-- Protocol table
local cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe CxjEquities MulticastDepthOfBook Pitch 1.0.6 Fields
omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.cancelled_quantity = ProtoField.new("Cancelled Quantity", "cboe.cxjequities.multicastdepthofbook.pitch.v1.0.6.cancelledquantity", ftypes.UINT32, nil, nil, nil, "Number of shares cancelled.")
omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.contra_order_id = ProtoField.new("Contra Order Id", "cboe.cxjequities.multicastdepthofbook.pitch.v1.0.6.contraorderid", ftypes.UINT64, nil, nil, nil, "Order Id of the contra order to this execution. The contra order id may not have been previously sent in an Add Order message.")
omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.executed_quantity = ProtoField.new("Executed Quantity", "cboe.cxjequities.multicastdepthofbook.pitch.v1.0.6.executedquantity", ftypes.UINT32, nil, nil, nil, "Number of shares executed.")
omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.execution_id = ProtoField.new("Execution Id", "cboe.cxjequities.multicastdepthofbook.pitch.v1.0.6.executionid", ftypes.UINT64, nil, nil, nil, "Cboe Japan generated day-unique execution identifier of this execution.")
omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.length = ProtoField.new("Length", "cboe.cxjequities.multicastdepthofbook.pitch.v1.0.6.length", ftypes.UINT16, nil, nil, nil, "Length of entire block of messages. Includes this header and Message Count messages to follow")
omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.message_count = ProtoField.new("Message Count", "cboe.cxjequities.multicastdepthofbook.pitch.v1.0.6.messagecount", ftypes.UINT8, nil, nil, nil, "Number of messages to follow this header")
omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.message_length = ProtoField.new("Message Length", "cboe.cxjequities.multicastdepthofbook.pitch.v1.0.6.messagelength", ftypes.UINT8, nil, nil, nil, "Current Pitch message length")
omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.message_type = ProtoField.new("Message Type", "cboe.cxjequities.multicastdepthofbook.pitch.v1.0.6.messagetype", ftypes.UINT8, nil, nil, nil, "Code identifying this message type")
omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.order_id = ProtoField.new("Order Id", "cboe.cxjequities.multicastdepthofbook.pitch.v1.0.6.orderid", ftypes.UINT64, nil, nil, nil, "Day-specific identifier assigned to this order.")
omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.price = ProtoField.new("Price", "cboe.cxjequities.multicastdepthofbook.pitch.v1.0.6.price", ftypes.DOUBLE, nil, nil, nil, "The display price of the order.")
omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.quantity = ProtoField.new("Quantity", "cboe.cxjequities.multicastdepthofbook.pitch.v1.0.6.quantity", ftypes.UINT32, nil, nil, nil, "Number of shares being added to the book.")
omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.reserved_1 = ProtoField.new("Reserved 1", "cboe.cxjequities.multicastdepthofbook.pitch.v1.0.6.reserved1", ftypes.UINT8, nil, nil, nil, "Reserved (undefined).")
omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.reserved_4 = ProtoField.new("Reserved 4", "cboe.cxjequities.multicastdepthofbook.pitch.v1.0.6.reserved4", ftypes.UINT32, nil, nil, nil, "Reserved (undefined).")
omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.sequence = ProtoField.new("Sequence", "cboe.cxjequities.multicastdepthofbook.pitch.v1.0.6.sequence", ftypes.UINT32, nil, nil, nil, "Sequence Number of the first message to follow this header")
omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.short_sell_price_check = ProtoField.new("Short Sell Price Check", "cboe.cxjequities.multicastdepthofbook.pitch.v1.0.6.shortsellpricecheck", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01, "0 = Short sell price check not in effect, 1 = Short sell price check in effect.")
omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.side_indicator = ProtoField.new("Side Indicator", "cboe.cxjequities.multicastdepthofbook.pitch.v1.0.6.sideindicator", ftypes.STRING, nil, nil, nil, "Side of the order.")
omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.symbol = ProtoField.new("Symbol", "cboe.cxjequities.multicastdepthofbook.pitch.v1.0.6.symbol", ftypes.STRING, nil, nil, nil, "Symbol (right padded with spaces).")
omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.tick_direction = ProtoField.new("Tick Direction", "cboe.cxjequities.multicastdepthofbook.pitch.v1.0.6.tickdirection", ftypes.STRING, nil, nil, nil, "The tick direction of this trade.")
omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.timestamp = ProtoField.new("Timestamp", "cboe.cxjequities.multicastdepthofbook.pitch.v1.0.6.timestamp", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Nanoseconds since epoch.")
omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.timestamp_utc = ProtoField.new("Timestamp", "cboe.cxjequities.multicastdepthofbook.pitch.v1.0.6.timestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Nanoseconds since epoch.")
omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.trading_status = ProtoField.new("Trading Status", "cboe.cxjequities.multicastdepthofbook.pitch.v1.0.6.tradingstatus", ftypes.STRING, nil, nil, nil, "Trading status of the session for the symbol.")
omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.trading_status_flags = ProtoField.new("Trading Status Flags", "cboe.cxjequities.multicastdepthofbook.pitch.v1.0.6.tradingstatusflags", ftypes.STRING, nil, nil, nil, "Trading status flags.")
omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.unit = ProtoField.new("Unit", "cboe.cxjequities.multicastdepthofbook.pitch.v1.0.6.unit", ftypes.UINT8, nil, nil, nil, "Unit that applies to messages included in this header")
omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.unused_7 = ProtoField.new("Unused 7", "cboe.cxjequities.multicastdepthofbook.pitch.v1.0.6.unused7", ftypes.UINT8, nil, base.DEC, 0xFE, "Unused.")

-- Cboe CxjEquities MulticastDepthOfBook Pitch 1.0.6 Framing
omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.message = ProtoField.new("Message", "cboe.cxjequities.multicastdepthofbook.pitch.v1.0.6.message", ftypes.STRING)
omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.message_header = ProtoField.new("Message Header", "cboe.cxjequities.multicastdepthofbook.pitch.v1.0.6.messageheader", ftypes.STRING)
omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.packet = ProtoField.new("Packet", "cboe.cxjequities.multicastdepthofbook.pitch.v1.0.6.packet", ftypes.STRING, nil, nil, nil, "Pitch Udp Packet")
omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.packet_header = ProtoField.new("Packet Header", "cboe.cxjequities.multicastdepthofbook.pitch.v1.0.6.packetheader", ftypes.STRING)

-- Cboe CxjEquities MulticastDepthOfBook 1.0.6 Application Messages
omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.add_order_message = ProtoField.new("Add Order Message", "cboe.cxjequities.multicastdepthofbook.pitch.v1.0.6.addordermessage", ftypes.STRING, nil, nil, nil, "Represents a newly accepted order on the Cboe Japan book. It includes a day-specific Order Id assigned by Cboe Japan to the order.")
omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.delete_order_message = ProtoField.new("Delete Order Message", "cboe.cxjequities.multicastdepthofbook.pitch.v1.0.6.deleteordermessage", ftypes.STRING, nil, nil, nil, "Sent whenever a booked order is cancelled or leaves the order book. The Order Id refers to the Order Id of the original Add Order message.")
omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.end_of_session_message = ProtoField.new("End Of Session Message", "cboe.cxjequities.multicastdepthofbook.pitch.v1.0.6.endofsessionmessage", ftypes.STRING, nil, nil, nil, "Sent for each unit when the unit shuts down. No additional sequenced messages will be delivered for this unit, but heartbeats from the unit may be received.")
omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.modify_order_message = ProtoField.new("Modify Order Message", "cboe.cxjequities.multicastdepthofbook.pitch.v1.0.6.modifyordermessage", ftypes.STRING, nil, nil, nil, "Sent whenever an open order is visibly modified. The Order Id refers to the Order Id of the original Add Order message.")
omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.order_executed_message = ProtoField.new("Order Executed Message", "cboe.cxjequities.multicastdepthofbook.pitch.v1.0.6.orderexecutedmessage", ftypes.STRING, nil, nil, nil, "Sent when a visible order on the Cboe Japan book is executed in whole or in part. The execution price equals the order price found in the original Add Order message or the order price in the latest Modify Order message referencing the Order Id.")
omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.reduce_size_message = ProtoField.new("Reduce Size Message", "cboe.cxjequities.multicastdepthofbook.pitch.v1.0.6.reducesizemessage", ftypes.STRING, nil, nil, nil, "Sent when a visible order on the Cboe Japan book is partially reduced.")
omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.trade_break_message = ProtoField.new("Trade Break Message", "cboe.cxjequities.multicastdepthofbook.pitch.v1.0.6.tradebreakmessage", ftypes.STRING, nil, nil, nil, "Sent whenever an execution on Cboe Japan is cancelled.")
omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.trade_message = ProtoField.new("Trade Message", "cboe.cxjequities.multicastdepthofbook.pitch.v1.0.6.trademessage", ftypes.STRING, nil, nil, nil, "Sent when there is an execution against any non-displayed portion of an iceberg order. Trade messages do not alter the book and can be ignored if messages are being used solely to build a book.")
omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.cxjequities.multicastdepthofbook.pitch.v1.0.6.tradingstatusmessage", ftypes.STRING, nil, nil, nil, "Used to indicate the current trading status of a security. A Trading Status message will be sent whenever trading status changes for a security.")
omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.unit_clear_message = ProtoField.new("Unit Clear Message", "cboe.cxjequities.multicastdepthofbook.pitch.v1.0.6.unitclearmessage", ftypes.STRING, nil, nil, nil, "Instructs feed recipients to clear all orders for the Cboe Japan book in the unit specified in the Sequenced Unit Header. It would be distributed in rare recovery events such as a datacenter fail-over.")

-- Cboe CxjEquities MulticastDepthOfBook Pitch 1.0.6 Generated Fields
omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.message_index = ProtoField.new("Message Index", "cboe.cxjequities.multicastdepthofbook.pitch.v1.0.6.messageindex", ftypes.UINT16)
omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "cboe.cxjequities.multicastdepthofbook.pitch.v1.0.6.messagesequencenumber", ftypes.UINT64)

-----------------------------------------------------------------------
-- Cboe CxjEquities MulticastDepthOfBook Pitch 1.0.6 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.absolute_time_base = 0


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe CxjEquities MulticastDepthOfBook Pitch 1.0.6 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true
show.sequences = true

-- Register Cboe CxjEquities MulticastDepthOfBook Pitch 1.0.6 Show Options
omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")

omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.prefs.show_application_messages then
    show.application_messages = omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.prefs.show_application_messages
  end
  if show.headers ~= omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.prefs.show_headers then
    show.headers = omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.prefs.show_headers
  end
  if show.structs ~= omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.prefs.show_structs then
    show.structs = omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.prefs.show_structs
  end
  if show.indexes ~= omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.prefs.show_indexes then
    show.indexes = omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.prefs.show_indexes
  end
  if show.sequences ~= omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.prefs.show_sequences then
    show.sequences = omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.prefs.show_sequences
  end
  if cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.absolute_time_base ~= omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.prefs.absolute_time_base then
    cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.absolute_time_base = omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.prefs.absolute_time_base
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
-- Cboe CxjEquities MulticastDepthOfBook Pitch 1.0.6 Fields
-----------------------------------------------------------------------

-- Cancelled Quantity
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.cancelled_quantity = {}

-- Size: Cancelled Quantity
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.cancelled_quantity.size = 4

-- Display: Cancelled Quantity
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.cancelled_quantity.display = function(value)
  return "Cancelled Quantity: "..value
end

-- Dissect: Cancelled Quantity
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.cancelled_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.cancelled_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.cancelled_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.cancelled_quantity, range, value, display)

  return offset + length, value
end

-- Contra Order Id
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.contra_order_id = {}

-- Size: Contra Order Id
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.contra_order_id.size = 8

-- Display: Contra Order Id
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.contra_order_id.display = function(value)
  return "Contra Order Id: "..value
end

-- Dissect: Contra Order Id
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.contra_order_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.contra_order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.contra_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.contra_order_id, range, value, display)

  return offset + length, value
end

-- Executed Quantity
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.executed_quantity = {}

-- Size: Executed Quantity
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.executed_quantity.size = 4

-- Display: Executed Quantity
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Execution Id
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.execution_id = {}

-- Size: Execution Id
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.execution_id.size = 8

-- Display: Execution Id
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Length
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.length = {}

-- Size: Length
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.length.size = 2

-- Display: Length
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.length, range, value, display)

  return offset + length, value
end

-- Message Count
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.message_count = {}

-- Size: Message Count
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.message_count.size = 1

-- Display: Message Count
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.message_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.message_length = {}

-- Size: Message Length
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.message_length.size = 1

-- Display: Message Length
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.message_type = {}

-- Size: Message Type
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.message_type.size = 1

-- Display: Message Type
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.message_type.display = function(value)
  if value == 0x97 then
    return "Message Type: Unit Clear Message (0x97)"
  end
  if value == 0x50 then
    return "Message Type: Trading Status Message (0x50)"
  end
  if value == 0x51 then
    return "Message Type: Add Order Message (0x51)"
  end
  if value == 0x52 then
    return "Message Type: Order Executed Message (0x52)"
  end
  if value == 0x39 then
    return "Message Type: Reduce Size Message (0x39)"
  end
  if value == 0x3A then
    return "Message Type: Modify Order Message (0x3A)"
  end
  if value == 0x3C then
    return "Message Type: Delete Order Message (0x3C)"
  end
  if value == 0x53 then
    return "Message Type: Trade Message (0x53)"
  end
  if value == 0x3E then
    return "Message Type: Trade Break Message (0x3E)"
  end
  if value == 0x2D then
    return "Message Type: End Of Session Message (0x2D)"
  end

  return "Message Type: Unknown("..string.format("0x%02X", value)..")"
end

-- Dissect: Message Type
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.message_type, range, value, display)

  return offset + length, value
end

-- Order Id
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.order_id = {}

-- Size: Order Id
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.order_id.size = 8

-- Display: Order Id
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.order_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.order_id, range, value, display)

  return offset + length, value
end

-- Price
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.price = {}

-- Size: Price
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.price.size = 8

-- Display: Price
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.price.translate(raw)
  local display = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.quantity = {}

-- Size: Quantity
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.quantity.size = 4

-- Display: Quantity
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.quantity, range, value, display)

  return offset + length, value
end

-- Reserved 1
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.reserved_1 = {}

-- Size: Reserved 1
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.reserved_1.size = 1

-- Display: Reserved 1
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.reserved_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 4
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.reserved_4 = {}

-- Size: Reserved 4
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.reserved_4.size = 4

-- Display: Reserved 4
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.reserved_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Sequence
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.sequence = {}

-- Size: Sequence
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.sequence.size = 4

-- Display: Sequence
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.sequence, range, value, display)

  return offset + length, value
end

-- Side Indicator
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.side_indicator = {}

-- Size: Side Indicator
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.side_indicator.size = 1

-- Display: Side Indicator
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.side_indicator.display = function(value)
  if value == "B" then
    return "Side Indicator: Buy Order (B)"
  end
  if value == "S" then
    return "Side Indicator: Sell Order (S)"
  end

  return "Side Indicator: Unknown("..value..")"
end

-- Dissect: Side Indicator
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.side_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.side_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.side_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.side_indicator, range, value, display)

  return offset + length, value
end

-- Symbol
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.symbol = {}

-- Size: Symbol
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.symbol.size = 6

-- Display: Symbol
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.symbol, range, value, display)

  return offset + length, value
end

-- Tick Direction
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.tick_direction = {}

-- Size: Tick Direction
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.tick_direction.size = 1

-- Display: Tick Direction
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.tick_direction.display = function(value)
  if value == "-" then
    return "Tick Direction: Lower Than Previous Last Sale (-)"
  end
  if value == "+" then
    return "Tick Direction: Higher Than Previous Last Sale (+)"
  end
  if value == "0" then
    return "Tick Direction: No Change From Or Since Tse Previous Close Or First Tse Trade Of An Ipo (0)"
  end
  if value == "D" then
    return "Tick Direction: Same As Previous Last Sale And Most Recent Price Change Was Downward (D)"
  end
  if value == "U" then
    return "Tick Direction: Same As Previous Last Sale And Most Recent Price Change Was Upward (U)"
  end

  return "Tick Direction: Unknown("..value..")"
end

-- Dissect: Tick Direction
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.tick_direction.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.tick_direction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.tick_direction.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.tick_direction, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.timestamp = {}

-- Size: Timestamp
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.timestamp.size = 8

-- Dissect: Timestamp
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.timestamp
  if cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.absolute_time_base == 1 then field = omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.timestamp_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Trading Status
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.trading_status = {}

-- Size: Trading Status
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.trading_status.size = 1

-- Display: Trading Status
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.trading_status.display = function(value)
  if value == "C" then
    return "Trading Status: Closed (C)"
  end
  if value == "T" then
    return "Trading Status: Trading (T)"
  end
  if value == "H" then
    return "Trading Status: Halted (H)"
  end
  if value == "h" then
    return "Trading Status: Halted In Pre Open (h)"
  end

  return "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Unit
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.unit = {}

-- Size: Unit
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.unit.size = 1

-- Display: Unit
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.unit, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe CxjEquities MulticastDepthOfBook Pitch 1.0.6
-----------------------------------------------------------------------

-- End Of Session Message
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.end_of_session_message = {}

-- Size: End Of Session Message
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.end_of_session_message.size =
  cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.reserved_4.size

-- Display: End Of Session Message
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.end_of_session_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Session Message
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.end_of_session_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 4: Binary
  index, reserved_4 = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.reserved_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Session Message
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.end_of_session_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.end_of_session_message, buffer(offset, 0))
    local index = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.end_of_session_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.end_of_session_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.end_of_session_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Break Message
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.trade_break_message = {}

-- Size: Trade Break Message
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.trade_break_message.size =
  cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.timestamp.size + 
  cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.execution_id.size

-- Display: Trade Break Message
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.trade_break_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Break Message
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.trade_break_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary UTC Timestamp
  index, timestamp = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.timestamp.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Break Message
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.trade_break_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.trade_break_message, buffer(offset, 0))
    local index = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.trade_break_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.trade_break_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.trade_break_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.trade_message = {}

-- Size: Trade Message
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.trade_message.size =
  cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.timestamp.size + 
  cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.symbol.size + 
  cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.quantity.size + 
  cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.price.size + 
  cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.execution_id.size + 
  cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.order_id.size + 
  cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.contra_order_id.size

-- Display: Trade Message
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary UTC Timestamp
  index, timestamp = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.symbol.dissect(buffer, index, packet, parent)

  -- Quantity: Binary
  index, quantity = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.quantity.dissect(buffer, index, packet, parent)

  -- Price: Binary Price
  index, price = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.price.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.execution_id.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.order_id.dissect(buffer, index, packet, parent)

  -- Contra Order Id: Binary
  index, contra_order_id = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.contra_order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.trade_message, buffer(offset, 0))
    local index = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Delete Order Message
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.delete_order_message = {}

-- Size: Delete Order Message
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.delete_order_message.size =
  cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.timestamp.size + 
  cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.order_id.size

-- Display: Delete Order Message
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.delete_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Order Message
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.delete_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary UTC Timestamp
  index, timestamp = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Message
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.delete_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.delete_order_message, buffer(offset, 0))
    local index = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.delete_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.delete_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.delete_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Message
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.modify_order_message = {}

-- Size: Modify Order Message
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.modify_order_message.size =
  cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.timestamp.size + 
  cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.order_id.size + 
  cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.quantity.size + 
  cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.price.size + 
  cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.reserved_1.size

-- Display: Modify Order Message
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.modify_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Message
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.modify_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary UTC Timestamp
  index, timestamp = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.order_id.dissect(buffer, index, packet, parent)

  -- Quantity: Binary
  index, quantity = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.quantity.dissect(buffer, index, packet, parent)

  -- Price: Binary Price
  index, price = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.price.dissect(buffer, index, packet, parent)

  -- Reserved 1: Binary
  index, reserved_1 = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Message
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.modify_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.modify_order_message, buffer(offset, 0))
    local index = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.modify_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.modify_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.modify_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Reduce Size Message
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.reduce_size_message = {}

-- Size: Reduce Size Message
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.reduce_size_message.size =
  cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.timestamp.size + 
  cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.order_id.size + 
  cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.cancelled_quantity.size

-- Display: Reduce Size Message
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.reduce_size_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reduce Size Message
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.reduce_size_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary UTC Timestamp
  index, timestamp = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.order_id.dissect(buffer, index, packet, parent)

  -- Cancelled Quantity: Binary
  index, cancelled_quantity = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.cancelled_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Message
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.reduce_size_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.reduce_size_message, buffer(offset, 0))
    local index = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.reduce_size_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.reduce_size_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.reduce_size_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.order_executed_message = {}

-- Size: Order Executed Message
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.order_executed_message.size =
  cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.timestamp.size + 
  cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.order_id.size + 
  cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.executed_quantity.size + 
  cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.execution_id.size + 
  cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.contra_order_id.size + 
  cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.tick_direction.size

-- Display: Order Executed Message
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary UTC Timestamp
  index, timestamp = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.order_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Binary
  index, executed_quantity = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.executed_quantity.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.execution_id.dissect(buffer, index, packet, parent)

  -- Contra Order Id: Binary
  index, contra_order_id = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.contra_order_id.dissect(buffer, index, packet, parent)

  -- Tick Direction: Printable ASCII
  index, tick_direction = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.tick_direction.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.order_executed_message, buffer(offset, 0))
    local index = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Message
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.add_order_message = {}

-- Size: Add Order Message
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.add_order_message.size =
  cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.timestamp.size + 
  cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.order_id.size + 
  cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.side_indicator.size + 
  cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.quantity.size + 
  cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.symbol.size + 
  cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.price.size + 
  cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.reserved_1.size

-- Display: Add Order Message
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.add_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.add_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary UTC Timestamp
  index, timestamp = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity: Binary
  index, quantity = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.quantity.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.symbol.dissect(buffer, index, packet, parent)

  -- Price: Binary Price
  index, price = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.price.dissect(buffer, index, packet, parent)

  -- Reserved 1: Binary
  index, reserved_1 = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.add_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.add_order_message, buffer(offset, 0))
    local index = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.add_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.add_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.add_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Status Flags
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.trading_status_flags = {}

-- Size: Trading Status Flags
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.trading_status_flags.size = 1

-- Display: Trading Status Flags
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.trading_status_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Short Sell Price Check flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Short Sell Price Check"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Trading Status Flags
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.trading_status_flags.bits = function(range, value, packet, parent)

  -- Short Sell Price Check: 1 Bit
  parent:add(omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.short_sell_price_check, range, value)

  -- Unused 7: 7 Bit
  parent:add(omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.unused_7, range, value)
end

-- Dissect: Trading Status Flags
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.trading_status_flags.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.trading_status_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.trading_status_flags.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.trading_status_flags, range, display)

  if show.structs then
    cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.trading_status_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Trading Status Message
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.trading_status_message = {}

-- Size: Trading Status Message
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.trading_status_message.size =
  cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.timestamp.size + 
  cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.symbol.size + 
  cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.trading_status.size + 
  cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.trading_status_flags.size

-- Display: Trading Status Message
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary UTC Timestamp
  index, timestamp = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.symbol.dissect(buffer, index, packet, parent)

  -- Trading Status: Alphanumeric
  index, trading_status = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.trading_status.dissect(buffer, index, packet, parent)

  -- Trading Status Flags: Struct of 2 fields
  index, trading_status_flags = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.trading_status_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.trading_status_message, buffer(offset, 0))
    local index = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Unit Clear Message
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.unit_clear_message = {}

-- Size: Unit Clear Message
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.unit_clear_message.size =
  cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.reserved_4.size

-- Display: Unit Clear Message
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.unit_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Clear Message
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.unit_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 4: Binary
  index, reserved_4 = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.reserved_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Clear Message
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.unit_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.unit_clear_message, buffer(offset, 0))
    local index = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.unit_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.unit_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.unit_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.payload = {}

-- Dissect: Payload
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Unit Clear Message
  if message_type == 0x97 then
    return cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.unit_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if message_type == 0x50 then
    return cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.trading_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message
  if message_type == 0x51 then
    return cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.add_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == 0x52 then
    return cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reduce Size Message
  if message_type == 0x39 then
    return cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.reduce_size_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Message
  if message_type == 0x3A then
    return cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.modify_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Message
  if message_type == 0x3C then
    return cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.delete_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if message_type == 0x53 then
    return cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Break Message
  if message_type == 0x3E then
    return cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.trade_break_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session Message
  if message_type == 0x2D then
    return cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.end_of_session_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.message_header = {}

-- Size: Message Header
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.message_header.size =
  cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.message_length.size + 
  cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.message_type.size

-- Display: Message Header
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, message_type = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.message_header, buffer(offset, 0))
    local index = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.message = {}

-- Read runtime size of: Message
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 1):le_uint()

  return message_length
end

-- Display: Message
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Implicit Message Sequence Number
  if message_index ~= nil and show.sequences and cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.packet_sequence ~= nil then
    local sequence = parent:add(omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.message_sequence_number, UInt64.new(cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.packet_sequence + message_index - 1))
    sequence:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 10 branches
  index = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.message, buffer(offset, 0))
    local current = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Heartbeat
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.heartbeat = {}

-- Display: Heartbeat
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.messages = {}

-- Dissect: Messages
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.messages.dissect = function(buffer, offset, packet, parent, message_count)
  -- Dissect Heartbeat
  if message_count == 0 then
    return cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.heartbeat.dissect(buffer, offset, packet, parent)
  end

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 1):le_uint()

    -- Message: Struct of 2 fields
    offset = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end
end

-- Packet Header
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.packet_header = {}

-- Size: Packet Header
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.packet_header.size =
  cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.length.size + 
  cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.message_count.size + 
  cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.unit.size + 
  cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.sequence.size

-- Display: Packet Header
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.length.dissect(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.message_count.dissect(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.unit.dissect(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.sequence.dissect(buffer, index, packet, parent)

  -- Sequence base for the packet's messages
  cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.packet_sequence = sequence

  return index
end

-- Dissect: Packet Header
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.fields.packet_header, buffer(offset, 0))
    local index = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.packet = {}

-- Verify required size of Udp packet
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.packet_header.size
end

-- Dissect Packet
cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 6, 1):le_uint()

  -- Messages: Runtime Type with 2 branches
  index = cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.init()
end

-- Dissector for Cboe CxjEquities MulticastDepthOfBook Pitch 1.0.6
function omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6, buffer(), omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.description, "("..buffer:len().." Bytes)")
  return cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cboe CxjEquities MulticastDepthOfBook Pitch 1.0.6 (Udp)
local function omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6
  omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe CxjEquities MulticastDepthOfBook Pitch 1.0.6
omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6:register_heuristic("udp", omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6_udp_heuristic)

-- Register Cboe CxjEquities MulticastDepthOfBook Pitch 1.0.6 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_cboe_cxjequities_multicastdepthofbook_pitch_v1_0_6)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.0.6
--   Since: 1.0.3
--   Date: Tuesday, February 25, 2025
--   Specification: CXJ Multicast PITCH Specification.pdf
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
