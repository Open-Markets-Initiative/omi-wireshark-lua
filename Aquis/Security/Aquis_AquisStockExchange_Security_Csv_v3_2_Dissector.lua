-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Aquis AquisStockExchange Security Csv 3.2 Protocol
local omi_aquis_aquisstockexchange_security_csv_v3_2 = Proto("Omi.Aquis.AquisStockExchange.Security.Csv.v3.2", "Aquis AquisStockExchange Security Csv 3.2")

-- Protocol table
local aquis_aquisstockexchange_security_csv_v3_2 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Aquis AquisStockExchange Security Csv 3.2 Fields
omi_aquis_aquisstockexchange_security_csv_v3_2.fields.security = ProtoField.new("Security", "aquis.aquisstockexchange.security.csv.v3.2.security", ftypes.STRING, nil, nil)
omi_aquis_aquisstockexchange_security_csv_v3_2.fields.id = ProtoField.new("id", "aquis.aquisstockexchange.security.csv.v3.2.id", ftypes.UINT64, nil, nil, nil, "Unique Aquis security ID")
omi_aquis_aquisstockexchange_security_csv_v3_2.fields.description = ProtoField.new("description", "aquis.aquisstockexchange.security.csv.v3.2.description", ftypes.STRING, nil, nil, nil, "Name of the security")
omi_aquis_aquisstockexchange_security_csv_v3_2.fields.ticker = ProtoField.new("ticker", "aquis.aquisstockexchange.security.csv.v3.2.ticker", ftypes.STRING, nil, nil, nil, "Unique symbol of security")
omi_aquis_aquisstockexchange_security_csv_v3_2.fields.isin = ProtoField.new("isin", "aquis.aquisstockexchange.security.csv.v3.2.isin", ftypes.STRING, nil, nil, nil, "Security ISIN")
omi_aquis_aquisstockexchange_security_csv_v3_2.fields.currency = ProtoField.new("currency", "aquis.aquisstockexchange.security.csv.v3.2.currency", ftypes.STRING, nil, nil, nil, "Security currency code, including but not limited to CHF, EUR, GBP, GBX, NOK, SEK and USD; for full list of possible values see ISO 4217")
omi_aquis_aquisstockexchange_security_csv_v3_2.fields.mic = ProtoField.new("mic", "aquis.aquisstockexchange.security.csv.v3.2.mic", ftypes.STRING, nil, nil, nil, "Market identification Code")
omi_aquis_aquisstockexchange_security_csv_v3_2.fields.tick_name = ProtoField.new("tick_name", "aquis.aquisstockexchange.security.csv.v3.2.tick_name", ftypes.STRING, nil, nil, nil, "Name of the tick table used for the security. Tick sizes can be found in the tick-<date>.csv reference data file")
omi_aquis_aquisstockexchange_security_csv_v3_2.fields.segment = ProtoField.new("segment", "aquis.aquisstockexchange.security.csv.v3.2.segment", ftypes.STRING, nil, nil, nil, "Segment of the security")
omi_aquis_aquisstockexchange_security_csv_v3_2.fields.instrument_type = ProtoField.new("instrument_type", "aquis.aquisstockexchange.security.csv.v3.2.instrument_type", ftypes.STRING, nil, nil, nil, "Security Type")
omi_aquis_aquisstockexchange_security_csv_v3_2.fields.board = ProtoField.new("board", "aquis.aquisstockexchange.security.csv.v3.2.board", ftypes.STRING, nil, nil, nil, "Trading board of the security")
omi_aquis_aquisstockexchange_security_csv_v3_2.fields.issuer = ProtoField.new("issuer", "aquis.aquisstockexchange.security.csv.v3.2.issuer", ftypes.STRING, nil, nil, nil, "Security Issuer")
omi_aquis_aquisstockexchange_security_csv_v3_2.fields.origin_country = ProtoField.new("origin_country", "aquis.aquisstockexchange.security.csv.v3.2.origin_country", ftypes.STRING, nil, nil, nil, "Two-character country code; for full list of possible values see ISO 3166")
omi_aquis_aquisstockexchange_security_csv_v3_2.fields.issued_qty = ProtoField.new("issued_qty", "aquis.aquisstockexchange.security.csv.v3.2.issued_qty", ftypes.UINT64, nil, nil, nil, "Shares in Issue")
omi_aquis_aquisstockexchange_security_csv_v3_2.fields.ems = ProtoField.new("ems", "aquis.aquisstockexchange.security.csv.v3.2.ems", ftypes.UINT64, nil, nil, nil, "Execution Market Size")
omi_aquis_aquisstockexchange_security_csv_v3_2.fields.market_makers = ProtoField.new("market_makers", "aquis.aquisstockexchange.security.csv.v3.2.market_makers", ftypes.STRING, nil, nil, nil, "Pipe (|) delimited list of market makers for each security. Market makers can be identified using the mm_group field of the firm file")
omi_aquis_aquisstockexchange_security_csv_v3_2.fields.test_stock = ProtoField.new("test_stock", "aquis.aquisstockexchange.security.csv.v3.2.test_stock", ftypes.STRING, nil, nil, nil, "Whether the security is a test stock")
omi_aquis_aquisstockexchange_security_csv_v3_2.fields.is_tradeable = ProtoField.new("is_tradeable", "aquis.aquisstockexchange.security.csv.v3.2.is_tradeable", ftypes.STRING, nil, nil, nil, "Whether the security is tradeable")
omi_aquis_aquisstockexchange_security_csv_v3_2.fields.adt = ProtoField.new("adt", "aquis.aquisstockexchange.security.csv.v3.2.adt", ftypes.UINT64, nil, nil, nil, "Average Daily Turnover")
omi_aquis_aquisstockexchange_security_csv_v3_2.fields.lis = ProtoField.new("lis", "aquis.aquisstockexchange.security.csv.v3.2.lis", ftypes.UINT64, nil, nil, nil, "Large In Scale Threshold")
omi_aquis_aquisstockexchange_security_csv_v3_2.fields.sector = ProtoField.new("sector", "aquis.aquisstockexchange.security.csv.v3.2.sector", ftypes.UINT64, nil, nil, nil, "Sector of the security")
omi_aquis_aquisstockexchange_security_csv_v3_2.fields.quote_bases = ProtoField.new("quote_bases", "aquis.aquisstockexchange.security.csv.v3.2.quote_bases", ftypes.STRING, nil, nil, nil, "Pipe (|) delimited list of Trade Conditions applied to each security: CD Special cum dividend, CR Special cum rights, XD Special ex dividend, XR Special ex rights, CC Special cum coupon, CP Special cum capital repayments, XC Special ex coupon, XP Special ex capital repayments, CS Cash Settlement, CB Special cum bonus, BM Bid Marker")
omi_aquis_aquisstockexchange_security_csv_v3_2.fields.illiquid = ProtoField.new("illiquid", "aquis.aquisstockexchange.security.csv.v3.2.illiquid", ftypes.STRING, nil, nil, nil, "Whether the security is illiquid")
omi_aquis_aquisstockexchange_security_csv_v3_2.fields.header_row = ProtoField.new("Header Row", "aquis.aquisstockexchange.security.csv.v3.2.headerrow", ftypes.STRING, nil, nil, nil, "The line naming a file's columns, which states the layout its lines are read in")
omi_aquis_aquisstockexchange_security_csv_v3_2.fields.line_outside_layout = ProtoField.new("Line Outside Layout", "aquis.aquisstockexchange.security.csv.v3.2.lineoutsidelayout", ftypes.STRING, nil, nil, nil, "A line the layout does not read: no header row, and not the record")

