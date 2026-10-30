-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse NyseConsolidated DailyTaqUtpAdmin Csv 4.3 Protocol
local omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3 = Proto("Omi.Nyse.NyseConsolidated.DailyTaqUtpAdmin.Csv.v4.3", "Nyse NyseConsolidated DailyTaqUtpAdmin Csv 4.3")

-- Protocol table
local nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nyse NyseConsolidated DailyTaqUtpAdmin Csv 4.3 Fields
omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.utp_admin = ProtoField.new("Utp Admin", "nyse.nyseconsolidated.dailytaqutpadmin.csv.v4.3.utpadmin", ftypes.STRING, nil, nil)
omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.timestamp = ProtoField.new("Timestamp", "nyse.nyseconsolidated.dailytaqutpadmin.csv.v4.3.timestamp", ftypes.STRING, nil, nil, nil, "Time of message published by the SIP")
omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.timestamp_utc = ProtoField.new("Timestamp", "nyse.nyseconsolidated.dailytaqutpadmin.csv.v4.3.timestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Timestamp on the day the protocol's Day preference names, in UTC")
omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.symbol = ProtoField.new("Symbol", "nyse.nyseconsolidated.dailytaqutpadmin.csv.v4.3.symbol", ftypes.STRING, nil, nil, nil, "Stock symbol")
omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.message_category = ProtoField.new("Message Category", "nyse.nyseconsolidated.dailytaqutpadmin.csv.v4.3.messagecategory", ftypes.STRING, nil, nil)
omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.message_type = ProtoField.new("Message Type", "nyse.nyseconsolidated.dailytaqutpadmin.csv.v4.3.messagetype", ftypes.STRING, nil, nil, nil, "Valid values for UTP:")
omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "nyse.nyseconsolidated.dailytaqutpadmin.csv.v4.3.messagesequencenumber", ftypes.UINT64, nil, nil, nil, "Message Sequence Number")
omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.market_center_originator_id = ProtoField.new("Market Center Originator Id", "nyse.nyseconsolidated.dailytaqutpadmin.csv.v4.3.marketcenteroriginatorid", ftypes.STRING, nil, nil, nil, "The ID of the UTP participant that originated the message. See Participant IDs for codes")
omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.sub_market_center_originator_id = ProtoField.new("Sub Market Center Originator Id", "nyse.nyseconsolidated.dailytaqutpadmin.csv.v4.3.submarketcenteroriginatorid", ftypes.STRING, nil, nil, nil, "The ID of the originating market center of a FINRA reported trading action. See Participant IDs for codes")
omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.participant_timestamp = ProtoField.new("Participant Timestamp", "nyse.nyseconsolidated.dailytaqutpadmin.csv.v4.3.participanttimestamp", ftypes.STRING, nil, nil, nil, "Participant-provided timestamp (Timestamp 1)")
omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.participant_timestamp_utc = ProtoField.new("Participant Timestamp", "nyse.nyseconsolidated.dailytaqutpadmin.csv.v4.3.participanttimestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Participant Timestamp on the day the protocol's Day preference names, in UTC")
omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.financial_status = ProtoField.new("Financial Status", "nyse.nyseconsolidated.dailytaqutpadmin.csv.v4.3.financialstatus", ftypes.STRING, nil, nil, nil, "Identifies the financial status of this security:")
omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.short_sale_treshold_indicator = ProtoField.new("Short Sale Treshold Indicator", "nyse.nyseconsolidated.dailytaqutpadmin.csv.v4.3.shortsaletresholdindicator", ftypes.STRING, nil, nil, nil, "Short Sales Threshold Indicator:")
omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.short_sale_restriction_indicator = ProtoField.new("Short Sale Restriction Indicator", "nyse.nyseconsolidated.dailytaqutpadmin.csv.v4.3.shortsalerestrictionindicator", ftypes.INT64, nil, nil, nil, "Identifies the Reg SHO short sale price test status for a NASDAQ-listed issue at the time of dissemination:")
omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.trading_action_code = ProtoField.new("Trading Action Code", "nyse.nyseconsolidated.dailytaqutpadmin.csv.v4.3.tradingactioncode", ftypes.STRING, nil, nil, nil, "Trade Action Code")
omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.trading_action_sequence_number = ProtoField.new("Trading Action Sequence Number", "nyse.nyseconsolidated.dailytaqutpadmin.csv.v4.3.tradingactionsequencenumber", ftypes.UINT64, nil, nil, nil, "UTP Trading Action Sequence Number")
omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.trading_action_timestamp = ProtoField.new("Trading Action Timestamp", "nyse.nyseconsolidated.dailytaqutpadmin.csv.v4.3.tradingactiontimestamp", ftypes.STRING, nil, nil, nil, "Timestamp of when the action occurred")
omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.trading_action_timestamp_utc = ProtoField.new("Trading Action Timestamp", "nyse.nyseconsolidated.dailytaqutpadmin.csv.v4.3.tradingactiontimestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Trading Action Timestamp on the day the protocol's Day preference names, in UTC")
omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.trading_action_reason = ProtoField.new("Trading Action Reason", "nyse.nyseconsolidated.dailytaqutpadmin.csv.v4.3.tradingactionreason", ftypes.STRING, nil, nil, nil, "Trading Action Reason Code for UTP:")
omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.luld_lower_limit_price_band = ProtoField.new("Luld Lower Limit Price Band", "nyse.nyseconsolidated.dailytaqutpadmin.csv.v4.3.luldlowerlimitpriceband", ftypes.DOUBLE, nil, nil, nil, "The lower band price for this security. During a trading pause, this field = 0.")
omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.luld_upper_limit_price_band = ProtoField.new("Luld Upper Limit Price Band", "nyse.nyseconsolidated.dailytaqutpadmin.csv.v4.3.luldupperlimitpriceband", ftypes.DOUBLE, nil, nil, nil, "The upper band price for this security. During a trading pause, this field = 0.")
omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.luld_price_band_indicator = ProtoField.new("Luld Price Band Indicator", "nyse.nyseconsolidated.dailytaqutpadmin.csv.v4.3.luldpricebandindicator", ftypes.STRING, nil, nil, nil, "Indicates the event that initiated this price band message:")
omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.market_wide_circuit_breaker_decline_level_1 = ProtoField.new("Market Wide Circuit Breaker Decline Level 1", "nyse.nyseconsolidated.dailytaqutpadmin.csv.v4.3.marketwidecircuitbreakerdeclinelevel1", ftypes.DOUBLE, nil, nil, nil, "Informs participants and the UTP data recipients what the daily MWCB breach points are set to for the current trading day. MWCB Decline Level 1 Breached (7% of the Previous Close of the S&P 500 Value)")
omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.market_wide_circuit_breaker_decline_level_2 = ProtoField.new("Market Wide Circuit Breaker Decline Level 2", "nyse.nyseconsolidated.dailytaqutpadmin.csv.v4.3.marketwidecircuitbreakerdeclinelevel2", ftypes.DOUBLE, nil, nil, nil, "MWCB Decline Level 2 Breached (13% of the Previous Close of the S&P 500 Value)")
omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.market_wide_circuit_breaker_decline_level_3 = ProtoField.new("Market Wide Circuit Breaker Decline Level 3", "nyse.nyseconsolidated.dailytaqutpadmin.csv.v4.3.marketwidecircuitbreakerdeclinelevel3", ftypes.DOUBLE, nil, nil, nil, "MWCB Decline Level 3 Breached (20% of the Previous Close of the S&P 500 Value)")
omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.market_wide_circuit_breaker_status = ProtoField.new("Market Wide Circuit Breaker Status", "nyse.nyseconsolidated.dailytaqutpadmin.csv.v4.3.marketwidecircuitbreakerstatus", ftypes.INT64, nil, nil, nil, "Informs participants and the UTP data recipients when a MWCB has breached one of the established levels. The MWCB Status message will be generated once for each level if the S&P 500 declines past the established breaker decline level for the trading day.")
omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.message_text = ProtoField.new("Message Text", "nyse.nyseconsolidated.dailytaqutpadmin.csv.v4.3.messagetext", ftypes.STRING, nil, nil, nil, "Text of the administrative message")
omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.header_row = ProtoField.new("Header Row", "nyse.nyseconsolidated.dailytaqutpadmin.csv.v4.3.headerrow", ftypes.STRING, nil, nil, nil, "The line naming a file's columns, which states the layout its lines are read in")
omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.line_outside_layout = ProtoField.new("Line Outside Layout", "nyse.nyseconsolidated.dailytaqutpadmin.csv.v4.3.lineoutsidelayout", ftypes.STRING, nil, nil, nil, "A line the layout does not read: no header row, and not the record")

