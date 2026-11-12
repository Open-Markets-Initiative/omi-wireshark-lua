-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Bmv BmvMarketData Product37 Intra 1.1 Protocol
local omi_bmv_bmvmarketdata_product37_intra_v1_1 = Proto("Omi.Bmv.BmvMarketData.Product37.Intra.v1.1", "Bmv BmvMarketData Product37 Intra 1.1")

-- Protocol table
local bmv_bmvmarketdata_product37_intra_v1_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Bmv BmvMarketData Product37 Intra 1.1 Fields
omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.date = ProtoField.new("Date", "bmv.bmvmarketdata.product37.intra.v1.1.date", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Addition order date")
omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.date_utc = ProtoField.new("Date", "bmv.bmvmarketdata.product37.intra.v1.1.date.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Addition order date")
omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.date_and_hour = ProtoField.new("Date And Hour", "bmv.bmvmarketdata.product37.intra.v1.1.dateandhour", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date and time for the order adition")
omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.date_and_hour_utc = ProtoField.new("Date And Hour", "bmv.bmvmarketdata.product37.intra.v1.1.dateandhour.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date and time for the order adition")
omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.datetime = ProtoField.new("Datetime", "bmv.bmvmarketdata.product37.intra.v1.1.datetime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date and time the packet is created")
omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.datetime_utc = ProtoField.new("Datetime", "bmv.bmvmarketdata.product37.intra.v1.1.datetime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date and time the packet is created")
omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.direction = ProtoField.new("Direction", "bmv.bmvmarketdata.product37.intra.v1.1.direction", ftypes.STRING, nil, nil, nil, "C - Bid V - Ask")
omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.execution_price = ProtoField.new("Execution Price", "bmv.bmvmarketdata.product37.intra.v1.1.executionprice", ftypes.DOUBLE, nil, nil, nil, "Price")
omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.folio = ProtoField.new("Folio", "bmv.bmvmarketdata.product37.intra.v1.1.folio", ftypes.INT32, nil, nil, nil, "Assigned number to the order when registered")
omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.id_instrument = ProtoField.new("Id Instrument", "bmv.bmvmarketdata.product37.intra.v1.1.idinstrument", ftypes.INT32, nil, nil, nil, "Unique code during instrument life")
omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.length = ProtoField.new("Length", "bmv.bmvmarketdata.product37.intra.v1.1.length", ftypes.INT16, nil, nil, nil, "Packet length, including header and all attached messages")
omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.market_data_group = ProtoField.new("Market Data Group", "bmv.bmvmarketdata.product37.intra.v1.1.marketdatagroup", ftypes.INT8, nil, nil, nil, "See Market Data Groups Catalog")
omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.message_length = ProtoField.new("Message Length", "bmv.bmvmarketdata.product37.intra.v1.1.messagelength", ftypes.INT16, nil, nil, nil, "Indicates message length contained in this message block")
omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.message_type = ProtoField.new("Message Type", "bmv.bmvmarketdata.product37.intra.v1.1.messagetype", ftypes.UINT16, nil, nil, nil, "Code identifying the message")
omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.new_date = ProtoField.new("New Date", "bmv.bmvmarketdata.product37.intra.v1.1.newdate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "New date and time of the order")
omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.new_date_utc = ProtoField.new("New Date", "bmv.bmvmarketdata.product37.intra.v1.1.newdate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "New date and time of the order")
omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.new_folio = ProtoField.new("New Folio", "bmv.bmvmarketdata.product37.intra.v1.1.newfolio", ftypes.INT32, nil, nil, nil, "New Folio of the order")
omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.operation_type = ProtoField.new("Operation Type", "bmv.bmvmarketdata.product37.intra.v1.1.operationtype", ftypes.STRING, nil, nil, nil, "Operation type, see operation type table in page 2")
omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.original_date = ProtoField.new("Original Date", "bmv.bmvmarketdata.product37.intra.v1.1.originaldate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date and time of the original order")
omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.original_date_utc = ProtoField.new("Original Date", "bmv.bmvmarketdata.product37.intra.v1.1.originaldate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date and time of the original order")
omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.original_folio = ProtoField.new("Original Folio", "bmv.bmvmarketdata.product37.intra.v1.1.originalfolio", ftypes.INT32, nil, nil, nil, "Folio of the original order")
omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.participant = ProtoField.new("Participant", "bmv.bmvmarketdata.product37.intra.v1.1.participant", ftypes.STRING, nil, nil, nil, "Short key of participant (empty field)")
omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.price = ProtoField.new("Price", "bmv.bmvmarketdata.product37.intra.v1.1.price", ftypes.DOUBLE, nil, nil, nil, "Order price")
omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.sequence_number = ProtoField.new("Sequence Number", "bmv.bmvmarketdata.product37.intra.v1.1.sequencenumber", ftypes.INT32, nil, nil, nil, "Sequence number of the first message attached to header")
omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.session = ProtoField.new("Session", "bmv.bmvmarketdata.product37.intra.v1.1.session", ftypes.INT8, nil, nil, nil, "Current session identifier")
omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.total_messages = ProtoField.new("Total Messages", "bmv.bmvmarketdata.product37.intra.v1.1.totalmessages", ftypes.INT8, nil, nil, nil, "Number of messages after the header")
omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.trade_number = ProtoField.new("Trade Number", "bmv.bmvmarketdata.product37.intra.v1.1.tradenumber", ftypes.INT32)
omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.volume = ProtoField.new("Volume", "bmv.bmvmarketdata.product37.intra.v1.1.volume", ftypes.INT32, nil, nil, nil, "Order Volume")

-- Bmv BmvMarketData Product37 Intra 1.1 Framing
omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.intra_multicast_header = ProtoField.new("INTRA Multicast Header", "bmv.bmvmarketdata.product37.intra.v1.1.intramulticastheader", ftypes.STRING, nil, nil, nil, "BMV INTRA Multicast Header")
omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.message_block = ProtoField.new("Message Block", "bmv.bmvmarketdata.product37.intra.v1.1.messageblock", ftypes.STRING, nil, nil, nil, "BMV INTRA Multicast message block")
omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.message_header = ProtoField.new("Message Header", "bmv.bmvmarketdata.product37.intra.v1.1.messageheader", ftypes.STRING, nil, nil, nil, "Message length and message type")
omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.packet = ProtoField.new("Packet", "bmv.bmvmarketdata.product37.intra.v1.1.packet", ftypes.STRING, nil, nil, nil, "Bmv INTRA Multicast Udp Packet")

-- Bmv BmvMarketData Product37 1.1 Application Messages
omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.execution_of_orders_message = ProtoField.new("Execution Of Orders Message", "bmv.bmvmarketdata.product37.intra.v1.1.executionofordersmessage", ftypes.STRING, nil, nil, nil, "The message is disseminated as soon as there is a match in the BMV's electronic system.")
omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.order_adition_message = ProtoField.new("Order Adition Message", "bmv.bmvmarketdata.product37.intra.v1.1.orderaditionmessage", ftypes.STRING, nil, nil, nil, "When the order is accepted by the BMV central system, this message is disseminated to the relevant media.")
omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.order_cancellation_message = ProtoField.new("Order Cancellation Message", "bmv.bmvmarketdata.product37.intra.v1.1.ordercancellationmessage", ftypes.STRING, nil, nil, nil, "This message indicates the fully elimination of an order in the trading floor")
omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.order_change_message = ProtoField.new("Order Change Message", "bmv.bmvmarketdata.product37.intra.v1.1.orderchangemessage", ftypes.STRING, nil, nil, nil, "Message sent when the order modifies any of its data, the system assigns it a new priority in the electronic book, the order to be replaced is identified with the original Instrument, Date, and Folio, and the new priority assignment in the electronic book appears in the New Date and Folio fields.")

-- Bmv BmvMarketData Product37 Intra 1.1 Generated Fields
omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.message_block_index = ProtoField.new("Message Block Index", "bmv.bmvmarketdata.product37.intra.v1.1.messageblockindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Bmv BmvMarketData Product37 Intra 1.1 Formatting
-----------------------------------------------------------------------

-- Text field character encoding (Wireshark ENC_ constant)
bmv_bmvmarketdata_product37_intra_v1_1.text_encoding = ENC_ASCII

-- timestamp format
local timestamp_format_enum = {
  { 1, "Full DateTime Local", 2 },
  { 2, "Full DateTime Utc", 3 }
}

-- 0=Raw, 1=Time of Day, 2=Full DateTime Local, 3=Full DateTime Utc
bmv_bmvmarketdata_product37_intra_v1_1.timestamp_format = 2


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Bmv BmvMarketData Product37 Intra 1.1 Element Dissection Options
show.application_messages = true
show.headers = true
show.structs = true
show.indexes = true

-- Register Bmv BmvMarketData Product37 Intra 1.1 Show Options
omi_bmv_bmvmarketdata_product37_intra_v1_1.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_bmv_bmvmarketdata_product37_intra_v1_1.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_bmv_bmvmarketdata_product37_intra_v1_1.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_bmv_bmvmarketdata_product37_intra_v1_1.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_bmv_bmvmarketdata_product37_intra_v1_1.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Display format for this protocol's timestamps", timestamp_format_enum, false)

-- Handle changed preferences
function omi_bmv_bmvmarketdata_product37_intra_v1_1.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_bmv_bmvmarketdata_product37_intra_v1_1.prefs.show_application_messages then
    show.application_messages = omi_bmv_bmvmarketdata_product37_intra_v1_1.prefs.show_application_messages
  end
  if show.headers ~= omi_bmv_bmvmarketdata_product37_intra_v1_1.prefs.show_headers then
    show.headers = omi_bmv_bmvmarketdata_product37_intra_v1_1.prefs.show_headers
  end
  if show.structs ~= omi_bmv_bmvmarketdata_product37_intra_v1_1.prefs.show_structs then
    show.structs = omi_bmv_bmvmarketdata_product37_intra_v1_1.prefs.show_structs
  end
  if show.indexes ~= omi_bmv_bmvmarketdata_product37_intra_v1_1.prefs.show_indexes then
    show.indexes = omi_bmv_bmvmarketdata_product37_intra_v1_1.prefs.show_indexes
  end
  if bmv_bmvmarketdata_product37_intra_v1_1.timestamp_format ~= omi_bmv_bmvmarketdata_product37_intra_v1_1.prefs.timestamp_format then
    bmv_bmvmarketdata_product37_intra_v1_1.timestamp_format = omi_bmv_bmvmarketdata_product37_intra_v1_1.prefs.timestamp_format
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
-- Bmv BmvMarketData Product37 Intra 1.1 Fields
-----------------------------------------------------------------------

-- Date
bmv_bmvmarketdata_product37_intra_v1_1.date = {}

-- Size: Date
bmv_bmvmarketdata_product37_intra_v1_1.date.size = 8

-- Dissect: Date
bmv_bmvmarketdata_product37_intra_v1_1.date.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product37_intra_v1_1.date.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.date
  if bmv_bmvmarketdata_product37_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.date_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Date And Hour
bmv_bmvmarketdata_product37_intra_v1_1.date_and_hour = {}

-- Size: Date And Hour
bmv_bmvmarketdata_product37_intra_v1_1.date_and_hour.size = 8

-- Dissect: Date And Hour
bmv_bmvmarketdata_product37_intra_v1_1.date_and_hour.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product37_intra_v1_1.date_and_hour.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.date_and_hour
  if bmv_bmvmarketdata_product37_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.date_and_hour_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Datetime
bmv_bmvmarketdata_product37_intra_v1_1.datetime = {}

-- Size: Datetime
bmv_bmvmarketdata_product37_intra_v1_1.datetime.size = 8

-- Dissect: Datetime
bmv_bmvmarketdata_product37_intra_v1_1.datetime.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product37_intra_v1_1.datetime.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.datetime
  if bmv_bmvmarketdata_product37_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.datetime_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Direction
bmv_bmvmarketdata_product37_intra_v1_1.direction = {}

-- Size: Direction
bmv_bmvmarketdata_product37_intra_v1_1.direction.size = 1

-- Display: Direction
bmv_bmvmarketdata_product37_intra_v1_1.direction.labels = {
  ["C"] = "Direction: Bid (C)",
  ["V"] = "Direction: Ask (V)",
}

bmv_bmvmarketdata_product37_intra_v1_1.direction.display = function(value)
  return bmv_bmvmarketdata_product37_intra_v1_1.direction.labels[value] or "Direction: Unknown("..value..")"
end

-- Dissect: Direction
bmv_bmvmarketdata_product37_intra_v1_1.direction.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product37_intra_v1_1.direction.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product37_intra_v1_1.direction.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.direction, range, value, display)

  return offset + length, value
end

-- Execution Price
bmv_bmvmarketdata_product37_intra_v1_1.execution_price = {}

-- Size: Execution Price
bmv_bmvmarketdata_product37_intra_v1_1.execution_price.size = 8

-- Display: Execution Price
bmv_bmvmarketdata_product37_intra_v1_1.execution_price.display = function(value)
  return "Execution Price: "..value
end

-- Translate: Execution Price
bmv_bmvmarketdata_product37_intra_v1_1.execution_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Execution Price
bmv_bmvmarketdata_product37_intra_v1_1.execution_price.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product37_intra_v1_1.execution_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product37_intra_v1_1.execution_price.translate(raw)
  local display = bmv_bmvmarketdata_product37_intra_v1_1.execution_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.execution_price, range, value, display)

  return offset + length, value
end

-- Folio
bmv_bmvmarketdata_product37_intra_v1_1.folio = {}

-- Size: Folio
bmv_bmvmarketdata_product37_intra_v1_1.folio.size = 4

-- Display: Folio
bmv_bmvmarketdata_product37_intra_v1_1.folio.display = function(value)
  return "Folio: "..value
end

-- Dissect: Folio
bmv_bmvmarketdata_product37_intra_v1_1.folio.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product37_intra_v1_1.folio.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product37_intra_v1_1.folio.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.folio, range, value, display)

  return offset + length, value
end

-- Id Instrument
bmv_bmvmarketdata_product37_intra_v1_1.id_instrument = {}

-- Size: Id Instrument
bmv_bmvmarketdata_product37_intra_v1_1.id_instrument.size = 4

-- Display: Id Instrument
bmv_bmvmarketdata_product37_intra_v1_1.id_instrument.display = function(value)
  return "Id Instrument: "..value
end

-- Dissect: Id Instrument
bmv_bmvmarketdata_product37_intra_v1_1.id_instrument.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product37_intra_v1_1.id_instrument.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product37_intra_v1_1.id_instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.id_instrument, range, value, display)

  return offset + length, value
end

-- Length
bmv_bmvmarketdata_product37_intra_v1_1.length = {}

-- Size: Length
bmv_bmvmarketdata_product37_intra_v1_1.length.size = 2

-- Display: Length
bmv_bmvmarketdata_product37_intra_v1_1.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
bmv_bmvmarketdata_product37_intra_v1_1.length.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product37_intra_v1_1.length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product37_intra_v1_1.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.length, range, value, display)

  return offset + length, value
