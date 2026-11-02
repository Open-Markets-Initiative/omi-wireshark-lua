-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Eurex T7 MarketSignals Fast 8.1 Protocol
local omi_eurex_t7_marketsignals_fast_v8_1 = Proto("Omi.Eurex.T7.MarketSignals.Fast.v8.1", "Eurex T7 MarketSignals Fast 8.1")

-- Protocol table
local eurex_t7_marketsignals_fast_v8_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Eurex T7 MarketSignals Fast 8.1 Framing
omi_eurex_t7_marketsignals_fast_v8_1.fields.message = ProtoField.new("Message", "eurex.t7.marketsignals.fast.v8.1.message", ftypes.NONE)
omi_eurex_t7_marketsignals_fast_v8_1.fields.message_header = ProtoField.new("Message Header", "eurex.t7.marketsignals.fast.v8.1.messageheader", ftypes.NONE)
omi_eurex_t7_marketsignals_fast_v8_1.fields.presence_map = ProtoField.new("Presence Map", "eurex.t7.marketsignals.fast.v8.1.presencemap", ftypes.BYTES)
omi_eurex_t7_marketsignals_fast_v8_1.fields.template_id = ProtoField.new("Template Id", "eurex.t7.marketsignals.fast.v8.1.templateid", ftypes.UINT32)
omi_eurex_t7_marketsignals_fast_v8_1.fields.record = ProtoField.new("Record", "eurex.t7.marketsignals.fast.v8.1.record", ftypes.NONE)
omi_eurex_t7_marketsignals_fast_v8_1.fields.presence_stop = ProtoField.new("Stop Bit", "eurex.t7.marketsignals.fast.v8.1.presencestop", ftypes.UINT8, { [0] = "Clear", [1] = "Set" }, base.DEC)
omi_eurex_t7_marketsignals_fast_v8_1.fields.presence_identified = ProtoField.new("Template Id", "eurex.t7.marketsignals.fast.v8.1.presencetemplateid", ftypes.UINT8, { [0] = "Repeated", [1] = "Sent" }, base.DEC)
omi_eurex_t7_marketsignals_fast_v8_1.fields.presence_unused = ProtoField.new("Unused", "eurex.t7.marketsignals.fast.v8.1.presenceunused", ftypes.UINT8, nil, base.HEX)

