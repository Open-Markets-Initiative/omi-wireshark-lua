-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Bse BseIndia EmdiSnapshot Fast 600.3.750 Protocol
local omi_bse_bseindia_emdisnapshot_fast_v600_3_750 = Proto("Omi.Bse.BseIndia.EmdiSnapshot.Fast.v600.3.750", "Bse BseIndia EmdiSnapshot Fast 600.3.750")

-- Protocol table
local bse_bseindia_emdisnapshot_fast_v600_3_750 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Bse BseIndia EmdiSnapshot Fast 600.3.750 Framing
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.message = ProtoField.new("Message", "bse.bseindia.emdisnapshot.fast.v600.3.750.message", ftypes.NONE)
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.message_header = ProtoField.new("Message Header", "bse.bseindia.emdisnapshot.fast.v600.3.750.messageheader", ftypes.NONE)
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.presence_map = ProtoField.new("Presence Map", "bse.bseindia.emdisnapshot.fast.v600.3.750.presencemap", ftypes.BYTES)
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.template_id = ProtoField.new("Template Id", "bse.bseindia.emdisnapshot.fast.v600.3.750.templateid", ftypes.UINT32)
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.record = ProtoField.new("Record", "bse.bseindia.emdisnapshot.fast.v600.3.750.record", ftypes.NONE)
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.presence_stop = ProtoField.new("Stop Bit", "bse.bseindia.emdisnapshot.fast.v600.3.750.presencestop", ftypes.UINT8, { [0] = "Clear", [1] = "Set" }, base.DEC)
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.presence_identified = ProtoField.new("Template Id", "bse.bseindia.emdisnapshot.fast.v600.3.750.presencetemplateid", ftypes.UINT8, { [0] = "Repeated", [1] = "Sent" }, base.DEC)
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.presence_unused = ProtoField.new("Unused", "bse.bseindia.emdisnapshot.fast.v600.3.750.presenceunused", ftypes.UINT8, nil, base.HEX)