-----------------------------------------------------------------------
-- Declare Dissection Experts
-----------------------------------------------------------------------

-- A line the layout does not read
omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.experts.line_outside_layout = ProtoExpert.new("nyse.nyseconsolidated.dailytaqutpadmin.csv.v4.3.lineoutsidelayout.expert", "Line Outside Layout", expert.group.MALFORMED, expert.severity.WARN)

-----------------------------------------------------------------------
-- Protocol Preferences
-----------------------------------------------------------------------

-- The day the file's times of day are on: each is placed on it in its zone, and a frame is timed by it, in UTC
omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.prefs.day = Pref.string("Day (yyyymmdd)", "", "The day the file's times of day are on, as yyyymmdd: the file states no date. With no day a frame's time is its time of day on 1970-01-01. A frame's time is set when the file is read, so reload the file after changing the day")

-----------------------------------------------------------------------
-- Protocol Primitives
-----------------------------------------------------------------------

-- The readings a field calls with its own traits, and the line being dissected
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines = {}

-- A line split at a delimiter, from an offset: where each field starts, and its length
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.split = function(offset, delimiter)
  local line = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.current
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
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.scan = function(offset, delimiter)
  local line = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.current
  local at = string.find(line, delimiter, offset + 1, true)
  if at == nil then
    return #line - offset, #line + 1
  end
  return at - 1 - offset, at - 1 + #delimiter
end
-- A decimal's text to a count of places, exactly, as the decimal it is (131.05); nil and why where it
-- has more places than zeros, or more digits than 64 bits hold
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.places = function(text, places)
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
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.unsigned = function(text)
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
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.signed = function(text)
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
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.days = function(text)
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
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.time = function(text, fraction)
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
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.reading = function(zone, days)
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
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.utc = function(reading, wall)
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
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.day = { readings = {} }

nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.today = function()
  local text = omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.prefs.day
  nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.day = { text = text, days = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.days(text), readings = {} }
end

omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.prefs_changed = function()
  nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.today()
end

-- The UTC seconds of a time of day on the preference's day, in a zone; nil with no day, or a day
-- outside the years the zone's changes are written for
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.placed = function(zone, seconds)
  if nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.day.text == nil then
    nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.today()
  end
  local day = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.day
  if day.days == nil then
    return nil
  end
  local midnight = day.days * 86400
  if midnight < zone.from or midnight >= zone.to then
    return nil
  end
  local reading = day.readings[zone]
  if reading == nil then
    reading = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.reading(zone, day.days)
    day.readings[zone] = reading
  end
  return nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.utc(reading, midnight + seconds)
end

-----------------------------------------------------------------------
-- Protocol Zones
-----------------------------------------------------------------------

-- The zones times of day are placed in: seconds east of UTC from 1990, then each change (its UTC second, the offset after it), to 2100
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.zones = {}

-- America/New_York
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.zones["America/New_York"] = {
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

-- Timestamp
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.timestamp = {}

-- Timestamp ends at "|"
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.timestamp.delimiter = "|"
-- Timestamp is a time of day: Format HHMMSSnnnnnnnnn, 9 digits of a second, Unit Nanoseconds, Epoch Midnight
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.timestamp.fraction = 9
-- Timestamp's midnight is in America/New_York, where the Day preference places it
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.timestamp.zone = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.zones["America/New_York"]

-- Display: Timestamp
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.timestamp.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.current then
    return nil, "the line stops before Timestamp"
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.timestamp.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.current, offset + 1, offset + length)
  local seconds, nanoseconds, value = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.time(text, nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.timestamp.fraction)
  if seconds == nil then
    return nil, "Timestamp \"" .. text .. "\" is not a time of day"
  end
  if parent ~= nil then
    local range = buffer(offset, length)
    local item = parent:add(omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.timestamp, range, value, nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.timestamp.display(value))
    -- on the Day preference's day, in UTC
    local utc = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.placed(nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.timestamp.zone, seconds)
    if utc ~= nil then
      item:add(omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.timestamp_utc, range, NSTime(utc, nanoseconds)):set_generated()
    end
  end
  return index
end

-- Symbol
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.symbol = {}

-- Symbol ends at "|"
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.symbol.delimiter = "|"
-- Symbol is text in Ascii
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.symbol.encoding = ENC_ASCII

-- Display: Symbol
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.symbol.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.current then
    -- the line stops before it: optional, it has no value
    return offset
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.symbol.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.current, offset + 1, offset + length)
  if text == "" then
    if parent ~= nil then
      parent:add(buffer(offset, length), "Symbol: No Value")
    end
    return index
  end
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.symbol, buffer(offset, length), text, nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.symbol.display(text))
  end
  return index
end

-- Message Category
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.message_category = {}

-- Message Category ends at "|"
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.message_category.delimiter = "|"
-- Message Category is text in Ascii
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.message_category.encoding = ENC_ASCII

-- Display: Message Category
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.message_category.labels = {
  ["A"] = "Message Category: Administrative (A)",
}

nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.message_category.display = function(value)
  return nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.message_category.labels[value] or "Message Category: Unknown("..value..")"
end

-- Dissect: Message Category
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.message_category.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.current then
    return nil, "the line stops before Message Category"
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.message_category.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.message_category, buffer(offset, length), text, nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.message_category.display(text))
  end
  return index
end

-- Message Type
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.message_type = {}

-- Message Type ends at "|"
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.message_type.delimiter = "|"
-- Message Type is text in Ascii
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.message_type.encoding = ENC_ASCII

-- Display: Message Type
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.message_type.labels = {
  ["A"] = "Message Type: General Administrative (A)",
  ["B"] = "Message Type: Issue Symbol Directory (B)",
  ["C"] = "Message Type: Market Wide Circuit Breaker Decline (C)",
  ["D"] = "Message Type: Market Wide Circuit Breaker Status (D)",
  ["H"] = "Message Type: CROSS SRO Trading Action (H)",
  ["K"] = "Message Type: Market Center Trading Action (K)",
  ["P"] = "Message Type: Limit Up –Limit Down Price Band (P)",
  ["V"] = "Message Type: Reg SHO Short Sale Restriction Indicator (V)",
}

nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.message_type.display = function(value)
  return nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.message_type.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.current then
    return nil, "the line stops before Message Type"
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.message_type.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.message_type, buffer(offset, length), text, nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.message_type.display(text))
  end
  return index
end

-- Message Sequence Number
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.message_sequence_number = {}

-- Message Sequence Number ends at "|"
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.message_sequence_number.delimiter = "|"
-- Message Sequence Number is an unsigned integer

-- Display: Message Sequence Number
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.message_sequence_number.display = function(value)
  return "Message Sequence Number: "..value
end

-- Dissect: Message Sequence Number
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.message_sequence_number.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.current then
    return nil, "the line stops before Message Sequence Number"
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.message_sequence_number.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.current, offset + 1, offset + length)
  local value, failure = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.unsigned(text)
  if value == nil then
    return nil, "Message Sequence Number \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.message_sequence_number, buffer(offset, length), value, nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.message_sequence_number.display(tostring(value)))
  end
  return index
