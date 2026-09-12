-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- OtcMarkets LinkAts Headers Link 1. Protocol
local omi_otcmarkets_linkats_headers_link_v1 = Proto("Omi.OtcMarkets.LinkAts.Headers.Link.v1", "OtcMarkets LinkAts Headers Link 1.")

-- Protocol table
local otcmarkets_linkats_headers_link_v1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- OtcMarkets LinkAts Headers Link 1. Fields
omi_otcmarkets_linkats_headers_link_v1.fields.heartbeat = ProtoField.new("Heartbeat", "otcmarkets.linkats.headers.link.v1.heartbeat", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_otcmarkets_linkats_headers_link_v1.fields.message_size = ProtoField.new("Message Size", "otcmarkets.linkats.headers.link.v1.messagesize", ftypes.UINT16)
omi_otcmarkets_linkats_headers_link_v1.fields.message_type = ProtoField.new("Message Type", "otcmarkets.linkats.headers.link.v1.messagetype", ftypes.UINT8)
omi_otcmarkets_linkats_headers_link_v1.fields.messages = ProtoField.new("Messages", "otcmarkets.linkats.headers.link.v1.messages", ftypes.UINT8)
omi_otcmarkets_linkats_headers_link_v1.fields.packet_flag = ProtoField.new("Packet Flag", "otcmarkets.linkats.headers.link.v1.packetflag", ftypes.STRING)
omi_otcmarkets_linkats_headers_link_v1.fields.packet_milli = ProtoField.new("Packet Milli", "otcmarkets.linkats.headers.link.v1.packetmilli", ftypes.UINT32)
omi_otcmarkets_linkats_headers_link_v1.fields.packet_size = ProtoField.new("Packet Size", "otcmarkets.linkats.headers.link.v1.packetsize", ftypes.UINT16)
omi_otcmarkets_linkats_headers_link_v1.fields.payload = ProtoField.new("Payload", "otcmarkets.linkats.headers.link.v1.payload", ftypes.BYTES)
omi_otcmarkets_linkats_headers_link_v1.fields.replay = ProtoField.new("Replay", "otcmarkets.linkats.headers.link.v1.replay", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_otcmarkets_linkats_headers_link_v1.fields.reserved_4 = ProtoField.new("Reserved 4", "otcmarkets.linkats.headers.link.v1.reserved4", ftypes.UINT8, nil, base.DEC, 0x3C)
omi_otcmarkets_linkats_headers_link_v1.fields.seq_num = ProtoField.new("Seq Num", "otcmarkets.linkats.headers.link.v1.seqnum", ftypes.UINT32)
omi_otcmarkets_linkats_headers_link_v1.fields.seq_num_reset = ProtoField.new("Seq Num Reset", "otcmarkets.linkats.headers.link.v1.seqnumreset", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_otcmarkets_linkats_headers_link_v1.fields.test = ProtoField.new("Test", "otcmarkets.linkats.headers.link.v1.test", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)

-- OtcMarkets LinkAts Headers Link 1. Framing
omi_otcmarkets_linkats_headers_link_v1.fields.message = ProtoField.new("Message", "otcmarkets.linkats.headers.link.v1.message", ftypes.STRING)
omi_otcmarkets_linkats_headers_link_v1.fields.message_header = ProtoField.new("Message Header", "otcmarkets.linkats.headers.link.v1.messageheader", ftypes.STRING)
omi_otcmarkets_linkats_headers_link_v1.fields.packet = ProtoField.new("Packet", "otcmarkets.linkats.headers.link.v1.packet", ftypes.STRING)
omi_otcmarkets_linkats_headers_link_v1.fields.packet_header = ProtoField.new("Packet Header", "otcmarkets.linkats.headers.link.v1.packetheader", ftypes.STRING)

-- OtcMarkets LinkAts Headers Link 1. generated fields
omi_otcmarkets_linkats_headers_link_v1.fields.message_index = ProtoField.new("Message Index", "otcmarkets.linkats.headers.link.v1.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- OtcMarkets LinkAts Headers Link 1. Element Dissection Options
show.structs = true
show.headers = true
show.indexes = true

-- Register OtcMarkets LinkAts Headers Link 1. Show Options
omi_otcmarkets_linkats_headers_link_v1.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_otcmarkets_linkats_headers_link_v1.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_otcmarkets_linkats_headers_link_v1.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

-- Handle changed preferences
function omi_otcmarkets_linkats_headers_link_v1.prefs_changed()

  -- Check if preferences have changed
  if show.headers ~= omi_otcmarkets_linkats_headers_link_v1.prefs.show_headers then
    show.headers = omi_otcmarkets_linkats_headers_link_v1.prefs.show_headers
  end
  if show.structs ~= omi_otcmarkets_linkats_headers_link_v1.prefs.show_structs then
    show.structs = omi_otcmarkets_linkats_headers_link_v1.prefs.show_structs
  end
  if show.indexes ~= omi_otcmarkets_linkats_headers_link_v1.prefs.show_indexes then
    show.indexes = omi_otcmarkets_linkats_headers_link_v1.prefs.show_indexes
  end
end


-----------------------------------------------------------------------
-- OtcMarkets LinkAts Headers Link 1. Fields
-----------------------------------------------------------------------

-- Message Size
otcmarkets_linkats_headers_link_v1.message_size = {}

-- Size: Message Size
otcmarkets_linkats_headers_link_v1.message_size.size = 2

-- Display: Message Size
otcmarkets_linkats_headers_link_v1.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
otcmarkets_linkats_headers_link_v1.message_size.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_headers_link_v1.message_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linkats_headers_link_v1.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_headers_link_v1.fields.message_size, range, value, display)

  return offset + length, value
end

-- Message Type
otcmarkets_linkats_headers_link_v1.message_type = {}

-- Size: Message Type
otcmarkets_linkats_headers_link_v1.message_type.size = 1

-- Display: Message Type
otcmarkets_linkats_headers_link_v1.message_type.display = function(value)
  return "Message Type: "..value
end

-- Dissect: Message Type
otcmarkets_linkats_headers_link_v1.message_type.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_headers_link_v1.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linkats_headers_link_v1.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_headers_link_v1.fields.message_type, range, value, display)

  return offset + length, value
end

-- Messages
otcmarkets_linkats_headers_link_v1.messages = {}

-- Size: Messages
otcmarkets_linkats_headers_link_v1.messages.size = 1

-- Display: Messages
otcmarkets_linkats_headers_link_v1.messages.display = function(value)
  return "Messages: "..value
end

-- Dissect: Messages
otcmarkets_linkats_headers_link_v1.messages.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_headers_link_v1.messages.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linkats_headers_link_v1.messages.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_headers_link_v1.fields.messages, range, value, display)

  return offset + length, value
end

-- Packet Milli
otcmarkets_linkats_headers_link_v1.packet_milli = {}

-- Size: Packet Milli
otcmarkets_linkats_headers_link_v1.packet_milli.size = 4

-- Display: Packet Milli
otcmarkets_linkats_headers_link_v1.packet_milli.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if otcmarkets_linkats_headers_link_v1.timestamp_format == 0 then
    return "Packet Milli: "..value
  end

  -- Parse milliseconds since midnight
  local seconds = math.floor(value / 1000)
  local milliseconds = value % 1000

  -- Full datetime mode (calculate from capture date + UTC offset)
  if otcmarkets_linkats_headers_link_v1.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = otcmarkets_linkats_headers_link_v1.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Packet Milli: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%03d", milliseconds)
  end

  -- Time of day mode
  return "Packet Milli: "..os.date("%H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Packet Milli
otcmarkets_linkats_headers_link_v1.packet_milli.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_headers_link_v1.packet_milli.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linkats_headers_link_v1.packet_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_headers_link_v1.fields.packet_milli, range, value, display)

  return offset + length, value
end

-- Packet Size
otcmarkets_linkats_headers_link_v1.packet_size = {}

-- Size: Packet Size
otcmarkets_linkats_headers_link_v1.packet_size.size = 2

-- Display: Packet Size
otcmarkets_linkats_headers_link_v1.packet_size.display = function(value)
  return "Packet Size: "..value
end

-- Dissect: Packet Size
otcmarkets_linkats_headers_link_v1.packet_size.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_headers_link_v1.packet_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linkats_headers_link_v1.packet_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_headers_link_v1.fields.packet_size, range, value, display)

  return offset + length, value