-- Eurex T7 MarketSignals Fast 8.1 Presence Map Fields
omi_eurex_t7_marketsignals_fast_v8_1.fields.presence_md_report_event = ProtoField.new("Md Report Event", "eurex.t7.marketsignals.fast.v8.1.mdreporteventpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_marketsignals_fast_v8_1.fields.presence_sender_comp_id = ProtoField.new("Sender Comp Id", "eurex.t7.marketsignals.fast.v8.1.sendercompidpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_marketsignals_fast_v8_1.fields.presence_security_exchange = ProtoField.new("Security Exchange", "eurex.t7.marketsignals.fast.v8.1.securityexchangepresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_marketsignals_fast_v8_1.fields.presence_security_id = ProtoField.new("Security Id", "eurex.t7.marketsignals.fast.v8.1.securityidpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_marketsignals_fast_v8_1.fields.presence_security_id_source = ProtoField.new("Security Id Source", "eurex.t7.marketsignals.fast.v8.1.securityidsourcepresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_marketsignals_fast_v8_1.fields.presence_no_md_statistic = ProtoField.new("No Md Statistic", "eurex.t7.marketsignals.fast.v8.1.nomdstatisticpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)

-- Eurex T7 MarketSignals Fast 8.1 Fields
omi_eurex_t7_marketsignals_fast_v8_1.fields.sender_comp_id = ProtoField.new("Sender Comp Id", "eurex.t7.marketsignals.fast.v8.1.sendercompid", ftypes.UINT32)
omi_eurex_t7_marketsignals_fast_v8_1.fields.packet_seq_num = ProtoField.new("Packet Seq Num", "eurex.t7.marketsignals.fast.v8.1.packetseqnum", ftypes.UINT32)
omi_eurex_t7_marketsignals_fast_v8_1.fields.sending_time = ProtoField.new("Sending Time", "eurex.t7.marketsignals.fast.v8.1.sendingtime", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_eurex_t7_marketsignals_fast_v8_1.fields.msg_type = ProtoField.new("Msg Type", "eurex.t7.marketsignals.fast.v8.1.msgtype", ftypes.STRING)
omi_eurex_t7_marketsignals_fast_v8_1.fields.md_report_count = ProtoField.new("Md Report Count", "eurex.t7.marketsignals.fast.v8.1.mdreportcount", ftypes.UINT32)
omi_eurex_t7_marketsignals_fast_v8_1.fields.last_msg_seq_num_processed = ProtoField.new("Last Msg Seq Num Processed", "eurex.t7.marketsignals.fast.v8.1.lastmsgseqnumprocessed", ftypes.UINT32)
omi_eurex_t7_marketsignals_fast_v8_1.fields.md_report_event = ProtoField.new("Md Report Event", "eurex.t7.marketsignals.fast.v8.1.mdreportevent", ftypes.UINT32)
omi_eurex_t7_marketsignals_fast_v8_1.fields.transact_time = ProtoField.new("Transact Time", "eurex.t7.marketsignals.fast.v8.1.transacttime", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_eurex_t7_marketsignals_fast_v8_1.fields.md_statistic_rpt_id = ProtoField.new("Md Statistic Rpt Id", "eurex.t7.marketsignals.fast.v8.1.mdstatisticrptid", ftypes.STRING)
omi_eurex_t7_marketsignals_fast_v8_1.fields.security_exchange = ProtoField.new("Security Exchange", "eurex.t7.marketsignals.fast.v8.1.securityexchange", ftypes.STRING)
omi_eurex_t7_marketsignals_fast_v8_1.fields.security_id = ProtoField.new("Security Id", "eurex.t7.marketsignals.fast.v8.1.securityid", ftypes.STRING)
omi_eurex_t7_marketsignals_fast_v8_1.fields.security_id_source = ProtoField.new("Security Id Source", "eurex.t7.marketsignals.fast.v8.1.securityidsource", ftypes.STRING)
omi_eurex_t7_marketsignals_fast_v8_1.fields.no_md_statistic = ProtoField.new("No Md Statistic", "eurex.t7.marketsignals.fast.v8.1.nomdstatistic", ftypes.UINT32)
omi_eurex_t7_marketsignals_fast_v8_1.fields.md_statistic_id = ProtoField.new("Md Statistic Id", "eurex.t7.marketsignals.fast.v8.1.mdstatisticid", ftypes.UINT32)
omi_eurex_t7_marketsignals_fast_v8_1.fields.md_statistic_status = ProtoField.new("Md Statistic Status", "eurex.t7.marketsignals.fast.v8.1.mdstatisticstatus", ftypes.UINT32)
omi_eurex_t7_marketsignals_fast_v8_1.fields.md_statistic_name = ProtoField.new("Md Statistic Name", "eurex.t7.marketsignals.fast.v8.1.mdstatisticname", ftypes.STRING)
omi_eurex_t7_marketsignals_fast_v8_1.fields.md_statistic_desc = ProtoField.new("Md Statistic Desc", "eurex.t7.marketsignals.fast.v8.1.mdstatisticdesc", ftypes.STRING)
omi_eurex_t7_marketsignals_fast_v8_1.fields.md_statistic_frequency_period = ProtoField.new("Md Statistic Frequency Period", "eurex.t7.marketsignals.fast.v8.1.mdstatisticfrequencyperiod", ftypes.UINT32)
omi_eurex_t7_marketsignals_fast_v8_1.fields.md_statistic_frequency_unit = ProtoField.new("Md Statistic Frequency Unit", "eurex.t7.marketsignals.fast.v8.1.mdstatisticfrequencyunit", ftypes.UINT32)
omi_eurex_t7_marketsignals_fast_v8_1.fields.md_statistic_interval_period = ProtoField.new("Md Statistic Interval Period", "eurex.t7.marketsignals.fast.v8.1.mdstatisticintervalperiod", ftypes.UINT32)
omi_eurex_t7_marketsignals_fast_v8_1.fields.md_statistic_interval_unit = ProtoField.new("Md Statistic Interval Unit", "eurex.t7.marketsignals.fast.v8.1.mdstatisticintervalunit", ftypes.UINT32)
omi_eurex_t7_marketsignals_fast_v8_1.fields.md_statistic_type = ProtoField.new("Md Statistic Type", "eurex.t7.marketsignals.fast.v8.1.mdstatistictype", ftypes.UINT32)
omi_eurex_t7_marketsignals_fast_v8_1.fields.md_statistic_scope = ProtoField.new("Md Statistic Scope", "eurex.t7.marketsignals.fast.v8.1.mdstatisticscope", ftypes.UINT32)
omi_eurex_t7_marketsignals_fast_v8_1.fields.md_statistic_sub_scope = ProtoField.new("Md Statistic Sub Scope", "eurex.t7.marketsignals.fast.v8.1.mdstatisticsubscope", ftypes.UINT32)
omi_eurex_t7_marketsignals_fast_v8_1.fields.md_statistic_scope_type = ProtoField.new("Md Statistic Scope Type", "eurex.t7.marketsignals.fast.v8.1.mdstatisticscopetype", ftypes.UINT32)
omi_eurex_t7_marketsignals_fast_v8_1.fields.side = ProtoField.new("Side", "eurex.t7.marketsignals.fast.v8.1.side", ftypes.UINT32)
omi_eurex_t7_marketsignals_fast_v8_1.fields.ord_type = ProtoField.new("Ord Type", "eurex.t7.marketsignals.fast.v8.1.ordtype", ftypes.UINT32)
omi_eurex_t7_marketsignals_fast_v8_1.fields.time_in_force = ProtoField.new("Time In Force", "eurex.t7.marketsignals.fast.v8.1.timeinforce", ftypes.UINT32)
omi_eurex_t7_marketsignals_fast_v8_1.fields.md_statistic_ratio_type = ProtoField.new("Md Statistic Ratio Type", "eurex.t7.marketsignals.fast.v8.1.mdstatisticratiotype", ftypes.UINT32)
omi_eurex_t7_marketsignals_fast_v8_1.fields.no_md_stat_attributes = ProtoField.new("No Md Stat Attributes", "eurex.t7.marketsignals.fast.v8.1.nomdstatattributes", ftypes.UINT32)
omi_eurex_t7_marketsignals_fast_v8_1.fields.md_stat_attribute_type = ProtoField.new("Md Stat Attribute Type", "eurex.t7.marketsignals.fast.v8.1.mdstatattributetype", ftypes.UINT32)
omi_eurex_t7_marketsignals_fast_v8_1.fields.md_statistic_time = ProtoField.new("Md Statistic Time", "eurex.t7.marketsignals.fast.v8.1.mdstatistictime", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_eurex_t7_marketsignals_fast_v8_1.fields.md_statistic_value = ProtoField.new("Md Statistic Value", "eurex.t7.marketsignals.fast.v8.1.mdstatisticvalue", ftypes.DOUBLE)
omi_eurex_t7_marketsignals_fast_v8_1.fields.md_stat_attribute_value = ProtoField.new("Md Stat Attribute Value", "eurex.t7.marketsignals.fast.v8.1.mdstatattributevalue", ftypes.STRING)

-- Eurex T7 MarketSignals Fast 8.1 Messages
omi_eurex_t7_marketsignals_fast_v8_1.fields.packet_header = ProtoField.new("Packet Header Framing", "eurex.t7.marketsignals.fast.v8.1.packetheader", ftypes.NONE)
omi_eurex_t7_marketsignals_fast_v8_1.fields.market_data_report = ProtoField.new("Market Data Report Message", "eurex.t7.marketsignals.fast.v8.1.marketdatareport", ftypes.NONE)
omi_eurex_t7_marketsignals_fast_v8_1.fields.market_data_statistics_reference_data = ProtoField.new("Market Data Statistics Reference Data Message", "eurex.t7.marketsignals.fast.v8.1.marketdatastatisticsreferencedata", ftypes.NONE)
omi_eurex_t7_marketsignals_fast_v8_1.fields.market_data_statistics_reference_data_md_statistic_rpt_grp = ProtoField.new("Market Data Statistics Reference Data Md Statistic Rpt Grp", "eurex.t7.marketsignals.fast.v8.1.marketdatastatisticsreferencedatamdstatisticrptgrp", ftypes.NONE)
omi_eurex_t7_marketsignals_fast_v8_1.fields.market_data_statistics_reference_data_md_stats_attrib_grp = ProtoField.new("Market Data Statistics Reference Data Md Stats Attrib Grp", "eurex.t7.marketsignals.fast.v8.1.marketdatastatisticsreferencedatamdstatsattribgrp", ftypes.NONE)
omi_eurex_t7_marketsignals_fast_v8_1.fields.market_data_statistics_update = ProtoField.new("Market Data Statistics Update Message", "eurex.t7.marketsignals.fast.v8.1.marketdatastatisticsupdate", ftypes.NONE)
omi_eurex_t7_marketsignals_fast_v8_1.fields.market_data_statistics_update_md_statistic_rpt_grp = ProtoField.new("Market Data Statistics Update Md Statistic Rpt Grp", "eurex.t7.marketsignals.fast.v8.1.marketdatastatisticsupdatemdstatisticrptgrp", ftypes.NONE)
omi_eurex_t7_marketsignals_fast_v8_1.fields.market_data_statistics_update_md_stats_attrib_grp = ProtoField.new("Market Data Statistics Update Md Stats Attrib Grp", "eurex.t7.marketsignals.fast.v8.1.marketdatastatisticsupdatemdstatsattribgrp", ftypes.NONE)

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
-- Eurex T7 MarketSignals Fast 8.1 Fields
-----------------------------------------------------------------------

-- Sender Comp Id (Sent)
eurex_t7_marketsignals_fast_v8_1.sender_comp_id_sent = {}

-- Dissect: Sender Comp Id (Sent)
eurex_t7_marketsignals_fast_v8_1.sender_comp_id_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.sender_comp_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.sender_comp_id, range, 0)
    absent:set_text("Sender Comp Id: No Value")
  end

  return offset, value
end

-- Sender Comp Id (Copy)
eurex_t7_marketsignals_fast_v8_1.sender_comp_id_copy = {}

-- Dissect: Sender Comp Id (Copy)
eurex_t7_marketsignals_fast_v8_1.sender_comp_id_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Sender Comp Id was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.sender_comp_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.sender_comp_id, range, 0)
    absent:set_text("Sender Comp Id: No Value")
  end

  return offset, value
end

-- Packet Seq Num
eurex_t7_marketsignals_fast_v8_1.packet_seq_num = {}

-- Dissect: Packet Seq Num
eurex_t7_marketsignals_fast_v8_1.packet_seq_num.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_byte_vector_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.packet_seq_num, range, value)
  else
    local absent = parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.packet_seq_num, range, 0)
    absent:set_text("Packet Seq Num: No Value")
  end

  return offset, value
end

-- Sending Time
eurex_t7_marketsignals_fast_v8_1.sending_time = {}

-- Dissect: Sending Time
eurex_t7_marketsignals_fast_v8_1.sending_time.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_byte_vector_int64(buffer, offset)

  local range = buffer(start, offset - start)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.sending_time, range, NSTime.new(0, 0))
    absent:set_text("Sending Time: No Value")
  else
    local seconds = (value / Int64(1000000000)):tonumber()
    local nanos = (value % Int64(1000000000)):tonumber()
    parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.sending_time, range, NSTime.new(seconds, nanos))
  end

  return offset, value