end

-- Market Data Group
bmv_bmvmarketdata_product37_intra_v1_1.market_data_group = {}

-- Size: Market Data Group
bmv_bmvmarketdata_product37_intra_v1_1.market_data_group.size = 1

-- Display: Market Data Group
bmv_bmvmarketdata_product37_intra_v1_1.market_data_group.labels = {
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

bmv_bmvmarketdata_product37_intra_v1_1.market_data_group.display = function(value)
  return bmv_bmvmarketdata_product37_intra_v1_1.market_data_group.labels[value] or "Market Data Group: Unknown("..value..")"
end

-- Dissect: Market Data Group
bmv_bmvmarketdata_product37_intra_v1_1.market_data_group.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product37_intra_v1_1.market_data_group.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product37_intra_v1_1.market_data_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.market_data_group, range, value, display)

  return offset + length, value
end

-- Message Length
bmv_bmvmarketdata_product37_intra_v1_1.message_length = {}

-- Size: Message Length
bmv_bmvmarketdata_product37_intra_v1_1.message_length.size = 2

-- Display: Message Length
bmv_bmvmarketdata_product37_intra_v1_1.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
bmv_bmvmarketdata_product37_intra_v1_1.message_length.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product37_intra_v1_1.message_length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product37_intra_v1_1.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
bmv_bmvmarketdata_product37_intra_v1_1.message_type = {}

