-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Lme LmeSelect TradeStatistics LmeSource 4.18 Protocol
local omi_lme_lmeselect_tradestatistics_lmesource_v4_18 = Proto("Omi.Lme.LmeSelect.TradeStatistics.LmeSource.v4.18", "Lme LmeSelect TradeStatistics LmeSource 4.18")

-- Protocol table
local lme_lmeselect_tradestatistics_lmesource_v4_18 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Lme LmeSelect TradeStatistics LmeSource 4.18 Fields
omi_lme_lmeselect_tradestatistics_lmesource_v4_18.fields.filler = ProtoField.new("Filler", "lme.lmeselect.tradestatistics.lmesource.v4.18.filler", ftypes.STRING, nil, nil, nil, "Filler aligning the sequence number to a four byte boundary")
omi_lme_lmeselect_tradestatistics_lmesource_v4_18.fields.msg_count = ProtoField.new("Msg Count", "lme.lmeselect.tradestatistics.lmesource.v4.18.msgcount", ftypes.UINT8, nil, nil, nil, "Number of messages included in the packet")
omi_lme_lmeselect_tradestatistics_lmesource_v4_18.fields.msg_size = ProtoField.new("Msg Size", "lme.lmeselect.tradestatistics.lmesource.v4.18.msgsize", ftypes.UINT16, nil, nil, nil, "Message length, including this field")
omi_lme_lmeselect_tradestatistics_lmesource_v4_18.fields.msg_type = ProtoField.new("Msg Type", "lme.lmeselect.tradestatistics.lmesource.v4.18.msgtype", ftypes.UINT16, nil, nil, nil, "Type of message, selecting the payload that follows the message header")
omi_lme_lmeselect_tradestatistics_lmesource_v4_18.fields.new_seq_no = ProtoField.new("New Seq No", "lme.lmeselect.tradestatistics.lmesource.v4.18.newseqno", ftypes.UINT32, nil, nil, nil, "New sequence number. Always set to 1.")
omi_lme_lmeselect_tradestatistics_lmesource_v4_18.fields.open_price = ProtoField.new("Open Price", "lme.lmeselect.tradestatistics.lmesource.v4.18.openprice", ftypes.DOUBLE, nil, nil, nil, "Opening trade price for the current day, in implicit six decimal place format.")
omi_lme_lmeselect_tradestatistics_lmesource_v4_18.fields.pkt_size = ProtoField.new("Pkt Size", "lme.lmeselect.tradestatistics.lmesource.v4.18.pktsize", ftypes.UINT16, nil, nil, nil, "Size of the packet, including this field")
omi_lme_lmeselect_tradestatistics_lmesource_v4_18.fields.send_time = ProtoField.new("Send Time", "lme.lmeselect.tradestatistics.lmesource.v4.18.sendtime", ftypes.UINT64, nil, nil, nil, "UTC timestamp for the time this packet was sent, in nanoseconds since epoch, provided to the nearest microsecond")
omi_lme_lmeselect_tradestatistics_lmesource_v4_18.fields.seq_num = ProtoField.new("Seq Num", "lme.lmeselect.tradestatistics.lmesource.v4.18.seqnum", ftypes.UINT32, nil, nil, nil, "Sequence number of the first message in the packet")
omi_lme_lmeselect_tradestatistics_lmesource_v4_18.fields.time_of_event = ProtoField.new("Time Of Event", "lme.lmeselect.tradestatistics.lmesource.v4.18.timeofevent", ftypes.UINT64, nil, nil, nil, "The time LMEselect computed or derived the designated price.")
omi_lme_lmeselect_tradestatistics_lmesource_v4_18.fields.tradable_instrument_id = ProtoField.new("Tradable Instrument Id", "lme.lmeselect.tradestatistics.lmesource.v4.18.tradableinstrumentid", ftypes.UINT64, nil, nil, nil, "Tradable Instrument ID.")
omi_lme_lmeselect_tradestatistics_lmesource_v4_18.fields.trade_high = ProtoField.new("Trade High", "lme.lmeselect.tradestatistics.lmesource.v4.18.tradehigh", ftypes.DOUBLE, nil, nil, nil, "Highest trade price for the current day, in implicit six decimal place format.")
omi_lme_lmeselect_tradestatistics_lmesource_v4_18.fields.trade_low = ProtoField.new("Trade Low", "lme.lmeselect.tradestatistics.lmesource.v4.18.tradelow", ftypes.DOUBLE, nil, nil, nil, "Lowest trade price for the current day, in implicit six decimal place format.")
omi_lme_lmeselect_tradestatistics_lmesource_v4_18.fields.trading_venue = ProtoField.new("Trading Venue", "lme.lmeselect.tradestatistics.lmesource.v4.18.tradingvenue", ftypes.STRING, nil, nil, nil, "Trading venue.")

