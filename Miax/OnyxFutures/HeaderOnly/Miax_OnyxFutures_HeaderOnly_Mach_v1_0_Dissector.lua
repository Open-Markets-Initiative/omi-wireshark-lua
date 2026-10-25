-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Miax OnyxFutures HeaderOnly Mach 1.0 Protocol
local omi_miax_onyxfutures_headeronly_mach_v1_0 = Proto("Omi.Miax.OnyxFutures.HeaderOnly.Mach.v1.0", "Miax OnyxFutures HeaderOnly Mach 1.0")

-- Protocol table
local miax_onyxfutures_headeronly_mach_v1_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Miax OnyxFutures HeaderOnly Mach 1.0 Fields
omi_miax_onyxfutures_headeronly_mach_v1_0.fields.application_message = ProtoField.new("Application Message", "miax.onyxfutures.headeronly.mach.v1.0.applicationmessage", ftypes.STRING)
omi_miax_onyxfutures_headeronly_mach_v1_0.fields.data = ProtoField.new("Data", "miax.onyxfutures.headeronly.mach.v1.0.data", ftypes.BYTES, nil, nil, nil, "Raw message data")
omi_miax_onyxfutures_headeronly_mach_v1_0.fields.message_type = ProtoField.new("Message Type", "miax.onyxfutures.headeronly.mach.v1.0.messagetype", ftypes.UINT8, nil, nil, nil, "Code identifying this message type")
omi_miax_onyxfutures_headeronly_mach_v1_0.fields.packet_length = ProtoField.new("Packet Length", "miax.onyxfutures.headeronly.mach.v1.0.packetlength", ftypes.UINT16, nil, nil, nil, "Length of the packet. This includes the header and application data")
omi_miax_onyxfutures_headeronly_mach_v1_0.fields.packet_type = ProtoField.new("Packet Type", "miax.onyxfutures.headeronly.mach.v1.0.packettype", ftypes.UINT8, nil, nil, nil, "protocol packet type")
omi_miax_onyxfutures_headeronly_mach_v1_0.fields.sequence_number = ProtoField.new("Sequence Number", "miax.onyxfutures.headeronly.mach.v1.0.sequencenumber", ftypes.UINT64, nil, nil, nil, "Sequence number of this data packet")
omi_miax_onyxfutures_headeronly_mach_v1_0.fields.session_number = ProtoField.new("Session Number", "miax.onyxfutures.headeronly.mach.v1.0.sessionnumber", ftypes.UINT8, nil, nil, nil, "The Session this packet was generated from")

