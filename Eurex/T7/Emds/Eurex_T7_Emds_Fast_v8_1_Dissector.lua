-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Eurex T7 Emds Fast 8.1 Protocol
local omi_eurex_t7_emds_fast_v8_1 = Proto("Omi.Eurex.T7.Emds.Fast.v8.1", "Eurex T7 Emds Fast 8.1")

-- Protocol table
local eurex_t7_emds_fast_v8_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Eurex T7 Emds Fast 8.1 Framing
omi_eurex_t7_emds_fast_v8_1.fields.message = ProtoField.new("Message", "eurex.t7.emds.fast.v8.1.message", ftypes.NONE)
omi_eurex_t7_emds_fast_v8_1.fields.message_header = ProtoField.new("Message Header", "eurex.t7.emds.fast.v8.1.messageheader", ftypes.NONE)
omi_eurex_t7_emds_fast_v8_1.fields.presence_map = ProtoField.new("Presence Map", "eurex.t7.emds.fast.v8.1.presencemap", ftypes.BYTES)
omi_eurex_t7_emds_fast_v8_1.fields.template_id = ProtoField.new("Template Id", "eurex.t7.emds.fast.v8.1.templateid", ftypes.UINT32)
omi_eurex_t7_emds_fast_v8_1.fields.record = ProtoField.new("Record", "eurex.t7.emds.fast.v8.1.record", ftypes.NONE)
omi_eurex_t7_emds_fast_v8_1.fields.presence_stop = ProtoField.new("Stop Bit", "eurex.t7.emds.fast.v8.1.presencestop", ftypes.UINT8, { [0] = "Clear", [1] = "Set" }, base.DEC)
omi_eurex_t7_emds_fast_v8_1.fields.presence_identified = ProtoField.new("Template Id", "eurex.t7.emds.fast.v8.1.presencetemplateid", ftypes.UINT8, { [0] = "Repeated", [1] = "Sent" }, base.DEC)
omi_eurex_t7_emds_fast_v8_1.fields.presence_unused = ProtoField.new("Unused", "eurex.t7.emds.fast.v8.1.presenceunused", ftypes.UINT8, nil, base.HEX)