end

-- Msg Type (Constant)
eurex_t7_marketsignals_fast_v8_1.msg_type_constant_u20 = {}

-- Dissect: Msg Type (Constant)
eurex_t7_marketsignals_fast_v8_1.msg_type_constant_u20.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "U20"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
eurex_t7_marketsignals_fast_v8_1.msg_type_constant_dp = {}

-- Dissect: Msg Type (Constant)
eurex_t7_marketsignals_fast_v8_1.msg_type_constant_dp.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "DP"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Md Report Count
eurex_t7_marketsignals_fast_v8_1.md_report_count = {}

-- Dissect: Md Report Count
eurex_t7_marketsignals_fast_v8_1.md_report_count.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.md_report_count, range, value)
  else
    local absent = parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.md_report_count, range, 0)
    absent:set_text("Md Report Count: No Value")
  end

  return offset, value
end

-- Last Msg Seq Num Processed
eurex_t7_marketsignals_fast_v8_1.last_msg_seq_num_processed = {}

-- Dissect: Last Msg Seq Num Processed
eurex_t7_marketsignals_fast_v8_1.last_msg_seq_num_processed.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local value_delta = nil
  value_delta, offset = read_nullable_signed(buffer, offset)

  if value_delta ~= nil then
    value = (state.values[key] or 0) + value_delta
    state.values[key] = value
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.last_msg_seq_num_processed, range, value)
  else
    local absent = parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.last_msg_seq_num_processed, range, 0)
    absent:set_text("Last Msg Seq Num Processed: No Value")
  end

  return offset, value
end

-- Md Report Event
eurex_t7_marketsignals_fast_v8_1.md_report_event = {}

-- Display: Md Report Event
eurex_t7_marketsignals_fast_v8_1.md_report_event.display = function(value)
  if value == nil then
    return "Md Report Event: No Value"
  end

  if value == 0 then
    return "Md Report Event: StartOfReferenceData (1)"
  end
  if value == 1 then
    return "Md Report Event: EndOfReferenceData (2)"
  end
  if value == 2 then
    return "Md Report Event: StartOfOtcTrades (3)"
  end
  if value == 3 then
    return "Md Report Event: EndOfOtcTrades (4)"
  end
  if value == 4 then
    return "Md Report Event: StartOfExchTrades (5)"
  end
  if value == 5 then
    return "Md Report Event: EndOfExchTrades (6)"
  end
  if value == 6 then
    return "Md Report Event: StartOfOpenInterest (7)"
  end
  if value == 7 then
    return "Md Report Event: EndOfOpenInterest (8)"
  end
  if value == 8 then
    return "Md Report Event: StartOfSettlement (9)"
  end
  if value == 9 then
    return "Md Report Event: EndOfSettlement (10)"
  end
  if value == 10 then
    return "Md Report Event: StartOfStatisticReferenceData (11)"
  end
  if value == 11 then
    return "Md Report Event: EndOfStatisticReferenceData (12)"
  end

  return "Md Report Event: Unknown("..value..")"
end

-- Dissect: Md Report Event
eurex_t7_marketsignals_fast_v8_1.md_report_event.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Md Report Event was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_marketsignals_fast_v8_1.md_report_event.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.md_report_event, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.md_report_event, range, value, display)
  end

  return offset, value
end

-- Transact Time
eurex_t7_marketsignals_fast_v8_1.transact_time = {}

-- Dissect: Transact Time
eurex_t7_marketsignals_fast_v8_1.transact_time.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local value_delta = nil
  value_delta, offset = read_stop_bit_int64(buffer, offset)
  value = (state.values[key] or Int64(0)) + value_delta
  state.values[key] = value

  local range = buffer(start, offset - start)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.transact_time, range, NSTime.new(0, 0))
    absent:set_text("Transact Time: No Value")
  else
    local seconds = (value / Int64(1000000000)):tonumber()
    local nanos = (value % Int64(1000000000)):tonumber()
    parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.transact_time, range, NSTime.new(seconds, nanos))
  end

  return offset, value
end

-- Md Statistic Rpt Id
eurex_t7_marketsignals_fast_v8_1.md_statistic_rpt_id = {}

-- Dissect: Md Statistic Rpt Id
eurex_t7_marketsignals_fast_v8_1.md_statistic_rpt_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "0"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.md_statistic_rpt_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.md_statistic_rpt_id, range, "")
    absent:set_text("Md Statistic Rpt Id: No Value")
  end

  return offset, value
end

-- Security Exchange
eurex_t7_marketsignals_fast_v8_1.security_exchange = {}

-- Dissect: Security Exchange
eurex_t7_marketsignals_fast_v8_1.security_exchange.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Security Exchange was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.security_exchange, range, value)
  else
    local absent = parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.security_exchange, range, "")
    absent:set_text("Security Exchange: No Value")
  end

  return offset, value
end

-- Security Id
eurex_t7_marketsignals_fast_v8_1.security_id = {}

-- Dissect: Security Id
eurex_t7_marketsignals_fast_v8_1.security_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Security Id was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.security_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.security_id, range, "")
    absent:set_text("Security Id: No Value")
  end

  return offset, value
end

-- Security Id Source
eurex_t7_marketsignals_fast_v8_1.security_id_source = {}

-- Dissect: Security Id Source
eurex_t7_marketsignals_fast_v8_1.security_id_source.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = "M"
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.security_id_source, range, value)
  else
    local absent = parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.security_id_source, range, "")
    absent:set_text("Security Id Source: No Value")
  end

  return offset, value
end

-- No Md Statistic
eurex_t7_marketsignals_fast_v8_1.no_md_statistic = {}

-- Dissect: No Md Statistic
eurex_t7_marketsignals_fast_v8_1.no_md_statistic.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "No Md Statistic was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.no_md_statistic, range, value)
  else
    local absent = parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.no_md_statistic, range, 0)
    absent:set_text("No Md Statistic: No Value")
  end

  return offset, value
end

-- Md Statistic Id
eurex_t7_marketsignals_fast_v8_1.md_statistic_id = {}

-- Dissect: Md Statistic Id
eurex_t7_marketsignals_fast_v8_1.md_statistic_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local value_delta = nil
  value_delta, offset = read_stop_bit_signed(buffer, offset)
  value = (state.values[key] or 0) + value_delta
  state.values[key] = value

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.md_statistic_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.md_statistic_id, range, 0)
    absent:set_text("Md Statistic Id: No Value")
  end

  return offset, value
end

-- Md Statistic Status
eurex_t7_marketsignals_fast_v8_1.md_statistic_status = {}

