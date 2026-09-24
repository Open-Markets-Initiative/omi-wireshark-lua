-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe NeoEquities SpinServer Pitch 1.0.13 Protocol
local omi_cboe_neoequities_spinserver_pitch_v1_0_13 = Proto("Omi.Cboe.NeoEquities.SpinServer.Pitch.v1.0.13", "Cboe NeoEquities SpinServer Pitch 1.0.13")

-- Protocol table
local cboe_neoequities_spinserver_pitch_v1_0_13 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe NeoEquities SpinServer Pitch 1.0.13 Fields
omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.count = ProtoField.new("Count", "cboe.neoequities.spinserver.pitch.v1.0.13.count", ftypes.UINT8)
omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.filler = ProtoField.new("Filler", "cboe.neoequities.spinserver.pitch.v1.0.13.filler", ftypes.STRING)
omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.instrument_count = ProtoField.new("Instrument Count", "cboe.neoequities.spinserver.pitch.v1.0.13.instrumentcount", ftypes.UINT32)
omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.length = ProtoField.new("Length", "cboe.neoequities.spinserver.pitch.v1.0.13.length", ftypes.UINT16)
omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.message_length = ProtoField.new("Message Length", "cboe.neoequities.spinserver.pitch.v1.0.13.messagelength", ftypes.UINT8)
omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.message_type = ProtoField.new("Message Type", "cboe.neoequities.spinserver.pitch.v1.0.13.messagetype", ftypes.UINT8)
omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.order_count = ProtoField.new("Order Count", "cboe.neoequities.spinserver.pitch.v1.0.13.ordercount", ftypes.UINT32)
omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.password = ProtoField.new("Password", "cboe.neoequities.spinserver.pitch.v1.0.13.password", ftypes.STRING)
omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.sequence = ProtoField.new("Sequence", "cboe.neoequities.spinserver.pitch.v1.0.13.sequence", ftypes.UINT32)
omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.session_sub_id = ProtoField.new("Session Sub Id", "cboe.neoequities.spinserver.pitch.v1.0.13.sessionsubid", ftypes.STRING)
omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.status = ProtoField.new("Status", "cboe.neoequities.spinserver.pitch.v1.0.13.status", ftypes.STRING)
omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.trade_count = ProtoField.new("Trade Count", "cboe.neoequities.spinserver.pitch.v1.0.13.tradecount", ftypes.UINT64)
omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.unit = ProtoField.new("Unit", "cboe.neoequities.spinserver.pitch.v1.0.13.unit", ftypes.UINT8)
omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.username = ProtoField.new("Username", "cboe.neoequities.spinserver.pitch.v1.0.13.username", ftypes.STRING)

-- Cboe NeoEquities SpinServer Pitch 1.0.13 Framing
omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.message = ProtoField.new("Message", "cboe.neoequities.spinserver.pitch.v1.0.13.message", ftypes.STRING)
omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.message_header = ProtoField.new("Message Header", "cboe.neoequities.spinserver.pitch.v1.0.13.messageheader", ftypes.STRING)
omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.packet = ProtoField.new("Packet", "cboe.neoequities.spinserver.pitch.v1.0.13.packet", ftypes.STRING)
omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.packet_header = ProtoField.new("Packet Header", "cboe.neoequities.spinserver.pitch.v1.0.13.packetheader", ftypes.STRING)

-- Cboe NeoEquities SpinServer 1.0.13 Application Messages
omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.instrument_definition_finished_message = ProtoField.new("Instrument Definition Finished Message", "cboe.neoequities.spinserver.pitch.v1.0.13.instrumentdefinitionfinishedmessage", ftypes.BYTES)
omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.instrument_definition_request_message = ProtoField.new("Instrument Definition Request Message", "cboe.neoequities.spinserver.pitch.v1.0.13.instrumentdefinitionrequestmessage", ftypes.STRING)
omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.instrument_definition_response_message = ProtoField.new("Instrument Definition Response Message", "cboe.neoequities.spinserver.pitch.v1.0.13.instrumentdefinitionresponsemessage", ftypes.STRING)
omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.login_message = ProtoField.new("Login Message", "cboe.neoequities.spinserver.pitch.v1.0.13.loginmessage", ftypes.STRING)
omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.login_response_message = ProtoField.new("Login Response Message", "cboe.neoequities.spinserver.pitch.v1.0.13.loginresponsemessage", ftypes.STRING)
omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.spin_finished_message = ProtoField.new("Spin Finished Message", "cboe.neoequities.spinserver.pitch.v1.0.13.spinfinishedmessage", ftypes.STRING)
omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.spin_image_available_message = ProtoField.new("Spin Image Available Message", "cboe.neoequities.spinserver.pitch.v1.0.13.spinimageavailablemessage", ftypes.STRING)
omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.spin_request_message = ProtoField.new("Spin Request Message", "cboe.neoequities.spinserver.pitch.v1.0.13.spinrequestmessage", ftypes.STRING)
omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.spin_response_message = ProtoField.new("Spin Response Message", "cboe.neoequities.spinserver.pitch.v1.0.13.spinresponsemessage", ftypes.STRING)
omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.trade_replay_finished_message = ProtoField.new("Trade Replay Finished Message", "cboe.neoequities.spinserver.pitch.v1.0.13.tradereplayfinishedmessage", ftypes.BYTES)
omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.trade_replay_request_message = ProtoField.new("Trade Replay Request Message", "cboe.neoequities.spinserver.pitch.v1.0.13.tradereplayrequestmessage", ftypes.STRING)
omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.trade_replay_response_message = ProtoField.new("Trade Replay Response Message", "cboe.neoequities.spinserver.pitch.v1.0.13.tradereplayresponsemessage", ftypes.STRING)