end

-- Payload
otcmarkets_linkats_headers_link_v1.payload = {}

-- Size: Payload
otcmarkets_linkats_headers_link_v1.payload.size = 0

-- Display: Payload
otcmarkets_linkats_headers_link_v1.payload.display = function(value)
  return "Payload: "..value
end

-- Dissect: Payload
otcmarkets_linkats_headers_link_v1.payload.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_headers_link_v1.payload.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = otcmarkets_linkats_headers_link_v1.payload.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_headers_link_v1.fields.payload, range, value, display)

  return offset + length, value
end

-- Seq Num
otcmarkets_linkats_headers_link_v1.seq_num = {}

-- Size: Seq Num
otcmarkets_linkats_headers_link_v1.seq_num.size = 4

-- Display: Seq Num
otcmarkets_linkats_headers_link_v1.seq_num.display = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
otcmarkets_linkats_headers_link_v1.seq_num.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linkats_headers_link_v1.seq_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linkats_headers_link_v1.seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linkats_headers_link_v1.fields.seq_num, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect OtcMarkets LinkAts Headers Link 1.
-----------------------------------------------------------------------

-- Message Header
otcmarkets_linkats_headers_link_v1.message_header = {}

-- Size: Message Header
otcmarkets_linkats_headers_link_v1.message_header.size =
  otcmarkets_linkats_headers_link_v1.message_size.size + 
  otcmarkets_linkats_headers_link_v1.message_type.size

