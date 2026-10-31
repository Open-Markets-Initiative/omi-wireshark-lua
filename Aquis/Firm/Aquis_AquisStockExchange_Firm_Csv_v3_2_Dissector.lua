-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Aquis AquisStockExchange Firm Csv 3.2 Protocol
local omi_aquis_aquisstockexchange_firm_csv_v3_2 = Proto("Omi.Aquis.AquisStockExchange.Firm.Csv.v3.2", "Aquis AquisStockExchange Firm Csv 3.2")

-- Protocol table
local aquis_aquisstockexchange_firm_csv_v3_2 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Aquis AquisStockExchange Firm Csv 3.2 Fields
omi_aquis_aquisstockexchange_firm_csv_v3_2.fields.firm = ProtoField.new("Firm", "aquis.aquisstockexchange.firm.csv.v3.2.firm", ftypes.STRING, nil, nil)
omi_aquis_aquisstockexchange_firm_csv_v3_2.fields.firm_id = ProtoField.new("firm_id", "aquis.aquisstockexchange.firm.csv.v3.2.firm_id", ftypes.UINT64, nil, nil, nil, "ID of firm")
omi_aquis_aquisstockexchange_firm_csv_v3_2.fields.firm_name = ProtoField.new("firm_name", "aquis.aquisstockexchange.firm.csv.v3.2.firm_name", ftypes.STRING, nil, nil, nil, "Name of firm")
omi_aquis_aquisstockexchange_firm_csv_v3_2.fields.firm_code = ProtoField.new("firm_code", "aquis.aquisstockexchange.firm.csv.v3.2.firm_code", ftypes.STRING, nil, nil, nil, "Firm BIC")
omi_aquis_aquisstockexchange_firm_csv_v3_2.fields.firm_type = ProtoField.new("firm_type", "aquis.aquisstockexchange.firm.csv.v3.2.firm_type", ftypes.STRING, nil, nil, nil, "Firm type")
omi_aquis_aquisstockexchange_firm_csv_v3_2.fields.mm_group = ProtoField.new("mm_group", "aquis.aquisstockexchange.firm.csv.v3.2.mm_group", ftypes.STRING, nil, nil, nil, "Market Maker group")
omi_aquis_aquisstockexchange_firm_csv_v3_2.fields.trader_id = ProtoField.new("trader_id", "aquis.aquisstockexchange.firm.csv.v3.2.trader_id", ftypes.UINT64, nil, nil, nil, "Numeric ID of Market Maker. Links to the trader_id field in the AQSE multicast market data stream")
omi_aquis_aquisstockexchange_firm_csv_v3_2.fields.trader_sender_id = ProtoField.new("trader_sender_id", "aquis.aquisstockexchange.firm.csv.v3.2.trader_sender_id", ftypes.STRING, nil, nil, nil, "CompId of Market Maker. Links to MDEntryOriginator (tag 282) in the AQSE FIX market data stream")
omi_aquis_aquisstockexchange_firm_csv_v3_2.fields.header_row = ProtoField.new("Header Row", "aquis.aquisstockexchange.firm.csv.v3.2.headerrow", ftypes.STRING, nil, nil, nil, "The line naming a file's columns, which states the layout its lines are read in")
omi_aquis_aquisstockexchange_firm_csv_v3_2.fields.line_outside_layout = ProtoField.new("Line Outside Layout", "aquis.aquisstockexchange.firm.csv.v3.2.lineoutsidelayout", ftypes.STRING, nil, nil, nil, "A line the layout does not read: no header row, and not the record")

-----------------------------------------------------------------------
-- Declare Dissection Experts
-----------------------------------------------------------------------

-- A line the layout does not read
omi_aquis_aquisstockexchange_firm_csv_v3_2.experts.line_outside_layout = ProtoExpert.new("aquis.aquisstockexchange.firm.csv.v3.2.lineoutsidelayout.expert", "Line Outside Layout", expert.group.MALFORMED, expert.severity.WARN)

-----------------------------------------------------------------------
-- Protocol Primitives
-----------------------------------------------------------------------

-- The readings a field calls with its own traits, and the line being dissected
aquis_aquisstockexchange_firm_csv_v3_2.lines = {}

