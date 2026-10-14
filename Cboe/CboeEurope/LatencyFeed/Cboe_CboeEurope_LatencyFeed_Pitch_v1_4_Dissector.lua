-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe CboeEurope LatencyFeed Pitch 1.4 Protocol
local omi_cboe_cboeeurope_latencyfeed_pitch_v1_4 = Proto("Omi.Cboe.CboeEurope.LatencyFeed.Pitch.v1.4", "Cboe CboeEurope LatencyFeed Pitch 1.4")

-- Protocol table
local cboe_cboeeurope_latencyfeed_pitch_v1_4 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe CboeEurope LatencyFeed Pitch 1.4 Fields
omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields._25_percentile = ProtoField.new("25 Percentile", "cboe.cboeeurope.latencyfeed.pitch.v1.4.25percentile", ftypes.DOUBLE)
omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields._50_percentile_median = ProtoField.new("50 Percentile Median", "cboe.cboeeurope.latencyfeed.pitch.v1.4.50percentilemedian", ftypes.DOUBLE)
omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields._75_percentile = ProtoField.new("75 Percentile", "cboe.cboeeurope.latencyfeed.pitch.v1.4.75percentile", ftypes.DOUBLE)
omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields._90_percentile = ProtoField.new("90 Percentile", "cboe.cboeeurope.latencyfeed.pitch.v1.4.90percentile", ftypes.DOUBLE)
omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields._95_percentile = ProtoField.new("95 Percentile", "cboe.cboeeurope.latencyfeed.pitch.v1.4.95percentile", ftypes.DOUBLE)
omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields._99_percentile = ProtoField.new("99 Percentile", "cboe.cboeeurope.latencyfeed.pitch.v1.4.99percentile", ftypes.DOUBLE)
omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields._999_percentile = ProtoField.new("99.9 Percentile", "cboe.cboeeurope.latencyfeed.pitch.v1.4.999percentile", ftypes.DOUBLE)
omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields.average = ProtoField.new("Average", "cboe.cboeeurope.latencyfeed.pitch.v1.4.average", ftypes.DOUBLE)
omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields.begin_time = ProtoField.new("Begin Time", "cboe.cboeeurope.latencyfeed.pitch.v1.4.begintime", ftypes.UINT32)
omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields.count = ProtoField.new("Count", "cboe.cboeeurope.latencyfeed.pitch.v1.4.count", ftypes.UINT32)
omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields.end_time = ProtoField.new("End Time", "cboe.cboeeurope.latencyfeed.pitch.v1.4.endtime", ftypes.UINT32)
omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields.length = ProtoField.new("Length", "cboe.cboeeurope.latencyfeed.pitch.v1.4.length", ftypes.UINT16)
omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields.matching_unit = ProtoField.new("Matching Unit", "cboe.cboeeurope.latencyfeed.pitch.v1.4.matchingunit", ftypes.UINT8)
omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields.maximum = ProtoField.new("Maximum", "cboe.cboeeurope.latencyfeed.pitch.v1.4.maximum", ftypes.DOUBLE)
omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields.measurement_type = ProtoField.new("Measurement Type", "cboe.cboeeurope.latencyfeed.pitch.v1.4.measurementtype", ftypes.UINT8)
omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields.message_count = ProtoField.new("Message Count", "cboe.cboeeurope.latencyfeed.pitch.v1.4.messagecount", ftypes.UINT8)
omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields.message_length = ProtoField.new("Message Length", "cboe.cboeeurope.latencyfeed.pitch.v1.4.messagelength", ftypes.UINT8)
omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields.message_type = ProtoField.new("Message Type", "cboe.cboeeurope.latencyfeed.pitch.v1.4.messagetype", ftypes.UINT8)
omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields.minimum = ProtoField.new("Minimum", "cboe.cboeeurope.latencyfeed.pitch.v1.4.minimum", ftypes.DOUBLE)
omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields.mode = ProtoField.new("Mode", "cboe.cboeeurope.latencyfeed.pitch.v1.4.mode", ftypes.DOUBLE)
omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields.sequence = ProtoField.new("Sequence", "cboe.cboeeurope.latencyfeed.pitch.v1.4.sequence", ftypes.UINT32)
omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields.standard_deviation = ProtoField.new("Standard Deviation", "cboe.cboeeurope.latencyfeed.pitch.v1.4.standarddeviation", ftypes.DOUBLE)
omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields.unit = ProtoField.new("Unit", "cboe.cboeeurope.latencyfeed.pitch.v1.4.unit", ftypes.UINT8)