-- Display: Message Header
otcmarkets_linkats_headers_link_v1.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
otcmarkets_linkats_headers_link_v1.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = otcmarkets_linkats_headers_link_v1.message_size.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer
  index, message_type = otcmarkets_linkats_headers_link_v1.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
otcmarkets_linkats_headers_link_v1.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_linkats_headers_link_v1.fields.message_header, buffer(offset, 0))
    local index = otcmarkets_linkats_headers_link_v1.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_linkats_headers_link_v1.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_linkats_headers_link_v1.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
otcmarkets_linkats_headers_link_v1.message = {}

-- Read runtime size of: Message
otcmarkets_linkats_headers_link_v1.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Size
  local message_size = buffer(offset, 2):uint()

  return message_size
end

-- Display: Message
otcmarkets_linkats_headers_link_v1.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
otcmarkets_linkats_headers_link_v1.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_otcmarkets_linkats_headers_link_v1.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = otcmarkets_linkats_headers_link_v1.message_header.dissect(buffer, index, packet, parent)

  -- Payload: 0 Byte
  index, payload = otcmarkets_linkats_headers_link_v1.payload.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message
otcmarkets_linkats_headers_link_v1.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = otcmarkets_linkats_headers_link_v1.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_otcmarkets_linkats_headers_link_v1.fields.message, buffer(offset, 0))
    local current = otcmarkets_linkats_headers_link_v1.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = otcmarkets_linkats_headers_link_v1.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    otcmarkets_linkats_headers_link_v1.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Heartbeat Packet
otcmarkets_linkats_headers_link_v1.heartbeat_packet = {}

-- Display: Heartbeat Packet
otcmarkets_linkats_headers_link_v1.heartbeat_packet.display = function(packet, parent, length)
  return "Heartbeat Packet"
end


-- Dissect: Heartbeat Packet
otcmarkets_linkats_headers_link_v1.heartbeat_packet.dissect = function(buffer, offset, packet, parent)
  local display = otcmarkets_linkats_headers_link_v1.heartbeat_packet.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Message Block
otcmarkets_linkats_headers_link_v1.message_block = {}

-- Dissect: Message Block
otcmarkets_linkats_headers_link_v1.message_block.dissect = function(buffer, offset, packet, parent, heartbeat)
  -- Dissect Heartbeat Packet
  if bit.band(packet_flag, 0x01) == 1 then
    return otcmarkets_linkats_headers_link_v1.heartbeat_packet.dissect(buffer, offset, packet, parent)
  end
  -- Repeating: Message
  for message_index = 1, messages do

    -- Dependency element: Message Size
    local message_size = buffer(offset, 2):uint()

    -- Message: Struct of 2 fields
    offset = otcmarkets_linkats_headers_link_v1.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end

  return offset
end

-- Packet Flag
otcmarkets_linkats_headers_link_v1.packet_flag = {}

-- Size: Packet Flag
otcmarkets_linkats_headers_link_v1.packet_flag.size = 1

-- Display: Packet Flag
otcmarkets_linkats_headers_link_v1.packet_flag.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Heartbeat flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Heartbeat"
  end
  -- Is Seq Num Reset flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Seq Num Reset"
  end
  -- Is Replay flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Replay"
  end
  -- Is Test flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Test"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Packet Flag
otcmarkets_linkats_headers_link_v1.packet_flag.bits = function(range, value, packet, parent)

  -- Heartbeat: 1 Bit
  parent:add(omi_otcmarkets_linkats_headers_link_v1.fields.heartbeat, range, value)

  -- Seq Num Reset: 1 Bit
  parent:add(omi_otcmarkets_linkats_headers_link_v1.fields.seq_num_reset, range, value)

  -- Reserved 4: 4 Bit
  parent:add(omi_otcmarkets_linkats_headers_link_v1.fields.reserved_4, range, value)

  -- Replay: 1 Bit
  parent:add(omi_otcmarkets_linkats_headers_link_v1.fields.replay, range, value)

  -- Test: 1 Bit
  parent:add(omi_otcmarkets_linkats_headers_link_v1.fields.test, range, value)