-- Display: Md Statistic Status
eurex_t7_marketsignals_fast_v8_1.md_statistic_status.display = function(value)
  if value == nil then
    return "Md Statistic Status: No Value"
  end

  if value == 0 then
    return "Md Statistic Status: Active (1)"
  end
  if value == 1 then
    return "Md Statistic Status: Inactive (2)"
  end

  return "Md Statistic Status: Unknown("..value..")"
end

-- Dissect: Md Statistic Status
eurex_t7_marketsignals_fast_v8_1.md_statistic_status.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_marketsignals_fast_v8_1.md_statistic_status.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.md_statistic_status, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.md_statistic_status, range, value, display)
  end

  return offset, value
end

-- Md Statistic Name
eurex_t7_marketsignals_fast_v8_1.md_statistic_name = {}

-- Dissect: Md Statistic Name
eurex_t7_marketsignals_fast_v8_1.md_statistic_name.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Md Statistic Name was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.md_statistic_name, range, value)
  else
    local absent = parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.md_statistic_name, range, "")
    absent:set_text("Md Statistic Name: No Value")
  end

  return offset, value
end

-- Md Statistic Desc
eurex_t7_marketsignals_fast_v8_1.md_statistic_desc = {}

-- Dissect: Md Statistic Desc
eurex_t7_marketsignals_fast_v8_1.md_statistic_desc.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Md Statistic Desc was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.md_statistic_desc, range, value)
  else
    local absent = parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.md_statistic_desc, range, "")
    absent:set_text("Md Statistic Desc: No Value")
  end

  return offset, value
end

-- Md Statistic Frequency Period
eurex_t7_marketsignals_fast_v8_1.md_statistic_frequency_period = {}

-- Dissect: Md Statistic Frequency Period
eurex_t7_marketsignals_fast_v8_1.md_statistic_frequency_period.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.md_statistic_frequency_period, range, value)
  else
    local absent = parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.md_statistic_frequency_period, range, 0)
    absent:set_text("Md Statistic Frequency Period: No Value")
  end

  return offset, value
end

-- Md Statistic Frequency Unit
eurex_t7_marketsignals_fast_v8_1.md_statistic_frequency_unit = {}

-- Display: Md Statistic Frequency Unit
eurex_t7_marketsignals_fast_v8_1.md_statistic_frequency_unit.display = function(value)
  if value == nil then
    return "Md Statistic Frequency Unit: No Value"
  end

  if value == 0 then
    return "Md Statistic Frequency Unit: Seconds (0)"
  end
  if value == 1 then
    return "Md Statistic Frequency Unit: MilliSeconds (3)"
  end
  if value == 2 then
    return "Md Statistic Frequency Unit: Minutes (10)"
  end
  if value == 3 then
    return "Md Statistic Frequency Unit: Days (12)"
  end

  return "Md Statistic Frequency Unit: Unknown("..value..")"
end

-- Dissect: Md Statistic Frequency Unit
eurex_t7_marketsignals_fast_v8_1.md_statistic_frequency_unit.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_marketsignals_fast_v8_1.md_statistic_frequency_unit.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.md_statistic_frequency_unit, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.md_statistic_frequency_unit, range, value, display)
  end

  return offset, value
end

-- Md Statistic Interval Period
eurex_t7_marketsignals_fast_v8_1.md_statistic_interval_period = {}

-- Dissect: Md Statistic Interval Period
eurex_t7_marketsignals_fast_v8_1.md_statistic_interval_period.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.md_statistic_interval_period, range, value)
  else
    local absent = parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.md_statistic_interval_period, range, 0)
    absent:set_text("Md Statistic Interval Period: No Value")
  end

  return offset, value
end

-- Md Statistic Interval Unit
eurex_t7_marketsignals_fast_v8_1.md_statistic_interval_unit = {}

-- Display: Md Statistic Interval Unit
eurex_t7_marketsignals_fast_v8_1.md_statistic_interval_unit.display = function(value)
  if value == nil then
    return "Md Statistic Interval Unit: No Value"
  end

  if value == 0 then
    return "Md Statistic Interval Unit: Seconds (0)"
  end
  if value == 1 then
    return "Md Statistic Interval Unit: MilliSeconds (3)"
  end
  if value == 2 then
    return "Md Statistic Interval Unit: Minutes (10)"
  end
  if value == 3 then
    return "Md Statistic Interval Unit: Days (12)"
  end

  return "Md Statistic Interval Unit: Unknown("..value..")"
end

-- Dissect: Md Statistic Interval Unit
eurex_t7_marketsignals_fast_v8_1.md_statistic_interval_unit.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_marketsignals_fast_v8_1.md_statistic_interval_unit.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.md_statistic_interval_unit, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.md_statistic_interval_unit, range, value, display)
  end

  return offset, value
end

-- Md Statistic Type
eurex_t7_marketsignals_fast_v8_1.md_statistic_type = {}

-- Display: Md Statistic Type
eurex_t7_marketsignals_fast_v8_1.md_statistic_type.display = function(value)
  if value == nil then
    return "Md Statistic Type: No Value"
  end

  if value == 0 then
    return "Md Statistic Type: Count (1)"
  end
  if value == 1 then
    return "Md Statistic Type: Average (2)"
  end
  if value == 2 then
    return "Md Statistic Type: Volume (3)"
  end
  if value == 3 then
    return "Md Statistic Type: Distribution (4)"
  end
  if value == 4 then
    return "Md Statistic Type: Ratio (5)"
  end
  if value == 5 then
    return "Md Statistic Type: Liquidity (6)"
  end
  if value == 6 then
    return "Md Statistic Type: VWAP (7)"
  end
  if value == 7 then
    return "Md Statistic Type: Volatility (8)"
  end
  if value == 8 then
    return "Md Statistic Type: Duration (9)"
  end
  if value == 9 then
    return "Md Statistic Type: Tick (10)"
  end
  if value == 10 then
    return "Md Statistic Type: Detail (11)"
  end

  return "Md Statistic Type: Unknown("..value..")"
end

-- Dissect: Md Statistic Type
eurex_t7_marketsignals_fast_v8_1.md_statistic_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_marketsignals_fast_v8_1.md_statistic_type.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.md_statistic_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.md_statistic_type, range, value, display)
  end

  return offset, value
end

-- Md Statistic Scope
eurex_t7_marketsignals_fast_v8_1.md_statistic_scope = {}

-- Display: Md Statistic Scope
eurex_t7_marketsignals_fast_v8_1.md_statistic_scope.display = function(value)
  if value == nil then
    return "Md Statistic Scope: No Value"
  end

  if value == 0 then
    return "Md Statistic Scope: Best Bid (1)"
  end
  if value == 1 then
    return "Md Statistic Scope: Best Ask (2)"
  end
  if value == 2 then
    return "Md Statistic Scope: Depth Bid (3)"
  end
  if value == 3 then
    return "Md Statistic Scope: Depth Ask (4)"
  end
  if value == 4 then
    return "Md Statistic Scope: Order (5)"
  end
  if value == 5 then
    return "Md Statistic Scope: Quote (6)"
  end
  if value == 6 then
    return "Md Statistic Scope: Order and Quote (7)"
  end
  if value == 7 then
    return "Md Statistic Scope: Trade (8)"
  end

  return "Md Statistic Scope: Unknown("..value..")"
end

-- Dissect: Md Statistic Scope
eurex_t7_marketsignals_fast_v8_1.md_statistic_scope.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_marketsignals_fast_v8_1.md_statistic_scope.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.md_statistic_scope, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.md_statistic_scope, range, value, display)
  end

  return offset, value
