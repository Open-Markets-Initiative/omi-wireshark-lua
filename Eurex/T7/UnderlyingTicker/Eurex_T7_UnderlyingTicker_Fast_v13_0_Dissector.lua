-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Eurex T7 UnderlyingTicker Fast 13.0 Protocol
local omi_eurex_t7_underlyingticker_fast_v13_0 = Proto("Omi.Eurex.T7.UnderlyingTicker.Fast.v13.0", "Eurex T7 UnderlyingTicker Fast 13.0")

-- Protocol table
local eurex_t7_underlyingticker_fast_v13_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Eurex T7 UnderlyingTicker Fast 13.0 Framing
omi_eurex_t7_underlyingticker_fast_v13_0.fields.message = ProtoField.new("Message", "eurex.t7.underlyingticker.fast.v13.0.message", ftypes.NONE)
omi_eurex_t7_underlyingticker_fast_v13_0.fields.message_header = ProtoField.new("Message Header", "eurex.t7.underlyingticker.fast.v13.0.messageheader", ftypes.NONE)
omi_eurex_t7_underlyingticker_fast_v13_0.fields.presence_map = ProtoField.new("Presence Map", "eurex.t7.underlyingticker.fast.v13.0.presencemap", ftypes.BYTES)
omi_eurex_t7_underlyingticker_fast_v13_0.fields.template_id = ProtoField.new("Template Id", "eurex.t7.underlyingticker.fast.v13.0.templateid", ftypes.UINT32)
omi_eurex_t7_underlyingticker_fast_v13_0.fields.record = ProtoField.new("Record", "eurex.t7.underlyingticker.fast.v13.0.record", ftypes.NONE)
omi_eurex_t7_underlyingticker_fast_v13_0.fields.presence_stop = ProtoField.new("Stop Bit", "eurex.t7.underlyingticker.fast.v13.0.presencestop", ftypes.UINT8, { [0] = "Clear", [1] = "Set" }, base.DEC)
omi_eurex_t7_underlyingticker_fast_v13_0.fields.presence_identified = ProtoField.new("Template Id", "eurex.t7.underlyingticker.fast.v13.0.presencetemplateid", ftypes.UINT8, { [0] = "Repeated", [1] = "Sent" }, base.DEC)
omi_eurex_t7_underlyingticker_fast_v13_0.fields.presence_unused = ProtoField.new("Unused", "eurex.t7.underlyingticker.fast.v13.0.presenceunused", ftypes.UINT8, nil, base.HEX)

-- Eurex T7 UnderlyingTicker Fast 13.0 Presence Map Fields
omi_eurex_t7_underlyingticker_fast_v13_0.fields.presence_msg_seq_num = ProtoField.new("Msg Seq Num", "eurex.t7.underlyingticker.fast.v13.0.msgseqnumpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_underlyingticker_fast_v13_0.fields.presence_sender_comp_id = ProtoField.new("Sender Comp ID", "eurex.t7.underlyingticker.fast.v13.0.sendercompidpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)

