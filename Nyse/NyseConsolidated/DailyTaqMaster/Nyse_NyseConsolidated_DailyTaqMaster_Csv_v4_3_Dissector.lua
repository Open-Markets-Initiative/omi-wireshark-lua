-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse NyseConsolidated DailyTaqMaster Csv 4.3 Protocol
local omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3 = Proto("Omi.Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3", "Nyse NyseConsolidated DailyTaqMaster Csv 4.3")

-- Protocol table
local nyse_nyseconsolidated_dailytaqmaster_csv_v4_3 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nyse NyseConsolidated DailyTaqMaster Csv 4.3 Fields
omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.security = ProtoField.new("Security", "nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.security", ftypes.STRING, nil, nil)
omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.symbol = ProtoField.new("Symbol", "nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.symbol", ftypes.STRING, nil, nil, nil, "Stock symbol in NYSE format")
omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.security_description = ProtoField.new("Security Description", "nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.securitydescription", ftypes.STRING, nil, nil, nil, "Name of listing. Full name/Security short description")
omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.cusip = ProtoField.new("Cusip", "nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.cusip", ftypes.STRING, nil, nil, nil, "S&P's CUSIP security identifier.")
omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.security_type = ProtoField.new("Security Type", "nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.securitytype", ftypes.STRING, nil, nil, nil, "Identifies the type of the security:")
omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.sip_symbol = ProtoField.new("Sip Symbol", "nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.sipsymbol", ftypes.STRING, nil, nil, nil, "Stock Symbol expressed in the format used by the SIP (CTA for Tapes A & B, UTP for Tape C).")
omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.old_symbol = ProtoField.new("Old Symbol", "nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.oldsymbol", ftypes.STRING, nil, nil, nil, "If the symbol has changed, contains the previous symbol in NYSE format.")
omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.test_symbol_flag = ProtoField.new("Test Symbol Flag", "nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.testsymbolflag", ftypes.STRING, nil, nil, nil, "Indicates whether the security is a SIP test symbol and not an actual tradable security.")
omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.listed_exchange = ProtoField.new("Listed Exchange", "nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.listedexchange", ftypes.STRING, nil, nil, nil, "Listing exchange of the security. Primary Listing Market codes and description. See Participant IDs for codes")
omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.tape = ProtoField.new("Tape", "nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tape", ftypes.STRING, nil, nil, nil, "The tape of this symbol. Valid values: A, B, C")
omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.unit_of_trade = ProtoField.new("Unit Of Trade", "nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.unitoftrade", ftypes.UINT64, nil, nil, nil, "Minimum incremental size of a trade, in shares. Defaulted to 1.")
omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.round_lot = ProtoField.new("Round Lot", "nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.roundlot", ftypes.UINT64, nil, nil, nil, "The number of shares the security quotes at. Valid values: 100,40,10,1")
omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.nyse_industry_code = ProtoField.new("Nyse Industry Code", "nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.nyseindustrycode", ftypes.STRING, nil, nil, nil, "The issue’s industry code. Applies only to NYSE Group Listed securities (NYSE, NYSE American, NYSE Arca, NYSE National, and NYSE Texas). See NYSE Industry Codes.")
omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.shares_outstanding = ProtoField.new("Shares Outstanding", "nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.sharesoutstanding", ftypes.DOUBLE, nil, nil, nil, "Total number of shares outstanding for the current day in millions, with no trailing or leading zeroes.")
omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.halt_delay_reason = ProtoField.new("Halt Delay Reason", "nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.haltdelayreason", ftypes.STRING, nil, nil, nil, "Reason for the trading status of this security, such as Trading Halt.")
omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.specialist_clearing_agent = ProtoField.new("Specialist Clearing Agent", "nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.specialistclearingagent", ftypes.STRING, nil, nil, nil, "Specialist Clearing Firm (NYSE, NYSE American).")
omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.specialist_clearing_number = ProtoField.new("Specialist Clearing Number", "nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.specialistclearingnumber", ftypes.INT64, nil, nil, nil, "For NYSE/NYSE American listings, Specialist Clearing Number (if applicable).")
omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.specialist_post_number = ProtoField.new("Specialist Post Number", "nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.specialistpostnumber", ftypes.INT64, nil, nil, nil, "For NYSE/NYSE American listings, Specialist identifier.")
omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.specialist_panel = ProtoField.new("Specialist Panel", "nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.specialistpanel", ftypes.STRING, nil, nil, nil, "For NYSE/NYSE American listings, this symbol’s trading floor location.")
omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.traded_on_nysemkt = ProtoField.new("Traded On Nysemkt", "nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedonnysemkt", ftypes.INT64, nil, nil, nil, "Did the issue trade on NYSE American today:")
omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.traded_on_nasdaqbx = ProtoField.new("Traded On Nasdaqbx", "nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedonnasdaqbx", ftypes.INT64, nil, nil, nil, "Did the issue trade on NASDAQ OMX BX today:")
omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.traded_on_nsx = ProtoField.new("Traded On Nsx", "nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedonnsx", ftypes.INT64, nil, nil, nil, "Did the issue trade on NYSE National today:")
omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.traded_on_finra = ProtoField.new("Traded On Finra", "nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedonfinra", ftypes.INT64, nil, nil, nil, "Did the issue trade on FINRA today:")
omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.traded_on_ise = ProtoField.new("Traded On Ise", "nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedonise", ftypes.INT64, nil, nil, nil, "Did the issue trade on ISE today:")
omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.traded_on_edge_a = ProtoField.new("Traded On Edge A", "nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedonedgea", ftypes.INT64, nil, nil, nil, "Did the issue trade on CBOE EDGA Exchange today:")
omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.traded_on_edge_x = ProtoField.new("Traded On Edge X", "nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedonedgex", ftypes.INT64, nil, nil, nil, "Did the issue trade on CBOE EDGX Exchange today:")
omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.traded_on_nyse_texas = ProtoField.new("Traded On Nyse Texas", "nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedonnysetexas", ftypes.INT64, nil, nil, nil, "Did the issue trade on NYSE Texas today:")
omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.traded_on_nyse = ProtoField.new("Traded On Nyse", "nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedonnyse", ftypes.INT64, nil, nil, nil, "Did the issue trade on NYSE today:")
omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.traded_on_arca = ProtoField.new("Traded On Arca", "nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedonarca", ftypes.INT64, nil, nil, nil, "Did the issue trade on NYSE Arca today:")
omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.traded_on_nasdaq = ProtoField.new("Traded On Nasdaq", "nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedonnasdaq", ftypes.INT64, nil, nil, nil, "Did the issue trade on Nasdaq today:")
omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.traded_on_cboe = ProtoField.new("Traded On Cboe", "nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedoncboe", ftypes.INT64, nil, nil, nil, "Did the issue trade on CBSX today:")
omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.traded_on_psx = ProtoField.new("Traded On Psx", "nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedonpsx", ftypes.INT64, nil, nil, nil, "Did the issue trade on NASDAQ OMX PHLX today:")
omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.traded_on_batsy = ProtoField.new("Traded On Batsy", "nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedonbatsy", ftypes.INT64, nil, nil, nil, "Did the issue trade on CBOE BYX today:")
omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.traded_on_bats = ProtoField.new("Traded On Bats", "nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedonbats", ftypes.INT64, nil, nil, nil, "Did the issue trade on CBOE BZX today:")
omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.traded_on_iex = ProtoField.new("Traded On Iex", "nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedoniex", ftypes.INT64, nil, nil, nil, "Did the issue trade on IEX today:")
omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.tick_pilot_indicator = ProtoField.new("Tick Pilot Indicator", "nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tickpilotindicator", ftypes.STRING, nil, nil, nil, "Tick Pilot Securities Group Refer to: https://www.nyse.com/tick-pilot")
omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.effective_date = ProtoField.new("Effective Date", "nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.effectivedate", ftypes.STRING, nil, nil, nil, "The date this security was admitted to trading. Format: YYYYMMDD Field may be blank in some cases, including symbols admitted before 2012.")
omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.traded_on_ltse = ProtoField.new("Traded On Ltse", "nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedonltse", ftypes.INT64, nil, nil, nil, "Did the issue trade on LTSE today:")
omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.traded_on_memx = ProtoField.new("Traded On Memx", "nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedonmemx", ftypes.INT64, nil, nil, nil, "Did the issue trade on MEMX today:")
omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.traded_on_miax = ProtoField.new("Traded On Miax", "nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedonmiax", ftypes.INT64, nil, nil, nil, "Did the issue trade on MIAX today:")
omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.traded_on_24x = ProtoField.new("Traded On 24x", "nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedon24x", ftypes.INT64, nil, nil, nil, "Did the issue trade on 24X today:")
omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.traded_on_txse = ProtoField.new("Traded On Txse", "nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedontxse", ftypes.INT64, nil, nil, nil, "Did the issue trade on TXSE today:")
omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.header_row = ProtoField.new("Header Row", "nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.headerrow", ftypes.STRING, nil, nil, nil, "The line naming a file's columns, which states the layout its lines are read in")
omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.line_outside_layout = ProtoField.new("Line Outside Layout", "nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.lineoutsidelayout", ftypes.STRING, nil, nil, nil, "A line the layout does not read: no header row, and not the record")

-----------------------------------------------------------------------
-- Declare Dissection Experts
-----------------------------------------------------------------------

-- A line the layout does not read
omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.experts.line_outside_layout = ProtoExpert.new("nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.lineoutsidelayout.expert", "Line Outside Layout", expert.group.MALFORMED, expert.severity.WARN)

-----------------------------------------------------------------------
-- Protocol Primitives
-----------------------------------------------------------------------

-- The readings a field calls with its own traits, and the line being dissected
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines = {}

-- A line split at a delimiter, from an offset: where each field starts, and its length
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.split = function(offset, delimiter)
  local line = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current
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
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.scan = function(offset, delimiter)
  local line = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current
  local at = string.find(line, delimiter, offset + 1, true)
  if at == nil then
    return #line - offset, #line + 1
  end
  return at - 1 - offset, at - 1 + #delimiter
