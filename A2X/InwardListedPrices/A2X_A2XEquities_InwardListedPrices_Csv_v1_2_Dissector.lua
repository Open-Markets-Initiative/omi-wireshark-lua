-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- A2X A2XEquities InwardListedPrices Csv 1.2 Protocol
local omi_a2x_a2xequities_inwardlistedprices_csv_v1_2 = Proto("Omi.A2X.A2XEquities.InwardListedPrices.Csv.v1.2", "A2X A2XEquities InwardListedPrices Csv 1.2")

-- Protocol table
local a2x_a2xequities_inwardlistedprices_csv_v1_2 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- A2X A2XEquities InwardListedPrices Csv 1.2 Fields
omi_a2x_a2xequities_inwardlistedprices_csv_v1_2.fields.record_inward_listed_prices = ProtoField.new("Inward Listed Prices", "a2x.a2xequities.inwardlistedprices.csv.v1.2.record.inwardlistedprices", ftypes.STRING, nil, nil)
omi_a2x_a2xequities_inwardlistedprices_csv_v1_2.fields.securityid = ProtoField.new("SecurityID", "a2x.a2xequities.inwardlistedprices.csv.v1.2.securityid", ftypes.UINT64, nil, nil, nil, "A2X Security ID")
omi_a2x_a2xequities_inwardlistedprices_csv_v1_2.fields.openingprice = ProtoField.new("OpeningPrice", "a2x.a2xequities.inwardlistedprices.csv.v1.2.openingprice", ftypes.UINT64, nil, nil, nil, "Opening price of the security in minor currency with 5 implied decimals.")
omi_a2x_a2xequities_inwardlistedprices_csv_v1_2.fields.openingpricesource = ProtoField.new("OpeningPriceSource", "a2x.a2xequities.inwardlistedprices.csv.v1.2.openingpricesource", ftypes.STRING, nil, nil, nil, "Description to indicate the source of the opening price")
omi_a2x_a2xequities_inwardlistedprices_csv_v1_2.fields.previouscloseprice = ProtoField.new("PreviousClosePrice", "a2x.a2xequities.inwardlistedprices.csv.v1.2.previouscloseprice", ftypes.DOUBLE, nil, nil, nil, "Closing price from the previous trading session")
omi_a2x_a2xequities_inwardlistedprices_csv_v1_2.fields.closingpricesource = ProtoField.new("ClosingPriceSource", "a2x.a2xequities.inwardlistedprices.csv.v1.2.closingpricesource", ftypes.STRING, nil, nil, nil, "Description to indicate the source of the previous closing price")
omi_a2x_a2xequities_inwardlistedprices_csv_v1_2.fields.previoustradedate = ProtoField.new("PreviousTradeDate", "a2x.a2xequities.inwardlistedprices.csv.v1.2.previoustradedate", ftypes.STRING, nil, nil, nil, "The previous trade date")
omi_a2x_a2xequities_inwardlistedprices_csv_v1_2.fields.header_row = ProtoField.new("Header Row", "a2x.a2xequities.inwardlistedprices.csv.v1.2.headerrow", ftypes.STRING, nil, nil, nil, "The line naming a file's columns, which states the layout its lines are read in")
omi_a2x_a2xequities_inwardlistedprices_csv_v1_2.fields.line_outside_layout = ProtoField.new("Line Outside Layout", "a2x.a2xequities.inwardlistedprices.csv.v1.2.lineoutsidelayout", ftypes.STRING, nil, nil, nil, "A line the layout does not read: no header row, and not the record")

-----------------------------------------------------------------------
-- Declare Dissection Experts
-----------------------------------------------------------------------

-- A line the layout does not read
omi_a2x_a2xequities_inwardlistedprices_csv_v1_2.experts.line_outside_layout = ProtoExpert.new("a2x.a2xequities.inwardlistedprices.csv.v1.2.lineoutsidelayout.expert", "Line Outside Layout", expert.group.MALFORMED, expert.severity.WARN)

-----------------------------------------------------------------------
-- Protocol Primitives
-----------------------------------------------------------------------

-- The readings a field calls with its own traits, and the line being dissected
a2x_a2xequities_inwardlistedprices_csv_v1_2.lines = {}

