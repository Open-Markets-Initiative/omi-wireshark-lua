-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Lme LmeSelect TradeReplaySnapshot LmeSource 4.18 Protocol
local omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18 = Proto("Omi.Lme.LmeSelect.TradeReplaySnapshot.LmeSource.v4.18", "Lme LmeSelect TradeReplaySnapshot LmeSource 4.18")

-- Protocol table
local lme_lmeselect_tradereplaysnapshot_lmesource_v4_18 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Lme LmeSelect TradeReplaySnapshot LmeSource 4.18 Fields
omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.filler = ProtoField.new("Filler", "lme.lmeselect.tradereplaysnapshot.lmesource.v4.18.filler", ftypes.STRING, nil, nil, nil, "Filler aligning the sequence number to a four byte boundary")
omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.last_seq_num = ProtoField.new("Last Seq Num", "lme.lmeselect.tradereplaysnapshot.lmesource.v4.18.lastseqnum", ftypes.UINT32, nil, nil, nil, "Sequence number in the real-time channel with which the refresh is synchronised.")
omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.leg_match_id = ProtoField.new("Leg Match Id", "lme.lmeselect.tradereplaysnapshot.lmesource.v4.18.legmatchid", ftypes.UINT64, nil, nil, nil, "Leg Match ID.")
omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.leg_price = ProtoField.new("Leg Price", "lme.lmeselect.tradereplaysnapshot.lmesource.v4.18.legprice", ftypes.DOUBLE, nil, nil, nil, "Price allocated to this leg of the strategy, in implicit six decimal place format.")
omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.leg_trade_at_reference_price = ProtoField.new("Leg Trade At Reference Price", "lme.lmeselect.tradereplaysnapshot.lmesource.v4.18.legtradeatreferenceprice", ftypes.STRING, nil, nil, nil, "Indicates whether the leg price is differential or substituted.")
omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.leg_volume = ProtoField.new("Leg Volume", "lme.lmeselect.tradereplaysnapshot.lmesource.v4.18.legvolume", ftypes.UINT32, nil, nil, nil, "Quantity allocated to this leg of the strategy.")
omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.match_id = ProtoField.new("Match Id", "lme.lmeselect.tradereplaysnapshot.lmesource.v4.18.matchid", ftypes.UINT64, nil, nil, nil, "Assigned trade match identifier for the matched trade.")
omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.matched_time = ProtoField.new("Matched Time", "lme.lmeselect.tradereplaysnapshot.lmesource.v4.18.matchedtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time the trade was matched in LMEsmart. Null until such time.")
omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.matched_time_utc = ProtoField.new("Matched Time", "lme.lmeselect.tradereplaysnapshot.lmesource.v4.18.matchedtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time the trade was matched in LMEsmart. Null until such time.")
omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.msg_count = ProtoField.new("Msg Count", "lme.lmeselect.tradereplaysnapshot.lmesource.v4.18.msgcount", ftypes.UINT8, nil, nil, nil, "Number of messages included in the packet")
omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.msg_size = ProtoField.new("Msg Size", "lme.lmeselect.tradereplaysnapshot.lmesource.v4.18.msgsize", ftypes.UINT16, nil, nil, nil, "Message length, including this field")
omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.msg_type = ProtoField.new("Msg Type", "lme.lmeselect.tradereplaysnapshot.lmesource.v4.18.msgtype", ftypes.UINT16, nil, nil, nil, "Type of message, selecting the payload that follows the message header")
omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.new_seq_no = ProtoField.new("New Seq No", "lme.lmeselect.tradereplaysnapshot.lmesource.v4.18.newseqno", ftypes.UINT32, nil, nil, nil, "New sequence number. Always set to 1.")
omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.pkt_size = ProtoField.new("Pkt Size", "lme.lmeselect.tradereplaysnapshot.lmesource.v4.18.pktsize", ftypes.UINT16, nil, nil, nil, "Size of the packet, including this field")
omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.price = ProtoField.new("Price", "lme.lmeselect.tradereplaysnapshot.lmesource.v4.18.price", ftypes.DOUBLE, nil, nil, nil, "The price of the trade. For TaS and TaR either the differential or the substituted price. Null for a strategy from a non-electronic venue. Implicit six decimal place format.")
omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.record_count = ProtoField.new("Record Count", "lme.lmeselect.tradereplaysnapshot.lmesource.v4.18.recordcount", ftypes.UINT16, nil, nil, nil, "The number of leg records carried by this message.")
omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.remaining_records = ProtoField.new("Remaining Records", "lme.lmeselect.tradereplaysnapshot.lmesource.v4.18.remainingrecords", ftypes.UINT16, nil, nil, nil, "Number of leg records still to be published for this trade.")
omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.ring_session = ProtoField.new("Ring Session", "lme.lmeselect.tradereplaysnapshot.lmesource.v4.18.ringsession", ftypes.STRING, nil, nil, nil, "This identifies the ring trading session. Space if not applicable.")
omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.send_time = ProtoField.new("Send Time", "lme.lmeselect.tradereplaysnapshot.lmesource.v4.18.sendtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "UTC timestamp for the time this packet was sent, in nanoseconds since epoch, provided to the nearest microsecond")
omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.send_time_utc = ProtoField.new("Send Time", "lme.lmeselect.tradereplaysnapshot.lmesource.v4.18.sendtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "UTC timestamp for the time this packet was sent, in nanoseconds since epoch, provided to the nearest microsecond")
omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.seq_num = ProtoField.new("Seq Num", "lme.lmeselect.tradereplaysnapshot.lmesource.v4.18.seqnum", ftypes.UINT32, nil, nil, nil, "Sequence number of the first message in the packet")
omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.strategy_leg_count = ProtoField.new("Strategy Leg Count", "lme.lmeselect.tradereplaysnapshot.lmesource.v4.18.strategylegcount", ftypes.UINT32, nil, nil, nil, "Number of legs of the strategy.")
omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.sub_type_of_trade = ProtoField.new("Sub Type Of Trade", "lme.lmeselect.tradereplaysnapshot.lmesource.v4.18.subtypeoftrade", ftypes.UINT8, nil, nil, nil, "Sub type of trade.")
omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.time_of_event = ProtoField.new("Time Of Event", "lme.lmeselect.tradereplaysnapshot.lmesource.v4.18.timeofevent", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "The time at which the trade occurred.")
omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.time_of_event_utc = ProtoField.new("Time Of Event", "lme.lmeselect.tradereplaysnapshot.lmesource.v4.18.timeofevent.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "The time at which the trade occurred.")
omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.tradable_instrument_id = ProtoField.new("Tradable Instrument Id", "lme.lmeselect.tradereplaysnapshot.lmesource.v4.18.tradableinstrumentid", ftypes.UINT64, nil, nil, nil, "Tradable Instrument ID.")
omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.trade_at_reference_price_type = ProtoField.new("Trade At Reference Price Type", "lme.lmeselect.tradereplaysnapshot.lmesource.v4.18.tradeatreferencepricetype", ftypes.STRING, nil, nil, nil, "For a TaR, indicates whether the price is differential or substituted. Defaults to space, meaning not applicable.")
omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.trade_cancel_flag = ProtoField.new("Trade Cancel Flag", "lme.lmeselect.tradereplaysnapshot.lmesource.v4.18.tradecancelflag", ftypes.UINT8, nil, nil, nil, "Trade Cancel Flag.")
omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.trade_legs = ProtoField.new("Trade Legs", "lme.lmeselect.tradereplaysnapshot.lmesource.v4.18.tradelegs", ftypes.STRING, nil, nil, nil, "One leg record of a strategy trade, counted by RecordCount rather than by StrategyLegCount, which states the total legs of the strategy")
omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.trading_venue = ProtoField.new("Trading Venue", "lme.lmeselect.tradereplaysnapshot.lmesource.v4.18.tradingvenue", ftypes.STRING, nil, nil, nil, "Trading venue on which the trade was executed.")
omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.volume = ProtoField.new("Volume", "lme.lmeselect.tradereplaysnapshot.lmesource.v4.18.volume", ftypes.UINT32, nil, nil, nil, "Trade volume. Null for a strategy from a non-electronic venue.")

-- Lme LmeSelect TradeReplaySnapshot LmeSource 4.18 Framing
omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.message = ProtoField.new("Message", "lme.lmeselect.tradereplaysnapshot.lmesource.v4.18.message", ftypes.STRING, nil, nil, nil, "LMEsource application messages carried by this packet; a message is never fragmented across packets")
omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.message_header = ProtoField.new("Message Header", "lme.lmeselect.tradereplaysnapshot.lmesource.v4.18.messageheader", ftypes.STRING, nil, nil, nil, "LMEsource message header, giving the size of the message and its type")
omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.packet = ProtoField.new("Packet", "lme.lmeselect.tradereplaysnapshot.lmesource.v4.18.packet", ftypes.STRING, nil, nil, nil, "LMEsource multicast packet, a packet header followed by Msg Count complete messages")
omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.packet_header = ProtoField.new("Packet Header", "lme.lmeselect.tradereplaysnapshot.lmesource.v4.18.packetheader", ftypes.STRING, nil, nil, nil, "LMEsource packet header, giving the packet size, the number of messages it carries, the sequence number of the first of them and the time the packet was sent")

-- Lme LmeSelect TradeReplaySnapshot 4.18 Application Messages
omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.market_data_trade_message = ProtoField.new("Market Data Trade Message", "lme.lmeselect.tradereplaysnapshot.lmesource.v4.18.marketdatatrademessage", ftypes.STRING, nil, nil, nil, "Generated each time a trade has been performed in the Electronic, Inter Office or Ring venues. When an incoming order matches against multiple resting orders there is one Market Data Trade published for each matched trade.")
omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.refresh_complete_message = ProtoField.new("Refresh Complete Message", "lme.lmeselect.tradereplaysnapshot.lmesource.v4.18.refreshcompletemessage", ftypes.STRING, nil, nil, nil, "Published to mark the end of a refresh cycle.")
omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.sequence_reset_message = ProtoField.new("Sequence Reset Message", "lme.lmeselect.tradereplaysnapshot.lmesource.v4.18.sequenceresetmessage", ftypes.STRING, nil, nil, nil, "Sent on each multicast channel at start of day, and intraday in case of a disaster recovery. The client must ignore the sequence number of the Sequence Reset message itself and set the next expected sequence number to NewSeqNo, clear all cached data for all instruments and subscribe to the refresh channels to receive the current state of the market.")

-- Lme LmeSelect TradeReplaySnapshot LmeSource 4.18 Generated Fields
omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.message_index = ProtoField.new("Message Index", "lme.lmeselect.tradereplaysnapshot.lmesource.v4.18.messageindex", ftypes.UINT16)
omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.trade_legs_index = ProtoField.new("Trade Legs Index", "lme.lmeselect.tradereplaysnapshot.lmesource.v4.18.tradelegsindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Lme LmeSelect TradeReplaySnapshot LmeSource 4.18 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.absolute_time_base = 0


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Lme LmeSelect TradeReplaySnapshot LmeSource 4.18 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.repeating_groups = true
show.indexes = true

-- Register Lme LmeSelect TradeReplaySnapshot LmeSource 4.18 Show Options
omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.prefs.show_application_messages then
    show.application_messages = omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.prefs.show_application_messages
  end
  if show.headers ~= omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.prefs.show_headers then
    show.headers = omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.prefs.show_headers
  end
  if show.repeating_groups ~= omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.prefs.show_repeating_groups then
    show.repeating_groups = omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.prefs.show_repeating_groups
  end
  if show.structs ~= omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.prefs.show_structs then
    show.structs = omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.prefs.show_structs
  end
  if show.indexes ~= omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.prefs.show_indexes then
    show.indexes = omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.prefs.show_indexes
  end
  if lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.absolute_time_base ~= omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.prefs.absolute_time_base then
    lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.absolute_time_base = omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.prefs.absolute_time_base
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
-- Lme LmeSelect TradeReplaySnapshot LmeSource 4.18 Fields
-----------------------------------------------------------------------

-- Filler
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.filler = {}

-- Size: Filler
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.filler.size = 1

-- Display: Filler
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.filler.display = function(value)
  return "Filler: "..value
end

-- Dissect: Filler
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.filler.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.filler.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.filler.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.filler, range, value, display)

  return offset + length, value
end

-- Last Seq Num
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.last_seq_num = {}

-- Size: Last Seq Num
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.last_seq_num.size = 4

-- Display: Last Seq Num
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.last_seq_num.display = function(value)
  return "Last Seq Num: "..value
end

-- Dissect: Last Seq Num
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.last_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.last_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.last_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.last_seq_num, range, value, display)

  return offset + length, value
end

-- Leg Match Id
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.leg_match_id = {}

-- Size: Leg Match Id
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.leg_match_id.size = 8

-- Display: Leg Match Id
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.leg_match_id.display = function(value)
  return "Leg Match Id: "..value
end

-- Dissect: Leg Match Id
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.leg_match_id.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.leg_match_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.leg_match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.leg_match_id, range, value, display)

  return offset + length, value
end

-- Leg Price
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.leg_price = {}

-- Size: Leg Price
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.leg_price.size = 8

-- Display: Leg Price
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.leg_price.display = function(value)
  return "Leg Price: "..value
end

-- Translate: Leg Price
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.leg_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Leg Price
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.leg_price.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.leg_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.leg_price.translate(raw)
  local display = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.leg_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.leg_price, range, value, display)

  return offset + length, value
