-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Osi Network Transport Tcp 1 Protocol
local omi_osi_network_transport_tcp_v1 = Proto("Omi.Osi.Network.Transport.Tcp.v1", "Osi Network Transport Tcp 1")

-- Protocol table
local osi_network_transport_tcp_v1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Osi Network Transport Tcp 1 Fields
omi_osi_network_transport_tcp_v1.fields.ack_flag = ProtoField.new("Ack Flag", "osi.network.transport.tcp.v1.ackflag", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0010)
omi_osi_network_transport_tcp_v1.fields.acknowledgment_number = ProtoField.new("Acknowledgment Number", "osi.network.transport.tcp.v1.acknowledgmentnumber", ftypes.UINT32)
omi_osi_network_transport_tcp_v1.fields.cwr_flag = ProtoField.new("Cwr Flag", "osi.network.transport.tcp.v1.cwrflag", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0080)
omi_osi_network_transport_tcp_v1.fields.data_offset = ProtoField.new("Data Offset", "osi.network.transport.tcp.v1.dataoffset", ftypes.UINT16, nil, base.DEC, 0xF000)
omi_osi_network_transport_tcp_v1.fields.ece_flag = ProtoField.new("Ece Flag", "osi.network.transport.tcp.v1.eceflag", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0040)
omi_osi_network_transport_tcp_v1.fields.fin_flag = ProtoField.new("Fin Flag", "osi.network.transport.tcp.v1.finflag", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0001)
omi_osi_network_transport_tcp_v1.fields.ns_flag = ProtoField.new("Ns Flag", "osi.network.transport.tcp.v1.nsflag", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0100)
omi_osi_network_transport_tcp_v1.fields.offset_and_flags = ProtoField.new("Offset And Flags", "osi.network.transport.tcp.v1.offsetandflags", ftypes.STRING)
omi_osi_network_transport_tcp_v1.fields.psh_flag = ProtoField.new("Psh Flag", "osi.network.transport.tcp.v1.pshflag", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0008)
omi_osi_network_transport_tcp_v1.fields.rst_flag = ProtoField.new("Rst Flag", "osi.network.transport.tcp.v1.rstflag", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0004)
omi_osi_network_transport_tcp_v1.fields.syn_flag = ProtoField.new("Syn Flag", "osi.network.transport.tcp.v1.synflag", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0002)
omi_osi_network_transport_tcp_v1.fields.tcp_checksum = ProtoField.new("Tcp Checksum", "osi.network.transport.tcp.v1.tcpchecksum", ftypes.UINT16)
omi_osi_network_transport_tcp_v1.fields.tcp_destination_port = ProtoField.new("Tcp Destination Port", "osi.network.transport.tcp.v1.tcpdestinationport", ftypes.UINT16)
omi_osi_network_transport_tcp_v1.fields.tcp_options = ProtoField.new("Tcp Options", "osi.network.transport.tcp.v1.tcpoptions", ftypes.BYTES)
omi_osi_network_transport_tcp_v1.fields.tcp_payload = ProtoField.new("Tcp Payload", "osi.network.transport.tcp.v1.tcppayload", ftypes.BYTES)
omi_osi_network_transport_tcp_v1.fields.tcp_reserved = ProtoField.new("Tcp Reserved", "osi.network.transport.tcp.v1.tcpreserved", ftypes.UINT16, nil, base.DEC, 0x0E00)
omi_osi_network_transport_tcp_v1.fields.tcp_sequence_number = ProtoField.new("Tcp Sequence Number", "osi.network.transport.tcp.v1.tcpsequencenumber", ftypes.UINT32)
omi_osi_network_transport_tcp_v1.fields.tcp_source_port = ProtoField.new("Tcp Source Port", "osi.network.transport.tcp.v1.tcpsourceport", ftypes.UINT16)
omi_osi_network_transport_tcp_v1.fields.urg_flag = ProtoField.new("Urg Flag", "osi.network.transport.tcp.v1.urgflag", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0020)
omi_osi_network_transport_tcp_v1.fields.urgent_pointer = ProtoField.new("Urgent Pointer", "osi.network.transport.tcp.v1.urgentpointer", ftypes.UINT16)
omi_osi_network_transport_tcp_v1.fields.window_size = ProtoField.new("Window Size", "osi.network.transport.tcp.v1.windowsize", ftypes.UINT16)

