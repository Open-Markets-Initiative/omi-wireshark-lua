-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Bmv BmvMarketData Product12 Intra 1.1 Protocol
local omi_bmv_bmvmarketdata_product12_intra_v1_1 = Proto("Omi.Bmv.BmvMarketData.Product12.Intra.v1.1", "Bmv BmvMarketData Product12 Intra 1.1")

-- Protocol table
local bmv_bmvmarketdata_product12_intra_v1_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Bmv BmvMarketData Product12 Intra 1.1 Fields
omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.closing_price = ProtoField.new("Closing Price", "bmv.bmvmarketdata.product12.intra.v1.1.closingprice", ftypes.DOUBLE)
omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.component = ProtoField.new("Component", "bmv.bmvmarketdata.product12.intra.v1.1.component", ftypes.STRING, nil, nil, nil, "See Indices Components Catalog on the Connections and Appendix document")
omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.date = ProtoField.new("Date", "bmv.bmvmarketdata.product12.intra.v1.1.date", ftypes.ABSOLUTE_TIME, nil, base.LOCAL)
omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.date_utc = ProtoField.new("Date", "bmv.bmvmarketdata.product12.intra.v1.1.date.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.datetime = ProtoField.new("Datetime", "bmv.bmvmarketdata.product12.intra.v1.1.datetime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date and time the packet is created")
omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.datetime_utc = ProtoField.new("Datetime", "bmv.bmvmarketdata.product12.intra.v1.1.datetime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date and time the packet is created")
omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.ending_time = ProtoField.new("Ending Time", "bmv.bmvmarketdata.product12.intra.v1.1.endingtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Recess official ending time. Only used when an official recess or automatic recess occurred.")
omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.ending_time_utc = ProtoField.new("Ending Time", "bmv.bmvmarketdata.product12.intra.v1.1.endingtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Recess official ending time. Only used when an official recess or automatic recess occurred.")
omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.event_code = ProtoField.new("Event Code", "bmv.bmvmarketdata.product12.intra.v1.1.eventcode", ftypes.STRING, nil, nil, nil, "See the table of System Event Codes Catalog on the Connections and Appendix document")
omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.indices_stocks = ProtoField.new("Indices Stocks", "bmv.bmvmarketdata.product12.intra.v1.1.indicesstocks", ftypes.INT64, nil, nil, nil, "Number of stocks of the issuer that making up the component")
omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.influence = ProtoField.new("Influence", "bmv.bmvmarketdata.product12.intra.v1.1.influence", ftypes.DOUBLE, nil, nil, nil, "Issuer weight inside the Indices")
omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.instrument_number = ProtoField.new("Instrument Number", "bmv.bmvmarketdata.product12.intra.v1.1.instrumentnumber", ftypes.INT32, nil, nil, nil, "Always zero")
omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.issuer = ProtoField.new("Issuer", "bmv.bmvmarketdata.product12.intra.v1.1.issuer", ftypes.STRING, nil, nil, nil, "Issuer code")
omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.last_price = ProtoField.new("Last Price", "bmv.bmvmarketdata.product12.intra.v1.1.lastprice", ftypes.DOUBLE)
omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.length = ProtoField.new("Length", "bmv.bmvmarketdata.product12.intra.v1.1.length", ftypes.INT16, nil, nil, nil, "Packet length, including header and all attached messages")
omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.market = ProtoField.new("Market", "bmv.bmvmarketdata.product12.intra.v1.1.market", ftypes.STRING, nil, nil, nil, "See the table of Markets Catalog (only used when there is an official recess) on the Connections and Appendix document")
omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.market_data_group = ProtoField.new("Market Data Group", "bmv.bmvmarketdata.product12.intra.v1.1.marketdatagroup", ftypes.INT8, nil, nil, nil, "See Market Data Groups Catalog")
omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.message_length = ProtoField.new("Message Length", "bmv.bmvmarketdata.product12.intra.v1.1.messagelength", ftypes.INT16, nil, nil, nil, "Indicates message length contained in this message block")
omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.message_type = ProtoField.new("Message Type", "bmv.bmvmarketdata.product12.intra.v1.1.messagetype", ftypes.UINT8, nil, nil, nil, "Code identifying the message")
omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.sector = ProtoField.new("Sector", "bmv.bmvmarketdata.product12.intra.v1.1.sector", ftypes.INT8, nil, nil, nil, "See Industry Classification on the Connections and Appendix document")
omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.sending_time = ProtoField.new("Sending Time", "bmv.bmvmarketdata.product12.intra.v1.1.sendingtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Recess’s official sending time. Only used when official recess has occurred.")
omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.sending_time_utc = ProtoField.new("Sending Time", "bmv.bmvmarketdata.product12.intra.v1.1.sendingtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Recess’s official sending time. Only used when official recess has occurred.")
omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.sequence_number = ProtoField.new("Sequence Number", "bmv.bmvmarketdata.product12.intra.v1.1.sequencenumber", ftypes.INT32, nil, nil, nil, "Sequence number of the first message attached to header")
omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.series = ProtoField.new("Series", "bmv.bmvmarketdata.product12.intra.v1.1.series", ftypes.STRING, nil, nil, nil, "Series code")
omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.session = ProtoField.new("Session", "bmv.bmvmarketdata.product12.intra.v1.1.session", ftypes.INT8, nil, nil, nil, "Current session identifier")
omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.total_messages = ProtoField.new("Total Messages", "bmv.bmvmarketdata.product12.intra.v1.1.totalmessages", ftypes.INT8, nil, nil, nil, "Number of messages after the header")
omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.type = ProtoField.new("Type", "bmv.bmvmarketdata.product12.intra.v1.1.type", ftypes.STRING, nil, nil, nil, "See Equity’s Indices Components Catalog on the Connections and Appendix document")

-- Bmv BmvMarketData Product12 Intra 1.1 Framing
omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.intra_multicast_header = ProtoField.new("INTRA Multicast Header", "bmv.bmvmarketdata.product12.intra.v1.1.intramulticastheader", ftypes.STRING, nil, nil, nil, "BMV INTRA Multicast Header")
omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.message_block = ProtoField.new("Message Block", "bmv.bmvmarketdata.product12.intra.v1.1.messageblock", ftypes.STRING, nil, nil, nil, "BMV INTRA Multicast message block")
omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.message_header = ProtoField.new("Message Header", "bmv.bmvmarketdata.product12.intra.v1.1.messageheader", ftypes.STRING, nil, nil, nil, "Message length and message type")
omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.packet = ProtoField.new("Packet", "bmv.bmvmarketdata.product12.intra.v1.1.packet", ftypes.STRING, nil, nil, nil, "Bmv INTRA Multicast Udp Packet")

-- Bmv BmvMarketData Product12 1.1 Application Messages
omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.events_system_message = ProtoField.new("Events System Message", "bmv.bmvmarketdata.product12.intra.v1.1.eventssystemmessage", ftypes.STRING, nil, nil, nil, "The system of events message is used to inform that an event has occurred, which needs to be of public domain.")
omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.indices_components_message = ProtoField.new("Indices Components Message", "bmv.bmvmarketdata.product12.intra.v1.1.indicescomponentsmessage", ftypes.STRING, nil, nil, nil, "Indices components obtained during the day.")

-- Bmv BmvMarketData Product12 Intra 1.1 Generated Fields
omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.message_block_index = ProtoField.new("Message Block Index", "bmv.bmvmarketdata.product12.intra.v1.1.messageblockindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Bmv BmvMarketData Product12 Intra 1.1 Formatting
-----------------------------------------------------------------------

-- Text field character encoding (Wireshark ENC_ constant)
bmv_bmvmarketdata_product12_intra_v1_1.text_encoding = ENC_ASCII

-- timestamp format
local timestamp_format_enum = {
  { 1, "Full DateTime Local", 2 },
  { 2, "Full DateTime Utc", 3 }
}

-- 0=Raw, 1=Time of Day, 2=Full DateTime Local, 3=Full DateTime Utc
bmv_bmvmarketdata_product12_intra_v1_1.timestamp_format = 2


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Bmv BmvMarketData Product12 Intra 1.1 Element Dissection Options
show.application_messages = true
show.headers = true
show.structs = true
show.indexes = true

-- Register Bmv BmvMarketData Product12 Intra 1.1 Show Options
omi_bmv_bmvmarketdata_product12_intra_v1_1.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_bmv_bmvmarketdata_product12_intra_v1_1.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_bmv_bmvmarketdata_product12_intra_v1_1.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_bmv_bmvmarketdata_product12_intra_v1_1.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_bmv_bmvmarketdata_product12_intra_v1_1.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Display format for this protocol's timestamps", timestamp_format_enum, false)

-- Handle changed preferences
function omi_bmv_bmvmarketdata_product12_intra_v1_1.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_bmv_bmvmarketdata_product12_intra_v1_1.prefs.show_application_messages then
    show.application_messages = omi_bmv_bmvmarketdata_product12_intra_v1_1.prefs.show_application_messages
  end
  if show.headers ~= omi_bmv_bmvmarketdata_product12_intra_v1_1.prefs.show_headers then
    show.headers = omi_bmv_bmvmarketdata_product12_intra_v1_1.prefs.show_headers
  end
  if show.structs ~= omi_bmv_bmvmarketdata_product12_intra_v1_1.prefs.show_structs then
    show.structs = omi_bmv_bmvmarketdata_product12_intra_v1_1.prefs.show_structs
  end
  if show.indexes ~= omi_bmv_bmvmarketdata_product12_intra_v1_1.prefs.show_indexes then
    show.indexes = omi_bmv_bmvmarketdata_product12_intra_v1_1.prefs.show_indexes
  end
  if bmv_bmvmarketdata_product12_intra_v1_1.timestamp_format ~= omi_bmv_bmvmarketdata_product12_intra_v1_1.prefs.timestamp_format then
    bmv_bmvmarketdata_product12_intra_v1_1.timestamp_format = omi_bmv_bmvmarketdata_product12_intra_v1_1.prefs.timestamp_format
  end
end


-----------------------------------------------------------------------
-- Protocol Functions
-----------------------------------------------------------------------

-- trim trailing spaces
trim_right_spaces = function(str)
  local finish = str:len()

  while finish > 0 and str:byte(finish) == 0x20 do
    finish = finish - 1
  end

  return str:sub(1, finish)
end


-----------------------------------------------------------------------
-- Bmv BmvMarketData Product12 Intra 1.1 Fields
-----------------------------------------------------------------------

-- Closing Price
bmv_bmvmarketdata_product12_intra_v1_1.closing_price = {}

-- Size: Closing Price
bmv_bmvmarketdata_product12_intra_v1_1.closing_price.size = 8

-- Display: Closing Price
bmv_bmvmarketdata_product12_intra_v1_1.closing_price.display = function(value)
  return "Closing Price: "..value
end

-- Translate: Closing Price
bmv_bmvmarketdata_product12_intra_v1_1.closing_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Closing Price
bmv_bmvmarketdata_product12_intra_v1_1.closing_price.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product12_intra_v1_1.closing_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product12_intra_v1_1.closing_price.translate(raw)
  local display = bmv_bmvmarketdata_product12_intra_v1_1.closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.closing_price, range, value, display)

  return offset + length, value
end

-- Component
bmv_bmvmarketdata_product12_intra_v1_1.component = {}

-- Size: Component
bmv_bmvmarketdata_product12_intra_v1_1.component.size = 2

-- Display: Component
bmv_bmvmarketdata_product12_intra_v1_1.component.display = function(value)
  return "Component: "..value
end

-- Dissect: Component
bmv_bmvmarketdata_product12_intra_v1_1.component.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product12_intra_v1_1.component.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_product12_intra_v1_1.component.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.component, range, value, display)

  return offset + length, value