-- Cboe NeoEquities SpinServer Pitch 1.0.13 Generated Fields
omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.message_index = ProtoField.new("Message Index", "cboe.neoequities.spinserver.pitch.v1.0.13.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe NeoEquities SpinServer Pitch 1.0.13 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true

-- Register Cboe NeoEquities SpinServer Pitch 1.0.13 Show Options
omi_cboe_neoequities_spinserver_pitch_v1_0_13.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_neoequities_spinserver_pitch_v1_0_13.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_cboe_neoequities_spinserver_pitch_v1_0_13.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_cboe_neoequities_spinserver_pitch_v1_0_13.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

-- Handle changed preferences
function omi_cboe_neoequities_spinserver_pitch_v1_0_13.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cboe_neoequities_spinserver_pitch_v1_0_13.prefs.show_application_messages then
    show.application_messages = omi_cboe_neoequities_spinserver_pitch_v1_0_13.prefs.show_application_messages
  end
  if show.headers ~= omi_cboe_neoequities_spinserver_pitch_v1_0_13.prefs.show_headers then
    show.headers = omi_cboe_neoequities_spinserver_pitch_v1_0_13.prefs.show_headers
  end
  if show.structs ~= omi_cboe_neoequities_spinserver_pitch_v1_0_13.prefs.show_structs then
    show.structs = omi_cboe_neoequities_spinserver_pitch_v1_0_13.prefs.show_structs
  end
  if show.indexes ~= omi_cboe_neoequities_spinserver_pitch_v1_0_13.prefs.show_indexes then
    show.indexes = omi_cboe_neoequities_spinserver_pitch_v1_0_13.prefs.show_indexes
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
-- Cboe NeoEquities SpinServer Pitch 1.0.13 Fields
-----------------------------------------------------------------------

-- Count
cboe_neoequities_spinserver_pitch_v1_0_13.count = {}

-- Size: Count
cboe_neoequities_spinserver_pitch_v1_0_13.count.size = 1

-- Display: Count
cboe_neoequities_spinserver_pitch_v1_0_13.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
cboe_neoequities_spinserver_pitch_v1_0_13.count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_spinserver_pitch_v1_0_13.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_spinserver_pitch_v1_0_13.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.count, range, value, display)

  return offset + length, value
end

-- Filler
cboe_neoequities_spinserver_pitch_v1_0_13.filler = {}

-- Size: Filler
cboe_neoequities_spinserver_pitch_v1_0_13.filler.size = 2

-- Display: Filler
cboe_neoequities_spinserver_pitch_v1_0_13.filler.display = function(value)
  return "Filler: "..value
end

-- Dissect: Filler
cboe_neoequities_spinserver_pitch_v1_0_13.filler.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_spinserver_pitch_v1_0_13.filler.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_neoequities_spinserver_pitch_v1_0_13.filler.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.filler, range, value, display)

  return offset + length, value
end

-- Instrument Count
cboe_neoequities_spinserver_pitch_v1_0_13.instrument_count = {}

-- Size: Instrument Count
cboe_neoequities_spinserver_pitch_v1_0_13.instrument_count.size = 4

-- Display: Instrument Count
cboe_neoequities_spinserver_pitch_v1_0_13.instrument_count.display = function(value)
  return "Instrument Count: "..value
end

-- Dissect: Instrument Count
cboe_neoequities_spinserver_pitch_v1_0_13.instrument_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_spinserver_pitch_v1_0_13.instrument_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_spinserver_pitch_v1_0_13.instrument_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.instrument_count, range, value, display)

  return offset + length, value
end

-- Length
cboe_neoequities_spinserver_pitch_v1_0_13.length = {}

-- Size: Length
cboe_neoequities_spinserver_pitch_v1_0_13.length.size = 2