end

-- Market Center Originator Id
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.market_center_originator_id = {}

-- Market Center Originator Id ends at "|"
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.market_center_originator_id.delimiter = "|"
-- Market Center Originator Id is text in Ascii
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.market_center_originator_id.encoding = ENC_ASCII

-- Display: Market Center Originator Id
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.market_center_originator_id.labels = {
  ["A"] = "Market Center Originator Id: NYSE American, LLC (NYSE American) (A)",
  ["B"] = "Market Center Originator Id: NASDAQ OMX BX, Inc. (NASDAQ OMX BX) (B)",
  ["C"] = "Market Center Originator Id: NYSE National, Inc (NYSE National) (C)",
  ["D"] = "Market Center Originator Id: FINRA Alternative Display Facility (ADF) (D)",
  ["F"] = "Market Center Originator Id: TXSE Exchange (TXSE) (F)",
  ["G"] = "Market Center Originator Id: 24X Exchange (24X) (G)",
  ["H"] = "Market Center Originator Id: MIAX Pearl, LLC (MIAX) (H)",
  ["I"] = "Market Center Originator Id: International Securities Exchange, LLC (ISE) (I)",
  ["J"] = "Market Center Originator Id: Cboe EDGA Exchange (Cboe EDGA) (J)",
  ["K"] = "Market Center Originator Id: Cboe EDGX Exchange (Cboe EDGX) (K)",
  ["L"] = "Market Center Originator Id: Long-Term Stock Exchange, Inc. (LTSE) (L)",
  ["M"] = "Market Center Originator Id: NYSE Texas (NYSE Texas) (M)",
  ["N"] = "Market Center Originator Id: New York Stock Exchange, LLC (NYSE) (N)",
  ["P"] = "Market Center Originator Id: NYSE Arca, Inc. (NYSE Arca) (P)",
  ["S"] = "Market Center Originator Id: Consolidated Tape System (CTS) (S)",
  ["T"] = "Market Center Originator Id: NASDAQ Stock Market, LLC (in Tape A, B securities) (NASDAQ) (T)",
  ["Q"] = "Market Center Originator Id: NASDAQ Stock Exchange, LLC (in Tape C securities) (Q)",
  ["U"] = "Market Center Originator Id: Members Exchange (MEMX) (U)",
  ["V"] = "Market Center Originator Id: The Investors’ Exchange, LLC (IEX) (V)",
  ["W"] = "Market Center Originator Id: Chicago Broad Options Exchange, Inc.(CBSX) (W)",
  ["X"] = "Market Center Originator Id: NASDAQ OMX PSX, Inc. (NASDAQ OMX PSX) (X)",
  ["Y"] = "Market Center Originator Id: Cboe BYX Exchange, Inc (Cboe BYX) (Y)",
  ["Z"] = "Market Center Originator Id: Cboe BZX Exchange, Inc (Cboe BZX) (Z)",
  ["E"] = "Market Center Originator Id: Undocumented E (E)",
}

nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.market_center_originator_id.display = function(value)
  return nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.market_center_originator_id.labels[value] or "Market Center Originator Id: Unknown("..value..")"
end

-- Dissect: Market Center Originator Id
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.market_center_originator_id.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.current then
    return nil, "the line stops before Market Center Originator Id"
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.market_center_originator_id.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.market_center_originator_id, buffer(offset, length), text, nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.market_center_originator_id.display(text))
  end
  return index
end

-- Sub Market Center Originator Id
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.sub_market_center_originator_id = {}

-- Sub Market Center Originator Id ends at "|"
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.sub_market_center_originator_id.delimiter = "|"
-- Sub Market Center Originator Id is text in Ascii
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.sub_market_center_originator_id.encoding = ENC_ASCII

-- Display: Sub Market Center Originator Id
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.sub_market_center_originator_id.labels = {
  ["A"] = "Sub Market Center Originator Id: NYSE American, LLC (NYSE American) (A)",
  ["B"] = "Sub Market Center Originator Id: NASDAQ OMX BX, Inc. (NASDAQ OMX BX) (B)",
  ["C"] = "Sub Market Center Originator Id: NYSE National, Inc (NYSE National) (C)",
  ["D"] = "Sub Market Center Originator Id: FINRA Alternative Display Facility (ADF) (D)",
  ["F"] = "Sub Market Center Originator Id: TXSE Exchange (TXSE) (F)",
  ["G"] = "Sub Market Center Originator Id: 24X Exchange (24X) (G)",
  ["H"] = "Sub Market Center Originator Id: MIAX Pearl, LLC (MIAX) (H)",
  ["I"] = "Sub Market Center Originator Id: International Securities Exchange, LLC (ISE) (I)",
  ["J"] = "Sub Market Center Originator Id: Cboe EDGA Exchange (Cboe EDGA) (J)",
  ["K"] = "Sub Market Center Originator Id: Cboe EDGX Exchange (Cboe EDGX) (K)",
  ["L"] = "Sub Market Center Originator Id: Long-Term Stock Exchange, Inc. (LTSE) (L)",
  ["M"] = "Sub Market Center Originator Id: NYSE Texas (NYSE Texas) (M)",
  ["N"] = "Sub Market Center Originator Id: New York Stock Exchange, LLC (NYSE) (N)",
  ["P"] = "Sub Market Center Originator Id: NYSE Arca, Inc. (NYSE Arca) (P)",
  ["S"] = "Sub Market Center Originator Id: Consolidated Tape System (CTS) (S)",
  ["T"] = "Sub Market Center Originator Id: NASDAQ Stock Market, LLC (in Tape A, B securities) (NASDAQ) (T)",
  ["Q"] = "Sub Market Center Originator Id: NASDAQ Stock Exchange, LLC (in Tape C securities) (Q)",
  ["U"] = "Sub Market Center Originator Id: Members Exchange (MEMX) (U)",
  ["V"] = "Sub Market Center Originator Id: The Investors’ Exchange, LLC (IEX) (V)",
  ["W"] = "Sub Market Center Originator Id: Chicago Broad Options Exchange, Inc.(CBSX) (W)",
  ["X"] = "Sub Market Center Originator Id: NASDAQ OMX PSX, Inc. (NASDAQ OMX PSX) (X)",
  ["Y"] = "Sub Market Center Originator Id: Cboe BYX Exchange, Inc (Cboe BYX) (Y)",
  ["Z"] = "Sub Market Center Originator Id: Cboe BZX Exchange, Inc (Cboe BZX) (Z)",
}

nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.sub_market_center_originator_id.display = function(value)
  return nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.sub_market_center_originator_id.labels[value] or "Sub Market Center Originator Id: Unknown("..value..")"
end

-- Dissect: Sub Market Center Originator Id
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.sub_market_center_originator_id.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.current then
    -- the line stops before it: optional, it has no value
    return offset
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.sub_market_center_originator_id.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.current, offset + 1, offset + length)
  if text == "" then
    if parent ~= nil then
      parent:add(buffer(offset, length), "Sub Market Center Originator Id: No sub-market; Message originates from FINRA Alternative Display Facility.")
    end
    return index
  end
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.sub_market_center_originator_id, buffer(offset, length), text, nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.sub_market_center_originator_id.display(text))
  end
  return index
end

-- Participant Timestamp
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.participant_timestamp = {}

-- Participant Timestamp ends at "|"
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.participant_timestamp.delimiter = "|"
-- Participant Timestamp is a time of day: Format HHMMSSnnnnnnnnn, 9 digits of a second, Unit Nanoseconds, Epoch Midnight
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.participant_timestamp.fraction = 9
-- Participant Timestamp's midnight is in America/New_York, where the Day preference places it
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.participant_timestamp.zone = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.zones["America/New_York"]

-- Display: Participant Timestamp
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.participant_timestamp.display = function(value)
  return "Participant Timestamp: "..value
end