end
-- A decimal's text to a count of places, exactly, as the decimal it is (131.05); nil and why where it
-- has more places than zeros, or more digits than 64 bits hold
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.places = function(text, places)
  local sign, whole, fraction = string.match(text, "^(%-?)(%d*)%.?(%d*)$")
  if sign == nil or (whole == "" and fraction == "") then
    return nil, "is not a decimal"
  end
  fraction = string.match(fraction, "^(.-)0*$")
  if #fraction > places then
    return nil, "has " .. #fraction .. " decimal places, its field " .. places
  end
  whole = string.match(whole, "^0*(.*)$")
  local digits = string.match(whole .. fraction .. string.rep("0", places - #fraction), "^0*(.*)$")
  if #digits > 19 or (#digits == 19 and digits > "9223372036854775807") then
    return nil, "overflows its field"
  end
  if whole == "" then
    whole = "0"
  end
  local exact = whole
  if fraction ~= "" then
    exact = whole .. "." .. fraction
  end
  if sign == "-" and digits ~= "" then
    exact = "-" .. exact
  end
  return exact
end
-- An unsigned integer's text, exactly, as a UInt64: a Lua number holds 15 digits exactly, and more are
-- held in two parts; nil and why where it is not one
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.unsigned = function(text)
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
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.signed = function(text)
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
-- Days since 1970-01-01 of a yyyymmdd date, or nil for text naming no day
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.days = function(text)
  if #text ~= 8 or string.find(text, "^%d+$") == nil then
    return nil
  end
  local year = tonumber(string.sub(text, 1, 4))
  local month = tonumber(string.sub(text, 5, 6))
  local day = tonumber(string.sub(text, 7, 8))
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

-- Symbol
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.symbol = {}

-- Symbol ends at "|"
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.symbol.delimiter = "|"
-- Symbol is text in Ascii
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.symbol.encoding = ENC_ASCII

-- Display: Symbol
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.symbol.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current then
    return nil, "the line stops before Symbol"
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.symbol.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.symbol, buffer(offset, length), text, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.symbol.display(text))
  end
  return index
end

-- Security Description
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.security_description = {}

-- Security Description ends at "|"
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.security_description.delimiter = "|"
-- Security Description is text in Windows1252
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.security_description.encoding = ENC_WINDOWS_1252

-- Display: Security Description
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.security_description.display = function(value)
  return "Security Description: "..value
end

-- Dissect: Security Description
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.security_description.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current then
    return nil, "the line stops before Security Description"
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.security_description.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Windows1252: decoded to UTF-8
    local range = buffer(offset, length)
    local value = range:string(nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.security_description.encoding)
    parent:add(omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.security_description, range, value, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.security_description.display(value))
  end
  return index
end

-- Cusip
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.cusip = {}

-- Cusip ends at "|"
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.cusip.delimiter = "|"
-- Cusip is text in Ascii
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.cusip.encoding = ENC_ASCII

-- Display: Cusip
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.cusip.display = function(value)
  return "Cusip: "..value
end

-- Dissect: Cusip
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.cusip.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current then
    -- the line stops before it: optional, it has no value
    return offset
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.cusip.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current, offset + 1, offset + length)
  if text == "" then
    return index
  end
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.cusip, buffer(offset, length), text, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.cusip.display(text))
  end
  return index
end

-- Security Type
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.security_type = {}

-- Security Type ends at "|"
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.security_type.delimiter = "|"
-- Security Type is text in Ascii
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.security_type.encoding = ENC_ASCII

-- Display: Security Type
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.security_type.labels = {
  ["A"] = "Security Type: Common Stock (A)",
  ["B"] = "Security Type: Preferred Stock (B)",
  ["C"] = "Security Type: Warrant (C)",
  ["D"] = "Security Type: Rights (D)",
  ["E"] = "Security Type: Corporate Bond (E)",
  ["ETF"] = "Security Type: Exchange Traded Fund (includes Nasdaq and BATS listed ETPs) (ETF)",
  ["ETN"] = "Security Type: Exchange Traded Note (ETN)",
  ["ETS"] = "Security Type: Single-Security ETF (ETS)",
  ["G"] = "Security Type: Structured Product (G)",
  ["H"] = "Security Type: ADR Common (H)",
  ["I"] = "Security Type: ADR Preferred (I)",
  ["J"] = "Security Type: ADR Warrants (J)",
  ["K"] = "Security Type: ADR Rights (K)",
  ["P"] = "Security Type: Fund (P)",
  ["Q"] = "Security Type: Basket (Q)",
  ["R"] = "Security Type: Unit (R)",
  ["S"] = "Security Type: Liquidating Trust (S)",
  ["U"] = "Security Type: Unknown (U)",
  ["M"] = "Security Type: Undocumented M (M)",
  ["ETV"] = "Security Type: Undocumented ETV (ETV)",
}

nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.security_type.display = function(value)
  return nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.security_type.labels[value] or "Security Type: Unknown("..value..")"
end

-- Dissect: Security Type
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.security_type.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current then
    return nil, "the line stops before Security Type"
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.security_type.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.security_type, buffer(offset, length), text, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.security_type.display(text))
  end
  return index
end

-- Sip Symbol
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.sip_symbol = {}

-- Sip Symbol ends at "|"
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.sip_symbol.delimiter = "|"
-- Sip Symbol is text in Ascii
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.sip_symbol.encoding = ENC_ASCII

-- Display: Sip Symbol
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.sip_symbol.display = function(value)
  return "Sip Symbol: "..value
end

-- Dissect: Sip Symbol
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.sip_symbol.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current then
    return nil, "the line stops before Sip Symbol"
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.sip_symbol.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.sip_symbol, buffer(offset, length), text, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.sip_symbol.display(text))
  end
  return index
end

-- Old Symbol
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.old_symbol = {}

-- Old Symbol ends at "|"
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.old_symbol.delimiter = "|"
-- Old Symbol is text in Ascii
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.old_symbol.encoding = ENC_ASCII

-- Display: Old Symbol
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.old_symbol.display = function(value)
  return "Old Symbol: "..value
end

-- Dissect: Old Symbol
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.old_symbol.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current then
    -- the line stops before it: optional, it has no value
    return offset
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.old_symbol.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current, offset + 1, offset + length)
  if text == "" then
    if parent ~= nil then
      parent:add(buffer(offset, length), "Old Symbol: symbol did not change today")
    end
    return index
  end
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.old_symbol, buffer(offset, length), text, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.old_symbol.display(text))
  end
  return index
end

-- Test Symbol Flag
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.test_symbol_flag = {}

-- Test Symbol Flag ends at "|"
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.test_symbol_flag.delimiter = "|"
-- Test Symbol Flag is text in Ascii
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.test_symbol_flag.encoding = ENC_ASCII

-- Display: Test Symbol Flag
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.test_symbol_flag.labels = {
  ["Y"] = "Test Symbol Flag: Test symbol (Y)",
  ["N"] = "Test Symbol Flag: Not a test symbol (N)",
}

nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.test_symbol_flag.display = function(value)
  return nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.test_symbol_flag.labels[value] or "Test Symbol Flag: Unknown("..value..")"
end

-- Dissect: Test Symbol Flag
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.test_symbol_flag.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current then
    return nil, "the line stops before Test Symbol Flag"
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.test_symbol_flag.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.test_symbol_flag, buffer(offset, length), text, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.test_symbol_flag.display(text))
  end
  return index
end

-- Listed Exchange
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.listed_exchange = {}

-- Listed Exchange ends at "|"
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.listed_exchange.delimiter = "|"
-- Listed Exchange is text in Ascii
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.listed_exchange.encoding = ENC_ASCII

-- Display: Listed Exchange
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.listed_exchange.labels = {
  ["A"] = "Listed Exchange: NYSE American, LLC (NYSE American) (A)",
  ["B"] = "Listed Exchange: NASDAQ OMX BX, Inc. (NASDAQ OMX BX) (B)",
  ["C"] = "Listed Exchange: NYSE National, Inc (NYSE National) (C)",
  ["D"] = "Listed Exchange: FINRA Alternative Display Facility (ADF) (D)",
  ["F"] = "Listed Exchange: TXSE Exchange (TXSE) (F)",
  ["G"] = "Listed Exchange: 24X Exchange (24X) (G)",
  ["H"] = "Listed Exchange: MIAX Pearl, LLC (MIAX) (H)",
  ["I"] = "Listed Exchange: International Securities Exchange, LLC (ISE) (I)",
  ["J"] = "Listed Exchange: Cboe EDGA Exchange (Cboe EDGA) (J)",
  ["K"] = "Listed Exchange: Cboe EDGX Exchange (Cboe EDGX) (K)",
  ["L"] = "Listed Exchange: Long-Term Stock Exchange, Inc. (LTSE) (L)",
  ["M"] = "Listed Exchange: NYSE Texas (NYSE Texas) (M)",
  ["N"] = "Listed Exchange: New York Stock Exchange, LLC (NYSE) (N)",
  ["P"] = "Listed Exchange: NYSE Arca, Inc. (NYSE Arca) (P)",
  ["S"] = "Listed Exchange: Consolidated Tape System (CTS) (S)",
  ["T"] = "Listed Exchange: NASDAQ Stock Market, LLC (in Tape A, B securities) (NASDAQ) (T)",
  ["Q"] = "Listed Exchange: NASDAQ Stock Exchange, LLC (in Tape C securities) (Q)",
  ["U"] = "Listed Exchange: Members Exchange (MEMX) (U)",
  ["V"] = "Listed Exchange: The Investors’ Exchange, LLC (IEX) (V)",
  ["W"] = "Listed Exchange: Chicago Broad Options Exchange, Inc.(CBSX) (W)",
  ["X"] = "Listed Exchange: NASDAQ OMX PSX, Inc. (NASDAQ OMX PSX) (X)",
  ["Y"] = "Listed Exchange: Cboe BYX Exchange, Inc (Cboe BYX) (Y)",
  ["Z"] = "Listed Exchange: Cboe BZX Exchange, Inc (Cboe BZX) (Z)",
}

nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.listed_exchange.display = function(value)
  return nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.listed_exchange.labels[value] or "Listed Exchange: Unknown("..value..")"
end

-- Dissect: Listed Exchange
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.listed_exchange.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current then
    return nil, "the line stops before Listed Exchange"
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.listed_exchange.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.listed_exchange, buffer(offset, length), text, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.listed_exchange.display(text))
  end
  return index
end

-- Tape
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.tape = {}

-- Tape ends at "|"
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.tape.delimiter = "|"
-- Tape is text in Ascii
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.tape.encoding = ENC_ASCII

-- Display: Tape
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.tape.display = function(value)
  return "Tape: "..value
end

