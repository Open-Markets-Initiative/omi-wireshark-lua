-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- A2X A2XEquities SecurityComma Csv 1.2 Protocol
local omi_a2x_a2xequities_securitycomma_csv_v1_2 = Proto("Omi.A2X.A2XEquities.SecurityComma.Csv.v1.2", "A2X A2XEquities SecurityComma Csv 1.2")

-- Protocol table
local a2x_a2xequities_securitycomma_csv_v1_2 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- A2X A2XEquities SecurityComma Csv 1.2 Fields
omi_a2x_a2xequities_securitycomma_csv_v1_2.fields.record_security = ProtoField.new("Security", "a2x.a2xequities.securitycomma.csv.v1.2.record.security", ftypes.STRING, nil, nil)
omi_a2x_a2xequities_securitycomma_csv_v1_2.fields.id = ProtoField.new("id", "a2x.a2xequities.securitycomma.csv.v1.2.id", ftypes.UINT64, nil, nil, nil, "A2X Security ID")
omi_a2x_a2xequities_securitycomma_csv_v1_2.fields.description = ProtoField.new("description", "a2x.a2xequities.securitycomma.csv.v1.2.description", ftypes.STRING, nil, nil, nil, "Security description or name")
omi_a2x_a2xequities_securitycomma_csv_v1_2.fields.primric = ProtoField.new("primric", "a2x.a2xequities.securitycomma.csv.v1.2.primric", ftypes.STRING, nil, nil, nil, "Reuters Instrument Code for security on the primary venue")
omi_a2x_a2xequities_securitycomma_csv_v1_2.fields.primbbg = ProtoField.new("primBbg", "a2x.a2xequities.securitycomma.csv.v1.2.primbbg", ftypes.STRING, nil, nil, nil, "Bloomberg Global ID for security on the primary venue")
omi_a2x_a2xequities_securitycomma_csv_v1_2.fields.isin = ProtoField.new("isin", "a2x.a2xequities.securitycomma.csv.v1.2.isin", ftypes.STRING, nil, nil, nil, "International Securities Identification Number")
omi_a2x_a2xequities_securitycomma_csv_v1_2.fields.code = ProtoField.new("code", "a2x.a2xequities.securitycomma.csv.v1.2.code", ftypes.STRING, nil, nil, nil, "Currency Code")
omi_a2x_a2xequities_securitycomma_csv_v1_2.fields.mic = ProtoField.new("mic", "a2x.a2xequities.securitycomma.csv.v1.2.mic", ftypes.STRING, nil, nil, nil, "Market Instrument Code of primary venue")
omi_a2x_a2xequities_securitycomma_csv_v1_2.fields.aqxric = ProtoField.new("aqxRic", "a2x.a2xequities.securitycomma.csv.v1.2.aqxric", ftypes.STRING, nil, nil, nil, "Reuters Instrument Code for security on A2X")
omi_a2x_a2xequities_securitycomma_csv_v1_2.fields.aqxbbg = ProtoField.new("aqxBbg", "a2x.a2xequities.securitycomma.csv.v1.2.aqxbbg", ftypes.STRING, nil, nil, nil, "Bloomberg Global ID for security on A2X")
omi_a2x_a2xequities_securitycomma_csv_v1_2.fields.umtf = ProtoField.new("umtf", "a2x.a2xequities.securitycomma.csv.v1.2.umtf", ftypes.STRING, nil, nil, nil, "Uniform Symbology")
omi_a2x_a2xequities_securitycomma_csv_v1_2.fields.tick_name = ProtoField.new("tick_name", "a2x.a2xequities.securitycomma.csv.v1.2.tick_name", ftypes.STRING, nil, nil, nil, "Tick name to tie back to the tick definition file")
omi_a2x_a2xequities_securitycomma_csv_v1_2.fields.rls = ProtoField.new("rls", "a2x.a2xequities.securitycomma.csv.v1.2.rls", ftypes.UINT64, nil, nil, nil, "Round Lot Size")
omi_a2x_a2xequities_securitycomma_csv_v1_2.fields.closing_enabled = ProtoField.new("closing_enabled", "a2x.a2xequities.securitycomma.csv.v1.2.closing_enabled", ftypes.STRING, nil, nil, nil, "Market at Close (MaC) auction enabled.")
omi_a2x_a2xequities_securitycomma_csv_v1_2.fields.test_stock = ProtoField.new("test_stock", "a2x.a2xequities.securitycomma.csv.v1.2.test_stock", ftypes.STRING, nil, nil, nil, "Whether a security is intended for system testing purposes.")
omi_a2x_a2xequities_securitycomma_csv_v1_2.fields.header_row = ProtoField.new("Header Row", "a2x.a2xequities.securitycomma.csv.v1.2.headerrow", ftypes.STRING, nil, nil, nil, "The line naming a file's columns, which states the layout its lines are read in")
omi_a2x_a2xequities_securitycomma_csv_v1_2.fields.line_outside_layout = ProtoField.new("Line Outside Layout", "a2x.a2xequities.securitycomma.csv.v1.2.lineoutsidelayout", ftypes.STRING, nil, nil, nil, "A line the layout does not read: no header row, and not the record")