-- Cboe CboeEurope LatencyFeed Pitch 1.4 Framing
omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields.message = ProtoField.new("Message", "cboe.cboeeurope.latencyfeed.pitch.v1.4.message", ftypes.STRING)
omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields.message_header = ProtoField.new("Message Header", "cboe.cboeeurope.latencyfeed.pitch.v1.4.messageheader", ftypes.STRING)
omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields.packet = ProtoField.new("Packet", "cboe.cboeeurope.latencyfeed.pitch.v1.4.packet", ftypes.STRING)
omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields.packet_header = ProtoField.new("Packet Header", "cboe.cboeeurope.latencyfeed.pitch.v1.4.packetheader", ftypes.STRING)

-- Cboe CboeEurope LatencyFeed 1.4 Application Messages
omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields.latency_stat_message = ProtoField.new("Latency Stat Message", "cboe.cboeeurope.latencyfeed.pitch.v1.4.latencystatmessage", ftypes.STRING)

-- Cboe CboeEurope LatencyFeed Pitch 1.4 Generated Fields
omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields.message_index = ProtoField.new("Message Index", "cboe.cboeeurope.latencyfeed.pitch.v1.4.messageindex", ftypes.UINT16)
omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "cboe.cboeeurope.latencyfeed.pitch.v1.4.messagesequencenumber", ftypes.UINT64)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe CboeEurope LatencyFeed Pitch 1.4 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true
show.sequences = true

-- Register Cboe CboeEurope LatencyFeed Pitch 1.4 Show Options
omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")

-- Handle changed preferences
function omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.prefs.show_application_messages then
    show.application_messages = omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.prefs.show_application_messages
  end
  if show.headers ~= omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.prefs.show_headers then
    show.headers = omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.prefs.show_headers
  end
  if show.structs ~= omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.prefs.show_structs then
    show.structs = omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.prefs.show_structs
  end
  if show.indexes ~= omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.prefs.show_indexes then
    show.indexes = omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.prefs.show_indexes
  end
  if show.sequences ~= omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.prefs.show_sequences then
    show.sequences = omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.prefs.show_sequences
  end
end


-----------------------------------------------------------------------
-- Cboe CboeEurope LatencyFeed Pitch 1.4 Fields
-----------------------------------------------------------------------

-- 25 Percentile
cboe_cboeeurope_latencyfeed_pitch_v1_4._25_percentile = {}

-- Size: 25 Percentile
cboe_cboeeurope_latencyfeed_pitch_v1_4._25_percentile.size = 8

-- Display: 25 Percentile
cboe_cboeeurope_latencyfeed_pitch_v1_4._25_percentile.display = function(value)
  return "25 Percentile: "..value
end

-- Dissect: 25 Percentile
cboe_cboeeurope_latencyfeed_pitch_v1_4._25_percentile.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_latencyfeed_pitch_v1_4._25_percentile.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = cboe_cboeeurope_latencyfeed_pitch_v1_4._25_percentile.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields._25_percentile, range, value, display)

  return offset + length, value
end

-- 50 Percentile Median
cboe_cboeeurope_latencyfeed_pitch_v1_4._50_percentile_median = {}

-- Size: 50 Percentile Median
cboe_cboeeurope_latencyfeed_pitch_v1_4._50_percentile_median.size = 8

-- Display: 50 Percentile Median
cboe_cboeeurope_latencyfeed_pitch_v1_4._50_percentile_median.display = function(value)
  return "50 Percentile Median: "..value
end

-- Dissect: 50 Percentile Median
cboe_cboeeurope_latencyfeed_pitch_v1_4._50_percentile_median.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_latencyfeed_pitch_v1_4._50_percentile_median.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = cboe_cboeeurope_latencyfeed_pitch_v1_4._50_percentile_median.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields._50_percentile_median, range, value, display)

  return offset + length, value
end

-- 75 Percentile
cboe_cboeeurope_latencyfeed_pitch_v1_4._75_percentile = {}

-- Size: 75 Percentile
cboe_cboeeurope_latencyfeed_pitch_v1_4._75_percentile.size = 8

