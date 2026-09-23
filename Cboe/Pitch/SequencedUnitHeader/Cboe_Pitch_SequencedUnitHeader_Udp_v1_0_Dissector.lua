-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe Pitch SequencedUnitHeader Udp 1.0 Protocol
local omi_cboe_pitch_sequencedunitheader_udp_v1_0 = Proto("Omi.Cboe.Pitch.SequencedUnitHeader.Udp.v1.0", "Cboe Pitch SequencedUnitHeader Udp 1.0")

-- Protocol table
local cboe_pitch_sequencedunitheader_udp_v1_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe Pitch SequencedUnitHeader Udp 1.0 Fields
omi_cboe_pitch_sequencedunitheader_udp_v1_0.fields.count = ProtoField.new("Count", "cboe.pitch.sequencedunitheader.udp.v1.0.count", ftypes.UINT8)
omi_cboe_pitch_sequencedunitheader_udp_v1_0.fields.length = ProtoField.new("Length", "cboe.pitch.sequencedunitheader.udp.v1.0.length", ftypes.UINT16)
omi_cboe_pitch_sequencedunitheader_udp_v1_0.fields.message_length = ProtoField.new("Message Length", "cboe.pitch.sequencedunitheader.udp.v1.0.messagelength", ftypes.UINT8)
omi_cboe_pitch_sequencedunitheader_udp_v1_0.fields.message_type = ProtoField.new("Message Type", "cboe.pitch.sequencedunitheader.udp.v1.0.messagetype", ftypes.UINT8)
omi_cboe_pitch_sequencedunitheader_udp_v1_0.fields.payload = ProtoField.new("Payload", "cboe.pitch.sequencedunitheader.udp.v1.0.payload", ftypes.BYTES)
omi_cboe_pitch_sequencedunitheader_udp_v1_0.fields.sequence = ProtoField.new("Sequence", "cboe.pitch.sequencedunitheader.udp.v1.0.sequence", ftypes.UINT32)
omi_cboe_pitch_sequencedunitheader_udp_v1_0.fields.unit = ProtoField.new("Unit", "cboe.pitch.sequencedunitheader.udp.v1.0.unit", ftypes.UINT8)

-- Cboe Pitch SequencedUnitHeader Udp 1.0 Framing
omi_cboe_pitch_sequencedunitheader_udp_v1_0.fields.message = ProtoField.new("Message", "cboe.pitch.sequencedunitheader.udp.v1.0.message", ftypes.STRING)
omi_cboe_pitch_sequencedunitheader_udp_v1_0.fields.message_header = ProtoField.new("Message Header", "cboe.pitch.sequencedunitheader.udp.v1.0.messageheader", ftypes.STRING)
omi_cboe_pitch_sequencedunitheader_udp_v1_0.fields.packet = ProtoField.new("Packet", "cboe.pitch.sequencedunitheader.udp.v1.0.packet", ftypes.STRING)
omi_cboe_pitch_sequencedunitheader_udp_v1_0.fields.packet_header = ProtoField.new("Packet Header", "cboe.pitch.sequencedunitheader.udp.v1.0.packetheader", ftypes.STRING)