-- Eurex T7 Emds Fast 8.1 Presence Map Fields
omi_eurex_t7_emds_fast_v8_1.fields.presence_md_report_event = ProtoField.new("Md Report Event", "eurex.t7.emds.fast.v8.1.mdreporteventpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_emds_fast_v8_1.fields.presence_msg_seq_num = ProtoField.new("Msg Seq Num", "eurex.t7.emds.fast.v8.1.msgseqnumpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_emds_fast_v8_1.fields.presence_sender_comp_id = ProtoField.new("Sender Comp Id", "eurex.t7.emds.fast.v8.1.sendercompidpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_emds_fast_v8_1.fields.presence_market_segment_id = ProtoField.new("Market Segment Id", "eurex.t7.emds.fast.v8.1.marketsegmentidpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)

-- Eurex T7 Emds Fast 8.1 Fields
omi_eurex_t7_emds_fast_v8_1.fields.sender_comp_id = ProtoField.new("Sender Comp Id", "eurex.t7.emds.fast.v8.1.sendercompid", ftypes.UINT32)
omi_eurex_t7_emds_fast_v8_1.fields.packet_seq_num = ProtoField.new("Packet Seq Num", "eurex.t7.emds.fast.v8.1.packetseqnum", ftypes.UINT32)
omi_eurex_t7_emds_fast_v8_1.fields.sending_time = ProtoField.new("Sending Time", "eurex.t7.emds.fast.v8.1.sendingtime", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_eurex_t7_emds_fast_v8_1.fields.last_packet_seq_num = ProtoField.new("Last Packet Seq Num", "eurex.t7.emds.fast.v8.1.lastpacketseqnum", ftypes.UINT32)
omi_eurex_t7_emds_fast_v8_1.fields.msg_type = ProtoField.new("Msg Type", "eurex.t7.emds.fast.v8.1.msgtype", ftypes.STRING)
omi_eurex_t7_emds_fast_v8_1.fields.security_id = ProtoField.new("Security Id", "eurex.t7.emds.fast.v8.1.securityid", ftypes.INT64)
omi_eurex_t7_emds_fast_v8_1.fields.security_id_source = ProtoField.new("Security Id Source", "eurex.t7.emds.fast.v8.1.securityidsource", ftypes.STRING)
omi_eurex_t7_emds_fast_v8_1.fields.market_segment_id = ProtoField.new("Market Segment Id", "eurex.t7.emds.fast.v8.1.marketsegmentid", ftypes.UINT32)
omi_eurex_t7_emds_fast_v8_1.fields.no_md_entries = ProtoField.new("No Md Entries", "eurex.t7.emds.fast.v8.1.nomdentries", ftypes.UINT32)
omi_eurex_t7_emds_fast_v8_1.fields.md_entry_type = ProtoField.new("Md Entry Type", "eurex.t7.emds.fast.v8.1.mdentrytype", ftypes.UINT32)
omi_eurex_t7_emds_fast_v8_1.fields.md_entry_size = ProtoField.new("Md Entry Size", "eurex.t7.emds.fast.v8.1.mdentrysize", ftypes.DOUBLE)
omi_eurex_t7_emds_fast_v8_1.fields.md_entry_time = ProtoField.new("Md Entry Time", "eurex.t7.emds.fast.v8.1.mdentrytime", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_eurex_t7_emds_fast_v8_1.fields.md_entry_px = ProtoField.new("Md Entry Px", "eurex.t7.emds.fast.v8.1.mdentrypx", ftypes.DOUBLE)
omi_eurex_t7_emds_fast_v8_1.fields.md_sec_px = ProtoField.new("Md Sec Px", "eurex.t7.emds.fast.v8.1.mdsecpx", ftypes.DOUBLE)
omi_eurex_t7_emds_fast_v8_1.fields.md_report_count = ProtoField.new("Md Report Count", "eurex.t7.emds.fast.v8.1.mdreportcount", ftypes.UINT32)
omi_eurex_t7_emds_fast_v8_1.fields.last_msg_seq_num_processed = ProtoField.new("Last Msg Seq Num Processed", "eurex.t7.emds.fast.v8.1.lastmsgseqnumprocessed", ftypes.UINT32)
omi_eurex_t7_emds_fast_v8_1.fields.md_report_event = ProtoField.new("Md Report Event", "eurex.t7.emds.fast.v8.1.mdreportevent", ftypes.UINT32)
omi_eurex_t7_emds_fast_v8_1.fields.transact_time = ProtoField.new("Transact Time", "eurex.t7.emds.fast.v8.1.transacttime", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_eurex_t7_emds_fast_v8_1.fields.msg_seq_num = ProtoField.new("Msg Seq Num", "eurex.t7.emds.fast.v8.1.msgseqnum", ftypes.UINT32)
omi_eurex_t7_emds_fast_v8_1.fields.md_origin_type = ProtoField.new("Md Origin Type", "eurex.t7.emds.fast.v8.1.mdorigintype", ftypes.UINT32)
omi_eurex_t7_emds_fast_v8_1.fields.md_update_action = ProtoField.new("Md Update Action", "eurex.t7.emds.fast.v8.1.mdupdateaction", ftypes.UINT32)
omi_eurex_t7_emds_fast_v8_1.fields.trd_type = ProtoField.new("Trd Type", "eurex.t7.emds.fast.v8.1.trdtype", ftypes.UINT32)
omi_eurex_t7_emds_fast_v8_1.fields.algorithmic_trade_indicator = ProtoField.new("Algorithmic Trade Indicator", "eurex.t7.emds.fast.v8.1.algorithmictradeindicator", ftypes.UINT32)
omi_eurex_t7_emds_fast_v8_1.fields.trade_condition = ProtoField.new("Trade Condition", "eurex.t7.emds.fast.v8.1.tradecondition", ftypes.UINT32)
omi_eurex_t7_emds_fast_v8_1.fields.multi_leg_reporting_type = ProtoField.new("Multi Leg Reporting Type", "eurex.t7.emds.fast.v8.1.multilegreportingtype", ftypes.UINT32)
omi_eurex_t7_emds_fast_v8_1.fields.multi_leg_price_model = ProtoField.new("Multi Leg Price Model", "eurex.t7.emds.fast.v8.1.multilegpricemodel", ftypes.UINT32)
omi_eurex_t7_emds_fast_v8_1.fields.aggressor_time = ProtoField.new("Aggressor Time", "eurex.t7.emds.fast.v8.1.aggressortime", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_eurex_t7_emds_fast_v8_1.fields.aggressor_side = ProtoField.new("Aggressor Side", "eurex.t7.emds.fast.v8.1.aggressorside", ftypes.UINT32)
omi_eurex_t7_emds_fast_v8_1.fields.number_of_buy_orders = ProtoField.new("Number Of Buy Orders", "eurex.t7.emds.fast.v8.1.numberofbuyorders", ftypes.UINT32)
omi_eurex_t7_emds_fast_v8_1.fields.number_of_sell_orders = ProtoField.new("Number Of Sell Orders", "eurex.t7.emds.fast.v8.1.numberofsellorders", ftypes.UINT32)
omi_eurex_t7_emds_fast_v8_1.fields.total_num_of_trades = ProtoField.new("Total Num Of Trades", "eurex.t7.emds.fast.v8.1.totalnumoftrades", ftypes.UINT32)
omi_eurex_t7_emds_fast_v8_1.fields.resting_cxl_qty = ProtoField.new("Resting Cxl Qty", "eurex.t7.emds.fast.v8.1.restingcxlqty", ftypes.DOUBLE)
omi_eurex_t7_emds_fast_v8_1.fields.md_entry_id = ProtoField.new("Md Entry Id", "eurex.t7.emds.fast.v8.1.mdentryid", ftypes.UINT32)
omi_eurex_t7_emds_fast_v8_1.fields.non_disclosed_trade_volume = ProtoField.new("Non Disclosed Trade Volume", "eurex.t7.emds.fast.v8.1.nondisclosedtradevolume", ftypes.DOUBLE)
omi_eurex_t7_emds_fast_v8_1.fields.no_party_i_ds = ProtoField.new("No Party I Ds", "eurex.t7.emds.fast.v8.1.nopartyids", ftypes.UINT32)
omi_eurex_t7_emds_fast_v8_1.fields.party_id = ProtoField.new("Party Id", "eurex.t7.emds.fast.v8.1.partyid", ftypes.STRING)
omi_eurex_t7_emds_fast_v8_1.fields.party_id_source = ProtoField.new("Party Id Source", "eurex.t7.emds.fast.v8.1.partyidsource", ftypes.STRING)
omi_eurex_t7_emds_fast_v8_1.fields.party_role = ProtoField.new("Party Role", "eurex.t7.emds.fast.v8.1.partyrole", ftypes.UINT32)

-- Eurex T7 Emds Fast 8.1 Messages
omi_eurex_t7_emds_fast_v8_1.fields.packet_header = ProtoField.new("Packet Header Framing", "eurex.t7.emds.fast.v8.1.packetheader", ftypes.NONE)
omi_eurex_t7_emds_fast_v8_1.fields.heart_beat = ProtoField.new("Heart Beat Message", "eurex.t7.emds.fast.v8.1.heartbeat", ftypes.NONE)
omi_eurex_t7_emds_fast_v8_1.fields.adjusted_open_interest = ProtoField.new("Adjusted Open Interest Message", "eurex.t7.emds.fast.v8.1.adjustedopeninterest", ftypes.NONE)
omi_eurex_t7_emds_fast_v8_1.fields.adjusted_open_interest_md_full_grp = ProtoField.new("Adjusted Open Interest Md Full Grp", "eurex.t7.emds.fast.v8.1.adjustedopeninterestmdfullgrp", ftypes.NONE)
omi_eurex_t7_emds_fast_v8_1.fields.settlement = ProtoField.new("Settlement Message", "eurex.t7.emds.fast.v8.1.settlement", ftypes.NONE)
omi_eurex_t7_emds_fast_v8_1.fields.settlement_md_full_grp = ProtoField.new("Settlement Md Full Grp", "eurex.t7.emds.fast.v8.1.settlementmdfullgrp", ftypes.NONE)
omi_eurex_t7_emds_fast_v8_1.fields.market_data_report = ProtoField.new("Market Data Report Message", "eurex.t7.emds.fast.v8.1.marketdatareport", ftypes.NONE)
omi_eurex_t7_emds_fast_v8_1.fields.trade = ProtoField.new("Trade Message", "eurex.t7.emds.fast.v8.1.trade", ftypes.NONE)
omi_eurex_t7_emds_fast_v8_1.fields.md_inc_grp = ProtoField.new("Md Inc Grp", "eurex.t7.emds.fast.v8.1.mdincgrp", ftypes.NONE)
omi_eurex_t7_emds_fast_v8_1.fields.parties = ProtoField.new("Parties", "eurex.t7.emds.fast.v8.1.parties", ftypes.NONE)

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
-- Eurex T7 Emds Fast 8.1 Fields
-----------------------------------------------------------------------

-- Sender Comp Id (Sent)
eurex_t7_emds_fast_v8_1.sender_comp_id_sent = {}

-- Dissect: Sender Comp Id (Sent)
eurex_t7_emds_fast_v8_1.sender_comp_id_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emds_fast_v8_1.fields.sender_comp_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emds_fast_v8_1.fields.sender_comp_id, range, 0)
    absent:set_text("Sender Comp Id: No Value")
  end

  return offset, value
end

-- Sender Comp Id (Copy)
eurex_t7_emds_fast_v8_1.sender_comp_id_copy = {}

-- Dissect: Sender Comp Id (Copy)
eurex_t7_emds_fast_v8_1.sender_comp_id_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_eurex_t7_emds_fast_v8_1.fields.sender_comp_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emds_fast_v8_1.fields.sender_comp_id, range, 0)
    absent:set_text("Sender Comp Id: No Value")
  end

  return offset, value
end

-- Packet Seq Num
eurex_t7_emds_fast_v8_1.packet_seq_num = {}

-- Dissect: Packet Seq Num
eurex_t7_emds_fast_v8_1.packet_seq_num.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_byte_vector_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emds_fast_v8_1.fields.packet_seq_num, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emds_fast_v8_1.fields.packet_seq_num, range, 0)
    absent:set_text("Packet Seq Num: No Value")
  end

  return offset, value
end

-- Sending Time
eurex_t7_emds_fast_v8_1.sending_time = {}

-- Dissect: Sending Time
eurex_t7_emds_fast_v8_1.sending_time.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_byte_vector_int64(buffer, offset)

  local range = buffer(start, offset - start)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emds_fast_v8_1.fields.sending_time, range, NSTime.new(0, 0))
    absent:set_text("Sending Time: No Value")
  else
    local seconds = (value / Int64(1000000000)):tonumber()
    local nanos = (value % Int64(1000000000)):tonumber()
    parent:add(omi_eurex_t7_emds_fast_v8_1.fields.sending_time, range, NSTime.new(seconds, nanos))
  end

  return offset, value
end

-- Last Packet Seq Num
eurex_t7_emds_fast_v8_1.last_packet_seq_num = {}

-- Dissect: Last Packet Seq Num
eurex_t7_emds_fast_v8_1.last_packet_seq_num.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emds_fast_v8_1.fields.last_packet_seq_num, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emds_fast_v8_1.fields.last_packet_seq_num, range, 0)
    absent:set_text("Last Packet Seq Num: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
eurex_t7_emds_fast_v8_1.msg_type_constant_w = {}

-- Dissect: Msg Type (Constant)
eurex_t7_emds_fast_v8_1.msg_type_constant_w.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "W"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emds_fast_v8_1.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emds_fast_v8_1.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
eurex_t7_emds_fast_v8_1.msg_type_constant_u20 = {}

-- Dissect: Msg Type (Constant)
eurex_t7_emds_fast_v8_1.msg_type_constant_u20.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "U20"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emds_fast_v8_1.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emds_fast_v8_1.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
eurex_t7_emds_fast_v8_1.msg_type_constant_x = {}

-- Dissect: Msg Type (Constant)
eurex_t7_emds_fast_v8_1.msg_type_constant_x.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "X"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emds_fast_v8_1.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emds_fast_v8_1.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Security Id (Delta)
eurex_t7_emds_fast_v8_1.security_id_delta = {}

-- Dissect: Security Id (Delta)
eurex_t7_emds_fast_v8_1.security_id_delta.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local value_delta = nil
  value_delta, offset = read_stop_bit_int64(buffer, offset)
  value = (state.values[key] or Int64(0)) + value_delta
  state.values[key] = value

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emds_fast_v8_1.fields.security_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emds_fast_v8_1.fields.security_id, range, Int64(0))
    absent:set_text("Security Id: No Value")
  end

  return offset, value