-- Lme LmeSelect TradeStatistics LmeSource 4.18 Framing
omi_lme_lmeselect_tradestatistics_lmesource_v4_18.fields.message = ProtoField.new("Message", "lme.lmeselect.tradestatistics.lmesource.v4.18.message", ftypes.STRING, nil, nil, nil, "LMEsource application messages carried by this packet; a message is never fragmented across packets")
omi_lme_lmeselect_tradestatistics_lmesource_v4_18.fields.message_header = ProtoField.new("Message Header", "lme.lmeselect.tradestatistics.lmesource.v4.18.messageheader", ftypes.STRING, nil, nil, nil, "LMEsource message header, giving the size of the message and its type")
omi_lme_lmeselect_tradestatistics_lmesource_v4_18.fields.packet = ProtoField.new("Packet", "lme.lmeselect.tradestatistics.lmesource.v4.18.packet", ftypes.STRING, nil, nil, nil, "LMEsource multicast packet, a packet header followed by Msg Count complete messages")
omi_lme_lmeselect_tradestatistics_lmesource_v4_18.fields.packet_header = ProtoField.new("Packet Header", "lme.lmeselect.tradestatistics.lmesource.v4.18.packetheader", ftypes.STRING, nil, nil, nil, "LMEsource packet header, giving the packet size, the number of messages it carries, the sequence number of the first of them and the time the packet was sent")

-- Lme LmeSelect TradeStatistics 4.18 Application Messages
omi_lme_lmeselect_tradestatistics_lmesource_v4_18.fields.sequence_reset_message = ProtoField.new("Sequence Reset Message", "lme.lmeselect.tradestatistics.lmesource.v4.18.sequenceresetmessage", ftypes.STRING, nil, nil, nil, "Sent on each multicast channel at start of day, and intraday in case of a disaster recovery. The client must ignore the sequence number of the Sequence Reset message itself and set the next expected sequence number to NewSeqNo, clear all cached data for all instruments and subscribe to the refresh channels to receive the current state of the market.")
omi_lme_lmeselect_tradestatistics_lmesource_v4_18.fields.trade_statistics_intraday_message = ProtoField.new("Trade Statistics Intraday Message", "lme.lmeselect.tradestatistics.lmesource.v4.18.tradestatisticsintradaymessage", ftypes.STRING, nil, nil, nil, "Contains trade information for completed trades, provided on a snapshot basis. Off book trades resulting from Cross Order execution are not used in the calculation.")