-----------------------------------------------------------------------
-- Declare Dissection Experts
-----------------------------------------------------------------------

-- A line the layout does not read
omi_a2x_a2xequities_securitycomma_csv_v1_2.experts.line_outside_layout = ProtoExpert.new("a2x.a2xequities.securitycomma.csv.v1.2.lineoutsidelayout.expert", "Line Outside Layout", expert.group.MALFORMED, expert.severity.WARN)

-----------------------------------------------------------------------
-- Protocol Primitives
-----------------------------------------------------------------------

-- The readings a field calls with its own traits, and the line being dissected
a2x_a2xequities_securitycomma_csv_v1_2.lines = {}

-- A line split at a delimiter, from an offset: where each field starts, and its length
a2x_a2xequities_securitycomma_csv_v1_2.lines.split = function(offset, delimiter)
  local line = a2x_a2xequities_securitycomma_csv_v1_2.lines.current
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
a2x_a2xequities_securitycomma_csv_v1_2.lines.scan = function(offset, delimiter)
  local line = a2x_a2xequities_securitycomma_csv_v1_2.lines.current
  local at = string.find(line, delimiter, offset + 1, true)
  if at == nil then
    return #line - offset, #line + 1
  end
  return at - 1 - offset, at - 1 + #delimiter
end
-- An unsigned integer's text, exactly, as a UInt64: a Lua number holds 15 digits exactly, and more are
-- held in two parts; nil and why where it is not one
a2x_a2xequities_securitycomma_csv_v1_2.lines.unsigned = function(text)
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

-- id
a2x_a2xequities_securitycomma_csv_v1_2.id = {}

-- id ends at ","
a2x_a2xequities_securitycomma_csv_v1_2.id.delimiter = ","
-- id is an unsigned integer

-- Display: id
a2x_a2xequities_securitycomma_csv_v1_2.id.display = function(value)
  return "id: "..value
end

-- Dissect: id
a2x_a2xequities_securitycomma_csv_v1_2.id.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #a2x_a2xequities_securitycomma_csv_v1_2.lines.current then
    return nil, "the line stops before id"
  end
  local index = nil
  if length == nil then
    length, index = a2x_a2xequities_securitycomma_csv_v1_2.lines.scan(offset, a2x_a2xequities_securitycomma_csv_v1_2.id.delimiter)
  end
  local text = string.sub(a2x_a2xequities_securitycomma_csv_v1_2.lines.current, offset + 1, offset + length)
  local value, failure = a2x_a2xequities_securitycomma_csv_v1_2.lines.unsigned(text)
  if value == nil then
    return nil, "id \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_a2x_a2xequities_securitycomma_csv_v1_2.fields.id, buffer(offset, length), value, a2x_a2xequities_securitycomma_csv_v1_2.id.display(tostring(value)))
  end
  return index
end

-- description
a2x_a2xequities_securitycomma_csv_v1_2.description = {}

-- description ends at ","
a2x_a2xequities_securitycomma_csv_v1_2.description.delimiter = ","
-- description is text in Ascii
a2x_a2xequities_securitycomma_csv_v1_2.description.encoding = ENC_ASCII

-- Display: description
a2x_a2xequities_securitycomma_csv_v1_2.description.display = function(value)
  return "description: "..value
end

-- Dissect: description
a2x_a2xequities_securitycomma_csv_v1_2.description.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #a2x_a2xequities_securitycomma_csv_v1_2.lines.current then
    return nil, "the line stops before description"
  end
  local index = nil
  if length == nil then
    length, index = a2x_a2xequities_securitycomma_csv_v1_2.lines.scan(offset, a2x_a2xequities_securitycomma_csv_v1_2.description.delimiter)
  end
  local text = string.sub(a2x_a2xequities_securitycomma_csv_v1_2.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_a2x_a2xequities_securitycomma_csv_v1_2.fields.description, buffer(offset, length), text, a2x_a2xequities_securitycomma_csv_v1_2.description.display(text))
  end
  return index
end

-- primric
a2x_a2xequities_securitycomma_csv_v1_2.primric = {}

-- primric ends at ","
a2x_a2xequities_securitycomma_csv_v1_2.primric.delimiter = ","
-- primric is text in Ascii
a2x_a2xequities_securitycomma_csv_v1_2.primric.encoding = ENC_ASCII

-- Display: primric
a2x_a2xequities_securitycomma_csv_v1_2.primric.display = function(value)
  return "primric: "..value
end