end

-- Date
bmv_bmvmarketdata_product12_intra_v1_1.date = {}

-- Size: Date
bmv_bmvmarketdata_product12_intra_v1_1.date.size = 8

-- Dissect: Date
bmv_bmvmarketdata_product12_intra_v1_1.date.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product12_intra_v1_1.date.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.date
  if bmv_bmvmarketdata_product12_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.date_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Datetime
bmv_bmvmarketdata_product12_intra_v1_1.datetime = {}

-- Size: Datetime
bmv_bmvmarketdata_product12_intra_v1_1.datetime.size = 8

-- Dissect: Datetime
bmv_bmvmarketdata_product12_intra_v1_1.datetime.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product12_intra_v1_1.datetime.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.datetime
  if bmv_bmvmarketdata_product12_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.datetime_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Ending Time
bmv_bmvmarketdata_product12_intra_v1_1.ending_time = {}

-- Size: Ending Time
bmv_bmvmarketdata_product12_intra_v1_1.ending_time.size = 8

-- Dissect: Ending Time
bmv_bmvmarketdata_product12_intra_v1_1.ending_time.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product12_intra_v1_1.ending_time.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.ending_time
  if bmv_bmvmarketdata_product12_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.ending_time_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Event Code
bmv_bmvmarketdata_product12_intra_v1_1.event_code = {}

