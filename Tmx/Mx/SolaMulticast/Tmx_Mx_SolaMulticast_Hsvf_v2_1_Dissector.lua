-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Tmx Mx SolaMulticast Hsvf 2.1 Protocol
local omi_tmx_mx_solamulticast_hsvf_v2_1 = Proto("Omi.Tmx.Mx.SolaMulticast.Hsvf.v2.1", "Tmx Mx SolaMulticast Hsvf 2.1")

-- Protocol table
local tmx_mx_solamulticast_hsvf_v2_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Tmx Mx SolaMulticast Hsvf 2.1 Fields
omi_tmx_mx_solamulticast_hsvf_v2_1.fields.end_ = ProtoField.new("End", "tmx.mx.solamulticast.hsvf.v2.1.end", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v2_1.fields.error_code = ProtoField.new("Error Code", "tmx.mx.solamulticast.hsvf.v2.1.errorcode", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v2_1.fields.error_msg = ProtoField.new("Error Msg", "tmx.mx.solamulticast.hsvf.v2.1.errormsg", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v2_1.fields.hsvf_etx = ProtoField.new("Hsvf Etx", "tmx.mx.solamulticast.hsvf.v2.1.hsvfetx", ftypes.INT8)
omi_tmx_mx_solamulticast_hsvf_v2_1.fields.hsvf_stx = ProtoField.new("Hsvf Stx", "tmx.mx.solamulticast.hsvf.v2.1.hsvfstx", ftypes.INT8)
omi_tmx_mx_solamulticast_hsvf_v2_1.fields.line = ProtoField.new("Line", "tmx.mx.solamulticast.hsvf.v2.1.line", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v2_1.fields.message_type = ProtoField.new("Message Type", "tmx.mx.solamulticast.hsvf.v2.1.messagetype", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v2_1.fields.protocol = ProtoField.new("Protocol", "tmx.mx.solamulticast.hsvf.v2.1.protocol", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v2_1.fields.pwd = ProtoField.new("Pwd", "tmx.mx.solamulticast.hsvf.v2.1.pwd", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v2_1.fields.sequence_number = ProtoField.new("Sequence Number", "tmx.mx.solamulticast.hsvf.v2.1.sequencenumber", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v2_1.fields.start = ProtoField.new("Start", "tmx.mx.solamulticast.hsvf.v2.1.start", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v2_1.fields.timestamp = ProtoField.new("Timestamp", "tmx.mx.solamulticast.hsvf.v2.1.timestamp", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v2_1.fields.user = ProtoField.new("User", "tmx.mx.solamulticast.hsvf.v2.1.user", ftypes.STRING)

-- Tmx Mx SolaMulticast Hsvf 2.1 Framing
omi_tmx_mx_solamulticast_hsvf_v2_1.fields.messageheader = ProtoField.new("Messageheader", "tmx.mx.solamulticast.hsvf.v2.1.messageheader", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v2_1.fields.packet = ProtoField.new("Packet", "tmx.mx.solamulticast.hsvf.v2.1.packet", ftypes.STRING)

-- Tmx Mx SolaMulticast 2.1 Application Messages
omi_tmx_mx_solamulticast_hsvf_v2_1.fields.error_message = ProtoField.new("Error Message", "tmx.mx.solamulticast.hsvf.v2.1.errormessage", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v2_1.fields.login_message = ProtoField.new("Login Message", "tmx.mx.solamulticast.hsvf.v2.1.loginmessage", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v2_1.fields.retransmission_request_message = ProtoField.new("Retransmission Request Message", "tmx.mx.solamulticast.hsvf.v2.1.retransmissionrequestmessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Tmx Mx SolaMulticast Hsvf 2.1 Element Dissection Options
show.application_messages = true
show.headers = true
show.structs = true

-- Register Tmx Mx SolaMulticast Hsvf 2.1 Show Options
omi_tmx_mx_solamulticast_hsvf_v2_1.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_tmx_mx_solamulticast_hsvf_v2_1.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_tmx_mx_solamulticast_hsvf_v2_1.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")

-- Handle changed preferences
function omi_tmx_mx_solamulticast_hsvf_v2_1.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_tmx_mx_solamulticast_hsvf_v2_1.prefs.show_application_messages then
    show.application_messages = omi_tmx_mx_solamulticast_hsvf_v2_1.prefs.show_application_messages
  end
  if show.headers ~= omi_tmx_mx_solamulticast_hsvf_v2_1.prefs.show_headers then
    show.headers = omi_tmx_mx_solamulticast_hsvf_v2_1.prefs.show_headers
  end
  if show.structs ~= omi_tmx_mx_solamulticast_hsvf_v2_1.prefs.show_structs then
    show.structs = omi_tmx_mx_solamulticast_hsvf_v2_1.prefs.show_structs
  end
end


-----------------------------------------------------------------------
-- Tmx Mx SolaMulticast Hsvf 2.1 Fields
-----------------------------------------------------------------------

-- End
tmx_mx_solamulticast_hsvf_v2_1.end_ = {}

-- Size: End
tmx_mx_solamulticast_hsvf_v2_1.end_.size = 9

-- Display: End
tmx_mx_solamulticast_hsvf_v2_1.end_.display = function(value)
  return "End: "..value
end

-- Dissect: End
tmx_mx_solamulticast_hsvf_v2_1.end_.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v2_1.end_.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_solamulticast_hsvf_v2_1.end_.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v2_1.fields.end_, range, value, display)

  return offset + length, value
end

-- Error Code
tmx_mx_solamulticast_hsvf_v2_1.error_code = {}

-- Size: Error Code
tmx_mx_solamulticast_hsvf_v2_1.error_code.size = 4

-- Display: Error Code
tmx_mx_solamulticast_hsvf_v2_1.error_code.display = function(value)
  return "Error Code: "..value
end

-- Dissect: Error Code
tmx_mx_solamulticast_hsvf_v2_1.error_code.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v2_1.error_code.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_solamulticast_hsvf_v2_1.error_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v2_1.fields.error_code, range, value, display)

  return offset + length, value
end

-- Error Msg
tmx_mx_solamulticast_hsvf_v2_1.error_msg = {}

-- Size: Error Msg
tmx_mx_solamulticast_hsvf_v2_1.error_msg.size = 80

-- Display: Error Msg
tmx_mx_solamulticast_hsvf_v2_1.error_msg.display = function(value)
  return "Error Msg: "..value
end

-- Dissect: Error Msg
tmx_mx_solamulticast_hsvf_v2_1.error_msg.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v2_1.error_msg.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v2_1.error_msg.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v2_1.fields.error_msg, range, value, display)

  return offset + length, value
end

-- Hsvf Etx
tmx_mx_solamulticast_hsvf_v2_1.hsvf_etx = {}

-- Size: Hsvf Etx
tmx_mx_solamulticast_hsvf_v2_1.hsvf_etx.size = 1

-- Display: Hsvf Etx
tmx_mx_solamulticast_hsvf_v2_1.hsvf_etx.display = function(value)
  if value == 3 then
    return "Hsvf Etx: Etx"
  end

  return "Hsvf Etx: Unknown("..value..")"
end

-- Dissect: Hsvf Etx
tmx_mx_solamulticast_hsvf_v2_1.hsvf_etx.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v2_1.hsvf_etx.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = tmx_mx_solamulticast_hsvf_v2_1.hsvf_etx.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v2_1.fields.hsvf_etx, range, value, display)

  return offset + length, value
end

-- Hsvf Stx
tmx_mx_solamulticast_hsvf_v2_1.hsvf_stx = {}

-- Size: Hsvf Stx
tmx_mx_solamulticast_hsvf_v2_1.hsvf_stx.size = 1

-- Display: Hsvf Stx
tmx_mx_solamulticast_hsvf_v2_1.hsvf_stx.display = function(value)
  if value == 2 then
    return "Hsvf Stx: Stx"
  end

  return "Hsvf Stx: Unknown("..value..")"
end

-- Dissect: Hsvf Stx
tmx_mx_solamulticast_hsvf_v2_1.hsvf_stx.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v2_1.hsvf_stx.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = tmx_mx_solamulticast_hsvf_v2_1.hsvf_stx.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v2_1.fields.hsvf_stx, range, value, display)

  return offset + length, value
end

-- Line
tmx_mx_solamulticast_hsvf_v2_1.line = {}

-- Size: Line
tmx_mx_solamulticast_hsvf_v2_1.line.size = 2

-- Display: Line
tmx_mx_solamulticast_hsvf_v2_1.line.display = function(value)
  return "Line: "..value
end

-- Dissect: Line
tmx_mx_solamulticast_hsvf_v2_1.line.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v2_1.line.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v2_1.line.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v2_1.fields.line, range, value, display)

  return offset + length, value
end

-- Message Type
tmx_mx_solamulticast_hsvf_v2_1.message_type = {}

-- Size: Message Type
tmx_mx_solamulticast_hsvf_v2_1.message_type.size = 2

-- Display: Message Type
tmx_mx_solamulticast_hsvf_v2_1.message_type.display = function(value)
  if value == "LI" then
    return "Message Type: Login Message (LI)"
  end
  if value == "RT" then
    return "Message Type: Retransmission Request Message (RT)"
  end
  if value == "ER" then
    return "Message Type: Error Message (ER)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
tmx_mx_solamulticast_hsvf_v2_1.message_type.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v2_1.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v2_1.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v2_1.fields.message_type, range, value, display)

  return offset + length, value
end

-- Protocol
tmx_mx_solamulticast_hsvf_v2_1.protocol = {}

-- Size: Protocol
tmx_mx_solamulticast_hsvf_v2_1.protocol.size = 2

-- Display: Protocol
tmx_mx_solamulticast_hsvf_v2_1.protocol.display = function(value)
  return "Protocol: "..value
end

-- Dissect: Protocol
tmx_mx_solamulticast_hsvf_v2_1.protocol.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v2_1.protocol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v2_1.protocol.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v2_1.fields.protocol, range, value, display)

  return offset + length, value
end

-- Pwd
tmx_mx_solamulticast_hsvf_v2_1.pwd = {}

-- Size: Pwd
tmx_mx_solamulticast_hsvf_v2_1.pwd.size = 16

-- Display: Pwd
tmx_mx_solamulticast_hsvf_v2_1.pwd.display = function(value)
  return "Pwd: "..value
end

-- Dissect: Pwd
tmx_mx_solamulticast_hsvf_v2_1.pwd.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v2_1.pwd.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v2_1.pwd.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v2_1.fields.pwd, range, value, display)

  return offset + length, value
end

-- Sequence Number
tmx_mx_solamulticast_hsvf_v2_1.sequence_number = {}

-- Size: Sequence Number
tmx_mx_solamulticast_hsvf_v2_1.sequence_number.size = 9

-- Display: Sequence Number
tmx_mx_solamulticast_hsvf_v2_1.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
tmx_mx_solamulticast_hsvf_v2_1.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v2_1.sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_solamulticast_hsvf_v2_1.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v2_1.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Start
tmx_mx_solamulticast_hsvf_v2_1.start = {}

-- Size: Start
tmx_mx_solamulticast_hsvf_v2_1.start.size = 9

-- Display: Start
tmx_mx_solamulticast_hsvf_v2_1.start.display = function(value)
  return "Start: "..value
end

-- Dissect: Start
tmx_mx_solamulticast_hsvf_v2_1.start.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v2_1.start.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_solamulticast_hsvf_v2_1.start.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v2_1.fields.start, range, value, display)

  return offset + length, value
end

-- Timestamp
tmx_mx_solamulticast_hsvf_v2_1.timestamp = {}

-- Size: Timestamp
tmx_mx_solamulticast_hsvf_v2_1.timestamp.size = 6

-- Display: Timestamp
tmx_mx_solamulticast_hsvf_v2_1.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
tmx_mx_solamulticast_hsvf_v2_1.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v2_1.timestamp.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_solamulticast_hsvf_v2_1.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v2_1.fields.timestamp, range, value, display)

  return offset + length, value
end

-- User
tmx_mx_solamulticast_hsvf_v2_1.user = {}

-- Size: User
tmx_mx_solamulticast_hsvf_v2_1.user.size = 16

-- Display: User
tmx_mx_solamulticast_hsvf_v2_1.user.display = function(value)
  return "User: "..value
end

-- Dissect: User
tmx_mx_solamulticast_hsvf_v2_1.user.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v2_1.user.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v2_1.user.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v2_1.fields.user, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Tmx Mx SolaMulticast Hsvf 2.1
-----------------------------------------------------------------------

-- Error Message
tmx_mx_solamulticast_hsvf_v2_1.error_message = {}

-- Size: Error Message
tmx_mx_solamulticast_hsvf_v2_1.error_message.size =
  tmx_mx_solamulticast_hsvf_v2_1.error_code.size + 
  tmx_mx_solamulticast_hsvf_v2_1.error_msg.size

-- Display: Error Message
tmx_mx_solamulticast_hsvf_v2_1.error_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Error Message
tmx_mx_solamulticast_hsvf_v2_1.error_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Error Code: N
  index, error_code = tmx_mx_solamulticast_hsvf_v2_1.error_code.dissect(buffer, index, packet, parent)

  -- Error Msg: X
  index, error_msg = tmx_mx_solamulticast_hsvf_v2_1.error_msg.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Error Message
tmx_mx_solamulticast_hsvf_v2_1.error_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v2_1.fields.error_message, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v2_1.error_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v2_1.error_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v2_1.error_message.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Request Message
tmx_mx_solamulticast_hsvf_v2_1.retransmission_request_message = {}

-- Size: Retransmission Request Message
tmx_mx_solamulticast_hsvf_v2_1.retransmission_request_message.size =
  tmx_mx_solamulticast_hsvf_v2_1.line.size + 
  tmx_mx_solamulticast_hsvf_v2_1.start.size + 
  tmx_mx_solamulticast_hsvf_v2_1.end_.size

-- Display: Retransmission Request Message
tmx_mx_solamulticast_hsvf_v2_1.retransmission_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request Message
tmx_mx_solamulticast_hsvf_v2_1.retransmission_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Line: X
  index, line = tmx_mx_solamulticast_hsvf_v2_1.line.dissect(buffer, index, packet, parent)

  -- Start: N
  index, start = tmx_mx_solamulticast_hsvf_v2_1.start.dissect(buffer, index, packet, parent)

  -- End: N
  index, end_ = tmx_mx_solamulticast_hsvf_v2_1.end_.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request Message
tmx_mx_solamulticast_hsvf_v2_1.retransmission_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v2_1.fields.retransmission_request_message, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v2_1.retransmission_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v2_1.retransmission_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v2_1.retransmission_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Message
tmx_mx_solamulticast_hsvf_v2_1.login_message = {}

-- Size: Login Message
tmx_mx_solamulticast_hsvf_v2_1.login_message.size =
  tmx_mx_solamulticast_hsvf_v2_1.user.size + 
  tmx_mx_solamulticast_hsvf_v2_1.pwd.size + 
  tmx_mx_solamulticast_hsvf_v2_1.timestamp.size + 
  tmx_mx_solamulticast_hsvf_v2_1.protocol.size

-- Display: Login Message
tmx_mx_solamulticast_hsvf_v2_1.login_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Message
tmx_mx_solamulticast_hsvf_v2_1.login_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User: X
  index, user = tmx_mx_solamulticast_hsvf_v2_1.user.dissect(buffer, index, packet, parent)

  -- Pwd: X
  index, pwd = tmx_mx_solamulticast_hsvf_v2_1.pwd.dissect(buffer, index, packet, parent)

  -- Timestamp: N
  index, timestamp = tmx_mx_solamulticast_hsvf_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Protocol: X
  index, protocol = tmx_mx_solamulticast_hsvf_v2_1.protocol.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Message
tmx_mx_solamulticast_hsvf_v2_1.login_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v2_1.fields.login_message, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v2_1.login_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v2_1.login_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v2_1.login_message.fields(buffer, offset, packet, parent)
  end
end

-- Message Body
tmx_mx_solamulticast_hsvf_v2_1.message_body = {}

-- Dissect: Message Body
tmx_mx_solamulticast_hsvf_v2_1.message_body.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Login Message
  if message_type == "LI" then
    return tmx_mx_solamulticast_hsvf_v2_1.login_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission Request Message
  if message_type == "RT" then
    return tmx_mx_solamulticast_hsvf_v2_1.retransmission_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Error Message
  if message_type == "ER" then
    return tmx_mx_solamulticast_hsvf_v2_1.error_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Messageheader
tmx_mx_solamulticast_hsvf_v2_1.messageheader = {}

-- Size: Messageheader
tmx_mx_solamulticast_hsvf_v2_1.messageheader.size =
  tmx_mx_solamulticast_hsvf_v2_1.sequence_number.size + 
  tmx_mx_solamulticast_hsvf_v2_1.message_type.size

-- Display: Messageheader
tmx_mx_solamulticast_hsvf_v2_1.messageheader.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Messageheader
tmx_mx_solamulticast_hsvf_v2_1.messageheader.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: 9 Byte Ascii String
  index, sequence_number = tmx_mx_solamulticast_hsvf_v2_1.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Type: 2 Byte Ascii String Enum with 3 values
  index, message_type = tmx_mx_solamulticast_hsvf_v2_1.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Messageheader
tmx_mx_solamulticast_hsvf_v2_1.messageheader.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v2_1.fields.messageheader, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v2_1.messageheader.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v2_1.messageheader.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v2_1.messageheader.fields(buffer, offset, packet, parent)
  end
end

-- Packet
tmx_mx_solamulticast_hsvf_v2_1.packet = {}

-- Verify required size of Udp packet
tmx_mx_solamulticast_hsvf_v2_1.packet.requiredsize = function(buffer)
  return buffer:len() >= tmx_mx_solamulticast_hsvf_v2_1.hsvf_stx.size + tmx_mx_solamulticast_hsvf_v2_1.messageheader.size
end

-- Dissect Packet
tmx_mx_solamulticast_hsvf_v2_1.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Hsvf Stx: 1 Byte Fixed Width Integer Static
    index, hsvf_stx = tmx_mx_solamulticast_hsvf_v2_1.hsvf_stx.dissect(buffer, index, packet, parent)

    -- Messageheader: Struct of 2 fields
    index, messageheader = tmx_mx_solamulticast_hsvf_v2_1.messageheader.dissect(buffer, index, packet, parent)

    -- Dependency element: Message Type
    local message_type = buffer(index - 2, 2):string()

    -- Message Body: Runtime Type with 3 branches
    index = tmx_mx_solamulticast_hsvf_v2_1.message_body.dissect(buffer, index, packet, parent, message_type)

    -- Hsvf Etx: 1 Byte Fixed Width Integer Static
    index, hsvf_etx = tmx_mx_solamulticast_hsvf_v2_1.hsvf_etx.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_tmx_mx_solamulticast_hsvf_v2_1.init()
end

-- Dissector for Tmx Mx SolaMulticast Hsvf 2.1
function omi_tmx_mx_solamulticast_hsvf_v2_1.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_tmx_mx_solamulticast_hsvf_v2_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_tmx_mx_solamulticast_hsvf_v2_1, buffer(), omi_tmx_mx_solamulticast_hsvf_v2_1.description, "("..buffer:len().." Bytes)")
  return tmx_mx_solamulticast_hsvf_v2_1.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify Hsvf Stx Field
tmx_mx_solamulticast_hsvf_v2_1.hsvf_stx.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(0, 1):int()

  if value == 2 then
    return true
  end

  return false
end

-- Dissector Heuristic for Tmx Mx SolaMulticast Hsvf 2.1 (Udp)
local function omi_tmx_mx_solamulticast_hsvf_v2_1_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not tmx_mx_solamulticast_hsvf_v2_1.packet.requiredsize(buffer) then return false end

  -- Verify Hsvf Stx
  if not tmx_mx_solamulticast_hsvf_v2_1.hsvf_stx.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_tmx_mx_solamulticast_hsvf_v2_1
  omi_tmx_mx_solamulticast_hsvf_v2_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Tmx Mx SolaMulticast Hsvf 2.1
omi_tmx_mx_solamulticast_hsvf_v2_1:register_heuristic("udp", omi_tmx_mx_solamulticast_hsvf_v2_1_udp_heuristic)

-- Register Tmx Mx SolaMulticast Hsvf 2.1 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_tmx_mx_solamulticast_hsvf_v2_1)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: TMX Group
--   Version: 2.1
--   Date: Wednesday, January 23, 2019
--   Specification: Mx.Sola.Multicast.Hsvf.v.2.1.pdf
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
