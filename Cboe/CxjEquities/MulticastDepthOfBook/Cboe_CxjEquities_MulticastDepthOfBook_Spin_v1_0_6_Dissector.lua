-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe CxjEquities MulticastDepthOfBook Spin 1.0.6 Protocol
local omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6 = Proto("Omi.Cboe.CxjEquities.MulticastDepthOfBook.Spin.v1.0.6", "Cboe CxjEquities MulticastDepthOfBook Spin 1.0.6")

-- Protocol table
local cboe_cxjequities_multicastdepthofbook_spin_v1_0_6 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe CxjEquities MulticastDepthOfBook Spin 1.0.6 Fields
omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.filler = ProtoField.new("Filler", "cboe.cxjequities.multicastdepthofbook.spin.v1.0.6.filler", ftypes.STRING, nil, nil, nil, "(space filled)")
omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.length = ProtoField.new("Length", "cboe.cxjequities.multicastdepthofbook.spin.v1.0.6.length", ftypes.UINT16, nil, nil, nil, "Length of entire block of messages. Includes this header and Message Count messages to follow")
omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.login_response_status = ProtoField.new("Login Response Status", "cboe.cxjequities.multicastdepthofbook.spin.v1.0.6.loginresponsestatus", ftypes.STRING, nil, nil, nil, "Accepted or reason for reject.")
omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.message_count = ProtoField.new("Message Count", "cboe.cxjequities.multicastdepthofbook.spin.v1.0.6.messagecount", ftypes.UINT8, nil, nil, nil, "Number of messages to follow this header")
omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.message_length = ProtoField.new("Message Length", "cboe.cxjequities.multicastdepthofbook.spin.v1.0.6.messagelength", ftypes.UINT8, nil, nil, nil, "Current Pitch message length")
omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.message_type = ProtoField.new("Message Type", "cboe.cxjequities.multicastdepthofbook.spin.v1.0.6.messagetype", ftypes.UINT8, nil, nil, nil, "Code identifying this message type")
omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.order_count = ProtoField.new("Order Count", "cboe.cxjequities.multicastdepthofbook.spin.v1.0.6.ordercount", ftypes.UINT32, nil, nil, nil, "Number of Add Order messages which will be contained in this spin.")
omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.order_id = ProtoField.new("Order Id", "cboe.cxjequities.multicastdepthofbook.spin.v1.0.6.orderid", ftypes.UINT64, nil, nil, nil, "Day-specific identifier assigned to this order.")
omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.password = ProtoField.new("Password", "cboe.cxjequities.multicastdepthofbook.spin.v1.0.6.password", ftypes.STRING, nil, nil, nil, "Password supplied by Cboe Japan.")
omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.price = ProtoField.new("Price", "cboe.cxjequities.multicastdepthofbook.spin.v1.0.6.price", ftypes.DOUBLE, nil, nil, nil, "The display price of the order.")
omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.quantity = ProtoField.new("Quantity", "cboe.cxjequities.multicastdepthofbook.spin.v1.0.6.quantity", ftypes.UINT32, nil, nil, nil, "Number of shares being added to the book.")
omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.reserved_1 = ProtoField.new("Reserved 1", "cboe.cxjequities.multicastdepthofbook.spin.v1.0.6.reserved1", ftypes.UINT8, nil, nil, nil, "Reserved (undefined).")
omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.sequence = ProtoField.new("Sequence", "cboe.cxjequities.multicastdepthofbook.spin.v1.0.6.sequence", ftypes.UINT32, nil, nil, nil, "Spin is available which is current through this sequence number.")
omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.session_sub_id = ProtoField.new("Session Sub Id", "cboe.cxjequities.multicastdepthofbook.spin.v1.0.6.sessionsubid", ftypes.STRING, nil, nil, nil, "SessionSubId supplied by Cboe Japan.")
omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.short_sell_price_check = ProtoField.new("Short Sell Price Check", "cboe.cxjequities.multicastdepthofbook.spin.v1.0.6.shortsellpricecheck", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01, "0 = Short sell price check not in effect, 1 = Short sell price check in effect.")
omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.side_indicator = ProtoField.new("Side Indicator", "cboe.cxjequities.multicastdepthofbook.spin.v1.0.6.sideindicator", ftypes.STRING, nil, nil, nil, "Side of the order.")
omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.spin_response_status = ProtoField.new("Spin Response Status", "cboe.cxjequities.multicastdepthofbook.spin.v1.0.6.spinresponsestatus", ftypes.STRING, nil, nil, nil, "Accepted or reason for reject.")
omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.symbol = ProtoField.new("Symbol", "cboe.cxjequities.multicastdepthofbook.spin.v1.0.6.symbol", ftypes.STRING, nil, nil, nil, "Symbol (right padded with spaces).")
omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.timestamp = ProtoField.new("Timestamp", "cboe.cxjequities.multicastdepthofbook.spin.v1.0.6.timestamp", ftypes.UINT64, nil, nil, nil, "Nanoseconds since epoch.")
omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.trading_status = ProtoField.new("Trading Status", "cboe.cxjequities.multicastdepthofbook.spin.v1.0.6.tradingstatus", ftypes.STRING, nil, nil, nil, "Trading status of the session for the symbol.")
omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.trading_status_flags = ProtoField.new("Trading Status Flags", "cboe.cxjequities.multicastdepthofbook.spin.v1.0.6.tradingstatusflags", ftypes.STRING, nil, nil, nil, "Trading status flags.")
omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.unit = ProtoField.new("Unit", "cboe.cxjequities.multicastdepthofbook.spin.v1.0.6.unit", ftypes.UINT8, nil, nil, nil, "Unit that applies to messages included in this header")
omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.unused_7 = ProtoField.new("Unused 7", "cboe.cxjequities.multicastdepthofbook.spin.v1.0.6.unused7", ftypes.UINT8, nil, base.DEC, 0xFE, "Unused.")
omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.username = ProtoField.new("Username", "cboe.cxjequities.multicastdepthofbook.spin.v1.0.6.username", ftypes.STRING, nil, nil, nil, "Username supplied by Cboe Japan.")