-- Miax OnyxFutures HeaderOnly Mach 1.0 Framing
omi_miax_onyxfutures_headeronly_mach_v1_0.fields.mach_message = ProtoField.new("Mach Message", "miax.onyxfutures.headeronly.mach.v1.0.machmessage", ftypes.STRING)
omi_miax_onyxfutures_headeronly_mach_v1_0.fields.mach_packet_header = ProtoField.new("Mach Packet Header", "miax.onyxfutures.headeronly.mach.v1.0.machpacketheader", ftypes.STRING, nil, nil, nil, "Mach packet header (12 bytes)")
omi_miax_onyxfutures_headeronly_mach_v1_0.fields.packet = ProtoField.new("Packet", "miax.onyxfutures.headeronly.mach.v1.0.packet", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Miax OnyxFutures HeaderOnly Mach 1.0 Element Dissection Options
show.structs = true
show.headers = true

-- Register Miax OnyxFutures HeaderOnly Mach 1.0 Show Options
omi_miax_onyxfutures_headeronly_mach_v1_0.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_miax_onyxfutures_headeronly_mach_v1_0.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")

-- Handle changed preferences
function omi_miax_onyxfutures_headeronly_mach_v1_0.prefs_changed()

  -- Check if preferences have changed
  if show.headers ~= omi_miax_onyxfutures_headeronly_mach_v1_0.prefs.show_headers then
    show.headers = omi_miax_onyxfutures_headeronly_mach_v1_0.prefs.show_headers
  end
  if show.structs ~= omi_miax_onyxfutures_headeronly_mach_v1_0.prefs.show_structs then
    show.structs = omi_miax_onyxfutures_headeronly_mach_v1_0.prefs.show_structs
  end
end


-----------------------------------------------------------------------
-- Miax OnyxFutures HeaderOnly Mach 1.0 Fields
-----------------------------------------------------------------------

-- Data
miax_onyxfutures_headeronly_mach_v1_0.data = {}

-- Display: Data
miax_onyxfutures_headeronly_mach_v1_0.data.display = function(value)
  return "Data: "..value
end

-- Dissect runtime sized field: Data
miax_onyxfutures_headeronly_mach_v1_0.data.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = miax_onyxfutures_headeronly_mach_v1_0.data.display(value, packet, parent, size)

  parent:add(omi_miax_onyxfutures_headeronly_mach_v1_0.fields.data, range, value, display)

  return offset + size, value
end

-- Message Type
miax_onyxfutures_headeronly_mach_v1_0.message_type = {}

-- Size: Message Type
miax_onyxfutures_headeronly_mach_v1_0.message_type.size = 1

-- Display: Message Type
miax_onyxfutures_headeronly_mach_v1_0.message_type.display = function(value)
  return "Message Type: "..value
end

-- Dissect: Message Type
miax_onyxfutures_headeronly_mach_v1_0.message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_headeronly_mach_v1_0.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_onyxfutures_headeronly_mach_v1_0.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_headeronly_mach_v1_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Packet Length
miax_onyxfutures_headeronly_mach_v1_0.packet_length = {}

-- Size: Packet Length
miax_onyxfutures_headeronly_mach_v1_0.packet_length.size = 2

-- Display: Packet Length
miax_onyxfutures_headeronly_mach_v1_0.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
miax_onyxfutures_headeronly_mach_v1_0.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_headeronly_mach_v1_0.packet_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_headeronly_mach_v1_0.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_headeronly_mach_v1_0.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Packet Type
miax_onyxfutures_headeronly_mach_v1_0.packet_type = {}

-- Size: Packet Type
miax_onyxfutures_headeronly_mach_v1_0.packet_type.size = 1

-- Display: Packet Type
miax_onyxfutures_headeronly_mach_v1_0.packet_type.labels = {
  [0] = "Packet Type: Heartbeat (0)",
  [1] = "Packet Type: Start Of Session (1)",
  [2] = "Packet Type: End Of Session (2)",
  [3] = "Packet Type: Application Message (3)",
}

miax_onyxfutures_headeronly_mach_v1_0.packet_type.display = function(value)
  return miax_onyxfutures_headeronly_mach_v1_0.packet_type.labels[value] or "Packet Type: Unknown("..value..")"
end

-- Dissect: Packet Type
miax_onyxfutures_headeronly_mach_v1_0.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_headeronly_mach_v1_0.packet_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_onyxfutures_headeronly_mach_v1_0.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_headeronly_mach_v1_0.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Sequence Number
miax_onyxfutures_headeronly_mach_v1_0.sequence_number = {}

-- Size: Sequence Number
miax_onyxfutures_headeronly_mach_v1_0.sequence_number.size = 8

-- Display: Sequence Number
miax_onyxfutures_headeronly_mach_v1_0.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
miax_onyxfutures_headeronly_mach_v1_0.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_headeronly_mach_v1_0.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_headeronly_mach_v1_0.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_headeronly_mach_v1_0.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session Number
miax_onyxfutures_headeronly_mach_v1_0.session_number = {}

-- Size: Session Number
miax_onyxfutures_headeronly_mach_v1_0.session_number.size = 1

-- Display: Session Number
miax_onyxfutures_headeronly_mach_v1_0.session_number.display = function(value)
  return "Session Number: "..value
end

-- Dissect: Session Number
miax_onyxfutures_headeronly_mach_v1_0.session_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_headeronly_mach_v1_0.session_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_onyxfutures_headeronly_mach_v1_0.session_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_headeronly_mach_v1_0.fields.session_number, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Miax OnyxFutures HeaderOnly Mach 1.0
-----------------------------------------------------------------------

-- End Of Session
miax_onyxfutures_headeronly_mach_v1_0.end_of_session = {}

-- Display: End Of Session
miax_onyxfutures_headeronly_mach_v1_0.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
miax_onyxfutures_headeronly_mach_v1_0.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = miax_onyxfutures_headeronly_mach_v1_0.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Start Of Session
miax_onyxfutures_headeronly_mach_v1_0.start_of_session = {}

-- Display: Start Of Session
miax_onyxfutures_headeronly_mach_v1_0.start_of_session.display = function(packet, parent, length)
  return "Start Of Session"
end


-- Dissect: Start Of Session
miax_onyxfutures_headeronly_mach_v1_0.start_of_session.dissect = function(buffer, offset, packet, parent)
  local display = miax_onyxfutures_headeronly_mach_v1_0.start_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Heartbeat
miax_onyxfutures_headeronly_mach_v1_0.heartbeat = {}

-- Display: Heartbeat
miax_onyxfutures_headeronly_mach_v1_0.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
miax_onyxfutures_headeronly_mach_v1_0.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = miax_onyxfutures_headeronly_mach_v1_0.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Application Message
miax_onyxfutures_headeronly_mach_v1_0.application_message = {}

-- Read runtime size of: Application Message
miax_onyxfutures_headeronly_mach_v1_0.application_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 4, 2):le_uint()

  return packet_length - 12