-- Lme LmeSelect TradeStatistics LmeSource 4.18 Generated Fields
omi_lme_lmeselect_tradestatistics_lmesource_v4_18.fields.message_index = ProtoField.new("Message Index", "lme.lmeselect.tradestatistics.lmesource.v4.18.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Lme LmeSelect TradeStatistics LmeSource 4.18 Element Dissection Options
show.structs = true
show.headers = true
show.application_messages = true
show.indexes = true

-- Register Lme LmeSelect TradeStatistics LmeSource 4.18 Show Options
omi_lme_lmeselect_tradestatistics_lmesource_v4_18.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_lme_lmeselect_tradestatistics_lmesource_v4_18.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_lme_lmeselect_tradestatistics_lmesource_v4_18.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_lme_lmeselect_tradestatistics_lmesource_v4_18.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

-- Handle changed preferences
function omi_lme_lmeselect_tradestatistics_lmesource_v4_18.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_lme_lmeselect_tradestatistics_lmesource_v4_18.prefs.show_application_messages then
    show.application_messages = omi_lme_lmeselect_tradestatistics_lmesource_v4_18.prefs.show_application_messages
  end
  if show.headers ~= omi_lme_lmeselect_tradestatistics_lmesource_v4_18.prefs.show_headers then
    show.headers = omi_lme_lmeselect_tradestatistics_lmesource_v4_18.prefs.show_headers
  end
  if show.structs ~= omi_lme_lmeselect_tradestatistics_lmesource_v4_18.prefs.show_structs then
    show.structs = omi_lme_lmeselect_tradestatistics_lmesource_v4_18.prefs.show_structs
  end
  if show.indexes ~= omi_lme_lmeselect_tradestatistics_lmesource_v4_18.prefs.show_indexes then
    show.indexes = omi_lme_lmeselect_tradestatistics_lmesource_v4_18.prefs.show_indexes
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
-- Lme LmeSelect TradeStatistics LmeSource 4.18 Fields
-----------------------------------------------------------------------

-- Filler
lme_lmeselect_tradestatistics_lmesource_v4_18.filler = {}

-- Size: Filler
lme_lmeselect_tradestatistics_lmesource_v4_18.filler.size = 1

-- Display: Filler
lme_lmeselect_tradestatistics_lmesource_v4_18.filler.display = function(value)
  return "Filler: "..value
end

-- Dissect: Filler
lme_lmeselect_tradestatistics_lmesource_v4_18.filler.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_tradestatistics_lmesource_v4_18.filler.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lme_lmeselect_tradestatistics_lmesource_v4_18.filler.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_tradestatistics_lmesource_v4_18.fields.filler, range, value, display)

  return offset + length, value
end

-- Msg Count
lme_lmeselect_tradestatistics_lmesource_v4_18.msg_count = {}

-- Size: Msg Count
lme_lmeselect_tradestatistics_lmesource_v4_18.msg_count.size = 1

-- Display: Msg Count
lme_lmeselect_tradestatistics_lmesource_v4_18.msg_count.display = function(value)
  return "Msg Count: "..value
end

-- Dissect: Msg Count
lme_lmeselect_tradestatistics_lmesource_v4_18.msg_count.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_tradestatistics_lmesource_v4_18.msg_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lme_lmeselect_tradestatistics_lmesource_v4_18.msg_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_tradestatistics_lmesource_v4_18.fields.msg_count, range, value, display)

  return offset + length, value
end

-- Msg Size
lme_lmeselect_tradestatistics_lmesource_v4_18.msg_size = {}

-- Size: Msg Size
lme_lmeselect_tradestatistics_lmesource_v4_18.msg_size.size = 2

-- Display: Msg Size
lme_lmeselect_tradestatistics_lmesource_v4_18.msg_size.display = function(value)
  return "Msg Size: "..value
end

-- Dissect: Msg Size
lme_lmeselect_tradestatistics_lmesource_v4_18.msg_size.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_tradestatistics_lmesource_v4_18.msg_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_tradestatistics_lmesource_v4_18.msg_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_tradestatistics_lmesource_v4_18.fields.msg_size, range, value, display)

  return offset + length, value
end

-- Msg Type
lme_lmeselect_tradestatistics_lmesource_v4_18.msg_type = {}

-- Size: Msg Type
lme_lmeselect_tradestatistics_lmesource_v4_18.msg_type.size = 2

-- Display: Msg Type
lme_lmeselect_tradestatistics_lmesource_v4_18.msg_type.display = function(value)
  if value == 100 then
    return "Msg Type: Sequence Reset Message (100)"
  end
  if value == 352 then
    return "Msg Type: Trade Statistics Intraday Message (352)"
  end

  return "Msg Type: Unknown("..value..")"
