-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Memx MemxEquities CommonHeader Udp 1.1 Protocol
local omi_memx_memxequities_commonheader_udp_v1_1 = Proto("Omi.Memx.MemxEquities.CommonHeader.Udp.v1.1", "Memx MemxEquities CommonHeader Udp 1.1")

-- Protocol table
local memx_memxequities_commonheader_udp_v1_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Memx MemxEquities CommonHeader Udp 1.1 Fields
omi_memx_memxequities_commonheader_udp_v1_1.fields.header_length = ProtoField.new("Header Length", "memx.memxequities.commonheader.udp.v1.1.headerlength", ftypes.UINT8)
omi_memx_memxequities_commonheader_udp_v1_1.fields.message = ProtoField.new("Message", "memx.memxequities.commonheader.udp.v1.1.message", ftypes.STRING)
omi_memx_memxequities_commonheader_udp_v1_1.fields.message_count = ProtoField.new("Message Count", "memx.memxequities.commonheader.udp.v1.1.messagecount", ftypes.UINT16)
omi_memx_memxequities_commonheader_udp_v1_1.fields.message_length = ProtoField.new("Message Length", "memx.memxequities.commonheader.udp.v1.1.messagelength", ftypes.UINT16)
omi_memx_memxequities_commonheader_udp_v1_1.fields.message_type = ProtoField.new("Message Type", "memx.memxequities.commonheader.udp.v1.1.messagetype", ftypes.UINT8)
omi_memx_memxequities_commonheader_udp_v1_1.fields.sbe_message = ProtoField.new("Sbe Message", "memx.memxequities.commonheader.udp.v1.1.sbemessage", ftypes.BYTES)
omi_memx_memxequities_commonheader_udp_v1_1.fields.sequence_number = ProtoField.new("Sequence Number", "memx.memxequities.commonheader.udp.v1.1.sequencenumber", ftypes.UINT64)
omi_memx_memxequities_commonheader_udp_v1_1.fields.sequenced_message = ProtoField.new("Sequenced Message", "memx.memxequities.commonheader.udp.v1.1.sequencedmessage", ftypes.STRING)
omi_memx_memxequities_commonheader_udp_v1_1.fields.session_id = ProtoField.new("Session Id", "memx.memxequities.commonheader.udp.v1.1.sessionid", ftypes.UINT64)

-- Memx MemxEquities CommonHeader Udp 1.1 Headers
omi_memx_memxequities_commonheader_udp_v1_1.fields.common_header = ProtoField.new("Common Header", "memx.memxequities.commonheader.udp.v1.1.commonheader", ftypes.STRING)
omi_memx_memxequities_commonheader_udp_v1_1.fields.packet = ProtoField.new("Packet", "memx.memxequities.commonheader.udp.v1.1.packet", ftypes.STRING)

-- Memx MemxEquities CommonHeader Udp 1.1 generated fields
omi_memx_memxequities_commonheader_udp_v1_1.fields.message_index = ProtoField.new("Message Index", "memx.memxequities.commonheader.udp.v1.1.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Memx MemxEquities CommonHeader Udp 1.1 Element Dissection Options
show.structs = true
show.indexes = true

-- Register Memx MemxEquities CommonHeader Udp 1.1 Show Options
omi_memx_memxequities_commonheader_udp_v1_1.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_memx_memxequities_commonheader_udp_v1_1.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

-- Handle changed preferences
function omi_memx_memxequities_commonheader_udp_v1_1.prefs_changed()

  -- Check if preferences have changed
  if show.structs ~= omi_memx_memxequities_commonheader_udp_v1_1.prefs.show_structs then
    show.structs = omi_memx_memxequities_commonheader_udp_v1_1.prefs.show_structs
  end
  if show.indexes ~= omi_memx_memxequities_commonheader_udp_v1_1.prefs.show_indexes then
    show.indexes = omi_memx_memxequities_commonheader_udp_v1_1.prefs.show_indexes
  end
end


-----------------------------------------------------------------------
-- Memx MemxEquities CommonHeader Udp 1.1 Fields
-----------------------------------------------------------------------

-- Header Length
memx_memxequities_commonheader_udp_v1_1.header_length = {}

-- Size: Header Length
memx_memxequities_commonheader_udp_v1_1.header_length.size = 1

-- Display: Header Length
memx_memxequities_commonheader_udp_v1_1.header_length.display = function(value)
  return "Header Length: "..value
end

-- Dissect: Header Length
memx_memxequities_commonheader_udp_v1_1.header_length.dissect = function(buffer, offset, packet, parent)
  local length = memx_memxequities_commonheader_udp_v1_1.header_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_memxequities_commonheader_udp_v1_1.header_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_memxequities_commonheader_udp_v1_1.fields.header_length, range, value, display)

  return offset + length, value
end

-- Message Count
memx_memxequities_commonheader_udp_v1_1.message_count = {}

-- Size: Message Count
memx_memxequities_commonheader_udp_v1_1.message_count.size = 2