-- Cboe CxjEquities MulticastDepthOfBook Spin 1.0.6 Framing
omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.message = ProtoField.new("Message", "cboe.cxjequities.multicastdepthofbook.spin.v1.0.6.message", ftypes.STRING)
omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.message_header = ProtoField.new("Message Header", "cboe.cxjequities.multicastdepthofbook.spin.v1.0.6.messageheader", ftypes.STRING)
omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.packet = ProtoField.new("Packet", "cboe.cxjequities.multicastdepthofbook.spin.v1.0.6.packet", ftypes.STRING, nil, nil, nil, "Pitch Tcp Packet")
omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.packet_header = ProtoField.new("Packet Header", "cboe.cxjequities.multicastdepthofbook.spin.v1.0.6.packetheader", ftypes.STRING)

-- Cboe CxjEquities MulticastDepthOfBook 1.0.6 Application Messages
omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.add_order_message = ProtoField.new("Add Order Message", "cboe.cxjequities.multicastdepthofbook.spin.v1.0.6.addordermessage", ftypes.STRING, nil, nil, nil, "Represents a newly accepted order on the Cboe Japan book. It includes a day-specific Order Id assigned by Cboe Japan to the order.")
omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.login_message = ProtoField.new("Login Message", "cboe.cxjequities.multicastdepthofbook.spin.v1.0.6.loginmessage", ftypes.STRING, nil, nil, nil, "First message sent to the Spin Server by a participant's process after the connection to the Spin Server is established. Failure to login before sending any other message type will result in the connection being dropped by the Spin Server. Identical format to the GRP Login message.")
omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.login_response_message = ProtoField.new("Login Response Message", "cboe.cxjequities.multicastdepthofbook.spin.v1.0.6.loginresponsemessage", ftypes.STRING, nil, nil, nil, "Sent by the Spin Server to a participant's process in response to a Login message. The status field is used to reflect an accepted login or the reason the session was not accepted. If login fails, the connection will be dropped after the Login Response message is sent.")
omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.spin_finished_message = ProtoField.new("Spin Finished Message", "cboe.cxjequities.multicastdepthofbook.spin.v1.0.6.spinfinishedmessage", ftypes.STRING, nil, nil, nil, "Sent to indicate that all messages for the spin requested have been sent. A Spin Finished message is only sent if a Spin Request was not rejected.")
omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.spin_image_available_message = ProtoField.new("Spin Image Available Message", "cboe.cxjequities.multicastdepthofbook.spin.v1.0.6.spinimageavailablemessage", ftypes.STRING, nil, nil, nil, "Sent once per second and indicates through what sequence number a spin is available.")
omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.spin_request_message = ProtoField.new("Spin Request Message", "cboe.cxjequities.multicastdepthofbook.spin.v1.0.6.spinrequestmessage", ftypes.STRING, nil, nil, nil, "Used by a participant's process to request transmission of a spin of the unit's order book.")
omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.spin_response_message = ProtoField.new("Spin Response Message", "cboe.cxjequities.multicastdepthofbook.spin.v1.0.6.spinresponsemessage", ftypes.STRING, nil, nil, nil, "Sent in response to a participant's Spin Request message indicating whether a spin will be sent.")
omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.cxjequities.multicastdepthofbook.spin.v1.0.6.tradingstatusmessage", ftypes.STRING, nil, nil, nil, "Used to indicate the current trading status of a security. A Trading Status message will be sent whenever trading status changes for a security.")