-- Display: 75 Percentile
cboe_cboeeurope_latencyfeed_pitch_v1_4._75_percentile.display = function(value)
  return "75 Percentile: "..value
end

-- Dissect: 75 Percentile
cboe_cboeeurope_latencyfeed_pitch_v1_4._75_percentile.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_latencyfeed_pitch_v1_4._75_percentile.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = cboe_cboeeurope_latencyfeed_pitch_v1_4._75_percentile.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields._75_percentile, range, value, display)

  return offset + length, value
end

-- 90 Percentile
cboe_cboeeurope_latencyfeed_pitch_v1_4._90_percentile = {}

-- Size: 90 Percentile
cboe_cboeeurope_latencyfeed_pitch_v1_4._90_percentile.size = 8

-- Display: 90 Percentile
cboe_cboeeurope_latencyfeed_pitch_v1_4._90_percentile.display = function(value)
  return "90 Percentile: "..value
end

-- Dissect: 90 Percentile
cboe_cboeeurope_latencyfeed_pitch_v1_4._90_percentile.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_latencyfeed_pitch_v1_4._90_percentile.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = cboe_cboeeurope_latencyfeed_pitch_v1_4._90_percentile.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields._90_percentile, range, value, display)

  return offset + length, value
end

-- 95 Percentile
cboe_cboeeurope_latencyfeed_pitch_v1_4._95_percentile = {}

-- Size: 95 Percentile
cboe_cboeeurope_latencyfeed_pitch_v1_4._95_percentile.size = 8

-- Display: 95 Percentile
cboe_cboeeurope_latencyfeed_pitch_v1_4._95_percentile.display = function(value)
  return "95 Percentile: "..value
end

-- Dissect: 95 Percentile
cboe_cboeeurope_latencyfeed_pitch_v1_4._95_percentile.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_latencyfeed_pitch_v1_4._95_percentile.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = cboe_cboeeurope_latencyfeed_pitch_v1_4._95_percentile.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields._95_percentile, range, value, display)

  return offset + length, value
end

-- 99 Percentile
cboe_cboeeurope_latencyfeed_pitch_v1_4._99_percentile = {}

-- Size: 99 Percentile
cboe_cboeeurope_latencyfeed_pitch_v1_4._99_percentile.size = 8

-- Display: 99 Percentile
cboe_cboeeurope_latencyfeed_pitch_v1_4._99_percentile.display = function(value)
  return "99 Percentile: "..value
end

-- Dissect: 99 Percentile
cboe_cboeeurope_latencyfeed_pitch_v1_4._99_percentile.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_latencyfeed_pitch_v1_4._99_percentile.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = cboe_cboeeurope_latencyfeed_pitch_v1_4._99_percentile.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields._99_percentile, range, value, display)

  return offset + length, value
end

-- 99.9 Percentile
cboe_cboeeurope_latencyfeed_pitch_v1_4._999_percentile = {}

-- Size: 99.9 Percentile
cboe_cboeeurope_latencyfeed_pitch_v1_4._999_percentile.size = 8

-- Display: 99.9 Percentile
cboe_cboeeurope_latencyfeed_pitch_v1_4._999_percentile.display = function(value)
  return "99.9 Percentile: "..value
end

-- Dissect: 99.9 Percentile
cboe_cboeeurope_latencyfeed_pitch_v1_4._999_percentile.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_latencyfeed_pitch_v1_4._999_percentile.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = cboe_cboeeurope_latencyfeed_pitch_v1_4._999_percentile.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields._999_percentile, range, value, display)

  return offset + length, value
end

-- Average
cboe_cboeeurope_latencyfeed_pitch_v1_4.average = {}

-- Size: Average
cboe_cboeeurope_latencyfeed_pitch_v1_4.average.size = 8

-- Display: Average
cboe_cboeeurope_latencyfeed_pitch_v1_4.average.display = function(value)
  return "Average: "..value
end

-- Dissect: Average
cboe_cboeeurope_latencyfeed_pitch_v1_4.average.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_latencyfeed_pitch_v1_4.average.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = cboe_cboeeurope_latencyfeed_pitch_v1_4.average.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields.average, range, value, display)

  return offset + length, value
end

-- Begin Time
cboe_cboeeurope_latencyfeed_pitch_v1_4.begin_time = {}