-- Dissect: primric
a2x_a2xequities_securitycomma_csv_v1_2.primric.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #a2x_a2xequities_securitycomma_csv_v1_2.lines.current then
    return nil, "the line stops before primric"
  end
  local index = nil
  if length == nil then
    length, index = a2x_a2xequities_securitycomma_csv_v1_2.lines.scan(offset, a2x_a2xequities_securitycomma_csv_v1_2.primric.delimiter)
  end
  local text = string.sub(a2x_a2xequities_securitycomma_csv_v1_2.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_a2x_a2xequities_securitycomma_csv_v1_2.fields.primric, buffer(offset, length), text, a2x_a2xequities_securitycomma_csv_v1_2.primric.display(text))
  end
  return index
end

-- primBbg
a2x_a2xequities_securitycomma_csv_v1_2.primbbg = {}

-- primBbg ends at ","
a2x_a2xequities_securitycomma_csv_v1_2.primbbg.delimiter = ","
-- primBbg is text in Ascii
a2x_a2xequities_securitycomma_csv_v1_2.primbbg.encoding = ENC_ASCII

-- Display: primBbg
a2x_a2xequities_securitycomma_csv_v1_2.primbbg.display = function(value)
  return "primBbg: "..value
end

-- Dissect: primBbg
a2x_a2xequities_securitycomma_csv_v1_2.primbbg.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #a2x_a2xequities_securitycomma_csv_v1_2.lines.current then
    return nil, "the line stops before primBbg"
  end
  local index = nil
  if length == nil then
    length, index = a2x_a2xequities_securitycomma_csv_v1_2.lines.scan(offset, a2x_a2xequities_securitycomma_csv_v1_2.primbbg.delimiter)
  end
  local text = string.sub(a2x_a2xequities_securitycomma_csv_v1_2.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_a2x_a2xequities_securitycomma_csv_v1_2.fields.primbbg, buffer(offset, length), text, a2x_a2xequities_securitycomma_csv_v1_2.primbbg.display(text))
  end
  return index
end

-- isin
a2x_a2xequities_securitycomma_csv_v1_2.isin = {}

-- isin ends at ","
a2x_a2xequities_securitycomma_csv_v1_2.isin.delimiter = ","
-- isin is text in Ascii
a2x_a2xequities_securitycomma_csv_v1_2.isin.encoding = ENC_ASCII

-- Display: isin
a2x_a2xequities_securitycomma_csv_v1_2.isin.display = function(value)
  return "isin: "..value
end

-- Dissect: isin
a2x_a2xequities_securitycomma_csv_v1_2.isin.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #a2x_a2xequities_securitycomma_csv_v1_2.lines.current then
    return nil, "the line stops before isin"
  end
  local index = nil
  if length == nil then
    length, index = a2x_a2xequities_securitycomma_csv_v1_2.lines.scan(offset, a2x_a2xequities_securitycomma_csv_v1_2.isin.delimiter)
  end
  local text = string.sub(a2x_a2xequities_securitycomma_csv_v1_2.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_a2x_a2xequities_securitycomma_csv_v1_2.fields.isin, buffer(offset, length), text, a2x_a2xequities_securitycomma_csv_v1_2.isin.display(text))
  end
  return index
end

-- code
a2x_a2xequities_securitycomma_csv_v1_2.code = {}

-- code ends at ","
a2x_a2xequities_securitycomma_csv_v1_2.code.delimiter = ","
-- code is text in Ascii
a2x_a2xequities_securitycomma_csv_v1_2.code.encoding = ENC_ASCII

-- Display: code
a2x_a2xequities_securitycomma_csv_v1_2.code.display = function(value)
  return "code: "..value
end

-- Dissect: code
a2x_a2xequities_securitycomma_csv_v1_2.code.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #a2x_a2xequities_securitycomma_csv_v1_2.lines.current then
    return nil, "the line stops before code"
  end
  local index = nil
  if length == nil then
    length, index = a2x_a2xequities_securitycomma_csv_v1_2.lines.scan(offset, a2x_a2xequities_securitycomma_csv_v1_2.code.delimiter)
  end
  local text = string.sub(a2x_a2xequities_securitycomma_csv_v1_2.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_a2x_a2xequities_securitycomma_csv_v1_2.fields.code, buffer(offset, length), text, a2x_a2xequities_securitycomma_csv_v1_2.code.display(text))
  end
  return index
end

-- mic
a2x_a2xequities_securitycomma_csv_v1_2.mic = {}

-- mic ends at ","
a2x_a2xequities_securitycomma_csv_v1_2.mic.delimiter = ","
-- mic is text in Ascii
a2x_a2xequities_securitycomma_csv_v1_2.mic.encoding = ENC_ASCII

-- Display: mic
a2x_a2xequities_securitycomma_csv_v1_2.mic.display = function(value)
  return "mic: "..value
end