-- Size: Event Code
bmv_bmvmarketdata_product12_intra_v1_1.event_code.size = 1

-- Display: Event Code
bmv_bmvmarketdata_product12_intra_v1_1.event_code.labels = {
  ["A"] = "Event Code: Start Of System Hours (A)",
  ["B"] = "Event Code: Cancelation Of Offers (B)",
  ["C"] = "Event Code: Start Of Opening Auction (C)",
  ["D"] = "Event Code: Start Of Continuous Market (D)",
  ["E"] = "Event Code: Start Of Wap Period (E)",
  ["F"] = "Event Code: Continuous Market Ends (F)",
  ["G"] = "Event Code: Start Of After Closing Phase (G)",
  ["H"] = "Event Code: It Ends After Closing (H)",
  ["J"] = "Event Code: Transmission Of Final Prices Ends (J)",
  ["K"] = "Event Code: End Of System Hours (K)",
  ["M"] = "Event Code: Start Of Administrative Recess (M)",
  ["N"] = "Event Code: End Of Administrative Recess (N)",
  ["O"] = "Event Code: Start Dvmamx Markets (O)",
  ["P"] = "Event Code: End Of Dvma Markets (P)",
  ["Q"] = "Event Code: End Of Mx Markets (Q)",
  ["R"] = "Event Code: Start Of Opc Modality (R)",
  ["S"] = "Event Code: End Of Opc Modality (S)",
  ["T"] = "Event Code: Start Of Settlement Auction (T)",
  ["U"] = "Event Code: End Of Settlement Auction (U)",
  ["V"] = "Event Code: Final Register Of Settlement Prices (V)",
  ["W"] = "Event Code: Open Interest (W)",
}

bmv_bmvmarketdata_product12_intra_v1_1.event_code.display = function(value)
  return bmv_bmvmarketdata_product12_intra_v1_1.event_code.labels[value] or "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
bmv_bmvmarketdata_product12_intra_v1_1.event_code.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product12_intra_v1_1.event_code.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product12_intra_v1_1.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.event_code, range, value, display)

  return offset + length, value
end

-- Indices Stocks
bmv_bmvmarketdata_product12_intra_v1_1.indices_stocks = {}

-- Size: Indices Stocks
bmv_bmvmarketdata_product12_intra_v1_1.indices_stocks.size = 8