-- Size: Begin Time
cboe_cboeeurope_latencyfeed_pitch_v1_4.begin_time.size = 4

-- Display: Begin Time
cboe_cboeeurope_latencyfeed_pitch_v1_4.begin_time.display = function(value)
  return "Begin Time: "..value
end

-- Dissect: Begin Time
cboe_cboeeurope_latencyfeed_pitch_v1_4.begin_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_latencyfeed_pitch_v1_4.begin_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_latencyfeed_pitch_v1_4.begin_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields.begin_time, range, value, display)

  return offset + length, value
end

-- Count
cboe_cboeeurope_latencyfeed_pitch_v1_4.count = {}

-- Size: Count
cboe_cboeeurope_latencyfeed_pitch_v1_4.count.size = 4

-- Display: Count
cboe_cboeeurope_latencyfeed_pitch_v1_4.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
cboe_cboeeurope_latencyfeed_pitch_v1_4.count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_latencyfeed_pitch_v1_4.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_latencyfeed_pitch_v1_4.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields.count, range, value, display)

  return offset + length, value
end

-- End Time
cboe_cboeeurope_latencyfeed_pitch_v1_4.end_time = {}

-- Size: End Time
cboe_cboeeurope_latencyfeed_pitch_v1_4.end_time.size = 4

-- Display: End Time
cboe_cboeeurope_latencyfeed_pitch_v1_4.end_time.display = function(value)
  return "End Time: "..value
end

-- Dissect: End Time
cboe_cboeeurope_latencyfeed_pitch_v1_4.end_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_latencyfeed_pitch_v1_4.end_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_latencyfeed_pitch_v1_4.end_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields.end_time, range, value, display)

  return offset + length, value
end

-- Length
cboe_cboeeurope_latencyfeed_pitch_v1_4.length = {}

-- Size: Length
cboe_cboeeurope_latencyfeed_pitch_v1_4.length.size = 2

-- Display: Length
cboe_cboeeurope_latencyfeed_pitch_v1_4.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_cboeeurope_latencyfeed_pitch_v1_4.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_latencyfeed_pitch_v1_4.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_latencyfeed_pitch_v1_4.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields.length, range, value, display)

  return offset + length, value
end

-- Matching Unit
cboe_cboeeurope_latencyfeed_pitch_v1_4.matching_unit = {}

-- Size: Matching Unit
cboe_cboeeurope_latencyfeed_pitch_v1_4.matching_unit.size = 1

-- Display: Matching Unit
cboe_cboeeurope_latencyfeed_pitch_v1_4.matching_unit.display = function(value)
  return "Matching Unit: "..value
end

-- Dissect: Matching Unit
cboe_cboeeurope_latencyfeed_pitch_v1_4.matching_unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_latencyfeed_pitch_v1_4.matching_unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_latencyfeed_pitch_v1_4.matching_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields.matching_unit, range, value, display)

  return offset + length, value
end

-- Maximum
cboe_cboeeurope_latencyfeed_pitch_v1_4.maximum = {}

-- Size: Maximum
cboe_cboeeurope_latencyfeed_pitch_v1_4.maximum.size = 8

-- Display: Maximum
cboe_cboeeurope_latencyfeed_pitch_v1_4.maximum.display = function(value)
  return "Maximum: "..value
end

-- Dissect: Maximum
cboe_cboeeurope_latencyfeed_pitch_v1_4.maximum.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_latencyfeed_pitch_v1_4.maximum.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = cboe_cboeeurope_latencyfeed_pitch_v1_4.maximum.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields.maximum, range, value, display)

  return offset + length, value
end

-- Measurement Type
cboe_cboeeurope_latencyfeed_pitch_v1_4.measurement_type = {}

-- Size: Measurement Type
cboe_cboeeurope_latencyfeed_pitch_v1_4.measurement_type.size = 1

-- Display: Measurement Type
cboe_cboeeurope_latencyfeed_pitch_v1_4.measurement_type.display = function(value)
  if value == 0 then
    return "Measurement Type: Order To Quote (0)"
  end

  return "Measurement Type: Unknown("..value..")"
end

-- Dissect: Measurement Type
cboe_cboeeurope_latencyfeed_pitch_v1_4.measurement_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_latencyfeed_pitch_v1_4.measurement_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_latencyfeed_pitch_v1_4.measurement_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields.measurement_type, range, value, display)

  return offset + length, value