-- Size: Message Type
bmv_bmvmarketdata_product37_intra_v1_1.message_type.size = 2

-- Display: Message Type
bmv_bmvmarketdata_product37_intra_v1_1.message_type.display = function(value)
  if value == 0x4143 then
    return "Message Type: Order Adition Message (0x4143)"
  end
  if value == 0x4343 then
    return "Message Type: Execution Of Orders Message (0x4343)"
  end
  if value == 0x4443 then
    return "Message Type: Order Cancellation Message (0x4443)"
  end
  if value == 0x4643 then
    return "Message Type: Order Change Message (0x4643)"
  end

  return "Message Type: Unknown("..string.format("0x%04X", value)..")"
end

-- Dissect: Message Type
bmv_bmvmarketdata_product37_intra_v1_1.message_type.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product37_intra_v1_1.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bmv_bmvmarketdata_product37_intra_v1_1.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.message_type, range, value, display)

  return offset + length, value
end

-- New Date
bmv_bmvmarketdata_product37_intra_v1_1.new_date = {}

-- Size: New Date
bmv_bmvmarketdata_product37_intra_v1_1.new_date.size = 8

-- Dissect: New Date
bmv_bmvmarketdata_product37_intra_v1_1.new_date.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product37_intra_v1_1.new_date.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.new_date
  if bmv_bmvmarketdata_product37_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.new_date_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- New Folio