-- Eurex T7 UnderlyingTicker Fast 13.0 Fields
omi_eurex_t7_underlyingticker_fast_v13_0.fields.sender_comp_id = ProtoField.new("Sender Comp ID", "eurex.t7.underlyingticker.fast.v13.0.sendercompid", ftypes.UINT32)
omi_eurex_t7_underlyingticker_fast_v13_0.fields.packet_seq_num = ProtoField.new("Packet Seq Num", "eurex.t7.underlyingticker.fast.v13.0.packetseqnum", ftypes.UINT32)
omi_eurex_t7_underlyingticker_fast_v13_0.fields.sending_time = ProtoField.new("Sending Time", "eurex.t7.underlyingticker.fast.v13.0.sendingtime", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_eurex_t7_underlyingticker_fast_v13_0.fields.msg_type = ProtoField.new("Msg Type", "eurex.t7.underlyingticker.fast.v13.0.msgtype", ftypes.STRING)
omi_eurex_t7_underlyingticker_fast_v13_0.fields.msg_seq_num = ProtoField.new("Msg Seq Num", "eurex.t7.underlyingticker.fast.v13.0.msgseqnum", ftypes.UINT32)
omi_eurex_t7_underlyingticker_fast_v13_0.fields.no_md_entries = ProtoField.new("No MD Entries", "eurex.t7.underlyingticker.fast.v13.0.nomdentries", ftypes.UINT32)
omi_eurex_t7_underlyingticker_fast_v13_0.fields.md_entry_type = ProtoField.new("MD Entry Type", "eurex.t7.underlyingticker.fast.v13.0.mdentrytype", ftypes.UINT32)
omi_eurex_t7_underlyingticker_fast_v13_0.fields.md_update_action = ProtoField.new("MD Update Action", "eurex.t7.underlyingticker.fast.v13.0.mdupdateaction", ftypes.UINT32)
omi_eurex_t7_underlyingticker_fast_v13_0.fields.security_id = ProtoField.new("Security ID", "eurex.t7.underlyingticker.fast.v13.0.securityid", ftypes.STRING)
omi_eurex_t7_underlyingticker_fast_v13_0.fields.security_id_source = ProtoField.new("Security ID Source", "eurex.t7.underlyingticker.fast.v13.0.securityidsource", ftypes.STRING)
omi_eurex_t7_underlyingticker_fast_v13_0.fields.md_entry_px = ProtoField.new("MD Entry Px", "eurex.t7.underlyingticker.fast.v13.0.mdentrypx", ftypes.DOUBLE)
omi_eurex_t7_underlyingticker_fast_v13_0.fields.md_entry_size = ProtoField.new("MD Entry Size", "eurex.t7.underlyingticker.fast.v13.0.mdentrysize", ftypes.DOUBLE)
omi_eurex_t7_underlyingticker_fast_v13_0.fields.md_entry_time = ProtoField.new("MD Entry Time", "eurex.t7.underlyingticker.fast.v13.0.mdentrytime", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_eurex_t7_underlyingticker_fast_v13_0.fields.currency = ProtoField.new("Currency", "eurex.t7.underlyingticker.fast.v13.0.currency", ftypes.STRING)
omi_eurex_t7_underlyingticker_fast_v13_0.fields.md_stream_id = ProtoField.new("MD Stream ID", "eurex.t7.underlyingticker.fast.v13.0.mdstreamid", ftypes.STRING)

-- Eurex T7 UnderlyingTicker Fast 13.0 Messages
omi_eurex_t7_underlyingticker_fast_v13_0.fields.packet_header = ProtoField.new("Packet Header Framing", "eurex.t7.underlyingticker.fast.v13.0.packetheader", ftypes.NONE)
omi_eurex_t7_underlyingticker_fast_v13_0.fields.ticker_message = ProtoField.new("Ticker Message Message", "eurex.t7.underlyingticker.fast.v13.0.tickermessage", ftypes.NONE)
omi_eurex_t7_underlyingticker_fast_v13_0.fields.md_inc_grp = ProtoField.new("MD Inc Grp", "eurex.t7.underlyingticker.fast.v13.0.mdincgrp", ftypes.NONE)

-----------------------------------------------------------------------
-- Protocol Functions
-----------------------------------------------------------------------

-- read a fast presence map: seven bits an octet, closed by the stop bit
local function read_presence_map(buffer, offset)
  local bits = {}
  local masks = { 0x40, 0x20, 0x10, 0x08, 0x04, 0x02, 0x01 }
  local octet

  repeat
    if offset >= buffer:len() then error("truncated FAST presence map") end
    octet = buffer(offset, 1):uint()
    offset = offset + 1

    for _, mask in ipairs(masks) do
      bits[#bits + 1] = bit.band(octet, mask) ~= 0
    end
  until bit.band(octet, 0x80) ~= 0

  return bits, offset
end

-- add a presence map to the tree as the bitfield it is.
--
-- The first bit of the first octet says whether the template id was sent; the
-- rest gate the fields that read the map, in the order the template declares
-- them. Which field each bit is comes from the template, so named carries that
-- template's bits and each line reads as the field it gates. A bit the template
-- does not name falls back to its number.
-- one bit of an octet, as the one or nought a presence field is added with
local function presence_bit(octet, mask)
  if bit.band(octet, mask) ~= 0 then
    return 1
  end

  return 0
end

-- an octet's bits written out, so the map line shows the layout the fields
-- beneath it are read from
local function presence_layout(octet)
  local written = ""

  for position = 0, 7 do
    if position == 4 then written = written .. " " end

    written = written .. presence_bit(octet, bit.rshift(0x80, position))
  end

  return written
end

local function add_presence_map(parent, range, map_field, stop_field, identified, unused_field, named)
  local node = parent:add(map_field, range)
  local layout = {}

  for octet = 0, range:len() - 1 do
    local scope = node
    local octet_range = range:range(octet, 1)
    local octet_value = octet_range:uint()
    local first = octet * 7 + 1
    local unused = 0
    local unnamed = 0

    layout[#layout + 1] = presence_layout(octet_value)

    -- a map wider than one octet says which fields each octet carries, or every
    -- octet would show the same seven bits with nothing to tell them apart
    if range:len() > 1 then
      scope = node:add(map_field, octet_range)
      scope:set_text(string.format("Octet %d: fields %d to %d",
        octet + 1, first, first + 6))
    end

    -- the eighth bit closes the run rather than gating a field
    scope:add(stop_field, octet_range, presence_bit(octet_value, 0x80))

    for position = 0, 6 do
      local index = first + position
      local mask = bit.rshift(0x40, position)

      if index == 1 then
        scope:add(identified, octet_range, presence_bit(octet_value, mask))
      elseif named ~= nil and named[index] ~= nil then
        scope:add(named[index], octet_range, presence_bit(octet_value, mask))
      else
        -- carries no field this dissector names, so it joins the unused run
        unnamed = unnamed + 1
        unused = unused + bit.band(octet_value, mask)
      end
    end

    if unnamed > 0 then
      scope:add(unused_field, octet_range, unused)
    end
  end

  node:append_text(" (" .. table.concat(layout, " ") .. ")")

  return node
end

-- Seven bits an octet, so ten octets hold the widest value FAST carries and a
-- longer run is not an integer of any width. Reading one on matters because a
-- Lua integer wraps on overflow rather than widening: the run would come back
-- negative and be used as a length, which raises from inside Wireshark rather
-- than saying what was wrong with the packet. The two that accumulate into
-- Wireshark's own 64 bit values take all ten; the two that accumulate into a
-- Lua integer stop at the nine that cannot overflow it, a value needing the
-- tenth being wider than anything they are asked to read.
local FAST_WIDE_OCTETS = 10
local FAST_NUMBER_OCTETS = 9

-- read an unsigned fast integer
local function read_stop_bit_unsigned(buffer, offset)
  local value = 0
  local octet
  local octets = 0

  repeat
    if offset >= buffer:len() then error("truncated FAST unsigned integer") end
    if octets == FAST_NUMBER_OCTETS then error("FAST unsigned integer wider than 63 bits") end
    octet = buffer(offset, 1):uint()
    value = (value * 128) + bit.band(octet, 0x7f)
    offset = offset + 1
    octets = octets + 1
  until bit.band(octet, 0x80) ~= 0

  return value, offset
end

-- read a signed fast integer, its sign taken from the first octet
local function read_stop_bit_signed(buffer, offset)
  if offset >= buffer:len() then error("truncated FAST signed integer") end
  local octet = buffer(offset, 1):uint()
  local value = (bit.band(octet, 0x40) ~= 0) and -1 or 0
  local octets = 0

  repeat
    if offset >= buffer:len() then error("truncated FAST signed integer") end
    if octets == FAST_NUMBER_OCTETS then error("FAST signed integer wider than 63 bits") end
    octet = buffer(offset, 1):uint()
    value = (value * 128) + bit.band(octet, 0x7f)
    offset = offset + 1
    octets = octets + 1
  until bit.band(octet, 0x80) ~= 0

  return value, offset
end

-- read a wide unsigned fast integer, which keeps its low bits as a UInt64
local function read_stop_bit_uint64(buffer, offset)
  local value = UInt64(0)
  local octet
  local octets = 0

  repeat
    if offset >= buffer:len() then error("truncated FAST unsigned integer") end
    if octets == FAST_WIDE_OCTETS then error("FAST unsigned integer wider than 64 bits") end
    octet = buffer(offset, 1):uint()
    value = value * 128 + bit.band(octet, 0x7f)
    offset = offset + 1
    octets = octets + 1
  until bit.band(octet, 0x80) ~= 0

  return value, offset
end

-- read a wide signed fast integer, which keeps its low bits as an Int64
local function read_stop_bit_int64(buffer, offset)
  if offset >= buffer:len() then error("truncated FAST signed integer") end
  local octet = buffer(offset, 1):uint()
  local value = (bit.band(octet, 0x40) ~= 0) and Int64(-1) or Int64(0)
  local octets = 0

  repeat
    if offset >= buffer:len() then error("truncated FAST signed integer") end
    if octets == FAST_WIDE_OCTETS then error("FAST signed integer wider than 64 bits") end
    octet = buffer(offset, 1):uint()
    value = value * 128 + bit.band(octet, 0x7f)
    offset = offset + 1
    octets = octets + 1
  until bit.band(octet, 0x80) ~= 0

  return value, offset
end

-- Optional integers shift by one on the wire: zero is the explicit null
local function read_nullable_unsigned(buffer, offset)
  local value
  value, offset = read_stop_bit_unsigned(buffer, offset)
  if value == 0 then return nil, offset end

  return value - 1, offset
end

local function read_nullable_signed(buffer, offset)
  local value
  value, offset = read_stop_bit_signed(buffer, offset)
  if value == 0 then return nil, offset end
  if value > 0 then return value - 1, offset end

  return value, offset
end

local function read_nullable_uint64(buffer, offset)
  local value
  value, offset = read_stop_bit_uint64(buffer, offset)
  if value == UInt64(0) then return nil, offset end

  return value - 1, offset
end

local function read_nullable_int64(buffer, offset)
  local value
  value, offset = read_stop_bit_int64(buffer, offset)
  if value == Int64(0) then return nil, offset end
  if value > Int64(0) then return value - 1, offset end

  return value, offset
end

-- read a fast ascii string, which runs to the octet carrying the stop bit
local function read_ascii_string(buffer, offset)
  local start = offset
  local octet

  repeat
    if offset >= buffer:len() then error("truncated FAST ascii string") end
    octet = buffer(offset, 1):uint()
    offset = offset + 1
  until bit.band(octet, 0x80) ~= 0

  -- Every character but the last is 7 bit and reads as it stands. The last
  -- octet carries the stop bit in its high bit, so it is masked back to the
  -- character it carries rather than read as text: read as text it is not a
  -- character at all, and Wireshark substitutes a replacement character three
  -- bytes wide where the octet was one, which would leave two stray bytes
  -- inside every string the wire carries.
  local text = buffer(start, offset - start - 1):string()
  local last = bit.band(octet, 0x7f)

  -- a run closing on a nul carries no character there: the string ends before it
  if last == 0 then
    return text, offset
  end

  return text .. string.char(last), offset
end

-- the same where the field is optional. Fast spells a nullable string's null
-- as one octet carrying nothing, and its empty string as a nul ahead of that
-- one, so a leading nul is the null indicator rather than a character: read
-- plain, a null comes back as the empty string and a field that is absent is
-- reported as one that is there and blank
local function read_nullable_ascii_string(buffer, offset)
  local start = offset
  local octet

  repeat
    if offset >= buffer:len() then error("truncated FAST ascii string") end
    octet = buffer(offset, 1):uint()
    offset = offset + 1
  until bit.band(octet, 0x80) ~= 0

  local last = bit.band(octet, 0x7f)

  -- one octet carrying nothing says the field is absent
  if offset - start == 1 and last == 0 then
    return nil, offset
  end

  -- the characters begin after the null indicator where the run carries one.
  -- Read from the octets rather than through :string() of the whole run, so a
  -- nul inside it cannot end the text early.
  local from = buffer(start, 1):uint() == 0 and start + 1 or start
  local text = offset - 1 > from and buffer(from, offset - 1 - from):string() or ""

  -- a run closing on a nul carries no character there: the string ends before it
  if last == 0 then
    return text, offset
  end

  return text .. string.char(last), offset
end

-- splice a string delta onto the value the stream last sent: a subtraction
-- length says how much of it to drop, and the characters that follow take the
-- dropped part's place. A non-negative length drops from the tail and the
-- difference goes after what is left; a negative one drops from the head and
-- the difference goes in front, counting from -1 for nothing dropped, there
-- being no negative zero to say it with.
local function splice_string_delta(buffer, offset, base, length)
  local text
  text, offset = read_ascii_string(buffer, offset)
  base = base or ""

  -- sub clamps, so a length longer than what is remembered drops all of it
  -- rather than reading off the end of the string
  if length < 0 then
    return text .. base:sub(-length), offset
  end

  return base:sub(1, #base - length) .. text, offset
end

-- read a fast string delta, whose subtraction length leads
local function read_string_delta(buffer, offset, base)
  local length
  length, offset = read_stop_bit_signed(buffer, offset)

  return splice_string_delta(buffer, offset, base, length)
end

-- the same where the field is optional: the subtraction length carries the
-- null, and a null one says the field is absent, with no difference behind it
local function read_nullable_string_delta(buffer, offset, base)
  local length
  length, offset = read_nullable_signed(buffer, offset)
  if length == nil then return nil, offset end

  return splice_string_delta(buffer, offset, base, length)
end

-- read a fast byte vector, counted by the length that precedes it
local function read_byte_vector(buffer, offset)
  local length
  length, offset = read_stop_bit_unsigned(buffer, offset)

  -- the length is checked against what is left rather than by adding it to the
  -- offset, so that a length too large to add cannot pass the check it breaks
  if length < 0 or length > buffer:len() - offset then
    error("truncated FAST byte vector")
  end

  return buffer(offset, length), offset + length
end

-- the same where the field is optional: the length carries the null, and a null
-- one says the field is absent, with no octets behind it
local function read_nullable_byte_vector(buffer, offset)
  local length
  length, offset = read_nullable_unsigned(buffer, offset)
  if length == nil then return nil, offset end

  if length < 0 or length > buffer:len() - offset then
    error("truncated FAST byte vector")
  end

  return buffer(offset, length), offset + length
end

-- read a byte vector whose octets carry a big endian unsigned integer. A field
-- a receiver must be able to skip without decoding cannot be a stop bit
-- integer, which is as wide as its value needs, so a protocol carries the
-- integer in a vector of fixed width instead.
local function read_byte_vector_unsigned(buffer, offset)
  local range
  range, offset = read_byte_vector(buffer, offset)
  if range:len() == 0 then return 0, offset end
  if range:len() > 4 then error("FAST byte vector too wide for a 32 bit integer") end

  return range:uint(), offset
end

local function read_byte_vector_uint64(buffer, offset)
  local range
  range, offset = read_byte_vector(buffer, offset)
  if range:len() == 0 then return UInt64(0), offset end
  if range:len() > 8 then error("FAST byte vector too wide for a 64 bit integer") end

  return range:uint64(), offset
end

-- the same, read signed: an instant is accumulated signed because Wireshark
-- refuses arithmetic between an Int64 and a UInt64, and turning a count of
-- time units into a time divides it
local function read_byte_vector_int64(buffer, offset)
  local range
  range, offset = read_byte_vector(buffer, offset)
  if range:len() == 0 then return Int64(0), offset end
  if range:len() > 8 then error("FAST byte vector too wide for a 64 bit integer") end

  return range:int64(), offset
end

-- transfer operator state, isolated by directed transport stream
local stream_states = {}

local function state_for(packet)
  local key = tostring(packet.src) .. ":" .. tostring(packet.src_port)
    .. ">" .. tostring(packet.dst) .. ":" .. tostring(packet.dst_port)
  local state = stream_states[key]

  if state == nil then
    state = { values = {}, last_template_id = nil }
    stream_states[key] = state
  end

  return state
end


-----------------------------------------------------------------------
-- Eurex T7 UnderlyingTicker Fast 13.0 Fields
-----------------------------------------------------------------------

-- Sender Comp ID (Sent)
eurex_t7_underlyingticker_fast_v13_0.sender_comp_id_sent = {}

-- Dissect: Sender Comp ID (Sent)
eurex_t7_underlyingticker_fast_v13_0.sender_comp_id_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_underlyingticker_fast_v13_0.fields.sender_comp_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_underlyingticker_fast_v13_0.fields.sender_comp_id, range, 0)
    absent:set_text("Sender Comp ID: No Value")
  end

  return offset, value
end

-- Sender Comp ID (Copy)
eurex_t7_underlyingticker_fast_v13_0.sender_comp_id_copy = {}

-- Dissect: Sender Comp ID (Copy)
eurex_t7_underlyingticker_fast_v13_0.sender_comp_id_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Sender Comp ID was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_underlyingticker_fast_v13_0.fields.sender_comp_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_underlyingticker_fast_v13_0.fields.sender_comp_id, range, 0)
    absent:set_text("Sender Comp ID: No Value")
  end

  return offset, value
end

-- Packet Seq Num
eurex_t7_underlyingticker_fast_v13_0.packet_seq_num = {}

-- Dissect: Packet Seq Num
eurex_t7_underlyingticker_fast_v13_0.packet_seq_num.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_byte_vector_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_underlyingticker_fast_v13_0.fields.packet_seq_num, range, value)
  else
    local absent = parent:add(omi_eurex_t7_underlyingticker_fast_v13_0.fields.packet_seq_num, range, 0)
    absent:set_text("Packet Seq Num: No Value")
  end

  return offset, value
end

-- Sending Time
eurex_t7_underlyingticker_fast_v13_0.sending_time = {}

-- Dissect: Sending Time
eurex_t7_underlyingticker_fast_v13_0.sending_time.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_byte_vector_int64(buffer, offset)

  local range = buffer(start, offset - start)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_underlyingticker_fast_v13_0.fields.sending_time, range, NSTime.new(0, 0))
    absent:set_text("Sending Time: No Value")
  else
    local seconds = (value / Int64(1000000000)):tonumber()
    local nanos = (value % Int64(1000000000)):tonumber()
    parent:add(omi_eurex_t7_underlyingticker_fast_v13_0.fields.sending_time, range, NSTime.new(seconds, nanos))
  end

  return offset, value
end

-- Msg Type
eurex_t7_underlyingticker_fast_v13_0.msg_type = {}

-- Dissect: Msg Type
eurex_t7_underlyingticker_fast_v13_0.msg_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "X"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_underlyingticker_fast_v13_0.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_eurex_t7_underlyingticker_fast_v13_0.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Seq Num
eurex_t7_underlyingticker_fast_v13_0.msg_seq_num = {}

-- Dissect: Msg Seq Num
eurex_t7_underlyingticker_fast_v13_0.msg_seq_num.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = state.values[key]
    if value ~= nil then value = value + 1 end
  end

  state.values[key] = value

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Msg Seq Num was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_underlyingticker_fast_v13_0.fields.msg_seq_num, range, value)
  else
    local absent = parent:add(omi_eurex_t7_underlyingticker_fast_v13_0.fields.msg_seq_num, range, 0)
    absent:set_text("Msg Seq Num: No Value")
  end

  return offset, value