-- Bse BseIndia EmdiSnapshot Fast 600.3.750 Presence Map Fields
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.presence_msg_seq_num = ProtoField.new("Msg Seq Num", "bse.bseindia.emdisnapshot.fast.v600.3.750.msgseqnumpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.presence_sender_comp_id = ProtoField.new("Sender Comp ID", "bse.bseindia.emdisnapshot.fast.v600.3.750.sendercompidpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.presence_last_msg_seq_num_processed = ProtoField.new("Last Msg Seq Num Processed", "bse.bseindia.emdisnapshot.fast.v600.3.750.lastmsgseqnumprocessedpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.presence_refresh_indicator = ProtoField.new("Refresh Indicator", "bse.bseindia.emdisnapshot.fast.v600.3.750.refreshindicatorpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.presence_market_segment_id = ProtoField.new("Market Segment ID", "bse.bseindia.emdisnapshot.fast.v600.3.750.marketsegmentidpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.presence_product_complex = ProtoField.new("Product Complex", "bse.bseindia.emdisnapshot.fast.v600.3.750.productcomplexpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.presence_security_status = ProtoField.new("Security Status", "bse.bseindia.emdisnapshot.fast.v600.3.750.securitystatuspresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.presence_bid_size = ProtoField.new("Bid Size", "bse.bseindia.emdisnapshot.fast.v600.3.750.bidsizepresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.presence_offer_size = ProtoField.new("Offer Size", "bse.bseindia.emdisnapshot.fast.v600.3.750.offersizepresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.presence_no_md_entries = ProtoField.new("No MD Entries", "bse.bseindia.emdisnapshot.fast.v600.3.750.nomdentriespresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)

-- Bse BseIndia EmdiSnapshot Fast 600.3.750 Fields
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.partition_id = ProtoField.new("Partition ID", "bse.bseindia.emdisnapshot.fast.v600.3.750.partitionid", ftypes.UINT32)
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.sender_comp_id = ProtoField.new("Sender Comp ID", "bse.bseindia.emdisnapshot.fast.v600.3.750.sendercompid", ftypes.UINT32)
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.packet_seq_num = ProtoField.new("Packet Seq Num", "bse.bseindia.emdisnapshot.fast.v600.3.750.packetseqnum", ftypes.BYTES)
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.sending_time = ProtoField.new("Sending Time", "bse.bseindia.emdisnapshot.fast.v600.3.750.sendingtime", ftypes.BYTES)
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.performance_indicator = ProtoField.new("Performance Indicator", "bse.bseindia.emdisnapshot.fast.v600.3.750.performanceindicator", ftypes.BYTES)
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.msg_type = ProtoField.new("Msg Type", "bse.bseindia.emdisnapshot.fast.v600.3.750.msgtype", ftypes.STRING)
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.msg_seq_num = ProtoField.new("Msg Seq Num", "bse.bseindia.emdisnapshot.fast.v600.3.750.msgseqnum", ftypes.UINT32)
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.last_msg_seq_num_processed = ProtoField.new("Last Msg Seq Num Processed", "bse.bseindia.emdisnapshot.fast.v600.3.750.lastmsgseqnumprocessed", ftypes.UINT32)
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.refresh_indicator = ProtoField.new("Refresh Indicator", "bse.bseindia.emdisnapshot.fast.v600.3.750.refreshindicator", ftypes.UINT32)
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.market_segment_id = ProtoField.new("Market Segment ID", "bse.bseindia.emdisnapshot.fast.v600.3.750.marketsegmentid", ftypes.UINT32)
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.security_id = ProtoField.new("Security ID", "bse.bseindia.emdisnapshot.fast.v600.3.750.securityid", ftypes.INT64)
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.security_id_source = ProtoField.new("Security ID Source", "bse.bseindia.emdisnapshot.fast.v600.3.750.securityidsource", ftypes.STRING)
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.product_complex = ProtoField.new("Product Complex", "bse.bseindia.emdisnapshot.fast.v600.3.750.productcomplex", ftypes.UINT32)
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.security_status = ProtoField.new("Security Status", "bse.bseindia.emdisnapshot.fast.v600.3.750.securitystatus", ftypes.UINT32)
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.bid_size = ProtoField.new("Bid Size", "bse.bseindia.emdisnapshot.fast.v600.3.750.bidsize", ftypes.UINT64)
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.offer_size = ProtoField.new("Offer Size", "bse.bseindia.emdisnapshot.fast.v600.3.750.offersize", ftypes.UINT64)
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.last_update_time = ProtoField.new("Last Update Time", "bse.bseindia.emdisnapshot.fast.v600.3.750.lastupdatetime", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.no_md_entries = ProtoField.new("No MD Entries", "bse.bseindia.emdisnapshot.fast.v600.3.750.nomdentries", ftypes.UINT32)
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.md_entry_type = ProtoField.new("MD Entry Type", "bse.bseindia.emdisnapshot.fast.v600.3.750.mdentrytype", ftypes.UINT32)
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.trd_type = ProtoField.new("Trd Type", "bse.bseindia.emdisnapshot.fast.v600.3.750.trdtype", ftypes.UINT32)
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.trading_session_id = ProtoField.new("Trading Session ID", "bse.bseindia.emdisnapshot.fast.v600.3.750.tradingsessionid", ftypes.UINT32)
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.trading_session_sub_id = ProtoField.new("Trading Session Sub ID", "bse.bseindia.emdisnapshot.fast.v600.3.750.tradingsessionsubid", ftypes.UINT32)
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.fast_market_indicator = ProtoField.new("Fast Market Indicator", "bse.bseindia.emdisnapshot.fast.v600.3.750.fastmarketindicator", ftypes.UINT32)
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.security_trading_status = ProtoField.new("Security Trading Status", "bse.bseindia.emdisnapshot.fast.v600.3.750.securitytradingstatus", ftypes.UINT32)
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.trade_condition = ProtoField.new("Trade Condition", "bse.bseindia.emdisnapshot.fast.v600.3.750.tradecondition", ftypes.UINT32)
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.md_entry_px = ProtoField.new("MD Entry Px", "bse.bseindia.emdisnapshot.fast.v600.3.750.mdentrypx", ftypes.DOUBLE)
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.yield = ProtoField.new("Yield", "bse.bseindia.emdisnapshot.fast.v600.3.750.yield", ftypes.DOUBLE)
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.put_yield = ProtoField.new("Put Yield", "bse.bseindia.emdisnapshot.fast.v600.3.750.putyield", ftypes.DOUBLE)
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.call_yield = ProtoField.new("Call Yield", "bse.bseindia.emdisnapshot.fast.v600.3.750.callyield", ftypes.DOUBLE)
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.md_entry_size = ProtoField.new("MD Entry Size", "bse.bseindia.emdisnapshot.fast.v600.3.750.mdentrysize", ftypes.UINT64)
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.number_of_orders = ProtoField.new("Number Of Orders", "bse.bseindia.emdisnapshot.fast.v600.3.750.numberoforders", ftypes.UINT32)
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.md_price_level = ProtoField.new("MD Price Level", "bse.bseindia.emdisnapshot.fast.v600.3.750.mdpricelevel", ftypes.UINT32)
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.md_entry_time = ProtoField.new("MD Entry Time", "bse.bseindia.emdisnapshot.fast.v600.3.750.mdentrytime", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.trade_volume = ProtoField.new("Trade Volume", "bse.bseindia.emdisnapshot.fast.v600.3.750.tradevolume", ftypes.UINT64)
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.gross_trade_amt = ProtoField.new("Gross Trade Amt", "bse.bseindia.emdisnapshot.fast.v600.3.750.grosstradeamt", ftypes.DOUBLE)
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.no_trades = ProtoField.new("No Trades", "bse.bseindia.emdisnapshot.fast.v600.3.750.notrades", ftypes.UINT32)
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.imbalance_qty = ProtoField.new("Imbalance Qty", "bse.bseindia.emdisnapshot.fast.v600.3.750.imbalanceqty", ftypes.INT64)
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.imbalance_qty_side = ProtoField.new("Imbalance Qty Side", "bse.bseindia.emdisnapshot.fast.v600.3.750.imbalanceqtyside", ftypes.UINT32)
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.imbalance_mkt_qty = ProtoField.new("Imbalance Mkt Qty", "bse.bseindia.emdisnapshot.fast.v600.3.750.imbalancemktqty", ftypes.INT64)
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.imbalance_mkt_qty_side = ProtoField.new("Imbalance Mkt Qty Side", "bse.bseindia.emdisnapshot.fast.v600.3.750.imbalancemktqtyside", ftypes.UINT32)

-- Bse BseIndia EmdiSnapshot Fast 600.3.750 Messages
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.emd_packet_header = ProtoField.new("EMD Packet Header Message", "bse.bseindia.emdisnapshot.fast.v600.3.750.emdpacketheader", ftypes.NONE)
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.depth_snapshot = ProtoField.new("Depth Snapshot Message", "bse.bseindia.emdisnapshot.fast.v600.3.750.depthsnapshot", ftypes.NONE)
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.md_ssh_grp = ProtoField.new("MD Ssh Grp", "bse.bseindia.emdisnapshot.fast.v600.3.750.mdsshgrp", ftypes.NONE)

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
-- Bse BseIndia EmdiSnapshot Fast 600.3.750 Fields
-----------------------------------------------------------------------

-- Partition ID
bse_bseindia_emdisnapshot_fast_v600_3_750.partition_id = {}

-- Dissect: Partition ID
bse_bseindia_emdisnapshot_fast_v600_3_750.partition_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.partition_id, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.partition_id, range, 0)
    absent:set_text("Partition ID: No Value")
  end

  return offset, value
end

-- Sender Comp ID (Sent)
bse_bseindia_emdisnapshot_fast_v600_3_750.sender_comp_id_sent = {}

-- Dissect: Sender Comp ID (Sent)
bse_bseindia_emdisnapshot_fast_v600_3_750.sender_comp_id_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.sender_comp_id, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.sender_comp_id, range, 0)
    absent:set_text("Sender Comp ID: No Value")
  end

  return offset, value
end

-- Sender Comp ID (Copy)
bse_bseindia_emdisnapshot_fast_v600_3_750.sender_comp_id_copy = {}

-- Dissect: Sender Comp ID (Copy)
bse_bseindia_emdisnapshot_fast_v600_3_750.sender_comp_id_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.sender_comp_id, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.sender_comp_id, range, 0)
    absent:set_text("Sender Comp ID: No Value")
  end

  return offset, value
end

-- Packet Seq Num
bse_bseindia_emdisnapshot_fast_v600_3_750.packet_seq_num = {}

-- Dissect: Packet Seq Num
bse_bseindia_emdisnapshot_fast_v600_3_750.packet_seq_num.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_byte_vector(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.packet_seq_num, value)
  else
    local absent = parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.packet_seq_num, buffer(start, 0))
    absent:set_text("Packet Seq Num: No Value")
  end

  return offset, value
end

-- Sending Time
bse_bseindia_emdisnapshot_fast_v600_3_750.sending_time = {}

-- Dissect: Sending Time
bse_bseindia_emdisnapshot_fast_v600_3_750.sending_time.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_byte_vector(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.sending_time, value)
  else
    local absent = parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.sending_time, buffer(start, 0))
    absent:set_text("Sending Time: No Value")
  end

  return offset, value
end

-- Performance Indicator
bse_bseindia_emdisnapshot_fast_v600_3_750.performance_indicator = {}

-- Dissect: Performance Indicator
bse_bseindia_emdisnapshot_fast_v600_3_750.performance_indicator.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_byte_vector(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.performance_indicator, value)
  else
    local absent = parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.performance_indicator, buffer(start, 0))
    absent:set_text("Performance Indicator: No Value")
  end

  return offset, value