end

-- Md Statistic Sub Scope
eurex_t7_marketsignals_fast_v8_1.md_statistic_sub_scope = {}

-- Display: Md Statistic Sub Scope
eurex_t7_marketsignals_fast_v8_1.md_statistic_sub_scope.display = function(value)
  if value == nil then
    return "Md Statistic Sub Scope: No Value"
  end

  if value == 0 then
    return "Md Statistic Sub Scope: Orderbook (1)"
  end
  if value == 1 then
    return "Md Statistic Sub Scope: Hidden (2)"
  end
  if value == 2 then
    return "Md Statistic Sub Scope: Indicative (3)"
  end

  return "Md Statistic Sub Scope: Unknown("..value..")"
end

-- Dissect: Md Statistic Sub Scope
eurex_t7_marketsignals_fast_v8_1.md_statistic_sub_scope.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_marketsignals_fast_v8_1.md_statistic_sub_scope.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.md_statistic_sub_scope, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.md_statistic_sub_scope, range, value, display)
  end

  return offset, value
end

-- Md Statistic Scope Type
eurex_t7_marketsignals_fast_v8_1.md_statistic_scope_type = {}

-- Display: Md Statistic Scope Type
eurex_t7_marketsignals_fast_v8_1.md_statistic_scope_type.display = function(value)
  if value == nil then
    return "Md Statistic Scope Type: No Value"
  end

  if value == 0 then
    return "Md Statistic Scope Type: Entry Rate (1)"
  end
  if value == 1 then
    return "Md Statistic Scope Type: Modification Rate (2)"
  end
  if value == 2 then
    return "Md Statistic Scope Type: Cancel Rate (3)"
  end

  return "Md Statistic Scope Type: Unknown("..value..")"
end

-- Dissect: Md Statistic Scope Type
eurex_t7_marketsignals_fast_v8_1.md_statistic_scope_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_marketsignals_fast_v8_1.md_statistic_scope_type.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.md_statistic_scope_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.md_statistic_scope_type, range, value, display)
  end

  return offset, value
end

-- Side
eurex_t7_marketsignals_fast_v8_1.side = {}

-- Display: Side
eurex_t7_marketsignals_fast_v8_1.side.display = function(value)
  if value == nil then
    return "Side: No Value"
  end

  if value == 0 then
    return "Side: Buy (1)"
  end
  if value == 1 then
    return "Side: Sell (2)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
eurex_t7_marketsignals_fast_v8_1.side.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_marketsignals_fast_v8_1.side.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.side, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.side, range, value, display)
  end

  return offset, value
end

-- Ord Type
eurex_t7_marketsignals_fast_v8_1.ord_type = {}

-- Display: Ord Type
eurex_t7_marketsignals_fast_v8_1.ord_type.display = function(value)
  if value == nil then
    return "Ord Type: No Value"
  end

  if value == 0 then
    return "Ord Type: Market (1)"
  end
  if value == 1 then
    return "Ord Type: Limit (2)"
  end
  if value == 2 then
    return "Ord Type: Stop/Stop Loss (3)"
  end

  return "Ord Type: Unknown("..value..")"
end

-- Dissect: Ord Type
eurex_t7_marketsignals_fast_v8_1.ord_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_marketsignals_fast_v8_1.ord_type.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.ord_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.ord_type, range, value, display)
  end

  return offset, value
end

-- Time In Force
eurex_t7_marketsignals_fast_v8_1.time_in_force = {}

-- Display: Time In Force
eurex_t7_marketsignals_fast_v8_1.time_in_force.display = function(value)
  if value == nil then
    return "Time In Force: No Value"
  end

  if value == 0 then
    return "Time In Force: ImmediateOrCancel (3)"
  end
  if value == 1 then
    return "Time In Force: FillOrKill (4)"
  end

  return "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
eurex_t7_marketsignals_fast_v8_1.time_in_force.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_marketsignals_fast_v8_1.time_in_force.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.time_in_force, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.time_in_force, range, value, display)
  end

  return offset, value
end

-- Md Statistic Ratio Type
eurex_t7_marketsignals_fast_v8_1.md_statistic_ratio_type = {}

-- Display: Md Statistic Ratio Type
eurex_t7_marketsignals_fast_v8_1.md_statistic_ratio_type.display = function(value)
  if value == nil then
    return "Md Statistic Ratio Type: No Value"
  end

  if value == 0 then
    return "Md Statistic Ratio Type: Buyer-Seller Relation (1)"
  end
  if value == 1 then
    return "Md Statistic Ratio Type: Upticks - Downticks (2)"
  end
  if value == 2 then
    return "Md Statistic Ratio Type: MM to Non-MM (3)"
  end

  return "Md Statistic Ratio Type: Unknown("..value..")"
end

-- Dissect: Md Statistic Ratio Type
eurex_t7_marketsignals_fast_v8_1.md_statistic_ratio_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_marketsignals_fast_v8_1.md_statistic_ratio_type.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.md_statistic_ratio_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.md_statistic_ratio_type, range, value, display)
  end

  return offset, value
end

-- No Md Stat Attributes
eurex_t7_marketsignals_fast_v8_1.no_md_stat_attributes = {}

-- Dissect: No Md Stat Attributes
eurex_t7_marketsignals_fast_v8_1.no_md_stat_attributes.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.no_md_stat_attributes, range, value)
  else
    local absent = parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.no_md_stat_attributes, range, 0)
    absent:set_text("No Md Stat Attributes: No Value")
  end

  return offset, value
end

-- Md Stat Attribute Type
eurex_t7_marketsignals_fast_v8_1.md_stat_attribute_type = {}

-- Display: Md Stat Attribute Type
eurex_t7_marketsignals_fast_v8_1.md_stat_attribute_type.display = function(value)
  if value == nil then
    return "Md Stat Attribute Type: No Value"
  end

  if value == 0 then
    return "Md Stat Attribute Type: NumberOfParties (1)"
  end
  if value == 1 then
    return "Md Stat Attribute Type: LastTradePrice (2)"
  end
  if value == 2 then
    return "Md Stat Attribute Type: LastTradeQuantity (3)"
  end
  if value == 3 then
    return "Md Stat Attribute Type: TradeMatchIdentifier (4)"
  end
  if value == 4 then
    return "Md Stat Attribute Type: Side (5)"
  end

  return "Md Stat Attribute Type: Unknown("..value..")"
end

-- Dissect: Md Stat Attribute Type
eurex_t7_marketsignals_fast_v8_1.md_stat_attribute_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  local display = eurex_t7_marketsignals_fast_v8_1.md_stat_attribute_type.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.md_stat_attribute_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.md_stat_attribute_type, range, value, display)
  end

  return offset, value
end

-- Md Statistic Time
eurex_t7_marketsignals_fast_v8_1.md_statistic_time = {}

-- Dissect: Md Statistic Time
eurex_t7_marketsignals_fast_v8_1.md_statistic_time.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_int64(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Md Statistic Time was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.md_statistic_time, range, NSTime.new(0, 0))
    absent:set_text("Md Statistic Time: No Value")
  else
    local seconds = (value / Int64(1000000000)):tonumber()
    local nanos = (value % Int64(1000000000)):tonumber()
    parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.md_statistic_time, range, NSTime.new(seconds, nanos))
  end

  return offset, value
end

-- Md Statistic Value
eurex_t7_marketsignals_fast_v8_1.md_statistic_value = {}