bmv_bmvmarketdata_product37_intra_v1_1.new_folio = {}

-- Size: New Folio
bmv_bmvmarketdata_product37_intra_v1_1.new_folio.size = 4

-- Display: New Folio
bmv_bmvmarketdata_product37_intra_v1_1.new_folio.display = function(value)
  return "New Folio: "..value
end

-- Dissect: New Folio
bmv_bmvmarketdata_product37_intra_v1_1.new_folio.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product37_intra_v1_1.new_folio.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product37_intra_v1_1.new_folio.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.new_folio, range, value, display)

  return offset + length, value
end

-- Operation Type
bmv_bmvmarketdata_product37_intra_v1_1.operation_type = {}

-- Size: Operation Type
bmv_bmvmarketdata_product37_intra_v1_1.operation_type.size = 1

-- Display: Operation Type
bmv_bmvmarketdata_product37_intra_v1_1.operation_type.labels = {
  ["H"] = "Operation Type: At Close (H)",
  ["D"] = "Operation Type: After Close (D)",
  ["P"] = "Operation Type: Average Price (P)",
  ["("] = "Operation Type: Inav At Close (()",
  [")"] = "Operation Type: Inav After Close ())",
}

bmv_bmvmarketdata_product37_intra_v1_1.operation_type.display = function(value)
  return bmv_bmvmarketdata_product37_intra_v1_1.operation_type.labels[value] or "Operation Type: Unknown("..value..")"
end

-- Dissect: Operation Type
bmv_bmvmarketdata_product37_intra_v1_1.operation_type.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product37_intra_v1_1.operation_type.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product37_intra_v1_1.operation_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.operation_type, range, value, display)

  return offset + length, value
end

-- Original Date
bmv_bmvmarketdata_product37_intra_v1_1.original_date = {}

-- Size: Original Date
bmv_bmvmarketdata_product37_intra_v1_1.original_date.size = 8

-- Dissect: Original Date
bmv_bmvmarketdata_product37_intra_v1_1.original_date.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product37_intra_v1_1.original_date.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.original_date
  if bmv_bmvmarketdata_product37_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.original_date_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Original Folio
bmv_bmvmarketdata_product37_intra_v1_1.original_folio = {}

-- Size: Original Folio
bmv_bmvmarketdata_product37_intra_v1_1.original_folio.size = 4

-- Display: Original Folio
bmv_bmvmarketdata_product37_intra_v1_1.original_folio.display = function(value)
  return "Original Folio: "..value
end

-- Dissect: Original Folio
bmv_bmvmarketdata_product37_intra_v1_1.original_folio.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product37_intra_v1_1.original_folio.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product37_intra_v1_1.original_folio.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.original_folio, range, value, display)

  return offset + length, value
end

-- Participant
bmv_bmvmarketdata_product37_intra_v1_1.participant = {}

-- Size: Participant
bmv_bmvmarketdata_product37_intra_v1_1.participant.size = 5