end

-- No MD Entries
eurex_t7_underlyingticker_fast_v13_0.no_md_entries = {}

-- Dissect: No MD Entries
eurex_t7_underlyingticker_fast_v13_0.no_md_entries.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_underlyingticker_fast_v13_0.fields.no_md_entries, range, value)
  else
    local absent = parent:add(omi_eurex_t7_underlyingticker_fast_v13_0.fields.no_md_entries, range, 0)
    absent:set_text("No MD Entries: No Value")
  end

  return offset, value
end

-- MD Entry Type
eurex_t7_underlyingticker_fast_v13_0.md_entry_type = {}

-- Display: MD Entry Type
eurex_t7_underlyingticker_fast_v13_0.md_entry_type.display = function(value)
  if value == nil then
    return "MD Entry Type: No Value"
  end

  if value == 0 then
    return "MD Entry Type: Bid (0)"
  end
  if value == 1 then
    return "MD Entry Type: Offer (1)"
  end
  if value == 2 then
    return "MD Entry Type: Trade (2)"
  end
  if value == 3 then
    return "MD Entry Type: EmptyBook (J)"
  end
  if value == 4 then
    return "MD Entry Type: AuctionClearingPrice (Q)"
  end
  if value == 5 then
    return "MD Entry Type: SettlementPrice (6)"
  end
  if value == 6 then
    return "MD Entry Type: OpenInterest (C)"
  end
  if value == 7 then
    return "MD Entry Type: TradeVolume (B)"
  end
  if value == 8 then
    return "MD Entry Type: MarketBid (b)"
  end
  if value == 9 then
    return "MD Entry Type: MarketOffer (c)"
  end
  if value == 10 then
    return "MD Entry Type: Imbalance (A)"
  end

  return "MD Entry Type: Unknown("..value..")"
