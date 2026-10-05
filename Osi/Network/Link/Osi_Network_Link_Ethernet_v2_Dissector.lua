-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Osi Network Link Ethernet 2 Protocol
local omi_osi_network_link_ethernet_v2 = Proto("Omi.Osi.Network.Link.Ethernet.v2", "Osi Network Link Ethernet 2")

-- Protocol table
local osi_network_link_ethernet_v2 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Osi Network Link Ethernet 2 Fields
omi_osi_network_link_ethernet_v2.fields.destination_mac = ProtoField.new("Destination Mac", "osi.network.link.ethernet.v2.destinationmac", ftypes.BYTES)
omi_osi_network_link_ethernet_v2.fields.drop_eligible = ProtoField.new("Drop Eligible", "osi.network.link.ethernet.v2.dropeligible", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x1000)
omi_osi_network_link_ethernet_v2.fields.ether_type = ProtoField.new("Ether Type", "osi.network.link.ethernet.v2.ethertype", ftypes.UINT16)
omi_osi_network_link_ethernet_v2.fields.ethernet_payload = ProtoField.new("Ethernet Payload", "osi.network.link.ethernet.v2.ethernetpayload", ftypes.BYTES)
omi_osi_network_link_ethernet_v2.fields.inner_ether_type = ProtoField.new("Inner Ether Type", "osi.network.link.ethernet.v2.innerethertype", ftypes.UINT16)
omi_osi_network_link_ethernet_v2.fields.source_mac = ProtoField.new("Source Mac", "osi.network.link.ethernet.v2.sourcemac", ftypes.BYTES)
omi_osi_network_link_ethernet_v2.fields.tag_control = ProtoField.new("Tag Control", "osi.network.link.ethernet.v2.tagcontrol", ftypes.STRING)
omi_osi_network_link_ethernet_v2.fields.vlan_id = ProtoField.new("Vlan Id", "osi.network.link.ethernet.v2.vlanid", ftypes.UINT16, nil, base.DEC, 0x0FFF)
omi_osi_network_link_ethernet_v2.fields.vlan_priority = ProtoField.new("Vlan Priority", "osi.network.link.ethernet.v2.vlanpriority", ftypes.UINT16, nil, base.DEC, 0xE000)
omi_osi_network_link_ethernet_v2.fields.vlan_tag = ProtoField.new("Vlan Tag", "osi.network.link.ethernet.v2.vlantag", ftypes.STRING)

-- Osi Network Link Ethernet 2 Framing
omi_osi_network_link_ethernet_v2.fields.ethernet_frame = ProtoField.new("Ethernet Frame", "osi.network.link.ethernet.v2.ethernetframe", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Osi Network Link Ethernet 2 Element Dissection Options
show.structs = true

-- Register Osi Network Link Ethernet 2 Show Options
omi_osi_network_link_ethernet_v2.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")

-- Handle changed preferences
function omi_osi_network_link_ethernet_v2.prefs_changed()

  -- Check if preferences have changed
  if show.structs ~= omi_osi_network_link_ethernet_v2.prefs.show_structs then
    show.structs = omi_osi_network_link_ethernet_v2.prefs.show_structs
  end
end


-----------------------------------------------------------------------
-- Osi Network Link Ethernet 2 Fields
-----------------------------------------------------------------------

-- Destination Mac
osi_network_link_ethernet_v2.destination_mac = {}

-- Size: Destination Mac
osi_network_link_ethernet_v2.destination_mac.size = 6

-- Display: Destination Mac
osi_network_link_ethernet_v2.destination_mac.display = function(value)
  return "Destination Mac: "..value
end

-- Dissect: Destination Mac
osi_network_link_ethernet_v2.destination_mac.dissect = function(buffer, offset, packet, parent)
  local length = osi_network_link_ethernet_v2.destination_mac.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = osi_network_link_ethernet_v2.destination_mac.display(value, buffer, offset, packet, parent)

  parent:add(omi_osi_network_link_ethernet_v2.fields.destination_mac, range, value, display)

  return offset + length, value
end

-- Ether Type
osi_network_link_ethernet_v2.ether_type = {}

-- Size: Ether Type
osi_network_link_ethernet_v2.ether_type.size = 2

-- Display: Ether Type
osi_network_link_ethernet_v2.ether_type.display = function(value)
  if value == 2048 then
    return "Ether Type: Ipv4 (2048)"
  end
  if value == 2054 then
    return "Ether Type: Arp (2054)"
  end
  if value == 33024 then
    return "Ether Type: Vlan (33024)"
  end
  if value == 34525 then
    return "Ether Type: Ipv6 (34525)"
  end

  return "Ether Type: Unknown("..value..")"
end

-- Dissect: Ether Type
osi_network_link_ethernet_v2.ether_type.dissect = function(buffer, offset, packet, parent)
  local length = osi_network_link_ethernet_v2.ether_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = osi_network_link_ethernet_v2.ether_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_osi_network_link_ethernet_v2.fields.ether_type, range, value, display)

  return offset + length, value