end

-- Dissect: Packet Flag
otcmarkets_linkats_headers_link_v1.packet_flag.dissect = function(buffer, offset, packet, parent)
  local size = otcmarkets_linkats_headers_link_v1.packet_flag.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = otcmarkets_linkats_headers_link_v1.packet_flag.display(range, value, packet, parent)
  local element = parent:add(omi_otcmarkets_linkats_headers_link_v1.fields.packet_flag, range, display)

  if show.structs then
    otcmarkets_linkats_headers_link_v1.packet_flag.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Packet Header
otcmarkets_linkats_headers_link_v1.packet_header = {}

-- Size: Packet Header
otcmarkets_linkats_headers_link_v1.packet_header.size =
  otcmarkets_linkats_headers_link_v1.packet_size.size + 
  otcmarkets_linkats_headers_link_v1.seq_num.size + 
  otcmarkets_linkats_headers_link_v1.packet_flag.size + 
  otcmarkets_linkats_headers_link_v1.messages.size + 
  otcmarkets_linkats_headers_link_v1.packet_milli.size

-- Display: Packet Header
otcmarkets_linkats_headers_link_v1.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
otcmarkets_linkats_headers_link_v1.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Size: 2 Byte Unsigned Fixed Width Integer
  index, packet_size = otcmarkets_linkats_headers_link_v1.packet_size.dissect(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = otcmarkets_linkats_headers_link_v1.seq_num.dissect(buffer, index, packet, parent)

  -- Packet Flag: Struct of 5 fields
  index, packet_flag = otcmarkets_linkats_headers_link_v1.packet_flag.dissect(buffer, index, packet, parent)

  -- Messages: 1 Byte Unsigned Fixed Width Integer
  index, messages = otcmarkets_linkats_headers_link_v1.messages.dissect(buffer, index, packet, parent)

  -- Packet Milli: 4 Byte Unsigned Fixed Width Integer
  index, packet_milli = otcmarkets_linkats_headers_link_v1.packet_milli.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
otcmarkets_linkats_headers_link_v1.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_linkats_headers_link_v1.fields.packet_header, buffer(offset, 0))
    local index = otcmarkets_linkats_headers_link_v1.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_linkats_headers_link_v1.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_linkats_headers_link_v1.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
otcmarkets_linkats_headers_link_v1.packet = {}

-- Verify required size of Udp packet
otcmarkets_linkats_headers_link_v1.packet.requiredsize = function(buffer)
  return buffer:len() >= otcmarkets_linkats_headers_link_v1.packet_header.size
end

-- Dissect Packet
otcmarkets_linkats_headers_link_v1.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = otcmarkets_linkats_headers_link_v1.packet_header.dissect(buffer, index, packet, parent)

  -- Message Block: Runtime Type with 2 branches
  index = otcmarkets_linkats_headers_link_v1.message_block.dissect(buffer, index, packet, parent, heartbeat)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_otcmarkets_linkats_headers_link_v1.init()
end

-- Dissector for OtcMarkets LinkAts Headers Link 1.
function omi_otcmarkets_linkats_headers_link_v1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_otcmarkets_linkats_headers_link_v1.name

  -- Dissect protocol
  local protocol = parent:add(omi_otcmarkets_linkats_headers_link_v1, buffer(), omi_otcmarkets_linkats_headers_link_v1.description, "("..buffer:len().." Bytes)")
  return otcmarkets_linkats_headers_link_v1.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for OtcMarkets LinkAts Headers Link 1. (Udp)
local function omi_otcmarkets_linkats_headers_link_v1_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not otcmarkets_linkats_headers_link_v1.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_otcmarkets_linkats_headers_link_v1
  omi_otcmarkets_linkats_headers_link_v1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for OtcMarkets LinkAts Headers Link 1.
omi_otcmarkets_linkats_headers_link_v1:register_heuristic("udp", omi_otcmarkets_linkats_headers_link_v1_udp_heuristic)

-- Register OtcMarkets LinkAts Headers Link 1. for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_otcmarkets_linkats_headers_link_v1)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: OTC Markets Group
--   Version: 1
--   Date: Wednesday, December 11, 2019
--   Specification: OTC Markets Multicast Data Feeds -v4.3.pdf
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
