-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- A2X A2XEquities TcpHeader Atp 1 Protocol
local omi_a2x_a2xequities_tcpheader_atp_v1 = Proto("Omi.A2X.A2XEquities.TcpHeader.Atp.v1", "A2X A2XEquities TcpHeader Atp 1")

-- Protocol table
local a2x_a2xequities_tcpheader_atp_v1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- A2X A2XEquities TcpHeader Atp 1 Fields
omi_a2x_a2xequities_tcpheader_atp_v1.fields.length = ProtoField.new("Length", "a2x.a2xequities.tcpheader.atp.v1.length", ftypes.UINT16, nil, nil, nil, "Length of message including this header")
omi_a2x_a2xequities_tcpheader_atp_v1.fields.msg_seq_no = ProtoField.new("Msg Seq No", "a2x.a2xequities.tcpheader.atp.v1.msgseqno", ftypes.UINT32, nil, nil, nil, "Message sequence number from the user or A2X")
omi_a2x_a2xequities_tcpheader_atp_v1.fields.msg_type = ProtoField.new("Msg Type", "a2x.a2xequities.tcpheader.atp.v1.msgtype", ftypes.UINT8, nil, nil, nil, "Message type")
omi_a2x_a2xequities_tcpheader_atp_v1.fields.payload = ProtoField.new("Payload", "a2x.a2xequities.tcpheader.atp.v1.payload", ftypes.BYTES)

-- A2X A2XEquities TcpHeader Atp 1 Framing
omi_a2x_a2xequities_tcpheader_atp_v1.fields.message = ProtoField.new("Message", "a2x.a2xequities.tcpheader.atp.v1.message", ftypes.STRING, nil, nil, nil, "A2X Atp Message")
omi_a2x_a2xequities_tcpheader_atp_v1.fields.message_header = ProtoField.new("Message Header", "a2x.a2xequities.tcpheader.atp.v1.messageheader", ftypes.STRING, nil, nil, nil, "A2X Atp message header")
omi_a2x_a2xequities_tcpheader_atp_v1.fields.packet = ProtoField.new("Packet", "a2x.a2xequities.tcpheader.atp.v1.packet", ftypes.STRING, nil, nil, nil, "A2X Atp Tcp Message Block")

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- A2X A2XEquities TcpHeader Atp 1 Element Dissection Options
show.structs = true
show.headers = true

-- Register A2X A2XEquities TcpHeader Atp 1 Show Options
omi_a2x_a2xequities_tcpheader_atp_v1.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_a2x_a2xequities_tcpheader_atp_v1.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")

-- Handle changed preferences
function omi_a2x_a2xequities_tcpheader_atp_v1.prefs_changed()

  -- Check if preferences have changed
  if show.headers ~= omi_a2x_a2xequities_tcpheader_atp_v1.prefs.show_headers then
    show.headers = omi_a2x_a2xequities_tcpheader_atp_v1.prefs.show_headers
  end
  if show.structs ~= omi_a2x_a2xequities_tcpheader_atp_v1.prefs.show_structs then
    show.structs = omi_a2x_a2xequities_tcpheader_atp_v1.prefs.show_structs
  end
end


-----------------------------------------------------------------------
-- A2X A2XEquities TcpHeader Atp 1 Fields
-----------------------------------------------------------------------

-- Length
a2x_a2xequities_tcpheader_atp_v1.length = {}

-- Size: Length
a2x_a2xequities_tcpheader_atp_v1.length.size = 2

-- Display: Length
a2x_a2xequities_tcpheader_atp_v1.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
a2x_a2xequities_tcpheader_atp_v1.length.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_tcpheader_atp_v1.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_a2xequities_tcpheader_atp_v1.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_tcpheader_atp_v1.fields.length, range, value, display)

  return offset + length, value
end

-- Msg Seq No
a2x_a2xequities_tcpheader_atp_v1.msg_seq_no = {}

-- Size: Msg Seq No
a2x_a2xequities_tcpheader_atp_v1.msg_seq_no.size = 4

-- Display: Msg Seq No
a2x_a2xequities_tcpheader_atp_v1.msg_seq_no.display = function(value)
  return "Msg Seq No: "..value
end

-- Dissect: Msg Seq No
a2x_a2xequities_tcpheader_atp_v1.msg_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_tcpheader_atp_v1.msg_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = a2x_a2xequities_tcpheader_atp_v1.msg_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_tcpheader_atp_v1.fields.msg_seq_no, range, value, display)

  return offset + length, value
end

-- Msg Type
a2x_a2xequities_tcpheader_atp_v1.msg_type = {}

-- Size: Msg Type
a2x_a2xequities_tcpheader_atp_v1.msg_type.size = 1

-- Display: Msg Type
a2x_a2xequities_tcpheader_atp_v1.msg_type.display = function(value)
  return "Msg Type: "..value
end

-- Dissect: Msg Type
a2x_a2xequities_tcpheader_atp_v1.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_tcpheader_atp_v1.msg_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = a2x_a2xequities_tcpheader_atp_v1.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_tcpheader_atp_v1.fields.msg_type, range, value, display)

  return offset + length, value
end

-- Payload
a2x_a2xequities_tcpheader_atp_v1.payload = {}

-- Display: Payload
a2x_a2xequities_tcpheader_atp_v1.payload.display = function(value)
  return "Payload: "..value
