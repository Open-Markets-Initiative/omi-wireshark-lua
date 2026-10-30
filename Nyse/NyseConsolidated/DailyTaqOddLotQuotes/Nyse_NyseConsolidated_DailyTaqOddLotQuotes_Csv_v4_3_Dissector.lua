-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse NyseConsolidated DailyTaqOddLotQuotes Csv 4.3 Protocol
local omi_nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3 = Proto("Omi.Nyse.NyseConsolidated.DailyTaqOddLotQuotes.Csv.v4.3", "Nyse NyseConsolidated DailyTaqOddLotQuotes Csv 4.3")

-- Protocol table
local nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nyse NyseConsolidated DailyTaqOddLotQuotes Csv 4.3 Fields
omi_nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.fields.odd_lot_quote = ProtoField.new("Odd Lot Quote", "nyse.nyseconsolidated.dailytaqoddlotquotes.csv.v4.3.oddlotquote", ftypes.STRING, nil, nil)
omi_nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.fields.time = ProtoField.new("Time", "nyse.nyseconsolidated.dailytaqoddlotquotes.csv.v4.3.time", ftypes.STRING, nil, nil, nil, "Time the quote was published by the SIP")
omi_nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.fields.time_utc = ProtoField.new("Time", "nyse.nyseconsolidated.dailytaqoddlotquotes.csv.v4.3.time.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time on the day the protocol's Day preference names, in UTC")
omi_nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.fields.exchange = ProtoField.new("Exchange", "nyse.nyseconsolidated.dailytaqoddlotquotes.csv.v4.3.exchange", ftypes.STRING, nil, nil, nil, "The Exchange that issued the quote. See Participant IDs for codes")
omi_nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.fields.symbol = ProtoField.new("Symbol", "nyse.nyseconsolidated.dailytaqoddlotquotes.csv.v4.3.symbol", ftypes.STRING, nil, nil, nil, "Stock symbol")
omi_nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.fields.sequence_number = ProtoField.new("Sequence Number", "nyse.nyseconsolidated.dailytaqoddlotquotes.csv.v4.3.sequencenumber", ftypes.UINT64, nil, nil, nil, "Message sequence number.")
omi_nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.fields.participant_timestamp = ProtoField.new("Participant Timestamp", "nyse.nyseconsolidated.dailytaqoddlotquotes.csv.v4.3.participanttimestamp", ftypes.STRING, nil, nil, nil, "Time the quote was published by the Participant to the SIP.")
omi_nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.fields.participant_timestamp_utc = ProtoField.new("Participant Timestamp", "nyse.nyseconsolidated.dailytaqoddlotquotes.csv.v4.3.participanttimestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Participant Timestamp on the day the protocol's Day preference names, in UTC")
omi_nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.fields.finra_adf_timestamp = ProtoField.new("Finra Adf Timestamp", "nyse.nyseconsolidated.dailytaqoddlotquotes.csv.v4.3.finraadftimestamp", ftypes.STRING, nil, nil, nil, "A FINRA ADF- or a FINRA TRF-provided timestamp.")
omi_nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.fields.finra_adf_timestamp_utc = ProtoField.new("Finra Adf Timestamp", "nyse.nyseconsolidated.dailytaqoddlotquotes.csv.v4.3.finraadftimestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Finra Adf Timestamp on the day the protocol's Day preference names, in UTC")
omi_nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.fields.source_of_quote = ProtoField.new("Source Of Quote", "nyse.nyseconsolidated.dailytaqoddlotquotes.csv.v4.3.sourceofquote", ftypes.STRING, nil, nil)
omi_nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.fields.bolo_indicator = ProtoField.new("Bolo Indicator", "nyse.nyseconsolidated.dailytaqoddlotquotes.csv.v4.3.boloindicator", ftypes.STRING, nil, nil, nil, "BOLO Indicator identifies the effect the new quote has on the Best Odd Lot (OL) Bid and/or Best Odd Lot (OL) Offer. CTA: BOLO Indicator values A - P (CQS Output spec has the BOLO indicator definitions) UTP: BOLO Appendage Indicator values 0 - 5 (UTP Output spec has the BOLO indicator definitions)")
omi_nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.fields.clear_prior_odd_lot_quotes = ProtoField.new("Clear Prior Odd Lot Quotes", "nyse.nyseconsolidated.dailytaqoddlotquotes.csv.v4.3.clearprioroddlotquotes", ftypes.STRING, nil, nil, nil, "CTA: Identifies whether to clear all previously reported odd lot bids and/or offers for the Exchange identified above. Note: If the Odd Lot quote record provides the Clear Prior Odd Lot flag, all further quote fields i.e., Side, Odd Lot Quote Price, Size & FINRA MMID are left blank. UTP: Not applicable.")
omi_nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.fields.side = ProtoField.new("Side", "nyse.nyseconsolidated.dailytaqoddlotquotes.csv.v4.3.side", ftypes.STRING, nil, nil, nil, "Side of the Odd lot Quote.")
omi_nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.fields.odd_lot_quote_price = ProtoField.new("Odd Lot Quote Price", "nyse.nyseconsolidated.dailytaqoddlotquotes.csv.v4.3.oddlotquoteprice", ftypes.DOUBLE, nil, nil, nil, "Odd Lot Quote Price.")
omi_nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.fields.odd_lot_quote_size = ProtoField.new("Odd Lot Quote Size", "nyse.nyseconsolidated.dailytaqoddlotquotes.csv.v4.3.oddlotquotesize", ftypes.UINT64, nil, nil, nil, "Odd Lot Quote Size.")
omi_nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.fields.odd_lot_finra_market_maker_id = ProtoField.new("Odd Lot Finra Market Maker Id", "nyse.nyseconsolidated.dailytaqoddlotquotes.csv.v4.3.oddlotfinramarketmakerid", ftypes.STRING, nil, nil, nil, "Odd Lot Quote FINRA Market Maker ID.")
omi_nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.fields.header_row = ProtoField.new("Header Row", "nyse.nyseconsolidated.dailytaqoddlotquotes.csv.v4.3.headerrow", ftypes.STRING, nil, nil, nil, "The line naming a file's columns, which states the layout its lines are read in")
omi_nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.fields.line_outside_layout = ProtoField.new("Line Outside Layout", "nyse.nyseconsolidated.dailytaqoddlotquotes.csv.v4.3.lineoutsidelayout", ftypes.STRING, nil, nil, nil, "A line the layout does not read: no header row, and not the record")