-- Dissect: Participant Timestamp
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.participant_timestamp.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.current then
    -- the line stops before it: optional, it has no value
    return offset
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.participant_timestamp.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.current, offset + 1, offset + length)
  if text == "" then
    if parent ~= nil then
      parent:add(buffer(offset, length), "Participant Timestamp: No Value")
    end
    return index
  end
  local seconds, nanoseconds, value = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.time(text, nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.participant_timestamp.fraction)
  if seconds == nil then
    return nil, "Participant Timestamp \"" .. text .. "\" is not a time of day"
  end
  if parent ~= nil then
    local range = buffer(offset, length)
    local item = parent:add(omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.participant_timestamp, range, value, nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.participant_timestamp.display(value))
    -- on the Day preference's day, in UTC
    local utc = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.placed(nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.participant_timestamp.zone, seconds)
    if utc ~= nil then
      item:add(omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.participant_timestamp_utc, range, NSTime(utc, nanoseconds)):set_generated()
    end
  end
  return index
end

-- Financial Status
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.financial_status = {}

-- Financial Status ends at "|"
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.financial_status.delimiter = "|"
-- Financial Status is text in Ascii
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.financial_status.encoding = ENC_ASCII

-- Display: Financial Status
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.financial_status.labels = {
  ["C"] = "Financial Status: Creations and/or Redemptions Suspended for Exchange Traded Product (C)",
  ["D"] = "Financial Status: Deficient: Issuer Failed to Meet NASDAQ Continued Listing Requirements (D)",
  ["E"] = "Financial Status: Delinquent: Issuer Missed Regulatory Filing Deadline (E)",
  ["Q"] = "Financial Status: Bankrupt: Issuer Has Filed for Bankruptcy (Q)",
  ["N"] = "Financial Status: Normal (Default): Issuer Is NOT Deficient, Delinquent, or Bankrupt (N)",
  ["G"] = "Financial Status: Deficient and Bankrupt (G)",
  ["H"] = "Financial Status: Deficient and Delinquent (H)",
  ["J"] = "Financial Status: Delinquent and Bankrupt (J)",
  ["K"] = "Financial Status: Deficient, Delinquent, and Bankrupt (K)",
}

nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.financial_status.display = function(value)
  return nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.financial_status.labels[value] or "Financial Status: Unknown("..value..")"
end

-- Dissect: Financial Status
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.financial_status.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.current then
    -- the line stops before it: optional, it has no value
    return offset
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.financial_status.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.current, offset + 1, offset + length)
  if text == "" then
    if parent ~= nil then
      parent:add(buffer(offset, length), "Financial Status: no value provided")
    end
    return index
  end
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.financial_status, buffer(offset, length), text, nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.financial_status.display(text))
  end
  return index
end

-- Short Sale Treshold Indicator
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.short_sale_treshold_indicator = {}

-- Short Sale Treshold Indicator ends at "|"
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.short_sale_treshold_indicator.delimiter = "|"
-- Short Sale Treshold Indicator is text in Ascii
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.short_sale_treshold_indicator.encoding = ENC_ASCII

-- Display: Short Sale Treshold Indicator
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.short_sale_treshold_indicator.labels = {
  ["Y"] = "Short Sale Treshold Indicator: Issue is restricted (Y)",
  ["N"] = "Short Sale Treshold Indicator: Issue is not restricted (N)",
}

nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.short_sale_treshold_indicator.display = function(value)
  return nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.short_sale_treshold_indicator.labels[value] or "Short Sale Treshold Indicator: Unknown("..value..")"
end

-- Dissect: Short Sale Treshold Indicator
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.short_sale_treshold_indicator.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.current then
    -- the line stops before it: optional, it has no value
    return offset
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.short_sale_treshold_indicator.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.current, offset + 1, offset + length)
  if text == "" then
    if parent ~= nil then
      parent:add(buffer(offset, length), "Short Sale Treshold Indicator: Threshold Indicator Not Available")
    end
    return index
  end
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.short_sale_treshold_indicator, buffer(offset, length), text, nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.short_sale_treshold_indicator.display(text))
  end
  return index
end

-- Short Sale Restriction Indicator
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.short_sale_restriction_indicator = {}

-- Short Sale Restriction Indicator ends at "|"
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.short_sale_restriction_indicator.delimiter = "|"
-- Short Sale Restriction Indicator is a signed integer

-- Display: Short Sale Restriction Indicator
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.short_sale_restriction_indicator.labels = {
  ["0"] = "Short Sale Restriction Indicator: No Price test in effect (0)",
  ["1"] = "Short Sale Restriction Indicator: Reg SHO in effect due to an intraday price drop in security (1)",
  ["2"] = "Short Sale Restriction Indicator: Reg SHO Restriction remains in effect (2)",
}

nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.short_sale_restriction_indicator.display = function(value)
  return nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.short_sale_restriction_indicator.labels[value] or "Short Sale Restriction Indicator: Unknown("..value..")"
end

-- Dissect: Short Sale Restriction Indicator
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.short_sale_restriction_indicator.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.current then
    -- the line stops before it: optional, it has no value
    return offset
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.short_sale_restriction_indicator.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.current, offset + 1, offset + length)
  if text == "" then
    if parent ~= nil then
      parent:add(buffer(offset, length), "Short Sale Restriction Indicator: No Value")
    end
    return index
  end
  local value, failure = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.signed(text)
  if value == nil then
    return nil, "Short Sale Restriction Indicator \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.short_sale_restriction_indicator, buffer(offset, length), value, nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.short_sale_restriction_indicator.display(text))
  end
  return index
end

-- Trading Action Code
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.trading_action_code = {}

-- Trading Action Code ends at "|"
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.trading_action_code.delimiter = "|"
-- Trading Action Code is text in Ascii
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.trading_action_code.encoding = ENC_ASCII

-- Display: Trading Action Code
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.trading_action_code.labels = {
  ["H"] = "Trading Action Code: Trading Halt (H)",
  ["Q"] = "Trading Action Code: Quotation Resumption (Q)",
  ["T"] = "Trading Action Code: Trading Resumption (T)",
  ["P"] = "Trading Action Code: Volatility Trading Pause (P)",
  ["Z"] = "Trading Action Code: Regular Trading In Effect (Z)",
}

nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.trading_action_code.display = function(value)
  return nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.trading_action_code.labels[value] or "Trading Action Code: Unknown("..value..")"
end

-- Dissect: Trading Action Code
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.trading_action_code.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.current then
    -- the line stops before it: optional, it has no value
    return offset
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.trading_action_code.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.current, offset + 1, offset + length)
  if text == "" then
    if parent ~= nil then
      parent:add(buffer(offset, length), "Trading Action Code: no value provided")
    end
    return index
  end
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.trading_action_code, buffer(offset, length), text, nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.trading_action_code.display(text))
  end
  return index
end

-- Trading Action Sequence Number
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.trading_action_sequence_number = {}

-- Trading Action Sequence Number ends at "|"
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.trading_action_sequence_number.delimiter = "|"
-- Trading Action Sequence Number is an unsigned integer

-- Display: Trading Action Sequence Number
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.trading_action_sequence_number.display = function(value)
  return "Trading Action Sequence Number: "..value
end

-- Dissect: Trading Action Sequence Number
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.trading_action_sequence_number.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.current then
    -- the line stops before it: optional, it has no value
    return offset
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.trading_action_sequence_number.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.current, offset + 1, offset + length)
  if text == "" then
    if parent ~= nil then
      parent:add(buffer(offset, length), "Trading Action Sequence Number: No Value")
    end
    return index
  end
  local value, failure = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.unsigned(text)
  if value == nil then
    return nil, "Trading Action Sequence Number \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.trading_action_sequence_number, buffer(offset, length), value, nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.trading_action_sequence_number.display(tostring(value)))
  end
  return index
end

-- Trading Action Timestamp
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.trading_action_timestamp = {}