end

-- Leg Trade At Reference Price
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.leg_trade_at_reference_price = {}

-- Size: Leg Trade At Reference Price
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.leg_trade_at_reference_price.size = 1

-- Display: Leg Trade At Reference Price
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.leg_trade_at_reference_price.display = function(value)
  if value == "D" then
    return "Leg Trade At Reference Price: Differential (D)"
  end
  if value == "S" then
    return "Leg Trade At Reference Price: Substituted (S)"
  end
  if value == " " then
    return "Leg Trade At Reference Price: Not Applicable (<whitespace>)"
  end

  return "Leg Trade At Reference Price: Unknown("..value..")"
end

-- Dissect: Leg Trade At Reference Price
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.leg_trade_at_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.leg_trade_at_reference_price.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.leg_trade_at_reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.leg_trade_at_reference_price, range, value, display)

  return offset + length, value
end

-- Leg Volume
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.leg_volume = {}

-- Size: Leg Volume
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.leg_volume.size = 4

-- Display: Leg Volume
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.leg_volume.display = function(value)
  return "Leg Volume: "..value
end

-- Dissect: Leg Volume
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.leg_volume.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.leg_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.leg_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.leg_volume, range, value, display)

  return offset + length, value
end

-- Match Id
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.match_id = {}

-- Size: Match Id
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.match_id.size = 8