-- Display: Participant
bmv_bmvmarketdata_product37_intra_v1_1.participant.display = function(value)
  return "Participant: "..value
end

-- Dissect: Participant
bmv_bmvmarketdata_product37_intra_v1_1.participant.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product37_intra_v1_1.participant.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_product37_intra_v1_1.participant.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.participant, range, value, display)

  return offset + length, value
end

-- Price
bmv_bmvmarketdata_product37_intra_v1_1.price = {}

-- Size: Price
bmv_bmvmarketdata_product37_intra_v1_1.price.size = 8

-- Display: Price
bmv_bmvmarketdata_product37_intra_v1_1.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
bmv_bmvmarketdata_product37_intra_v1_1.price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price
bmv_bmvmarketdata_product37_intra_v1_1.price.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product37_intra_v1_1.price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product37_intra_v1_1.price.translate(raw)
  local display = bmv_bmvmarketdata_product37_intra_v1_1.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.price, range, value, display)

  return offset + length, value
end

-- Sequence Number
bmv_bmvmarketdata_product37_intra_v1_1.sequence_number = {}

-- Size: Sequence Number
bmv_bmvmarketdata_product37_intra_v1_1.sequence_number.size = 4

-- Display: Sequence Number
bmv_bmvmarketdata_product37_intra_v1_1.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
bmv_bmvmarketdata_product37_intra_v1_1.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product37_intra_v1_1.sequence_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product37_intra_v1_1.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
bmv_bmvmarketdata_product37_intra_v1_1.session = {}

-- Size: Session
bmv_bmvmarketdata_product37_intra_v1_1.session.size = 1

-- Display: Session
bmv_bmvmarketdata_product37_intra_v1_1.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
bmv_bmvmarketdata_product37_intra_v1_1.session.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product37_intra_v1_1.session.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product37_intra_v1_1.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.session, range, value, display)

  return offset + length, value
end

-- Total Messages
bmv_bmvmarketdata_product37_intra_v1_1.total_messages = {}

-- Size: Total Messages
bmv_bmvmarketdata_product37_intra_v1_1.total_messages.size = 1

-- Display: Total Messages
bmv_bmvmarketdata_product37_intra_v1_1.total_messages.display = function(value)
  return "Total Messages: "..value
end

-- Dissect: Total Messages
bmv_bmvmarketdata_product37_intra_v1_1.total_messages.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product37_intra_v1_1.total_messages.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product37_intra_v1_1.total_messages.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.total_messages, range, value, display)

  return offset + length, value
end

-- Trade Number
bmv_bmvmarketdata_product37_intra_v1_1.trade_number = {}

-- Size: Trade Number
bmv_bmvmarketdata_product37_intra_v1_1.trade_number.size = 4

-- Display: Trade Number
bmv_bmvmarketdata_product37_intra_v1_1.trade_number.display = function(value)
  return "Trade Number: "..value
end

-- Dissect: Trade Number
bmv_bmvmarketdata_product37_intra_v1_1.trade_number.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product37_intra_v1_1.trade_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product37_intra_v1_1.trade_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.trade_number, range, value, display)

  return offset + length, value
end

-- Volume
bmv_bmvmarketdata_product37_intra_v1_1.volume = {}

-- Size: Volume
bmv_bmvmarketdata_product37_intra_v1_1.volume.size = 4

-- Display: Volume
bmv_bmvmarketdata_product37_intra_v1_1.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
bmv_bmvmarketdata_product37_intra_v1_1.volume.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product37_intra_v1_1.volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product37_intra_v1_1.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.volume, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Bmv BmvMarketData Product37 Intra 1.1
-----------------------------------------------------------------------

-- Order Change Message
bmv_bmvmarketdata_product37_intra_v1_1.order_change_message = {}

-- Size: Order Change Message
bmv_bmvmarketdata_product37_intra_v1_1.order_change_message.size =
  bmv_bmvmarketdata_product37_intra_v1_1.id_instrument.size + 
  bmv_bmvmarketdata_product37_intra_v1_1.original_date.size + 
  bmv_bmvmarketdata_product37_intra_v1_1.original_folio.size + 
  bmv_bmvmarketdata_product37_intra_v1_1.new_date.size + 
  bmv_bmvmarketdata_product37_intra_v1_1.new_folio.size + 
  bmv_bmvmarketdata_product37_intra_v1_1.direction.size + 
  bmv_bmvmarketdata_product37_intra_v1_1.volume.size + 
  bmv_bmvmarketdata_product37_intra_v1_1.price.size + 
  bmv_bmvmarketdata_product37_intra_v1_1.operation_type.size