end

-- Security Id (Copy)
eurex_t7_emds_fast_v8_1.security_id_copy = {}

-- Dissect: Security Id (Copy)
eurex_t7_emds_fast_v8_1.security_id_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_int64(buffer, offset)
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
    parent:add(omi_eurex_t7_emds_fast_v8_1.fields.security_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emds_fast_v8_1.fields.security_id, range, Int64(0))
    absent:set_text("Security Id: No Value")
  end

  return offset, value
end

-- Security Id Source
eurex_t7_emds_fast_v8_1.security_id_source = {}

-- Dissect: Security Id Source
eurex_t7_emds_fast_v8_1.security_id_source.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "M"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emds_fast_v8_1.fields.security_id_source, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emds_fast_v8_1.fields.security_id_source, range, "")
    absent:set_text("Security Id Source: No Value")
  end

  return offset, value
end

-- Market Segment Id (Sent)
eurex_t7_emds_fast_v8_1.market_segment_id_sent = {}

-- Dissect: Market Segment Id (Sent)
eurex_t7_emds_fast_v8_1.market_segment_id_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emds_fast_v8_1.fields.market_segment_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emds_fast_v8_1.fields.market_segment_id, range, 0)
    absent:set_text("Market Segment Id: No Value")
  end

  return offset, value
end

-- Market Segment Id (Copy)
eurex_t7_emds_fast_v8_1.market_segment_id_copy = {}

-- Dissect: Market Segment Id (Copy)
eurex_t7_emds_fast_v8_1.market_segment_id_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Market Segment Id was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emds_fast_v8_1.fields.market_segment_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emds_fast_v8_1.fields.market_segment_id, range, 0)
    absent:set_text("Market Segment Id: No Value")
  end

  return offset, value
end

-- No Md Entries
eurex_t7_emds_fast_v8_1.no_md_entries = {}

-- Dissect: No Md Entries
eurex_t7_emds_fast_v8_1.no_md_entries.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = 1

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emds_fast_v8_1.fields.no_md_entries, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emds_fast_v8_1.fields.no_md_entries, range, 0)
    absent:set_text("No Md Entries: No Value")
  end

  return offset, value
end

-- Md Entry Type (Constant)
eurex_t7_emds_fast_v8_1.md_entry_type_constant_6 = {}

-- Display: Md Entry Type (Constant)
eurex_t7_emds_fast_v8_1.md_entry_type_constant_6.display = function(value)
  if value == nil then
    return "Md Entry Type: No Value"
  end

  if value == 0 then
    return "Md Entry Type: Bid (0)"
  end
  if value == 1 then
    return "Md Entry Type: Offer (1)"
  end
  if value == 2 then
    return "Md Entry Type: Trade (2)"
  end
  if value == 3 then
    return "Md Entry Type: EmptyBook (J)"
  end
  if value == 4 then
    return "Md Entry Type: AuctionClearingPrice (Q)"
  end
  if value == 5 then
    return "Md Entry Type: SettlementPrice (6)"
  end
  if value == 6 then
    return "Md Entry Type: OpenInterest (C)"
  end
  if value == 7 then
    return "Md Entry Type: TradeVolume (B)"
  end
  if value == 8 then
    return "Md Entry Type: MarketBid (b)"
  end
  if value == 9 then
    return "Md Entry Type: MarketOffer (c)"
  end
  if value == 10 then
    return "Md Entry Type: Imbalance (A)"
  end

  return "Md Entry Type: Unknown("..value..")"
end

-- Dissect: Md Entry Type (Constant)
eurex_t7_emds_fast_v8_1.md_entry_type_constant_6.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = 6

  local range = buffer(start, offset - start)

  local display = eurex_t7_emds_fast_v8_1.md_entry_type_constant_6.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emds_fast_v8_1.fields.md_entry_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emds_fast_v8_1.fields.md_entry_type, range, value, display)
  end

  return offset, value
end

-- Md Entry Type (Constant)
eurex_t7_emds_fast_v8_1.md_entry_type_constant_5 = {}

-- Display: Md Entry Type (Constant)
eurex_t7_emds_fast_v8_1.md_entry_type_constant_5.display = function(value)
  if value == nil then
    return "Md Entry Type: No Value"
  end

  if value == 0 then
    return "Md Entry Type: Bid (0)"
  end
  if value == 1 then
    return "Md Entry Type: Offer (1)"
  end
  if value == 2 then
    return "Md Entry Type: Trade (2)"
  end
  if value == 3 then
    return "Md Entry Type: EmptyBook (J)"
  end
  if value == 4 then
    return "Md Entry Type: AuctionClearingPrice (Q)"
  end
  if value == 5 then
    return "Md Entry Type: SettlementPrice (6)"
  end
  if value == 6 then
    return "Md Entry Type: OpenInterest (C)"
  end
  if value == 7 then
    return "Md Entry Type: TradeVolume (B)"
  end
  if value == 8 then
    return "Md Entry Type: MarketBid (b)"
  end
  if value == 9 then
    return "Md Entry Type: MarketOffer (c)"
  end
  if value == 10 then
    return "Md Entry Type: Imbalance (A)"
  end

  return "Md Entry Type: Unknown("..value..")"
end

-- Dissect: Md Entry Type (Constant)
eurex_t7_emds_fast_v8_1.md_entry_type_constant_5.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = 5

  local range = buffer(start, offset - start)

  local display = eurex_t7_emds_fast_v8_1.md_entry_type_constant_5.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emds_fast_v8_1.fields.md_entry_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emds_fast_v8_1.fields.md_entry_type, range, value, display)
  end

  return offset, value
end

-- Md Entry Type (Default)
eurex_t7_emds_fast_v8_1.md_entry_type_default = {}

-- Display: Md Entry Type (Default)
eurex_t7_emds_fast_v8_1.md_entry_type_default.display = function(value)
  if value == nil then
    return "Md Entry Type: No Value"
  end

  if value == 0 then
    return "Md Entry Type: Bid (0)"
  end
  if value == 1 then
    return "Md Entry Type: Offer (1)"
  end
  if value == 2 then
    return "Md Entry Type: Trade (2)"
  end
  if value == 3 then
    return "Md Entry Type: EmptyBook (J)"
  end
  if value == 4 then
    return "Md Entry Type: AuctionClearingPrice (Q)"
  end
  if value == 5 then
    return "Md Entry Type: SettlementPrice (6)"
  end
  if value == 6 then
    return "Md Entry Type: OpenInterest (C)"
  end
  if value == 7 then
    return "Md Entry Type: TradeVolume (B)"
  end
  if value == 8 then
    return "Md Entry Type: MarketBid (b)"
  end
  if value == 9 then
    return "Md Entry Type: MarketOffer (c)"
  end
  if value == 10 then
    return "Md Entry Type: Imbalance (A)"
  end

  return "Md Entry Type: Unknown("..value..")"
end

-- Dissect: Md Entry Type (Default)
eurex_t7_emds_fast_v8_1.md_entry_type_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 2
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emds_fast_v8_1.md_entry_type_default.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emds_fast_v8_1.fields.md_entry_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emds_fast_v8_1.fields.md_entry_type, range, value, display)
  end

  return offset, value
end

-- Md Entry Size (Default)
eurex_t7_emds_fast_v8_1.md_entry_size_default = {}

-- Display: Md Entry Size (Default)
eurex_t7_emds_fast_v8_1.md_entry_size_default.display = function(value)
  if value == nil then
    return "Md Entry Size: No Value"
  end

  return "Md Entry Size: "..value
end

-- Dissect: Md Entry Size (Default)
eurex_t7_emds_fast_v8_1.md_entry_size_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_stop_bit_signed(buffer, offset)
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

  local display = eurex_t7_emds_fast_v8_1.md_entry_size_default.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emds_fast_v8_1.fields.md_entry_size, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emds_fast_v8_1.fields.md_entry_size, range, value, display)
  end

  return offset, value
end

-- Md Entry Size (Sent)
eurex_t7_emds_fast_v8_1.md_entry_size_sent = {}