-- Dissect: Tape
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.tape.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current then
    return nil, "the line stops before Tape"
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.tape.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.tape, buffer(offset, length), text, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.tape.display(text))
  end
  return index
end

-- Unit Of Trade
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.unit_of_trade = {}

-- Unit Of Trade ends at "|"
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.unit_of_trade.delimiter = "|"
-- Unit Of Trade is an unsigned integer

-- Display: Unit Of Trade
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.unit_of_trade.display = function(value)
  return "Unit Of Trade: "..value
end

-- Dissect: Unit Of Trade
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.unit_of_trade.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current then
    return nil, "the line stops before Unit Of Trade"
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.unit_of_trade.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current, offset + 1, offset + length)
  local value, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.unsigned(text)
  if value == nil then
    return nil, "Unit Of Trade \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.unit_of_trade, buffer(offset, length), value, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.unit_of_trade.display(tostring(value)))
  end
  return index
end

-- Round Lot
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.round_lot = {}

-- Round Lot ends at "|"
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.round_lot.delimiter = "|"
-- Round Lot is an unsigned integer

-- Display: Round Lot
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.round_lot.display = function(value)
  return "Round Lot: "..value
end

-- Dissect: Round Lot
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.round_lot.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current then
    return nil, "the line stops before Round Lot"
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.round_lot.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current, offset + 1, offset + length)
  local value, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.unsigned(text)
  if value == nil then
    return nil, "Round Lot \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.round_lot, buffer(offset, length), value, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.round_lot.display(tostring(value)))
  end
  return index
end

-- Nyse Industry Code
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.nyse_industry_code = {}

-- Nyse Industry Code ends at "|"
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.nyse_industry_code.delimiter = "|"
-- Nyse Industry Code is text in Ascii
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.nyse_industry_code.encoding = ENC_ASCII

-- Display: Nyse Industry Code
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.nyse_industry_code.labels = {
  ["100"] = "Nyse Industry Code: Industrials (100)",
  ["102"] = "Nyse Industry Code: Aerospace (102)",
  ["102A"] = "Nyse Industry Code: Aircraft (102A)",
  ["102B"] = "Nyse Industry Code: Parts and Equipment (102B)",
  ["104"] = "Nyse Industry Code: Business Supplies and Services (104)",
  ["104A"] = "Nyse Industry Code: Machines and Equipment (Excl. Computers) (104A)",
  ["104B"] = "Nyse Industry Code: Supplies (104B)",
  ["104C"] = "Nyse Industry Code: Services (104C)",
  ["106"] = "Nyse Industry Code: Chemicals (106)",
  ["106A"] = "Nyse Industry Code: Diversified Chemicals (106A)",
  ["106B"] = "Nyse Industry Code: Specialized (106B)",
  ["108"] = "Nyse Industry Code: Computers, Data Processing (108)",
  ["108A"] = "Nyse Industry Code: Computer Systems (108A)",
  ["108B"] = "Nyse Industry Code: Data Processing, Software (108B)",
  ["108C"] = "Nyse Industry Code: Peripheral Devices and Supplies (108C)",
  ["110"] = "Nyse Industry Code: Construction (110)",
  ["110A"] = "Nyse Industry Code: Residential (110A)",
  ["110B"] = "Nyse Industry Code: Industrial (110B)",
  ["110C"] = "Nyse Industry Code: Cement (110C)",
  ["110D"] = "Nyse Industry Code: Lumber, Wood (110D)",
  ["110E"] = "Nyse Industry Code: Other Building Materials and Products (110E)",
  ["112"] = "Nyse Industry Code: Electrical Equipment (112)",
  ["114"] = "Nyse Industry Code: Electronics (114)",
  ["114A"] = "Nyse Industry Code: Semi Conductors and Other Components (114A)",
  ["114B"] = "Nyse Industry Code: Telecommunications Equipment (114B)",
  ["114C"] = "Nyse Industry Code: Test, Control Instruments and Systems (114C)",
  ["114D"] = "Nyse Industry Code: Other Systems and Equipment (114D)",
  ["116"] = "Nyse Industry Code: Environmental Control (116)",
  ["118"] = "Nyse Industry Code: Foods, Beverages (118)",
  ["118A"] = "Nyse Industry Code: Beverages (118A)",
  ["118B"] = "Nyse Industry Code: Branded Food Products (118B)",
  ["118C"] = "Nyse Industry Code: Processing and Production (118C)",
  ["118D"] = "Nyse Industry Code: Wholesalers (118D)",
  ["120"] = "Nyse Industry Code: Health and Beauty Products (120)",
  ["120A"] = "Nyse Industry Code: Personal Health Products (120A)",
  ["120B"] = "Nyse Industry Code: Toiletries, Cosmetics, Perfumes (120B)",
  ["122"] = "Nyse Industry Code: Health Care Services (122)",
  ["122A"] = "Nyse Industry Code: Equipment and Supplies (122A)",
  ["122B"] = "Nyse Industry Code: Health Care Facilities (122B)",
  ["124"] = "Nyse Industry Code: Household Goods (124)",
  ["124A"] = "Nyse Industry Code: Appliances (124A)",
  ["124B"] = "Nyse Industry Code: Furnishings and Fixtures (124B)",
  ["124C"] = "Nyse Industry Code: Housekeeping Products (124C)",
  ["124D"] = "Nyse Industry Code: House-wares (124D)",
  ["126"] = "Nyse Industry Code: Industrial Machinery and Equipment (126)",
  ["126A"] = "Nyse Industry Code: Heavy Machinery (126A)",
  ["126B"] = "Nyse Industry Code: Machine Tools (126B)",
  ["126C"] = "Nyse Industry Code: Measuring and Control Devices (126C)",
  ["126D"] = "Nyse Industry Code: Transmissions and Engines (126D)",
  ["126E"] = "Nyse Industry Code: Other Industrial Equipment (126E)",
  ["128"] = "Nyse Industry Code: Lodging, Restaurants (128)",
  ["128A"] = "Nyse Industry Code: Hotels, Motels (128A)",
  ["128B"] = "Nyse Industry Code: Restaurants (128B)",
  ["130"] = "Nyse Industry Code: Mining, Refining, Fabricating (130)",
  ["130A"] = "Nyse Industry Code: Aluminum (130A)",
  ["130B"] = "Nyse Industry Code: Coal (130B)",
  ["130C"] = "Nyse Industry Code: Gold, Silver (130C)",
  ["130D"] = "Nyse Industry Code: Steel, Iron (130D)",
  ["130E"] = "Nyse Industry Code: Other Non-Ferrous Metals (130E)",
  ["132"] = "Nyse Industry Code: Motor Vehicles (132)",
  ["132A"] = "Nyse Industry Code: Auto and Truck (132A)",
  ["132B"] = "Nyse Industry Code: Parts and Equipment (132B)",
  ["134"] = "Nyse Industry Code: Oil and Gas (134)",
  ["134A"] = "Nyse Industry Code: Crude Production (134A)",
  ["134B"] = "Nyse Industry Code: Contract Drilling, Exploration (134B)",
  ["134C"] = "Nyse Industry Code: Integrated Domestic Refiners (134C)",
  ["134D"] = "Nyse Industry Code: Integrated International Refiners (134D)",
  ["134E"] = "Nyse Industry Code: Non-Integrated Refiners (134E)",
  ["134F"] = "Nyse Industry Code: Services and Equipment (134F)",
  ["136"] = "Nyse Industry Code: Packaging (136)",
  ["136A"] = "Nyse Industry Code: Glass (136A)",
  ["136B"] = "Nyse Industry Code: Metal (136B)",
  ["136C"] = "Nyse Industry Code: Paper (136C)",
  ["136D"] = "Nyse Industry Code: Other (136D)",
  ["138"] = "Nyse Industry Code: Paper Production (138)",
  ["140"] = "Nyse Industry Code: Pharmaceuticals (140)",
  ["142"] = "Nyse Industry Code: Publishing (142)",
  ["142A"] = "Nyse Industry Code: Newspaper Chains (142A)",
  ["142B"] = "Nyse Industry Code: Magazines (142B)",
  ["142C"] = "Nyse Industry Code: Books (142C)",
  ["144"] = "Nyse Industry Code: Recreation Services and Products (144)",
  ["144A"] = "Nyse Industry Code: Broadcasting (144A)",
  ["144B"] = "Nyse Industry Code: Gaming Operations and Services (144B)",
  ["144C"] = "Nyse Industry Code: Leisure Time Products (144C)",
  ["144D"] = "Nyse Industry Code: Motion Pictures, Entertainment Services (144D)",
  ["144E"] = "Nyse Industry Code: Outdoor Recreational Vehicles and Equipment (144E)",
  ["146"] = "Nyse Industry Code: Retail Trade (146)",
  ["146A"] = "Nyse Industry Code: Department Store Chains (146A)",
  ["146B"] = "Nyse Industry Code: Discount Variety Chains (146B)",
  ["146C"] = "Nyse Industry Code: Drug Store Chains (146C)",
  ["146D"] = "Nyse Industry Code: Supermarkets, Food Stores (146D)",
  ["146E"] = "Nyse Industry Code: Hardware, Furniture Stores (146E)",
  ["146F"] = "Nyse Industry Code: Specialty Apparel Ships (146F)",
  ["146G"] = "Nyse Industry Code: Other Retail Operations (146G)",
  ["148"] = "Nyse Industry Code: Textiles, Apparel (148)",
  ["148A"] = "Nyse Industry Code: Textile and Mill Products (148A)",
  ["148B"] = "Nyse Industry Code: Clothing Companies (148B)",
  ["148C"] = "Nyse Industry Code: Shoes (148C)",
  ["150"] = "Nyse Industry Code: Tires, Rubber (150)",
  ["152"] = "Nyse Industry Code: Tobacco (152)",
  ["154"] = "Nyse Industry Code: Wholesalers, Distributors (154)",
  ["154A"] = "Nyse Industry Code: Consumer Products (Non-Food) (154A)",
  ["154B"] = "Nyse Industry Code: Industrial Products (154B)",
  ["170"] = "Nyse Industry Code: Multi-Industry (170)",
  ["180"] = "Nyse Industry Code: Other (180)",
  ["180A"] = "Nyse Industry Code: Manufacturing (180A)",
  ["180B"] = "Nyse Industry Code: Services (180B)",
  ["200"] = "Nyse Industry Code: Transportation (200)",
  ["202"] = "Nyse Industry Code: Air (202)",
  ["202A"] = "Nyse Industry Code: Passenger Airlines (202A)",
  ["202B"] = "Nyse Industry Code: Freight Airlines (202B)",
  ["204"] = "Nyse Industry Code: Rail (204)",
  ["206"] = "Nyse Industry Code: Trucking (206)",
  ["208"] = "Nyse Industry Code: Other Transportation Services (208)",
  ["300"] = "Nyse Industry Code: Utilities (300)",
  ["302"] = "Nyse Industry Code: Electric Services (302)",
  ["304"] = "Nyse Industry Code: Gas Services (304)",
  ["304A"] = "Nyse Industry Code: Distribution and Integrated Natural Gas Cos. (304A)",
  ["304B"] = "Nyse Industry Code: Natural Gas Transmission Companies (304B)",
  ["304C"] = "Nyse Industry Code: Other Gas Services (304C)",
  ["306"] = "Nyse Industry Code: Telecommunications (306)",
  ["308"] = "Nyse Industry Code: Water Supply Companies (308)",
  ["310"] = "Nyse Industry Code: Multi-Service Companies (310)",
  ["400"] = "Nyse Industry Code: Financials (400)",
  ["402"] = "Nyse Industry Code: Banks (402)",
  ["402A"] = "Nyse Industry Code: Multinational (402A)",
  ["402B"] = "Nyse Industry Code: Regional (402B)",
  ["402C"] = "Nyse Industry Code: Savings and Loan Associations (402C)",
  ["404"] = "Nyse Industry Code: Brokerage Services (404)",
  ["406"] = "Nyse Industry Code: Closed-End Investment Companies (406)",
  ["406A"] = "Nyse Industry Code: Bond Funds (406A)",
  ["406B"] = "Nyse Industry Code: Stock Funds (406B)",
  ["406C"] = "Nyse Industry Code: Specialty Funds (406C)",
  ["408"] = "Nyse Industry Code: Finance Companies (408)",
  ["410"] = "Nyse Industry Code: Insurance (410)",
  ["410A"] = "Nyse Industry Code: Brokers, Agents (410A)",
  ["410B"] = "Nyse Industry Code: Carriers (410B)",
  ["412"] = "Nyse Industry Code: Trusts (412)",
  ["412A"] = "Nyse Industry Code: Real Estate Investment Trusts (REITS) (412A)",
  ["412B"] = "Nyse Industry Code: Oil Royalty Trust (412B)",
  ["412C"] = "Nyse Industry Code: Other Trusts (412C)",
  ["414"] = "Nyse Industry Code: RealEstate (414)",
  ["416"] = "Nyse Industry Code: Diversified Financial Services (416)",
  ["416A"] = "Nyse Industry Code: Undocumented 416A (416A)",
  ["408A"] = "Nyse Industry Code: Undocumented 408A (408A)",
  ["414A"] = "Nyse Industry Code: Undocumented 414A (414A)",
  ["302A"] = "Nyse Industry Code: Undocumented 302A (302A)",
  ["306A"] = "Nyse Industry Code: Undocumented 306A (306A)",
  ["140A"] = "Nyse Industry Code: Undocumented 140A (140A)",
  ["170A"] = "Nyse Industry Code: Undocumented 170A (170A)",
  ["400A"] = "Nyse Industry Code: Undocumented 400A (400A)",
  ["100A"] = "Nyse Industry Code: Undocumented 100A (100A)",
  ["310A"] = "Nyse Industry Code: Undocumented 310A (310A)",
  ["200A"] = "Nyse Industry Code: Undocumented 200A (200A)",
  ["404A"] = "Nyse Industry Code: Undocumented 404A (404A)",
  ["208A"] = "Nyse Industry Code: Undocumented 208A (208A)",
  ["300A"] = "Nyse Industry Code: Undocumented 300A (300A)",
  ["112A"] = "Nyse Industry Code: Undocumented 112A (112A)",
  ["116A"] = "Nyse Industry Code: Undocumented 116A (116A)",
  ["138A"] = "Nyse Industry Code: Undocumented 138A (138A)",
  ["152A"] = "Nyse Industry Code: Undocumented 152A (152A)",
  ["308A"] = "Nyse Industry Code: Undocumented 308A (308A)",
  ["204A"] = "Nyse Industry Code: Undocumented 204A (204A)",
  ["206A"] = "Nyse Industry Code: Undocumented 206A (206A)",
  ["150A"] = "Nyse Industry Code: Undocumented 150A (150A)",
}

nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.nyse_industry_code.display = function(value)
  return nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.nyse_industry_code.labels[value] or "Nyse Industry Code: Unknown("..value..")"
end

-- Dissect: Nyse Industry Code
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.nyse_industry_code.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current then
    -- the line stops before it: optional, it has no value
    return offset
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.nyse_industry_code.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current, offset + 1, offset + length)
  if text == "" then
    if parent ~= nil then
      parent:add(buffer(offset, length), "Nyse Industry Code: this is a non-NYSE security.")
    end
    return index
  end
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.nyse_industry_code, buffer(offset, length), text, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.nyse_industry_code.display(text))
  end
  return index
end

-- Shares Outstanding
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.shares_outstanding = {}

-- Shares Outstanding ends at "|"
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.shares_outstanding.delimiter = "|"
-- Shares Outstanding is a decimal of Scale -2: 2 places
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.shares_outstanding.places = 2

-- Display: Shares Outstanding
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.shares_outstanding.display = function(value)
  return "Shares Outstanding: "..value
end

-- Dissect: Shares Outstanding
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.shares_outstanding.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current then
    -- the line stops before it: optional, it has no value
    return offset
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.shares_outstanding.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current, offset + 1, offset + length)
  if text == "" then
    return index
  end
  local exact, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.places(text, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.shares_outstanding.places)
  if exact == nil then
    return nil, "Shares Outstanding \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.shares_outstanding, buffer(offset, length), tonumber(text), nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.shares_outstanding.display(exact))
  end
  return index
end

-- Halt Delay Reason
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.halt_delay_reason = {}

-- Halt Delay Reason ends at "|"
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.halt_delay_reason.delimiter = "|"
-- Halt Delay Reason is text in Ascii
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.halt_delay_reason.encoding = ENC_ASCII

-- Display: Halt Delay Reason
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.halt_delay_reason.labels = {
  ["A"] = "Halt Delay Reason: Additional Information Requested (CTA Values) / Halt News Pending (UTP Values) (A)",
  ["C"] = "Halt Delay Reason: Regulatory Concern (CTA Values) / Single Stock Trading Pause in Affect (UTP Values) (C)",
  ["D"] = "Halt Delay Reason: News Dissemination (CTA Values) / Regulatory Halt Extraordinary Market Activity (UTP Values) (D)",
  ["E"] = "Halt Delay Reason: Merger Effective (CTA Values) / Halt ETF (UTP Values) (E)",
  ["F"] = "Halt Delay Reason: ETF Component Prices Not Available (CTA Values) / Trading Halted; For information requested by NASDAQ (UTP Values) (F)",
  ["I"] = "Halt Delay Reason: Order Imbalance (CTA Values) / Halt SEC Trading Suspension (UTP Values) (I)",
  ["M"] = "Halt Delay Reason: LULD Trading Pause (CTA Values) / Corporate Action (UTP Values) (M)",
  ["N"] = "Halt Delay Reason: Corporate Actions (CTA Values) / Quotation Not Available (UTP Values) (N)",
  ["O"] = "Halt Delay Reason: New Security Offering (CTA Values) / Volatility Trading Pause (UTP Values) (O)",
  ["V"] = "Halt Delay Reason: Intraday Indicative Value Not Available (CTA Values) / Qualifications Halt ended; maint. Req. met; Resume (UTP Values) (V)",
  ["P"] = "Halt Delay Reason: News Pending (CTA Values) / Volatility Trading Pause – Straddle Condition (UTP Values) (P)",
  ["X"] = "Halt Delay Reason: Equipment changeover (CTA Values) / Trade Halt Concluded By Other Regulatory Auth; Quotes/Trades Resume (UTP Values) (X)",
  ["Y"] = "Halt Delay Reason: Sub-Penny Halt (CTA Values) / New Issue Available (UTP Values) (Y)",
  ["1"] = "Halt Delay Reason: Market-Wide Circuit Breaker Level 1 – Breached (CTA Values) / Market Wide Circuit Breaker Halt – Level 1 (UTP Values) (1)",
  ["2"] = "Halt Delay Reason: Market-Wide Circuit Breaker Level 2 – Breached (CTA Values) / Market Wide Circuit Breaker Halt – Level 2 (UTP Values) (2)",
  ["3"] = "Halt Delay Reason: Market-Wide Circuit Breaker Level 3 – Breached (CTA Values) / Market Wide Circuit Breaker Halt – Level 3 (UTP Values) (3)",
  ["B"] = "Halt Delay Reason: Halt News Released (B)",
  ["G"] = "Halt Delay Reason: Halt Non-Compliance (G)",
  ["H"] = "Halt Delay Reason: Halt Filings Not Current (H)",
  ["J"] = "Halt Delay Reason: Halt Regulatory Concern (J)",
  ["K"] = "Halt Delay Reason: Operations Halt, Contact Market Operations (K)",
  ["L"] = "Halt Delay Reason: IPO Issue not yet Trading (L)",
  ["Q"] = "Halt Delay Reason: News and Resumption Times (Q)",
  ["R"] = "Halt Delay Reason: Single Stock Trading Pause/Quotation-Only Period (R)",
  ["S"] = "Halt Delay Reason: Qualifications Issues Reviewed/Resolved; Quotations/Trading to Resume (S)",
  ["T"] = "Halt Delay Reason: Filing Requirements Satisfied/Resolved; Quotations/Trading to Resume (T)",
  ["U"] = "Halt Delay Reason: Issuer News Not Forthcoming; Quotations/Trading to Resume (U)",
  ["W"] = "Halt Delay Reason: Qualifications Halt Concluded; Filings Met; Quotes/Trades To Resume (W)",
  ["Z"] = "Halt Delay Reason: Issue Available (Z)",
  ["4"] = "Halt Delay Reason: Market Wide Circuit Breaker Halt – Carry over from previous day (4)",
  ["5"] = "Halt Delay Reason: Market Wide Circuit Breaker Resumption (5)",
  ["6"] = "Halt Delay Reason: IPO security released for quotation (6)",
  ["7"] = "Halt Delay Reason: IPO security – positioning window extension (7)",
}

nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.halt_delay_reason.display = function(value)
  return nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.halt_delay_reason.labels[value] or "Halt Delay Reason: Unknown("..value..")"
end

-- Dissect: Halt Delay Reason
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.halt_delay_reason.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current then
    -- the line stops before it: optional, it has no value
    return offset
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.halt_delay_reason.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current, offset + 1, offset + length)
  if text == "" then
    if parent ~= nil then
      parent:add(buffer(offset, length), "Halt Delay Reason: Reason Not Available")
    end
    return index
  end
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.halt_delay_reason, buffer(offset, length), text, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.halt_delay_reason.display(text))
  end
  return index
end

-- Specialist Clearing Agent
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.specialist_clearing_agent = {}

-- Specialist Clearing Agent ends at "|"
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.specialist_clearing_agent.delimiter = "|"
-- Specialist Clearing Agent is text in Ascii
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.specialist_clearing_agent.encoding = ENC_ASCII

-- Display: Specialist Clearing Agent
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.specialist_clearing_agent.display = function(value)
  return "Specialist Clearing Agent: "..value
end

-- Dissect: Specialist Clearing Agent
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.specialist_clearing_agent.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current then
    -- the line stops before it: optional, it has no value
    return offset
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.specialist_clearing_agent.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current, offset + 1, offset + length)
  if text == "" then
    if parent ~= nil then
      parent:add(buffer(offset, length), "Specialist Clearing Agent: this is a non-NYSE/NYSE American security.")
    end
    return index
  end
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.specialist_clearing_agent, buffer(offset, length), text, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.specialist_clearing_agent.display(text))
  end
  return index
end

-- Specialist Clearing Number
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.specialist_clearing_number = {}

-- Specialist Clearing Number ends at "|"
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.specialist_clearing_number.delimiter = "|"
-- Specialist Clearing Number is a signed integer

-- Display: Specialist Clearing Number
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.specialist_clearing_number.display = function(value)
  return "Specialist Clearing Number: "..value
end

-- Dissect: Specialist Clearing Number
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.specialist_clearing_number.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current then
    -- the line stops before it: optional, it has no value
    return offset
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.specialist_clearing_number.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current, offset + 1, offset + length)
  if text == "" then
    if parent ~= nil then
      parent:add(buffer(offset, length), "Specialist Clearing Number: this is a non-NYSE/NYSE American security.")
    end
    return index
  end
  local value, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.signed(text)
  if value == nil then
    return nil, "Specialist Clearing Number \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.specialist_clearing_number, buffer(offset, length), value, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.specialist_clearing_number.display(tostring(value)))
  end
  return index
end

-- Specialist Post Number
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.specialist_post_number = {}

-- Specialist Post Number ends at "|"
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.specialist_post_number.delimiter = "|"
-- Specialist Post Number is a signed integer

-- Display: Specialist Post Number
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.specialist_post_number.display = function(value)
  return "Specialist Post Number: "..value
end

-- Dissect: Specialist Post Number
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.specialist_post_number.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current then
    -- the line stops before it: optional, it has no value
    return offset
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.specialist_post_number.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current, offset + 1, offset + length)
  if text == "" then
    if parent ~= nil then
      parent:add(buffer(offset, length), "Specialist Post Number: this is a non-NYSE/NYSE American security.")
    end
    return index
  end
  local value, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.signed(text)
  if value == nil then
    return nil, "Specialist Post Number \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.specialist_post_number, buffer(offset, length), value, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.specialist_post_number.display(tostring(value)))
  end
  return index
end

-- Specialist Panel
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.specialist_panel = {}

-- Specialist Panel ends at "|"
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.specialist_panel.delimiter = "|"
-- Specialist Panel is text in Ascii
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.specialist_panel.encoding = ENC_ASCII

-- Display: Specialist Panel
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.specialist_panel.display = function(value)
  return "Specialist Panel: "..value
end

-- Dissect: Specialist Panel
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.specialist_panel.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current then
    -- the line stops before it: optional, it has no value
    return offset
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.specialist_panel.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current, offset + 1, offset + length)
  if text == "" then
    if parent ~= nil then
      parent:add(buffer(offset, length), "Specialist Panel: this is a non-NYSE security.")
    end
    return index
  end
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.specialist_panel, buffer(offset, length), text, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.specialist_panel.display(text))
  end
  return index
end

-- Traded On Nysemkt
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_nysemkt = {}

-- Traded On Nysemkt ends at "|"
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_nysemkt.delimiter = "|"
-- Traded On Nysemkt is a signed integer

-- Display: Traded On Nysemkt
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_nysemkt.labels = {
  ["0"] = "Traded On Nysemkt: No (0)",
  ["1"] = "Traded On Nysemkt: Yes (1)",
}

nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_nysemkt.display = function(value)
  return nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_nysemkt.labels[value] or "Traded On Nysemkt: Unknown("..value..")"
end

-- Dissect: Traded On Nysemkt
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_nysemkt.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current then
    return nil, "the line stops before Traded On Nysemkt"
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_nysemkt.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current, offset + 1, offset + length)
  local value, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.signed(text)
  if value == nil then
    return nil, "Traded On Nysemkt \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.traded_on_nysemkt, buffer(offset, length), value, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_nysemkt.display(text))
  end
  return index
end

-- Traded On Nasdaqbx
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_nasdaqbx = {}

-- Traded On Nasdaqbx ends at "|"
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_nasdaqbx.delimiter = "|"
-- Traded On Nasdaqbx is a signed integer

-- Display: Traded On Nasdaqbx
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_nasdaqbx.labels = {
  ["0"] = "Traded On Nasdaqbx: No (0)",
  ["1"] = "Traded On Nasdaqbx: Yes (1)",
}

nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_nasdaqbx.display = function(value)
  return nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_nasdaqbx.labels[value] or "Traded On Nasdaqbx: Unknown("..value..")"
end

-- Dissect: Traded On Nasdaqbx
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_nasdaqbx.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current then
    return nil, "the line stops before Traded On Nasdaqbx"
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_nasdaqbx.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current, offset + 1, offset + length)
  local value, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.signed(text)
  if value == nil then
    return nil, "Traded On Nasdaqbx \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.traded_on_nasdaqbx, buffer(offset, length), value, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_nasdaqbx.display(text))
  end
  return index
end

-- Traded On Nsx
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_nsx = {}

-- Traded On Nsx ends at "|"
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_nsx.delimiter = "|"
-- Traded On Nsx is a signed integer

-- Display: Traded On Nsx
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_nsx.labels = {
  ["0"] = "Traded On Nsx: No (0)",
  ["1"] = "Traded On Nsx: Yes (1)",
}

nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_nsx.display = function(value)
  return nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_nsx.labels[value] or "Traded On Nsx: Unknown("..value..")"
end

-- Dissect: Traded On Nsx
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_nsx.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current then
    return nil, "the line stops before Traded On Nsx"
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_nsx.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current, offset + 1, offset + length)
  local value, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.signed(text)
  if value == nil then
    return nil, "Traded On Nsx \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.traded_on_nsx, buffer(offset, length), value, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_nsx.display(text))
  end
  return index
end

-- Traded On Finra
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_finra = {}

-- Traded On Finra ends at "|"
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_finra.delimiter = "|"
-- Traded On Finra is a signed integer

-- Display: Traded On Finra
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_finra.labels = {
  ["0"] = "Traded On Finra: No (0)",
  ["1"] = "Traded On Finra: Yes (1)",
}

nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_finra.display = function(value)
  return nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_finra.labels[value] or "Traded On Finra: Unknown("..value..")"
end

-- Dissect: Traded On Finra
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_finra.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current then
    return nil, "the line stops before Traded On Finra"
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_finra.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current, offset + 1, offset + length)
  local value, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.signed(text)
  if value == nil then
    return nil, "Traded On Finra \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.traded_on_finra, buffer(offset, length), value, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_finra.display(text))
  end
  return index
end

-- Traded On Ise
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_ise = {}

-- Traded On Ise ends at "|"
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_ise.delimiter = "|"
-- Traded On Ise is a signed integer

-- Display: Traded On Ise
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_ise.labels = {
  ["0"] = "Traded On Ise: No (0)",
  ["1"] = "Traded On Ise: Yes (1)",
}

nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_ise.display = function(value)
  return nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_ise.labels[value] or "Traded On Ise: Unknown("..value..")"
end

-- Dissect: Traded On Ise
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_ise.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current then
    return nil, "the line stops before Traded On Ise"
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_ise.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current, offset + 1, offset + length)
  local value, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.signed(text)
  if value == nil then
    return nil, "Traded On Ise \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.traded_on_ise, buffer(offset, length), value, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_ise.display(text))
  end
  return index
end

-- Traded On Edge A
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_edge_a = {}

-- Traded On Edge A ends at "|"
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_edge_a.delimiter = "|"
-- Traded On Edge A is a signed integer

-- Display: Traded On Edge A
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_edge_a.labels = {
  ["0"] = "Traded On Edge A: No (0)",
  ["1"] = "Traded On Edge A: Yes (1)",
}

nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_edge_a.display = function(value)
  return nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_edge_a.labels[value] or "Traded On Edge A: Unknown("..value..")"
end

-- Dissect: Traded On Edge A
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_edge_a.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current then
    return nil, "the line stops before Traded On Edge A"
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_edge_a.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current, offset + 1, offset + length)
  local value, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.signed(text)
  if value == nil then
    return nil, "Traded On Edge A \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.traded_on_edge_a, buffer(offset, length), value, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_edge_a.display(text))
  end
  return index
end

-- Traded On Edge X
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_edge_x = {}

-- Traded On Edge X ends at "|"
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_edge_x.delimiter = "|"
-- Traded On Edge X is a signed integer

-- Display: Traded On Edge X
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_edge_x.labels = {
  ["0"] = "Traded On Edge X: No (0)",
  ["1"] = "Traded On Edge X: Yes (1)",
}

nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_edge_x.display = function(value)
  return nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_edge_x.labels[value] or "Traded On Edge X: Unknown("..value..")"
end

-- Dissect: Traded On Edge X
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_edge_x.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current then
    return nil, "the line stops before Traded On Edge X"
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_edge_x.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current, offset + 1, offset + length)
  local value, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.signed(text)
  if value == nil then
    return nil, "Traded On Edge X \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.traded_on_edge_x, buffer(offset, length), value, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_edge_x.display(text))
  end
  return index