-- Cboe CxjEquities MulticastDepthOfBook Spin 1.0.6 Generated Fields
omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.message_index = ProtoField.new("Message Index", "cboe.cxjequities.multicastdepthofbook.spin.v1.0.6.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe CxjEquities MulticastDepthOfBook Spin 1.0.6 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true

-- Register Cboe CxjEquities MulticastDepthOfBook Spin 1.0.6 Show Options
omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

-- Handle changed preferences
function omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.prefs.show_application_messages then
    show.application_messages = omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.prefs.show_application_messages
  end
  if show.headers ~= omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.prefs.show_headers then
    show.headers = omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.prefs.show_headers
  end
  if show.structs ~= omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.prefs.show_structs then
    show.structs = omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.prefs.show_structs
  end
  if show.indexes ~= omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.prefs.show_indexes then
    show.indexes = omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.prefs.show_indexes
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
-- Cboe CxjEquities MulticastDepthOfBook Spin 1.0.6 Fields
-----------------------------------------------------------------------

-- Filler
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.filler = {}

-- Size: Filler
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.filler.size = 2

-- Display: Filler
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.filler.display = function(value)
  return "Filler: "..value
end

-- Dissect: Filler
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.filler.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.filler.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.filler.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.filler, range, value, display)

  return offset + length, value
end

-- Length
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.length = {}

-- Size: Length
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.length.size = 2

-- Display: Length
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.length, range, value, display)

  return offset + length, value
end

-- Login Response Status
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.login_response_status = {}

-- Size: Login Response Status
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.login_response_status.size = 1

-- Display: Login Response Status
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.login_response_status.display = function(value)
  if value == "A" then
    return "Login Response Status: Login Accepted (A)"
  end
  if value == "N" then
    return "Login Response Status: Not Authorized Invalid Username Password (N)"
  end
  if value == "B" then
    return "Login Response Status: Session In Use (B)"
  end
  if value == "S" then
    return "Login Response Status: Invalid Session (S)"
  end

  return "Login Response Status: Unknown("..value..")"
end

-- Dissect: Login Response Status
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.login_response_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.login_response_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.login_response_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.login_response_status, range, value, display)

  return offset + length, value
end

-- Message Count
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.message_count = {}

-- Size: Message Count
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.message_count.size = 1

-- Display: Message Count
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.message_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.message_length = {}

-- Size: Message Length
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.message_length.size = 1

-- Display: Message Length
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.message_type = {}

-- Size: Message Type
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.message_type.size = 1

-- Display: Message Type
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.message_type.display = function(value)
  if value == 0x01 then
    return "Message Type: Login Message (0x01)"
  end
  if value == 0x02 then
    return "Message Type: Login Response Message (0x02)"
  end
  if value == 0x80 then
    return "Message Type: Spin Image Available Message (0x80)"
  end
  if value == 0x81 then
    return "Message Type: Spin Request Message (0x81)"
  end
  if value == 0x82 then
    return "Message Type: Spin Response Message (0x82)"
  end
  if value == 0x83 then
    return "Message Type: Spin Finished Message (0x83)"
  end
  if value == 0x50 then
    return "Message Type: Trading Status Message (0x50)"
  end
  if value == 0x51 then
    return "Message Type: Add Order Message (0x51)"
  end

  return "Message Type: Unknown("..string.format("0x%02X", value)..")"