end

-- Dissect: MD Entry Type
eurex_t7_underlyingticker_fast_v13_0.md_entry_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "MD Entry Type was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_underlyingticker_fast_v13_0.md_entry_type.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_underlyingticker_fast_v13_0.fields.md_entry_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_underlyingticker_fast_v13_0.fields.md_entry_type, range, value, display)
  end

  return offset, value
end

-- MD Update Action
eurex_t7_underlyingticker_fast_v13_0.md_update_action = {}

-- Display: MD Update Action
eurex_t7_underlyingticker_fast_v13_0.md_update_action.display = function(value)
  if value == nil then
    return "MD Update Action: No Value"
  end

  if value == 0 then
    return "MD Update Action: New (0)"
  end
  if value == 1 then
    return "MD Update Action: Change (1)"
  end
  if value == 2 then
    return "MD Update Action: Delete (2)"
  end
  if value == 3 then
    return "MD Update Action: DeleteThru (3)"
  end
  if value == 4 then
    return "MD Update Action: DeleteFrom (4)"
  end
  if value == 5 then
    return "MD Update Action: Overlay (5)"
  end

  return "MD Update Action: Unknown("..value..")"
end

-- Dissect: MD Update Action
eurex_t7_underlyingticker_fast_v13_0.md_update_action.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = 0

  local range = buffer(start, offset - start)

  local display = eurex_t7_underlyingticker_fast_v13_0.md_update_action.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_underlyingticker_fast_v13_0.fields.md_update_action, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_underlyingticker_fast_v13_0.fields.md_update_action, range, value, display)
  end

  return offset, value