end

-- Message Count
cboe_cboeeurope_latencyfeed_pitch_v1_4.message_count = {}

-- Size: Message Count
cboe_cboeeurope_latencyfeed_pitch_v1_4.message_count.size = 1

-- Display: Message Count
cboe_cboeeurope_latencyfeed_pitch_v1_4.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
cboe_cboeeurope_latencyfeed_pitch_v1_4.message_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_latencyfeed_pitch_v1_4.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_latencyfeed_pitch_v1_4.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_cboeeurope_latencyfeed_pitch_v1_4.message_length = {}

-- Size: Message Length
cboe_cboeeurope_latencyfeed_pitch_v1_4.message_length.size = 1

-- Display: Message Length
cboe_cboeeurope_latencyfeed_pitch_v1_4.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_cboeeurope_latencyfeed_pitch_v1_4.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_latencyfeed_pitch_v1_4.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_latencyfeed_pitch_v1_4.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_cboeeurope_latencyfeed_pitch_v1_4.message_type = {}

-- Size: Message Type
cboe_cboeeurope_latencyfeed_pitch_v1_4.message_type.size = 1

-- Display: Message Type
cboe_cboeeurope_latencyfeed_pitch_v1_4.message_type.display = function(value)
  if value == 0x90 then
    return "Message Type: Latency Stat Message (0x90)"
  end

  return "Message Type: Unknown("..string.format("0x%02X", value)..")"
end

-- Dissect: Message Type
cboe_cboeeurope_latencyfeed_pitch_v1_4.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_latencyfeed_pitch_v1_4.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_latencyfeed_pitch_v1_4.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields.message_type, range, value, display)

  return offset + length, value
end

-- Minimum
cboe_cboeeurope_latencyfeed_pitch_v1_4.minimum = {}

-- Size: Minimum
cboe_cboeeurope_latencyfeed_pitch_v1_4.minimum.size = 8

-- Display: Minimum
cboe_cboeeurope_latencyfeed_pitch_v1_4.minimum.display = function(value)
  return "Minimum: "..value
end

-- Dissect: Minimum
cboe_cboeeurope_latencyfeed_pitch_v1_4.minimum.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_latencyfeed_pitch_v1_4.minimum.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = cboe_cboeeurope_latencyfeed_pitch_v1_4.minimum.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields.minimum, range, value, display)

  return offset + length, value
end

-- Mode
cboe_cboeeurope_latencyfeed_pitch_v1_4.mode = {}

-- Size: Mode
cboe_cboeeurope_latencyfeed_pitch_v1_4.mode.size = 8

-- Display: Mode
cboe_cboeeurope_latencyfeed_pitch_v1_4.mode.display = function(value)
  return "Mode: "..value
end

-- Dissect: Mode
cboe_cboeeurope_latencyfeed_pitch_v1_4.mode.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_latencyfeed_pitch_v1_4.mode.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = cboe_cboeeurope_latencyfeed_pitch_v1_4.mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields.mode, range, value, display)

  return offset + length, value
end

-- Sequence
cboe_cboeeurope_latencyfeed_pitch_v1_4.sequence = {}

-- Size: Sequence
cboe_cboeeurope_latencyfeed_pitch_v1_4.sequence.size = 4

-- Display: Sequence
cboe_cboeeurope_latencyfeed_pitch_v1_4.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_cboeeurope_latencyfeed_pitch_v1_4.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_latencyfeed_pitch_v1_4.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_latencyfeed_pitch_v1_4.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields.sequence, range, value, display)

  return offset + length, value
end

-- Standard Deviation
cboe_cboeeurope_latencyfeed_pitch_v1_4.standard_deviation = {}

-- Size: Standard Deviation
cboe_cboeeurope_latencyfeed_pitch_v1_4.standard_deviation.size = 8

-- Display: Standard Deviation
cboe_cboeeurope_latencyfeed_pitch_v1_4.standard_deviation.display = function(value)
  return "Standard Deviation: "..value
end

-- Dissect: Standard Deviation
cboe_cboeeurope_latencyfeed_pitch_v1_4.standard_deviation.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_latencyfeed_pitch_v1_4.standard_deviation.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = cboe_cboeeurope_latencyfeed_pitch_v1_4.standard_deviation.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields.standard_deviation, range, value, display)

  return offset + length, value
end