-- Display: Md Statistic Value
eurex_t7_marketsignals_fast_v8_1.md_statistic_value.display = function(value)
  if value == nil then
    return "Md Statistic Value: No Value"
  end

  return "Md Statistic Value: "..value
end

-- Dissect: Md Statistic Value
eurex_t7_marketsignals_fast_v8_1.md_statistic_value.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_nullable_signed(buffer, offset)
    if exponent ~= nil then mantissa, offset = read_stop_bit_signed(buffer, offset) end
  else
    exponent = nil
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_marketsignals_fast_v8_1.md_statistic_value.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.md_statistic_value, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.md_statistic_value, range, value, display)
  end

  return offset, value
end

-- Md Stat Attribute Value
eurex_t7_marketsignals_fast_v8_1.md_stat_attribute_value = {}

-- Dissect: Md Stat Attribute Value
eurex_t7_marketsignals_fast_v8_1.md_stat_attribute_value.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.md_stat_attribute_value, range, value)
  else
    local absent = parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.md_stat_attribute_value, range, "")
    absent:set_text("Md Stat Attribute Value: No Value")
  end

  return offset, value
end


-----------------------------------------------------------------------
-- Dissect Eurex T7 MarketSignals Fast 8.1
-----------------------------------------------------------------------

-- Market Data Statistics Update Md Stats Attrib Grp
eurex_t7_marketsignals_fast_v8_1.market_data_statistics_update_md_stats_attrib_grp = {}

-- Dissect Fields: Market Data Statistics Update Md Stats Attrib Grp
eurex_t7_marketsignals_fast_v8_1.market_data_statistics_update_md_stats_attrib_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Stat Attribute Type: uInt32, sent
  index, value = eurex_t7_marketsignals_fast_v8_1.md_stat_attribute_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Stat Attribute Value: string, sent
  index, value = eurex_t7_marketsignals_fast_v8_1.md_stat_attribute_value.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Market Data Statistics Update Md Stats Attrib Grp
eurex_t7_marketsignals_fast_v8_1.market_data_statistics_update_md_stats_attrib_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.market_data_statistics_update_md_stats_attrib_grp, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = eurex_t7_marketsignals_fast_v8_1.market_data_statistics_update_md_stats_attrib_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Market Data Statistics Update Md Statistic Rpt Grp
eurex_t7_marketsignals_fast_v8_1.market_data_statistics_update_md_statistic_rpt_grp = {}

-- Dissect Fields: Market Data Statistics Update Md Statistic Rpt Grp
eurex_t7_marketsignals_fast_v8_1.market_data_statistics_update_md_statistic_rpt_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Statistic Id: uInt32, Delta
  index, value = eurex_t7_marketsignals_fast_v8_1.md_statistic_id.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|13:MDStatisticID")

  -- Md Statistic Time: timestamp, Copy
  index, value = eurex_t7_marketsignals_fast_v8_1.md_statistic_time.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|15:MDStatisticTime")

  -- Md Statistic Value: decimal, Default, optional
  index, value = eurex_t7_marketsignals_fast_v8_1.md_statistic_value.dissect(buffer, index, packet, parent, { presence_map[base + 1], false }, state, nil)

  -- No Md Stat Attributes: uInt32, Default, optional
  index, value = eurex_t7_marketsignals_fast_v8_1.no_md_stat_attributes.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  -- Md Stats Attrib Grp: No Md Stat Attributes entries
  local count = value or 0
  for market_data_statistics_update_md_stats_attrib_grp_index = 1, count do
    index = eurex_t7_marketsignals_fast_v8_1.market_data_statistics_update_md_stats_attrib_grp.dissect(buffer, index, packet, parent, presence_map, base, state, market_data_statistics_update_md_stats_attrib_grp_index)
  end

  return index
end

-- Dissect: Market Data Statistics Update Md Statistic Rpt Grp
eurex_t7_marketsignals_fast_v8_1.market_data_statistics_update_md_statistic_rpt_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.market_data_statistics_update_md_statistic_rpt_grp, buffer(offset, 0))
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

  index = eurex_t7_marketsignals_fast_v8_1.market_data_statistics_update_md_statistic_rpt_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Market Data Statistics Update Message
eurex_t7_marketsignals_fast_v8_1.market_data_statistics_update = {}

eurex_t7_marketsignals_fast_v8_1.market_data_statistics_update.node = omi_eurex_t7_marketsignals_fast_v8_1.fields.market_data_statistics_update
eurex_t7_marketsignals_fast_v8_1.market_data_statistics_update.presence = {
  [2] = omi_eurex_t7_marketsignals_fast_v8_1.fields.presence_sender_comp_id,
  [3] = omi_eurex_t7_marketsignals_fast_v8_1.fields.presence_security_exchange,
  [4] = omi_eurex_t7_marketsignals_fast_v8_1.fields.presence_security_id,
  [5] = omi_eurex_t7_marketsignals_fast_v8_1.fields.presence_security_id_source,
  [6] = omi_eurex_t7_marketsignals_fast_v8_1.fields.presence_no_md_statistic,
}

-- Dissect Fields: Market Data Statistics Update Message
eurex_t7_marketsignals_fast_v8_1.market_data_statistics_update.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = eurex_t7_marketsignals_fast_v8_1.msg_type_constant_dp.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: uInt32, Copy
  index, value = eurex_t7_marketsignals_fast_v8_1.sender_comp_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|12:SenderCompID")

  -- Md Statistic Rpt Id: string, Constant
  index, value = eurex_t7_marketsignals_fast_v8_1.md_statistic_rpt_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Exchange: string, Copy
  index, value = eurex_t7_marketsignals_fast_v8_1.security_exchange.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|16:SecurityExchange")

  -- Security Id: string, Copy
  index, value = eurex_t7_marketsignals_fast_v8_1.security_id.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "8:template|35:https://www.deutsche-boerse.com/rta|26:MarketDataStatisticsUpdate|0:|10:SecurityID")

  -- Security Id Source: string, Default
  index, value = eurex_t7_marketsignals_fast_v8_1.security_id_source.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- No Md Statistic: uInt32, Copy
  index, value = eurex_t7_marketsignals_fast_v8_1.no_md_statistic.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "6:global|0:|13:NoMDStatistic")

  -- Md Statistic Rpt Grp: No Md Statistic entries
  local count = value or 0
  for market_data_statistics_update_md_statistic_rpt_grp_index = 1, count do
    index = eurex_t7_marketsignals_fast_v8_1.market_data_statistics_update_md_statistic_rpt_grp.dissect(buffer, index, packet, parent, presence_map, base, state, market_data_statistics_update_md_statistic_rpt_grp_index)
  end

  -- Transact Time: timestamp, Delta
  index, value = eurex_t7_marketsignals_fast_v8_1.transact_time.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|12:TransactTime")

  return index
end

-- Dissect: Market Data Statistics Update Message
eurex_t7_marketsignals_fast_v8_1.market_data_statistics_update.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = eurex_t7_marketsignals_fast_v8_1.market_data_statistics_update.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Market Data Statistics Reference Data Md Stats Attrib Grp
eurex_t7_marketsignals_fast_v8_1.market_data_statistics_reference_data_md_stats_attrib_grp = {}

-- Dissect Fields: Market Data Statistics Reference Data Md Stats Attrib Grp
eurex_t7_marketsignals_fast_v8_1.market_data_statistics_reference_data_md_stats_attrib_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Stat Attribute Type: uInt32, sent
  index, value = eurex_t7_marketsignals_fast_v8_1.md_stat_attribute_type.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Market Data Statistics Reference Data Md Stats Attrib Grp