-- Display: Length
cboe_neoequities_spinserver_pitch_v1_0_13.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_neoequities_spinserver_pitch_v1_0_13.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_spinserver_pitch_v1_0_13.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_spinserver_pitch_v1_0_13.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.length, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_neoequities_spinserver_pitch_v1_0_13.message_length = {}

-- Size: Message Length
cboe_neoequities_spinserver_pitch_v1_0_13.message_length.size = 1

-- Display: Message Length
cboe_neoequities_spinserver_pitch_v1_0_13.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_neoequities_spinserver_pitch_v1_0_13.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_spinserver_pitch_v1_0_13.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_spinserver_pitch_v1_0_13.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_neoequities_spinserver_pitch_v1_0_13.message_type = {}

-- Size: Message Type
cboe_neoequities_spinserver_pitch_v1_0_13.message_type.size = 1

-- Display: Message Type
cboe_neoequities_spinserver_pitch_v1_0_13.message_type.display = function(value)
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
  if value == 0x84 then
    return "Message Type: Instrument Definition Request Message (0x84)"
  end
  if value == 0x85 then
    return "Message Type: Instrument Definition Response Message (0x85)"
  end
  if value == 0x86 then
    return "Message Type: Instrument Definition Finished Message (0x86)"
  end
  if value == 0x87 then
    return "Message Type: Trade Replay Request Message (0x87)"
  end
  if value == 0x88 then
    return "Message Type: Trade Replay Response Message (0x88)"
  end
  if value == 0x89 then
    return "Message Type: Trade Replay Finished Message (0x89)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
cboe_neoequities_spinserver_pitch_v1_0_13.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_spinserver_pitch_v1_0_13.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_spinserver_pitch_v1_0_13.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.message_type, range, value, display)

  return offset + length, value
end

-- Order Count
cboe_neoequities_spinserver_pitch_v1_0_13.order_count = {}

-- Size: Order Count
cboe_neoequities_spinserver_pitch_v1_0_13.order_count.size = 4

-- Display: Order Count
cboe_neoequities_spinserver_pitch_v1_0_13.order_count.display = function(value)
  return "Order Count: "..value
end

-- Dissect: Order Count
cboe_neoequities_spinserver_pitch_v1_0_13.order_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_spinserver_pitch_v1_0_13.order_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_spinserver_pitch_v1_0_13.order_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.order_count, range, value, display)

  return offset + length, value
end

-- Password
cboe_neoequities_spinserver_pitch_v1_0_13.password = {}

-- Size: Password
cboe_neoequities_spinserver_pitch_v1_0_13.password.size = 10

-- Display: Password
cboe_neoequities_spinserver_pitch_v1_0_13.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
cboe_neoequities_spinserver_pitch_v1_0_13.password.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_spinserver_pitch_v1_0_13.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_neoequities_spinserver_pitch_v1_0_13.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.password, range, value, display)

  return offset + length, value
end

-- Sequence
cboe_neoequities_spinserver_pitch_v1_0_13.sequence = {}

-- Size: Sequence
cboe_neoequities_spinserver_pitch_v1_0_13.sequence.size = 4

-- Display: Sequence
cboe_neoequities_spinserver_pitch_v1_0_13.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_neoequities_spinserver_pitch_v1_0_13.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_spinserver_pitch_v1_0_13.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_spinserver_pitch_v1_0_13.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.sequence, range, value, display)

  return offset + length, value
end

-- Session Sub Id
cboe_neoequities_spinserver_pitch_v1_0_13.session_sub_id = {}

-- Size: Session Sub Id
cboe_neoequities_spinserver_pitch_v1_0_13.session_sub_id.size = 4

-- Display: Session Sub Id
cboe_neoequities_spinserver_pitch_v1_0_13.session_sub_id.display = function(value)
  return "Session Sub Id: "..value
end

-- Dissect: Session Sub Id
cboe_neoequities_spinserver_pitch_v1_0_13.session_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_spinserver_pitch_v1_0_13.session_sub_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_neoequities_spinserver_pitch_v1_0_13.session_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.session_sub_id, range, value, display)

  return offset + length, value
end

-- Status
cboe_neoequities_spinserver_pitch_v1_0_13.status = {}

-- Size: Status
cboe_neoequities_spinserver_pitch_v1_0_13.status.size = 1

-- Display: Status
cboe_neoequities_spinserver_pitch_v1_0_13.status.display = function(value)
  if value == "A" then
    return "Status: Accepted Login Accepted (A)"
  end
  if value == "N" then
    return "Status: Not Authorized Invalid Username Password (N)"
  end
  if value == "B" then
    return "Status: Session In Use (B)"
  end
  if value == "O" then
    return "Status: Out Of Range (O)"
  end
  if value == "S" then
    return "Status: Invalid Session Spin Already In Progress (S)"
  end

  return "Status: Unknown("..value..")"