end

-- Security ID
eurex_t7_underlyingticker_fast_v13_0.security_id = {}

-- Dissect: Security ID
eurex_t7_underlyingticker_fast_v13_0.security_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_string_delta(buffer, offset, state.values[key])
  state.values[key] = value

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_underlyingticker_fast_v13_0.fields.security_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_underlyingticker_fast_v13_0.fields.security_id, range, "")
    absent:set_text("Security ID: No Value")
  end

  return offset, value
end

-- Security ID Source
eurex_t7_underlyingticker_fast_v13_0.security_id_source = {}

-- Dissect: Security ID Source
eurex_t7_underlyingticker_fast_v13_0.security_id_source.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "4"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_underlyingticker_fast_v13_0.fields.security_id_source, range, value)
  else
    local absent = parent:add(omi_eurex_t7_underlyingticker_fast_v13_0.fields.security_id_source, range, "")
    absent:set_text("Security ID Source: No Value")
  end

  return offset, value
end

-- MD Entry Px
eurex_t7_underlyingticker_fast_v13_0.md_entry_px = {}

-- Display: MD Entry Px
eurex_t7_underlyingticker_fast_v13_0.md_entry_px.display = function(value)
  if value == nil then
    return "MD Entry Px: No Value"
  end

  return "MD Entry Px: "..value
