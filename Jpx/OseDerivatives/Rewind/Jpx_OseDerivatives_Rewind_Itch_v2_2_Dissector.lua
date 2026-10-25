-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Jpx OseDerivatives Rewind Itch 2.2 Protocol
local omi_jpx_osederivatives_rewind_itch_v2_2 = Proto("Omi.Jpx.OseDerivatives.Rewind.Itch.v2.2", "Jpx OseDerivatives Rewind Itch 2.2")

-- Protocol table
local jpx_osederivatives_rewind_itch_v2_2 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Jpx OseDerivatives Rewind Itch 2.2 Fields
omi_jpx_osederivatives_rewind_itch_v2_2.fields.requested_message_count = ProtoField.new("Requested Message Count", "jpx.osederivatives.rewind.itch.v2.2.requestedmessagecount", ftypes.UINT16, nil, nil, nil, "The number of data messages being requested for resend")
omi_jpx_osederivatives_rewind_itch_v2_2.fields.sequence_number = ProtoField.new("Sequence Number", "jpx.osederivatives.rewind.itch.v2.2.sequencenumber", ftypes.UINT64, nil, nil, nil, "The sequence number of the first data message being requested for resend")
omi_jpx_osederivatives_rewind_itch_v2_2.fields.session = ProtoField.new("Session", "jpx.osederivatives.rewind.itch.v2.2.session", ftypes.STRING, nil, nil, nil, "Same as Session in the packet header, only the session number of the current day can be set")

-- Jpx OseDerivatives Rewind Itch 2.2 Framing
omi_jpx_osederivatives_rewind_itch_v2_2.fields.rewind_request_packet = ProtoField.new("Rewind Request Packet", "jpx.osederivatives.rewind.itch.v2.2.rewindrequestpacket", ftypes.STRING, nil, nil, nil, "Sent by the Itch user to the Itch server to request resend of lost multicast data")

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Jpx OseDerivatives Rewind Itch 2.2 Element Dissection Options
show.structs = true

-- Register Jpx OseDerivatives Rewind Itch 2.2 Show Options
omi_jpx_osederivatives_rewind_itch_v2_2.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")

-- Handle changed preferences
function omi_jpx_osederivatives_rewind_itch_v2_2.prefs_changed()

  -- Check if preferences have changed
  if show.structs ~= omi_jpx_osederivatives_rewind_itch_v2_2.prefs.show_structs then
    show.structs = omi_jpx_osederivatives_rewind_itch_v2_2.prefs.show_structs
  end
end


-----------------------------------------------------------------------
-- Protocol Functions
-----------------------------------------------------------------------

-- trim trailing spaces
trim_right_spaces = function(str)
  local finish = str:len()

  while finish > 0 and str:byte(finish) == 0x20 do
    finish = finish - 1
  end

  return str:sub(1, finish)
end


-----------------------------------------------------------------------
-- Jpx OseDerivatives Rewind Itch 2.2 Fields
-----------------------------------------------------------------------

-- Requested Message Count
jpx_osederivatives_rewind_itch_v2_2.requested_message_count = {}

-- Size: Requested Message Count
jpx_osederivatives_rewind_itch_v2_2.requested_message_count.size = 2

-- Display: Requested Message Count
jpx_osederivatives_rewind_itch_v2_2.requested_message_count.display = function(value)
  return "Requested Message Count: "..value
end

-- Dissect: Requested Message Count
jpx_osederivatives_rewind_itch_v2_2.requested_message_count.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_rewind_itch_v2_2.requested_message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_osederivatives_rewind_itch_v2_2.requested_message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_rewind_itch_v2_2.fields.requested_message_count, range, value, display)

  return offset + length, value
end

-- Sequence Number
jpx_osederivatives_rewind_itch_v2_2.sequence_number = {}

-- Size: Sequence Number
jpx_osederivatives_rewind_itch_v2_2.sequence_number.size = 8

-- Display: Sequence Number
jpx_osederivatives_rewind_itch_v2_2.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
jpx_osederivatives_rewind_itch_v2_2.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_rewind_itch_v2_2.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = jpx_osederivatives_rewind_itch_v2_2.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_rewind_itch_v2_2.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
jpx_osederivatives_rewind_itch_v2_2.session = {}

-- Size: Session
jpx_osederivatives_rewind_itch_v2_2.session.size = 10

-- Display: Session
jpx_osederivatives_rewind_itch_v2_2.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
jpx_osederivatives_rewind_itch_v2_2.session.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_rewind_itch_v2_2.session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_osederivatives_rewind_itch_v2_2.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_rewind_itch_v2_2.fields.session, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Jpx OseDerivatives Rewind Itch 2.2
-----------------------------------------------------------------------

-- Rewind Request Packet
jpx_osederivatives_rewind_itch_v2_2.rewind_request_packet = {}

-- Verify required size of Udp packet
jpx_osederivatives_rewind_itch_v2_2.rewind_request_packet.requiredsize = function(buffer)
  return buffer:len() >= jpx_osederivatives_rewind_itch_v2_2.session.size + jpx_osederivatives_rewind_itch_v2_2.sequence_number.size + jpx_osederivatives_rewind_itch_v2_2.requested_message_count.size
end

-- Dissect Rewind Request Packet
jpx_osederivatives_rewind_itch_v2_2.rewind_request_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Session: 10 Byte Ascii String
  index, session = jpx_osederivatives_rewind_itch_v2_2.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = jpx_osederivatives_rewind_itch_v2_2.sequence_number.dissect(buffer, index, packet, parent)

  -- Requested Message Count: 2 Byte Unsigned Fixed Width Integer
  index, requested_message_count = jpx_osederivatives_rewind_itch_v2_2.requested_message_count.dissect(buffer, index, packet, parent)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_jpx_osederivatives_rewind_itch_v2_2.init()
end

-- Dissector for Jpx OseDerivatives Rewind Itch 2.2
function omi_jpx_osederivatives_rewind_itch_v2_2.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_jpx_osederivatives_rewind_itch_v2_2.name

  -- Dissect protocol
  local protocol = parent:add(omi_jpx_osederivatives_rewind_itch_v2_2, buffer(), omi_jpx_osederivatives_rewind_itch_v2_2.description, "("..buffer:len().." Bytes)")
  return jpx_osederivatives_rewind_itch_v2_2.rewind_request_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------


-- Register Jpx OseDerivatives Rewind Itch 2.2 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_jpx_osederivatives_rewind_itch_v2_2)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Japan Exchange Group
--   Version: 2.2
--   Date: Friday, October 31, 2025
--   Specification: J-GATE3.0_ITCH_Connectivity_Manual_V2.2.pdf
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