-- A line split at a delimiter, from an offset: where each field starts, and its length
aquis_aquisstockexchange_firm_csv_v3_2.lines.split = function(offset, delimiter)
  local line = aquis_aquisstockexchange_firm_csv_v3_2.lines.current
  local starts = {}
  local lengths = {}
  local start = offset + 1
  while true do
    local at = string.find(line, delimiter, start, true)
    if at == nil then
      starts[#starts + 1] = start - 1
      lengths[#lengths + 1] = #line - start + 1
      return starts, lengths
    end
    starts[#starts + 1] = start - 1
    lengths[#lengths + 1] = at - start
    start = at + #delimiter
  end
end
-- A field's length from an offset to a delimiter, and the offset after it; to the line's end where
-- none follows, the offset then past the line
aquis_aquisstockexchange_firm_csv_v3_2.lines.scan = function(offset, delimiter)
  local line = aquis_aquisstockexchange_firm_csv_v3_2.lines.current
  local at = string.find(line, delimiter, offset + 1, true)
  if at == nil then
    return #line - offset, #line + 1
  end
  return at - 1 - offset, at - 1 + #delimiter
end
-- An unsigned integer's text, exactly, as a UInt64: a Lua number holds 15 digits exactly, and more are
-- held in two parts; nil and why where it is not one
aquis_aquisstockexchange_firm_csv_v3_2.lines.unsigned = function(text)
  if string.find(text, "^%d+$") == nil then
    return nil, "is not an unsigned integer"
  end
  local digits = string.match(text, "^0*(%d.*)$")
  if #digits <= 15 then
    return UInt64(tonumber(digits))
  end
  if #digits > 20 or (#digits == 20 and digits > "18446744073709551615") then
    return nil, "overflows its field"
  end
  return UInt64(tonumber(string.sub(digits, 1, #digits - 9))) * 1000000000 + tonumber(string.sub(digits, #digits - 8))
end

-----------------------------------------------------------------------
-- Protocol Fields
-----------------------------------------------------------------------

-- firm_id
aquis_aquisstockexchange_firm_csv_v3_2.firm_id = {}

-- firm_id ends at a tab
aquis_aquisstockexchange_firm_csv_v3_2.firm_id.delimiter = "\009"
-- firm_id is an unsigned integer

-- Display: firm_id
aquis_aquisstockexchange_firm_csv_v3_2.firm_id.display = function(value)
  return "firm_id: "..value
end

-- Dissect: firm_id
aquis_aquisstockexchange_firm_csv_v3_2.firm_id.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #aquis_aquisstockexchange_firm_csv_v3_2.lines.current then
    return nil, "the line stops before firm_id"
  end
  local index = nil
  if length == nil then
    length, index = aquis_aquisstockexchange_firm_csv_v3_2.lines.scan(offset, aquis_aquisstockexchange_firm_csv_v3_2.firm_id.delimiter)
  end
  local text = string.sub(aquis_aquisstockexchange_firm_csv_v3_2.lines.current, offset + 1, offset + length)
  local value, failure = aquis_aquisstockexchange_firm_csv_v3_2.lines.unsigned(text)
  if value == nil then
    return nil, "firm_id \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_aquis_aquisstockexchange_firm_csv_v3_2.fields.firm_id, buffer(offset, length), value, aquis_aquisstockexchange_firm_csv_v3_2.firm_id.display(tostring(value)))
  end
  return index
end

-- firm_name
aquis_aquisstockexchange_firm_csv_v3_2.firm_name = {}

-- firm_name ends at a tab
aquis_aquisstockexchange_firm_csv_v3_2.firm_name.delimiter = "\009"
-- firm_name is text in Ascii
aquis_aquisstockexchange_firm_csv_v3_2.firm_name.encoding = ENC_ASCII

-- Display: firm_name
aquis_aquisstockexchange_firm_csv_v3_2.firm_name.display = function(value)
  return "firm_name: "..value
end

-- Dissect: firm_name
aquis_aquisstockexchange_firm_csv_v3_2.firm_name.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #aquis_aquisstockexchange_firm_csv_v3_2.lines.current then
    return nil, "the line stops before firm_name"
  end
  local index = nil
  if length == nil then
    length, index = aquis_aquisstockexchange_firm_csv_v3_2.lines.scan(offset, aquis_aquisstockexchange_firm_csv_v3_2.firm_name.delimiter)
  end
  local text = string.sub(aquis_aquisstockexchange_firm_csv_v3_2.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_aquis_aquisstockexchange_firm_csv_v3_2.fields.firm_name, buffer(offset, length), text, aquis_aquisstockexchange_firm_csv_v3_2.firm_name.display(text))
  end
  return index
end

-- firm_code
aquis_aquisstockexchange_firm_csv_v3_2.firm_code = {}

-- firm_code ends at a tab
aquis_aquisstockexchange_firm_csv_v3_2.firm_code.delimiter = "\009"
-- firm_code is text in Ascii
aquis_aquisstockexchange_firm_csv_v3_2.firm_code.encoding = ENC_ASCII

-- Display: firm_code
aquis_aquisstockexchange_firm_csv_v3_2.firm_code.display = function(value)
  return "firm_code: "..value
end

-- Dissect: firm_code
aquis_aquisstockexchange_firm_csv_v3_2.firm_code.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #aquis_aquisstockexchange_firm_csv_v3_2.lines.current then
    return nil, "the line stops before firm_code"
  end
  local index = nil
  if length == nil then
    length, index = aquis_aquisstockexchange_firm_csv_v3_2.lines.scan(offset, aquis_aquisstockexchange_firm_csv_v3_2.firm_code.delimiter)
  end
  local text = string.sub(aquis_aquisstockexchange_firm_csv_v3_2.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_aquis_aquisstockexchange_firm_csv_v3_2.fields.firm_code, buffer(offset, length), text, aquis_aquisstockexchange_firm_csv_v3_2.firm_code.display(text))
  end
  return index
end

-- firm_type
aquis_aquisstockexchange_firm_csv_v3_2.firm_type = {}

-- firm_type ends at a tab
aquis_aquisstockexchange_firm_csv_v3_2.firm_type.delimiter = "\009"
-- firm_type is text in Ascii
aquis_aquisstockexchange_firm_csv_v3_2.firm_type.encoding = ENC_ASCII

-- Display: firm_type
aquis_aquisstockexchange_firm_csv_v3_2.firm_type.labels = {
  ["BROK"] = "firm_type: Broker (BROK)",
  ["MKMK"] = "firm_type: Market Maker (MKMK)",
}

aquis_aquisstockexchange_firm_csv_v3_2.firm_type.display = function(value)
  return aquis_aquisstockexchange_firm_csv_v3_2.firm_type.labels[value] or "firm_type: Unknown("..value..")"
end

-- Dissect: firm_type
aquis_aquisstockexchange_firm_csv_v3_2.firm_type.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #aquis_aquisstockexchange_firm_csv_v3_2.lines.current then
    return nil, "the line stops before firm_type"
  end
  local index = nil
  if length == nil then
    length, index = aquis_aquisstockexchange_firm_csv_v3_2.lines.scan(offset, aquis_aquisstockexchange_firm_csv_v3_2.firm_type.delimiter)
  end
  local text = string.sub(aquis_aquisstockexchange_firm_csv_v3_2.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_aquis_aquisstockexchange_firm_csv_v3_2.fields.firm_type, buffer(offset, length), text, aquis_aquisstockexchange_firm_csv_v3_2.firm_type.display(text))
  end
  return index
end

-- mm_group
aquis_aquisstockexchange_firm_csv_v3_2.mm_group = {}

-- mm_group ends at a tab
aquis_aquisstockexchange_firm_csv_v3_2.mm_group.delimiter = "\009"
-- mm_group is text in Ascii
aquis_aquisstockexchange_firm_csv_v3_2.mm_group.encoding = ENC_ASCII

-- Display: mm_group
aquis_aquisstockexchange_firm_csv_v3_2.mm_group.display = function(value)
  return "mm_group: "..value
end

-- Dissect: mm_group
aquis_aquisstockexchange_firm_csv_v3_2.mm_group.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #aquis_aquisstockexchange_firm_csv_v3_2.lines.current then
    return nil, "the line stops before mm_group"
  end
  local index = nil
  if length == nil then
    length, index = aquis_aquisstockexchange_firm_csv_v3_2.lines.scan(offset, aquis_aquisstockexchange_firm_csv_v3_2.mm_group.delimiter)
  end
  local text = string.sub(aquis_aquisstockexchange_firm_csv_v3_2.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_aquis_aquisstockexchange_firm_csv_v3_2.fields.mm_group, buffer(offset, length), text, aquis_aquisstockexchange_firm_csv_v3_2.mm_group.display(text))
  end
  return index
end

-- trader_id
aquis_aquisstockexchange_firm_csv_v3_2.trader_id = {}

-- trader_id ends at a tab
aquis_aquisstockexchange_firm_csv_v3_2.trader_id.delimiter = "\009"
-- trader_id is an unsigned integer

-- Display: trader_id
aquis_aquisstockexchange_firm_csv_v3_2.trader_id.display = function(value)
  return "trader_id: "..value
end

-- Dissect: trader_id
aquis_aquisstockexchange_firm_csv_v3_2.trader_id.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #aquis_aquisstockexchange_firm_csv_v3_2.lines.current then
    return nil, "the line stops before trader_id"
  end
  local index = nil
  if length == nil then
    length, index = aquis_aquisstockexchange_firm_csv_v3_2.lines.scan(offset, aquis_aquisstockexchange_firm_csv_v3_2.trader_id.delimiter)
  end
  local text = string.sub(aquis_aquisstockexchange_firm_csv_v3_2.lines.current, offset + 1, offset + length)
  local value, failure = aquis_aquisstockexchange_firm_csv_v3_2.lines.unsigned(text)
  if value == nil then
    return nil, "trader_id \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_aquis_aquisstockexchange_firm_csv_v3_2.fields.trader_id, buffer(offset, length), value, aquis_aquisstockexchange_firm_csv_v3_2.trader_id.display(tostring(value)))
  end
  return index
end

-- trader_sender_id
aquis_aquisstockexchange_firm_csv_v3_2.trader_sender_id = {}

-- trader_sender_id ends at a tab
aquis_aquisstockexchange_firm_csv_v3_2.trader_sender_id.delimiter = "\009"
-- trader_sender_id is text in Ascii
aquis_aquisstockexchange_firm_csv_v3_2.trader_sender_id.encoding = ENC_ASCII

-- Display: trader_sender_id
aquis_aquisstockexchange_firm_csv_v3_2.trader_sender_id.display = function(value)
  return "trader_sender_id: "..value
end

-- Dissect: trader_sender_id
aquis_aquisstockexchange_firm_csv_v3_2.trader_sender_id.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #aquis_aquisstockexchange_firm_csv_v3_2.lines.current then
    return nil, "the line stops before trader_sender_id"
  end
  local index = nil
  if length == nil then
    length, index = aquis_aquisstockexchange_firm_csv_v3_2.lines.scan(offset, aquis_aquisstockexchange_firm_csv_v3_2.trader_sender_id.delimiter)
  end
  local text = string.sub(aquis_aquisstockexchange_firm_csv_v3_2.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_aquis_aquisstockexchange_firm_csv_v3_2.fields.trader_sender_id, buffer(offset, length), text, aquis_aquisstockexchange_firm_csv_v3_2.trader_sender_id.display(text))
  end
  return index
end


-----------------------------------------------------------------------
-- Protocol Records
-----------------------------------------------------------------------

-- Firm
aquis_aquisstockexchange_firm_csv_v3_2.firm = {}

-- The delimiter every field of Firm ends at, which its line is split at
aquis_aquisstockexchange_firm_csv_v3_2.firm.delimiter = "\009"

-- Dissect Fields: Firm
-- Split: every field of Firm ends at a tab and none is quoted, so its line is split once and each field handed its range
aquis_aquisstockexchange_firm_csv_v3_2.firm.fields = function(buffer, offset, packet, parent)
  local starts, lengths = aquis_aquisstockexchange_firm_csv_v3_2.lines.split(offset, aquis_aquisstockexchange_firm_csv_v3_2.firm.delimiter)
  if #starts > 7 then
    return nil, "Firm: the line has " .. #starts .. " fields, its layout 7"
  end
  local index = nil
  local failure = nil

  -- firm_id: field 1
  index, failure = aquis_aquisstockexchange_firm_csv_v3_2.firm_id.dissect(buffer, starts[1], packet, parent, lengths[1])
  if failure ~= nil then
    return nil, failure
  end

  -- firm_name: field 2
  index, failure = aquis_aquisstockexchange_firm_csv_v3_2.firm_name.dissect(buffer, starts[2], packet, parent, lengths[2])
  if failure ~= nil then
    return nil, failure
  end

  -- firm_code: field 3
  index, failure = aquis_aquisstockexchange_firm_csv_v3_2.firm_code.dissect(buffer, starts[3], packet, parent, lengths[3])
  if failure ~= nil then
    return nil, failure
  end

  -- firm_type: field 4
  index, failure = aquis_aquisstockexchange_firm_csv_v3_2.firm_type.dissect(buffer, starts[4], packet, parent, lengths[4])
  if failure ~= nil then
    return nil, failure
  end

  -- mm_group: field 5
  index, failure = aquis_aquisstockexchange_firm_csv_v3_2.mm_group.dissect(buffer, starts[5], packet, parent, lengths[5])
  if failure ~= nil then
    return nil, failure
  end

  -- trader_id: field 6
  index, failure = aquis_aquisstockexchange_firm_csv_v3_2.trader_id.dissect(buffer, starts[6], packet, parent, lengths[6])
  if failure ~= nil then
    return nil, failure
  end

  -- trader_sender_id: field 7
  index, failure = aquis_aquisstockexchange_firm_csv_v3_2.trader_sender_id.dissect(buffer, starts[7], packet, parent, lengths[7])
  if failure ~= nil then
    return nil, failure
  end

  return #aquis_aquisstockexchange_firm_csv_v3_2.lines.current + 1
end

-- Dissect: Firm
aquis_aquisstockexchange_firm_csv_v3_2.firm.dissect = function(buffer, offset, packet, parent)
  local element = parent:add(omi_aquis_aquisstockexchange_firm_csv_v3_2.fields.firm, buffer(), "Firm", "Firm")
  return aquis_aquisstockexchange_firm_csv_v3_2.firm.fields(buffer, offset, packet, element)
end


-----------------------------------------------------------------------
-- Protocol Lines
-----------------------------------------------------------------------

-- The text between a line's fields, its Packet rule's Delimiter: a tab
aquis_aquisstockexchange_firm_csv_v3_2.delimiter = "\009"

-- The character ending a line, its Packet rule's Terminator: 10
aquis_aquisstockexchange_firm_csv_v3_2.terminator = "\010"

-- The layouts a file states in its header, in model order: the header lines each states
aquis_aquisstockexchange_firm_csv_v3_2.variants = {
  {
    name = "Firm.v3.2",
    headers = { "firm_id\009firm_name\009firm_code\009firm_type\009mm_group\009trader_id\009trader_sender_id" },
  },
}

-- The layout the file's lines are read by: the one its file handler found, the first where none did
aquis_aquisstockexchange_firm_csv_v3_2.variant = function()
  if aquis_aquisstockexchange_firm_csv_v3_2.file == nil or aquis_aquisstockexchange_firm_csv_v3_2.file.variant == nil then
    return 1
  end
  return aquis_aquisstockexchange_firm_csv_v3_2.file.variant
end

-- A header line: its layout, and its columns
aquis_aquisstockexchange_firm_csv_v3_2.header = function(buffer, packet, parent, variant)
  packet.cols.info = "Header Row"
  local name = aquis_aquisstockexchange_firm_csv_v3_2.variants[variant].name
  local item = parent:add(omi_aquis_aquisstockexchange_firm_csv_v3_2.fields.header_row, buffer(), name, "Header Row: " .. name)
  local starts, lengths = aquis_aquisstockexchange_firm_csv_v3_2.lines.split(0, aquis_aquisstockexchange_firm_csv_v3_2.delimiter)
  for index = 1, #starts do
    local range = buffer(starts[index], lengths[index])
    item:add(range, "Column " .. index .. ": " .. range:string(ENC_ASCII))
  end
end

-- A line the layout does not read, and why: its fields, as they are
aquis_aquisstockexchange_firm_csv_v3_2.outside = function(buffer, packet, parent, reason)
  packet.cols.info = "Line Outside Layout"
  local item = parent:add(omi_aquis_aquisstockexchange_firm_csv_v3_2.fields.line_outside_layout, buffer(), reason, "Line Outside Layout: " .. reason)
  item:add_proto_expert_info(omi_aquis_aquisstockexchange_firm_csv_v3_2.experts.line_outside_layout, reason)
  local starts, lengths = aquis_aquisstockexchange_firm_csv_v3_2.lines.split(0, aquis_aquisstockexchange_firm_csv_v3_2.delimiter)
  for index = 1, #starts do
    local range = buffer(starts[index], lengths[index])
    item:add(range, "Field " .. index .. ": " .. range:string(ENC_ASCII))
  end
end

-- Is a line one of the layout's header lines?
aquis_aquisstockexchange_firm_csv_v3_2.headed = function(line, variant)
  for index, header in ipairs(aquis_aquisstockexchange_firm_csv_v3_2.variants[variant].headers) do
    if line == header then
      return true
    end
  end
  return false
end

-- Does a line read as the layout's: a header line, or Firm?
aquis_aquisstockexchange_firm_csv_v3_2.reads = function(buffer, packet, line)
  aquis_aquisstockexchange_firm_csv_v3_2.lines.current = line
  local variant = aquis_aquisstockexchange_firm_csv_v3_2.variant()
  if aquis_aquisstockexchange_firm_csv_v3_2.headed(line, variant) then
    return true
  end
  local index, failure = aquis_aquisstockexchange_firm_csv_v3_2.firm.fields(buffer, 0, packet, nil)
  return failure == nil
end

-- Dissect a line: a header line, or Firm, or a line outside the layout
aquis_aquisstockexchange_firm_csv_v3_2.line = function(buffer, packet, parent)
  local line = buffer:raw()
  aquis_aquisstockexchange_firm_csv_v3_2.lines.current = line
  local variant = aquis_aquisstockexchange_firm_csv_v3_2.variant()
  if aquis_aquisstockexchange_firm_csv_v3_2.headed(line, variant) then
    return aquis_aquisstockexchange_firm_csv_v3_2.header(buffer, packet, parent, variant)
  end

  -- read first with no tree, so a line the layout does not read is shown whole
  local index, failure = aquis_aquisstockexchange_firm_csv_v3_2.firm.fields(buffer, 0, packet, nil)
  if failure ~= nil then
    return aquis_aquisstockexchange_firm_csv_v3_2.outside(buffer, packet, parent, failure)
  end

  packet.cols.info = "Firm"
  aquis_aquisstockexchange_firm_csv_v3_2.firm.dissect(buffer, 0, packet, parent)
end
-- Dissect Aquis AquisStockExchange Firm Csv 3.2
function omi_aquis_aquisstockexchange_firm_csv_v3_2.dissector(buffer, packet, parent)
  packet.cols.protocol = omi_aquis_aquisstockexchange_firm_csv_v3_2.name

  local protocol = parent:add(omi_aquis_aquisstockexchange_firm_csv_v3_2, buffer(), omi_aquis_aquisstockexchange_firm_csv_v3_2.description, "(" .. buffer:len() .. " Bytes)")
  return aquis_aquisstockexchange_firm_csv_v3_2.line(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- File Lines
-----------------------------------------------------------------------

-- A file's line, the one at an offset or with none the next, to the terminator: its offset, its text,
-- and its frame's time. The file is read a block at a time, the block kept in the capture's private
-- table; a line read again reads a block of its own
aquis_aquisstockexchange_firm_csv_v3_2.read = function(file, capture, offset)
  local block = capture.private_table
  if offset ~= nil then
    file:seek("set", offset)
    block = { data = "", at = 1, offset = offset }
  elseif block.data == nil then
    block.data = ""
    block.at = 1
    block.offset = 0
  end
  local start = nil
  local line = nil
  while line == nil do
    local ends = string.find(block.data, aquis_aquisstockexchange_firm_csv_v3_2.terminator, block.at, true)
    if ends ~= nil then
      start = block.offset + block.at - 1
      line = string.sub(block.data, block.at, ends - 1)
      block.at = ends + #aquis_aquisstockexchange_firm_csv_v3_2.terminator
    else
      local more = file:read(65536)
      if more == nil or #more == 0 then
        if block.at > #block.data then
          return nil
        end
        start = block.offset + block.at - 1
        line = string.sub(block.data, block.at)
        block.at = #block.data + 1
      else
        block.offset = block.offset + block.at - 1
        block.data = string.sub(block.data, block.at) .. more
        block.at = 1
      end
    end
  end
  -- the record states no time a line is split to, so its frame has none
  return start, line
end

-----------------------------------------------------------------------
-- File Handler
-----------------------------------------------------------------------

-- File handler state
aquis_aquisstockexchange_firm_csv_v3_2.file = {}

-- Exported pdu tags each frame starts with: the dissector it is for, then the end of the tags
aquis_aquisstockexchange_firm_csv_v3_2.file.prefix = "\000\012\000\044omi.aquis.aquisstockexchange.firm.csv.v3.2\000\000\000\000\000\000"

-- The text a file of each layout starts with
aquis_aquisstockexchange_firm_csv_v3_2.file.signatures = {
  "firm_id\009firm_name\009firm_code\009firm_type\009mm_group\009trader_id\009trader_sender_id\010",
}

-- The layout a file's first bytes are the signature of, or nil for a file of no layout
aquis_aquisstockexchange_firm_csv_v3_2.file.layout = function(file)
  local first = file:read(74)
  if first == nil then
    return nil
  end
  for index, signature in ipairs(aquis_aquisstockexchange_firm_csv_v3_2.file.signatures) do
    if first:sub(1, #signature) == signature then
      return index
    end
  end
  return nil
end

-- A record read into a frame, the one at an offset or with none the next: its offset, nil at the end of the file
aquis_aquisstockexchange_firm_csv_v3_2.file.frame = function(file, capture, frame, offset)
  local at, data, seconds, nanoseconds = aquis_aquisstockexchange_firm_csv_v3_2.read(file, capture, offset)
  if at == nil then
    return nil
  end
  data = aquis_aquisstockexchange_firm_csv_v3_2.file.prefix .. data
  frame.rec_type = wtap_rec_types.PACKET
  frame.captured_length = #data
  frame.original_length = #data
  frame.flags = wtap_presence_flags.CAP_LEN
  if seconds ~= nil then
    frame.time = NSTime(seconds, nanoseconds)
    frame.flags = wtap_presence_flags.TS + wtap_presence_flags.CAP_LEN
  end
  frame.data = data
  return at
end

-- Aquis AquisStockExchange Firm Csv 3.2 (Omi) file handler: a magic number reader, its signatures the magic
aquis_aquisstockexchange_firm_csv_v3_2.file.handler = FileHandler.new("Aquis AquisStockExchange Firm Csv 3.2 (Omi)", "omi_aquis_aquisstockexchange_firm_csv_v3_2", "Aquis AquisStockExchange Firm Csv 3.2 (Omi) file", "rm")

-- A file of a layout is this protocol's; read from its start, so its first line is the first frame
aquis_aquisstockexchange_firm_csv_v3_2.file.handler.read_open = function(file, capture)
  local layout = aquis_aquisstockexchange_firm_csv_v3_2.file.layout(file)
  if layout == nil then
    return false
  end
  aquis_aquisstockexchange_firm_csv_v3_2.file.variant = layout
  file:seek("set", 0)
  capture.private_table = {}
  capture.encap = wtap_encaps.WIRESHARK_UPPER_PDU
  capture.time_precision = wtap_tsprecs.NSEC
  return true
end

-- The next record, returning its offset in the file
aquis_aquisstockexchange_firm_csv_v3_2.file.handler.read = function(file, capture, frame)
  local offset = aquis_aquisstockexchange_firm_csv_v3_2.file.frame(file, capture, frame, nil)
  if offset == nil then
    return false
  end
  return offset
end

-- The record at an offset read before
aquis_aquisstockexchange_firm_csv_v3_2.file.handler.seek_read = function(file, capture, frame, offset)
  return aquis_aquisstockexchange_firm_csv_v3_2.file.frame(file, capture, frame, offset) ~= nil
end

-- Nothing is held open beyond the file Wireshark closes
aquis_aquisstockexchange_firm_csv_v3_2.file.handler.read_close = function(file, capture)
  return true
end

aquis_aquisstockexchange_firm_csv_v3_2.file.handler.seq_read_close = function(file, capture)
  return true
end

-- Register Aquis AquisStockExchange Firm Csv 3.2 (Omi) files
register_filehandler(aquis_aquisstockexchange_firm_csv_v3_2.file.handler)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Aquis Exchange
--   Version: 3.2
--   Date: Tuesday, July 1, 2025
--   Specification: Aquis Stock Exchange Reference Data Specification v3.2.pdf
--
-- Script:
--   Generator: 0.1.0.0
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