-----------------------------------------------------------------------
-- Declare Dissection Experts
-----------------------------------------------------------------------

-- A line the layout does not read
omi_aquis_aquisstockexchange_security_csv_v3_2.experts.line_outside_layout = ProtoExpert.new("aquis.aquisstockexchange.security.csv.v3.2.lineoutsidelayout.expert", "Line Outside Layout", expert.group.MALFORMED, expert.severity.WARN)

-----------------------------------------------------------------------
-- Protocol Primitives
-----------------------------------------------------------------------

-- The readings a field calls with its own traits, and the line being dissected
aquis_aquisstockexchange_security_csv_v3_2.lines = {}

-- A line split at a delimiter, from an offset: where each field starts, and its length
aquis_aquisstockexchange_security_csv_v3_2.lines.split = function(offset, delimiter)
  local line = aquis_aquisstockexchange_security_csv_v3_2.lines.current
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
aquis_aquisstockexchange_security_csv_v3_2.lines.scan = function(offset, delimiter)
  local line = aquis_aquisstockexchange_security_csv_v3_2.lines.current
  local at = string.find(line, delimiter, offset + 1, true)
  if at == nil then
    return #line - offset, #line + 1
  end
  return at - 1 - offset, at - 1 + #delimiter
end
-- An unsigned integer's text, exactly, as a UInt64: a Lua number holds 15 digits exactly, and more are
-- held in two parts; nil and why where it is not one
aquis_aquisstockexchange_security_csv_v3_2.lines.unsigned = function(text)
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
aquis_aquisstockexchange_security_csv_v3_2.id = {}

-- id ends at a tab
aquis_aquisstockexchange_security_csv_v3_2.id.delimiter = "\009"
-- id is an unsigned integer

-- Display: id
aquis_aquisstockexchange_security_csv_v3_2.id.display = function(value)
  return "id: "..value
end

-- Dissect: id
aquis_aquisstockexchange_security_csv_v3_2.id.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #aquis_aquisstockexchange_security_csv_v3_2.lines.current then
    return nil, "the line stops before id"
  end
  local index = nil
  if length == nil then
    length, index = aquis_aquisstockexchange_security_csv_v3_2.lines.scan(offset, aquis_aquisstockexchange_security_csv_v3_2.id.delimiter)
  end
  local text = string.sub(aquis_aquisstockexchange_security_csv_v3_2.lines.current, offset + 1, offset + length)
  local value, failure = aquis_aquisstockexchange_security_csv_v3_2.lines.unsigned(text)
  if value == nil then
    return nil, "id \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_aquis_aquisstockexchange_security_csv_v3_2.fields.id, buffer(offset, length), value, aquis_aquisstockexchange_security_csv_v3_2.id.display(tostring(value)))
  end
  return index
end

-- description
aquis_aquisstockexchange_security_csv_v3_2.description = {}

-- description ends at a tab
aquis_aquisstockexchange_security_csv_v3_2.description.delimiter = "\009"
-- description is text in Ascii
aquis_aquisstockexchange_security_csv_v3_2.description.encoding = ENC_ASCII

-- Display: description
aquis_aquisstockexchange_security_csv_v3_2.description.display = function(value)
  return "description: "..value
end

-- Dissect: description
aquis_aquisstockexchange_security_csv_v3_2.description.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #aquis_aquisstockexchange_security_csv_v3_2.lines.current then
    return nil, "the line stops before description"
  end
  local index = nil
  if length == nil then
    length, index = aquis_aquisstockexchange_security_csv_v3_2.lines.scan(offset, aquis_aquisstockexchange_security_csv_v3_2.description.delimiter)
  end
  local text = string.sub(aquis_aquisstockexchange_security_csv_v3_2.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_aquis_aquisstockexchange_security_csv_v3_2.fields.description, buffer(offset, length), text, aquis_aquisstockexchange_security_csv_v3_2.description.display(text))
  end
  return index
end

-- ticker
aquis_aquisstockexchange_security_csv_v3_2.ticker = {}

-- ticker ends at a tab
aquis_aquisstockexchange_security_csv_v3_2.ticker.delimiter = "\009"
-- ticker is text in Ascii
aquis_aquisstockexchange_security_csv_v3_2.ticker.encoding = ENC_ASCII

-- Display: ticker
aquis_aquisstockexchange_security_csv_v3_2.ticker.display = function(value)
  return "ticker: "..value
end

-- Dissect: ticker
aquis_aquisstockexchange_security_csv_v3_2.ticker.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #aquis_aquisstockexchange_security_csv_v3_2.lines.current then
    return nil, "the line stops before ticker"
  end
  local index = nil
  if length == nil then
    length, index = aquis_aquisstockexchange_security_csv_v3_2.lines.scan(offset, aquis_aquisstockexchange_security_csv_v3_2.ticker.delimiter)
  end
  local text = string.sub(aquis_aquisstockexchange_security_csv_v3_2.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_aquis_aquisstockexchange_security_csv_v3_2.fields.ticker, buffer(offset, length), text, aquis_aquisstockexchange_security_csv_v3_2.ticker.display(text))
  end
  return index
end

-- isin
aquis_aquisstockexchange_security_csv_v3_2.isin = {}

-- isin ends at a tab
aquis_aquisstockexchange_security_csv_v3_2.isin.delimiter = "\009"
-- isin is text in Ascii
aquis_aquisstockexchange_security_csv_v3_2.isin.encoding = ENC_ASCII

-- Display: isin
aquis_aquisstockexchange_security_csv_v3_2.isin.display = function(value)
  return "isin: "..value
end

-- Dissect: isin
aquis_aquisstockexchange_security_csv_v3_2.isin.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #aquis_aquisstockexchange_security_csv_v3_2.lines.current then
    return nil, "the line stops before isin"
  end
  local index = nil
  if length == nil then
    length, index = aquis_aquisstockexchange_security_csv_v3_2.lines.scan(offset, aquis_aquisstockexchange_security_csv_v3_2.isin.delimiter)
  end
  local text = string.sub(aquis_aquisstockexchange_security_csv_v3_2.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_aquis_aquisstockexchange_security_csv_v3_2.fields.isin, buffer(offset, length), text, aquis_aquisstockexchange_security_csv_v3_2.isin.display(text))
  end
  return index
end

-- currency
aquis_aquisstockexchange_security_csv_v3_2.currency = {}

-- currency ends at a tab
aquis_aquisstockexchange_security_csv_v3_2.currency.delimiter = "\009"
-- currency is text in Ascii
aquis_aquisstockexchange_security_csv_v3_2.currency.encoding = ENC_ASCII

-- Display: currency
aquis_aquisstockexchange_security_csv_v3_2.currency.display = function(value)
  return "currency: "..value
end

-- Dissect: currency
aquis_aquisstockexchange_security_csv_v3_2.currency.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #aquis_aquisstockexchange_security_csv_v3_2.lines.current then
    return nil, "the line stops before currency"
  end
  local index = nil
  if length == nil then
    length, index = aquis_aquisstockexchange_security_csv_v3_2.lines.scan(offset, aquis_aquisstockexchange_security_csv_v3_2.currency.delimiter)
  end
  local text = string.sub(aquis_aquisstockexchange_security_csv_v3_2.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_aquis_aquisstockexchange_security_csv_v3_2.fields.currency, buffer(offset, length), text, aquis_aquisstockexchange_security_csv_v3_2.currency.display(text))
  end
  return index