-----------------------------------------------------------------------
-- Declare Dissection Experts
-----------------------------------------------------------------------

-- A line the layout does not read
omi_nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.experts.line_outside_layout = ProtoExpert.new("nyse.nyseconsolidated.dailytaqoddlotquotes.csv.v4.3.lineoutsidelayout.expert", "Line Outside Layout", expert.group.MALFORMED, expert.severity.WARN)

-----------------------------------------------------------------------
-- Protocol Preferences
-----------------------------------------------------------------------

-- The day the file's times of day are on: each is placed on it in its zone, and a frame is timed by it, in UTC
omi_nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.prefs.day = Pref.string("Day (yyyymmdd)", "", "The day the file's times of day are on, as yyyymmdd: the file states no date. With no day a frame's time is its time of day on 1970-01-01. A frame's time is set when the file is read, so reload the file after changing the day")

-----------------------------------------------------------------------
-- Protocol Primitives
-----------------------------------------------------------------------

-- The readings a field calls with its own traits, and the line being dissected
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines = {}

-- A line split at a delimiter, from an offset: where each field starts, and its length
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.split = function(offset, delimiter)
  local line = nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.current
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
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.scan = function(offset, delimiter)
  local line = nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.current
  local at = string.find(line, delimiter, offset + 1, true)
  if at == nil then
    return #line - offset, #line + 1
  end
  return at - 1 - offset, at - 1 + #delimiter
