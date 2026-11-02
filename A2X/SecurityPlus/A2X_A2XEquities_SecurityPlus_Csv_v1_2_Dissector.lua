-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- A2X A2XEquities SecurityPlus Csv 1.2 Protocol
local omi_a2x_a2xequities_securityplus_csv_v1_2 = Proto("Omi.A2X.A2XEquities.SecurityPlus.Csv.v1.2", "A2X A2XEquities SecurityPlus Csv 1.2")

-- Protocol table
local a2x_a2xequities_securityplus_csv_v1_2 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- A2X A2XEquities SecurityPlus Csv 1.2 Fields
omi_a2x_a2xequities_securityplus_csv_v1_2.fields.record_security_plus = ProtoField.new("Security Plus", "a2x.a2xequities.securityplus.csv.v1.2.record.securityplus", ftypes.STRING, nil, nil)
omi_a2x_a2xequities_securityplus_csv_v1_2.fields.id = ProtoField.new("id", "a2x.a2xequities.securityplus.csv.v1.2.id", ftypes.UINT64, nil, nil, nil, "A2X Security ID")
omi_a2x_a2xequities_securityplus_csv_v1_2.fields.security_name = ProtoField.new("Security Name", "a2x.a2xequities.securityplus.csv.v1.2.securityname", ftypes.STRING, nil, nil, nil, "Security description")
omi_a2x_a2xequities_securityplus_csv_v1_2.fields.primaryric = ProtoField.new("PrimaryRic", "a2x.a2xequities.securityplus.csv.v1.2.primaryric", ftypes.STRING, nil, nil, nil, "Reuters Instrument Code for security on the primary venue")
omi_a2x_a2xequities_securityplus_csv_v1_2.fields.primarybbg = ProtoField.new("PrimaryBBG", "a2x.a2xequities.securityplus.csv.v1.2.primarybbg", ftypes.STRING, nil, nil, nil, "Bloomberg Global ID for security on the primary venue")
omi_a2x_a2xequities_securityplus_csv_v1_2.fields.isin = ProtoField.new("ISIN", "a2x.a2xequities.securityplus.csv.v1.2.isin", ftypes.STRING, nil, nil, nil, "International Securities Identification Number")
omi_a2x_a2xequities_securityplus_csv_v1_2.fields.currencycode = ProtoField.new("CurrencyCode", "a2x.a2xequities.securityplus.csv.v1.2.currencycode", ftypes.STRING, nil, nil, nil, "Currency Code")
omi_a2x_a2xequities_securityplus_csv_v1_2.fields.primarymic = ProtoField.new("PrimaryMIC", "a2x.a2xequities.securityplus.csv.v1.2.primarymic", ftypes.STRING, nil, nil, nil, "Market Instrument Code of primary venue")
omi_a2x_a2xequities_securityplus_csv_v1_2.fields.a2xric = ProtoField.new("A2XRic", "a2x.a2xequities.securityplus.csv.v1.2.a2xric", ftypes.STRING, nil, nil, nil, "Reuters Instrument Code for security on A2X")
omi_a2x_a2xequities_securityplus_csv_v1_2.fields.a2xbbg = ProtoField.new("A2XBbg", "a2x.a2xequities.securityplus.csv.v1.2.a2xbbg", ftypes.STRING, nil, nil, nil, "Bloomberg Global ID for security on A2X")
omi_a2x_a2xequities_securityplus_csv_v1_2.fields.umtfcode = ProtoField.new("UMTFCode", "a2x.a2xequities.securityplus.csv.v1.2.umtfcode", ftypes.STRING, nil, nil, nil, "Uniform Symbology")
omi_a2x_a2xequities_securityplus_csv_v1_2.fields.macenabled = ProtoField.new("MaCEnabled", "a2x.a2xequities.securityplus.csv.v1.2.macenabled", ftypes.STRING, nil, nil, nil, "Whether the security is eligible for the Market at Close auction.")
omi_a2x_a2xequities_securityplus_csv_v1_2.fields.aodenabled = ProtoField.new("AoDEnabled", "a2x.a2xequities.securityplus.csv.v1.2.aodenabled", ftypes.STRING, nil, nil, nil, "Shows if the security partakes in the Auction on Demand.")
omi_a2x_a2xequities_securityplus_csv_v1_2.fields.minimumlargeinscale = ProtoField.new("MinimumLargeInScale", "a2x.a2xequities.securityplus.csv.v1.2.minimumlargeinscale", ftypes.UINT64, nil, nil, nil, "Minimum value for LIS trades in major currency with 5 implied decimals")
omi_a2x_a2xequities_securityplus_csv_v1_2.fields.active = ProtoField.new("Active", "a2x.a2xequities.securityplus.csv.v1.2.active", ftypes.STRING, nil, nil, nil, "Whether a security is enabled and active for the current trading session.")
omi_a2x_a2xequities_securityplus_csv_v1_2.fields.a2xlistingdate = ProtoField.new("A2XListingDate", "a2x.a2xequities.securityplus.csv.v1.2.a2xlistingdate", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date security listed on A2X, formatted as YYYY-MM-DD")
omi_a2x_a2xequities_securityplus_csv_v1_2.fields.a2xdelistingdate = ProtoField.new("A2XDelistingDate", "a2x.a2xequities.securityplus.csv.v1.2.a2xdelistingdate", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date security will delist on A2X, formatted as YYYY-MM-DD")
omi_a2x_a2xequities_securityplus_csv_v1_2.fields.tradingcontrolid = ProtoField.new("TradingControlID", "a2x.a2xequities.securityplus.csv.v1.2.tradingcontrolid", ftypes.STRING, nil, nil, nil, "This is the name of the functional trading control that is used for price variance from the previous uncrossing of the reference market.")
omi_a2x_a2xequities_securityplus_csv_v1_2.fields.header_row = ProtoField.new("Header Row", "a2x.a2xequities.securityplus.csv.v1.2.headerrow", ftypes.STRING, nil, nil, nil, "The line naming a file's columns, which states the layout its lines are read in")
omi_a2x_a2xequities_securityplus_csv_v1_2.fields.line_outside_layout = ProtoField.new("Line Outside Layout", "a2x.a2xequities.securityplus.csv.v1.2.lineoutsidelayout", ftypes.STRING, nil, nil, nil, "A line the layout does not read: no header row, and not the record")

-----------------------------------------------------------------------
-- Declare Dissection Experts
-----------------------------------------------------------------------

-- A line the layout does not read
omi_a2x_a2xequities_securityplus_csv_v1_2.experts.line_outside_layout = ProtoExpert.new("a2x.a2xequities.securityplus.csv.v1.2.lineoutsidelayout.expert", "Line Outside Layout", expert.group.MALFORMED, expert.severity.WARN)

-----------------------------------------------------------------------
-- Protocol Primitives
-----------------------------------------------------------------------

-- The readings a field calls with its own traits, and the line being dissected
a2x_a2xequities_securityplus_csv_v1_2.lines = {}

-- A line split at a delimiter, from an offset: where each field starts, and its length
a2x_a2xequities_securityplus_csv_v1_2.lines.split = function(offset, delimiter)
  local line = a2x_a2xequities_securityplus_csv_v1_2.lines.current
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
a2x_a2xequities_securityplus_csv_v1_2.lines.scan = function(offset, delimiter)
  local line = a2x_a2xequities_securityplus_csv_v1_2.lines.current
  local at = string.find(line, delimiter, offset + 1, true)
  if at == nil then
    return #line - offset, #line + 1
  end
  return at - 1 - offset, at - 1 + #delimiter
end
-- An unsigned integer's text, exactly, as a UInt64: a Lua number holds 15 digits exactly, and more are
-- held in two parts; nil and why where it is not one
a2x_a2xequities_securityplus_csv_v1_2.lines.unsigned = function(text)
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
-- Days since 1970-01-01 of a calendar date, or nil for text naming no day: eight digits,
-- or yyyy-mm-dd where the column states its dashes
a2x_a2xequities_securityplus_csv_v1_2.lines.days = function(text, dashed)
  local year, month, day
  if dashed then
    if #text ~= 10 or string.find(text, "^%d%d%d%d%-%d%d%-%d%d$") == nil then
      return nil
    end
    year = tonumber(string.sub(text, 1, 4))
    month = tonumber(string.sub(text, 6, 7))
    day = tonumber(string.sub(text, 9, 10))
  else
    if #text ~= 8 or string.find(text, "^%d+$") == nil then
      return nil
    end
    year = tonumber(string.sub(text, 1, 4))
    month = tonumber(string.sub(text, 5, 6))
    day = tonumber(string.sub(text, 7, 8))
  end
  local lengths = { 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 }
  if month < 1 or month > 12 or day < 1 then
    return nil
  end
  local length = lengths[month]
  if month == 2 and ((year % 4 == 0 and year % 100 ~= 0) or year % 400 == 0) then
    length = 29
  end
  if day > length then
    return nil
  end
  -- days from the civil calendar, counted in 400 year eras from a year starting in March
  local shifted = year
  if month <= 2 then
    shifted = year - 1
  end
  local era = math.floor(shifted / 400)
  local years = shifted - era * 400
  local days = math.floor((153 * ((month + 9) % 12) + 2) / 5) + day - 1
  local count = years * 365 + math.floor(years / 4) - math.floor(years / 100) + days
  return era * 146097 + count - 719468
end

-----------------------------------------------------------------------
-- Protocol Fields
-----------------------------------------------------------------------

-- id
a2x_a2xequities_securityplus_csv_v1_2.id = {}

-- id ends at ","
a2x_a2xequities_securityplus_csv_v1_2.id.delimiter = ","
-- id is an unsigned integer

-- Display: id
a2x_a2xequities_securityplus_csv_v1_2.id.display = function(value)
  return "id: "..value
end

-- Dissect: id
a2x_a2xequities_securityplus_csv_v1_2.id.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #a2x_a2xequities_securityplus_csv_v1_2.lines.current then
    return nil, "the line stops before id"
  end
  local index = nil
  if length == nil then
    length, index = a2x_a2xequities_securityplus_csv_v1_2.lines.scan(offset, a2x_a2xequities_securityplus_csv_v1_2.id.delimiter)
  end
  local text = string.sub(a2x_a2xequities_securityplus_csv_v1_2.lines.current, offset + 1, offset + length)
  local value, failure = a2x_a2xequities_securityplus_csv_v1_2.lines.unsigned(text)
  if value == nil then
    return nil, "id \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_a2x_a2xequities_securityplus_csv_v1_2.fields.id, buffer(offset, length), value, a2x_a2xequities_securityplus_csv_v1_2.id.display(tostring(value)))
  end
  return index
end

-- Security Name
a2x_a2xequities_securityplus_csv_v1_2.security_name = {}

-- Security Name ends at ","
a2x_a2xequities_securityplus_csv_v1_2.security_name.delimiter = ","
-- Security Name is text in Ascii
a2x_a2xequities_securityplus_csv_v1_2.security_name.encoding = ENC_ASCII

-- Display: Security Name
a2x_a2xequities_securityplus_csv_v1_2.security_name.display = function(value)
  return "Security Name: "..value
end

-- Dissect: Security Name
a2x_a2xequities_securityplus_csv_v1_2.security_name.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #a2x_a2xequities_securityplus_csv_v1_2.lines.current then
    return nil, "the line stops before Security Name"
  end
  local index = nil
  if length == nil then
    length, index = a2x_a2xequities_securityplus_csv_v1_2.lines.scan(offset, a2x_a2xequities_securityplus_csv_v1_2.security_name.delimiter)
  end
  local text = string.sub(a2x_a2xequities_securityplus_csv_v1_2.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_a2x_a2xequities_securityplus_csv_v1_2.fields.security_name, buffer(offset, length), text, a2x_a2xequities_securityplus_csv_v1_2.security_name.display(text))
  end
  return index
end

-- PrimaryRic
a2x_a2xequities_securityplus_csv_v1_2.primaryric = {}

-- PrimaryRic ends at ","
a2x_a2xequities_securityplus_csv_v1_2.primaryric.delimiter = ","
-- PrimaryRic is text in Ascii
a2x_a2xequities_securityplus_csv_v1_2.primaryric.encoding = ENC_ASCII

-- Display: PrimaryRic
a2x_a2xequities_securityplus_csv_v1_2.primaryric.display = function(value)
  return "PrimaryRic: "..value
end

-- Dissect: PrimaryRic
a2x_a2xequities_securityplus_csv_v1_2.primaryric.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #a2x_a2xequities_securityplus_csv_v1_2.lines.current then
    return nil, "the line stops before PrimaryRic"
  end
  local index = nil
  if length == nil then
    length, index = a2x_a2xequities_securityplus_csv_v1_2.lines.scan(offset, a2x_a2xequities_securityplus_csv_v1_2.primaryric.delimiter)
  end
  local text = string.sub(a2x_a2xequities_securityplus_csv_v1_2.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_a2x_a2xequities_securityplus_csv_v1_2.fields.primaryric, buffer(offset, length), text, a2x_a2xequities_securityplus_csv_v1_2.primaryric.display(text))
  end
  return index
end

-- PrimaryBBG
a2x_a2xequities_securityplus_csv_v1_2.primarybbg = {}

-- PrimaryBBG ends at ","
a2x_a2xequities_securityplus_csv_v1_2.primarybbg.delimiter = ","
-- PrimaryBBG is text in Ascii
a2x_a2xequities_securityplus_csv_v1_2.primarybbg.encoding = ENC_ASCII

-- Display: PrimaryBBG
a2x_a2xequities_securityplus_csv_v1_2.primarybbg.display = function(value)
  return "PrimaryBBG: "..value
end

-- Dissect: PrimaryBBG
a2x_a2xequities_securityplus_csv_v1_2.primarybbg.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #a2x_a2xequities_securityplus_csv_v1_2.lines.current then
    return nil, "the line stops before PrimaryBBG"
  end
  local index = nil
  if length == nil then
    length, index = a2x_a2xequities_securityplus_csv_v1_2.lines.scan(offset, a2x_a2xequities_securityplus_csv_v1_2.primarybbg.delimiter)
  end
  local text = string.sub(a2x_a2xequities_securityplus_csv_v1_2.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_a2x_a2xequities_securityplus_csv_v1_2.fields.primarybbg, buffer(offset, length), text, a2x_a2xequities_securityplus_csv_v1_2.primarybbg.display(text))
  end
  return index
end

-- ISIN
a2x_a2xequities_securityplus_csv_v1_2.isin = {}

-- ISIN ends at ","
a2x_a2xequities_securityplus_csv_v1_2.isin.delimiter = ","
-- ISIN is text in Ascii
a2x_a2xequities_securityplus_csv_v1_2.isin.encoding = ENC_ASCII

-- Display: ISIN
a2x_a2xequities_securityplus_csv_v1_2.isin.display = function(value)
  return "ISIN: "..value
end

-- Dissect: ISIN
a2x_a2xequities_securityplus_csv_v1_2.isin.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #a2x_a2xequities_securityplus_csv_v1_2.lines.current then
    return nil, "the line stops before ISIN"
  end
  local index = nil
  if length == nil then
    length, index = a2x_a2xequities_securityplus_csv_v1_2.lines.scan(offset, a2x_a2xequities_securityplus_csv_v1_2.isin.delimiter)
  end
  local text = string.sub(a2x_a2xequities_securityplus_csv_v1_2.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_a2x_a2xequities_securityplus_csv_v1_2.fields.isin, buffer(offset, length), text, a2x_a2xequities_securityplus_csv_v1_2.isin.display(text))
  end
  return index
end

-- CurrencyCode
a2x_a2xequities_securityplus_csv_v1_2.currencycode = {}

-- CurrencyCode ends at ","
a2x_a2xequities_securityplus_csv_v1_2.currencycode.delimiter = ","
-- CurrencyCode is text in Ascii
a2x_a2xequities_securityplus_csv_v1_2.currencycode.encoding = ENC_ASCII

-- Display: CurrencyCode
a2x_a2xequities_securityplus_csv_v1_2.currencycode.display = function(value)
  return "CurrencyCode: "..value
end

-- Dissect: CurrencyCode
a2x_a2xequities_securityplus_csv_v1_2.currencycode.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #a2x_a2xequities_securityplus_csv_v1_2.lines.current then
    return nil, "the line stops before CurrencyCode"
  end
  local index = nil
  if length == nil then
    length, index = a2x_a2xequities_securityplus_csv_v1_2.lines.scan(offset, a2x_a2xequities_securityplus_csv_v1_2.currencycode.delimiter)
  end
  local text = string.sub(a2x_a2xequities_securityplus_csv_v1_2.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_a2x_a2xequities_securityplus_csv_v1_2.fields.currencycode, buffer(offset, length), text, a2x_a2xequities_securityplus_csv_v1_2.currencycode.display(text))
  end
  return index
end

-- PrimaryMIC
a2x_a2xequities_securityplus_csv_v1_2.primarymic = {}

-- PrimaryMIC ends at ","
a2x_a2xequities_securityplus_csv_v1_2.primarymic.delimiter = ","
-- PrimaryMIC is text in Ascii
a2x_a2xequities_securityplus_csv_v1_2.primarymic.encoding = ENC_ASCII

-- Display: PrimaryMIC
a2x_a2xequities_securityplus_csv_v1_2.primarymic.display = function(value)
  return "PrimaryMIC: "..value
end

-- Dissect: PrimaryMIC
a2x_a2xequities_securityplus_csv_v1_2.primarymic.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #a2x_a2xequities_securityplus_csv_v1_2.lines.current then
    return nil, "the line stops before PrimaryMIC"
  end
  local index = nil
  if length == nil then
    length, index = a2x_a2xequities_securityplus_csv_v1_2.lines.scan(offset, a2x_a2xequities_securityplus_csv_v1_2.primarymic.delimiter)
  end
  local text = string.sub(a2x_a2xequities_securityplus_csv_v1_2.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_a2x_a2xequities_securityplus_csv_v1_2.fields.primarymic, buffer(offset, length), text, a2x_a2xequities_securityplus_csv_v1_2.primarymic.display(text))
  end
  return index
end

-- A2XRic
a2x_a2xequities_securityplus_csv_v1_2.a2xric = {}

-- A2XRic ends at ","
a2x_a2xequities_securityplus_csv_v1_2.a2xric.delimiter = ","
-- A2XRic is text in Ascii
a2x_a2xequities_securityplus_csv_v1_2.a2xric.encoding = ENC_ASCII

-- Display: A2XRic
a2x_a2xequities_securityplus_csv_v1_2.a2xric.display = function(value)
  return "A2XRic: "..value
end

-- Dissect: A2XRic
a2x_a2xequities_securityplus_csv_v1_2.a2xric.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #a2x_a2xequities_securityplus_csv_v1_2.lines.current then
    return nil, "the line stops before A2XRic"
  end
  local index = nil
  if length == nil then
    length, index = a2x_a2xequities_securityplus_csv_v1_2.lines.scan(offset, a2x_a2xequities_securityplus_csv_v1_2.a2xric.delimiter)
  end
  local text = string.sub(a2x_a2xequities_securityplus_csv_v1_2.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_a2x_a2xequities_securityplus_csv_v1_2.fields.a2xric, buffer(offset, length), text, a2x_a2xequities_securityplus_csv_v1_2.a2xric.display(text))
  end
  return index
end

-- A2XBbg
a2x_a2xequities_securityplus_csv_v1_2.a2xbbg = {}

-- A2XBbg ends at ","
a2x_a2xequities_securityplus_csv_v1_2.a2xbbg.delimiter = ","
-- A2XBbg is text in Ascii
a2x_a2xequities_securityplus_csv_v1_2.a2xbbg.encoding = ENC_ASCII

-- Display: A2XBbg
a2x_a2xequities_securityplus_csv_v1_2.a2xbbg.display = function(value)
  return "A2XBbg: "..value
end

-- Dissect: A2XBbg
a2x_a2xequities_securityplus_csv_v1_2.a2xbbg.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #a2x_a2xequities_securityplus_csv_v1_2.lines.current then
    return nil, "the line stops before A2XBbg"
  end
  local index = nil
  if length == nil then
    length, index = a2x_a2xequities_securityplus_csv_v1_2.lines.scan(offset, a2x_a2xequities_securityplus_csv_v1_2.a2xbbg.delimiter)
  end
  local text = string.sub(a2x_a2xequities_securityplus_csv_v1_2.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_a2x_a2xequities_securityplus_csv_v1_2.fields.a2xbbg, buffer(offset, length), text, a2x_a2xequities_securityplus_csv_v1_2.a2xbbg.display(text))
  end
  return index
end

-- UMTFCode
a2x_a2xequities_securityplus_csv_v1_2.umtfcode = {}

-- UMTFCode ends at ","
a2x_a2xequities_securityplus_csv_v1_2.umtfcode.delimiter = ","
-- UMTFCode is text in Ascii
a2x_a2xequities_securityplus_csv_v1_2.umtfcode.encoding = ENC_ASCII

-- Display: UMTFCode
a2x_a2xequities_securityplus_csv_v1_2.umtfcode.display = function(value)
  return "UMTFCode: "..value
end

-- Dissect: UMTFCode
a2x_a2xequities_securityplus_csv_v1_2.umtfcode.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #a2x_a2xequities_securityplus_csv_v1_2.lines.current then
    return nil, "the line stops before UMTFCode"
  end
  local index = nil
  if length == nil then
    length, index = a2x_a2xequities_securityplus_csv_v1_2.lines.scan(offset, a2x_a2xequities_securityplus_csv_v1_2.umtfcode.delimiter)
  end
  local text = string.sub(a2x_a2xequities_securityplus_csv_v1_2.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_a2x_a2xequities_securityplus_csv_v1_2.fields.umtfcode, buffer(offset, length), text, a2x_a2xequities_securityplus_csv_v1_2.umtfcode.display(text))
  end
  return index
end

-- MaCEnabled
a2x_a2xequities_securityplus_csv_v1_2.macenabled = {}

-- MaCEnabled ends at ","
a2x_a2xequities_securityplus_csv_v1_2.macenabled.delimiter = ","
-- MaCEnabled is text in Ascii
a2x_a2xequities_securityplus_csv_v1_2.macenabled.encoding = ENC_ASCII

-- Display: MaCEnabled
a2x_a2xequities_securityplus_csv_v1_2.macenabled.labels = {
  ["1"] = "MaCEnabled: Enabled (1)",
  ["0"] = "MaCEnabled: Disabled (0)",
}

a2x_a2xequities_securityplus_csv_v1_2.macenabled.display = function(value)
  return a2x_a2xequities_securityplus_csv_v1_2.macenabled.labels[value] or "MaCEnabled: Unknown("..value..")"
end

-- Dissect: MaCEnabled
a2x_a2xequities_securityplus_csv_v1_2.macenabled.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #a2x_a2xequities_securityplus_csv_v1_2.lines.current then
    return nil, "the line stops before MaCEnabled"
  end
  local index = nil
  if length == nil then
    length, index = a2x_a2xequities_securityplus_csv_v1_2.lines.scan(offset, a2x_a2xequities_securityplus_csv_v1_2.macenabled.delimiter)
  end
  local text = string.sub(a2x_a2xequities_securityplus_csv_v1_2.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_a2x_a2xequities_securityplus_csv_v1_2.fields.macenabled, buffer(offset, length), text, a2x_a2xequities_securityplus_csv_v1_2.macenabled.display(text))
  end
  return index
end

-- AoDEnabled
a2x_a2xequities_securityplus_csv_v1_2.aodenabled = {}

-- AoDEnabled ends at ","
a2x_a2xequities_securityplus_csv_v1_2.aodenabled.delimiter = ","
-- AoDEnabled is text in Ascii
a2x_a2xequities_securityplus_csv_v1_2.aodenabled.encoding = ENC_ASCII

-- Display: AoDEnabled
a2x_a2xequities_securityplus_csv_v1_2.aodenabled.labels = {
  ["1"] = "AoDEnabled: Enabled (1)",
  ["0"] = "AoDEnabled: Disabled (0)",
}

a2x_a2xequities_securityplus_csv_v1_2.aodenabled.display = function(value)
  return a2x_a2xequities_securityplus_csv_v1_2.aodenabled.labels[value] or "AoDEnabled: Unknown("..value..")"
end

-- Dissect: AoDEnabled
a2x_a2xequities_securityplus_csv_v1_2.aodenabled.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #a2x_a2xequities_securityplus_csv_v1_2.lines.current then
    return nil, "the line stops before AoDEnabled"
  end
  local index = nil
  if length == nil then
    length, index = a2x_a2xequities_securityplus_csv_v1_2.lines.scan(offset, a2x_a2xequities_securityplus_csv_v1_2.aodenabled.delimiter)
  end
  local text = string.sub(a2x_a2xequities_securityplus_csv_v1_2.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_a2x_a2xequities_securityplus_csv_v1_2.fields.aodenabled, buffer(offset, length), text, a2x_a2xequities_securityplus_csv_v1_2.aodenabled.display(text))
  end
  return index
end

-- MinimumLargeInScale
a2x_a2xequities_securityplus_csv_v1_2.minimumlargeinscale = {}

-- MinimumLargeInScale ends at ","
a2x_a2xequities_securityplus_csv_v1_2.minimumlargeinscale.delimiter = ","
-- MinimumLargeInScale is an unsigned integer

-- Display: MinimumLargeInScale
a2x_a2xequities_securityplus_csv_v1_2.minimumlargeinscale.display = function(value)
  return "MinimumLargeInScale: "..value
end

-- Dissect: MinimumLargeInScale
a2x_a2xequities_securityplus_csv_v1_2.minimumlargeinscale.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #a2x_a2xequities_securityplus_csv_v1_2.lines.current then
    return nil, "the line stops before MinimumLargeInScale"
  end
  local index = nil
  if length == nil then
    length, index = a2x_a2xequities_securityplus_csv_v1_2.lines.scan(offset, a2x_a2xequities_securityplus_csv_v1_2.minimumlargeinscale.delimiter)
  end
  local text = string.sub(a2x_a2xequities_securityplus_csv_v1_2.lines.current, offset + 1, offset + length)
  local value, failure = a2x_a2xequities_securityplus_csv_v1_2.lines.unsigned(text)
  if value == nil then
    return nil, "MinimumLargeInScale \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_a2x_a2xequities_securityplus_csv_v1_2.fields.minimumlargeinscale, buffer(offset, length), value, a2x_a2xequities_securityplus_csv_v1_2.minimumlargeinscale.display(tostring(value)))
  end
  return index
end

-- Active
a2x_a2xequities_securityplus_csv_v1_2.active = {}

-- Active ends at ","
a2x_a2xequities_securityplus_csv_v1_2.active.delimiter = ","
-- Active is text in Ascii
a2x_a2xequities_securityplus_csv_v1_2.active.encoding = ENC_ASCII

-- Display: Active
a2x_a2xequities_securityplus_csv_v1_2.active.labels = {
  ["1"] = "Active: Enabled (1)",
  ["0"] = "Active: Disabled (0)",
}

a2x_a2xequities_securityplus_csv_v1_2.active.display = function(value)
  return a2x_a2xequities_securityplus_csv_v1_2.active.labels[value] or "Active: Unknown("..value..")"
end

-- Dissect: Active
a2x_a2xequities_securityplus_csv_v1_2.active.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #a2x_a2xequities_securityplus_csv_v1_2.lines.current then
    return nil, "the line stops before Active"
  end
  local index = nil
  if length == nil then
    length, index = a2x_a2xequities_securityplus_csv_v1_2.lines.scan(offset, a2x_a2xequities_securityplus_csv_v1_2.active.delimiter)
  end
  local text = string.sub(a2x_a2xequities_securityplus_csv_v1_2.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_a2x_a2xequities_securityplus_csv_v1_2.fields.active, buffer(offset, length), text, a2x_a2xequities_securityplus_csv_v1_2.active.display(text))
  end
  return index
end

-- A2XListingDate
a2x_a2xequities_securityplus_csv_v1_2.a2xlistingdate = {}

-- A2XListingDate ends at ","
a2x_a2xequities_securityplus_csv_v1_2.a2xlistingdate.delimiter = ","
-- A2XListingDate is a date, yyyy-mm-dd, which Wireshark reads as a time of its own

-- Display: A2XListingDate
a2x_a2xequities_securityplus_csv_v1_2.a2xlistingdate.display = function(value)
  return "A2XListingDate: "..value
end

-- Dissect: A2XListingDate
a2x_a2xequities_securityplus_csv_v1_2.a2xlistingdate.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #a2x_a2xequities_securityplus_csv_v1_2.lines.current then
    return nil, "the line stops before A2XListingDate"
  end
  local index = nil
  if length == nil then
    length, index = a2x_a2xequities_securityplus_csv_v1_2.lines.scan(offset, a2x_a2xequities_securityplus_csv_v1_2.a2xlistingdate.delimiter)
  end
  local text = string.sub(a2x_a2xequities_securityplus_csv_v1_2.lines.current, offset + 1, offset + length)
  if a2x_a2xequities_securityplus_csv_v1_2.lines.days(text, true) == nil then
    return nil, "A2XListingDate \"" .. text .. "\" is not a yyyy-mm-dd date"
  end
  if parent ~= nil then
    parent:add_packet_field(omi_a2x_a2xequities_securityplus_csv_v1_2.fields.a2xlistingdate, buffer(offset, length), ENC_ISO_8601_DATE)
  end
  return index
end

-- A2XDelistingDate
a2x_a2xequities_securityplus_csv_v1_2.a2xdelistingdate = {}

-- A2XDelistingDate ends at ","
a2x_a2xequities_securityplus_csv_v1_2.a2xdelistingdate.delimiter = ","
-- A2XDelistingDate is a date, yyyy-mm-dd, which Wireshark reads as a time of its own

-- Display: A2XDelistingDate
a2x_a2xequities_securityplus_csv_v1_2.a2xdelistingdate.display = function(value)
  return "A2XDelistingDate: "..value
end

-- Dissect: A2XDelistingDate
a2x_a2xequities_securityplus_csv_v1_2.a2xdelistingdate.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #a2x_a2xequities_securityplus_csv_v1_2.lines.current then
    return nil, "the line stops before A2XDelistingDate"
  end
  local index = nil
  if length == nil then
    length, index = a2x_a2xequities_securityplus_csv_v1_2.lines.scan(offset, a2x_a2xequities_securityplus_csv_v1_2.a2xdelistingdate.delimiter)
  end
  local text = string.sub(a2x_a2xequities_securityplus_csv_v1_2.lines.current, offset + 1, offset + length)
  if a2x_a2xequities_securityplus_csv_v1_2.lines.days(text, true) == nil then
    return nil, "A2XDelistingDate \"" .. text .. "\" is not a yyyy-mm-dd date"
  end
  if parent ~= nil then
    parent:add_packet_field(omi_a2x_a2xequities_securityplus_csv_v1_2.fields.a2xdelistingdate, buffer(offset, length), ENC_ISO_8601_DATE)
  end
  return index
end

-- TradingControlID
a2x_a2xequities_securityplus_csv_v1_2.tradingcontrolid = {}

-- TradingControlID ends at ","
a2x_a2xequities_securityplus_csv_v1_2.tradingcontrolid.delimiter = ","
-- TradingControlID is text in Ascii
a2x_a2xequities_securityplus_csv_v1_2.tradingcontrolid.encoding = ENC_ASCII

-- Display: TradingControlID
a2x_a2xequities_securityplus_csv_v1_2.tradingcontrolid.display = function(value)
  return "TradingControlID: "..value
end

-- Dissect: TradingControlID
a2x_a2xequities_securityplus_csv_v1_2.tradingcontrolid.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #a2x_a2xequities_securityplus_csv_v1_2.lines.current then
    return nil, "the line stops before TradingControlID"
  end
  local index = nil
  if length == nil then
    length, index = a2x_a2xequities_securityplus_csv_v1_2.lines.scan(offset, a2x_a2xequities_securityplus_csv_v1_2.tradingcontrolid.delimiter)
  end
  local text = string.sub(a2x_a2xequities_securityplus_csv_v1_2.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_a2x_a2xequities_securityplus_csv_v1_2.fields.tradingcontrolid, buffer(offset, length), text, a2x_a2xequities_securityplus_csv_v1_2.tradingcontrolid.display(text))
  end
  return index
end


-----------------------------------------------------------------------
-- Protocol Records
-----------------------------------------------------------------------

-- Security Plus
a2x_a2xequities_securityplus_csv_v1_2.record_security_plus = {}

-- The delimiter every field of Security Plus ends at, which its line is split at
a2x_a2xequities_securityplus_csv_v1_2.record_security_plus.delimiter = ","

-- Dissect Fields: Security Plus
-- Split: every field of Security Plus ends at "," and none is quoted, so its line is split once and each field handed its range
a2x_a2xequities_securityplus_csv_v1_2.record_security_plus.fields = function(buffer, offset, packet, parent)
  local starts, lengths = a2x_a2xequities_securityplus_csv_v1_2.lines.split(offset, a2x_a2xequities_securityplus_csv_v1_2.record_security_plus.delimiter)
  if #starts > 17 then
    return nil, "Security Plus: the line has " .. #starts .. " fields, its layout 17"
  end
  local index = nil
  local failure = nil

  -- id: field 1
  index, failure = a2x_a2xequities_securityplus_csv_v1_2.id.dissect(buffer, starts[1], packet, parent, lengths[1])
  if failure ~= nil then
    return nil, failure
  end

  -- Security Name: field 2
  index, failure = a2x_a2xequities_securityplus_csv_v1_2.security_name.dissect(buffer, starts[2], packet, parent, lengths[2])
  if failure ~= nil then
    return nil, failure
  end

  -- PrimaryRic: field 3
  index, failure = a2x_a2xequities_securityplus_csv_v1_2.primaryric.dissect(buffer, starts[3], packet, parent, lengths[3])
  if failure ~= nil then
    return nil, failure
  end

  -- PrimaryBBG: field 4
  index, failure = a2x_a2xequities_securityplus_csv_v1_2.primarybbg.dissect(buffer, starts[4], packet, parent, lengths[4])
  if failure ~= nil then
    return nil, failure
  end

  -- ISIN: field 5
  index, failure = a2x_a2xequities_securityplus_csv_v1_2.isin.dissect(buffer, starts[5], packet, parent, lengths[5])
  if failure ~= nil then
    return nil, failure
  end

  -- CurrencyCode: field 6
  index, failure = a2x_a2xequities_securityplus_csv_v1_2.currencycode.dissect(buffer, starts[6], packet, parent, lengths[6])
  if failure ~= nil then
    return nil, failure
  end

  -- PrimaryMIC: field 7
  index, failure = a2x_a2xequities_securityplus_csv_v1_2.primarymic.dissect(buffer, starts[7], packet, parent, lengths[7])
  if failure ~= nil then
    return nil, failure
  end

  -- A2XRic: field 8
  index, failure = a2x_a2xequities_securityplus_csv_v1_2.a2xric.dissect(buffer, starts[8], packet, parent, lengths[8])
  if failure ~= nil then
    return nil, failure
  end

  -- A2XBbg: field 9
  index, failure = a2x_a2xequities_securityplus_csv_v1_2.a2xbbg.dissect(buffer, starts[9], packet, parent, lengths[9])
  if failure ~= nil then
    return nil, failure
  end

  -- UMTFCode: field 10
  index, failure = a2x_a2xequities_securityplus_csv_v1_2.umtfcode.dissect(buffer, starts[10], packet, parent, lengths[10])
  if failure ~= nil then
    return nil, failure
  end

  -- MaCEnabled: field 11
  index, failure = a2x_a2xequities_securityplus_csv_v1_2.macenabled.dissect(buffer, starts[11], packet, parent, lengths[11])
  if failure ~= nil then
    return nil, failure
  end

  -- AoDEnabled: field 12
  index, failure = a2x_a2xequities_securityplus_csv_v1_2.aodenabled.dissect(buffer, starts[12], packet, parent, lengths[12])
  if failure ~= nil then
    return nil, failure
  end

  -- MinimumLargeInScale: field 13
  index, failure = a2x_a2xequities_securityplus_csv_v1_2.minimumlargeinscale.dissect(buffer, starts[13], packet, parent, lengths[13])
  if failure ~= nil then
    return nil, failure
  end

  -- Active: field 14
  index, failure = a2x_a2xequities_securityplus_csv_v1_2.active.dissect(buffer, starts[14], packet, parent, lengths[14])
  if failure ~= nil then
    return nil, failure
  end

  -- A2XListingDate: field 15
  index, failure = a2x_a2xequities_securityplus_csv_v1_2.a2xlistingdate.dissect(buffer, starts[15], packet, parent, lengths[15])
  if failure ~= nil then
    return nil, failure
  end

  -- A2XDelistingDate: field 16
  index, failure = a2x_a2xequities_securityplus_csv_v1_2.a2xdelistingdate.dissect(buffer, starts[16], packet, parent, lengths[16])
  if failure ~= nil then
    return nil, failure
  end

  -- TradingControlID: field 17
  index, failure = a2x_a2xequities_securityplus_csv_v1_2.tradingcontrolid.dissect(buffer, starts[17], packet, parent, lengths[17])
  if failure ~= nil then
    return nil, failure
  end

  return #a2x_a2xequities_securityplus_csv_v1_2.lines.current + 1
end

-- Dissect: Security Plus
a2x_a2xequities_securityplus_csv_v1_2.record_security_plus.dissect = function(buffer, offset, packet, parent)
  local element = parent:add(omi_a2x_a2xequities_securityplus_csv_v1_2.fields.record_security_plus, buffer(), "Security Plus", "Security Plus")
  return a2x_a2xequities_securityplus_csv_v1_2.record_security_plus.fields(buffer, offset, packet, element)
end


-----------------------------------------------------------------------
-- Protocol Lines
-----------------------------------------------------------------------

-- The text between a line's fields, its Packet rule's Delimiter: ","
a2x_a2xequities_securityplus_csv_v1_2.delimiter = ","

-- The character ending a line, its Packet rule's Terminator: 10
a2x_a2xequities_securityplus_csv_v1_2.terminator = "\010"

-- The layouts a file states in its header, in model order: the header lines each states
a2x_a2xequities_securityplus_csv_v1_2.variants = {
  {
    name = "SecurityPlus.v1.2",
    headers = { "id,Security Name,PrimaryRic,PrimaryBBG,ISIN,CurrencyCode,PrimaryMIC,A2XRic,A2XBbg,UMTFCode,MaCEnabled,AoDEnabled,MinimumLargeInScale,Active,A2XListingDate,A2XDelistingDate,TradingControlID" },
  },
}

-- The layout the file's lines are read by: the one its file handler found, the first where none did
a2x_a2xequities_securityplus_csv_v1_2.variant = function()
  if a2x_a2xequities_securityplus_csv_v1_2.file == nil or a2x_a2xequities_securityplus_csv_v1_2.file.variant == nil then
    return 1
  end
  return a2x_a2xequities_securityplus_csv_v1_2.file.variant
end

-- A header line: its layout, and its columns
a2x_a2xequities_securityplus_csv_v1_2.header = function(buffer, packet, parent, variant)
  packet.cols.info = "Header Row"
  local name = a2x_a2xequities_securityplus_csv_v1_2.variants[variant].name
  local item = parent:add(omi_a2x_a2xequities_securityplus_csv_v1_2.fields.header_row, buffer(), name, "Header Row: " .. name)
  local starts, lengths = a2x_a2xequities_securityplus_csv_v1_2.lines.split(0, a2x_a2xequities_securityplus_csv_v1_2.delimiter)
  for index = 1, #starts do
    local range = buffer(starts[index], lengths[index])
    item:add(range, "Column " .. index .. ": " .. range:string(ENC_ASCII))
  end
end

-- A line the layout does not read, and why: its fields, as they are
a2x_a2xequities_securityplus_csv_v1_2.outside = function(buffer, packet, parent, reason)
  packet.cols.info = "Line Outside Layout"
  local item = parent:add(omi_a2x_a2xequities_securityplus_csv_v1_2.fields.line_outside_layout, buffer(), reason, "Line Outside Layout: " .. reason)
  item:add_proto_expert_info(omi_a2x_a2xequities_securityplus_csv_v1_2.experts.line_outside_layout, reason)
  local starts, lengths = a2x_a2xequities_securityplus_csv_v1_2.lines.split(0, a2x_a2xequities_securityplus_csv_v1_2.delimiter)
  for index = 1, #starts do
    local range = buffer(starts[index], lengths[index])
    item:add(range, "Field " .. index .. ": " .. range:string(ENC_ASCII))
  end
end

-- Is a line one of the layout's header lines?
a2x_a2xequities_securityplus_csv_v1_2.headed = function(line, variant)
  for index, header in ipairs(a2x_a2xequities_securityplus_csv_v1_2.variants[variant].headers) do
    if line == header then
      return true
    end
  end
  return false
end

-- Does a line read as the layout's: a header line, or Security Plus?
a2x_a2xequities_securityplus_csv_v1_2.reads = function(buffer, packet, line)
  a2x_a2xequities_securityplus_csv_v1_2.lines.current = line
  local variant = a2x_a2xequities_securityplus_csv_v1_2.variant()
  if a2x_a2xequities_securityplus_csv_v1_2.headed(line, variant) then
    return true
  end
  local index, failure = a2x_a2xequities_securityplus_csv_v1_2.record_security_plus.fields(buffer, 0, packet, nil)
  return failure == nil
end

-- Dissect a line: a header line, or Security Plus, or a line outside the layout
a2x_a2xequities_securityplus_csv_v1_2.line = function(buffer, packet, parent)
  local line = buffer:raw()
  a2x_a2xequities_securityplus_csv_v1_2.lines.current = line
  local variant = a2x_a2xequities_securityplus_csv_v1_2.variant()
  if a2x_a2xequities_securityplus_csv_v1_2.headed(line, variant) then
    return a2x_a2xequities_securityplus_csv_v1_2.header(buffer, packet, parent, variant)
  end

  -- read first with no tree, so a line the layout does not read is shown whole
  local index, failure = a2x_a2xequities_securityplus_csv_v1_2.record_security_plus.fields(buffer, 0, packet, nil)
  if failure ~= nil then
    return a2x_a2xequities_securityplus_csv_v1_2.outside(buffer, packet, parent, failure)
  end

  packet.cols.info = "Security Plus"
  a2x_a2xequities_securityplus_csv_v1_2.record_security_plus.dissect(buffer, 0, packet, parent)
end
-- Dissect A2X A2XEquities SecurityPlus Csv 1.2
function omi_a2x_a2xequities_securityplus_csv_v1_2.dissector(buffer, packet, parent)
  packet.cols.protocol = omi_a2x_a2xequities_securityplus_csv_v1_2.name

  local protocol = parent:add(omi_a2x_a2xequities_securityplus_csv_v1_2, buffer(), omi_a2x_a2xequities_securityplus_csv_v1_2.description, "(" .. buffer:len() .. " Bytes)")
  return a2x_a2xequities_securityplus_csv_v1_2.line(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- File Lines
-----------------------------------------------------------------------

-- A file's line, the one at an offset or with none the next, to the terminator: its offset, its text,
-- and its frame's time. The file is read a block at a time, the block kept in the capture's private
-- table; a line read again reads a block of its own
a2x_a2xequities_securityplus_csv_v1_2.read = function(file, capture, offset)
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
    local ends = string.find(block.data, a2x_a2xequities_securityplus_csv_v1_2.terminator, block.at, true)
    if ends ~= nil then
      start = block.offset + block.at - 1
      line = string.sub(block.data, block.at, ends - 1)
      block.at = ends + #a2x_a2xequities_securityplus_csv_v1_2.terminator
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
a2x_a2xequities_securityplus_csv_v1_2.file = {}

-- Exported pdu tags each frame starts with: the dissector it is for, then the end of the tags
a2x_a2xequities_securityplus_csv_v1_2.file.prefix = "\000\012\000\044omi.a2x.a2xequities.securityplus.csv.v1.2\000\000\000\000\000\000\000"

-- The text a file of each layout starts with
a2x_a2xequities_securityplus_csv_v1_2.file.signatures = {
  "id,Security Name,PrimaryRic,PrimaryBBG,ISIN,CurrencyCode,PrimaryMIC,A2XRic,A2XBbg,UMTFCode,MaCEnabled,AoDEnabled,MinimumLargeInScale,Active,A2XListingDate,A2XDelistingDate,TradingControlID\010",
}

-- The layout a file's first bytes are the signature of, or nil for a file of no layout
a2x_a2xequities_securityplus_csv_v1_2.file.layout = function(file)
  local first = file:read(189)
  if first == nil then
    return nil
  end
  for index, signature in ipairs(a2x_a2xequities_securityplus_csv_v1_2.file.signatures) do
    if first:sub(1, #signature) == signature then
      return index
    end
  end
  return nil
end

-- A record read into a frame, the one at an offset or with none the next: its offset, nil at the end of the file
a2x_a2xequities_securityplus_csv_v1_2.file.frame = function(file, capture, frame, offset)
  local at, data, seconds, nanoseconds = a2x_a2xequities_securityplus_csv_v1_2.read(file, capture, offset)
  if at == nil then
    return nil
  end
  data = a2x_a2xequities_securityplus_csv_v1_2.file.prefix .. data
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

-- A2X A2XEquities SecurityPlus Csv 1.2 (Omi) file handler: a magic number reader, its signatures the magic
a2x_a2xequities_securityplus_csv_v1_2.file.handler = FileHandler.new("A2X A2XEquities SecurityPlus Csv 1.2 (Omi)", "omi_a2x_a2xequities_securityplus_csv_v1_2", "A2X A2XEquities SecurityPlus Csv 1.2 (Omi) file", "rm")

-- A file of a layout is this protocol's; read from its start, so its first line is the first frame
a2x_a2xequities_securityplus_csv_v1_2.file.handler.read_open = function(file, capture)
  local layout = a2x_a2xequities_securityplus_csv_v1_2.file.layout(file)
  if layout == nil then
    return false
  end
  a2x_a2xequities_securityplus_csv_v1_2.file.variant = layout
  file:seek("set", 0)
  capture.private_table = {}
  capture.encap = wtap_encaps.WIRESHARK_UPPER_PDU
  capture.time_precision = wtap_tsprecs.NSEC
  return true
end

-- The next record, returning its offset in the file
a2x_a2xequities_securityplus_csv_v1_2.file.handler.read = function(file, capture, frame)
  local offset = a2x_a2xequities_securityplus_csv_v1_2.file.frame(file, capture, frame, nil)
  if offset == nil then
    return false
  end
  return offset
end

-- The record at an offset read before
a2x_a2xequities_securityplus_csv_v1_2.file.handler.seek_read = function(file, capture, frame, offset)
  return a2x_a2xequities_securityplus_csv_v1_2.file.frame(file, capture, frame, offset) ~= nil
end

-- Nothing is held open beyond the file Wireshark closes
a2x_a2xequities_securityplus_csv_v1_2.file.handler.read_close = function(file, capture)
  return true
end

a2x_a2xequities_securityplus_csv_v1_2.file.handler.seq_read_close = function(file, capture)
  return true
end

-- Register A2X A2XEquities SecurityPlus Csv 1.2 (Omi) files
register_filehandler(a2x_a2xequities_securityplus_csv_v1_2.file.handler)

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