end

-- mic
aquis_aquisstockexchange_security_csv_v3_2.mic = {}

-- mic ends at a tab
aquis_aquisstockexchange_security_csv_v3_2.mic.delimiter = "\009"
-- mic is text in Ascii
aquis_aquisstockexchange_security_csv_v3_2.mic.encoding = ENC_ASCII

-- Display: mic
aquis_aquisstockexchange_security_csv_v3_2.mic.labels = {
  ["AQSL"] = "mic: Equity Main Board (AQSL)",
  ["AQSD"] = "mic: Non Equity Main Board (AQSD)",
  ["AQST"] = "mic: Equity Mtf Trading (AQST)",
  ["AQSN"] = "mic: Non Equity Mtf Trading (AQSN)",
  ["AQSG"] = "mic: Equity Growth Market (AQSG)",
  ["AQSF"] = "mic: Non Equity Growth Market (AQSF)",
}

aquis_aquisstockexchange_security_csv_v3_2.mic.display = function(value)
  return aquis_aquisstockexchange_security_csv_v3_2.mic.labels[value] or "mic: Unknown("..value..")"
end

-- Dissect: mic
aquis_aquisstockexchange_security_csv_v3_2.mic.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #aquis_aquisstockexchange_security_csv_v3_2.lines.current then
    return nil, "the line stops before mic"
  end
  local index = nil
  if length == nil then
    length, index = aquis_aquisstockexchange_security_csv_v3_2.lines.scan(offset, aquis_aquisstockexchange_security_csv_v3_2.mic.delimiter)
  end
  local text = string.sub(aquis_aquisstockexchange_security_csv_v3_2.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_aquis_aquisstockexchange_security_csv_v3_2.fields.mic, buffer(offset, length), text, aquis_aquisstockexchange_security_csv_v3_2.mic.display(text))
  end
  return index
end

-- tick_name
aquis_aquisstockexchange_security_csv_v3_2.tick_name = {}

-- tick_name ends at a tab
aquis_aquisstockexchange_security_csv_v3_2.tick_name.delimiter = "\009"
-- tick_name is text in Ascii
aquis_aquisstockexchange_security_csv_v3_2.tick_name.encoding = ENC_ASCII

-- Display: tick_name
aquis_aquisstockexchange_security_csv_v3_2.tick_name.display = function(value)
  return "tick_name: "..value
end

-- Dissect: tick_name
aquis_aquisstockexchange_security_csv_v3_2.tick_name.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #aquis_aquisstockexchange_security_csv_v3_2.lines.current then
    return nil, "the line stops before tick_name"
  end
  local index = nil
  if length == nil then
    length, index = aquis_aquisstockexchange_security_csv_v3_2.lines.scan(offset, aquis_aquisstockexchange_security_csv_v3_2.tick_name.delimiter)
  end
  local text = string.sub(aquis_aquisstockexchange_security_csv_v3_2.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_aquis_aquisstockexchange_security_csv_v3_2.fields.tick_name, buffer(offset, length), text, aquis_aquisstockexchange_security_csv_v3_2.tick_name.display(text))
  end
  return index
end

-- segment
aquis_aquisstockexchange_security_csv_v3_2.segment = {}

-- segment ends at a tab
aquis_aquisstockexchange_security_csv_v3_2.segment.delimiter = "\009"
-- segment is text in Ascii
aquis_aquisstockexchange_security_csv_v3_2.segment.encoding = ENC_ASCII

-- Display: segment
aquis_aquisstockexchange_security_csv_v3_2.segment.labels = {
  ["IX01"] = "segment: Regulated Market Premium Listed Equity (IX01)",
  ["IX02"] = "segment: Regulated Market Standard Listed Equity (IX02)",
  ["IX03"] = "segment: Regulated Market Standard Listed Corporate Debt (IX03)",
  ["IX04"] = "segment: Regulated Market Standard Listed Sovereign Debt (IX04)",
  ["IX05"] = "segment: Regulated Market Standard Listed Other (IX05)",
  ["IX06"] = "segment: Regulated Market Standard Listed Derivatives (IX06)",
  ["IX07"] = "segment: Apex Equity (IX07)",
  ["IX08"] = "segment: Apex Corporate Debt (IX08)",
  ["IX09"] = "segment: Access Equity (IX09)",
  ["IX10"] = "segment: Access Corporate Debt (IX10)",
  ["IX11"] = "segment: Mtf Listed Equity (IX11)",
  ["IX12"] = "segment: Mtf Listed Corporate Debt (IX12)",
  ["IX13"] = "segment: Mtf Listed Sovereign Debt (IX13)",
  ["IX14"] = "segment: Mtf Listed Other (IX14)",
  ["IX15"] = "segment: Mtf Listed Derivatives (IX15)",
  ["IX16"] = "segment: Mtf Quoted Equity (IX16)",
  ["IX17"] = "segment: Mtf Quoted Corporate Debt (IX17)",
  ["IX18"] = "segment: Mtf Quoted Other (IX18)",
  ["IX19"] = "segment: Mtf Quoted Derivatives (IX19)",
  ["IX20"] = "segment: Aram Equity (IX20)",
  ["IX21"] = "segment: Aram Corporate Debt (IX21)",
}

aquis_aquisstockexchange_security_csv_v3_2.segment.display = function(value)
  return aquis_aquisstockexchange_security_csv_v3_2.segment.labels[value] or "segment: Unknown("..value..")"
end

-- Dissect: segment
aquis_aquisstockexchange_security_csv_v3_2.segment.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #aquis_aquisstockexchange_security_csv_v3_2.lines.current then
    return nil, "the line stops before segment"
  end
  local index = nil
  if length == nil then
    length, index = aquis_aquisstockexchange_security_csv_v3_2.lines.scan(offset, aquis_aquisstockexchange_security_csv_v3_2.segment.delimiter)
  end
  local text = string.sub(aquis_aquisstockexchange_security_csv_v3_2.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_aquis_aquisstockexchange_security_csv_v3_2.fields.segment, buffer(offset, length), text, aquis_aquisstockexchange_security_csv_v3_2.segment.display(text))
  end
  return index
end

-- instrument_type
aquis_aquisstockexchange_security_csv_v3_2.instrument_type = {}

-- instrument_type ends at a tab
aquis_aquisstockexchange_security_csv_v3_2.instrument_type.delimiter = "\009"
-- instrument_type is text in Ascii
aquis_aquisstockexchange_security_csv_v3_2.instrument_type.encoding = ENC_ASCII

-- Display: instrument_type
aquis_aquisstockexchange_security_csv_v3_2.instrument_type.labels = {
  ["AORD"] = "instrument_type: A Ordinary (AORD)",
  ["BOND"] = "instrument_type: Bond (BOND)",
  ["BORD"] = "instrument_type: B Ordinary (BORD)",
  ["COMMON"] = "instrument_type: Common Shares (COMMON)",
  ["CONV"] = "instrument_type: Convertibles (CONV)",
  ["ETC"] = "instrument_type: Exchange Traded Commodity (ETC)",
  ["ETF"] = "instrument_type: Exchange Traded Fund (ETF)",
  ["FI"] = "instrument_type: Fixed Income (FI)",
  ["INDX"] = "instrument_type: Standard Index (INDX)",
  ["NTS"] = "instrument_type: Notes (NTS)",
  ["ORD"] = "instrument_type: Ordinaries (ORD)",
  ["PREF"] = "instrument_type: Preference Shares (PREF)",
  ["SIC"] = "instrument_type: Swap Index Contract (SIC)",
  ["UNIT"] = "instrument_type: Units (UNIT)",
  ["UNSEC"] = "instrument_type: Unsecured Loan (UNSEC)",
  ["WRTS"] = "instrument_type: Warrants (WRTS)",
}

