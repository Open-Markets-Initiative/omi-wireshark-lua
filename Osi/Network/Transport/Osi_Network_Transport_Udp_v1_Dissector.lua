-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Osi Network Transport Udp 1 Protocol
local omi_osi_network_transport_udp_v1 = Proto("Omi.Osi.Network.Transport.Udp.v1", "Osi Network Transport Udp 1")

-- Protocol table
local osi_network_transport_udp_v1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Osi Network Transport Udp 1 Fields
omi_osi_network_transport_udp_v1.fields.udp_checksum = ProtoField.new("Udp Checksum", "osi.network.transport.udp.v1.udpchecksum", ftypes.UINT16)
omi_osi_network_transport_udp_v1.fields.udp_destination_port = ProtoField.new("Udp Destination Port", "osi.network.transport.udp.v1.udpdestinationport", ftypes.UINT16)
omi_osi_network_transport_udp_v1.fields.udp_length = ProtoField.new("Udp Length", "osi.network.transport.udp.v1.udplength", ftypes.UINT16)
omi_osi_network_transport_udp_v1.fields.udp_payload = ProtoField.new("Udp Payload", "osi.network.transport.udp.v1.udppayload", ftypes.BYTES)
omi_osi_network_transport_udp_v1.fields.udp_source_port = ProtoField.new("Udp Source Port", "osi.network.transport.udp.v1.udpsourceport", ftypes.UINT16)

-- Osi Network Transport Udp 1 Framing
omi_osi_network_transport_udp_v1.fields.udp_datagram = ProtoField.new("Udp Datagram", "osi.network.transport.udp.v1.udpdatagram", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Osi Network Transport Udp 1 Element Dissection Options
show.structs = true

-- Register Osi Network Transport Udp 1 Show Options
omi_osi_network_transport_udp_v1.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")

-- Handle changed preferences
function omi_osi_network_transport_udp_v1.prefs_changed()

  -- Check if preferences have changed
  if show.structs ~= omi_osi_network_transport_udp_v1.prefs.show_structs then
    show.structs = omi_osi_network_transport_udp_v1.prefs.show_structs
  end
end


-----------------------------------------------------------------------
-- Osi Network Transport Udp 1 Fields
-----------------------------------------------------------------------

-- Udp Checksum
osi_network_transport_udp_v1.udp_checksum = {}

-- Size: Udp Checksum
osi_network_transport_udp_v1.udp_checksum.size = 2

-- Display: Udp Checksum
osi_network_transport_udp_v1.udp_checksum.display = function(value)
  return "Udp Checksum: "..value
end

-- Dissect: Udp Checksum
osi_network_transport_udp_v1.udp_checksum.dissect = function(buffer, offset, packet, parent)
  local length = osi_network_transport_udp_v1.udp_checksum.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = osi_network_transport_udp_v1.udp_checksum.display(value, buffer, offset, packet, parent)

  parent:add(omi_osi_network_transport_udp_v1.fields.udp_checksum, range, value, display)

  return offset + length, value
end

-- Udp Destination Port
osi_network_transport_udp_v1.udp_destination_port = {}

-- Size: Udp Destination Port
osi_network_transport_udp_v1.udp_destination_port.size = 2

-- Display: Udp Destination Port
osi_network_transport_udp_v1.udp_destination_port.display = function(value)
  return "Udp Destination Port: "..value
end

-- Dissect: Udp Destination Port
osi_network_transport_udp_v1.udp_destination_port.dissect = function(buffer, offset, packet, parent)
  local length = osi_network_transport_udp_v1.udp_destination_port.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = osi_network_transport_udp_v1.udp_destination_port.display(value, buffer, offset, packet, parent)

  parent:add(omi_osi_network_transport_udp_v1.fields.udp_destination_port, range, value, display)

  return offset + length, value
end

-- Udp Length
osi_network_transport_udp_v1.udp_length = {}

-- Size: Udp Length
osi_network_transport_udp_v1.udp_length.size = 2

-- Display: Udp Length
osi_network_transport_udp_v1.udp_length.display = function(value)
  return "Udp Length: "..value
end

-- Dissect: Udp Length
osi_network_transport_udp_v1.udp_length.dissect = function(buffer, offset, packet, parent)
  local length = osi_network_transport_udp_v1.udp_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = osi_network_transport_udp_v1.udp_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_osi_network_transport_udp_v1.fields.udp_length, range, value, display)

  return offset + length, value