end

-- Dissect: Status
cboe_neoequities_spinserver_pitch_v1_0_13.status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_spinserver_pitch_v1_0_13.status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_neoequities_spinserver_pitch_v1_0_13.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.status, range, value, display)

  return offset + length, value
end

-- Trade Count
cboe_neoequities_spinserver_pitch_v1_0_13.trade_count = {}

-- Size: Trade Count
cboe_neoequities_spinserver_pitch_v1_0_13.trade_count.size = 8

-- Display: Trade Count
cboe_neoequities_spinserver_pitch_v1_0_13.trade_count.display = function(value)
  return "Trade Count: "..value
end

-- Dissect: Trade Count
cboe_neoequities_spinserver_pitch_v1_0_13.trade_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_spinserver_pitch_v1_0_13.trade_count.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_neoequities_spinserver_pitch_v1_0_13.trade_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.trade_count, range, value, display)

  return offset + length, value
end

-- Unit
cboe_neoequities_spinserver_pitch_v1_0_13.unit = {}

-- Size: Unit
cboe_neoequities_spinserver_pitch_v1_0_13.unit.size = 1

-- Display: Unit
cboe_neoequities_spinserver_pitch_v1_0_13.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_neoequities_spinserver_pitch_v1_0_13.unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_spinserver_pitch_v1_0_13.unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_neoequities_spinserver_pitch_v1_0_13.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.unit, range, value, display)

  return offset + length, value
end

-- Username
cboe_neoequities_spinserver_pitch_v1_0_13.username = {}

-- Size: Username
cboe_neoequities_spinserver_pitch_v1_0_13.username.size = 4

-- Display: Username
cboe_neoequities_spinserver_pitch_v1_0_13.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
cboe_neoequities_spinserver_pitch_v1_0_13.username.dissect = function(buffer, offset, packet, parent)
  local length = cboe_neoequities_spinserver_pitch_v1_0_13.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_neoequities_spinserver_pitch_v1_0_13.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe NeoEquities SpinServer Pitch 1.0.13
-----------------------------------------------------------------------

-- Trade Replay Finished Message
cboe_neoequities_spinserver_pitch_v1_0_13.trade_replay_finished_message = {}

-- Display: Trade Replay Finished Message
cboe_neoequities_spinserver_pitch_v1_0_13.trade_replay_finished_message.display = function(packet, parent, length)
  return "Trade Replay Finished Message"
end


-- Dissect: Trade Replay Finished Message
cboe_neoequities_spinserver_pitch_v1_0_13.trade_replay_finished_message.dissect = function(buffer, offset, packet, parent)
  local display = cboe_neoequities_spinserver_pitch_v1_0_13.trade_replay_finished_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Trade Replay Response Message
cboe_neoequities_spinserver_pitch_v1_0_13.trade_replay_response_message = {}

-- Size: Trade Replay Response Message
cboe_neoequities_spinserver_pitch_v1_0_13.trade_replay_response_message.size =
  cboe_neoequities_spinserver_pitch_v1_0_13.sequence.size + 
  cboe_neoequities_spinserver_pitch_v1_0_13.trade_count.size + 
  cboe_neoequities_spinserver_pitch_v1_0_13.status.size

-- Display: Trade Replay Response Message
cboe_neoequities_spinserver_pitch_v1_0_13.trade_replay_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Replay Response Message
cboe_neoequities_spinserver_pitch_v1_0_13.trade_replay_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_neoequities_spinserver_pitch_v1_0_13.sequence.dissect(buffer, index, packet, parent)

  -- Trade Count: Binary
  index, trade_count = cboe_neoequities_spinserver_pitch_v1_0_13.trade_count.dissect(buffer, index, packet, parent)

  -- Status: Alphanumeric
  index, status = cboe_neoequities_spinserver_pitch_v1_0_13.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Replay Response Message
cboe_neoequities_spinserver_pitch_v1_0_13.trade_replay_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.trade_replay_response_message, buffer(offset, 0))
    local index = cboe_neoequities_spinserver_pitch_v1_0_13.trade_replay_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_neoequities_spinserver_pitch_v1_0_13.trade_replay_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_neoequities_spinserver_pitch_v1_0_13.trade_replay_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Replay Request Message
cboe_neoequities_spinserver_pitch_v1_0_13.trade_replay_request_message = {}

-- Size: Trade Replay Request Message
cboe_neoequities_spinserver_pitch_v1_0_13.trade_replay_request_message.size =
  cboe_neoequities_spinserver_pitch_v1_0_13.sequence.size