-- Display: Match Id
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.match_id.display = function(value)
  return "Match Id: "..value
end

-- Dissect: Match Id
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.match_id.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.match_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.match_id, range, value, display)

  return offset + length, value
end

-- Matched Time
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.matched_time = {}

-- Size: Matched Time
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.matched_time.size = 8

-- Dissect: Matched Time
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.matched_time.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.matched_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.matched_time
  if lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.absolute_time_base == 1 then field = omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.matched_time_utc end

  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    -- Null: the field keeps its type, and the line says so instead
    local item = parent:add(field, range, NSTime.new(0, 0))
    item:set_text("Matched Time: No Value")
    return offset + length, value
  end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Msg Count
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.msg_count = {}

-- Size: Msg Count
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.msg_count.size = 1

-- Display: Msg Count
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.msg_count.display = function(value)
  return "Msg Count: "..value
end

-- Dissect: Msg Count
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.msg_count.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.msg_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.msg_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.msg_count, range, value, display)

  return offset + length, value
end

-- Msg Size
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.msg_size = {}

-- Size: Msg Size
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.msg_size.size = 2

-- Display: Msg Size
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.msg_size.display = function(value)
  return "Msg Size: "..value
end

-- Dissect: Msg Size
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.msg_size.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.msg_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.msg_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.msg_size, range, value, display)

  return offset + length, value
