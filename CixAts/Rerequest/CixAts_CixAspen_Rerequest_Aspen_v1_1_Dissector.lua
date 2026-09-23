-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- CixAts CixAspen Rerequest Aspen 1.1 Protocol
local omi_cixats_cixaspen_rerequest_aspen_v1_1 = Proto("Omi.CixAts.CixAspen.Rerequest.Aspen.v1.1", "CixAts CixAspen Rerequest Aspen 1.1")

-- Protocol table
local cixats_cixaspen_rerequest_aspen_v1_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- CixAts CixAspen Rerequest Aspen 1.1 Fields
omi_cixats_cixaspen_rerequest_aspen_v1_1.fields.count = ProtoField.new("Count", "cixats.cixaspen.rerequest.aspen.v1.1.count", ftypes.UINT16)
omi_cixats_cixaspen_rerequest_aspen_v1_1.fields.feed_identifier = ProtoField.new("Feed Identifier", "cixats.cixaspen.rerequest.aspen.v1.1.feedidentifier", ftypes.STRING)
omi_cixats_cixaspen_rerequest_aspen_v1_1.fields.market_day_identifier = ProtoField.new("Market Day Identifier", "cixats.cixaspen.rerequest.aspen.v1.1.marketdayidentifier", ftypes.STRING)
omi_cixats_cixaspen_rerequest_aspen_v1_1.fields.sequence = ProtoField.new("Sequence", "cixats.cixaspen.rerequest.aspen.v1.1.sequence", ftypes.UINT64)

-- CixAts CixAspen Rerequest Aspen 1.1 Framing
omi_cixats_cixaspen_rerequest_aspen_v1_1.fields.packet = ProtoField.new("Packet", "cixats.cixaspen.rerequest.aspen.v1.1.packet", ftypes.STRING)
omi_cixats_cixaspen_rerequest_aspen_v1_1.fields.rerequest_header = ProtoField.new("Rerequest Header", "cixats.cixaspen.rerequest.aspen.v1.1.rerequestheader", ftypes.STRING)

-----------------------------------------------------------------------
-- CixAts CixAspen Rerequest Aspen 1.1 Formatting
-----------------------------------------------------------------------

-- assumed connection role
local role_enum = {
  { 1, "Resolve from the conversation", 0 },
  { 2, "Initiator", 1 },
  { 3, "Acceptor", 2 }
}


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- CixAts CixAspen Rerequest Aspen 1.1 Element Dissection Options
show.structs = true
show.headers = true

-- Register CixAts CixAspen Rerequest Aspen 1.1 Show Options
omi_cixats_cixaspen_rerequest_aspen_v1_1.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_cixats_cixaspen_rerequest_aspen_v1_1.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_cixats_cixaspen_rerequest_aspen_v1_1.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_cixats_cixaspen_rerequest_aspen_v1_1.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_cixats_cixaspen_rerequest_aspen_v1_1.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")

-- Handle changed preferences
function omi_cixats_cixaspen_rerequest_aspen_v1_1.prefs_changed()

  -- Check if preferences have changed
  if show.headers ~= omi_cixats_cixaspen_rerequest_aspen_v1_1.prefs.show_headers then
    show.headers = omi_cixats_cixaspen_rerequest_aspen_v1_1.prefs.show_headers
  end
  if show.structs ~= omi_cixats_cixaspen_rerequest_aspen_v1_1.prefs.show_structs then
    show.structs = omi_cixats_cixaspen_rerequest_aspen_v1_1.prefs.show_structs
  end
end


-----------------------------------------------------------------------
-- CixAts CixAspen Rerequest Aspen 1.1 Fields
-----------------------------------------------------------------------

-- Count
cixats_cixaspen_rerequest_aspen_v1_1.count = {}

-- Size: Count
cixats_cixaspen_rerequest_aspen_v1_1.count.size = 2

-- Display: Count
cixats_cixaspen_rerequest_aspen_v1_1.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
cixats_cixaspen_rerequest_aspen_v1_1.count.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_rerequest_aspen_v1_1.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cixats_cixaspen_rerequest_aspen_v1_1.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_rerequest_aspen_v1_1.fields.count, range, value, display)

  return offset + length, value
end

-- Feed Identifier
cixats_cixaspen_rerequest_aspen_v1_1.feed_identifier = {}

-- Size: Feed Identifier
cixats_cixaspen_rerequest_aspen_v1_1.feed_identifier.size = 1

-- Display: Feed Identifier
cixats_cixaspen_rerequest_aspen_v1_1.feed_identifier.display = function(value)
  if value == "A" then
    return "Feed Identifier: Aspen (A)"
  end
  if value == "V" then
    return "Feed Identifier: Aspen Vert (V)"
  end
  if value == "M" then
    return "Feed Identifier: Midpoint (M)"
  end
  if value == "B" then
    return "Feed Identifier: Aspen Uat (B)"
  end
  if value == "W" then
    return "Feed Identifier: Aspen Vert Uat (W)"
  end
  if value == "N" then
    return "Feed Identifier: Midpoint Uat (N)"
  end

  return "Feed Identifier: Unknown("..value..")"
end

-- Dissect: Feed Identifier
cixats_cixaspen_rerequest_aspen_v1_1.feed_identifier.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_rerequest_aspen_v1_1.feed_identifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cixats_cixaspen_rerequest_aspen_v1_1.feed_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_rerequest_aspen_v1_1.fields.feed_identifier, range, value, display)

  return offset + length, value