-- Display: Md Entry Size (Sent)
eurex_t7_emds_fast_v8_1.md_entry_size_sent.display = function(value)
  if value == nil then
    return "Md Entry Size: No Value"
  end

  return "Md Entry Size: "..value
end

-- Dissect: Md Entry Size (Sent)
eurex_t7_emds_fast_v8_1.md_entry_size_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  exponent, offset = read_nullable_signed(buffer, offset)
  if exponent ~= nil then mantissa, offset = read_stop_bit_signed(buffer, offset) end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emds_fast_v8_1.md_entry_size_sent.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emds_fast_v8_1.fields.md_entry_size, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emds_fast_v8_1.fields.md_entry_size, range, value, display)
  end

  return offset, value
end

-- Md Entry Time (Copy)
eurex_t7_emds_fast_v8_1.md_entry_time_copy = {}

-- Dissect: Md Entry Time (Copy)
eurex_t7_emds_fast_v8_1.md_entry_time_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_int64(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Md Entry Time was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emds_fast_v8_1.fields.md_entry_time, range, NSTime.new(0, 0))
    absent:set_text("Md Entry Time: No Value")
  else
    local seconds = (value / Int64(1000000000)):tonumber()
    local nanos = (value % Int64(1000000000)):tonumber()
    parent:add(omi_eurex_t7_emds_fast_v8_1.fields.md_entry_time, range, NSTime.new(seconds, nanos))
  end

  return offset, value
end

-- Md Entry Time (Delta)
eurex_t7_emds_fast_v8_1.md_entry_time_delta = {}

-- Dissect: Md Entry Time (Delta)
eurex_t7_emds_fast_v8_1.md_entry_time_delta.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    local absent = parent:add(omi_eurex_t7_emds_fast_v8_1.fields.md_entry_time, range, NSTime.new(0, 0))
    absent:set_text("Md Entry Time: No Value")
  else
    local seconds = (value / Int64(1000000000)):tonumber()
    local nanos = (value % Int64(1000000000)):tonumber()
    parent:add(omi_eurex_t7_emds_fast_v8_1.fields.md_entry_time, range, NSTime.new(seconds, nanos))
  end

  return offset, value
end

-- Md Entry Px (Sent)
eurex_t7_emds_fast_v8_1.md_entry_px_sent_required = {}

-- Display: Md Entry Px (Sent)
eurex_t7_emds_fast_v8_1.md_entry_px_sent_required.display = function(value)
  if value == nil then
    return "Md Entry Px: No Value"
  end

  return "Md Entry Px: "..value
end

-- Dissect: Md Entry Px (Sent)
eurex_t7_emds_fast_v8_1.md_entry_px_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  exponent, offset = read_stop_bit_signed(buffer, offset)
  if exponent ~= nil then mantissa, offset = read_stop_bit_signed(buffer, offset) end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emds_fast_v8_1.md_entry_px_sent_required.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emds_fast_v8_1.fields.md_entry_px, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emds_fast_v8_1.fields.md_entry_px, range, value, display)
  end

  return offset, value
end

-- Md Entry Px (Sent)
eurex_t7_emds_fast_v8_1.md_entry_px_sent_optional = {}

-- Display: Md Entry Px (Sent)
eurex_t7_emds_fast_v8_1.md_entry_px_sent_optional.display = function(value)
  if value == nil then
    return "Md Entry Px: No Value"
  end

  return "Md Entry Px: "..value
end

-- Dissect: Md Entry Px (Sent)
eurex_t7_emds_fast_v8_1.md_entry_px_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  exponent, offset = read_nullable_signed(buffer, offset)
  if exponent ~= nil then mantissa, offset = read_stop_bit_signed(buffer, offset) end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emds_fast_v8_1.md_entry_px_sent_optional.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emds_fast_v8_1.fields.md_entry_px, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emds_fast_v8_1.fields.md_entry_px, range, value, display)
  end

  return offset, value
end

-- Md Sec Px
eurex_t7_emds_fast_v8_1.md_sec_px = {}

-- Display: Md Sec Px
eurex_t7_emds_fast_v8_1.md_sec_px.display = function(value)
  if value == nil then
    return "Md Sec Px: No Value"
  end

  return "Md Sec Px: "..value
end

-- Dissect: Md Sec Px
eurex_t7_emds_fast_v8_1.md_sec_px.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = eurex_t7_emds_fast_v8_1.md_sec_px.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emds_fast_v8_1.fields.md_sec_px, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emds_fast_v8_1.fields.md_sec_px, range, value, display)
  end

  return offset, value
end

-- Md Report Count
eurex_t7_emds_fast_v8_1.md_report_count = {}

-- Dissect: Md Report Count
eurex_t7_emds_fast_v8_1.md_report_count.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emds_fast_v8_1.fields.md_report_count, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emds_fast_v8_1.fields.md_report_count, range, 0)
    absent:set_text("Md Report Count: No Value")
  end

  return offset, value
end

-- Last Msg Seq Num Processed
eurex_t7_emds_fast_v8_1.last_msg_seq_num_processed = {}

-- Dissect: Last Msg Seq Num Processed
eurex_t7_emds_fast_v8_1.last_msg_seq_num_processed.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_eurex_t7_emds_fast_v8_1.fields.last_msg_seq_num_processed, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emds_fast_v8_1.fields.last_msg_seq_num_processed, range, 0)
    absent:set_text("Last Msg Seq Num Processed: No Value")
  end

  return offset, value
end

-- Md Report Event
eurex_t7_emds_fast_v8_1.md_report_event = {}

-- Display: Md Report Event
eurex_t7_emds_fast_v8_1.md_report_event.display = function(value)
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
    return "Md Report Event: StartOfOffBookTrades (3)"
  end
  if value == 3 then
    return "Md Report Event: EndOfOffBookTrades (4)"
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
eurex_t7_emds_fast_v8_1.md_report_event.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = eurex_t7_emds_fast_v8_1.md_report_event.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emds_fast_v8_1.fields.md_report_event, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emds_fast_v8_1.fields.md_report_event, range, value, display)
  end

  return offset, value
end

-- Transact Time
eurex_t7_emds_fast_v8_1.transact_time = {}

-- Dissect: Transact Time
eurex_t7_emds_fast_v8_1.transact_time.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local value_delta = nil
  value_delta, offset = read_stop_bit_int64(buffer, offset)
  value = (state.values[key] or Int64(0)) + value_delta
  state.values[key] = value

  local range = buffer(start, offset - start)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emds_fast_v8_1.fields.transact_time, range, NSTime.new(0, 0))
    absent:set_text("Transact Time: No Value")
  else
    local seconds = (value / Int64(1000000000)):tonumber()
    local nanos = (value % Int64(1000000000)):tonumber()
    parent:add(omi_eurex_t7_emds_fast_v8_1.fields.transact_time, range, NSTime.new(seconds, nanos))
  end

  return offset, value
end

-- Msg Seq Num
eurex_t7_emds_fast_v8_1.msg_seq_num = {}

-- Dissect: Msg Seq Num
eurex_t7_emds_fast_v8_1.msg_seq_num.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_eurex_t7_emds_fast_v8_1.fields.msg_seq_num, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emds_fast_v8_1.fields.msg_seq_num, range, 0)
    absent:set_text("Msg Seq Num: No Value")
  end

  return offset, value
end

-- Md Origin Type
eurex_t7_emds_fast_v8_1.md_origin_type = {}

-- Display: Md Origin Type
eurex_t7_emds_fast_v8_1.md_origin_type.display = function(value)
  if value == nil then
    return "Md Origin Type: No Value"
  end

  if value == 0 then
    return "Md Origin Type: Book (0)"
  end
  if value == 1 then
    return "Md Origin Type: OffBook (1)"
  end

  return "Md Origin Type: Unknown("..value..")"
end

-- Dissect: Md Origin Type
eurex_t7_emds_fast_v8_1.md_origin_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emds_fast_v8_1.md_origin_type.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emds_fast_v8_1.fields.md_origin_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emds_fast_v8_1.fields.md_origin_type, range, value, display)
  end

  return offset, value
end

-- Md Update Action
eurex_t7_emds_fast_v8_1.md_update_action = {}