aquis_aquisstockexchange_security_csv_v3_2.instrument_type.display = function(value)
  return aquis_aquisstockexchange_security_csv_v3_2.instrument_type.labels[value] or "instrument_type: Unknown("..value..")"
end

-- Dissect: instrument_type
aquis_aquisstockexchange_security_csv_v3_2.instrument_type.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #aquis_aquisstockexchange_security_csv_v3_2.lines.current then
    return nil, "the line stops before instrument_type"
  end
  local index = nil
  if length == nil then
    length, index = aquis_aquisstockexchange_security_csv_v3_2.lines.scan(offset, aquis_aquisstockexchange_security_csv_v3_2.instrument_type.delimiter)
  end
  local text = string.sub(aquis_aquisstockexchange_security_csv_v3_2.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_aquis_aquisstockexchange_security_csv_v3_2.fields.instrument_type, buffer(offset, length), text, aquis_aquisstockexchange_security_csv_v3_2.instrument_type.display(text))
  end
  return index
end

-- board
aquis_aquisstockexchange_security_csv_v3_2.board = {}

-- board ends at a tab
aquis_aquisstockexchange_security_csv_v3_2.board.delimiter = "\009"
-- board is text in Ascii
aquis_aquisstockexchange_security_csv_v3_2.board.encoding = ENC_ASCII

-- Display: board
aquis_aquisstockexchange_security_csv_v3_2.board.labels = {
  ["GBX/ISDX-exn"] = "board: Gbx Non Liquid (GBX/ISDX-exn)",
  ["GBP/ISDX-exn"] = "board: Gbp Non Liquid (GBP/ISDX-exn)",
  ["USD/ISDX-exn"] = "board: Usd Non Liquid (USD/ISDX-exn)",
  ["USD/ISDX-exl"] = "board: Usd Liquid (USD/ISDX-exl)",
  ["GBX/ISDX-exl"] = "board: Gbx Liquid (GBX/ISDX-exl)",
  ["CHF/ISDX-exl"] = "board: Chf Liquid (CHF/ISDX-exl)",
  ["EUR/ISDX-exl"] = "board: Eur Liquid (EUR/ISDX-exl)",
  ["EUR/ISDX-exn"] = "board: Eur Non Liquid (EUR/ISDX-exn)",
  ["GBP/ISDX-exl"] = "board: Gbp Liquid (GBP/ISDX-exl)",
  ["NOK/ISDX-exl"] = "board: Nok Liquid (NOK/ISDX-exl)",
  ["SEK/ISDX-exn"] = "board: Sek Non Liquid (SEK/ISDX-exn)",
}

aquis_aquisstockexchange_security_csv_v3_2.board.display = function(value)
  return aquis_aquisstockexchange_security_csv_v3_2.board.labels[value] or "board: Unknown("..value..")"
end

-- Dissect: board
aquis_aquisstockexchange_security_csv_v3_2.board.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #aquis_aquisstockexchange_security_csv_v3_2.lines.current then
    return nil, "the line stops before board"
  end
  local index = nil
  if length == nil then
    length, index = aquis_aquisstockexchange_security_csv_v3_2.lines.scan(offset, aquis_aquisstockexchange_security_csv_v3_2.board.delimiter)
  end
  local text = string.sub(aquis_aquisstockexchange_security_csv_v3_2.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_aquis_aquisstockexchange_security_csv_v3_2.fields.board, buffer(offset, length), text, aquis_aquisstockexchange_security_csv_v3_2.board.display(text))
  end
  return index
end

-- issuer
aquis_aquisstockexchange_security_csv_v3_2.issuer = {}

-- issuer ends at a tab
aquis_aquisstockexchange_security_csv_v3_2.issuer.delimiter = "\009"
-- issuer is text in Ascii
aquis_aquisstockexchange_security_csv_v3_2.issuer.encoding = ENC_ASCII

-- Display: issuer
aquis_aquisstockexchange_security_csv_v3_2.issuer.display = function(value)
  return "issuer: "..value
end

-- Dissect: issuer
aquis_aquisstockexchange_security_csv_v3_2.issuer.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #aquis_aquisstockexchange_security_csv_v3_2.lines.current then
    return nil, "the line stops before issuer"
  end
  local index = nil
  if length == nil then
    length, index = aquis_aquisstockexchange_security_csv_v3_2.lines.scan(offset, aquis_aquisstockexchange_security_csv_v3_2.issuer.delimiter)
  end
  local text = string.sub(aquis_aquisstockexchange_security_csv_v3_2.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_aquis_aquisstockexchange_security_csv_v3_2.fields.issuer, buffer(offset, length), text, aquis_aquisstockexchange_security_csv_v3_2.issuer.display(text))
  end
  return index
end

-- origin_country
aquis_aquisstockexchange_security_csv_v3_2.origin_country = {}

-- origin_country ends at a tab
aquis_aquisstockexchange_security_csv_v3_2.origin_country.delimiter = "\009"
-- origin_country is text in Ascii
aquis_aquisstockexchange_security_csv_v3_2.origin_country.encoding = ENC_ASCII

-- Display: origin_country
aquis_aquisstockexchange_security_csv_v3_2.origin_country.display = function(value)
  return "origin_country: "..value
end

-- Dissect: origin_country
aquis_aquisstockexchange_security_csv_v3_2.origin_country.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #aquis_aquisstockexchange_security_csv_v3_2.lines.current then
    return nil, "the line stops before origin_country"
  end
  local index = nil
  if length == nil then
    length, index = aquis_aquisstockexchange_security_csv_v3_2.lines.scan(offset, aquis_aquisstockexchange_security_csv_v3_2.origin_country.delimiter)
  end
  local text = string.sub(aquis_aquisstockexchange_security_csv_v3_2.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_aquis_aquisstockexchange_security_csv_v3_2.fields.origin_country, buffer(offset, length), text, aquis_aquisstockexchange_security_csv_v3_2.origin_country.display(text))
  end
  return index
end

-- issued_qty
aquis_aquisstockexchange_security_csv_v3_2.issued_qty = {}

-- issued_qty ends at a tab
aquis_aquisstockexchange_security_csv_v3_2.issued_qty.delimiter = "\009"
-- issued_qty is an unsigned integer

-- Display: issued_qty
aquis_aquisstockexchange_security_csv_v3_2.issued_qty.display = function(value)
  return "issued_qty: "..value
end

-- Dissect: issued_qty
aquis_aquisstockexchange_security_csv_v3_2.issued_qty.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #aquis_aquisstockexchange_security_csv_v3_2.lines.current then
    return nil, "the line stops before issued_qty"
  end
  local index = nil
  if length == nil then
    length, index = aquis_aquisstockexchange_security_csv_v3_2.lines.scan(offset, aquis_aquisstockexchange_security_csv_v3_2.issued_qty.delimiter)
  end
  local text = string.sub(aquis_aquisstockexchange_security_csv_v3_2.lines.current, offset + 1, offset + length)
  local value, failure = aquis_aquisstockexchange_security_csv_v3_2.lines.unsigned(text)
  if value == nil then
    return nil, "issued_qty \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_aquis_aquisstockexchange_security_csv_v3_2.fields.issued_qty, buffer(offset, length), value, aquis_aquisstockexchange_security_csv_v3_2.issued_qty.display(tostring(value)))
  end
  return index