end

-- Msg Type
bse_bseindia_emdisnapshot_fast_v600_3_750.msg_type = {}

-- Dissect: Msg Type
bse_bseindia_emdisnapshot_fast_v600_3_750.msg_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "W"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Seq Num
bse_bseindia_emdisnapshot_fast_v600_3_750.msg_seq_num = {}

-- Dissect: Msg Seq Num
bse_bseindia_emdisnapshot_fast_v600_3_750.msg_seq_num.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = state.values[key]
    if value ~= nil then value = value + 1 end
  end

  state.values[key] = value


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.msg_seq_num, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.msg_seq_num, range, 0)
    absent:set_text("Msg Seq Num: No Value")
  end

  return offset, value
end

-- Last Msg Seq Num Processed
bse_bseindia_emdisnapshot_fast_v600_3_750.last_msg_seq_num_processed = {}

-- Dissect: Last Msg Seq Num Processed
bse_bseindia_emdisnapshot_fast_v600_3_750.last_msg_seq_num_processed.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = state.values[key]
    if value ~= nil then value = value + 1 end
  end

  state.values[key] = value


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.last_msg_seq_num_processed, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.last_msg_seq_num_processed, range, 0)
    absent:set_text("Last Msg Seq Num Processed: No Value")
  end

  return offset, value
end

-- Refresh Indicator
bse_bseindia_emdisnapshot_fast_v600_3_750.refresh_indicator = {}

-- Display: Refresh Indicator
bse_bseindia_emdisnapshot_fast_v600_3_750.refresh_indicator.display = function(value)
  if value == nil then
    return "Refresh Indicator: No Value"
  end

  if value == 0 then
    return "Refresh Indicator: MandatoryRefresh (Y)"
  end
  if value == 1 then
    return "Refresh Indicator: OptionalRefresh (N)"
  end

  return "Refresh Indicator: Unknown("..value..")"
end

-- Dissect: Refresh Indicator
bse_bseindia_emdisnapshot_fast_v600_3_750.refresh_indicator.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = bse_bseindia_emdisnapshot_fast_v600_3_750.refresh_indicator.display(value)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.refresh_indicator, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.refresh_indicator, range, value, display)
  end

  return offset, value
end

-- Market Segment ID
bse_bseindia_emdisnapshot_fast_v600_3_750.market_segment_id = {}

-- Dissect: Market Segment ID
bse_bseindia_emdisnapshot_fast_v600_3_750.market_segment_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Market Segment ID was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.market_segment_id, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.market_segment_id, range, 0)
    absent:set_text("Market Segment ID: No Value")
  end

  return offset, value
end

-- Security ID
bse_bseindia_emdisnapshot_fast_v600_3_750.security_id = {}

-- Dissect: Security ID
bse_bseindia_emdisnapshot_fast_v600_3_750.security_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local value_delta = nil
  value_delta, offset = read_stop_bit_int64(buffer, offset)
  value = (state.values[key] or Int64(0)) + value_delta
  state.values[key] = value

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.security_id, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.security_id, range, Int64(0))
    absent:set_text("Security ID: No Value")
  end

  return offset, value
end

-- Security ID Source
bse_bseindia_emdisnapshot_fast_v600_3_750.security_id_source = {}

-- Dissect: Security ID Source
bse_bseindia_emdisnapshot_fast_v600_3_750.security_id_source.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "M"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.security_id_source, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.security_id_source, range, "")
    absent:set_text("Security ID Source: No Value")
  end

  return offset, value
end

-- Product Complex
bse_bseindia_emdisnapshot_fast_v600_3_750.product_complex = {}

-- Display: Product Complex
bse_bseindia_emdisnapshot_fast_v600_3_750.product_complex.display = function(value)
  if value == nil then
    return "Product Complex: No Value"
  end

  if value == 0 then
    return "Product Complex: SimpleInstrument (1)"
  end
  if value == 1 then
    return "Product Complex: StandardOptionStrategy (2)"
  end
  if value == 2 then
    return "Product Complex: NonStandardOptionStrategy (3)"
  end
  if value == 3 then
    return "Product Complex: VolatilityStrategy (4)"
  end
  if value == 4 then
    return "Product Complex: FuturesSpread (5)"
  end

  return "Product Complex: Unknown("..value..")"
end

-- Dissect: Product Complex
bse_bseindia_emdisnapshot_fast_v600_3_750.product_complex.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Product Complex was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  local display = bse_bseindia_emdisnapshot_fast_v600_3_750.product_complex.display(value)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.product_complex, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.product_complex, range, value, display)
  end

  return offset, value
end

-- Security Status
bse_bseindia_emdisnapshot_fast_v600_3_750.security_status = {}

-- Display: Security Status
bse_bseindia_emdisnapshot_fast_v600_3_750.security_status.display = function(value)
  if value == nil then
    return "Security Status: No Value"
  end

  if value == 0 then
    return "Security Status: Active (1)"
  end
  if value == 1 then
    return "Security Status: Inactive (2)"
  end
  if value == 2 then
    return "Security Status: Expired (4)"
  end
  if value == 3 then
    return "Security Status: Suspended (9)"
  end
  if value == 4 then
    return "Security Status: Published (10)"
  end

  return "Security Status: Unknown("..value..")"
end

-- Dissect: Security Status
bse_bseindia_emdisnapshot_fast_v600_3_750.security_status.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = bse_bseindia_emdisnapshot_fast_v600_3_750.security_status.display(value)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.security_status, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.security_status, range, value, display)
  end

  return offset, value
end

-- Bid Size
bse_bseindia_emdisnapshot_fast_v600_3_750.bid_size = {}

-- Dissect: Bid Size
bse_bseindia_emdisnapshot_fast_v600_3_750.bid_size.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_uint64(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Bid Size was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.bid_size, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.bid_size, range, UInt64(0))
    absent:set_text("Bid Size: No Value")
  end

  return offset, value
end

