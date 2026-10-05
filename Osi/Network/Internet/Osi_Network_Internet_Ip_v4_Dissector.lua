-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Osi Network Internet Ip 4 Protocol
local omi_osi_network_internet_ip_v4 = Proto("Omi.Osi.Network.Internet.Ip.v4", "Osi Network Internet Ip 4")

-- Protocol table
local osi_network_internet_ip_v4 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Osi Network Internet Ip 4 Fields
omi_osi_network_internet_ip_v4.fields.congestion_notification = ProtoField.new("Congestion Notification", "osi.network.internet.ip.v4.congestionnotification", ftypes.UINT8, nil, base.DEC, 0x03)
omi_osi_network_internet_ip_v4.fields.destination_address = ProtoField.new("Destination Address", "osi.network.internet.ip.v4.destinationaddress", ftypes.UINT32)
omi_osi_network_internet_ip_v4.fields.differentiated_services = ProtoField.new("Differentiated Services", "osi.network.internet.ip.v4.differentiatedservices", ftypes.UINT8, nil, base.DEC, 0xFC)
omi_osi_network_internet_ip_v4.fields.dont_fragment = ProtoField.new("Dont Fragment", "osi.network.internet.ip.v4.dontfragment", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x4000)
omi_osi_network_internet_ip_v4.fields.fragment_offset = ProtoField.new("Fragment Offset", "osi.network.internet.ip.v4.fragmentoffset", ftypes.UINT16, nil, base.DEC, 0x1FFF)
omi_osi_network_internet_ip_v4.fields.fragmentation = ProtoField.new("Fragmentation", "osi.network.internet.ip.v4.fragmentation", ftypes.STRING)
omi_osi_network_internet_ip_v4.fields.identification = ProtoField.new("Identification", "osi.network.internet.ip.v4.identification", ftypes.UINT16)
omi_osi_network_internet_ip_v4.fields.ip_header_checksum = ProtoField.new("Ip Header Checksum", "osi.network.internet.ip.v4.ipheaderchecksum", ftypes.UINT16)
omi_osi_network_internet_ip_v4.fields.ip_header_length = ProtoField.new("Ip Header Length", "osi.network.internet.ip.v4.ipheaderlength", ftypes.UINT8, nil, base.DEC, 0x0F)
omi_osi_network_internet_ip_v4.fields.ip_options = ProtoField.new("Ip Options", "osi.network.internet.ip.v4.ipoptions", ftypes.BYTES)
omi_osi_network_internet_ip_v4.fields.ip_payload = ProtoField.new("Ip Payload", "osi.network.internet.ip.v4.ippayload", ftypes.BYTES)
omi_osi_network_internet_ip_v4.fields.ip_protocol = ProtoField.new("Ip Protocol", "osi.network.internet.ip.v4.ipprotocol", ftypes.UINT8)
omi_osi_network_internet_ip_v4.fields.ip_reserved = ProtoField.new("Ip Reserved", "osi.network.internet.ip.v4.ipreserved", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x8000)
omi_osi_network_internet_ip_v4.fields.ip_version = ProtoField.new("Ip Version", "osi.network.internet.ip.v4.ipversion", ftypes.UINT8, nil, base.DEC, 0xF0)
omi_osi_network_internet_ip_v4.fields.more_fragments = ProtoField.new("More Fragments", "osi.network.internet.ip.v4.morefragments", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x2000)
omi_osi_network_internet_ip_v4.fields.source_address = ProtoField.new("Source Address", "osi.network.internet.ip.v4.sourceaddress", ftypes.UINT32)
omi_osi_network_internet_ip_v4.fields.time_to_live = ProtoField.new("Time To Live", "osi.network.internet.ip.v4.timetolive", ftypes.UINT8)
omi_osi_network_internet_ip_v4.fields.total_length = ProtoField.new("Total Length", "osi.network.internet.ip.v4.totallength", ftypes.UINT16)
omi_osi_network_internet_ip_v4.fields.type_of_service = ProtoField.new("Type Of Service", "osi.network.internet.ip.v4.typeofservice", ftypes.STRING)
omi_osi_network_internet_ip_v4.fields.version_and_header_length = ProtoField.new("Version And Header Length", "osi.network.internet.ip.v4.versionandheaderlength", ftypes.STRING)