end

-- Dissect: MD Entry Px
eurex_t7_underlyingticker_fast_v13_0.md_entry_px.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  local exponent_delta = nil
  local mantissa_delta = nil
  exponent_delta, offset = read_stop_bit_signed(buffer, offset)

  if exponent_delta ~= nil then
    mantissa_delta, offset = read_stop_bit_signed(buffer, offset)
    exponent = (state.values[key[1]] or 0) + exponent_delta
    mantissa = (state.values[key[2]] or 0) + mantissa_delta
    state.values[key[1]] = exponent
    state.values[key[2]] = mantissa
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_underlyingticker_fast_v13_0.md_entry_px.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_underlyingticker_fast_v13_0.fields.md_entry_px, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_underlyingticker_fast_v13_0.fields.md_entry_px, range, value, display)
  end

  return offset, value
end

-- MD Entry Size
eurex_t7_underlyingticker_fast_v13_0.md_entry_size = {}

-- Display: MD Entry Size
eurex_t7_underlyingticker_fast_v13_0.md_entry_size.display = function(value)
  if value == nil then
    return "MD Entry Size: No Value"
  end

  return "MD Entry Size: "..value
end

-- Dissect: MD Entry Size
eurex_t7_underlyingticker_fast_v13_0.md_entry_size.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  local exponent_delta = nil
  local mantissa_delta = nil
  exponent_delta, offset = read_nullable_signed(buffer, offset)

  if exponent_delta ~= nil then
    mantissa_delta, offset = read_stop_bit_signed(buffer, offset)
    exponent = (state.values[key[1]] or 0) + exponent_delta
    mantissa = (state.values[key[2]] or 0) + mantissa_delta
    state.values[key[1]] = exponent
    state.values[key[2]] = mantissa
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_underlyingticker_fast_v13_0.md_entry_size.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_underlyingticker_fast_v13_0.fields.md_entry_size, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_underlyingticker_fast_v13_0.fields.md_entry_size, range, value, display)
  end

  return offset, value
end

-- MD Entry Time
eurex_t7_underlyingticker_fast_v13_0.md_entry_time = {}

-- Dissect: MD Entry Time
eurex_t7_underlyingticker_fast_v13_0.md_entry_time.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local value_delta = nil
  value_delta, offset = read_nullable_int64(buffer, offset)

  if value_delta ~= nil then
    value = (state.values[key] or Int64(0)) + value_delta
    state.values[key] = value
  end

  local range = buffer(start, offset - start)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_underlyingticker_fast_v13_0.fields.md_entry_time, range, NSTime.new(0, 0))
    absent:set_text("MD Entry Time: No Value")
  else
    local seconds = (value / Int64(1000000000)):tonumber()
    local nanos = (value % Int64(1000000000)):tonumber()
    parent:add(omi_eurex_t7_underlyingticker_fast_v13_0.fields.md_entry_time, range, NSTime.new(seconds, nanos))
  end

  return offset, value
end

-- Currency
eurex_t7_underlyingticker_fast_v13_0.currency = {}

-- Dissect: Currency
eurex_t7_underlyingticker_fast_v13_0.currency.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_underlyingticker_fast_v13_0.fields.currency, range, value)
  else
    local absent = parent:add(omi_eurex_t7_underlyingticker_fast_v13_0.fields.currency, range, "")
    absent:set_text("Currency: No Value")
  end

  return offset, value
end

-- MD Stream ID
eurex_t7_underlyingticker_fast_v13_0.md_stream_id = {}