-- Display: Md Update Action
eurex_t7_emds_fast_v8_1.md_update_action.display = function(value)
  if value == nil then
    return "Md Update Action: No Value"
  end

  if value == 0 then
    return "Md Update Action: New (0)"
  end
  if value == 1 then
    return "Md Update Action: Change (1)"
  end
  if value == 2 then
    return "Md Update Action: Delete (2)"
  end
  if value == 3 then
    return "Md Update Action: DeleteThru (3)"
  end
  if value == 4 then
    return "Md Update Action: DeleteFrom (4)"
  end
  if value == 5 then
    return "Md Update Action: Overlay (5)"
  end

  return "Md Update Action: Unknown("..value..")"
end

-- Dissect: Md Update Action
eurex_t7_emds_fast_v8_1.md_update_action.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Md Update Action was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_emds_fast_v8_1.md_update_action.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emds_fast_v8_1.fields.md_update_action, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emds_fast_v8_1.fields.md_update_action, range, value, display)
  end

  return offset, value
end

-- Trd Type
eurex_t7_emds_fast_v8_1.trd_type = {}

-- Display: Trd Type
eurex_t7_emds_fast_v8_1.trd_type.display = function(value)
  if value == nil then
    return "Trd Type: No Value"
  end

  if value == 0 then
    return "Trd Type: RegularTrade (0)"
  end
  if value == 1 then
    return "Trd Type: BlockTrade (1)"
  end
  if value == 2 then
    return "Trd Type: EFP (2)"
  end
  if value == 3 then
    return "Trd Type: ExchangeForSwap (12)"
  end
  if value == 4 then
    return "Trd Type: OTC (54)"
  end
  if value == 5 then
    return "Trd Type: ExchangeBasisFacility (55)"
  end
  if value == 6 then
    return "Trd Type: VolaTrade (1000)"
  end
  if value == 7 then
    return "Trd Type: EFPFinTrade (1001)"
  end
  if value == 8 then
    return "Trd Type: EFPIndexFuturesTrade (1002)"
  end
  if value == 9 then
    return "Trd Type: BlockTradeAtMarket (1004)"
  end
  if value == 10 then
    return "Trd Type: EnlightTrade (1006)"
  end
  if value == 11 then
    return "Trd Type: BlockQTPIPTrade (1007)"
  end
  if value == 12 then
    return "Trd Type: OpeningAuctionTrade (1100)"
  end
  if value == 13 then
    return "Trd Type: IntradayAuctionTrade (1101)"
  end
  if value == 14 then
    return "Trd Type: VolatilityAuctionTrade (1102)"
  end
  if value == 15 then
    return "Trd Type: ClosingAuctionTrade (1103)"
  end
  if value == 16 then
    return "Trd Type: CrossAuctionTrade (1104)"
  end
  if value == 17 then
    return "Trd Type: IPOAuctionTrade (1107)"
  end
  if value == 18 then
    return "Trd Type: LiquidityImprovementCross (1108)"
  end

  return "Trd Type: Unknown("..value..")"
end

-- Dissect: Trd Type
eurex_t7_emds_fast_v8_1.trd_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  local display = eurex_t7_emds_fast_v8_1.trd_type.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emds_fast_v8_1.fields.trd_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emds_fast_v8_1.fields.trd_type, range, value, display)
  end

  return offset, value
end

-- Algorithmic Trade Indicator
eurex_t7_emds_fast_v8_1.algorithmic_trade_indicator = {}

-- Display: Algorithmic Trade Indicator
eurex_t7_emds_fast_v8_1.algorithmic_trade_indicator.display = function(value)
  if value == nil then
    return "Algorithmic Trade Indicator: No Value"
  end

  if value == 0 then
    return "Algorithmic Trade Indicator: AlgorithmicTrade (1)"
  end

  return "Algorithmic Trade Indicator: Unknown("..value..")"
end

-- Dissect: Algorithmic Trade Indicator
eurex_t7_emds_fast_v8_1.algorithmic_trade_indicator.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emds_fast_v8_1.algorithmic_trade_indicator.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emds_fast_v8_1.fields.algorithmic_trade_indicator, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emds_fast_v8_1.fields.algorithmic_trade_indicator, range, value, display)
  end

  return offset, value
end

-- Trade Condition
eurex_t7_emds_fast_v8_1.trade_condition = {}