-- Offer Size
bse_bseindia_emdisnapshot_fast_v600_3_750.offer_size = {}

-- Dissect: Offer Size
bse_bseindia_emdisnapshot_fast_v600_3_750.offer_size.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_uint64(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Offer Size was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.offer_size, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.offer_size, range, UInt64(0))
    absent:set_text("Offer Size: No Value")
  end

  return offset, value
end

-- Last Update Time
bse_bseindia_emdisnapshot_fast_v600_3_750.last_update_time = {}

-- Dissect: Last Update Time
bse_bseindia_emdisnapshot_fast_v600_3_750.last_update_time.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local value_delta = nil
  value_delta, offset = read_stop_bit_int64(buffer, offset)
  value = (state.values[key] or Int64(0)) + value_delta
  state.values[key] = value

  local range = buffer(start, offset - start)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.last_update_time, range, NSTime.new(0, 0))
    absent:set_text("Last Update Time: No Value")
  else
    local seconds = (value / Int64(1000000000)):tonumber()
    local nanos = (value % Int64(1000000000)):tonumber()
    parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.last_update_time, range, NSTime.new(seconds, nanos))
  end

  return offset, value
end

-- No MD Entries
bse_bseindia_emdisnapshot_fast_v600_3_750.no_md_entries = {}

-- Dissect: No MD Entries
bse_bseindia_emdisnapshot_fast_v600_3_750.no_md_entries.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 1
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.no_md_entries, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.no_md_entries, range, 0)
    absent:set_text("No MD Entries: No Value")
  end

  return offset, value
end

-- MD Entry Type
bse_bseindia_emdisnapshot_fast_v600_3_750.md_entry_type = {}

-- Display: MD Entry Type
bse_bseindia_emdisnapshot_fast_v600_3_750.md_entry_type.display = function(value)
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
    return "MD Entry Type: UpperCircuitLimit (7)"
  end
  if value == 4 then
    return "MD Entry Type: LowerCircuitLimit (8)"
  end
  if value == 5 then
    return "MD Entry Type: EmptyBook (J)"
  end
  if value == 6 then
    return "MD Entry Type: AuctionClearingPrice (Q)"
  end
  if value == 7 then
    return "MD Entry Type: SettlementPrice (6)"
  end
  if value == 8 then
    return "MD Entry Type: OpenInterest (C)"
  end
  if value == 9 then
    return "MD Entry Type: BlockdealReferencePrice (W)"
  end
  if value == 10 then
    return "MD Entry Type: upperPriceRange (10)"
  end
  if value == 11 then
    return "MD Entry Type: lowerPriceRange (11)"
  end
  if value == 12 then
    return "MD Entry Type: AuctionBid (13)"
  end
  if value == 13 then
    return "MD Entry Type: AuctionOffer (14)"
  end
  if value == 14 then
    return "MD Entry Type: ClosingReferencePrice (15)"
  end

  return "MD Entry Type: Unknown("..value..")"
end

-- Dissect: MD Entry Type
bse_bseindia_emdisnapshot_fast_v600_3_750.md_entry_type.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = bse_bseindia_emdisnapshot_fast_v600_3_750.md_entry_type.display(value)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.md_entry_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.md_entry_type, range, value, display)
  end

  return offset, value
end

-- Trd Type
bse_bseindia_emdisnapshot_fast_v600_3_750.trd_type = {}

-- Display: Trd Type
bse_bseindia_emdisnapshot_fast_v600_3_750.trd_type.display = function(value)
  if value == nil then
    return "Trd Type: No Value"
  end

  if value == 0 then
    return "Trd Type: BlockTrade (1)"
  end
  if value == 1 then
    return "Trd Type: EFP (2)"
  end
  if value == 2 then
    return "Trd Type: ExchangeForSwap (12)"
  end
  if value == 3 then
    return "Trd Type: ExchangeBasisFacility (55)"
  end
  if value == 4 then
    return "Trd Type: VolaTrade (1000)"
  end
  if value == 5 then
    return "Trd Type: EFPFinTrade (1001)"
  end
  if value == 6 then
    return "Trd Type: EFPIndexFuturesTrade (1002)"
  end
  if value == 7 then
    return "Trd Type: OpeningAuctionTrade (1100)"
  end
  if value == 8 then
    return "Trd Type: IntradayAuctionTrade (1101)"
  end
  if value == 9 then
    return "Trd Type: VolatilityAuctionTrade (1102)"
  end
  if value == 10 then
    return "Trd Type: ClosingAuctionTrade (1103)"
  end
  if value == 11 then
    return "Trd Type: CrossAuctionTrade (1104)"
  end

  return "Trd Type: Unknown("..value..")"
end

-- Dissect: Trd Type
bse_bseindia_emdisnapshot_fast_v600_3_750.trd_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  local display = bse_bseindia_emdisnapshot_fast_v600_3_750.trd_type.display(value)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.trd_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.trd_type, range, value, display)
  end

  return offset, value
end

-- Trading Session ID
bse_bseindia_emdisnapshot_fast_v600_3_750.trading_session_id = {}

-- Display: Trading Session ID
bse_bseindia_emdisnapshot_fast_v600_3_750.trading_session_id.display = function(value)
  if value == nil then
    return "Trading Session ID: No Value"
  end

  if value == 0 then
    return "Trading Session ID: Day (1)"
  end
  if value == 1 then
    return "Trading Session ID: Morning (3)"
  end
  if value == 2 then
    return "Trading Session ID: Evening (5)"
  end
  if value == 3 then
    return "Trading Session ID: Holiday (7)"
  end

  return "Trading Session ID: Unknown("..value..")"
end

-- Dissect: Trading Session ID
bse_bseindia_emdisnapshot_fast_v600_3_750.trading_session_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = bse_bseindia_emdisnapshot_fast_v600_3_750.trading_session_id.display(value)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.trading_session_id, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.trading_session_id, range, value, display)
  end

  return offset, value
end

-- Trading Session Sub ID
bse_bseindia_emdisnapshot_fast_v600_3_750.trading_session_sub_id = {}

-- Display: Trading Session Sub ID
bse_bseindia_emdisnapshot_fast_v600_3_750.trading_session_sub_id.display = function(value)
  if value == nil then
    return "Trading Session Sub ID: No Value"
  end

  if value == 0 then
    return "Trading Session Sub ID: PreTrading (1)"
  end
  if value == 1 then
    return "Trading Session Sub ID: Trading (3)"
  end
  if value == 2 then
    return "Trading Session Sub ID: Closing (4)"
  end
  if value == 3 then
    return "Trading Session Sub ID: PostTrading (5)"
  end
  if value == 4 then
    return "Trading Session Sub ID: PostClosing (6)"
  end
  if value == 5 then
    return "Trading Session Sub ID: Quiescent (9)"
  end

  return "Trading Session Sub ID: Unknown("..value..")"