-- Display: Indices Stocks
bmv_bmvmarketdata_product12_intra_v1_1.indices_stocks.display = function(value)
  return "Indices Stocks: "..value
end

-- Dissect: Indices Stocks
bmv_bmvmarketdata_product12_intra_v1_1.indices_stocks.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product12_intra_v1_1.indices_stocks.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = bmv_bmvmarketdata_product12_intra_v1_1.indices_stocks.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.indices_stocks, range, value, display)

  return offset + length, value
end

-- Influence
bmv_bmvmarketdata_product12_intra_v1_1.influence = {}

-- Size: Influence
bmv_bmvmarketdata_product12_intra_v1_1.influence.size = 8

-- Display: Influence
bmv_bmvmarketdata_product12_intra_v1_1.influence.display = function(value)
  return "Influence: "..value
end

-- Translate: Influence
bmv_bmvmarketdata_product12_intra_v1_1.influence.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Influence
bmv_bmvmarketdata_product12_intra_v1_1.influence.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product12_intra_v1_1.influence.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product12_intra_v1_1.influence.translate(raw)
  local display = bmv_bmvmarketdata_product12_intra_v1_1.influence.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.influence, range, value, display)

  return offset + length, value
end

-- Instrument Number
bmv_bmvmarketdata_product12_intra_v1_1.instrument_number = {}

-- Size: Instrument Number
bmv_bmvmarketdata_product12_intra_v1_1.instrument_number.size = 4

-- Display: Instrument Number
bmv_bmvmarketdata_product12_intra_v1_1.instrument_number.display = function(value)
  return "Instrument Number: "..value
end

-- Dissect: Instrument Number
bmv_bmvmarketdata_product12_intra_v1_1.instrument_number.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product12_intra_v1_1.instrument_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product12_intra_v1_1.instrument_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.instrument_number, range, value, display)

  return offset + length, value
end

-- Issuer
bmv_bmvmarketdata_product12_intra_v1_1.issuer = {}

-- Size: Issuer
bmv_bmvmarketdata_product12_intra_v1_1.issuer.size = 7

-- Display: Issuer
bmv_bmvmarketdata_product12_intra_v1_1.issuer.display = function(value)
  return "Issuer: "..value
end

-- Dissect: Issuer
bmv_bmvmarketdata_product12_intra_v1_1.issuer.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product12_intra_v1_1.issuer.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_product12_intra_v1_1.issuer.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.issuer, range, value, display)

  return offset + length, value
end

-- Last Price
bmv_bmvmarketdata_product12_intra_v1_1.last_price = {}

-- Size: Last Price
bmv_bmvmarketdata_product12_intra_v1_1.last_price.size = 8

-- Display: Last Price
bmv_bmvmarketdata_product12_intra_v1_1.last_price.display = function(value)
  return "Last Price: "..value
end

-- Translate: Last Price
bmv_bmvmarketdata_product12_intra_v1_1.last_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Last Price
bmv_bmvmarketdata_product12_intra_v1_1.last_price.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product12_intra_v1_1.last_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product12_intra_v1_1.last_price.translate(raw)
  local display = bmv_bmvmarketdata_product12_intra_v1_1.last_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.last_price, range, value, display)

  return offset + length, value
end

-- Length
bmv_bmvmarketdata_product12_intra_v1_1.length = {}

-- Size: Length
bmv_bmvmarketdata_product12_intra_v1_1.length.size = 2

-- Display: Length
bmv_bmvmarketdata_product12_intra_v1_1.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
bmv_bmvmarketdata_product12_intra_v1_1.length.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product12_intra_v1_1.length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product12_intra_v1_1.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.length, range, value, display)

  return offset + length, value
end

-- Market
bmv_bmvmarketdata_product12_intra_v1_1.market = {}

-- Size: Market
bmv_bmvmarketdata_product12_intra_v1_1.market.size = 1

-- Display: Market
bmv_bmvmarketdata_product12_intra_v1_1.market.display = function(value)
  if value == "L" then
    return "Market: Local (L)"
  end
  if value == "G" then
    return "Market: Global (G)"
  end
  if value == "D" then
    return "Market: Local Debt (D)"
  end
  if value == "F" then
    return "Market: Global Debt (F)"
  end
  if value == "E" then
    return "Market: Money (E)"
  end
  if value == "M" then
    return "Market: Dollar Option Market (M)"
  end
  if value == "X" then
    return "Market: Stock Market (X)"
  end
  if value == "V" then
    return "Market: Forex And Rates Market (V)"
  end
  if value == "J" then
    return "Market: Fixed Income (J)"
  end
  if value == "B" then
    return "Market: Variable Income (B)"
  end
  if value == "T" then
    return "Market: Metals (T)"
  end
  if value == "I" then
    return "Market: Mutual Funds (I)"
  end
  if value == "W" then
    return "Market: Warrants (W)"
  end
  if value == " " then
    return "Market: All Markets (<whitespace>)"
  end

  return "Market: Unknown("..value..")"
end

-- Dissect: Market
bmv_bmvmarketdata_product12_intra_v1_1.market.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product12_intra_v1_1.market.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product12_intra_v1_1.market.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.market, range, value, display)

  return offset + length, value
end