end

-- Traded On Nyse Texas
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_nyse_texas = {}

-- Traded On Nyse Texas ends at "|"
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_nyse_texas.delimiter = "|"
-- Traded On Nyse Texas is a signed integer

-- Display: Traded On Nyse Texas
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_nyse_texas.labels = {
  ["0"] = "Traded On Nyse Texas: No (0)",
  ["1"] = "Traded On Nyse Texas: Yes (1)",
}

nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_nyse_texas.display = function(value)
  return nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_nyse_texas.labels[value] or "Traded On Nyse Texas: Unknown("..value..")"
end

-- Dissect: Traded On Nyse Texas
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_nyse_texas.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current then
    return nil, "the line stops before Traded On Nyse Texas"
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_nyse_texas.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current, offset + 1, offset + length)
  local value, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.signed(text)
  if value == nil then
    return nil, "Traded On Nyse Texas \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.traded_on_nyse_texas, buffer(offset, length), value, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_nyse_texas.display(text))
  end
  return index
end

-- Traded On Nyse
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_nyse = {}

-- Traded On Nyse ends at "|"
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_nyse.delimiter = "|"
-- Traded On Nyse is a signed integer

-- Display: Traded On Nyse
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_nyse.labels = {
  ["0"] = "Traded On Nyse: No (0)",
  ["1"] = "Traded On Nyse: Yes (1)",
}

nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_nyse.display = function(value)
  return nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_nyse.labels[value] or "Traded On Nyse: Unknown("..value..")"
end

-- Dissect: Traded On Nyse
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_nyse.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current then
    return nil, "the line stops before Traded On Nyse"
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_nyse.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current, offset + 1, offset + length)
  local value, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.signed(text)
  if value == nil then
    return nil, "Traded On Nyse \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.traded_on_nyse, buffer(offset, length), value, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_nyse.display(text))
  end
  return index
end

-- Traded On Arca
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_arca = {}

-- Traded On Arca ends at "|"
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_arca.delimiter = "|"
-- Traded On Arca is a signed integer

-- Display: Traded On Arca
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_arca.labels = {
  ["0"] = "Traded On Arca: No (0)",
  ["1"] = "Traded On Arca: Yes (1)",
}

nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_arca.display = function(value)
  return nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_arca.labels[value] or "Traded On Arca: Unknown("..value..")"
end

-- Dissect: Traded On Arca
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_arca.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current then
    return nil, "the line stops before Traded On Arca"
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_arca.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current, offset + 1, offset + length)
  local value, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.signed(text)
  if value == nil then
    return nil, "Traded On Arca \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.traded_on_arca, buffer(offset, length), value, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_arca.display(text))
  end
  return index
end

-- Traded On Nasdaq
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_nasdaq = {}

-- Traded On Nasdaq ends at "|"
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_nasdaq.delimiter = "|"
-- Traded On Nasdaq is a signed integer

-- Display: Traded On Nasdaq
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_nasdaq.labels = {
  ["0"] = "Traded On Nasdaq: No (0)",
  ["1"] = "Traded On Nasdaq: Yes (1)",
}

nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_nasdaq.display = function(value)
  return nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_nasdaq.labels[value] or "Traded On Nasdaq: Unknown("..value..")"
end

-- Dissect: Traded On Nasdaq
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_nasdaq.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current then
    return nil, "the line stops before Traded On Nasdaq"
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_nasdaq.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current, offset + 1, offset + length)
  local value, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.signed(text)
  if value == nil then
    return nil, "Traded On Nasdaq \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.traded_on_nasdaq, buffer(offset, length), value, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_nasdaq.display(text))
  end
  return index
end

-- Traded On Cboe
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_cboe = {}

-- Traded On Cboe ends at "|"
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_cboe.delimiter = "|"
-- Traded On Cboe is a signed integer

-- Display: Traded On Cboe
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_cboe.labels = {
  ["0"] = "Traded On Cboe: No (0)",
  ["1"] = "Traded On Cboe: Yes (1)",
}

nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_cboe.display = function(value)
  return nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_cboe.labels[value] or "Traded On Cboe: Unknown("..value..")"
end

-- Dissect: Traded On Cboe
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_cboe.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current then
    return nil, "the line stops before Traded On Cboe"
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_cboe.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current, offset + 1, offset + length)
  local value, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.signed(text)
  if value == nil then
    return nil, "Traded On Cboe \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.traded_on_cboe, buffer(offset, length), value, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_cboe.display(text))
  end
  return index
end

-- Traded On Psx
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_psx = {}

-- Traded On Psx ends at "|"
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_psx.delimiter = "|"
-- Traded On Psx is a signed integer

-- Display: Traded On Psx
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_psx.labels = {
  ["0"] = "Traded On Psx: No (0)",
  ["1"] = "Traded On Psx: Yes (1)",
}

nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_psx.display = function(value)
  return nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_psx.labels[value] or "Traded On Psx: Unknown("..value..")"
end

-- Dissect: Traded On Psx
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_psx.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current then
    return nil, "the line stops before Traded On Psx"
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_psx.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current, offset + 1, offset + length)
  local value, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.signed(text)
  if value == nil then
    return nil, "Traded On Psx \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.traded_on_psx, buffer(offset, length), value, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_psx.display(text))
  end
  return index
end

-- Traded On Batsy
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_batsy = {}

-- Traded On Batsy ends at "|"
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_batsy.delimiter = "|"
-- Traded On Batsy is a signed integer

-- Display: Traded On Batsy
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_batsy.labels = {
  ["0"] = "Traded On Batsy: No (0)",
  ["1"] = "Traded On Batsy: Yes (1)",
}

nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_batsy.display = function(value)
  return nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_batsy.labels[value] or "Traded On Batsy: Unknown("..value..")"
end

-- Dissect: Traded On Batsy
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_batsy.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current then
    return nil, "the line stops before Traded On Batsy"
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_batsy.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current, offset + 1, offset + length)
  local value, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.signed(text)
  if value == nil then
    return nil, "Traded On Batsy \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.traded_on_batsy, buffer(offset, length), value, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_batsy.display(text))
  end
  return index
end

-- Traded On Bats
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_bats = {}

-- Traded On Bats ends at "|"
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_bats.delimiter = "|"
-- Traded On Bats is a signed integer

-- Display: Traded On Bats
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_bats.labels = {
  ["0"] = "Traded On Bats: No (0)",
  ["1"] = "Traded On Bats: Yes (1)",
}

nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_bats.display = function(value)
  return nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_bats.labels[value] or "Traded On Bats: Unknown("..value..")"
end

-- Dissect: Traded On Bats
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_bats.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current then
    return nil, "the line stops before Traded On Bats"
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_bats.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current, offset + 1, offset + length)
  local value, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.signed(text)
  if value == nil then
    return nil, "Traded On Bats \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.traded_on_bats, buffer(offset, length), value, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_bats.display(text))
  end
  return index
end

-- Traded On Iex
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_iex = {}

-- Traded On Iex ends at "|"
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_iex.delimiter = "|"
-- Traded On Iex is a signed integer

-- Display: Traded On Iex
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_iex.labels = {
  ["0"] = "Traded On Iex: No (0)",
  ["1"] = "Traded On Iex: Yes (1)",
}

nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_iex.display = function(value)
  return nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_iex.labels[value] or "Traded On Iex: Unknown("..value..")"
end

-- Dissect: Traded On Iex
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_iex.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current then
    return nil, "the line stops before Traded On Iex"
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_iex.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current, offset + 1, offset + length)
  local value, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.signed(text)
  if value == nil then
    return nil, "Traded On Iex \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.traded_on_iex, buffer(offset, length), value, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_iex.display(text))
  end
  return index
end

-- Tick Pilot Indicator
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.tick_pilot_indicator = {}

-- Tick Pilot Indicator ends at "|"
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.tick_pilot_indicator.delimiter = "|"
-- Tick Pilot Indicator is text in Ascii
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.tick_pilot_indicator.encoding = ENC_ASCII

-- Display: Tick Pilot Indicator
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.tick_pilot_indicator.labels = {
  ["C"] = "Tick Pilot Indicator: Control Group - business as usual ($0.01 increments) (C)",
  ["1"] = "Tick Pilot Indicator: Group 1 Pilot securities in the first test group quoted in $0.05 increments; trading is business as usual. (1)",
  ["2"] = "Tick Pilot Indicator: Group 2 - Pilot securities in the second test group quoted in $0.05 increments; trade in $0.05 increments except for midpoint liquidity and retail orders. (2)",
  ["3"] = "Tick Pilot Indicator: Group 3 - Pilot securities in the third test group quote in $0.05 increments; trade in $0.05 increments; protection is provided to displayed liquidity over dark liquidity at the same price, known as the \"trade at\" rule. (3)",
}

nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.tick_pilot_indicator.display = function(value)
  return nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.tick_pilot_indicator.labels[value] or "Tick Pilot Indicator: Unknown("..value..")"
end

-- Dissect: Tick Pilot Indicator
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.tick_pilot_indicator.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current then
    -- the line stops before it: optional, it has no value
    return offset
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.tick_pilot_indicator.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current, offset + 1, offset + length)
  if text == "" then
    if parent ~= nil then
      parent:add(buffer(offset, length), "Tick Pilot Indicator: Not applicable (not part of the tick pilot program)")
    end
    return index
  end
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.tick_pilot_indicator, buffer(offset, length), text, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.tick_pilot_indicator.display(text))
  end
  return index
end

-- Effective Date
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.effective_date = {}

-- Effective Date ends at "|"
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.effective_date.delimiter = "|"
-- Effective Date is a date, yyyymmdd

-- Display: Effective Date
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.effective_date.display = function(value)
  return "Effective Date: "..value
end

-- Dissect: Effective Date
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.effective_date.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current then
    -- the line stops before it: optional, it has no value
    return offset
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.effective_date.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current, offset + 1, offset + length)
  if text == "" then
    return index
  end
  if nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.days(text) == nil then
    return nil, "Effective Date \"" .. text .. "\" is not a yyyymmdd date"
  end
  if parent ~= nil then
    local value = string.sub(text, 1, 4) .. "-" .. string.sub(text, 5, 6) .. "-" .. string.sub(text, 7, 8)
    parent:add(omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.effective_date, buffer(offset, length), value, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.effective_date.display(value))
  end
  return index