end
-- A decimal's text to a count of places, exactly, as the decimal it is (131.05); nil and why where it
-- has more places than zeros, or more digits than 64 bits hold
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.places = function(text, places)
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
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.unsigned = function(text)
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
-- Days since 1970-01-01 of a yyyymmdd date, or nil for text naming no day
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.days = function(text)
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
-- A time of day, HHMMSS then a fraction of a second of a count of digits, its leading zeros dropped:
-- its seconds and nanoseconds since midnight and its text as HH:MM:SS.fraction, or nil for text that is none
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.time = function(text, fraction)
  if #text == 0 or #text > 6 + fraction or string.find(text, "^%d+$") == nil then
    return nil
  end
  local padded = string.rep("0", 6 + fraction - #text) .. text
  local hours = tonumber(string.sub(padded, 1, 2))
  local minutes = tonumber(string.sub(padded, 3, 4))
  local seconds = tonumber(string.sub(padded, 5, 6))
  if hours > 23 or minutes > 59 or seconds > 59 then
    return nil
  end
  local part = string.sub(padded, 7)
  local nanoseconds = tonumber(part .. string.rep("0", 9 - fraction))
  local display = string.sub(padded, 1, 2) .. ":" .. string.sub(padded, 3, 4) .. ":" .. string.sub(padded, 5, 6) .. "." .. part
  return (hours * 60 + minutes) * 60 + seconds, nanoseconds, display
end
-- A zone's clock around a day: the offset in force before it and, where the zone changes offset near
-- the day, the change (UTC seconds) and the offset after it; no zone changes twice in days
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.reading = function(zone, days)
  local reading = { before = zone.first }
  local from = (days - 2) * 86400
  local to = (days + 3) * 86400
  for index, change in ipairs(zone.changes) do
    if change[1] <= from then
      reading.before = change[2]
    elseif change[1] < to and reading.change == nil then
      reading.change = change[1]
      reading.after = change[2]
    end
  end
  return reading
end

-- The UTC seconds of a wall clock reading (seconds since 1970-01-01 on the zone's clock)
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.utc = function(reading, wall)
  if reading.change == nil then
    return wall - reading.before
  end
  if wall - reading.before < reading.change or wall - reading.after < reading.change then
    return wall - reading.before
  end
  return wall - reading.after
end

-- The day the preference names, and each zone's clock around it: read when first placed on, and
-- again when the preference changes, as reading a preference costs more than placing a time
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.day = { readings = {} }

nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.today = function()
  local text = omi_nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.prefs.day
  nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.day = { text = text, days = nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.days(text), readings = {} }
end

omi_nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.prefs_changed = function()
  nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.today()
end

-- The UTC seconds of a time of day on the preference's day, in a zone; nil with no day, or a day
-- outside the years the zone's changes are written for
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.placed = function(zone, seconds)
  if nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.day.text == nil then
    nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.today()
  end
  local day = nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.day
  if day.days == nil then
    return nil
  end
  local midnight = day.days * 86400
  if midnight < zone.from or midnight >= zone.to then
    return nil
  end
  local reading = day.readings[zone]
  if reading == nil then
    reading = nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.reading(zone, day.days)
    day.readings[zone] = reading
  end
  return nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.utc(reading, midnight + seconds)
end

-----------------------------------------------------------------------
-- Protocol Zones
-----------------------------------------------------------------------

-- The zones times of day are placed in: seconds east of UTC from 1990, then each change (its UTC second, the offset after it), to 2100
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.zones = {}

-- America/New_York
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.zones["America/New_York"] = {
  from = 631152000,
  to = 4102444800,
  first = -18000,
  changes = {
    { 638953200, -14400 },
    { 657093600, -18000 },
    { 671007600, -14400 },
    { 688543200, -18000 },
    { 702457200, -14400 },
    { 719992800, -18000 },
    { 733906800, -14400 },
    { 752047200, -18000 },
    { 765356400, -14400 },
    { 783496800, -18000 },
    { 796806000, -14400 },
    { 814946400, -18000 },
    { 828860400, -14400 },
    { 846396000, -18000 },
    { 860310000, -14400 },
    { 877845600, -18000 },
    { 891759600, -14400 },
    { 909295200, -18000 },
    { 923209200, -14400 },
    { 941349600, -18000 },
    { 954658800, -14400 },
    { 972799200, -18000 },
    { 986108400, -14400 },
    { 1004248800, -18000 },
    { 1018162800, -14400 },
    { 1035698400, -18000 },
    { 1049612400, -14400 },
    { 1067148000, -18000 },
    { 1081062000, -14400 },
    { 1099202400, -18000 },
    { 1112511600, -14400 },
    { 1130652000, -18000 },
    { 1143961200, -14400 },
    { 1162101600, -18000 },
    { 1173596400, -14400 },
    { 1194156000, -18000 },
    { 1205046000, -14400 },
    { 1225605600, -18000 },
    { 1236495600, -14400 },
    { 1257055200, -18000 },
    { 1268550000, -14400 },
    { 1289109600, -18000 },
    { 1299999600, -14400 },
    { 1320559200, -18000 },
    { 1331449200, -14400 },
    { 1352008800, -18000 },
    { 1362898800, -14400 },
    { 1383458400, -18000 },
    { 1394348400, -14400 },
    { 1414908000, -18000 },
    { 1425798000, -14400 },
    { 1446357600, -18000 },
    { 1457852400, -14400 },
    { 1478412000, -18000 },
    { 1489302000, -14400 },
    { 1509861600, -18000 },
    { 1520751600, -14400 },
    { 1541311200, -18000 },
    { 1552201200, -14400 },
    { 1572760800, -18000 },
    { 1583650800, -14400 },
    { 1604210400, -18000 },
    { 1615705200, -14400 },
    { 1636264800, -18000 },
    { 1647154800, -14400 },
    { 1667714400, -18000 },
    { 1678604400, -14400 },
    { 1699164000, -18000 },
    { 1710054000, -14400 },
    { 1730613600, -18000 },
    { 1741503600, -14400 },
    { 1762063200, -18000 },
    { 1772953200, -14400 },
    { 1793512800, -18000 },
    { 1805007600, -14400 },
    { 1825567200, -18000 },
    { 1836457200, -14400 },
    { 1857016800, -18000 },
    { 1867906800, -14400 },
    { 1888466400, -18000 },
    { 1899356400, -14400 },
    { 1919916000, -18000 },
    { 1930806000, -14400 },
    { 1951365600, -18000 },
    { 1962860400, -14400 },
    { 1983420000, -18000 },
    { 1994310000, -14400 },
    { 2014869600, -18000 },
    { 2025759600, -14400 },
    { 2046319200, -18000 },
    { 2057209200, -14400 },
    { 2077768800, -18000 },
    { 2088658800, -14400 },
    { 2109218400, -18000 },
    { 2120108400, -14400 },
    { 2140668000, -18000 },
    { 2152162800, -14400 },
    { 2172722400, -18000 },
    { 2183612400, -14400 },
    { 2204172000, -18000 },
    { 2215062000, -14400 },
    { 2235621600, -18000 },
    { 2246511600, -14400 },
    { 2267071200, -18000 },
    { 2277961200, -14400 },
    { 2298520800, -18000 },
    { 2309410800, -14400 },
    { 2329970400, -18000 },
    { 2341465200, -14400 },
    { 2362024800, -18000 },
    { 2372914800, -14400 },
    { 2393474400, -18000 },
    { 2404364400, -14400 },
    { 2424924000, -18000 },
    { 2435814000, -14400 },
    { 2456373600, -18000 },
    { 2467263600, -14400 },
    { 2487823200, -18000 },
    { 2499318000, -14400 },
    { 2519877600, -18000 },
    { 2530767600, -14400 },
    { 2551327200, -18000 },
    { 2562217200, -14400 },
    { 2582776800, -18000 },
    { 2593666800, -14400 },
    { 2614226400, -18000 },
    { 2625116400, -14400 },
    { 2645676000, -18000 },
    { 2656566000, -14400 },
    { 2677125600, -18000 },
    { 2688620400, -14400 },
    { 2709180000, -18000 },
    { 2720070000, -14400 },
    { 2740629600, -18000 },
    { 2751519600, -14400 },
    { 2772079200, -18000 },
    { 2782969200, -14400 },
    { 2803528800, -18000 },
    { 2814418800, -14400 },
    { 2834978400, -18000 },
    { 2846473200, -14400 },
    { 2867032800, -18000 },
    { 2877922800, -14400 },
    { 2898482400, -18000 },
    { 2909372400, -14400 },
    { 2929932000, -18000 },
    { 2940822000, -14400 },
    { 2961381600, -18000 },
    { 2972271600, -14400 },
    { 2992831200, -18000 },
    { 3003721200, -14400 },
    { 3024280800, -18000 },
    { 3035775600, -14400 },
    { 3056335200, -18000 },
    { 3067225200, -14400 },
    { 3087784800, -18000 },
    { 3098674800, -14400 },
    { 3119234400, -18000 },
    { 3130124400, -14400 },
    { 3150684000, -18000 },
    { 3161574000, -14400 },
    { 3182133600, -18000 },
    { 3193023600, -14400 },
    { 3213583200, -18000 },
    { 3225078000, -14400 },
    { 3245637600, -18000 },
    { 3256527600, -14400 },
    { 3277087200, -18000 },
    { 3287977200, -14400 },
    { 3308536800, -18000 },
    { 3319426800, -14400 },
    { 3339986400, -18000 },
    { 3350876400, -14400 },
    { 3371436000, -18000 },
    { 3382930800, -14400 },
    { 3403490400, -18000 },
    { 3414380400, -14400 },
    { 3434940000, -18000 },
    { 3445830000, -14400 },
    { 3466389600, -18000 },
    { 3477279600, -14400 },
    { 3497839200, -18000 },
    { 3508729200, -14400 },
    { 3529288800, -18000 },
    { 3540178800, -14400 },
    { 3560738400, -18000 },
    { 3572233200, -14400 },
    { 3592792800, -18000 },
    { 3603682800, -14400 },
    { 3624242400, -18000 },
    { 3635132400, -14400 },
    { 3655692000, -18000 },
    { 3666582000, -14400 },
    { 3687141600, -18000 },
    { 3698031600, -14400 },
    { 3718591200, -18000 },
    { 3730086000, -14400 },
    { 3750645600, -18000 },
    { 3761535600, -14400 },
    { 3782095200, -18000 },
    { 3792985200, -14400 },
    { 3813544800, -18000 },
    { 3824434800, -14400 },
    { 3844994400, -18000 },
    { 3855884400, -14400 },
    { 3876444000, -18000 },
    { 3887334000, -14400 },
    { 3907893600, -18000 },
    { 3919388400, -14400 },
    { 3939948000, -18000 },
    { 3950838000, -14400 },
    { 3971397600, -18000 },
    { 3982287600, -14400 },
    { 4002847200, -18000 },
    { 4013737200, -14400 },
    { 4034296800, -18000 },
    { 4045186800, -14400 },
    { 4065746400, -18000 },
    { 4076636400, -14400 },
    { 4097196000, -18000 },
  },
}

-----------------------------------------------------------------------
-- Protocol Fields
-----------------------------------------------------------------------

-- Time
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.time = {}

-- Time ends at "|"
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.time.delimiter = "|"
-- Time is a time of day: Format HHMMSSnnnnnnnnn, 9 digits of a second, Unit Nanoseconds, Epoch Midnight
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.time.fraction = 9
-- Time's midnight is in America/New_York, where the Day preference places it
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.time.zone = nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.zones["America/New_York"]

-- Display: Time
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.time.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.current then
    return nil, "the line stops before Time"
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.time.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.current, offset + 1, offset + length)
  local seconds, nanoseconds, value = nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.time(text, nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.time.fraction)
  if seconds == nil then
    return nil, "Time \"" .. text .. "\" is not a time of day"
  end
  if parent ~= nil then
    local range = buffer(offset, length)
    local item = parent:add(omi_nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.fields.time, range, value, nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.time.display(value))
    -- on the Day preference's day, in UTC
    local utc = nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.placed(nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.time.zone, seconds)
    if utc ~= nil then
      item:add(omi_nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.fields.time_utc, range, NSTime(utc, nanoseconds)):set_generated()
    end
  end
  return index
end

-- Exchange
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.exchange = {}

-- Exchange ends at "|"
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.exchange.delimiter = "|"
-- Exchange is text in Ascii
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.exchange.encoding = ENC_ASCII

-- Display: Exchange
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.exchange.labels = {
  ["A"] = "Exchange: NYSE American, LLC (NYSE American) (A)",
  ["B"] = "Exchange: NASDAQ OMX BX, Inc. (NASDAQ OMX BX) (B)",
  ["C"] = "Exchange: NYSE National, Inc (NYSE National) (C)",
  ["D"] = "Exchange: FINRA Alternative Display Facility (ADF) (D)",
  ["F"] = "Exchange: TXSE Exchange (TXSE) (F)",
  ["G"] = "Exchange: 24X Exchange (24X) (G)",
  ["H"] = "Exchange: MIAX Pearl, LLC (MIAX) (H)",
  ["I"] = "Exchange: International Securities Exchange, LLC (ISE) (I)",
  ["J"] = "Exchange: Cboe EDGA Exchange (Cboe EDGA) (J)",
  ["K"] = "Exchange: Cboe EDGX Exchange (Cboe EDGX) (K)",
  ["L"] = "Exchange: Long-Term Stock Exchange, Inc. (LTSE) (L)",
  ["M"] = "Exchange: NYSE Texas (NYSE Texas) (M)",
  ["N"] = "Exchange: New York Stock Exchange, LLC (NYSE) (N)",
  ["P"] = "Exchange: NYSE Arca, Inc. (NYSE Arca) (P)",
  ["S"] = "Exchange: Consolidated Tape System (CTS) (S)",
  ["T"] = "Exchange: NASDAQ Stock Market, LLC (in Tape A, B securities) (NASDAQ) (T)",
  ["Q"] = "Exchange: NASDAQ Stock Exchange, LLC (in Tape C securities) (Q)",
  ["U"] = "Exchange: Members Exchange (MEMX) (U)",
  ["V"] = "Exchange: The Investors’ Exchange, LLC (IEX) (V)",
  ["W"] = "Exchange: Chicago Broad Options Exchange, Inc.(CBSX) (W)",
  ["X"] = "Exchange: NASDAQ OMX PSX, Inc. (NASDAQ OMX PSX) (X)",
  ["Y"] = "Exchange: Cboe BYX Exchange, Inc (Cboe BYX) (Y)",
  ["Z"] = "Exchange: Cboe BZX Exchange, Inc (Cboe BZX) (Z)",
}

nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.exchange.display = function(value)
  return nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.exchange.labels[value] or "Exchange: Unknown("..value..")"
end

-- Dissect: Exchange
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.exchange.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.current then
    return nil, "the line stops before Exchange"
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.exchange.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.fields.exchange, buffer(offset, length), text, nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.exchange.display(text))
  end
  return index