end

-- Dissect: Message Type
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.message_type, range, value, display)

  return offset + length, value
end

-- Order Count
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.order_count = {}

-- Size: Order Count
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.order_count.size = 4

-- Display: Order Count
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.order_count.display = function(value)
  return "Order Count: "..value
end

-- Dissect: Order Count
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.order_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.order_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.order_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.order_count, range, value, display)

  return offset + length, value
end

-- Order Id
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.order_id = {}

-- Size: Order Id
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.order_id.size = 8

-- Display: Order Id
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.order_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.order_id, range, value, display)

  return offset + length, value
end

-- Password
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.password = {}

-- Size: Password
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.password.size = 10

-- Display: Password
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.password.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.password, range, value, display)

  return offset + length, value
end

-- Price
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.price = {}

-- Size: Price
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.price.size = 8

-- Display: Price
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.price.translate(raw)
  local display = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.quantity = {}

-- Size: Quantity
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.quantity.size = 4

-- Display: Quantity
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.quantity, range, value, display)

  return offset + length, value
end

-- Reserved 1
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.reserved_1 = {}

-- Size: Reserved 1
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.reserved_1.size = 1

-- Display: Reserved 1
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.reserved_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Sequence
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.sequence = {}

-- Size: Sequence
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.sequence.size = 4

-- Display: Sequence
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.sequence, range, value, display)

  return offset + length, value
end

-- Session Sub Id
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.session_sub_id = {}

-- Size: Session Sub Id
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.session_sub_id.size = 4

-- Display: Session Sub Id
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.session_sub_id.display = function(value)
  return "Session Sub Id: "..value
end

-- Dissect: Session Sub Id
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.session_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.session_sub_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.session_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.session_sub_id, range, value, display)

  return offset + length, value
end

-- Side Indicator
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.side_indicator = {}

-- Size: Side Indicator
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.side_indicator.size = 1

-- Display: Side Indicator
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.side_indicator.display = function(value)
  if value == "B" then
    return "Side Indicator: Buy Order (B)"
  end
  if value == "S" then
    return "Side Indicator: Sell Order (S)"
  end

  return "Side Indicator: Unknown("..value..")"
end

-- Dissect: Side Indicator
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.side_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.side_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.side_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.side_indicator, range, value, display)

  return offset + length, value
end

-- Spin Response Status
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.spin_response_status = {}

-- Size: Spin Response Status
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.spin_response_status.size = 1

-- Display: Spin Response Status
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.spin_response_status.display = function(value)
  if value == "A" then
    return "Spin Response Status: Accepted (A)"
  end
  if value == "O" then
    return "Spin Response Status: Out Of Range Sequence Requested Is Greater Than Sequence Available By The Next Spin (O)"
  end
  if value == "S" then
    return "Spin Response Status: Spin Already In Progress Only One Spin Can Be Running At A Time (S)"
  end

  return "Spin Response Status: Unknown("..value..")"
end

-- Dissect: Spin Response Status
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.spin_response_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.spin_response_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.spin_response_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.spin_response_status, range, value, display)

  return offset + length, value
end

-- Symbol
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.symbol = {}

-- Size: Symbol
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.symbol.size = 6

-- Display: Symbol
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.symbol, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.timestamp = {}

-- Size: Timestamp
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.timestamp.size = 8

-- Display: Timestamp
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trading Status
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.trading_status = {}

-- Size: Trading Status
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.trading_status.size = 1

-- Display: Trading Status
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.trading_status.display = function(value)
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
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Unit
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.unit = {}

-- Size: Unit
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.unit.size = 1

-- Display: Unit
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.unit, range, value, display)

  return offset + length, value
end

-- Username
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.username = {}

-- Size: Username
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.username.size = 4

-- Display: Username
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.username.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe CxjEquities MulticastDepthOfBook Spin 1.0.6
-----------------------------------------------------------------------

-- Add Order Message
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.add_order_message = {}