end

-- Dissect: Trading Session Sub ID
bse_bseindia_emdisnapshot_fast_v600_3_750.trading_session_sub_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  local display = bse_bseindia_emdisnapshot_fast_v600_3_750.trading_session_sub_id.display(value)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.trading_session_sub_id, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.trading_session_sub_id, range, value, display)
  end

  return offset, value
end

-- Fast Market Indicator
bse_bseindia_emdisnapshot_fast_v600_3_750.fast_market_indicator = {}

-- Display: Fast Market Indicator
bse_bseindia_emdisnapshot_fast_v600_3_750.fast_market_indicator.display = function(value)
  if value == nil then
    return "Fast Market Indicator: No Value"
  end

  if value == 0 then
    return "Fast Market Indicator: No (0)"
  end
  if value == 1 then
    return "Fast Market Indicator: Yes (1)"
  end

  return "Fast Market Indicator: Unknown("..value..")"
end

-- Dissect: Fast Market Indicator
bse_bseindia_emdisnapshot_fast_v600_3_750.fast_market_indicator.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = bse_bseindia_emdisnapshot_fast_v600_3_750.fast_market_indicator.display(value)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.fast_market_indicator, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.fast_market_indicator, range, value, display)
  end

  return offset, value
end

-- Security Trading Status
bse_bseindia_emdisnapshot_fast_v600_3_750.security_trading_status = {}

-- Display: Security Trading Status
bse_bseindia_emdisnapshot_fast_v600_3_750.security_trading_status.display = function(value)
  if value == nil then
    return "Security Trading Status: No Value"
  end

  if value == 0 then
    return "Security Trading Status: Closed (200)"
  end
  if value == 1 then
    return "Security Trading Status: Restricted (201)"
  end
  if value == 2 then
    return "Security Trading Status: Book (202)"
  end
  if value == 3 then
    return "Security Trading Status: Continuous (203)"
  end
  if value == 4 then
    return "Security Trading Status: OpeningAuction (204)"
  end
  if value == 5 then
    return "Security Trading Status: OpeningAuctionFreeze (205)"
  end
  if value == 6 then
    return "Security Trading Status: IntradayAuction (206)"
  end
  if value == 7 then
    return "Security Trading Status: IntradayAuctionFreeze (207)"
  end
  if value == 8 then
    return "Security Trading Status: CircuitBreakerAuction (208)"
  end
  if value == 9 then
    return "Security Trading Status: CircuitBreakerAuctionFreeze (209)"
  end
  if value == 10 then
    return "Security Trading Status: ClosingAuction (210)"
  end
  if value == 11 then
    return "Security Trading Status: ClosingAuctionFreeze (211)"
  end

  return "Security Trading Status: Unknown("..value..")"
end

-- Dissect: Security Trading Status
bse_bseindia_emdisnapshot_fast_v600_3_750.security_trading_status.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  local display = bse_bseindia_emdisnapshot_fast_v600_3_750.security_trading_status.display(value)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.security_trading_status, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.security_trading_status, range, value, display)
  end

  return offset, value
end

-- Trade Condition
bse_bseindia_emdisnapshot_fast_v600_3_750.trade_condition = {}

-- Display: Trade Condition
bse_bseindia_emdisnapshot_fast_v600_3_750.trade_condition.display = function(value)
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
  if bit.band(value, 128) ~= 0 then names[#names + 1] = "PreviousClosingPrice (AN)" end
  if bit.band(value, 256) ~= 0 then names[#names + 1] = "VolumeOnly (a)" end

  if #names == 0 then
    return "Trade Condition: None"
  end

  return "Trade Condition: "..table.concat(names, ", ")
end

-- Dissect: Trade Condition
bse_bseindia_emdisnapshot_fast_v600_3_750.trade_condition.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  local display = bse_bseindia_emdisnapshot_fast_v600_3_750.trade_condition.display(value)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.trade_condition, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.trade_condition, range, value, display)
  end

  return offset, value
end

-- MD Entry Px
bse_bseindia_emdisnapshot_fast_v600_3_750.md_entry_px = {}

-- Display: MD Entry Px
bse_bseindia_emdisnapshot_fast_v600_3_750.md_entry_px.display = function(value)
  if value == nil then
    return "MD Entry Px: No Value"
  end

  return "MD Entry Px: "..value
end

-- Dissect: MD Entry Px
bse_bseindia_emdisnapshot_fast_v600_3_750.md_entry_px.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = bse_bseindia_emdisnapshot_fast_v600_3_750.md_entry_px.display(value)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.md_entry_px, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.md_entry_px, range, value, display)
  end

  return offset, value
end

-- Yield
bse_bseindia_emdisnapshot_fast_v600_3_750.yield = {}

-- Display: Yield
bse_bseindia_emdisnapshot_fast_v600_3_750.yield.display = function(value)
  if value == nil then
    return "Yield: No Value"
  end

  return "Yield: "..value
end

-- Dissect: Yield
bse_bseindia_emdisnapshot_fast_v600_3_750.yield.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = bse_bseindia_emdisnapshot_fast_v600_3_750.yield.display(value)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.yield, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.yield, range, value, display)
  end

  return offset, value
end

-- Put Yield
bse_bseindia_emdisnapshot_fast_v600_3_750.put_yield = {}

-- Display: Put Yield
bse_bseindia_emdisnapshot_fast_v600_3_750.put_yield.display = function(value)
  if value == nil then
    return "Put Yield: No Value"
  end

  return "Put Yield: "..value
end

-- Dissect: Put Yield
bse_bseindia_emdisnapshot_fast_v600_3_750.put_yield.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = bse_bseindia_emdisnapshot_fast_v600_3_750.put_yield.display(value)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.put_yield, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.put_yield, range, value, display)
  end

  return offset, value
end

-- Call Yield
bse_bseindia_emdisnapshot_fast_v600_3_750.call_yield = {}

-- Display: Call Yield
bse_bseindia_emdisnapshot_fast_v600_3_750.call_yield.display = function(value)
  if value == nil then
    return "Call Yield: No Value"
  end

  return "Call Yield: "..value
end

-- Dissect: Call Yield
bse_bseindia_emdisnapshot_fast_v600_3_750.call_yield.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = bse_bseindia_emdisnapshot_fast_v600_3_750.call_yield.display(value)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.call_yield, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.call_yield, range, value, display)
  end

  return offset, value