end

-- Symbol
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.symbol = {}

-- Symbol ends at "|"
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.symbol.delimiter = "|"
-- Symbol is text in Ascii
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.symbol.encoding = ENC_ASCII

-- Display: Symbol
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.symbol.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.current then
    return nil, "the line stops before Symbol"
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.symbol.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.fields.symbol, buffer(offset, length), text, nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.symbol.display(text))
  end
  return index
end

-- Sequence Number
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.sequence_number = {}

-- Sequence Number ends at "|"
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.sequence_number.delimiter = "|"
-- Sequence Number is an unsigned integer

-- Display: Sequence Number
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.sequence_number.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.current then
    return nil, "the line stops before Sequence Number"
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.sequence_number.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.current, offset + 1, offset + length)
  local value, failure = nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.unsigned(text)
  if value == nil then
    return nil, "Sequence Number \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.fields.sequence_number, buffer(offset, length), value, nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.sequence_number.display(tostring(value)))
  end
  return index
end

-- Participant Timestamp
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.participant_timestamp = {}

-- Participant Timestamp ends at "|"
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.participant_timestamp.delimiter = "|"
-- Participant Timestamp is a time of day: Format HHMMSSnnnnnnnnn, 9 digits of a second, Unit Nanoseconds, Epoch Midnight
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.participant_timestamp.fraction = 9
-- Participant Timestamp's midnight is in America/New_York, where the Day preference places it
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.participant_timestamp.zone = nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.zones["America/New_York"]