-- Display: Trade Replay Request Message
cboe_neoequities_spinserver_pitch_v1_0_13.trade_replay_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Replay Request Message
cboe_neoequities_spinserver_pitch_v1_0_13.trade_replay_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_neoequities_spinserver_pitch_v1_0_13.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Replay Request Message
cboe_neoequities_spinserver_pitch_v1_0_13.trade_replay_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.trade_replay_request_message, buffer(offset, 0))
    local index = cboe_neoequities_spinserver_pitch_v1_0_13.trade_replay_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_neoequities_spinserver_pitch_v1_0_13.trade_replay_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_neoequities_spinserver_pitch_v1_0_13.trade_replay_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Definition Finished Message
cboe_neoequities_spinserver_pitch_v1_0_13.instrument_definition_finished_message = {}

-- Display: Instrument Definition Finished Message
cboe_neoequities_spinserver_pitch_v1_0_13.instrument_definition_finished_message.display = function(packet, parent, length)
  return "Instrument Definition Finished Message"
end


-- Dissect: Instrument Definition Finished Message
cboe_neoequities_spinserver_pitch_v1_0_13.instrument_definition_finished_message.dissect = function(buffer, offset, packet, parent)
  local display = cboe_neoequities_spinserver_pitch_v1_0_13.instrument_definition_finished_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Instrument Definition Response Message
cboe_neoequities_spinserver_pitch_v1_0_13.instrument_definition_response_message = {}

-- Size: Instrument Definition Response Message
cboe_neoequities_spinserver_pitch_v1_0_13.instrument_definition_response_message.size =
  cboe_neoequities_spinserver_pitch_v1_0_13.sequence.size + 
  cboe_neoequities_spinserver_pitch_v1_0_13.instrument_count.size + 
  cboe_neoequities_spinserver_pitch_v1_0_13.status.size

-- Display: Instrument Definition Response Message
cboe_neoequities_spinserver_pitch_v1_0_13.instrument_definition_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Definition Response Message
cboe_neoequities_spinserver_pitch_v1_0_13.instrument_definition_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_neoequities_spinserver_pitch_v1_0_13.sequence.dissect(buffer, index, packet, parent)

  -- Instrument Count: Binary
  index, instrument_count = cboe_neoequities_spinserver_pitch_v1_0_13.instrument_count.dissect(buffer, index, packet, parent)

  -- Status: Alphanumeric
  index, status = cboe_neoequities_spinserver_pitch_v1_0_13.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Definition Response Message
cboe_neoequities_spinserver_pitch_v1_0_13.instrument_definition_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.instrument_definition_response_message, buffer(offset, 0))
    local index = cboe_neoequities_spinserver_pitch_v1_0_13.instrument_definition_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_neoequities_spinserver_pitch_v1_0_13.instrument_definition_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_neoequities_spinserver_pitch_v1_0_13.instrument_definition_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Definition Request Message
cboe_neoequities_spinserver_pitch_v1_0_13.instrument_definition_request_message = {}

-- Size: Instrument Definition Request Message
cboe_neoequities_spinserver_pitch_v1_0_13.instrument_definition_request_message.size =
  cboe_neoequities_spinserver_pitch_v1_0_13.sequence.size

-- Display: Instrument Definition Request Message
cboe_neoequities_spinserver_pitch_v1_0_13.instrument_definition_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Definition Request Message
cboe_neoequities_spinserver_pitch_v1_0_13.instrument_definition_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_neoequities_spinserver_pitch_v1_0_13.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Definition Request Message
cboe_neoequities_spinserver_pitch_v1_0_13.instrument_definition_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.instrument_definition_request_message, buffer(offset, 0))
    local index = cboe_neoequities_spinserver_pitch_v1_0_13.instrument_definition_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_neoequities_spinserver_pitch_v1_0_13.instrument_definition_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_neoequities_spinserver_pitch_v1_0_13.instrument_definition_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Finished Message
cboe_neoequities_spinserver_pitch_v1_0_13.spin_finished_message = {}

-- Size: Spin Finished Message
cboe_neoequities_spinserver_pitch_v1_0_13.spin_finished_message.size =
  cboe_neoequities_spinserver_pitch_v1_0_13.sequence.size

-- Display: Spin Finished Message
cboe_neoequities_spinserver_pitch_v1_0_13.spin_finished_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spin Finished Message
cboe_neoequities_spinserver_pitch_v1_0_13.spin_finished_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_neoequities_spinserver_pitch_v1_0_13.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spin Finished Message
cboe_neoequities_spinserver_pitch_v1_0_13.spin_finished_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.spin_finished_message, buffer(offset, 0))
    local index = cboe_neoequities_spinserver_pitch_v1_0_13.spin_finished_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_neoequities_spinserver_pitch_v1_0_13.spin_finished_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_neoequities_spinserver_pitch_v1_0_13.spin_finished_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Response Message