-- Market Data Group
bmv_bmvmarketdata_product12_intra_v1_1.market_data_group = {}

-- Size: Market Data Group
bmv_bmvmarketdata_product12_intra_v1_1.market_data_group.size = 1

-- Display: Market Data Group
bmv_bmvmarketdata_product12_intra_v1_1.market_data_group.labels = {
  [1] = "Market Data Group: Indepth Local Market (1)",
  [2] = "Market Data Group: Indepth Global Market (2)",
  [3] = "Market Data Group: Twenty Price Levels Of Local Market (3)",
  [4] = "Market Data Group: Twenty Price Levels Of Global Market (4)",
  [5] = "Market Data Group: Best Offers Of Local Market (5)",
  [6] = "Market Data Group: Best Offers Of Global Market (6)",
  [7] = "Market Data Group: Ten Price Levels Of Derivative Futures (7)",
  [8] = "Market Data Group: Ten Price Levels Of Derivative Options (8)",
  [9] = "Market Data Group: Best Offers For Derivative Futures (9)",
  [10] = "Market Data Group: Best Offers For Derivative Options (10)",
  [11] = "Market Data Group: Money Market (11)",
  [12] = "Market Data Group: Indices Components (12)",
  [13] = "Market Data Group: Level Of Indices (13)",
  [14] = "Market Data Group: Levels Of Inavs (14)",
  [15] = "Market Data Group: Indepth Local And Global Market (15)",
  [16] = "Market Data Group: Twenty Price Levels Of Local And Global Market (16)",
  [17] = "Market Data Group: Best Offers Of Local And Global Market With Money Market (17)",
  [18] = "Market Data Group: Twenty Price Levels Of Local And Global Market Indices Components Level Of Indices And Levels Of Inavs (18)",
  [19] = "Market Data Group: Ten Price Levels Of Derivate Futures And Derivative Options (19)",
  [20] = "Market Data Group: Best Offers For Derivative Futures And Derivative Options (20)",
  [21] = "Market Data Group: Added Value With Benchmark (21)",
  [22] = "Market Data Group: Added Value With Capitalization Rules (22)",
  [23] = "Market Data Group: Indices Levels With Delay (23)",
  [24] = "Market Data Group: Local And Global Market With Money Market Best Positions With Delay (24)",
  [25] = "Market Data Group: Equities Market Trades Consolidated Feed (25)",
  [26] = "Market Data Group: Best Bid Of The Equities Market Consolidated Feed (26)",
  [27] = "Market Data Group: Full Depth Consolidated Feed (27)",
  [28] = "Market Data Group: Closing Price Origin (28)",
  [29] = "Market Data Group: Analytics Price And Market Depth (29)",
  [32] = "Market Data Group: Analytics Market Quality (32)",
  [33] = "Market Data Group: Analytics Spead Performance (33)",
  [34] = "Market Data Group: Analytics Negotiation (34)",
  [40] = "Market Data Group: Channel Zero Catalogs (40)",
}

bmv_bmvmarketdata_product12_intra_v1_1.market_data_group.display = function(value)
  return bmv_bmvmarketdata_product12_intra_v1_1.market_data_group.labels[value] or "Market Data Group: Unknown("..value..")"
end

-- Dissect: Market Data Group
bmv_bmvmarketdata_product12_intra_v1_1.market_data_group.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product12_intra_v1_1.market_data_group.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product12_intra_v1_1.market_data_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.market_data_group, range, value, display)

  return offset + length, value
end

-- Message Length
bmv_bmvmarketdata_product12_intra_v1_1.message_length = {}

-- Size: Message Length
bmv_bmvmarketdata_product12_intra_v1_1.message_length.size = 2

-- Display: Message Length
bmv_bmvmarketdata_product12_intra_v1_1.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
bmv_bmvmarketdata_product12_intra_v1_1.message_length.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product12_intra_v1_1.message_length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product12_intra_v1_1.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
bmv_bmvmarketdata_product12_intra_v1_1.message_type = {}

-- Size: Message Type
bmv_bmvmarketdata_product12_intra_v1_1.message_type.size = 1

-- Display: Message Type
bmv_bmvmarketdata_product12_intra_v1_1.message_type.display = function(value)
  return "Message Type: "..value
end

-- Dissect: Message Type
bmv_bmvmarketdata_product12_intra_v1_1.message_type.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product12_intra_v1_1.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bmv_bmvmarketdata_product12_intra_v1_1.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.message_type, range, value, display)

  return offset + length, value
end

-- Sector
bmv_bmvmarketdata_product12_intra_v1_1.sector = {}

-- Size: Sector
bmv_bmvmarketdata_product12_intra_v1_1.sector.size = 1

-- Display: Sector
bmv_bmvmarketdata_product12_intra_v1_1.sector.display = function(value)
  return "Sector: "..value
end

-- Dissect: Sector
bmv_bmvmarketdata_product12_intra_v1_1.sector.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product12_intra_v1_1.sector.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product12_intra_v1_1.sector.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.sector, range, value, display)

  return offset + length, value
end

-- Sending Time
bmv_bmvmarketdata_product12_intra_v1_1.sending_time = {}

-- Size: Sending Time
bmv_bmvmarketdata_product12_intra_v1_1.sending_time.size = 8