-- Display: Order Change Message
bmv_bmvmarketdata_product37_intra_v1_1.order_change_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Change Message
bmv_bmvmarketdata_product37_intra_v1_1.order_change_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Id Instrument: Int32
  index, id_instrument = bmv_bmvmarketdata_product37_intra_v1_1.id_instrument.dissect(buffer, index, packet, parent)

  -- Original Date: Timestamp(2)
  index, original_date = bmv_bmvmarketdata_product37_intra_v1_1.original_date.dissect(buffer, index, packet, parent)

  -- Original Folio: Int32
  index, original_folio = bmv_bmvmarketdata_product37_intra_v1_1.original_folio.dissect(buffer, index, packet, parent)

  -- New Date: Timestamp(2)
  index, new_date = bmv_bmvmarketdata_product37_intra_v1_1.new_date.dissect(buffer, index, packet, parent)

  -- New Folio: Int32
  index, new_folio = bmv_bmvmarketdata_product37_intra_v1_1.new_folio.dissect(buffer, index, packet, parent)

  -- Direction: ALFA
  index, direction = bmv_bmvmarketdata_product37_intra_v1_1.direction.dissect(buffer, index, packet, parent)

  -- Volume: Int32
  index, volume = bmv_bmvmarketdata_product37_intra_v1_1.volume.dissect(buffer, index, packet, parent)

  -- Price: Precio(8)
  index, price = bmv_bmvmarketdata_product37_intra_v1_1.price.dissect(buffer, index, packet, parent)

  -- Operation Type: ALFA
  index, operation_type = bmv_bmvmarketdata_product37_intra_v1_1.operation_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Change Message
bmv_bmvmarketdata_product37_intra_v1_1.order_change_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.order_change_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product37_intra_v1_1.order_change_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product37_intra_v1_1.order_change_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product37_intra_v1_1.order_change_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancellation Message
bmv_bmvmarketdata_product37_intra_v1_1.order_cancellation_message = {}

-- Size: Order Cancellation Message
bmv_bmvmarketdata_product37_intra_v1_1.order_cancellation_message.size =
  bmv_bmvmarketdata_product37_intra_v1_1.id_instrument.size + 
  bmv_bmvmarketdata_product37_intra_v1_1.date.size + 
  bmv_bmvmarketdata_product37_intra_v1_1.folio.size + 
  bmv_bmvmarketdata_product37_intra_v1_1.operation_type.size

-- Display: Order Cancellation Message
bmv_bmvmarketdata_product37_intra_v1_1.order_cancellation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancellation Message
bmv_bmvmarketdata_product37_intra_v1_1.order_cancellation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Id Instrument: Int32
  index, id_instrument = bmv_bmvmarketdata_product37_intra_v1_1.id_instrument.dissect(buffer, index, packet, parent)

  -- Date: Timestamp(1)
  index, date = bmv_bmvmarketdata_product37_intra_v1_1.date.dissect(buffer, index, packet, parent)

  -- Folio: Int32
  index, folio = bmv_bmvmarketdata_product37_intra_v1_1.folio.dissect(buffer, index, packet, parent)

  -- Operation Type: ALFA
  index, operation_type = bmv_bmvmarketdata_product37_intra_v1_1.operation_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancellation Message
bmv_bmvmarketdata_product37_intra_v1_1.order_cancellation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.order_cancellation_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product37_intra_v1_1.order_cancellation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product37_intra_v1_1.order_cancellation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product37_intra_v1_1.order_cancellation_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Of Orders Message
bmv_bmvmarketdata_product37_intra_v1_1.execution_of_orders_message = {}

-- Size: Execution Of Orders Message
bmv_bmvmarketdata_product37_intra_v1_1.execution_of_orders_message.size =
  bmv_bmvmarketdata_product37_intra_v1_1.id_instrument.size + 
  bmv_bmvmarketdata_product37_intra_v1_1.date.size + 
  bmv_bmvmarketdata_product37_intra_v1_1.folio.size + 
  bmv_bmvmarketdata_product37_intra_v1_1.volume.size + 
  bmv_bmvmarketdata_product37_intra_v1_1.trade_number.size + 
  bmv_bmvmarketdata_product37_intra_v1_1.execution_price.size + 
  bmv_bmvmarketdata_product37_intra_v1_1.operation_type.size

-- Display: Execution Of Orders Message
bmv_bmvmarketdata_product37_intra_v1_1.execution_of_orders_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Of Orders Message
bmv_bmvmarketdata_product37_intra_v1_1.execution_of_orders_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Id Instrument: Int32
  index, id_instrument = bmv_bmvmarketdata_product37_intra_v1_1.id_instrument.dissect(buffer, index, packet, parent)

  -- Date: Timestamp(1)
  index, date = bmv_bmvmarketdata_product37_intra_v1_1.date.dissect(buffer, index, packet, parent)

  -- Folio: Int32
  index, folio = bmv_bmvmarketdata_product37_intra_v1_1.folio.dissect(buffer, index, packet, parent)

  -- Volume: Int32
  index, volume = bmv_bmvmarketdata_product37_intra_v1_1.volume.dissect(buffer, index, packet, parent)

  -- Trade Number: Int 32
  index, trade_number = bmv_bmvmarketdata_product37_intra_v1_1.trade_number.dissect(buffer, index, packet, parent)

  -- Execution Price: Precio (8)
  index, execution_price = bmv_bmvmarketdata_product37_intra_v1_1.execution_price.dissect(buffer, index, packet, parent)

  -- Operation Type: ALFA
  index, operation_type = bmv_bmvmarketdata_product37_intra_v1_1.operation_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Of Orders Message
bmv_bmvmarketdata_product37_intra_v1_1.execution_of_orders_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.execution_of_orders_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product37_intra_v1_1.execution_of_orders_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product37_intra_v1_1.execution_of_orders_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product37_intra_v1_1.execution_of_orders_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Adition Message
bmv_bmvmarketdata_product37_intra_v1_1.order_adition_message = {}