-- Size: Add Order Message
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.add_order_message.size =
  cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.timestamp.size + 
  cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.order_id.size + 
  cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.side_indicator.size + 
  cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.quantity.size + 
  cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.symbol.size + 
  cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.price.size + 
  cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.reserved_1.size

-- Display: Add Order Message
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.add_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.add_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary UTC Timestamp
  index, timestamp = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity: Binary
  index, quantity = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.quantity.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.symbol.dissect(buffer, index, packet, parent)

  -- Price: Binary Price
  index, price = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.price.dissect(buffer, index, packet, parent)

  -- Reserved 1: Binary
  index, reserved_1 = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.add_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.add_order_message, buffer(offset, 0))
    local index = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.add_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.add_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.add_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Status Flags
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.trading_status_flags = {}

-- Size: Trading Status Flags
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.trading_status_flags.size = 1

-- Display: Trading Status Flags
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.trading_status_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Short Sell Price Check flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Short Sell Price Check"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Trading Status Flags
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.trading_status_flags.bits = function(range, value, packet, parent)

  -- Short Sell Price Check: 1 Bit
  parent:add(omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.short_sell_price_check, range, value)

  -- Unused 7: 7 Bit
  parent:add(omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.unused_7, range, value)
end

-- Dissect: Trading Status Flags
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.trading_status_flags.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.trading_status_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.trading_status_flags.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.trading_status_flags, range, display)

  if show.structs then
    cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.trading_status_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Trading Status Message
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.trading_status_message = {}

-- Size: Trading Status Message
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.trading_status_message.size =
  cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.timestamp.size + 
  cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.symbol.size + 
  cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.trading_status.size + 
  cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.trading_status_flags.size

-- Display: Trading Status Message
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary UTC Timestamp
  index, timestamp = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.symbol.dissect(buffer, index, packet, parent)

  -- Trading Status: Alphanumeric
  index, trading_status = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.trading_status.dissect(buffer, index, packet, parent)

  -- Trading Status Flags: Struct of 2 fields
  index, trading_status_flags = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.trading_status_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.trading_status_message, buffer(offset, 0))
    local index = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Finished Message
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.spin_finished_message = {}

-- Size: Spin Finished Message
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.spin_finished_message.size =
  cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.sequence.size

-- Display: Spin Finished Message
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.spin_finished_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spin Finished Message
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.spin_finished_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spin Finished Message
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.spin_finished_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.spin_finished_message, buffer(offset, 0))
    local index = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.spin_finished_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.spin_finished_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.spin_finished_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Response Message
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.spin_response_message = {}

-- Size: Spin Response Message
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.spin_response_message.size =
  cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.sequence.size + 
  cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.order_count.size + 
  cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.spin_response_status.size

-- Display: Spin Response Message
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.spin_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spin Response Message
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.spin_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.sequence.dissect(buffer, index, packet, parent)

  -- Order Count: Binary
  index, order_count = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.order_count.dissect(buffer, index, packet, parent)

  -- Spin Response Status: Alphanumeric
  index, spin_response_status = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.spin_response_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spin Response Message
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.spin_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.spin_response_message, buffer(offset, 0))
    local index = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.spin_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.spin_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.spin_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Request Message
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.spin_request_message = {}

-- Size: Spin Request Message
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.spin_request_message.size =
  cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.sequence.size

-- Display: Spin Request Message
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.spin_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spin Request Message
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.spin_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spin Request Message
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.spin_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.spin_request_message, buffer(offset, 0))
    local index = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.spin_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.spin_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.spin_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Image Available Message
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.spin_image_available_message = {}

-- Size: Spin Image Available Message
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.spin_image_available_message.size =
  cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.sequence.size

-- Display: Spin Image Available Message
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.spin_image_available_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spin Image Available Message
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.spin_image_available_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spin Image Available Message
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.spin_image_available_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.spin_image_available_message, buffer(offset, 0))
    local index = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.spin_image_available_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.spin_image_available_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.spin_image_available_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Response Message
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.login_response_message = {}

-- Size: Login Response Message
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.login_response_message.size =
  cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.login_response_status.size

-- Display: Login Response Message
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.login_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response Message
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.login_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Login Response Status: Alphanumeric
  index, login_response_status = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.login_response_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response Message
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.login_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.login_response_message, buffer(offset, 0))
    local index = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.login_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.login_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.login_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Message
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.login_message = {}