-- A line split at a delimiter, from an offset: where each field starts, and its length
a2x_a2xequities_inwardlistedprices_csv_v1_2.lines.split = function(offset, delimiter)
  local line = a2x_a2xequities_inwardlistedprices_csv_v1_2.lines.current
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
a2x_a2xequities_inwardlistedprices_csv_v1_2.lines.scan = function(offset, delimiter)
  local line = a2x_a2xequities_inwardlistedprices_csv_v1_2.lines.current
  local at = string.find(line, delimiter, offset + 1, true)
  if at == nil then
    return #line - offset, #line + 1
  end
  return at - 1 - offset, at - 1 + #delimiter
end
-- A decimal's text that states no places: its text, exactly, where it reads as a decimal (an optional
-- minus sign, digits and a point); nil and why where it does not
a2x_a2xequities_inwardlistedprices_csv_v1_2.lines.decimal = function(text)
  if string.find(text, "^%-?%d*%.?%d*$") == nil or string.find(text, "%d") == nil then
    return nil, "is not a decimal"
  end
  return text
end
-- An unsigned integer's text, exactly, as a UInt64: a Lua number holds 15 digits exactly, and more are
-- held in two parts; nil and why where it is not one
a2x_a2xequities_inwardlistedprices_csv_v1_2.lines.unsigned = function(text)
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

-- SecurityID
a2x_a2xequities_inwardlistedprices_csv_v1_2.securityid = {}

-- SecurityID ends at ","
a2x_a2xequities_inwardlistedprices_csv_v1_2.securityid.delimiter = ","
-- SecurityID is an unsigned integer

-- Display: SecurityID
a2x_a2xequities_inwardlistedprices_csv_v1_2.securityid.display = function(value)
  return "SecurityID: "..value
end

-- Dissect: SecurityID
a2x_a2xequities_inwardlistedprices_csv_v1_2.securityid.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #a2x_a2xequities_inwardlistedprices_csv_v1_2.lines.current then
    return nil, "the line stops before SecurityID"
  end
  local index = nil
  if length == nil then
    length, index = a2x_a2xequities_inwardlistedprices_csv_v1_2.lines.scan(offset, a2x_a2xequities_inwardlistedprices_csv_v1_2.securityid.delimiter)
  end
  local text = string.sub(a2x_a2xequities_inwardlistedprices_csv_v1_2.lines.current, offset + 1, offset + length)
  local value, failure = a2x_a2xequities_inwardlistedprices_csv_v1_2.lines.unsigned(text)
  if value == nil then
    return nil, "SecurityID \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_a2x_a2xequities_inwardlistedprices_csv_v1_2.fields.securityid, buffer(offset, length), value, a2x_a2xequities_inwardlistedprices_csv_v1_2.securityid.display(tostring(value)))
  end
  return index
end

-- OpeningPrice
a2x_a2xequities_inwardlistedprices_csv_v1_2.openingprice = {}

-- OpeningPrice ends at ","
a2x_a2xequities_inwardlistedprices_csv_v1_2.openingprice.delimiter = ","
-- OpeningPrice is an unsigned integer

-- Display: OpeningPrice
a2x_a2xequities_inwardlistedprices_csv_v1_2.openingprice.display = function(value)
  return "OpeningPrice: "..value
end

-- Dissect: OpeningPrice
a2x_a2xequities_inwardlistedprices_csv_v1_2.openingprice.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #a2x_a2xequities_inwardlistedprices_csv_v1_2.lines.current then
    return nil, "the line stops before OpeningPrice"
  end
  local index = nil
  if length == nil then
    length, index = a2x_a2xequities_inwardlistedprices_csv_v1_2.lines.scan(offset, a2x_a2xequities_inwardlistedprices_csv_v1_2.openingprice.delimiter)
  end
  local text = string.sub(a2x_a2xequities_inwardlistedprices_csv_v1_2.lines.current, offset + 1, offset + length)
  local value, failure = a2x_a2xequities_inwardlistedprices_csv_v1_2.lines.unsigned(text)
  if value == nil then
    return nil, "OpeningPrice \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_a2x_a2xequities_inwardlistedprices_csv_v1_2.fields.openingprice, buffer(offset, length), value, a2x_a2xequities_inwardlistedprices_csv_v1_2.openingprice.display(tostring(value)))
  end
  return index