-- Dissect: mic
a2x_a2xequities_securitycomma_csv_v1_2.mic.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #a2x_a2xequities_securitycomma_csv_v1_2.lines.current then
    return nil, "the line stops before mic"
  end
  local index = nil
  if length == nil then
    length, index = a2x_a2xequities_securitycomma_csv_v1_2.lines.scan(offset, a2x_a2xequities_securitycomma_csv_v1_2.mic.delimiter)
  end
  local text = string.sub(a2x_a2xequities_securitycomma_csv_v1_2.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_a2x_a2xequities_securitycomma_csv_v1_2.fields.mic, buffer(offset, length), text, a2x_a2xequities_securitycomma_csv_v1_2.mic.display(text))
  end
  return index
end

-- aqxRic
a2x_a2xequities_securitycomma_csv_v1_2.aqxric = {}

-- aqxRic ends at ","
a2x_a2xequities_securitycomma_csv_v1_2.aqxric.delimiter = ","
-- aqxRic is text in Ascii
a2x_a2xequities_securitycomma_csv_v1_2.aqxric.encoding = ENC_ASCII

-- Display: aqxRic
a2x_a2xequities_securitycomma_csv_v1_2.aqxric.display = function(value)
  return "aqxRic: "..value
end

-- Dissect: aqxRic
a2x_a2xequities_securitycomma_csv_v1_2.aqxric.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #a2x_a2xequities_securitycomma_csv_v1_2.lines.current then
    return nil, "the line stops before aqxRic"
  end
  local index = nil
  if length == nil then
    length, index = a2x_a2xequities_securitycomma_csv_v1_2.lines.scan(offset, a2x_a2xequities_securitycomma_csv_v1_2.aqxric.delimiter)
  end
  local text = string.sub(a2x_a2xequities_securitycomma_csv_v1_2.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_a2x_a2xequities_securitycomma_csv_v1_2.fields.aqxric, buffer(offset, length), text, a2x_a2xequities_securitycomma_csv_v1_2.aqxric.display(text))
  end
  return index
end

-- aqxBbg
a2x_a2xequities_securitycomma_csv_v1_2.aqxbbg = {}

-- aqxBbg ends at ","
a2x_a2xequities_securitycomma_csv_v1_2.aqxbbg.delimiter = ","
-- aqxBbg is text in Ascii
a2x_a2xequities_securitycomma_csv_v1_2.aqxbbg.encoding = ENC_ASCII

-- Display: aqxBbg
a2x_a2xequities_securitycomma_csv_v1_2.aqxbbg.display = function(value)
  return "aqxBbg: "..value
end

-- Dissect: aqxBbg
a2x_a2xequities_securitycomma_csv_v1_2.aqxbbg.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #a2x_a2xequities_securitycomma_csv_v1_2.lines.current then
    return nil, "the line stops before aqxBbg"
  end
  local index = nil
  if length == nil then
    length, index = a2x_a2xequities_securitycomma_csv_v1_2.lines.scan(offset, a2x_a2xequities_securitycomma_csv_v1_2.aqxbbg.delimiter)
  end
  local text = string.sub(a2x_a2xequities_securitycomma_csv_v1_2.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_a2x_a2xequities_securitycomma_csv_v1_2.fields.aqxbbg, buffer(offset, length), text, a2x_a2xequities_securitycomma_csv_v1_2.aqxbbg.display(text))
  end
  return index
end

-- umtf
a2x_a2xequities_securitycomma_csv_v1_2.umtf = {}

-- umtf ends at ","
a2x_a2xequities_securitycomma_csv_v1_2.umtf.delimiter = ","
-- umtf is text in Ascii
a2x_a2xequities_securitycomma_csv_v1_2.umtf.encoding = ENC_ASCII

-- Display: umtf
a2x_a2xequities_securitycomma_csv_v1_2.umtf.display = function(value)
  return "umtf: "..value
end

-- Dissect: umtf
a2x_a2xequities_securitycomma_csv_v1_2.umtf.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #a2x_a2xequities_securitycomma_csv_v1_2.lines.current then
    return nil, "the line stops before umtf"
  end
  local index = nil
  if length == nil then
    length, index = a2x_a2xequities_securitycomma_csv_v1_2.lines.scan(offset, a2x_a2xequities_securitycomma_csv_v1_2.umtf.delimiter)
  end
  local text = string.sub(a2x_a2xequities_securitycomma_csv_v1_2.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_a2x_a2xequities_securitycomma_csv_v1_2.fields.umtf, buffer(offset, length), text, a2x_a2xequities_securitycomma_csv_v1_2.umtf.display(text))
  end
  return index
end

-- tick_name
a2x_a2xequities_securitycomma_csv_v1_2.tick_name = {}

-- tick_name ends at ","
a2x_a2xequities_securitycomma_csv_v1_2.tick_name.delimiter = ","
-- tick_name is text in Ascii
a2x_a2xequities_securitycomma_csv_v1_2.tick_name.encoding = ENC_ASCII

-- Display: tick_name
a2x_a2xequities_securitycomma_csv_v1_2.tick_name.display = function(value)
  return "tick_name: "..value
end