-- Cboe Pitch SequencedUnitHeader Udp 1.0 Generated Fields
omi_cboe_pitch_sequencedunitheader_udp_v1_0.fields.message_index = ProtoField.new("Message Index", "cboe.pitch.sequencedunitheader.udp.v1.0.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe Pitch SequencedUnitHeader Udp 1.0 Element Dissection Options
show.structs = true
show.headers = true
show.indexes = true

-- Register Cboe Pitch SequencedUnitHeader Udp 1.0 Show Options
omi_cboe_pitch_sequencedunitheader_udp_v1_0.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_cboe_pitch_sequencedunitheader_udp_v1_0.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_cboe_pitch_sequencedunitheader_udp_v1_0.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

-- Handle changed preferences
function omi_cboe_pitch_sequencedunitheader_udp_v1_0.prefs_changed()

  -- Check if preferences have changed
  if show.headers ~= omi_cboe_pitch_sequencedunitheader_udp_v1_0.prefs.show_headers then
    show.headers = omi_cboe_pitch_sequencedunitheader_udp_v1_0.prefs.show_headers
  end
  if show.structs ~= omi_cboe_pitch_sequencedunitheader_udp_v1_0.prefs.show_structs then
    show.structs = omi_cboe_pitch_sequencedunitheader_udp_v1_0.prefs.show_structs
  end
  if show.indexes ~= omi_cboe_pitch_sequencedunitheader_udp_v1_0.prefs.show_indexes then
    show.indexes = omi_cboe_pitch_sequencedunitheader_udp_v1_0.prefs.show_indexes
  end
end


-----------------------------------------------------------------------
-- Cboe Pitch SequencedUnitHeader Udp 1.0 Fields
-----------------------------------------------------------------------

-- Count
cboe_pitch_sequencedunitheader_udp_v1_0.count = {}

-- Size: Count
cboe_pitch_sequencedunitheader_udp_v1_0.count.size = 1

-- Display: Count
cboe_pitch_sequencedunitheader_udp_v1_0.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
cboe_pitch_sequencedunitheader_udp_v1_0.count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_pitch_sequencedunitheader_udp_v1_0.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_pitch_sequencedunitheader_udp_v1_0.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_pitch_sequencedunitheader_udp_v1_0.fields.count, range, value, display)

  return offset + length, value
end

-- Length
cboe_pitch_sequencedunitheader_udp_v1_0.length = {}

-- Size: Length
cboe_pitch_sequencedunitheader_udp_v1_0.length.size = 2

-- Display: Length
cboe_pitch_sequencedunitheader_udp_v1_0.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_pitch_sequencedunitheader_udp_v1_0.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_pitch_sequencedunitheader_udp_v1_0.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_pitch_sequencedunitheader_udp_v1_0.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_pitch_sequencedunitheader_udp_v1_0.fields.length, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_pitch_sequencedunitheader_udp_v1_0.message_length = {}

-- Size: Message Length
cboe_pitch_sequencedunitheader_udp_v1_0.message_length.size = 1

-- Display: Message Length
cboe_pitch_sequencedunitheader_udp_v1_0.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_pitch_sequencedunitheader_udp_v1_0.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_pitch_sequencedunitheader_udp_v1_0.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_pitch_sequencedunitheader_udp_v1_0.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_pitch_sequencedunitheader_udp_v1_0.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_pitch_sequencedunitheader_udp_v1_0.message_type = {}

-- Size: Message Type
cboe_pitch_sequencedunitheader_udp_v1_0.message_type.size = 1

-- Display: Message Type
cboe_pitch_sequencedunitheader_udp_v1_0.message_type.display = function(value)
  return "Message Type: "..value
end

-- Dissect: Message Type
cboe_pitch_sequencedunitheader_udp_v1_0.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_pitch_sequencedunitheader_udp_v1_0.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_pitch_sequencedunitheader_udp_v1_0.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_pitch_sequencedunitheader_udp_v1_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Payload
cboe_pitch_sequencedunitheader_udp_v1_0.payload = {}

-- Display: Payload
cboe_pitch_sequencedunitheader_udp_v1_0.payload.display = function(value)
  return "Payload: "..value
end

-- Dissect runtime sized field: Payload
cboe_pitch_sequencedunitheader_udp_v1_0.payload.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_pitch_sequencedunitheader_udp_v1_0.payload.display(value, packet, parent, size)

  parent:add(omi_cboe_pitch_sequencedunitheader_udp_v1_0.fields.payload, range, value, display)

  return offset + size, value
end

-- Sequence
cboe_pitch_sequencedunitheader_udp_v1_0.sequence = {}