-- Osi Network Transport Tcp 1 Framing
omi_osi_network_transport_tcp_v1.fields.tcp_segment = ProtoField.new("Tcp Segment", "osi.network.transport.tcp.v1.tcpsegment", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Osi Network Transport Tcp 1 Element Dissection Options
show.structs = true

-- Register Osi Network Transport Tcp 1 Show Options
omi_osi_network_transport_tcp_v1.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")

-- Handle changed preferences
function omi_osi_network_transport_tcp_v1.prefs_changed()

  -- Check if preferences have changed
  if show.structs ~= omi_osi_network_transport_tcp_v1.prefs.show_structs then
    show.structs = omi_osi_network_transport_tcp_v1.prefs.show_structs
  end
end


-----------------------------------------------------------------------
-- Osi Network Transport Tcp 1 Fields
-----------------------------------------------------------------------

-- Acknowledgment Number
osi_network_transport_tcp_v1.acknowledgment_number = {}

-- Size: Acknowledgment Number
osi_network_transport_tcp_v1.acknowledgment_number.size = 4

-- Display: Acknowledgment Number
osi_network_transport_tcp_v1.acknowledgment_number.display = function(value)
  return "Acknowledgment Number: "..value
end

-- Dissect: Acknowledgment Number
osi_network_transport_tcp_v1.acknowledgment_number.dissect = function(buffer, offset, packet, parent)
  local length = osi_network_transport_tcp_v1.acknowledgment_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = osi_network_transport_tcp_v1.acknowledgment_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_osi_network_transport_tcp_v1.fields.acknowledgment_number, range, value, display)

  return offset + length, value
end

-- Tcp Checksum
osi_network_transport_tcp_v1.tcp_checksum = {}

-- Size: Tcp Checksum
osi_network_transport_tcp_v1.tcp_checksum.size = 2

-- Display: Tcp Checksum
osi_network_transport_tcp_v1.tcp_checksum.display = function(value)
  return "Tcp Checksum: "..value
end

-- Dissect: Tcp Checksum
osi_network_transport_tcp_v1.tcp_checksum.dissect = function(buffer, offset, packet, parent)
  local length = osi_network_transport_tcp_v1.tcp_checksum.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = osi_network_transport_tcp_v1.tcp_checksum.display(value, buffer, offset, packet, parent)

  parent:add(omi_osi_network_transport_tcp_v1.fields.tcp_checksum, range, value, display)

  return offset + length, value
end

-- Tcp Destination Port
osi_network_transport_tcp_v1.tcp_destination_port = {}

-- Size: Tcp Destination Port
osi_network_transport_tcp_v1.tcp_destination_port.size = 2

-- Display: Tcp Destination Port
osi_network_transport_tcp_v1.tcp_destination_port.display = function(value)
  return "Tcp Destination Port: "..value
end

-- Dissect: Tcp Destination Port
osi_network_transport_tcp_v1.tcp_destination_port.dissect = function(buffer, offset, packet, parent)
  local length = osi_network_transport_tcp_v1.tcp_destination_port.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = osi_network_transport_tcp_v1.tcp_destination_port.display(value, buffer, offset, packet, parent)

  parent:add(omi_osi_network_transport_tcp_v1.fields.tcp_destination_port, range, value, display)

  return offset + length, value
end

-- Tcp Options
osi_network_transport_tcp_v1.tcp_options = {}

-- Display: Tcp Options
osi_network_transport_tcp_v1.tcp_options.display = function(value)
  return "Tcp Options: "..value
end