-- Dissect: MD Stream ID
eurex_t7_underlyingticker_fast_v13_0.md_stream_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "MD Stream ID was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_underlyingticker_fast_v13_0.fields.md_stream_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_underlyingticker_fast_v13_0.fields.md_stream_id, range, "")
    absent:set_text("MD Stream ID: No Value")
  end

  return offset, value
end


-----------------------------------------------------------------------
-- Dissect Eurex T7 UnderlyingTicker Fast 13.0
-----------------------------------------------------------------------

-- MD Inc Grp
eurex_t7_underlyingticker_fast_v13_0.md_inc_grp = {}

-- Dissect Fields: MD Inc Grp
eurex_t7_underlyingticker_fast_v13_0.md_inc_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- MD Entry Type: uInt32, Copy
  index, value = eurex_t7_underlyingticker_fast_v13_0.md_entry_type.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|11:MDEntryType")

  -- MD Update Action: uInt32, Constant
  index, value = eurex_t7_underlyingticker_fast_v13_0.md_update_action.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security ID: string, Delta
  index, value = eurex_t7_underlyingticker_fast_v13_0.security_id.dissect(buffer, index, packet, parent, nil, state, "8:template|41:https://www.deutsche-boerse.com/eurticker|13:TickerMessage|0:|10:SecurityID")

  -- Security ID Source: string, Constant
  index, value = eurex_t7_underlyingticker_fast_v13_0.security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- MD Entry Px: decimal, Delta
  index, value = eurex_t7_underlyingticker_fast_v13_0.md_entry_px.dissect(buffer, index, packet, parent, { nil, false }, state, { "6:global|0:|9:MDEntryPx|E", "6:global|0:|9:MDEntryPx|M" })

  -- MD Entry Size: decimal, Delta, optional
  index, value = eurex_t7_underlyingticker_fast_v13_0.md_entry_size.dissect(buffer, index, packet, parent, { nil, false }, state, { "6:global|0:|11:MDEntrySize|E", "6:global|0:|11:MDEntrySize|M" })

  -- MD Entry Time: timestamp, Delta, optional
  index, value = eurex_t7_underlyingticker_fast_v13_0.md_entry_time.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|11:MDEntryTime")

  -- Currency: string, Copy, optional
  index, value = eurex_t7_underlyingticker_fast_v13_0.currency.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|8:Currency")

  -- MD Stream ID: string, Copy
  index, value = eurex_t7_underlyingticker_fast_v13_0.md_stream_id.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|10:MDStreamID")

  return index
end

-- Dissect: MD Inc Grp
eurex_t7_underlyingticker_fast_v13_0.md_inc_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_underlyingticker_fast_v13_0.fields.md_inc_grp, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_underlyingticker_fast_v13_0.md_inc_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Ticker Message Message
eurex_t7_underlyingticker_fast_v13_0.ticker_message = {}

eurex_t7_underlyingticker_fast_v13_0.ticker_message.node = omi_eurex_t7_underlyingticker_fast_v13_0.fields.ticker_message
eurex_t7_underlyingticker_fast_v13_0.ticker_message.presence = {
  [2] = omi_eurex_t7_underlyingticker_fast_v13_0.fields.presence_msg_seq_num,
  [3] = omi_eurex_t7_underlyingticker_fast_v13_0.fields.presence_sender_comp_id,
}

-- Dissect Fields: Ticker Message Message
eurex_t7_underlyingticker_fast_v13_0.ticker_message.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = eurex_t7_underlyingticker_fast_v13_0.msg_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, Increment
  index, value = eurex_t7_underlyingticker_fast_v13_0.msg_seq_num.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Sender Comp ID: uInt32, Copy
  index, value = eurex_t7_underlyingticker_fast_v13_0.sender_comp_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:SenderCompID")

  -- No MD Entries: uInt32, sent
  index, value = eurex_t7_underlyingticker_fast_v13_0.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- MD Inc Grp: No MD Entries entries
  local count = value or 0
  for md_inc_grp_index = 1, count do
    index = eurex_t7_underlyingticker_fast_v13_0.md_inc_grp.dissect(buffer, index, packet, parent, presence_map, base, state, md_inc_grp_index)
  end

  return index
end

-- Dissect: Ticker Message Message
eurex_t7_underlyingticker_fast_v13_0.ticker_message.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = eurex_t7_underlyingticker_fast_v13_0.ticker_message.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Packet Header Framing
eurex_t7_underlyingticker_fast_v13_0.packet_header = {}

eurex_t7_underlyingticker_fast_v13_0.packet_header.node = omi_eurex_t7_underlyingticker_fast_v13_0.fields.packet_header

-- Dissect Fields: Packet Header Framing
eurex_t7_underlyingticker_fast_v13_0.packet_header.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Sender Comp ID: uInt32, sent
  index, value = eurex_t7_underlyingticker_fast_v13_0.sender_comp_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Packet Seq Num: byteVector, sent
  index, value = eurex_t7_underlyingticker_fast_v13_0.packet_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: byteVector, sent
  index, value = eurex_t7_underlyingticker_fast_v13_0.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Packet Header Framing