end

-- Msg Type
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.msg_type = {}

-- Size: Msg Type
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.msg_type.size = 2

-- Display: Msg Type
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.msg_type.labels = {
  [100] = "Msg Type: Sequence Reset Message (100)",
  [341] = "Msg Type: Market Data Trade Message (341)",
  [203] = "Msg Type: Refresh Complete Message (203)",
}

lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.msg_type.display = function(value)
  return lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.msg_type.labels[value] or "Msg Type: Unknown("..value..")"
end

-- Dissect: Msg Type
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.msg_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.msg_type, range, value, display)

  return offset + length, value
end

-- New Seq No
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.new_seq_no = {}

-- Size: New Seq No
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.new_seq_no.size = 4

-- Display: New Seq No
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.new_seq_no.display = function(value)
  return "New Seq No: "..value
end

-- Dissect: New Seq No
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.new_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.new_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.new_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.new_seq_no, range, value, display)

  return offset + length, value
end

-- Pkt Size
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.pkt_size = {}

-- Size: Pkt Size
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.pkt_size.size = 2

-- Display: Pkt Size
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.pkt_size.display = function(value)
  return "Pkt Size: "..value
end

-- Dissect: Pkt Size
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.pkt_size.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.pkt_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.pkt_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.pkt_size, range, value, display)

  return offset + length, value