end

-- Ethernet Payload
osi_network_link_ethernet_v2.ethernet_payload = {}

-- Display: Ethernet Payload
osi_network_link_ethernet_v2.ethernet_payload.display = function(value)
  return "Ethernet Payload: "..value
end

-- Dissect runtime sized field: Ethernet Payload
osi_network_link_ethernet_v2.ethernet_payload.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = osi_network_link_ethernet_v2.ethernet_payload.display(value, packet, parent, size)

  parent:add(omi_osi_network_link_ethernet_v2.fields.ethernet_payload, range, value, display)

  return offset + size, value
end

-- Inner Ether Type
osi_network_link_ethernet_v2.inner_ether_type = {}

-- Size: Inner Ether Type
osi_network_link_ethernet_v2.inner_ether_type.size = 2

-- Display: Inner Ether Type
osi_network_link_ethernet_v2.inner_ether_type.display = function(value)
  return "Inner Ether Type: "..value
end

-- Dissect: Inner Ether Type
osi_network_link_ethernet_v2.inner_ether_type.dissect = function(buffer, offset, packet, parent)
  local length = osi_network_link_ethernet_v2.inner_ether_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = osi_network_link_ethernet_v2.inner_ether_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_osi_network_link_ethernet_v2.fields.inner_ether_type, range, value, display)

  return offset + length, value
end

-- Source Mac
osi_network_link_ethernet_v2.source_mac = {}

-- Size: Source Mac
osi_network_link_ethernet_v2.source_mac.size = 6

-- Display: Source Mac
osi_network_link_ethernet_v2.source_mac.display = function(value)
  return "Source Mac: "..value
end