-- Dissect runtime sized field: Tcp Options
osi_network_transport_tcp_v1.tcp_options.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = osi_network_transport_tcp_v1.tcp_options.display(value, packet, parent, size)

  parent:add(omi_osi_network_transport_tcp_v1.fields.tcp_options, range, value, display)

  return offset + size, value
end

-- Tcp Payload
osi_network_transport_tcp_v1.tcp_payload = {}

-- Display: Tcp Payload
osi_network_transport_tcp_v1.tcp_payload.display = function(value)
  return "Tcp Payload: "..value
end

-- Dissect runtime sized field: Tcp Payload
osi_network_transport_tcp_v1.tcp_payload.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = osi_network_transport_tcp_v1.tcp_payload.display(value, packet, parent, size)

  parent:add(omi_osi_network_transport_tcp_v1.fields.tcp_payload, range, value, display)

  return offset + size, value
end

-- Tcp Sequence Number
osi_network_transport_tcp_v1.tcp_sequence_number = {}

-- Size: Tcp Sequence Number
osi_network_transport_tcp_v1.tcp_sequence_number.size = 4

-- Display: Tcp Sequence Number
osi_network_transport_tcp_v1.tcp_sequence_number.display = function(value)
  return "Tcp Sequence Number: "..value
end

-- Dissect: Tcp Sequence Number
osi_network_transport_tcp_v1.tcp_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = osi_network_transport_tcp_v1.tcp_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = osi_network_transport_tcp_v1.tcp_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_osi_network_transport_tcp_v1.fields.tcp_sequence_number, range, value, display)

  return offset + length, value
end

-- Tcp Source Port
osi_network_transport_tcp_v1.tcp_source_port = {}

-- Size: Tcp Source Port
osi_network_transport_tcp_v1.tcp_source_port.size = 2

-- Display: Tcp Source Port
osi_network_transport_tcp_v1.tcp_source_port.display = function(value)
  return "Tcp Source Port: "..value
end

-- Dissect: Tcp Source Port
osi_network_transport_tcp_v1.tcp_source_port.dissect = function(buffer, offset, packet, parent)
  local length = osi_network_transport_tcp_v1.tcp_source_port.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = osi_network_transport_tcp_v1.tcp_source_port.display(value, buffer, offset, packet, parent)

  parent:add(omi_osi_network_transport_tcp_v1.fields.tcp_source_port, range, value, display)

  return offset + length, value
end

-- Urgent Pointer
osi_network_transport_tcp_v1.urgent_pointer = {}

-- Size: Urgent Pointer
osi_network_transport_tcp_v1.urgent_pointer.size = 2

-- Display: Urgent Pointer
osi_network_transport_tcp_v1.urgent_pointer.display = function(value)
  return "Urgent Pointer: "..value
end

-- Dissect: Urgent Pointer
osi_network_transport_tcp_v1.urgent_pointer.dissect = function(buffer, offset, packet, parent)
  local length = osi_network_transport_tcp_v1.urgent_pointer.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = osi_network_transport_tcp_v1.urgent_pointer.display(value, buffer, offset, packet, parent)

  parent:add(omi_osi_network_transport_tcp_v1.fields.urgent_pointer, range, value, display)

  return offset + length, value
end

-- Window Size
osi_network_transport_tcp_v1.window_size = {}

-- Size: Window Size
osi_network_transport_tcp_v1.window_size.size = 2

-- Display: Window Size
osi_network_transport_tcp_v1.window_size.display = function(value)
  return "Window Size: "..value
end

-- Dissect: Window Size
osi_network_transport_tcp_v1.window_size.dissect = function(buffer, offset, packet, parent)
  local length = osi_network_transport_tcp_v1.window_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = osi_network_transport_tcp_v1.window_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_osi_network_transport_tcp_v1.fields.window_size, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Osi Network Transport Tcp 1
-----------------------------------------------------------------------

-- Offset And Flags
osi_network_transport_tcp_v1.offset_and_flags = {}