eurex_t7_marketsignals_fast_v8_1.market_data_statistics_reference_data_md_stats_attrib_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.market_data_statistics_reference_data_md_stats_attrib_grp, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = eurex_t7_marketsignals_fast_v8_1.market_data_statistics_reference_data_md_stats_attrib_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Market Data Statistics Reference Data Md Statistic Rpt Grp
eurex_t7_marketsignals_fast_v8_1.market_data_statistics_reference_data_md_statistic_rpt_grp = {}

-- Dissect Fields: Market Data Statistics Reference Data Md Statistic Rpt Grp
eurex_t7_marketsignals_fast_v8_1.market_data_statistics_reference_data_md_statistic_rpt_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Statistic Id: uInt32, Delta
  index, value = eurex_t7_marketsignals_fast_v8_1.md_statistic_id.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|13:MDStatisticID")

  -- Md Statistic Status: uInt32, Default
  index, value = eurex_t7_marketsignals_fast_v8_1.md_statistic_status.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Md Statistic Name: string, Copy
  index, value = eurex_t7_marketsignals_fast_v8_1.md_statistic_name.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|15:MDStatisticName")

  -- Md Statistic Desc: string, Copy
  index, value = eurex_t7_marketsignals_fast_v8_1.md_statistic_desc.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|15:MDStatisticDesc")

  -- Md Statistic Frequency Period: uInt32, Copy, optional
  index, value = eurex_t7_marketsignals_fast_v8_1.md_statistic_frequency_period.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "6:global|0:|26:MDStatisticFrequencyPeriod")

  -- Md Statistic Frequency Unit: uInt32, Default, optional
  index, value = eurex_t7_marketsignals_fast_v8_1.md_statistic_frequency_unit.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Md Statistic Interval Period: uInt32, Copy, optional
  index, value = eurex_t7_marketsignals_fast_v8_1.md_statistic_interval_period.dissect(buffer, index, packet, parent, presence_map[base + 5], state, "6:global|0:|25:MDStatisticIntervalPeriod")

  -- Md Statistic Interval Unit: uInt32, Default, optional
  index, value = eurex_t7_marketsignals_fast_v8_1.md_statistic_interval_unit.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Md Statistic Type: uInt32, Default
  index, value = eurex_t7_marketsignals_fast_v8_1.md_statistic_type.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Md Statistic Scope: uInt32, Default
  index, value = eurex_t7_marketsignals_fast_v8_1.md_statistic_scope.dissect(buffer, index, packet, parent, presence_map[base + 8], state, nil)

  -- Md Statistic Sub Scope: uInt32, Default, optional
  index, value = eurex_t7_marketsignals_fast_v8_1.md_statistic_sub_scope.dissect(buffer, index, packet, parent, presence_map[base + 9], state, nil)

  -- Md Statistic Scope Type: uInt32, Default, optional
  index, value = eurex_t7_marketsignals_fast_v8_1.md_statistic_scope_type.dissect(buffer, index, packet, parent, presence_map[base + 10], state, nil)

  -- Side: uInt32, Default, optional
  index, value = eurex_t7_marketsignals_fast_v8_1.side.dissect(buffer, index, packet, parent, presence_map[base + 11], state, nil)

  -- Ord Type: uInt32, Default, optional
  index, value = eurex_t7_marketsignals_fast_v8_1.ord_type.dissect(buffer, index, packet, parent, presence_map[base + 12], state, nil)

  -- Time In Force: uInt32, Default, optional
  index, value = eurex_t7_marketsignals_fast_v8_1.time_in_force.dissect(buffer, index, packet, parent, presence_map[base + 13], state, nil)

  -- Md Statistic Ratio Type: uInt32, Default, optional
  index, value = eurex_t7_marketsignals_fast_v8_1.md_statistic_ratio_type.dissect(buffer, index, packet, parent, presence_map[base + 14], state, nil)

  -- No Md Stat Attributes: uInt32, Default, optional
  index, value = eurex_t7_marketsignals_fast_v8_1.no_md_stat_attributes.dissect(buffer, index, packet, parent, presence_map[base + 15], state, nil)

  -- Md Stats Attrib Grp: No Md Stat Attributes entries
  local count = value or 0
  for market_data_statistics_reference_data_md_stats_attrib_grp_index = 1, count do
    index = eurex_t7_marketsignals_fast_v8_1.market_data_statistics_reference_data_md_stats_attrib_grp.dissect(buffer, index, packet, parent, presence_map, base, state, market_data_statistics_reference_data_md_stats_attrib_grp_index)
  end

  return index
end

-- Dissect: Market Data Statistics Reference Data Md Statistic Rpt Grp
eurex_t7_marketsignals_fast_v8_1.market_data_statistics_reference_data_md_statistic_rpt_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.market_data_statistics_reference_data_md_statistic_rpt_grp, buffer(offset, 0))
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

  index = eurex_t7_marketsignals_fast_v8_1.market_data_statistics_reference_data_md_statistic_rpt_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Market Data Statistics Reference Data Message
eurex_t7_marketsignals_fast_v8_1.market_data_statistics_reference_data = {}

eurex_t7_marketsignals_fast_v8_1.market_data_statistics_reference_data.node = omi_eurex_t7_marketsignals_fast_v8_1.fields.market_data_statistics_reference_data
eurex_t7_marketsignals_fast_v8_1.market_data_statistics_reference_data.presence = {
  [2] = omi_eurex_t7_marketsignals_fast_v8_1.fields.presence_sender_comp_id,
  [3] = omi_eurex_t7_marketsignals_fast_v8_1.fields.presence_security_exchange,
  [4] = omi_eurex_t7_marketsignals_fast_v8_1.fields.presence_security_id,
  [5] = omi_eurex_t7_marketsignals_fast_v8_1.fields.presence_security_id_source,
  [6] = omi_eurex_t7_marketsignals_fast_v8_1.fields.presence_no_md_statistic,
}

-- Dissect Fields: Market Data Statistics Reference Data Message
eurex_t7_marketsignals_fast_v8_1.market_data_statistics_reference_data.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = eurex_t7_marketsignals_fast_v8_1.msg_type_constant_dp.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: uInt32, Copy
  index, value = eurex_t7_marketsignals_fast_v8_1.sender_comp_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|12:SenderCompID")

  -- Md Statistic Rpt Id: string, Constant
  index, value = eurex_t7_marketsignals_fast_v8_1.md_statistic_rpt_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Exchange: string, Copy
  index, value = eurex_t7_marketsignals_fast_v8_1.security_exchange.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|16:SecurityExchange")

  -- Security Id: string, Copy
  index, value = eurex_t7_marketsignals_fast_v8_1.security_id.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "8:template|35:https://www.deutsche-boerse.com/rta|33:MarketDataStatisticsReferenceData|0:|10:SecurityID")

  -- Security Id Source: string, Default
  index, value = eurex_t7_marketsignals_fast_v8_1.security_id_source.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- No Md Statistic: uInt32, Copy
  index, value = eurex_t7_marketsignals_fast_v8_1.no_md_statistic.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "6:global|0:|13:NoMDStatistic")

  -- Md Statistic Rpt Grp: No Md Statistic entries
  local count = value or 0
  for market_data_statistics_reference_data_md_statistic_rpt_grp_index = 1, count do
    index = eurex_t7_marketsignals_fast_v8_1.market_data_statistics_reference_data_md_statistic_rpt_grp.dissect(buffer, index, packet, parent, presence_map, base, state, market_data_statistics_reference_data_md_statistic_rpt_grp_index)
  end

  -- Transact Time: timestamp, Delta
  index, value = eurex_t7_marketsignals_fast_v8_1.transact_time.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|12:TransactTime")

  return index