end

-- ems
aquis_aquisstockexchange_security_csv_v3_2.ems = {}

-- ems ends at a tab
aquis_aquisstockexchange_security_csv_v3_2.ems.delimiter = "\009"
-- ems is an unsigned integer

-- Display: ems
aquis_aquisstockexchange_security_csv_v3_2.ems.display = function(value)
  return "ems: "..value
end

-- Dissect: ems
aquis_aquisstockexchange_security_csv_v3_2.ems.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #aquis_aquisstockexchange_security_csv_v3_2.lines.current then
    return nil, "the line stops before ems"
  end
  local index = nil
  if length == nil then
    length, index = aquis_aquisstockexchange_security_csv_v3_2.lines.scan(offset, aquis_aquisstockexchange_security_csv_v3_2.ems.delimiter)
  end
  local text = string.sub(aquis_aquisstockexchange_security_csv_v3_2.lines.current, offset + 1, offset + length)
  local value, failure = aquis_aquisstockexchange_security_csv_v3_2.lines.unsigned(text)
  if value == nil then
    return nil, "ems \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_aquis_aquisstockexchange_security_csv_v3_2.fields.ems, buffer(offset, length), value, aquis_aquisstockexchange_security_csv_v3_2.ems.display(tostring(value)))
  end
  return index
end

-- market_makers
aquis_aquisstockexchange_security_csv_v3_2.market_makers = {}

-- market_makers ends at a tab
aquis_aquisstockexchange_security_csv_v3_2.market_makers.delimiter = "\009"
-- market_makers is text in Ascii
aquis_aquisstockexchange_security_csv_v3_2.market_makers.encoding = ENC_ASCII

-- Display: market_makers
aquis_aquisstockexchange_security_csv_v3_2.market_makers.display = function(value)
  return "market_makers: "..value
end

-- Dissect: market_makers
aquis_aquisstockexchange_security_csv_v3_2.market_makers.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #aquis_aquisstockexchange_security_csv_v3_2.lines.current then
    return nil, "the line stops before market_makers"
  end
  local index = nil
  if length == nil then
    length, index = aquis_aquisstockexchange_security_csv_v3_2.lines.scan(offset, aquis_aquisstockexchange_security_csv_v3_2.market_makers.delimiter)
  end
  local text = string.sub(aquis_aquisstockexchange_security_csv_v3_2.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_aquis_aquisstockexchange_security_csv_v3_2.fields.market_makers, buffer(offset, length), text, aquis_aquisstockexchange_security_csv_v3_2.market_makers.display(text))
  end
  return index
end

-- test_stock
aquis_aquisstockexchange_security_csv_v3_2.test_stock = {}

-- test_stock ends at a tab
aquis_aquisstockexchange_security_csv_v3_2.test_stock.delimiter = "\009"
-- test_stock is text in Ascii
aquis_aquisstockexchange_security_csv_v3_2.test_stock.encoding = ENC_ASCII

-- Display: test_stock
aquis_aquisstockexchange_security_csv_v3_2.test_stock.labels = {
  ["0"] = "test_stock: Non Test Stock (0)",
  ["1"] = "test_stock: Test Stock (1)",
}

aquis_aquisstockexchange_security_csv_v3_2.test_stock.display = function(value)
  return aquis_aquisstockexchange_security_csv_v3_2.test_stock.labels[value] or "test_stock: Unknown("..value..")"
end

-- Dissect: test_stock
aquis_aquisstockexchange_security_csv_v3_2.test_stock.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #aquis_aquisstockexchange_security_csv_v3_2.lines.current then
    return nil, "the line stops before test_stock"
  end
  local index = nil
  if length == nil then
    length, index = aquis_aquisstockexchange_security_csv_v3_2.lines.scan(offset, aquis_aquisstockexchange_security_csv_v3_2.test_stock.delimiter)
  end
  local text = string.sub(aquis_aquisstockexchange_security_csv_v3_2.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_aquis_aquisstockexchange_security_csv_v3_2.fields.test_stock, buffer(offset, length), text, aquis_aquisstockexchange_security_csv_v3_2.test_stock.display(text))
  end
  return index
end

-- is_tradeable
aquis_aquisstockexchange_security_csv_v3_2.is_tradeable = {}

-- is_tradeable ends at a tab
aquis_aquisstockexchange_security_csv_v3_2.is_tradeable.delimiter = "\009"
-- is_tradeable is text in Ascii
aquis_aquisstockexchange_security_csv_v3_2.is_tradeable.encoding = ENC_ASCII

-- Display: is_tradeable
aquis_aquisstockexchange_security_csv_v3_2.is_tradeable.labels = {
  ["0"] = "is_tradeable: False (0)",
  ["1"] = "is_tradeable: True (1)",
}

aquis_aquisstockexchange_security_csv_v3_2.is_tradeable.display = function(value)
  return aquis_aquisstockexchange_security_csv_v3_2.is_tradeable.labels[value] or "is_tradeable: Unknown("..value..")"
end

-- Dissect: is_tradeable
aquis_aquisstockexchange_security_csv_v3_2.is_tradeable.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #aquis_aquisstockexchange_security_csv_v3_2.lines.current then
    return nil, "the line stops before is_tradeable"
  end
  local index = nil
  if length == nil then
    length, index = aquis_aquisstockexchange_security_csv_v3_2.lines.scan(offset, aquis_aquisstockexchange_security_csv_v3_2.is_tradeable.delimiter)
  end
  local text = string.sub(aquis_aquisstockexchange_security_csv_v3_2.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_aquis_aquisstockexchange_security_csv_v3_2.fields.is_tradeable, buffer(offset, length), text, aquis_aquisstockexchange_security_csv_v3_2.is_tradeable.display(text))
  end
  return index
end

-- adt
aquis_aquisstockexchange_security_csv_v3_2.adt = {}

-- adt ends at a tab
aquis_aquisstockexchange_security_csv_v3_2.adt.delimiter = "\009"
-- adt is an unsigned integer

-- Display: adt
aquis_aquisstockexchange_security_csv_v3_2.adt.display = function(value)
  return "adt: "..value
end

-- Dissect: adt
aquis_aquisstockexchange_security_csv_v3_2.adt.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #aquis_aquisstockexchange_security_csv_v3_2.lines.current then
    return nil, "the line stops before adt"
  end
  local index = nil
  if length == nil then
    length, index = aquis_aquisstockexchange_security_csv_v3_2.lines.scan(offset, aquis_aquisstockexchange_security_csv_v3_2.adt.delimiter)
  end
  local text = string.sub(aquis_aquisstockexchange_security_csv_v3_2.lines.current, offset + 1, offset + length)
  local value, failure = aquis_aquisstockexchange_security_csv_v3_2.lines.unsigned(text)
  if value == nil then
    return nil, "adt \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_aquis_aquisstockexchange_security_csv_v3_2.fields.adt, buffer(offset, length), value, aquis_aquisstockexchange_security_csv_v3_2.adt.display(tostring(value)))
  end
  return index
end