cboe_neoequities_spinserver_pitch_v1_0_13.spin_response_message = {}

-- Size: Spin Response Message
cboe_neoequities_spinserver_pitch_v1_0_13.spin_response_message.size =
  cboe_neoequities_spinserver_pitch_v1_0_13.sequence.size + 
  cboe_neoequities_spinserver_pitch_v1_0_13.order_count.size + 
  cboe_neoequities_spinserver_pitch_v1_0_13.status.size

-- Display: Spin Response Message
cboe_neoequities_spinserver_pitch_v1_0_13.spin_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spin Response Message
cboe_neoequities_spinserver_pitch_v1_0_13.spin_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_neoequities_spinserver_pitch_v1_0_13.sequence.dissect(buffer, index, packet, parent)

  -- Order Count: Binary
  index, order_count = cboe_neoequities_spinserver_pitch_v1_0_13.order_count.dissect(buffer, index, packet, parent)

  -- Status: Alphanumeric
  index, status = cboe_neoequities_spinserver_pitch_v1_0_13.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spin Response Message
cboe_neoequities_spinserver_pitch_v1_0_13.spin_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.spin_response_message, buffer(offset, 0))
    local index = cboe_neoequities_spinserver_pitch_v1_0_13.spin_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_neoequities_spinserver_pitch_v1_0_13.spin_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_neoequities_spinserver_pitch_v1_0_13.spin_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Request Message
cboe_neoequities_spinserver_pitch_v1_0_13.spin_request_message = {}

-- Size: Spin Request Message
cboe_neoequities_spinserver_pitch_v1_0_13.spin_request_message.size =
  cboe_neoequities_spinserver_pitch_v1_0_13.sequence.size

-- Display: Spin Request Message
cboe_neoequities_spinserver_pitch_v1_0_13.spin_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spin Request Message
cboe_neoequities_spinserver_pitch_v1_0_13.spin_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_neoequities_spinserver_pitch_v1_0_13.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spin Request Message
cboe_neoequities_spinserver_pitch_v1_0_13.spin_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.spin_request_message, buffer(offset, 0))
    local index = cboe_neoequities_spinserver_pitch_v1_0_13.spin_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_neoequities_spinserver_pitch_v1_0_13.spin_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_neoequities_spinserver_pitch_v1_0_13.spin_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Image Available Message
cboe_neoequities_spinserver_pitch_v1_0_13.spin_image_available_message = {}

-- Size: Spin Image Available Message
cboe_neoequities_spinserver_pitch_v1_0_13.spin_image_available_message.size =
  cboe_neoequities_spinserver_pitch_v1_0_13.sequence.size

-- Display: Spin Image Available Message
cboe_neoequities_spinserver_pitch_v1_0_13.spin_image_available_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spin Image Available Message
cboe_neoequities_spinserver_pitch_v1_0_13.spin_image_available_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_neoequities_spinserver_pitch_v1_0_13.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spin Image Available Message
cboe_neoequities_spinserver_pitch_v1_0_13.spin_image_available_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.spin_image_available_message, buffer(offset, 0))
    local index = cboe_neoequities_spinserver_pitch_v1_0_13.spin_image_available_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_neoequities_spinserver_pitch_v1_0_13.spin_image_available_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_neoequities_spinserver_pitch_v1_0_13.spin_image_available_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Response Message
cboe_neoequities_spinserver_pitch_v1_0_13.login_response_message = {}

-- Size: Login Response Message
cboe_neoequities_spinserver_pitch_v1_0_13.login_response_message.size =
  cboe_neoequities_spinserver_pitch_v1_0_13.status.size

-- Display: Login Response Message
cboe_neoequities_spinserver_pitch_v1_0_13.login_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response Message
cboe_neoequities_spinserver_pitch_v1_0_13.login_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Status: Alphanumeric
  index, status = cboe_neoequities_spinserver_pitch_v1_0_13.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response Message
cboe_neoequities_spinserver_pitch_v1_0_13.login_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.login_response_message, buffer(offset, 0))
    local index = cboe_neoequities_spinserver_pitch_v1_0_13.login_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_neoequities_spinserver_pitch_v1_0_13.login_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_neoequities_spinserver_pitch_v1_0_13.login_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Message
cboe_neoequities_spinserver_pitch_v1_0_13.login_message = {}

-- Size: Login Message
cboe_neoequities_spinserver_pitch_v1_0_13.login_message.size =
  cboe_neoequities_spinserver_pitch_v1_0_13.session_sub_id.size + 
  cboe_neoequities_spinserver_pitch_v1_0_13.username.size + 
  cboe_neoequities_spinserver_pitch_v1_0_13.filler.size + 
  cboe_neoequities_spinserver_pitch_v1_0_13.password.size