-- Display: Participant Timestamp
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.participant_timestamp.display = function(value)
  return "Participant Timestamp: "..value
end

-- Dissect: Participant Timestamp
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.participant_timestamp.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.current then
    return nil, "the line stops before Participant Timestamp"
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.participant_timestamp.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.current, offset + 1, offset + length)
  local seconds, nanoseconds, value = nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.time(text, nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.participant_timestamp.fraction)
  if seconds == nil then
    return nil, "Participant Timestamp \"" .. text .. "\" is not a time of day"
  end
  if parent ~= nil then
    local range = buffer(offset, length)
    local item = parent:add(omi_nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.fields.participant_timestamp, range, value, nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.participant_timestamp.display(value))
    -- on the Day preference's day, in UTC
    local utc = nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.placed(nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.participant_timestamp.zone, seconds)
    if utc ~= nil then
      item:add(omi_nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.fields.participant_timestamp_utc, range, NSTime(utc, nanoseconds)):set_generated()
    end
  end
  return index
end

-- Finra Adf Timestamp
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.finra_adf_timestamp = {}

-- Finra Adf Timestamp ends at "|"
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.finra_adf_timestamp.delimiter = "|"
-- Finra Adf Timestamp is a time of day: Format HHMMSSnnnnnnnnn, 9 digits of a second, Unit Nanoseconds, Epoch Midnight
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.finra_adf_timestamp.fraction = 9
-- Finra Adf Timestamp's midnight is in America/New_York, where the Day preference places it
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.finra_adf_timestamp.zone = nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.zones["America/New_York"]

-- Display: Finra Adf Timestamp
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.finra_adf_timestamp.display = function(value)
  return "Finra Adf Timestamp: "..value
end

-- Dissect: Finra Adf Timestamp
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.finra_adf_timestamp.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.current then
    -- the line stops before it: optional, it has no value
    return offset
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.finra_adf_timestamp.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.current, offset + 1, offset + length)
  if text == "" then
    if parent ~= nil then
      parent:add(buffer(offset, length), "Finra Adf Timestamp: From an Exchange or the FINRA ADF or a FINRA TRF Facility does not have a proprietary quote feed")
    end
    return index
  end
  local seconds, nanoseconds, value = nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.time(text, nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.finra_adf_timestamp.fraction)
  if seconds == nil then
    return nil, "Finra Adf Timestamp \"" .. text .. "\" is not a time of day"
  end
  if parent ~= nil then
    local range = buffer(offset, length)
    local item = parent:add(omi_nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.fields.finra_adf_timestamp, range, value, nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.finra_adf_timestamp.display(value))
    -- on the Day preference's day, in UTC
    local utc = nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.placed(nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.finra_adf_timestamp.zone, seconds)
    if utc ~= nil then
      item:add(omi_nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.fields.finra_adf_timestamp_utc, range, NSTime(utc, nanoseconds)):set_generated()
    end
  end
  return index
end

-- Source Of Quote
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.source_of_quote = {}

-- Source Of Quote ends at "|"
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.source_of_quote.delimiter = "|"
-- Source Of Quote is text in Ascii
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.source_of_quote.encoding = ENC_ASCII

-- Display: Source Of Quote
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.source_of_quote.labels = {
  ["C"] = "Source Of Quote: CTA (C)",
  ["N"] = "Source Of Quote: UTP (N)",
}

nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.source_of_quote.display = function(value)
  return nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.source_of_quote.labels[value] or "Source Of Quote: Unknown("..value..")"
end

-- Dissect: Source Of Quote
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.source_of_quote.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.current then
    return nil, "the line stops before Source Of Quote"
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.source_of_quote.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.fields.source_of_quote, buffer(offset, length), text, nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.source_of_quote.display(text))
  end
  return index
end

-- Bolo Indicator
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.bolo_indicator = {}

-- Bolo Indicator ends at "|"
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.bolo_indicator.delimiter = "|"
-- Bolo Indicator is text in Ascii
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.bolo_indicator.encoding = ENC_ASCII

-- Display: Bolo Indicator
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.bolo_indicator.display = function(value)
  return "Bolo Indicator: "..value