-- Dissect: Sending Time
bmv_bmvmarketdata_product12_intra_v1_1.sending_time.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product12_intra_v1_1.sending_time.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.sending_time
  if bmv_bmvmarketdata_product12_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.sending_time_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Sequence Number
bmv_bmvmarketdata_product12_intra_v1_1.sequence_number = {}

-- Size: Sequence Number
bmv_bmvmarketdata_product12_intra_v1_1.sequence_number.size = 4

-- Display: Sequence Number
bmv_bmvmarketdata_product12_intra_v1_1.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
bmv_bmvmarketdata_product12_intra_v1_1.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product12_intra_v1_1.sequence_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product12_intra_v1_1.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Series
bmv_bmvmarketdata_product12_intra_v1_1.series = {}

-- Size: Series
bmv_bmvmarketdata_product12_intra_v1_1.series.size = 6

-- Display: Series
bmv_bmvmarketdata_product12_intra_v1_1.series.display = function(value)
  return "Series: "..value
end

-- Dissect: Series
bmv_bmvmarketdata_product12_intra_v1_1.series.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product12_intra_v1_1.series.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_product12_intra_v1_1.series.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.series, range, value, display)

  return offset + length, value
end

-- Session
bmv_bmvmarketdata_product12_intra_v1_1.session = {}

-- Size: Session
bmv_bmvmarketdata_product12_intra_v1_1.session.size = 1

-- Display: Session
bmv_bmvmarketdata_product12_intra_v1_1.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
bmv_bmvmarketdata_product12_intra_v1_1.session.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product12_intra_v1_1.session.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product12_intra_v1_1.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.session, range, value, display)

  return offset + length, value
end

-- Total Messages
bmv_bmvmarketdata_product12_intra_v1_1.total_messages = {}

-- Size: Total Messages
bmv_bmvmarketdata_product12_intra_v1_1.total_messages.size = 1

-- Display: Total Messages
bmv_bmvmarketdata_product12_intra_v1_1.total_messages.display = function(value)
  return "Total Messages: "..value
end

-- Dissect: Total Messages
bmv_bmvmarketdata_product12_intra_v1_1.total_messages.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product12_intra_v1_1.total_messages.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product12_intra_v1_1.total_messages.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.total_messages, range, value, display)

  return offset + length, value
end

-- Type
bmv_bmvmarketdata_product12_intra_v1_1.type = {}

-- Size: Type
bmv_bmvmarketdata_product12_intra_v1_1.type.size = 1

-- Display: Type
bmv_bmvmarketdata_product12_intra_v1_1.type.labels = {
  ["E"] = "Type: Equity (E)",
  ["S"] = "Type: Strategy (S)",
  ["G"] = "Type: Spbmvesg (G)",
}

bmv_bmvmarketdata_product12_intra_v1_1.type.display = function(value)
  return bmv_bmvmarketdata_product12_intra_v1_1.type.labels[value] or "Type: Unknown("..value..")"
end

-- Dissect: Type
bmv_bmvmarketdata_product12_intra_v1_1.type.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product12_intra_v1_1.type.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product12_intra_v1_1.type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.type, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Bmv BmvMarketData Product12 Intra 1.1
-----------------------------------------------------------------------

-- Indices Components Message
bmv_bmvmarketdata_product12_intra_v1_1.indices_components_message = {}

-- Size: Indices Components Message
bmv_bmvmarketdata_product12_intra_v1_1.indices_components_message.size =
  bmv_bmvmarketdata_product12_intra_v1_1.date.size + 
  bmv_bmvmarketdata_product12_intra_v1_1.component.size + 
  bmv_bmvmarketdata_product12_intra_v1_1.sector.size + 
  bmv_bmvmarketdata_product12_intra_v1_1.type.size + 
  bmv_bmvmarketdata_product12_intra_v1_1.issuer.size + 
  bmv_bmvmarketdata_product12_intra_v1_1.series.size + 
  bmv_bmvmarketdata_product12_intra_v1_1.indices_stocks.size + 
  bmv_bmvmarketdata_product12_intra_v1_1.last_price.size + 
  bmv_bmvmarketdata_product12_intra_v1_1.closing_price.size + 
  bmv_bmvmarketdata_product12_intra_v1_1.influence.size

-- Display: Indices Components Message
bmv_bmvmarketdata_product12_intra_v1_1.indices_components_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Indices Components Message
bmv_bmvmarketdata_product12_intra_v1_1.indices_components_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Date: Timestamp(1)
  index, date = bmv_bmvmarketdata_product12_intra_v1_1.date.dissect(buffer, index, packet, parent)

  -- Component: ALPHA
  index, component = bmv_bmvmarketdata_product12_intra_v1_1.component.dissect(buffer, index, packet, parent)

  -- Sector: Int8
  index, sector = bmv_bmvmarketdata_product12_intra_v1_1.sector.dissect(buffer, index, packet, parent)

  -- Type: ALPHA
  index, type = bmv_bmvmarketdata_product12_intra_v1_1.type.dissect(buffer, index, packet, parent)

  -- Issuer: ALPHA
  index, issuer = bmv_bmvmarketdata_product12_intra_v1_1.issuer.dissect(buffer, index, packet, parent)

  -- Series: ALPHA
  index, series = bmv_bmvmarketdata_product12_intra_v1_1.series.dissect(buffer, index, packet, parent)

  -- Indices Stocks: Int64
  index, indices_stocks = bmv_bmvmarketdata_product12_intra_v1_1.indices_stocks.dissect(buffer, index, packet, parent)

  -- Last Price: Price (8)
  index, last_price = bmv_bmvmarketdata_product12_intra_v1_1.last_price.dissect(buffer, index, packet, parent)

  -- Closing Price: Price (8)
  index, closing_price = bmv_bmvmarketdata_product12_intra_v1_1.closing_price.dissect(buffer, index, packet, parent)

  -- Influence: Price (8)
  index, influence = bmv_bmvmarketdata_product12_intra_v1_1.influence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Indices Components Message