-- Unit
cboe_cboeeurope_latencyfeed_pitch_v1_4.unit = {}

-- Size: Unit
cboe_cboeeurope_latencyfeed_pitch_v1_4.unit.size = 1

-- Display: Unit
cboe_cboeeurope_latencyfeed_pitch_v1_4.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_cboeeurope_latencyfeed_pitch_v1_4.unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_latencyfeed_pitch_v1_4.unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_latencyfeed_pitch_v1_4.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields.unit, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe CboeEurope LatencyFeed Pitch 1.4
-----------------------------------------------------------------------

-- Latency Stat Message
cboe_cboeeurope_latencyfeed_pitch_v1_4.latency_stat_message = {}

-- Size: Latency Stat Message
cboe_cboeeurope_latencyfeed_pitch_v1_4.latency_stat_message.size =
  cboe_cboeeurope_latencyfeed_pitch_v1_4.measurement_type.size + 
  cboe_cboeeurope_latencyfeed_pitch_v1_4.matching_unit.size + 
  cboe_cboeeurope_latencyfeed_pitch_v1_4.begin_time.size + 
  cboe_cboeeurope_latencyfeed_pitch_v1_4.end_time.size + 
  cboe_cboeeurope_latencyfeed_pitch_v1_4.count.size + 
  cboe_cboeeurope_latencyfeed_pitch_v1_4.minimum.size + 
  cboe_cboeeurope_latencyfeed_pitch_v1_4.maximum.size + 
  cboe_cboeeurope_latencyfeed_pitch_v1_4.average.size + 
  cboe_cboeeurope_latencyfeed_pitch_v1_4.standard_deviation.size + 
  cboe_cboeeurope_latencyfeed_pitch_v1_4.mode.size + 
  cboe_cboeeurope_latencyfeed_pitch_v1_4._999_percentile.size + 
  cboe_cboeeurope_latencyfeed_pitch_v1_4._99_percentile.size + 
  cboe_cboeeurope_latencyfeed_pitch_v1_4._95_percentile.size + 
  cboe_cboeeurope_latencyfeed_pitch_v1_4._90_percentile.size + 
  cboe_cboeeurope_latencyfeed_pitch_v1_4._75_percentile.size + 
  cboe_cboeeurope_latencyfeed_pitch_v1_4._50_percentile_median.size + 
  cboe_cboeeurope_latencyfeed_pitch_v1_4._25_percentile.size

-- Display: Latency Stat Message
cboe_cboeeurope_latencyfeed_pitch_v1_4.latency_stat_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Latency Stat Message
cboe_cboeeurope_latencyfeed_pitch_v1_4.latency_stat_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Measurement Type: Binary
  index, measurement_type = cboe_cboeeurope_latencyfeed_pitch_v1_4.measurement_type.dissect(buffer, index, packet, parent)

  -- Matching Unit: Binary
  index, matching_unit = cboe_cboeeurope_latencyfeed_pitch_v1_4.matching_unit.dissect(buffer, index, packet, parent)

  -- Begin Time: Binary
  index, begin_time = cboe_cboeeurope_latencyfeed_pitch_v1_4.begin_time.dissect(buffer, index, packet, parent)

  -- End Time: Binary
  index, end_time = cboe_cboeeurope_latencyfeed_pitch_v1_4.end_time.dissect(buffer, index, packet, parent)

  -- Count: Binary
  index, count = cboe_cboeeurope_latencyfeed_pitch_v1_4.count.dissect(buffer, index, packet, parent)

  -- Minimum: Double
  index, minimum = cboe_cboeeurope_latencyfeed_pitch_v1_4.minimum.dissect(buffer, index, packet, parent)

  -- Maximum: Double
  index, maximum = cboe_cboeeurope_latencyfeed_pitch_v1_4.maximum.dissect(buffer, index, packet, parent)

  -- Average: Double
  index, average = cboe_cboeeurope_latencyfeed_pitch_v1_4.average.dissect(buffer, index, packet, parent)

  -- Standard Deviation: Double
  index, standard_deviation = cboe_cboeeurope_latencyfeed_pitch_v1_4.standard_deviation.dissect(buffer, index, packet, parent)

  -- Mode: Double
  index, mode = cboe_cboeeurope_latencyfeed_pitch_v1_4.mode.dissect(buffer, index, packet, parent)

  -- 99.9 Percentile: Double
  index, _999_percentile = cboe_cboeeurope_latencyfeed_pitch_v1_4._999_percentile.dissect(buffer, index, packet, parent)

  -- 99 Percentile: Double
  index, _99_percentile = cboe_cboeeurope_latencyfeed_pitch_v1_4._99_percentile.dissect(buffer, index, packet, parent)

  -- 95 Percentile: Double
  index, _95_percentile = cboe_cboeeurope_latencyfeed_pitch_v1_4._95_percentile.dissect(buffer, index, packet, parent)

  -- 90 Percentile: Double
  index, _90_percentile = cboe_cboeeurope_latencyfeed_pitch_v1_4._90_percentile.dissect(buffer, index, packet, parent)

  -- 75 Percentile: Double
  index, _75_percentile = cboe_cboeeurope_latencyfeed_pitch_v1_4._75_percentile.dissect(buffer, index, packet, parent)

  -- 50 Percentile Median: Double
  index, _50_percentile_median = cboe_cboeeurope_latencyfeed_pitch_v1_4._50_percentile_median.dissect(buffer, index, packet, parent)

  -- 25 Percentile: Double
  index, _25_percentile = cboe_cboeeurope_latencyfeed_pitch_v1_4._25_percentile.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Latency Stat Message