-- Display: Message Count
memx_memxequities_commonheader_udp_v1_1.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
memx_memxequities_commonheader_udp_v1_1.message_count.dissect = function(buffer, offset, packet, parent)
  local length = memx_memxequities_commonheader_udp_v1_1.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_memxequities_commonheader_udp_v1_1.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_memxequities_commonheader_udp_v1_1.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
memx_memxequities_commonheader_udp_v1_1.message_length = {}

-- Size: Message Length
memx_memxequities_commonheader_udp_v1_1.message_length.size = 2

-- Display: Message Length
memx_memxequities_commonheader_udp_v1_1.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
memx_memxequities_commonheader_udp_v1_1.message_length.dissect = function(buffer, offset, packet, parent)
  local length = memx_memxequities_commonheader_udp_v1_1.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_memxequities_commonheader_udp_v1_1.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_memxequities_commonheader_udp_v1_1.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
memx_memxequities_commonheader_udp_v1_1.message_type = {}

-- Size: Message Type
memx_memxequities_commonheader_udp_v1_1.message_type.size = 1

-- Display: Message Type
memx_memxequities_commonheader_udp_v1_1.message_type.display = function(value)
  if value == 0 then
    return "Message Type: Heartbeat Message (0)"
  end
  if value == 1 then
    return "Message Type: Session Shutdown Message (1)"
  end
  if value == 2 then
    return "Message Type: Sequenced Message (2)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
memx_memxequities_commonheader_udp_v1_1.message_type.dissect = function(buffer, offset, packet, parent)
  local length = memx_memxequities_commonheader_udp_v1_1.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_memxequities_commonheader_udp_v1_1.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_memxequities_commonheader_udp_v1_1.fields.message_type, range, value, display)

  return offset + length, value
end

-- Sbe Message
memx_memxequities_commonheader_udp_v1_1.sbe_message = {}

-- Display: Sbe Message
memx_memxequities_commonheader_udp_v1_1.sbe_message.display = function(value)
  return "Sbe Message: "..value
end

-- Dissect runtime sized field: Sbe Message
memx_memxequities_commonheader_udp_v1_1.sbe_message.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = memx_memxequities_commonheader_udp_v1_1.sbe_message.display(value, packet, parent, size)

  parent:add(omi_memx_memxequities_commonheader_udp_v1_1.fields.sbe_message, range, value, display)

  return offset + size, value
end

-- Sequence Number
memx_memxequities_commonheader_udp_v1_1.sequence_number = {}

-- Size: Sequence Number
memx_memxequities_commonheader_udp_v1_1.sequence_number.size = 8

-- Display: Sequence Number
memx_memxequities_commonheader_udp_v1_1.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
memx_memxequities_commonheader_udp_v1_1.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = memx_memxequities_commonheader_udp_v1_1.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_memxequities_commonheader_udp_v1_1.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_memxequities_commonheader_udp_v1_1.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session Id
memx_memxequities_commonheader_udp_v1_1.session_id = {}

-- Size: Session Id
memx_memxequities_commonheader_udp_v1_1.session_id.size = 8

-- Display: Session Id
memx_memxequities_commonheader_udp_v1_1.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
memx_memxequities_commonheader_udp_v1_1.session_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_memxequities_commonheader_udp_v1_1.session_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_memxequities_commonheader_udp_v1_1.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_memxequities_commonheader_udp_v1_1.fields.session_id, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Memx MemxEquities CommonHeader Udp 1.1
-----------------------------------------------------------------------

-- Message
memx_memxequities_commonheader_udp_v1_1.message = {}

-- Display: Message
memx_memxequities_commonheader_udp_v1_1.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
memx_memxequities_commonheader_udp_v1_1.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_memx_memxequities_commonheader_udp_v1_1.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = memx_memxequities_commonheader_udp_v1_1.message_length.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Sbe Message
  local size_of_sbe_message = offset + size_of_message - index

  -- Sbe Message: 0 Byte
  index, sbe_message = memx_memxequities_commonheader_udp_v1_1.sbe_message.dissect(buffer, index, packet, parent, size_of_sbe_message)

  return index
end

-- Dissect: Message
memx_memxequities_commonheader_udp_v1_1.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_memx_memxequities_commonheader_udp_v1_1.fields.message, buffer(offset, 0))
    local current = memx_memxequities_commonheader_udp_v1_1.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = memx_memxequities_commonheader_udp_v1_1.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    memx_memxequities_commonheader_udp_v1_1.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Sequenced Message
memx_memxequities_commonheader_udp_v1_1.sequenced_message = {}

-- Size: Sequenced Message
memx_memxequities_commonheader_udp_v1_1.sequenced_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index)
end

-- Display: Sequenced Message
memx_memxequities_commonheader_udp_v1_1.sequenced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Message
memx_memxequities_commonheader_udp_v1_1.sequenced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = memx_memxequities_commonheader_udp_v1_1.message_count.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    index, message = memx_memxequities_commonheader_udp_v1_1.message.dissect(buffer, index, packet, parent, size_of_message, message_index)
  end

  return index
end