-- Osi Network Internet Ip 4 Framing
omi_osi_network_internet_ip_v4.fields.ip_packet = ProtoField.new("Ip Packet", "osi.network.internet.ip.v4.ippacket", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Osi Network Internet Ip 4 Element Dissection Options
show.structs = true

-- Register Osi Network Internet Ip 4 Show Options
omi_osi_network_internet_ip_v4.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")

-- Handle changed preferences
function omi_osi_network_internet_ip_v4.prefs_changed()

  -- Check if preferences have changed
  if show.structs ~= omi_osi_network_internet_ip_v4.prefs.show_structs then
    show.structs = omi_osi_network_internet_ip_v4.prefs.show_structs
  end
end


-----------------------------------------------------------------------
-- Osi Network Internet Ip 4 Fields
-----------------------------------------------------------------------

-- Destination Address
osi_network_internet_ip_v4.destination_address = {}

-- Size: Destination Address
osi_network_internet_ip_v4.destination_address.size = 4

-- Display: Destination Address
osi_network_internet_ip_v4.destination_address.display = function(value)
  return "Destination Address: "..value
end

-- Dissect: Destination Address
osi_network_internet_ip_v4.destination_address.dissect = function(buffer, offset, packet, parent)
  local length = osi_network_internet_ip_v4.destination_address.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = osi_network_internet_ip_v4.destination_address.display(value, buffer, offset, packet, parent)

  parent:add(omi_osi_network_internet_ip_v4.fields.destination_address, range, value, display)

  return offset + length, value
end

-- Identification
osi_network_internet_ip_v4.identification = {}

-- Size: Identification
osi_network_internet_ip_v4.identification.size = 2

-- Display: Identification
osi_network_internet_ip_v4.identification.display = function(value)
  return "Identification: "..value
end

-- Dissect: Identification
osi_network_internet_ip_v4.identification.dissect = function(buffer, offset, packet, parent)
  local length = osi_network_internet_ip_v4.identification.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = osi_network_internet_ip_v4.identification.display(value, buffer, offset, packet, parent)

  parent:add(omi_osi_network_internet_ip_v4.fields.identification, range, value, display)

  return offset + length, value
end

-- Ip Header Checksum
osi_network_internet_ip_v4.ip_header_checksum = {}

-- Size: Ip Header Checksum
osi_network_internet_ip_v4.ip_header_checksum.size = 2

-- Display: Ip Header Checksum
osi_network_internet_ip_v4.ip_header_checksum.display = function(value)
  return "Ip Header Checksum: "..value
end

-- Dissect: Ip Header Checksum
osi_network_internet_ip_v4.ip_header_checksum.dissect = function(buffer, offset, packet, parent)
  local length = osi_network_internet_ip_v4.ip_header_checksum.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = osi_network_internet_ip_v4.ip_header_checksum.display(value, buffer, offset, packet, parent)

  parent:add(omi_osi_network_internet_ip_v4.fields.ip_header_checksum, range, value, display)

  return offset + length, value
end

-- Ip Options
osi_network_internet_ip_v4.ip_options = {}

-- Display: Ip Options
osi_network_internet_ip_v4.ip_options.display = function(value)
  return "Ip Options: "..value
end

-- Dissect runtime sized field: Ip Options
osi_network_internet_ip_v4.ip_options.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = osi_network_internet_ip_v4.ip_options.display(value, packet, parent, size)

  parent:add(omi_osi_network_internet_ip_v4.fields.ip_options, range, value, display)

  return offset + size, value
end

-- Ip Payload
osi_network_internet_ip_v4.ip_payload = {}

-- Display: Ip Payload
osi_network_internet_ip_v4.ip_payload.display = function(value)
  return "Ip Payload: "..value
end

-- Dissect runtime sized field: Ip Payload
osi_network_internet_ip_v4.ip_payload.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = osi_network_internet_ip_v4.ip_payload.display(value, packet, parent, size)

  parent:add(omi_osi_network_internet_ip_v4.fields.ip_payload, range, value, display)

  return offset + size, value
end

-- Ip Protocol
osi_network_internet_ip_v4.ip_protocol = {}

-- Size: Ip Protocol
osi_network_internet_ip_v4.ip_protocol.size = 1

-- Display: Ip Protocol
osi_network_internet_ip_v4.ip_protocol.display = function(value)
  if value == 1 then
    return "Ip Protocol: Icmp (1)"
  end
  if value == 2 then
    return "Ip Protocol: Igmp (2)"
  end
  if value == 6 then
    return "Ip Protocol: Tcp (6)"
  end
  if value == 17 then
    return "Ip Protocol: Udp (17)"
  end

  return "Ip Protocol: Unknown("..value..")"
end

-- Dissect: Ip Protocol
osi_network_internet_ip_v4.ip_protocol.dissect = function(buffer, offset, packet, parent)
  local length = osi_network_internet_ip_v4.ip_protocol.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = osi_network_internet_ip_v4.ip_protocol.display(value, buffer, offset, packet, parent)

  parent:add(omi_osi_network_internet_ip_v4.fields.ip_protocol, range, value, display)

  return offset + length, value
end

-- Source Address
osi_network_internet_ip_v4.source_address = {}

-- Size: Source Address
osi_network_internet_ip_v4.source_address.size = 4

-- Display: Source Address
osi_network_internet_ip_v4.source_address.display = function(value)
  return "Source Address: "..value
end

-- Dissect: Source Address
osi_network_internet_ip_v4.source_address.dissect = function(buffer, offset, packet, parent)
  local length = osi_network_internet_ip_v4.source_address.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = osi_network_internet_ip_v4.source_address.display(value, buffer, offset, packet, parent)

  parent:add(omi_osi_network_internet_ip_v4.fields.source_address, range, value, display)

  return offset + length, value
end

-- Time To Live
osi_network_internet_ip_v4.time_to_live = {}

-- Size: Time To Live
osi_network_internet_ip_v4.time_to_live.size = 1

-- Display: Time To Live
osi_network_internet_ip_v4.time_to_live.display = function(value)
  return "Time To Live: "..value
end

-- Dissect: Time To Live
osi_network_internet_ip_v4.time_to_live.dissect = function(buffer, offset, packet, parent)
  local length = osi_network_internet_ip_v4.time_to_live.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = osi_network_internet_ip_v4.time_to_live.display(value, buffer, offset, packet, parent)

  parent:add(omi_osi_network_internet_ip_v4.fields.time_to_live, range, value, display)

  return offset + length, value
end

-- Total Length
osi_network_internet_ip_v4.total_length = {}

-- Size: Total Length
osi_network_internet_ip_v4.total_length.size = 2

-- Display: Total Length
osi_network_internet_ip_v4.total_length.display = function(value)
  return "Total Length: "..value
end

-- Dissect: Total Length
osi_network_internet_ip_v4.total_length.dissect = function(buffer, offset, packet, parent)
  local length = osi_network_internet_ip_v4.total_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = osi_network_internet_ip_v4.total_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_osi_network_internet_ip_v4.fields.total_length, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Osi Network Internet Ip 4
-----------------------------------------------------------------------

-- Fragmentation
osi_network_internet_ip_v4.fragmentation = {}

-- Size: Fragmentation
osi_network_internet_ip_v4.fragmentation.size = 2

-- Display: Fragmentation
osi_network_internet_ip_v4.fragmentation.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Ip Reserved flag set?
  if bit.band(value, 0x8000) ~= 0 then
    flags[#flags + 1] = "Ip Reserved"
  end
  -- Is Dont Fragment flag set?
  if bit.band(value, 0x4000) ~= 0 then
    flags[#flags + 1] = "Dont Fragment"
  end
  -- Is More Fragments flag set?
  if bit.band(value, 0x2000) ~= 0 then
    flags[#flags + 1] = "More Fragments"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Fragmentation
osi_network_internet_ip_v4.fragmentation.bits = function(range, value, packet, parent)

  -- Ip Reserved: 1 Bit
  parent:add(omi_osi_network_internet_ip_v4.fields.ip_reserved, range, value)

  -- Dont Fragment: 1 Bit
  parent:add(omi_osi_network_internet_ip_v4.fields.dont_fragment, range, value)

  -- More Fragments: 1 Bit
  parent:add(omi_osi_network_internet_ip_v4.fields.more_fragments, range, value)

  -- Fragment Offset: 13 Bit
  parent:add(omi_osi_network_internet_ip_v4.fields.fragment_offset, range, value)
end

-- Dissect: Fragmentation
osi_network_internet_ip_v4.fragmentation.dissect = function(buffer, offset, packet, parent)
  local size = osi_network_internet_ip_v4.fragmentation.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = osi_network_internet_ip_v4.fragmentation.display(range, value, packet, parent)
  local element = parent:add(omi_osi_network_internet_ip_v4.fields.fragmentation, range, display)

  if show.structs then
    osi_network_internet_ip_v4.fragmentation.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Type Of Service
osi_network_internet_ip_v4.type_of_service = {}

-- Size: Type Of Service
osi_network_internet_ip_v4.type_of_service.size = 1

-- Display: Type Of Service
osi_network_internet_ip_v4.type_of_service.display = function(range, value, packet, parent)
  local flags = {}


  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Type Of Service
osi_network_internet_ip_v4.type_of_service.bits = function(range, value, packet, parent)

  -- Differentiated Services: 6 Bit
  parent:add(omi_osi_network_internet_ip_v4.fields.differentiated_services, range, value)

  -- Congestion Notification: 2 Bit
  parent:add(omi_osi_network_internet_ip_v4.fields.congestion_notification, range, value)
end

-- Dissect: Type Of Service
osi_network_internet_ip_v4.type_of_service.dissect = function(buffer, offset, packet, parent)
  local size = osi_network_internet_ip_v4.type_of_service.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = osi_network_internet_ip_v4.type_of_service.display(range, value, packet, parent)
  local element = parent:add(omi_osi_network_internet_ip_v4.fields.type_of_service, range, display)

  if show.structs then
    osi_network_internet_ip_v4.type_of_service.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Version And Header Length
osi_network_internet_ip_v4.version_and_header_length = {}

-- Size: Version And Header Length
osi_network_internet_ip_v4.version_and_header_length.size = 1

-- Display: Version And Header Length
osi_network_internet_ip_v4.version_and_header_length.display = function(range, value, packet, parent)
  local flags = {}


  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Version And Header Length
osi_network_internet_ip_v4.version_and_header_length.bits = function(range, value, packet, parent)

  -- Ip Version: 4 Bit
  parent:add(omi_osi_network_internet_ip_v4.fields.ip_version, range, value)

  -- Ip Header Length: 4 Bit
  parent:add(omi_osi_network_internet_ip_v4.fields.ip_header_length, range, value)
end

-- Dissect: Version And Header Length
osi_network_internet_ip_v4.version_and_header_length.dissect = function(buffer, offset, packet, parent)
  local size = osi_network_internet_ip_v4.version_and_header_length.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = osi_network_internet_ip_v4.version_and_header_length.display(range, value, packet, parent)
  local element = parent:add(omi_osi_network_internet_ip_v4.fields.version_and_header_length, range, display)

  if show.structs then
    osi_network_internet_ip_v4.version_and_header_length.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Ip Packet
osi_network_internet_ip_v4.ip_packet = {}

-- Verify required size of Ethernet packet
osi_network_internet_ip_v4.ip_packet.requiredsize = function(buffer)
  return buffer:len() >= osi_network_internet_ip_v4.version_and_header_length.size + osi_network_internet_ip_v4.type_of_service.size + osi_network_internet_ip_v4.total_length.size + osi_network_internet_ip_v4.identification.size + osi_network_internet_ip_v4.fragmentation.size + osi_network_internet_ip_v4.time_to_live.size + osi_network_internet_ip_v4.ip_protocol.size + osi_network_internet_ip_v4.ip_header_checksum.size + osi_network_internet_ip_v4.source_address.size + osi_network_internet_ip_v4.destination_address.size
end

-- Dissect Ip Packet
osi_network_internet_ip_v4.ip_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Version And Header Length: Struct of 2 fields
  index, version_and_header_length = osi_network_internet_ip_v4.version_and_header_length.dissect(buffer, index, packet, parent)

  -- Type Of Service: Struct of 2 fields
  index, type_of_service = osi_network_internet_ip_v4.type_of_service.dissect(buffer, index, packet, parent)

  -- Total Length: 2 Byte Unsigned Fixed Width Integer
  index, total_length = osi_network_internet_ip_v4.total_length.dissect(buffer, index, packet, parent)

  -- Identification: 2 Byte Unsigned Fixed Width Integer
  index, identification = osi_network_internet_ip_v4.identification.dissect(buffer, index, packet, parent)

  -- Fragmentation: Struct of 4 fields
  index, fragmentation = osi_network_internet_ip_v4.fragmentation.dissect(buffer, index, packet, parent)

  -- Time To Live: 1 Byte Unsigned Fixed Width Integer
  index, time_to_live = osi_network_internet_ip_v4.time_to_live.dissect(buffer, index, packet, parent)

  -- Ip Protocol: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, ip_protocol = osi_network_internet_ip_v4.ip_protocol.dissect(buffer, index, packet, parent)

  -- Ip Header Checksum: 2 Byte Unsigned Fixed Width Integer
  index, ip_header_checksum = osi_network_internet_ip_v4.ip_header_checksum.dissect(buffer, index, packet, parent)

  -- Source Address: 4 Byte Unsigned Fixed Width Integer
  index, source_address = osi_network_internet_ip_v4.source_address.dissect(buffer, index, packet, parent)

  -- Destination Address: 4 Byte Unsigned Fixed Width Integer
  index, destination_address = osi_network_internet_ip_v4.destination_address.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Ip Options
  local size_of_ip_options = ip_header_length * 4 - 20

  -- Ip Options: 0 Byte
  index, ip_options = osi_network_internet_ip_v4.ip_options.dissect(buffer, index, packet, parent, size_of_ip_options)

  -- Dependency for Ip Payload
  local end_of_payload = buffer:len()

  -- Ip Payload: 0 Byte
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1
    index, ip_payload = osi_network_internet_ip_v4.ip_payload.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_osi_network_internet_ip_v4.init()
end

-- Dissector for Osi Network Internet Ip 4
function omi_osi_network_internet_ip_v4.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_osi_network_internet_ip_v4.name

  -- Dissect protocol
  local protocol = parent:add(omi_osi_network_internet_ip_v4, buffer(), omi_osi_network_internet_ip_v4.description, "("..buffer:len().." Bytes)")
  return osi_network_internet_ip_v4.ip_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Osi Network Internet Ip 4 (Ethernet)
local function omi_osi_network_internet_ip_v4_ethernet_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not osi_network_internet_ip_v4.ip_packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_osi_network_internet_ip_v4
  omi_osi_network_internet_ip_v4.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Osi Network Internet Ip 4
omi_osi_network_internet_ip_v4:register_heuristic("ethernet", omi_osi_network_internet_ip_v4_ethernet_heuristic)

-- Register Osi Network Internet Ip 4 for Decode As
local ethernet_table = DissectorTable.get("ethernet.port")
ethernet_table:add_for_decode_as(omi_osi_network_internet_ip_v4)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Open Systems Interconnection
--   Version: 4
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