end

-- MD Entry Size
bse_bseindia_emdisnapshot_fast_v600_3_750.md_entry_size = {}

-- Dissect: MD Entry Size
bse_bseindia_emdisnapshot_fast_v600_3_750.md_entry_size.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local value_delta = nil
  value_delta, offset = read_nullable_int64(buffer, offset)

  if value_delta ~= nil then
    value = (state.values[key] or UInt64(0)) + UInt64.fromhex(value_delta:tohex())
    state.values[key] = value
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.md_entry_size, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.md_entry_size, range, UInt64(0))
    absent:set_text("MD Entry Size: No Value")
  end

  return offset, value
end

-- Number Of Orders
bse_bseindia_emdisnapshot_fast_v600_3_750.number_of_orders = {}

-- Dissect: Number Of Orders
bse_bseindia_emdisnapshot_fast_v600_3_750.number_of_orders.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.number_of_orders, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.number_of_orders, range, 0)
    absent:set_text("Number Of Orders: No Value")
  end

  return offset, value
end

-- MD Price Level
bse_bseindia_emdisnapshot_fast_v600_3_750.md_price_level = {}

-- Dissect: MD Price Level
bse_bseindia_emdisnapshot_fast_v600_3_750.md_price_level.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = state.values[key]
    if value ~= nil then value = value + 1 end
  end

  state.values[key] = value


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.md_price_level, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.md_price_level, range, 0)
    absent:set_text("MD Price Level: No Value")
  end

  return offset, value
end

-- MD Entry Time
bse_bseindia_emdisnapshot_fast_v600_3_750.md_entry_time = {}

-- Dissect: MD Entry Time
bse_bseindia_emdisnapshot_fast_v600_3_750.md_entry_time.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_int64(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.md_entry_time, range, NSTime.new(0, 0))
    absent:set_text("MD Entry Time: No Value")
  else
    local seconds = (value / Int64(1000000000)):tonumber()
    local nanos = (value % Int64(1000000000)):tonumber()
    parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.md_entry_time, range, NSTime.new(seconds, nanos))
  end

  return offset, value
end

-- Trade Volume
bse_bseindia_emdisnapshot_fast_v600_3_750.trade_volume = {}

-- Dissect: Trade Volume
bse_bseindia_emdisnapshot_fast_v600_3_750.trade_volume.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.trade_volume, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.trade_volume, range, UInt64(0))
    absent:set_text("Trade Volume: No Value")
  end

  return offset, value
end

-- Gross Trade Amt
bse_bseindia_emdisnapshot_fast_v600_3_750.gross_trade_amt = {}

-- Display: Gross Trade Amt
bse_bseindia_emdisnapshot_fast_v600_3_750.gross_trade_amt.display = function(value)
  if value == nil then
    return "Gross Trade Amt: No Value"
  end

  return "Gross Trade Amt: "..value
end

-- Dissect: Gross Trade Amt
bse_bseindia_emdisnapshot_fast_v600_3_750.gross_trade_amt.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = bse_bseindia_emdisnapshot_fast_v600_3_750.gross_trade_amt.display(value)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.gross_trade_amt, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.gross_trade_amt, range, value, display)
  end

  return offset, value
end

-- No Trades
bse_bseindia_emdisnapshot_fast_v600_3_750.no_trades = {}

-- Dissect: No Trades
bse_bseindia_emdisnapshot_fast_v600_3_750.no_trades.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.no_trades, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.no_trades, range, 0)
    absent:set_text("No Trades: No Value")
  end

  return offset, value
end

-- Imbalance Qty
bse_bseindia_emdisnapshot_fast_v600_3_750.imbalance_qty = {}

-- Dissect: Imbalance Qty
bse_bseindia_emdisnapshot_fast_v600_3_750.imbalance_qty.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_int64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.imbalance_qty, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.imbalance_qty, range, Int64(0))
    absent:set_text("Imbalance Qty: No Value")
  end

  return offset, value
end

-- Imbalance Qty Side
bse_bseindia_emdisnapshot_fast_v600_3_750.imbalance_qty_side = {}

-- Display: Imbalance Qty Side
bse_bseindia_emdisnapshot_fast_v600_3_750.imbalance_qty_side.display = function(value)
  if value == nil then
    return "Imbalance Qty Side: No Value"
  end

  if value == 0 then
    return "Imbalance Qty Side: Buy (1)"
  end
  if value == 1 then
    return "Imbalance Qty Side: Sell (2)"
  end

  return "Imbalance Qty Side: Unknown("..value..")"
end

-- Dissect: Imbalance Qty Side
bse_bseindia_emdisnapshot_fast_v600_3_750.imbalance_qty_side.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  local display = bse_bseindia_emdisnapshot_fast_v600_3_750.imbalance_qty_side.display(value)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.imbalance_qty_side, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.imbalance_qty_side, range, value, display)
  end

  return offset, value
end

-- Imbalance Mkt Qty
bse_bseindia_emdisnapshot_fast_v600_3_750.imbalance_mkt_qty = {}

-- Dissect: Imbalance Mkt Qty
bse_bseindia_emdisnapshot_fast_v600_3_750.imbalance_mkt_qty.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_int64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.imbalance_mkt_qty, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.imbalance_mkt_qty, range, Int64(0))
    absent:set_text("Imbalance Mkt Qty: No Value")
  end

  return offset, value
end

-- Imbalance Mkt Qty Side
bse_bseindia_emdisnapshot_fast_v600_3_750.imbalance_mkt_qty_side = {}

-- Display: Imbalance Mkt Qty Side
bse_bseindia_emdisnapshot_fast_v600_3_750.imbalance_mkt_qty_side.display = function(value)
  if value == nil then
    return "Imbalance Mkt Qty Side: No Value"
  end

  if value == 0 then
    return "Imbalance Mkt Qty Side: Buy (1)"
  end
  if value == 1 then
    return "Imbalance Mkt Qty Side: Sell (2)"
  end

  return "Imbalance Mkt Qty Side: Unknown("..value..")"
end

-- Dissect: Imbalance Mkt Qty Side
bse_bseindia_emdisnapshot_fast_v600_3_750.imbalance_mkt_qty_side.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  local display = bse_bseindia_emdisnapshot_fast_v600_3_750.imbalance_mkt_qty_side.display(value)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.imbalance_mkt_qty_side, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.imbalance_mkt_qty_side, range, value, display)
  end

  return offset, value
end


-----------------------------------------------------------------------
-- Dissect Bse BseIndia EmdiSnapshot Fast 600.3.750
-----------------------------------------------------------------------