bmv_bmvmarketdata_product12_intra_v1_1.indices_components_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.indices_components_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product12_intra_v1_1.indices_components_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product12_intra_v1_1.indices_components_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product12_intra_v1_1.indices_components_message.fields(buffer, offset, packet, parent)
  end
end

-- Events System Message
bmv_bmvmarketdata_product12_intra_v1_1.events_system_message = {}

-- Size: Events System Message
bmv_bmvmarketdata_product12_intra_v1_1.events_system_message.size =
  bmv_bmvmarketdata_product12_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_product12_intra_v1_1.event_code.size + 
  bmv_bmvmarketdata_product12_intra_v1_1.market.size + 
  bmv_bmvmarketdata_product12_intra_v1_1.sending_time.size + 
  bmv_bmvmarketdata_product12_intra_v1_1.ending_time.size

-- Display: Events System Message
bmv_bmvmarketdata_product12_intra_v1_1.events_system_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Events System Message
bmv_bmvmarketdata_product12_intra_v1_1.events_system_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_product12_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Event Code: ALPHA
  index, event_code = bmv_bmvmarketdata_product12_intra_v1_1.event_code.dissect(buffer, index, packet, parent)

  -- Market: ALPHA
  index, market = bmv_bmvmarketdata_product12_intra_v1_1.market.dissect(buffer, index, packet, parent)

  -- Sending Time: Timestamp(2)
  index, sending_time = bmv_bmvmarketdata_product12_intra_v1_1.sending_time.dissect(buffer, index, packet, parent)

  -- Ending Time: Timestamp(2)
  index, ending_time = bmv_bmvmarketdata_product12_intra_v1_1.ending_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Events System Message
bmv_bmvmarketdata_product12_intra_v1_1.events_system_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.events_system_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product12_intra_v1_1.events_system_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product12_intra_v1_1.events_system_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product12_intra_v1_1.events_system_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
bmv_bmvmarketdata_product12_intra_v1_1.payload = {}

-- Dissect: Payload
bmv_bmvmarketdata_product12_intra_v1_1.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Events System Message
  if message_type == 0x53 then
    return bmv_bmvmarketdata_product12_intra_v1_1.events_system_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Indices Components Message
  if message_type == 0x57 then
    return bmv_bmvmarketdata_product12_intra_v1_1.indices_components_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
bmv_bmvmarketdata_product12_intra_v1_1.message_header = {}

-- Size: Message Header
bmv_bmvmarketdata_product12_intra_v1_1.message_header.size =
  bmv_bmvmarketdata_product12_intra_v1_1.message_length.size + 
  bmv_bmvmarketdata_product12_intra_v1_1.message_type.size

-- Display: Message Header
bmv_bmvmarketdata_product12_intra_v1_1.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
bmv_bmvmarketdata_product12_intra_v1_1.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: Int16
  index, message_length = bmv_bmvmarketdata_product12_intra_v1_1.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: ALPHA
  index, message_type = bmv_bmvmarketdata_product12_intra_v1_1.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
bmv_bmvmarketdata_product12_intra_v1_1.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.message_header, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product12_intra_v1_1.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product12_intra_v1_1.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product12_intra_v1_1.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message Block
bmv_bmvmarketdata_product12_intra_v1_1.message_block = {}

-- Display: Message Block
bmv_bmvmarketdata_product12_intra_v1_1.message_block.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Block
bmv_bmvmarketdata_product12_intra_v1_1.message_block.fields = function(buffer, offset, packet, parent, size_of_message_block, message_block_index)
  local index = offset

  -- Implicit Message Block Index
  if message_block_index ~= nil and show.indexes then
    local iteration = parent:add(omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.message_block_index, message_block_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = bmv_bmvmarketdata_product12_intra_v1_1.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):uint()

  -- Payload: Runtime Type with 2 branches
  index = bmv_bmvmarketdata_product12_intra_v1_1.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message Block
bmv_bmvmarketdata_product12_intra_v1_1.message_block.dissect = function(buffer, offset, packet, parent, size_of_message_block, message_block_index)
  local index = offset + size_of_message_block

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.message_block, buffer(offset, 0))
    local current = bmv_bmvmarketdata_product12_intra_v1_1.message_block.fields(buffer, offset, packet, parent, size_of_message_block, message_block_index)
    parent:set_len(size_of_message_block)
    local display = bmv_bmvmarketdata_product12_intra_v1_1.message_block.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bmv_bmvmarketdata_product12_intra_v1_1.message_block.fields(buffer, offset, packet, parent, size_of_message_block, message_block_index)

    return index
  end