-- Display: Login Message
cboe_neoequities_spinserver_pitch_v1_0_13.login_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Message
cboe_neoequities_spinserver_pitch_v1_0_13.login_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Sub Id: Alphanumeric
  index, session_sub_id = cboe_neoequities_spinserver_pitch_v1_0_13.session_sub_id.dissect(buffer, index, packet, parent)

  -- Username: Alphanumeric
  index, username = cboe_neoequities_spinserver_pitch_v1_0_13.username.dissect(buffer, index, packet, parent)

  -- Filler: Alphanumeric
  index, filler = cboe_neoequities_spinserver_pitch_v1_0_13.filler.dissect(buffer, index, packet, parent)

  -- Password: Alphanumeric
  index, password = cboe_neoequities_spinserver_pitch_v1_0_13.password.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Message
cboe_neoequities_spinserver_pitch_v1_0_13.login_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.login_message, buffer(offset, 0))
    local index = cboe_neoequities_spinserver_pitch_v1_0_13.login_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_neoequities_spinserver_pitch_v1_0_13.login_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_neoequities_spinserver_pitch_v1_0_13.login_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_neoequities_spinserver_pitch_v1_0_13.payload = {}

-- Dissect: Payload
cboe_neoequities_spinserver_pitch_v1_0_13.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Login Message
  if message_type == 0x01 then
    return cboe_neoequities_spinserver_pitch_v1_0_13.login_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Response Message
  if message_type == 0x02 then
    return cboe_neoequities_spinserver_pitch_v1_0_13.login_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spin Image Available Message
  if message_type == 0x80 then
    return cboe_neoequities_spinserver_pitch_v1_0_13.spin_image_available_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spin Request Message
  if message_type == 0x81 then
    return cboe_neoequities_spinserver_pitch_v1_0_13.spin_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spin Response Message
  if message_type == 0x82 then
    return cboe_neoequities_spinserver_pitch_v1_0_13.spin_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spin Finished Message
  if message_type == 0x83 then
    return cboe_neoequities_spinserver_pitch_v1_0_13.spin_finished_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Definition Request Message
  if message_type == 0x84 then
    return cboe_neoequities_spinserver_pitch_v1_0_13.instrument_definition_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Definition Response Message
  if message_type == 0x85 then
    return cboe_neoequities_spinserver_pitch_v1_0_13.instrument_definition_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Definition Finished Message
  if message_type == 0x86 then
    return cboe_neoequities_spinserver_pitch_v1_0_13.instrument_definition_finished_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Replay Request Message
  if message_type == 0x87 then
    return cboe_neoequities_spinserver_pitch_v1_0_13.trade_replay_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Replay Response Message
  if message_type == 0x88 then
    return cboe_neoequities_spinserver_pitch_v1_0_13.trade_replay_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Replay Finished Message
  if message_type == 0x89 then
    return cboe_neoequities_spinserver_pitch_v1_0_13.trade_replay_finished_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cboe_neoequities_spinserver_pitch_v1_0_13.message_header = {}

-- Size: Message Header
cboe_neoequities_spinserver_pitch_v1_0_13.message_header.size =
  cboe_neoequities_spinserver_pitch_v1_0_13.message_length.size + 
  cboe_neoequities_spinserver_pitch_v1_0_13.message_type.size

-- Display: Message Header
cboe_neoequities_spinserver_pitch_v1_0_13.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_neoequities_spinserver_pitch_v1_0_13.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_neoequities_spinserver_pitch_v1_0_13.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 12 values
  index, message_type = cboe_neoequities_spinserver_pitch_v1_0_13.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_neoequities_spinserver_pitch_v1_0_13.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.message_header, buffer(offset, 0))
    local index = cboe_neoequities_spinserver_pitch_v1_0_13.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_neoequities_spinserver_pitch_v1_0_13.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_neoequities_spinserver_pitch_v1_0_13.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_neoequities_spinserver_pitch_v1_0_13.message = {}

-- Read runtime size of: Message
cboe_neoequities_spinserver_pitch_v1_0_13.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 1):le_uint()

  return message_length
end

-- Display: Message
cboe_neoequities_spinserver_pitch_v1_0_13.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_neoequities_spinserver_pitch_v1_0_13.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_neoequities_spinserver_pitch_v1_0_13.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 12 branches
  index = cboe_neoequities_spinserver_pitch_v1_0_13.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_neoequities_spinserver_pitch_v1_0_13.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = cboe_neoequities_spinserver_pitch_v1_0_13.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.message, buffer(offset, 0))
    local current = cboe_neoequities_spinserver_pitch_v1_0_13.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_neoequities_spinserver_pitch_v1_0_13.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_neoequities_spinserver_pitch_v1_0_13.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Heartbeat