-- MD Ssh Grp
bse_bseindia_emdisnapshot_fast_v600_3_750.md_ssh_grp = {}

-- Dissect Fields: MD Ssh Grp
bse_bseindia_emdisnapshot_fast_v600_3_750.md_ssh_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- MD Entry Type: uInt32, Copy
  index, value = bse_bseindia_emdisnapshot_fast_v600_3_750.md_entry_type.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|11:MDEntryType")

  -- Trd Type: uInt32, sent, optional
  index, value = bse_bseindia_emdisnapshot_fast_v600_3_750.trd_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Session ID: uInt32, Default, optional
  index, value = bse_bseindia_emdisnapshot_fast_v600_3_750.trading_session_id.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Trading Session Sub ID: uInt32, sent, optional
  index, value = bse_bseindia_emdisnapshot_fast_v600_3_750.trading_session_sub_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Fast Market Indicator: uInt32, Default, optional
  index, value = bse_bseindia_emdisnapshot_fast_v600_3_750.fast_market_indicator.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  -- Security Trading Status: uInt32, sent, optional
  index, value = bse_bseindia_emdisnapshot_fast_v600_3_750.security_trading_status.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Condition: uInt32, sent, optional
  index, value = bse_bseindia_emdisnapshot_fast_v600_3_750.trade_condition.dissect(buffer, index, packet, parent, nil, state, nil)

  -- MD Entry Px: decimal, Delta, optional
  index, value = bse_bseindia_emdisnapshot_fast_v600_3_750.md_entry_px.dissect(buffer, index, packet, parent, { nil, false }, state, { "6:global|0:|9:MDEntryPx|E", "6:global|0:|9:MDEntryPx|M" })

  -- Yield: decimal, Delta, optional
  index, value = bse_bseindia_emdisnapshot_fast_v600_3_750.yield.dissect(buffer, index, packet, parent, { nil, false }, state, { "6:global|0:|5:Yield|E", "6:global|0:|5:Yield|M" })

  -- Put Yield: decimal, Delta, optional
  index, value = bse_bseindia_emdisnapshot_fast_v600_3_750.put_yield.dissect(buffer, index, packet, parent, { nil, false }, state, { "6:global|0:|8:PutYield|E", "6:global|0:|8:PutYield|M" })

  -- Call Yield: decimal, Delta, optional
  index, value = bse_bseindia_emdisnapshot_fast_v600_3_750.call_yield.dissect(buffer, index, packet, parent, { nil, false }, state, { "6:global|0:|9:CallYield|E", "6:global|0:|9:CallYield|M" })

  -- MD Entry Size: uInt64, Delta, optional
  index, value = bse_bseindia_emdisnapshot_fast_v600_3_750.md_entry_size.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|11:MDEntrySize")

  -- Number Of Orders: uInt32, Delta, optional
  index, value = bse_bseindia_emdisnapshot_fast_v600_3_750.number_of_orders.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|14:NumberOfOrders")

  -- MD Price Level: uInt32, Increment, optional
  index, value = bse_bseindia_emdisnapshot_fast_v600_3_750.md_price_level.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "6:global|0:|12:MDPriceLevel")

  -- MD Entry Time: timestamp, Copy, optional
  index, value = bse_bseindia_emdisnapshot_fast_v600_3_750.md_entry_time.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "6:global|0:|11:MDEntryTime")

  -- Trade Volume: uInt64, sent, optional
  index, value = bse_bseindia_emdisnapshot_fast_v600_3_750.trade_volume.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Gross Trade Amt: decimal, sent, optional
  index, value = bse_bseindia_emdisnapshot_fast_v600_3_750.gross_trade_amt.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- No Trades: uInt32, sent, optional
  index, value = bse_bseindia_emdisnapshot_fast_v600_3_750.no_trades.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Imbalance Qty: int64, sent, optional
  index, value = bse_bseindia_emdisnapshot_fast_v600_3_750.imbalance_qty.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Imbalance Qty Side: uInt32, sent, optional
  index, value = bse_bseindia_emdisnapshot_fast_v600_3_750.imbalance_qty_side.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Imbalance Mkt Qty: int64, sent, optional
  index, value = bse_bseindia_emdisnapshot_fast_v600_3_750.imbalance_mkt_qty.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Imbalance Mkt Qty Side: uInt32, sent, optional
  index, value = bse_bseindia_emdisnapshot_fast_v600_3_750.imbalance_mkt_qty_side.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: MD Ssh Grp
bse_bseindia_emdisnapshot_fast_v600_3_750.md_ssh_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.md_ssh_grp, buffer(offset, 0))
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

  index = bse_bseindia_emdisnapshot_fast_v600_3_750.md_ssh_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Depth Snapshot Message
bse_bseindia_emdisnapshot_fast_v600_3_750.depth_snapshot = {}

bse_bseindia_emdisnapshot_fast_v600_3_750.depth_snapshot.node = omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.depth_snapshot
bse_bseindia_emdisnapshot_fast_v600_3_750.depth_snapshot.presence = {
  [2] = omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.presence_msg_seq_num,
  [3] = omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.presence_sender_comp_id,
  [4] = omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.presence_last_msg_seq_num_processed,
  [5] = omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.presence_refresh_indicator,
  [6] = omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.presence_market_segment_id,
  [7] = omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.presence_product_complex,
  [8] = omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.presence_security_status,
  [9] = omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.presence_bid_size,
  [10] = omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.presence_offer_size,
  [11] = omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.presence_no_md_entries,
}