cboe_cboeeurope_latencyfeed_pitch_v1_4.latency_stat_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields.latency_stat_message, buffer(offset, 0))
    local index = cboe_cboeeurope_latencyfeed_pitch_v1_4.latency_stat_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cboeeurope_latencyfeed_pitch_v1_4.latency_stat_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cboeeurope_latencyfeed_pitch_v1_4.latency_stat_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_cboeeurope_latencyfeed_pitch_v1_4.payload = {}

-- Dissect: Payload
cboe_cboeeurope_latencyfeed_pitch_v1_4.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Latency Stat Message
  if message_type == 0x90 then
    return cboe_cboeeurope_latencyfeed_pitch_v1_4.latency_stat_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cboe_cboeeurope_latencyfeed_pitch_v1_4.message_header = {}

-- Size: Message Header
cboe_cboeeurope_latencyfeed_pitch_v1_4.message_header.size =
  cboe_cboeeurope_latencyfeed_pitch_v1_4.message_length.size + 
  cboe_cboeeurope_latencyfeed_pitch_v1_4.message_type.size

-- Display: Message Header
cboe_cboeeurope_latencyfeed_pitch_v1_4.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_cboeeurope_latencyfeed_pitch_v1_4.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_cboeeurope_latencyfeed_pitch_v1_4.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, message_type = cboe_cboeeurope_latencyfeed_pitch_v1_4.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_cboeeurope_latencyfeed_pitch_v1_4.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields.message_header, buffer(offset, 0))
    local index = cboe_cboeeurope_latencyfeed_pitch_v1_4.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cboeeurope_latencyfeed_pitch_v1_4.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cboeeurope_latencyfeed_pitch_v1_4.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_cboeeurope_latencyfeed_pitch_v1_4.message = {}

-- Read runtime size of: Message
cboe_cboeeurope_latencyfeed_pitch_v1_4.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 1):le_uint()

  return message_length
end

-- Display: Message
cboe_cboeeurope_latencyfeed_pitch_v1_4.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_cboeeurope_latencyfeed_pitch_v1_4.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Implicit Message Sequence Number
  if message_index ~= nil and show.sequences and cboe_cboeeurope_latencyfeed_pitch_v1_4.packet_sequence ~= nil then
    local sequence = parent:add(omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields.message_sequence_number, UInt64.new(cboe_cboeeurope_latencyfeed_pitch_v1_4.packet_sequence + message_index - 1))
    sequence:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_cboeeurope_latencyfeed_pitch_v1_4.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 1 branches
  index = cboe_cboeeurope_latencyfeed_pitch_v1_4.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_cboeeurope_latencyfeed_pitch_v1_4.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = cboe_cboeeurope_latencyfeed_pitch_v1_4.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields.message, buffer(offset, 0))
    local current = cboe_cboeeurope_latencyfeed_pitch_v1_4.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_cboeeurope_latencyfeed_pitch_v1_4.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cboeeurope_latencyfeed_pitch_v1_4.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Heartbeat
cboe_cboeeurope_latencyfeed_pitch_v1_4.heartbeat = {}