-- Dissect: tick_name
a2x_a2xequities_securitycomma_csv_v1_2.tick_name.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #a2x_a2xequities_securitycomma_csv_v1_2.lines.current then
    return nil, "the line stops before tick_name"
  end
  local index = nil
  if length == nil then
    length, index = a2x_a2xequities_securitycomma_csv_v1_2.lines.scan(offset, a2x_a2xequities_securitycomma_csv_v1_2.tick_name.delimiter)
  end
  local text = string.sub(a2x_a2xequities_securitycomma_csv_v1_2.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_a2x_a2xequities_securitycomma_csv_v1_2.fields.tick_name, buffer(offset, length), text, a2x_a2xequities_securitycomma_csv_v1_2.tick_name.display(text))
  end
  return index
end

-- rls
a2x_a2xequities_securitycomma_csv_v1_2.rls = {}

-- rls ends at ","
a2x_a2xequities_securitycomma_csv_v1_2.rls.delimiter = ","
-- rls is an unsigned integer

-- Display: rls
a2x_a2xequities_securitycomma_csv_v1_2.rls.display = function(value)
  return "rls: "..value
end

-- Dissect: rls
a2x_a2xequities_securitycomma_csv_v1_2.rls.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #a2x_a2xequities_securitycomma_csv_v1_2.lines.current then
    return nil, "the line stops before rls"
  end
  local index = nil
  if length == nil then
    length, index = a2x_a2xequities_securitycomma_csv_v1_2.lines.scan(offset, a2x_a2xequities_securitycomma_csv_v1_2.rls.delimiter)
  end
  local text = string.sub(a2x_a2xequities_securitycomma_csv_v1_2.lines.current, offset + 1, offset + length)
  local value, failure = a2x_a2xequities_securitycomma_csv_v1_2.lines.unsigned(text)
  if value == nil then
    return nil, "rls \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_a2x_a2xequities_securitycomma_csv_v1_2.fields.rls, buffer(offset, length), value, a2x_a2xequities_securitycomma_csv_v1_2.rls.display(tostring(value)))
  end
  return index
end

-- closing_enabled
a2x_a2xequities_securitycomma_csv_v1_2.closing_enabled = {}

-- closing_enabled ends at ","
a2x_a2xequities_securitycomma_csv_v1_2.closing_enabled.delimiter = ","
-- closing_enabled is text in Ascii
a2x_a2xequities_securitycomma_csv_v1_2.closing_enabled.encoding = ENC_ASCII

-- Display: closing_enabled
a2x_a2xequities_securitycomma_csv_v1_2.closing_enabled.labels = {
  ["1"] = "closing_enabled: Enabled (1)",
  ["0"] = "closing_enabled: Disabled (0)",
}

a2x_a2xequities_securitycomma_csv_v1_2.closing_enabled.display = function(value)
  return a2x_a2xequities_securitycomma_csv_v1_2.closing_enabled.labels[value] or "closing_enabled: Unknown("..value..")"
end

-- Dissect: closing_enabled
a2x_a2xequities_securitycomma_csv_v1_2.closing_enabled.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #a2x_a2xequities_securitycomma_csv_v1_2.lines.current then
    return nil, "the line stops before closing_enabled"
  end
  local index = nil
  if length == nil then
    length, index = a2x_a2xequities_securitycomma_csv_v1_2.lines.scan(offset, a2x_a2xequities_securitycomma_csv_v1_2.closing_enabled.delimiter)
  end
  local text = string.sub(a2x_a2xequities_securitycomma_csv_v1_2.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_a2x_a2xequities_securitycomma_csv_v1_2.fields.closing_enabled, buffer(offset, length), text, a2x_a2xequities_securitycomma_csv_v1_2.closing_enabled.display(text))
  end
  return index
end

-- test_stock
a2x_a2xequities_securitycomma_csv_v1_2.test_stock = {}

-- test_stock ends at ","
a2x_a2xequities_securitycomma_csv_v1_2.test_stock.delimiter = ","
-- test_stock is text in Ascii
a2x_a2xequities_securitycomma_csv_v1_2.test_stock.encoding = ENC_ASCII

-- Display: test_stock
a2x_a2xequities_securitycomma_csv_v1_2.test_stock.labels = {
  ["1"] = "test_stock: Enabled (1)",
  ["0"] = "test_stock: Disabled (0)",
}

a2x_a2xequities_securitycomma_csv_v1_2.test_stock.display = function(value)
  return a2x_a2xequities_securitycomma_csv_v1_2.test_stock.labels[value] or "test_stock: Unknown("..value..")"
end

-- Dissect: test_stock
a2x_a2xequities_securitycomma_csv_v1_2.test_stock.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #a2x_a2xequities_securitycomma_csv_v1_2.lines.current then
    return nil, "the line stops before test_stock"
  end
  local index = nil
  if length == nil then
    length, index = a2x_a2xequities_securitycomma_csv_v1_2.lines.scan(offset, a2x_a2xequities_securitycomma_csv_v1_2.test_stock.delimiter)
  end
  local text = string.sub(a2x_a2xequities_securitycomma_csv_v1_2.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_a2x_a2xequities_securitycomma_csv_v1_2.fields.test_stock, buffer(offset, length), text, a2x_a2xequities_securitycomma_csv_v1_2.test_stock.display(text))
  end
  return index