-- lis
aquis_aquisstockexchange_security_csv_v3_2.lis = {}

-- lis ends at a tab
aquis_aquisstockexchange_security_csv_v3_2.lis.delimiter = "\009"
-- lis is an unsigned integer

-- Display: lis
aquis_aquisstockexchange_security_csv_v3_2.lis.display = function(value)
  return "lis: "..value
end

-- Dissect: lis
aquis_aquisstockexchange_security_csv_v3_2.lis.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #aquis_aquisstockexchange_security_csv_v3_2.lines.current then
    return nil, "the line stops before lis"
  end
  local index = nil
  if length == nil then
    length, index = aquis_aquisstockexchange_security_csv_v3_2.lines.scan(offset, aquis_aquisstockexchange_security_csv_v3_2.lis.delimiter)
  end
  local text = string.sub(aquis_aquisstockexchange_security_csv_v3_2.lines.current, offset + 1, offset + length)
  local value, failure = aquis_aquisstockexchange_security_csv_v3_2.lines.unsigned(text)
  if value == nil then
    return nil, "lis \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_aquis_aquisstockexchange_security_csv_v3_2.fields.lis, buffer(offset, length), value, aquis_aquisstockexchange_security_csv_v3_2.lis.display(tostring(value)))
  end
  return index
end

-- sector
aquis_aquisstockexchange_security_csv_v3_2.sector = {}

-- sector ends at a tab
aquis_aquisstockexchange_security_csv_v3_2.sector.delimiter = "\009"
-- sector is an unsigned integer

-- Display: sector
aquis_aquisstockexchange_security_csv_v3_2.sector.labels = {
  ["0"] = "sector: Not Applicable (0)",
  ["42"] = "sector: Communication Services (42)",
  ["43"] = "sector: Consumer Discretionary (43)",
  ["44"] = "sector: Consumer Staples (44)",
  ["45"] = "sector: Energy (45)",
  ["46"] = "sector: Financials (46)",
  ["47"] = "sector: Healthcare (47)",
  ["48"] = "sector: Industrials (48)",
  ["49"] = "sector: Information Technology (49)",
  ["50"] = "sector: Materials (50)",
  ["51"] = "sector: Real Estate (51)",
  ["52"] = "sector: Utilities (52)",
}

aquis_aquisstockexchange_security_csv_v3_2.sector.display = function(value)
  return aquis_aquisstockexchange_security_csv_v3_2.sector.labels[value] or "sector: Unknown("..value..")"
end

-- Dissect: sector
aquis_aquisstockexchange_security_csv_v3_2.sector.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #aquis_aquisstockexchange_security_csv_v3_2.lines.current then
    return nil, "the line stops before sector"
  end
  local index = nil
  if length == nil then
    length, index = aquis_aquisstockexchange_security_csv_v3_2.lines.scan(offset, aquis_aquisstockexchange_security_csv_v3_2.sector.delimiter)
  end
  local text = string.sub(aquis_aquisstockexchange_security_csv_v3_2.lines.current, offset + 1, offset + length)
  local value, failure = aquis_aquisstockexchange_security_csv_v3_2.lines.unsigned(text)
  if value == nil then
    return nil, "sector \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_aquis_aquisstockexchange_security_csv_v3_2.fields.sector, buffer(offset, length), value, aquis_aquisstockexchange_security_csv_v3_2.sector.display(text))
  end
  return index
end

-- quote_bases
aquis_aquisstockexchange_security_csv_v3_2.quote_bases = {}

-- quote_bases ends at a tab
aquis_aquisstockexchange_security_csv_v3_2.quote_bases.delimiter = "\009"
-- quote_bases is text in Ascii
aquis_aquisstockexchange_security_csv_v3_2.quote_bases.encoding = ENC_ASCII

-- Display: quote_bases
aquis_aquisstockexchange_security_csv_v3_2.quote_bases.display = function(value)
  return "quote_bases: "..value
end

-- Dissect: quote_bases
aquis_aquisstockexchange_security_csv_v3_2.quote_bases.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #aquis_aquisstockexchange_security_csv_v3_2.lines.current then
    return nil, "the line stops before quote_bases"
  end
  local index = nil
  if length == nil then
    length, index = aquis_aquisstockexchange_security_csv_v3_2.lines.scan(offset, aquis_aquisstockexchange_security_csv_v3_2.quote_bases.delimiter)
  end
  local text = string.sub(aquis_aquisstockexchange_security_csv_v3_2.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_aquis_aquisstockexchange_security_csv_v3_2.fields.quote_bases, buffer(offset, length), text, aquis_aquisstockexchange_security_csv_v3_2.quote_bases.display(text))
  end
  return index
end

-- illiquid
aquis_aquisstockexchange_security_csv_v3_2.illiquid = {}

-- illiquid ends at a tab
aquis_aquisstockexchange_security_csv_v3_2.illiquid.delimiter = "\009"
-- illiquid is text in Ascii
aquis_aquisstockexchange_security_csv_v3_2.illiquid.encoding = ENC_ASCII

-- Display: illiquid
aquis_aquisstockexchange_security_csv_v3_2.illiquid.labels = {
  ["0"] = "illiquid: Liquid (0)",
  ["1"] = "illiquid: Illiquid (1)",
}

aquis_aquisstockexchange_security_csv_v3_2.illiquid.display = function(value)
  return aquis_aquisstockexchange_security_csv_v3_2.illiquid.labels[value] or "illiquid: Unknown("..value..")"
end

-- Dissect: illiquid
aquis_aquisstockexchange_security_csv_v3_2.illiquid.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #aquis_aquisstockexchange_security_csv_v3_2.lines.current then
    return nil, "the line stops before illiquid"
  end
  local index = nil
  if length == nil then
    length, index = aquis_aquisstockexchange_security_csv_v3_2.lines.scan(offset, aquis_aquisstockexchange_security_csv_v3_2.illiquid.delimiter)
  end
  local text = string.sub(aquis_aquisstockexchange_security_csv_v3_2.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_aquis_aquisstockexchange_security_csv_v3_2.fields.illiquid, buffer(offset, length), text, aquis_aquisstockexchange_security_csv_v3_2.illiquid.display(text))
  end
  return index
end


-----------------------------------------------------------------------
-- Protocol Records
-----------------------------------------------------------------------

-- Security
aquis_aquisstockexchange_security_csv_v3_2.security = {}

-- The delimiter every field of Security ends at, which its line is split at
aquis_aquisstockexchange_security_csv_v3_2.security.delimiter = "\009"