-- Dissect Fields: Depth Snapshot Message
bse_bseindia_emdisnapshot_fast_v600_3_750.depth_snapshot.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = bse_bseindia_emdisnapshot_fast_v600_3_750.msg_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, Increment, optional
  index, value = bse_bseindia_emdisnapshot_fast_v600_3_750.msg_seq_num.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Sender Comp ID: uInt32, Copy
  index, value = bse_bseindia_emdisnapshot_fast_v600_3_750.sender_comp_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:SenderCompID")

  -- Last Msg Seq Num Processed: uInt32, Increment, optional
  index, value = bse_bseindia_emdisnapshot_fast_v600_3_750.last_msg_seq_num_processed.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|22:LastMsgSeqNumProcessed")

  -- Refresh Indicator: uInt32, Copy, optional
  index, value = bse_bseindia_emdisnapshot_fast_v600_3_750.refresh_indicator.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "6:global|0:|16:RefreshIndicator")

  -- Market Segment ID: uInt32, Copy
  index, value = bse_bseindia_emdisnapshot_fast_v600_3_750.market_segment_id.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "6:global|0:|15:MarketSegmentID")

  -- Security ID: int64, Delta
  index, value = bse_bseindia_emdisnapshot_fast_v600_3_750.security_id.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|10:SecurityID")

  -- Security ID Source: string, Constant
  index, value = bse_bseindia_emdisnapshot_fast_v600_3_750.security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Product Complex: uInt32, Copy
  index, value = bse_bseindia_emdisnapshot_fast_v600_3_750.product_complex.dissect(buffer, index, packet, parent, presence_map[base + 5], state, "6:global|0:|14:ProductComplex")

  -- Security Status: uInt32, Default
  index, value = bse_bseindia_emdisnapshot_fast_v600_3_750.security_status.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Bid Size: uInt64, Copy
  index, value = bse_bseindia_emdisnapshot_fast_v600_3_750.bid_size.dissect(buffer, index, packet, parent, presence_map[base + 7], state, "6:global|0:|7:BidSize")

  -- Offer Size: uInt64, Copy
  index, value = bse_bseindia_emdisnapshot_fast_v600_3_750.offer_size.dissect(buffer, index, packet, parent, presence_map[base + 8], state, "6:global|0:|9:OfferSize")

  -- Last Update Time: timestamp, Delta
  index, value = bse_bseindia_emdisnapshot_fast_v600_3_750.last_update_time.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|14:LastUpdateTime")

  -- No MD Entries: uInt32, Default
  index, value = bse_bseindia_emdisnapshot_fast_v600_3_750.no_md_entries.dissect(buffer, index, packet, parent, presence_map[base + 9], state, nil)

  -- MD Ssh Grp: No MD Entries entries
  local count = value or 0
  for md_ssh_grp_index = 1, count do
    index = bse_bseindia_emdisnapshot_fast_v600_3_750.md_ssh_grp.dissect(buffer, index, packet, parent, presence_map, base, state, md_ssh_grp_index)
  end

  return index
end

-- Dissect: Depth Snapshot Message
bse_bseindia_emdisnapshot_fast_v600_3_750.depth_snapshot.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = bse_bseindia_emdisnapshot_fast_v600_3_750.depth_snapshot.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- EMD Packet Header Message
bse_bseindia_emdisnapshot_fast_v600_3_750.emd_packet_header = {}

bse_bseindia_emdisnapshot_fast_v600_3_750.emd_packet_header.node = omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.emd_packet_header

-- Dissect Fields: EMD Packet Header Message
bse_bseindia_emdisnapshot_fast_v600_3_750.emd_packet_header.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Partition ID: uInt32, sent
  index, value = bse_bseindia_emdisnapshot_fast_v600_3_750.partition_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp ID: uInt32, sent
  index, value = bse_bseindia_emdisnapshot_fast_v600_3_750.sender_comp_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Packet Seq Num: byteVector, sent
  index, value = bse_bseindia_emdisnapshot_fast_v600_3_750.packet_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: byteVector, sent
  index, value = bse_bseindia_emdisnapshot_fast_v600_3_750.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Performance Indicator: byteVector, sent
  index, value = bse_bseindia_emdisnapshot_fast_v600_3_750.performance_indicator.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: EMD Packet Header Message
bse_bseindia_emdisnapshot_fast_v600_3_750.emd_packet_header.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = bse_bseindia_emdisnapshot_fast_v600_3_750.emd_packet_header.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Bse BseIndia EmdiSnapshot Fast 600.3.750 Message Dispatch
bse_bseindia_emdisnapshot_fast_v600_3_750.templates = {
  [116] = bse_bseindia_emdisnapshot_fast_v600_3_750.emd_packet_header,
  [93] = bse_bseindia_emdisnapshot_fast_v600_3_750.depth_snapshot,
}

-- Bse BseIndia EmdiSnapshot Fast 600.3.750 Template Names
bse_bseindia_emdisnapshot_fast_v600_3_750.template_id = {}

-- Display: Template Id
bse_bseindia_emdisnapshot_fast_v600_3_750.template_id.display = function(value)
  if value == 116 then
    return "Template Id: EMDPacketHeader (116)"
  end
  if value == 93 then
    return "Template Id: DepthSnapshot (93)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Name: Template Id
bse_bseindia_emdisnapshot_fast_v600_3_750.template_id.name = function(value)
  if value == 116 then
    return "EMDPacketHeader"
  end
  if value == 93 then
    return "DepthSnapshot"
  end

  return "Unknown"
end

-- Bse BseIndia EmdiSnapshot Fast 600.3.750 Packet Dissector
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.dissector = function(buffer, packet, parent)
  packet.cols.protocol = "Bse BseIndia EmdiSnapshot Fast 600.3.750"
  local root = parent:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750, buffer(), "Bse BseIndia EmdiSnapshot Fast 600.3.750")
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

    local template = bse_bseindia_emdisnapshot_fast_v600_3_750.templates[template_id]
    local message_tree = nil

    if template ~= nil then
      message_tree = holder:add(template.node, buffer(start, 0))
    else
      message_tree = holder:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.message, buffer(start, 0))
      message_tree:set_text(bse_bseindia_emdisnapshot_fast_v600_3_750.template_id.name(template_id))
    end

    -- the presence map and the template id are the message's own framing
    local header = message_tree:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.message_header, buffer(mapped_start, offset - mapped_start))
    local named = nil
    if template ~= nil then
      named = template.presence
    end
    add_presence_map(header, buffer(mapped_start, mapped - mapped_start), omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.presence_map, omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.presence_stop, omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.presence_identified, omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.presence_unused, named)
    header:add(omi_bse_bseindia_emdisnapshot_fast_v600_3_750.fields.template_id, buffer(identified, offset - identified), template_id, bse_bseindia_emdisnapshot_fast_v600_3_750.template_id.display(template_id))

    if template == nil then
      message_tree:add_expert_info(PI_UNDECODED, PI_WARN, "This dissector reads: 116 (EMDPacketHeader), 93 (DepthSnapshot)")
      message_tree:set_len(offset - start)
      return
    end

    offset = template.dissect(buffer, offset, packet, message_tree, presence_map, 2, state, nil)
    messages = messages + 1

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
omi_bse_bseindia_emdisnapshot_fast_v600_3_750.init = function()
  stream_states = {}
end

-- Register Bse BseIndia EmdiSnapshot Fast 600.3.750 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_bse_bseindia_emdisnapshot_fast_v600_3_750)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: BSE Limited
--   Version: v600.3.750
--   Specification: BSE_market data_manual_v 1.4.5.pdf
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