cboe_neoequities_spinserver_pitch_v1_0_13.heartbeat = {}

-- Display: Heartbeat
cboe_neoequities_spinserver_pitch_v1_0_13.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
cboe_neoequities_spinserver_pitch_v1_0_13.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = cboe_neoequities_spinserver_pitch_v1_0_13.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
cboe_neoequities_spinserver_pitch_v1_0_13.messages = {}

-- Dissect: Messages
cboe_neoequities_spinserver_pitch_v1_0_13.messages.dissect = function(buffer, offset, packet, parent, count)
  -- Dissect Heartbeat
  if count == 0 then
    return cboe_neoequities_spinserver_pitch_v1_0_13.heartbeat.dissect(buffer, offset, packet, parent)
  end

  -- Repeating: Message
  for message_index = 1, count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 1):le_uint()

    -- Message: Struct of 2 fields
    offset = cboe_neoequities_spinserver_pitch_v1_0_13.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end
end

-- Packet Header
cboe_neoequities_spinserver_pitch_v1_0_13.packet_header = {}

-- Size: Packet Header
cboe_neoequities_spinserver_pitch_v1_0_13.packet_header.size =
  cboe_neoequities_spinserver_pitch_v1_0_13.length.size + 
  cboe_neoequities_spinserver_pitch_v1_0_13.count.size + 
  cboe_neoequities_spinserver_pitch_v1_0_13.unit.size + 
  cboe_neoequities_spinserver_pitch_v1_0_13.sequence.size

-- Display: Packet Header
cboe_neoequities_spinserver_pitch_v1_0_13.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_neoequities_spinserver_pitch_v1_0_13.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_neoequities_spinserver_pitch_v1_0_13.length.dissect(buffer, index, packet, parent)

  -- Count: 1 Byte Unsigned Fixed Width Integer
  index, count = cboe_neoequities_spinserver_pitch_v1_0_13.count.dissect(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_neoequities_spinserver_pitch_v1_0_13.unit.dissect(buffer, index, packet, parent)

  -- Sequence: Binary
  index, sequence = cboe_neoequities_spinserver_pitch_v1_0_13.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_neoequities_spinserver_pitch_v1_0_13.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_neoequities_spinserver_pitch_v1_0_13.fields.packet_header, buffer(offset, 0))
    local index = cboe_neoequities_spinserver_pitch_v1_0_13.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_neoequities_spinserver_pitch_v1_0_13.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_neoequities_spinserver_pitch_v1_0_13.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_neoequities_spinserver_pitch_v1_0_13.packet = {}

-- Verify required size of Tcp packet
cboe_neoequities_spinserver_pitch_v1_0_13.packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_neoequities_spinserver_pitch_v1_0_13.packet_header.size
end

-- Dissect Packet
cboe_neoequities_spinserver_pitch_v1_0_13.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_neoequities_spinserver_pitch_v1_0_13.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Count
  local count = buffer(index - 6, 1):le_uint()

  -- Messages: Runtime Type with 2 branches
  index = cboe_neoequities_spinserver_pitch_v1_0_13.messages.dissect(buffer, index, packet, parent, count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_neoequities_spinserver_pitch_v1_0_13.init()
end

-- Dissector for Cboe NeoEquities SpinServer Pitch 1.0.13
function omi_cboe_neoequities_spinserver_pitch_v1_0_13.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_cboe_neoequities_spinserver_pitch_v1_0_13.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_neoequities_spinserver_pitch_v1_0_13, buffer(), omi_cboe_neoequities_spinserver_pitch_v1_0_13.description, "("..buffer:len().." Bytes)")
  return cboe_neoequities_spinserver_pitch_v1_0_13.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cboe NeoEquities SpinServer Pitch 1.0.13 (Tcp)
local function omi_cboe_neoequities_spinserver_pitch_v1_0_13_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_neoequities_spinserver_pitch_v1_0_13.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_neoequities_spinserver_pitch_v1_0_13
  omi_cboe_neoequities_spinserver_pitch_v1_0_13.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe NeoEquities SpinServer Pitch 1.0.13
omi_cboe_neoequities_spinserver_pitch_v1_0_13:register_heuristic("tcp", omi_cboe_neoequities_spinserver_pitch_v1_0_13_tcp_heuristic)

-- Register Cboe NeoEquities SpinServer Pitch 1.0.13 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_cboe_neoequities_spinserver_pitch_v1_0_13)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.0.13
--   Date: Monday, October 27, 2025
--   Specification: Cboe Canada Equities Multicast PITCH Specification (2025-12-06).pdf
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