end

-- Dissect: Msg Type
lme_lmeselect_tradestatistics_lmesource_v4_18.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_tradestatistics_lmesource_v4_18.msg_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_tradestatistics_lmesource_v4_18.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_tradestatistics_lmesource_v4_18.fields.msg_type, range, value, display)

  return offset + length, value
end

-- New Seq No
lme_lmeselect_tradestatistics_lmesource_v4_18.new_seq_no = {}

-- Size: New Seq No
lme_lmeselect_tradestatistics_lmesource_v4_18.new_seq_no.size = 4

-- Display: New Seq No
lme_lmeselect_tradestatistics_lmesource_v4_18.new_seq_no.display = function(value)
  return "New Seq No: "..value
end

-- Dissect: New Seq No
lme_lmeselect_tradestatistics_lmesource_v4_18.new_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_tradestatistics_lmesource_v4_18.new_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_tradestatistics_lmesource_v4_18.new_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_tradestatistics_lmesource_v4_18.fields.new_seq_no, range, value, display)

  return offset + length, value
end

-- Open Price
lme_lmeselect_tradestatistics_lmesource_v4_18.open_price = {}

-- Size: Open Price
lme_lmeselect_tradestatistics_lmesource_v4_18.open_price.size = 8

-- Display: Open Price
lme_lmeselect_tradestatistics_lmesource_v4_18.open_price.display = function(value)
  return "Open Price: "..value
end

-- Translate: Open Price
lme_lmeselect_tradestatistics_lmesource_v4_18.open_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Open Price
lme_lmeselect_tradestatistics_lmesource_v4_18.open_price.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_tradestatistics_lmesource_v4_18.open_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lme_lmeselect_tradestatistics_lmesource_v4_18.open_price.translate(raw)
  local display = lme_lmeselect_tradestatistics_lmesource_v4_18.open_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_tradestatistics_lmesource_v4_18.fields.open_price, range, value, display)

  return offset + length, value
end

-- Pkt Size
lme_lmeselect_tradestatistics_lmesource_v4_18.pkt_size = {}

-- Size: Pkt Size
lme_lmeselect_tradestatistics_lmesource_v4_18.pkt_size.size = 2

-- Display: Pkt Size
lme_lmeselect_tradestatistics_lmesource_v4_18.pkt_size.display = function(value)
  return "Pkt Size: "..value
end

-- Dissect: Pkt Size
lme_lmeselect_tradestatistics_lmesource_v4_18.pkt_size.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_tradestatistics_lmesource_v4_18.pkt_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_tradestatistics_lmesource_v4_18.pkt_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_tradestatistics_lmesource_v4_18.fields.pkt_size, range, value, display)

  return offset + length, value
end

-- Send Time
lme_lmeselect_tradestatistics_lmesource_v4_18.send_time = {}

-- Size: Send Time
lme_lmeselect_tradestatistics_lmesource_v4_18.send_time.size = 8

-- Display: Send Time
lme_lmeselect_tradestatistics_lmesource_v4_18.send_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Send Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Send Time
lme_lmeselect_tradestatistics_lmesource_v4_18.send_time.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_tradestatistics_lmesource_v4_18.send_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lme_lmeselect_tradestatistics_lmesource_v4_18.send_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_tradestatistics_lmesource_v4_18.fields.send_time, range, value, display)

  return offset + length, value
end

-- Seq Num
lme_lmeselect_tradestatistics_lmesource_v4_18.seq_num = {}

-- Size: Seq Num
lme_lmeselect_tradestatistics_lmesource_v4_18.seq_num.size = 4

-- Display: Seq Num
lme_lmeselect_tradestatistics_lmesource_v4_18.seq_num.display = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
lme_lmeselect_tradestatistics_lmesource_v4_18.seq_num.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_tradestatistics_lmesource_v4_18.seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_tradestatistics_lmesource_v4_18.seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_tradestatistics_lmesource_v4_18.fields.seq_num, range, value, display)

  return offset + length, value
end