end

-- Price
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.price = {}

-- Size: Price
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.price.size = 8

-- Display: Price
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Price: No Value"
  end

  return "Price: "..value
end

-- Translate: Price
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Price
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.price.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.price.translate(raw)
  local display = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.price, range, value, display)

  return offset + length, value
end

-- Record Count
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.record_count = {}

-- Size: Record Count
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.record_count.size = 2

-- Display: Record Count
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.record_count.display = function(value)
  return "Record Count: "..value
end

-- Dissect: Record Count
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.record_count.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.record_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.record_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.record_count, range, value, display)

  return offset + length, value
end

-- Remaining Records
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.remaining_records = {}

-- Size: Remaining Records
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.remaining_records.size = 2

-- Display: Remaining Records
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.remaining_records.display = function(value)
  return "Remaining Records: "..value
end

-- Dissect: Remaining Records
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.remaining_records.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.remaining_records.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.remaining_records.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.remaining_records, range, value, display)

  return offset + length, value
end

-- Ring Session
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.ring_session = {}

-- Size: Ring Session
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.ring_session.size = 2

-- Display: Ring Session
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.ring_session.labels = {
  ["R1"] = "Ring Session: First Morning Ring (R1)",
  ["R2"] = "Ring Session: Second Morning Ring (R2)",
  ["R3"] = "Ring Session: First Afternoon Ring (R3)",
  ["K1"] = "Ring Session: Morning Kerb Session (K1)",
  ["K2"] = "Ring Session: Afternoon Kerb Session (K2)",
  ["C1"] = "Ring Session: Basis Ring 1 (C1)",
  ["C2"] = "Ring Session: Basis Ring 2 (C2)",
  ["C3"] = "Ring Session: Basis Ring 3 (C3)",
  ["D1"] = "Ring Session: Basis Kerb 1 (D1)",
  ["D2"] = "Ring Session: Basis Kerb 2 (D2)",
}

lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.ring_session.display = function(value)
  return lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.ring_session.labels[value] or "Ring Session: Unknown("..value..")"
end

-- Dissect: Ring Session
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.ring_session.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.ring_session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.ring_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.ring_session, range, value, display)

  return offset + length, value
end

-- Send Time
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.send_time = {}

-- Size: Send Time
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.send_time.size = 8

-- Dissect: Send Time
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.send_time.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.send_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.send_time
  if lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.absolute_time_base == 1 then field = omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.send_time_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Seq Num
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.seq_num = {}

-- Size: Seq Num
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.seq_num.size = 4

-- Display: Seq Num
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.seq_num.display = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.seq_num.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.seq_num, range, value, display)

  return offset + length, value
end

-- Strategy Leg Count
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.strategy_leg_count = {}

-- Size: Strategy Leg Count
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.strategy_leg_count.size = 4

-- Display: Strategy Leg Count
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.strategy_leg_count.display = function(value)
  return "Strategy Leg Count: "..value
end

-- Dissect: Strategy Leg Count
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.strategy_leg_count.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.strategy_leg_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.strategy_leg_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.strategy_leg_count, range, value, display)

  return offset + length, value
end

-- Sub Type Of Trade
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.sub_type_of_trade = {}

-- Size: Sub Type Of Trade
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.sub_type_of_trade.size = 1

-- Display: Sub Type Of Trade
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.sub_type_of_trade.labels = {
  [1] = "Sub Type Of Trade: The Trade Resulted From An Explicit Order (1)",
  [2] = "Sub Type Of Trade: The Trade Resulted From Uncrossing (2)",
  [7] = "Sub Type Of Trade: The Trade Resulted From An Implied Order (7)",
  [8] = "Sub Type Of Trade: The Trade Resulted From Two Implied Orders Matching (8)",
  [9] = "Sub Type Of Trade: The Trade Resulted From An Off Book Cross Trade (9)",
}

lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.sub_type_of_trade.display = function(value)
  return lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.sub_type_of_trade.labels[value] or "Sub Type Of Trade: Unknown("..value..")"
end

-- Dissect: Sub Type Of Trade
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.sub_type_of_trade.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.sub_type_of_trade.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.sub_type_of_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.sub_type_of_trade, range, value, display)

  return offset + length, value