end

-- Display: Application Message
miax_onyxfutures_headeronly_mach_v1_0.application_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Application Message
miax_onyxfutures_headeronly_mach_v1_0.application_message.fields = function(buffer, offset, packet, parent, size_of_application_message)
  local index = offset

  -- Message Type: 1 Byte Unsigned Fixed Width Integer
  index, message_type = miax_onyxfutures_headeronly_mach_v1_0.message_type.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 4, 2):le_uint()

  -- Runtime Size Of: Data
  local size_of_data = packet_length - 13

  -- Data: 0 Byte
  index, data = miax_onyxfutures_headeronly_mach_v1_0.data.dissect(buffer, index, packet, parent, size_of_data)

  return index
end

-- Dissect: Application Message
miax_onyxfutures_headeronly_mach_v1_0.application_message.dissect = function(buffer, offset, packet, parent, size_of_application_message)
  local size_of_application_message = miax_onyxfutures_headeronly_mach_v1_0.application_message.size(buffer, offset)
  local index = offset + size_of_application_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_miax_onyxfutures_headeronly_mach_v1_0.fields.application_message, buffer(offset, 0))
    local current = miax_onyxfutures_headeronly_mach_v1_0.application_message.fields(buffer, offset, packet, parent, size_of_application_message)
    parent:set_len(size_of_application_message)
    local display = miax_onyxfutures_headeronly_mach_v1_0.application_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_onyxfutures_headeronly_mach_v1_0.application_message.fields(buffer, offset, packet, parent, size_of_application_message)

    return index
  end
end

-- Payload
miax_onyxfutures_headeronly_mach_v1_0.payload = {}

-- Dissect: Payload
miax_onyxfutures_headeronly_mach_v1_0.payload.dispatch = {
  [3] = miax_onyxfutures_headeronly_mach_v1_0.application_message.dissect,
  [0] = miax_onyxfutures_headeronly_mach_v1_0.heartbeat.dissect,
  [1] = miax_onyxfutures_headeronly_mach_v1_0.start_of_session.dissect,
  [2] = miax_onyxfutures_headeronly_mach_v1_0.end_of_session.dissect,
}

miax_onyxfutures_headeronly_mach_v1_0.payload.dissect = function(buffer, offset, packet, parent, packet_type)
  local dissect = miax_onyxfutures_headeronly_mach_v1_0.payload.dispatch[packet_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Mach Packet Header
miax_onyxfutures_headeronly_mach_v1_0.mach_packet_header = {}

-- Size: Mach Packet Header
miax_onyxfutures_headeronly_mach_v1_0.mach_packet_header.size =
  miax_onyxfutures_headeronly_mach_v1_0.sequence_number.size + 
  miax_onyxfutures_headeronly_mach_v1_0.packet_length.size + 
  miax_onyxfutures_headeronly_mach_v1_0.packet_type.size + 
  miax_onyxfutures_headeronly_mach_v1_0.session_number.size

-- Display: Mach Packet Header
miax_onyxfutures_headeronly_mach_v1_0.mach_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mach Packet Header
miax_onyxfutures_headeronly_mach_v1_0.mach_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = miax_onyxfutures_headeronly_mach_v1_0.sequence_number.dissect(buffer, index, packet, parent)

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = miax_onyxfutures_headeronly_mach_v1_0.packet_length.dissect(buffer, index, packet, parent)

  -- Packet Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, packet_type = miax_onyxfutures_headeronly_mach_v1_0.packet_type.dissect(buffer, index, packet, parent)

  -- Session Number: 1 Byte Unsigned Fixed Width Integer
  index, session_number = miax_onyxfutures_headeronly_mach_v1_0.session_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mach Packet Header
miax_onyxfutures_headeronly_mach_v1_0.mach_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_headeronly_mach_v1_0.fields.mach_packet_header, buffer(offset, 0))
    local index = miax_onyxfutures_headeronly_mach_v1_0.mach_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_headeronly_mach_v1_0.mach_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_headeronly_mach_v1_0.mach_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Mach Message