-- Time Of Event
lme_lmeselect_tradestatistics_lmesource_v4_18.time_of_event = {}

-- Size: Time Of Event
lme_lmeselect_tradestatistics_lmesource_v4_18.time_of_event.size = 8

-- Display: Time Of Event
lme_lmeselect_tradestatistics_lmesource_v4_18.time_of_event.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Time Of Event: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Time Of Event
lme_lmeselect_tradestatistics_lmesource_v4_18.time_of_event.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_tradestatistics_lmesource_v4_18.time_of_event.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lme_lmeselect_tradestatistics_lmesource_v4_18.time_of_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_tradestatistics_lmesource_v4_18.fields.time_of_event, range, value, display)

  return offset + length, value
end

-- Tradable Instrument Id
lme_lmeselect_tradestatistics_lmesource_v4_18.tradable_instrument_id = {}

-- Size: Tradable Instrument Id
lme_lmeselect_tradestatistics_lmesource_v4_18.tradable_instrument_id.size = 8

-- Display: Tradable Instrument Id
lme_lmeselect_tradestatistics_lmesource_v4_18.tradable_instrument_id.display = function(value)
  return "Tradable Instrument Id: "..value
end

-- Dissect: Tradable Instrument Id
lme_lmeselect_tradestatistics_lmesource_v4_18.tradable_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_tradestatistics_lmesource_v4_18.tradable_instrument_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lme_lmeselect_tradestatistics_lmesource_v4_18.tradable_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_tradestatistics_lmesource_v4_18.fields.tradable_instrument_id, range, value, display)

  return offset + length, value
end

-- Trade High
lme_lmeselect_tradestatistics_lmesource_v4_18.trade_high = {}

-- Size: Trade High
lme_lmeselect_tradestatistics_lmesource_v4_18.trade_high.size = 8

-- Display: Trade High
lme_lmeselect_tradestatistics_lmesource_v4_18.trade_high.display = function(value)
  return "Trade High: "..value
end

-- Translate: Trade High
lme_lmeselect_tradestatistics_lmesource_v4_18.trade_high.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Trade High
lme_lmeselect_tradestatistics_lmesource_v4_18.trade_high.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_tradestatistics_lmesource_v4_18.trade_high.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lme_lmeselect_tradestatistics_lmesource_v4_18.trade_high.translate(raw)
  local display = lme_lmeselect_tradestatistics_lmesource_v4_18.trade_high.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_tradestatistics_lmesource_v4_18.fields.trade_high, range, value, display)

  return offset + length, value
end

-- Trade Low
lme_lmeselect_tradestatistics_lmesource_v4_18.trade_low = {}

-- Size: Trade Low
lme_lmeselect_tradestatistics_lmesource_v4_18.trade_low.size = 8

-- Display: Trade Low
lme_lmeselect_tradestatistics_lmesource_v4_18.trade_low.display = function(value)
  return "Trade Low: "..value
end

-- Translate: Trade Low
lme_lmeselect_tradestatistics_lmesource_v4_18.trade_low.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Trade Low
lme_lmeselect_tradestatistics_lmesource_v4_18.trade_low.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_tradestatistics_lmesource_v4_18.trade_low.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lme_lmeselect_tradestatistics_lmesource_v4_18.trade_low.translate(raw)
  local display = lme_lmeselect_tradestatistics_lmesource_v4_18.trade_low.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_tradestatistics_lmesource_v4_18.fields.trade_low, range, value, display)

  return offset + length, value
end

-- Trading Venue
lme_lmeselect_tradestatistics_lmesource_v4_18.trading_venue = {}

-- Size: Trading Venue
lme_lmeselect_tradestatistics_lmesource_v4_18.trading_venue.size = 2

-- Display: Trading Venue
lme_lmeselect_tradestatistics_lmesource_v4_18.trading_venue.display = function(value)
  if value == "EL" then
    return "Trading Venue: Electronic (EL)"
  end
  if value == "RK" then
    return "Trading Venue: Ring (RK)"
  end
  if value == "IO" then
    return "Trading Venue: Inter Office (IO)"
  end

  return "Trading Venue: Unknown("..value..")"