end

-- Udp Payload
osi_network_transport_udp_v1.udp_payload = {}

-- Display: Udp Payload
osi_network_transport_udp_v1.udp_payload.display = function(value)
  return "Udp Payload: "..value
end

-- Dissect runtime sized field: Udp Payload
osi_network_transport_udp_v1.udp_payload.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = osi_network_transport_udp_v1.udp_payload.display(value, packet, parent, size)

  parent:add(omi_osi_network_transport_udp_v1.fields.udp_payload, range, value, display)

  return offset + size, value
end

-- Udp Source Port
osi_network_transport_udp_v1.udp_source_port = {}

-- Size: Udp Source Port
osi_network_transport_udp_v1.udp_source_port.size = 2

-- Display: Udp Source Port
osi_network_transport_udp_v1.udp_source_port.display = function(value)
  return "Udp Source Port: "..value
end

-- Dissect: Udp Source Port
osi_network_transport_udp_v1.udp_source_port.dissect = function(buffer, offset, packet, parent)
  local length = osi_network_transport_udp_v1.udp_source_port.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = osi_network_transport_udp_v1.udp_source_port.display(value, buffer, offset, packet, parent)

  parent:add(omi_osi_network_transport_udp_v1.fields.udp_source_port, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Osi Network Transport Udp 1
-----------------------------------------------------------------------

-- Udp Datagram
osi_network_transport_udp_v1.udp_datagram = {}

-- Verify required size of Ip packet
osi_network_transport_udp_v1.udp_datagram.requiredsize = function(buffer)
  return buffer:len() >= osi_network_transport_udp_v1.udp_source_port.size + osi_network_transport_udp_v1.udp_destination_port.size + osi_network_transport_udp_v1.udp_length.size + osi_network_transport_udp_v1.udp_checksum.size
end

-- Dissect Udp Datagram
osi_network_transport_udp_v1.udp_datagram.dissect = function(buffer, packet, parent)
  local index = 0

  -- Udp Source Port: 2 Byte Unsigned Fixed Width Integer
  index, udp_source_port = osi_network_transport_udp_v1.udp_source_port.dissect(buffer, index, packet, parent)

  -- Udp Destination Port: 2 Byte Unsigned Fixed Width Integer
  index, udp_destination_port = osi_network_transport_udp_v1.udp_destination_port.dissect(buffer, index, packet, parent)

  -- Udp Length: 2 Byte Unsigned Fixed Width Integer
  index, udp_length = osi_network_transport_udp_v1.udp_length.dissect(buffer, index, packet, parent)

  -- Udp Checksum: 2 Byte Unsigned Fixed Width Integer
  index, udp_checksum = osi_network_transport_udp_v1.udp_checksum.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Udp Payload
  local size_of_udp_payload = udp_length - 8

  -- Udp Payload: 0 Byte
  index, udp_payload = osi_network_transport_udp_v1.udp_payload.dissect(buffer, index, packet, parent, size_of_udp_payload)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_osi_network_transport_udp_v1.init()
end

-- Dissector for Osi Network Transport Udp 1
function omi_osi_network_transport_udp_v1.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_osi_network_transport_udp_v1.name

  -- Dissect protocol
  local protocol = parent:add(omi_osi_network_transport_udp_v1, buffer(), omi_osi_network_transport_udp_v1.description, "("..buffer:len().." Bytes)")
  return osi_network_transport_udp_v1.udp_datagram.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Osi Network Transport Udp 1 (Ip)
local function omi_osi_network_transport_udp_v1_ip_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not osi_network_transport_udp_v1.udp_datagram.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_osi_network_transport_udp_v1
  omi_osi_network_transport_udp_v1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Osi Network Transport Udp 1
omi_osi_network_transport_udp_v1:register_heuristic("ip", omi_osi_network_transport_udp_v1_ip_heuristic)

-- Register Osi Network Transport Udp 1 for Decode As
local ip_table = DissectorTable.get("ip.port")
ip_table:add_for_decode_as(omi_osi_network_transport_udp_v1)

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