eurex_t7_underlyingticker_fast_v13_0.packet_header.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = eurex_t7_underlyingticker_fast_v13_0.packet_header.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Eurex T7 UnderlyingTicker Fast 13.0 Message Dispatch
eurex_t7_underlyingticker_fast_v13_0.templates = {
  [80] = eurex_t7_underlyingticker_fast_v13_0.packet_header,
  [180] = eurex_t7_underlyingticker_fast_v13_0.ticker_message,
}

-- Eurex T7 UnderlyingTicker Fast 13.0 Template Names
eurex_t7_underlyingticker_fast_v13_0.template_id = {}

-- Display: Template Id
eurex_t7_underlyingticker_fast_v13_0.template_id.display = function(value)
  if value == 80 then
    return "Template Id: PacketHeader (80)"
  end
  if value == 180 then
    return "Template Id: TickerMessage (180)"
  end
  if value == 120 then
    return "Template Id: Reset (120)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Name: Template Id
eurex_t7_underlyingticker_fast_v13_0.template_id.name = function(value)
  if value == 80 then
    return "PacketHeader"
  end
  if value == 180 then
    return "TickerMessage"
  end
  if value == 120 then
    return "Reset"
  end

  return "Unknown"
end

-- Eurex T7 UnderlyingTicker Fast 13.0 Framing
eurex_t7_underlyingticker_fast_v13_0.header = 80
eurex_t7_underlyingticker_fast_v13_0.reset = 120

-- Eurex T7 UnderlyingTicker Fast 13.0 Packet Dissector
omi_eurex_t7_underlyingticker_fast_v13_0.dissector = function(buffer, packet, parent)
  packet.cols.protocol = "Eurex T7 UnderlyingTicker Fast 13.0"
  local root = parent:add(omi_eurex_t7_underlyingticker_fast_v13_0, buffer(), "Eurex T7 UnderlyingTicker Fast 13.0")
  local state = state_for(packet)
  local offset = 0
  local messages = 0

  while offset < buffer:len() do
    local start = offset

    local holder = root

    local presence_map = nil
    local mapped_start = offset
    presence_map, offset = read_presence_map(buffer, offset)
    local mapped = offset

    -- the first bit says whether the template id was sent
    local template_id = nil
    local identified = offset
    if presence_map[1] then
      template_id, offset = read_stop_bit_unsigned(buffer, offset)
      state.last_template_id = template_id
    else
      template_id = state.last_template_id
    end

    if template_id == nil then
      root:add_expert_info(PI_MALFORMED, PI_ERROR, "FAST template id was omitted before the stream sent one")
      return
    end

    local template = eurex_t7_underlyingticker_fast_v13_0.templates[template_id]
    local message_tree = nil

    if template ~= nil then
      message_tree = holder:add(template.node, buffer(start, 0))
    else
      message_tree = holder:add(omi_eurex_t7_underlyingticker_fast_v13_0.fields.message, buffer(start, 0))
      message_tree:set_text(eurex_t7_underlyingticker_fast_v13_0.template_id.name(template_id))
    end

    -- the presence map and the template id are the message's own framing
    local header = message_tree:add(omi_eurex_t7_underlyingticker_fast_v13_0.fields.message_header, buffer(mapped_start, offset - mapped_start))
    local named = nil
    if template ~= nil then
      named = template.presence
    end
    add_presence_map(header, buffer(mapped_start, mapped - mapped_start), omi_eurex_t7_underlyingticker_fast_v13_0.fields.presence_map, omi_eurex_t7_underlyingticker_fast_v13_0.fields.presence_stop, omi_eurex_t7_underlyingticker_fast_v13_0.fields.presence_identified, omi_eurex_t7_underlyingticker_fast_v13_0.fields.presence_unused, named)
    header:add(omi_eurex_t7_underlyingticker_fast_v13_0.fields.template_id, buffer(identified, offset - identified), template_id, eurex_t7_underlyingticker_fast_v13_0.template_id.display(template_id))

    -- the reset template tells a receiver to forget what the stream remembered
    if template_id == eurex_t7_underlyingticker_fast_v13_0.reset then
      state.values = {}
      state.last_template_id = nil
    else
      if template == nil then
        message_tree:add_expert_info(PI_UNDECODED, PI_WARN, "This dissector reads: 80 (PacketHeader), 180 (TickerMessage)")
        message_tree:set_len(offset - start)
        return
      end

      -- every packet opens with the template the model frames them with
      if messages == 0 and template_id ~= eurex_t7_underlyingticker_fast_v13_0.header then
        root:add_expert_info(PI_PROTOCOL, PI_WARN, "FAST packet did not open with its packet header template")
      end

      offset = template.dissect(buffer, offset, packet, message_tree, presence_map, 2, state, nil)
      messages = messages + 1
    end

    -- the message occupies whatever its framing and its fields consumed
    message_tree:set_len(offset - start)

    -- a dissection that read nothing would read the same octets for ever
    if offset <= start then
      root:add_expert_info(PI_MALFORMED, PI_ERROR, "FAST message made no forward progress")
      return
    end
  end
end

-- a reload starts every stream's remembered values again
omi_eurex_t7_underlyingticker_fast_v13_0.init = function()
  stream_states = {}
end

-- Register Eurex T7 UnderlyingTicker Fast 13.0 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_eurex_t7_underlyingticker_fast_v13_0)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Eurex Exchange
--   Version: v13.0
--   Specification: T7 EMDS Underlying Ticker Manual
--
-- Script:
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