end


-----------------------------------------------------------------------
-- Protocol Records
-----------------------------------------------------------------------

-- Security
a2x_a2xequities_securitycomma_csv_v1_2.record_security = {}

-- The delimiter every field of Security ends at, which its line is split at
a2x_a2xequities_securitycomma_csv_v1_2.record_security.delimiter = ","

-- Dissect Fields: Security
-- Split: every field of Security ends at "," and none is quoted, so its line is split once and each field handed its range
a2x_a2xequities_securitycomma_csv_v1_2.record_security.fields = function(buffer, offset, packet, parent)
  local starts, lengths = a2x_a2xequities_securitycomma_csv_v1_2.lines.split(offset, a2x_a2xequities_securitycomma_csv_v1_2.record_security.delimiter)
  if #starts > 14 then
    return nil, "Security: the line has " .. #starts .. " fields, its layout 14"
  end
  local index = nil
  local failure = nil

  -- id: field 1
  index, failure = a2x_a2xequities_securitycomma_csv_v1_2.id.dissect(buffer, starts[1], packet, parent, lengths[1])
  if failure ~= nil then
    return nil, failure
  end

  -- description: field 2
  index, failure = a2x_a2xequities_securitycomma_csv_v1_2.description.dissect(buffer, starts[2], packet, parent, lengths[2])
  if failure ~= nil then
    return nil, failure
  end

  -- primric: field 3
  index, failure = a2x_a2xequities_securitycomma_csv_v1_2.primric.dissect(buffer, starts[3], packet, parent, lengths[3])
  if failure ~= nil then
    return nil, failure
  end

  -- primBbg: field 4
  index, failure = a2x_a2xequities_securitycomma_csv_v1_2.primbbg.dissect(buffer, starts[4], packet, parent, lengths[4])
  if failure ~= nil then
    return nil, failure
  end

  -- isin: field 5
  index, failure = a2x_a2xequities_securitycomma_csv_v1_2.isin.dissect(buffer, starts[5], packet, parent, lengths[5])
  if failure ~= nil then
    return nil, failure
  end

  -- code: field 6
  index, failure = a2x_a2xequities_securitycomma_csv_v1_2.code.dissect(buffer, starts[6], packet, parent, lengths[6])
  if failure ~= nil then
    return nil, failure
  end

  -- mic: field 7
  index, failure = a2x_a2xequities_securitycomma_csv_v1_2.mic.dissect(buffer, starts[7], packet, parent, lengths[7])
  if failure ~= nil then
    return nil, failure
  end

  -- aqxRic: field 8
  index, failure = a2x_a2xequities_securitycomma_csv_v1_2.aqxric.dissect(buffer, starts[8], packet, parent, lengths[8])
  if failure ~= nil then
    return nil, failure
  end

  -- aqxBbg: field 9
  index, failure = a2x_a2xequities_securitycomma_csv_v1_2.aqxbbg.dissect(buffer, starts[9], packet, parent, lengths[9])
  if failure ~= nil then
    return nil, failure
  end

  -- umtf: field 10
  index, failure = a2x_a2xequities_securitycomma_csv_v1_2.umtf.dissect(buffer, starts[10], packet, parent, lengths[10])
  if failure ~= nil then
    return nil, failure
  end

  -- tick_name: field 11
  index, failure = a2x_a2xequities_securitycomma_csv_v1_2.tick_name.dissect(buffer, starts[11], packet, parent, lengths[11])
  if failure ~= nil then
    return nil, failure
  end

  -- rls: field 12
  index, failure = a2x_a2xequities_securitycomma_csv_v1_2.rls.dissect(buffer, starts[12], packet, parent, lengths[12])
  if failure ~= nil then
    return nil, failure
  end

  -- closing_enabled: field 13
  index, failure = a2x_a2xequities_securitycomma_csv_v1_2.closing_enabled.dissect(buffer, starts[13], packet, parent, lengths[13])
  if failure ~= nil then
    return nil, failure
  end

  -- test_stock: field 14
  index, failure = a2x_a2xequities_securitycomma_csv_v1_2.test_stock.dissect(buffer, starts[14], packet, parent, lengths[14])
  if failure ~= nil then
    return nil, failure
  end

  return #a2x_a2xequities_securitycomma_csv_v1_2.lines.current + 1
end

-- Dissect: Security
a2x_a2xequities_securitycomma_csv_v1_2.record_security.dissect = function(buffer, offset, packet, parent)
  local element = parent:add(omi_a2x_a2xequities_securitycomma_csv_v1_2.fields.record_security, buffer(), "Security", "Security")
  return a2x_a2xequities_securitycomma_csv_v1_2.record_security.fields(buffer, offset, packet, element)
