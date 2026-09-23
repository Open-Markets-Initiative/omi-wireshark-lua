-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Txse TxseEquities Framing Udp 1.0 Protocol
local omi_txse_txseequities_framing_udp_v1_0 = Proto("Omi.Txse.TxseEquities.Framing.Udp.v1.0", "Txse TxseEquities Framing Udp 1.0")

-- Protocol table
local txse_txseequities_framing_udp_v1_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Txse TxseEquities Framing Udp 1.0 Fields
omi_txse_txseequities_framing_udp_v1_0.fields.message_count = ProtoField.new("Message Count", "txse.txseequities.framing.udp.v1.0.messagecount", ftypes.UINT16)
omi_txse_txseequities_framing_udp_v1_0.fields.message_length = ProtoField.new("Message Length", "txse.txseequities.framing.udp.v1.0.messagelength", ftypes.UINT16)
omi_txse_txseequities_framing_udp_v1_0.fields.message_type = ProtoField.new("Message Type", "txse.txseequities.framing.udp.v1.0.messagetype", ftypes.UINT8)
omi_txse_txseequities_framing_udp_v1_0.fields.packet_type = ProtoField.new("Packet Type", "txse.txseequities.framing.udp.v1.0.packettype", ftypes.UINT8)
omi_txse_txseequities_framing_udp_v1_0.fields.payload = ProtoField.new("Payload", "txse.txseequities.framing.udp.v1.0.payload", ftypes.BYTES)
omi_txse_txseequities_framing_udp_v1_0.fields.sequence = ProtoField.new("Sequence", "txse.txseequities.framing.udp.v1.0.sequence", ftypes.UINT64)
omi_txse_txseequities_framing_udp_v1_0.fields.session = ProtoField.new("Session", "txse.txseequities.framing.udp.v1.0.session", ftypes.UINT64)
omi_txse_txseequities_framing_udp_v1_0.fields.stream_id = ProtoField.new("Stream Id", "txse.txseequities.framing.udp.v1.0.streamid", ftypes.UINT8)

-- Txse TxseEquities Framing Udp 1.0 Framing
omi_txse_txseequities_framing_udp_v1_0.fields.packet = ProtoField.new("Packet", "txse.txseequities.framing.udp.v1.0.packet", ftypes.STRING)
omi_txse_txseequities_framing_udp_v1_0.fields.udp_header = ProtoField.new("Udp Header", "txse.txseequities.framing.udp.v1.0.udpheader", ftypes.STRING)
omi_txse_txseequities_framing_udp_v1_0.fields.udp_sequenced_message = ProtoField.new("Udp Sequenced Message", "txse.txseequities.framing.udp.v1.0.udpsequencedmessage", ftypes.STRING)