-- Trading Action Timestamp ends at "|"
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.trading_action_timestamp.delimiter = "|"
-- Trading Action Timestamp is a time of day: Format HHMMSSnnnnnnnnn, 9 digits of a second, Unit Nanoseconds, Epoch Midnight
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.trading_action_timestamp.fraction = 9
-- Trading Action Timestamp's midnight is in America/New_York, where the Day preference places it
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.trading_action_timestamp.zone = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.zones["America/New_York"]

-- Display: Trading Action Timestamp
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.trading_action_timestamp.display = function(value)
  return "Trading Action Timestamp: "..value
end

-- Dissect: Trading Action Timestamp
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.trading_action_timestamp.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.current then
    -- the line stops before it: optional, it has no value
    return offset
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.trading_action_timestamp.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.current, offset + 1, offset + length)
  if text == "" then
    if parent ~= nil then
      parent:add(buffer(offset, length), "Trading Action Timestamp: No Value")
    end
    return index
  end
  local seconds, nanoseconds, value = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.time(text, nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.trading_action_timestamp.fraction)
  if seconds == nil then
    return nil, "Trading Action Timestamp \"" .. text .. "\" is not a time of day"
  end
  if parent ~= nil then
    local range = buffer(offset, length)
    local item = parent:add(omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.trading_action_timestamp, range, value, nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.trading_action_timestamp.display(value))
    -- on the Day preference's day, in UTC
    local utc = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.placed(nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.trading_action_timestamp.zone, seconds)
    if utc ~= nil then
      item:add(omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.trading_action_timestamp_utc, range, NSTime(utc, nanoseconds)):set_generated()
    end
  end
  return index
end

-- Trading Action Reason
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.trading_action_reason = {}

-- Trading Action Reason ends at "|"
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.trading_action_reason.delimiter = "|"
-- Trading Action Reason is text in Ascii
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.trading_action_reason.encoding = ENC_ASCII

-- Display: Trading Action Reason
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.trading_action_reason.labels = {
  ["A"] = "Trading Action Reason: Halt News Pending (A)",
  ["B"] = "Trading Action Reason: Halt News Dissemination (B)",
  ["C"] = "Trading Action Reason: Single Stock Trading Pause In Affect (C)",
  ["D"] = "Trading Action Reason: Regulatory Halt Extraordinary Market Activity (D)",
  ["E"] = "Trading Action Reason: Halt ETF (E)",
  ["F"] = "Trading Action Reason: Trading Halted; For information requested by NASDAQ (F)",
  ["G"] = "Trading Action Reason: Halt Not Compliance (G)",
  ["H"] = "Trading Action Reason: Halt Filings Not Current (H)",
  ["I"] = "Trading Action Reason: Halt Trading Suspension (I)",
  ["J"] = "Trading Action Reason: Halt Regulatory Concern (J)",
  ["K"] = "Trading Action Reason: Operations Halt, Contact Market Operations (K)",
  ["L"] = "Trading Action Reason: IPO Issue not yet Trading (L)",
  ["M"] = "Trading Action Reason: Corporate Action (M)",
  ["N"] = "Trading Action Reason: Quotation Not Available (N)",
  ["O"] = "Trading Action Reason: Volatility Trading Pause (O)",
  ["P"] = "Trading Action Reason: Volatility Trading Pause – Straddle Condition (P)",
  ["Q"] = "Trading Action Reason: News and Resumption Times (Q)",
  ["R"] = "Trading Action Reason: Single Stock Trading Pause/Quotation-Only Period (R)",
  ["S"] = "Trading Action Reason: Qualifications Issues Reviewed/Resolved; Quotations/Trading to Resume (S)",
  ["T"] = "Trading Action Reason: Filing Requirements Satisfied/Resolved; Quotations/Trading To Resume (T)",
  ["U"] = "Trading Action Reason: Issuer News Not Forthcoming; Quotations/Trading To Resume (U)",
  ["V"] = "Trading Action Reason: Qualifications Halt ended; maint. Req. met; Resume (V)",
  ["W"] = "Trading Action Reason: Qualifications Halt Concluded; Filings Met; Quotes/Trades To Resume (W)",
  ["X"] = "Trading Action Reason: Trade Halt Concluded By Other Regulatory Auth,; Quotes/Trades Resume (X)",
  ["Y"] = "Trading Action Reason: New Issue Available (Y)",
  ["Z"] = "Trading Action Reason: Issue Available (Z)",
  ["A1"] = "Trading Action Reason: Market Wide Circuit Breaker Halt – Carry over from previous day (A1)",
  ["A2"] = "Trading Action Reason: Market Wide Circuit Breaker Resumption (A2)",
  ["A3"] = "Trading Action Reason: IPO security released for quotation (A3)",
  ["A4"] = "Trading Action Reason: IPO security – positioning window extension (A4)",
  ["1"] = "Trading Action Reason: Market Wide Circuit Breaker Halt – Level 1 (1)",
  ["2"] = "Trading Action Reason: Market Wide Circuit Breaker Halt – Level 2 (2)",
  ["3"] = "Trading Action Reason: Market Wide Circuit Breaker Halt – Level 3 (3)",
  ["LUDP"] = "Trading Action Reason: Undocumented LUDP (LUDP)",
  ["T1"] = "Trading Action Reason: Undocumented T1 (T1)",
  ["T3"] = "Trading Action Reason: Undocumented T3 (T3)",
  ["IPOQ"] = "Trading Action Reason: Undocumented IPOQ (IPOQ)",
  ["IPO1"] = "Trading Action Reason: Undocumented IPO1 (IPO1)",
  ["T12"] = "Trading Action Reason: Undocumented T12 (T12)",
  ["T2"] = "Trading Action Reason: Undocumented T2 (T2)",
}

nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.trading_action_reason.display = function(value)
  return nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.trading_action_reason.labels[value] or "Trading Action Reason: Unknown("..value..")"
end

-- Dissect: Trading Action Reason
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.trading_action_reason.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.current then
    -- the line stops before it: optional, it has no value
    return offset
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.trading_action_reason.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.current, offset + 1, offset + length)
  if text == "" then
    if parent ~= nil then
      parent:add(buffer(offset, length), "Trading Action Reason: Reason not provided")
    end
    return index
  end
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.trading_action_reason, buffer(offset, length), text, nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.trading_action_reason.display(text))
  end
  return index
end

-- Luld Lower Limit Price Band
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.luld_lower_limit_price_band = {}

-- Luld Lower Limit Price Band ends at "|"
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.luld_lower_limit_price_band.delimiter = "|"
-- Luld Lower Limit Price Band is a decimal of Scale -6: 6 places
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.luld_lower_limit_price_band.places = 6

-- Display: Luld Lower Limit Price Band
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.luld_lower_limit_price_band.display = function(value)
  return "Luld Lower Limit Price Band: "..value
end

-- Dissect: Luld Lower Limit Price Band
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.luld_lower_limit_price_band.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.current then
    -- the line stops before it: optional, it has no value
    return offset
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.luld_lower_limit_price_band.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.current, offset + 1, offset + length)
  if text == "" then
    if parent ~= nil then
      parent:add(buffer(offset, length), "Luld Lower Limit Price Band: No Value")
    end
    return index
  end
  local exact, failure = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.places(text, nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.luld_lower_limit_price_band.places)
  if exact == nil then
    return nil, "Luld Lower Limit Price Band \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.luld_lower_limit_price_band, buffer(offset, length), tonumber(text), nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.luld_lower_limit_price_band.display(exact))
  end
  return index
end

-- Luld Upper Limit Price Band
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.luld_upper_limit_price_band = {}

-- Luld Upper Limit Price Band ends at "|"
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.luld_upper_limit_price_band.delimiter = "|"
-- Luld Upper Limit Price Band is a decimal of Scale -6: 6 places
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.luld_upper_limit_price_band.places = 6