-- Dissect: Source Mac
osi_network_link_ethernet_v2.source_mac.dissect = function(buffer, offset, packet, parent)
  local length = osi_network_link_ethernet_v2.source_mac.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = osi_network_link_ethernet_v2.source_mac.display(value, buffer, offset, packet, parent)

  parent:add(omi_osi_network_link_ethernet_v2.fields.source_mac, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Osi Network Link Ethernet 2
-----------------------------------------------------------------------

-- Tag Control
osi_network_link_ethernet_v2.tag_control = {}

-- Size: Tag Control
osi_network_link_ethernet_v2.tag_control.size = 2

-- Display: Tag Control
osi_network_link_ethernet_v2.tag_control.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Drop Eligible flag set?
  if bit.band(value, 0x1000) ~= 0 then
    flags[#flags + 1] = "Drop Eligible"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Tag Control
osi_network_link_ethernet_v2.tag_control.bits = function(range, value, packet, parent)

  -- Vlan Priority: 3 Bit
  parent:add(omi_osi_network_link_ethernet_v2.fields.vlan_priority, range, value)

  -- Drop Eligible: 1 Bit
  parent:add(omi_osi_network_link_ethernet_v2.fields.drop_eligible, range, value)

  -- Vlan Id: 12 Bit
  parent:add(omi_osi_network_link_ethernet_v2.fields.vlan_id, range, value)
end

-- Dissect: Tag Control
osi_network_link_ethernet_v2.tag_control.dissect = function(buffer, offset, packet, parent)
  local size = osi_network_link_ethernet_v2.tag_control.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = osi_network_link_ethernet_v2.tag_control.display(range, value, packet, parent)
  local element = parent:add(omi_osi_network_link_ethernet_v2.fields.tag_control, range, display)

  if show.structs then
    osi_network_link_ethernet_v2.tag_control.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Vlan Tag
osi_network_link_ethernet_v2.vlan_tag = {}

-- Size: Vlan Tag
osi_network_link_ethernet_v2.vlan_tag.size =
  osi_network_link_ethernet_v2.tag_control.size + 
  osi_network_link_ethernet_v2.inner_ether_type.size

-- Display: Vlan Tag
osi_network_link_ethernet_v2.vlan_tag.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Vlan Tag
osi_network_link_ethernet_v2.vlan_tag.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tag Control: Struct of 3 fields
  index, tag_control = osi_network_link_ethernet_v2.tag_control.dissect(buffer, index, packet, parent)

  -- Inner Ether Type: 2 Byte Unsigned Fixed Width Integer
  index, inner_ether_type = osi_network_link_ethernet_v2.inner_ether_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Vlan Tag
osi_network_link_ethernet_v2.vlan_tag.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_osi_network_link_ethernet_v2.fields.vlan_tag, buffer(offset, 0))
    local index = osi_network_link_ethernet_v2.vlan_tag.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = osi_network_link_ethernet_v2.vlan_tag.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return osi_network_link_ethernet_v2.vlan_tag.fields(buffer, offset, packet, parent)
  end
end

-- Ethernet Frame
osi_network_link_ethernet_v2.ethernet_frame = {}

-- Verify required size of Link packet
osi_network_link_ethernet_v2.ethernet_frame.requiredsize = function(buffer)
  return buffer:len() >= osi_network_link_ethernet_v2.destination_mac.size + osi_network_link_ethernet_v2.source_mac.size + osi_network_link_ethernet_v2.ether_type.size + osi_network_link_ethernet_v2.vlan_tag.size
end

-- Dissect Ethernet Frame
osi_network_link_ethernet_v2.ethernet_frame.dissect = function(buffer, packet, parent)
  local index = 0

  -- Destination Mac: 6 Byte
  index, destination_mac = osi_network_link_ethernet_v2.destination_mac.dissect(buffer, index, packet, parent)

  -- Source Mac: 6 Byte
  index, source_mac = osi_network_link_ethernet_v2.source_mac.dissect(buffer, index, packet, parent)

  -- Ether Type: 2 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, ether_type = osi_network_link_ethernet_v2.ether_type.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Vlan Tag
  local vlan_tag = nil

  local vlan_tag_exists = ether_type == 33024

  if vlan_tag_exists then
    index, vlan_tag = osi_network_link_ethernet_v2.vlan_tag.dissect(buffer, index, packet, parent)
  end

  -- Dependency for Ethernet Payload
  local end_of_payload = buffer:len()

  -- Ethernet Payload: 0 Byte
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1
    index, ethernet_payload = osi_network_link_ethernet_v2.ethernet_payload.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_osi_network_link_ethernet_v2.init()
end

-- Dissector for Osi Network Link Ethernet 2
function omi_osi_network_link_ethernet_v2.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_osi_network_link_ethernet_v2.name

  -- Dissect protocol
  local protocol = parent:add(omi_osi_network_link_ethernet_v2, buffer(), omi_osi_network_link_ethernet_v2.description, "("..buffer:len().." Bytes)")
  return osi_network_link_ethernet_v2.ethernet_frame.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Osi Network Link Ethernet 2 (Link)
local function omi_osi_network_link_ethernet_v2_link_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not osi_network_link_ethernet_v2.ethernet_frame.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_osi_network_link_ethernet_v2
  omi_osi_network_link_ethernet_v2.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Osi Network Link Ethernet 2
omi_osi_network_link_ethernet_v2:register_heuristic("link", omi_osi_network_link_ethernet_v2_link_heuristic)

-- Register Osi Network Link Ethernet 2 for Decode As
local link_table = DissectorTable.get("link.port")
link_table:add_for_decode_as(omi_osi_network_link_ethernet_v2)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Open Systems Interconnection
--   Version: 2
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