-- Size: Order Adition Message
bmv_bmvmarketdata_product37_intra_v1_1.order_adition_message.size =
  bmv_bmvmarketdata_product37_intra_v1_1.id_instrument.size + 
  bmv_bmvmarketdata_product37_intra_v1_1.date_and_hour.size + 
  bmv_bmvmarketdata_product37_intra_v1_1.folio.size + 
  bmv_bmvmarketdata_product37_intra_v1_1.direction.size + 
  bmv_bmvmarketdata_product37_intra_v1_1.volume.size + 
  bmv_bmvmarketdata_product37_intra_v1_1.price.size + 
  bmv_bmvmarketdata_product37_intra_v1_1.participant.size + 
  bmv_bmvmarketdata_product37_intra_v1_1.operation_type.size

-- Display: Order Adition Message
bmv_bmvmarketdata_product37_intra_v1_1.order_adition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Adition Message
bmv_bmvmarketdata_product37_intra_v1_1.order_adition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Id Instrument: Int32
  index, id_instrument = bmv_bmvmarketdata_product37_intra_v1_1.id_instrument.dissect(buffer, index, packet, parent)

  -- Date And Hour: Timestamp(2)
  index, date_and_hour = bmv_bmvmarketdata_product37_intra_v1_1.date_and_hour.dissect(buffer, index, packet, parent)

  -- Folio: Int32
  index, folio = bmv_bmvmarketdata_product37_intra_v1_1.folio.dissect(buffer, index, packet, parent)

  -- Direction: ALFA
  index, direction = bmv_bmvmarketdata_product37_intra_v1_1.direction.dissect(buffer, index, packet, parent)

  -- Volume: Int32
  index, volume = bmv_bmvmarketdata_product37_intra_v1_1.volume.dissect(buffer, index, packet, parent)

  -- Price: Precio(8)
  index, price = bmv_bmvmarketdata_product37_intra_v1_1.price.dissect(buffer, index, packet, parent)

  -- Participant: ALFA
  index, participant = bmv_bmvmarketdata_product37_intra_v1_1.participant.dissect(buffer, index, packet, parent)

  -- Operation Type: ALFA
  index, operation_type = bmv_bmvmarketdata_product37_intra_v1_1.operation_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Adition Message
bmv_bmvmarketdata_product37_intra_v1_1.order_adition_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.order_adition_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product37_intra_v1_1.order_adition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product37_intra_v1_1.order_adition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product37_intra_v1_1.order_adition_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
bmv_bmvmarketdata_product37_intra_v1_1.payload = {}

-- Dissect: Payload
bmv_bmvmarketdata_product37_intra_v1_1.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Order Adition Message
  if message_type == 0x4143 then
    return bmv_bmvmarketdata_product37_intra_v1_1.order_adition_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Of Orders Message
  if message_type == 0x4343 then
    return bmv_bmvmarketdata_product37_intra_v1_1.execution_of_orders_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancellation Message
  if message_type == 0x4443 then
    return bmv_bmvmarketdata_product37_intra_v1_1.order_cancellation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Change Message
  if message_type == 0x4643 then
    return bmv_bmvmarketdata_product37_intra_v1_1.order_change_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
bmv_bmvmarketdata_product37_intra_v1_1.message_header = {}

-- Size: Message Header
bmv_bmvmarketdata_product37_intra_v1_1.message_header.size =
  bmv_bmvmarketdata_product37_intra_v1_1.message_length.size + 
  bmv_bmvmarketdata_product37_intra_v1_1.message_type.size

-- Display: Message Header
bmv_bmvmarketdata_product37_intra_v1_1.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
bmv_bmvmarketdata_product37_intra_v1_1.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: Int16
  index, message_length = bmv_bmvmarketdata_product37_intra_v1_1.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: ALPHA
  index, message_type = bmv_bmvmarketdata_product37_intra_v1_1.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
bmv_bmvmarketdata_product37_intra_v1_1.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.message_header, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product37_intra_v1_1.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product37_intra_v1_1.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product37_intra_v1_1.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message Block
bmv_bmvmarketdata_product37_intra_v1_1.message_block = {}

-- Display: Message Block
bmv_bmvmarketdata_product37_intra_v1_1.message_block.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Block
bmv_bmvmarketdata_product37_intra_v1_1.message_block.fields = function(buffer, offset, packet, parent, size_of_message_block, message_block_index)
  local index = offset

  -- Implicit Message Block Index
  if message_block_index ~= nil and show.indexes then
    local iteration = parent:add(omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.message_block_index, message_block_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = bmv_bmvmarketdata_product37_intra_v1_1.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 2, 2):uint()

  -- Payload: Runtime Type with 4 branches
  index = bmv_bmvmarketdata_product37_intra_v1_1.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message Block
bmv_bmvmarketdata_product37_intra_v1_1.message_block.dissect = function(buffer, offset, packet, parent, size_of_message_block, message_block_index)
  local index = offset + size_of_message_block

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.message_block, buffer(offset, 0))
    local current = bmv_bmvmarketdata_product37_intra_v1_1.message_block.fields(buffer, offset, packet, parent, size_of_message_block, message_block_index)
    parent:set_len(size_of_message_block)
    local display = bmv_bmvmarketdata_product37_intra_v1_1.message_block.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bmv_bmvmarketdata_product37_intra_v1_1.message_block.fields(buffer, offset, packet, parent, size_of_message_block, message_block_index)

    return index
  end