-- Dissect: Sequenced Message
memx_memxequities_commonheader_udp_v1_1.sequenced_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_memxequities_commonheader_udp_v1_1.fields.sequenced_message, buffer(offset, 0))
    local index = memx_memxequities_commonheader_udp_v1_1.sequenced_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_memxequities_commonheader_udp_v1_1.sequenced_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_memxequities_commonheader_udp_v1_1.sequenced_message.fields(buffer, offset, packet, parent)
  end
end

-- Session Shutdown
memx_memxequities_commonheader_udp_v1_1.session_shutdown = {}

-- Display: Session Shutdown
memx_memxequities_commonheader_udp_v1_1.session_shutdown.display = function(packet, parent, length)
  return "Session Shutdown"
end


-- Dissect: Session Shutdown
memx_memxequities_commonheader_udp_v1_1.session_shutdown.dissect = function(buffer, offset, packet, parent)
  local display = memx_memxequities_commonheader_udp_v1_1.session_shutdown.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Heartbeat
memx_memxequities_commonheader_udp_v1_1.heartbeat = {}

-- Display: Heartbeat
memx_memxequities_commonheader_udp_v1_1.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
memx_memxequities_commonheader_udp_v1_1.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = memx_memxequities_commonheader_udp_v1_1.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Sequenced Messages
memx_memxequities_commonheader_udp_v1_1.sequenced_messages = {}

-- Dissect: Sequenced Messages
memx_memxequities_commonheader_udp_v1_1.sequenced_messages.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Heartbeat
  if message_type == 0 then
    return memx_memxequities_commonheader_udp_v1_1.heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Session Shutdown
  if message_type == 1 then
    return memx_memxequities_commonheader_udp_v1_1.session_shutdown.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Message
  if message_type == 2 then
    return memx_memxequities_commonheader_udp_v1_1.sequenced_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Common Header
memx_memxequities_commonheader_udp_v1_1.common_header = {}

-- Size: Common Header
memx_memxequities_commonheader_udp_v1_1.common_header.size =
  memx_memxequities_commonheader_udp_v1_1.message_type.size + 
  memx_memxequities_commonheader_udp_v1_1.header_length.size + 
  memx_memxequities_commonheader_udp_v1_1.session_id.size + 
  memx_memxequities_commonheader_udp_v1_1.sequence_number.size

-- Display: Common Header
memx_memxequities_commonheader_udp_v1_1.common_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Common Header
memx_memxequities_commonheader_udp_v1_1.common_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, message_type = memx_memxequities_commonheader_udp_v1_1.message_type.dissect(buffer, index, packet, parent)

  -- Header Length: 1 Byte Unsigned Fixed Width Integer
  index, header_length = memx_memxequities_commonheader_udp_v1_1.header_length.dissect(buffer, index, packet, parent)

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = memx_memxequities_commonheader_udp_v1_1.session_id.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = memx_memxequities_commonheader_udp_v1_1.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Common Header
memx_memxequities_commonheader_udp_v1_1.common_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_memxequities_commonheader_udp_v1_1.fields.common_header, buffer(offset, 0))
    local index = memx_memxequities_commonheader_udp_v1_1.common_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_memxequities_commonheader_udp_v1_1.common_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_memxequities_commonheader_udp_v1_1.common_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
memx_memxequities_commonheader_udp_v1_1.packet = {}

-- Verify required size of Udp packet
memx_memxequities_commonheader_udp_v1_1.packet.requiredsize = function(buffer)
  return buffer:len() >= memx_memxequities_commonheader_udp_v1_1.common_header.size
end

-- Dissect Packet
memx_memxequities_commonheader_udp_v1_1.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Common Header: Struct of 4 fields
  index, common_header = memx_memxequities_commonheader_udp_v1_1.common_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 18, 1):uint()

  -- Sequenced Messages: Runtime Type with 3 branches
  index = memx_memxequities_commonheader_udp_v1_1.sequenced_messages.dissect(buffer, index, packet, parent, message_type)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_memx_memxequities_commonheader_udp_v1_1.init()
end

-- Dissector for Memx MemxEquities CommonHeader Udp 1.1
function omi_memx_memxequities_commonheader_udp_v1_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_memx_memxequities_commonheader_udp_v1_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_memx_memxequities_commonheader_udp_v1_1, buffer(), omi_memx_memxequities_commonheader_udp_v1_1.description, "("..buffer:len().." Bytes)")
  return memx_memxequities_commonheader_udp_v1_1.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Memx MemxEquities CommonHeader Udp 1.1 (Udp)
local function omi_memx_memxequities_commonheader_udp_v1_1_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not memx_memxequities_commonheader_udp_v1_1.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_memx_memxequities_commonheader_udp_v1_1
  omi_memx_memxequities_commonheader_udp_v1_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Memx MemxEquities CommonHeader Udp 1.1
omi_memx_memxequities_commonheader_udp_v1_1:register_heuristic("udp", omi_memx_memxequities_commonheader_udp_v1_1_udp_heuristic)

-- Register Memx MemxEquities CommonHeader Udp 1.1 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_memx_memxequities_commonheader_udp_v1_1)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: The Members Exchange
--   Version: 1.1
--   Date: Thursday, October 23, 2025
--   Specification: MEMX-UDP-v1_1.pdf
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