end


-----------------------------------------------------------------------
-- Protocol Lines
-----------------------------------------------------------------------

-- The text between a line's fields, its Packet rule's Delimiter: ","
a2x_a2xequities_securitycomma_csv_v1_2.delimiter = ","

-- The character ending a line, its Packet rule's Terminator: 10
a2x_a2xequities_securitycomma_csv_v1_2.terminator = "\010"

-- The layouts a file states in its header, in model order: the header lines each states
a2x_a2xequities_securitycomma_csv_v1_2.variants = {
  {
    name = "SecurityComma.v1.2",
    headers = { "id,description,primric,primBbg,isin,code,mic,aqxRic,aqxBbg,umtf,tick_name,rls,closing_enabled,test_stock" },
  },
}

-- The layout the file's lines are read by: the one its file handler found, the first where none did
a2x_a2xequities_securitycomma_csv_v1_2.variant = function()
  if a2x_a2xequities_securitycomma_csv_v1_2.file == nil or a2x_a2xequities_securitycomma_csv_v1_2.file.variant == nil then
    return 1
  end
  return a2x_a2xequities_securitycomma_csv_v1_2.file.variant
end

-- A header line: its layout, and its columns
a2x_a2xequities_securitycomma_csv_v1_2.header = function(buffer, packet, parent, variant)
  packet.cols.info = "Header Row"
  local name = a2x_a2xequities_securitycomma_csv_v1_2.variants[variant].name
  local item = parent:add(omi_a2x_a2xequities_securitycomma_csv_v1_2.fields.header_row, buffer(), name, "Header Row: " .. name)
  local starts, lengths = a2x_a2xequities_securitycomma_csv_v1_2.lines.split(0, a2x_a2xequities_securitycomma_csv_v1_2.delimiter)
  for index = 1, #starts do
    local range = buffer(starts[index], lengths[index])
    item:add(range, "Column " .. index .. ": " .. range:string(ENC_ASCII))
  end
end

-- A line the layout does not read, and why: its fields, as they are
a2x_a2xequities_securitycomma_csv_v1_2.outside = function(buffer, packet, parent, reason)
  packet.cols.info = "Line Outside Layout"
  local item = parent:add(omi_a2x_a2xequities_securitycomma_csv_v1_2.fields.line_outside_layout, buffer(), reason, "Line Outside Layout: " .. reason)
  item:add_proto_expert_info(omi_a2x_a2xequities_securitycomma_csv_v1_2.experts.line_outside_layout, reason)
  local starts, lengths = a2x_a2xequities_securitycomma_csv_v1_2.lines.split(0, a2x_a2xequities_securitycomma_csv_v1_2.delimiter)
  for index = 1, #starts do
    local range = buffer(starts[index], lengths[index])
    item:add(range, "Field " .. index .. ": " .. range:string(ENC_ASCII))
  end
end

-- Is a line one of the layout's header lines?
a2x_a2xequities_securitycomma_csv_v1_2.headed = function(line, variant)
  for index, header in ipairs(a2x_a2xequities_securitycomma_csv_v1_2.variants[variant].headers) do
    if line == header then
      return true
    end
  end
  return false
end

-- Does a line read as the layout's: a header line, or Security?
a2x_a2xequities_securitycomma_csv_v1_2.reads = function(buffer, packet, line)
  a2x_a2xequities_securitycomma_csv_v1_2.lines.current = line
  local variant = a2x_a2xequities_securitycomma_csv_v1_2.variant()
  if a2x_a2xequities_securitycomma_csv_v1_2.headed(line, variant) then
    return true
  end
  local index, failure = a2x_a2xequities_securitycomma_csv_v1_2.record_security.fields(buffer, 0, packet, nil)
  return failure == nil
end

-- Dissect a line: a header line, or Security, or a line outside the layout
a2x_a2xequities_securitycomma_csv_v1_2.line = function(buffer, packet, parent)
  local line = buffer:raw()
  a2x_a2xequities_securitycomma_csv_v1_2.lines.current = line
  local variant = a2x_a2xequities_securitycomma_csv_v1_2.variant()
  if a2x_a2xequities_securitycomma_csv_v1_2.headed(line, variant) then
    return a2x_a2xequities_securitycomma_csv_v1_2.header(buffer, packet, parent, variant)
  end

  -- read first with no tree, so a line the layout does not read is shown whole
  local index, failure = a2x_a2xequities_securitycomma_csv_v1_2.record_security.fields(buffer, 0, packet, nil)
  if failure ~= nil then
    return a2x_a2xequities_securitycomma_csv_v1_2.outside(buffer, packet, parent, failure)
  end

  packet.cols.info = "Security"
  a2x_a2xequities_securitycomma_csv_v1_2.record_security.dissect(buffer, 0, packet, parent)