end

-- Dissect: Bolo Indicator
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.bolo_indicator.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.current then
    return nil, "the line stops before Bolo Indicator"
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.bolo_indicator.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.fields.bolo_indicator, buffer(offset, length), text, nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.bolo_indicator.display(text))
  end
  return index
end

-- Clear Prior Odd Lot Quotes
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.clear_prior_odd_lot_quotes = {}

-- Clear Prior Odd Lot Quotes ends at "|"
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.clear_prior_odd_lot_quotes.delimiter = "|"
-- Clear Prior Odd Lot Quotes is text in Ascii
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.clear_prior_odd_lot_quotes.encoding = ENC_ASCII

-- Display: Clear Prior Odd Lot Quotes
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.clear_prior_odd_lot_quotes.labels = {
  [" "] = "Clear Prior Odd Lot Quotes: Not Applicable ( )",
  ["B"] = "Clear Prior Odd Lot Quotes: Clear all previous odd lot Bids (B)",
  ["S"] = "Clear Prior Odd Lot Quotes: Clear all previous odd lot Offers (S)",
  ["X"] = "Clear Prior Odd Lot Quotes: Clear all previous odd lot Bids and Offers (X)",
}

nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.clear_prior_odd_lot_quotes.display = function(value)
  return nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.clear_prior_odd_lot_quotes.labels[value] or "Clear Prior Odd Lot Quotes: Unknown("..value..")"
end

-- Dissect: Clear Prior Odd Lot Quotes
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.clear_prior_odd_lot_quotes.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.current then
    -- the line stops before it: optional, it has no value
    return offset
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.clear_prior_odd_lot_quotes.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.current, offset + 1, offset + length)
  if text == "" then
    if parent ~= nil then
      parent:add(buffer(offset, length), "Clear Prior Odd Lot Quotes: No Value")
    end
    return index
  end
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.fields.clear_prior_odd_lot_quotes, buffer(offset, length), text, nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.clear_prior_odd_lot_quotes.display(text))
  end
  return index
end

-- Side
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.side = {}

-- Side ends at "|"
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.side.delimiter = "|"
-- Side is text in Ascii
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.side.encoding = ENC_ASCII

-- Display: Side
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.side.labels = {
  ["B"] = "Side: Bid (B)",
  ["A"] = "Side: Ask (A)",
}

nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.side.display = function(value)
  return nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.side.labels[value] or "Side: Unknown("..value..")"
end

-- Dissect: Side
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.side.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.current then
    return nil, "the line stops before Side"
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.side.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.fields.side, buffer(offset, length), text, nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.side.display(text))
  end
  return index
end

-- Odd Lot Quote Price
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.odd_lot_quote_price = {}

-- Odd Lot Quote Price ends at "|"
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.odd_lot_quote_price.delimiter = "|"
-- Odd Lot Quote Price is a decimal of Scale -6: 6 places
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.odd_lot_quote_price.places = 6

-- Display: Odd Lot Quote Price
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.odd_lot_quote_price.display = function(value)
  return "Odd Lot Quote Price: "..value
end

-- Dissect: Odd Lot Quote Price
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.odd_lot_quote_price.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.current then
    return nil, "the line stops before Odd Lot Quote Price"
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.odd_lot_quote_price.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.current, offset + 1, offset + length)
  local exact, failure = nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.places(text, nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.odd_lot_quote_price.places)
  if exact == nil then
    return nil, "Odd Lot Quote Price \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.fields.odd_lot_quote_price, buffer(offset, length), tonumber(text), nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.odd_lot_quote_price.display(exact))
  end
  return index
end

-- Odd Lot Quote Size
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.odd_lot_quote_size = {}

-- Odd Lot Quote Size ends at "|"
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.odd_lot_quote_size.delimiter = "|"
-- Odd Lot Quote Size is an unsigned integer

-- Display: Odd Lot Quote Size
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.odd_lot_quote_size.display = function(value)
  return "Odd Lot Quote Size: "..value
end

-- Dissect: Odd Lot Quote Size
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.odd_lot_quote_size.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.current then
    return nil, "the line stops before Odd Lot Quote Size"
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.odd_lot_quote_size.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.current, offset + 1, offset + length)
  local value, failure = nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.unsigned(text)
  if value == nil then
    return nil, "Odd Lot Quote Size \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.fields.odd_lot_quote_size, buffer(offset, length), value, nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.odd_lot_quote_size.display(tostring(value)))
  end
  return index
end

-- Odd Lot Finra Market Maker Id
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.odd_lot_finra_market_maker_id = {}

-- Odd Lot Finra Market Maker Id ends at "|"
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.odd_lot_finra_market_maker_id.delimiter = "|"
-- Odd Lot Finra Market Maker Id is text in Ascii
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.odd_lot_finra_market_maker_id.encoding = ENC_ASCII

-- Display: Odd Lot Finra Market Maker Id
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.odd_lot_finra_market_maker_id.display = function(value)
  return "Odd Lot Finra Market Maker Id: "..value
end

-- Dissect: Odd Lot Finra Market Maker Id
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.odd_lot_finra_market_maker_id.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.current then
    return nil, "the line stops before Odd Lot Finra Market Maker Id"
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.odd_lot_finra_market_maker_id.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.fields.odd_lot_finra_market_maker_id, buffer(offset, length), text, nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.odd_lot_finra_market_maker_id.display(text))
  end
  return index
end


-----------------------------------------------------------------------
-- Protocol Records
-----------------------------------------------------------------------

-- Odd Lot Quote
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.odd_lot_quote = {}

-- The delimiter every field of Odd Lot Quote ends at, which its line is split at
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.odd_lot_quote.delimiter = "|"