end

-- Dissect: Trading Venue
lme_lmeselect_tradestatistics_lmesource_v4_18.trading_venue.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_tradestatistics_lmesource_v4_18.trading_venue.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_tradestatistics_lmesource_v4_18.trading_venue.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_tradestatistics_lmesource_v4_18.fields.trading_venue, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Lme LmeSelect TradeStatistics LmeSource 4.18
-----------------------------------------------------------------------

-- Trade Statistics Intraday Message
lme_lmeselect_tradestatistics_lmesource_v4_18.trade_statistics_intraday_message = {}

-- Size: Trade Statistics Intraday Message
lme_lmeselect_tradestatistics_lmesource_v4_18.trade_statistics_intraday_message.size =
  lme_lmeselect_tradestatistics_lmesource_v4_18.trading_venue.size + 
  lme_lmeselect_tradestatistics_lmesource_v4_18.time_of_event.size + 
  lme_lmeselect_tradestatistics_lmesource_v4_18.tradable_instrument_id.size + 
  lme_lmeselect_tradestatistics_lmesource_v4_18.open_price.size + 
  lme_lmeselect_tradestatistics_lmesource_v4_18.trade_high.size + 
  lme_lmeselect_tradestatistics_lmesource_v4_18.trade_low.size

-- Display: Trade Statistics Intraday Message
lme_lmeselect_tradestatistics_lmesource_v4_18.trade_statistics_intraday_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Statistics Intraday Message
lme_lmeselect_tradestatistics_lmesource_v4_18.trade_statistics_intraday_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Venue: String
  index, trading_venue = lme_lmeselect_tradestatistics_lmesource_v4_18.trading_venue.dissect(buffer, index, packet, parent)

  -- Time Of Event: Uint64
  index, time_of_event = lme_lmeselect_tradestatistics_lmesource_v4_18.time_of_event.dissect(buffer, index, packet, parent)

  -- Tradable Instrument Id: Uint64
  index, tradable_instrument_id = lme_lmeselect_tradestatistics_lmesource_v4_18.tradable_instrument_id.dissect(buffer, index, packet, parent)

  -- Open Price: Int64
  index, open_price = lme_lmeselect_tradestatistics_lmesource_v4_18.open_price.dissect(buffer, index, packet, parent)

  -- Trade High: Int64
  index, trade_high = lme_lmeselect_tradestatistics_lmesource_v4_18.trade_high.dissect(buffer, index, packet, parent)

  -- Trade Low: Int64
  index, trade_low = lme_lmeselect_tradestatistics_lmesource_v4_18.trade_low.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Statistics Intraday Message
lme_lmeselect_tradestatistics_lmesource_v4_18.trade_statistics_intraday_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_tradestatistics_lmesource_v4_18.fields.trade_statistics_intraday_message, buffer(offset, 0))
    local index = lme_lmeselect_tradestatistics_lmesource_v4_18.trade_statistics_intraday_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_tradestatistics_lmesource_v4_18.trade_statistics_intraday_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_tradestatistics_lmesource_v4_18.trade_statistics_intraday_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Reset Message
lme_lmeselect_tradestatistics_lmesource_v4_18.sequence_reset_message = {}

-- Size: Sequence Reset Message
lme_lmeselect_tradestatistics_lmesource_v4_18.sequence_reset_message.size =
  lme_lmeselect_tradestatistics_lmesource_v4_18.new_seq_no.size

-- Display: Sequence Reset Message
lme_lmeselect_tradestatistics_lmesource_v4_18.sequence_reset_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Reset Message
lme_lmeselect_tradestatistics_lmesource_v4_18.sequence_reset_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- New Seq No: Uint32
  index, new_seq_no = lme_lmeselect_tradestatistics_lmesource_v4_18.new_seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Reset Message