end

-- OpeningPriceSource
a2x_a2xequities_inwardlistedprices_csv_v1_2.openingpricesource = {}

-- OpeningPriceSource ends at ","
a2x_a2xequities_inwardlistedprices_csv_v1_2.openingpricesource.delimiter = ","
-- OpeningPriceSource is text in Ascii
a2x_a2xequities_inwardlistedprices_csv_v1_2.openingpricesource.encoding = ENC_ASCII

-- Display: OpeningPriceSource
a2x_a2xequities_inwardlistedprices_csv_v1_2.openingpricesource.labels = {
  ["Primary"] = "OpeningPriceSource: Primary (Primary)",
  ["PreviousClose"] = "OpeningPriceSource: Previous Close (PreviousClose)",
  ["SurveillanceAlignment"] = "OpeningPriceSource: Surveillance Alignment (SurveillanceAlignment)",
}

a2x_a2xequities_inwardlistedprices_csv_v1_2.openingpricesource.display = function(value)
  return a2x_a2xequities_inwardlistedprices_csv_v1_2.openingpricesource.labels[value] or "OpeningPriceSource: Unknown("..value..")"
end

-- Dissect: OpeningPriceSource
a2x_a2xequities_inwardlistedprices_csv_v1_2.openingpricesource.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #a2x_a2xequities_inwardlistedprices_csv_v1_2.lines.current then
    return nil, "the line stops before OpeningPriceSource"
  end
  local index = nil
  if length == nil then
    length, index = a2x_a2xequities_inwardlistedprices_csv_v1_2.lines.scan(offset, a2x_a2xequities_inwardlistedprices_csv_v1_2.openingpricesource.delimiter)
  end
  local text = string.sub(a2x_a2xequities_inwardlistedprices_csv_v1_2.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_a2x_a2xequities_inwardlistedprices_csv_v1_2.fields.openingpricesource, buffer(offset, length), text, a2x_a2xequities_inwardlistedprices_csv_v1_2.openingpricesource.display(text))
  end
  return index
end

-- PreviousClosePrice
a2x_a2xequities_inwardlistedprices_csv_v1_2.previouscloseprice = {}

-- PreviousClosePrice ends at ","
a2x_a2xequities_inwardlistedprices_csv_v1_2.previouscloseprice.delimiter = ","
-- PreviousClosePrice is a decimal that states no Scale: shown as its text, its places the line's

-- Display: PreviousClosePrice
a2x_a2xequities_inwardlistedprices_csv_v1_2.previouscloseprice.display = function(value)
  return "PreviousClosePrice: "..value
end

-- Dissect: PreviousClosePrice
a2x_a2xequities_inwardlistedprices_csv_v1_2.previouscloseprice.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #a2x_a2xequities_inwardlistedprices_csv_v1_2.lines.current then
    return nil, "the line stops before PreviousClosePrice"
  end
  local index = nil
  if length == nil then
    length, index = a2x_a2xequities_inwardlistedprices_csv_v1_2.lines.scan(offset, a2x_a2xequities_inwardlistedprices_csv_v1_2.previouscloseprice.delimiter)
  end
  local text = string.sub(a2x_a2xequities_inwardlistedprices_csv_v1_2.lines.current, offset + 1, offset + length)
  if text == "0" then
    if parent ~= nil then
      parent:add(buffer(offset, length), "PreviousClosePrice: No Value")
    end
    return index
  end
  -- its text, exactly: it states no places to read it to
  local exact, failure = a2x_a2xequities_inwardlistedprices_csv_v1_2.lines.decimal(text)
  if exact == nil then
    return nil, "PreviousClosePrice \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_a2x_a2xequities_inwardlistedprices_csv_v1_2.fields.previouscloseprice, buffer(offset, length), tonumber(text), a2x_a2xequities_inwardlistedprices_csv_v1_2.previouscloseprice.display(exact))
  end
  return index
end

-- ClosingPriceSource
a2x_a2xequities_inwardlistedprices_csv_v1_2.closingpricesource = {}

-- ClosingPriceSource ends at ","
a2x_a2xequities_inwardlistedprices_csv_v1_2.closingpricesource.delimiter = ","
-- ClosingPriceSource is text in Ascii
a2x_a2xequities_inwardlistedprices_csv_v1_2.closingpricesource.encoding = ENC_ASCII