end

-- Market Day Identifier
cixats_cixaspen_rerequest_aspen_v1_1.market_day_identifier = {}

-- Size: Market Day Identifier
cixats_cixaspen_rerequest_aspen_v1_1.market_day_identifier.size = 9

-- Display: Market Day Identifier
cixats_cixaspen_rerequest_aspen_v1_1.market_day_identifier.display = function(value)
  return "Market Day Identifier: "..value
end

-- Dissect: Market Day Identifier
cixats_cixaspen_rerequest_aspen_v1_1.market_day_identifier.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_rerequest_aspen_v1_1.market_day_identifier.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cixats_cixaspen_rerequest_aspen_v1_1.market_day_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_rerequest_aspen_v1_1.fields.market_day_identifier, range, value, display)

  return offset + length, value
end

-- Sequence
cixats_cixaspen_rerequest_aspen_v1_1.sequence = {}

-- Size: Sequence
cixats_cixaspen_rerequest_aspen_v1_1.sequence.size = 8

-- Display: Sequence
cixats_cixaspen_rerequest_aspen_v1_1.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cixats_cixaspen_rerequest_aspen_v1_1.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cixats_cixaspen_rerequest_aspen_v1_1.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cixats_cixaspen_rerequest_aspen_v1_1.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cixats_cixaspen_rerequest_aspen_v1_1.fields.sequence, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect CixAts CixAspen Rerequest Aspen 1.1
-----------------------------------------------------------------------

-- Rerequest Header
cixats_cixaspen_rerequest_aspen_v1_1.rerequest_header = {}

-- Size: Rerequest Header
cixats_cixaspen_rerequest_aspen_v1_1.rerequest_header.size =
  cixats_cixaspen_rerequest_aspen_v1_1.market_day_identifier.size + 
  cixats_cixaspen_rerequest_aspen_v1_1.feed_identifier.size + 
  cixats_cixaspen_rerequest_aspen_v1_1.sequence.size + 
  cixats_cixaspen_rerequest_aspen_v1_1.count.size

-- Display: Rerequest Header
cixats_cixaspen_rerequest_aspen_v1_1.rerequest_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Rerequest Header
cixats_cixaspen_rerequest_aspen_v1_1.rerequest_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Day Identifier: Number
  index, market_day_identifier = cixats_cixaspen_rerequest_aspen_v1_1.market_day_identifier.dissect(buffer, index, packet, parent)

  -- Feed Identifier: Alpha
  index, feed_identifier = cixats_cixaspen_rerequest_aspen_v1_1.feed_identifier.dissect(buffer, index, packet, parent)

  -- Sequence: Integer
  index, sequence = cixats_cixaspen_rerequest_aspen_v1_1.sequence.dissect(buffer, index, packet, parent)

  -- Count: Integer
  index, count = cixats_cixaspen_rerequest_aspen_v1_1.count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Rerequest Header
cixats_cixaspen_rerequest_aspen_v1_1.rerequest_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cixats_cixaspen_rerequest_aspen_v1_1.fields.rerequest_header, buffer(offset, 0))
    local index = cixats_cixaspen_rerequest_aspen_v1_1.rerequest_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cixats_cixaspen_rerequest_aspen_v1_1.rerequest_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cixats_cixaspen_rerequest_aspen_v1_1.rerequest_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cixats_cixaspen_rerequest_aspen_v1_1.packet = {}

-- Verify required size of Udp packet
cixats_cixaspen_rerequest_aspen_v1_1.packet.requiredsize = function(buffer)
  return buffer:len() >= cixats_cixaspen_rerequest_aspen_v1_1.rerequest_header.size
end

-- Dissect Packet
cixats_cixaspen_rerequest_aspen_v1_1.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Rerequest Header: Struct of 4 fields
  index, rerequest_header = cixats_cixaspen_rerequest_aspen_v1_1.rerequest_header.dissect(buffer, index, packet, parent)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cixats_cixaspen_rerequest_aspen_v1_1.init()
end

-- Dissector for CixAts CixAspen Rerequest Aspen 1.1
function omi_cixats_cixaspen_rerequest_aspen_v1_1.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_cixats_cixaspen_rerequest_aspen_v1_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_cixats_cixaspen_rerequest_aspen_v1_1, buffer(), omi_cixats_cixaspen_rerequest_aspen_v1_1.description, "("..buffer:len().." Bytes)")
  return cixats_cixaspen_rerequest_aspen_v1_1.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for CixAts CixAspen Rerequest Aspen 1.1 (Udp)
local function omi_cixats_cixaspen_rerequest_aspen_v1_1_udp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cixats_cixaspen_rerequest_aspen_v1_1.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cixats_cixaspen_rerequest_aspen_v1_1
  omi_cixats_cixaspen_rerequest_aspen_v1_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for CixAts CixAspen Rerequest Aspen 1.1
omi_cixats_cixaspen_rerequest_aspen_v1_1:register_heuristic("udp", omi_cixats_cixaspen_rerequest_aspen_v1_1_udp_initiator_heuristic)

-- Register CixAts CixAspen Rerequest Aspen 1.1 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_cixats_cixaspen_rerequest_aspen_v1_1)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: CIX Trading Inc.
--   Version: 1.1
--   Date: Monday, September 15, 2025
--   Specification: Market Data Recovery Feed Specification-1.1.pdf
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