-- Size: Offset And Flags
osi_network_transport_tcp_v1.offset_and_flags.size = 2

-- Display: Offset And Flags
osi_network_transport_tcp_v1.offset_and_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Ns Flag flag set?
  if bit.band(value, 0x0100) ~= 0 then
    flags[#flags + 1] = "Ns Flag"
  end
  -- Is Cwr Flag flag set?
  if bit.band(value, 0x0080) ~= 0 then
    flags[#flags + 1] = "Cwr Flag"
  end
  -- Is Ece Flag flag set?
  if bit.band(value, 0x0040) ~= 0 then
    flags[#flags + 1] = "Ece Flag"
  end
  -- Is Urg Flag flag set?
  if bit.band(value, 0x0020) ~= 0 then
    flags[#flags + 1] = "Urg Flag"
  end
  -- Is Ack Flag flag set?
  if bit.band(value, 0x0010) ~= 0 then
    flags[#flags + 1] = "Ack Flag"
  end
  -- Is Psh Flag flag set?
  if bit.band(value, 0x0008) ~= 0 then
    flags[#flags + 1] = "Psh Flag"
  end
  -- Is Rst Flag flag set?
  if bit.band(value, 0x0004) ~= 0 then
    flags[#flags + 1] = "Rst Flag"
  end
  -- Is Syn Flag flag set?
  if bit.band(value, 0x0002) ~= 0 then
    flags[#flags + 1] = "Syn Flag"
  end
  -- Is Fin Flag flag set?
  if bit.band(value, 0x0001) ~= 0 then
    flags[#flags + 1] = "Fin Flag"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Offset And Flags
osi_network_transport_tcp_v1.offset_and_flags.bits = function(range, value, packet, parent)

  -- Data Offset: 4 Bit
  parent:add(omi_osi_network_transport_tcp_v1.fields.data_offset, range, value)

  -- Tcp Reserved: 3 Bit
  parent:add(omi_osi_network_transport_tcp_v1.fields.tcp_reserved, range, value)

  -- Ns Flag: 1 Bit
  parent:add(omi_osi_network_transport_tcp_v1.fields.ns_flag, range, value)

  -- Cwr Flag: 1 Bit
  parent:add(omi_osi_network_transport_tcp_v1.fields.cwr_flag, range, value)

  -- Ece Flag: 1 Bit
  parent:add(omi_osi_network_transport_tcp_v1.fields.ece_flag, range, value)

  -- Urg Flag: 1 Bit
  parent:add(omi_osi_network_transport_tcp_v1.fields.urg_flag, range, value)

  -- Ack Flag: 1 Bit
  parent:add(omi_osi_network_transport_tcp_v1.fields.ack_flag, range, value)

  -- Psh Flag: 1 Bit
  parent:add(omi_osi_network_transport_tcp_v1.fields.psh_flag, range, value)

  -- Rst Flag: 1 Bit
  parent:add(omi_osi_network_transport_tcp_v1.fields.rst_flag, range, value)

  -- Syn Flag: 1 Bit
  parent:add(omi_osi_network_transport_tcp_v1.fields.syn_flag, range, value)

  -- Fin Flag: 1 Bit
  parent:add(omi_osi_network_transport_tcp_v1.fields.fin_flag, range, value)
end

-- Dissect: Offset And Flags
osi_network_transport_tcp_v1.offset_and_flags.dissect = function(buffer, offset, packet, parent)
  local size = osi_network_transport_tcp_v1.offset_and_flags.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = osi_network_transport_tcp_v1.offset_and_flags.display(range, value, packet, parent)
  local element = parent:add(omi_osi_network_transport_tcp_v1.fields.offset_and_flags, range, display)

  if show.structs then
    osi_network_transport_tcp_v1.offset_and_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Tcp Segment
osi_network_transport_tcp_v1.tcp_segment = {}

-- Verify required size of Ip packet
osi_network_transport_tcp_v1.tcp_segment.requiredsize = function(buffer)
  return buffer:len() >= osi_network_transport_tcp_v1.tcp_source_port.size + osi_network_transport_tcp_v1.tcp_destination_port.size + osi_network_transport_tcp_v1.tcp_sequence_number.size + osi_network_transport_tcp_v1.acknowledgment_number.size + osi_network_transport_tcp_v1.offset_and_flags.size + osi_network_transport_tcp_v1.window_size.size + osi_network_transport_tcp_v1.tcp_checksum.size + osi_network_transport_tcp_v1.urgent_pointer.size
end

-- Dissect Tcp Segment
osi_network_transport_tcp_v1.tcp_segment.dissect = function(buffer, packet, parent)
  local index = 0

  -- Tcp Source Port: 2 Byte Unsigned Fixed Width Integer
  index, tcp_source_port = osi_network_transport_tcp_v1.tcp_source_port.dissect(buffer, index, packet, parent)

  -- Tcp Destination Port: 2 Byte Unsigned Fixed Width Integer
  index, tcp_destination_port = osi_network_transport_tcp_v1.tcp_destination_port.dissect(buffer, index, packet, parent)

  -- Tcp Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, tcp_sequence_number = osi_network_transport_tcp_v1.tcp_sequence_number.dissect(buffer, index, packet, parent)

  -- Acknowledgment Number: 4 Byte Unsigned Fixed Width Integer
  index, acknowledgment_number = osi_network_transport_tcp_v1.acknowledgment_number.dissect(buffer, index, packet, parent)

  -- Offset And Flags: Struct of 11 fields
  index, offset_and_flags = osi_network_transport_tcp_v1.offset_and_flags.dissect(buffer, index, packet, parent)

  -- Window Size: 2 Byte Unsigned Fixed Width Integer
  index, window_size = osi_network_transport_tcp_v1.window_size.dissect(buffer, index, packet, parent)

  -- Tcp Checksum: 2 Byte Unsigned Fixed Width Integer
  index, tcp_checksum = osi_network_transport_tcp_v1.tcp_checksum.dissect(buffer, index, packet, parent)

  -- Urgent Pointer: 2 Byte Unsigned Fixed Width Integer
  index, urgent_pointer = osi_network_transport_tcp_v1.urgent_pointer.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Tcp Options
  local size_of_tcp_options = data_offset * 4 - 20

  -- Tcp Options: 0 Byte
  index, tcp_options = osi_network_transport_tcp_v1.tcp_options.dissect(buffer, index, packet, parent, size_of_tcp_options)

  -- Dependency for Tcp Payload
  local end_of_payload = buffer:len()

  -- Tcp Payload: 0 Byte
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1
    index, tcp_payload = osi_network_transport_tcp_v1.tcp_payload.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_osi_network_transport_tcp_v1.init()
end

-- Dissector for Osi Network Transport Tcp 1
function omi_osi_network_transport_tcp_v1.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_osi_network_transport_tcp_v1.name

  -- Dissect protocol
  local protocol = parent:add(omi_osi_network_transport_tcp_v1, buffer(), omi_osi_network_transport_tcp_v1.description, "("..buffer:len().." Bytes)")
  return osi_network_transport_tcp_v1.tcp_segment.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Osi Network Transport Tcp 1 (Ip)
local function omi_osi_network_transport_tcp_v1_ip_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not osi_network_transport_tcp_v1.tcp_segment.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_osi_network_transport_tcp_v1
  omi_osi_network_transport_tcp_v1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Osi Network Transport Tcp 1
omi_osi_network_transport_tcp_v1:register_heuristic("ip", omi_osi_network_transport_tcp_v1_ip_heuristic)

-- Register Osi Network Transport Tcp 1 for Decode As
local ip_table = DissectorTable.get("ip.port")
ip_table:add_for_decode_as(omi_osi_network_transport_tcp_v1)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Open Systems Interconnection
--   Version: 1
--   Date: Monday, October 5, 2026
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