end

-- INTRA Multicast Header
bmv_bmvmarketdata_product37_intra_v1_1.intra_multicast_header = {}

-- Size: INTRA Multicast Header
bmv_bmvmarketdata_product37_intra_v1_1.intra_multicast_header.size =
  bmv_bmvmarketdata_product37_intra_v1_1.length.size + 
  bmv_bmvmarketdata_product37_intra_v1_1.total_messages.size + 
  bmv_bmvmarketdata_product37_intra_v1_1.market_data_group.size + 
  bmv_bmvmarketdata_product37_intra_v1_1.session.size + 
  bmv_bmvmarketdata_product37_intra_v1_1.sequence_number.size + 
  bmv_bmvmarketdata_product37_intra_v1_1.datetime.size

-- Display: INTRA Multicast Header
bmv_bmvmarketdata_product37_intra_v1_1.intra_multicast_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: INTRA Multicast Header
bmv_bmvmarketdata_product37_intra_v1_1.intra_multicast_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: Int16
  index, length = bmv_bmvmarketdata_product37_intra_v1_1.length.dissect(buffer, index, packet, parent)

  -- Total Messages: Int8
  index, total_messages = bmv_bmvmarketdata_product37_intra_v1_1.total_messages.dissect(buffer, index, packet, parent)

  -- Market Data Group: Int8
  index, market_data_group = bmv_bmvmarketdata_product37_intra_v1_1.market_data_group.dissect(buffer, index, packet, parent)

  -- Session: Int8
  index, session = bmv_bmvmarketdata_product37_intra_v1_1.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: Int32
  index, sequence_number = bmv_bmvmarketdata_product37_intra_v1_1.sequence_number.dissect(buffer, index, packet, parent)

  -- Datetime: Timestamp(3)
  index, datetime = bmv_bmvmarketdata_product37_intra_v1_1.datetime.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: INTRA Multicast Header
bmv_bmvmarketdata_product37_intra_v1_1.intra_multicast_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product37_intra_v1_1.fields.intra_multicast_header, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product37_intra_v1_1.intra_multicast_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product37_intra_v1_1.intra_multicast_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product37_intra_v1_1.intra_multicast_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
bmv_bmvmarketdata_product37_intra_v1_1.packet = {}

-- Verify required size of Udp packet
bmv_bmvmarketdata_product37_intra_v1_1.packet.requiredsize = function(buffer)
  return buffer:len() >= bmv_bmvmarketdata_product37_intra_v1_1.intra_multicast_header.size
end

-- Dissect Packet
bmv_bmvmarketdata_product37_intra_v1_1.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- INTRA Multicast Header: Struct of 6 fields
  index, intra_multicast_header = bmv_bmvmarketdata_product37_intra_v1_1.intra_multicast_header.dissect(buffer, index, packet, parent)

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
    index, message_block = bmv_bmvmarketdata_product37_intra_v1_1.message_block.dissect(buffer, index, packet, parent, size_of_message_block, message_block_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_bmv_bmvmarketdata_product37_intra_v1_1.init()
end

-- Dissector for Bmv BmvMarketData Product37 Intra 1.1
function omi_bmv_bmvmarketdata_product37_intra_v1_1.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_bmv_bmvmarketdata_product37_intra_v1_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_bmv_bmvmarketdata_product37_intra_v1_1, buffer(), omi_bmv_bmvmarketdata_product37_intra_v1_1.description, "("..buffer:len().." Bytes)")
  return bmv_bmvmarketdata_product37_intra_v1_1.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
bmv_bmvmarketdata_product37_intra_v1_1.packet.fingerprint = function(buffer)
  if buffer:len() < 21 then
    return false
  end

  local message_type = buffer(19, 2):uint()

  -- Order Adition Message
  if message_type == 0x4143 then
    return true
  end

  -- Execution Of Orders Message
  if message_type == 0x4343 then
    return true
  end

  -- Order Cancellation Message
  if message_type == 0x4443 then
    return true
  end

  -- Order Change Message
  if message_type == 0x4643 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Bmv BmvMarketData Product37 Intra 1.1 (Udp)
local function omi_bmv_bmvmarketdata_product37_intra_v1_1_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not bmv_bmvmarketdata_product37_intra_v1_1.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this udp packet message dispatch
  if not bmv_bmvmarketdata_product37_intra_v1_1.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_bmv_bmvmarketdata_product37_intra_v1_1
  omi_bmv_bmvmarketdata_product37_intra_v1_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Bmv BmvMarketData Product37 Intra 1.1
omi_bmv_bmvmarketdata_product37_intra_v1_1:register_heuristic("udp", omi_bmv_bmvmarketdata_product37_intra_v1_1_udp_heuristic)

-- Register Bmv BmvMarketData Product37 Intra 1.1 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_bmv_bmvmarketdata_product37_intra_v1_1)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Bolsa Mexicana de Valores
--   Version: 1.1
--   Specification: Market Data Multicast_P37_eng.pdf
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