end

-- Traded On Ltse
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_ltse = {}

-- Traded On Ltse ends at "|"
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_ltse.delimiter = "|"
-- Traded On Ltse is a signed integer

-- Display: Traded On Ltse
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_ltse.labels = {
  ["0"] = "Traded On Ltse: No (0)",
  ["1"] = "Traded On Ltse: Yes (1)",
}

nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_ltse.display = function(value)
  return nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_ltse.labels[value] or "Traded On Ltse: Unknown("..value..")"
end

-- Dissect: Traded On Ltse
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_ltse.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current then
    return nil, "the line stops before Traded On Ltse"
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_ltse.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current, offset + 1, offset + length)
  local value, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.signed(text)
  if value == nil then
    return nil, "Traded On Ltse \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.traded_on_ltse, buffer(offset, length), value, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_ltse.display(text))
  end
  return index
end

-- Traded On Memx
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_memx = {}

-- Traded On Memx ends at "|"
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_memx.delimiter = "|"
-- Traded On Memx is a signed integer

-- Display: Traded On Memx
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_memx.labels = {
  ["0"] = "Traded On Memx: No (0)",
  ["1"] = "Traded On Memx: Yes (1)",
}

nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_memx.display = function(value)
  return nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_memx.labels[value] or "Traded On Memx: Unknown("..value..")"
end

-- Dissect: Traded On Memx
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_memx.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current then
    return nil, "the line stops before Traded On Memx"
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_memx.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current, offset + 1, offset + length)
  local value, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.signed(text)
  if value == nil then
    return nil, "Traded On Memx \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.traded_on_memx, buffer(offset, length), value, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_memx.display(text))
  end
  return index
end

-- Traded On Miax
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_miax = {}

-- Traded On Miax ends at "|"
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_miax.delimiter = "|"
-- Traded On Miax is a signed integer

-- Display: Traded On Miax
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_miax.labels = {
  ["0"] = "Traded On Miax: No (0)",
  ["1"] = "Traded On Miax: Yes (1)",
}

nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_miax.display = function(value)
  return nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_miax.labels[value] or "Traded On Miax: Unknown("..value..")"
end

-- Dissect: Traded On Miax
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_miax.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current then
    return nil, "the line stops before Traded On Miax"
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_miax.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current, offset + 1, offset + length)
  local value, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.signed(text)
  if value == nil then
    return nil, "Traded On Miax \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.traded_on_miax, buffer(offset, length), value, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_miax.display(text))
  end
  return index
end

-- Traded On 24x
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_24x = {}

-- Traded On 24x ends at "|"
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_24x.delimiter = "|"
-- Traded On 24x is a signed integer

-- Display: Traded On 24x
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_24x.labels = {
  ["0"] = "Traded On 24x: No (0)",
  ["1"] = "Traded On 24x: Yes (1)",
}

nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_24x.display = function(value)
  return nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_24x.labels[value] or "Traded On 24x: Unknown("..value..")"
end

-- Dissect: Traded On 24x
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_24x.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current then
    return nil, "the line stops before Traded On 24x"
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_24x.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current, offset + 1, offset + length)
  local value, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.signed(text)
  if value == nil then
    return nil, "Traded On 24x \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.traded_on_24x, buffer(offset, length), value, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_24x.display(text))
  end
  return index
end

-- Traded On Txse
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_txse = {}

-- Traded On Txse ends at "|"
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_txse.delimiter = "|"
-- Traded On Txse is a signed integer

-- Display: Traded On Txse
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_txse.labels = {
  ["0"] = "Traded On Txse: No (0)",
  ["1"] = "Traded On Txse: Yes (1)",
}

nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_txse.display = function(value)
  return nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_txse.labels[value] or "Traded On Txse: Unknown("..value..")"
end

-- Dissect: Traded On Txse
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_txse.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current then
    return nil, "the line stops before Traded On Txse"
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_txse.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current, offset + 1, offset + length)
  local value, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.signed(text)
  if value == nil then
    return nil, "Traded On Txse \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.traded_on_txse, buffer(offset, length), value, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_txse.display(text))
  end
  return index
end


-----------------------------------------------------------------------
-- Protocol Records
-----------------------------------------------------------------------

-- Security
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.security = {}

-- The delimiter every field of Security ends at, which its line is split at
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.security.delimiter = "|"

-- Dissect Fields: Security
-- Split: every field of Security ends at "|" and none is quoted, so its line is split once and each field handed its range
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.security.fields = function(buffer, offset, packet, parent)
  local starts, lengths = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.split(offset, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.security.delimiter)
  if #starts > 41 then
    return nil, "Security: the line has " .. #starts .. " fields, its layout 41"
  end
  local index = nil
  local failure = nil

  -- Symbol: field 1
  index, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.symbol.dissect(buffer, starts[1], packet, parent, lengths[1])
  if failure ~= nil then
    return nil, failure
  end

  -- Security Description: field 2
  index, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.security_description.dissect(buffer, starts[2], packet, parent, lengths[2])
  if failure ~= nil then
    return nil, failure
  end

  -- Cusip: field 3
  index, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.cusip.dissect(buffer, starts[3], packet, parent, lengths[3])
  if failure ~= nil then
    return nil, failure
  end

  -- Security Type: field 4
  index, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.security_type.dissect(buffer, starts[4], packet, parent, lengths[4])
  if failure ~= nil then
    return nil, failure
  end

  -- Sip Symbol: field 5
  index, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.sip_symbol.dissect(buffer, starts[5], packet, parent, lengths[5])
  if failure ~= nil then
    return nil, failure
  end

  -- Old Symbol: field 6
  index, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.old_symbol.dissect(buffer, starts[6], packet, parent, lengths[6])
  if failure ~= nil then
    return nil, failure
  end

  -- Test Symbol Flag: field 7
  index, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.test_symbol_flag.dissect(buffer, starts[7], packet, parent, lengths[7])
  if failure ~= nil then
    return nil, failure
  end

  -- Listed Exchange: field 8
  index, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.listed_exchange.dissect(buffer, starts[8], packet, parent, lengths[8])
  if failure ~= nil then
    return nil, failure
  end

  -- Tape: field 9
  index, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.tape.dissect(buffer, starts[9], packet, parent, lengths[9])
  if failure ~= nil then
    return nil, failure
  end

  -- Unit Of Trade: field 10
  index, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.unit_of_trade.dissect(buffer, starts[10], packet, parent, lengths[10])
  if failure ~= nil then
    return nil, failure
  end

  -- Round Lot: field 11
  index, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.round_lot.dissect(buffer, starts[11], packet, parent, lengths[11])
  if failure ~= nil then
    return nil, failure
  end

  -- Nyse Industry Code: field 12
  index, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.nyse_industry_code.dissect(buffer, starts[12], packet, parent, lengths[12])
  if failure ~= nil then
    return nil, failure
  end

  -- Shares Outstanding: field 13
  index, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.shares_outstanding.dissect(buffer, starts[13], packet, parent, lengths[13])
  if failure ~= nil then
    return nil, failure
  end

  -- Halt Delay Reason: field 14
  index, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.halt_delay_reason.dissect(buffer, starts[14], packet, parent, lengths[14])
  if failure ~= nil then
    return nil, failure
  end

  -- Specialist Clearing Agent: field 15
  index, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.specialist_clearing_agent.dissect(buffer, starts[15], packet, parent, lengths[15])
  if failure ~= nil then
    return nil, failure
  end

  -- Specialist Clearing Number: field 16
  index, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.specialist_clearing_number.dissect(buffer, starts[16], packet, parent, lengths[16])
  if failure ~= nil then
    return nil, failure
  end

  -- Specialist Post Number: field 17
  index, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.specialist_post_number.dissect(buffer, starts[17], packet, parent, lengths[17])
  if failure ~= nil then
    return nil, failure
  end

  -- Specialist Panel: field 18
  index, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.specialist_panel.dissect(buffer, starts[18], packet, parent, lengths[18])
  if failure ~= nil then
    return nil, failure
  end

  -- Traded On Nysemkt: field 19
  index, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_nysemkt.dissect(buffer, starts[19], packet, parent, lengths[19])
  if failure ~= nil then
    return nil, failure
  end

  -- Traded On Nasdaqbx: field 20
  index, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_nasdaqbx.dissect(buffer, starts[20], packet, parent, lengths[20])
  if failure ~= nil then
    return nil, failure
  end

  -- Traded On Nsx: field 21
  index, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_nsx.dissect(buffer, starts[21], packet, parent, lengths[21])
  if failure ~= nil then
    return nil, failure
  end

  -- Traded On Finra: field 22
  index, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_finra.dissect(buffer, starts[22], packet, parent, lengths[22])
  if failure ~= nil then
    return nil, failure
  end

  -- Traded On Ise: field 23
  index, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_ise.dissect(buffer, starts[23], packet, parent, lengths[23])
  if failure ~= nil then
    return nil, failure
  end

  -- Traded On Edge A: field 24
  index, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_edge_a.dissect(buffer, starts[24], packet, parent, lengths[24])
  if failure ~= nil then
    return nil, failure
  end

  -- Traded On Edge X: field 25
  index, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_edge_x.dissect(buffer, starts[25], packet, parent, lengths[25])
  if failure ~= nil then
    return nil, failure
  end

  -- Traded On Nyse Texas: field 26
  index, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_nyse_texas.dissect(buffer, starts[26], packet, parent, lengths[26])
  if failure ~= nil then
    return nil, failure
  end

  -- Traded On Nyse: field 27
  index, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_nyse.dissect(buffer, starts[27], packet, parent, lengths[27])
  if failure ~= nil then
    return nil, failure
  end

  -- Traded On Arca: field 28
  index, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_arca.dissect(buffer, starts[28], packet, parent, lengths[28])
  if failure ~= nil then
    return nil, failure
  end

  -- Traded On Nasdaq: field 29
  index, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_nasdaq.dissect(buffer, starts[29], packet, parent, lengths[29])
  if failure ~= nil then
    return nil, failure
  end

  -- Traded On Cboe: field 30
  index, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_cboe.dissect(buffer, starts[30], packet, parent, lengths[30])
  if failure ~= nil then
    return nil, failure
  end

  -- Traded On Psx: field 31
  index, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_psx.dissect(buffer, starts[31], packet, parent, lengths[31])
  if failure ~= nil then
    return nil, failure
  end

  -- Traded On Batsy: field 32
  index, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_batsy.dissect(buffer, starts[32], packet, parent, lengths[32])
  if failure ~= nil then
    return nil, failure
  end

  -- Traded On Bats: field 33
  index, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_bats.dissect(buffer, starts[33], packet, parent, lengths[33])
  if failure ~= nil then
    return nil, failure
  end

  -- Traded On Iex: field 34
  index, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_iex.dissect(buffer, starts[34], packet, parent, lengths[34])
  if failure ~= nil then
    return nil, failure
  end

  -- Tick Pilot Indicator: field 35
  index, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.tick_pilot_indicator.dissect(buffer, starts[35], packet, parent, lengths[35])
  if failure ~= nil then
    return nil, failure
  end

  -- Effective Date: field 36
  index, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.effective_date.dissect(buffer, starts[36], packet, parent, lengths[36])
  if failure ~= nil then
    return nil, failure
  end

  -- Traded On Ltse: field 37
  index, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_ltse.dissect(buffer, starts[37], packet, parent, lengths[37])
  if failure ~= nil then
    return nil, failure
  end

  -- Traded On Memx: field 38
  index, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_memx.dissect(buffer, starts[38], packet, parent, lengths[38])
  if failure ~= nil then
    return nil, failure
  end

  -- Traded On Miax: field 39
  index, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_miax.dissect(buffer, starts[39], packet, parent, lengths[39])
  if failure ~= nil then
    return nil, failure
  end

  -- Traded On 24x: field 40
  index, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_24x.dissect(buffer, starts[40], packet, parent, lengths[40])
  if failure ~= nil then
    return nil, failure
  end

  -- Traded On Txse: field 41
  index, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.traded_on_txse.dissect(buffer, starts[41], packet, parent, lengths[41])
  if failure ~= nil then
    return nil, failure
  end

  return #nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current + 1