end

-- Time Of Event
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.time_of_event = {}

-- Size: Time Of Event
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.time_of_event.size = 8

-- Dissect: Time Of Event
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.time_of_event.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.time_of_event.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.time_of_event
  if lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.absolute_time_base == 1 then field = omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.time_of_event_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Tradable Instrument Id
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.tradable_instrument_id = {}

-- Size: Tradable Instrument Id
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.tradable_instrument_id.size = 8

-- Display: Tradable Instrument Id
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.tradable_instrument_id.display = function(value)
  return "Tradable Instrument Id: "..value
end

-- Dissect: Tradable Instrument Id
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.tradable_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.tradable_instrument_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.tradable_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.tradable_instrument_id, range, value, display)

  return offset + length, value
end

-- Trade At Reference Price Type
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.trade_at_reference_price_type = {}

-- Size: Trade At Reference Price Type
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.trade_at_reference_price_type.size = 1

-- Display: Trade At Reference Price Type
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.trade_at_reference_price_type.display = function(value)
  if value == "D" then
    return "Trade At Reference Price Type: Differential (D)"
  end
  if value == "S" then
    return "Trade At Reference Price Type: Substituted (S)"
  end
  if value == " " then
    return "Trade At Reference Price Type: Not Applicable (<whitespace>)"
  end

  return "Trade At Reference Price Type: Unknown("..value..")"
end

-- Dissect: Trade At Reference Price Type
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.trade_at_reference_price_type.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.trade_at_reference_price_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.trade_at_reference_price_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.trade_at_reference_price_type, range, value, display)

  return offset + length, value
end

-- Trade Cancel Flag
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.trade_cancel_flag = {}

-- Size: Trade Cancel Flag
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.trade_cancel_flag.size = 1

-- Display: Trade Cancel Flag
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.trade_cancel_flag.labels = {
  [0] = "Trade Cancel Flag: False (0)",
  [1] = "Trade Cancel Flag: True (1)",
}

lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.trade_cancel_flag.display = function(value)
  return lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.trade_cancel_flag.labels[value] or "Trade Cancel Flag: Unknown("..value..")"
end

-- Dissect: Trade Cancel Flag
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.trade_cancel_flag.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.trade_cancel_flag.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.trade_cancel_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.trade_cancel_flag, range, value, display)

  return offset + length, value
end

-- Trading Venue
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.trading_venue = {}

-- Size: Trading Venue
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.trading_venue.size = 2

-- Display: Trading Venue
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.trading_venue.labels = {
  ["EL"] = "Trading Venue: Electronic (EL)",
  ["RK"] = "Trading Venue: Ring (RK)",
  ["IO"] = "Trading Venue: Inter Office (IO)",
}

lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.trading_venue.display = function(value)
  return lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.trading_venue.labels[value] or "Trading Venue: Unknown("..value..")"
end

-- Dissect: Trading Venue
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.trading_venue.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.trading_venue.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.trading_venue.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.trading_venue, range, value, display)

  return offset + length, value
end

-- Volume
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.volume = {}

-- Size: Volume
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.volume.size = 4

-- Display: Volume
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.volume.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Volume: No Value"
  end

  return "Volume: "..value
end

-- Dissect: Volume
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.volume.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.volume, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Lme LmeSelect TradeReplaySnapshot LmeSource 4.18
-----------------------------------------------------------------------

-- Refresh Complete Message
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.refresh_complete_message = {}

-- Size: Refresh Complete Message
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.refresh_complete_message.size =
  lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.last_seq_num.size

-- Display: Refresh Complete Message
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.refresh_complete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Complete Message
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.refresh_complete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Seq Num: Uint32
  index, last_seq_num = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.last_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Complete Message
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.refresh_complete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.refresh_complete_message, buffer(offset, 0))
    local index = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.refresh_complete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.refresh_complete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.refresh_complete_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Legs
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.trade_legs = {}

-- Size: Trade Legs
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.trade_legs.size =
  lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.leg_price.size + 
  lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.leg_volume.size + 
  lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.leg_match_id.size + 
  lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.leg_trade_at_reference_price.size