-- Display: ClosingPriceSource
a2x_a2xequities_inwardlistedprices_csv_v1_2.closingpricesource.labels = {
  ["NewListing"] = "ClosingPriceSource: New Listing (NewListing)",
  ["BBO-MidPoint"] = "ClosingPriceSource: Bbo Mid Point (BBO-MidPoint)",
  ["VWAP"] = "ClosingPriceSource: Vwap (VWAP)",
  ["LastTrade"] = "ClosingPriceSource: Last Trade (LastTrade)",
  ["PreviousClose"] = "ClosingPriceSource: Previous Close (PreviousClose)",
}

a2x_a2xequities_inwardlistedprices_csv_v1_2.closingpricesource.display = function(value)
  return a2x_a2xequities_inwardlistedprices_csv_v1_2.closingpricesource.labels[value] or "ClosingPriceSource: Unknown("..value..")"
end

-- Dissect: ClosingPriceSource
a2x_a2xequities_inwardlistedprices_csv_v1_2.closingpricesource.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #a2x_a2xequities_inwardlistedprices_csv_v1_2.lines.current then
    return nil, "the line stops before ClosingPriceSource"
  end
  local index = nil
  if length == nil then
    length, index = a2x_a2xequities_inwardlistedprices_csv_v1_2.lines.scan(offset, a2x_a2xequities_inwardlistedprices_csv_v1_2.closingpricesource.delimiter)
  end
  local text = string.sub(a2x_a2xequities_inwardlistedprices_csv_v1_2.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_a2x_a2xequities_inwardlistedprices_csv_v1_2.fields.closingpricesource, buffer(offset, length), text, a2x_a2xequities_inwardlistedprices_csv_v1_2.closingpricesource.display(text))
  end
  return index
end

-- PreviousTradeDate
a2x_a2xequities_inwardlistedprices_csv_v1_2.previoustradedate = {}

-- PreviousTradeDate ends at ","
a2x_a2xequities_inwardlistedprices_csv_v1_2.previoustradedate.delimiter = ","
-- PreviousTradeDate is text in Ascii
a2x_a2xequities_inwardlistedprices_csv_v1_2.previoustradedate.encoding = ENC_ASCII

-- Display: PreviousTradeDate
a2x_a2xequities_inwardlistedprices_csv_v1_2.previoustradedate.display = function(value)
  return "PreviousTradeDate: "..value
end

-- Dissect: PreviousTradeDate
a2x_a2xequities_inwardlistedprices_csv_v1_2.previoustradedate.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #a2x_a2xequities_inwardlistedprices_csv_v1_2.lines.current then
    return nil, "the line stops before PreviousTradeDate"
  end
  local index = nil
  if length == nil then
    length, index = a2x_a2xequities_inwardlistedprices_csv_v1_2.lines.scan(offset, a2x_a2xequities_inwardlistedprices_csv_v1_2.previoustradedate.delimiter)
  end
  local text = string.sub(a2x_a2xequities_inwardlistedprices_csv_v1_2.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_a2x_a2xequities_inwardlistedprices_csv_v1_2.fields.previoustradedate, buffer(offset, length), text, a2x_a2xequities_inwardlistedprices_csv_v1_2.previoustradedate.display(text))
  end
  return index
end


-----------------------------------------------------------------------
-- Protocol Records
-----------------------------------------------------------------------

-- Inward Listed Prices
a2x_a2xequities_inwardlistedprices_csv_v1_2.record_inward_listed_prices = {}

-- The delimiter every field of Inward Listed Prices ends at, which its line is split at
a2x_a2xequities_inwardlistedprices_csv_v1_2.record_inward_listed_prices.delimiter = ","