-- Display: Luld Upper Limit Price Band
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.luld_upper_limit_price_band.display = function(value)
  return "Luld Upper Limit Price Band: "..value
end

-- Dissect: Luld Upper Limit Price Band
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.luld_upper_limit_price_band.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.current then
    -- the line stops before it: optional, it has no value
    return offset
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.luld_upper_limit_price_band.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.current, offset + 1, offset + length)
  if text == "" then
    if parent ~= nil then
      parent:add(buffer(offset, length), "Luld Upper Limit Price Band: No Value")
    end
    return index
  end
  local exact, failure = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.places(text, nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.luld_upper_limit_price_band.places)
  if exact == nil then
    return nil, "Luld Upper Limit Price Band \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.luld_upper_limit_price_band, buffer(offset, length), tonumber(text), nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.luld_upper_limit_price_band.display(exact))
  end
  return index
end

-- Luld Price Band Indicator
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.luld_price_band_indicator = {}

-- Luld Price Band Indicator ends at "|"
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.luld_price_band_indicator.delimiter = "|"
-- Luld Price Band Indicator is text in Ascii
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.luld_price_band_indicator.encoding = ENC_ASCII

-- Display: Luld Price Band Indicator
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.luld_price_band_indicator.labels = {
  ["A"] = "Luld Price Band Indicator: Opening Update (A)",
  ["B"] = "Luld Price Band Indicator: Intra-Day Update (B)",
  ["C"] = "Luld Price Band Indicator: Restated Value (C)",
  ["D"] = "Luld Price Band Indicator: Suspended during trading halt or trading pause (D)",
  ["E"] = "Luld Price Band Indicator: Re-Opening Update (E)",
  ["F"] = "Luld Price Band Indicator: Outside price band rule hours (F)",
}

nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.luld_price_band_indicator.display = function(value)
  return nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.luld_price_band_indicator.labels[value] or "Luld Price Band Indicator: Unknown("..value..")"
end

-- Dissect: Luld Price Band Indicator
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.luld_price_band_indicator.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.current then
    -- the line stops before it: optional, it has no value
    return offset
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.luld_price_band_indicator.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.current, offset + 1, offset + length)
  if text == "" then
    if parent ~= nil then
      parent:add(buffer(offset, length), "Luld Price Band Indicator: None provided")
    end
    return index
  end
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.luld_price_band_indicator, buffer(offset, length), text, nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.luld_price_band_indicator.display(text))
  end
  return index
end

-- Market Wide Circuit Breaker Decline Level 1
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.market_wide_circuit_breaker_decline_level_1 = {}

-- Market Wide Circuit Breaker Decline Level 1 ends at "|"
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.market_wide_circuit_breaker_decline_level_1.delimiter = "|"
-- Market Wide Circuit Breaker Decline Level 1 is a decimal of Scale -2: 2 places
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.market_wide_circuit_breaker_decline_level_1.places = 2

-- Display: Market Wide Circuit Breaker Decline Level 1
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.market_wide_circuit_breaker_decline_level_1.display = function(value)
  return "Market Wide Circuit Breaker Decline Level 1: "..value
end

-- Dissect: Market Wide Circuit Breaker Decline Level 1
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.market_wide_circuit_breaker_decline_level_1.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.current then
    -- the line stops before it: optional, it has no value
    return offset
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.market_wide_circuit_breaker_decline_level_1.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.current, offset + 1, offset + length)
  if text == "" then
    if parent ~= nil then
      parent:add(buffer(offset, length), "Market Wide Circuit Breaker Decline Level 1: No Value")
    end
    return index
  end
  local exact, failure = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.places(text, nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.market_wide_circuit_breaker_decline_level_1.places)
  if exact == nil then
    return nil, "Market Wide Circuit Breaker Decline Level 1 \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.market_wide_circuit_breaker_decline_level_1, buffer(offset, length), tonumber(text), nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.market_wide_circuit_breaker_decline_level_1.display(exact))
  end
  return index
end

-- Market Wide Circuit Breaker Decline Level 2
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.market_wide_circuit_breaker_decline_level_2 = {}

-- Market Wide Circuit Breaker Decline Level 2 ends at "|"
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.market_wide_circuit_breaker_decline_level_2.delimiter = "|"
-- Market Wide Circuit Breaker Decline Level 2 is a decimal of Scale -2: 2 places
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.market_wide_circuit_breaker_decline_level_2.places = 2

-- Display: Market Wide Circuit Breaker Decline Level 2
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.market_wide_circuit_breaker_decline_level_2.display = function(value)
  return "Market Wide Circuit Breaker Decline Level 2: "..value
end

-- Dissect: Market Wide Circuit Breaker Decline Level 2
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.market_wide_circuit_breaker_decline_level_2.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.current then
    -- the line stops before it: optional, it has no value
    return offset
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.market_wide_circuit_breaker_decline_level_2.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.current, offset + 1, offset + length)
  if text == "" then
    if parent ~= nil then
      parent:add(buffer(offset, length), "Market Wide Circuit Breaker Decline Level 2: No Value")
    end
    return index
  end
  local exact, failure = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.places(text, nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.market_wide_circuit_breaker_decline_level_2.places)
  if exact == nil then
    return nil, "Market Wide Circuit Breaker Decline Level 2 \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.market_wide_circuit_breaker_decline_level_2, buffer(offset, length), tonumber(text), nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.market_wide_circuit_breaker_decline_level_2.display(exact))
  end
  return index
end

-- Market Wide Circuit Breaker Decline Level 3
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.market_wide_circuit_breaker_decline_level_3 = {}

-- Market Wide Circuit Breaker Decline Level 3 ends at "|"
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.market_wide_circuit_breaker_decline_level_3.delimiter = "|"
-- Market Wide Circuit Breaker Decline Level 3 is a decimal of Scale -2: 2 places
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.market_wide_circuit_breaker_decline_level_3.places = 2

-- Display: Market Wide Circuit Breaker Decline Level 3
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.market_wide_circuit_breaker_decline_level_3.display = function(value)
  return "Market Wide Circuit Breaker Decline Level 3: "..value
end

-- Dissect: Market Wide Circuit Breaker Decline Level 3
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.market_wide_circuit_breaker_decline_level_3.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.current then
    -- the line stops before it: optional, it has no value
    return offset
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.market_wide_circuit_breaker_decline_level_3.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.current, offset + 1, offset + length)
  if text == "" then
    if parent ~= nil then
      parent:add(buffer(offset, length), "Market Wide Circuit Breaker Decline Level 3: No Value")
    end
    return index
  end
  local exact, failure = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.places(text, nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.market_wide_circuit_breaker_decline_level_3.places)
  if exact == nil then
    return nil, "Market Wide Circuit Breaker Decline Level 3 \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.market_wide_circuit_breaker_decline_level_3, buffer(offset, length), tonumber(text), nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.market_wide_circuit_breaker_decline_level_3.display(exact))
  end
  return index
end

-- Market Wide Circuit Breaker Status
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.market_wide_circuit_breaker_status = {}

-- Market Wide Circuit Breaker Status ends at "|"
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.market_wide_circuit_breaker_status.delimiter = "|"
-- Market Wide Circuit Breaker Status is a signed integer

-- Display: Market Wide Circuit Breaker Status
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.market_wide_circuit_breaker_status.labels = {
  ["1"] = "Market Wide Circuit Breaker Status: MWCB Level 1 (1)",
  ["2"] = "Market Wide Circuit Breaker Status: MWCB Level 2 (2)",
  ["3"] = "Market Wide Circuit Breaker Status: MWCB Level 3 (3)",
}

nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.market_wide_circuit_breaker_status.display = function(value)
  return nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.market_wide_circuit_breaker_status.labels[value] or "Market Wide Circuit Breaker Status: Unknown("..value..")"
end