-- Dissect Fields: Security
-- Split: every field of Security ends at a tab and none is quoted, so its line is split once and each field handed its range
aquis_aquisstockexchange_security_csv_v3_2.security.fields = function(buffer, offset, packet, parent)
  local starts, lengths = aquis_aquisstockexchange_security_csv_v3_2.lines.split(offset, aquis_aquisstockexchange_security_csv_v3_2.security.delimiter)
  if #starts > 22 then
    return nil, "Security: the line has " .. #starts .. " fields, its layout 22"
  end
  local index = nil
  local failure = nil

  -- id: field 1
  index, failure = aquis_aquisstockexchange_security_csv_v3_2.id.dissect(buffer, starts[1], packet, parent, lengths[1])
  if failure ~= nil then
    return nil, failure
  end

  -- description: field 2
  index, failure = aquis_aquisstockexchange_security_csv_v3_2.description.dissect(buffer, starts[2], packet, parent, lengths[2])
  if failure ~= nil then
    return nil, failure
  end

  -- ticker: field 3
  index, failure = aquis_aquisstockexchange_security_csv_v3_2.ticker.dissect(buffer, starts[3], packet, parent, lengths[3])
  if failure ~= nil then
    return nil, failure
  end

  -- isin: field 4
  index, failure = aquis_aquisstockexchange_security_csv_v3_2.isin.dissect(buffer, starts[4], packet, parent, lengths[4])
  if failure ~= nil then
    return nil, failure
  end

  -- currency: field 5
  index, failure = aquis_aquisstockexchange_security_csv_v3_2.currency.dissect(buffer, starts[5], packet, parent, lengths[5])
  if failure ~= nil then
    return nil, failure
  end

  -- mic: field 6
  index, failure = aquis_aquisstockexchange_security_csv_v3_2.mic.dissect(buffer, starts[6], packet, parent, lengths[6])
  if failure ~= nil then
    return nil, failure
  end

  -- tick_name: field 7
  index, failure = aquis_aquisstockexchange_security_csv_v3_2.tick_name.dissect(buffer, starts[7], packet, parent, lengths[7])
  if failure ~= nil then
    return nil, failure
  end

  -- segment: field 8
  index, failure = aquis_aquisstockexchange_security_csv_v3_2.segment.dissect(buffer, starts[8], packet, parent, lengths[8])
  if failure ~= nil then
    return nil, failure
  end

  -- instrument_type: field 9
  index, failure = aquis_aquisstockexchange_security_csv_v3_2.instrument_type.dissect(buffer, starts[9], packet, parent, lengths[9])
  if failure ~= nil then
    return nil, failure
  end

  -- board: field 10
  index, failure = aquis_aquisstockexchange_security_csv_v3_2.board.dissect(buffer, starts[10], packet, parent, lengths[10])
  if failure ~= nil then
    return nil, failure
  end

  -- issuer: field 11
  index, failure = aquis_aquisstockexchange_security_csv_v3_2.issuer.dissect(buffer, starts[11], packet, parent, lengths[11])
  if failure ~= nil then
    return nil, failure
  end

  -- origin_country: field 12
  index, failure = aquis_aquisstockexchange_security_csv_v3_2.origin_country.dissect(buffer, starts[12], packet, parent, lengths[12])
  if failure ~= nil then
    return nil, failure
  end

  -- issued_qty: field 13
  index, failure = aquis_aquisstockexchange_security_csv_v3_2.issued_qty.dissect(buffer, starts[13], packet, parent, lengths[13])
  if failure ~= nil then
    return nil, failure
  end

  -- ems: field 14
  index, failure = aquis_aquisstockexchange_security_csv_v3_2.ems.dissect(buffer, starts[14], packet, parent, lengths[14])
  if failure ~= nil then
    return nil, failure
  end

  -- market_makers: field 15
  index, failure = aquis_aquisstockexchange_security_csv_v3_2.market_makers.dissect(buffer, starts[15], packet, parent, lengths[15])
  if failure ~= nil then
    return nil, failure
  end

  -- test_stock: field 16
  index, failure = aquis_aquisstockexchange_security_csv_v3_2.test_stock.dissect(buffer, starts[16], packet, parent, lengths[16])
  if failure ~= nil then
    return nil, failure
  end

  -- is_tradeable: field 17
  index, failure = aquis_aquisstockexchange_security_csv_v3_2.is_tradeable.dissect(buffer, starts[17], packet, parent, lengths[17])
  if failure ~= nil then
    return nil, failure
  end

  -- adt: field 18
  index, failure = aquis_aquisstockexchange_security_csv_v3_2.adt.dissect(buffer, starts[18], packet, parent, lengths[18])
  if failure ~= nil then
    return nil, failure
  end

  -- lis: field 19
  index, failure = aquis_aquisstockexchange_security_csv_v3_2.lis.dissect(buffer, starts[19], packet, parent, lengths[19])
  if failure ~= nil then
    return nil, failure
  end

  -- sector: field 20
  index, failure = aquis_aquisstockexchange_security_csv_v3_2.sector.dissect(buffer, starts[20], packet, parent, lengths[20])
  if failure ~= nil then
    return nil, failure
  end

  -- quote_bases: field 21
  index, failure = aquis_aquisstockexchange_security_csv_v3_2.quote_bases.dissect(buffer, starts[21], packet, parent, lengths[21])
  if failure ~= nil then
    return nil, failure
  end

  -- illiquid: field 22
  index, failure = aquis_aquisstockexchange_security_csv_v3_2.illiquid.dissect(buffer, starts[22], packet, parent, lengths[22])
  if failure ~= nil then
    return nil, failure
  end

  return #aquis_aquisstockexchange_security_csv_v3_2.lines.current + 1
end

-- Dissect: Security
aquis_aquisstockexchange_security_csv_v3_2.security.dissect = function(buffer, offset, packet, parent)
  local element = parent:add(omi_aquis_aquisstockexchange_security_csv_v3_2.fields.security, buffer(), "Security", "Security")
  return aquis_aquisstockexchange_security_csv_v3_2.security.fields(buffer, offset, packet, element)
end


-----------------------------------------------------------------------
-- Protocol Lines
-----------------------------------------------------------------------

-- The text between a line's fields, its Packet rule's Delimiter: a tab
aquis_aquisstockexchange_security_csv_v3_2.delimiter = "\009"

-- The character ending a line, its Packet rule's Terminator: 10
aquis_aquisstockexchange_security_csv_v3_2.terminator = "\010"

-- The layouts a file states in its header, in model order: the header lines each states
aquis_aquisstockexchange_security_csv_v3_2.variants = {
  {
    name = "Security.v3.2",
    headers = { "id\009description\009ticker\009isin\009currency\009mic\009tick_name\009segment\009instrument_type\009board\009issuer\009origin_country\009issued_qty\009ems\009market_makers\009test_stock\009is_tradeable\009adt\009lis\009sector\009quote_bases\009illiquid" },
  },
}

-- The layout the file's lines are read by: the one its file handler found, the first where none did
aquis_aquisstockexchange_security_csv_v3_2.variant = function()
  if aquis_aquisstockexchange_security_csv_v3_2.file == nil or aquis_aquisstockexchange_security_csv_v3_2.file.variant == nil then
    return 1
  end
  return aquis_aquisstockexchange_security_csv_v3_2.file.variant
end

-- A header line: its layout, and its columns
aquis_aquisstockexchange_security_csv_v3_2.header = function(buffer, packet, parent, variant)
  packet.cols.info = "Header Row"
  local name = aquis_aquisstockexchange_security_csv_v3_2.variants[variant].name
  local item = parent:add(omi_aquis_aquisstockexchange_security_csv_v3_2.fields.header_row, buffer(), name, "Header Row: " .. name)
  local starts, lengths = aquis_aquisstockexchange_security_csv_v3_2.lines.split(0, aquis_aquisstockexchange_security_csv_v3_2.delimiter)
  for index = 1, #starts do
    local range = buffer(starts[index], lengths[index])
    item:add(range, "Column " .. index .. ": " .. range:string(ENC_ASCII))
  end
end