lme_lmeselect_tradestatistics_lmesource_v4_18.sequence_reset_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_tradestatistics_lmesource_v4_18.fields.sequence_reset_message, buffer(offset, 0))
    local index = lme_lmeselect_tradestatistics_lmesource_v4_18.sequence_reset_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_tradestatistics_lmesource_v4_18.sequence_reset_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_tradestatistics_lmesource_v4_18.sequence_reset_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
lme_lmeselect_tradestatistics_lmesource_v4_18.payload = {}

-- Dissect: Payload
lme_lmeselect_tradestatistics_lmesource_v4_18.payload.dissect = function(buffer, offset, packet, parent, msg_type)
  -- Dissect Sequence Reset Message
  if msg_type == 100 then
    return lme_lmeselect_tradestatistics_lmesource_v4_18.sequence_reset_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Statistics Intraday Message
  if msg_type == 352 then
    return lme_lmeselect_tradestatistics_lmesource_v4_18.trade_statistics_intraday_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
lme_lmeselect_tradestatistics_lmesource_v4_18.message_header = {}

-- Size: Message Header
lme_lmeselect_tradestatistics_lmesource_v4_18.message_header.size =
  lme_lmeselect_tradestatistics_lmesource_v4_18.msg_size.size + 
  lme_lmeselect_tradestatistics_lmesource_v4_18.msg_type.size

-- Display: Message Header
lme_lmeselect_tradestatistics_lmesource_v4_18.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
lme_lmeselect_tradestatistics_lmesource_v4_18.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Size: Uint16
  index, msg_size = lme_lmeselect_tradestatistics_lmesource_v4_18.msg_size.dissect(buffer, index, packet, parent)

  -- Msg Type: Uint16
  index, msg_type = lme_lmeselect_tradestatistics_lmesource_v4_18.msg_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
lme_lmeselect_tradestatistics_lmesource_v4_18.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_tradestatistics_lmesource_v4_18.fields.message_header, buffer(offset, 0))
    local index = lme_lmeselect_tradestatistics_lmesource_v4_18.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_tradestatistics_lmesource_v4_18.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_tradestatistics_lmesource_v4_18.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
lme_lmeselect_tradestatistics_lmesource_v4_18.message = {}

-- Calculate size of: Message
lme_lmeselect_tradestatistics_lmesource_v4_18.message.size = function(buffer, offset)
  local index = 0

  index = index + lme_lmeselect_tradestatistics_lmesource_v4_18.message_header.size

  -- Parse runtime size of: Payload
  index = index + buffer(offset + index - 4, 2):le_uint()

  return index
end