-- Dissect: Market Wide Circuit Breaker Status
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.market_wide_circuit_breaker_status.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.current then
    -- the line stops before it: optional, it has no value
    return offset
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.market_wide_circuit_breaker_status.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.current, offset + 1, offset + length)
  if text == "" then
    if parent ~= nil then
      parent:add(buffer(offset, length), "Market Wide Circuit Breaker Status: No Value")
    end
    return index
  end
  local value, failure = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.signed(text)
  if value == nil then
    return nil, "Market Wide Circuit Breaker Status \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.market_wide_circuit_breaker_status, buffer(offset, length), value, nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.market_wide_circuit_breaker_status.display(text))
  end
  return index
end

-- Message Text
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.message_text = {}

-- Message Text ends at "|"
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.message_text.delimiter = "|"
-- Message Text is text in Ascii
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.message_text.encoding = ENC_ASCII

-- Display: Message Text
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.message_text.display = function(value)
  return "Message Text: "..value
end

-- Dissect: Message Text
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.message_text.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.current then
    -- the line stops before it: optional, it has no value
    return offset
  end
  local index = nil
  if length == nil then
    length, index = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.scan(offset, nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.message_text.delimiter)
  end
  local text = string.sub(nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.current, offset + 1, offset + length)
  if text == "" then
    if parent ~= nil then
      parent:add(buffer(offset, length), "Message Text: No Value")
    end
    return index
  end
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.message_text, buffer(offset, length), text, nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.message_text.display(text))
  end
  return index
end


-----------------------------------------------------------------------
-- Protocol Records
-----------------------------------------------------------------------

-- Utp Admin
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.utp_admin = {}

-- The delimiter every field of Utp Admin ends at, which its line is split at
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.utp_admin.delimiter = "|"

-- Dissect Fields: Utp Admin
-- Split: every field of Utp Admin ends at "|" and none is quoted, so its line is split once and each field handed its range
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.utp_admin.fields = function(buffer, offset, packet, parent)
  local starts, lengths = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.split(offset, nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.utp_admin.delimiter)
  if #starts > 23 then
    return nil, "Utp Admin: the line has " .. #starts .. " fields, its layout 23"
  end
  local index = nil
  local failure = nil

  -- Timestamp: field 1
  index, failure = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.timestamp.dissect(buffer, starts[1], packet, parent, lengths[1])
  if failure ~= nil then
    return nil, failure
  end

  -- Symbol: field 2
  index, failure = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.symbol.dissect(buffer, starts[2], packet, parent, lengths[2])
  if failure ~= nil then
    return nil, failure
  end

  -- Message Category: field 3
  index, failure = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.message_category.dissect(buffer, starts[3], packet, parent, lengths[3])
  if failure ~= nil then
    return nil, failure
  end

  -- Message Type: field 4
  index, failure = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.message_type.dissect(buffer, starts[4], packet, parent, lengths[4])
  if failure ~= nil then
    return nil, failure
  end

  -- Message Sequence Number: field 5
  index, failure = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.message_sequence_number.dissect(buffer, starts[5], packet, parent, lengths[5])
  if failure ~= nil then
    return nil, failure
  end

  -- Market Center Originator Id: field 6
  index, failure = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.market_center_originator_id.dissect(buffer, starts[6], packet, parent, lengths[6])
  if failure ~= nil then
    return nil, failure
  end

  -- Sub Market Center Originator Id: field 7
  index, failure = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.sub_market_center_originator_id.dissect(buffer, starts[7], packet, parent, lengths[7])
  if failure ~= nil then
    return nil, failure
  end

  -- Participant Timestamp: field 8
  index, failure = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.participant_timestamp.dissect(buffer, starts[8], packet, parent, lengths[8])
  if failure ~= nil then
    return nil, failure
  end

  -- Financial Status: field 9
  index, failure = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.financial_status.dissect(buffer, starts[9], packet, parent, lengths[9])
  if failure ~= nil then
    return nil, failure
  end

  -- Short Sale Treshold Indicator: field 10
  index, failure = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.short_sale_treshold_indicator.dissect(buffer, starts[10], packet, parent, lengths[10])
  if failure ~= nil then
    return nil, failure
  end

  -- Short Sale Restriction Indicator: field 11
  index, failure = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.short_sale_restriction_indicator.dissect(buffer, starts[11], packet, parent, lengths[11])
  if failure ~= nil then
    return nil, failure
  end

  -- Trading Action Code: field 12
  index, failure = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.trading_action_code.dissect(buffer, starts[12], packet, parent, lengths[12])
  if failure ~= nil then
    return nil, failure
  end

  -- Trading Action Sequence Number: field 13
  index, failure = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.trading_action_sequence_number.dissect(buffer, starts[13], packet, parent, lengths[13])
  if failure ~= nil then
    return nil, failure
  end

  -- Trading Action Timestamp: field 14
  index, failure = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.trading_action_timestamp.dissect(buffer, starts[14], packet, parent, lengths[14])
  if failure ~= nil then
    return nil, failure
  end

  -- Trading Action Reason: field 15
  index, failure = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.trading_action_reason.dissect(buffer, starts[15], packet, parent, lengths[15])
  if failure ~= nil then
    return nil, failure
  end

  -- Luld Lower Limit Price Band: field 16
  index, failure = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.luld_lower_limit_price_band.dissect(buffer, starts[16], packet, parent, lengths[16])
  if failure ~= nil then
    return nil, failure
  end

  -- Luld Upper Limit Price Band: field 17
  index, failure = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.luld_upper_limit_price_band.dissect(buffer, starts[17], packet, parent, lengths[17])
  if failure ~= nil then
    return nil, failure
  end

  -- Luld Price Band Indicator: field 18
  index, failure = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.luld_price_band_indicator.dissect(buffer, starts[18], packet, parent, lengths[18])
  if failure ~= nil then
    return nil, failure
  end

  -- Market Wide Circuit Breaker Decline Level 1: field 19
  index, failure = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.market_wide_circuit_breaker_decline_level_1.dissect(buffer, starts[19], packet, parent, lengths[19])
  if failure ~= nil then
    return nil, failure
  end

  -- Market Wide Circuit Breaker Decline Level 2: field 20
  index, failure = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.market_wide_circuit_breaker_decline_level_2.dissect(buffer, starts[20], packet, parent, lengths[20])
  if failure ~= nil then
    return nil, failure
  end

  -- Market Wide Circuit Breaker Decline Level 3: field 21
  index, failure = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.market_wide_circuit_breaker_decline_level_3.dissect(buffer, starts[21], packet, parent, lengths[21])
  if failure ~= nil then
    return nil, failure
  end

  -- Market Wide Circuit Breaker Status: field 22
  index, failure = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.market_wide_circuit_breaker_status.dissect(buffer, starts[22], packet, parent, lengths[22])
  if failure ~= nil then
    return nil, failure
  end

  -- Message Text: field 23
  index, failure = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.message_text.dissect(buffer, starts[23], packet, parent, lengths[23])
  if failure ~= nil then
    return nil, failure
  end

  return #nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.current + 1
end

-- Dissect: Utp Admin
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.utp_admin.dissect = function(buffer, offset, packet, parent)
  local element = parent:add(omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.utp_admin, buffer(), "Utp Admin", "Utp Admin")
  return nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.utp_admin.fields(buffer, offset, packet, element)
end


-----------------------------------------------------------------------
-- Protocol Lines
-----------------------------------------------------------------------

-- The text between a line's fields, its Packet rule's Delimiter: "|"
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.delimiter = "|"

-- The character ending a line, its Packet rule's Terminator: 10
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.terminator = "\010"