-- Display: Heartbeat
cboe_cboeeurope_latencyfeed_pitch_v1_4.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
cboe_cboeeurope_latencyfeed_pitch_v1_4.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = cboe_cboeeurope_latencyfeed_pitch_v1_4.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
cboe_cboeeurope_latencyfeed_pitch_v1_4.messages = {}

-- Dissect: Messages
cboe_cboeeurope_latencyfeed_pitch_v1_4.messages.dissect = function(buffer, offset, packet, parent, message_count)
  -- Dissect Heartbeat
  if message_count == 0 then
    return cboe_cboeeurope_latencyfeed_pitch_v1_4.heartbeat.dissect(buffer, offset, packet, parent)
  end

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 1):le_uint()

    -- Message: Struct of 2 fields
    offset = cboe_cboeeurope_latencyfeed_pitch_v1_4.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end
end

-- Packet Header
cboe_cboeeurope_latencyfeed_pitch_v1_4.packet_header = {}

-- Size: Packet Header
cboe_cboeeurope_latencyfeed_pitch_v1_4.packet_header.size =
  cboe_cboeeurope_latencyfeed_pitch_v1_4.length.size + 
  cboe_cboeeurope_latencyfeed_pitch_v1_4.message_count.size + 
  cboe_cboeeurope_latencyfeed_pitch_v1_4.unit.size + 
  cboe_cboeeurope_latencyfeed_pitch_v1_4.sequence.size

-- Display: Packet Header
cboe_cboeeurope_latencyfeed_pitch_v1_4.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_cboeeurope_latencyfeed_pitch_v1_4.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_cboeeurope_latencyfeed_pitch_v1_4.length.dissect(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = cboe_cboeeurope_latencyfeed_pitch_v1_4.message_count.dissect(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_cboeeurope_latencyfeed_pitch_v1_4.unit.dissect(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = cboe_cboeeurope_latencyfeed_pitch_v1_4.sequence.dissect(buffer, index, packet, parent)

  -- Sequence base for the packet's messages
  cboe_cboeeurope_latencyfeed_pitch_v1_4.packet_sequence = sequence

  return index
end

-- Dissect: Packet Header
cboe_cboeeurope_latencyfeed_pitch_v1_4.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.fields.packet_header, buffer(offset, 0))
    local index = cboe_cboeeurope_latencyfeed_pitch_v1_4.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cboeeurope_latencyfeed_pitch_v1_4.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cboeeurope_latencyfeed_pitch_v1_4.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_cboeeurope_latencyfeed_pitch_v1_4.packet = {}

-- Verify required size of Udp packet
cboe_cboeeurope_latencyfeed_pitch_v1_4.packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_cboeeurope_latencyfeed_pitch_v1_4.packet_header.size
end

-- Dissect Packet
cboe_cboeeurope_latencyfeed_pitch_v1_4.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_cboeeurope_latencyfeed_pitch_v1_4.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 6, 1):le_uint()

  -- Messages: Runtime Type with 2 branches
  index = cboe_cboeeurope_latencyfeed_pitch_v1_4.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.init()
end

-- Dissector for Cboe CboeEurope LatencyFeed Pitch 1.4
function omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_cboeeurope_latencyfeed_pitch_v1_4, buffer(), omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.description, "("..buffer:len().." Bytes)")
  return cboe_cboeeurope_latencyfeed_pitch_v1_4.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cboe CboeEurope LatencyFeed Pitch 1.4 (Udp)
local function omi_cboe_cboeeurope_latencyfeed_pitch_v1_4_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_cboeeurope_latencyfeed_pitch_v1_4.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_cboeeurope_latencyfeed_pitch_v1_4
  omi_cboe_cboeeurope_latencyfeed_pitch_v1_4.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe CboeEurope LatencyFeed Pitch 1.4
omi_cboe_cboeeurope_latencyfeed_pitch_v1_4:register_heuristic("udp", omi_cboe_cboeeurope_latencyfeed_pitch_v1_4_udp_heuristic)

-- Register Cboe CboeEurope LatencyFeed Pitch 1.4 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_cboe_cboeeurope_latencyfeed_pitch_v1_4)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.4
--   Date: Friday, February 19, 2016
--   Specification: BATS_Europe_Multicast_Latency_Feed_Specification.pdf
--
-- Script:
--   Generator: 1.5.0.0
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