-- Display: Trade Legs
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.trade_legs.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Legs
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.trade_legs.fields = function(buffer, offset, packet, parent, trade_legs_index)
  local index = offset

  -- Implicit Trade Legs Index
  if trade_legs_index ~= nil and show.indexes then
    local iteration = parent:add(omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.trade_legs_index, trade_legs_index)
    iteration:set_generated()
  end

  -- Leg Price: Int64
  index, leg_price = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.leg_price.dissect(buffer, index, packet, parent)

  -- Leg Volume: Uint32
  index, leg_volume = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.leg_volume.dissect(buffer, index, packet, parent)

  -- Leg Match Id: Uint64
  index, leg_match_id = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.leg_match_id.dissect(buffer, index, packet, parent)

  -- Leg Trade At Reference Price: String
  index, leg_trade_at_reference_price = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.leg_trade_at_reference_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Legs
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.trade_legs.dissect = function(buffer, offset, packet, parent, trade_legs_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.trade_legs, buffer(offset, 0))
    local index = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.trade_legs.fields(buffer, offset, packet, parent, trade_legs_index)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.trade_legs.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.trade_legs.fields(buffer, offset, packet, parent, trade_legs_index)
  end
end

-- Market Data Trade Message
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.market_data_trade_message = {}

-- Calculate size of: Market Data Trade Message
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.market_data_trade_message.size = function(buffer, offset)
  local index = 0

  index = index + lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.time_of_event.size

  index = index + lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.tradable_instrument_id.size

  index = index + lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.trading_venue.size

  index = index + lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.matched_time.size

  index = index + lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.ring_session.size

  index = index + lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.trade_cancel_flag.size

  index = index + lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.price.size

  index = index + lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.volume.size

  index = index + lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.match_id.size

  index = index + lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.trade_at_reference_price_type.size

  index = index + lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.sub_type_of_trade.size

  index = index + lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.remaining_records.size

  index = index + lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.record_count.size

  index = index + lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.strategy_leg_count.size

  -- Calculate field size from count
  local trade_legs_count = buffer(offset + index - 6, 2):le_uint()
  index = index + trade_legs_count * 21

  return index
end

-- Display: Market Data Trade Message
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.market_data_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Data Trade Message
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.market_data_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Of Event: Uint64
  index, time_of_event = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.time_of_event.dissect(buffer, index, packet, parent)

  -- Tradable Instrument Id: Uint64
  index, tradable_instrument_id = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.tradable_instrument_id.dissect(buffer, index, packet, parent)

  -- Trading Venue: String
  index, trading_venue = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.trading_venue.dissect(buffer, index, packet, parent)

  -- Matched Time: Uint64
  index, matched_time = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.matched_time.dissect(buffer, index, packet, parent)

  -- Ring Session: String
  index, ring_session = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.ring_session.dissect(buffer, index, packet, parent)

  -- Trade Cancel Flag: Uint8
  index, trade_cancel_flag = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.trade_cancel_flag.dissect(buffer, index, packet, parent)

  -- Price: Int64
  index, price = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.price.dissect(buffer, index, packet, parent)

  -- Volume: Uint32
  index, volume = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.volume.dissect(buffer, index, packet, parent)

  -- Match Id: Uint64
  index, match_id = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.match_id.dissect(buffer, index, packet, parent)

  -- Trade At Reference Price Type: String
  index, trade_at_reference_price_type = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.trade_at_reference_price_type.dissect(buffer, index, packet, parent)

  -- Sub Type Of Trade: Uint8
  index, sub_type_of_trade = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.sub_type_of_trade.dissect(buffer, index, packet, parent)

  -- Remaining Records: Uint16
  index, remaining_records = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.remaining_records.dissect(buffer, index, packet, parent)

  -- Record Count: Uint16
  index, record_count = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.record_count.dissect(buffer, index, packet, parent)

  -- Strategy Leg Count: Uint32
  index, strategy_leg_count = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.strategy_leg_count.dissect(buffer, index, packet, parent)

  -- Repeating: Trade Legs
  for trade_legs_index = 1, record_count do
    index, trade_legs = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.trade_legs.dissect(buffer, index, packet, parent, trade_legs_index)
  end

  return index
end

-- Dissect: Market Data Trade Message
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.market_data_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.market_data_trade_message, buffer(offset, 0))
    local index = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.market_data_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.market_data_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.market_data_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Reset Message
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.sequence_reset_message = {}

-- Size: Sequence Reset Message
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.sequence_reset_message.size =
  lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.new_seq_no.size