end
-- Dissect A2X A2XEquities SecurityComma Csv 1.2
function omi_a2x_a2xequities_securitycomma_csv_v1_2.dissector(buffer, packet, parent)
  packet.cols.protocol = omi_a2x_a2xequities_securitycomma_csv_v1_2.name

  local protocol = parent:add(omi_a2x_a2xequities_securitycomma_csv_v1_2, buffer(), omi_a2x_a2xequities_securitycomma_csv_v1_2.description, "(" .. buffer:len() .. " Bytes)")
  return a2x_a2xequities_securitycomma_csv_v1_2.line(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- File Lines
-----------------------------------------------------------------------

-- A file's line, the one at an offset or with none the next, to the terminator: its offset, its text,
-- and its frame's time. The file is read a block at a time, the block kept in the capture's private
-- table; a line read again reads a block of its own
a2x_a2xequities_securitycomma_csv_v1_2.read = function(file, capture, offset)
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
    local ends = string.find(block.data, a2x_a2xequities_securitycomma_csv_v1_2.terminator, block.at, true)
    if ends ~= nil then
      start = block.offset + block.at - 1
      line = string.sub(block.data, block.at, ends - 1)
      block.at = ends + #a2x_a2xequities_securitycomma_csv_v1_2.terminator
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
a2x_a2xequities_securitycomma_csv_v1_2.file = {}

-- Exported pdu tags each frame starts with: the dissector it is for, then the end of the tags
a2x_a2xequities_securitycomma_csv_v1_2.file.prefix = "\000\012\000\044omi.a2x.a2xequities.securitycomma.csv.v1.2\000\000\000\000\000\000"

-- The text a file of each layout starts with
a2x_a2xequities_securitycomma_csv_v1_2.file.signatures = {
  "id,description,primric,primBbg,isin,code,mic,aqxRic,aqxBbg,umtf,tick_name,rls,closing_enabled,test_stock\010",
}

-- The layout a file's first bytes are the signature of, or nil for a file of no layout
a2x_a2xequities_securitycomma_csv_v1_2.file.layout = function(file)
  local first = file:read(105)
  if first == nil then
    return nil
  end
  for index, signature in ipairs(a2x_a2xequities_securitycomma_csv_v1_2.file.signatures) do
    if first:sub(1, #signature) == signature then
      return index
    end
  end
  return nil
end

-- A record read into a frame, the one at an offset or with none the next: its offset, nil at the end of the file
a2x_a2xequities_securitycomma_csv_v1_2.file.frame = function(file, capture, frame, offset)
  local at, data, seconds, nanoseconds = a2x_a2xequities_securitycomma_csv_v1_2.read(file, capture, offset)
  if at == nil then
    return nil
  end
  data = a2x_a2xequities_securitycomma_csv_v1_2.file.prefix .. data
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

-- A2X A2XEquities SecurityComma Csv 1.2 (Omi) file handler: a magic number reader, its signatures the magic
a2x_a2xequities_securitycomma_csv_v1_2.file.handler = FileHandler.new("A2X A2XEquities SecurityComma Csv 1.2 (Omi)", "omi_a2x_a2xequities_securitycomma_csv_v1_2", "A2X A2XEquities SecurityComma Csv 1.2 (Omi) file", "rm")

-- A file of a layout is this protocol's; read from its start, so its first line is the first frame
a2x_a2xequities_securitycomma_csv_v1_2.file.handler.read_open = function(file, capture)
  local layout = a2x_a2xequities_securitycomma_csv_v1_2.file.layout(file)
  if layout == nil then
    return false
  end
  a2x_a2xequities_securitycomma_csv_v1_2.file.variant = layout
  file:seek("set", 0)
  capture.private_table = {}
  capture.encap = wtap_encaps.WIRESHARK_UPPER_PDU
  capture.time_precision = wtap_tsprecs.NSEC
  return true
end

-- The next record, returning its offset in the file
a2x_a2xequities_securitycomma_csv_v1_2.file.handler.read = function(file, capture, frame)
  local offset = a2x_a2xequities_securitycomma_csv_v1_2.file.frame(file, capture, frame, nil)
  if offset == nil then
    return false
  end
  return offset
end

-- The record at an offset read before
a2x_a2xequities_securitycomma_csv_v1_2.file.handler.seek_read = function(file, capture, frame, offset)
  return a2x_a2xequities_securitycomma_csv_v1_2.file.frame(file, capture, frame, offset) ~= nil
end

-- Nothing is held open beyond the file Wireshark closes
a2x_a2xequities_securitycomma_csv_v1_2.file.handler.read_close = function(file, capture)
  return true
end

a2x_a2xequities_securitycomma_csv_v1_2.file.handler.seq_read_close = function(file, capture)
  return true
end

-- Register A2X A2XEquities SecurityComma Csv 1.2 (Omi) files
register_filehandler(a2x_a2xequities_securitycomma_csv_v1_2.file.handler)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: A2X Markets
--   Version: 1.2
--   Date: Thursday, September 5, 2024
--   Specification: A2X Reference Data Specification v1.2.pdf
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