-- Dissect Fields: Inward Listed Prices
-- Split: every field of Inward Listed Prices ends at "," and none is quoted, so its line is split once and each field handed its range
a2x_a2xequities_inwardlistedprices_csv_v1_2.record_inward_listed_prices.fields = function(buffer, offset, packet, parent)
  local starts, lengths = a2x_a2xequities_inwardlistedprices_csv_v1_2.lines.split(offset, a2x_a2xequities_inwardlistedprices_csv_v1_2.record_inward_listed_prices.delimiter)
  if #starts > 6 then
    return nil, "Inward Listed Prices: the line has " .. #starts .. " fields, its layout 6"
  end
  local index = nil
  local failure = nil

  -- SecurityID: field 1
  index, failure = a2x_a2xequities_inwardlistedprices_csv_v1_2.securityid.dissect(buffer, starts[1], packet, parent, lengths[1])
  if failure ~= nil then
    return nil, failure
  end

  -- OpeningPrice: field 2
  index, failure = a2x_a2xequities_inwardlistedprices_csv_v1_2.openingprice.dissect(buffer, starts[2], packet, parent, lengths[2])
  if failure ~= nil then
    return nil, failure
  end

  -- OpeningPriceSource: field 3
  index, failure = a2x_a2xequities_inwardlistedprices_csv_v1_2.openingpricesource.dissect(buffer, starts[3], packet, parent, lengths[3])
  if failure ~= nil then
    return nil, failure
  end

  -- PreviousClosePrice: field 4
  index, failure = a2x_a2xequities_inwardlistedprices_csv_v1_2.previouscloseprice.dissect(buffer, starts[4], packet, parent, lengths[4])
  if failure ~= nil then
    return nil, failure
  end

  -- ClosingPriceSource: field 5
  index, failure = a2x_a2xequities_inwardlistedprices_csv_v1_2.closingpricesource.dissect(buffer, starts[5], packet, parent, lengths[5])
  if failure ~= nil then
    return nil, failure
  end

  -- PreviousTradeDate: field 6
  index, failure = a2x_a2xequities_inwardlistedprices_csv_v1_2.previoustradedate.dissect(buffer, starts[6], packet, parent, lengths[6])
  if failure ~= nil then
    return nil, failure
  end

  return #a2x_a2xequities_inwardlistedprices_csv_v1_2.lines.current + 1
end

-- Dissect: Inward Listed Prices
a2x_a2xequities_inwardlistedprices_csv_v1_2.record_inward_listed_prices.dissect = function(buffer, offset, packet, parent)
  local element = parent:add(omi_a2x_a2xequities_inwardlistedprices_csv_v1_2.fields.record_inward_listed_prices, buffer(), "Inward Listed Prices", "Inward Listed Prices")
  return a2x_a2xequities_inwardlistedprices_csv_v1_2.record_inward_listed_prices.fields(buffer, offset, packet, element)
end


-----------------------------------------------------------------------
-- Protocol Lines
-----------------------------------------------------------------------

-- The text between a line's fields, its Packet rule's Delimiter: ","
a2x_a2xequities_inwardlistedprices_csv_v1_2.delimiter = ","

-- The character ending a line, its Packet rule's Terminator: 10
a2x_a2xequities_inwardlistedprices_csv_v1_2.terminator = "\010"

-- The layouts a file states in its header, in model order: the header lines each states
a2x_a2xequities_inwardlistedprices_csv_v1_2.variants = {
  {
    name = "InwardListedPrices.v1.2",
    headers = { "SecurityID,OpeningPrice,OpeningPriceSource,PreviousClosePrice,ClosingPriceSource,PreviousTradeDate" },
  },
}

-- The layout the file's lines are read by: the one its file handler found, the first where none did
a2x_a2xequities_inwardlistedprices_csv_v1_2.variant = function()
  if a2x_a2xequities_inwardlistedprices_csv_v1_2.file == nil or a2x_a2xequities_inwardlistedprices_csv_v1_2.file.variant == nil then
    return 1
  end
  return a2x_a2xequities_inwardlistedprices_csv_v1_2.file.variant
end

-- A header line: its layout, and its columns
a2x_a2xequities_inwardlistedprices_csv_v1_2.header = function(buffer, packet, parent, variant)
  packet.cols.info = "Header Row"
  local name = a2x_a2xequities_inwardlistedprices_csv_v1_2.variants[variant].name
  local item = parent:add(omi_a2x_a2xequities_inwardlistedprices_csv_v1_2.fields.header_row, buffer(), name, "Header Row: " .. name)
  local starts, lengths = a2x_a2xequities_inwardlistedprices_csv_v1_2.lines.split(0, a2x_a2xequities_inwardlistedprices_csv_v1_2.delimiter)
  for index = 1, #starts do
    local range = buffer(starts[index], lengths[index])
    item:add(range, "Column " .. index .. ": " .. range:string(ENC_ASCII))
  end