end

-- Dissect: Market Data Statistics Reference Data Message
eurex_t7_marketsignals_fast_v8_1.market_data_statistics_reference_data.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = eurex_t7_marketsignals_fast_v8_1.market_data_statistics_reference_data.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Market Data Report Message
eurex_t7_marketsignals_fast_v8_1.market_data_report = {}

eurex_t7_marketsignals_fast_v8_1.market_data_report.node = omi_eurex_t7_marketsignals_fast_v8_1.fields.market_data_report
eurex_t7_marketsignals_fast_v8_1.market_data_report.presence = {
  [2] = omi_eurex_t7_marketsignals_fast_v8_1.fields.presence_md_report_event,
}

-- Dissect Fields: Market Data Report Message
eurex_t7_marketsignals_fast_v8_1.market_data_report.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = eurex_t7_marketsignals_fast_v8_1.msg_type_constant_u20.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Report Count: uInt32, sent, optional
  index, value = eurex_t7_marketsignals_fast_v8_1.md_report_count.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Msg Seq Num Processed: uInt32, Delta, optional
  index, value = eurex_t7_marketsignals_fast_v8_1.last_msg_seq_num_processed.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|22:LastMsgSeqNumProcessed")

  -- Md Report Event: uInt32, Copy
  index, value = eurex_t7_marketsignals_fast_v8_1.md_report_event.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|13:MDReportEvent")

  -- Transact Time: timestamp, Delta
  index, value = eurex_t7_marketsignals_fast_v8_1.transact_time.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|12:TransactTime")

  return index
end

-- Dissect: Market Data Report Message
eurex_t7_marketsignals_fast_v8_1.market_data_report.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = eurex_t7_marketsignals_fast_v8_1.market_data_report.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Packet Header Framing
eurex_t7_marketsignals_fast_v8_1.packet_header = {}

eurex_t7_marketsignals_fast_v8_1.packet_header.node = omi_eurex_t7_marketsignals_fast_v8_1.fields.packet_header

-- Dissect Fields: Packet Header Framing
eurex_t7_marketsignals_fast_v8_1.packet_header.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Sender Comp Id: uInt32, sent
  index, value = eurex_t7_marketsignals_fast_v8_1.sender_comp_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Packet Seq Num: byteVector, sent
  index, value = eurex_t7_marketsignals_fast_v8_1.packet_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: byteVector, sent
  index, value = eurex_t7_marketsignals_fast_v8_1.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Packet Header Framing
eurex_t7_marketsignals_fast_v8_1.packet_header.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = eurex_t7_marketsignals_fast_v8_1.packet_header.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Eurex T7 MarketSignals Fast 8.1 Message Dispatch
eurex_t7_marketsignals_fast_v8_1.templates = {
  [92] = eurex_t7_marketsignals_fast_v8_1.packet_header,
  [152] = eurex_t7_marketsignals_fast_v8_1.market_data_report,
  [200] = eurex_t7_marketsignals_fast_v8_1.market_data_statistics_reference_data,
  [201] = eurex_t7_marketsignals_fast_v8_1.market_data_statistics_update,
}

-- Eurex T7 MarketSignals Fast 8.1 Template Names
eurex_t7_marketsignals_fast_v8_1.template_id = {}

-- Display: Template Id
eurex_t7_marketsignals_fast_v8_1.template_id.display = function(value)
  if value == 92 then
    return "Template Id: PacketHeader (92)"
  end
  if value == 152 then
    return "Template Id: MarketDataReport (152)"
  end
  if value == 200 then
    return "Template Id: MarketDataStatisticsReferenceData (200)"
  end
  if value == 201 then
    return "Template Id: MarketDataStatisticsUpdate (201)"
  end
  if value == 120 then
    return "Template Id: Reset (120)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Name: Template Id
eurex_t7_marketsignals_fast_v8_1.template_id.name = function(value)
  if value == 92 then
    return "PacketHeader"
  end
  if value == 152 then
    return "MarketDataReport"
  end
  if value == 200 then
    return "MarketDataStatisticsReferenceData"
  end
  if value == 201 then
    return "MarketDataStatisticsUpdate"
  end
  if value == 120 then
    return "Reset"
  end

  return "Unknown"
end

-- Eurex T7 MarketSignals Fast 8.1 Framing
eurex_t7_marketsignals_fast_v8_1.header = 92
eurex_t7_marketsignals_fast_v8_1.reset = 120

-- Eurex T7 MarketSignals Fast 8.1 Packet Dissector
omi_eurex_t7_marketsignals_fast_v8_1.dissector = function(buffer, packet, parent)
  packet.cols.protocol = "Eurex T7 MarketSignals Fast 8.1"
  local root = parent:add(omi_eurex_t7_marketsignals_fast_v8_1, buffer(), "Eurex T7 MarketSignals Fast 8.1")
  local state = state_for(packet)
  local offset = 0
  local messages = 0

  while offset < buffer:len() do
    local start = offset

    local holder = root

    local presence_map = nil
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

    local template = eurex_t7_marketsignals_fast_v8_1.templates[template_id]
    local message_tree = nil

    if template ~= nil then
      message_tree = holder:add(template.node, buffer(start, 0))
    else
      message_tree = holder:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.message, buffer(start, 0))
      message_tree:set_text(eurex_t7_marketsignals_fast_v8_1.template_id.name(template_id))
    end

    -- the presence map and the template id are the message's own framing
    local header = message_tree:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.message_header, buffer(start, offset - start))
    local named = nil
    if template ~= nil then
      named = template.presence
    end
    add_presence_map(header, buffer(start, mapped - start), omi_eurex_t7_marketsignals_fast_v8_1.fields.presence_map, omi_eurex_t7_marketsignals_fast_v8_1.fields.presence_stop, omi_eurex_t7_marketsignals_fast_v8_1.fields.presence_identified, omi_eurex_t7_marketsignals_fast_v8_1.fields.presence_unused, named)
    header:add(omi_eurex_t7_marketsignals_fast_v8_1.fields.template_id, buffer(identified, offset - identified), template_id, eurex_t7_marketsignals_fast_v8_1.template_id.display(template_id))

    -- the reset template tells a receiver to forget what the stream remembered
    if template_id == eurex_t7_marketsignals_fast_v8_1.reset then
      state.values = {}
      state.last_template_id = nil
    else
      if template == nil then
        message_tree:add_expert_info(PI_UNDECODED, PI_WARN, "This dissector reads: 92 (PacketHeader), 152 (MarketDataReport), 200 (MarketDataStatisticsReferenceData), 201 (MarketDataStatisticsUpdate)")
        message_tree:set_len(offset - start)
        return
      end

      -- every packet opens with the template the model frames them with
      if messages == 0 and template_id ~= eurex_t7_marketsignals_fast_v8_1.header then
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
omi_eurex_t7_marketsignals_fast_v8_1.init = function()
  stream_states = {}
end

-- Register Eurex T7 MarketSignals Fast 8.1 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_eurex_t7_marketsignals_fast_v8_1)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Eurex Exchange
--   Version: v8.1
--   Specification: T7 Market and Reference Data Interfaces Manual
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