-- Display: Trade Condition
eurex_t7_emds_fast_v8_1.trade_condition.display = function(value)
  if value == nil then
    return "Trade Condition: No Value"
  end

  local names = {}

  if bit.band(value, 1) ~= 0 then names[#names + 1] = "ExchangeLast (U)" end
  if bit.band(value, 2) ~= 0 then names[#names + 1] = "OpeningPrice (R)" end
  if bit.band(value, 4) ~= 0 then names[#names + 1] = "HighPrice (AX)" end
  if bit.band(value, 8) ~= 0 then names[#names + 1] = "LowPrice (AY)" end
  if bit.band(value, 16) ~= 0 then names[#names + 1] = "OfficialClosingPrice (AJ)" end
  if bit.band(value, 32) ~= 0 then names[#names + 1] = "LastAuctionPrice (AW)" end
  if bit.band(value, 64) ~= 0 then names[#names + 1] = "OutOfSequenceETH (k)" end
  if bit.band(value, 128) ~= 0 then names[#names + 1] = "PreviousClosingPrice (BD)" end
  if bit.band(value, 256) ~= 0 then names[#names + 1] = "VolumeOnly (a)" end
  if bit.band(value, 512) ~= 0 then names[#names + 1] = "SystematicInternalizer (AZ)" end
  if bit.band(value, 1024) ~= 0 then names[#names + 1] = "MidpointPrice (BB)" end
  if bit.band(value, 2048) ~= 0 then names[#names + 1] = "TradingOnTermsOfIssue (BC)" end
  if bit.band(value, 4096) ~= 0 then names[#names + 1] = "SpecialAuction (SA)" end

  if #names == 0 then
    return "Trade Condition: None"
  end

  return "Trade Condition: "..table.concat(names, ", ")
end

-- Dissect: Trade Condition
eurex_t7_emds_fast_v8_1.trade_condition.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = 1
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emds_fast_v8_1.trade_condition.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emds_fast_v8_1.fields.trade_condition, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emds_fast_v8_1.fields.trade_condition, range, value, display)
  end

  return offset, value
end

-- Multi Leg Reporting Type
eurex_t7_emds_fast_v8_1.multi_leg_reporting_type = {}

-- Display: Multi Leg Reporting Type
eurex_t7_emds_fast_v8_1.multi_leg_reporting_type.display = function(value)
  if value == nil then
    return "Multi Leg Reporting Type: No Value"
  end

  if value == 0 then
    return "Multi Leg Reporting Type: SingleSecurity (1)"
  end
  if value == 1 then
    return "Multi Leg Reporting Type: IndividualLegOfAMultiLegSecurity (2)"
  end
  if value == 2 then
    return "Multi Leg Reporting Type: MultiLegSecurity (3)"
  end

  return "Multi Leg Reporting Type: Unknown("..value..")"
end

-- Dissect: Multi Leg Reporting Type
eurex_t7_emds_fast_v8_1.multi_leg_reporting_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = 1
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emds_fast_v8_1.multi_leg_reporting_type.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emds_fast_v8_1.fields.multi_leg_reporting_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emds_fast_v8_1.fields.multi_leg_reporting_type, range, value, display)
  end

  return offset, value
end

-- Multi Leg Price Model
eurex_t7_emds_fast_v8_1.multi_leg_price_model = {}

-- Display: Multi Leg Price Model
eurex_t7_emds_fast_v8_1.multi_leg_price_model.display = function(value)
  if value == nil then
    return "Multi Leg Price Model: No Value"
  end

  if value == 0 then
    return "Multi Leg Price Model: Standard (0)"
  end
  if value == 1 then
    return "Multi Leg Price Model: UserDefined (1)"
  end

  return "Multi Leg Price Model: Unknown("..value..")"
end

-- Dissect: Multi Leg Price Model
eurex_t7_emds_fast_v8_1.multi_leg_price_model.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emds_fast_v8_1.multi_leg_price_model.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emds_fast_v8_1.fields.multi_leg_price_model, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emds_fast_v8_1.fields.multi_leg_price_model, range, value, display)
  end

  return offset, value
end

-- Aggressor Time
eurex_t7_emds_fast_v8_1.aggressor_time = {}

-- Dissect: Aggressor Time
eurex_t7_emds_fast_v8_1.aggressor_time.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_int64(buffer, offset)

  local range = buffer(start, offset - start)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emds_fast_v8_1.fields.aggressor_time, range, NSTime.new(0, 0))
    absent:set_text("Aggressor Time: No Value")
  else
    local seconds = (value / Int64(1000000000)):tonumber()
    local nanos = (value % Int64(1000000000)):tonumber()
    parent:add(omi_eurex_t7_emds_fast_v8_1.fields.aggressor_time, range, NSTime.new(seconds, nanos))
  end

  return offset, value
end

-- Aggressor Side
eurex_t7_emds_fast_v8_1.aggressor_side = {}

-- Display: Aggressor Side
eurex_t7_emds_fast_v8_1.aggressor_side.display = function(value)
  if value == nil then
    return "Aggressor Side: No Value"
  end

  if value == 0 then
    return "Aggressor Side: Buy (1)"
  end
  if value == 1 then
    return "Aggressor Side: Sell (2)"
  end

  return "Aggressor Side: Unknown("..value..")"
end

-- Dissect: Aggressor Side
eurex_t7_emds_fast_v8_1.aggressor_side.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_emds_fast_v8_1.aggressor_side.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emds_fast_v8_1.fields.aggressor_side, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emds_fast_v8_1.fields.aggressor_side, range, value, display)
  end

  return offset, value
end

-- Number Of Buy Orders
eurex_t7_emds_fast_v8_1.number_of_buy_orders = {}

-- Dissect: Number Of Buy Orders
eurex_t7_emds_fast_v8_1.number_of_buy_orders.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emds_fast_v8_1.fields.number_of_buy_orders, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emds_fast_v8_1.fields.number_of_buy_orders, range, 0)
    absent:set_text("Number Of Buy Orders: No Value")
  end

  return offset, value
end

-- Number Of Sell Orders
eurex_t7_emds_fast_v8_1.number_of_sell_orders = {}

-- Dissect: Number Of Sell Orders
eurex_t7_emds_fast_v8_1.number_of_sell_orders.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emds_fast_v8_1.fields.number_of_sell_orders, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emds_fast_v8_1.fields.number_of_sell_orders, range, 0)
    absent:set_text("Number Of Sell Orders: No Value")
  end

  return offset, value
end

-- Total Num Of Trades
eurex_t7_emds_fast_v8_1.total_num_of_trades = {}

-- Dissect: Total Num Of Trades
eurex_t7_emds_fast_v8_1.total_num_of_trades.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emds_fast_v8_1.fields.total_num_of_trades, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emds_fast_v8_1.fields.total_num_of_trades, range, 0)
    absent:set_text("Total Num Of Trades: No Value")
  end

  return offset, value
end

-- Resting Cxl Qty
eurex_t7_emds_fast_v8_1.resting_cxl_qty = {}

-- Display: Resting Cxl Qty
eurex_t7_emds_fast_v8_1.resting_cxl_qty.display = function(value)
  if value == nil then
    return "Resting Cxl Qty: No Value"
  end

  return "Resting Cxl Qty: "..value
end

-- Dissect: Resting Cxl Qty
eurex_t7_emds_fast_v8_1.resting_cxl_qty.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  exponent, offset = read_nullable_signed(buffer, offset)
  if exponent ~= nil then mantissa, offset = read_stop_bit_signed(buffer, offset) end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emds_fast_v8_1.resting_cxl_qty.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emds_fast_v8_1.fields.resting_cxl_qty, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emds_fast_v8_1.fields.resting_cxl_qty, range, value, display)
  end

  return offset, value
end

-- Md Entry Id
eurex_t7_emds_fast_v8_1.md_entry_id = {}

-- Dissect: Md Entry Id
eurex_t7_emds_fast_v8_1.md_entry_id.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_eurex_t7_emds_fast_v8_1.fields.md_entry_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emds_fast_v8_1.fields.md_entry_id, range, 0)
    absent:set_text("Md Entry Id: No Value")
  end

  return offset, value
end

-- Non Disclosed Trade Volume
eurex_t7_emds_fast_v8_1.non_disclosed_trade_volume = {}

-- Display: Non Disclosed Trade Volume
eurex_t7_emds_fast_v8_1.non_disclosed_trade_volume.display = function(value)
  if value == nil then
    return "Non Disclosed Trade Volume: No Value"
  end

  return "Non Disclosed Trade Volume: "..value
end

-- Dissect: Non Disclosed Trade Volume
eurex_t7_emds_fast_v8_1.non_disclosed_trade_volume.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  exponent, offset = read_nullable_signed(buffer, offset)
  if exponent ~= nil then mantissa, offset = read_stop_bit_signed(buffer, offset) end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emds_fast_v8_1.non_disclosed_trade_volume.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emds_fast_v8_1.fields.non_disclosed_trade_volume, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emds_fast_v8_1.fields.non_disclosed_trade_volume, range, value, display)
  end

  return offset, value
end

-- No Party I Ds
eurex_t7_emds_fast_v8_1.no_party_i_ds = {}

-- Dissect: No Party I Ds
eurex_t7_emds_fast_v8_1.no_party_i_ds.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value = 1
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emds_fast_v8_1.fields.no_party_i_ds, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emds_fast_v8_1.fields.no_party_i_ds, range, 0)
    absent:set_text("No Party I Ds: No Value")
  end

  return offset, value
end

-- Party Id
eurex_t7_emds_fast_v8_1.party_id = {}

-- Dissect: Party Id
eurex_t7_emds_fast_v8_1.party_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Party Id was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emds_fast_v8_1.fields.party_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emds_fast_v8_1.fields.party_id, range, "")
    absent:set_text("Party Id: No Value")
  end

  return offset, value
end

-- Party Id Source
eurex_t7_emds_fast_v8_1.party_id_source = {}

-- Dissect: Party Id Source
eurex_t7_emds_fast_v8_1.party_id_source.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "G"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emds_fast_v8_1.fields.party_id_source, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emds_fast_v8_1.fields.party_id_source, range, "")
    absent:set_text("Party Id Source: No Value")
  end

  return offset, value
end

-- Party Role
eurex_t7_emds_fast_v8_1.party_role = {}

-- Dissect: Party Role
eurex_t7_emds_fast_v8_1.party_role.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = 73

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emds_fast_v8_1.fields.party_role, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emds_fast_v8_1.fields.party_role, range, 0)
    absent:set_text("Party Role: No Value")
  end

  return offset, value
end


-----------------------------------------------------------------------
-- Dissect Eurex T7 Emds Fast 8.1
-----------------------------------------------------------------------

-- Parties
eurex_t7_emds_fast_v8_1.parties = {}

-- Dissect Fields: Parties
eurex_t7_emds_fast_v8_1.parties.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Party Id: string, Copy
  index, value = eurex_t7_emds_fast_v8_1.party_id.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|7:PartyID")

  -- Party Id Source: string, Constant
  index, value = eurex_t7_emds_fast_v8_1.party_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Party Role: uInt32, Constant
  index, value = eurex_t7_emds_fast_v8_1.party_role.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Parties
eurex_t7_emds_fast_v8_1.parties.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_emds_fast_v8_1.fields.parties, buffer(offset, 0))
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

  index = eurex_t7_emds_fast_v8_1.parties.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Inc Grp
eurex_t7_emds_fast_v8_1.md_inc_grp = {}