end

-- A line the layout does not read, and why: its fields, as they are
a2x_a2xequities_inwardlistedprices_csv_v1_2.outside = function(buffer, packet, parent, reason)
  packet.cols.info = "Line Outside Layout"
  local item = parent:add(omi_a2x_a2xequities_inwardlistedprices_csv_v1_2.fields.line_outside_layout, buffer(), reason, "Line Outside Layout: " .. reason)
  item:add_proto_expert_info(omi_a2x_a2xequities_inwardlistedprices_csv_v1_2.experts.line_outside_layout, reason)
  local starts, lengths = a2x_a2xequities_inwardlistedprices_csv_v1_2.lines.split(0, a2x_a2xequities_inwardlistedprices_csv_v1_2.delimiter)
  for index = 1, #starts do
    local range = buffer(starts[index], lengths[index])
    item:add(range, "Field " .. index .. ": " .. range:string(ENC_ASCII))
  end
end

-- Is a line one of the layout's header lines?
a2x_a2xequities_inwardlistedprices_csv_v1_2.headed = function(line, variant)
  for index, header in ipairs(a2x_a2xequities_inwardlistedprices_csv_v1_2.variants[variant].headers) do
    if line == header then
      return true
    end
  end
  return false
end

-- Does a line read as the layout's: a header line, or Inward Listed Prices?
a2x_a2xequities_inwardlistedprices_csv_v1_2.reads = function(buffer, packet, line)
  a2x_a2xequities_inwardlistedprices_csv_v1_2.lines.current = line
  local variant = a2x_a2xequities_inwardlistedprices_csv_v1_2.variant()
  if a2x_a2xequities_inwardlistedprices_csv_v1_2.headed(line, variant) then
    return true
  end
  local index, failure = a2x_a2xequities_inwardlistedprices_csv_v1_2.record_inward_listed_prices.fields(buffer, 0, packet, nil)
  return failure == nil
end

-- Dissect a line: a header line, or Inward Listed Prices, or a line outside the layout
a2x_a2xequities_inwardlistedprices_csv_v1_2.line = function(buffer, packet, parent)
  local line = buffer:raw()
  a2x_a2xequities_inwardlistedprices_csv_v1_2.lines.current = line
  local variant = a2x_a2xequities_inwardlistedprices_csv_v1_2.variant()
  if a2x_a2xequities_inwardlistedprices_csv_v1_2.headed(line, variant) then
    return a2x_a2xequities_inwardlistedprices_csv_v1_2.header(buffer, packet, parent, variant)
  end

  -- read first with no tree, so a line the layout does not read is shown whole
  local index, failure = a2x_a2xequities_inwardlistedprices_csv_v1_2.record_inward_listed_prices.fields(buffer, 0, packet, nil)
  if failure ~= nil then
    return a2x_a2xequities_inwardlistedprices_csv_v1_2.outside(buffer, packet, parent, failure)
  end

  packet.cols.info = "Inward Listed Prices"
  a2x_a2xequities_inwardlistedprices_csv_v1_2.record_inward_listed_prices.dissect(buffer, 0, packet, parent)