miax_onyxfutures_headeronly_mach_v1_0.mach_message = {}

-- Display: Mach Message
miax_onyxfutures_headeronly_mach_v1_0.mach_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mach Message
miax_onyxfutures_headeronly_mach_v1_0.mach_message.fields = function(buffer, offset, packet, parent, size_of_mach_message)
  local index = offset

  -- Mach Packet Header: Struct of 4 fields
  index, mach_packet_header = miax_onyxfutures_headeronly_mach_v1_0.mach_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Type
  local packet_type = buffer(index - 2, 1):uint()

  -- Payload: Runtime Type with 4 branches
  index = miax_onyxfutures_headeronly_mach_v1_0.payload.dissect(buffer, index, packet, parent, packet_type)

  return index
end

-- Dissect: Mach Message
miax_onyxfutures_headeronly_mach_v1_0.mach_message.dissect = function(buffer, offset, packet, parent, size_of_mach_message)
  local index = offset + size_of_mach_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_miax_onyxfutures_headeronly_mach_v1_0.fields.mach_message, buffer(offset, 0))
    local current = miax_onyxfutures_headeronly_mach_v1_0.mach_message.fields(buffer, offset, packet, parent, size_of_mach_message)
    parent:set_len(size_of_mach_message)
    local display = miax_onyxfutures_headeronly_mach_v1_0.mach_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_onyxfutures_headeronly_mach_v1_0.mach_message.fields(buffer, offset, packet, parent, size_of_mach_message)

    return index
  end
end

-- Packet
miax_onyxfutures_headeronly_mach_v1_0.packet = {}

-- Verify required size of Udp packet
miax_onyxfutures_headeronly_mach_v1_0.packet.requiredsize = function(buffer)
  return buffer:len() >= miax_onyxfutures_headeronly_mach_v1_0.mach_packet_header.size
end

-- Dissect Packet
miax_onyxfutures_headeronly_mach_v1_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Mach Message
  local end_of_payload = buffer:len()

  -- Mach Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Packet Length
    local packet_length = buffer(index + 8, 2):le_uint()

    -- Runtime Size Of: Mach Message
    index, mach_message = miax_onyxfutures_headeronly_mach_v1_0.mach_message.dissect(buffer, index, packet, parent, packet_length)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_miax_onyxfutures_headeronly_mach_v1_0.init()
end

-- Dissector for Miax OnyxFutures HeaderOnly Mach 1.0
function omi_miax_onyxfutures_headeronly_mach_v1_0.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_miax_onyxfutures_headeronly_mach_v1_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_miax_onyxfutures_headeronly_mach_v1_0, buffer(), omi_miax_onyxfutures_headeronly_mach_v1_0.description, "("..buffer:len().." Bytes)")
  return miax_onyxfutures_headeronly_mach_v1_0.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
miax_onyxfutures_headeronly_mach_v1_0.packet.fingerprint = function(buffer)
  if buffer:len() < 11 then
    return false
  end

  local packet_type = buffer(10, 1):uint()

  -- Application Message
  if packet_type == 3 then
    return true
  end

  -- Heartbeat
  if packet_type == 0 then
    return true
  end

  -- Start Of Session
  if packet_type == 1 then
    return true
  end

  -- End Of Session
  if packet_type == 2 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Miax OnyxFutures HeaderOnly Mach 1.0 (Udp)
local function omi_miax_onyxfutures_headeronly_mach_v1_0_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not miax_onyxfutures_headeronly_mach_v1_0.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this udp packet message dispatch
  if not miax_onyxfutures_headeronly_mach_v1_0.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_miax_onyxfutures_headeronly_mach_v1_0
  omi_miax_onyxfutures_headeronly_mach_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Miax OnyxFutures HeaderOnly Mach 1.0
omi_miax_onyxfutures_headeronly_mach_v1_0:register_heuristic("udp", omi_miax_onyxfutures_headeronly_mach_v1_0_udp_heuristic)

-- Register Miax OnyxFutures HeaderOnly Mach 1.0 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_miax_onyxfutures_headeronly_mach_v1_0)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Miami International Holdings
--   Version: 1.0
--   Date: Friday, June 26, 2020
--   Specification: tcp_session_mgmt_esesm.pdf
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