-- Dissect Fields: Md Inc Grp
eurex_t7_emds_fast_v8_1.md_inc_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Origin Type: uInt32, Default
  index, value = eurex_t7_emds_fast_v8_1.md_origin_type.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Md Update Action: uInt32, Copy
  index, value = eurex_t7_emds_fast_v8_1.md_update_action.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|14:MDUpdateAction")

  -- Md Entry Type: uInt32, Default
  index, value = eurex_t7_emds_fast_v8_1.md_entry_type_default.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  -- Security Id: int64, Copy
  index, value = eurex_t7_emds_fast_v8_1.security_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "6:global|0:|10:SecurityID")

  -- Security Id Source: string, Constant
  index, value = eurex_t7_emds_fast_v8_1.security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Px: decimal, sent, optional
  index, value = eurex_t7_emds_fast_v8_1.md_entry_px_sent_optional.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Md Entry Size: decimal, sent, optional
  index, value = eurex_t7_emds_fast_v8_1.md_entry_size_sent.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Md Entry Time: timestamp, Delta, optional
  index, value = eurex_t7_emds_fast_v8_1.md_entry_time_delta.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|11:MDEntryTime")

  -- Trd Type: uInt32, sent, optional
  index, value = eurex_t7_emds_fast_v8_1.trd_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Algorithmic Trade Indicator: uInt32, Default, optional
  index, value = eurex_t7_emds_fast_v8_1.algorithmic_trade_indicator.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Trade Condition: uInt32, Default, optional
  index, value = eurex_t7_emds_fast_v8_1.trade_condition.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- Multi Leg Reporting Type: uInt32, Default, optional
  index, value = eurex_t7_emds_fast_v8_1.multi_leg_reporting_type.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Multi Leg Price Model: uInt32, Default, optional
  index, value = eurex_t7_emds_fast_v8_1.multi_leg_price_model.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Aggressor Time: timestamp, sent, optional
  index, value = eurex_t7_emds_fast_v8_1.aggressor_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Aggressor Side: uInt32, Copy, optional
  index, value = eurex_t7_emds_fast_v8_1.aggressor_side.dissect(buffer, index, packet, parent, presence_map[base + 8], state, "6:global|0:|13:AggressorSide")

  -- Number Of Buy Orders: uInt32, sent, optional
  index, value = eurex_t7_emds_fast_v8_1.number_of_buy_orders.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Number Of Sell Orders: uInt32, sent, optional
  index, value = eurex_t7_emds_fast_v8_1.number_of_sell_orders.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Total Num Of Trades: uInt32, sent, optional
  index, value = eurex_t7_emds_fast_v8_1.total_num_of_trades.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Resting Cxl Qty: decimal, sent, optional
  index, value = eurex_t7_emds_fast_v8_1.resting_cxl_qty.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Md Entry Id: uInt32, Delta, optional
  index, value = eurex_t7_emds_fast_v8_1.md_entry_id.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|9:MDEntryID")

  -- Non Disclosed Trade Volume: decimal, sent, optional
  index, value = eurex_t7_emds_fast_v8_1.non_disclosed_trade_volume.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- No Party I Ds: uInt32, Constant, optional
  index, value = eurex_t7_emds_fast_v8_1.no_party_i_ds.dissect(buffer, index, packet, parent, presence_map[base + 9], state, nil)

  -- Parties: No Party I Ds entries
  local count = value or 0
  for parties_index = 1, count do
    index = eurex_t7_emds_fast_v8_1.parties.dissect(buffer, index, packet, parent, presence_map, base, state, parties_index)
  end

  return index
end

-- Dissect: Md Inc Grp
eurex_t7_emds_fast_v8_1.md_inc_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_emds_fast_v8_1.fields.md_inc_grp, buffer(offset, 0))
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

  index = eurex_t7_emds_fast_v8_1.md_inc_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Trade Message
eurex_t7_emds_fast_v8_1.trade = {}

eurex_t7_emds_fast_v8_1.trade.node = omi_eurex_t7_emds_fast_v8_1.fields.trade
eurex_t7_emds_fast_v8_1.trade.presence = {
  [2] = omi_eurex_t7_emds_fast_v8_1.fields.presence_msg_seq_num,
  [3] = omi_eurex_t7_emds_fast_v8_1.fields.presence_sender_comp_id,
  [4] = omi_eurex_t7_emds_fast_v8_1.fields.presence_market_segment_id,
}

-- Dissect Fields: Trade Message
eurex_t7_emds_fast_v8_1.trade.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = eurex_t7_emds_fast_v8_1.msg_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, Increment
  index, value = eurex_t7_emds_fast_v8_1.msg_seq_num.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Sender Comp Id: uInt32, Copy
  index, value = eurex_t7_emds_fast_v8_1.sender_comp_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:SenderCompID")

  -- Market Segment Id: uInt32, Copy
  index, value = eurex_t7_emds_fast_v8_1.market_segment_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|15:MarketSegmentID")

  -- No Md Entries: uInt32, Constant
  index, value = eurex_t7_emds_fast_v8_1.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Inc Grp: No Md Entries entries
  local count = value or 0
  for md_inc_grp_index = 1, count do
    index = eurex_t7_emds_fast_v8_1.md_inc_grp.dissect(buffer, index, packet, parent, presence_map, base, state, md_inc_grp_index)
  end

  return index
end

-- Dissect: Trade Message
eurex_t7_emds_fast_v8_1.trade.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = eurex_t7_emds_fast_v8_1.trade.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Market Data Report Message
eurex_t7_emds_fast_v8_1.market_data_report = {}

eurex_t7_emds_fast_v8_1.market_data_report.node = omi_eurex_t7_emds_fast_v8_1.fields.market_data_report
eurex_t7_emds_fast_v8_1.market_data_report.presence = {
  [2] = omi_eurex_t7_emds_fast_v8_1.fields.presence_md_report_event,
}

-- Dissect Fields: Market Data Report Message
eurex_t7_emds_fast_v8_1.market_data_report.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = eurex_t7_emds_fast_v8_1.msg_type_constant_u20.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Report Count: uInt32, sent, optional
  index, value = eurex_t7_emds_fast_v8_1.md_report_count.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Msg Seq Num Processed: uInt32, Delta, optional
  index, value = eurex_t7_emds_fast_v8_1.last_msg_seq_num_processed.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|22:LastMsgSeqNumProcessed")

  -- Md Report Event: uInt32, Copy
  index, value = eurex_t7_emds_fast_v8_1.md_report_event.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|13:MDReportEvent")

  -- Transact Time: timestamp, Delta
  index, value = eurex_t7_emds_fast_v8_1.transact_time.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|12:TransactTime")

  return index
end

-- Dissect: Market Data Report Message
eurex_t7_emds_fast_v8_1.market_data_report.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = eurex_t7_emds_fast_v8_1.market_data_report.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Settlement Md Full Grp
eurex_t7_emds_fast_v8_1.settlement_md_full_grp = {}

-- Dissect Fields: Settlement Md Full Grp
eurex_t7_emds_fast_v8_1.settlement_md_full_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Entry Type: uInt32, Constant
  index, value = eurex_t7_emds_fast_v8_1.md_entry_type_constant_5.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Px: decimal, sent
  index, value = eurex_t7_emds_fast_v8_1.md_entry_px_sent_required.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Md Sec Px: decimal, Default, optional
  index, value = eurex_t7_emds_fast_v8_1.md_sec_px.dissect(buffer, index, packet, parent, { presence_map[base + 0], false }, state, nil)

  -- Md Entry Time: timestamp, Copy
  index, value = eurex_t7_emds_fast_v8_1.md_entry_time_copy.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|11:MDEntryTime")

  return index
end

-- Dissect: Settlement Md Full Grp
eurex_t7_emds_fast_v8_1.settlement_md_full_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_emds_fast_v8_1.fields.settlement_md_full_grp, buffer(offset, 0))
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

  index = eurex_t7_emds_fast_v8_1.settlement_md_full_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Settlement Message
eurex_t7_emds_fast_v8_1.settlement = {}

eurex_t7_emds_fast_v8_1.settlement.node = omi_eurex_t7_emds_fast_v8_1.fields.settlement

-- Dissect Fields: Settlement Message
eurex_t7_emds_fast_v8_1.settlement.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = eurex_t7_emds_fast_v8_1.msg_type_constant_w.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: int64, Delta
  index, value = eurex_t7_emds_fast_v8_1.security_id_delta.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|10:SecurityID")

  -- Security Id Source: string, Constant
  index, value = eurex_t7_emds_fast_v8_1.security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Market Segment Id: uInt32, sent
  index, value = eurex_t7_emds_fast_v8_1.market_segment_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, Constant
  index, value = eurex_t7_emds_fast_v8_1.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Full Grp: No Md Entries entries
  local count = value or 0
  for settlement_md_full_grp_index = 1, count do
    index = eurex_t7_emds_fast_v8_1.settlement_md_full_grp.dissect(buffer, index, packet, parent, presence_map, base, state, settlement_md_full_grp_index)
  end

  return index
end

-- Dissect: Settlement Message
eurex_t7_emds_fast_v8_1.settlement.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = eurex_t7_emds_fast_v8_1.settlement.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Adjusted Open Interest Md Full Grp
eurex_t7_emds_fast_v8_1.adjusted_open_interest_md_full_grp = {}