-- Size: Login Message
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.login_message.size =
  cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.session_sub_id.size + 
  cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.username.size + 
  cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.filler.size + 
  cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.password.size

-- Display: Login Message
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.login_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Message
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.login_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Sub Id: Alphanumeric
  index, session_sub_id = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.session_sub_id.dissect(buffer, index, packet, parent)

  -- Username: Alphanumeric
  index, username = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.username.dissect(buffer, index, packet, parent)

  -- Filler: Alphanumeric
  index, filler = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.filler.dissect(buffer, index, packet, parent)

  -- Password: Alphanumeric
  index, password = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.password.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Message
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.login_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.login_message, buffer(offset, 0))
    local index = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.login_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.login_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.login_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.payload = {}

-- Dissect: Payload
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Login Message
  if message_type == 0x01 then
    return cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.login_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Response Message
  if message_type == 0x02 then
    return cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.login_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spin Image Available Message
  if message_type == 0x80 then
    return cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.spin_image_available_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spin Request Message
  if message_type == 0x81 then
    return cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.spin_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spin Response Message
  if message_type == 0x82 then
    return cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.spin_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spin Finished Message
  if message_type == 0x83 then
    return cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.spin_finished_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if message_type == 0x50 then
    return cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.trading_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message
  if message_type == 0x51 then
    return cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.add_order_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.message_header = {}

-- Size: Message Header
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.message_header.size =
  cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.message_length.size + 
  cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.message_type.size

-- Display: Message Header
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, message_type = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.message_header, buffer(offset, 0))
    local index = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.message = {}

-- Read runtime size of: Message
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 1):le_uint()

  return message_length
end

-- Display: Message
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 8 branches
  index = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.message, buffer(offset, 0))
    local current = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Heartbeat
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.heartbeat = {}

-- Display: Heartbeat
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.messages = {}

-- Dissect: Messages
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.messages.dissect = function(buffer, offset, packet, parent, message_count)
  -- Dissect Heartbeat
  if message_count == 0 then
    return cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.heartbeat.dissect(buffer, offset, packet, parent)
  end

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 1):le_uint()

    -- Message: Struct of 2 fields
    offset = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end
end

-- Packet Header
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.packet_header = {}

-- Size: Packet Header
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.packet_header.size =
  cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.length.size + 
  cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.message_count.size + 
  cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.unit.size + 
  cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.sequence.size

-- Display: Packet Header
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.length.dissect(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.message_count.dissect(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.unit.dissect(buffer, index, packet, parent)

  -- Sequence: Binary
  index, sequence = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.fields.packet_header, buffer(offset, 0))
    local index = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.packet = {}

-- Verify required size of Tcp packet
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.packet_header.size
end

-- Dissect Packet
cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 6, 1):le_uint()

  -- Messages: Runtime Type with 2 branches
  index = cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.init()
end

-- Dissector for Cboe CxjEquities MulticastDepthOfBook Spin 1.0.6
function omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.name

  local length = buffer:len()
  local index = 0

  -- Dissect each message the segment carries
  while index < length do
    local remaining = length - index

    -- The message length lives in the header: wait for the header before reading it
    if remaining < cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.packet_header.size then
      packet.desegment_offset = index
      packet.desegment_len = DESEGMENT_ONE_MORE_SEGMENT
      return length
    end

    local size = buffer(index, 2):le_uint()
    -- A message split across segments: ask TCP for exactly the bytes still missing
    if remaining < size then
      packet.desegment_offset = index
      packet.desegment_len = size - remaining
      return length
    end

    local protocol = parent:add(omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6, buffer(index, size), omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.description, "("..size.." Bytes)")
    cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.packet.dissect(buffer(index, size):tvb(), packet, protocol)
    protocol:set_len(size)
    index = index + size
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cboe CxjEquities MulticastDepthOfBook Spin 1.0.6 (Tcp)
local function omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6
  omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe CxjEquities MulticastDepthOfBook Spin 1.0.6
omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6:register_heuristic("tcp", omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6_tcp_heuristic)

-- Register Cboe CxjEquities MulticastDepthOfBook Spin 1.0.6 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_cboe_cxjequities_multicastdepthofbook_spin_v1_0_6)

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