-- The layouts a file states in its header, in model order: the header lines each states
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.variants = {
  {
    name = "DailyTaqUtpAdmin.v4.3",
    headers = { "Timestamp|Symbol|Message Category|Message Type|Message Sequence Number|Market Center Originator ID|Sub Market Center Originator ID|Participant Timestamp|Financial Status|Short Sale Treshold Indicator|Short Sale Restriction Indicator|Trading Action Code|Trading Action Sequence Number|Trading Action Timestamp|Trading Action Reason|LULD Lower Limit Price Band|LULD Upper Limit Price Band|LULDPrice Band Indicator|Market Wide Circuit Breaker Decline Level 1|Market Wide Circuit Breaker Decline Level 2|Market Wide Circuit Breaker Decline Level 3|Market Wide Circuit Breaker Status|Message Text" },
  },
}

-- The layout the file's lines are read by: the one its file handler found, the first where none did
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.variant = function()
  if nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.file == nil or nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.file.variant == nil then
    return 1
  end
  return nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.file.variant
end

-- A header line: its layout, and its columns
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.header = function(buffer, packet, parent, variant)
  packet.cols.info = "Header Row"
  local name = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.variants[variant].name
  local item = parent:add(omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.header_row, buffer(), name, "Header Row: " .. name)
  local starts, lengths = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.split(0, nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.delimiter)
  for index = 1, #starts do
    local range = buffer(starts[index], lengths[index])
    item:add(range, "Column " .. index .. ": " .. range:string(ENC_ASCII))
  end
end

-- A line the layout does not read, and why: its fields, as they are
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.outside = function(buffer, packet, parent, reason)
  packet.cols.info = "Line Outside Layout"
  local item = parent:add(omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.fields.line_outside_layout, buffer(), reason, "Line Outside Layout: " .. reason)
  item:add_proto_expert_info(omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.experts.line_outside_layout, reason)
  local starts, lengths = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.split(0, nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.delimiter)
  for index = 1, #starts do
    local range = buffer(starts[index], lengths[index])
    item:add(range, "Field " .. index .. ": " .. range:string(ENC_ASCII))
  end
end

-- Is a line one of the layout's header lines?
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.headed = function(line, variant)
  for index, header in ipairs(nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.variants[variant].headers) do
    if line == header then
      return true
    end
  end
  return false
end

-- Does a line read as the layout's: a header line, or Utp Admin?
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.reads = function(buffer, packet, line)
  nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.current = line
  local variant = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.variant()
  if nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.headed(line, variant) then
    return true
  end
  local index, failure = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.utp_admin.fields(buffer, 0, packet, nil)
  return failure == nil
end

-- Dissect a line: a header line, or Utp Admin, or a line outside the layout
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.line = function(buffer, packet, parent)
  local line = buffer:raw()
  nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.current = line
  local variant = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.variant()
  if nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.headed(line, variant) then
    return nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.header(buffer, packet, parent, variant)
  end

  -- read first with no tree, so a line the layout does not read is shown whole
  local index, failure = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.utp_admin.fields(buffer, 0, packet, nil)
  if failure ~= nil then
    return nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.outside(buffer, packet, parent, failure)
  end

  packet.cols.info = "Utp Admin"
  nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.utp_admin.dissect(buffer, 0, packet, parent)
end
-- Dissect Nyse NyseConsolidated DailyTaqUtpAdmin Csv 4.3
function omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.dissector(buffer, packet, parent)
  packet.cols.protocol = omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.name

  local protocol = parent:add(omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3, buffer(), omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.description, "(" .. buffer:len() .. " Bytes)")
  return nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.line(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- File Lines
-----------------------------------------------------------------------

-- A file's line, the one at an offset or with none the next, to the terminator: its offset, its text,
-- and its frame's time. The file is read a block at a time, the block kept in the capture's private
-- table; a line read again reads a block of its own
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.read = function(file, capture, offset)
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
    local ends = string.find(block.data, nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.terminator, block.at, true)
    if ends ~= nil then
      start = block.offset + block.at - 1
      line = string.sub(block.data, block.at, ends - 1)
      block.at = ends + #nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.terminator
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
  -- the frame's time: Timestamp, its time of day
  local position = 0
  local from = 1
  for skip = 1, position do
    local at = string.find(line, nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.timestamp.delimiter, from, true)
    if at == nil then
      return start, line
    end
    from = at + #nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.timestamp.delimiter
  end
  local at = string.find(line, nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.timestamp.delimiter, from, true)
  local upto = #line
  if at ~= nil then
    upto = at - 1
  end
  local seconds, nanoseconds = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.time(string.sub(line, from, upto), nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.timestamp.fraction)
  if seconds == nil then
    return start, line
  end
  -- placed on the Day preference's day in America/New_York, in UTC; with no day, on 1970-01-01
  local utc = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.lines.placed(nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.timestamp.zone, seconds)
  if utc ~= nil then
    return start, line, utc, nanoseconds
  end
  return start, line, seconds, nanoseconds
end

-----------------------------------------------------------------------
-- File Handler
-----------------------------------------------------------------------

-- File handler state
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.file = {}

-- Exported pdu tags each frame starts with: the dissector it is for, then the end of the tags
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.file.prefix = "\000\012\000\052omi.nyse.nyseconsolidated.dailytaqutpadmin.csv.v4.3\000\000\000\000\000"

-- The text a file of each layout starts with
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.file.signatures = {
  "Timestamp|Symbol|Message Category|Message Type|Message Sequence Number|Market Center Originator ID|Sub Market Center Originator ID|Participant Timestamp|Financial Status|Short Sale Treshold Indicator|Short Sale Restriction Indicator|Trading Action Code|Trading Action Sequence Number|Trading Action Timestamp|Trading Action Reason|LULD Lower Limit Price Band|LULD Upper Limit Price Band|LULDPrice Band Indicator|Market Wide Circuit Breaker Decline Level 1|Market Wide Circuit Breaker Decline Level 2|Market Wide Circuit Breaker Decline Level 3|Market Wide Circuit Breaker Status|Message Text\010",
}

-- The layout a file's first bytes are the signature of, or nil for a file of no layout
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.file.layout = function(file)
  local first = file:read(592)
  if first == nil then
    return nil
  end
  for index, signature in ipairs(nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.file.signatures) do
    if first:sub(1, #signature) == signature then
      return index
    end
  end
  return nil
end

-- A record read into a frame, the one at an offset or with none the next: its offset, nil at the end of the file
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.file.frame = function(file, capture, frame, offset)
  local at, data, seconds, nanoseconds = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.read(file, capture, offset)
  if at == nil then
    return nil
  end
  data = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.file.prefix .. data
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

-- Nyse NyseConsolidated DailyTaqUtpAdmin Csv 4.3 (Omi) file handler: a magic number reader, its signatures the magic
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.file.handler = FileHandler.new("Nyse NyseConsolidated DailyTaqUtpAdmin Csv 4.3 (Omi)", "omi_nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3", "Nyse NyseConsolidated DailyTaqUtpAdmin Csv 4.3 (Omi) file", "rm")

-- A file of a layout is this protocol's; read from its start, so its first line is the first frame
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.file.handler.read_open = function(file, capture)
  local layout = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.file.layout(file)
  if layout == nil then
    return false
  end
  nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.file.variant = layout
  file:seek("set", 0)
  capture.private_table = {}
  capture.encap = wtap_encaps.WIRESHARK_UPPER_PDU
  capture.time_precision = wtap_tsprecs.NSEC
  return true
end

-- The next record, returning its offset in the file
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.file.handler.read = function(file, capture, frame)
  local offset = nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.file.frame(file, capture, frame, nil)
  if offset == nil then
    return false
  end
  return offset
end

-- The record at an offset read before
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.file.handler.seek_read = function(file, capture, frame, offset)
  return nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.file.frame(file, capture, frame, offset) ~= nil
end

-- Nothing is held open beyond the file Wireshark closes
nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.file.handler.read_close = function(file, capture)
  return true
end

nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.file.handler.seq_read_close = function(file, capture)
  return true
end

-- Register Nyse NyseConsolidated DailyTaqUtpAdmin Csv 4.3 (Omi) files
register_filehandler(nyse_nyseconsolidated_dailytaqutpadmin_csv_v4_3.file.handler)

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