-- Display: Message
lme_lmeselect_tradestatistics_lmesource_v4_18.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
lme_lmeselect_tradestatistics_lmesource_v4_18.message.fields = function(buffer, offset, packet, parent, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_lme_lmeselect_tradestatistics_lmesource_v4_18.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = lme_lmeselect_tradestatistics_lmesource_v4_18.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Type
  local msg_type = buffer(index - 2, 2):le_uint()

  -- Payload: Runtime Type with 2 branches
  index = lme_lmeselect_tradestatistics_lmesource_v4_18.payload.dissect(buffer, index, packet, parent, msg_type)

  return index
end

-- Dissect: Message
lme_lmeselect_tradestatistics_lmesource_v4_18.message.dissect = function(buffer, offset, packet, parent, message_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_tradestatistics_lmesource_v4_18.fields.message, buffer(offset, 0))
    local index = lme_lmeselect_tradestatistics_lmesource_v4_18.message.fields(buffer, offset, packet, parent, message_index)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_tradestatistics_lmesource_v4_18.message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_tradestatistics_lmesource_v4_18.message.fields(buffer, offset, packet, parent, message_index)
  end
end

-- Packet Header
lme_lmeselect_tradestatistics_lmesource_v4_18.packet_header = {}

-- Size: Packet Header
lme_lmeselect_tradestatistics_lmesource_v4_18.packet_header.size =
  lme_lmeselect_tradestatistics_lmesource_v4_18.pkt_size.size + 
  lme_lmeselect_tradestatistics_lmesource_v4_18.msg_count.size + 
  lme_lmeselect_tradestatistics_lmesource_v4_18.filler.size + 
  lme_lmeselect_tradestatistics_lmesource_v4_18.seq_num.size + 
  lme_lmeselect_tradestatistics_lmesource_v4_18.send_time.size

-- Display: Packet Header
lme_lmeselect_tradestatistics_lmesource_v4_18.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
lme_lmeselect_tradestatistics_lmesource_v4_18.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Pkt Size: Uint16
  index, pkt_size = lme_lmeselect_tradestatistics_lmesource_v4_18.pkt_size.dissect(buffer, index, packet, parent)

  -- Msg Count: Uint8
  index, msg_count = lme_lmeselect_tradestatistics_lmesource_v4_18.msg_count.dissect(buffer, index, packet, parent)

  -- Filler: String
  index, filler = lme_lmeselect_tradestatistics_lmesource_v4_18.filler.dissect(buffer, index, packet, parent)

  -- Seq Num: Uint32
  index, seq_num = lme_lmeselect_tradestatistics_lmesource_v4_18.seq_num.dissect(buffer, index, packet, parent)

  -- Send Time: Uint64
  index, send_time = lme_lmeselect_tradestatistics_lmesource_v4_18.send_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
lme_lmeselect_tradestatistics_lmesource_v4_18.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_tradestatistics_lmesource_v4_18.fields.packet_header, buffer(offset, 0))
    local index = lme_lmeselect_tradestatistics_lmesource_v4_18.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_tradestatistics_lmesource_v4_18.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_tradestatistics_lmesource_v4_18.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
lme_lmeselect_tradestatistics_lmesource_v4_18.packet = {}

-- Verify required size of Udp packet
lme_lmeselect_tradestatistics_lmesource_v4_18.packet.requiredsize = function(buffer)
  return buffer:len() >= lme_lmeselect_tradestatistics_lmesource_v4_18.packet_header.size
end

-- Dissect Packet
lme_lmeselect_tradestatistics_lmesource_v4_18.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = lme_lmeselect_tradestatistics_lmesource_v4_18.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Count
  local msg_count = buffer(index - 14, 1):uint()

  -- Repeating: Message
  for message_index = 1, msg_count do
    index, message = lme_lmeselect_tradestatistics_lmesource_v4_18.message.dissect(buffer, index, packet, parent, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_lme_lmeselect_tradestatistics_lmesource_v4_18.init()
end

-- Dissector for Lme LmeSelect TradeStatistics LmeSource 4.18
function omi_lme_lmeselect_tradestatistics_lmesource_v4_18.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_lme_lmeselect_tradestatistics_lmesource_v4_18.name

  -- Dissect protocol
  local protocol = parent:add(omi_lme_lmeselect_tradestatistics_lmesource_v4_18, buffer(), omi_lme_lmeselect_tradestatistics_lmesource_v4_18.description, "("..buffer:len().." Bytes)")
  return lme_lmeselect_tradestatistics_lmesource_v4_18.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Lme LmeSelect TradeStatistics LmeSource 4.18 (Udp)
local function omi_lme_lmeselect_tradestatistics_lmesource_v4_18_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not lme_lmeselect_tradestatistics_lmesource_v4_18.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_lme_lmeselect_tradestatistics_lmesource_v4_18
  omi_lme_lmeselect_tradestatistics_lmesource_v4_18.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Lme LmeSelect TradeStatistics LmeSource 4.18
omi_lme_lmeselect_tradestatistics_lmesource_v4_18:register_heuristic("udp", omi_lme_lmeselect_tradestatistics_lmesource_v4_18_udp_heuristic)

-- Register Lme LmeSelect TradeStatistics LmeSource 4.18 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_lme_lmeselect_tradestatistics_lmesource_v4_18)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: The London Metal Exchange
--   Version: 4.18
--   Date: Tuesday, August 18, 2026
--   Specification: LMEsource Client Interface Specification v4 18.pdf
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