-- A line the layout does not read, and why: its fields, as they are
aquis_aquisstockexchange_security_csv_v3_2.outside = function(buffer, packet, parent, reason)
  packet.cols.info = "Line Outside Layout"
  local item = parent:add(omi_aquis_aquisstockexchange_security_csv_v3_2.fields.line_outside_layout, buffer(), reason, "Line Outside Layout: " .. reason)
  item:add_proto_expert_info(omi_aquis_aquisstockexchange_security_csv_v3_2.experts.line_outside_layout, reason)
  local starts, lengths = aquis_aquisstockexchange_security_csv_v3_2.lines.split(0, aquis_aquisstockexchange_security_csv_v3_2.delimiter)
  for index = 1, #starts do
    local range = buffer(starts[index], lengths[index])
    item:add(range, "Field " .. index .. ": " .. range:string(ENC_ASCII))
  end
end

-- Is a line one of the layout's header lines?
aquis_aquisstockexchange_security_csv_v3_2.headed = function(line, variant)
  for index, header in ipairs(aquis_aquisstockexchange_security_csv_v3_2.variants[variant].headers) do
    if line == header then
      return true
    end
  end
  return false
end

-- Does a line read as the layout's: a header line, or Security?
aquis_aquisstockexchange_security_csv_v3_2.reads = function(buffer, packet, line)
  aquis_aquisstockexchange_security_csv_v3_2.lines.current = line
  local variant = aquis_aquisstockexchange_security_csv_v3_2.variant()
  if aquis_aquisstockexchange_security_csv_v3_2.headed(line, variant) then
    return true
  end
  local index, failure = aquis_aquisstockexchange_security_csv_v3_2.security.fields(buffer, 0, packet, nil)
  return failure == nil
end

-- Dissect a line: a header line, or Security, or a line outside the layout
aquis_aquisstockexchange_security_csv_v3_2.line = function(buffer, packet, parent)
  local line = buffer:raw()
  aquis_aquisstockexchange_security_csv_v3_2.lines.current = line
  local variant = aquis_aquisstockexchange_security_csv_v3_2.variant()
  if aquis_aquisstockexchange_security_csv_v3_2.headed(line, variant) then
    return aquis_aquisstockexchange_security_csv_v3_2.header(buffer, packet, parent, variant)
  end

  -- read first with no tree, so a line the layout does not read is shown whole
  local index, failure = aquis_aquisstockexchange_security_csv_v3_2.security.fields(buffer, 0, packet, nil)
  if failure ~= nil then
    return aquis_aquisstockexchange_security_csv_v3_2.outside(buffer, packet, parent, failure)
  end

  packet.cols.info = "Security"
  aquis_aquisstockexchange_security_csv_v3_2.security.dissect(buffer, 0, packet, parent)
end
-- Dissect Aquis AquisStockExchange Security Csv 3.2
function omi_aquis_aquisstockexchange_security_csv_v3_2.dissector(buffer, packet, parent)
  packet.cols.protocol = omi_aquis_aquisstockexchange_security_csv_v3_2.name

  local protocol = parent:add(omi_aquis_aquisstockexchange_security_csv_v3_2, buffer(), omi_aquis_aquisstockexchange_security_csv_v3_2.description, "(" .. buffer:len() .. " Bytes)")
  return aquis_aquisstockexchange_security_csv_v3_2.line(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- File Lines
-----------------------------------------------------------------------

-- A file's line, the one at an offset or with none the next, to the terminator: its offset, its text,
-- and its frame's time. The file is read a block at a time, the block kept in the capture's private
-- table; a line read again reads a block of its own
aquis_aquisstockexchange_security_csv_v3_2.read = function(file, capture, offset)
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
    local ends = string.find(block.data, aquis_aquisstockexchange_security_csv_v3_2.terminator, block.at, true)
    if ends ~= nil then
      start = block.offset + block.at - 1
      line = string.sub(block.data, block.at, ends - 1)
      block.at = ends + #aquis_aquisstockexchange_security_csv_v3_2.terminator
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
aquis_aquisstockexchange_security_csv_v3_2.file = {}

-- Exported pdu tags each frame starts with: the dissector it is for, then the end of the tags
aquis_aquisstockexchange_security_csv_v3_2.file.prefix = "\000\012\000\048omi.aquis.aquisstockexchange.security.csv.v3.2\000\000\000\000\000\000"

-- The text a file of each layout starts with
aquis_aquisstockexchange_security_csv_v3_2.file.signatures = {
  "id\009description\009ticker\009isin\009currency\009mic\009tick_name\009segment\009instrument_type\009board\009issuer\009origin_country\009issued_qty\009ems\009market_makers\009test_stock\009is_tradeable\009adt\009lis\009sector\009quote_bases\009illiquid\010",
}

-- The layout a file's first bytes are the signature of, or nil for a file of no layout
aquis_aquisstockexchange_security_csv_v3_2.file.layout = function(file)
  local first = file:read(191)
  if first == nil then
    return nil
  end
  for index, signature in ipairs(aquis_aquisstockexchange_security_csv_v3_2.file.signatures) do
    if first:sub(1, #signature) == signature then
      return index
    end
  end
  return nil
end

-- A record read into a frame, the one at an offset or with none the next: its offset, nil at the end of the file
aquis_aquisstockexchange_security_csv_v3_2.file.frame = function(file, capture, frame, offset)
  local at, data, seconds, nanoseconds = aquis_aquisstockexchange_security_csv_v3_2.read(file, capture, offset)
  if at == nil then
    return nil
  end
  data = aquis_aquisstockexchange_security_csv_v3_2.file.prefix .. data
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

-- Aquis AquisStockExchange Security Csv 3.2 (Omi) file handler: a magic number reader, its signatures the magic
aquis_aquisstockexchange_security_csv_v3_2.file.handler = FileHandler.new("Aquis AquisStockExchange Security Csv 3.2 (Omi)", "omi_aquis_aquisstockexchange_security_csv_v3_2", "Aquis AquisStockExchange Security Csv 3.2 (Omi) file", "rm")

-- A file of a layout is this protocol's; read from its start, so its first line is the first frame
aquis_aquisstockexchange_security_csv_v3_2.file.handler.read_open = function(file, capture)
  local layout = aquis_aquisstockexchange_security_csv_v3_2.file.layout(file)
  if layout == nil then
    return false
  end
  aquis_aquisstockexchange_security_csv_v3_2.file.variant = layout
  file:seek("set", 0)
  capture.private_table = {}
  capture.encap = wtap_encaps.WIRESHARK_UPPER_PDU
  capture.time_precision = wtap_tsprecs.NSEC
  return true
end

-- The next record, returning its offset in the file
aquis_aquisstockexchange_security_csv_v3_2.file.handler.read = function(file, capture, frame)
  local offset = aquis_aquisstockexchange_security_csv_v3_2.file.frame(file, capture, frame, nil)
  if offset == nil then
    return false
  end
  return offset
end

-- The record at an offset read before
aquis_aquisstockexchange_security_csv_v3_2.file.handler.seek_read = function(file, capture, frame, offset)
  return aquis_aquisstockexchange_security_csv_v3_2.file.frame(file, capture, frame, offset) ~= nil
end

-- Nothing is held open beyond the file Wireshark closes
aquis_aquisstockexchange_security_csv_v3_2.file.handler.read_close = function(file, capture)
  return true
end

aquis_aquisstockexchange_security_csv_v3_2.file.handler.seq_read_close = function(file, capture)
  return true
end

-- Register Aquis AquisStockExchange Security Csv 3.2 (Omi) files
register_filehandler(aquis_aquisstockexchange_security_csv_v3_2.file.handler)

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