-- Dissect Fields: Odd Lot Quote
-- Split: every field of Odd Lot Quote ends at "|" and none is quoted, so its line is split once and each field handed its range
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.odd_lot_quote.fields = function(buffer, offset, packet, parent)
  local starts, lengths = nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.split(offset, nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.odd_lot_quote.delimiter)
  if #starts > 13 then
    return nil, "Odd Lot Quote: the line has " .. #starts .. " fields, its layout 13"
  end
  local index = nil
  local failure = nil

  -- Time: field 1
  index, failure = nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.time.dissect(buffer, starts[1], packet, parent, lengths[1])
  if failure ~= nil then
    return nil, failure
  end

  -- Exchange: field 2
  index, failure = nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.exchange.dissect(buffer, starts[2], packet, parent, lengths[2])
  if failure ~= nil then
    return nil, failure
  end

  -- Symbol: field 3
  index, failure = nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.symbol.dissect(buffer, starts[3], packet, parent, lengths[3])
  if failure ~= nil then
    return nil, failure
  end

  -- Sequence Number: field 4
  index, failure = nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.sequence_number.dissect(buffer, starts[4], packet, parent, lengths[4])
  if failure ~= nil then
    return nil, failure
  end

  -- Participant Timestamp: field 5
  index, failure = nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.participant_timestamp.dissect(buffer, starts[5], packet, parent, lengths[5])
  if failure ~= nil then
    return nil, failure
  end

  -- Finra Adf Timestamp: field 6
  index, failure = nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.finra_adf_timestamp.dissect(buffer, starts[6], packet, parent, lengths[6])
  if failure ~= nil then
    return nil, failure
  end

  -- Source Of Quote: field 7
  index, failure = nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.source_of_quote.dissect(buffer, starts[7], packet, parent, lengths[7])
  if failure ~= nil then
    return nil, failure
  end

  -- Bolo Indicator: field 8
  index, failure = nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.bolo_indicator.dissect(buffer, starts[8], packet, parent, lengths[8])
  if failure ~= nil then
    return nil, failure
  end

  -- Clear Prior Odd Lot Quotes: field 9
  index, failure = nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.clear_prior_odd_lot_quotes.dissect(buffer, starts[9], packet, parent, lengths[9])
  if failure ~= nil then
    return nil, failure
  end

  -- Side: field 10
  index, failure = nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.side.dissect(buffer, starts[10], packet, parent, lengths[10])
  if failure ~= nil then
    return nil, failure
  end

  -- Odd Lot Quote Price: field 11
  index, failure = nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.odd_lot_quote_price.dissect(buffer, starts[11], packet, parent, lengths[11])
  if failure ~= nil then
    return nil, failure
  end

  -- Odd Lot Quote Size: field 12
  index, failure = nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.odd_lot_quote_size.dissect(buffer, starts[12], packet, parent, lengths[12])
  if failure ~= nil then
    return nil, failure
  end

  -- Odd Lot Finra Market Maker Id: field 13
  index, failure = nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.odd_lot_finra_market_maker_id.dissect(buffer, starts[13], packet, parent, lengths[13])
  if failure ~= nil then
    return nil, failure
  end

  return #nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.current + 1
end

-- Dissect: Odd Lot Quote
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.odd_lot_quote.dissect = function(buffer, offset, packet, parent)
  local element = parent:add(omi_nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.fields.odd_lot_quote, buffer(), "Odd Lot Quote", "Odd Lot Quote")
  return nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.odd_lot_quote.fields(buffer, offset, packet, element)
end


-----------------------------------------------------------------------
-- Protocol Lines
-----------------------------------------------------------------------

-- The text between a line's fields, its Packet rule's Delimiter: "|"
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.delimiter = "|"

-- The character ending a line, its Packet rule's Terminator: 10
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.terminator = "\010"

-- The layouts a file states in its header, in model order: the header lines each states
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.variants = {
  {
    name = "DailyTaqOddLotQuotes.v4.3",
    headers = { "Time|Exchange|Symbol|Sequence Number|Participant Timestamp|FINRA ADF Timestamp|Source of Quote|BOLO Indicator|Clear Prior Odd Lot Quotes|Side|Odd Lot Quote Price|Odd Lot Quote Size|Odd Lot FINRA Market Maker ID" },
  },
}

-- The layout the file's lines are read by: the one its file handler found, the first where none did
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.variant = function()
  if nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.file == nil or nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.file.variant == nil then
    return 1
  end
  return nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.file.variant
end

-- A header line: its layout, and its columns
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.header = function(buffer, packet, parent, variant)
  packet.cols.info = "Header Row"
  local name = nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.variants[variant].name
  local item = parent:add(omi_nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.fields.header_row, buffer(), name, "Header Row: " .. name)
  local starts, lengths = nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.split(0, nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.delimiter)
  for index = 1, #starts do
    local range = buffer(starts[index], lengths[index])
    item:add(range, "Column " .. index .. ": " .. range:string(ENC_ASCII))
  end
end

-- A line the layout does not read, and why: its fields, as they are
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.outside = function(buffer, packet, parent, reason)
  packet.cols.info = "Line Outside Layout"
  local item = parent:add(omi_nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.fields.line_outside_layout, buffer(), reason, "Line Outside Layout: " .. reason)
  item:add_proto_expert_info(omi_nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.experts.line_outside_layout, reason)
  local starts, lengths = nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.split(0, nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.delimiter)
  for index = 1, #starts do
    local range = buffer(starts[index], lengths[index])
    item:add(range, "Field " .. index .. ": " .. range:string(ENC_ASCII))
  end
end

-- Is a line one of the layout's header lines?
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.headed = function(line, variant)
  for index, header in ipairs(nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.variants[variant].headers) do
    if line == header then
      return true
    end
  end
  return false
end