-- Txse TxseEquities Framing Udp 1.0 Generated Fields
omi_txse_txseequities_framing_udp_v1_0.fields.udp_sequenced_message_index = ProtoField.new("Udp Sequenced Message Index", "txse.txseequities.framing.udp.v1.0.udpsequencedmessageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Txse TxseEquities Framing Udp 1.0 Element Dissection Options
show.structs = true
show.headers = true
show.indexes = true

-- Register Txse TxseEquities Framing Udp 1.0 Show Options
omi_txse_txseequities_framing_udp_v1_0.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_txse_txseequities_framing_udp_v1_0.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_txse_txseequities_framing_udp_v1_0.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

-- Handle changed preferences
function omi_txse_txseequities_framing_udp_v1_0.prefs_changed()

  -- Check if preferences have changed
  if show.headers ~= omi_txse_txseequities_framing_udp_v1_0.prefs.show_headers then
    show.headers = omi_txse_txseequities_framing_udp_v1_0.prefs.show_headers
  end
  if show.structs ~= omi_txse_txseequities_framing_udp_v1_0.prefs.show_structs then
    show.structs = omi_txse_txseequities_framing_udp_v1_0.prefs.show_structs
  end
  if show.indexes ~= omi_txse_txseequities_framing_udp_v1_0.prefs.show_indexes then
    show.indexes = omi_txse_txseequities_framing_udp_v1_0.prefs.show_indexes
  end
end


-----------------------------------------------------------------------
-- Txse TxseEquities Framing Udp 1.0 Fields
-----------------------------------------------------------------------

-- Message Count
txse_txseequities_framing_udp_v1_0.message_count = {}

-- Size: Message Count
txse_txseequities_framing_udp_v1_0.message_count.size = 2

-- Display: Message Count
txse_txseequities_framing_udp_v1_0.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
txse_txseequities_framing_udp_v1_0.message_count.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_framing_udp_v1_0.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = txse_txseequities_framing_udp_v1_0.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_framing_udp_v1_0.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
txse_txseequities_framing_udp_v1_0.message_length = {}

-- Size: Message Length
txse_txseequities_framing_udp_v1_0.message_length.size = 2

-- Display: Message Length
txse_txseequities_framing_udp_v1_0.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
txse_txseequities_framing_udp_v1_0.message_length.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_framing_udp_v1_0.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = txse_txseequities_framing_udp_v1_0.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_framing_udp_v1_0.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
txse_txseequities_framing_udp_v1_0.message_type = {}

-- Size: Message Type
txse_txseequities_framing_udp_v1_0.message_type.size = 1

-- Display: Message Type
txse_txseequities_framing_udp_v1_0.message_type.display = function(value)
  return "Message Type: "..value
end

-- Dissect: Message Type
txse_txseequities_framing_udp_v1_0.message_type.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_framing_udp_v1_0.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = txse_txseequities_framing_udp_v1_0.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_framing_udp_v1_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Packet Type
txse_txseequities_framing_udp_v1_0.packet_type = {}

-- Size: Packet Type
txse_txseequities_framing_udp_v1_0.packet_type.size = 1

-- Display: Packet Type
txse_txseequities_framing_udp_v1_0.packet_type.display = function(value)
  if value == 0 then
    return "Packet Type: Sequenced Data (0)"
  end
  if value == 1 then
    return "Packet Type: Heartbeat (1)"
  end
  if value == 2 then
    return "Packet Type: Start Of Session (2)"
  end
  if value == 3 then
    return "Packet Type: End Of Session (3)"
  end
  if value == 4 then
    return "Packet Type: Gap Fill Request (4)"
  end
  if value == 5 then
    return "Packet Type: Gap Fill Response (5)"
  end

  return "Packet Type: Unknown("..value..")"
end

-- Dissect: Packet Type
txse_txseequities_framing_udp_v1_0.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_framing_udp_v1_0.packet_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = txse_txseequities_framing_udp_v1_0.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_framing_udp_v1_0.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Payload
txse_txseequities_framing_udp_v1_0.payload = {}

-- Display: Payload
txse_txseequities_framing_udp_v1_0.payload.display = function(value)
  return "Payload: "..value
end

-- Dissect runtime sized field: Payload
txse_txseequities_framing_udp_v1_0.payload.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = txse_txseequities_framing_udp_v1_0.payload.display(value, packet, parent, size)

  parent:add(omi_txse_txseequities_framing_udp_v1_0.fields.payload, range, value, display)

  return offset + size, value
end

-- Sequence
txse_txseequities_framing_udp_v1_0.sequence = {}

-- Size: Sequence
txse_txseequities_framing_udp_v1_0.sequence.size = 8

-- Display: Sequence
txse_txseequities_framing_udp_v1_0.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
txse_txseequities_framing_udp_v1_0.sequence.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_framing_udp_v1_0.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = txse_txseequities_framing_udp_v1_0.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_framing_udp_v1_0.fields.sequence, range, value, display)

  return offset + length, value
end

-- Session
txse_txseequities_framing_udp_v1_0.session = {}

-- Size: Session
txse_txseequities_framing_udp_v1_0.session.size = 8

-- Display: Session
txse_txseequities_framing_udp_v1_0.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
txse_txseequities_framing_udp_v1_0.session.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_framing_udp_v1_0.session.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = txse_txseequities_framing_udp_v1_0.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_framing_udp_v1_0.fields.session, range, value, display)

  return offset + length, value
end

-- Stream Id
txse_txseequities_framing_udp_v1_0.stream_id = {}

-- Size: Stream Id
txse_txseequities_framing_udp_v1_0.stream_id.size = 1

-- Display: Stream Id
txse_txseequities_framing_udp_v1_0.stream_id.display = function(value)
  return "Stream Id: "..value
end

-- Dissect: Stream Id
txse_txseequities_framing_udp_v1_0.stream_id.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_framing_udp_v1_0.stream_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = txse_txseequities_framing_udp_v1_0.stream_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_framing_udp_v1_0.fields.stream_id, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Txse TxseEquities Framing Udp 1.0
-----------------------------------------------------------------------

-- Udp Sequenced Message
txse_txseequities_framing_udp_v1_0.udp_sequenced_message = {}

-- Display: Udp Sequenced Message
txse_txseequities_framing_udp_v1_0.udp_sequenced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Udp Sequenced Message
txse_txseequities_framing_udp_v1_0.udp_sequenced_message.fields = function(buffer, offset, packet, parent, size_of_udp_sequenced_message, udp_sequenced_message_index)
  local index = offset

  -- Implicit Udp Sequenced Message Index
  if udp_sequenced_message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_txse_txseequities_framing_udp_v1_0.fields.udp_sequenced_message_index, udp_sequenced_message_index)
    iteration:set_generated()
  end

  -- Message Length: Short
  index, message_length = txse_txseequities_framing_udp_v1_0.message_length.dissect(buffer, index, packet, parent)

  -- Stream Id: Byte
  index, stream_id = txse_txseequities_framing_udp_v1_0.stream_id.dissect(buffer, index, packet, parent)

  -- Message Type: Byte
  index, message_type = txse_txseequities_framing_udp_v1_0.message_type.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Payload
  local size_of_payload = message_length - 2

  -- Payload: 0 Byte
  index, payload = txse_txseequities_framing_udp_v1_0.payload.dissect(buffer, index, packet, parent, size_of_payload)

  return index