-- Display: Sequence Reset Message
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.sequence_reset_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Reset Message
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.sequence_reset_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- New Seq No: Uint32
  index, new_seq_no = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.new_seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Reset Message
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.sequence_reset_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.sequence_reset_message, buffer(offset, 0))
    local index = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.sequence_reset_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.sequence_reset_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.sequence_reset_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.payload = {}

-- Dispatch: Payload
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.payload.dispatch = {
  [100] = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.sequence_reset_message.dissect,
  [341] = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.market_data_trade_message.dissect,
  [203] = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.refresh_complete_message.dissect,
}

-- Dissect: Payload
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.payload.dissect = function(buffer, offset, packet, parent, msg_type)
  local dissect = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.payload.dispatch[msg_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.message_header = {}

-- Size: Message Header
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.message_header.size =
  lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.msg_size.size + 
  lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.msg_type.size

-- Display: Message Header
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Size: Uint16
  index, msg_size = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.msg_size.dissect(buffer, index, packet, parent)

  -- Msg Type: Uint16
  index, msg_type = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.msg_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.message_header, buffer(offset, 0))
    local index = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.message = {}

-- Calculate size of: Message
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.message.size = function(buffer, offset)
  local index = 0

  index = index + lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.message_header.size

  -- Parse runtime size of: Payload
  index = index + buffer(offset + index - 4, 2):le_uint()

  return index
end

-- Display: Message
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.message.fields = function(buffer, offset, packet, parent, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Type
  local msg_type = buffer(index - 2, 2):le_uint()

  -- Payload: Runtime Type with 3 branches
  index = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.payload.dissect(buffer, index, packet, parent, msg_type)

  return index
end

-- Dissect: Message
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.message.dissect = function(buffer, offset, packet, parent, message_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.message, buffer(offset, 0))
    local index = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.message.fields(buffer, offset, packet, parent, message_index)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.message.fields(buffer, offset, packet, parent, message_index)
  end
end

-- Packet Header
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.packet_header = {}

-- Size: Packet Header
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.packet_header.size =
  lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.pkt_size.size + 
  lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.msg_count.size + 
  lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.filler.size + 
  lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.seq_num.size + 
  lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.send_time.size

-- Display: Packet Header
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Pkt Size: Uint16
  index, pkt_size = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.pkt_size.dissect(buffer, index, packet, parent)

  -- Msg Count: Uint8
  index, msg_count = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.msg_count.dissect(buffer, index, packet, parent)

  -- Filler: String
  index, filler = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.filler.dissect(buffer, index, packet, parent)

  -- Seq Num: Uint32
  index, seq_num = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.seq_num.dissect(buffer, index, packet, parent)

  -- Send Time: Uint64
  index, send_time = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.send_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.fields.packet_header, buffer(offset, 0))
    local index = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.packet = {}

-- Verify required size of Udp packet
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.packet.requiredsize = function(buffer)
  return buffer:len() >= lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.packet_header.size
end

-- Dissect Packet
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Count
  local msg_count = buffer(index - 14, 1):uint()

  -- Repeating: Message
  for message_index = 1, msg_count do
    index, message = lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.message.dissect(buffer, index, packet, parent, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.init()
end

-- Dissector for Lme LmeSelect TradeReplaySnapshot LmeSource 4.18
function omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.name

  -- Dissect protocol
  local protocol = parent:add(omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18, buffer(), omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.description, "("..buffer:len().." Bytes)")
  return lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.packet.fingerprint = function(buffer)
  if buffer:len() < 20 then
    return false
  end

  local msg_type = buffer(18, 2):le_uint()

  -- Sequence Reset Message
  if msg_type == 100 then
    return true
  end

  -- Market Data Trade Message
  if msg_type == 341 then
    return true
  end

  -- Refresh Complete Message
  if msg_type == 203 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Lme LmeSelect TradeReplaySnapshot LmeSource 4.18 (Udp)
local function omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this udp packet message dispatch
  if not lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18
  omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Lme LmeSelect TradeReplaySnapshot LmeSource 4.18
omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18:register_heuristic("udp", omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18_udp_heuristic)

-- Register Lme LmeSelect TradeReplaySnapshot LmeSource 4.18 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_lme_lmeselect_tradereplaysnapshot_lmesource_v4_18)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: The London Metal Exchange
--   Version: 4.18
--   Date: Tuesday, August 18, 2026
--   Specification: lmesource-client-interface-specification-v4-18.pdf
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