-- Does a line read as the layout's: a header line, or Odd Lot Quote?
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.reads = function(buffer, packet, line)
  nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.current = line
  local variant = nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.variant()
  if nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.headed(line, variant) then
    return true
  end
  local index, failure = nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.odd_lot_quote.fields(buffer, 0, packet, nil)
  return failure == nil
end

-- Dissect a line: a header line, or Odd Lot Quote, or a line outside the layout
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.line = function(buffer, packet, parent)
  local line = buffer:raw()
  nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.current = line
  local variant = nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.variant()
  if nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.headed(line, variant) then
    return nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.header(buffer, packet, parent, variant)
  end

  -- read first with no tree, so a line the layout does not read is shown whole
  local index, failure = nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.odd_lot_quote.fields(buffer, 0, packet, nil)
  if failure ~= nil then
    return nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.outside(buffer, packet, parent, failure)
  end

  packet.cols.info = "Odd Lot Quote"
  nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.odd_lot_quote.dissect(buffer, 0, packet, parent)
end
-- Dissect Nyse NyseConsolidated DailyTaqOddLotQuotes Csv 4.3
function omi_nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.dissector(buffer, packet, parent)
  packet.cols.protocol = omi_nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.name

  local protocol = parent:add(omi_nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3, buffer(), omi_nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.description, "(" .. buffer:len() .. " Bytes)")
  return nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.line(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- File Lines
-----------------------------------------------------------------------

-- A file's line, the one at an offset or with none the next, to the terminator: its offset, its text,
-- and its frame's time. The file is read a block at a time, the block kept in the capture's private
-- table; a line read again reads a block of its own
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.read = function(file, capture, offset)
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
    local ends = string.find(block.data, nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.terminator, block.at, true)
    if ends ~= nil then
      start = block.offset + block.at - 1
      line = string.sub(block.data, block.at, ends - 1)
      block.at = ends + #nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.terminator
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
  -- the frame's time: Time, its time of day
  local position = 0
  local from = 1
  for skip = 1, position do
    local at = string.find(line, nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.time.delimiter, from, true)
    if at == nil then
      return start, line
    end
    from = at + #nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.time.delimiter
  end
  local at = string.find(line, nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.time.delimiter, from, true)
  local upto = #line
  if at ~= nil then
    upto = at - 1
  end
  local seconds, nanoseconds = nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.time(string.sub(line, from, upto), nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.time.fraction)
  if seconds == nil then
    return start, line
  end
  -- placed on the Day preference's day in America/New_York, in UTC; with no day, on 1970-01-01
  local utc = nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.lines.placed(nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.time.zone, seconds)
  if utc ~= nil then
    return start, line, utc, nanoseconds
  end
  return start, line, seconds, nanoseconds
end

-----------------------------------------------------------------------
-- File Handler
-----------------------------------------------------------------------

-- File handler state
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.file = {}

-- Exported pdu tags each frame starts with: the dissector it is for, then the end of the tags
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.file.prefix = "\000\012\000\056omi.nyse.nyseconsolidated.dailytaqoddlotquotes.csv.v4.3\000\000\000\000\000"

-- The text a file of each layout starts with
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.file.signatures = {
  "Time|Exchange|Symbol|Sequence Number|Participant Timestamp|FINRA ADF Timestamp|Source of Quote|BOLO Indicator|Clear Prior Odd Lot Quotes|Side|Odd Lot Quote Price|Odd Lot Quote Size|Odd Lot FINRA Market Maker ID\010",
}

-- The layout a file's first bytes are the signature of, or nil for a file of no layout
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.file.layout = function(file)
  local first = file:read(211)
  if first == nil then
    return nil
  end
  for index, signature in ipairs(nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.file.signatures) do
    if first:sub(1, #signature) == signature then
      return index
    end
  end
  return nil
end

-- A record read into a frame, the one at an offset or with none the next: its offset, nil at the end of the file
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.file.frame = function(file, capture, frame, offset)
  local at, data, seconds, nanoseconds = nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.read(file, capture, offset)
  if at == nil then
    return nil
  end
  data = nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.file.prefix .. data
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

-- Nyse NyseConsolidated DailyTaqOddLotQuotes Csv 4.3 (Omi) file handler: a magic number reader, its signatures the magic
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.file.handler = FileHandler.new("Nyse NyseConsolidated DailyTaqOddLotQuotes Csv 4.3 (Omi)", "omi_nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3", "Nyse NyseConsolidated DailyTaqOddLotQuotes Csv 4.3 (Omi) file", "rm")

-- A file of a layout is this protocol's; read from its start, so its first line is the first frame
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.file.handler.read_open = function(file, capture)
  local layout = nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.file.layout(file)
  if layout == nil then
    return false
  end
  nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.file.variant = layout
  file:seek("set", 0)
  capture.private_table = {}
  capture.encap = wtap_encaps.WIRESHARK_UPPER_PDU
  capture.time_precision = wtap_tsprecs.NSEC
  return true
end

-- The next record, returning its offset in the file
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.file.handler.read = function(file, capture, frame)
  local offset = nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.file.frame(file, capture, frame, nil)
  if offset == nil then
    return false
  end
  return offset
end

-- The record at an offset read before
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.file.handler.seek_read = function(file, capture, frame, offset)
  return nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.file.frame(file, capture, frame, offset) ~= nil
end

-- Nothing is held open beyond the file Wireshark closes
nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.file.handler.read_close = function(file, capture)
  return true
end

nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.file.handler.seq_read_close = function(file, capture)
  return true
end

-- Register Nyse NyseConsolidated DailyTaqOddLotQuotes Csv 4.3 (Omi) files
register_filehandler(nyse_nyseconsolidated_dailytaqoddlotquotes_csv_v4_3.file.handler)

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