-- Size: Sequence
cboe_pitch_sequencedunitheader_udp_v1_0.sequence.size = 4

-- Display: Sequence
cboe_pitch_sequencedunitheader_udp_v1_0.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_pitch_sequencedunitheader_udp_v1_0.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_pitch_sequencedunitheader_udp_v1_0.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_pitch_sequencedunitheader_udp_v1_0.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_pitch_sequencedunitheader_udp_v1_0.fields.sequence, range, value, display)

  return offset + length, value
end

-- Unit
cboe_pitch_sequencedunitheader_udp_v1_0.unit = {}

-- Size: Unit
cboe_pitch_sequencedunitheader_udp_v1_0.unit.size = 1

-- Display: Unit
cboe_pitch_sequencedunitheader_udp_v1_0.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_pitch_sequencedunitheader_udp_v1_0.unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_pitch_sequencedunitheader_udp_v1_0.unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_pitch_sequencedunitheader_udp_v1_0.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_pitch_sequencedunitheader_udp_v1_0.fields.unit, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe Pitch SequencedUnitHeader Udp 1.0
-----------------------------------------------------------------------

-- Message Header
cboe_pitch_sequencedunitheader_udp_v1_0.message_header = {}

-- Size: Message Header
cboe_pitch_sequencedunitheader_udp_v1_0.message_header.size =
  cboe_pitch_sequencedunitheader_udp_v1_0.message_length.size + 
  cboe_pitch_sequencedunitheader_udp_v1_0.message_type.size

-- Display: Message Header
cboe_pitch_sequencedunitheader_udp_v1_0.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_pitch_sequencedunitheader_udp_v1_0.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_pitch_sequencedunitheader_udp_v1_0.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer
  index, message_type = cboe_pitch_sequencedunitheader_udp_v1_0.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_pitch_sequencedunitheader_udp_v1_0.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_pitch_sequencedunitheader_udp_v1_0.fields.message_header, buffer(offset, 0))
    local index = cboe_pitch_sequencedunitheader_udp_v1_0.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_pitch_sequencedunitheader_udp_v1_0.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_pitch_sequencedunitheader_udp_v1_0.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_pitch_sequencedunitheader_udp_v1_0.message = {}

-- Read runtime size of: Message
cboe_pitch_sequencedunitheader_udp_v1_0.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 1):le_uint()

  return message_length
end

-- Display: Message
cboe_pitch_sequencedunitheader_udp_v1_0.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_pitch_sequencedunitheader_udp_v1_0.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_pitch_sequencedunitheader_udp_v1_0.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_pitch_sequencedunitheader_udp_v1_0.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(index - 2, 1):le_uint()

  -- Runtime Size Of: Payload
  local size_of_payload = message_length - 2

  -- Payload: 0 Byte
  index, payload = cboe_pitch_sequencedunitheader_udp_v1_0.payload.dissect(buffer, index, packet, parent, size_of_payload)

  return index
end

-- Dissect: Message
cboe_pitch_sequencedunitheader_udp_v1_0.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = cboe_pitch_sequencedunitheader_udp_v1_0.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_cboe_pitch_sequencedunitheader_udp_v1_0.fields.message, buffer(offset, 0))
    local current = cboe_pitch_sequencedunitheader_udp_v1_0.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_pitch_sequencedunitheader_udp_v1_0.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_pitch_sequencedunitheader_udp_v1_0.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Heartbeat
cboe_pitch_sequencedunitheader_udp_v1_0.heartbeat = {}

-- Display: Heartbeat
cboe_pitch_sequencedunitheader_udp_v1_0.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
cboe_pitch_sequencedunitheader_udp_v1_0.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = cboe_pitch_sequencedunitheader_udp_v1_0.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
cboe_pitch_sequencedunitheader_udp_v1_0.messages = {}