end

-- Dissect: Udp Sequenced Message
txse_txseequities_framing_udp_v1_0.udp_sequenced_message.dissect = function(buffer, offset, packet, parent, size_of_udp_sequenced_message, udp_sequenced_message_index)
  local index = offset + size_of_udp_sequenced_message

  -- Optionally add group/struct element to protocol tree
  if show.headers then
    parent = parent:add(omi_txse_txseequities_framing_udp_v1_0.fields.udp_sequenced_message, buffer(offset, 0))
    local current = txse_txseequities_framing_udp_v1_0.udp_sequenced_message.fields(buffer, offset, packet, parent, size_of_udp_sequenced_message, udp_sequenced_message_index)
    parent:set_len(size_of_udp_sequenced_message)
    local display = txse_txseequities_framing_udp_v1_0.udp_sequenced_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    txse_txseequities_framing_udp_v1_0.udp_sequenced_message.fields(buffer, offset, packet, parent, size_of_udp_sequenced_message, udp_sequenced_message_index)

    return index
  end
end

-- Udp Header
txse_txseequities_framing_udp_v1_0.udp_header = {}

-- Size: Udp Header
txse_txseequities_framing_udp_v1_0.udp_header.size =
  txse_txseequities_framing_udp_v1_0.session.size + 
  txse_txseequities_framing_udp_v1_0.sequence.size + 
  txse_txseequities_framing_udp_v1_0.message_count.size + 
  txse_txseequities_framing_udp_v1_0.packet_type.size

-- Display: Udp Header
txse_txseequities_framing_udp_v1_0.udp_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Udp Header
txse_txseequities_framing_udp_v1_0.udp_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: Long
  index, session = txse_txseequities_framing_udp_v1_0.session.dissect(buffer, index, packet, parent)

  -- Sequence: Long
  index, sequence = txse_txseequities_framing_udp_v1_0.sequence.dissect(buffer, index, packet, parent)

  -- Message Count: Short
  index, message_count = txse_txseequities_framing_udp_v1_0.message_count.dissect(buffer, index, packet, parent)

  -- Packet Type: Enum
  index, packet_type = txse_txseequities_framing_udp_v1_0.packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Udp Header
txse_txseequities_framing_udp_v1_0.udp_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_txse_txseequities_framing_udp_v1_0.fields.udp_header, buffer(offset, 0))
    local index = txse_txseequities_framing_udp_v1_0.udp_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = txse_txseequities_framing_udp_v1_0.udp_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return txse_txseequities_framing_udp_v1_0.udp_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
txse_txseequities_framing_udp_v1_0.packet = {}

-- Verify required size of Udp packet
txse_txseequities_framing_udp_v1_0.packet.requiredsize = function(buffer)
  return buffer:len() >= txse_txseequities_framing_udp_v1_0.udp_header.size
end

-- Dissect Packet
txse_txseequities_framing_udp_v1_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Udp Header: Struct of 4 fields
  index, udp_header = txse_txseequities_framing_udp_v1_0.udp_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 3, 2):le_uint()

  -- Repeating: Udp Sequenced Message
  for udp_sequenced_message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):le_uint()

    -- Runtime Size Of: Udp Sequenced Message
    local size_of_udp_sequenced_message = message_length + 2

    -- Udp Sequenced Message: Struct of 4 fields
    index, udp_sequenced_message = txse_txseequities_framing_udp_v1_0.udp_sequenced_message.dissect(buffer, index, packet, parent, size_of_udp_sequenced_message, udp_sequenced_message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_txse_txseequities_framing_udp_v1_0.init()
end

-- Dissector for Txse TxseEquities Framing Udp 1.0
function omi_txse_txseequities_framing_udp_v1_0.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_txse_txseequities_framing_udp_v1_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_txse_txseequities_framing_udp_v1_0, buffer(), omi_txse_txseequities_framing_udp_v1_0.description, "("..buffer:len().." Bytes)")
  return txse_txseequities_framing_udp_v1_0.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Txse TxseEquities Framing Udp 1.0 (Udp)
local function omi_txse_txseequities_framing_udp_v1_0_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not txse_txseequities_framing_udp_v1_0.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_txse_txseequities_framing_udp_v1_0
  omi_txse_txseequities_framing_udp_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Txse TxseEquities Framing Udp 1.0
omi_txse_txseequities_framing_udp_v1_0:register_heuristic("udp", omi_txse_txseequities_framing_udp_v1_0_udp_heuristic)

-- Register Txse TxseEquities Framing Udp 1.0 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_txse_txseequities_framing_udp_v1_0)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Texas Stock Exchange
--   Version: 1.0
--   Date: Friday, June 12, 2026
--   Specification: RAKE.pdf
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