end

-- Dissect: Security
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.security.dissect = function(buffer, offset, packet, parent)
  local element = parent:add(omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.security, buffer(), "Security", "Security")
  return nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.security.fields(buffer, offset, packet, element)
end


-----------------------------------------------------------------------
-- Protocol Lines
-----------------------------------------------------------------------

-- The text between a line's fields, its Packet rule's Delimiter: "|"
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.delimiter = "|"

-- The character ending a line, its Packet rule's Terminator: 10
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.terminator = "\010"

-- The layouts a file states in its header, in model order: the header lines each states
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.variants = {
  {
    name = "DailyTaqMaster.v4.3",
    headers = { "Symbol|Security_Description|CUSIP|Security_Type|SIP_Symbol|Old_Symbol|Test_Symbol_Flag|Listed_Exchange|Tape|Unit_Of_Trade|Round_Lot|NYSE_Industry_Code|Shares_Outstanding|Halt_Delay_Reason|Specialist_Clearing_Agent|Specialist_Clearing_Number|Specialist_Post_Number|Specialist_Panel|TradedOnNYSEMKT|TradedOnNASDAQBX|TradedOnNSX|TradedOnFINRA|TradedOnISE|TradedOnEdgeA|TradedOnEdgeX|TradedOnNYSETexas|TradedOnNYSE|TradedOnArca|TradedOnNasdaq|TradedOnCBOE|TradedOnPSX|TradedOnBATSY|TradedOnBATS|TradedOnIEX|Tick_Pilot_Indicator|Effective_Date|TradedOnLTSE|TradedOnMEMX|TradedOnMIAX|TradedOn24X|TradedOnTXSE" },
  },
}

-- The layout the file's lines are read by: the one its file handler found, the first where none did
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.variant = function()
  if nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.file == nil or nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.file.variant == nil then
    return 1
  end
  return nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.file.variant
end

-- A header line: its layout, and its columns
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.header = function(buffer, packet, parent, variant)
  packet.cols.info = "Header Row"
  local name = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.variants[variant].name
  local item = parent:add(omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.header_row, buffer(), name, "Header Row: " .. name)
  local starts, lengths = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.split(0, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.delimiter)
  for index = 1, #starts do
    local range = buffer(starts[index], lengths[index])
    item:add(range, "Column " .. index .. ": " .. range:string(ENC_ASCII))
  end
end

-- A line the layout does not read, and why: its fields, as they are
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.outside = function(buffer, packet, parent, reason)
  packet.cols.info = "Line Outside Layout"
  local item = parent:add(omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.fields.line_outside_layout, buffer(), reason, "Line Outside Layout: " .. reason)
  item:add_proto_expert_info(omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.experts.line_outside_layout, reason)
  local starts, lengths = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.split(0, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.delimiter)
  for index = 1, #starts do
    local range = buffer(starts[index], lengths[index])
    item:add(range, "Field " .. index .. ": " .. range:string(ENC_ASCII))
  end
end

-- Is a line one of the layout's header lines?
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.headed = function(line, variant)
  for index, header in ipairs(nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.variants[variant].headers) do
    if line == header then
      return true
    end
  end
  return false
end

-- Does a line read as the layout's: a header line, or Security?
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.reads = function(buffer, packet, line)
  nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current = line
  local variant = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.variant()
  if nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.headed(line, variant) then
    return true
  end
  local index, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.security.fields(buffer, 0, packet, nil)
  return failure == nil
end

-- Dissect a line: a header line, or Security, or a line outside the layout
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.line = function(buffer, packet, parent)
  local line = buffer:raw()
  nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.lines.current = line
  local variant = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.variant()
  if nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.headed(line, variant) then
    return nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.header(buffer, packet, parent, variant)
  end

  -- read first with no tree, so a line the layout does not read is shown whole
  local index, failure = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.security.fields(buffer, 0, packet, nil)
  if failure ~= nil then
    return nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.outside(buffer, packet, parent, failure)
  end

  packet.cols.info = "Security"
  nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.security.dissect(buffer, 0, packet, parent)
end
-- Dissect Nyse NyseConsolidated DailyTaqMaster Csv 4.3
function omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.dissector(buffer, packet, parent)
  packet.cols.protocol = omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.name

  local protocol = parent:add(omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3, buffer(), omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.description, "(" .. buffer:len() .. " Bytes)")
  return nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.line(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- File Lines
-----------------------------------------------------------------------

-- A file's line, the one at an offset or with none the next, to the terminator: its offset, its text,
-- and its frame's time. The file is read a block at a time, the block kept in the capture's private
-- table; a line read again reads a block of its own
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.read = function(file, capture, offset)
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
    local ends = string.find(block.data, nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.terminator, block.at, true)
    if ends ~= nil then
      start = block.offset + block.at - 1
      line = string.sub(block.data, block.at, ends - 1)
      block.at = ends + #nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.terminator
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
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.file = {}

-- Exported pdu tags each frame starts with: the dissector it is for, then the end of the tags
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.file.prefix = "\000\012\000\052omi.nyse.nyseconsolidated.dailytaqmaster.csv.v4.3\000\000\000\000\000\000\000"

-- The text a file of each layout starts with
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.file.signatures = {
  "Symbol|Security_Description|CUSIP|Security_Type|SIP_Symbol|Old_Symbol|Test_Symbol_Flag|Listed_Exchange|Tape|Unit_Of_Trade|Round_Lot|NYSE_Industry_Code|Shares_Outstanding|Halt_Delay_Reason|Specialist_Clearing_Agent|Specialist_Clearing_Number|Specialist_Post_Number|Specialist_Panel|TradedOnNYSEMKT|TradedOnNASDAQBX|TradedOnNSX|TradedOnFINRA|TradedOnISE|TradedOnEdgeA|TradedOnEdgeX|TradedOnNYSETexas|TradedOnNYSE|TradedOnArca|TradedOnNasdaq|TradedOnCBOE|TradedOnPSX|TradedOnBATSY|TradedOnBATS|TradedOnIEX|Tick_Pilot_Indicator|Effective_Date|TradedOnLTSE|TradedOnMEMX|TradedOnMIAX|TradedOn24X|TradedOnTXSE\010",
}

-- The layout a file's first bytes are the signature of, or nil for a file of no layout
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.file.layout = function(file)
  local first = file:read(603)
  if first == nil then
    return nil
  end
  for index, signature in ipairs(nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.file.signatures) do
    if first:sub(1, #signature) == signature then
      return index
    end
  end
  return nil
end

-- A record read into a frame, the one at an offset or with none the next: its offset, nil at the end of the file
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.file.frame = function(file, capture, frame, offset)
  local at, data, seconds, nanoseconds = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.read(file, capture, offset)
  if at == nil then
    return nil
  end
  data = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.file.prefix .. data
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

-- Nyse NyseConsolidated DailyTaqMaster Csv 4.3 (Omi) file handler: a magic number reader, its signatures the magic
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.file.handler = FileHandler.new("Nyse NyseConsolidated DailyTaqMaster Csv 4.3 (Omi)", "omi_nyse_nyseconsolidated_dailytaqmaster_csv_v4_3", "Nyse NyseConsolidated DailyTaqMaster Csv 4.3 (Omi) file", "rm")

-- A file of a layout is this protocol's; read from its start, so its first line is the first frame
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.file.handler.read_open = function(file, capture)
  local layout = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.file.layout(file)
  if layout == nil then
    return false
  end
  nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.file.variant = layout
  file:seek("set", 0)
  capture.private_table = {}
  capture.encap = wtap_encaps.WIRESHARK_UPPER_PDU
  capture.time_precision = wtap_tsprecs.NSEC
  return true
end

-- The next record, returning its offset in the file
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.file.handler.read = function(file, capture, frame)
  local offset = nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.file.frame(file, capture, frame, nil)
  if offset == nil then
    return false
  end
  return offset
end

-- The record at an offset read before
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.file.handler.seek_read = function(file, capture, frame, offset)
  return nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.file.frame(file, capture, frame, offset) ~= nil
end

-- Nothing is held open beyond the file Wireshark closes
nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.file.handler.read_close = function(file, capture)
  return true
end

nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.file.handler.seq_read_close = function(file, capture)
  return true
end

-- Register Nyse NyseConsolidated DailyTaqMaster Csv 4.3 (Omi) files
register_filehandler(nyse_nyseconsolidated_dailytaqmaster_csv_v4_3.file.handler)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: New York Stock Exchange
--   Version: 4.3
--   Date: Tuesday, March 3, 2026
--   Specification: Daily_TAQ_Client_Spec_v4.3.pdf
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