-- Dissect Fields: Adjusted Open Interest Md Full Grp
eurex_t7_emds_fast_v8_1.adjusted_open_interest_md_full_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Entry Type: uInt32, Constant
  index, value = eurex_t7_emds_fast_v8_1.md_entry_type_constant_6.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Size: decimal, Default
  index, value = eurex_t7_emds_fast_v8_1.md_entry_size_default.dissect(buffer, index, packet, parent, { presence_map[base + 0], false }, state, nil)

  -- Md Entry Time: timestamp, Copy
  index, value = eurex_t7_emds_fast_v8_1.md_entry_time_copy.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|11:MDEntryTime")

  return index
end

-- Dissect: Adjusted Open Interest Md Full Grp
eurex_t7_emds_fast_v8_1.adjusted_open_interest_md_full_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_emds_fast_v8_1.fields.adjusted_open_interest_md_full_grp, buffer(offset, 0))
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

  index = eurex_t7_emds_fast_v8_1.adjusted_open_interest_md_full_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Adjusted Open Interest Message
eurex_t7_emds_fast_v8_1.adjusted_open_interest = {}

eurex_t7_emds_fast_v8_1.adjusted_open_interest.node = omi_eurex_t7_emds_fast_v8_1.fields.adjusted_open_interest

-- Dissect Fields: Adjusted Open Interest Message
eurex_t7_emds_fast_v8_1.adjusted_open_interest.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = eurex_t7_emds_fast_v8_1.msg_type_constant_w.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: int64, Delta
  index, value = eurex_t7_emds_fast_v8_1.security_id_delta.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|10:SecurityID")

  -- Security Id Source: string, Constant
  index, value = eurex_t7_emds_fast_v8_1.security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Market Segment Id: uInt32, sent
  index, value = eurex_t7_emds_fast_v8_1.market_segment_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, Constant
  index, value = eurex_t7_emds_fast_v8_1.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Full Grp: No Md Entries entries
  local count = value or 0
  for adjusted_open_interest_md_full_grp_index = 1, count do
    index = eurex_t7_emds_fast_v8_1.adjusted_open_interest_md_full_grp.dissect(buffer, index, packet, parent, presence_map, base, state, adjusted_open_interest_md_full_grp_index)
  end

  return index
end

-- Dissect: Adjusted Open Interest Message
eurex_t7_emds_fast_v8_1.adjusted_open_interest.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = eurex_t7_emds_fast_v8_1.adjusted_open_interest.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Heart Beat Message
eurex_t7_emds_fast_v8_1.heart_beat = {}

eurex_t7_emds_fast_v8_1.heart_beat.node = omi_eurex_t7_emds_fast_v8_1.fields.heart_beat

-- Dissect Fields: Heart Beat Message
eurex_t7_emds_fast_v8_1.heart_beat.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Sender Comp Id: uInt32, sent
  index, value = eurex_t7_emds_fast_v8_1.sender_comp_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Packet Seq Num: uInt32, sent
  index, value = eurex_t7_emds_fast_v8_1.last_packet_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Heart Beat Message
eurex_t7_emds_fast_v8_1.heart_beat.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = eurex_t7_emds_fast_v8_1.heart_beat.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Packet Header Framing
eurex_t7_emds_fast_v8_1.packet_header = {}

eurex_t7_emds_fast_v8_1.packet_header.node = omi_eurex_t7_emds_fast_v8_1.fields.packet_header

-- Dissect Fields: Packet Header Framing
eurex_t7_emds_fast_v8_1.packet_header.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Sender Comp Id: uInt32, sent
  index, value = eurex_t7_emds_fast_v8_1.sender_comp_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Packet Seq Num: byteVector, sent
  index, value = eurex_t7_emds_fast_v8_1.packet_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: byteVector, sent
  index, value = eurex_t7_emds_fast_v8_1.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Packet Header Framing
eurex_t7_emds_fast_v8_1.packet_header.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = eurex_t7_emds_fast_v8_1.packet_header.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Eurex T7 Emds Fast 8.1 Message Dispatch
eurex_t7_emds_fast_v8_1.templates = {
  [75] = eurex_t7_emds_fast_v8_1.packet_header,
  [170] = eurex_t7_emds_fast_v8_1.heart_beat,
  [171] = eurex_t7_emds_fast_v8_1.adjusted_open_interest,
  [172] = eurex_t7_emds_fast_v8_1.settlement,
  [152] = eurex_t7_emds_fast_v8_1.market_data_report,
  [175] = eurex_t7_emds_fast_v8_1.trade,
}

-- Eurex T7 Emds Fast 8.1 Template Names
eurex_t7_emds_fast_v8_1.template_id = {}

-- Display: Template Id
eurex_t7_emds_fast_v8_1.template_id.display = function(value)
  if value == 75 then
    return "Template Id: PacketHeader (75)"
  end
  if value == 170 then
    return "Template Id: HeartBeat (170)"
  end
  if value == 171 then
    return "Template Id: AdjustedOpenInterest (171)"
  end
  if value == 172 then
    return "Template Id: Settlement (172)"
  end
  if value == 152 then
    return "Template Id: MarketDataReport (152)"
  end
  if value == 175 then
    return "Template Id: Trade (175)"
  end
  if value == 120 then
    return "Template Id: Reset (120)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Name: Template Id
eurex_t7_emds_fast_v8_1.template_id.name = function(value)
  if value == 75 then
    return "PacketHeader"
  end
  if value == 170 then
    return "HeartBeat"
  end
  if value == 171 then
    return "AdjustedOpenInterest"
  end
  if value == 172 then
    return "Settlement"
  end
  if value == 152 then
    return "MarketDataReport"
  end
  if value == 175 then
    return "Trade"
  end
  if value == 120 then
    return "Reset"
  end

  return "Unknown"
end

-- Eurex T7 Emds Fast 8.1 Framing
eurex_t7_emds_fast_v8_1.header = 75
eurex_t7_emds_fast_v8_1.reset = 120

-- Eurex T7 Emds Fast 8.1 Packet Dissector
omi_eurex_t7_emds_fast_v8_1.dissector = function(buffer, packet, parent)
  packet.cols.protocol = "Eurex T7 Emds Fast 8.1"
  local root = parent:add(omi_eurex_t7_emds_fast_v8_1, buffer(), "Eurex T7 Emds Fast 8.1")
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

    local template = eurex_t7_emds_fast_v8_1.templates[template_id]
    local message_tree = nil

    if template ~= nil then
      message_tree = holder:add(template.node, buffer(start, 0))
    else
      message_tree = holder:add(omi_eurex_t7_emds_fast_v8_1.fields.message, buffer(start, 0))
      message_tree:set_text(eurex_t7_emds_fast_v8_1.template_id.name(template_id))
    end

    -- the presence map and the template id are the message's own framing
    local header = message_tree:add(omi_eurex_t7_emds_fast_v8_1.fields.message_header, buffer(start, offset - start))
    local named = nil
    if template ~= nil then
      named = template.presence
    end
    add_presence_map(header, buffer(start, mapped - start), omi_eurex_t7_emds_fast_v8_1.fields.presence_map, omi_eurex_t7_emds_fast_v8_1.fields.presence_stop, omi_eurex_t7_emds_fast_v8_1.fields.presence_identified, omi_eurex_t7_emds_fast_v8_1.fields.presence_unused, named)
    header:add(omi_eurex_t7_emds_fast_v8_1.fields.template_id, buffer(identified, offset - identified), template_id, eurex_t7_emds_fast_v8_1.template_id.display(template_id))

    -- the reset template tells a receiver to forget what the stream remembered
    if template_id == eurex_t7_emds_fast_v8_1.reset then
      state.values = {}
      state.last_template_id = nil
    else
      if template == nil then
        message_tree:add_expert_info(PI_UNDECODED, PI_WARN, "This dissector reads: 75 (PacketHeader), 170 (HeartBeat), 171 (AdjustedOpenInterest), 172 (Settlement), 152 (MarketDataReport), 175 (Trade)")
        message_tree:set_len(offset - start)
        return
      end

      -- every packet opens with the template the model frames them with
      if messages == 0 and template_id ~= eurex_t7_emds_fast_v8_1.header then
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
omi_eurex_t7_emds_fast_v8_1.init = function()
  stream_states = {}
end

-- Register Eurex T7 Emds Fast 8.1 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_eurex_t7_emds_fast_v8_1)

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