end
-- Dissect A2X A2XEquities InwardListedPrices Csv 1.2
function omi_a2x_a2xequities_inwardlistedprices_csv_v1_2.dissector(buffer, packet, parent)
  packet.cols.protocol = omi_a2x_a2xequities_inwardlistedprices_csv_v1_2.name

  local protocol = parent:add(omi_a2x_a2xequities_inwardlistedprices_csv_v1_2, buffer(), omi_a2x_a2xequities_inwardlistedprices_csv_v1_2.description, "(" .. buffer:len() .. " Bytes)")
  return a2x_a2xequities_inwardlistedprices_csv_v1_2.line(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- File Lines
-----------------------------------------------------------------------

-- A file's line, the one at an offset or with none the next, to the terminator: its offset, its text,
-- and its frame's time. The file is read a block at a time, the block kept in the capture's private
-- table; a line read again reads a block of its own
a2x_a2xequities_inwardlistedprices_csv_v1_2.read = function(file, capture, offset)
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
    local ends = string.find(block.data, a2x_a2xequities_inwardlistedprices_csv_v1_2.terminator, block.at, true)
    if ends ~= nil then
      start = block.offset + block.at - 1
      line = string.sub(block.data, block.at, ends - 1)
      block.at = ends + #a2x_a2xequities_inwardlistedprices_csv_v1_2.terminator
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
a2x_a2xequities_inwardlistedprices_csv_v1_2.file = {}

-- Exported pdu tags each frame starts with: the dissector it is for, then the end of the tags
a2x_a2xequities_inwardlistedprices_csv_v1_2.file.prefix = "\000\012\000\048omi.a2x.a2xequities.inwardlistedprices.csv.v1.2\000\000\000\000\000"

-- The text a file of each layout starts with
a2x_a2xequities_inwardlistedprices_csv_v1_2.file.signatures = {
  "SecurityID,OpeningPrice,OpeningPriceSource,PreviousClosePrice,ClosingPriceSource,PreviousTradeDate\010",
}

-- The layout a file's first bytes are the signature of, or nil for a file of no layout
a2x_a2xequities_inwardlistedprices_csv_v1_2.file.layout = function(file)
  local first = file:read(99)
  if first == nil then
    return nil
  end
  for index, signature in ipairs(a2x_a2xequities_inwardlistedprices_csv_v1_2.file.signatures) do
    if first:sub(1, #signature) == signature then
      return index
    end
  end
  return nil
end

-- A record read into a frame, the one at an offset or with none the next: its offset, nil at the end of the file
a2x_a2xequities_inwardlistedprices_csv_v1_2.file.frame = function(file, capture, frame, offset)
  local at, data, seconds, nanoseconds = a2x_a2xequities_inwardlistedprices_csv_v1_2.read(file, capture, offset)
  if at == nil then
    return nil
  end
  data = a2x_a2xequities_inwardlistedprices_csv_v1_2.file.prefix .. data
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

-- A2X A2XEquities InwardListedPrices Csv 1.2 (Omi) file handler: a magic number reader, its signatures the magic
a2x_a2xequities_inwardlistedprices_csv_v1_2.file.handler = FileHandler.new("A2X A2XEquities InwardListedPrices Csv 1.2 (Omi)", "omi_a2x_a2xequities_inwardlistedprices_csv_v1_2", "A2X A2XEquities InwardListedPrices Csv 1.2 (Omi) file", "rm")

-- A file of a layout is this protocol's; read from its start, so its first line is the first frame
a2x_a2xequities_inwardlistedprices_csv_v1_2.file.handler.read_open = function(file, capture)
  local layout = a2x_a2xequities_inwardlistedprices_csv_v1_2.file.layout(file)
  if layout == nil then
    return false
  end
  a2x_a2xequities_inwardlistedprices_csv_v1_2.file.variant = layout
  file:seek("set", 0)
  capture.private_table = {}
  capture.encap = wtap_encaps.WIRESHARK_UPPER_PDU
  capture.time_precision = wtap_tsprecs.NSEC
  return true
end

-- The next record, returning its offset in the file
a2x_a2xequities_inwardlistedprices_csv_v1_2.file.handler.read = function(file, capture, frame)
  local offset = a2x_a2xequities_inwardlistedprices_csv_v1_2.file.frame(file, capture, frame, nil)
  if offset == nil then
    return false
  end
  return offset
end

-- The record at an offset read before
a2x_a2xequities_inwardlistedprices_csv_v1_2.file.handler.seek_read = function(file, capture, frame, offset)
  return a2x_a2xequities_inwardlistedprices_csv_v1_2.file.frame(file, capture, frame, offset) ~= nil
end

-- Nothing is held open beyond the file Wireshark closes
a2x_a2xequities_inwardlistedprices_csv_v1_2.file.handler.read_close = function(file, capture)
  return true
end

a2x_a2xequities_inwardlistedprices_csv_v1_2.file.handler.seq_read_close = function(file, capture)
  return true
end

-- Register A2X A2XEquities InwardListedPrices Csv 1.2 (Omi) files
register_filehandler(a2x_a2xequities_inwardlistedprices_csv_v1_2.file.handler)

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
