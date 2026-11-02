-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Memx MemxEquities InstrumentDirectory Csv 2026.10.14 Protocol
local omi_memx_memxequities_instrumentdirectory_csv_v2026_10_14 = Proto("Omi.Memx.MemxEquities.InstrumentDirectory.Csv.v2026.10.14", "Memx MemxEquities InstrumentDirectory Csv 2026.10.14")

-- Protocol table
local memx_memxequities_instrumentdirectory_csv_v2026_10_14 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Memx MemxEquities InstrumentDirectory Csv 2026.10.14 Fields
omi_memx_memxequities_instrumentdirectory_csv_v2026_10_14.fields.record_instrument = ProtoField.new("Instrument", "memx.memxequities.instrumentdirectory.csv.v2026.10.14.record.instrument", ftypes.STRING, nil, nil)
omi_memx_memxequities_instrumentdirectory_csv_v2026_10_14.fields.securityid = ProtoField.new("securityId", "memx.memxequities.instrumentdirectory.csv.v2026.10.14.securityid", ftypes.UINT64, nil, nil, nil, "A unique code identifying the instrument for any messages in this session")
omi_memx_memxequities_instrumentdirectory_csv_v2026_10_14.fields.symbol = ProtoField.new("symbol", "memx.memxequities.instrumentdirectory.csv.v2026.10.14.symbol", ftypes.STRING, nil, nil, nil, "The CMS root for the tradable instrument")
omi_memx_memxequities_instrumentdirectory_csv_v2026_10_14.fields.symbolsfx = ProtoField.new("symbolSfx", "memx.memxequities.instrumentdirectory.csv.v2026.10.14.symbolsfx", ftypes.STRING, nil, nil, nil, "The CMS suffix for the tradable instrument")
omi_memx_memxequities_instrumentdirectory_csv_v2026_10_14.fields.roundlot = ProtoField.new("roundLot", "memx.memxequities.instrumentdirectory.csv.v2026.10.14.roundlot", ftypes.UINT64, nil, nil, nil, "The number of shares in a round lot for the instrument")
omi_memx_memxequities_instrumentdirectory_csv_v2026_10_14.fields.istestsymbol = ProtoField.new("isTestSymbol", "memx.memxequities.instrumentdirectory.csv.v2026.10.14.istestsymbol", ftypes.STRING, nil, nil, nil, "Determines if this security is a test instrument")
omi_memx_memxequities_instrumentdirectory_csv_v2026_10_14.fields.mpv = ProtoField.new("mpv", "memx.memxequities.instrumentdirectory.csv.v2026.10.14.mpv", ftypes.INT64, nil, nil, nil, "The minimum price variation for an instrument (the smallest price increment of the stock)")
omi_memx_memxequities_instrumentdirectory_csv_v2026_10_14.fields.header_row = ProtoField.new("Header Row", "memx.memxequities.instrumentdirectory.csv.v2026.10.14.headerrow", ftypes.STRING, nil, nil, nil, "The line naming a file's columns, which states the layout its lines are read in")
omi_memx_memxequities_instrumentdirectory_csv_v2026_10_14.fields.line_outside_layout = ProtoField.new("Line Outside Layout", "memx.memxequities.instrumentdirectory.csv.v2026.10.14.lineoutsidelayout", ftypes.STRING, nil, nil, nil, "A line the layout does not read: no header row, and not the record")

-----------------------------------------------------------------------
-- Declare Dissection Experts
-----------------------------------------------------------------------

-- A line the layout does not read
omi_memx_memxequities_instrumentdirectory_csv_v2026_10_14.experts.line_outside_layout = ProtoExpert.new("memx.memxequities.instrumentdirectory.csv.v2026.10.14.lineoutsidelayout.expert", "Line Outside Layout", expert.group.MALFORMED, expert.severity.WARN)

-----------------------------------------------------------------------
-- Protocol Primitives
-----------------------------------------------------------------------

-- The readings a field calls with its own traits, and the line being dissected
memx_memxequities_instrumentdirectory_csv_v2026_10_14.lines = {}