end

-- Dissect runtime sized field: Payload
a2x_a2xequities_tcpheader_atp_v1.payload.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = a2x_a2xequities_tcpheader_atp_v1.payload.display(value, packet, parent, size)

  parent:add(omi_a2x_a2xequities_tcpheader_atp_v1.fields.payload, range, value, display)

  return offset + size, value
end


-----------------------------------------------------------------------
-- Dissect A2X A2XEquities TcpHeader Atp 1
-----------------------------------------------------------------------

-- Message Header
a2x_a2xequities_tcpheader_atp_v1.message_header = {}

-- Size: Message Header
a2x_a2xequities_tcpheader_atp_v1.message_header.size =
  a2x_a2xequities_tcpheader_atp_v1.length.size + 
  a2x_a2xequities_tcpheader_atp_v1.msg_type.size + 
  a2x_a2xequities_tcpheader_atp_v1.msg_seq_no.size

-- Display: Message Header
a2x_a2xequities_tcpheader_atp_v1.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
a2x_a2xequities_tcpheader_atp_v1.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = a2x_a2xequities_tcpheader_atp_v1.length.dissect(buffer, index, packet, parent)

  -- Msg Type: 1 Byte Unsigned Fixed Width Integer
  index, msg_type = a2x_a2xequities_tcpheader_atp_v1.msg_type.dissect(buffer, index, packet, parent)

  -- Msg Seq No: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_no = a2x_a2xequities_tcpheader_atp_v1.msg_seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
a2x_a2xequities_tcpheader_atp_v1.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_a2x_a2xequities_tcpheader_atp_v1.fields.message_header, buffer(offset, 0))
    local index = a2x_a2xequities_tcpheader_atp_v1.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_a2xequities_tcpheader_atp_v1.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return a2x_a2xequities_tcpheader_atp_v1.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
a2x_a2xequities_tcpheader_atp_v1.message = {}

-- Display: Message
a2x_a2xequities_tcpheader_atp_v1.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
a2x_a2xequities_tcpheader_atp_v1.message.fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = a2x_a2xequities_tcpheader_atp_v1.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Length
  local length = buffer(index - 7, 2):le_uint()

  -- Runtime Size Of: Payload
  local size_of_payload = length - 7

  -- Payload: 0 Byte
  index, payload = a2x_a2xequities_tcpheader_atp_v1.payload.dissect(buffer, index, packet, parent, size_of_payload)

  return index
end

-- Dissect: Message
a2x_a2xequities_tcpheader_atp_v1.message.dissect = function(buffer, offset, packet, parent, size_of_message)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_a2x_a2xequities_tcpheader_atp_v1.fields.message, buffer(offset, 0))
    local current = a2x_a2xequities_tcpheader_atp_v1.message.fields(buffer, offset, packet, parent, size_of_message)
    parent:set_len(size_of_message)
    local display = a2x_a2xequities_tcpheader_atp_v1.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    a2x_a2xequities_tcpheader_atp_v1.message.fields(buffer, offset, packet, parent, size_of_message)

    return index
  end
end

-- Remaining Bytes For: Message
local message_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < a2x_a2xequities_tcpheader_atp_v1.message_header.size then
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
a2x_a2xequities_tcpheader_atp_v1.packet = {}

-- Verify required size of Tcp packet
a2x_a2xequities_tcpheader_atp_v1.packet.requiredsize = function(buffer)
  return buffer:len() >= a2x_a2xequities_tcpheader_atp_v1.message_header.size
end

-- Dissect Packet
a2x_a2xequities_tcpheader_atp_v1.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_message = message_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_message):tvb()
      index = a2x_a2xequities_tcpheader_atp_v1.message.dissect(frame, index, packet, parent, size_of_message)
    else
      -- More bytes needed, so set packet information
      packet.desegment_offset = index
      packet.desegment_len = -(available)

      -- Claim the whole buffer: tcp keeps the bytes from desegment_offset for reassembly
      return end_of_payload
    end
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_a2x_a2xequities_tcpheader_atp_v1.init()
end

-- Dissector for A2X A2XEquities TcpHeader Atp 1
function omi_a2x_a2xequities_tcpheader_atp_v1.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_a2x_a2xequities_tcpheader_atp_v1.name

  -- Dissect protocol
  local protocol = parent:add(omi_a2x_a2xequities_tcpheader_atp_v1, buffer(), omi_a2x_a2xequities_tcpheader_atp_v1.description, "("..buffer:len().." Bytes)")
  return a2x_a2xequities_tcpheader_atp_v1.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for A2X A2XEquities TcpHeader Atp 1 (Tcp)
local function omi_a2x_a2xequities_tcpheader_atp_v1_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not a2x_a2xequities_tcpheader_atp_v1.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_a2x_a2xequities_tcpheader_atp_v1
  omi_a2x_a2xequities_tcpheader_atp_v1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for A2X A2XEquities TcpHeader Atp 1
omi_a2x_a2xequities_tcpheader_atp_v1:register_heuristic("tcp", omi_a2x_a2xequities_tcpheader_atp_v1_tcp_heuristic)

-- Register A2X A2XEquities TcpHeader Atp 1 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_a2x_a2xequities_tcpheader_atp_v1)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: A2X Markets
--   Version: 1
--   Date: Tuesday, August 1, 2017
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