-- Dissect: Messages
cboe_pitch_sequencedunitheader_udp_v1_0.messages.dissect = function(buffer, offset, packet, parent, count)
  -- Dissect Heartbeat
  if count == 0 then
    return cboe_pitch_sequencedunitheader_udp_v1_0.heartbeat.dissect(buffer, offset, packet, parent)
  end

  -- Repeating: Message
  for message_index = 1, count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 1):le_uint()

    -- Message: Struct of 2 fields
    offset = cboe_pitch_sequencedunitheader_udp_v1_0.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end
end

-- Packet Header
cboe_pitch_sequencedunitheader_udp_v1_0.packet_header = {}

-- Size: Packet Header
cboe_pitch_sequencedunitheader_udp_v1_0.packet_header.size =
  cboe_pitch_sequencedunitheader_udp_v1_0.length.size + 
  cboe_pitch_sequencedunitheader_udp_v1_0.count.size + 
  cboe_pitch_sequencedunitheader_udp_v1_0.unit.size + 
  cboe_pitch_sequencedunitheader_udp_v1_0.sequence.size

-- Display: Packet Header
cboe_pitch_sequencedunitheader_udp_v1_0.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_pitch_sequencedunitheader_udp_v1_0.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_pitch_sequencedunitheader_udp_v1_0.length.dissect(buffer, index, packet, parent)

  -- Count: 1 Byte Unsigned Fixed Width Integer
  index, count = cboe_pitch_sequencedunitheader_udp_v1_0.count.dissect(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_pitch_sequencedunitheader_udp_v1_0.unit.dissect(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = cboe_pitch_sequencedunitheader_udp_v1_0.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_pitch_sequencedunitheader_udp_v1_0.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_pitch_sequencedunitheader_udp_v1_0.fields.packet_header, buffer(offset, 0))
    local index = cboe_pitch_sequencedunitheader_udp_v1_0.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_pitch_sequencedunitheader_udp_v1_0.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_pitch_sequencedunitheader_udp_v1_0.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_pitch_sequencedunitheader_udp_v1_0.packet = {}

-- Verify required size of Udp packet
cboe_pitch_sequencedunitheader_udp_v1_0.packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_pitch_sequencedunitheader_udp_v1_0.packet_header.size
end

-- Dissect Packet
cboe_pitch_sequencedunitheader_udp_v1_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_pitch_sequencedunitheader_udp_v1_0.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Count
  local count = buffer(index - 6, 1):le_uint()

  -- Messages: Runtime Type with 2 branches
  index = cboe_pitch_sequencedunitheader_udp_v1_0.messages.dissect(buffer, index, packet, parent, count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_pitch_sequencedunitheader_udp_v1_0.init()
end

-- Dissector for Cboe Pitch SequencedUnitHeader Udp 1.0
function omi_cboe_pitch_sequencedunitheader_udp_v1_0.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_cboe_pitch_sequencedunitheader_udp_v1_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_pitch_sequencedunitheader_udp_v1_0, buffer(), omi_cboe_pitch_sequencedunitheader_udp_v1_0.description, "("..buffer:len().." Bytes)")
  return cboe_pitch_sequencedunitheader_udp_v1_0.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cboe Pitch SequencedUnitHeader Udp 1.0 (Udp)
local function omi_cboe_pitch_sequencedunitheader_udp_v1_0_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_pitch_sequencedunitheader_udp_v1_0.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_pitch_sequencedunitheader_udp_v1_0
  omi_cboe_pitch_sequencedunitheader_udp_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe Pitch SequencedUnitHeader Udp 1.0
omi_cboe_pitch_sequencedunitheader_udp_v1_0:register_heuristic("udp", omi_cboe_pitch_sequencedunitheader_udp_v1_0_udp_heuristic)

-- Register Cboe Pitch SequencedUnitHeader Udp 1.0 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_cboe_pitch_sequencedunitheader_udp_v1_0)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.0
--   Date: Sunday, September 20, 2015
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