-- A line split at a delimiter, from an offset: where each field starts, and its length
memx_memxequities_instrumentdirectory_csv_v2026_10_14.lines.split = function(offset, delimiter)
  local line = memx_memxequities_instrumentdirectory_csv_v2026_10_14.lines.current
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
-- A quoted field's length from an offset, its quotes included, and the offset after the delimiter
-- after it: a doubled quote inside quotes is one quote; nil and why where its quote is not closed
memx_memxequities_instrumentdirectory_csv_v2026_10_14.lines.quoted = function(offset, delimiter, quote)
  local line = memx_memxequities_instrumentdirectory_csv_v2026_10_14.lines.current
  if string.sub(line, offset + 1, offset + #quote) ~= quote then
    local at = string.find(line, delimiter, offset + 1, true)
    if at == nil then
      return #line - offset, #line + 1
    end
    return at - 1 - offset, at - 1 + #delimiter
  end
  local at = offset + #quote + 1
  while true do
    local close = string.find(line, quote, at, true)
    if close == nil then
      return nil, "opens a quote it does not close"
    end
    if string.sub(line, close + #quote, close + 2 * #quote - 1) == quote then
      at = close + 2 * #quote
    else
      local after = close + #quote
      if after > #line then
        return after - 1 - offset, #line + 1
      end
      if string.sub(line, after, after + #delimiter - 1) ~= delimiter then
        return nil, "has text after its closing quote"
      end
      return after - 1 - offset, after - 1 + #delimiter
    end
  end
end

-- A quoted field's text: its quotes removed, a doubled quote one quote
memx_memxequities_instrumentdirectory_csv_v2026_10_14.lines.unquote = function(text, quote)
  if #text < 2 * #quote or string.sub(text, 1, #quote) ~= quote then
    return text
  end
  local inner = string.sub(text, #quote + 1, #text - #quote)
  return (string.gsub(inner, quote .. quote, quote))
end
-- An unsigned integer's text, exactly, as a UInt64: a Lua number holds 15 digits exactly, and more are
-- held in two parts; nil and why where it is not one
memx_memxequities_instrumentdirectory_csv_v2026_10_14.lines.unsigned = function(text)
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
-- A signed integer's text, exactly, as an Int64: a minus sign first where it is negative; nil and why
-- where it is not one
memx_memxequities_instrumentdirectory_csv_v2026_10_14.lines.signed = function(text)
  local sign, digits = string.match(text, "^(%-?)(%d+)$")
  if sign == nil then
    return nil, "is not an integer"
  end
  digits = string.match(digits, "^0*(%d.*)$")
  if #digits > 19 or (#digits == 19 and digits > "9223372036854775807") then
    return nil, "overflows its field"
  end
  local value = nil
  if #digits <= 15 then
    value = Int64(tonumber(digits))
  else
    value = Int64(tonumber(string.sub(digits, 1, #digits - 9))) * 1000000000 + tonumber(string.sub(digits, #digits - 8))
  end
  if sign == "-" then
    return -value
  end
  return value
end

-----------------------------------------------------------------------
-- Protocol Fields
-----------------------------------------------------------------------

-- securityId
memx_memxequities_instrumentdirectory_csv_v2026_10_14.securityid = {}

-- securityId ends at ","
memx_memxequities_instrumentdirectory_csv_v2026_10_14.securityid.delimiter = ","
-- securityId is quoted by """ where it holds its delimiter
memx_memxequities_instrumentdirectory_csv_v2026_10_14.securityid.quote = "\""
-- securityId is an unsigned integer

-- Display: securityId
memx_memxequities_instrumentdirectory_csv_v2026_10_14.securityid.display = function(value)
  return "securityId: "..value
end

-- Dissect: securityId
memx_memxequities_instrumentdirectory_csv_v2026_10_14.securityid.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #memx_memxequities_instrumentdirectory_csv_v2026_10_14.lines.current then
    return nil, "the line stops before securityId"
  end
  local index = nil
  if length == nil then
    length, index = memx_memxequities_instrumentdirectory_csv_v2026_10_14.lines.quoted(offset, memx_memxequities_instrumentdirectory_csv_v2026_10_14.securityid.delimiter, memx_memxequities_instrumentdirectory_csv_v2026_10_14.securityid.quote)
    if length == nil then
      return nil, "securityId " .. index
    end
  end
  local text = memx_memxequities_instrumentdirectory_csv_v2026_10_14.lines.unquote(string.sub(memx_memxequities_instrumentdirectory_csv_v2026_10_14.lines.current, offset + 1, offset + length), memx_memxequities_instrumentdirectory_csv_v2026_10_14.securityid.quote)
  local value, failure = memx_memxequities_instrumentdirectory_csv_v2026_10_14.lines.unsigned(text)
  if value == nil then
    return nil, "securityId \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_memx_memxequities_instrumentdirectory_csv_v2026_10_14.fields.securityid, buffer(offset, length), value, memx_memxequities_instrumentdirectory_csv_v2026_10_14.securityid.display(tostring(value)))
  end
  return index
end

-- symbol
memx_memxequities_instrumentdirectory_csv_v2026_10_14.symbol = {}

-- symbol ends at ","
memx_memxequities_instrumentdirectory_csv_v2026_10_14.symbol.delimiter = ","
-- symbol is quoted by """ where it holds its delimiter
memx_memxequities_instrumentdirectory_csv_v2026_10_14.symbol.quote = "\""
-- symbol is text in Ascii
memx_memxequities_instrumentdirectory_csv_v2026_10_14.symbol.encoding = ENC_ASCII

-- Display: symbol
memx_memxequities_instrumentdirectory_csv_v2026_10_14.symbol.display = function(value)
  return "symbol: "..value
end

-- Dissect: symbol
memx_memxequities_instrumentdirectory_csv_v2026_10_14.symbol.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #memx_memxequities_instrumentdirectory_csv_v2026_10_14.lines.current then
    return nil, "the line stops before symbol"
  end
  local index = nil
  if length == nil then
    length, index = memx_memxequities_instrumentdirectory_csv_v2026_10_14.lines.quoted(offset, memx_memxequities_instrumentdirectory_csv_v2026_10_14.symbol.delimiter, memx_memxequities_instrumentdirectory_csv_v2026_10_14.symbol.quote)
    if length == nil then
      return nil, "symbol " .. index
    end
  end
  local text = memx_memxequities_instrumentdirectory_csv_v2026_10_14.lines.unquote(string.sub(memx_memxequities_instrumentdirectory_csv_v2026_10_14.lines.current, offset + 1, offset + length), memx_memxequities_instrumentdirectory_csv_v2026_10_14.symbol.quote)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_memx_memxequities_instrumentdirectory_csv_v2026_10_14.fields.symbol, buffer(offset, length), text, memx_memxequities_instrumentdirectory_csv_v2026_10_14.symbol.display(text))
  end
  return index
end

-- symbolSfx
memx_memxequities_instrumentdirectory_csv_v2026_10_14.symbolsfx = {}

-- symbolSfx ends at ","
memx_memxequities_instrumentdirectory_csv_v2026_10_14.symbolsfx.delimiter = ","
-- symbolSfx is quoted by """ where it holds its delimiter
memx_memxequities_instrumentdirectory_csv_v2026_10_14.symbolsfx.quote = "\""
-- symbolSfx is text in Ascii
memx_memxequities_instrumentdirectory_csv_v2026_10_14.symbolsfx.encoding = ENC_ASCII

-- Display: symbolSfx
memx_memxequities_instrumentdirectory_csv_v2026_10_14.symbolsfx.display = function(value)
  return "symbolSfx: "..value
end

-- Dissect: symbolSfx
memx_memxequities_instrumentdirectory_csv_v2026_10_14.symbolsfx.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #memx_memxequities_instrumentdirectory_csv_v2026_10_14.lines.current then
    return nil, "the line stops before symbolSfx"
  end
  local index = nil
  if length == nil then
    length, index = memx_memxequities_instrumentdirectory_csv_v2026_10_14.lines.quoted(offset, memx_memxequities_instrumentdirectory_csv_v2026_10_14.symbolsfx.delimiter, memx_memxequities_instrumentdirectory_csv_v2026_10_14.symbolsfx.quote)
    if length == nil then
      return nil, "symbolSfx " .. index
    end
  end
  local text = memx_memxequities_instrumentdirectory_csv_v2026_10_14.lines.unquote(string.sub(memx_memxequities_instrumentdirectory_csv_v2026_10_14.lines.current, offset + 1, offset + length), memx_memxequities_instrumentdirectory_csv_v2026_10_14.symbolsfx.quote)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_memx_memxequities_instrumentdirectory_csv_v2026_10_14.fields.symbolsfx, buffer(offset, length), text, memx_memxequities_instrumentdirectory_csv_v2026_10_14.symbolsfx.display(text))
  end
  return index
end

-- roundLot
memx_memxequities_instrumentdirectory_csv_v2026_10_14.roundlot = {}

-- roundLot ends at ","
memx_memxequities_instrumentdirectory_csv_v2026_10_14.roundlot.delimiter = ","
-- roundLot is quoted by """ where it holds its delimiter
memx_memxequities_instrumentdirectory_csv_v2026_10_14.roundlot.quote = "\""
-- roundLot is an unsigned integer

-- Display: roundLot
memx_memxequities_instrumentdirectory_csv_v2026_10_14.roundlot.display = function(value)
  return "roundLot: "..value
end

-- Dissect: roundLot
memx_memxequities_instrumentdirectory_csv_v2026_10_14.roundlot.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #memx_memxequities_instrumentdirectory_csv_v2026_10_14.lines.current then
    return nil, "the line stops before roundLot"
  end
  local index = nil
  if length == nil then
    length, index = memx_memxequities_instrumentdirectory_csv_v2026_10_14.lines.quoted(offset, memx_memxequities_instrumentdirectory_csv_v2026_10_14.roundlot.delimiter, memx_memxequities_instrumentdirectory_csv_v2026_10_14.roundlot.quote)
    if length == nil then
      return nil, "roundLot " .. index
    end
  end
  local text = memx_memxequities_instrumentdirectory_csv_v2026_10_14.lines.unquote(string.sub(memx_memxequities_instrumentdirectory_csv_v2026_10_14.lines.current, offset + 1, offset + length), memx_memxequities_instrumentdirectory_csv_v2026_10_14.roundlot.quote)
  local value, failure = memx_memxequities_instrumentdirectory_csv_v2026_10_14.lines.unsigned(text)
  if value == nil then
    return nil, "roundLot \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_memx_memxequities_instrumentdirectory_csv_v2026_10_14.fields.roundlot, buffer(offset, length), value, memx_memxequities_instrumentdirectory_csv_v2026_10_14.roundlot.display(tostring(value)))
  end
  return index
end

-- isTestSymbol
memx_memxequities_instrumentdirectory_csv_v2026_10_14.istestsymbol = {}

-- isTestSymbol ends at ","
memx_memxequities_instrumentdirectory_csv_v2026_10_14.istestsymbol.delimiter = ","
-- isTestSymbol is quoted by """ where it holds its delimiter
memx_memxequities_instrumentdirectory_csv_v2026_10_14.istestsymbol.quote = "\""
-- isTestSymbol is text in Ascii
memx_memxequities_instrumentdirectory_csv_v2026_10_14.istestsymbol.encoding = ENC_ASCII

-- Display: isTestSymbol
memx_memxequities_instrumentdirectory_csv_v2026_10_14.istestsymbol.labels = {
  ["true"] = "isTestSymbol: True (true)",
  ["false"] = "isTestSymbol: False (false)",
}

memx_memxequities_instrumentdirectory_csv_v2026_10_14.istestsymbol.display = function(value)
  return memx_memxequities_instrumentdirectory_csv_v2026_10_14.istestsymbol.labels[value] or "isTestSymbol: Unknown("..value..")"
end

-- Dissect: isTestSymbol
memx_memxequities_instrumentdirectory_csv_v2026_10_14.istestsymbol.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #memx_memxequities_instrumentdirectory_csv_v2026_10_14.lines.current then
    return nil, "the line stops before isTestSymbol"
  end
  local index = nil
  if length == nil then
    length, index = memx_memxequities_instrumentdirectory_csv_v2026_10_14.lines.quoted(offset, memx_memxequities_instrumentdirectory_csv_v2026_10_14.istestsymbol.delimiter, memx_memxequities_instrumentdirectory_csv_v2026_10_14.istestsymbol.quote)
    if length == nil then
      return nil, "isTestSymbol " .. index
    end
  end
  local text = memx_memxequities_instrumentdirectory_csv_v2026_10_14.lines.unquote(string.sub(memx_memxequities_instrumentdirectory_csv_v2026_10_14.lines.current, offset + 1, offset + length), memx_memxequities_instrumentdirectory_csv_v2026_10_14.istestsymbol.quote)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_memx_memxequities_instrumentdirectory_csv_v2026_10_14.fields.istestsymbol, buffer(offset, length), text, memx_memxequities_instrumentdirectory_csv_v2026_10_14.istestsymbol.display(text))
  end
  return index
end

-- mpv
memx_memxequities_instrumentdirectory_csv_v2026_10_14.mpv = {}

-- mpv ends at ","
memx_memxequities_instrumentdirectory_csv_v2026_10_14.mpv.delimiter = ","
-- mpv is quoted by """ where it holds its delimiter
memx_memxequities_instrumentdirectory_csv_v2026_10_14.mpv.quote = "\""
-- mpv is a signed integer

-- Display: mpv
memx_memxequities_instrumentdirectory_csv_v2026_10_14.mpv.display = function(value)
  return "mpv: "..value
end

-- Dissect: mpv
memx_memxequities_instrumentdirectory_csv_v2026_10_14.mpv.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #memx_memxequities_instrumentdirectory_csv_v2026_10_14.lines.current then
    return nil, "the line stops before mpv"
  end
  local index = nil
  if length == nil then
    length, index = memx_memxequities_instrumentdirectory_csv_v2026_10_14.lines.quoted(offset, memx_memxequities_instrumentdirectory_csv_v2026_10_14.mpv.delimiter, memx_memxequities_instrumentdirectory_csv_v2026_10_14.mpv.quote)
    if length == nil then
      return nil, "mpv " .. index
    end
  end
  local text = memx_memxequities_instrumentdirectory_csv_v2026_10_14.lines.unquote(string.sub(memx_memxequities_instrumentdirectory_csv_v2026_10_14.lines.current, offset + 1, offset + length), memx_memxequities_instrumentdirectory_csv_v2026_10_14.mpv.quote)
  local value, failure = memx_memxequities_instrumentdirectory_csv_v2026_10_14.lines.signed(text)
  if value == nil then
    return nil, "mpv \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_memx_memxequities_instrumentdirectory_csv_v2026_10_14.fields.mpv, buffer(offset, length), value, memx_memxequities_instrumentdirectory_csv_v2026_10_14.mpv.display(tostring(value)))
  end
  return index
end


-----------------------------------------------------------------------
-- Protocol Records
-----------------------------------------------------------------------

-- Instrument
memx_memxequities_instrumentdirectory_csv_v2026_10_14.record_instrument = {}

-- Dissect Fields: Instrument
-- Readers: the fields of Instrument end at their own delimiters (",") or are quoted, so each reads from where the last ended
memx_memxequities_instrumentdirectory_csv_v2026_10_14.record_instrument.fields = function(buffer, offset, packet, parent)
  local index = offset
  local failure = nil

  -- securityId: field 1
  index, failure = memx_memxequities_instrumentdirectory_csv_v2026_10_14.securityid.dissect(buffer, index, packet, parent, nil)
  if failure ~= nil then
    return nil, failure
  end

  -- symbol: field 2
  index, failure = memx_memxequities_instrumentdirectory_csv_v2026_10_14.symbol.dissect(buffer, index, packet, parent, nil)
  if failure ~= nil then
    return nil, failure
  end

  -- symbolSfx: field 3
  index, failure = memx_memxequities_instrumentdirectory_csv_v2026_10_14.symbolsfx.dissect(buffer, index, packet, parent, nil)
  if failure ~= nil then
    return nil, failure
  end

  -- roundLot: field 4
  index, failure = memx_memxequities_instrumentdirectory_csv_v2026_10_14.roundlot.dissect(buffer, index, packet, parent, nil)
  if failure ~= nil then
    return nil, failure
  end

  -- isTestSymbol: field 5
  index, failure = memx_memxequities_instrumentdirectory_csv_v2026_10_14.istestsymbol.dissect(buffer, index, packet, parent, nil)
  if failure ~= nil then
    return nil, failure
  end

  -- mpv: field 6
  index, failure = memx_memxequities_instrumentdirectory_csv_v2026_10_14.mpv.dissect(buffer, index, packet, parent, nil)
  if failure ~= nil then
    return nil, failure
  end

  -- nothing follows its last field
  if index ~= nil and index <= #memx_memxequities_instrumentdirectory_csv_v2026_10_14.lines.current then
    return nil, "Instrument: the line has more fields than its layout's 6"
  end
  return index
end

-- Dissect: Instrument
memx_memxequities_instrumentdirectory_csv_v2026_10_14.record_instrument.dissect = function(buffer, offset, packet, parent)
  local element = parent:add(omi_memx_memxequities_instrumentdirectory_csv_v2026_10_14.fields.record_instrument, buffer(), "Instrument", "Instrument")
  return memx_memxequities_instrumentdirectory_csv_v2026_10_14.record_instrument.fields(buffer, offset, packet, element)
end


-----------------------------------------------------------------------
-- Protocol Lines
-----------------------------------------------------------------------

-- The text between a line's fields, its Packet rule's Delimiter: ","
memx_memxequities_instrumentdirectory_csv_v2026_10_14.delimiter = ","

-- The character ending a line, its Packet rule's Terminator: 10
memx_memxequities_instrumentdirectory_csv_v2026_10_14.terminator = "\010"

-- The layouts a file states in its header, in model order: the header lines each states
memx_memxequities_instrumentdirectory_csv_v2026_10_14.variants = {
  {
    name = "Instrument.v2026.10.14",
    headers = { "securityId,symbol,symbolSfx,roundLot,isTestSymbol,mpv" },
  },
}

-- The layout the file's lines are read by: the one its file handler found, the first where none did
memx_memxequities_instrumentdirectory_csv_v2026_10_14.variant = function()
  if memx_memxequities_instrumentdirectory_csv_v2026_10_14.file == nil or memx_memxequities_instrumentdirectory_csv_v2026_10_14.file.variant == nil then
    return 1
  end
  return memx_memxequities_instrumentdirectory_csv_v2026_10_14.file.variant
end

-- A header line: its layout, and its columns
memx_memxequities_instrumentdirectory_csv_v2026_10_14.header = function(buffer, packet, parent, variant)
  packet.cols.info = "Header Row"
  local name = memx_memxequities_instrumentdirectory_csv_v2026_10_14.variants[variant].name
  local item = parent:add(omi_memx_memxequities_instrumentdirectory_csv_v2026_10_14.fields.header_row, buffer(), name, "Header Row: " .. name)
  local starts, lengths = memx_memxequities_instrumentdirectory_csv_v2026_10_14.lines.split(0, memx_memxequities_instrumentdirectory_csv_v2026_10_14.delimiter)
  for index = 1, #starts do
    local range = buffer(starts[index], lengths[index])
    item:add(range, "Column " .. index .. ": " .. range:string(ENC_ASCII))
  end
end

-- A line the layout does not read, and why: its fields, as they are
memx_memxequities_instrumentdirectory_csv_v2026_10_14.outside = function(buffer, packet, parent, reason)
  packet.cols.info = "Line Outside Layout"
  local item = parent:add(omi_memx_memxequities_instrumentdirectory_csv_v2026_10_14.fields.line_outside_layout, buffer(), reason, "Line Outside Layout: " .. reason)
  item:add_proto_expert_info(omi_memx_memxequities_instrumentdirectory_csv_v2026_10_14.experts.line_outside_layout, reason)
  local starts, lengths = memx_memxequities_instrumentdirectory_csv_v2026_10_14.lines.split(0, memx_memxequities_instrumentdirectory_csv_v2026_10_14.delimiter)
  for index = 1, #starts do
    local range = buffer(starts[index], lengths[index])
    item:add(range, "Field " .. index .. ": " .. range:string(ENC_ASCII))
  end
end

-- Is a line one of the layout's header lines?
memx_memxequities_instrumentdirectory_csv_v2026_10_14.headed = function(line, variant)
  for index, header in ipairs(memx_memxequities_instrumentdirectory_csv_v2026_10_14.variants[variant].headers) do
    if line == header then
      return true
    end
  end
  return false
end

-- Does a line read as the layout's: a header line, or Instrument?
memx_memxequities_instrumentdirectory_csv_v2026_10_14.reads = function(buffer, packet, line)
  memx_memxequities_instrumentdirectory_csv_v2026_10_14.lines.current = line
  local variant = memx_memxequities_instrumentdirectory_csv_v2026_10_14.variant()
  if memx_memxequities_instrumentdirectory_csv_v2026_10_14.headed(line, variant) then
    return true
  end
  local index, failure = memx_memxequities_instrumentdirectory_csv_v2026_10_14.record_instrument.fields(buffer, 0, packet, nil)
  return failure == nil
end

-- Dissect a line: a header line, or Instrument, or a line outside the layout
memx_memxequities_instrumentdirectory_csv_v2026_10_14.line = function(buffer, packet, parent)
  local line = buffer:raw()
  memx_memxequities_instrumentdirectory_csv_v2026_10_14.lines.current = line
  local variant = memx_memxequities_instrumentdirectory_csv_v2026_10_14.variant()
  if memx_memxequities_instrumentdirectory_csv_v2026_10_14.headed(line, variant) then
    return memx_memxequities_instrumentdirectory_csv_v2026_10_14.header(buffer, packet, parent, variant)
  end

  -- read first with no tree, so a line the layout does not read is shown whole
  local index, failure = memx_memxequities_instrumentdirectory_csv_v2026_10_14.record_instrument.fields(buffer, 0, packet, nil)
  if failure ~= nil then
    return memx_memxequities_instrumentdirectory_csv_v2026_10_14.outside(buffer, packet, parent, failure)
  end

  packet.cols.info = "Instrument"
  memx_memxequities_instrumentdirectory_csv_v2026_10_14.record_instrument.dissect(buffer, 0, packet, parent)
end
-- Dissect Memx MemxEquities InstrumentDirectory Csv 2026.10.14
function omi_memx_memxequities_instrumentdirectory_csv_v2026_10_14.dissector(buffer, packet, parent)
  packet.cols.protocol = omi_memx_memxequities_instrumentdirectory_csv_v2026_10_14.name

  local protocol = parent:add(omi_memx_memxequities_instrumentdirectory_csv_v2026_10_14, buffer(), omi_memx_memxequities_instrumentdirectory_csv_v2026_10_14.description, "(" .. buffer:len() .. " Bytes)")
  return memx_memxequities_instrumentdirectory_csv_v2026_10_14.line(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- File Lines
-----------------------------------------------------------------------

-- A file's line, the one at an offset or with none the next, to the terminator: its offset, its text,
-- and its frame's time. The file is read a block at a time, the block kept in the capture's private
-- table; a line read again reads a block of its own
memx_memxequities_instrumentdirectory_csv_v2026_10_14.read = function(file, capture, offset)
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
    local ends = string.find(block.data, memx_memxequities_instrumentdirectory_csv_v2026_10_14.terminator, block.at, true)
    if ends ~= nil then
      start = block.offset + block.at - 1
      line = string.sub(block.data, block.at, ends - 1)
      block.at = ends + #memx_memxequities_instrumentdirectory_csv_v2026_10_14.terminator
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
memx_memxequities_instrumentdirectory_csv_v2026_10_14.file = {}

-- Exported pdu tags each frame starts with: the dissector it is for, then the end of the tags
memx_memxequities_instrumentdirectory_csv_v2026_10_14.file.prefix = "\000\012\000\060omi.memx.memxequities.instrumentdirectory.csv.v2026.10.14\000\000\000\000\000\000\000"

-- The text a file of each layout starts with
memx_memxequities_instrumentdirectory_csv_v2026_10_14.file.signatures = {
  "securityId,symbol,symbolSfx,roundLot,isTestSymbol,mpv\010",
}

-- The layout a file's first bytes are the signature of, or nil for a file of no layout
memx_memxequities_instrumentdirectory_csv_v2026_10_14.file.layout = function(file)
  local first = file:read(54)
  if first == nil then
    return nil
  end
  for index, signature in ipairs(memx_memxequities_instrumentdirectory_csv_v2026_10_14.file.signatures) do
    if first:sub(1, #signature) == signature then
      return index
    end
  end
  return nil
end

-- A record read into a frame, the one at an offset or with none the next: its offset, nil at the end of the file
memx_memxequities_instrumentdirectory_csv_v2026_10_14.file.frame = function(file, capture, frame, offset)
  local at, data, seconds, nanoseconds = memx_memxequities_instrumentdirectory_csv_v2026_10_14.read(file, capture, offset)
  if at == nil then
    return nil
  end
  data = memx_memxequities_instrumentdirectory_csv_v2026_10_14.file.prefix .. data
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

-- Memx MemxEquities InstrumentDirectory Csv 2026.10.14 (Omi) file handler: a magic number reader, its signatures the magic
memx_memxequities_instrumentdirectory_csv_v2026_10_14.file.handler = FileHandler.new("Memx MemxEquities InstrumentDirectory Csv 2026.10.14 (Omi)", "omi_memx_memxequities_instrumentdirectory_csv_v2026_10_14", "Memx MemxEquities InstrumentDirectory Csv 2026.10.14 (Omi) file", "rm")

-- A file of a layout is this protocol's; read from its start, so its first line is the first frame
memx_memxequities_instrumentdirectory_csv_v2026_10_14.file.handler.read_open = function(file, capture)
  local layout = memx_memxequities_instrumentdirectory_csv_v2026_10_14.file.layout(file)
  if layout == nil then
    return false
  end
  memx_memxequities_instrumentdirectory_csv_v2026_10_14.file.variant = layout
  file:seek("set", 0)
  capture.private_table = {}
  capture.encap = wtap_encaps.WIRESHARK_UPPER_PDU
  capture.time_precision = wtap_tsprecs.NSEC
  return true
end

-- The next record, returning its offset in the file
memx_memxequities_instrumentdirectory_csv_v2026_10_14.file.handler.read = function(file, capture, frame)
  local offset = memx_memxequities_instrumentdirectory_csv_v2026_10_14.file.frame(file, capture, frame, nil)
  if offset == nil then
    return false
  end
  return offset
end

-- The record at an offset read before
memx_memxequities_instrumentdirectory_csv_v2026_10_14.file.handler.seek_read = function(file, capture, frame, offset)
  return memx_memxequities_instrumentdirectory_csv_v2026_10_14.file.frame(file, capture, frame, offset) ~= nil
end

-- Nothing is held open beyond the file Wireshark closes
memx_memxequities_instrumentdirectory_csv_v2026_10_14.file.handler.read_close = function(file, capture)
  return true
end

memx_memxequities_instrumentdirectory_csv_v2026_10_14.file.handler.seq_read_close = function(file, capture)
  return true
end

-- Register Memx MemxEquities InstrumentDirectory Csv 2026.10.14 (Omi) files
register_filehandler(memx_memxequities_instrumentdirectory_csv_v2026_10_14.file.handler)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: The Members Exchange
--   Version: 2026.10.14
--   Date: Wednesday, October 14, 2026
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