end

-- INTRA Multicast Header
bmv_bmvmarketdata_product12_intra_v1_1.intra_multicast_header = {}

-- Size: INTRA Multicast Header
bmv_bmvmarketdata_product12_intra_v1_1.intra_multicast_header.size =
  bmv_bmvmarketdata_product12_intra_v1_1.length.size + 
  bmv_bmvmarketdata_product12_intra_v1_1.total_messages.size + 
  bmv_bmvmarketdata_product12_intra_v1_1.market_data_group.size + 
  bmv_bmvmarketdata_product12_intra_v1_1.session.size + 
  bmv_bmvmarketdata_product12_intra_v1_1.sequence_number.size + 
  bmv_bmvmarketdata_product12_intra_v1_1.datetime.size

-- Display: INTRA Multicast Header
bmv_bmvmarketdata_product12_intra_v1_1.intra_multicast_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: INTRA Multicast Header
bmv_bmvmarketdata_product12_intra_v1_1.intra_multicast_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: Int16
  index, length = bmv_bmvmarketdata_product12_intra_v1_1.length.dissect(buffer, index, packet, parent)

  -- Total Messages: Int8
  index, total_messages = bmv_bmvmarketdata_product12_intra_v1_1.total_messages.dissect(buffer, index, packet, parent)

  -- Market Data Group: Int8
  index, market_data_group = bmv_bmvmarketdata_product12_intra_v1_1.market_data_group.dissect(buffer, index, packet, parent)

  -- Session: Int8
  index, session = bmv_bmvmarketdata_product12_intra_v1_1.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: Int32
  index, sequence_number = bmv_bmvmarketdata_product12_intra_v1_1.sequence_number.dissect(buffer, index, packet, parent)

  -- Datetime: Timestamp(3)
  index, datetime = bmv_bmvmarketdata_product12_intra_v1_1.datetime.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: INTRA Multicast Header
bmv_bmvmarketdata_product12_intra_v1_1.intra_multicast_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product12_intra_v1_1.fields.intra_multicast_header, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product12_intra_v1_1.intra_multicast_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product12_intra_v1_1.intra_multicast_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product12_intra_v1_1.intra_multicast_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
bmv_bmvmarketdata_product12_intra_v1_1.packet = {}

-- Verify required size of Udp packet
bmv_bmvmarketdata_product12_intra_v1_1.packet.requiredsize = function(buffer)
  return buffer:len() >= bmv_bmvmarketdata_product12_intra_v1_1.intra_multicast_header.size
end

-- Dissect Packet
bmv_bmvmarketdata_product12_intra_v1_1.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- INTRA Multicast Header: Struct of 6 fields
  index, intra_multicast_header = bmv_bmvmarketdata_product12_intra_v1_1.intra_multicast_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message Block
  local end_of_payload = buffer:len()

  -- Message Block: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):int()

    -- Runtime Size Of: Message Block
    local size_of_message_block = message_length + 2

    -- Message Block: Struct of 2 fields
    index, message_block = bmv_bmvmarketdata_product12_intra_v1_1.message_block.dissect(buffer, index, packet, parent, size_of_message_block, message_block_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_bmv_bmvmarketdata_product12_intra_v1_1.init()
end

-- Dissector for Bmv BmvMarketData Product12 Intra 1.1
function omi_bmv_bmvmarketdata_product12_intra_v1_1.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_bmv_bmvmarketdata_product12_intra_v1_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_bmv_bmvmarketdata_product12_intra_v1_1, buffer(), omi_bmv_bmvmarketdata_product12_intra_v1_1.description, "("..buffer:len().." Bytes)")
  return bmv_bmvmarketdata_product12_intra_v1_1.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
bmv_bmvmarketdata_product12_intra_v1_1.packet.fingerprint = function(buffer)
  if buffer:len() < 20 then
    return false
  end

  local message_type = buffer(19, 1):uint()

  -- Events System Message
  if message_type == 0x53 then
    return true
  end

  -- Indices Components Message
  if message_type == 0x57 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Bmv BmvMarketData Product12 Intra 1.1 (Udp)
local function omi_bmv_bmvmarketdata_product12_intra_v1_1_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not bmv_bmvmarketdata_product12_intra_v1_1.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this udp packet message dispatch
  if not bmv_bmvmarketdata_product12_intra_v1_1.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_bmv_bmvmarketdata_product12_intra_v1_1
  omi_bmv_bmvmarketdata_product12_intra_v1_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Bmv BmvMarketData Product12 Intra 1.1
omi_bmv_bmvmarketdata_product12_intra_v1_1:register_heuristic("udp", omi_bmv_bmvmarketdata_product12_intra_v1_1_udp_heuristic)

-- Register Bmv BmvMarketData Product12 Intra 1.1 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_bmv_bmvmarketdata_product12_intra_v1_1)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Bolsa Mexicana de Valores
--   Version: 1.1
--   Specification: Market Data Multicast_P12_1_ENG.pdf
--   Specification: Connection_Appendix_6.pdf
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
